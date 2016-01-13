

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


