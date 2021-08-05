USE [setl]
GO

/****** Object:  Table [dbo].[floor_of_houses]    Script Date: 05.08.2021 17:37:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[floor_of_houses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_houses] [int] NOT NULL,
	[number_of_floor] [smallint] NULL,
	[type_of_floor] [smallint] NULL,
	[built_up_area] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

