(function() {
  window.Discourse.User.reopenClass({
    findAll: function(query, filter) {
      var result;
      result = Em.A();
      jQuery.ajax({
        url: "/directory.json",
        data: {
          filter: filter
        },
        success: function(users) {
          return users.each(function(u) {
            return result.pushObject(Discourse.User.create(u));
          });
        }
      });
			console.log(result);
      return result;
    }
  });
}).call(this);
