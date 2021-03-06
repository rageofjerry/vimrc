set number

"高亮当前行
set cursorline 
hi CursorLine   cterm=NONE ctermbg=lightblue ctermfg=white 
hi CursorColumn cterm=NONE ctermbg=lightblue ctermfg=white 

"格式化python代码
au FileType python set formatprg=~/pyformat.py 
noremap <F11> gggqG

"-- Taglist setting --
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
"是否一直处理tags.1:处理;0:不处理
let Tlist_Process_File_Always=1 "实时更新tags
let Tlist_Inc_Winwidth=0

"-- WinManager setting --
let g:winManagerWindowLayout='FileExplorer|TagList' " 设置我们要管理的插件
let g:persistentBehaviour=0 " 如果所有编辑文件都关闭了，退出vim
"let g:AutoOpenWinManager=1 " 自动打开WinManager
nmap wm :WMToggle<cr>

"-- YCM --
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

"-- easy motion --
