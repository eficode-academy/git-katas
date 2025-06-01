#!/bin/bash

SILENT=false
MODE="setup" # Default mode

GREEN='\033[0;32m'
RED='\033[0;31m'
RC='\033[0m' # Reset Color

# Parse arguments
while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -s|--silent)
            SILENT=true
            shift # past argument
            ;;
        clean)
            MODE="clean"
            shift # past argument
            ;;
        *)
            # Unknown option
            echo -e "${RED}Unknown option: $1${RC}"
            exit 1
            ;;
    esac
done

# Find all directories, excluding .git and .github
find . -maxdepth 2 -type d \( -name ".git" -o -name ".github" \) -prune -o -print0 | while IFS= read -r -d $'\0' dir_path; do
    if [ "$dir_path" == "." ]; then # Skip the root directory itself
        continue
    fi

    project_dir=$(basename "$dir_path")

    if [ "$MODE" == "setup" ]; then
        # Try setup.sh first
        if [ -f "$dir_path/setup.sh" ]; then
            if [ "$SILENT" == "false" ]; then
                echo "setup $project_dir (using setup.sh)"
            fi
            (cd "$dir_path" && bash "./setup.sh" >/dev/null 2>&1 || true)
        # If setup.sh is not found, try setup.ps1
        elif [ -f "$dir_path/setup.ps1" ]; then
            if [ "$SILENT" == "false" ]; then
                echo "setup $project_dir (using setup.ps1)"
            fi
            if command -v pwsh &> /dev/null; then
                (cd "$dir_path" && pwsh "./setup.ps1" >/dev/null 2>&1 || true)
            elif command -v powershell &> /dev/null; then
                (cd "$dir_path" && powershell "./setup.ps1" >/dev/null 2>&1 || true)
            elif [ "$SILENT" == "false" ]; then
                echo -e "${RED}Skipping setup.ps1 for $project_dir: Neither pwsh nor powershell command found.${RC}"
            fi
        fi
    elif [ "$MODE" == "clean" ]; then
        if [ -d "$dir_path/exercise" ]; then
            if [ "$SILENT" == "false" ]; then
                echo "Cleaning $project_dir (removing exercise directory)"
            fi
            rm -rf "$dir_path/exercise"
        elif [ -d "$dir_path" ] && [ "$project_dir" == "exercise" ]; then 
            parent_dir=$(dirname "$dir_path")
            parent_name=$(basename "$parent_dir")
            if [ "$SILENT" == "false" ]; then
                echo "Cleaning $parent_name (removing exercise directory $dir_path)"
            fi
             rm -rf "$dir_path"
        fi
    fi
done

if [ "$SILENT" == "false" ]; then
    if [ "$MODE" == "setup" ]; then
        echo -e "${GREEN}Finished setup${RC}"
    elif [ "$MODE" == "clean" ]; then
        echo -e "${GREEN}Finished clean${RC}"
    fi
fi