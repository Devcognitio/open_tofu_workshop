# Ejemplo de Migración de Terraform a OpenTofu

Este es un proyecto de ejemplo diseñado para mostrar el proceso de migración de una infraestructura gestionada con Terraform a OpenTofu. La infraestructura desplegada en AWS incluye una base de datos DynamoDB, una VPC con subnets privadas y públicas, y un Auto Scaling Group con instancias EC2 micro que ejecutan NGINX.

## Requisitos

Antes de comenzar, asegúrate de tener las siguientes herramientas instaladas:

- **Terraform**: Herramienta de infraestructura como código para gestionar tu infraestructura en la nube.
- **OpenTofu**: Una bifurcación de código abierto de Terraform para la gestión de infraestructura como código.
- **AWS CLI**: Herramienta de línea de comandos de AWS para interactuar con los servicios de AWS.

## Instalación y Actualización

1. **Instalar/Actualizar AWS CLI**  
   Puedes instalar o actualizar AWS CLI siguiendo la guía en el siguiente enlace:  
   [AWS CLI Installation](https://formulae.brew.sh/formula/awscli)

2. **Instalar/Actualizar Terraform**  
   Sigue esta guía para instalar o actualizar Terraform:  
   [Terraform Installation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

3. **Instalar/Actualizar OpenTofu**  
   Puedes instalar o actualizar OpenTofu desde este enlace:  
   [OpenTofu Installation](https://formulae.brew.sh/formula/opentofu)

## Pasos de Migración

1. **Clonar el repositorio:**

   ```bash
   git clone https://github.com/Devcognitio/open_tofu_workshop.git
   cd open_tofu_workshop
   ```

2. Inicializar Terraform:
    ```terraform init```
3. Revisar el plan de infraestructura:
    ```terraform plan```
4. Aplicar la infraestructura con Terraform:
    ```terraform apply```
5. Revisar la infraestructura desplegada en AWS:
    Una vez que se haya aplicado la infraestructura, puedes verificar los recursos creados en la consola de AWS.
6. Sacar un backup del archivo tfstate:
    Antes de migrar a OpenTofu, realiza una copia de seguridad del archivo terraform.tfstate.
7. Inicializar OpenTofu:
    ```tofu init```
8. Revisar el plan de infraestructura:
    ```tofu plan```
9. Aplicar la infraestructura con OpenTofu:
    ```tofu apply```
10. Hacer un pequeño cambio en la IaC:
    Modifica alguno de los recursos en los archivos .tf.
11. Revisar y aplicar la infraestructura con OpenTofu:
    ```tofu apply```
