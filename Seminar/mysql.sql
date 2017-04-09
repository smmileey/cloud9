GO
/****** Object:  Table [dbo].[Customers]    Script Date: 04/09/2017 19:16:42 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
/* SET ANSI_PADDING ON */
 
CREATE TABLE Customers(
	`FirstName` char(20) NULL,
	`LastName` char(20) NULL,
	`CustID` int NOT NULL,
 CONSTRAINT `PK_Customers` PRIMARY KEY 
(
	`CustID` ASC
) 
);
/* SET ANSI_PADDING OFF */
 
/****** Object:  Table [dbo].[Inventory]    Script Date: 04/09/2017 19:16:42 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
/* SET ANSI_PADDING ON */
 
CREATE TABLE Inventory(
	`CarID` int NOT NULL,
	`Make` char(20) NULL,
	`Color` char(20) NULL,
	`PetName` char(20) NULL,
 CONSTRAINT `PK_Inventory` PRIMARY KEY 
(
	`CarID` ASC
) 
);
/* SET ANSI_PADDING OFF */
 
/****** Object:  Table [dbo].[Orders]    Script Date: 04/09/2017 19:16:42 ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
CREATE TABLE Orders(
	`OrderID` int NOT NULL,
	`CarID` int NULL,
	`CustID` int NULL,
 CONSTRAINT `PK_Orders` PRIMARY KEY 
(
	`OrderID` ASC
) 
);
/****** Object:  ForeignKey [FK_Orders_Customers]    Script Date: 04/09/2017 19:16:42 ******/
ALTER TABLE `dbo`.`Orders`  WITH CHECK ADD  CONSTRAINT `FK_Orders_Customers` FOREIGN KEY(`CustID`)
REFERENCES [dbo].[Customers] (`CustID`)
GO
ALTER TABLE `dbo`.`Orders` CHECK CONSTRAINT `FK_Orders_Customers`
GO
/****** Object:  ForeignKey [FK_Orders_Inventory]    Script Date: 04/09/2017 19:16:42 ******/
ALTER TABLE `dbo`.`Orders`  WITH CHECK ADD  CONSTRAINT `FK_Orders_Inventory` FOREIGN KEY(`CarID`)
REFERENCES [dbo].[Inventory] (`CarID`)
GO
ALTER TABLE `dbo`.`Orders` CHECK CONSTRAINT `FK_Orders_Inventory`
GO
