import { Component } from "react"
import wrapper from "../helpers/component"

class SearchBar extends Component
  constructor: (props) ->
    super props

    @state = term: ""

  onInputChange: (event) =>
    term = event.target.value
    @setState { term }
    @props.onTermChange term

  render: ->
    div
      style: @props.style
      className: "search-bar"
      input
        value: @state.term
        onChange: @onInputChange

export default wrapper SearchBar
