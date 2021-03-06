USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_person]    Script Date: 9/24/2015 4:07:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_person](
	[person_id] [int] IDENTITY(1,1) NOT NULL,
	[birth_dt] [datetime] NULL,
	[gender] [char](1) NULL,
	[created_dt] [datetime] NULL,
	[created_user_id] [int] NULL,
	[updated_dt] [datetime] NULL,
	[updated_user_id] [int] NULL,
	[deleted_dt] [datetime] NULL,
	[deleted_user_id] [int] NULL,
 CONSTRAINT [PK_tbl_person] PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


