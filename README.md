# 🛡️ DNSAttackSim — DNS Attack Simulation Toolkit

**DNSAttackSim** is an educational toolkit designed to simulate various DNS-based attacks in a controlled lab environment for the purposes of training, auditing, and authorized penetration testing.

> ⚠️ **WARNING:** This tool is intended for **authorized** and **educational use only**. Unauthorized use against systems without explicit written permission is illegal and unethical.

## 📦 Features

The toolkit includes simulations for the following DNS-based attack techniques:

| #   | Attack Type                 | Module File               |
|-----|-----------------------------|----------------------------|
| 1.  | DNS Spoofing (Cache Poisoning) | `dns_spoof.sh`           |
| 2.  | DNS Amplification Attack    | `dns_amplify.sh`           |
| 3.  | DNS Tunneling               | `dns_tunnel.sh`            |
| 4.  | DNS Hijacking               | `dns_hijack.sh`            |
| 5.  | NXDOMAIN Flood              | `nxdomain_flood.sh`        |
| 6.  | Subdomain Attack            | `subdomain_attack.sh`      |
| 7.  | Phantom Domain Attack       | `phantom_domain.sh`        |
| 8.  | Random Subdomain Attack     | `random_subdomain.sh`      |
| 9.  | Domain Lock-Up Attack       | `domain_lockup.sh`         |
| 10. | DNS Reflection Attack       | `dns_reflection.sh`        |

## 🔧 Installation

```bash
git clone https://github.com/yourusername/DNSAttackSim.git
cd DNSAttackSim
chmod +x DNSAttackSim.sh modules/*.sh
```

## 🚀 Usage

```bash
sudo ./DNSAttackSim.sh
```

## ⚙️ Requirements

- dig, hping3, dnschef, iodine, dnscat2, openssl
- A lab environment (virtual machines, test DNS servers)
- Linux-based OS (Tested on Kali, Ubuntu)

## ✅ Legal and Ethical Use

This tool must only be used under the following conditions:

- ✔️ You have explicit written permission to test the environment.
- ✔️ You are using this in an isolated lab or simulation network.
- ❌ Do NOT use against public or production infrastructure.
- ❌ Do NOT test on IPs you don’t own/control.

## 📜 License

MIT License
