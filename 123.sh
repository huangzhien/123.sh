#!/bin/bash

# 預設語言選擇
echo -e "\033[33m=============================================================\033[0m"
echo -e "\033[33mPlease select your language / 請選擇語言 / 请选择语言 / 言語を選択してください / 언어를 선택하세요:\033[0m"
echo -e "\033[33m-------------------------------------------------------------\033[0m"
echo -e "\033[32m1) English\033[0m"
echo -e "\033[32m2) 繁體中文\033[0m"
echo -e "\033[32m3) 简体中文\033[0m"
echo -e "\033[32m4) 日本語\033[0m"
echo -e "\033[32m5) 한국어\033[0m"
echo -e "\033[33m=============================================================\033[0m"
read -p "Enter your choice (default: 简体中文): " lang_choice
lang_choice=${lang_choice:-1}

# 多語言提示
if [[ "$lang_choice" == "2" ]]; then
    MSG_WELCOME="\033[33m歡迎使用 TOKI-ccminerARM！\033[0m\n\033[36m這是專門為 Android 手機或單板電腦（如樹梅派）製作的 VerusCoin 挖礦軟體。\033[0m\n\n\033[34mGitHub: https://github.com/TokiZeng/TOKI-ccminerARM\033[0m\n\033[34mYouTube: 熔爐 FORGE THE MAKER\033[0m\n"
    MSG_ENV="\033[36m預設環境為 UserLAnd 的 Ubuntu，如在其他地方使用需手動修改。\033[0m"
    MSG_FUNCTION_SELECT="\033[33m請選擇一個功能:\033[0m"
    MSG_FUNCTION_INSTALL="\033[32m1) 全新安裝\033[0m"
    MSG_FUNCTION_UPDATE="\033[32m2) 更新二進制檔案\033[0m"
    MSG_SELECT_ARCH="\033[33m請選擇您的架構:\033[0m"
    MSG_DEP_DOWNLOAD="\033[36m正在下載所有依賴檔案...\033[0m"
    MSG_DEP_EXTRACT="\033[36m正在解壓縮依賴檔案...\033[0m"
    MSG_BINARY_UPDATE="\033[36m正在更新二進制檔案...\033[0m"
    MSG_JSON_PROMPT="\033[33m請輸入配置檔案的相關選項，直接按 Enter 使用預設值:\033[0m"
    MSG_THREADS="\033[33m請輸入使用的核心數（預設: 8）：\033[0m"
    MSG_POOL_URL="\033[33m請輸入礦池地址（預設: veruscoin.cedric-crispin.com:4024）：\033[0m"
    MSG_WALLET="\033[33m請輸入錢包地址（預設: RRLjsVeakjWgjbsQkJspCJMz7QJNH6dzME）：\033[0m"
    MSG_MINER_NAME="\033[33m請輸入礦工名稱（預設: 2AO）：\033[0m"
    MSG_SUCCESS="\033[32m安裝成功！執行方式為：./start.sh\033[0m"
    MSG_RECONFIG="\033[36m如需重新設置，請重新執行此腳本或直接修改 ~/config.json\033[0m"
    MSG_UPDATE_COMPLETE="\033[32m二進制檔案更新完成！可以直接執行 ./start.sh 開始挖礦。\033[0m"
