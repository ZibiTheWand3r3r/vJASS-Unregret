globals
    integer array                              RESEARCH
    integer array                              RESEARCH_COST
    integer                                   RESEARCH_COUNT
endglobals
//================================================
function InitTrig_ResearchSetting takes nothing returns nothing
    // VICIOUSNESS:
    set RESEARCH[1] = 'R042'
    set RESEARCH_COST[1] = 25
    // Inspection:
    set RESEARCH[2] = 'R03W'
    set RESEARCH_COST[2] = 15
    // Poisoner:
    set RESEARCH[3] = 'R03Y'
    set RESEARCH_COST[3] = 20
    // Fassilade:
    set RESEARCH[4] = 'R03U'
    set RESEARCH_COST[4] = 30
    // Elusive:
    set RESEARCH[5] = 'R03T'
    set RESEARCH_COST[5] = 15
    // Assimilation:
    set RESEARCH[6] = 'R03O'
    set RESEARCH_COST[6] = 25
    // AdvancedTrigger:
    set RESEARCH[7] = 'R03M'
    set RESEARCH_COST[7] = 10
    // GileanMissle:
    set RESEARCH[8] = 'R03V'
    set RESEARCH_COST[8] = 10
    // Breach:
    set RESEARCH[9] = 'R03Q'
    set RESEARCH_COST[9] = 20
    // CruelStrike:
    set RESEARCH[10] = 'R03R'
    set RESEARCH_COST[10] = 15
    // SpiritHunt:
    set RESEARCH[11] = 'R048'
    set RESEARCH_COST[11] = 20
    
    set RESEARCH_COUNT = 11
    
endfunction
