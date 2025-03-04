
SET @PATH_ID := 7;
SET @PATH_TYPE := 4;

SET @GROUP_ID := 19;

SET @CREATURE_0 := 6251;
SET @CREATURE_1 := 6690;
SET @CREATURE_2 := 6691;

DELETE FROM `creature` WHERE (`guid` IN (@CREATURE_0, @CREATURE_1, @CREATURE_2));
DELETE FROM `creature_movement` WHERE (`id` IN (@CREATURE_0));

INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-6724.09228515625', '-1617.3151855468750', '194.1123962402343750', '100', '0', '0'),
(@PATH_ID, '02', '-6726.43994140625', '-1603.7681884765625', '192.7691345214843750', '100', '0', '0'),
(@PATH_ID, '03', '-6730.57324218750', '-1587.5172119140625', '192.6271820068359375', '100', '0', '0'),
(@PATH_ID, '04', '-6736.05810546875', '-1573.4537353515625', '193.5514678955078125', '100', '0', '0'),
(@PATH_ID, '05', '-6742.42041015625', '-1560.4287109375000', '194.2313995361328125', '100', '0', '0'),
(@PATH_ID, '06', '-6744.61230468750', '-1546.7808837890625', '194.8695831298828125', '100', '0', '0'),
(@PATH_ID, '07', '-6750.34130859375', '-1536.7220458984375', '195.9320831298828125', '100', '0', '0'),
(@PATH_ID, '08', '-6761.52343750000', '-1525.5985107421875', '193.1039886474609375', '100', '0', '0'),
(@PATH_ID, '09', '-6772.15673828125', '-1528.7441406250000', '193.0052185058593750', '100', '0', '0'),
(@PATH_ID, '10', '-6782.06347656250', '-1540.1636962890625', '192.5552062988281250', '100', '0', '0'),
(@PATH_ID, '11', '-6798.60791015625', '-1551.5444335937500', '192.1802062988281250', '100', '0', '0'),
(@PATH_ID, '12', '-6809.62304687500', '-1556.2792968750000', '193.1802062988281250', '100', '0', '0'),
(@PATH_ID, '13', '-6810.96679687500', '-1575.6511230468750', '196.2177734375000000', '100', '0', '0'),
(@PATH_ID, '14', '-6813.12890625000', '-1585.2747802734375', '197.3679199218750000', '100', '0', '0'),
(@PATH_ID, '15', '-6812.99951171875', '-1595.9505615234375', '196.5280761718750000', '100', '0', '0'),
(@PATH_ID, '16', '-6809.30468750000', '-1610.6231689453125', '193.7279663085937500', '100', '0', '0'),
(@PATH_ID, '17', '-6798.96142578125', '-1626.6004638671875', '192.1050567626953125', '100', '0', '0'),
(@PATH_ID, '18', '-6784.89892578125', '-1639.0019531250000', '191.9412689208984375', '100', '0', '0'),
(@PATH_ID, '19', '-6770.01171875000', '-1649.7635498046875', '191.9412689208984375', '100', '0', '0'),
(@PATH_ID, '20', '-6755.53076171875', '-1657.7515869140625', '192.0662689208984375', '100', '0', '0'),
(@PATH_ID, '21', '-6732.13378906250', '-1659.6269531250000', '194.8746337890625000', '100', '0', '0');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@CREATURE_0, '0', '0', '1', '0', '0', '-6723.18603515625', '-1616.3394775390625', '194.3073272705078125', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_1, '0', '0', '1', '0', '0', '-6723.94531250000', '-1618.2315673828125', '194.2848358154296875', '0.0', '300', '300', '0', '0', '1', '0', '0', '0'),
(@CREATURE_2, '0', '0', '1', '0', '0', '-6724.80859375000', '-1620.3227539062500', '194.2073669433593750', '0.0', '300', '300', '0', '0', '1', '0', '0', '0');

INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(@CREATURE_0, '5846'),
(@CREATURE_1, '5844'),
(@CREATURE_2, '5844');

INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Searing Gorge - Dark Iron Taskmaster | Dark Iron Slaver (3) Patrol 000', '0', '0', '0', '0');

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2');

INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, '1', '3', '0', @PATH_ID, @PATH_TYPE, 'Searing Gorge - Dark Iron Taskmaster | Dark Iron Slaver (3) Patrol 000');
