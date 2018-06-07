let s:base03 = [ '#FF0000', 235 ]
let s:base023 = [ '#303030', 236 ]
let s:base02 = [ '#005f87', 24 ]
let s:base01 = [ '#0093d6', 240 ]
let s:base00 = [ '#00afff', 39 ]

let s:base0 = [ '#808080', 246 ]
let s:base1 = [ '#969696', 247 ]
let s:base2 = [ '#a8a8a8', 248 ]
let s:base3 = [ '#000000', 0 ]

let s:black = [ '#000000', 0 ]
let s:white = [ '#ffffff', 15 ]
let s:red = [ '#FF0000', 235 ]

let s:tab     = [ '#00afff', 39 ]
let s:tabDark = [ '#005f87', 24 ]
let s:tabFont = [ '#000000', 0 ]

let s:d1 = [ '#00afff', 39]
let s:d2 = [ '#0093d6', 24]
let s:d3 = [ '#0077ad', 24]
let s:d4 = [ '#005b85', 24]
let s:d5 = [ '#003f5c', 24]
let s:d6 = [ '#002333', 24]

let s:yellow = [ '#cae682', 180 ]
let s:orange = [ '#e5786d', 173 ]
let s:red = [ '#e5786d', 203 ]
let s:magenta = [ '#f2c68a', 216 ]
let s:blue = [ '#8ac6f2', 117 ]
let s:cyan = s:blue
let s:green = [ '#95e454', 119 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.right = [ [ s:black, s:d1 ], [ s:black, s:d2 ], [ s:black, s:d3 ], [ s:black, s:black ], [ s:black, s:d3 ] ]

" let s:p.inactive.right = [ [ s:base023, s:base01 ], [ s:base00, s:base02 ] ]
let s:p.inactive.left =  [ [ s:black, s:d2 ], [ s:black, s:d3 ] ]

let s:p.normal.left  = [ [ s:base02, s:blue ], [ s:black, s:d2 ], [ s:black, s:d3 ], [ s:black, s:d4 ], [ s:white, s:d5 ] ]
let s:p.insert.left  = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base023, s:red ], [ s:base3, s:base01 ] ]
let s:p.visual.left  = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base3, s:d5 ] ]
let s:p.inactive.middle = [ [ s:base1, s:base023 ] ]

let s:p.tabline.left = [ [ s:tabFont, s:tab] ]
let s:p.tabline.middle = [ [ s:tabFont, s:tabDark] ]
" let s:p.tabline.tabsel = [ [ s:base3, s:base03 ] ]
" let s:p.tabline.right = [ [ s:tabFont, s:tab] ]
"
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base023, s:yellow ] ]

let g:lightline#colorscheme#zhengkai#palette = lightline#colorscheme#flatten(s:p)
