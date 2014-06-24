1. line del
sed '1d' file //remove first line
sed '1,2d' file //remove 1-2 line
sed '$d' file //remove last line
sed '4,$d' file //remove 4-last line

2. line display
sed -n '1p' file //display first line
sed -n '$p' file //display last line
sed -n '3,5p' file //displa 3-5 line
sed -n '2,$p' file //display 2-last line

3. line search
sed -n '/good/p' file //search all lines include 'good'

4. add line
sed '1a drink tea' file //appand a line with 'drink tea' after first line 
sed '1i thank you' file //insert a line with 'thank you' befor first line
sed '1,3a ok' file //appand a line with 'ok' after 1-3 line(each line)
sed '1a, hello1\nhello2' file //add multe lines after first line, use line break \n

5. line replace
sed '1c hey' file //replace first line with 'hey'
sed '1,2c hey' file //replace 1-2 line wihh 'hey'

6. string replace
sed 's/good/bad/g' file //replace 'good' with 'bad' from all lines
sed 's/love//g' file //remove 'love' from all lines

7. will change current file with opion '-i' 
sed -i '$a bye' file //add 'bye' after the last line, NOTE: this will be wrote in origin file

8. sed test
