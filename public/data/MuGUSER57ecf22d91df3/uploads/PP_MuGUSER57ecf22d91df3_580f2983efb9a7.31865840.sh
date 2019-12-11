#!/bin/bash
# generated by MuG VRE
cd /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/.tmp

# Running BAM preprocessing ...

echo '# Start time:' $(date) > /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/PP_MuGUSER57ecf22d91df3_580f2983efb9a7.31865840.log

echo "#Sorting BAM file..." >  /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/PP_MuGUSER57ecf22d91df3_580f2983efb9a7.31865840.log
/orozco/services/Rdata/Web/apps/samtools/bin/samtools sort /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/120502_35.bam -o /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/.tmp/120502_35.bam >> /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/PP_MuGUSER57ecf22d91df3_580f2983efb9a7.31865840.log 2>&1
echo '# End time:' $(date) >> /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/PP_MuGUSER57ecf22d91df3_580f2983efb9a7.31865840.log

if [ ! -f  /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/.tmp/120502_35.bam ]; then
	echo 'Error sorting /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/120502_35.bam, aborting' >> /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/PP_MuGUSER57ecf22d91df3_580f2983efb9a7.31865840.log
	exit 2
fi
mv /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/.tmp/120502_35.bam /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/120502_35.bam

echo "# Indexing BAM file..." >> /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/PP_MuGUSER57ecf22d91df3_580f2983efb9a7.31865840.log
/orozco/services/Rdata/Web/apps/samtools/bin/samtools index /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/120502_35.bam >> /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/PP_MuGUSER57ecf22d91df3_580f2983efb9a7.31865840.log
echo '# End time:' $(date) >> /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/PP_MuGUSER57ecf22d91df3_580f2983efb9a7.31865840.log

if [ ! -f  /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/120502_35.bam.bai ]; then
	echo 'Error indexing /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/120502_35.bam, aborting. Is the BAM file sorted? If not, mark it as "unsorted"' >> /orozco/services/Rdata/MuG/MuG_userdata//MuGUSER57ecf22d91df3/uploads/PP_MuGUSER57ecf22d91df3_580f2983efb9a7.31865840.log
	exit 2
fi