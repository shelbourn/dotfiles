function patch_create --description 'Creates a git patch file using the provided git SHA and outputs it to ~/Desktop'
# Captures the git SHA passed in as an arg and assigns it to a local var
set git_sha $argv

# Creates the git patch file using the provided git_sha
git format-patch -1 $git_sha -o ~/Desktop
echo "git patch file created successfully and output to ~/Desktop"
end
