Vim�UnDo� ���?=�s��&�=�T����gYH�͍\�   Z                                   `�z    _�                             ����                                                                                                                                                                                                                                                                                                                                                  V        `�
�    �                    vim.o.termguicolors = true5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��     �         [      g.nvim_tree_auto_open = 05��                          z                      �                        {                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��    �         [      g.nvim_tree_auto_close = 05��                          �                      5�_�                    8        ����                                                                                                                                                                                                                                                                                                                            8           9           v        `�p    �   7   9   [      =local tree_cb = require "nvim-tree.config".nvim_tree_callback5��    7                      <                     5�_�      
              8        ����                                                                                                                                                                                                                                                                                                                            8           8          v       `�{    �   7   9   [      @-- local tree_cb = require "nvim-tree.config".nvim_tree_callback5��    7                      <                     5�_�         	       
   [        ����                                                                                                                                                                                                                                                                                                                            .           [                   `�%     �   \               �   ]            �   Z              }    �   [               �   [            5��    [                      	                     �    Z                      	                     �    Z                      	                     �    [                      	                     �    \                      	              3	      5�_�   
                 \        ����                                                                                                                                                                                                                                                                                                                            }          \           V        `�-     �   [           "            vim.g.nvim_tree_bindings = {   E      { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },   C      { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },   G      { key = "<C-v>",                        cb = tree_cb("vsplit") },   F      { key = "<C-x>",                        cb = tree_cb("split") },   G      { key = "<C-t>",                        cb = tree_cb("tabnew") },   M      { key = "<",                            cb = tree_cb("prev_sibling") },   M      { key = ">",                            cb = tree_cb("next_sibling") },   L      { key = "P",                            cb = tree_cb("parent_node") },   K      { key = "<BS>",                         cb = tree_cb("close_node") },   K      { key = "<S-CR>",                       cb = tree_cb("close_node") },   H      { key = "<Tab>",                        cb = tree_cb("preview") },   N      { key = "K",                            cb = tree_cb("first_sibling") },   M      { key = "J",                            cb = tree_cb("last_sibling") },   O      { key = "I",                            cb = tree_cb("toggle_ignored") },   P      { key = "H",                            cb = tree_cb("toggle_dotfiles") },   H      { key = "R",                            cb = tree_cb("refresh") },   G      { key = "a",                            cb = tree_cb("create") },   G      { key = "d",                            cb = tree_cb("remove") },   G      { key = "r",                            cb = tree_cb("rename") },   L      { key = "<C-r>",                        cb = tree_cb("full_rename") },   D      { key = "x",                            cb = tree_cb("cut") },   E      { key = "c",                            cb = tree_cb("copy") },   F      { key = "p",                            cb = tree_cb("paste") },   J      { key = "y",                            cb = tree_cb("copy_name") },   J      { key = "Y",                            cb = tree_cb("copy_path") },   S      { key = "gy",                           cb = tree_cb("copy_absolute_path") },   N      { key = "[c",                           cb = tree_cb("prev_git_item") },   N      { key = "]c",                           cb = tree_cb("next_git_item") },   G      { key = "-",                            cb = tree_cb("dir_up") },   F      { key = "q",                            cb = tree_cb("close") },   L      { key = "g?",                           cb = tree_cb("toggle_help") },       }5��    \                      	                     �    ]                     	                    �    ^                     a	                    �    _                     �	                    �    `                     �	                    �    a                     (
                    �    b                     l
                    �    c                     �
                    �    d                                          �    e                     I                    �    f                     �                    �    g                     �                    �    h                                         �    i                     i                    �    j                     �                    �    k                     �                    �    l                     L                    �    m                     �                    �    n                     �                    �    o                                         �    p                     ]                    �    q                     �                    �    r                     �                    �    s                     )                    �    t                     l                    �    u                     �                    �    v                     �                    �    w                     J                    �    x                     �                    �    y                     �                    �    z                     $                    �    {                     g                    �    |                      �                     5�_�                    :        ����                                                                                                                                                                                                                                                                                                                            [           :                   `�5    �   :   \   }   !   <    ["u"] = ":lua require'some_module'.some_function()<cr>",       -- default mappings       ["<CR>"] = tree_cb("edit"),       ["o"] = tree_cb("edit"),   (    ["<2-LeftMouse>"] = tree_cb("edit"),   '    ["<2-RightMouse>"] = tree_cb("cd"),       ["<C-]>"] = tree_cb("cd"),   "    ["<C-v>"] = tree_cb("vsplit"),   !    ["<C-x>"] = tree_cb("split"),   "    ["<C-t>"] = tree_cb("tabnew"),   $    ["<"] = tree_cb("prev_sibling"),   $    [">"] = tree_cb("next_sibling"),   %    ["<BS>"] = tree_cb("close_node"),   '    ["<S-CR>"] = tree_cb("close_node"),   #    ["<Tab>"] = tree_cb("preview"),   &    ["I"] = tree_cb("toggle_ignored"),   '    ["H"] = tree_cb("toggle_dotfiles"),       ["R"] = tree_cb("refresh"),       ["a"] = tree_cb("create"),       ["d"] = tree_cb("remove"),       ["r"] = tree_cb("rename"),   '    ["<C-r>"] = tree_cb("full_rename"),       ["x"] = tree_cb("cut"),       ["c"] = tree_cb("copy"),       ["p"] = tree_cb("paste"),   !    ["y"] = tree_cb("copy_name"),   !    ["Y"] = tree_cb("copy_path"),   +    ["gy"] = tree_cb("copy_absolute_path"),   &    ["[c"] = tree_cb("prev_git_item"),   &    ["]c"] = tree_cb("next_git_item"),       ["-"] = tree_cb("dir_up"),       ["q"] = tree_cb("close")   }�   9   ;   }      g.nvim_tree_bindings = {5��    9                      {                     �    :                      �                     �    ;                      �                     �    <                      �                     �    =                                           �    >                      5                     �    ?                      a                     �    @                      �                     �    A                      �                     �    B                      �                     �    C                      �                     �    D                                           �    E                      G                     �    F                      o                     �    G                      �                     �    H                      �                     �    I                      �                     �    J                                           �    K                      ?                     �    L                      b                     �    M                      �                     �    N                      �                     �    O                      �                     �    P                      �                     �    Q                                           �    R                      2                     �    S                      S                     �    T                      x                     �    U                      �                     �    V                      �                     �    W                      �                     �    X                       	                     �    Y                      B	                     �    Z                      b	                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `��   	 �         }      g.nvim_tree_width = 255��                        ?                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       `��   
 �         }      -- g.nvim_tree_auto_close = 05��                          �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `��    �         }      g.nvim_tree_auto_close = 05��                        �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       `�     �         }      -- g.nvim_tree_auto_open = 05��                          z                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v       `�    �         }      g.nvim_tree_auto_open = 05��                        �                     5�_�                     9        ����                                                                                                                                                                                                                                                                                                                            [          9           V        `�y    �   8   9       #       -- g.nvim_tree_bindings = {   ?--     ["u"] = ":lua require'some_module'.some_function()<cr>",   --     -- default mappings   "--     ["<CR>"] = tree_cb("edit"),   --     ["o"] = tree_cb("edit"),   +--     ["<2-LeftMouse>"] = tree_cb("edit"),   *--     ["<2-RightMouse>"] = tree_cb("cd"),   !--     ["<C-]>"] = tree_cb("cd"),   %--     ["<C-v>"] = tree_cb("vsplit"),   $--     ["<C-x>"] = tree_cb("split"),   %--     ["<C-t>"] = tree_cb("tabnew"),   '--     ["<"] = tree_cb("prev_sibling"),   '--     [">"] = tree_cb("next_sibling"),   (--     ["<BS>"] = tree_cb("close_node"),   *--     ["<S-CR>"] = tree_cb("close_node"),   &--     ["<Tab>"] = tree_cb("preview"),   )--     ["I"] = tree_cb("toggle_ignored"),   *--     ["H"] = tree_cb("toggle_dotfiles"),   "--     ["R"] = tree_cb("refresh"),   !--     ["a"] = tree_cb("create"),   !--     ["d"] = tree_cb("remove"),   !--     ["r"] = tree_cb("rename"),   *--     ["<C-r>"] = tree_cb("full_rename"),   --     ["x"] = tree_cb("cut"),   --     ["c"] = tree_cb("copy"),    --     ["p"] = tree_cb("paste"),   $--     ["y"] = tree_cb("copy_name"),   $--     ["Y"] = tree_cb("copy_path"),   .--     ["gy"] = tree_cb("copy_absolute_path"),   )--     ["[c"] = tree_cb("prev_git_item"),   )--     ["]c"] = tree_cb("next_git_item"),   !--     ["-"] = tree_cb("dir_up"),   --     ["q"] = tree_cb("close")   -- }5��    8       #               t      �              5�_�             
   	   [        ����                                                                                                                                                                                                                                                                                                                            .           [                   `�     �   [   \           �   [   ]               �   ]   ^        �   \   ^       !        vim.g.nvim_tree_bindings = {   E      { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },   C      { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },   G      { key = "<C-v>",                        cb = tree_cb("vsplit") },   F      { key = "<C-x>",                        cb = tree_cb("split") },   G      { key = "<C-t>",                        cb = tree_cb("tabnew") },   M      { key = "<",                            cb = tree_cb("prev_sibling") },   M      { key = ">",                            cb = tree_cb("next_sibling") },   L      { key = "P",                            cb = tree_cb("parent_node") },   K      { key = "<BS>",                         cb = tree_cb("close_node") },   K      { key = "<S-CR>",                       cb = tree_cb("close_node") },   H      { key = "<Tab>",                        cb = tree_cb("preview") },   N      { key = "K",                            cb = tree_cb("first_sibling") },   M      { key = "J",                            cb = tree_cb("last_sibling") },   O      { key = "I",                            cb = tree_cb("toggle_ignored") },   P      { key = "H",                            cb = tree_cb("toggle_dotfiles") },   H      { key = "R",                            cb = tree_cb("refresh") },   G      { key = "a",                            cb = tree_cb("create") },   G      { key = "d",                            cb = tree_cb("remove") },   G      { key = "r",                            cb = tree_cb("rename") },   L      { key = "<C-r>",                        cb = tree_cb("full_rename") },   D      { key = "x",                            cb = tree_cb("cut") },   E      { key = "c",                            cb = tree_cb("copy") },   F      { key = "p",                            cb = tree_cb("paste") },   J      { key = "y",                            cb = tree_cb("copy_name") },   J      { key = "Y",                            cb = tree_cb("copy_path") },   S      { key = "gy",                           cb = tree_cb("copy_absolute_path") },   N      { key = "[c",                           cb = tree_cb("prev_git_item") },   N      { key = "]c",                           cb = tree_cb("next_git_item") },   G      { key = "-",                            cb = tree_cb("dir_up") },   F      { key = "q",                            cb = tree_cb("close") },   L      { key = "g?",                           cb = tree_cb("toggle_help") },       }5��    [                      	                     �    [                      	                     �    \                      	              3	      5�_�             	      .        ����                                                                                                                                                                                                                                                                                                                                                             `��    �   -   /   [      -- vim.api.nvim_set_keymap(�   .   \       -   --     "n",   --     "<C-n>",   --     ":NvimTreeToggle<CR>",   --     {   --         noremap = true,   --         silent = true   --     }   -- )   --    @-- local tree_cb = require "nvim-tree.config".nvim_tree_callback   --    -- g.nvim_tree_bindings = {   ?--     ["u"] = ":lua require'some_module'.some_function()<cr>",   --     -- default mappings   "--     ["<CR>"] = tree_cb("edit"),   --     ["o"] = tree_cb("edit"),   +--     ["<2-LeftMouse>"] = tree_cb("edit"),   *--     ["<2-RightMouse>"] = tree_cb("cd"),   !--     ["<C-]>"] = tree_cb("cd"),   %--     ["<C-v>"] = tree_cb("vsplit"),   $--     ["<C-x>"] = tree_cb("split"),   %--     ["<C-t>"] = tree_cb("tabnew"),   '--     ["<"] = tree_cb("prev_sibling"),   '--     [">"] = tree_cb("next_sibling"),   (--     ["<BS>"] = tree_cb("close_node"),   *--     ["<S-CR>"] = tree_cb("close_node"),   &--     ["<Tab>"] = tree_cb("preview"),   )--     ["I"] = tree_cb("toggle_ignored"),   *--     ["H"] = tree_cb("toggle_dotfiles"),   "--     ["R"] = tree_cb("refresh"),   !--     ["a"] = tree_cb("create"),   !--     ["d"] = tree_cb("remove"),   !--     ["r"] = tree_cb("rename"),   *--     ["<C-r>"] = tree_cb("full_rename"),   --     ["x"] = tree_cb("cut"),   --     ["c"] = tree_cb("copy"),    --     ["p"] = tree_cb("paste"),   $--     ["y"] = tree_cb("copy_name"),   $--     ["Y"] = tree_cb("copy_path"),   .--     ["gy"] = tree_cb("copy_absolute_path"),   )--     ["[c"] = tree_cb("prev_git_item"),   )--     ["]c"] = tree_cb("next_git_item"),   !--     ["-"] = tree_cb("dir_up"),   --     ["q"] = tree_cb("close")   -- }5��    -                      �                     �    .                      �                     �    /                      �                     �    0                      �                     �    1                                           �    2                                           �    3                      /                     �    4                      H                     �    5                      Q                     �    6                      V                     �    7                      Z                     �    8                      �                     �    9                      �                     �    :                      �                     �    ;                      �                     �    <                                           �    =                      9                     �    >                      Y                     �    ?                      �                     �    @                      �                     �    A                      �                     �    B                      �                     �    C                                           �    D                      C                     �    E                      k                     �    F                      �                     �    G                      �                     �    H                      �                     �    I                                           �    J                      8                     �    K                      c                     �    L                      �                     �    M                      �                     �    N                      �                     �    O                      �                     �    P                                           �    Q                      6                     �    R                      V                     �    S                      w                     �    T                      �                     �    U                      �                     �    V                      �                     �    W                      	                     �    X                      D	                     �    Y                      f	                     �    Z                      �	                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `��    �         [      -- �      ,   [      -- g.nvim_tree_show_icons = {   --     git = 1,   --     folders = 1,   --     files = 1   -- }   --    -- g.nvim_tree_icons = {   --     default = " ",   --     symlink = " ",   --     git = {   --         unstaged = "✗",   --         staged = "✓",   --         unmerged = "",   --         renamed = "➜",   --         untracked = "★",   --         deleted = "",   --         ignored = "◌"   	--     },   --     folder = {   --         default = "",   --         open = "",   --         symlink = "",   --         empty = "",   --         empty_open = "",   --         symlink_open = ""   --     }   -- }5��                          �                     �                          �                     �                          �                     �                          �                     �                          �                     �                          �                     �                          �                     �                          �                     �                                               �                          -                     �                          F                     �                          U                     �                          r                     �                          �                     �                          �                     �                          �                     �                          �                     �                                                 �    !                                           �    "                      %                     �    #                      7                     �    $                      S                     �    %                      l                     �    &                      �                     �    '                      �                     �    (                      �                     �    )                      �                     �    *                      �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `��    �         [      -- g.nvim_tree_side = "left"�         [      -- g.nvim_tree_width = 25   :-- g.nvim_tree_ignore = {".git", "node_modules", ".cache"}   -- -- g.nvim_tree_auto_open = 0    -- -- g.nvim_tree_auto_close = 0   -- g.nvim_tree_quit_on_open = 0   -- g.nvim_tree_follow = 1   !-- g.nvim_tree_indent_markers = 1    -- g.nvim_tree_hide_dotfiles = 1   -- g.nvim_tree_git_hl = 1   *-- g.nvim_tree_root_folder_modifier = ":t"   -- g.nvim_tree_tab_open = 0   -- g.nvim_tree_allow_resize = 15��                                                �                          .                      �                          H                      �                          �                      �                          �                      �                          �                      �                          �                      �    	                      �                      �    
                                            �                          A                     �                          [                     �                          �                     �                          �                     5��