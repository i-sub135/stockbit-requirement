package main

import (
	"fmt"
	"regexp"
	"strings"
)

func main() {
	s := "String Match ( bracket ) "
	d := findFirstStringInBracket(s)
	fmt.Println("Old = >\n", d)
	fmt.Println()
	fmt.Println("New =>")
	regg(s)
}

func findFirstStringInBracket(str string) string {
	if len(str) > 0 {

		indexFirstBracketFound := strings.Index(str, "(")

		if indexFirstBracketFound >= 0 {

			runes := []rune(str)
			wordsAfterFirstBracket := string(runes[indexFirstBracketFound:len(str)])

			indexClosingBracketFound := strings.Index(wordsAfterFirstBracket, ")")

			if indexClosingBracketFound >= 0 {

				runes := []rune(wordsAfterFirstBracket)
				return string(runes[1 : indexClosingBracketFound-1])

			} else {
				return ""
			}

		} else {

			return ""

		}

	} else {

		return ""

	}
	// return ""
}

func regg(kata string) {
	re := regexp.MustCompile(`(?s)\((.*)\)`)

	for _, elm := range re.FindAllString(kata, -1) {
		elm = strings.Trim(elm, "(")
		elm = strings.Trim(elm, ")")
		fmt.Println(elm)
	}
}
