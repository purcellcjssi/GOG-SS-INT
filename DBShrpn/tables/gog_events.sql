USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_events' )
   DROP TABLE [dbo].[gog_events]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_events](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[desc] [char](255) NULL,
	[status_flag] [char](1) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[gog_events] ADD  DEFAULT ('N') FOR [status_flag]
GO
