local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s({ trig = "ie", dscr = "if err != nil { ... }" }, {
    t({ "if err != nil {", "\t" }),
    i(1),
    t({ "", "}" }),
  }),
}

