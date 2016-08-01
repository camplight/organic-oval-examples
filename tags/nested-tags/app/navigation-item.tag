<navigation-item>
  <script>
    // do not render <navigation-item> when using this component.
    // in HTML <li> tags are the only allowed children tags of <ul> and <ol>
    tag.keepParentTag = false
  </script>
  <li>
    <a href='#' onclick={tag.props.onclick}>{tag.props.title}</a>
  </li>
</navigation-item>
