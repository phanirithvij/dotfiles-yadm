package main

import (
	"fmt"
	"github.com/shirou/gopsutil/v3/process"
	"os"
)

func die(err error) {
	if err != nil {
		panic(err)
	}
}

func main() {
	parentpid := os.Getppid()
	procIn, err := process.NewProcess(int32(parentpid))
	die(err)
	name, err := procIn.Name()
	die(err)
	fmt.Printf("%s", name)
}
