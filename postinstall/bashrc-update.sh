echo "export KUBECONFIG=\${HOME}/.kube/config" >> ${HOME}/.bashrc
echo "export SCRIPTS=\${HOME}/scripts" >> ${HOME}/.bashrc

echo "alias em='emacs'" >> ${HOME}/.bashrc

echo "alias ..='cd ..'" >> ${HOME}/.bashrc
echo "alias ...='cd ...'" >> ${HOME}/.bashrc
echo "alias ....='cd ....'" >> ${HOME}/.bashrc
echo "alias .....='cd .....'" >> ${HOME}/.bashrc

source ${HOME}/.bashrc
