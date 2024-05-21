let $param := map{
          "method": "xml",
          "omit-xml-declaration": "no", 
          "doctype-system" : "dblp.dtd"          
}
return file:write("C:\Users\isaac\Downloads\A2\Assignment2-spec\DBE-A2-answ/mydblp.xml",  <dblp>
<MyArticles>
{ 
    for $x in doc("../dblp/dblp.xml")
      return $x//article
}</MyArticles><MyBooks>
{
  for $x in doc("../dblp/dblp.xml")
      return $x//book
}
</MyBooks></dblp>
, $param)