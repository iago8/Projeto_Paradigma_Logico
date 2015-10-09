%SummonerWarsGuideSummoner
%summoner(name,attack,life,type,hablityPower,faction)

:-dynamic summoner/6.
summoner(elien,3,4,range,fireBlast,phoenixElves).
summoner(grognack,4,7,melee,wallsOfIceShard,tundraOrcs).
summoner(sneeks,3,7,melee,sly,caveGoblins).
summoner(oldin,2,6,range,stoneMelding,guildDwarves).
summoner(abuaShi,3,5,range,chantOfGrowth,jungleElves).
summoner(seraEldwyn,2,6,range,greaterHealing,vangards).
summoner(retTalus,2,5,range,raiseTheDead,fallenKingdom).
summoner(theDemagogue,2,6,range,mutagist,theFilth).
summoner(vlox,2,6,range,masterOfTheArt,cloaks).
summoner(rallul,2,6,range,drawPower,mercenaries).
summoner(tacullu,2,5,range,counterSummon,benders).
summoner(tundle,2,6,range,meditate,deepDwarves).
summoner(sunderved,3,7,melee,comand,mountainVargath).
summoner(mugglug,3,7,melee,rampantGrowth,swampOrcs).
summoner(krusk,2,6,range,sandstorm,sandGoblins).
summoner(selundar,2,7,range,outOfShadows,shadowElves).

%SummonerWarsGuideCommons
%commons(name,attack,costOfSummon,life,atqMode,habiltyPower,faction)

:-dynamic commons/7
commons(guardian,1,2,2,melee,precise,phoenixElves).
commons(archer,1,1,1,range,farShot,phoenixElves).
commons(warrior,2,1,1,melee,blazeStep,phoenixElves).
commons(shaman,2,1,2,range,unwieldyMagic,tundraOrcs).
commons().
commons().
commons(berserker,2,2,2,melee,assault,caveGoblins).
commons().
commons().
commons(engineer,1,1,1,melee,structuralAnalysis,guildDwarves).
commons().
commons().
commons(Lioness,2,1,1,melee,huntingPride,jungleElves).
commons().
commons().
commons(priest,1,2,2,melee,healing,vangards).
commons().
commons().
commons(zombieWarrior,1,2,2,melee,infect,fallenKingdom).
commons().
commons().
commons(zealot,1,0,1,melee,bloodlust,theFilth).
commons().
commons().
commons(thief,1,0,1,melee,steal,cloaks).
commons().
commons().
commons(stoneGolem,2,2,3,melee,slow,mercenaries).
commons().
commons().
commons(deceiver,1,1,1,range,stun,benders).
commons().
commons().
commons(gemMage,2,2,1,range,gemMagic,deepDwavers).
commons().
commons().
commons(brute,1,2,3,melee,knockAround,mountainVargath).
commons().
commons().
commons(hunter,1,2,2,range,vinemancerAmbush,swampOrcs).
commons().
commons().
commons(scavenger,1,1,2,melee,scavenge,sandGoblins).
commons().
commons().
commons(swordsman,2,1,1,melee,swift,shadowElves).
commons().
commons().

%SummonerWarsGuideChampions
%champions(name,attack,costOfSummon,life,atqMode,habiltyPower,faction)

:-dynamic champions/7
champions(fireDrake,3,7,7,melee,beathOfFlame,phoenixElves).
champions().
champions().
champions(blagog,5,6,5,melee,reckless,tundraOcrs).
champions().
champions().
champions(theEater,3,4,6,melee,feedTheEater,caveGoblins).
champions().
champions().
champions(gror,2,7,7,melee,hammerQuake,guildDwarves).
champions().
champions().
champions(shikwa,1,6,5,range,swiftShot,jungleElves).
champions().
champions().
champions(archangel,2,7,6,melee,greaterFlight,vanguards).
champions().
champions().
champions(dragos,2,5,5,melee,lifeDrain,fallenKingdom).
champions().
champions().
champions(theAbomination,0,8,7,writhingSpawn,theFilth).
champions().
champions().
champions(violet,2,4,4,whirlingBlade,cloaks).
champions().
champions().
champions(mundol,3,7,5,mageMaster,mercenaries).
champions().
champions().
champions(kalal,3,7,5,range,glimpseTheFuture,benders).
champions().
champions().
champions(lun,3,4,4,melee,gemOfCalling,deepDwarvers).
champions().
champions().
champions(luka,2,7,6,range,disruptionField,mountainVargath).
champions().
champions().
champions(blerg,2,7,6,melee,adapt,swampOrcs).
champions().
champions().
champions(silts,2,7,6,melee,cunning,sandGoblins).
champions().
champions().
champions(kuldrid,3,6,6,range,wither,shadowElves).
champions().
champions().


%new types of match
%use the information of the rules for creating new types of relationships

%criar cartas eventos


%discoverFactionUnit
faction_common(X,Y,W):-summoner(W,_,_,_,_,X),commons(Y,_,_,_,_,_,X);
faction_champions(X,Y,W):-summoner(W,_,_,_,_,X),champions(Y,_,_,_,_,_,X);
faction_horde(X,Y,W,T):-summoner(W,_,_,_,_,X),champions(Y,_,_,_,_,_,X),commons(T,_,_,_,_,_,X);

%updateDatabase

forget(X):-forget42(X).fail.
forget(X).

forget42(X):-retract(X).
forget42(X).

remember(X):-forget(X),assert(X).
remember(X):-assert(X).

%information
information:-write('summoner wars is a turn-based card game'),
			information1,!.

information1:-write('like to meet the phoenix Elves'), read(answer),
			answer = y, faction_horde(phoenixElves,_,_,_),
			answer = n, write('ok'),
			information2,!.

information2:-write('do you want to how the ability precise works?'), read(answer2),
			answer = y, write('when attacking with this Guardian,instead of dice that would be rolled.\nPlace that number of wound markers on the unit that is being attacked'),
			answer = n, write('ok'),
			question1,!.
question1:-write('which faction is part of the first basic set in brazil?'),read(answer3),
			answer = guildDwarves;caveGoblins;jungleElves, write('acertou')
			answer = phoenixElves;tundraOrcs;vangards;fallenKingdom;theFilth;cloaks;mercenaries,write('errou'),
			information3,!.
information3:-write('ends here information'),!.


%create your faction
%using the rules to reach the lowest level Comm unit to reach a summoner

%criaDeck
%recursao de unidade comum
%recursao de unidade campea
%escolher um summmoner 
%escolher carta evento
%print no deck
%comparar com outros deck para ver qual se aproxima mais

