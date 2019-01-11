# CircleCI doesn't play well with scratch containers
FROM alpine/git
COPY --from=bitfield/terraform-docs /bin/terraform-docs /bin/terraform-docs
COPY --from=hashicorp/terraform:0.11.11 /bin/terraform /bin/terraform
COPY --from=wata727/tflint /usr/local/bin/tflint /bin/tflint
ENTRYPOINT [ "/bin/sh" ]