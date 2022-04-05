# v2.94.5
## (2022-04-01)

# v2.95.12
## (2022-04-05)


<details>
<summary> Update layers/meta-balena to 8797487542bebf28f89bcb5251437f12c117dec7 [Renovate Bot] </summary>

> ## meta-balena-2.95.12
> ### (2022-04-01)
> 
> * grub-efi: Remove patch passing secure boot status to the kernel [Michal Toman]
> 
> ## meta-balena-2.95.11
> ### (Invalid date)
> 
> * hostapp-update: Mount data partition on target balena/tmp [Kyle Harding]
> 
> ## meta-balena-2.95.10
> ### (Invalid date)
> 
> * tests/os: check supervisor is pulled  after purge [rcooke-warwick]
> 
> ## meta-balena-2.95.9
> ### (2022-03-28)
> 
> * tests: update leviathan to 2.0.4 [rcooke-warwick]
> * tests: update config for new leviathan version [rcooke-warwick]
> 
> ## meta-balena-2.95.8
> ### (2022-03-25)
> 
> * resindataexpander: Check and fix end GPT if necessary [Alexandru Costache]
> 
> ## meta-balena-2.95.7
> ### (2022-03-23)
> 
> * hostapp-update-hooks: Always update legacy development variants to development mode [Alex Gonzalez]
> 
> ## meta-balena-2.95.6
> ### (2022-03-22)
> 
> * balena-supervisor: Use architecture instead of device type to query API [Alex Gonzalez]
> * update-balena-supervisor: Support passing command line image argument [Alex Gonzalez]
> 
> ## meta-balena-2.95.5
> ### (2022-03-21)
> 
> * tests/kernel-overlap: Prevent test run failure on older kernels [Alexandru Costache]
> 
> ## meta-balena-2.95.4
> ### (2022-03-17)
> 
> * tests/os: wait for osconfig service to be inactive [rcooke-warwick]
> 
> ## meta-balena-2.95.3
> ### (2022-03-15)
> 
> * balena-supervisor: Update balena-supervisor to v12.11.38 Ensure preloaded applications are ran when no internet is available on first run [20k-ultra]
> 
> ## meta-balena-2.95.2
> ### (2022-03-11)
> 
> * kernel-balena: Disable building gcc plugins [Alexandru Costache]
> 
> ## meta-balena-2.95.1
> ### (2022-03-08)
> 
> * tests: Add leviathan v2.0.0 as a submodule [Kyle Harding]
> * tests/cloud: Cleanup wait until loops in cloud suite [Kyle Harding]
> * tests/hup: Remove bluebird and this.context.get references [Kyle Harding]
> * tests/os: Remove bluebird and this.context.get references [Kyle Harding]
> * tests/cloud: Remove bluebird and this.context.get references [Kyle Harding]
> * tests: Cleanup suites config to support both testbot and qemu workers [Kyle Harding]
> * tests/cloud: Update cloud suite to support core on client [Kyle Harding]
> * tests/hup: Update hup suite to support core on client [Kyle Harding]
> * tests/os: Update os suite to support core on client [Kyle Harding]
> 
> ## meta-balena-2.95.0
> ### (2022-03-04)
> 
> * Adds modem test suite [Alex]
> 
</details>

# v2.94.5+rev3
## (2022-04-04)

* Add renovate configuration [Alex Gonzalez]

# v2.94.5+rev2
## (2022-04-02)

* Disable kernel-modules-headers to circumvent a kernel-headers-test compile issue [Florin Sarbu]

# v2.94.5+rev1
## (2022-04-01)

* Specify full path in repo.yml upstreams [Florin Sarbu]

* Add initial support for PINE64 ROCKPro64 [Florin Sarbu]
