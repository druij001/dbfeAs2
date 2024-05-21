let $param := map{
          "method": "xml",
          "omit-xml-declaration": "no", 
          "doctype-system" : "dblp.dtd"          
}
return file:write("C:\Users\isaac\Downloads\A2\Assignment2-spec\DBE-A2-answ/mydblp.xml",  <dblp>
{ 
    for $x in doc("../dblp/dblp.xml")
      return $x//article
}</dblp>
, $param)