# The following is in my .bashrc file in my home directory, I commented it in this
# manner for my own reference

#########################################################################
# Edited the following on March 8, 2017 in order to truncate the prompt #
#########################################################################

##################
# original block #
##################

# if [ "$color_prompt" = yes ]; then
#     if [[ ${EUID} == 0 ]] ; then
#         PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
#     else
#         PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '
#     fi
# else
#     PS1='${debian_chroot:+($debian_chroot)}\u@\h \w \$ '
# fi
# unset color_prompt force_color_prompt

#########################
# end of original block #
#########################

#############
# new block #
#############

if [ "$color_prompt" = yes ]; then
    if [[ ${EUID} == 0 ]] ; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
    else
        # changed from \w to \W
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W \$\[\033[00m\] '
    fi
else
    # changed from \w to \W
    PS1='${debian_chroot:+($debian_chroot)}\u@\h \W \$ '
fi
unset color_prompt force_color_prompt

####################
# end of new block #
####################

############################################
# End of edited section from March 8, 2017 #
############################################