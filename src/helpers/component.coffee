import React from 'react'
import isPlainObject from 'lodash/isPlainObject'
import isArray from 'lodash/isArray'

wrapper = (component) -> (specs...) ->
  conf = {}

  # Capture component props here. Each component is assumed
  # to have single props input. $$typeof check excludes vanilla HTML elements
  for spec in specs when isPlainObject(spec) and not spec.$$typeof
    conf = spec

  # Capture children. $$typeof check includes vanilla html elements
  children = (spec for spec in specs when not isPlainObject(spec) or spec.$$typeof)

  if isArray children...
    React.createFactory(component).bind(null, conf).apply(null, children...)
  else
    React.createFactory(component)(conf, children...)

elements = ["a", "article", "b", "blockquote", "body", "br", "button", "canvas", "caption", "center", "cite", "code", "col", "colgroup", "details", "dialog", "div", "em", "embed", "fieldset", "footer", "form", "frame", "frameset", "h1", "head", "header", "hr", "html", "i", "iframe", "image", "img", "input", "isindex", "label", "legend", "li", "link", "listing", "main", "map", "mark", "marquee", "menu", "menuitem", "meta", "meter", "multicol", "nav", "nextid", "nobr", "noembed", "noframes", "noscript", "object", "ol", "optgroup", "option", "output", "p", "param", "picture", "plaintext", "pre", "progress", "q", "rp", "rt", "rtc", "ruby", "s", "samp", "script", "section", "select", "shadow", "slot", "small", "source", "spacer", "span", "strike", "strong", "style", "sub", "summary", "sup", "table", "tbody", "td", "template", "textarea", "tfoot", "th", "thead", "time", "title", "tr", "track", "tt", "u", "ul", "var", "video", "wbr", "xmp"]

for element in elements
  window[element] = wrapper element

export default wrapper
