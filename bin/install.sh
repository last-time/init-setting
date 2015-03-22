#!/bin/bash

CUR_PATH=$(cd $(dirname "${0}"); pwd) 
BASE_PATH=$(dirname "${CUR_PATH}")
HOME_PATH=~

CP="cp -fvr"

# 1 backup
DONE_FILE=backup_done
BACKUP_PATH="${BASE_PATH}"/backup
function do_backup ()
{
    cd "${HOME_PATH}"
    "${CP}" .bachrc .bash_logout .bash_profile "${BACKUP_PATH}"/
    "${CP}" .inputrc /etc/inputrc "${BACKUP_PATH}"/
    "${CP}" .vimrc .vim "${BACKUP_PATH}"/
    if [ -d bash.d ] ; then
        "${CP}" bash.d "${BACKUP_PATH}"/
    fi
}

if [ -e "${BACKUP_PATH}/${DONE_FILE}" ] ; then
    do_backup
    touch "${BACKUP_PATH}/${DONE_FILE}"
fi

# 2 install
SRC_PATH="${BASE_PATH}"/src
function do_install ()
{
    cd "${SRC_PATH}"
    "${CP}" bashrc_ "${HOME_PATH}/.bashrc"
    "${CP}" bash_logout_ "${HOME_PATH}/.bash_logout"
    "${CP}" bash_profile_ "${HOME_PATH}/.bash_profile"
    "${CP}" inputrc_ "${HOME_PATH}/.inputrc"
    "${CP}" inputrc /etc/inputrc
    "${CP}" bash.d "${HOME_PATH}/"
    "${CP}" vim_ "${HOME_PATH}/.vim"
    "${CP}" vimrc_ "${HOME_PATH}/.vimrc"
}
do_install

