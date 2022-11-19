#
# ~/.bashrc
#
botsay -c --$(fortune)
echo -e "+-----------+-----------------+\n| Interface | IP Address      |\n+-----------+-----------------+"
for iface in $(ip -o -4 addr list | awk '{print $2}' | tr '\n' ' ')
do
    ipaddr=$(ip -o -4 addr list $iface | awk '{print $4}' | cut -d/ -f1)
    printf "|%10s | %-16s|\n" $iface $ipaddr
done
echo "+-----------+-----------------+"
echo ***=================================================***
echo '*** Usuario: '`whoami`''
echo '*** Pronto, ok, eis seu terminal, digite seu comando***'
echo ***=================================================***
export HISTCONTROL=ignoreboth:erasedups # no duplicate entries
export HISTSIZE=200                   # big big history
export HISTFILESIZE=300               # big big history
eval "$(oh-my-posh init bash --config /home/linux/.poshthemes/atomicBit.omp.json)"

