
#查找pod模块名称
curPath=$(pwd)
sdkName=$(find . -name "*.podspec")
sdkName="${sdkName#./}"
sdkName="${sdkName%.podspec}"
echo "识别:sdkName=${sdkName}"

##查找spec库名称
#cd ~/.cocoapods/repos
#specPath="$(pwd)"
#for doc in `ls "${specPath}"`
#do
#    if [ "${doc}" == "master" ]
#    then
#        continue
#    else
#    	for doc1 in `ls "${specPath}/${doc}"`
#    	do
#    		if [ "${doc1}" == "${sdkName}" ]; then
#    			specName="${doc}"
#    			echo "识别:specName=${specName}"
#                break
#    		fi
#    	done
#    fi
#done

#spec库名称
specName='XHSpecs'


#开始打标签
cd "${curPath}"
echo "请输入此次tag :"
read versionTag

# echo "请输入此次提交备注 :"
# read gitcm

echo "打标签:{$sdkName}:开始"
sed -i "" "s/s.version          =.*/s.version          = '$versionTag'/g" $sdkName.podspec

git add $sdkName.podspec
#git add .
git commit -m "打标签:${versionTag}"
git push #origin
# git push win7

git tag $versionTag

git push --tags #origin
# git push --tags win7
echo "打标签{$sdkName}:完成"

#开始处理spec库
echo "处理spec库:开始"
cd ~/.cocoapods/repos/$specName
git pull --rebase=true

mkdir ~/.cocoapods/repos/$specName/$sdkName/$versionTag
cp $curPath/$sdkName.podspec ~/.cocoapods/repos/$specName/$sdkName/$versionTag/

git add $sdkName/$versionTag/$sdkName.podspec
git commit -m "[更新]$sdkName,tag:$versionTag,"
git push

echo "处理spec库:完成"



