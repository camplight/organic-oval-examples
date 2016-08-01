<navigation>
  <script>
    require('./navigation-item')
    tag.handleLinkClick = function (text) {
      return (e) => {
        e.preventDefault()
        alert(text)
      }
    }
  </script>
  <div>
    <h1>Click on a link!</h1>
    <ul>
      <navigation-item ref-title={'Oval!'} ref-onclick={tag.handleLinkClick('Oval!')} />
      <navigation-item ref-title={'Pineapple!'} ref-onclick={tag.handleLinkClick('Pineapple!')} />
    </ul>
  </div>
</navigation>
