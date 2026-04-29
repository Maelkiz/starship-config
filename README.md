# Starship Prompt

> My personal [starship](https://github.com/starship/starship) configuration.

---

### Prerequisites
- starship — Install from [starship.rs](https://starship.rs/)

---

### Installation
Preview the installation script:
```sh
curl -fsSL https://raw.githubusercontent.com/Maelkiz/starship-config/main/install.sh | less
```

After verifying install the config:
```sh
curl -fsSL https://raw.githubusercontent.com/Maelkiz/starship-config/main/install.sh | sh
```

Make your shell initialize starship on startup::
```sh
# Bash
grep -qxF 'eval "$(starship init bash)"' ~/.bashrc || echo 'eval "$(starship init bash)"' >> ~/.bashrc
source ~/.bashrc
```
```sh
# Zsh
grep -qxF 'eval "$(starship init zsh)"' ~/.zshrc || echo 'eval "$(starship init zsh)"' >> ~/.zshrc
source ~/.zshrc
```
```sh
# Fish
mkdir -p ~/.config/fish
grep -qxF 'starship init fish | source' ~/.config/fish/config.fish || echo 'starship init fish | source' >> ~/.config/fish/config.fish
source ~/.config/fish/config.fish
```

---

