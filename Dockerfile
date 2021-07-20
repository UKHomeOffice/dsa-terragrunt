FROM alpine:3.11
CMD ["/bin/sh"]
# ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# ENV PYTHON_VERSION=3.7.4
# cd /usr/local/bin  && ln -s idle3 idle  && ln -s pydoc3 pydoc  && ln -s python3 python  && ln -s python3-config python-config
# ENV PYTHON_PIP_VERSION=19.3
# ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/65986a26949050d26e6ec98915da4aade8d8679d/get-pip.py
# ENV PYTHON_GET_PIP_SHA256=8d412752ae26b46a39a201ec618ef9ef7656c5b2d8529cdcbe60cd70dc94f40c
# set -ex;   wget -O get-pip.py "$PYTHON_GET_PIP_URL";  echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum -c -;   python get-pip.py   --disable-pip-version-check   --no-cache-dir   "pip==$PYTHON_PIP_VERSION"  ;  pip --version;   find /usr/local -depth   \(    \( -type d -a \( -name test -o -name tests \) \)    -o    \( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \)   \) -exec rm -rf '{}' +;  rm -f get-pip.py

ENV TERRAFORM_VER=1.0.2
ENV TERRAGRUNT_VER=v0.31.1
apk update     && apk add curl openssh git wget    && apk upgrade --update-cache --available
curl -Ls -o terraform_${TERRAFORM_VER}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VER}/terraform_${TERRAFORM_VER}_linux_amd64.zip && unzip -d /usr/local/bin/ terraform_${TERRAFORM_VER}_linux_amd64.zip
curl -Ls -o /usr/local/bin/terragrunt https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VER}/terragrunt_linux_amd64 && chmod +x /usr/local/bin/terragrunt
ENTRYPOINT [""]
