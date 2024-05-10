
# Automating Your Home Lab with Packer and Proxmox

Welcome to the repository for my presentation at the Hashicorp User Group Columbus Meetup on May 8, 2024. This presentation focused on automated IaC deployment of servers and containers to a Proxmox hypervisor running on a home lab. Here, you'll find the slide deck and the code I demonstrated during the talk.

## About the Repository

This repository includes:
- **Slide Deck**: The presentation slides used during the meetup.
- **Code Samples**: Scripts and configuration files for automating deployment to a  home lab using Packer and Proxmox.

## About the Presentation

During this session, I shared insights and techniques on how to effectively use Packer alongside Proxmox to create automated IaC environment.   I happily shared a few of the pitfalls I encounered as well so you all can avoid the mistakes I made.

## Project Goals

The ultimate goal of these automation scripts is to set up a comprehensive IoT backend. This backend will include:

- **Fully Instrumented VMs and Containers**: Ensuring that all virtual machines and containers are equipped with the necessary monitoring and management tools.
- **MQTT**: Implementing MQTT as the messaging protocol to facilitate lightweight communication between devices.
- **Prometheus**: Utilizing Prometheus for collecting and storing time series data, crucial for monitoring the performance and health of the infrastructure.
- **Grafana**: Employing Grafana to create visually appealing and informative graphs and dashboards from the data collected by Prometheus.

This setup aims to provide a robust and scalable infrastructure for IoT applications, enabling efficient data gathering, real-time monitoring, and detailed analysis through intuitive visualizations.

- **Shazam-like Song Identification**: Automatically generating MP3 files when vinyl LPs are played, using audio recognition technologies.
- **Light Show Displays**: Creating synchronized light shows that can interact with various inputs and sensors.
- **Object Detection and Other IoT Implementations**: Utilizing ESP-32 and ESP32 CAM for projects that require image processing capabilities, alongside other microcontrollers and sensors for a wide range of IoT applications.
- **Local Edge-Based AI**: Implementing AI capabilities directly on local devices to enable faster processing and decision-making, enhancing responsiveness and functionality in IoT applications.

These future projects aim to leverage the robust backend to explore innovative and exciting applications in the IoT space.

**_We are just getting started here, gang!_**


## Tools Required

To follow along with the automation processes demonstrated, you will need the following tools installed and configured:

- **Terraform**: For defining and provisioning infrastructure as code.
- **Packer**: For creating machine images.
- **Ansible**: For configuration management.
- **Web Server**: A web server of your choice to host the public SSH key for the automation account on the target servers. This can be set up on your build server or within your local network.

Ensure that Terraform and Packer scripts are configured to locate the private SSH key within ssh-agent for secure operations.

## Setting Up Your Build Environment

To replicate the automation demonstrated in this presentation, you will need to prepare your environment accordingly. Here are the steps to set up your own build environment:

1. **Proxmox Setup**:
   - Ensure you have Proxmox installed on your server or virtual environment.
   - Set up provisioning accounts that have the necessary permissions to create and manage VMs.

2. **SSH Key Pair**:
   - Generate an SSH key pair that will be used for secure communication between your automation tool and the target server. This key ensures that the provisioning and deployment processes are secure.

3. **Ansible Galaxy - Prometheus**:
   - Utilize Ansible Galaxy's Prometheus role for your monitoring needs. This can be found at: [Ansible Galaxy - Prometheus](https://galaxy.ansible.com/ui/repo/published/prometheus/prometheus/)

4. **Environment Variables Setup**:
   - To streamline the provisioning process, set up the following environment variables. Replace the placeholder data with your own credentials and URLs:
     - `TF_VAR_opnsense_key`: [your opnsense key]
     - `TF_VAR_opnsense_secret`: [your opnsense secret]
     - `TF_VAR_opnsense_url`: [your opnsense url]
     - `TF_VAR_proxmox_node`: [your proxmox node]
     - `TF_VAR_proxmox_token_id`: [your proxmox token id]
     - `TF_VAR_proxmox_token_secret`: [your proxmox token secret]
     - `TF_VAR_proxmox_url`: [your proxmox url]

   _Please Note: The OPNSense updates are not yet implemented._


## Meeting Links

- **Meetup Details**: [Hashicorp User Group Columbus Meetup Event](https://www.meetup.com/columbus-hashicorp-user-group/events/300209317/)
- **Session Recording**: [Watch the Session on YouTube](https://www.youtube.com/watch?v=wuzrpx4TZMs&t=1503s)

## Learning Links

**Proxmox Learning Resources:**
- **2GuysTek**: [Exploring Proxmox from a VMware User's Perspective](https://www.youtube.com/watch?v=yGQK0t_h46k)
- **Learn Linux TV**: [Proxmox Full Course](https://www.youtube.com/watch?v=5j0Zb6x_hOk&list=PLT98CRl2KxKHnlbYhtABg6cF50bYa8Ulo)
- **Lawrence Systems**: [XCP-NG vs Proxmox for Businesses Leaving VMware](https://www.youtube.com/watch?v=et54DxAC2uM)
- **45Drives**: [Automating Proxmox with Ansible and Terraform](https://www.youtube.com/watch?v=OkJAPc9Xo5Q), also check their [GitHub repository](https://github.com/45Drives/terraform-ansible-demo) for related code.

## Provider Links

**HashiCorp and Related Technology:**
- **Packer and Proxmox Integration** by HashiCorp: [Documentation](https://developer.hashicorp.com/packer/integrations/hashicorp/proxmox)
- **Terraform Proxmox Provider** by Telmate: [Documentation](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs)
- **Packer and Ansible Provisioner**: [Documentation](https://developer.hashicorp.com/packer/integrations/hashicorp/ansible/latest/components/provisioner/ansible)
- **Terraform OPNsense Provider** by dalet-oss: [GitHub Repository](https://github.com/dalet-oss/terraform-provider-opnsense)


## License

All resources in this repository are provided under the [Unlicense](http://unlicense.org/), which allows you to use, modify, and distribute them freely.

## Contact

If you have any questions about the materials or the setup, feel free to open an issue here on GitHub, and I'll be happy to help.

Thank you for your interest, and I hope you find these resources helpful in automating your own home lab!

