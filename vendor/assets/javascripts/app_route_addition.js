(function() {
  Discourse.Route.buildRoutes(function() {
    var router;
    router = this;
    this.route('directory', {
      path: '/directory'
    }); 
  });
}).call(this);