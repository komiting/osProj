
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	76013103          	ld	sp,1888(sp) # 80005760 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	57d010ef          	jal	ra,80001d98 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256 //raste ka nizim adresama, alocirali smo prostor na steku
    80001000:	f0010113          	addi	sp,sp,-256
    .irp  index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp) // x0 je fiksna 0, x1 i x2 cuvamo u struct Context pa nam ne treba ovde
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:

    .irp  index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp) // x0 je fiksna 0, x1 i x2 cuvamo u struct Context pa nam ne treba ovde
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256 //vracamo prosstor
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.align 4 //stvec registar koji gleda prekid treba da mu naznacimo sa najniza dva bita da se veze za ovo
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256 //raste ka nizim adresama, alocirali smo prostor na steku
    80001100:	f0010113          	addi	sp,sp,-256
    .irp  index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp) // x0 je fiksna 0, x1 i x2 cuvamo u struct Context pa nam ne treba ovde
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    //da bi bilo lakse da pisemo prekidnu fju, u C-u ili cpp-u, a ne u asemblerskom kodu, pozivamo fju
    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	06d000ef          	jal	ra,800019f0 <_ZN5Riscv20handleSupervisorTrapEv>
    .irp  index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp) // x0 je fiksna 0, x1 i x2 cuvamo u struct Context pa nam ne treba ovde
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256 //vracamo prosstor
    80001208:	10010113          	addi	sp,sp,256


    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    //u a0- prvi param, oldContext, u a1-drugi param - newContext
    //ra je tamo gde contextSwitch treba da se vrati kada dodje do ret
    //context blok --> : ra, pa 64 bita(8bajtova) je ra i onda idsp
    //                   sp
    sd ra, 0*8(a0);
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0);
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1);
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1);
    8000121c:	0085b103          	ld	sp,8(a1)
    80001220:	00008067          	ret

0000000080001224 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001224:	fe010113          	addi	sp,sp,-32
    80001228:	00113c23          	sd	ra,24(sp)
    8000122c:	00813823          	sd	s0,16(sp)
    80001230:	00913423          	sd	s1,8(sp)
    80001234:	01213023          	sd	s2,0(sp)
    80001238:	02010413          	addi	s0,sp,32
    8000123c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001240:	00100793          	li	a5,1
    80001244:	02a7f863          	bgeu	a5,a0,80001274 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001248:	00a00793          	li	a5,10
    8000124c:	02f577b3          	remu	a5,a0,a5
    80001250:	02078e63          	beqz	a5,8000128c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001254:	fff48513          	addi	a0,s1,-1
    80001258:	00000097          	auipc	ra,0x0
    8000125c:	fcc080e7          	jalr	-52(ra) # 80001224 <_ZL9fibonaccim>
    80001260:	00050913          	mv	s2,a0
    80001264:	ffe48513          	addi	a0,s1,-2
    80001268:	00000097          	auipc	ra,0x0
    8000126c:	fbc080e7          	jalr	-68(ra) # 80001224 <_ZL9fibonaccim>
    80001270:	00a90533          	add	a0,s2,a0
}
    80001274:	01813083          	ld	ra,24(sp)
    80001278:	01013403          	ld	s0,16(sp)
    8000127c:	00813483          	ld	s1,8(sp)
    80001280:	00013903          	ld	s2,0(sp)
    80001284:	02010113          	addi	sp,sp,32
    80001288:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000128c:	00000097          	auipc	ra,0x0
    80001290:	500080e7          	jalr	1280(ra) # 8000178c <_ZN3TCB5yieldEv>
    80001294:	fc1ff06f          	j	80001254 <_ZL9fibonaccim+0x30>

0000000080001298 <_Z11workerBodyAv>:
{
    80001298:	fe010113          	addi	sp,sp,-32
    8000129c:	00113c23          	sd	ra,24(sp)
    800012a0:	00813823          	sd	s0,16(sp)
    800012a4:	00913423          	sd	s1,8(sp)
    800012a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800012ac:	00000493          	li	s1,0
    800012b0:	0300006f          	j	800012e0 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800012b4:	00168693          	addi	a3,a3,1
    800012b8:	000027b7          	lui	a5,0x2
    800012bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800012c0:	00d7ee63          	bltu	a5,a3,800012dc <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800012c4:	00000713          	li	a4,0
    800012c8:	000077b7          	lui	a5,0x7
    800012cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800012d0:	fee7e2e3          	bltu	a5,a4,800012b4 <_Z11workerBodyAv+0x1c>
    800012d4:	00170713          	addi	a4,a4,1
    800012d8:	ff1ff06f          	j	800012c8 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800012dc:	00148493          	addi	s1,s1,1
    800012e0:	00900793          	li	a5,9
    800012e4:	0297ec63          	bltu	a5,s1,8000131c <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800012e8:	00004517          	auipc	a0,0x4
    800012ec:	d1850513          	addi	a0,a0,-744 # 80005000 <kvmincrease+0xe60>
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	97c080e7          	jalr	-1668(ra) # 80001c6c <_Z11printStringPKc>
        printInteger(i);
    800012f8:	00048513          	mv	a0,s1
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	9e0080e7          	jalr	-1568(ra) # 80001cdc <_Z12printIntegerm>
        printString("\n");
    80001304:	00004517          	auipc	a0,0x4
    80001308:	d1c50513          	addi	a0,a0,-740 # 80005020 <kvmincrease+0xe80>
    8000130c:	00001097          	auipc	ra,0x1
    80001310:	960080e7          	jalr	-1696(ra) # 80001c6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001314:	00000693          	li	a3,0
    80001318:	fa1ff06f          	j	800012b8 <_Z11workerBodyAv+0x20>
}
    8000131c:	01813083          	ld	ra,24(sp)
    80001320:	01013403          	ld	s0,16(sp)
    80001324:	00813483          	ld	s1,8(sp)
    80001328:	02010113          	addi	sp,sp,32
    8000132c:	00008067          	ret

0000000080001330 <_Z11workerBodyBv>:
{
    80001330:	fe010113          	addi	sp,sp,-32
    80001334:	00113c23          	sd	ra,24(sp)
    80001338:	00813823          	sd	s0,16(sp)
    8000133c:	00913423          	sd	s1,8(sp)
    80001340:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001344:	00000493          	li	s1,0
    80001348:	0300006f          	j	80001378 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000134c:	00168693          	addi	a3,a3,1
    80001350:	000027b7          	lui	a5,0x2
    80001354:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001358:	00d7ee63          	bltu	a5,a3,80001374 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000135c:	00000713          	li	a4,0
    80001360:	000077b7          	lui	a5,0x7
    80001364:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001368:	fee7e2e3          	bltu	a5,a4,8000134c <_Z11workerBodyBv+0x1c>
    8000136c:	00170713          	addi	a4,a4,1
    80001370:	ff1ff06f          	j	80001360 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001374:	00148493          	addi	s1,s1,1
    80001378:	00f00793          	li	a5,15
    8000137c:	0297ec63          	bltu	a5,s1,800013b4 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001380:	00004517          	auipc	a0,0x4
    80001384:	c8850513          	addi	a0,a0,-888 # 80005008 <kvmincrease+0xe68>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	8e4080e7          	jalr	-1820(ra) # 80001c6c <_Z11printStringPKc>
        printInteger(i);
    80001390:	00048513          	mv	a0,s1
    80001394:	00001097          	auipc	ra,0x1
    80001398:	948080e7          	jalr	-1720(ra) # 80001cdc <_Z12printIntegerm>
        printString("\n");
    8000139c:	00004517          	auipc	a0,0x4
    800013a0:	c8450513          	addi	a0,a0,-892 # 80005020 <kvmincrease+0xe80>
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	8c8080e7          	jalr	-1848(ra) # 80001c6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800013ac:	00000693          	li	a3,0
    800013b0:	fa1ff06f          	j	80001350 <_Z11workerBodyBv+0x20>
}
    800013b4:	01813083          	ld	ra,24(sp)
    800013b8:	01013403          	ld	s0,16(sp)
    800013bc:	00813483          	ld	s1,8(sp)
    800013c0:	02010113          	addi	sp,sp,32
    800013c4:	00008067          	ret

00000000800013c8 <_Z11workerBodyCv>:

