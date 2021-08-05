USE [setl]
GO

/****** Object:  Table [dbo].[rooms]    Script Date: 05.08.2021 17:38:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[rooms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_apartment] [int] NULL,
	[type_room] [smallint] NULL,
	[room_area] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

