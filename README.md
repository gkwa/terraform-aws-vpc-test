<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Usage](#usage)
- [Check for cycles](#check-for-cycles)
- [Using multiple instances of the same module](#using-multiple-instances-of-the-same-module)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

terraform-aws-vpc-test

Usage
=====

    terraform get -update
    terraform apply -var-file=~/.ssh/terraform.tfvars
    terraform show -module-depth=1
    terraform destroy -force -var-file=~/.ssh/terraform.tfvars

    # Using make:
    make create
    make destroy

Check for cycles
================

    terraform graph -draw-cycles -verbose >o.dot; dot o.dot -Tpng >o.png; open o.png

Using multiple instances of the same module
===========================================

-   Multiple providers
    <https://www.terraform.io/docs/configuration/providers.html>
-   <https://github.com/hashicorp/terraform/issues/3285#issue-107301657>
-   <https://github.com/hashicorp/terraform/issues/1819>
-   <https://github.com/hashicorp/terraform/issues/451>
-   <https://github.com/hashicorp/terraform/issues/451#issuecomment-119207126>

Using `-state` param might help: use one state file per region
-   <https://github.com/hashicorp/terraform/issues/451#issuecomment-72067259>
-   <https://terraform.io/docs/commands/apply.html#_state_path>

More
-   <https://groups.google.com/d/msg/terraform-tool/pS5KqBvN4EQ/YUK4DMcAeIUJ>

<!-- -->

    terraform apply -var-file stage.tfvars -state stage.tfstate
    terraform apply -var-file prod.tfvars -state prod.tfstate

