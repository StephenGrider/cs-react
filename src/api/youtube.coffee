import axios from 'axios'

API_KEY = 'AIzaSyB0ToJFPdt3Dp2stb8ynXqHkNe9U0ivB0c'

export default (term) ->
  axios.get "https://www.googleapis.com/youtube/v3/search",
    params:
      key: API_KEY
      type: 'video'
      part: 'snippet'
      q: term
