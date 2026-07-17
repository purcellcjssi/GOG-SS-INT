USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_message_temp_5' )
   DROP TABLE [dbo].[gog_message_temp_5]
GO

SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_message_temp_5](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[msg_id] [char](15) NOT NULL,
	[msg_p1] [char](15) NOT NULL,
	[msg_p2] [char](15) NOT NULL,
	[msg_desc] [char](255) NOT NULL
) ON [PRIMARY]
GO
