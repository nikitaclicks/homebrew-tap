# homebrew-tap

A [Homebrew](https://brew.sh) tap for my macOS apps.

## Casks

### [Foretype](https://github.com/nikitaclicks/foretype) — menu-bar inline autocomplete

```sh
brew install --cask nikitaclicks/tap/foretype
```

Foretype is not notarized; the cask strips the `com.apple.quarantine`
attribute on install so it launches without a Gatekeeper warning. See the
[Foretype README](https://github.com/nikitaclicks/foretype#notarization) for
details.

### [Tempo](https://github.com/nikitaclicks/tempo) — local-only macOS activity tracker

```sh
brew install --cask nikitaclicks/tap/tempo
```

A lightweight Rust daemon continuously records what you're doing — the active
window, the app and its context, whether you're at the keyboard, idle/sleep
transitions, and (with an optional browser extension) the active tab. A Tauri
desktop app turns that stream into a **timeline, day history, weekly insights,
a narrative view, and an optional AI-assisted summary and chat**.

Tempo is not notarized; the cask strips the `com.apple.quarantine` attribute on
install so it launches without a Gatekeeper warning. See the
[Tempo README](https://github.com/nikitaclicks/tempo#notarization) for details.
