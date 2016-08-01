<navigation>
  <script>
    tag.title = 'Click on a link to chage me!'
    tag.onLinkClick = function (title, replaceTitle) {
      return (e) => {
        e.preventDefault()
        tag.title = replaceTitle ? title : `You clicked on: "${title}"`
        tag.update()
      }
    }
  </script>
  <div>
    <h1>{tag.title}</h1>
    <ul>
      <li><a href='#' onclick={tag.onLinkClick('Home')}>Home</a></li>
      <li><a href='#' onclick={tag.onLinkClick('About')}>About</a></li>
      <li><a href='#' onclick={tag.onLinkClick('Organic Oval RLZ!', true)}>Organic Oval RLZ!</a></li>
    </ul>
  </div>
</navigation>
