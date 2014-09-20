-- Removes (if exists) the entry for the chest
DELETE FROM gameobject_loot_template WHERE entry=3239;

-- Add the chest-loot with correct loot (Quest-Item, part of a Quest). :)
UPDATE gameobject_loot_template SET entry=3239, item=4883, ChanceOrQuestChance=100, groupid=0, mincountOrRef=1, maxcount=1, condition_id=0;
-- I don't know why insert/update show's error (for me) but it works... :O
