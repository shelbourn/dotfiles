function aws_login_1 --description 'Automatically executes the entire login process for AWS code artifact on US-WEST-1. Needed for working on Hippo'
    aws_dock
    loginwest1
    loginwest2
    pypi
end
