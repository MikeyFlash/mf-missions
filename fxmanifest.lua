fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a pre-release build of rdr3 which may not be fully supported. I also acknowledge that content created using this version may not be compatible with the final release.'

author 'Mikey Flash'  -- Replace 'Your Name' with your actual name or GitHub username.
description 'Mission Creator Tool for RedM'
version '1.0'

-- Define the resource's client scripts
client_scripts {
    'client/*.lua'
}

-- Define the resource's server scripts
server_scripts {
    'server/*.lua',
    'config/missions.lua'  -- Include your missions config file here.
}

-- UI Files
ui_page 'html/index.html'

files {
    'html/index.html',
    'html/css/style.css',
    'html/js/script.js'
}
