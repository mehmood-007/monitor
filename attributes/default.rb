override["sensu"]["use_embedded_ruby"] = true

default["monitor"]["master_address"] = nil

default["monitor"]["environment_aware_search"] = false
default["monitor"]["use_local_ipv4"] = false

default["monitor"]["sensu_plugin_version"] = "0.1.6"

default["monitor"]["additional_client_attributes"] = Mash.new

default["monitor"]["default_handlers"] = []
default["monitor"]["metric_handlers"] = []
