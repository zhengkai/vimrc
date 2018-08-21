let s:base03 = [ '#FF0000', 235 ]
let s:base04 = [ '#303030', 236 ]
let s:base02 = [ '#005f87', 24 ]
let s:base01 = [ '#0093d6', 240 ]
let s:base00 = [ '#00afff', 39 ]

let s:normal  = [ '#8ac6f2', 117 ]
let s:insert  = [ '#95e454', 119 ]
let s:replace = [ '#e5786d', 203 ]
let s:visual  = [ '#f2c68a', 216 ]

let s:base0 = [ '#808080', 246 ]
let s:base1 = [ '#969696', 247 ]
let s:base2 = [ '#a8a8a8', 248 ]
let s:base3 = [ '#000000', 0 ]

let s:black = [ '#000000', 0 ]
let s:white = [ '#ffffff', 15 ]
let s:red = [ '#FF0000', 235 ]

let s:tab     = [ '#00afff', 39 ]
let s:tabFont = [ '#000000', 0 ]

let s:d1 = [ '#00afff', 39 ]
let s:d2 = [ '#0097db', 24 ]
let s:d3 = [ '#007eb8', 24 ]
let s:d4 = [ '#006694', 24 ]
let s:d5 = [ '#004d70', 24 ]
let s:d6 = [ '#00354d', 24 ]
let s:dark = [ '#005f87', 24 ]

" let s:w1 = [ '#a8a8a8', 248 ]
let s:w1 = [ '#996900', 248 ]
let s:w2 = [ '#949494', 246 ]
let s:w3 = [ '#808080', 244 ]

let s:warn = [ '#ffaf00', 214 ]

let s:yellow = [ '#cae682', 180 ]
let s:orange = [ '#e5786d', 173 ]
" let s:red = [ '#e5786d', 203 ]
let s:magenta = [ '#f2c68a', 216 ]
let s:blue = [ '#8ac6f2', 117 ]
let s:cyan = s:blue
let s:green = [ '#95e454', 119 ]
let s:ro = [ '#eeeeee', 255 ]
let s:red = [ '#af1111', 124 ]
let s:redDark = [ '#5f1111', 88 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.right = [ [ s:black, s:d1 ], [ s:black, s:d2 ], [ s:black, s:d3 ], ]

" let s:p.inactive.right = [ [ s:base04, s:base01 ], [ s:base00, s:base02 ] ]
let s:p.inactive.left =  [ [ s:w2, s:redDark ], [ s:warn, s:w1 ], [ s:black, s:w2 ], [ s:black, s:w3 ]  ]

let s:p.normal.left  = [ [ s:base02, s:normal],   [ s:ro, s:red ], [ s:black, s:warn ], [ s:black, s:d1 ], [ s:black, s:d2 ], [ s:black, s:d3 ] ]
let s:p.insert.left  = [ [ s:base02, s:insert ],  [ s:ro, s:red ], [ s:black, s:warn ], [ s:black, s:d1 ], [ s:black, s:d2 ], [ s:black, s:d3 ] ]
let s:p.replace.left = [ [ s:base04, s:replace ], [ s:ro, s:red ], [ s:black, s:warn ], [ s:black, s:d1 ], [ s:black, s:d2 ], [ s:black, s:d3 ] ]
let s:p.visual.left  = [ [ s:base02, s:visual ],  [ s:ro, s:red ], [ s:black, s:warn ], [ s:black, s:d1 ], [ s:black, s:d2 ], [ s:black, s:d3 ] ]
let s:p.normal.middle = [ [ s:base3, s:dark ] ]
let s:p.inactive.middle = [ [ s:base1, s:base04 ] ]

let s:p.tabline.left = [ [ s:tabFont, s:tab ] ]
let s:p.tabline.middle = [ [ s:tabFont, s:dark ] ]
" let s:p.tabline.tabsel = [ [ s:base3, s:base03 ] ]
" let s:p.tabline.right = [ [ s:tabFont, s:tab] ]
"
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base04, s:yellow ] ]

let g:lightline#colorscheme#zhengkai#palette = lightline#colorscheme#flatten(s:p)
