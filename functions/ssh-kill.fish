function ssh-kill --description 'kill all running ssh agents'
    kill (pgrep ssh-agent)
end
