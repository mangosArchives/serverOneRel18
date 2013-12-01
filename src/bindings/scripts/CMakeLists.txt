# ScriptDev2 is an extension for mangos-one providing enhanced features for
# area triggers, creatures, game objects, instances, items, and spells beyond
# the default database scripting in mangos-one.
#
# Copyright (C) 2006-2013 ScriptDev2 <http://www.scriptdev2.com/>
#
# ***** BEGIN GPL LICENSE BLOCK *****
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# ***** END GPL LICENSE BLOCK *****
#
# World of Warcraft, and all World of Warcraft or Warcraft art, images,
# and lore are copyrighted by Blizzard Entertainment, Inc.

include(MacroMangosSourceGroup)

#-----------------------------------------------------------------------------
# Define the scriptdev2 library
set(sources
    sd2_revision_nr.h
    sd2_revision_sql.h
    ScriptDevMgr.cpp
    ScriptDevMgr.h
    base/escort_ai.cpp
    base/escort_ai.h
    base/follower_ai.cpp
    base/follower_ai.h
    base/guard_ai.cpp
    base/guard_ai.h
    base/pet_ai.cpp
    base/pet_ai.h

    include/precompiled.cpp
    include/precompiled.h
    include/sc_creature.cpp
    include/sc_creature.h
    include/sc_grid_searchers.cpp
    include/sc_grid_searchers.h
    include/sc_instance.cpp
    include/sc_instance.h
    include/sc_gossip.h

    system/MangosdRev.cpp
    system/ScriptLoader.cpp
    system/ScriptLoader.h
    system/system.cpp
    system/system.h
)

set(sources_battlegrounds
    scripts/battlegrounds/battleground.cpp
)

set(sources_world
    scripts/world/areatrigger_scripts.cpp
    scripts/world/bosses_emerald_dragons.cpp
    scripts/world/go_scripts.cpp
    scripts/world/guards.cpp
    scripts/world/item_scripts.cpp
    scripts/world/mob_generic_creature.cpp
    scripts/world/npc_professions.cpp
    scripts/world/npcs_special.cpp
    scripts/world/spell_scripts.cpp
    scripts/world/world_map_scripts.cpp
    scripts/world/world_map_scripts.h
)

set(sources_eastern_kingdoms
    scripts/eastern_kingdoms/alterac_mountains.cpp
    scripts/eastern_kingdoms/arathi_highlands.cpp
    scripts/eastern_kingdoms/blasted_lands.cpp
    scripts/eastern_kingdoms/burning_steppes.cpp
    scripts/eastern_kingdoms/dun_morogh.cpp
    scripts/eastern_kingdoms/eastern_plaguelands.cpp
    scripts/eastern_kingdoms/elwynn_forest.cpp
    scripts/eastern_kingdoms/hinterlands.cpp
    scripts/eastern_kingdoms/ironforge.cpp
    scripts/eastern_kingdoms/loch_modan.cpp
    scripts/eastern_kingdoms/redridge_mountains.cpp
    scripts/eastern_kingdoms/searing_gorge.cpp
    scripts/eastern_kingdoms/silverpine_forest.cpp
    scripts/eastern_kingdoms/stormwind_city.cpp
    scripts/eastern_kingdoms/stranglethorn_vale.cpp
    scripts/eastern_kingdoms/swamp_of_sorrows.cpp
    scripts/eastern_kingdoms/tirisfal_glades.cpp
    scripts/eastern_kingdoms/undercity.cpp
    scripts/eastern_kingdoms/western_plaguelands.cpp
    scripts/eastern_kingdoms/westfall.cpp
    scripts/eastern_kingdoms/wetlands.cpp
    scripts/eastern_kingdoms/eversong_woods.cpp
    scripts/eastern_kingdoms/ghostlands.cpp
    scripts/eastern_kingdoms/silvermoon_city.cpp
    scripts/eastern_kingdoms/isle_of_queldanas.cpp
)

