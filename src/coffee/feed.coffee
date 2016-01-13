$ ->
  hoges = [
    {text: 'hoge1aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', image: 'https://pbs.twimg.com/profile_images/614579930886574080/qRQrOdKt_400x400.jpg', url: 'http://yahoo.co.jp'}
    {text: 'hoge2', image: 'https://pbs.twimg.com/profile_images/614579930886574080/qRQrOdKt_400x400.jpg', url: 'http://yahoo.co.jp'}
  ]
  new Vue({
    el: '#feed__cat',
    data: {
      newTodo: '',
      feeds: hoges
    }
  })
