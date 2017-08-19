# -*- muttrc -*-
#
# Copyright (c) 2017 Victorien Elvinger
# Licensed under the zlib license (https://opensource.org/licenses/zlib).
#


set certificate_file='~/.local/share/ca-certificates/gmail.pem'
source 'pass mail/address@gmail.muttrc | tail -n +2 |'
    # Account security and privacy parameters
    # Skip the first line
    # Set $imap_pass, $imap_user, $smtp_pass, $smtp_url, $from, $realname on
    # next lines

set signature='~/.mutt/signature/personal_signature' # Mail footer


# IMAP
# ----

set mail_check=120 # How often (in seconds) look for new mail in $spoolfile
set imap_idle
    # Aattempt to use the IMAP IDLE extension to  check  for  new mail  in  the
    # current  mailbox
set imap_keepalive=60
    # Maximum amount of time in seconds to wait before polling open IMAP
    # connections, to prevent the server from  closing them.


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

