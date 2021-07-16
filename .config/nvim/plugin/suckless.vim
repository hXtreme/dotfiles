" Configurations for editing suckless software on vim

autocmd BufWritePost config.def.h !pass show ssh/tsukihi/hpar | sudo -S make clean install && make clean && rm config.h
