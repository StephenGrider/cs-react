import { Component } from "react"
import wrapper from "../helpers/component"
import VideoListItem from "./VideoListItem"

VideoList = ({ videos, onVideoSelect }) ->
  ul
    className: "col-md-4 list-group"
    VideoListItem { video, onVideoSelect } for video in videos

export default wrapper VideoList
