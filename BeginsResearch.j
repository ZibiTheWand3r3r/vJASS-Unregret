function Trig_BeginsResearch_Conditions takes nothing returns boolean
    local integer a=1
    local integer r = GetResearched()
    loop
        exitwhen a > RESEARCH_COUNT
        if r == RESEARCH[a] then
            return true
        endif
        set a=a+1
    endloop
    return false
endfunction
//---------------------------------------------------------------------------------
function GetResearchCost takes integer r returns integer
    local integer a=1
    loop
        exitwhen a > RESEARCH_COUNT
        if r == RESEARCH[a] then
            return RESEARCH_COST[a]
        endif
        set a=a+1
    endloop
    return 0
endfunction
//---------------------------------------------------------------------------------
function Trig_BeginsResearch_Actions takes nothing returns nothing
    local unit u = GetResearchingUnit()
    local player p = GetOwningPlayer(u)
    local integer id = GetPlayerId(p) + 1
    local integer cost = GetResearchCost(GetResearched())
    if udg_Kills[id] >= cost then
        set udg_Kills[id] = udg_Kills[id] - cost
        //multiboard
        call MultiboardSetItemValueBJ(bj_lastCreatedMultiboard, 2, udg_Multiboard_Spots[id], ( "|cffd700d7" + ( I2S(udg_Kills[id]) + "|r" )))
    else
        call DisableTrigger(gg_trg_CancelResearch)
        call IssueImmediateOrderById(u, 851976)
        call EnableTrigger(gg_trg_CancelResearch)
        call DisplayTextToPlayer(p, 0.00, 0.00, "|cffd700d7Not Enough Essence|r")
    endif
    set u=null
    set p=null
endfunction
//===========================================================
function InitTrig_BeginsResearch takes nothing returns nothing
    set gg_trg_BeginsResearch = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_BeginsResearch, EVENT_PLAYER_UNIT_RESEARCH_START )
    call TriggerAddCondition( gg_trg_BeginsResearch, Condition( function Trig_BeginsResearch_Conditions ) )
    call TriggerAddAction( gg_trg_BeginsResearch, function Trig_BeginsResearch_Actions )
endfunction
