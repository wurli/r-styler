function CodeBlock (el) 
  
  if el.classes[1] ~= "r" then
    return el
  end
  
  -- Error handling not necessary; if R code won't parse then
  -- knitr will fail and this will never be run
  el.text = pandoc.pipe("RScript", {"run-styler.R", el.text}, "")
  
  return el
  
end
