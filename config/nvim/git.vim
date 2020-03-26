"= GIT= ========================================================================

  " By default the sign column will appear when there are signs to show and
  " disappear when there aren't. Adding to always have the sign column.
  set signcolumn=yes

  " For faster updates to the git-gutter
  set updatetime=100

  " In Git commit messages, also colour the 51st column (for titles)
  autocmd Filetype gitcommit set colorcolumn=50,72
  " However, in Git commit messages, let’s make it 72 characters
  autocmd FileType gitcommit set textwidth=72

  " BufRead seems more appropriate here but for some reason the final `wincmd p` doesn't work if we do that.
  autocmd VimEnter COMMIT_EDITMSG call OpenCommitMessageDiff()
  function OpenCommitMessageDiff()
    " Save the contents of the z register
    let old_z = getreg("z")
    let old_z_type = getregtype("z")

    try
      call cursor(1, 0)
      let diff_start = search("^diff --git")
      if diff_start == 0
        " There's no diff in the commit message; generate our own.
        let @z = system("git diff --cached -M -C")
      else
        " Yank diff from the bottom of the commit message into the z register
        :.,$yank z
        call cursor(1, 0)
      endif

      " Paste into a new buffer
      vnew
      normal! V"zP
    finally
      " Restore the z register
      call setreg("z", old_z, old_z_type)
    endtry

    " Configure the buffer
    set filetype=diff noswapfile nomodified readonly
    silent file [Changes\ to\ be\ committed]

    " Get back to the commit message
    wincmd p
  endfunction
