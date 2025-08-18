#!/usr/bin/env zsh
# gh-alias - GitHub CLI aliases plugin (Zsh Plugin Standard compliant)
# https://github.com/3dyuval/gh-alias.zsh
# Follows: https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

# ============================================
# Standardized $0 Handling (Zsh Plugin Standard)
# ============================================
0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# ============================================
# Plugin Setup & Guards
# ============================================

# Return if gh is not installed
if (( ! $+commands[gh] )); then
  return
fi

# ============================================
# Plugin Manager Activity Indicator
# ============================================
# Check if we're being loaded by a plugin manager
# If not, ensure our functions directory is in fpath
if [[ ${zsh_loaded_plugins[-1]} != */gh-alias && -z ${fpath[(r)${0:h}]} ]] {
    # Not being loaded by a plugin manager, add to fpath ourselves
    fpath+=( "${0:h}" )
}

# ============================================
# PMSPEC Support
# ============================================
# Inform plugin managers about our capabilities
# We support: s (PMSPEC), u (unload function), i (activity indicator)
typeset -g PMSPEC_GH_ALIAS="sui"

# ============================================
# ESSENTIAL: Repository Commands (gh repo)
# ============================================
alias ghrc='gh repo clone'
alias ghrC='gh repo create'
alias ghrv='gh repo view'
alias ghrvw='gh repo view --web'
alias ghrl='gh repo list'
alias ghrf='gh repo fork'
# alias ghrs='gh repo sync'
# alias ghrd='gh repo delete'
# alias ghre='gh repo edit'
# alias ghra='gh repo archive'
# alias ghru='gh repo unarchive'
# alias ghrr='gh repo rename'

# ============================================
# ESSENTIAL: Pull Request Commands (gh pr)
# ============================================
alias ghpc='gh pr create'
alias ghpv='gh pr view'
alias ghpl='gh pr list'
alias ghpm='gh pr merge'
alias ghpo='gh pr checkout'
alias ghpd='gh pr diff'
alias ghps='gh pr status'
# alias ghpe='gh pr edit'
# alias ghpx='gh pr close'
# alias ghpr='gh pr reopen'
# alias ghpw='gh pr review'
# alias ghpa='gh pr assign'
# alias ghpt='gh pr ready'
# alias ghpco='gh pr comment'
# alias ghpch='gh pr checks'

# ============================================
# ESSENTIAL: Issue Commands (gh issue)
# ============================================
alias ghiv='gh issue view'
alias ghic='gh issue create'
alias ghil='gh issue list'
alias ghis='gh issue status'
# alias ghie='gh issue edit'
# alias ghix='gh issue close'
# alias ghir='gh issue reopen'
# alias ghid='gh issue delete'
# alias ghia='gh issue assign'
# alias ghit='gh issue transfer'
# alias ghip='gh issue pin'
# alias ghiu='gh issue unpin'
# alias ghico='gh issue comment'

# ============================================
# ESSENTIAL: Common Commands
# ============================================
alias ghcs='gh status'
alias ghcb='gh browse'
alias ghca='gh api'
# alias ghch='gh help'
# alias ghcv='gh version'

# ============================================
# USEFUL: Workflow Commands (gh workflow)
# ============================================
alias ghwl='gh workflow list'
alias ghwr='gh workflow run'
# alias ghwv='gh workflow view'
# alias ghwe='gh workflow enable'
# alias ghwd='gh workflow disable'

# ============================================
# USEFUL: Run Commands (gh run)
# ============================================
alias ghul='gh run list'
alias ghuv='gh run view'
# alias ghuc='gh run cancel'
# alias ghur='gh run rerun'
# alias ghud='gh run download'
# alias ghuw='gh run watch'

# ============================================
# Composite/Workflow Aliases
# ============================================
# Quick PR workflow
alias ghpcw='gh pr create -w'  # Create PR in web browser
alias ghpmd='gh pr merge -d'   # Merge and delete branch
alias ghpms='gh pr merge -s'   # Squash and merge
# alias ghpmr='gh pr merge -r'   # Rebase and merge

