USE [Outlook]
GO

/****** Object:  View [dbo].[v_cur_person_name]    Script Date: 9/24/2015 4:10:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[v_all_person_name]
AS

SELECT name_id
      ,person_id
      ,last_nm
      ,first_nm
      ,middle_nm
      ,preferred_nm
      ,name_type_cl_id
	  ,name_type_cl_nm = m.menu_nm
      ,n.effective_dt
      ,n.expiry_dt
      ,n.created_dt
      ,n.created_user_id
      ,n.updated_dt
      ,n.updated_user_id
      ,n.deleted_dt
      ,n.deleted_user_id
  FROM tbl_name n
		LEFT JOIN tbl_menu m ON n.name_type_cl_id = m.menu_id
  WHERE n.deleted_dt is null

GO


