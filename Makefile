SEM_VERSION ?= 0.17.0

MANAGER_SEM_VERSION ?= $(SEM_VERSION)

DASHBOARD_SEM_VERSION ?= $(SEM_VERSION)

# Update version in Chart.yaml
update-version:
	sed -i.bk \
		-e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/appVersion: v${MANAGER_SEM_VERSION}/" \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/version: ${MANAGER_SEM_VERSION}/" \
		charts/cosmo-controller-manager/Chart.yaml
	sed -i.bk \
		-e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/appVersion: v${DASHBOARD_SEM_VERSION}/" \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/version: ${DASHBOARD_SEM_VERSION}/" \
		charts/cosmo-dashboard/Chart.yaml
