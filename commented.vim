" this file is for development purposes

fun! Commented()
    lua for k in pairs(package.loaded) do if k:match("^commented") then package.loaded[k] = nil end end
    lua require("commented").echo_missing()
endfun

fun! CommentedTest()
    lua for k in pairs(package.loaded) do if k:match("^commented") then package.loaded[k] = nil end end
    lua require("commented").test()
endfun

augroup Commented
    autocmd!
augroup END
