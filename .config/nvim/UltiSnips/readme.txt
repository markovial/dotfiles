reading locations :

html   : .vim/UltiSnips
python : .config/nvim/UltiSnips

There are two UltiSnips folders :

.vim/UltiSnips
.config/nvim/UltiSnips

It loads both files , so you can add snippets to both locations to make them
available while editing your chosen filetype.

However distributing code over 2 files arbitraily is something only insane
people do. So in order to not be insance , by my own convention i will only be
editing files in the .config/nvim/UltiSnips folder , since that is the one that
shows up when using the :UltiSnipsEdit command.



