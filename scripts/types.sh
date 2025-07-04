
if [[ -d "@types" ]] && [[ ! "$@" =~ ".* \-(\-)f(orce).*" ]]; then
    echo "Types skipped(already built). To force-build, run \`types\`"
    exit 0
fi


echo "Building types, this can take long..."
npx @ts-for-gir/cli generate --ignoreVersionConflicts
