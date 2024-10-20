#!/bin/bash

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

nome_arquivo=""

pula_linha() {
    num=$1
    for ((i=1; i<=num; i++))
    do
        echo ""
    done
}

logo() {
    pula_linha 3
    echo -e "${YELLOW}                                   ?  Bem vindo !${NC}" 
    pula_linha 2
    echo -e "${YELLOW}                         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀${NC}"
    echo -e "${YELLOW}                         ⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀${NC}"
    echo -e "${YELLOW}                         ⠀⠀⠀⣠⣶⣿⣿⡿⣿⣿⣿⡿⠋⠉⠀⠀⠉⠙⢿⣿⣿⡿⣿⣿⣷⣦⡀⠀⠀⠀${NC}"
    echo -e "${YELLOW}                         ⠀⢀⣼⣿⣿⠟⠁⢠⣿⣿⠏⠀⠀⢠⣤⣤⡀⠀⠀⢻⣿⣿⡀⠙⢿⣿⣿⣦⠀⠀${NC}"
    echo -e "${YELLOW}                         ⣰⣿⣿⡟⠁⠀⠀⢸⣿⣿⠀⠀⠀⢿⣿⣿⡟⠀⠀⠈⣿⣿⡇⠀⠀⠙⣿⣿⣷        ~ v0.3.5 ~ Alpha    ${NC}"
    echo -e "${YELLOW}                         ⠈⠻⣿⣿⣦⣄⠀⠸⣿⣿⣆⠀⠀⠀⠉⠉⠀⠀⠀⣸⣿⣿⠃⢀⣤⣾⣿⣿⠟⠁${NC}"
    echo -e "${YELLOW}                         ⠀⠀⠈⠻⣿⣿⣿⣶⣿⣿⣿⣦⣄⠀⠀⠀⢀⣠⣾⣿⣿⣿⣾⣿⣿⡿⠋⠁⠀⠀${NC}"
    echo -e "${YELLOW}                         ⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⠀⠀⠀${NC}"
    echo -e "${YELLOW}                        ⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠿⠿⠿⠿⠿⠿⠿⠛⠋⠉⠀⠀⠀⠀⠀⠀${NC}"
    pula_linha 2
    echo -e "${YELLOW}                         - = - = - = visão Apache 2 - = - = - =${NC}"
    pula_linha 3
}

nome_app() {
    pula_linha 3
    echo -e "${RED}    ▄   ▄█    ▄▄▄▄▄   ██   ████▄     ██   █ ▄▄  ██   ▄█▄     ▄  █ ▄███▄   ${NC}"
    echo -e "${RED}     █  ██   █     ▀▄ █ █  █   █     █ █  █   █ █ █  █▀ ▀▄  █   █ █▀   ▀  ${NC}"
    echo -e "${RED}█     █ ██ ▄  ▀▀▀▀▄   █▄▄█ █   █     █▄▄█ █▀▀▀  █▄▄█ █   ▀  ██▀▀█ ██▄▄    ${NC}"
    echo -e "${RED} █    █ ▐█  ▀▄▄▄▄▀    █  █ ▀████     █  █ █     █  █ █▄  ▄▀ █   █ █▄   ▄▀ ${NC}"
    echo -e "${RED}  █  █   ▐               █              █  █       █ ▀███▀     █  ▀███▀   ${NC}"
    echo -e "${RED}   █▐                   █              █    ▀     █           ▀             ${NC}"
    echo -e "${RED}   ▐                   ▀              ▀          ▀                         ${NC}"
    pula_linha 4
}

adicionar_arquivo() {
    logo
    echo -e "${GREEN}Obs: (deve estar no mesmo diretório que o script, com .log no final)${NC}"
    pula_linha 1
    read -p "Digite o nome do arquivo: " nome_arquivo
    pula_linha 1
    echo -e "${GREEN}Adicionando arquivo: $nome_arquivo${NC}"
    pula_linha 1

    if [ -f "$nome_arquivo" ]; then
        echo -e "${GREEN}Tipo de arquivo: ${NC}"
        head -n 1 "$nome_arquivo"
        pula_linha 1
        sleep 2
        echo -e "${GREEN}Arquivo adicionado com sucesso!!${NC}"
        pula_linha 1
        sleep 4
        clear
    else
	echo -e "${RED}Analisando arquivo ...${NC}"
	sleep 2
	pula_linha 1
        echo -e "${RED}Arquivo $nome_arquivo não encontrado. Lembre-se do (.log)${NC}"
        exit 1
    fi
}

exibir_menu() {
    nome_app
    echo "Digite 1. Infos's do arquivo: ( "$nome_arquivo" )."
    echo "Digite 2. Para obter Infomações de IP's."
    echo "Digite 3. Para obter Distribuição dos cdg's status HTTP."
    echo "Digite 4. Para obter as Url's Mais acessadas."
    echo "Digite 5. Para ver os metodos usado por IP's."
    echo "Digite 6. Para Imprimir ip's Suspeitos (+50 req)."
    echo "Digite 7. Para vizualizar o trafego (Dispositivo/Navegador/SO)."
    echo "Digite 8. Para Verificar Referencias."
    echo "Digite 9. Para buscar o /etc/passwd."
    echo "Digite 0. Para Sair."
    pula_linha 2
    read -p "Escolha uma opção: " escolha

}

