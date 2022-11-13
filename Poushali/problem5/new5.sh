#!/bin/bash
  # #making a folder
  # mkdir -p "File Structure"
  # cd "File Structure"
  
while IFS="," read -r column1 column2 column3 column4 column5 column6 column7 column8 column9 column10 column11
do
  echo "Card Type Code: $column1"
  echo "Card Type Full Name: $column2"
  echo "Issuing Bank: $column3"
  echo "Card Number: $column4"
  echo "Card Holder's Name: $column5"
  echo "CVV/CVV2: $column6"
  echo "Issue Date: $column7"
  echo "Expiry Date: $column8"
  echo "Billing Date: $column9"
echo "Billing Date: $column9"
  echo "Card PIN: $column10"
  echo "Credit Limit: $column11"
  
  #making the folders and going into resp. folders
  mkdir -p "$column2"
  cd "$column2"
  mkdir -p "$column3"
  cd "$column3"
  
  #expired or active
  year="${column8:3:7}"
  month="${column8:0:2}"
if [ $year -gt $(date +'%Y') ]
then 
	ac_or_exp='active'
elif [ $year == $(date +'%Y') && $month -gt $(date +'%m') ]
then 
        ac_or_exp='active'
else
	ac_or_exp='expired'
fi
#make the file and insert date
  {
echo "Card Type Code: $column1"
echo "Card Type Full Name: $column2"
echo "Issuing Bank: $column3"
echo "Card Number: $column4"
echo "Card Holder's Name: $column5"
echo "CVV/CVV2: $column6"
echo "Issue Date: $column7"
echo "Expiry Date: $column8"
echo "Billing Date: $column9"
echo "Card PIN: $column10"
echo "Credit Limit: $column11"
    
} > "$column4.$ac_or_exp".txt

cd ..
cd ..

done < <(tail -n +2 '100 CC Records.csv')

usdfunction(){
    usd=`echo $1 | sed
usdfunction(){
    usd=`echo $1 | sed ':a;s/\B[0-9]\{3\}\>/,&/;ta' | sed 's/^/$/' | sed 's/$/ USD/'`
}
