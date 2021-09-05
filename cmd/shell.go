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

package cmd

import (
	"fmt"
	"math"
	"os"
	"os/exec"
	"time"

	"github.com/pingcap/tiup/pkg/environment"
	"github.com/pingcap/tiup/pkg/localdata"
	"github.com/pingcap/tiup/pkg/telemetry"
	"github.com/spf13/cobra"
)

type shellOptions struct {
	t bool
}

func newShellCmd() *cobra.Command {
	var opt shellOptions
	cmd := &cobra.Command{
		Use:   "shell [component]",
		Short: "Enter a shell that can run components directly",
		Long: `Enter a shell that can run components directly

  # Enter shell
  tiup list --installed

  # only export environment varible
  tiup list tidb --installed`,
		SilenceUsage:  true,
		SilenceErrors: true,
		RunE: func(cmd *cobra.Command, args []string) error {
			teleCommand = cmd.CommandPath()
			env := environment.GlobalEnv()
			profile := env.Profile()
			tiupWd, _ := os.Getwd()
			instanceDir := os.Getenv(localdata.EnvNameInstanceDataDir)
			tag := ""
			if instanceDir == "" {
				// Generate a tag for current instance if the tag doesn't specified
				if tag == "" {
					tag = base62Tag()
				}
				instanceDir = env.LocalPath(localdata.DataParentDir, tag)
			}

			teleMeta, _, _ := telemetry.GetMeta(env)
			if !opt.t {
				envs := []string{
					fmt.Sprintf("%s=%s", localdata.EnvNameHome, profile.Root()),
					fmt.Sprintf("%s=%s", localdata.EnvNameWorkDir, tiupWd),
					fmt.Sprintf("%s=%s", localdata.EnvNameInstanceDataDir, instanceDir),
					fmt.Sprintf("%s=%s", localdata.EnvNameTelemetryStatus, teleMeta.Status),
					fmt.Sprintf("%s=%s", localdata.EnvNameTelemetryUUID, teleMeta.UUID),
					fmt.Sprintf("%s=%s", localdata.EnvNameTelemetrySecret, teleMeta.Secret),
					fmt.Sprintf("%s=%s", localdata.EnvTag, tag),
				}
				envs = append(envs, os.Environ()...)

				c := exec.Command("/usr/bin/bash")
				c.Env = envs
				c.Stdin = os.Stdin
				c.Stdout = os.Stdout
				c.Stderr = os.Stderr
				c.Dir = tiupWd
				c.SysProcAttr = nil
				_ = c.Start()
				_ = c.Wait()
			}
			return nil
		},
	}

	cmd.Flags().BoolVar(&opt.t, "no-newshell", false, "List installed components only.")

	return cmd
}

func base62Tag() string {
	const base = 62
	const sets = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	b := make([]byte, 0)
	num := time.Now().UnixNano() / int64(time.Millisecond)
	for num > 0 {
		r := math.Mod(float64(num), float64(base))
		num /= base
		b = append([]byte{sets[int(r)]}, b...)
	}
	return string(b)
}

/*
type shellResult struct {
	header   string
	cmpTable [][]string
}

func (lr *shellResult) print() {
	if lr == nil {
		return
	}
	fmt.Printf(lr.header)
	tui.PrintTable(lr.cmpTable, true)
}

func showComponentList2(env *environment.Environment, opt listOptions) (*shellResult, error) {
	return nil, nil
}

func showComponentVersions2(env *environment.Environment, component string, opt listOptions) (*shellResult, error) {
	return nil, nil
}
*/
