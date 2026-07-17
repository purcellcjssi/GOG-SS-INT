USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_employee_events_aud' )
   DROP TABLE [dbo].[gog_employee_events_aud]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_employee_events_aud](
	[event_id_01] [char](2) NULL,
	[emp_id_01] [char](15) NULL,
	[eff_date_01] [char](10) NULL,
	[first_name_01] [char](25) NULL,
	[first_middle_name_01] [char](25) NULL,
	[last_name_01] [char](30) NULL,
	[empl_id_01] [char](10) NULL,
	[national_id_1_type_code_01] [char](5) NULL,
	[national_id_1_01] [char](20) NULL,
	[organization_group_id_01] [char](5) NULL,
	[organization_chart_name_01] [varchar](64) NULL,
	[organization_unit_name_01] [varchar](240) NULL,
	[emp_status_classn_code_01] [char](2) NULL,
	[position_title_01] [char](60) NULL,
	[employment_type_code_01] [char](5) NULL,
	[annual_salary_amt_01] [char](15) NULL,
	[begin_date_02] [char](10) NULL,
	[end_date_02] [char](10) NULL,
	[pay_status_code_03] [char](1) NULL,
	[pay_group_id_03] [char](10) NULL,
	[pay_element_ctrl_grp_id_03] [char](10) NULL,
	[time_reporting_meth_code_03] [char](1) NULL,
	[employment_info_chg_reason_cd_03] [char](5) NULL,
	[emp_location_code_03] [char](10) NULL,
	[emp_status_code_5] [char](2) NULL,
	[reason_code_5] [char](2) NULL,
	[emp_expected_return_date_5] [char](10) NULL,
	[pay_through_date_5] [char](10) NULL,
	[emp_death_date_5] [char](10) NULL,
	[consider_for_rehire_ind_5] [char](1) NULL,
	[pay_element_desc_06] [char](20) NULL,
	[emp_calculation_06] [char](15) NULL,
	[activity_date] [datetime] NULL,
	[activity_user] [char](30) NULL,
	[activity_status] [char](2) NULL
) ON [PRIMARY]
GO

CREATE UNIQUE CLUSTERED INDEX [employee_events_idx] ON [dbo].[gog_employee_events_aud]
(
	[event_id_01] ASC,
	[emp_id_01] ASC,
	[eff_date_01] ASC,
	[emp_status_code_5] ASC,
	[pay_element_desc_06] ASC,
	[activity_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
