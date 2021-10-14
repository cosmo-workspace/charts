CHART_SEM_VERSION ?= 0.1.0
APP_VERSION ?= v0.1.0

MANAGER_SEM_VERSION ?= $(CHART_SEM_VERSION)
DASHBOARD_SEM_VERSION ?= $(CHART_SEM_VERSION)

MANAGER_APP_VERSION ?= $(APP_VERSION)
DASHBOARD_APP_VERSION ?= $(APP_VERSION)

# Update version in Chart.yaml
update-version:
	sed -i.bk \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/version: ${MANAGER_SEM_VERSION}/" \
		-e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/appVersion: ${MANAGER_APP_VERSION}/" \
		charts/cosmo-controller-manager/Chart.yaml
	sed -i.bk \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/version: ${DASHBOARD_SEM_VERSION}/" \
		-e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+[-alpha]*[-beta]*/appVersion: ${DASHBOARD_APP_VERSION}/" \
		charts/cosmo-dashboard/Chart.yaml
