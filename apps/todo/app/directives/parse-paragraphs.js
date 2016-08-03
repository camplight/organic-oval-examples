module.exports = function (tag) {
  return {
    preCreate: function (createElement, tagName, props, ...children) {
      if (!children || !children[0]) {
        return
      }
      children = children[0].split('\n').map(function (text) {
        return createElement('p', null, text)
      })
      return children
    }
  }
}
