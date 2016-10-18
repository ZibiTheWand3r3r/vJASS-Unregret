

function Trig_CancelResearch_Actions takes nothing returns nothing
    local integer id = GetPlayerId(GetOwningPlayer(GetResearchingUnit())) + 1
    local integer cost = GetResearchCost(GetResearched())
    set udg_Kills[id] = udg_Kills[id] + cost
    
    call MultiboardSetItemValueBJ( GetLastCreatedMultiboard(), 2, udg_Multiboard_Spots[id], ( "|cffd700d7" + ( I2S(udg_Kills[id]) + "|r" ) ) )
endfunction
//======================================================
function InitTrig_CancelResearch takes nothing returns nothing
    set gg_trg_CancelResearch = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_CancelResearch, EVENT_PLAYER_UNIT_RESEARCH_CANCEL )
    call TriggerAddCondition( gg_trg_CancelResearch, Condition( function Trig_BeginsResearch_Conditions ) )
    call TriggerAddAction( gg_trg_CancelResearch, function Trig_CancelResearch_Actions )
endfunction
