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
      <navigation-item prop-title='Oval!' prop-onclick={tag.handleLinkClick('Oval!')} />
      <navigation-item prop-title='Pineapple!' prop-onclick={tag.handleLinkClick('Pineapple!')} />
    </ul>
  </div>
</navigation>
