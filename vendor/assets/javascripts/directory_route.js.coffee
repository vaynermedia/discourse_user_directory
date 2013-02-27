Discourse.DirectoryRoute = Discourse.Route.extend
  setupController: (c) -> @controllerFor('directory').show('active')
