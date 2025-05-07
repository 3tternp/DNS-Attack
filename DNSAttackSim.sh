#!/bin/bash

clear
echo "======================================================"
echo "       DNS Attack Simulation Tool v1.0"
echo "   For Educational & Authorized Use ONLY"
echo "======================================================"
echo "⚠️  Unauthorized use is prohibited and may be illegal."
echo "By using this tool, you confirm written authorization."
echo "======================================================"
read -p "Do you agree to these terms? (yes/no): " AGREE

if [[ "$AGREE" != "yes" ]]; then
    echo "[!] Exiting. You must agree to continue."
    exit 1
fi

while true; do
    echo -e "\nSelect an attack simulation:"
    echo "1. DNS Spoofing (Cache Poisoning)"
    echo "2. DNS Amplification Attack"
    echo "3. DNS Tunneling"
    echo "4. DNS Hijacking"
    echo "5. NXDOMAIN Flood Attack"
    echo "6. Subdomain Attack"
    echo "7. Phantom Domain Attack"
    echo "8. Random Subdomain Flood"
    echo "9. Domain Lock-Up Attack"
    echo "10. DNS Reflection Attack"
    echo "11. Exit"
    read -p "Enter your choice [1-11]: " CHOICE

    case "$CHOICE" in
        1) bash ./modules/dns_spoof.sh ;;
        2) bash ./modules/dns_amplify.sh ;;
        3) bash ./modules/dns_tunnel.sh ;;
        4) bash ./modules/dns_hijack.sh ;;
        5) bash ./modules/nxdomain_flood.sh ;;
        6) bash ./modules/subdomain_attack.sh ;;
        7) bash ./modules/phantom_domain.sh ;;
        8) bash ./modules/random_subdomain.sh ;;
        9) bash ./modules/domain_lockup.sh ;;
        10) bash ./modules/dns_reflection.sh ;;
        11) echo "[+] Exiting..."; exit 0 ;;
        *) echo "[!] Invalid choice." ;;
    esac
done
