module.exports.alert = function (tag) {
  return {
    preCreate: function (createElement, tagName, props, ...children) {
      props['onclick'] = function () {
        alert(props['alert'])
      }
    }
  }
}

// converts every new line in the tag's content to paragraph
module.exports.parseParagraphs = function (tag) {
  return {
    preCreate: function (createElement, tagName, props, ...children) {
      children = children[0].split('\n').map((text) => {
        return createElement('p', {}, text)
      })
      // returning new children, will replace the target ones
      return children
    }
  }
}
