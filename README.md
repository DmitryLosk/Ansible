## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.61.0 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | 0.129.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.129.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vm1"></a> [vm1](#module\_vm1) | ./modules/instance | n/a |
| <a name="module_vm2"></a> [vm2](#module\_vm2) | ./modules/instance | n/a |
| <a name="module_vm3"></a> [vm3](#module\_vm3) | ./modules/instance | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_iam_service_account.sa](https://registry.terraform.io/providers/yandex-cloud/yandex/0.129.0/docs/resources/iam_service_account) | resource |
| [yandex_resourcemanager_folder_iam_member.sa-editor](https://registry.terraform.io/providers/yandex-cloud/yandex/0.129.0/docs/resources/resourcemanager_folder_iam_member) | resource |
| [yandex_vpc_network.network](https://registry.terraform.io/providers/yandex-cloud/yandex/0.129.0/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.subnet1](https://registry.terraform.io/providers/yandex-cloud/yandex/0.129.0/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Default cloud | `string` | `"b1gdidpooa0ines7f08m"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Default folder ID in yandex cloud | `string` | `"b1grophk8r8v2edae95c"` | no |
| <a name="input_token_id"></a> [token\_id](#input\_token\_id) | Default token | `string` | `"y0_AgAAAAABtdKkAATuwQAAAAEQsUSqAADUCiZ4uWlF6LwzxJamX1Drd4Ju3w"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_vm_1"></a> [external\_ip\_address\_vm\_1](#output\_external\_ip\_address\_vm\_1) | n/a |
| <a name="output_external_ip_address_vm_2"></a> [external\_ip\_address\_vm\_2](#output\_external\_ip\_address\_vm\_2) | n/a |
| <a name="output_external_ip_address_vm_3"></a> [external\_ip\_address\_vm\_3](#output\_external\_ip\_address\_vm\_3) | n/a |
| <a name="output_internal_ip_address_vm_1"></a> [internal\_ip\_address\_vm\_1](#output\_internal\_ip\_address\_vm\_1) | n/a |
| <a name="output_internal_ip_address_vm_2"></a> [internal\_ip\_address\_vm\_2](#output\_internal\_ip\_address\_vm\_2) | n/a |
| <a name="output_internal_ip_address_vm_3"></a> [internal\_ip\_address\_vm\_3](#output\_internal\_ip\_address\_vm\_3) | n/a |
