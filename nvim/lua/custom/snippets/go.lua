local ls = require('luasnip')
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local c = ls.choice_node

return {s("gocomp", {
    t({
        "package main",
        "",
        "import (",
        "    \"fmt\"",
        "    // Add other imports as necessary",
        ")",
        "",
        "func main() {",
        "    // Your code goes here",
        "    ",
        "}",
    }),
    i(0),
}, {
    description = "Go Competitive Programming Template"
})
}