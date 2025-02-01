brew install openjdk@8
brew install openjdk@11
brew install openjdk@17
# 添加JDK 8
jenv add /usr/local/opt/openjdk@8/libexec/openjdk.jdk/Contents/Home

# 添加JDK 11
jenv add /usr/local/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home

# 添加JDK 17
jenv add /usr/local/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home

brew install gradle maven@3.6
