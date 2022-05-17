package terraform.google_service_account

import data.terraform.util.changes_by_type



resource_type := "google_service_account"

deny[msg] { 
    changeset := changes_by_type[resource_type][_] 
    check = changeset.name
    check == "compute_engine_service_account"
    msg := sprintf("This is just for testing :: %-40s ", [check])

}