elif [[ "$lang_choice" == "3" ]]; then
    MSG_WELCOME="\033[33m欢迎使用 TOKI-ccminerARM！\033[0m\n\033[36m这是专门为 Android 手机或单板电脑（如树莓派）制作的 VerusCoin 挖矿软件。\033[0m\n\n\033[34mGitHub: https://github.com/TokiZeng/TOKI-ccminerARM\033[0m\n\033[34mYouTube: 熔炉 FORGE THE MAKER\033[0m\n"
    MSG_ENV="\033[36m默认环境为 UserLAnd 的 Ubuntu，如果在其他地方使用需要手动修改。\033[0m"
    MSG_FUNCTION_SELECT="\033[33m请选择一个功能:\033[0m"
    MSG_FUNCTION_INSTALL="\033[32m1) 全新安装\033[0m"
    MSG_FUNCTION_UPDATE="\033[32m2) 更新二进制文件\033[0m"
    MSG_SELECT_ARCH="\033[33m请选择您的架构:\033[0m"
    MSG_DEP_DOWNLOAD="\033[36m正在下载所有依赖文件...\033[0m"
    MSG_DEP_EXTRACT="\033[36m正在解压依赖文件...\033[0m"
    MSG_BINARY_UPDATE="\033[36m正在更新二进制文件...\033[0m"
    MSG_JSON_PROMPT="\033[33m请输入配置文件的相关选项，直接按 Enter 使用默认值:\033[0m"
    MSG_THREADS="\033[33m请输入使用的核心数（默认: 8）：\033[0m"
    MSG_POOL_URL="\033[33m请输入矿池地址（默认: veruscoin.cedric-crispin.com:4024）：\033[0m"
    MSG_WALLET="\033[33m请输入钱包地址（默认: RRLjsVeakjWgjbsQkJspCJMz7QJNH6dzME）：\033[0m"
    MSG_MINER_NAME="\033[33m请输入矿工名称（默认: TOKI）：\033[0m"
    MSG_SUCCESS="\033[32m安装成功！运行方式为：./start.sh\033[0m"
    MSG_RECONFIG="\033[36m如需重新设置，请重新运行此脚本或直接修改 ~/config.json\033[0m"
    MSG_UPDATE_COMPLETE="\033[32m二进制文件更新完成！可以直接运行 ./start.sh 开始挖矿。\033[0m"
elif [[ "$lang_choice" == "4" ]]; then
    MSG_WELCOME="\033[33mTOKI-ccminerARM へようこそ！\033[0m\n\033[36mこれは Android スマートフォンまたはシングルボードコンピューター向けに特化された VerusCoin マイニングソフトウェアです。\033[0m\n\n\033[34mGitHub: https://github.com/TokiZeng/TOKI-ccminerARM\033[0m\n\033[34mYouTube: 熔爐 FORGE THE MAKER\033[0m\n"
    MSG_ENV="\033[36mデフォルト環境は UserLAnd の Ubuntu です。他の環境で使用する場合、手動で修正が必要です。\033[0m"
    MSG_FUNCTION_SELECT="\033[33m機能を選択してください:\033[0m"
    MSG_FUNCTION_INSTALL="\033[32m1) 新規インストール\033[0m"
    MSG_FUNCTION_UPDATE="\033[32m2) バイナリファイルを更新\033[0m"
    MSG_SELECT_ARCH="\033[33mアーキテクチャを選択してください:\033[0m"
    MSG_DEP_DOWNLOAD="\033[36m依存ファイルをダウンロードしています...\033[0m"
    MSG_DEP_EXTRACT="\033[36m依存ファイルを解凍しています...\033[0m"
    MSG_BINARY_UPDATE="\033[36mバイナリファイルを更新しています...\033[0m"
    MSG_JSON_PROMPT="\033[33m設定ファイルのオプションを入力してください。Enter キーを押すとデフォルト値が使用されます:\033[0m"
    MSG_THREADS="\033[33m使用するスレッド数を入力してください (デフォルト: 8): \033[0m"
    MSG_POOL_URL="\033[33mプールのURLを入力してください (デフォルト: stratum+tcp://us.vipor.net:5040): \033[0m"
    MSG_WALLET="\033[33mウォレットアドレスを入力してください (デフォルト: RUhKU7cYHkqSfzbHvRfWjyNH7FWHNf6VoA): \033[0m"
    MSG_MINER_NAME="\033[33mマイナー名を入力してください (デフォルト: TOKI): \033[0m"
    MSG_SUCCESS="\033[32mインストールが完了しました！実行方法: ./start.sh\033[0m"
    MSG_RECONFIG="\033[36m再設定が必要な場合は、このスクリプトを再実行するか ~/config.json を手動で編集してください。\033[0m"
    MSG_UPDATE_COMPLETE="\033[32mバイナリファイルの更新が完了しました！./start.sh を実行してマイニングを開始できます。\033[0m"
