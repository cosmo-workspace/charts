# Chart version
MANAGER_SEM_VERSION   ?= 0.3.0
DASHBOARD_SEM_VERSION ?= 0.3.0

# Container Image version
MANAGER_APP_VERSION   ?= v0.3.0
DASHBOARD_APP_VERSION ?= v0.3.0

# Whether as prerelease
PRERELEASE ?= false

# Update version in Chart.yaml
update-version:
	sed -i.bk \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+.*/version: ${MANAGER_SEM_VERSION}/" \
		-e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+.*/appVersion: ${MANAGER_APP_VERSION}/" \
		-e 's;artifacthub.io/prerelease: "\(true\|false\)";artifacthub.io/prerelease: "$(PRERELEASE)";' \
		charts/cosmo-controller-manager/Chart.yaml
	sed -i.bk \
		-e "s/version: [0-9]\+.[0-9]\+.[0-9]\+.*/version: ${DASHBOARD_SEM_VERSION}/" \
		-e "s/appVersion: v[0-9]\+.[0-9]\+.[0-9]\+.*/appVersion: ${DASHBOARD_APP_VERSION}/" \
		-e 's;artifacthub.io/prerelease: "\(true\|false\)";artifacthub.io/prerelease: "$(PRERELEASE)";' \
		charts/cosmo-dashboard/Chart.yaml
