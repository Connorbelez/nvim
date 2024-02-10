local ls = require('luasnip')
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local c = ls.choice_node
return { 
    s("pycomp", {
    t({"","import math"}),
    t({"","import sys"}),
    t({"","import os"}),
    t({"","import itertools"}),
    t({"","import collections"}),
    t({"","from collections import defaultdict, Counter, deque"}),
    t({"","import heapq"}),
    t({"","import numpy"}),
    t({"","import bisect"}),
    t({"",""}),
    t({"","def main():"}),
    t({"","    # Your code goes here"}),
    i(0),
    t({"",""}),
    t({"","if __name__ == \"__main__\":"}),
    t({"","    main()"}),
    

    -- t({"import itertools"}),
    -- t({"import collections"}),
    -- t({"from collections import defaultdict, Counter, deque"}),
    -- t({"import heapq"}),
    -- t({"import numpy"}),
    -- t({"import bisect"}),
    -- t({"import sys"}),
    -- t({""}),
    -- t({"def main():"}),
    -- t({"    # Your code goes here"}),
    -- i(0),
    -- t({""}),
    -- t({"if __name__ == \"__main__\":"}),
    -- t({"    main()"}),
    -- i(0),

})
}
