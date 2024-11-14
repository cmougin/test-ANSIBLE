## compare les deux dernieres sauvegardes
# le awk élimine les séquences escape et restitue les noms des deux dernières archives de la liste
borg diff /mnt/borg-repository::$(borgmatic list --format '{archive}{NL}'|awk '
{ gsub(/\x1B\[[0-9;]*[a-zA-Z]/, "") } /T/ {l1=l2; l2=$0} END {print l1 " " l2}
') >after_check.log
## constitution du message à envoyer via NTFY dans un fichier temporaire
wc -l after_check.log > message.tmp
head -1 after_check.log >> message.tmp
tail -1 after_check.log >> message.tmp
curl -d @message.tmp ntfy.sh/ui6now >/dev/null
# on ne nettoie par les fichiers after_check.log et message.tmp en cas de déboguage/etc/borgmatic.d #
/etc/borgmatic.d # cat after_check.sh
## compare les deux dernieres sauvegardes
# le awk élimine les séquences escape et restitue les noms des deux dernières archives de la liste
borg diff /mnt/borg-repository::$(borgmatic list --format '{archive}{NL}'|awk '
{ gsub(/\x1B\[[0-9;]*[a-zA-Z]/, "") } /T/ {l1=l2; l2=$0} END {print l1 " " l2}
') >after_check.log
## constitution du message à envoyer via NTFY dans un fichier temporaire
wc -l after_check.log > message.tmp
head -1 after_check.log >> message.tmp
tail -1 after_check.log >> message.tmp
curl -d @message.tmp ntfy.sh/ui6now >/dev/null
# on ne nettoie par les fichiers after_check.log et message.tmp en cas de déboguage