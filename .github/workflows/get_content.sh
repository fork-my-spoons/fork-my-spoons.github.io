declare -a arr=("people-in-space"
                "jira-issues"
                "github-activity"
                "gitlab-merge-requests"
                "take-a-break"
                "spotify-mini-player:/spotify:Spotify"
                "spotify-search-and-play:/spotify:Spotify"
                "spotify-current-song:/spotify:Spotify"
                )

for i in "${arr[@]}"
do
  IFS=':' read -r -a array <<< "$i"
  file_name="${array[0]}"
  folder_name="${array[1]}"
  title="${array[2]}"

  mkdir ./spoons/"$folder_name"
  svn --force export "https://github.com/fork-my-spoons/${file_name}.spoon/trunk/README.md" "./spoons${folder_name}/${file_name}.md"
  a=$(echo "$file_name" | tr "-" " ")

  if [ -z "$folder_name" ]
  then
    sed -i "1s/^/---\nlayout: default\ntitle: $a\nnav_order: 2\n---\n/" ./spoons"${folder_name}/${file_name}".md
  else
    sed -i "1s/^/---\nlayout: default\ntitle: $a\nnav_order: 2\nparent: $title\n---\n/" ./spoons"${folder_name}/${file_name}".md
  fi

done
