/* Add /directory route
*/

// This is our main issue right now. Adding a route to the ember app...

/**
  Builds the routes for the application

  @method buildRoutes
  @for Discourse.ApplicationRoute
**/

(function() {

  Discourse.buildRoutes(function() {
    var router;
    /* Generate static page routes
    */
    router = this;
    Discourse.StaticController.pages.forEach(function(p) {
      return router.route(p, {
        path: "/" + p
      });
    });
    this.route('directory', {
      path: '/directory'
    }); 
  });
}).call(this);
