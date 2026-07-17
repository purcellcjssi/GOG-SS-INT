USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_email_report' )
   DROP TABLE [dbo].[gog_email_report]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_email_report](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[event_id_01] [char](2) NULL,
	[emp_id_01] [char](15) NULL,
	[eff_date_01] [char](10) NULL,
	[pay_element_desc_06] [char](20) NULL,
	[first_name_01] [char](25) NULL,
	[last_name_01] [char](30) NULL,
	[empl_id_01] [char](10) NULL,
	[emp_status_code_5] [char](2) NULL,
	[emp_calculation_06] [char](15) NULL
) ON [PRIMARY]
GO
