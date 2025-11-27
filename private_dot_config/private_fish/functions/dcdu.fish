function dcdu --wraps='docker compose down && docker compose up -d' --description 'alias dcdu docker compose down && docker compose up -d'
  docker compose down && docker compose up -d $argv
        
end
