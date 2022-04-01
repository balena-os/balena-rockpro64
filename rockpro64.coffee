deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
        version: 1
        slug: 'rockpro64'
        name: 'ROCKPro64'
        arch: 'aarch64'
        state: 'new'

        instructions: commonImg.instructions

        gettingStartedLink:
                windows: 'https://www.balena.io/docs/learn/getting-started/rockpro64/nodejs/'
                osx: 'https://www.balena.io/docs/learn/getting-started/rockpro64/nodejs/'
                linux: 'https://www.balena.io/docs/learn/getting-started/rockpro64/nodejs/'

        options: [ networkOptions.group ]

        yocto:
                machine: 'rockpro64'
                image: 'balena-image'
                fstype: 'balenaos-img'
                version: 'yocto-honister'
                deployArtifact: 'balena-image-rockpro64.balenaos-img'
                compressed: true

        configuration:
                config:
                        partition: 1
                        path: '/config.json'

        initialization: commonImg.initialization