set(sources_kalimdor
    scripts/kalimdor/ashenvale.cpp
    scripts/kalimdor/azshara.cpp
    scripts/kalimdor/boss_azuregos.cpp
    scripts/kalimdor/darkshore.cpp
    scripts/kalimdor/desolace.cpp
    scripts/kalimdor/durotar.cpp
    scripts/kalimdor/dustwallow_marsh.cpp
    scripts/kalimdor/felwood.cpp
    scripts/kalimdor/feralas.cpp
    scripts/kalimdor/moonglade.cpp
    scripts/kalimdor/mulgore.cpp
    scripts/kalimdor/orgrimmar.cpp
    scripts/kalimdor/silithus.cpp
    scripts/kalimdor/stonetalon_mountains.cpp
    scripts/kalimdor/tanaris.cpp
    scripts/kalimdor/teldrassil.cpp
    scripts/kalimdor/the_barrens.cpp
    scripts/kalimdor/thousand_needles.cpp
    scripts/kalimdor/thunder_bluff.cpp
    scripts/kalimdor/ungoro_crater.cpp
    scripts/kalimdor/winterspring.cpp
    scripts/kalimdor/bloodmyst_isle.cpp
    scripts/kalimdor/azuremyst_isle.cpp
)

set(sources_outland
    scripts/outland/blades_edge_mountains.cpp
    scripts/outland/boss_doomlord_kazzak.cpp
    scripts/outland/boss_doomwalker.cpp
    scripts/outland/hellfire_peninsula.cpp
    scripts/outland/nagrand.cpp
    scripts/outland/netherstorm.cpp
    scripts/outland/shadowmoon_valley.cpp
    scripts/outland/shattrath_city.cpp
    scripts/outland/terokkar_forest.cpp
    scripts/outland/zangarmarsh.cpp
)

set(sources_instance_ek_brd
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_depths/blackrock_depths.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_depths/boss_ambassador_flamelash.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_depths/boss_emperor_dagran_thaurissan.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_depths/boss_general_angerforge.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_depths/boss_high_interrogator_gerstahn.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_depths/instance_blackrock_depths.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_depths/blackrock_depths.h
)

set(sources_instance_ek_brs
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_spire/boss_gyth.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_spire/boss_overlord_wyrmthalak.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_spire/boss_pyroguard_emberseer.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_spire/instance_blackrock_spire.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackrock_spire/blackrock_spire.h
)

set(sources_instance_ek_tdm
    scripts/eastern_kingdoms/deadmines/boss_mr_smite.cpp
    scripts/eastern_kingdoms/deadmines/deadmines.cpp
    scripts/eastern_kingdoms/deadmines/instance_deadmines.cpp
    scripts/eastern_kingdoms/deadmines/deadmines.h
)

set(sources_instance_ek_gno
    scripts/eastern_kingdoms/gnomeregan/boss_thermaplugg.cpp
    scripts/eastern_kingdoms/gnomeregan/gnomeregan.cpp
    scripts/eastern_kingdoms/gnomeregan/instance_gnomeregan.cpp
    scripts/eastern_kingdoms/gnomeregan/gnomeregan.h
)

set(sources_instance_ek_sm
    scripts/eastern_kingdoms/scarlet_monastery/boss_arcanist_doan.cpp
    scripts/eastern_kingdoms/scarlet_monastery/boss_herod.cpp
    scripts/eastern_kingdoms/scarlet_monastery/boss_mograine_and_whitemane.cpp
    scripts/eastern_kingdoms/scarlet_monastery/boss_headless_horseman.cpp
    scripts/eastern_kingdoms/scarlet_monastery/instance_scarlet_monastery.cpp
    scripts/eastern_kingdoms/scarlet_monastery/scarlet_monastery.h
)

set(sources_instance_ek_scholo
    scripts/eastern_kingdoms/scholomance/boss_darkmaster_gandling.cpp
    scripts/eastern_kingdoms/scholomance/boss_jandice_barov.cpp
    scripts/eastern_kingdoms/scholomance/instance_scholomance.cpp
    scripts/eastern_kingdoms/scholomance/scholomance.h
)

set(sources_instance_ek_sfk
    scripts/eastern_kingdoms/shadowfang_keep/instance_shadowfang_keep.cpp
    scripts/eastern_kingdoms/shadowfang_keep/shadowfang_keep.cpp
    scripts/eastern_kingdoms/shadowfang_keep/shadowfang_keep.h
)

