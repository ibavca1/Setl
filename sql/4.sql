USE [setl]
GO

/****** Object:  Table [dbo].[houses]    Script Date: 05.08.2021 17:37:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[houses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cadastre_number] [nchar](15) NULL,
	[name_part] [nchar](50) NULL,
	[location] [varchar](max) NULL,
	[category_land] [nchar](50) NULL,
	[promote_provision] [varchar](max) NULL,
	[built_up_area] [numeric](18, 3) NULL,
	[material_type] [nchar](50) NULL,
	[special_point] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[houses] ADD  CONSTRAINT [DF_Houses_name_part]  DEFAULT (N'Землепользование') FOR [name_part]
GO

ALTER TABLE [dbo].[houses] ADD  CONSTRAINT [DF_Table_1_category_ land]  DEFAULT (N'Не установленно') FOR [category_land]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Кадастровый номер' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'houses', @level2type=N'COLUMN',@level2name=N'cadastre_number'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Наименование участка' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'houses', @level2type=N'COLUMN',@level2name=N'name_part'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Местоположение в пределах квартала кадастра' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'houses', @level2type=N'COLUMN',@level2name=N'location'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Категория земли' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'houses', @level2type=N'COLUMN',@level2name=N'category_land'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Цель предоставления земельного участка' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'houses', @level2type=N'COLUMN',@level2name=N'promote_provision'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Общая площадь дома' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'houses', @level2type=N'COLUMN',@level2name=N'built_up_area'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип материала' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'houses', @level2type=N'COLUMN',@level2name=N'material_type'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Особые отметки' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'houses', @level2type=N'COLUMN',@level2name=N'special_point'
GO

