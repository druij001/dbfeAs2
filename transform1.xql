let $param := map{"method": "csv"}
return
  file:write("C:/Users/isaac/Downloads/A2/Assignment2-spec/DBE-A2-answ/Dim_Author.csv",
    <data>
      {let $h := <h>
        <h2>{"author_name"}</h2>
        <h3>{"editor_name"}</h3>
       </h>
       return $h
      }
      {
        for $art in //article
        let $editors := $art/editor
        let $authors := $art/author
        return
          if (empty($authors)) then
            for $ed in $editors
            return <tr>
              <td></td>
              <td>{$ed/text()}</td>
            </tr>
          else
            for $au in $authors
            return <tr>
              <td>{$au/text()}</td>
              <td>{$editors/text()}</td>
            </tr>
      }
    </data>, $param )