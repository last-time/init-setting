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
    #${CP} /etc/inputrc "${BACKUP_PATH}/"
    #${CP} /etc/vimrc "${BACKUP_PATH}/"

    FILES_HOME=".bashrc .bash_logout .bash_profile .inputrc .vimrc .vim .bash.d .dir_colors"
    mkdir -p "${BACKUP_PATH}"
    for f in ${FILES_HOME}
    do
        if [ -e "${f}" ] ; then
            ${CP} "${f}" "${BACKUP_PATH}/"
        fi
    done
}

if [ ! -e "${BACKUP_PATH}/${DONE_FILE}" ] ; then
    do_backup
    touch "${BACKUP_PATH}/${DONE_FILE}"
fi

# 2 install
SRC_PATH="${BASE_PATH}"/src
function do_install ()
{
    cd "${SRC_PATH}"
    #${CP} inputrc /etc/inputrc
    #${CP} vimrc /etc/inputrc

    # $HOME 目录下的文件
    FILES_HOME=".bashrc .bash_logout .bash_profile .inputrc .vimrc .vim .bash.d .dir_colors"
    for f in ${FILES_HOME}
    do
        if [ -e "${f}" ] ; then
            ${CP} "${f}" "${HOME_PATH}/"
        fi
    done
}

do_install

