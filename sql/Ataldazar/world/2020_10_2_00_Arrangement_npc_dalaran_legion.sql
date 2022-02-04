/*Se repara el problema de la vida y el nivel del NPC */
UPDATE creature_template SET HealthScalingExpansion=6 WHERE entry=104091;

/* Se le asigna el gossip_menu_id correspondiente */
UPDATE creature_template SET gossip_menu_id=20506 WHERE entry=104091; 