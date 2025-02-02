let g:your_login = "YOUR_LOGIN"

" Add line numbers on the left side
set number
" Highlight the current line underneath the cursor
set cursorline
" Set tab width to 4 columns.
set tabstop=4
" Set shift width to 4 spaces. This is the indent when using << or >>
set shiftwidth=4

function! Update42Header()
	execute "normal! ma" 
	" If the header exists, get the current time
	if search('Updated: \d.*###   ########.fr' , 'e')
		let current_time = strftime("%Y/%m/%d %H:%M:%S")
		
		" Perform the substitution to replace the 'Updated' line with the new timestamp
		execute "normal! 0"  
		execute "normal! d$"
		execute "normal! i" . printf("/*   Updated: %s by %s%s###   ########.fr       */", current_time, g:your_login, repeat(' ', 17 - len(g:your_login)))
		execute "normal! `a"
	endif
endfunction

" Automatically call Update42Header whenever the file is saved, but only if the header is present
autocmd BufWritePost * call Update42Header()


function! Insert42Header()
	execute "normal! ggO/* ************************************************************************** */"
	execute "normal! o/*                                                                            */"
	execute "normal! o/*                                                        :::      ::::::::   */"
	let filename = expand('%:t')
	let header = printf("/*   %s%s:+:      :+:    :+:   */", filename, repeat(' ', 51 - len(filename)))
	execute "normal! o" . header
	execute "normal! o/*                                                    +:+ +:+         +:+     */"
	execute "normal! o" . printf("/*   By: %s <%s@student.42.fr>%s+#+  +:+       +#+        */", g:your_login, g:your_login, repeat(' ', 26 - 2*len(g:your_login)))
	execute "normal! o/*                                                +#+#+#+#+#+   +#+           */"
	let current_time = strftime("%Y/%m/%d %H:%M:%S")
	execute "normal! o" . printf("/*   Created: %s by %s%s#+#    #+#             */", current_time, g:your_login, repeat(' ', 18 - len(g:your_login)))
	execute "normal! o" . printf("/*   Updated: %s by %s%s###   ########.fr       */", current_time, g:your_login, repeat(' ', 17 - len(g:your_login)))
	execute "normal! o/*                                                                            */"
	execute "normal! o/* ************************************************************************** */"
	execute "normal! o"
endfunction


