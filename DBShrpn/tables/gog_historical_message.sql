USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_historical_message' )
   DROP TABLE [dbo].[gog_historical_message]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_historical_message](
	[msg_id] [varchar](15) NOT NULL,
	[event_id] [varchar](2) NOT NULL,
	[emp_id] [varchar](15) NOT NULL,
	[eff_date] [varchar](10) NOT NULL,
	[pay_element_desc_06] [varchar](20) NOT NULL,
	[msg_p1] [varchar](15) NOT NULL,
	[msg_p2] [varchar](15) NOT NULL,
	[msg_desc] [varchar](255) NOT NULL,
	[activity_date] [datetime] NULL
) ON [PRIMARY]
GO
