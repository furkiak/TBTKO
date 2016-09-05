#include "stdafx.h"
#include "../shared/Condition.h"
#include "ConsoleInputThread.h"
#include "../shared/signal_handler.h"
#include <iostream>
#include "time.h"
#include <windows.h> 

CGameServerDlg * g_pMain;
static Condition s_hEvent;

BOOL WINAPI _ConsoleHandler(DWORD dwCtrlType);

bool g_bRunning = true;


int main()
{
	SetConsoleTitle("TBT - Furkiak - GameServer versiyon " STRINGIFY(__VERSION) " En Fazla Oyuncu :" STRINGIFY(MAX_USER));

	// Override the console handler
	SetConsoleCtrlHandler(_ConsoleHandler, TRUE);

	HookSignals(&s_hEvent);

	// Start up the time updater thread
	StartTimeThread();

	// Start up the console input thread
	StartConsoleInputThread();

	g_pMain = new CGameServerDlg();

	// Start up server
	if (g_pMain->Startup())
	{
		// Reset Battle Zone Variables.
		g_pMain->ResetBattleZone();

		printf("\nServer Basladi!\n");

		// Wait until console's signaled as closing
		s_hEvent.Wait();
	}
	else
	{
		system("pause");
	}

	printf("Server Duruyor\n");

	// This seems redundant, but it's not. 
	// We still have the destructor for the dialog instance, which allows time for threads to properly cleanup.
	g_bRunning = false; 

	delete g_pMain;

	CleanupTimeThread();
	CleanupConsoleInputThread();
	UnhookSignals();

	return 0;
}

BOOL WINAPI _ConsoleHandler(DWORD dwCtrlType)
{
	s_hEvent.BeginSynchronized();
	s_hEvent.Signal();
	s_hEvent.EndSynchronized();
	sleep(10000); // Win7 onwards allows 10 seconds before it'll forcibly terminate
	return TRUE;
}
