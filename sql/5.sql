USE [setl]
GO

/****** Object:  Table [dbo].[material_type]    Script Date: 05.08.2021 17:37:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[material_type](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NOT NULL
) ON [PRIMARY]
GO

