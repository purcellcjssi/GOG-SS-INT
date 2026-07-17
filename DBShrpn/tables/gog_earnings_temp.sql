USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_earnings_temp' )
   DROP TABLE [dbo].[gog_earnings_temp]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_earnings_temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HROrganization] [varchar](3) NOT NULL,
	[Employee] [varchar](15) NOT NULL,
	[CheckDate] [char](30) NULL,
	[CheckID] [char](9) NOT NULL,
	[CheckEarning] [varchar](1) NOT NULL,
	[earningsdescp] [varchar](35) NOT NULL,
	[Hours] [varchar](1) NOT NULL,
	[EarningsAmount] [char](10) NULL,
	[PayPeriodDateRangeBegin] [char](30) NULL,
	[PayPeriodDateRangeEnd] [char](30) NULL,
	[YearToDateEarningsAmount] [char](10) NULL,
	[YearToDateHours] [varchar](1) NOT NULL,
	[EffectiveDate] [char](30) NULL
) ON [PRIMARY]
GO
