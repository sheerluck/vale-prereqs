FROM gentoo/portage:20220619 as portage
FROM gentoo/stage3:20220619
# copy the entire portage volume in
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo

ARG FEATURES="-ipc-sandbox -mount-sandbox -network-sandbox -pid-sandbox"
