kitty_reload(){
    kill -SIGUSR1 $(pidof kitty)
}
ai(){
    local option="$1"
    case "$option" in
        r|R) model=deepseek-r1-distill-llama-8b ;;
        o|O) model=deepseek-r1-distill-qwen-7b-tir-o3-mini-code ;;
	*) echo "Usage: ai [r|o]"; return 1;;
    esac
    echo "Selected model is: $model"
    local directory=~/projects/python/local_api
    local temp=0.90
    local message=$2

    if [ -z "$message" ]; then
	    echo "Error: Message argument is required"
	    return 1
    fi

    uv run --directory $directory main.py --model $model --temp $temp --message "$message"
}
hyprpaper_random(){

    WALLPAPER_DIR="$HOME/Pictures/wallpapers/"
    CURRENT_WALL=$(hyprctl hyprpaper listloaded)

    # Get a random wallpaper that is not the current one
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

    # Apply the selected wallpaper
    hyprctl hyprpaper reload ,"$WALLPAPER"
}
