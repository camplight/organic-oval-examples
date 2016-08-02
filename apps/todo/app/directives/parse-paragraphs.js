module.exports = function (tag) {
  return function (createElement, tagName, props, ...children) {
    if (props && props['parse-paragraphs']) {
      if (!children || !children[0]) {
        return false
      }
      children = children[0].split('\n').map(function (text) {
        return createElement('p', props, text)
      })
      return createElement(tagName, props, children)
    }
  }
}
