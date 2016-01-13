$ ->
  hoges = [
    {text: 'hoge1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', image: 'https://pbs.twimg.com/profile_images/378800000854693302/4b23b2cebe736f69cce894938b405931.png', url: 'http://yahoo.co.jp'}
    {text: 'hoge2', image: 'https://pbs.twimg.com/profile_images/378800000854693302/4b23b2cebe736f69cce894938b405931.png', url: 'http://yahoo.co.jp'}
  ]
  new Vue({
    el: '#feed__cat',
    data: {
      newTodo: '',
      feeds: hoges
    }
  })
