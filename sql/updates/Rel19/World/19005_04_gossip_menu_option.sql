ALTER TABLE db_version CHANGE COLUMN required_19005_03_creature_model_race required_19005_04_gossip_menu_option bit;

-- This adds a missing Text to an Option in Hunter Pet Trainer Menu.
UPDATE `gossip_menu_option` SET `option_text`='I wish to train my pet.' WHERE `menu_id`=4783 AND `ID`=3;

-- This removes an unused/doubled Option in Shaman Trainer Menu.
DELETE FROM `gossip_menu_option` WHERE `menu_id`=4516 AND `id`=2;
