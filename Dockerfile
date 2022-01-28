FROM alpine:3.11

CMD ["/bin/sh"]

<<<<<<< HEAD
ENV TERRAFORM_VER=1.1.4
ENV TERRAGRUNT_VER=v0.36.0
=======
ENV TERRAFORM_VER=1.0.11
ENV TERRAGRUNT_VER=v0.35.13
>>>>>>> 36d961a5483e839b3d88f4f96767893f009e2a68

RUN apk update     && apk add curl openssh git wget    && apk upgrade --update-cache --available
RUN curl -Ls -o terraform_${TERRAFORM_VER}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VER}/terraform_${TERRAFORM_VER}_linux_amd64.zip && unzip -d /usr/local/bin/ terraform_${TERRAFORM_VER}_linux_amd64.zip
RUN curl -Ls -o /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VER}/terragrunt_linux_amd64 && chmod +x /usr/local/bin/terragrunt

ENTRYPOINT [""]
