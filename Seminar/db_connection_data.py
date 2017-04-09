#!/usr/bin/python3

class DbConnector:
    def __init__ (self, servername, username, password, database):
        self.servername = servername
        self.username = username
        self.password = password
        self.database = database