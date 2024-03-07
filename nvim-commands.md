# NVIM

See
- [lazyvim-default-keympas](https://www.lazyvim.org/keymaps)
- [unicode](https://www.utf8-chartable.de/unicode-utf8-table.pl?utf8=dec)
- [more unicode](https://www.w3schools.com/charsets/ref_utf_symbols.asp)


## Useful commands


#### LSP Context search - [lazy-default-lsp](https://www.lazyvim.org/keymaps#lsp)

| &#9977; &#128269; | Naviagtions                       |
|-------------------|-----------------------------------|
| `g d`             | Goto definition                   |
| `g D`             | Goto declaration                  |
| `g I`             | Goto Impl                         |
| `g y`             | Goto T**y**pe Def                 |

##### editing
| &#9997;           | Edit                              |
|-------------------|-----------------------------------|
| `leader c r`      | Rename                            |






#### Text movement ++

|  &#128692;        |  Std. movements                |           |
|-------------------|--------------------------------|-----------|
| `_` / `$`         | line (1./last) pos             |           |
| `z b`             | &#8657; cursor to bot          |           |
| `zz`              |   cursor center vert           |           |
| `z t`             | &#8659; cursor to top          |           |
| `<C-u>` aka. `^u` |  &#189; page &#8657;           |  up       |
| `^d`              |  &#189; page &#8659;           |  down     |


- [Search](https://github.com/folke/flash.nvim)

| &#128269;         | searching                                  |
|-------------------|--------------------------------------------|
| `s` , `/`         | Flash Search forward                       |
| `S`               | Flash with Treesitter                      |
| `n`               | repeat search                              |
| `N`               | reverse repeat search                      |
| `?`               | search backwards                           |
| ``                |                                            |


|  &#128235;             |  Remember places / files        |                          |
|------------------------|---------------------------------|--------------------------|
| `m <CHAR>` e.g. `m a`  | bookMark in `a`                 |                          |
| `' <CHAR>` e.g. `' a`  | goto bookmark in `a`            |                          |
|                        |                                 |                          |
|                        | TODO harpoon                    |                          |
|                        |                                 |                          |



#### Text edit ++

| &#9997;                | Edit                            |                          |
|------------------------|---------------------------------|--------------------------|
| `leader s r`           | search & replace                | Gobal replace [plugin](https://github.com/nvim-pack/nvim-spectre) |
| `g s a`                | add surrounding                 |  [mini.surround](https://www.lazyvim.org/keymaps#minisurround) |
| `g s d`                | delete sur.                     |                          |
| `g s r`                | replace sur.                    |                          |




#### Navigating files [telescope](https://www.lazyvim.org/keymaps#telescopenvim)
|   &#128194;  &#128195;   | Description  | long                                               |
|--------------------------|--------------|----------------------------------------------------|
| `leader s g`             | grep root    | Find file with text inside                         |
| `leader f f`             | find root    | Find File names in root dir (telescope)            |
| `leader f F`             | find workdir |  Find Files in current working directory           |




#### Tabs, Buffers, Windows

[Jump in between open tabs/buffer](https://github.com/akinsho/bufferline.nvim#faq)

| &#127980;          | Buffers                               |                                  |
|--------------------|---------------------------------------|----------------------------------|
|`leader f b`        | find buffer                           |                                  |
|`leader b e`        | open buffer explorer :)               |                                  |
|`leader b b`        | switch to other buffer                |                                  |

| &#127980;&#127980; | Window Splits                         |                                  |
|--------------------|---------------------------------------|----------------------------------|
| `:sp`              | create below                          |                                  |
| `:vsp`             | create right                          |                                  |
| `<C-j>` aka. `^j`  | go to split below                     | + other movement characters      |



#### Open utilities

| Commnands            |                                                            |
|----------------------|------------------------------------------------------------|
| `leader f t`         | &#128223; open terminal                                    |
| `exit`               | to close terminal again                                    |
|                      |                                                            |
| `:!<CMD>` eg `:!ls`  | execute command in line                                    |
|                      |                                                            |
| `leader e`           | open nvim-neo-tree project side view                       |
| in `a`               | add file                                                   |
| in `A`               | add dir                                                    |
| in `r`               | rename                                                     |
| in `d`               | delete                                                     |
|                      |                                                            |
| `leader g g`         | lazy git                                                   |
|                      |                                                            |
|                      |                                                            |
|                      |                                                            |
|                      |                                                            |






#### Record Execute Macro (for repeating commands) [tip](https://vim.fandom.com/wiki/Macros#Recording_a_macro)

| Commands                  |                                                            |
|---------------------------|------------------------------------------------------------|
| `q <CHAR> <cmds...> q`    | records macro into character and stops it                  |
| `<NUMBER> @ <CHAR>`       | executes the macro in <CHAR>, how often: <NUMBER> times    |                           |                                                            |
|                           |                                                            |






#### Indent whole file
`gg=G`
// gg : move to top file
// =  : indent until
// G  : End of file





## FAQ and common challenges

#### Windows and visual block mode

`<C-q>` is an alternative to enter visual block mode usually done by `<C-v>` but this is mapped to 
copy in windows.










## Blueprint new tables

|                    |                                                            |
|--------------------|------------------------------------------------------------|
|                    |                                                            |


|                    |                                       |                                  |
|--------------------|---------------------------------------|----------------------------------|
| `:`                |                                       |                                  |
| `:`                |                                       |                                  |



