
  ItemEvents.rightClicked('structurecompass:structure_compass', event => {
    // event.server.scheduleInTicks(10, _ => {
    if (event.player.isCrouching()) {
        event.cancel()
    }
  })
