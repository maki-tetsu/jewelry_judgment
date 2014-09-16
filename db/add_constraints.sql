ALTER TABLE `users` ADD CONSTRAINT users_fk1 FOREIGN KEY (section_id) REFERENCES `sections` (id) ON DELETE RESTRICT;
ALTER TABLE `users` ADD CONSTRAINT users_fk2 FOREIGN KEY (occupation_id) REFERENCES `occupations` (id) ON DELETE RESTRICT;
ALTER TABLE `expense_types` ADD CONSTRAINT expense_types_fk1 FOREIGN KEY (tax_division_id) REFERENCES `tax_divisions` (id) ON DELETE RESTRICT;
ALTER TABLE `indirect_cost_ratios` ADD CONSTRAINT indirect_cost_ratios_fk1 FOREIGN KEY (indirect_cost_id) REFERENCES `indirect_costs` (id) ON DELETE CASCADE;
ALTER TABLE `notices` ADD CONSTRAINT notices_fk1 FOREIGN KEY (user_id) REFERENCES `users` (id) ON DELETE CASCADE;
ALTER TABLE `notices` ADD CONSTRAINT notices_fk2 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `projects` ADD CONSTRAINT projects_fk1 FOREIGN KEY (customer_id) REFERENCES `customers` (id) ON DELETE RESTRICT;
ALTER TABLE `projects` ADD CONSTRAINT projects_fk2 FOREIGN KEY (manager_id) REFERENCES `users` (id) ON DELETE RESTRICT;
ALTER TABLE `projects` ADD CONSTRAINT projects_fk3 FOREIGN KEY (leader_id) REFERENCES `users` (id) ON DELETE RESTRICT;
ALTER TABLE `projects` ADD CONSTRAINT projects_fk4 FOREIGN KEY (deal_id) REFERENCES `deals` (id) ON DELETE RESTRICT;
ALTER TABLE `prj_members` ADD CONSTRAINT prj_members_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `prj_members` ADD CONSTRAINT prj_members_fk2 FOREIGN KEY (user_id) REFERENCES `users` (id) ON DELETE RESTRICT;
ALTER TABLE `prj_work_types` ADD CONSTRAINT prj_work_types_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `prj_work_types` ADD CONSTRAINT prj_work_types_fk2 FOREIGN KEY (work_type_id) REFERENCES `work_types` (id) ON DELETE RESTRICT;
ALTER TABLE `prj_sales_costs` ADD CONSTRAINT prj_sales_costs_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `prj_sales_costs` ADD CONSTRAINT prj_sales_costs_fk2 FOREIGN KEY (tax_division_id) REFERENCES `tax_divisions` (id) ON DELETE RESTRICT;
ALTER TABLE `prj_expense_budgets` ADD CONSTRAINT prj_expense_budgets_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `prj_related_projects` ADD CONSTRAINT prj_related_projects_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `prj_related_projects` ADD CONSTRAINT prj_related_projects_fk2 FOREIGN KEY (related_project_id) REFERENCES `projects` (id) ON DELETE RESTRICT;
ALTER TABLE `prj_dev_languages` ADD CONSTRAINT prj_dev_languages_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `prj_dev_languages` ADD CONSTRAINT prj_dev_languages_fk2 FOREIGN KEY (development_language_id) REFERENCES `development_languages` (id) ON DELETE RESTRICT;
ALTER TABLE `prj_operating_systems` ADD CONSTRAINT prj_operating_systems_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `prj_operating_systems` ADD CONSTRAINT prj_operating_systems_fk2 FOREIGN KEY (operating_system_id) REFERENCES `operating_systems` (id) ON DELETE RESTRICT;
ALTER TABLE `prj_databases` ADD CONSTRAINT prj_databases_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `prj_databases` ADD CONSTRAINT prj_databases_systems_fk2 FOREIGN KEY (database_id) REFERENCES `databases` (id) ON DELETE RESTRICT;
ALTER TABLE `prj_reflections` ADD CONSTRAINT prj_reflections_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE CASCADE;
ALTER TABLE `expenses` ADD CONSTRAINT expenses_fk1 FOREIGN KEY (user_id) REFERENCES `users` (id) ON DELETE RESTRICT;
ALTER TABLE `expenses` ADD CONSTRAINT expenses_fk2 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE RESTRICT;
ALTER TABLE `expenses` ADD CONSTRAINT expenses_fk3 FOREIGN KEY (expense_type_id) REFERENCES `expense_types` (id) ON DELETE RESTRICT;
ALTER TABLE `expenses` ADD CONSTRAINT expenses_fk4 FOREIGN KEY (tax_division_id) REFERENCES `tax_divisions` (id) ON DELETE RESTRICT;
ALTER TABLE `deals` ADD CONSTRAINT deals_fk1 FOREIGN KEY (staff_user_id) REFERENCES `users` (id) ON DELETE RESTRICT;
ALTER TABLE `sales_reports` ADD CONSTRAINT sales_reports_fk1 FOREIGN KEY (deal_id) REFERENCES `deals` (id) ON DELETE CASCADE;
ALTER TABLE `results` ADD CONSTRAINT results_fk1 FOREIGN KEY (schedule_id) REFERENCES `schedules` (id) ON DELETE SET NULL;
ALTER TABLE `results` ADD CONSTRAINT results_fk2 FOREIGN KEY (user_id) REFERENCES `users` (id) ON DELETE RESTRICT;
ALTER TABLE `results` ADD CONSTRAINT results_fk3 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE RESTRICT;
ALTER TABLE `schedules` ADD CONSTRAINT schedules_fk1 FOREIGN KEY (project_id) REFERENCES `projects` (id) ON DELETE RESTRICT;
ALTER TABLE `schedules` ADD CONSTRAINT schedules_fk2 FOREIGN KEY (work_type_id) REFERENCES `work_types` (id) ON DELETE RESTRICT;
ALTER TABLE `sch_members` ADD CONSTRAINT sch_members_fk1 FOREIGN KEY (schedule_id) REFERENCES `schedules` (id) ON DELETE CASCADE;
ALTER TABLE `sch_members` ADD CONSTRAINT sch_members_fk2 FOREIGN KEY (user_id) REFERENCES `users` (id) ON DELETE RESTRICT;
ALTER TABLE `unit_prices` ADD CONSTRAINT unit_prices_fk1 FOREIGN KEY (user_id) REFERENCES `users` (id) ON DELETE CASCADE;
