
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	47813103          	ld	sp,1144(sp) # 8000a478 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	475050ef          	jal	ra,80005c90 <start>

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
    80001184:	445000ef          	jal	ra,80001dc8 <_ZN5Riscv20handleSupervisorTrapEv>
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

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
#include "../h/syscall_c.h"


void* mem_alloc(size_t size){
    80001244:	fe010113          	addi	sp,sp,-32
    80001248:	00813c23          	sd	s0,24(sp)
    8000124c:	02010413          	addi	s0,sp,32
    size=((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);//mora u blokovima
    80001250:	03f50513          	addi	a0,a0,63
    80001254:	00655513          	srli	a0,a0,0x6

    __asm__ volatile("mv a1, %0"::"r"(size));
    80001258:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(MEM_ALLOC));
    8000125c:	00100793          	li	a5,1
    80001260:	00078513          	mv	a0,a5
    __asm__ volatile("ecall"); // saljemo u ABI da nam u prekidnoj rutini resi posao
    80001264:	00000073          	ecall
    //dobijamo povratnu vrednost u a0, koju treba da vratimo

    void* volatile retAddr;
    __asm__ volatile("mv %0, a0":"=r"(retAddr));
    80001268:	00050793          	mv	a5,a0
    8000126c:	fef43423          	sd	a5,-24(s0)

    return retAddr;
    80001270:	fe843503          	ld	a0,-24(s0)
}
    80001274:	01813403          	ld	s0,24(sp)
    80001278:	02010113          	addi	sp,sp,32
    8000127c:	00008067          	ret

0000000080001280 <_Z8mem_freePv>:

int mem_free(void* addr){
    80001280:	fe010113          	addi	sp,sp,-32
    80001284:	00813c23          	sd	s0,24(sp)
    80001288:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(addr));
    8000128c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(MEM_FREE));
    80001290:	00200793          	li	a5,2
    80001294:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001298:	00000073          	ecall
    int volatile retVal;
    __asm__ volatile("mv %0, a0":"=r"(retVal));
    8000129c:	00050793          	mv	a5,a0
    800012a0:	fef42623          	sw	a5,-20(s0)
    return retVal;
    800012a4:	fec42503          	lw	a0,-20(s0)
}
    800012a8:	0005051b          	sext.w	a0,a0
    800012ac:	01813403          	ld	s0,24(sp)
    800012b0:	02010113          	addi	sp,sp,32
    800012b4:	00008067          	ret

00000000800012b8 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space(){
    800012b8:	fe010113          	addi	sp,sp,-32
    800012bc:	00813c23          	sd	s0,24(sp)
    800012c0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(MEM_FREE_SPACE));
    800012c4:	00300793          	li	a5,3
    800012c8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012cc:	00000073          	ecall
    size_t volatile block;
    __asm__ volatile("mv %0, a0":"=r"(block));
    800012d0:	00050793          	mv	a5,a0
    800012d4:	fef43423          	sd	a5,-24(s0)
    return block;
    800012d8:	fe843503          	ld	a0,-24(s0)
}
    800012dc:	01813403          	ld	s0,24(sp)
    800012e0:	02010113          	addi	sp,sp,32
    800012e4:	00008067          	ret

00000000800012e8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block(){
    800012e8:	fe010113          	addi	sp,sp,-32
    800012ec:	00813c23          	sd	s0,24(sp)
    800012f0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(MEM_LARGEST_BLOCK_SYSCALL));
    800012f4:	00400793          	li	a5,4
    800012f8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012fc:	00000073          	ecall
    size_t volatile block;
    __asm__ volatile("mv %0, a0":"=r"(block));
    80001300:	00050793          	mv	a5,a0
    80001304:	fef43423          	sd	a5,-24(s0)
    return block;
    80001308:	fe843503          	ld	a0,-24(s0)
}
    8000130c:	01813403          	ld	s0,24(sp)
    80001310:	02010113          	addi	sp,sp,32
    80001314:	00008067          	ret

0000000080001318 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*),void* arg){
    80001318:	fc010113          	addi	sp,sp,-64
    8000131c:	02113c23          	sd	ra,56(sp)
    80001320:	02813823          	sd	s0,48(sp)
    80001324:	02913423          	sd	s1,40(sp)
    80001328:	03213023          	sd	s2,32(sp)
    8000132c:	01313c23          	sd	s3,24(sp)
    80001330:	04010413          	addi	s0,sp,64
    80001334:	00050493          	mv	s1,a0
    80001338:	00058913          	mv	s2,a1
    8000133c:	00060993          	mv	s3,a2
    //a1=handle,a2=funkc,a3=arg
    //ABI se razlikuje u odnosu na C API, ima dodatan argument - stack_space - a4
    void* addr=mem_alloc(DEFAULT_STACK_SIZE);//stek raste ka nizim adresama, mi
    80001340:	00001537          	lui	a0,0x1
    80001344:	00000097          	auipc	ra,0x0
    80001348:	f00080e7          	jalr	-256(ra) # 80001244 <_Z9mem_allocm>
    //alociramo memoriju ka visim, pa poslednja lokacija steka je zapravo prva lokacija
    //zauzete memorije
    if(!addr) return -1;
    8000134c:	04050663          	beqz	a0,80001398 <_Z13thread_createPP7_threadPFvPvES2_+0x80>

    __asm__ volatile("mv a4, %0"::"r"(addr));
    80001350:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0"::"r"(arg));
    80001354:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    80001358:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0"::"r"(handle));
    8000135c:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0"::"r"(THREAD_CREATE));
    80001360:	01100793          	li	a5,17
    80001364:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001368:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    8000136c:	00050793          	mv	a5,a0
    80001370:	fcf42623          	sw	a5,-52(s0)
    return flag;
    80001374:	fcc42503          	lw	a0,-52(s0)
    80001378:	0005051b          	sext.w	a0,a0
}
    8000137c:	03813083          	ld	ra,56(sp)
    80001380:	03013403          	ld	s0,48(sp)
    80001384:	02813483          	ld	s1,40(sp)
    80001388:	02013903          	ld	s2,32(sp)
    8000138c:	01813983          	ld	s3,24(sp)
    80001390:	04010113          	addi	sp,sp,64
    80001394:	00008067          	ret
    if(!addr) return -1;
    80001398:	fff00513          	li	a0,-1
    8000139c:	fe1ff06f          	j	8000137c <_Z13thread_createPP7_threadPFvPvES2_+0x64>

00000000800013a0 <_Z11thread_exitv>:
int thread_exit(){
    800013a0:	fe010113          	addi	sp,sp,-32
    800013a4:	00813c23          	sd	s0,24(sp)
    800013a8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(THREAD_EXIT));
    800013ac:	01200793          	li	a5,18
    800013b0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013b4:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800013b8:	00050793          	mv	a5,a0
    800013bc:	fef42623          	sw	a5,-20(s0)
    return flag;
    800013c0:	fec42503          	lw	a0,-20(s0)
}
    800013c4:	0005051b          	sext.w	a0,a0
    800013c8:	01813403          	ld	s0,24(sp)
    800013cc:	02010113          	addi	sp,sp,32
    800013d0:	00008067          	ret

00000000800013d4 <_Z15thread_dispatchv>:
void thread_dispatch(){
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00813423          	sd	s0,8(sp)
    800013dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0"::"r"(THREAD_DISPATCH));
    800013e0:	01300793          	li	a5,19
    800013e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013e8:	00000073          	ecall
}
    800013ec:	00813403          	ld	s0,8(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret

00000000800013f8 <_Z8sem_openPP4_semj>:

int sem_open (sem_t* handle,unsigned init){
    800013f8:	fe010113          	addi	sp,sp,-32
    800013fc:	00813c23          	sd	s0,24(sp)
    80001400:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a2, %0"::"r"(init));
    80001404:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001408:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    8000140c:	02100793          	li	a5,33
    80001410:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001414:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001418:	00050793          	mv	a5,a0
    8000141c:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001420:	fec42503          	lw	a0,-20(s0)
}
    80001424:	0005051b          	sext.w	a0,a0
    80001428:	01813403          	ld	s0,24(sp)
    8000142c:	02010113          	addi	sp,sp,32
    80001430:	00008067          	ret

0000000080001434 <_Z9sem_closeP4_sem>:
int sem_close(sem_t handle){
    80001434:	fe010113          	addi	sp,sp,-32
    80001438:	00813c23          	sd	s0,24(sp)
    8000143c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001440:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    80001444:	02200793          	li	a5,34
    80001448:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000144c:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001450:	00050793          	mv	a5,a0
    80001454:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001458:	fec42503          	lw	a0,-20(s0)
}
    8000145c:	0005051b          	sext.w	a0,a0
    80001460:	01813403          	ld	s0,24(sp)
    80001464:	02010113          	addi	sp,sp,32
    80001468:	00008067          	ret

000000008000146c <_Z8sem_waitP4_sem>:
int sem_wait(sem_t id){
    8000146c:	fe010113          	addi	sp,sp,-32
    80001470:	00813c23          	sd	s0,24(sp)
    80001474:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001478:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    8000147c:	02300793          	li	a5,35
    80001480:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001484:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001488:	00050793          	mv	a5,a0
    8000148c:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001490:	fec42503          	lw	a0,-20(s0)
}
    80001494:	0005051b          	sext.w	a0,a0
    80001498:	01813403          	ld	s0,24(sp)
    8000149c:	02010113          	addi	sp,sp,32
    800014a0:	00008067          	ret

00000000800014a4 <_Z10sem_signalP4_sem>:
int sem_signal(sem_t id){
    800014a4:	fe010113          	addi	sp,sp,-32
    800014a8:	00813c23          	sd	s0,24(sp)
    800014ac:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    800014b0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    800014b4:	02400793          	li	a5,36
    800014b8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014bc:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800014c0:	00050793          	mv	a5,a0
    800014c4:	fef42623          	sw	a5,-20(s0)
    return flag;
    800014c8:	fec42503          	lw	a0,-20(s0)
}
    800014cc:	0005051b          	sext.w	a0,a0
    800014d0:	01813403          	ld	s0,24(sp)
    800014d4:	02010113          	addi	sp,sp,32
    800014d8:	00008067          	ret

00000000800014dc <_Z10time_sleepm>:

int time_sleep(time_t tajmara){
    800014dc:	fe010113          	addi	sp,sp,-32
    800014e0:	00813c23          	sd	s0,24(sp)
    800014e4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(tajmara));
    800014e8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    800014ec:	03100793          	li	a5,49
    800014f0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014f4:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800014f8:	00050793          	mv	a5,a0
    800014fc:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001500:	fec42503          	lw	a0,-20(s0)
}
    80001504:	0005051b          	sext.w	a0,a0
    80001508:	01813403          	ld	s0,24(sp)
    8000150c:	02010113          	addi	sp,sp,32
    80001510:	00008067          	ret

0000000080001514 <_Z4getcv>:

char getc(){
    80001514:	fe010113          	addi	sp,sp,-32
    80001518:	00813c23          	sd	s0,24(sp)
    8000151c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(GETC));
    80001520:	04100793          	li	a5,65
    80001524:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001528:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    8000152c:	00050793          	mv	a5,a0
    80001530:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001534:	fec42503          	lw	a0,-20(s0)
}
    80001538:	0ff57513          	andi	a0,a0,255
    8000153c:	01813403          	ld	s0,24(sp)
    80001540:	02010113          	addi	sp,sp,32
    80001544:	00008067          	ret

0000000080001548 <_Z4putcc>:

void putc(char c){
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00813423          	sd	s0,8(sp)
    80001550:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(c));
    80001554:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    80001558:	04200793          	li	a5,66
    8000155c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001560:	00000073          	ecall
}
    80001564:	00813403          	ld	s0,8(sp)
    80001568:	01010113          	addi	sp,sp,16
    8000156c:	00008067          	ret

0000000080001570 <_Z15userMainWrapperPv>:
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"

extern void userMain();

void userMainWrapper(void* arg){
    80001570:	ff010113          	addi	sp,sp,-16
    80001574:	00113423          	sd	ra,8(sp)
    80001578:	00813023          	sd	s0,0(sp)
    8000157c:	01010413          	addi	s0,sp,16
    userMain();
    80001580:	00004097          	auipc	ra,0x4
    80001584:	ba8080e7          	jalr	-1112(ra) # 80005128 <_Z8userMainv>
}
    80001588:	00813083          	ld	ra,8(sp)
    8000158c:	00013403          	ld	s0,0(sp)
    80001590:	01010113          	addi	sp,sp,16
    80001594:	00008067          	ret

0000000080001598 <main>:
int main(){
    80001598:	fe010113          	addi	sp,sp,-32
    8000159c:	00113c23          	sd	ra,24(sp)
    800015a0:	00813823          	sd	s0,16(sp)
    800015a4:	00913423          	sd	s1,8(sp)
    800015a8:	02010413          	addi	s0,sp,32
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static size_t getLargestFreeBlock();
    static size_t getFree();
    static void initMemory(){
        freeMemHead=(FreeBlock*) HEAP_START_ADDR;
    800015ac:	00009797          	auipc	a5,0x9
    800015b0:	eac7b783          	ld	a5,-340(a5) # 8000a458 <_GLOBAL_OFFSET_TABLE_+0x10>
    800015b4:	0007b783          	ld	a5,0(a5)
    800015b8:	00009697          	auipc	a3,0x9
    800015bc:	eb86b683          	ld	a3,-328(a3) # 8000a470 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015c0:	00f6b023          	sd	a5,0(a3)
        freeMemHead->next=nullptr;
    800015c4:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    800015c8:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    800015cc:	00009717          	auipc	a4,0x9
    800015d0:	ec473703          	ld	a4,-316(a4) # 8000a490 <_GLOBAL_OFFSET_TABLE_+0x48>
    800015d4:	00073703          	ld	a4,0(a4)
    800015d8:	40f70733          	sub	a4,a4,a5
    800015dc:	fe870713          	addi	a4,a4,-24
    800015e0:	00e7b023          	sd	a4,0(a5)
        totalFreeMem=freeMemHead->size;
    800015e4:	0006b783          	ld	a5,0(a3)
    800015e8:	0007b783          	ld	a5,0(a5)
    800015ec:	00009717          	auipc	a4,0x9
    800015f0:	e9473703          	ld	a4,-364(a4) # 8000a480 <_GLOBAL_OFFSET_TABLE_+0x38>
    800015f4:	00f73023          	sd	a5,0(a4)
        largestFreeBlock=totalFreeMem;
    800015f8:	00009717          	auipc	a4,0x9
    800015fc:	e5873703          	ld	a4,-424(a4) # 8000a450 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001600:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::initMemory();
    TCB *threads[5];
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001604:	00009797          	auipc	a5,0x9
    80001608:	e5c7b783          	ld	a5,-420(a5) # 8000a460 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000160c:	10579073          	csrw	stvec,a5
    //globalno prihvatamo prekide u supervizorskom modu
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    threads[0]=TCB::createThreadBasic(nullptr,nullptr);
    80001610:	00000593          	li	a1,0
    80001614:	00000513          	li	a0,0
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	20c080e7          	jalr	524(ra) # 80001824 <_ZN3TCB17createThreadBasicEPFvPvES0_>
    TCB::running = threads[0];
    80001620:	00009797          	auipc	a5,0x9
    80001624:	e687b783          	ld	a5,-408(a5) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001628:	00a7b023          	sd	a0,0(a5)

    TCB* userThread=TCB::createThreadBasic(&userMainWrapper,nullptr);
    8000162c:	00000593          	li	a1,0
    80001630:	00000517          	auipc	a0,0x0
    80001634:	f4050513          	addi	a0,a0,-192 # 80001570 <_Z15userMainWrapperPv>
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	1ec080e7          	jalr	492(ra) # 80001824 <_ZN3TCB17createThreadBasicEPFvPvES0_>
    80001640:	00050493          	mv	s1,a0
class TCB
{
public:
    ~TCB(){delete[] stack;}

    bool isFinished(){return finished;}
    80001644:	0304c783          	lbu	a5,48(s1)
    while(!userThread->isFinished()) {
    80001648:	00079863          	bnez	a5,80001658 <main+0xc0>
        thread_dispatch();
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	d88080e7          	jalr	-632(ra) # 800013d4 <_Z15thread_dispatchv>
    80001654:	ff1ff06f          	j	80001644 <main+0xac>
    }

    printString("Vratio sam se u main\n");
    80001658:	00007517          	auipc	a0,0x7
    8000165c:	9c850513          	addi	a0,a0,-1592 # 80008020 <CONSOLE_STATUS+0x10>
    80001660:	00003097          	auipc	ra,0x3
    80001664:	400080e7          	jalr	1024(ra) # 80004a60 <_Z11printStringPKc>

    return 0;
    80001668:	00000513          	li	a0,0
    8000166c:	01813083          	ld	ra,24(sp)
    80001670:	01013403          	ld	s0,16(sp)
    80001674:	00813483          	ld	s1,8(sp)
    80001678:	02010113          	addi	sp,sp,32
    8000167c:	00008067          	ret

0000000080001680 <_ZN3TCB5yieldEv>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

void TCB::yield()
{
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00813423          	sd	s0,8(sp)
    80001688:	01010413          	addi	s0,sp,16
    //sada hocemo da se svi prekidi izvrsavaju preko funkcije koju smo ispisali
    //hocemo da sinhrono udjemo u tu prekidnu funkciju - ulazak u prekidnu rutinu zbog zvrsavajna neke instrukcije - exception
    __asm__ volatile("mv a0, %0"::"r"(THREAD_DISPATCH));
    8000168c:	01300793          	li	a5,19
    80001690:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001694:	00000073          	ecall
}
    80001698:	00813403          	ld	s0,8(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <_ZN3TCB13threadWrapperEv>:
        // na threadWrapper funkciju, odakle ce da pokrene njen tok
    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper(){
    800016a4:	fe010113          	addi	sp,sp,-32
    800016a8:	00113c23          	sd	ra,24(sp)
    800016ac:	00813823          	sd	s0,16(sp)
    800016b0:	00913423          	sd	s1,8(sp)
    800016b4:	02010413          	addi	s0,sp,32
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	6e8080e7          	jalr	1768(ra) # 80001da0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800016c0:	00009497          	auipc	s1,0x9
    800016c4:	e2048493          	addi	s1,s1,-480 # 8000a4e0 <_ZN3TCB7runningE>
    800016c8:	0004b783          	ld	a5,0(s1)
    800016cc:	0007b703          	ld	a4,0(a5)
    800016d0:	0087b503          	ld	a0,8(a5)
    800016d4:	000700e7          	jalr	a4
    running->setFinished(true);
    800016d8:	0004b783          	ld	a5,0(s1)
    void setFinished(bool flag){ TCB::finished = flag;}
    800016dc:	00100713          	li	a4,1
    800016e0:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	f9c080e7          	jalr	-100(ra) # 80001680 <_ZN3TCB5yieldEv>
}
    800016ec:	01813083          	ld	ra,24(sp)
    800016f0:	01013403          	ld	s0,16(sp)
    800016f4:	00813483          	ld	s1,8(sp)
    800016f8:	02010113          	addi	sp,sp,32
    800016fc:	00008067          	ret

0000000080001700 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
{
    80001700:	fd010113          	addi	sp,sp,-48
    80001704:	02113423          	sd	ra,40(sp)
    80001708:	02813023          	sd	s0,32(sp)
    8000170c:	00913c23          	sd	s1,24(sp)
    80001710:	01213823          	sd	s2,16(sp)
    80001714:	01313423          	sd	s3,8(sp)
    80001718:	01413023          	sd	s4,0(sp)
    8000171c:	03010413          	addi	s0,sp,48
    80001720:	00050993          	mv	s3,a0
    80001724:	00058a13          	mv	s4,a1
    80001728:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace);
    8000172c:	03800513          	li	a0,56
    80001730:	00000097          	auipc	ra,0x0
    80001734:	21c080e7          	jalr	540(ra) # 8000194c <_Znwm>
    80001738:	00050493          	mv	s1,a0
                                       stack(stackSpace),timeSlice(timeslice),
                                       context({
                                                       (uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
                                                       (uint64) &stack[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                                               }),
                                       finished(false)
    8000173c:	01353023          	sd	s3,0(a0)
    80001740:	01453423          	sd	s4,8(a0)
    80001744:	01253823          	sd	s2,16(a0)
    80001748:	00200793          	li	a5,2
    8000174c:	00f53c23          	sd	a5,24(a0)
    80001750:	00000797          	auipc	a5,0x0
    80001754:	f5478793          	addi	a5,a5,-172 # 800016a4 <_ZN3TCB13threadWrapperEv>
    80001758:	02f53023          	sd	a5,32(a0)
                                                       (uint64) &stack[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    8000175c:	00008637          	lui	a2,0x8
    80001760:	00c90933          	add	s2,s2,a2
                                       finished(false)
    80001764:	03253423          	sd	s2,40(a0)
    80001768:	02050823          	sb	zero,48(a0)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    8000176c:	02098663          	beqz	s3,80001798 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x98>
    80001770:	00001097          	auipc	ra,0x1
    80001774:	9d8080e7          	jalr	-1576(ra) # 80002148 <_ZN9Scheduler3putEP3TCB>
    80001778:	0200006f          	j	80001798 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x98>
    8000177c:	00050913          	mv	s2,a0
    80001780:	00048513          	mv	a0,s1
    80001784:	00000097          	auipc	ra,0x0
    80001788:	218080e7          	jalr	536(ra) # 8000199c <_ZdlPv>
    8000178c:	00090513          	mv	a0,s2
    80001790:	0000a097          	auipc	ra,0xa
    80001794:	ea8080e7          	jalr	-344(ra) # 8000b638 <_Unwind_Resume>
}
    80001798:	00048513          	mv	a0,s1
    8000179c:	02813083          	ld	ra,40(sp)
    800017a0:	02013403          	ld	s0,32(sp)
    800017a4:	01813483          	ld	s1,24(sp)
    800017a8:	01013903          	ld	s2,16(sp)
    800017ac:	00813983          	ld	s3,8(sp)
    800017b0:	00013a03          	ld	s4,0(sp)
    800017b4:	03010113          	addi	sp,sp,48
    800017b8:	00008067          	ret

00000000800017bc <_ZN3TCB8dispatchEv>:
{
    800017bc:	fe010113          	addi	sp,sp,-32
    800017c0:	00113c23          	sd	ra,24(sp)
    800017c4:	00813823          	sd	s0,16(sp)
    800017c8:	00913423          	sd	s1,8(sp)
    800017cc:	02010413          	addi	s0,sp,32
    TCB* old = running;
    800017d0:	00009497          	auipc	s1,0x9
    800017d4:	d104b483          	ld	s1,-752(s1) # 8000a4e0 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    800017d8:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished()) Scheduler::put(old);
    800017dc:	02078c63          	beqz	a5,80001814 <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	900080e7          	jalr	-1792(ra) # 800020e0 <_ZN9Scheduler3getEv>
    800017e8:	00009797          	auipc	a5,0x9
    800017ec:	cea7bc23          	sd	a0,-776(a5) # 8000a4e0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800017f0:	02050593          	addi	a1,a0,32
    800017f4:	02048513          	addi	a0,s1,32
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	a18080e7          	jalr	-1512(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001800:	01813083          	ld	ra,24(sp)
    80001804:	01013403          	ld	s0,16(sp)
    80001808:	00813483          	ld	s1,8(sp)
    8000180c:	02010113          	addi	sp,sp,32
    80001810:	00008067          	ret
    if(!old->isFinished()) Scheduler::put(old);
    80001814:	00048513          	mv	a0,s1
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	930080e7          	jalr	-1744(ra) # 80002148 <_ZN9Scheduler3putEP3TCB>
    80001820:	fc1ff06f          	j	800017e0 <_ZN3TCB8dispatchEv+0x24>

0000000080001824 <_ZN3TCB17createThreadBasicEPFvPvES0_>:

TCB *TCB::createThreadBasic(TCB::Body body, void *arg)
{
    80001824:	fd010113          	addi	sp,sp,-48
    80001828:	02113423          	sd	ra,40(sp)
    8000182c:	02813023          	sd	s0,32(sp)
    80001830:	00913c23          	sd	s1,24(sp)
    80001834:	01213823          	sd	s2,16(sp)
    80001838:	01313423          	sd	s3,8(sp)
    8000183c:	03010413          	addi	s0,sp,48
    80001840:	00050913          	mv	s2,a0
    80001844:	00058993          	mv	s3,a1
    return new TCB(body,arg,DEFAULT_TIME_SLICE);
    80001848:	03800513          	li	a0,56
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	100080e7          	jalr	256(ra) # 8000194c <_Znwm>
    80001854:	00050493          	mv	s1,a0
                                       finished(false)
    80001858:	01253023          	sd	s2,0(a0)
    8000185c:	01353423          	sd	s3,8(a0)
                                       stack(body!=nullptr? new uint64[DEFAULT_STACK_SIZE] : nullptr),timeSlice(timeslice),
    80001860:	00090a63          	beqz	s2,80001874 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x50>
    80001864:	00008537          	lui	a0,0x8
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	10c080e7          	jalr	268(ra) # 80001974 <_Znam>
    80001870:	0080006f          	j	80001878 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x54>
    80001874:	00000513          	li	a0,0
                                       finished(false)
    80001878:	00a4b823          	sd	a0,16(s1)
    8000187c:	00200793          	li	a5,2
    80001880:	00f4bc23          	sd	a5,24(s1)
    80001884:	00000797          	auipc	a5,0x0
    80001888:	e2078793          	addi	a5,a5,-480 # 800016a4 <_ZN3TCB13threadWrapperEv>
    8000188c:	02f4b023          	sd	a5,32(s1)
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001890:	02090463          	beqz	s2,800018b8 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x94>
    80001894:	000087b7          	lui	a5,0x8
    80001898:	00f50533          	add	a0,a0,a5
                                       finished(false)
    8000189c:	02a4b423          	sd	a0,40(s1)
    800018a0:	02048823          	sb	zero,48(s1)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    800018a4:	02090c63          	beqz	s2,800018dc <_ZN3TCB17createThreadBasicEPFvPvES0_+0xb8>
    800018a8:	00048513          	mv	a0,s1
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	89c080e7          	jalr	-1892(ra) # 80002148 <_ZN9Scheduler3putEP3TCB>
    800018b4:	0280006f          	j	800018dc <_ZN3TCB17createThreadBasicEPFvPvES0_+0xb8>
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    800018b8:	00000513          	li	a0,0
    800018bc:	fe1ff06f          	j	8000189c <_ZN3TCB17createThreadBasicEPFvPvES0_+0x78>
    800018c0:	00050913          	mv	s2,a0
    800018c4:	00048513          	mv	a0,s1
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	0d4080e7          	jalr	212(ra) # 8000199c <_ZdlPv>
    800018d0:	00090513          	mv	a0,s2
    800018d4:	0000a097          	auipc	ra,0xa
    800018d8:	d64080e7          	jalr	-668(ra) # 8000b638 <_Unwind_Resume>
}
    800018dc:	00048513          	mv	a0,s1
    800018e0:	02813083          	ld	ra,40(sp)
    800018e4:	02013403          	ld	s0,32(sp)
    800018e8:	01813483          	ld	s1,24(sp)
    800018ec:	01013903          	ld	s2,16(sp)
    800018f0:	00813983          	ld	s3,8(sp)
    800018f4:	03010113          	addi	sp,sp,48
    800018f8:	00008067          	ret

00000000800018fc <_ZN6ThreadD1Ev>:
#define syscall_cpp
#include "./syscall_c.h"
void* operator new (size_t);
void operator delete (void*);

class Thread {
    800018fc:	ff010113          	addi	sp,sp,-16
    80001900:	00813423          	sd	s0,8(sp)
    80001904:	01010413          	addi	s0,sp,16
    80001908:	00813403          	ld	s0,8(sp)
    8000190c:	01010113          	addi	sp,sp,16
    80001910:	00008067          	ret

0000000080001914 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001914:	ff010113          	addi	sp,sp,-16
    80001918:	00113423          	sd	ra,8(sp)
    8000191c:	00813023          	sd	s0,0(sp)
    80001920:	01010413          	addi	s0,sp,16
    80001924:	00009797          	auipc	a5,0x9
    80001928:	93c78793          	addi	a5,a5,-1732 # 8000a260 <_ZTV9Semaphore+0x10>
    8000192c:	00f53023          	sd	a5,0(a0) # 8000 <_entry-0x7fff8000>
    sem_close(myHandle);
    80001930:	00853503          	ld	a0,8(a0)
    80001934:	00000097          	auipc	ra,0x0
    80001938:	b00080e7          	jalr	-1280(ra) # 80001434 <_Z9sem_closeP4_sem>
}
    8000193c:	00813083          	ld	ra,8(sp)
    80001940:	00013403          	ld	s0,0(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00008067          	ret

000000008000194c <_Znwm>:
void* operator new (size_t mem){ return mem_alloc(mem);}
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00113423          	sd	ra,8(sp)
    80001954:	00813023          	sd	s0,0(sp)
    80001958:	01010413          	addi	s0,sp,16
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	8e8080e7          	jalr	-1816(ra) # 80001244 <_Z9mem_allocm>
    80001964:	00813083          	ld	ra,8(sp)
    80001968:	00013403          	ld	s0,0(sp)
    8000196c:	01010113          	addi	sp,sp,16
    80001970:	00008067          	ret

0000000080001974 <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    80001974:	ff010113          	addi	sp,sp,-16
    80001978:	00113423          	sd	ra,8(sp)
    8000197c:	00813023          	sd	s0,0(sp)
    80001980:	01010413          	addi	s0,sp,16
    80001984:	00000097          	auipc	ra,0x0
    80001988:	8c0080e7          	jalr	-1856(ra) # 80001244 <_Z9mem_allocm>
    8000198c:	00813083          	ld	ra,8(sp)
    80001990:	00013403          	ld	s0,0(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret

000000008000199c <_ZdlPv>:
void operator delete(void* addr) { mem_free(addr); }
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	8d4080e7          	jalr	-1836(ra) # 80001280 <_Z8mem_freePv>
    800019b4:	00813083          	ld	ra,8(sp)
    800019b8:	00013403          	ld	s0,0(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <_ZN6ThreadD0Ev>:
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	fc8080e7          	jalr	-56(ra) # 8000199c <_ZdlPv>
    800019dc:	00813083          	ld	ra,8(sp)
    800019e0:	00013403          	ld	s0,0(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800019ec:	fe010113          	addi	sp,sp,-32
    800019f0:	00113c23          	sd	ra,24(sp)
    800019f4:	00813823          	sd	s0,16(sp)
    800019f8:	00913423          	sd	s1,8(sp)
    800019fc:	02010413          	addi	s0,sp,32
    80001a00:	00050493          	mv	s1,a0
}
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	f10080e7          	jalr	-240(ra) # 80001914 <_ZN9SemaphoreD1Ev>
    80001a0c:	00048513          	mv	a0,s1
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	f8c080e7          	jalr	-116(ra) # 8000199c <_ZdlPv>
    80001a18:	01813083          	ld	ra,24(sp)
    80001a1c:	01013403          	ld	s0,16(sp)
    80001a20:	00813483          	ld	s1,8(sp)
    80001a24:	02010113          	addi	sp,sp,32
    80001a28:	00008067          	ret

0000000080001a2c <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    80001a2c:	ff010113          	addi	sp,sp,-16
    80001a30:	00113423          	sd	ra,8(sp)
    80001a34:	00813023          	sd	s0,0(sp)
    80001a38:	01010413          	addi	s0,sp,16
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	844080e7          	jalr	-1980(ra) # 80001280 <_Z8mem_freePv>
    80001a44:	00813083          	ld	ra,8(sp)
    80001a48:	00013403          	ld	s0,0(sp)
    80001a4c:	01010113          	addi	sp,sp,16
    80001a50:	00008067          	ret

0000000080001a54 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
    80001a54:	ff010113          	addi	sp,sp,-16
    80001a58:	00813423          	sd	s0,8(sp)
    80001a5c:	01010413          	addi	s0,sp,16
    80001a60:	00008797          	auipc	a5,0x8
    80001a64:	7d878793          	addi	a5,a5,2008 # 8000a238 <_ZTV6Thread+0x10>
    80001a68:	00f53023          	sd	a5,0(a0)
    80001a6c:	00053423          	sd	zero,8(a0)
    80001a70:	00b53823          	sd	a1,16(a0)
    80001a74:	00c53c23          	sd	a2,24(a0)
}
    80001a78:	00813403          	ld	s0,8(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret

0000000080001a84 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
    80001a84:	ff010113          	addi	sp,sp,-16
    80001a88:	00813423          	sd	s0,8(sp)
    80001a8c:	01010413          	addi	s0,sp,16
    80001a90:	00008797          	auipc	a5,0x8
    80001a94:	7a878793          	addi	a5,a5,1960 # 8000a238 <_ZTV6Thread+0x10>
    80001a98:	00f53023          	sd	a5,0(a0)
    80001a9c:	00053423          	sd	zero,8(a0)
    80001aa0:	00000797          	auipc	a5,0x0
    80001aa4:	25c78793          	addi	a5,a5,604 # 80001cfc <_ZN6Thread10runWrapperEPv>
    80001aa8:	00f53823          	sd	a5,16(a0)
    80001aac:	00a53c23          	sd	a0,24(a0)
}
    80001ab0:	00813403          	ld	s0,8(sp)
    80001ab4:	01010113          	addi	sp,sp,16
    80001ab8:	00008067          	ret

0000000080001abc <_ZN6Thread8dispatchEv>:
{
    80001abc:	ff010113          	addi	sp,sp,-16
    80001ac0:	00113423          	sd	ra,8(sp)
    80001ac4:	00813023          	sd	s0,0(sp)
    80001ac8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	908080e7          	jalr	-1784(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80001ad4:	00813083          	ld	ra,8(sp)
    80001ad8:	00013403          	ld	s0,0(sp)
    80001adc:	01010113          	addi	sp,sp,16
    80001ae0:	00008067          	ret

0000000080001ae4 <_ZN6Thread5startEv>:
{
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00113423          	sd	ra,8(sp)
    80001aec:	00813023          	sd	s0,0(sp)
    80001af0:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,body, arg);
    80001af4:	01853603          	ld	a2,24(a0)
    80001af8:	01053583          	ld	a1,16(a0)
    80001afc:	00850513          	addi	a0,a0,8
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	818080e7          	jalr	-2024(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001b08:	00813083          	ld	ra,8(sp)
    80001b0c:	00013403          	ld	s0,0(sp)
    80001b10:	01010113          	addi	sp,sp,16
    80001b14:	00008067          	ret

0000000080001b18 <_ZN6Thread5sleepEm>:
{
    80001b18:	ff010113          	addi	sp,sp,-16
    80001b1c:	00113423          	sd	ra,8(sp)
    80001b20:	00813023          	sd	s0,0(sp)
    80001b24:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	9b4080e7          	jalr	-1612(ra) # 800014dc <_Z10time_sleepm>
}
    80001b30:	00813083          	ld	ra,8(sp)
    80001b34:	00013403          	ld	s0,0(sp)
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00008067          	ret

0000000080001b40 <_ZN14PeriodicThread3runEv>:
}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    80001b40:	fe010113          	addi	sp,sp,-32
    80001b44:	00113c23          	sd	ra,24(sp)
    80001b48:	00813823          	sd	s0,16(sp)
    80001b4c:	00913423          	sd	s1,8(sp)
    80001b50:	02010413          	addi	s0,sp,32
    80001b54:	00050493          	mv	s1,a0
    while(period){
    80001b58:	0204b783          	ld	a5,32(s1)
    80001b5c:	02078263          	beqz	a5,80001b80 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001b60:	0004b783          	ld	a5,0(s1)
    80001b64:	0187b783          	ld	a5,24(a5)
    80001b68:	00048513          	mv	a0,s1
    80001b6c:	000780e7          	jalr	a5
        sleep(period);
    80001b70:	0204b503          	ld	a0,32(s1)
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	fa4080e7          	jalr	-92(ra) # 80001b18 <_ZN6Thread5sleepEm>
    while(period){
    80001b7c:	fddff06f          	j	80001b58 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001b80:	01813083          	ld	ra,24(sp)
    80001b84:	01013403          	ld	s0,16(sp)
    80001b88:	00813483          	ld	s1,8(sp)
    80001b8c:	02010113          	addi	sp,sp,32
    80001b90:	00008067          	ret

0000000080001b94 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00113423          	sd	ra,8(sp)
    80001b9c:	00813023          	sd	s0,0(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    80001ba4:	00008797          	auipc	a5,0x8
    80001ba8:	6bc78793          	addi	a5,a5,1724 # 8000a260 <_ZTV9Semaphore+0x10>
    80001bac:	00f53023          	sd	a5,0(a0)
    80001bb0:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    80001bb4:	00850513          	addi	a0,a0,8
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	840080e7          	jalr	-1984(ra) # 800013f8 <_Z8sem_openPP4_semj>
}
    80001bc0:	00813083          	ld	ra,8(sp)
    80001bc4:	00013403          	ld	s0,0(sp)
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00113423          	sd	ra,8(sp)
    80001bd8:	00813023          	sd	s0,0(sp)
    80001bdc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001be0:	00853503          	ld	a0,8(a0)
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	888080e7          	jalr	-1912(ra) # 8000146c <_Z8sem_waitP4_sem>
}
    80001bec:	00813083          	ld	ra,8(sp)
    80001bf0:	00013403          	ld	s0,0(sp)
    80001bf4:	01010113          	addi	sp,sp,16
    80001bf8:	00008067          	ret

0000000080001bfc <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001bfc:	ff010113          	addi	sp,sp,-16
    80001c00:	00113423          	sd	ra,8(sp)
    80001c04:	00813023          	sd	s0,0(sp)
    80001c08:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001c0c:	00853503          	ld	a0,8(a0)
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	894080e7          	jalr	-1900(ra) # 800014a4 <_Z10sem_signalP4_sem>
}
    80001c18:	00813083          	ld	ra,8(sp)
    80001c1c:	00013403          	ld	s0,0(sp)
    80001c20:	01010113          	addi	sp,sp,16
    80001c24:	00008067          	ret

0000000080001c28 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){
    80001c28:	fe010113          	addi	sp,sp,-32
    80001c2c:	00113c23          	sd	ra,24(sp)
    80001c30:	00813823          	sd	s0,16(sp)
    80001c34:	00913423          	sd	s1,8(sp)
    80001c38:	01213023          	sd	s2,0(sp)
    80001c3c:	02010413          	addi	s0,sp,32
    80001c40:	00050493          	mv	s1,a0
    80001c44:	00058913          	mv	s2,a1
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	e3c080e7          	jalr	-452(ra) # 80001a84 <_ZN6ThreadC1Ev>
    80001c50:	00008797          	auipc	a5,0x8
    80001c54:	63078793          	addi	a5,a5,1584 # 8000a280 <_ZTV14PeriodicThread+0x10>
    80001c58:	00f4b023          	sd	a5,0(s1)
    80001c5c:	0324b023          	sd	s2,32(s1)
}
    80001c60:	01813083          	ld	ra,24(sp)
    80001c64:	01013403          	ld	s0,16(sp)
    80001c68:	00813483          	ld	s1,8(sp)
    80001c6c:	00013903          	ld	s2,0(sp)
    80001c70:	02010113          	addi	sp,sp,32
    80001c74:	00008067          	ret

0000000080001c78 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001c78:	ff010113          	addi	sp,sp,-16
    80001c7c:	00813423          	sd	s0,8(sp)
    80001c80:	01010413          	addi	s0,sp,16
    period=0;
    80001c84:	02053023          	sd	zero,32(a0)
}
    80001c88:	00813403          	ld	s0,8(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <_ZN7Console4getcEv>:

char Console::getc() {
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00113423          	sd	ra,8(sp)
    80001c9c:	00813023          	sd	s0,0(sp)
    80001ca0:	01010413          	addi	s0,sp,16
    return ::getc();
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	870080e7          	jalr	-1936(ra) # 80001514 <_Z4getcv>
}
    80001cac:	00813083          	ld	ra,8(sp)
    80001cb0:	00013403          	ld	s0,0(sp)
    80001cb4:	01010113          	addi	sp,sp,16
    80001cb8:	00008067          	ret

0000000080001cbc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001cbc:	ff010113          	addi	sp,sp,-16
    80001cc0:	00113423          	sd	ra,8(sp)
    80001cc4:	00813023          	sd	s0,0(sp)
    80001cc8:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	87c080e7          	jalr	-1924(ra) # 80001548 <_Z4putcc>
    80001cd4:	00813083          	ld	ra,8(sp)
    80001cd8:	00013403          	ld	s0,0(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00813423          	sd	s0,8(sp)
    80001cec:	01010413          	addi	s0,sp,16
    80001cf0:	00813403          	ld	s0,8(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN6Thread10runWrapperEPv>:
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* thread){
        if(thread) ((Thread*) thread)->run();
    80001cfc:	02050863          	beqz	a0,80001d2c <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread){
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00113423          	sd	ra,8(sp)
    80001d08:	00813023          	sd	s0,0(sp)
    80001d0c:	01010413          	addi	s0,sp,16
        if(thread) ((Thread*) thread)->run();
    80001d10:	00053783          	ld	a5,0(a0)
    80001d14:	0107b783          	ld	a5,16(a5)
    80001d18:	000780e7          	jalr	a5
    }
    80001d1c:	00813083          	ld	ra,8(sp)
    80001d20:	00013403          	ld	s0,0(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret
    80001d2c:	00008067          	ret

0000000080001d30 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001d30:	ff010113          	addi	sp,sp,-16
    80001d34:	00813423          	sd	s0,8(sp)
    80001d38:	01010413          	addi	s0,sp,16
    80001d3c:	00813403          	ld	s0,8(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001d48:	ff010113          	addi	sp,sp,-16
    80001d4c:	00813423          	sd	s0,8(sp)
    80001d50:	01010413          	addi	s0,sp,16
    80001d54:	00008797          	auipc	a5,0x8
    80001d58:	52c78793          	addi	a5,a5,1324 # 8000a280 <_ZTV14PeriodicThread+0x10>
    80001d5c:	00f53023          	sd	a5,0(a0)
    80001d60:	00813403          	ld	s0,8(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZN14PeriodicThreadD0Ev>:
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00113423          	sd	ra,8(sp)
    80001d74:	00813023          	sd	s0,0(sp)
    80001d78:	01010413          	addi	s0,sp,16
    80001d7c:	00008797          	auipc	a5,0x8
    80001d80:	50478793          	addi	a5,a5,1284 # 8000a280 <_ZTV14PeriodicThread+0x10>
    80001d84:	00f53023          	sd	a5,0(a0)
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	c14080e7          	jalr	-1004(ra) # 8000199c <_ZdlPv>
    80001d90:	00813083          	ld	ra,8(sp)
    80001d94:	00013403          	ld	s0,0(sp)
    80001d98:	01010113          	addi	sp,sp,16
    80001d9c:	00008067          	ret

0000000080001da0 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80001da0:	ff010113          	addi	sp,sp,-16
    80001da4:	00813423          	sd	s0,8(sp)
    80001da8:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    __asm__ volatile("csrc sstatus, %0" ::"r"(SSTATUS_SPP));
    80001dac:	10000793          	li	a5,256
    80001db0:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrw sepc, ra");
    80001db4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001db8:	10200073          	sret
}
    80001dbc:	00813403          	ld	s0,8(sp)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001dc8:	f4010113          	addi	sp,sp,-192
    80001dcc:	0a113c23          	sd	ra,184(sp)
    80001dd0:	0a813823          	sd	s0,176(sp)
    80001dd4:	0a913423          	sd	s1,168(sp)
    80001dd8:	0c010413          	addi	s0,sp,192
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ddc:	142027f3          	csrr	a5,scause
    80001de0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001de4:	fb843483          	ld	s1,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    80001de8:	ff848713          	addi	a4,s1,-8
    80001dec:	00100793          	li	a5,1
    80001df0:	02e7fc63          	bgeu	a5,a4,80001e28 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver prekid
    80001df4:	fff00793          	li	a5,-1
    80001df8:	03f79793          	slli	a5,a5,0x3f
    80001dfc:	00178793          	addi	a5,a5,1
    80001e00:	20f48c63          	beq	s1,a5,80002018 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause==0x8000000000000009UL){
    80001e04:	fff00793          	li	a5,-1
    80001e08:	03f79793          	slli	a5,a5,0x3f
    80001e0c:	00978793          	addi	a5,a5,9
    80001e10:	28f48263          	beq	s1,a5,80002094 <_ZN5Riscv20handleSupervisorTrapEv+0x2cc>
        //scause - sta se  desilo
        //sepc- gde se desilo
        // stval - dodatno opise cause

    }
    80001e14:	0b813083          	ld	ra,184(sp)
    80001e18:	0b013403          	ld	s0,176(sp)
    80001e1c:	0a813483          	ld	s1,168(sp)
    80001e20:	0c010113          	addi	sp,sp,192
    80001e24:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e28:	141027f3          	csrr	a5,sepc
    80001e2c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001e30:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    80001e34:	00478793          	addi	a5,a5,4
    80001e38:	f4f43823          	sd	a5,-176(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e3c:	100027f3          	csrr	a5,sstatus
    80001e40:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001e44:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001e48:	f4f43c23          	sd	a5,-168(s0)
        __asm__ volatile("ld %0, 80(fp)":"=r"(a0));
    80001e4c:	05043783          	ld	a5,80(s0)
    80001e50:	f6f43023          	sd	a5,-160(s0)
        switch(a0){
    80001e54:	f6043783          	ld	a5,-160(s0)
    80001e58:	04200713          	li	a4,66
    80001e5c:	18f76c63          	bltu	a4,a5,80001ff4 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    80001e60:	00279793          	slli	a5,a5,0x2
    80001e64:	00006717          	auipc	a4,0x6
    80001e68:	1fc70713          	addi	a4,a4,508 # 80008060 <CONSOLE_STATUS+0x50>
    80001e6c:	00e787b3          	add	a5,a5,a4
    80001e70:	0007a783          	lw	a5,0(a5)
    80001e74:	00e787b3          	add	a5,a5,a4
    80001e78:	00078067          	jr	a5
                __asm__ volatile("ld %0, 88(fp)":"=r"(a1));
    80001e7c:	05843783          	ld	a5,88(s0)
    80001e80:	f6f43423          	sd	a5,-152(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    80001e84:	f6843503          	ld	a0,-152(s0)
    80001e88:	00000097          	auipc	ra,0x0
    80001e8c:	3f4080e7          	jalr	1012(ra) # 8000227c <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    80001e90:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80001e94:	04a43823          	sd	a0,80(s0)
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    80001e98:	f5043783          	ld	a5,-176(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e9c:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80001ea0:	f5843783          	ld	a5,-168(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ea4:	10079073          	csrw	sstatus,a5
}
    80001ea8:	f4dff06f          	j	80001df4 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                __asm__ volatile("ld %0, 88(fp)":"=r"(addr));
    80001eac:	05843783          	ld	a5,88(s0)
    80001eb0:	f6f43823          	sd	a5,-144(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    80001eb4:	f7043503          	ld	a0,-144(s0)
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	520080e7          	jalr	1312(ra) # 800023d8 <_ZN15MemoryAllocator8mem_freeEPv>
    80001ec0:	f6a43c23          	sd	a0,-136(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    80001ec4:	f7843783          	ld	a5,-136(s0)
    80001ec8:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80001ecc:	04a43823          	sd	a0,80(s0)
                break;
    80001ed0:	fc9ff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                space=MemoryAllocator::getFree();
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	314080e7          	jalr	788(ra) # 800021e8 <_ZN15MemoryAllocator7getFreeEv>
    80001edc:	f8a43023          	sd	a0,-128(s0)
                __asm__ volatile("mv a0, %0"::"r"(space));
    80001ee0:	f8043783          	ld	a5,-128(s0)
    80001ee4:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80001ee8:	04a43823          	sd	a0,80(s0)
                break;
    80001eec:	fadff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                block=MemoryAllocator::getLargestFreeBlock();
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	318080e7          	jalr	792(ra) # 80002208 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    80001ef8:	f8a43423          	sd	a0,-120(s0)
                __asm__ volatile("mv a0, %0"::"r"(block));
    80001efc:	f8843783          	ld	a5,-120(s0)
    80001f00:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80001f04:	04a43823          	sd	a0,80(s0)
                break;
    80001f08:	f91ff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80001f0c:	05843783          	ld	a5,88(s0)
    80001f10:	f8f43823          	sd	a5,-112(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(start_routine));
    80001f14:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(arg));
    80001f18:	06843783          	ld	a5,104(s0)
    80001f1c:	f8f43c23          	sd	a5,-104(s0)
                __asm__ volatile("ld %0, 8*14(fp)":"=r"(addr));
    80001f20:	07043783          	ld	a5,112(s0)
    80001f24:	faf43023          	sd	a5,-96(s0)
                TCB *thread =TCB::createThread(body,arg,addr);
    80001f28:	f9843583          	ld	a1,-104(s0)
    80001f2c:	fa043603          	ld	a2,-96(s0)
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	7d0080e7          	jalr	2000(ra) # 80001700 <_ZN3TCB12createThreadEPFvPvES0_Pm>
                *(TCB**) handle= thread;
    80001f38:	f9043703          	ld	a4,-112(s0)
    80001f3c:	00a73023          	sd	a0,0(a4)
                if(thread){
    80001f40:	00050a63          	beqz	a0,80001f54 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    __asm__ volatile("mv a0, %0"::"r"(0));
    80001f44:	00000793          	li	a5,0
    80001f48:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80001f4c:	04a43823          	sd	a0,80(s0)
    80001f50:	f49ff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80001f54:	fff00793          	li	a5,-1
    80001f58:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80001f5c:	04a43823          	sd	a0,80(s0)
    80001f60:	f39ff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                TCB::timeSliceCounter=0;
    80001f64:	00008797          	auipc	a5,0x8
    80001f68:	5047b783          	ld	a5,1284(a5) # 8000a468 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f6c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	84c080e7          	jalr	-1972(ra) # 800017bc <_ZN3TCB8dispatchEv>
                break;
    80001f78:	f21ff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                if(!TCB::running->isFinished()){
    80001f7c:	00008797          	auipc	a5,0x8
    80001f80:	50c7b783          	ld	a5,1292(a5) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001f84:	0007b783          	ld	a5,0(a5)
    bool isFinished(){return finished;}
    80001f88:	0307c703          	lbu	a4,48(a5)
    80001f8c:	00070a63          	beqz	a4,80001fa0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                else ret=-1;
    80001f90:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80001f94:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80001f98:	04a43823          	sd	a0,80(s0)
                break;
    80001f9c:	efdff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    void setFinished(bool flag){ TCB::finished = flag;}
    80001fa0:	00100713          	li	a4,1
    80001fa4:	02e78823          	sb	a4,48(a5)
                    TCB::timeSliceCounter=0;
    80001fa8:	00008797          	auipc	a5,0x8
    80001fac:	4c07b783          	ld	a5,1216(a5) # 8000a468 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001fb0:	0007b023          	sd	zero,0(a5)
                    TCB::dispatch();
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	808080e7          	jalr	-2040(ra) # 800017bc <_ZN3TCB8dispatchEv>
                uint64 ret=0;
    80001fbc:	00000793          	li	a5,0
    80001fc0:	fd5ff06f          	j	80001f94 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                char ret=__getc();
    80001fc4:	00006097          	auipc	ra,0x6
    80001fc8:	dc4080e7          	jalr	-572(ra) # 80007d88 <__getc>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80001fcc:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80001fd0:	04a43823          	sd	a0,80(s0)
                break;
    80001fd4:	ec5ff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(c));
    80001fd8:	05843783          	ld	a5,88(s0)
    80001fdc:	f4f407a3          	sb	a5,-177(s0)
                __putc(c);
    80001fe0:	f4f44503          	lbu	a0,-177(s0)
    80001fe4:	0ff57513          	andi	a0,a0,255
    80001fe8:	00006097          	auipc	ra,0x6
    80001fec:	d64080e7          	jalr	-668(ra) # 80007d4c <__putc>
                break;
    80001ff0:	ea9ff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                printString("Unknown error, system is shitting down\n");
    80001ff4:	00006517          	auipc	a0,0x6
    80001ff8:	04450513          	addi	a0,a0,68 # 80008038 <CONSOLE_STATUS+0x28>
    80001ffc:	00003097          	auipc	ra,0x3
    80002000:	a64080e7          	jalr	-1436(ra) # 80004a60 <_Z11printStringPKc>
                __asm__ volatile("sw %[val], 0(%[addr])" : : [val] "r"(val), [addr] "r"(addr));
    80002004:	000057b7          	lui	a5,0x5
    80002008:	5557879b          	addiw	a5,a5,1365
    8000200c:	00100737          	lui	a4,0x100
    80002010:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
                while (1);
    80002014:	0000006f          	j	80002014 <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
        TCB::timeSliceCounter++;
    80002018:	00008717          	auipc	a4,0x8
    8000201c:	45073703          	ld	a4,1104(a4) # 8000a468 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002020:	00073783          	ld	a5,0(a4)
    80002024:	00178793          	addi	a5,a5,1 # 5001 <_entry-0x7fffafff>
    80002028:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    8000202c:	00008717          	auipc	a4,0x8
    80002030:	45c73703          	ld	a4,1116(a4) # 8000a488 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002034:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const {return timeSlice;}
    80002038:	01873703          	ld	a4,24(a4)
    8000203c:	00e7f863          	bgeu	a5,a4,8000204c <_ZN5Riscv20handleSupervisorTrapEv+0x284>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002040:	00200793          	li	a5,2
    80002044:	1447b073          	csrc	sip,a5
}
    80002048:	dcdff06f          	j	80001e14 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000204c:	141027f3          	csrr	a5,sepc
    80002050:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002054:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80002058:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000205c:	100027f3          	csrr	a5,sstatus
    80002060:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002064:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80002068:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter=0;
    8000206c:	00008797          	auipc	a5,0x8
    80002070:	3fc7b783          	ld	a5,1020(a5) # 8000a468 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002074:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	744080e7          	jalr	1860(ra) # 800017bc <_ZN3TCB8dispatchEv>
            w_sepc(sepc);
    80002080:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002084:	14179073          	csrw	sepc,a5
            w_sstatus(sstatus);
    80002088:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000208c:	10079073          	csrw	sstatus,a5
}
    80002090:	fb1ff06f          	j	80002040 <_ZN5Riscv20handleSupervisorTrapEv+0x278>
        console_handler();
    80002094:	00006097          	auipc	ra,0x6
    80002098:	d2c080e7          	jalr	-724(ra) # 80007dc0 <console_handler>
    8000209c:	d79ff06f          	j	80001e14 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>

00000000800020a0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00813423          	sd	s0,8(sp)
    800020a8:	01010413          	addi	s0,sp,16
    800020ac:	00100793          	li	a5,1
    800020b0:	00f50863          	beq	a0,a5,800020c0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00008067          	ret
    800020c0:	000107b7          	lui	a5,0x10
    800020c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800020c8:	fef596e3          	bne	a1,a5,800020b4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800020cc:	00008797          	auipc	a5,0x8
    800020d0:	42478793          	addi	a5,a5,1060 # 8000a4f0 <_ZN9Scheduler16readyThreadQueueE>
    800020d4:	0007b023          	sd	zero,0(a5)
    800020d8:	0007b423          	sd	zero,8(a5)
    800020dc:	fd9ff06f          	j	800020b4 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800020e0 <_ZN9Scheduler3getEv>:
{
    800020e0:	fe010113          	addi	sp,sp,-32
    800020e4:	00113c23          	sd	ra,24(sp)
    800020e8:	00813823          	sd	s0,16(sp)
    800020ec:	00913423          	sd	s1,8(sp)
    800020f0:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800020f4:	00008517          	auipc	a0,0x8
    800020f8:	3fc53503          	ld	a0,1020(a0) # 8000a4f0 <_ZN9Scheduler16readyThreadQueueE>
    800020fc:	04050263          	beqz	a0,80002140 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80002100:	00853783          	ld	a5,8(a0)
    80002104:	00008717          	auipc	a4,0x8
    80002108:	3ef73623          	sd	a5,1004(a4) # 8000a4f0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000210c:	02078463          	beqz	a5,80002134 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80002110:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80002114:	00000097          	auipc	ra,0x0
    80002118:	2c4080e7          	jalr	708(ra) # 800023d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000211c:	00048513          	mv	a0,s1
    80002120:	01813083          	ld	ra,24(sp)
    80002124:	01013403          	ld	s0,16(sp)
    80002128:	00813483          	ld	s1,8(sp)
    8000212c:	02010113          	addi	sp,sp,32
    80002130:	00008067          	ret
        if (!head) { tail = 0; }
    80002134:	00008797          	auipc	a5,0x8
    80002138:	3c07b223          	sd	zero,964(a5) # 8000a4f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000213c:	fd5ff06f          	j	80002110 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002140:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002144:	fd9ff06f          	j	8000211c <_ZN9Scheduler3getEv+0x3c>

0000000080002148 <_ZN9Scheduler3putEP3TCB>:
{
    80002148:	fe010113          	addi	sp,sp,-32
    8000214c:	00113c23          	sd	ra,24(sp)
    80002150:	00813823          	sd	s0,16(sp)
    80002154:	00913423          	sd	s1,8(sp)
    80002158:	02010413          	addi	s0,sp,32
    8000215c:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80002160:	01000513          	li	a0,16
    80002164:	00000097          	auipc	ra,0x0
    80002168:	118080e7          	jalr	280(ra) # 8000227c <_ZN15MemoryAllocator9mem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000216c:	00953023          	sd	s1,0(a0)
    80002170:	00053423          	sd	zero,8(a0)
        if (tail)
    80002174:	00008797          	auipc	a5,0x8
    80002178:	3847b783          	ld	a5,900(a5) # 8000a4f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000217c:	02078263          	beqz	a5,800021a0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002180:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002184:	00008797          	auipc	a5,0x8
    80002188:	36a7ba23          	sd	a0,884(a5) # 8000a4f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000218c:	01813083          	ld	ra,24(sp)
    80002190:	01013403          	ld	s0,16(sp)
    80002194:	00813483          	ld	s1,8(sp)
    80002198:	02010113          	addi	sp,sp,32
    8000219c:	00008067          	ret
            head = tail = elem;
    800021a0:	00008797          	auipc	a5,0x8
    800021a4:	35078793          	addi	a5,a5,848 # 8000a4f0 <_ZN9Scheduler16readyThreadQueueE>
    800021a8:	00a7b423          	sd	a0,8(a5)
    800021ac:	00a7b023          	sd	a0,0(a5)
    800021b0:	fddff06f          	j	8000218c <_ZN9Scheduler3putEP3TCB+0x44>

00000000800021b4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	00813023          	sd	s0,0(sp)
    800021c0:	01010413          	addi	s0,sp,16
    800021c4:	000105b7          	lui	a1,0x10
    800021c8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800021cc:	00100513          	li	a0,1
    800021d0:	00000097          	auipc	ra,0x0
    800021d4:	ed0080e7          	jalr	-304(ra) # 800020a0 <_Z41__static_initialization_and_destruction_0ii>
    800021d8:	00813083          	ld	ra,8(sp)
    800021dc:	00013403          	ld	s0,0(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <_ZN15MemoryAllocator7getFreeEv>:
    findNewLargest();
    return 0;
}

size_t MemoryAllocator::getFree()
{
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00813423          	sd	s0,8(sp)
    800021f0:	01010413          	addi	s0,sp,16

    return totalFreeMem;
}
    800021f4:	00008517          	auipc	a0,0x8
    800021f8:	30c53503          	ld	a0,780(a0) # 8000a500 <_ZN15MemoryAllocator12totalFreeMemE>
    800021fc:	00813403          	ld	s0,8(sp)
    80002200:	01010113          	addi	sp,sp,16
    80002204:	00008067          	ret

0000000080002208 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock()
{
    80002208:	ff010113          	addi	sp,sp,-16
    8000220c:	00813423          	sd	s0,8(sp)
    80002210:	01010413          	addi	s0,sp,16
    return largestFreeBlock;
}
    80002214:	00008517          	auipc	a0,0x8
    80002218:	2f453503          	ld	a0,756(a0) # 8000a508 <_ZN15MemoryAllocator16largestFreeBlockE>
    8000221c:	00813403          	ld	s0,8(sp)
    80002220:	01010113          	addi	sp,sp,16
    80002224:	00008067          	ret

0000000080002228 <_ZN15MemoryAllocator14findNewLargestEv>:

void MemoryAllocator::findNewLargest()
{
    80002228:	ff010113          	addi	sp,sp,-16
    8000222c:	00813423          	sd	s0,8(sp)
    80002230:	01010413          	addi	s0,sp,16
    largestFreeBlock=0;
    80002234:	00008797          	auipc	a5,0x8
    80002238:	2cc78793          	addi	a5,a5,716 # 8000a500 <_ZN15MemoryAllocator12totalFreeMemE>
    8000223c:	0007b423          	sd	zero,8(a5)
    if(!freeMemHead) return;
    80002240:	0107b783          	ld	a5,16(a5)
    80002244:	00079e63          	bnez	a5,80002260 <_ZN15MemoryAllocator14findNewLargestEv+0x38>
    while(curr) {
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
        curr=curr->next;
    }

}
    80002248:	00813403          	ld	s0,8(sp)
    8000224c:	01010113          	addi	sp,sp,16
    80002250:	00008067          	ret
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002254:	00008697          	auipc	a3,0x8
    80002258:	2ae6ba23          	sd	a4,692(a3) # 8000a508 <_ZN15MemoryAllocator16largestFreeBlockE>
        curr=curr->next;
    8000225c:	0107b783          	ld	a5,16(a5)
    while(curr) {
    80002260:	fe0784e3          	beqz	a5,80002248 <_ZN15MemoryAllocator14findNewLargestEv+0x20>
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002264:	0007b683          	ld	a3,0(a5)
    80002268:	00008717          	auipc	a4,0x8
    8000226c:	2a073703          	ld	a4,672(a4) # 8000a508 <_ZN15MemoryAllocator16largestFreeBlockE>
    80002270:	fed772e3          	bgeu	a4,a3,80002254 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>
    80002274:	00068713          	mv	a4,a3
    80002278:	fddff06f          	j	80002254 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>

000000008000227c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000227c:	fe010113          	addi	sp,sp,-32
    80002280:	00113c23          	sd	ra,24(sp)
    80002284:	00813823          	sd	s0,16(sp)
    80002288:	00913423          	sd	s1,8(sp)
    8000228c:	02010413          	addi	s0,sp,32
    size_t size=numOfBlocks*MEM_BLOCK_SIZE;
    80002290:	00651513          	slli	a0,a0,0x6
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    80002294:	12050e63          	beqz	a0,800023d0 <_ZN15MemoryAllocator9mem_allocEm+0x154>
    80002298:	00008497          	auipc	s1,0x8
    8000229c:	2784b483          	ld	s1,632(s1) # 8000a510 <_ZN15MemoryAllocator11freeMemHeadE>
    800022a0:	0e048e63          	beqz	s1,8000239c <_ZN15MemoryAllocator9mem_allocEm+0x120>
    800022a4:	00008717          	auipc	a4,0x8
    800022a8:	26473703          	ld	a4,612(a4) # 8000a508 <_ZN15MemoryAllocator16largestFreeBlockE>
    800022ac:	00a77863          	bgeu	a4,a0,800022bc <_ZN15MemoryAllocator9mem_allocEm+0x40>
    800022b0:	00000493          	li	s1,0
    800022b4:	0e80006f          	j	8000239c <_ZN15MemoryAllocator9mem_allocEm+0x120>
    while(curr && curr->size<size) curr=curr->next;
    800022b8:	0104b483          	ld	s1,16(s1)
    800022bc:	00048663          	beqz	s1,800022c8 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    800022c0:	0004b783          	ld	a5,0(s1)
    800022c4:	fea7eae3          	bltu	a5,a0,800022b8 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if(!curr) return nullptr;
    800022c8:	0c048a63          	beqz	s1,8000239c <_ZN15MemoryAllocator9mem_allocEm+0x120>
    if(curr->size> size+sizeof(FreeBlock)){
    800022cc:	0004b683          	ld	a3,0(s1)
    800022d0:	01850793          	addi	a5,a0,24
    800022d4:	08d7f063          	bgeu	a5,a3,80002354 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        totalFreeMem=totalFreeMem-size-sizeof(FreeBlock);
    800022d8:	00008617          	auipc	a2,0x8
    800022dc:	22860613          	addi	a2,a2,552 # 8000a500 <_ZN15MemoryAllocator12totalFreeMemE>
    800022e0:	00063683          	ld	a3,0(a2)
    800022e4:	40a686b3          	sub	a3,a3,a0
    800022e8:	fe868693          	addi	a3,a3,-24
    800022ec:	00d63023          	sd	a3,0(a2)
        if(largestFreeBlock==curr->size) find=true;
    800022f0:	0004b683          	ld	a3,0(s1)
    800022f4:	04d70663          	beq	a4,a3,80002340 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        bool find=false;
    800022f8:	00000613          	li	a2,0
        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    800022fc:	00f487b3          	add	a5,s1,a5
        newBlock->size=curr->size-size-sizeof(FreeBlock);
    80002300:	40a686b3          	sub	a3,a3,a0
    80002304:	fe868693          	addi	a3,a3,-24
    80002308:	00d7b023          	sd	a3,0(a5)
        newBlock->prev=curr->prev;
    8000230c:	0084b703          	ld	a4,8(s1)
    80002310:	00e7b423          	sd	a4,8(a5)
        curr->size=size;
    80002314:	00a4b023          	sd	a0,0(s1)
        if(curr->prev){
    80002318:	02070863          	beqz	a4,80002348 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            curr->prev->next=newBlock;
    8000231c:	00f73823          	sd	a5,16(a4)
        newBlock->next=curr->next;
    80002320:	0104b703          	ld	a4,16(s1)
    80002324:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=newBlock;
    80002328:	00070463          	beqz	a4,80002330 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    8000232c:	00f73423          	sd	a5,8(a4)
        if(find) findNewLargest();
    80002330:	06060063          	beqz	a2,80002390 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80002334:	00000097          	auipc	ra,0x0
    80002338:	ef4080e7          	jalr	-268(ra) # 80002228 <_ZN15MemoryAllocator14findNewLargestEv>
    8000233c:	0540006f          	j	80002390 <_ZN15MemoryAllocator9mem_allocEm+0x114>
        if(largestFreeBlock==curr->size) find=true;
    80002340:	00100613          	li	a2,1
    80002344:	fb9ff06f          	j	800022fc <_ZN15MemoryAllocator9mem_allocEm+0x80>
        else freeMemHead = newBlock;
    80002348:	00008717          	auipc	a4,0x8
    8000234c:	1cf73423          	sd	a5,456(a4) # 8000a510 <_ZN15MemoryAllocator11freeMemHeadE>
    80002350:	fd1ff06f          	j	80002320 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        totalFreeMem=totalFreeMem-curr->size;
    80002354:	00008617          	auipc	a2,0x8
    80002358:	1ac60613          	addi	a2,a2,428 # 8000a500 <_ZN15MemoryAllocator12totalFreeMemE>
    8000235c:	00063783          	ld	a5,0(a2)
    80002360:	40d786b3          	sub	a3,a5,a3
    80002364:	00d63023          	sd	a3,0(a2)
        if(curr->prev) curr->prev->next=curr->next;
    80002368:	0084b783          	ld	a5,8(s1)
    8000236c:	04078463          	beqz	a5,800023b4 <_ZN15MemoryAllocator9mem_allocEm+0x138>
    80002370:	0104b683          	ld	a3,16(s1)
    80002374:	00d7b823          	sd	a3,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80002378:	0104b783          	ld	a5,16(s1)
    8000237c:	00078663          	beqz	a5,80002388 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    80002380:	0084b683          	ld	a3,8(s1)
    80002384:	00d7b423          	sd	a3,8(a5)
        if(curr->size==largestFreeBlock) findNewLargest();
    80002388:	0004b783          	ld	a5,0(s1)
    8000238c:	02f70c63          	beq	a4,a5,800023c4 <_ZN15MemoryAllocator9mem_allocEm+0x148>
    curr->next=nullptr;
    80002390:	0004b823          	sd	zero,16(s1)
    curr->prev=nullptr;
    80002394:	0004b423          	sd	zero,8(s1)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    80002398:	01848493          	addi	s1,s1,24
}
    8000239c:	00048513          	mv	a0,s1
    800023a0:	01813083          	ld	ra,24(sp)
    800023a4:	01013403          	ld	s0,16(sp)
    800023a8:	00813483          	ld	s1,8(sp)
    800023ac:	02010113          	addi	sp,sp,32
    800023b0:	00008067          	ret
        else freeMemHead=curr->next;
    800023b4:	0104b783          	ld	a5,16(s1)
    800023b8:	00008697          	auipc	a3,0x8
    800023bc:	14f6bc23          	sd	a5,344(a3) # 8000a510 <_ZN15MemoryAllocator11freeMemHeadE>
    800023c0:	fb9ff06f          	j	80002378 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if(curr->size==largestFreeBlock) findNewLargest();
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	e64080e7          	jalr	-412(ra) # 80002228 <_ZN15MemoryAllocator14findNewLargestEv>
    800023cc:	fc5ff06f          	j	80002390 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    800023d0:	00000493          	li	s1,0
    800023d4:	fc9ff06f          	j	8000239c <_ZN15MemoryAllocator9mem_allocEm+0x120>

00000000800023d8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    800023d8:	1e050c63          	beqz	a0,800025d0 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800023dc:	fe850693          	addi	a3,a0,-24
    800023e0:	00008797          	auipc	a5,0x8
    800023e4:	0787b783          	ld	a5,120(a5) # 8000a458 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023e8:	0007b783          	ld	a5,0(a5)
    800023ec:	1ef6e663          	bltu	a3,a5,800025d8 <_ZN15MemoryAllocator8mem_freeEPv+0x200>
    800023f0:	00008797          	auipc	a5,0x8
    800023f4:	0a07b783          	ld	a5,160(a5) # 8000a490 <_GLOBAL_OFFSET_TABLE_+0x48>
    800023f8:	0007b783          	ld	a5,0(a5)
    800023fc:	1ea7e263          	bltu	a5,a0,800025e0 <_ZN15MemoryAllocator8mem_freeEPv+0x208>
    totalFreeMem+=blk->size;
    80002400:	fe853603          	ld	a2,-24(a0)
    80002404:	00008797          	auipc	a5,0x8
    80002408:	0fc78793          	addi	a5,a5,252 # 8000a500 <_ZN15MemoryAllocator12totalFreeMemE>
    8000240c:	0007b703          	ld	a4,0(a5)
    80002410:	00c70733          	add	a4,a4,a2
    80002414:	00e7b023          	sd	a4,0(a5)
    blk->next=nullptr;
    80002418:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    8000241c:	fe053823          	sd	zero,-16(a0)
    if(!freeMemHead){
    80002420:	0107b603          	ld	a2,16(a5)
    80002424:	08060463          	beqz	a2,800024ac <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
{
    80002428:	ff010113          	addi	sp,sp,-16
    8000242c:	00113423          	sd	ra,8(sp)
    80002430:	00813023          	sd	s0,0(sp)
    80002434:	01010413          	addi	s0,sp,16
    if((char*) blk < (char*) freeMemHead){
    80002438:	0cc6e263          	bltu	a3,a2,800024fc <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    8000243c:	00060793          	mv	a5,a2
    80002440:	00078713          	mv	a4,a5
    80002444:	0107b783          	ld	a5,16(a5)
    80002448:	00078463          	beqz	a5,80002450 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    8000244c:	fed7eae3          	bltu	a5,a3,80002440 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    80002450:	0a070863          	beqz	a4,80002500 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    80002454:	00073803          	ld	a6,0(a4)
    80002458:	01880593          	addi	a1,a6,24
    8000245c:	00b705b3          	add	a1,a4,a1
    80002460:	0ab69063          	bne	a3,a1,80002500 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
        curr->size+=sizeof(FreeBlock)+blk->size;
    80002464:	fe853683          	ld	a3,-24(a0)
    80002468:	00d806b3          	add	a3,a6,a3
    8000246c:	01868693          	addi	a3,a3,24
    80002470:	00d73023          	sd	a3,0(a4)
        totalFreeMem+=sizeof(FreeBlock);
    80002474:	00008617          	auipc	a2,0x8
    80002478:	08c60613          	addi	a2,a2,140 # 8000a500 <_ZN15MemoryAllocator12totalFreeMemE>
    8000247c:	00063683          	ld	a3,0(a2)
    80002480:	01868693          	addi	a3,a3,24
    80002484:	00d63023          	sd	a3,0(a2)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80002488:	00078a63          	beqz	a5,8000249c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    8000248c:	00073603          	ld	a2,0(a4)
    80002490:	01860693          	addi	a3,a2,24
    80002494:	00d706b3          	add	a3,a4,a3
    80002498:	02d78663          	beq	a5,a3,800024c4 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        findNewLargest();
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	d8c080e7          	jalr	-628(ra) # 80002228 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    800024a4:	00000513          	li	a0,0
    800024a8:	09c0006f          	j	80002544 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        freeMemHead=blk;
    800024ac:	00d7b823          	sd	a3,16(a5)
        totalFreeMem=blk->size;
    800024b0:	fe853703          	ld	a4,-24(a0)
    800024b4:	00e7b023          	sd	a4,0(a5)
        largestFreeBlock=totalFreeMem;
    800024b8:	00e7b423          	sd	a4,8(a5)
        return 0;
    800024bc:	00000513          	li	a0,0
    800024c0:	00008067          	ret
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    800024c4:	0007b683          	ld	a3,0(a5)
    800024c8:	00d606b3          	add	a3,a2,a3
    800024cc:	01868693          	addi	a3,a3,24
    800024d0:	00d73023          	sd	a3,0(a4)
            totalFreeMem+=sizeof(FreeBlock);
    800024d4:	00008617          	auipc	a2,0x8
    800024d8:	02c60613          	addi	a2,a2,44 # 8000a500 <_ZN15MemoryAllocator12totalFreeMemE>
    800024dc:	00063683          	ld	a3,0(a2)
    800024e0:	01868693          	addi	a3,a3,24
    800024e4:	00d63023          	sd	a3,0(a2)
            curr->next=curr->next->next;
    800024e8:	0107b783          	ld	a5,16(a5)
    800024ec:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    800024f0:	fa0786e3          	beqz	a5,8000249c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    800024f4:	00e7b423          	sd	a4,8(a5)
    800024f8:	fa5ff06f          	j	8000249c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        curr=nullptr;
    800024fc:	00000713          	li	a4,0
    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    80002500:	00070463          	beqz	a4,80002508 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    80002504:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    80002508:	00060863          	beqz	a2,80002518 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    8000250c:	fe853783          	ld	a5,-24(a0)
    80002510:	00f507b3          	add	a5,a0,a5
    80002514:	04c78063          	beq	a5,a2,80002554 <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    blk->prev=curr;
    80002518:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    8000251c:	08070e63          	beqz	a4,800025b8 <_ZN15MemoryAllocator8mem_freeEPv+0x1e0>
    80002520:	01073783          	ld	a5,16(a4)
    80002524:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    80002528:	00078463          	beqz	a5,80002530 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    8000252c:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    80002530:	08070a63          	beqz	a4,800025c4 <_ZN15MemoryAllocator8mem_freeEPv+0x1ec>
    80002534:	00d73823          	sd	a3,16(a4)
    findNewLargest();
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	cf0080e7          	jalr	-784(ra) # 80002228 <_ZN15MemoryAllocator14findNewLargestEv>
    return 0;
    80002540:	00000513          	li	a0,0
}
    80002544:	00813083          	ld	ra,8(sp)
    80002548:	00013403          	ld	s0,0(sp)
    8000254c:	01010113          	addi	sp,sp,16
    80002550:	00008067          	ret
        totalFreeMem+=sizeof(FreeBlock);
    80002554:	00008717          	auipc	a4,0x8
    80002558:	fac70713          	addi	a4,a4,-84 # 8000a500 <_ZN15MemoryAllocator12totalFreeMemE>
    8000255c:	00073783          	ld	a5,0(a4)
    80002560:	01878793          	addi	a5,a5,24
    80002564:	00f73023          	sd	a5,0(a4)
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    80002568:	00063783          	ld	a5,0(a2)
    8000256c:	fe853703          	ld	a4,-24(a0)
    80002570:	00e787b3          	add	a5,a5,a4
    80002574:	01878793          	addi	a5,a5,24
    80002578:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    8000257c:	01063783          	ld	a5,16(a2)
    80002580:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    80002584:	00078463          	beqz	a5,8000258c <_ZN15MemoryAllocator8mem_freeEPv+0x1b4>
    80002588:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    8000258c:	00863783          	ld	a5,8(a2)
    80002590:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    80002594:	00078c63          	beqz	a5,800025ac <_ZN15MemoryAllocator8mem_freeEPv+0x1d4>
    80002598:	00d7b823          	sd	a3,16(a5)
        findNewLargest();
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	c8c080e7          	jalr	-884(ra) # 80002228 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    800025a4:	00000513          	li	a0,0
    800025a8:	f9dff06f          	j	80002544 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        else freeMemHead=blk;
    800025ac:	00008797          	auipc	a5,0x8
    800025b0:	f6d7b223          	sd	a3,-156(a5) # 8000a510 <_ZN15MemoryAllocator11freeMemHeadE>
    800025b4:	fe9ff06f          	j	8000259c <_ZN15MemoryAllocator8mem_freeEPv+0x1c4>
    blk->next=curr?curr->next:freeMemHead;
    800025b8:	00008797          	auipc	a5,0x8
    800025bc:	f587b783          	ld	a5,-168(a5) # 8000a510 <_ZN15MemoryAllocator11freeMemHeadE>
    800025c0:	f65ff06f          	j	80002524 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    else freeMemHead=blk;
    800025c4:	00008797          	auipc	a5,0x8
    800025c8:	f4d7b623          	sd	a3,-180(a5) # 8000a510 <_ZN15MemoryAllocator11freeMemHeadE>
    800025cc:	f6dff06f          	j	80002538 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    if(!addr) return -1;
    800025d0:	fff00513          	li	a0,-1
    800025d4:	00008067          	ret
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800025d8:	ffe00513          	li	a0,-2
    800025dc:	00008067          	ret
    800025e0:	ffe00513          	li	a0,-2
}
    800025e4:	00008067          	ret

00000000800025e8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800025e8:	fe010113          	addi	sp,sp,-32
    800025ec:	00113c23          	sd	ra,24(sp)
    800025f0:	00813823          	sd	s0,16(sp)
    800025f4:	00913423          	sd	s1,8(sp)
    800025f8:	01213023          	sd	s2,0(sp)
    800025fc:	02010413          	addi	s0,sp,32
    80002600:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002604:	00000913          	li	s2,0
    80002608:	00c0006f          	j	80002614 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000260c:	fffff097          	auipc	ra,0xfffff
    80002610:	dc8080e7          	jalr	-568(ra) # 800013d4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	f00080e7          	jalr	-256(ra) # 80001514 <_Z4getcv>
    8000261c:	0005059b          	sext.w	a1,a0
    80002620:	01b00793          	li	a5,27
    80002624:	02f58a63          	beq	a1,a5,80002658 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002628:	0084b503          	ld	a0,8(s1)
    8000262c:	00003097          	auipc	ra,0x3
    80002630:	3e0080e7          	jalr	992(ra) # 80005a0c <_ZN6Buffer3putEi>
        i++;
    80002634:	0019071b          	addiw	a4,s2,1
    80002638:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000263c:	0004a683          	lw	a3,0(s1)
    80002640:	0026979b          	slliw	a5,a3,0x2
    80002644:	00d787bb          	addw	a5,a5,a3
    80002648:	0017979b          	slliw	a5,a5,0x1
    8000264c:	02f767bb          	remw	a5,a4,a5
    80002650:	fc0792e3          	bnez	a5,80002614 <_ZL16producerKeyboardPv+0x2c>
    80002654:	fb9ff06f          	j	8000260c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002658:	00100793          	li	a5,1
    8000265c:	00008717          	auipc	a4,0x8
    80002660:	eaf72e23          	sw	a5,-324(a4) # 8000a518 <_ZL9threadEnd>
    data->buffer->put('!');
    80002664:	02100593          	li	a1,33
    80002668:	0084b503          	ld	a0,8(s1)
    8000266c:	00003097          	auipc	ra,0x3
    80002670:	3a0080e7          	jalr	928(ra) # 80005a0c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002674:	0104b503          	ld	a0,16(s1)
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	e2c080e7          	jalr	-468(ra) # 800014a4 <_Z10sem_signalP4_sem>
}
    80002680:	01813083          	ld	ra,24(sp)
    80002684:	01013403          	ld	s0,16(sp)
    80002688:	00813483          	ld	s1,8(sp)
    8000268c:	00013903          	ld	s2,0(sp)
    80002690:	02010113          	addi	sp,sp,32
    80002694:	00008067          	ret

0000000080002698 <_ZL8producerPv>:

static void producer(void *arg) {
    80002698:	fe010113          	addi	sp,sp,-32
    8000269c:	00113c23          	sd	ra,24(sp)
    800026a0:	00813823          	sd	s0,16(sp)
    800026a4:	00913423          	sd	s1,8(sp)
    800026a8:	01213023          	sd	s2,0(sp)
    800026ac:	02010413          	addi	s0,sp,32
    800026b0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800026b4:	00000913          	li	s2,0
    800026b8:	00c0006f          	j	800026c4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	d18080e7          	jalr	-744(ra) # 800013d4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800026c4:	00008797          	auipc	a5,0x8
    800026c8:	e547a783          	lw	a5,-428(a5) # 8000a518 <_ZL9threadEnd>
    800026cc:	02079e63          	bnez	a5,80002708 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800026d0:	0004a583          	lw	a1,0(s1)
    800026d4:	0305859b          	addiw	a1,a1,48
    800026d8:	0084b503          	ld	a0,8(s1)
    800026dc:	00003097          	auipc	ra,0x3
    800026e0:	330080e7          	jalr	816(ra) # 80005a0c <_ZN6Buffer3putEi>
        i++;
    800026e4:	0019071b          	addiw	a4,s2,1
    800026e8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800026ec:	0004a683          	lw	a3,0(s1)
    800026f0:	0026979b          	slliw	a5,a3,0x2
    800026f4:	00d787bb          	addw	a5,a5,a3
    800026f8:	0017979b          	slliw	a5,a5,0x1
    800026fc:	02f767bb          	remw	a5,a4,a5
    80002700:	fc0792e3          	bnez	a5,800026c4 <_ZL8producerPv+0x2c>
    80002704:	fb9ff06f          	j	800026bc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002708:	0104b503          	ld	a0,16(s1)
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	d98080e7          	jalr	-616(ra) # 800014a4 <_Z10sem_signalP4_sem>
}
    80002714:	01813083          	ld	ra,24(sp)
    80002718:	01013403          	ld	s0,16(sp)
    8000271c:	00813483          	ld	s1,8(sp)
    80002720:	00013903          	ld	s2,0(sp)
    80002724:	02010113          	addi	sp,sp,32
    80002728:	00008067          	ret

000000008000272c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000272c:	fd010113          	addi	sp,sp,-48
    80002730:	02113423          	sd	ra,40(sp)
    80002734:	02813023          	sd	s0,32(sp)
    80002738:	00913c23          	sd	s1,24(sp)
    8000273c:	01213823          	sd	s2,16(sp)
    80002740:	01313423          	sd	s3,8(sp)
    80002744:	03010413          	addi	s0,sp,48
    80002748:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000274c:	00000993          	li	s3,0
    80002750:	01c0006f          	j	8000276c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002754:	fffff097          	auipc	ra,0xfffff
    80002758:	c80080e7          	jalr	-896(ra) # 800013d4 <_Z15thread_dispatchv>
    8000275c:	0500006f          	j	800027ac <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002760:	00a00513          	li	a0,10
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	de4080e7          	jalr	-540(ra) # 80001548 <_Z4putcc>
    while (!threadEnd) {
    8000276c:	00008797          	auipc	a5,0x8
    80002770:	dac7a783          	lw	a5,-596(a5) # 8000a518 <_ZL9threadEnd>
    80002774:	06079063          	bnez	a5,800027d4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002778:	00893503          	ld	a0,8(s2)
    8000277c:	00003097          	auipc	ra,0x3
    80002780:	320080e7          	jalr	800(ra) # 80005a9c <_ZN6Buffer3getEv>
        i++;
    80002784:	0019849b          	addiw	s1,s3,1
    80002788:	0004899b          	sext.w	s3,s1
        putc(key);
    8000278c:	0ff57513          	andi	a0,a0,255
    80002790:	fffff097          	auipc	ra,0xfffff
    80002794:	db8080e7          	jalr	-584(ra) # 80001548 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002798:	00092703          	lw	a4,0(s2)
    8000279c:	0027179b          	slliw	a5,a4,0x2
    800027a0:	00e787bb          	addw	a5,a5,a4
    800027a4:	02f4e7bb          	remw	a5,s1,a5
    800027a8:	fa0786e3          	beqz	a5,80002754 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800027ac:	05000793          	li	a5,80
    800027b0:	02f4e4bb          	remw	s1,s1,a5
    800027b4:	fa049ce3          	bnez	s1,8000276c <_ZL8consumerPv+0x40>
    800027b8:	fa9ff06f          	j	80002760 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800027bc:	00893503          	ld	a0,8(s2)
    800027c0:	00003097          	auipc	ra,0x3
    800027c4:	2dc080e7          	jalr	732(ra) # 80005a9c <_ZN6Buffer3getEv>
        putc(key);
    800027c8:	0ff57513          	andi	a0,a0,255
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	d7c080e7          	jalr	-644(ra) # 80001548 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800027d4:	00893503          	ld	a0,8(s2)
    800027d8:	00003097          	auipc	ra,0x3
    800027dc:	350080e7          	jalr	848(ra) # 80005b28 <_ZN6Buffer6getCntEv>
    800027e0:	fca04ee3          	bgtz	a0,800027bc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800027e4:	01093503          	ld	a0,16(s2)
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	cbc080e7          	jalr	-836(ra) # 800014a4 <_Z10sem_signalP4_sem>
}
    800027f0:	02813083          	ld	ra,40(sp)
    800027f4:	02013403          	ld	s0,32(sp)
    800027f8:	01813483          	ld	s1,24(sp)
    800027fc:	01013903          	ld	s2,16(sp)
    80002800:	00813983          	ld	s3,8(sp)
    80002804:	03010113          	addi	sp,sp,48
    80002808:	00008067          	ret

000000008000280c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000280c:	f9010113          	addi	sp,sp,-112
    80002810:	06113423          	sd	ra,104(sp)
    80002814:	06813023          	sd	s0,96(sp)
    80002818:	04913c23          	sd	s1,88(sp)
    8000281c:	05213823          	sd	s2,80(sp)
    80002820:	05313423          	sd	s3,72(sp)
    80002824:	05413023          	sd	s4,64(sp)
    80002828:	03513c23          	sd	s5,56(sp)
    8000282c:	03613823          	sd	s6,48(sp)
    80002830:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002834:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002838:	00006517          	auipc	a0,0x6
    8000283c:	93850513          	addi	a0,a0,-1736 # 80008170 <CONSOLE_STATUS+0x160>
    80002840:	00002097          	auipc	ra,0x2
    80002844:	220080e7          	jalr	544(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    80002848:	01e00593          	li	a1,30
    8000284c:	fa040493          	addi	s1,s0,-96
    80002850:	00048513          	mv	a0,s1
    80002854:	00002097          	auipc	ra,0x2
    80002858:	294080e7          	jalr	660(ra) # 80004ae8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000285c:	00048513          	mv	a0,s1
    80002860:	00002097          	auipc	ra,0x2
    80002864:	360080e7          	jalr	864(ra) # 80004bc0 <_Z11stringToIntPKc>
    80002868:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000286c:	00006517          	auipc	a0,0x6
    80002870:	92450513          	addi	a0,a0,-1756 # 80008190 <CONSOLE_STATUS+0x180>
    80002874:	00002097          	auipc	ra,0x2
    80002878:	1ec080e7          	jalr	492(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    8000287c:	01e00593          	li	a1,30
    80002880:	00048513          	mv	a0,s1
    80002884:	00002097          	auipc	ra,0x2
    80002888:	264080e7          	jalr	612(ra) # 80004ae8 <_Z9getStringPci>
    n = stringToInt(input);
    8000288c:	00048513          	mv	a0,s1
    80002890:	00002097          	auipc	ra,0x2
    80002894:	330080e7          	jalr	816(ra) # 80004bc0 <_Z11stringToIntPKc>
    80002898:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000289c:	00006517          	auipc	a0,0x6
    800028a0:	91450513          	addi	a0,a0,-1772 # 800081b0 <CONSOLE_STATUS+0x1a0>
    800028a4:	00002097          	auipc	ra,0x2
    800028a8:	1bc080e7          	jalr	444(ra) # 80004a60 <_Z11printStringPKc>
    800028ac:	00000613          	li	a2,0
    800028b0:	00a00593          	li	a1,10
    800028b4:	00090513          	mv	a0,s2
    800028b8:	00002097          	auipc	ra,0x2
    800028bc:	358080e7          	jalr	856(ra) # 80004c10 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800028c0:	00006517          	auipc	a0,0x6
    800028c4:	90850513          	addi	a0,a0,-1784 # 800081c8 <CONSOLE_STATUS+0x1b8>
    800028c8:	00002097          	auipc	ra,0x2
    800028cc:	198080e7          	jalr	408(ra) # 80004a60 <_Z11printStringPKc>
    800028d0:	00000613          	li	a2,0
    800028d4:	00a00593          	li	a1,10
    800028d8:	00048513          	mv	a0,s1
    800028dc:	00002097          	auipc	ra,0x2
    800028e0:	334080e7          	jalr	820(ra) # 80004c10 <_Z8printIntiii>
    printString(".\n");
    800028e4:	00006517          	auipc	a0,0x6
    800028e8:	8fc50513          	addi	a0,a0,-1796 # 800081e0 <CONSOLE_STATUS+0x1d0>
    800028ec:	00002097          	auipc	ra,0x2
    800028f0:	174080e7          	jalr	372(ra) # 80004a60 <_Z11printStringPKc>
    if(threadNum > n) {
    800028f4:	0324c463          	blt	s1,s2,8000291c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800028f8:	03205c63          	blez	s2,80002930 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800028fc:	03800513          	li	a0,56
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	04c080e7          	jalr	76(ra) # 8000194c <_Znwm>
    80002908:	00050a13          	mv	s4,a0
    8000290c:	00048593          	mv	a1,s1
    80002910:	00003097          	auipc	ra,0x3
    80002914:	060080e7          	jalr	96(ra) # 80005970 <_ZN6BufferC1Ei>
    80002918:	0300006f          	j	80002948 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000291c:	00006517          	auipc	a0,0x6
    80002920:	8cc50513          	addi	a0,a0,-1844 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80002924:	00002097          	auipc	ra,0x2
    80002928:	13c080e7          	jalr	316(ra) # 80004a60 <_Z11printStringPKc>
        return;
    8000292c:	0140006f          	j	80002940 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002930:	00006517          	auipc	a0,0x6
    80002934:	8f850513          	addi	a0,a0,-1800 # 80008228 <CONSOLE_STATUS+0x218>
    80002938:	00002097          	auipc	ra,0x2
    8000293c:	128080e7          	jalr	296(ra) # 80004a60 <_Z11printStringPKc>
        return;
    80002940:	000b0113          	mv	sp,s6
    80002944:	1500006f          	j	80002a94 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002948:	00000593          	li	a1,0
    8000294c:	00008517          	auipc	a0,0x8
    80002950:	bd450513          	addi	a0,a0,-1068 # 8000a520 <_ZL10waitForAll>
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	aa4080e7          	jalr	-1372(ra) # 800013f8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    8000295c:	00391793          	slli	a5,s2,0x3
    80002960:	00f78793          	addi	a5,a5,15
    80002964:	ff07f793          	andi	a5,a5,-16
    80002968:	40f10133          	sub	sp,sp,a5
    8000296c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002970:	0019071b          	addiw	a4,s2,1
    80002974:	00171793          	slli	a5,a4,0x1
    80002978:	00e787b3          	add	a5,a5,a4
    8000297c:	00379793          	slli	a5,a5,0x3
    80002980:	00f78793          	addi	a5,a5,15
    80002984:	ff07f793          	andi	a5,a5,-16
    80002988:	40f10133          	sub	sp,sp,a5
    8000298c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002990:	00191613          	slli	a2,s2,0x1
    80002994:	012607b3          	add	a5,a2,s2
    80002998:	00379793          	slli	a5,a5,0x3
    8000299c:	00f987b3          	add	a5,s3,a5
    800029a0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800029a4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800029a8:	00008717          	auipc	a4,0x8
    800029ac:	b7873703          	ld	a4,-1160(a4) # 8000a520 <_ZL10waitForAll>
    800029b0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800029b4:	00078613          	mv	a2,a5
    800029b8:	00000597          	auipc	a1,0x0
    800029bc:	d7458593          	addi	a1,a1,-652 # 8000272c <_ZL8consumerPv>
    800029c0:	f9840513          	addi	a0,s0,-104
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	954080e7          	jalr	-1708(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800029cc:	00000493          	li	s1,0
    800029d0:	0280006f          	j	800029f8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800029d4:	00000597          	auipc	a1,0x0
    800029d8:	c1458593          	addi	a1,a1,-1004 # 800025e8 <_ZL16producerKeyboardPv>
                      data + i);
    800029dc:	00179613          	slli	a2,a5,0x1
    800029e0:	00f60633          	add	a2,a2,a5
    800029e4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800029e8:	00c98633          	add	a2,s3,a2
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	92c080e7          	jalr	-1748(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800029f4:	0014849b          	addiw	s1,s1,1
    800029f8:	0524d263          	bge	s1,s2,80002a3c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800029fc:	00149793          	slli	a5,s1,0x1
    80002a00:	009787b3          	add	a5,a5,s1
    80002a04:	00379793          	slli	a5,a5,0x3
    80002a08:	00f987b3          	add	a5,s3,a5
    80002a0c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002a10:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002a14:	00008717          	auipc	a4,0x8
    80002a18:	b0c73703          	ld	a4,-1268(a4) # 8000a520 <_ZL10waitForAll>
    80002a1c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002a20:	00048793          	mv	a5,s1
    80002a24:	00349513          	slli	a0,s1,0x3
    80002a28:	00aa8533          	add	a0,s5,a0
    80002a2c:	fa9054e3          	blez	s1,800029d4 <_Z22producerConsumer_C_APIv+0x1c8>
    80002a30:	00000597          	auipc	a1,0x0
    80002a34:	c6858593          	addi	a1,a1,-920 # 80002698 <_ZL8producerPv>
    80002a38:	fa5ff06f          	j	800029dc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	998080e7          	jalr	-1640(ra) # 800013d4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002a44:	00000493          	li	s1,0
    80002a48:	00994e63          	blt	s2,s1,80002a64 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002a4c:	00008517          	auipc	a0,0x8
    80002a50:	ad453503          	ld	a0,-1324(a0) # 8000a520 <_ZL10waitForAll>
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	a18080e7          	jalr	-1512(ra) # 8000146c <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80002a5c:	0014849b          	addiw	s1,s1,1
    80002a60:	fe9ff06f          	j	80002a48 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002a64:	00008517          	auipc	a0,0x8
    80002a68:	abc53503          	ld	a0,-1348(a0) # 8000a520 <_ZL10waitForAll>
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	9c8080e7          	jalr	-1592(ra) # 80001434 <_Z9sem_closeP4_sem>
    delete buffer;
    80002a74:	000a0e63          	beqz	s4,80002a90 <_Z22producerConsumer_C_APIv+0x284>
    80002a78:	000a0513          	mv	a0,s4
    80002a7c:	00003097          	auipc	ra,0x3
    80002a80:	134080e7          	jalr	308(ra) # 80005bb0 <_ZN6BufferD1Ev>
    80002a84:	000a0513          	mv	a0,s4
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	f14080e7          	jalr	-236(ra) # 8000199c <_ZdlPv>
    80002a90:	000b0113          	mv	sp,s6

}
    80002a94:	f9040113          	addi	sp,s0,-112
    80002a98:	06813083          	ld	ra,104(sp)
    80002a9c:	06013403          	ld	s0,96(sp)
    80002aa0:	05813483          	ld	s1,88(sp)
    80002aa4:	05013903          	ld	s2,80(sp)
    80002aa8:	04813983          	ld	s3,72(sp)
    80002aac:	04013a03          	ld	s4,64(sp)
    80002ab0:	03813a83          	ld	s5,56(sp)
    80002ab4:	03013b03          	ld	s6,48(sp)
    80002ab8:	07010113          	addi	sp,sp,112
    80002abc:	00008067          	ret
    80002ac0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002ac4:	000a0513          	mv	a0,s4
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	ed4080e7          	jalr	-300(ra) # 8000199c <_ZdlPv>
    80002ad0:	00048513          	mv	a0,s1
    80002ad4:	00009097          	auipc	ra,0x9
    80002ad8:	b64080e7          	jalr	-1180(ra) # 8000b638 <_Unwind_Resume>

0000000080002adc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002adc:	fe010113          	addi	sp,sp,-32
    80002ae0:	00113c23          	sd	ra,24(sp)
    80002ae4:	00813823          	sd	s0,16(sp)
    80002ae8:	00913423          	sd	s1,8(sp)
    80002aec:	01213023          	sd	s2,0(sp)
    80002af0:	02010413          	addi	s0,sp,32
    80002af4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002af8:	00100793          	li	a5,1
    80002afc:	02a7f863          	bgeu	a5,a0,80002b2c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002b00:	00a00793          	li	a5,10
    80002b04:	02f577b3          	remu	a5,a0,a5
    80002b08:	02078e63          	beqz	a5,80002b44 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002b0c:	fff48513          	addi	a0,s1,-1
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	fcc080e7          	jalr	-52(ra) # 80002adc <_ZL9fibonaccim>
    80002b18:	00050913          	mv	s2,a0
    80002b1c:	ffe48513          	addi	a0,s1,-2
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	fbc080e7          	jalr	-68(ra) # 80002adc <_ZL9fibonaccim>
    80002b28:	00a90533          	add	a0,s2,a0
}
    80002b2c:	01813083          	ld	ra,24(sp)
    80002b30:	01013403          	ld	s0,16(sp)
    80002b34:	00813483          	ld	s1,8(sp)
    80002b38:	00013903          	ld	s2,0(sp)
    80002b3c:	02010113          	addi	sp,sp,32
    80002b40:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	890080e7          	jalr	-1904(ra) # 800013d4 <_Z15thread_dispatchv>
    80002b4c:	fc1ff06f          	j	80002b0c <_ZL9fibonaccim+0x30>

0000000080002b50 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002b50:	fe010113          	addi	sp,sp,-32
    80002b54:	00113c23          	sd	ra,24(sp)
    80002b58:	00813823          	sd	s0,16(sp)
    80002b5c:	00913423          	sd	s1,8(sp)
    80002b60:	01213023          	sd	s2,0(sp)
    80002b64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002b68:	00000913          	li	s2,0
    80002b6c:	0380006f          	j	80002ba4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	864080e7          	jalr	-1948(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002b78:	00148493          	addi	s1,s1,1
    80002b7c:	000027b7          	lui	a5,0x2
    80002b80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b84:	0097ee63          	bltu	a5,s1,80002ba0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b88:	00000713          	li	a4,0
    80002b8c:	000077b7          	lui	a5,0x7
    80002b90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b94:	fce7eee3          	bltu	a5,a4,80002b70 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002b98:	00170713          	addi	a4,a4,1
    80002b9c:	ff1ff06f          	j	80002b8c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002ba0:	00190913          	addi	s2,s2,1
    80002ba4:	00900793          	li	a5,9
    80002ba8:	0527e063          	bltu	a5,s2,80002be8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002bac:	00005517          	auipc	a0,0x5
    80002bb0:	6ac50513          	addi	a0,a0,1708 # 80008258 <CONSOLE_STATUS+0x248>
    80002bb4:	00002097          	auipc	ra,0x2
    80002bb8:	eac080e7          	jalr	-340(ra) # 80004a60 <_Z11printStringPKc>
    80002bbc:	00000613          	li	a2,0
    80002bc0:	00a00593          	li	a1,10
    80002bc4:	0009051b          	sext.w	a0,s2
    80002bc8:	00002097          	auipc	ra,0x2
    80002bcc:	048080e7          	jalr	72(ra) # 80004c10 <_Z8printIntiii>
    80002bd0:	00005517          	auipc	a0,0x5
    80002bd4:	5d850513          	addi	a0,a0,1496 # 800081a8 <CONSOLE_STATUS+0x198>
    80002bd8:	00002097          	auipc	ra,0x2
    80002bdc:	e88080e7          	jalr	-376(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002be0:	00000493          	li	s1,0
    80002be4:	f99ff06f          	j	80002b7c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002be8:	00005517          	auipc	a0,0x5
    80002bec:	67850513          	addi	a0,a0,1656 # 80008260 <CONSOLE_STATUS+0x250>
    80002bf0:	00002097          	auipc	ra,0x2
    80002bf4:	e70080e7          	jalr	-400(ra) # 80004a60 <_Z11printStringPKc>
    finishedA = true;
    80002bf8:	00100793          	li	a5,1
    80002bfc:	00008717          	auipc	a4,0x8
    80002c00:	92f70623          	sb	a5,-1748(a4) # 8000a528 <_ZL9finishedA>
}
    80002c04:	01813083          	ld	ra,24(sp)
    80002c08:	01013403          	ld	s0,16(sp)
    80002c0c:	00813483          	ld	s1,8(sp)
    80002c10:	00013903          	ld	s2,0(sp)
    80002c14:	02010113          	addi	sp,sp,32
    80002c18:	00008067          	ret

0000000080002c1c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002c1c:	fe010113          	addi	sp,sp,-32
    80002c20:	00113c23          	sd	ra,24(sp)
    80002c24:	00813823          	sd	s0,16(sp)
    80002c28:	00913423          	sd	s1,8(sp)
    80002c2c:	01213023          	sd	s2,0(sp)
    80002c30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002c34:	00000913          	li	s2,0
    80002c38:	0380006f          	j	80002c70 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002c3c:	ffffe097          	auipc	ra,0xffffe
    80002c40:	798080e7          	jalr	1944(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002c44:	00148493          	addi	s1,s1,1
    80002c48:	000027b7          	lui	a5,0x2
    80002c4c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002c50:	0097ee63          	bltu	a5,s1,80002c6c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002c54:	00000713          	li	a4,0
    80002c58:	000077b7          	lui	a5,0x7
    80002c5c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002c60:	fce7eee3          	bltu	a5,a4,80002c3c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002c64:	00170713          	addi	a4,a4,1
    80002c68:	ff1ff06f          	j	80002c58 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002c6c:	00190913          	addi	s2,s2,1
    80002c70:	00f00793          	li	a5,15
    80002c74:	0527e063          	bltu	a5,s2,80002cb4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002c78:	00005517          	auipc	a0,0x5
    80002c7c:	5f850513          	addi	a0,a0,1528 # 80008270 <CONSOLE_STATUS+0x260>
    80002c80:	00002097          	auipc	ra,0x2
    80002c84:	de0080e7          	jalr	-544(ra) # 80004a60 <_Z11printStringPKc>
    80002c88:	00000613          	li	a2,0
    80002c8c:	00a00593          	li	a1,10
    80002c90:	0009051b          	sext.w	a0,s2
    80002c94:	00002097          	auipc	ra,0x2
    80002c98:	f7c080e7          	jalr	-132(ra) # 80004c10 <_Z8printIntiii>
    80002c9c:	00005517          	auipc	a0,0x5
    80002ca0:	50c50513          	addi	a0,a0,1292 # 800081a8 <CONSOLE_STATUS+0x198>
    80002ca4:	00002097          	auipc	ra,0x2
    80002ca8:	dbc080e7          	jalr	-580(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002cac:	00000493          	li	s1,0
    80002cb0:	f99ff06f          	j	80002c48 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002cb4:	00005517          	auipc	a0,0x5
    80002cb8:	5c450513          	addi	a0,a0,1476 # 80008278 <CONSOLE_STATUS+0x268>
    80002cbc:	00002097          	auipc	ra,0x2
    80002cc0:	da4080e7          	jalr	-604(ra) # 80004a60 <_Z11printStringPKc>
    finishedB = true;
    80002cc4:	00100793          	li	a5,1
    80002cc8:	00008717          	auipc	a4,0x8
    80002ccc:	86f700a3          	sb	a5,-1951(a4) # 8000a529 <_ZL9finishedB>
    thread_dispatch();
    80002cd0:	ffffe097          	auipc	ra,0xffffe
    80002cd4:	704080e7          	jalr	1796(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80002cd8:	01813083          	ld	ra,24(sp)
    80002cdc:	01013403          	ld	s0,16(sp)
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	00013903          	ld	s2,0(sp)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00008067          	ret

0000000080002cf0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002cf0:	fe010113          	addi	sp,sp,-32
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	01213023          	sd	s2,0(sp)
    80002d04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002d08:	00000493          	li	s1,0
    80002d0c:	0400006f          	j	80002d4c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002d10:	00005517          	auipc	a0,0x5
    80002d14:	57850513          	addi	a0,a0,1400 # 80008288 <CONSOLE_STATUS+0x278>
    80002d18:	00002097          	auipc	ra,0x2
    80002d1c:	d48080e7          	jalr	-696(ra) # 80004a60 <_Z11printStringPKc>
    80002d20:	00000613          	li	a2,0
    80002d24:	00a00593          	li	a1,10
    80002d28:	00048513          	mv	a0,s1
    80002d2c:	00002097          	auipc	ra,0x2
    80002d30:	ee4080e7          	jalr	-284(ra) # 80004c10 <_Z8printIntiii>
    80002d34:	00005517          	auipc	a0,0x5
    80002d38:	47450513          	addi	a0,a0,1140 # 800081a8 <CONSOLE_STATUS+0x198>
    80002d3c:	00002097          	auipc	ra,0x2
    80002d40:	d24080e7          	jalr	-732(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002d44:	0014849b          	addiw	s1,s1,1
    80002d48:	0ff4f493          	andi	s1,s1,255
    80002d4c:	00200793          	li	a5,2
    80002d50:	fc97f0e3          	bgeu	a5,s1,80002d10 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002d54:	00005517          	auipc	a0,0x5
    80002d58:	53c50513          	addi	a0,a0,1340 # 80008290 <CONSOLE_STATUS+0x280>
    80002d5c:	00002097          	auipc	ra,0x2
    80002d60:	d04080e7          	jalr	-764(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002d64:	00700313          	li	t1,7
    thread_dispatch();
    80002d68:	ffffe097          	auipc	ra,0xffffe
    80002d6c:	66c080e7          	jalr	1644(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002d70:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002d74:	00005517          	auipc	a0,0x5
    80002d78:	52c50513          	addi	a0,a0,1324 # 800082a0 <CONSOLE_STATUS+0x290>
    80002d7c:	00002097          	auipc	ra,0x2
    80002d80:	ce4080e7          	jalr	-796(ra) # 80004a60 <_Z11printStringPKc>
    80002d84:	00000613          	li	a2,0
    80002d88:	00a00593          	li	a1,10
    80002d8c:	0009051b          	sext.w	a0,s2
    80002d90:	00002097          	auipc	ra,0x2
    80002d94:	e80080e7          	jalr	-384(ra) # 80004c10 <_Z8printIntiii>
    80002d98:	00005517          	auipc	a0,0x5
    80002d9c:	41050513          	addi	a0,a0,1040 # 800081a8 <CONSOLE_STATUS+0x198>
    80002da0:	00002097          	auipc	ra,0x2
    80002da4:	cc0080e7          	jalr	-832(ra) # 80004a60 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002da8:	00c00513          	li	a0,12
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	d30080e7          	jalr	-720(ra) # 80002adc <_ZL9fibonaccim>
    80002db4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002db8:	00005517          	auipc	a0,0x5
    80002dbc:	4f050513          	addi	a0,a0,1264 # 800082a8 <CONSOLE_STATUS+0x298>
    80002dc0:	00002097          	auipc	ra,0x2
    80002dc4:	ca0080e7          	jalr	-864(ra) # 80004a60 <_Z11printStringPKc>
    80002dc8:	00000613          	li	a2,0
    80002dcc:	00a00593          	li	a1,10
    80002dd0:	0009051b          	sext.w	a0,s2
    80002dd4:	00002097          	auipc	ra,0x2
    80002dd8:	e3c080e7          	jalr	-452(ra) # 80004c10 <_Z8printIntiii>
    80002ddc:	00005517          	auipc	a0,0x5
    80002de0:	3cc50513          	addi	a0,a0,972 # 800081a8 <CONSOLE_STATUS+0x198>
    80002de4:	00002097          	auipc	ra,0x2
    80002de8:	c7c080e7          	jalr	-900(ra) # 80004a60 <_Z11printStringPKc>
    80002dec:	0400006f          	j	80002e2c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002df0:	00005517          	auipc	a0,0x5
    80002df4:	49850513          	addi	a0,a0,1176 # 80008288 <CONSOLE_STATUS+0x278>
    80002df8:	00002097          	auipc	ra,0x2
    80002dfc:	c68080e7          	jalr	-920(ra) # 80004a60 <_Z11printStringPKc>
    80002e00:	00000613          	li	a2,0
    80002e04:	00a00593          	li	a1,10
    80002e08:	00048513          	mv	a0,s1
    80002e0c:	00002097          	auipc	ra,0x2
    80002e10:	e04080e7          	jalr	-508(ra) # 80004c10 <_Z8printIntiii>
    80002e14:	00005517          	auipc	a0,0x5
    80002e18:	39450513          	addi	a0,a0,916 # 800081a8 <CONSOLE_STATUS+0x198>
    80002e1c:	00002097          	auipc	ra,0x2
    80002e20:	c44080e7          	jalr	-956(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002e24:	0014849b          	addiw	s1,s1,1
    80002e28:	0ff4f493          	andi	s1,s1,255
    80002e2c:	00500793          	li	a5,5
    80002e30:	fc97f0e3          	bgeu	a5,s1,80002df0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002e34:	00005517          	auipc	a0,0x5
    80002e38:	42c50513          	addi	a0,a0,1068 # 80008260 <CONSOLE_STATUS+0x250>
    80002e3c:	00002097          	auipc	ra,0x2
    80002e40:	c24080e7          	jalr	-988(ra) # 80004a60 <_Z11printStringPKc>
    finishedC = true;
    80002e44:	00100793          	li	a5,1
    80002e48:	00007717          	auipc	a4,0x7
    80002e4c:	6ef70123          	sb	a5,1762(a4) # 8000a52a <_ZL9finishedC>
    thread_dispatch();
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	584080e7          	jalr	1412(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80002e58:	01813083          	ld	ra,24(sp)
    80002e5c:	01013403          	ld	s0,16(sp)
    80002e60:	00813483          	ld	s1,8(sp)
    80002e64:	00013903          	ld	s2,0(sp)
    80002e68:	02010113          	addi	sp,sp,32
    80002e6c:	00008067          	ret

0000000080002e70 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002e70:	fe010113          	addi	sp,sp,-32
    80002e74:	00113c23          	sd	ra,24(sp)
    80002e78:	00813823          	sd	s0,16(sp)
    80002e7c:	00913423          	sd	s1,8(sp)
    80002e80:	01213023          	sd	s2,0(sp)
    80002e84:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002e88:	00a00493          	li	s1,10
    80002e8c:	0400006f          	j	80002ecc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002e90:	00005517          	auipc	a0,0x5
    80002e94:	42850513          	addi	a0,a0,1064 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	bc8080e7          	jalr	-1080(ra) # 80004a60 <_Z11printStringPKc>
    80002ea0:	00000613          	li	a2,0
    80002ea4:	00a00593          	li	a1,10
    80002ea8:	00048513          	mv	a0,s1
    80002eac:	00002097          	auipc	ra,0x2
    80002eb0:	d64080e7          	jalr	-668(ra) # 80004c10 <_Z8printIntiii>
    80002eb4:	00005517          	auipc	a0,0x5
    80002eb8:	2f450513          	addi	a0,a0,756 # 800081a8 <CONSOLE_STATUS+0x198>
    80002ebc:	00002097          	auipc	ra,0x2
    80002ec0:	ba4080e7          	jalr	-1116(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002ec4:	0014849b          	addiw	s1,s1,1
    80002ec8:	0ff4f493          	andi	s1,s1,255
    80002ecc:	00c00793          	li	a5,12
    80002ed0:	fc97f0e3          	bgeu	a5,s1,80002e90 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002ed4:	00005517          	auipc	a0,0x5
    80002ed8:	3ec50513          	addi	a0,a0,1004 # 800082c0 <CONSOLE_STATUS+0x2b0>
    80002edc:	00002097          	auipc	ra,0x2
    80002ee0:	b84080e7          	jalr	-1148(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002ee4:	00500313          	li	t1,5
    thread_dispatch();
    80002ee8:	ffffe097          	auipc	ra,0xffffe
    80002eec:	4ec080e7          	jalr	1260(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002ef0:	01000513          	li	a0,16
    80002ef4:	00000097          	auipc	ra,0x0
    80002ef8:	be8080e7          	jalr	-1048(ra) # 80002adc <_ZL9fibonaccim>
    80002efc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002f00:	00005517          	auipc	a0,0x5
    80002f04:	3d050513          	addi	a0,a0,976 # 800082d0 <CONSOLE_STATUS+0x2c0>
    80002f08:	00002097          	auipc	ra,0x2
    80002f0c:	b58080e7          	jalr	-1192(ra) # 80004a60 <_Z11printStringPKc>
    80002f10:	00000613          	li	a2,0
    80002f14:	00a00593          	li	a1,10
    80002f18:	0009051b          	sext.w	a0,s2
    80002f1c:	00002097          	auipc	ra,0x2
    80002f20:	cf4080e7          	jalr	-780(ra) # 80004c10 <_Z8printIntiii>
    80002f24:	00005517          	auipc	a0,0x5
    80002f28:	28450513          	addi	a0,a0,644 # 800081a8 <CONSOLE_STATUS+0x198>
    80002f2c:	00002097          	auipc	ra,0x2
    80002f30:	b34080e7          	jalr	-1228(ra) # 80004a60 <_Z11printStringPKc>
    80002f34:	0400006f          	j	80002f74 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002f38:	00005517          	auipc	a0,0x5
    80002f3c:	38050513          	addi	a0,a0,896 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80002f40:	00002097          	auipc	ra,0x2
    80002f44:	b20080e7          	jalr	-1248(ra) # 80004a60 <_Z11printStringPKc>
    80002f48:	00000613          	li	a2,0
    80002f4c:	00a00593          	li	a1,10
    80002f50:	00048513          	mv	a0,s1
    80002f54:	00002097          	auipc	ra,0x2
    80002f58:	cbc080e7          	jalr	-836(ra) # 80004c10 <_Z8printIntiii>
    80002f5c:	00005517          	auipc	a0,0x5
    80002f60:	24c50513          	addi	a0,a0,588 # 800081a8 <CONSOLE_STATUS+0x198>
    80002f64:	00002097          	auipc	ra,0x2
    80002f68:	afc080e7          	jalr	-1284(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002f6c:	0014849b          	addiw	s1,s1,1
    80002f70:	0ff4f493          	andi	s1,s1,255
    80002f74:	00f00793          	li	a5,15
    80002f78:	fc97f0e3          	bgeu	a5,s1,80002f38 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002f7c:	00005517          	auipc	a0,0x5
    80002f80:	36450513          	addi	a0,a0,868 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80002f84:	00002097          	auipc	ra,0x2
    80002f88:	adc080e7          	jalr	-1316(ra) # 80004a60 <_Z11printStringPKc>
    finishedD = true;
    80002f8c:	00100793          	li	a5,1
    80002f90:	00007717          	auipc	a4,0x7
    80002f94:	58f70da3          	sb	a5,1435(a4) # 8000a52b <_ZL9finishedD>
    thread_dispatch();
    80002f98:	ffffe097          	auipc	ra,0xffffe
    80002f9c:	43c080e7          	jalr	1084(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80002fa0:	01813083          	ld	ra,24(sp)
    80002fa4:	01013403          	ld	s0,16(sp)
    80002fa8:	00813483          	ld	s1,8(sp)
    80002fac:	00013903          	ld	s2,0(sp)
    80002fb0:	02010113          	addi	sp,sp,32
    80002fb4:	00008067          	ret

0000000080002fb8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002fb8:	fc010113          	addi	sp,sp,-64
    80002fbc:	02113c23          	sd	ra,56(sp)
    80002fc0:	02813823          	sd	s0,48(sp)
    80002fc4:	02913423          	sd	s1,40(sp)
    80002fc8:	03213023          	sd	s2,32(sp)
    80002fcc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002fd0:	02000513          	li	a0,32
    80002fd4:	fffff097          	auipc	ra,0xfffff
    80002fd8:	978080e7          	jalr	-1672(ra) # 8000194c <_Znwm>
    80002fdc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002fe0:	fffff097          	auipc	ra,0xfffff
    80002fe4:	aa4080e7          	jalr	-1372(ra) # 80001a84 <_ZN6ThreadC1Ev>
    80002fe8:	00007797          	auipc	a5,0x7
    80002fec:	2c878793          	addi	a5,a5,712 # 8000a2b0 <_ZTV7WorkerA+0x10>
    80002ff0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002ff4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002ff8:	00005517          	auipc	a0,0x5
    80002ffc:	2f850513          	addi	a0,a0,760 # 800082f0 <CONSOLE_STATUS+0x2e0>
    80003000:	00002097          	auipc	ra,0x2
    80003004:	a60080e7          	jalr	-1440(ra) # 80004a60 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003008:	02000513          	li	a0,32
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	940080e7          	jalr	-1728(ra) # 8000194c <_Znwm>
    80003014:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	a6c080e7          	jalr	-1428(ra) # 80001a84 <_ZN6ThreadC1Ev>
    80003020:	00007797          	auipc	a5,0x7
    80003024:	2b878793          	addi	a5,a5,696 # 8000a2d8 <_ZTV7WorkerB+0x10>
    80003028:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000302c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003030:	00005517          	auipc	a0,0x5
    80003034:	2d850513          	addi	a0,a0,728 # 80008308 <CONSOLE_STATUS+0x2f8>
    80003038:	00002097          	auipc	ra,0x2
    8000303c:	a28080e7          	jalr	-1496(ra) # 80004a60 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003040:	02000513          	li	a0,32
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	908080e7          	jalr	-1784(ra) # 8000194c <_Znwm>
    8000304c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	a34080e7          	jalr	-1484(ra) # 80001a84 <_ZN6ThreadC1Ev>
    80003058:	00007797          	auipc	a5,0x7
    8000305c:	2a878793          	addi	a5,a5,680 # 8000a300 <_ZTV7WorkerC+0x10>
    80003060:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003064:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003068:	00005517          	auipc	a0,0x5
    8000306c:	2b850513          	addi	a0,a0,696 # 80008320 <CONSOLE_STATUS+0x310>
    80003070:	00002097          	auipc	ra,0x2
    80003074:	9f0080e7          	jalr	-1552(ra) # 80004a60 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003078:	02000513          	li	a0,32
    8000307c:	fffff097          	auipc	ra,0xfffff
    80003080:	8d0080e7          	jalr	-1840(ra) # 8000194c <_Znwm>
    80003084:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003088:	fffff097          	auipc	ra,0xfffff
    8000308c:	9fc080e7          	jalr	-1540(ra) # 80001a84 <_ZN6ThreadC1Ev>
    80003090:	00007797          	auipc	a5,0x7
    80003094:	29878793          	addi	a5,a5,664 # 8000a328 <_ZTV7WorkerD+0x10>
    80003098:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000309c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800030a0:	00005517          	auipc	a0,0x5
    800030a4:	29850513          	addi	a0,a0,664 # 80008338 <CONSOLE_STATUS+0x328>
    800030a8:	00002097          	auipc	ra,0x2
    800030ac:	9b8080e7          	jalr	-1608(ra) # 80004a60 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800030b0:	00000493          	li	s1,0
    800030b4:	00300793          	li	a5,3
    800030b8:	0297c663          	blt	a5,s1,800030e4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800030bc:	00349793          	slli	a5,s1,0x3
    800030c0:	fe040713          	addi	a4,s0,-32
    800030c4:	00f707b3          	add	a5,a4,a5
    800030c8:	fe07b503          	ld	a0,-32(a5)
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	a18080e7          	jalr	-1512(ra) # 80001ae4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800030d4:	0014849b          	addiw	s1,s1,1
    800030d8:	fddff06f          	j	800030b4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	9e0080e7          	jalr	-1568(ra) # 80001abc <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800030e4:	00007797          	auipc	a5,0x7
    800030e8:	4447c783          	lbu	a5,1092(a5) # 8000a528 <_ZL9finishedA>
    800030ec:	fe0788e3          	beqz	a5,800030dc <_Z20Threads_CPP_API_testv+0x124>
    800030f0:	00007797          	auipc	a5,0x7
    800030f4:	4397c783          	lbu	a5,1081(a5) # 8000a529 <_ZL9finishedB>
    800030f8:	fe0782e3          	beqz	a5,800030dc <_Z20Threads_CPP_API_testv+0x124>
    800030fc:	00007797          	auipc	a5,0x7
    80003100:	42e7c783          	lbu	a5,1070(a5) # 8000a52a <_ZL9finishedC>
    80003104:	fc078ce3          	beqz	a5,800030dc <_Z20Threads_CPP_API_testv+0x124>
    80003108:	00007797          	auipc	a5,0x7
    8000310c:	4237c783          	lbu	a5,1059(a5) # 8000a52b <_ZL9finishedD>
    80003110:	fc0786e3          	beqz	a5,800030dc <_Z20Threads_CPP_API_testv+0x124>
    80003114:	fc040493          	addi	s1,s0,-64
    80003118:	0080006f          	j	80003120 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000311c:	00848493          	addi	s1,s1,8
    80003120:	fe040793          	addi	a5,s0,-32
    80003124:	08f48663          	beq	s1,a5,800031b0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003128:	0004b503          	ld	a0,0(s1)
    8000312c:	fe0508e3          	beqz	a0,8000311c <_Z20Threads_CPP_API_testv+0x164>
    80003130:	00053783          	ld	a5,0(a0)
    80003134:	0087b783          	ld	a5,8(a5)
    80003138:	000780e7          	jalr	a5
    8000313c:	fe1ff06f          	j	8000311c <_Z20Threads_CPP_API_testv+0x164>
    80003140:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003144:	00048513          	mv	a0,s1
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	854080e7          	jalr	-1964(ra) # 8000199c <_ZdlPv>
    80003150:	00090513          	mv	a0,s2
    80003154:	00008097          	auipc	ra,0x8
    80003158:	4e4080e7          	jalr	1252(ra) # 8000b638 <_Unwind_Resume>
    8000315c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003160:	00048513          	mv	a0,s1
    80003164:	fffff097          	auipc	ra,0xfffff
    80003168:	838080e7          	jalr	-1992(ra) # 8000199c <_ZdlPv>
    8000316c:	00090513          	mv	a0,s2
    80003170:	00008097          	auipc	ra,0x8
    80003174:	4c8080e7          	jalr	1224(ra) # 8000b638 <_Unwind_Resume>
    80003178:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000317c:	00048513          	mv	a0,s1
    80003180:	fffff097          	auipc	ra,0xfffff
    80003184:	81c080e7          	jalr	-2020(ra) # 8000199c <_ZdlPv>
    80003188:	00090513          	mv	a0,s2
    8000318c:	00008097          	auipc	ra,0x8
    80003190:	4ac080e7          	jalr	1196(ra) # 8000b638 <_Unwind_Resume>
    80003194:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003198:	00048513          	mv	a0,s1
    8000319c:	fffff097          	auipc	ra,0xfffff
    800031a0:	800080e7          	jalr	-2048(ra) # 8000199c <_ZdlPv>
    800031a4:	00090513          	mv	a0,s2
    800031a8:	00008097          	auipc	ra,0x8
    800031ac:	490080e7          	jalr	1168(ra) # 8000b638 <_Unwind_Resume>
}
    800031b0:	03813083          	ld	ra,56(sp)
    800031b4:	03013403          	ld	s0,48(sp)
    800031b8:	02813483          	ld	s1,40(sp)
    800031bc:	02013903          	ld	s2,32(sp)
    800031c0:	04010113          	addi	sp,sp,64
    800031c4:	00008067          	ret

00000000800031c8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800031c8:	ff010113          	addi	sp,sp,-16
    800031cc:	00113423          	sd	ra,8(sp)
    800031d0:	00813023          	sd	s0,0(sp)
    800031d4:	01010413          	addi	s0,sp,16
    800031d8:	00007797          	auipc	a5,0x7
    800031dc:	0d878793          	addi	a5,a5,216 # 8000a2b0 <_ZTV7WorkerA+0x10>
    800031e0:	00f53023          	sd	a5,0(a0)
    800031e4:	ffffe097          	auipc	ra,0xffffe
    800031e8:	718080e7          	jalr	1816(ra) # 800018fc <_ZN6ThreadD1Ev>
    800031ec:	00813083          	ld	ra,8(sp)
    800031f0:	00013403          	ld	s0,0(sp)
    800031f4:	01010113          	addi	sp,sp,16
    800031f8:	00008067          	ret

00000000800031fc <_ZN7WorkerAD0Ev>:
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00113c23          	sd	ra,24(sp)
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	02010413          	addi	s0,sp,32
    80003210:	00050493          	mv	s1,a0
    80003214:	00007797          	auipc	a5,0x7
    80003218:	09c78793          	addi	a5,a5,156 # 8000a2b0 <_ZTV7WorkerA+0x10>
    8000321c:	00f53023          	sd	a5,0(a0)
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	6dc080e7          	jalr	1756(ra) # 800018fc <_ZN6ThreadD1Ev>
    80003228:	00048513          	mv	a0,s1
    8000322c:	ffffe097          	auipc	ra,0xffffe
    80003230:	770080e7          	jalr	1904(ra) # 8000199c <_ZdlPv>
    80003234:	01813083          	ld	ra,24(sp)
    80003238:	01013403          	ld	s0,16(sp)
    8000323c:	00813483          	ld	s1,8(sp)
    80003240:	02010113          	addi	sp,sp,32
    80003244:	00008067          	ret

0000000080003248 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003248:	ff010113          	addi	sp,sp,-16
    8000324c:	00113423          	sd	ra,8(sp)
    80003250:	00813023          	sd	s0,0(sp)
    80003254:	01010413          	addi	s0,sp,16
    80003258:	00007797          	auipc	a5,0x7
    8000325c:	08078793          	addi	a5,a5,128 # 8000a2d8 <_ZTV7WorkerB+0x10>
    80003260:	00f53023          	sd	a5,0(a0)
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	698080e7          	jalr	1688(ra) # 800018fc <_ZN6ThreadD1Ev>
    8000326c:	00813083          	ld	ra,8(sp)
    80003270:	00013403          	ld	s0,0(sp)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <_ZN7WorkerBD0Ev>:
    8000327c:	fe010113          	addi	sp,sp,-32
    80003280:	00113c23          	sd	ra,24(sp)
    80003284:	00813823          	sd	s0,16(sp)
    80003288:	00913423          	sd	s1,8(sp)
    8000328c:	02010413          	addi	s0,sp,32
    80003290:	00050493          	mv	s1,a0
    80003294:	00007797          	auipc	a5,0x7
    80003298:	04478793          	addi	a5,a5,68 # 8000a2d8 <_ZTV7WorkerB+0x10>
    8000329c:	00f53023          	sd	a5,0(a0)
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	65c080e7          	jalr	1628(ra) # 800018fc <_ZN6ThreadD1Ev>
    800032a8:	00048513          	mv	a0,s1
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	6f0080e7          	jalr	1776(ra) # 8000199c <_ZdlPv>
    800032b4:	01813083          	ld	ra,24(sp)
    800032b8:	01013403          	ld	s0,16(sp)
    800032bc:	00813483          	ld	s1,8(sp)
    800032c0:	02010113          	addi	sp,sp,32
    800032c4:	00008067          	ret

00000000800032c8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800032c8:	ff010113          	addi	sp,sp,-16
    800032cc:	00113423          	sd	ra,8(sp)
    800032d0:	00813023          	sd	s0,0(sp)
    800032d4:	01010413          	addi	s0,sp,16
    800032d8:	00007797          	auipc	a5,0x7
    800032dc:	02878793          	addi	a5,a5,40 # 8000a300 <_ZTV7WorkerC+0x10>
    800032e0:	00f53023          	sd	a5,0(a0)
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	618080e7          	jalr	1560(ra) # 800018fc <_ZN6ThreadD1Ev>
    800032ec:	00813083          	ld	ra,8(sp)
    800032f0:	00013403          	ld	s0,0(sp)
    800032f4:	01010113          	addi	sp,sp,16
    800032f8:	00008067          	ret

00000000800032fc <_ZN7WorkerCD0Ev>:
    800032fc:	fe010113          	addi	sp,sp,-32
    80003300:	00113c23          	sd	ra,24(sp)
    80003304:	00813823          	sd	s0,16(sp)
    80003308:	00913423          	sd	s1,8(sp)
    8000330c:	02010413          	addi	s0,sp,32
    80003310:	00050493          	mv	s1,a0
    80003314:	00007797          	auipc	a5,0x7
    80003318:	fec78793          	addi	a5,a5,-20 # 8000a300 <_ZTV7WorkerC+0x10>
    8000331c:	00f53023          	sd	a5,0(a0)
    80003320:	ffffe097          	auipc	ra,0xffffe
    80003324:	5dc080e7          	jalr	1500(ra) # 800018fc <_ZN6ThreadD1Ev>
    80003328:	00048513          	mv	a0,s1
    8000332c:	ffffe097          	auipc	ra,0xffffe
    80003330:	670080e7          	jalr	1648(ra) # 8000199c <_ZdlPv>
    80003334:	01813083          	ld	ra,24(sp)
    80003338:	01013403          	ld	s0,16(sp)
    8000333c:	00813483          	ld	s1,8(sp)
    80003340:	02010113          	addi	sp,sp,32
    80003344:	00008067          	ret

0000000080003348 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003348:	ff010113          	addi	sp,sp,-16
    8000334c:	00113423          	sd	ra,8(sp)
    80003350:	00813023          	sd	s0,0(sp)
    80003354:	01010413          	addi	s0,sp,16
    80003358:	00007797          	auipc	a5,0x7
    8000335c:	fd078793          	addi	a5,a5,-48 # 8000a328 <_ZTV7WorkerD+0x10>
    80003360:	00f53023          	sd	a5,0(a0)
    80003364:	ffffe097          	auipc	ra,0xffffe
    80003368:	598080e7          	jalr	1432(ra) # 800018fc <_ZN6ThreadD1Ev>
    8000336c:	00813083          	ld	ra,8(sp)
    80003370:	00013403          	ld	s0,0(sp)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret

000000008000337c <_ZN7WorkerDD0Ev>:
    8000337c:	fe010113          	addi	sp,sp,-32
    80003380:	00113c23          	sd	ra,24(sp)
    80003384:	00813823          	sd	s0,16(sp)
    80003388:	00913423          	sd	s1,8(sp)
    8000338c:	02010413          	addi	s0,sp,32
    80003390:	00050493          	mv	s1,a0
    80003394:	00007797          	auipc	a5,0x7
    80003398:	f9478793          	addi	a5,a5,-108 # 8000a328 <_ZTV7WorkerD+0x10>
    8000339c:	00f53023          	sd	a5,0(a0)
    800033a0:	ffffe097          	auipc	ra,0xffffe
    800033a4:	55c080e7          	jalr	1372(ra) # 800018fc <_ZN6ThreadD1Ev>
    800033a8:	00048513          	mv	a0,s1
    800033ac:	ffffe097          	auipc	ra,0xffffe
    800033b0:	5f0080e7          	jalr	1520(ra) # 8000199c <_ZdlPv>
    800033b4:	01813083          	ld	ra,24(sp)
    800033b8:	01013403          	ld	s0,16(sp)
    800033bc:	00813483          	ld	s1,8(sp)
    800033c0:	02010113          	addi	sp,sp,32
    800033c4:	00008067          	ret

00000000800033c8 <_ZN7WorkerA3runEv>:
    void run() override {
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00113423          	sd	ra,8(sp)
    800033d0:	00813023          	sd	s0,0(sp)
    800033d4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800033d8:	00000593          	li	a1,0
    800033dc:	fffff097          	auipc	ra,0xfffff
    800033e0:	774080e7          	jalr	1908(ra) # 80002b50 <_ZN7WorkerA11workerBodyAEPv>
    }
    800033e4:	00813083          	ld	ra,8(sp)
    800033e8:	00013403          	ld	s0,0(sp)
    800033ec:	01010113          	addi	sp,sp,16
    800033f0:	00008067          	ret

00000000800033f4 <_ZN7WorkerB3runEv>:
    void run() override {
    800033f4:	ff010113          	addi	sp,sp,-16
    800033f8:	00113423          	sd	ra,8(sp)
    800033fc:	00813023          	sd	s0,0(sp)
    80003400:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003404:	00000593          	li	a1,0
    80003408:	00000097          	auipc	ra,0x0
    8000340c:	814080e7          	jalr	-2028(ra) # 80002c1c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003410:	00813083          	ld	ra,8(sp)
    80003414:	00013403          	ld	s0,0(sp)
    80003418:	01010113          	addi	sp,sp,16
    8000341c:	00008067          	ret

0000000080003420 <_ZN7WorkerC3runEv>:
    void run() override {
    80003420:	ff010113          	addi	sp,sp,-16
    80003424:	00113423          	sd	ra,8(sp)
    80003428:	00813023          	sd	s0,0(sp)
    8000342c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003430:	00000593          	li	a1,0
    80003434:	00000097          	auipc	ra,0x0
    80003438:	8bc080e7          	jalr	-1860(ra) # 80002cf0 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000343c:	00813083          	ld	ra,8(sp)
    80003440:	00013403          	ld	s0,0(sp)
    80003444:	01010113          	addi	sp,sp,16
    80003448:	00008067          	ret

000000008000344c <_ZN7WorkerD3runEv>:
    void run() override {
    8000344c:	ff010113          	addi	sp,sp,-16
    80003450:	00113423          	sd	ra,8(sp)
    80003454:	00813023          	sd	s0,0(sp)
    80003458:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000345c:	00000593          	li	a1,0
    80003460:	00000097          	auipc	ra,0x0
    80003464:	a10080e7          	jalr	-1520(ra) # 80002e70 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003468:	00813083          	ld	ra,8(sp)
    8000346c:	00013403          	ld	s0,0(sp)
    80003470:	01010113          	addi	sp,sp,16
    80003474:	00008067          	ret

0000000080003478 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003478:	f8010113          	addi	sp,sp,-128
    8000347c:	06113c23          	sd	ra,120(sp)
    80003480:	06813823          	sd	s0,112(sp)
    80003484:	06913423          	sd	s1,104(sp)
    80003488:	07213023          	sd	s2,96(sp)
    8000348c:	05313c23          	sd	s3,88(sp)
    80003490:	05413823          	sd	s4,80(sp)
    80003494:	05513423          	sd	s5,72(sp)
    80003498:	05613023          	sd	s6,64(sp)
    8000349c:	03713c23          	sd	s7,56(sp)
    800034a0:	03813823          	sd	s8,48(sp)
    800034a4:	03913423          	sd	s9,40(sp)
    800034a8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800034ac:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800034b0:	00005517          	auipc	a0,0x5
    800034b4:	cc050513          	addi	a0,a0,-832 # 80008170 <CONSOLE_STATUS+0x160>
    800034b8:	00001097          	auipc	ra,0x1
    800034bc:	5a8080e7          	jalr	1448(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    800034c0:	01e00593          	li	a1,30
    800034c4:	f8040493          	addi	s1,s0,-128
    800034c8:	00048513          	mv	a0,s1
    800034cc:	00001097          	auipc	ra,0x1
    800034d0:	61c080e7          	jalr	1564(ra) # 80004ae8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800034d4:	00048513          	mv	a0,s1
    800034d8:	00001097          	auipc	ra,0x1
    800034dc:	6e8080e7          	jalr	1768(ra) # 80004bc0 <_Z11stringToIntPKc>
    800034e0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800034e4:	00005517          	auipc	a0,0x5
    800034e8:	cac50513          	addi	a0,a0,-852 # 80008190 <CONSOLE_STATUS+0x180>
    800034ec:	00001097          	auipc	ra,0x1
    800034f0:	574080e7          	jalr	1396(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    800034f4:	01e00593          	li	a1,30
    800034f8:	00048513          	mv	a0,s1
    800034fc:	00001097          	auipc	ra,0x1
    80003500:	5ec080e7          	jalr	1516(ra) # 80004ae8 <_Z9getStringPci>
    n = stringToInt(input);
    80003504:	00048513          	mv	a0,s1
    80003508:	00001097          	auipc	ra,0x1
    8000350c:	6b8080e7          	jalr	1720(ra) # 80004bc0 <_Z11stringToIntPKc>
    80003510:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003514:	00005517          	auipc	a0,0x5
    80003518:	c9c50513          	addi	a0,a0,-868 # 800081b0 <CONSOLE_STATUS+0x1a0>
    8000351c:	00001097          	auipc	ra,0x1
    80003520:	544080e7          	jalr	1348(ra) # 80004a60 <_Z11printStringPKc>
    printInt(threadNum);
    80003524:	00000613          	li	a2,0
    80003528:	00a00593          	li	a1,10
    8000352c:	00098513          	mv	a0,s3
    80003530:	00001097          	auipc	ra,0x1
    80003534:	6e0080e7          	jalr	1760(ra) # 80004c10 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003538:	00005517          	auipc	a0,0x5
    8000353c:	c9050513          	addi	a0,a0,-880 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80003540:	00001097          	auipc	ra,0x1
    80003544:	520080e7          	jalr	1312(ra) # 80004a60 <_Z11printStringPKc>
    printInt(n);
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	00048513          	mv	a0,s1
    80003554:	00001097          	auipc	ra,0x1
    80003558:	6bc080e7          	jalr	1724(ra) # 80004c10 <_Z8printIntiii>
    printString(".\n");
    8000355c:	00005517          	auipc	a0,0x5
    80003560:	c8450513          	addi	a0,a0,-892 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80003564:	00001097          	auipc	ra,0x1
    80003568:	4fc080e7          	jalr	1276(ra) # 80004a60 <_Z11printStringPKc>
    if (threadNum > n) {
    8000356c:	0334c463          	blt	s1,s3,80003594 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003570:	03305c63          	blez	s3,800035a8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003574:	03800513          	li	a0,56
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	3d4080e7          	jalr	980(ra) # 8000194c <_Znwm>
    80003580:	00050a93          	mv	s5,a0
    80003584:	00048593          	mv	a1,s1
    80003588:	00001097          	auipc	ra,0x1
    8000358c:	7a8080e7          	jalr	1960(ra) # 80004d30 <_ZN9BufferCPPC1Ei>
    80003590:	0300006f          	j	800035c0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003594:	00005517          	auipc	a0,0x5
    80003598:	c5450513          	addi	a0,a0,-940 # 800081e8 <CONSOLE_STATUS+0x1d8>
    8000359c:	00001097          	auipc	ra,0x1
    800035a0:	4c4080e7          	jalr	1220(ra) # 80004a60 <_Z11printStringPKc>
        return;
    800035a4:	0140006f          	j	800035b8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800035a8:	00005517          	auipc	a0,0x5
    800035ac:	c8050513          	addi	a0,a0,-896 # 80008228 <CONSOLE_STATUS+0x218>
    800035b0:	00001097          	auipc	ra,0x1
    800035b4:	4b0080e7          	jalr	1200(ra) # 80004a60 <_Z11printStringPKc>
        return;
    800035b8:	000c0113          	mv	sp,s8
    800035bc:	2140006f          	j	800037d0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800035c0:	01000513          	li	a0,16
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	388080e7          	jalr	904(ra) # 8000194c <_Znwm>
    800035cc:	00050913          	mv	s2,a0
    800035d0:	00000593          	li	a1,0
    800035d4:	ffffe097          	auipc	ra,0xffffe
    800035d8:	5c0080e7          	jalr	1472(ra) # 80001b94 <_ZN9SemaphoreC1Ej>
    800035dc:	00007797          	auipc	a5,0x7
    800035e0:	f527be23          	sd	s2,-164(a5) # 8000a538 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800035e4:	00399793          	slli	a5,s3,0x3
    800035e8:	00f78793          	addi	a5,a5,15
    800035ec:	ff07f793          	andi	a5,a5,-16
    800035f0:	40f10133          	sub	sp,sp,a5
    800035f4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800035f8:	0019871b          	addiw	a4,s3,1
    800035fc:	00171793          	slli	a5,a4,0x1
    80003600:	00e787b3          	add	a5,a5,a4
    80003604:	00379793          	slli	a5,a5,0x3
    80003608:	00f78793          	addi	a5,a5,15
    8000360c:	ff07f793          	andi	a5,a5,-16
    80003610:	40f10133          	sub	sp,sp,a5
    80003614:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003618:	00199493          	slli	s1,s3,0x1
    8000361c:	013484b3          	add	s1,s1,s3
    80003620:	00349493          	slli	s1,s1,0x3
    80003624:	009b04b3          	add	s1,s6,s1
    80003628:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000362c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003630:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003634:	02800513          	li	a0,40
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	314080e7          	jalr	788(ra) # 8000194c <_Znwm>
    80003640:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	440080e7          	jalr	1088(ra) # 80001a84 <_ZN6ThreadC1Ev>
    8000364c:	00007797          	auipc	a5,0x7
    80003650:	d5478793          	addi	a5,a5,-684 # 8000a3a0 <_ZTV8Consumer+0x10>
    80003654:	00fbb023          	sd	a5,0(s7)
    80003658:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000365c:	000b8513          	mv	a0,s7
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	484080e7          	jalr	1156(ra) # 80001ae4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003668:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000366c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003670:	00007797          	auipc	a5,0x7
    80003674:	ec87b783          	ld	a5,-312(a5) # 8000a538 <_ZL10waitForAll>
    80003678:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000367c:	02800513          	li	a0,40
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	2cc080e7          	jalr	716(ra) # 8000194c <_Znwm>
    80003688:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	3f8080e7          	jalr	1016(ra) # 80001a84 <_ZN6ThreadC1Ev>
    80003694:	00007797          	auipc	a5,0x7
    80003698:	cbc78793          	addi	a5,a5,-836 # 8000a350 <_ZTV16ProducerKeyborad+0x10>
    8000369c:	00f4b023          	sd	a5,0(s1)
    800036a0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800036a4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800036a8:	00048513          	mv	a0,s1
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	438080e7          	jalr	1080(ra) # 80001ae4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800036b4:	00100913          	li	s2,1
    800036b8:	0300006f          	j	800036e8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800036bc:	00007797          	auipc	a5,0x7
    800036c0:	cbc78793          	addi	a5,a5,-836 # 8000a378 <_ZTV8Producer+0x10>
    800036c4:	00fcb023          	sd	a5,0(s9)
    800036c8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800036cc:	00391793          	slli	a5,s2,0x3
    800036d0:	00fa07b3          	add	a5,s4,a5
    800036d4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800036d8:	000c8513          	mv	a0,s9
    800036dc:	ffffe097          	auipc	ra,0xffffe
    800036e0:	408080e7          	jalr	1032(ra) # 80001ae4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800036e4:	0019091b          	addiw	s2,s2,1
    800036e8:	05395263          	bge	s2,s3,8000372c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800036ec:	00191493          	slli	s1,s2,0x1
    800036f0:	012484b3          	add	s1,s1,s2
    800036f4:	00349493          	slli	s1,s1,0x3
    800036f8:	009b04b3          	add	s1,s6,s1
    800036fc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003700:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003704:	00007797          	auipc	a5,0x7
    80003708:	e347b783          	ld	a5,-460(a5) # 8000a538 <_ZL10waitForAll>
    8000370c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003710:	02800513          	li	a0,40
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	238080e7          	jalr	568(ra) # 8000194c <_Znwm>
    8000371c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	364080e7          	jalr	868(ra) # 80001a84 <_ZN6ThreadC1Ev>
    80003728:	f95ff06f          	j	800036bc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	390080e7          	jalr	912(ra) # 80001abc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003734:	00000493          	li	s1,0
    80003738:	0099ce63          	blt	s3,s1,80003754 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000373c:	00007517          	auipc	a0,0x7
    80003740:	dfc53503          	ld	a0,-516(a0) # 8000a538 <_ZL10waitForAll>
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	48c080e7          	jalr	1164(ra) # 80001bd0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000374c:	0014849b          	addiw	s1,s1,1
    80003750:	fe9ff06f          	j	80003738 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003754:	00007517          	auipc	a0,0x7
    80003758:	de453503          	ld	a0,-540(a0) # 8000a538 <_ZL10waitForAll>
    8000375c:	00050863          	beqz	a0,8000376c <_Z20testConsumerProducerv+0x2f4>
    80003760:	00053783          	ld	a5,0(a0)
    80003764:	0087b783          	ld	a5,8(a5)
    80003768:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000376c:	00000493          	li	s1,0
    80003770:	0080006f          	j	80003778 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003774:	0014849b          	addiw	s1,s1,1
    80003778:	0334d263          	bge	s1,s3,8000379c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000377c:	00349793          	slli	a5,s1,0x3
    80003780:	00fa07b3          	add	a5,s4,a5
    80003784:	0007b503          	ld	a0,0(a5)
    80003788:	fe0506e3          	beqz	a0,80003774 <_Z20testConsumerProducerv+0x2fc>
    8000378c:	00053783          	ld	a5,0(a0)
    80003790:	0087b783          	ld	a5,8(a5)
    80003794:	000780e7          	jalr	a5
    80003798:	fddff06f          	j	80003774 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000379c:	000b8a63          	beqz	s7,800037b0 <_Z20testConsumerProducerv+0x338>
    800037a0:	000bb783          	ld	a5,0(s7)
    800037a4:	0087b783          	ld	a5,8(a5)
    800037a8:	000b8513          	mv	a0,s7
    800037ac:	000780e7          	jalr	a5
    delete buffer;
    800037b0:	000a8e63          	beqz	s5,800037cc <_Z20testConsumerProducerv+0x354>
    800037b4:	000a8513          	mv	a0,s5
    800037b8:	00002097          	auipc	ra,0x2
    800037bc:	870080e7          	jalr	-1936(ra) # 80005028 <_ZN9BufferCPPD1Ev>
    800037c0:	000a8513          	mv	a0,s5
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	1d8080e7          	jalr	472(ra) # 8000199c <_ZdlPv>
    800037cc:	000c0113          	mv	sp,s8
}
    800037d0:	f8040113          	addi	sp,s0,-128
    800037d4:	07813083          	ld	ra,120(sp)
    800037d8:	07013403          	ld	s0,112(sp)
    800037dc:	06813483          	ld	s1,104(sp)
    800037e0:	06013903          	ld	s2,96(sp)
    800037e4:	05813983          	ld	s3,88(sp)
    800037e8:	05013a03          	ld	s4,80(sp)
    800037ec:	04813a83          	ld	s5,72(sp)
    800037f0:	04013b03          	ld	s6,64(sp)
    800037f4:	03813b83          	ld	s7,56(sp)
    800037f8:	03013c03          	ld	s8,48(sp)
    800037fc:	02813c83          	ld	s9,40(sp)
    80003800:	08010113          	addi	sp,sp,128
    80003804:	00008067          	ret
    80003808:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000380c:	000a8513          	mv	a0,s5
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	18c080e7          	jalr	396(ra) # 8000199c <_ZdlPv>
    80003818:	00048513          	mv	a0,s1
    8000381c:	00008097          	auipc	ra,0x8
    80003820:	e1c080e7          	jalr	-484(ra) # 8000b638 <_Unwind_Resume>
    80003824:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003828:	00090513          	mv	a0,s2
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	170080e7          	jalr	368(ra) # 8000199c <_ZdlPv>
    80003834:	00048513          	mv	a0,s1
    80003838:	00008097          	auipc	ra,0x8
    8000383c:	e00080e7          	jalr	-512(ra) # 8000b638 <_Unwind_Resume>
    80003840:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003844:	000b8513          	mv	a0,s7
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	154080e7          	jalr	340(ra) # 8000199c <_ZdlPv>
    80003850:	00048513          	mv	a0,s1
    80003854:	00008097          	auipc	ra,0x8
    80003858:	de4080e7          	jalr	-540(ra) # 8000b638 <_Unwind_Resume>
    8000385c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003860:	00048513          	mv	a0,s1
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	138080e7          	jalr	312(ra) # 8000199c <_ZdlPv>
    8000386c:	00090513          	mv	a0,s2
    80003870:	00008097          	auipc	ra,0x8
    80003874:	dc8080e7          	jalr	-568(ra) # 8000b638 <_Unwind_Resume>
    80003878:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000387c:	000c8513          	mv	a0,s9
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	11c080e7          	jalr	284(ra) # 8000199c <_ZdlPv>
    80003888:	00048513          	mv	a0,s1
    8000388c:	00008097          	auipc	ra,0x8
    80003890:	dac080e7          	jalr	-596(ra) # 8000b638 <_Unwind_Resume>

0000000080003894 <_ZN8Consumer3runEv>:
    void run() override {
    80003894:	fd010113          	addi	sp,sp,-48
    80003898:	02113423          	sd	ra,40(sp)
    8000389c:	02813023          	sd	s0,32(sp)
    800038a0:	00913c23          	sd	s1,24(sp)
    800038a4:	01213823          	sd	s2,16(sp)
    800038a8:	01313423          	sd	s3,8(sp)
    800038ac:	03010413          	addi	s0,sp,48
    800038b0:	00050913          	mv	s2,a0
        int i = 0;
    800038b4:	00000993          	li	s3,0
    800038b8:	0100006f          	j	800038c8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800038bc:	00a00513          	li	a0,10
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	3fc080e7          	jalr	1020(ra) # 80001cbc <_ZN7Console4putcEc>
        while (!threadEnd) {
    800038c8:	00007797          	auipc	a5,0x7
    800038cc:	c687a783          	lw	a5,-920(a5) # 8000a530 <_ZL9threadEnd>
    800038d0:	04079a63          	bnez	a5,80003924 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800038d4:	02093783          	ld	a5,32(s2)
    800038d8:	0087b503          	ld	a0,8(a5)
    800038dc:	00001097          	auipc	ra,0x1
    800038e0:	638080e7          	jalr	1592(ra) # 80004f14 <_ZN9BufferCPP3getEv>
            i++;
    800038e4:	0019849b          	addiw	s1,s3,1
    800038e8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800038ec:	0ff57513          	andi	a0,a0,255
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	3cc080e7          	jalr	972(ra) # 80001cbc <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800038f8:	05000793          	li	a5,80
    800038fc:	02f4e4bb          	remw	s1,s1,a5
    80003900:	fc0494e3          	bnez	s1,800038c8 <_ZN8Consumer3runEv+0x34>
    80003904:	fb9ff06f          	j	800038bc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003908:	02093783          	ld	a5,32(s2)
    8000390c:	0087b503          	ld	a0,8(a5)
    80003910:	00001097          	auipc	ra,0x1
    80003914:	604080e7          	jalr	1540(ra) # 80004f14 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003918:	0ff57513          	andi	a0,a0,255
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	3a0080e7          	jalr	928(ra) # 80001cbc <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003924:	02093783          	ld	a5,32(s2)
    80003928:	0087b503          	ld	a0,8(a5)
    8000392c:	00001097          	auipc	ra,0x1
    80003930:	674080e7          	jalr	1652(ra) # 80004fa0 <_ZN9BufferCPP6getCntEv>
    80003934:	fca04ae3          	bgtz	a0,80003908 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003938:	02093783          	ld	a5,32(s2)
    8000393c:	0107b503          	ld	a0,16(a5)
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	2bc080e7          	jalr	700(ra) # 80001bfc <_ZN9Semaphore6signalEv>
    }
    80003948:	02813083          	ld	ra,40(sp)
    8000394c:	02013403          	ld	s0,32(sp)
    80003950:	01813483          	ld	s1,24(sp)
    80003954:	01013903          	ld	s2,16(sp)
    80003958:	00813983          	ld	s3,8(sp)
    8000395c:	03010113          	addi	sp,sp,48
    80003960:	00008067          	ret

0000000080003964 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003964:	ff010113          	addi	sp,sp,-16
    80003968:	00113423          	sd	ra,8(sp)
    8000396c:	00813023          	sd	s0,0(sp)
    80003970:	01010413          	addi	s0,sp,16
    80003974:	00007797          	auipc	a5,0x7
    80003978:	a2c78793          	addi	a5,a5,-1492 # 8000a3a0 <_ZTV8Consumer+0x10>
    8000397c:	00f53023          	sd	a5,0(a0)
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	f7c080e7          	jalr	-132(ra) # 800018fc <_ZN6ThreadD1Ev>
    80003988:	00813083          	ld	ra,8(sp)
    8000398c:	00013403          	ld	s0,0(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret

0000000080003998 <_ZN8ConsumerD0Ev>:
    80003998:	fe010113          	addi	sp,sp,-32
    8000399c:	00113c23          	sd	ra,24(sp)
    800039a0:	00813823          	sd	s0,16(sp)
    800039a4:	00913423          	sd	s1,8(sp)
    800039a8:	02010413          	addi	s0,sp,32
    800039ac:	00050493          	mv	s1,a0
    800039b0:	00007797          	auipc	a5,0x7
    800039b4:	9f078793          	addi	a5,a5,-1552 # 8000a3a0 <_ZTV8Consumer+0x10>
    800039b8:	00f53023          	sd	a5,0(a0)
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	f40080e7          	jalr	-192(ra) # 800018fc <_ZN6ThreadD1Ev>
    800039c4:	00048513          	mv	a0,s1
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	fd4080e7          	jalr	-44(ra) # 8000199c <_ZdlPv>
    800039d0:	01813083          	ld	ra,24(sp)
    800039d4:	01013403          	ld	s0,16(sp)
    800039d8:	00813483          	ld	s1,8(sp)
    800039dc:	02010113          	addi	sp,sp,32
    800039e0:	00008067          	ret

00000000800039e4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800039e4:	ff010113          	addi	sp,sp,-16
    800039e8:	00113423          	sd	ra,8(sp)
    800039ec:	00813023          	sd	s0,0(sp)
    800039f0:	01010413          	addi	s0,sp,16
    800039f4:	00007797          	auipc	a5,0x7
    800039f8:	95c78793          	addi	a5,a5,-1700 # 8000a350 <_ZTV16ProducerKeyborad+0x10>
    800039fc:	00f53023          	sd	a5,0(a0)
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	efc080e7          	jalr	-260(ra) # 800018fc <_ZN6ThreadD1Ev>
    80003a08:	00813083          	ld	ra,8(sp)
    80003a0c:	00013403          	ld	s0,0(sp)
    80003a10:	01010113          	addi	sp,sp,16
    80003a14:	00008067          	ret

0000000080003a18 <_ZN16ProducerKeyboradD0Ev>:
    80003a18:	fe010113          	addi	sp,sp,-32
    80003a1c:	00113c23          	sd	ra,24(sp)
    80003a20:	00813823          	sd	s0,16(sp)
    80003a24:	00913423          	sd	s1,8(sp)
    80003a28:	02010413          	addi	s0,sp,32
    80003a2c:	00050493          	mv	s1,a0
    80003a30:	00007797          	auipc	a5,0x7
    80003a34:	92078793          	addi	a5,a5,-1760 # 8000a350 <_ZTV16ProducerKeyborad+0x10>
    80003a38:	00f53023          	sd	a5,0(a0)
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	ec0080e7          	jalr	-320(ra) # 800018fc <_ZN6ThreadD1Ev>
    80003a44:	00048513          	mv	a0,s1
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	f54080e7          	jalr	-172(ra) # 8000199c <_ZdlPv>
    80003a50:	01813083          	ld	ra,24(sp)
    80003a54:	01013403          	ld	s0,16(sp)
    80003a58:	00813483          	ld	s1,8(sp)
    80003a5c:	02010113          	addi	sp,sp,32
    80003a60:	00008067          	ret

0000000080003a64 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003a64:	ff010113          	addi	sp,sp,-16
    80003a68:	00113423          	sd	ra,8(sp)
    80003a6c:	00813023          	sd	s0,0(sp)
    80003a70:	01010413          	addi	s0,sp,16
    80003a74:	00007797          	auipc	a5,0x7
    80003a78:	90478793          	addi	a5,a5,-1788 # 8000a378 <_ZTV8Producer+0x10>
    80003a7c:	00f53023          	sd	a5,0(a0)
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	e7c080e7          	jalr	-388(ra) # 800018fc <_ZN6ThreadD1Ev>
    80003a88:	00813083          	ld	ra,8(sp)
    80003a8c:	00013403          	ld	s0,0(sp)
    80003a90:	01010113          	addi	sp,sp,16
    80003a94:	00008067          	ret

0000000080003a98 <_ZN8ProducerD0Ev>:
    80003a98:	fe010113          	addi	sp,sp,-32
    80003a9c:	00113c23          	sd	ra,24(sp)
    80003aa0:	00813823          	sd	s0,16(sp)
    80003aa4:	00913423          	sd	s1,8(sp)
    80003aa8:	02010413          	addi	s0,sp,32
    80003aac:	00050493          	mv	s1,a0
    80003ab0:	00007797          	auipc	a5,0x7
    80003ab4:	8c878793          	addi	a5,a5,-1848 # 8000a378 <_ZTV8Producer+0x10>
    80003ab8:	00f53023          	sd	a5,0(a0)
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	e40080e7          	jalr	-448(ra) # 800018fc <_ZN6ThreadD1Ev>
    80003ac4:	00048513          	mv	a0,s1
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	ed4080e7          	jalr	-300(ra) # 8000199c <_ZdlPv>
    80003ad0:	01813083          	ld	ra,24(sp)
    80003ad4:	01013403          	ld	s0,16(sp)
    80003ad8:	00813483          	ld	s1,8(sp)
    80003adc:	02010113          	addi	sp,sp,32
    80003ae0:	00008067          	ret

0000000080003ae4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003ae4:	fe010113          	addi	sp,sp,-32
    80003ae8:	00113c23          	sd	ra,24(sp)
    80003aec:	00813823          	sd	s0,16(sp)
    80003af0:	00913423          	sd	s1,8(sp)
    80003af4:	02010413          	addi	s0,sp,32
    80003af8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	a18080e7          	jalr	-1512(ra) # 80001514 <_Z4getcv>
    80003b04:	0005059b          	sext.w	a1,a0
    80003b08:	01b00793          	li	a5,27
    80003b0c:	00f58c63          	beq	a1,a5,80003b24 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003b10:	0204b783          	ld	a5,32(s1)
    80003b14:	0087b503          	ld	a0,8(a5)
    80003b18:	00001097          	auipc	ra,0x1
    80003b1c:	36c080e7          	jalr	876(ra) # 80004e84 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003b20:	fddff06f          	j	80003afc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003b24:	00100793          	li	a5,1
    80003b28:	00007717          	auipc	a4,0x7
    80003b2c:	a0f72423          	sw	a5,-1528(a4) # 8000a530 <_ZL9threadEnd>
        td->buffer->put('!');
    80003b30:	0204b783          	ld	a5,32(s1)
    80003b34:	02100593          	li	a1,33
    80003b38:	0087b503          	ld	a0,8(a5)
    80003b3c:	00001097          	auipc	ra,0x1
    80003b40:	348080e7          	jalr	840(ra) # 80004e84 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003b44:	0204b783          	ld	a5,32(s1)
    80003b48:	0107b503          	ld	a0,16(a5)
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	0b0080e7          	jalr	176(ra) # 80001bfc <_ZN9Semaphore6signalEv>
    }
    80003b54:	01813083          	ld	ra,24(sp)
    80003b58:	01013403          	ld	s0,16(sp)
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	02010113          	addi	sp,sp,32
    80003b64:	00008067          	ret

0000000080003b68 <_ZN8Producer3runEv>:
    void run() override {
    80003b68:	fe010113          	addi	sp,sp,-32
    80003b6c:	00113c23          	sd	ra,24(sp)
    80003b70:	00813823          	sd	s0,16(sp)
    80003b74:	00913423          	sd	s1,8(sp)
    80003b78:	01213023          	sd	s2,0(sp)
    80003b7c:	02010413          	addi	s0,sp,32
    80003b80:	00050493          	mv	s1,a0
        int i = 0;
    80003b84:	00000913          	li	s2,0
        while (!threadEnd) {
    80003b88:	00007797          	auipc	a5,0x7
    80003b8c:	9a87a783          	lw	a5,-1624(a5) # 8000a530 <_ZL9threadEnd>
    80003b90:	04079263          	bnez	a5,80003bd4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003b94:	0204b783          	ld	a5,32(s1)
    80003b98:	0007a583          	lw	a1,0(a5)
    80003b9c:	0305859b          	addiw	a1,a1,48
    80003ba0:	0087b503          	ld	a0,8(a5)
    80003ba4:	00001097          	auipc	ra,0x1
    80003ba8:	2e0080e7          	jalr	736(ra) # 80004e84 <_ZN9BufferCPP3putEi>
            i++;
    80003bac:	0019071b          	addiw	a4,s2,1
    80003bb0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003bb4:	0204b783          	ld	a5,32(s1)
    80003bb8:	0007a783          	lw	a5,0(a5)
    80003bbc:	00e787bb          	addw	a5,a5,a4
    80003bc0:	00500513          	li	a0,5
    80003bc4:	02a7e53b          	remw	a0,a5,a0
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	f50080e7          	jalr	-176(ra) # 80001b18 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003bd0:	fb9ff06f          	j	80003b88 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003bd4:	0204b783          	ld	a5,32(s1)
    80003bd8:	0107b503          	ld	a0,16(a5)
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	020080e7          	jalr	32(ra) # 80001bfc <_ZN9Semaphore6signalEv>
    }
    80003be4:	01813083          	ld	ra,24(sp)
    80003be8:	01013403          	ld	s0,16(sp)
    80003bec:	00813483          	ld	s1,8(sp)
    80003bf0:	00013903          	ld	s2,0(sp)
    80003bf4:	02010113          	addi	sp,sp,32
    80003bf8:	00008067          	ret

0000000080003bfc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003bfc:	fe010113          	addi	sp,sp,-32
    80003c00:	00113c23          	sd	ra,24(sp)
    80003c04:	00813823          	sd	s0,16(sp)
    80003c08:	00913423          	sd	s1,8(sp)
    80003c0c:	01213023          	sd	s2,0(sp)
    80003c10:	02010413          	addi	s0,sp,32
    80003c14:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003c18:	00100793          	li	a5,1
    80003c1c:	02a7f863          	bgeu	a5,a0,80003c4c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003c20:	00a00793          	li	a5,10
    80003c24:	02f577b3          	remu	a5,a0,a5
    80003c28:	02078e63          	beqz	a5,80003c64 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003c2c:	fff48513          	addi	a0,s1,-1
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	fcc080e7          	jalr	-52(ra) # 80003bfc <_ZL9fibonaccim>
    80003c38:	00050913          	mv	s2,a0
    80003c3c:	ffe48513          	addi	a0,s1,-2
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	fbc080e7          	jalr	-68(ra) # 80003bfc <_ZL9fibonaccim>
    80003c48:	00a90533          	add	a0,s2,a0
}
    80003c4c:	01813083          	ld	ra,24(sp)
    80003c50:	01013403          	ld	s0,16(sp)
    80003c54:	00813483          	ld	s1,8(sp)
    80003c58:	00013903          	ld	s2,0(sp)
    80003c5c:	02010113          	addi	sp,sp,32
    80003c60:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003c64:	ffffd097          	auipc	ra,0xffffd
    80003c68:	770080e7          	jalr	1904(ra) # 800013d4 <_Z15thread_dispatchv>
    80003c6c:	fc1ff06f          	j	80003c2c <_ZL9fibonaccim+0x30>

0000000080003c70 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003c70:	fe010113          	addi	sp,sp,-32
    80003c74:	00113c23          	sd	ra,24(sp)
    80003c78:	00813823          	sd	s0,16(sp)
    80003c7c:	00913423          	sd	s1,8(sp)
    80003c80:	01213023          	sd	s2,0(sp)
    80003c84:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003c88:	00a00493          	li	s1,10
    80003c8c:	0400006f          	j	80003ccc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c90:	00004517          	auipc	a0,0x4
    80003c94:	62850513          	addi	a0,a0,1576 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80003c98:	00001097          	auipc	ra,0x1
    80003c9c:	dc8080e7          	jalr	-568(ra) # 80004a60 <_Z11printStringPKc>
    80003ca0:	00000613          	li	a2,0
    80003ca4:	00a00593          	li	a1,10
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	f64080e7          	jalr	-156(ra) # 80004c10 <_Z8printIntiii>
    80003cb4:	00004517          	auipc	a0,0x4
    80003cb8:	4f450513          	addi	a0,a0,1268 # 800081a8 <CONSOLE_STATUS+0x198>
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	da4080e7          	jalr	-604(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003cc4:	0014849b          	addiw	s1,s1,1
    80003cc8:	0ff4f493          	andi	s1,s1,255
    80003ccc:	00c00793          	li	a5,12
    80003cd0:	fc97f0e3          	bgeu	a5,s1,80003c90 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003cd4:	00004517          	auipc	a0,0x4
    80003cd8:	5ec50513          	addi	a0,a0,1516 # 800082c0 <CONSOLE_STATUS+0x2b0>
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	d84080e7          	jalr	-636(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ce4:	00500313          	li	t1,5
    thread_dispatch();
    80003ce8:	ffffd097          	auipc	ra,0xffffd
    80003cec:	6ec080e7          	jalr	1772(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003cf0:	01000513          	li	a0,16
    80003cf4:	00000097          	auipc	ra,0x0
    80003cf8:	f08080e7          	jalr	-248(ra) # 80003bfc <_ZL9fibonaccim>
    80003cfc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003d00:	00004517          	auipc	a0,0x4
    80003d04:	5d050513          	addi	a0,a0,1488 # 800082d0 <CONSOLE_STATUS+0x2c0>
    80003d08:	00001097          	auipc	ra,0x1
    80003d0c:	d58080e7          	jalr	-680(ra) # 80004a60 <_Z11printStringPKc>
    80003d10:	00000613          	li	a2,0
    80003d14:	00a00593          	li	a1,10
    80003d18:	0009051b          	sext.w	a0,s2
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	ef4080e7          	jalr	-268(ra) # 80004c10 <_Z8printIntiii>
    80003d24:	00004517          	auipc	a0,0x4
    80003d28:	48450513          	addi	a0,a0,1156 # 800081a8 <CONSOLE_STATUS+0x198>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	d34080e7          	jalr	-716(ra) # 80004a60 <_Z11printStringPKc>
    80003d34:	0400006f          	j	80003d74 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d38:	00004517          	auipc	a0,0x4
    80003d3c:	58050513          	addi	a0,a0,1408 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	d20080e7          	jalr	-736(ra) # 80004a60 <_Z11printStringPKc>
    80003d48:	00000613          	li	a2,0
    80003d4c:	00a00593          	li	a1,10
    80003d50:	00048513          	mv	a0,s1
    80003d54:	00001097          	auipc	ra,0x1
    80003d58:	ebc080e7          	jalr	-324(ra) # 80004c10 <_Z8printIntiii>
    80003d5c:	00004517          	auipc	a0,0x4
    80003d60:	44c50513          	addi	a0,a0,1100 # 800081a8 <CONSOLE_STATUS+0x198>
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	cfc080e7          	jalr	-772(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003d6c:	0014849b          	addiw	s1,s1,1
    80003d70:	0ff4f493          	andi	s1,s1,255
    80003d74:	00f00793          	li	a5,15
    80003d78:	fc97f0e3          	bgeu	a5,s1,80003d38 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003d7c:	00004517          	auipc	a0,0x4
    80003d80:	56450513          	addi	a0,a0,1380 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80003d84:	00001097          	auipc	ra,0x1
    80003d88:	cdc080e7          	jalr	-804(ra) # 80004a60 <_Z11printStringPKc>
    finishedD = true;
    80003d8c:	00100793          	li	a5,1
    80003d90:	00006717          	auipc	a4,0x6
    80003d94:	7af70823          	sb	a5,1968(a4) # 8000a540 <_ZL9finishedD>
    thread_dispatch();
    80003d98:	ffffd097          	auipc	ra,0xffffd
    80003d9c:	63c080e7          	jalr	1596(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80003da0:	01813083          	ld	ra,24(sp)
    80003da4:	01013403          	ld	s0,16(sp)
    80003da8:	00813483          	ld	s1,8(sp)
    80003dac:	00013903          	ld	s2,0(sp)
    80003db0:	02010113          	addi	sp,sp,32
    80003db4:	00008067          	ret

0000000080003db8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003db8:	fe010113          	addi	sp,sp,-32
    80003dbc:	00113c23          	sd	ra,24(sp)
    80003dc0:	00813823          	sd	s0,16(sp)
    80003dc4:	00913423          	sd	s1,8(sp)
    80003dc8:	01213023          	sd	s2,0(sp)
    80003dcc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003dd0:	00000493          	li	s1,0
    80003dd4:	0400006f          	j	80003e14 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003dd8:	00004517          	auipc	a0,0x4
    80003ddc:	4b050513          	addi	a0,a0,1200 # 80008288 <CONSOLE_STATUS+0x278>
    80003de0:	00001097          	auipc	ra,0x1
    80003de4:	c80080e7          	jalr	-896(ra) # 80004a60 <_Z11printStringPKc>
    80003de8:	00000613          	li	a2,0
    80003dec:	00a00593          	li	a1,10
    80003df0:	00048513          	mv	a0,s1
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	e1c080e7          	jalr	-484(ra) # 80004c10 <_Z8printIntiii>
    80003dfc:	00004517          	auipc	a0,0x4
    80003e00:	3ac50513          	addi	a0,a0,940 # 800081a8 <CONSOLE_STATUS+0x198>
    80003e04:	00001097          	auipc	ra,0x1
    80003e08:	c5c080e7          	jalr	-932(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e0c:	0014849b          	addiw	s1,s1,1
    80003e10:	0ff4f493          	andi	s1,s1,255
    80003e14:	00200793          	li	a5,2
    80003e18:	fc97f0e3          	bgeu	a5,s1,80003dd8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003e1c:	00004517          	auipc	a0,0x4
    80003e20:	47450513          	addi	a0,a0,1140 # 80008290 <CONSOLE_STATUS+0x280>
    80003e24:	00001097          	auipc	ra,0x1
    80003e28:	c3c080e7          	jalr	-964(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e2c:	00700313          	li	t1,7
    thread_dispatch();
    80003e30:	ffffd097          	auipc	ra,0xffffd
    80003e34:	5a4080e7          	jalr	1444(ra) # 800013d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003e38:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003e3c:	00004517          	auipc	a0,0x4
    80003e40:	46450513          	addi	a0,a0,1124 # 800082a0 <CONSOLE_STATUS+0x290>
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	c1c080e7          	jalr	-996(ra) # 80004a60 <_Z11printStringPKc>
    80003e4c:	00000613          	li	a2,0
    80003e50:	00a00593          	li	a1,10
    80003e54:	0009051b          	sext.w	a0,s2
    80003e58:	00001097          	auipc	ra,0x1
    80003e5c:	db8080e7          	jalr	-584(ra) # 80004c10 <_Z8printIntiii>
    80003e60:	00004517          	auipc	a0,0x4
    80003e64:	34850513          	addi	a0,a0,840 # 800081a8 <CONSOLE_STATUS+0x198>
    80003e68:	00001097          	auipc	ra,0x1
    80003e6c:	bf8080e7          	jalr	-1032(ra) # 80004a60 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003e70:	00c00513          	li	a0,12
    80003e74:	00000097          	auipc	ra,0x0
    80003e78:	d88080e7          	jalr	-632(ra) # 80003bfc <_ZL9fibonaccim>
    80003e7c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003e80:	00004517          	auipc	a0,0x4
    80003e84:	42850513          	addi	a0,a0,1064 # 800082a8 <CONSOLE_STATUS+0x298>
    80003e88:	00001097          	auipc	ra,0x1
    80003e8c:	bd8080e7          	jalr	-1064(ra) # 80004a60 <_Z11printStringPKc>
    80003e90:	00000613          	li	a2,0
    80003e94:	00a00593          	li	a1,10
    80003e98:	0009051b          	sext.w	a0,s2
    80003e9c:	00001097          	auipc	ra,0x1
    80003ea0:	d74080e7          	jalr	-652(ra) # 80004c10 <_Z8printIntiii>
    80003ea4:	00004517          	auipc	a0,0x4
    80003ea8:	30450513          	addi	a0,a0,772 # 800081a8 <CONSOLE_STATUS+0x198>
    80003eac:	00001097          	auipc	ra,0x1
    80003eb0:	bb4080e7          	jalr	-1100(ra) # 80004a60 <_Z11printStringPKc>
    80003eb4:	0400006f          	j	80003ef4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003eb8:	00004517          	auipc	a0,0x4
    80003ebc:	3d050513          	addi	a0,a0,976 # 80008288 <CONSOLE_STATUS+0x278>
    80003ec0:	00001097          	auipc	ra,0x1
    80003ec4:	ba0080e7          	jalr	-1120(ra) # 80004a60 <_Z11printStringPKc>
    80003ec8:	00000613          	li	a2,0
    80003ecc:	00a00593          	li	a1,10
    80003ed0:	00048513          	mv	a0,s1
    80003ed4:	00001097          	auipc	ra,0x1
    80003ed8:	d3c080e7          	jalr	-708(ra) # 80004c10 <_Z8printIntiii>
    80003edc:	00004517          	auipc	a0,0x4
    80003ee0:	2cc50513          	addi	a0,a0,716 # 800081a8 <CONSOLE_STATUS+0x198>
    80003ee4:	00001097          	auipc	ra,0x1
    80003ee8:	b7c080e7          	jalr	-1156(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003eec:	0014849b          	addiw	s1,s1,1
    80003ef0:	0ff4f493          	andi	s1,s1,255
    80003ef4:	00500793          	li	a5,5
    80003ef8:	fc97f0e3          	bgeu	a5,s1,80003eb8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003efc:	00004517          	auipc	a0,0x4
    80003f00:	36450513          	addi	a0,a0,868 # 80008260 <CONSOLE_STATUS+0x250>
    80003f04:	00001097          	auipc	ra,0x1
    80003f08:	b5c080e7          	jalr	-1188(ra) # 80004a60 <_Z11printStringPKc>
    finishedC = true;
    80003f0c:	00100793          	li	a5,1
    80003f10:	00006717          	auipc	a4,0x6
    80003f14:	62f708a3          	sb	a5,1585(a4) # 8000a541 <_ZL9finishedC>
    thread_dispatch();
    80003f18:	ffffd097          	auipc	ra,0xffffd
    80003f1c:	4bc080e7          	jalr	1212(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80003f20:	01813083          	ld	ra,24(sp)
    80003f24:	01013403          	ld	s0,16(sp)
    80003f28:	00813483          	ld	s1,8(sp)
    80003f2c:	00013903          	ld	s2,0(sp)
    80003f30:	02010113          	addi	sp,sp,32
    80003f34:	00008067          	ret

0000000080003f38 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003f38:	fe010113          	addi	sp,sp,-32
    80003f3c:	00113c23          	sd	ra,24(sp)
    80003f40:	00813823          	sd	s0,16(sp)
    80003f44:	00913423          	sd	s1,8(sp)
    80003f48:	01213023          	sd	s2,0(sp)
    80003f4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003f50:	00000913          	li	s2,0
    80003f54:	0380006f          	j	80003f8c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003f58:	ffffd097          	auipc	ra,0xffffd
    80003f5c:	47c080e7          	jalr	1148(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003f60:	00148493          	addi	s1,s1,1
    80003f64:	000027b7          	lui	a5,0x2
    80003f68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003f6c:	0097ee63          	bltu	a5,s1,80003f88 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003f70:	00000713          	li	a4,0
    80003f74:	000077b7          	lui	a5,0x7
    80003f78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f7c:	fce7eee3          	bltu	a5,a4,80003f58 <_ZL11workerBodyBPv+0x20>
    80003f80:	00170713          	addi	a4,a4,1
    80003f84:	ff1ff06f          	j	80003f74 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003f88:	00190913          	addi	s2,s2,1
    80003f8c:	00f00793          	li	a5,15
    80003f90:	0527e063          	bltu	a5,s2,80003fd0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003f94:	00004517          	auipc	a0,0x4
    80003f98:	2dc50513          	addi	a0,a0,732 # 80008270 <CONSOLE_STATUS+0x260>
    80003f9c:	00001097          	auipc	ra,0x1
    80003fa0:	ac4080e7          	jalr	-1340(ra) # 80004a60 <_Z11printStringPKc>
    80003fa4:	00000613          	li	a2,0
    80003fa8:	00a00593          	li	a1,10
    80003fac:	0009051b          	sext.w	a0,s2
    80003fb0:	00001097          	auipc	ra,0x1
    80003fb4:	c60080e7          	jalr	-928(ra) # 80004c10 <_Z8printIntiii>
    80003fb8:	00004517          	auipc	a0,0x4
    80003fbc:	1f050513          	addi	a0,a0,496 # 800081a8 <CONSOLE_STATUS+0x198>
    80003fc0:	00001097          	auipc	ra,0x1
    80003fc4:	aa0080e7          	jalr	-1376(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003fc8:	00000493          	li	s1,0
    80003fcc:	f99ff06f          	j	80003f64 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003fd0:	00004517          	auipc	a0,0x4
    80003fd4:	2a850513          	addi	a0,a0,680 # 80008278 <CONSOLE_STATUS+0x268>
    80003fd8:	00001097          	auipc	ra,0x1
    80003fdc:	a88080e7          	jalr	-1400(ra) # 80004a60 <_Z11printStringPKc>
    finishedB = true;
    80003fe0:	00100793          	li	a5,1
    80003fe4:	00006717          	auipc	a4,0x6
    80003fe8:	54f70f23          	sb	a5,1374(a4) # 8000a542 <_ZL9finishedB>
    thread_dispatch();
    80003fec:	ffffd097          	auipc	ra,0xffffd
    80003ff0:	3e8080e7          	jalr	1000(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80003ff4:	01813083          	ld	ra,24(sp)
    80003ff8:	01013403          	ld	s0,16(sp)
    80003ffc:	00813483          	ld	s1,8(sp)
    80004000:	00013903          	ld	s2,0(sp)
    80004004:	02010113          	addi	sp,sp,32
    80004008:	00008067          	ret

000000008000400c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000400c:	fe010113          	addi	sp,sp,-32
    80004010:	00113c23          	sd	ra,24(sp)
    80004014:	00813823          	sd	s0,16(sp)
    80004018:	00913423          	sd	s1,8(sp)
    8000401c:	01213023          	sd	s2,0(sp)
    80004020:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004024:	00000913          	li	s2,0
    80004028:	0380006f          	j	80004060 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000402c:	ffffd097          	auipc	ra,0xffffd
    80004030:	3a8080e7          	jalr	936(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004034:	00148493          	addi	s1,s1,1
    80004038:	000027b7          	lui	a5,0x2
    8000403c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004040:	0097ee63          	bltu	a5,s1,8000405c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004044:	00000713          	li	a4,0
    80004048:	000077b7          	lui	a5,0x7
    8000404c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004050:	fce7eee3          	bltu	a5,a4,8000402c <_ZL11workerBodyAPv+0x20>
    80004054:	00170713          	addi	a4,a4,1
    80004058:	ff1ff06f          	j	80004048 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000405c:	00190913          	addi	s2,s2,1
    80004060:	00900793          	li	a5,9
    80004064:	0527e063          	bltu	a5,s2,800040a4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004068:	00004517          	auipc	a0,0x4
    8000406c:	1f050513          	addi	a0,a0,496 # 80008258 <CONSOLE_STATUS+0x248>
    80004070:	00001097          	auipc	ra,0x1
    80004074:	9f0080e7          	jalr	-1552(ra) # 80004a60 <_Z11printStringPKc>
    80004078:	00000613          	li	a2,0
    8000407c:	00a00593          	li	a1,10
    80004080:	0009051b          	sext.w	a0,s2
    80004084:	00001097          	auipc	ra,0x1
    80004088:	b8c080e7          	jalr	-1140(ra) # 80004c10 <_Z8printIntiii>
    8000408c:	00004517          	auipc	a0,0x4
    80004090:	11c50513          	addi	a0,a0,284 # 800081a8 <CONSOLE_STATUS+0x198>
    80004094:	00001097          	auipc	ra,0x1
    80004098:	9cc080e7          	jalr	-1588(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000409c:	00000493          	li	s1,0
    800040a0:	f99ff06f          	j	80004038 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800040a4:	00004517          	auipc	a0,0x4
    800040a8:	1bc50513          	addi	a0,a0,444 # 80008260 <CONSOLE_STATUS+0x250>
    800040ac:	00001097          	auipc	ra,0x1
    800040b0:	9b4080e7          	jalr	-1612(ra) # 80004a60 <_Z11printStringPKc>
    finishedA = true;
    800040b4:	00100793          	li	a5,1
    800040b8:	00006717          	auipc	a4,0x6
    800040bc:	48f705a3          	sb	a5,1163(a4) # 8000a543 <_ZL9finishedA>
}
    800040c0:	01813083          	ld	ra,24(sp)
    800040c4:	01013403          	ld	s0,16(sp)
    800040c8:	00813483          	ld	s1,8(sp)
    800040cc:	00013903          	ld	s2,0(sp)
    800040d0:	02010113          	addi	sp,sp,32
    800040d4:	00008067          	ret

00000000800040d8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800040d8:	fd010113          	addi	sp,sp,-48
    800040dc:	02113423          	sd	ra,40(sp)
    800040e0:	02813023          	sd	s0,32(sp)
    800040e4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800040e8:	00000613          	li	a2,0
    800040ec:	00000597          	auipc	a1,0x0
    800040f0:	f2058593          	addi	a1,a1,-224 # 8000400c <_ZL11workerBodyAPv>
    800040f4:	fd040513          	addi	a0,s0,-48
    800040f8:	ffffd097          	auipc	ra,0xffffd
    800040fc:	220080e7          	jalr	544(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004100:	00004517          	auipc	a0,0x4
    80004104:	1f050513          	addi	a0,a0,496 # 800082f0 <CONSOLE_STATUS+0x2e0>
    80004108:	00001097          	auipc	ra,0x1
    8000410c:	958080e7          	jalr	-1704(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004110:	00000613          	li	a2,0
    80004114:	00000597          	auipc	a1,0x0
    80004118:	e2458593          	addi	a1,a1,-476 # 80003f38 <_ZL11workerBodyBPv>
    8000411c:	fd840513          	addi	a0,s0,-40
    80004120:	ffffd097          	auipc	ra,0xffffd
    80004124:	1f8080e7          	jalr	504(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004128:	00004517          	auipc	a0,0x4
    8000412c:	1e050513          	addi	a0,a0,480 # 80008308 <CONSOLE_STATUS+0x2f8>
    80004130:	00001097          	auipc	ra,0x1
    80004134:	930080e7          	jalr	-1744(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004138:	00000613          	li	a2,0
    8000413c:	00000597          	auipc	a1,0x0
    80004140:	c7c58593          	addi	a1,a1,-900 # 80003db8 <_ZL11workerBodyCPv>
    80004144:	fe040513          	addi	a0,s0,-32
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	1d0080e7          	jalr	464(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004150:	00004517          	auipc	a0,0x4
    80004154:	1d050513          	addi	a0,a0,464 # 80008320 <CONSOLE_STATUS+0x310>
    80004158:	00001097          	auipc	ra,0x1
    8000415c:	908080e7          	jalr	-1784(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004160:	00000613          	li	a2,0
    80004164:	00000597          	auipc	a1,0x0
    80004168:	b0c58593          	addi	a1,a1,-1268 # 80003c70 <_ZL11workerBodyDPv>
    8000416c:	fe840513          	addi	a0,s0,-24
    80004170:	ffffd097          	auipc	ra,0xffffd
    80004174:	1a8080e7          	jalr	424(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004178:	00004517          	auipc	a0,0x4
    8000417c:	1c050513          	addi	a0,a0,448 # 80008338 <CONSOLE_STATUS+0x328>
    80004180:	00001097          	auipc	ra,0x1
    80004184:	8e0080e7          	jalr	-1824(ra) # 80004a60 <_Z11printStringPKc>
    80004188:	00c0006f          	j	80004194 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000418c:	ffffd097          	auipc	ra,0xffffd
    80004190:	248080e7          	jalr	584(ra) # 800013d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004194:	00006797          	auipc	a5,0x6
    80004198:	3af7c783          	lbu	a5,943(a5) # 8000a543 <_ZL9finishedA>
    8000419c:	fe0788e3          	beqz	a5,8000418c <_Z18Threads_C_API_testv+0xb4>
    800041a0:	00006797          	auipc	a5,0x6
    800041a4:	3a27c783          	lbu	a5,930(a5) # 8000a542 <_ZL9finishedB>
    800041a8:	fe0782e3          	beqz	a5,8000418c <_Z18Threads_C_API_testv+0xb4>
    800041ac:	00006797          	auipc	a5,0x6
    800041b0:	3957c783          	lbu	a5,917(a5) # 8000a541 <_ZL9finishedC>
    800041b4:	fc078ce3          	beqz	a5,8000418c <_Z18Threads_C_API_testv+0xb4>
    800041b8:	00006797          	auipc	a5,0x6
    800041bc:	3887c783          	lbu	a5,904(a5) # 8000a540 <_ZL9finishedD>
    800041c0:	fc0786e3          	beqz	a5,8000418c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800041c4:	02813083          	ld	ra,40(sp)
    800041c8:	02013403          	ld	s0,32(sp)
    800041cc:	03010113          	addi	sp,sp,48
    800041d0:	00008067          	ret

00000000800041d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800041d4:	fd010113          	addi	sp,sp,-48
    800041d8:	02113423          	sd	ra,40(sp)
    800041dc:	02813023          	sd	s0,32(sp)
    800041e0:	00913c23          	sd	s1,24(sp)
    800041e4:	01213823          	sd	s2,16(sp)
    800041e8:	01313423          	sd	s3,8(sp)
    800041ec:	03010413          	addi	s0,sp,48
    800041f0:	00050993          	mv	s3,a0
    800041f4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800041f8:	00000913          	li	s2,0
    800041fc:	00c0006f          	j	80004208 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	8bc080e7          	jalr	-1860(ra) # 80001abc <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004208:	ffffd097          	auipc	ra,0xffffd
    8000420c:	30c080e7          	jalr	780(ra) # 80001514 <_Z4getcv>
    80004210:	0005059b          	sext.w	a1,a0
    80004214:	01b00793          	li	a5,27
    80004218:	02f58a63          	beq	a1,a5,8000424c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000421c:	0084b503          	ld	a0,8(s1)
    80004220:	00001097          	auipc	ra,0x1
    80004224:	c64080e7          	jalr	-924(ra) # 80004e84 <_ZN9BufferCPP3putEi>
        i++;
    80004228:	0019071b          	addiw	a4,s2,1
    8000422c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004230:	0004a683          	lw	a3,0(s1)
    80004234:	0026979b          	slliw	a5,a3,0x2
    80004238:	00d787bb          	addw	a5,a5,a3
    8000423c:	0017979b          	slliw	a5,a5,0x1
    80004240:	02f767bb          	remw	a5,a4,a5
    80004244:	fc0792e3          	bnez	a5,80004208 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004248:	fb9ff06f          	j	80004200 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000424c:	00100793          	li	a5,1
    80004250:	00006717          	auipc	a4,0x6
    80004254:	2ef72c23          	sw	a5,760(a4) # 8000a548 <_ZL9threadEnd>
    td->buffer->put('!');
    80004258:	0209b783          	ld	a5,32(s3)
    8000425c:	02100593          	li	a1,33
    80004260:	0087b503          	ld	a0,8(a5)
    80004264:	00001097          	auipc	ra,0x1
    80004268:	c20080e7          	jalr	-992(ra) # 80004e84 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000426c:	0104b503          	ld	a0,16(s1)
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	98c080e7          	jalr	-1652(ra) # 80001bfc <_ZN9Semaphore6signalEv>
}
    80004278:	02813083          	ld	ra,40(sp)
    8000427c:	02013403          	ld	s0,32(sp)
    80004280:	01813483          	ld	s1,24(sp)
    80004284:	01013903          	ld	s2,16(sp)
    80004288:	00813983          	ld	s3,8(sp)
    8000428c:	03010113          	addi	sp,sp,48
    80004290:	00008067          	ret

0000000080004294 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004294:	fe010113          	addi	sp,sp,-32
    80004298:	00113c23          	sd	ra,24(sp)
    8000429c:	00813823          	sd	s0,16(sp)
    800042a0:	00913423          	sd	s1,8(sp)
    800042a4:	01213023          	sd	s2,0(sp)
    800042a8:	02010413          	addi	s0,sp,32
    800042ac:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800042b0:	00000913          	li	s2,0
    800042b4:	00c0006f          	j	800042c0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	804080e7          	jalr	-2044(ra) # 80001abc <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800042c0:	00006797          	auipc	a5,0x6
    800042c4:	2887a783          	lw	a5,648(a5) # 8000a548 <_ZL9threadEnd>
    800042c8:	02079e63          	bnez	a5,80004304 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800042cc:	0004a583          	lw	a1,0(s1)
    800042d0:	0305859b          	addiw	a1,a1,48
    800042d4:	0084b503          	ld	a0,8(s1)
    800042d8:	00001097          	auipc	ra,0x1
    800042dc:	bac080e7          	jalr	-1108(ra) # 80004e84 <_ZN9BufferCPP3putEi>
        i++;
    800042e0:	0019071b          	addiw	a4,s2,1
    800042e4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800042e8:	0004a683          	lw	a3,0(s1)
    800042ec:	0026979b          	slliw	a5,a3,0x2
    800042f0:	00d787bb          	addw	a5,a5,a3
    800042f4:	0017979b          	slliw	a5,a5,0x1
    800042f8:	02f767bb          	remw	a5,a4,a5
    800042fc:	fc0792e3          	bnez	a5,800042c0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004300:	fb9ff06f          	j	800042b8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004304:	0104b503          	ld	a0,16(s1)
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	8f4080e7          	jalr	-1804(ra) # 80001bfc <_ZN9Semaphore6signalEv>
}
    80004310:	01813083          	ld	ra,24(sp)
    80004314:	01013403          	ld	s0,16(sp)
    80004318:	00813483          	ld	s1,8(sp)
    8000431c:	00013903          	ld	s2,0(sp)
    80004320:	02010113          	addi	sp,sp,32
    80004324:	00008067          	ret

0000000080004328 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004328:	fd010113          	addi	sp,sp,-48
    8000432c:	02113423          	sd	ra,40(sp)
    80004330:	02813023          	sd	s0,32(sp)
    80004334:	00913c23          	sd	s1,24(sp)
    80004338:	01213823          	sd	s2,16(sp)
    8000433c:	01313423          	sd	s3,8(sp)
    80004340:	01413023          	sd	s4,0(sp)
    80004344:	03010413          	addi	s0,sp,48
    80004348:	00050993          	mv	s3,a0
    8000434c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004350:	00000a13          	li	s4,0
    80004354:	01c0006f          	j	80004370 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004358:	ffffd097          	auipc	ra,0xffffd
    8000435c:	764080e7          	jalr	1892(ra) # 80001abc <_ZN6Thread8dispatchEv>
    80004360:	0500006f          	j	800043b0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004364:	00a00513          	li	a0,10
    80004368:	ffffd097          	auipc	ra,0xffffd
    8000436c:	1e0080e7          	jalr	480(ra) # 80001548 <_Z4putcc>
    while (!threadEnd) {
    80004370:	00006797          	auipc	a5,0x6
    80004374:	1d87a783          	lw	a5,472(a5) # 8000a548 <_ZL9threadEnd>
    80004378:	06079263          	bnez	a5,800043dc <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000437c:	00893503          	ld	a0,8(s2)
    80004380:	00001097          	auipc	ra,0x1
    80004384:	b94080e7          	jalr	-1132(ra) # 80004f14 <_ZN9BufferCPP3getEv>
        i++;
    80004388:	001a049b          	addiw	s1,s4,1
    8000438c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004390:	0ff57513          	andi	a0,a0,255
    80004394:	ffffd097          	auipc	ra,0xffffd
    80004398:	1b4080e7          	jalr	436(ra) # 80001548 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000439c:	00092703          	lw	a4,0(s2)
    800043a0:	0027179b          	slliw	a5,a4,0x2
    800043a4:	00e787bb          	addw	a5,a5,a4
    800043a8:	02f4e7bb          	remw	a5,s1,a5
    800043ac:	fa0786e3          	beqz	a5,80004358 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800043b0:	05000793          	li	a5,80
    800043b4:	02f4e4bb          	remw	s1,s1,a5
    800043b8:	fa049ce3          	bnez	s1,80004370 <_ZN12ConsumerSync8consumerEPv+0x48>
    800043bc:	fa9ff06f          	j	80004364 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800043c0:	0209b783          	ld	a5,32(s3)
    800043c4:	0087b503          	ld	a0,8(a5)
    800043c8:	00001097          	auipc	ra,0x1
    800043cc:	b4c080e7          	jalr	-1204(ra) # 80004f14 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800043d0:	0ff57513          	andi	a0,a0,255
    800043d4:	ffffe097          	auipc	ra,0xffffe
    800043d8:	8e8080e7          	jalr	-1816(ra) # 80001cbc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800043dc:	0209b783          	ld	a5,32(s3)
    800043e0:	0087b503          	ld	a0,8(a5)
    800043e4:	00001097          	auipc	ra,0x1
    800043e8:	bbc080e7          	jalr	-1092(ra) # 80004fa0 <_ZN9BufferCPP6getCntEv>
    800043ec:	fca04ae3          	bgtz	a0,800043c0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800043f0:	01093503          	ld	a0,16(s2)
    800043f4:	ffffe097          	auipc	ra,0xffffe
    800043f8:	808080e7          	jalr	-2040(ra) # 80001bfc <_ZN9Semaphore6signalEv>
}
    800043fc:	02813083          	ld	ra,40(sp)
    80004400:	02013403          	ld	s0,32(sp)
    80004404:	01813483          	ld	s1,24(sp)
    80004408:	01013903          	ld	s2,16(sp)
    8000440c:	00813983          	ld	s3,8(sp)
    80004410:	00013a03          	ld	s4,0(sp)
    80004414:	03010113          	addi	sp,sp,48
    80004418:	00008067          	ret

000000008000441c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000441c:	f8010113          	addi	sp,sp,-128
    80004420:	06113c23          	sd	ra,120(sp)
    80004424:	06813823          	sd	s0,112(sp)
    80004428:	06913423          	sd	s1,104(sp)
    8000442c:	07213023          	sd	s2,96(sp)
    80004430:	05313c23          	sd	s3,88(sp)
    80004434:	05413823          	sd	s4,80(sp)
    80004438:	05513423          	sd	s5,72(sp)
    8000443c:	05613023          	sd	s6,64(sp)
    80004440:	03713c23          	sd	s7,56(sp)
    80004444:	03813823          	sd	s8,48(sp)
    80004448:	03913423          	sd	s9,40(sp)
    8000444c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004450:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004454:	00004517          	auipc	a0,0x4
    80004458:	d1c50513          	addi	a0,a0,-740 # 80008170 <CONSOLE_STATUS+0x160>
    8000445c:	00000097          	auipc	ra,0x0
    80004460:	604080e7          	jalr	1540(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    80004464:	01e00593          	li	a1,30
    80004468:	f8040493          	addi	s1,s0,-128
    8000446c:	00048513          	mv	a0,s1
    80004470:	00000097          	auipc	ra,0x0
    80004474:	678080e7          	jalr	1656(ra) # 80004ae8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004478:	00048513          	mv	a0,s1
    8000447c:	00000097          	auipc	ra,0x0
    80004480:	744080e7          	jalr	1860(ra) # 80004bc0 <_Z11stringToIntPKc>
    80004484:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004488:	00004517          	auipc	a0,0x4
    8000448c:	d0850513          	addi	a0,a0,-760 # 80008190 <CONSOLE_STATUS+0x180>
    80004490:	00000097          	auipc	ra,0x0
    80004494:	5d0080e7          	jalr	1488(ra) # 80004a60 <_Z11printStringPKc>
    getString(input, 30);
    80004498:	01e00593          	li	a1,30
    8000449c:	00048513          	mv	a0,s1
    800044a0:	00000097          	auipc	ra,0x0
    800044a4:	648080e7          	jalr	1608(ra) # 80004ae8 <_Z9getStringPci>
    n = stringToInt(input);
    800044a8:	00048513          	mv	a0,s1
    800044ac:	00000097          	auipc	ra,0x0
    800044b0:	714080e7          	jalr	1812(ra) # 80004bc0 <_Z11stringToIntPKc>
    800044b4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800044b8:	00004517          	auipc	a0,0x4
    800044bc:	cf850513          	addi	a0,a0,-776 # 800081b0 <CONSOLE_STATUS+0x1a0>
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	5a0080e7          	jalr	1440(ra) # 80004a60 <_Z11printStringPKc>
    800044c8:	00000613          	li	a2,0
    800044cc:	00a00593          	li	a1,10
    800044d0:	00090513          	mv	a0,s2
    800044d4:	00000097          	auipc	ra,0x0
    800044d8:	73c080e7          	jalr	1852(ra) # 80004c10 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800044dc:	00004517          	auipc	a0,0x4
    800044e0:	cec50513          	addi	a0,a0,-788 # 800081c8 <CONSOLE_STATUS+0x1b8>
    800044e4:	00000097          	auipc	ra,0x0
    800044e8:	57c080e7          	jalr	1404(ra) # 80004a60 <_Z11printStringPKc>
    800044ec:	00000613          	li	a2,0
    800044f0:	00a00593          	li	a1,10
    800044f4:	00048513          	mv	a0,s1
    800044f8:	00000097          	auipc	ra,0x0
    800044fc:	718080e7          	jalr	1816(ra) # 80004c10 <_Z8printIntiii>
    printString(".\n");
    80004500:	00004517          	auipc	a0,0x4
    80004504:	ce050513          	addi	a0,a0,-800 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80004508:	00000097          	auipc	ra,0x0
    8000450c:	558080e7          	jalr	1368(ra) # 80004a60 <_Z11printStringPKc>
    if(threadNum > n) {
    80004510:	0324c463          	blt	s1,s2,80004538 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004514:	03205c63          	blez	s2,8000454c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004518:	03800513          	li	a0,56
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	430080e7          	jalr	1072(ra) # 8000194c <_Znwm>
    80004524:	00050a93          	mv	s5,a0
    80004528:	00048593          	mv	a1,s1
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	804080e7          	jalr	-2044(ra) # 80004d30 <_ZN9BufferCPPC1Ei>
    80004534:	0300006f          	j	80004564 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004538:	00004517          	auipc	a0,0x4
    8000453c:	cb050513          	addi	a0,a0,-848 # 800081e8 <CONSOLE_STATUS+0x1d8>
    80004540:	00000097          	auipc	ra,0x0
    80004544:	520080e7          	jalr	1312(ra) # 80004a60 <_Z11printStringPKc>
        return;
    80004548:	0140006f          	j	8000455c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000454c:	00004517          	auipc	a0,0x4
    80004550:	cdc50513          	addi	a0,a0,-804 # 80008228 <CONSOLE_STATUS+0x218>
    80004554:	00000097          	auipc	ra,0x0
    80004558:	50c080e7          	jalr	1292(ra) # 80004a60 <_Z11printStringPKc>
        return;
    8000455c:	000b8113          	mv	sp,s7
    80004560:	2380006f          	j	80004798 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004564:	01000513          	li	a0,16
    80004568:	ffffd097          	auipc	ra,0xffffd
    8000456c:	3e4080e7          	jalr	996(ra) # 8000194c <_Znwm>
    80004570:	00050493          	mv	s1,a0
    80004574:	00000593          	li	a1,0
    80004578:	ffffd097          	auipc	ra,0xffffd
    8000457c:	61c080e7          	jalr	1564(ra) # 80001b94 <_ZN9SemaphoreC1Ej>
    80004580:	00006797          	auipc	a5,0x6
    80004584:	fc97b823          	sd	s1,-48(a5) # 8000a550 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004588:	00391793          	slli	a5,s2,0x3
    8000458c:	00f78793          	addi	a5,a5,15
    80004590:	ff07f793          	andi	a5,a5,-16
    80004594:	40f10133          	sub	sp,sp,a5
    80004598:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000459c:	0019071b          	addiw	a4,s2,1
    800045a0:	00171793          	slli	a5,a4,0x1
    800045a4:	00e787b3          	add	a5,a5,a4
    800045a8:	00379793          	slli	a5,a5,0x3
    800045ac:	00f78793          	addi	a5,a5,15
    800045b0:	ff07f793          	andi	a5,a5,-16
    800045b4:	40f10133          	sub	sp,sp,a5
    800045b8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800045bc:	00191c13          	slli	s8,s2,0x1
    800045c0:	012c07b3          	add	a5,s8,s2
    800045c4:	00379793          	slli	a5,a5,0x3
    800045c8:	00fa07b3          	add	a5,s4,a5
    800045cc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800045d0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800045d4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800045d8:	02800513          	li	a0,40
    800045dc:	ffffd097          	auipc	ra,0xffffd
    800045e0:	370080e7          	jalr	880(ra) # 8000194c <_Znwm>
    800045e4:	00050b13          	mv	s6,a0
    800045e8:	012c0c33          	add	s8,s8,s2
    800045ec:	003c1c13          	slli	s8,s8,0x3
    800045f0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800045f4:	ffffd097          	auipc	ra,0xffffd
    800045f8:	490080e7          	jalr	1168(ra) # 80001a84 <_ZN6ThreadC1Ev>
    800045fc:	00006797          	auipc	a5,0x6
    80004600:	e1c78793          	addi	a5,a5,-484 # 8000a418 <_ZTV12ConsumerSync+0x10>
    80004604:	00fb3023          	sd	a5,0(s6)
    80004608:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000460c:	000b0513          	mv	a0,s6
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	4d4080e7          	jalr	1236(ra) # 80001ae4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004618:	00000493          	li	s1,0
    8000461c:	0380006f          	j	80004654 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004620:	00006797          	auipc	a5,0x6
    80004624:	dd078793          	addi	a5,a5,-560 # 8000a3f0 <_ZTV12ProducerSync+0x10>
    80004628:	00fcb023          	sd	a5,0(s9)
    8000462c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004630:	00349793          	slli	a5,s1,0x3
    80004634:	00f987b3          	add	a5,s3,a5
    80004638:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000463c:	00349793          	slli	a5,s1,0x3
    80004640:	00f987b3          	add	a5,s3,a5
    80004644:	0007b503          	ld	a0,0(a5)
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	49c080e7          	jalr	1180(ra) # 80001ae4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004650:	0014849b          	addiw	s1,s1,1
    80004654:	0b24d063          	bge	s1,s2,800046f4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004658:	00149793          	slli	a5,s1,0x1
    8000465c:	009787b3          	add	a5,a5,s1
    80004660:	00379793          	slli	a5,a5,0x3
    80004664:	00fa07b3          	add	a5,s4,a5
    80004668:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000466c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004670:	00006717          	auipc	a4,0x6
    80004674:	ee073703          	ld	a4,-288(a4) # 8000a550 <_ZL10waitForAll>
    80004678:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000467c:	02905863          	blez	s1,800046ac <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004680:	02800513          	li	a0,40
    80004684:	ffffd097          	auipc	ra,0xffffd
    80004688:	2c8080e7          	jalr	712(ra) # 8000194c <_Znwm>
    8000468c:	00050c93          	mv	s9,a0
    80004690:	00149c13          	slli	s8,s1,0x1
    80004694:	009c0c33          	add	s8,s8,s1
    80004698:	003c1c13          	slli	s8,s8,0x3
    8000469c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800046a0:	ffffd097          	auipc	ra,0xffffd
    800046a4:	3e4080e7          	jalr	996(ra) # 80001a84 <_ZN6ThreadC1Ev>
    800046a8:	f79ff06f          	j	80004620 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800046ac:	02800513          	li	a0,40
    800046b0:	ffffd097          	auipc	ra,0xffffd
    800046b4:	29c080e7          	jalr	668(ra) # 8000194c <_Znwm>
    800046b8:	00050c93          	mv	s9,a0
    800046bc:	00149c13          	slli	s8,s1,0x1
    800046c0:	009c0c33          	add	s8,s8,s1
    800046c4:	003c1c13          	slli	s8,s8,0x3
    800046c8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800046cc:	ffffd097          	auipc	ra,0xffffd
    800046d0:	3b8080e7          	jalr	952(ra) # 80001a84 <_ZN6ThreadC1Ev>
    800046d4:	00006797          	auipc	a5,0x6
    800046d8:	cf478793          	addi	a5,a5,-780 # 8000a3c8 <_ZTV16ProducerKeyboard+0x10>
    800046dc:	00fcb023          	sd	a5,0(s9)
    800046e0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800046e4:	00349793          	slli	a5,s1,0x3
    800046e8:	00f987b3          	add	a5,s3,a5
    800046ec:	0197b023          	sd	s9,0(a5)
    800046f0:	f4dff06f          	j	8000463c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	3c8080e7          	jalr	968(ra) # 80001abc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800046fc:	00000493          	li	s1,0
    80004700:	00994e63          	blt	s2,s1,8000471c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004704:	00006517          	auipc	a0,0x6
    80004708:	e4c53503          	ld	a0,-436(a0) # 8000a550 <_ZL10waitForAll>
    8000470c:	ffffd097          	auipc	ra,0xffffd
    80004710:	4c4080e7          	jalr	1220(ra) # 80001bd0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004714:	0014849b          	addiw	s1,s1,1
    80004718:	fe9ff06f          	j	80004700 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000471c:	00000493          	li	s1,0
    80004720:	0080006f          	j	80004728 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004724:	0014849b          	addiw	s1,s1,1
    80004728:	0324d263          	bge	s1,s2,8000474c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000472c:	00349793          	slli	a5,s1,0x3
    80004730:	00f987b3          	add	a5,s3,a5
    80004734:	0007b503          	ld	a0,0(a5)
    80004738:	fe0506e3          	beqz	a0,80004724 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000473c:	00053783          	ld	a5,0(a0)
    80004740:	0087b783          	ld	a5,8(a5)
    80004744:	000780e7          	jalr	a5
    80004748:	fddff06f          	j	80004724 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000474c:	000b0a63          	beqz	s6,80004760 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004750:	000b3783          	ld	a5,0(s6)
    80004754:	0087b783          	ld	a5,8(a5)
    80004758:	000b0513          	mv	a0,s6
    8000475c:	000780e7          	jalr	a5
    delete waitForAll;
    80004760:	00006517          	auipc	a0,0x6
    80004764:	df053503          	ld	a0,-528(a0) # 8000a550 <_ZL10waitForAll>
    80004768:	00050863          	beqz	a0,80004778 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000476c:	00053783          	ld	a5,0(a0)
    80004770:	0087b783          	ld	a5,8(a5)
    80004774:	000780e7          	jalr	a5
    delete buffer;
    80004778:	000a8e63          	beqz	s5,80004794 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000477c:	000a8513          	mv	a0,s5
    80004780:	00001097          	auipc	ra,0x1
    80004784:	8a8080e7          	jalr	-1880(ra) # 80005028 <_ZN9BufferCPPD1Ev>
    80004788:	000a8513          	mv	a0,s5
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	210080e7          	jalr	528(ra) # 8000199c <_ZdlPv>
    80004794:	000b8113          	mv	sp,s7

}
    80004798:	f8040113          	addi	sp,s0,-128
    8000479c:	07813083          	ld	ra,120(sp)
    800047a0:	07013403          	ld	s0,112(sp)
    800047a4:	06813483          	ld	s1,104(sp)
    800047a8:	06013903          	ld	s2,96(sp)
    800047ac:	05813983          	ld	s3,88(sp)
    800047b0:	05013a03          	ld	s4,80(sp)
    800047b4:	04813a83          	ld	s5,72(sp)
    800047b8:	04013b03          	ld	s6,64(sp)
    800047bc:	03813b83          	ld	s7,56(sp)
    800047c0:	03013c03          	ld	s8,48(sp)
    800047c4:	02813c83          	ld	s9,40(sp)
    800047c8:	08010113          	addi	sp,sp,128
    800047cc:	00008067          	ret
    800047d0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800047d4:	000a8513          	mv	a0,s5
    800047d8:	ffffd097          	auipc	ra,0xffffd
    800047dc:	1c4080e7          	jalr	452(ra) # 8000199c <_ZdlPv>
    800047e0:	00048513          	mv	a0,s1
    800047e4:	00007097          	auipc	ra,0x7
    800047e8:	e54080e7          	jalr	-428(ra) # 8000b638 <_Unwind_Resume>
    800047ec:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800047f0:	00048513          	mv	a0,s1
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	1a8080e7          	jalr	424(ra) # 8000199c <_ZdlPv>
    800047fc:	00090513          	mv	a0,s2
    80004800:	00007097          	auipc	ra,0x7
    80004804:	e38080e7          	jalr	-456(ra) # 8000b638 <_Unwind_Resume>
    80004808:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000480c:	000b0513          	mv	a0,s6
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	18c080e7          	jalr	396(ra) # 8000199c <_ZdlPv>
    80004818:	00048513          	mv	a0,s1
    8000481c:	00007097          	auipc	ra,0x7
    80004820:	e1c080e7          	jalr	-484(ra) # 8000b638 <_Unwind_Resume>
    80004824:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004828:	000c8513          	mv	a0,s9
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	170080e7          	jalr	368(ra) # 8000199c <_ZdlPv>
    80004834:	00048513          	mv	a0,s1
    80004838:	00007097          	auipc	ra,0x7
    8000483c:	e00080e7          	jalr	-512(ra) # 8000b638 <_Unwind_Resume>
    80004840:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004844:	000c8513          	mv	a0,s9
    80004848:	ffffd097          	auipc	ra,0xffffd
    8000484c:	154080e7          	jalr	340(ra) # 8000199c <_ZdlPv>
    80004850:	00048513          	mv	a0,s1
    80004854:	00007097          	auipc	ra,0x7
    80004858:	de4080e7          	jalr	-540(ra) # 8000b638 <_Unwind_Resume>

000000008000485c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000485c:	ff010113          	addi	sp,sp,-16
    80004860:	00113423          	sd	ra,8(sp)
    80004864:	00813023          	sd	s0,0(sp)
    80004868:	01010413          	addi	s0,sp,16
    8000486c:	00006797          	auipc	a5,0x6
    80004870:	bac78793          	addi	a5,a5,-1108 # 8000a418 <_ZTV12ConsumerSync+0x10>
    80004874:	00f53023          	sd	a5,0(a0)
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	084080e7          	jalr	132(ra) # 800018fc <_ZN6ThreadD1Ev>
    80004880:	00813083          	ld	ra,8(sp)
    80004884:	00013403          	ld	s0,0(sp)
    80004888:	01010113          	addi	sp,sp,16
    8000488c:	00008067          	ret

0000000080004890 <_ZN12ConsumerSyncD0Ev>:
    80004890:	fe010113          	addi	sp,sp,-32
    80004894:	00113c23          	sd	ra,24(sp)
    80004898:	00813823          	sd	s0,16(sp)
    8000489c:	00913423          	sd	s1,8(sp)
    800048a0:	02010413          	addi	s0,sp,32
    800048a4:	00050493          	mv	s1,a0
    800048a8:	00006797          	auipc	a5,0x6
    800048ac:	b7078793          	addi	a5,a5,-1168 # 8000a418 <_ZTV12ConsumerSync+0x10>
    800048b0:	00f53023          	sd	a5,0(a0)
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	048080e7          	jalr	72(ra) # 800018fc <_ZN6ThreadD1Ev>
    800048bc:	00048513          	mv	a0,s1
    800048c0:	ffffd097          	auipc	ra,0xffffd
    800048c4:	0dc080e7          	jalr	220(ra) # 8000199c <_ZdlPv>
    800048c8:	01813083          	ld	ra,24(sp)
    800048cc:	01013403          	ld	s0,16(sp)
    800048d0:	00813483          	ld	s1,8(sp)
    800048d4:	02010113          	addi	sp,sp,32
    800048d8:	00008067          	ret

00000000800048dc <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800048dc:	ff010113          	addi	sp,sp,-16
    800048e0:	00113423          	sd	ra,8(sp)
    800048e4:	00813023          	sd	s0,0(sp)
    800048e8:	01010413          	addi	s0,sp,16
    800048ec:	00006797          	auipc	a5,0x6
    800048f0:	b0478793          	addi	a5,a5,-1276 # 8000a3f0 <_ZTV12ProducerSync+0x10>
    800048f4:	00f53023          	sd	a5,0(a0)
    800048f8:	ffffd097          	auipc	ra,0xffffd
    800048fc:	004080e7          	jalr	4(ra) # 800018fc <_ZN6ThreadD1Ev>
    80004900:	00813083          	ld	ra,8(sp)
    80004904:	00013403          	ld	s0,0(sp)
    80004908:	01010113          	addi	sp,sp,16
    8000490c:	00008067          	ret

0000000080004910 <_ZN12ProducerSyncD0Ev>:
    80004910:	fe010113          	addi	sp,sp,-32
    80004914:	00113c23          	sd	ra,24(sp)
    80004918:	00813823          	sd	s0,16(sp)
    8000491c:	00913423          	sd	s1,8(sp)
    80004920:	02010413          	addi	s0,sp,32
    80004924:	00050493          	mv	s1,a0
    80004928:	00006797          	auipc	a5,0x6
    8000492c:	ac878793          	addi	a5,a5,-1336 # 8000a3f0 <_ZTV12ProducerSync+0x10>
    80004930:	00f53023          	sd	a5,0(a0)
    80004934:	ffffd097          	auipc	ra,0xffffd
    80004938:	fc8080e7          	jalr	-56(ra) # 800018fc <_ZN6ThreadD1Ev>
    8000493c:	00048513          	mv	a0,s1
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	05c080e7          	jalr	92(ra) # 8000199c <_ZdlPv>
    80004948:	01813083          	ld	ra,24(sp)
    8000494c:	01013403          	ld	s0,16(sp)
    80004950:	00813483          	ld	s1,8(sp)
    80004954:	02010113          	addi	sp,sp,32
    80004958:	00008067          	ret

000000008000495c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000495c:	ff010113          	addi	sp,sp,-16
    80004960:	00113423          	sd	ra,8(sp)
    80004964:	00813023          	sd	s0,0(sp)
    80004968:	01010413          	addi	s0,sp,16
    8000496c:	00006797          	auipc	a5,0x6
    80004970:	a5c78793          	addi	a5,a5,-1444 # 8000a3c8 <_ZTV16ProducerKeyboard+0x10>
    80004974:	00f53023          	sd	a5,0(a0)
    80004978:	ffffd097          	auipc	ra,0xffffd
    8000497c:	f84080e7          	jalr	-124(ra) # 800018fc <_ZN6ThreadD1Ev>
    80004980:	00813083          	ld	ra,8(sp)
    80004984:	00013403          	ld	s0,0(sp)
    80004988:	01010113          	addi	sp,sp,16
    8000498c:	00008067          	ret

0000000080004990 <_ZN16ProducerKeyboardD0Ev>:
    80004990:	fe010113          	addi	sp,sp,-32
    80004994:	00113c23          	sd	ra,24(sp)
    80004998:	00813823          	sd	s0,16(sp)
    8000499c:	00913423          	sd	s1,8(sp)
    800049a0:	02010413          	addi	s0,sp,32
    800049a4:	00050493          	mv	s1,a0
    800049a8:	00006797          	auipc	a5,0x6
    800049ac:	a2078793          	addi	a5,a5,-1504 # 8000a3c8 <_ZTV16ProducerKeyboard+0x10>
    800049b0:	00f53023          	sd	a5,0(a0)
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	f48080e7          	jalr	-184(ra) # 800018fc <_ZN6ThreadD1Ev>
    800049bc:	00048513          	mv	a0,s1
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	fdc080e7          	jalr	-36(ra) # 8000199c <_ZdlPv>
    800049c8:	01813083          	ld	ra,24(sp)
    800049cc:	01013403          	ld	s0,16(sp)
    800049d0:	00813483          	ld	s1,8(sp)
    800049d4:	02010113          	addi	sp,sp,32
    800049d8:	00008067          	ret

00000000800049dc <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800049dc:	ff010113          	addi	sp,sp,-16
    800049e0:	00113423          	sd	ra,8(sp)
    800049e4:	00813023          	sd	s0,0(sp)
    800049e8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800049ec:	02053583          	ld	a1,32(a0)
    800049f0:	fffff097          	auipc	ra,0xfffff
    800049f4:	7e4080e7          	jalr	2020(ra) # 800041d4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800049f8:	00813083          	ld	ra,8(sp)
    800049fc:	00013403          	ld	s0,0(sp)
    80004a00:	01010113          	addi	sp,sp,16
    80004a04:	00008067          	ret

0000000080004a08 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004a08:	ff010113          	addi	sp,sp,-16
    80004a0c:	00113423          	sd	ra,8(sp)
    80004a10:	00813023          	sd	s0,0(sp)
    80004a14:	01010413          	addi	s0,sp,16
        producer(td);
    80004a18:	02053583          	ld	a1,32(a0)
    80004a1c:	00000097          	auipc	ra,0x0
    80004a20:	878080e7          	jalr	-1928(ra) # 80004294 <_ZN12ProducerSync8producerEPv>
    }
    80004a24:	00813083          	ld	ra,8(sp)
    80004a28:	00013403          	ld	s0,0(sp)
    80004a2c:	01010113          	addi	sp,sp,16
    80004a30:	00008067          	ret

0000000080004a34 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004a34:	ff010113          	addi	sp,sp,-16
    80004a38:	00113423          	sd	ra,8(sp)
    80004a3c:	00813023          	sd	s0,0(sp)
    80004a40:	01010413          	addi	s0,sp,16
        consumer(td);
    80004a44:	02053583          	ld	a1,32(a0)
    80004a48:	00000097          	auipc	ra,0x0
    80004a4c:	8e0080e7          	jalr	-1824(ra) # 80004328 <_ZN12ConsumerSync8consumerEPv>
    }
    80004a50:	00813083          	ld	ra,8(sp)
    80004a54:	00013403          	ld	s0,0(sp)
    80004a58:	01010113          	addi	sp,sp,16
    80004a5c:	00008067          	ret

0000000080004a60 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004a60:	fe010113          	addi	sp,sp,-32
    80004a64:	00113c23          	sd	ra,24(sp)
    80004a68:	00813823          	sd	s0,16(sp)
    80004a6c:	00913423          	sd	s1,8(sp)
    80004a70:	02010413          	addi	s0,sp,32
    80004a74:	00050493          	mv	s1,a0
    LOCK();
    80004a78:	00100613          	li	a2,1
    80004a7c:	00000593          	li	a1,0
    80004a80:	00006517          	auipc	a0,0x6
    80004a84:	ad850513          	addi	a0,a0,-1320 # 8000a558 <lockPrint>
    80004a88:	ffffc097          	auipc	ra,0xffffc
    80004a8c:	79c080e7          	jalr	1948(ra) # 80001224 <copy_and_swap>
    80004a90:	00050863          	beqz	a0,80004aa0 <_Z11printStringPKc+0x40>
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	940080e7          	jalr	-1728(ra) # 800013d4 <_Z15thread_dispatchv>
    80004a9c:	fddff06f          	j	80004a78 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004aa0:	0004c503          	lbu	a0,0(s1)
    80004aa4:	00050a63          	beqz	a0,80004ab8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	aa0080e7          	jalr	-1376(ra) # 80001548 <_Z4putcc>
        string++;
    80004ab0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004ab4:	fedff06f          	j	80004aa0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004ab8:	00000613          	li	a2,0
    80004abc:	00100593          	li	a1,1
    80004ac0:	00006517          	auipc	a0,0x6
    80004ac4:	a9850513          	addi	a0,a0,-1384 # 8000a558 <lockPrint>
    80004ac8:	ffffc097          	auipc	ra,0xffffc
    80004acc:	75c080e7          	jalr	1884(ra) # 80001224 <copy_and_swap>
    80004ad0:	fe0514e3          	bnez	a0,80004ab8 <_Z11printStringPKc+0x58>
}
    80004ad4:	01813083          	ld	ra,24(sp)
    80004ad8:	01013403          	ld	s0,16(sp)
    80004adc:	00813483          	ld	s1,8(sp)
    80004ae0:	02010113          	addi	sp,sp,32
    80004ae4:	00008067          	ret

0000000080004ae8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004ae8:	fd010113          	addi	sp,sp,-48
    80004aec:	02113423          	sd	ra,40(sp)
    80004af0:	02813023          	sd	s0,32(sp)
    80004af4:	00913c23          	sd	s1,24(sp)
    80004af8:	01213823          	sd	s2,16(sp)
    80004afc:	01313423          	sd	s3,8(sp)
    80004b00:	01413023          	sd	s4,0(sp)
    80004b04:	03010413          	addi	s0,sp,48
    80004b08:	00050993          	mv	s3,a0
    80004b0c:	00058a13          	mv	s4,a1
    LOCK();
    80004b10:	00100613          	li	a2,1
    80004b14:	00000593          	li	a1,0
    80004b18:	00006517          	auipc	a0,0x6
    80004b1c:	a4050513          	addi	a0,a0,-1472 # 8000a558 <lockPrint>
    80004b20:	ffffc097          	auipc	ra,0xffffc
    80004b24:	704080e7          	jalr	1796(ra) # 80001224 <copy_and_swap>
    80004b28:	00050863          	beqz	a0,80004b38 <_Z9getStringPci+0x50>
    80004b2c:	ffffd097          	auipc	ra,0xffffd
    80004b30:	8a8080e7          	jalr	-1880(ra) # 800013d4 <_Z15thread_dispatchv>
    80004b34:	fddff06f          	j	80004b10 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004b38:	00000913          	li	s2,0
    80004b3c:	00090493          	mv	s1,s2
    80004b40:	0019091b          	addiw	s2,s2,1
    80004b44:	03495a63          	bge	s2,s4,80004b78 <_Z9getStringPci+0x90>
        cc = getc();
    80004b48:	ffffd097          	auipc	ra,0xffffd
    80004b4c:	9cc080e7          	jalr	-1588(ra) # 80001514 <_Z4getcv>
        if(cc < 1)
    80004b50:	02050463          	beqz	a0,80004b78 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004b54:	009984b3          	add	s1,s3,s1
    80004b58:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004b5c:	00a00793          	li	a5,10
    80004b60:	00f50a63          	beq	a0,a5,80004b74 <_Z9getStringPci+0x8c>
    80004b64:	00d00793          	li	a5,13
    80004b68:	fcf51ae3          	bne	a0,a5,80004b3c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004b6c:	00090493          	mv	s1,s2
    80004b70:	0080006f          	j	80004b78 <_Z9getStringPci+0x90>
    80004b74:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004b78:	009984b3          	add	s1,s3,s1
    80004b7c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004b80:	00000613          	li	a2,0
    80004b84:	00100593          	li	a1,1
    80004b88:	00006517          	auipc	a0,0x6
    80004b8c:	9d050513          	addi	a0,a0,-1584 # 8000a558 <lockPrint>
    80004b90:	ffffc097          	auipc	ra,0xffffc
    80004b94:	694080e7          	jalr	1684(ra) # 80001224 <copy_and_swap>
    80004b98:	fe0514e3          	bnez	a0,80004b80 <_Z9getStringPci+0x98>
    return buf;
}
    80004b9c:	00098513          	mv	a0,s3
    80004ba0:	02813083          	ld	ra,40(sp)
    80004ba4:	02013403          	ld	s0,32(sp)
    80004ba8:	01813483          	ld	s1,24(sp)
    80004bac:	01013903          	ld	s2,16(sp)
    80004bb0:	00813983          	ld	s3,8(sp)
    80004bb4:	00013a03          	ld	s4,0(sp)
    80004bb8:	03010113          	addi	sp,sp,48
    80004bbc:	00008067          	ret

0000000080004bc0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004bc0:	ff010113          	addi	sp,sp,-16
    80004bc4:	00813423          	sd	s0,8(sp)
    80004bc8:	01010413          	addi	s0,sp,16
    80004bcc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004bd0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004bd4:	0006c603          	lbu	a2,0(a3)
    80004bd8:	fd06071b          	addiw	a4,a2,-48
    80004bdc:	0ff77713          	andi	a4,a4,255
    80004be0:	00900793          	li	a5,9
    80004be4:	02e7e063          	bltu	a5,a4,80004c04 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004be8:	0025179b          	slliw	a5,a0,0x2
    80004bec:	00a787bb          	addw	a5,a5,a0
    80004bf0:	0017979b          	slliw	a5,a5,0x1
    80004bf4:	00168693          	addi	a3,a3,1
    80004bf8:	00c787bb          	addw	a5,a5,a2
    80004bfc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004c00:	fd5ff06f          	j	80004bd4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004c04:	00813403          	ld	s0,8(sp)
    80004c08:	01010113          	addi	sp,sp,16
    80004c0c:	00008067          	ret

0000000080004c10 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004c10:	fc010113          	addi	sp,sp,-64
    80004c14:	02113c23          	sd	ra,56(sp)
    80004c18:	02813823          	sd	s0,48(sp)
    80004c1c:	02913423          	sd	s1,40(sp)
    80004c20:	03213023          	sd	s2,32(sp)
    80004c24:	01313c23          	sd	s3,24(sp)
    80004c28:	04010413          	addi	s0,sp,64
    80004c2c:	00050493          	mv	s1,a0
    80004c30:	00058913          	mv	s2,a1
    80004c34:	00060993          	mv	s3,a2
    LOCK();
    80004c38:	00100613          	li	a2,1
    80004c3c:	00000593          	li	a1,0
    80004c40:	00006517          	auipc	a0,0x6
    80004c44:	91850513          	addi	a0,a0,-1768 # 8000a558 <lockPrint>
    80004c48:	ffffc097          	auipc	ra,0xffffc
    80004c4c:	5dc080e7          	jalr	1500(ra) # 80001224 <copy_and_swap>
    80004c50:	00050863          	beqz	a0,80004c60 <_Z8printIntiii+0x50>
    80004c54:	ffffc097          	auipc	ra,0xffffc
    80004c58:	780080e7          	jalr	1920(ra) # 800013d4 <_Z15thread_dispatchv>
    80004c5c:	fddff06f          	j	80004c38 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004c60:	00098463          	beqz	s3,80004c68 <_Z8printIntiii+0x58>
    80004c64:	0804c463          	bltz	s1,80004cec <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004c68:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004c6c:	00000593          	li	a1,0
    }

    i = 0;
    80004c70:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004c74:	0009079b          	sext.w	a5,s2
    80004c78:	0325773b          	remuw	a4,a0,s2
    80004c7c:	00048613          	mv	a2,s1
    80004c80:	0014849b          	addiw	s1,s1,1
    80004c84:	02071693          	slli	a3,a4,0x20
    80004c88:	0206d693          	srli	a3,a3,0x20
    80004c8c:	00005717          	auipc	a4,0x5
    80004c90:	7a470713          	addi	a4,a4,1956 # 8000a430 <digits>
    80004c94:	00d70733          	add	a4,a4,a3
    80004c98:	00074683          	lbu	a3,0(a4)
    80004c9c:	fd040713          	addi	a4,s0,-48
    80004ca0:	00c70733          	add	a4,a4,a2
    80004ca4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004ca8:	0005071b          	sext.w	a4,a0
    80004cac:	0325553b          	divuw	a0,a0,s2
    80004cb0:	fcf772e3          	bgeu	a4,a5,80004c74 <_Z8printIntiii+0x64>
    if(neg)
    80004cb4:	00058c63          	beqz	a1,80004ccc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004cb8:	fd040793          	addi	a5,s0,-48
    80004cbc:	009784b3          	add	s1,a5,s1
    80004cc0:	02d00793          	li	a5,45
    80004cc4:	fef48823          	sb	a5,-16(s1)
    80004cc8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004ccc:	fff4849b          	addiw	s1,s1,-1
    80004cd0:	0204c463          	bltz	s1,80004cf8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004cd4:	fd040793          	addi	a5,s0,-48
    80004cd8:	009787b3          	add	a5,a5,s1
    80004cdc:	ff07c503          	lbu	a0,-16(a5)
    80004ce0:	ffffd097          	auipc	ra,0xffffd
    80004ce4:	868080e7          	jalr	-1944(ra) # 80001548 <_Z4putcc>
    80004ce8:	fe5ff06f          	j	80004ccc <_Z8printIntiii+0xbc>
        x = -xx;
    80004cec:	4090053b          	negw	a0,s1
        neg = 1;
    80004cf0:	00100593          	li	a1,1
        x = -xx;
    80004cf4:	f7dff06f          	j	80004c70 <_Z8printIntiii+0x60>

    UNLOCK();
    80004cf8:	00000613          	li	a2,0
    80004cfc:	00100593          	li	a1,1
    80004d00:	00006517          	auipc	a0,0x6
    80004d04:	85850513          	addi	a0,a0,-1960 # 8000a558 <lockPrint>
    80004d08:	ffffc097          	auipc	ra,0xffffc
    80004d0c:	51c080e7          	jalr	1308(ra) # 80001224 <copy_and_swap>
    80004d10:	fe0514e3          	bnez	a0,80004cf8 <_Z8printIntiii+0xe8>
    80004d14:	03813083          	ld	ra,56(sp)
    80004d18:	03013403          	ld	s0,48(sp)
    80004d1c:	02813483          	ld	s1,40(sp)
    80004d20:	02013903          	ld	s2,32(sp)
    80004d24:	01813983          	ld	s3,24(sp)
    80004d28:	04010113          	addi	sp,sp,64
    80004d2c:	00008067          	ret

0000000080004d30 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004d30:	fd010113          	addi	sp,sp,-48
    80004d34:	02113423          	sd	ra,40(sp)
    80004d38:	02813023          	sd	s0,32(sp)
    80004d3c:	00913c23          	sd	s1,24(sp)
    80004d40:	01213823          	sd	s2,16(sp)
    80004d44:	01313423          	sd	s3,8(sp)
    80004d48:	03010413          	addi	s0,sp,48
    80004d4c:	00050493          	mv	s1,a0
    80004d50:	00058913          	mv	s2,a1
    80004d54:	0015879b          	addiw	a5,a1,1
    80004d58:	0007851b          	sext.w	a0,a5
    80004d5c:	00f4a023          	sw	a5,0(s1)
    80004d60:	0004a823          	sw	zero,16(s1)
    80004d64:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004d68:	00251513          	slli	a0,a0,0x2
    80004d6c:	ffffc097          	auipc	ra,0xffffc
    80004d70:	4d8080e7          	jalr	1240(ra) # 80001244 <_Z9mem_allocm>
    80004d74:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004d78:	01000513          	li	a0,16
    80004d7c:	ffffd097          	auipc	ra,0xffffd
    80004d80:	bd0080e7          	jalr	-1072(ra) # 8000194c <_Znwm>
    80004d84:	00050993          	mv	s3,a0
    80004d88:	00000593          	li	a1,0
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	e08080e7          	jalr	-504(ra) # 80001b94 <_ZN9SemaphoreC1Ej>
    80004d94:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004d98:	01000513          	li	a0,16
    80004d9c:	ffffd097          	auipc	ra,0xffffd
    80004da0:	bb0080e7          	jalr	-1104(ra) # 8000194c <_Znwm>
    80004da4:	00050993          	mv	s3,a0
    80004da8:	00090593          	mv	a1,s2
    80004dac:	ffffd097          	auipc	ra,0xffffd
    80004db0:	de8080e7          	jalr	-536(ra) # 80001b94 <_ZN9SemaphoreC1Ej>
    80004db4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004db8:	01000513          	li	a0,16
    80004dbc:	ffffd097          	auipc	ra,0xffffd
    80004dc0:	b90080e7          	jalr	-1136(ra) # 8000194c <_Znwm>
    80004dc4:	00050913          	mv	s2,a0
    80004dc8:	00100593          	li	a1,1
    80004dcc:	ffffd097          	auipc	ra,0xffffd
    80004dd0:	dc8080e7          	jalr	-568(ra) # 80001b94 <_ZN9SemaphoreC1Ej>
    80004dd4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004dd8:	01000513          	li	a0,16
    80004ddc:	ffffd097          	auipc	ra,0xffffd
    80004de0:	b70080e7          	jalr	-1168(ra) # 8000194c <_Znwm>
    80004de4:	00050913          	mv	s2,a0
    80004de8:	00100593          	li	a1,1
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	da8080e7          	jalr	-600(ra) # 80001b94 <_ZN9SemaphoreC1Ej>
    80004df4:	0324b823          	sd	s2,48(s1)
}
    80004df8:	02813083          	ld	ra,40(sp)
    80004dfc:	02013403          	ld	s0,32(sp)
    80004e00:	01813483          	ld	s1,24(sp)
    80004e04:	01013903          	ld	s2,16(sp)
    80004e08:	00813983          	ld	s3,8(sp)
    80004e0c:	03010113          	addi	sp,sp,48
    80004e10:	00008067          	ret
    80004e14:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004e18:	00098513          	mv	a0,s3
    80004e1c:	ffffd097          	auipc	ra,0xffffd
    80004e20:	b80080e7          	jalr	-1152(ra) # 8000199c <_ZdlPv>
    80004e24:	00048513          	mv	a0,s1
    80004e28:	00007097          	auipc	ra,0x7
    80004e2c:	810080e7          	jalr	-2032(ra) # 8000b638 <_Unwind_Resume>
    80004e30:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004e34:	00098513          	mv	a0,s3
    80004e38:	ffffd097          	auipc	ra,0xffffd
    80004e3c:	b64080e7          	jalr	-1180(ra) # 8000199c <_ZdlPv>
    80004e40:	00048513          	mv	a0,s1
    80004e44:	00006097          	auipc	ra,0x6
    80004e48:	7f4080e7          	jalr	2036(ra) # 8000b638 <_Unwind_Resume>
    80004e4c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004e50:	00090513          	mv	a0,s2
    80004e54:	ffffd097          	auipc	ra,0xffffd
    80004e58:	b48080e7          	jalr	-1208(ra) # 8000199c <_ZdlPv>
    80004e5c:	00048513          	mv	a0,s1
    80004e60:	00006097          	auipc	ra,0x6
    80004e64:	7d8080e7          	jalr	2008(ra) # 8000b638 <_Unwind_Resume>
    80004e68:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004e6c:	00090513          	mv	a0,s2
    80004e70:	ffffd097          	auipc	ra,0xffffd
    80004e74:	b2c080e7          	jalr	-1236(ra) # 8000199c <_ZdlPv>
    80004e78:	00048513          	mv	a0,s1
    80004e7c:	00006097          	auipc	ra,0x6
    80004e80:	7bc080e7          	jalr	1980(ra) # 8000b638 <_Unwind_Resume>

0000000080004e84 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004e84:	fe010113          	addi	sp,sp,-32
    80004e88:	00113c23          	sd	ra,24(sp)
    80004e8c:	00813823          	sd	s0,16(sp)
    80004e90:	00913423          	sd	s1,8(sp)
    80004e94:	01213023          	sd	s2,0(sp)
    80004e98:	02010413          	addi	s0,sp,32
    80004e9c:	00050493          	mv	s1,a0
    80004ea0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004ea4:	01853503          	ld	a0,24(a0)
    80004ea8:	ffffd097          	auipc	ra,0xffffd
    80004eac:	d28080e7          	jalr	-728(ra) # 80001bd0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004eb0:	0304b503          	ld	a0,48(s1)
    80004eb4:	ffffd097          	auipc	ra,0xffffd
    80004eb8:	d1c080e7          	jalr	-740(ra) # 80001bd0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004ebc:	0084b783          	ld	a5,8(s1)
    80004ec0:	0144a703          	lw	a4,20(s1)
    80004ec4:	00271713          	slli	a4,a4,0x2
    80004ec8:	00e787b3          	add	a5,a5,a4
    80004ecc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004ed0:	0144a783          	lw	a5,20(s1)
    80004ed4:	0017879b          	addiw	a5,a5,1
    80004ed8:	0004a703          	lw	a4,0(s1)
    80004edc:	02e7e7bb          	remw	a5,a5,a4
    80004ee0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004ee4:	0304b503          	ld	a0,48(s1)
    80004ee8:	ffffd097          	auipc	ra,0xffffd
    80004eec:	d14080e7          	jalr	-748(ra) # 80001bfc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004ef0:	0204b503          	ld	a0,32(s1)
    80004ef4:	ffffd097          	auipc	ra,0xffffd
    80004ef8:	d08080e7          	jalr	-760(ra) # 80001bfc <_ZN9Semaphore6signalEv>

}
    80004efc:	01813083          	ld	ra,24(sp)
    80004f00:	01013403          	ld	s0,16(sp)
    80004f04:	00813483          	ld	s1,8(sp)
    80004f08:	00013903          	ld	s2,0(sp)
    80004f0c:	02010113          	addi	sp,sp,32
    80004f10:	00008067          	ret

0000000080004f14 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004f14:	fe010113          	addi	sp,sp,-32
    80004f18:	00113c23          	sd	ra,24(sp)
    80004f1c:	00813823          	sd	s0,16(sp)
    80004f20:	00913423          	sd	s1,8(sp)
    80004f24:	01213023          	sd	s2,0(sp)
    80004f28:	02010413          	addi	s0,sp,32
    80004f2c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004f30:	02053503          	ld	a0,32(a0)
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	c9c080e7          	jalr	-868(ra) # 80001bd0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004f3c:	0284b503          	ld	a0,40(s1)
    80004f40:	ffffd097          	auipc	ra,0xffffd
    80004f44:	c90080e7          	jalr	-880(ra) # 80001bd0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004f48:	0084b703          	ld	a4,8(s1)
    80004f4c:	0104a783          	lw	a5,16(s1)
    80004f50:	00279693          	slli	a3,a5,0x2
    80004f54:	00d70733          	add	a4,a4,a3
    80004f58:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004f5c:	0017879b          	addiw	a5,a5,1
    80004f60:	0004a703          	lw	a4,0(s1)
    80004f64:	02e7e7bb          	remw	a5,a5,a4
    80004f68:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004f6c:	0284b503          	ld	a0,40(s1)
    80004f70:	ffffd097          	auipc	ra,0xffffd
    80004f74:	c8c080e7          	jalr	-884(ra) # 80001bfc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004f78:	0184b503          	ld	a0,24(s1)
    80004f7c:	ffffd097          	auipc	ra,0xffffd
    80004f80:	c80080e7          	jalr	-896(ra) # 80001bfc <_ZN9Semaphore6signalEv>

    return ret;
}
    80004f84:	00090513          	mv	a0,s2
    80004f88:	01813083          	ld	ra,24(sp)
    80004f8c:	01013403          	ld	s0,16(sp)
    80004f90:	00813483          	ld	s1,8(sp)
    80004f94:	00013903          	ld	s2,0(sp)
    80004f98:	02010113          	addi	sp,sp,32
    80004f9c:	00008067          	ret

0000000080004fa0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004fa0:	fe010113          	addi	sp,sp,-32
    80004fa4:	00113c23          	sd	ra,24(sp)
    80004fa8:	00813823          	sd	s0,16(sp)
    80004fac:	00913423          	sd	s1,8(sp)
    80004fb0:	01213023          	sd	s2,0(sp)
    80004fb4:	02010413          	addi	s0,sp,32
    80004fb8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004fbc:	02853503          	ld	a0,40(a0)
    80004fc0:	ffffd097          	auipc	ra,0xffffd
    80004fc4:	c10080e7          	jalr	-1008(ra) # 80001bd0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004fc8:	0304b503          	ld	a0,48(s1)
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	c04080e7          	jalr	-1020(ra) # 80001bd0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004fd4:	0144a783          	lw	a5,20(s1)
    80004fd8:	0104a903          	lw	s2,16(s1)
    80004fdc:	0327ce63          	blt	a5,s2,80005018 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004fe0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004fe4:	0304b503          	ld	a0,48(s1)
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	c14080e7          	jalr	-1004(ra) # 80001bfc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004ff0:	0284b503          	ld	a0,40(s1)
    80004ff4:	ffffd097          	auipc	ra,0xffffd
    80004ff8:	c08080e7          	jalr	-1016(ra) # 80001bfc <_ZN9Semaphore6signalEv>

    return ret;
}
    80004ffc:	00090513          	mv	a0,s2
    80005000:	01813083          	ld	ra,24(sp)
    80005004:	01013403          	ld	s0,16(sp)
    80005008:	00813483          	ld	s1,8(sp)
    8000500c:	00013903          	ld	s2,0(sp)
    80005010:	02010113          	addi	sp,sp,32
    80005014:	00008067          	ret
        ret = cap - head + tail;
    80005018:	0004a703          	lw	a4,0(s1)
    8000501c:	4127093b          	subw	s2,a4,s2
    80005020:	00f9093b          	addw	s2,s2,a5
    80005024:	fc1ff06f          	j	80004fe4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005028 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005028:	fe010113          	addi	sp,sp,-32
    8000502c:	00113c23          	sd	ra,24(sp)
    80005030:	00813823          	sd	s0,16(sp)
    80005034:	00913423          	sd	s1,8(sp)
    80005038:	02010413          	addi	s0,sp,32
    8000503c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005040:	00a00513          	li	a0,10
    80005044:	ffffd097          	auipc	ra,0xffffd
    80005048:	c78080e7          	jalr	-904(ra) # 80001cbc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000504c:	00003517          	auipc	a0,0x3
    80005050:	30450513          	addi	a0,a0,772 # 80008350 <CONSOLE_STATUS+0x340>
    80005054:	00000097          	auipc	ra,0x0
    80005058:	a0c080e7          	jalr	-1524(ra) # 80004a60 <_Z11printStringPKc>
    while (getCnt()) {
    8000505c:	00048513          	mv	a0,s1
    80005060:	00000097          	auipc	ra,0x0
    80005064:	f40080e7          	jalr	-192(ra) # 80004fa0 <_ZN9BufferCPP6getCntEv>
    80005068:	02050c63          	beqz	a0,800050a0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000506c:	0084b783          	ld	a5,8(s1)
    80005070:	0104a703          	lw	a4,16(s1)
    80005074:	00271713          	slli	a4,a4,0x2
    80005078:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000507c:	0007c503          	lbu	a0,0(a5)
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	c3c080e7          	jalr	-964(ra) # 80001cbc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005088:	0104a783          	lw	a5,16(s1)
    8000508c:	0017879b          	addiw	a5,a5,1
    80005090:	0004a703          	lw	a4,0(s1)
    80005094:	02e7e7bb          	remw	a5,a5,a4
    80005098:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000509c:	fc1ff06f          	j	8000505c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800050a0:	02100513          	li	a0,33
    800050a4:	ffffd097          	auipc	ra,0xffffd
    800050a8:	c18080e7          	jalr	-1000(ra) # 80001cbc <_ZN7Console4putcEc>
    Console::putc('\n');
    800050ac:	00a00513          	li	a0,10
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	c0c080e7          	jalr	-1012(ra) # 80001cbc <_ZN7Console4putcEc>
    mem_free(buffer);
    800050b8:	0084b503          	ld	a0,8(s1)
    800050bc:	ffffc097          	auipc	ra,0xffffc
    800050c0:	1c4080e7          	jalr	452(ra) # 80001280 <_Z8mem_freePv>
    delete itemAvailable;
    800050c4:	0204b503          	ld	a0,32(s1)
    800050c8:	00050863          	beqz	a0,800050d8 <_ZN9BufferCPPD1Ev+0xb0>
    800050cc:	00053783          	ld	a5,0(a0)
    800050d0:	0087b783          	ld	a5,8(a5)
    800050d4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800050d8:	0184b503          	ld	a0,24(s1)
    800050dc:	00050863          	beqz	a0,800050ec <_ZN9BufferCPPD1Ev+0xc4>
    800050e0:	00053783          	ld	a5,0(a0)
    800050e4:	0087b783          	ld	a5,8(a5)
    800050e8:	000780e7          	jalr	a5
    delete mutexTail;
    800050ec:	0304b503          	ld	a0,48(s1)
    800050f0:	00050863          	beqz	a0,80005100 <_ZN9BufferCPPD1Ev+0xd8>
    800050f4:	00053783          	ld	a5,0(a0)
    800050f8:	0087b783          	ld	a5,8(a5)
    800050fc:	000780e7          	jalr	a5
    delete mutexHead;
    80005100:	0284b503          	ld	a0,40(s1)
    80005104:	00050863          	beqz	a0,80005114 <_ZN9BufferCPPD1Ev+0xec>
    80005108:	00053783          	ld	a5,0(a0)
    8000510c:	0087b783          	ld	a5,8(a5)
    80005110:	000780e7          	jalr	a5
}
    80005114:	01813083          	ld	ra,24(sp)
    80005118:	01013403          	ld	s0,16(sp)
    8000511c:	00813483          	ld	s1,8(sp)
    80005120:	02010113          	addi	sp,sp,32
    80005124:	00008067          	ret

0000000080005128 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005128:	fe010113          	addi	sp,sp,-32
    8000512c:	00113c23          	sd	ra,24(sp)
    80005130:	00813823          	sd	s0,16(sp)
    80005134:	00913423          	sd	s1,8(sp)
    80005138:	01213023          	sd	s2,0(sp)
    8000513c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005140:	00003517          	auipc	a0,0x3
    80005144:	22850513          	addi	a0,a0,552 # 80008368 <CONSOLE_STATUS+0x358>
    80005148:	00000097          	auipc	ra,0x0
    8000514c:	918080e7          	jalr	-1768(ra) # 80004a60 <_Z11printStringPKc>
    int test = getc() - '0';
    80005150:	ffffc097          	auipc	ra,0xffffc
    80005154:	3c4080e7          	jalr	964(ra) # 80001514 <_Z4getcv>
    80005158:	0005091b          	sext.w	s2,a0
    8000515c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	3b4080e7          	jalr	948(ra) # 80001514 <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80005168:	fcd9071b          	addiw	a4,s2,-51
    8000516c:	00100793          	li	a5,1
    80005170:	04e7f663          	bgeu	a5,a4,800051bc <_Z8userMainv+0x94>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80005174:	fcb9091b          	addiw	s2,s2,-53
    80005178:	00100793          	li	a5,1
    8000517c:	0727f463          	bgeu	a5,s2,800051e4 <_Z8userMainv+0xbc>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005180:	00600793          	li	a5,6
    80005184:	0697ca63          	blt	a5,s1,800051f8 <_Z8userMainv+0xd0>
    80005188:	00300793          	li	a5,3
    8000518c:	04f4d063          	bge	s1,a5,800051cc <_Z8userMainv+0xa4>
    80005190:	00100793          	li	a5,1
    80005194:	08f48c63          	beq	s1,a5,8000522c <_Z8userMainv+0x104>
    80005198:	00200793          	li	a5,2
    8000519c:	0af49663          	bne	s1,a5,80005248 <_Z8userMainv+0x120>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
    800051a0:	ffffe097          	auipc	ra,0xffffe
    800051a4:	e18080e7          	jalr	-488(ra) # 80002fb8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800051a8:	00003517          	auipc	a0,0x3
    800051ac:	28050513          	addi	a0,a0,640 # 80008428 <CONSOLE_STATUS+0x418>
    800051b0:	00000097          	auipc	ra,0x0
    800051b4:	8b0080e7          	jalr	-1872(ra) # 80004a60 <_Z11printStringPKc>
#endif
            break;
    800051b8:	0140006f          	j	800051cc <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    800051bc:	00003517          	auipc	a0,0x3
    800051c0:	1cc50513          	addi	a0,a0,460 # 80008388 <CONSOLE_STATUS+0x378>
    800051c4:	00000097          	auipc	ra,0x0
    800051c8:	89c080e7          	jalr	-1892(ra) # 80004a60 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800051cc:	01813083          	ld	ra,24(sp)
    800051d0:	01013403          	ld	s0,16(sp)
    800051d4:	00813483          	ld	s1,8(sp)
    800051d8:	00013903          	ld	s2,0(sp)
    800051dc:	02010113          	addi	sp,sp,32
    800051e0:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800051e4:	00003517          	auipc	a0,0x3
    800051e8:	1d450513          	addi	a0,a0,468 # 800083b8 <CONSOLE_STATUS+0x3a8>
    800051ec:	00000097          	auipc	ra,0x0
    800051f0:	874080e7          	jalr	-1932(ra) # 80004a60 <_Z11printStringPKc>
            return;
    800051f4:	fd9ff06f          	j	800051cc <_Z8userMainv+0xa4>
    switch (test) {
    800051f8:	00700793          	li	a5,7
    800051fc:	04f49663          	bne	s1,a5,80005248 <_Z8userMainv+0x120>
            System_Mode_test();
    80005200:	00000097          	auipc	ra,0x0
    80005204:	674080e7          	jalr	1652(ra) # 80005874 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005208:	00003517          	auipc	a0,0x3
    8000520c:	26050513          	addi	a0,a0,608 # 80008468 <CONSOLE_STATUS+0x458>
    80005210:	00000097          	auipc	ra,0x0
    80005214:	850080e7          	jalr	-1968(ra) # 80004a60 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005218:	00003517          	auipc	a0,0x3
    8000521c:	27050513          	addi	a0,a0,624 # 80008488 <CONSOLE_STATUS+0x478>
    80005220:	00000097          	auipc	ra,0x0
    80005224:	840080e7          	jalr	-1984(ra) # 80004a60 <_Z11printStringPKc>
            break;
    80005228:	fa5ff06f          	j	800051cc <_Z8userMainv+0xa4>
            Threads_C_API_test();
    8000522c:	fffff097          	auipc	ra,0xfffff
    80005230:	eac080e7          	jalr	-340(ra) # 800040d8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005234:	00003517          	auipc	a0,0x3
    80005238:	1b450513          	addi	a0,a0,436 # 800083e8 <CONSOLE_STATUS+0x3d8>
    8000523c:	00000097          	auipc	ra,0x0
    80005240:	824080e7          	jalr	-2012(ra) # 80004a60 <_Z11printStringPKc>
            break;
    80005244:	f89ff06f          	j	800051cc <_Z8userMainv+0xa4>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005248:	00003517          	auipc	a0,0x3
    8000524c:	29850513          	addi	a0,a0,664 # 800084e0 <CONSOLE_STATUS+0x4d0>
    80005250:	00000097          	auipc	ra,0x0
    80005254:	810080e7          	jalr	-2032(ra) # 80004a60 <_Z11printStringPKc>
    80005258:	f75ff06f          	j	800051cc <_Z8userMainv+0xa4>

000000008000525c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000525c:	fe010113          	addi	sp,sp,-32
    80005260:	00113c23          	sd	ra,24(sp)
    80005264:	00813823          	sd	s0,16(sp)
    80005268:	00913423          	sd	s1,8(sp)
    8000526c:	01213023          	sd	s2,0(sp)
    80005270:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005274:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005278:	00600493          	li	s1,6
    while (--i > 0) {
    8000527c:	fff4849b          	addiw	s1,s1,-1
    80005280:	04905463          	blez	s1,800052c8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005284:	00003517          	auipc	a0,0x3
    80005288:	28450513          	addi	a0,a0,644 # 80008508 <CONSOLE_STATUS+0x4f8>
    8000528c:	fffff097          	auipc	ra,0xfffff
    80005290:	7d4080e7          	jalr	2004(ra) # 80004a60 <_Z11printStringPKc>
        printInt(sleep_time);
    80005294:	00000613          	li	a2,0
    80005298:	00a00593          	li	a1,10
    8000529c:	0009051b          	sext.w	a0,s2
    800052a0:	00000097          	auipc	ra,0x0
    800052a4:	970080e7          	jalr	-1680(ra) # 80004c10 <_Z8printIntiii>
        printString(" !\n");
    800052a8:	00003517          	auipc	a0,0x3
    800052ac:	26850513          	addi	a0,a0,616 # 80008510 <CONSOLE_STATUS+0x500>
    800052b0:	fffff097          	auipc	ra,0xfffff
    800052b4:	7b0080e7          	jalr	1968(ra) # 80004a60 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800052b8:	00090513          	mv	a0,s2
    800052bc:	ffffc097          	auipc	ra,0xffffc
    800052c0:	220080e7          	jalr	544(ra) # 800014dc <_Z10time_sleepm>
    while (--i > 0) {
    800052c4:	fb9ff06f          	j	8000527c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800052c8:	00a00793          	li	a5,10
    800052cc:	02f95933          	divu	s2,s2,a5
    800052d0:	fff90913          	addi	s2,s2,-1
    800052d4:	00005797          	auipc	a5,0x5
    800052d8:	28c78793          	addi	a5,a5,652 # 8000a560 <_ZL8finished>
    800052dc:	01278933          	add	s2,a5,s2
    800052e0:	00100793          	li	a5,1
    800052e4:	00f90023          	sb	a5,0(s2)
}
    800052e8:	01813083          	ld	ra,24(sp)
    800052ec:	01013403          	ld	s0,16(sp)
    800052f0:	00813483          	ld	s1,8(sp)
    800052f4:	00013903          	ld	s2,0(sp)
    800052f8:	02010113          	addi	sp,sp,32
    800052fc:	00008067          	ret

0000000080005300 <_Z12testSleepingv>:

void testSleeping() {
    80005300:	fc010113          	addi	sp,sp,-64
    80005304:	02113c23          	sd	ra,56(sp)
    80005308:	02813823          	sd	s0,48(sp)
    8000530c:	02913423          	sd	s1,40(sp)
    80005310:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005314:	00a00793          	li	a5,10
    80005318:	fcf43823          	sd	a5,-48(s0)
    8000531c:	01400793          	li	a5,20
    80005320:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005324:	00000493          	li	s1,0
    80005328:	02c0006f          	j	80005354 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000532c:	00349793          	slli	a5,s1,0x3
    80005330:	fd040613          	addi	a2,s0,-48
    80005334:	00f60633          	add	a2,a2,a5
    80005338:	00000597          	auipc	a1,0x0
    8000533c:	f2458593          	addi	a1,a1,-220 # 8000525c <_ZL9sleepyRunPv>
    80005340:	fc040513          	addi	a0,s0,-64
    80005344:	00f50533          	add	a0,a0,a5
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	fd0080e7          	jalr	-48(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005350:	0014849b          	addiw	s1,s1,1
    80005354:	00100793          	li	a5,1
    80005358:	fc97dae3          	bge	a5,s1,8000532c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000535c:	00005797          	auipc	a5,0x5
    80005360:	2047c783          	lbu	a5,516(a5) # 8000a560 <_ZL8finished>
    80005364:	fe078ce3          	beqz	a5,8000535c <_Z12testSleepingv+0x5c>
    80005368:	00005797          	auipc	a5,0x5
    8000536c:	1f97c783          	lbu	a5,505(a5) # 8000a561 <_ZL8finished+0x1>
    80005370:	fe0786e3          	beqz	a5,8000535c <_Z12testSleepingv+0x5c>
}
    80005374:	03813083          	ld	ra,56(sp)
    80005378:	03013403          	ld	s0,48(sp)
    8000537c:	02813483          	ld	s1,40(sp)
    80005380:	04010113          	addi	sp,sp,64
    80005384:	00008067          	ret

0000000080005388 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005388:	fe010113          	addi	sp,sp,-32
    8000538c:	00113c23          	sd	ra,24(sp)
    80005390:	00813823          	sd	s0,16(sp)
    80005394:	00913423          	sd	s1,8(sp)
    80005398:	01213023          	sd	s2,0(sp)
    8000539c:	02010413          	addi	s0,sp,32
    800053a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800053a4:	00100793          	li	a5,1
    800053a8:	02a7f863          	bgeu	a5,a0,800053d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800053ac:	00a00793          	li	a5,10
    800053b0:	02f577b3          	remu	a5,a0,a5
    800053b4:	02078e63          	beqz	a5,800053f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800053b8:	fff48513          	addi	a0,s1,-1
    800053bc:	00000097          	auipc	ra,0x0
    800053c0:	fcc080e7          	jalr	-52(ra) # 80005388 <_ZL9fibonaccim>
    800053c4:	00050913          	mv	s2,a0
    800053c8:	ffe48513          	addi	a0,s1,-2
    800053cc:	00000097          	auipc	ra,0x0
    800053d0:	fbc080e7          	jalr	-68(ra) # 80005388 <_ZL9fibonaccim>
    800053d4:	00a90533          	add	a0,s2,a0
}
    800053d8:	01813083          	ld	ra,24(sp)
    800053dc:	01013403          	ld	s0,16(sp)
    800053e0:	00813483          	ld	s1,8(sp)
    800053e4:	00013903          	ld	s2,0(sp)
    800053e8:	02010113          	addi	sp,sp,32
    800053ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800053f0:	ffffc097          	auipc	ra,0xffffc
    800053f4:	fe4080e7          	jalr	-28(ra) # 800013d4 <_Z15thread_dispatchv>
    800053f8:	fc1ff06f          	j	800053b8 <_ZL9fibonaccim+0x30>

00000000800053fc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800053fc:	fe010113          	addi	sp,sp,-32
    80005400:	00113c23          	sd	ra,24(sp)
    80005404:	00813823          	sd	s0,16(sp)
    80005408:	00913423          	sd	s1,8(sp)
    8000540c:	01213023          	sd	s2,0(sp)
    80005410:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005414:	00a00493          	li	s1,10
    80005418:	0400006f          	j	80005458 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000541c:	00003517          	auipc	a0,0x3
    80005420:	e9c50513          	addi	a0,a0,-356 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80005424:	fffff097          	auipc	ra,0xfffff
    80005428:	63c080e7          	jalr	1596(ra) # 80004a60 <_Z11printStringPKc>
    8000542c:	00000613          	li	a2,0
    80005430:	00a00593          	li	a1,10
    80005434:	00048513          	mv	a0,s1
    80005438:	fffff097          	auipc	ra,0xfffff
    8000543c:	7d8080e7          	jalr	2008(ra) # 80004c10 <_Z8printIntiii>
    80005440:	00003517          	auipc	a0,0x3
    80005444:	d6850513          	addi	a0,a0,-664 # 800081a8 <CONSOLE_STATUS+0x198>
    80005448:	fffff097          	auipc	ra,0xfffff
    8000544c:	618080e7          	jalr	1560(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005450:	0014849b          	addiw	s1,s1,1
    80005454:	0ff4f493          	andi	s1,s1,255
    80005458:	00c00793          	li	a5,12
    8000545c:	fc97f0e3          	bgeu	a5,s1,8000541c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005460:	00003517          	auipc	a0,0x3
    80005464:	e6050513          	addi	a0,a0,-416 # 800082c0 <CONSOLE_STATUS+0x2b0>
    80005468:	fffff097          	auipc	ra,0xfffff
    8000546c:	5f8080e7          	jalr	1528(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005470:	00500313          	li	t1,5
    thread_dispatch();
    80005474:	ffffc097          	auipc	ra,0xffffc
    80005478:	f60080e7          	jalr	-160(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000547c:	01000513          	li	a0,16
    80005480:	00000097          	auipc	ra,0x0
    80005484:	f08080e7          	jalr	-248(ra) # 80005388 <_ZL9fibonaccim>
    80005488:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000548c:	00003517          	auipc	a0,0x3
    80005490:	e4450513          	addi	a0,a0,-444 # 800082d0 <CONSOLE_STATUS+0x2c0>
    80005494:	fffff097          	auipc	ra,0xfffff
    80005498:	5cc080e7          	jalr	1484(ra) # 80004a60 <_Z11printStringPKc>
    8000549c:	00000613          	li	a2,0
    800054a0:	00a00593          	li	a1,10
    800054a4:	0009051b          	sext.w	a0,s2
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	768080e7          	jalr	1896(ra) # 80004c10 <_Z8printIntiii>
    800054b0:	00003517          	auipc	a0,0x3
    800054b4:	cf850513          	addi	a0,a0,-776 # 800081a8 <CONSOLE_STATUS+0x198>
    800054b8:	fffff097          	auipc	ra,0xfffff
    800054bc:	5a8080e7          	jalr	1448(ra) # 80004a60 <_Z11printStringPKc>
    800054c0:	0400006f          	j	80005500 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800054c4:	00003517          	auipc	a0,0x3
    800054c8:	df450513          	addi	a0,a0,-524 # 800082b8 <CONSOLE_STATUS+0x2a8>
    800054cc:	fffff097          	auipc	ra,0xfffff
    800054d0:	594080e7          	jalr	1428(ra) # 80004a60 <_Z11printStringPKc>
    800054d4:	00000613          	li	a2,0
    800054d8:	00a00593          	li	a1,10
    800054dc:	00048513          	mv	a0,s1
    800054e0:	fffff097          	auipc	ra,0xfffff
    800054e4:	730080e7          	jalr	1840(ra) # 80004c10 <_Z8printIntiii>
    800054e8:	00003517          	auipc	a0,0x3
    800054ec:	cc050513          	addi	a0,a0,-832 # 800081a8 <CONSOLE_STATUS+0x198>
    800054f0:	fffff097          	auipc	ra,0xfffff
    800054f4:	570080e7          	jalr	1392(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800054f8:	0014849b          	addiw	s1,s1,1
    800054fc:	0ff4f493          	andi	s1,s1,255
    80005500:	00f00793          	li	a5,15
    80005504:	fc97f0e3          	bgeu	a5,s1,800054c4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005508:	00003517          	auipc	a0,0x3
    8000550c:	dd850513          	addi	a0,a0,-552 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80005510:	fffff097          	auipc	ra,0xfffff
    80005514:	550080e7          	jalr	1360(ra) # 80004a60 <_Z11printStringPKc>
    finishedD = true;
    80005518:	00100793          	li	a5,1
    8000551c:	00005717          	auipc	a4,0x5
    80005520:	04f70323          	sb	a5,70(a4) # 8000a562 <_ZL9finishedD>
    thread_dispatch();
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	eb0080e7          	jalr	-336(ra) # 800013d4 <_Z15thread_dispatchv>
}
    8000552c:	01813083          	ld	ra,24(sp)
    80005530:	01013403          	ld	s0,16(sp)
    80005534:	00813483          	ld	s1,8(sp)
    80005538:	00013903          	ld	s2,0(sp)
    8000553c:	02010113          	addi	sp,sp,32
    80005540:	00008067          	ret

0000000080005544 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005544:	fe010113          	addi	sp,sp,-32
    80005548:	00113c23          	sd	ra,24(sp)
    8000554c:	00813823          	sd	s0,16(sp)
    80005550:	00913423          	sd	s1,8(sp)
    80005554:	01213023          	sd	s2,0(sp)
    80005558:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000555c:	00000493          	li	s1,0
    80005560:	0400006f          	j	800055a0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005564:	00003517          	auipc	a0,0x3
    80005568:	d2450513          	addi	a0,a0,-732 # 80008288 <CONSOLE_STATUS+0x278>
    8000556c:	fffff097          	auipc	ra,0xfffff
    80005570:	4f4080e7          	jalr	1268(ra) # 80004a60 <_Z11printStringPKc>
    80005574:	00000613          	li	a2,0
    80005578:	00a00593          	li	a1,10
    8000557c:	00048513          	mv	a0,s1
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	690080e7          	jalr	1680(ra) # 80004c10 <_Z8printIntiii>
    80005588:	00003517          	auipc	a0,0x3
    8000558c:	c2050513          	addi	a0,a0,-992 # 800081a8 <CONSOLE_STATUS+0x198>
    80005590:	fffff097          	auipc	ra,0xfffff
    80005594:	4d0080e7          	jalr	1232(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005598:	0014849b          	addiw	s1,s1,1
    8000559c:	0ff4f493          	andi	s1,s1,255
    800055a0:	00200793          	li	a5,2
    800055a4:	fc97f0e3          	bgeu	a5,s1,80005564 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800055a8:	00003517          	auipc	a0,0x3
    800055ac:	ce850513          	addi	a0,a0,-792 # 80008290 <CONSOLE_STATUS+0x280>
    800055b0:	fffff097          	auipc	ra,0xfffff
    800055b4:	4b0080e7          	jalr	1200(ra) # 80004a60 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800055b8:	00700313          	li	t1,7
    thread_dispatch();
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	e18080e7          	jalr	-488(ra) # 800013d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800055c4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800055c8:	00003517          	auipc	a0,0x3
    800055cc:	cd850513          	addi	a0,a0,-808 # 800082a0 <CONSOLE_STATUS+0x290>
    800055d0:	fffff097          	auipc	ra,0xfffff
    800055d4:	490080e7          	jalr	1168(ra) # 80004a60 <_Z11printStringPKc>
    800055d8:	00000613          	li	a2,0
    800055dc:	00a00593          	li	a1,10
    800055e0:	0009051b          	sext.w	a0,s2
    800055e4:	fffff097          	auipc	ra,0xfffff
    800055e8:	62c080e7          	jalr	1580(ra) # 80004c10 <_Z8printIntiii>
    800055ec:	00003517          	auipc	a0,0x3
    800055f0:	bbc50513          	addi	a0,a0,-1092 # 800081a8 <CONSOLE_STATUS+0x198>
    800055f4:	fffff097          	auipc	ra,0xfffff
    800055f8:	46c080e7          	jalr	1132(ra) # 80004a60 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800055fc:	00c00513          	li	a0,12
    80005600:	00000097          	auipc	ra,0x0
    80005604:	d88080e7          	jalr	-632(ra) # 80005388 <_ZL9fibonaccim>
    80005608:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000560c:	00003517          	auipc	a0,0x3
    80005610:	c9c50513          	addi	a0,a0,-868 # 800082a8 <CONSOLE_STATUS+0x298>
    80005614:	fffff097          	auipc	ra,0xfffff
    80005618:	44c080e7          	jalr	1100(ra) # 80004a60 <_Z11printStringPKc>
    8000561c:	00000613          	li	a2,0
    80005620:	00a00593          	li	a1,10
    80005624:	0009051b          	sext.w	a0,s2
    80005628:	fffff097          	auipc	ra,0xfffff
    8000562c:	5e8080e7          	jalr	1512(ra) # 80004c10 <_Z8printIntiii>
    80005630:	00003517          	auipc	a0,0x3
    80005634:	b7850513          	addi	a0,a0,-1160 # 800081a8 <CONSOLE_STATUS+0x198>
    80005638:	fffff097          	auipc	ra,0xfffff
    8000563c:	428080e7          	jalr	1064(ra) # 80004a60 <_Z11printStringPKc>
    80005640:	0400006f          	j	80005680 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005644:	00003517          	auipc	a0,0x3
    80005648:	c4450513          	addi	a0,a0,-956 # 80008288 <CONSOLE_STATUS+0x278>
    8000564c:	fffff097          	auipc	ra,0xfffff
    80005650:	414080e7          	jalr	1044(ra) # 80004a60 <_Z11printStringPKc>
    80005654:	00000613          	li	a2,0
    80005658:	00a00593          	li	a1,10
    8000565c:	00048513          	mv	a0,s1
    80005660:	fffff097          	auipc	ra,0xfffff
    80005664:	5b0080e7          	jalr	1456(ra) # 80004c10 <_Z8printIntiii>
    80005668:	00003517          	auipc	a0,0x3
    8000566c:	b4050513          	addi	a0,a0,-1216 # 800081a8 <CONSOLE_STATUS+0x198>
    80005670:	fffff097          	auipc	ra,0xfffff
    80005674:	3f0080e7          	jalr	1008(ra) # 80004a60 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005678:	0014849b          	addiw	s1,s1,1
    8000567c:	0ff4f493          	andi	s1,s1,255
    80005680:	00500793          	li	a5,5
    80005684:	fc97f0e3          	bgeu	a5,s1,80005644 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005688:	00003517          	auipc	a0,0x3
    8000568c:	bd850513          	addi	a0,a0,-1064 # 80008260 <CONSOLE_STATUS+0x250>
    80005690:	fffff097          	auipc	ra,0xfffff
    80005694:	3d0080e7          	jalr	976(ra) # 80004a60 <_Z11printStringPKc>
    finishedC = true;
    80005698:	00100793          	li	a5,1
    8000569c:	00005717          	auipc	a4,0x5
    800056a0:	ecf703a3          	sb	a5,-313(a4) # 8000a563 <_ZL9finishedC>
    thread_dispatch();
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	d30080e7          	jalr	-720(ra) # 800013d4 <_Z15thread_dispatchv>
}
    800056ac:	01813083          	ld	ra,24(sp)
    800056b0:	01013403          	ld	s0,16(sp)
    800056b4:	00813483          	ld	s1,8(sp)
    800056b8:	00013903          	ld	s2,0(sp)
    800056bc:	02010113          	addi	sp,sp,32
    800056c0:	00008067          	ret

00000000800056c4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800056c4:	fe010113          	addi	sp,sp,-32
    800056c8:	00113c23          	sd	ra,24(sp)
    800056cc:	00813823          	sd	s0,16(sp)
    800056d0:	00913423          	sd	s1,8(sp)
    800056d4:	01213023          	sd	s2,0(sp)
    800056d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800056dc:	00000913          	li	s2,0
    800056e0:	0400006f          	j	80005720 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800056e4:	ffffc097          	auipc	ra,0xffffc
    800056e8:	cf0080e7          	jalr	-784(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800056ec:	00148493          	addi	s1,s1,1
    800056f0:	000027b7          	lui	a5,0x2
    800056f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800056f8:	0097ee63          	bltu	a5,s1,80005714 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056fc:	00000713          	li	a4,0
    80005700:	000077b7          	lui	a5,0x7
    80005704:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005708:	fce7eee3          	bltu	a5,a4,800056e4 <_ZL11workerBodyBPv+0x20>
    8000570c:	00170713          	addi	a4,a4,1
    80005710:	ff1ff06f          	j	80005700 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005714:	00a00793          	li	a5,10
    80005718:	04f90663          	beq	s2,a5,80005764 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000571c:	00190913          	addi	s2,s2,1
    80005720:	00f00793          	li	a5,15
    80005724:	0527e463          	bltu	a5,s2,8000576c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005728:	00003517          	auipc	a0,0x3
    8000572c:	b4850513          	addi	a0,a0,-1208 # 80008270 <CONSOLE_STATUS+0x260>
    80005730:	fffff097          	auipc	ra,0xfffff
    80005734:	330080e7          	jalr	816(ra) # 80004a60 <_Z11printStringPKc>
    80005738:	00000613          	li	a2,0
    8000573c:	00a00593          	li	a1,10
    80005740:	0009051b          	sext.w	a0,s2
    80005744:	fffff097          	auipc	ra,0xfffff
    80005748:	4cc080e7          	jalr	1228(ra) # 80004c10 <_Z8printIntiii>
    8000574c:	00003517          	auipc	a0,0x3
    80005750:	a5c50513          	addi	a0,a0,-1444 # 800081a8 <CONSOLE_STATUS+0x198>
    80005754:	fffff097          	auipc	ra,0xfffff
    80005758:	30c080e7          	jalr	780(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000575c:	00000493          	li	s1,0
    80005760:	f91ff06f          	j	800056f0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005764:	14102ff3          	csrr	t6,sepc
    80005768:	fb5ff06f          	j	8000571c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000576c:	00003517          	auipc	a0,0x3
    80005770:	b0c50513          	addi	a0,a0,-1268 # 80008278 <CONSOLE_STATUS+0x268>
    80005774:	fffff097          	auipc	ra,0xfffff
    80005778:	2ec080e7          	jalr	748(ra) # 80004a60 <_Z11printStringPKc>
    finishedB = true;
    8000577c:	00100793          	li	a5,1
    80005780:	00005717          	auipc	a4,0x5
    80005784:	def70223          	sb	a5,-540(a4) # 8000a564 <_ZL9finishedB>
    thread_dispatch();
    80005788:	ffffc097          	auipc	ra,0xffffc
    8000578c:	c4c080e7          	jalr	-948(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80005790:	01813083          	ld	ra,24(sp)
    80005794:	01013403          	ld	s0,16(sp)
    80005798:	00813483          	ld	s1,8(sp)
    8000579c:	00013903          	ld	s2,0(sp)
    800057a0:	02010113          	addi	sp,sp,32
    800057a4:	00008067          	ret

00000000800057a8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800057a8:	fe010113          	addi	sp,sp,-32
    800057ac:	00113c23          	sd	ra,24(sp)
    800057b0:	00813823          	sd	s0,16(sp)
    800057b4:	00913423          	sd	s1,8(sp)
    800057b8:	01213023          	sd	s2,0(sp)
    800057bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800057c0:	00000913          	li	s2,0
    800057c4:	0380006f          	j	800057fc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800057c8:	ffffc097          	auipc	ra,0xffffc
    800057cc:	c0c080e7          	jalr	-1012(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800057d0:	00148493          	addi	s1,s1,1
    800057d4:	000027b7          	lui	a5,0x2
    800057d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800057dc:	0097ee63          	bltu	a5,s1,800057f8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800057e0:	00000713          	li	a4,0
    800057e4:	000077b7          	lui	a5,0x7
    800057e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800057ec:	fce7eee3          	bltu	a5,a4,800057c8 <_ZL11workerBodyAPv+0x20>
    800057f0:	00170713          	addi	a4,a4,1
    800057f4:	ff1ff06f          	j	800057e4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800057f8:	00190913          	addi	s2,s2,1
    800057fc:	00900793          	li	a5,9
    80005800:	0527e063          	bltu	a5,s2,80005840 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005804:	00003517          	auipc	a0,0x3
    80005808:	a5450513          	addi	a0,a0,-1452 # 80008258 <CONSOLE_STATUS+0x248>
    8000580c:	fffff097          	auipc	ra,0xfffff
    80005810:	254080e7          	jalr	596(ra) # 80004a60 <_Z11printStringPKc>
    80005814:	00000613          	li	a2,0
    80005818:	00a00593          	li	a1,10
    8000581c:	0009051b          	sext.w	a0,s2
    80005820:	fffff097          	auipc	ra,0xfffff
    80005824:	3f0080e7          	jalr	1008(ra) # 80004c10 <_Z8printIntiii>
    80005828:	00003517          	auipc	a0,0x3
    8000582c:	98050513          	addi	a0,a0,-1664 # 800081a8 <CONSOLE_STATUS+0x198>
    80005830:	fffff097          	auipc	ra,0xfffff
    80005834:	230080e7          	jalr	560(ra) # 80004a60 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005838:	00000493          	li	s1,0
    8000583c:	f99ff06f          	j	800057d4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005840:	00003517          	auipc	a0,0x3
    80005844:	a2050513          	addi	a0,a0,-1504 # 80008260 <CONSOLE_STATUS+0x250>
    80005848:	fffff097          	auipc	ra,0xfffff
    8000584c:	218080e7          	jalr	536(ra) # 80004a60 <_Z11printStringPKc>
    finishedA = true;
    80005850:	00100793          	li	a5,1
    80005854:	00005717          	auipc	a4,0x5
    80005858:	d0f708a3          	sb	a5,-751(a4) # 8000a565 <_ZL9finishedA>
}
    8000585c:	01813083          	ld	ra,24(sp)
    80005860:	01013403          	ld	s0,16(sp)
    80005864:	00813483          	ld	s1,8(sp)
    80005868:	00013903          	ld	s2,0(sp)
    8000586c:	02010113          	addi	sp,sp,32
    80005870:	00008067          	ret

0000000080005874 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005874:	fd010113          	addi	sp,sp,-48
    80005878:	02113423          	sd	ra,40(sp)
    8000587c:	02813023          	sd	s0,32(sp)
    80005880:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005884:	00000613          	li	a2,0
    80005888:	00000597          	auipc	a1,0x0
    8000588c:	f2058593          	addi	a1,a1,-224 # 800057a8 <_ZL11workerBodyAPv>
    80005890:	fd040513          	addi	a0,s0,-48
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	a84080e7          	jalr	-1404(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000589c:	00003517          	auipc	a0,0x3
    800058a0:	a5450513          	addi	a0,a0,-1452 # 800082f0 <CONSOLE_STATUS+0x2e0>
    800058a4:	fffff097          	auipc	ra,0xfffff
    800058a8:	1bc080e7          	jalr	444(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800058ac:	00000613          	li	a2,0
    800058b0:	00000597          	auipc	a1,0x0
    800058b4:	e1458593          	addi	a1,a1,-492 # 800056c4 <_ZL11workerBodyBPv>
    800058b8:	fd840513          	addi	a0,s0,-40
    800058bc:	ffffc097          	auipc	ra,0xffffc
    800058c0:	a5c080e7          	jalr	-1444(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800058c4:	00003517          	auipc	a0,0x3
    800058c8:	a4450513          	addi	a0,a0,-1468 # 80008308 <CONSOLE_STATUS+0x2f8>
    800058cc:	fffff097          	auipc	ra,0xfffff
    800058d0:	194080e7          	jalr	404(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800058d4:	00000613          	li	a2,0
    800058d8:	00000597          	auipc	a1,0x0
    800058dc:	c6c58593          	addi	a1,a1,-916 # 80005544 <_ZL11workerBodyCPv>
    800058e0:	fe040513          	addi	a0,s0,-32
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	a34080e7          	jalr	-1484(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800058ec:	00003517          	auipc	a0,0x3
    800058f0:	a3450513          	addi	a0,a0,-1484 # 80008320 <CONSOLE_STATUS+0x310>
    800058f4:	fffff097          	auipc	ra,0xfffff
    800058f8:	16c080e7          	jalr	364(ra) # 80004a60 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800058fc:	00000613          	li	a2,0
    80005900:	00000597          	auipc	a1,0x0
    80005904:	afc58593          	addi	a1,a1,-1284 # 800053fc <_ZL11workerBodyDPv>
    80005908:	fe840513          	addi	a0,s0,-24
    8000590c:	ffffc097          	auipc	ra,0xffffc
    80005910:	a0c080e7          	jalr	-1524(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005914:	00003517          	auipc	a0,0x3
    80005918:	a2450513          	addi	a0,a0,-1500 # 80008338 <CONSOLE_STATUS+0x328>
    8000591c:	fffff097          	auipc	ra,0xfffff
    80005920:	144080e7          	jalr	324(ra) # 80004a60 <_Z11printStringPKc>
    80005924:	00c0006f          	j	80005930 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005928:	ffffc097          	auipc	ra,0xffffc
    8000592c:	aac080e7          	jalr	-1364(ra) # 800013d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005930:	00005797          	auipc	a5,0x5
    80005934:	c357c783          	lbu	a5,-971(a5) # 8000a565 <_ZL9finishedA>
    80005938:	fe0788e3          	beqz	a5,80005928 <_Z16System_Mode_testv+0xb4>
    8000593c:	00005797          	auipc	a5,0x5
    80005940:	c287c783          	lbu	a5,-984(a5) # 8000a564 <_ZL9finishedB>
    80005944:	fe0782e3          	beqz	a5,80005928 <_Z16System_Mode_testv+0xb4>
    80005948:	00005797          	auipc	a5,0x5
    8000594c:	c1b7c783          	lbu	a5,-997(a5) # 8000a563 <_ZL9finishedC>
    80005950:	fc078ce3          	beqz	a5,80005928 <_Z16System_Mode_testv+0xb4>
    80005954:	00005797          	auipc	a5,0x5
    80005958:	c0e7c783          	lbu	a5,-1010(a5) # 8000a562 <_ZL9finishedD>
    8000595c:	fc0786e3          	beqz	a5,80005928 <_Z16System_Mode_testv+0xb4>
    }

}
    80005960:	02813083          	ld	ra,40(sp)
    80005964:	02013403          	ld	s0,32(sp)
    80005968:	03010113          	addi	sp,sp,48
    8000596c:	00008067          	ret

0000000080005970 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005970:	fe010113          	addi	sp,sp,-32
    80005974:	00113c23          	sd	ra,24(sp)
    80005978:	00813823          	sd	s0,16(sp)
    8000597c:	00913423          	sd	s1,8(sp)
    80005980:	01213023          	sd	s2,0(sp)
    80005984:	02010413          	addi	s0,sp,32
    80005988:	00050493          	mv	s1,a0
    8000598c:	00058913          	mv	s2,a1
    80005990:	0015879b          	addiw	a5,a1,1
    80005994:	0007851b          	sext.w	a0,a5
    80005998:	00f4a023          	sw	a5,0(s1)
    8000599c:	0004a823          	sw	zero,16(s1)
    800059a0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800059a4:	00251513          	slli	a0,a0,0x2
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	89c080e7          	jalr	-1892(ra) # 80001244 <_Z9mem_allocm>
    800059b0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800059b4:	00000593          	li	a1,0
    800059b8:	02048513          	addi	a0,s1,32
    800059bc:	ffffc097          	auipc	ra,0xffffc
    800059c0:	a3c080e7          	jalr	-1476(ra) # 800013f8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800059c4:	00090593          	mv	a1,s2
    800059c8:	01848513          	addi	a0,s1,24
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	a2c080e7          	jalr	-1492(ra) # 800013f8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800059d4:	00100593          	li	a1,1
    800059d8:	02848513          	addi	a0,s1,40
    800059dc:	ffffc097          	auipc	ra,0xffffc
    800059e0:	a1c080e7          	jalr	-1508(ra) # 800013f8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800059e4:	00100593          	li	a1,1
    800059e8:	03048513          	addi	a0,s1,48
    800059ec:	ffffc097          	auipc	ra,0xffffc
    800059f0:	a0c080e7          	jalr	-1524(ra) # 800013f8 <_Z8sem_openPP4_semj>
}
    800059f4:	01813083          	ld	ra,24(sp)
    800059f8:	01013403          	ld	s0,16(sp)
    800059fc:	00813483          	ld	s1,8(sp)
    80005a00:	00013903          	ld	s2,0(sp)
    80005a04:	02010113          	addi	sp,sp,32
    80005a08:	00008067          	ret

0000000080005a0c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005a0c:	fe010113          	addi	sp,sp,-32
    80005a10:	00113c23          	sd	ra,24(sp)
    80005a14:	00813823          	sd	s0,16(sp)
    80005a18:	00913423          	sd	s1,8(sp)
    80005a1c:	01213023          	sd	s2,0(sp)
    80005a20:	02010413          	addi	s0,sp,32
    80005a24:	00050493          	mv	s1,a0
    80005a28:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005a2c:	01853503          	ld	a0,24(a0)
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	a3c080e7          	jalr	-1476(ra) # 8000146c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005a38:	0304b503          	ld	a0,48(s1)
    80005a3c:	ffffc097          	auipc	ra,0xffffc
    80005a40:	a30080e7          	jalr	-1488(ra) # 8000146c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005a44:	0084b783          	ld	a5,8(s1)
    80005a48:	0144a703          	lw	a4,20(s1)
    80005a4c:	00271713          	slli	a4,a4,0x2
    80005a50:	00e787b3          	add	a5,a5,a4
    80005a54:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a58:	0144a783          	lw	a5,20(s1)
    80005a5c:	0017879b          	addiw	a5,a5,1
    80005a60:	0004a703          	lw	a4,0(s1)
    80005a64:	02e7e7bb          	remw	a5,a5,a4
    80005a68:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005a6c:	0304b503          	ld	a0,48(s1)
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	a34080e7          	jalr	-1484(ra) # 800014a4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005a78:	0204b503          	ld	a0,32(s1)
    80005a7c:	ffffc097          	auipc	ra,0xffffc
    80005a80:	a28080e7          	jalr	-1496(ra) # 800014a4 <_Z10sem_signalP4_sem>

}
    80005a84:	01813083          	ld	ra,24(sp)
    80005a88:	01013403          	ld	s0,16(sp)
    80005a8c:	00813483          	ld	s1,8(sp)
    80005a90:	00013903          	ld	s2,0(sp)
    80005a94:	02010113          	addi	sp,sp,32
    80005a98:	00008067          	ret

0000000080005a9c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005a9c:	fe010113          	addi	sp,sp,-32
    80005aa0:	00113c23          	sd	ra,24(sp)
    80005aa4:	00813823          	sd	s0,16(sp)
    80005aa8:	00913423          	sd	s1,8(sp)
    80005aac:	01213023          	sd	s2,0(sp)
    80005ab0:	02010413          	addi	s0,sp,32
    80005ab4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005ab8:	02053503          	ld	a0,32(a0)
    80005abc:	ffffc097          	auipc	ra,0xffffc
    80005ac0:	9b0080e7          	jalr	-1616(ra) # 8000146c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005ac4:	0284b503          	ld	a0,40(s1)
    80005ac8:	ffffc097          	auipc	ra,0xffffc
    80005acc:	9a4080e7          	jalr	-1628(ra) # 8000146c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005ad0:	0084b703          	ld	a4,8(s1)
    80005ad4:	0104a783          	lw	a5,16(s1)
    80005ad8:	00279693          	slli	a3,a5,0x2
    80005adc:	00d70733          	add	a4,a4,a3
    80005ae0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005ae4:	0017879b          	addiw	a5,a5,1
    80005ae8:	0004a703          	lw	a4,0(s1)
    80005aec:	02e7e7bb          	remw	a5,a5,a4
    80005af0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005af4:	0284b503          	ld	a0,40(s1)
    80005af8:	ffffc097          	auipc	ra,0xffffc
    80005afc:	9ac080e7          	jalr	-1620(ra) # 800014a4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005b00:	0184b503          	ld	a0,24(s1)
    80005b04:	ffffc097          	auipc	ra,0xffffc
    80005b08:	9a0080e7          	jalr	-1632(ra) # 800014a4 <_Z10sem_signalP4_sem>

    return ret;
}
    80005b0c:	00090513          	mv	a0,s2
    80005b10:	01813083          	ld	ra,24(sp)
    80005b14:	01013403          	ld	s0,16(sp)
    80005b18:	00813483          	ld	s1,8(sp)
    80005b1c:	00013903          	ld	s2,0(sp)
    80005b20:	02010113          	addi	sp,sp,32
    80005b24:	00008067          	ret

0000000080005b28 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005b28:	fe010113          	addi	sp,sp,-32
    80005b2c:	00113c23          	sd	ra,24(sp)
    80005b30:	00813823          	sd	s0,16(sp)
    80005b34:	00913423          	sd	s1,8(sp)
    80005b38:	01213023          	sd	s2,0(sp)
    80005b3c:	02010413          	addi	s0,sp,32
    80005b40:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005b44:	02853503          	ld	a0,40(a0)
    80005b48:	ffffc097          	auipc	ra,0xffffc
    80005b4c:	924080e7          	jalr	-1756(ra) # 8000146c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005b50:	0304b503          	ld	a0,48(s1)
    80005b54:	ffffc097          	auipc	ra,0xffffc
    80005b58:	918080e7          	jalr	-1768(ra) # 8000146c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005b5c:	0144a783          	lw	a5,20(s1)
    80005b60:	0104a903          	lw	s2,16(s1)
    80005b64:	0327ce63          	blt	a5,s2,80005ba0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005b68:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005b6c:	0304b503          	ld	a0,48(s1)
    80005b70:	ffffc097          	auipc	ra,0xffffc
    80005b74:	934080e7          	jalr	-1740(ra) # 800014a4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005b78:	0284b503          	ld	a0,40(s1)
    80005b7c:	ffffc097          	auipc	ra,0xffffc
    80005b80:	928080e7          	jalr	-1752(ra) # 800014a4 <_Z10sem_signalP4_sem>

    return ret;
}
    80005b84:	00090513          	mv	a0,s2
    80005b88:	01813083          	ld	ra,24(sp)
    80005b8c:	01013403          	ld	s0,16(sp)
    80005b90:	00813483          	ld	s1,8(sp)
    80005b94:	00013903          	ld	s2,0(sp)
    80005b98:	02010113          	addi	sp,sp,32
    80005b9c:	00008067          	ret
        ret = cap - head + tail;
    80005ba0:	0004a703          	lw	a4,0(s1)
    80005ba4:	4127093b          	subw	s2,a4,s2
    80005ba8:	00f9093b          	addw	s2,s2,a5
    80005bac:	fc1ff06f          	j	80005b6c <_ZN6Buffer6getCntEv+0x44>

0000000080005bb0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005bb0:	fe010113          	addi	sp,sp,-32
    80005bb4:	00113c23          	sd	ra,24(sp)
    80005bb8:	00813823          	sd	s0,16(sp)
    80005bbc:	00913423          	sd	s1,8(sp)
    80005bc0:	02010413          	addi	s0,sp,32
    80005bc4:	00050493          	mv	s1,a0
    putc('\n');
    80005bc8:	00a00513          	li	a0,10
    80005bcc:	ffffc097          	auipc	ra,0xffffc
    80005bd0:	97c080e7          	jalr	-1668(ra) # 80001548 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005bd4:	00002517          	auipc	a0,0x2
    80005bd8:	77c50513          	addi	a0,a0,1916 # 80008350 <CONSOLE_STATUS+0x340>
    80005bdc:	fffff097          	auipc	ra,0xfffff
    80005be0:	e84080e7          	jalr	-380(ra) # 80004a60 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005be4:	00048513          	mv	a0,s1
    80005be8:	00000097          	auipc	ra,0x0
    80005bec:	f40080e7          	jalr	-192(ra) # 80005b28 <_ZN6Buffer6getCntEv>
    80005bf0:	02a05c63          	blez	a0,80005c28 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005bf4:	0084b783          	ld	a5,8(s1)
    80005bf8:	0104a703          	lw	a4,16(s1)
    80005bfc:	00271713          	slli	a4,a4,0x2
    80005c00:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005c04:	0007c503          	lbu	a0,0(a5)
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	940080e7          	jalr	-1728(ra) # 80001548 <_Z4putcc>
        head = (head + 1) % cap;
    80005c10:	0104a783          	lw	a5,16(s1)
    80005c14:	0017879b          	addiw	a5,a5,1
    80005c18:	0004a703          	lw	a4,0(s1)
    80005c1c:	02e7e7bb          	remw	a5,a5,a4
    80005c20:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005c24:	fc1ff06f          	j	80005be4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005c28:	02100513          	li	a0,33
    80005c2c:	ffffc097          	auipc	ra,0xffffc
    80005c30:	91c080e7          	jalr	-1764(ra) # 80001548 <_Z4putcc>
    putc('\n');
    80005c34:	00a00513          	li	a0,10
    80005c38:	ffffc097          	auipc	ra,0xffffc
    80005c3c:	910080e7          	jalr	-1776(ra) # 80001548 <_Z4putcc>
    mem_free(buffer);
    80005c40:	0084b503          	ld	a0,8(s1)
    80005c44:	ffffb097          	auipc	ra,0xffffb
    80005c48:	63c080e7          	jalr	1596(ra) # 80001280 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005c4c:	0204b503          	ld	a0,32(s1)
    80005c50:	ffffb097          	auipc	ra,0xffffb
    80005c54:	7e4080e7          	jalr	2020(ra) # 80001434 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80005c58:	0184b503          	ld	a0,24(s1)
    80005c5c:	ffffb097          	auipc	ra,0xffffb
    80005c60:	7d8080e7          	jalr	2008(ra) # 80001434 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005c64:	0304b503          	ld	a0,48(s1)
    80005c68:	ffffb097          	auipc	ra,0xffffb
    80005c6c:	7cc080e7          	jalr	1996(ra) # 80001434 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80005c70:	0284b503          	ld	a0,40(s1)
    80005c74:	ffffb097          	auipc	ra,0xffffb
    80005c78:	7c0080e7          	jalr	1984(ra) # 80001434 <_Z9sem_closeP4_sem>
}
    80005c7c:	01813083          	ld	ra,24(sp)
    80005c80:	01013403          	ld	s0,16(sp)
    80005c84:	00813483          	ld	s1,8(sp)
    80005c88:	02010113          	addi	sp,sp,32
    80005c8c:	00008067          	ret

0000000080005c90 <start>:
    80005c90:	ff010113          	addi	sp,sp,-16
    80005c94:	00813423          	sd	s0,8(sp)
    80005c98:	01010413          	addi	s0,sp,16
    80005c9c:	300027f3          	csrr	a5,mstatus
    80005ca0:	ffffe737          	lui	a4,0xffffe
    80005ca4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff302f>
    80005ca8:	00e7f7b3          	and	a5,a5,a4
    80005cac:	00001737          	lui	a4,0x1
    80005cb0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005cb4:	00e7e7b3          	or	a5,a5,a4
    80005cb8:	30079073          	csrw	mstatus,a5
    80005cbc:	00000797          	auipc	a5,0x0
    80005cc0:	16078793          	addi	a5,a5,352 # 80005e1c <system_main>
    80005cc4:	34179073          	csrw	mepc,a5
    80005cc8:	00000793          	li	a5,0
    80005ccc:	18079073          	csrw	satp,a5
    80005cd0:	000107b7          	lui	a5,0x10
    80005cd4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005cd8:	30279073          	csrw	medeleg,a5
    80005cdc:	30379073          	csrw	mideleg,a5
    80005ce0:	104027f3          	csrr	a5,sie
    80005ce4:	2227e793          	ori	a5,a5,546
    80005ce8:	10479073          	csrw	sie,a5
    80005cec:	fff00793          	li	a5,-1
    80005cf0:	00a7d793          	srli	a5,a5,0xa
    80005cf4:	3b079073          	csrw	pmpaddr0,a5
    80005cf8:	00f00793          	li	a5,15
    80005cfc:	3a079073          	csrw	pmpcfg0,a5
    80005d00:	f14027f3          	csrr	a5,mhartid
    80005d04:	0200c737          	lui	a4,0x200c
    80005d08:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005d0c:	0007869b          	sext.w	a3,a5
    80005d10:	00269713          	slli	a4,a3,0x2
    80005d14:	000f4637          	lui	a2,0xf4
    80005d18:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005d1c:	00d70733          	add	a4,a4,a3
    80005d20:	0037979b          	slliw	a5,a5,0x3
    80005d24:	020046b7          	lui	a3,0x2004
    80005d28:	00d787b3          	add	a5,a5,a3
    80005d2c:	00c585b3          	add	a1,a1,a2
    80005d30:	00371693          	slli	a3,a4,0x3
    80005d34:	00005717          	auipc	a4,0x5
    80005d38:	83c70713          	addi	a4,a4,-1988 # 8000a570 <timer_scratch>
    80005d3c:	00b7b023          	sd	a1,0(a5)
    80005d40:	00d70733          	add	a4,a4,a3
    80005d44:	00f73c23          	sd	a5,24(a4)
    80005d48:	02c73023          	sd	a2,32(a4)
    80005d4c:	34071073          	csrw	mscratch,a4
    80005d50:	00000797          	auipc	a5,0x0
    80005d54:	6e078793          	addi	a5,a5,1760 # 80006430 <timervec>
    80005d58:	30579073          	csrw	mtvec,a5
    80005d5c:	300027f3          	csrr	a5,mstatus
    80005d60:	0087e793          	ori	a5,a5,8
    80005d64:	30079073          	csrw	mstatus,a5
    80005d68:	304027f3          	csrr	a5,mie
    80005d6c:	0807e793          	ori	a5,a5,128
    80005d70:	30479073          	csrw	mie,a5
    80005d74:	f14027f3          	csrr	a5,mhartid
    80005d78:	0007879b          	sext.w	a5,a5
    80005d7c:	00078213          	mv	tp,a5
    80005d80:	30200073          	mret
    80005d84:	00813403          	ld	s0,8(sp)
    80005d88:	01010113          	addi	sp,sp,16
    80005d8c:	00008067          	ret

0000000080005d90 <timerinit>:
    80005d90:	ff010113          	addi	sp,sp,-16
    80005d94:	00813423          	sd	s0,8(sp)
    80005d98:	01010413          	addi	s0,sp,16
    80005d9c:	f14027f3          	csrr	a5,mhartid
    80005da0:	0200c737          	lui	a4,0x200c
    80005da4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005da8:	0007869b          	sext.w	a3,a5
    80005dac:	00269713          	slli	a4,a3,0x2
    80005db0:	000f4637          	lui	a2,0xf4
    80005db4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005db8:	00d70733          	add	a4,a4,a3
    80005dbc:	0037979b          	slliw	a5,a5,0x3
    80005dc0:	020046b7          	lui	a3,0x2004
    80005dc4:	00d787b3          	add	a5,a5,a3
    80005dc8:	00c585b3          	add	a1,a1,a2
    80005dcc:	00371693          	slli	a3,a4,0x3
    80005dd0:	00004717          	auipc	a4,0x4
    80005dd4:	7a070713          	addi	a4,a4,1952 # 8000a570 <timer_scratch>
    80005dd8:	00b7b023          	sd	a1,0(a5)
    80005ddc:	00d70733          	add	a4,a4,a3
    80005de0:	00f73c23          	sd	a5,24(a4)
    80005de4:	02c73023          	sd	a2,32(a4)
    80005de8:	34071073          	csrw	mscratch,a4
    80005dec:	00000797          	auipc	a5,0x0
    80005df0:	64478793          	addi	a5,a5,1604 # 80006430 <timervec>
    80005df4:	30579073          	csrw	mtvec,a5
    80005df8:	300027f3          	csrr	a5,mstatus
    80005dfc:	0087e793          	ori	a5,a5,8
    80005e00:	30079073          	csrw	mstatus,a5
    80005e04:	304027f3          	csrr	a5,mie
    80005e08:	0807e793          	ori	a5,a5,128
    80005e0c:	30479073          	csrw	mie,a5
    80005e10:	00813403          	ld	s0,8(sp)
    80005e14:	01010113          	addi	sp,sp,16
    80005e18:	00008067          	ret

0000000080005e1c <system_main>:
    80005e1c:	fe010113          	addi	sp,sp,-32
    80005e20:	00813823          	sd	s0,16(sp)
    80005e24:	00913423          	sd	s1,8(sp)
    80005e28:	00113c23          	sd	ra,24(sp)
    80005e2c:	02010413          	addi	s0,sp,32
    80005e30:	00000097          	auipc	ra,0x0
    80005e34:	0c4080e7          	jalr	196(ra) # 80005ef4 <cpuid>
    80005e38:	00004497          	auipc	s1,0x4
    80005e3c:	67848493          	addi	s1,s1,1656 # 8000a4b0 <started>
    80005e40:	02050263          	beqz	a0,80005e64 <system_main+0x48>
    80005e44:	0004a783          	lw	a5,0(s1)
    80005e48:	0007879b          	sext.w	a5,a5
    80005e4c:	fe078ce3          	beqz	a5,80005e44 <system_main+0x28>
    80005e50:	0ff0000f          	fence
    80005e54:	00002517          	auipc	a0,0x2
    80005e58:	6f450513          	addi	a0,a0,1780 # 80008548 <CONSOLE_STATUS+0x538>
    80005e5c:	00001097          	auipc	ra,0x1
    80005e60:	a70080e7          	jalr	-1424(ra) # 800068cc <panic>
    80005e64:	00001097          	auipc	ra,0x1
    80005e68:	9c4080e7          	jalr	-1596(ra) # 80006828 <consoleinit>
    80005e6c:	00001097          	auipc	ra,0x1
    80005e70:	150080e7          	jalr	336(ra) # 80006fbc <printfinit>
    80005e74:	00002517          	auipc	a0,0x2
    80005e78:	33450513          	addi	a0,a0,820 # 800081a8 <CONSOLE_STATUS+0x198>
    80005e7c:	00001097          	auipc	ra,0x1
    80005e80:	aac080e7          	jalr	-1364(ra) # 80006928 <__printf>
    80005e84:	00002517          	auipc	a0,0x2
    80005e88:	69450513          	addi	a0,a0,1684 # 80008518 <CONSOLE_STATUS+0x508>
    80005e8c:	00001097          	auipc	ra,0x1
    80005e90:	a9c080e7          	jalr	-1380(ra) # 80006928 <__printf>
    80005e94:	00002517          	auipc	a0,0x2
    80005e98:	31450513          	addi	a0,a0,788 # 800081a8 <CONSOLE_STATUS+0x198>
    80005e9c:	00001097          	auipc	ra,0x1
    80005ea0:	a8c080e7          	jalr	-1396(ra) # 80006928 <__printf>
    80005ea4:	00001097          	auipc	ra,0x1
    80005ea8:	4a4080e7          	jalr	1188(ra) # 80007348 <kinit>
    80005eac:	00000097          	auipc	ra,0x0
    80005eb0:	148080e7          	jalr	328(ra) # 80005ff4 <trapinit>
    80005eb4:	00000097          	auipc	ra,0x0
    80005eb8:	16c080e7          	jalr	364(ra) # 80006020 <trapinithart>
    80005ebc:	00000097          	auipc	ra,0x0
    80005ec0:	5b4080e7          	jalr	1460(ra) # 80006470 <plicinit>
    80005ec4:	00000097          	auipc	ra,0x0
    80005ec8:	5d4080e7          	jalr	1492(ra) # 80006498 <plicinithart>
    80005ecc:	00000097          	auipc	ra,0x0
    80005ed0:	078080e7          	jalr	120(ra) # 80005f44 <userinit>
    80005ed4:	0ff0000f          	fence
    80005ed8:	00100793          	li	a5,1
    80005edc:	00002517          	auipc	a0,0x2
    80005ee0:	65450513          	addi	a0,a0,1620 # 80008530 <CONSOLE_STATUS+0x520>
    80005ee4:	00f4a023          	sw	a5,0(s1)
    80005ee8:	00001097          	auipc	ra,0x1
    80005eec:	a40080e7          	jalr	-1472(ra) # 80006928 <__printf>
    80005ef0:	0000006f          	j	80005ef0 <system_main+0xd4>

0000000080005ef4 <cpuid>:
    80005ef4:	ff010113          	addi	sp,sp,-16
    80005ef8:	00813423          	sd	s0,8(sp)
    80005efc:	01010413          	addi	s0,sp,16
    80005f00:	00020513          	mv	a0,tp
    80005f04:	00813403          	ld	s0,8(sp)
    80005f08:	0005051b          	sext.w	a0,a0
    80005f0c:	01010113          	addi	sp,sp,16
    80005f10:	00008067          	ret

0000000080005f14 <mycpu>:
    80005f14:	ff010113          	addi	sp,sp,-16
    80005f18:	00813423          	sd	s0,8(sp)
    80005f1c:	01010413          	addi	s0,sp,16
    80005f20:	00020793          	mv	a5,tp
    80005f24:	00813403          	ld	s0,8(sp)
    80005f28:	0007879b          	sext.w	a5,a5
    80005f2c:	00779793          	slli	a5,a5,0x7
    80005f30:	00005517          	auipc	a0,0x5
    80005f34:	67050513          	addi	a0,a0,1648 # 8000b5a0 <cpus>
    80005f38:	00f50533          	add	a0,a0,a5
    80005f3c:	01010113          	addi	sp,sp,16
    80005f40:	00008067          	ret

0000000080005f44 <userinit>:
    80005f44:	ff010113          	addi	sp,sp,-16
    80005f48:	00813423          	sd	s0,8(sp)
    80005f4c:	01010413          	addi	s0,sp,16
    80005f50:	00813403          	ld	s0,8(sp)
    80005f54:	01010113          	addi	sp,sp,16
    80005f58:	ffffb317          	auipc	t1,0xffffb
    80005f5c:	64030067          	jr	1600(t1) # 80001598 <main>

0000000080005f60 <either_copyout>:
    80005f60:	ff010113          	addi	sp,sp,-16
    80005f64:	00813023          	sd	s0,0(sp)
    80005f68:	00113423          	sd	ra,8(sp)
    80005f6c:	01010413          	addi	s0,sp,16
    80005f70:	02051663          	bnez	a0,80005f9c <either_copyout+0x3c>
    80005f74:	00058513          	mv	a0,a1
    80005f78:	00060593          	mv	a1,a2
    80005f7c:	0006861b          	sext.w	a2,a3
    80005f80:	00002097          	auipc	ra,0x2
    80005f84:	c54080e7          	jalr	-940(ra) # 80007bd4 <__memmove>
    80005f88:	00813083          	ld	ra,8(sp)
    80005f8c:	00013403          	ld	s0,0(sp)
    80005f90:	00000513          	li	a0,0
    80005f94:	01010113          	addi	sp,sp,16
    80005f98:	00008067          	ret
    80005f9c:	00002517          	auipc	a0,0x2
    80005fa0:	5d450513          	addi	a0,a0,1492 # 80008570 <CONSOLE_STATUS+0x560>
    80005fa4:	00001097          	auipc	ra,0x1
    80005fa8:	928080e7          	jalr	-1752(ra) # 800068cc <panic>

0000000080005fac <either_copyin>:
    80005fac:	ff010113          	addi	sp,sp,-16
    80005fb0:	00813023          	sd	s0,0(sp)
    80005fb4:	00113423          	sd	ra,8(sp)
    80005fb8:	01010413          	addi	s0,sp,16
    80005fbc:	02059463          	bnez	a1,80005fe4 <either_copyin+0x38>
    80005fc0:	00060593          	mv	a1,a2
    80005fc4:	0006861b          	sext.w	a2,a3
    80005fc8:	00002097          	auipc	ra,0x2
    80005fcc:	c0c080e7          	jalr	-1012(ra) # 80007bd4 <__memmove>
    80005fd0:	00813083          	ld	ra,8(sp)
    80005fd4:	00013403          	ld	s0,0(sp)
    80005fd8:	00000513          	li	a0,0
    80005fdc:	01010113          	addi	sp,sp,16
    80005fe0:	00008067          	ret
    80005fe4:	00002517          	auipc	a0,0x2
    80005fe8:	5b450513          	addi	a0,a0,1460 # 80008598 <CONSOLE_STATUS+0x588>
    80005fec:	00001097          	auipc	ra,0x1
    80005ff0:	8e0080e7          	jalr	-1824(ra) # 800068cc <panic>

0000000080005ff4 <trapinit>:
    80005ff4:	ff010113          	addi	sp,sp,-16
    80005ff8:	00813423          	sd	s0,8(sp)
    80005ffc:	01010413          	addi	s0,sp,16
    80006000:	00813403          	ld	s0,8(sp)
    80006004:	00002597          	auipc	a1,0x2
    80006008:	5bc58593          	addi	a1,a1,1468 # 800085c0 <CONSOLE_STATUS+0x5b0>
    8000600c:	00005517          	auipc	a0,0x5
    80006010:	61450513          	addi	a0,a0,1556 # 8000b620 <tickslock>
    80006014:	01010113          	addi	sp,sp,16
    80006018:	00001317          	auipc	t1,0x1
    8000601c:	5c030067          	jr	1472(t1) # 800075d8 <initlock>

0000000080006020 <trapinithart>:
    80006020:	ff010113          	addi	sp,sp,-16
    80006024:	00813423          	sd	s0,8(sp)
    80006028:	01010413          	addi	s0,sp,16
    8000602c:	00000797          	auipc	a5,0x0
    80006030:	2f478793          	addi	a5,a5,756 # 80006320 <kernelvec>
    80006034:	10579073          	csrw	stvec,a5
    80006038:	00813403          	ld	s0,8(sp)
    8000603c:	01010113          	addi	sp,sp,16
    80006040:	00008067          	ret

0000000080006044 <usertrap>:
    80006044:	ff010113          	addi	sp,sp,-16
    80006048:	00813423          	sd	s0,8(sp)
    8000604c:	01010413          	addi	s0,sp,16
    80006050:	00813403          	ld	s0,8(sp)
    80006054:	01010113          	addi	sp,sp,16
    80006058:	00008067          	ret

000000008000605c <usertrapret>:
    8000605c:	ff010113          	addi	sp,sp,-16
    80006060:	00813423          	sd	s0,8(sp)
    80006064:	01010413          	addi	s0,sp,16
    80006068:	00813403          	ld	s0,8(sp)
    8000606c:	01010113          	addi	sp,sp,16
    80006070:	00008067          	ret

0000000080006074 <kerneltrap>:
    80006074:	fe010113          	addi	sp,sp,-32
    80006078:	00813823          	sd	s0,16(sp)
    8000607c:	00113c23          	sd	ra,24(sp)
    80006080:	00913423          	sd	s1,8(sp)
    80006084:	02010413          	addi	s0,sp,32
    80006088:	142025f3          	csrr	a1,scause
    8000608c:	100027f3          	csrr	a5,sstatus
    80006090:	0027f793          	andi	a5,a5,2
    80006094:	10079c63          	bnez	a5,800061ac <kerneltrap+0x138>
    80006098:	142027f3          	csrr	a5,scause
    8000609c:	0207ce63          	bltz	a5,800060d8 <kerneltrap+0x64>
    800060a0:	00002517          	auipc	a0,0x2
    800060a4:	56850513          	addi	a0,a0,1384 # 80008608 <CONSOLE_STATUS+0x5f8>
    800060a8:	00001097          	auipc	ra,0x1
    800060ac:	880080e7          	jalr	-1920(ra) # 80006928 <__printf>
    800060b0:	141025f3          	csrr	a1,sepc
    800060b4:	14302673          	csrr	a2,stval
    800060b8:	00002517          	auipc	a0,0x2
    800060bc:	56050513          	addi	a0,a0,1376 # 80008618 <CONSOLE_STATUS+0x608>
    800060c0:	00001097          	auipc	ra,0x1
    800060c4:	868080e7          	jalr	-1944(ra) # 80006928 <__printf>
    800060c8:	00002517          	auipc	a0,0x2
    800060cc:	56850513          	addi	a0,a0,1384 # 80008630 <CONSOLE_STATUS+0x620>
    800060d0:	00000097          	auipc	ra,0x0
    800060d4:	7fc080e7          	jalr	2044(ra) # 800068cc <panic>
    800060d8:	0ff7f713          	andi	a4,a5,255
    800060dc:	00900693          	li	a3,9
    800060e0:	04d70063          	beq	a4,a3,80006120 <kerneltrap+0xac>
    800060e4:	fff00713          	li	a4,-1
    800060e8:	03f71713          	slli	a4,a4,0x3f
    800060ec:	00170713          	addi	a4,a4,1
    800060f0:	fae798e3          	bne	a5,a4,800060a0 <kerneltrap+0x2c>
    800060f4:	00000097          	auipc	ra,0x0
    800060f8:	e00080e7          	jalr	-512(ra) # 80005ef4 <cpuid>
    800060fc:	06050663          	beqz	a0,80006168 <kerneltrap+0xf4>
    80006100:	144027f3          	csrr	a5,sip
    80006104:	ffd7f793          	andi	a5,a5,-3
    80006108:	14479073          	csrw	sip,a5
    8000610c:	01813083          	ld	ra,24(sp)
    80006110:	01013403          	ld	s0,16(sp)
    80006114:	00813483          	ld	s1,8(sp)
    80006118:	02010113          	addi	sp,sp,32
    8000611c:	00008067          	ret
    80006120:	00000097          	auipc	ra,0x0
    80006124:	3c4080e7          	jalr	964(ra) # 800064e4 <plic_claim>
    80006128:	00a00793          	li	a5,10
    8000612c:	00050493          	mv	s1,a0
    80006130:	06f50863          	beq	a0,a5,800061a0 <kerneltrap+0x12c>
    80006134:	fc050ce3          	beqz	a0,8000610c <kerneltrap+0x98>
    80006138:	00050593          	mv	a1,a0
    8000613c:	00002517          	auipc	a0,0x2
    80006140:	4ac50513          	addi	a0,a0,1196 # 800085e8 <CONSOLE_STATUS+0x5d8>
    80006144:	00000097          	auipc	ra,0x0
    80006148:	7e4080e7          	jalr	2020(ra) # 80006928 <__printf>
    8000614c:	01013403          	ld	s0,16(sp)
    80006150:	01813083          	ld	ra,24(sp)
    80006154:	00048513          	mv	a0,s1
    80006158:	00813483          	ld	s1,8(sp)
    8000615c:	02010113          	addi	sp,sp,32
    80006160:	00000317          	auipc	t1,0x0
    80006164:	3bc30067          	jr	956(t1) # 8000651c <plic_complete>
    80006168:	00005517          	auipc	a0,0x5
    8000616c:	4b850513          	addi	a0,a0,1208 # 8000b620 <tickslock>
    80006170:	00001097          	auipc	ra,0x1
    80006174:	48c080e7          	jalr	1164(ra) # 800075fc <acquire>
    80006178:	00004717          	auipc	a4,0x4
    8000617c:	33c70713          	addi	a4,a4,828 # 8000a4b4 <ticks>
    80006180:	00072783          	lw	a5,0(a4)
    80006184:	00005517          	auipc	a0,0x5
    80006188:	49c50513          	addi	a0,a0,1180 # 8000b620 <tickslock>
    8000618c:	0017879b          	addiw	a5,a5,1
    80006190:	00f72023          	sw	a5,0(a4)
    80006194:	00001097          	auipc	ra,0x1
    80006198:	534080e7          	jalr	1332(ra) # 800076c8 <release>
    8000619c:	f65ff06f          	j	80006100 <kerneltrap+0x8c>
    800061a0:	00001097          	auipc	ra,0x1
    800061a4:	090080e7          	jalr	144(ra) # 80007230 <uartintr>
    800061a8:	fa5ff06f          	j	8000614c <kerneltrap+0xd8>
    800061ac:	00002517          	auipc	a0,0x2
    800061b0:	41c50513          	addi	a0,a0,1052 # 800085c8 <CONSOLE_STATUS+0x5b8>
    800061b4:	00000097          	auipc	ra,0x0
    800061b8:	718080e7          	jalr	1816(ra) # 800068cc <panic>

00000000800061bc <clockintr>:
    800061bc:	fe010113          	addi	sp,sp,-32
    800061c0:	00813823          	sd	s0,16(sp)
    800061c4:	00913423          	sd	s1,8(sp)
    800061c8:	00113c23          	sd	ra,24(sp)
    800061cc:	02010413          	addi	s0,sp,32
    800061d0:	00005497          	auipc	s1,0x5
    800061d4:	45048493          	addi	s1,s1,1104 # 8000b620 <tickslock>
    800061d8:	00048513          	mv	a0,s1
    800061dc:	00001097          	auipc	ra,0x1
    800061e0:	420080e7          	jalr	1056(ra) # 800075fc <acquire>
    800061e4:	00004717          	auipc	a4,0x4
    800061e8:	2d070713          	addi	a4,a4,720 # 8000a4b4 <ticks>
    800061ec:	00072783          	lw	a5,0(a4)
    800061f0:	01013403          	ld	s0,16(sp)
    800061f4:	01813083          	ld	ra,24(sp)
    800061f8:	00048513          	mv	a0,s1
    800061fc:	0017879b          	addiw	a5,a5,1
    80006200:	00813483          	ld	s1,8(sp)
    80006204:	00f72023          	sw	a5,0(a4)
    80006208:	02010113          	addi	sp,sp,32
    8000620c:	00001317          	auipc	t1,0x1
    80006210:	4bc30067          	jr	1212(t1) # 800076c8 <release>

0000000080006214 <devintr>:
    80006214:	142027f3          	csrr	a5,scause
    80006218:	00000513          	li	a0,0
    8000621c:	0007c463          	bltz	a5,80006224 <devintr+0x10>
    80006220:	00008067          	ret
    80006224:	fe010113          	addi	sp,sp,-32
    80006228:	00813823          	sd	s0,16(sp)
    8000622c:	00113c23          	sd	ra,24(sp)
    80006230:	00913423          	sd	s1,8(sp)
    80006234:	02010413          	addi	s0,sp,32
    80006238:	0ff7f713          	andi	a4,a5,255
    8000623c:	00900693          	li	a3,9
    80006240:	04d70c63          	beq	a4,a3,80006298 <devintr+0x84>
    80006244:	fff00713          	li	a4,-1
    80006248:	03f71713          	slli	a4,a4,0x3f
    8000624c:	00170713          	addi	a4,a4,1
    80006250:	00e78c63          	beq	a5,a4,80006268 <devintr+0x54>
    80006254:	01813083          	ld	ra,24(sp)
    80006258:	01013403          	ld	s0,16(sp)
    8000625c:	00813483          	ld	s1,8(sp)
    80006260:	02010113          	addi	sp,sp,32
    80006264:	00008067          	ret
    80006268:	00000097          	auipc	ra,0x0
    8000626c:	c8c080e7          	jalr	-884(ra) # 80005ef4 <cpuid>
    80006270:	06050663          	beqz	a0,800062dc <devintr+0xc8>
    80006274:	144027f3          	csrr	a5,sip
    80006278:	ffd7f793          	andi	a5,a5,-3
    8000627c:	14479073          	csrw	sip,a5
    80006280:	01813083          	ld	ra,24(sp)
    80006284:	01013403          	ld	s0,16(sp)
    80006288:	00813483          	ld	s1,8(sp)
    8000628c:	00200513          	li	a0,2
    80006290:	02010113          	addi	sp,sp,32
    80006294:	00008067          	ret
    80006298:	00000097          	auipc	ra,0x0
    8000629c:	24c080e7          	jalr	588(ra) # 800064e4 <plic_claim>
    800062a0:	00a00793          	li	a5,10
    800062a4:	00050493          	mv	s1,a0
    800062a8:	06f50663          	beq	a0,a5,80006314 <devintr+0x100>
    800062ac:	00100513          	li	a0,1
    800062b0:	fa0482e3          	beqz	s1,80006254 <devintr+0x40>
    800062b4:	00048593          	mv	a1,s1
    800062b8:	00002517          	auipc	a0,0x2
    800062bc:	33050513          	addi	a0,a0,816 # 800085e8 <CONSOLE_STATUS+0x5d8>
    800062c0:	00000097          	auipc	ra,0x0
    800062c4:	668080e7          	jalr	1640(ra) # 80006928 <__printf>
    800062c8:	00048513          	mv	a0,s1
    800062cc:	00000097          	auipc	ra,0x0
    800062d0:	250080e7          	jalr	592(ra) # 8000651c <plic_complete>
    800062d4:	00100513          	li	a0,1
    800062d8:	f7dff06f          	j	80006254 <devintr+0x40>
    800062dc:	00005517          	auipc	a0,0x5
    800062e0:	34450513          	addi	a0,a0,836 # 8000b620 <tickslock>
    800062e4:	00001097          	auipc	ra,0x1
    800062e8:	318080e7          	jalr	792(ra) # 800075fc <acquire>
    800062ec:	00004717          	auipc	a4,0x4
    800062f0:	1c870713          	addi	a4,a4,456 # 8000a4b4 <ticks>
    800062f4:	00072783          	lw	a5,0(a4)
    800062f8:	00005517          	auipc	a0,0x5
    800062fc:	32850513          	addi	a0,a0,808 # 8000b620 <tickslock>
    80006300:	0017879b          	addiw	a5,a5,1
    80006304:	00f72023          	sw	a5,0(a4)
    80006308:	00001097          	auipc	ra,0x1
    8000630c:	3c0080e7          	jalr	960(ra) # 800076c8 <release>
    80006310:	f65ff06f          	j	80006274 <devintr+0x60>
    80006314:	00001097          	auipc	ra,0x1
    80006318:	f1c080e7          	jalr	-228(ra) # 80007230 <uartintr>
    8000631c:	fadff06f          	j	800062c8 <devintr+0xb4>

0000000080006320 <kernelvec>:
    80006320:	f0010113          	addi	sp,sp,-256
    80006324:	00113023          	sd	ra,0(sp)
    80006328:	00213423          	sd	sp,8(sp)
    8000632c:	00313823          	sd	gp,16(sp)
    80006330:	00413c23          	sd	tp,24(sp)
    80006334:	02513023          	sd	t0,32(sp)
    80006338:	02613423          	sd	t1,40(sp)
    8000633c:	02713823          	sd	t2,48(sp)
    80006340:	02813c23          	sd	s0,56(sp)
    80006344:	04913023          	sd	s1,64(sp)
    80006348:	04a13423          	sd	a0,72(sp)
    8000634c:	04b13823          	sd	a1,80(sp)
    80006350:	04c13c23          	sd	a2,88(sp)
    80006354:	06d13023          	sd	a3,96(sp)
    80006358:	06e13423          	sd	a4,104(sp)
    8000635c:	06f13823          	sd	a5,112(sp)
    80006360:	07013c23          	sd	a6,120(sp)
    80006364:	09113023          	sd	a7,128(sp)
    80006368:	09213423          	sd	s2,136(sp)
    8000636c:	09313823          	sd	s3,144(sp)
    80006370:	09413c23          	sd	s4,152(sp)
    80006374:	0b513023          	sd	s5,160(sp)
    80006378:	0b613423          	sd	s6,168(sp)
    8000637c:	0b713823          	sd	s7,176(sp)
    80006380:	0b813c23          	sd	s8,184(sp)
    80006384:	0d913023          	sd	s9,192(sp)
    80006388:	0da13423          	sd	s10,200(sp)
    8000638c:	0db13823          	sd	s11,208(sp)
    80006390:	0dc13c23          	sd	t3,216(sp)
    80006394:	0fd13023          	sd	t4,224(sp)
    80006398:	0fe13423          	sd	t5,232(sp)
    8000639c:	0ff13823          	sd	t6,240(sp)
    800063a0:	cd5ff0ef          	jal	ra,80006074 <kerneltrap>
    800063a4:	00013083          	ld	ra,0(sp)
    800063a8:	00813103          	ld	sp,8(sp)
    800063ac:	01013183          	ld	gp,16(sp)
    800063b0:	02013283          	ld	t0,32(sp)
    800063b4:	02813303          	ld	t1,40(sp)
    800063b8:	03013383          	ld	t2,48(sp)
    800063bc:	03813403          	ld	s0,56(sp)
    800063c0:	04013483          	ld	s1,64(sp)
    800063c4:	04813503          	ld	a0,72(sp)
    800063c8:	05013583          	ld	a1,80(sp)
    800063cc:	05813603          	ld	a2,88(sp)
    800063d0:	06013683          	ld	a3,96(sp)
    800063d4:	06813703          	ld	a4,104(sp)
    800063d8:	07013783          	ld	a5,112(sp)
    800063dc:	07813803          	ld	a6,120(sp)
    800063e0:	08013883          	ld	a7,128(sp)
    800063e4:	08813903          	ld	s2,136(sp)
    800063e8:	09013983          	ld	s3,144(sp)
    800063ec:	09813a03          	ld	s4,152(sp)
    800063f0:	0a013a83          	ld	s5,160(sp)
    800063f4:	0a813b03          	ld	s6,168(sp)
    800063f8:	0b013b83          	ld	s7,176(sp)
    800063fc:	0b813c03          	ld	s8,184(sp)
    80006400:	0c013c83          	ld	s9,192(sp)
    80006404:	0c813d03          	ld	s10,200(sp)
    80006408:	0d013d83          	ld	s11,208(sp)
    8000640c:	0d813e03          	ld	t3,216(sp)
    80006410:	0e013e83          	ld	t4,224(sp)
    80006414:	0e813f03          	ld	t5,232(sp)
    80006418:	0f013f83          	ld	t6,240(sp)
    8000641c:	10010113          	addi	sp,sp,256
    80006420:	10200073          	sret
    80006424:	00000013          	nop
    80006428:	00000013          	nop
    8000642c:	00000013          	nop

0000000080006430 <timervec>:
    80006430:	34051573          	csrrw	a0,mscratch,a0
    80006434:	00b53023          	sd	a1,0(a0)
    80006438:	00c53423          	sd	a2,8(a0)
    8000643c:	00d53823          	sd	a3,16(a0)
    80006440:	01853583          	ld	a1,24(a0)
    80006444:	02053603          	ld	a2,32(a0)
    80006448:	0005b683          	ld	a3,0(a1)
    8000644c:	00c686b3          	add	a3,a3,a2
    80006450:	00d5b023          	sd	a3,0(a1)
    80006454:	00200593          	li	a1,2
    80006458:	14459073          	csrw	sip,a1
    8000645c:	01053683          	ld	a3,16(a0)
    80006460:	00853603          	ld	a2,8(a0)
    80006464:	00053583          	ld	a1,0(a0)
    80006468:	34051573          	csrrw	a0,mscratch,a0
    8000646c:	30200073          	mret

0000000080006470 <plicinit>:
    80006470:	ff010113          	addi	sp,sp,-16
    80006474:	00813423          	sd	s0,8(sp)
    80006478:	01010413          	addi	s0,sp,16
    8000647c:	00813403          	ld	s0,8(sp)
    80006480:	0c0007b7          	lui	a5,0xc000
    80006484:	00100713          	li	a4,1
    80006488:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000648c:	00e7a223          	sw	a4,4(a5)
    80006490:	01010113          	addi	sp,sp,16
    80006494:	00008067          	ret

0000000080006498 <plicinithart>:
    80006498:	ff010113          	addi	sp,sp,-16
    8000649c:	00813023          	sd	s0,0(sp)
    800064a0:	00113423          	sd	ra,8(sp)
    800064a4:	01010413          	addi	s0,sp,16
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	a4c080e7          	jalr	-1460(ra) # 80005ef4 <cpuid>
    800064b0:	0085171b          	slliw	a4,a0,0x8
    800064b4:	0c0027b7          	lui	a5,0xc002
    800064b8:	00e787b3          	add	a5,a5,a4
    800064bc:	40200713          	li	a4,1026
    800064c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800064c4:	00813083          	ld	ra,8(sp)
    800064c8:	00013403          	ld	s0,0(sp)
    800064cc:	00d5151b          	slliw	a0,a0,0xd
    800064d0:	0c2017b7          	lui	a5,0xc201
    800064d4:	00a78533          	add	a0,a5,a0
    800064d8:	00052023          	sw	zero,0(a0)
    800064dc:	01010113          	addi	sp,sp,16
    800064e0:	00008067          	ret

00000000800064e4 <plic_claim>:
    800064e4:	ff010113          	addi	sp,sp,-16
    800064e8:	00813023          	sd	s0,0(sp)
    800064ec:	00113423          	sd	ra,8(sp)
    800064f0:	01010413          	addi	s0,sp,16
    800064f4:	00000097          	auipc	ra,0x0
    800064f8:	a00080e7          	jalr	-1536(ra) # 80005ef4 <cpuid>
    800064fc:	00813083          	ld	ra,8(sp)
    80006500:	00013403          	ld	s0,0(sp)
    80006504:	00d5151b          	slliw	a0,a0,0xd
    80006508:	0c2017b7          	lui	a5,0xc201
    8000650c:	00a78533          	add	a0,a5,a0
    80006510:	00452503          	lw	a0,4(a0)
    80006514:	01010113          	addi	sp,sp,16
    80006518:	00008067          	ret

000000008000651c <plic_complete>:
    8000651c:	fe010113          	addi	sp,sp,-32
    80006520:	00813823          	sd	s0,16(sp)
    80006524:	00913423          	sd	s1,8(sp)
    80006528:	00113c23          	sd	ra,24(sp)
    8000652c:	02010413          	addi	s0,sp,32
    80006530:	00050493          	mv	s1,a0
    80006534:	00000097          	auipc	ra,0x0
    80006538:	9c0080e7          	jalr	-1600(ra) # 80005ef4 <cpuid>
    8000653c:	01813083          	ld	ra,24(sp)
    80006540:	01013403          	ld	s0,16(sp)
    80006544:	00d5179b          	slliw	a5,a0,0xd
    80006548:	0c201737          	lui	a4,0xc201
    8000654c:	00f707b3          	add	a5,a4,a5
    80006550:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006554:	00813483          	ld	s1,8(sp)
    80006558:	02010113          	addi	sp,sp,32
    8000655c:	00008067          	ret

0000000080006560 <consolewrite>:
    80006560:	fb010113          	addi	sp,sp,-80
    80006564:	04813023          	sd	s0,64(sp)
    80006568:	04113423          	sd	ra,72(sp)
    8000656c:	02913c23          	sd	s1,56(sp)
    80006570:	03213823          	sd	s2,48(sp)
    80006574:	03313423          	sd	s3,40(sp)
    80006578:	03413023          	sd	s4,32(sp)
    8000657c:	01513c23          	sd	s5,24(sp)
    80006580:	05010413          	addi	s0,sp,80
    80006584:	06c05c63          	blez	a2,800065fc <consolewrite+0x9c>
    80006588:	00060993          	mv	s3,a2
    8000658c:	00050a13          	mv	s4,a0
    80006590:	00058493          	mv	s1,a1
    80006594:	00000913          	li	s2,0
    80006598:	fff00a93          	li	s5,-1
    8000659c:	01c0006f          	j	800065b8 <consolewrite+0x58>
    800065a0:	fbf44503          	lbu	a0,-65(s0)
    800065a4:	0019091b          	addiw	s2,s2,1
    800065a8:	00148493          	addi	s1,s1,1
    800065ac:	00001097          	auipc	ra,0x1
    800065b0:	a9c080e7          	jalr	-1380(ra) # 80007048 <uartputc>
    800065b4:	03298063          	beq	s3,s2,800065d4 <consolewrite+0x74>
    800065b8:	00048613          	mv	a2,s1
    800065bc:	00100693          	li	a3,1
    800065c0:	000a0593          	mv	a1,s4
    800065c4:	fbf40513          	addi	a0,s0,-65
    800065c8:	00000097          	auipc	ra,0x0
    800065cc:	9e4080e7          	jalr	-1564(ra) # 80005fac <either_copyin>
    800065d0:	fd5518e3          	bne	a0,s5,800065a0 <consolewrite+0x40>
    800065d4:	04813083          	ld	ra,72(sp)
    800065d8:	04013403          	ld	s0,64(sp)
    800065dc:	03813483          	ld	s1,56(sp)
    800065e0:	02813983          	ld	s3,40(sp)
    800065e4:	02013a03          	ld	s4,32(sp)
    800065e8:	01813a83          	ld	s5,24(sp)
    800065ec:	00090513          	mv	a0,s2
    800065f0:	03013903          	ld	s2,48(sp)
    800065f4:	05010113          	addi	sp,sp,80
    800065f8:	00008067          	ret
    800065fc:	00000913          	li	s2,0
    80006600:	fd5ff06f          	j	800065d4 <consolewrite+0x74>

0000000080006604 <consoleread>:
    80006604:	f9010113          	addi	sp,sp,-112
    80006608:	06813023          	sd	s0,96(sp)
    8000660c:	04913c23          	sd	s1,88(sp)
    80006610:	05213823          	sd	s2,80(sp)
    80006614:	05313423          	sd	s3,72(sp)
    80006618:	05413023          	sd	s4,64(sp)
    8000661c:	03513c23          	sd	s5,56(sp)
    80006620:	03613823          	sd	s6,48(sp)
    80006624:	03713423          	sd	s7,40(sp)
    80006628:	03813023          	sd	s8,32(sp)
    8000662c:	06113423          	sd	ra,104(sp)
    80006630:	01913c23          	sd	s9,24(sp)
    80006634:	07010413          	addi	s0,sp,112
    80006638:	00060b93          	mv	s7,a2
    8000663c:	00050913          	mv	s2,a0
    80006640:	00058c13          	mv	s8,a1
    80006644:	00060b1b          	sext.w	s6,a2
    80006648:	00005497          	auipc	s1,0x5
    8000664c:	00048493          	mv	s1,s1
    80006650:	00400993          	li	s3,4
    80006654:	fff00a13          	li	s4,-1
    80006658:	00a00a93          	li	s5,10
    8000665c:	05705e63          	blez	s7,800066b8 <consoleread+0xb4>
    80006660:	09c4a703          	lw	a4,156(s1) # 8000b6e4 <cons+0x9c>
    80006664:	0984a783          	lw	a5,152(s1)
    80006668:	0007071b          	sext.w	a4,a4
    8000666c:	08e78463          	beq	a5,a4,800066f4 <consoleread+0xf0>
    80006670:	07f7f713          	andi	a4,a5,127
    80006674:	00e48733          	add	a4,s1,a4
    80006678:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000667c:	0017869b          	addiw	a3,a5,1
    80006680:	08d4ac23          	sw	a3,152(s1)
    80006684:	00070c9b          	sext.w	s9,a4
    80006688:	0b370663          	beq	a4,s3,80006734 <consoleread+0x130>
    8000668c:	00100693          	li	a3,1
    80006690:	f9f40613          	addi	a2,s0,-97
    80006694:	000c0593          	mv	a1,s8
    80006698:	00090513          	mv	a0,s2
    8000669c:	f8e40fa3          	sb	a4,-97(s0)
    800066a0:	00000097          	auipc	ra,0x0
    800066a4:	8c0080e7          	jalr	-1856(ra) # 80005f60 <either_copyout>
    800066a8:	01450863          	beq	a0,s4,800066b8 <consoleread+0xb4>
    800066ac:	001c0c13          	addi	s8,s8,1
    800066b0:	fffb8b9b          	addiw	s7,s7,-1
    800066b4:	fb5c94e3          	bne	s9,s5,8000665c <consoleread+0x58>
    800066b8:	000b851b          	sext.w	a0,s7
    800066bc:	06813083          	ld	ra,104(sp)
    800066c0:	06013403          	ld	s0,96(sp)
    800066c4:	05813483          	ld	s1,88(sp)
    800066c8:	05013903          	ld	s2,80(sp)
    800066cc:	04813983          	ld	s3,72(sp)
    800066d0:	04013a03          	ld	s4,64(sp)
    800066d4:	03813a83          	ld	s5,56(sp)
    800066d8:	02813b83          	ld	s7,40(sp)
    800066dc:	02013c03          	ld	s8,32(sp)
    800066e0:	01813c83          	ld	s9,24(sp)
    800066e4:	40ab053b          	subw	a0,s6,a0
    800066e8:	03013b03          	ld	s6,48(sp)
    800066ec:	07010113          	addi	sp,sp,112
    800066f0:	00008067          	ret
    800066f4:	00001097          	auipc	ra,0x1
    800066f8:	1d8080e7          	jalr	472(ra) # 800078cc <push_on>
    800066fc:	0984a703          	lw	a4,152(s1)
    80006700:	09c4a783          	lw	a5,156(s1)
    80006704:	0007879b          	sext.w	a5,a5
    80006708:	fef70ce3          	beq	a4,a5,80006700 <consoleread+0xfc>
    8000670c:	00001097          	auipc	ra,0x1
    80006710:	234080e7          	jalr	564(ra) # 80007940 <pop_on>
    80006714:	0984a783          	lw	a5,152(s1)
    80006718:	07f7f713          	andi	a4,a5,127
    8000671c:	00e48733          	add	a4,s1,a4
    80006720:	01874703          	lbu	a4,24(a4)
    80006724:	0017869b          	addiw	a3,a5,1
    80006728:	08d4ac23          	sw	a3,152(s1)
    8000672c:	00070c9b          	sext.w	s9,a4
    80006730:	f5371ee3          	bne	a4,s3,8000668c <consoleread+0x88>
    80006734:	000b851b          	sext.w	a0,s7
    80006738:	f96bf2e3          	bgeu	s7,s6,800066bc <consoleread+0xb8>
    8000673c:	08f4ac23          	sw	a5,152(s1)
    80006740:	f7dff06f          	j	800066bc <consoleread+0xb8>

0000000080006744 <consputc>:
    80006744:	10000793          	li	a5,256
    80006748:	00f50663          	beq	a0,a5,80006754 <consputc+0x10>
    8000674c:	00001317          	auipc	t1,0x1
    80006750:	9f430067          	jr	-1548(t1) # 80007140 <uartputc_sync>
    80006754:	ff010113          	addi	sp,sp,-16
    80006758:	00113423          	sd	ra,8(sp)
    8000675c:	00813023          	sd	s0,0(sp)
    80006760:	01010413          	addi	s0,sp,16
    80006764:	00800513          	li	a0,8
    80006768:	00001097          	auipc	ra,0x1
    8000676c:	9d8080e7          	jalr	-1576(ra) # 80007140 <uartputc_sync>
    80006770:	02000513          	li	a0,32
    80006774:	00001097          	auipc	ra,0x1
    80006778:	9cc080e7          	jalr	-1588(ra) # 80007140 <uartputc_sync>
    8000677c:	00013403          	ld	s0,0(sp)
    80006780:	00813083          	ld	ra,8(sp)
    80006784:	00800513          	li	a0,8
    80006788:	01010113          	addi	sp,sp,16
    8000678c:	00001317          	auipc	t1,0x1
    80006790:	9b430067          	jr	-1612(t1) # 80007140 <uartputc_sync>

0000000080006794 <consoleintr>:
    80006794:	fe010113          	addi	sp,sp,-32
    80006798:	00813823          	sd	s0,16(sp)
    8000679c:	00913423          	sd	s1,8(sp)
    800067a0:	01213023          	sd	s2,0(sp)
    800067a4:	00113c23          	sd	ra,24(sp)
    800067a8:	02010413          	addi	s0,sp,32
    800067ac:	00005917          	auipc	s2,0x5
    800067b0:	e9c90913          	addi	s2,s2,-356 # 8000b648 <cons>
    800067b4:	00050493          	mv	s1,a0
    800067b8:	00090513          	mv	a0,s2
    800067bc:	00001097          	auipc	ra,0x1
    800067c0:	e40080e7          	jalr	-448(ra) # 800075fc <acquire>
    800067c4:	02048c63          	beqz	s1,800067fc <consoleintr+0x68>
    800067c8:	0a092783          	lw	a5,160(s2)
    800067cc:	09892703          	lw	a4,152(s2)
    800067d0:	07f00693          	li	a3,127
    800067d4:	40e7873b          	subw	a4,a5,a4
    800067d8:	02e6e263          	bltu	a3,a4,800067fc <consoleintr+0x68>
    800067dc:	00d00713          	li	a4,13
    800067e0:	04e48063          	beq	s1,a4,80006820 <consoleintr+0x8c>
    800067e4:	07f7f713          	andi	a4,a5,127
    800067e8:	00e90733          	add	a4,s2,a4
    800067ec:	0017879b          	addiw	a5,a5,1
    800067f0:	0af92023          	sw	a5,160(s2)
    800067f4:	00970c23          	sb	s1,24(a4)
    800067f8:	08f92e23          	sw	a5,156(s2)
    800067fc:	01013403          	ld	s0,16(sp)
    80006800:	01813083          	ld	ra,24(sp)
    80006804:	00813483          	ld	s1,8(sp)
    80006808:	00013903          	ld	s2,0(sp)
    8000680c:	00005517          	auipc	a0,0x5
    80006810:	e3c50513          	addi	a0,a0,-452 # 8000b648 <cons>
    80006814:	02010113          	addi	sp,sp,32
    80006818:	00001317          	auipc	t1,0x1
    8000681c:	eb030067          	jr	-336(t1) # 800076c8 <release>
    80006820:	00a00493          	li	s1,10
    80006824:	fc1ff06f          	j	800067e4 <consoleintr+0x50>

0000000080006828 <consoleinit>:
    80006828:	fe010113          	addi	sp,sp,-32
    8000682c:	00113c23          	sd	ra,24(sp)
    80006830:	00813823          	sd	s0,16(sp)
    80006834:	00913423          	sd	s1,8(sp)
    80006838:	02010413          	addi	s0,sp,32
    8000683c:	00005497          	auipc	s1,0x5
    80006840:	e0c48493          	addi	s1,s1,-500 # 8000b648 <cons>
    80006844:	00048513          	mv	a0,s1
    80006848:	00002597          	auipc	a1,0x2
    8000684c:	df858593          	addi	a1,a1,-520 # 80008640 <CONSOLE_STATUS+0x630>
    80006850:	00001097          	auipc	ra,0x1
    80006854:	d88080e7          	jalr	-632(ra) # 800075d8 <initlock>
    80006858:	00000097          	auipc	ra,0x0
    8000685c:	7ac080e7          	jalr	1964(ra) # 80007004 <uartinit>
    80006860:	01813083          	ld	ra,24(sp)
    80006864:	01013403          	ld	s0,16(sp)
    80006868:	00000797          	auipc	a5,0x0
    8000686c:	d9c78793          	addi	a5,a5,-612 # 80006604 <consoleread>
    80006870:	0af4bc23          	sd	a5,184(s1)
    80006874:	00000797          	auipc	a5,0x0
    80006878:	cec78793          	addi	a5,a5,-788 # 80006560 <consolewrite>
    8000687c:	0cf4b023          	sd	a5,192(s1)
    80006880:	00813483          	ld	s1,8(sp)
    80006884:	02010113          	addi	sp,sp,32
    80006888:	00008067          	ret

000000008000688c <console_read>:
    8000688c:	ff010113          	addi	sp,sp,-16
    80006890:	00813423          	sd	s0,8(sp)
    80006894:	01010413          	addi	s0,sp,16
    80006898:	00813403          	ld	s0,8(sp)
    8000689c:	00005317          	auipc	t1,0x5
    800068a0:	e6433303          	ld	t1,-412(t1) # 8000b700 <devsw+0x10>
    800068a4:	01010113          	addi	sp,sp,16
    800068a8:	00030067          	jr	t1

00000000800068ac <console_write>:
    800068ac:	ff010113          	addi	sp,sp,-16
    800068b0:	00813423          	sd	s0,8(sp)
    800068b4:	01010413          	addi	s0,sp,16
    800068b8:	00813403          	ld	s0,8(sp)
    800068bc:	00005317          	auipc	t1,0x5
    800068c0:	e4c33303          	ld	t1,-436(t1) # 8000b708 <devsw+0x18>
    800068c4:	01010113          	addi	sp,sp,16
    800068c8:	00030067          	jr	t1

00000000800068cc <panic>:
    800068cc:	fe010113          	addi	sp,sp,-32
    800068d0:	00113c23          	sd	ra,24(sp)
    800068d4:	00813823          	sd	s0,16(sp)
    800068d8:	00913423          	sd	s1,8(sp)
    800068dc:	02010413          	addi	s0,sp,32
    800068e0:	00050493          	mv	s1,a0
    800068e4:	00002517          	auipc	a0,0x2
    800068e8:	d6450513          	addi	a0,a0,-668 # 80008648 <CONSOLE_STATUS+0x638>
    800068ec:	00005797          	auipc	a5,0x5
    800068f0:	ea07ae23          	sw	zero,-324(a5) # 8000b7a8 <pr+0x18>
    800068f4:	00000097          	auipc	ra,0x0
    800068f8:	034080e7          	jalr	52(ra) # 80006928 <__printf>
    800068fc:	00048513          	mv	a0,s1
    80006900:	00000097          	auipc	ra,0x0
    80006904:	028080e7          	jalr	40(ra) # 80006928 <__printf>
    80006908:	00002517          	auipc	a0,0x2
    8000690c:	8a050513          	addi	a0,a0,-1888 # 800081a8 <CONSOLE_STATUS+0x198>
    80006910:	00000097          	auipc	ra,0x0
    80006914:	018080e7          	jalr	24(ra) # 80006928 <__printf>
    80006918:	00100793          	li	a5,1
    8000691c:	00004717          	auipc	a4,0x4
    80006920:	b8f72e23          	sw	a5,-1124(a4) # 8000a4b8 <panicked>
    80006924:	0000006f          	j	80006924 <panic+0x58>

0000000080006928 <__printf>:
    80006928:	f3010113          	addi	sp,sp,-208
    8000692c:	08813023          	sd	s0,128(sp)
    80006930:	07313423          	sd	s3,104(sp)
    80006934:	09010413          	addi	s0,sp,144
    80006938:	05813023          	sd	s8,64(sp)
    8000693c:	08113423          	sd	ra,136(sp)
    80006940:	06913c23          	sd	s1,120(sp)
    80006944:	07213823          	sd	s2,112(sp)
    80006948:	07413023          	sd	s4,96(sp)
    8000694c:	05513c23          	sd	s5,88(sp)
    80006950:	05613823          	sd	s6,80(sp)
    80006954:	05713423          	sd	s7,72(sp)
    80006958:	03913c23          	sd	s9,56(sp)
    8000695c:	03a13823          	sd	s10,48(sp)
    80006960:	03b13423          	sd	s11,40(sp)
    80006964:	00005317          	auipc	t1,0x5
    80006968:	e2c30313          	addi	t1,t1,-468 # 8000b790 <pr>
    8000696c:	01832c03          	lw	s8,24(t1)
    80006970:	00b43423          	sd	a1,8(s0)
    80006974:	00c43823          	sd	a2,16(s0)
    80006978:	00d43c23          	sd	a3,24(s0)
    8000697c:	02e43023          	sd	a4,32(s0)
    80006980:	02f43423          	sd	a5,40(s0)
    80006984:	03043823          	sd	a6,48(s0)
    80006988:	03143c23          	sd	a7,56(s0)
    8000698c:	00050993          	mv	s3,a0
    80006990:	4a0c1663          	bnez	s8,80006e3c <__printf+0x514>
    80006994:	60098c63          	beqz	s3,80006fac <__printf+0x684>
    80006998:	0009c503          	lbu	a0,0(s3)
    8000699c:	00840793          	addi	a5,s0,8
    800069a0:	f6f43c23          	sd	a5,-136(s0)
    800069a4:	00000493          	li	s1,0
    800069a8:	22050063          	beqz	a0,80006bc8 <__printf+0x2a0>
    800069ac:	00002a37          	lui	s4,0x2
    800069b0:	00018ab7          	lui	s5,0x18
    800069b4:	000f4b37          	lui	s6,0xf4
    800069b8:	00989bb7          	lui	s7,0x989
    800069bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800069c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800069c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800069c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800069cc:	00148c9b          	addiw	s9,s1,1
    800069d0:	02500793          	li	a5,37
    800069d4:	01998933          	add	s2,s3,s9
    800069d8:	38f51263          	bne	a0,a5,80006d5c <__printf+0x434>
    800069dc:	00094783          	lbu	a5,0(s2)
    800069e0:	00078c9b          	sext.w	s9,a5
    800069e4:	1e078263          	beqz	a5,80006bc8 <__printf+0x2a0>
    800069e8:	0024849b          	addiw	s1,s1,2
    800069ec:	07000713          	li	a4,112
    800069f0:	00998933          	add	s2,s3,s1
    800069f4:	38e78a63          	beq	a5,a4,80006d88 <__printf+0x460>
    800069f8:	20f76863          	bltu	a4,a5,80006c08 <__printf+0x2e0>
    800069fc:	42a78863          	beq	a5,a0,80006e2c <__printf+0x504>
    80006a00:	06400713          	li	a4,100
    80006a04:	40e79663          	bne	a5,a4,80006e10 <__printf+0x4e8>
    80006a08:	f7843783          	ld	a5,-136(s0)
    80006a0c:	0007a603          	lw	a2,0(a5)
    80006a10:	00878793          	addi	a5,a5,8
    80006a14:	f6f43c23          	sd	a5,-136(s0)
    80006a18:	42064a63          	bltz	a2,80006e4c <__printf+0x524>
    80006a1c:	00a00713          	li	a4,10
    80006a20:	02e677bb          	remuw	a5,a2,a4
    80006a24:	00002d97          	auipc	s11,0x2
    80006a28:	c4cd8d93          	addi	s11,s11,-948 # 80008670 <digits>
    80006a2c:	00900593          	li	a1,9
    80006a30:	0006051b          	sext.w	a0,a2
    80006a34:	00000c93          	li	s9,0
    80006a38:	02079793          	slli	a5,a5,0x20
    80006a3c:	0207d793          	srli	a5,a5,0x20
    80006a40:	00fd87b3          	add	a5,s11,a5
    80006a44:	0007c783          	lbu	a5,0(a5)
    80006a48:	02e656bb          	divuw	a3,a2,a4
    80006a4c:	f8f40023          	sb	a5,-128(s0)
    80006a50:	14c5d863          	bge	a1,a2,80006ba0 <__printf+0x278>
    80006a54:	06300593          	li	a1,99
    80006a58:	00100c93          	li	s9,1
    80006a5c:	02e6f7bb          	remuw	a5,a3,a4
    80006a60:	02079793          	slli	a5,a5,0x20
    80006a64:	0207d793          	srli	a5,a5,0x20
    80006a68:	00fd87b3          	add	a5,s11,a5
    80006a6c:	0007c783          	lbu	a5,0(a5)
    80006a70:	02e6d73b          	divuw	a4,a3,a4
    80006a74:	f8f400a3          	sb	a5,-127(s0)
    80006a78:	12a5f463          	bgeu	a1,a0,80006ba0 <__printf+0x278>
    80006a7c:	00a00693          	li	a3,10
    80006a80:	00900593          	li	a1,9
    80006a84:	02d777bb          	remuw	a5,a4,a3
    80006a88:	02079793          	slli	a5,a5,0x20
    80006a8c:	0207d793          	srli	a5,a5,0x20
    80006a90:	00fd87b3          	add	a5,s11,a5
    80006a94:	0007c503          	lbu	a0,0(a5)
    80006a98:	02d757bb          	divuw	a5,a4,a3
    80006a9c:	f8a40123          	sb	a0,-126(s0)
    80006aa0:	48e5f263          	bgeu	a1,a4,80006f24 <__printf+0x5fc>
    80006aa4:	06300513          	li	a0,99
    80006aa8:	02d7f5bb          	remuw	a1,a5,a3
    80006aac:	02059593          	slli	a1,a1,0x20
    80006ab0:	0205d593          	srli	a1,a1,0x20
    80006ab4:	00bd85b3          	add	a1,s11,a1
    80006ab8:	0005c583          	lbu	a1,0(a1)
    80006abc:	02d7d7bb          	divuw	a5,a5,a3
    80006ac0:	f8b401a3          	sb	a1,-125(s0)
    80006ac4:	48e57263          	bgeu	a0,a4,80006f48 <__printf+0x620>
    80006ac8:	3e700513          	li	a0,999
    80006acc:	02d7f5bb          	remuw	a1,a5,a3
    80006ad0:	02059593          	slli	a1,a1,0x20
    80006ad4:	0205d593          	srli	a1,a1,0x20
    80006ad8:	00bd85b3          	add	a1,s11,a1
    80006adc:	0005c583          	lbu	a1,0(a1)
    80006ae0:	02d7d7bb          	divuw	a5,a5,a3
    80006ae4:	f8b40223          	sb	a1,-124(s0)
    80006ae8:	46e57663          	bgeu	a0,a4,80006f54 <__printf+0x62c>
    80006aec:	02d7f5bb          	remuw	a1,a5,a3
    80006af0:	02059593          	slli	a1,a1,0x20
    80006af4:	0205d593          	srli	a1,a1,0x20
    80006af8:	00bd85b3          	add	a1,s11,a1
    80006afc:	0005c583          	lbu	a1,0(a1)
    80006b00:	02d7d7bb          	divuw	a5,a5,a3
    80006b04:	f8b402a3          	sb	a1,-123(s0)
    80006b08:	46ea7863          	bgeu	s4,a4,80006f78 <__printf+0x650>
    80006b0c:	02d7f5bb          	remuw	a1,a5,a3
    80006b10:	02059593          	slli	a1,a1,0x20
    80006b14:	0205d593          	srli	a1,a1,0x20
    80006b18:	00bd85b3          	add	a1,s11,a1
    80006b1c:	0005c583          	lbu	a1,0(a1)
    80006b20:	02d7d7bb          	divuw	a5,a5,a3
    80006b24:	f8b40323          	sb	a1,-122(s0)
    80006b28:	3eeaf863          	bgeu	s5,a4,80006f18 <__printf+0x5f0>
    80006b2c:	02d7f5bb          	remuw	a1,a5,a3
    80006b30:	02059593          	slli	a1,a1,0x20
    80006b34:	0205d593          	srli	a1,a1,0x20
    80006b38:	00bd85b3          	add	a1,s11,a1
    80006b3c:	0005c583          	lbu	a1,0(a1)
    80006b40:	02d7d7bb          	divuw	a5,a5,a3
    80006b44:	f8b403a3          	sb	a1,-121(s0)
    80006b48:	42eb7e63          	bgeu	s6,a4,80006f84 <__printf+0x65c>
    80006b4c:	02d7f5bb          	remuw	a1,a5,a3
    80006b50:	02059593          	slli	a1,a1,0x20
    80006b54:	0205d593          	srli	a1,a1,0x20
    80006b58:	00bd85b3          	add	a1,s11,a1
    80006b5c:	0005c583          	lbu	a1,0(a1)
    80006b60:	02d7d7bb          	divuw	a5,a5,a3
    80006b64:	f8b40423          	sb	a1,-120(s0)
    80006b68:	42ebfc63          	bgeu	s7,a4,80006fa0 <__printf+0x678>
    80006b6c:	02079793          	slli	a5,a5,0x20
    80006b70:	0207d793          	srli	a5,a5,0x20
    80006b74:	00fd8db3          	add	s11,s11,a5
    80006b78:	000dc703          	lbu	a4,0(s11)
    80006b7c:	00a00793          	li	a5,10
    80006b80:	00900c93          	li	s9,9
    80006b84:	f8e404a3          	sb	a4,-119(s0)
    80006b88:	00065c63          	bgez	a2,80006ba0 <__printf+0x278>
    80006b8c:	f9040713          	addi	a4,s0,-112
    80006b90:	00f70733          	add	a4,a4,a5
    80006b94:	02d00693          	li	a3,45
    80006b98:	fed70823          	sb	a3,-16(a4)
    80006b9c:	00078c93          	mv	s9,a5
    80006ba0:	f8040793          	addi	a5,s0,-128
    80006ba4:	01978cb3          	add	s9,a5,s9
    80006ba8:	f7f40d13          	addi	s10,s0,-129
    80006bac:	000cc503          	lbu	a0,0(s9)
    80006bb0:	fffc8c93          	addi	s9,s9,-1
    80006bb4:	00000097          	auipc	ra,0x0
    80006bb8:	b90080e7          	jalr	-1136(ra) # 80006744 <consputc>
    80006bbc:	ffac98e3          	bne	s9,s10,80006bac <__printf+0x284>
    80006bc0:	00094503          	lbu	a0,0(s2)
    80006bc4:	e00514e3          	bnez	a0,800069cc <__printf+0xa4>
    80006bc8:	1a0c1663          	bnez	s8,80006d74 <__printf+0x44c>
    80006bcc:	08813083          	ld	ra,136(sp)
    80006bd0:	08013403          	ld	s0,128(sp)
    80006bd4:	07813483          	ld	s1,120(sp)
    80006bd8:	07013903          	ld	s2,112(sp)
    80006bdc:	06813983          	ld	s3,104(sp)
    80006be0:	06013a03          	ld	s4,96(sp)
    80006be4:	05813a83          	ld	s5,88(sp)
    80006be8:	05013b03          	ld	s6,80(sp)
    80006bec:	04813b83          	ld	s7,72(sp)
    80006bf0:	04013c03          	ld	s8,64(sp)
    80006bf4:	03813c83          	ld	s9,56(sp)
    80006bf8:	03013d03          	ld	s10,48(sp)
    80006bfc:	02813d83          	ld	s11,40(sp)
    80006c00:	0d010113          	addi	sp,sp,208
    80006c04:	00008067          	ret
    80006c08:	07300713          	li	a4,115
    80006c0c:	1ce78a63          	beq	a5,a4,80006de0 <__printf+0x4b8>
    80006c10:	07800713          	li	a4,120
    80006c14:	1ee79e63          	bne	a5,a4,80006e10 <__printf+0x4e8>
    80006c18:	f7843783          	ld	a5,-136(s0)
    80006c1c:	0007a703          	lw	a4,0(a5)
    80006c20:	00878793          	addi	a5,a5,8
    80006c24:	f6f43c23          	sd	a5,-136(s0)
    80006c28:	28074263          	bltz	a4,80006eac <__printf+0x584>
    80006c2c:	00002d97          	auipc	s11,0x2
    80006c30:	a44d8d93          	addi	s11,s11,-1468 # 80008670 <digits>
    80006c34:	00f77793          	andi	a5,a4,15
    80006c38:	00fd87b3          	add	a5,s11,a5
    80006c3c:	0007c683          	lbu	a3,0(a5)
    80006c40:	00f00613          	li	a2,15
    80006c44:	0007079b          	sext.w	a5,a4
    80006c48:	f8d40023          	sb	a3,-128(s0)
    80006c4c:	0047559b          	srliw	a1,a4,0x4
    80006c50:	0047569b          	srliw	a3,a4,0x4
    80006c54:	00000c93          	li	s9,0
    80006c58:	0ee65063          	bge	a2,a4,80006d38 <__printf+0x410>
    80006c5c:	00f6f693          	andi	a3,a3,15
    80006c60:	00dd86b3          	add	a3,s11,a3
    80006c64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006c68:	0087d79b          	srliw	a5,a5,0x8
    80006c6c:	00100c93          	li	s9,1
    80006c70:	f8d400a3          	sb	a3,-127(s0)
    80006c74:	0cb67263          	bgeu	a2,a1,80006d38 <__printf+0x410>
    80006c78:	00f7f693          	andi	a3,a5,15
    80006c7c:	00dd86b3          	add	a3,s11,a3
    80006c80:	0006c583          	lbu	a1,0(a3)
    80006c84:	00f00613          	li	a2,15
    80006c88:	0047d69b          	srliw	a3,a5,0x4
    80006c8c:	f8b40123          	sb	a1,-126(s0)
    80006c90:	0047d593          	srli	a1,a5,0x4
    80006c94:	28f67e63          	bgeu	a2,a5,80006f30 <__printf+0x608>
    80006c98:	00f6f693          	andi	a3,a3,15
    80006c9c:	00dd86b3          	add	a3,s11,a3
    80006ca0:	0006c503          	lbu	a0,0(a3)
    80006ca4:	0087d813          	srli	a6,a5,0x8
    80006ca8:	0087d69b          	srliw	a3,a5,0x8
    80006cac:	f8a401a3          	sb	a0,-125(s0)
    80006cb0:	28b67663          	bgeu	a2,a1,80006f3c <__printf+0x614>
    80006cb4:	00f6f693          	andi	a3,a3,15
    80006cb8:	00dd86b3          	add	a3,s11,a3
    80006cbc:	0006c583          	lbu	a1,0(a3)
    80006cc0:	00c7d513          	srli	a0,a5,0xc
    80006cc4:	00c7d69b          	srliw	a3,a5,0xc
    80006cc8:	f8b40223          	sb	a1,-124(s0)
    80006ccc:	29067a63          	bgeu	a2,a6,80006f60 <__printf+0x638>
    80006cd0:	00f6f693          	andi	a3,a3,15
    80006cd4:	00dd86b3          	add	a3,s11,a3
    80006cd8:	0006c583          	lbu	a1,0(a3)
    80006cdc:	0107d813          	srli	a6,a5,0x10
    80006ce0:	0107d69b          	srliw	a3,a5,0x10
    80006ce4:	f8b402a3          	sb	a1,-123(s0)
    80006ce8:	28a67263          	bgeu	a2,a0,80006f6c <__printf+0x644>
    80006cec:	00f6f693          	andi	a3,a3,15
    80006cf0:	00dd86b3          	add	a3,s11,a3
    80006cf4:	0006c683          	lbu	a3,0(a3)
    80006cf8:	0147d79b          	srliw	a5,a5,0x14
    80006cfc:	f8d40323          	sb	a3,-122(s0)
    80006d00:	21067663          	bgeu	a2,a6,80006f0c <__printf+0x5e4>
    80006d04:	02079793          	slli	a5,a5,0x20
    80006d08:	0207d793          	srli	a5,a5,0x20
    80006d0c:	00fd8db3          	add	s11,s11,a5
    80006d10:	000dc683          	lbu	a3,0(s11)
    80006d14:	00800793          	li	a5,8
    80006d18:	00700c93          	li	s9,7
    80006d1c:	f8d403a3          	sb	a3,-121(s0)
    80006d20:	00075c63          	bgez	a4,80006d38 <__printf+0x410>
    80006d24:	f9040713          	addi	a4,s0,-112
    80006d28:	00f70733          	add	a4,a4,a5
    80006d2c:	02d00693          	li	a3,45
    80006d30:	fed70823          	sb	a3,-16(a4)
    80006d34:	00078c93          	mv	s9,a5
    80006d38:	f8040793          	addi	a5,s0,-128
    80006d3c:	01978cb3          	add	s9,a5,s9
    80006d40:	f7f40d13          	addi	s10,s0,-129
    80006d44:	000cc503          	lbu	a0,0(s9)
    80006d48:	fffc8c93          	addi	s9,s9,-1
    80006d4c:	00000097          	auipc	ra,0x0
    80006d50:	9f8080e7          	jalr	-1544(ra) # 80006744 <consputc>
    80006d54:	ff9d18e3          	bne	s10,s9,80006d44 <__printf+0x41c>
    80006d58:	0100006f          	j	80006d68 <__printf+0x440>
    80006d5c:	00000097          	auipc	ra,0x0
    80006d60:	9e8080e7          	jalr	-1560(ra) # 80006744 <consputc>
    80006d64:	000c8493          	mv	s1,s9
    80006d68:	00094503          	lbu	a0,0(s2)
    80006d6c:	c60510e3          	bnez	a0,800069cc <__printf+0xa4>
    80006d70:	e40c0ee3          	beqz	s8,80006bcc <__printf+0x2a4>
    80006d74:	00005517          	auipc	a0,0x5
    80006d78:	a1c50513          	addi	a0,a0,-1508 # 8000b790 <pr>
    80006d7c:	00001097          	auipc	ra,0x1
    80006d80:	94c080e7          	jalr	-1716(ra) # 800076c8 <release>
    80006d84:	e49ff06f          	j	80006bcc <__printf+0x2a4>
    80006d88:	f7843783          	ld	a5,-136(s0)
    80006d8c:	03000513          	li	a0,48
    80006d90:	01000d13          	li	s10,16
    80006d94:	00878713          	addi	a4,a5,8
    80006d98:	0007bc83          	ld	s9,0(a5)
    80006d9c:	f6e43c23          	sd	a4,-136(s0)
    80006da0:	00000097          	auipc	ra,0x0
    80006da4:	9a4080e7          	jalr	-1628(ra) # 80006744 <consputc>
    80006da8:	07800513          	li	a0,120
    80006dac:	00000097          	auipc	ra,0x0
    80006db0:	998080e7          	jalr	-1640(ra) # 80006744 <consputc>
    80006db4:	00002d97          	auipc	s11,0x2
    80006db8:	8bcd8d93          	addi	s11,s11,-1860 # 80008670 <digits>
    80006dbc:	03ccd793          	srli	a5,s9,0x3c
    80006dc0:	00fd87b3          	add	a5,s11,a5
    80006dc4:	0007c503          	lbu	a0,0(a5)
    80006dc8:	fffd0d1b          	addiw	s10,s10,-1
    80006dcc:	004c9c93          	slli	s9,s9,0x4
    80006dd0:	00000097          	auipc	ra,0x0
    80006dd4:	974080e7          	jalr	-1676(ra) # 80006744 <consputc>
    80006dd8:	fe0d12e3          	bnez	s10,80006dbc <__printf+0x494>
    80006ddc:	f8dff06f          	j	80006d68 <__printf+0x440>
    80006de0:	f7843783          	ld	a5,-136(s0)
    80006de4:	0007bc83          	ld	s9,0(a5)
    80006de8:	00878793          	addi	a5,a5,8
    80006dec:	f6f43c23          	sd	a5,-136(s0)
    80006df0:	000c9a63          	bnez	s9,80006e04 <__printf+0x4dc>
    80006df4:	1080006f          	j	80006efc <__printf+0x5d4>
    80006df8:	001c8c93          	addi	s9,s9,1
    80006dfc:	00000097          	auipc	ra,0x0
    80006e00:	948080e7          	jalr	-1720(ra) # 80006744 <consputc>
    80006e04:	000cc503          	lbu	a0,0(s9)
    80006e08:	fe0518e3          	bnez	a0,80006df8 <__printf+0x4d0>
    80006e0c:	f5dff06f          	j	80006d68 <__printf+0x440>
    80006e10:	02500513          	li	a0,37
    80006e14:	00000097          	auipc	ra,0x0
    80006e18:	930080e7          	jalr	-1744(ra) # 80006744 <consputc>
    80006e1c:	000c8513          	mv	a0,s9
    80006e20:	00000097          	auipc	ra,0x0
    80006e24:	924080e7          	jalr	-1756(ra) # 80006744 <consputc>
    80006e28:	f41ff06f          	j	80006d68 <__printf+0x440>
    80006e2c:	02500513          	li	a0,37
    80006e30:	00000097          	auipc	ra,0x0
    80006e34:	914080e7          	jalr	-1772(ra) # 80006744 <consputc>
    80006e38:	f31ff06f          	j	80006d68 <__printf+0x440>
    80006e3c:	00030513          	mv	a0,t1
    80006e40:	00000097          	auipc	ra,0x0
    80006e44:	7bc080e7          	jalr	1980(ra) # 800075fc <acquire>
    80006e48:	b4dff06f          	j	80006994 <__printf+0x6c>
    80006e4c:	40c0053b          	negw	a0,a2
    80006e50:	00a00713          	li	a4,10
    80006e54:	02e576bb          	remuw	a3,a0,a4
    80006e58:	00002d97          	auipc	s11,0x2
    80006e5c:	818d8d93          	addi	s11,s11,-2024 # 80008670 <digits>
    80006e60:	ff700593          	li	a1,-9
    80006e64:	02069693          	slli	a3,a3,0x20
    80006e68:	0206d693          	srli	a3,a3,0x20
    80006e6c:	00dd86b3          	add	a3,s11,a3
    80006e70:	0006c683          	lbu	a3,0(a3)
    80006e74:	02e557bb          	divuw	a5,a0,a4
    80006e78:	f8d40023          	sb	a3,-128(s0)
    80006e7c:	10b65e63          	bge	a2,a1,80006f98 <__printf+0x670>
    80006e80:	06300593          	li	a1,99
    80006e84:	02e7f6bb          	remuw	a3,a5,a4
    80006e88:	02069693          	slli	a3,a3,0x20
    80006e8c:	0206d693          	srli	a3,a3,0x20
    80006e90:	00dd86b3          	add	a3,s11,a3
    80006e94:	0006c683          	lbu	a3,0(a3)
    80006e98:	02e7d73b          	divuw	a4,a5,a4
    80006e9c:	00200793          	li	a5,2
    80006ea0:	f8d400a3          	sb	a3,-127(s0)
    80006ea4:	bca5ece3          	bltu	a1,a0,80006a7c <__printf+0x154>
    80006ea8:	ce5ff06f          	j	80006b8c <__printf+0x264>
    80006eac:	40e007bb          	negw	a5,a4
    80006eb0:	00001d97          	auipc	s11,0x1
    80006eb4:	7c0d8d93          	addi	s11,s11,1984 # 80008670 <digits>
    80006eb8:	00f7f693          	andi	a3,a5,15
    80006ebc:	00dd86b3          	add	a3,s11,a3
    80006ec0:	0006c583          	lbu	a1,0(a3)
    80006ec4:	ff100613          	li	a2,-15
    80006ec8:	0047d69b          	srliw	a3,a5,0x4
    80006ecc:	f8b40023          	sb	a1,-128(s0)
    80006ed0:	0047d59b          	srliw	a1,a5,0x4
    80006ed4:	0ac75e63          	bge	a4,a2,80006f90 <__printf+0x668>
    80006ed8:	00f6f693          	andi	a3,a3,15
    80006edc:	00dd86b3          	add	a3,s11,a3
    80006ee0:	0006c603          	lbu	a2,0(a3)
    80006ee4:	00f00693          	li	a3,15
    80006ee8:	0087d79b          	srliw	a5,a5,0x8
    80006eec:	f8c400a3          	sb	a2,-127(s0)
    80006ef0:	d8b6e4e3          	bltu	a3,a1,80006c78 <__printf+0x350>
    80006ef4:	00200793          	li	a5,2
    80006ef8:	e2dff06f          	j	80006d24 <__printf+0x3fc>
    80006efc:	00001c97          	auipc	s9,0x1
    80006f00:	754c8c93          	addi	s9,s9,1876 # 80008650 <CONSOLE_STATUS+0x640>
    80006f04:	02800513          	li	a0,40
    80006f08:	ef1ff06f          	j	80006df8 <__printf+0x4d0>
    80006f0c:	00700793          	li	a5,7
    80006f10:	00600c93          	li	s9,6
    80006f14:	e0dff06f          	j	80006d20 <__printf+0x3f8>
    80006f18:	00700793          	li	a5,7
    80006f1c:	00600c93          	li	s9,6
    80006f20:	c69ff06f          	j	80006b88 <__printf+0x260>
    80006f24:	00300793          	li	a5,3
    80006f28:	00200c93          	li	s9,2
    80006f2c:	c5dff06f          	j	80006b88 <__printf+0x260>
    80006f30:	00300793          	li	a5,3
    80006f34:	00200c93          	li	s9,2
    80006f38:	de9ff06f          	j	80006d20 <__printf+0x3f8>
    80006f3c:	00400793          	li	a5,4
    80006f40:	00300c93          	li	s9,3
    80006f44:	dddff06f          	j	80006d20 <__printf+0x3f8>
    80006f48:	00400793          	li	a5,4
    80006f4c:	00300c93          	li	s9,3
    80006f50:	c39ff06f          	j	80006b88 <__printf+0x260>
    80006f54:	00500793          	li	a5,5
    80006f58:	00400c93          	li	s9,4
    80006f5c:	c2dff06f          	j	80006b88 <__printf+0x260>
    80006f60:	00500793          	li	a5,5
    80006f64:	00400c93          	li	s9,4
    80006f68:	db9ff06f          	j	80006d20 <__printf+0x3f8>
    80006f6c:	00600793          	li	a5,6
    80006f70:	00500c93          	li	s9,5
    80006f74:	dadff06f          	j	80006d20 <__printf+0x3f8>
    80006f78:	00600793          	li	a5,6
    80006f7c:	00500c93          	li	s9,5
    80006f80:	c09ff06f          	j	80006b88 <__printf+0x260>
    80006f84:	00800793          	li	a5,8
    80006f88:	00700c93          	li	s9,7
    80006f8c:	bfdff06f          	j	80006b88 <__printf+0x260>
    80006f90:	00100793          	li	a5,1
    80006f94:	d91ff06f          	j	80006d24 <__printf+0x3fc>
    80006f98:	00100793          	li	a5,1
    80006f9c:	bf1ff06f          	j	80006b8c <__printf+0x264>
    80006fa0:	00900793          	li	a5,9
    80006fa4:	00800c93          	li	s9,8
    80006fa8:	be1ff06f          	j	80006b88 <__printf+0x260>
    80006fac:	00001517          	auipc	a0,0x1
    80006fb0:	6ac50513          	addi	a0,a0,1708 # 80008658 <CONSOLE_STATUS+0x648>
    80006fb4:	00000097          	auipc	ra,0x0
    80006fb8:	918080e7          	jalr	-1768(ra) # 800068cc <panic>

0000000080006fbc <printfinit>:
    80006fbc:	fe010113          	addi	sp,sp,-32
    80006fc0:	00813823          	sd	s0,16(sp)
    80006fc4:	00913423          	sd	s1,8(sp)
    80006fc8:	00113c23          	sd	ra,24(sp)
    80006fcc:	02010413          	addi	s0,sp,32
    80006fd0:	00004497          	auipc	s1,0x4
    80006fd4:	7c048493          	addi	s1,s1,1984 # 8000b790 <pr>
    80006fd8:	00048513          	mv	a0,s1
    80006fdc:	00001597          	auipc	a1,0x1
    80006fe0:	68c58593          	addi	a1,a1,1676 # 80008668 <CONSOLE_STATUS+0x658>
    80006fe4:	00000097          	auipc	ra,0x0
    80006fe8:	5f4080e7          	jalr	1524(ra) # 800075d8 <initlock>
    80006fec:	01813083          	ld	ra,24(sp)
    80006ff0:	01013403          	ld	s0,16(sp)
    80006ff4:	0004ac23          	sw	zero,24(s1)
    80006ff8:	00813483          	ld	s1,8(sp)
    80006ffc:	02010113          	addi	sp,sp,32
    80007000:	00008067          	ret

0000000080007004 <uartinit>:
    80007004:	ff010113          	addi	sp,sp,-16
    80007008:	00813423          	sd	s0,8(sp)
    8000700c:	01010413          	addi	s0,sp,16
    80007010:	100007b7          	lui	a5,0x10000
    80007014:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007018:	f8000713          	li	a4,-128
    8000701c:	00e781a3          	sb	a4,3(a5)
    80007020:	00300713          	li	a4,3
    80007024:	00e78023          	sb	a4,0(a5)
    80007028:	000780a3          	sb	zero,1(a5)
    8000702c:	00e781a3          	sb	a4,3(a5)
    80007030:	00700693          	li	a3,7
    80007034:	00d78123          	sb	a3,2(a5)
    80007038:	00e780a3          	sb	a4,1(a5)
    8000703c:	00813403          	ld	s0,8(sp)
    80007040:	01010113          	addi	sp,sp,16
    80007044:	00008067          	ret

0000000080007048 <uartputc>:
    80007048:	00003797          	auipc	a5,0x3
    8000704c:	4707a783          	lw	a5,1136(a5) # 8000a4b8 <panicked>
    80007050:	00078463          	beqz	a5,80007058 <uartputc+0x10>
    80007054:	0000006f          	j	80007054 <uartputc+0xc>
    80007058:	fd010113          	addi	sp,sp,-48
    8000705c:	02813023          	sd	s0,32(sp)
    80007060:	00913c23          	sd	s1,24(sp)
    80007064:	01213823          	sd	s2,16(sp)
    80007068:	01313423          	sd	s3,8(sp)
    8000706c:	02113423          	sd	ra,40(sp)
    80007070:	03010413          	addi	s0,sp,48
    80007074:	00003917          	auipc	s2,0x3
    80007078:	44c90913          	addi	s2,s2,1100 # 8000a4c0 <uart_tx_r>
    8000707c:	00093783          	ld	a5,0(s2)
    80007080:	00003497          	auipc	s1,0x3
    80007084:	44848493          	addi	s1,s1,1096 # 8000a4c8 <uart_tx_w>
    80007088:	0004b703          	ld	a4,0(s1)
    8000708c:	02078693          	addi	a3,a5,32
    80007090:	00050993          	mv	s3,a0
    80007094:	02e69c63          	bne	a3,a4,800070cc <uartputc+0x84>
    80007098:	00001097          	auipc	ra,0x1
    8000709c:	834080e7          	jalr	-1996(ra) # 800078cc <push_on>
    800070a0:	00093783          	ld	a5,0(s2)
    800070a4:	0004b703          	ld	a4,0(s1)
    800070a8:	02078793          	addi	a5,a5,32
    800070ac:	00e79463          	bne	a5,a4,800070b4 <uartputc+0x6c>
    800070b0:	0000006f          	j	800070b0 <uartputc+0x68>
    800070b4:	00001097          	auipc	ra,0x1
    800070b8:	88c080e7          	jalr	-1908(ra) # 80007940 <pop_on>
    800070bc:	00093783          	ld	a5,0(s2)
    800070c0:	0004b703          	ld	a4,0(s1)
    800070c4:	02078693          	addi	a3,a5,32
    800070c8:	fce688e3          	beq	a3,a4,80007098 <uartputc+0x50>
    800070cc:	01f77693          	andi	a3,a4,31
    800070d0:	00004597          	auipc	a1,0x4
    800070d4:	6e058593          	addi	a1,a1,1760 # 8000b7b0 <uart_tx_buf>
    800070d8:	00d586b3          	add	a3,a1,a3
    800070dc:	00170713          	addi	a4,a4,1
    800070e0:	01368023          	sb	s3,0(a3)
    800070e4:	00e4b023          	sd	a4,0(s1)
    800070e8:	10000637          	lui	a2,0x10000
    800070ec:	02f71063          	bne	a4,a5,8000710c <uartputc+0xc4>
    800070f0:	0340006f          	j	80007124 <uartputc+0xdc>
    800070f4:	00074703          	lbu	a4,0(a4)
    800070f8:	00f93023          	sd	a5,0(s2)
    800070fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007100:	00093783          	ld	a5,0(s2)
    80007104:	0004b703          	ld	a4,0(s1)
    80007108:	00f70e63          	beq	a4,a5,80007124 <uartputc+0xdc>
    8000710c:	00564683          	lbu	a3,5(a2)
    80007110:	01f7f713          	andi	a4,a5,31
    80007114:	00e58733          	add	a4,a1,a4
    80007118:	0206f693          	andi	a3,a3,32
    8000711c:	00178793          	addi	a5,a5,1
    80007120:	fc069ae3          	bnez	a3,800070f4 <uartputc+0xac>
    80007124:	02813083          	ld	ra,40(sp)
    80007128:	02013403          	ld	s0,32(sp)
    8000712c:	01813483          	ld	s1,24(sp)
    80007130:	01013903          	ld	s2,16(sp)
    80007134:	00813983          	ld	s3,8(sp)
    80007138:	03010113          	addi	sp,sp,48
    8000713c:	00008067          	ret

0000000080007140 <uartputc_sync>:
    80007140:	ff010113          	addi	sp,sp,-16
    80007144:	00813423          	sd	s0,8(sp)
    80007148:	01010413          	addi	s0,sp,16
    8000714c:	00003717          	auipc	a4,0x3
    80007150:	36c72703          	lw	a4,876(a4) # 8000a4b8 <panicked>
    80007154:	02071663          	bnez	a4,80007180 <uartputc_sync+0x40>
    80007158:	00050793          	mv	a5,a0
    8000715c:	100006b7          	lui	a3,0x10000
    80007160:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007164:	02077713          	andi	a4,a4,32
    80007168:	fe070ce3          	beqz	a4,80007160 <uartputc_sync+0x20>
    8000716c:	0ff7f793          	andi	a5,a5,255
    80007170:	00f68023          	sb	a5,0(a3)
    80007174:	00813403          	ld	s0,8(sp)
    80007178:	01010113          	addi	sp,sp,16
    8000717c:	00008067          	ret
    80007180:	0000006f          	j	80007180 <uartputc_sync+0x40>

0000000080007184 <uartstart>:
    80007184:	ff010113          	addi	sp,sp,-16
    80007188:	00813423          	sd	s0,8(sp)
    8000718c:	01010413          	addi	s0,sp,16
    80007190:	00003617          	auipc	a2,0x3
    80007194:	33060613          	addi	a2,a2,816 # 8000a4c0 <uart_tx_r>
    80007198:	00003517          	auipc	a0,0x3
    8000719c:	33050513          	addi	a0,a0,816 # 8000a4c8 <uart_tx_w>
    800071a0:	00063783          	ld	a5,0(a2)
    800071a4:	00053703          	ld	a4,0(a0)
    800071a8:	04f70263          	beq	a4,a5,800071ec <uartstart+0x68>
    800071ac:	100005b7          	lui	a1,0x10000
    800071b0:	00004817          	auipc	a6,0x4
    800071b4:	60080813          	addi	a6,a6,1536 # 8000b7b0 <uart_tx_buf>
    800071b8:	01c0006f          	j	800071d4 <uartstart+0x50>
    800071bc:	0006c703          	lbu	a4,0(a3)
    800071c0:	00f63023          	sd	a5,0(a2)
    800071c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071c8:	00063783          	ld	a5,0(a2)
    800071cc:	00053703          	ld	a4,0(a0)
    800071d0:	00f70e63          	beq	a4,a5,800071ec <uartstart+0x68>
    800071d4:	01f7f713          	andi	a4,a5,31
    800071d8:	00e806b3          	add	a3,a6,a4
    800071dc:	0055c703          	lbu	a4,5(a1)
    800071e0:	00178793          	addi	a5,a5,1
    800071e4:	02077713          	andi	a4,a4,32
    800071e8:	fc071ae3          	bnez	a4,800071bc <uartstart+0x38>
    800071ec:	00813403          	ld	s0,8(sp)
    800071f0:	01010113          	addi	sp,sp,16
    800071f4:	00008067          	ret

00000000800071f8 <uartgetc>:
    800071f8:	ff010113          	addi	sp,sp,-16
    800071fc:	00813423          	sd	s0,8(sp)
    80007200:	01010413          	addi	s0,sp,16
    80007204:	10000737          	lui	a4,0x10000
    80007208:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000720c:	0017f793          	andi	a5,a5,1
    80007210:	00078c63          	beqz	a5,80007228 <uartgetc+0x30>
    80007214:	00074503          	lbu	a0,0(a4)
    80007218:	0ff57513          	andi	a0,a0,255
    8000721c:	00813403          	ld	s0,8(sp)
    80007220:	01010113          	addi	sp,sp,16
    80007224:	00008067          	ret
    80007228:	fff00513          	li	a0,-1
    8000722c:	ff1ff06f          	j	8000721c <uartgetc+0x24>

0000000080007230 <uartintr>:
    80007230:	100007b7          	lui	a5,0x10000
    80007234:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007238:	0017f793          	andi	a5,a5,1
    8000723c:	0a078463          	beqz	a5,800072e4 <uartintr+0xb4>
    80007240:	fe010113          	addi	sp,sp,-32
    80007244:	00813823          	sd	s0,16(sp)
    80007248:	00913423          	sd	s1,8(sp)
    8000724c:	00113c23          	sd	ra,24(sp)
    80007250:	02010413          	addi	s0,sp,32
    80007254:	100004b7          	lui	s1,0x10000
    80007258:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000725c:	0ff57513          	andi	a0,a0,255
    80007260:	fffff097          	auipc	ra,0xfffff
    80007264:	534080e7          	jalr	1332(ra) # 80006794 <consoleintr>
    80007268:	0054c783          	lbu	a5,5(s1)
    8000726c:	0017f793          	andi	a5,a5,1
    80007270:	fe0794e3          	bnez	a5,80007258 <uartintr+0x28>
    80007274:	00003617          	auipc	a2,0x3
    80007278:	24c60613          	addi	a2,a2,588 # 8000a4c0 <uart_tx_r>
    8000727c:	00003517          	auipc	a0,0x3
    80007280:	24c50513          	addi	a0,a0,588 # 8000a4c8 <uart_tx_w>
    80007284:	00063783          	ld	a5,0(a2)
    80007288:	00053703          	ld	a4,0(a0)
    8000728c:	04f70263          	beq	a4,a5,800072d0 <uartintr+0xa0>
    80007290:	100005b7          	lui	a1,0x10000
    80007294:	00004817          	auipc	a6,0x4
    80007298:	51c80813          	addi	a6,a6,1308 # 8000b7b0 <uart_tx_buf>
    8000729c:	01c0006f          	j	800072b8 <uartintr+0x88>
    800072a0:	0006c703          	lbu	a4,0(a3)
    800072a4:	00f63023          	sd	a5,0(a2)
    800072a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800072ac:	00063783          	ld	a5,0(a2)
    800072b0:	00053703          	ld	a4,0(a0)
    800072b4:	00f70e63          	beq	a4,a5,800072d0 <uartintr+0xa0>
    800072b8:	01f7f713          	andi	a4,a5,31
    800072bc:	00e806b3          	add	a3,a6,a4
    800072c0:	0055c703          	lbu	a4,5(a1)
    800072c4:	00178793          	addi	a5,a5,1
    800072c8:	02077713          	andi	a4,a4,32
    800072cc:	fc071ae3          	bnez	a4,800072a0 <uartintr+0x70>
    800072d0:	01813083          	ld	ra,24(sp)
    800072d4:	01013403          	ld	s0,16(sp)
    800072d8:	00813483          	ld	s1,8(sp)
    800072dc:	02010113          	addi	sp,sp,32
    800072e0:	00008067          	ret
    800072e4:	00003617          	auipc	a2,0x3
    800072e8:	1dc60613          	addi	a2,a2,476 # 8000a4c0 <uart_tx_r>
    800072ec:	00003517          	auipc	a0,0x3
    800072f0:	1dc50513          	addi	a0,a0,476 # 8000a4c8 <uart_tx_w>
    800072f4:	00063783          	ld	a5,0(a2)
    800072f8:	00053703          	ld	a4,0(a0)
    800072fc:	04f70263          	beq	a4,a5,80007340 <uartintr+0x110>
    80007300:	100005b7          	lui	a1,0x10000
    80007304:	00004817          	auipc	a6,0x4
    80007308:	4ac80813          	addi	a6,a6,1196 # 8000b7b0 <uart_tx_buf>
    8000730c:	01c0006f          	j	80007328 <uartintr+0xf8>
    80007310:	0006c703          	lbu	a4,0(a3)
    80007314:	00f63023          	sd	a5,0(a2)
    80007318:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000731c:	00063783          	ld	a5,0(a2)
    80007320:	00053703          	ld	a4,0(a0)
    80007324:	02f70063          	beq	a4,a5,80007344 <uartintr+0x114>
    80007328:	01f7f713          	andi	a4,a5,31
    8000732c:	00e806b3          	add	a3,a6,a4
    80007330:	0055c703          	lbu	a4,5(a1)
    80007334:	00178793          	addi	a5,a5,1
    80007338:	02077713          	andi	a4,a4,32
    8000733c:	fc071ae3          	bnez	a4,80007310 <uartintr+0xe0>
    80007340:	00008067          	ret
    80007344:	00008067          	ret

0000000080007348 <kinit>:
    80007348:	fc010113          	addi	sp,sp,-64
    8000734c:	02913423          	sd	s1,40(sp)
    80007350:	fffff7b7          	lui	a5,0xfffff
    80007354:	00005497          	auipc	s1,0x5
    80007358:	47b48493          	addi	s1,s1,1147 # 8000c7cf <end+0xfff>
    8000735c:	02813823          	sd	s0,48(sp)
    80007360:	01313c23          	sd	s3,24(sp)
    80007364:	00f4f4b3          	and	s1,s1,a5
    80007368:	02113c23          	sd	ra,56(sp)
    8000736c:	03213023          	sd	s2,32(sp)
    80007370:	01413823          	sd	s4,16(sp)
    80007374:	01513423          	sd	s5,8(sp)
    80007378:	04010413          	addi	s0,sp,64
    8000737c:	000017b7          	lui	a5,0x1
    80007380:	01100993          	li	s3,17
    80007384:	00f487b3          	add	a5,s1,a5
    80007388:	01b99993          	slli	s3,s3,0x1b
    8000738c:	06f9e063          	bltu	s3,a5,800073ec <kinit+0xa4>
    80007390:	00004a97          	auipc	s5,0x4
    80007394:	440a8a93          	addi	s5,s5,1088 # 8000b7d0 <end>
    80007398:	0754ec63          	bltu	s1,s5,80007410 <kinit+0xc8>
    8000739c:	0734fa63          	bgeu	s1,s3,80007410 <kinit+0xc8>
    800073a0:	00088a37          	lui	s4,0x88
    800073a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800073a8:	00003917          	auipc	s2,0x3
    800073ac:	12890913          	addi	s2,s2,296 # 8000a4d0 <kmem>
    800073b0:	00ca1a13          	slli	s4,s4,0xc
    800073b4:	0140006f          	j	800073c8 <kinit+0x80>
    800073b8:	000017b7          	lui	a5,0x1
    800073bc:	00f484b3          	add	s1,s1,a5
    800073c0:	0554e863          	bltu	s1,s5,80007410 <kinit+0xc8>
    800073c4:	0534f663          	bgeu	s1,s3,80007410 <kinit+0xc8>
    800073c8:	00001637          	lui	a2,0x1
    800073cc:	00100593          	li	a1,1
    800073d0:	00048513          	mv	a0,s1
    800073d4:	00000097          	auipc	ra,0x0
    800073d8:	5e4080e7          	jalr	1508(ra) # 800079b8 <__memset>
    800073dc:	00093783          	ld	a5,0(s2)
    800073e0:	00f4b023          	sd	a5,0(s1)
    800073e4:	00993023          	sd	s1,0(s2)
    800073e8:	fd4498e3          	bne	s1,s4,800073b8 <kinit+0x70>
    800073ec:	03813083          	ld	ra,56(sp)
    800073f0:	03013403          	ld	s0,48(sp)
    800073f4:	02813483          	ld	s1,40(sp)
    800073f8:	02013903          	ld	s2,32(sp)
    800073fc:	01813983          	ld	s3,24(sp)
    80007400:	01013a03          	ld	s4,16(sp)
    80007404:	00813a83          	ld	s5,8(sp)
    80007408:	04010113          	addi	sp,sp,64
    8000740c:	00008067          	ret
    80007410:	00001517          	auipc	a0,0x1
    80007414:	27850513          	addi	a0,a0,632 # 80008688 <digits+0x18>
    80007418:	fffff097          	auipc	ra,0xfffff
    8000741c:	4b4080e7          	jalr	1204(ra) # 800068cc <panic>

0000000080007420 <freerange>:
    80007420:	fc010113          	addi	sp,sp,-64
    80007424:	000017b7          	lui	a5,0x1
    80007428:	02913423          	sd	s1,40(sp)
    8000742c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007430:	009504b3          	add	s1,a0,s1
    80007434:	fffff537          	lui	a0,0xfffff
    80007438:	02813823          	sd	s0,48(sp)
    8000743c:	02113c23          	sd	ra,56(sp)
    80007440:	03213023          	sd	s2,32(sp)
    80007444:	01313c23          	sd	s3,24(sp)
    80007448:	01413823          	sd	s4,16(sp)
    8000744c:	01513423          	sd	s5,8(sp)
    80007450:	01613023          	sd	s6,0(sp)
    80007454:	04010413          	addi	s0,sp,64
    80007458:	00a4f4b3          	and	s1,s1,a0
    8000745c:	00f487b3          	add	a5,s1,a5
    80007460:	06f5e463          	bltu	a1,a5,800074c8 <freerange+0xa8>
    80007464:	00004a97          	auipc	s5,0x4
    80007468:	36ca8a93          	addi	s5,s5,876 # 8000b7d0 <end>
    8000746c:	0954e263          	bltu	s1,s5,800074f0 <freerange+0xd0>
    80007470:	01100993          	li	s3,17
    80007474:	01b99993          	slli	s3,s3,0x1b
    80007478:	0734fc63          	bgeu	s1,s3,800074f0 <freerange+0xd0>
    8000747c:	00058a13          	mv	s4,a1
    80007480:	00003917          	auipc	s2,0x3
    80007484:	05090913          	addi	s2,s2,80 # 8000a4d0 <kmem>
    80007488:	00002b37          	lui	s6,0x2
    8000748c:	0140006f          	j	800074a0 <freerange+0x80>
    80007490:	000017b7          	lui	a5,0x1
    80007494:	00f484b3          	add	s1,s1,a5
    80007498:	0554ec63          	bltu	s1,s5,800074f0 <freerange+0xd0>
    8000749c:	0534fa63          	bgeu	s1,s3,800074f0 <freerange+0xd0>
    800074a0:	00001637          	lui	a2,0x1
    800074a4:	00100593          	li	a1,1
    800074a8:	00048513          	mv	a0,s1
    800074ac:	00000097          	auipc	ra,0x0
    800074b0:	50c080e7          	jalr	1292(ra) # 800079b8 <__memset>
    800074b4:	00093703          	ld	a4,0(s2)
    800074b8:	016487b3          	add	a5,s1,s6
    800074bc:	00e4b023          	sd	a4,0(s1)
    800074c0:	00993023          	sd	s1,0(s2)
    800074c4:	fcfa76e3          	bgeu	s4,a5,80007490 <freerange+0x70>
    800074c8:	03813083          	ld	ra,56(sp)
    800074cc:	03013403          	ld	s0,48(sp)
    800074d0:	02813483          	ld	s1,40(sp)
    800074d4:	02013903          	ld	s2,32(sp)
    800074d8:	01813983          	ld	s3,24(sp)
    800074dc:	01013a03          	ld	s4,16(sp)
    800074e0:	00813a83          	ld	s5,8(sp)
    800074e4:	00013b03          	ld	s6,0(sp)
    800074e8:	04010113          	addi	sp,sp,64
    800074ec:	00008067          	ret
    800074f0:	00001517          	auipc	a0,0x1
    800074f4:	19850513          	addi	a0,a0,408 # 80008688 <digits+0x18>
    800074f8:	fffff097          	auipc	ra,0xfffff
    800074fc:	3d4080e7          	jalr	980(ra) # 800068cc <panic>

0000000080007500 <kfree>:
    80007500:	fe010113          	addi	sp,sp,-32
    80007504:	00813823          	sd	s0,16(sp)
    80007508:	00113c23          	sd	ra,24(sp)
    8000750c:	00913423          	sd	s1,8(sp)
    80007510:	02010413          	addi	s0,sp,32
    80007514:	03451793          	slli	a5,a0,0x34
    80007518:	04079c63          	bnez	a5,80007570 <kfree+0x70>
    8000751c:	00004797          	auipc	a5,0x4
    80007520:	2b478793          	addi	a5,a5,692 # 8000b7d0 <end>
    80007524:	00050493          	mv	s1,a0
    80007528:	04f56463          	bltu	a0,a5,80007570 <kfree+0x70>
    8000752c:	01100793          	li	a5,17
    80007530:	01b79793          	slli	a5,a5,0x1b
    80007534:	02f57e63          	bgeu	a0,a5,80007570 <kfree+0x70>
    80007538:	00001637          	lui	a2,0x1
    8000753c:	00100593          	li	a1,1
    80007540:	00000097          	auipc	ra,0x0
    80007544:	478080e7          	jalr	1144(ra) # 800079b8 <__memset>
    80007548:	00003797          	auipc	a5,0x3
    8000754c:	f8878793          	addi	a5,a5,-120 # 8000a4d0 <kmem>
    80007550:	0007b703          	ld	a4,0(a5)
    80007554:	01813083          	ld	ra,24(sp)
    80007558:	01013403          	ld	s0,16(sp)
    8000755c:	00e4b023          	sd	a4,0(s1)
    80007560:	0097b023          	sd	s1,0(a5)
    80007564:	00813483          	ld	s1,8(sp)
    80007568:	02010113          	addi	sp,sp,32
    8000756c:	00008067          	ret
    80007570:	00001517          	auipc	a0,0x1
    80007574:	11850513          	addi	a0,a0,280 # 80008688 <digits+0x18>
    80007578:	fffff097          	auipc	ra,0xfffff
    8000757c:	354080e7          	jalr	852(ra) # 800068cc <panic>

0000000080007580 <kalloc>:
    80007580:	fe010113          	addi	sp,sp,-32
    80007584:	00813823          	sd	s0,16(sp)
    80007588:	00913423          	sd	s1,8(sp)
    8000758c:	00113c23          	sd	ra,24(sp)
    80007590:	02010413          	addi	s0,sp,32
    80007594:	00003797          	auipc	a5,0x3
    80007598:	f3c78793          	addi	a5,a5,-196 # 8000a4d0 <kmem>
    8000759c:	0007b483          	ld	s1,0(a5)
    800075a0:	02048063          	beqz	s1,800075c0 <kalloc+0x40>
    800075a4:	0004b703          	ld	a4,0(s1)
    800075a8:	00001637          	lui	a2,0x1
    800075ac:	00500593          	li	a1,5
    800075b0:	00048513          	mv	a0,s1
    800075b4:	00e7b023          	sd	a4,0(a5)
    800075b8:	00000097          	auipc	ra,0x0
    800075bc:	400080e7          	jalr	1024(ra) # 800079b8 <__memset>
    800075c0:	01813083          	ld	ra,24(sp)
    800075c4:	01013403          	ld	s0,16(sp)
    800075c8:	00048513          	mv	a0,s1
    800075cc:	00813483          	ld	s1,8(sp)
    800075d0:	02010113          	addi	sp,sp,32
    800075d4:	00008067          	ret

00000000800075d8 <initlock>:
    800075d8:	ff010113          	addi	sp,sp,-16
    800075dc:	00813423          	sd	s0,8(sp)
    800075e0:	01010413          	addi	s0,sp,16
    800075e4:	00813403          	ld	s0,8(sp)
    800075e8:	00b53423          	sd	a1,8(a0)
    800075ec:	00052023          	sw	zero,0(a0)
    800075f0:	00053823          	sd	zero,16(a0)
    800075f4:	01010113          	addi	sp,sp,16
    800075f8:	00008067          	ret

00000000800075fc <acquire>:
    800075fc:	fe010113          	addi	sp,sp,-32
    80007600:	00813823          	sd	s0,16(sp)
    80007604:	00913423          	sd	s1,8(sp)
    80007608:	00113c23          	sd	ra,24(sp)
    8000760c:	01213023          	sd	s2,0(sp)
    80007610:	02010413          	addi	s0,sp,32
    80007614:	00050493          	mv	s1,a0
    80007618:	10002973          	csrr	s2,sstatus
    8000761c:	100027f3          	csrr	a5,sstatus
    80007620:	ffd7f793          	andi	a5,a5,-3
    80007624:	10079073          	csrw	sstatus,a5
    80007628:	fffff097          	auipc	ra,0xfffff
    8000762c:	8ec080e7          	jalr	-1812(ra) # 80005f14 <mycpu>
    80007630:	07852783          	lw	a5,120(a0)
    80007634:	06078e63          	beqz	a5,800076b0 <acquire+0xb4>
    80007638:	fffff097          	auipc	ra,0xfffff
    8000763c:	8dc080e7          	jalr	-1828(ra) # 80005f14 <mycpu>
    80007640:	07852783          	lw	a5,120(a0)
    80007644:	0004a703          	lw	a4,0(s1)
    80007648:	0017879b          	addiw	a5,a5,1
    8000764c:	06f52c23          	sw	a5,120(a0)
    80007650:	04071063          	bnez	a4,80007690 <acquire+0x94>
    80007654:	00100713          	li	a4,1
    80007658:	00070793          	mv	a5,a4
    8000765c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007660:	0007879b          	sext.w	a5,a5
    80007664:	fe079ae3          	bnez	a5,80007658 <acquire+0x5c>
    80007668:	0ff0000f          	fence
    8000766c:	fffff097          	auipc	ra,0xfffff
    80007670:	8a8080e7          	jalr	-1880(ra) # 80005f14 <mycpu>
    80007674:	01813083          	ld	ra,24(sp)
    80007678:	01013403          	ld	s0,16(sp)
    8000767c:	00a4b823          	sd	a0,16(s1)
    80007680:	00013903          	ld	s2,0(sp)
    80007684:	00813483          	ld	s1,8(sp)
    80007688:	02010113          	addi	sp,sp,32
    8000768c:	00008067          	ret
    80007690:	0104b903          	ld	s2,16(s1)
    80007694:	fffff097          	auipc	ra,0xfffff
    80007698:	880080e7          	jalr	-1920(ra) # 80005f14 <mycpu>
    8000769c:	faa91ce3          	bne	s2,a0,80007654 <acquire+0x58>
    800076a0:	00001517          	auipc	a0,0x1
    800076a4:	ff050513          	addi	a0,a0,-16 # 80008690 <digits+0x20>
    800076a8:	fffff097          	auipc	ra,0xfffff
    800076ac:	224080e7          	jalr	548(ra) # 800068cc <panic>
    800076b0:	00195913          	srli	s2,s2,0x1
    800076b4:	fffff097          	auipc	ra,0xfffff
    800076b8:	860080e7          	jalr	-1952(ra) # 80005f14 <mycpu>
    800076bc:	00197913          	andi	s2,s2,1
    800076c0:	07252e23          	sw	s2,124(a0)
    800076c4:	f75ff06f          	j	80007638 <acquire+0x3c>

00000000800076c8 <release>:
    800076c8:	fe010113          	addi	sp,sp,-32
    800076cc:	00813823          	sd	s0,16(sp)
    800076d0:	00113c23          	sd	ra,24(sp)
    800076d4:	00913423          	sd	s1,8(sp)
    800076d8:	01213023          	sd	s2,0(sp)
    800076dc:	02010413          	addi	s0,sp,32
    800076e0:	00052783          	lw	a5,0(a0)
    800076e4:	00079a63          	bnez	a5,800076f8 <release+0x30>
    800076e8:	00001517          	auipc	a0,0x1
    800076ec:	fb050513          	addi	a0,a0,-80 # 80008698 <digits+0x28>
    800076f0:	fffff097          	auipc	ra,0xfffff
    800076f4:	1dc080e7          	jalr	476(ra) # 800068cc <panic>
    800076f8:	01053903          	ld	s2,16(a0)
    800076fc:	00050493          	mv	s1,a0
    80007700:	fffff097          	auipc	ra,0xfffff
    80007704:	814080e7          	jalr	-2028(ra) # 80005f14 <mycpu>
    80007708:	fea910e3          	bne	s2,a0,800076e8 <release+0x20>
    8000770c:	0004b823          	sd	zero,16(s1)
    80007710:	0ff0000f          	fence
    80007714:	0f50000f          	fence	iorw,ow
    80007718:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000771c:	ffffe097          	auipc	ra,0xffffe
    80007720:	7f8080e7          	jalr	2040(ra) # 80005f14 <mycpu>
    80007724:	100027f3          	csrr	a5,sstatus
    80007728:	0027f793          	andi	a5,a5,2
    8000772c:	04079a63          	bnez	a5,80007780 <release+0xb8>
    80007730:	07852783          	lw	a5,120(a0)
    80007734:	02f05e63          	blez	a5,80007770 <release+0xa8>
    80007738:	fff7871b          	addiw	a4,a5,-1
    8000773c:	06e52c23          	sw	a4,120(a0)
    80007740:	00071c63          	bnez	a4,80007758 <release+0x90>
    80007744:	07c52783          	lw	a5,124(a0)
    80007748:	00078863          	beqz	a5,80007758 <release+0x90>
    8000774c:	100027f3          	csrr	a5,sstatus
    80007750:	0027e793          	ori	a5,a5,2
    80007754:	10079073          	csrw	sstatus,a5
    80007758:	01813083          	ld	ra,24(sp)
    8000775c:	01013403          	ld	s0,16(sp)
    80007760:	00813483          	ld	s1,8(sp)
    80007764:	00013903          	ld	s2,0(sp)
    80007768:	02010113          	addi	sp,sp,32
    8000776c:	00008067          	ret
    80007770:	00001517          	auipc	a0,0x1
    80007774:	f4850513          	addi	a0,a0,-184 # 800086b8 <digits+0x48>
    80007778:	fffff097          	auipc	ra,0xfffff
    8000777c:	154080e7          	jalr	340(ra) # 800068cc <panic>
    80007780:	00001517          	auipc	a0,0x1
    80007784:	f2050513          	addi	a0,a0,-224 # 800086a0 <digits+0x30>
    80007788:	fffff097          	auipc	ra,0xfffff
    8000778c:	144080e7          	jalr	324(ra) # 800068cc <panic>

0000000080007790 <holding>:
    80007790:	00052783          	lw	a5,0(a0)
    80007794:	00079663          	bnez	a5,800077a0 <holding+0x10>
    80007798:	00000513          	li	a0,0
    8000779c:	00008067          	ret
    800077a0:	fe010113          	addi	sp,sp,-32
    800077a4:	00813823          	sd	s0,16(sp)
    800077a8:	00913423          	sd	s1,8(sp)
    800077ac:	00113c23          	sd	ra,24(sp)
    800077b0:	02010413          	addi	s0,sp,32
    800077b4:	01053483          	ld	s1,16(a0)
    800077b8:	ffffe097          	auipc	ra,0xffffe
    800077bc:	75c080e7          	jalr	1884(ra) # 80005f14 <mycpu>
    800077c0:	01813083          	ld	ra,24(sp)
    800077c4:	01013403          	ld	s0,16(sp)
    800077c8:	40a48533          	sub	a0,s1,a0
    800077cc:	00153513          	seqz	a0,a0
    800077d0:	00813483          	ld	s1,8(sp)
    800077d4:	02010113          	addi	sp,sp,32
    800077d8:	00008067          	ret

00000000800077dc <push_off>:
    800077dc:	fe010113          	addi	sp,sp,-32
    800077e0:	00813823          	sd	s0,16(sp)
    800077e4:	00113c23          	sd	ra,24(sp)
    800077e8:	00913423          	sd	s1,8(sp)
    800077ec:	02010413          	addi	s0,sp,32
    800077f0:	100024f3          	csrr	s1,sstatus
    800077f4:	100027f3          	csrr	a5,sstatus
    800077f8:	ffd7f793          	andi	a5,a5,-3
    800077fc:	10079073          	csrw	sstatus,a5
    80007800:	ffffe097          	auipc	ra,0xffffe
    80007804:	714080e7          	jalr	1812(ra) # 80005f14 <mycpu>
    80007808:	07852783          	lw	a5,120(a0)
    8000780c:	02078663          	beqz	a5,80007838 <push_off+0x5c>
    80007810:	ffffe097          	auipc	ra,0xffffe
    80007814:	704080e7          	jalr	1796(ra) # 80005f14 <mycpu>
    80007818:	07852783          	lw	a5,120(a0)
    8000781c:	01813083          	ld	ra,24(sp)
    80007820:	01013403          	ld	s0,16(sp)
    80007824:	0017879b          	addiw	a5,a5,1
    80007828:	06f52c23          	sw	a5,120(a0)
    8000782c:	00813483          	ld	s1,8(sp)
    80007830:	02010113          	addi	sp,sp,32
    80007834:	00008067          	ret
    80007838:	0014d493          	srli	s1,s1,0x1
    8000783c:	ffffe097          	auipc	ra,0xffffe
    80007840:	6d8080e7          	jalr	1752(ra) # 80005f14 <mycpu>
    80007844:	0014f493          	andi	s1,s1,1
    80007848:	06952e23          	sw	s1,124(a0)
    8000784c:	fc5ff06f          	j	80007810 <push_off+0x34>

0000000080007850 <pop_off>:
    80007850:	ff010113          	addi	sp,sp,-16
    80007854:	00813023          	sd	s0,0(sp)
    80007858:	00113423          	sd	ra,8(sp)
    8000785c:	01010413          	addi	s0,sp,16
    80007860:	ffffe097          	auipc	ra,0xffffe
    80007864:	6b4080e7          	jalr	1716(ra) # 80005f14 <mycpu>
    80007868:	100027f3          	csrr	a5,sstatus
    8000786c:	0027f793          	andi	a5,a5,2
    80007870:	04079663          	bnez	a5,800078bc <pop_off+0x6c>
    80007874:	07852783          	lw	a5,120(a0)
    80007878:	02f05a63          	blez	a5,800078ac <pop_off+0x5c>
    8000787c:	fff7871b          	addiw	a4,a5,-1
    80007880:	06e52c23          	sw	a4,120(a0)
    80007884:	00071c63          	bnez	a4,8000789c <pop_off+0x4c>
    80007888:	07c52783          	lw	a5,124(a0)
    8000788c:	00078863          	beqz	a5,8000789c <pop_off+0x4c>
    80007890:	100027f3          	csrr	a5,sstatus
    80007894:	0027e793          	ori	a5,a5,2
    80007898:	10079073          	csrw	sstatus,a5
    8000789c:	00813083          	ld	ra,8(sp)
    800078a0:	00013403          	ld	s0,0(sp)
    800078a4:	01010113          	addi	sp,sp,16
    800078a8:	00008067          	ret
    800078ac:	00001517          	auipc	a0,0x1
    800078b0:	e0c50513          	addi	a0,a0,-500 # 800086b8 <digits+0x48>
    800078b4:	fffff097          	auipc	ra,0xfffff
    800078b8:	018080e7          	jalr	24(ra) # 800068cc <panic>
    800078bc:	00001517          	auipc	a0,0x1
    800078c0:	de450513          	addi	a0,a0,-540 # 800086a0 <digits+0x30>
    800078c4:	fffff097          	auipc	ra,0xfffff
    800078c8:	008080e7          	jalr	8(ra) # 800068cc <panic>

00000000800078cc <push_on>:
    800078cc:	fe010113          	addi	sp,sp,-32
    800078d0:	00813823          	sd	s0,16(sp)
    800078d4:	00113c23          	sd	ra,24(sp)
    800078d8:	00913423          	sd	s1,8(sp)
    800078dc:	02010413          	addi	s0,sp,32
    800078e0:	100024f3          	csrr	s1,sstatus
    800078e4:	100027f3          	csrr	a5,sstatus
    800078e8:	0027e793          	ori	a5,a5,2
    800078ec:	10079073          	csrw	sstatus,a5
    800078f0:	ffffe097          	auipc	ra,0xffffe
    800078f4:	624080e7          	jalr	1572(ra) # 80005f14 <mycpu>
    800078f8:	07852783          	lw	a5,120(a0)
    800078fc:	02078663          	beqz	a5,80007928 <push_on+0x5c>
    80007900:	ffffe097          	auipc	ra,0xffffe
    80007904:	614080e7          	jalr	1556(ra) # 80005f14 <mycpu>
    80007908:	07852783          	lw	a5,120(a0)
    8000790c:	01813083          	ld	ra,24(sp)
    80007910:	01013403          	ld	s0,16(sp)
    80007914:	0017879b          	addiw	a5,a5,1
    80007918:	06f52c23          	sw	a5,120(a0)
    8000791c:	00813483          	ld	s1,8(sp)
    80007920:	02010113          	addi	sp,sp,32
    80007924:	00008067          	ret
    80007928:	0014d493          	srli	s1,s1,0x1
    8000792c:	ffffe097          	auipc	ra,0xffffe
    80007930:	5e8080e7          	jalr	1512(ra) # 80005f14 <mycpu>
    80007934:	0014f493          	andi	s1,s1,1
    80007938:	06952e23          	sw	s1,124(a0)
    8000793c:	fc5ff06f          	j	80007900 <push_on+0x34>

0000000080007940 <pop_on>:
    80007940:	ff010113          	addi	sp,sp,-16
    80007944:	00813023          	sd	s0,0(sp)
    80007948:	00113423          	sd	ra,8(sp)
    8000794c:	01010413          	addi	s0,sp,16
    80007950:	ffffe097          	auipc	ra,0xffffe
    80007954:	5c4080e7          	jalr	1476(ra) # 80005f14 <mycpu>
    80007958:	100027f3          	csrr	a5,sstatus
    8000795c:	0027f793          	andi	a5,a5,2
    80007960:	04078463          	beqz	a5,800079a8 <pop_on+0x68>
    80007964:	07852783          	lw	a5,120(a0)
    80007968:	02f05863          	blez	a5,80007998 <pop_on+0x58>
    8000796c:	fff7879b          	addiw	a5,a5,-1
    80007970:	06f52c23          	sw	a5,120(a0)
    80007974:	07853783          	ld	a5,120(a0)
    80007978:	00079863          	bnez	a5,80007988 <pop_on+0x48>
    8000797c:	100027f3          	csrr	a5,sstatus
    80007980:	ffd7f793          	andi	a5,a5,-3
    80007984:	10079073          	csrw	sstatus,a5
    80007988:	00813083          	ld	ra,8(sp)
    8000798c:	00013403          	ld	s0,0(sp)
    80007990:	01010113          	addi	sp,sp,16
    80007994:	00008067          	ret
    80007998:	00001517          	auipc	a0,0x1
    8000799c:	d4850513          	addi	a0,a0,-696 # 800086e0 <digits+0x70>
    800079a0:	fffff097          	auipc	ra,0xfffff
    800079a4:	f2c080e7          	jalr	-212(ra) # 800068cc <panic>
    800079a8:	00001517          	auipc	a0,0x1
    800079ac:	d1850513          	addi	a0,a0,-744 # 800086c0 <digits+0x50>
    800079b0:	fffff097          	auipc	ra,0xfffff
    800079b4:	f1c080e7          	jalr	-228(ra) # 800068cc <panic>

00000000800079b8 <__memset>:
    800079b8:	ff010113          	addi	sp,sp,-16
    800079bc:	00813423          	sd	s0,8(sp)
    800079c0:	01010413          	addi	s0,sp,16
    800079c4:	1a060e63          	beqz	a2,80007b80 <__memset+0x1c8>
    800079c8:	40a007b3          	neg	a5,a0
    800079cc:	0077f793          	andi	a5,a5,7
    800079d0:	00778693          	addi	a3,a5,7
    800079d4:	00b00813          	li	a6,11
    800079d8:	0ff5f593          	andi	a1,a1,255
    800079dc:	fff6071b          	addiw	a4,a2,-1
    800079e0:	1b06e663          	bltu	a3,a6,80007b8c <__memset+0x1d4>
    800079e4:	1cd76463          	bltu	a4,a3,80007bac <__memset+0x1f4>
    800079e8:	1a078e63          	beqz	a5,80007ba4 <__memset+0x1ec>
    800079ec:	00b50023          	sb	a1,0(a0)
    800079f0:	00100713          	li	a4,1
    800079f4:	1ae78463          	beq	a5,a4,80007b9c <__memset+0x1e4>
    800079f8:	00b500a3          	sb	a1,1(a0)
    800079fc:	00200713          	li	a4,2
    80007a00:	1ae78a63          	beq	a5,a4,80007bb4 <__memset+0x1fc>
    80007a04:	00b50123          	sb	a1,2(a0)
    80007a08:	00300713          	li	a4,3
    80007a0c:	18e78463          	beq	a5,a4,80007b94 <__memset+0x1dc>
    80007a10:	00b501a3          	sb	a1,3(a0)
    80007a14:	00400713          	li	a4,4
    80007a18:	1ae78263          	beq	a5,a4,80007bbc <__memset+0x204>
    80007a1c:	00b50223          	sb	a1,4(a0)
    80007a20:	00500713          	li	a4,5
    80007a24:	1ae78063          	beq	a5,a4,80007bc4 <__memset+0x20c>
    80007a28:	00b502a3          	sb	a1,5(a0)
    80007a2c:	00700713          	li	a4,7
    80007a30:	18e79e63          	bne	a5,a4,80007bcc <__memset+0x214>
    80007a34:	00b50323          	sb	a1,6(a0)
    80007a38:	00700e93          	li	t4,7
    80007a3c:	00859713          	slli	a4,a1,0x8
    80007a40:	00e5e733          	or	a4,a1,a4
    80007a44:	01059e13          	slli	t3,a1,0x10
    80007a48:	01c76e33          	or	t3,a4,t3
    80007a4c:	01859313          	slli	t1,a1,0x18
    80007a50:	006e6333          	or	t1,t3,t1
    80007a54:	02059893          	slli	a7,a1,0x20
    80007a58:	40f60e3b          	subw	t3,a2,a5
    80007a5c:	011368b3          	or	a7,t1,a7
    80007a60:	02859813          	slli	a6,a1,0x28
    80007a64:	0108e833          	or	a6,a7,a6
    80007a68:	03059693          	slli	a3,a1,0x30
    80007a6c:	003e589b          	srliw	a7,t3,0x3
    80007a70:	00d866b3          	or	a3,a6,a3
    80007a74:	03859713          	slli	a4,a1,0x38
    80007a78:	00389813          	slli	a6,a7,0x3
    80007a7c:	00f507b3          	add	a5,a0,a5
    80007a80:	00e6e733          	or	a4,a3,a4
    80007a84:	000e089b          	sext.w	a7,t3
    80007a88:	00f806b3          	add	a3,a6,a5
    80007a8c:	00e7b023          	sd	a4,0(a5)
    80007a90:	00878793          	addi	a5,a5,8
    80007a94:	fed79ce3          	bne	a5,a3,80007a8c <__memset+0xd4>
    80007a98:	ff8e7793          	andi	a5,t3,-8
    80007a9c:	0007871b          	sext.w	a4,a5
    80007aa0:	01d787bb          	addw	a5,a5,t4
    80007aa4:	0ce88e63          	beq	a7,a4,80007b80 <__memset+0x1c8>
    80007aa8:	00f50733          	add	a4,a0,a5
    80007aac:	00b70023          	sb	a1,0(a4)
    80007ab0:	0017871b          	addiw	a4,a5,1
    80007ab4:	0cc77663          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007ab8:	00e50733          	add	a4,a0,a4
    80007abc:	00b70023          	sb	a1,0(a4)
    80007ac0:	0027871b          	addiw	a4,a5,2
    80007ac4:	0ac77e63          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007ac8:	00e50733          	add	a4,a0,a4
    80007acc:	00b70023          	sb	a1,0(a4)
    80007ad0:	0037871b          	addiw	a4,a5,3
    80007ad4:	0ac77663          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007ad8:	00e50733          	add	a4,a0,a4
    80007adc:	00b70023          	sb	a1,0(a4)
    80007ae0:	0047871b          	addiw	a4,a5,4
    80007ae4:	08c77e63          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007ae8:	00e50733          	add	a4,a0,a4
    80007aec:	00b70023          	sb	a1,0(a4)
    80007af0:	0057871b          	addiw	a4,a5,5
    80007af4:	08c77663          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007af8:	00e50733          	add	a4,a0,a4
    80007afc:	00b70023          	sb	a1,0(a4)
    80007b00:	0067871b          	addiw	a4,a5,6
    80007b04:	06c77e63          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007b08:	00e50733          	add	a4,a0,a4
    80007b0c:	00b70023          	sb	a1,0(a4)
    80007b10:	0077871b          	addiw	a4,a5,7
    80007b14:	06c77663          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007b18:	00e50733          	add	a4,a0,a4
    80007b1c:	00b70023          	sb	a1,0(a4)
    80007b20:	0087871b          	addiw	a4,a5,8
    80007b24:	04c77e63          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007b28:	00e50733          	add	a4,a0,a4
    80007b2c:	00b70023          	sb	a1,0(a4)
    80007b30:	0097871b          	addiw	a4,a5,9
    80007b34:	04c77663          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007b38:	00e50733          	add	a4,a0,a4
    80007b3c:	00b70023          	sb	a1,0(a4)
    80007b40:	00a7871b          	addiw	a4,a5,10
    80007b44:	02c77e63          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007b48:	00e50733          	add	a4,a0,a4
    80007b4c:	00b70023          	sb	a1,0(a4)
    80007b50:	00b7871b          	addiw	a4,a5,11
    80007b54:	02c77663          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007b58:	00e50733          	add	a4,a0,a4
    80007b5c:	00b70023          	sb	a1,0(a4)
    80007b60:	00c7871b          	addiw	a4,a5,12
    80007b64:	00c77e63          	bgeu	a4,a2,80007b80 <__memset+0x1c8>
    80007b68:	00e50733          	add	a4,a0,a4
    80007b6c:	00b70023          	sb	a1,0(a4)
    80007b70:	00d7879b          	addiw	a5,a5,13
    80007b74:	00c7f663          	bgeu	a5,a2,80007b80 <__memset+0x1c8>
    80007b78:	00f507b3          	add	a5,a0,a5
    80007b7c:	00b78023          	sb	a1,0(a5)
    80007b80:	00813403          	ld	s0,8(sp)
    80007b84:	01010113          	addi	sp,sp,16
    80007b88:	00008067          	ret
    80007b8c:	00b00693          	li	a3,11
    80007b90:	e55ff06f          	j	800079e4 <__memset+0x2c>
    80007b94:	00300e93          	li	t4,3
    80007b98:	ea5ff06f          	j	80007a3c <__memset+0x84>
    80007b9c:	00100e93          	li	t4,1
    80007ba0:	e9dff06f          	j	80007a3c <__memset+0x84>
    80007ba4:	00000e93          	li	t4,0
    80007ba8:	e95ff06f          	j	80007a3c <__memset+0x84>
    80007bac:	00000793          	li	a5,0
    80007bb0:	ef9ff06f          	j	80007aa8 <__memset+0xf0>
    80007bb4:	00200e93          	li	t4,2
    80007bb8:	e85ff06f          	j	80007a3c <__memset+0x84>
    80007bbc:	00400e93          	li	t4,4
    80007bc0:	e7dff06f          	j	80007a3c <__memset+0x84>
    80007bc4:	00500e93          	li	t4,5
    80007bc8:	e75ff06f          	j	80007a3c <__memset+0x84>
    80007bcc:	00600e93          	li	t4,6
    80007bd0:	e6dff06f          	j	80007a3c <__memset+0x84>

0000000080007bd4 <__memmove>:
    80007bd4:	ff010113          	addi	sp,sp,-16
    80007bd8:	00813423          	sd	s0,8(sp)
    80007bdc:	01010413          	addi	s0,sp,16
    80007be0:	0e060863          	beqz	a2,80007cd0 <__memmove+0xfc>
    80007be4:	fff6069b          	addiw	a3,a2,-1
    80007be8:	0006881b          	sext.w	a6,a3
    80007bec:	0ea5e863          	bltu	a1,a0,80007cdc <__memmove+0x108>
    80007bf0:	00758713          	addi	a4,a1,7
    80007bf4:	00a5e7b3          	or	a5,a1,a0
    80007bf8:	40a70733          	sub	a4,a4,a0
    80007bfc:	0077f793          	andi	a5,a5,7
    80007c00:	00f73713          	sltiu	a4,a4,15
    80007c04:	00174713          	xori	a4,a4,1
    80007c08:	0017b793          	seqz	a5,a5
    80007c0c:	00e7f7b3          	and	a5,a5,a4
    80007c10:	10078863          	beqz	a5,80007d20 <__memmove+0x14c>
    80007c14:	00900793          	li	a5,9
    80007c18:	1107f463          	bgeu	a5,a6,80007d20 <__memmove+0x14c>
    80007c1c:	0036581b          	srliw	a6,a2,0x3
    80007c20:	fff8081b          	addiw	a6,a6,-1
    80007c24:	02081813          	slli	a6,a6,0x20
    80007c28:	01d85893          	srli	a7,a6,0x1d
    80007c2c:	00858813          	addi	a6,a1,8
    80007c30:	00058793          	mv	a5,a1
    80007c34:	00050713          	mv	a4,a0
    80007c38:	01088833          	add	a6,a7,a6
    80007c3c:	0007b883          	ld	a7,0(a5)
    80007c40:	00878793          	addi	a5,a5,8
    80007c44:	00870713          	addi	a4,a4,8
    80007c48:	ff173c23          	sd	a7,-8(a4)
    80007c4c:	ff0798e3          	bne	a5,a6,80007c3c <__memmove+0x68>
    80007c50:	ff867713          	andi	a4,a2,-8
    80007c54:	02071793          	slli	a5,a4,0x20
    80007c58:	0207d793          	srli	a5,a5,0x20
    80007c5c:	00f585b3          	add	a1,a1,a5
    80007c60:	40e686bb          	subw	a3,a3,a4
    80007c64:	00f507b3          	add	a5,a0,a5
    80007c68:	06e60463          	beq	a2,a4,80007cd0 <__memmove+0xfc>
    80007c6c:	0005c703          	lbu	a4,0(a1)
    80007c70:	00e78023          	sb	a4,0(a5)
    80007c74:	04068e63          	beqz	a3,80007cd0 <__memmove+0xfc>
    80007c78:	0015c603          	lbu	a2,1(a1)
    80007c7c:	00100713          	li	a4,1
    80007c80:	00c780a3          	sb	a2,1(a5)
    80007c84:	04e68663          	beq	a3,a4,80007cd0 <__memmove+0xfc>
    80007c88:	0025c603          	lbu	a2,2(a1)
    80007c8c:	00200713          	li	a4,2
    80007c90:	00c78123          	sb	a2,2(a5)
    80007c94:	02e68e63          	beq	a3,a4,80007cd0 <__memmove+0xfc>
    80007c98:	0035c603          	lbu	a2,3(a1)
    80007c9c:	00300713          	li	a4,3
    80007ca0:	00c781a3          	sb	a2,3(a5)
    80007ca4:	02e68663          	beq	a3,a4,80007cd0 <__memmove+0xfc>
    80007ca8:	0045c603          	lbu	a2,4(a1)
    80007cac:	00400713          	li	a4,4
    80007cb0:	00c78223          	sb	a2,4(a5)
    80007cb4:	00e68e63          	beq	a3,a4,80007cd0 <__memmove+0xfc>
    80007cb8:	0055c603          	lbu	a2,5(a1)
    80007cbc:	00500713          	li	a4,5
    80007cc0:	00c782a3          	sb	a2,5(a5)
    80007cc4:	00e68663          	beq	a3,a4,80007cd0 <__memmove+0xfc>
    80007cc8:	0065c703          	lbu	a4,6(a1)
    80007ccc:	00e78323          	sb	a4,6(a5)
    80007cd0:	00813403          	ld	s0,8(sp)
    80007cd4:	01010113          	addi	sp,sp,16
    80007cd8:	00008067          	ret
    80007cdc:	02061713          	slli	a4,a2,0x20
    80007ce0:	02075713          	srli	a4,a4,0x20
    80007ce4:	00e587b3          	add	a5,a1,a4
    80007ce8:	f0f574e3          	bgeu	a0,a5,80007bf0 <__memmove+0x1c>
    80007cec:	02069613          	slli	a2,a3,0x20
    80007cf0:	02065613          	srli	a2,a2,0x20
    80007cf4:	fff64613          	not	a2,a2
    80007cf8:	00e50733          	add	a4,a0,a4
    80007cfc:	00c78633          	add	a2,a5,a2
    80007d00:	fff7c683          	lbu	a3,-1(a5)
    80007d04:	fff78793          	addi	a5,a5,-1
    80007d08:	fff70713          	addi	a4,a4,-1
    80007d0c:	00d70023          	sb	a3,0(a4)
    80007d10:	fec798e3          	bne	a5,a2,80007d00 <__memmove+0x12c>
    80007d14:	00813403          	ld	s0,8(sp)
    80007d18:	01010113          	addi	sp,sp,16
    80007d1c:	00008067          	ret
    80007d20:	02069713          	slli	a4,a3,0x20
    80007d24:	02075713          	srli	a4,a4,0x20
    80007d28:	00170713          	addi	a4,a4,1
    80007d2c:	00e50733          	add	a4,a0,a4
    80007d30:	00050793          	mv	a5,a0
    80007d34:	0005c683          	lbu	a3,0(a1)
    80007d38:	00178793          	addi	a5,a5,1
    80007d3c:	00158593          	addi	a1,a1,1
    80007d40:	fed78fa3          	sb	a3,-1(a5)
    80007d44:	fee798e3          	bne	a5,a4,80007d34 <__memmove+0x160>
    80007d48:	f89ff06f          	j	80007cd0 <__memmove+0xfc>

0000000080007d4c <__putc>:
    80007d4c:	fe010113          	addi	sp,sp,-32
    80007d50:	00813823          	sd	s0,16(sp)
    80007d54:	00113c23          	sd	ra,24(sp)
    80007d58:	02010413          	addi	s0,sp,32
    80007d5c:	00050793          	mv	a5,a0
    80007d60:	fef40593          	addi	a1,s0,-17
    80007d64:	00100613          	li	a2,1
    80007d68:	00000513          	li	a0,0
    80007d6c:	fef407a3          	sb	a5,-17(s0)
    80007d70:	fffff097          	auipc	ra,0xfffff
    80007d74:	b3c080e7          	jalr	-1220(ra) # 800068ac <console_write>
    80007d78:	01813083          	ld	ra,24(sp)
    80007d7c:	01013403          	ld	s0,16(sp)
    80007d80:	02010113          	addi	sp,sp,32
    80007d84:	00008067          	ret

0000000080007d88 <__getc>:
    80007d88:	fe010113          	addi	sp,sp,-32
    80007d8c:	00813823          	sd	s0,16(sp)
    80007d90:	00113c23          	sd	ra,24(sp)
    80007d94:	02010413          	addi	s0,sp,32
    80007d98:	fe840593          	addi	a1,s0,-24
    80007d9c:	00100613          	li	a2,1
    80007da0:	00000513          	li	a0,0
    80007da4:	fffff097          	auipc	ra,0xfffff
    80007da8:	ae8080e7          	jalr	-1304(ra) # 8000688c <console_read>
    80007dac:	fe844503          	lbu	a0,-24(s0)
    80007db0:	01813083          	ld	ra,24(sp)
    80007db4:	01013403          	ld	s0,16(sp)
    80007db8:	02010113          	addi	sp,sp,32
    80007dbc:	00008067          	ret

0000000080007dc0 <console_handler>:
    80007dc0:	fe010113          	addi	sp,sp,-32
    80007dc4:	00813823          	sd	s0,16(sp)
    80007dc8:	00113c23          	sd	ra,24(sp)
    80007dcc:	00913423          	sd	s1,8(sp)
    80007dd0:	02010413          	addi	s0,sp,32
    80007dd4:	14202773          	csrr	a4,scause
    80007dd8:	100027f3          	csrr	a5,sstatus
    80007ddc:	0027f793          	andi	a5,a5,2
    80007de0:	06079e63          	bnez	a5,80007e5c <console_handler+0x9c>
    80007de4:	00074c63          	bltz	a4,80007dfc <console_handler+0x3c>
    80007de8:	01813083          	ld	ra,24(sp)
    80007dec:	01013403          	ld	s0,16(sp)
    80007df0:	00813483          	ld	s1,8(sp)
    80007df4:	02010113          	addi	sp,sp,32
    80007df8:	00008067          	ret
    80007dfc:	0ff77713          	andi	a4,a4,255
    80007e00:	00900793          	li	a5,9
    80007e04:	fef712e3          	bne	a4,a5,80007de8 <console_handler+0x28>
    80007e08:	ffffe097          	auipc	ra,0xffffe
    80007e0c:	6dc080e7          	jalr	1756(ra) # 800064e4 <plic_claim>
    80007e10:	00a00793          	li	a5,10
    80007e14:	00050493          	mv	s1,a0
    80007e18:	02f50c63          	beq	a0,a5,80007e50 <console_handler+0x90>
    80007e1c:	fc0506e3          	beqz	a0,80007de8 <console_handler+0x28>
    80007e20:	00050593          	mv	a1,a0
    80007e24:	00000517          	auipc	a0,0x0
    80007e28:	7c450513          	addi	a0,a0,1988 # 800085e8 <CONSOLE_STATUS+0x5d8>
    80007e2c:	fffff097          	auipc	ra,0xfffff
    80007e30:	afc080e7          	jalr	-1284(ra) # 80006928 <__printf>
    80007e34:	01013403          	ld	s0,16(sp)
    80007e38:	01813083          	ld	ra,24(sp)
    80007e3c:	00048513          	mv	a0,s1
    80007e40:	00813483          	ld	s1,8(sp)
    80007e44:	02010113          	addi	sp,sp,32
    80007e48:	ffffe317          	auipc	t1,0xffffe
    80007e4c:	6d430067          	jr	1748(t1) # 8000651c <plic_complete>
    80007e50:	fffff097          	auipc	ra,0xfffff
    80007e54:	3e0080e7          	jalr	992(ra) # 80007230 <uartintr>
    80007e58:	fddff06f          	j	80007e34 <console_handler+0x74>
    80007e5c:	00001517          	auipc	a0,0x1
    80007e60:	88c50513          	addi	a0,a0,-1908 # 800086e8 <digits+0x78>
    80007e64:	fffff097          	auipc	ra,0xfffff
    80007e68:	a68080e7          	jalr	-1432(ra) # 800068cc <panic>
	...
