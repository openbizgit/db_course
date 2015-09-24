USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_user]    Script Date: 9/24/2015 4:08:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_nm] [nvarchar](50) NULL,
	[user_pw] [nvarchar](500) NULL,
	[user_salt] [nvarchar](500) NULL,
	[user_type_cl_id] [int] NULL,
	[is_active] [bit] NULL,
	[created_dt] [datetime] NULL,
	[created_user_id] [int] NULL,
	[updated_dt] [datetime] NULL,
	[updated_user_id] [int] NULL,
	[deleted_dt] [datetime] NULL,
	[deleted_user_id] [int] NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


