function laro
 pushd (yq ".recentrepos | @tsv" ~/.config/lazygit/state.yml | sed -e "s/\"//g" -e "s/\\\\t/\n/g" | fzfalias lazygit-repos --preview "onefetch {}"); lazygit; popd; 
end
