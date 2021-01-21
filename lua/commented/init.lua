local commented = {}
local parsers = require("nvim-treesitter.parsers")

function commented.test()
    print('test')
end

function commented.echo_missing()
    print('echo_missing')
    local result = commented.parse('(function_item)')
    print(result)
end


function commented.parse(query)
    print(
        vim.inspect(
            vim.treesitter.parse_query('rust', query)
        )
    )
    local lang = vim.api.nvim_buf_get_option(0, 'ft')
    local success, parsed_query = pcall(function()
        return vim.treesitter.parse_query(lang, query)
    end)
    if not success then
        print('sad')
        return
    end
end

return commented
