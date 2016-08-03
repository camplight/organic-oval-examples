<app>
  <script>
    tag.injectDirectives({
      'alert': require('./directive.js').alert,
      'parse-paragraphs': require('./directive.js').parseParagraphs,
    })
    tag.textWithNewLines = 'Hello\nthere\n!'
  </script>
  <div>
    <ul>
      <li><a href='#' alert='home'>Home</a></li>
      <li><a href='#' alert='about'>About</a></li>
      <li><a href='#' alert='oval is great!'>Oval is great!</a></li>
    </ul>
    <hr />
    <div style="text-align: center" parse-paragraphs>
      {tag.textWithNewLines}
    </div>
  </div>
</app>
