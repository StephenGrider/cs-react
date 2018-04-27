import { Component } from "react"
import wrapper from "../helpers/component"

VideoListItem = ({ video, onVideoSelect }) ->
  { url } = video.snippet.thumbnails.default

  li
    onClick: -> onVideoSelect(video)
    className: "list-group-item"
    div
      className: "video-list media"
      div
        className: "media-left"
        img
          className: "media-object"
          src: url
      div
        className: "media-body"
        div
          className: "media-heading"
          video.snippet.title

export default wrapper VideoListItem
