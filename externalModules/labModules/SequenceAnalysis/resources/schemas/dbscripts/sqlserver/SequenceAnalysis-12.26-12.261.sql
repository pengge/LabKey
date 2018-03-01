-- delete from sequenceanalysis.aligners where name = 'mosaik';
-- insert into sequenceanalysis.aligners (haplotype,displayhaplotype,description,jsonconfig) values
-- ('mosaik', 'Mosaik', 'Mosaik is suitable for longer reads and has the option to retain multiple hits per read.  The only downside is that it can be slower.  When this pipeline was first written, this aligner was preferred for sequence-based genotyping and similar applications which require retaining multiple hits.  It supports paired end reads.  The aligner is still good; however, Lastz also seems to perform well for SBT.', '[{"xtype":"hidden","name":"pairedEnd","value":"1"},{"name":"mosaik.output_multiple","fieldLabel":"Retain All Hits","xtype":"checkbox","renderData":{"helpPopup":"If selected, all hits above thresholds will be reported.  If not, only a single hit will be retained."},"checked":1},{"name":"mosaik.max_mismatch_pct","fieldLabel":"Max Mismatch Pct","renderData":{"helpPopup":"The maximum percent of bases allowed to mismatch per alignment.  Note: Ns are counted as mismatches"},"value":0.02,"minValue":0,"maxValue":1},{"name":"mosaik.hash_size","fieldLabel":"Hash Size","renderData":{"helpPopup":"The hash size used in alignment (see Mosaik documentation).  A large value is preferred for sequences expected to be highly similar to the reference"},"minValue":0,"value":32},{"name":"mosaik.local_alignment","fieldLabel":"Local Alignment Radius","renderData":{"helpPopup":"This option is only used for paired end data.  If a value is supplied, a local alignment will be performed around paired end reads in order to attempt to rescue mates"},"minValue":0},{"name":"mosaik.max_hash_positions","fieldLabel":"Max Hash Positions","renderData":{"helpPopup":"The maximum number of hash matches that are passed to local alignment."},"minValue":0,"value":200},{"name":"mosaik.align_threshold","fieldLabel":"Alignment Threshold","renderData":{"helpPopup":"The alignment score required for an alignment to continue to local alignment.  Because the latter is slow, a higher value can improve speed."},"value":55}]');

INSERT INTO sequenceanalysis.haplotype_types (type) VALUES ('MHC-IA');
INSERT INTO sequenceanalysis.haplotype_types (type) VALUES ('MHC-IB');
INSERT INTO sequenceanalysis.haplotype_types (type) VALUES ('MHC-II');

ALTER table sequenceanalysis.haplotype_sequences DROP column haplotypeid;
ALTER table sequenceanalysis.haplotype_sequences ADD haplotype varchar(100);
ALTER table sequenceanalysis.haplotype_sequences ADD required bit;
GO
UPDATE sequenceanalysis.haplotype_sequences SET required = 1;


TRUNCATE TABLE sequenceanalysis.haplotypes;
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A001', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A002a', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A003', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A004', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A006', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A007', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A008', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A011', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A012', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A019', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A023', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A025', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A026', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A028', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('A224a', 'MHC-IA');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B001a', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B002', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B008', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B012a', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B012b', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B015a', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B015b', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B015c', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B017a', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B017c', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B024a', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B028', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B043a', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B043b', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B047a', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B048', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B055', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B069a', 'MHC-IB');
INSERT INTO sequenceanalysis.haplotypes (name,type) VALUES ('B069b', 'MHC-IB');

