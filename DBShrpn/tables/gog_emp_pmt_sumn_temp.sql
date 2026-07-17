USE [DBShrpn]
GO

IF EXISTS (SELECT * FROM DBShrpn.dbo.sysobjects WHERE name = 'gog_emp_pmt_sumn_temp' )
   DROP TABLE [dbo].[gog_emp_pmt_sumn_temp]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gog_emp_pmt_sumn_temp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[emp_id] [varchar](15) NOT NULL,
	[last_name] [varchar](25) NOT NULL,
	[first_name] [varchar](25) NOT NULL,
	[emp_name_ext] [varchar](100) NOT NULL,
	[emp_name] [varchar](45) NOT NULL,
	[payroll_run_type_id] [varchar](10) NOT NULL,
	[pay_pd_id] [varchar](10) NOT NULL,
	[pmt_seq_nbr] [int] NOT NULL,
	[deposit_check_code] [char](1) NOT NULL,
	[title] [varchar](80) NOT NULL,
	[empl_id] [varchar](10) NOT NULL,
	[empl_name] [varchar](45) NOT NULL,
	[empl_bank_id] [char](11) NOT NULL,
	[bank_name] [varchar](30) NOT NULL,
	[branch_name] [varchar](70) NOT NULL,
	[bank_nbr] [varchar](17) NOT NULL,
	[organization_unit_name] [varchar](20) NOT NULL,
	[org_unit_desc] [varchar](50) NOT NULL,
	[empl_bank_account] [char](10) NOT NULL,
	[check_nbr] [char](9) NOT NULL,
	[check_date] [datetime] NOT NULL,
	[pay_area] [varchar](4) NOT NULL,
	[pay_group_id] [varchar](10) NOT NULL,
	[pay_pd_begin_date] [datetime] NOT NULL,
	[pay_pd_end_date] [datetime] NOT NULL,
	[pmt_next_eff_date] [datetime] NOT NULL,
	[pmt_pay_grade_code] [varchar](6) NOT NULL,
	[pmt_check_amt] [money] NOT NULL,
	[pmt_annual_salary] [money] NOT NULL,
	[pmt_tot_salary_and_taxable] [money] NOT NULL,
	[pmt_tot_non_taxable] [money] NOT NULL,
	[pmt_tot_deductions_wh_amt] [money] NOT NULL,
	[pmt_net_pay_amt] [money] NOT NULL,
	[pmt_direct_deposits] [money] NOT NULL,
	[pmt_ytd_tot_gross_pay_amt] [money] NOT NULL,
	[pmt_ytd_tot_deductions_wh_amt] [money] NOT NULL,
	[pmt_ytd_net_pay_amt] [money] NOT NULL,
	[pmt_1st_tot_gross_pay_amt] [money] NOT NULL,
	[pmt_1st_taxable_pay_to_date] [money] NOT NULL,
	[pmt_1st_tax_deducted_to_date] [money] NOT NULL
) ON [PRIMARY]
GO
