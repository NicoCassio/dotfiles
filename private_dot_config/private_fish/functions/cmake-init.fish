function cmake-init
    echo "🚀 Configurando o projeto com vcpkg..."
    cmake-config
    and cmake-link-lsp # 'and' só roda se o comando anterior for sucesso
    echo "✅ Projeto configurado e link do LSP criado."
end
