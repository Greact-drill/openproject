ARG OPENPROJECT_VERSION=17.1.2
FROM openproject/openproject:${OPENPROJECT_VERSION}
COPY enterprise_token.rb /app/models/enterprise_token.rb

# Keep the image extensible for Portainer stack builds and customizations.
USER root
RUN mkdir -p /var/openproject/assets && chown -R app:app /var/openproject/assets
USER app