set(sources_instance_ek_strat
    scripts/eastern_kingdoms/stratholme/boss_baroness_anastari.cpp
    scripts/eastern_kingdoms/stratholme/boss_cannon_master_willey.cpp
    scripts/eastern_kingdoms/stratholme/boss_dathrohan_balnazzar.cpp
    scripts/eastern_kingdoms/stratholme/boss_maleki_the_pallid.cpp
    scripts/eastern_kingdoms/stratholme/boss_order_of_silver_hand.cpp
    scripts/eastern_kingdoms/stratholme/instance_stratholme.cpp
    scripts/eastern_kingdoms/stratholme/stratholme.cpp
    scripts/eastern_kingdoms/stratholme/stratholme.h
)

set(sources_instance_ek_st
    scripts/eastern_kingdoms/sunken_temple/instance_sunken_temple.cpp
    scripts/eastern_kingdoms/sunken_temple/sunken_temple.cpp
    scripts/eastern_kingdoms/sunken_temple/sunken_temple.h
)

set(sources_instance_ek_uld
    scripts/eastern_kingdoms/uldaman/boss_archaedas.cpp
    scripts/eastern_kingdoms/uldaman/instance_uldaman.cpp
    scripts/eastern_kingdoms/uldaman/uldaman.cpp
    scripts/eastern_kingdoms/uldaman/uldaman.h
)

set(sources_instance_ek_mgt
    scripts/eastern_kingdoms/magisters_terrace/boss_felblood_kaelthas.cpp
    scripts/eastern_kingdoms/magisters_terrace/boss_priestess_delrissa.cpp
    scripts/eastern_kingdoms/magisters_terrace/boss_selin_fireheart.cpp
    scripts/eastern_kingdoms/magisters_terrace/boss_vexallus.cpp
    scripts/eastern_kingdoms/magisters_terrace/instance_magisters_terrace.cpp
    scripts/eastern_kingdoms/magisters_terrace/magisters_terrace.cpp
    scripts/eastern_kingdoms/magisters_terrace/magisters_terrace.h
)

set(sources_raid_ek_mc
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_baron_geddon.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_garr.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_gehennas.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_golemagg.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_lucifron.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_magmadar.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_majordomo_executus.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_ragnaros.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_shazzrah.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/boss_sulfuron_harbinger.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/instance_molten_core.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/molten_core.cpp
    scripts/eastern_kingdoms/blackrock_mountain/molten_core/molten_core.h
)

set(sources_raid_ek_bwl
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/boss_broodlord_lashlayer.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/boss_chromaggus.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/boss_ebonroc.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/boss_firemaw.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/boss_flamegor.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/boss_nefarian.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/boss_razorgore.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/boss_vaelastrasz.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/boss_victor_nefarius.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/instance_blackwing_lair.cpp
    scripts/eastern_kingdoms/blackrock_mountain/blackwing_lair/blackwing_lair.h
)

set(sources_raid_ek_naxx
    scripts/eastern_kingdoms/naxxramas/boss_anubrekhan.cpp
    scripts/eastern_kingdoms/naxxramas/boss_faerlina.cpp
    scripts/eastern_kingdoms/naxxramas/boss_four_horsemen.cpp
    scripts/eastern_kingdoms/naxxramas/boss_gluth.cpp
    scripts/eastern_kingdoms/naxxramas/boss_gothik.cpp
    scripts/eastern_kingdoms/naxxramas/boss_grobbulus.cpp
    scripts/eastern_kingdoms/naxxramas/boss_heigan.cpp
    scripts/eastern_kingdoms/naxxramas/boss_kelthuzad.cpp
    scripts/eastern_kingdoms/naxxramas/boss_loatheb.cpp
    scripts/eastern_kingdoms/naxxramas/boss_maexxna.cpp
    scripts/eastern_kingdoms/naxxramas/boss_noth.cpp
    scripts/eastern_kingdoms/naxxramas/boss_patchwerk.cpp
    scripts/eastern_kingdoms/naxxramas/boss_razuvious.cpp
    scripts/eastern_kingdoms/naxxramas/boss_sapphiron.cpp
    scripts/eastern_kingdoms/naxxramas/boss_thaddius.cpp
    scripts/eastern_kingdoms/naxxramas/instance_naxxramas.cpp
    scripts/eastern_kingdoms/naxxramas/naxxramas.h
)

