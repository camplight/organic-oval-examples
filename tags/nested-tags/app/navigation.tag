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
      <li>
        <navigation-item prop-title='Oval!' prop-onclick={tag.handleLinkClick('Oval!')} />
      </li>
      <li>
        <navigation-item prop-title='Pineapple!' prop-onclick={tag.handleLinkClick('Pineapple!')} />
      </li>
    </ul>
  </div>
</navigation>