# Quick issue workflow
alias ghicw='gh issue create -w'  # Create issue in web browser
# alias ghilm='gh issue list -L 10' # List last 10 issues
# alias ghilmy='gh issue list -a @me' # List my issues

# ============================================
# USEFUL: Gist Commands (gh gist)
# ============================================
alias ghgc='gh gist create'
alias ghgv='gh gist view'
alias ghgl='gh gist list'
alias ghge='gh gist edit'
alias ghgd='gh gist delete'
alias ghgn='gh gist clone'

# ============================================
# OCCASIONALLY USEFUL (Commented Out)
# ============================================

# # Authentication Commands (gh auth)
# alias ghal='gh auth login'
# alias ghas='gh auth status'
# alias ghaw='gh auth switch'
# alias ghao='gh auth logout'
# alias ghar='gh auth refresh'
# alias ghat='gh auth token'

# # Release Commands (gh release)
# alias ghrec='gh release create'
# alias ghrel='gh release list'
# alias ghrev='gh release view'
# alias ghred='gh release delete'
# alias ghreu='gh release upload'
# alias ghrdo='gh release download'
# alias ghree='gh release edit'

# # Gist Commands (gh gist) - MOVED TO ACTIVE SECTION

# # Search Commands (gh search)
# alias ghsr='gh search repos'
# alias ghsc='gh search code'
# alias ghsi='gh search issues'
# alias ghsp='gh search prs'
# alias ghsu='gh search users'
# alias ghsm='gh search commits'

# Extension Commands (gh extension)
# alias ghei='gh extension install'
# alias ghel='gh extension list'
# alias gher='gh extension remove'
# alias gheu='gh extension upgrade'
# alias ghec='gh extension create'
# alias gheb='gh extension browse'
# alias ghes='gh extension search'
# alias ghex='gh extension exec'

# ============================================
# RARELY USED (Commented Out)
# ============================================

# # Project Commands (gh project)
# alias ghpjc='gh project create'
# alias ghpjl='gh project list'
# alias ghpjv='gh project view'
# alias ghpje='gh project edit'
# alias ghpjx='gh project close'
# alias ghpjd='gh project delete'

# # Secret Commands (gh secret)
# alias ghsec='gh secret set'
# alias ghsel='gh secret list'
# alias ghsed='gh secret delete'

# # SSH Key Commands (gh ssh-key)
# alias ghka='gh ssh-key add'
# alias ghkl='gh ssh-key list'
# alias ghkd='gh ssh-key delete'

# # Label Commands (gh label)
# alias ghll='gh label list'
# alias ghlc='gh label create'
# alias ghle='gh label edit'
# alias ghld='gh label delete'

# # Alias Commands (gh alias)
# alias ghalc='gh alias set'
# alias ghall='gh alias list'
# alias ghald='gh alias delete'

# # Config Commands (gh config)
# alias ghcg='gh config get'
# alias ghcs='gh config set'
# alias ghcl='gh config list'

# # Codespace Commands (gh codespace)
# alias ghcsc='gh codespace create'
# alias ghcsl='gh codespace list'
# alias ghcss='gh codespace ssh'
# alias ghcsd='gh codespace delete'
# alias ghcsv='gh codespace view'
# alias ghcse='gh codespace edit'
# alias ghcsr='gh codespace rebuild'
# alias ghcso='gh codespace code'

# # Cache Commands (gh cache)
# alias ghchl='gh cache list'
# alias ghchd='gh cache delete'

# # GPG Key Commands (gh gpg-key)
# alias ghgka='gh gpg-key add'
# alias ghgkl='gh gpg-key list'
# alias ghgkd='gh gpg-key delete'

# ============================================
# Helper Functions (With Standard Options)
# ============================================

# Clone a repo and cd into it
function ghrc-cd() {
    # Standard recommended options
    emulate -L zsh
    setopt extended_glob warn_create_global typeset_silent \
           no_short_loops rc_quotes no_auto_pushd
    
    # Standard recommended variables
    local MATCH REPLY; integer MBEGIN MEND
    local -a match mbegin mend reply
    
    if [[ -z "$1" ]]; then
        echo "Usage: ghrc-cd <repo>" >&2
        return 1
    fi
    
    local repo_name="$(basename "$1" .git)"
    if gh repo clone "$1"; then
        cd "$repo_name" || return 1
    else
        echo "Failed to clone repository: $1" >&2
        return 1
    fi
}

