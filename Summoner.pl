%SummonerWarsGuideSummoner
%summoner(name,attack,life,type,hablityPower,faction)

:-dynamic summoner/6.
summoner(elien,3,4,range,fireBlast,phoenixElves).
summoner(grognack,4,7,melee,wallsOfIceShard,tundraOrcs).
summoner(sneeks,3,7,melee,sly,caveGoblins).
summoner(oldin,2,6,range,stoneMelding,guildDwarves).
summoner(abuaShi,3,5,range,chantOfGrowth,jungleElves).
summoner(seraEldwyn,2,6,range,greaterHealing,vangards).
summoner(RetTalus,2,5,range,raiseTheDead,fallenKingdom).
summoner(theDemagogue,2,6,range,mutagist,theFilth).
summoner(vlox,2,6,range,masterOfTheArt,cloaks).
summoner(Rallul,2,6,range,drawPower,mercenaries).

%SummonerWarsGuideCommons
%commons(name,attack,costOfSummon,life,type,habiltyPower,faction)

:-dynamic commons/7
commons(guardian,1,2,2,melee,precise,phoenixElves).
commons(shaman,2,1,2,range,unwieldyMagic,tundraOrcs).
commons(berserker,2,2,2,melee,assault,caveGoblins).
commons(engineer,1,1,1,melee,structuralAnalysis,guildDwarves).
commons(Lioness,2,1,1,melee,huntingPride,jungleElves).
commons(priest,1,2,2,melee,healing,vangards).
commons(zombieWarrior,1,2,2,melee,infect,fallenKingdom).
commons(zealot,1,0,1,melee,bloodlust,theFilth).
commons(thief,1,0,1,melee,steal,cloaks).
commons(stoneGolem,2,2,3,melee,slow,mercenaries).

%SummonerWarsGuideChampions
%champions(name,attack,costOfSummon,life,type,habiltyPower,faction)

:-dynamic champions/7
champions(fireDrake,3,7,7,melee,beathOfFlame,phoenixElves).
champions(blagog,5,6,5,melee,reckless,tundraOcrs).
champions(theEater,3,4,6,melee,feedTheEater,caveGoblins).
champions(gror,2,7,7,melee,hammerQuake,guildDwarves).
champions(shikwa,1,6,5,range,swiftShot,jungleElves).
champions(archangel,2,7,6,melee,greaterFlight,vanguards).
champions(dragos,2,5,5,melee,lifeDrain,fallenKingdom).
champions(theAbomination,0,8,7,writhingSpawn,theFilth).
champions(violet,2,4,4,whirlingBlade,cloaks).
champions(mundol,3,7,5,mageMaster,mercenaries).


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
