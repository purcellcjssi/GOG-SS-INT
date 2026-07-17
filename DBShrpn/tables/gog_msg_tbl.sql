USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_msg_tbl' )
   DROP TABLE [dbo].[gog_msg_tbl]
GO

SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_msg_tbl](
	[msg_id] [char](15) NOT NULL,
	[msg_p1] [char](15) NOT NULL,
	[msg_p2] [char](15) NOT NULL,
	[msg_desc] [char](255) NOT NULL
) ON [PRIMARY]
GO
