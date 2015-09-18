USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_phone]    Script Date: 9/18/2015 4:37:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_phone](
	[phone_id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NOT NULL,
	[phone_no] [varchar](50) NULL,
	[phone_type_cl_id] [int] NULL,
	[created_dt] [datetime] NULL,
	[updated_dt] [datetime] NULL,
	[deleted_dt] [datetime] NULL,
 CONSTRAINT [PK_tbl_phone] PRIMARY KEY CLUSTERED 
(
	[phone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


