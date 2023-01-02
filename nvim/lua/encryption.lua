
-- encrpyt/decrypt *.enc file with openssl command
vim.api.nvim_create_augroup('encryption', {})
vim.api.nvim_create_autocmd('BufNewFile', {
  group = 'encryption',
  pattern = '*.enc',                                                            
  command = [[
    setl viminfo= noswapfile
    let $PASS = inputsecret("Password: ")
  ]]
})
vim.api.nvim_create_autocmd('BufReadPre', {
  group = 'encryption',
  pattern = '*.enc',                                                            
  command = [[setl viminfo= noswapfile]]
})
vim.api.nvim_create_autocmd('BufReadPost', {
  group = 'encryption',
  pattern = '*.enc',                                                            
  command = [[
    let $PASS = inputsecret("Password: ")
    %!openssl enc -d -aes-256-cbc -a -pass pass:$PASS
    if v:shell_error > 0
      bdelete!
      throw "decryption failed."
    endif
  ]]     
})                                                                              
vim.api.nvim_create_autocmd('BufWritePre', {
  group = 'encryption',
  pattern = '*.enc',
  command = [[
    %!openssl enc -e -aes-256-cbc -a -pass pass:$PASS
  ]]
})
vim.api.nvim_create_autocmd('BufWritePost', {
  group = 'encryption',
  pattern = '*.enc',
  command = [[ u ]]
})

