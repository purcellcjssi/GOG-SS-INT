USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_deduction_temp' )
   DROP TABLE [dbo].[gog_deduction_temp]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_deduction_temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [char](30) NULL,
	[HROrganization] [varchar](3) NOT NULL,
	[Employee] [varchar](15) NOT NULL,
	[CheckDate] [char](30) NULL,
	[CheckID] [char](10) NOT NULL,
	[Deduction] [varchar](1) NOT NULL,
	[DeductionCode] [varchar](15) NOT NULL,
	[DeductionCodeDescription] [varchar](35) NOT NULL,
	[DeductionAmount] [char](10) NULL,
	[YearToDateDeductionAmount] [char](10) NULL
) ON [PRIMARY]
GO
