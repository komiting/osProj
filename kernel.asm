
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	7f013103          	ld	sp,2032(sp) # 800057f0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	034020ef          	jal	ra,80002050 <start>

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
    80001184:	0a9000ef          	jal	ra,80001a2c <_ZN5Riscv20handleSupervisorTrapEv>
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
    80001290:	53c080e7          	jalr	1340(ra) # 800017c8 <_ZN3TCB5yieldEv>
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
    800012ec:	d3850513          	addi	a0,a0,-712 # 80005020 <CONSOLE_STATUS+0x10>
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	c34080e7          	jalr	-972(ra) # 80001f24 <_Z11printStringPKc>
        printInteger(i);
    800012f8:	00048513          	mv	a0,s1
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	c98080e7          	jalr	-872(ra) # 80001f94 <_Z12printIntegerm>
        printString("\n");
    80001304:	00004517          	auipc	a0,0x4
    80001308:	d3c50513          	addi	a0,a0,-708 # 80005040 <CONSOLE_STATUS+0x30>
    8000130c:	00001097          	auipc	ra,0x1
    80001310:	c18080e7          	jalr	-1000(ra) # 80001f24 <_Z11printStringPKc>
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
    80001384:	ca850513          	addi	a0,a0,-856 # 80005028 <CONSOLE_STATUS+0x18>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	b9c080e7          	jalr	-1124(ra) # 80001f24 <_Z11printStringPKc>
        printInteger(i);
    80001390:	00048513          	mv	a0,s1
    80001394:	00001097          	auipc	ra,0x1
    80001398:	c00080e7          	jalr	-1024(ra) # 80001f94 <_Z12printIntegerm>
        printString("\n");
    8000139c:	00004517          	auipc	a0,0x4
    800013a0:	ca450513          	addi	a0,a0,-860 # 80005040 <CONSOLE_STATUS+0x30>
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	b80080e7          	jalr	-1152(ra) # 80001f24 <_Z11printStringPKc>
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
    800013ec:	c4850513          	addi	a0,a0,-952 # 80005030 <CONSOLE_STATUS+0x20>
    800013f0:	00001097          	auipc	ra,0x1
    800013f4:	b34080e7          	jalr	-1228(ra) # 80001f24 <_Z11printStringPKc>
        printInteger(i);
    800013f8:	00048513          	mv	a0,s1
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	b98080e7          	jalr	-1128(ra) # 80001f94 <_Z12printIntegerm>
        printString("\n");
    80001404:	00004517          	auipc	a0,0x4
    80001408:	c3c50513          	addi	a0,a0,-964 # 80005040 <CONSOLE_STATUS+0x30>
    8000140c:	00001097          	auipc	ra,0x1
    80001410:	b18080e7          	jalr	-1256(ra) # 80001f24 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001414:	0014849b          	addiw	s1,s1,1
    80001418:	0ff4f493          	andi	s1,s1,255
    8000141c:	00200793          	li	a5,2
    80001420:	fc97f4e3          	bgeu	a5,s1,800013e8 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	c1450513          	addi	a0,a0,-1004 # 80005038 <CONSOLE_STATUS+0x28>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	af8080e7          	jalr	-1288(ra) # 80001f24 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001434:	00700313          	li	t1,7
    TCB::yield();
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	390080e7          	jalr	912(ra) # 800017c8 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001440:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001444:	00004517          	auipc	a0,0x4
    80001448:	c0450513          	addi	a0,a0,-1020 # 80005048 <CONSOLE_STATUS+0x38>
    8000144c:	00001097          	auipc	ra,0x1
    80001450:	ad8080e7          	jalr	-1320(ra) # 80001f24 <_Z11printStringPKc>
    printInteger(t1);
    80001454:	00090513          	mv	a0,s2
    80001458:	00001097          	auipc	ra,0x1
    8000145c:	b3c080e7          	jalr	-1220(ra) # 80001f94 <_Z12printIntegerm>
    printString("\n");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	be050513          	addi	a0,a0,-1056 # 80005040 <CONSOLE_STATUS+0x30>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	abc080e7          	jalr	-1348(ra) # 80001f24 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001470:	00c00513          	li	a0,12
    80001474:	00000097          	auipc	ra,0x0
    80001478:	db0080e7          	jalr	-592(ra) # 80001224 <_ZL9fibonaccim>
    8000147c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001480:	00004517          	auipc	a0,0x4
    80001484:	bd050513          	addi	a0,a0,-1072 # 80005050 <CONSOLE_STATUS+0x40>
    80001488:	00001097          	auipc	ra,0x1
    8000148c:	a9c080e7          	jalr	-1380(ra) # 80001f24 <_Z11printStringPKc>
    printInteger(result);
    80001490:	00090513          	mv	a0,s2
    80001494:	00001097          	auipc	ra,0x1
    80001498:	b00080e7          	jalr	-1280(ra) # 80001f94 <_Z12printIntegerm>
    printString("\n");
    8000149c:	00004517          	auipc	a0,0x4
    800014a0:	ba450513          	addi	a0,a0,-1116 # 80005040 <CONSOLE_STATUS+0x30>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	a80080e7          	jalr	-1408(ra) # 80001f24 <_Z11printStringPKc>
    800014ac:	0380006f          	j	800014e4 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800014b0:	00004517          	auipc	a0,0x4
    800014b4:	b8050513          	addi	a0,a0,-1152 # 80005030 <CONSOLE_STATUS+0x20>
    800014b8:	00001097          	auipc	ra,0x1
    800014bc:	a6c080e7          	jalr	-1428(ra) # 80001f24 <_Z11printStringPKc>
        printInteger(i);
    800014c0:	00048513          	mv	a0,s1
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	ad0080e7          	jalr	-1328(ra) # 80001f94 <_Z12printIntegerm>
        printString("\n");
    800014cc:	00004517          	auipc	a0,0x4
    800014d0:	b7450513          	addi	a0,a0,-1164 # 80005040 <CONSOLE_STATUS+0x30>
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	a50080e7          	jalr	-1456(ra) # 80001f24 <_Z11printStringPKc>
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
    80001528:	b3c50513          	addi	a0,a0,-1220 # 80005060 <CONSOLE_STATUS+0x50>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	9f8080e7          	jalr	-1544(ra) # 80001f24 <_Z11printStringPKc>
        printInteger(i);
    80001534:	00048513          	mv	a0,s1
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	a5c080e7          	jalr	-1444(ra) # 80001f94 <_Z12printIntegerm>
        printString("\n");
    80001540:	00004517          	auipc	a0,0x4
    80001544:	b0050513          	addi	a0,a0,-1280 # 80005040 <CONSOLE_STATUS+0x30>
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	9dc080e7          	jalr	-1572(ra) # 80001f24 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001550:	0014849b          	addiw	s1,s1,1
    80001554:	0ff4f493          	andi	s1,s1,255
    80001558:	00c00793          	li	a5,12
    8000155c:	fc97f4e3          	bgeu	a5,s1,80001524 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001560:	00004517          	auipc	a0,0x4
    80001564:	b0850513          	addi	a0,a0,-1272 # 80005068 <CONSOLE_STATUS+0x58>
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	9bc080e7          	jalr	-1604(ra) # 80001f24 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001570:	00500313          	li	t1,5
    TCB::yield();
    80001574:	00000097          	auipc	ra,0x0
    80001578:	254080e7          	jalr	596(ra) # 800017c8 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000157c:	01000513          	li	a0,16
    80001580:	00000097          	auipc	ra,0x0
    80001584:	ca4080e7          	jalr	-860(ra) # 80001224 <_ZL9fibonaccim>
    80001588:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	aec50513          	addi	a0,a0,-1300 # 80005078 <CONSOLE_STATUS+0x68>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	990080e7          	jalr	-1648(ra) # 80001f24 <_Z11printStringPKc>
    printInteger(result);
    8000159c:	00090513          	mv	a0,s2
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	9f4080e7          	jalr	-1548(ra) # 80001f94 <_Z12printIntegerm>
    printString("\n");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	a9850513          	addi	a0,a0,-1384 # 80005040 <CONSOLE_STATUS+0x30>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	974080e7          	jalr	-1676(ra) # 80001f24 <_Z11printStringPKc>
    800015b8:	0380006f          	j	800015f0 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800015bc:	00004517          	auipc	a0,0x4
    800015c0:	aa450513          	addi	a0,a0,-1372 # 80005060 <CONSOLE_STATUS+0x50>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	960080e7          	jalr	-1696(ra) # 80001f24 <_Z11printStringPKc>
        printInteger(i);
    800015cc:	00048513          	mv	a0,s1
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	9c4080e7          	jalr	-1596(ra) # 80001f94 <_Z12printIntegerm>
        printString("\n");
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	a6850513          	addi	a0,a0,-1432 # 80005040 <CONSOLE_STATUS+0x30>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	944080e7          	jalr	-1724(ra) # 80001f24 <_Z11printStringPKc>
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
#include "../h/MemoryAllocator.hpp"
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
    80001630:	210080e7          	jalr	528(ra) # 8000183c <_ZN3TCB15createCoroutineEPFvvE>
    80001634:	faa43c23          	sd	a0,-72(s0)
