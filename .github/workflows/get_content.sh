declare -a arr=("people-in-space"
                "jira-issues"
                "github-activity"
                "gitlab-merge-requests"
                "take-a-break"
                "spotify-mini-player"
                "spotify-search-and-play"
                "spotify-current-song"
                )

for i in "${arr[@]}"
do
  svn --force export https://github.com/fork-my-spoons/"$i".spoon/trunk/README.md ./spoons/"$i".md
  a=$(echo "$i" | tr "-" " ")

  sed -i "1s/^/---\nlayout: default\ntitle: $a\nnav_order: 2\n---\n/" ./spoons/"$i".md
done
