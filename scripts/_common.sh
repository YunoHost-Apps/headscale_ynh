#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

setup_dex() {
	ynh_app_setting_set_default --key=dex_install_dir --value="$(ynh_app_setting_get --app $dex --key install_dir)"
	ynh_app_setting_set_default --key=dex_domain      --value="$(ynh_app_setting_get --app $dex --key domain)"
	ynh_app_setting_set_default --key=dex_path        --value="$(ynh_app_setting_get --app $dex --key path)"
	ynh_app_setting_set_default --key=oidc_name       --value="$app"
	ynh_app_setting_set_default --key=oidc_callback   --value="$dex_domain${dex_path%/}/oidc/callback"
	ynh_app_setting_set_default --key=oidc_secret     --value="$(ynh_string_random --length=32 --filter='A-F0-9')"

	bash "$dex_install_dir/add_config.sh" $app $oidc_name $oidc_callback $oidc_secret
}