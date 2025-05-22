function check_sso --description 'Checks the SSO auth status for a static list (defined in function)'
    # Define the list of AWS profile names (assumed to be your SSO role names)
    set aws_profiles thor_admin DockerAccess DeveloperAccess

    if not command -s aws >/dev/null
        echo "AWS CLI not found. Skipping SSO status check."
        return 1 # Exit function if aws cli is not found
    end

    echo -----------------------------------------------------
    echo "Checking AWS SSO Authentication Status for Profiles:"
    echo -----------------------------------------------------
    echo "" # For a blank line

    # Loop through each defined profile
    for profile_name in $aws_profiles
        # Attempt to get caller identity for the profile.
        # We suppress both stdout and stderr (>/dev/null 2>&1) because we only care
        # about the exit status of the command to determine authentication.
        if aws sts get-caller-identity --profile $profile_name >/dev/null 2>&1
            # If the command succeeds (exit status 0), the profile is authenticated.
            echo "$profile_name role ~~~> AUTHENTICATED"
        else
            # If the command fails (non-zero exit status), the profile is not authenticated.
            echo "$profile_name role ~~~> NOT AUTHENTICATED"
        end
    end

    echo "" # For a blank line
    echo -----------------------------------------------------
    echo "Status check complete."
    echo -----------------------------------------------------

end