set(sources_raid_ek_zg
    scripts/eastern_kingdoms/zulgurub/boss_arlokk.cpp
    scripts/eastern_kingdoms/zulgurub/boss_hakkar.cpp
    scripts/eastern_kingdoms/zulgurub/boss_hazzarah.cpp
    scripts/eastern_kingdoms/zulgurub/boss_jeklik.cpp
    scripts/eastern_kingdoms/zulgurub/boss_jindo.cpp
    scripts/eastern_kingdoms/zulgurub/boss_mandokir.cpp
    scripts/eastern_kingdoms/zulgurub/boss_marli.cpp
    scripts/eastern_kingdoms/zulgurub/boss_renataki.cpp
    scripts/eastern_kingdoms/zulgurub/boss_thekal.cpp
    scripts/eastern_kingdoms/zulgurub/boss_venoxis.cpp
    scripts/eastern_kingdoms/zulgurub/instance_zulgurub.cpp
    scripts/eastern_kingdoms/zulgurub/zulgurub.h
)

set(sources_raid_ek_swp
    scripts/eastern_kingdoms/sunwell_plateau/boss_muru.cpp
    scripts/eastern_kingdoms/sunwell_plateau/boss_brutallus.cpp
    scripts/eastern_kingdoms/sunwell_plateau/boss_kalecgos.cpp
    scripts/eastern_kingdoms/sunwell_plateau/boss_eredar_twins.cpp
    scripts/eastern_kingdoms/sunwell_plateau/instance_sunwell_plateau.cpp
    scripts/eastern_kingdoms/sunwell_plateau/boss_felmyst.cpp
    scripts/eastern_kingdoms/sunwell_plateau/boss_kiljaeden.cpp
    scripts/eastern_kingdoms/sunwell_plateau/sunwell_plateau.h
)

set(sources_raid_ek_kara
    scripts/eastern_kingdoms/karazhan/boss_shade_of_aran.cpp
    scripts/eastern_kingdoms/karazhan/bosses_opera.cpp
    scripts/eastern_kingdoms/karazhan/boss_terestian_illhoof.cpp
    scripts/eastern_kingdoms/karazhan/boss_netherspite.cpp
    scripts/eastern_kingdoms/karazhan/boss_prince_malchezaar.cpp
    scripts/eastern_kingdoms/karazhan/instance_karazhan.cpp
    scripts/eastern_kingdoms/karazhan/boss_nightbane.cpp
    scripts/eastern_kingdoms/karazhan/boss_moroes.cpp
    scripts/eastern_kingdoms/karazhan/boss_curator.cpp
    scripts/eastern_kingdoms/karazhan/karazhan.cpp
    scripts/eastern_kingdoms/karazhan/boss_midnight.cpp
    scripts/eastern_kingdoms/karazhan/chess_event.cpp
    scripts/eastern_kingdoms/karazhan/boss_maiden_of_virtue.cpp
    scripts/eastern_kingdoms/karazhan/karazhan.h
)

set(sources_raid_ek_za
    scripts/eastern_kingdoms/zulaman/boss_zuljin.cpp
    scripts/eastern_kingdoms/zulaman/boss_malacrass.cpp
    scripts/eastern_kingdoms/zulaman/boss_janalai.cpp
    scripts/eastern_kingdoms/zulaman/zulaman.cpp
    scripts/eastern_kingdoms/zulaman/boss_akilzon.cpp
    scripts/eastern_kingdoms/zulaman/boss_halazzi.cpp
    scripts/eastern_kingdoms/zulaman/boss_nalorakk.cpp
    scripts/eastern_kingdoms/zulaman/instance_zulaman.cpp
    scripts/eastern_kingdoms/zulaman/zulaman.h
)

set(sources_instance_k_bdf
    scripts/kalimdor/blackfathom_deeps/blackfathom_deeps.h
    scripts/kalimdor/blackfathom_deeps/instance_blackfathom_deeps.cpp
)

set(sources_instance_k_dm
    scripts/kalimdor/dire_maul/dire_maul.cpp
    scripts/kalimdor/dire_maul/dire_maul.h
    scripts/kalimdor/dire_maul/instance_dire_maul.cpp
)

set(sources_instance_k_mara
    scripts/kalimdor/maraudon/boss_noxxion.cpp
    scripts/kalimdor/maraudon/maraudon.cpp
    scripts/kalimdor/maraudon/maraudon.h
)

set(sources_instance_k_rfd
    scripts/kalimdor/razorfen_downs/razorfen_downs.cpp
    scripts/kalimdor/razorfen_downs/razorfen_downs.h
)

