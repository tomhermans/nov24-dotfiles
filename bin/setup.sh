#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath -q .)"
DESTINATION="$(realpath -q ~/bin)"

info "Setting up user bin..."

substep_info "Creating user bin folder..."
if [ -z "$DESTINATION" ]; then
    mkdir ~/bin
    DESTINATION="$(realpath -q ~/bin)"
else
    mkdir -p "$DESTINATION"
fi

find * -not -name "$(basename ${0})" -type f | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
clear_broken_symlinks "$DESTINATION"

success "Finished setting up user bin."