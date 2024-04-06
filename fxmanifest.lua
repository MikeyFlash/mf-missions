fx_version 'cerulean'
games { 'rdr3' }

author 'Your Name'
description 'Item Retrieval Mission System for RedM'
version '1.0.0'

-- Acknowledgment of RedM's pre-release state
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

client_scripts {
    'client/*.lua',
    'config/missions.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua', -- Ensure MySQL-Async is correctly installed and configured.
    'server/*.lua',
    'config/missions.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/css/*.css',
    'html/js/*.js',
}
