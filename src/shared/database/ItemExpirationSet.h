#pragma once

class CItemExpirationSet : public OdbcRecordset
{
public:
	CItemExpirationSet(OdbcConnection * dbConnection, ExpirationArray * pMap) 
		: OdbcRecordset(dbConnection), m_pMap(pMap) {}

	virtual tstring GetTableName() { return _T("ITEM_EXPIRATION"); }
	virtual tstring GetColumns() { return _T("nItemID,nExpirationDay"); }

	virtual bool Fetch()
	{
		_ITEM_EXPIRATION * pData = new _ITEM_EXPIRATION;

		
		_dbCommand->FetchUInt32(1, pData->nItemID);
		_dbCommand->FetchByte(2, pData->nExpirationDay);

		if (!m_pMap->PutData(pData->nItemID, pData))
			delete pData;

		return true;
	}

	ExpirationArray *m_pMap;
};