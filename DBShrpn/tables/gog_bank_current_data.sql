USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_bank_current_data' )
   DROP TABLE [dbo].[gog_bank_current_data]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_bank_current_data](
	[emp_id] [char](15) NOT NULL,
	[pay_element_id] [char](10) NOT NULL,
	[bank_id] [char](11) NOT NULL,
	[direct_deposit_bank_acct_nbr] [char](17) NOT NULL,
	[bank_acct_type_code] [char](1) NOT NULL
) ON [PRIMARY]
GO
