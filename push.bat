::设置模块名字
SET ToolName=upm-com.lonestar.empty
::设置模块版本
SET Tag=0.3.0
SET BranchName=%ToolName%-%Tag%
::设置模块源路径
SET ToolAssetPath=Packages/com.lonestar.empty

::此命令会创建一个ToolName的分支，并同步ToolAssetPath下的内容
git subtree split -P %ToolAssetPath% --branch %BranchName%
:: 在ToolName分支设置标签ToolVersion节点
git tag %Tag% %BranchName%

:: 推送到远端
git push origin %BranchName% --tags
pause