void workerBodyC()
{
    800013c8:	fe010113          	addi	sp,sp,-32
    800013cc:	00113c23          	sd	ra,24(sp)
    800013d0:	00813823          	sd	s0,16(sp)
    800013d4:	00913423          	sd	s1,8(sp)
    800013d8:	01213023          	sd	s2,0(sp)
    800013dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800013e0:	00000493          	li	s1,0
    800013e4:	0380006f          	j	8000141c <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800013e8:	00004517          	auipc	a0,0x4
    800013ec:	c2850513          	addi	a0,a0,-984 # 80005010 <kvmincrease+0xe70>
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	87c080e7          	jalr	-1924(ra) # 80001c6c <_Z11printStringPKc>
        printInteger(i);
    800013f8:	00048513          	mv	a0,s1
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	8e0080e7          	jalr	-1824(ra) # 80001cdc <_Z12printIntegerm>
        printString("\n");
    80001404:	00004517          	auipc	a0,0x4
    80001408:	c1c50513          	addi	a0,a0,-996 # 80005020 <kvmincrease+0xe80>
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	860080e7          	jalr	-1952(ra) # 80001c6c <_Z11printStringPKc>
    for (; i < 3; i++)
    80001414:	0014849b          	addiw	s1,s1,1
    80001418:	0ff4f493          	andi	s1,s1,255
    8000141c:	00200793          	li	a5,2
    80001420:	fc97f4e3          	bgeu	a5,s1,800013e8 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	bf450513          	addi	a0,a0,-1036 # 80005018 <kvmincrease+0xe78>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	840080e7          	jalr	-1984(ra) # 80001c6c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001434:	00700313          	li	t1,7
    TCB::yield();
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	354080e7          	jalr	852(ra) # 8000178c <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001440:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001444:	00004517          	auipc	a0,0x4
    80001448:	be450513          	addi	a0,a0,-1052 # 80005028 <kvmincrease+0xe88>
    8000144c:	00001097          	auipc	ra,0x1
    80001450:	820080e7          	jalr	-2016(ra) # 80001c6c <_Z11printStringPKc>
    printInteger(t1);
    80001454:	00090513          	mv	a0,s2
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	884080e7          	jalr	-1916(ra) # 80001cdc <_Z12printIntegerm>
    printString("\n");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	bc050513          	addi	a0,a0,-1088 # 80005020 <kvmincrease+0xe80>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	804080e7          	jalr	-2044(ra) # 80001c6c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001470:	00c00513          	li	a0,12
    80001474:	00000097          	auipc	ra,0x0
    80001478:	db0080e7          	jalr	-592(ra) # 80001224 <_ZL9fibonaccim>
    8000147c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001480:	00004517          	auipc	a0,0x4
    80001484:	bb050513          	addi	a0,a0,-1104 # 80005030 <kvmincrease+0xe90>
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	7e4080e7          	jalr	2020(ra) # 80001c6c <_Z11printStringPKc>
    printInteger(result);
    80001490:	00090513          	mv	a0,s2
    80001494:	00001097          	auipc	ra,0x1
    80001498:	848080e7          	jalr	-1976(ra) # 80001cdc <_Z12printIntegerm>
    printString("\n");
    8000149c:	00004517          	auipc	a0,0x4
    800014a0:	b8450513          	addi	a0,a0,-1148 # 80005020 <kvmincrease+0xe80>
    800014a4:	00000097          	auipc	ra,0x0
    800014a8:	7c8080e7          	jalr	1992(ra) # 80001c6c <_Z11printStringPKc>
    800014ac:	0380006f          	j	800014e4 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800014b0:	00004517          	auipc	a0,0x4
    800014b4:	b6050513          	addi	a0,a0,-1184 # 80005010 <kvmincrease+0xe70>
    800014b8:	00000097          	auipc	ra,0x0
    800014bc:	7b4080e7          	jalr	1972(ra) # 80001c6c <_Z11printStringPKc>
        printInteger(i);
    800014c0:	00048513          	mv	a0,s1
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	818080e7          	jalr	-2024(ra) # 80001cdc <_Z12printIntegerm>
        printString("\n");
    800014cc:	00004517          	auipc	a0,0x4
    800014d0:	b5450513          	addi	a0,a0,-1196 # 80005020 <kvmincrease+0xe80>
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	798080e7          	jalr	1944(ra) # 80001c6c <_Z11printStringPKc>
    for (; i < 6; i++)
    800014dc:	0014849b          	addiw	s1,s1,1
    800014e0:	0ff4f493          	andi	s1,s1,255
    800014e4:	00500793          	li	a5,5
    800014e8:	fc97f4e3          	bgeu	a5,s1,800014b0 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800014ec:	01813083          	ld	ra,24(sp)
    800014f0:	01013403          	ld	s0,16(sp)
    800014f4:	00813483          	ld	s1,8(sp)
    800014f8:	00013903          	ld	s2,0(sp)
    800014fc:	02010113          	addi	sp,sp,32
    80001500:	00008067          	ret

0000000080001504 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	00913423          	sd	s1,8(sp)
    80001514:	01213023          	sd	s2,0(sp)
    80001518:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000151c:	00a00493          	li	s1,10
    80001520:	0380006f          	j	80001558 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001524:	00004517          	auipc	a0,0x4
    80001528:	b1c50513          	addi	a0,a0,-1252 # 80005040 <kvmincrease+0xea0>
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	740080e7          	jalr	1856(ra) # 80001c6c <_Z11printStringPKc>
        printInteger(i);
    80001534:	00048513          	mv	a0,s1
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	7a4080e7          	jalr	1956(ra) # 80001cdc <_Z12printIntegerm>
        printString("\n");
    80001540:	00004517          	auipc	a0,0x4
    80001544:	ae050513          	addi	a0,a0,-1312 # 80005020 <kvmincrease+0xe80>
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	724080e7          	jalr	1828(ra) # 80001c6c <_Z11printStringPKc>
    for (; i < 13; i++)
    80001550:	0014849b          	addiw	s1,s1,1
    80001554:	0ff4f493          	andi	s1,s1,255
    80001558:	00c00793          	li	a5,12
    8000155c:	fc97f4e3          	bgeu	a5,s1,80001524 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001560:	00004517          	auipc	a0,0x4
    80001564:	ae850513          	addi	a0,a0,-1304 # 80005048 <kvmincrease+0xea8>
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	704080e7          	jalr	1796(ra) # 80001c6c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001570:	00500313          	li	t1,5
    TCB::yield();
    80001574:	00000097          	auipc	ra,0x0
    80001578:	218080e7          	jalr	536(ra) # 8000178c <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000157c:	01000513          	li	a0,16
    80001580:	00000097          	auipc	ra,0x0
    80001584:	ca4080e7          	jalr	-860(ra) # 80001224 <_ZL9fibonaccim>
    80001588:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	acc50513          	addi	a0,a0,-1332 # 80005058 <kvmincrease+0xeb8>
    80001594:	00000097          	auipc	ra,0x0
    80001598:	6d8080e7          	jalr	1752(ra) # 80001c6c <_Z11printStringPKc>
    printInteger(result);
    8000159c:	00090513          	mv	a0,s2
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	73c080e7          	jalr	1852(ra) # 80001cdc <_Z12printIntegerm>
    printString("\n");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	a7850513          	addi	a0,a0,-1416 # 80005020 <kvmincrease+0xe80>
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	6bc080e7          	jalr	1724(ra) # 80001c6c <_Z11printStringPKc>
    800015b8:	0380006f          	j	800015f0 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800015bc:	00004517          	auipc	a0,0x4
    800015c0:	a8450513          	addi	a0,a0,-1404 # 80005040 <kvmincrease+0xea0>
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	6a8080e7          	jalr	1704(ra) # 80001c6c <_Z11printStringPKc>
        printInteger(i);
    800015cc:	00048513          	mv	a0,s1
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	70c080e7          	jalr	1804(ra) # 80001cdc <_Z12printIntegerm>
        printString("\n");
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	a4850513          	addi	a0,a0,-1464 # 80005020 <kvmincrease+0xe80>
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	68c080e7          	jalr	1676(ra) # 80001c6c <_Z11printStringPKc>
    for (; i < 16; i++)
    800015e8:	0014849b          	addiw	s1,s1,1
    800015ec:	0ff4f493          	andi	s1,s1,255
    800015f0:	00f00793          	li	a5,15
    800015f4:	fc97f4e3          	bgeu	a5,s1,800015bc <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800015f8:	01813083          	ld	ra,24(sp)
    800015fc:	01013403          	ld	s0,16(sp)
    80001600:	00813483          	ld	s1,8(sp)
    80001604:	00013903          	ld	s2,0(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret

0000000080001610 <main>:
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
int main(){
    80001610:	fb010113          	addi	sp,sp,-80
    80001614:	04113423          	sd	ra,72(sp)
    80001618:	04813023          	sd	s0,64(sp)
    8000161c:	02913c23          	sd	s1,56(sp)
    80001620:	03213823          	sd	s2,48(sp)
    80001624:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createCoroutine(nullptr);
    80001628:	00000513          	li	a0,0
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	1d4080e7          	jalr	468(ra) # 80001800 <_ZN3TCB15createCoroutineEPFvvE>
    80001634:	faa43c23          	sd	a0,-72(s0)

    TCB::running = threads[0];
    80001638:	00004797          	auipc	a5,0x4
    8000163c:	1307b783          	ld	a5,304(a5) # 80005768 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001640:	00a7b023          	sd	a0,0(a5)
    threads[1] = TCB::createCoroutine(workerBodyA);
    80001644:	00004517          	auipc	a0,0x4
    80001648:	11453503          	ld	a0,276(a0) # 80005758 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	1b4080e7          	jalr	436(ra) # 80001800 <_ZN3TCB15createCoroutineEPFvvE>
    80001654:	fca43023          	sd	a0,-64(s0)
    printString("Coroutine A created! \n");
    80001658:	00004517          	auipc	a0,0x4
    8000165c:	a1050513          	addi	a0,a0,-1520 # 80005068 <kvmincrease+0xec8>
    80001660:	00000097          	auipc	ra,0x0
    80001664:	60c080e7          	jalr	1548(ra) # 80001c6c <_Z11printStringPKc>
    threads[2] = TCB::createCoroutine(workerBodyB);
    80001668:	00004517          	auipc	a0,0x4
    8000166c:	0e053503          	ld	a0,224(a0) # 80005748 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001670:	00000097          	auipc	ra,0x0
    80001674:	190080e7          	jalr	400(ra) # 80001800 <_ZN3TCB15createCoroutineEPFvvE>
    80001678:	fca43423          	sd	a0,-56(s0)
    printString("Coroutine B created! \n");
    8000167c:	00004517          	auipc	a0,0x4
    80001680:	a0450513          	addi	a0,a0,-1532 # 80005080 <kvmincrease+0xee0>
    80001684:	00000097          	auipc	ra,0x0
    80001688:	5e8080e7          	jalr	1512(ra) # 80001c6c <_Z11printStringPKc>
    threads[3] = TCB::createCoroutine(workerBodyC);
    8000168c:	00004517          	auipc	a0,0x4
    80001690:	0e453503          	ld	a0,228(a0) # 80005770 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001694:	00000097          	auipc	ra,0x0
    80001698:	16c080e7          	jalr	364(ra) # 80001800 <_ZN3TCB15createCoroutineEPFvvE>
    8000169c:	fca43823          	sd	a0,-48(s0)
    printString("Coroutine C created! \n");
    800016a0:	00004517          	auipc	a0,0x4
    800016a4:	9f850513          	addi	a0,a0,-1544 # 80005098 <kvmincrease+0xef8>
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	5c4080e7          	jalr	1476(ra) # 80001c6c <_Z11printStringPKc>
    threads[4] = TCB::createCoroutine(workerBodyD);
    800016b0:	00004517          	auipc	a0,0x4
    800016b4:	0c853503          	ld	a0,200(a0) # 80005778 <_GLOBAL_OFFSET_TABLE_+0x40>
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	148080e7          	jalr	328(ra) # 80001800 <_ZN3TCB15createCoroutineEPFvvE>
    800016c0:	fca43c23          	sd	a0,-40(s0)
    printString("Coroutine D created! \n");
    800016c4:	00004517          	auipc	a0,0x4
    800016c8:	9ec50513          	addi	a0,a0,-1556 # 800050b0 <kvmincrease+0xf10>
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	5a0080e7          	jalr	1440(ra) # 80001c6c <_Z11printStringPKc>

    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800016d4:	00004797          	auipc	a5,0x4
    800016d8:	06c7b783          	ld	a5,108(a5) # 80005740 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800016dc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800016e0:	00200793          	li	a5,2
    800016e4:	1007a073          	csrs	sstatus,a5
}
    800016e8:	00c0006f          	j	800016f4 <main+0xe4>
    //posto u korutinama pozivaju yield, da se ne bi vratilo na main korutinu, cepamo uposleno cekanje
    while(!(threads[1]->isFinished() &&
            threads[2]->isFinished() &&
            threads[3]->isFinished() &&
            threads[4]->isFinished())){
        TCB::yield();
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	0a0080e7          	jalr	160(ra) # 8000178c <_ZN3TCB5yieldEv>
    while(!(threads[1]->isFinished() &&
    800016f4:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB(){delete[] stack;}

    bool isFinished(){return finished;}
    800016f8:	0287c783          	lbu	a5,40(a5)
    800016fc:	fe0788e3          	beqz	a5,800016ec <main+0xdc>
            threads[2]->isFinished() &&
    80001700:	fc843783          	ld	a5,-56(s0)
    80001704:	0287c783          	lbu	a5,40(a5)
    while(!(threads[1]->isFinished() &&
    80001708:	fe0782e3          	beqz	a5,800016ec <main+0xdc>
            threads[3]->isFinished() &&
    8000170c:	fd043783          	ld	a5,-48(s0)
    80001710:	0287c783          	lbu	a5,40(a5)
            threads[2]->isFinished() &&
    80001714:	fc078ce3          	beqz	a5,800016ec <main+0xdc>
            threads[4]->isFinished())){
    80001718:	fd843783          	ld	a5,-40(s0)
    8000171c:	0287c783          	lbu	a5,40(a5)
    while(!(threads[1]->isFinished() &&
    80001720:	fc0786e3          	beqz	a5,800016ec <main+0xdc>
    80001724:	fb840493          	addi	s1,s0,-72
    80001728:	0140006f          	j	8000173c <main+0x12c>
    }
    for(auto &coroutine : threads){
        delete coroutine;
    8000172c:	00090513          	mv	a0,s2
    80001730:	00000097          	auipc	ra,0x0
    80001734:	250080e7          	jalr	592(ra) # 80001980 <_ZdlPv>
    for(auto &coroutine : threads){
    80001738:	00848493          	addi	s1,s1,8
    8000173c:	fe040793          	addi	a5,s0,-32
    80001740:	02f48063          	beq	s1,a5,80001760 <main+0x150>
        delete coroutine;
    80001744:	0004b903          	ld	s2,0(s1)
    80001748:	fe0908e3          	beqz	s2,80001738 <main+0x128>
    ~TCB(){delete[] stack;}
    8000174c:	00893503          	ld	a0,8(s2)
    80001750:	fc050ee3          	beqz	a0,8000172c <main+0x11c>
    80001754:	00000097          	auipc	ra,0x0
    80001758:	254080e7          	jalr	596(ra) # 800019a8 <_ZdaPv>
    8000175c:	fd1ff06f          	j	8000172c <main+0x11c>
    }
    printString("gotov!\n");
    80001760:	00004517          	auipc	a0,0x4
    80001764:	96850513          	addi	a0,a0,-1688 # 800050c8 <kvmincrease+0xf28>
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	504080e7          	jalr	1284(ra) # 80001c6c <_Z11printStringPKc>
    return 0;
    80001770:	00000513          	li	a0,0
    80001774:	04813083          	ld	ra,72(sp)
    80001778:	04013403          	ld	s0,64(sp)
    8000177c:	03813483          	ld	s1,56(sp)
    80001780:	03013903          	ld	s2,48(sp)
    80001784:	05010113          	addi	sp,sp,80
    80001788:	00008067          	ret

000000008000178c <_ZN3TCB5yieldEv>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

void TCB::yield()
{
    8000178c:	ff010113          	addi	sp,sp,-16
    80001790:	00813423          	sd	s0,8(sp)
    80001794:	01010413          	addi	s0,sp,16
    //sada hocemo da se svi prekidi izvrsavaju preko funkcije koju smo ispisali
    //hocemo da sinhrono udjemo u tu prekidnu funkciju - ulazak u prekidnu rutinu zbog zvrsavajna neke instrukcije - exception
    __asm__ volatile("ecall");
    80001798:	00000073          	ecall
}
    8000179c:	00813403          	ld	s0,8(sp)
    800017a0:	01010113          	addi	sp,sp,16
    800017a4:	00008067          	ret

00000000800017a8 <_ZN3TCB13threadWrapperEv>:
        // na threadWrapper funkciju, odakle ce da pokrene njen tok
    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper(){
    800017a8:	fe010113          	addi	sp,sp,-32
    800017ac:	00113c23          	sd	ra,24(sp)
    800017b0:	00813823          	sd	s0,16(sp)
    800017b4:	00913423          	sd	s1,8(sp)
    800017b8:	02010413          	addi	s0,sp,32
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	214080e7          	jalr	532(ra) # 800019d0 <_ZN5Riscv10popSppSpieEv>
    running->body();
    800017c4:	00004497          	auipc	s1,0x4
    800017c8:	00c48493          	addi	s1,s1,12 # 800057d0 <_ZN3TCB7runningE>
    800017cc:	0004b783          	ld	a5,0(s1)
    800017d0:	0007b783          	ld	a5,0(a5)
    800017d4:	000780e7          	jalr	a5
    running->setFinished(true);
    800017d8:	0004b783          	ld	a5,0(s1)
    void setFinished(bool flag){ TCB::finished = flag;}
    800017dc:	00100713          	li	a4,1
    800017e0:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	fa8080e7          	jalr	-88(ra) # 8000178c <_ZN3TCB5yieldEv>
}
    800017ec:	01813083          	ld	ra,24(sp)
    800017f0:	01013403          	ld	s0,16(sp)
    800017f4:	00813483          	ld	s1,8(sp)
    800017f8:	02010113          	addi	sp,sp,32
    800017fc:	00008067          	ret

0000000080001800 <_ZN3TCB15createCoroutineEPFvvE>:
{
    80001800:	fe010113          	addi	sp,sp,-32
    80001804:	00113c23          	sd	ra,24(sp)
    80001808:	00813823          	sd	s0,16(sp)
    8000180c:	00913423          	sd	s1,8(sp)
    80001810:	01213023          	sd	s2,0(sp)
    80001814:	02010413          	addi	s0,sp,32
    80001818:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    8000181c:	03000513          	li	a0,48
    80001820:	00000097          	auipc	ra,0x0
    80001824:	110080e7          	jalr	272(ra) # 80001930 <_Znwm>
    80001828:	00050493          	mv	s1,a0
                     stack(body!=nullptr? new uint64[STACK_SIZE] : nullptr),timeSlice(timeslice),
                     context({
                         (uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                    }),
                     finished(false)
    8000182c:	01253023          	sd	s2,0(a0)
                     stack(body!=nullptr? new uint64[STACK_SIZE] : nullptr),timeSlice(timeslice),
    80001830:	00090a63          	beqz	s2,80001844 <_ZN3TCB15createCoroutineEPFvvE+0x44>
    80001834:	00002537          	lui	a0,0x2
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	120080e7          	jalr	288(ra) # 80001958 <_Znam>
    80001840:	0080006f          	j	80001848 <_ZN3TCB15createCoroutineEPFvvE+0x48>
    80001844:	00000513          	li	a0,0
                     finished(false)
    80001848:	00a4b423          	sd	a0,8(s1)
    8000184c:	00200793          	li	a5,2
    80001850:	00f4b823          	sd	a5,16(s1)
    80001854:	00000797          	auipc	a5,0x0
    80001858:	f5478793          	addi	a5,a5,-172 # 800017a8 <_ZN3TCB13threadWrapperEv>
    8000185c:	00f4bc23          	sd	a5,24(s1)
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001860:	02090463          	beqz	s2,80001888 <_ZN3TCB15createCoroutineEPFvvE+0x88>
    80001864:	000027b7          	lui	a5,0x2
    80001868:	00f50533          	add	a0,a0,a5
                     finished(false)
    8000186c:	02a4b023          	sd	a0,32(s1)
    80001870:	02048423          	sb	zero,40(s1)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001874:	02090c63          	beqz	s2,800018ac <_ZN3TCB15createCoroutineEPFvvE+0xac>
    80001878:	00048513          	mv	a0,s1
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	350080e7          	jalr	848(ra) # 80001bcc <_ZN9Scheduler3putEP3TCB>
    80001884:	0280006f          	j	800018ac <_ZN3TCB15createCoroutineEPFvvE+0xac>
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001888:	00000513          	li	a0,0
    8000188c:	fe1ff06f          	j	8000186c <_ZN3TCB15createCoroutineEPFvvE+0x6c>
    80001890:	00050913          	mv	s2,a0
    80001894:	00048513          	mv	a0,s1
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	0e8080e7          	jalr	232(ra) # 80001980 <_ZdlPv>
    800018a0:	00090513          	mv	a0,s2
    800018a4:	00005097          	auipc	ra,0x5
    800018a8:	014080e7          	jalr	20(ra) # 800068b8 <_Unwind_Resume>
}
    800018ac:	00048513          	mv	a0,s1
    800018b0:	01813083          	ld	ra,24(sp)
    800018b4:	01013403          	ld	s0,16(sp)
    800018b8:	00813483          	ld	s1,8(sp)
    800018bc:	00013903          	ld	s2,0(sp)
    800018c0:	02010113          	addi	sp,sp,32
    800018c4:	00008067          	ret

00000000800018c8 <_ZN3TCB8dispatchEv>:
{
    800018c8:	fe010113          	addi	sp,sp,-32
    800018cc:	00113c23          	sd	ra,24(sp)
    800018d0:	00813823          	sd	s0,16(sp)
    800018d4:	00913423          	sd	s1,8(sp)
    800018d8:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800018dc:	00004497          	auipc	s1,0x4
    800018e0:	ef44b483          	ld	s1,-268(s1) # 800057d0 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    800018e4:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) Scheduler::put(old);
    800018e8:	02078c63          	beqz	a5,80001920 <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	278080e7          	jalr	632(ra) # 80001b64 <_ZN9Scheduler3getEv>
    800018f4:	00004797          	auipc	a5,0x4
    800018f8:	eca7be23          	sd	a0,-292(a5) # 800057d0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800018fc:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80001900:	01848513          	addi	a0,s1,24
    80001904:	00000097          	auipc	ra,0x0
    80001908:	90c080e7          	jalr	-1780(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000190c:	01813083          	ld	ra,24(sp)
    80001910:	01013403          	ld	s0,16(sp)
    80001914:	00813483          	ld	s1,8(sp)
    80001918:	02010113          	addi	sp,sp,32
    8000191c:	00008067          	ret
    if(!old->isFinished()) Scheduler::put(old);
    80001920:	00048513          	mv	a0,s1
    80001924:	00000097          	auipc	ra,0x0
    80001928:	2a8080e7          	jalr	680(ra) # 80001bcc <_ZN9Scheduler3putEP3TCB>
    8000192c:	fc1ff06f          	j	800018ec <_ZN3TCB8dispatchEv+0x24>

0000000080001930 <_Znwm>:
#include "../lib/mem.h"

void *operator new(uint64 n){
    80001930:	ff010113          	addi	sp,sp,-16
    80001934:	00113423          	sd	ra,8(sp)
    80001938:	00813023          	sd	s0,0(sp)
    8000193c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001940:	00002097          	auipc	ra,0x2
    80001944:	5e8080e7          	jalr	1512(ra) # 80003f28 <__mem_alloc>
}
    80001948:	00813083          	ld	ra,8(sp)
    8000194c:	00013403          	ld	s0,0(sp)
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret

0000000080001958 <_Znam>:

void *operator new[](uint64 n){
    80001958:	ff010113          	addi	sp,sp,-16
    8000195c:	00113423          	sd	ra,8(sp)
    80001960:	00813023          	sd	s0,0(sp)
    80001964:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	5c0080e7          	jalr	1472(ra) # 80003f28 <__mem_alloc>
}
    80001970:	00813083          	ld	ra,8(sp)
    80001974:	00013403          	ld	s0,0(sp)
    80001978:	01010113          	addi	sp,sp,16
    8000197c:	00008067          	ret

0000000080001980 <_ZdlPv>:

void operator delete(void* p) noexcept
{
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00113423          	sd	ra,8(sp)
    80001988:	00813023          	sd	s0,0(sp)
    8000198c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001990:	00002097          	auipc	ra,0x2
    80001994:	4cc080e7          	jalr	1228(ra) # 80003e5c <__mem_free>
}
    80001998:	00813083          	ld	ra,8(sp)
    8000199c:	00013403          	ld	s0,0(sp)
    800019a0:	01010113          	addi	sp,sp,16
    800019a4:	00008067          	ret

00000000800019a8 <_ZdaPv>:

void operator delete[](void* p) noexcept
{
    800019a8:	ff010113          	addi	sp,sp,-16
    800019ac:	00113423          	sd	ra,8(sp)
    800019b0:	00813023          	sd	s0,0(sp)
    800019b4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800019b8:	00002097          	auipc	ra,0x2
    800019bc:	4a4080e7          	jalr	1188(ra) # 80003e5c <__mem_free>
    800019c0:	00813083          	ld	ra,8(sp)
    800019c4:	00013403          	ld	s0,0(sp)
    800019c8:	01010113          	addi	sp,sp,16
    800019cc:	00008067          	ret

00000000800019d0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    800019d0:	ff010113          	addi	sp,sp,-16
    800019d4:	00813423          	sd	s0,8(sp)
    800019d8:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    __asm__ volatile ("csrw sepc, ra");
    800019dc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800019e0:	10200073          	sret
}
    800019e4:	00813403          	ld	s0,8(sp)
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret

00000000800019f0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    800019f0:	f9010113          	addi	sp,sp,-112
    800019f4:	06113423          	sd	ra,104(sp)
    800019f8:	06813023          	sd	s0,96(sp)
    800019fc:	04913c23          	sd	s1,88(sp)
    80001a00:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a04:	142027f3          	csrr	a5,scause
    80001a08:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001a0c:	fb843483          	ld	s1,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    80001a10:	ff848713          	addi	a4,s1,-8
    80001a14:	00100793          	li	a5,1
    80001a18:	02e7fc63          	bgeu	a5,a4,80001a50 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::timeSliceCounter=0;
        TCB::dispatch();
        w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);
    }
    if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver prekid
    80001a1c:	fff00793          	li	a5,-1
    80001a20:	03f79793          	slli	a5,a5,0x3f
    80001a24:	00178793          	addi	a5,a5,1
    80001a28:	06f48a63          	beq	s1,a5,80001a9c <_ZN5Riscv20handleSupervisorTrapEv+0xac>
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause==0x8000000000000009UL){
    80001a2c:	fff00793          	li	a5,-1
    80001a30:	03f79793          	slli	a5,a5,0x3f
    80001a34:	00978793          	addi	a5,a5,9
    80001a38:	0ef48063          	beq	s1,a5,80001b18 <_ZN5Riscv20handleSupervisorTrapEv+0x128>
        //scause - sta se  desilo
        //sepc- gde se desilo
        // stval - dodatno opise cause

    }
    80001a3c:	06813083          	ld	ra,104(sp)
    80001a40:	06013403          	ld	s0,96(sp)
    80001a44:	05813483          	ld	s1,88(sp)
    80001a48:	07010113          	addi	sp,sp,112
    80001a4c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a50:	141027f3          	csrr	a5,sepc
    80001a54:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001a58:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    80001a5c:	00478793          	addi	a5,a5,4
    80001a60:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001a64:	100027f3          	csrr	a5,sstatus
    80001a68:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001a6c:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001a70:	faf43023          	sd	a5,-96(s0)
        TCB::timeSliceCounter=0;
    80001a74:	00004797          	auipc	a5,0x4
    80001a78:	cdc7b783          	ld	a5,-804(a5) # 80005750 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001a7c:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	e48080e7          	jalr	-440(ra) # 800018c8 <_ZN3TCB8dispatchEv>
        w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    80001a88:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a8c:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80001a90:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001a94:	10079073          	csrw	sstatus,a5
}
    80001a98:	f85ff06f          	j	80001a1c <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
        TCB::timeSliceCounter++;
    80001a9c:	00004717          	auipc	a4,0x4
    80001aa0:	cb473703          	ld	a4,-844(a4) # 80005750 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001aa4:	00073783          	ld	a5,0(a4)
    80001aa8:	00178793          	addi	a5,a5,1
    80001aac:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80001ab0:	00004717          	auipc	a4,0x4
    80001ab4:	cb873703          	ld	a4,-840(a4) # 80005768 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ab8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const {return timeSlice;}
    80001abc:	01073703          	ld	a4,16(a4)
    80001ac0:	00e7f863          	bgeu	a5,a4,80001ad0 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001ac4:	00200793          	li	a5,2
    80001ac8:	1447b073          	csrc	sip,a5
}
    80001acc:	f71ff06f          	j	80001a3c <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ad0:	141027f3          	csrr	a5,sepc
    80001ad4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001ad8:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80001adc:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ae0:	100027f3          	csrr	a5,sstatus
    80001ae4:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001ae8:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001aec:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter=0;
    80001af0:	00004797          	auipc	a5,0x4
    80001af4:	c607b783          	ld	a5,-928(a5) # 80005750 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001af8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	dcc080e7          	jalr	-564(ra) # 800018c8 <_ZN3TCB8dispatchEv>
            w_sepc(sepc);
    80001b04:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b08:	14179073          	csrw	sepc,a5
            w_sstatus(sstatus);
    80001b0c:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b10:	10079073          	csrw	sstatus,a5
}
    80001b14:	fb1ff06f          	j	80001ac4 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        console_handler();
    80001b18:	00002097          	auipc	ra,0x2
    80001b1c:	5dc080e7          	jalr	1500(ra) # 800040f4 <console_handler>
    80001b20:	f1dff06f          	j	80001a3c <_ZN5Riscv20handleSupervisorTrapEv+0x4c>

0000000080001b24 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80001b24:	ff010113          	addi	sp,sp,-16
    80001b28:	00813423          	sd	s0,8(sp)
    80001b2c:	01010413          	addi	s0,sp,16
    80001b30:	00100793          	li	a5,1
    80001b34:	00f50863          	beq	a0,a5,80001b44 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b38:	00813403          	ld	s0,8(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret
    80001b44:	000107b7          	lui	a5,0x10
    80001b48:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b4c:	fef596e3          	bne	a1,a5,80001b38 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001b50:	00004797          	auipc	a5,0x4
    80001b54:	c9078793          	addi	a5,a5,-880 # 800057e0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001b58:	0007b023          	sd	zero,0(a5)
    80001b5c:	0007b423          	sd	zero,8(a5)
    80001b60:	fd9ff06f          	j	80001b38 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001b64 <_ZN9Scheduler3getEv>:
{
    80001b64:	fe010113          	addi	sp,sp,-32
    80001b68:	00113c23          	sd	ra,24(sp)
    80001b6c:	00813823          	sd	s0,16(sp)
    80001b70:	00913423          	sd	s1,8(sp)
    80001b74:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001b78:	00004517          	auipc	a0,0x4
    80001b7c:	c6853503          	ld	a0,-920(a0) # 800057e0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001b80:	04050263          	beqz	a0,80001bc4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001b84:	00853783          	ld	a5,8(a0)
    80001b88:	00004717          	auipc	a4,0x4
    80001b8c:	c4f73c23          	sd	a5,-936(a4) # 800057e0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80001b90:	02078463          	beqz	a5,80001bb8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001b94:	00053483          	ld	s1,0(a0)
        delete elem;
    80001b98:	00000097          	auipc	ra,0x0
    80001b9c:	de8080e7          	jalr	-536(ra) # 80001980 <_ZdlPv>
}
    80001ba0:	00048513          	mv	a0,s1
    80001ba4:	01813083          	ld	ra,24(sp)
    80001ba8:	01013403          	ld	s0,16(sp)
    80001bac:	00813483          	ld	s1,8(sp)
    80001bb0:	02010113          	addi	sp,sp,32
    80001bb4:	00008067          	ret
        if (!head) { tail = 0; }
    80001bb8:	00004797          	auipc	a5,0x4
    80001bbc:	c207b823          	sd	zero,-976(a5) # 800057e8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001bc0:	fd5ff06f          	j	80001b94 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001bc4:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001bc8:	fd9ff06f          	j	80001ba0 <_ZN9Scheduler3getEv+0x3c>

0000000080001bcc <_ZN9Scheduler3putEP3TCB>:
{
    80001bcc:	fe010113          	addi	sp,sp,-32
    80001bd0:	00113c23          	sd	ra,24(sp)
    80001bd4:	00813823          	sd	s0,16(sp)
    80001bd8:	00913423          	sd	s1,8(sp)
    80001bdc:	02010413          	addi	s0,sp,32
    80001be0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001be4:	01000513          	li	a0,16
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	d48080e7          	jalr	-696(ra) # 80001930 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001bf0:	00953023          	sd	s1,0(a0)
    80001bf4:	00053423          	sd	zero,8(a0)
        if (tail)
    80001bf8:	00004797          	auipc	a5,0x4
    80001bfc:	bf07b783          	ld	a5,-1040(a5) # 800057e8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001c00:	02078263          	beqz	a5,80001c24 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001c04:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001c08:	00004797          	auipc	a5,0x4
    80001c0c:	bea7b023          	sd	a0,-1056(a5) # 800057e8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001c10:	01813083          	ld	ra,24(sp)
    80001c14:	01013403          	ld	s0,16(sp)
    80001c18:	00813483          	ld	s1,8(sp)
    80001c1c:	02010113          	addi	sp,sp,32
    80001c20:	00008067          	ret
            head = tail = elem;
    80001c24:	00004797          	auipc	a5,0x4
    80001c28:	bbc78793          	addi	a5,a5,-1092 # 800057e0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001c2c:	00a7b423          	sd	a0,8(a5)
    80001c30:	00a7b023          	sd	a0,0(a5)
    80001c34:	fddff06f          	j	80001c10 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001c38 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00113423          	sd	ra,8(sp)
    80001c40:	00813023          	sd	s0,0(sp)
    80001c44:	01010413          	addi	s0,sp,16
    80001c48:	000105b7          	lui	a1,0x10
    80001c4c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001c50:	00100513          	li	a0,1
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	ed0080e7          	jalr	-304(ra) # 80001b24 <_Z41__static_initialization_and_destruction_0ii>
    80001c5c:	00813083          	ld	ra,8(sp)
    80001c60:	00013403          	ld	s0,0(sp)
    80001c64:	01010113          	addi	sp,sp,16
    80001c68:	00008067          	ret

0000000080001c6c <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"
void printString(char const *string)
{
    80001c6c:	fd010113          	addi	sp,sp,-48
    80001c70:	02113423          	sd	ra,40(sp)
    80001c74:	02813023          	sd	s0,32(sp)
    80001c78:	00913c23          	sd	s1,24(sp)
    80001c7c:	01213823          	sd	s2,16(sp)
    80001c80:	03010413          	addi	s0,sp,48
    80001c84:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c88:	100027f3          	csrr	a5,sstatus
    80001c8c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001c90:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001c94:	00200793          	li	a5,2
    80001c98:	1007b073          	csrc	sstatus,a5
    //nije bas elegantno zabraniti prekide ovako, jer ako su dugi ispisi moramo cekati, ali eto
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0')
    80001c9c:	0004c503          	lbu	a0,0(s1)
    80001ca0:	00050a63          	beqz	a0,80001cb4 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001ca4:	00002097          	auipc	ra,0x2
    80001ca8:	3dc080e7          	jalr	988(ra) # 80004080 <__putc>
        string++;
    80001cac:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001cb0:	fedff06f          	j	80001c9c <_Z11printStringPKc+0x30>
    }
    //moramo proveriti da li su ranije prekidi bili dozvoljeni, ako nisu ne zelimo sad da ih dozvolimo
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    80001cb4:	0009091b          	sext.w	s2,s2
    80001cb8:	00297913          	andi	s2,s2,2
    80001cbc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001cc0:	10092073          	csrs	sstatus,s2
}
    80001cc4:	02813083          	ld	ra,40(sp)
    80001cc8:	02013403          	ld	s0,32(sp)
    80001ccc:	01813483          	ld	s1,24(sp)
    80001cd0:	01013903          	ld	s2,16(sp)
    80001cd4:	03010113          	addi	sp,sp,48
    80001cd8:	00008067          	ret

0000000080001cdc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001cdc:	fc010113          	addi	sp,sp,-64
    80001ce0:	02113c23          	sd	ra,56(sp)
    80001ce4:	02813823          	sd	s0,48(sp)
    80001ce8:	02913423          	sd	s1,40(sp)
    80001cec:	03213023          	sd	s2,32(sp)
    80001cf0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cf4:	100027f3          	csrr	a5,sstatus
    80001cf8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001cfc:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d00:	00200793          	li	a5,2
    80001d04:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001d08:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001d0c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001d10:	00a00613          	li	a2,10
    80001d14:	02c5773b          	remuw	a4,a0,a2
    80001d18:	02071693          	slli	a3,a4,0x20
    80001d1c:	0206d693          	srli	a3,a3,0x20
    80001d20:	00003717          	auipc	a4,0x3
    80001d24:	3b070713          	addi	a4,a4,944 # 800050d0 <_ZZ12printIntegermE6digits>
    80001d28:	00d70733          	add	a4,a4,a3
    80001d2c:	00074703          	lbu	a4,0(a4)
    80001d30:	fe040693          	addi	a3,s0,-32
    80001d34:	009687b3          	add	a5,a3,s1
    80001d38:	0014849b          	addiw	s1,s1,1
    80001d3c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001d40:	0005071b          	sext.w	a4,a0
    80001d44:	02c5553b          	divuw	a0,a0,a2
    80001d48:	00900793          	li	a5,9
    80001d4c:	fce7e2e3          	bltu	a5,a4,80001d10 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80001d50:	fff4849b          	addiw	s1,s1,-1
    80001d54:	0004ce63          	bltz	s1,80001d70 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    80001d58:	fe040793          	addi	a5,s0,-32
    80001d5c:	009787b3          	add	a5,a5,s1
    80001d60:	ff07c503          	lbu	a0,-16(a5)
    80001d64:	00002097          	auipc	ra,0x2
    80001d68:	31c080e7          	jalr	796(ra) # 80004080 <__putc>
    80001d6c:	fe5ff06f          	j	80001d50 <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    80001d70:	0009091b          	sext.w	s2,s2
    80001d74:	00297913          	andi	s2,s2,2
    80001d78:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d7c:	10092073          	csrs	sstatus,s2
    80001d80:	03813083          	ld	ra,56(sp)
    80001d84:	03013403          	ld	s0,48(sp)
    80001d88:	02813483          	ld	s1,40(sp)
    80001d8c:	02013903          	ld	s2,32(sp)
    80001d90:	04010113          	addi	sp,sp,64
    80001d94:	00008067          	ret

0000000080001d98 <start>:
    80001d98:	ff010113          	addi	sp,sp,-16
    80001d9c:	00813423          	sd	s0,8(sp)
    80001da0:	01010413          	addi	s0,sp,16
    80001da4:	300027f3          	csrr	a5,mstatus
    80001da8:	ffffe737          	lui	a4,0xffffe
    80001dac:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d9f>
    80001db0:	00e7f7b3          	and	a5,a5,a4
    80001db4:	00001737          	lui	a4,0x1
    80001db8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001dbc:	00e7e7b3          	or	a5,a5,a4
    80001dc0:	30079073          	csrw	mstatus,a5
    80001dc4:	00000797          	auipc	a5,0x0
    80001dc8:	16078793          	addi	a5,a5,352 # 80001f24 <system_main>
    80001dcc:	34179073          	csrw	mepc,a5
    80001dd0:	00000793          	li	a5,0
    80001dd4:	18079073          	csrw	satp,a5
    80001dd8:	000107b7          	lui	a5,0x10
    80001ddc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001de0:	30279073          	csrw	medeleg,a5
    80001de4:	30379073          	csrw	mideleg,a5
    80001de8:	104027f3          	csrr	a5,sie
    80001dec:	2227e793          	ori	a5,a5,546
    80001df0:	10479073          	csrw	sie,a5
    80001df4:	fff00793          	li	a5,-1
    80001df8:	00a7d793          	srli	a5,a5,0xa
    80001dfc:	3b079073          	csrw	pmpaddr0,a5
    80001e00:	00f00793          	li	a5,15
    80001e04:	3a079073          	csrw	pmpcfg0,a5
    80001e08:	f14027f3          	csrr	a5,mhartid
    80001e0c:	0200c737          	lui	a4,0x200c
    80001e10:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e14:	0007869b          	sext.w	a3,a5
    80001e18:	00269713          	slli	a4,a3,0x2
    80001e1c:	000f4637          	lui	a2,0xf4
    80001e20:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e24:	00d70733          	add	a4,a4,a3
    80001e28:	0037979b          	slliw	a5,a5,0x3
    80001e2c:	020046b7          	lui	a3,0x2004
    80001e30:	00d787b3          	add	a5,a5,a3
    80001e34:	00c585b3          	add	a1,a1,a2
    80001e38:	00371693          	slli	a3,a4,0x3
    80001e3c:	00004717          	auipc	a4,0x4
    80001e40:	9b470713          	addi	a4,a4,-1612 # 800057f0 <timer_scratch>
    80001e44:	00b7b023          	sd	a1,0(a5)
    80001e48:	00d70733          	add	a4,a4,a3
    80001e4c:	00f73c23          	sd	a5,24(a4)
    80001e50:	02c73023          	sd	a2,32(a4)
    80001e54:	34071073          	csrw	mscratch,a4
    80001e58:	00000797          	auipc	a5,0x0
    80001e5c:	6e878793          	addi	a5,a5,1768 # 80002540 <timervec>
    80001e60:	30579073          	csrw	mtvec,a5
    80001e64:	300027f3          	csrr	a5,mstatus
    80001e68:	0087e793          	ori	a5,a5,8
    80001e6c:	30079073          	csrw	mstatus,a5
    80001e70:	304027f3          	csrr	a5,mie
    80001e74:	0807e793          	ori	a5,a5,128
    80001e78:	30479073          	csrw	mie,a5
    80001e7c:	f14027f3          	csrr	a5,mhartid
    80001e80:	0007879b          	sext.w	a5,a5
    80001e84:	00078213          	mv	tp,a5
    80001e88:	30200073          	mret
    80001e8c:	00813403          	ld	s0,8(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <timerinit>:
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00813423          	sd	s0,8(sp)
    80001ea0:	01010413          	addi	s0,sp,16
    80001ea4:	f14027f3          	csrr	a5,mhartid
    80001ea8:	0200c737          	lui	a4,0x200c
    80001eac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001eb0:	0007869b          	sext.w	a3,a5
    80001eb4:	00269713          	slli	a4,a3,0x2
    80001eb8:	000f4637          	lui	a2,0xf4
    80001ebc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ec0:	00d70733          	add	a4,a4,a3
    80001ec4:	0037979b          	slliw	a5,a5,0x3
    80001ec8:	020046b7          	lui	a3,0x2004
    80001ecc:	00d787b3          	add	a5,a5,a3
    80001ed0:	00c585b3          	add	a1,a1,a2
    80001ed4:	00371693          	slli	a3,a4,0x3
    80001ed8:	00004717          	auipc	a4,0x4
    80001edc:	91870713          	addi	a4,a4,-1768 # 800057f0 <timer_scratch>
    80001ee0:	00b7b023          	sd	a1,0(a5)
    80001ee4:	00d70733          	add	a4,a4,a3
    80001ee8:	00f73c23          	sd	a5,24(a4)
    80001eec:	02c73023          	sd	a2,32(a4)
    80001ef0:	34071073          	csrw	mscratch,a4
    80001ef4:	00000797          	auipc	a5,0x0
    80001ef8:	64c78793          	addi	a5,a5,1612 # 80002540 <timervec>
    80001efc:	30579073          	csrw	mtvec,a5
    80001f00:	300027f3          	csrr	a5,mstatus
    80001f04:	0087e793          	ori	a5,a5,8
    80001f08:	30079073          	csrw	mstatus,a5
    80001f0c:	304027f3          	csrr	a5,mie
    80001f10:	0807e793          	ori	a5,a5,128
    80001f14:	30479073          	csrw	mie,a5
    80001f18:	00813403          	ld	s0,8(sp)
    80001f1c:	01010113          	addi	sp,sp,16
    80001f20:	00008067          	ret

0000000080001f24 <system_main>:
    80001f24:	fe010113          	addi	sp,sp,-32
    80001f28:	00813823          	sd	s0,16(sp)
    80001f2c:	00913423          	sd	s1,8(sp)
    80001f30:	00113c23          	sd	ra,24(sp)
    80001f34:	02010413          	addi	s0,sp,32
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	0c4080e7          	jalr	196(ra) # 80001ffc <cpuid>
    80001f40:	00004497          	auipc	s1,0x4
    80001f44:	86048493          	addi	s1,s1,-1952 # 800057a0 <started>
    80001f48:	02050263          	beqz	a0,80001f6c <system_main+0x48>
    80001f4c:	0004a783          	lw	a5,0(s1)
    80001f50:	0007879b          	sext.w	a5,a5
    80001f54:	fe078ce3          	beqz	a5,80001f4c <system_main+0x28>
    80001f58:	0ff0000f          	fence
    80001f5c:	00003517          	auipc	a0,0x3
    80001f60:	1b450513          	addi	a0,a0,436 # 80005110 <_ZZ12printIntegermE6digits+0x40>
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	a78080e7          	jalr	-1416(ra) # 800029dc <panic>
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	9cc080e7          	jalr	-1588(ra) # 80002938 <consoleinit>
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	158080e7          	jalr	344(ra) # 800030cc <printfinit>
    80001f7c:	00003517          	auipc	a0,0x3
    80001f80:	0a450513          	addi	a0,a0,164 # 80005020 <kvmincrease+0xe80>
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	ab4080e7          	jalr	-1356(ra) # 80002a38 <__printf>
    80001f8c:	00003517          	auipc	a0,0x3
    80001f90:	15450513          	addi	a0,a0,340 # 800050e0 <_ZZ12printIntegermE6digits+0x10>
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	aa4080e7          	jalr	-1372(ra) # 80002a38 <__printf>
    80001f9c:	00003517          	auipc	a0,0x3
    80001fa0:	08450513          	addi	a0,a0,132 # 80005020 <kvmincrease+0xe80>
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	a94080e7          	jalr	-1388(ra) # 80002a38 <__printf>
    80001fac:	00001097          	auipc	ra,0x1
    80001fb0:	4ac080e7          	jalr	1196(ra) # 80003458 <kinit>
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	148080e7          	jalr	328(ra) # 800020fc <trapinit>
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	16c080e7          	jalr	364(ra) # 80002128 <trapinithart>
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	5bc080e7          	jalr	1468(ra) # 80002580 <plicinit>
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	5dc080e7          	jalr	1500(ra) # 800025a8 <plicinithart>
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	078080e7          	jalr	120(ra) # 8000204c <userinit>
    80001fdc:	0ff0000f          	fence
    80001fe0:	00100793          	li	a5,1
    80001fe4:	00003517          	auipc	a0,0x3
    80001fe8:	11450513          	addi	a0,a0,276 # 800050f8 <_ZZ12printIntegermE6digits+0x28>
    80001fec:	00f4a023          	sw	a5,0(s1)
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	a48080e7          	jalr	-1464(ra) # 80002a38 <__printf>
    80001ff8:	0000006f          	j	80001ff8 <system_main+0xd4>

0000000080001ffc <cpuid>:
    80001ffc:	ff010113          	addi	sp,sp,-16
    80002000:	00813423          	sd	s0,8(sp)
    80002004:	01010413          	addi	s0,sp,16
    80002008:	00020513          	mv	a0,tp
    8000200c:	00813403          	ld	s0,8(sp)
    80002010:	0005051b          	sext.w	a0,a0
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <mycpu>:
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    80002028:	00020793          	mv	a5,tp
    8000202c:	00813403          	ld	s0,8(sp)
    80002030:	0007879b          	sext.w	a5,a5
    80002034:	00779793          	slli	a5,a5,0x7
    80002038:	00004517          	auipc	a0,0x4
    8000203c:	7e850513          	addi	a0,a0,2024 # 80006820 <cpus>
    80002040:	00f50533          	add	a0,a0,a5
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00008067          	ret

000000008000204c <userinit>:
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    80002058:	00813403          	ld	s0,8(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	fffff317          	auipc	t1,0xfffff
    80002064:	5b030067          	jr	1456(t1) # 80001610 <main>

0000000080002068 <either_copyout>:
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00813023          	sd	s0,0(sp)
    80002070:	00113423          	sd	ra,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    80002078:	02051663          	bnez	a0,800020a4 <either_copyout+0x3c>
    8000207c:	00058513          	mv	a0,a1
    80002080:	00060593          	mv	a1,a2
    80002084:	0006861b          	sext.w	a2,a3
    80002088:	00002097          	auipc	ra,0x2
    8000208c:	c5c080e7          	jalr	-932(ra) # 80003ce4 <__memmove>
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00013403          	ld	s0,0(sp)
    80002098:	00000513          	li	a0,0
    8000209c:	01010113          	addi	sp,sp,16
    800020a0:	00008067          	ret
    800020a4:	00003517          	auipc	a0,0x3
    800020a8:	09450513          	addi	a0,a0,148 # 80005138 <_ZZ12printIntegermE6digits+0x68>
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	930080e7          	jalr	-1744(ra) # 800029dc <panic>

00000000800020b4 <either_copyin>:
    800020b4:	ff010113          	addi	sp,sp,-16
    800020b8:	00813023          	sd	s0,0(sp)
    800020bc:	00113423          	sd	ra,8(sp)
    800020c0:	01010413          	addi	s0,sp,16
    800020c4:	02059463          	bnez	a1,800020ec <either_copyin+0x38>
    800020c8:	00060593          	mv	a1,a2
    800020cc:	0006861b          	sext.w	a2,a3
    800020d0:	00002097          	auipc	ra,0x2
    800020d4:	c14080e7          	jalr	-1004(ra) # 80003ce4 <__memmove>
    800020d8:	00813083          	ld	ra,8(sp)
    800020dc:	00013403          	ld	s0,0(sp)
    800020e0:	00000513          	li	a0,0
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret
    800020ec:	00003517          	auipc	a0,0x3
    800020f0:	07450513          	addi	a0,a0,116 # 80005160 <_ZZ12printIntegermE6digits+0x90>
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	8e8080e7          	jalr	-1816(ra) # 800029dc <panic>

00000000800020fc <trapinit>:
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00813423          	sd	s0,8(sp)
    80002104:	01010413          	addi	s0,sp,16
    80002108:	00813403          	ld	s0,8(sp)
    8000210c:	00003597          	auipc	a1,0x3
    80002110:	07c58593          	addi	a1,a1,124 # 80005188 <_ZZ12printIntegermE6digits+0xb8>
    80002114:	00004517          	auipc	a0,0x4
    80002118:	78c50513          	addi	a0,a0,1932 # 800068a0 <tickslock>
    8000211c:	01010113          	addi	sp,sp,16
    80002120:	00001317          	auipc	t1,0x1
    80002124:	5c830067          	jr	1480(t1) # 800036e8 <initlock>

0000000080002128 <trapinithart>:
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00813423          	sd	s0,8(sp)
    80002130:	01010413          	addi	s0,sp,16
    80002134:	00000797          	auipc	a5,0x0
    80002138:	2fc78793          	addi	a5,a5,764 # 80002430 <kernelvec>
    8000213c:	10579073          	csrw	stvec,a5
    80002140:	00813403          	ld	s0,8(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret

000000008000214c <usertrap>:
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00813423          	sd	s0,8(sp)
    80002154:	01010413          	addi	s0,sp,16
    80002158:	00813403          	ld	s0,8(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret

0000000080002164 <usertrapret>:
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00813423          	sd	s0,8(sp)
    8000216c:	01010413          	addi	s0,sp,16
    80002170:	00813403          	ld	s0,8(sp)
    80002174:	01010113          	addi	sp,sp,16
    80002178:	00008067          	ret

000000008000217c <kerneltrap>:
    8000217c:	fe010113          	addi	sp,sp,-32
    80002180:	00813823          	sd	s0,16(sp)
    80002184:	00113c23          	sd	ra,24(sp)
    80002188:	00913423          	sd	s1,8(sp)
    8000218c:	02010413          	addi	s0,sp,32
    80002190:	142025f3          	csrr	a1,scause
    80002194:	100027f3          	csrr	a5,sstatus
    80002198:	0027f793          	andi	a5,a5,2
    8000219c:	10079c63          	bnez	a5,800022b4 <kerneltrap+0x138>
    800021a0:	142027f3          	csrr	a5,scause
    800021a4:	0207ce63          	bltz	a5,800021e0 <kerneltrap+0x64>
    800021a8:	00003517          	auipc	a0,0x3
    800021ac:	02850513          	addi	a0,a0,40 # 800051d0 <_ZZ12printIntegermE6digits+0x100>
    800021b0:	00001097          	auipc	ra,0x1
    800021b4:	888080e7          	jalr	-1912(ra) # 80002a38 <__printf>
    800021b8:	141025f3          	csrr	a1,sepc
    800021bc:	14302673          	csrr	a2,stval
    800021c0:	00003517          	auipc	a0,0x3
    800021c4:	02050513          	addi	a0,a0,32 # 800051e0 <_ZZ12printIntegermE6digits+0x110>
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	870080e7          	jalr	-1936(ra) # 80002a38 <__printf>
    800021d0:	00003517          	auipc	a0,0x3
    800021d4:	02850513          	addi	a0,a0,40 # 800051f8 <_ZZ12printIntegermE6digits+0x128>
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	804080e7          	jalr	-2044(ra) # 800029dc <panic>
    800021e0:	0ff7f713          	andi	a4,a5,255
    800021e4:	00900693          	li	a3,9
    800021e8:	04d70063          	beq	a4,a3,80002228 <kerneltrap+0xac>
    800021ec:	fff00713          	li	a4,-1
    800021f0:	03f71713          	slli	a4,a4,0x3f
    800021f4:	00170713          	addi	a4,a4,1
    800021f8:	fae798e3          	bne	a5,a4,800021a8 <kerneltrap+0x2c>
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	e00080e7          	jalr	-512(ra) # 80001ffc <cpuid>
    80002204:	06050663          	beqz	a0,80002270 <kerneltrap+0xf4>
    80002208:	144027f3          	csrr	a5,sip
    8000220c:	ffd7f793          	andi	a5,a5,-3
    80002210:	14479073          	csrw	sip,a5
    80002214:	01813083          	ld	ra,24(sp)
    80002218:	01013403          	ld	s0,16(sp)
    8000221c:	00813483          	ld	s1,8(sp)
    80002220:	02010113          	addi	sp,sp,32
    80002224:	00008067          	ret
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	3cc080e7          	jalr	972(ra) # 800025f4 <plic_claim>
    80002230:	00a00793          	li	a5,10
    80002234:	00050493          	mv	s1,a0
    80002238:	06f50863          	beq	a0,a5,800022a8 <kerneltrap+0x12c>
    8000223c:	fc050ce3          	beqz	a0,80002214 <kerneltrap+0x98>
    80002240:	00050593          	mv	a1,a0
    80002244:	00003517          	auipc	a0,0x3
    80002248:	f6c50513          	addi	a0,a0,-148 # 800051b0 <_ZZ12printIntegermE6digits+0xe0>
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	7ec080e7          	jalr	2028(ra) # 80002a38 <__printf>
    80002254:	01013403          	ld	s0,16(sp)
    80002258:	01813083          	ld	ra,24(sp)
    8000225c:	00048513          	mv	a0,s1
    80002260:	00813483          	ld	s1,8(sp)
    80002264:	02010113          	addi	sp,sp,32
    80002268:	00000317          	auipc	t1,0x0
    8000226c:	3c430067          	jr	964(t1) # 8000262c <plic_complete>
    80002270:	00004517          	auipc	a0,0x4
    80002274:	63050513          	addi	a0,a0,1584 # 800068a0 <tickslock>
    80002278:	00001097          	auipc	ra,0x1
    8000227c:	494080e7          	jalr	1172(ra) # 8000370c <acquire>
    80002280:	00003717          	auipc	a4,0x3
    80002284:	52470713          	addi	a4,a4,1316 # 800057a4 <ticks>
    80002288:	00072783          	lw	a5,0(a4)
    8000228c:	00004517          	auipc	a0,0x4
    80002290:	61450513          	addi	a0,a0,1556 # 800068a0 <tickslock>
    80002294:	0017879b          	addiw	a5,a5,1
    80002298:	00f72023          	sw	a5,0(a4)
    8000229c:	00001097          	auipc	ra,0x1
    800022a0:	53c080e7          	jalr	1340(ra) # 800037d8 <release>
    800022a4:	f65ff06f          	j	80002208 <kerneltrap+0x8c>
    800022a8:	00001097          	auipc	ra,0x1
    800022ac:	098080e7          	jalr	152(ra) # 80003340 <uartintr>
    800022b0:	fa5ff06f          	j	80002254 <kerneltrap+0xd8>
    800022b4:	00003517          	auipc	a0,0x3
    800022b8:	edc50513          	addi	a0,a0,-292 # 80005190 <_ZZ12printIntegermE6digits+0xc0>
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	720080e7          	jalr	1824(ra) # 800029dc <panic>

00000000800022c4 <clockintr>:
    800022c4:	fe010113          	addi	sp,sp,-32
    800022c8:	00813823          	sd	s0,16(sp)
    800022cc:	00913423          	sd	s1,8(sp)
    800022d0:	00113c23          	sd	ra,24(sp)
    800022d4:	02010413          	addi	s0,sp,32
    800022d8:	00004497          	auipc	s1,0x4
    800022dc:	5c848493          	addi	s1,s1,1480 # 800068a0 <tickslock>
    800022e0:	00048513          	mv	a0,s1
    800022e4:	00001097          	auipc	ra,0x1
    800022e8:	428080e7          	jalr	1064(ra) # 8000370c <acquire>
    800022ec:	00003717          	auipc	a4,0x3
    800022f0:	4b870713          	addi	a4,a4,1208 # 800057a4 <ticks>
    800022f4:	00072783          	lw	a5,0(a4)
    800022f8:	01013403          	ld	s0,16(sp)
    800022fc:	01813083          	ld	ra,24(sp)
    80002300:	00048513          	mv	a0,s1
    80002304:	0017879b          	addiw	a5,a5,1
    80002308:	00813483          	ld	s1,8(sp)
    8000230c:	00f72023          	sw	a5,0(a4)
    80002310:	02010113          	addi	sp,sp,32
    80002314:	00001317          	auipc	t1,0x1
    80002318:	4c430067          	jr	1220(t1) # 800037d8 <release>

000000008000231c <devintr>:
    8000231c:	142027f3          	csrr	a5,scause
    80002320:	00000513          	li	a0,0
    80002324:	0007c463          	bltz	a5,8000232c <devintr+0x10>
    80002328:	00008067          	ret
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00813823          	sd	s0,16(sp)
    80002334:	00113c23          	sd	ra,24(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	02010413          	addi	s0,sp,32
    80002340:	0ff7f713          	andi	a4,a5,255
    80002344:	00900693          	li	a3,9
    80002348:	04d70c63          	beq	a4,a3,800023a0 <devintr+0x84>
    8000234c:	fff00713          	li	a4,-1
    80002350:	03f71713          	slli	a4,a4,0x3f
    80002354:	00170713          	addi	a4,a4,1
    80002358:	00e78c63          	beq	a5,a4,80002370 <devintr+0x54>
    8000235c:	01813083          	ld	ra,24(sp)
    80002360:	01013403          	ld	s0,16(sp)
    80002364:	00813483          	ld	s1,8(sp)
    80002368:	02010113          	addi	sp,sp,32
    8000236c:	00008067          	ret
    80002370:	00000097          	auipc	ra,0x0
    80002374:	c8c080e7          	jalr	-884(ra) # 80001ffc <cpuid>
    80002378:	06050663          	beqz	a0,800023e4 <devintr+0xc8>
    8000237c:	144027f3          	csrr	a5,sip
    80002380:	ffd7f793          	andi	a5,a5,-3
    80002384:	14479073          	csrw	sip,a5
    80002388:	01813083          	ld	ra,24(sp)
    8000238c:	01013403          	ld	s0,16(sp)
    80002390:	00813483          	ld	s1,8(sp)
    80002394:	00200513          	li	a0,2
    80002398:	02010113          	addi	sp,sp,32
    8000239c:	00008067          	ret
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	254080e7          	jalr	596(ra) # 800025f4 <plic_claim>
    800023a8:	00a00793          	li	a5,10
    800023ac:	00050493          	mv	s1,a0
    800023b0:	06f50663          	beq	a0,a5,8000241c <devintr+0x100>
    800023b4:	00100513          	li	a0,1
    800023b8:	fa0482e3          	beqz	s1,8000235c <devintr+0x40>
    800023bc:	00048593          	mv	a1,s1
    800023c0:	00003517          	auipc	a0,0x3
    800023c4:	df050513          	addi	a0,a0,-528 # 800051b0 <_ZZ12printIntegermE6digits+0xe0>
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	670080e7          	jalr	1648(ra) # 80002a38 <__printf>
    800023d0:	00048513          	mv	a0,s1
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	258080e7          	jalr	600(ra) # 8000262c <plic_complete>
    800023dc:	00100513          	li	a0,1
    800023e0:	f7dff06f          	j	8000235c <devintr+0x40>
    800023e4:	00004517          	auipc	a0,0x4
    800023e8:	4bc50513          	addi	a0,a0,1212 # 800068a0 <tickslock>
    800023ec:	00001097          	auipc	ra,0x1
    800023f0:	320080e7          	jalr	800(ra) # 8000370c <acquire>
    800023f4:	00003717          	auipc	a4,0x3
    800023f8:	3b070713          	addi	a4,a4,944 # 800057a4 <ticks>
    800023fc:	00072783          	lw	a5,0(a4)
    80002400:	00004517          	auipc	a0,0x4
    80002404:	4a050513          	addi	a0,a0,1184 # 800068a0 <tickslock>
    80002408:	0017879b          	addiw	a5,a5,1
    8000240c:	00f72023          	sw	a5,0(a4)
    80002410:	00001097          	auipc	ra,0x1
    80002414:	3c8080e7          	jalr	968(ra) # 800037d8 <release>
    80002418:	f65ff06f          	j	8000237c <devintr+0x60>
    8000241c:	00001097          	auipc	ra,0x1
    80002420:	f24080e7          	jalr	-220(ra) # 80003340 <uartintr>
    80002424:	fadff06f          	j	800023d0 <devintr+0xb4>
	...

0000000080002430 <kernelvec>:
    80002430:	f0010113          	addi	sp,sp,-256
    80002434:	00113023          	sd	ra,0(sp)
    80002438:	00213423          	sd	sp,8(sp)
    8000243c:	00313823          	sd	gp,16(sp)
    80002440:	00413c23          	sd	tp,24(sp)
    80002444:	02513023          	sd	t0,32(sp)
    80002448:	02613423          	sd	t1,40(sp)
    8000244c:	02713823          	sd	t2,48(sp)
    80002450:	02813c23          	sd	s0,56(sp)
    80002454:	04913023          	sd	s1,64(sp)
    80002458:	04a13423          	sd	a0,72(sp)
    8000245c:	04b13823          	sd	a1,80(sp)
    80002460:	04c13c23          	sd	a2,88(sp)
    80002464:	06d13023          	sd	a3,96(sp)
    80002468:	06e13423          	sd	a4,104(sp)
    8000246c:	06f13823          	sd	a5,112(sp)
    80002470:	07013c23          	sd	a6,120(sp)
    80002474:	09113023          	sd	a7,128(sp)
    80002478:	09213423          	sd	s2,136(sp)
    8000247c:	09313823          	sd	s3,144(sp)
    80002480:	09413c23          	sd	s4,152(sp)
    80002484:	0b513023          	sd	s5,160(sp)
    80002488:	0b613423          	sd	s6,168(sp)
    8000248c:	0b713823          	sd	s7,176(sp)
    80002490:	0b813c23          	sd	s8,184(sp)
    80002494:	0d913023          	sd	s9,192(sp)
    80002498:	0da13423          	sd	s10,200(sp)
    8000249c:	0db13823          	sd	s11,208(sp)
    800024a0:	0dc13c23          	sd	t3,216(sp)
    800024a4:	0fd13023          	sd	t4,224(sp)
    800024a8:	0fe13423          	sd	t5,232(sp)
    800024ac:	0ff13823          	sd	t6,240(sp)
    800024b0:	ccdff0ef          	jal	ra,8000217c <kerneltrap>
    800024b4:	00013083          	ld	ra,0(sp)
    800024b8:	00813103          	ld	sp,8(sp)
    800024bc:	01013183          	ld	gp,16(sp)
    800024c0:	02013283          	ld	t0,32(sp)
    800024c4:	02813303          	ld	t1,40(sp)
    800024c8:	03013383          	ld	t2,48(sp)
    800024cc:	03813403          	ld	s0,56(sp)
    800024d0:	04013483          	ld	s1,64(sp)
    800024d4:	04813503          	ld	a0,72(sp)
    800024d8:	05013583          	ld	a1,80(sp)
    800024dc:	05813603          	ld	a2,88(sp)
    800024e0:	06013683          	ld	a3,96(sp)
    800024e4:	06813703          	ld	a4,104(sp)
    800024e8:	07013783          	ld	a5,112(sp)
    800024ec:	07813803          	ld	a6,120(sp)
    800024f0:	08013883          	ld	a7,128(sp)
    800024f4:	08813903          	ld	s2,136(sp)
    800024f8:	09013983          	ld	s3,144(sp)
    800024fc:	09813a03          	ld	s4,152(sp)
    80002500:	0a013a83          	ld	s5,160(sp)
    80002504:	0a813b03          	ld	s6,168(sp)
    80002508:	0b013b83          	ld	s7,176(sp)
    8000250c:	0b813c03          	ld	s8,184(sp)
    80002510:	0c013c83          	ld	s9,192(sp)
    80002514:	0c813d03          	ld	s10,200(sp)
    80002518:	0d013d83          	ld	s11,208(sp)
    8000251c:	0d813e03          	ld	t3,216(sp)
    80002520:	0e013e83          	ld	t4,224(sp)
    80002524:	0e813f03          	ld	t5,232(sp)
    80002528:	0f013f83          	ld	t6,240(sp)
    8000252c:	10010113          	addi	sp,sp,256
    80002530:	10200073          	sret
    80002534:	00000013          	nop
    80002538:	00000013          	nop
    8000253c:	00000013          	nop

0000000080002540 <timervec>:
    80002540:	34051573          	csrrw	a0,mscratch,a0
    80002544:	00b53023          	sd	a1,0(a0)
    80002548:	00c53423          	sd	a2,8(a0)
    8000254c:	00d53823          	sd	a3,16(a0)
    80002550:	01853583          	ld	a1,24(a0)
    80002554:	02053603          	ld	a2,32(a0)
    80002558:	0005b683          	ld	a3,0(a1)
    8000255c:	00c686b3          	add	a3,a3,a2
    80002560:	00d5b023          	sd	a3,0(a1)
    80002564:	00200593          	li	a1,2
    80002568:	14459073          	csrw	sip,a1
    8000256c:	01053683          	ld	a3,16(a0)
    80002570:	00853603          	ld	a2,8(a0)
    80002574:	00053583          	ld	a1,0(a0)
    80002578:	34051573          	csrrw	a0,mscratch,a0
    8000257c:	30200073          	mret

0000000080002580 <plicinit>:
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00813423          	sd	s0,8(sp)
    80002588:	01010413          	addi	s0,sp,16
    8000258c:	00813403          	ld	s0,8(sp)
    80002590:	0c0007b7          	lui	a5,0xc000
    80002594:	00100713          	li	a4,1
    80002598:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000259c:	00e7a223          	sw	a4,4(a5)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret

00000000800025a8 <plicinithart>:
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00813023          	sd	s0,0(sp)
    800025b0:	00113423          	sd	ra,8(sp)
    800025b4:	01010413          	addi	s0,sp,16
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	a44080e7          	jalr	-1468(ra) # 80001ffc <cpuid>
    800025c0:	0085171b          	slliw	a4,a0,0x8
    800025c4:	0c0027b7          	lui	a5,0xc002
    800025c8:	00e787b3          	add	a5,a5,a4
    800025cc:	40200713          	li	a4,1026
    800025d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800025d4:	00813083          	ld	ra,8(sp)
    800025d8:	00013403          	ld	s0,0(sp)
    800025dc:	00d5151b          	slliw	a0,a0,0xd
    800025e0:	0c2017b7          	lui	a5,0xc201
    800025e4:	00a78533          	add	a0,a5,a0
    800025e8:	00052023          	sw	zero,0(a0)
    800025ec:	01010113          	addi	sp,sp,16
    800025f0:	00008067          	ret

00000000800025f4 <plic_claim>:
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00813023          	sd	s0,0(sp)
    800025fc:	00113423          	sd	ra,8(sp)
    80002600:	01010413          	addi	s0,sp,16
    80002604:	00000097          	auipc	ra,0x0
    80002608:	9f8080e7          	jalr	-1544(ra) # 80001ffc <cpuid>
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	00d5151b          	slliw	a0,a0,0xd
    80002618:	0c2017b7          	lui	a5,0xc201
    8000261c:	00a78533          	add	a0,a5,a0
    80002620:	00452503          	lw	a0,4(a0)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret

000000008000262c <plic_complete>:
    8000262c:	fe010113          	addi	sp,sp,-32
    80002630:	00813823          	sd	s0,16(sp)
    80002634:	00913423          	sd	s1,8(sp)
    80002638:	00113c23          	sd	ra,24(sp)
    8000263c:	02010413          	addi	s0,sp,32
    80002640:	00050493          	mv	s1,a0
    80002644:	00000097          	auipc	ra,0x0
    80002648:	9b8080e7          	jalr	-1608(ra) # 80001ffc <cpuid>
    8000264c:	01813083          	ld	ra,24(sp)
    80002650:	01013403          	ld	s0,16(sp)
    80002654:	00d5179b          	slliw	a5,a0,0xd
    80002658:	0c201737          	lui	a4,0xc201
    8000265c:	00f707b3          	add	a5,a4,a5
    80002660:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002664:	00813483          	ld	s1,8(sp)
    80002668:	02010113          	addi	sp,sp,32
    8000266c:	00008067          	ret

0000000080002670 <consolewrite>:
    80002670:	fb010113          	addi	sp,sp,-80
    80002674:	04813023          	sd	s0,64(sp)
    80002678:	04113423          	sd	ra,72(sp)
    8000267c:	02913c23          	sd	s1,56(sp)
    80002680:	03213823          	sd	s2,48(sp)
    80002684:	03313423          	sd	s3,40(sp)
    80002688:	03413023          	sd	s4,32(sp)
    8000268c:	01513c23          	sd	s5,24(sp)
    80002690:	05010413          	addi	s0,sp,80
    80002694:	06c05c63          	blez	a2,8000270c <consolewrite+0x9c>
    80002698:	00060993          	mv	s3,a2
    8000269c:	00050a13          	mv	s4,a0
    800026a0:	00058493          	mv	s1,a1
    800026a4:	00000913          	li	s2,0
    800026a8:	fff00a93          	li	s5,-1
    800026ac:	01c0006f          	j	800026c8 <consolewrite+0x58>
    800026b0:	fbf44503          	lbu	a0,-65(s0)
    800026b4:	0019091b          	addiw	s2,s2,1
    800026b8:	00148493          	addi	s1,s1,1
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	a9c080e7          	jalr	-1380(ra) # 80003158 <uartputc>
    800026c4:	03298063          	beq	s3,s2,800026e4 <consolewrite+0x74>
    800026c8:	00048613          	mv	a2,s1
    800026cc:	00100693          	li	a3,1
    800026d0:	000a0593          	mv	a1,s4
    800026d4:	fbf40513          	addi	a0,s0,-65
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	9dc080e7          	jalr	-1572(ra) # 800020b4 <either_copyin>
    800026e0:	fd5518e3          	bne	a0,s5,800026b0 <consolewrite+0x40>
    800026e4:	04813083          	ld	ra,72(sp)
    800026e8:	04013403          	ld	s0,64(sp)
    800026ec:	03813483          	ld	s1,56(sp)
    800026f0:	02813983          	ld	s3,40(sp)
    800026f4:	02013a03          	ld	s4,32(sp)
    800026f8:	01813a83          	ld	s5,24(sp)
    800026fc:	00090513          	mv	a0,s2
    80002700:	03013903          	ld	s2,48(sp)
    80002704:	05010113          	addi	sp,sp,80
    80002708:	00008067          	ret
    8000270c:	00000913          	li	s2,0
    80002710:	fd5ff06f          	j	800026e4 <consolewrite+0x74>

0000000080002714 <consoleread>:
    80002714:	f9010113          	addi	sp,sp,-112
    80002718:	06813023          	sd	s0,96(sp)
    8000271c:	04913c23          	sd	s1,88(sp)
    80002720:	05213823          	sd	s2,80(sp)
    80002724:	05313423          	sd	s3,72(sp)
    80002728:	05413023          	sd	s4,64(sp)
    8000272c:	03513c23          	sd	s5,56(sp)
    80002730:	03613823          	sd	s6,48(sp)
    80002734:	03713423          	sd	s7,40(sp)
    80002738:	03813023          	sd	s8,32(sp)
    8000273c:	06113423          	sd	ra,104(sp)
    80002740:	01913c23          	sd	s9,24(sp)
    80002744:	07010413          	addi	s0,sp,112
    80002748:	00060b93          	mv	s7,a2
    8000274c:	00050913          	mv	s2,a0
    80002750:	00058c13          	mv	s8,a1
    80002754:	00060b1b          	sext.w	s6,a2
    80002758:	00004497          	auipc	s1,0x4
    8000275c:	17048493          	addi	s1,s1,368 # 800068c8 <cons>
    80002760:	00400993          	li	s3,4
    80002764:	fff00a13          	li	s4,-1
    80002768:	00a00a93          	li	s5,10
    8000276c:	05705e63          	blez	s7,800027c8 <consoleread+0xb4>
    80002770:	09c4a703          	lw	a4,156(s1)
    80002774:	0984a783          	lw	a5,152(s1)
    80002778:	0007071b          	sext.w	a4,a4
    8000277c:	08e78463          	beq	a5,a4,80002804 <consoleread+0xf0>
    80002780:	07f7f713          	andi	a4,a5,127
    80002784:	00e48733          	add	a4,s1,a4
    80002788:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000278c:	0017869b          	addiw	a3,a5,1
    80002790:	08d4ac23          	sw	a3,152(s1)
    80002794:	00070c9b          	sext.w	s9,a4
    80002798:	0b370663          	beq	a4,s3,80002844 <consoleread+0x130>
    8000279c:	00100693          	li	a3,1
    800027a0:	f9f40613          	addi	a2,s0,-97
    800027a4:	000c0593          	mv	a1,s8
    800027a8:	00090513          	mv	a0,s2
    800027ac:	f8e40fa3          	sb	a4,-97(s0)
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	8b8080e7          	jalr	-1864(ra) # 80002068 <either_copyout>
    800027b8:	01450863          	beq	a0,s4,800027c8 <consoleread+0xb4>
    800027bc:	001c0c13          	addi	s8,s8,1
    800027c0:	fffb8b9b          	addiw	s7,s7,-1
    800027c4:	fb5c94e3          	bne	s9,s5,8000276c <consoleread+0x58>
    800027c8:	000b851b          	sext.w	a0,s7
    800027cc:	06813083          	ld	ra,104(sp)
    800027d0:	06013403          	ld	s0,96(sp)
    800027d4:	05813483          	ld	s1,88(sp)
    800027d8:	05013903          	ld	s2,80(sp)
    800027dc:	04813983          	ld	s3,72(sp)
    800027e0:	04013a03          	ld	s4,64(sp)
    800027e4:	03813a83          	ld	s5,56(sp)
    800027e8:	02813b83          	ld	s7,40(sp)
    800027ec:	02013c03          	ld	s8,32(sp)
    800027f0:	01813c83          	ld	s9,24(sp)
    800027f4:	40ab053b          	subw	a0,s6,a0
    800027f8:	03013b03          	ld	s6,48(sp)
    800027fc:	07010113          	addi	sp,sp,112
    80002800:	00008067          	ret
    80002804:	00001097          	auipc	ra,0x1
    80002808:	1d8080e7          	jalr	472(ra) # 800039dc <push_on>
    8000280c:	0984a703          	lw	a4,152(s1)
    80002810:	09c4a783          	lw	a5,156(s1)
    80002814:	0007879b          	sext.w	a5,a5
    80002818:	fef70ce3          	beq	a4,a5,80002810 <consoleread+0xfc>
    8000281c:	00001097          	auipc	ra,0x1
    80002820:	234080e7          	jalr	564(ra) # 80003a50 <pop_on>
    80002824:	0984a783          	lw	a5,152(s1)
    80002828:	07f7f713          	andi	a4,a5,127
    8000282c:	00e48733          	add	a4,s1,a4
    80002830:	01874703          	lbu	a4,24(a4)
    80002834:	0017869b          	addiw	a3,a5,1
    80002838:	08d4ac23          	sw	a3,152(s1)
    8000283c:	00070c9b          	sext.w	s9,a4
    80002840:	f5371ee3          	bne	a4,s3,8000279c <consoleread+0x88>
    80002844:	000b851b          	sext.w	a0,s7
    80002848:	f96bf2e3          	bgeu	s7,s6,800027cc <consoleread+0xb8>
    8000284c:	08f4ac23          	sw	a5,152(s1)
    80002850:	f7dff06f          	j	800027cc <consoleread+0xb8>

0000000080002854 <consputc>:
    80002854:	10000793          	li	a5,256
    80002858:	00f50663          	beq	a0,a5,80002864 <consputc+0x10>
    8000285c:	00001317          	auipc	t1,0x1
    80002860:	9f430067          	jr	-1548(t1) # 80003250 <uartputc_sync>
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    80002874:	00800513          	li	a0,8
    80002878:	00001097          	auipc	ra,0x1
    8000287c:	9d8080e7          	jalr	-1576(ra) # 80003250 <uartputc_sync>
    80002880:	02000513          	li	a0,32
    80002884:	00001097          	auipc	ra,0x1
    80002888:	9cc080e7          	jalr	-1588(ra) # 80003250 <uartputc_sync>
    8000288c:	00013403          	ld	s0,0(sp)
    80002890:	00813083          	ld	ra,8(sp)
    80002894:	00800513          	li	a0,8
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00001317          	auipc	t1,0x1
    800028a0:	9b430067          	jr	-1612(t1) # 80003250 <uartputc_sync>

00000000800028a4 <consoleintr>:
    800028a4:	fe010113          	addi	sp,sp,-32
    800028a8:	00813823          	sd	s0,16(sp)
    800028ac:	00913423          	sd	s1,8(sp)
    800028b0:	01213023          	sd	s2,0(sp)
    800028b4:	00113c23          	sd	ra,24(sp)
    800028b8:	02010413          	addi	s0,sp,32
    800028bc:	00004917          	auipc	s2,0x4
    800028c0:	00c90913          	addi	s2,s2,12 # 800068c8 <cons>
    800028c4:	00050493          	mv	s1,a0
    800028c8:	00090513          	mv	a0,s2
    800028cc:	00001097          	auipc	ra,0x1
    800028d0:	e40080e7          	jalr	-448(ra) # 8000370c <acquire>
    800028d4:	02048c63          	beqz	s1,8000290c <consoleintr+0x68>
    800028d8:	0a092783          	lw	a5,160(s2)
    800028dc:	09892703          	lw	a4,152(s2)
    800028e0:	07f00693          	li	a3,127
    800028e4:	40e7873b          	subw	a4,a5,a4
    800028e8:	02e6e263          	bltu	a3,a4,8000290c <consoleintr+0x68>
    800028ec:	00d00713          	li	a4,13
    800028f0:	04e48063          	beq	s1,a4,80002930 <consoleintr+0x8c>
    800028f4:	07f7f713          	andi	a4,a5,127
    800028f8:	00e90733          	add	a4,s2,a4
    800028fc:	0017879b          	addiw	a5,a5,1
    80002900:	0af92023          	sw	a5,160(s2)
    80002904:	00970c23          	sb	s1,24(a4)
    80002908:	08f92e23          	sw	a5,156(s2)
    8000290c:	01013403          	ld	s0,16(sp)
    80002910:	01813083          	ld	ra,24(sp)
    80002914:	00813483          	ld	s1,8(sp)
    80002918:	00013903          	ld	s2,0(sp)
    8000291c:	00004517          	auipc	a0,0x4
    80002920:	fac50513          	addi	a0,a0,-84 # 800068c8 <cons>
    80002924:	02010113          	addi	sp,sp,32
    80002928:	00001317          	auipc	t1,0x1
    8000292c:	eb030067          	jr	-336(t1) # 800037d8 <release>
    80002930:	00a00493          	li	s1,10
    80002934:	fc1ff06f          	j	800028f4 <consoleintr+0x50>

0000000080002938 <consoleinit>:
    80002938:	fe010113          	addi	sp,sp,-32
    8000293c:	00113c23          	sd	ra,24(sp)
    80002940:	00813823          	sd	s0,16(sp)
    80002944:	00913423          	sd	s1,8(sp)
    80002948:	02010413          	addi	s0,sp,32
    8000294c:	00004497          	auipc	s1,0x4
    80002950:	f7c48493          	addi	s1,s1,-132 # 800068c8 <cons>
    80002954:	00048513          	mv	a0,s1
    80002958:	00003597          	auipc	a1,0x3
    8000295c:	8b058593          	addi	a1,a1,-1872 # 80005208 <_ZZ12printIntegermE6digits+0x138>
    80002960:	00001097          	auipc	ra,0x1
    80002964:	d88080e7          	jalr	-632(ra) # 800036e8 <initlock>
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	7ac080e7          	jalr	1964(ra) # 80003114 <uartinit>
    80002970:	01813083          	ld	ra,24(sp)
    80002974:	01013403          	ld	s0,16(sp)
    80002978:	00000797          	auipc	a5,0x0
    8000297c:	d9c78793          	addi	a5,a5,-612 # 80002714 <consoleread>
    80002980:	0af4bc23          	sd	a5,184(s1)
    80002984:	00000797          	auipc	a5,0x0
    80002988:	cec78793          	addi	a5,a5,-788 # 80002670 <consolewrite>
    8000298c:	0cf4b023          	sd	a5,192(s1)
    80002990:	00813483          	ld	s1,8(sp)
    80002994:	02010113          	addi	sp,sp,32
    80002998:	00008067          	ret

000000008000299c <console_read>:
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00813423          	sd	s0,8(sp)
    800029a4:	01010413          	addi	s0,sp,16
    800029a8:	00813403          	ld	s0,8(sp)
    800029ac:	00004317          	auipc	t1,0x4
    800029b0:	fd433303          	ld	t1,-44(t1) # 80006980 <devsw+0x10>
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00030067          	jr	t1

00000000800029bc <console_write>:
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00813423          	sd	s0,8(sp)
    800029c4:	01010413          	addi	s0,sp,16
    800029c8:	00813403          	ld	s0,8(sp)
    800029cc:	00004317          	auipc	t1,0x4
    800029d0:	fbc33303          	ld	t1,-68(t1) # 80006988 <devsw+0x18>
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00030067          	jr	t1

00000000800029dc <panic>:
    800029dc:	fe010113          	addi	sp,sp,-32
    800029e0:	00113c23          	sd	ra,24(sp)
    800029e4:	00813823          	sd	s0,16(sp)
    800029e8:	00913423          	sd	s1,8(sp)
    800029ec:	02010413          	addi	s0,sp,32
    800029f0:	00050493          	mv	s1,a0
    800029f4:	00003517          	auipc	a0,0x3
    800029f8:	81c50513          	addi	a0,a0,-2020 # 80005210 <_ZZ12printIntegermE6digits+0x140>
    800029fc:	00004797          	auipc	a5,0x4
    80002a00:	0207a623          	sw	zero,44(a5) # 80006a28 <pr+0x18>
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	034080e7          	jalr	52(ra) # 80002a38 <__printf>
    80002a0c:	00048513          	mv	a0,s1
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	028080e7          	jalr	40(ra) # 80002a38 <__printf>
    80002a18:	00002517          	auipc	a0,0x2
    80002a1c:	60850513          	addi	a0,a0,1544 # 80005020 <kvmincrease+0xe80>
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	018080e7          	jalr	24(ra) # 80002a38 <__printf>
    80002a28:	00100793          	li	a5,1
    80002a2c:	00003717          	auipc	a4,0x3
    80002a30:	d6f72e23          	sw	a5,-644(a4) # 800057a8 <panicked>
    80002a34:	0000006f          	j	80002a34 <panic+0x58>

0000000080002a38 <__printf>:
    80002a38:	f3010113          	addi	sp,sp,-208
    80002a3c:	08813023          	sd	s0,128(sp)
    80002a40:	07313423          	sd	s3,104(sp)
    80002a44:	09010413          	addi	s0,sp,144
    80002a48:	05813023          	sd	s8,64(sp)
    80002a4c:	08113423          	sd	ra,136(sp)
    80002a50:	06913c23          	sd	s1,120(sp)
    80002a54:	07213823          	sd	s2,112(sp)
    80002a58:	07413023          	sd	s4,96(sp)
    80002a5c:	05513c23          	sd	s5,88(sp)
    80002a60:	05613823          	sd	s6,80(sp)
    80002a64:	05713423          	sd	s7,72(sp)
    80002a68:	03913c23          	sd	s9,56(sp)
    80002a6c:	03a13823          	sd	s10,48(sp)
    80002a70:	03b13423          	sd	s11,40(sp)
    80002a74:	00004317          	auipc	t1,0x4
    80002a78:	f9c30313          	addi	t1,t1,-100 # 80006a10 <pr>
    80002a7c:	01832c03          	lw	s8,24(t1)
    80002a80:	00b43423          	sd	a1,8(s0)
    80002a84:	00c43823          	sd	a2,16(s0)
    80002a88:	00d43c23          	sd	a3,24(s0)
    80002a8c:	02e43023          	sd	a4,32(s0)
    80002a90:	02f43423          	sd	a5,40(s0)
    80002a94:	03043823          	sd	a6,48(s0)
    80002a98:	03143c23          	sd	a7,56(s0)
    80002a9c:	00050993          	mv	s3,a0
    80002aa0:	4a0c1663          	bnez	s8,80002f4c <__printf+0x514>
    80002aa4:	60098c63          	beqz	s3,800030bc <__printf+0x684>
    80002aa8:	0009c503          	lbu	a0,0(s3)
    80002aac:	00840793          	addi	a5,s0,8
    80002ab0:	f6f43c23          	sd	a5,-136(s0)
    80002ab4:	00000493          	li	s1,0
    80002ab8:	22050063          	beqz	a0,80002cd8 <__printf+0x2a0>
    80002abc:	00002a37          	lui	s4,0x2
    80002ac0:	00018ab7          	lui	s5,0x18
    80002ac4:	000f4b37          	lui	s6,0xf4
    80002ac8:	00989bb7          	lui	s7,0x989
    80002acc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002ad0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002ad4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002ad8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002adc:	00148c9b          	addiw	s9,s1,1
    80002ae0:	02500793          	li	a5,37
    80002ae4:	01998933          	add	s2,s3,s9
    80002ae8:	38f51263          	bne	a0,a5,80002e6c <__printf+0x434>
    80002aec:	00094783          	lbu	a5,0(s2)
    80002af0:	00078c9b          	sext.w	s9,a5
    80002af4:	1e078263          	beqz	a5,80002cd8 <__printf+0x2a0>
    80002af8:	0024849b          	addiw	s1,s1,2
    80002afc:	07000713          	li	a4,112
    80002b00:	00998933          	add	s2,s3,s1
    80002b04:	38e78a63          	beq	a5,a4,80002e98 <__printf+0x460>
    80002b08:	20f76863          	bltu	a4,a5,80002d18 <__printf+0x2e0>
    80002b0c:	42a78863          	beq	a5,a0,80002f3c <__printf+0x504>
    80002b10:	06400713          	li	a4,100
    80002b14:	40e79663          	bne	a5,a4,80002f20 <__printf+0x4e8>
    80002b18:	f7843783          	ld	a5,-136(s0)
    80002b1c:	0007a603          	lw	a2,0(a5)
    80002b20:	00878793          	addi	a5,a5,8
    80002b24:	f6f43c23          	sd	a5,-136(s0)
    80002b28:	42064a63          	bltz	a2,80002f5c <__printf+0x524>
    80002b2c:	00a00713          	li	a4,10
    80002b30:	02e677bb          	remuw	a5,a2,a4
    80002b34:	00002d97          	auipc	s11,0x2
    80002b38:	704d8d93          	addi	s11,s11,1796 # 80005238 <digits>
    80002b3c:	00900593          	li	a1,9
    80002b40:	0006051b          	sext.w	a0,a2
    80002b44:	00000c93          	li	s9,0
    80002b48:	02079793          	slli	a5,a5,0x20
    80002b4c:	0207d793          	srli	a5,a5,0x20
    80002b50:	00fd87b3          	add	a5,s11,a5
    80002b54:	0007c783          	lbu	a5,0(a5)
    80002b58:	02e656bb          	divuw	a3,a2,a4
    80002b5c:	f8f40023          	sb	a5,-128(s0)
    80002b60:	14c5d863          	bge	a1,a2,80002cb0 <__printf+0x278>
    80002b64:	06300593          	li	a1,99
    80002b68:	00100c93          	li	s9,1
    80002b6c:	02e6f7bb          	remuw	a5,a3,a4
    80002b70:	02079793          	slli	a5,a5,0x20
    80002b74:	0207d793          	srli	a5,a5,0x20
    80002b78:	00fd87b3          	add	a5,s11,a5
    80002b7c:	0007c783          	lbu	a5,0(a5)
    80002b80:	02e6d73b          	divuw	a4,a3,a4
    80002b84:	f8f400a3          	sb	a5,-127(s0)
    80002b88:	12a5f463          	bgeu	a1,a0,80002cb0 <__printf+0x278>
    80002b8c:	00a00693          	li	a3,10
    80002b90:	00900593          	li	a1,9
    80002b94:	02d777bb          	remuw	a5,a4,a3
    80002b98:	02079793          	slli	a5,a5,0x20
    80002b9c:	0207d793          	srli	a5,a5,0x20
    80002ba0:	00fd87b3          	add	a5,s11,a5
    80002ba4:	0007c503          	lbu	a0,0(a5)
    80002ba8:	02d757bb          	divuw	a5,a4,a3
    80002bac:	f8a40123          	sb	a0,-126(s0)
    80002bb0:	48e5f263          	bgeu	a1,a4,80003034 <__printf+0x5fc>
    80002bb4:	06300513          	li	a0,99
    80002bb8:	02d7f5bb          	remuw	a1,a5,a3
    80002bbc:	02059593          	slli	a1,a1,0x20
    80002bc0:	0205d593          	srli	a1,a1,0x20
    80002bc4:	00bd85b3          	add	a1,s11,a1
    80002bc8:	0005c583          	lbu	a1,0(a1)
    80002bcc:	02d7d7bb          	divuw	a5,a5,a3
    80002bd0:	f8b401a3          	sb	a1,-125(s0)
    80002bd4:	48e57263          	bgeu	a0,a4,80003058 <__printf+0x620>
    80002bd8:	3e700513          	li	a0,999
    80002bdc:	02d7f5bb          	remuw	a1,a5,a3
    80002be0:	02059593          	slli	a1,a1,0x20
    80002be4:	0205d593          	srli	a1,a1,0x20
    80002be8:	00bd85b3          	add	a1,s11,a1
    80002bec:	0005c583          	lbu	a1,0(a1)
    80002bf0:	02d7d7bb          	divuw	a5,a5,a3
    80002bf4:	f8b40223          	sb	a1,-124(s0)
    80002bf8:	46e57663          	bgeu	a0,a4,80003064 <__printf+0x62c>
    80002bfc:	02d7f5bb          	remuw	a1,a5,a3
    80002c00:	02059593          	slli	a1,a1,0x20
    80002c04:	0205d593          	srli	a1,a1,0x20
    80002c08:	00bd85b3          	add	a1,s11,a1
    80002c0c:	0005c583          	lbu	a1,0(a1)
    80002c10:	02d7d7bb          	divuw	a5,a5,a3
    80002c14:	f8b402a3          	sb	a1,-123(s0)
    80002c18:	46ea7863          	bgeu	s4,a4,80003088 <__printf+0x650>
    80002c1c:	02d7f5bb          	remuw	a1,a5,a3
    80002c20:	02059593          	slli	a1,a1,0x20
    80002c24:	0205d593          	srli	a1,a1,0x20
    80002c28:	00bd85b3          	add	a1,s11,a1
    80002c2c:	0005c583          	lbu	a1,0(a1)
    80002c30:	02d7d7bb          	divuw	a5,a5,a3
    80002c34:	f8b40323          	sb	a1,-122(s0)
    80002c38:	3eeaf863          	bgeu	s5,a4,80003028 <__printf+0x5f0>
    80002c3c:	02d7f5bb          	remuw	a1,a5,a3
    80002c40:	02059593          	slli	a1,a1,0x20
    80002c44:	0205d593          	srli	a1,a1,0x20
    80002c48:	00bd85b3          	add	a1,s11,a1
    80002c4c:	0005c583          	lbu	a1,0(a1)
    80002c50:	02d7d7bb          	divuw	a5,a5,a3
    80002c54:	f8b403a3          	sb	a1,-121(s0)
    80002c58:	42eb7e63          	bgeu	s6,a4,80003094 <__printf+0x65c>
    80002c5c:	02d7f5bb          	remuw	a1,a5,a3
    80002c60:	02059593          	slli	a1,a1,0x20
    80002c64:	0205d593          	srli	a1,a1,0x20
    80002c68:	00bd85b3          	add	a1,s11,a1
    80002c6c:	0005c583          	lbu	a1,0(a1)
    80002c70:	02d7d7bb          	divuw	a5,a5,a3
    80002c74:	f8b40423          	sb	a1,-120(s0)
    80002c78:	42ebfc63          	bgeu	s7,a4,800030b0 <__printf+0x678>
    80002c7c:	02079793          	slli	a5,a5,0x20
    80002c80:	0207d793          	srli	a5,a5,0x20
    80002c84:	00fd8db3          	add	s11,s11,a5
    80002c88:	000dc703          	lbu	a4,0(s11)
    80002c8c:	00a00793          	li	a5,10
    80002c90:	00900c93          	li	s9,9
    80002c94:	f8e404a3          	sb	a4,-119(s0)
    80002c98:	00065c63          	bgez	a2,80002cb0 <__printf+0x278>
    80002c9c:	f9040713          	addi	a4,s0,-112
    80002ca0:	00f70733          	add	a4,a4,a5
    80002ca4:	02d00693          	li	a3,45
    80002ca8:	fed70823          	sb	a3,-16(a4)
    80002cac:	00078c93          	mv	s9,a5
    80002cb0:	f8040793          	addi	a5,s0,-128
    80002cb4:	01978cb3          	add	s9,a5,s9
    80002cb8:	f7f40d13          	addi	s10,s0,-129
    80002cbc:	000cc503          	lbu	a0,0(s9)
    80002cc0:	fffc8c93          	addi	s9,s9,-1
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	b90080e7          	jalr	-1136(ra) # 80002854 <consputc>
    80002ccc:	ffac98e3          	bne	s9,s10,80002cbc <__printf+0x284>
    80002cd0:	00094503          	lbu	a0,0(s2)
    80002cd4:	e00514e3          	bnez	a0,80002adc <__printf+0xa4>
    80002cd8:	1a0c1663          	bnez	s8,80002e84 <__printf+0x44c>
    80002cdc:	08813083          	ld	ra,136(sp)
    80002ce0:	08013403          	ld	s0,128(sp)
    80002ce4:	07813483          	ld	s1,120(sp)
    80002ce8:	07013903          	ld	s2,112(sp)
    80002cec:	06813983          	ld	s3,104(sp)
    80002cf0:	06013a03          	ld	s4,96(sp)
    80002cf4:	05813a83          	ld	s5,88(sp)
    80002cf8:	05013b03          	ld	s6,80(sp)
    80002cfc:	04813b83          	ld	s7,72(sp)
    80002d00:	04013c03          	ld	s8,64(sp)
    80002d04:	03813c83          	ld	s9,56(sp)
    80002d08:	03013d03          	ld	s10,48(sp)
    80002d0c:	02813d83          	ld	s11,40(sp)
    80002d10:	0d010113          	addi	sp,sp,208
    80002d14:	00008067          	ret
    80002d18:	07300713          	li	a4,115
    80002d1c:	1ce78a63          	beq	a5,a4,80002ef0 <__printf+0x4b8>
    80002d20:	07800713          	li	a4,120
    80002d24:	1ee79e63          	bne	a5,a4,80002f20 <__printf+0x4e8>
    80002d28:	f7843783          	ld	a5,-136(s0)
    80002d2c:	0007a703          	lw	a4,0(a5)
    80002d30:	00878793          	addi	a5,a5,8
    80002d34:	f6f43c23          	sd	a5,-136(s0)
    80002d38:	28074263          	bltz	a4,80002fbc <__printf+0x584>
    80002d3c:	00002d97          	auipc	s11,0x2
    80002d40:	4fcd8d93          	addi	s11,s11,1276 # 80005238 <digits>
    80002d44:	00f77793          	andi	a5,a4,15
    80002d48:	00fd87b3          	add	a5,s11,a5
    80002d4c:	0007c683          	lbu	a3,0(a5)
    80002d50:	00f00613          	li	a2,15
    80002d54:	0007079b          	sext.w	a5,a4
    80002d58:	f8d40023          	sb	a3,-128(s0)
    80002d5c:	0047559b          	srliw	a1,a4,0x4
    80002d60:	0047569b          	srliw	a3,a4,0x4
    80002d64:	00000c93          	li	s9,0
    80002d68:	0ee65063          	bge	a2,a4,80002e48 <__printf+0x410>
    80002d6c:	00f6f693          	andi	a3,a3,15
    80002d70:	00dd86b3          	add	a3,s11,a3
    80002d74:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d78:	0087d79b          	srliw	a5,a5,0x8
    80002d7c:	00100c93          	li	s9,1
    80002d80:	f8d400a3          	sb	a3,-127(s0)
    80002d84:	0cb67263          	bgeu	a2,a1,80002e48 <__printf+0x410>
    80002d88:	00f7f693          	andi	a3,a5,15
    80002d8c:	00dd86b3          	add	a3,s11,a3
    80002d90:	0006c583          	lbu	a1,0(a3)
    80002d94:	00f00613          	li	a2,15
    80002d98:	0047d69b          	srliw	a3,a5,0x4
    80002d9c:	f8b40123          	sb	a1,-126(s0)
    80002da0:	0047d593          	srli	a1,a5,0x4
    80002da4:	28f67e63          	bgeu	a2,a5,80003040 <__printf+0x608>
    80002da8:	00f6f693          	andi	a3,a3,15
    80002dac:	00dd86b3          	add	a3,s11,a3
    80002db0:	0006c503          	lbu	a0,0(a3)
    80002db4:	0087d813          	srli	a6,a5,0x8
    80002db8:	0087d69b          	srliw	a3,a5,0x8
    80002dbc:	f8a401a3          	sb	a0,-125(s0)
    80002dc0:	28b67663          	bgeu	a2,a1,8000304c <__printf+0x614>
    80002dc4:	00f6f693          	andi	a3,a3,15
    80002dc8:	00dd86b3          	add	a3,s11,a3
    80002dcc:	0006c583          	lbu	a1,0(a3)
    80002dd0:	00c7d513          	srli	a0,a5,0xc
    80002dd4:	00c7d69b          	srliw	a3,a5,0xc
    80002dd8:	f8b40223          	sb	a1,-124(s0)
    80002ddc:	29067a63          	bgeu	a2,a6,80003070 <__printf+0x638>
    80002de0:	00f6f693          	andi	a3,a3,15
    80002de4:	00dd86b3          	add	a3,s11,a3
    80002de8:	0006c583          	lbu	a1,0(a3)
    80002dec:	0107d813          	srli	a6,a5,0x10
    80002df0:	0107d69b          	srliw	a3,a5,0x10
    80002df4:	f8b402a3          	sb	a1,-123(s0)
    80002df8:	28a67263          	bgeu	a2,a0,8000307c <__printf+0x644>
    80002dfc:	00f6f693          	andi	a3,a3,15
    80002e00:	00dd86b3          	add	a3,s11,a3
    80002e04:	0006c683          	lbu	a3,0(a3)
    80002e08:	0147d79b          	srliw	a5,a5,0x14
    80002e0c:	f8d40323          	sb	a3,-122(s0)
    80002e10:	21067663          	bgeu	a2,a6,8000301c <__printf+0x5e4>
    80002e14:	02079793          	slli	a5,a5,0x20
    80002e18:	0207d793          	srli	a5,a5,0x20
    80002e1c:	00fd8db3          	add	s11,s11,a5
    80002e20:	000dc683          	lbu	a3,0(s11)
    80002e24:	00800793          	li	a5,8
    80002e28:	00700c93          	li	s9,7
    80002e2c:	f8d403a3          	sb	a3,-121(s0)
    80002e30:	00075c63          	bgez	a4,80002e48 <__printf+0x410>
    80002e34:	f9040713          	addi	a4,s0,-112
    80002e38:	00f70733          	add	a4,a4,a5
    80002e3c:	02d00693          	li	a3,45
    80002e40:	fed70823          	sb	a3,-16(a4)
    80002e44:	00078c93          	mv	s9,a5
    80002e48:	f8040793          	addi	a5,s0,-128
    80002e4c:	01978cb3          	add	s9,a5,s9
    80002e50:	f7f40d13          	addi	s10,s0,-129
    80002e54:	000cc503          	lbu	a0,0(s9)
    80002e58:	fffc8c93          	addi	s9,s9,-1
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	9f8080e7          	jalr	-1544(ra) # 80002854 <consputc>
    80002e64:	ff9d18e3          	bne	s10,s9,80002e54 <__printf+0x41c>
    80002e68:	0100006f          	j	80002e78 <__printf+0x440>
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	9e8080e7          	jalr	-1560(ra) # 80002854 <consputc>
    80002e74:	000c8493          	mv	s1,s9
    80002e78:	00094503          	lbu	a0,0(s2)
    80002e7c:	c60510e3          	bnez	a0,80002adc <__printf+0xa4>
    80002e80:	e40c0ee3          	beqz	s8,80002cdc <__printf+0x2a4>
    80002e84:	00004517          	auipc	a0,0x4
    80002e88:	b8c50513          	addi	a0,a0,-1140 # 80006a10 <pr>
    80002e8c:	00001097          	auipc	ra,0x1
    80002e90:	94c080e7          	jalr	-1716(ra) # 800037d8 <release>
    80002e94:	e49ff06f          	j	80002cdc <__printf+0x2a4>
    80002e98:	f7843783          	ld	a5,-136(s0)
    80002e9c:	03000513          	li	a0,48
    80002ea0:	01000d13          	li	s10,16
    80002ea4:	00878713          	addi	a4,a5,8
    80002ea8:	0007bc83          	ld	s9,0(a5)
    80002eac:	f6e43c23          	sd	a4,-136(s0)
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	9a4080e7          	jalr	-1628(ra) # 80002854 <consputc>
    80002eb8:	07800513          	li	a0,120
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	998080e7          	jalr	-1640(ra) # 80002854 <consputc>
    80002ec4:	00002d97          	auipc	s11,0x2
    80002ec8:	374d8d93          	addi	s11,s11,884 # 80005238 <digits>
    80002ecc:	03ccd793          	srli	a5,s9,0x3c
    80002ed0:	00fd87b3          	add	a5,s11,a5
    80002ed4:	0007c503          	lbu	a0,0(a5)
    80002ed8:	fffd0d1b          	addiw	s10,s10,-1
    80002edc:	004c9c93          	slli	s9,s9,0x4
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	974080e7          	jalr	-1676(ra) # 80002854 <consputc>
    80002ee8:	fe0d12e3          	bnez	s10,80002ecc <__printf+0x494>
    80002eec:	f8dff06f          	j	80002e78 <__printf+0x440>
    80002ef0:	f7843783          	ld	a5,-136(s0)
    80002ef4:	0007bc83          	ld	s9,0(a5)
    80002ef8:	00878793          	addi	a5,a5,8
    80002efc:	f6f43c23          	sd	a5,-136(s0)
    80002f00:	000c9a63          	bnez	s9,80002f14 <__printf+0x4dc>
    80002f04:	1080006f          	j	8000300c <__printf+0x5d4>
    80002f08:	001c8c93          	addi	s9,s9,1
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	948080e7          	jalr	-1720(ra) # 80002854 <consputc>
    80002f14:	000cc503          	lbu	a0,0(s9)
    80002f18:	fe0518e3          	bnez	a0,80002f08 <__printf+0x4d0>
    80002f1c:	f5dff06f          	j	80002e78 <__printf+0x440>
    80002f20:	02500513          	li	a0,37
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	930080e7          	jalr	-1744(ra) # 80002854 <consputc>
    80002f2c:	000c8513          	mv	a0,s9
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	924080e7          	jalr	-1756(ra) # 80002854 <consputc>
    80002f38:	f41ff06f          	j	80002e78 <__printf+0x440>
    80002f3c:	02500513          	li	a0,37
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	914080e7          	jalr	-1772(ra) # 80002854 <consputc>
    80002f48:	f31ff06f          	j	80002e78 <__printf+0x440>
    80002f4c:	00030513          	mv	a0,t1
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	7bc080e7          	jalr	1980(ra) # 8000370c <acquire>
    80002f58:	b4dff06f          	j	80002aa4 <__printf+0x6c>
    80002f5c:	40c0053b          	negw	a0,a2
    80002f60:	00a00713          	li	a4,10
    80002f64:	02e576bb          	remuw	a3,a0,a4
    80002f68:	00002d97          	auipc	s11,0x2
    80002f6c:	2d0d8d93          	addi	s11,s11,720 # 80005238 <digits>
    80002f70:	ff700593          	li	a1,-9
    80002f74:	02069693          	slli	a3,a3,0x20
    80002f78:	0206d693          	srli	a3,a3,0x20
    80002f7c:	00dd86b3          	add	a3,s11,a3
    80002f80:	0006c683          	lbu	a3,0(a3)
    80002f84:	02e557bb          	divuw	a5,a0,a4
    80002f88:	f8d40023          	sb	a3,-128(s0)
    80002f8c:	10b65e63          	bge	a2,a1,800030a8 <__printf+0x670>
    80002f90:	06300593          	li	a1,99
    80002f94:	02e7f6bb          	remuw	a3,a5,a4
    80002f98:	02069693          	slli	a3,a3,0x20
    80002f9c:	0206d693          	srli	a3,a3,0x20
    80002fa0:	00dd86b3          	add	a3,s11,a3
    80002fa4:	0006c683          	lbu	a3,0(a3)
    80002fa8:	02e7d73b          	divuw	a4,a5,a4
    80002fac:	00200793          	li	a5,2
    80002fb0:	f8d400a3          	sb	a3,-127(s0)
    80002fb4:	bca5ece3          	bltu	a1,a0,80002b8c <__printf+0x154>
    80002fb8:	ce5ff06f          	j	80002c9c <__printf+0x264>
    80002fbc:	40e007bb          	negw	a5,a4
    80002fc0:	00002d97          	auipc	s11,0x2
    80002fc4:	278d8d93          	addi	s11,s11,632 # 80005238 <digits>
    80002fc8:	00f7f693          	andi	a3,a5,15
    80002fcc:	00dd86b3          	add	a3,s11,a3
    80002fd0:	0006c583          	lbu	a1,0(a3)
    80002fd4:	ff100613          	li	a2,-15
    80002fd8:	0047d69b          	srliw	a3,a5,0x4
    80002fdc:	f8b40023          	sb	a1,-128(s0)
    80002fe0:	0047d59b          	srliw	a1,a5,0x4
    80002fe4:	0ac75e63          	bge	a4,a2,800030a0 <__printf+0x668>
    80002fe8:	00f6f693          	andi	a3,a3,15
    80002fec:	00dd86b3          	add	a3,s11,a3
    80002ff0:	0006c603          	lbu	a2,0(a3)
    80002ff4:	00f00693          	li	a3,15
    80002ff8:	0087d79b          	srliw	a5,a5,0x8
    80002ffc:	f8c400a3          	sb	a2,-127(s0)
    80003000:	d8b6e4e3          	bltu	a3,a1,80002d88 <__printf+0x350>
    80003004:	00200793          	li	a5,2
    80003008:	e2dff06f          	j	80002e34 <__printf+0x3fc>
    8000300c:	00002c97          	auipc	s9,0x2
    80003010:	20cc8c93          	addi	s9,s9,524 # 80005218 <_ZZ12printIntegermE6digits+0x148>
    80003014:	02800513          	li	a0,40
    80003018:	ef1ff06f          	j	80002f08 <__printf+0x4d0>
    8000301c:	00700793          	li	a5,7
    80003020:	00600c93          	li	s9,6
    80003024:	e0dff06f          	j	80002e30 <__printf+0x3f8>
    80003028:	00700793          	li	a5,7
    8000302c:	00600c93          	li	s9,6
    80003030:	c69ff06f          	j	80002c98 <__printf+0x260>
    80003034:	00300793          	li	a5,3
    80003038:	00200c93          	li	s9,2
    8000303c:	c5dff06f          	j	80002c98 <__printf+0x260>
    80003040:	00300793          	li	a5,3
    80003044:	00200c93          	li	s9,2
    80003048:	de9ff06f          	j	80002e30 <__printf+0x3f8>
    8000304c:	00400793          	li	a5,4
    80003050:	00300c93          	li	s9,3
    80003054:	dddff06f          	j	80002e30 <__printf+0x3f8>
    80003058:	00400793          	li	a5,4
    8000305c:	00300c93          	li	s9,3
    80003060:	c39ff06f          	j	80002c98 <__printf+0x260>
    80003064:	00500793          	li	a5,5
    80003068:	00400c93          	li	s9,4
    8000306c:	c2dff06f          	j	80002c98 <__printf+0x260>
    80003070:	00500793          	li	a5,5
    80003074:	00400c93          	li	s9,4
    80003078:	db9ff06f          	j	80002e30 <__printf+0x3f8>
    8000307c:	00600793          	li	a5,6
    80003080:	00500c93          	li	s9,5
    80003084:	dadff06f          	j	80002e30 <__printf+0x3f8>
    80003088:	00600793          	li	a5,6
    8000308c:	00500c93          	li	s9,5
    80003090:	c09ff06f          	j	80002c98 <__printf+0x260>
    80003094:	00800793          	li	a5,8
    80003098:	00700c93          	li	s9,7
    8000309c:	bfdff06f          	j	80002c98 <__printf+0x260>
    800030a0:	00100793          	li	a5,1
    800030a4:	d91ff06f          	j	80002e34 <__printf+0x3fc>
    800030a8:	00100793          	li	a5,1
    800030ac:	bf1ff06f          	j	80002c9c <__printf+0x264>
    800030b0:	00900793          	li	a5,9
    800030b4:	00800c93          	li	s9,8
    800030b8:	be1ff06f          	j	80002c98 <__printf+0x260>
    800030bc:	00002517          	auipc	a0,0x2
    800030c0:	16450513          	addi	a0,a0,356 # 80005220 <_ZZ12printIntegermE6digits+0x150>
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	918080e7          	jalr	-1768(ra) # 800029dc <panic>

00000000800030cc <printfinit>:
    800030cc:	fe010113          	addi	sp,sp,-32
    800030d0:	00813823          	sd	s0,16(sp)
    800030d4:	00913423          	sd	s1,8(sp)
    800030d8:	00113c23          	sd	ra,24(sp)
    800030dc:	02010413          	addi	s0,sp,32
    800030e0:	00004497          	auipc	s1,0x4
    800030e4:	93048493          	addi	s1,s1,-1744 # 80006a10 <pr>
    800030e8:	00048513          	mv	a0,s1
    800030ec:	00002597          	auipc	a1,0x2
    800030f0:	14458593          	addi	a1,a1,324 # 80005230 <_ZZ12printIntegermE6digits+0x160>
    800030f4:	00000097          	auipc	ra,0x0
    800030f8:	5f4080e7          	jalr	1524(ra) # 800036e8 <initlock>
    800030fc:	01813083          	ld	ra,24(sp)
    80003100:	01013403          	ld	s0,16(sp)
    80003104:	0004ac23          	sw	zero,24(s1)
    80003108:	00813483          	ld	s1,8(sp)
    8000310c:	02010113          	addi	sp,sp,32
    80003110:	00008067          	ret

0000000080003114 <uartinit>:
    80003114:	ff010113          	addi	sp,sp,-16
    80003118:	00813423          	sd	s0,8(sp)
    8000311c:	01010413          	addi	s0,sp,16
    80003120:	100007b7          	lui	a5,0x10000
    80003124:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003128:	f8000713          	li	a4,-128
    8000312c:	00e781a3          	sb	a4,3(a5)
    80003130:	00300713          	li	a4,3
    80003134:	00e78023          	sb	a4,0(a5)
    80003138:	000780a3          	sb	zero,1(a5)
    8000313c:	00e781a3          	sb	a4,3(a5)
    80003140:	00700693          	li	a3,7
    80003144:	00d78123          	sb	a3,2(a5)
    80003148:	00e780a3          	sb	a4,1(a5)
    8000314c:	00813403          	ld	s0,8(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret

0000000080003158 <uartputc>:
    80003158:	00002797          	auipc	a5,0x2
    8000315c:	6507a783          	lw	a5,1616(a5) # 800057a8 <panicked>
    80003160:	00078463          	beqz	a5,80003168 <uartputc+0x10>
    80003164:	0000006f          	j	80003164 <uartputc+0xc>
    80003168:	fd010113          	addi	sp,sp,-48
    8000316c:	02813023          	sd	s0,32(sp)
    80003170:	00913c23          	sd	s1,24(sp)
    80003174:	01213823          	sd	s2,16(sp)
    80003178:	01313423          	sd	s3,8(sp)
    8000317c:	02113423          	sd	ra,40(sp)
    80003180:	03010413          	addi	s0,sp,48
    80003184:	00002917          	auipc	s2,0x2
    80003188:	62c90913          	addi	s2,s2,1580 # 800057b0 <uart_tx_r>
    8000318c:	00093783          	ld	a5,0(s2)
    80003190:	00002497          	auipc	s1,0x2
    80003194:	62848493          	addi	s1,s1,1576 # 800057b8 <uart_tx_w>
    80003198:	0004b703          	ld	a4,0(s1)
    8000319c:	02078693          	addi	a3,a5,32
    800031a0:	00050993          	mv	s3,a0
    800031a4:	02e69c63          	bne	a3,a4,800031dc <uartputc+0x84>
    800031a8:	00001097          	auipc	ra,0x1
    800031ac:	834080e7          	jalr	-1996(ra) # 800039dc <push_on>
    800031b0:	00093783          	ld	a5,0(s2)
    800031b4:	0004b703          	ld	a4,0(s1)
    800031b8:	02078793          	addi	a5,a5,32
    800031bc:	00e79463          	bne	a5,a4,800031c4 <uartputc+0x6c>
    800031c0:	0000006f          	j	800031c0 <uartputc+0x68>
    800031c4:	00001097          	auipc	ra,0x1
    800031c8:	88c080e7          	jalr	-1908(ra) # 80003a50 <pop_on>
    800031cc:	00093783          	ld	a5,0(s2)
    800031d0:	0004b703          	ld	a4,0(s1)
    800031d4:	02078693          	addi	a3,a5,32
    800031d8:	fce688e3          	beq	a3,a4,800031a8 <uartputc+0x50>
    800031dc:	01f77693          	andi	a3,a4,31
    800031e0:	00004597          	auipc	a1,0x4
    800031e4:	85058593          	addi	a1,a1,-1968 # 80006a30 <uart_tx_buf>
    800031e8:	00d586b3          	add	a3,a1,a3
    800031ec:	00170713          	addi	a4,a4,1
    800031f0:	01368023          	sb	s3,0(a3)
    800031f4:	00e4b023          	sd	a4,0(s1)
    800031f8:	10000637          	lui	a2,0x10000
    800031fc:	02f71063          	bne	a4,a5,8000321c <uartputc+0xc4>
    80003200:	0340006f          	j	80003234 <uartputc+0xdc>
    80003204:	00074703          	lbu	a4,0(a4)
    80003208:	00f93023          	sd	a5,0(s2)
    8000320c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003210:	00093783          	ld	a5,0(s2)
    80003214:	0004b703          	ld	a4,0(s1)
    80003218:	00f70e63          	beq	a4,a5,80003234 <uartputc+0xdc>
    8000321c:	00564683          	lbu	a3,5(a2)
    80003220:	01f7f713          	andi	a4,a5,31
    80003224:	00e58733          	add	a4,a1,a4
    80003228:	0206f693          	andi	a3,a3,32
    8000322c:	00178793          	addi	a5,a5,1
    80003230:	fc069ae3          	bnez	a3,80003204 <uartputc+0xac>
    80003234:	02813083          	ld	ra,40(sp)
    80003238:	02013403          	ld	s0,32(sp)
    8000323c:	01813483          	ld	s1,24(sp)
    80003240:	01013903          	ld	s2,16(sp)
    80003244:	00813983          	ld	s3,8(sp)
    80003248:	03010113          	addi	sp,sp,48
    8000324c:	00008067          	ret

0000000080003250 <uartputc_sync>:
    80003250:	ff010113          	addi	sp,sp,-16
    80003254:	00813423          	sd	s0,8(sp)
    80003258:	01010413          	addi	s0,sp,16
    8000325c:	00002717          	auipc	a4,0x2
    80003260:	54c72703          	lw	a4,1356(a4) # 800057a8 <panicked>
    80003264:	02071663          	bnez	a4,80003290 <uartputc_sync+0x40>
    80003268:	00050793          	mv	a5,a0
    8000326c:	100006b7          	lui	a3,0x10000
    80003270:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003274:	02077713          	andi	a4,a4,32
    80003278:	fe070ce3          	beqz	a4,80003270 <uartputc_sync+0x20>
    8000327c:	0ff7f793          	andi	a5,a5,255
    80003280:	00f68023          	sb	a5,0(a3)
    80003284:	00813403          	ld	s0,8(sp)
    80003288:	01010113          	addi	sp,sp,16
    8000328c:	00008067          	ret
    80003290:	0000006f          	j	80003290 <uartputc_sync+0x40>

0000000080003294 <uartstart>:
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00813423          	sd	s0,8(sp)
    8000329c:	01010413          	addi	s0,sp,16
    800032a0:	00002617          	auipc	a2,0x2
    800032a4:	51060613          	addi	a2,a2,1296 # 800057b0 <uart_tx_r>
    800032a8:	00002517          	auipc	a0,0x2
    800032ac:	51050513          	addi	a0,a0,1296 # 800057b8 <uart_tx_w>
    800032b0:	00063783          	ld	a5,0(a2)
    800032b4:	00053703          	ld	a4,0(a0)
    800032b8:	04f70263          	beq	a4,a5,800032fc <uartstart+0x68>
    800032bc:	100005b7          	lui	a1,0x10000
    800032c0:	00003817          	auipc	a6,0x3
    800032c4:	77080813          	addi	a6,a6,1904 # 80006a30 <uart_tx_buf>
    800032c8:	01c0006f          	j	800032e4 <uartstart+0x50>
    800032cc:	0006c703          	lbu	a4,0(a3)
    800032d0:	00f63023          	sd	a5,0(a2)
    800032d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032d8:	00063783          	ld	a5,0(a2)
    800032dc:	00053703          	ld	a4,0(a0)
    800032e0:	00f70e63          	beq	a4,a5,800032fc <uartstart+0x68>
    800032e4:	01f7f713          	andi	a4,a5,31
    800032e8:	00e806b3          	add	a3,a6,a4
    800032ec:	0055c703          	lbu	a4,5(a1)
    800032f0:	00178793          	addi	a5,a5,1
    800032f4:	02077713          	andi	a4,a4,32
    800032f8:	fc071ae3          	bnez	a4,800032cc <uartstart+0x38>
    800032fc:	00813403          	ld	s0,8(sp)
    80003300:	01010113          	addi	sp,sp,16
    80003304:	00008067          	ret

0000000080003308 <uartgetc>:
    80003308:	ff010113          	addi	sp,sp,-16
    8000330c:	00813423          	sd	s0,8(sp)
    80003310:	01010413          	addi	s0,sp,16
    80003314:	10000737          	lui	a4,0x10000
    80003318:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000331c:	0017f793          	andi	a5,a5,1
    80003320:	00078c63          	beqz	a5,80003338 <uartgetc+0x30>
    80003324:	00074503          	lbu	a0,0(a4)
    80003328:	0ff57513          	andi	a0,a0,255
    8000332c:	00813403          	ld	s0,8(sp)
    80003330:	01010113          	addi	sp,sp,16
    80003334:	00008067          	ret
    80003338:	fff00513          	li	a0,-1
    8000333c:	ff1ff06f          	j	8000332c <uartgetc+0x24>

0000000080003340 <uartintr>:
    80003340:	100007b7          	lui	a5,0x10000
    80003344:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003348:	0017f793          	andi	a5,a5,1
    8000334c:	0a078463          	beqz	a5,800033f4 <uartintr+0xb4>
    80003350:	fe010113          	addi	sp,sp,-32
    80003354:	00813823          	sd	s0,16(sp)
    80003358:	00913423          	sd	s1,8(sp)
    8000335c:	00113c23          	sd	ra,24(sp)
    80003360:	02010413          	addi	s0,sp,32
    80003364:	100004b7          	lui	s1,0x10000
    80003368:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000336c:	0ff57513          	andi	a0,a0,255
    80003370:	fffff097          	auipc	ra,0xfffff
    80003374:	534080e7          	jalr	1332(ra) # 800028a4 <consoleintr>
    80003378:	0054c783          	lbu	a5,5(s1)
    8000337c:	0017f793          	andi	a5,a5,1
    80003380:	fe0794e3          	bnez	a5,80003368 <uartintr+0x28>
    80003384:	00002617          	auipc	a2,0x2
    80003388:	42c60613          	addi	a2,a2,1068 # 800057b0 <uart_tx_r>
    8000338c:	00002517          	auipc	a0,0x2
    80003390:	42c50513          	addi	a0,a0,1068 # 800057b8 <uart_tx_w>
    80003394:	00063783          	ld	a5,0(a2)
    80003398:	00053703          	ld	a4,0(a0)
    8000339c:	04f70263          	beq	a4,a5,800033e0 <uartintr+0xa0>
    800033a0:	100005b7          	lui	a1,0x10000
    800033a4:	00003817          	auipc	a6,0x3
    800033a8:	68c80813          	addi	a6,a6,1676 # 80006a30 <uart_tx_buf>
    800033ac:	01c0006f          	j	800033c8 <uartintr+0x88>
    800033b0:	0006c703          	lbu	a4,0(a3)
    800033b4:	00f63023          	sd	a5,0(a2)
    800033b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033bc:	00063783          	ld	a5,0(a2)
    800033c0:	00053703          	ld	a4,0(a0)
    800033c4:	00f70e63          	beq	a4,a5,800033e0 <uartintr+0xa0>
    800033c8:	01f7f713          	andi	a4,a5,31
    800033cc:	00e806b3          	add	a3,a6,a4
    800033d0:	0055c703          	lbu	a4,5(a1)
    800033d4:	00178793          	addi	a5,a5,1
    800033d8:	02077713          	andi	a4,a4,32
    800033dc:	fc071ae3          	bnez	a4,800033b0 <uartintr+0x70>
    800033e0:	01813083          	ld	ra,24(sp)
    800033e4:	01013403          	ld	s0,16(sp)
    800033e8:	00813483          	ld	s1,8(sp)
    800033ec:	02010113          	addi	sp,sp,32
    800033f0:	00008067          	ret
    800033f4:	00002617          	auipc	a2,0x2
    800033f8:	3bc60613          	addi	a2,a2,956 # 800057b0 <uart_tx_r>
    800033fc:	00002517          	auipc	a0,0x2
    80003400:	3bc50513          	addi	a0,a0,956 # 800057b8 <uart_tx_w>
    80003404:	00063783          	ld	a5,0(a2)
    80003408:	00053703          	ld	a4,0(a0)
    8000340c:	04f70263          	beq	a4,a5,80003450 <uartintr+0x110>
    80003410:	100005b7          	lui	a1,0x10000
    80003414:	00003817          	auipc	a6,0x3
    80003418:	61c80813          	addi	a6,a6,1564 # 80006a30 <uart_tx_buf>
    8000341c:	01c0006f          	j	80003438 <uartintr+0xf8>
    80003420:	0006c703          	lbu	a4,0(a3)
    80003424:	00f63023          	sd	a5,0(a2)
    80003428:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000342c:	00063783          	ld	a5,0(a2)
    80003430:	00053703          	ld	a4,0(a0)
    80003434:	02f70063          	beq	a4,a5,80003454 <uartintr+0x114>
    80003438:	01f7f713          	andi	a4,a5,31
    8000343c:	00e806b3          	add	a3,a6,a4
    80003440:	0055c703          	lbu	a4,5(a1)
    80003444:	00178793          	addi	a5,a5,1
    80003448:	02077713          	andi	a4,a4,32
    8000344c:	fc071ae3          	bnez	a4,80003420 <uartintr+0xe0>
    80003450:	00008067          	ret
    80003454:	00008067          	ret

0000000080003458 <kinit>:
    80003458:	fc010113          	addi	sp,sp,-64
    8000345c:	02913423          	sd	s1,40(sp)
    80003460:	fffff7b7          	lui	a5,0xfffff
    80003464:	00004497          	auipc	s1,0x4
    80003468:	5fb48493          	addi	s1,s1,1531 # 80007a5f <end+0xfff>
    8000346c:	02813823          	sd	s0,48(sp)
    80003470:	01313c23          	sd	s3,24(sp)
    80003474:	00f4f4b3          	and	s1,s1,a5
    80003478:	02113c23          	sd	ra,56(sp)
    8000347c:	03213023          	sd	s2,32(sp)
    80003480:	01413823          	sd	s4,16(sp)
    80003484:	01513423          	sd	s5,8(sp)
    80003488:	04010413          	addi	s0,sp,64
    8000348c:	000017b7          	lui	a5,0x1
    80003490:	01100993          	li	s3,17
    80003494:	00f487b3          	add	a5,s1,a5
    80003498:	01b99993          	slli	s3,s3,0x1b
    8000349c:	06f9e063          	bltu	s3,a5,800034fc <kinit+0xa4>
    800034a0:	00003a97          	auipc	s5,0x3
    800034a4:	5c0a8a93          	addi	s5,s5,1472 # 80006a60 <end>
    800034a8:	0754ec63          	bltu	s1,s5,80003520 <kinit+0xc8>
    800034ac:	0734fa63          	bgeu	s1,s3,80003520 <kinit+0xc8>
    800034b0:	00088a37          	lui	s4,0x88
    800034b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800034b8:	00002917          	auipc	s2,0x2
    800034bc:	30890913          	addi	s2,s2,776 # 800057c0 <kmem>
    800034c0:	00ca1a13          	slli	s4,s4,0xc
    800034c4:	0140006f          	j	800034d8 <kinit+0x80>
    800034c8:	000017b7          	lui	a5,0x1
    800034cc:	00f484b3          	add	s1,s1,a5
    800034d0:	0554e863          	bltu	s1,s5,80003520 <kinit+0xc8>
    800034d4:	0534f663          	bgeu	s1,s3,80003520 <kinit+0xc8>
    800034d8:	00001637          	lui	a2,0x1
    800034dc:	00100593          	li	a1,1
    800034e0:	00048513          	mv	a0,s1
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	5e4080e7          	jalr	1508(ra) # 80003ac8 <__memset>
    800034ec:	00093783          	ld	a5,0(s2)
    800034f0:	00f4b023          	sd	a5,0(s1)
    800034f4:	00993023          	sd	s1,0(s2)
    800034f8:	fd4498e3          	bne	s1,s4,800034c8 <kinit+0x70>
    800034fc:	03813083          	ld	ra,56(sp)
    80003500:	03013403          	ld	s0,48(sp)
    80003504:	02813483          	ld	s1,40(sp)
    80003508:	02013903          	ld	s2,32(sp)
    8000350c:	01813983          	ld	s3,24(sp)
    80003510:	01013a03          	ld	s4,16(sp)
    80003514:	00813a83          	ld	s5,8(sp)
    80003518:	04010113          	addi	sp,sp,64
    8000351c:	00008067          	ret
    80003520:	00002517          	auipc	a0,0x2
    80003524:	d3050513          	addi	a0,a0,-720 # 80005250 <digits+0x18>
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	4b4080e7          	jalr	1204(ra) # 800029dc <panic>

0000000080003530 <freerange>:
    80003530:	fc010113          	addi	sp,sp,-64
    80003534:	000017b7          	lui	a5,0x1
    80003538:	02913423          	sd	s1,40(sp)
    8000353c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003540:	009504b3          	add	s1,a0,s1
    80003544:	fffff537          	lui	a0,0xfffff
    80003548:	02813823          	sd	s0,48(sp)
    8000354c:	02113c23          	sd	ra,56(sp)
    80003550:	03213023          	sd	s2,32(sp)
    80003554:	01313c23          	sd	s3,24(sp)
    80003558:	01413823          	sd	s4,16(sp)
    8000355c:	01513423          	sd	s5,8(sp)
    80003560:	01613023          	sd	s6,0(sp)
    80003564:	04010413          	addi	s0,sp,64
    80003568:	00a4f4b3          	and	s1,s1,a0
    8000356c:	00f487b3          	add	a5,s1,a5
    80003570:	06f5e463          	bltu	a1,a5,800035d8 <freerange+0xa8>
    80003574:	00003a97          	auipc	s5,0x3
    80003578:	4eca8a93          	addi	s5,s5,1260 # 80006a60 <end>
    8000357c:	0954e263          	bltu	s1,s5,80003600 <freerange+0xd0>
    80003580:	01100993          	li	s3,17
    80003584:	01b99993          	slli	s3,s3,0x1b
    80003588:	0734fc63          	bgeu	s1,s3,80003600 <freerange+0xd0>
    8000358c:	00058a13          	mv	s4,a1
    80003590:	00002917          	auipc	s2,0x2
    80003594:	23090913          	addi	s2,s2,560 # 800057c0 <kmem>
    80003598:	00002b37          	lui	s6,0x2
    8000359c:	0140006f          	j	800035b0 <freerange+0x80>
    800035a0:	000017b7          	lui	a5,0x1
    800035a4:	00f484b3          	add	s1,s1,a5
    800035a8:	0554ec63          	bltu	s1,s5,80003600 <freerange+0xd0>
    800035ac:	0534fa63          	bgeu	s1,s3,80003600 <freerange+0xd0>
    800035b0:	00001637          	lui	a2,0x1
    800035b4:	00100593          	li	a1,1
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	50c080e7          	jalr	1292(ra) # 80003ac8 <__memset>
    800035c4:	00093703          	ld	a4,0(s2)
    800035c8:	016487b3          	add	a5,s1,s6
    800035cc:	00e4b023          	sd	a4,0(s1)
    800035d0:	00993023          	sd	s1,0(s2)
    800035d4:	fcfa76e3          	bgeu	s4,a5,800035a0 <freerange+0x70>
    800035d8:	03813083          	ld	ra,56(sp)
    800035dc:	03013403          	ld	s0,48(sp)
    800035e0:	02813483          	ld	s1,40(sp)
    800035e4:	02013903          	ld	s2,32(sp)
    800035e8:	01813983          	ld	s3,24(sp)
    800035ec:	01013a03          	ld	s4,16(sp)
    800035f0:	00813a83          	ld	s5,8(sp)
    800035f4:	00013b03          	ld	s6,0(sp)
    800035f8:	04010113          	addi	sp,sp,64
    800035fc:	00008067          	ret
    80003600:	00002517          	auipc	a0,0x2
    80003604:	c5050513          	addi	a0,a0,-944 # 80005250 <digits+0x18>
    80003608:	fffff097          	auipc	ra,0xfffff
    8000360c:	3d4080e7          	jalr	980(ra) # 800029dc <panic>

0000000080003610 <kfree>:
    80003610:	fe010113          	addi	sp,sp,-32
    80003614:	00813823          	sd	s0,16(sp)
    80003618:	00113c23          	sd	ra,24(sp)
    8000361c:	00913423          	sd	s1,8(sp)
    80003620:	02010413          	addi	s0,sp,32
    80003624:	03451793          	slli	a5,a0,0x34
    80003628:	04079c63          	bnez	a5,80003680 <kfree+0x70>
    8000362c:	00003797          	auipc	a5,0x3
    80003630:	43478793          	addi	a5,a5,1076 # 80006a60 <end>
    80003634:	00050493          	mv	s1,a0
    80003638:	04f56463          	bltu	a0,a5,80003680 <kfree+0x70>
    8000363c:	01100793          	li	a5,17
    80003640:	01b79793          	slli	a5,a5,0x1b
    80003644:	02f57e63          	bgeu	a0,a5,80003680 <kfree+0x70>
    80003648:	00001637          	lui	a2,0x1
    8000364c:	00100593          	li	a1,1
    80003650:	00000097          	auipc	ra,0x0
    80003654:	478080e7          	jalr	1144(ra) # 80003ac8 <__memset>
    80003658:	00002797          	auipc	a5,0x2
    8000365c:	16878793          	addi	a5,a5,360 # 800057c0 <kmem>
    80003660:	0007b703          	ld	a4,0(a5)
    80003664:	01813083          	ld	ra,24(sp)
    80003668:	01013403          	ld	s0,16(sp)
    8000366c:	00e4b023          	sd	a4,0(s1)
    80003670:	0097b023          	sd	s1,0(a5)
    80003674:	00813483          	ld	s1,8(sp)
    80003678:	02010113          	addi	sp,sp,32
    8000367c:	00008067          	ret
    80003680:	00002517          	auipc	a0,0x2
    80003684:	bd050513          	addi	a0,a0,-1072 # 80005250 <digits+0x18>
    80003688:	fffff097          	auipc	ra,0xfffff
    8000368c:	354080e7          	jalr	852(ra) # 800029dc <panic>

0000000080003690 <kalloc>:
    80003690:	fe010113          	addi	sp,sp,-32
    80003694:	00813823          	sd	s0,16(sp)
    80003698:	00913423          	sd	s1,8(sp)
    8000369c:	00113c23          	sd	ra,24(sp)
    800036a0:	02010413          	addi	s0,sp,32
    800036a4:	00002797          	auipc	a5,0x2
    800036a8:	11c78793          	addi	a5,a5,284 # 800057c0 <kmem>
    800036ac:	0007b483          	ld	s1,0(a5)
    800036b0:	02048063          	beqz	s1,800036d0 <kalloc+0x40>
    800036b4:	0004b703          	ld	a4,0(s1)
    800036b8:	00001637          	lui	a2,0x1
    800036bc:	00500593          	li	a1,5
    800036c0:	00048513          	mv	a0,s1
    800036c4:	00e7b023          	sd	a4,0(a5)
    800036c8:	00000097          	auipc	ra,0x0
    800036cc:	400080e7          	jalr	1024(ra) # 80003ac8 <__memset>
    800036d0:	01813083          	ld	ra,24(sp)
    800036d4:	01013403          	ld	s0,16(sp)
    800036d8:	00048513          	mv	a0,s1
    800036dc:	00813483          	ld	s1,8(sp)
    800036e0:	02010113          	addi	sp,sp,32
    800036e4:	00008067          	ret

00000000800036e8 <initlock>:
    800036e8:	ff010113          	addi	sp,sp,-16
    800036ec:	00813423          	sd	s0,8(sp)
    800036f0:	01010413          	addi	s0,sp,16
    800036f4:	00813403          	ld	s0,8(sp)
    800036f8:	00b53423          	sd	a1,8(a0)
    800036fc:	00052023          	sw	zero,0(a0)
    80003700:	00053823          	sd	zero,16(a0)
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00008067          	ret

000000008000370c <acquire>:
    8000370c:	fe010113          	addi	sp,sp,-32
    80003710:	00813823          	sd	s0,16(sp)
    80003714:	00913423          	sd	s1,8(sp)
    80003718:	00113c23          	sd	ra,24(sp)
    8000371c:	01213023          	sd	s2,0(sp)
    80003720:	02010413          	addi	s0,sp,32
    80003724:	00050493          	mv	s1,a0
    80003728:	10002973          	csrr	s2,sstatus
    8000372c:	100027f3          	csrr	a5,sstatus
    80003730:	ffd7f793          	andi	a5,a5,-3
    80003734:	10079073          	csrw	sstatus,a5
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	8e4080e7          	jalr	-1820(ra) # 8000201c <mycpu>
    80003740:	07852783          	lw	a5,120(a0)
    80003744:	06078e63          	beqz	a5,800037c0 <acquire+0xb4>
    80003748:	fffff097          	auipc	ra,0xfffff
    8000374c:	8d4080e7          	jalr	-1836(ra) # 8000201c <mycpu>
    80003750:	07852783          	lw	a5,120(a0)
    80003754:	0004a703          	lw	a4,0(s1)
    80003758:	0017879b          	addiw	a5,a5,1
    8000375c:	06f52c23          	sw	a5,120(a0)
    80003760:	04071063          	bnez	a4,800037a0 <acquire+0x94>
    80003764:	00100713          	li	a4,1
    80003768:	00070793          	mv	a5,a4
    8000376c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003770:	0007879b          	sext.w	a5,a5
    80003774:	fe079ae3          	bnez	a5,80003768 <acquire+0x5c>
    80003778:	0ff0000f          	fence
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	8a0080e7          	jalr	-1888(ra) # 8000201c <mycpu>
    80003784:	01813083          	ld	ra,24(sp)
    80003788:	01013403          	ld	s0,16(sp)
    8000378c:	00a4b823          	sd	a0,16(s1)
    80003790:	00013903          	ld	s2,0(sp)
    80003794:	00813483          	ld	s1,8(sp)
    80003798:	02010113          	addi	sp,sp,32
    8000379c:	00008067          	ret
    800037a0:	0104b903          	ld	s2,16(s1)
    800037a4:	fffff097          	auipc	ra,0xfffff
    800037a8:	878080e7          	jalr	-1928(ra) # 8000201c <mycpu>
    800037ac:	faa91ce3          	bne	s2,a0,80003764 <acquire+0x58>
    800037b0:	00002517          	auipc	a0,0x2
    800037b4:	aa850513          	addi	a0,a0,-1368 # 80005258 <digits+0x20>
    800037b8:	fffff097          	auipc	ra,0xfffff
    800037bc:	224080e7          	jalr	548(ra) # 800029dc <panic>
    800037c0:	00195913          	srli	s2,s2,0x1
    800037c4:	fffff097          	auipc	ra,0xfffff
    800037c8:	858080e7          	jalr	-1960(ra) # 8000201c <mycpu>
    800037cc:	00197913          	andi	s2,s2,1
    800037d0:	07252e23          	sw	s2,124(a0)
    800037d4:	f75ff06f          	j	80003748 <acquire+0x3c>

00000000800037d8 <release>:
    800037d8:	fe010113          	addi	sp,sp,-32
    800037dc:	00813823          	sd	s0,16(sp)
    800037e0:	00113c23          	sd	ra,24(sp)
    800037e4:	00913423          	sd	s1,8(sp)
    800037e8:	01213023          	sd	s2,0(sp)
    800037ec:	02010413          	addi	s0,sp,32
    800037f0:	00052783          	lw	a5,0(a0)
    800037f4:	00079a63          	bnez	a5,80003808 <release+0x30>
    800037f8:	00002517          	auipc	a0,0x2
    800037fc:	a6850513          	addi	a0,a0,-1432 # 80005260 <digits+0x28>
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	1dc080e7          	jalr	476(ra) # 800029dc <panic>
    80003808:	01053903          	ld	s2,16(a0)
    8000380c:	00050493          	mv	s1,a0
    80003810:	fffff097          	auipc	ra,0xfffff
    80003814:	80c080e7          	jalr	-2036(ra) # 8000201c <mycpu>
    80003818:	fea910e3          	bne	s2,a0,800037f8 <release+0x20>
    8000381c:	0004b823          	sd	zero,16(s1)
    80003820:	0ff0000f          	fence
    80003824:	0f50000f          	fence	iorw,ow
    80003828:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	7f0080e7          	jalr	2032(ra) # 8000201c <mycpu>
    80003834:	100027f3          	csrr	a5,sstatus
    80003838:	0027f793          	andi	a5,a5,2
    8000383c:	04079a63          	bnez	a5,80003890 <release+0xb8>
    80003840:	07852783          	lw	a5,120(a0)
    80003844:	02f05e63          	blez	a5,80003880 <release+0xa8>
    80003848:	fff7871b          	addiw	a4,a5,-1
    8000384c:	06e52c23          	sw	a4,120(a0)
    80003850:	00071c63          	bnez	a4,80003868 <release+0x90>
    80003854:	07c52783          	lw	a5,124(a0)
    80003858:	00078863          	beqz	a5,80003868 <release+0x90>
    8000385c:	100027f3          	csrr	a5,sstatus
    80003860:	0027e793          	ori	a5,a5,2
    80003864:	10079073          	csrw	sstatus,a5
    80003868:	01813083          	ld	ra,24(sp)
    8000386c:	01013403          	ld	s0,16(sp)
    80003870:	00813483          	ld	s1,8(sp)
    80003874:	00013903          	ld	s2,0(sp)
    80003878:	02010113          	addi	sp,sp,32
    8000387c:	00008067          	ret
    80003880:	00002517          	auipc	a0,0x2
    80003884:	a0050513          	addi	a0,a0,-1536 # 80005280 <digits+0x48>
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	154080e7          	jalr	340(ra) # 800029dc <panic>
    80003890:	00002517          	auipc	a0,0x2
    80003894:	9d850513          	addi	a0,a0,-1576 # 80005268 <digits+0x30>
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	144080e7          	jalr	324(ra) # 800029dc <panic>

00000000800038a0 <holding>:
    800038a0:	00052783          	lw	a5,0(a0)
    800038a4:	00079663          	bnez	a5,800038b0 <holding+0x10>
    800038a8:	00000513          	li	a0,0
    800038ac:	00008067          	ret
    800038b0:	fe010113          	addi	sp,sp,-32
    800038b4:	00813823          	sd	s0,16(sp)
    800038b8:	00913423          	sd	s1,8(sp)
    800038bc:	00113c23          	sd	ra,24(sp)
    800038c0:	02010413          	addi	s0,sp,32
    800038c4:	01053483          	ld	s1,16(a0)
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	754080e7          	jalr	1876(ra) # 8000201c <mycpu>
    800038d0:	01813083          	ld	ra,24(sp)
    800038d4:	01013403          	ld	s0,16(sp)
    800038d8:	40a48533          	sub	a0,s1,a0
    800038dc:	00153513          	seqz	a0,a0
    800038e0:	00813483          	ld	s1,8(sp)
    800038e4:	02010113          	addi	sp,sp,32
    800038e8:	00008067          	ret

00000000800038ec <push_off>:
    800038ec:	fe010113          	addi	sp,sp,-32
    800038f0:	00813823          	sd	s0,16(sp)
    800038f4:	00113c23          	sd	ra,24(sp)
    800038f8:	00913423          	sd	s1,8(sp)
    800038fc:	02010413          	addi	s0,sp,32
    80003900:	100024f3          	csrr	s1,sstatus
    80003904:	100027f3          	csrr	a5,sstatus
    80003908:	ffd7f793          	andi	a5,a5,-3
    8000390c:	10079073          	csrw	sstatus,a5
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	70c080e7          	jalr	1804(ra) # 8000201c <mycpu>
    80003918:	07852783          	lw	a5,120(a0)
    8000391c:	02078663          	beqz	a5,80003948 <push_off+0x5c>
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	6fc080e7          	jalr	1788(ra) # 8000201c <mycpu>
    80003928:	07852783          	lw	a5,120(a0)
    8000392c:	01813083          	ld	ra,24(sp)
    80003930:	01013403          	ld	s0,16(sp)
    80003934:	0017879b          	addiw	a5,a5,1
    80003938:	06f52c23          	sw	a5,120(a0)
    8000393c:	00813483          	ld	s1,8(sp)
    80003940:	02010113          	addi	sp,sp,32
    80003944:	00008067          	ret
    80003948:	0014d493          	srli	s1,s1,0x1
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	6d0080e7          	jalr	1744(ra) # 8000201c <mycpu>
    80003954:	0014f493          	andi	s1,s1,1
    80003958:	06952e23          	sw	s1,124(a0)
    8000395c:	fc5ff06f          	j	80003920 <push_off+0x34>

0000000080003960 <pop_off>:
    80003960:	ff010113          	addi	sp,sp,-16
    80003964:	00813023          	sd	s0,0(sp)
    80003968:	00113423          	sd	ra,8(sp)
    8000396c:	01010413          	addi	s0,sp,16
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	6ac080e7          	jalr	1708(ra) # 8000201c <mycpu>
    80003978:	100027f3          	csrr	a5,sstatus
    8000397c:	0027f793          	andi	a5,a5,2
    80003980:	04079663          	bnez	a5,800039cc <pop_off+0x6c>
    80003984:	07852783          	lw	a5,120(a0)
    80003988:	02f05a63          	blez	a5,800039bc <pop_off+0x5c>
    8000398c:	fff7871b          	addiw	a4,a5,-1
    80003990:	06e52c23          	sw	a4,120(a0)
    80003994:	00071c63          	bnez	a4,800039ac <pop_off+0x4c>
    80003998:	07c52783          	lw	a5,124(a0)
    8000399c:	00078863          	beqz	a5,800039ac <pop_off+0x4c>
    800039a0:	100027f3          	csrr	a5,sstatus
    800039a4:	0027e793          	ori	a5,a5,2
    800039a8:	10079073          	csrw	sstatus,a5
    800039ac:	00813083          	ld	ra,8(sp)
    800039b0:	00013403          	ld	s0,0(sp)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret
    800039bc:	00002517          	auipc	a0,0x2
    800039c0:	8c450513          	addi	a0,a0,-1852 # 80005280 <digits+0x48>
    800039c4:	fffff097          	auipc	ra,0xfffff
    800039c8:	018080e7          	jalr	24(ra) # 800029dc <panic>
    800039cc:	00002517          	auipc	a0,0x2
    800039d0:	89c50513          	addi	a0,a0,-1892 # 80005268 <digits+0x30>
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	008080e7          	jalr	8(ra) # 800029dc <panic>

00000000800039dc <push_on>:
    800039dc:	fe010113          	addi	sp,sp,-32
    800039e0:	00813823          	sd	s0,16(sp)
    800039e4:	00113c23          	sd	ra,24(sp)
    800039e8:	00913423          	sd	s1,8(sp)
    800039ec:	02010413          	addi	s0,sp,32
    800039f0:	100024f3          	csrr	s1,sstatus
    800039f4:	100027f3          	csrr	a5,sstatus
    800039f8:	0027e793          	ori	a5,a5,2
    800039fc:	10079073          	csrw	sstatus,a5
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	61c080e7          	jalr	1564(ra) # 8000201c <mycpu>
    80003a08:	07852783          	lw	a5,120(a0)
    80003a0c:	02078663          	beqz	a5,80003a38 <push_on+0x5c>
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	60c080e7          	jalr	1548(ra) # 8000201c <mycpu>
    80003a18:	07852783          	lw	a5,120(a0)
    80003a1c:	01813083          	ld	ra,24(sp)
    80003a20:	01013403          	ld	s0,16(sp)
    80003a24:	0017879b          	addiw	a5,a5,1
    80003a28:	06f52c23          	sw	a5,120(a0)
    80003a2c:	00813483          	ld	s1,8(sp)
    80003a30:	02010113          	addi	sp,sp,32
    80003a34:	00008067          	ret
    80003a38:	0014d493          	srli	s1,s1,0x1
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	5e0080e7          	jalr	1504(ra) # 8000201c <mycpu>
    80003a44:	0014f493          	andi	s1,s1,1
    80003a48:	06952e23          	sw	s1,124(a0)
    80003a4c:	fc5ff06f          	j	80003a10 <push_on+0x34>

0000000080003a50 <pop_on>:
    80003a50:	ff010113          	addi	sp,sp,-16
    80003a54:	00813023          	sd	s0,0(sp)
    80003a58:	00113423          	sd	ra,8(sp)
    80003a5c:	01010413          	addi	s0,sp,16
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	5bc080e7          	jalr	1468(ra) # 8000201c <mycpu>
    80003a68:	100027f3          	csrr	a5,sstatus
    80003a6c:	0027f793          	andi	a5,a5,2
    80003a70:	04078463          	beqz	a5,80003ab8 <pop_on+0x68>
    80003a74:	07852783          	lw	a5,120(a0)
    80003a78:	02f05863          	blez	a5,80003aa8 <pop_on+0x58>
    80003a7c:	fff7879b          	addiw	a5,a5,-1
    80003a80:	06f52c23          	sw	a5,120(a0)
    80003a84:	07853783          	ld	a5,120(a0)
    80003a88:	00079863          	bnez	a5,80003a98 <pop_on+0x48>
    80003a8c:	100027f3          	csrr	a5,sstatus
    80003a90:	ffd7f793          	andi	a5,a5,-3
    80003a94:	10079073          	csrw	sstatus,a5
    80003a98:	00813083          	ld	ra,8(sp)
    80003a9c:	00013403          	ld	s0,0(sp)
    80003aa0:	01010113          	addi	sp,sp,16
    80003aa4:	00008067          	ret
    80003aa8:	00002517          	auipc	a0,0x2
    80003aac:	80050513          	addi	a0,a0,-2048 # 800052a8 <digits+0x70>
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	f2c080e7          	jalr	-212(ra) # 800029dc <panic>
    80003ab8:	00001517          	auipc	a0,0x1
    80003abc:	7d050513          	addi	a0,a0,2000 # 80005288 <digits+0x50>
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	f1c080e7          	jalr	-228(ra) # 800029dc <panic>

0000000080003ac8 <__memset>:
    80003ac8:	ff010113          	addi	sp,sp,-16
    80003acc:	00813423          	sd	s0,8(sp)
    80003ad0:	01010413          	addi	s0,sp,16
    80003ad4:	1a060e63          	beqz	a2,80003c90 <__memset+0x1c8>
    80003ad8:	40a007b3          	neg	a5,a0
    80003adc:	0077f793          	andi	a5,a5,7
    80003ae0:	00778693          	addi	a3,a5,7
    80003ae4:	00b00813          	li	a6,11
    80003ae8:	0ff5f593          	andi	a1,a1,255
    80003aec:	fff6071b          	addiw	a4,a2,-1
    80003af0:	1b06e663          	bltu	a3,a6,80003c9c <__memset+0x1d4>
    80003af4:	1cd76463          	bltu	a4,a3,80003cbc <__memset+0x1f4>
    80003af8:	1a078e63          	beqz	a5,80003cb4 <__memset+0x1ec>
    80003afc:	00b50023          	sb	a1,0(a0)
    80003b00:	00100713          	li	a4,1
    80003b04:	1ae78463          	beq	a5,a4,80003cac <__memset+0x1e4>
    80003b08:	00b500a3          	sb	a1,1(a0)
    80003b0c:	00200713          	li	a4,2
    80003b10:	1ae78a63          	beq	a5,a4,80003cc4 <__memset+0x1fc>
    80003b14:	00b50123          	sb	a1,2(a0)
    80003b18:	00300713          	li	a4,3
    80003b1c:	18e78463          	beq	a5,a4,80003ca4 <__memset+0x1dc>
    80003b20:	00b501a3          	sb	a1,3(a0)
    80003b24:	00400713          	li	a4,4
    80003b28:	1ae78263          	beq	a5,a4,80003ccc <__memset+0x204>
    80003b2c:	00b50223          	sb	a1,4(a0)
    80003b30:	00500713          	li	a4,5
    80003b34:	1ae78063          	beq	a5,a4,80003cd4 <__memset+0x20c>
    80003b38:	00b502a3          	sb	a1,5(a0)
    80003b3c:	00700713          	li	a4,7
    80003b40:	18e79e63          	bne	a5,a4,80003cdc <__memset+0x214>
    80003b44:	00b50323          	sb	a1,6(a0)
    80003b48:	00700e93          	li	t4,7
    80003b4c:	00859713          	slli	a4,a1,0x8
    80003b50:	00e5e733          	or	a4,a1,a4
    80003b54:	01059e13          	slli	t3,a1,0x10
    80003b58:	01c76e33          	or	t3,a4,t3
    80003b5c:	01859313          	slli	t1,a1,0x18
    80003b60:	006e6333          	or	t1,t3,t1
    80003b64:	02059893          	slli	a7,a1,0x20
    80003b68:	40f60e3b          	subw	t3,a2,a5
    80003b6c:	011368b3          	or	a7,t1,a7
    80003b70:	02859813          	slli	a6,a1,0x28
    80003b74:	0108e833          	or	a6,a7,a6
    80003b78:	03059693          	slli	a3,a1,0x30
    80003b7c:	003e589b          	srliw	a7,t3,0x3
    80003b80:	00d866b3          	or	a3,a6,a3
    80003b84:	03859713          	slli	a4,a1,0x38
    80003b88:	00389813          	slli	a6,a7,0x3
    80003b8c:	00f507b3          	add	a5,a0,a5
    80003b90:	00e6e733          	or	a4,a3,a4
    80003b94:	000e089b          	sext.w	a7,t3
    80003b98:	00f806b3          	add	a3,a6,a5
    80003b9c:	00e7b023          	sd	a4,0(a5)
    80003ba0:	00878793          	addi	a5,a5,8
    80003ba4:	fed79ce3          	bne	a5,a3,80003b9c <__memset+0xd4>
    80003ba8:	ff8e7793          	andi	a5,t3,-8
    80003bac:	0007871b          	sext.w	a4,a5
    80003bb0:	01d787bb          	addw	a5,a5,t4
    80003bb4:	0ce88e63          	beq	a7,a4,80003c90 <__memset+0x1c8>
    80003bb8:	00f50733          	add	a4,a0,a5
    80003bbc:	00b70023          	sb	a1,0(a4)
    80003bc0:	0017871b          	addiw	a4,a5,1
    80003bc4:	0cc77663          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003bc8:	00e50733          	add	a4,a0,a4
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	0027871b          	addiw	a4,a5,2
    80003bd4:	0ac77e63          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0037871b          	addiw	a4,a5,3
    80003be4:	0ac77663          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	0047871b          	addiw	a4,a5,4
    80003bf4:	08c77e63          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	0057871b          	addiw	a4,a5,5
    80003c04:	08c77663          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	0067871b          	addiw	a4,a5,6
    80003c14:	06c77e63          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	0077871b          	addiw	a4,a5,7
    80003c24:	06c77663          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	0087871b          	addiw	a4,a5,8
    80003c34:	04c77e63          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00b70023          	sb	a1,0(a4)
    80003c40:	0097871b          	addiw	a4,a5,9
    80003c44:	04c77663          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	00a7871b          	addiw	a4,a5,10
    80003c54:	02c77e63          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	00b7871b          	addiw	a4,a5,11
    80003c64:	02c77663          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	00c7871b          	addiw	a4,a5,12
    80003c74:	00c77e63          	bgeu	a4,a2,80003c90 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	00d7879b          	addiw	a5,a5,13
    80003c84:	00c7f663          	bgeu	a5,a2,80003c90 <__memset+0x1c8>
    80003c88:	00f507b3          	add	a5,a0,a5
    80003c8c:	00b78023          	sb	a1,0(a5)
    80003c90:	00813403          	ld	s0,8(sp)
    80003c94:	01010113          	addi	sp,sp,16
    80003c98:	00008067          	ret
    80003c9c:	00b00693          	li	a3,11
    80003ca0:	e55ff06f          	j	80003af4 <__memset+0x2c>
    80003ca4:	00300e93          	li	t4,3
    80003ca8:	ea5ff06f          	j	80003b4c <__memset+0x84>
    80003cac:	00100e93          	li	t4,1
    80003cb0:	e9dff06f          	j	80003b4c <__memset+0x84>
    80003cb4:	00000e93          	li	t4,0
    80003cb8:	e95ff06f          	j	80003b4c <__memset+0x84>
    80003cbc:	00000793          	li	a5,0
    80003cc0:	ef9ff06f          	j	80003bb8 <__memset+0xf0>
    80003cc4:	00200e93          	li	t4,2
    80003cc8:	e85ff06f          	j	80003b4c <__memset+0x84>
    80003ccc:	00400e93          	li	t4,4
    80003cd0:	e7dff06f          	j	80003b4c <__memset+0x84>
    80003cd4:	00500e93          	li	t4,5
    80003cd8:	e75ff06f          	j	80003b4c <__memset+0x84>
    80003cdc:	00600e93          	li	t4,6
    80003ce0:	e6dff06f          	j	80003b4c <__memset+0x84>

0000000080003ce4 <__memmove>:
    80003ce4:	ff010113          	addi	sp,sp,-16
    80003ce8:	00813423          	sd	s0,8(sp)
    80003cec:	01010413          	addi	s0,sp,16
    80003cf0:	0e060863          	beqz	a2,80003de0 <__memmove+0xfc>
    80003cf4:	fff6069b          	addiw	a3,a2,-1
    80003cf8:	0006881b          	sext.w	a6,a3
    80003cfc:	0ea5e863          	bltu	a1,a0,80003dec <__memmove+0x108>
    80003d00:	00758713          	addi	a4,a1,7
    80003d04:	00a5e7b3          	or	a5,a1,a0
    80003d08:	40a70733          	sub	a4,a4,a0
    80003d0c:	0077f793          	andi	a5,a5,7
    80003d10:	00f73713          	sltiu	a4,a4,15
    80003d14:	00174713          	xori	a4,a4,1
    80003d18:	0017b793          	seqz	a5,a5
    80003d1c:	00e7f7b3          	and	a5,a5,a4
    80003d20:	10078863          	beqz	a5,80003e30 <__memmove+0x14c>
    80003d24:	00900793          	li	a5,9
    80003d28:	1107f463          	bgeu	a5,a6,80003e30 <__memmove+0x14c>
    80003d2c:	0036581b          	srliw	a6,a2,0x3
    80003d30:	fff8081b          	addiw	a6,a6,-1
    80003d34:	02081813          	slli	a6,a6,0x20
    80003d38:	01d85893          	srli	a7,a6,0x1d
    80003d3c:	00858813          	addi	a6,a1,8
    80003d40:	00058793          	mv	a5,a1
    80003d44:	00050713          	mv	a4,a0
    80003d48:	01088833          	add	a6,a7,a6
    80003d4c:	0007b883          	ld	a7,0(a5)
    80003d50:	00878793          	addi	a5,a5,8
    80003d54:	00870713          	addi	a4,a4,8
    80003d58:	ff173c23          	sd	a7,-8(a4)
    80003d5c:	ff0798e3          	bne	a5,a6,80003d4c <__memmove+0x68>
    80003d60:	ff867713          	andi	a4,a2,-8
    80003d64:	02071793          	slli	a5,a4,0x20
    80003d68:	0207d793          	srli	a5,a5,0x20
    80003d6c:	00f585b3          	add	a1,a1,a5
    80003d70:	40e686bb          	subw	a3,a3,a4
    80003d74:	00f507b3          	add	a5,a0,a5
    80003d78:	06e60463          	beq	a2,a4,80003de0 <__memmove+0xfc>
    80003d7c:	0005c703          	lbu	a4,0(a1)
    80003d80:	00e78023          	sb	a4,0(a5)
    80003d84:	04068e63          	beqz	a3,80003de0 <__memmove+0xfc>
    80003d88:	0015c603          	lbu	a2,1(a1)
    80003d8c:	00100713          	li	a4,1
    80003d90:	00c780a3          	sb	a2,1(a5)
    80003d94:	04e68663          	beq	a3,a4,80003de0 <__memmove+0xfc>
    80003d98:	0025c603          	lbu	a2,2(a1)
    80003d9c:	00200713          	li	a4,2
    80003da0:	00c78123          	sb	a2,2(a5)
    80003da4:	02e68e63          	beq	a3,a4,80003de0 <__memmove+0xfc>
    80003da8:	0035c603          	lbu	a2,3(a1)
    80003dac:	00300713          	li	a4,3
    80003db0:	00c781a3          	sb	a2,3(a5)
    80003db4:	02e68663          	beq	a3,a4,80003de0 <__memmove+0xfc>
    80003db8:	0045c603          	lbu	a2,4(a1)
    80003dbc:	00400713          	li	a4,4
    80003dc0:	00c78223          	sb	a2,4(a5)
    80003dc4:	00e68e63          	beq	a3,a4,80003de0 <__memmove+0xfc>
    80003dc8:	0055c603          	lbu	a2,5(a1)
    80003dcc:	00500713          	li	a4,5
    80003dd0:	00c782a3          	sb	a2,5(a5)
    80003dd4:	00e68663          	beq	a3,a4,80003de0 <__memmove+0xfc>
    80003dd8:	0065c703          	lbu	a4,6(a1)
    80003ddc:	00e78323          	sb	a4,6(a5)
    80003de0:	00813403          	ld	s0,8(sp)
    80003de4:	01010113          	addi	sp,sp,16
    80003de8:	00008067          	ret
    80003dec:	02061713          	slli	a4,a2,0x20
    80003df0:	02075713          	srli	a4,a4,0x20
    80003df4:	00e587b3          	add	a5,a1,a4
    80003df8:	f0f574e3          	bgeu	a0,a5,80003d00 <__memmove+0x1c>
    80003dfc:	02069613          	slli	a2,a3,0x20
    80003e00:	02065613          	srli	a2,a2,0x20
    80003e04:	fff64613          	not	a2,a2
    80003e08:	00e50733          	add	a4,a0,a4
    80003e0c:	00c78633          	add	a2,a5,a2
    80003e10:	fff7c683          	lbu	a3,-1(a5)
    80003e14:	fff78793          	addi	a5,a5,-1
    80003e18:	fff70713          	addi	a4,a4,-1
    80003e1c:	00d70023          	sb	a3,0(a4)
    80003e20:	fec798e3          	bne	a5,a2,80003e10 <__memmove+0x12c>
    80003e24:	00813403          	ld	s0,8(sp)
    80003e28:	01010113          	addi	sp,sp,16
    80003e2c:	00008067          	ret
    80003e30:	02069713          	slli	a4,a3,0x20
    80003e34:	02075713          	srli	a4,a4,0x20
    80003e38:	00170713          	addi	a4,a4,1
    80003e3c:	00e50733          	add	a4,a0,a4
    80003e40:	00050793          	mv	a5,a0
    80003e44:	0005c683          	lbu	a3,0(a1)
    80003e48:	00178793          	addi	a5,a5,1
    80003e4c:	00158593          	addi	a1,a1,1
    80003e50:	fed78fa3          	sb	a3,-1(a5)
    80003e54:	fee798e3          	bne	a5,a4,80003e44 <__memmove+0x160>
    80003e58:	f89ff06f          	j	80003de0 <__memmove+0xfc>

0000000080003e5c <__mem_free>:
    80003e5c:	ff010113          	addi	sp,sp,-16
    80003e60:	00813423          	sd	s0,8(sp)
    80003e64:	01010413          	addi	s0,sp,16
    80003e68:	00002597          	auipc	a1,0x2
    80003e6c:	96058593          	addi	a1,a1,-1696 # 800057c8 <freep>
    80003e70:	0005b783          	ld	a5,0(a1)
    80003e74:	ff050693          	addi	a3,a0,-16
    80003e78:	0007b703          	ld	a4,0(a5)
    80003e7c:	00d7fc63          	bgeu	a5,a3,80003e94 <__mem_free+0x38>
    80003e80:	00e6ee63          	bltu	a3,a4,80003e9c <__mem_free+0x40>
    80003e84:	00e7fc63          	bgeu	a5,a4,80003e9c <__mem_free+0x40>
    80003e88:	00070793          	mv	a5,a4
    80003e8c:	0007b703          	ld	a4,0(a5)
    80003e90:	fed7e8e3          	bltu	a5,a3,80003e80 <__mem_free+0x24>
    80003e94:	fee7eae3          	bltu	a5,a4,80003e88 <__mem_free+0x2c>
    80003e98:	fee6f8e3          	bgeu	a3,a4,80003e88 <__mem_free+0x2c>
    80003e9c:	ff852803          	lw	a6,-8(a0)
    80003ea0:	02081613          	slli	a2,a6,0x20
    80003ea4:	01c65613          	srli	a2,a2,0x1c
    80003ea8:	00c68633          	add	a2,a3,a2
    80003eac:	02c70a63          	beq	a4,a2,80003ee0 <__mem_free+0x84>
    80003eb0:	fee53823          	sd	a4,-16(a0)
    80003eb4:	0087a503          	lw	a0,8(a5)
    80003eb8:	02051613          	slli	a2,a0,0x20
    80003ebc:	01c65613          	srli	a2,a2,0x1c
    80003ec0:	00c78633          	add	a2,a5,a2
    80003ec4:	04c68263          	beq	a3,a2,80003f08 <__mem_free+0xac>
    80003ec8:	00813403          	ld	s0,8(sp)
    80003ecc:	00d7b023          	sd	a3,0(a5)
    80003ed0:	00f5b023          	sd	a5,0(a1)
    80003ed4:	00000513          	li	a0,0
    80003ed8:	01010113          	addi	sp,sp,16
    80003edc:	00008067          	ret
    80003ee0:	00872603          	lw	a2,8(a4)
    80003ee4:	00073703          	ld	a4,0(a4)
    80003ee8:	0106083b          	addw	a6,a2,a6
    80003eec:	ff052c23          	sw	a6,-8(a0)
    80003ef0:	fee53823          	sd	a4,-16(a0)
    80003ef4:	0087a503          	lw	a0,8(a5)
    80003ef8:	02051613          	slli	a2,a0,0x20
    80003efc:	01c65613          	srli	a2,a2,0x1c
    80003f00:	00c78633          	add	a2,a5,a2
    80003f04:	fcc692e3          	bne	a3,a2,80003ec8 <__mem_free+0x6c>
    80003f08:	00813403          	ld	s0,8(sp)
    80003f0c:	0105053b          	addw	a0,a0,a6
    80003f10:	00a7a423          	sw	a0,8(a5)
    80003f14:	00e7b023          	sd	a4,0(a5)
    80003f18:	00f5b023          	sd	a5,0(a1)
    80003f1c:	00000513          	li	a0,0
    80003f20:	01010113          	addi	sp,sp,16
    80003f24:	00008067          	ret

0000000080003f28 <__mem_alloc>:
    80003f28:	fc010113          	addi	sp,sp,-64
    80003f2c:	02813823          	sd	s0,48(sp)
    80003f30:	02913423          	sd	s1,40(sp)
    80003f34:	03213023          	sd	s2,32(sp)
    80003f38:	01513423          	sd	s5,8(sp)
    80003f3c:	02113c23          	sd	ra,56(sp)
    80003f40:	01313c23          	sd	s3,24(sp)
    80003f44:	01413823          	sd	s4,16(sp)
    80003f48:	01613023          	sd	s6,0(sp)
    80003f4c:	04010413          	addi	s0,sp,64
    80003f50:	00002a97          	auipc	s5,0x2
    80003f54:	878a8a93          	addi	s5,s5,-1928 # 800057c8 <freep>
    80003f58:	00f50913          	addi	s2,a0,15
    80003f5c:	000ab683          	ld	a3,0(s5)
    80003f60:	00495913          	srli	s2,s2,0x4
    80003f64:	0019049b          	addiw	s1,s2,1
    80003f68:	00048913          	mv	s2,s1
    80003f6c:	0c068c63          	beqz	a3,80004044 <__mem_alloc+0x11c>
    80003f70:	0006b503          	ld	a0,0(a3)
    80003f74:	00852703          	lw	a4,8(a0)
    80003f78:	10977063          	bgeu	a4,s1,80004078 <__mem_alloc+0x150>
    80003f7c:	000017b7          	lui	a5,0x1
    80003f80:	0009099b          	sext.w	s3,s2
    80003f84:	0af4e863          	bltu	s1,a5,80004034 <__mem_alloc+0x10c>
    80003f88:	02099a13          	slli	s4,s3,0x20
    80003f8c:	01ca5a13          	srli	s4,s4,0x1c
    80003f90:	fff00b13          	li	s6,-1
    80003f94:	0100006f          	j	80003fa4 <__mem_alloc+0x7c>
    80003f98:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003f9c:	00852703          	lw	a4,8(a0)
    80003fa0:	04977463          	bgeu	a4,s1,80003fe8 <__mem_alloc+0xc0>
    80003fa4:	00050793          	mv	a5,a0
    80003fa8:	fea698e3          	bne	a3,a0,80003f98 <__mem_alloc+0x70>
    80003fac:	000a0513          	mv	a0,s4
    80003fb0:	00000097          	auipc	ra,0x0
    80003fb4:	1f0080e7          	jalr	496(ra) # 800041a0 <kvmincrease>
    80003fb8:	00050793          	mv	a5,a0
    80003fbc:	01050513          	addi	a0,a0,16
    80003fc0:	07678e63          	beq	a5,s6,8000403c <__mem_alloc+0x114>
    80003fc4:	0137a423          	sw	s3,8(a5)
    80003fc8:	00000097          	auipc	ra,0x0
    80003fcc:	e94080e7          	jalr	-364(ra) # 80003e5c <__mem_free>
    80003fd0:	000ab783          	ld	a5,0(s5)
    80003fd4:	06078463          	beqz	a5,8000403c <__mem_alloc+0x114>
    80003fd8:	0007b503          	ld	a0,0(a5)
    80003fdc:	00078693          	mv	a3,a5
    80003fe0:	00852703          	lw	a4,8(a0)
    80003fe4:	fc9760e3          	bltu	a4,s1,80003fa4 <__mem_alloc+0x7c>
    80003fe8:	08e48263          	beq	s1,a4,8000406c <__mem_alloc+0x144>
    80003fec:	4127073b          	subw	a4,a4,s2
    80003ff0:	02071693          	slli	a3,a4,0x20
    80003ff4:	01c6d693          	srli	a3,a3,0x1c
    80003ff8:	00e52423          	sw	a4,8(a0)
    80003ffc:	00d50533          	add	a0,a0,a3
    80004000:	01252423          	sw	s2,8(a0)
    80004004:	00fab023          	sd	a5,0(s5)
    80004008:	01050513          	addi	a0,a0,16
    8000400c:	03813083          	ld	ra,56(sp)
    80004010:	03013403          	ld	s0,48(sp)
    80004014:	02813483          	ld	s1,40(sp)
    80004018:	02013903          	ld	s2,32(sp)
    8000401c:	01813983          	ld	s3,24(sp)
    80004020:	01013a03          	ld	s4,16(sp)
    80004024:	00813a83          	ld	s5,8(sp)
    80004028:	00013b03          	ld	s6,0(sp)
    8000402c:	04010113          	addi	sp,sp,64
    80004030:	00008067          	ret
    80004034:	000019b7          	lui	s3,0x1
    80004038:	f51ff06f          	j	80003f88 <__mem_alloc+0x60>
    8000403c:	00000513          	li	a0,0
    80004040:	fcdff06f          	j	8000400c <__mem_alloc+0xe4>
    80004044:	00003797          	auipc	a5,0x3
    80004048:	a0c78793          	addi	a5,a5,-1524 # 80006a50 <base>
    8000404c:	00078513          	mv	a0,a5
    80004050:	00fab023          	sd	a5,0(s5)
    80004054:	00f7b023          	sd	a5,0(a5)
    80004058:	00000713          	li	a4,0
    8000405c:	00003797          	auipc	a5,0x3
    80004060:	9e07ae23          	sw	zero,-1540(a5) # 80006a58 <base+0x8>
    80004064:	00050693          	mv	a3,a0
    80004068:	f11ff06f          	j	80003f78 <__mem_alloc+0x50>
    8000406c:	00053703          	ld	a4,0(a0)
    80004070:	00e7b023          	sd	a4,0(a5)
    80004074:	f91ff06f          	j	80004004 <__mem_alloc+0xdc>
    80004078:	00068793          	mv	a5,a3
    8000407c:	f6dff06f          	j	80003fe8 <__mem_alloc+0xc0>

0000000080004080 <__putc>:
    80004080:	fe010113          	addi	sp,sp,-32
    80004084:	00813823          	sd	s0,16(sp)
    80004088:	00113c23          	sd	ra,24(sp)
    8000408c:	02010413          	addi	s0,sp,32
    80004090:	00050793          	mv	a5,a0
    80004094:	fef40593          	addi	a1,s0,-17
    80004098:	00100613          	li	a2,1
    8000409c:	00000513          	li	a0,0
    800040a0:	fef407a3          	sb	a5,-17(s0)
    800040a4:	fffff097          	auipc	ra,0xfffff
    800040a8:	918080e7          	jalr	-1768(ra) # 800029bc <console_write>
    800040ac:	01813083          	ld	ra,24(sp)
    800040b0:	01013403          	ld	s0,16(sp)
    800040b4:	02010113          	addi	sp,sp,32
    800040b8:	00008067          	ret

00000000800040bc <__getc>:
    800040bc:	fe010113          	addi	sp,sp,-32
    800040c0:	00813823          	sd	s0,16(sp)
    800040c4:	00113c23          	sd	ra,24(sp)
    800040c8:	02010413          	addi	s0,sp,32
    800040cc:	fe840593          	addi	a1,s0,-24
    800040d0:	00100613          	li	a2,1
    800040d4:	00000513          	li	a0,0
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	8c4080e7          	jalr	-1852(ra) # 8000299c <console_read>
    800040e0:	fe844503          	lbu	a0,-24(s0)
    800040e4:	01813083          	ld	ra,24(sp)
    800040e8:	01013403          	ld	s0,16(sp)
    800040ec:	02010113          	addi	sp,sp,32
    800040f0:	00008067          	ret

00000000800040f4 <console_handler>:
    800040f4:	fe010113          	addi	sp,sp,-32
    800040f8:	00813823          	sd	s0,16(sp)
    800040fc:	00113c23          	sd	ra,24(sp)
    80004100:	00913423          	sd	s1,8(sp)
    80004104:	02010413          	addi	s0,sp,32
    80004108:	14202773          	csrr	a4,scause
    8000410c:	100027f3          	csrr	a5,sstatus
    80004110:	0027f793          	andi	a5,a5,2
    80004114:	06079e63          	bnez	a5,80004190 <console_handler+0x9c>
    80004118:	00074c63          	bltz	a4,80004130 <console_handler+0x3c>
    8000411c:	01813083          	ld	ra,24(sp)
    80004120:	01013403          	ld	s0,16(sp)
    80004124:	00813483          	ld	s1,8(sp)
    80004128:	02010113          	addi	sp,sp,32
    8000412c:	00008067          	ret
    80004130:	0ff77713          	andi	a4,a4,255
    80004134:	00900793          	li	a5,9
    80004138:	fef712e3          	bne	a4,a5,8000411c <console_handler+0x28>
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	4b8080e7          	jalr	1208(ra) # 800025f4 <plic_claim>
    80004144:	00a00793          	li	a5,10
    80004148:	00050493          	mv	s1,a0
    8000414c:	02f50c63          	beq	a0,a5,80004184 <console_handler+0x90>
    80004150:	fc0506e3          	beqz	a0,8000411c <console_handler+0x28>
    80004154:	00050593          	mv	a1,a0
    80004158:	00001517          	auipc	a0,0x1
    8000415c:	05850513          	addi	a0,a0,88 # 800051b0 <_ZZ12printIntegermE6digits+0xe0>
    80004160:	fffff097          	auipc	ra,0xfffff
    80004164:	8d8080e7          	jalr	-1832(ra) # 80002a38 <__printf>
    80004168:	01013403          	ld	s0,16(sp)
    8000416c:	01813083          	ld	ra,24(sp)
    80004170:	00048513          	mv	a0,s1
    80004174:	00813483          	ld	s1,8(sp)
    80004178:	02010113          	addi	sp,sp,32
    8000417c:	ffffe317          	auipc	t1,0xffffe
    80004180:	4b030067          	jr	1200(t1) # 8000262c <plic_complete>
    80004184:	fffff097          	auipc	ra,0xfffff
    80004188:	1bc080e7          	jalr	444(ra) # 80003340 <uartintr>
    8000418c:	fddff06f          	j	80004168 <console_handler+0x74>
    80004190:	00001517          	auipc	a0,0x1
    80004194:	12050513          	addi	a0,a0,288 # 800052b0 <digits+0x78>
    80004198:	fffff097          	auipc	ra,0xfffff
    8000419c:	844080e7          	jalr	-1980(ra) # 800029dc <panic>

00000000800041a0 <kvmincrease>:
    800041a0:	fe010113          	addi	sp,sp,-32
    800041a4:	01213023          	sd	s2,0(sp)
    800041a8:	00001937          	lui	s2,0x1
    800041ac:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00113c23          	sd	ra,24(sp)
    800041b8:	00913423          	sd	s1,8(sp)
    800041bc:	02010413          	addi	s0,sp,32
    800041c0:	01250933          	add	s2,a0,s2
    800041c4:	00c95913          	srli	s2,s2,0xc
    800041c8:	02090863          	beqz	s2,800041f8 <kvmincrease+0x58>
    800041cc:	00000493          	li	s1,0
    800041d0:	00148493          	addi	s1,s1,1
    800041d4:	fffff097          	auipc	ra,0xfffff
    800041d8:	4bc080e7          	jalr	1212(ra) # 80003690 <kalloc>
    800041dc:	fe991ae3          	bne	s2,s1,800041d0 <kvmincrease+0x30>
    800041e0:	01813083          	ld	ra,24(sp)
    800041e4:	01013403          	ld	s0,16(sp)
    800041e8:	00813483          	ld	s1,8(sp)
    800041ec:	00013903          	ld	s2,0(sp)
    800041f0:	02010113          	addi	sp,sp,32
    800041f4:	00008067          	ret
    800041f8:	01813083          	ld	ra,24(sp)
    800041fc:	01013403          	ld	s0,16(sp)
    80004200:	00813483          	ld	s1,8(sp)
    80004204:	00013903          	ld	s2,0(sp)
    80004208:	00000513          	li	a0,0
    8000420c:	02010113          	addi	sp,sp,32
    80004210:	00008067          	ret
	...