# View PR in browser
function ghpb() {
    emulate -L zsh
    setopt extended_glob warn_create_global typeset_silent \
           no_short_loops rc_quotes no_auto_pushd
    
    if [[ -z "$1" ]]; then
        gh pr view --web
    else
        gh pr view "$1" --web
    fi
}

# View issue in browser
function ghib() {
    emulate -L zsh
    setopt extended_glob warn_create_global typeset_silent \
           no_short_loops rc_quotes no_auto_pushd
    
    if [[ -z "$1" ]]; then
        gh issue view --web
    else
        gh issue view "$1" --web
    fi
}

# Quick status check
function gh-status() {
    emulate -L zsh
    setopt extended_glob warn_create_global typeset_silent \
           no_short_loops rc_quotes no_auto_pushd
    
    echo "=== GitHub Status ==="
    gh status
    echo -e "\n=== Repository ==="
    gh repo view 2>/dev/null || echo "Not in a GitHub repository"
    echo -e "\n=== Pull Requests ==="
    gh pr status 2>/dev/null || echo "No PR information available"
}

# Create PR from current branch
function ghpc-current() {
    emulate -L zsh
    setopt extended_glob warn_create_global typeset_silent \
           no_short_loops rc_quotes no_auto_pushd
    
    local MATCH REPLY; integer MBEGIN MEND
    local -a match mbegin mend reply
    
    local branch=$(git branch --show-current 2>/dev/null)
    if [[ -z "$branch" ]]; then
        echo "Error: Not in a git repository or no current branch" >&2
        return 1
    fi
    
    if [[ "$branch" == "main" ]] || [[ "$branch" == "master" ]]; then
        echo "Cannot create PR from default branch ($branch)" >&2
        return 1
    fi
    
    gh pr create
}

# ============================================
# Plugin Unload Function (Zsh Plugin Standard)
# ============================================
function gh-alias_plugin_unload() {
    emulate -L zsh
    setopt extended_glob warn_create_global typeset_silent \
           no_short_loops rc_quotes no_auto_pushd
    
    # Unset all active aliases
    unalias ghrc ghrC ghrv ghrvw ghrl ghrf 2>/dev/null
    unalias ghpc ghpv ghpl ghpm ghpo ghpd ghps 2>/dev/null
    unalias ghiv ghic ghil ghis 2>/dev/null
    unalias ghcs ghcb ghca 2>/dev/null
    unalias ghwl ghwr 2>/dev/null
    unalias ghul ghuv 2>/dev/null
    unalias ghpcw ghpmd ghpms ghicw 2>/dev/null
    unalias ghgc ghgv ghgl ghge ghgd ghgn 2>/dev/null
    unalias ghei ghel gher gheu ghec gheb ghes ghex 2>/dev/null
    
    # Unset helper functions
    unfunction ghrc-cd ghpb ghib gh-status ghpc-current 2>/dev/null
    
    # Remove from fpath if we added it
    if [[ ${zsh_loaded_plugins[-1]} != */gh-alias ]] {
        fpath[(r)${0:h}]=()
    }
    
    # Unset the plugin-specific PMSPEC
    unset PMSPEC_GH_ALIAS
    
    # Unset self
    unfunction gh-alias_plugin_unload
}

# ============================================
# @zsh-plugin-run-on-update Handler
# ============================================
# If the plugin manager supports it, register update hooks
if (( ${+functions[@zsh-plugin-run-on-update]} )); then
    @zsh-plugin-run-on-update "echo 'gh-alias plugin updated successfully'"
fi

# ============================================
# @zsh-plugin-run-on-unload Handler
# ============================================
# If the plugin manager supports it, register unload hooks
if (( ${+functions[@zsh-plugin-run-on-unload]} )); then
    @zsh-plugin-run-on-unload "echo 'gh-alias plugin unloaded'"
fi
