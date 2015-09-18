USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_name]    Script Date: 9/18/2015 4:36:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_name](
	[name_id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NOT NULL,
	[last_nm] [nvarchar](250) NULL,
	[first_nm] [nvarchar](250) NULL,
	[middle_nm] [nvarchar](250) NULL,
	[preferred_nm] [nvarchar](250) NULL,
	[name_type_cl_id] [int] NULL,
	[created_dt] [datetime] NULL,
	[updated_dt] [datetime] NULL,
	[deleted_dt] [datetime] NULL,
 CONSTRAINT [PK_tbl_name] PRIMARY KEY CLUSTERED 
(
	[name_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbl_name]  WITH CHECK ADD  CONSTRAINT [FK_tbl_name_tbl_person] FOREIGN KEY([person_id])
REFERENCES [dbo].[tbl_person] ([person_id])
GO

ALTER TABLE [dbo].[tbl_name] CHECK CONSTRAINT [FK_tbl_name_tbl_person]
GO