set(sources_instance_k_rfk
    scripts/kalimdor/razorfen_kraul/instance_razorfen_kraul.cpp
    scripts/kalimdor/razorfen_kraul/razorfen_kraul.cpp
    scripts/kalimdor/razorfen_kraul/razorfen_kraul.h
)

set(sources_instance_k_wc
    scripts/kalimdor/wailing_caverns/instance_wailing_caverns.cpp
    scripts/kalimdor/wailing_caverns/wailing_caverns.cpp
    scripts/kalimdor/wailing_caverns/wailing_caverns.h
)

set(sources_instance_k_zf
    scripts/kalimdor/zulfarrak/boss_zumrah.cpp
    scripts/kalimdor/zulfarrak/instance_zulfarrak.cpp
    scripts/kalimdor/zulfarrak/zulfarrak.cpp
    scripts/kalimdor/zulfarrak/zulfarrak.h
)

set(sources_instance_k_cotdp
    scripts/kalimdor/caverns_of_time/dark_portal/boss_temporus.cpp
    scripts/kalimdor/caverns_of_time/dark_portal/boss_chrono_lord_deja.cpp
    scripts/kalimdor/caverns_of_time/dark_portal/boss_aeonus.cpp
    scripts/kalimdor/caverns_of_time/dark_portal/instance_dark_portal.cpp
    scripts/kalimdor/caverns_of_time/dark_portal/dark_portal.cpp
    scripts/kalimdor/caverns_of_time/dark_portal/dark_portal.h
)

set(sources_instance_k_cotoh
    scripts/kalimdor/caverns_of_time/old_hillsbrad/old_hillsbrad.cpp
    scripts/kalimdor/caverns_of_time/old_hillsbrad/instance_old_hillsbrad.cpp
    scripts/kalimdor/caverns_of_time/old_hillsbrad/old_hillsbrad.h
)

set(sources_raid_k_ony
    scripts/kalimdor/onyxias_lair/boss_onyxia.cpp
    scripts/kalimdor/onyxias_lair/instance_onyxias_lair.cpp
    scripts/kalimdor/onyxias_lair/onyxias_lair.h
)

set(sources_raid_k_raq
    scripts/kalimdor/ruins_of_ahnqiraj/boss_ayamiss.cpp
    scripts/kalimdor/ruins_of_ahnqiraj/boss_buru.cpp
    scripts/kalimdor/ruins_of_ahnqiraj/boss_kurinnaxx.cpp
    scripts/kalimdor/ruins_of_ahnqiraj/boss_moam.cpp
    scripts/kalimdor/ruins_of_ahnqiraj/boss_ossirian.cpp
    scripts/kalimdor/ruins_of_ahnqiraj/boss_rajaxx.cpp
    scripts/kalimdor/ruins_of_ahnqiraj/instance_ruins_of_ahnqiraj.cpp
    scripts/kalimdor/ruins_of_ahnqiraj/ruins_of_ahnqiraj.cpp
    scripts/kalimdor/ruins_of_ahnqiraj/ruins_of_ahnqiraj.h
)

set(sources_raid_k_taq
    scripts/kalimdor/temple_of_ahnqiraj/boss_bug_trio.cpp
    scripts/kalimdor/temple_of_ahnqiraj/boss_cthun.cpp
    scripts/kalimdor/temple_of_ahnqiraj/boss_fankriss.cpp
    scripts/kalimdor/temple_of_ahnqiraj/boss_huhuran.cpp
    scripts/kalimdor/temple_of_ahnqiraj/boss_ouro.cpp
    scripts/kalimdor/temple_of_ahnqiraj/boss_sartura.cpp
    scripts/kalimdor/temple_of_ahnqiraj/boss_skeram.cpp
    scripts/kalimdor/temple_of_ahnqiraj/boss_twinemperors.cpp
    scripts/kalimdor/temple_of_ahnqiraj/boss_viscidus.cpp
    scripts/kalimdor/temple_of_ahnqiraj/instance_temple_of_ahnqiraj.cpp
    scripts/kalimdor/temple_of_ahnqiraj/mob_anubisath_sentinel.cpp
    scripts/kalimdor/temple_of_ahnqiraj/temple_of_ahnqiraj.h
)

