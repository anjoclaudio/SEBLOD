
ALTER TABLE `#__cck_core_sites` ADD `access` INT(10) UNSIGNED NOT NULL DEFAULT '1' AFTER `checked_out_time`;

UPDATE `#__cck_core_fields` SET `bool3` = '1' WHERE `type` = "jform_tag";
UPDATE `#__cck_core_fields` SET `selectlabel` = 'None', `options` = 'Auto=-1||Component=component||Raw=raw' WHERE `id` = 230;

UPDATE `#__cck_core_fields` SET `options` = 'Joomla=optgroup||Activation=activation||Block=block||Checkbox=selection||Checkbox Label For=selection_label||Featured=featured||Increment=increment||Reordering=sort||Status=state||SEBLOD=optgroup||Form=form||Hidden=form_hidden||Form Disabled=form_disabled' WHERE `id` = 271;

INSERT IGNORE INTO `#__cck_core_fields` (`id`, `title`, `name`, `folder`, `type`, `description`, `published`, `label`, `selectlabel`, `display`, `required`, `validation`, `defaultvalue`, `options`, `options2`, `minlength`, `maxlength`, `size`, `cols`, `rows`, `ordering`, `sorting`, `divider`, `bool`, `location`, `extended`, `style`, `script`, `bool2`, `bool3`, `bool4`, `bool5`, `bool6`, `bool7`, `bool8`, `css`, `attributes`, `storage`, `storage_cck`, `storage_location`, `storage_table`, `storage_field`, `storage_field2`, `storage_params`, `storages`, `checked_out`, `checked_out_time`) VALUES
(542, 'Core List Display Alt', 'core_list_display_alt', 3, 'select_simple', '', 0, 'Display Alt', ' ', 3, '', '', '0', 'Yes=1||No=0', '{"options":[]}', 0, 255, 32, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1, '', '', 'dev', '', '', '', 'display_alt', '', '', '', 0, '0000-00-00 00:00:00');

INSERT INTO `#__cck_more_processings` (`id`, `title`, `name`, `folder`, `type`, `description`, `options`, `ordering`, `published`, `scriptfile`, `checked_out`, `checked_out_time`) VALUES
(1, 'Customize', 'customize', 3, 'onCckPostBeforeStore', '', '{"output":"","output_path":"tmp\\/","output_extension":"txt","output_filename_date":"","content_types":"site","registered":{"email":"","password":"","username":"","name":"","first_name":"","last_name":""},"author":{"email":"","password":"","username":"","name":"","first_name":"","last_name":""},"manager":{"email":"","password":"","username":"","name":"","first_name":"","last_name":""},"administrator":{"email":"seb_site_administrator_email","password":"seb_site_administrator_password","username":"seb_site_administrator_email","name":"seb_site_administrator_name","first_name":"seb_site_administrator_first_name","last_name":"seb_site_administrator_last_name"},"type":"7"}', 0, 1, '/media/cck/processings/sites/customize/customize.php', 0, '0000-00-00 00:00:00'),
(2, 'Complete', 'complete', 3, 'onCckConstructionBeforeSave', '', '{"output":"","output_path":"tmp\\/","output_extension":"txt","output_filename_date":""}', 0, 1, '/media/cck/processings/sites/complete/complete.php', 0, '0000-00-00 00:00:00');

-- --------