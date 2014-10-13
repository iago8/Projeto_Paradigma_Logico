%SummonerWarsGuideSummoner
%summoner(name,attack,life,type,hablityPower,faction)

:-dynamic summoner/6.
summoner(elien,3,4,range,fireBlast,phoenixElves).
summoner(grognack,4,7,melee,wallsOfIceShard,tundraOrcs).
summoner(sneeks,3,7,melee,sly,caveGoblins).
summoner(oldin,2,6,range,stoneMelding,guildDwarves).
summoner(abuaShi,3,5,range,chantOfGrowth,jungleElves).
summoner(seraEldwyn,2,6,range,greaterHealing,vangards).

%SummonerWarsGuideCommons
%commons(name,attack,costOfSummon,life,type,habiltyPower,faction)

:-dynamic commons/7
commons(guardian,1,2,2,melee,precise,phoenixElves).
commons(shaman,2,1,2,range,unwieldyMagic,tundraOrcs).
commons(berserker,2,2,2,melee,assault,caveGoblins).
commons(engineer,1,1,1,melee,structuralAnalysis,guildDwarves).
commons(Lioness,2,1,1,melee,huntingPride,jungleElves).
commons(priest,1,2,2,melee,healing,vangards).


%SummonerWarsGuideChampions
%champions(name,attack,costOfSummon,life,type,habiltyPower,faction)

:-dynamic champions/7
champions(fireDrake,3,7,7,melee,beathOfFlame,phoenixElves).
champions(blagog,5,6,5,melee,reckless,tundraOcrs).
champions(theEater,3,4,6,melee,feedTheEater,caveGoblins).
champions(gror,2,7,7,melee,hammerQuake,guildDwarves).
champions(shikwa,1,6,5,range,swiftShot,jungleElves).
champions(archangel,2,7,6,melee,greaterFlight,vanguards).


%discoverFactionUnit
faction_common(X,Y):-summoner(_,_,_,_,_,X),commons(Y,_,_,_,_,_,X);
faction_champions(X,Y):-summoner(_,_,_,_,_,X),champions(Y,_,_,_,_,_,X);


%updateDatabase

forget(X):-forget42(X).fail.
forget(X).

forget42(X):-retract(X).
forget42(X).

remember(X):-forget(X),assert(X).
remember(X):-assert(X).