set(sources_raid_k_cothyjal
    scripts/kalimdor/caverns_of_time/hyjal/hyjalAI.cpp
    scripts/kalimdor/caverns_of_time/hyjal/instance_hyjal.cpp
    scripts/kalimdor/caverns_of_time/hyjal/boss_archimonde.cpp
    scripts/kalimdor/caverns_of_time/hyjal/hyjal.cpp
    scripts/kalimdor/caverns_of_time/hyjal/hyjalAI.h
    scripts/kalimdor/caverns_of_time/hyjal/hyjal.h
)

set(sources_instance_o_auac
    scripts/outland/auchindoun/auchenai_crypts/boss_exarch_maladaar.cpp
    scripts/outland/auchindoun/auchenai_crypts/boss_shirrak.cpp
)

set(sources_instance_o_aumt
    scripts/outland/auchindoun/mana_tombs/boss_nexusprince_shaffar.cpp
    scripts/outland/auchindoun/mana_tombs/boss_pandemonius.cpp
)

set(sources_instance_o_aush
    scripts/outland/auchindoun/sethekk_halls/boss_anzu.cpp
    scripts/outland/auchindoun/sethekk_halls/boss_darkweaver_syth.cpp
    scripts/outland/auchindoun/sethekk_halls/boss_talon_king_ikiss.cpp
    scripts/outland/auchindoun/sethekk_halls/instance_sethekk_halls.cpp
    scripts/outland/auchindoun/sethekk_halls/sethekk_halls.h
)

set(sources_instance_o_ausl
    scripts/outland/auchindoun/shadow_labyrinth/boss_ambassador_hellmaw.cpp
    scripts/outland/auchindoun/shadow_labyrinth/boss_blackheart_the_inciter.cpp
    scripts/outland/auchindoun/shadow_labyrinth/boss_grandmaster_vorpil.cpp
    scripts/outland/auchindoun/shadow_labyrinth/boss_murmur.cpp
    scripts/outland/auchindoun/shadow_labyrinth/instance_shadow_labyrinth.cpp
    scripts/outland/auchindoun/shadow_labyrinth/shadow_labyrinth.h
)

set(sources_instance_o_crss
    scripts/outland/coilfang_reservoir/serpent_shrine/boss_fathomlord_karathress.cpp
    scripts/outland/coilfang_reservoir/serpent_shrine/boss_hydross_the_unstable.cpp
    scripts/outland/coilfang_reservoir/serpent_shrine/boss_lady_vashj.cpp
    scripts/outland/coilfang_reservoir/serpent_shrine/boss_leotheras_the_blind.cpp
    scripts/outland/coilfang_reservoir/serpent_shrine/boss_morogrim_tidewalker.cpp
    scripts/outland/coilfang_reservoir/serpent_shrine/boss_the_lurker_below.cpp
    scripts/outland/coilfang_reservoir/serpent_shrine/instance_serpent_shrine.cpp
    scripts/outland/coilfang_reservoir/serpent_shrine/serpent_shrine.h
)

set(sources_instance_o_crsp
    scripts/outland/coilfang_reservoir/slave_pens/boss_ahune.cpp
)

set(sources_instance_o_crsv
    scripts/outland/coilfang_reservoir/steam_vault/boss_hydromancer_thespia.cpp
    scripts/outland/coilfang_reservoir/steam_vault/boss_mekgineer_steamrigger.cpp
    scripts/outland/coilfang_reservoir/steam_vault/boss_warlord_kalithresh.cpp
    scripts/outland/coilfang_reservoir/steam_vault/instance_steam_vault.cpp
    scripts/outland/coilfang_reservoir/steam_vault/steam_vault.h
)

set(sources_instance_o_crun
    scripts/outland/coilfang_reservoir/underbog/boss_hungarfen.cpp
)

set(sources_instance_o_hcbf
    scripts/outland/hellfire_citadel/blood_furnace/blood_furnace.h
    scripts/outland/hellfire_citadel/blood_furnace/boss_broggok.cpp
    scripts/outland/hellfire_citadel/blood_furnace/boss_kelidan_the_breaker.cpp
    scripts/outland/hellfire_citadel/blood_furnace/boss_the_maker.cpp
    scripts/outland/hellfire_citadel/blood_furnace/instance_blood_furnace.cpp
)

