USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_rename_temp' )
   DROP TABLE [dbo].[gog_rename_temp]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_rename_temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[new_emp_id_01] [char](15) NULL,
	[old_emp_id_01] [char](15) NULL
) ON [PRIMARY]
GO
