let s:black = [ '#1b1d1e', 233 ]
let s:darkgray = [ '#313640', 238 ]
let s:gray = [ '#5d677a', 243 ]
let s:white = [ '#dcdfe4', 252 ]
let s:brwhite = [ '#f8f8f2', 255 ]
let s:green = [ '#98c379', 114 ]
let s:darkgreen = [ '#5b7548', 65 ]
let s:blue = [ '#61afef', 75 ]
let s:darkblue = [ '#3a698f', 60 ]
let s:orange = [ '#e5c07b', 180 ]
let s:darkorange = [ '#a08656', 137 ]
let s:red = [ '#e06c75', 168 ]
let s:darkred = [ '#9c4b51', 131 ]
let s:purple = [ '#bd93f9', 141 ]
let s:darkpurple = [ '#5f5faf', 61 ]
let s:cyan = [ '#8be9fd', 117 ]
let s:comment = [ '#b0b2b6', 249 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:black, s:green ], [ s:white, s:darkgray ] ]
let s:p.normal.middle = [ [ s:green, s:darkgray ] ]
let s:p.normal.right = [ [ s:brwhite, s:darkgreen ], [ s:brwhite, s:gray ] ]

let s:p.normal.error = [ [ s:red, s:darkgray ] ]
let s:p.normal.warning = [ [ s:orange, s:darkgray ] ]

let s:p.inactive.left =  [ [ s:purple, s:darkgray ], [ s:purple, s:darkgray ] ]
let s:p.inactive.middle = [ [ s:purple, s:darkgray ] ]
let s:p.inactive.right = [ [ s:purple, s:darkgray ], [ s:purple, s:darkgray ] ]

let s:p.insert.left = [ [ s:black, s:blue ], [ s:white, s:darkgray ] ]
let s:p.insert.middle = [ [ s:blue, s:darkgray ] ]
let s:p.insert.right = [ [ s:brwhite, s:darkblue ], [ s:brwhite, s:gray ] ]

let s:p.visual.left = [ [ s:black, s:orange ], [ s:white, s:darkgray ] ]
let s:p.visual.middle = [ [ s:orange, s:darkgray ] ]
let s:p.visual.right = [ [ s:brwhite, s:darkorange ], [ s:brwhite, s:gray ] ]

let s:p.replace.left = [ [ s:black, s:red ], [ s:white, s:darkgray ] ]
let s:p.replace.middle = [ [ s:red, s:darkgray ] ]
let s:p.replace.right = [ [ s:brwhite, s:darkred ], [ s:brwhite, s:gray ] ]

let s:p.tabline.left = [ [ s:comment, s:darkgray ] ]
let s:p.tabline.tabsel = [ [ s:cyan, s:black ] ]
let s:p.tabline.middle = [ [ s:comment, s:darkgray ] ]
let s:p.tabline.right = [ [ s:brwhite, s:darkpurple ] ]

let g:lightline#colorscheme#lightline_custom#palette = lightline#colorscheme#flatten(s:p)