set(sources_instance_o_hchr
    scripts/outland/hellfire_citadel/hellfire_ramparts/boss_nazan_and_vazruden.cpp
    scripts/outland/hellfire_citadel/hellfire_ramparts/boss_omor_the_unscarred.cpp
    scripts/outland/hellfire_citadel/hellfire_ramparts/boss_watchkeeper_gargolmar.cpp
    scripts/outland/hellfire_citadel/hellfire_ramparts/hellfire_ramparts.h
    scripts/outland/hellfire_citadel/hellfire_ramparts/instance_hellfire_ramparts.cpp
)

set(sources_instance_o_hcsh
    scripts/outland/hellfire_citadel/shattered_halls/boss_nethekurse.cpp
    scripts/outland/hellfire_citadel/shattered_halls/boss_warbringer_omrogg.cpp
    scripts/outland/hellfire_citadel/shattered_halls/boss_warchief_kargath_bladefist.cpp
    scripts/outland/hellfire_citadel/shattered_halls/instance_shattered_halls.cpp
    scripts/outland/hellfire_citadel/shattered_halls/shattered_halls.h
)

set(sources_instance_o_tkar
    scripts/outland/tempest_keep/arcatraz/arcatraz.cpp
    scripts/outland/tempest_keep/arcatraz/arcatraz.h
    scripts/outland/tempest_keep/arcatraz/boss_dalliah.cpp
    scripts/outland/tempest_keep/arcatraz/boss_harbinger_skyriss.cpp
    scripts/outland/tempest_keep/arcatraz/boss_soccothrates.cpp
    scripts/outland/tempest_keep/arcatraz/instance_arcatraz.cpp
)

set(sources_instance_o_tkbo
    scripts/outland/tempest_keep/botanica/boss_high_botanist_freywinn.cpp
    scripts/outland/tempest_keep/botanica/boss_laj.cpp
    scripts/outland/tempest_keep/botanica/boss_warp_splinter.cpp
)

set(sources_instance_o_tktm
    scripts/outland/tempest_keep/the_mechanar/boss_nethermancer_sepethrea.cpp
    scripts/outland/tempest_keep/the_mechanar/boss_pathaleon_the_calculator.cpp
    scripts/outland/tempest_keep/the_mechanar/instance_mechanar.cpp
    scripts/outland/tempest_keep/the_mechanar/mechanar.h
)

set(sources_raid_o_ml
    scripts/outland/hellfire_citadel/magtheridons_lair/boss_magtheridon.cpp
    scripts/outland/hellfire_citadel/magtheridons_lair/instance_magtheridons_lair.cpp
    scripts/outland/hellfire_citadel/magtheridons_lair/magtheridons_lair.h
)

set(sources_raid_o_tk
    scripts/outland/tempest_keep/the_eye/boss_alar.cpp
    scripts/outland/tempest_keep/the_eye/boss_astromancer.cpp
    scripts/outland/tempest_keep/the_eye/boss_kaelthas.cpp
    scripts/outland/tempest_keep/the_eye/boss_void_reaver.cpp
    scripts/outland/tempest_keep/the_eye/instance_the_eye.cpp
    scripts/outland/tempest_keep/the_eye/the_eye.h
)

set(sources_raid_o_bt
    scripts/outland/black_temple/black_temple.cpp
    scripts/outland/black_temple/black_temple.h
    scripts/outland/black_temple/boss_bloodboil.cpp
    scripts/outland/black_temple/boss_illidan.cpp
    scripts/outland/black_temple/boss_mother_shahraz.cpp
    scripts/outland/black_temple/boss_reliquary_of_souls.cpp
    scripts/outland/black_temple/boss_shade_of_akama.cpp
    scripts/outland/black_temple/boss_supremus.cpp
    scripts/outland/black_temple/boss_teron_gorefiend.cpp
    scripts/outland/black_temple/boss_warlord_najentus.cpp
    scripts/outland/black_temple/illidari_council.cpp
    scripts/outland/black_temple/instance_black_temple.cpp
)

set(sources_raid_o_gl
    scripts/outland/gruuls_lair/boss_gruul.cpp
    scripts/outland/gruuls_lair/boss_high_king_maulgar.cpp
    scripts/outland/gruuls_lair/gruuls_lair.h
    scripts/outland/gruuls_lair/instance_gruuls_lair.cpp
)

