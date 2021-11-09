FROM alpine:3.11

CMD ["/bin/sh"]


ENV TERRAFORM_VER=1.0.10
ENV TERRAGRUNT_VER=v0.31.1

RUN apk update     && apk add curl openssh git wget    && apk upgrade --update-cache --available
RUN curl -Ls -o terraform_${TERRAFORM_VER}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VER}/terraform_${TERRAFORM_VER}_linux_amd64.zip && unzip -d /usr/local/bin/ terraform_${TERRAFORM_VER}_linux_amd64.zip
RUN curl -Ls -o /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VER}/terragrunt_linux_amd64 && chmod +x /usr/local/bin/terragrunt

ENTRYPOINT [""]
