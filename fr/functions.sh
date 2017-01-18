#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file

ap_ilyanom() {
if [[ $NOM1 != "" ]] ; then
local noma="$NOM1"
fi
if [[ $NOM2 != "" ]] ; then
local noma="$noma, $NOM2"
fi
if [[ $NOM3 != "" ]] ; then
local noma="$noma, $NOM3"
fi
if [[ $NOM4 != "" ]] ; then
local noma="$noma, $NOM4"
fi
if [[ $NOM5 != "" ]] ; then
local noma="$noma, $NOM5"
fi
say "Ouvrir une vidéoconférence avec $noma"
}

ap_verinoms () {
[[ -z $(which curl) ]] && sudo apt-get install curl
USER=" "
local NOMOKA=`echo $(jv_sanitize "$order")`
local NOM11=`echo $(jv_sanitize "$NOM1")`
local NOM22=`echo $(jv_sanitize "$NOM2")`
local NOM33=`echo $(jv_sanitize "$NOM3")`
local NOM44=`echo $(jv_sanitize "$NOM4")`
local NOM55=`echo $(jv_sanitize "$NOM5")`

if [[ $NOMOKA == "$NOM11" ]] ; then
USER=$USER1
PASS=$PASS1
PNOM="$order"
return
fi

if [[ $NOMOKA == "$NOM22" ]] ; then
USER=$USER2
PASS=$PASS2
PNOM="$order"
return
fi

if [[ $NOMOKA == "$NOM33" ]] ; then
USER=$USER3
PASS=$PASS3
PNOM="$order"
return
fi

if [[ $NOMOKA == "$NOM44" ]] ; then
USER=$USER4
PASS=$PASS4
PNOM="$order"
return
fi

if [[ $NOMOKA == "$NOM55" ]] ; then
USER=$USER5
PASS=$PASS5
PNOM="$order"
return
fi

return
}

ap_envoimess () {
echo "$(curl -s "https://smsapi.free-mobile.fr/sendmsg?user=$USER&pass=$PASS&msg=Mess%20envoyé%20avec%20$trigger:%20https://appear.in/jarvis_$USER")"
}

ap_openconf () {
#open defaut web browser with the appear.in room
jv_browse_url "https://appear.in/jarvis_$USER"
}
