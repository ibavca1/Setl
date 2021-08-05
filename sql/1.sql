USE [setl]
GO

/****** Object:  Table [dbo].[apartments]    Script Date: 05.08.2021 17:37:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[apartments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idfloor] [int] NULL,
	[number_apartment] [nchar](10) NULL,
	[number_of_rooms] [smallint] NULL,
	[apartment_up_area] [numeric](18, 2) NULL,
	[living_space] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

