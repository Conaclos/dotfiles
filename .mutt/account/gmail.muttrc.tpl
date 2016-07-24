# -*- muttrc -*-
#
# The zlib license
#
# Copyright (c) 2016 Victorien Elvinger
#
# This software is provided 'as-is', without any express or implied
# warranty. In no event will the authors be held liable for any damages
# arising from the use of this software.
#
# Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it
# freely, subject to the following restrictions:
#
# 1. The origin of this software must not be misrepresented; you must not
#    claim that you wrote the original software. If you use this software
#    in a product, an acknowledgement in the product documentation would be
#    appreciated but is not required.
# 2. Altered source versions must be plainly marked as such, and must not be
#    misrepresented as being the original software.
# 3. This notice may not be removed or altered from any source distribution.
#


source 'pass mail/address@gmail.muttrc | tail -n +2 |'
    # Account security and privacy parameters
    # Skip the first line
    # Set $imap_pass, $imap_user, $smtp_pass, $smtp_url, $from, $realname on
    # next lines

set signature='~/.mutt/signature/personal_signature' # Mail footer


# Folders
# -------

unset move
    # Prevent mail move from spool to mbox
    # Gmail does that

set folder='imaps://imap.gmail.com:993'
    # Use TLS (port 993)
    # Use '+' or '=' in a path to refer to this folder

set mbox='+[Gmail]/All Mail'
set postponed='+[Gmail]/Drafts' # Server folder where are postponed messages
unset record # Get rid of sent mail duplicas
set spoolfile='+INBOX' # Server folder where e-mail arrive
set trash='+[Gmail]/Trash'


# Subscriptions
# -------------

#set imap_check_subscribed # Fetch the set of subscribed folders on connection

mailboxes '+INBOX'
mailboxes '+[Gmail]/All Mail'
mailboxes '+[Gmail]/Drafts'
mailboxes '+[Gmail]/Sent Mail'
mailboxes '+[Gmail]/Starred'
mailboxes '+[Gmail]/Spam'
mailboxes '+[Gmail]/Trash'

