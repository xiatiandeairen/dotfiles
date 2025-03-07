# nvm
export NVM_DIR="${XDG_CONFIG_HOME}/nvm"
export NRM_HOME="${XDG_CONFIG_HOME}/nrm"
export NPM_HOME="${XDG_CONFIG_HOME}/npm"
export npm_config_userconfig="${NPM_HOME}/npmrc"
export npm_config_cache="${XDG_CACHE_HOME}/npm"
export npm_config_prefix="${NPM_HOME}/npm-global"
export PNPM_HOME="${XDG_DATA_HOME}/pnpm"
export PNPM_STORE_PATH="${XDG_CACHE_HOME}/pnpm"

# xmake
export XMAKE_GLOBALDIR="${XDG_CONFIG_HOME}/xmake"
export XMAKE_PKG_INSTALLDIR="${XMAKE_GLOBALDIR}/pkg"
export XMAKE_PKG_CACHEDIR="${XDG_CACHE_HOME}/xmake"
export XMAKE_PROGRAM_DIR="${XDG_DATA_HOME}/xmake"

# rust
export RUSTUP_HOME="${XDG_CONFIG_HOME}/rustup"
export CARGO_HOME="${XDG_CONFIG_HOME}/cargo"

# gradle
export GRADLE_USER_HOME="${XDG_CONFIG_HOME}/gradle"

# pip
export PIP_CONFIG_FILE="${XDG_CONFIG_HOME}/pip/pip.conf"
export PIPX_HOME="${XDG_DATA_HOME}/pipx"
export PIPX_BIN_DIR="${PIPX_HOME}/bin"
export PIPX_MAN_DIR="${PIPX_HOME}/man"
export PIPX_SHARED_LIBS="${PIPX_HOME}/lib"

# appnium
export APPIUM_HOME="${XDG_DATA_HOME}/appium"
export APPIUM_LOG="${XDG_CACHE_HOME}/appium/logs"
export APPIUM_TMP="${XDG_CACHE_HOME}/appium/tmp"

# android
export ANDROID_USER_HOME="${XDG_CONFIG_HOME}/android"
export ANDROID_HOME="${HOME}/Library/Android/sdk"
export ANDROID_SDK_ROOT="${ANDROID_HOME}"

# hdc
export HDC_HOME="/Applications/DevEco-Studio.app/Contents/sdk/default/openharmony/toolchains/hdc"
export ARKUIX_SDK_HOME="${HOME}/Library/ArkUI-X/Sdk"
export PATH="${ARKUIX_SDK_HOME}/14/arkui-x/toolchains/bin:$PATH"
