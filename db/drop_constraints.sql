ALTER TABLE `users` DROP FOREIGN KEY users_fk1;
ALTER TABLE `users` DROP FOREIGN KEY users_fk2;
ALTER TABLE `expense_types` DROP FOREIGN KEY expense_types_fk1;
ALTER TABLE `indirect_cost_ratios` DROP FOREIGN KEY indirect_cost_ratios_fk1;
ALTER TABLE `notices` DROP FOREIGN KEY notices_fk1;
ALTER TABLE `notices` DROP FOREIGN KEY notices_fk2;
ALTER TABLE `projects` DROP FOREIGN KEY projects_fk1;
ALTER TABLE `projects` DROP FOREIGN KEY projects_fk2;
ALTER TABLE `projects` DROP FOREIGN KEY projects_fk3;
ALTER TABLE `projects` DROP FOREIGN KEY projects_fk4;
ALTER TABLE `prj_members` DROP FOREIGN KEY prj_members_fk1;
ALTER TABLE `prj_members` DROP FOREIGN KEY prj_members_fk2;
ALTER TABLE `prj_work_types` DROP FOREIGN KEY prj_work_types_fk1;
ALTER TABLE `prj_work_types` DROP FOREIGN KEY prj_work_types_fk2;
ALTER TABLE `prj_sales_costs` DROP FOREIGN KEY prj_sales_costs_fk1;
ALTER TABLE `prj_sales_costs` DROP FOREIGN KEY prj_sales_costs_fk2;
ALTER TABLE `prj_expense_budgets` DROP FOREIGN KEY prj_expense_budgets_fk1;
ALTER TABLE `prj_related_projects` DROP FOREIGN KEY prj_related_projects_fk1;
ALTER TABLE `prj_related_projects` DROP FOREIGN KEY prj_related_projects_fk2;
ALTER TABLE `prj_dev_languages` DROP FOREIGN KEY prj_dev_languages_fk1;
ALTER TABLE `prj_dev_languages` DROP FOREIGN KEY prj_dev_languages_fk2;
ALTER TABLE `prj_operating_systems` DROP FOREIGN KEY prj_operating_systems_fk1;
ALTER TABLE `prj_operating_systems` DROP FOREIGN KEY prj_operating_systems_fk2;
ALTER TABLE `prj_databases` DROP FOREIGN KEY prj_databases_fk1;
ALTER TABLE `prj_databases` DROP FOREIGN KEY prj_databases_systems_fk2;
ALTER TABLE `prj_reflections` DROP FOREIGN KEY prj_reflections_fk1;
ALTER TABLE `expenses` DROP FOREIGN KEY expenses_fk1;
ALTER TABLE `expenses` DROP FOREIGN KEY expenses_fk2;
ALTER TABLE `expenses` DROP FOREIGN KEY expenses_fk3;
ALTER TABLE `expenses` DROP FOREIGN KEY expenses_fk4;
ALTER TABLE `deals` DROP FOREIGN KEY deals_fk1;
ALTER TABLE `sales_reports` DROP FOREIGN KEY sales_reports_fk1;
ALTER TABLE `results` DROP FOREIGN KEY results_fk1;
ALTER TABLE `results` DROP FOREIGN KEY results_fk2;
ALTER TABLE `results` DROP FOREIGN KEY results_fk3;
ALTER TABLE `schedules` DROP FOREIGN KEY schedules_fk1;
ALTER TABLE `schedules` DROP FOREIGN KEY schedules_fk2;
ALTER TABLE `sch_members` DROP FOREIGN KEY sch_members_fk1;
ALTER TABLE `sch_members` DROP FOREIGN KEY sch_members_fk2;
ALTER TABLE `unit_prices` DROP FOREIGN KEY unit_prices_fk1;
