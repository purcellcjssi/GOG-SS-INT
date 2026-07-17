USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_current_temp3' )
   DROP TABLE [dbo].[gog_current_temp3]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_current_temp3](
	[Employee_Number] [char](15) NOT NULL,
	[First_Name] [char](25) NOT NULL,
	[Middle_Name] [char](25) NOT NULL,
	[Last_Name] [char](30) NOT NULL,
	[Employer] [char](10) NOT NULL,
	[National_Id_Type] [char](5) NOT NULL,
	[National_Id_Nbr] [char](20) NOT NULL,
	[Position Title] [char](50) NOT NULL,
	[rganization_Unit_name] [varchar](240) NOT NULL,
	[Annual_Salary] [money] NOT NULL,
	[Time_Reporting_Method] [char](1) NOT NULL,
	[Pay_Element_Ctrl_Group] [char](10) NOT NULL,
	[Pay_Group] [char](10) NOT NULL,
	[Pay_Status] [char](1) NOT NULL,
	[Pay_Through_Date] [datetime] NOT NULL,
	[Hire_Date] [datetime] NOT NULL,
	[Original Job_Position_Title] [char](80) NULL,
	[Employee Status] [char](1) NOT NULL
) ON [PRIMARY]
GO
