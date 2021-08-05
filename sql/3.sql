USE [setl]
GO

/****** Object:  Table [dbo].[floor_planning]    Script Date: 05.08.2021 17:37:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[floor_planning](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NULL
) ON [PRIMARY]
GO

