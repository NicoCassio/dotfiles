function cmake-link-lsp --wraps='ln -s build/compile_commands.json .' --description 'alias cmake-link-lsp ln -s build/compile_commands.json .'
    ln -s build/compile_commands.json . $argv
end
