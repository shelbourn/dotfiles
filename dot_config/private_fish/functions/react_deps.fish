function react_deps --description 'Installs/updates Hippo React dependencies. Must be executed from the /static/js/react directory.'
    react
    echo "Active directory changed to /static/js/react"
    yarn login:ca
    echo "AWS CA login successful"
    yarn install --immutable
    hippo
end
