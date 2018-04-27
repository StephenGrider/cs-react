import { Component } from "react"
import wrapper from "../helpers/component"

VideoDetail = ({ video }) ->
  return "Loading" unless video

  { videoId } = video.id
  url = "https://www.youtube.com/embed/#{videoId}"

  div
    className: "video-detail col-md-8"
    div
      className: "embed-responsive embed-responsive-16by9"
      iframe
        className: "embed-responsive-item"
        src: url
    div
      className: "details"
      div video.snippet.title
      div video.snippet.description

export default wrapper VideoDetail
