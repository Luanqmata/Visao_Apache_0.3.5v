\033[1;32m#!/bin/bash

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' 

nome_arquivo=""


logo() {
    echo -e "${YELLOW}                                   ?  Bem vindo !${NC}" 
    echo ""
    echo ""
    echo -e "${YELLOW}                         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣤⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀${NC}"
    echo -e "${YELLOW}                         ⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀${NC}"
    echo -e "${YELLOW}                         ⠀⠀⠀⣠⣶⣿⣿⡿⣿⣿⣿⡿⠋⠉⠀⠀⠉⠙⢿⣿⣿⡿⣿⣿⣷⣦⡀⠀⠀⠀${NC}"
    echo -e "${YELLOW}                         ⠀⢀⣼⣿⣿⠟⠁⢠⣿⣿⠏⠀⠀⢠⣤⣤⡀⠀⠀⢻⣿⣿⡀⠙⢿⣿⣿⣦⠀⠀${NC}"
    echo -e "${YELLOW}                         ⣰⣿⣿⡟⠁⠀⠀⢸⣿⣿⠀⠀⠀⢿⣿⣿⡟⠀⠀⠈⣿⣿⡇⠀⠀⠙⣿⣿⣷      V~: 0.5.3 Alpha    ${NC}"
    echo -e "${YELLOW}                         ⠈⠻⣿⣿⣦⣄⠀⠸⣿⣿⣆⠀⠀⠀⠉⠉⠀⠀⠀⣸⣿⣿⠃⢀⣤⣾⣿⣿⠟⠁${NC}"
    echo -e "${YELLOW}                         ⠀⠀⠈⠻⣿⣿⣿⣶⣿⣿⣿⣦⣄⠀⠀⠀⢀⣠⣾⣿⣿⣿⣾⣿⣿⡿⠋⠁⠀⠀${NC}"
    echo -e "${YELLOW}                         ⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⠀⠀⠀${NC}"
    echo -e "${YELLOW}                        ⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠛⠋⠉⠀⠀⠀⠀⠀⠀${NC}"
    echo ""
    echo ""
    echo -e "${YELLOW}                         - = - = - = visão Apache 2 - = - = - =${NC}"
    echo ""
}

nome_app() {
    echo ""
    echo ""
    echo ""
    echo -e "${RED}    ▄   ▄█    ▄▄▄▄▄   ██   ████▄     ██   █ ▄▄  ██   ▄█▄     ▄  █ ▄███▄   ${NC}"
    echo -e "${RED}     █  ██   █     ▀▄ █ █  █   █     █ █  █   █ █ █  █▀ ▀▄  █   █ █▀   ▀  ${NC}"
    echo -e "${RED}█     █ ██ ▄  ▀▀▀▀▄   █▄▄█ █   █     █▄▄█ █▀▀▀  █▄▄█ █   ▀  ██▀▀█ ██▄▄    ${NC}"
    echo -e "${RED} █    █ ▐█  ▀▄▄▄▄▀    █  █ ▀████     █  █ █     █  █ █▄  ▄▀ █   █ █▄   ▄▀ ${NC}"
    echo -e "${RED}  █  █   ▐               █              █  █       █ ▀███▀     █  ▀███▀   ${NC}"
    echo -e "${RED}   █▐                   █              █    ▀     █           ▀             ${NC}"
    echo -e "${RED}   ▐                   ▀              ▀          ▀                         ${NC}"
    echo ""
    echo ""
}

adicionar_arquivo() {
    logo
    echo -e "${GREEN}Obs: (deve estar no mesmo diretório que o script, com .log no final)${NC}"
    echo ""
    read -p "Digite o nome do arquivo: " nome_arquivo
    echo ""
    echo -e "${GREEN}Adicionando arquivo: $nome_arquivo${NC}"
    echo ""

    if [ -f "$nome_arquivo" ]; then
        echo -e "${GREEN}Tipo de arquivo: ${NC}"
        head -n 1 "$nome_arquivo"
        echo ""
        sleep 2
        echo -e "${GREEN}Arquivo adicionado com sucesso!!${NC}"
        echo ""
        sleep 4
        clear
    else
        echo -e "${GREEN}Arquivo $nome_arquivo não encontrado. Lembre-se do (.log)${NC}"
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
    echo "Digite 0. Para Sair."
    echo ""
    echo ""
    read -p "Escolha uma opção: " escolha

}

contagem_linhas_arq() {
    echo -e "${RED}"
    echo ""

    num_linhas=$(wc -l < "$nome_arquivo")

    echo "O arquivo '$nome_arquivo' tem $num_linhas linhas."
    echo ""
    echo "Tamanho do arquivo: $(du -h "$nome_arquivo" | cut -f1)"
    echo ""
    awk '{sum += $10; count++} END {print "Média de tempo de resposta:", sum/count}' "$nome_arquivo"
    echo ""
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

buscar_ips() {
    echo -e "${RED}"
    echo ""
    echo "- - - - - - - - - - - IP's - - - - - - - - - - "
    echo ""

    cat "$nome_arquivo" | cut -d " " -f1 | sort -u
    echo ""
    echo "- - - - - - - - - - Requisições de cada IP - - - - - - - - - - - - "
    echo ""
    cat "$nome_arquivo" | cut -d " " -f1 | sort | uniq -c | sort -nr
    echo ""
    echo "- - - - - - - - - - - Requisições por hora - - - - - - - - - - - -"
    echo ""
    awk '{print $4}' "$nome_arquivo" | cut -d: -f2 | sort | uniq -c | sort -nr
    echo ""

    echo ""
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

distribuicao_codigos_status() {
    echo -e "${RED}"
    echo ""
    echo "Distribuição dos códigos de status HTTP:"
    echo ""

    awk '{print $9}' "$nome_arquivo" | sort | uniq -c | sort -nr

    echo ""
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

urls_mais_acessadas() {
    echo -e "${RED}"
    echo ""
    echo "URLs mais acessadas:"
    echo ""

    awk '{print $7}' "$nome_arquivo" | sort | uniq -c | sort -n

    echo ""
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

metodos_por_ip() {
    echo -e "${RED}"
    echo ""
    echo "Métodos utilizados por endereços IP:"
    echo ""

    awk '{print $1, $6}' "$nome_arquivo" | sort | uniq -c | sort -nr

    echo ""
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

ips_suspeitos() {
    echo -e "${RED}"
    echo ""
    echo "IPs com muitas requisições:"
    echo ""

    awk '{print $1}' "$nome_arquivo" | sort | uniq -c | sort -nr | awk '$1 > 50'

    echo ""
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

vizualizador_trafego() {
    echo -e "${RED}"
    echo ""
    echo "Visualizador de Tráfego: Distribuição de User-Agents"
    echo ""

    awk -F\" '{print $6}' "$nome_arquivo" | sort | uniq -c | sort -nr

    echo ""
    read -n 1 -s -r -p "Pressione qualquer tecla para continuar..."
    clear
}

verificar_referers() {
    echo -e "${RED}"
    echo ""
    echo " Verificar Referências "
    echo ""
    
    awk -F\" '{print $4}' "$nome_arquivo" | sort | uniq -c | sort -nr
    echo ""
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
	elif [ "$escolha" -eq 0 ]; then
	    echo -e "${RED}"
	    echo ""
            echo "Saindo do programa..."
	    echo ""
            echo "até logo...
"
            exit 0
        else
            echo -e "${RED}"
	    echo ""
            echo "Por favor digite somente números dentro do escopo do Menu."
            echo ""
	    read -n 1 -s -r -p "Pressione qualqr tecla..."
	    clear
	fi
    done
}

main
