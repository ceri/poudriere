FLAVOR_DEFAULT_ALL=no
FLAVOR_DEFAULT=-

LISTPORTS="misc/foo-default-IGNORED@FLAV"
OVERLAYS="overlay omnibus"
. common.bulk.sh

do_bulk -n ${LISTPORTS}
assert 0 $? "Bulk should pass"

EXPECTED_IGNORED=
EXPECTED_SKIPPED=
EXPECTED_QUEUED="misc/foo-default-IGNORED@FLAV ports-mgmt/pkg"
EXPECTED_LISTED="misc/foo-default-IGNORED@FLAV"

assert_bulk_queue_and_stats
