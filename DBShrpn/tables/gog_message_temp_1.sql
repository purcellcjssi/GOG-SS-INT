USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_message_temp_1' )
   DROP TABLE [dbo].[gog_message_temp_1]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_message_temp_1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[msg_id] [char](15) NOT NULL,
	[msg_p1] [char](15) NOT NULL,
	[msg_p2] [char](15) NOT NULL,
	[msg_desc] [char](255) NOT NULL
) ON [PRIMARY]
GO
