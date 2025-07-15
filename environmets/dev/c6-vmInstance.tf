module "myvminstance" {
  source          = "../../modules/vminstance"
  vminstance_name = "${local.name}-myapp1"
  machine_type    = var.machine_type
  zone            = "us-central1-a"
  subnetwork      = google_compute_subnetwork.mysubnet.id
  firewall_tags   = [tolist(google_compute_firewall.fw_ssh.target_tags)[0], tolist(google_compute_firewall.fw_http.target_tags)[0]]
  #google_compute_firewall.fw_ssh.target_tags[0]
}

#When u use default inside the variable section and pass a value or empty string will be there then it will be optional attribute inside a module
#When u don't use default inside the variable section then it will be required attribute inside a value