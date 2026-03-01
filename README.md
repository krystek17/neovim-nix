# Neovim-flake
## Improvement
1. DAP (Debug Adapter Protocol) — step-through debugging for Go directly in Neovim. nvim-dap + nvim-dap-ui + nvim-dap-go. Set breakpoints, inspect variables, step into functions — no more fmt.Println debugging.
2. AI completion — a few options:
   - Copilot (copilot-lua + blink-copilot) — integrates into blink as a source, inline ghost text suggestions
   - Codeium — free alternative to Copilot, similar experience
   - Avante — chat-based AI panel inside Neovim (like Cursor's sidebar), supports Claude/GPT/etc.
3. Neotest improvements — you have neotest with Go adapter, but no keymaps for it. You'd want <leader>t mappings for run test, run file, debug test (pairs with DAP).
Medium Value
4. Trouble.nvim — better diagnostics list. Instead of scrolling through inline errors, get a panel showing all diagnostics, references, quickfix items in one place.
5. Oil.nvim or mini.files — file manipulation (create, rename, delete) as a buffer. Faster than nvim-tree for quick edits. Could complement or replace nvim-tree.
6. Diffview.nvim — side-by-side git diffs, file history. Pairs well with your neogit setup.
Nice to Have
7. Flash.nvim or leap.nvim — faster cursor movement, jump to any visible character in 2-3 keystrokes
8. Persistence/session management — auto-save and restore sessions per project


