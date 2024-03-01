function thor_patch --description 'Applies a Git patch file to the working directory to configure Hippo local to point to Thor local'
    git apply ~/Desktop/Working\ Files/Git\ PATCH\ Files/THOR_DB_LOCAL_CONFIG.patch
    echo "Git patch applied successfully"
end
