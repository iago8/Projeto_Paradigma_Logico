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
commons(shooter,1,1,1,range,frostArrow,tundraOrcs).
commons(berserker,3,2,2,melee,reckless,tundraOrcs).
commons(berserker,2,2,2,melee,assault,caveGoblins).
commons(beastRider,1,1,1,melee,rider,caveGoblins).
commons(clinger,1,0,1,melee,cling,caveGoblins).
commons(engineer,1,1,1,melee,structuralAnalysis,guildDwarves).
commons(architect,1,0,1,melee,repair,guildDwarves).
commons(assaultTower,2,2,3,range,build,guildDwarves).
commons(lioness,2,1,1,melee,huntingPride,jungleElves).
commons(archer,1,1,1,range,archingShot,jungleElves).
commons(elephant,2,3,3,melee,trample,jungleElves).
commons(gorilla,2,2,2,melee,pummel,jungleElves).
commons(jungleGuard,1,4,4,range,eliteTraining,jungleElves).
commons(lioneer,3,3,2,melee,rider,jungleElves).
commons(priest,1,2,2,melee,healing,vangards).
commons(angel,1,1,2,melee,flight,vangards).
commons(cavalryknight,2,2,2,melee,rider,vangards).
commons(zombieWarrior,1,2,2,melee,infect,fallenKingdom).
commons(reaper,1,2,3,melee,soulHarvest,fallenKingdom).
commons(ghoul,2,2,3,melee,ravenousHunger,fallenKingdom).
commons(reaver,1,2,2,melee,undying,fallenKingdom).
commons(skeletalArcher,1,1,1,range,magicLocked,fallenKingdom).
commons(phantom,1,1,1,melee,possess,fallenKingdom).
commons(zealot,1,0,1,melee,bloodlust,theFilth).
commons(cultist,1,0,1,range,hexThrower,theFilth).
commons(edibleMutant,1,3,6,feedTheBrethren,theFilth).
commons(clawMutant,1,4,4,melee,crushingGrip,theFilth).
commons(horrorMutant,3,3,3,melee,demonicVisage,theFilth).
commons(spewMutant,2,3,3,range,acidicVomit,theFilth).
commons(thief,1,0,1,melee,steal,cloaks).
commons(assassin,1,1,1,range,markedTarget,cloaks).
commons(gunner,1,1,1,range,greaterSneak,cloaks).
commons(stoneGolem,2,2,3,melee,slow,mercenaries).
commons(runeMage,1,2,2,range,siphon,mercenaries).
commons(apprenticeMage,1,0,1,melee,magicShot,mercenaries).
commons(vermin,1,1,1,melee,Plague,mercenaries).
commons(deceiver,1,1,1,range,stun,benders).
commons(controller,2,2,1,range,telekineticBlast,benders).
commons(breaker,1,2,1,range,memoryBreak,bender).
commons(gemMage,2,2,1,range,gemMagic,deepDwarves).
commons(miner,1,1,2,melee,tunnel,deepDwarves).
commons(scholar,0,1,3,melee,insight,deepDwarves).
commons(brute,1,2,3,melee,knockAround,mountainVargath).
commons(warrior,1,1,2,melee,battleFrenzy,mountainVargath).
commons(rusher,1,1,2,melee,rush,mountainVargath).
commons(hunter,1,2,2,range,vinemancerAmbush,swampOrcs).
commons(savager,3,4,3,melee,fear,swampOrcs).
commons(shaman,1,1,1,range,vinemancerGuard,swampOrcs).
commons(scavenger,1,1,2,melee,scavenge,sandGoblins).
commons(javelineer,1,1,2,range,camouflage,sandGoblins).
commons(shaman,2,1,1,range,escape,sandGoblins).
commons(swordsman,2,1,1,melee,swift,shadowElves).
commons(ranger,1,1,1,range,shadowArrows,shadowElves).
commons(scout,1,0,1,melee,scout,shadowElves).

%SummonerWarsGuideChampions
%champions(name,attack,costOfSummon,life,atqMode,habiltyPower,faction)