elif [[ "$lang_choice" == "5" ]]; then
    MSG_WELCOME="\033[33mTOKI-ccminerARM 에 오신 것을 환영합니다！\033[0m\n\033[36m이 소프트웨어는 Android 스마트폰 및 싱글보드 컴퓨터용으로 설계된 VerusCoin 채굴 소프트웨어입니다。\033[0m\n\n\033[34mGitHub: https://github.com/TokiZeng/TOKI-ccminerARM\033[0m\n\033[34mYouTube: 熔爐 FORGE THE MAKER\033[0m\n"
    MSG_ENV="\033[36m기본 환경은 UserLAnd의 Ubuntu입니다. 다른 환경에서는 수동으로 수정이 필요할 수 있습니다。\033[0m"
    MSG_FUNCTION_SELECT="\033[33m기능을 선택하세요:\033[0m"
    MSG_FUNCTION_INSTALL="\033[32m1) 새 설치\033[0m"
    MSG_FUNCTION_UPDATE="\033[32m2) 바이너리 파일 업데이트\033[0m"
    MSG_SELECT_ARCH="\033[33m아키텍처를 선택하세요:\033[0m"
    MSG_DEP_DOWNLOAD="\033[36m의존 파일을 다운로드 중...\033[0m"
    MSG_DEP_EXTRACT="\033[36m의존 파일을 추출 중...\033[0m"
    MSG_BINARY_UPDATE="\033[36m바이너리 파일을 업데이트 중...\033[0m"
    MSG_JSON_PROMPT="\033[33m구성 파일 옵션을 입력하세요. Enter 키를 누르면 기본값이 사용됩니다:\033[0m"
    MSG_THREADS="\033[33m사용할 스레드 수를 입력하세요 (기본값: 8): \033[0m"
    MSG_POOL_URL="\033[33m풀 URL을 입력하세요 (기본값: stratum+tcp://us.vipor.net:5040): \033[0m"
    MSG_WALLET="\033[33m지갑 주소를 입력하세요 (기본값: RUhKU7cYHkqSfzbHvRfWjyNH7FWHNf6VoA): \033[0m"
    MSG_MINER_NAME="\033[33m마이너 이름을 입력하세요 (기본값: TOKI): \033[0m"
    MSG_SUCCESS="\033[32m설치가 완료되었습니다! 실행 방법: ./start.sh\033[0m"
    MSG_RECONFIG="\033[36m다시 설정하려면 이 스크립트를 다시 실행하거나 ~/config.json 파일을 수동으로 편집하세요.\033[0m"
    MSG_UPDATE_COMPLETE="\033[32m바이너리 파일 업데이트가 완료되었습니다! ./start.sh 를 실행하여 채굴을 시작하세요.\033[0m"
else
    MSG_WELCOME="\033[33mWelcome to TOKI-ccminerARM!\033[0m\n\033[36mThis is a mining software specifically designed for VerusCoin.\033[0m\n\n\033[34mGitHub: https://github.com/TokiZeng/TOKI-ccminerARM\033[0m\n\033[34mYouTube: 熔爐 FORGE THE MAKER\033[0m\n"
    MSG_ENV="\033[36mThe default environment is UserLAnd's Ubuntu. If used elsewhere, modifications are required.\033[0m"
    MSG_FUNCTION_SELECT="\033[33mSelect an option:\033[0m"
    MSG_FUNCTION_INSTALL="\033[32m1) Full Installation\033[0m"
    MSG_FUNCTION_UPDATE="\033[32m2) Update Binary Files\033[0m"
    MSG_SELECT_ARCH="\033[33mPlease select your architecture:\033[0m"
    MSG_DEP_DOWNLOAD="\033[36mDownloading all dependencies...\033[0m"
    MSG_DEP_EXTRACT="\033[36mExtracting dependency files...\033[0m"
    MSG_BINARY_UPDATE="\033[36mUpdating binary files...\033[0m"
    MSG_JSON_PROMPT="\033[33mEnter configuration options. Press Enter to use the default value:\033[0m"
    MSG_THREADS="\033[33mEnter the number of threads to use (default: 8): \033[0m"
    MSG_POOL_URL="\033[33mEnter the pool URL (default: stratum+tcp://us.vipor.net:5040): \033[0m"
    MSG_WALLET="\033[33mEnter your wallet address (default: RUhKU7cYHkqSfzbHvRfWjyNH7FWHNf6VoA): \033[0m"
    MSG_MINER_NAME="\033[33mEnter your miner name (default: TOKI): \033[0m"
    MSG_SUCCESS="\033[32mInstallation complete! Run: ./start.sh\033[0m"
    MSG_RECONFIG="\033[36mTo reconfigure, rerun this script or manually edit ~/config.json\033[0m"
    MSG_UPDATE_COMPLETE="\033[32mBinary file update complete! You can now run ./start.sh to start mining.\033[0m"
