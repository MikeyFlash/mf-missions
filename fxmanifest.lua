fx_version 'adamant'
game 'rdr3'
lua54 'yes'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'YourName'
description 'Mission Creator for RedM'
version '1.0.0'

shared_scripts {
    'config.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua', -- Ensure you have MySQL async or similar DB connector compatible with RedM
    'server/main.lua',
}

client_scripts {
    'client/main.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/index.js',
    'html/index.css',
    'html/assets/**/*.*', -- Include all assets like images, fonts, etc.
}

dependencies {
    '/onesync',
}
