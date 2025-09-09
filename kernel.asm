
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	66813103          	ld	sp,1640(sp) # 8000b668 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	090060ef          	jal	ra,800060ac <start>

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
    80001184:	719000ef          	jal	ra,8000209c <_ZN5Riscv20handleSupervisorTrapEv>
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

0000000080001570 <_ZN11mySemaphore15createSemaphoreEj>:
// Created by os on 9/8/25.
//

#include "../h/Semaphore.hpp"

mySemaphore *mySemaphore::createSemaphore(unsigned int i) {
    80001570:	fe010113          	addi	sp,sp,-32
    80001574:	00113c23          	sd	ra,24(sp)
    80001578:	00813823          	sd	s0,16(sp)
    8000157c:	00913423          	sd	s1,8(sp)
    80001580:	02010413          	addi	s0,sp,32
    80001584:	00050493          	mv	s1,a0
    return new mySemaphore(i);
    80001588:	02000513          	li	a0,32
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	694080e7          	jalr	1684(ra) # 80001c20 <_Znwm>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    80001594:	00053023          	sd	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80001598:	00053423          	sd	zero,8(a0)
    8000159c:	00052823          	sw	zero,16(a0)
    int wait();
    int signal();
    int close();

private:
    mySemaphore(int init) : blockedQ(),val(init),closed(false){}
    800015a0:	00952c23          	sw	s1,24(a0)
    800015a4:	00050e23          	sb	zero,28(a0)
}
    800015a8:	01813083          	ld	ra,24(sp)
    800015ac:	01013403          	ld	s0,16(sp)
    800015b0:	00813483          	ld	s1,8(sp)
    800015b4:	02010113          	addi	sp,sp,32
    800015b8:	00008067          	ret

00000000800015bc <_ZN11mySemaphore5blockEv>:
    if(++this->val<=0) unblock();

    return 0;
}
void mySemaphore::block()
{
    800015bc:	fe010113          	addi	sp,sp,-32
    800015c0:	00113c23          	sd	ra,24(sp)
    800015c4:	00813823          	sd	s0,16(sp)
    800015c8:	00913423          	sd	s1,8(sp)
    800015cc:	01213023          	sd	s2,0(sp)
    800015d0:	02010413          	addi	s0,sp,32
    800015d4:	00050493          	mv	s1,a0
  TCB::running->setBlocked(true);
    800015d8:	0000a797          	auipc	a5,0xa
    800015dc:	0a07b783          	ld	a5,160(a5) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x40>
    800015e0:	0007b903          	ld	s2,0(a5)

    bool isFinished(){return finished;}
    void setFinished(bool flag){ TCB::finished = flag;}

    bool isBlocked(){return blocked;}
    void setBlocked(bool flag){ TCB::blocked = flag;}
    800015e4:	00100793          	li	a5,1
    800015e8:	02f908a3          	sb	a5,49(s2)
        size++;
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    800015ec:	01000513          	li	a0,16
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	630080e7          	jalr	1584(ra) # 80001c20 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800015f8:	01253023          	sd	s2,0(a0)
    800015fc:	00053423          	sd	zero,8(a0)
        if (tail)
    80001600:	0084b783          	ld	a5,8(s1)
    80001604:	02078c63          	beqz	a5,8000163c <_ZN11mySemaphore5blockEv+0x80>
        {
            tail->next = elem;
    80001608:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000160c:	00a4b423          	sd	a0,8(s1)
        } else
        {
            head = tail = elem;
        }
        size++;
    80001610:	0104a783          	lw	a5,16(s1)
    80001614:	0017879b          	addiw	a5,a5,1
    80001618:	00f4a823          	sw	a5,16(s1)
  blockedQ.addLast(TCB::running);
  TCB::dispatch();
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	440080e7          	jalr	1088(ra) # 80001a5c <_ZN3TCB8dispatchEv>
}
    80001624:	01813083          	ld	ra,24(sp)
    80001628:	01013403          	ld	s0,16(sp)
    8000162c:	00813483          	ld	s1,8(sp)
    80001630:	00013903          	ld	s2,0(sp)
    80001634:	02010113          	addi	sp,sp,32
    80001638:	00008067          	ret
            head = tail = elem;
    8000163c:	00a4b423          	sd	a0,8(s1)
    80001640:	00a4b023          	sd	a0,0(s1)
    80001644:	fcdff06f          	j	80001610 <_ZN11mySemaphore5blockEv+0x54>

0000000080001648 <_ZN11mySemaphore4waitEv>:
    if(closed) return -1;
    80001648:	01c54783          	lbu	a5,28(a0)
    8000164c:	06079a63          	bnez	a5,800016c0 <_ZN11mySemaphore4waitEv+0x78>
    if(--this->val<0) block();
    80001650:	01852783          	lw	a5,24(a0)
    80001654:	fff7879b          	addiw	a5,a5,-1
    80001658:	00f52c23          	sw	a5,24(a0)
    8000165c:	02079713          	slli	a4,a5,0x20
    80001660:	02074063          	bltz	a4,80001680 <_ZN11mySemaphore4waitEv+0x38>
    if(TCB::running->isClosed()) return -1;
    80001664:	0000a797          	auipc	a5,0xa
    80001668:	0147b783          	ld	a5,20(a5) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000166c:	0007b783          	ld	a5,0(a5)

    bool isClosed(){return closed;}
    80001670:	0327c783          	lbu	a5,50(a5)
    80001674:	04079e63          	bnez	a5,800016d0 <_ZN11mySemaphore4waitEv+0x88>
    return 0;
    80001678:	00000513          	li	a0,0
    8000167c:	00008067          	ret
int mySemaphore::wait() {
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00113423          	sd	ra,8(sp)
    80001688:	00813023          	sd	s0,0(sp)
    8000168c:	01010413          	addi	s0,sp,16
    if(--this->val<0) block();
    80001690:	00000097          	auipc	ra,0x0
    80001694:	f2c080e7          	jalr	-212(ra) # 800015bc <_ZN11mySemaphore5blockEv>
    if(TCB::running->isClosed()) return -1;
    80001698:	0000a797          	auipc	a5,0xa
    8000169c:	fe07b783          	ld	a5,-32(a5) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x40>
    800016a0:	0007b783          	ld	a5,0(a5)
    800016a4:	0327c783          	lbu	a5,50(a5)
    800016a8:	02079063          	bnez	a5,800016c8 <_ZN11mySemaphore4waitEv+0x80>
    return 0;
    800016ac:	00000513          	li	a0,0
}
    800016b0:	00813083          	ld	ra,8(sp)
    800016b4:	00013403          	ld	s0,0(sp)
    800016b8:	01010113          	addi	sp,sp,16
    800016bc:	00008067          	ret
    if(closed) return -1;
    800016c0:	fff00513          	li	a0,-1
    800016c4:	00008067          	ret
    if(TCB::running->isClosed()) return -1;
    800016c8:	fff00513          	li	a0,-1
    800016cc:	fe5ff06f          	j	800016b0 <_ZN11mySemaphore4waitEv+0x68>
    800016d0:	fff00513          	li	a0,-1
}
    800016d4:	00008067          	ret

00000000800016d8 <_ZN11mySemaphore7unblockEv>:

void mySemaphore::unblock()
{
    800016d8:	fe010113          	addi	sp,sp,-32
    800016dc:	00113c23          	sd	ra,24(sp)
    800016e0:	00813823          	sd	s0,16(sp)
    800016e4:	00913423          	sd	s1,8(sp)
    800016e8:	01213023          	sd	s2,0(sp)
    800016ec:	02010413          	addi	s0,sp,32
    800016f0:	00050493          	mv	s1,a0
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800016f4:	00053503          	ld	a0,0(a0)
    800016f8:	06050463          	beqz	a0,80001760 <_ZN11mySemaphore7unblockEv+0x88>

        Elem *elem = head;
        head = head->next;
    800016fc:	00853783          	ld	a5,8(a0)
    80001700:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    80001704:	04078a63          	beqz	a5,80001758 <_ZN11mySemaphore7unblockEv+0x80>

        T *ret = elem->data;
    80001708:	00053903          	ld	s2,0(a0)
        delete elem;
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	564080e7          	jalr	1380(ra) # 80001c70 <_ZdlPv>
        size--;
    80001714:	0104a783          	lw	a5,16(s1)
    80001718:	fff7879b          	addiw	a5,a5,-1
    8000171c:	00f4a823          	sw	a5,16(s1)
    TCB* cur=blockedQ.removeFirst();
    if(closed) cur->setClosed(true);
    80001720:	01c4c783          	lbu	a5,28(s1)
    80001724:	00078663          	beqz	a5,80001730 <_ZN11mySemaphore7unblockEv+0x58>
    void setClosed(bool flag){ TCB::closed = flag;}
    80001728:	00100793          	li	a5,1
    8000172c:	02f90923          	sb	a5,50(s2)
    void setBlocked(bool flag){ TCB::blocked = flag;}
    80001730:	020908a3          	sb	zero,49(s2)
    cur->setBlocked(false);
    Scheduler::put(cur);
    80001734:	00090513          	mv	a0,s2
    80001738:	00001097          	auipc	ra,0x1
    8000173c:	df8080e7          	jalr	-520(ra) # 80002530 <_ZN9Scheduler3putEP3TCB>
}
    80001740:	01813083          	ld	ra,24(sp)
    80001744:	01013403          	ld	s0,16(sp)
    80001748:	00813483          	ld	s1,8(sp)
    8000174c:	00013903          	ld	s2,0(sp)
    80001750:	02010113          	addi	sp,sp,32
    80001754:	00008067          	ret
        if (!head) { tail = 0; }
    80001758:	0004b423          	sd	zero,8(s1)
    8000175c:	fadff06f          	j	80001708 <_ZN11mySemaphore7unblockEv+0x30>
        if (!head) { return 0; }
    80001760:	00050913          	mv	s2,a0
    80001764:	fbdff06f          	j	80001720 <_ZN11mySemaphore7unblockEv+0x48>

0000000080001768 <_ZN11mySemaphore5closeEv>:
    if(closed) return -1;
    80001768:	01c54783          	lbu	a5,28(a0)
    8000176c:	04079863          	bnez	a5,800017bc <_ZN11mySemaphore5closeEv+0x54>
int mySemaphore::close() {
    80001770:	fe010113          	addi	sp,sp,-32
    80001774:	00113c23          	sd	ra,24(sp)
    80001778:	00813823          	sd	s0,16(sp)
    8000177c:	00913423          	sd	s1,8(sp)
    80001780:	02010413          	addi	s0,sp,32
    80001784:	00050493          	mv	s1,a0
    closed=true;
    80001788:	00100793          	li	a5,1
    8000178c:	00f50e23          	sb	a5,28(a0)
    80001790:	0100006f          	j	800017a0 <_ZN11mySemaphore5closeEv+0x38>
        unblock();
    80001794:	00048513          	mv	a0,s1
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	f40080e7          	jalr	-192(ra) # 800016d8 <_ZN11mySemaphore7unblockEv>
    int getSize() {return size;}
    800017a0:	0104a503          	lw	a0,16(s1)
    while(blockedQ.getSize()){
    800017a4:	fe0518e3          	bnez	a0,80001794 <_ZN11mySemaphore5closeEv+0x2c>
}
    800017a8:	01813083          	ld	ra,24(sp)
    800017ac:	01013403          	ld	s0,16(sp)
    800017b0:	00813483          	ld	s1,8(sp)
    800017b4:	02010113          	addi	sp,sp,32
    800017b8:	00008067          	ret
    if(closed) return -1;
    800017bc:	fff00513          	li	a0,-1
}
    800017c0:	00008067          	ret

00000000800017c4 <_ZN11mySemaphoreD1Ev>:
mySemaphore::~mySemaphore()
    800017c4:	ff010113          	addi	sp,sp,-16
    800017c8:	00113423          	sd	ra,8(sp)
    800017cc:	00813023          	sd	s0,0(sp)
    800017d0:	01010413          	addi	s0,sp,16
    close();
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	f94080e7          	jalr	-108(ra) # 80001768 <_ZN11mySemaphore5closeEv>
}
    800017dc:	00813083          	ld	ra,8(sp)
    800017e0:	00013403          	ld	s0,0(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret

00000000800017ec <_ZN11mySemaphore6signalEv>:
    if(closed) return -1;
    800017ec:	01c54783          	lbu	a5,28(a0)
    800017f0:	04079663          	bnez	a5,8000183c <_ZN11mySemaphore6signalEv+0x50>
    if(++this->val<=0) unblock();
    800017f4:	01852783          	lw	a5,24(a0)
    800017f8:	0017879b          	addiw	a5,a5,1
    800017fc:	0007871b          	sext.w	a4,a5
    80001800:	00f52c23          	sw	a5,24(a0)
    80001804:	00e05663          	blez	a4,80001810 <_ZN11mySemaphore6signalEv+0x24>
    return 0;
    80001808:	00000513          	li	a0,0
}
    8000180c:	00008067          	ret
int mySemaphore::signal() {
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00113423          	sd	ra,8(sp)
    80001818:	00813023          	sd	s0,0(sp)
    8000181c:	01010413          	addi	s0,sp,16
    if(++this->val<=0) unblock();
    80001820:	00000097          	auipc	ra,0x0
    80001824:	eb8080e7          	jalr	-328(ra) # 800016d8 <_ZN11mySemaphore7unblockEv>
    return 0;
    80001828:	00000513          	li	a0,0
}
    8000182c:	00813083          	ld	ra,8(sp)
    80001830:	00013403          	ld	s0,0(sp)
    80001834:	01010113          	addi	sp,sp,16
    80001838:	00008067          	ret
    if(closed) return -1;
    8000183c:	fff00513          	li	a0,-1
    80001840:	00008067          	ret

0000000080001844 <_Z15userMainWrapperPv>:
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"

extern void userMain();

void userMainWrapper(void* arg){
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00113423          	sd	ra,8(sp)
    8000184c:	00813023          	sd	s0,0(sp)
    80001850:	01010413          	addi	s0,sp,16
    userMain();
    80001854:	00004097          	auipc	ra,0x4
    80001858:	cd0080e7          	jalr	-816(ra) # 80005524 <_Z8userMainv>
}
    8000185c:	00813083          	ld	ra,8(sp)
    80001860:	00013403          	ld	s0,0(sp)
    80001864:	01010113          	addi	sp,sp,16
    80001868:	00008067          	ret

000000008000186c <main>:
int main(){
    8000186c:	fe010113          	addi	sp,sp,-32
    80001870:	00113c23          	sd	ra,24(sp)
    80001874:	00813823          	sd	s0,16(sp)
    80001878:	00913423          	sd	s1,8(sp)
    8000187c:	02010413          	addi	s0,sp,32
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static size_t getLargestFreeBlock();
    static size_t getFree();
    static void initMemory(){
        freeMemHead=(FreeBlock*) HEAP_START_ADDR;
    80001880:	0000a797          	auipc	a5,0xa
    80001884:	dc87b783          	ld	a5,-568(a5) # 8000b648 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001888:	0007b783          	ld	a5,0(a5)
    8000188c:	0000a697          	auipc	a3,0xa
    80001890:	dd46b683          	ld	a3,-556(a3) # 8000b660 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001894:	00f6b023          	sd	a5,0(a3)
        freeMemHead->next=nullptr;
    80001898:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    8000189c:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    800018a0:	0000a717          	auipc	a4,0xa
    800018a4:	de073703          	ld	a4,-544(a4) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    800018a8:	00073703          	ld	a4,0(a4)
    800018ac:	40f70733          	sub	a4,a4,a5
    800018b0:	fe870713          	addi	a4,a4,-24
    800018b4:	00e7b023          	sd	a4,0(a5)
        totalFreeMem=freeMemHead->size;
    800018b8:	0006b783          	ld	a5,0(a3)
    800018bc:	0007b783          	ld	a5,0(a5)
    800018c0:	0000a717          	auipc	a4,0xa
    800018c4:	db073703          	ld	a4,-592(a4) # 8000b670 <_GLOBAL_OFFSET_TABLE_+0x38>
    800018c8:	00f73023          	sd	a5,0(a4)
        largestFreeBlock=totalFreeMem;
    800018cc:	0000a717          	auipc	a4,0xa
    800018d0:	d7473703          	ld	a4,-652(a4) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x8>
    800018d4:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::initMemory();
    TCB *threads[5];
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800018d8:	0000a797          	auipc	a5,0xa
    800018dc:	d787b783          	ld	a5,-648(a5) # 8000b650 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800018e0:	10579073          	csrw	stvec,a5
    //globalno prihvatamo prekide u supervizorskom modu
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    threads[0]=TCB::createThreadBasic(nullptr,nullptr);
    800018e4:	00000593          	li	a1,0
    800018e8:	00000513          	li	a0,0
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	204080e7          	jalr	516(ra) # 80001af0 <_ZN3TCB17createThreadBasicEPFvPvES0_>
    TCB::running = threads[0];
    800018f4:	0000a797          	auipc	a5,0xa
    800018f8:	d847b783          	ld	a5,-636(a5) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x40>
    800018fc:	00a7b023          	sd	a0,0(a5)

    TCB* userThread=TCB::createThreadBasic(&userMainWrapper,nullptr);
    80001900:	00000593          	li	a1,0
    80001904:	00000517          	auipc	a0,0x0
    80001908:	f4050513          	addi	a0,a0,-192 # 80001844 <_Z15userMainWrapperPv>
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	1e4080e7          	jalr	484(ra) # 80001af0 <_ZN3TCB17createThreadBasicEPFvPvES0_>
    80001914:	00050493          	mv	s1,a0
class TCB
{
public:
    ~TCB(){delete[] stack;}

    bool isFinished(){return finished;}
    80001918:	0304c783          	lbu	a5,48(s1)
    while(!userThread->isFinished()) {
    8000191c:	00079863          	bnez	a5,8000192c <main+0xc0>
        thread_dispatch();
    80001920:	00000097          	auipc	ra,0x0
    80001924:	ab4080e7          	jalr	-1356(ra) # 800013d4 <_Z15thread_dispatchv>
    80001928:	ff1ff06f          	j	80001918 <main+0xac>
    }

    printString("Vratio sam se u main\n");
    8000192c:	00007517          	auipc	a0,0x7
    80001930:	6f450513          	addi	a0,a0,1780 # 80009020 <CONSOLE_STATUS+0x10>
    80001934:	00003097          	auipc	ra,0x3
    80001938:	528080e7          	jalr	1320(ra) # 80004e5c <_Z11printStringPKc>

    return 0;
    8000193c:	00000513          	li	a0,0
    80001940:	01813083          	ld	ra,24(sp)
    80001944:	01013403          	ld	s0,16(sp)
    80001948:	00813483          	ld	s1,8(sp)
    8000194c:	02010113          	addi	sp,sp,32
    80001950:	00008067          	ret

0000000080001954 <_ZN3TCB13threadWrapperEv>:
        MemoryAllocator::mem_free(old);

    }
}

void TCB::threadWrapper(){
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	00813023          	sd	s0,0(sp)
    80001960:	01010413          	addi	s0,sp,16
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    80001964:	00000097          	auipc	ra,0x0
    80001968:	710080e7          	jalr	1808(ra) # 80002074 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    8000196c:	0000a797          	auipc	a5,0xa
    80001970:	d647b783          	ld	a5,-668(a5) # 8000b6d0 <_ZN3TCB7runningE>
    80001974:	0007b703          	ld	a4,0(a5)
    80001978:	0087b503          	ld	a0,8(a5)
    8000197c:	000700e7          	jalr	a4
    thread_exit();
    80001980:	00000097          	auipc	ra,0x0
    80001984:	a20080e7          	jalr	-1504(ra) # 800013a0 <_Z11thread_exitv>
}
    80001988:	00813083          	ld	ra,8(sp)
    8000198c:	00013403          	ld	s0,0(sp)
    80001990:	01010113          	addi	sp,sp,16
    80001994:	00008067          	ret

0000000080001998 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
{
    80001998:	fd010113          	addi	sp,sp,-48
    8000199c:	02113423          	sd	ra,40(sp)
    800019a0:	02813023          	sd	s0,32(sp)
    800019a4:	00913c23          	sd	s1,24(sp)
    800019a8:	01213823          	sd	s2,16(sp)
    800019ac:	01313423          	sd	s3,8(sp)
    800019b0:	01413023          	sd	s4,0(sp)
    800019b4:	03010413          	addi	s0,sp,48
    800019b8:	00050993          	mv	s3,a0
    800019bc:	00058a13          	mv	s4,a1
    800019c0:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace);
    800019c4:	03800513          	li	a0,56
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	258080e7          	jalr	600(ra) # 80001c20 <_Znwm>
    800019d0:	00050493          	mv	s1,a0
                                                       (uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
                                                       (uint64) &stack[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                                               }),
                                       finished(false),
                                       blocked(false),
                                       closed(false)
    800019d4:	01353023          	sd	s3,0(a0)
    800019d8:	01453423          	sd	s4,8(a0)
    800019dc:	01253823          	sd	s2,16(a0)
    800019e0:	00200793          	li	a5,2
    800019e4:	00f53c23          	sd	a5,24(a0)
    800019e8:	00000797          	auipc	a5,0x0
    800019ec:	f6c78793          	addi	a5,a5,-148 # 80001954 <_ZN3TCB13threadWrapperEv>
    800019f0:	02f53023          	sd	a5,32(a0)
                                                       (uint64) &stack[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    800019f4:	00001637          	lui	a2,0x1
    800019f8:	00c90933          	add	s2,s2,a2
                                       closed(false)
    800019fc:	03253423          	sd	s2,40(a0)
    80001a00:	02050823          	sb	zero,48(a0)
    80001a04:	020508a3          	sb	zero,49(a0)
    80001a08:	02050923          	sb	zero,50(a0)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001a0c:	02098663          	beqz	s3,80001a38 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa0>
    80001a10:	00001097          	auipc	ra,0x1
    80001a14:	b20080e7          	jalr	-1248(ra) # 80002530 <_ZN9Scheduler3putEP3TCB>
    80001a18:	0200006f          	j	80001a38 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa0>
    80001a1c:	00050913          	mv	s2,a0
    80001a20:	00048513          	mv	a0,s1
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	24c080e7          	jalr	588(ra) # 80001c70 <_ZdlPv>
    80001a2c:	00090513          	mv	a0,s2
    80001a30:	0000b097          	auipc	ra,0xb
    80001a34:	df8080e7          	jalr	-520(ra) # 8000c828 <_Unwind_Resume>
}
    80001a38:	00048513          	mv	a0,s1
    80001a3c:	02813083          	ld	ra,40(sp)
    80001a40:	02013403          	ld	s0,32(sp)
    80001a44:	01813483          	ld	s1,24(sp)
    80001a48:	01013903          	ld	s2,16(sp)
    80001a4c:	00813983          	ld	s3,8(sp)
    80001a50:	00013a03          	ld	s4,0(sp)
    80001a54:	03010113          	addi	sp,sp,48
    80001a58:	00008067          	ret

0000000080001a5c <_ZN3TCB8dispatchEv>:
{
    80001a5c:	fe010113          	addi	sp,sp,-32
    80001a60:	00113c23          	sd	ra,24(sp)
    80001a64:	00813823          	sd	s0,16(sp)
    80001a68:	00913423          	sd	s1,8(sp)
    80001a6c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001a70:	0000a497          	auipc	s1,0xa
    80001a74:	c604b483          	ld	s1,-928(s1) # 8000b6d0 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001a78:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->isBlocked()) Scheduler::put(old);
    80001a7c:	00079663          	bnez	a5,80001a88 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked(){return blocked;}
    80001a80:	0314c783          	lbu	a5,49(s1)
    80001a84:	04078063          	beqz	a5,80001ac4 <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	a2c080e7          	jalr	-1492(ra) # 800024b4 <_ZN9Scheduler3getEv>
    80001a90:	0000a797          	auipc	a5,0xa
    80001a94:	c4a7b023          	sd	a0,-960(a5) # 8000b6d0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a98:	02050593          	addi	a1,a0,32
    80001a9c:	02048513          	addi	a0,s1,32
    80001aa0:	fffff097          	auipc	ra,0xfffff
    80001aa4:	770080e7          	jalr	1904(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    bool isFinished(){return finished;}
    80001aa8:	0304c783          	lbu	a5,48(s1)
    if(old->isFinished()) {
    80001aac:	02079463          	bnez	a5,80001ad4 <_ZN3TCB8dispatchEv+0x78>
}
    80001ab0:	01813083          	ld	ra,24(sp)
    80001ab4:	01013403          	ld	s0,16(sp)
    80001ab8:	00813483          	ld	s1,8(sp)
    80001abc:	02010113          	addi	sp,sp,32
    80001ac0:	00008067          	ret
    if(!old->isFinished() && !old->isBlocked()) Scheduler::put(old);
    80001ac4:	00048513          	mv	a0,s1
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	a68080e7          	jalr	-1432(ra) # 80002530 <_ZN9Scheduler3putEP3TCB>
    80001ad0:	fb9ff06f          	j	80001a88 <_ZN3TCB8dispatchEv+0x2c>
        MemoryAllocator::mem_free(old->stack);
    80001ad4:	0104b503          	ld	a0,16(s1)
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	cfc080e7          	jalr	-772(ra) # 800027d4 <_ZN15MemoryAllocator8mem_freeEPv>
        MemoryAllocator::mem_free(old);
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	cf0080e7          	jalr	-784(ra) # 800027d4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001aec:	fc5ff06f          	j	80001ab0 <_ZN3TCB8dispatchEv+0x54>

0000000080001af0 <_ZN3TCB17createThreadBasicEPFvPvES0_>:

TCB *TCB::createThreadBasic(TCB::Body body, void *arg)
{
    80001af0:	fd010113          	addi	sp,sp,-48
    80001af4:	02113423          	sd	ra,40(sp)
    80001af8:	02813023          	sd	s0,32(sp)
    80001afc:	00913c23          	sd	s1,24(sp)
    80001b00:	01213823          	sd	s2,16(sp)
    80001b04:	01313423          	sd	s3,8(sp)
    80001b08:	03010413          	addi	s0,sp,48
    80001b0c:	00050913          	mv	s2,a0
    80001b10:	00058993          	mv	s3,a1
    return new TCB(body,arg,DEFAULT_TIME_SLICE);
    80001b14:	03800513          	li	a0,56
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	108080e7          	jalr	264(ra) # 80001c20 <_Znwm>
    80001b20:	00050493          	mv	s1,a0
                                       closed(false)
    80001b24:	01253023          	sd	s2,0(a0)
    80001b28:	01353423          	sd	s3,8(a0)
                                       stack(body!=nullptr? (char*)(new char*[DEFAULT_STACK_SIZE]): nullptr),timeSlice(timeslice),
    80001b2c:	00090a63          	beqz	s2,80001b40 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x50>
    80001b30:	00008537          	lui	a0,0x8
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	114080e7          	jalr	276(ra) # 80001c48 <_Znam>
    80001b3c:	0080006f          	j	80001b44 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x54>
    80001b40:	00000513          	li	a0,0
                                       closed(false)
    80001b44:	00a4b823          	sd	a0,16(s1)
    80001b48:	00200793          	li	a5,2
    80001b4c:	00f4bc23          	sd	a5,24(s1)
    80001b50:	00000797          	auipc	a5,0x0
    80001b54:	e0478793          	addi	a5,a5,-508 # 80001954 <_ZN3TCB13threadWrapperEv>
    80001b58:	02f4b023          	sd	a5,32(s1)
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001b5c:	02090863          	beqz	s2,80001b8c <_ZN3TCB17createThreadBasicEPFvPvES0_+0x9c>
    80001b60:	000017b7          	lui	a5,0x1
    80001b64:	00f50533          	add	a0,a0,a5
                                       closed(false)
    80001b68:	02a4b423          	sd	a0,40(s1)
    80001b6c:	02048823          	sb	zero,48(s1)
    80001b70:	020488a3          	sb	zero,49(s1)
    80001b74:	02048923          	sb	zero,50(s1)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001b78:	02090c63          	beqz	s2,80001bb0 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc0>
    80001b7c:	00048513          	mv	a0,s1
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	9b0080e7          	jalr	-1616(ra) # 80002530 <_ZN9Scheduler3putEP3TCB>
    80001b88:	0280006f          	j	80001bb0 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc0>
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001b8c:	00000513          	li	a0,0
    80001b90:	fd9ff06f          	j	80001b68 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x78>
    80001b94:	00050913          	mv	s2,a0
    80001b98:	00048513          	mv	a0,s1
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	0d4080e7          	jalr	212(ra) # 80001c70 <_ZdlPv>
    80001ba4:	00090513          	mv	a0,s2
    80001ba8:	0000b097          	auipc	ra,0xb
    80001bac:	c80080e7          	jalr	-896(ra) # 8000c828 <_Unwind_Resume>
}
    80001bb0:	00048513          	mv	a0,s1
    80001bb4:	02813083          	ld	ra,40(sp)
    80001bb8:	02013403          	ld	s0,32(sp)
    80001bbc:	01813483          	ld	s1,24(sp)
    80001bc0:	01013903          	ld	s2,16(sp)
    80001bc4:	00813983          	ld	s3,8(sp)
    80001bc8:	03010113          	addi	sp,sp,48
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN6ThreadD1Ev>:
#define syscall_cpp
#include "./syscall_c.h"
void* operator new (size_t);
void operator delete (void*);

class Thread {
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00813423          	sd	s0,8(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    80001bdc:	00813403          	ld	s0,8(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    80001bf8:	0000a797          	auipc	a5,0xa
    80001bfc:	85878793          	addi	a5,a5,-1960 # 8000b450 <_ZTV9Semaphore+0x10>
    80001c00:	00f53023          	sd	a5,0(a0) # 8000 <_entry-0x7fff8000>
    sem_close(myHandle);
    80001c04:	00853503          	ld	a0,8(a0)
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	82c080e7          	jalr	-2004(ra) # 80001434 <_Z9sem_closeP4_sem>
}
    80001c10:	00813083          	ld	ra,8(sp)
    80001c14:	00013403          	ld	s0,0(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_Znwm>:
void* operator new (size_t mem){ return mem_alloc(mem);}
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00113423          	sd	ra,8(sp)
    80001c28:	00813023          	sd	s0,0(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	614080e7          	jalr	1556(ra) # 80001244 <_Z9mem_allocm>
    80001c38:	00813083          	ld	ra,8(sp)
    80001c3c:	00013403          	ld	s0,0(sp)
    80001c40:	01010113          	addi	sp,sp,16
    80001c44:	00008067          	ret

0000000080001c48 <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    80001c48:	ff010113          	addi	sp,sp,-16
    80001c4c:	00113423          	sd	ra,8(sp)
    80001c50:	00813023          	sd	s0,0(sp)
    80001c54:	01010413          	addi	s0,sp,16
    80001c58:	fffff097          	auipc	ra,0xfffff
    80001c5c:	5ec080e7          	jalr	1516(ra) # 80001244 <_Z9mem_allocm>
    80001c60:	00813083          	ld	ra,8(sp)
    80001c64:	00013403          	ld	s0,0(sp)
    80001c68:	01010113          	addi	sp,sp,16
    80001c6c:	00008067          	ret

0000000080001c70 <_ZdlPv>:
void operator delete(void* addr) { mem_free(addr); }
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	00813023          	sd	s0,0(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    80001c80:	fffff097          	auipc	ra,0xfffff
    80001c84:	600080e7          	jalr	1536(ra) # 80001280 <_Z8mem_freePv>
    80001c88:	00813083          	ld	ra,8(sp)
    80001c8c:	00013403          	ld	s0,0(sp)
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret

0000000080001c98 <_ZN6ThreadD0Ev>:
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	fc8080e7          	jalr	-56(ra) # 80001c70 <_ZdlPv>
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001cc0:	fe010113          	addi	sp,sp,-32
    80001cc4:	00113c23          	sd	ra,24(sp)
    80001cc8:	00813823          	sd	s0,16(sp)
    80001ccc:	00913423          	sd	s1,8(sp)
    80001cd0:	02010413          	addi	s0,sp,32
    80001cd4:	00050493          	mv	s1,a0
}
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	f10080e7          	jalr	-240(ra) # 80001be8 <_ZN9SemaphoreD1Ev>
    80001ce0:	00048513          	mv	a0,s1
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	f8c080e7          	jalr	-116(ra) # 80001c70 <_ZdlPv>
    80001cec:	01813083          	ld	ra,24(sp)
    80001cf0:	01013403          	ld	s0,16(sp)
    80001cf4:	00813483          	ld	s1,8(sp)
    80001cf8:	02010113          	addi	sp,sp,32
    80001cfc:	00008067          	ret

0000000080001d00 <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00113423          	sd	ra,8(sp)
    80001d08:	00813023          	sd	s0,0(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    80001d10:	fffff097          	auipc	ra,0xfffff
    80001d14:	570080e7          	jalr	1392(ra) # 80001280 <_Z8mem_freePv>
    80001d18:	00813083          	ld	ra,8(sp)
    80001d1c:	00013403          	ld	s0,0(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00813423          	sd	s0,8(sp)
    80001d30:	01010413          	addi	s0,sp,16
    80001d34:	00009797          	auipc	a5,0x9
    80001d38:	6f478793          	addi	a5,a5,1780 # 8000b428 <_ZTV6Thread+0x10>
    80001d3c:	00f53023          	sd	a5,0(a0)
    80001d40:	00053423          	sd	zero,8(a0)
    80001d44:	00b53823          	sd	a1,16(a0)
    80001d48:	00c53c23          	sd	a2,24(a0)
}
    80001d4c:	00813403          	ld	s0,8(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret

0000000080001d58 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
    80001d58:	ff010113          	addi	sp,sp,-16
    80001d5c:	00813423          	sd	s0,8(sp)
    80001d60:	01010413          	addi	s0,sp,16
    80001d64:	00009797          	auipc	a5,0x9
    80001d68:	6c478793          	addi	a5,a5,1732 # 8000b428 <_ZTV6Thread+0x10>
    80001d6c:	00f53023          	sd	a5,0(a0)
    80001d70:	00053423          	sd	zero,8(a0)
    80001d74:	00000797          	auipc	a5,0x0
    80001d78:	25c78793          	addi	a5,a5,604 # 80001fd0 <_ZN6Thread10runWrapperEPv>
    80001d7c:	00f53823          	sd	a5,16(a0)
    80001d80:	00a53c23          	sd	a0,24(a0)
}
    80001d84:	00813403          	ld	s0,8(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret

0000000080001d90 <_ZN6Thread8dispatchEv>:
{
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00113423          	sd	ra,8(sp)
    80001d98:	00813023          	sd	s0,0(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001da0:	fffff097          	auipc	ra,0xfffff
    80001da4:	634080e7          	jalr	1588(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80001da8:	00813083          	ld	ra,8(sp)
    80001dac:	00013403          	ld	s0,0(sp)
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret

0000000080001db8 <_ZN6Thread5startEv>:
{
    80001db8:	ff010113          	addi	sp,sp,-16
    80001dbc:	00113423          	sd	ra,8(sp)
    80001dc0:	00813023          	sd	s0,0(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,body, arg);
    80001dc8:	01853603          	ld	a2,24(a0)
    80001dcc:	01053583          	ld	a1,16(a0)
    80001dd0:	00850513          	addi	a0,a0,8
    80001dd4:	fffff097          	auipc	ra,0xfffff
    80001dd8:	544080e7          	jalr	1348(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001ddc:	00813083          	ld	ra,8(sp)
    80001de0:	00013403          	ld	s0,0(sp)
    80001de4:	01010113          	addi	sp,sp,16
    80001de8:	00008067          	ret

0000000080001dec <_ZN6Thread5sleepEm>:
{
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00113423          	sd	ra,8(sp)
    80001df4:	00813023          	sd	s0,0(sp)
    80001df8:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001dfc:	fffff097          	auipc	ra,0xfffff
    80001e00:	6e0080e7          	jalr	1760(ra) # 800014dc <_Z10time_sleepm>
}
    80001e04:	00813083          	ld	ra,8(sp)
    80001e08:	00013403          	ld	s0,0(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <_ZN14PeriodicThread3runEv>:
}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    80001e14:	fe010113          	addi	sp,sp,-32
    80001e18:	00113c23          	sd	ra,24(sp)
    80001e1c:	00813823          	sd	s0,16(sp)
    80001e20:	00913423          	sd	s1,8(sp)
    80001e24:	02010413          	addi	s0,sp,32
    80001e28:	00050493          	mv	s1,a0
    while(period){
    80001e2c:	0204b783          	ld	a5,32(s1)
    80001e30:	02078263          	beqz	a5,80001e54 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001e34:	0004b783          	ld	a5,0(s1)
    80001e38:	0187b783          	ld	a5,24(a5)
    80001e3c:	00048513          	mv	a0,s1
    80001e40:	000780e7          	jalr	a5
        sleep(period);
    80001e44:	0204b503          	ld	a0,32(s1)
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	fa4080e7          	jalr	-92(ra) # 80001dec <_ZN6Thread5sleepEm>
    while(period){
    80001e50:	fddff06f          	j	80001e2c <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001e54:	01813083          	ld	ra,24(sp)
    80001e58:	01013403          	ld	s0,16(sp)
    80001e5c:	00813483          	ld	s1,8(sp)
    80001e60:	02010113          	addi	sp,sp,32
    80001e64:	00008067          	ret

0000000080001e68 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    80001e78:	00009797          	auipc	a5,0x9
    80001e7c:	5d878793          	addi	a5,a5,1496 # 8000b450 <_ZTV9Semaphore+0x10>
    80001e80:	00f53023          	sd	a5,0(a0)
    80001e84:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    80001e88:	00850513          	addi	a0,a0,8
    80001e8c:	fffff097          	auipc	ra,0xfffff
    80001e90:	56c080e7          	jalr	1388(ra) # 800013f8 <_Z8sem_openPP4_semj>
}
    80001e94:	00813083          	ld	ra,8(sp)
    80001e98:	00013403          	ld	s0,0(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00113423          	sd	ra,8(sp)
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001eb4:	00853503          	ld	a0,8(a0)
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	5b4080e7          	jalr	1460(ra) # 8000146c <_Z8sem_waitP4_sem>
}
    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00113423          	sd	ra,8(sp)
    80001ed8:	00813023          	sd	s0,0(sp)
    80001edc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001ee0:	00853503          	ld	a0,8(a0)
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	5c0080e7          	jalr	1472(ra) # 800014a4 <_Z10sem_signalP4_sem>
}
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){
    80001efc:	fe010113          	addi	sp,sp,-32
    80001f00:	00113c23          	sd	ra,24(sp)
    80001f04:	00813823          	sd	s0,16(sp)
    80001f08:	00913423          	sd	s1,8(sp)
    80001f0c:	01213023          	sd	s2,0(sp)
    80001f10:	02010413          	addi	s0,sp,32
    80001f14:	00050493          	mv	s1,a0
    80001f18:	00058913          	mv	s2,a1
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	e3c080e7          	jalr	-452(ra) # 80001d58 <_ZN6ThreadC1Ev>
    80001f24:	00009797          	auipc	a5,0x9
    80001f28:	54c78793          	addi	a5,a5,1356 # 8000b470 <_ZTV14PeriodicThread+0x10>
    80001f2c:	00f4b023          	sd	a5,0(s1)
    80001f30:	0324b023          	sd	s2,32(s1)
}
    80001f34:	01813083          	ld	ra,24(sp)
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	00813483          	ld	s1,8(sp)
    80001f40:	00013903          	ld	s2,0(sp)
    80001f44:	02010113          	addi	sp,sp,32
    80001f48:	00008067          	ret

0000000080001f4c <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00813423          	sd	s0,8(sp)
    80001f54:	01010413          	addi	s0,sp,16
    period=0;
    80001f58:	02053023          	sd	zero,32(a0)
}
    80001f5c:	00813403          	ld	s0,8(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret

0000000080001f68 <_ZN7Console4getcEv>:

char Console::getc() {
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00113423          	sd	ra,8(sp)
    80001f70:	00813023          	sd	s0,0(sp)
    80001f74:	01010413          	addi	s0,sp,16
    return ::getc();
    80001f78:	fffff097          	auipc	ra,0xfffff
    80001f7c:	59c080e7          	jalr	1436(ra) # 80001514 <_Z4getcv>
}
    80001f80:	00813083          	ld	ra,8(sp)
    80001f84:	00013403          	ld	s0,0(sp)
    80001f88:	01010113          	addi	sp,sp,16
    80001f8c:	00008067          	ret

0000000080001f90 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00113423          	sd	ra,8(sp)
    80001f98:	00813023          	sd	s0,0(sp)
    80001f9c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001fa0:	fffff097          	auipc	ra,0xfffff
    80001fa4:	5a8080e7          	jalr	1448(ra) # 80001548 <_Z4putcc>
    80001fa8:	00813083          	ld	ra,8(sp)
    80001fac:	00013403          	ld	s0,0(sp)
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00813423          	sd	s0,8(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    80001fc4:	00813403          	ld	s0,8(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN6Thread10runWrapperEPv>:
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* thread){
        if(thread) ((Thread*) thread)->run();
    80001fd0:	02050863          	beqz	a0,80002000 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread){
    80001fd4:	ff010113          	addi	sp,sp,-16
    80001fd8:	00113423          	sd	ra,8(sp)
    80001fdc:	00813023          	sd	s0,0(sp)
    80001fe0:	01010413          	addi	s0,sp,16
        if(thread) ((Thread*) thread)->run();
    80001fe4:	00053783          	ld	a5,0(a0)
    80001fe8:	0107b783          	ld	a5,16(a5)
    80001fec:	000780e7          	jalr	a5
    }
    80001ff0:	00813083          	ld	ra,8(sp)
    80001ff4:	00013403          	ld	s0,0(sp)
    80001ff8:	01010113          	addi	sp,sp,16
    80001ffc:	00008067          	ret
    80002000:	00008067          	ret

0000000080002004 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00813423          	sd	s0,8(sp)
    8000200c:	01010413          	addi	s0,sp,16
    80002010:	00813403          	ld	s0,8(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    80002028:	00009797          	auipc	a5,0x9
    8000202c:	44878793          	addi	a5,a5,1096 # 8000b470 <_ZTV14PeriodicThread+0x10>
    80002030:	00f53023          	sd	a5,0(a0)
    80002034:	00813403          	ld	s0,8(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_ZN14PeriodicThreadD0Ev>:
    80002040:	ff010113          	addi	sp,sp,-16
    80002044:	00113423          	sd	ra,8(sp)
    80002048:	00813023          	sd	s0,0(sp)
    8000204c:	01010413          	addi	s0,sp,16
    80002050:	00009797          	auipc	a5,0x9
    80002054:	42078793          	addi	a5,a5,1056 # 8000b470 <_ZTV14PeriodicThread+0x10>
    80002058:	00f53023          	sd	a5,0(a0)
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	c14080e7          	jalr	-1004(ra) # 80001c70 <_ZdlPv>
    80002064:	00813083          	ld	ra,8(sp)
    80002068:	00013403          	ld	s0,0(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.h"
#include "../h/Semaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00813423          	sd	s0,8(sp)
    8000207c:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    __asm__ volatile("csrc sstatus, %0" ::"r"(SSTATUS_SPP));
    80002080:	10000793          	li	a5,256
    80002084:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrw sepc, ra");
    80002088:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000208c:	10200073          	sret
}
    80002090:	00813403          	ld	s0,8(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    8000209c:	f2010113          	addi	sp,sp,-224
    800020a0:	0c113c23          	sd	ra,216(sp)
    800020a4:	0c813823          	sd	s0,208(sp)
    800020a8:	0c913423          	sd	s1,200(sp)
    800020ac:	0e010413          	addi	s0,sp,224
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800020b0:	142027f3          	csrr	a5,scause
    800020b4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800020b8:	fb843703          	ld	a4,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    800020bc:	ff870693          	addi	a3,a4,-8
    800020c0:	00100793          	li	a5,1
    800020c4:	02d7f463          	bgeu	a5,a3,800020ec <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    else if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver prekid
    800020c8:	fff00793          	li	a5,-1
    800020cc:	03f79793          	slli	a5,a5,0x3f
    800020d0:	00178793          	addi	a5,a5,1
    800020d4:	30f70a63          	beq	a4,a5,800023e8 <_ZN5Riscv20handleSupervisorTrapEv+0x34c>
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause==0x8000000000000009UL){
    800020d8:	fff00793          	li	a5,-1
    800020dc:	03f79793          	slli	a5,a5,0x3f
    800020e0:	00978793          	addi	a5,a5,9
    800020e4:	38f70063          	beq	a4,a5,80002464 <_ZN5Riscv20handleSupervisorTrapEv+0x3c8>
        //unexpected inerrupt
        //scause - sta se  desilo
        //sepc- gde se desilo
        // stval - dodatno opise cause

        while(true);
    800020e8:	0000006f          	j	800020e8 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020ec:	141027f3          	csrr	a5,sepc
    800020f0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800020f4:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    800020f8:	00478793          	addi	a5,a5,4
    800020fc:	f2f43823          	sd	a5,-208(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002100:	100027f3          	csrr	a5,sstatus
    80002104:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002108:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    8000210c:	f2f43c23          	sd	a5,-200(s0)
        __asm__ volatile("ld %0, 80(fp)":"=r"(a0));
    80002110:	05043783          	ld	a5,80(s0)
    80002114:	f4f43023          	sd	a5,-192(s0)
        switch(a0){
    80002118:	f4043783          	ld	a5,-192(s0)
    8000211c:	04200713          	li	a4,66
    80002120:	2af76263          	bltu	a4,a5,800023c4 <_ZN5Riscv20handleSupervisorTrapEv+0x328>
    80002124:	00279793          	slli	a5,a5,0x2
    80002128:	00007717          	auipc	a4,0x7
    8000212c:	f3870713          	addi	a4,a4,-200 # 80009060 <CONSOLE_STATUS+0x50>
    80002130:	00e787b3          	add	a5,a5,a4
    80002134:	0007a783          	lw	a5,0(a5)
    80002138:	00e787b3          	add	a5,a5,a4
    8000213c:	00078067          	jr	a5
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(a1));
    80002140:	05843783          	ld	a5,88(s0)
    80002144:	f4f43423          	sd	a5,-184(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    80002148:	f4843503          	ld	a0,-184(s0)
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	52c080e7          	jalr	1324(ra) # 80002678 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    80002154:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002158:	04a43823          	sd	a0,80(s0)
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    8000215c:	f3043783          	ld	a5,-208(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002160:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002164:	f3843783          	ld	a5,-200(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002168:	10079073          	csrw	sstatus,a5
    }
    8000216c:	0d813083          	ld	ra,216(sp)
    80002170:	0d013403          	ld	s0,208(sp)
    80002174:	0c813483          	ld	s1,200(sp)
    80002178:	0e010113          	addi	sp,sp,224
    8000217c:	00008067          	ret
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(addr));
    80002180:	05843783          	ld	a5,88(s0)
    80002184:	f4f43823          	sd	a5,-176(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    80002188:	f5043503          	ld	a0,-176(s0)
    8000218c:	00000097          	auipc	ra,0x0
    80002190:	648080e7          	jalr	1608(ra) # 800027d4 <_ZN15MemoryAllocator8mem_freeEPv>
    80002194:	f4a43c23          	sd	a0,-168(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    80002198:	f5843783          	ld	a5,-168(s0)
    8000219c:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800021a0:	04a43823          	sd	a0,80(s0)
                break;
    800021a4:	fb9ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                space=MemoryAllocator::getFree();
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	43c080e7          	jalr	1084(ra) # 800025e4 <_ZN15MemoryAllocator7getFreeEv>
    800021b0:	f6a43023          	sd	a0,-160(s0)
                __asm__ volatile("mv a0, %0"::"r"(space));
    800021b4:	f6043783          	ld	a5,-160(s0)
    800021b8:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800021bc:	04a43823          	sd	a0,80(s0)
                break;
    800021c0:	f9dff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                block=MemoryAllocator::getLargestFreeBlock();
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	440080e7          	jalr	1088(ra) # 80002604 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    800021cc:	f6a43423          	sd	a0,-152(s0)
                __asm__ volatile("mv a0, %0"::"r"(block));
    800021d0:	f6843783          	ld	a5,-152(s0)
    800021d4:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800021d8:	04a43823          	sd	a0,80(s0)
                break;
    800021dc:	f81ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    800021e0:	05843783          	ld	a5,88(s0)
    800021e4:	f6f43823          	sd	a5,-144(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(start_routine));
    800021e8:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(arg));
    800021ec:	06843783          	ld	a5,104(s0)
    800021f0:	f6f43c23          	sd	a5,-136(s0)
                __asm__ volatile("ld %0, 8*14(fp)":"=r"(addr));
    800021f4:	07043783          	ld	a5,112(s0)
    800021f8:	f8f43023          	sd	a5,-128(s0)
                TCB *thread =TCB::createThread(body,arg,addr);
    800021fc:	f7843583          	ld	a1,-136(s0)
    80002200:	f8043603          	ld	a2,-128(s0)
    80002204:	fffff097          	auipc	ra,0xfffff
    80002208:	794080e7          	jalr	1940(ra) # 80001998 <_ZN3TCB12createThreadEPFvPvES0_Pm>
                *(TCB**) handle= thread;
    8000220c:	f7043703          	ld	a4,-144(s0)
    80002210:	00a73023          	sd	a0,0(a4)
                if(thread){
    80002214:	00050a63          	beqz	a0,80002228 <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
                    __asm__ volatile("mv a0, %0"::"r"(0));
    80002218:	00000793          	li	a5,0
    8000221c:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002220:	04a43823          	sd	a0,80(s0)
    80002224:	f39ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002228:	fff00793          	li	a5,-1
    8000222c:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002230:	04a43823          	sd	a0,80(s0)
    80002234:	f29ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                TCB::timeSliceCounter=0;
    80002238:	00009797          	auipc	a5,0x9
    8000223c:	4207b783          	ld	a5,1056(a5) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002240:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002244:	00000097          	auipc	ra,0x0
    80002248:	818080e7          	jalr	-2024(ra) # 80001a5c <_ZN3TCB8dispatchEv>
                break;
    8000224c:	f11ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                if(!TCB::running->isFinished()){
    80002250:	00009797          	auipc	a5,0x9
    80002254:	4287b783          	ld	a5,1064(a5) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002258:	0007b783          	ld	a5,0(a5)
    bool isFinished(){return finished;}
    8000225c:	0307c703          	lbu	a4,48(a5)
    80002260:	00070a63          	beqz	a4,80002274 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                else ret=-1;
    80002264:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002268:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    8000226c:	04a43823          	sd	a0,80(s0)
                break;
    80002270:	eedff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    void setFinished(bool flag){ TCB::finished = flag;}
    80002274:	00100713          	li	a4,1
    80002278:	02e78823          	sb	a4,48(a5)
                    TCB::timeSliceCounter=0;
    8000227c:	00009797          	auipc	a5,0x9
    80002280:	3dc7b783          	ld	a5,988(a5) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002284:	0007b023          	sd	zero,0(a5)
                    TCB::dispatch();
    80002288:	fffff097          	auipc	ra,0xfffff
    8000228c:	7d4080e7          	jalr	2004(ra) # 80001a5c <_ZN3TCB8dispatchEv>
                uint64 ret=0;
    80002290:	00000793          	li	a5,0
    80002294:	fd5ff06f          	j	80002268 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002298:	05843783          	ld	a5,88(s0)
    8000229c:	f8f43423          	sd	a5,-120(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(init));
    800022a0:	06043783          	ld	a5,96(s0)
    800022a4:	f2f42623          	sw	a5,-212(s0)
                mySemaphore *sem =mySemaphore::createSemaphore(init);
    800022a8:	f2c42503          	lw	a0,-212(s0)
    800022ac:	0005051b          	sext.w	a0,a0
    800022b0:	fffff097          	auipc	ra,0xfffff
    800022b4:	2c0080e7          	jalr	704(ra) # 80001570 <_ZN11mySemaphore15createSemaphoreEj>
                if(sem){
    800022b8:	00050e63          	beqz	a0,800022d4 <_ZN5Riscv20handleSupervisorTrapEv+0x238>
                    *(mySemaphore**) handle= sem;
    800022bc:	f8843703          	ld	a4,-120(s0)
    800022c0:	00a73023          	sd	a0,0(a4)
                    ret=0;
    800022c4:	00000793          	li	a5,0
                __asm__ volatile("mv a0, %0"::"r"(ret));
    800022c8:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800022cc:	04a43823          	sd	a0,80(s0)
                break;
    800022d0:	e8dff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                else ret=-1;
    800022d4:	fff00793          	li	a5,-1
    800022d8:	ff1ff06f          	j	800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    800022dc:	05843783          	ld	a5,88(s0)
    800022e0:	f8f43823          	sd	a5,-112(s0)
                if(!handle){
    800022e4:	f9043783          	ld	a5,-112(s0)
    800022e8:	02078663          	beqz	a5,80002314 <_ZN5Riscv20handleSupervisorTrapEv+0x278>
                int ret=handle->close();
    800022ec:	f9043503          	ld	a0,-112(s0)
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	478080e7          	jalr	1144(ra) # 80001768 <_ZN11mySemaphore5closeEv>
    800022f8:	00050493          	mv	s1,a0
                MemoryAllocator::mem_free(handle);
    800022fc:	f9043503          	ld	a0,-112(s0)
    80002300:	00000097          	auipc	ra,0x0
    80002304:	4d4080e7          	jalr	1236(ra) # 800027d4 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002308:	00048513          	mv	a0,s1
                __asm__ volatile("sd a0,80(fp)");
    8000230c:	04a43823          	sd	a0,80(s0)
                break;
    80002310:	e4dff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002314:	fff00793          	li	a5,-1
    80002318:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    8000231c:	04a43823          	sd	a0,80(s0)
                    break;
    80002320:	e3dff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002324:	05843783          	ld	a5,88(s0)
    80002328:	f8f43c23          	sd	a5,-104(s0)
                if(!handle){
    8000232c:	f9843783          	ld	a5,-104(s0)
    80002330:	00078e63          	beqz	a5,8000234c <_ZN5Riscv20handleSupervisorTrapEv+0x2b0>
                int ret=handle->wait();
    80002334:	f9843503          	ld	a0,-104(s0)
    80002338:	fffff097          	auipc	ra,0xfffff
    8000233c:	310080e7          	jalr	784(ra) # 80001648 <_ZN11mySemaphore4waitEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002340:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002344:	04a43823          	sd	a0,80(s0)
                break;
    80002348:	e15ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    8000234c:	fff00793          	li	a5,-1
    80002350:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002354:	04a43823          	sd	a0,80(s0)
                    break;
    80002358:	e05ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    8000235c:	05843783          	ld	a5,88(s0)
    80002360:	faf43023          	sd	a5,-96(s0)
                if(!handle){
    80002364:	fa043783          	ld	a5,-96(s0)
    80002368:	00078e63          	beqz	a5,80002384 <_ZN5Riscv20handleSupervisorTrapEv+0x2e8>
                int ret=handle->signal();
    8000236c:	fa043503          	ld	a0,-96(s0)
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	47c080e7          	jalr	1148(ra) # 800017ec <_ZN11mySemaphore6signalEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002378:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    8000237c:	04a43823          	sd	a0,80(s0)
                break;
    80002380:	dddff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002384:	fff00793          	li	a5,-1
    80002388:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    8000238c:	04a43823          	sd	a0,80(s0)
                    break;
    80002390:	dcdff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                char ret=__getc();
    80002394:	00006097          	auipc	ra,0x6
    80002398:	e14080e7          	jalr	-492(ra) # 800081a8 <__getc>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    8000239c:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    800023a0:	04a43823          	sd	a0,80(s0)
                break;
    800023a4:	db9ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(c));
    800023a8:	05843783          	ld	a5,88(s0)
    800023ac:	f2f405a3          	sb	a5,-213(s0)
                __putc(c);
    800023b0:	f2b44503          	lbu	a0,-213(s0)
    800023b4:	0ff57513          	andi	a0,a0,255
    800023b8:	00006097          	auipc	ra,0x6
    800023bc:	db4080e7          	jalr	-588(ra) # 8000816c <__putc>
                break;
    800023c0:	d9dff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
                printString("Unknown error, system is shitting down\n");
    800023c4:	00007517          	auipc	a0,0x7
    800023c8:	c7450513          	addi	a0,a0,-908 # 80009038 <CONSOLE_STATUS+0x28>
    800023cc:	00003097          	auipc	ra,0x3
    800023d0:	a90080e7          	jalr	-1392(ra) # 80004e5c <_Z11printStringPKc>
                __asm__ volatile("sw %[val], 0(%[addr])" : : [val] "r"(val), [addr] "r"(addr));
    800023d4:	000057b7          	lui	a5,0x5
    800023d8:	5557879b          	addiw	a5,a5,1365
    800023dc:	00100737          	lui	a4,0x100
    800023e0:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
                while (1);
    800023e4:	0000006f          	j	800023e4 <_ZN5Riscv20handleSupervisorTrapEv+0x348>
        TCB::timeSliceCounter++;
    800023e8:	00009717          	auipc	a4,0x9
    800023ec:	27073703          	ld	a4,624(a4) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x20>
    800023f0:	00073783          	ld	a5,0(a4)
    800023f4:	00178793          	addi	a5,a5,1 # 5001 <_entry-0x7fffafff>
    800023f8:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    800023fc:	00009717          	auipc	a4,0x9
    80002400:	27c73703          	ld	a4,636(a4) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002404:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const {return timeSlice;}
    80002408:	01873703          	ld	a4,24(a4)
    8000240c:	00e7f863          	bgeu	a5,a4,8000241c <_ZN5Riscv20handleSupervisorTrapEv+0x380>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002410:	00200793          	li	a5,2
    80002414:	1447b073          	csrc	sip,a5
}
    80002418:	d55ff06f          	j	8000216c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000241c:	141027f3          	csrr	a5,sepc
    80002420:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002424:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80002428:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000242c:	100027f3          	csrr	a5,sstatus
    80002430:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002434:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80002438:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter=0;
    8000243c:	00009797          	auipc	a5,0x9
    80002440:	21c7b783          	ld	a5,540(a5) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002444:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	614080e7          	jalr	1556(ra) # 80001a5c <_ZN3TCB8dispatchEv>
            w_sepc(sepc);
    80002450:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002454:	14179073          	csrw	sepc,a5
            w_sstatus(sstatus);
    80002458:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000245c:	10079073          	csrw	sstatus,a5
}
    80002460:	fb1ff06f          	j	80002410 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
        console_handler();
    80002464:	00006097          	auipc	ra,0x6
    80002468:	d7c080e7          	jalr	-644(ra) # 800081e0 <console_handler>
    8000246c:	d01ff06f          	j	8000216c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>

0000000080002470 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00813423          	sd	s0,8(sp)
    80002478:	01010413          	addi	s0,sp,16
    8000247c:	00100793          	li	a5,1
    80002480:	00f50863          	beq	a0,a5,80002490 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002484:	00813403          	ld	s0,8(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret
    80002490:	000107b7          	lui	a5,0x10
    80002494:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002498:	fef596e3          	bne	a1,a5,80002484 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    8000249c:	00009797          	auipc	a5,0x9
    800024a0:	24478793          	addi	a5,a5,580 # 8000b6e0 <_ZN9Scheduler16readyThreadQueueE>
    800024a4:	0007b023          	sd	zero,0(a5)
    800024a8:	0007b423          	sd	zero,8(a5)
    800024ac:	0007a823          	sw	zero,16(a5)
    800024b0:	fd5ff06f          	j	80002484 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800024b4 <_ZN9Scheduler3getEv>:
{
    800024b4:	fe010113          	addi	sp,sp,-32
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	00813823          	sd	s0,16(sp)
    800024c0:	00913423          	sd	s1,8(sp)
    800024c4:	02010413          	addi	s0,sp,32
        size++;
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800024c8:	00009517          	auipc	a0,0x9
    800024cc:	21853503          	ld	a0,536(a0) # 8000b6e0 <_ZN9Scheduler16readyThreadQueueE>
    800024d0:	04050c63          	beqz	a0,80002528 <_ZN9Scheduler3getEv+0x74>

        Elem *elem = head;
        head = head->next;
    800024d4:	00853783          	ld	a5,8(a0)
    800024d8:	00009717          	auipc	a4,0x9
    800024dc:	20f73423          	sd	a5,520(a4) # 8000b6e0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800024e0:	02078e63          	beqz	a5,8000251c <_ZN9Scheduler3getEv+0x68>

        T *ret = elem->data;
    800024e4:	00053483          	ld	s1,0(a0)
        delete elem;
    800024e8:	fffff097          	auipc	ra,0xfffff
    800024ec:	788080e7          	jalr	1928(ra) # 80001c70 <_ZdlPv>
        size--;
    800024f0:	00009717          	auipc	a4,0x9
    800024f4:	1f070713          	addi	a4,a4,496 # 8000b6e0 <_ZN9Scheduler16readyThreadQueueE>
    800024f8:	01072783          	lw	a5,16(a4)
    800024fc:	fff7879b          	addiw	a5,a5,-1
    80002500:	00f72823          	sw	a5,16(a4)
}
    80002504:	00048513          	mv	a0,s1
    80002508:	01813083          	ld	ra,24(sp)
    8000250c:	01013403          	ld	s0,16(sp)
    80002510:	00813483          	ld	s1,8(sp)
    80002514:	02010113          	addi	sp,sp,32
    80002518:	00008067          	ret
        if (!head) { tail = 0; }
    8000251c:	00009797          	auipc	a5,0x9
    80002520:	1c07b623          	sd	zero,460(a5) # 8000b6e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002524:	fc1ff06f          	j	800024e4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002528:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000252c:	fd9ff06f          	j	80002504 <_ZN9Scheduler3getEv+0x50>

0000000080002530 <_ZN9Scheduler3putEP3TCB>:
{
    80002530:	fe010113          	addi	sp,sp,-32
    80002534:	00113c23          	sd	ra,24(sp)
    80002538:	00813823          	sd	s0,16(sp)
    8000253c:	00913423          	sd	s1,8(sp)
    80002540:	02010413          	addi	s0,sp,32
    80002544:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002548:	01000513          	li	a0,16
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	6d4080e7          	jalr	1748(ra) # 80001c20 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002554:	00953023          	sd	s1,0(a0)
    80002558:	00053423          	sd	zero,8(a0)
        if (tail)
    8000255c:	00009797          	auipc	a5,0x9
    80002560:	18c7b783          	ld	a5,396(a5) # 8000b6e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002564:	02078c63          	beqz	a5,8000259c <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    80002568:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000256c:	00009797          	auipc	a5,0x9
    80002570:	16a7be23          	sd	a0,380(a5) # 8000b6e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    80002574:	00009717          	auipc	a4,0x9
    80002578:	16c70713          	addi	a4,a4,364 # 8000b6e0 <_ZN9Scheduler16readyThreadQueueE>
    8000257c:	01072783          	lw	a5,16(a4)
    80002580:	0017879b          	addiw	a5,a5,1
    80002584:	00f72823          	sw	a5,16(a4)
    80002588:	01813083          	ld	ra,24(sp)
    8000258c:	01013403          	ld	s0,16(sp)
    80002590:	00813483          	ld	s1,8(sp)
    80002594:	02010113          	addi	sp,sp,32
    80002598:	00008067          	ret
            head = tail = elem;
    8000259c:	00009797          	auipc	a5,0x9
    800025a0:	14478793          	addi	a5,a5,324 # 8000b6e0 <_ZN9Scheduler16readyThreadQueueE>
    800025a4:	00a7b423          	sd	a0,8(a5)
    800025a8:	00a7b023          	sd	a0,0(a5)
    800025ac:	fc9ff06f          	j	80002574 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800025b0 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800025b0:	ff010113          	addi	sp,sp,-16
    800025b4:	00113423          	sd	ra,8(sp)
    800025b8:	00813023          	sd	s0,0(sp)
    800025bc:	01010413          	addi	s0,sp,16
    800025c0:	000105b7          	lui	a1,0x10
    800025c4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800025c8:	00100513          	li	a0,1
    800025cc:	00000097          	auipc	ra,0x0
    800025d0:	ea4080e7          	jalr	-348(ra) # 80002470 <_Z41__static_initialization_and_destruction_0ii>
    800025d4:	00813083          	ld	ra,8(sp)
    800025d8:	00013403          	ld	s0,0(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <_ZN15MemoryAllocator7getFreeEv>:
    findNewLargest();
    return 0;
}

size_t MemoryAllocator::getFree()
{
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00813423          	sd	s0,8(sp)
    800025ec:	01010413          	addi	s0,sp,16

    return totalFreeMem;
}
    800025f0:	00009517          	auipc	a0,0x9
    800025f4:	10853503          	ld	a0,264(a0) # 8000b6f8 <_ZN15MemoryAllocator12totalFreeMemE>
    800025f8:	00813403          	ld	s0,8(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret

0000000080002604 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock()
{
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00813423          	sd	s0,8(sp)
    8000260c:	01010413          	addi	s0,sp,16
    return largestFreeBlock;
}
    80002610:	00009517          	auipc	a0,0x9
    80002614:	0f053503          	ld	a0,240(a0) # 8000b700 <_ZN15MemoryAllocator16largestFreeBlockE>
    80002618:	00813403          	ld	s0,8(sp)
    8000261c:	01010113          	addi	sp,sp,16
    80002620:	00008067          	ret

0000000080002624 <_ZN15MemoryAllocator14findNewLargestEv>:

void MemoryAllocator::findNewLargest()
{
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00813423          	sd	s0,8(sp)
    8000262c:	01010413          	addi	s0,sp,16
    largestFreeBlock=0;
    80002630:	00009797          	auipc	a5,0x9
    80002634:	0c878793          	addi	a5,a5,200 # 8000b6f8 <_ZN15MemoryAllocator12totalFreeMemE>
    80002638:	0007b423          	sd	zero,8(a5)
    if(!freeMemHead) return;
    8000263c:	0107b783          	ld	a5,16(a5)
    80002640:	00079e63          	bnez	a5,8000265c <_ZN15MemoryAllocator14findNewLargestEv+0x38>
    while(curr) {
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
        curr=curr->next;
    }

}
    80002644:	00813403          	ld	s0,8(sp)
    80002648:	01010113          	addi	sp,sp,16
    8000264c:	00008067          	ret
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002650:	00009697          	auipc	a3,0x9
    80002654:	0ae6b823          	sd	a4,176(a3) # 8000b700 <_ZN15MemoryAllocator16largestFreeBlockE>
        curr=curr->next;
    80002658:	0107b783          	ld	a5,16(a5)
    while(curr) {
    8000265c:	fe0784e3          	beqz	a5,80002644 <_ZN15MemoryAllocator14findNewLargestEv+0x20>
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002660:	0007b683          	ld	a3,0(a5)
    80002664:	00009717          	auipc	a4,0x9
    80002668:	09c73703          	ld	a4,156(a4) # 8000b700 <_ZN15MemoryAllocator16largestFreeBlockE>
    8000266c:	fed772e3          	bgeu	a4,a3,80002650 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>
    80002670:	00068713          	mv	a4,a3
    80002674:	fddff06f          	j	80002650 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>

0000000080002678 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80002678:	fe010113          	addi	sp,sp,-32
    8000267c:	00113c23          	sd	ra,24(sp)
    80002680:	00813823          	sd	s0,16(sp)
    80002684:	00913423          	sd	s1,8(sp)
    80002688:	02010413          	addi	s0,sp,32
    size_t size=numOfBlocks*MEM_BLOCK_SIZE;
    8000268c:	00651513          	slli	a0,a0,0x6
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    80002690:	12050e63          	beqz	a0,800027cc <_ZN15MemoryAllocator9mem_allocEm+0x154>
    80002694:	00009497          	auipc	s1,0x9
    80002698:	0744b483          	ld	s1,116(s1) # 8000b708 <_ZN15MemoryAllocator11freeMemHeadE>
    8000269c:	0e048e63          	beqz	s1,80002798 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    800026a0:	00009717          	auipc	a4,0x9
    800026a4:	06073703          	ld	a4,96(a4) # 8000b700 <_ZN15MemoryAllocator16largestFreeBlockE>
    800026a8:	00a77863          	bgeu	a4,a0,800026b8 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    800026ac:	00000493          	li	s1,0
    800026b0:	0e80006f          	j	80002798 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    while(curr && curr->size<size) curr=curr->next;
    800026b4:	0104b483          	ld	s1,16(s1)
    800026b8:	00048663          	beqz	s1,800026c4 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    800026bc:	0004b783          	ld	a5,0(s1)
    800026c0:	fea7eae3          	bltu	a5,a0,800026b4 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if(!curr) return nullptr;
    800026c4:	0c048a63          	beqz	s1,80002798 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    if(curr->size> size+sizeof(FreeBlock)){
    800026c8:	0004b683          	ld	a3,0(s1)
    800026cc:	01850793          	addi	a5,a0,24
    800026d0:	08d7f063          	bgeu	a5,a3,80002750 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        totalFreeMem=totalFreeMem-size-sizeof(FreeBlock);
    800026d4:	00009617          	auipc	a2,0x9
    800026d8:	02460613          	addi	a2,a2,36 # 8000b6f8 <_ZN15MemoryAllocator12totalFreeMemE>
    800026dc:	00063683          	ld	a3,0(a2)
    800026e0:	40a686b3          	sub	a3,a3,a0
    800026e4:	fe868693          	addi	a3,a3,-24
    800026e8:	00d63023          	sd	a3,0(a2)
        if(largestFreeBlock==curr->size) find=true;
    800026ec:	0004b683          	ld	a3,0(s1)
    800026f0:	04d70663          	beq	a4,a3,8000273c <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        bool find=false;
    800026f4:	00000613          	li	a2,0
        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    800026f8:	00f487b3          	add	a5,s1,a5
        newBlock->size=curr->size-size-sizeof(FreeBlock);
    800026fc:	40a686b3          	sub	a3,a3,a0
    80002700:	fe868693          	addi	a3,a3,-24
    80002704:	00d7b023          	sd	a3,0(a5)
        newBlock->prev=curr->prev;
    80002708:	0084b703          	ld	a4,8(s1)
    8000270c:	00e7b423          	sd	a4,8(a5)
        curr->size=size;
    80002710:	00a4b023          	sd	a0,0(s1)
        if(curr->prev){
    80002714:	02070863          	beqz	a4,80002744 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            curr->prev->next=newBlock;
    80002718:	00f73823          	sd	a5,16(a4)
        newBlock->next=curr->next;
    8000271c:	0104b703          	ld	a4,16(s1)
    80002720:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=newBlock;
    80002724:	00070463          	beqz	a4,8000272c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002728:	00f73423          	sd	a5,8(a4)
        if(find) findNewLargest();
    8000272c:	06060063          	beqz	a2,8000278c <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80002730:	00000097          	auipc	ra,0x0
    80002734:	ef4080e7          	jalr	-268(ra) # 80002624 <_ZN15MemoryAllocator14findNewLargestEv>
    80002738:	0540006f          	j	8000278c <_ZN15MemoryAllocator9mem_allocEm+0x114>
        if(largestFreeBlock==curr->size) find=true;
    8000273c:	00100613          	li	a2,1
    80002740:	fb9ff06f          	j	800026f8 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        else freeMemHead = newBlock;
    80002744:	00009717          	auipc	a4,0x9
    80002748:	fcf73223          	sd	a5,-60(a4) # 8000b708 <_ZN15MemoryAllocator11freeMemHeadE>
    8000274c:	fd1ff06f          	j	8000271c <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        totalFreeMem=totalFreeMem-curr->size;
    80002750:	00009617          	auipc	a2,0x9
    80002754:	fa860613          	addi	a2,a2,-88 # 8000b6f8 <_ZN15MemoryAllocator12totalFreeMemE>
    80002758:	00063783          	ld	a5,0(a2)
    8000275c:	40d786b3          	sub	a3,a5,a3
    80002760:	00d63023          	sd	a3,0(a2)
        if(curr->prev) curr->prev->next=curr->next;
    80002764:	0084b783          	ld	a5,8(s1)
    80002768:	04078463          	beqz	a5,800027b0 <_ZN15MemoryAllocator9mem_allocEm+0x138>
    8000276c:	0104b683          	ld	a3,16(s1)
    80002770:	00d7b823          	sd	a3,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80002774:	0104b783          	ld	a5,16(s1)
    80002778:	00078663          	beqz	a5,80002784 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    8000277c:	0084b683          	ld	a3,8(s1)
    80002780:	00d7b423          	sd	a3,8(a5)
        if(curr->size==largestFreeBlock) findNewLargest();
    80002784:	0004b783          	ld	a5,0(s1)
    80002788:	02f70c63          	beq	a4,a5,800027c0 <_ZN15MemoryAllocator9mem_allocEm+0x148>
    curr->next=nullptr;
    8000278c:	0004b823          	sd	zero,16(s1)
    curr->prev=nullptr;
    80002790:	0004b423          	sd	zero,8(s1)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    80002794:	01848493          	addi	s1,s1,24
}
    80002798:	00048513          	mv	a0,s1
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret
        else freeMemHead=curr->next;
    800027b0:	0104b783          	ld	a5,16(s1)
    800027b4:	00009697          	auipc	a3,0x9
    800027b8:	f4f6ba23          	sd	a5,-172(a3) # 8000b708 <_ZN15MemoryAllocator11freeMemHeadE>
    800027bc:	fb9ff06f          	j	80002774 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if(curr->size==largestFreeBlock) findNewLargest();
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	e64080e7          	jalr	-412(ra) # 80002624 <_ZN15MemoryAllocator14findNewLargestEv>
    800027c8:	fc5ff06f          	j	8000278c <_ZN15MemoryAllocator9mem_allocEm+0x114>
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    800027cc:	00000493          	li	s1,0
    800027d0:	fc9ff06f          	j	80002798 <_ZN15MemoryAllocator9mem_allocEm+0x120>

00000000800027d4 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    800027d4:	1e050c63          	beqz	a0,800029cc <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800027d8:	fe850693          	addi	a3,a0,-24
    800027dc:	00009797          	auipc	a5,0x9
    800027e0:	e6c7b783          	ld	a5,-404(a5) # 8000b648 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027e4:	0007b783          	ld	a5,0(a5)
    800027e8:	1ef6e663          	bltu	a3,a5,800029d4 <_ZN15MemoryAllocator8mem_freeEPv+0x200>
    800027ec:	00009797          	auipc	a5,0x9
    800027f0:	e947b783          	ld	a5,-364(a5) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    800027f4:	0007b783          	ld	a5,0(a5)
    800027f8:	1ea7e263          	bltu	a5,a0,800029dc <_ZN15MemoryAllocator8mem_freeEPv+0x208>
    totalFreeMem+=blk->size;
    800027fc:	fe853603          	ld	a2,-24(a0)
    80002800:	00009797          	auipc	a5,0x9
    80002804:	ef878793          	addi	a5,a5,-264 # 8000b6f8 <_ZN15MemoryAllocator12totalFreeMemE>
    80002808:	0007b703          	ld	a4,0(a5)
    8000280c:	00c70733          	add	a4,a4,a2
    80002810:	00e7b023          	sd	a4,0(a5)
    blk->next=nullptr;
    80002814:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    80002818:	fe053823          	sd	zero,-16(a0)
    if(!freeMemHead){
    8000281c:	0107b603          	ld	a2,16(a5)
    80002820:	08060463          	beqz	a2,800028a8 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
{
    80002824:	ff010113          	addi	sp,sp,-16
    80002828:	00113423          	sd	ra,8(sp)
    8000282c:	00813023          	sd	s0,0(sp)
    80002830:	01010413          	addi	s0,sp,16
    if((char*) blk < (char*) freeMemHead){
    80002834:	0cc6e263          	bltu	a3,a2,800028f8 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    80002838:	00060793          	mv	a5,a2
    8000283c:	00078713          	mv	a4,a5
    80002840:	0107b783          	ld	a5,16(a5)
    80002844:	00078463          	beqz	a5,8000284c <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80002848:	fed7eae3          	bltu	a5,a3,8000283c <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    8000284c:	0a070863          	beqz	a4,800028fc <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    80002850:	00073803          	ld	a6,0(a4)
    80002854:	01880593          	addi	a1,a6,24
    80002858:	00b705b3          	add	a1,a4,a1
    8000285c:	0ab69063          	bne	a3,a1,800028fc <_ZN15MemoryAllocator8mem_freeEPv+0x128>
        curr->size+=sizeof(FreeBlock)+blk->size;
    80002860:	fe853683          	ld	a3,-24(a0)
    80002864:	00d806b3          	add	a3,a6,a3
    80002868:	01868693          	addi	a3,a3,24
    8000286c:	00d73023          	sd	a3,0(a4)
        totalFreeMem+=sizeof(FreeBlock);
    80002870:	00009617          	auipc	a2,0x9
    80002874:	e8860613          	addi	a2,a2,-376 # 8000b6f8 <_ZN15MemoryAllocator12totalFreeMemE>
    80002878:	00063683          	ld	a3,0(a2)
    8000287c:	01868693          	addi	a3,a3,24
    80002880:	00d63023          	sd	a3,0(a2)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80002884:	00078a63          	beqz	a5,80002898 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80002888:	00073603          	ld	a2,0(a4)
    8000288c:	01860693          	addi	a3,a2,24
    80002890:	00d706b3          	add	a3,a4,a3
    80002894:	02d78663          	beq	a5,a3,800028c0 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        findNewLargest();
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	d8c080e7          	jalr	-628(ra) # 80002624 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    800028a0:	00000513          	li	a0,0
    800028a4:	09c0006f          	j	80002940 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        freeMemHead=blk;
    800028a8:	00d7b823          	sd	a3,16(a5)
        totalFreeMem=blk->size;
    800028ac:	fe853703          	ld	a4,-24(a0)
    800028b0:	00e7b023          	sd	a4,0(a5)
        largestFreeBlock=totalFreeMem;
    800028b4:	00e7b423          	sd	a4,8(a5)
        return 0;
    800028b8:	00000513          	li	a0,0
    800028bc:	00008067          	ret
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    800028c0:	0007b683          	ld	a3,0(a5)
    800028c4:	00d606b3          	add	a3,a2,a3
    800028c8:	01868693          	addi	a3,a3,24
    800028cc:	00d73023          	sd	a3,0(a4)
            totalFreeMem+=sizeof(FreeBlock);
    800028d0:	00009617          	auipc	a2,0x9
    800028d4:	e2860613          	addi	a2,a2,-472 # 8000b6f8 <_ZN15MemoryAllocator12totalFreeMemE>
    800028d8:	00063683          	ld	a3,0(a2)
    800028dc:	01868693          	addi	a3,a3,24
    800028e0:	00d63023          	sd	a3,0(a2)
            curr->next=curr->next->next;
    800028e4:	0107b783          	ld	a5,16(a5)
    800028e8:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    800028ec:	fa0786e3          	beqz	a5,80002898 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    800028f0:	00e7b423          	sd	a4,8(a5)
    800028f4:	fa5ff06f          	j	80002898 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        curr=nullptr;
    800028f8:	00000713          	li	a4,0
    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    800028fc:	00070463          	beqz	a4,80002904 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    80002900:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    80002904:	00060863          	beqz	a2,80002914 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    80002908:	fe853783          	ld	a5,-24(a0)
    8000290c:	00f507b3          	add	a5,a0,a5
    80002910:	04c78063          	beq	a5,a2,80002950 <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    blk->prev=curr;
    80002914:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    80002918:	08070e63          	beqz	a4,800029b4 <_ZN15MemoryAllocator8mem_freeEPv+0x1e0>
    8000291c:	01073783          	ld	a5,16(a4)
    80002920:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    80002924:	00078463          	beqz	a5,8000292c <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    80002928:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    8000292c:	08070a63          	beqz	a4,800029c0 <_ZN15MemoryAllocator8mem_freeEPv+0x1ec>
    80002930:	00d73823          	sd	a3,16(a4)
    findNewLargest();
    80002934:	00000097          	auipc	ra,0x0
    80002938:	cf0080e7          	jalr	-784(ra) # 80002624 <_ZN15MemoryAllocator14findNewLargestEv>
    return 0;
    8000293c:	00000513          	li	a0,0
}
    80002940:	00813083          	ld	ra,8(sp)
    80002944:	00013403          	ld	s0,0(sp)
    80002948:	01010113          	addi	sp,sp,16
    8000294c:	00008067          	ret
        totalFreeMem+=sizeof(FreeBlock);
    80002950:	00009717          	auipc	a4,0x9
    80002954:	da870713          	addi	a4,a4,-600 # 8000b6f8 <_ZN15MemoryAllocator12totalFreeMemE>
    80002958:	00073783          	ld	a5,0(a4)
    8000295c:	01878793          	addi	a5,a5,24
    80002960:	00f73023          	sd	a5,0(a4)
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    80002964:	00063783          	ld	a5,0(a2)
    80002968:	fe853703          	ld	a4,-24(a0)
    8000296c:	00e787b3          	add	a5,a5,a4
    80002970:	01878793          	addi	a5,a5,24
    80002974:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    80002978:	01063783          	ld	a5,16(a2)
    8000297c:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    80002980:	00078463          	beqz	a5,80002988 <_ZN15MemoryAllocator8mem_freeEPv+0x1b4>
    80002984:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    80002988:	00863783          	ld	a5,8(a2)
    8000298c:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    80002990:	00078c63          	beqz	a5,800029a8 <_ZN15MemoryAllocator8mem_freeEPv+0x1d4>
    80002994:	00d7b823          	sd	a3,16(a5)
        findNewLargest();
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	c8c080e7          	jalr	-884(ra) # 80002624 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    800029a0:	00000513          	li	a0,0
    800029a4:	f9dff06f          	j	80002940 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        else freeMemHead=blk;
    800029a8:	00009797          	auipc	a5,0x9
    800029ac:	d6d7b023          	sd	a3,-672(a5) # 8000b708 <_ZN15MemoryAllocator11freeMemHeadE>
    800029b0:	fe9ff06f          	j	80002998 <_ZN15MemoryAllocator8mem_freeEPv+0x1c4>
    blk->next=curr?curr->next:freeMemHead;
    800029b4:	00009797          	auipc	a5,0x9
    800029b8:	d547b783          	ld	a5,-684(a5) # 8000b708 <_ZN15MemoryAllocator11freeMemHeadE>
    800029bc:	f65ff06f          	j	80002920 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    else freeMemHead=blk;
    800029c0:	00009797          	auipc	a5,0x9
    800029c4:	d4d7b423          	sd	a3,-696(a5) # 8000b708 <_ZN15MemoryAllocator11freeMemHeadE>
    800029c8:	f6dff06f          	j	80002934 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    if(!addr) return -1;
    800029cc:	fff00513          	li	a0,-1
    800029d0:	00008067          	ret
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800029d4:	ffe00513          	li	a0,-2
    800029d8:	00008067          	ret
    800029dc:	ffe00513          	li	a0,-2
}
    800029e0:	00008067          	ret

00000000800029e4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800029e4:	fe010113          	addi	sp,sp,-32
    800029e8:	00113c23          	sd	ra,24(sp)
    800029ec:	00813823          	sd	s0,16(sp)
    800029f0:	00913423          	sd	s1,8(sp)
    800029f4:	01213023          	sd	s2,0(sp)
    800029f8:	02010413          	addi	s0,sp,32
    800029fc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002a00:	00000913          	li	s2,0
    80002a04:	00c0006f          	j	80002a10 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	9cc080e7          	jalr	-1588(ra) # 800013d4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	b04080e7          	jalr	-1276(ra) # 80001514 <_Z4getcv>
    80002a18:	0005059b          	sext.w	a1,a0
    80002a1c:	01b00793          	li	a5,27
    80002a20:	02f58a63          	beq	a1,a5,80002a54 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002a24:	0084b503          	ld	a0,8(s1)
    80002a28:	00003097          	auipc	ra,0x3
    80002a2c:	400080e7          	jalr	1024(ra) # 80005e28 <_ZN6Buffer3putEi>
        i++;
    80002a30:	0019071b          	addiw	a4,s2,1
    80002a34:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002a38:	0004a683          	lw	a3,0(s1)
    80002a3c:	0026979b          	slliw	a5,a3,0x2
    80002a40:	00d787bb          	addw	a5,a5,a3
    80002a44:	0017979b          	slliw	a5,a5,0x1
    80002a48:	02f767bb          	remw	a5,a4,a5
    80002a4c:	fc0792e3          	bnez	a5,80002a10 <_ZL16producerKeyboardPv+0x2c>
    80002a50:	fb9ff06f          	j	80002a08 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002a54:	00100793          	li	a5,1
    80002a58:	00009717          	auipc	a4,0x9
    80002a5c:	caf72c23          	sw	a5,-840(a4) # 8000b710 <_ZL9threadEnd>
    data->buffer->put('!');
    80002a60:	02100593          	li	a1,33
    80002a64:	0084b503          	ld	a0,8(s1)
    80002a68:	00003097          	auipc	ra,0x3
    80002a6c:	3c0080e7          	jalr	960(ra) # 80005e28 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002a70:	0104b503          	ld	a0,16(s1)
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	a30080e7          	jalr	-1488(ra) # 800014a4 <_Z10sem_signalP4_sem>
}
    80002a7c:	01813083          	ld	ra,24(sp)
    80002a80:	01013403          	ld	s0,16(sp)
    80002a84:	00813483          	ld	s1,8(sp)
    80002a88:	00013903          	ld	s2,0(sp)
    80002a8c:	02010113          	addi	sp,sp,32
    80002a90:	00008067          	ret

0000000080002a94 <_ZL8producerPv>:

static void producer(void *arg) {
    80002a94:	fe010113          	addi	sp,sp,-32
    80002a98:	00113c23          	sd	ra,24(sp)
    80002a9c:	00813823          	sd	s0,16(sp)
    80002aa0:	00913423          	sd	s1,8(sp)
    80002aa4:	01213023          	sd	s2,0(sp)
    80002aa8:	02010413          	addi	s0,sp,32
    80002aac:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ab0:	00000913          	li	s2,0
    80002ab4:	00c0006f          	j	80002ac0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	91c080e7          	jalr	-1764(ra) # 800013d4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002ac0:	00009797          	auipc	a5,0x9
    80002ac4:	c507a783          	lw	a5,-944(a5) # 8000b710 <_ZL9threadEnd>
    80002ac8:	02079e63          	bnez	a5,80002b04 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002acc:	0004a583          	lw	a1,0(s1)
    80002ad0:	0305859b          	addiw	a1,a1,48
    80002ad4:	0084b503          	ld	a0,8(s1)
    80002ad8:	00003097          	auipc	ra,0x3
    80002adc:	350080e7          	jalr	848(ra) # 80005e28 <_ZN6Buffer3putEi>
        i++;
    80002ae0:	0019071b          	addiw	a4,s2,1
    80002ae4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ae8:	0004a683          	lw	a3,0(s1)
    80002aec:	0026979b          	slliw	a5,a3,0x2
    80002af0:	00d787bb          	addw	a5,a5,a3
    80002af4:	0017979b          	slliw	a5,a5,0x1
    80002af8:	02f767bb          	remw	a5,a4,a5
    80002afc:	fc0792e3          	bnez	a5,80002ac0 <_ZL8producerPv+0x2c>
    80002b00:	fb9ff06f          	j	80002ab8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002b04:	0104b503          	ld	a0,16(s1)
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	99c080e7          	jalr	-1636(ra) # 800014a4 <_Z10sem_signalP4_sem>
}
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00813483          	ld	s1,8(sp)
    80002b1c:	00013903          	ld	s2,0(sp)
    80002b20:	02010113          	addi	sp,sp,32
    80002b24:	00008067          	ret

0000000080002b28 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002b28:	fd010113          	addi	sp,sp,-48
    80002b2c:	02113423          	sd	ra,40(sp)
    80002b30:	02813023          	sd	s0,32(sp)
    80002b34:	00913c23          	sd	s1,24(sp)
    80002b38:	01213823          	sd	s2,16(sp)
    80002b3c:	01313423          	sd	s3,8(sp)
    80002b40:	03010413          	addi	s0,sp,48
    80002b44:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002b48:	00000993          	li	s3,0
    80002b4c:	01c0006f          	j	80002b68 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	884080e7          	jalr	-1916(ra) # 800013d4 <_Z15thread_dispatchv>
    80002b58:	0500006f          	j	80002ba8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002b5c:	00a00513          	li	a0,10
    80002b60:	fffff097          	auipc	ra,0xfffff
    80002b64:	9e8080e7          	jalr	-1560(ra) # 80001548 <_Z4putcc>
    while (!threadEnd) {
    80002b68:	00009797          	auipc	a5,0x9
    80002b6c:	ba87a783          	lw	a5,-1112(a5) # 8000b710 <_ZL9threadEnd>
    80002b70:	06079063          	bnez	a5,80002bd0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002b74:	00893503          	ld	a0,8(s2)
    80002b78:	00003097          	auipc	ra,0x3
    80002b7c:	340080e7          	jalr	832(ra) # 80005eb8 <_ZN6Buffer3getEv>
        i++;
    80002b80:	0019849b          	addiw	s1,s3,1
    80002b84:	0004899b          	sext.w	s3,s1
        putc(key);
    80002b88:	0ff57513          	andi	a0,a0,255
    80002b8c:	fffff097          	auipc	ra,0xfffff
    80002b90:	9bc080e7          	jalr	-1604(ra) # 80001548 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002b94:	00092703          	lw	a4,0(s2)
    80002b98:	0027179b          	slliw	a5,a4,0x2
    80002b9c:	00e787bb          	addw	a5,a5,a4
    80002ba0:	02f4e7bb          	remw	a5,s1,a5
    80002ba4:	fa0786e3          	beqz	a5,80002b50 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002ba8:	05000793          	li	a5,80
    80002bac:	02f4e4bb          	remw	s1,s1,a5
    80002bb0:	fa049ce3          	bnez	s1,80002b68 <_ZL8consumerPv+0x40>
    80002bb4:	fa9ff06f          	j	80002b5c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002bb8:	00893503          	ld	a0,8(s2)
    80002bbc:	00003097          	auipc	ra,0x3
    80002bc0:	2fc080e7          	jalr	764(ra) # 80005eb8 <_ZN6Buffer3getEv>
        putc(key);
    80002bc4:	0ff57513          	andi	a0,a0,255
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	980080e7          	jalr	-1664(ra) # 80001548 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002bd0:	00893503          	ld	a0,8(s2)
    80002bd4:	00003097          	auipc	ra,0x3
    80002bd8:	370080e7          	jalr	880(ra) # 80005f44 <_ZN6Buffer6getCntEv>
    80002bdc:	fca04ee3          	bgtz	a0,80002bb8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002be0:	01093503          	ld	a0,16(s2)
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	8c0080e7          	jalr	-1856(ra) # 800014a4 <_Z10sem_signalP4_sem>
}
    80002bec:	02813083          	ld	ra,40(sp)
    80002bf0:	02013403          	ld	s0,32(sp)
    80002bf4:	01813483          	ld	s1,24(sp)
    80002bf8:	01013903          	ld	s2,16(sp)
    80002bfc:	00813983          	ld	s3,8(sp)
    80002c00:	03010113          	addi	sp,sp,48
    80002c04:	00008067          	ret

0000000080002c08 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002c08:	f9010113          	addi	sp,sp,-112
    80002c0c:	06113423          	sd	ra,104(sp)
    80002c10:	06813023          	sd	s0,96(sp)
    80002c14:	04913c23          	sd	s1,88(sp)
    80002c18:	05213823          	sd	s2,80(sp)
    80002c1c:	05313423          	sd	s3,72(sp)
    80002c20:	05413023          	sd	s4,64(sp)
    80002c24:	03513c23          	sd	s5,56(sp)
    80002c28:	03613823          	sd	s6,48(sp)
    80002c2c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002c30:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002c34:	00006517          	auipc	a0,0x6
    80002c38:	53c50513          	addi	a0,a0,1340 # 80009170 <CONSOLE_STATUS+0x160>
    80002c3c:	00002097          	auipc	ra,0x2
    80002c40:	220080e7          	jalr	544(ra) # 80004e5c <_Z11printStringPKc>
    getString(input, 30);
    80002c44:	01e00593          	li	a1,30
    80002c48:	fa040493          	addi	s1,s0,-96
    80002c4c:	00048513          	mv	a0,s1
    80002c50:	00002097          	auipc	ra,0x2
    80002c54:	294080e7          	jalr	660(ra) # 80004ee4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002c58:	00048513          	mv	a0,s1
    80002c5c:	00002097          	auipc	ra,0x2
    80002c60:	360080e7          	jalr	864(ra) # 80004fbc <_Z11stringToIntPKc>
    80002c64:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002c68:	00006517          	auipc	a0,0x6
    80002c6c:	52850513          	addi	a0,a0,1320 # 80009190 <CONSOLE_STATUS+0x180>
    80002c70:	00002097          	auipc	ra,0x2
    80002c74:	1ec080e7          	jalr	492(ra) # 80004e5c <_Z11printStringPKc>
    getString(input, 30);
    80002c78:	01e00593          	li	a1,30
    80002c7c:	00048513          	mv	a0,s1
    80002c80:	00002097          	auipc	ra,0x2
    80002c84:	264080e7          	jalr	612(ra) # 80004ee4 <_Z9getStringPci>
    n = stringToInt(input);
    80002c88:	00048513          	mv	a0,s1
    80002c8c:	00002097          	auipc	ra,0x2
    80002c90:	330080e7          	jalr	816(ra) # 80004fbc <_Z11stringToIntPKc>
    80002c94:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002c98:	00006517          	auipc	a0,0x6
    80002c9c:	51850513          	addi	a0,a0,1304 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80002ca0:	00002097          	auipc	ra,0x2
    80002ca4:	1bc080e7          	jalr	444(ra) # 80004e5c <_Z11printStringPKc>
    80002ca8:	00000613          	li	a2,0
    80002cac:	00a00593          	li	a1,10
    80002cb0:	00090513          	mv	a0,s2
    80002cb4:	00002097          	auipc	ra,0x2
    80002cb8:	358080e7          	jalr	856(ra) # 8000500c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002cbc:	00006517          	auipc	a0,0x6
    80002cc0:	50c50513          	addi	a0,a0,1292 # 800091c8 <CONSOLE_STATUS+0x1b8>
    80002cc4:	00002097          	auipc	ra,0x2
    80002cc8:	198080e7          	jalr	408(ra) # 80004e5c <_Z11printStringPKc>
    80002ccc:	00000613          	li	a2,0
    80002cd0:	00a00593          	li	a1,10
    80002cd4:	00048513          	mv	a0,s1
    80002cd8:	00002097          	auipc	ra,0x2
    80002cdc:	334080e7          	jalr	820(ra) # 8000500c <_Z8printIntiii>
    printString(".\n");
    80002ce0:	00006517          	auipc	a0,0x6
    80002ce4:	50050513          	addi	a0,a0,1280 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80002ce8:	00002097          	auipc	ra,0x2
    80002cec:	174080e7          	jalr	372(ra) # 80004e5c <_Z11printStringPKc>
    if(threadNum > n) {
    80002cf0:	0324c463          	blt	s1,s2,80002d18 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002cf4:	03205c63          	blez	s2,80002d2c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002cf8:	03800513          	li	a0,56
    80002cfc:	fffff097          	auipc	ra,0xfffff
    80002d00:	f24080e7          	jalr	-220(ra) # 80001c20 <_Znwm>
    80002d04:	00050a13          	mv	s4,a0
    80002d08:	00048593          	mv	a1,s1
    80002d0c:	00003097          	auipc	ra,0x3
    80002d10:	080080e7          	jalr	128(ra) # 80005d8c <_ZN6BufferC1Ei>
    80002d14:	0300006f          	j	80002d44 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002d18:	00006517          	auipc	a0,0x6
    80002d1c:	4d050513          	addi	a0,a0,1232 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80002d20:	00002097          	auipc	ra,0x2
    80002d24:	13c080e7          	jalr	316(ra) # 80004e5c <_Z11printStringPKc>
        return;
    80002d28:	0140006f          	j	80002d3c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002d2c:	00006517          	auipc	a0,0x6
    80002d30:	4fc50513          	addi	a0,a0,1276 # 80009228 <CONSOLE_STATUS+0x218>
    80002d34:	00002097          	auipc	ra,0x2
    80002d38:	128080e7          	jalr	296(ra) # 80004e5c <_Z11printStringPKc>
        return;
    80002d3c:	000b0113          	mv	sp,s6
    80002d40:	1500006f          	j	80002e90 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002d44:	00000593          	li	a1,0
    80002d48:	00009517          	auipc	a0,0x9
    80002d4c:	9d050513          	addi	a0,a0,-1584 # 8000b718 <_ZL10waitForAll>
    80002d50:	ffffe097          	auipc	ra,0xffffe
    80002d54:	6a8080e7          	jalr	1704(ra) # 800013f8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80002d58:	00391793          	slli	a5,s2,0x3
    80002d5c:	00f78793          	addi	a5,a5,15
    80002d60:	ff07f793          	andi	a5,a5,-16
    80002d64:	40f10133          	sub	sp,sp,a5
    80002d68:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002d6c:	0019071b          	addiw	a4,s2,1
    80002d70:	00171793          	slli	a5,a4,0x1
    80002d74:	00e787b3          	add	a5,a5,a4
    80002d78:	00379793          	slli	a5,a5,0x3
    80002d7c:	00f78793          	addi	a5,a5,15
    80002d80:	ff07f793          	andi	a5,a5,-16
    80002d84:	40f10133          	sub	sp,sp,a5
    80002d88:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002d8c:	00191613          	slli	a2,s2,0x1
    80002d90:	012607b3          	add	a5,a2,s2
    80002d94:	00379793          	slli	a5,a5,0x3
    80002d98:	00f987b3          	add	a5,s3,a5
    80002d9c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002da0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002da4:	00009717          	auipc	a4,0x9
    80002da8:	97473703          	ld	a4,-1676(a4) # 8000b718 <_ZL10waitForAll>
    80002dac:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002db0:	00078613          	mv	a2,a5
    80002db4:	00000597          	auipc	a1,0x0
    80002db8:	d7458593          	addi	a1,a1,-652 # 80002b28 <_ZL8consumerPv>
    80002dbc:	f9840513          	addi	a0,s0,-104
    80002dc0:	ffffe097          	auipc	ra,0xffffe
    80002dc4:	558080e7          	jalr	1368(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002dc8:	00000493          	li	s1,0
    80002dcc:	0280006f          	j	80002df4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002dd0:	00000597          	auipc	a1,0x0
    80002dd4:	c1458593          	addi	a1,a1,-1004 # 800029e4 <_ZL16producerKeyboardPv>
                      data + i);
    80002dd8:	00179613          	slli	a2,a5,0x1
    80002ddc:	00f60633          	add	a2,a2,a5
    80002de0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002de4:	00c98633          	add	a2,s3,a2
    80002de8:	ffffe097          	auipc	ra,0xffffe
    80002dec:	530080e7          	jalr	1328(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002df0:	0014849b          	addiw	s1,s1,1
    80002df4:	0524d263          	bge	s1,s2,80002e38 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002df8:	00149793          	slli	a5,s1,0x1
    80002dfc:	009787b3          	add	a5,a5,s1
    80002e00:	00379793          	slli	a5,a5,0x3
    80002e04:	00f987b3          	add	a5,s3,a5
    80002e08:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002e0c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002e10:	00009717          	auipc	a4,0x9
    80002e14:	90873703          	ld	a4,-1784(a4) # 8000b718 <_ZL10waitForAll>
    80002e18:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002e1c:	00048793          	mv	a5,s1
    80002e20:	00349513          	slli	a0,s1,0x3
    80002e24:	00aa8533          	add	a0,s5,a0
    80002e28:	fa9054e3          	blez	s1,80002dd0 <_Z22producerConsumer_C_APIv+0x1c8>
    80002e2c:	00000597          	auipc	a1,0x0
    80002e30:	c6858593          	addi	a1,a1,-920 # 80002a94 <_ZL8producerPv>
    80002e34:	fa5ff06f          	j	80002dd8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002e38:	ffffe097          	auipc	ra,0xffffe
    80002e3c:	59c080e7          	jalr	1436(ra) # 800013d4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002e40:	00000493          	li	s1,0
    80002e44:	00994e63          	blt	s2,s1,80002e60 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002e48:	00009517          	auipc	a0,0x9
    80002e4c:	8d053503          	ld	a0,-1840(a0) # 8000b718 <_ZL10waitForAll>
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	61c080e7          	jalr	1564(ra) # 8000146c <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80002e58:	0014849b          	addiw	s1,s1,1
    80002e5c:	fe9ff06f          	j	80002e44 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002e60:	00009517          	auipc	a0,0x9
    80002e64:	8b853503          	ld	a0,-1864(a0) # 8000b718 <_ZL10waitForAll>
    80002e68:	ffffe097          	auipc	ra,0xffffe
    80002e6c:	5cc080e7          	jalr	1484(ra) # 80001434 <_Z9sem_closeP4_sem>
    delete buffer;
    80002e70:	000a0e63          	beqz	s4,80002e8c <_Z22producerConsumer_C_APIv+0x284>
    80002e74:	000a0513          	mv	a0,s4
    80002e78:	00003097          	auipc	ra,0x3
    80002e7c:	154080e7          	jalr	340(ra) # 80005fcc <_ZN6BufferD1Ev>
    80002e80:	000a0513          	mv	a0,s4
    80002e84:	fffff097          	auipc	ra,0xfffff
    80002e88:	dec080e7          	jalr	-532(ra) # 80001c70 <_ZdlPv>
    80002e8c:	000b0113          	mv	sp,s6

}
    80002e90:	f9040113          	addi	sp,s0,-112
    80002e94:	06813083          	ld	ra,104(sp)
    80002e98:	06013403          	ld	s0,96(sp)
    80002e9c:	05813483          	ld	s1,88(sp)
    80002ea0:	05013903          	ld	s2,80(sp)
    80002ea4:	04813983          	ld	s3,72(sp)
    80002ea8:	04013a03          	ld	s4,64(sp)
    80002eac:	03813a83          	ld	s5,56(sp)
    80002eb0:	03013b03          	ld	s6,48(sp)
    80002eb4:	07010113          	addi	sp,sp,112
    80002eb8:	00008067          	ret
    80002ebc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002ec0:	000a0513          	mv	a0,s4
    80002ec4:	fffff097          	auipc	ra,0xfffff
    80002ec8:	dac080e7          	jalr	-596(ra) # 80001c70 <_ZdlPv>
    80002ecc:	00048513          	mv	a0,s1
    80002ed0:	0000a097          	auipc	ra,0xa
    80002ed4:	958080e7          	jalr	-1704(ra) # 8000c828 <_Unwind_Resume>

0000000080002ed8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002ed8:	fe010113          	addi	sp,sp,-32
    80002edc:	00113c23          	sd	ra,24(sp)
    80002ee0:	00813823          	sd	s0,16(sp)
    80002ee4:	00913423          	sd	s1,8(sp)
    80002ee8:	01213023          	sd	s2,0(sp)
    80002eec:	02010413          	addi	s0,sp,32
    80002ef0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002ef4:	00100793          	li	a5,1
    80002ef8:	02a7f863          	bgeu	a5,a0,80002f28 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002efc:	00a00793          	li	a5,10
    80002f00:	02f577b3          	remu	a5,a0,a5
    80002f04:	02078e63          	beqz	a5,80002f40 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002f08:	fff48513          	addi	a0,s1,-1
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	fcc080e7          	jalr	-52(ra) # 80002ed8 <_ZL9fibonaccim>
    80002f14:	00050913          	mv	s2,a0
    80002f18:	ffe48513          	addi	a0,s1,-2
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	fbc080e7          	jalr	-68(ra) # 80002ed8 <_ZL9fibonaccim>
    80002f24:	00a90533          	add	a0,s2,a0
}
    80002f28:	01813083          	ld	ra,24(sp)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	00813483          	ld	s1,8(sp)
    80002f34:	00013903          	ld	s2,0(sp)
    80002f38:	02010113          	addi	sp,sp,32
    80002f3c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	494080e7          	jalr	1172(ra) # 800013d4 <_Z15thread_dispatchv>
    80002f48:	fc1ff06f          	j	80002f08 <_ZL9fibonaccim+0x30>

0000000080002f4c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002f4c:	fe010113          	addi	sp,sp,-32
    80002f50:	00113c23          	sd	ra,24(sp)
    80002f54:	00813823          	sd	s0,16(sp)
    80002f58:	00913423          	sd	s1,8(sp)
    80002f5c:	01213023          	sd	s2,0(sp)
    80002f60:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002f64:	00000913          	li	s2,0
    80002f68:	0380006f          	j	80002fa0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002f6c:	ffffe097          	auipc	ra,0xffffe
    80002f70:	468080e7          	jalr	1128(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002f74:	00148493          	addi	s1,s1,1
    80002f78:	000027b7          	lui	a5,0x2
    80002f7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002f80:	0097ee63          	bltu	a5,s1,80002f9c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002f84:	00000713          	li	a4,0
    80002f88:	000077b7          	lui	a5,0x7
    80002f8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002f90:	fce7eee3          	bltu	a5,a4,80002f6c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002f94:	00170713          	addi	a4,a4,1
    80002f98:	ff1ff06f          	j	80002f88 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002f9c:	00190913          	addi	s2,s2,1
    80002fa0:	00900793          	li	a5,9
    80002fa4:	0527e063          	bltu	a5,s2,80002fe4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002fa8:	00006517          	auipc	a0,0x6
    80002fac:	2b050513          	addi	a0,a0,688 # 80009258 <CONSOLE_STATUS+0x248>
    80002fb0:	00002097          	auipc	ra,0x2
    80002fb4:	eac080e7          	jalr	-340(ra) # 80004e5c <_Z11printStringPKc>
    80002fb8:	00000613          	li	a2,0
    80002fbc:	00a00593          	li	a1,10
    80002fc0:	0009051b          	sext.w	a0,s2
    80002fc4:	00002097          	auipc	ra,0x2
    80002fc8:	048080e7          	jalr	72(ra) # 8000500c <_Z8printIntiii>
    80002fcc:	00006517          	auipc	a0,0x6
    80002fd0:	4dc50513          	addi	a0,a0,1244 # 800094a8 <CONSOLE_STATUS+0x498>
    80002fd4:	00002097          	auipc	ra,0x2
    80002fd8:	e88080e7          	jalr	-376(ra) # 80004e5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002fdc:	00000493          	li	s1,0
    80002fe0:	f99ff06f          	j	80002f78 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002fe4:	00006517          	auipc	a0,0x6
    80002fe8:	27c50513          	addi	a0,a0,636 # 80009260 <CONSOLE_STATUS+0x250>
    80002fec:	00002097          	auipc	ra,0x2
    80002ff0:	e70080e7          	jalr	-400(ra) # 80004e5c <_Z11printStringPKc>
    finishedA = true;
    80002ff4:	00100793          	li	a5,1
    80002ff8:	00008717          	auipc	a4,0x8
    80002ffc:	72f70423          	sb	a5,1832(a4) # 8000b720 <_ZL9finishedA>
}
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	01013403          	ld	s0,16(sp)
    80003008:	00813483          	ld	s1,8(sp)
    8000300c:	00013903          	ld	s2,0(sp)
    80003010:	02010113          	addi	sp,sp,32
    80003014:	00008067          	ret

0000000080003018 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003018:	fe010113          	addi	sp,sp,-32
    8000301c:	00113c23          	sd	ra,24(sp)
    80003020:	00813823          	sd	s0,16(sp)
    80003024:	00913423          	sd	s1,8(sp)
    80003028:	01213023          	sd	s2,0(sp)
    8000302c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003030:	00000913          	li	s2,0
    80003034:	0380006f          	j	8000306c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003038:	ffffe097          	auipc	ra,0xffffe
    8000303c:	39c080e7          	jalr	924(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003040:	00148493          	addi	s1,s1,1
    80003044:	000027b7          	lui	a5,0x2
    80003048:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000304c:	0097ee63          	bltu	a5,s1,80003068 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003050:	00000713          	li	a4,0
    80003054:	000077b7          	lui	a5,0x7
    80003058:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000305c:	fce7eee3          	bltu	a5,a4,80003038 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003060:	00170713          	addi	a4,a4,1
    80003064:	ff1ff06f          	j	80003054 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003068:	00190913          	addi	s2,s2,1
    8000306c:	00f00793          	li	a5,15
    80003070:	0527e063          	bltu	a5,s2,800030b0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003074:	00006517          	auipc	a0,0x6
    80003078:	1fc50513          	addi	a0,a0,508 # 80009270 <CONSOLE_STATUS+0x260>
    8000307c:	00002097          	auipc	ra,0x2
    80003080:	de0080e7          	jalr	-544(ra) # 80004e5c <_Z11printStringPKc>
    80003084:	00000613          	li	a2,0
    80003088:	00a00593          	li	a1,10
    8000308c:	0009051b          	sext.w	a0,s2
    80003090:	00002097          	auipc	ra,0x2
    80003094:	f7c080e7          	jalr	-132(ra) # 8000500c <_Z8printIntiii>
    80003098:	00006517          	auipc	a0,0x6
    8000309c:	41050513          	addi	a0,a0,1040 # 800094a8 <CONSOLE_STATUS+0x498>
    800030a0:	00002097          	auipc	ra,0x2
    800030a4:	dbc080e7          	jalr	-580(ra) # 80004e5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800030a8:	00000493          	li	s1,0
    800030ac:	f99ff06f          	j	80003044 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800030b0:	00006517          	auipc	a0,0x6
    800030b4:	1c850513          	addi	a0,a0,456 # 80009278 <CONSOLE_STATUS+0x268>
    800030b8:	00002097          	auipc	ra,0x2
    800030bc:	da4080e7          	jalr	-604(ra) # 80004e5c <_Z11printStringPKc>
    finishedB = true;
    800030c0:	00100793          	li	a5,1
    800030c4:	00008717          	auipc	a4,0x8
    800030c8:	64f70ea3          	sb	a5,1629(a4) # 8000b721 <_ZL9finishedB>
    thread_dispatch();
    800030cc:	ffffe097          	auipc	ra,0xffffe
    800030d0:	308080e7          	jalr	776(ra) # 800013d4 <_Z15thread_dispatchv>
}
    800030d4:	01813083          	ld	ra,24(sp)
    800030d8:	01013403          	ld	s0,16(sp)
    800030dc:	00813483          	ld	s1,8(sp)
    800030e0:	00013903          	ld	s2,0(sp)
    800030e4:	02010113          	addi	sp,sp,32
    800030e8:	00008067          	ret

00000000800030ec <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800030ec:	fe010113          	addi	sp,sp,-32
    800030f0:	00113c23          	sd	ra,24(sp)
    800030f4:	00813823          	sd	s0,16(sp)
    800030f8:	00913423          	sd	s1,8(sp)
    800030fc:	01213023          	sd	s2,0(sp)
    80003100:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003104:	00000493          	li	s1,0
    80003108:	0400006f          	j	80003148 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000310c:	00006517          	auipc	a0,0x6
    80003110:	17c50513          	addi	a0,a0,380 # 80009288 <CONSOLE_STATUS+0x278>
    80003114:	00002097          	auipc	ra,0x2
    80003118:	d48080e7          	jalr	-696(ra) # 80004e5c <_Z11printStringPKc>
    8000311c:	00000613          	li	a2,0
    80003120:	00a00593          	li	a1,10
    80003124:	00048513          	mv	a0,s1
    80003128:	00002097          	auipc	ra,0x2
    8000312c:	ee4080e7          	jalr	-284(ra) # 8000500c <_Z8printIntiii>
    80003130:	00006517          	auipc	a0,0x6
    80003134:	37850513          	addi	a0,a0,888 # 800094a8 <CONSOLE_STATUS+0x498>
    80003138:	00002097          	auipc	ra,0x2
    8000313c:	d24080e7          	jalr	-732(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003140:	0014849b          	addiw	s1,s1,1
    80003144:	0ff4f493          	andi	s1,s1,255
    80003148:	00200793          	li	a5,2
    8000314c:	fc97f0e3          	bgeu	a5,s1,8000310c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003150:	00006517          	auipc	a0,0x6
    80003154:	14050513          	addi	a0,a0,320 # 80009290 <CONSOLE_STATUS+0x280>
    80003158:	00002097          	auipc	ra,0x2
    8000315c:	d04080e7          	jalr	-764(ra) # 80004e5c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003160:	00700313          	li	t1,7
    thread_dispatch();
    80003164:	ffffe097          	auipc	ra,0xffffe
    80003168:	270080e7          	jalr	624(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000316c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003170:	00006517          	auipc	a0,0x6
    80003174:	13050513          	addi	a0,a0,304 # 800092a0 <CONSOLE_STATUS+0x290>
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	ce4080e7          	jalr	-796(ra) # 80004e5c <_Z11printStringPKc>
    80003180:	00000613          	li	a2,0
    80003184:	00a00593          	li	a1,10
    80003188:	0009051b          	sext.w	a0,s2
    8000318c:	00002097          	auipc	ra,0x2
    80003190:	e80080e7          	jalr	-384(ra) # 8000500c <_Z8printIntiii>
    80003194:	00006517          	auipc	a0,0x6
    80003198:	31450513          	addi	a0,a0,788 # 800094a8 <CONSOLE_STATUS+0x498>
    8000319c:	00002097          	auipc	ra,0x2
    800031a0:	cc0080e7          	jalr	-832(ra) # 80004e5c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800031a4:	00c00513          	li	a0,12
    800031a8:	00000097          	auipc	ra,0x0
    800031ac:	d30080e7          	jalr	-720(ra) # 80002ed8 <_ZL9fibonaccim>
    800031b0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800031b4:	00006517          	auipc	a0,0x6
    800031b8:	0f450513          	addi	a0,a0,244 # 800092a8 <CONSOLE_STATUS+0x298>
    800031bc:	00002097          	auipc	ra,0x2
    800031c0:	ca0080e7          	jalr	-864(ra) # 80004e5c <_Z11printStringPKc>
    800031c4:	00000613          	li	a2,0
    800031c8:	00a00593          	li	a1,10
    800031cc:	0009051b          	sext.w	a0,s2
    800031d0:	00002097          	auipc	ra,0x2
    800031d4:	e3c080e7          	jalr	-452(ra) # 8000500c <_Z8printIntiii>
    800031d8:	00006517          	auipc	a0,0x6
    800031dc:	2d050513          	addi	a0,a0,720 # 800094a8 <CONSOLE_STATUS+0x498>
    800031e0:	00002097          	auipc	ra,0x2
    800031e4:	c7c080e7          	jalr	-900(ra) # 80004e5c <_Z11printStringPKc>
    800031e8:	0400006f          	j	80003228 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800031ec:	00006517          	auipc	a0,0x6
    800031f0:	09c50513          	addi	a0,a0,156 # 80009288 <CONSOLE_STATUS+0x278>
    800031f4:	00002097          	auipc	ra,0x2
    800031f8:	c68080e7          	jalr	-920(ra) # 80004e5c <_Z11printStringPKc>
    800031fc:	00000613          	li	a2,0
    80003200:	00a00593          	li	a1,10
    80003204:	00048513          	mv	a0,s1
    80003208:	00002097          	auipc	ra,0x2
    8000320c:	e04080e7          	jalr	-508(ra) # 8000500c <_Z8printIntiii>
    80003210:	00006517          	auipc	a0,0x6
    80003214:	29850513          	addi	a0,a0,664 # 800094a8 <CONSOLE_STATUS+0x498>
    80003218:	00002097          	auipc	ra,0x2
    8000321c:	c44080e7          	jalr	-956(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003220:	0014849b          	addiw	s1,s1,1
    80003224:	0ff4f493          	andi	s1,s1,255
    80003228:	00500793          	li	a5,5
    8000322c:	fc97f0e3          	bgeu	a5,s1,800031ec <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003230:	00006517          	auipc	a0,0x6
    80003234:	03050513          	addi	a0,a0,48 # 80009260 <CONSOLE_STATUS+0x250>
    80003238:	00002097          	auipc	ra,0x2
    8000323c:	c24080e7          	jalr	-988(ra) # 80004e5c <_Z11printStringPKc>
    finishedC = true;
    80003240:	00100793          	li	a5,1
    80003244:	00008717          	auipc	a4,0x8
    80003248:	4cf70f23          	sb	a5,1246(a4) # 8000b722 <_ZL9finishedC>
    thread_dispatch();
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	188080e7          	jalr	392(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80003254:	01813083          	ld	ra,24(sp)
    80003258:	01013403          	ld	s0,16(sp)
    8000325c:	00813483          	ld	s1,8(sp)
    80003260:	00013903          	ld	s2,0(sp)
    80003264:	02010113          	addi	sp,sp,32
    80003268:	00008067          	ret

000000008000326c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000326c:	fe010113          	addi	sp,sp,-32
    80003270:	00113c23          	sd	ra,24(sp)
    80003274:	00813823          	sd	s0,16(sp)
    80003278:	00913423          	sd	s1,8(sp)
    8000327c:	01213023          	sd	s2,0(sp)
    80003280:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003284:	00a00493          	li	s1,10
    80003288:	0400006f          	j	800032c8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000328c:	00006517          	auipc	a0,0x6
    80003290:	02c50513          	addi	a0,a0,44 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003294:	00002097          	auipc	ra,0x2
    80003298:	bc8080e7          	jalr	-1080(ra) # 80004e5c <_Z11printStringPKc>
    8000329c:	00000613          	li	a2,0
    800032a0:	00a00593          	li	a1,10
    800032a4:	00048513          	mv	a0,s1
    800032a8:	00002097          	auipc	ra,0x2
    800032ac:	d64080e7          	jalr	-668(ra) # 8000500c <_Z8printIntiii>
    800032b0:	00006517          	auipc	a0,0x6
    800032b4:	1f850513          	addi	a0,a0,504 # 800094a8 <CONSOLE_STATUS+0x498>
    800032b8:	00002097          	auipc	ra,0x2
    800032bc:	ba4080e7          	jalr	-1116(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800032c0:	0014849b          	addiw	s1,s1,1
    800032c4:	0ff4f493          	andi	s1,s1,255
    800032c8:	00c00793          	li	a5,12
    800032cc:	fc97f0e3          	bgeu	a5,s1,8000328c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800032d0:	00006517          	auipc	a0,0x6
    800032d4:	ff050513          	addi	a0,a0,-16 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800032d8:	00002097          	auipc	ra,0x2
    800032dc:	b84080e7          	jalr	-1148(ra) # 80004e5c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800032e0:	00500313          	li	t1,5
    thread_dispatch();
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	0f0080e7          	jalr	240(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800032ec:	01000513          	li	a0,16
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	be8080e7          	jalr	-1048(ra) # 80002ed8 <_ZL9fibonaccim>
    800032f8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800032fc:	00006517          	auipc	a0,0x6
    80003300:	fd450513          	addi	a0,a0,-44 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003304:	00002097          	auipc	ra,0x2
    80003308:	b58080e7          	jalr	-1192(ra) # 80004e5c <_Z11printStringPKc>
    8000330c:	00000613          	li	a2,0
    80003310:	00a00593          	li	a1,10
    80003314:	0009051b          	sext.w	a0,s2
    80003318:	00002097          	auipc	ra,0x2
    8000331c:	cf4080e7          	jalr	-780(ra) # 8000500c <_Z8printIntiii>
    80003320:	00006517          	auipc	a0,0x6
    80003324:	18850513          	addi	a0,a0,392 # 800094a8 <CONSOLE_STATUS+0x498>
    80003328:	00002097          	auipc	ra,0x2
    8000332c:	b34080e7          	jalr	-1228(ra) # 80004e5c <_Z11printStringPKc>
    80003330:	0400006f          	j	80003370 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003334:	00006517          	auipc	a0,0x6
    80003338:	f8450513          	addi	a0,a0,-124 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000333c:	00002097          	auipc	ra,0x2
    80003340:	b20080e7          	jalr	-1248(ra) # 80004e5c <_Z11printStringPKc>
    80003344:	00000613          	li	a2,0
    80003348:	00a00593          	li	a1,10
    8000334c:	00048513          	mv	a0,s1
    80003350:	00002097          	auipc	ra,0x2
    80003354:	cbc080e7          	jalr	-836(ra) # 8000500c <_Z8printIntiii>
    80003358:	00006517          	auipc	a0,0x6
    8000335c:	15050513          	addi	a0,a0,336 # 800094a8 <CONSOLE_STATUS+0x498>
    80003360:	00002097          	auipc	ra,0x2
    80003364:	afc080e7          	jalr	-1284(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003368:	0014849b          	addiw	s1,s1,1
    8000336c:	0ff4f493          	andi	s1,s1,255
    80003370:	00f00793          	li	a5,15
    80003374:	fc97f0e3          	bgeu	a5,s1,80003334 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003378:	00006517          	auipc	a0,0x6
    8000337c:	f6850513          	addi	a0,a0,-152 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003380:	00002097          	auipc	ra,0x2
    80003384:	adc080e7          	jalr	-1316(ra) # 80004e5c <_Z11printStringPKc>
    finishedD = true;
    80003388:	00100793          	li	a5,1
    8000338c:	00008717          	auipc	a4,0x8
    80003390:	38f70ba3          	sb	a5,919(a4) # 8000b723 <_ZL9finishedD>
    thread_dispatch();
    80003394:	ffffe097          	auipc	ra,0xffffe
    80003398:	040080e7          	jalr	64(ra) # 800013d4 <_Z15thread_dispatchv>
}
    8000339c:	01813083          	ld	ra,24(sp)
    800033a0:	01013403          	ld	s0,16(sp)
    800033a4:	00813483          	ld	s1,8(sp)
    800033a8:	00013903          	ld	s2,0(sp)
    800033ac:	02010113          	addi	sp,sp,32
    800033b0:	00008067          	ret

00000000800033b4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800033b4:	fc010113          	addi	sp,sp,-64
    800033b8:	02113c23          	sd	ra,56(sp)
    800033bc:	02813823          	sd	s0,48(sp)
    800033c0:	02913423          	sd	s1,40(sp)
    800033c4:	03213023          	sd	s2,32(sp)
    800033c8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800033cc:	02000513          	li	a0,32
    800033d0:	fffff097          	auipc	ra,0xfffff
    800033d4:	850080e7          	jalr	-1968(ra) # 80001c20 <_Znwm>
    800033d8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800033dc:	fffff097          	auipc	ra,0xfffff
    800033e0:	97c080e7          	jalr	-1668(ra) # 80001d58 <_ZN6ThreadC1Ev>
    800033e4:	00008797          	auipc	a5,0x8
    800033e8:	0bc78793          	addi	a5,a5,188 # 8000b4a0 <_ZTV7WorkerA+0x10>
    800033ec:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800033f0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800033f4:	00006517          	auipc	a0,0x6
    800033f8:	efc50513          	addi	a0,a0,-260 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800033fc:	00002097          	auipc	ra,0x2
    80003400:	a60080e7          	jalr	-1440(ra) # 80004e5c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003404:	02000513          	li	a0,32
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	818080e7          	jalr	-2024(ra) # 80001c20 <_Znwm>
    80003410:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003414:	fffff097          	auipc	ra,0xfffff
    80003418:	944080e7          	jalr	-1724(ra) # 80001d58 <_ZN6ThreadC1Ev>
    8000341c:	00008797          	auipc	a5,0x8
    80003420:	0ac78793          	addi	a5,a5,172 # 8000b4c8 <_ZTV7WorkerB+0x10>
    80003424:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003428:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000342c:	00006517          	auipc	a0,0x6
    80003430:	edc50513          	addi	a0,a0,-292 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003434:	00002097          	auipc	ra,0x2
    80003438:	a28080e7          	jalr	-1496(ra) # 80004e5c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000343c:	02000513          	li	a0,32
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	7e0080e7          	jalr	2016(ra) # 80001c20 <_Znwm>
    80003448:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000344c:	fffff097          	auipc	ra,0xfffff
    80003450:	90c080e7          	jalr	-1780(ra) # 80001d58 <_ZN6ThreadC1Ev>
    80003454:	00008797          	auipc	a5,0x8
    80003458:	09c78793          	addi	a5,a5,156 # 8000b4f0 <_ZTV7WorkerC+0x10>
    8000345c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003460:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003464:	00006517          	auipc	a0,0x6
    80003468:	ebc50513          	addi	a0,a0,-324 # 80009320 <CONSOLE_STATUS+0x310>
    8000346c:	00002097          	auipc	ra,0x2
    80003470:	9f0080e7          	jalr	-1552(ra) # 80004e5c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003474:	02000513          	li	a0,32
    80003478:	ffffe097          	auipc	ra,0xffffe
    8000347c:	7a8080e7          	jalr	1960(ra) # 80001c20 <_Znwm>
    80003480:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	8d4080e7          	jalr	-1836(ra) # 80001d58 <_ZN6ThreadC1Ev>
    8000348c:	00008797          	auipc	a5,0x8
    80003490:	08c78793          	addi	a5,a5,140 # 8000b518 <_ZTV7WorkerD+0x10>
    80003494:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003498:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000349c:	00006517          	auipc	a0,0x6
    800034a0:	e9c50513          	addi	a0,a0,-356 # 80009338 <CONSOLE_STATUS+0x328>
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	9b8080e7          	jalr	-1608(ra) # 80004e5c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800034ac:	00000493          	li	s1,0
    800034b0:	00300793          	li	a5,3
    800034b4:	0297c663          	blt	a5,s1,800034e0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800034b8:	00349793          	slli	a5,s1,0x3
    800034bc:	fe040713          	addi	a4,s0,-32
    800034c0:	00f707b3          	add	a5,a4,a5
    800034c4:	fe07b503          	ld	a0,-32(a5)
    800034c8:	fffff097          	auipc	ra,0xfffff
    800034cc:	8f0080e7          	jalr	-1808(ra) # 80001db8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800034d0:	0014849b          	addiw	s1,s1,1
    800034d4:	fddff06f          	j	800034b0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	8b8080e7          	jalr	-1864(ra) # 80001d90 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800034e0:	00008797          	auipc	a5,0x8
    800034e4:	2407c783          	lbu	a5,576(a5) # 8000b720 <_ZL9finishedA>
    800034e8:	fe0788e3          	beqz	a5,800034d8 <_Z20Threads_CPP_API_testv+0x124>
    800034ec:	00008797          	auipc	a5,0x8
    800034f0:	2357c783          	lbu	a5,565(a5) # 8000b721 <_ZL9finishedB>
    800034f4:	fe0782e3          	beqz	a5,800034d8 <_Z20Threads_CPP_API_testv+0x124>
    800034f8:	00008797          	auipc	a5,0x8
    800034fc:	22a7c783          	lbu	a5,554(a5) # 8000b722 <_ZL9finishedC>
    80003500:	fc078ce3          	beqz	a5,800034d8 <_Z20Threads_CPP_API_testv+0x124>
    80003504:	00008797          	auipc	a5,0x8
    80003508:	21f7c783          	lbu	a5,543(a5) # 8000b723 <_ZL9finishedD>
    8000350c:	fc0786e3          	beqz	a5,800034d8 <_Z20Threads_CPP_API_testv+0x124>
    80003510:	fc040493          	addi	s1,s0,-64
    80003514:	0080006f          	j	8000351c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003518:	00848493          	addi	s1,s1,8
    8000351c:	fe040793          	addi	a5,s0,-32
    80003520:	08f48663          	beq	s1,a5,800035ac <_Z20Threads_CPP_API_testv+0x1f8>
    80003524:	0004b503          	ld	a0,0(s1)
    80003528:	fe0508e3          	beqz	a0,80003518 <_Z20Threads_CPP_API_testv+0x164>
    8000352c:	00053783          	ld	a5,0(a0)
    80003530:	0087b783          	ld	a5,8(a5)
    80003534:	000780e7          	jalr	a5
    80003538:	fe1ff06f          	j	80003518 <_Z20Threads_CPP_API_testv+0x164>
    8000353c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003540:	00048513          	mv	a0,s1
    80003544:	ffffe097          	auipc	ra,0xffffe
    80003548:	72c080e7          	jalr	1836(ra) # 80001c70 <_ZdlPv>
    8000354c:	00090513          	mv	a0,s2
    80003550:	00009097          	auipc	ra,0x9
    80003554:	2d8080e7          	jalr	728(ra) # 8000c828 <_Unwind_Resume>
    80003558:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000355c:	00048513          	mv	a0,s1
    80003560:	ffffe097          	auipc	ra,0xffffe
    80003564:	710080e7          	jalr	1808(ra) # 80001c70 <_ZdlPv>
    80003568:	00090513          	mv	a0,s2
    8000356c:	00009097          	auipc	ra,0x9
    80003570:	2bc080e7          	jalr	700(ra) # 8000c828 <_Unwind_Resume>
    80003574:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003578:	00048513          	mv	a0,s1
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	6f4080e7          	jalr	1780(ra) # 80001c70 <_ZdlPv>
    80003584:	00090513          	mv	a0,s2
    80003588:	00009097          	auipc	ra,0x9
    8000358c:	2a0080e7          	jalr	672(ra) # 8000c828 <_Unwind_Resume>
    80003590:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003594:	00048513          	mv	a0,s1
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	6d8080e7          	jalr	1752(ra) # 80001c70 <_ZdlPv>
    800035a0:	00090513          	mv	a0,s2
    800035a4:	00009097          	auipc	ra,0x9
    800035a8:	284080e7          	jalr	644(ra) # 8000c828 <_Unwind_Resume>
}
    800035ac:	03813083          	ld	ra,56(sp)
    800035b0:	03013403          	ld	s0,48(sp)
    800035b4:	02813483          	ld	s1,40(sp)
    800035b8:	02013903          	ld	s2,32(sp)
    800035bc:	04010113          	addi	sp,sp,64
    800035c0:	00008067          	ret

00000000800035c4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00113423          	sd	ra,8(sp)
    800035cc:	00813023          	sd	s0,0(sp)
    800035d0:	01010413          	addi	s0,sp,16
    800035d4:	00008797          	auipc	a5,0x8
    800035d8:	ecc78793          	addi	a5,a5,-308 # 8000b4a0 <_ZTV7WorkerA+0x10>
    800035dc:	00f53023          	sd	a5,0(a0)
    800035e0:	ffffe097          	auipc	ra,0xffffe
    800035e4:	5f0080e7          	jalr	1520(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    800035e8:	00813083          	ld	ra,8(sp)
    800035ec:	00013403          	ld	s0,0(sp)
    800035f0:	01010113          	addi	sp,sp,16
    800035f4:	00008067          	ret

00000000800035f8 <_ZN7WorkerAD0Ev>:
    800035f8:	fe010113          	addi	sp,sp,-32
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	00813823          	sd	s0,16(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	02010413          	addi	s0,sp,32
    8000360c:	00050493          	mv	s1,a0
    80003610:	00008797          	auipc	a5,0x8
    80003614:	e9078793          	addi	a5,a5,-368 # 8000b4a0 <_ZTV7WorkerA+0x10>
    80003618:	00f53023          	sd	a5,0(a0)
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	5b4080e7          	jalr	1460(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003624:	00048513          	mv	a0,s1
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	648080e7          	jalr	1608(ra) # 80001c70 <_ZdlPv>
    80003630:	01813083          	ld	ra,24(sp)
    80003634:	01013403          	ld	s0,16(sp)
    80003638:	00813483          	ld	s1,8(sp)
    8000363c:	02010113          	addi	sp,sp,32
    80003640:	00008067          	ret

0000000080003644 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003644:	ff010113          	addi	sp,sp,-16
    80003648:	00113423          	sd	ra,8(sp)
    8000364c:	00813023          	sd	s0,0(sp)
    80003650:	01010413          	addi	s0,sp,16
    80003654:	00008797          	auipc	a5,0x8
    80003658:	e7478793          	addi	a5,a5,-396 # 8000b4c8 <_ZTV7WorkerB+0x10>
    8000365c:	00f53023          	sd	a5,0(a0)
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	570080e7          	jalr	1392(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003668:	00813083          	ld	ra,8(sp)
    8000366c:	00013403          	ld	s0,0(sp)
    80003670:	01010113          	addi	sp,sp,16
    80003674:	00008067          	ret

0000000080003678 <_ZN7WorkerBD0Ev>:
    80003678:	fe010113          	addi	sp,sp,-32
    8000367c:	00113c23          	sd	ra,24(sp)
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	02010413          	addi	s0,sp,32
    8000368c:	00050493          	mv	s1,a0
    80003690:	00008797          	auipc	a5,0x8
    80003694:	e3878793          	addi	a5,a5,-456 # 8000b4c8 <_ZTV7WorkerB+0x10>
    80003698:	00f53023          	sd	a5,0(a0)
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	534080e7          	jalr	1332(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    800036a4:	00048513          	mv	a0,s1
    800036a8:	ffffe097          	auipc	ra,0xffffe
    800036ac:	5c8080e7          	jalr	1480(ra) # 80001c70 <_ZdlPv>
    800036b0:	01813083          	ld	ra,24(sp)
    800036b4:	01013403          	ld	s0,16(sp)
    800036b8:	00813483          	ld	s1,8(sp)
    800036bc:	02010113          	addi	sp,sp,32
    800036c0:	00008067          	ret

00000000800036c4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800036c4:	ff010113          	addi	sp,sp,-16
    800036c8:	00113423          	sd	ra,8(sp)
    800036cc:	00813023          	sd	s0,0(sp)
    800036d0:	01010413          	addi	s0,sp,16
    800036d4:	00008797          	auipc	a5,0x8
    800036d8:	e1c78793          	addi	a5,a5,-484 # 8000b4f0 <_ZTV7WorkerC+0x10>
    800036dc:	00f53023          	sd	a5,0(a0)
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	4f0080e7          	jalr	1264(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    800036e8:	00813083          	ld	ra,8(sp)
    800036ec:	00013403          	ld	s0,0(sp)
    800036f0:	01010113          	addi	sp,sp,16
    800036f4:	00008067          	ret

00000000800036f8 <_ZN7WorkerCD0Ev>:
    800036f8:	fe010113          	addi	sp,sp,-32
    800036fc:	00113c23          	sd	ra,24(sp)
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	02010413          	addi	s0,sp,32
    8000370c:	00050493          	mv	s1,a0
    80003710:	00008797          	auipc	a5,0x8
    80003714:	de078793          	addi	a5,a5,-544 # 8000b4f0 <_ZTV7WorkerC+0x10>
    80003718:	00f53023          	sd	a5,0(a0)
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	4b4080e7          	jalr	1204(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003724:	00048513          	mv	a0,s1
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	548080e7          	jalr	1352(ra) # 80001c70 <_ZdlPv>
    80003730:	01813083          	ld	ra,24(sp)
    80003734:	01013403          	ld	s0,16(sp)
    80003738:	00813483          	ld	s1,8(sp)
    8000373c:	02010113          	addi	sp,sp,32
    80003740:	00008067          	ret

0000000080003744 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00113423          	sd	ra,8(sp)
    8000374c:	00813023          	sd	s0,0(sp)
    80003750:	01010413          	addi	s0,sp,16
    80003754:	00008797          	auipc	a5,0x8
    80003758:	dc478793          	addi	a5,a5,-572 # 8000b518 <_ZTV7WorkerD+0x10>
    8000375c:	00f53023          	sd	a5,0(a0)
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	470080e7          	jalr	1136(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003768:	00813083          	ld	ra,8(sp)
    8000376c:	00013403          	ld	s0,0(sp)
    80003770:	01010113          	addi	sp,sp,16
    80003774:	00008067          	ret

0000000080003778 <_ZN7WorkerDD0Ev>:
    80003778:	fe010113          	addi	sp,sp,-32
    8000377c:	00113c23          	sd	ra,24(sp)
    80003780:	00813823          	sd	s0,16(sp)
    80003784:	00913423          	sd	s1,8(sp)
    80003788:	02010413          	addi	s0,sp,32
    8000378c:	00050493          	mv	s1,a0
    80003790:	00008797          	auipc	a5,0x8
    80003794:	d8878793          	addi	a5,a5,-632 # 8000b518 <_ZTV7WorkerD+0x10>
    80003798:	00f53023          	sd	a5,0(a0)
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	434080e7          	jalr	1076(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    800037a4:	00048513          	mv	a0,s1
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	4c8080e7          	jalr	1224(ra) # 80001c70 <_ZdlPv>
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	02010113          	addi	sp,sp,32
    800037c0:	00008067          	ret

00000000800037c4 <_ZN7WorkerA3runEv>:
    void run() override {
    800037c4:	ff010113          	addi	sp,sp,-16
    800037c8:	00113423          	sd	ra,8(sp)
    800037cc:	00813023          	sd	s0,0(sp)
    800037d0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800037d4:	00000593          	li	a1,0
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	774080e7          	jalr	1908(ra) # 80002f4c <_ZN7WorkerA11workerBodyAEPv>
    }
    800037e0:	00813083          	ld	ra,8(sp)
    800037e4:	00013403          	ld	s0,0(sp)
    800037e8:	01010113          	addi	sp,sp,16
    800037ec:	00008067          	ret

00000000800037f0 <_ZN7WorkerB3runEv>:
    void run() override {
    800037f0:	ff010113          	addi	sp,sp,-16
    800037f4:	00113423          	sd	ra,8(sp)
    800037f8:	00813023          	sd	s0,0(sp)
    800037fc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003800:	00000593          	li	a1,0
    80003804:	00000097          	auipc	ra,0x0
    80003808:	814080e7          	jalr	-2028(ra) # 80003018 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000380c:	00813083          	ld	ra,8(sp)
    80003810:	00013403          	ld	s0,0(sp)
    80003814:	01010113          	addi	sp,sp,16
    80003818:	00008067          	ret

000000008000381c <_ZN7WorkerC3runEv>:
    void run() override {
    8000381c:	ff010113          	addi	sp,sp,-16
    80003820:	00113423          	sd	ra,8(sp)
    80003824:	00813023          	sd	s0,0(sp)
    80003828:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000382c:	00000593          	li	a1,0
    80003830:	00000097          	auipc	ra,0x0
    80003834:	8bc080e7          	jalr	-1860(ra) # 800030ec <_ZN7WorkerC11workerBodyCEPv>
    }
    80003838:	00813083          	ld	ra,8(sp)
    8000383c:	00013403          	ld	s0,0(sp)
    80003840:	01010113          	addi	sp,sp,16
    80003844:	00008067          	ret

0000000080003848 <_ZN7WorkerD3runEv>:
    void run() override {
    80003848:	ff010113          	addi	sp,sp,-16
    8000384c:	00113423          	sd	ra,8(sp)
    80003850:	00813023          	sd	s0,0(sp)
    80003854:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003858:	00000593          	li	a1,0
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	a10080e7          	jalr	-1520(ra) # 8000326c <_ZN7WorkerD11workerBodyDEPv>
    }
    80003864:	00813083          	ld	ra,8(sp)
    80003868:	00013403          	ld	s0,0(sp)
    8000386c:	01010113          	addi	sp,sp,16
    80003870:	00008067          	ret

0000000080003874 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003874:	f8010113          	addi	sp,sp,-128
    80003878:	06113c23          	sd	ra,120(sp)
    8000387c:	06813823          	sd	s0,112(sp)
    80003880:	06913423          	sd	s1,104(sp)
    80003884:	07213023          	sd	s2,96(sp)
    80003888:	05313c23          	sd	s3,88(sp)
    8000388c:	05413823          	sd	s4,80(sp)
    80003890:	05513423          	sd	s5,72(sp)
    80003894:	05613023          	sd	s6,64(sp)
    80003898:	03713c23          	sd	s7,56(sp)
    8000389c:	03813823          	sd	s8,48(sp)
    800038a0:	03913423          	sd	s9,40(sp)
    800038a4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800038a8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800038ac:	00006517          	auipc	a0,0x6
    800038b0:	8c450513          	addi	a0,a0,-1852 # 80009170 <CONSOLE_STATUS+0x160>
    800038b4:	00001097          	auipc	ra,0x1
    800038b8:	5a8080e7          	jalr	1448(ra) # 80004e5c <_Z11printStringPKc>
    getString(input, 30);
    800038bc:	01e00593          	li	a1,30
    800038c0:	f8040493          	addi	s1,s0,-128
    800038c4:	00048513          	mv	a0,s1
    800038c8:	00001097          	auipc	ra,0x1
    800038cc:	61c080e7          	jalr	1564(ra) # 80004ee4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800038d0:	00048513          	mv	a0,s1
    800038d4:	00001097          	auipc	ra,0x1
    800038d8:	6e8080e7          	jalr	1768(ra) # 80004fbc <_Z11stringToIntPKc>
    800038dc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800038e0:	00006517          	auipc	a0,0x6
    800038e4:	8b050513          	addi	a0,a0,-1872 # 80009190 <CONSOLE_STATUS+0x180>
    800038e8:	00001097          	auipc	ra,0x1
    800038ec:	574080e7          	jalr	1396(ra) # 80004e5c <_Z11printStringPKc>
    getString(input, 30);
    800038f0:	01e00593          	li	a1,30
    800038f4:	00048513          	mv	a0,s1
    800038f8:	00001097          	auipc	ra,0x1
    800038fc:	5ec080e7          	jalr	1516(ra) # 80004ee4 <_Z9getStringPci>
    n = stringToInt(input);
    80003900:	00048513          	mv	a0,s1
    80003904:	00001097          	auipc	ra,0x1
    80003908:	6b8080e7          	jalr	1720(ra) # 80004fbc <_Z11stringToIntPKc>
    8000390c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003910:	00006517          	auipc	a0,0x6
    80003914:	8a050513          	addi	a0,a0,-1888 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003918:	00001097          	auipc	ra,0x1
    8000391c:	544080e7          	jalr	1348(ra) # 80004e5c <_Z11printStringPKc>
    printInt(threadNum);
    80003920:	00000613          	li	a2,0
    80003924:	00a00593          	li	a1,10
    80003928:	00098513          	mv	a0,s3
    8000392c:	00001097          	auipc	ra,0x1
    80003930:	6e0080e7          	jalr	1760(ra) # 8000500c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003934:	00006517          	auipc	a0,0x6
    80003938:	89450513          	addi	a0,a0,-1900 # 800091c8 <CONSOLE_STATUS+0x1b8>
    8000393c:	00001097          	auipc	ra,0x1
    80003940:	520080e7          	jalr	1312(ra) # 80004e5c <_Z11printStringPKc>
    printInt(n);
    80003944:	00000613          	li	a2,0
    80003948:	00a00593          	li	a1,10
    8000394c:	00048513          	mv	a0,s1
    80003950:	00001097          	auipc	ra,0x1
    80003954:	6bc080e7          	jalr	1724(ra) # 8000500c <_Z8printIntiii>
    printString(".\n");
    80003958:	00006517          	auipc	a0,0x6
    8000395c:	88850513          	addi	a0,a0,-1912 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80003960:	00001097          	auipc	ra,0x1
    80003964:	4fc080e7          	jalr	1276(ra) # 80004e5c <_Z11printStringPKc>
    if (threadNum > n) {
    80003968:	0334c463          	blt	s1,s3,80003990 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000396c:	03305c63          	blez	s3,800039a4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003970:	03800513          	li	a0,56
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	2ac080e7          	jalr	684(ra) # 80001c20 <_Znwm>
    8000397c:	00050a93          	mv	s5,a0
    80003980:	00048593          	mv	a1,s1
    80003984:	00001097          	auipc	ra,0x1
    80003988:	7a8080e7          	jalr	1960(ra) # 8000512c <_ZN9BufferCPPC1Ei>
    8000398c:	0300006f          	j	800039bc <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003990:	00006517          	auipc	a0,0x6
    80003994:	85850513          	addi	a0,a0,-1960 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003998:	00001097          	auipc	ra,0x1
    8000399c:	4c4080e7          	jalr	1220(ra) # 80004e5c <_Z11printStringPKc>
        return;
    800039a0:	0140006f          	j	800039b4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800039a4:	00006517          	auipc	a0,0x6
    800039a8:	88450513          	addi	a0,a0,-1916 # 80009228 <CONSOLE_STATUS+0x218>
    800039ac:	00001097          	auipc	ra,0x1
    800039b0:	4b0080e7          	jalr	1200(ra) # 80004e5c <_Z11printStringPKc>
        return;
    800039b4:	000c0113          	mv	sp,s8
    800039b8:	2140006f          	j	80003bcc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800039bc:	01000513          	li	a0,16
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	260080e7          	jalr	608(ra) # 80001c20 <_Znwm>
    800039c8:	00050913          	mv	s2,a0
    800039cc:	00000593          	li	a1,0
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	498080e7          	jalr	1176(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    800039d8:	00008797          	auipc	a5,0x8
    800039dc:	d527bc23          	sd	s2,-680(a5) # 8000b730 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800039e0:	00399793          	slli	a5,s3,0x3
    800039e4:	00f78793          	addi	a5,a5,15
    800039e8:	ff07f793          	andi	a5,a5,-16
    800039ec:	40f10133          	sub	sp,sp,a5
    800039f0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800039f4:	0019871b          	addiw	a4,s3,1
    800039f8:	00171793          	slli	a5,a4,0x1
    800039fc:	00e787b3          	add	a5,a5,a4
    80003a00:	00379793          	slli	a5,a5,0x3
    80003a04:	00f78793          	addi	a5,a5,15
    80003a08:	ff07f793          	andi	a5,a5,-16
    80003a0c:	40f10133          	sub	sp,sp,a5
    80003a10:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003a14:	00199493          	slli	s1,s3,0x1
    80003a18:	013484b3          	add	s1,s1,s3
    80003a1c:	00349493          	slli	s1,s1,0x3
    80003a20:	009b04b3          	add	s1,s6,s1
    80003a24:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003a28:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003a2c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003a30:	02800513          	li	a0,40
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	1ec080e7          	jalr	492(ra) # 80001c20 <_Znwm>
    80003a3c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	318080e7          	jalr	792(ra) # 80001d58 <_ZN6ThreadC1Ev>
    80003a48:	00008797          	auipc	a5,0x8
    80003a4c:	b4878793          	addi	a5,a5,-1208 # 8000b590 <_ZTV8Consumer+0x10>
    80003a50:	00fbb023          	sd	a5,0(s7)
    80003a54:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003a58:	000b8513          	mv	a0,s7
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	35c080e7          	jalr	860(ra) # 80001db8 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003a64:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003a68:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003a6c:	00008797          	auipc	a5,0x8
    80003a70:	cc47b783          	ld	a5,-828(a5) # 8000b730 <_ZL10waitForAll>
    80003a74:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003a78:	02800513          	li	a0,40
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	1a4080e7          	jalr	420(ra) # 80001c20 <_Znwm>
    80003a84:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	2d0080e7          	jalr	720(ra) # 80001d58 <_ZN6ThreadC1Ev>
    80003a90:	00008797          	auipc	a5,0x8
    80003a94:	ab078793          	addi	a5,a5,-1360 # 8000b540 <_ZTV16ProducerKeyborad+0x10>
    80003a98:	00f4b023          	sd	a5,0(s1)
    80003a9c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003aa0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003aa4:	00048513          	mv	a0,s1
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	310080e7          	jalr	784(ra) # 80001db8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ab0:	00100913          	li	s2,1
    80003ab4:	0300006f          	j	80003ae4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ab8:	00008797          	auipc	a5,0x8
    80003abc:	ab078793          	addi	a5,a5,-1360 # 8000b568 <_ZTV8Producer+0x10>
    80003ac0:	00fcb023          	sd	a5,0(s9)
    80003ac4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003ac8:	00391793          	slli	a5,s2,0x3
    80003acc:	00fa07b3          	add	a5,s4,a5
    80003ad0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003ad4:	000c8513          	mv	a0,s9
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	2e0080e7          	jalr	736(ra) # 80001db8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ae0:	0019091b          	addiw	s2,s2,1
    80003ae4:	05395263          	bge	s2,s3,80003b28 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003ae8:	00191493          	slli	s1,s2,0x1
    80003aec:	012484b3          	add	s1,s1,s2
    80003af0:	00349493          	slli	s1,s1,0x3
    80003af4:	009b04b3          	add	s1,s6,s1
    80003af8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003afc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003b00:	00008797          	auipc	a5,0x8
    80003b04:	c307b783          	ld	a5,-976(a5) # 8000b730 <_ZL10waitForAll>
    80003b08:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003b0c:	02800513          	li	a0,40
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	110080e7          	jalr	272(ra) # 80001c20 <_Znwm>
    80003b18:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	23c080e7          	jalr	572(ra) # 80001d58 <_ZN6ThreadC1Ev>
    80003b24:	f95ff06f          	j	80003ab8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003b28:	ffffe097          	auipc	ra,0xffffe
    80003b2c:	268080e7          	jalr	616(ra) # 80001d90 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003b30:	00000493          	li	s1,0
    80003b34:	0099ce63          	blt	s3,s1,80003b50 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003b38:	00008517          	auipc	a0,0x8
    80003b3c:	bf853503          	ld	a0,-1032(a0) # 8000b730 <_ZL10waitForAll>
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	364080e7          	jalr	868(ra) # 80001ea4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003b48:	0014849b          	addiw	s1,s1,1
    80003b4c:	fe9ff06f          	j	80003b34 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003b50:	00008517          	auipc	a0,0x8
    80003b54:	be053503          	ld	a0,-1056(a0) # 8000b730 <_ZL10waitForAll>
    80003b58:	00050863          	beqz	a0,80003b68 <_Z20testConsumerProducerv+0x2f4>
    80003b5c:	00053783          	ld	a5,0(a0)
    80003b60:	0087b783          	ld	a5,8(a5)
    80003b64:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003b68:	00000493          	li	s1,0
    80003b6c:	0080006f          	j	80003b74 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003b70:	0014849b          	addiw	s1,s1,1
    80003b74:	0334d263          	bge	s1,s3,80003b98 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003b78:	00349793          	slli	a5,s1,0x3
    80003b7c:	00fa07b3          	add	a5,s4,a5
    80003b80:	0007b503          	ld	a0,0(a5)
    80003b84:	fe0506e3          	beqz	a0,80003b70 <_Z20testConsumerProducerv+0x2fc>
    80003b88:	00053783          	ld	a5,0(a0)
    80003b8c:	0087b783          	ld	a5,8(a5)
    80003b90:	000780e7          	jalr	a5
    80003b94:	fddff06f          	j	80003b70 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003b98:	000b8a63          	beqz	s7,80003bac <_Z20testConsumerProducerv+0x338>
    80003b9c:	000bb783          	ld	a5,0(s7)
    80003ba0:	0087b783          	ld	a5,8(a5)
    80003ba4:	000b8513          	mv	a0,s7
    80003ba8:	000780e7          	jalr	a5
    delete buffer;
    80003bac:	000a8e63          	beqz	s5,80003bc8 <_Z20testConsumerProducerv+0x354>
    80003bb0:	000a8513          	mv	a0,s5
    80003bb4:	00002097          	auipc	ra,0x2
    80003bb8:	870080e7          	jalr	-1936(ra) # 80005424 <_ZN9BufferCPPD1Ev>
    80003bbc:	000a8513          	mv	a0,s5
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	0b0080e7          	jalr	176(ra) # 80001c70 <_ZdlPv>
    80003bc8:	000c0113          	mv	sp,s8
}
    80003bcc:	f8040113          	addi	sp,s0,-128
    80003bd0:	07813083          	ld	ra,120(sp)
    80003bd4:	07013403          	ld	s0,112(sp)
    80003bd8:	06813483          	ld	s1,104(sp)
    80003bdc:	06013903          	ld	s2,96(sp)
    80003be0:	05813983          	ld	s3,88(sp)
    80003be4:	05013a03          	ld	s4,80(sp)
    80003be8:	04813a83          	ld	s5,72(sp)
    80003bec:	04013b03          	ld	s6,64(sp)
    80003bf0:	03813b83          	ld	s7,56(sp)
    80003bf4:	03013c03          	ld	s8,48(sp)
    80003bf8:	02813c83          	ld	s9,40(sp)
    80003bfc:	08010113          	addi	sp,sp,128
    80003c00:	00008067          	ret
    80003c04:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003c08:	000a8513          	mv	a0,s5
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	064080e7          	jalr	100(ra) # 80001c70 <_ZdlPv>
    80003c14:	00048513          	mv	a0,s1
    80003c18:	00009097          	auipc	ra,0x9
    80003c1c:	c10080e7          	jalr	-1008(ra) # 8000c828 <_Unwind_Resume>
    80003c20:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003c24:	00090513          	mv	a0,s2
    80003c28:	ffffe097          	auipc	ra,0xffffe
    80003c2c:	048080e7          	jalr	72(ra) # 80001c70 <_ZdlPv>
    80003c30:	00048513          	mv	a0,s1
    80003c34:	00009097          	auipc	ra,0x9
    80003c38:	bf4080e7          	jalr	-1036(ra) # 8000c828 <_Unwind_Resume>
    80003c3c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003c40:	000b8513          	mv	a0,s7
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	02c080e7          	jalr	44(ra) # 80001c70 <_ZdlPv>
    80003c4c:	00048513          	mv	a0,s1
    80003c50:	00009097          	auipc	ra,0x9
    80003c54:	bd8080e7          	jalr	-1064(ra) # 8000c828 <_Unwind_Resume>
    80003c58:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003c5c:	00048513          	mv	a0,s1
    80003c60:	ffffe097          	auipc	ra,0xffffe
    80003c64:	010080e7          	jalr	16(ra) # 80001c70 <_ZdlPv>
    80003c68:	00090513          	mv	a0,s2
    80003c6c:	00009097          	auipc	ra,0x9
    80003c70:	bbc080e7          	jalr	-1092(ra) # 8000c828 <_Unwind_Resume>
    80003c74:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003c78:	000c8513          	mv	a0,s9
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	ff4080e7          	jalr	-12(ra) # 80001c70 <_ZdlPv>
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00009097          	auipc	ra,0x9
    80003c8c:	ba0080e7          	jalr	-1120(ra) # 8000c828 <_Unwind_Resume>

0000000080003c90 <_ZN8Consumer3runEv>:
    void run() override {
    80003c90:	fd010113          	addi	sp,sp,-48
    80003c94:	02113423          	sd	ra,40(sp)
    80003c98:	02813023          	sd	s0,32(sp)
    80003c9c:	00913c23          	sd	s1,24(sp)
    80003ca0:	01213823          	sd	s2,16(sp)
    80003ca4:	01313423          	sd	s3,8(sp)
    80003ca8:	03010413          	addi	s0,sp,48
    80003cac:	00050913          	mv	s2,a0
        int i = 0;
    80003cb0:	00000993          	li	s3,0
    80003cb4:	0100006f          	j	80003cc4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003cb8:	00a00513          	li	a0,10
    80003cbc:	ffffe097          	auipc	ra,0xffffe
    80003cc0:	2d4080e7          	jalr	724(ra) # 80001f90 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003cc4:	00008797          	auipc	a5,0x8
    80003cc8:	a647a783          	lw	a5,-1436(a5) # 8000b728 <_ZL9threadEnd>
    80003ccc:	04079a63          	bnez	a5,80003d20 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003cd0:	02093783          	ld	a5,32(s2)
    80003cd4:	0087b503          	ld	a0,8(a5)
    80003cd8:	00001097          	auipc	ra,0x1
    80003cdc:	638080e7          	jalr	1592(ra) # 80005310 <_ZN9BufferCPP3getEv>
            i++;
    80003ce0:	0019849b          	addiw	s1,s3,1
    80003ce4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003ce8:	0ff57513          	andi	a0,a0,255
    80003cec:	ffffe097          	auipc	ra,0xffffe
    80003cf0:	2a4080e7          	jalr	676(ra) # 80001f90 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003cf4:	05000793          	li	a5,80
    80003cf8:	02f4e4bb          	remw	s1,s1,a5
    80003cfc:	fc0494e3          	bnez	s1,80003cc4 <_ZN8Consumer3runEv+0x34>
    80003d00:	fb9ff06f          	j	80003cb8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003d04:	02093783          	ld	a5,32(s2)
    80003d08:	0087b503          	ld	a0,8(a5)
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	604080e7          	jalr	1540(ra) # 80005310 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003d14:	0ff57513          	andi	a0,a0,255
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	278080e7          	jalr	632(ra) # 80001f90 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003d20:	02093783          	ld	a5,32(s2)
    80003d24:	0087b503          	ld	a0,8(a5)
    80003d28:	00001097          	auipc	ra,0x1
    80003d2c:	674080e7          	jalr	1652(ra) # 8000539c <_ZN9BufferCPP6getCntEv>
    80003d30:	fca04ae3          	bgtz	a0,80003d04 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003d34:	02093783          	ld	a5,32(s2)
    80003d38:	0107b503          	ld	a0,16(a5)
    80003d3c:	ffffe097          	auipc	ra,0xffffe
    80003d40:	194080e7          	jalr	404(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
    }
    80003d44:	02813083          	ld	ra,40(sp)
    80003d48:	02013403          	ld	s0,32(sp)
    80003d4c:	01813483          	ld	s1,24(sp)
    80003d50:	01013903          	ld	s2,16(sp)
    80003d54:	00813983          	ld	s3,8(sp)
    80003d58:	03010113          	addi	sp,sp,48
    80003d5c:	00008067          	ret

0000000080003d60 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003d60:	ff010113          	addi	sp,sp,-16
    80003d64:	00113423          	sd	ra,8(sp)
    80003d68:	00813023          	sd	s0,0(sp)
    80003d6c:	01010413          	addi	s0,sp,16
    80003d70:	00008797          	auipc	a5,0x8
    80003d74:	82078793          	addi	a5,a5,-2016 # 8000b590 <_ZTV8Consumer+0x10>
    80003d78:	00f53023          	sd	a5,0(a0)
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	e54080e7          	jalr	-428(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003d84:	00813083          	ld	ra,8(sp)
    80003d88:	00013403          	ld	s0,0(sp)
    80003d8c:	01010113          	addi	sp,sp,16
    80003d90:	00008067          	ret

0000000080003d94 <_ZN8ConsumerD0Ev>:
    80003d94:	fe010113          	addi	sp,sp,-32
    80003d98:	00113c23          	sd	ra,24(sp)
    80003d9c:	00813823          	sd	s0,16(sp)
    80003da0:	00913423          	sd	s1,8(sp)
    80003da4:	02010413          	addi	s0,sp,32
    80003da8:	00050493          	mv	s1,a0
    80003dac:	00007797          	auipc	a5,0x7
    80003db0:	7e478793          	addi	a5,a5,2020 # 8000b590 <_ZTV8Consumer+0x10>
    80003db4:	00f53023          	sd	a5,0(a0)
    80003db8:	ffffe097          	auipc	ra,0xffffe
    80003dbc:	e18080e7          	jalr	-488(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003dc0:	00048513          	mv	a0,s1
    80003dc4:	ffffe097          	auipc	ra,0xffffe
    80003dc8:	eac080e7          	jalr	-340(ra) # 80001c70 <_ZdlPv>
    80003dcc:	01813083          	ld	ra,24(sp)
    80003dd0:	01013403          	ld	s0,16(sp)
    80003dd4:	00813483          	ld	s1,8(sp)
    80003dd8:	02010113          	addi	sp,sp,32
    80003ddc:	00008067          	ret

0000000080003de0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003de0:	ff010113          	addi	sp,sp,-16
    80003de4:	00113423          	sd	ra,8(sp)
    80003de8:	00813023          	sd	s0,0(sp)
    80003dec:	01010413          	addi	s0,sp,16
    80003df0:	00007797          	auipc	a5,0x7
    80003df4:	75078793          	addi	a5,a5,1872 # 8000b540 <_ZTV16ProducerKeyborad+0x10>
    80003df8:	00f53023          	sd	a5,0(a0)
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	dd4080e7          	jalr	-556(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003e04:	00813083          	ld	ra,8(sp)
    80003e08:	00013403          	ld	s0,0(sp)
    80003e0c:	01010113          	addi	sp,sp,16
    80003e10:	00008067          	ret

0000000080003e14 <_ZN16ProducerKeyboradD0Ev>:
    80003e14:	fe010113          	addi	sp,sp,-32
    80003e18:	00113c23          	sd	ra,24(sp)
    80003e1c:	00813823          	sd	s0,16(sp)
    80003e20:	00913423          	sd	s1,8(sp)
    80003e24:	02010413          	addi	s0,sp,32
    80003e28:	00050493          	mv	s1,a0
    80003e2c:	00007797          	auipc	a5,0x7
    80003e30:	71478793          	addi	a5,a5,1812 # 8000b540 <_ZTV16ProducerKeyborad+0x10>
    80003e34:	00f53023          	sd	a5,0(a0)
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	d98080e7          	jalr	-616(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003e40:	00048513          	mv	a0,s1
    80003e44:	ffffe097          	auipc	ra,0xffffe
    80003e48:	e2c080e7          	jalr	-468(ra) # 80001c70 <_ZdlPv>
    80003e4c:	01813083          	ld	ra,24(sp)
    80003e50:	01013403          	ld	s0,16(sp)
    80003e54:	00813483          	ld	s1,8(sp)
    80003e58:	02010113          	addi	sp,sp,32
    80003e5c:	00008067          	ret

0000000080003e60 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003e60:	ff010113          	addi	sp,sp,-16
    80003e64:	00113423          	sd	ra,8(sp)
    80003e68:	00813023          	sd	s0,0(sp)
    80003e6c:	01010413          	addi	s0,sp,16
    80003e70:	00007797          	auipc	a5,0x7
    80003e74:	6f878793          	addi	a5,a5,1784 # 8000b568 <_ZTV8Producer+0x10>
    80003e78:	00f53023          	sd	a5,0(a0)
    80003e7c:	ffffe097          	auipc	ra,0xffffe
    80003e80:	d54080e7          	jalr	-684(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003e84:	00813083          	ld	ra,8(sp)
    80003e88:	00013403          	ld	s0,0(sp)
    80003e8c:	01010113          	addi	sp,sp,16
    80003e90:	00008067          	ret

0000000080003e94 <_ZN8ProducerD0Ev>:
    80003e94:	fe010113          	addi	sp,sp,-32
    80003e98:	00113c23          	sd	ra,24(sp)
    80003e9c:	00813823          	sd	s0,16(sp)
    80003ea0:	00913423          	sd	s1,8(sp)
    80003ea4:	02010413          	addi	s0,sp,32
    80003ea8:	00050493          	mv	s1,a0
    80003eac:	00007797          	auipc	a5,0x7
    80003eb0:	6bc78793          	addi	a5,a5,1724 # 8000b568 <_ZTV8Producer+0x10>
    80003eb4:	00f53023          	sd	a5,0(a0)
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	d18080e7          	jalr	-744(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	ffffe097          	auipc	ra,0xffffe
    80003ec8:	dac080e7          	jalr	-596(ra) # 80001c70 <_ZdlPv>
    80003ecc:	01813083          	ld	ra,24(sp)
    80003ed0:	01013403          	ld	s0,16(sp)
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret

0000000080003ee0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003ee0:	fe010113          	addi	sp,sp,-32
    80003ee4:	00113c23          	sd	ra,24(sp)
    80003ee8:	00813823          	sd	s0,16(sp)
    80003eec:	00913423          	sd	s1,8(sp)
    80003ef0:	02010413          	addi	s0,sp,32
    80003ef4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003ef8:	ffffd097          	auipc	ra,0xffffd
    80003efc:	61c080e7          	jalr	1564(ra) # 80001514 <_Z4getcv>
    80003f00:	0005059b          	sext.w	a1,a0
    80003f04:	01b00793          	li	a5,27
    80003f08:	00f58c63          	beq	a1,a5,80003f20 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003f0c:	0204b783          	ld	a5,32(s1)
    80003f10:	0087b503          	ld	a0,8(a5)
    80003f14:	00001097          	auipc	ra,0x1
    80003f18:	36c080e7          	jalr	876(ra) # 80005280 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003f1c:	fddff06f          	j	80003ef8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003f20:	00100793          	li	a5,1
    80003f24:	00008717          	auipc	a4,0x8
    80003f28:	80f72223          	sw	a5,-2044(a4) # 8000b728 <_ZL9threadEnd>
        td->buffer->put('!');
    80003f2c:	0204b783          	ld	a5,32(s1)
    80003f30:	02100593          	li	a1,33
    80003f34:	0087b503          	ld	a0,8(a5)
    80003f38:	00001097          	auipc	ra,0x1
    80003f3c:	348080e7          	jalr	840(ra) # 80005280 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003f40:	0204b783          	ld	a5,32(s1)
    80003f44:	0107b503          	ld	a0,16(a5)
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	f88080e7          	jalr	-120(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
    }
    80003f50:	01813083          	ld	ra,24(sp)
    80003f54:	01013403          	ld	s0,16(sp)
    80003f58:	00813483          	ld	s1,8(sp)
    80003f5c:	02010113          	addi	sp,sp,32
    80003f60:	00008067          	ret

0000000080003f64 <_ZN8Producer3runEv>:
    void run() override {
    80003f64:	fe010113          	addi	sp,sp,-32
    80003f68:	00113c23          	sd	ra,24(sp)
    80003f6c:	00813823          	sd	s0,16(sp)
    80003f70:	00913423          	sd	s1,8(sp)
    80003f74:	01213023          	sd	s2,0(sp)
    80003f78:	02010413          	addi	s0,sp,32
    80003f7c:	00050493          	mv	s1,a0
        int i = 0;
    80003f80:	00000913          	li	s2,0
        while (!threadEnd) {
    80003f84:	00007797          	auipc	a5,0x7
    80003f88:	7a47a783          	lw	a5,1956(a5) # 8000b728 <_ZL9threadEnd>
    80003f8c:	04079263          	bnez	a5,80003fd0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003f90:	0204b783          	ld	a5,32(s1)
    80003f94:	0007a583          	lw	a1,0(a5)
    80003f98:	0305859b          	addiw	a1,a1,48
    80003f9c:	0087b503          	ld	a0,8(a5)
    80003fa0:	00001097          	auipc	ra,0x1
    80003fa4:	2e0080e7          	jalr	736(ra) # 80005280 <_ZN9BufferCPP3putEi>
            i++;
    80003fa8:	0019071b          	addiw	a4,s2,1
    80003fac:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003fb0:	0204b783          	ld	a5,32(s1)
    80003fb4:	0007a783          	lw	a5,0(a5)
    80003fb8:	00e787bb          	addw	a5,a5,a4
    80003fbc:	00500513          	li	a0,5
    80003fc0:	02a7e53b          	remw	a0,a5,a0
    80003fc4:	ffffe097          	auipc	ra,0xffffe
    80003fc8:	e28080e7          	jalr	-472(ra) # 80001dec <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003fcc:	fb9ff06f          	j	80003f84 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003fd0:	0204b783          	ld	a5,32(s1)
    80003fd4:	0107b503          	ld	a0,16(a5)
    80003fd8:	ffffe097          	auipc	ra,0xffffe
    80003fdc:	ef8080e7          	jalr	-264(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
    }
    80003fe0:	01813083          	ld	ra,24(sp)
    80003fe4:	01013403          	ld	s0,16(sp)
    80003fe8:	00813483          	ld	s1,8(sp)
    80003fec:	00013903          	ld	s2,0(sp)
    80003ff0:	02010113          	addi	sp,sp,32
    80003ff4:	00008067          	ret

0000000080003ff8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003ff8:	fe010113          	addi	sp,sp,-32
    80003ffc:	00113c23          	sd	ra,24(sp)
    80004000:	00813823          	sd	s0,16(sp)
    80004004:	00913423          	sd	s1,8(sp)
    80004008:	01213023          	sd	s2,0(sp)
    8000400c:	02010413          	addi	s0,sp,32
    80004010:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004014:	00100793          	li	a5,1
    80004018:	02a7f863          	bgeu	a5,a0,80004048 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000401c:	00a00793          	li	a5,10
    80004020:	02f577b3          	remu	a5,a0,a5
    80004024:	02078e63          	beqz	a5,80004060 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004028:	fff48513          	addi	a0,s1,-1
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	fcc080e7          	jalr	-52(ra) # 80003ff8 <_ZL9fibonaccim>
    80004034:	00050913          	mv	s2,a0
    80004038:	ffe48513          	addi	a0,s1,-2
    8000403c:	00000097          	auipc	ra,0x0
    80004040:	fbc080e7          	jalr	-68(ra) # 80003ff8 <_ZL9fibonaccim>
    80004044:	00a90533          	add	a0,s2,a0
}
    80004048:	01813083          	ld	ra,24(sp)
    8000404c:	01013403          	ld	s0,16(sp)
    80004050:	00813483          	ld	s1,8(sp)
    80004054:	00013903          	ld	s2,0(sp)
    80004058:	02010113          	addi	sp,sp,32
    8000405c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004060:	ffffd097          	auipc	ra,0xffffd
    80004064:	374080e7          	jalr	884(ra) # 800013d4 <_Z15thread_dispatchv>
    80004068:	fc1ff06f          	j	80004028 <_ZL9fibonaccim+0x30>

000000008000406c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000406c:	fe010113          	addi	sp,sp,-32
    80004070:	00113c23          	sd	ra,24(sp)
    80004074:	00813823          	sd	s0,16(sp)
    80004078:	00913423          	sd	s1,8(sp)
    8000407c:	01213023          	sd	s2,0(sp)
    80004080:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004084:	00a00493          	li	s1,10
    80004088:	0400006f          	j	800040c8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000408c:	00005517          	auipc	a0,0x5
    80004090:	22c50513          	addi	a0,a0,556 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004094:	00001097          	auipc	ra,0x1
    80004098:	dc8080e7          	jalr	-568(ra) # 80004e5c <_Z11printStringPKc>
    8000409c:	00000613          	li	a2,0
    800040a0:	00a00593          	li	a1,10
    800040a4:	00048513          	mv	a0,s1
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	f64080e7          	jalr	-156(ra) # 8000500c <_Z8printIntiii>
    800040b0:	00005517          	auipc	a0,0x5
    800040b4:	3f850513          	addi	a0,a0,1016 # 800094a8 <CONSOLE_STATUS+0x498>
    800040b8:	00001097          	auipc	ra,0x1
    800040bc:	da4080e7          	jalr	-604(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800040c0:	0014849b          	addiw	s1,s1,1
    800040c4:	0ff4f493          	andi	s1,s1,255
    800040c8:	00c00793          	li	a5,12
    800040cc:	fc97f0e3          	bgeu	a5,s1,8000408c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800040d0:	00005517          	auipc	a0,0x5
    800040d4:	1f050513          	addi	a0,a0,496 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800040d8:	00001097          	auipc	ra,0x1
    800040dc:	d84080e7          	jalr	-636(ra) # 80004e5c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800040e0:	00500313          	li	t1,5
    thread_dispatch();
    800040e4:	ffffd097          	auipc	ra,0xffffd
    800040e8:	2f0080e7          	jalr	752(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800040ec:	01000513          	li	a0,16
    800040f0:	00000097          	auipc	ra,0x0
    800040f4:	f08080e7          	jalr	-248(ra) # 80003ff8 <_ZL9fibonaccim>
    800040f8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800040fc:	00005517          	auipc	a0,0x5
    80004100:	1d450513          	addi	a0,a0,468 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004104:	00001097          	auipc	ra,0x1
    80004108:	d58080e7          	jalr	-680(ra) # 80004e5c <_Z11printStringPKc>
    8000410c:	00000613          	li	a2,0
    80004110:	00a00593          	li	a1,10
    80004114:	0009051b          	sext.w	a0,s2
    80004118:	00001097          	auipc	ra,0x1
    8000411c:	ef4080e7          	jalr	-268(ra) # 8000500c <_Z8printIntiii>
    80004120:	00005517          	auipc	a0,0x5
    80004124:	38850513          	addi	a0,a0,904 # 800094a8 <CONSOLE_STATUS+0x498>
    80004128:	00001097          	auipc	ra,0x1
    8000412c:	d34080e7          	jalr	-716(ra) # 80004e5c <_Z11printStringPKc>
    80004130:	0400006f          	j	80004170 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004134:	00005517          	auipc	a0,0x5
    80004138:	18450513          	addi	a0,a0,388 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	d20080e7          	jalr	-736(ra) # 80004e5c <_Z11printStringPKc>
    80004144:	00000613          	li	a2,0
    80004148:	00a00593          	li	a1,10
    8000414c:	00048513          	mv	a0,s1
    80004150:	00001097          	auipc	ra,0x1
    80004154:	ebc080e7          	jalr	-324(ra) # 8000500c <_Z8printIntiii>
    80004158:	00005517          	auipc	a0,0x5
    8000415c:	35050513          	addi	a0,a0,848 # 800094a8 <CONSOLE_STATUS+0x498>
    80004160:	00001097          	auipc	ra,0x1
    80004164:	cfc080e7          	jalr	-772(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004168:	0014849b          	addiw	s1,s1,1
    8000416c:	0ff4f493          	andi	s1,s1,255
    80004170:	00f00793          	li	a5,15
    80004174:	fc97f0e3          	bgeu	a5,s1,80004134 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004178:	00005517          	auipc	a0,0x5
    8000417c:	16850513          	addi	a0,a0,360 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004180:	00001097          	auipc	ra,0x1
    80004184:	cdc080e7          	jalr	-804(ra) # 80004e5c <_Z11printStringPKc>
    finishedD = true;
    80004188:	00100793          	li	a5,1
    8000418c:	00007717          	auipc	a4,0x7
    80004190:	5af70623          	sb	a5,1452(a4) # 8000b738 <_ZL9finishedD>
    thread_dispatch();
    80004194:	ffffd097          	auipc	ra,0xffffd
    80004198:	240080e7          	jalr	576(ra) # 800013d4 <_Z15thread_dispatchv>
}
    8000419c:	01813083          	ld	ra,24(sp)
    800041a0:	01013403          	ld	s0,16(sp)
    800041a4:	00813483          	ld	s1,8(sp)
    800041a8:	00013903          	ld	s2,0(sp)
    800041ac:	02010113          	addi	sp,sp,32
    800041b0:	00008067          	ret

00000000800041b4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800041b4:	fe010113          	addi	sp,sp,-32
    800041b8:	00113c23          	sd	ra,24(sp)
    800041bc:	00813823          	sd	s0,16(sp)
    800041c0:	00913423          	sd	s1,8(sp)
    800041c4:	01213023          	sd	s2,0(sp)
    800041c8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800041cc:	00000493          	li	s1,0
    800041d0:	0400006f          	j	80004210 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800041d4:	00005517          	auipc	a0,0x5
    800041d8:	0b450513          	addi	a0,a0,180 # 80009288 <CONSOLE_STATUS+0x278>
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	c80080e7          	jalr	-896(ra) # 80004e5c <_Z11printStringPKc>
    800041e4:	00000613          	li	a2,0
    800041e8:	00a00593          	li	a1,10
    800041ec:	00048513          	mv	a0,s1
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	e1c080e7          	jalr	-484(ra) # 8000500c <_Z8printIntiii>
    800041f8:	00005517          	auipc	a0,0x5
    800041fc:	2b050513          	addi	a0,a0,688 # 800094a8 <CONSOLE_STATUS+0x498>
    80004200:	00001097          	auipc	ra,0x1
    80004204:	c5c080e7          	jalr	-932(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004208:	0014849b          	addiw	s1,s1,1
    8000420c:	0ff4f493          	andi	s1,s1,255
    80004210:	00200793          	li	a5,2
    80004214:	fc97f0e3          	bgeu	a5,s1,800041d4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004218:	00005517          	auipc	a0,0x5
    8000421c:	07850513          	addi	a0,a0,120 # 80009290 <CONSOLE_STATUS+0x280>
    80004220:	00001097          	auipc	ra,0x1
    80004224:	c3c080e7          	jalr	-964(ra) # 80004e5c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004228:	00700313          	li	t1,7
    thread_dispatch();
    8000422c:	ffffd097          	auipc	ra,0xffffd
    80004230:	1a8080e7          	jalr	424(ra) # 800013d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004234:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004238:	00005517          	auipc	a0,0x5
    8000423c:	06850513          	addi	a0,a0,104 # 800092a0 <CONSOLE_STATUS+0x290>
    80004240:	00001097          	auipc	ra,0x1
    80004244:	c1c080e7          	jalr	-996(ra) # 80004e5c <_Z11printStringPKc>
    80004248:	00000613          	li	a2,0
    8000424c:	00a00593          	li	a1,10
    80004250:	0009051b          	sext.w	a0,s2
    80004254:	00001097          	auipc	ra,0x1
    80004258:	db8080e7          	jalr	-584(ra) # 8000500c <_Z8printIntiii>
    8000425c:	00005517          	auipc	a0,0x5
    80004260:	24c50513          	addi	a0,a0,588 # 800094a8 <CONSOLE_STATUS+0x498>
    80004264:	00001097          	auipc	ra,0x1
    80004268:	bf8080e7          	jalr	-1032(ra) # 80004e5c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000426c:	00c00513          	li	a0,12
    80004270:	00000097          	auipc	ra,0x0
    80004274:	d88080e7          	jalr	-632(ra) # 80003ff8 <_ZL9fibonaccim>
    80004278:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000427c:	00005517          	auipc	a0,0x5
    80004280:	02c50513          	addi	a0,a0,44 # 800092a8 <CONSOLE_STATUS+0x298>
    80004284:	00001097          	auipc	ra,0x1
    80004288:	bd8080e7          	jalr	-1064(ra) # 80004e5c <_Z11printStringPKc>
    8000428c:	00000613          	li	a2,0
    80004290:	00a00593          	li	a1,10
    80004294:	0009051b          	sext.w	a0,s2
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	d74080e7          	jalr	-652(ra) # 8000500c <_Z8printIntiii>
    800042a0:	00005517          	auipc	a0,0x5
    800042a4:	20850513          	addi	a0,a0,520 # 800094a8 <CONSOLE_STATUS+0x498>
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	bb4080e7          	jalr	-1100(ra) # 80004e5c <_Z11printStringPKc>
    800042b0:	0400006f          	j	800042f0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800042b4:	00005517          	auipc	a0,0x5
    800042b8:	fd450513          	addi	a0,a0,-44 # 80009288 <CONSOLE_STATUS+0x278>
    800042bc:	00001097          	auipc	ra,0x1
    800042c0:	ba0080e7          	jalr	-1120(ra) # 80004e5c <_Z11printStringPKc>
    800042c4:	00000613          	li	a2,0
    800042c8:	00a00593          	li	a1,10
    800042cc:	00048513          	mv	a0,s1
    800042d0:	00001097          	auipc	ra,0x1
    800042d4:	d3c080e7          	jalr	-708(ra) # 8000500c <_Z8printIntiii>
    800042d8:	00005517          	auipc	a0,0x5
    800042dc:	1d050513          	addi	a0,a0,464 # 800094a8 <CONSOLE_STATUS+0x498>
    800042e0:	00001097          	auipc	ra,0x1
    800042e4:	b7c080e7          	jalr	-1156(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800042e8:	0014849b          	addiw	s1,s1,1
    800042ec:	0ff4f493          	andi	s1,s1,255
    800042f0:	00500793          	li	a5,5
    800042f4:	fc97f0e3          	bgeu	a5,s1,800042b4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800042f8:	00005517          	auipc	a0,0x5
    800042fc:	f6850513          	addi	a0,a0,-152 # 80009260 <CONSOLE_STATUS+0x250>
    80004300:	00001097          	auipc	ra,0x1
    80004304:	b5c080e7          	jalr	-1188(ra) # 80004e5c <_Z11printStringPKc>
    finishedC = true;
    80004308:	00100793          	li	a5,1
    8000430c:	00007717          	auipc	a4,0x7
    80004310:	42f706a3          	sb	a5,1069(a4) # 8000b739 <_ZL9finishedC>
    thread_dispatch();
    80004314:	ffffd097          	auipc	ra,0xffffd
    80004318:	0c0080e7          	jalr	192(ra) # 800013d4 <_Z15thread_dispatchv>
}
    8000431c:	01813083          	ld	ra,24(sp)
    80004320:	01013403          	ld	s0,16(sp)
    80004324:	00813483          	ld	s1,8(sp)
    80004328:	00013903          	ld	s2,0(sp)
    8000432c:	02010113          	addi	sp,sp,32
    80004330:	00008067          	ret

0000000080004334 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004334:	fe010113          	addi	sp,sp,-32
    80004338:	00113c23          	sd	ra,24(sp)
    8000433c:	00813823          	sd	s0,16(sp)
    80004340:	00913423          	sd	s1,8(sp)
    80004344:	01213023          	sd	s2,0(sp)
    80004348:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000434c:	00000913          	li	s2,0
    80004350:	0380006f          	j	80004388 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004354:	ffffd097          	auipc	ra,0xffffd
    80004358:	080080e7          	jalr	128(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000435c:	00148493          	addi	s1,s1,1
    80004360:	000027b7          	lui	a5,0x2
    80004364:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004368:	0097ee63          	bltu	a5,s1,80004384 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000436c:	00000713          	li	a4,0
    80004370:	000077b7          	lui	a5,0x7
    80004374:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004378:	fce7eee3          	bltu	a5,a4,80004354 <_ZL11workerBodyBPv+0x20>
    8000437c:	00170713          	addi	a4,a4,1
    80004380:	ff1ff06f          	j	80004370 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004384:	00190913          	addi	s2,s2,1
    80004388:	00f00793          	li	a5,15
    8000438c:	0527e063          	bltu	a5,s2,800043cc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004390:	00005517          	auipc	a0,0x5
    80004394:	ee050513          	addi	a0,a0,-288 # 80009270 <CONSOLE_STATUS+0x260>
    80004398:	00001097          	auipc	ra,0x1
    8000439c:	ac4080e7          	jalr	-1340(ra) # 80004e5c <_Z11printStringPKc>
    800043a0:	00000613          	li	a2,0
    800043a4:	00a00593          	li	a1,10
    800043a8:	0009051b          	sext.w	a0,s2
    800043ac:	00001097          	auipc	ra,0x1
    800043b0:	c60080e7          	jalr	-928(ra) # 8000500c <_Z8printIntiii>
    800043b4:	00005517          	auipc	a0,0x5
    800043b8:	0f450513          	addi	a0,a0,244 # 800094a8 <CONSOLE_STATUS+0x498>
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	aa0080e7          	jalr	-1376(ra) # 80004e5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800043c4:	00000493          	li	s1,0
    800043c8:	f99ff06f          	j	80004360 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800043cc:	00005517          	auipc	a0,0x5
    800043d0:	eac50513          	addi	a0,a0,-340 # 80009278 <CONSOLE_STATUS+0x268>
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	a88080e7          	jalr	-1400(ra) # 80004e5c <_Z11printStringPKc>
    finishedB = true;
    800043dc:	00100793          	li	a5,1
    800043e0:	00007717          	auipc	a4,0x7
    800043e4:	34f70d23          	sb	a5,858(a4) # 8000b73a <_ZL9finishedB>
    thread_dispatch();
    800043e8:	ffffd097          	auipc	ra,0xffffd
    800043ec:	fec080e7          	jalr	-20(ra) # 800013d4 <_Z15thread_dispatchv>
}
    800043f0:	01813083          	ld	ra,24(sp)
    800043f4:	01013403          	ld	s0,16(sp)
    800043f8:	00813483          	ld	s1,8(sp)
    800043fc:	00013903          	ld	s2,0(sp)
    80004400:	02010113          	addi	sp,sp,32
    80004404:	00008067          	ret

0000000080004408 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004408:	fe010113          	addi	sp,sp,-32
    8000440c:	00113c23          	sd	ra,24(sp)
    80004410:	00813823          	sd	s0,16(sp)
    80004414:	00913423          	sd	s1,8(sp)
    80004418:	01213023          	sd	s2,0(sp)
    8000441c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004420:	00000913          	li	s2,0
    80004424:	0380006f          	j	8000445c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004428:	ffffd097          	auipc	ra,0xffffd
    8000442c:	fac080e7          	jalr	-84(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004430:	00148493          	addi	s1,s1,1
    80004434:	000027b7          	lui	a5,0x2
    80004438:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000443c:	0097ee63          	bltu	a5,s1,80004458 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004440:	00000713          	li	a4,0
    80004444:	000077b7          	lui	a5,0x7
    80004448:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000444c:	fce7eee3          	bltu	a5,a4,80004428 <_ZL11workerBodyAPv+0x20>
    80004450:	00170713          	addi	a4,a4,1
    80004454:	ff1ff06f          	j	80004444 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004458:	00190913          	addi	s2,s2,1
    8000445c:	00900793          	li	a5,9
    80004460:	0527e063          	bltu	a5,s2,800044a0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004464:	00005517          	auipc	a0,0x5
    80004468:	df450513          	addi	a0,a0,-524 # 80009258 <CONSOLE_STATUS+0x248>
    8000446c:	00001097          	auipc	ra,0x1
    80004470:	9f0080e7          	jalr	-1552(ra) # 80004e5c <_Z11printStringPKc>
    80004474:	00000613          	li	a2,0
    80004478:	00a00593          	li	a1,10
    8000447c:	0009051b          	sext.w	a0,s2
    80004480:	00001097          	auipc	ra,0x1
    80004484:	b8c080e7          	jalr	-1140(ra) # 8000500c <_Z8printIntiii>
    80004488:	00005517          	auipc	a0,0x5
    8000448c:	02050513          	addi	a0,a0,32 # 800094a8 <CONSOLE_STATUS+0x498>
    80004490:	00001097          	auipc	ra,0x1
    80004494:	9cc080e7          	jalr	-1588(ra) # 80004e5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004498:	00000493          	li	s1,0
    8000449c:	f99ff06f          	j	80004434 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800044a0:	00005517          	auipc	a0,0x5
    800044a4:	dc050513          	addi	a0,a0,-576 # 80009260 <CONSOLE_STATUS+0x250>
    800044a8:	00001097          	auipc	ra,0x1
    800044ac:	9b4080e7          	jalr	-1612(ra) # 80004e5c <_Z11printStringPKc>
    finishedA = true;
    800044b0:	00100793          	li	a5,1
    800044b4:	00007717          	auipc	a4,0x7
    800044b8:	28f703a3          	sb	a5,647(a4) # 8000b73b <_ZL9finishedA>
}
    800044bc:	01813083          	ld	ra,24(sp)
    800044c0:	01013403          	ld	s0,16(sp)
    800044c4:	00813483          	ld	s1,8(sp)
    800044c8:	00013903          	ld	s2,0(sp)
    800044cc:	02010113          	addi	sp,sp,32
    800044d0:	00008067          	ret

00000000800044d4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800044d4:	fd010113          	addi	sp,sp,-48
    800044d8:	02113423          	sd	ra,40(sp)
    800044dc:	02813023          	sd	s0,32(sp)
    800044e0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800044e4:	00000613          	li	a2,0
    800044e8:	00000597          	auipc	a1,0x0
    800044ec:	f2058593          	addi	a1,a1,-224 # 80004408 <_ZL11workerBodyAPv>
    800044f0:	fd040513          	addi	a0,s0,-48
    800044f4:	ffffd097          	auipc	ra,0xffffd
    800044f8:	e24080e7          	jalr	-476(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800044fc:	00005517          	auipc	a0,0x5
    80004500:	df450513          	addi	a0,a0,-524 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004504:	00001097          	auipc	ra,0x1
    80004508:	958080e7          	jalr	-1704(ra) # 80004e5c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000450c:	00000613          	li	a2,0
    80004510:	00000597          	auipc	a1,0x0
    80004514:	e2458593          	addi	a1,a1,-476 # 80004334 <_ZL11workerBodyBPv>
    80004518:	fd840513          	addi	a0,s0,-40
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	dfc080e7          	jalr	-516(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004524:	00005517          	auipc	a0,0x5
    80004528:	de450513          	addi	a0,a0,-540 # 80009308 <CONSOLE_STATUS+0x2f8>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	930080e7          	jalr	-1744(ra) # 80004e5c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004534:	00000613          	li	a2,0
    80004538:	00000597          	auipc	a1,0x0
    8000453c:	c7c58593          	addi	a1,a1,-900 # 800041b4 <_ZL11workerBodyCPv>
    80004540:	fe040513          	addi	a0,s0,-32
    80004544:	ffffd097          	auipc	ra,0xffffd
    80004548:	dd4080e7          	jalr	-556(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000454c:	00005517          	auipc	a0,0x5
    80004550:	dd450513          	addi	a0,a0,-556 # 80009320 <CONSOLE_STATUS+0x310>
    80004554:	00001097          	auipc	ra,0x1
    80004558:	908080e7          	jalr	-1784(ra) # 80004e5c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000455c:	00000613          	li	a2,0
    80004560:	00000597          	auipc	a1,0x0
    80004564:	b0c58593          	addi	a1,a1,-1268 # 8000406c <_ZL11workerBodyDPv>
    80004568:	fe840513          	addi	a0,s0,-24
    8000456c:	ffffd097          	auipc	ra,0xffffd
    80004570:	dac080e7          	jalr	-596(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004574:	00005517          	auipc	a0,0x5
    80004578:	dc450513          	addi	a0,a0,-572 # 80009338 <CONSOLE_STATUS+0x328>
    8000457c:	00001097          	auipc	ra,0x1
    80004580:	8e0080e7          	jalr	-1824(ra) # 80004e5c <_Z11printStringPKc>
    80004584:	00c0006f          	j	80004590 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004588:	ffffd097          	auipc	ra,0xffffd
    8000458c:	e4c080e7          	jalr	-436(ra) # 800013d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004590:	00007797          	auipc	a5,0x7
    80004594:	1ab7c783          	lbu	a5,427(a5) # 8000b73b <_ZL9finishedA>
    80004598:	fe0788e3          	beqz	a5,80004588 <_Z18Threads_C_API_testv+0xb4>
    8000459c:	00007797          	auipc	a5,0x7
    800045a0:	19e7c783          	lbu	a5,414(a5) # 8000b73a <_ZL9finishedB>
    800045a4:	fe0782e3          	beqz	a5,80004588 <_Z18Threads_C_API_testv+0xb4>
    800045a8:	00007797          	auipc	a5,0x7
    800045ac:	1917c783          	lbu	a5,401(a5) # 8000b739 <_ZL9finishedC>
    800045b0:	fc078ce3          	beqz	a5,80004588 <_Z18Threads_C_API_testv+0xb4>
    800045b4:	00007797          	auipc	a5,0x7
    800045b8:	1847c783          	lbu	a5,388(a5) # 8000b738 <_ZL9finishedD>
    800045bc:	fc0786e3          	beqz	a5,80004588 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800045c0:	02813083          	ld	ra,40(sp)
    800045c4:	02013403          	ld	s0,32(sp)
    800045c8:	03010113          	addi	sp,sp,48
    800045cc:	00008067          	ret

00000000800045d0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800045d0:	fd010113          	addi	sp,sp,-48
    800045d4:	02113423          	sd	ra,40(sp)
    800045d8:	02813023          	sd	s0,32(sp)
    800045dc:	00913c23          	sd	s1,24(sp)
    800045e0:	01213823          	sd	s2,16(sp)
    800045e4:	01313423          	sd	s3,8(sp)
    800045e8:	03010413          	addi	s0,sp,48
    800045ec:	00050993          	mv	s3,a0
    800045f0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800045f4:	00000913          	li	s2,0
    800045f8:	00c0006f          	j	80004604 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800045fc:	ffffd097          	auipc	ra,0xffffd
    80004600:	794080e7          	jalr	1940(ra) # 80001d90 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004604:	ffffd097          	auipc	ra,0xffffd
    80004608:	f10080e7          	jalr	-240(ra) # 80001514 <_Z4getcv>
    8000460c:	0005059b          	sext.w	a1,a0
    80004610:	01b00793          	li	a5,27
    80004614:	02f58a63          	beq	a1,a5,80004648 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004618:	0084b503          	ld	a0,8(s1)
    8000461c:	00001097          	auipc	ra,0x1
    80004620:	c64080e7          	jalr	-924(ra) # 80005280 <_ZN9BufferCPP3putEi>
        i++;
    80004624:	0019071b          	addiw	a4,s2,1
    80004628:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000462c:	0004a683          	lw	a3,0(s1)
    80004630:	0026979b          	slliw	a5,a3,0x2
    80004634:	00d787bb          	addw	a5,a5,a3
    80004638:	0017979b          	slliw	a5,a5,0x1
    8000463c:	02f767bb          	remw	a5,a4,a5
    80004640:	fc0792e3          	bnez	a5,80004604 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004644:	fb9ff06f          	j	800045fc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004648:	00100793          	li	a5,1
    8000464c:	00007717          	auipc	a4,0x7
    80004650:	0ef72a23          	sw	a5,244(a4) # 8000b740 <_ZL9threadEnd>
    td->buffer->put('!');
    80004654:	0209b783          	ld	a5,32(s3)
    80004658:	02100593          	li	a1,33
    8000465c:	0087b503          	ld	a0,8(a5)
    80004660:	00001097          	auipc	ra,0x1
    80004664:	c20080e7          	jalr	-992(ra) # 80005280 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004668:	0104b503          	ld	a0,16(s1)
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	864080e7          	jalr	-1948(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
}
    80004674:	02813083          	ld	ra,40(sp)
    80004678:	02013403          	ld	s0,32(sp)
    8000467c:	01813483          	ld	s1,24(sp)
    80004680:	01013903          	ld	s2,16(sp)
    80004684:	00813983          	ld	s3,8(sp)
    80004688:	03010113          	addi	sp,sp,48
    8000468c:	00008067          	ret

0000000080004690 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004690:	fe010113          	addi	sp,sp,-32
    80004694:	00113c23          	sd	ra,24(sp)
    80004698:	00813823          	sd	s0,16(sp)
    8000469c:	00913423          	sd	s1,8(sp)
    800046a0:	01213023          	sd	s2,0(sp)
    800046a4:	02010413          	addi	s0,sp,32
    800046a8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800046ac:	00000913          	li	s2,0
    800046b0:	00c0006f          	j	800046bc <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800046b4:	ffffd097          	auipc	ra,0xffffd
    800046b8:	6dc080e7          	jalr	1756(ra) # 80001d90 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800046bc:	00007797          	auipc	a5,0x7
    800046c0:	0847a783          	lw	a5,132(a5) # 8000b740 <_ZL9threadEnd>
    800046c4:	02079e63          	bnez	a5,80004700 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800046c8:	0004a583          	lw	a1,0(s1)
    800046cc:	0305859b          	addiw	a1,a1,48
    800046d0:	0084b503          	ld	a0,8(s1)
    800046d4:	00001097          	auipc	ra,0x1
    800046d8:	bac080e7          	jalr	-1108(ra) # 80005280 <_ZN9BufferCPP3putEi>
        i++;
    800046dc:	0019071b          	addiw	a4,s2,1
    800046e0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800046e4:	0004a683          	lw	a3,0(s1)
    800046e8:	0026979b          	slliw	a5,a3,0x2
    800046ec:	00d787bb          	addw	a5,a5,a3
    800046f0:	0017979b          	slliw	a5,a5,0x1
    800046f4:	02f767bb          	remw	a5,a4,a5
    800046f8:	fc0792e3          	bnez	a5,800046bc <_ZN12ProducerSync8producerEPv+0x2c>
    800046fc:	fb9ff06f          	j	800046b4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004700:	0104b503          	ld	a0,16(s1)
    80004704:	ffffd097          	auipc	ra,0xffffd
    80004708:	7cc080e7          	jalr	1996(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
}
    8000470c:	01813083          	ld	ra,24(sp)
    80004710:	01013403          	ld	s0,16(sp)
    80004714:	00813483          	ld	s1,8(sp)
    80004718:	00013903          	ld	s2,0(sp)
    8000471c:	02010113          	addi	sp,sp,32
    80004720:	00008067          	ret

0000000080004724 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004724:	fd010113          	addi	sp,sp,-48
    80004728:	02113423          	sd	ra,40(sp)
    8000472c:	02813023          	sd	s0,32(sp)
    80004730:	00913c23          	sd	s1,24(sp)
    80004734:	01213823          	sd	s2,16(sp)
    80004738:	01313423          	sd	s3,8(sp)
    8000473c:	01413023          	sd	s4,0(sp)
    80004740:	03010413          	addi	s0,sp,48
    80004744:	00050993          	mv	s3,a0
    80004748:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000474c:	00000a13          	li	s4,0
    80004750:	01c0006f          	j	8000476c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	63c080e7          	jalr	1596(ra) # 80001d90 <_ZN6Thread8dispatchEv>
    8000475c:	0500006f          	j	800047ac <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004760:	00a00513          	li	a0,10
    80004764:	ffffd097          	auipc	ra,0xffffd
    80004768:	de4080e7          	jalr	-540(ra) # 80001548 <_Z4putcc>
    while (!threadEnd) {
    8000476c:	00007797          	auipc	a5,0x7
    80004770:	fd47a783          	lw	a5,-44(a5) # 8000b740 <_ZL9threadEnd>
    80004774:	06079263          	bnez	a5,800047d8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004778:	00893503          	ld	a0,8(s2)
    8000477c:	00001097          	auipc	ra,0x1
    80004780:	b94080e7          	jalr	-1132(ra) # 80005310 <_ZN9BufferCPP3getEv>
        i++;
    80004784:	001a049b          	addiw	s1,s4,1
    80004788:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000478c:	0ff57513          	andi	a0,a0,255
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	db8080e7          	jalr	-584(ra) # 80001548 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004798:	00092703          	lw	a4,0(s2)
    8000479c:	0027179b          	slliw	a5,a4,0x2
    800047a0:	00e787bb          	addw	a5,a5,a4
    800047a4:	02f4e7bb          	remw	a5,s1,a5
    800047a8:	fa0786e3          	beqz	a5,80004754 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800047ac:	05000793          	li	a5,80
    800047b0:	02f4e4bb          	remw	s1,s1,a5
    800047b4:	fa049ce3          	bnez	s1,8000476c <_ZN12ConsumerSync8consumerEPv+0x48>
    800047b8:	fa9ff06f          	j	80004760 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800047bc:	0209b783          	ld	a5,32(s3)
    800047c0:	0087b503          	ld	a0,8(a5)
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	b4c080e7          	jalr	-1204(ra) # 80005310 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800047cc:	0ff57513          	andi	a0,a0,255
    800047d0:	ffffd097          	auipc	ra,0xffffd
    800047d4:	7c0080e7          	jalr	1984(ra) # 80001f90 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800047d8:	0209b783          	ld	a5,32(s3)
    800047dc:	0087b503          	ld	a0,8(a5)
    800047e0:	00001097          	auipc	ra,0x1
    800047e4:	bbc080e7          	jalr	-1092(ra) # 8000539c <_ZN9BufferCPP6getCntEv>
    800047e8:	fca04ae3          	bgtz	a0,800047bc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800047ec:	01093503          	ld	a0,16(s2)
    800047f0:	ffffd097          	auipc	ra,0xffffd
    800047f4:	6e0080e7          	jalr	1760(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
}
    800047f8:	02813083          	ld	ra,40(sp)
    800047fc:	02013403          	ld	s0,32(sp)
    80004800:	01813483          	ld	s1,24(sp)
    80004804:	01013903          	ld	s2,16(sp)
    80004808:	00813983          	ld	s3,8(sp)
    8000480c:	00013a03          	ld	s4,0(sp)
    80004810:	03010113          	addi	sp,sp,48
    80004814:	00008067          	ret

0000000080004818 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004818:	f8010113          	addi	sp,sp,-128
    8000481c:	06113c23          	sd	ra,120(sp)
    80004820:	06813823          	sd	s0,112(sp)
    80004824:	06913423          	sd	s1,104(sp)
    80004828:	07213023          	sd	s2,96(sp)
    8000482c:	05313c23          	sd	s3,88(sp)
    80004830:	05413823          	sd	s4,80(sp)
    80004834:	05513423          	sd	s5,72(sp)
    80004838:	05613023          	sd	s6,64(sp)
    8000483c:	03713c23          	sd	s7,56(sp)
    80004840:	03813823          	sd	s8,48(sp)
    80004844:	03913423          	sd	s9,40(sp)
    80004848:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000484c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004850:	00005517          	auipc	a0,0x5
    80004854:	92050513          	addi	a0,a0,-1760 # 80009170 <CONSOLE_STATUS+0x160>
    80004858:	00000097          	auipc	ra,0x0
    8000485c:	604080e7          	jalr	1540(ra) # 80004e5c <_Z11printStringPKc>
    getString(input, 30);
    80004860:	01e00593          	li	a1,30
    80004864:	f8040493          	addi	s1,s0,-128
    80004868:	00048513          	mv	a0,s1
    8000486c:	00000097          	auipc	ra,0x0
    80004870:	678080e7          	jalr	1656(ra) # 80004ee4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004874:	00048513          	mv	a0,s1
    80004878:	00000097          	auipc	ra,0x0
    8000487c:	744080e7          	jalr	1860(ra) # 80004fbc <_Z11stringToIntPKc>
    80004880:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004884:	00005517          	auipc	a0,0x5
    80004888:	90c50513          	addi	a0,a0,-1780 # 80009190 <CONSOLE_STATUS+0x180>
    8000488c:	00000097          	auipc	ra,0x0
    80004890:	5d0080e7          	jalr	1488(ra) # 80004e5c <_Z11printStringPKc>
    getString(input, 30);
    80004894:	01e00593          	li	a1,30
    80004898:	00048513          	mv	a0,s1
    8000489c:	00000097          	auipc	ra,0x0
    800048a0:	648080e7          	jalr	1608(ra) # 80004ee4 <_Z9getStringPci>
    n = stringToInt(input);
    800048a4:	00048513          	mv	a0,s1
    800048a8:	00000097          	auipc	ra,0x0
    800048ac:	714080e7          	jalr	1812(ra) # 80004fbc <_Z11stringToIntPKc>
    800048b0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800048b4:	00005517          	auipc	a0,0x5
    800048b8:	8fc50513          	addi	a0,a0,-1796 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800048bc:	00000097          	auipc	ra,0x0
    800048c0:	5a0080e7          	jalr	1440(ra) # 80004e5c <_Z11printStringPKc>
    800048c4:	00000613          	li	a2,0
    800048c8:	00a00593          	li	a1,10
    800048cc:	00090513          	mv	a0,s2
    800048d0:	00000097          	auipc	ra,0x0
    800048d4:	73c080e7          	jalr	1852(ra) # 8000500c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800048d8:	00005517          	auipc	a0,0x5
    800048dc:	8f050513          	addi	a0,a0,-1808 # 800091c8 <CONSOLE_STATUS+0x1b8>
    800048e0:	00000097          	auipc	ra,0x0
    800048e4:	57c080e7          	jalr	1404(ra) # 80004e5c <_Z11printStringPKc>
    800048e8:	00000613          	li	a2,0
    800048ec:	00a00593          	li	a1,10
    800048f0:	00048513          	mv	a0,s1
    800048f4:	00000097          	auipc	ra,0x0
    800048f8:	718080e7          	jalr	1816(ra) # 8000500c <_Z8printIntiii>
    printString(".\n");
    800048fc:	00005517          	auipc	a0,0x5
    80004900:	8e450513          	addi	a0,a0,-1820 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80004904:	00000097          	auipc	ra,0x0
    80004908:	558080e7          	jalr	1368(ra) # 80004e5c <_Z11printStringPKc>
    if(threadNum > n) {
    8000490c:	0324c463          	blt	s1,s2,80004934 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004910:	03205c63          	blez	s2,80004948 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004914:	03800513          	li	a0,56
    80004918:	ffffd097          	auipc	ra,0xffffd
    8000491c:	308080e7          	jalr	776(ra) # 80001c20 <_Znwm>
    80004920:	00050a93          	mv	s5,a0
    80004924:	00048593          	mv	a1,s1
    80004928:	00001097          	auipc	ra,0x1
    8000492c:	804080e7          	jalr	-2044(ra) # 8000512c <_ZN9BufferCPPC1Ei>
    80004930:	0300006f          	j	80004960 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004934:	00005517          	auipc	a0,0x5
    80004938:	8b450513          	addi	a0,a0,-1868 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000493c:	00000097          	auipc	ra,0x0
    80004940:	520080e7          	jalr	1312(ra) # 80004e5c <_Z11printStringPKc>
        return;
    80004944:	0140006f          	j	80004958 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004948:	00005517          	auipc	a0,0x5
    8000494c:	8e050513          	addi	a0,a0,-1824 # 80009228 <CONSOLE_STATUS+0x218>
    80004950:	00000097          	auipc	ra,0x0
    80004954:	50c080e7          	jalr	1292(ra) # 80004e5c <_Z11printStringPKc>
        return;
    80004958:	000b8113          	mv	sp,s7
    8000495c:	2380006f          	j	80004b94 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004960:	01000513          	li	a0,16
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	2bc080e7          	jalr	700(ra) # 80001c20 <_Znwm>
    8000496c:	00050493          	mv	s1,a0
    80004970:	00000593          	li	a1,0
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	4f4080e7          	jalr	1268(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    8000497c:	00007797          	auipc	a5,0x7
    80004980:	dc97b623          	sd	s1,-564(a5) # 8000b748 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004984:	00391793          	slli	a5,s2,0x3
    80004988:	00f78793          	addi	a5,a5,15
    8000498c:	ff07f793          	andi	a5,a5,-16
    80004990:	40f10133          	sub	sp,sp,a5
    80004994:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004998:	0019071b          	addiw	a4,s2,1
    8000499c:	00171793          	slli	a5,a4,0x1
    800049a0:	00e787b3          	add	a5,a5,a4
    800049a4:	00379793          	slli	a5,a5,0x3
    800049a8:	00f78793          	addi	a5,a5,15
    800049ac:	ff07f793          	andi	a5,a5,-16
    800049b0:	40f10133          	sub	sp,sp,a5
    800049b4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800049b8:	00191c13          	slli	s8,s2,0x1
    800049bc:	012c07b3          	add	a5,s8,s2
    800049c0:	00379793          	slli	a5,a5,0x3
    800049c4:	00fa07b3          	add	a5,s4,a5
    800049c8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800049cc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800049d0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800049d4:	02800513          	li	a0,40
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	248080e7          	jalr	584(ra) # 80001c20 <_Znwm>
    800049e0:	00050b13          	mv	s6,a0
    800049e4:	012c0c33          	add	s8,s8,s2
    800049e8:	003c1c13          	slli	s8,s8,0x3
    800049ec:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	368080e7          	jalr	872(ra) # 80001d58 <_ZN6ThreadC1Ev>
    800049f8:	00007797          	auipc	a5,0x7
    800049fc:	c1078793          	addi	a5,a5,-1008 # 8000b608 <_ZTV12ConsumerSync+0x10>
    80004a00:	00fb3023          	sd	a5,0(s6)
    80004a04:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004a08:	000b0513          	mv	a0,s6
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	3ac080e7          	jalr	940(ra) # 80001db8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004a14:	00000493          	li	s1,0
    80004a18:	0380006f          	j	80004a50 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004a1c:	00007797          	auipc	a5,0x7
    80004a20:	bc478793          	addi	a5,a5,-1084 # 8000b5e0 <_ZTV12ProducerSync+0x10>
    80004a24:	00fcb023          	sd	a5,0(s9)
    80004a28:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004a2c:	00349793          	slli	a5,s1,0x3
    80004a30:	00f987b3          	add	a5,s3,a5
    80004a34:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004a38:	00349793          	slli	a5,s1,0x3
    80004a3c:	00f987b3          	add	a5,s3,a5
    80004a40:	0007b503          	ld	a0,0(a5)
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	374080e7          	jalr	884(ra) # 80001db8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004a4c:	0014849b          	addiw	s1,s1,1
    80004a50:	0b24d063          	bge	s1,s2,80004af0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004a54:	00149793          	slli	a5,s1,0x1
    80004a58:	009787b3          	add	a5,a5,s1
    80004a5c:	00379793          	slli	a5,a5,0x3
    80004a60:	00fa07b3          	add	a5,s4,a5
    80004a64:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004a68:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004a6c:	00007717          	auipc	a4,0x7
    80004a70:	cdc73703          	ld	a4,-804(a4) # 8000b748 <_ZL10waitForAll>
    80004a74:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004a78:	02905863          	blez	s1,80004aa8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004a7c:	02800513          	li	a0,40
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	1a0080e7          	jalr	416(ra) # 80001c20 <_Znwm>
    80004a88:	00050c93          	mv	s9,a0
    80004a8c:	00149c13          	slli	s8,s1,0x1
    80004a90:	009c0c33          	add	s8,s8,s1
    80004a94:	003c1c13          	slli	s8,s8,0x3
    80004a98:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004a9c:	ffffd097          	auipc	ra,0xffffd
    80004aa0:	2bc080e7          	jalr	700(ra) # 80001d58 <_ZN6ThreadC1Ev>
    80004aa4:	f79ff06f          	j	80004a1c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004aa8:	02800513          	li	a0,40
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	174080e7          	jalr	372(ra) # 80001c20 <_Znwm>
    80004ab4:	00050c93          	mv	s9,a0
    80004ab8:	00149c13          	slli	s8,s1,0x1
    80004abc:	009c0c33          	add	s8,s8,s1
    80004ac0:	003c1c13          	slli	s8,s8,0x3
    80004ac4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	290080e7          	jalr	656(ra) # 80001d58 <_ZN6ThreadC1Ev>
    80004ad0:	00007797          	auipc	a5,0x7
    80004ad4:	ae878793          	addi	a5,a5,-1304 # 8000b5b8 <_ZTV16ProducerKeyboard+0x10>
    80004ad8:	00fcb023          	sd	a5,0(s9)
    80004adc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004ae0:	00349793          	slli	a5,s1,0x3
    80004ae4:	00f987b3          	add	a5,s3,a5
    80004ae8:	0197b023          	sd	s9,0(a5)
    80004aec:	f4dff06f          	j	80004a38 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004af0:	ffffd097          	auipc	ra,0xffffd
    80004af4:	2a0080e7          	jalr	672(ra) # 80001d90 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004af8:	00000493          	li	s1,0
    80004afc:	00994e63          	blt	s2,s1,80004b18 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004b00:	00007517          	auipc	a0,0x7
    80004b04:	c4853503          	ld	a0,-952(a0) # 8000b748 <_ZL10waitForAll>
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	39c080e7          	jalr	924(ra) # 80001ea4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004b10:	0014849b          	addiw	s1,s1,1
    80004b14:	fe9ff06f          	j	80004afc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004b18:	00000493          	li	s1,0
    80004b1c:	0080006f          	j	80004b24 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004b20:	0014849b          	addiw	s1,s1,1
    80004b24:	0324d263          	bge	s1,s2,80004b48 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004b28:	00349793          	slli	a5,s1,0x3
    80004b2c:	00f987b3          	add	a5,s3,a5
    80004b30:	0007b503          	ld	a0,0(a5)
    80004b34:	fe0506e3          	beqz	a0,80004b20 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004b38:	00053783          	ld	a5,0(a0)
    80004b3c:	0087b783          	ld	a5,8(a5)
    80004b40:	000780e7          	jalr	a5
    80004b44:	fddff06f          	j	80004b20 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004b48:	000b0a63          	beqz	s6,80004b5c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004b4c:	000b3783          	ld	a5,0(s6)
    80004b50:	0087b783          	ld	a5,8(a5)
    80004b54:	000b0513          	mv	a0,s6
    80004b58:	000780e7          	jalr	a5
    delete waitForAll;
    80004b5c:	00007517          	auipc	a0,0x7
    80004b60:	bec53503          	ld	a0,-1044(a0) # 8000b748 <_ZL10waitForAll>
    80004b64:	00050863          	beqz	a0,80004b74 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004b68:	00053783          	ld	a5,0(a0)
    80004b6c:	0087b783          	ld	a5,8(a5)
    80004b70:	000780e7          	jalr	a5
    delete buffer;
    80004b74:	000a8e63          	beqz	s5,80004b90 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004b78:	000a8513          	mv	a0,s5
    80004b7c:	00001097          	auipc	ra,0x1
    80004b80:	8a8080e7          	jalr	-1880(ra) # 80005424 <_ZN9BufferCPPD1Ev>
    80004b84:	000a8513          	mv	a0,s5
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	0e8080e7          	jalr	232(ra) # 80001c70 <_ZdlPv>
    80004b90:	000b8113          	mv	sp,s7

}
    80004b94:	f8040113          	addi	sp,s0,-128
    80004b98:	07813083          	ld	ra,120(sp)
    80004b9c:	07013403          	ld	s0,112(sp)
    80004ba0:	06813483          	ld	s1,104(sp)
    80004ba4:	06013903          	ld	s2,96(sp)
    80004ba8:	05813983          	ld	s3,88(sp)
    80004bac:	05013a03          	ld	s4,80(sp)
    80004bb0:	04813a83          	ld	s5,72(sp)
    80004bb4:	04013b03          	ld	s6,64(sp)
    80004bb8:	03813b83          	ld	s7,56(sp)
    80004bbc:	03013c03          	ld	s8,48(sp)
    80004bc0:	02813c83          	ld	s9,40(sp)
    80004bc4:	08010113          	addi	sp,sp,128
    80004bc8:	00008067          	ret
    80004bcc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004bd0:	000a8513          	mv	a0,s5
    80004bd4:	ffffd097          	auipc	ra,0xffffd
    80004bd8:	09c080e7          	jalr	156(ra) # 80001c70 <_ZdlPv>
    80004bdc:	00048513          	mv	a0,s1
    80004be0:	00008097          	auipc	ra,0x8
    80004be4:	c48080e7          	jalr	-952(ra) # 8000c828 <_Unwind_Resume>
    80004be8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004bec:	00048513          	mv	a0,s1
    80004bf0:	ffffd097          	auipc	ra,0xffffd
    80004bf4:	080080e7          	jalr	128(ra) # 80001c70 <_ZdlPv>
    80004bf8:	00090513          	mv	a0,s2
    80004bfc:	00008097          	auipc	ra,0x8
    80004c00:	c2c080e7          	jalr	-980(ra) # 8000c828 <_Unwind_Resume>
    80004c04:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004c08:	000b0513          	mv	a0,s6
    80004c0c:	ffffd097          	auipc	ra,0xffffd
    80004c10:	064080e7          	jalr	100(ra) # 80001c70 <_ZdlPv>
    80004c14:	00048513          	mv	a0,s1
    80004c18:	00008097          	auipc	ra,0x8
    80004c1c:	c10080e7          	jalr	-1008(ra) # 8000c828 <_Unwind_Resume>
    80004c20:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004c24:	000c8513          	mv	a0,s9
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	048080e7          	jalr	72(ra) # 80001c70 <_ZdlPv>
    80004c30:	00048513          	mv	a0,s1
    80004c34:	00008097          	auipc	ra,0x8
    80004c38:	bf4080e7          	jalr	-1036(ra) # 8000c828 <_Unwind_Resume>
    80004c3c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004c40:	000c8513          	mv	a0,s9
    80004c44:	ffffd097          	auipc	ra,0xffffd
    80004c48:	02c080e7          	jalr	44(ra) # 80001c70 <_ZdlPv>
    80004c4c:	00048513          	mv	a0,s1
    80004c50:	00008097          	auipc	ra,0x8
    80004c54:	bd8080e7          	jalr	-1064(ra) # 8000c828 <_Unwind_Resume>

0000000080004c58 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004c58:	ff010113          	addi	sp,sp,-16
    80004c5c:	00113423          	sd	ra,8(sp)
    80004c60:	00813023          	sd	s0,0(sp)
    80004c64:	01010413          	addi	s0,sp,16
    80004c68:	00007797          	auipc	a5,0x7
    80004c6c:	9a078793          	addi	a5,a5,-1632 # 8000b608 <_ZTV12ConsumerSync+0x10>
    80004c70:	00f53023          	sd	a5,0(a0)
    80004c74:	ffffd097          	auipc	ra,0xffffd
    80004c78:	f5c080e7          	jalr	-164(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80004c7c:	00813083          	ld	ra,8(sp)
    80004c80:	00013403          	ld	s0,0(sp)
    80004c84:	01010113          	addi	sp,sp,16
    80004c88:	00008067          	ret

0000000080004c8c <_ZN12ConsumerSyncD0Ev>:
    80004c8c:	fe010113          	addi	sp,sp,-32
    80004c90:	00113c23          	sd	ra,24(sp)
    80004c94:	00813823          	sd	s0,16(sp)
    80004c98:	00913423          	sd	s1,8(sp)
    80004c9c:	02010413          	addi	s0,sp,32
    80004ca0:	00050493          	mv	s1,a0
    80004ca4:	00007797          	auipc	a5,0x7
    80004ca8:	96478793          	addi	a5,a5,-1692 # 8000b608 <_ZTV12ConsumerSync+0x10>
    80004cac:	00f53023          	sd	a5,0(a0)
    80004cb0:	ffffd097          	auipc	ra,0xffffd
    80004cb4:	f20080e7          	jalr	-224(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80004cb8:	00048513          	mv	a0,s1
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	fb4080e7          	jalr	-76(ra) # 80001c70 <_ZdlPv>
    80004cc4:	01813083          	ld	ra,24(sp)
    80004cc8:	01013403          	ld	s0,16(sp)
    80004ccc:	00813483          	ld	s1,8(sp)
    80004cd0:	02010113          	addi	sp,sp,32
    80004cd4:	00008067          	ret

0000000080004cd8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004cd8:	ff010113          	addi	sp,sp,-16
    80004cdc:	00113423          	sd	ra,8(sp)
    80004ce0:	00813023          	sd	s0,0(sp)
    80004ce4:	01010413          	addi	s0,sp,16
    80004ce8:	00007797          	auipc	a5,0x7
    80004cec:	8f878793          	addi	a5,a5,-1800 # 8000b5e0 <_ZTV12ProducerSync+0x10>
    80004cf0:	00f53023          	sd	a5,0(a0)
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	edc080e7          	jalr	-292(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80004cfc:	00813083          	ld	ra,8(sp)
    80004d00:	00013403          	ld	s0,0(sp)
    80004d04:	01010113          	addi	sp,sp,16
    80004d08:	00008067          	ret

0000000080004d0c <_ZN12ProducerSyncD0Ev>:
    80004d0c:	fe010113          	addi	sp,sp,-32
    80004d10:	00113c23          	sd	ra,24(sp)
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00913423          	sd	s1,8(sp)
    80004d1c:	02010413          	addi	s0,sp,32
    80004d20:	00050493          	mv	s1,a0
    80004d24:	00007797          	auipc	a5,0x7
    80004d28:	8bc78793          	addi	a5,a5,-1860 # 8000b5e0 <_ZTV12ProducerSync+0x10>
    80004d2c:	00f53023          	sd	a5,0(a0)
    80004d30:	ffffd097          	auipc	ra,0xffffd
    80004d34:	ea0080e7          	jalr	-352(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80004d38:	00048513          	mv	a0,s1
    80004d3c:	ffffd097          	auipc	ra,0xffffd
    80004d40:	f34080e7          	jalr	-204(ra) # 80001c70 <_ZdlPv>
    80004d44:	01813083          	ld	ra,24(sp)
    80004d48:	01013403          	ld	s0,16(sp)
    80004d4c:	00813483          	ld	s1,8(sp)
    80004d50:	02010113          	addi	sp,sp,32
    80004d54:	00008067          	ret

0000000080004d58 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004d58:	ff010113          	addi	sp,sp,-16
    80004d5c:	00113423          	sd	ra,8(sp)
    80004d60:	00813023          	sd	s0,0(sp)
    80004d64:	01010413          	addi	s0,sp,16
    80004d68:	00007797          	auipc	a5,0x7
    80004d6c:	85078793          	addi	a5,a5,-1968 # 8000b5b8 <_ZTV16ProducerKeyboard+0x10>
    80004d70:	00f53023          	sd	a5,0(a0)
    80004d74:	ffffd097          	auipc	ra,0xffffd
    80004d78:	e5c080e7          	jalr	-420(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80004d7c:	00813083          	ld	ra,8(sp)
    80004d80:	00013403          	ld	s0,0(sp)
    80004d84:	01010113          	addi	sp,sp,16
    80004d88:	00008067          	ret

0000000080004d8c <_ZN16ProducerKeyboardD0Ev>:
    80004d8c:	fe010113          	addi	sp,sp,-32
    80004d90:	00113c23          	sd	ra,24(sp)
    80004d94:	00813823          	sd	s0,16(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	02010413          	addi	s0,sp,32
    80004da0:	00050493          	mv	s1,a0
    80004da4:	00007797          	auipc	a5,0x7
    80004da8:	81478793          	addi	a5,a5,-2028 # 8000b5b8 <_ZTV16ProducerKeyboard+0x10>
    80004dac:	00f53023          	sd	a5,0(a0)
    80004db0:	ffffd097          	auipc	ra,0xffffd
    80004db4:	e20080e7          	jalr	-480(ra) # 80001bd0 <_ZN6ThreadD1Ev>
    80004db8:	00048513          	mv	a0,s1
    80004dbc:	ffffd097          	auipc	ra,0xffffd
    80004dc0:	eb4080e7          	jalr	-332(ra) # 80001c70 <_ZdlPv>
    80004dc4:	01813083          	ld	ra,24(sp)
    80004dc8:	01013403          	ld	s0,16(sp)
    80004dcc:	00813483          	ld	s1,8(sp)
    80004dd0:	02010113          	addi	sp,sp,32
    80004dd4:	00008067          	ret

0000000080004dd8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004dd8:	ff010113          	addi	sp,sp,-16
    80004ddc:	00113423          	sd	ra,8(sp)
    80004de0:	00813023          	sd	s0,0(sp)
    80004de4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004de8:	02053583          	ld	a1,32(a0)
    80004dec:	fffff097          	auipc	ra,0xfffff
    80004df0:	7e4080e7          	jalr	2020(ra) # 800045d0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004df4:	00813083          	ld	ra,8(sp)
    80004df8:	00013403          	ld	s0,0(sp)
    80004dfc:	01010113          	addi	sp,sp,16
    80004e00:	00008067          	ret

0000000080004e04 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004e04:	ff010113          	addi	sp,sp,-16
    80004e08:	00113423          	sd	ra,8(sp)
    80004e0c:	00813023          	sd	s0,0(sp)
    80004e10:	01010413          	addi	s0,sp,16
        producer(td);
    80004e14:	02053583          	ld	a1,32(a0)
    80004e18:	00000097          	auipc	ra,0x0
    80004e1c:	878080e7          	jalr	-1928(ra) # 80004690 <_ZN12ProducerSync8producerEPv>
    }
    80004e20:	00813083          	ld	ra,8(sp)
    80004e24:	00013403          	ld	s0,0(sp)
    80004e28:	01010113          	addi	sp,sp,16
    80004e2c:	00008067          	ret

0000000080004e30 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004e30:	ff010113          	addi	sp,sp,-16
    80004e34:	00113423          	sd	ra,8(sp)
    80004e38:	00813023          	sd	s0,0(sp)
    80004e3c:	01010413          	addi	s0,sp,16
        consumer(td);
    80004e40:	02053583          	ld	a1,32(a0)
    80004e44:	00000097          	auipc	ra,0x0
    80004e48:	8e0080e7          	jalr	-1824(ra) # 80004724 <_ZN12ConsumerSync8consumerEPv>
    }
    80004e4c:	00813083          	ld	ra,8(sp)
    80004e50:	00013403          	ld	s0,0(sp)
    80004e54:	01010113          	addi	sp,sp,16
    80004e58:	00008067          	ret

0000000080004e5c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004e5c:	fe010113          	addi	sp,sp,-32
    80004e60:	00113c23          	sd	ra,24(sp)
    80004e64:	00813823          	sd	s0,16(sp)
    80004e68:	00913423          	sd	s1,8(sp)
    80004e6c:	02010413          	addi	s0,sp,32
    80004e70:	00050493          	mv	s1,a0
    LOCK();
    80004e74:	00100613          	li	a2,1
    80004e78:	00000593          	li	a1,0
    80004e7c:	00007517          	auipc	a0,0x7
    80004e80:	8d450513          	addi	a0,a0,-1836 # 8000b750 <lockPrint>
    80004e84:	ffffc097          	auipc	ra,0xffffc
    80004e88:	3a0080e7          	jalr	928(ra) # 80001224 <copy_and_swap>
    80004e8c:	00050863          	beqz	a0,80004e9c <_Z11printStringPKc+0x40>
    80004e90:	ffffc097          	auipc	ra,0xffffc
    80004e94:	544080e7          	jalr	1348(ra) # 800013d4 <_Z15thread_dispatchv>
    80004e98:	fddff06f          	j	80004e74 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004e9c:	0004c503          	lbu	a0,0(s1)
    80004ea0:	00050a63          	beqz	a0,80004eb4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004ea4:	ffffc097          	auipc	ra,0xffffc
    80004ea8:	6a4080e7          	jalr	1700(ra) # 80001548 <_Z4putcc>
        string++;
    80004eac:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004eb0:	fedff06f          	j	80004e9c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004eb4:	00000613          	li	a2,0
    80004eb8:	00100593          	li	a1,1
    80004ebc:	00007517          	auipc	a0,0x7
    80004ec0:	89450513          	addi	a0,a0,-1900 # 8000b750 <lockPrint>
    80004ec4:	ffffc097          	auipc	ra,0xffffc
    80004ec8:	360080e7          	jalr	864(ra) # 80001224 <copy_and_swap>
    80004ecc:	fe0514e3          	bnez	a0,80004eb4 <_Z11printStringPKc+0x58>
}
    80004ed0:	01813083          	ld	ra,24(sp)
    80004ed4:	01013403          	ld	s0,16(sp)
    80004ed8:	00813483          	ld	s1,8(sp)
    80004edc:	02010113          	addi	sp,sp,32
    80004ee0:	00008067          	ret

0000000080004ee4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004ee4:	fd010113          	addi	sp,sp,-48
    80004ee8:	02113423          	sd	ra,40(sp)
    80004eec:	02813023          	sd	s0,32(sp)
    80004ef0:	00913c23          	sd	s1,24(sp)
    80004ef4:	01213823          	sd	s2,16(sp)
    80004ef8:	01313423          	sd	s3,8(sp)
    80004efc:	01413023          	sd	s4,0(sp)
    80004f00:	03010413          	addi	s0,sp,48
    80004f04:	00050993          	mv	s3,a0
    80004f08:	00058a13          	mv	s4,a1
    LOCK();
    80004f0c:	00100613          	li	a2,1
    80004f10:	00000593          	li	a1,0
    80004f14:	00007517          	auipc	a0,0x7
    80004f18:	83c50513          	addi	a0,a0,-1988 # 8000b750 <lockPrint>
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	308080e7          	jalr	776(ra) # 80001224 <copy_and_swap>
    80004f24:	00050863          	beqz	a0,80004f34 <_Z9getStringPci+0x50>
    80004f28:	ffffc097          	auipc	ra,0xffffc
    80004f2c:	4ac080e7          	jalr	1196(ra) # 800013d4 <_Z15thread_dispatchv>
    80004f30:	fddff06f          	j	80004f0c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004f34:	00000913          	li	s2,0
    80004f38:	00090493          	mv	s1,s2
    80004f3c:	0019091b          	addiw	s2,s2,1
    80004f40:	03495a63          	bge	s2,s4,80004f74 <_Z9getStringPci+0x90>
        cc = getc();
    80004f44:	ffffc097          	auipc	ra,0xffffc
    80004f48:	5d0080e7          	jalr	1488(ra) # 80001514 <_Z4getcv>
        if(cc < 1)
    80004f4c:	02050463          	beqz	a0,80004f74 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004f50:	009984b3          	add	s1,s3,s1
    80004f54:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004f58:	00a00793          	li	a5,10
    80004f5c:	00f50a63          	beq	a0,a5,80004f70 <_Z9getStringPci+0x8c>
    80004f60:	00d00793          	li	a5,13
    80004f64:	fcf51ae3          	bne	a0,a5,80004f38 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004f68:	00090493          	mv	s1,s2
    80004f6c:	0080006f          	j	80004f74 <_Z9getStringPci+0x90>
    80004f70:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004f74:	009984b3          	add	s1,s3,s1
    80004f78:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004f7c:	00000613          	li	a2,0
    80004f80:	00100593          	li	a1,1
    80004f84:	00006517          	auipc	a0,0x6
    80004f88:	7cc50513          	addi	a0,a0,1996 # 8000b750 <lockPrint>
    80004f8c:	ffffc097          	auipc	ra,0xffffc
    80004f90:	298080e7          	jalr	664(ra) # 80001224 <copy_and_swap>
    80004f94:	fe0514e3          	bnez	a0,80004f7c <_Z9getStringPci+0x98>
    return buf;
}
    80004f98:	00098513          	mv	a0,s3
    80004f9c:	02813083          	ld	ra,40(sp)
    80004fa0:	02013403          	ld	s0,32(sp)
    80004fa4:	01813483          	ld	s1,24(sp)
    80004fa8:	01013903          	ld	s2,16(sp)
    80004fac:	00813983          	ld	s3,8(sp)
    80004fb0:	00013a03          	ld	s4,0(sp)
    80004fb4:	03010113          	addi	sp,sp,48
    80004fb8:	00008067          	ret

0000000080004fbc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004fbc:	ff010113          	addi	sp,sp,-16
    80004fc0:	00813423          	sd	s0,8(sp)
    80004fc4:	01010413          	addi	s0,sp,16
    80004fc8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004fcc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004fd0:	0006c603          	lbu	a2,0(a3)
    80004fd4:	fd06071b          	addiw	a4,a2,-48
    80004fd8:	0ff77713          	andi	a4,a4,255
    80004fdc:	00900793          	li	a5,9
    80004fe0:	02e7e063          	bltu	a5,a4,80005000 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004fe4:	0025179b          	slliw	a5,a0,0x2
    80004fe8:	00a787bb          	addw	a5,a5,a0
    80004fec:	0017979b          	slliw	a5,a5,0x1
    80004ff0:	00168693          	addi	a3,a3,1
    80004ff4:	00c787bb          	addw	a5,a5,a2
    80004ff8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004ffc:	fd5ff06f          	j	80004fd0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005000:	00813403          	ld	s0,8(sp)
    80005004:	01010113          	addi	sp,sp,16
    80005008:	00008067          	ret

000000008000500c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000500c:	fc010113          	addi	sp,sp,-64
    80005010:	02113c23          	sd	ra,56(sp)
    80005014:	02813823          	sd	s0,48(sp)
    80005018:	02913423          	sd	s1,40(sp)
    8000501c:	03213023          	sd	s2,32(sp)
    80005020:	01313c23          	sd	s3,24(sp)
    80005024:	04010413          	addi	s0,sp,64
    80005028:	00050493          	mv	s1,a0
    8000502c:	00058913          	mv	s2,a1
    80005030:	00060993          	mv	s3,a2
    LOCK();
    80005034:	00100613          	li	a2,1
    80005038:	00000593          	li	a1,0
    8000503c:	00006517          	auipc	a0,0x6
    80005040:	71450513          	addi	a0,a0,1812 # 8000b750 <lockPrint>
    80005044:	ffffc097          	auipc	ra,0xffffc
    80005048:	1e0080e7          	jalr	480(ra) # 80001224 <copy_and_swap>
    8000504c:	00050863          	beqz	a0,8000505c <_Z8printIntiii+0x50>
    80005050:	ffffc097          	auipc	ra,0xffffc
    80005054:	384080e7          	jalr	900(ra) # 800013d4 <_Z15thread_dispatchv>
    80005058:	fddff06f          	j	80005034 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000505c:	00098463          	beqz	s3,80005064 <_Z8printIntiii+0x58>
    80005060:	0804c463          	bltz	s1,800050e8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005064:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005068:	00000593          	li	a1,0
    }

    i = 0;
    8000506c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005070:	0009079b          	sext.w	a5,s2
    80005074:	0325773b          	remuw	a4,a0,s2
    80005078:	00048613          	mv	a2,s1
    8000507c:	0014849b          	addiw	s1,s1,1
    80005080:	02071693          	slli	a3,a4,0x20
    80005084:	0206d693          	srli	a3,a3,0x20
    80005088:	00006717          	auipc	a4,0x6
    8000508c:	59870713          	addi	a4,a4,1432 # 8000b620 <digits>
    80005090:	00d70733          	add	a4,a4,a3
    80005094:	00074683          	lbu	a3,0(a4)
    80005098:	fd040713          	addi	a4,s0,-48
    8000509c:	00c70733          	add	a4,a4,a2
    800050a0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800050a4:	0005071b          	sext.w	a4,a0
    800050a8:	0325553b          	divuw	a0,a0,s2
    800050ac:	fcf772e3          	bgeu	a4,a5,80005070 <_Z8printIntiii+0x64>
    if(neg)
    800050b0:	00058c63          	beqz	a1,800050c8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800050b4:	fd040793          	addi	a5,s0,-48
    800050b8:	009784b3          	add	s1,a5,s1
    800050bc:	02d00793          	li	a5,45
    800050c0:	fef48823          	sb	a5,-16(s1)
    800050c4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800050c8:	fff4849b          	addiw	s1,s1,-1
    800050cc:	0204c463          	bltz	s1,800050f4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800050d0:	fd040793          	addi	a5,s0,-48
    800050d4:	009787b3          	add	a5,a5,s1
    800050d8:	ff07c503          	lbu	a0,-16(a5)
    800050dc:	ffffc097          	auipc	ra,0xffffc
    800050e0:	46c080e7          	jalr	1132(ra) # 80001548 <_Z4putcc>
    800050e4:	fe5ff06f          	j	800050c8 <_Z8printIntiii+0xbc>
        x = -xx;
    800050e8:	4090053b          	negw	a0,s1
        neg = 1;
    800050ec:	00100593          	li	a1,1
        x = -xx;
    800050f0:	f7dff06f          	j	8000506c <_Z8printIntiii+0x60>

    UNLOCK();
    800050f4:	00000613          	li	a2,0
    800050f8:	00100593          	li	a1,1
    800050fc:	00006517          	auipc	a0,0x6
    80005100:	65450513          	addi	a0,a0,1620 # 8000b750 <lockPrint>
    80005104:	ffffc097          	auipc	ra,0xffffc
    80005108:	120080e7          	jalr	288(ra) # 80001224 <copy_and_swap>
    8000510c:	fe0514e3          	bnez	a0,800050f4 <_Z8printIntiii+0xe8>
    80005110:	03813083          	ld	ra,56(sp)
    80005114:	03013403          	ld	s0,48(sp)
    80005118:	02813483          	ld	s1,40(sp)
    8000511c:	02013903          	ld	s2,32(sp)
    80005120:	01813983          	ld	s3,24(sp)
    80005124:	04010113          	addi	sp,sp,64
    80005128:	00008067          	ret

000000008000512c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000512c:	fd010113          	addi	sp,sp,-48
    80005130:	02113423          	sd	ra,40(sp)
    80005134:	02813023          	sd	s0,32(sp)
    80005138:	00913c23          	sd	s1,24(sp)
    8000513c:	01213823          	sd	s2,16(sp)
    80005140:	01313423          	sd	s3,8(sp)
    80005144:	03010413          	addi	s0,sp,48
    80005148:	00050493          	mv	s1,a0
    8000514c:	00058913          	mv	s2,a1
    80005150:	0015879b          	addiw	a5,a1,1
    80005154:	0007851b          	sext.w	a0,a5
    80005158:	00f4a023          	sw	a5,0(s1)
    8000515c:	0004a823          	sw	zero,16(s1)
    80005160:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005164:	00251513          	slli	a0,a0,0x2
    80005168:	ffffc097          	auipc	ra,0xffffc
    8000516c:	0dc080e7          	jalr	220(ra) # 80001244 <_Z9mem_allocm>
    80005170:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005174:	01000513          	li	a0,16
    80005178:	ffffd097          	auipc	ra,0xffffd
    8000517c:	aa8080e7          	jalr	-1368(ra) # 80001c20 <_Znwm>
    80005180:	00050993          	mv	s3,a0
    80005184:	00000593          	li	a1,0
    80005188:	ffffd097          	auipc	ra,0xffffd
    8000518c:	ce0080e7          	jalr	-800(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    80005190:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005194:	01000513          	li	a0,16
    80005198:	ffffd097          	auipc	ra,0xffffd
    8000519c:	a88080e7          	jalr	-1400(ra) # 80001c20 <_Znwm>
    800051a0:	00050993          	mv	s3,a0
    800051a4:	00090593          	mv	a1,s2
    800051a8:	ffffd097          	auipc	ra,0xffffd
    800051ac:	cc0080e7          	jalr	-832(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    800051b0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800051b4:	01000513          	li	a0,16
    800051b8:	ffffd097          	auipc	ra,0xffffd
    800051bc:	a68080e7          	jalr	-1432(ra) # 80001c20 <_Znwm>
    800051c0:	00050913          	mv	s2,a0
    800051c4:	00100593          	li	a1,1
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	ca0080e7          	jalr	-864(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    800051d0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800051d4:	01000513          	li	a0,16
    800051d8:	ffffd097          	auipc	ra,0xffffd
    800051dc:	a48080e7          	jalr	-1464(ra) # 80001c20 <_Znwm>
    800051e0:	00050913          	mv	s2,a0
    800051e4:	00100593          	li	a1,1
    800051e8:	ffffd097          	auipc	ra,0xffffd
    800051ec:	c80080e7          	jalr	-896(ra) # 80001e68 <_ZN9SemaphoreC1Ej>
    800051f0:	0324b823          	sd	s2,48(s1)
}
    800051f4:	02813083          	ld	ra,40(sp)
    800051f8:	02013403          	ld	s0,32(sp)
    800051fc:	01813483          	ld	s1,24(sp)
    80005200:	01013903          	ld	s2,16(sp)
    80005204:	00813983          	ld	s3,8(sp)
    80005208:	03010113          	addi	sp,sp,48
    8000520c:	00008067          	ret
    80005210:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005214:	00098513          	mv	a0,s3
    80005218:	ffffd097          	auipc	ra,0xffffd
    8000521c:	a58080e7          	jalr	-1448(ra) # 80001c70 <_ZdlPv>
    80005220:	00048513          	mv	a0,s1
    80005224:	00007097          	auipc	ra,0x7
    80005228:	604080e7          	jalr	1540(ra) # 8000c828 <_Unwind_Resume>
    8000522c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005230:	00098513          	mv	a0,s3
    80005234:	ffffd097          	auipc	ra,0xffffd
    80005238:	a3c080e7          	jalr	-1476(ra) # 80001c70 <_ZdlPv>
    8000523c:	00048513          	mv	a0,s1
    80005240:	00007097          	auipc	ra,0x7
    80005244:	5e8080e7          	jalr	1512(ra) # 8000c828 <_Unwind_Resume>
    80005248:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000524c:	00090513          	mv	a0,s2
    80005250:	ffffd097          	auipc	ra,0xffffd
    80005254:	a20080e7          	jalr	-1504(ra) # 80001c70 <_ZdlPv>
    80005258:	00048513          	mv	a0,s1
    8000525c:	00007097          	auipc	ra,0x7
    80005260:	5cc080e7          	jalr	1484(ra) # 8000c828 <_Unwind_Resume>
    80005264:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005268:	00090513          	mv	a0,s2
    8000526c:	ffffd097          	auipc	ra,0xffffd
    80005270:	a04080e7          	jalr	-1532(ra) # 80001c70 <_ZdlPv>
    80005274:	00048513          	mv	a0,s1
    80005278:	00007097          	auipc	ra,0x7
    8000527c:	5b0080e7          	jalr	1456(ra) # 8000c828 <_Unwind_Resume>

0000000080005280 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005280:	fe010113          	addi	sp,sp,-32
    80005284:	00113c23          	sd	ra,24(sp)
    80005288:	00813823          	sd	s0,16(sp)
    8000528c:	00913423          	sd	s1,8(sp)
    80005290:	01213023          	sd	s2,0(sp)
    80005294:	02010413          	addi	s0,sp,32
    80005298:	00050493          	mv	s1,a0
    8000529c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800052a0:	01853503          	ld	a0,24(a0)
    800052a4:	ffffd097          	auipc	ra,0xffffd
    800052a8:	c00080e7          	jalr	-1024(ra) # 80001ea4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800052ac:	0304b503          	ld	a0,48(s1)
    800052b0:	ffffd097          	auipc	ra,0xffffd
    800052b4:	bf4080e7          	jalr	-1036(ra) # 80001ea4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800052b8:	0084b783          	ld	a5,8(s1)
    800052bc:	0144a703          	lw	a4,20(s1)
    800052c0:	00271713          	slli	a4,a4,0x2
    800052c4:	00e787b3          	add	a5,a5,a4
    800052c8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800052cc:	0144a783          	lw	a5,20(s1)
    800052d0:	0017879b          	addiw	a5,a5,1
    800052d4:	0004a703          	lw	a4,0(s1)
    800052d8:	02e7e7bb          	remw	a5,a5,a4
    800052dc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800052e0:	0304b503          	ld	a0,48(s1)
    800052e4:	ffffd097          	auipc	ra,0xffffd
    800052e8:	bec080e7          	jalr	-1044(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800052ec:	0204b503          	ld	a0,32(s1)
    800052f0:	ffffd097          	auipc	ra,0xffffd
    800052f4:	be0080e7          	jalr	-1056(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

}
    800052f8:	01813083          	ld	ra,24(sp)
    800052fc:	01013403          	ld	s0,16(sp)
    80005300:	00813483          	ld	s1,8(sp)
    80005304:	00013903          	ld	s2,0(sp)
    80005308:	02010113          	addi	sp,sp,32
    8000530c:	00008067          	ret

0000000080005310 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005310:	fe010113          	addi	sp,sp,-32
    80005314:	00113c23          	sd	ra,24(sp)
    80005318:	00813823          	sd	s0,16(sp)
    8000531c:	00913423          	sd	s1,8(sp)
    80005320:	01213023          	sd	s2,0(sp)
    80005324:	02010413          	addi	s0,sp,32
    80005328:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000532c:	02053503          	ld	a0,32(a0)
    80005330:	ffffd097          	auipc	ra,0xffffd
    80005334:	b74080e7          	jalr	-1164(ra) # 80001ea4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005338:	0284b503          	ld	a0,40(s1)
    8000533c:	ffffd097          	auipc	ra,0xffffd
    80005340:	b68080e7          	jalr	-1176(ra) # 80001ea4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005344:	0084b703          	ld	a4,8(s1)
    80005348:	0104a783          	lw	a5,16(s1)
    8000534c:	00279693          	slli	a3,a5,0x2
    80005350:	00d70733          	add	a4,a4,a3
    80005354:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005358:	0017879b          	addiw	a5,a5,1
    8000535c:	0004a703          	lw	a4,0(s1)
    80005360:	02e7e7bb          	remw	a5,a5,a4
    80005364:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005368:	0284b503          	ld	a0,40(s1)
    8000536c:	ffffd097          	auipc	ra,0xffffd
    80005370:	b64080e7          	jalr	-1180(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005374:	0184b503          	ld	a0,24(s1)
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	b58080e7          	jalr	-1192(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005380:	00090513          	mv	a0,s2
    80005384:	01813083          	ld	ra,24(sp)
    80005388:	01013403          	ld	s0,16(sp)
    8000538c:	00813483          	ld	s1,8(sp)
    80005390:	00013903          	ld	s2,0(sp)
    80005394:	02010113          	addi	sp,sp,32
    80005398:	00008067          	ret

000000008000539c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00113c23          	sd	ra,24(sp)
    800053a4:	00813823          	sd	s0,16(sp)
    800053a8:	00913423          	sd	s1,8(sp)
    800053ac:	01213023          	sd	s2,0(sp)
    800053b0:	02010413          	addi	s0,sp,32
    800053b4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800053b8:	02853503          	ld	a0,40(a0)
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	ae8080e7          	jalr	-1304(ra) # 80001ea4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800053c4:	0304b503          	ld	a0,48(s1)
    800053c8:	ffffd097          	auipc	ra,0xffffd
    800053cc:	adc080e7          	jalr	-1316(ra) # 80001ea4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800053d0:	0144a783          	lw	a5,20(s1)
    800053d4:	0104a903          	lw	s2,16(s1)
    800053d8:	0327ce63          	blt	a5,s2,80005414 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800053dc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800053e0:	0304b503          	ld	a0,48(s1)
    800053e4:	ffffd097          	auipc	ra,0xffffd
    800053e8:	aec080e7          	jalr	-1300(ra) # 80001ed0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800053ec:	0284b503          	ld	a0,40(s1)
    800053f0:	ffffd097          	auipc	ra,0xffffd
    800053f4:	ae0080e7          	jalr	-1312(ra) # 80001ed0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800053f8:	00090513          	mv	a0,s2
    800053fc:	01813083          	ld	ra,24(sp)
    80005400:	01013403          	ld	s0,16(sp)
    80005404:	00813483          	ld	s1,8(sp)
    80005408:	00013903          	ld	s2,0(sp)
    8000540c:	02010113          	addi	sp,sp,32
    80005410:	00008067          	ret
        ret = cap - head + tail;
    80005414:	0004a703          	lw	a4,0(s1)
    80005418:	4127093b          	subw	s2,a4,s2
    8000541c:	00f9093b          	addw	s2,s2,a5
    80005420:	fc1ff06f          	j	800053e0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005424 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005424:	fe010113          	addi	sp,sp,-32
    80005428:	00113c23          	sd	ra,24(sp)
    8000542c:	00813823          	sd	s0,16(sp)
    80005430:	00913423          	sd	s1,8(sp)
    80005434:	02010413          	addi	s0,sp,32
    80005438:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000543c:	00a00513          	li	a0,10
    80005440:	ffffd097          	auipc	ra,0xffffd
    80005444:	b50080e7          	jalr	-1200(ra) # 80001f90 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005448:	00004517          	auipc	a0,0x4
    8000544c:	f0850513          	addi	a0,a0,-248 # 80009350 <CONSOLE_STATUS+0x340>
    80005450:	00000097          	auipc	ra,0x0
    80005454:	a0c080e7          	jalr	-1524(ra) # 80004e5c <_Z11printStringPKc>
    while (getCnt()) {
    80005458:	00048513          	mv	a0,s1
    8000545c:	00000097          	auipc	ra,0x0
    80005460:	f40080e7          	jalr	-192(ra) # 8000539c <_ZN9BufferCPP6getCntEv>
    80005464:	02050c63          	beqz	a0,8000549c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005468:	0084b783          	ld	a5,8(s1)
    8000546c:	0104a703          	lw	a4,16(s1)
    80005470:	00271713          	slli	a4,a4,0x2
    80005474:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005478:	0007c503          	lbu	a0,0(a5)
    8000547c:	ffffd097          	auipc	ra,0xffffd
    80005480:	b14080e7          	jalr	-1260(ra) # 80001f90 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005484:	0104a783          	lw	a5,16(s1)
    80005488:	0017879b          	addiw	a5,a5,1
    8000548c:	0004a703          	lw	a4,0(s1)
    80005490:	02e7e7bb          	remw	a5,a5,a4
    80005494:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005498:	fc1ff06f          	j	80005458 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000549c:	02100513          	li	a0,33
    800054a0:	ffffd097          	auipc	ra,0xffffd
    800054a4:	af0080e7          	jalr	-1296(ra) # 80001f90 <_ZN7Console4putcEc>
    Console::putc('\n');
    800054a8:	00a00513          	li	a0,10
    800054ac:	ffffd097          	auipc	ra,0xffffd
    800054b0:	ae4080e7          	jalr	-1308(ra) # 80001f90 <_ZN7Console4putcEc>
    mem_free(buffer);
    800054b4:	0084b503          	ld	a0,8(s1)
    800054b8:	ffffc097          	auipc	ra,0xffffc
    800054bc:	dc8080e7          	jalr	-568(ra) # 80001280 <_Z8mem_freePv>
    delete itemAvailable;
    800054c0:	0204b503          	ld	a0,32(s1)
    800054c4:	00050863          	beqz	a0,800054d4 <_ZN9BufferCPPD1Ev+0xb0>
    800054c8:	00053783          	ld	a5,0(a0)
    800054cc:	0087b783          	ld	a5,8(a5)
    800054d0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800054d4:	0184b503          	ld	a0,24(s1)
    800054d8:	00050863          	beqz	a0,800054e8 <_ZN9BufferCPPD1Ev+0xc4>
    800054dc:	00053783          	ld	a5,0(a0)
    800054e0:	0087b783          	ld	a5,8(a5)
    800054e4:	000780e7          	jalr	a5
    delete mutexTail;
    800054e8:	0304b503          	ld	a0,48(s1)
    800054ec:	00050863          	beqz	a0,800054fc <_ZN9BufferCPPD1Ev+0xd8>
    800054f0:	00053783          	ld	a5,0(a0)
    800054f4:	0087b783          	ld	a5,8(a5)
    800054f8:	000780e7          	jalr	a5
    delete mutexHead;
    800054fc:	0284b503          	ld	a0,40(s1)
    80005500:	00050863          	beqz	a0,80005510 <_ZN9BufferCPPD1Ev+0xec>
    80005504:	00053783          	ld	a5,0(a0)
    80005508:	0087b783          	ld	a5,8(a5)
    8000550c:	000780e7          	jalr	a5
}
    80005510:	01813083          	ld	ra,24(sp)
    80005514:	01013403          	ld	s0,16(sp)
    80005518:	00813483          	ld	s1,8(sp)
    8000551c:	02010113          	addi	sp,sp,32
    80005520:	00008067          	ret

0000000080005524 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005524:	fe010113          	addi	sp,sp,-32
    80005528:	00113c23          	sd	ra,24(sp)
    8000552c:	00813823          	sd	s0,16(sp)
    80005530:	00913423          	sd	s1,8(sp)
    80005534:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005538:	00004517          	auipc	a0,0x4
    8000553c:	e3050513          	addi	a0,a0,-464 # 80009368 <CONSOLE_STATUS+0x358>
    80005540:	00000097          	auipc	ra,0x0
    80005544:	91c080e7          	jalr	-1764(ra) # 80004e5c <_Z11printStringPKc>
    int test = getc() - '0';
    80005548:	ffffc097          	auipc	ra,0xffffc
    8000554c:	fcc080e7          	jalr	-52(ra) # 80001514 <_Z4getcv>
    80005550:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	fc0080e7          	jalr	-64(ra) # 80001514 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000555c:	00700793          	li	a5,7
    80005560:	1097e263          	bltu	a5,s1,80005664 <_Z8userMainv+0x140>
    80005564:	00249493          	slli	s1,s1,0x2
    80005568:	00004717          	auipc	a4,0x4
    8000556c:	05870713          	addi	a4,a4,88 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005570:	00e484b3          	add	s1,s1,a4
    80005574:	0004a783          	lw	a5,0(s1)
    80005578:	00e787b3          	add	a5,a5,a4
    8000557c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	f54080e7          	jalr	-172(ra) # 800044d4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005588:	00004517          	auipc	a0,0x4
    8000558c:	e0050513          	addi	a0,a0,-512 # 80009388 <CONSOLE_STATUS+0x378>
    80005590:	00000097          	auipc	ra,0x0
    80005594:	8cc080e7          	jalr	-1844(ra) # 80004e5c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005598:	01813083          	ld	ra,24(sp)
    8000559c:	01013403          	ld	s0,16(sp)
    800055a0:	00813483          	ld	s1,8(sp)
    800055a4:	02010113          	addi	sp,sp,32
    800055a8:	00008067          	ret
            Threads_CPP_API_test();
    800055ac:	ffffe097          	auipc	ra,0xffffe
    800055b0:	e08080e7          	jalr	-504(ra) # 800033b4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800055b4:	00004517          	auipc	a0,0x4
    800055b8:	e1450513          	addi	a0,a0,-492 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800055bc:	00000097          	auipc	ra,0x0
    800055c0:	8a0080e7          	jalr	-1888(ra) # 80004e5c <_Z11printStringPKc>
            break;
    800055c4:	fd5ff06f          	j	80005598 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800055c8:	ffffd097          	auipc	ra,0xffffd
    800055cc:	640080e7          	jalr	1600(ra) # 80002c08 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800055d0:	00004517          	auipc	a0,0x4
    800055d4:	e3850513          	addi	a0,a0,-456 # 80009408 <CONSOLE_STATUS+0x3f8>
    800055d8:	00000097          	auipc	ra,0x0
    800055dc:	884080e7          	jalr	-1916(ra) # 80004e5c <_Z11printStringPKc>
            break;
    800055e0:	fb9ff06f          	j	80005598 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800055e4:	fffff097          	auipc	ra,0xfffff
    800055e8:	234080e7          	jalr	564(ra) # 80004818 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800055ec:	00004517          	auipc	a0,0x4
    800055f0:	e6c50513          	addi	a0,a0,-404 # 80009458 <CONSOLE_STATUS+0x448>
    800055f4:	00000097          	auipc	ra,0x0
    800055f8:	868080e7          	jalr	-1944(ra) # 80004e5c <_Z11printStringPKc>
            break;
    800055fc:	f9dff06f          	j	80005598 <_Z8userMainv+0x74>
            testSleeping();
    80005600:	00000097          	auipc	ra,0x0
    80005604:	11c080e7          	jalr	284(ra) # 8000571c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005608:	00004517          	auipc	a0,0x4
    8000560c:	ea850513          	addi	a0,a0,-344 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005610:	00000097          	auipc	ra,0x0
    80005614:	84c080e7          	jalr	-1972(ra) # 80004e5c <_Z11printStringPKc>
            break;
    80005618:	f81ff06f          	j	80005598 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000561c:	ffffe097          	auipc	ra,0xffffe
    80005620:	258080e7          	jalr	600(ra) # 80003874 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005624:	00004517          	auipc	a0,0x4
    80005628:	ebc50513          	addi	a0,a0,-324 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000562c:	00000097          	auipc	ra,0x0
    80005630:	830080e7          	jalr	-2000(ra) # 80004e5c <_Z11printStringPKc>
            break;
    80005634:	f65ff06f          	j	80005598 <_Z8userMainv+0x74>
            System_Mode_test();
    80005638:	00000097          	auipc	ra,0x0
    8000563c:	658080e7          	jalr	1624(ra) # 80005c90 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005640:	00004517          	auipc	a0,0x4
    80005644:	ee050513          	addi	a0,a0,-288 # 80009520 <CONSOLE_STATUS+0x510>
    80005648:	00000097          	auipc	ra,0x0
    8000564c:	814080e7          	jalr	-2028(ra) # 80004e5c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005650:	00004517          	auipc	a0,0x4
    80005654:	ef050513          	addi	a0,a0,-272 # 80009540 <CONSOLE_STATUS+0x530>
    80005658:	00000097          	auipc	ra,0x0
    8000565c:	804080e7          	jalr	-2044(ra) # 80004e5c <_Z11printStringPKc>
            break;
    80005660:	f39ff06f          	j	80005598 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005664:	00004517          	auipc	a0,0x4
    80005668:	f3450513          	addi	a0,a0,-204 # 80009598 <CONSOLE_STATUS+0x588>
    8000566c:	fffff097          	auipc	ra,0xfffff
    80005670:	7f0080e7          	jalr	2032(ra) # 80004e5c <_Z11printStringPKc>
    80005674:	f25ff06f          	j	80005598 <_Z8userMainv+0x74>

0000000080005678 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005678:	fe010113          	addi	sp,sp,-32
    8000567c:	00113c23          	sd	ra,24(sp)
    80005680:	00813823          	sd	s0,16(sp)
    80005684:	00913423          	sd	s1,8(sp)
    80005688:	01213023          	sd	s2,0(sp)
    8000568c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005690:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005694:	00600493          	li	s1,6
    while (--i > 0) {
    80005698:	fff4849b          	addiw	s1,s1,-1
    8000569c:	04905463          	blez	s1,800056e4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800056a0:	00004517          	auipc	a0,0x4
    800056a4:	f4050513          	addi	a0,a0,-192 # 800095e0 <CONSOLE_STATUS+0x5d0>
    800056a8:	fffff097          	auipc	ra,0xfffff
    800056ac:	7b4080e7          	jalr	1972(ra) # 80004e5c <_Z11printStringPKc>
        printInt(sleep_time);
    800056b0:	00000613          	li	a2,0
    800056b4:	00a00593          	li	a1,10
    800056b8:	0009051b          	sext.w	a0,s2
    800056bc:	00000097          	auipc	ra,0x0
    800056c0:	950080e7          	jalr	-1712(ra) # 8000500c <_Z8printIntiii>
        printString(" !\n");
    800056c4:	00004517          	auipc	a0,0x4
    800056c8:	f2450513          	addi	a0,a0,-220 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800056cc:	fffff097          	auipc	ra,0xfffff
    800056d0:	790080e7          	jalr	1936(ra) # 80004e5c <_Z11printStringPKc>
        time_sleep(sleep_time);
    800056d4:	00090513          	mv	a0,s2
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	e04080e7          	jalr	-508(ra) # 800014dc <_Z10time_sleepm>
    while (--i > 0) {
    800056e0:	fb9ff06f          	j	80005698 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800056e4:	00a00793          	li	a5,10
    800056e8:	02f95933          	divu	s2,s2,a5
    800056ec:	fff90913          	addi	s2,s2,-1
    800056f0:	00006797          	auipc	a5,0x6
    800056f4:	06878793          	addi	a5,a5,104 # 8000b758 <_ZL8finished>
    800056f8:	01278933          	add	s2,a5,s2
    800056fc:	00100793          	li	a5,1
    80005700:	00f90023          	sb	a5,0(s2)
}
    80005704:	01813083          	ld	ra,24(sp)
    80005708:	01013403          	ld	s0,16(sp)
    8000570c:	00813483          	ld	s1,8(sp)
    80005710:	00013903          	ld	s2,0(sp)
    80005714:	02010113          	addi	sp,sp,32
    80005718:	00008067          	ret

000000008000571c <_Z12testSleepingv>:

void testSleeping() {
    8000571c:	fc010113          	addi	sp,sp,-64
    80005720:	02113c23          	sd	ra,56(sp)
    80005724:	02813823          	sd	s0,48(sp)
    80005728:	02913423          	sd	s1,40(sp)
    8000572c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005730:	00a00793          	li	a5,10
    80005734:	fcf43823          	sd	a5,-48(s0)
    80005738:	01400793          	li	a5,20
    8000573c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005740:	00000493          	li	s1,0
    80005744:	02c0006f          	j	80005770 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005748:	00349793          	slli	a5,s1,0x3
    8000574c:	fd040613          	addi	a2,s0,-48
    80005750:	00f60633          	add	a2,a2,a5
    80005754:	00000597          	auipc	a1,0x0
    80005758:	f2458593          	addi	a1,a1,-220 # 80005678 <_ZL9sleepyRunPv>
    8000575c:	fc040513          	addi	a0,s0,-64
    80005760:	00f50533          	add	a0,a0,a5
    80005764:	ffffc097          	auipc	ra,0xffffc
    80005768:	bb4080e7          	jalr	-1100(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000576c:	0014849b          	addiw	s1,s1,1
    80005770:	00100793          	li	a5,1
    80005774:	fc97dae3          	bge	a5,s1,80005748 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005778:	00006797          	auipc	a5,0x6
    8000577c:	fe07c783          	lbu	a5,-32(a5) # 8000b758 <_ZL8finished>
    80005780:	fe078ce3          	beqz	a5,80005778 <_Z12testSleepingv+0x5c>
    80005784:	00006797          	auipc	a5,0x6
    80005788:	fd57c783          	lbu	a5,-43(a5) # 8000b759 <_ZL8finished+0x1>
    8000578c:	fe0786e3          	beqz	a5,80005778 <_Z12testSleepingv+0x5c>
}
    80005790:	03813083          	ld	ra,56(sp)
    80005794:	03013403          	ld	s0,48(sp)
    80005798:	02813483          	ld	s1,40(sp)
    8000579c:	04010113          	addi	sp,sp,64
    800057a0:	00008067          	ret

00000000800057a4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800057a4:	fe010113          	addi	sp,sp,-32
    800057a8:	00113c23          	sd	ra,24(sp)
    800057ac:	00813823          	sd	s0,16(sp)
    800057b0:	00913423          	sd	s1,8(sp)
    800057b4:	01213023          	sd	s2,0(sp)
    800057b8:	02010413          	addi	s0,sp,32
    800057bc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800057c0:	00100793          	li	a5,1
    800057c4:	02a7f863          	bgeu	a5,a0,800057f4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800057c8:	00a00793          	li	a5,10
    800057cc:	02f577b3          	remu	a5,a0,a5
    800057d0:	02078e63          	beqz	a5,8000580c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800057d4:	fff48513          	addi	a0,s1,-1
    800057d8:	00000097          	auipc	ra,0x0
    800057dc:	fcc080e7          	jalr	-52(ra) # 800057a4 <_ZL9fibonaccim>
    800057e0:	00050913          	mv	s2,a0
    800057e4:	ffe48513          	addi	a0,s1,-2
    800057e8:	00000097          	auipc	ra,0x0
    800057ec:	fbc080e7          	jalr	-68(ra) # 800057a4 <_ZL9fibonaccim>
    800057f0:	00a90533          	add	a0,s2,a0
}
    800057f4:	01813083          	ld	ra,24(sp)
    800057f8:	01013403          	ld	s0,16(sp)
    800057fc:	00813483          	ld	s1,8(sp)
    80005800:	00013903          	ld	s2,0(sp)
    80005804:	02010113          	addi	sp,sp,32
    80005808:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000580c:	ffffc097          	auipc	ra,0xffffc
    80005810:	bc8080e7          	jalr	-1080(ra) # 800013d4 <_Z15thread_dispatchv>
    80005814:	fc1ff06f          	j	800057d4 <_ZL9fibonaccim+0x30>

0000000080005818 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005818:	fe010113          	addi	sp,sp,-32
    8000581c:	00113c23          	sd	ra,24(sp)
    80005820:	00813823          	sd	s0,16(sp)
    80005824:	00913423          	sd	s1,8(sp)
    80005828:	01213023          	sd	s2,0(sp)
    8000582c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005830:	00a00493          	li	s1,10
    80005834:	0400006f          	j	80005874 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005838:	00004517          	auipc	a0,0x4
    8000583c:	a8050513          	addi	a0,a0,-1408 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005840:	fffff097          	auipc	ra,0xfffff
    80005844:	61c080e7          	jalr	1564(ra) # 80004e5c <_Z11printStringPKc>
    80005848:	00000613          	li	a2,0
    8000584c:	00a00593          	li	a1,10
    80005850:	00048513          	mv	a0,s1
    80005854:	fffff097          	auipc	ra,0xfffff
    80005858:	7b8080e7          	jalr	1976(ra) # 8000500c <_Z8printIntiii>
    8000585c:	00004517          	auipc	a0,0x4
    80005860:	c4c50513          	addi	a0,a0,-948 # 800094a8 <CONSOLE_STATUS+0x498>
    80005864:	fffff097          	auipc	ra,0xfffff
    80005868:	5f8080e7          	jalr	1528(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000586c:	0014849b          	addiw	s1,s1,1
    80005870:	0ff4f493          	andi	s1,s1,255
    80005874:	00c00793          	li	a5,12
    80005878:	fc97f0e3          	bgeu	a5,s1,80005838 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000587c:	00004517          	auipc	a0,0x4
    80005880:	a4450513          	addi	a0,a0,-1468 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80005884:	fffff097          	auipc	ra,0xfffff
    80005888:	5d8080e7          	jalr	1496(ra) # 80004e5c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000588c:	00500313          	li	t1,5
    thread_dispatch();
    80005890:	ffffc097          	auipc	ra,0xffffc
    80005894:	b44080e7          	jalr	-1212(ra) # 800013d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005898:	01000513          	li	a0,16
    8000589c:	00000097          	auipc	ra,0x0
    800058a0:	f08080e7          	jalr	-248(ra) # 800057a4 <_ZL9fibonaccim>
    800058a4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800058a8:	00004517          	auipc	a0,0x4
    800058ac:	a2850513          	addi	a0,a0,-1496 # 800092d0 <CONSOLE_STATUS+0x2c0>
    800058b0:	fffff097          	auipc	ra,0xfffff
    800058b4:	5ac080e7          	jalr	1452(ra) # 80004e5c <_Z11printStringPKc>
    800058b8:	00000613          	li	a2,0
    800058bc:	00a00593          	li	a1,10
    800058c0:	0009051b          	sext.w	a0,s2
    800058c4:	fffff097          	auipc	ra,0xfffff
    800058c8:	748080e7          	jalr	1864(ra) # 8000500c <_Z8printIntiii>
    800058cc:	00004517          	auipc	a0,0x4
    800058d0:	bdc50513          	addi	a0,a0,-1060 # 800094a8 <CONSOLE_STATUS+0x498>
    800058d4:	fffff097          	auipc	ra,0xfffff
    800058d8:	588080e7          	jalr	1416(ra) # 80004e5c <_Z11printStringPKc>
    800058dc:	0400006f          	j	8000591c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800058e0:	00004517          	auipc	a0,0x4
    800058e4:	9d850513          	addi	a0,a0,-1576 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800058e8:	fffff097          	auipc	ra,0xfffff
    800058ec:	574080e7          	jalr	1396(ra) # 80004e5c <_Z11printStringPKc>
    800058f0:	00000613          	li	a2,0
    800058f4:	00a00593          	li	a1,10
    800058f8:	00048513          	mv	a0,s1
    800058fc:	fffff097          	auipc	ra,0xfffff
    80005900:	710080e7          	jalr	1808(ra) # 8000500c <_Z8printIntiii>
    80005904:	00004517          	auipc	a0,0x4
    80005908:	ba450513          	addi	a0,a0,-1116 # 800094a8 <CONSOLE_STATUS+0x498>
    8000590c:	fffff097          	auipc	ra,0xfffff
    80005910:	550080e7          	jalr	1360(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005914:	0014849b          	addiw	s1,s1,1
    80005918:	0ff4f493          	andi	s1,s1,255
    8000591c:	00f00793          	li	a5,15
    80005920:	fc97f0e3          	bgeu	a5,s1,800058e0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005924:	00004517          	auipc	a0,0x4
    80005928:	9bc50513          	addi	a0,a0,-1604 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000592c:	fffff097          	auipc	ra,0xfffff
    80005930:	530080e7          	jalr	1328(ra) # 80004e5c <_Z11printStringPKc>
    finishedD = true;
    80005934:	00100793          	li	a5,1
    80005938:	00006717          	auipc	a4,0x6
    8000593c:	e2f70123          	sb	a5,-478(a4) # 8000b75a <_ZL9finishedD>
    thread_dispatch();
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	a94080e7          	jalr	-1388(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80005948:	01813083          	ld	ra,24(sp)
    8000594c:	01013403          	ld	s0,16(sp)
    80005950:	00813483          	ld	s1,8(sp)
    80005954:	00013903          	ld	s2,0(sp)
    80005958:	02010113          	addi	sp,sp,32
    8000595c:	00008067          	ret

0000000080005960 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005960:	fe010113          	addi	sp,sp,-32
    80005964:	00113c23          	sd	ra,24(sp)
    80005968:	00813823          	sd	s0,16(sp)
    8000596c:	00913423          	sd	s1,8(sp)
    80005970:	01213023          	sd	s2,0(sp)
    80005974:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005978:	00000493          	li	s1,0
    8000597c:	0400006f          	j	800059bc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005980:	00004517          	auipc	a0,0x4
    80005984:	90850513          	addi	a0,a0,-1784 # 80009288 <CONSOLE_STATUS+0x278>
    80005988:	fffff097          	auipc	ra,0xfffff
    8000598c:	4d4080e7          	jalr	1236(ra) # 80004e5c <_Z11printStringPKc>
    80005990:	00000613          	li	a2,0
    80005994:	00a00593          	li	a1,10
    80005998:	00048513          	mv	a0,s1
    8000599c:	fffff097          	auipc	ra,0xfffff
    800059a0:	670080e7          	jalr	1648(ra) # 8000500c <_Z8printIntiii>
    800059a4:	00004517          	auipc	a0,0x4
    800059a8:	b0450513          	addi	a0,a0,-1276 # 800094a8 <CONSOLE_STATUS+0x498>
    800059ac:	fffff097          	auipc	ra,0xfffff
    800059b0:	4b0080e7          	jalr	1200(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800059b4:	0014849b          	addiw	s1,s1,1
    800059b8:	0ff4f493          	andi	s1,s1,255
    800059bc:	00200793          	li	a5,2
    800059c0:	fc97f0e3          	bgeu	a5,s1,80005980 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800059c4:	00004517          	auipc	a0,0x4
    800059c8:	8cc50513          	addi	a0,a0,-1844 # 80009290 <CONSOLE_STATUS+0x280>
    800059cc:	fffff097          	auipc	ra,0xfffff
    800059d0:	490080e7          	jalr	1168(ra) # 80004e5c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800059d4:	00700313          	li	t1,7
    thread_dispatch();
    800059d8:	ffffc097          	auipc	ra,0xffffc
    800059dc:	9fc080e7          	jalr	-1540(ra) # 800013d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800059e0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800059e4:	00004517          	auipc	a0,0x4
    800059e8:	8bc50513          	addi	a0,a0,-1860 # 800092a0 <CONSOLE_STATUS+0x290>
    800059ec:	fffff097          	auipc	ra,0xfffff
    800059f0:	470080e7          	jalr	1136(ra) # 80004e5c <_Z11printStringPKc>
    800059f4:	00000613          	li	a2,0
    800059f8:	00a00593          	li	a1,10
    800059fc:	0009051b          	sext.w	a0,s2
    80005a00:	fffff097          	auipc	ra,0xfffff
    80005a04:	60c080e7          	jalr	1548(ra) # 8000500c <_Z8printIntiii>
    80005a08:	00004517          	auipc	a0,0x4
    80005a0c:	aa050513          	addi	a0,a0,-1376 # 800094a8 <CONSOLE_STATUS+0x498>
    80005a10:	fffff097          	auipc	ra,0xfffff
    80005a14:	44c080e7          	jalr	1100(ra) # 80004e5c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005a18:	00c00513          	li	a0,12
    80005a1c:	00000097          	auipc	ra,0x0
    80005a20:	d88080e7          	jalr	-632(ra) # 800057a4 <_ZL9fibonaccim>
    80005a24:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005a28:	00004517          	auipc	a0,0x4
    80005a2c:	88050513          	addi	a0,a0,-1920 # 800092a8 <CONSOLE_STATUS+0x298>
    80005a30:	fffff097          	auipc	ra,0xfffff
    80005a34:	42c080e7          	jalr	1068(ra) # 80004e5c <_Z11printStringPKc>
    80005a38:	00000613          	li	a2,0
    80005a3c:	00a00593          	li	a1,10
    80005a40:	0009051b          	sext.w	a0,s2
    80005a44:	fffff097          	auipc	ra,0xfffff
    80005a48:	5c8080e7          	jalr	1480(ra) # 8000500c <_Z8printIntiii>
    80005a4c:	00004517          	auipc	a0,0x4
    80005a50:	a5c50513          	addi	a0,a0,-1444 # 800094a8 <CONSOLE_STATUS+0x498>
    80005a54:	fffff097          	auipc	ra,0xfffff
    80005a58:	408080e7          	jalr	1032(ra) # 80004e5c <_Z11printStringPKc>
    80005a5c:	0400006f          	j	80005a9c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005a60:	00004517          	auipc	a0,0x4
    80005a64:	82850513          	addi	a0,a0,-2008 # 80009288 <CONSOLE_STATUS+0x278>
    80005a68:	fffff097          	auipc	ra,0xfffff
    80005a6c:	3f4080e7          	jalr	1012(ra) # 80004e5c <_Z11printStringPKc>
    80005a70:	00000613          	li	a2,0
    80005a74:	00a00593          	li	a1,10
    80005a78:	00048513          	mv	a0,s1
    80005a7c:	fffff097          	auipc	ra,0xfffff
    80005a80:	590080e7          	jalr	1424(ra) # 8000500c <_Z8printIntiii>
    80005a84:	00004517          	auipc	a0,0x4
    80005a88:	a2450513          	addi	a0,a0,-1500 # 800094a8 <CONSOLE_STATUS+0x498>
    80005a8c:	fffff097          	auipc	ra,0xfffff
    80005a90:	3d0080e7          	jalr	976(ra) # 80004e5c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005a94:	0014849b          	addiw	s1,s1,1
    80005a98:	0ff4f493          	andi	s1,s1,255
    80005a9c:	00500793          	li	a5,5
    80005aa0:	fc97f0e3          	bgeu	a5,s1,80005a60 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005aa4:	00003517          	auipc	a0,0x3
    80005aa8:	7bc50513          	addi	a0,a0,1980 # 80009260 <CONSOLE_STATUS+0x250>
    80005aac:	fffff097          	auipc	ra,0xfffff
    80005ab0:	3b0080e7          	jalr	944(ra) # 80004e5c <_Z11printStringPKc>
    finishedC = true;
    80005ab4:	00100793          	li	a5,1
    80005ab8:	00006717          	auipc	a4,0x6
    80005abc:	caf701a3          	sb	a5,-861(a4) # 8000b75b <_ZL9finishedC>
    thread_dispatch();
    80005ac0:	ffffc097          	auipc	ra,0xffffc
    80005ac4:	914080e7          	jalr	-1772(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80005ac8:	01813083          	ld	ra,24(sp)
    80005acc:	01013403          	ld	s0,16(sp)
    80005ad0:	00813483          	ld	s1,8(sp)
    80005ad4:	00013903          	ld	s2,0(sp)
    80005ad8:	02010113          	addi	sp,sp,32
    80005adc:	00008067          	ret

0000000080005ae0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005ae0:	fe010113          	addi	sp,sp,-32
    80005ae4:	00113c23          	sd	ra,24(sp)
    80005ae8:	00813823          	sd	s0,16(sp)
    80005aec:	00913423          	sd	s1,8(sp)
    80005af0:	01213023          	sd	s2,0(sp)
    80005af4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005af8:	00000913          	li	s2,0
    80005afc:	0400006f          	j	80005b3c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005b00:	ffffc097          	auipc	ra,0xffffc
    80005b04:	8d4080e7          	jalr	-1836(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005b08:	00148493          	addi	s1,s1,1
    80005b0c:	000027b7          	lui	a5,0x2
    80005b10:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005b14:	0097ee63          	bltu	a5,s1,80005b30 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005b18:	00000713          	li	a4,0
    80005b1c:	000077b7          	lui	a5,0x7
    80005b20:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005b24:	fce7eee3          	bltu	a5,a4,80005b00 <_ZL11workerBodyBPv+0x20>
    80005b28:	00170713          	addi	a4,a4,1
    80005b2c:	ff1ff06f          	j	80005b1c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005b30:	00a00793          	li	a5,10
    80005b34:	04f90663          	beq	s2,a5,80005b80 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005b38:	00190913          	addi	s2,s2,1
    80005b3c:	00f00793          	li	a5,15
    80005b40:	0527e463          	bltu	a5,s2,80005b88 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005b44:	00003517          	auipc	a0,0x3
    80005b48:	72c50513          	addi	a0,a0,1836 # 80009270 <CONSOLE_STATUS+0x260>
    80005b4c:	fffff097          	auipc	ra,0xfffff
    80005b50:	310080e7          	jalr	784(ra) # 80004e5c <_Z11printStringPKc>
    80005b54:	00000613          	li	a2,0
    80005b58:	00a00593          	li	a1,10
    80005b5c:	0009051b          	sext.w	a0,s2
    80005b60:	fffff097          	auipc	ra,0xfffff
    80005b64:	4ac080e7          	jalr	1196(ra) # 8000500c <_Z8printIntiii>
    80005b68:	00004517          	auipc	a0,0x4
    80005b6c:	94050513          	addi	a0,a0,-1728 # 800094a8 <CONSOLE_STATUS+0x498>
    80005b70:	fffff097          	auipc	ra,0xfffff
    80005b74:	2ec080e7          	jalr	748(ra) # 80004e5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005b78:	00000493          	li	s1,0
    80005b7c:	f91ff06f          	j	80005b0c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005b80:	14102ff3          	csrr	t6,sepc
    80005b84:	fb5ff06f          	j	80005b38 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005b88:	00003517          	auipc	a0,0x3
    80005b8c:	6f050513          	addi	a0,a0,1776 # 80009278 <CONSOLE_STATUS+0x268>
    80005b90:	fffff097          	auipc	ra,0xfffff
    80005b94:	2cc080e7          	jalr	716(ra) # 80004e5c <_Z11printStringPKc>
    finishedB = true;
    80005b98:	00100793          	li	a5,1
    80005b9c:	00006717          	auipc	a4,0x6
    80005ba0:	bcf70023          	sb	a5,-1088(a4) # 8000b75c <_ZL9finishedB>
    thread_dispatch();
    80005ba4:	ffffc097          	auipc	ra,0xffffc
    80005ba8:	830080e7          	jalr	-2000(ra) # 800013d4 <_Z15thread_dispatchv>
}
    80005bac:	01813083          	ld	ra,24(sp)
    80005bb0:	01013403          	ld	s0,16(sp)
    80005bb4:	00813483          	ld	s1,8(sp)
    80005bb8:	00013903          	ld	s2,0(sp)
    80005bbc:	02010113          	addi	sp,sp,32
    80005bc0:	00008067          	ret

0000000080005bc4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005bc4:	fe010113          	addi	sp,sp,-32
    80005bc8:	00113c23          	sd	ra,24(sp)
    80005bcc:	00813823          	sd	s0,16(sp)
    80005bd0:	00913423          	sd	s1,8(sp)
    80005bd4:	01213023          	sd	s2,0(sp)
    80005bd8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005bdc:	00000913          	li	s2,0
    80005be0:	0380006f          	j	80005c18 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005be4:	ffffb097          	auipc	ra,0xffffb
    80005be8:	7f0080e7          	jalr	2032(ra) # 800013d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005bec:	00148493          	addi	s1,s1,1
    80005bf0:	000027b7          	lui	a5,0x2
    80005bf4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005bf8:	0097ee63          	bltu	a5,s1,80005c14 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005bfc:	00000713          	li	a4,0
    80005c00:	000077b7          	lui	a5,0x7
    80005c04:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005c08:	fce7eee3          	bltu	a5,a4,80005be4 <_ZL11workerBodyAPv+0x20>
    80005c0c:	00170713          	addi	a4,a4,1
    80005c10:	ff1ff06f          	j	80005c00 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005c14:	00190913          	addi	s2,s2,1
    80005c18:	00900793          	li	a5,9
    80005c1c:	0527e063          	bltu	a5,s2,80005c5c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005c20:	00003517          	auipc	a0,0x3
    80005c24:	63850513          	addi	a0,a0,1592 # 80009258 <CONSOLE_STATUS+0x248>
    80005c28:	fffff097          	auipc	ra,0xfffff
    80005c2c:	234080e7          	jalr	564(ra) # 80004e5c <_Z11printStringPKc>
    80005c30:	00000613          	li	a2,0
    80005c34:	00a00593          	li	a1,10
    80005c38:	0009051b          	sext.w	a0,s2
    80005c3c:	fffff097          	auipc	ra,0xfffff
    80005c40:	3d0080e7          	jalr	976(ra) # 8000500c <_Z8printIntiii>
    80005c44:	00004517          	auipc	a0,0x4
    80005c48:	86450513          	addi	a0,a0,-1948 # 800094a8 <CONSOLE_STATUS+0x498>
    80005c4c:	fffff097          	auipc	ra,0xfffff
    80005c50:	210080e7          	jalr	528(ra) # 80004e5c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005c54:	00000493          	li	s1,0
    80005c58:	f99ff06f          	j	80005bf0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005c5c:	00003517          	auipc	a0,0x3
    80005c60:	60450513          	addi	a0,a0,1540 # 80009260 <CONSOLE_STATUS+0x250>
    80005c64:	fffff097          	auipc	ra,0xfffff
    80005c68:	1f8080e7          	jalr	504(ra) # 80004e5c <_Z11printStringPKc>
    finishedA = true;
    80005c6c:	00100793          	li	a5,1
    80005c70:	00006717          	auipc	a4,0x6
    80005c74:	aef706a3          	sb	a5,-1299(a4) # 8000b75d <_ZL9finishedA>
}
    80005c78:	01813083          	ld	ra,24(sp)
    80005c7c:	01013403          	ld	s0,16(sp)
    80005c80:	00813483          	ld	s1,8(sp)
    80005c84:	00013903          	ld	s2,0(sp)
    80005c88:	02010113          	addi	sp,sp,32
    80005c8c:	00008067          	ret

0000000080005c90 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005c90:	fd010113          	addi	sp,sp,-48
    80005c94:	02113423          	sd	ra,40(sp)
    80005c98:	02813023          	sd	s0,32(sp)
    80005c9c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005ca0:	00000613          	li	a2,0
    80005ca4:	00000597          	auipc	a1,0x0
    80005ca8:	f2058593          	addi	a1,a1,-224 # 80005bc4 <_ZL11workerBodyAPv>
    80005cac:	fd040513          	addi	a0,s0,-48
    80005cb0:	ffffb097          	auipc	ra,0xffffb
    80005cb4:	668080e7          	jalr	1640(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005cb8:	00003517          	auipc	a0,0x3
    80005cbc:	63850513          	addi	a0,a0,1592 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005cc0:	fffff097          	auipc	ra,0xfffff
    80005cc4:	19c080e7          	jalr	412(ra) # 80004e5c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005cc8:	00000613          	li	a2,0
    80005ccc:	00000597          	auipc	a1,0x0
    80005cd0:	e1458593          	addi	a1,a1,-492 # 80005ae0 <_ZL11workerBodyBPv>
    80005cd4:	fd840513          	addi	a0,s0,-40
    80005cd8:	ffffb097          	auipc	ra,0xffffb
    80005cdc:	640080e7          	jalr	1600(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005ce0:	00003517          	auipc	a0,0x3
    80005ce4:	62850513          	addi	a0,a0,1576 # 80009308 <CONSOLE_STATUS+0x2f8>
    80005ce8:	fffff097          	auipc	ra,0xfffff
    80005cec:	174080e7          	jalr	372(ra) # 80004e5c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005cf0:	00000613          	li	a2,0
    80005cf4:	00000597          	auipc	a1,0x0
    80005cf8:	c6c58593          	addi	a1,a1,-916 # 80005960 <_ZL11workerBodyCPv>
    80005cfc:	fe040513          	addi	a0,s0,-32
    80005d00:	ffffb097          	auipc	ra,0xffffb
    80005d04:	618080e7          	jalr	1560(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005d08:	00003517          	auipc	a0,0x3
    80005d0c:	61850513          	addi	a0,a0,1560 # 80009320 <CONSOLE_STATUS+0x310>
    80005d10:	fffff097          	auipc	ra,0xfffff
    80005d14:	14c080e7          	jalr	332(ra) # 80004e5c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005d18:	00000613          	li	a2,0
    80005d1c:	00000597          	auipc	a1,0x0
    80005d20:	afc58593          	addi	a1,a1,-1284 # 80005818 <_ZL11workerBodyDPv>
    80005d24:	fe840513          	addi	a0,s0,-24
    80005d28:	ffffb097          	auipc	ra,0xffffb
    80005d2c:	5f0080e7          	jalr	1520(ra) # 80001318 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005d30:	00003517          	auipc	a0,0x3
    80005d34:	60850513          	addi	a0,a0,1544 # 80009338 <CONSOLE_STATUS+0x328>
    80005d38:	fffff097          	auipc	ra,0xfffff
    80005d3c:	124080e7          	jalr	292(ra) # 80004e5c <_Z11printStringPKc>
    80005d40:	00c0006f          	j	80005d4c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005d44:	ffffb097          	auipc	ra,0xffffb
    80005d48:	690080e7          	jalr	1680(ra) # 800013d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005d4c:	00006797          	auipc	a5,0x6
    80005d50:	a117c783          	lbu	a5,-1519(a5) # 8000b75d <_ZL9finishedA>
    80005d54:	fe0788e3          	beqz	a5,80005d44 <_Z16System_Mode_testv+0xb4>
    80005d58:	00006797          	auipc	a5,0x6
    80005d5c:	a047c783          	lbu	a5,-1532(a5) # 8000b75c <_ZL9finishedB>
    80005d60:	fe0782e3          	beqz	a5,80005d44 <_Z16System_Mode_testv+0xb4>
    80005d64:	00006797          	auipc	a5,0x6
    80005d68:	9f77c783          	lbu	a5,-1545(a5) # 8000b75b <_ZL9finishedC>
    80005d6c:	fc078ce3          	beqz	a5,80005d44 <_Z16System_Mode_testv+0xb4>
    80005d70:	00006797          	auipc	a5,0x6
    80005d74:	9ea7c783          	lbu	a5,-1558(a5) # 8000b75a <_ZL9finishedD>
    80005d78:	fc0786e3          	beqz	a5,80005d44 <_Z16System_Mode_testv+0xb4>
    }

}
    80005d7c:	02813083          	ld	ra,40(sp)
    80005d80:	02013403          	ld	s0,32(sp)
    80005d84:	03010113          	addi	sp,sp,48
    80005d88:	00008067          	ret

0000000080005d8c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d8c:	fe010113          	addi	sp,sp,-32
    80005d90:	00113c23          	sd	ra,24(sp)
    80005d94:	00813823          	sd	s0,16(sp)
    80005d98:	00913423          	sd	s1,8(sp)
    80005d9c:	01213023          	sd	s2,0(sp)
    80005da0:	02010413          	addi	s0,sp,32
    80005da4:	00050493          	mv	s1,a0
    80005da8:	00058913          	mv	s2,a1
    80005dac:	0015879b          	addiw	a5,a1,1
    80005db0:	0007851b          	sext.w	a0,a5
    80005db4:	00f4a023          	sw	a5,0(s1)
    80005db8:	0004a823          	sw	zero,16(s1)
    80005dbc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005dc0:	00251513          	slli	a0,a0,0x2
    80005dc4:	ffffb097          	auipc	ra,0xffffb
    80005dc8:	480080e7          	jalr	1152(ra) # 80001244 <_Z9mem_allocm>
    80005dcc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005dd0:	00000593          	li	a1,0
    80005dd4:	02048513          	addi	a0,s1,32
    80005dd8:	ffffb097          	auipc	ra,0xffffb
    80005ddc:	620080e7          	jalr	1568(ra) # 800013f8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005de0:	00090593          	mv	a1,s2
    80005de4:	01848513          	addi	a0,s1,24
    80005de8:	ffffb097          	auipc	ra,0xffffb
    80005dec:	610080e7          	jalr	1552(ra) # 800013f8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005df0:	00100593          	li	a1,1
    80005df4:	02848513          	addi	a0,s1,40
    80005df8:	ffffb097          	auipc	ra,0xffffb
    80005dfc:	600080e7          	jalr	1536(ra) # 800013f8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005e00:	00100593          	li	a1,1
    80005e04:	03048513          	addi	a0,s1,48
    80005e08:	ffffb097          	auipc	ra,0xffffb
    80005e0c:	5f0080e7          	jalr	1520(ra) # 800013f8 <_Z8sem_openPP4_semj>
}
    80005e10:	01813083          	ld	ra,24(sp)
    80005e14:	01013403          	ld	s0,16(sp)
    80005e18:	00813483          	ld	s1,8(sp)
    80005e1c:	00013903          	ld	s2,0(sp)
    80005e20:	02010113          	addi	sp,sp,32
    80005e24:	00008067          	ret

0000000080005e28 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005e28:	fe010113          	addi	sp,sp,-32
    80005e2c:	00113c23          	sd	ra,24(sp)
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00913423          	sd	s1,8(sp)
    80005e38:	01213023          	sd	s2,0(sp)
    80005e3c:	02010413          	addi	s0,sp,32
    80005e40:	00050493          	mv	s1,a0
    80005e44:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005e48:	01853503          	ld	a0,24(a0)
    80005e4c:	ffffb097          	auipc	ra,0xffffb
    80005e50:	620080e7          	jalr	1568(ra) # 8000146c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005e54:	0304b503          	ld	a0,48(s1)
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	614080e7          	jalr	1556(ra) # 8000146c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005e60:	0084b783          	ld	a5,8(s1)
    80005e64:	0144a703          	lw	a4,20(s1)
    80005e68:	00271713          	slli	a4,a4,0x2
    80005e6c:	00e787b3          	add	a5,a5,a4
    80005e70:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005e74:	0144a783          	lw	a5,20(s1)
    80005e78:	0017879b          	addiw	a5,a5,1
    80005e7c:	0004a703          	lw	a4,0(s1)
    80005e80:	02e7e7bb          	remw	a5,a5,a4
    80005e84:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005e88:	0304b503          	ld	a0,48(s1)
    80005e8c:	ffffb097          	auipc	ra,0xffffb
    80005e90:	618080e7          	jalr	1560(ra) # 800014a4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005e94:	0204b503          	ld	a0,32(s1)
    80005e98:	ffffb097          	auipc	ra,0xffffb
    80005e9c:	60c080e7          	jalr	1548(ra) # 800014a4 <_Z10sem_signalP4_sem>

}
    80005ea0:	01813083          	ld	ra,24(sp)
    80005ea4:	01013403          	ld	s0,16(sp)
    80005ea8:	00813483          	ld	s1,8(sp)
    80005eac:	00013903          	ld	s2,0(sp)
    80005eb0:	02010113          	addi	sp,sp,32
    80005eb4:	00008067          	ret

0000000080005eb8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005eb8:	fe010113          	addi	sp,sp,-32
    80005ebc:	00113c23          	sd	ra,24(sp)
    80005ec0:	00813823          	sd	s0,16(sp)
    80005ec4:	00913423          	sd	s1,8(sp)
    80005ec8:	01213023          	sd	s2,0(sp)
    80005ecc:	02010413          	addi	s0,sp,32
    80005ed0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005ed4:	02053503          	ld	a0,32(a0)
    80005ed8:	ffffb097          	auipc	ra,0xffffb
    80005edc:	594080e7          	jalr	1428(ra) # 8000146c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005ee0:	0284b503          	ld	a0,40(s1)
    80005ee4:	ffffb097          	auipc	ra,0xffffb
    80005ee8:	588080e7          	jalr	1416(ra) # 8000146c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005eec:	0084b703          	ld	a4,8(s1)
    80005ef0:	0104a783          	lw	a5,16(s1)
    80005ef4:	00279693          	slli	a3,a5,0x2
    80005ef8:	00d70733          	add	a4,a4,a3
    80005efc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005f00:	0017879b          	addiw	a5,a5,1
    80005f04:	0004a703          	lw	a4,0(s1)
    80005f08:	02e7e7bb          	remw	a5,a5,a4
    80005f0c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005f10:	0284b503          	ld	a0,40(s1)
    80005f14:	ffffb097          	auipc	ra,0xffffb
    80005f18:	590080e7          	jalr	1424(ra) # 800014a4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005f1c:	0184b503          	ld	a0,24(s1)
    80005f20:	ffffb097          	auipc	ra,0xffffb
    80005f24:	584080e7          	jalr	1412(ra) # 800014a4 <_Z10sem_signalP4_sem>

    return ret;
}
    80005f28:	00090513          	mv	a0,s2
    80005f2c:	01813083          	ld	ra,24(sp)
    80005f30:	01013403          	ld	s0,16(sp)
    80005f34:	00813483          	ld	s1,8(sp)
    80005f38:	00013903          	ld	s2,0(sp)
    80005f3c:	02010113          	addi	sp,sp,32
    80005f40:	00008067          	ret

0000000080005f44 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005f44:	fe010113          	addi	sp,sp,-32
    80005f48:	00113c23          	sd	ra,24(sp)
    80005f4c:	00813823          	sd	s0,16(sp)
    80005f50:	00913423          	sd	s1,8(sp)
    80005f54:	01213023          	sd	s2,0(sp)
    80005f58:	02010413          	addi	s0,sp,32
    80005f5c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005f60:	02853503          	ld	a0,40(a0)
    80005f64:	ffffb097          	auipc	ra,0xffffb
    80005f68:	508080e7          	jalr	1288(ra) # 8000146c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005f6c:	0304b503          	ld	a0,48(s1)
    80005f70:	ffffb097          	auipc	ra,0xffffb
    80005f74:	4fc080e7          	jalr	1276(ra) # 8000146c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005f78:	0144a783          	lw	a5,20(s1)
    80005f7c:	0104a903          	lw	s2,16(s1)
    80005f80:	0327ce63          	blt	a5,s2,80005fbc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005f84:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005f88:	0304b503          	ld	a0,48(s1)
    80005f8c:	ffffb097          	auipc	ra,0xffffb
    80005f90:	518080e7          	jalr	1304(ra) # 800014a4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005f94:	0284b503          	ld	a0,40(s1)
    80005f98:	ffffb097          	auipc	ra,0xffffb
    80005f9c:	50c080e7          	jalr	1292(ra) # 800014a4 <_Z10sem_signalP4_sem>

    return ret;
}
    80005fa0:	00090513          	mv	a0,s2
    80005fa4:	01813083          	ld	ra,24(sp)
    80005fa8:	01013403          	ld	s0,16(sp)
    80005fac:	00813483          	ld	s1,8(sp)
    80005fb0:	00013903          	ld	s2,0(sp)
    80005fb4:	02010113          	addi	sp,sp,32
    80005fb8:	00008067          	ret
        ret = cap - head + tail;
    80005fbc:	0004a703          	lw	a4,0(s1)
    80005fc0:	4127093b          	subw	s2,a4,s2
    80005fc4:	00f9093b          	addw	s2,s2,a5
    80005fc8:	fc1ff06f          	j	80005f88 <_ZN6Buffer6getCntEv+0x44>

0000000080005fcc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005fcc:	fe010113          	addi	sp,sp,-32
    80005fd0:	00113c23          	sd	ra,24(sp)
    80005fd4:	00813823          	sd	s0,16(sp)
    80005fd8:	00913423          	sd	s1,8(sp)
    80005fdc:	02010413          	addi	s0,sp,32
    80005fe0:	00050493          	mv	s1,a0
    putc('\n');
    80005fe4:	00a00513          	li	a0,10
    80005fe8:	ffffb097          	auipc	ra,0xffffb
    80005fec:	560080e7          	jalr	1376(ra) # 80001548 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005ff0:	00003517          	auipc	a0,0x3
    80005ff4:	36050513          	addi	a0,a0,864 # 80009350 <CONSOLE_STATUS+0x340>
    80005ff8:	fffff097          	auipc	ra,0xfffff
    80005ffc:	e64080e7          	jalr	-412(ra) # 80004e5c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006000:	00048513          	mv	a0,s1
    80006004:	00000097          	auipc	ra,0x0
    80006008:	f40080e7          	jalr	-192(ra) # 80005f44 <_ZN6Buffer6getCntEv>
    8000600c:	02a05c63          	blez	a0,80006044 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006010:	0084b783          	ld	a5,8(s1)
    80006014:	0104a703          	lw	a4,16(s1)
    80006018:	00271713          	slli	a4,a4,0x2
    8000601c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006020:	0007c503          	lbu	a0,0(a5)
    80006024:	ffffb097          	auipc	ra,0xffffb
    80006028:	524080e7          	jalr	1316(ra) # 80001548 <_Z4putcc>
        head = (head + 1) % cap;
    8000602c:	0104a783          	lw	a5,16(s1)
    80006030:	0017879b          	addiw	a5,a5,1
    80006034:	0004a703          	lw	a4,0(s1)
    80006038:	02e7e7bb          	remw	a5,a5,a4
    8000603c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006040:	fc1ff06f          	j	80006000 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006044:	02100513          	li	a0,33
    80006048:	ffffb097          	auipc	ra,0xffffb
    8000604c:	500080e7          	jalr	1280(ra) # 80001548 <_Z4putcc>
    putc('\n');
    80006050:	00a00513          	li	a0,10
    80006054:	ffffb097          	auipc	ra,0xffffb
    80006058:	4f4080e7          	jalr	1268(ra) # 80001548 <_Z4putcc>
    mem_free(buffer);
    8000605c:	0084b503          	ld	a0,8(s1)
    80006060:	ffffb097          	auipc	ra,0xffffb
    80006064:	220080e7          	jalr	544(ra) # 80001280 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006068:	0204b503          	ld	a0,32(s1)
    8000606c:	ffffb097          	auipc	ra,0xffffb
    80006070:	3c8080e7          	jalr	968(ra) # 80001434 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006074:	0184b503          	ld	a0,24(s1)
    80006078:	ffffb097          	auipc	ra,0xffffb
    8000607c:	3bc080e7          	jalr	956(ra) # 80001434 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006080:	0304b503          	ld	a0,48(s1)
    80006084:	ffffb097          	auipc	ra,0xffffb
    80006088:	3b0080e7          	jalr	944(ra) # 80001434 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000608c:	0284b503          	ld	a0,40(s1)
    80006090:	ffffb097          	auipc	ra,0xffffb
    80006094:	3a4080e7          	jalr	932(ra) # 80001434 <_Z9sem_closeP4_sem>
}
    80006098:	01813083          	ld	ra,24(sp)
    8000609c:	01013403          	ld	s0,16(sp)
    800060a0:	00813483          	ld	s1,8(sp)
    800060a4:	02010113          	addi	sp,sp,32
    800060a8:	00008067          	ret

00000000800060ac <start>:
    800060ac:	ff010113          	addi	sp,sp,-16
    800060b0:	00813423          	sd	s0,8(sp)
    800060b4:	01010413          	addi	s0,sp,16
    800060b8:	300027f3          	csrr	a5,mstatus
    800060bc:	ffffe737          	lui	a4,0xffffe
    800060c0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1e3f>
    800060c4:	00e7f7b3          	and	a5,a5,a4
    800060c8:	00001737          	lui	a4,0x1
    800060cc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800060d0:	00e7e7b3          	or	a5,a5,a4
    800060d4:	30079073          	csrw	mstatus,a5
    800060d8:	00000797          	auipc	a5,0x0
    800060dc:	16078793          	addi	a5,a5,352 # 80006238 <system_main>
    800060e0:	34179073          	csrw	mepc,a5
    800060e4:	00000793          	li	a5,0
    800060e8:	18079073          	csrw	satp,a5
    800060ec:	000107b7          	lui	a5,0x10
    800060f0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800060f4:	30279073          	csrw	medeleg,a5
    800060f8:	30379073          	csrw	mideleg,a5
    800060fc:	104027f3          	csrr	a5,sie
    80006100:	2227e793          	ori	a5,a5,546
    80006104:	10479073          	csrw	sie,a5
    80006108:	fff00793          	li	a5,-1
    8000610c:	00a7d793          	srli	a5,a5,0xa
    80006110:	3b079073          	csrw	pmpaddr0,a5
    80006114:	00f00793          	li	a5,15
    80006118:	3a079073          	csrw	pmpcfg0,a5
    8000611c:	f14027f3          	csrr	a5,mhartid
    80006120:	0200c737          	lui	a4,0x200c
    80006124:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006128:	0007869b          	sext.w	a3,a5
    8000612c:	00269713          	slli	a4,a3,0x2
    80006130:	000f4637          	lui	a2,0xf4
    80006134:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006138:	00d70733          	add	a4,a4,a3
    8000613c:	0037979b          	slliw	a5,a5,0x3
    80006140:	020046b7          	lui	a3,0x2004
    80006144:	00d787b3          	add	a5,a5,a3
    80006148:	00c585b3          	add	a1,a1,a2
    8000614c:	00371693          	slli	a3,a4,0x3
    80006150:	00005717          	auipc	a4,0x5
    80006154:	61070713          	addi	a4,a4,1552 # 8000b760 <timer_scratch>
    80006158:	00b7b023          	sd	a1,0(a5)
    8000615c:	00d70733          	add	a4,a4,a3
    80006160:	00f73c23          	sd	a5,24(a4)
    80006164:	02c73023          	sd	a2,32(a4)
    80006168:	34071073          	csrw	mscratch,a4
    8000616c:	00000797          	auipc	a5,0x0
    80006170:	6e478793          	addi	a5,a5,1764 # 80006850 <timervec>
    80006174:	30579073          	csrw	mtvec,a5
    80006178:	300027f3          	csrr	a5,mstatus
    8000617c:	0087e793          	ori	a5,a5,8
    80006180:	30079073          	csrw	mstatus,a5
    80006184:	304027f3          	csrr	a5,mie
    80006188:	0807e793          	ori	a5,a5,128
    8000618c:	30479073          	csrw	mie,a5
    80006190:	f14027f3          	csrr	a5,mhartid
    80006194:	0007879b          	sext.w	a5,a5
    80006198:	00078213          	mv	tp,a5
    8000619c:	30200073          	mret
    800061a0:	00813403          	ld	s0,8(sp)
    800061a4:	01010113          	addi	sp,sp,16
    800061a8:	00008067          	ret

00000000800061ac <timerinit>:
    800061ac:	ff010113          	addi	sp,sp,-16
    800061b0:	00813423          	sd	s0,8(sp)
    800061b4:	01010413          	addi	s0,sp,16
    800061b8:	f14027f3          	csrr	a5,mhartid
    800061bc:	0200c737          	lui	a4,0x200c
    800061c0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800061c4:	0007869b          	sext.w	a3,a5
    800061c8:	00269713          	slli	a4,a3,0x2
    800061cc:	000f4637          	lui	a2,0xf4
    800061d0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800061d4:	00d70733          	add	a4,a4,a3
    800061d8:	0037979b          	slliw	a5,a5,0x3
    800061dc:	020046b7          	lui	a3,0x2004
    800061e0:	00d787b3          	add	a5,a5,a3
    800061e4:	00c585b3          	add	a1,a1,a2
    800061e8:	00371693          	slli	a3,a4,0x3
    800061ec:	00005717          	auipc	a4,0x5
    800061f0:	57470713          	addi	a4,a4,1396 # 8000b760 <timer_scratch>
    800061f4:	00b7b023          	sd	a1,0(a5)
    800061f8:	00d70733          	add	a4,a4,a3
    800061fc:	00f73c23          	sd	a5,24(a4)
    80006200:	02c73023          	sd	a2,32(a4)
    80006204:	34071073          	csrw	mscratch,a4
    80006208:	00000797          	auipc	a5,0x0
    8000620c:	64878793          	addi	a5,a5,1608 # 80006850 <timervec>
    80006210:	30579073          	csrw	mtvec,a5
    80006214:	300027f3          	csrr	a5,mstatus
    80006218:	0087e793          	ori	a5,a5,8
    8000621c:	30079073          	csrw	mstatus,a5
    80006220:	304027f3          	csrr	a5,mie
    80006224:	0807e793          	ori	a5,a5,128
    80006228:	30479073          	csrw	mie,a5
    8000622c:	00813403          	ld	s0,8(sp)
    80006230:	01010113          	addi	sp,sp,16
    80006234:	00008067          	ret

0000000080006238 <system_main>:
    80006238:	fe010113          	addi	sp,sp,-32
    8000623c:	00813823          	sd	s0,16(sp)
    80006240:	00913423          	sd	s1,8(sp)
    80006244:	00113c23          	sd	ra,24(sp)
    80006248:	02010413          	addi	s0,sp,32
    8000624c:	00000097          	auipc	ra,0x0
    80006250:	0c4080e7          	jalr	196(ra) # 80006310 <cpuid>
    80006254:	00005497          	auipc	s1,0x5
    80006258:	44c48493          	addi	s1,s1,1100 # 8000b6a0 <started>
    8000625c:	02050263          	beqz	a0,80006280 <system_main+0x48>
    80006260:	0004a783          	lw	a5,0(s1)
    80006264:	0007879b          	sext.w	a5,a5
    80006268:	fe078ce3          	beqz	a5,80006260 <system_main+0x28>
    8000626c:	0ff0000f          	fence
    80006270:	00003517          	auipc	a0,0x3
    80006274:	3b050513          	addi	a0,a0,944 # 80009620 <CONSOLE_STATUS+0x610>
    80006278:	00001097          	auipc	ra,0x1
    8000627c:	a74080e7          	jalr	-1420(ra) # 80006cec <panic>
    80006280:	00001097          	auipc	ra,0x1
    80006284:	9c8080e7          	jalr	-1592(ra) # 80006c48 <consoleinit>
    80006288:	00001097          	auipc	ra,0x1
    8000628c:	154080e7          	jalr	340(ra) # 800073dc <printfinit>
    80006290:	00003517          	auipc	a0,0x3
    80006294:	21850513          	addi	a0,a0,536 # 800094a8 <CONSOLE_STATUS+0x498>
    80006298:	00001097          	auipc	ra,0x1
    8000629c:	ab0080e7          	jalr	-1360(ra) # 80006d48 <__printf>
    800062a0:	00003517          	auipc	a0,0x3
    800062a4:	35050513          	addi	a0,a0,848 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800062a8:	00001097          	auipc	ra,0x1
    800062ac:	aa0080e7          	jalr	-1376(ra) # 80006d48 <__printf>
    800062b0:	00003517          	auipc	a0,0x3
    800062b4:	1f850513          	addi	a0,a0,504 # 800094a8 <CONSOLE_STATUS+0x498>
    800062b8:	00001097          	auipc	ra,0x1
    800062bc:	a90080e7          	jalr	-1392(ra) # 80006d48 <__printf>
    800062c0:	00001097          	auipc	ra,0x1
    800062c4:	4a8080e7          	jalr	1192(ra) # 80007768 <kinit>
    800062c8:	00000097          	auipc	ra,0x0
    800062cc:	148080e7          	jalr	328(ra) # 80006410 <trapinit>
    800062d0:	00000097          	auipc	ra,0x0
    800062d4:	16c080e7          	jalr	364(ra) # 8000643c <trapinithart>
    800062d8:	00000097          	auipc	ra,0x0
    800062dc:	5b8080e7          	jalr	1464(ra) # 80006890 <plicinit>
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	5d8080e7          	jalr	1496(ra) # 800068b8 <plicinithart>
    800062e8:	00000097          	auipc	ra,0x0
    800062ec:	078080e7          	jalr	120(ra) # 80006360 <userinit>
    800062f0:	0ff0000f          	fence
    800062f4:	00100793          	li	a5,1
    800062f8:	00003517          	auipc	a0,0x3
    800062fc:	31050513          	addi	a0,a0,784 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006300:	00f4a023          	sw	a5,0(s1)
    80006304:	00001097          	auipc	ra,0x1
    80006308:	a44080e7          	jalr	-1468(ra) # 80006d48 <__printf>
    8000630c:	0000006f          	j	8000630c <system_main+0xd4>

0000000080006310 <cpuid>:
    80006310:	ff010113          	addi	sp,sp,-16
    80006314:	00813423          	sd	s0,8(sp)
    80006318:	01010413          	addi	s0,sp,16
    8000631c:	00020513          	mv	a0,tp
    80006320:	00813403          	ld	s0,8(sp)
    80006324:	0005051b          	sext.w	a0,a0
    80006328:	01010113          	addi	sp,sp,16
    8000632c:	00008067          	ret

0000000080006330 <mycpu>:
    80006330:	ff010113          	addi	sp,sp,-16
    80006334:	00813423          	sd	s0,8(sp)
    80006338:	01010413          	addi	s0,sp,16
    8000633c:	00020793          	mv	a5,tp
    80006340:	00813403          	ld	s0,8(sp)
    80006344:	0007879b          	sext.w	a5,a5
    80006348:	00779793          	slli	a5,a5,0x7
    8000634c:	00006517          	auipc	a0,0x6
    80006350:	44450513          	addi	a0,a0,1092 # 8000c790 <cpus>
    80006354:	00f50533          	add	a0,a0,a5
    80006358:	01010113          	addi	sp,sp,16
    8000635c:	00008067          	ret

0000000080006360 <userinit>:
    80006360:	ff010113          	addi	sp,sp,-16
    80006364:	00813423          	sd	s0,8(sp)
    80006368:	01010413          	addi	s0,sp,16
    8000636c:	00813403          	ld	s0,8(sp)
    80006370:	01010113          	addi	sp,sp,16
    80006374:	ffffb317          	auipc	t1,0xffffb
    80006378:	4f830067          	jr	1272(t1) # 8000186c <main>

000000008000637c <either_copyout>:
    8000637c:	ff010113          	addi	sp,sp,-16
    80006380:	00813023          	sd	s0,0(sp)
    80006384:	00113423          	sd	ra,8(sp)
    80006388:	01010413          	addi	s0,sp,16
    8000638c:	02051663          	bnez	a0,800063b8 <either_copyout+0x3c>
    80006390:	00058513          	mv	a0,a1
    80006394:	00060593          	mv	a1,a2
    80006398:	0006861b          	sext.w	a2,a3
    8000639c:	00002097          	auipc	ra,0x2
    800063a0:	c58080e7          	jalr	-936(ra) # 80007ff4 <__memmove>
    800063a4:	00813083          	ld	ra,8(sp)
    800063a8:	00013403          	ld	s0,0(sp)
    800063ac:	00000513          	li	a0,0
    800063b0:	01010113          	addi	sp,sp,16
    800063b4:	00008067          	ret
    800063b8:	00003517          	auipc	a0,0x3
    800063bc:	29050513          	addi	a0,a0,656 # 80009648 <CONSOLE_STATUS+0x638>
    800063c0:	00001097          	auipc	ra,0x1
    800063c4:	92c080e7          	jalr	-1748(ra) # 80006cec <panic>

00000000800063c8 <either_copyin>:
    800063c8:	ff010113          	addi	sp,sp,-16
    800063cc:	00813023          	sd	s0,0(sp)
    800063d0:	00113423          	sd	ra,8(sp)
    800063d4:	01010413          	addi	s0,sp,16
    800063d8:	02059463          	bnez	a1,80006400 <either_copyin+0x38>
    800063dc:	00060593          	mv	a1,a2
    800063e0:	0006861b          	sext.w	a2,a3
    800063e4:	00002097          	auipc	ra,0x2
    800063e8:	c10080e7          	jalr	-1008(ra) # 80007ff4 <__memmove>
    800063ec:	00813083          	ld	ra,8(sp)
    800063f0:	00013403          	ld	s0,0(sp)
    800063f4:	00000513          	li	a0,0
    800063f8:	01010113          	addi	sp,sp,16
    800063fc:	00008067          	ret
    80006400:	00003517          	auipc	a0,0x3
    80006404:	27050513          	addi	a0,a0,624 # 80009670 <CONSOLE_STATUS+0x660>
    80006408:	00001097          	auipc	ra,0x1
    8000640c:	8e4080e7          	jalr	-1820(ra) # 80006cec <panic>

0000000080006410 <trapinit>:
    80006410:	ff010113          	addi	sp,sp,-16
    80006414:	00813423          	sd	s0,8(sp)
    80006418:	01010413          	addi	s0,sp,16
    8000641c:	00813403          	ld	s0,8(sp)
    80006420:	00003597          	auipc	a1,0x3
    80006424:	27858593          	addi	a1,a1,632 # 80009698 <CONSOLE_STATUS+0x688>
    80006428:	00006517          	auipc	a0,0x6
    8000642c:	3e850513          	addi	a0,a0,1000 # 8000c810 <tickslock>
    80006430:	01010113          	addi	sp,sp,16
    80006434:	00001317          	auipc	t1,0x1
    80006438:	5c430067          	jr	1476(t1) # 800079f8 <initlock>

000000008000643c <trapinithart>:
    8000643c:	ff010113          	addi	sp,sp,-16
    80006440:	00813423          	sd	s0,8(sp)
    80006444:	01010413          	addi	s0,sp,16
    80006448:	00000797          	auipc	a5,0x0
    8000644c:	2f878793          	addi	a5,a5,760 # 80006740 <kernelvec>
    80006450:	10579073          	csrw	stvec,a5
    80006454:	00813403          	ld	s0,8(sp)
    80006458:	01010113          	addi	sp,sp,16
    8000645c:	00008067          	ret

0000000080006460 <usertrap>:
    80006460:	ff010113          	addi	sp,sp,-16
    80006464:	00813423          	sd	s0,8(sp)
    80006468:	01010413          	addi	s0,sp,16
    8000646c:	00813403          	ld	s0,8(sp)
    80006470:	01010113          	addi	sp,sp,16
    80006474:	00008067          	ret

0000000080006478 <usertrapret>:
    80006478:	ff010113          	addi	sp,sp,-16
    8000647c:	00813423          	sd	s0,8(sp)
    80006480:	01010413          	addi	s0,sp,16
    80006484:	00813403          	ld	s0,8(sp)
    80006488:	01010113          	addi	sp,sp,16
    8000648c:	00008067          	ret

0000000080006490 <kerneltrap>:
    80006490:	fe010113          	addi	sp,sp,-32
    80006494:	00813823          	sd	s0,16(sp)
    80006498:	00113c23          	sd	ra,24(sp)
    8000649c:	00913423          	sd	s1,8(sp)
    800064a0:	02010413          	addi	s0,sp,32
    800064a4:	142025f3          	csrr	a1,scause
    800064a8:	100027f3          	csrr	a5,sstatus
    800064ac:	0027f793          	andi	a5,a5,2
    800064b0:	10079c63          	bnez	a5,800065c8 <kerneltrap+0x138>
    800064b4:	142027f3          	csrr	a5,scause
    800064b8:	0207ce63          	bltz	a5,800064f4 <kerneltrap+0x64>
    800064bc:	00003517          	auipc	a0,0x3
    800064c0:	22450513          	addi	a0,a0,548 # 800096e0 <CONSOLE_STATUS+0x6d0>
    800064c4:	00001097          	auipc	ra,0x1
    800064c8:	884080e7          	jalr	-1916(ra) # 80006d48 <__printf>
    800064cc:	141025f3          	csrr	a1,sepc
    800064d0:	14302673          	csrr	a2,stval
    800064d4:	00003517          	auipc	a0,0x3
    800064d8:	21c50513          	addi	a0,a0,540 # 800096f0 <CONSOLE_STATUS+0x6e0>
    800064dc:	00001097          	auipc	ra,0x1
    800064e0:	86c080e7          	jalr	-1940(ra) # 80006d48 <__printf>
    800064e4:	00003517          	auipc	a0,0x3
    800064e8:	22450513          	addi	a0,a0,548 # 80009708 <CONSOLE_STATUS+0x6f8>
    800064ec:	00001097          	auipc	ra,0x1
    800064f0:	800080e7          	jalr	-2048(ra) # 80006cec <panic>
    800064f4:	0ff7f713          	andi	a4,a5,255
    800064f8:	00900693          	li	a3,9
    800064fc:	04d70063          	beq	a4,a3,8000653c <kerneltrap+0xac>
    80006500:	fff00713          	li	a4,-1
    80006504:	03f71713          	slli	a4,a4,0x3f
    80006508:	00170713          	addi	a4,a4,1
    8000650c:	fae798e3          	bne	a5,a4,800064bc <kerneltrap+0x2c>
    80006510:	00000097          	auipc	ra,0x0
    80006514:	e00080e7          	jalr	-512(ra) # 80006310 <cpuid>
    80006518:	06050663          	beqz	a0,80006584 <kerneltrap+0xf4>
    8000651c:	144027f3          	csrr	a5,sip
    80006520:	ffd7f793          	andi	a5,a5,-3
    80006524:	14479073          	csrw	sip,a5
    80006528:	01813083          	ld	ra,24(sp)
    8000652c:	01013403          	ld	s0,16(sp)
    80006530:	00813483          	ld	s1,8(sp)
    80006534:	02010113          	addi	sp,sp,32
    80006538:	00008067          	ret
    8000653c:	00000097          	auipc	ra,0x0
    80006540:	3c8080e7          	jalr	968(ra) # 80006904 <plic_claim>
    80006544:	00a00793          	li	a5,10
    80006548:	00050493          	mv	s1,a0
    8000654c:	06f50863          	beq	a0,a5,800065bc <kerneltrap+0x12c>
    80006550:	fc050ce3          	beqz	a0,80006528 <kerneltrap+0x98>
    80006554:	00050593          	mv	a1,a0
    80006558:	00003517          	auipc	a0,0x3
    8000655c:	16850513          	addi	a0,a0,360 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80006560:	00000097          	auipc	ra,0x0
    80006564:	7e8080e7          	jalr	2024(ra) # 80006d48 <__printf>
    80006568:	01013403          	ld	s0,16(sp)
    8000656c:	01813083          	ld	ra,24(sp)
    80006570:	00048513          	mv	a0,s1
    80006574:	00813483          	ld	s1,8(sp)
    80006578:	02010113          	addi	sp,sp,32
    8000657c:	00000317          	auipc	t1,0x0
    80006580:	3c030067          	jr	960(t1) # 8000693c <plic_complete>
    80006584:	00006517          	auipc	a0,0x6
    80006588:	28c50513          	addi	a0,a0,652 # 8000c810 <tickslock>
    8000658c:	00001097          	auipc	ra,0x1
    80006590:	490080e7          	jalr	1168(ra) # 80007a1c <acquire>
    80006594:	00005717          	auipc	a4,0x5
    80006598:	11070713          	addi	a4,a4,272 # 8000b6a4 <ticks>
    8000659c:	00072783          	lw	a5,0(a4)
    800065a0:	00006517          	auipc	a0,0x6
    800065a4:	27050513          	addi	a0,a0,624 # 8000c810 <tickslock>
    800065a8:	0017879b          	addiw	a5,a5,1
    800065ac:	00f72023          	sw	a5,0(a4)
    800065b0:	00001097          	auipc	ra,0x1
    800065b4:	538080e7          	jalr	1336(ra) # 80007ae8 <release>
    800065b8:	f65ff06f          	j	8000651c <kerneltrap+0x8c>
    800065bc:	00001097          	auipc	ra,0x1
    800065c0:	094080e7          	jalr	148(ra) # 80007650 <uartintr>
    800065c4:	fa5ff06f          	j	80006568 <kerneltrap+0xd8>
    800065c8:	00003517          	auipc	a0,0x3
    800065cc:	0d850513          	addi	a0,a0,216 # 800096a0 <CONSOLE_STATUS+0x690>
    800065d0:	00000097          	auipc	ra,0x0
    800065d4:	71c080e7          	jalr	1820(ra) # 80006cec <panic>

00000000800065d8 <clockintr>:
    800065d8:	fe010113          	addi	sp,sp,-32
    800065dc:	00813823          	sd	s0,16(sp)
    800065e0:	00913423          	sd	s1,8(sp)
    800065e4:	00113c23          	sd	ra,24(sp)
    800065e8:	02010413          	addi	s0,sp,32
    800065ec:	00006497          	auipc	s1,0x6
    800065f0:	22448493          	addi	s1,s1,548 # 8000c810 <tickslock>
    800065f4:	00048513          	mv	a0,s1
    800065f8:	00001097          	auipc	ra,0x1
    800065fc:	424080e7          	jalr	1060(ra) # 80007a1c <acquire>
    80006600:	00005717          	auipc	a4,0x5
    80006604:	0a470713          	addi	a4,a4,164 # 8000b6a4 <ticks>
    80006608:	00072783          	lw	a5,0(a4)
    8000660c:	01013403          	ld	s0,16(sp)
    80006610:	01813083          	ld	ra,24(sp)
    80006614:	00048513          	mv	a0,s1
    80006618:	0017879b          	addiw	a5,a5,1
    8000661c:	00813483          	ld	s1,8(sp)
    80006620:	00f72023          	sw	a5,0(a4)
    80006624:	02010113          	addi	sp,sp,32
    80006628:	00001317          	auipc	t1,0x1
    8000662c:	4c030067          	jr	1216(t1) # 80007ae8 <release>

0000000080006630 <devintr>:
    80006630:	142027f3          	csrr	a5,scause
    80006634:	00000513          	li	a0,0
    80006638:	0007c463          	bltz	a5,80006640 <devintr+0x10>
    8000663c:	00008067          	ret
    80006640:	fe010113          	addi	sp,sp,-32
    80006644:	00813823          	sd	s0,16(sp)
    80006648:	00113c23          	sd	ra,24(sp)
    8000664c:	00913423          	sd	s1,8(sp)
    80006650:	02010413          	addi	s0,sp,32
    80006654:	0ff7f713          	andi	a4,a5,255
    80006658:	00900693          	li	a3,9
    8000665c:	04d70c63          	beq	a4,a3,800066b4 <devintr+0x84>
    80006660:	fff00713          	li	a4,-1
    80006664:	03f71713          	slli	a4,a4,0x3f
    80006668:	00170713          	addi	a4,a4,1
    8000666c:	00e78c63          	beq	a5,a4,80006684 <devintr+0x54>
    80006670:	01813083          	ld	ra,24(sp)
    80006674:	01013403          	ld	s0,16(sp)
    80006678:	00813483          	ld	s1,8(sp)
    8000667c:	02010113          	addi	sp,sp,32
    80006680:	00008067          	ret
    80006684:	00000097          	auipc	ra,0x0
    80006688:	c8c080e7          	jalr	-884(ra) # 80006310 <cpuid>
    8000668c:	06050663          	beqz	a0,800066f8 <devintr+0xc8>
    80006690:	144027f3          	csrr	a5,sip
    80006694:	ffd7f793          	andi	a5,a5,-3
    80006698:	14479073          	csrw	sip,a5
    8000669c:	01813083          	ld	ra,24(sp)
    800066a0:	01013403          	ld	s0,16(sp)
    800066a4:	00813483          	ld	s1,8(sp)
    800066a8:	00200513          	li	a0,2
    800066ac:	02010113          	addi	sp,sp,32
    800066b0:	00008067          	ret
    800066b4:	00000097          	auipc	ra,0x0
    800066b8:	250080e7          	jalr	592(ra) # 80006904 <plic_claim>
    800066bc:	00a00793          	li	a5,10
    800066c0:	00050493          	mv	s1,a0
    800066c4:	06f50663          	beq	a0,a5,80006730 <devintr+0x100>
    800066c8:	00100513          	li	a0,1
    800066cc:	fa0482e3          	beqz	s1,80006670 <devintr+0x40>
    800066d0:	00048593          	mv	a1,s1
    800066d4:	00003517          	auipc	a0,0x3
    800066d8:	fec50513          	addi	a0,a0,-20 # 800096c0 <CONSOLE_STATUS+0x6b0>
    800066dc:	00000097          	auipc	ra,0x0
    800066e0:	66c080e7          	jalr	1644(ra) # 80006d48 <__printf>
    800066e4:	00048513          	mv	a0,s1
    800066e8:	00000097          	auipc	ra,0x0
    800066ec:	254080e7          	jalr	596(ra) # 8000693c <plic_complete>
    800066f0:	00100513          	li	a0,1
    800066f4:	f7dff06f          	j	80006670 <devintr+0x40>
    800066f8:	00006517          	auipc	a0,0x6
    800066fc:	11850513          	addi	a0,a0,280 # 8000c810 <tickslock>
    80006700:	00001097          	auipc	ra,0x1
    80006704:	31c080e7          	jalr	796(ra) # 80007a1c <acquire>
    80006708:	00005717          	auipc	a4,0x5
    8000670c:	f9c70713          	addi	a4,a4,-100 # 8000b6a4 <ticks>
    80006710:	00072783          	lw	a5,0(a4)
    80006714:	00006517          	auipc	a0,0x6
    80006718:	0fc50513          	addi	a0,a0,252 # 8000c810 <tickslock>
    8000671c:	0017879b          	addiw	a5,a5,1
    80006720:	00f72023          	sw	a5,0(a4)
    80006724:	00001097          	auipc	ra,0x1
    80006728:	3c4080e7          	jalr	964(ra) # 80007ae8 <release>
    8000672c:	f65ff06f          	j	80006690 <devintr+0x60>
    80006730:	00001097          	auipc	ra,0x1
    80006734:	f20080e7          	jalr	-224(ra) # 80007650 <uartintr>
    80006738:	fadff06f          	j	800066e4 <devintr+0xb4>
    8000673c:	0000                	unimp
	...

0000000080006740 <kernelvec>:
    80006740:	f0010113          	addi	sp,sp,-256
    80006744:	00113023          	sd	ra,0(sp)
    80006748:	00213423          	sd	sp,8(sp)
    8000674c:	00313823          	sd	gp,16(sp)
    80006750:	00413c23          	sd	tp,24(sp)
    80006754:	02513023          	sd	t0,32(sp)
    80006758:	02613423          	sd	t1,40(sp)
    8000675c:	02713823          	sd	t2,48(sp)
    80006760:	02813c23          	sd	s0,56(sp)
    80006764:	04913023          	sd	s1,64(sp)
    80006768:	04a13423          	sd	a0,72(sp)
    8000676c:	04b13823          	sd	a1,80(sp)
    80006770:	04c13c23          	sd	a2,88(sp)
    80006774:	06d13023          	sd	a3,96(sp)
    80006778:	06e13423          	sd	a4,104(sp)
    8000677c:	06f13823          	sd	a5,112(sp)
    80006780:	07013c23          	sd	a6,120(sp)
    80006784:	09113023          	sd	a7,128(sp)
    80006788:	09213423          	sd	s2,136(sp)
    8000678c:	09313823          	sd	s3,144(sp)
    80006790:	09413c23          	sd	s4,152(sp)
    80006794:	0b513023          	sd	s5,160(sp)
    80006798:	0b613423          	sd	s6,168(sp)
    8000679c:	0b713823          	sd	s7,176(sp)
    800067a0:	0b813c23          	sd	s8,184(sp)
    800067a4:	0d913023          	sd	s9,192(sp)
    800067a8:	0da13423          	sd	s10,200(sp)
    800067ac:	0db13823          	sd	s11,208(sp)
    800067b0:	0dc13c23          	sd	t3,216(sp)
    800067b4:	0fd13023          	sd	t4,224(sp)
    800067b8:	0fe13423          	sd	t5,232(sp)
    800067bc:	0ff13823          	sd	t6,240(sp)
    800067c0:	cd1ff0ef          	jal	ra,80006490 <kerneltrap>
    800067c4:	00013083          	ld	ra,0(sp)
    800067c8:	00813103          	ld	sp,8(sp)
    800067cc:	01013183          	ld	gp,16(sp)
    800067d0:	02013283          	ld	t0,32(sp)
    800067d4:	02813303          	ld	t1,40(sp)
    800067d8:	03013383          	ld	t2,48(sp)
    800067dc:	03813403          	ld	s0,56(sp)
    800067e0:	04013483          	ld	s1,64(sp)
    800067e4:	04813503          	ld	a0,72(sp)
    800067e8:	05013583          	ld	a1,80(sp)
    800067ec:	05813603          	ld	a2,88(sp)
    800067f0:	06013683          	ld	a3,96(sp)
    800067f4:	06813703          	ld	a4,104(sp)
    800067f8:	07013783          	ld	a5,112(sp)
    800067fc:	07813803          	ld	a6,120(sp)
    80006800:	08013883          	ld	a7,128(sp)
    80006804:	08813903          	ld	s2,136(sp)
    80006808:	09013983          	ld	s3,144(sp)
    8000680c:	09813a03          	ld	s4,152(sp)
    80006810:	0a013a83          	ld	s5,160(sp)
    80006814:	0a813b03          	ld	s6,168(sp)
    80006818:	0b013b83          	ld	s7,176(sp)
    8000681c:	0b813c03          	ld	s8,184(sp)
    80006820:	0c013c83          	ld	s9,192(sp)
    80006824:	0c813d03          	ld	s10,200(sp)
    80006828:	0d013d83          	ld	s11,208(sp)
    8000682c:	0d813e03          	ld	t3,216(sp)
    80006830:	0e013e83          	ld	t4,224(sp)
    80006834:	0e813f03          	ld	t5,232(sp)
    80006838:	0f013f83          	ld	t6,240(sp)
    8000683c:	10010113          	addi	sp,sp,256
    80006840:	10200073          	sret
    80006844:	00000013          	nop
    80006848:	00000013          	nop
    8000684c:	00000013          	nop

0000000080006850 <timervec>:
    80006850:	34051573          	csrrw	a0,mscratch,a0
    80006854:	00b53023          	sd	a1,0(a0)
    80006858:	00c53423          	sd	a2,8(a0)
    8000685c:	00d53823          	sd	a3,16(a0)
    80006860:	01853583          	ld	a1,24(a0)
    80006864:	02053603          	ld	a2,32(a0)
    80006868:	0005b683          	ld	a3,0(a1)
    8000686c:	00c686b3          	add	a3,a3,a2
    80006870:	00d5b023          	sd	a3,0(a1)
    80006874:	00200593          	li	a1,2
    80006878:	14459073          	csrw	sip,a1
    8000687c:	01053683          	ld	a3,16(a0)
    80006880:	00853603          	ld	a2,8(a0)
    80006884:	00053583          	ld	a1,0(a0)
    80006888:	34051573          	csrrw	a0,mscratch,a0
    8000688c:	30200073          	mret

0000000080006890 <plicinit>:
    80006890:	ff010113          	addi	sp,sp,-16
    80006894:	00813423          	sd	s0,8(sp)
    80006898:	01010413          	addi	s0,sp,16
    8000689c:	00813403          	ld	s0,8(sp)
    800068a0:	0c0007b7          	lui	a5,0xc000
    800068a4:	00100713          	li	a4,1
    800068a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800068ac:	00e7a223          	sw	a4,4(a5)
    800068b0:	01010113          	addi	sp,sp,16
    800068b4:	00008067          	ret

00000000800068b8 <plicinithart>:
    800068b8:	ff010113          	addi	sp,sp,-16
    800068bc:	00813023          	sd	s0,0(sp)
    800068c0:	00113423          	sd	ra,8(sp)
    800068c4:	01010413          	addi	s0,sp,16
    800068c8:	00000097          	auipc	ra,0x0
    800068cc:	a48080e7          	jalr	-1464(ra) # 80006310 <cpuid>
    800068d0:	0085171b          	slliw	a4,a0,0x8
    800068d4:	0c0027b7          	lui	a5,0xc002
    800068d8:	00e787b3          	add	a5,a5,a4
    800068dc:	40200713          	li	a4,1026
    800068e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800068e4:	00813083          	ld	ra,8(sp)
    800068e8:	00013403          	ld	s0,0(sp)
    800068ec:	00d5151b          	slliw	a0,a0,0xd
    800068f0:	0c2017b7          	lui	a5,0xc201
    800068f4:	00a78533          	add	a0,a5,a0
    800068f8:	00052023          	sw	zero,0(a0)
    800068fc:	01010113          	addi	sp,sp,16
    80006900:	00008067          	ret

0000000080006904 <plic_claim>:
    80006904:	ff010113          	addi	sp,sp,-16
    80006908:	00813023          	sd	s0,0(sp)
    8000690c:	00113423          	sd	ra,8(sp)
    80006910:	01010413          	addi	s0,sp,16
    80006914:	00000097          	auipc	ra,0x0
    80006918:	9fc080e7          	jalr	-1540(ra) # 80006310 <cpuid>
    8000691c:	00813083          	ld	ra,8(sp)
    80006920:	00013403          	ld	s0,0(sp)
    80006924:	00d5151b          	slliw	a0,a0,0xd
    80006928:	0c2017b7          	lui	a5,0xc201
    8000692c:	00a78533          	add	a0,a5,a0
    80006930:	00452503          	lw	a0,4(a0)
    80006934:	01010113          	addi	sp,sp,16
    80006938:	00008067          	ret

000000008000693c <plic_complete>:
    8000693c:	fe010113          	addi	sp,sp,-32
    80006940:	00813823          	sd	s0,16(sp)
    80006944:	00913423          	sd	s1,8(sp)
    80006948:	00113c23          	sd	ra,24(sp)
    8000694c:	02010413          	addi	s0,sp,32
    80006950:	00050493          	mv	s1,a0
    80006954:	00000097          	auipc	ra,0x0
    80006958:	9bc080e7          	jalr	-1604(ra) # 80006310 <cpuid>
    8000695c:	01813083          	ld	ra,24(sp)
    80006960:	01013403          	ld	s0,16(sp)
    80006964:	00d5179b          	slliw	a5,a0,0xd
    80006968:	0c201737          	lui	a4,0xc201
    8000696c:	00f707b3          	add	a5,a4,a5
    80006970:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006974:	00813483          	ld	s1,8(sp)
    80006978:	02010113          	addi	sp,sp,32
    8000697c:	00008067          	ret

0000000080006980 <consolewrite>:
    80006980:	fb010113          	addi	sp,sp,-80
    80006984:	04813023          	sd	s0,64(sp)
    80006988:	04113423          	sd	ra,72(sp)
    8000698c:	02913c23          	sd	s1,56(sp)
    80006990:	03213823          	sd	s2,48(sp)
    80006994:	03313423          	sd	s3,40(sp)
    80006998:	03413023          	sd	s4,32(sp)
    8000699c:	01513c23          	sd	s5,24(sp)
    800069a0:	05010413          	addi	s0,sp,80
    800069a4:	06c05c63          	blez	a2,80006a1c <consolewrite+0x9c>
    800069a8:	00060993          	mv	s3,a2
    800069ac:	00050a13          	mv	s4,a0
    800069b0:	00058493          	mv	s1,a1
    800069b4:	00000913          	li	s2,0
    800069b8:	fff00a93          	li	s5,-1
    800069bc:	01c0006f          	j	800069d8 <consolewrite+0x58>
    800069c0:	fbf44503          	lbu	a0,-65(s0)
    800069c4:	0019091b          	addiw	s2,s2,1
    800069c8:	00148493          	addi	s1,s1,1
    800069cc:	00001097          	auipc	ra,0x1
    800069d0:	a9c080e7          	jalr	-1380(ra) # 80007468 <uartputc>
    800069d4:	03298063          	beq	s3,s2,800069f4 <consolewrite+0x74>
    800069d8:	00048613          	mv	a2,s1
    800069dc:	00100693          	li	a3,1
    800069e0:	000a0593          	mv	a1,s4
    800069e4:	fbf40513          	addi	a0,s0,-65
    800069e8:	00000097          	auipc	ra,0x0
    800069ec:	9e0080e7          	jalr	-1568(ra) # 800063c8 <either_copyin>
    800069f0:	fd5518e3          	bne	a0,s5,800069c0 <consolewrite+0x40>
    800069f4:	04813083          	ld	ra,72(sp)
    800069f8:	04013403          	ld	s0,64(sp)
    800069fc:	03813483          	ld	s1,56(sp)
    80006a00:	02813983          	ld	s3,40(sp)
    80006a04:	02013a03          	ld	s4,32(sp)
    80006a08:	01813a83          	ld	s5,24(sp)
    80006a0c:	00090513          	mv	a0,s2
    80006a10:	03013903          	ld	s2,48(sp)
    80006a14:	05010113          	addi	sp,sp,80
    80006a18:	00008067          	ret
    80006a1c:	00000913          	li	s2,0
    80006a20:	fd5ff06f          	j	800069f4 <consolewrite+0x74>

0000000080006a24 <consoleread>:
    80006a24:	f9010113          	addi	sp,sp,-112
    80006a28:	06813023          	sd	s0,96(sp)
    80006a2c:	04913c23          	sd	s1,88(sp)
    80006a30:	05213823          	sd	s2,80(sp)
    80006a34:	05313423          	sd	s3,72(sp)
    80006a38:	05413023          	sd	s4,64(sp)
    80006a3c:	03513c23          	sd	s5,56(sp)
    80006a40:	03613823          	sd	s6,48(sp)
    80006a44:	03713423          	sd	s7,40(sp)
    80006a48:	03813023          	sd	s8,32(sp)
    80006a4c:	06113423          	sd	ra,104(sp)
    80006a50:	01913c23          	sd	s9,24(sp)
    80006a54:	07010413          	addi	s0,sp,112
    80006a58:	00060b93          	mv	s7,a2
    80006a5c:	00050913          	mv	s2,a0
    80006a60:	00058c13          	mv	s8,a1
    80006a64:	00060b1b          	sext.w	s6,a2
    80006a68:	00006497          	auipc	s1,0x6
    80006a6c:	dd048493          	addi	s1,s1,-560 # 8000c838 <cons>
    80006a70:	00400993          	li	s3,4
    80006a74:	fff00a13          	li	s4,-1
    80006a78:	00a00a93          	li	s5,10
    80006a7c:	05705e63          	blez	s7,80006ad8 <consoleread+0xb4>
    80006a80:	09c4a703          	lw	a4,156(s1)
    80006a84:	0984a783          	lw	a5,152(s1)
    80006a88:	0007071b          	sext.w	a4,a4
    80006a8c:	08e78463          	beq	a5,a4,80006b14 <consoleread+0xf0>
    80006a90:	07f7f713          	andi	a4,a5,127
    80006a94:	00e48733          	add	a4,s1,a4
    80006a98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006a9c:	0017869b          	addiw	a3,a5,1
    80006aa0:	08d4ac23          	sw	a3,152(s1)
    80006aa4:	00070c9b          	sext.w	s9,a4
    80006aa8:	0b370663          	beq	a4,s3,80006b54 <consoleread+0x130>
    80006aac:	00100693          	li	a3,1
    80006ab0:	f9f40613          	addi	a2,s0,-97
    80006ab4:	000c0593          	mv	a1,s8
    80006ab8:	00090513          	mv	a0,s2
    80006abc:	f8e40fa3          	sb	a4,-97(s0)
    80006ac0:	00000097          	auipc	ra,0x0
    80006ac4:	8bc080e7          	jalr	-1860(ra) # 8000637c <either_copyout>
    80006ac8:	01450863          	beq	a0,s4,80006ad8 <consoleread+0xb4>
    80006acc:	001c0c13          	addi	s8,s8,1
    80006ad0:	fffb8b9b          	addiw	s7,s7,-1
    80006ad4:	fb5c94e3          	bne	s9,s5,80006a7c <consoleread+0x58>
    80006ad8:	000b851b          	sext.w	a0,s7
    80006adc:	06813083          	ld	ra,104(sp)
    80006ae0:	06013403          	ld	s0,96(sp)
    80006ae4:	05813483          	ld	s1,88(sp)
    80006ae8:	05013903          	ld	s2,80(sp)
    80006aec:	04813983          	ld	s3,72(sp)
    80006af0:	04013a03          	ld	s4,64(sp)
    80006af4:	03813a83          	ld	s5,56(sp)
    80006af8:	02813b83          	ld	s7,40(sp)
    80006afc:	02013c03          	ld	s8,32(sp)
    80006b00:	01813c83          	ld	s9,24(sp)
    80006b04:	40ab053b          	subw	a0,s6,a0
    80006b08:	03013b03          	ld	s6,48(sp)
    80006b0c:	07010113          	addi	sp,sp,112
    80006b10:	00008067          	ret
    80006b14:	00001097          	auipc	ra,0x1
    80006b18:	1d8080e7          	jalr	472(ra) # 80007cec <push_on>
    80006b1c:	0984a703          	lw	a4,152(s1)
    80006b20:	09c4a783          	lw	a5,156(s1)
    80006b24:	0007879b          	sext.w	a5,a5
    80006b28:	fef70ce3          	beq	a4,a5,80006b20 <consoleread+0xfc>
    80006b2c:	00001097          	auipc	ra,0x1
    80006b30:	234080e7          	jalr	564(ra) # 80007d60 <pop_on>
    80006b34:	0984a783          	lw	a5,152(s1)
    80006b38:	07f7f713          	andi	a4,a5,127
    80006b3c:	00e48733          	add	a4,s1,a4
    80006b40:	01874703          	lbu	a4,24(a4)
    80006b44:	0017869b          	addiw	a3,a5,1
    80006b48:	08d4ac23          	sw	a3,152(s1)
    80006b4c:	00070c9b          	sext.w	s9,a4
    80006b50:	f5371ee3          	bne	a4,s3,80006aac <consoleread+0x88>
    80006b54:	000b851b          	sext.w	a0,s7
    80006b58:	f96bf2e3          	bgeu	s7,s6,80006adc <consoleread+0xb8>
    80006b5c:	08f4ac23          	sw	a5,152(s1)
    80006b60:	f7dff06f          	j	80006adc <consoleread+0xb8>

0000000080006b64 <consputc>:
    80006b64:	10000793          	li	a5,256
    80006b68:	00f50663          	beq	a0,a5,80006b74 <consputc+0x10>
    80006b6c:	00001317          	auipc	t1,0x1
    80006b70:	9f430067          	jr	-1548(t1) # 80007560 <uartputc_sync>
    80006b74:	ff010113          	addi	sp,sp,-16
    80006b78:	00113423          	sd	ra,8(sp)
    80006b7c:	00813023          	sd	s0,0(sp)
    80006b80:	01010413          	addi	s0,sp,16
    80006b84:	00800513          	li	a0,8
    80006b88:	00001097          	auipc	ra,0x1
    80006b8c:	9d8080e7          	jalr	-1576(ra) # 80007560 <uartputc_sync>
    80006b90:	02000513          	li	a0,32
    80006b94:	00001097          	auipc	ra,0x1
    80006b98:	9cc080e7          	jalr	-1588(ra) # 80007560 <uartputc_sync>
    80006b9c:	00013403          	ld	s0,0(sp)
    80006ba0:	00813083          	ld	ra,8(sp)
    80006ba4:	00800513          	li	a0,8
    80006ba8:	01010113          	addi	sp,sp,16
    80006bac:	00001317          	auipc	t1,0x1
    80006bb0:	9b430067          	jr	-1612(t1) # 80007560 <uartputc_sync>

0000000080006bb4 <consoleintr>:
    80006bb4:	fe010113          	addi	sp,sp,-32
    80006bb8:	00813823          	sd	s0,16(sp)
    80006bbc:	00913423          	sd	s1,8(sp)
    80006bc0:	01213023          	sd	s2,0(sp)
    80006bc4:	00113c23          	sd	ra,24(sp)
    80006bc8:	02010413          	addi	s0,sp,32
    80006bcc:	00006917          	auipc	s2,0x6
    80006bd0:	c6c90913          	addi	s2,s2,-916 # 8000c838 <cons>
    80006bd4:	00050493          	mv	s1,a0
    80006bd8:	00090513          	mv	a0,s2
    80006bdc:	00001097          	auipc	ra,0x1
    80006be0:	e40080e7          	jalr	-448(ra) # 80007a1c <acquire>
    80006be4:	02048c63          	beqz	s1,80006c1c <consoleintr+0x68>
    80006be8:	0a092783          	lw	a5,160(s2)
    80006bec:	09892703          	lw	a4,152(s2)
    80006bf0:	07f00693          	li	a3,127
    80006bf4:	40e7873b          	subw	a4,a5,a4
    80006bf8:	02e6e263          	bltu	a3,a4,80006c1c <consoleintr+0x68>
    80006bfc:	00d00713          	li	a4,13
    80006c00:	04e48063          	beq	s1,a4,80006c40 <consoleintr+0x8c>
    80006c04:	07f7f713          	andi	a4,a5,127
    80006c08:	00e90733          	add	a4,s2,a4
    80006c0c:	0017879b          	addiw	a5,a5,1
    80006c10:	0af92023          	sw	a5,160(s2)
    80006c14:	00970c23          	sb	s1,24(a4)
    80006c18:	08f92e23          	sw	a5,156(s2)
    80006c1c:	01013403          	ld	s0,16(sp)
    80006c20:	01813083          	ld	ra,24(sp)
    80006c24:	00813483          	ld	s1,8(sp)
    80006c28:	00013903          	ld	s2,0(sp)
    80006c2c:	00006517          	auipc	a0,0x6
    80006c30:	c0c50513          	addi	a0,a0,-1012 # 8000c838 <cons>
    80006c34:	02010113          	addi	sp,sp,32
    80006c38:	00001317          	auipc	t1,0x1
    80006c3c:	eb030067          	jr	-336(t1) # 80007ae8 <release>
    80006c40:	00a00493          	li	s1,10
    80006c44:	fc1ff06f          	j	80006c04 <consoleintr+0x50>

0000000080006c48 <consoleinit>:
    80006c48:	fe010113          	addi	sp,sp,-32
    80006c4c:	00113c23          	sd	ra,24(sp)
    80006c50:	00813823          	sd	s0,16(sp)
    80006c54:	00913423          	sd	s1,8(sp)
    80006c58:	02010413          	addi	s0,sp,32
    80006c5c:	00006497          	auipc	s1,0x6
    80006c60:	bdc48493          	addi	s1,s1,-1060 # 8000c838 <cons>
    80006c64:	00048513          	mv	a0,s1
    80006c68:	00003597          	auipc	a1,0x3
    80006c6c:	ab058593          	addi	a1,a1,-1360 # 80009718 <CONSOLE_STATUS+0x708>
    80006c70:	00001097          	auipc	ra,0x1
    80006c74:	d88080e7          	jalr	-632(ra) # 800079f8 <initlock>
    80006c78:	00000097          	auipc	ra,0x0
    80006c7c:	7ac080e7          	jalr	1964(ra) # 80007424 <uartinit>
    80006c80:	01813083          	ld	ra,24(sp)
    80006c84:	01013403          	ld	s0,16(sp)
    80006c88:	00000797          	auipc	a5,0x0
    80006c8c:	d9c78793          	addi	a5,a5,-612 # 80006a24 <consoleread>
    80006c90:	0af4bc23          	sd	a5,184(s1)
    80006c94:	00000797          	auipc	a5,0x0
    80006c98:	cec78793          	addi	a5,a5,-788 # 80006980 <consolewrite>
    80006c9c:	0cf4b023          	sd	a5,192(s1)
    80006ca0:	00813483          	ld	s1,8(sp)
    80006ca4:	02010113          	addi	sp,sp,32
    80006ca8:	00008067          	ret

0000000080006cac <console_read>:
    80006cac:	ff010113          	addi	sp,sp,-16
    80006cb0:	00813423          	sd	s0,8(sp)
    80006cb4:	01010413          	addi	s0,sp,16
    80006cb8:	00813403          	ld	s0,8(sp)
    80006cbc:	00006317          	auipc	t1,0x6
    80006cc0:	c3433303          	ld	t1,-972(t1) # 8000c8f0 <devsw+0x10>
    80006cc4:	01010113          	addi	sp,sp,16
    80006cc8:	00030067          	jr	t1

0000000080006ccc <console_write>:
    80006ccc:	ff010113          	addi	sp,sp,-16
    80006cd0:	00813423          	sd	s0,8(sp)
    80006cd4:	01010413          	addi	s0,sp,16
    80006cd8:	00813403          	ld	s0,8(sp)
    80006cdc:	00006317          	auipc	t1,0x6
    80006ce0:	c1c33303          	ld	t1,-996(t1) # 8000c8f8 <devsw+0x18>
    80006ce4:	01010113          	addi	sp,sp,16
    80006ce8:	00030067          	jr	t1

0000000080006cec <panic>:
    80006cec:	fe010113          	addi	sp,sp,-32
    80006cf0:	00113c23          	sd	ra,24(sp)
    80006cf4:	00813823          	sd	s0,16(sp)
    80006cf8:	00913423          	sd	s1,8(sp)
    80006cfc:	02010413          	addi	s0,sp,32
    80006d00:	00050493          	mv	s1,a0
    80006d04:	00003517          	auipc	a0,0x3
    80006d08:	a1c50513          	addi	a0,a0,-1508 # 80009720 <CONSOLE_STATUS+0x710>
    80006d0c:	00006797          	auipc	a5,0x6
    80006d10:	c807a623          	sw	zero,-884(a5) # 8000c998 <pr+0x18>
    80006d14:	00000097          	auipc	ra,0x0
    80006d18:	034080e7          	jalr	52(ra) # 80006d48 <__printf>
    80006d1c:	00048513          	mv	a0,s1
    80006d20:	00000097          	auipc	ra,0x0
    80006d24:	028080e7          	jalr	40(ra) # 80006d48 <__printf>
    80006d28:	00002517          	auipc	a0,0x2
    80006d2c:	78050513          	addi	a0,a0,1920 # 800094a8 <CONSOLE_STATUS+0x498>
    80006d30:	00000097          	auipc	ra,0x0
    80006d34:	018080e7          	jalr	24(ra) # 80006d48 <__printf>
    80006d38:	00100793          	li	a5,1
    80006d3c:	00005717          	auipc	a4,0x5
    80006d40:	96f72623          	sw	a5,-1684(a4) # 8000b6a8 <panicked>
    80006d44:	0000006f          	j	80006d44 <panic+0x58>

0000000080006d48 <__printf>:
    80006d48:	f3010113          	addi	sp,sp,-208
    80006d4c:	08813023          	sd	s0,128(sp)
    80006d50:	07313423          	sd	s3,104(sp)
    80006d54:	09010413          	addi	s0,sp,144
    80006d58:	05813023          	sd	s8,64(sp)
    80006d5c:	08113423          	sd	ra,136(sp)
    80006d60:	06913c23          	sd	s1,120(sp)
    80006d64:	07213823          	sd	s2,112(sp)
    80006d68:	07413023          	sd	s4,96(sp)
    80006d6c:	05513c23          	sd	s5,88(sp)
    80006d70:	05613823          	sd	s6,80(sp)
    80006d74:	05713423          	sd	s7,72(sp)
    80006d78:	03913c23          	sd	s9,56(sp)
    80006d7c:	03a13823          	sd	s10,48(sp)
    80006d80:	03b13423          	sd	s11,40(sp)
    80006d84:	00006317          	auipc	t1,0x6
    80006d88:	bfc30313          	addi	t1,t1,-1028 # 8000c980 <pr>
    80006d8c:	01832c03          	lw	s8,24(t1)
    80006d90:	00b43423          	sd	a1,8(s0)
    80006d94:	00c43823          	sd	a2,16(s0)
    80006d98:	00d43c23          	sd	a3,24(s0)
    80006d9c:	02e43023          	sd	a4,32(s0)
    80006da0:	02f43423          	sd	a5,40(s0)
    80006da4:	03043823          	sd	a6,48(s0)
    80006da8:	03143c23          	sd	a7,56(s0)
    80006dac:	00050993          	mv	s3,a0
    80006db0:	4a0c1663          	bnez	s8,8000725c <__printf+0x514>
    80006db4:	60098c63          	beqz	s3,800073cc <__printf+0x684>
    80006db8:	0009c503          	lbu	a0,0(s3)
    80006dbc:	00840793          	addi	a5,s0,8
    80006dc0:	f6f43c23          	sd	a5,-136(s0)
    80006dc4:	00000493          	li	s1,0
    80006dc8:	22050063          	beqz	a0,80006fe8 <__printf+0x2a0>
    80006dcc:	00002a37          	lui	s4,0x2
    80006dd0:	00018ab7          	lui	s5,0x18
    80006dd4:	000f4b37          	lui	s6,0xf4
    80006dd8:	00989bb7          	lui	s7,0x989
    80006ddc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006de0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006de4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006de8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006dec:	00148c9b          	addiw	s9,s1,1
    80006df0:	02500793          	li	a5,37
    80006df4:	01998933          	add	s2,s3,s9
    80006df8:	38f51263          	bne	a0,a5,8000717c <__printf+0x434>
    80006dfc:	00094783          	lbu	a5,0(s2)
    80006e00:	00078c9b          	sext.w	s9,a5
    80006e04:	1e078263          	beqz	a5,80006fe8 <__printf+0x2a0>
    80006e08:	0024849b          	addiw	s1,s1,2
    80006e0c:	07000713          	li	a4,112
    80006e10:	00998933          	add	s2,s3,s1
    80006e14:	38e78a63          	beq	a5,a4,800071a8 <__printf+0x460>
    80006e18:	20f76863          	bltu	a4,a5,80007028 <__printf+0x2e0>
    80006e1c:	42a78863          	beq	a5,a0,8000724c <__printf+0x504>
    80006e20:	06400713          	li	a4,100
    80006e24:	40e79663          	bne	a5,a4,80007230 <__printf+0x4e8>
    80006e28:	f7843783          	ld	a5,-136(s0)
    80006e2c:	0007a603          	lw	a2,0(a5)
    80006e30:	00878793          	addi	a5,a5,8
    80006e34:	f6f43c23          	sd	a5,-136(s0)
    80006e38:	42064a63          	bltz	a2,8000726c <__printf+0x524>
    80006e3c:	00a00713          	li	a4,10
    80006e40:	02e677bb          	remuw	a5,a2,a4
    80006e44:	00003d97          	auipc	s11,0x3
    80006e48:	904d8d93          	addi	s11,s11,-1788 # 80009748 <digits>
    80006e4c:	00900593          	li	a1,9
    80006e50:	0006051b          	sext.w	a0,a2
    80006e54:	00000c93          	li	s9,0
    80006e58:	02079793          	slli	a5,a5,0x20
    80006e5c:	0207d793          	srli	a5,a5,0x20
    80006e60:	00fd87b3          	add	a5,s11,a5
    80006e64:	0007c783          	lbu	a5,0(a5)
    80006e68:	02e656bb          	divuw	a3,a2,a4
    80006e6c:	f8f40023          	sb	a5,-128(s0)
    80006e70:	14c5d863          	bge	a1,a2,80006fc0 <__printf+0x278>
    80006e74:	06300593          	li	a1,99
    80006e78:	00100c93          	li	s9,1
    80006e7c:	02e6f7bb          	remuw	a5,a3,a4
    80006e80:	02079793          	slli	a5,a5,0x20
    80006e84:	0207d793          	srli	a5,a5,0x20
    80006e88:	00fd87b3          	add	a5,s11,a5
    80006e8c:	0007c783          	lbu	a5,0(a5)
    80006e90:	02e6d73b          	divuw	a4,a3,a4
    80006e94:	f8f400a3          	sb	a5,-127(s0)
    80006e98:	12a5f463          	bgeu	a1,a0,80006fc0 <__printf+0x278>
    80006e9c:	00a00693          	li	a3,10
    80006ea0:	00900593          	li	a1,9
    80006ea4:	02d777bb          	remuw	a5,a4,a3
    80006ea8:	02079793          	slli	a5,a5,0x20
    80006eac:	0207d793          	srli	a5,a5,0x20
    80006eb0:	00fd87b3          	add	a5,s11,a5
    80006eb4:	0007c503          	lbu	a0,0(a5)
    80006eb8:	02d757bb          	divuw	a5,a4,a3
    80006ebc:	f8a40123          	sb	a0,-126(s0)
    80006ec0:	48e5f263          	bgeu	a1,a4,80007344 <__printf+0x5fc>
    80006ec4:	06300513          	li	a0,99
    80006ec8:	02d7f5bb          	remuw	a1,a5,a3
    80006ecc:	02059593          	slli	a1,a1,0x20
    80006ed0:	0205d593          	srli	a1,a1,0x20
    80006ed4:	00bd85b3          	add	a1,s11,a1
    80006ed8:	0005c583          	lbu	a1,0(a1)
    80006edc:	02d7d7bb          	divuw	a5,a5,a3
    80006ee0:	f8b401a3          	sb	a1,-125(s0)
    80006ee4:	48e57263          	bgeu	a0,a4,80007368 <__printf+0x620>
    80006ee8:	3e700513          	li	a0,999
    80006eec:	02d7f5bb          	remuw	a1,a5,a3
    80006ef0:	02059593          	slli	a1,a1,0x20
    80006ef4:	0205d593          	srli	a1,a1,0x20
    80006ef8:	00bd85b3          	add	a1,s11,a1
    80006efc:	0005c583          	lbu	a1,0(a1)
    80006f00:	02d7d7bb          	divuw	a5,a5,a3
    80006f04:	f8b40223          	sb	a1,-124(s0)
    80006f08:	46e57663          	bgeu	a0,a4,80007374 <__printf+0x62c>
    80006f0c:	02d7f5bb          	remuw	a1,a5,a3
    80006f10:	02059593          	slli	a1,a1,0x20
    80006f14:	0205d593          	srli	a1,a1,0x20
    80006f18:	00bd85b3          	add	a1,s11,a1
    80006f1c:	0005c583          	lbu	a1,0(a1)
    80006f20:	02d7d7bb          	divuw	a5,a5,a3
    80006f24:	f8b402a3          	sb	a1,-123(s0)
    80006f28:	46ea7863          	bgeu	s4,a4,80007398 <__printf+0x650>
    80006f2c:	02d7f5bb          	remuw	a1,a5,a3
    80006f30:	02059593          	slli	a1,a1,0x20
    80006f34:	0205d593          	srli	a1,a1,0x20
    80006f38:	00bd85b3          	add	a1,s11,a1
    80006f3c:	0005c583          	lbu	a1,0(a1)
    80006f40:	02d7d7bb          	divuw	a5,a5,a3
    80006f44:	f8b40323          	sb	a1,-122(s0)
    80006f48:	3eeaf863          	bgeu	s5,a4,80007338 <__printf+0x5f0>
    80006f4c:	02d7f5bb          	remuw	a1,a5,a3
    80006f50:	02059593          	slli	a1,a1,0x20
    80006f54:	0205d593          	srli	a1,a1,0x20
    80006f58:	00bd85b3          	add	a1,s11,a1
    80006f5c:	0005c583          	lbu	a1,0(a1)
    80006f60:	02d7d7bb          	divuw	a5,a5,a3
    80006f64:	f8b403a3          	sb	a1,-121(s0)
    80006f68:	42eb7e63          	bgeu	s6,a4,800073a4 <__printf+0x65c>
    80006f6c:	02d7f5bb          	remuw	a1,a5,a3
    80006f70:	02059593          	slli	a1,a1,0x20
    80006f74:	0205d593          	srli	a1,a1,0x20
    80006f78:	00bd85b3          	add	a1,s11,a1
    80006f7c:	0005c583          	lbu	a1,0(a1)
    80006f80:	02d7d7bb          	divuw	a5,a5,a3
    80006f84:	f8b40423          	sb	a1,-120(s0)
    80006f88:	42ebfc63          	bgeu	s7,a4,800073c0 <__printf+0x678>
    80006f8c:	02079793          	slli	a5,a5,0x20
    80006f90:	0207d793          	srli	a5,a5,0x20
    80006f94:	00fd8db3          	add	s11,s11,a5
    80006f98:	000dc703          	lbu	a4,0(s11)
    80006f9c:	00a00793          	li	a5,10
    80006fa0:	00900c93          	li	s9,9
    80006fa4:	f8e404a3          	sb	a4,-119(s0)
    80006fa8:	00065c63          	bgez	a2,80006fc0 <__printf+0x278>
    80006fac:	f9040713          	addi	a4,s0,-112
    80006fb0:	00f70733          	add	a4,a4,a5
    80006fb4:	02d00693          	li	a3,45
    80006fb8:	fed70823          	sb	a3,-16(a4)
    80006fbc:	00078c93          	mv	s9,a5
    80006fc0:	f8040793          	addi	a5,s0,-128
    80006fc4:	01978cb3          	add	s9,a5,s9
    80006fc8:	f7f40d13          	addi	s10,s0,-129
    80006fcc:	000cc503          	lbu	a0,0(s9)
    80006fd0:	fffc8c93          	addi	s9,s9,-1
    80006fd4:	00000097          	auipc	ra,0x0
    80006fd8:	b90080e7          	jalr	-1136(ra) # 80006b64 <consputc>
    80006fdc:	ffac98e3          	bne	s9,s10,80006fcc <__printf+0x284>
    80006fe0:	00094503          	lbu	a0,0(s2)
    80006fe4:	e00514e3          	bnez	a0,80006dec <__printf+0xa4>
    80006fe8:	1a0c1663          	bnez	s8,80007194 <__printf+0x44c>
    80006fec:	08813083          	ld	ra,136(sp)
    80006ff0:	08013403          	ld	s0,128(sp)
    80006ff4:	07813483          	ld	s1,120(sp)
    80006ff8:	07013903          	ld	s2,112(sp)
    80006ffc:	06813983          	ld	s3,104(sp)
    80007000:	06013a03          	ld	s4,96(sp)
    80007004:	05813a83          	ld	s5,88(sp)
    80007008:	05013b03          	ld	s6,80(sp)
    8000700c:	04813b83          	ld	s7,72(sp)
    80007010:	04013c03          	ld	s8,64(sp)
    80007014:	03813c83          	ld	s9,56(sp)
    80007018:	03013d03          	ld	s10,48(sp)
    8000701c:	02813d83          	ld	s11,40(sp)
    80007020:	0d010113          	addi	sp,sp,208
    80007024:	00008067          	ret
    80007028:	07300713          	li	a4,115
    8000702c:	1ce78a63          	beq	a5,a4,80007200 <__printf+0x4b8>
    80007030:	07800713          	li	a4,120
    80007034:	1ee79e63          	bne	a5,a4,80007230 <__printf+0x4e8>
    80007038:	f7843783          	ld	a5,-136(s0)
    8000703c:	0007a703          	lw	a4,0(a5)
    80007040:	00878793          	addi	a5,a5,8
    80007044:	f6f43c23          	sd	a5,-136(s0)
    80007048:	28074263          	bltz	a4,800072cc <__printf+0x584>
    8000704c:	00002d97          	auipc	s11,0x2
    80007050:	6fcd8d93          	addi	s11,s11,1788 # 80009748 <digits>
    80007054:	00f77793          	andi	a5,a4,15
    80007058:	00fd87b3          	add	a5,s11,a5
    8000705c:	0007c683          	lbu	a3,0(a5)
    80007060:	00f00613          	li	a2,15
    80007064:	0007079b          	sext.w	a5,a4
    80007068:	f8d40023          	sb	a3,-128(s0)
    8000706c:	0047559b          	srliw	a1,a4,0x4
    80007070:	0047569b          	srliw	a3,a4,0x4
    80007074:	00000c93          	li	s9,0
    80007078:	0ee65063          	bge	a2,a4,80007158 <__printf+0x410>
    8000707c:	00f6f693          	andi	a3,a3,15
    80007080:	00dd86b3          	add	a3,s11,a3
    80007084:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007088:	0087d79b          	srliw	a5,a5,0x8
    8000708c:	00100c93          	li	s9,1
    80007090:	f8d400a3          	sb	a3,-127(s0)
    80007094:	0cb67263          	bgeu	a2,a1,80007158 <__printf+0x410>
    80007098:	00f7f693          	andi	a3,a5,15
    8000709c:	00dd86b3          	add	a3,s11,a3
    800070a0:	0006c583          	lbu	a1,0(a3)
    800070a4:	00f00613          	li	a2,15
    800070a8:	0047d69b          	srliw	a3,a5,0x4
    800070ac:	f8b40123          	sb	a1,-126(s0)
    800070b0:	0047d593          	srli	a1,a5,0x4
    800070b4:	28f67e63          	bgeu	a2,a5,80007350 <__printf+0x608>
    800070b8:	00f6f693          	andi	a3,a3,15
    800070bc:	00dd86b3          	add	a3,s11,a3
    800070c0:	0006c503          	lbu	a0,0(a3)
    800070c4:	0087d813          	srli	a6,a5,0x8
    800070c8:	0087d69b          	srliw	a3,a5,0x8
    800070cc:	f8a401a3          	sb	a0,-125(s0)
    800070d0:	28b67663          	bgeu	a2,a1,8000735c <__printf+0x614>
    800070d4:	00f6f693          	andi	a3,a3,15
    800070d8:	00dd86b3          	add	a3,s11,a3
    800070dc:	0006c583          	lbu	a1,0(a3)
    800070e0:	00c7d513          	srli	a0,a5,0xc
    800070e4:	00c7d69b          	srliw	a3,a5,0xc
    800070e8:	f8b40223          	sb	a1,-124(s0)
    800070ec:	29067a63          	bgeu	a2,a6,80007380 <__printf+0x638>
    800070f0:	00f6f693          	andi	a3,a3,15
    800070f4:	00dd86b3          	add	a3,s11,a3
    800070f8:	0006c583          	lbu	a1,0(a3)
    800070fc:	0107d813          	srli	a6,a5,0x10
    80007100:	0107d69b          	srliw	a3,a5,0x10
    80007104:	f8b402a3          	sb	a1,-123(s0)
    80007108:	28a67263          	bgeu	a2,a0,8000738c <__printf+0x644>
    8000710c:	00f6f693          	andi	a3,a3,15
    80007110:	00dd86b3          	add	a3,s11,a3
    80007114:	0006c683          	lbu	a3,0(a3)
    80007118:	0147d79b          	srliw	a5,a5,0x14
    8000711c:	f8d40323          	sb	a3,-122(s0)
    80007120:	21067663          	bgeu	a2,a6,8000732c <__printf+0x5e4>
    80007124:	02079793          	slli	a5,a5,0x20
    80007128:	0207d793          	srli	a5,a5,0x20
    8000712c:	00fd8db3          	add	s11,s11,a5
    80007130:	000dc683          	lbu	a3,0(s11)
    80007134:	00800793          	li	a5,8
    80007138:	00700c93          	li	s9,7
    8000713c:	f8d403a3          	sb	a3,-121(s0)
    80007140:	00075c63          	bgez	a4,80007158 <__printf+0x410>
    80007144:	f9040713          	addi	a4,s0,-112
    80007148:	00f70733          	add	a4,a4,a5
    8000714c:	02d00693          	li	a3,45
    80007150:	fed70823          	sb	a3,-16(a4)
    80007154:	00078c93          	mv	s9,a5
    80007158:	f8040793          	addi	a5,s0,-128
    8000715c:	01978cb3          	add	s9,a5,s9
    80007160:	f7f40d13          	addi	s10,s0,-129
    80007164:	000cc503          	lbu	a0,0(s9)
    80007168:	fffc8c93          	addi	s9,s9,-1
    8000716c:	00000097          	auipc	ra,0x0
    80007170:	9f8080e7          	jalr	-1544(ra) # 80006b64 <consputc>
    80007174:	ff9d18e3          	bne	s10,s9,80007164 <__printf+0x41c>
    80007178:	0100006f          	j	80007188 <__printf+0x440>
    8000717c:	00000097          	auipc	ra,0x0
    80007180:	9e8080e7          	jalr	-1560(ra) # 80006b64 <consputc>
    80007184:	000c8493          	mv	s1,s9
    80007188:	00094503          	lbu	a0,0(s2)
    8000718c:	c60510e3          	bnez	a0,80006dec <__printf+0xa4>
    80007190:	e40c0ee3          	beqz	s8,80006fec <__printf+0x2a4>
    80007194:	00005517          	auipc	a0,0x5
    80007198:	7ec50513          	addi	a0,a0,2028 # 8000c980 <pr>
    8000719c:	00001097          	auipc	ra,0x1
    800071a0:	94c080e7          	jalr	-1716(ra) # 80007ae8 <release>
    800071a4:	e49ff06f          	j	80006fec <__printf+0x2a4>
    800071a8:	f7843783          	ld	a5,-136(s0)
    800071ac:	03000513          	li	a0,48
    800071b0:	01000d13          	li	s10,16
    800071b4:	00878713          	addi	a4,a5,8
    800071b8:	0007bc83          	ld	s9,0(a5)
    800071bc:	f6e43c23          	sd	a4,-136(s0)
    800071c0:	00000097          	auipc	ra,0x0
    800071c4:	9a4080e7          	jalr	-1628(ra) # 80006b64 <consputc>
    800071c8:	07800513          	li	a0,120
    800071cc:	00000097          	auipc	ra,0x0
    800071d0:	998080e7          	jalr	-1640(ra) # 80006b64 <consputc>
    800071d4:	00002d97          	auipc	s11,0x2
    800071d8:	574d8d93          	addi	s11,s11,1396 # 80009748 <digits>
    800071dc:	03ccd793          	srli	a5,s9,0x3c
    800071e0:	00fd87b3          	add	a5,s11,a5
    800071e4:	0007c503          	lbu	a0,0(a5)
    800071e8:	fffd0d1b          	addiw	s10,s10,-1
    800071ec:	004c9c93          	slli	s9,s9,0x4
    800071f0:	00000097          	auipc	ra,0x0
    800071f4:	974080e7          	jalr	-1676(ra) # 80006b64 <consputc>
    800071f8:	fe0d12e3          	bnez	s10,800071dc <__printf+0x494>
    800071fc:	f8dff06f          	j	80007188 <__printf+0x440>
    80007200:	f7843783          	ld	a5,-136(s0)
    80007204:	0007bc83          	ld	s9,0(a5)
    80007208:	00878793          	addi	a5,a5,8
    8000720c:	f6f43c23          	sd	a5,-136(s0)
    80007210:	000c9a63          	bnez	s9,80007224 <__printf+0x4dc>
    80007214:	1080006f          	j	8000731c <__printf+0x5d4>
    80007218:	001c8c93          	addi	s9,s9,1
    8000721c:	00000097          	auipc	ra,0x0
    80007220:	948080e7          	jalr	-1720(ra) # 80006b64 <consputc>
    80007224:	000cc503          	lbu	a0,0(s9)
    80007228:	fe0518e3          	bnez	a0,80007218 <__printf+0x4d0>
    8000722c:	f5dff06f          	j	80007188 <__printf+0x440>
    80007230:	02500513          	li	a0,37
    80007234:	00000097          	auipc	ra,0x0
    80007238:	930080e7          	jalr	-1744(ra) # 80006b64 <consputc>
    8000723c:	000c8513          	mv	a0,s9
    80007240:	00000097          	auipc	ra,0x0
    80007244:	924080e7          	jalr	-1756(ra) # 80006b64 <consputc>
    80007248:	f41ff06f          	j	80007188 <__printf+0x440>
    8000724c:	02500513          	li	a0,37
    80007250:	00000097          	auipc	ra,0x0
    80007254:	914080e7          	jalr	-1772(ra) # 80006b64 <consputc>
    80007258:	f31ff06f          	j	80007188 <__printf+0x440>
    8000725c:	00030513          	mv	a0,t1
    80007260:	00000097          	auipc	ra,0x0
    80007264:	7bc080e7          	jalr	1980(ra) # 80007a1c <acquire>
    80007268:	b4dff06f          	j	80006db4 <__printf+0x6c>
    8000726c:	40c0053b          	negw	a0,a2
    80007270:	00a00713          	li	a4,10
    80007274:	02e576bb          	remuw	a3,a0,a4
    80007278:	00002d97          	auipc	s11,0x2
    8000727c:	4d0d8d93          	addi	s11,s11,1232 # 80009748 <digits>
    80007280:	ff700593          	li	a1,-9
    80007284:	02069693          	slli	a3,a3,0x20
    80007288:	0206d693          	srli	a3,a3,0x20
    8000728c:	00dd86b3          	add	a3,s11,a3
    80007290:	0006c683          	lbu	a3,0(a3)
    80007294:	02e557bb          	divuw	a5,a0,a4
    80007298:	f8d40023          	sb	a3,-128(s0)
    8000729c:	10b65e63          	bge	a2,a1,800073b8 <__printf+0x670>
    800072a0:	06300593          	li	a1,99
    800072a4:	02e7f6bb          	remuw	a3,a5,a4
    800072a8:	02069693          	slli	a3,a3,0x20
    800072ac:	0206d693          	srli	a3,a3,0x20
    800072b0:	00dd86b3          	add	a3,s11,a3
    800072b4:	0006c683          	lbu	a3,0(a3)
    800072b8:	02e7d73b          	divuw	a4,a5,a4
    800072bc:	00200793          	li	a5,2
    800072c0:	f8d400a3          	sb	a3,-127(s0)
    800072c4:	bca5ece3          	bltu	a1,a0,80006e9c <__printf+0x154>
    800072c8:	ce5ff06f          	j	80006fac <__printf+0x264>
    800072cc:	40e007bb          	negw	a5,a4
    800072d0:	00002d97          	auipc	s11,0x2
    800072d4:	478d8d93          	addi	s11,s11,1144 # 80009748 <digits>
    800072d8:	00f7f693          	andi	a3,a5,15
    800072dc:	00dd86b3          	add	a3,s11,a3
    800072e0:	0006c583          	lbu	a1,0(a3)
    800072e4:	ff100613          	li	a2,-15
    800072e8:	0047d69b          	srliw	a3,a5,0x4
    800072ec:	f8b40023          	sb	a1,-128(s0)
    800072f0:	0047d59b          	srliw	a1,a5,0x4
    800072f4:	0ac75e63          	bge	a4,a2,800073b0 <__printf+0x668>
    800072f8:	00f6f693          	andi	a3,a3,15
    800072fc:	00dd86b3          	add	a3,s11,a3
    80007300:	0006c603          	lbu	a2,0(a3)
    80007304:	00f00693          	li	a3,15
    80007308:	0087d79b          	srliw	a5,a5,0x8
    8000730c:	f8c400a3          	sb	a2,-127(s0)
    80007310:	d8b6e4e3          	bltu	a3,a1,80007098 <__printf+0x350>
    80007314:	00200793          	li	a5,2
    80007318:	e2dff06f          	j	80007144 <__printf+0x3fc>
    8000731c:	00002c97          	auipc	s9,0x2
    80007320:	40cc8c93          	addi	s9,s9,1036 # 80009728 <CONSOLE_STATUS+0x718>
    80007324:	02800513          	li	a0,40
    80007328:	ef1ff06f          	j	80007218 <__printf+0x4d0>
    8000732c:	00700793          	li	a5,7
    80007330:	00600c93          	li	s9,6
    80007334:	e0dff06f          	j	80007140 <__printf+0x3f8>
    80007338:	00700793          	li	a5,7
    8000733c:	00600c93          	li	s9,6
    80007340:	c69ff06f          	j	80006fa8 <__printf+0x260>
    80007344:	00300793          	li	a5,3
    80007348:	00200c93          	li	s9,2
    8000734c:	c5dff06f          	j	80006fa8 <__printf+0x260>
    80007350:	00300793          	li	a5,3
    80007354:	00200c93          	li	s9,2
    80007358:	de9ff06f          	j	80007140 <__printf+0x3f8>
    8000735c:	00400793          	li	a5,4
    80007360:	00300c93          	li	s9,3
    80007364:	dddff06f          	j	80007140 <__printf+0x3f8>
    80007368:	00400793          	li	a5,4
    8000736c:	00300c93          	li	s9,3
    80007370:	c39ff06f          	j	80006fa8 <__printf+0x260>
    80007374:	00500793          	li	a5,5
    80007378:	00400c93          	li	s9,4
    8000737c:	c2dff06f          	j	80006fa8 <__printf+0x260>
    80007380:	00500793          	li	a5,5
    80007384:	00400c93          	li	s9,4
    80007388:	db9ff06f          	j	80007140 <__printf+0x3f8>
    8000738c:	00600793          	li	a5,6
    80007390:	00500c93          	li	s9,5
    80007394:	dadff06f          	j	80007140 <__printf+0x3f8>
    80007398:	00600793          	li	a5,6
    8000739c:	00500c93          	li	s9,5
    800073a0:	c09ff06f          	j	80006fa8 <__printf+0x260>
    800073a4:	00800793          	li	a5,8
    800073a8:	00700c93          	li	s9,7
    800073ac:	bfdff06f          	j	80006fa8 <__printf+0x260>
    800073b0:	00100793          	li	a5,1
    800073b4:	d91ff06f          	j	80007144 <__printf+0x3fc>
    800073b8:	00100793          	li	a5,1
    800073bc:	bf1ff06f          	j	80006fac <__printf+0x264>
    800073c0:	00900793          	li	a5,9
    800073c4:	00800c93          	li	s9,8
    800073c8:	be1ff06f          	j	80006fa8 <__printf+0x260>
    800073cc:	00002517          	auipc	a0,0x2
    800073d0:	36450513          	addi	a0,a0,868 # 80009730 <CONSOLE_STATUS+0x720>
    800073d4:	00000097          	auipc	ra,0x0
    800073d8:	918080e7          	jalr	-1768(ra) # 80006cec <panic>

00000000800073dc <printfinit>:
    800073dc:	fe010113          	addi	sp,sp,-32
    800073e0:	00813823          	sd	s0,16(sp)
    800073e4:	00913423          	sd	s1,8(sp)
    800073e8:	00113c23          	sd	ra,24(sp)
    800073ec:	02010413          	addi	s0,sp,32
    800073f0:	00005497          	auipc	s1,0x5
    800073f4:	59048493          	addi	s1,s1,1424 # 8000c980 <pr>
    800073f8:	00048513          	mv	a0,s1
    800073fc:	00002597          	auipc	a1,0x2
    80007400:	34458593          	addi	a1,a1,836 # 80009740 <CONSOLE_STATUS+0x730>
    80007404:	00000097          	auipc	ra,0x0
    80007408:	5f4080e7          	jalr	1524(ra) # 800079f8 <initlock>
    8000740c:	01813083          	ld	ra,24(sp)
    80007410:	01013403          	ld	s0,16(sp)
    80007414:	0004ac23          	sw	zero,24(s1)
    80007418:	00813483          	ld	s1,8(sp)
    8000741c:	02010113          	addi	sp,sp,32
    80007420:	00008067          	ret

0000000080007424 <uartinit>:
    80007424:	ff010113          	addi	sp,sp,-16
    80007428:	00813423          	sd	s0,8(sp)
    8000742c:	01010413          	addi	s0,sp,16
    80007430:	100007b7          	lui	a5,0x10000
    80007434:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007438:	f8000713          	li	a4,-128
    8000743c:	00e781a3          	sb	a4,3(a5)
    80007440:	00300713          	li	a4,3
    80007444:	00e78023          	sb	a4,0(a5)
    80007448:	000780a3          	sb	zero,1(a5)
    8000744c:	00e781a3          	sb	a4,3(a5)
    80007450:	00700693          	li	a3,7
    80007454:	00d78123          	sb	a3,2(a5)
    80007458:	00e780a3          	sb	a4,1(a5)
    8000745c:	00813403          	ld	s0,8(sp)
    80007460:	01010113          	addi	sp,sp,16
    80007464:	00008067          	ret

0000000080007468 <uartputc>:
    80007468:	00004797          	auipc	a5,0x4
    8000746c:	2407a783          	lw	a5,576(a5) # 8000b6a8 <panicked>
    80007470:	00078463          	beqz	a5,80007478 <uartputc+0x10>
    80007474:	0000006f          	j	80007474 <uartputc+0xc>
    80007478:	fd010113          	addi	sp,sp,-48
    8000747c:	02813023          	sd	s0,32(sp)
    80007480:	00913c23          	sd	s1,24(sp)
    80007484:	01213823          	sd	s2,16(sp)
    80007488:	01313423          	sd	s3,8(sp)
    8000748c:	02113423          	sd	ra,40(sp)
    80007490:	03010413          	addi	s0,sp,48
    80007494:	00004917          	auipc	s2,0x4
    80007498:	21c90913          	addi	s2,s2,540 # 8000b6b0 <uart_tx_r>
    8000749c:	00093783          	ld	a5,0(s2)
    800074a0:	00004497          	auipc	s1,0x4
    800074a4:	21848493          	addi	s1,s1,536 # 8000b6b8 <uart_tx_w>
    800074a8:	0004b703          	ld	a4,0(s1)
    800074ac:	02078693          	addi	a3,a5,32
    800074b0:	00050993          	mv	s3,a0
    800074b4:	02e69c63          	bne	a3,a4,800074ec <uartputc+0x84>
    800074b8:	00001097          	auipc	ra,0x1
    800074bc:	834080e7          	jalr	-1996(ra) # 80007cec <push_on>
    800074c0:	00093783          	ld	a5,0(s2)
    800074c4:	0004b703          	ld	a4,0(s1)
    800074c8:	02078793          	addi	a5,a5,32
    800074cc:	00e79463          	bne	a5,a4,800074d4 <uartputc+0x6c>
    800074d0:	0000006f          	j	800074d0 <uartputc+0x68>
    800074d4:	00001097          	auipc	ra,0x1
    800074d8:	88c080e7          	jalr	-1908(ra) # 80007d60 <pop_on>
    800074dc:	00093783          	ld	a5,0(s2)
    800074e0:	0004b703          	ld	a4,0(s1)
    800074e4:	02078693          	addi	a3,a5,32
    800074e8:	fce688e3          	beq	a3,a4,800074b8 <uartputc+0x50>
    800074ec:	01f77693          	andi	a3,a4,31
    800074f0:	00005597          	auipc	a1,0x5
    800074f4:	4b058593          	addi	a1,a1,1200 # 8000c9a0 <uart_tx_buf>
    800074f8:	00d586b3          	add	a3,a1,a3
    800074fc:	00170713          	addi	a4,a4,1
    80007500:	01368023          	sb	s3,0(a3)
    80007504:	00e4b023          	sd	a4,0(s1)
    80007508:	10000637          	lui	a2,0x10000
    8000750c:	02f71063          	bne	a4,a5,8000752c <uartputc+0xc4>
    80007510:	0340006f          	j	80007544 <uartputc+0xdc>
    80007514:	00074703          	lbu	a4,0(a4)
    80007518:	00f93023          	sd	a5,0(s2)
    8000751c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007520:	00093783          	ld	a5,0(s2)
    80007524:	0004b703          	ld	a4,0(s1)
    80007528:	00f70e63          	beq	a4,a5,80007544 <uartputc+0xdc>
    8000752c:	00564683          	lbu	a3,5(a2)
    80007530:	01f7f713          	andi	a4,a5,31
    80007534:	00e58733          	add	a4,a1,a4
    80007538:	0206f693          	andi	a3,a3,32
    8000753c:	00178793          	addi	a5,a5,1
    80007540:	fc069ae3          	bnez	a3,80007514 <uartputc+0xac>
    80007544:	02813083          	ld	ra,40(sp)
    80007548:	02013403          	ld	s0,32(sp)
    8000754c:	01813483          	ld	s1,24(sp)
    80007550:	01013903          	ld	s2,16(sp)
    80007554:	00813983          	ld	s3,8(sp)
    80007558:	03010113          	addi	sp,sp,48
    8000755c:	00008067          	ret

0000000080007560 <uartputc_sync>:
    80007560:	ff010113          	addi	sp,sp,-16
    80007564:	00813423          	sd	s0,8(sp)
    80007568:	01010413          	addi	s0,sp,16
    8000756c:	00004717          	auipc	a4,0x4
    80007570:	13c72703          	lw	a4,316(a4) # 8000b6a8 <panicked>
    80007574:	02071663          	bnez	a4,800075a0 <uartputc_sync+0x40>
    80007578:	00050793          	mv	a5,a0
    8000757c:	100006b7          	lui	a3,0x10000
    80007580:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007584:	02077713          	andi	a4,a4,32
    80007588:	fe070ce3          	beqz	a4,80007580 <uartputc_sync+0x20>
    8000758c:	0ff7f793          	andi	a5,a5,255
    80007590:	00f68023          	sb	a5,0(a3)
    80007594:	00813403          	ld	s0,8(sp)
    80007598:	01010113          	addi	sp,sp,16
    8000759c:	00008067          	ret
    800075a0:	0000006f          	j	800075a0 <uartputc_sync+0x40>

00000000800075a4 <uartstart>:
    800075a4:	ff010113          	addi	sp,sp,-16
    800075a8:	00813423          	sd	s0,8(sp)
    800075ac:	01010413          	addi	s0,sp,16
    800075b0:	00004617          	auipc	a2,0x4
    800075b4:	10060613          	addi	a2,a2,256 # 8000b6b0 <uart_tx_r>
    800075b8:	00004517          	auipc	a0,0x4
    800075bc:	10050513          	addi	a0,a0,256 # 8000b6b8 <uart_tx_w>
    800075c0:	00063783          	ld	a5,0(a2)
    800075c4:	00053703          	ld	a4,0(a0)
    800075c8:	04f70263          	beq	a4,a5,8000760c <uartstart+0x68>
    800075cc:	100005b7          	lui	a1,0x10000
    800075d0:	00005817          	auipc	a6,0x5
    800075d4:	3d080813          	addi	a6,a6,976 # 8000c9a0 <uart_tx_buf>
    800075d8:	01c0006f          	j	800075f4 <uartstart+0x50>
    800075dc:	0006c703          	lbu	a4,0(a3)
    800075e0:	00f63023          	sd	a5,0(a2)
    800075e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800075e8:	00063783          	ld	a5,0(a2)
    800075ec:	00053703          	ld	a4,0(a0)
    800075f0:	00f70e63          	beq	a4,a5,8000760c <uartstart+0x68>
    800075f4:	01f7f713          	andi	a4,a5,31
    800075f8:	00e806b3          	add	a3,a6,a4
    800075fc:	0055c703          	lbu	a4,5(a1)
    80007600:	00178793          	addi	a5,a5,1
    80007604:	02077713          	andi	a4,a4,32
    80007608:	fc071ae3          	bnez	a4,800075dc <uartstart+0x38>
    8000760c:	00813403          	ld	s0,8(sp)
    80007610:	01010113          	addi	sp,sp,16
    80007614:	00008067          	ret

0000000080007618 <uartgetc>:
    80007618:	ff010113          	addi	sp,sp,-16
    8000761c:	00813423          	sd	s0,8(sp)
    80007620:	01010413          	addi	s0,sp,16
    80007624:	10000737          	lui	a4,0x10000
    80007628:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000762c:	0017f793          	andi	a5,a5,1
    80007630:	00078c63          	beqz	a5,80007648 <uartgetc+0x30>
    80007634:	00074503          	lbu	a0,0(a4)
    80007638:	0ff57513          	andi	a0,a0,255
    8000763c:	00813403          	ld	s0,8(sp)
    80007640:	01010113          	addi	sp,sp,16
    80007644:	00008067          	ret
    80007648:	fff00513          	li	a0,-1
    8000764c:	ff1ff06f          	j	8000763c <uartgetc+0x24>

0000000080007650 <uartintr>:
    80007650:	100007b7          	lui	a5,0x10000
    80007654:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007658:	0017f793          	andi	a5,a5,1
    8000765c:	0a078463          	beqz	a5,80007704 <uartintr+0xb4>
    80007660:	fe010113          	addi	sp,sp,-32
    80007664:	00813823          	sd	s0,16(sp)
    80007668:	00913423          	sd	s1,8(sp)
    8000766c:	00113c23          	sd	ra,24(sp)
    80007670:	02010413          	addi	s0,sp,32
    80007674:	100004b7          	lui	s1,0x10000
    80007678:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000767c:	0ff57513          	andi	a0,a0,255
    80007680:	fffff097          	auipc	ra,0xfffff
    80007684:	534080e7          	jalr	1332(ra) # 80006bb4 <consoleintr>
    80007688:	0054c783          	lbu	a5,5(s1)
    8000768c:	0017f793          	andi	a5,a5,1
    80007690:	fe0794e3          	bnez	a5,80007678 <uartintr+0x28>
    80007694:	00004617          	auipc	a2,0x4
    80007698:	01c60613          	addi	a2,a2,28 # 8000b6b0 <uart_tx_r>
    8000769c:	00004517          	auipc	a0,0x4
    800076a0:	01c50513          	addi	a0,a0,28 # 8000b6b8 <uart_tx_w>
    800076a4:	00063783          	ld	a5,0(a2)
    800076a8:	00053703          	ld	a4,0(a0)
    800076ac:	04f70263          	beq	a4,a5,800076f0 <uartintr+0xa0>
    800076b0:	100005b7          	lui	a1,0x10000
    800076b4:	00005817          	auipc	a6,0x5
    800076b8:	2ec80813          	addi	a6,a6,748 # 8000c9a0 <uart_tx_buf>
    800076bc:	01c0006f          	j	800076d8 <uartintr+0x88>
    800076c0:	0006c703          	lbu	a4,0(a3)
    800076c4:	00f63023          	sd	a5,0(a2)
    800076c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800076cc:	00063783          	ld	a5,0(a2)
    800076d0:	00053703          	ld	a4,0(a0)
    800076d4:	00f70e63          	beq	a4,a5,800076f0 <uartintr+0xa0>
    800076d8:	01f7f713          	andi	a4,a5,31
    800076dc:	00e806b3          	add	a3,a6,a4
    800076e0:	0055c703          	lbu	a4,5(a1)
    800076e4:	00178793          	addi	a5,a5,1
    800076e8:	02077713          	andi	a4,a4,32
    800076ec:	fc071ae3          	bnez	a4,800076c0 <uartintr+0x70>
    800076f0:	01813083          	ld	ra,24(sp)
    800076f4:	01013403          	ld	s0,16(sp)
    800076f8:	00813483          	ld	s1,8(sp)
    800076fc:	02010113          	addi	sp,sp,32
    80007700:	00008067          	ret
    80007704:	00004617          	auipc	a2,0x4
    80007708:	fac60613          	addi	a2,a2,-84 # 8000b6b0 <uart_tx_r>
    8000770c:	00004517          	auipc	a0,0x4
    80007710:	fac50513          	addi	a0,a0,-84 # 8000b6b8 <uart_tx_w>
    80007714:	00063783          	ld	a5,0(a2)
    80007718:	00053703          	ld	a4,0(a0)
    8000771c:	04f70263          	beq	a4,a5,80007760 <uartintr+0x110>
    80007720:	100005b7          	lui	a1,0x10000
    80007724:	00005817          	auipc	a6,0x5
    80007728:	27c80813          	addi	a6,a6,636 # 8000c9a0 <uart_tx_buf>
    8000772c:	01c0006f          	j	80007748 <uartintr+0xf8>
    80007730:	0006c703          	lbu	a4,0(a3)
    80007734:	00f63023          	sd	a5,0(a2)
    80007738:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000773c:	00063783          	ld	a5,0(a2)
    80007740:	00053703          	ld	a4,0(a0)
    80007744:	02f70063          	beq	a4,a5,80007764 <uartintr+0x114>
    80007748:	01f7f713          	andi	a4,a5,31
    8000774c:	00e806b3          	add	a3,a6,a4
    80007750:	0055c703          	lbu	a4,5(a1)
    80007754:	00178793          	addi	a5,a5,1
    80007758:	02077713          	andi	a4,a4,32
    8000775c:	fc071ae3          	bnez	a4,80007730 <uartintr+0xe0>
    80007760:	00008067          	ret
    80007764:	00008067          	ret

0000000080007768 <kinit>:
    80007768:	fc010113          	addi	sp,sp,-64
    8000776c:	02913423          	sd	s1,40(sp)
    80007770:	fffff7b7          	lui	a5,0xfffff
    80007774:	00006497          	auipc	s1,0x6
    80007778:	24b48493          	addi	s1,s1,587 # 8000d9bf <end+0xfff>
    8000777c:	02813823          	sd	s0,48(sp)
    80007780:	01313c23          	sd	s3,24(sp)
    80007784:	00f4f4b3          	and	s1,s1,a5
    80007788:	02113c23          	sd	ra,56(sp)
    8000778c:	03213023          	sd	s2,32(sp)
    80007790:	01413823          	sd	s4,16(sp)
    80007794:	01513423          	sd	s5,8(sp)
    80007798:	04010413          	addi	s0,sp,64
    8000779c:	000017b7          	lui	a5,0x1
    800077a0:	01100993          	li	s3,17
    800077a4:	00f487b3          	add	a5,s1,a5
    800077a8:	01b99993          	slli	s3,s3,0x1b
    800077ac:	06f9e063          	bltu	s3,a5,8000780c <kinit+0xa4>
    800077b0:	00005a97          	auipc	s5,0x5
    800077b4:	210a8a93          	addi	s5,s5,528 # 8000c9c0 <end>
    800077b8:	0754ec63          	bltu	s1,s5,80007830 <kinit+0xc8>
    800077bc:	0734fa63          	bgeu	s1,s3,80007830 <kinit+0xc8>
    800077c0:	00088a37          	lui	s4,0x88
    800077c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800077c8:	00004917          	auipc	s2,0x4
    800077cc:	ef890913          	addi	s2,s2,-264 # 8000b6c0 <kmem>
    800077d0:	00ca1a13          	slli	s4,s4,0xc
    800077d4:	0140006f          	j	800077e8 <kinit+0x80>
    800077d8:	000017b7          	lui	a5,0x1
    800077dc:	00f484b3          	add	s1,s1,a5
    800077e0:	0554e863          	bltu	s1,s5,80007830 <kinit+0xc8>
    800077e4:	0534f663          	bgeu	s1,s3,80007830 <kinit+0xc8>
    800077e8:	00001637          	lui	a2,0x1
    800077ec:	00100593          	li	a1,1
    800077f0:	00048513          	mv	a0,s1
    800077f4:	00000097          	auipc	ra,0x0
    800077f8:	5e4080e7          	jalr	1508(ra) # 80007dd8 <__memset>
    800077fc:	00093783          	ld	a5,0(s2)
    80007800:	00f4b023          	sd	a5,0(s1)
    80007804:	00993023          	sd	s1,0(s2)
    80007808:	fd4498e3          	bne	s1,s4,800077d8 <kinit+0x70>
    8000780c:	03813083          	ld	ra,56(sp)
    80007810:	03013403          	ld	s0,48(sp)
    80007814:	02813483          	ld	s1,40(sp)
    80007818:	02013903          	ld	s2,32(sp)
    8000781c:	01813983          	ld	s3,24(sp)
    80007820:	01013a03          	ld	s4,16(sp)
    80007824:	00813a83          	ld	s5,8(sp)
    80007828:	04010113          	addi	sp,sp,64
    8000782c:	00008067          	ret
    80007830:	00002517          	auipc	a0,0x2
    80007834:	f3050513          	addi	a0,a0,-208 # 80009760 <digits+0x18>
    80007838:	fffff097          	auipc	ra,0xfffff
    8000783c:	4b4080e7          	jalr	1204(ra) # 80006cec <panic>

0000000080007840 <freerange>:
    80007840:	fc010113          	addi	sp,sp,-64
    80007844:	000017b7          	lui	a5,0x1
    80007848:	02913423          	sd	s1,40(sp)
    8000784c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007850:	009504b3          	add	s1,a0,s1
    80007854:	fffff537          	lui	a0,0xfffff
    80007858:	02813823          	sd	s0,48(sp)
    8000785c:	02113c23          	sd	ra,56(sp)
    80007860:	03213023          	sd	s2,32(sp)
    80007864:	01313c23          	sd	s3,24(sp)
    80007868:	01413823          	sd	s4,16(sp)
    8000786c:	01513423          	sd	s5,8(sp)
    80007870:	01613023          	sd	s6,0(sp)
    80007874:	04010413          	addi	s0,sp,64
    80007878:	00a4f4b3          	and	s1,s1,a0
    8000787c:	00f487b3          	add	a5,s1,a5
    80007880:	06f5e463          	bltu	a1,a5,800078e8 <freerange+0xa8>
    80007884:	00005a97          	auipc	s5,0x5
    80007888:	13ca8a93          	addi	s5,s5,316 # 8000c9c0 <end>
    8000788c:	0954e263          	bltu	s1,s5,80007910 <freerange+0xd0>
    80007890:	01100993          	li	s3,17
    80007894:	01b99993          	slli	s3,s3,0x1b
    80007898:	0734fc63          	bgeu	s1,s3,80007910 <freerange+0xd0>
    8000789c:	00058a13          	mv	s4,a1
    800078a0:	00004917          	auipc	s2,0x4
    800078a4:	e2090913          	addi	s2,s2,-480 # 8000b6c0 <kmem>
    800078a8:	00002b37          	lui	s6,0x2
    800078ac:	0140006f          	j	800078c0 <freerange+0x80>
    800078b0:	000017b7          	lui	a5,0x1
    800078b4:	00f484b3          	add	s1,s1,a5
    800078b8:	0554ec63          	bltu	s1,s5,80007910 <freerange+0xd0>
    800078bc:	0534fa63          	bgeu	s1,s3,80007910 <freerange+0xd0>
    800078c0:	00001637          	lui	a2,0x1
    800078c4:	00100593          	li	a1,1
    800078c8:	00048513          	mv	a0,s1
    800078cc:	00000097          	auipc	ra,0x0
    800078d0:	50c080e7          	jalr	1292(ra) # 80007dd8 <__memset>
    800078d4:	00093703          	ld	a4,0(s2)
    800078d8:	016487b3          	add	a5,s1,s6
    800078dc:	00e4b023          	sd	a4,0(s1)
    800078e0:	00993023          	sd	s1,0(s2)
    800078e4:	fcfa76e3          	bgeu	s4,a5,800078b0 <freerange+0x70>
    800078e8:	03813083          	ld	ra,56(sp)
    800078ec:	03013403          	ld	s0,48(sp)
    800078f0:	02813483          	ld	s1,40(sp)
    800078f4:	02013903          	ld	s2,32(sp)
    800078f8:	01813983          	ld	s3,24(sp)
    800078fc:	01013a03          	ld	s4,16(sp)
    80007900:	00813a83          	ld	s5,8(sp)
    80007904:	00013b03          	ld	s6,0(sp)
    80007908:	04010113          	addi	sp,sp,64
    8000790c:	00008067          	ret
    80007910:	00002517          	auipc	a0,0x2
    80007914:	e5050513          	addi	a0,a0,-432 # 80009760 <digits+0x18>
    80007918:	fffff097          	auipc	ra,0xfffff
    8000791c:	3d4080e7          	jalr	980(ra) # 80006cec <panic>

0000000080007920 <kfree>:
    80007920:	fe010113          	addi	sp,sp,-32
    80007924:	00813823          	sd	s0,16(sp)
    80007928:	00113c23          	sd	ra,24(sp)
    8000792c:	00913423          	sd	s1,8(sp)
    80007930:	02010413          	addi	s0,sp,32
    80007934:	03451793          	slli	a5,a0,0x34
    80007938:	04079c63          	bnez	a5,80007990 <kfree+0x70>
    8000793c:	00005797          	auipc	a5,0x5
    80007940:	08478793          	addi	a5,a5,132 # 8000c9c0 <end>
    80007944:	00050493          	mv	s1,a0
    80007948:	04f56463          	bltu	a0,a5,80007990 <kfree+0x70>
    8000794c:	01100793          	li	a5,17
    80007950:	01b79793          	slli	a5,a5,0x1b
    80007954:	02f57e63          	bgeu	a0,a5,80007990 <kfree+0x70>
    80007958:	00001637          	lui	a2,0x1
    8000795c:	00100593          	li	a1,1
    80007960:	00000097          	auipc	ra,0x0
    80007964:	478080e7          	jalr	1144(ra) # 80007dd8 <__memset>
    80007968:	00004797          	auipc	a5,0x4
    8000796c:	d5878793          	addi	a5,a5,-680 # 8000b6c0 <kmem>
    80007970:	0007b703          	ld	a4,0(a5)
    80007974:	01813083          	ld	ra,24(sp)
    80007978:	01013403          	ld	s0,16(sp)
    8000797c:	00e4b023          	sd	a4,0(s1)
    80007980:	0097b023          	sd	s1,0(a5)
    80007984:	00813483          	ld	s1,8(sp)
    80007988:	02010113          	addi	sp,sp,32
    8000798c:	00008067          	ret
    80007990:	00002517          	auipc	a0,0x2
    80007994:	dd050513          	addi	a0,a0,-560 # 80009760 <digits+0x18>
    80007998:	fffff097          	auipc	ra,0xfffff
    8000799c:	354080e7          	jalr	852(ra) # 80006cec <panic>

00000000800079a0 <kalloc>:
    800079a0:	fe010113          	addi	sp,sp,-32
    800079a4:	00813823          	sd	s0,16(sp)
    800079a8:	00913423          	sd	s1,8(sp)
    800079ac:	00113c23          	sd	ra,24(sp)
    800079b0:	02010413          	addi	s0,sp,32
    800079b4:	00004797          	auipc	a5,0x4
    800079b8:	d0c78793          	addi	a5,a5,-756 # 8000b6c0 <kmem>
    800079bc:	0007b483          	ld	s1,0(a5)
    800079c0:	02048063          	beqz	s1,800079e0 <kalloc+0x40>
    800079c4:	0004b703          	ld	a4,0(s1)
    800079c8:	00001637          	lui	a2,0x1
    800079cc:	00500593          	li	a1,5
    800079d0:	00048513          	mv	a0,s1
    800079d4:	00e7b023          	sd	a4,0(a5)
    800079d8:	00000097          	auipc	ra,0x0
    800079dc:	400080e7          	jalr	1024(ra) # 80007dd8 <__memset>
    800079e0:	01813083          	ld	ra,24(sp)
    800079e4:	01013403          	ld	s0,16(sp)
    800079e8:	00048513          	mv	a0,s1
    800079ec:	00813483          	ld	s1,8(sp)
    800079f0:	02010113          	addi	sp,sp,32
    800079f4:	00008067          	ret

00000000800079f8 <initlock>:
    800079f8:	ff010113          	addi	sp,sp,-16
    800079fc:	00813423          	sd	s0,8(sp)
    80007a00:	01010413          	addi	s0,sp,16
    80007a04:	00813403          	ld	s0,8(sp)
    80007a08:	00b53423          	sd	a1,8(a0)
    80007a0c:	00052023          	sw	zero,0(a0)
    80007a10:	00053823          	sd	zero,16(a0)
    80007a14:	01010113          	addi	sp,sp,16
    80007a18:	00008067          	ret

0000000080007a1c <acquire>:
    80007a1c:	fe010113          	addi	sp,sp,-32
    80007a20:	00813823          	sd	s0,16(sp)
    80007a24:	00913423          	sd	s1,8(sp)
    80007a28:	00113c23          	sd	ra,24(sp)
    80007a2c:	01213023          	sd	s2,0(sp)
    80007a30:	02010413          	addi	s0,sp,32
    80007a34:	00050493          	mv	s1,a0
    80007a38:	10002973          	csrr	s2,sstatus
    80007a3c:	100027f3          	csrr	a5,sstatus
    80007a40:	ffd7f793          	andi	a5,a5,-3
    80007a44:	10079073          	csrw	sstatus,a5
    80007a48:	fffff097          	auipc	ra,0xfffff
    80007a4c:	8e8080e7          	jalr	-1816(ra) # 80006330 <mycpu>
    80007a50:	07852783          	lw	a5,120(a0)
    80007a54:	06078e63          	beqz	a5,80007ad0 <acquire+0xb4>
    80007a58:	fffff097          	auipc	ra,0xfffff
    80007a5c:	8d8080e7          	jalr	-1832(ra) # 80006330 <mycpu>
    80007a60:	07852783          	lw	a5,120(a0)
    80007a64:	0004a703          	lw	a4,0(s1)
    80007a68:	0017879b          	addiw	a5,a5,1
    80007a6c:	06f52c23          	sw	a5,120(a0)
    80007a70:	04071063          	bnez	a4,80007ab0 <acquire+0x94>
    80007a74:	00100713          	li	a4,1
    80007a78:	00070793          	mv	a5,a4
    80007a7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007a80:	0007879b          	sext.w	a5,a5
    80007a84:	fe079ae3          	bnez	a5,80007a78 <acquire+0x5c>
    80007a88:	0ff0000f          	fence
    80007a8c:	fffff097          	auipc	ra,0xfffff
    80007a90:	8a4080e7          	jalr	-1884(ra) # 80006330 <mycpu>
    80007a94:	01813083          	ld	ra,24(sp)
    80007a98:	01013403          	ld	s0,16(sp)
    80007a9c:	00a4b823          	sd	a0,16(s1)
    80007aa0:	00013903          	ld	s2,0(sp)
    80007aa4:	00813483          	ld	s1,8(sp)
    80007aa8:	02010113          	addi	sp,sp,32
    80007aac:	00008067          	ret
    80007ab0:	0104b903          	ld	s2,16(s1)
    80007ab4:	fffff097          	auipc	ra,0xfffff
    80007ab8:	87c080e7          	jalr	-1924(ra) # 80006330 <mycpu>
    80007abc:	faa91ce3          	bne	s2,a0,80007a74 <acquire+0x58>
    80007ac0:	00002517          	auipc	a0,0x2
    80007ac4:	ca850513          	addi	a0,a0,-856 # 80009768 <digits+0x20>
    80007ac8:	fffff097          	auipc	ra,0xfffff
    80007acc:	224080e7          	jalr	548(ra) # 80006cec <panic>
    80007ad0:	00195913          	srli	s2,s2,0x1
    80007ad4:	fffff097          	auipc	ra,0xfffff
    80007ad8:	85c080e7          	jalr	-1956(ra) # 80006330 <mycpu>
    80007adc:	00197913          	andi	s2,s2,1
    80007ae0:	07252e23          	sw	s2,124(a0)
    80007ae4:	f75ff06f          	j	80007a58 <acquire+0x3c>

0000000080007ae8 <release>:
    80007ae8:	fe010113          	addi	sp,sp,-32
    80007aec:	00813823          	sd	s0,16(sp)
    80007af0:	00113c23          	sd	ra,24(sp)
    80007af4:	00913423          	sd	s1,8(sp)
    80007af8:	01213023          	sd	s2,0(sp)
    80007afc:	02010413          	addi	s0,sp,32
    80007b00:	00052783          	lw	a5,0(a0)
    80007b04:	00079a63          	bnez	a5,80007b18 <release+0x30>
    80007b08:	00002517          	auipc	a0,0x2
    80007b0c:	c6850513          	addi	a0,a0,-920 # 80009770 <digits+0x28>
    80007b10:	fffff097          	auipc	ra,0xfffff
    80007b14:	1dc080e7          	jalr	476(ra) # 80006cec <panic>
    80007b18:	01053903          	ld	s2,16(a0)
    80007b1c:	00050493          	mv	s1,a0
    80007b20:	fffff097          	auipc	ra,0xfffff
    80007b24:	810080e7          	jalr	-2032(ra) # 80006330 <mycpu>
    80007b28:	fea910e3          	bne	s2,a0,80007b08 <release+0x20>
    80007b2c:	0004b823          	sd	zero,16(s1)
    80007b30:	0ff0000f          	fence
    80007b34:	0f50000f          	fence	iorw,ow
    80007b38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007b3c:	ffffe097          	auipc	ra,0xffffe
    80007b40:	7f4080e7          	jalr	2036(ra) # 80006330 <mycpu>
    80007b44:	100027f3          	csrr	a5,sstatus
    80007b48:	0027f793          	andi	a5,a5,2
    80007b4c:	04079a63          	bnez	a5,80007ba0 <release+0xb8>
    80007b50:	07852783          	lw	a5,120(a0)
    80007b54:	02f05e63          	blez	a5,80007b90 <release+0xa8>
    80007b58:	fff7871b          	addiw	a4,a5,-1
    80007b5c:	06e52c23          	sw	a4,120(a0)
    80007b60:	00071c63          	bnez	a4,80007b78 <release+0x90>
    80007b64:	07c52783          	lw	a5,124(a0)
    80007b68:	00078863          	beqz	a5,80007b78 <release+0x90>
    80007b6c:	100027f3          	csrr	a5,sstatus
    80007b70:	0027e793          	ori	a5,a5,2
    80007b74:	10079073          	csrw	sstatus,a5
    80007b78:	01813083          	ld	ra,24(sp)
    80007b7c:	01013403          	ld	s0,16(sp)
    80007b80:	00813483          	ld	s1,8(sp)
    80007b84:	00013903          	ld	s2,0(sp)
    80007b88:	02010113          	addi	sp,sp,32
    80007b8c:	00008067          	ret
    80007b90:	00002517          	auipc	a0,0x2
    80007b94:	c0050513          	addi	a0,a0,-1024 # 80009790 <digits+0x48>
    80007b98:	fffff097          	auipc	ra,0xfffff
    80007b9c:	154080e7          	jalr	340(ra) # 80006cec <panic>
    80007ba0:	00002517          	auipc	a0,0x2
    80007ba4:	bd850513          	addi	a0,a0,-1064 # 80009778 <digits+0x30>
    80007ba8:	fffff097          	auipc	ra,0xfffff
    80007bac:	144080e7          	jalr	324(ra) # 80006cec <panic>

0000000080007bb0 <holding>:
    80007bb0:	00052783          	lw	a5,0(a0)
    80007bb4:	00079663          	bnez	a5,80007bc0 <holding+0x10>
    80007bb8:	00000513          	li	a0,0
    80007bbc:	00008067          	ret
    80007bc0:	fe010113          	addi	sp,sp,-32
    80007bc4:	00813823          	sd	s0,16(sp)
    80007bc8:	00913423          	sd	s1,8(sp)
    80007bcc:	00113c23          	sd	ra,24(sp)
    80007bd0:	02010413          	addi	s0,sp,32
    80007bd4:	01053483          	ld	s1,16(a0)
    80007bd8:	ffffe097          	auipc	ra,0xffffe
    80007bdc:	758080e7          	jalr	1880(ra) # 80006330 <mycpu>
    80007be0:	01813083          	ld	ra,24(sp)
    80007be4:	01013403          	ld	s0,16(sp)
    80007be8:	40a48533          	sub	a0,s1,a0
    80007bec:	00153513          	seqz	a0,a0
    80007bf0:	00813483          	ld	s1,8(sp)
    80007bf4:	02010113          	addi	sp,sp,32
    80007bf8:	00008067          	ret

0000000080007bfc <push_off>:
    80007bfc:	fe010113          	addi	sp,sp,-32
    80007c00:	00813823          	sd	s0,16(sp)
    80007c04:	00113c23          	sd	ra,24(sp)
    80007c08:	00913423          	sd	s1,8(sp)
    80007c0c:	02010413          	addi	s0,sp,32
    80007c10:	100024f3          	csrr	s1,sstatus
    80007c14:	100027f3          	csrr	a5,sstatus
    80007c18:	ffd7f793          	andi	a5,a5,-3
    80007c1c:	10079073          	csrw	sstatus,a5
    80007c20:	ffffe097          	auipc	ra,0xffffe
    80007c24:	710080e7          	jalr	1808(ra) # 80006330 <mycpu>
    80007c28:	07852783          	lw	a5,120(a0)
    80007c2c:	02078663          	beqz	a5,80007c58 <push_off+0x5c>
    80007c30:	ffffe097          	auipc	ra,0xffffe
    80007c34:	700080e7          	jalr	1792(ra) # 80006330 <mycpu>
    80007c38:	07852783          	lw	a5,120(a0)
    80007c3c:	01813083          	ld	ra,24(sp)
    80007c40:	01013403          	ld	s0,16(sp)
    80007c44:	0017879b          	addiw	a5,a5,1
    80007c48:	06f52c23          	sw	a5,120(a0)
    80007c4c:	00813483          	ld	s1,8(sp)
    80007c50:	02010113          	addi	sp,sp,32
    80007c54:	00008067          	ret
    80007c58:	0014d493          	srli	s1,s1,0x1
    80007c5c:	ffffe097          	auipc	ra,0xffffe
    80007c60:	6d4080e7          	jalr	1748(ra) # 80006330 <mycpu>
    80007c64:	0014f493          	andi	s1,s1,1
    80007c68:	06952e23          	sw	s1,124(a0)
    80007c6c:	fc5ff06f          	j	80007c30 <push_off+0x34>

0000000080007c70 <pop_off>:
    80007c70:	ff010113          	addi	sp,sp,-16
    80007c74:	00813023          	sd	s0,0(sp)
    80007c78:	00113423          	sd	ra,8(sp)
    80007c7c:	01010413          	addi	s0,sp,16
    80007c80:	ffffe097          	auipc	ra,0xffffe
    80007c84:	6b0080e7          	jalr	1712(ra) # 80006330 <mycpu>
    80007c88:	100027f3          	csrr	a5,sstatus
    80007c8c:	0027f793          	andi	a5,a5,2
    80007c90:	04079663          	bnez	a5,80007cdc <pop_off+0x6c>
    80007c94:	07852783          	lw	a5,120(a0)
    80007c98:	02f05a63          	blez	a5,80007ccc <pop_off+0x5c>
    80007c9c:	fff7871b          	addiw	a4,a5,-1
    80007ca0:	06e52c23          	sw	a4,120(a0)
    80007ca4:	00071c63          	bnez	a4,80007cbc <pop_off+0x4c>
    80007ca8:	07c52783          	lw	a5,124(a0)
    80007cac:	00078863          	beqz	a5,80007cbc <pop_off+0x4c>
    80007cb0:	100027f3          	csrr	a5,sstatus
    80007cb4:	0027e793          	ori	a5,a5,2
    80007cb8:	10079073          	csrw	sstatus,a5
    80007cbc:	00813083          	ld	ra,8(sp)
    80007cc0:	00013403          	ld	s0,0(sp)
    80007cc4:	01010113          	addi	sp,sp,16
    80007cc8:	00008067          	ret
    80007ccc:	00002517          	auipc	a0,0x2
    80007cd0:	ac450513          	addi	a0,a0,-1340 # 80009790 <digits+0x48>
    80007cd4:	fffff097          	auipc	ra,0xfffff
    80007cd8:	018080e7          	jalr	24(ra) # 80006cec <panic>
    80007cdc:	00002517          	auipc	a0,0x2
    80007ce0:	a9c50513          	addi	a0,a0,-1380 # 80009778 <digits+0x30>
    80007ce4:	fffff097          	auipc	ra,0xfffff
    80007ce8:	008080e7          	jalr	8(ra) # 80006cec <panic>

0000000080007cec <push_on>:
    80007cec:	fe010113          	addi	sp,sp,-32
    80007cf0:	00813823          	sd	s0,16(sp)
    80007cf4:	00113c23          	sd	ra,24(sp)
    80007cf8:	00913423          	sd	s1,8(sp)
    80007cfc:	02010413          	addi	s0,sp,32
    80007d00:	100024f3          	csrr	s1,sstatus
    80007d04:	100027f3          	csrr	a5,sstatus
    80007d08:	0027e793          	ori	a5,a5,2
    80007d0c:	10079073          	csrw	sstatus,a5
    80007d10:	ffffe097          	auipc	ra,0xffffe
    80007d14:	620080e7          	jalr	1568(ra) # 80006330 <mycpu>
    80007d18:	07852783          	lw	a5,120(a0)
    80007d1c:	02078663          	beqz	a5,80007d48 <push_on+0x5c>
    80007d20:	ffffe097          	auipc	ra,0xffffe
    80007d24:	610080e7          	jalr	1552(ra) # 80006330 <mycpu>
    80007d28:	07852783          	lw	a5,120(a0)
    80007d2c:	01813083          	ld	ra,24(sp)
    80007d30:	01013403          	ld	s0,16(sp)
    80007d34:	0017879b          	addiw	a5,a5,1
    80007d38:	06f52c23          	sw	a5,120(a0)
    80007d3c:	00813483          	ld	s1,8(sp)
    80007d40:	02010113          	addi	sp,sp,32
    80007d44:	00008067          	ret
    80007d48:	0014d493          	srli	s1,s1,0x1
    80007d4c:	ffffe097          	auipc	ra,0xffffe
    80007d50:	5e4080e7          	jalr	1508(ra) # 80006330 <mycpu>
    80007d54:	0014f493          	andi	s1,s1,1
    80007d58:	06952e23          	sw	s1,124(a0)
    80007d5c:	fc5ff06f          	j	80007d20 <push_on+0x34>

0000000080007d60 <pop_on>:
    80007d60:	ff010113          	addi	sp,sp,-16
    80007d64:	00813023          	sd	s0,0(sp)
    80007d68:	00113423          	sd	ra,8(sp)
    80007d6c:	01010413          	addi	s0,sp,16
    80007d70:	ffffe097          	auipc	ra,0xffffe
    80007d74:	5c0080e7          	jalr	1472(ra) # 80006330 <mycpu>
    80007d78:	100027f3          	csrr	a5,sstatus
    80007d7c:	0027f793          	andi	a5,a5,2
    80007d80:	04078463          	beqz	a5,80007dc8 <pop_on+0x68>
    80007d84:	07852783          	lw	a5,120(a0)
    80007d88:	02f05863          	blez	a5,80007db8 <pop_on+0x58>
    80007d8c:	fff7879b          	addiw	a5,a5,-1
    80007d90:	06f52c23          	sw	a5,120(a0)
    80007d94:	07853783          	ld	a5,120(a0)
    80007d98:	00079863          	bnez	a5,80007da8 <pop_on+0x48>
    80007d9c:	100027f3          	csrr	a5,sstatus
    80007da0:	ffd7f793          	andi	a5,a5,-3
    80007da4:	10079073          	csrw	sstatus,a5
    80007da8:	00813083          	ld	ra,8(sp)
    80007dac:	00013403          	ld	s0,0(sp)
    80007db0:	01010113          	addi	sp,sp,16
    80007db4:	00008067          	ret
    80007db8:	00002517          	auipc	a0,0x2
    80007dbc:	a0050513          	addi	a0,a0,-1536 # 800097b8 <digits+0x70>
    80007dc0:	fffff097          	auipc	ra,0xfffff
    80007dc4:	f2c080e7          	jalr	-212(ra) # 80006cec <panic>
    80007dc8:	00002517          	auipc	a0,0x2
    80007dcc:	9d050513          	addi	a0,a0,-1584 # 80009798 <digits+0x50>
    80007dd0:	fffff097          	auipc	ra,0xfffff
    80007dd4:	f1c080e7          	jalr	-228(ra) # 80006cec <panic>

0000000080007dd8 <__memset>:
    80007dd8:	ff010113          	addi	sp,sp,-16
    80007ddc:	00813423          	sd	s0,8(sp)
    80007de0:	01010413          	addi	s0,sp,16
    80007de4:	1a060e63          	beqz	a2,80007fa0 <__memset+0x1c8>
    80007de8:	40a007b3          	neg	a5,a0
    80007dec:	0077f793          	andi	a5,a5,7
    80007df0:	00778693          	addi	a3,a5,7
    80007df4:	00b00813          	li	a6,11
    80007df8:	0ff5f593          	andi	a1,a1,255
    80007dfc:	fff6071b          	addiw	a4,a2,-1
    80007e00:	1b06e663          	bltu	a3,a6,80007fac <__memset+0x1d4>
    80007e04:	1cd76463          	bltu	a4,a3,80007fcc <__memset+0x1f4>
    80007e08:	1a078e63          	beqz	a5,80007fc4 <__memset+0x1ec>
    80007e0c:	00b50023          	sb	a1,0(a0)
    80007e10:	00100713          	li	a4,1
    80007e14:	1ae78463          	beq	a5,a4,80007fbc <__memset+0x1e4>
    80007e18:	00b500a3          	sb	a1,1(a0)
    80007e1c:	00200713          	li	a4,2
    80007e20:	1ae78a63          	beq	a5,a4,80007fd4 <__memset+0x1fc>
    80007e24:	00b50123          	sb	a1,2(a0)
    80007e28:	00300713          	li	a4,3
    80007e2c:	18e78463          	beq	a5,a4,80007fb4 <__memset+0x1dc>
    80007e30:	00b501a3          	sb	a1,3(a0)
    80007e34:	00400713          	li	a4,4
    80007e38:	1ae78263          	beq	a5,a4,80007fdc <__memset+0x204>
    80007e3c:	00b50223          	sb	a1,4(a0)
    80007e40:	00500713          	li	a4,5
    80007e44:	1ae78063          	beq	a5,a4,80007fe4 <__memset+0x20c>
    80007e48:	00b502a3          	sb	a1,5(a0)
    80007e4c:	00700713          	li	a4,7
    80007e50:	18e79e63          	bne	a5,a4,80007fec <__memset+0x214>
    80007e54:	00b50323          	sb	a1,6(a0)
    80007e58:	00700e93          	li	t4,7
    80007e5c:	00859713          	slli	a4,a1,0x8
    80007e60:	00e5e733          	or	a4,a1,a4
    80007e64:	01059e13          	slli	t3,a1,0x10
    80007e68:	01c76e33          	or	t3,a4,t3
    80007e6c:	01859313          	slli	t1,a1,0x18
    80007e70:	006e6333          	or	t1,t3,t1
    80007e74:	02059893          	slli	a7,a1,0x20
    80007e78:	40f60e3b          	subw	t3,a2,a5
    80007e7c:	011368b3          	or	a7,t1,a7
    80007e80:	02859813          	slli	a6,a1,0x28
    80007e84:	0108e833          	or	a6,a7,a6
    80007e88:	03059693          	slli	a3,a1,0x30
    80007e8c:	003e589b          	srliw	a7,t3,0x3
    80007e90:	00d866b3          	or	a3,a6,a3
    80007e94:	03859713          	slli	a4,a1,0x38
    80007e98:	00389813          	slli	a6,a7,0x3
    80007e9c:	00f507b3          	add	a5,a0,a5
    80007ea0:	00e6e733          	or	a4,a3,a4
    80007ea4:	000e089b          	sext.w	a7,t3
    80007ea8:	00f806b3          	add	a3,a6,a5
    80007eac:	00e7b023          	sd	a4,0(a5)
    80007eb0:	00878793          	addi	a5,a5,8
    80007eb4:	fed79ce3          	bne	a5,a3,80007eac <__memset+0xd4>
    80007eb8:	ff8e7793          	andi	a5,t3,-8
    80007ebc:	0007871b          	sext.w	a4,a5
    80007ec0:	01d787bb          	addw	a5,a5,t4
    80007ec4:	0ce88e63          	beq	a7,a4,80007fa0 <__memset+0x1c8>
    80007ec8:	00f50733          	add	a4,a0,a5
    80007ecc:	00b70023          	sb	a1,0(a4)
    80007ed0:	0017871b          	addiw	a4,a5,1
    80007ed4:	0cc77663          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007ed8:	00e50733          	add	a4,a0,a4
    80007edc:	00b70023          	sb	a1,0(a4)
    80007ee0:	0027871b          	addiw	a4,a5,2
    80007ee4:	0ac77e63          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007ee8:	00e50733          	add	a4,a0,a4
    80007eec:	00b70023          	sb	a1,0(a4)
    80007ef0:	0037871b          	addiw	a4,a5,3
    80007ef4:	0ac77663          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007ef8:	00e50733          	add	a4,a0,a4
    80007efc:	00b70023          	sb	a1,0(a4)
    80007f00:	0047871b          	addiw	a4,a5,4
    80007f04:	08c77e63          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007f08:	00e50733          	add	a4,a0,a4
    80007f0c:	00b70023          	sb	a1,0(a4)
    80007f10:	0057871b          	addiw	a4,a5,5
    80007f14:	08c77663          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007f18:	00e50733          	add	a4,a0,a4
    80007f1c:	00b70023          	sb	a1,0(a4)
    80007f20:	0067871b          	addiw	a4,a5,6
    80007f24:	06c77e63          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007f28:	00e50733          	add	a4,a0,a4
    80007f2c:	00b70023          	sb	a1,0(a4)
    80007f30:	0077871b          	addiw	a4,a5,7
    80007f34:	06c77663          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007f38:	00e50733          	add	a4,a0,a4
    80007f3c:	00b70023          	sb	a1,0(a4)
    80007f40:	0087871b          	addiw	a4,a5,8
    80007f44:	04c77e63          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007f48:	00e50733          	add	a4,a0,a4
    80007f4c:	00b70023          	sb	a1,0(a4)
    80007f50:	0097871b          	addiw	a4,a5,9
    80007f54:	04c77663          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007f58:	00e50733          	add	a4,a0,a4
    80007f5c:	00b70023          	sb	a1,0(a4)
    80007f60:	00a7871b          	addiw	a4,a5,10
    80007f64:	02c77e63          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007f68:	00e50733          	add	a4,a0,a4
    80007f6c:	00b70023          	sb	a1,0(a4)
    80007f70:	00b7871b          	addiw	a4,a5,11
    80007f74:	02c77663          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007f78:	00e50733          	add	a4,a0,a4
    80007f7c:	00b70023          	sb	a1,0(a4)
    80007f80:	00c7871b          	addiw	a4,a5,12
    80007f84:	00c77e63          	bgeu	a4,a2,80007fa0 <__memset+0x1c8>
    80007f88:	00e50733          	add	a4,a0,a4
    80007f8c:	00b70023          	sb	a1,0(a4)
    80007f90:	00d7879b          	addiw	a5,a5,13
    80007f94:	00c7f663          	bgeu	a5,a2,80007fa0 <__memset+0x1c8>
    80007f98:	00f507b3          	add	a5,a0,a5
    80007f9c:	00b78023          	sb	a1,0(a5)
    80007fa0:	00813403          	ld	s0,8(sp)
    80007fa4:	01010113          	addi	sp,sp,16
    80007fa8:	00008067          	ret
    80007fac:	00b00693          	li	a3,11
    80007fb0:	e55ff06f          	j	80007e04 <__memset+0x2c>
    80007fb4:	00300e93          	li	t4,3
    80007fb8:	ea5ff06f          	j	80007e5c <__memset+0x84>
    80007fbc:	00100e93          	li	t4,1
    80007fc0:	e9dff06f          	j	80007e5c <__memset+0x84>
    80007fc4:	00000e93          	li	t4,0
    80007fc8:	e95ff06f          	j	80007e5c <__memset+0x84>
    80007fcc:	00000793          	li	a5,0
    80007fd0:	ef9ff06f          	j	80007ec8 <__memset+0xf0>
    80007fd4:	00200e93          	li	t4,2
    80007fd8:	e85ff06f          	j	80007e5c <__memset+0x84>
    80007fdc:	00400e93          	li	t4,4
    80007fe0:	e7dff06f          	j	80007e5c <__memset+0x84>
    80007fe4:	00500e93          	li	t4,5
    80007fe8:	e75ff06f          	j	80007e5c <__memset+0x84>
    80007fec:	00600e93          	li	t4,6
    80007ff0:	e6dff06f          	j	80007e5c <__memset+0x84>

0000000080007ff4 <__memmove>:
    80007ff4:	ff010113          	addi	sp,sp,-16
    80007ff8:	00813423          	sd	s0,8(sp)
    80007ffc:	01010413          	addi	s0,sp,16
    80008000:	0e060863          	beqz	a2,800080f0 <__memmove+0xfc>
    80008004:	fff6069b          	addiw	a3,a2,-1
    80008008:	0006881b          	sext.w	a6,a3
    8000800c:	0ea5e863          	bltu	a1,a0,800080fc <__memmove+0x108>
    80008010:	00758713          	addi	a4,a1,7
    80008014:	00a5e7b3          	or	a5,a1,a0
    80008018:	40a70733          	sub	a4,a4,a0
    8000801c:	0077f793          	andi	a5,a5,7
    80008020:	00f73713          	sltiu	a4,a4,15
    80008024:	00174713          	xori	a4,a4,1
    80008028:	0017b793          	seqz	a5,a5
    8000802c:	00e7f7b3          	and	a5,a5,a4
    80008030:	10078863          	beqz	a5,80008140 <__memmove+0x14c>
    80008034:	00900793          	li	a5,9
    80008038:	1107f463          	bgeu	a5,a6,80008140 <__memmove+0x14c>
    8000803c:	0036581b          	srliw	a6,a2,0x3
    80008040:	fff8081b          	addiw	a6,a6,-1
    80008044:	02081813          	slli	a6,a6,0x20
    80008048:	01d85893          	srli	a7,a6,0x1d
    8000804c:	00858813          	addi	a6,a1,8
    80008050:	00058793          	mv	a5,a1
    80008054:	00050713          	mv	a4,a0
    80008058:	01088833          	add	a6,a7,a6
    8000805c:	0007b883          	ld	a7,0(a5)
    80008060:	00878793          	addi	a5,a5,8
    80008064:	00870713          	addi	a4,a4,8
    80008068:	ff173c23          	sd	a7,-8(a4)
    8000806c:	ff0798e3          	bne	a5,a6,8000805c <__memmove+0x68>
    80008070:	ff867713          	andi	a4,a2,-8
    80008074:	02071793          	slli	a5,a4,0x20
    80008078:	0207d793          	srli	a5,a5,0x20
    8000807c:	00f585b3          	add	a1,a1,a5
    80008080:	40e686bb          	subw	a3,a3,a4
    80008084:	00f507b3          	add	a5,a0,a5
    80008088:	06e60463          	beq	a2,a4,800080f0 <__memmove+0xfc>
    8000808c:	0005c703          	lbu	a4,0(a1)
    80008090:	00e78023          	sb	a4,0(a5)
    80008094:	04068e63          	beqz	a3,800080f0 <__memmove+0xfc>
    80008098:	0015c603          	lbu	a2,1(a1)
    8000809c:	00100713          	li	a4,1
    800080a0:	00c780a3          	sb	a2,1(a5)
    800080a4:	04e68663          	beq	a3,a4,800080f0 <__memmove+0xfc>
    800080a8:	0025c603          	lbu	a2,2(a1)
    800080ac:	00200713          	li	a4,2
    800080b0:	00c78123          	sb	a2,2(a5)
    800080b4:	02e68e63          	beq	a3,a4,800080f0 <__memmove+0xfc>
    800080b8:	0035c603          	lbu	a2,3(a1)
    800080bc:	00300713          	li	a4,3
    800080c0:	00c781a3          	sb	a2,3(a5)
    800080c4:	02e68663          	beq	a3,a4,800080f0 <__memmove+0xfc>
    800080c8:	0045c603          	lbu	a2,4(a1)
    800080cc:	00400713          	li	a4,4
    800080d0:	00c78223          	sb	a2,4(a5)
    800080d4:	00e68e63          	beq	a3,a4,800080f0 <__memmove+0xfc>
    800080d8:	0055c603          	lbu	a2,5(a1)
    800080dc:	00500713          	li	a4,5
    800080e0:	00c782a3          	sb	a2,5(a5)
    800080e4:	00e68663          	beq	a3,a4,800080f0 <__memmove+0xfc>
    800080e8:	0065c703          	lbu	a4,6(a1)
    800080ec:	00e78323          	sb	a4,6(a5)
    800080f0:	00813403          	ld	s0,8(sp)
    800080f4:	01010113          	addi	sp,sp,16
    800080f8:	00008067          	ret
    800080fc:	02061713          	slli	a4,a2,0x20
    80008100:	02075713          	srli	a4,a4,0x20
    80008104:	00e587b3          	add	a5,a1,a4
    80008108:	f0f574e3          	bgeu	a0,a5,80008010 <__memmove+0x1c>
    8000810c:	02069613          	slli	a2,a3,0x20
    80008110:	02065613          	srli	a2,a2,0x20
    80008114:	fff64613          	not	a2,a2
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00c78633          	add	a2,a5,a2
    80008120:	fff7c683          	lbu	a3,-1(a5)
    80008124:	fff78793          	addi	a5,a5,-1
    80008128:	fff70713          	addi	a4,a4,-1
    8000812c:	00d70023          	sb	a3,0(a4)
    80008130:	fec798e3          	bne	a5,a2,80008120 <__memmove+0x12c>
    80008134:	00813403          	ld	s0,8(sp)
    80008138:	01010113          	addi	sp,sp,16
    8000813c:	00008067          	ret
    80008140:	02069713          	slli	a4,a3,0x20
    80008144:	02075713          	srli	a4,a4,0x20
    80008148:	00170713          	addi	a4,a4,1
    8000814c:	00e50733          	add	a4,a0,a4
    80008150:	00050793          	mv	a5,a0
    80008154:	0005c683          	lbu	a3,0(a1)
    80008158:	00178793          	addi	a5,a5,1
    8000815c:	00158593          	addi	a1,a1,1
    80008160:	fed78fa3          	sb	a3,-1(a5)
    80008164:	fee798e3          	bne	a5,a4,80008154 <__memmove+0x160>
    80008168:	f89ff06f          	j	800080f0 <__memmove+0xfc>

000000008000816c <__putc>:
    8000816c:	fe010113          	addi	sp,sp,-32
    80008170:	00813823          	sd	s0,16(sp)
    80008174:	00113c23          	sd	ra,24(sp)
    80008178:	02010413          	addi	s0,sp,32
    8000817c:	00050793          	mv	a5,a0
    80008180:	fef40593          	addi	a1,s0,-17
    80008184:	00100613          	li	a2,1
    80008188:	00000513          	li	a0,0
    8000818c:	fef407a3          	sb	a5,-17(s0)
    80008190:	fffff097          	auipc	ra,0xfffff
    80008194:	b3c080e7          	jalr	-1220(ra) # 80006ccc <console_write>
    80008198:	01813083          	ld	ra,24(sp)
    8000819c:	01013403          	ld	s0,16(sp)
    800081a0:	02010113          	addi	sp,sp,32
    800081a4:	00008067          	ret

00000000800081a8 <__getc>:
    800081a8:	fe010113          	addi	sp,sp,-32
    800081ac:	00813823          	sd	s0,16(sp)
    800081b0:	00113c23          	sd	ra,24(sp)
    800081b4:	02010413          	addi	s0,sp,32
    800081b8:	fe840593          	addi	a1,s0,-24
    800081bc:	00100613          	li	a2,1
    800081c0:	00000513          	li	a0,0
    800081c4:	fffff097          	auipc	ra,0xfffff
    800081c8:	ae8080e7          	jalr	-1304(ra) # 80006cac <console_read>
    800081cc:	fe844503          	lbu	a0,-24(s0)
    800081d0:	01813083          	ld	ra,24(sp)
    800081d4:	01013403          	ld	s0,16(sp)
    800081d8:	02010113          	addi	sp,sp,32
    800081dc:	00008067          	ret

00000000800081e0 <console_handler>:
    800081e0:	fe010113          	addi	sp,sp,-32
    800081e4:	00813823          	sd	s0,16(sp)
    800081e8:	00113c23          	sd	ra,24(sp)
    800081ec:	00913423          	sd	s1,8(sp)
    800081f0:	02010413          	addi	s0,sp,32
    800081f4:	14202773          	csrr	a4,scause
    800081f8:	100027f3          	csrr	a5,sstatus
    800081fc:	0027f793          	andi	a5,a5,2
    80008200:	06079e63          	bnez	a5,8000827c <console_handler+0x9c>
    80008204:	00074c63          	bltz	a4,8000821c <console_handler+0x3c>
    80008208:	01813083          	ld	ra,24(sp)
    8000820c:	01013403          	ld	s0,16(sp)
    80008210:	00813483          	ld	s1,8(sp)
    80008214:	02010113          	addi	sp,sp,32
    80008218:	00008067          	ret
    8000821c:	0ff77713          	andi	a4,a4,255
    80008220:	00900793          	li	a5,9
    80008224:	fef712e3          	bne	a4,a5,80008208 <console_handler+0x28>
    80008228:	ffffe097          	auipc	ra,0xffffe
    8000822c:	6dc080e7          	jalr	1756(ra) # 80006904 <plic_claim>
    80008230:	00a00793          	li	a5,10
    80008234:	00050493          	mv	s1,a0
    80008238:	02f50c63          	beq	a0,a5,80008270 <console_handler+0x90>
    8000823c:	fc0506e3          	beqz	a0,80008208 <console_handler+0x28>
    80008240:	00050593          	mv	a1,a0
    80008244:	00001517          	auipc	a0,0x1
    80008248:	47c50513          	addi	a0,a0,1148 # 800096c0 <CONSOLE_STATUS+0x6b0>
    8000824c:	fffff097          	auipc	ra,0xfffff
    80008250:	afc080e7          	jalr	-1284(ra) # 80006d48 <__printf>
    80008254:	01013403          	ld	s0,16(sp)
    80008258:	01813083          	ld	ra,24(sp)
    8000825c:	00048513          	mv	a0,s1
    80008260:	00813483          	ld	s1,8(sp)
    80008264:	02010113          	addi	sp,sp,32
    80008268:	ffffe317          	auipc	t1,0xffffe
    8000826c:	6d430067          	jr	1748(t1) # 8000693c <plic_complete>
    80008270:	fffff097          	auipc	ra,0xfffff
    80008274:	3e0080e7          	jalr	992(ra) # 80007650 <uartintr>
    80008278:	fddff06f          	j	80008254 <console_handler+0x74>
    8000827c:	00001517          	auipc	a0,0x1
    80008280:	54450513          	addi	a0,a0,1348 # 800097c0 <digits+0x78>
    80008284:	fffff097          	auipc	ra,0xfffff
    80008288:	a68080e7          	jalr	-1432(ra) # 80006cec <panic>
	...
