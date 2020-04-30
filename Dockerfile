# See https://github.com/gentoo/gentoo-docker-images/blob/master/README.md#using-the-portage-container-in-a-multi-stage-build
FROM gentoo/portage:latest as portage

FROM gentoo/stage3-amd64:latest

COPY --from=portage /var/db/repost/gentoo /var/db/repo/gentoo