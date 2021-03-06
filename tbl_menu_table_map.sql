USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_menu_table_map]    Script Date: 9/24/2015 4:07:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_menu_table_map](
	[menu_id] [int] NOT NULL,
	[table_nm] [varchar](100) NOT NULL,
	[col_nm] [varchar](100) NOT NULL,
	[created_dt] [datetime] NULL,
	[updated_dt] [datetime] NULL,
	[deleted_dt] [datetime] NULL,
 CONSTRAINT [PK_menu_table_map] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC,
	[table_nm] ASC,
	[col_nm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


