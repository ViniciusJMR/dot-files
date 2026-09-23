vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local filetype = vim.bo[args.buf].filetype
    local lang = vim.treesitter.language.get_lang(filetype)

    if not lang then
      return
    end

    local ok, err = pcall(vim.treesitter.start, args.buf, lang)

    if not ok then
      vim.notify(
        "Treesitter não iniciou para " .. lang .. ":\n" .. err,
        vim.log.levels.WARN
      )
    end
  end,
})

    
