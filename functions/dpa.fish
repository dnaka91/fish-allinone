function dpa --description 'update all docker images'
    set images (docker images --format '{{.Repository}}:{{.Tag}}' | sort)

    for img in $images
        if not string match -q '<none>' $img
            set_color blue
            echo pulling docker image $img ...
            set_color normal

            docker pull $img
        end
    end

    docker image prune -f
end