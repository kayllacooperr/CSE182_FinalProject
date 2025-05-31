num_seqs(){
    grep "discordant        chr24:" $1 > chr24.txt
    grep "discordant        chr23:" $1 > chr23.txt
    grep "discordant        chr22:" $1 > chr22.txt
    grep "discordant        chr21:" $1 > chr21.txt
    grep "discordant        chr20:" $1 > chr20.txt
    grep "discordant        chr19:" $1 > chr19.txt
    grep "discordant        chr18:" $1 > chr18.txt
    grep "discordant        chr17:" $1 > chr17.txt
    grep "discordant        chr16:" $1 > chr16.txt 
    grep "discordant        chr15:" $1 > chr15.txt
    grep "discordant        chr14:" $1 > chr14.txt
    grep "discordant        chr13:" $1 > chr13.txt
    grep "discordant        chr12:" $1 > chr12.txt
    grep "discordant        chr11:" $1 > chr11.txt
    grep "discordant        chr10:" $1 > chr10.txt
    grep "discordant        chr9:" $1 > chr9.txt
    grep "discordant        chr8:" $1 > chr8.txt
    grep "discordant        chr7:" $1 > chr7.txt
    grep "discordant        chr6:" $1 > chr6.txt
    grep "discordant        chr5:" $1 > chr5.txt
    grep "discordant        chr4:" $1 > chr4.txt 
    grep "discordant        chr3:" $1 > chr3.txt
    grep "discordant        chr2:" $1 > chr2.txt
    grep "discordant        chr1:" $1 > chr1.txt

}
num_seqs $@

