echo -e "${CIANO}║${VERDE} [6] 🔄 Instalar Dependências                ${CIANO}║${RESET}"
        echo -e "${CIANO}║${VERDE} [7] 🚪 Sair                                 ${CIANO}║${RESET}"
        echo -e "${CIANO}╚════════════════════════════════════════════════╝${RESET}"
        echo
        echo -ne "${VERDE_LIMAO}🌿 OLHO DE DEUS > ${RESET}"
        read option
        
        case $option in
            1) module_report ;;
            2) module_mass_report ;;
            3) module_scanner ;;
            4) module_stats ;;
            5) configure_bot ;;
            6) install_dependencies ;;
            7) 
                show_banner
                echo -e "${VERDE_NEON}🌿 OLHO DE DEUS se despede...${RESET}"
                echo -e "${VERDE}Que a justiça divina prevaleça! 🔥${RESET}"
                echo
                sleep 2
                clear
                exit 0
                ;;
            *)
                echo -e "${VERMELHO}[✗] Opção inválida!${RESET}"
                sleep 1
                ;;
        esac
    done
}

# ==================== EXECUÇÃO PRINCIPAL ====================
# Verificar dependências na primeira execução
if [ ! -f "$CONFIG_DIR/.deps_installed" ]; then
    install_dependencies
    touch "$CONFIG_DIR/.deps_installed"
fi

# Iniciar menu
main_menu
