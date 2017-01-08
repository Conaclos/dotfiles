# -*- muttrc -*-
#
# The zlib license
# Copyright (c) 2017 Victorien Elvinger
#


alternates ^main@domaincom$ ^alt@domaincom$
set from='main@domaincom'
set realname='Common name'
set signature='~/.config/neomutt/signature/personal_signature' # Mail footer


# Contacts
# --------

set alias_file='~/.local/share/mutt/personal.alias.muttrc' # Where write alias
source '~/.local/share/mutt/personal.alias.muttrc'


# Folders
# -------

unset move
    # Prevent mail move from spool to mbox

# Locations
set folder='~/mail/personal'
    # Use '+' or '=' in a path to refer to this folder

set mbox='+INBOX' # Where read mails go (archived)
set postponed='+INBOX.INBOX.Drafts' # Where are postponed messages
set record='+INBOX.INBOX.Sent' # Where sent mails are
set spoolfile='+INBOX' # Where mails arrive. Take precedence on env var $MAIL
set trash='+INBOX.INBOX.Trash' # WHere deleted mails go

# Subscriptions
mailboxes '+INBOX'
mailboxes '+INBOX.INBOX.Drafts'
mailboxes '+INBOX.INBOX.Junk'
mailboxes '+INBOX.INBOX.Sent'
mailboxes '+INBOX.INBOX.Trash'


# SMTP
# ----

set sendmail='/usr/bin/msmtp -a personal'
set sendmail_wait=0
    # 0: Wait sendmail
    # -1: Put sendmail in background
    # Note: run in background displays wrong sent status in mutt

