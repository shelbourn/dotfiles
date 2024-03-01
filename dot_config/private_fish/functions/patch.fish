function patch --description 'Applies the Git patch passed in as an argument'
# Assigns the path of the patch to apply to a local var
set patch_to_apply $argv

git apply $patch_to_apply
echo "Git patch successfully applied"
end