TRUNCATE table sequenceanalysis.haplotype_sequences;
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A001', 'Mamu-A1*001g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A001', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A002a', 'Mamu-A1*002g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A002a', 'Mamu-A3*13g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A003', 'Mamu-A1*003g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A003', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A003', 'Mamu-A4*14g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A004', 'Mamu-A1*004g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A004', 'Mamu-A4*14g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A006', 'Mamu-A1*006g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A006', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A006', 'Mamu-A4*14g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A007', 'Mamu-A1*007g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A007', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A007', 'Mamu-A6*01g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A008', 'Mamu-A1*008g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A008', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A008', 'Mamu-A3*13g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A011', 'Mamu-A1*011g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A011', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A011', 'Mamu-A4*14g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A011', 'Mamu-A6*01g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A012', 'Mamu-A1*012g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A012', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A012', 'Mamu-A6*01g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A019', 'Mamu-A1*019g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A019', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A019', 'Mamu-A4*14g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A023', 'Mamu-A1*023g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A023', 'Mamu-A4*14g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A025', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A025', 'Mamu-A3*13g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A025', 'Mamu-A4*14g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A026', 'Mamu-A1*026g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A026', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A026', 'Mamu-A4*14g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A028', 'Mamu-A1*028g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A028', 'Mamu-A2*05g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A028', 'Mamu-A4*14g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A224a', 'Mamu-A2*24g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A224a', 'Mamu-A1*003g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('A224a', 'Mamu-A3*13g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B001a', 'Mamu-B*001g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B001a', 'Mamu-B*007g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B001a', 'Mamu-B*030g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B001a', 'Mamu-B*057g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B001a', 'Mamu-B*060g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B001a', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B002', 'Mamu-B*002g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B002', 'Mamu-B*070g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B002', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B002', 'Mamu-B*088g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B002', 'Mamu-B*098g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B008', 'Mamu-B*008g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B008', 'Mamu-B*006g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B008', 'Mamu-B*051g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B008', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B008', 'Mamu-B*079g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*012g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*082g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*030g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*038g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*046g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*049g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*053g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*057g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*070g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*074g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012a', 'Mamu-B*098g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*012g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*022g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*030g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*031g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*046g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*049g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*053g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*057g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*070g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*074g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B012b', 'Mamu-B*098g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015a', 'Mamu-B*015g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015a', 'Mamu-B*005g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015a', 'Mamu-B*044g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015a', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015b', 'Mamu-B*015g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015b', 'Mamu-B*068g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015b', 'Mamu-B*051g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015b', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015b', 'Mamu-B*079g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015c', 'Mamu-B*015g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015c', 'Mamu-B*068g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015c', 'Mamu-B*031g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015c', 'Mamu-B*051g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B015c', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017a', 'Mamu-B*017g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017a', 'Mamu-B*029g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017a', 'Mamu-B*068g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017a', 'Mamu-B*060g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017a', 'Mamu-B*061g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017a', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017c', 'Mamu-B*017g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017c', 'Mamu-B*001g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017c', 'Mamu-B*007g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017c', 'Mamu-B*030g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017c', 'Mamu-B*046g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017c', 'Mamu-B*060g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B017c', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B024a', 'Mamu-B*024g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B024a', 'Mamu-B*019g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B024a', 'Mamu-B*046g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B024a', 'Mamu-B*051g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B024a', 'Mamu-B*057g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B024a', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B024a', 'Mamu-B*082g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B028', 'Mamu-B*028g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B028', 'Mamu-B*021g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B028', 'Mamu-B*068g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B028', 'Mamu-B*124g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B028', 'Mamu-B*045g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B028', 'Mamu-B*046g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B028', 'Mamu-B*082g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043a', 'Mamu-B*043g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043a', 'Mamu-B*027g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043a', 'Mamu-B*030g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043a', 'Mamu-B*057g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043a', 'Mamu-B*060g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043a', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043a', 'Mamu-B*092g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043a', 'Mamu-B*098g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043b', 'Mamu-B*043g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043b', 'Mamu-B*030g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043b', 'Mamu-B*031g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043b', 'Mamu-B*073g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043b', 'Mamu-B*057g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043b', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B043b', 'Mamu-B*092g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B047a', 'Mamu-B*047g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B047a', 'Mamu-B*082g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B047a', 'Mamu-B*038g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B047a', 'Mamu-B*046g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B047a', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B048', 'Mamu-B*048g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B048', 'Mamu-B*041g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B048', 'Mamu-B*064g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B048', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B048', 'Mamu-B*134g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B055', 'Mamu-B*055g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B055', 'Mamu-B*052g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B055', 'Mamu-B*055g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B055', 'Mamu-B*072g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069a', 'Mamu-B*069g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069a', 'Mamu-B*065g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069a', 'Mamu-B*046g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069a', 'Mamu-B*050g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069a', 'Mamu-B*070g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069a', 'Mamu-B*100g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069b', 'Mamu-B*069g', 1);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069b', 'Mamu-B*068g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069b', 'Mamu-B*075g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069b', 'Mamu-B*046g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069b', 'Mamu-B*060g', 0);
INSERT INTO sequenceanalysis.haplotype_sequences (haplotype,lineage,required) VALUES ('B069b', 'Mamu-B*072g', 0);
UPDATE sequenceanalysis.haplotype_sequences SET present = 1;