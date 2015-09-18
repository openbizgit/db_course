USE [Outlook]
GO

/****** Object:  UserDefinedFunction [dbo].[fn_menu_dropdown]    Script Date: 9/18/2015 4:38:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE function [dbo].[fn_menu_dropdown] (@table_nm varchar(100), @col_nm varchar(100), @menu_id int = 0) 

RETURNS @menu_list TABLE
(
	[menu_id] [int],
	[class_id] [varchar](4),
	[menu_grp_nm] [varchar](100),
	[menu_nm] [nvarchar](500),
	[menu_cl] [varchar](4),
	[group_cl] [varchar](20),
	[is_status_cl] [bit],
	[parent_menu_id] [int],
	[is_active] [bit],
	[sort_no] [int],
	[created_dt] [datetime],
	[updated_dt] [datetime],
	[deleted_dt] [datetime],
	[table_nm] [varchar](100),
	[col_nm] [varchar](100)
)


AS

BEGIN

INSERT @menu_list

SELECT [menu_id]
      ,''
      ,[menu_grp_nm]
      ,[menu_nm]
      ,[menu_cl]
	  ,[group_cl]	
      ,[is_status_cl]
      ,[parent_menu_id]
      ,[is_active]
      ,[sort_no]
      ,[created_dt]
      ,[updated_dt]
      ,[deleted_dt]
	  , @table_nm as table_nm
	  , @col_nm as col_nm
FROM  tbl_menu 
WHERE menu_Id = 0

INSERT @menu_list

SELECT menu.menu_id
      ,[class_id]
      ,[menu_grp_nm]
      ,[menu_nm]
      ,[menu_cl]
	  ,[group_cl]	
      ,[is_status_cl]
      ,[parent_menu_id]
      ,[is_active]
      ,[sort_no]
      ,menu.[created_dt]
      ,menu.[updated_dt]
      ,menu.[deleted_dt]
	  ,mtm.table_nm as table_nm
	  ,mtm.col_nm as col_nm 

FROM  tbl_menu menu
	  JOIN tbl_menu_table_map mtm on menu.menu_id = mtm.menu_id

WHERE (menu.is_active = 1 or menu.menu_id = @menu_id)
		AND table_nm = @table_nm and col_nm = @col_nm

ORDER BY sort_no, menu_nm

RETURN

END
GO


