window.Discourse.DirectoryController =  Ember.ArrayController.extend Discourse.Presence,

  username: null
  query: null
  selectAll: false
  content: null
  filterMode: 'directory'

  filterUsers: Discourse.debounce(->
    @refreshUsers()
  ,250).observes('username')

  orderChanged: (->
    @refreshUsers()
  ).observes('query')

  refreshUsers: ->
    @set 'content', Discourse.User.findAll(@get('query'), @get('username'))

  show: (term) ->
    if @get('query') == term
      @refreshUsers()
    else
      @set('query', term)
  
  availableNavItems: (->
    summary = @get('filterSummary')
    loggedOn = !!Discourse.get('currentUser')

    Discourse.SiteSettings.top_menu.split("|").map((i)->
      Discourse.NavItem.fromText i,
        loggedOn: loggedOn
        hasCategories: true
        countSummary: summary
    ).filter((i)-> i != null)

  ).property('filterSummary')
  
  contentEven: (->
    return Em.A()  if @blank("content")
    @get("content").filter (item, index) ->
      ((index + 1) % 2) is 0
    ).property("content.@each")
    
  contentOdd: (->
    return Em.A()  if @blank("content")
    @get("content").filter (item, index) ->
      ((index + 1) % 2) is 1
    ).property("content.@each")  
  