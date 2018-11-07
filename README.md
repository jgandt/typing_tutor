This is a very basic typing tutor for number and symbols on a US keyboard.

I used to have trouble typing number and symbols without visually checking the keyboard. One day I set out to correct that. To my dismay, I was unable to find any typing tutors that tested only number and symbols.

So I built my own.

This tutor forces home-row typing between every number or symbol. The idea is to build the home-row-to-number muscle memory.

Prerequisites:
* ruby installed
* this repository cloned locally and changed to its root directory

Execution:
* bundle install
* ruby run_tutor.rb

This tutor is actually extremely flexible. You can specify custom typing sets by changing the arrays in `finger_key_mapping.yml`.
* The first character in the array is the "home row key" for that set of characters.
* The remaining characters are all of the other keys for that finger.

Thus the array for your right index finger is:
`['j', '6', '^', '7', '&']`
"j" is the home row key. The rest of the characters are the other numbers and symbols that your right index finger is expected to type.

Please note that I may have modified the mappings from "standard" mappings for my own comfort. Feel free to change these mappings as you wish.

Feel free to send me feedback via github issues.
