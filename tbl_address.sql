USE [Outlook]
GO

/****** Object:  Table [dbo].[tbl_address]    Script Date: 9/24/2015 4:04:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[person_id] [int] NOT NULL,
	[street_line1] [nvarchar](500) NULL,
	[street_line2] [nvarchar](100) NULL,
	[city_id] [int] NULL,
	[provice_id] [int] NULL,
	[country_id] [int] NULL,
	[postal_code] [varchar](10) NULL,
	[address_type_cl_id] [int] NULL,
	[effective_dt] [datetime] NULL,
	[expiry_dt] [datetime] NULL,
	[created_dt] [datetime] NULL,
	[created_user_id] [int] NULL,
	[updated_dt] [datetime] NULL,
	[updated_user_id] [int] NULL,
	[deleted_dt] [datetime] NULL,
	[deleted_user_id] [int] NULL,
 CONSTRAINT [PK_tbl_address] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


