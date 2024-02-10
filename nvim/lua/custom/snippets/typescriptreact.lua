local ls = require('luasnip')
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local c = ls.choice_node
local function fn(
    args,     -- text from i(2) in this example i.e. { { "456" } }
    parent,   -- parent snippet or parent node
    user_args -- user_args from opts.user_args 
  )
     return  '' .. args[1][1] .. user_args .. '' 
  end

-- Layout Component Snippet
return {
    -- s("_ly", {
    --     t({"","export default function Layout({"}),
    --     t({"    children, // will be a page or nested layout"}),
    --     t({"","}: {"}),
    --     t({"    children: React.ReactNode"}),
    --     t({"","}) {"}),
    --     t({"    return ("}),
    --     t({"","        <section>"}),
    --     t({"            {children}"}),
    --     t({"","        </section>"}),
    --     t({"    )"}),
    --     t({"","}"}),
    --     i(1), 
    -- }),

    -- Functional Component Snippeta
    s("_fc", {
        t({"","import React from 'react'"}),
        -- f(fn,{1},{ user_args = { "" }}  ),
            t({"",""}),
            
            t({"",""}),
            t({"interface "}), f(fn,{1},{ user_args = { "" }}  ), t({"Props {"}),
            t({"","    "}),
            t({"",""}),
            t({"","}"}),
            t({"",""}),
            t({"",""}),
            t({"export default function "}), i(1), t({"({"}),
            t({"",""}),
            t({"",""}),
            t({"    "}),
            t({"","}: "}), f(fn,{1},{ user_args = { "" }}  ), t({"Props) {"}),
            t({"","    "}),
            t({"","    "}),
            t({"","    "}),i(2),
            t({"","    "}),
            t({"","    "}),
            t({"","    return ("}),
            t({"","        <section className=\"\">"}),
            t({"","            "}),
            t({"","           "}),i(3),
            t({"","            "}),
            t({"","        </section>"}),
            t({"",""}),
            t({"","    )"}),
            t({"","}"}),
    }),

    -- -- Client Functional Component Snippet
    -- s("_cfc", {
    --     t({"'useClient'"}),
    --     t({"interface "}), i(1, "myComp"), t({"Props {"}),
    --     t({"    // Define your props here"}),
    --     t({"","}"}),
    --     t({"export default function "}), {1}, t({"({"}),
    --     t({"    // Destructure your props here"}),
    --     t({"","}: "}), {1}, t({"Props) {"}),
    --     t({"    return ("}),
    --     t({"","        <section className=\"\">"}),
    --     t({"            // Component content here"}),
    --     t({"","        </section>"}),
    --     t({"    )"}),
    --     t({"","}"}),
    --     i(1),
    -- })
}