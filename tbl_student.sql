USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_student]    Script Date: 9/18/2015 4:37:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_student](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NOT NULL,
	[student_type_cl_id] [int] NULL,
	[created_dt] [datetime] NULL,
	[updated_dt] [datetime] NULL,
	[deleted_dt] [datetime] NULL,
 CONSTRAINT [PK_tbl_student] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


