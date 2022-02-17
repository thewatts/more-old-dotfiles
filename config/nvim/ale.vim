"= Ale ==================================================================

  let g:ale_linters = {
    \ 'ruby': ['standardrb'],
    \ 'javascript': ['standard'],
    \ }

  let g:ale_fixers = {
    \ 'ruby': ['standardrb'],
    \ 'javascript': ['standard'],
    \ }
  let g:ale_lint_on_save = 1
  let g:ale_fix_on_save = 1
  let g:ruby_indent_assignment_style = 'variable'
  let g:ale_ruby_standardrb_executable = 'bundle'
