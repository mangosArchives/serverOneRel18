ALTER TABLE db_version CHANGE COLUMN required_19005_03_creature_model_race required_19005_04_gossip_menu_option bit;

UPDATE `gossip_menu_option` SET `option_text`='I wish to train my pet.' WHERE `menu_id`=4783 AND `ID`=3;
