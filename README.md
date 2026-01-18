# git remove

Interactive git branch remover in the terminal.

- Highlight the currently active branch in green.
- Navigate with **arrows** or **j/k** keys.
- Press **r** to enter delete confirmation mode.
- Press **r** again to confirm deletion.
- Press **Esc** to cancel and return to selection mode.
- Press **q** to quit.

---

## Installation

### Build

```
make
```

### Install

```
sudo make install
```

This installs the `git-remove` binary to `/usr/local/bin/`.

---

## Usage

Run in any git repository:

```
git remove
```

The program will:

1. Display a prompt and the branch table (`git branch -v` output).
2. Highlight the currently active branch (cannot be deleted).
3. Allow navigation with arrows or `j/k`.
4. Press `r` to select a branch for deletion (shows confirmation prompt).
5. Press `r` again to confirm, or `Esc` to cancel.
6. Quit with `q`.

---

## Example Output

Here is an example of how `git remove` looks in the terminal:

```
$ git remove
Select branch to delete (↑/↓ j/k, r to remove, q to quit)
  1-initial-setup                         a1b2c3d   initialize project structure
  2-api-refactor                          b2c3d4e   refactor request handling
➜ 3-ui-polish                             c3d4e5f   adjust spacing and colors
  experiment-fast-build                   d4e5f6a   test alternative build flags
* main                                    e5f6a7b   merge feature branches
  release-2025-01                         f6a7b8c   prepare release artifacts
  spike-performance                       a7b8c9d   measure cold start latency
```

After pressing `r` on a branch:

```
Delete branch '3-ui-polish'? (r to confirm, Esc to cancel)
  1-initial-setup                         a1b2c3d   initialize project structure
  2-api-refactor                          b2c3d4e   refactor request handling
➜ 3-ui-polish                             c3d4e5f   adjust spacing and colors   (highlighted in red)
  experiment-fast-build                   d4e5f6a   test alternative build flags
* main                                    e5f6a7b   merge feature branches
  release-2025-01                         f6a7b8c   prepare release artifacts
  spike-performance                       a7b8c9d   measure cold start latency
```

- `➜` marks the **currently selected branch** (highlighted).
- `*` marks the **active branch** (green, cannot be deleted).
- Navigate with **arrows** or **j/k**, press **r** to delete, **q** to quit.
- Lines are truncated to terminal width to prevent wrapping issues.

---

## Optional: Create a shorter alias

If you want even faster access, you can add an alias in your shell configuration (`~/.bashrc`, `~/.zshrc`, etc.):

```
# shorter alias for git remove
alias grm='git remove'
```

Reload your shell:

```
source ~/.bashrc   # or ~/.zshrc
```

Then you can run:

```
grm
```

---

## Dependencies

- Standard C++ compiler (`g++`)
- POSIX-compatible terminal (Linux, macOS)

No external libraries required.
