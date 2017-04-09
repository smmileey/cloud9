#!/usr/bin/python3

import datetime
import pymysql
import db_connection_data
import db_manager as dbManager

_dbConnection = dbManager.connect_to_db()

def dateTimeNow():
    print ("Today date: {0} ".format(datetime.date.today()))
    
    
def getCustomerDataByColumnName(columnName):
    dbCursor = _dbConnection.cursor(pymysql.cursors.DictCursor)
    sqlQuery = "select c.{0} from Customers c;".format(columnName)
    try:
        dbCursor.execute(sqlQuery)
        results = dbCursor.fetchall()
        names = []
        for row in results:
            names.append(row.get(columnName))
        return names
    except:
        print "Unable to fetch data!"
    
if __name__ == '__main__':
    dateTimeNow()
    firstNames = getCustomerDataByColumnName("FirstName")
    lastNames = getCustomerDataByColumnName("LastName")
    customers = zip(firstNames, lastNames)
    print [str.format("{0} {1}", customer[0], customer[1]) for customer in customers]