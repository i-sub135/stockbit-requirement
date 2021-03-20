package main

import (
	"fmt"
	"sort"
	"strings"
)

var (
	kataKata = []string{"kita", "atik", "tika", "aku", "kia", "makan", "kua"}
)

func Anagram() {
	list := make(map[string][]string)

	for _, kata := range kataKata {
		key := sortKata(kata)
		list[key] = append(list[key], kata)
	}

	for _, katas := range list {

		var l []string
		for _, w := range katas {
			l = append(l, w)
		}
		fmt.Println(l)
	}
}

func sortKata(k string) string {
	s := strings.Split(k, "")
	sort.Strings(s)

	return strings.Join(s, "")
}

func main() {
	Anagram()
}
