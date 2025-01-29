## Made by Soul

scoreboard players add #wsshelterspawner spawntimer 1

execute if score #wsshelterspawner spawntimer matches 1 run forceload add 999993 -8 1000007 8
execute if score #wsshelterspawner spawntimer matches 1 run forceload add -999993 8 -1000007 -8
execute if score #wsshelterspawner spawntimer matches 1 run forceload add -7 999992 7 1000008
execute if score #wsshelterspawner spawntimer matches 1 run forceload add 7 -999992 -7 -1000008

execute if score #wsshelterspawner spawntimer matches 10 run setblock 1000000 160 0 minecraft:structure_block{posX:-7,posY:-14,posZ:-8,mode:"LOAD",name:"chocolate:wsshelter"}
execute if score #wsshelterspawner spawntimer matches 10 run setblock 1000000 161 0 redstone_block

execute if score #wsshelterspawner spawntimer matches 10 run setblock -1000000 160 0 minecraft:structure_block{posX:-7,posY:-14,posZ:-8,mode:"LOAD",name:"chocolate:wsshelter"}
execute if score #wsshelterspawner spawntimer matches 10 run setblock -1000000 161 0 redstone_block

execute if score #wsshelterspawner spawntimer matches 10 run setblock 0 160 1000000 minecraft:structure_block{posX:-7,posY:-14,posZ:-8,mode:"LOAD",name:"chocolate:wsshelter"}
execute if score #wsshelterspawner spawntimer matches 10 run setblock 0 161 1000000 redstone_block

execute if score #wsshelterspawner spawntimer matches 10 run setblock 0 160 -1000000 minecraft:structure_block{posX:-7,posY:-14,posZ:-8,mode:"LOAD",name:"chocolate:wsshelter"}
execute if score #wsshelterspawner spawntimer matches 10 run setblock 0 161 -1000000 redstone_block

execute if score #wsshelterspawner spawntimer matches 20 run forceload remove 999993 -8 1000007 8
execute if score #wsshelterspawner spawntimer matches 20 run forceload remove -999993 8 -1000007 -8
execute if score #wsshelterspawner spawntimer matches 20 run forceload remove -7 999992 7 1000008
execute if score #wsshelterspawner spawntimer matches 20 run forceload remove 7 -999992 -7 -1000008

execute if score #wsshelterspawner spawntimer matches 20 run scoreboard players set #wsshelterspawner spawncomplete 1