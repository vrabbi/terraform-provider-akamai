// Copyright (c) HashiCorp, Inc.

package datastream

import "github.com/akamai/terraform-provider-akamai/v7/pkg/providers/registry"

func init() {
	registry.RegisterSubprovider(NewSubprovider())
}
