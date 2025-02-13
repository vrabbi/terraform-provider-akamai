// Copyright (c) HashiCorp, Inc.

package property

import "github.com/akamai/terraform-provider-akamai/v7/pkg/providers/registry"

// SubproviderName defines name of the property subprovider
const SubproviderName = "property"

func init() {
	registry.RegisterSubprovider(NewSubprovider())
}
