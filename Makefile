SEM_VERSION ?= 1.0.0
VERSION ?= v$(SEM_VERSION)

MANAGER_VERSION   ?= $(VERSION)
DASHBOARD_VERSION ?= $(VERSION)

# Update version in Chart.yaml
update-version:
	sed -i.bk -e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/appVersion: ${MANAGER_VERSION}/" \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/version: ${SEM_VERSION}/" \
		stable/cosmo-controller-manager/Chart.yaml
	sed -i.bk -e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/appVersion: ${DASHBOARD_VERSION}/" \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/version: ${SEM_VERSION}/" \
		stable/cosmo-dashboard/Chart.yaml
