set -e


cur_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source /home/maojingwei/project/common_tools_for_centos/myhead.sh condaenv $cur_dir 3.8.16

shell_name=$0
if [ "${shell_name##*/}" == "jwmaoR.sh" ]; then
    echo "start installing requirements"
    python -m pip install torch==1.13.1 torchvision==0.14.1 --extra-index-url https://download.pytorch.org/whl/cu116
    python -m pip install ftfy regex tqdm
    python -m pip install git+https://github.com/openai/CLIP.git
fi
