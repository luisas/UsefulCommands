#!/bin/bash
file=$1

ofile1="singularSize.csv";
ofile2="summarizedSize.csv";

while read line; do


  id1size="";
  id2size="";
  counter=0;
  sum=0;
  for token in $(echo $line | tr " " "\n")
    do
      if (( $counter == 0 ));
      then
        size=$(aws s3 ls $token | awk '{print $3}')
        sum=$size
        echo $token","$size >> $ofile1
      elif (( $counter == 1 ));
      then
        size=$(aws s3 ls $token | awk '{print $3}')
        let sum=$(($sum+$size))
        echo $token","$size >> $ofile1
      else
        echo $token","$sum >> $ofile2
      fi
      let counter=$(($counter+1))

    done
done < $file
