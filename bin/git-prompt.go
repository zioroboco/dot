///usr/bin/true; exec /usr/bin/env go run $0 $@

package main

import (
	"os"
	"os/exec"
)

func main() {
	var prompt []byte

	commit, err_not_a_repo := exec.Command("git", "rev-parse", "HEAD").Output()

	if err_not_a_repo != nil {
		os.Exit(0)
	}

	branch, _ := exec.Command("git", "branch", "--show-current").Output()

	if len(branch) > 0 {
		var fmt_branch = branch[:len(branch)-1] // trim newline
		prompt = append(prompt, fmt_branch...)
	} else {
		var fmt_commit = commit[:6]
		prompt = append(prompt, fmt_commit...)
	}

	status, _ := exec.Command("git", "status", "--porcelain").Output()

	if len(status) > 0 {
		prompt = append(prompt, '*')
	}

	os.Stdout.Write(prompt)
}
