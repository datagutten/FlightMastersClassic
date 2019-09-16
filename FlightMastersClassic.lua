local HBD = LibStub("HereBeDragons-2.0")
--local Pins = LibStub("HereBeDragons-Pins-2.0")

for _, map in ipairs(HBD:GetAllMapIDs()) do
        for _, npc in ipairs(C_TaxiMap.GetTaxiNodesForMap(map)) do
            TomTom:AddWaypoint(map, npc['position']['x'], npc['position']['y'], {
                title = 'Flight: ' .. npc['name'] .. '(Map ' .. map .. ')',
                minimap = true,
                crazy = false,})
        end
end


function flights()
    local uiMapID = C_Map.GetBestMapForUnit("player")
    for _, npc in ipairs(C_TaxiMap.GetTaxiNodesForMap(uiMapID)) do
        print(npc['name'])
        print(npc['atlasName'])
        print(npc['faction'])

    end
end

SLASH_FLIGHT1 = "/flight"
SlashCmdList["FLIGHT"] = flights()