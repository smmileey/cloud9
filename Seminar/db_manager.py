#!/usr/bin/python3

import os
import pymysql
import db_connection_data

def connect_to_db():
    servername = os.getenv("IP", "0.0.0.0")
    username = os.getenv("C9_USER", "smmileey")
    password = ""
    database = "c9"
    
    dbConnector = db_connection_data.DbConnector(servername, username, password, database)
    return connect_to_db_with_connector(dbConnector)

def connect_to_db_with_connector(dbConnector):
    db = pymysql.connect(dbConnector.servername, dbConnector.username, dbConnector.password, dbConnector.database)
    return db