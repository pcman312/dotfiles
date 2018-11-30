# Placeholder for switching between symlinked godir. This function can almost definitely be improved.
#function godir() {
#    local rawLink='/path/to/link'
#    local rawGo='/path/to/actual/directory'
#
#    local link=${rawLink//\//\\\/}
#    local goFldr=${rawGo//\//\\\/}
#        
#    wd=`pwd`
#    echo $wd 
#
#    if [[ $wd = *"$rawLink"* ]]; then
#        cd `pwd | sed "s/$link/$goFldr/"`
#    else
#        cd `pwd | sed "s/$goFldr/$link/"`
#    fi  
#}