public:
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);

    static void initMemory(){
        freeMemHead=(FreeBlock*) HEAP_START_ADDR;
    80001638:	00004797          	auipc	a5,0x4
    8000163c:	1887b783          	ld	a5,392(a5) # 800057c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001640:	0007b783          	ld	a5,0(a5)
    80001644:	00004717          	auipc	a4,0x4
    80001648:	1a473703          	ld	a4,420(a4) # 800057e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000164c:	00f73023          	sd	a5,0(a4)
        freeMemHead->next=nullptr;
    80001650:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    80001654:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    80001658:	00004717          	auipc	a4,0x4
    8000165c:	1a873703          	ld	a4,424(a4) # 80005800 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001660:	00073703          	ld	a4,0(a4)
    80001664:	40f70733          	sub	a4,a4,a5
    80001668:	fe870713          	addi	a4,a4,-24
    8000166c:	00e7b023          	sd	a4,0(a5)

    MemoryAllocator::initMemory();


    TCB::running = threads[0];
    80001670:	fb843703          	ld	a4,-72(s0)
    80001674:	00004797          	auipc	a5,0x4
    80001678:	1847b783          	ld	a5,388(a5) # 800057f8 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000167c:	00e7b023          	sd	a4,0(a5)
    threads[1] = TCB::createCoroutine(workerBodyA);
    80001680:	00004517          	auipc	a0,0x4
    80001684:	16053503          	ld	a0,352(a0) # 800057e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	1b4080e7          	jalr	436(ra) # 8000183c <_ZN3TCB15createCoroutineEPFvvE>
    80001690:	fca43023          	sd	a0,-64(s0)
    printString("Coroutine A created! \n");
    80001694:	00004517          	auipc	a0,0x4
    80001698:	9f450513          	addi	a0,a0,-1548 # 80005088 <CONSOLE_STATUS+0x78>
    8000169c:	00001097          	auipc	ra,0x1
    800016a0:	888080e7          	jalr	-1912(ra) # 80001f24 <_Z11printStringPKc>
    threads[2] = TCB::createCoroutine(workerBodyB);
    800016a4:	00004517          	auipc	a0,0x4
    800016a8:	12c53503          	ld	a0,300(a0) # 800057d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	190080e7          	jalr	400(ra) # 8000183c <_ZN3TCB15createCoroutineEPFvvE>
    800016b4:	fca43423          	sd	a0,-56(s0)
    printString("Coroutine B created! \n");
    800016b8:	00004517          	auipc	a0,0x4
    800016bc:	9e850513          	addi	a0,a0,-1560 # 800050a0 <CONSOLE_STATUS+0x90>
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	864080e7          	jalr	-1948(ra) # 80001f24 <_Z11printStringPKc>
    threads[3] = TCB::createCoroutine(workerBodyC);
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	14053503          	ld	a0,320(a0) # 80005808 <_GLOBAL_OFFSET_TABLE_+0x50>
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	16c080e7          	jalr	364(ra) # 8000183c <_ZN3TCB15createCoroutineEPFvvE>
    800016d8:	fca43823          	sd	a0,-48(s0)
    printString("Coroutine C created! \n");
    800016dc:	00004517          	auipc	a0,0x4
    800016e0:	9dc50513          	addi	a0,a0,-1572 # 800050b8 <CONSOLE_STATUS+0xa8>
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	840080e7          	jalr	-1984(ra) # 80001f24 <_Z11printStringPKc>
    threads[4] = TCB::createCoroutine(workerBodyD);
    800016ec:	00004517          	auipc	a0,0x4
    800016f0:	12453503          	ld	a0,292(a0) # 80005810 <_GLOBAL_OFFSET_TABLE_+0x58>
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	148080e7          	jalr	328(ra) # 8000183c <_ZN3TCB15createCoroutineEPFvvE>
    800016fc:	fca43c23          	sd	a0,-40(s0)
    printString("Coroutine D created! \n");
    80001700:	00004517          	auipc	a0,0x4
    80001704:	9d050513          	addi	a0,a0,-1584 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001708:	00001097          	auipc	ra,0x1
    8000170c:	81c080e7          	jalr	-2020(ra) # 80001f24 <_Z11printStringPKc>

    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001710:	00004797          	auipc	a5,0x4
    80001714:	0b87b783          	ld	a5,184(a5) # 800057c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001718:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000171c:	00200793          	li	a5,2
    80001720:	1007a073          	csrs	sstatus,a5
}
    80001724:	00c0006f          	j	80001730 <main+0x120>
    //posto u korutinama pozivaju yield, da se ne bi vratilo na main korutinu, cepamo uposleno cekanje
    while(!(threads[1]->isFinished() &&
            threads[2]->isFinished() &&
            threads[3]->isFinished() &&
            threads[4]->isFinished())){
        TCB::yield();
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	0a0080e7          	jalr	160(ra) # 800017c8 <_ZN3TCB5yieldEv>
    while(!(threads[1]->isFinished() &&
    80001730:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB(){delete[] stack;}

    bool isFinished(){return finished;}
    80001734:	0287c783          	lbu	a5,40(a5)
    80001738:	fe0788e3          	beqz	a5,80001728 <main+0x118>
            threads[2]->isFinished() &&
    8000173c:	fc843783          	ld	a5,-56(s0)
    80001740:	0287c783          	lbu	a5,40(a5)
    while(!(threads[1]->isFinished() &&
    80001744:	fe0782e3          	beqz	a5,80001728 <main+0x118>
            threads[3]->isFinished() &&
    80001748:	fd043783          	ld	a5,-48(s0)
    8000174c:	0287c783          	lbu	a5,40(a5)
            threads[2]->isFinished() &&
    80001750:	fc078ce3          	beqz	a5,80001728 <main+0x118>
            threads[4]->isFinished())){
    80001754:	fd843783          	ld	a5,-40(s0)
    80001758:	0287c783          	lbu	a5,40(a5)
    while(!(threads[1]->isFinished() &&
    8000175c:	fc0786e3          	beqz	a5,80001728 <main+0x118>
    80001760:	fb840493          	addi	s1,s0,-72
    80001764:	0140006f          	j	80001778 <main+0x168>
    }
    for(auto &coroutine : threads){
        delete coroutine;
    80001768:	00090513          	mv	a0,s2
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	250080e7          	jalr	592(ra) # 800019bc <_ZdlPv>
    for(auto &coroutine : threads){
    80001774:	00848493          	addi	s1,s1,8
    80001778:	fe040793          	addi	a5,s0,-32
    8000177c:	02f48063          	beq	s1,a5,8000179c <main+0x18c>
        delete coroutine;
    80001780:	0004b903          	ld	s2,0(s1)
    80001784:	fe0908e3          	beqz	s2,80001774 <main+0x164>
    ~TCB(){delete[] stack;}
    80001788:	00893503          	ld	a0,8(s2)
    8000178c:	fc050ee3          	beqz	a0,80001768 <main+0x158>
    80001790:	00000097          	auipc	ra,0x0
    80001794:	254080e7          	jalr	596(ra) # 800019e4 <_ZdaPv>
    80001798:	fd1ff06f          	j	80001768 <main+0x158>
    }
    printString("gotov!\n");
    8000179c:	00004517          	auipc	a0,0x4
    800017a0:	94c50513          	addi	a0,a0,-1716 # 800050e8 <CONSOLE_STATUS+0xd8>
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	780080e7          	jalr	1920(ra) # 80001f24 <_Z11printStringPKc>
    return 0;
    800017ac:	00000513          	li	a0,0
    800017b0:	04813083          	ld	ra,72(sp)
    800017b4:	04013403          	ld	s0,64(sp)
    800017b8:	03813483          	ld	s1,56(sp)
    800017bc:	03013903          	ld	s2,48(sp)
    800017c0:	05010113          	addi	sp,sp,80
    800017c4:	00008067          	ret

00000000800017c8 <_ZN3TCB5yieldEv>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

void TCB::yield()
{
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00813423          	sd	s0,8(sp)
    800017d0:	01010413          	addi	s0,sp,16
    //sada hocemo da se svi prekidi izvrsavaju preko funkcije koju smo ispisali
    //hocemo da sinhrono udjemo u tu prekidnu funkciju - ulazak u prekidnu rutinu zbog zvrsavajna neke instrukcije - exception
    __asm__ volatile("ecall");
    800017d4:	00000073          	ecall
}
    800017d8:	00813403          	ld	s0,8(sp)
    800017dc:	01010113          	addi	sp,sp,16
    800017e0:	00008067          	ret

00000000800017e4 <_ZN3TCB13threadWrapperEv>:
        // na threadWrapper funkciju, odakle ce da pokrene njen tok
    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper(){
    800017e4:	fe010113          	addi	sp,sp,-32
    800017e8:	00113c23          	sd	ra,24(sp)
    800017ec:	00813823          	sd	s0,16(sp)
    800017f0:	00913423          	sd	s1,8(sp)
    800017f4:	02010413          	addi	s0,sp,32
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	214080e7          	jalr	532(ra) # 80001a0c <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001800:	00004497          	auipc	s1,0x4
    80001804:	06048493          	addi	s1,s1,96 # 80005860 <_ZN3TCB7runningE>
    80001808:	0004b783          	ld	a5,0(s1)
    8000180c:	0007b783          	ld	a5,0(a5)
    80001810:	000780e7          	jalr	a5
    running->setFinished(true);
    80001814:	0004b783          	ld	a5,0(s1)
    void setFinished(bool flag){ TCB::finished = flag;}
    80001818:	00100713          	li	a4,1
    8000181c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001820:	00000097          	auipc	ra,0x0
    80001824:	fa8080e7          	jalr	-88(ra) # 800017c8 <_ZN3TCB5yieldEv>
}
    80001828:	01813083          	ld	ra,24(sp)
    8000182c:	01013403          	ld	s0,16(sp)
    80001830:	00813483          	ld	s1,8(sp)
    80001834:	02010113          	addi	sp,sp,32
    80001838:	00008067          	ret

000000008000183c <_ZN3TCB15createCoroutineEPFvvE>:
{
    8000183c:	fe010113          	addi	sp,sp,-32
    80001840:	00113c23          	sd	ra,24(sp)
    80001844:	00813823          	sd	s0,16(sp)
    80001848:	00913423          	sd	s1,8(sp)
    8000184c:	01213023          	sd	s2,0(sp)
    80001850:	02010413          	addi	s0,sp,32
    80001854:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001858:	03000513          	li	a0,48
    8000185c:	00000097          	auipc	ra,0x0
    80001860:	110080e7          	jalr	272(ra) # 8000196c <_Znwm>
    80001864:	00050493          	mv	s1,a0
                     stack(body!=nullptr? new uint64[STACK_SIZE] : nullptr),timeSlice(timeslice),
                     context({
                         (uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                    }),
                     finished(false)
    80001868:	01253023          	sd	s2,0(a0)
                     stack(body!=nullptr? new uint64[STACK_SIZE] : nullptr),timeSlice(timeslice),
    8000186c:	00090a63          	beqz	s2,80001880 <_ZN3TCB15createCoroutineEPFvvE+0x44>
    80001870:	00002537          	lui	a0,0x2
    80001874:	00000097          	auipc	ra,0x0
    80001878:	120080e7          	jalr	288(ra) # 80001994 <_Znam>
    8000187c:	0080006f          	j	80001884 <_ZN3TCB15createCoroutineEPFvvE+0x48>
    80001880:	00000513          	li	a0,0
                     finished(false)
    80001884:	00a4b423          	sd	a0,8(s1)
    80001888:	00200793          	li	a5,2
    8000188c:	00f4b823          	sd	a5,16(s1)
    80001890:	00000797          	auipc	a5,0x0
    80001894:	f5478793          	addi	a5,a5,-172 # 800017e4 <_ZN3TCB13threadWrapperEv>
    80001898:	00f4bc23          	sd	a5,24(s1)
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    8000189c:	02090463          	beqz	s2,800018c4 <_ZN3TCB15createCoroutineEPFvvE+0x88>
    800018a0:	000027b7          	lui	a5,0x2
    800018a4:	00f50533          	add	a0,a0,a5
                     finished(false)
    800018a8:	02a4b023          	sd	a0,32(s1)
    800018ac:	02048423          	sb	zero,40(s1)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    800018b0:	02090c63          	beqz	s2,800018e8 <_ZN3TCB15createCoroutineEPFvvE+0xac>
    800018b4:	00048513          	mv	a0,s1
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	350080e7          	jalr	848(ra) # 80001c08 <_ZN9Scheduler3putEP3TCB>
    800018c0:	0280006f          	j	800018e8 <_ZN3TCB15createCoroutineEPFvvE+0xac>
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    800018c4:	00000513          	li	a0,0
    800018c8:	fe1ff06f          	j	800018a8 <_ZN3TCB15createCoroutineEPFvvE+0x6c>
    800018cc:	00050913          	mv	s2,a0
    800018d0:	00048513          	mv	a0,s1
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	0e8080e7          	jalr	232(ra) # 800019bc <_ZdlPv>
    800018dc:	00090513          	mv	a0,s2
    800018e0:	00005097          	auipc	ra,0x5
    800018e4:	078080e7          	jalr	120(ra) # 80006958 <_Unwind_Resume>
}
    800018e8:	00048513          	mv	a0,s1
    800018ec:	01813083          	ld	ra,24(sp)
    800018f0:	01013403          	ld	s0,16(sp)
    800018f4:	00813483          	ld	s1,8(sp)
    800018f8:	00013903          	ld	s2,0(sp)
    800018fc:	02010113          	addi	sp,sp,32
    80001900:	00008067          	ret

0000000080001904 <_ZN3TCB8dispatchEv>:
{
    80001904:	fe010113          	addi	sp,sp,-32
    80001908:	00113c23          	sd	ra,24(sp)
    8000190c:	00813823          	sd	s0,16(sp)
    80001910:	00913423          	sd	s1,8(sp)
    80001914:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001918:	00004497          	auipc	s1,0x4
    8000191c:	f484b483          	ld	s1,-184(s1) # 80005860 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001920:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) Scheduler::put(old);
    80001924:	02078c63          	beqz	a5,8000195c <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	278080e7          	jalr	632(ra) # 80001ba0 <_ZN9Scheduler3getEv>
    80001930:	00004797          	auipc	a5,0x4
    80001934:	f2a7b823          	sd	a0,-208(a5) # 80005860 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001938:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    8000193c:	01848513          	addi	a0,s1,24
    80001940:	00000097          	auipc	ra,0x0
    80001944:	8d0080e7          	jalr	-1840(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001948:	01813083          	ld	ra,24(sp)
    8000194c:	01013403          	ld	s0,16(sp)
    80001950:	00813483          	ld	s1,8(sp)
    80001954:	02010113          	addi	sp,sp,32
    80001958:	00008067          	ret
    if(!old->isFinished()) Scheduler::put(old);
    8000195c:	00048513          	mv	a0,s1
    80001960:	00000097          	auipc	ra,0x0
    80001964:	2a8080e7          	jalr	680(ra) # 80001c08 <_ZN9Scheduler3putEP3TCB>
    80001968:	fc1ff06f          	j	80001928 <_ZN3TCB8dispatchEv+0x24>

000000008000196c <_Znwm>:
#include "../lib/mem.h"

void *operator new(uint64 n){
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00113423          	sd	ra,8(sp)
    80001974:	00813023          	sd	s0,0(sp)
    80001978:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000197c:	00003097          	auipc	ra,0x3
    80001980:	85c080e7          	jalr	-1956(ra) # 800041d8 <__mem_alloc>
}
    80001984:	00813083          	ld	ra,8(sp)
    80001988:	00013403          	ld	s0,0(sp)
    8000198c:	01010113          	addi	sp,sp,16
    80001990:	00008067          	ret

0000000080001994 <_Znam>:

void *operator new[](uint64 n){
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00113423          	sd	ra,8(sp)
    8000199c:	00813023          	sd	s0,0(sp)
    800019a0:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800019a4:	00003097          	auipc	ra,0x3
    800019a8:	834080e7          	jalr	-1996(ra) # 800041d8 <__mem_alloc>
}
    800019ac:	00813083          	ld	ra,8(sp)
    800019b0:	00013403          	ld	s0,0(sp)
    800019b4:	01010113          	addi	sp,sp,16
    800019b8:	00008067          	ret

00000000800019bc <_ZdlPv>:

void operator delete(void* p) noexcept
{
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	00813023          	sd	s0,0(sp)
    800019c8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	740080e7          	jalr	1856(ra) # 8000410c <__mem_free>
}
    800019d4:	00813083          	ld	ra,8(sp)
    800019d8:	00013403          	ld	s0,0(sp)
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <_ZdaPv>:

void operator delete[](void* p) noexcept
{
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00113423          	sd	ra,8(sp)
    800019ec:	00813023          	sd	s0,0(sp)
    800019f0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800019f4:	00002097          	auipc	ra,0x2
    800019f8:	718080e7          	jalr	1816(ra) # 8000410c <__mem_free>
    800019fc:	00813083          	ld	ra,8(sp)
    80001a00:	00013403          	ld	s0,0(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret

0000000080001a0c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80001a0c:	ff010113          	addi	sp,sp,-16
    80001a10:	00813423          	sd	s0,8(sp)
    80001a14:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    __asm__ volatile ("csrw sepc, ra");
    80001a18:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001a1c:	10200073          	sret
}
    80001a20:	00813403          	ld	s0,8(sp)
    80001a24:	01010113          	addi	sp,sp,16
    80001a28:	00008067          	ret

0000000080001a2c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001a2c:	f9010113          	addi	sp,sp,-112
    80001a30:	06113423          	sd	ra,104(sp)
    80001a34:	06813023          	sd	s0,96(sp)
    80001a38:	04913c23          	sd	s1,88(sp)
    80001a3c:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a40:	142027f3          	csrr	a5,scause
    80001a44:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001a48:	fb843483          	ld	s1,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    80001a4c:	ff848713          	addi	a4,s1,-8
    80001a50:	00100793          	li	a5,1
    80001a54:	02e7fc63          	bgeu	a5,a4,80001a8c <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::timeSliceCounter=0;
        TCB::dispatch();
        w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);
    }
    if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver prekid
    80001a58:	fff00793          	li	a5,-1
    80001a5c:	03f79793          	slli	a5,a5,0x3f
    80001a60:	00178793          	addi	a5,a5,1
    80001a64:	06f48a63          	beq	s1,a5,80001ad8 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause==0x8000000000000009UL){
    80001a68:	fff00793          	li	a5,-1
    80001a6c:	03f79793          	slli	a5,a5,0x3f
    80001a70:	00978793          	addi	a5,a5,9
    80001a74:	0ef48063          	beq	s1,a5,80001b54 <_ZN5Riscv20handleSupervisorTrapEv+0x128>
        //scause - sta se  desilo
        //sepc- gde se desilo
        // stval - dodatno opise cause

    }
    80001a78:	06813083          	ld	ra,104(sp)
    80001a7c:	06013403          	ld	s0,96(sp)
    80001a80:	05813483          	ld	s1,88(sp)
    80001a84:	07010113          	addi	sp,sp,112
    80001a88:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a8c:	141027f3          	csrr	a5,sepc
    80001a90:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001a94:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    80001a98:	00478793          	addi	a5,a5,4
    80001a9c:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001aa0:	100027f3          	csrr	a5,sstatus
    80001aa4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001aa8:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001aac:	faf43023          	sd	a5,-96(s0)
        TCB::timeSliceCounter=0;
    80001ab0:	00004797          	auipc	a5,0x4
    80001ab4:	d287b783          	ld	a5,-728(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ab8:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	e48080e7          	jalr	-440(ra) # 80001904 <_ZN3TCB8dispatchEv>
        w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    80001ac4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ac8:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80001acc:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ad0:	10079073          	csrw	sstatus,a5
}
    80001ad4:	f85ff06f          	j	80001a58 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
        TCB::timeSliceCounter++;
    80001ad8:	00004717          	auipc	a4,0x4
    80001adc:	d0073703          	ld	a4,-768(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ae0:	00073783          	ld	a5,0(a4)
    80001ae4:	00178793          	addi	a5,a5,1
    80001ae8:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80001aec:	00004717          	auipc	a4,0x4
    80001af0:	d0c73703          	ld	a4,-756(a4) # 800057f8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001af4:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const {return timeSlice;}
    80001af8:	01073703          	ld	a4,16(a4)
    80001afc:	00e7f863          	bgeu	a5,a4,80001b0c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001b00:	00200793          	li	a5,2
    80001b04:	1447b073          	csrc	sip,a5
}
    80001b08:	f71ff06f          	j	80001a78 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001b0c:	141027f3          	csrr	a5,sepc
    80001b10:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001b14:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80001b18:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001b1c:	100027f3          	csrr	a5,sstatus
    80001b20:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001b24:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001b28:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter=0;
    80001b2c:	00004797          	auipc	a5,0x4
    80001b30:	cac7b783          	ld	a5,-852(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b34:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	dcc080e7          	jalr	-564(ra) # 80001904 <_ZN3TCB8dispatchEv>
            w_sepc(sepc);
    80001b40:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b44:	14179073          	csrw	sepc,a5
            w_sstatus(sstatus);
    80001b48:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b4c:	10079073          	csrw	sstatus,a5
}
    80001b50:	fb1ff06f          	j	80001b00 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
        console_handler();
    80001b54:	00003097          	auipc	ra,0x3
    80001b58:	850080e7          	jalr	-1968(ra) # 800043a4 <console_handler>
    80001b5c:	f1dff06f          	j	80001a78 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>

0000000080001b60 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00813423          	sd	s0,8(sp)
    80001b68:	01010413          	addi	s0,sp,16
    80001b6c:	00100793          	li	a5,1
    80001b70:	00f50863          	beq	a0,a5,80001b80 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b74:	00813403          	ld	s0,8(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret
    80001b80:	000107b7          	lui	a5,0x10
    80001b84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b88:	fef596e3          	bne	a1,a5,80001b74 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001b8c:	00004797          	auipc	a5,0x4
    80001b90:	ce478793          	addi	a5,a5,-796 # 80005870 <_ZN9Scheduler19readyCoroutineQueueE>
    80001b94:	0007b023          	sd	zero,0(a5)
    80001b98:	0007b423          	sd	zero,8(a5)
    80001b9c:	fd9ff06f          	j	80001b74 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001ba0 <_ZN9Scheduler3getEv>:
{
    80001ba0:	fe010113          	addi	sp,sp,-32
    80001ba4:	00113c23          	sd	ra,24(sp)
    80001ba8:	00813823          	sd	s0,16(sp)
    80001bac:	00913423          	sd	s1,8(sp)
    80001bb0:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001bb4:	00004517          	auipc	a0,0x4
    80001bb8:	cbc53503          	ld	a0,-836(a0) # 80005870 <_ZN9Scheduler19readyCoroutineQueueE>
    80001bbc:	04050263          	beqz	a0,80001c00 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001bc0:	00853783          	ld	a5,8(a0)
    80001bc4:	00004717          	auipc	a4,0x4
    80001bc8:	caf73623          	sd	a5,-852(a4) # 80005870 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80001bcc:	02078463          	beqz	a5,80001bf4 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001bd0:	00053483          	ld	s1,0(a0)
        delete elem;
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	de8080e7          	jalr	-536(ra) # 800019bc <_ZdlPv>
}
    80001bdc:	00048513          	mv	a0,s1
    80001be0:	01813083          	ld	ra,24(sp)
    80001be4:	01013403          	ld	s0,16(sp)
    80001be8:	00813483          	ld	s1,8(sp)
    80001bec:	02010113          	addi	sp,sp,32
    80001bf0:	00008067          	ret
        if (!head) { tail = 0; }
    80001bf4:	00004797          	auipc	a5,0x4
    80001bf8:	c807b223          	sd	zero,-892(a5) # 80005878 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001bfc:	fd5ff06f          	j	80001bd0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001c00:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001c04:	fd9ff06f          	j	80001bdc <_ZN9Scheduler3getEv+0x3c>

0000000080001c08 <_ZN9Scheduler3putEP3TCB>:
{
    80001c08:	fe010113          	addi	sp,sp,-32
    80001c0c:	00113c23          	sd	ra,24(sp)
    80001c10:	00813823          	sd	s0,16(sp)
    80001c14:	00913423          	sd	s1,8(sp)
    80001c18:	02010413          	addi	s0,sp,32
    80001c1c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001c20:	01000513          	li	a0,16
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	d48080e7          	jalr	-696(ra) # 8000196c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001c2c:	00953023          	sd	s1,0(a0)
    80001c30:	00053423          	sd	zero,8(a0)
        if (tail)
    80001c34:	00004797          	auipc	a5,0x4
    80001c38:	c447b783          	ld	a5,-956(a5) # 80005878 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001c3c:	02078263          	beqz	a5,80001c60 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001c40:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001c44:	00004797          	auipc	a5,0x4
    80001c48:	c2a7ba23          	sd	a0,-972(a5) # 80005878 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001c4c:	01813083          	ld	ra,24(sp)
    80001c50:	01013403          	ld	s0,16(sp)
    80001c54:	00813483          	ld	s1,8(sp)
    80001c58:	02010113          	addi	sp,sp,32
    80001c5c:	00008067          	ret
            head = tail = elem;
    80001c60:	00004797          	auipc	a5,0x4
    80001c64:	c1078793          	addi	a5,a5,-1008 # 80005870 <_ZN9Scheduler19readyCoroutineQueueE>
    80001c68:	00a7b423          	sd	a0,8(a5)
    80001c6c:	00a7b023          	sd	a0,0(a5)
    80001c70:	fddff06f          	j	80001c4c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001c74 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001c74:	ff010113          	addi	sp,sp,-16
    80001c78:	00113423          	sd	ra,8(sp)
    80001c7c:	00813023          	sd	s0,0(sp)
    80001c80:	01010413          	addi	s0,sp,16
    80001c84:	000105b7          	lui	a1,0x10
    80001c88:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001c8c:	00100513          	li	a0,1
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	ed0080e7          	jalr	-304(ra) # 80001b60 <_Z41__static_initialization_and_destruction_0ii>
    80001c98:	00813083          	ld	ra,8(sp)
    80001c9c:	00013403          	ld	s0,0(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN15MemoryAllocator9mem_allocEm>:

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeBlock* MemoryAllocator::freeMemHead;
void *MemoryAllocator::mem_alloc(size_t size)
{
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    if(size <=0 || !freeMemHead) return nullptr;
    80001cb4:	0c050a63          	beqz	a0,80001d88 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80001cb8:	00050793          	mv	a5,a0
    80001cbc:	00004517          	auipc	a0,0x4
    80001cc0:	bc453503          	ld	a0,-1084(a0) # 80005880 <_ZN15MemoryAllocator11freeMemHeadE>
    80001cc4:	06050c63          	beqz	a0,80001d3c <_ZN15MemoryAllocator9mem_allocEm+0x94>
    MemoryAllocator::FreeBlock* curr = freeMemHead;
    // zaokruzi na ceo blok
    if(size%MEM_BLOCK_SIZE){
    80001cc8:	03f7f713          	andi	a4,a5,63
    80001ccc:	00070a63          	beqz	a4,80001ce0 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        size=((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    80001cd0:	03f78793          	addi	a5,a5,63
    80001cd4:	fc07f793          	andi	a5,a5,-64
    80001cd8:	0080006f          	j	80001ce0 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    }
    while(curr && curr->size<size) curr=curr->next;
    80001cdc:	01053503          	ld	a0,16(a0)
    80001ce0:	00050663          	beqz	a0,80001cec <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001ce4:	00053703          	ld	a4,0(a0)
    80001ce8:	fef76ae3          	bltu	a4,a5,80001cdc <_ZN15MemoryAllocator9mem_allocEm+0x34>
    if(!curr) return nullptr;
    80001cec:	04050863          	beqz	a0,80001d3c <_ZN15MemoryAllocator9mem_allocEm+0x94>
    if(curr->size> size+sizeof(FreeBlock)){
    80001cf0:	00053683          	ld	a3,0(a0)
    80001cf4:	01878713          	addi	a4,a5,24
    80001cf8:	04d77e63          	bgeu	a4,a3,80001d54 <_ZN15MemoryAllocator9mem_allocEm+0xac>
        //ostaje nam blok       <-curr->size odavde pokazuje
        //| datablock metadata |     allocated     | new datablock metadata | remaining size |

        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    80001cfc:	00e50733          	add	a4,a0,a4

        newBlock->size=curr->size-size-sizeof(FreeBlock);
    80001d00:	40f686b3          	sub	a3,a3,a5
    80001d04:	fe868693          	addi	a3,a3,-24
    80001d08:	00d73023          	sd	a3,0(a4)
        newBlock->prev=curr->prev;
    80001d0c:	00853683          	ld	a3,8(a0)
    80001d10:	00d73423          	sd	a3,8(a4)
        //size je velicina koja je trazena da se zauzme, zaokruzena na ceo broj blokova, kada budemo oslobadjali sa adrese curr, oslobodicemo tacno koliko treba
        curr->size=size;
    80001d14:	00f53023          	sd	a5,0(a0)
        if(curr->prev){
    80001d18:	02068863          	beqz	a3,80001d48 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->prev->next=newBlock;
    80001d1c:	00e6b823          	sd	a4,16(a3)
        }
        else freeMemHead = newBlock;
        newBlock->next=curr->next;
    80001d20:	01053783          	ld	a5,16(a0)
    80001d24:	00f73823          	sd	a5,16(a4)
        if(curr->next) curr->next->prev=newBlock;
    80001d28:	00078463          	beqz	a5,80001d30 <_ZN15MemoryAllocator9mem_allocEm+0x88>
    80001d2c:	00e7b423          	sd	a4,8(a5)
        //ne menjamo curr->size zato sto ceo curr blok alociramo, pa kada ga budemo oslobadjali, oslobodicemo ceo
        if(curr->prev) curr->prev->next=curr->next;
        else freeMemHead=curr->next;
        if(curr->next) curr->next->prev=curr->prev;
    }
    curr->next=nullptr;
    80001d30:	00053823          	sd	zero,16(a0)
    curr->prev=nullptr;
    80001d34:	00053423          	sd	zero,8(a0)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    80001d38:	01850513          	addi	a0,a0,24
}
    80001d3c:	00813403          	ld	s0,8(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret
        else freeMemHead = newBlock;
    80001d48:	00004797          	auipc	a5,0x4
    80001d4c:	b2e7bc23          	sd	a4,-1224(a5) # 80005880 <_ZN15MemoryAllocator11freeMemHeadE>
    80001d50:	fd1ff06f          	j	80001d20 <_ZN15MemoryAllocator9mem_allocEm+0x78>
        if(curr->prev) curr->prev->next=curr->next;
    80001d54:	00853783          	ld	a5,8(a0)
    80001d58:	02078063          	beqz	a5,80001d78 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
    80001d5c:	01053703          	ld	a4,16(a0)
    80001d60:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80001d64:	01053783          	ld	a5,16(a0)
    80001d68:	fc0784e3          	beqz	a5,80001d30 <_ZN15MemoryAllocator9mem_allocEm+0x88>
    80001d6c:	00853703          	ld	a4,8(a0)
    80001d70:	00e7b423          	sd	a4,8(a5)
    80001d74:	fbdff06f          	j	80001d30 <_ZN15MemoryAllocator9mem_allocEm+0x88>
        else freeMemHead=curr->next;
    80001d78:	01053783          	ld	a5,16(a0)
    80001d7c:	00004717          	auipc	a4,0x4
    80001d80:	b0f73223          	sd	a5,-1276(a4) # 80005880 <_ZN15MemoryAllocator11freeMemHeadE>
    80001d84:	fe1ff06f          	j	80001d64 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    if(size <=0 || !freeMemHead) return nullptr;
    80001d88:	00000513          	li	a0,0
    80001d8c:	fb1ff06f          	j	80001d3c <_ZN15MemoryAllocator9mem_allocEm+0x94>

0000000080001d90 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void *addr)
{
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00813423          	sd	s0,8(sp)
    80001d98:	01010413          	addi	s0,sp,16
    if(!addr) return -1;
    80001d9c:	16050863          	beqz	a0,80001f0c <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80001da0:	fe850693          	addi	a3,a0,-24
    80001da4:	00004797          	auipc	a5,0x4
    80001da8:	a1c7b783          	ld	a5,-1508(a5) # 800057c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001dac:	0007b783          	ld	a5,0(a5)
    80001db0:	16f6e263          	bltu	a3,a5,80001f14 <_ZN15MemoryAllocator8mem_freeEPv+0x184>
    80001db4:	00004797          	auipc	a5,0x4
    80001db8:	a4c7b783          	ld	a5,-1460(a5) # 80005800 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001dbc:	0007b783          	ld	a5,0(a5)
    80001dc0:	14a7ee63          	bltu	a5,a0,80001f1c <_ZN15MemoryAllocator8mem_freeEPv+0x18c>

    FreeBlock* blk = (FreeBlock*) ((char*)addr-sizeof(FreeBlock));
    blk->next=nullptr;
    80001dc4:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    80001dc8:	fe053823          	sd	zero,-16(a0)
    FreeBlock* curr = nullptr;
    if(!freeMemHead){
    80001dcc:	00004617          	auipc	a2,0x4
    80001dd0:	ab463603          	ld	a2,-1356(a2) # 80005880 <_ZN15MemoryAllocator11freeMemHeadE>
    80001dd4:	04060c63          	beqz	a2,80001e2c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
        //prvi slobodni
        freeMemHead=blk;
        return 0;
    }
    if((char*) blk < (char*) freeMemHead){
    80001dd8:	08c6e463          	bltu	a3,a2,80001e60 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
        //blk je pre heada, obradjujemo na kraju
        curr=nullptr;
    }
    else
    {
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    80001ddc:	00060793          	mv	a5,a2
    80001de0:	00078713          	mv	a4,a5
    80001de4:	0107b783          	ld	a5,16(a5)
    80001de8:	00078463          	beqz	a5,80001df0 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    80001dec:	fed7eae3          	bltu	a5,a3,80001de0 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
        // curr|?|blk|?| curr->next
    }
    //gledamo da li mozemo spojiti sa sledecim
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    80001df0:	06070a63          	beqz	a4,80001e64 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80001df4:	00073803          	ld	a6,0(a4)
    80001df8:	01880593          	addi	a1,a6,24
    80001dfc:	00b705b3          	add	a1,a4,a1
    80001e00:	06b69263          	bne	a3,a1,80001e64 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
        // |curr|blk|
        curr->size+=sizeof(FreeBlock)+blk->size;
    80001e04:	fe853683          	ld	a3,-24(a0)
    80001e08:	00d806b3          	add	a3,a6,a3
    80001e0c:	01868693          	addi	a3,a3,24
    80001e10:	00d73023          	sd	a3,0(a4)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80001e14:	00078863          	beqz	a5,80001e24 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80001e18:	01868613          	addi	a2,a3,24
    80001e1c:	00c70633          	add	a2,a4,a2
    80001e20:	00c78e63          	beq	a5,a2,80001e3c <_ZN15MemoryAllocator8mem_freeEPv+0xac>
            //|curr |curr->next|
            curr->size+=sizeof(FreeBlock)+curr->next->size;
            curr->next=curr->next->next;
            if(curr->next) curr->next->prev=curr;
        }
        return 0;
    80001e24:	00000513          	li	a0,0
    80001e28:	0780006f          	j	80001ea0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
        freeMemHead=blk;
    80001e2c:	00004797          	auipc	a5,0x4
    80001e30:	a4d7ba23          	sd	a3,-1452(a5) # 80005880 <_ZN15MemoryAllocator11freeMemHeadE>
        return 0;
    80001e34:	00000513          	li	a0,0
    80001e38:	0680006f          	j	80001ea0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    80001e3c:	0007b603          	ld	a2,0(a5)
    80001e40:	00c686b3          	add	a3,a3,a2
    80001e44:	01868693          	addi	a3,a3,24
    80001e48:	00d73023          	sd	a3,0(a4)
            curr->next=curr->next->next;
    80001e4c:	0107b783          	ld	a5,16(a5)
    80001e50:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    80001e54:	fc0788e3          	beqz	a5,80001e24 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80001e58:	00e7b423          	sd	a4,8(a5)
    80001e5c:	fc9ff06f          	j	80001e24 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
        curr=nullptr;
    80001e60:	00000713          	li	a4,0
    }

    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    80001e64:	00070463          	beqz	a4,80001e6c <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    80001e68:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    80001e6c:	00060863          	beqz	a2,80001e7c <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    80001e70:	fe853783          	ld	a5,-24(a0)
    80001e74:	00f505b3          	add	a1,a0,a5
    80001e78:	02c58a63          	beq	a1,a2,80001eac <_ZN15MemoryAllocator8mem_freeEPv+0x11c>
        if(nextBlock->prev) nextBlock->prev->next=blk;
        else freeMemHead=blk;
        return 0;
    }
    //nema potrebe za spajanjem, samo dodajemo blok;
    blk->prev=curr;
    80001e7c:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    80001e80:	06070863          	beqz	a4,80001ef0 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    80001e84:	01073783          	ld	a5,16(a4)
    80001e88:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    80001e8c:	00078463          	beqz	a5,80001e94 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    80001e90:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    80001e94:	06070463          	beqz	a4,80001efc <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    80001e98:	00d73823          	sd	a3,16(a4)
    else freeMemHead=blk;
    return 0;
    80001e9c:	00000513          	li	a0,0
}
    80001ea0:	00813403          	ld	s0,8(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    80001eac:	00063703          	ld	a4,0(a2)
    80001eb0:	00e787b3          	add	a5,a5,a4
    80001eb4:	01878793          	addi	a5,a5,24
    80001eb8:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    80001ebc:	01063783          	ld	a5,16(a2)
    80001ec0:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    80001ec4:	00078463          	beqz	a5,80001ecc <_ZN15MemoryAllocator8mem_freeEPv+0x13c>
    80001ec8:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    80001ecc:	00863783          	ld	a5,8(a2)
    80001ed0:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    80001ed4:	00078863          	beqz	a5,80001ee4 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    80001ed8:	00d7b823          	sd	a3,16(a5)
        return 0;
    80001edc:	00000513          	li	a0,0
    80001ee0:	fc1ff06f          	j	80001ea0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
        else freeMemHead=blk;
    80001ee4:	00004797          	auipc	a5,0x4
    80001ee8:	98d7be23          	sd	a3,-1636(a5) # 80005880 <_ZN15MemoryAllocator11freeMemHeadE>
    80001eec:	ff1ff06f          	j	80001edc <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    blk->next=curr?curr->next:freeMemHead;
    80001ef0:	00004797          	auipc	a5,0x4
    80001ef4:	9907b783          	ld	a5,-1648(a5) # 80005880 <_ZN15MemoryAllocator11freeMemHeadE>
    80001ef8:	f91ff06f          	j	80001e88 <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
    else freeMemHead=blk;
    80001efc:	00004797          	auipc	a5,0x4
    80001f00:	98d7b223          	sd	a3,-1660(a5) # 80005880 <_ZN15MemoryAllocator11freeMemHeadE>
    return 0;
    80001f04:	00000513          	li	a0,0
    80001f08:	f99ff06f          	j	80001ea0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    if(!addr) return -1;
    80001f0c:	fff00513          	li	a0,-1
    80001f10:	f91ff06f          	j	80001ea0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80001f14:	ffe00513          	li	a0,-2
    80001f18:	f89ff06f          	j	80001ea0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    80001f1c:	ffe00513          	li	a0,-2
    80001f20:	f81ff06f          	j	80001ea0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>

0000000080001f24 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"
void printString(char const *string)
{
    80001f24:	fd010113          	addi	sp,sp,-48
    80001f28:	02113423          	sd	ra,40(sp)
    80001f2c:	02813023          	sd	s0,32(sp)
    80001f30:	00913c23          	sd	s1,24(sp)
    80001f34:	01213823          	sd	s2,16(sp)
    80001f38:	03010413          	addi	s0,sp,48
    80001f3c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f40:	100027f3          	csrr	a5,sstatus
    80001f44:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001f48:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001f4c:	00200793          	li	a5,2
    80001f50:	1007b073          	csrc	sstatus,a5
    //nije bas elegantno zabraniti prekide ovako, jer ako su dugi ispisi moramo cekati, ali eto
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0')
    80001f54:	0004c503          	lbu	a0,0(s1)
    80001f58:	00050a63          	beqz	a0,80001f6c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001f5c:	00002097          	auipc	ra,0x2
    80001f60:	3d4080e7          	jalr	980(ra) # 80004330 <__putc>
        string++;
    80001f64:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001f68:	fedff06f          	j	80001f54 <_Z11printStringPKc+0x30>
    }
    //moramo proveriti da li su ranije prekidi bili dozvoljeni, ako nisu ne zelimo sad da ih dozvolimo
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    80001f6c:	0009091b          	sext.w	s2,s2
    80001f70:	00297913          	andi	s2,s2,2
    80001f74:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f78:	10092073          	csrs	sstatus,s2
}
    80001f7c:	02813083          	ld	ra,40(sp)
    80001f80:	02013403          	ld	s0,32(sp)
    80001f84:	01813483          	ld	s1,24(sp)
    80001f88:	01013903          	ld	s2,16(sp)
    80001f8c:	03010113          	addi	sp,sp,48
    80001f90:	00008067          	ret

0000000080001f94 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001f94:	fc010113          	addi	sp,sp,-64
    80001f98:	02113c23          	sd	ra,56(sp)
    80001f9c:	02813823          	sd	s0,48(sp)
    80001fa0:	02913423          	sd	s1,40(sp)
    80001fa4:	03213023          	sd	s2,32(sp)
    80001fa8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001fac:	100027f3          	csrr	a5,sstatus
    80001fb0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001fb4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001fb8:	00200793          	li	a5,2
    80001fbc:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001fc0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001fc4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001fc8:	00a00613          	li	a2,10
    80001fcc:	02c5773b          	remuw	a4,a0,a2
    80001fd0:	02071693          	slli	a3,a4,0x20
    80001fd4:	0206d693          	srli	a3,a3,0x20
    80001fd8:	00003717          	auipc	a4,0x3
    80001fdc:	11870713          	addi	a4,a4,280 # 800050f0 <_ZZ12printIntegermE6digits>
    80001fe0:	00d70733          	add	a4,a4,a3
    80001fe4:	00074703          	lbu	a4,0(a4)
    80001fe8:	fe040693          	addi	a3,s0,-32
    80001fec:	009687b3          	add	a5,a3,s1
    80001ff0:	0014849b          	addiw	s1,s1,1
    80001ff4:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001ff8:	0005071b          	sext.w	a4,a0
    80001ffc:	02c5553b          	divuw	a0,a0,a2
    80002000:	00900793          	li	a5,9
    80002004:	fce7e2e3          	bltu	a5,a4,80001fc8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80002008:	fff4849b          	addiw	s1,s1,-1
    8000200c:	0004ce63          	bltz	s1,80002028 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    80002010:	fe040793          	addi	a5,s0,-32
    80002014:	009787b3          	add	a5,a5,s1
    80002018:	ff07c503          	lbu	a0,-16(a5)
    8000201c:	00002097          	auipc	ra,0x2
    80002020:	314080e7          	jalr	788(ra) # 80004330 <__putc>
    80002024:	fe5ff06f          	j	80002008 <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    80002028:	0009091b          	sext.w	s2,s2
    8000202c:	00297913          	andi	s2,s2,2
    80002030:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002034:	10092073          	csrs	sstatus,s2
    80002038:	03813083          	ld	ra,56(sp)
    8000203c:	03013403          	ld	s0,48(sp)
    80002040:	02813483          	ld	s1,40(sp)
    80002044:	02013903          	ld	s2,32(sp)
    80002048:	04010113          	addi	sp,sp,64
    8000204c:	00008067          	ret

0000000080002050 <start>:
    80002050:	ff010113          	addi	sp,sp,-16
    80002054:	00813423          	sd	s0,8(sp)
    80002058:	01010413          	addi	s0,sp,16
    8000205c:	300027f3          	csrr	a5,mstatus
    80002060:	ffffe737          	lui	a4,0xffffe
    80002064:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7cff>
    80002068:	00e7f7b3          	and	a5,a5,a4
    8000206c:	00001737          	lui	a4,0x1
    80002070:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002074:	00e7e7b3          	or	a5,a5,a4
    80002078:	30079073          	csrw	mstatus,a5
    8000207c:	00000797          	auipc	a5,0x0
    80002080:	16078793          	addi	a5,a5,352 # 800021dc <system_main>
    80002084:	34179073          	csrw	mepc,a5
    80002088:	00000793          	li	a5,0
    8000208c:	18079073          	csrw	satp,a5
    80002090:	000107b7          	lui	a5,0x10
    80002094:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002098:	30279073          	csrw	medeleg,a5
    8000209c:	30379073          	csrw	mideleg,a5
    800020a0:	104027f3          	csrr	a5,sie
    800020a4:	2227e793          	ori	a5,a5,546
    800020a8:	10479073          	csrw	sie,a5
    800020ac:	fff00793          	li	a5,-1
    800020b0:	00a7d793          	srli	a5,a5,0xa
    800020b4:	3b079073          	csrw	pmpaddr0,a5
    800020b8:	00f00793          	li	a5,15
    800020bc:	3a079073          	csrw	pmpcfg0,a5
    800020c0:	f14027f3          	csrr	a5,mhartid
    800020c4:	0200c737          	lui	a4,0x200c
    800020c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020cc:	0007869b          	sext.w	a3,a5
    800020d0:	00269713          	slli	a4,a3,0x2
    800020d4:	000f4637          	lui	a2,0xf4
    800020d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020dc:	00d70733          	add	a4,a4,a3
    800020e0:	0037979b          	slliw	a5,a5,0x3
    800020e4:	020046b7          	lui	a3,0x2004
    800020e8:	00d787b3          	add	a5,a5,a3
    800020ec:	00c585b3          	add	a1,a1,a2
    800020f0:	00371693          	slli	a3,a4,0x3
    800020f4:	00003717          	auipc	a4,0x3
    800020f8:	79c70713          	addi	a4,a4,1948 # 80005890 <timer_scratch>
    800020fc:	00b7b023          	sd	a1,0(a5)
    80002100:	00d70733          	add	a4,a4,a3
    80002104:	00f73c23          	sd	a5,24(a4)
    80002108:	02c73023          	sd	a2,32(a4)
    8000210c:	34071073          	csrw	mscratch,a4
    80002110:	00000797          	auipc	a5,0x0
    80002114:	6e078793          	addi	a5,a5,1760 # 800027f0 <timervec>
    80002118:	30579073          	csrw	mtvec,a5
    8000211c:	300027f3          	csrr	a5,mstatus
    80002120:	0087e793          	ori	a5,a5,8
    80002124:	30079073          	csrw	mstatus,a5
    80002128:	304027f3          	csrr	a5,mie
    8000212c:	0807e793          	ori	a5,a5,128
    80002130:	30479073          	csrw	mie,a5
    80002134:	f14027f3          	csrr	a5,mhartid
    80002138:	0007879b          	sext.w	a5,a5
    8000213c:	00078213          	mv	tp,a5
    80002140:	30200073          	mret
    80002144:	00813403          	ld	s0,8(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <timerinit>:
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00813423          	sd	s0,8(sp)
    80002158:	01010413          	addi	s0,sp,16
    8000215c:	f14027f3          	csrr	a5,mhartid
    80002160:	0200c737          	lui	a4,0x200c
    80002164:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002168:	0007869b          	sext.w	a3,a5
    8000216c:	00269713          	slli	a4,a3,0x2
    80002170:	000f4637          	lui	a2,0xf4
    80002174:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002178:	00d70733          	add	a4,a4,a3
    8000217c:	0037979b          	slliw	a5,a5,0x3
    80002180:	020046b7          	lui	a3,0x2004
    80002184:	00d787b3          	add	a5,a5,a3
    80002188:	00c585b3          	add	a1,a1,a2
    8000218c:	00371693          	slli	a3,a4,0x3
    80002190:	00003717          	auipc	a4,0x3
    80002194:	70070713          	addi	a4,a4,1792 # 80005890 <timer_scratch>
    80002198:	00b7b023          	sd	a1,0(a5)
    8000219c:	00d70733          	add	a4,a4,a3
    800021a0:	00f73c23          	sd	a5,24(a4)
    800021a4:	02c73023          	sd	a2,32(a4)
    800021a8:	34071073          	csrw	mscratch,a4
    800021ac:	00000797          	auipc	a5,0x0
    800021b0:	64478793          	addi	a5,a5,1604 # 800027f0 <timervec>
    800021b4:	30579073          	csrw	mtvec,a5
    800021b8:	300027f3          	csrr	a5,mstatus
    800021bc:	0087e793          	ori	a5,a5,8
    800021c0:	30079073          	csrw	mstatus,a5
    800021c4:	304027f3          	csrr	a5,mie
    800021c8:	0807e793          	ori	a5,a5,128
    800021cc:	30479073          	csrw	mie,a5
    800021d0:	00813403          	ld	s0,8(sp)
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00008067          	ret

00000000800021dc <system_main>:
    800021dc:	fe010113          	addi	sp,sp,-32
    800021e0:	00813823          	sd	s0,16(sp)
    800021e4:	00913423          	sd	s1,8(sp)
    800021e8:	00113c23          	sd	ra,24(sp)
    800021ec:	02010413          	addi	s0,sp,32
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	0c4080e7          	jalr	196(ra) # 800022b4 <cpuid>
    800021f8:	00003497          	auipc	s1,0x3
    800021fc:	63848493          	addi	s1,s1,1592 # 80005830 <started>
    80002200:	02050263          	beqz	a0,80002224 <system_main+0x48>
    80002204:	0004a783          	lw	a5,0(s1)
    80002208:	0007879b          	sext.w	a5,a5
    8000220c:	fe078ce3          	beqz	a5,80002204 <system_main+0x28>
    80002210:	0ff0000f          	fence
    80002214:	00003517          	auipc	a0,0x3
    80002218:	f1c50513          	addi	a0,a0,-228 # 80005130 <_ZZ12printIntegermE6digits+0x40>
    8000221c:	00001097          	auipc	ra,0x1
    80002220:	a70080e7          	jalr	-1424(ra) # 80002c8c <panic>
    80002224:	00001097          	auipc	ra,0x1
    80002228:	9c4080e7          	jalr	-1596(ra) # 80002be8 <consoleinit>
    8000222c:	00001097          	auipc	ra,0x1
    80002230:	150080e7          	jalr	336(ra) # 8000337c <printfinit>
    80002234:	00003517          	auipc	a0,0x3
    80002238:	e0c50513          	addi	a0,a0,-500 # 80005040 <CONSOLE_STATUS+0x30>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	aac080e7          	jalr	-1364(ra) # 80002ce8 <__printf>
    80002244:	00003517          	auipc	a0,0x3
    80002248:	ebc50513          	addi	a0,a0,-324 # 80005100 <_ZZ12printIntegermE6digits+0x10>
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	a9c080e7          	jalr	-1380(ra) # 80002ce8 <__printf>
    80002254:	00003517          	auipc	a0,0x3
    80002258:	dec50513          	addi	a0,a0,-532 # 80005040 <CONSOLE_STATUS+0x30>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	a8c080e7          	jalr	-1396(ra) # 80002ce8 <__printf>
    80002264:	00001097          	auipc	ra,0x1
    80002268:	4a4080e7          	jalr	1188(ra) # 80003708 <kinit>
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	148080e7          	jalr	328(ra) # 800023b4 <trapinit>
    80002274:	00000097          	auipc	ra,0x0
    80002278:	16c080e7          	jalr	364(ra) # 800023e0 <trapinithart>
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	5b4080e7          	jalr	1460(ra) # 80002830 <plicinit>
    80002284:	00000097          	auipc	ra,0x0
    80002288:	5d4080e7          	jalr	1492(ra) # 80002858 <plicinithart>
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	078080e7          	jalr	120(ra) # 80002304 <userinit>
    80002294:	0ff0000f          	fence
    80002298:	00100793          	li	a5,1
    8000229c:	00003517          	auipc	a0,0x3
    800022a0:	e7c50513          	addi	a0,a0,-388 # 80005118 <_ZZ12printIntegermE6digits+0x28>
    800022a4:	00f4a023          	sw	a5,0(s1)
    800022a8:	00001097          	auipc	ra,0x1
    800022ac:	a40080e7          	jalr	-1472(ra) # 80002ce8 <__printf>
    800022b0:	0000006f          	j	800022b0 <system_main+0xd4>

00000000800022b4 <cpuid>:
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00813423          	sd	s0,8(sp)
    800022bc:	01010413          	addi	s0,sp,16
    800022c0:	00020513          	mv	a0,tp
    800022c4:	00813403          	ld	s0,8(sp)
    800022c8:	0005051b          	sext.w	a0,a0
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <mycpu>:
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00813423          	sd	s0,8(sp)
    800022dc:	01010413          	addi	s0,sp,16
    800022e0:	00020793          	mv	a5,tp
    800022e4:	00813403          	ld	s0,8(sp)
    800022e8:	0007879b          	sext.w	a5,a5
    800022ec:	00779793          	slli	a5,a5,0x7
    800022f0:	00004517          	auipc	a0,0x4
    800022f4:	5d050513          	addi	a0,a0,1488 # 800068c0 <cpus>
    800022f8:	00f50533          	add	a0,a0,a5
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <userinit>:
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
    80002310:	00813403          	ld	s0,8(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	fffff317          	auipc	t1,0xfffff
    8000231c:	2f830067          	jr	760(t1) # 80001610 <main>

0000000080002320 <either_copyout>:
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00813023          	sd	s0,0(sp)
    80002328:	00113423          	sd	ra,8(sp)
    8000232c:	01010413          	addi	s0,sp,16
    80002330:	02051663          	bnez	a0,8000235c <either_copyout+0x3c>
    80002334:	00058513          	mv	a0,a1
    80002338:	00060593          	mv	a1,a2
    8000233c:	0006861b          	sext.w	a2,a3
    80002340:	00002097          	auipc	ra,0x2
    80002344:	c54080e7          	jalr	-940(ra) # 80003f94 <__memmove>
    80002348:	00813083          	ld	ra,8(sp)
    8000234c:	00013403          	ld	s0,0(sp)
    80002350:	00000513          	li	a0,0
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret
    8000235c:	00003517          	auipc	a0,0x3
    80002360:	dfc50513          	addi	a0,a0,-516 # 80005158 <_ZZ12printIntegermE6digits+0x68>
    80002364:	00001097          	auipc	ra,0x1
    80002368:	928080e7          	jalr	-1752(ra) # 80002c8c <panic>

000000008000236c <either_copyin>:
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00813023          	sd	s0,0(sp)
    80002374:	00113423          	sd	ra,8(sp)
    80002378:	01010413          	addi	s0,sp,16
    8000237c:	02059463          	bnez	a1,800023a4 <either_copyin+0x38>
    80002380:	00060593          	mv	a1,a2
    80002384:	0006861b          	sext.w	a2,a3
    80002388:	00002097          	auipc	ra,0x2
    8000238c:	c0c080e7          	jalr	-1012(ra) # 80003f94 <__memmove>
    80002390:	00813083          	ld	ra,8(sp)
    80002394:	00013403          	ld	s0,0(sp)
    80002398:	00000513          	li	a0,0
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret
    800023a4:	00003517          	auipc	a0,0x3
    800023a8:	ddc50513          	addi	a0,a0,-548 # 80005180 <_ZZ12printIntegermE6digits+0x90>
    800023ac:	00001097          	auipc	ra,0x1
    800023b0:	8e0080e7          	jalr	-1824(ra) # 80002c8c <panic>

00000000800023b4 <trapinit>:
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00813423          	sd	s0,8(sp)
    800023bc:	01010413          	addi	s0,sp,16
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	00003597          	auipc	a1,0x3
    800023c8:	de458593          	addi	a1,a1,-540 # 800051a8 <_ZZ12printIntegermE6digits+0xb8>
    800023cc:	00004517          	auipc	a0,0x4
    800023d0:	57450513          	addi	a0,a0,1396 # 80006940 <tickslock>
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00001317          	auipc	t1,0x1
    800023dc:	5c030067          	jr	1472(t1) # 80003998 <initlock>

00000000800023e0 <trapinithart>:
    800023e0:	ff010113          	addi	sp,sp,-16
    800023e4:	00813423          	sd	s0,8(sp)
    800023e8:	01010413          	addi	s0,sp,16
    800023ec:	00000797          	auipc	a5,0x0
    800023f0:	2f478793          	addi	a5,a5,756 # 800026e0 <kernelvec>
    800023f4:	10579073          	csrw	stvec,a5
    800023f8:	00813403          	ld	s0,8(sp)
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret

0000000080002404 <usertrap>:
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00813423          	sd	s0,8(sp)
    8000240c:	01010413          	addi	s0,sp,16
    80002410:	00813403          	ld	s0,8(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <usertrapret>:
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00813423          	sd	s0,8(sp)
    80002424:	01010413          	addi	s0,sp,16
    80002428:	00813403          	ld	s0,8(sp)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <kerneltrap>:
    80002434:	fe010113          	addi	sp,sp,-32
    80002438:	00813823          	sd	s0,16(sp)
    8000243c:	00113c23          	sd	ra,24(sp)
    80002440:	00913423          	sd	s1,8(sp)
    80002444:	02010413          	addi	s0,sp,32
    80002448:	142025f3          	csrr	a1,scause
    8000244c:	100027f3          	csrr	a5,sstatus
    80002450:	0027f793          	andi	a5,a5,2
    80002454:	10079c63          	bnez	a5,8000256c <kerneltrap+0x138>
    80002458:	142027f3          	csrr	a5,scause
    8000245c:	0207ce63          	bltz	a5,80002498 <kerneltrap+0x64>
    80002460:	00003517          	auipc	a0,0x3
    80002464:	d9050513          	addi	a0,a0,-624 # 800051f0 <_ZZ12printIntegermE6digits+0x100>
    80002468:	00001097          	auipc	ra,0x1
    8000246c:	880080e7          	jalr	-1920(ra) # 80002ce8 <__printf>
    80002470:	141025f3          	csrr	a1,sepc
    80002474:	14302673          	csrr	a2,stval
    80002478:	00003517          	auipc	a0,0x3
    8000247c:	d8850513          	addi	a0,a0,-632 # 80005200 <_ZZ12printIntegermE6digits+0x110>
    80002480:	00001097          	auipc	ra,0x1
    80002484:	868080e7          	jalr	-1944(ra) # 80002ce8 <__printf>
    80002488:	00003517          	auipc	a0,0x3
    8000248c:	d9050513          	addi	a0,a0,-624 # 80005218 <_ZZ12printIntegermE6digits+0x128>
    80002490:	00000097          	auipc	ra,0x0
    80002494:	7fc080e7          	jalr	2044(ra) # 80002c8c <panic>
    80002498:	0ff7f713          	andi	a4,a5,255
    8000249c:	00900693          	li	a3,9
    800024a0:	04d70063          	beq	a4,a3,800024e0 <kerneltrap+0xac>
    800024a4:	fff00713          	li	a4,-1
    800024a8:	03f71713          	slli	a4,a4,0x3f
    800024ac:	00170713          	addi	a4,a4,1
    800024b0:	fae798e3          	bne	a5,a4,80002460 <kerneltrap+0x2c>
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	e00080e7          	jalr	-512(ra) # 800022b4 <cpuid>
    800024bc:	06050663          	beqz	a0,80002528 <kerneltrap+0xf4>
    800024c0:	144027f3          	csrr	a5,sip
    800024c4:	ffd7f793          	andi	a5,a5,-3
    800024c8:	14479073          	csrw	sip,a5
    800024cc:	01813083          	ld	ra,24(sp)
    800024d0:	01013403          	ld	s0,16(sp)
    800024d4:	00813483          	ld	s1,8(sp)
    800024d8:	02010113          	addi	sp,sp,32
    800024dc:	00008067          	ret
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	3c4080e7          	jalr	964(ra) # 800028a4 <plic_claim>
    800024e8:	00a00793          	li	a5,10
    800024ec:	00050493          	mv	s1,a0
    800024f0:	06f50863          	beq	a0,a5,80002560 <kerneltrap+0x12c>
    800024f4:	fc050ce3          	beqz	a0,800024cc <kerneltrap+0x98>
    800024f8:	00050593          	mv	a1,a0
    800024fc:	00003517          	auipc	a0,0x3
    80002500:	cd450513          	addi	a0,a0,-812 # 800051d0 <_ZZ12printIntegermE6digits+0xe0>
    80002504:	00000097          	auipc	ra,0x0
    80002508:	7e4080e7          	jalr	2020(ra) # 80002ce8 <__printf>
    8000250c:	01013403          	ld	s0,16(sp)
    80002510:	01813083          	ld	ra,24(sp)
    80002514:	00048513          	mv	a0,s1
    80002518:	00813483          	ld	s1,8(sp)
    8000251c:	02010113          	addi	sp,sp,32
    80002520:	00000317          	auipc	t1,0x0
    80002524:	3bc30067          	jr	956(t1) # 800028dc <plic_complete>
    80002528:	00004517          	auipc	a0,0x4
    8000252c:	41850513          	addi	a0,a0,1048 # 80006940 <tickslock>
    80002530:	00001097          	auipc	ra,0x1
    80002534:	48c080e7          	jalr	1164(ra) # 800039bc <acquire>
    80002538:	00003717          	auipc	a4,0x3
    8000253c:	2fc70713          	addi	a4,a4,764 # 80005834 <ticks>
    80002540:	00072783          	lw	a5,0(a4)
    80002544:	00004517          	auipc	a0,0x4
    80002548:	3fc50513          	addi	a0,a0,1020 # 80006940 <tickslock>
    8000254c:	0017879b          	addiw	a5,a5,1
    80002550:	00f72023          	sw	a5,0(a4)
    80002554:	00001097          	auipc	ra,0x1
    80002558:	534080e7          	jalr	1332(ra) # 80003a88 <release>
    8000255c:	f65ff06f          	j	800024c0 <kerneltrap+0x8c>
    80002560:	00001097          	auipc	ra,0x1
    80002564:	090080e7          	jalr	144(ra) # 800035f0 <uartintr>
    80002568:	fa5ff06f          	j	8000250c <kerneltrap+0xd8>
    8000256c:	00003517          	auipc	a0,0x3
    80002570:	c4450513          	addi	a0,a0,-956 # 800051b0 <_ZZ12printIntegermE6digits+0xc0>
    80002574:	00000097          	auipc	ra,0x0
    80002578:	718080e7          	jalr	1816(ra) # 80002c8c <panic>

000000008000257c <clockintr>:
    8000257c:	fe010113          	addi	sp,sp,-32
    80002580:	00813823          	sd	s0,16(sp)
    80002584:	00913423          	sd	s1,8(sp)
    80002588:	00113c23          	sd	ra,24(sp)
    8000258c:	02010413          	addi	s0,sp,32
    80002590:	00004497          	auipc	s1,0x4
    80002594:	3b048493          	addi	s1,s1,944 # 80006940 <tickslock>
    80002598:	00048513          	mv	a0,s1
    8000259c:	00001097          	auipc	ra,0x1
    800025a0:	420080e7          	jalr	1056(ra) # 800039bc <acquire>
    800025a4:	00003717          	auipc	a4,0x3
    800025a8:	29070713          	addi	a4,a4,656 # 80005834 <ticks>
    800025ac:	00072783          	lw	a5,0(a4)
    800025b0:	01013403          	ld	s0,16(sp)
    800025b4:	01813083          	ld	ra,24(sp)
    800025b8:	00048513          	mv	a0,s1
    800025bc:	0017879b          	addiw	a5,a5,1
    800025c0:	00813483          	ld	s1,8(sp)
    800025c4:	00f72023          	sw	a5,0(a4)
    800025c8:	02010113          	addi	sp,sp,32
    800025cc:	00001317          	auipc	t1,0x1
    800025d0:	4bc30067          	jr	1212(t1) # 80003a88 <release>

00000000800025d4 <devintr>:
    800025d4:	142027f3          	csrr	a5,scause
    800025d8:	00000513          	li	a0,0
    800025dc:	0007c463          	bltz	a5,800025e4 <devintr+0x10>
    800025e0:	00008067          	ret
    800025e4:	fe010113          	addi	sp,sp,-32
    800025e8:	00813823          	sd	s0,16(sp)
    800025ec:	00113c23          	sd	ra,24(sp)
    800025f0:	00913423          	sd	s1,8(sp)
    800025f4:	02010413          	addi	s0,sp,32
    800025f8:	0ff7f713          	andi	a4,a5,255
    800025fc:	00900693          	li	a3,9
    80002600:	04d70c63          	beq	a4,a3,80002658 <devintr+0x84>
    80002604:	fff00713          	li	a4,-1
    80002608:	03f71713          	slli	a4,a4,0x3f
    8000260c:	00170713          	addi	a4,a4,1
    80002610:	00e78c63          	beq	a5,a4,80002628 <devintr+0x54>
    80002614:	01813083          	ld	ra,24(sp)
    80002618:	01013403          	ld	s0,16(sp)
    8000261c:	00813483          	ld	s1,8(sp)
    80002620:	02010113          	addi	sp,sp,32
    80002624:	00008067          	ret
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	c8c080e7          	jalr	-884(ra) # 800022b4 <cpuid>
    80002630:	06050663          	beqz	a0,8000269c <devintr+0xc8>
    80002634:	144027f3          	csrr	a5,sip
    80002638:	ffd7f793          	andi	a5,a5,-3
    8000263c:	14479073          	csrw	sip,a5
    80002640:	01813083          	ld	ra,24(sp)
    80002644:	01013403          	ld	s0,16(sp)
    80002648:	00813483          	ld	s1,8(sp)
    8000264c:	00200513          	li	a0,2
    80002650:	02010113          	addi	sp,sp,32
    80002654:	00008067          	ret
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	24c080e7          	jalr	588(ra) # 800028a4 <plic_claim>
    80002660:	00a00793          	li	a5,10
    80002664:	00050493          	mv	s1,a0
    80002668:	06f50663          	beq	a0,a5,800026d4 <devintr+0x100>
    8000266c:	00100513          	li	a0,1
    80002670:	fa0482e3          	beqz	s1,80002614 <devintr+0x40>
    80002674:	00048593          	mv	a1,s1
    80002678:	00003517          	auipc	a0,0x3
    8000267c:	b5850513          	addi	a0,a0,-1192 # 800051d0 <_ZZ12printIntegermE6digits+0xe0>
    80002680:	00000097          	auipc	ra,0x0
    80002684:	668080e7          	jalr	1640(ra) # 80002ce8 <__printf>
    80002688:	00048513          	mv	a0,s1
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	250080e7          	jalr	592(ra) # 800028dc <plic_complete>
    80002694:	00100513          	li	a0,1
    80002698:	f7dff06f          	j	80002614 <devintr+0x40>
    8000269c:	00004517          	auipc	a0,0x4
    800026a0:	2a450513          	addi	a0,a0,676 # 80006940 <tickslock>
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	318080e7          	jalr	792(ra) # 800039bc <acquire>
    800026ac:	00003717          	auipc	a4,0x3
    800026b0:	18870713          	addi	a4,a4,392 # 80005834 <ticks>
    800026b4:	00072783          	lw	a5,0(a4)
    800026b8:	00004517          	auipc	a0,0x4
    800026bc:	28850513          	addi	a0,a0,648 # 80006940 <tickslock>
    800026c0:	0017879b          	addiw	a5,a5,1
    800026c4:	00f72023          	sw	a5,0(a4)
    800026c8:	00001097          	auipc	ra,0x1
    800026cc:	3c0080e7          	jalr	960(ra) # 80003a88 <release>
    800026d0:	f65ff06f          	j	80002634 <devintr+0x60>
    800026d4:	00001097          	auipc	ra,0x1
    800026d8:	f1c080e7          	jalr	-228(ra) # 800035f0 <uartintr>
    800026dc:	fadff06f          	j	80002688 <devintr+0xb4>

00000000800026e0 <kernelvec>:
    800026e0:	f0010113          	addi	sp,sp,-256
    800026e4:	00113023          	sd	ra,0(sp)
    800026e8:	00213423          	sd	sp,8(sp)
    800026ec:	00313823          	sd	gp,16(sp)
    800026f0:	00413c23          	sd	tp,24(sp)
    800026f4:	02513023          	sd	t0,32(sp)
    800026f8:	02613423          	sd	t1,40(sp)
    800026fc:	02713823          	sd	t2,48(sp)
    80002700:	02813c23          	sd	s0,56(sp)
    80002704:	04913023          	sd	s1,64(sp)
    80002708:	04a13423          	sd	a0,72(sp)
    8000270c:	04b13823          	sd	a1,80(sp)
    80002710:	04c13c23          	sd	a2,88(sp)
    80002714:	06d13023          	sd	a3,96(sp)
    80002718:	06e13423          	sd	a4,104(sp)
    8000271c:	06f13823          	sd	a5,112(sp)
    80002720:	07013c23          	sd	a6,120(sp)
    80002724:	09113023          	sd	a7,128(sp)
    80002728:	09213423          	sd	s2,136(sp)
    8000272c:	09313823          	sd	s3,144(sp)
    80002730:	09413c23          	sd	s4,152(sp)
    80002734:	0b513023          	sd	s5,160(sp)
    80002738:	0b613423          	sd	s6,168(sp)
    8000273c:	0b713823          	sd	s7,176(sp)
    80002740:	0b813c23          	sd	s8,184(sp)
    80002744:	0d913023          	sd	s9,192(sp)
    80002748:	0da13423          	sd	s10,200(sp)
    8000274c:	0db13823          	sd	s11,208(sp)
    80002750:	0dc13c23          	sd	t3,216(sp)
    80002754:	0fd13023          	sd	t4,224(sp)
    80002758:	0fe13423          	sd	t5,232(sp)
    8000275c:	0ff13823          	sd	t6,240(sp)
    80002760:	cd5ff0ef          	jal	ra,80002434 <kerneltrap>
    80002764:	00013083          	ld	ra,0(sp)
    80002768:	00813103          	ld	sp,8(sp)
    8000276c:	01013183          	ld	gp,16(sp)
    80002770:	02013283          	ld	t0,32(sp)
    80002774:	02813303          	ld	t1,40(sp)
    80002778:	03013383          	ld	t2,48(sp)
    8000277c:	03813403          	ld	s0,56(sp)
    80002780:	04013483          	ld	s1,64(sp)
    80002784:	04813503          	ld	a0,72(sp)
    80002788:	05013583          	ld	a1,80(sp)
    8000278c:	05813603          	ld	a2,88(sp)
    80002790:	06013683          	ld	a3,96(sp)
    80002794:	06813703          	ld	a4,104(sp)
    80002798:	07013783          	ld	a5,112(sp)
    8000279c:	07813803          	ld	a6,120(sp)
    800027a0:	08013883          	ld	a7,128(sp)
    800027a4:	08813903          	ld	s2,136(sp)
    800027a8:	09013983          	ld	s3,144(sp)
    800027ac:	09813a03          	ld	s4,152(sp)
    800027b0:	0a013a83          	ld	s5,160(sp)
    800027b4:	0a813b03          	ld	s6,168(sp)
    800027b8:	0b013b83          	ld	s7,176(sp)
    800027bc:	0b813c03          	ld	s8,184(sp)
    800027c0:	0c013c83          	ld	s9,192(sp)
    800027c4:	0c813d03          	ld	s10,200(sp)
    800027c8:	0d013d83          	ld	s11,208(sp)
    800027cc:	0d813e03          	ld	t3,216(sp)
    800027d0:	0e013e83          	ld	t4,224(sp)
    800027d4:	0e813f03          	ld	t5,232(sp)
    800027d8:	0f013f83          	ld	t6,240(sp)
    800027dc:	10010113          	addi	sp,sp,256
    800027e0:	10200073          	sret
    800027e4:	00000013          	nop
    800027e8:	00000013          	nop
    800027ec:	00000013          	nop

00000000800027f0 <timervec>:
    800027f0:	34051573          	csrrw	a0,mscratch,a0
    800027f4:	00b53023          	sd	a1,0(a0)
    800027f8:	00c53423          	sd	a2,8(a0)
    800027fc:	00d53823          	sd	a3,16(a0)
    80002800:	01853583          	ld	a1,24(a0)
    80002804:	02053603          	ld	a2,32(a0)
    80002808:	0005b683          	ld	a3,0(a1)
    8000280c:	00c686b3          	add	a3,a3,a2
    80002810:	00d5b023          	sd	a3,0(a1)
    80002814:	00200593          	li	a1,2
    80002818:	14459073          	csrw	sip,a1
    8000281c:	01053683          	ld	a3,16(a0)
    80002820:	00853603          	ld	a2,8(a0)
    80002824:	00053583          	ld	a1,0(a0)
    80002828:	34051573          	csrrw	a0,mscratch,a0
    8000282c:	30200073          	mret

0000000080002830 <plicinit>:
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00813423          	sd	s0,8(sp)
    80002838:	01010413          	addi	s0,sp,16
    8000283c:	00813403          	ld	s0,8(sp)
    80002840:	0c0007b7          	lui	a5,0xc000
    80002844:	00100713          	li	a4,1
    80002848:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000284c:	00e7a223          	sw	a4,4(a5)
    80002850:	01010113          	addi	sp,sp,16
    80002854:	00008067          	ret

0000000080002858 <plicinithart>:
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00813023          	sd	s0,0(sp)
    80002860:	00113423          	sd	ra,8(sp)
    80002864:	01010413          	addi	s0,sp,16
    80002868:	00000097          	auipc	ra,0x0
    8000286c:	a4c080e7          	jalr	-1460(ra) # 800022b4 <cpuid>
    80002870:	0085171b          	slliw	a4,a0,0x8
    80002874:	0c0027b7          	lui	a5,0xc002
    80002878:	00e787b3          	add	a5,a5,a4
    8000287c:	40200713          	li	a4,1026
    80002880:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002884:	00813083          	ld	ra,8(sp)
    80002888:	00013403          	ld	s0,0(sp)
    8000288c:	00d5151b          	slliw	a0,a0,0xd
    80002890:	0c2017b7          	lui	a5,0xc201
    80002894:	00a78533          	add	a0,a5,a0
    80002898:	00052023          	sw	zero,0(a0)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <plic_claim>:
    800028a4:	ff010113          	addi	sp,sp,-16
    800028a8:	00813023          	sd	s0,0(sp)
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	01010413          	addi	s0,sp,16
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	a00080e7          	jalr	-1536(ra) # 800022b4 <cpuid>
    800028bc:	00813083          	ld	ra,8(sp)
    800028c0:	00013403          	ld	s0,0(sp)
    800028c4:	00d5151b          	slliw	a0,a0,0xd
    800028c8:	0c2017b7          	lui	a5,0xc201
    800028cc:	00a78533          	add	a0,a5,a0
    800028d0:	00452503          	lw	a0,4(a0)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret

00000000800028dc <plic_complete>:
    800028dc:	fe010113          	addi	sp,sp,-32
    800028e0:	00813823          	sd	s0,16(sp)
    800028e4:	00913423          	sd	s1,8(sp)
    800028e8:	00113c23          	sd	ra,24(sp)
    800028ec:	02010413          	addi	s0,sp,32
    800028f0:	00050493          	mv	s1,a0
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	9c0080e7          	jalr	-1600(ra) # 800022b4 <cpuid>
    800028fc:	01813083          	ld	ra,24(sp)
    80002900:	01013403          	ld	s0,16(sp)
    80002904:	00d5179b          	slliw	a5,a0,0xd
    80002908:	0c201737          	lui	a4,0xc201
    8000290c:	00f707b3          	add	a5,a4,a5
    80002910:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002914:	00813483          	ld	s1,8(sp)
    80002918:	02010113          	addi	sp,sp,32
    8000291c:	00008067          	ret

0000000080002920 <consolewrite>:
    80002920:	fb010113          	addi	sp,sp,-80
    80002924:	04813023          	sd	s0,64(sp)
    80002928:	04113423          	sd	ra,72(sp)
    8000292c:	02913c23          	sd	s1,56(sp)
    80002930:	03213823          	sd	s2,48(sp)
    80002934:	03313423          	sd	s3,40(sp)
    80002938:	03413023          	sd	s4,32(sp)
    8000293c:	01513c23          	sd	s5,24(sp)
    80002940:	05010413          	addi	s0,sp,80
    80002944:	06c05c63          	blez	a2,800029bc <consolewrite+0x9c>
    80002948:	00060993          	mv	s3,a2
    8000294c:	00050a13          	mv	s4,a0
    80002950:	00058493          	mv	s1,a1
    80002954:	00000913          	li	s2,0
    80002958:	fff00a93          	li	s5,-1
    8000295c:	01c0006f          	j	80002978 <consolewrite+0x58>
    80002960:	fbf44503          	lbu	a0,-65(s0)
    80002964:	0019091b          	addiw	s2,s2,1
    80002968:	00148493          	addi	s1,s1,1
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	a9c080e7          	jalr	-1380(ra) # 80003408 <uartputc>
    80002974:	03298063          	beq	s3,s2,80002994 <consolewrite+0x74>
    80002978:	00048613          	mv	a2,s1
    8000297c:	00100693          	li	a3,1
    80002980:	000a0593          	mv	a1,s4
    80002984:	fbf40513          	addi	a0,s0,-65
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	9e4080e7          	jalr	-1564(ra) # 8000236c <either_copyin>
    80002990:	fd5518e3          	bne	a0,s5,80002960 <consolewrite+0x40>
    80002994:	04813083          	ld	ra,72(sp)
    80002998:	04013403          	ld	s0,64(sp)
    8000299c:	03813483          	ld	s1,56(sp)
    800029a0:	02813983          	ld	s3,40(sp)
    800029a4:	02013a03          	ld	s4,32(sp)
    800029a8:	01813a83          	ld	s5,24(sp)
    800029ac:	00090513          	mv	a0,s2
    800029b0:	03013903          	ld	s2,48(sp)
    800029b4:	05010113          	addi	sp,sp,80
    800029b8:	00008067          	ret
    800029bc:	00000913          	li	s2,0
    800029c0:	fd5ff06f          	j	80002994 <consolewrite+0x74>

00000000800029c4 <consoleread>:
    800029c4:	f9010113          	addi	sp,sp,-112
    800029c8:	06813023          	sd	s0,96(sp)
    800029cc:	04913c23          	sd	s1,88(sp)
    800029d0:	05213823          	sd	s2,80(sp)
    800029d4:	05313423          	sd	s3,72(sp)
    800029d8:	05413023          	sd	s4,64(sp)
    800029dc:	03513c23          	sd	s5,56(sp)
    800029e0:	03613823          	sd	s6,48(sp)
    800029e4:	03713423          	sd	s7,40(sp)
    800029e8:	03813023          	sd	s8,32(sp)
    800029ec:	06113423          	sd	ra,104(sp)
    800029f0:	01913c23          	sd	s9,24(sp)
    800029f4:	07010413          	addi	s0,sp,112
    800029f8:	00060b93          	mv	s7,a2
    800029fc:	00050913          	mv	s2,a0
    80002a00:	00058c13          	mv	s8,a1
    80002a04:	00060b1b          	sext.w	s6,a2
    80002a08:	00004497          	auipc	s1,0x4
    80002a0c:	f6048493          	addi	s1,s1,-160 # 80006968 <cons>
    80002a10:	00400993          	li	s3,4
    80002a14:	fff00a13          	li	s4,-1
    80002a18:	00a00a93          	li	s5,10
    80002a1c:	05705e63          	blez	s7,80002a78 <consoleread+0xb4>
    80002a20:	09c4a703          	lw	a4,156(s1)
    80002a24:	0984a783          	lw	a5,152(s1)
    80002a28:	0007071b          	sext.w	a4,a4
    80002a2c:	08e78463          	beq	a5,a4,80002ab4 <consoleread+0xf0>
    80002a30:	07f7f713          	andi	a4,a5,127
    80002a34:	00e48733          	add	a4,s1,a4
    80002a38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a3c:	0017869b          	addiw	a3,a5,1
    80002a40:	08d4ac23          	sw	a3,152(s1)
    80002a44:	00070c9b          	sext.w	s9,a4
    80002a48:	0b370663          	beq	a4,s3,80002af4 <consoleread+0x130>
    80002a4c:	00100693          	li	a3,1
    80002a50:	f9f40613          	addi	a2,s0,-97
    80002a54:	000c0593          	mv	a1,s8
    80002a58:	00090513          	mv	a0,s2
    80002a5c:	f8e40fa3          	sb	a4,-97(s0)
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	8c0080e7          	jalr	-1856(ra) # 80002320 <either_copyout>
    80002a68:	01450863          	beq	a0,s4,80002a78 <consoleread+0xb4>
    80002a6c:	001c0c13          	addi	s8,s8,1
    80002a70:	fffb8b9b          	addiw	s7,s7,-1
    80002a74:	fb5c94e3          	bne	s9,s5,80002a1c <consoleread+0x58>
    80002a78:	000b851b          	sext.w	a0,s7
    80002a7c:	06813083          	ld	ra,104(sp)
    80002a80:	06013403          	ld	s0,96(sp)
    80002a84:	05813483          	ld	s1,88(sp)
    80002a88:	05013903          	ld	s2,80(sp)
    80002a8c:	04813983          	ld	s3,72(sp)
    80002a90:	04013a03          	ld	s4,64(sp)
    80002a94:	03813a83          	ld	s5,56(sp)
    80002a98:	02813b83          	ld	s7,40(sp)
    80002a9c:	02013c03          	ld	s8,32(sp)
    80002aa0:	01813c83          	ld	s9,24(sp)
    80002aa4:	40ab053b          	subw	a0,s6,a0
    80002aa8:	03013b03          	ld	s6,48(sp)
    80002aac:	07010113          	addi	sp,sp,112
    80002ab0:	00008067          	ret
    80002ab4:	00001097          	auipc	ra,0x1
    80002ab8:	1d8080e7          	jalr	472(ra) # 80003c8c <push_on>
    80002abc:	0984a703          	lw	a4,152(s1)
    80002ac0:	09c4a783          	lw	a5,156(s1)
    80002ac4:	0007879b          	sext.w	a5,a5
    80002ac8:	fef70ce3          	beq	a4,a5,80002ac0 <consoleread+0xfc>
    80002acc:	00001097          	auipc	ra,0x1
    80002ad0:	234080e7          	jalr	564(ra) # 80003d00 <pop_on>
    80002ad4:	0984a783          	lw	a5,152(s1)
    80002ad8:	07f7f713          	andi	a4,a5,127
    80002adc:	00e48733          	add	a4,s1,a4
    80002ae0:	01874703          	lbu	a4,24(a4)
    80002ae4:	0017869b          	addiw	a3,a5,1
    80002ae8:	08d4ac23          	sw	a3,152(s1)
    80002aec:	00070c9b          	sext.w	s9,a4
    80002af0:	f5371ee3          	bne	a4,s3,80002a4c <consoleread+0x88>
    80002af4:	000b851b          	sext.w	a0,s7
    80002af8:	f96bf2e3          	bgeu	s7,s6,80002a7c <consoleread+0xb8>
    80002afc:	08f4ac23          	sw	a5,152(s1)
    80002b00:	f7dff06f          	j	80002a7c <consoleread+0xb8>

0000000080002b04 <consputc>:
    80002b04:	10000793          	li	a5,256
    80002b08:	00f50663          	beq	a0,a5,80002b14 <consputc+0x10>
    80002b0c:	00001317          	auipc	t1,0x1
    80002b10:	9f430067          	jr	-1548(t1) # 80003500 <uartputc_sync>
    80002b14:	ff010113          	addi	sp,sp,-16
    80002b18:	00113423          	sd	ra,8(sp)
    80002b1c:	00813023          	sd	s0,0(sp)
    80002b20:	01010413          	addi	s0,sp,16
    80002b24:	00800513          	li	a0,8
    80002b28:	00001097          	auipc	ra,0x1
    80002b2c:	9d8080e7          	jalr	-1576(ra) # 80003500 <uartputc_sync>
    80002b30:	02000513          	li	a0,32
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	9cc080e7          	jalr	-1588(ra) # 80003500 <uartputc_sync>
    80002b3c:	00013403          	ld	s0,0(sp)
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00800513          	li	a0,8
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00001317          	auipc	t1,0x1
    80002b50:	9b430067          	jr	-1612(t1) # 80003500 <uartputc_sync>

0000000080002b54 <consoleintr>:
    80002b54:	fe010113          	addi	sp,sp,-32
    80002b58:	00813823          	sd	s0,16(sp)
    80002b5c:	00913423          	sd	s1,8(sp)
    80002b60:	01213023          	sd	s2,0(sp)
    80002b64:	00113c23          	sd	ra,24(sp)
    80002b68:	02010413          	addi	s0,sp,32
    80002b6c:	00004917          	auipc	s2,0x4
    80002b70:	dfc90913          	addi	s2,s2,-516 # 80006968 <cons>
    80002b74:	00050493          	mv	s1,a0
    80002b78:	00090513          	mv	a0,s2
    80002b7c:	00001097          	auipc	ra,0x1
    80002b80:	e40080e7          	jalr	-448(ra) # 800039bc <acquire>
    80002b84:	02048c63          	beqz	s1,80002bbc <consoleintr+0x68>
    80002b88:	0a092783          	lw	a5,160(s2)
    80002b8c:	09892703          	lw	a4,152(s2)
    80002b90:	07f00693          	li	a3,127
    80002b94:	40e7873b          	subw	a4,a5,a4
    80002b98:	02e6e263          	bltu	a3,a4,80002bbc <consoleintr+0x68>
    80002b9c:	00d00713          	li	a4,13
    80002ba0:	04e48063          	beq	s1,a4,80002be0 <consoleintr+0x8c>
    80002ba4:	07f7f713          	andi	a4,a5,127
    80002ba8:	00e90733          	add	a4,s2,a4
    80002bac:	0017879b          	addiw	a5,a5,1
    80002bb0:	0af92023          	sw	a5,160(s2)
    80002bb4:	00970c23          	sb	s1,24(a4)
    80002bb8:	08f92e23          	sw	a5,156(s2)
    80002bbc:	01013403          	ld	s0,16(sp)
    80002bc0:	01813083          	ld	ra,24(sp)
    80002bc4:	00813483          	ld	s1,8(sp)
    80002bc8:	00013903          	ld	s2,0(sp)
    80002bcc:	00004517          	auipc	a0,0x4
    80002bd0:	d9c50513          	addi	a0,a0,-612 # 80006968 <cons>
    80002bd4:	02010113          	addi	sp,sp,32
    80002bd8:	00001317          	auipc	t1,0x1
    80002bdc:	eb030067          	jr	-336(t1) # 80003a88 <release>
    80002be0:	00a00493          	li	s1,10
    80002be4:	fc1ff06f          	j	80002ba4 <consoleintr+0x50>

0000000080002be8 <consoleinit>:
    80002be8:	fe010113          	addi	sp,sp,-32
    80002bec:	00113c23          	sd	ra,24(sp)
    80002bf0:	00813823          	sd	s0,16(sp)
    80002bf4:	00913423          	sd	s1,8(sp)
    80002bf8:	02010413          	addi	s0,sp,32
    80002bfc:	00004497          	auipc	s1,0x4
    80002c00:	d6c48493          	addi	s1,s1,-660 # 80006968 <cons>
    80002c04:	00048513          	mv	a0,s1
    80002c08:	00002597          	auipc	a1,0x2
    80002c0c:	62058593          	addi	a1,a1,1568 # 80005228 <_ZZ12printIntegermE6digits+0x138>
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	d88080e7          	jalr	-632(ra) # 80003998 <initlock>
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	7ac080e7          	jalr	1964(ra) # 800033c4 <uartinit>
    80002c20:	01813083          	ld	ra,24(sp)
    80002c24:	01013403          	ld	s0,16(sp)
    80002c28:	00000797          	auipc	a5,0x0
    80002c2c:	d9c78793          	addi	a5,a5,-612 # 800029c4 <consoleread>
    80002c30:	0af4bc23          	sd	a5,184(s1)
    80002c34:	00000797          	auipc	a5,0x0
    80002c38:	cec78793          	addi	a5,a5,-788 # 80002920 <consolewrite>
    80002c3c:	0cf4b023          	sd	a5,192(s1)
    80002c40:	00813483          	ld	s1,8(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret

0000000080002c4c <console_read>:
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00813423          	sd	s0,8(sp)
    80002c54:	01010413          	addi	s0,sp,16
    80002c58:	00813403          	ld	s0,8(sp)
    80002c5c:	00004317          	auipc	t1,0x4
    80002c60:	dc433303          	ld	t1,-572(t1) # 80006a20 <devsw+0x10>
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00030067          	jr	t1

0000000080002c6c <console_write>:
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00813423          	sd	s0,8(sp)
    80002c74:	01010413          	addi	s0,sp,16
    80002c78:	00813403          	ld	s0,8(sp)
    80002c7c:	00004317          	auipc	t1,0x4
    80002c80:	dac33303          	ld	t1,-596(t1) # 80006a28 <devsw+0x18>
    80002c84:	01010113          	addi	sp,sp,16
    80002c88:	00030067          	jr	t1

0000000080002c8c <panic>:
    80002c8c:	fe010113          	addi	sp,sp,-32
    80002c90:	00113c23          	sd	ra,24(sp)
    80002c94:	00813823          	sd	s0,16(sp)
    80002c98:	00913423          	sd	s1,8(sp)
    80002c9c:	02010413          	addi	s0,sp,32
    80002ca0:	00050493          	mv	s1,a0
    80002ca4:	00002517          	auipc	a0,0x2
    80002ca8:	58c50513          	addi	a0,a0,1420 # 80005230 <_ZZ12printIntegermE6digits+0x140>
    80002cac:	00004797          	auipc	a5,0x4
    80002cb0:	e007ae23          	sw	zero,-484(a5) # 80006ac8 <pr+0x18>
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	034080e7          	jalr	52(ra) # 80002ce8 <__printf>
    80002cbc:	00048513          	mv	a0,s1
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	028080e7          	jalr	40(ra) # 80002ce8 <__printf>
    80002cc8:	00002517          	auipc	a0,0x2
    80002ccc:	37850513          	addi	a0,a0,888 # 80005040 <CONSOLE_STATUS+0x30>
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	018080e7          	jalr	24(ra) # 80002ce8 <__printf>
    80002cd8:	00100793          	li	a5,1
    80002cdc:	00003717          	auipc	a4,0x3
    80002ce0:	b4f72e23          	sw	a5,-1188(a4) # 80005838 <panicked>
    80002ce4:	0000006f          	j	80002ce4 <panic+0x58>

0000000080002ce8 <__printf>:
    80002ce8:	f3010113          	addi	sp,sp,-208
    80002cec:	08813023          	sd	s0,128(sp)
    80002cf0:	07313423          	sd	s3,104(sp)
    80002cf4:	09010413          	addi	s0,sp,144
    80002cf8:	05813023          	sd	s8,64(sp)
    80002cfc:	08113423          	sd	ra,136(sp)
    80002d00:	06913c23          	sd	s1,120(sp)
    80002d04:	07213823          	sd	s2,112(sp)
    80002d08:	07413023          	sd	s4,96(sp)
    80002d0c:	05513c23          	sd	s5,88(sp)
    80002d10:	05613823          	sd	s6,80(sp)
    80002d14:	05713423          	sd	s7,72(sp)
    80002d18:	03913c23          	sd	s9,56(sp)
    80002d1c:	03a13823          	sd	s10,48(sp)
    80002d20:	03b13423          	sd	s11,40(sp)
    80002d24:	00004317          	auipc	t1,0x4
    80002d28:	d8c30313          	addi	t1,t1,-628 # 80006ab0 <pr>
    80002d2c:	01832c03          	lw	s8,24(t1)
    80002d30:	00b43423          	sd	a1,8(s0)
    80002d34:	00c43823          	sd	a2,16(s0)
    80002d38:	00d43c23          	sd	a3,24(s0)
    80002d3c:	02e43023          	sd	a4,32(s0)
    80002d40:	02f43423          	sd	a5,40(s0)
    80002d44:	03043823          	sd	a6,48(s0)
    80002d48:	03143c23          	sd	a7,56(s0)
    80002d4c:	00050993          	mv	s3,a0
    80002d50:	4a0c1663          	bnez	s8,800031fc <__printf+0x514>
    80002d54:	60098c63          	beqz	s3,8000336c <__printf+0x684>
    80002d58:	0009c503          	lbu	a0,0(s3)
    80002d5c:	00840793          	addi	a5,s0,8
    80002d60:	f6f43c23          	sd	a5,-136(s0)
    80002d64:	00000493          	li	s1,0
    80002d68:	22050063          	beqz	a0,80002f88 <__printf+0x2a0>
    80002d6c:	00002a37          	lui	s4,0x2
    80002d70:	00018ab7          	lui	s5,0x18
    80002d74:	000f4b37          	lui	s6,0xf4
    80002d78:	00989bb7          	lui	s7,0x989
    80002d7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002d80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002d84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002d88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002d8c:	00148c9b          	addiw	s9,s1,1
    80002d90:	02500793          	li	a5,37
    80002d94:	01998933          	add	s2,s3,s9
    80002d98:	38f51263          	bne	a0,a5,8000311c <__printf+0x434>
    80002d9c:	00094783          	lbu	a5,0(s2)
    80002da0:	00078c9b          	sext.w	s9,a5
    80002da4:	1e078263          	beqz	a5,80002f88 <__printf+0x2a0>
    80002da8:	0024849b          	addiw	s1,s1,2
    80002dac:	07000713          	li	a4,112
    80002db0:	00998933          	add	s2,s3,s1
    80002db4:	38e78a63          	beq	a5,a4,80003148 <__printf+0x460>
    80002db8:	20f76863          	bltu	a4,a5,80002fc8 <__printf+0x2e0>
    80002dbc:	42a78863          	beq	a5,a0,800031ec <__printf+0x504>
    80002dc0:	06400713          	li	a4,100
    80002dc4:	40e79663          	bne	a5,a4,800031d0 <__printf+0x4e8>
    80002dc8:	f7843783          	ld	a5,-136(s0)
    80002dcc:	0007a603          	lw	a2,0(a5)
    80002dd0:	00878793          	addi	a5,a5,8
    80002dd4:	f6f43c23          	sd	a5,-136(s0)
    80002dd8:	42064a63          	bltz	a2,8000320c <__printf+0x524>
    80002ddc:	00a00713          	li	a4,10
    80002de0:	02e677bb          	remuw	a5,a2,a4
    80002de4:	00002d97          	auipc	s11,0x2
    80002de8:	474d8d93          	addi	s11,s11,1140 # 80005258 <digits>
    80002dec:	00900593          	li	a1,9
    80002df0:	0006051b          	sext.w	a0,a2
    80002df4:	00000c93          	li	s9,0
    80002df8:	02079793          	slli	a5,a5,0x20
    80002dfc:	0207d793          	srli	a5,a5,0x20
    80002e00:	00fd87b3          	add	a5,s11,a5
    80002e04:	0007c783          	lbu	a5,0(a5)
    80002e08:	02e656bb          	divuw	a3,a2,a4
    80002e0c:	f8f40023          	sb	a5,-128(s0)
    80002e10:	14c5d863          	bge	a1,a2,80002f60 <__printf+0x278>
    80002e14:	06300593          	li	a1,99
    80002e18:	00100c93          	li	s9,1
    80002e1c:	02e6f7bb          	remuw	a5,a3,a4
    80002e20:	02079793          	slli	a5,a5,0x20
    80002e24:	0207d793          	srli	a5,a5,0x20
    80002e28:	00fd87b3          	add	a5,s11,a5
    80002e2c:	0007c783          	lbu	a5,0(a5)
    80002e30:	02e6d73b          	divuw	a4,a3,a4
    80002e34:	f8f400a3          	sb	a5,-127(s0)
    80002e38:	12a5f463          	bgeu	a1,a0,80002f60 <__printf+0x278>
    80002e3c:	00a00693          	li	a3,10
    80002e40:	00900593          	li	a1,9
    80002e44:	02d777bb          	remuw	a5,a4,a3
    80002e48:	02079793          	slli	a5,a5,0x20
    80002e4c:	0207d793          	srli	a5,a5,0x20
    80002e50:	00fd87b3          	add	a5,s11,a5
    80002e54:	0007c503          	lbu	a0,0(a5)
    80002e58:	02d757bb          	divuw	a5,a4,a3
    80002e5c:	f8a40123          	sb	a0,-126(s0)
    80002e60:	48e5f263          	bgeu	a1,a4,800032e4 <__printf+0x5fc>
    80002e64:	06300513          	li	a0,99
    80002e68:	02d7f5bb          	remuw	a1,a5,a3
    80002e6c:	02059593          	slli	a1,a1,0x20
    80002e70:	0205d593          	srli	a1,a1,0x20
    80002e74:	00bd85b3          	add	a1,s11,a1
    80002e78:	0005c583          	lbu	a1,0(a1)
    80002e7c:	02d7d7bb          	divuw	a5,a5,a3
    80002e80:	f8b401a3          	sb	a1,-125(s0)
    80002e84:	48e57263          	bgeu	a0,a4,80003308 <__printf+0x620>
    80002e88:	3e700513          	li	a0,999
    80002e8c:	02d7f5bb          	remuw	a1,a5,a3
    80002e90:	02059593          	slli	a1,a1,0x20
    80002e94:	0205d593          	srli	a1,a1,0x20
    80002e98:	00bd85b3          	add	a1,s11,a1
    80002e9c:	0005c583          	lbu	a1,0(a1)
    80002ea0:	02d7d7bb          	divuw	a5,a5,a3
    80002ea4:	f8b40223          	sb	a1,-124(s0)
    80002ea8:	46e57663          	bgeu	a0,a4,80003314 <__printf+0x62c>
    80002eac:	02d7f5bb          	remuw	a1,a5,a3
    80002eb0:	02059593          	slli	a1,a1,0x20
    80002eb4:	0205d593          	srli	a1,a1,0x20
    80002eb8:	00bd85b3          	add	a1,s11,a1
    80002ebc:	0005c583          	lbu	a1,0(a1)
    80002ec0:	02d7d7bb          	divuw	a5,a5,a3
    80002ec4:	f8b402a3          	sb	a1,-123(s0)
    80002ec8:	46ea7863          	bgeu	s4,a4,80003338 <__printf+0x650>
    80002ecc:	02d7f5bb          	remuw	a1,a5,a3
    80002ed0:	02059593          	slli	a1,a1,0x20
    80002ed4:	0205d593          	srli	a1,a1,0x20
    80002ed8:	00bd85b3          	add	a1,s11,a1
    80002edc:	0005c583          	lbu	a1,0(a1)
    80002ee0:	02d7d7bb          	divuw	a5,a5,a3
    80002ee4:	f8b40323          	sb	a1,-122(s0)
    80002ee8:	3eeaf863          	bgeu	s5,a4,800032d8 <__printf+0x5f0>
    80002eec:	02d7f5bb          	remuw	a1,a5,a3
    80002ef0:	02059593          	slli	a1,a1,0x20
    80002ef4:	0205d593          	srli	a1,a1,0x20
    80002ef8:	00bd85b3          	add	a1,s11,a1
    80002efc:	0005c583          	lbu	a1,0(a1)
    80002f00:	02d7d7bb          	divuw	a5,a5,a3
    80002f04:	f8b403a3          	sb	a1,-121(s0)
    80002f08:	42eb7e63          	bgeu	s6,a4,80003344 <__printf+0x65c>
    80002f0c:	02d7f5bb          	remuw	a1,a5,a3
    80002f10:	02059593          	slli	a1,a1,0x20
    80002f14:	0205d593          	srli	a1,a1,0x20
    80002f18:	00bd85b3          	add	a1,s11,a1
    80002f1c:	0005c583          	lbu	a1,0(a1)
    80002f20:	02d7d7bb          	divuw	a5,a5,a3
    80002f24:	f8b40423          	sb	a1,-120(s0)
    80002f28:	42ebfc63          	bgeu	s7,a4,80003360 <__printf+0x678>
    80002f2c:	02079793          	slli	a5,a5,0x20
    80002f30:	0207d793          	srli	a5,a5,0x20
    80002f34:	00fd8db3          	add	s11,s11,a5
    80002f38:	000dc703          	lbu	a4,0(s11)
    80002f3c:	00a00793          	li	a5,10
    80002f40:	00900c93          	li	s9,9
    80002f44:	f8e404a3          	sb	a4,-119(s0)
    80002f48:	00065c63          	bgez	a2,80002f60 <__printf+0x278>
    80002f4c:	f9040713          	addi	a4,s0,-112
    80002f50:	00f70733          	add	a4,a4,a5
    80002f54:	02d00693          	li	a3,45
    80002f58:	fed70823          	sb	a3,-16(a4)
    80002f5c:	00078c93          	mv	s9,a5
    80002f60:	f8040793          	addi	a5,s0,-128
    80002f64:	01978cb3          	add	s9,a5,s9
    80002f68:	f7f40d13          	addi	s10,s0,-129
    80002f6c:	000cc503          	lbu	a0,0(s9)
    80002f70:	fffc8c93          	addi	s9,s9,-1
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	b90080e7          	jalr	-1136(ra) # 80002b04 <consputc>
    80002f7c:	ffac98e3          	bne	s9,s10,80002f6c <__printf+0x284>
    80002f80:	00094503          	lbu	a0,0(s2)
    80002f84:	e00514e3          	bnez	a0,80002d8c <__printf+0xa4>
    80002f88:	1a0c1663          	bnez	s8,80003134 <__printf+0x44c>
    80002f8c:	08813083          	ld	ra,136(sp)
    80002f90:	08013403          	ld	s0,128(sp)
    80002f94:	07813483          	ld	s1,120(sp)
    80002f98:	07013903          	ld	s2,112(sp)
    80002f9c:	06813983          	ld	s3,104(sp)
    80002fa0:	06013a03          	ld	s4,96(sp)
    80002fa4:	05813a83          	ld	s5,88(sp)
    80002fa8:	05013b03          	ld	s6,80(sp)
    80002fac:	04813b83          	ld	s7,72(sp)
    80002fb0:	04013c03          	ld	s8,64(sp)
    80002fb4:	03813c83          	ld	s9,56(sp)
    80002fb8:	03013d03          	ld	s10,48(sp)
    80002fbc:	02813d83          	ld	s11,40(sp)
    80002fc0:	0d010113          	addi	sp,sp,208
    80002fc4:	00008067          	ret
    80002fc8:	07300713          	li	a4,115
    80002fcc:	1ce78a63          	beq	a5,a4,800031a0 <__printf+0x4b8>
    80002fd0:	07800713          	li	a4,120
    80002fd4:	1ee79e63          	bne	a5,a4,800031d0 <__printf+0x4e8>
    80002fd8:	f7843783          	ld	a5,-136(s0)
    80002fdc:	0007a703          	lw	a4,0(a5)
    80002fe0:	00878793          	addi	a5,a5,8
    80002fe4:	f6f43c23          	sd	a5,-136(s0)
    80002fe8:	28074263          	bltz	a4,8000326c <__printf+0x584>
    80002fec:	00002d97          	auipc	s11,0x2
    80002ff0:	26cd8d93          	addi	s11,s11,620 # 80005258 <digits>
    80002ff4:	00f77793          	andi	a5,a4,15
    80002ff8:	00fd87b3          	add	a5,s11,a5
    80002ffc:	0007c683          	lbu	a3,0(a5)
    80003000:	00f00613          	li	a2,15
    80003004:	0007079b          	sext.w	a5,a4
    80003008:	f8d40023          	sb	a3,-128(s0)
    8000300c:	0047559b          	srliw	a1,a4,0x4
    80003010:	0047569b          	srliw	a3,a4,0x4
    80003014:	00000c93          	li	s9,0
    80003018:	0ee65063          	bge	a2,a4,800030f8 <__printf+0x410>
    8000301c:	00f6f693          	andi	a3,a3,15
    80003020:	00dd86b3          	add	a3,s11,a3
    80003024:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003028:	0087d79b          	srliw	a5,a5,0x8
    8000302c:	00100c93          	li	s9,1
    80003030:	f8d400a3          	sb	a3,-127(s0)
    80003034:	0cb67263          	bgeu	a2,a1,800030f8 <__printf+0x410>
    80003038:	00f7f693          	andi	a3,a5,15
    8000303c:	00dd86b3          	add	a3,s11,a3
    80003040:	0006c583          	lbu	a1,0(a3)
    80003044:	00f00613          	li	a2,15
    80003048:	0047d69b          	srliw	a3,a5,0x4
    8000304c:	f8b40123          	sb	a1,-126(s0)
    80003050:	0047d593          	srli	a1,a5,0x4
    80003054:	28f67e63          	bgeu	a2,a5,800032f0 <__printf+0x608>
    80003058:	00f6f693          	andi	a3,a3,15
    8000305c:	00dd86b3          	add	a3,s11,a3
    80003060:	0006c503          	lbu	a0,0(a3)
    80003064:	0087d813          	srli	a6,a5,0x8
    80003068:	0087d69b          	srliw	a3,a5,0x8
    8000306c:	f8a401a3          	sb	a0,-125(s0)
    80003070:	28b67663          	bgeu	a2,a1,800032fc <__printf+0x614>
    80003074:	00f6f693          	andi	a3,a3,15
    80003078:	00dd86b3          	add	a3,s11,a3
    8000307c:	0006c583          	lbu	a1,0(a3)
    80003080:	00c7d513          	srli	a0,a5,0xc
    80003084:	00c7d69b          	srliw	a3,a5,0xc
    80003088:	f8b40223          	sb	a1,-124(s0)
    8000308c:	29067a63          	bgeu	a2,a6,80003320 <__printf+0x638>
    80003090:	00f6f693          	andi	a3,a3,15
    80003094:	00dd86b3          	add	a3,s11,a3
    80003098:	0006c583          	lbu	a1,0(a3)
    8000309c:	0107d813          	srli	a6,a5,0x10
    800030a0:	0107d69b          	srliw	a3,a5,0x10
    800030a4:	f8b402a3          	sb	a1,-123(s0)
    800030a8:	28a67263          	bgeu	a2,a0,8000332c <__printf+0x644>
    800030ac:	00f6f693          	andi	a3,a3,15
    800030b0:	00dd86b3          	add	a3,s11,a3
    800030b4:	0006c683          	lbu	a3,0(a3)
    800030b8:	0147d79b          	srliw	a5,a5,0x14
    800030bc:	f8d40323          	sb	a3,-122(s0)
    800030c0:	21067663          	bgeu	a2,a6,800032cc <__printf+0x5e4>
    800030c4:	02079793          	slli	a5,a5,0x20
    800030c8:	0207d793          	srli	a5,a5,0x20
    800030cc:	00fd8db3          	add	s11,s11,a5
    800030d0:	000dc683          	lbu	a3,0(s11)
    800030d4:	00800793          	li	a5,8
    800030d8:	00700c93          	li	s9,7
    800030dc:	f8d403a3          	sb	a3,-121(s0)
    800030e0:	00075c63          	bgez	a4,800030f8 <__printf+0x410>
    800030e4:	f9040713          	addi	a4,s0,-112
    800030e8:	00f70733          	add	a4,a4,a5
    800030ec:	02d00693          	li	a3,45
    800030f0:	fed70823          	sb	a3,-16(a4)
    800030f4:	00078c93          	mv	s9,a5
    800030f8:	f8040793          	addi	a5,s0,-128
    800030fc:	01978cb3          	add	s9,a5,s9
    80003100:	f7f40d13          	addi	s10,s0,-129
    80003104:	000cc503          	lbu	a0,0(s9)
    80003108:	fffc8c93          	addi	s9,s9,-1
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	9f8080e7          	jalr	-1544(ra) # 80002b04 <consputc>
    80003114:	ff9d18e3          	bne	s10,s9,80003104 <__printf+0x41c>
    80003118:	0100006f          	j	80003128 <__printf+0x440>
    8000311c:	00000097          	auipc	ra,0x0
    80003120:	9e8080e7          	jalr	-1560(ra) # 80002b04 <consputc>
    80003124:	000c8493          	mv	s1,s9
    80003128:	00094503          	lbu	a0,0(s2)
    8000312c:	c60510e3          	bnez	a0,80002d8c <__printf+0xa4>
    80003130:	e40c0ee3          	beqz	s8,80002f8c <__printf+0x2a4>
    80003134:	00004517          	auipc	a0,0x4
    80003138:	97c50513          	addi	a0,a0,-1668 # 80006ab0 <pr>
    8000313c:	00001097          	auipc	ra,0x1
    80003140:	94c080e7          	jalr	-1716(ra) # 80003a88 <release>
    80003144:	e49ff06f          	j	80002f8c <__printf+0x2a4>
    80003148:	f7843783          	ld	a5,-136(s0)
    8000314c:	03000513          	li	a0,48
    80003150:	01000d13          	li	s10,16
    80003154:	00878713          	addi	a4,a5,8
    80003158:	0007bc83          	ld	s9,0(a5)
    8000315c:	f6e43c23          	sd	a4,-136(s0)
    80003160:	00000097          	auipc	ra,0x0
    80003164:	9a4080e7          	jalr	-1628(ra) # 80002b04 <consputc>
    80003168:	07800513          	li	a0,120
    8000316c:	00000097          	auipc	ra,0x0
    80003170:	998080e7          	jalr	-1640(ra) # 80002b04 <consputc>
    80003174:	00002d97          	auipc	s11,0x2
    80003178:	0e4d8d93          	addi	s11,s11,228 # 80005258 <digits>
    8000317c:	03ccd793          	srli	a5,s9,0x3c
    80003180:	00fd87b3          	add	a5,s11,a5
    80003184:	0007c503          	lbu	a0,0(a5)
    80003188:	fffd0d1b          	addiw	s10,s10,-1
    8000318c:	004c9c93          	slli	s9,s9,0x4
    80003190:	00000097          	auipc	ra,0x0
    80003194:	974080e7          	jalr	-1676(ra) # 80002b04 <consputc>
    80003198:	fe0d12e3          	bnez	s10,8000317c <__printf+0x494>
    8000319c:	f8dff06f          	j	80003128 <__printf+0x440>
    800031a0:	f7843783          	ld	a5,-136(s0)
    800031a4:	0007bc83          	ld	s9,0(a5)
    800031a8:	00878793          	addi	a5,a5,8
    800031ac:	f6f43c23          	sd	a5,-136(s0)
    800031b0:	000c9a63          	bnez	s9,800031c4 <__printf+0x4dc>
    800031b4:	1080006f          	j	800032bc <__printf+0x5d4>
    800031b8:	001c8c93          	addi	s9,s9,1
    800031bc:	00000097          	auipc	ra,0x0
    800031c0:	948080e7          	jalr	-1720(ra) # 80002b04 <consputc>
    800031c4:	000cc503          	lbu	a0,0(s9)
    800031c8:	fe0518e3          	bnez	a0,800031b8 <__printf+0x4d0>
    800031cc:	f5dff06f          	j	80003128 <__printf+0x440>
    800031d0:	02500513          	li	a0,37
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	930080e7          	jalr	-1744(ra) # 80002b04 <consputc>
    800031dc:	000c8513          	mv	a0,s9
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	924080e7          	jalr	-1756(ra) # 80002b04 <consputc>
    800031e8:	f41ff06f          	j	80003128 <__printf+0x440>
    800031ec:	02500513          	li	a0,37
    800031f0:	00000097          	auipc	ra,0x0
    800031f4:	914080e7          	jalr	-1772(ra) # 80002b04 <consputc>
    800031f8:	f31ff06f          	j	80003128 <__printf+0x440>
    800031fc:	00030513          	mv	a0,t1
    80003200:	00000097          	auipc	ra,0x0
    80003204:	7bc080e7          	jalr	1980(ra) # 800039bc <acquire>
    80003208:	b4dff06f          	j	80002d54 <__printf+0x6c>
    8000320c:	40c0053b          	negw	a0,a2
    80003210:	00a00713          	li	a4,10
    80003214:	02e576bb          	remuw	a3,a0,a4
    80003218:	00002d97          	auipc	s11,0x2
    8000321c:	040d8d93          	addi	s11,s11,64 # 80005258 <digits>
    80003220:	ff700593          	li	a1,-9
    80003224:	02069693          	slli	a3,a3,0x20
    80003228:	0206d693          	srli	a3,a3,0x20
    8000322c:	00dd86b3          	add	a3,s11,a3
    80003230:	0006c683          	lbu	a3,0(a3)
    80003234:	02e557bb          	divuw	a5,a0,a4
    80003238:	f8d40023          	sb	a3,-128(s0)
    8000323c:	10b65e63          	bge	a2,a1,80003358 <__printf+0x670>
    80003240:	06300593          	li	a1,99
    80003244:	02e7f6bb          	remuw	a3,a5,a4
    80003248:	02069693          	slli	a3,a3,0x20
    8000324c:	0206d693          	srli	a3,a3,0x20
    80003250:	00dd86b3          	add	a3,s11,a3
    80003254:	0006c683          	lbu	a3,0(a3)
    80003258:	02e7d73b          	divuw	a4,a5,a4
    8000325c:	00200793          	li	a5,2
    80003260:	f8d400a3          	sb	a3,-127(s0)
    80003264:	bca5ece3          	bltu	a1,a0,80002e3c <__printf+0x154>
    80003268:	ce5ff06f          	j	80002f4c <__printf+0x264>
    8000326c:	40e007bb          	negw	a5,a4
    80003270:	00002d97          	auipc	s11,0x2
    80003274:	fe8d8d93          	addi	s11,s11,-24 # 80005258 <digits>
    80003278:	00f7f693          	andi	a3,a5,15
    8000327c:	00dd86b3          	add	a3,s11,a3
    80003280:	0006c583          	lbu	a1,0(a3)
    80003284:	ff100613          	li	a2,-15
    80003288:	0047d69b          	srliw	a3,a5,0x4
    8000328c:	f8b40023          	sb	a1,-128(s0)
    80003290:	0047d59b          	srliw	a1,a5,0x4
    80003294:	0ac75e63          	bge	a4,a2,80003350 <__printf+0x668>
    80003298:	00f6f693          	andi	a3,a3,15
    8000329c:	00dd86b3          	add	a3,s11,a3
    800032a0:	0006c603          	lbu	a2,0(a3)
    800032a4:	00f00693          	li	a3,15
    800032a8:	0087d79b          	srliw	a5,a5,0x8
    800032ac:	f8c400a3          	sb	a2,-127(s0)
    800032b0:	d8b6e4e3          	bltu	a3,a1,80003038 <__printf+0x350>
    800032b4:	00200793          	li	a5,2
    800032b8:	e2dff06f          	j	800030e4 <__printf+0x3fc>
    800032bc:	00002c97          	auipc	s9,0x2
    800032c0:	f7cc8c93          	addi	s9,s9,-132 # 80005238 <_ZZ12printIntegermE6digits+0x148>
    800032c4:	02800513          	li	a0,40
    800032c8:	ef1ff06f          	j	800031b8 <__printf+0x4d0>
    800032cc:	00700793          	li	a5,7
    800032d0:	00600c93          	li	s9,6
    800032d4:	e0dff06f          	j	800030e0 <__printf+0x3f8>
    800032d8:	00700793          	li	a5,7
    800032dc:	00600c93          	li	s9,6
    800032e0:	c69ff06f          	j	80002f48 <__printf+0x260>
    800032e4:	00300793          	li	a5,3
    800032e8:	00200c93          	li	s9,2
    800032ec:	c5dff06f          	j	80002f48 <__printf+0x260>
    800032f0:	00300793          	li	a5,3
    800032f4:	00200c93          	li	s9,2
    800032f8:	de9ff06f          	j	800030e0 <__printf+0x3f8>
    800032fc:	00400793          	li	a5,4
    80003300:	00300c93          	li	s9,3
    80003304:	dddff06f          	j	800030e0 <__printf+0x3f8>
    80003308:	00400793          	li	a5,4
    8000330c:	00300c93          	li	s9,3
    80003310:	c39ff06f          	j	80002f48 <__printf+0x260>
    80003314:	00500793          	li	a5,5
    80003318:	00400c93          	li	s9,4
    8000331c:	c2dff06f          	j	80002f48 <__printf+0x260>
    80003320:	00500793          	li	a5,5
    80003324:	00400c93          	li	s9,4
    80003328:	db9ff06f          	j	800030e0 <__printf+0x3f8>
    8000332c:	00600793          	li	a5,6
    80003330:	00500c93          	li	s9,5
    80003334:	dadff06f          	j	800030e0 <__printf+0x3f8>
    80003338:	00600793          	li	a5,6
    8000333c:	00500c93          	li	s9,5
    80003340:	c09ff06f          	j	80002f48 <__printf+0x260>
    80003344:	00800793          	li	a5,8
    80003348:	00700c93          	li	s9,7
    8000334c:	bfdff06f          	j	80002f48 <__printf+0x260>
    80003350:	00100793          	li	a5,1
    80003354:	d91ff06f          	j	800030e4 <__printf+0x3fc>
    80003358:	00100793          	li	a5,1
    8000335c:	bf1ff06f          	j	80002f4c <__printf+0x264>
    80003360:	00900793          	li	a5,9
    80003364:	00800c93          	li	s9,8
    80003368:	be1ff06f          	j	80002f48 <__printf+0x260>
    8000336c:	00002517          	auipc	a0,0x2
    80003370:	ed450513          	addi	a0,a0,-300 # 80005240 <_ZZ12printIntegermE6digits+0x150>
    80003374:	00000097          	auipc	ra,0x0
    80003378:	918080e7          	jalr	-1768(ra) # 80002c8c <panic>

000000008000337c <printfinit>:
    8000337c:	fe010113          	addi	sp,sp,-32
    80003380:	00813823          	sd	s0,16(sp)
    80003384:	00913423          	sd	s1,8(sp)
    80003388:	00113c23          	sd	ra,24(sp)
    8000338c:	02010413          	addi	s0,sp,32
    80003390:	00003497          	auipc	s1,0x3
    80003394:	72048493          	addi	s1,s1,1824 # 80006ab0 <pr>
    80003398:	00048513          	mv	a0,s1
    8000339c:	00002597          	auipc	a1,0x2
    800033a0:	eb458593          	addi	a1,a1,-332 # 80005250 <_ZZ12printIntegermE6digits+0x160>
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	5f4080e7          	jalr	1524(ra) # 80003998 <initlock>
    800033ac:	01813083          	ld	ra,24(sp)
    800033b0:	01013403          	ld	s0,16(sp)
    800033b4:	0004ac23          	sw	zero,24(s1)
    800033b8:	00813483          	ld	s1,8(sp)
    800033bc:	02010113          	addi	sp,sp,32
    800033c0:	00008067          	ret

00000000800033c4 <uartinit>:
    800033c4:	ff010113          	addi	sp,sp,-16
    800033c8:	00813423          	sd	s0,8(sp)
    800033cc:	01010413          	addi	s0,sp,16
    800033d0:	100007b7          	lui	a5,0x10000
    800033d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800033d8:	f8000713          	li	a4,-128
    800033dc:	00e781a3          	sb	a4,3(a5)
    800033e0:	00300713          	li	a4,3
    800033e4:	00e78023          	sb	a4,0(a5)
    800033e8:	000780a3          	sb	zero,1(a5)
    800033ec:	00e781a3          	sb	a4,3(a5)
    800033f0:	00700693          	li	a3,7
    800033f4:	00d78123          	sb	a3,2(a5)
    800033f8:	00e780a3          	sb	a4,1(a5)
    800033fc:	00813403          	ld	s0,8(sp)
    80003400:	01010113          	addi	sp,sp,16
    80003404:	00008067          	ret

0000000080003408 <uartputc>:
    80003408:	00002797          	auipc	a5,0x2
    8000340c:	4307a783          	lw	a5,1072(a5) # 80005838 <panicked>
    80003410:	00078463          	beqz	a5,80003418 <uartputc+0x10>
    80003414:	0000006f          	j	80003414 <uartputc+0xc>
    80003418:	fd010113          	addi	sp,sp,-48
    8000341c:	02813023          	sd	s0,32(sp)
    80003420:	00913c23          	sd	s1,24(sp)
    80003424:	01213823          	sd	s2,16(sp)
    80003428:	01313423          	sd	s3,8(sp)
    8000342c:	02113423          	sd	ra,40(sp)
    80003430:	03010413          	addi	s0,sp,48
    80003434:	00002917          	auipc	s2,0x2
    80003438:	40c90913          	addi	s2,s2,1036 # 80005840 <uart_tx_r>
    8000343c:	00093783          	ld	a5,0(s2)
    80003440:	00002497          	auipc	s1,0x2
    80003444:	40848493          	addi	s1,s1,1032 # 80005848 <uart_tx_w>
    80003448:	0004b703          	ld	a4,0(s1)
    8000344c:	02078693          	addi	a3,a5,32
    80003450:	00050993          	mv	s3,a0
    80003454:	02e69c63          	bne	a3,a4,8000348c <uartputc+0x84>
    80003458:	00001097          	auipc	ra,0x1
    8000345c:	834080e7          	jalr	-1996(ra) # 80003c8c <push_on>
    80003460:	00093783          	ld	a5,0(s2)
    80003464:	0004b703          	ld	a4,0(s1)
    80003468:	02078793          	addi	a5,a5,32
    8000346c:	00e79463          	bne	a5,a4,80003474 <uartputc+0x6c>
    80003470:	0000006f          	j	80003470 <uartputc+0x68>
    80003474:	00001097          	auipc	ra,0x1
    80003478:	88c080e7          	jalr	-1908(ra) # 80003d00 <pop_on>
    8000347c:	00093783          	ld	a5,0(s2)
    80003480:	0004b703          	ld	a4,0(s1)
    80003484:	02078693          	addi	a3,a5,32
    80003488:	fce688e3          	beq	a3,a4,80003458 <uartputc+0x50>
    8000348c:	01f77693          	andi	a3,a4,31
    80003490:	00003597          	auipc	a1,0x3
    80003494:	64058593          	addi	a1,a1,1600 # 80006ad0 <uart_tx_buf>
    80003498:	00d586b3          	add	a3,a1,a3
    8000349c:	00170713          	addi	a4,a4,1
    800034a0:	01368023          	sb	s3,0(a3)
    800034a4:	00e4b023          	sd	a4,0(s1)
    800034a8:	10000637          	lui	a2,0x10000
    800034ac:	02f71063          	bne	a4,a5,800034cc <uartputc+0xc4>
    800034b0:	0340006f          	j	800034e4 <uartputc+0xdc>
    800034b4:	00074703          	lbu	a4,0(a4)
    800034b8:	00f93023          	sd	a5,0(s2)
    800034bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800034c0:	00093783          	ld	a5,0(s2)
    800034c4:	0004b703          	ld	a4,0(s1)
    800034c8:	00f70e63          	beq	a4,a5,800034e4 <uartputc+0xdc>
    800034cc:	00564683          	lbu	a3,5(a2)
    800034d0:	01f7f713          	andi	a4,a5,31
    800034d4:	00e58733          	add	a4,a1,a4
    800034d8:	0206f693          	andi	a3,a3,32
    800034dc:	00178793          	addi	a5,a5,1
    800034e0:	fc069ae3          	bnez	a3,800034b4 <uartputc+0xac>
    800034e4:	02813083          	ld	ra,40(sp)
    800034e8:	02013403          	ld	s0,32(sp)
    800034ec:	01813483          	ld	s1,24(sp)
    800034f0:	01013903          	ld	s2,16(sp)
    800034f4:	00813983          	ld	s3,8(sp)
    800034f8:	03010113          	addi	sp,sp,48
    800034fc:	00008067          	ret

0000000080003500 <uartputc_sync>:
    80003500:	ff010113          	addi	sp,sp,-16
    80003504:	00813423          	sd	s0,8(sp)
    80003508:	01010413          	addi	s0,sp,16
    8000350c:	00002717          	auipc	a4,0x2
    80003510:	32c72703          	lw	a4,812(a4) # 80005838 <panicked>
    80003514:	02071663          	bnez	a4,80003540 <uartputc_sync+0x40>
    80003518:	00050793          	mv	a5,a0
    8000351c:	100006b7          	lui	a3,0x10000
    80003520:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003524:	02077713          	andi	a4,a4,32
    80003528:	fe070ce3          	beqz	a4,80003520 <uartputc_sync+0x20>
    8000352c:	0ff7f793          	andi	a5,a5,255
    80003530:	00f68023          	sb	a5,0(a3)
    80003534:	00813403          	ld	s0,8(sp)
    80003538:	01010113          	addi	sp,sp,16
    8000353c:	00008067          	ret
    80003540:	0000006f          	j	80003540 <uartputc_sync+0x40>

0000000080003544 <uartstart>:
    80003544:	ff010113          	addi	sp,sp,-16
    80003548:	00813423          	sd	s0,8(sp)
    8000354c:	01010413          	addi	s0,sp,16
    80003550:	00002617          	auipc	a2,0x2
    80003554:	2f060613          	addi	a2,a2,752 # 80005840 <uart_tx_r>
    80003558:	00002517          	auipc	a0,0x2
    8000355c:	2f050513          	addi	a0,a0,752 # 80005848 <uart_tx_w>
    80003560:	00063783          	ld	a5,0(a2)
    80003564:	00053703          	ld	a4,0(a0)
    80003568:	04f70263          	beq	a4,a5,800035ac <uartstart+0x68>
    8000356c:	100005b7          	lui	a1,0x10000
    80003570:	00003817          	auipc	a6,0x3
    80003574:	56080813          	addi	a6,a6,1376 # 80006ad0 <uart_tx_buf>
    80003578:	01c0006f          	j	80003594 <uartstart+0x50>
    8000357c:	0006c703          	lbu	a4,0(a3)
    80003580:	00f63023          	sd	a5,0(a2)
    80003584:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003588:	00063783          	ld	a5,0(a2)
    8000358c:	00053703          	ld	a4,0(a0)
    80003590:	00f70e63          	beq	a4,a5,800035ac <uartstart+0x68>
    80003594:	01f7f713          	andi	a4,a5,31
    80003598:	00e806b3          	add	a3,a6,a4
    8000359c:	0055c703          	lbu	a4,5(a1)
    800035a0:	00178793          	addi	a5,a5,1
    800035a4:	02077713          	andi	a4,a4,32
    800035a8:	fc071ae3          	bnez	a4,8000357c <uartstart+0x38>
    800035ac:	00813403          	ld	s0,8(sp)
    800035b0:	01010113          	addi	sp,sp,16
    800035b4:	00008067          	ret

00000000800035b8 <uartgetc>:
    800035b8:	ff010113          	addi	sp,sp,-16
    800035bc:	00813423          	sd	s0,8(sp)
    800035c0:	01010413          	addi	s0,sp,16
    800035c4:	10000737          	lui	a4,0x10000
    800035c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800035cc:	0017f793          	andi	a5,a5,1
    800035d0:	00078c63          	beqz	a5,800035e8 <uartgetc+0x30>
    800035d4:	00074503          	lbu	a0,0(a4)
    800035d8:	0ff57513          	andi	a0,a0,255
    800035dc:	00813403          	ld	s0,8(sp)
    800035e0:	01010113          	addi	sp,sp,16
    800035e4:	00008067          	ret
    800035e8:	fff00513          	li	a0,-1
    800035ec:	ff1ff06f          	j	800035dc <uartgetc+0x24>

00000000800035f0 <uartintr>:
    800035f0:	100007b7          	lui	a5,0x10000
    800035f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800035f8:	0017f793          	andi	a5,a5,1
    800035fc:	0a078463          	beqz	a5,800036a4 <uartintr+0xb4>
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00813823          	sd	s0,16(sp)
    80003608:	00913423          	sd	s1,8(sp)
    8000360c:	00113c23          	sd	ra,24(sp)
    80003610:	02010413          	addi	s0,sp,32
    80003614:	100004b7          	lui	s1,0x10000
    80003618:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000361c:	0ff57513          	andi	a0,a0,255
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	534080e7          	jalr	1332(ra) # 80002b54 <consoleintr>
    80003628:	0054c783          	lbu	a5,5(s1)
    8000362c:	0017f793          	andi	a5,a5,1
    80003630:	fe0794e3          	bnez	a5,80003618 <uartintr+0x28>
    80003634:	00002617          	auipc	a2,0x2
    80003638:	20c60613          	addi	a2,a2,524 # 80005840 <uart_tx_r>
    8000363c:	00002517          	auipc	a0,0x2
    80003640:	20c50513          	addi	a0,a0,524 # 80005848 <uart_tx_w>
    80003644:	00063783          	ld	a5,0(a2)
    80003648:	00053703          	ld	a4,0(a0)
    8000364c:	04f70263          	beq	a4,a5,80003690 <uartintr+0xa0>
    80003650:	100005b7          	lui	a1,0x10000
    80003654:	00003817          	auipc	a6,0x3
    80003658:	47c80813          	addi	a6,a6,1148 # 80006ad0 <uart_tx_buf>
    8000365c:	01c0006f          	j	80003678 <uartintr+0x88>
    80003660:	0006c703          	lbu	a4,0(a3)
    80003664:	00f63023          	sd	a5,0(a2)
    80003668:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000366c:	00063783          	ld	a5,0(a2)
    80003670:	00053703          	ld	a4,0(a0)
    80003674:	00f70e63          	beq	a4,a5,80003690 <uartintr+0xa0>
    80003678:	01f7f713          	andi	a4,a5,31
    8000367c:	00e806b3          	add	a3,a6,a4
    80003680:	0055c703          	lbu	a4,5(a1)
    80003684:	00178793          	addi	a5,a5,1
    80003688:	02077713          	andi	a4,a4,32
    8000368c:	fc071ae3          	bnez	a4,80003660 <uartintr+0x70>
    80003690:	01813083          	ld	ra,24(sp)
    80003694:	01013403          	ld	s0,16(sp)
    80003698:	00813483          	ld	s1,8(sp)
    8000369c:	02010113          	addi	sp,sp,32
    800036a0:	00008067          	ret
    800036a4:	00002617          	auipc	a2,0x2
    800036a8:	19c60613          	addi	a2,a2,412 # 80005840 <uart_tx_r>
    800036ac:	00002517          	auipc	a0,0x2
    800036b0:	19c50513          	addi	a0,a0,412 # 80005848 <uart_tx_w>
    800036b4:	00063783          	ld	a5,0(a2)
    800036b8:	00053703          	ld	a4,0(a0)
    800036bc:	04f70263          	beq	a4,a5,80003700 <uartintr+0x110>
    800036c0:	100005b7          	lui	a1,0x10000
    800036c4:	00003817          	auipc	a6,0x3
    800036c8:	40c80813          	addi	a6,a6,1036 # 80006ad0 <uart_tx_buf>
    800036cc:	01c0006f          	j	800036e8 <uartintr+0xf8>
    800036d0:	0006c703          	lbu	a4,0(a3)
    800036d4:	00f63023          	sd	a5,0(a2)
    800036d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036dc:	00063783          	ld	a5,0(a2)
    800036e0:	00053703          	ld	a4,0(a0)
    800036e4:	02f70063          	beq	a4,a5,80003704 <uartintr+0x114>
    800036e8:	01f7f713          	andi	a4,a5,31
    800036ec:	00e806b3          	add	a3,a6,a4
    800036f0:	0055c703          	lbu	a4,5(a1)
    800036f4:	00178793          	addi	a5,a5,1
    800036f8:	02077713          	andi	a4,a4,32
    800036fc:	fc071ae3          	bnez	a4,800036d0 <uartintr+0xe0>
    80003700:	00008067          	ret
    80003704:	00008067          	ret

0000000080003708 <kinit>:
    80003708:	fc010113          	addi	sp,sp,-64
    8000370c:	02913423          	sd	s1,40(sp)
    80003710:	fffff7b7          	lui	a5,0xfffff
    80003714:	00004497          	auipc	s1,0x4
    80003718:	3eb48493          	addi	s1,s1,1003 # 80007aff <end+0xfff>
    8000371c:	02813823          	sd	s0,48(sp)
    80003720:	01313c23          	sd	s3,24(sp)
    80003724:	00f4f4b3          	and	s1,s1,a5
    80003728:	02113c23          	sd	ra,56(sp)
    8000372c:	03213023          	sd	s2,32(sp)
    80003730:	01413823          	sd	s4,16(sp)
    80003734:	01513423          	sd	s5,8(sp)
    80003738:	04010413          	addi	s0,sp,64
    8000373c:	000017b7          	lui	a5,0x1
    80003740:	01100993          	li	s3,17
    80003744:	00f487b3          	add	a5,s1,a5
    80003748:	01b99993          	slli	s3,s3,0x1b
    8000374c:	06f9e063          	bltu	s3,a5,800037ac <kinit+0xa4>
    80003750:	00003a97          	auipc	s5,0x3
    80003754:	3b0a8a93          	addi	s5,s5,944 # 80006b00 <end>
    80003758:	0754ec63          	bltu	s1,s5,800037d0 <kinit+0xc8>
    8000375c:	0734fa63          	bgeu	s1,s3,800037d0 <kinit+0xc8>
    80003760:	00088a37          	lui	s4,0x88
    80003764:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003768:	00002917          	auipc	s2,0x2
    8000376c:	0e890913          	addi	s2,s2,232 # 80005850 <kmem>
    80003770:	00ca1a13          	slli	s4,s4,0xc
    80003774:	0140006f          	j	80003788 <kinit+0x80>
    80003778:	000017b7          	lui	a5,0x1
    8000377c:	00f484b3          	add	s1,s1,a5
    80003780:	0554e863          	bltu	s1,s5,800037d0 <kinit+0xc8>
    80003784:	0534f663          	bgeu	s1,s3,800037d0 <kinit+0xc8>
    80003788:	00001637          	lui	a2,0x1
    8000378c:	00100593          	li	a1,1
    80003790:	00048513          	mv	a0,s1
    80003794:	00000097          	auipc	ra,0x0
    80003798:	5e4080e7          	jalr	1508(ra) # 80003d78 <__memset>
    8000379c:	00093783          	ld	a5,0(s2)
    800037a0:	00f4b023          	sd	a5,0(s1)
    800037a4:	00993023          	sd	s1,0(s2)
    800037a8:	fd4498e3          	bne	s1,s4,80003778 <kinit+0x70>
    800037ac:	03813083          	ld	ra,56(sp)
    800037b0:	03013403          	ld	s0,48(sp)
    800037b4:	02813483          	ld	s1,40(sp)
    800037b8:	02013903          	ld	s2,32(sp)
    800037bc:	01813983          	ld	s3,24(sp)
    800037c0:	01013a03          	ld	s4,16(sp)
    800037c4:	00813a83          	ld	s5,8(sp)
    800037c8:	04010113          	addi	sp,sp,64
    800037cc:	00008067          	ret
    800037d0:	00002517          	auipc	a0,0x2
    800037d4:	aa050513          	addi	a0,a0,-1376 # 80005270 <digits+0x18>
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	4b4080e7          	jalr	1204(ra) # 80002c8c <panic>

00000000800037e0 <freerange>:
    800037e0:	fc010113          	addi	sp,sp,-64
    800037e4:	000017b7          	lui	a5,0x1
    800037e8:	02913423          	sd	s1,40(sp)
    800037ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800037f0:	009504b3          	add	s1,a0,s1
    800037f4:	fffff537          	lui	a0,0xfffff
    800037f8:	02813823          	sd	s0,48(sp)
    800037fc:	02113c23          	sd	ra,56(sp)
    80003800:	03213023          	sd	s2,32(sp)
    80003804:	01313c23          	sd	s3,24(sp)
    80003808:	01413823          	sd	s4,16(sp)
    8000380c:	01513423          	sd	s5,8(sp)
    80003810:	01613023          	sd	s6,0(sp)
    80003814:	04010413          	addi	s0,sp,64
    80003818:	00a4f4b3          	and	s1,s1,a0
    8000381c:	00f487b3          	add	a5,s1,a5
    80003820:	06f5e463          	bltu	a1,a5,80003888 <freerange+0xa8>
    80003824:	00003a97          	auipc	s5,0x3
    80003828:	2dca8a93          	addi	s5,s5,732 # 80006b00 <end>
    8000382c:	0954e263          	bltu	s1,s5,800038b0 <freerange+0xd0>
    80003830:	01100993          	li	s3,17
    80003834:	01b99993          	slli	s3,s3,0x1b
    80003838:	0734fc63          	bgeu	s1,s3,800038b0 <freerange+0xd0>
    8000383c:	00058a13          	mv	s4,a1
    80003840:	00002917          	auipc	s2,0x2
    80003844:	01090913          	addi	s2,s2,16 # 80005850 <kmem>
    80003848:	00002b37          	lui	s6,0x2
    8000384c:	0140006f          	j	80003860 <freerange+0x80>
    80003850:	000017b7          	lui	a5,0x1
    80003854:	00f484b3          	add	s1,s1,a5
    80003858:	0554ec63          	bltu	s1,s5,800038b0 <freerange+0xd0>
    8000385c:	0534fa63          	bgeu	s1,s3,800038b0 <freerange+0xd0>
    80003860:	00001637          	lui	a2,0x1
    80003864:	00100593          	li	a1,1
    80003868:	00048513          	mv	a0,s1
    8000386c:	00000097          	auipc	ra,0x0
    80003870:	50c080e7          	jalr	1292(ra) # 80003d78 <__memset>
    80003874:	00093703          	ld	a4,0(s2)
    80003878:	016487b3          	add	a5,s1,s6
    8000387c:	00e4b023          	sd	a4,0(s1)
    80003880:	00993023          	sd	s1,0(s2)
    80003884:	fcfa76e3          	bgeu	s4,a5,80003850 <freerange+0x70>
    80003888:	03813083          	ld	ra,56(sp)
    8000388c:	03013403          	ld	s0,48(sp)
    80003890:	02813483          	ld	s1,40(sp)
    80003894:	02013903          	ld	s2,32(sp)
    80003898:	01813983          	ld	s3,24(sp)
    8000389c:	01013a03          	ld	s4,16(sp)
    800038a0:	00813a83          	ld	s5,8(sp)
    800038a4:	00013b03          	ld	s6,0(sp)
    800038a8:	04010113          	addi	sp,sp,64
    800038ac:	00008067          	ret
    800038b0:	00002517          	auipc	a0,0x2
    800038b4:	9c050513          	addi	a0,a0,-1600 # 80005270 <digits+0x18>
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	3d4080e7          	jalr	980(ra) # 80002c8c <panic>

00000000800038c0 <kfree>:
    800038c0:	fe010113          	addi	sp,sp,-32
    800038c4:	00813823          	sd	s0,16(sp)
    800038c8:	00113c23          	sd	ra,24(sp)
    800038cc:	00913423          	sd	s1,8(sp)
    800038d0:	02010413          	addi	s0,sp,32
    800038d4:	03451793          	slli	a5,a0,0x34
    800038d8:	04079c63          	bnez	a5,80003930 <kfree+0x70>
    800038dc:	00003797          	auipc	a5,0x3
    800038e0:	22478793          	addi	a5,a5,548 # 80006b00 <end>
    800038e4:	00050493          	mv	s1,a0
    800038e8:	04f56463          	bltu	a0,a5,80003930 <kfree+0x70>
    800038ec:	01100793          	li	a5,17
    800038f0:	01b79793          	slli	a5,a5,0x1b
    800038f4:	02f57e63          	bgeu	a0,a5,80003930 <kfree+0x70>
    800038f8:	00001637          	lui	a2,0x1
    800038fc:	00100593          	li	a1,1
    80003900:	00000097          	auipc	ra,0x0
    80003904:	478080e7          	jalr	1144(ra) # 80003d78 <__memset>
    80003908:	00002797          	auipc	a5,0x2
    8000390c:	f4878793          	addi	a5,a5,-184 # 80005850 <kmem>
    80003910:	0007b703          	ld	a4,0(a5)
    80003914:	01813083          	ld	ra,24(sp)
    80003918:	01013403          	ld	s0,16(sp)
    8000391c:	00e4b023          	sd	a4,0(s1)
    80003920:	0097b023          	sd	s1,0(a5)
    80003924:	00813483          	ld	s1,8(sp)
    80003928:	02010113          	addi	sp,sp,32
    8000392c:	00008067          	ret
    80003930:	00002517          	auipc	a0,0x2
    80003934:	94050513          	addi	a0,a0,-1728 # 80005270 <digits+0x18>
    80003938:	fffff097          	auipc	ra,0xfffff
    8000393c:	354080e7          	jalr	852(ra) # 80002c8c <panic>

0000000080003940 <kalloc>:
    80003940:	fe010113          	addi	sp,sp,-32
    80003944:	00813823          	sd	s0,16(sp)
    80003948:	00913423          	sd	s1,8(sp)
    8000394c:	00113c23          	sd	ra,24(sp)
    80003950:	02010413          	addi	s0,sp,32
    80003954:	00002797          	auipc	a5,0x2
    80003958:	efc78793          	addi	a5,a5,-260 # 80005850 <kmem>
    8000395c:	0007b483          	ld	s1,0(a5)
    80003960:	02048063          	beqz	s1,80003980 <kalloc+0x40>
    80003964:	0004b703          	ld	a4,0(s1)
    80003968:	00001637          	lui	a2,0x1
    8000396c:	00500593          	li	a1,5
    80003970:	00048513          	mv	a0,s1
    80003974:	00e7b023          	sd	a4,0(a5)
    80003978:	00000097          	auipc	ra,0x0
    8000397c:	400080e7          	jalr	1024(ra) # 80003d78 <__memset>
    80003980:	01813083          	ld	ra,24(sp)
    80003984:	01013403          	ld	s0,16(sp)
    80003988:	00048513          	mv	a0,s1
    8000398c:	00813483          	ld	s1,8(sp)
    80003990:	02010113          	addi	sp,sp,32
    80003994:	00008067          	ret

0000000080003998 <initlock>:
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00813423          	sd	s0,8(sp)
    800039a0:	01010413          	addi	s0,sp,16
    800039a4:	00813403          	ld	s0,8(sp)
    800039a8:	00b53423          	sd	a1,8(a0)
    800039ac:	00052023          	sw	zero,0(a0)
    800039b0:	00053823          	sd	zero,16(a0)
    800039b4:	01010113          	addi	sp,sp,16
    800039b8:	00008067          	ret

00000000800039bc <acquire>:
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00813823          	sd	s0,16(sp)
    800039c4:	00913423          	sd	s1,8(sp)
    800039c8:	00113c23          	sd	ra,24(sp)
    800039cc:	01213023          	sd	s2,0(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00050493          	mv	s1,a0
    800039d8:	10002973          	csrr	s2,sstatus
    800039dc:	100027f3          	csrr	a5,sstatus
    800039e0:	ffd7f793          	andi	a5,a5,-3
    800039e4:	10079073          	csrw	sstatus,a5
    800039e8:	fffff097          	auipc	ra,0xfffff
    800039ec:	8ec080e7          	jalr	-1812(ra) # 800022d4 <mycpu>
    800039f0:	07852783          	lw	a5,120(a0)
    800039f4:	06078e63          	beqz	a5,80003a70 <acquire+0xb4>
    800039f8:	fffff097          	auipc	ra,0xfffff
    800039fc:	8dc080e7          	jalr	-1828(ra) # 800022d4 <mycpu>
    80003a00:	07852783          	lw	a5,120(a0)
    80003a04:	0004a703          	lw	a4,0(s1)
    80003a08:	0017879b          	addiw	a5,a5,1
    80003a0c:	06f52c23          	sw	a5,120(a0)
    80003a10:	04071063          	bnez	a4,80003a50 <acquire+0x94>
    80003a14:	00100713          	li	a4,1
    80003a18:	00070793          	mv	a5,a4
    80003a1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a20:	0007879b          	sext.w	a5,a5
    80003a24:	fe079ae3          	bnez	a5,80003a18 <acquire+0x5c>
    80003a28:	0ff0000f          	fence
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	8a8080e7          	jalr	-1880(ra) # 800022d4 <mycpu>
    80003a34:	01813083          	ld	ra,24(sp)
    80003a38:	01013403          	ld	s0,16(sp)
    80003a3c:	00a4b823          	sd	a0,16(s1)
    80003a40:	00013903          	ld	s2,0(sp)
    80003a44:	00813483          	ld	s1,8(sp)
    80003a48:	02010113          	addi	sp,sp,32
    80003a4c:	00008067          	ret
    80003a50:	0104b903          	ld	s2,16(s1)
    80003a54:	fffff097          	auipc	ra,0xfffff
    80003a58:	880080e7          	jalr	-1920(ra) # 800022d4 <mycpu>
    80003a5c:	faa91ce3          	bne	s2,a0,80003a14 <acquire+0x58>
    80003a60:	00002517          	auipc	a0,0x2
    80003a64:	81850513          	addi	a0,a0,-2024 # 80005278 <digits+0x20>
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	224080e7          	jalr	548(ra) # 80002c8c <panic>
    80003a70:	00195913          	srli	s2,s2,0x1
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	860080e7          	jalr	-1952(ra) # 800022d4 <mycpu>
    80003a7c:	00197913          	andi	s2,s2,1
    80003a80:	07252e23          	sw	s2,124(a0)
    80003a84:	f75ff06f          	j	800039f8 <acquire+0x3c>

0000000080003a88 <release>:
    80003a88:	fe010113          	addi	sp,sp,-32
    80003a8c:	00813823          	sd	s0,16(sp)
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	00913423          	sd	s1,8(sp)
    80003a98:	01213023          	sd	s2,0(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	00052783          	lw	a5,0(a0)
    80003aa4:	00079a63          	bnez	a5,80003ab8 <release+0x30>
    80003aa8:	00001517          	auipc	a0,0x1
    80003aac:	7d850513          	addi	a0,a0,2008 # 80005280 <digits+0x28>
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	1dc080e7          	jalr	476(ra) # 80002c8c <panic>
    80003ab8:	01053903          	ld	s2,16(a0)
    80003abc:	00050493          	mv	s1,a0
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	814080e7          	jalr	-2028(ra) # 800022d4 <mycpu>
    80003ac8:	fea910e3          	bne	s2,a0,80003aa8 <release+0x20>
    80003acc:	0004b823          	sd	zero,16(s1)
    80003ad0:	0ff0000f          	fence
    80003ad4:	0f50000f          	fence	iorw,ow
    80003ad8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003adc:	ffffe097          	auipc	ra,0xffffe
    80003ae0:	7f8080e7          	jalr	2040(ra) # 800022d4 <mycpu>
    80003ae4:	100027f3          	csrr	a5,sstatus
    80003ae8:	0027f793          	andi	a5,a5,2
    80003aec:	04079a63          	bnez	a5,80003b40 <release+0xb8>
    80003af0:	07852783          	lw	a5,120(a0)
    80003af4:	02f05e63          	blez	a5,80003b30 <release+0xa8>
    80003af8:	fff7871b          	addiw	a4,a5,-1
    80003afc:	06e52c23          	sw	a4,120(a0)
    80003b00:	00071c63          	bnez	a4,80003b18 <release+0x90>
    80003b04:	07c52783          	lw	a5,124(a0)
    80003b08:	00078863          	beqz	a5,80003b18 <release+0x90>
    80003b0c:	100027f3          	csrr	a5,sstatus
    80003b10:	0027e793          	ori	a5,a5,2
    80003b14:	10079073          	csrw	sstatus,a5
    80003b18:	01813083          	ld	ra,24(sp)
    80003b1c:	01013403          	ld	s0,16(sp)
    80003b20:	00813483          	ld	s1,8(sp)
    80003b24:	00013903          	ld	s2,0(sp)
    80003b28:	02010113          	addi	sp,sp,32
    80003b2c:	00008067          	ret
    80003b30:	00001517          	auipc	a0,0x1
    80003b34:	77050513          	addi	a0,a0,1904 # 800052a0 <digits+0x48>
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	154080e7          	jalr	340(ra) # 80002c8c <panic>
    80003b40:	00001517          	auipc	a0,0x1
    80003b44:	74850513          	addi	a0,a0,1864 # 80005288 <digits+0x30>
    80003b48:	fffff097          	auipc	ra,0xfffff
    80003b4c:	144080e7          	jalr	324(ra) # 80002c8c <panic>

0000000080003b50 <holding>:
    80003b50:	00052783          	lw	a5,0(a0)
    80003b54:	00079663          	bnez	a5,80003b60 <holding+0x10>
    80003b58:	00000513          	li	a0,0
    80003b5c:	00008067          	ret
    80003b60:	fe010113          	addi	sp,sp,-32
    80003b64:	00813823          	sd	s0,16(sp)
    80003b68:	00913423          	sd	s1,8(sp)
    80003b6c:	00113c23          	sd	ra,24(sp)
    80003b70:	02010413          	addi	s0,sp,32
    80003b74:	01053483          	ld	s1,16(a0)
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	75c080e7          	jalr	1884(ra) # 800022d4 <mycpu>
    80003b80:	01813083          	ld	ra,24(sp)
    80003b84:	01013403          	ld	s0,16(sp)
    80003b88:	40a48533          	sub	a0,s1,a0
    80003b8c:	00153513          	seqz	a0,a0
    80003b90:	00813483          	ld	s1,8(sp)
    80003b94:	02010113          	addi	sp,sp,32
    80003b98:	00008067          	ret

0000000080003b9c <push_off>:
    80003b9c:	fe010113          	addi	sp,sp,-32
    80003ba0:	00813823          	sd	s0,16(sp)
    80003ba4:	00113c23          	sd	ra,24(sp)
    80003ba8:	00913423          	sd	s1,8(sp)
    80003bac:	02010413          	addi	s0,sp,32
    80003bb0:	100024f3          	csrr	s1,sstatus
    80003bb4:	100027f3          	csrr	a5,sstatus
    80003bb8:	ffd7f793          	andi	a5,a5,-3
    80003bbc:	10079073          	csrw	sstatus,a5
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	714080e7          	jalr	1812(ra) # 800022d4 <mycpu>
    80003bc8:	07852783          	lw	a5,120(a0)
    80003bcc:	02078663          	beqz	a5,80003bf8 <push_off+0x5c>
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	704080e7          	jalr	1796(ra) # 800022d4 <mycpu>
    80003bd8:	07852783          	lw	a5,120(a0)
    80003bdc:	01813083          	ld	ra,24(sp)
    80003be0:	01013403          	ld	s0,16(sp)
    80003be4:	0017879b          	addiw	a5,a5,1
    80003be8:	06f52c23          	sw	a5,120(a0)
    80003bec:	00813483          	ld	s1,8(sp)
    80003bf0:	02010113          	addi	sp,sp,32
    80003bf4:	00008067          	ret
    80003bf8:	0014d493          	srli	s1,s1,0x1
    80003bfc:	ffffe097          	auipc	ra,0xffffe
    80003c00:	6d8080e7          	jalr	1752(ra) # 800022d4 <mycpu>
    80003c04:	0014f493          	andi	s1,s1,1
    80003c08:	06952e23          	sw	s1,124(a0)
    80003c0c:	fc5ff06f          	j	80003bd0 <push_off+0x34>

0000000080003c10 <pop_off>:
    80003c10:	ff010113          	addi	sp,sp,-16
    80003c14:	00813023          	sd	s0,0(sp)
    80003c18:	00113423          	sd	ra,8(sp)
    80003c1c:	01010413          	addi	s0,sp,16
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	6b4080e7          	jalr	1716(ra) # 800022d4 <mycpu>
    80003c28:	100027f3          	csrr	a5,sstatus
    80003c2c:	0027f793          	andi	a5,a5,2
    80003c30:	04079663          	bnez	a5,80003c7c <pop_off+0x6c>
    80003c34:	07852783          	lw	a5,120(a0)
    80003c38:	02f05a63          	blez	a5,80003c6c <pop_off+0x5c>
    80003c3c:	fff7871b          	addiw	a4,a5,-1
    80003c40:	06e52c23          	sw	a4,120(a0)
    80003c44:	00071c63          	bnez	a4,80003c5c <pop_off+0x4c>
    80003c48:	07c52783          	lw	a5,124(a0)
    80003c4c:	00078863          	beqz	a5,80003c5c <pop_off+0x4c>
    80003c50:	100027f3          	csrr	a5,sstatus
    80003c54:	0027e793          	ori	a5,a5,2
    80003c58:	10079073          	csrw	sstatus,a5
    80003c5c:	00813083          	ld	ra,8(sp)
    80003c60:	00013403          	ld	s0,0(sp)
    80003c64:	01010113          	addi	sp,sp,16
    80003c68:	00008067          	ret
    80003c6c:	00001517          	auipc	a0,0x1
    80003c70:	63450513          	addi	a0,a0,1588 # 800052a0 <digits+0x48>
    80003c74:	fffff097          	auipc	ra,0xfffff
    80003c78:	018080e7          	jalr	24(ra) # 80002c8c <panic>
    80003c7c:	00001517          	auipc	a0,0x1
    80003c80:	60c50513          	addi	a0,a0,1548 # 80005288 <digits+0x30>
    80003c84:	fffff097          	auipc	ra,0xfffff
    80003c88:	008080e7          	jalr	8(ra) # 80002c8c <panic>

0000000080003c8c <push_on>:
    80003c8c:	fe010113          	addi	sp,sp,-32
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00113c23          	sd	ra,24(sp)
    80003c98:	00913423          	sd	s1,8(sp)
    80003c9c:	02010413          	addi	s0,sp,32
    80003ca0:	100024f3          	csrr	s1,sstatus
    80003ca4:	100027f3          	csrr	a5,sstatus
    80003ca8:	0027e793          	ori	a5,a5,2
    80003cac:	10079073          	csrw	sstatus,a5
    80003cb0:	ffffe097          	auipc	ra,0xffffe
    80003cb4:	624080e7          	jalr	1572(ra) # 800022d4 <mycpu>
    80003cb8:	07852783          	lw	a5,120(a0)
    80003cbc:	02078663          	beqz	a5,80003ce8 <push_on+0x5c>
    80003cc0:	ffffe097          	auipc	ra,0xffffe
    80003cc4:	614080e7          	jalr	1556(ra) # 800022d4 <mycpu>
    80003cc8:	07852783          	lw	a5,120(a0)
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	0017879b          	addiw	a5,a5,1
    80003cd8:	06f52c23          	sw	a5,120(a0)
    80003cdc:	00813483          	ld	s1,8(sp)
    80003ce0:	02010113          	addi	sp,sp,32
    80003ce4:	00008067          	ret
    80003ce8:	0014d493          	srli	s1,s1,0x1
    80003cec:	ffffe097          	auipc	ra,0xffffe
    80003cf0:	5e8080e7          	jalr	1512(ra) # 800022d4 <mycpu>
    80003cf4:	0014f493          	andi	s1,s1,1
    80003cf8:	06952e23          	sw	s1,124(a0)
    80003cfc:	fc5ff06f          	j	80003cc0 <push_on+0x34>

0000000080003d00 <pop_on>:
    80003d00:	ff010113          	addi	sp,sp,-16
    80003d04:	00813023          	sd	s0,0(sp)
    80003d08:	00113423          	sd	ra,8(sp)
    80003d0c:	01010413          	addi	s0,sp,16
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	5c4080e7          	jalr	1476(ra) # 800022d4 <mycpu>
    80003d18:	100027f3          	csrr	a5,sstatus
    80003d1c:	0027f793          	andi	a5,a5,2
    80003d20:	04078463          	beqz	a5,80003d68 <pop_on+0x68>
    80003d24:	07852783          	lw	a5,120(a0)
    80003d28:	02f05863          	blez	a5,80003d58 <pop_on+0x58>
    80003d2c:	fff7879b          	addiw	a5,a5,-1
    80003d30:	06f52c23          	sw	a5,120(a0)
    80003d34:	07853783          	ld	a5,120(a0)
    80003d38:	00079863          	bnez	a5,80003d48 <pop_on+0x48>
    80003d3c:	100027f3          	csrr	a5,sstatus
    80003d40:	ffd7f793          	andi	a5,a5,-3
    80003d44:	10079073          	csrw	sstatus,a5
    80003d48:	00813083          	ld	ra,8(sp)
    80003d4c:	00013403          	ld	s0,0(sp)
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret
    80003d58:	00001517          	auipc	a0,0x1
    80003d5c:	57050513          	addi	a0,a0,1392 # 800052c8 <digits+0x70>
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	f2c080e7          	jalr	-212(ra) # 80002c8c <panic>
    80003d68:	00001517          	auipc	a0,0x1
    80003d6c:	54050513          	addi	a0,a0,1344 # 800052a8 <digits+0x50>
    80003d70:	fffff097          	auipc	ra,0xfffff
    80003d74:	f1c080e7          	jalr	-228(ra) # 80002c8c <panic>

0000000080003d78 <__memset>:
    80003d78:	ff010113          	addi	sp,sp,-16
    80003d7c:	00813423          	sd	s0,8(sp)
    80003d80:	01010413          	addi	s0,sp,16
    80003d84:	1a060e63          	beqz	a2,80003f40 <__memset+0x1c8>
    80003d88:	40a007b3          	neg	a5,a0
    80003d8c:	0077f793          	andi	a5,a5,7
    80003d90:	00778693          	addi	a3,a5,7
    80003d94:	00b00813          	li	a6,11
    80003d98:	0ff5f593          	andi	a1,a1,255
    80003d9c:	fff6071b          	addiw	a4,a2,-1
    80003da0:	1b06e663          	bltu	a3,a6,80003f4c <__memset+0x1d4>
    80003da4:	1cd76463          	bltu	a4,a3,80003f6c <__memset+0x1f4>
    80003da8:	1a078e63          	beqz	a5,80003f64 <__memset+0x1ec>
    80003dac:	00b50023          	sb	a1,0(a0)
    80003db0:	00100713          	li	a4,1
    80003db4:	1ae78463          	beq	a5,a4,80003f5c <__memset+0x1e4>
    80003db8:	00b500a3          	sb	a1,1(a0)
    80003dbc:	00200713          	li	a4,2
    80003dc0:	1ae78a63          	beq	a5,a4,80003f74 <__memset+0x1fc>
    80003dc4:	00b50123          	sb	a1,2(a0)
    80003dc8:	00300713          	li	a4,3
    80003dcc:	18e78463          	beq	a5,a4,80003f54 <__memset+0x1dc>
    80003dd0:	00b501a3          	sb	a1,3(a0)
    80003dd4:	00400713          	li	a4,4
    80003dd8:	1ae78263          	beq	a5,a4,80003f7c <__memset+0x204>
    80003ddc:	00b50223          	sb	a1,4(a0)
    80003de0:	00500713          	li	a4,5
    80003de4:	1ae78063          	beq	a5,a4,80003f84 <__memset+0x20c>
    80003de8:	00b502a3          	sb	a1,5(a0)
    80003dec:	00700713          	li	a4,7
    80003df0:	18e79e63          	bne	a5,a4,80003f8c <__memset+0x214>
    80003df4:	00b50323          	sb	a1,6(a0)
    80003df8:	00700e93          	li	t4,7
    80003dfc:	00859713          	slli	a4,a1,0x8
    80003e00:	00e5e733          	or	a4,a1,a4
    80003e04:	01059e13          	slli	t3,a1,0x10
    80003e08:	01c76e33          	or	t3,a4,t3
    80003e0c:	01859313          	slli	t1,a1,0x18
    80003e10:	006e6333          	or	t1,t3,t1
    80003e14:	02059893          	slli	a7,a1,0x20
    80003e18:	40f60e3b          	subw	t3,a2,a5
    80003e1c:	011368b3          	or	a7,t1,a7
    80003e20:	02859813          	slli	a6,a1,0x28
    80003e24:	0108e833          	or	a6,a7,a6
    80003e28:	03059693          	slli	a3,a1,0x30
    80003e2c:	003e589b          	srliw	a7,t3,0x3
    80003e30:	00d866b3          	or	a3,a6,a3
    80003e34:	03859713          	slli	a4,a1,0x38
    80003e38:	00389813          	slli	a6,a7,0x3
    80003e3c:	00f507b3          	add	a5,a0,a5
    80003e40:	00e6e733          	or	a4,a3,a4
    80003e44:	000e089b          	sext.w	a7,t3
    80003e48:	00f806b3          	add	a3,a6,a5
    80003e4c:	00e7b023          	sd	a4,0(a5)
    80003e50:	00878793          	addi	a5,a5,8
    80003e54:	fed79ce3          	bne	a5,a3,80003e4c <__memset+0xd4>
    80003e58:	ff8e7793          	andi	a5,t3,-8
    80003e5c:	0007871b          	sext.w	a4,a5
    80003e60:	01d787bb          	addw	a5,a5,t4
    80003e64:	0ce88e63          	beq	a7,a4,80003f40 <__memset+0x1c8>
    80003e68:	00f50733          	add	a4,a0,a5
    80003e6c:	00b70023          	sb	a1,0(a4)
    80003e70:	0017871b          	addiw	a4,a5,1
    80003e74:	0cc77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003e78:	00e50733          	add	a4,a0,a4
    80003e7c:	00b70023          	sb	a1,0(a4)
    80003e80:	0027871b          	addiw	a4,a5,2
    80003e84:	0ac77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003e88:	00e50733          	add	a4,a0,a4
    80003e8c:	00b70023          	sb	a1,0(a4)
    80003e90:	0037871b          	addiw	a4,a5,3
    80003e94:	0ac77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	0047871b          	addiw	a4,a5,4
    80003ea4:	08c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	0057871b          	addiw	a4,a5,5
    80003eb4:	08c77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0067871b          	addiw	a4,a5,6
    80003ec4:	06c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0077871b          	addiw	a4,a5,7
    80003ed4:	06c77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	0087871b          	addiw	a4,a5,8
    80003ee4:	04c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	0097871b          	addiw	a4,a5,9
    80003ef4:	04c77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	00a7871b          	addiw	a4,a5,10
    80003f04:	02c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	00b7871b          	addiw	a4,a5,11
    80003f14:	02c77663          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	00c7871b          	addiw	a4,a5,12
    80003f24:	00c77e63          	bgeu	a4,a2,80003f40 <__memset+0x1c8>
    80003f28:	00e50733          	add	a4,a0,a4
    80003f2c:	00b70023          	sb	a1,0(a4)
    80003f30:	00d7879b          	addiw	a5,a5,13
    80003f34:	00c7f663          	bgeu	a5,a2,80003f40 <__memset+0x1c8>
    80003f38:	00f507b3          	add	a5,a0,a5
    80003f3c:	00b78023          	sb	a1,0(a5)
    80003f40:	00813403          	ld	s0,8(sp)
    80003f44:	01010113          	addi	sp,sp,16
    80003f48:	00008067          	ret
    80003f4c:	00b00693          	li	a3,11
    80003f50:	e55ff06f          	j	80003da4 <__memset+0x2c>
    80003f54:	00300e93          	li	t4,3
    80003f58:	ea5ff06f          	j	80003dfc <__memset+0x84>
    80003f5c:	00100e93          	li	t4,1
    80003f60:	e9dff06f          	j	80003dfc <__memset+0x84>
    80003f64:	00000e93          	li	t4,0
    80003f68:	e95ff06f          	j	80003dfc <__memset+0x84>
    80003f6c:	00000793          	li	a5,0
    80003f70:	ef9ff06f          	j	80003e68 <__memset+0xf0>
    80003f74:	00200e93          	li	t4,2
    80003f78:	e85ff06f          	j	80003dfc <__memset+0x84>
    80003f7c:	00400e93          	li	t4,4
    80003f80:	e7dff06f          	j	80003dfc <__memset+0x84>
    80003f84:	00500e93          	li	t4,5
    80003f88:	e75ff06f          	j	80003dfc <__memset+0x84>
    80003f8c:	00600e93          	li	t4,6
    80003f90:	e6dff06f          	j	80003dfc <__memset+0x84>

0000000080003f94 <__memmove>:
    80003f94:	ff010113          	addi	sp,sp,-16
    80003f98:	00813423          	sd	s0,8(sp)
    80003f9c:	01010413          	addi	s0,sp,16
    80003fa0:	0e060863          	beqz	a2,80004090 <__memmove+0xfc>
    80003fa4:	fff6069b          	addiw	a3,a2,-1
    80003fa8:	0006881b          	sext.w	a6,a3
    80003fac:	0ea5e863          	bltu	a1,a0,8000409c <__memmove+0x108>
    80003fb0:	00758713          	addi	a4,a1,7
    80003fb4:	00a5e7b3          	or	a5,a1,a0
    80003fb8:	40a70733          	sub	a4,a4,a0
    80003fbc:	0077f793          	andi	a5,a5,7
    80003fc0:	00f73713          	sltiu	a4,a4,15
    80003fc4:	00174713          	xori	a4,a4,1
    80003fc8:	0017b793          	seqz	a5,a5
    80003fcc:	00e7f7b3          	and	a5,a5,a4
    80003fd0:	10078863          	beqz	a5,800040e0 <__memmove+0x14c>
    80003fd4:	00900793          	li	a5,9
    80003fd8:	1107f463          	bgeu	a5,a6,800040e0 <__memmove+0x14c>
    80003fdc:	0036581b          	srliw	a6,a2,0x3
    80003fe0:	fff8081b          	addiw	a6,a6,-1
    80003fe4:	02081813          	slli	a6,a6,0x20
    80003fe8:	01d85893          	srli	a7,a6,0x1d
    80003fec:	00858813          	addi	a6,a1,8
    80003ff0:	00058793          	mv	a5,a1
    80003ff4:	00050713          	mv	a4,a0
    80003ff8:	01088833          	add	a6,a7,a6
    80003ffc:	0007b883          	ld	a7,0(a5)
    80004000:	00878793          	addi	a5,a5,8
    80004004:	00870713          	addi	a4,a4,8
    80004008:	ff173c23          	sd	a7,-8(a4)
    8000400c:	ff0798e3          	bne	a5,a6,80003ffc <__memmove+0x68>
    80004010:	ff867713          	andi	a4,a2,-8
    80004014:	02071793          	slli	a5,a4,0x20
    80004018:	0207d793          	srli	a5,a5,0x20
    8000401c:	00f585b3          	add	a1,a1,a5
    80004020:	40e686bb          	subw	a3,a3,a4
    80004024:	00f507b3          	add	a5,a0,a5
    80004028:	06e60463          	beq	a2,a4,80004090 <__memmove+0xfc>
    8000402c:	0005c703          	lbu	a4,0(a1)
    80004030:	00e78023          	sb	a4,0(a5)
    80004034:	04068e63          	beqz	a3,80004090 <__memmove+0xfc>
    80004038:	0015c603          	lbu	a2,1(a1)
    8000403c:	00100713          	li	a4,1
    80004040:	00c780a3          	sb	a2,1(a5)
    80004044:	04e68663          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004048:	0025c603          	lbu	a2,2(a1)
    8000404c:	00200713          	li	a4,2
    80004050:	00c78123          	sb	a2,2(a5)
    80004054:	02e68e63          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004058:	0035c603          	lbu	a2,3(a1)
    8000405c:	00300713          	li	a4,3
    80004060:	00c781a3          	sb	a2,3(a5)
    80004064:	02e68663          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004068:	0045c603          	lbu	a2,4(a1)
    8000406c:	00400713          	li	a4,4
    80004070:	00c78223          	sb	a2,4(a5)
    80004074:	00e68e63          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004078:	0055c603          	lbu	a2,5(a1)
    8000407c:	00500713          	li	a4,5
    80004080:	00c782a3          	sb	a2,5(a5)
    80004084:	00e68663          	beq	a3,a4,80004090 <__memmove+0xfc>
    80004088:	0065c703          	lbu	a4,6(a1)
    8000408c:	00e78323          	sb	a4,6(a5)
    80004090:	00813403          	ld	s0,8(sp)
    80004094:	01010113          	addi	sp,sp,16
    80004098:	00008067          	ret
    8000409c:	02061713          	slli	a4,a2,0x20
    800040a0:	02075713          	srli	a4,a4,0x20
    800040a4:	00e587b3          	add	a5,a1,a4
    800040a8:	f0f574e3          	bgeu	a0,a5,80003fb0 <__memmove+0x1c>
    800040ac:	02069613          	slli	a2,a3,0x20
    800040b0:	02065613          	srli	a2,a2,0x20
    800040b4:	fff64613          	not	a2,a2
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00c78633          	add	a2,a5,a2
    800040c0:	fff7c683          	lbu	a3,-1(a5)
    800040c4:	fff78793          	addi	a5,a5,-1
    800040c8:	fff70713          	addi	a4,a4,-1
    800040cc:	00d70023          	sb	a3,0(a4)
    800040d0:	fec798e3          	bne	a5,a2,800040c0 <__memmove+0x12c>
    800040d4:	00813403          	ld	s0,8(sp)
    800040d8:	01010113          	addi	sp,sp,16
    800040dc:	00008067          	ret
    800040e0:	02069713          	slli	a4,a3,0x20
    800040e4:	02075713          	srli	a4,a4,0x20
    800040e8:	00170713          	addi	a4,a4,1
    800040ec:	00e50733          	add	a4,a0,a4
    800040f0:	00050793          	mv	a5,a0
    800040f4:	0005c683          	lbu	a3,0(a1)
    800040f8:	00178793          	addi	a5,a5,1
    800040fc:	00158593          	addi	a1,a1,1
    80004100:	fed78fa3          	sb	a3,-1(a5)
    80004104:	fee798e3          	bne	a5,a4,800040f4 <__memmove+0x160>
    80004108:	f89ff06f          	j	80004090 <__memmove+0xfc>

000000008000410c <__mem_free>:
    8000410c:	ff010113          	addi	sp,sp,-16
    80004110:	00813423          	sd	s0,8(sp)
    80004114:	01010413          	addi	s0,sp,16
    80004118:	00001597          	auipc	a1,0x1
    8000411c:	74058593          	addi	a1,a1,1856 # 80005858 <freep>
    80004120:	0005b783          	ld	a5,0(a1)
    80004124:	ff050693          	addi	a3,a0,-16
    80004128:	0007b703          	ld	a4,0(a5)
    8000412c:	00d7fc63          	bgeu	a5,a3,80004144 <__mem_free+0x38>
    80004130:	00e6ee63          	bltu	a3,a4,8000414c <__mem_free+0x40>
    80004134:	00e7fc63          	bgeu	a5,a4,8000414c <__mem_free+0x40>
    80004138:	00070793          	mv	a5,a4
    8000413c:	0007b703          	ld	a4,0(a5)
    80004140:	fed7e8e3          	bltu	a5,a3,80004130 <__mem_free+0x24>
    80004144:	fee7eae3          	bltu	a5,a4,80004138 <__mem_free+0x2c>
    80004148:	fee6f8e3          	bgeu	a3,a4,80004138 <__mem_free+0x2c>
    8000414c:	ff852803          	lw	a6,-8(a0)
    80004150:	02081613          	slli	a2,a6,0x20
    80004154:	01c65613          	srli	a2,a2,0x1c
    80004158:	00c68633          	add	a2,a3,a2
    8000415c:	02c70a63          	beq	a4,a2,80004190 <__mem_free+0x84>
    80004160:	fee53823          	sd	a4,-16(a0)
    80004164:	0087a503          	lw	a0,8(a5)
    80004168:	02051613          	slli	a2,a0,0x20
    8000416c:	01c65613          	srli	a2,a2,0x1c
    80004170:	00c78633          	add	a2,a5,a2
    80004174:	04c68263          	beq	a3,a2,800041b8 <__mem_free+0xac>
    80004178:	00813403          	ld	s0,8(sp)
    8000417c:	00d7b023          	sd	a3,0(a5)
    80004180:	00f5b023          	sd	a5,0(a1)
    80004184:	00000513          	li	a0,0
    80004188:	01010113          	addi	sp,sp,16
    8000418c:	00008067          	ret
    80004190:	00872603          	lw	a2,8(a4)
    80004194:	00073703          	ld	a4,0(a4)
    80004198:	0106083b          	addw	a6,a2,a6
    8000419c:	ff052c23          	sw	a6,-8(a0)
    800041a0:	fee53823          	sd	a4,-16(a0)
    800041a4:	0087a503          	lw	a0,8(a5)
    800041a8:	02051613          	slli	a2,a0,0x20
    800041ac:	01c65613          	srli	a2,a2,0x1c
    800041b0:	00c78633          	add	a2,a5,a2
    800041b4:	fcc692e3          	bne	a3,a2,80004178 <__mem_free+0x6c>
    800041b8:	00813403          	ld	s0,8(sp)
    800041bc:	0105053b          	addw	a0,a0,a6
    800041c0:	00a7a423          	sw	a0,8(a5)
    800041c4:	00e7b023          	sd	a4,0(a5)
    800041c8:	00f5b023          	sd	a5,0(a1)
    800041cc:	00000513          	li	a0,0
    800041d0:	01010113          	addi	sp,sp,16
    800041d4:	00008067          	ret

00000000800041d8 <__mem_alloc>:
    800041d8:	fc010113          	addi	sp,sp,-64
    800041dc:	02813823          	sd	s0,48(sp)
    800041e0:	02913423          	sd	s1,40(sp)
    800041e4:	03213023          	sd	s2,32(sp)
    800041e8:	01513423          	sd	s5,8(sp)
    800041ec:	02113c23          	sd	ra,56(sp)
    800041f0:	01313c23          	sd	s3,24(sp)
    800041f4:	01413823          	sd	s4,16(sp)
    800041f8:	01613023          	sd	s6,0(sp)
    800041fc:	04010413          	addi	s0,sp,64
    80004200:	00001a97          	auipc	s5,0x1
    80004204:	658a8a93          	addi	s5,s5,1624 # 80005858 <freep>
    80004208:	00f50913          	addi	s2,a0,15
    8000420c:	000ab683          	ld	a3,0(s5)
    80004210:	00495913          	srli	s2,s2,0x4
    80004214:	0019049b          	addiw	s1,s2,1
    80004218:	00048913          	mv	s2,s1
    8000421c:	0c068c63          	beqz	a3,800042f4 <__mem_alloc+0x11c>
    80004220:	0006b503          	ld	a0,0(a3)
    80004224:	00852703          	lw	a4,8(a0)
    80004228:	10977063          	bgeu	a4,s1,80004328 <__mem_alloc+0x150>
    8000422c:	000017b7          	lui	a5,0x1
    80004230:	0009099b          	sext.w	s3,s2
    80004234:	0af4e863          	bltu	s1,a5,800042e4 <__mem_alloc+0x10c>
    80004238:	02099a13          	slli	s4,s3,0x20
    8000423c:	01ca5a13          	srli	s4,s4,0x1c
    80004240:	fff00b13          	li	s6,-1
    80004244:	0100006f          	j	80004254 <__mem_alloc+0x7c>
    80004248:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000424c:	00852703          	lw	a4,8(a0)
    80004250:	04977463          	bgeu	a4,s1,80004298 <__mem_alloc+0xc0>
    80004254:	00050793          	mv	a5,a0
    80004258:	fea698e3          	bne	a3,a0,80004248 <__mem_alloc+0x70>
    8000425c:	000a0513          	mv	a0,s4
    80004260:	00000097          	auipc	ra,0x0
    80004264:	1f0080e7          	jalr	496(ra) # 80004450 <kvmincrease>
    80004268:	00050793          	mv	a5,a0
    8000426c:	01050513          	addi	a0,a0,16
    80004270:	07678e63          	beq	a5,s6,800042ec <__mem_alloc+0x114>
    80004274:	0137a423          	sw	s3,8(a5)
    80004278:	00000097          	auipc	ra,0x0
    8000427c:	e94080e7          	jalr	-364(ra) # 8000410c <__mem_free>
    80004280:	000ab783          	ld	a5,0(s5)
    80004284:	06078463          	beqz	a5,800042ec <__mem_alloc+0x114>
    80004288:	0007b503          	ld	a0,0(a5)
    8000428c:	00078693          	mv	a3,a5
    80004290:	00852703          	lw	a4,8(a0)
    80004294:	fc9760e3          	bltu	a4,s1,80004254 <__mem_alloc+0x7c>
    80004298:	08e48263          	beq	s1,a4,8000431c <__mem_alloc+0x144>
    8000429c:	4127073b          	subw	a4,a4,s2
    800042a0:	02071693          	slli	a3,a4,0x20
    800042a4:	01c6d693          	srli	a3,a3,0x1c
    800042a8:	00e52423          	sw	a4,8(a0)
    800042ac:	00d50533          	add	a0,a0,a3
    800042b0:	01252423          	sw	s2,8(a0)
    800042b4:	00fab023          	sd	a5,0(s5)
    800042b8:	01050513          	addi	a0,a0,16
    800042bc:	03813083          	ld	ra,56(sp)
    800042c0:	03013403          	ld	s0,48(sp)
    800042c4:	02813483          	ld	s1,40(sp)
    800042c8:	02013903          	ld	s2,32(sp)
    800042cc:	01813983          	ld	s3,24(sp)
    800042d0:	01013a03          	ld	s4,16(sp)
    800042d4:	00813a83          	ld	s5,8(sp)
    800042d8:	00013b03          	ld	s6,0(sp)
    800042dc:	04010113          	addi	sp,sp,64
    800042e0:	00008067          	ret
    800042e4:	000019b7          	lui	s3,0x1
    800042e8:	f51ff06f          	j	80004238 <__mem_alloc+0x60>
    800042ec:	00000513          	li	a0,0
    800042f0:	fcdff06f          	j	800042bc <__mem_alloc+0xe4>
    800042f4:	00002797          	auipc	a5,0x2
    800042f8:	7fc78793          	addi	a5,a5,2044 # 80006af0 <base>
    800042fc:	00078513          	mv	a0,a5
    80004300:	00fab023          	sd	a5,0(s5)
    80004304:	00f7b023          	sd	a5,0(a5)
    80004308:	00000713          	li	a4,0
    8000430c:	00002797          	auipc	a5,0x2
    80004310:	7e07a623          	sw	zero,2028(a5) # 80006af8 <base+0x8>
    80004314:	00050693          	mv	a3,a0
    80004318:	f11ff06f          	j	80004228 <__mem_alloc+0x50>
    8000431c:	00053703          	ld	a4,0(a0)
    80004320:	00e7b023          	sd	a4,0(a5)
    80004324:	f91ff06f          	j	800042b4 <__mem_alloc+0xdc>
    80004328:	00068793          	mv	a5,a3
    8000432c:	f6dff06f          	j	80004298 <__mem_alloc+0xc0>

0000000080004330 <__putc>:
    80004330:	fe010113          	addi	sp,sp,-32
    80004334:	00813823          	sd	s0,16(sp)
    80004338:	00113c23          	sd	ra,24(sp)
    8000433c:	02010413          	addi	s0,sp,32
    80004340:	00050793          	mv	a5,a0
    80004344:	fef40593          	addi	a1,s0,-17
    80004348:	00100613          	li	a2,1
    8000434c:	00000513          	li	a0,0
    80004350:	fef407a3          	sb	a5,-17(s0)
    80004354:	fffff097          	auipc	ra,0xfffff
    80004358:	918080e7          	jalr	-1768(ra) # 80002c6c <console_write>
    8000435c:	01813083          	ld	ra,24(sp)
    80004360:	01013403          	ld	s0,16(sp)
    80004364:	02010113          	addi	sp,sp,32
    80004368:	00008067          	ret

000000008000436c <__getc>:
    8000436c:	fe010113          	addi	sp,sp,-32
    80004370:	00813823          	sd	s0,16(sp)
    80004374:	00113c23          	sd	ra,24(sp)
    80004378:	02010413          	addi	s0,sp,32
    8000437c:	fe840593          	addi	a1,s0,-24
    80004380:	00100613          	li	a2,1
    80004384:	00000513          	li	a0,0
    80004388:	fffff097          	auipc	ra,0xfffff
    8000438c:	8c4080e7          	jalr	-1852(ra) # 80002c4c <console_read>
    80004390:	fe844503          	lbu	a0,-24(s0)
    80004394:	01813083          	ld	ra,24(sp)
    80004398:	01013403          	ld	s0,16(sp)
    8000439c:	02010113          	addi	sp,sp,32
    800043a0:	00008067          	ret

00000000800043a4 <console_handler>:
    800043a4:	fe010113          	addi	sp,sp,-32
    800043a8:	00813823          	sd	s0,16(sp)
    800043ac:	00113c23          	sd	ra,24(sp)
    800043b0:	00913423          	sd	s1,8(sp)
    800043b4:	02010413          	addi	s0,sp,32
    800043b8:	14202773          	csrr	a4,scause
    800043bc:	100027f3          	csrr	a5,sstatus
    800043c0:	0027f793          	andi	a5,a5,2
    800043c4:	06079e63          	bnez	a5,80004440 <console_handler+0x9c>
    800043c8:	00074c63          	bltz	a4,800043e0 <console_handler+0x3c>
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	01013403          	ld	s0,16(sp)
    800043d4:	00813483          	ld	s1,8(sp)
    800043d8:	02010113          	addi	sp,sp,32
    800043dc:	00008067          	ret
    800043e0:	0ff77713          	andi	a4,a4,255
    800043e4:	00900793          	li	a5,9
    800043e8:	fef712e3          	bne	a4,a5,800043cc <console_handler+0x28>
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	4b8080e7          	jalr	1208(ra) # 800028a4 <plic_claim>
    800043f4:	00a00793          	li	a5,10
    800043f8:	00050493          	mv	s1,a0
    800043fc:	02f50c63          	beq	a0,a5,80004434 <console_handler+0x90>
    80004400:	fc0506e3          	beqz	a0,800043cc <console_handler+0x28>
    80004404:	00050593          	mv	a1,a0
    80004408:	00001517          	auipc	a0,0x1
    8000440c:	dc850513          	addi	a0,a0,-568 # 800051d0 <_ZZ12printIntegermE6digits+0xe0>
    80004410:	fffff097          	auipc	ra,0xfffff
    80004414:	8d8080e7          	jalr	-1832(ra) # 80002ce8 <__printf>
    80004418:	01013403          	ld	s0,16(sp)
    8000441c:	01813083          	ld	ra,24(sp)
    80004420:	00048513          	mv	a0,s1
    80004424:	00813483          	ld	s1,8(sp)
    80004428:	02010113          	addi	sp,sp,32
    8000442c:	ffffe317          	auipc	t1,0xffffe
    80004430:	4b030067          	jr	1200(t1) # 800028dc <plic_complete>
    80004434:	fffff097          	auipc	ra,0xfffff
    80004438:	1bc080e7          	jalr	444(ra) # 800035f0 <uartintr>
    8000443c:	fddff06f          	j	80004418 <console_handler+0x74>
    80004440:	00001517          	auipc	a0,0x1
    80004444:	e9050513          	addi	a0,a0,-368 # 800052d0 <digits+0x78>
    80004448:	fffff097          	auipc	ra,0xfffff
    8000444c:	844080e7          	jalr	-1980(ra) # 80002c8c <panic>

0000000080004450 <kvmincrease>:
    80004450:	fe010113          	addi	sp,sp,-32
    80004454:	01213023          	sd	s2,0(sp)
    80004458:	00001937          	lui	s2,0x1
    8000445c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004460:	00813823          	sd	s0,16(sp)
    80004464:	00113c23          	sd	ra,24(sp)
    80004468:	00913423          	sd	s1,8(sp)
    8000446c:	02010413          	addi	s0,sp,32
    80004470:	01250933          	add	s2,a0,s2
    80004474:	00c95913          	srli	s2,s2,0xc
    80004478:	02090863          	beqz	s2,800044a8 <kvmincrease+0x58>
    8000447c:	00000493          	li	s1,0
    80004480:	00148493          	addi	s1,s1,1
    80004484:	fffff097          	auipc	ra,0xfffff
    80004488:	4bc080e7          	jalr	1212(ra) # 80003940 <kalloc>
    8000448c:	fe991ae3          	bne	s2,s1,80004480 <kvmincrease+0x30>
    80004490:	01813083          	ld	ra,24(sp)
    80004494:	01013403          	ld	s0,16(sp)
    80004498:	00813483          	ld	s1,8(sp)
    8000449c:	00013903          	ld	s2,0(sp)
    800044a0:	02010113          	addi	sp,sp,32
    800044a4:	00008067          	ret
    800044a8:	01813083          	ld	ra,24(sp)
    800044ac:	01013403          	ld	s0,16(sp)
    800044b0:	00813483          	ld	s1,8(sp)
    800044b4:	00013903          	ld	s2,0(sp)
    800044b8:	00000513          	li	a0,0
    800044bc:	02010113          	addi	sp,sp,32
    800044c0:	00008067          	ret
	...
