ALTER TABLE db_version CHANGE COLUMN required_c12484_02_realmd_account_access required_s2054_mangos_command bit;

UPDATE `command` SET help = 'Syntax: .account create $account $password [$expansion]\r\n\r\nCreate account and set password to it. Optionally, you may also set another expansion for this account than the defined default value.' WHERE name = 'account create';
