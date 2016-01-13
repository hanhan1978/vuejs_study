

do ($ = jQuery) ->
  new Vue({
    el: '#app0',
    data: {
      message: 'Hello Vue.js!'
    }
  })
  new Vue({
    el: '#app1',
    data: {
      todos:[
        { text: 'Learn JavaScript' }
        { text: 'Learn Vue.js' }
        { text: 'Build Something Awesome' }
      ]
    }
  })
  new Vue({
    el: '#app2',
    data: {
      message: 'Hello App2'
    },
    methods: {
      reverseMessage: () ->
        this.message = this.message.split('').reverse().join('')
    }
  })
  new Vue({
    el: '#app',
    data: {
      newTodo: '',
      todos: [
        { text: 'Add some todos' }
      ]
    },
    methods: {
      addTodo: () ->
        text = this.newTodo.trim()
        if(text)
          this.todos.push({ text: text })
          this.newTodo = ''
      removeTodo: (index) ->
        this.todos.splice(index, 1)
    }
  })

$ -> 
  #google.load("search", "1");
  #google.setOnLoadCallback( OnLoad );

  OnLoad = ->
    imageSearch = new google.search.ImageSearch();
    imageSearch.setResultSetSize( 1 );
    imageSearch.setSearchCompleteCallback( this, SearchComplete, [ imageSearch ] );
    imageSearch.execute( 'sky' );

  SearchComplete = ( searcher ) ->
    results = searcher.results;
    if( results && ( 0 < results.length ) )
      content = document.getElementById( 'content' );
      console.table content
  #    for( var i = 0; i < results.length; i++ )
  #          {
  #              // 画像のファイル名
  #              var title = document.createElement( 'p' );
  #              title.appendChild( document.createTextNode( results[ i ].title ) );
  #
  #              // サムネイル画像のURL
  #              var image = document.createElement( 'img' );
  #              image.src = results[ i ].tbUrl;
  #
  #              content.appendChild( title );
  #              content.appendChild( image );
  #          }
  #      }
