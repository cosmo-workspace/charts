SEM_VERSION ?= 0.16.8

MANAGER_SEM_VERSION ?= $(SEM_VERSION)
MANAGER_VERSION     ?= v$(MANAGER_SEM_VERSION)

DASHBOARD_SEM_VERSION ?= $(SEM_VERSION)
DASHBOARD_VERSION     ?= $(DASHBOARD_SEM_VERSION)

# Update version in Chart.yaml
update-version:
	sed -i.bk \
		-e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/appVersion: ${MANAGER_VERSION}/" \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/version: ${MANAGER_SEM_VERSION}/" \
		stable/cosmo-controller-manager/Chart.yaml
	sed -i.bk \
		-e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/appVersion: ${DASHBOARD_VERSION}/" \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/version: ${DASHBOARD_SEM_VERSION}/" \
		stable/cosmo-dashboard/Chart.yaml
