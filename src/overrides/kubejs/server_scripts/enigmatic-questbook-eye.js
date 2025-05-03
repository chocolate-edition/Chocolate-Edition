
// right click enigmatic eye to open questbook
ItemEvents.rightClicked('enigmaticlegacy:enigmatic_eye', event => {
  event.server.runCommandSilent(`execute as ${event.player.name.string} at @s run ftbquests open_book`);
});