fi

# 歡迎信息
echo -e "$MSG_WELCOME"

# 功能選擇
echo -e "\033[33m=============================================================\033[0m"
echo -e "$MSG_FUNCTION_SELECT"
echo -e "$MSG_FUNCTION_INSTALL"
echo -e "$MSG_FUNCTION_UPDATE"
echo -e "\033[33m=============================================================\033[0m"
read -p "Enter your choice (default: Full Installation): " action_choice
action_choice=${action_choice:-1}

# 功能選擇處理
if [[ "$action_choice" == "2" ]]; then
    echo -e "$MSG_SELECT_ARCH"
    echo -e "\033[32m1) A53\033[0m"
    echo -e "\033[32m2) A55\033[0m"
    read -p "Enter your choice (default: A53): " arch_choice
    arch_choice=${arch_choice:-1}

    if [[ "$arch_choice" == "2" ]]; then
        miner_url="https://github.com/TokiZeng/TOKI-ccminerARM/releases/download/latest/ccminerA55.tar.gz"
    else
        miner_url="https://github.com/TokiZeng/TOKI-ccminerARM/releases/download/latest/ccminerA53.tar.gz"
    fi

    echo -e "$MSG_BINARY_UPDATE"
    wget -q "$miner_url" -O /tmp/miner.tar.gz
    tar -xzf /tmp/miner.tar.gz -C ~
    echo -e "$MSG_UPDATE_COMPLETE"
    exit 0
fi


# 全新安裝邏輯
echo -e "$MSG_ENV"

echo -e "$MSG_SELECT_ARCH"
echo -e "\033[32m1) A53\033[0m"
echo -e "\033[32m2) A55\033[0m"
read -p "Enter your choice (default: A53): " arch_choice
arch_choice=${arch_choice:-1}

if [[ "$arch_choice" == "2" ]]; then
    miner_url="https://github.com/TokiZeng/TOKI-ccminerARM/releases/download/latest/ccminerA55.tar.gz"
else
    miner_url="https://github.com/TokiZeng/TOKI-ccminerARM/releases/download/latest/ccminerA53.tar.gz"
fi

echo -e "$MSG_DEP_DOWNLOAD"
wget -q "$miner_url" -O /tmp/miner.tar.gz
wget -q "https://github.com/TokiZeng/TOKI-ccminerARM/releases/download/latest/Dependency.tar.gz" -O /tmp/dependency.tar.gz

echo -e "$MSG_DEP_EXTRACT"
tar -xzf /tmp/miner.tar.gz -C ~
tar -xzf /tmp/dependency.tar.gz -C ~

export LD_LIBRARY_PATH=~/Dependency:$LD_LIBRARY_PATH
echo 'export LD_LIBRARY_PATH=~/Dependency:$LD_LIBRARY_PATH' >> ~/.bashrc

echo -e "$MSG_JSON_PROMPT"

read -p "$(echo -e $MSG_THREADS)" threads
threads=${threads:-8}

read -p "$(echo -e $MSG_POOL_URL)" pool_url
pool_url=${pool_url:-stratum+tcp://ap.vipor.net:5040}

read -p "$(echo -e $MSG_WALLET)" wallet
wallet=${wallet:-RFEgU36ogFdodis6LC4iGayCEqTuAf5LiT}

read -p "$(echo -e $MSG_MINER_NAME)" miner_name
miner_name=${miner_name:-2A0}

cat > ~/config.json <<EOL
{
    "algo": "verus",
    "threads": $threads,
    "cpu-priority": 3,
    "max-log-rate": 60,
    "quiet": false,
    "debug": false,
    "protocol": false,
    "url": "$pool_url",
    "user": "$wallet.$miner_name",
    "pass": "x"
}
EOL

cat > ~/start.sh <<EOL
#!/bin/bash

export LD_LIBRARY_PATH=~/Dependency:$LD_LIBRARY_PATH

./ccminer -c config.json
EOL

chmod +x ~/start.sh

echo -e "$MSG_SUCCESS"
echo -e "$MSG_RECONFIG"