contagem_linhas_arq() {
    echo -e "${RED}"
    pula_linha 1

    num_linhas=$(wc -l < "$nome_arquivo")

    echo "O arquivo '$nome_arquivo' tem $num_linhas linhas."
    pula_linha 1
    echo "Tamanho do arquivo: $(du -h "$nome_arquivo" | cut -f1)"
    pula_linha 1
    awk '{sum += $10; count++} END {print "Média de tempo de resposta:", sum/count}' "$nome_arquivo"
    pula_linha 1
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

buscar_ips() {
    echo -e "${RED}"
    pula_linha 1
    echo "- - - - - - - - - - - IP's - - - - - - - - - - "
    pula_linha 1

    cat "$nome_arquivo" | cut -d " " -f1 | sort -u
    pula_linha 1
    echo "- - - - - - - - - - Requisições de cada IP - - - - - - - - - - - - "
    pula_linha 1
    cat "$nome_arquivo" | cut -d " " -f1 | sort | uniq -c | sort -nr
    pula_linha 1
    echo "- - - - - - - - - - - Requisições por hora - - - - - - - - - - - -"
    pula_linha 1
    awk '{print $4}' "$nome_arquivo" | cut -d: -f2 | sort | uniq -c | sort -nr
    pula_linha 1

    pula_linha 1
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

distribuicao_codigos_status() {
    echo -e "${RED}"
    pula_linha 1
    echo "Distribuição dos códigos de status HTTP:"
    pula_linha 1

    awk '{print $9}' "$nome_arquivo" | sort | uniq -c | sort -nr

    pula_linha 1
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

urls_mais_acessadas() {
    echo -e "${RED}"
    pula_linha 1
    echo "URLs mais acessadas:"
    pula_linha 1

    awk '{print $7}' "$nome_arquivo" | sort | uniq -c | sort -n

    pula_linha 1
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

metodos_por_ip() {
    echo -e "${RED}"
    pula_linha 1
    echo "Métodos utilizados por endereços IP:"
    pula_linha 1

    awk '{print $1, $6}' "$nome_arquivo" | sort | uniq -c | sort -nr

    pula_linha 1
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

ips_suspeitos() {
    echo -e "${RED}"
    pula_linha 1
    echo "IPs com muitas requisições:"
    pula_linha 1

    awk '{print $1}' "$nome_arquivo" | sort | uniq -c | sort -nr | awk '$1 > 50'

    pula_linha 1
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

vizualizador_trafego() {
    echo -e "${RED}"
    pula_linha 1
    echo "Visualizador de Tráfego: Distribuição de User-Agents"
    pula_linha 1

    awk -F\" '{print $6}' "$nome_arquivo" | sort | uniq -c | sort -nr

    pula_linha 1
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

verificar_referers() {
    echo -e "${RED}"
    pula_linha 1
    echo " Verificar Referências "
    pula_linha 1

    awk -F\" '{print $4}' "$nome_arquivo" | sort | uniq -c | sort -nr
    pula_linha 1
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

buscar_passwd() {
    echo -e "${RED}"
    pula_linha 1
    echo " Buscar informações de usuários no /etc/passwd "
    pula_linha 1

    awk -F: '{ printf "Usuário: %s\nUID: %s\nGID: %s\nHome: %s\nShell: %s\n\n", $1, $3, $4, $6, $7 }' /etc/passwd

    pula_linha 1
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

main() {
    adicionar_arquivo

    while true; do
        exibir_menu
        if [ "$escolha" -eq 1 ]; then
            contagem_linhas_arq
	elif [ "$escolha" -eq 2 ]; then
            buscar_ips
        elif [ "$escolha" -eq 3 ]; then
	    distribuicao_codigos_status
	elif [ "$escolha" -eq 4 ]; then
            urls_mais_acessadas
	elif [ "$escolha" -eq 5 ]; then
            metodos_por_ip
	elif [ "$escolha" -eq 6 ]; then
            ips_suspeitos
	elif [ "$escolha" -eq 7 ]; then
            vizualizador_trafego
	elif [ "$escolha" -eq 8 ]; then
            verificar_referers
	elif [ "$escolha" -eq 9 ]; then
            buscar_passwd
	elif [ "$escolha" -eq 0 ]; then
	    echo -e "${YELLOW}"
	    pula_linha 1
            echo "Saindo do programa..."
	    pula_linha 1
            echo "até logo..."
            exit 0
        else
            echo -e "${YELLOW}"
	    pula_linha 1
            echo "Por favor digite somente números dentro do escopo do Menu."
            pula_linha 1
	    read -n 1 -s -r -p "Pressione qualqr tecla..."
	    clear
	fi
    done
}

main
