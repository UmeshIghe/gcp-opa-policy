package terraform.google_compute_instance_template


import data.terraform.util.changes_by_type


resource_type := "google_compute_instance_template" 


deny[reason] {
  changeset := changes_by_type[resource_type][_]
 
  r = changeset.change.after.confidential_instance_config[_]
	r.enable_confidential_compute == false
	reason := sprintf("enable_confidential_compute value must not be %v", [r.enable_confidential_compute])
   
}



