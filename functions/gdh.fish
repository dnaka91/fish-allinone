function gdh --description 'run godoc for the current directory'
    if test ! -f go.mod
        echo go.mod does not exist
    end

    set url (head -n 1 go.mod | cut -d\  -f2)

    echo -n 'starting godoc server for '
    set_color blue
    echo -n "$url "
    set_color normal
    echo -n 'on '
    set_color green
    echo -n 'http://localhost:6060/pkg/#thirdparty '
    set_color normal
    echo ...

    docker run -it --rm -v (pwd):/go/src/$url:ro -p 6060:6060 golang bash -c "go get golang.org/x/tools/cmd/godoc && rm -rf /go/src/golang.org && godoc -http :6060 $argv"
end