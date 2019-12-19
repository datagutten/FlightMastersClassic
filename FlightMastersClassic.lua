local LibStub = _G['LibStub']
local TomTom = _G['TomTom']
local UnitFactionGroup = _G['UnitFactionGroup']

local HBD = LibStub("HereBeDragons-2.0")
--local Pins = LibStub("HereBeDragons-Pins-2.0")

local flight_masters_alliance = {
    { npc = 1573, name = "Gryth Thurden", coords = { 55.6, 48.2 }, map = 1455 },
    { npc = 1572, name = "Thorgrum Borrelson", coords = { 33.8, 50.8 }, map = 1432 },
    { npc = 352, name = "Dungar Longdrink", coords = { 66, 62.6 }, map = 1453 },
    { npc = 3838, name = "Vesprystus", coords = { 58.4, 94 }, map = 1438 },
    { npc = 523, name = "Thor", coords = { 56.4, 52.6 }, map = 1436 },
    { npc = 16227, name = "Bragok", coords = { 63, 37 }, map = 1413 },
    { npc = 3841, name = "Caylais Moonfeather", coords = { 36.4, 45.4 }, map = 1439 },
    { npc = 1571, name = "Shellei Brondir", coords = { 9.4, 59.6 }, map = 1437 },
    { npc = 931, name = "Ariena Stormfeather", coords = { 30.6, 59.2 }, map = 1433 },
    { npc = 2859, name = "Gyll", coords = { 27.4, 77.6 }, map = 1434 },
    { npc = 4321, name = "Baldruc", coords = { 67.4, 51.2 }, map = 1445 },
    { npc = 2432, name = "Darla Harris", coords = { 49.4, 52.4 }, map = 1424 },
    { npc = 7823, name = "Bera Stonehammer", coords = { 51, 29.2 }, map = 1446 },
    { npc = 2941, name = "Lanie Reed", coords = { 37.8, 30.6 }, map = 1427 },
    { npc = 4407, name = "Teloren", coords = { 36.4, 7.2 }, map = 1442 },
    { npc = 2835, name = "Cedrik Prose", coords = { 45.8, 46.2 }, map = 1417 },
    { npc = 6706, name = "Baritanas Skyriver", coords = { 64.6, 10.4 }, map = 1443 },
    { npc = 4319, name = "Thyssiana", coords = { 89.4, 45.8 }, map = 1444 },
    { npc = 4267, name = "Daelyshia", coords = { 34.4, 48.0 }, map = 1440 }
}

local flight_masters_horde = {
    { npc = 3310, name = "Doras", coords = { 45.2, 63.8 }, map = 1454 },
    { npc = 3615, name = "Devrak", coords = { 51.4, 30.2 }, map = 1413 },
    { npc = 4551, name = "Michael Garrett", coords = { 62.8, 47.2 }, map = 1458 },
    { npc = 2226, name = "Karos Razok", coords = { 45.6, 42.4 }, map = 1421 },
    { npc = 2995, name = "Tal", coords = { 46.8, 50 }, map = 1456 },
    { npc = 16227, name = "Bragok", coords = { 63, 37 }, map = 1413 },
    { npc = 4312, name = "Tharm", coords = { 45.2, 59.8 }, map = 1442 },
    { npc = 10378, name = "Omusa Thunderhorn", coords = { 44.4, 59 }, map = 1413 },
    { npc = 11901, name = "Andruk", coords = { 12.2, 33.8 }, map = 1440 },
    { npc = 2858, name = "Gringer", coords = { 26.8, 77 }, map = 1434 },
    { npc = 12616, name = "Vhulgra", coords = { 73.2, 61.4 }, map = 1440 },
    { npc = 10583, name = "Gryfe", coords = { 45.2, 5.8 }, map = 1449 },
    { npc = 2389, name = "Zarise", coords = { 60.2, 18.6 }, map = 1424 },
    { npc = 1387, name = "Thysta", coords = { 32.4, 29.2 }, map = 1434 },
    { npc = 4317, name = "Nyse", coords = { 45, 49.2 }, map = 1441 },
    { npc = 7824, name = "Bulkrek Ragefist", coords = { 51.6, 25.4 }, map = 1446 },
    { npc = 11899, name = "Shardi", coords = { 35.6, 31.8 }, map = 1445 },
    { npc = 2851, name = "Urda", coords = { 73, 32.6 }, map = 1417 },
    { npc = 6726, name = "Thalon", coords = { 21.6, 74.0 }, map = 1443 },
    { npc = 11900, name = "Brakkar", coords = { 34.4, 53.8 }, map = 1448 },
    { npc = 12740, name = "Faustron", coords = { 32.2, 66.4 }, map = 1450 },
    { npc = 8610, name = "Kroum", coords = { 22, 49.6 }, map = 1447 },
    { npc = 13177, name = "Vahgruk", coords = { 65.6, 24.2 }, map = 1428 },
    { npc = 15178, name = "Runk Windtamer", coords = { 48.8, 36.6 }, map = 1451 },
    { npc = 2861, name = "Gorrik", coords = { 4, 44.8 }, map = 1418 },
    { npc = 12636, name = "Georgia", coords = { 80.2, 57 }, map = 1423 },
    { npc = 3305, name = "Grisha", coords = { 34.8, 30.8 }, map = 1427 },
    { npc = 6026, name = "Breyk", coords = { 46, 54.6 }, map = 1435 },
    { npc = 4314, name = "Gorkas", coords = { 81.6, 81.8 }, map = 1425 },
    { npc = 11139, name = "Yugrek", coords = { 60.4, 36.4 }, map = 1452 },
    { npc = 8020, name = "Shyn", coords = { 75.4, 44.2 }, map = 1444 }
}

local flight_masters
local faction, _ = UnitFactionGroup("player")
if (faction == 'Alliance') then
    flight_masters = flight_masters_alliance
elseif (faction == 'Horde') then
    flight_masters = flight_masters_horde
end

for _, npc in ipairs(flight_masters) do
    -- Pins:AddWorldMapIconMap('flight', 'GatherMate2WorldMapPinTemplate', 1455, 55.6, 48.2)
    TomTom:AddWaypoint(npc.map, npc.coords[1] / 100, npc.coords[2] / 100, {
        title = string.format("Flight: %s (%s)", npc.name, HBD:GetLocalizedMap(npc.map)),
        minimap = true,
        crazy = false,
    })
end