:-dynamic champions/7
champions(fireDrake,3,7,7,melee,beathOfFlame,phoenixElves).
champions(kaeseeall,2,5,5,range,blazingConseription,phoenixElves).
champions(maelena,2,5,5,melee,burningBlade,phoenixElves).
champions(blagog,5,6,5,melee,reckless,tundraOcrs).
champions(krung,3,8,9,melee,wildSwing,tundraOrcs).
champions(ragnor,2,5,5,melee,fury,tundraOrcs).
champions(theEater,3,4,6,melee,feedTheEater,caveGoblins).
champions(blarf,0,1,5,melee,magicAugmentation,caveGoblins).
champions(mook,2,5,7,melee,taskmaster,caveGoblins).
champions(gror,2,7,7,melee,hammerQuake,guildDwarves).
champions(baldar,3,4,4,melee,shieldBlock,guildDwarves).
champions(thorkur,3,6,4,range,magicBarrier,guildDwarves).
champions(shikwa,1,6,5,range,swiftShot,jungleElves).
champions(makeindaRu,2,6,5,range,powerShot,jungleElves).
champions(mitiMumway,3,8,8,melee,trample,jungleElves).
champions(kandara,2,5,5,range,farShot,jungleElves).
champions(archangel,2,7,6,melee,greaterFlight,vanguards).
champions(jacobEldwyn,3,7,5,range,heavensRain,vanguards).
champions(kalonLightbringer,2,7,8,melee,transformation,vanguards).
champions(dragos,2,5,5,melee,lifeDrain,fallenKingdom).
champions(skhull,3,6,6,melee,fear,fallenKingdom).
champions(elutBal,4,7,5,melee,summonedByBlood,fallenKingdom).
champions(anica,2,6,6,melee,spiritDrain,fallenKingdom).
champions(theAbomination,0,8,7,writhingSpawn,theFilth).
champions(her,1,6,3,melee,herEyes,theFilth).
champions(vomitus,2,5,5,melee,horrificVomit,theFilth).
champions(violet,2,4,4,whirlingBlade,cloaks).
champions(dagger,2,6,6,melee,backstab,cloaks).
champions(scam,2,5,5,range,Escape,cloaks).
champions(mundol,3,7,5,mageMaster,mercenaries).
champions(khanQueso,2,3,4,melee,plague,mercenaries).
champions(theSeer,2,3,3,range,manipulateDestiny,mercenaries).
champions(malevolence,4,7,7,melee,cursedBlade,mercenaries).
champions(kalal,3,7,5,range,glimpseTheFuture,benders).
champions(sorgwen,3,5,3,range,telepathicCommand,benders).
champions(gulldune,2,5,4,range,mindCapture,benders).
champions(lun,3,4,4,melee,gemOfCalling,deepDwarvers).
champions(kynder,2,5,6,melee,magePush,deepDwarves).
champions(sprog,2,6,6,range,restructure,deepDwarves).
champions(luka,2,7,6,range,disruptionField,mountainVargath).
champions(torodin,2,6,7,melee,trample,mountainVargath).
champions(quen,2,5,4,range,chainLightning,mountainVargath).
champions(blerg,2,7,6,melee,adapt,swampOrcs).
champions(glarg,2,5,6,melee,vinemancerReach,swampOrcs).
champions(splub,3,7,6,melee,vinemanerSow,swampOrcs).
champions(silts,2,7,6,melee,cunning,sandGoblins).
champions(biter,3,4,6,melee,crazed,sandGoblins).
champions(kreep,3,4,6,melee,cowardly,sandGoblins).
champions(kuldrid,3,6,6,range,wither,shadowElves).
champions(hydrake,3,8,8,melee,assault,shadowElves).
champions(malidala,2,5,3,range,shadowDancer,shadowElves).


%new types of match
%use the information of the rules for creating new types of relationships
unity_faction(X):-faction_horde(X,Y,W,T).
attack_mode_common(Q,W,E):-commons(Q,_,_,_,W,_,E).
attack_mode_champion(Y,Z):-champions(Y,_,_,_,Z,_,_).
attack_mode_summoner(A,S):-summoner(A,_,_,S,_,_).
cost_mode_common(Q,W,E):-commons(Q,_,W,_,_,_,E).
cost_mode_champions(Y,Z):-champions(Y,_,Z,_,_,_,_).
lifepoints_mode_common(Q,W,E):-commons(Q,_,_,W,_,_,E).
lifepoints_mode_champion(Y,Z):-champions(Y,_,_,Z,_,_,_).
habilityPower_mode_common(Q,W,E):-commons(Q,_,_,_,_,W,E).
habilityPower_mode_champion(Y,Z):-champions(Y,_,_,_,_,Z,_).
habilityPower_mode_summoner(A,S):-summoner(A,_,_,_,_,S,_).

%more_lifePoints(T,S,X,W,Q,D):-commons(T,_,_,S,_,_,X),commons(W,_,_,Q,_,_,D),.

%create relationship
:-op(900, xfx, [itIs]).



%criar cartas eventos


%discoverFactionUnit
faction_common(X,W,T):-summoner(W,_,_,_,_,X),commons(T,_,_,_,_,_,X).
faction_champions(X,W,Y):-summoner(W,_,_,_,_,X),champions(Y,_,_,_,_,_,X).
faction_horde(X,Y,W,T):-summoner(W,_,_,_,_,X),champions(Y,_,_,_,_,_,X),commons(T,_,_,_,_,_,X).

%discoverNameandHabilityPower


%updateDatabase

forget(X):-forget42(X),fail.
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

%new information


%create your faction
%using the rules to reach the lowest level Comm unit to reach a summoner

%criaDeck
%recursao de unidade comum
%recursao de unidade campea
%escolher um summmoner 
%escolher carta evento
%print no deck
%comparar com outros deck para ver qual se aproxima mais

