// Copyright 2020 PingCAP, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// See the License for the specific language governing permissions and
// limitations under the License.

package spec

import (
	"fmt"
	"strings"
)

// TiDBComponentVersion maps the TiDB version to the third components binding version
// Empty version should be treated as the last stable one
func TiDBComponentVersion(comp, version string) string {
	switch comp {
	case ComponentAlertmanager,
		ComponentBlackboxExporter,
		ComponentNodeExporter,
		ComponentCheckCollector,
		ComponentSpark,
		ComponentTiSpark,
		ComponentTiKVCDC: // TiKV-CDC use individual version.
		return ""
	case ComponentTiProxy:
		return "nightly"
	default:
		return version
	}
}

// ComponentSubDir maps a component with version to a subdir if needed
func ComponentSubDir(comp, version string) string {
	if comp == ComponentSpark {
		return fmt.Sprintf("spark-%s-bin-hadoop2.7", strings.TrimLeft(version, "v"))
	}
	return ""
}
