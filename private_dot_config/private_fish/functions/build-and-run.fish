# 'b' para "build" (Apenas compilar)
# Útil se você só quer checar se a compilação passa.
function b
    # $argv permite passar args, ex: b --target meu_teste
    cmake --build build $argv
end
funcsave b

# 'br' para "build and run" (O seu "super alias"!)
# Este é o que você vai usar 99% do tempo.
function br
    # 1. Compila o projeto
    cmake --build build

    # 2. Se a compilação deu certo ('and' é o '&&' do fish)
    #    Roda o programa e passa quaisquer argumentos para ele.
    #    Ex: 'br --ajuda' vai rodar './build/meu_programa --ajuda'
    and ./build/meu_programa $argv
end
funcsave br
