source ~/.vimrc.bundles
let g:evervim_username='vivichen0829@gmail.com'
let g:evervim_password='ZMX2948mx'

"编码
let g:fencview_autodetect=1

"查找
let g:ctrlp_map = '<c-p>'
let g:ctrlp_by_filename = 0
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }
"Fuzzyfinder 快捷键
nnoremap ff :FufFile<CR>
nnoremap fb :FufBuffer<CR>
nnoremap fd :FufDir<CR>"
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11,DejaVu\ Sans\ Mono:h12,Menlo\ Regular\ for\ Powerline:h12,Monaco:h13 "use DejaVu Sans Mono for english on win/liunux, Monaco for mac
set guifontwide=Yahei_Mono:h11,SimHei:h11,Monaco:h12 "use SimHei for Chinese, Monaco for mac
"快速输入-注释
"
" Powerline {
" {

 let Powerline_symbols = 'compatible'
 let g:Powerline_symbols = 'fancy'

" " "}}}
" }"
