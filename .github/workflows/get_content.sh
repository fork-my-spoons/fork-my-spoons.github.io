declare -a arr=("people-in-space"
                "jira-issues"
                "github-activity"
                "gitlab-merge-requests"
                "take-a-break"
                "spotify-mini-player:/spotify"
                "spotify-search-and-play:/spotify"
                "spotify-current-song:/spotify"
                )

for i in "${arr[@]}"
do
  IFS=':' read -r -a array <<< "$i"
  folder_name="${array[1]}"
  file_name="${array[0]}"

  svn --force export "https://github.com/fork-my-spoons/${file_name}.spoon/trunk/README.md" "./spoons${folder_name}/${file_name}.md"
  a=$(echo "$i" | tr "-" " ")

  sed -i "1s/^/---\nlayout: default\ntitle: $a\nnav_order: 2\n---\n/" ./spoons/"$i".md
done
