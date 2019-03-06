# CircleCI doesn't play well with scratch containers
FROM alpine/git
COPY --from=bitfield/terraform-docs:v0.6.0 /bin/terraform-docs /bin/terraform-docs
COPY --from=hashicorp/terraform:0.11.11 /bin/terraform /bin/terraform
COPY --from=wata727/tflint:0.7.3 /usr/local/bin/tflint /bin/tflint
ENTRYPOINT [ "/bin/sh" ]