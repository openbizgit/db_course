USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_menu]    Script Date: 9/24/2015 4:06:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_menu](
	[menu_id] [int] IDENTITY(1,1) NOT NULL,
	[menu_nm] [nvarchar](500) NOT NULL,
	[menu_cl] [varchar](10) NULL,
	[group_cl] [varchar](20) NULL,
	[parent_menu_id] [int] NULL,
	[is_active] [bit] NULL,
	[sort_no] [int] NULL,
	[created_dt] [datetime] NULL,
	[updated_dt] [datetime] NULL,
	[deleted_dt] [datetime] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


