# PLEASE RUN THIS IN THE PROJECT DIRECTORY!!!
# Is this script sketchy? Idk, but shit I'll do it.

from pathlib import Path
import shutil

allowed_things = {
  "~/.config/alacritty": "./home/config/",
  "~/.config/niri": "./home/config/",
  "~/.config/nvim": "./home/config/",
  "~/.config/rofi": "./home/config/",
  "~/.config/waybar": "./home/config/",
  "~/.jaythings": "./home/",
  "~/.zshrc": "./home/zshrc",
  "~/.tmux.conf": "./home/tmux.conf",
}

def parse_things():
  for item in Path("./home").iterdir():
    if item.is_dir() and not item.is_symlink():
      shutil.rmtree(item)
    else:
      item.unlink()

  for source, destination in allowed_things.items():
    source = Path(source).expanduser()
    destination = Path(destination)

    if source.is_dir():
      shutil.copytree(source, destination / source.name, dirs_exist_ok=True)
    elif source.is_file():
      destination.parent.mkdir(parents=True, exist_ok=True)
      shutil.copy2(source, destination)
    else:
      print(f"Skipping missing path: {source}")

parse_things()