set(mangosscript_LIB_SRCS
    ${sources}
    ${sources_battlegrounds}
    ${sources_world}
    ${sources_eastern_kingdoms}
    ${sources_kalimdor}
    ${sources_outland}
    ${sources_instance_ek_brd}
    ${sources_instance_ek_brs}
    ${sources_instance_ek_tdm}
    ${sources_instance_ek_gno}
    ${sources_instance_ek_sm}
    ${sources_instance_ek_scholo}
    ${sources_instance_ek_sfk}
    ${sources_instance_ek_strat}
    ${sources_instance_ek_st}
    ${sources_instance_ek_uld}
    ${sources_instance_ek_mgt}
    ${sources_raid_ek_mc}
    ${sources_raid_ek_bwl}
    ${sources_raid_ek_naxx}
    ${sources_raid_ek_zg}
    ${sources_raid_ek_swp}
    ${sources_raid_ek_kara}
    ${sources_raid_ek_za}
    ${sources_instance_k_bdf}
    ${sources_instance_k_dm}
    ${sources_instance_k_mara}
    ${sources_instance_k_rfd}
    ${sources_instance_k_rfk}
    ${sources_instance_k_wc}
    ${sources_instance_k_zf}
    ${sources_instance_k_cotdp}
    ${sources_instance_k_cotoh}
    ${sources_raid_k_ony}
    ${sources_raid_k_raq}
    ${sources_raid_k_taq}
    ${sources_raid_k_cothyjal}
    ${sources_instance_o_auac}
    ${sources_instance_o_aumt}
    ${sources_instance_o_aush}
    ${sources_instance_o_ausl}
    ${sources_instance_o_crss}
    ${sources_instance_o_crsp}
    ${sources_instance_o_crsv}
    ${sources_instance_o_crun}
    ${sources_instance_o_hcbf}
    ${sources_instance_o_hchr}
    ${sources_instance_o_hcsh}
    ${sources_instance_o_tkar}
    ${sources_instance_o_tkbo}
    ${sources_instance_o_tktm}
    ${sources_raid_o_ml}
    ${sources_raid_o_tk}
    ${sources_raid_o_bt}
    ${sources_raid_o_gl}
)

mangos_source_group(${mangosscript_LIB_SRCS})

include_directories(
    ${ACE_INCLUDE_DIRS}
    ${MYSQL_INCLUDE_DIR}
    # ${OPENSSL_INCLUDE_DIR}
    # ${ZLIB_INCLUDE_DIR}
    # ${CMAKE_SOURCE_DIR}/dep/include/g3dlite/
    # ${CMAKE_SOURCE_DIR}/dep/recastnavigation/Detour/Include/
    ${CMAKE_SOURCE_DIR}/src/framework/
    ${CMAKE_SOURCE_DIR}/src/shared/
    ${CMAKE_SOURCE_DIR}/src/game/
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/include/
    ${CMAKE_CURRENT_SOURCE_DIR}/base/
    ${CMAKE_CURRENT_SOURCE_DIR}/system/
    ${CMAKE_CURRENT_BINARY_DIR}
    ${CMAKE_BINARY_DIR}
    ${CMAKE_BINARY_DIR}/src/shared/
)

#-----------------------------------------------------------------------------
# Dump generated headers and add custom target for version control information
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/config-sd2.h.cmake ${CMAKE_CURRENT_BINARY_DIR}/config-sd2.h)

#-----------------------------------------------------------------------------
# Build the scriptdev2 library
add_library(mangos-scripts SHARED ${mangosscript_LIB_SRCS})

#-----------------------------------------------------------------------------
# Link the scriptdev2 library
#
# NOTE: this a hack, required for Windows to make it possible to actually use
#       the library. This will be dropped once we have Lua working.
if(WIN32 AND MSVC)
    target_link_libraries(mangos-scripts mangosd ${ACE_LIBRARIES}) # ${MYSQL_LIBRARIES} ${OPENSSL_LIBRARIES} ${ZLIB_LIBRARIES}
endif()

#-----------------------------------------------------------------------------
# Build and install the scriptdev2 files
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/scriptdev2.conf.dist.cmake ${CMAKE_CURRENT_BINARY_DIR}/scriptdev2.conf.dist)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/scriptdev2.conf.dist DESTINATION ${CONF_DIR})

install(TARGETS mangos-scripts
    DESTINATION ${LIBS_DIR}
    LIBRARY DESTINATION ${LIBS_DIR}
)
