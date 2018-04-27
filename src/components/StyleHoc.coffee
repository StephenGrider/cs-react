import { Component } from "react"
import wrapper from "../helpers/component"

# Example of a higher order component
export default (WrappedComponent) ->
  wrapper class extends Component
    render: ->
      WrappedComponent { @props..., style: border: "5px solid red" }
