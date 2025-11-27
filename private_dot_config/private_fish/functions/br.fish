function br
    # 1. Compila o projeto
    cmake --build build

    # 2. Se a compilação deu certo ('and' é o '&&' do fish)
    #    Roda o programa e passa quaisquer argumentos para ele.
    #    Ex: 'br --ajuda' vai rodar './build/meu_programa --ajuda'
    and ./build/meu_programa $argv
end
