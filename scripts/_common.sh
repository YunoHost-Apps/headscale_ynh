#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

setup_dex() {
	dex_apps="$(yunohost app list -f --output-as json | jq -r '[ .apps[] | select(.manifest.id == "dex") ]')"
	first_dex="$(jq -r 'sort_by(.id) | first.id' <<< $dex_apps)"

	if [ $(jq -r '[ .[] | select(.manifest.id == "dex").id ] | length' <<< $dex_apps) -eq 0 ]
	then
	    ynh_die "The apps needs at least one Dex instance to be installed. Install or restore one first."
	elif [ $first_dex != $dex ]
	then
	    ynh_print_warn "The $dex app initially set up for $app has not been found. Reconfiguring with $first_dex"
	    dex=$first_dex
	    ynh_app_setting_set --key=dex --value=$dex
	fi

	dex_version=$(yunohost app info dex --output-as json | jq -r '.version')
	if [ $(dpkg --compare-versions "${dex_version#v}" lt "2.42.1~ynh4") ]; then
		ynh_die "You need to upgrade Dex to v2.42.1~ynh4 and above first."
	fi

	dex_install_dir="$(ynh_app_setting_get --app $dex --key install_dir)"
	dex_domain="$(ynh_app_setting_get --app $dex --key domain)"
	dex_path="$(ynh_app_setting_get --app $dex --key path)"

	ynh_app_setting_set         --key=dex_install_dir --value="$dex_install_dir"
	ynh_app_setting_set         --key=dex_domain      --value="$dex_domain"
	ynh_app_setting_set         --key=dex_path        --value="$dex_path"
	ynh_app_setting_set_default --key=oidc_name       --value="$app"
	ynh_app_setting_set_default --key=oidc_callback   --value="$dex_domain${dex_path%/}/oidc/callback"
	ynh_app_setting_set_default --key=oidc_secret     --value="$(ynh_string_random --length=32 --filter='A-F0-9')"

	bash "$dex_install_dir/add_config.sh" $app $oidc_name $oidc_callback $oidc_secret
}