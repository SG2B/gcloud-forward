FROM google/cloud-sdk:alpine

COPY --from=lachlanevenson/k8s-kubectl:v1.15.3 /usr/local/bin/kubectl /usr/local/bin/kubectl

COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

VOLUME /usr/src/app

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

EXPOSE 8000