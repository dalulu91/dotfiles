return {
  'mattn/emmet-vim',
  ft = { 'html', 'css', 'scss', 'javascriptreact', 'typescriptreact', 'svelte', 'vue' },
  init = function()
    vim.g.user_emmet_mode = 'i'
    vim.g.user_emmet_leader_key = '<C-z>'
  end,
  config = function()
    local function setup_emmet()
      vim.cmd([[imap <expr> <buffer> <Tab> emmet#expandAbbrIntelligent("\<tab>")]])
    end

    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'html', 'css', 'scss', 'javascriptreact', 'typescriptreact', 'svelte', 'vue' },
      callback = setup_emmet,
    })

    setup_emmet()
  end,
}
