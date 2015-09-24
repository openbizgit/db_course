USE [Outlook]
GO

/****** Object:  StoredProcedure [dbo].[sp_insert_menu_table]    Script Date: 9/24/2015 4:09:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- Start Number: next menu_id 
-- exec [dbo].[sp_insert_menu_table] 'menu_nm', 'table_nm', 'col_nm'

-- Start Number: 1000 
-- exec [dbo].[sp_insert_menu_table] 'menu_nm', 'table_nm', 'col_nm', 1000

CREATE PROCEDURE [dbo].[sp_insert_menu_table] 
(
	@menu_nm		nvarchar(500),
	@table_nm		varchar(100), 
	@col_nm			varchar(100),
	@menu_id		int = 0,
	@sort_no		int = null,
	@is_active		bit = 1,
	@parent_menu_id int = null,
	@menu_cl		varchar(10) = null,
	@group_cl		varchar(20) = null
) 
AS
BEGIN

	SET @menu_nm	= ltrim(rtrim(@menu_nm)) 
	SET @table_nm	= ltrim(rtrim(@table_nm))
	SET @col_nm		= ltrim(rtrim(@col_nm))

	
	DECLARE @is_same_menu_nm INT = 0
	SET @is_same_menu_nm = (SELECT  ISNULL(count(t.menu_id),0) 
						FROM	[dbo].[tbl_menu] m
								LEFT JOIN [dbo].[tbl_menu_table_map] t ON m.menu_id = t.menu_id
						WHERE	m.menu_nm = @menu_nm and table_nm = @table_nm and col_nm = @col_nm )


	DECLARE @max_menu_id INT = 0
	SET	@max_menu_id = (SELECT  ISNULL(max(t.menu_id),0) 
						FROM	[dbo].[tbl_menu] m
								LEFT JOIN [dbo].[tbl_menu_table_map] t ON m.menu_id = t.menu_id
						WHERE	table_nm = @table_nm and col_nm = @col_nm )


	IF  @is_same_menu_nm = 0
	BEGIN
		DECLARE @is_same_menu_id INT = 0
		SET @is_same_menu_id = (SELECT ISNULL(count(*),0) FROM [dbo].[tbl_menu] WHERE menu_id = @menu_id )

		IF  @is_same_menu_id = 0 AND @menu_id > 0
			BEGIN
			SET IDENTITY_INSERT tbl_menu ON

			IF @max_menu_id > 0 SET @menu_id = @max_menu_id + 1
			
			INSERT INTO [dbo].[tbl_menu]
					   ([menu_id]
					   ,[menu_nm]
					   ,[menu_cl]
					   ,[group_cl]
					   ,[parent_menu_id]
					   ,[is_active]
					   ,[sort_no]
					   ,[created_dt]
					   ,[updated_dt]
					   ,[deleted_dt])
				 VALUES
					   (@menu_id 
					   ,@menu_nm
					   ,@menu_cl
					   ,@group_cl
					   ,@parent_menu_id
					   ,@is_active
					   ,@sort_no
					   ,getdate()
					   ,getdate()
					   ,null)

			SET IDENTITY_INSERT tbl_menu OFF
			END
		ELSE
			BEGIN
				INSERT INTO [dbo].[tbl_menu]
						   ([menu_nm]
						   ,[menu_cl]
						   ,[group_cl]
						   ,[parent_menu_id]
						   ,[is_active]
						   ,[sort_no]
						   ,[created_dt]
						   ,[updated_dt]
						   ,[deleted_dt])
					 VALUES
						   (@menu_nm
						   ,@menu_cl
						   ,@group_cl
						   ,@parent_menu_id
						   ,@is_active
						   ,@sort_no
						   ,getdate()
						   ,getdate()
						   ,null)
			END

		INSERT INTO [dbo].[tbl_menu_table_map]
				   ([menu_id]
				   ,[table_nm]
				   ,[col_nm]
				   ,[created_dt]
				   ,[updated_dt]
				   ,[deleted_dt])
			 VALUES
				   (SCOPE_IDENTITY()
				   ,@table_nm
				   ,@col_nm
				   ,getdate()
				   ,getdate()
				   ,null)
	END

END





GO


