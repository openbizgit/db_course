USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_teacher]    Script Date: 9/24/2015 4:08:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_teacher](
	[teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NOT NULL,
	[teacher_type_cl_id] [int] NULL,
	[created_dt] [datetime] NULL,
	[created_user_id] [int] NULL,
	[updated_dt] [datetime] NULL,
	[updated_user_id] [int] NULL,
	[deleted_dt] [datetime] NULL,
	[deleted_user_id] [int] NULL,
 CONSTRAINT [PK_tbl_teacher] PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


