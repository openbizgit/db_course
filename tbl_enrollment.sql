USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_enrollment]    Script Date: 9/24/2015 4:06:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_enrollment](
	[enrollment_id] [int] NULL,
	[student_id] [int] NULL,
	[teacher_id] [int] NULL,
	[class_id] [int] NULL,
	[enrollment_type_cl_id] [int] NULL,
	[start_dt] [datetime] NULL,
	[end_dt] [datetime] NULL,
	[created_dt] [datetime] NULL,
	[created_user_id] [int] NULL,
	[updated_dt] [datetime] NULL,
	[updated_user_id] [int] NULL,
	[deleted_dt] [datetime] NULL,
	[deleted_user_id] [int] NULL
) ON [PRIMARY]

GO


