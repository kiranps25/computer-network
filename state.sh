#!/bin/bash


declare -A state_languages=(
    ["andhra pradesh"]="Telugu"
    ["tamil nadu"]="Tamil"
    ["karnataka"]="Kannada"
    ["kerala"]="Malayalam"
    ["bihar"]="Hindi"
    ["assam"]="Assamese"
    ["himachal pradesh"]="Hindi"
    ["laksydeep"]="malayalam"
)


read -p "Enter the name of an Indian state: " input_state


input_state_lower=$(echo "$input_state" | tr '[:upper:]' '[:lower:]')


if [[ -n "${state_languages[$input_state_lower]}" ]]; then
    main_lang="${state_languages[$input_state_lower]}"
    states_with_same_lang=()


    for state in "${!state_languages[@]}"; do
        if [[ "${state_languages[$state]}" == "$main_lang" ]]; then
            states_with_same_lang+=("$(echo "$state" | sed -E 's/(^| )(\w)/\U\2/g')")
        fi
    done

    echo "States with main language '$main_lang':"
    IFS='|' echo "${states_with_same_lang[*]}"
else
    echo "Unknown"
fi

