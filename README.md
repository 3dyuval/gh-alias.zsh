# gh-alias.zsh

A Zsh plugin providing [GitHub CLI](https://cli.github.com/) (`gh`) aliases GitHub operations.

- **Essential GitHub aliases** - Transform long commands into 4-character shortcuts

```bash
# Instead of typing long commands
gh repo create my-project
gh pr create --title "Fix bug"
gh issue list --state open

# Use short 4-character aliases
ghrC my-project
ghpc --title "Fix bug" 
ghil --state open
```

- **Extend easily** - Uncomment additional aliases as needed

```bash
# Many additional aliases are included but commented out by default
# Uncomment relevant lines in gh-alias.plugin.zsh to enable:
# alias ghas='gh auth status'     # Authentication commands
# alias ghrec='gh release create' # Release commands  
# alias ghsr='gh search repos'    # Search commands
# alias ghei='gh extension install' # Extension commands
# And many more...
```

- **Install anywhere** - Works with any plugin manager or standalone

```bash
# Install with any plugin manager
zinit light 3dyuval/gh-alias.zsh

# Oh My Zsh
git clone https://github.com/3dyuval/gh-alias.zsh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/gh-alias
# Add gh-alias to plugins list in .zshrc

# Manual installation
git clone https://github.com/3dyuval/gh-alias.zsh ~/gh-alias
[ -f "$HOME/gh-alias/gh-alias.plugin.zsh" ] && source "$HOME/gh-alias/gh-alias.plugin.zsh"

# Clean uninstall removes all traces
gh-alias_plugin_unload
```


## Prerequisites

- [GitHub CLI](https://cli.github.com/) (`gh`) must be installed
- Zsh shell

## Available Aliases

### Repository Commands ([`gh repo`](https://cli.github.com/manual/gh_repo))

| Alias | Command | Description |
|-------|---------|-------------|
| `ghrc` | [`gh repo clone`](https://cli.github.com/manual/gh_repo_clone) | Clone a repository |
| `ghrC` | [`gh repo create`](https://cli.github.com/manual/gh_repo_create) | Create a repository |
| `ghrv` | [`gh repo view`](https://cli.github.com/manual/gh_repo_view) | View repository details |
| `ghrvw` | `gh repo view --web` | View repository in web browser |
| `ghrl` | [`gh repo list`](https://cli.github.com/manual/gh_repo_list) | List repositories |
| `ghrf` | [`gh repo fork`](https://cli.github.com/manual/gh_repo_fork) | Fork a repository |

### Pull Request Commands ([`gh pr`](https://cli.github.com/manual/gh_pr))

| Alias | Command | Description |
|-------|---------|-------------|
| `ghpc` | [`gh pr create`](https://cli.github.com/manual/gh_pr_create) | Create a pull request |
| `ghpv` | [`gh pr view`](https://cli.github.com/manual/gh_pr_view) | View pull request details |
| `ghpl` | [`gh pr list`](https://cli.github.com/manual/gh_pr_list) | List pull requests |
| `ghpm` | [`gh pr merge`](https://cli.github.com/manual/gh_pr_merge) | Merge a pull request |
| `ghpo` | [`gh pr checkout`](https://cli.github.com/manual/gh_pr_checkout) | Check out a pull request |
| `ghpd` | [`gh pr diff`](https://cli.github.com/manual/gh_pr_diff) | View pull request diff |
| `ghps` | [`gh pr status`](https://cli.github.com/manual/gh_pr_status) | View PR status |
| `ghpcw` | `gh pr create -w` | Create PR in web browser |
| `ghpmd` | `gh pr merge -d` | Merge and delete branch |
| `ghpms` | `gh pr merge -s` | Squash and merge |

### Issue Commands ([`gh issue`](https://cli.github.com/manual/gh_issue))

| Alias | Command | Description |
|-------|---------|-------------|
| `ghiv` | [`gh issue view`](https://cli.github.com/manual/gh_issue_view) | View issue details |
| `ghic` | [`gh issue create`](https://cli.github.com/manual/gh_issue_create) | Create an issue |
| `ghil` | [`gh issue list`](https://cli.github.com/manual/gh_issue_list) | List issues |
| `ghis` | [`gh issue status`](https://cli.github.com/manual/gh_issue_status) | View issue status |
| `ghicw` | `gh issue create -w` | Create issue in web browser |

### Common Commands

| Alias | Command | Description |
|-------|---------|-------------|
| `ghcs` | [`gh status`](https://cli.github.com/manual/gh_status) | View GitHub status |
| `ghcb` | [`gh browse`](https://cli.github.com/manual/gh_browse) | Open in browser |
| `ghca` | [`gh api`](https://cli.github.com/manual/gh_api) | Make API requests |

### Workflow & Run Commands

| Alias | Command | Description |
|-------|---------|-------------|
| `ghwl` | [`gh workflow list`](https://cli.github.com/manual/gh_workflow_list) | List workflows |
| `ghwr` | [`gh workflow run`](https://cli.github.com/manual/gh_workflow_run) | Run a workflow |
| `ghul` | [`gh run list`](https://cli.github.com/manual/gh_run_list) | List workflow runs |
| `ghuv` | [`gh run view`](https://cli.github.com/manual/gh_run_view) | View run details |

### Gist Commands ([`gh gist`](https://cli.github.com/manual/gh_gist))

| Alias | Command | Description |
|-------|---------|-------------|
| `ghgc` | [`gh gist create`](https://cli.github.com/manual/gh_gist_create) | Create a gist |
| `ghgv` | [`gh gist view`](https://cli.github.com/manual/gh_gist_view) | View gist details |
| `ghgl` | [`gh gist list`](https://cli.github.com/manual/gh_gist_list) | List your gists |
| `ghge` | [`gh gist edit`](https://cli.github.com/manual/gh_gist_edit) | Edit a gist |
| `ghgd` | [`gh gist delete`](https://cli.github.com/manual/gh_gist_delete) | Delete a gist |
| `ghgn` | [`gh gist clone`](https://cli.github.com/manual/gh_gist_clone) | Clone a gist |



## Zsh Plugin Standard Compliance

This plugin follows the [Zsh Plugin Standard](https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html) v1.1.5:

- ✅ Standardized `$0` handling
- ✅ Plugin manager activity indicator
- ✅ Proper unload function (`gh-alias_plugin_unload`)
- ✅ Standard recommended options in functions
- ✅ PMSPEC support


## Contributing

Contributions are welcome! Feel free to submit issues and pull requests.

## License

MIT

## Author

[3dyuval](https://github.com/3dyuval)

## Acknowledgments

- [GitHub CLI](https://cli.github.com/) team for the excellent `gh` tool
- [Zsh Plugin Standard](https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html) for plugin best practices
