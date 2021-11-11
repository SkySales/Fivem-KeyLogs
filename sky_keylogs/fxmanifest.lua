fx_version 'adamant'
game 'gta5'

Description 'SIMPLE LOGS FOR BLACKLISTED KEYS'
Author 'SKY X LOWKEY > SKY SALES'

version '1.1.0'

client_script {

    'logs/cl/cl_keylogs.lua',
    'logs/Sky.lua',

}
server_script {

    'logs/sv/sv_keylogs.lua',
    'logs/Sky.lua',

}

dependencies {
    'screenshot-basic',
}