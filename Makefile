CFLAGS += -I. -fPIC -DPIC

all:
	$(CC) $(CFLAGS) -c JudyMalloc.c -o JudyMalloc.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyCascade.c -o JudyLCascade.o
	$(CC) $(CFLAGS) -DJUDYL -o JudyLTablesGen JudyTables.c; ./JudyLTablesGen
	$(CC) $(CFLAGS) -DJUDYL -c JudyLTables.c -o JudyLTables.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyCount.c -o JudyLCount.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyCreateBranch.c -o JudyLCreateBranch.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyDecascade.c -o JudyLDecascade.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyDel.c -o JudyLDel.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyFirst.c -o JudyLFirst.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyFreeArray.c -o JudyLFreeArray.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyGet.c -o JudyLGet.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyInsArray.c -o JudyLInsArray.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyIns.c -o JudyLIns.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyInsertBranch.c -o JudyLInsertBranch.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyMallocIF.c -o JudyLMallocIF.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyMemActive.c -o JudyLMemActive.o
	$(CC) $(CFLAGS) -DJUDYL -c JudyMemUsed.c -o JudyLMemUsed.o
	$(CC) $(CFLAGS) -DJUDYL -DJUDYNEXT -c JudyPrevNext.c -o JudyLNext.o
	$(CC) $(CFLAGS) -DJUDYL -DJUDYNEXT -c JudyPrevNextEmpty.c -o JudyLNextEmpty.o
	$(CC) $(CFLAGS) -DJUDYL -DJUDYPREV -c JudyPrevNext.c -o JudyLPrev.o
	$(CC) $(CFLAGS) -DJUDYL -DJUDYPREV -c JudyPrevNextEmpty.c -o JudyLPrevEmpty.o
	$(CC) $(CFLAGS) -DJUDYL -DNOSMARTJBB -DNOSMARTJBU -DNOSMARTJLB -c JudyByCount.c -o JudyLByCount.o
	$(CC) $(CFLAGS) -DJUDYL -DJUDYGETINLINE -c JudyGet.c -o j__udyLGet.o
	$(CC) $(CFLAGS) -c JudySL.c -o JudySL.o
	$(CC) $(CFLAGS) -c JudyHS.c -o JudyHS.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyGet.c -o Judy1Test.o
	$(CC) $(CFLAGS) -DJUDY1 -o Judy1TablesGen JudyTables.c; ./Judy1TablesGen
	$(CC) $(CFLAGS) -DJUDY1 -c Judy1Tables.c -o Judy1Tables.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyIns.c -o Judy1Set.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyInsArray.c -o Judy1SetArray.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyDel.c -o Judy1Unset.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyCascade.c -o Judy1Cascade.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyCount.c -o Judy1Count.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyCreateBranch.c -o Judy1CreateBranch.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyDecascade.c -o Judy1Decascade.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyFirst.c -o Judy1First.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyFreeArray.c -o Judy1FreeArray.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyInsertBranch.c -o Judy1InsertBranch.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyMallocIF.c -o Judy1MallocIF.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyMemActive.c -o Judy1MemActive.o
	$(CC) $(CFLAGS) -DJUDY1 -c JudyMemUsed.c -o Judy1MemUsed.o
	$(CC) $(CFLAGS) -DJUDY1 -DJUDYNEXT -c JudyPrevNext.c -o Judy1Next.o
	$(CC) $(CFLAGS) -DJUDY1 -DJUDYNEXT -c JudyPrevNextEmpty.c -o libnext_la-Judy1NextEmpty.o
	$(CC) $(CFLAGS) -DJUDY1 -DJUDYPREV -c JudyPrevNext.c -o Judy1Prev.o
	$(CC) $(CFLAGS) -DJUDY1 -DJUDYPREV -c JudyPrevNextEmpty.c -o Judy1PrevEmpty.o
	$(CC) $(CFLAGS) -DJUDY1 -DNOSMARTJBB -DNOSMARTJBU -DNOSMARTJLB -c JudyByCount.c -o Judy1ByCount.o
	$(CC) $(CFLAGS) -DJUDY1 -DJUDYGETINLINE -c JudyGet.c -o j__udy1Test.o

	$(CC) $(CLALGS) -shared *.o -o libjudy.so

clean:
	rm -rf *.o JudyLTablesGen Judy1TablesGen libjudy.so
