import { Component } from "react"
import debounce from "lodash/debounce"
import wrapper from "./helpers/component"
import search from "./api/youtube"
import VideoList from "./components/VideoList"
import VideoDetail from "./components/VideoDetail"
import SearchBar from "./components/SearchBar"

class App extends Component
  constructor: (props) ->
    super props

    @state = videos: [], selectedVideo: null
    @videoSearch = debounce @videoSearch, 300

  componentDidMount: ->
    @videoSearch "surfboards"

  videoSearch: (term) =>
    res = await search term
    @setState videos: res.data.items, selectedVideo: res.data.items[0]

  onVideoSelect: (video) =>
    @setState selectedVideo: video

  render: ->
    div
      className: "container"
      SearchBar onTermChange: @videoSearch
      VideoDetail video: @state.selectedVideo
      VideoList { videos: @state.videos, @onVideoSelect }

export default wrapper App
