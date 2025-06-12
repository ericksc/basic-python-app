FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/1.12.0/terraform_1.12.0_linux_amd64.zip && \
    unzip terraform_1.12.0_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_1.12.0_linux_amd64.zip

# Install Google Cloud SDK
RUN apt-get update && apt-get install -y curl gnupg lsb-release && \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
    apt-get update && apt-get install -y google-cloud-sdk && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
# Set the working directory
WORKDIR /workspace

# Copy any necessary files (if needed)
# COPY . .