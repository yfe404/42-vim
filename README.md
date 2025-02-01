# 42 vim Configuration

A simple vim configuration aiming at improving productivity while coding at the piscine and beyond.

## Features
- **Customizable login:** Set your login globally, and it will be automatically used in the header.
- **Insert 42-style header:** A function to easily insert a complete 42-style header into a new file or at the top of an existing file.
- **Automatic `Updated:` line update:** Updates the `Updated:` line with the current date, time, and your login every time you save a file with the 42-style header.

## Installation

1. **Save the script** to your Vim configuration directory as `42.vim`:
   - Linux/macOS: `~/.vim/42.vim`

2. **Source the script** in your `~/.vimrc`:
   ```vim
   source ~/.vim/42.vim
   ```

3. **Set your login** globally in the script (replace `"YOUR_LOGIN"` with your actual login):
   ```vim
   let g:my_login = "YOUR_LOGIN"
   ```

4. **Done!** The script is now ready to use. 

## Usage

### Insert the 42 Header
To insert the 42-style header at the top of a file, run the following command:

```vim
:call InsertHeader()
```
This will insert the header at the top of the file, including placeholders for the filename, your login, and the current date.

### Automatically Update `Updated:` Line
Every time you save a file, the `Updated:` line in the 42-style header will automatically be updated with the current timestamp and your login.


## Example Header
```c
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   myfile.c                                           :+:      :+:    :+:   */  
/*                                                    +:+ +:+         +:+     */
/*   By: johndoe <johndoe@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/01 12:34:56 by johndoe           #+#    #+#             */
/*   Updated: 2025/02/01 11:55:06 by YOUR_LOGIN       ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
```

## License

This script is open-source and available for personal or educational use.

