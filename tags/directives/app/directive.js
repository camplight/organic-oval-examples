module.exports.alert = function (tag) {
  return function (createElement, tagName, props, ...children) {
    if (props && props['alert']) {
      props['onclick'] = function () {
        alert(props['alert'])
      }
      // returning false means that element was not created
      return false
    }
  }
}

// converts every new line in the tag's content to paragraph
module.exports.parseParagraphs = function (tag) {
  return function (createElement, tagName, props, ...children) {
    if (props && props['parse-paragraphs']) {
      children = children[0].split('\n').map((text) => {
        return createElement('p', {}, text)
      })
      // returning element, means that the element creation must be skipped
      return createElement(tagName, props, children)
    }
  }
}
