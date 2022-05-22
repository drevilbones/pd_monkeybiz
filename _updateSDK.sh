cd ~
rm -rf PlaydateSDK/*
wget https://download.panic.com/playdate_sdk/Linux/PlaydateSDK-latest.tar.gz
tar -xzf PlaydateSDK-latest.tar.gz -C PlaydateSDK --strip-components=1 
rm PlaydateSDK-latest.tar.gz