
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	f1013103          	ld	sp,-240(sp) # 8000cf10 <_GLOBAL_OFFSET_TABLE_+0x70>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	470070ef          	jal	ra,8000748c <start>

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

    mv fp, sp
    80001104:	00010413          	mv	s0,sp
    .irp  index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp) // x0 je fiksna 0, x1 i x2 cuvamo u struct Context pa nam ne treba ovde
    .endr
    80001108:	00013023          	sd	zero,0(sp)
    8000110c:	00113423          	sd	ra,8(sp)
    80001110:	00213823          	sd	sp,16(sp)
    80001114:	00313c23          	sd	gp,24(sp)
    80001118:	02413023          	sd	tp,32(sp)
    8000111c:	02513423          	sd	t0,40(sp)
    80001120:	02613823          	sd	t1,48(sp)
    80001124:	02713c23          	sd	t2,56(sp)
    80001128:	04813023          	sd	s0,64(sp)
    8000112c:	04913423          	sd	s1,72(sp)
    80001130:	04a13823          	sd	a0,80(sp)
    80001134:	04b13c23          	sd	a1,88(sp)
    80001138:	06c13023          	sd	a2,96(sp)
    8000113c:	06d13423          	sd	a3,104(sp)
    80001140:	06e13823          	sd	a4,112(sp)
    80001144:	06f13c23          	sd	a5,120(sp)
    80001148:	09013023          	sd	a6,128(sp)
    8000114c:	09113423          	sd	a7,136(sp)
    80001150:	09213823          	sd	s2,144(sp)
    80001154:	09313c23          	sd	s3,152(sp)
    80001158:	0b413023          	sd	s4,160(sp)
    8000115c:	0b513423          	sd	s5,168(sp)
    80001160:	0b613823          	sd	s6,176(sp)
    80001164:	0b713c23          	sd	s7,184(sp)
    80001168:	0d813023          	sd	s8,192(sp)
    8000116c:	0d913423          	sd	s9,200(sp)
    80001170:	0da13823          	sd	s10,208(sp)
    80001174:	0db13c23          	sd	s11,216(sp)
    80001178:	0fc13023          	sd	t3,224(sp)
    8000117c:	0fd13423          	sd	t4,232(sp)
    80001180:	0fe13823          	sd	t5,240(sp)
    80001184:	0ff13c23          	sd	t6,248(sp)

    //da bi bilo lakse da pisemo prekidnu fju, u C-u ili cpp-u, a ne u asemblerskom kodu, pozivamo fju
    call _ZN5Riscv20handleSupervisorTrapEv
    80001188:	101010ef          	jal	ra,80002a88 <_ZN5Riscv20handleSupervisorTrapEv>
    .irp  index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp) // x0 je fiksna 0, x1 i x2 cuvamo u struct Context pa nam ne treba ovde
    .endr
    8000118c:	00013003          	ld	zero,0(sp)
    80001190:	00813083          	ld	ra,8(sp)
    80001194:	01013103          	ld	sp,16(sp)
    80001198:	01813183          	ld	gp,24(sp)
    8000119c:	02013203          	ld	tp,32(sp)
    800011a0:	02813283          	ld	t0,40(sp)
    800011a4:	03013303          	ld	t1,48(sp)
    800011a8:	03813383          	ld	t2,56(sp)
    800011ac:	04013403          	ld	s0,64(sp)
    800011b0:	04813483          	ld	s1,72(sp)
    800011b4:	05013503          	ld	a0,80(sp)
    800011b8:	05813583          	ld	a1,88(sp)
    800011bc:	06013603          	ld	a2,96(sp)
    800011c0:	06813683          	ld	a3,104(sp)
    800011c4:	07013703          	ld	a4,112(sp)
    800011c8:	07813783          	ld	a5,120(sp)
    800011cc:	08013803          	ld	a6,128(sp)
    800011d0:	08813883          	ld	a7,136(sp)
    800011d4:	09013903          	ld	s2,144(sp)
    800011d8:	09813983          	ld	s3,152(sp)
    800011dc:	0a013a03          	ld	s4,160(sp)
    800011e0:	0a813a83          	ld	s5,168(sp)
    800011e4:	0b013b03          	ld	s6,176(sp)
    800011e8:	0b813b83          	ld	s7,184(sp)
    800011ec:	0c013c03          	ld	s8,192(sp)
    800011f0:	0c813c83          	ld	s9,200(sp)
    800011f4:	0d013d03          	ld	s10,208(sp)
    800011f8:	0d813d83          	ld	s11,216(sp)
    800011fc:	0e013e03          	ld	t3,224(sp)
    80001200:	0e813e83          	ld	t4,232(sp)
    80001204:	0f013f03          	ld	t5,240(sp)
    80001208:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256 //vracamo prosstor
    8000120c:	10010113          	addi	sp,sp,256


    80001210:	10200073          	sret
	...

0000000080001220 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    //u a0- prvi param, oldContext, u a1-drugi param - newContext
    //ra je tamo gde contextSwitch treba da se vrati kada dodje do ret
    //context blok --> : ra, pa 64 bita(8bajtova) je ra i onda idsp
    //                   sp
    sd ra, 0*8(a0);
    80001220:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1*8(a0);
    80001224:	00253423          	sd	sp,8(a0)

    ld ra, 0*8(a1);
    80001228:	0005b083          	ld	ra,0(a1)
    ld sp, 1*8(a1);
    8000122c:	0085b103          	ld	sp,8(a1)
    80001230:	00008067          	ret

0000000080001234 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001234:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001238:	00b29a63          	bne	t0,a1,8000124c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000123c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001240:	fe029ae3          	bnez	t0,80001234 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001244:	00000513          	li	a0,0
    jr ra                  # Return.
    80001248:	00008067          	ret

000000008000124c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000124c:	00100513          	li	a0,1
    80001250:	00008067          	ret

0000000080001254 <_Z9mem_allocm>:
#include "../h/syscall_c.h"


void* mem_alloc(size_t size){
    80001254:	fe010113          	addi	sp,sp,-32
    80001258:	00813c23          	sd	s0,24(sp)
    8000125c:	02010413          	addi	s0,sp,32
    size=((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);//mora u blokovima
    80001260:	03f50513          	addi	a0,a0,63
    80001264:	00655513          	srli	a0,a0,0x6

    __asm__ volatile("mv a1, %0"::"r"(size));
    80001268:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(MEM_ALLOC));
    8000126c:	00100793          	li	a5,1
    80001270:	00078513          	mv	a0,a5
    __asm__ volatile("ecall"); // saljemo u ABI da nam u prekidnoj rutini resi posao
    80001274:	00000073          	ecall
    //dobijamo povratnu vrednost u a0, koju treba da vratimo

    void* volatile retAddr;
    __asm__ volatile("mv %0, a0":"=r"(retAddr));
    80001278:	00050793          	mv	a5,a0
    8000127c:	fef43423          	sd	a5,-24(s0)

    return retAddr;
    80001280:	fe843503          	ld	a0,-24(s0)
}
    80001284:	01813403          	ld	s0,24(sp)
    80001288:	02010113          	addi	sp,sp,32
    8000128c:	00008067          	ret

0000000080001290 <_Z8mem_freePv>:

int mem_free(void* addr){
    80001290:	fe010113          	addi	sp,sp,-32
    80001294:	00813c23          	sd	s0,24(sp)
    80001298:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(addr));
    8000129c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(MEM_FREE));
    800012a0:	00200793          	li	a5,2
    800012a4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012a8:	00000073          	ecall
    int volatile retVal;
    __asm__ volatile("mv %0, a0":"=r"(retVal));
    800012ac:	00050793          	mv	a5,a0
    800012b0:	fef42623          	sw	a5,-20(s0)
    return retVal;
    800012b4:	fec42503          	lw	a0,-20(s0)
}
    800012b8:	0005051b          	sext.w	a0,a0
    800012bc:	01813403          	ld	s0,24(sp)
    800012c0:	02010113          	addi	sp,sp,32
    800012c4:	00008067          	ret

00000000800012c8 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space(){
    800012c8:	fe010113          	addi	sp,sp,-32
    800012cc:	00813c23          	sd	s0,24(sp)
    800012d0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(MEM_FREE_SPACE));
    800012d4:	00300793          	li	a5,3
    800012d8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012dc:	00000073          	ecall
    size_t volatile block;
    __asm__ volatile("mv %0, a0":"=r"(block));
    800012e0:	00050793          	mv	a5,a0
    800012e4:	fef43423          	sd	a5,-24(s0)
    return block;
    800012e8:	fe843503          	ld	a0,-24(s0)
}
    800012ec:	01813403          	ld	s0,24(sp)
    800012f0:	02010113          	addi	sp,sp,32
    800012f4:	00008067          	ret

00000000800012f8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block(){
    800012f8:	fe010113          	addi	sp,sp,-32
    800012fc:	00813c23          	sd	s0,24(sp)
    80001300:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(MEM_LARGEST_BLOCK_SYSCALL));
    80001304:	00400793          	li	a5,4
    80001308:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000130c:	00000073          	ecall
    size_t volatile block;
    __asm__ volatile("mv %0, a0":"=r"(block));
    80001310:	00050793          	mv	a5,a0
    80001314:	fef43423          	sd	a5,-24(s0)
    return block;
    80001318:	fe843503          	ld	a0,-24(s0)
}
    8000131c:	01813403          	ld	s0,24(sp)
    80001320:	02010113          	addi	sp,sp,32
    80001324:	00008067          	ret

0000000080001328 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*),void* arg){
    80001328:	fc010113          	addi	sp,sp,-64
    8000132c:	02113c23          	sd	ra,56(sp)
    80001330:	02813823          	sd	s0,48(sp)
    80001334:	02913423          	sd	s1,40(sp)
    80001338:	03213023          	sd	s2,32(sp)
    8000133c:	01313c23          	sd	s3,24(sp)
    80001340:	04010413          	addi	s0,sp,64
    80001344:	00050493          	mv	s1,a0
    80001348:	00058913          	mv	s2,a1
    8000134c:	00060993          	mv	s3,a2
    //a1=handle,a2=funkc,a3=arg
    //ABI se razlikuje u odnosu na C API, ima dodatan argument - stack_space - a4
    void* addr=mem_alloc(DEFAULT_STACK_SIZE);//stek raste ka nizim adresama, mi
    80001350:	00001537          	lui	a0,0x1
    80001354:	00000097          	auipc	ra,0x0
    80001358:	f00080e7          	jalr	-256(ra) # 80001254 <_Z9mem_allocm>
    //alociramo memoriju ka visim, pa poslednja lokacija steka je zapravo prva lokacija
    //zauzete memorije
    if(!addr) return -1;
    8000135c:	04050663          	beqz	a0,800013a8 <_Z13thread_createPP7_threadPFvPvES2_+0x80>

    __asm__ volatile("mv a4, %0"::"r"(addr));
    80001360:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0"::"r"(arg));
    80001364:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    80001368:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0"::"r"(handle));
    8000136c:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0"::"r"(THREAD_CREATE));
    80001370:	01100793          	li	a5,17
    80001374:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001378:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    8000137c:	00050793          	mv	a5,a0
    80001380:	fcf42623          	sw	a5,-52(s0)
    return flag;
    80001384:	fcc42503          	lw	a0,-52(s0)
    80001388:	0005051b          	sext.w	a0,a0
}
    8000138c:	03813083          	ld	ra,56(sp)
    80001390:	03013403          	ld	s0,48(sp)
    80001394:	02813483          	ld	s1,40(sp)
    80001398:	02013903          	ld	s2,32(sp)
    8000139c:	01813983          	ld	s3,24(sp)
    800013a0:	04010113          	addi	sp,sp,64
    800013a4:	00008067          	ret
    if(!addr) return -1;
    800013a8:	fff00513          	li	a0,-1
    800013ac:	fe1ff06f          	j	8000138c <_Z13thread_createPP7_threadPFvPvES2_+0x64>

00000000800013b0 <_Z11thread_exitv>:
int thread_exit(){
    800013b0:	fe010113          	addi	sp,sp,-32
    800013b4:	00813c23          	sd	s0,24(sp)
    800013b8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(THREAD_EXIT));
    800013bc:	01200793          	li	a5,18
    800013c0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013c4:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800013c8:	00050793          	mv	a5,a0
    800013cc:	fef42623          	sw	a5,-20(s0)
    return flag;
    800013d0:	fec42503          	lw	a0,-20(s0)
}
    800013d4:	0005051b          	sext.w	a0,a0
    800013d8:	01813403          	ld	s0,24(sp)
    800013dc:	02010113          	addi	sp,sp,32
    800013e0:	00008067          	ret

00000000800013e4 <_Z15thread_dispatchv>:
void thread_dispatch(){
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0"::"r"(THREAD_DISPATCH));
    800013f0:	01300793          	li	a5,19
    800013f4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013f8:	00000073          	ecall
}
    800013fc:	00813403          	ld	s0,8(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_Z15set_max_threadsiii>:

void set_max_threads(int num_of_threads, int max_time, int interval_time){
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00813423          	sd	s0,8(sp)
    80001410:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0"::"r"(interval_time));
    80001414:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0"::"r"(max_time));
    80001418:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(num_of_threads));
    8000141c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(THREAD_SET_MAX));
    80001420:	06900793          	li	a5,105
    80001424:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001428:	00000073          	ecall
}
    8000142c:	00813403          	ld	s0,8(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_Z12block_threadPP7_threadPFvPvES2_>:


int block_thread (thread_t* handle, void(*start_routine)(void*),void* arg){
    80001438:	fc010113          	addi	sp,sp,-64
    8000143c:	02113c23          	sd	ra,56(sp)
    80001440:	02813823          	sd	s0,48(sp)
    80001444:	02913423          	sd	s1,40(sp)
    80001448:	03213023          	sd	s2,32(sp)
    8000144c:	01313c23          	sd	s3,24(sp)
    80001450:	04010413          	addi	s0,sp,64
    80001454:	00050493          	mv	s1,a0
    80001458:	00058913          	mv	s2,a1
    8000145c:	00060993          	mv	s3,a2
    //a1=handle,a2=funkc,a3=arg
    //ABI se razlikuje u odnosu na C API, ima dodatan argument - stack_space - a4
    void* addr=mem_alloc(DEFAULT_STACK_SIZE);//stek raste ka nizim adresama, mi
    80001460:	00001537          	lui	a0,0x1
    80001464:	00000097          	auipc	ra,0x0
    80001468:	df0080e7          	jalr	-528(ra) # 80001254 <_Z9mem_allocm>
    //alociramo memoriju ka visim, pa poslednja lokacija steka je zapravo prva lokacija
    //zauzete memorije
    if(!addr) return -1;
    8000146c:	04050663          	beqz	a0,800014b8 <_Z12block_threadPP7_threadPFvPvES2_+0x80>

    __asm__ volatile("mv a4, %0"::"r"(addr));
    80001470:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0"::"r"(arg));
    80001474:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    80001478:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0"::"r"(handle));
    8000147c:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0"::"r"(THREAD_BLOCK));
    80001480:	06800793          	li	a5,104
    80001484:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001488:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    8000148c:	00050793          	mv	a5,a0
    80001490:	fcf42623          	sw	a5,-52(s0)
    return flag;
    80001494:	fcc42503          	lw	a0,-52(s0)
    80001498:	0005051b          	sext.w	a0,a0
}
    8000149c:	03813083          	ld	ra,56(sp)
    800014a0:	03013403          	ld	s0,48(sp)
    800014a4:	02813483          	ld	s1,40(sp)
    800014a8:	02013903          	ld	s2,32(sp)
    800014ac:	01813983          	ld	s3,24(sp)
    800014b0:	04010113          	addi	sp,sp,64
    800014b4:	00008067          	ret
    if(!addr) return -1;
    800014b8:	fff00513          	li	a0,-1
    800014bc:	fe1ff06f          	j	8000149c <_Z12block_threadPP7_threadPFvPvES2_+0x64>

00000000800014c0 <_Z8sem_openPP4_semj>:
int sem_open (sem_t* handle,unsigned init){
    800014c0:	fe010113          	addi	sp,sp,-32
    800014c4:	00813c23          	sd	s0,24(sp)
    800014c8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a2, %0"::"r"(init));
    800014cc:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800014d0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    800014d4:	02100793          	li	a5,33
    800014d8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014dc:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800014e0:	00050793          	mv	a5,a0
    800014e4:	fef42623          	sw	a5,-20(s0)
    return flag;
    800014e8:	fec42503          	lw	a0,-20(s0)
}
    800014ec:	0005051b          	sext.w	a0,a0
    800014f0:	01813403          	ld	s0,24(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret

00000000800014fc <_Z9sem_closeP4_sem>:
int sem_close(sem_t handle){
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00813c23          	sd	s0,24(sp)
    80001504:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001508:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    8000150c:	02200793          	li	a5,34
    80001510:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001514:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001518:	00050793          	mv	a5,a0
    8000151c:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001520:	fec42503          	lw	a0,-20(s0)
}
    80001524:	0005051b          	sext.w	a0,a0
    80001528:	01813403          	ld	s0,24(sp)
    8000152c:	02010113          	addi	sp,sp,32
    80001530:	00008067          	ret

0000000080001534 <_Z8sem_waitP4_sem>:
int sem_wait(sem_t id){
    80001534:	fe010113          	addi	sp,sp,-32
    80001538:	00813c23          	sd	s0,24(sp)
    8000153c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001540:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    80001544:	02300793          	li	a5,35
    80001548:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000154c:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001550:	00050793          	mv	a5,a0
    80001554:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001558:	fec42503          	lw	a0,-20(s0)
}
    8000155c:	0005051b          	sext.w	a0,a0
    80001560:	01813403          	ld	s0,24(sp)
    80001564:	02010113          	addi	sp,sp,32
    80001568:	00008067          	ret

000000008000156c <_Z10sem_signalP4_sem>:
int sem_signal(sem_t id){
    8000156c:	fe010113          	addi	sp,sp,-32
    80001570:	00813c23          	sd	s0,24(sp)
    80001574:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001578:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    8000157c:	02400793          	li	a5,36
    80001580:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001584:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001588:	00050793          	mv	a5,a0
    8000158c:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001590:	fec42503          	lw	a0,-20(s0)
}
    80001594:	0005051b          	sext.w	a0,a0
    80001598:	01813403          	ld	s0,24(sp)
    8000159c:	02010113          	addi	sp,sp,32
    800015a0:	00008067          	ret

00000000800015a4 <_Z10time_sleepm>:

int time_sleep(time_t tajmara){
    800015a4:	fe010113          	addi	sp,sp,-32
    800015a8:	00813c23          	sd	s0,24(sp)
    800015ac:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(tajmara));
    800015b0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    800015b4:	03100793          	li	a5,49
    800015b8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015bc:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800015c0:	00050793          	mv	a5,a0
    800015c4:	fef42623          	sw	a5,-20(s0)
    return flag;
    800015c8:	fec42503          	lw	a0,-20(s0)
}
    800015cc:	0005051b          	sext.w	a0,a0
    800015d0:	01813403          	ld	s0,24(sp)
    800015d4:	02010113          	addi	sp,sp,32
    800015d8:	00008067          	ret

00000000800015dc <_Z4getcv>:

char getc(){
    800015dc:	fe010113          	addi	sp,sp,-32
    800015e0:	00813c23          	sd	s0,24(sp)
    800015e4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(GETC));
    800015e8:	04100793          	li	a5,65
    800015ec:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015f0:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800015f4:	00050793          	mv	a5,a0
    800015f8:	fef42623          	sw	a5,-20(s0)
    return flag;
    800015fc:	fec42503          	lw	a0,-20(s0)
}
    80001600:	0ff57513          	andi	a0,a0,255
    80001604:	01813403          	ld	s0,24(sp)
    80001608:	02010113          	addi	sp,sp,32
    8000160c:	00008067          	ret

0000000080001610 <_Z4putcc>:

void putc(char c){
    80001610:	ff010113          	addi	sp,sp,-16
    80001614:	00813423          	sd	s0,8(sp)
    80001618:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(c));
    8000161c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    80001620:	04200793          	li	a5,66
    80001624:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001628:	00000073          	ecall
}
    8000162c:	00813403          	ld	s0,8(sp)
    80001630:	01010113          	addi	sp,sp,16
    80001634:	00008067          	ret

0000000080001638 <_ZN11mySemaphore15createSemaphoreEj>:
// Created by os on 9/8/25.
//

#include "../h/Semaphore.hpp"

mySemaphore *mySemaphore::createSemaphore(unsigned int i) {
    80001638:	fe010113          	addi	sp,sp,-32
    8000163c:	00113c23          	sd	ra,24(sp)
    80001640:	00813823          	sd	s0,16(sp)
    80001644:	00913423          	sd	s1,8(sp)
    80001648:	02010413          	addi	s0,sp,32
    8000164c:	00050493          	mv	s1,a0
    return new mySemaphore(i);
    80001650:	02000513          	li	a0,32
    80001654:	00001097          	auipc	ra,0x1
    80001658:	f04080e7          	jalr	-252(ra) # 80002558 <_Znwm>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    8000165c:	00053023          	sd	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80001660:	00053423          	sd	zero,8(a0)
    80001664:	00052823          	sw	zero,16(a0)
    int wait();
    int signal();
    int close();

private:
    mySemaphore(int init) : blockedQ(),val(init),closed(false){}
    80001668:	00952c23          	sw	s1,24(a0)
    8000166c:	00050e23          	sb	zero,28(a0)
}
    80001670:	01813083          	ld	ra,24(sp)
    80001674:	01013403          	ld	s0,16(sp)
    80001678:	00813483          	ld	s1,8(sp)
    8000167c:	02010113          	addi	sp,sp,32
    80001680:	00008067          	ret

0000000080001684 <_ZN11mySemaphore5blockEv>:
    if(++this->val<=0) unblock();

    return 0;
}
void mySemaphore::block()
{
    80001684:	fe010113          	addi	sp,sp,-32
    80001688:	00113c23          	sd	ra,24(sp)
    8000168c:	00813823          	sd	s0,16(sp)
    80001690:	00913423          	sd	s1,8(sp)
    80001694:	01213023          	sd	s2,0(sp)
    80001698:	02010413          	addi	s0,sp,32
    8000169c:	00050493          	mv	s1,a0
  TCB::running->setBlocked(true);
    800016a0:	0000c797          	auipc	a5,0xc
    800016a4:	8b87b783          	ld	a5,-1864(a5) # 8000cf58 <_GLOBAL_OFFSET_TABLE_+0xb8>
    800016a8:	0007b903          	ld	s2,0(a5)

    bool isFinished(){return finished;}
    void setFinished(bool flag){ TCB::finished = flag;}

    bool isBlocked(){return blocked;}
    void setBlocked(bool flag){ TCB::blocked = flag;}
    800016ac:	00100793          	li	a5,1
    800016b0:	02f908a3          	sb	a5,49(s2)
        size++;
    }
    void addLast(T *data)
    {
        size_t numOfBlocks = ((sizeof(Elem) + MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE;
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    800016b4:	00100513          	li	a0,1
    800016b8:	00002097          	auipc	ra,0x2
    800016bc:	db4080e7          	jalr	-588(ra) # 8000346c <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    800016c0:	01253023          	sd	s2,0(a0)
        elem->next = nullptr;
    800016c4:	00053423          	sd	zero,8(a0)
        if (tail)
    800016c8:	0084b783          	ld	a5,8(s1)
    800016cc:	02078c63          	beqz	a5,80001704 <_ZN11mySemaphore5blockEv+0x80>
        {
            tail->next = elem;
    800016d0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800016d4:	00a4b423          	sd	a0,8(s1)
        } else
        {
            head = tail = elem;
        }
        size++;
    800016d8:	0104a783          	lw	a5,16(s1)
    800016dc:	0017879b          	addiw	a5,a5,1
    800016e0:	00f4a823          	sw	a5,16(s1)
  blockedQ.addLast(TCB::running);
  TCB::dispatch();
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	788080e7          	jalr	1928(ra) # 80001e6c <_ZN3TCB8dispatchEv>
}
    800016ec:	01813083          	ld	ra,24(sp)
    800016f0:	01013403          	ld	s0,16(sp)
    800016f4:	00813483          	ld	s1,8(sp)
    800016f8:	00013903          	ld	s2,0(sp)
    800016fc:	02010113          	addi	sp,sp,32
    80001700:	00008067          	ret
            head = tail = elem;
    80001704:	00a4b423          	sd	a0,8(s1)
    80001708:	00a4b023          	sd	a0,0(s1)
    8000170c:	fcdff06f          	j	800016d8 <_ZN11mySemaphore5blockEv+0x54>

0000000080001710 <_ZN11mySemaphore4waitEv>:
    if(closed) return -1;
    80001710:	01c54783          	lbu	a5,28(a0)
    80001714:	06079a63          	bnez	a5,80001788 <_ZN11mySemaphore4waitEv+0x78>
    if(--this->val<0) block();
    80001718:	01852783          	lw	a5,24(a0)
    8000171c:	fff7879b          	addiw	a5,a5,-1
    80001720:	00f52c23          	sw	a5,24(a0)
    80001724:	02079713          	slli	a4,a5,0x20
    80001728:	02074063          	bltz	a4,80001748 <_ZN11mySemaphore4waitEv+0x38>
    if(TCB::running->isClosed()) return -1;
    8000172c:	0000c797          	auipc	a5,0xc
    80001730:	82c7b783          	ld	a5,-2004(a5) # 8000cf58 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80001734:	0007b783          	ld	a5,0(a5)

    bool isClosed(){return closed;}
    80001738:	0327c783          	lbu	a5,50(a5)
    8000173c:	04079e63          	bnez	a5,80001798 <_ZN11mySemaphore4waitEv+0x88>
    return 0;
    80001740:	00000513          	li	a0,0
    80001744:	00008067          	ret
int mySemaphore::wait() {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00113423          	sd	ra,8(sp)
    80001750:	00813023          	sd	s0,0(sp)
    80001754:	01010413          	addi	s0,sp,16
    if(--this->val<0) block();
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	f2c080e7          	jalr	-212(ra) # 80001684 <_ZN11mySemaphore5blockEv>
    if(TCB::running->isClosed()) return -1;
    80001760:	0000b797          	auipc	a5,0xb
    80001764:	7f87b783          	ld	a5,2040(a5) # 8000cf58 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80001768:	0007b783          	ld	a5,0(a5)
    8000176c:	0327c783          	lbu	a5,50(a5)
    80001770:	02079063          	bnez	a5,80001790 <_ZN11mySemaphore4waitEv+0x80>
    return 0;
    80001774:	00000513          	li	a0,0
}
    80001778:	00813083          	ld	ra,8(sp)
    8000177c:	00013403          	ld	s0,0(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret
    if(closed) return -1;
    80001788:	fff00513          	li	a0,-1
    8000178c:	00008067          	ret
    if(TCB::running->isClosed()) return -1;
    80001790:	fff00513          	li	a0,-1
    80001794:	fe5ff06f          	j	80001778 <_ZN11mySemaphore4waitEv+0x68>
    80001798:	fff00513          	li	a0,-1
}
    8000179c:	00008067          	ret

00000000800017a0 <_ZN11mySemaphore7unblockEv>:

void mySemaphore::unblock()
{
    800017a0:	fe010113          	addi	sp,sp,-32
    800017a4:	00113c23          	sd	ra,24(sp)
    800017a8:	00813823          	sd	s0,16(sp)
    800017ac:	00913423          	sd	s1,8(sp)
    800017b0:	01213023          	sd	s2,0(sp)
    800017b4:	02010413          	addi	s0,sp,32
    800017b8:	00050493          	mv	s1,a0
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800017bc:	00053503          	ld	a0,0(a0)
    800017c0:	06050463          	beqz	a0,80001828 <_ZN11mySemaphore7unblockEv+0x88>

        Elem *elem = head;
        head = head->next;
    800017c4:	00853783          	ld	a5,8(a0)
    800017c8:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    800017cc:	04078a63          	beqz	a5,80001820 <_ZN11mySemaphore7unblockEv+0x80>

        T *ret = elem->data;
    800017d0:	00053903          	ld	s2,0(a0)
        MemoryAllocator::mem_free(elem);
    800017d4:	00002097          	auipc	ra,0x2
    800017d8:	df4080e7          	jalr	-524(ra) # 800035c8 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    800017dc:	0104a783          	lw	a5,16(s1)
    800017e0:	fff7879b          	addiw	a5,a5,-1
    800017e4:	00f4a823          	sw	a5,16(s1)
    TCB* cur=blockedQ.removeFirst();
    if(closed) cur->setClosed(true);
    800017e8:	01c4c783          	lbu	a5,28(s1)
    800017ec:	00078663          	beqz	a5,800017f8 <_ZN11mySemaphore7unblockEv+0x58>
    void setClosed(bool flag){ TCB::closed = flag;}
    800017f0:	00100793          	li	a5,1
    800017f4:	02f90923          	sb	a5,50(s2)
    void setBlocked(bool flag){ TCB::blocked = flag;}
    800017f8:	020908a3          	sb	zero,49(s2)
    cur->setBlocked(false);
    Scheduler::put(cur);
    800017fc:	00090513          	mv	a0,s2
    80001800:	00002097          	auipc	ra,0x2
    80001804:	97c080e7          	jalr	-1668(ra) # 8000317c <_ZN9Scheduler3putEP3TCB>
}
    80001808:	01813083          	ld	ra,24(sp)
    8000180c:	01013403          	ld	s0,16(sp)
    80001810:	00813483          	ld	s1,8(sp)
    80001814:	00013903          	ld	s2,0(sp)
    80001818:	02010113          	addi	sp,sp,32
    8000181c:	00008067          	ret
        if (!head) { tail = 0; }
    80001820:	0004b423          	sd	zero,8(s1)
    80001824:	fadff06f          	j	800017d0 <_ZN11mySemaphore7unblockEv+0x30>
        if (!head) { return 0; }
    80001828:	00050913          	mv	s2,a0
    8000182c:	fbdff06f          	j	800017e8 <_ZN11mySemaphore7unblockEv+0x48>

0000000080001830 <_ZN11mySemaphore5closeEv>:
    if(closed) return -1;
    80001830:	01c54783          	lbu	a5,28(a0)
    80001834:	04079863          	bnez	a5,80001884 <_ZN11mySemaphore5closeEv+0x54>
int mySemaphore::close() {
    80001838:	fe010113          	addi	sp,sp,-32
    8000183c:	00113c23          	sd	ra,24(sp)
    80001840:	00813823          	sd	s0,16(sp)
    80001844:	00913423          	sd	s1,8(sp)
    80001848:	02010413          	addi	s0,sp,32
    8000184c:	00050493          	mv	s1,a0
    closed=true;
    80001850:	00100793          	li	a5,1
    80001854:	00f50e23          	sb	a5,28(a0)
    80001858:	0100006f          	j	80001868 <_ZN11mySemaphore5closeEv+0x38>
        unblock();
    8000185c:	00048513          	mv	a0,s1
    80001860:	00000097          	auipc	ra,0x0
    80001864:	f40080e7          	jalr	-192(ra) # 800017a0 <_ZN11mySemaphore7unblockEv>
    int getSize() {return size;}
    80001868:	0104a503          	lw	a0,16(s1)
    while(blockedQ.getSize()){
    8000186c:	fe0518e3          	bnez	a0,8000185c <_ZN11mySemaphore5closeEv+0x2c>
}
    80001870:	01813083          	ld	ra,24(sp)
    80001874:	01013403          	ld	s0,16(sp)
    80001878:	00813483          	ld	s1,8(sp)
    8000187c:	02010113          	addi	sp,sp,32
    80001880:	00008067          	ret
    if(closed) return -1;
    80001884:	fff00513          	li	a0,-1
}
    80001888:	00008067          	ret

000000008000188c <_ZN11mySemaphoreD1Ev>:
mySemaphore::~mySemaphore()
    8000188c:	ff010113          	addi	sp,sp,-16
    80001890:	00113423          	sd	ra,8(sp)
    80001894:	00813023          	sd	s0,0(sp)
    80001898:	01010413          	addi	s0,sp,16
    close();
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	f94080e7          	jalr	-108(ra) # 80001830 <_ZN11mySemaphore5closeEv>
}
    800018a4:	00813083          	ld	ra,8(sp)
    800018a8:	00013403          	ld	s0,0(sp)
    800018ac:	01010113          	addi	sp,sp,16
    800018b0:	00008067          	ret

00000000800018b4 <_ZN11mySemaphore6signalEv>:
    if(closed) return -1;
    800018b4:	01c54783          	lbu	a5,28(a0)
    800018b8:	04079663          	bnez	a5,80001904 <_ZN11mySemaphore6signalEv+0x50>
    if(++this->val<=0) unblock();
    800018bc:	01852783          	lw	a5,24(a0)
    800018c0:	0017879b          	addiw	a5,a5,1
    800018c4:	0007871b          	sext.w	a4,a5
    800018c8:	00f52c23          	sw	a5,24(a0)
    800018cc:	00e05663          	blez	a4,800018d8 <_ZN11mySemaphore6signalEv+0x24>
    return 0;
    800018d0:	00000513          	li	a0,0
}
    800018d4:	00008067          	ret
int mySemaphore::signal() {
    800018d8:	ff010113          	addi	sp,sp,-16
    800018dc:	00113423          	sd	ra,8(sp)
    800018e0:	00813023          	sd	s0,0(sp)
    800018e4:	01010413          	addi	s0,sp,16
    if(++this->val<=0) unblock();
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	eb8080e7          	jalr	-328(ra) # 800017a0 <_ZN11mySemaphore7unblockEv>
    return 0;
    800018f0:	00000513          	li	a0,0
}
    800018f4:	00813083          	ld	ra,8(sp)
    800018f8:	00013403          	ld	s0,0(sp)
    800018fc:	01010113          	addi	sp,sp,16
    80001900:	00008067          	ret
    if(closed) return -1;
    80001904:	fff00513          	li	a0,-1
    80001908:	00008067          	ret

000000008000190c <_Z15userMainWrapperPv>:
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../h/myConsole.hpp"
extern void userMain();

void userMainWrapper(void* arg){
    8000190c:	ff010113          	addi	sp,sp,-16
    80001910:	00113423          	sd	ra,8(sp)
    80001914:	00813023          	sd	s0,0(sp)
    80001918:	01010413          	addi	s0,sp,16
    userMain();
    8000191c:	00005097          	auipc	ra,0x5
    80001920:	d18080e7          	jalr	-744(ra) # 80006634 <_Z8userMainv>
}
    80001924:	00813083          	ld	ra,8(sp)
    80001928:	00013403          	ld	s0,0(sp)
    8000192c:	01010113          	addi	sp,sp,16
    80001930:	00008067          	ret

0000000080001934 <_Z4idlePv>:
void idle(void* arg){
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00113423          	sd	ra,8(sp)
    8000193c:	00813023          	sd	s0,0(sp)
    80001940:	01010413          	addi	s0,sp,16
    while(true) thread_dispatch();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	aa0080e7          	jalr	-1376(ra) # 800013e4 <_Z15thread_dispatchv>
    8000194c:	ff9ff06f          	j	80001944 <_Z4idlePv+0x10>

0000000080001950 <main>:
}
int main(){
    80001950:	fe010113          	addi	sp,sp,-32
    80001954:	00113c23          	sd	ra,24(sp)
    80001958:	00813823          	sd	s0,16(sp)
    8000195c:	00913423          	sd	s1,8(sp)
    80001960:	01213023          	sd	s2,0(sp)
    80001964:	02010413          	addi	s0,sp,32
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static size_t getLargestFreeBlock();
    static size_t getFree();
    static void initMemory(){
        freeMemHead=(FreeBlock*) HEAP_START_ADDR;
    80001968:	0000b797          	auipc	a5,0xb
    8000196c:	5607b783          	ld	a5,1376(a5) # 8000cec8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001970:	0007b783          	ld	a5,0(a5)
    80001974:	0000b697          	auipc	a3,0xb
    80001978:	58c6b683          	ld	a3,1420(a3) # 8000cf00 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000197c:	00f6b023          	sd	a5,0(a3)
        freeMemHead->next=nullptr;
    80001980:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    80001984:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    80001988:	0000b717          	auipc	a4,0xb
    8000198c:	5e073703          	ld	a4,1504(a4) # 8000cf68 <_GLOBAL_OFFSET_TABLE_+0xc8>
    80001990:	00073703          	ld	a4,0(a4)
    80001994:	40f70733          	sub	a4,a4,a5
    80001998:	fe870713          	addi	a4,a4,-24
    8000199c:	00e7b023          	sd	a4,0(a5)
        totalFreeMem=freeMemHead->size;
    800019a0:	0006b783          	ld	a5,0(a3)
    800019a4:	0007b783          	ld	a5,0(a5)
    800019a8:	0000b717          	auipc	a4,0xb
    800019ac:	57073703          	ld	a4,1392(a4) # 8000cf18 <_GLOBAL_OFFSET_TABLE_+0x78>
    800019b0:	00f73023          	sd	a5,0(a4)
        largestFreeBlock=totalFreeMem;
    800019b4:	0000b717          	auipc	a4,0xb
    800019b8:	4fc73703          	ld	a4,1276(a4) # 8000ceb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019bc:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::initMemory();
    TCB *threads[5];
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800019c0:	0000b797          	auipc	a5,0xb
    800019c4:	5207b783          	ld	a5,1312(a5) # 8000cee0 <_GLOBAL_OFFSET_TABLE_+0x40>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800019c8:	10579073          	csrw	stvec,a5

    threads[0]=TCB::createThreadBasic(nullptr,nullptr);
    800019cc:	00000593          	li	a1,0
    800019d0:	00000513          	li	a0,0
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	510080e7          	jalr	1296(ra) # 80001ee4 <_ZN3TCB17createThreadBasicEPFvPvES0_>
    TCB::running = threads[0];
    800019dc:	0000b797          	auipc	a5,0xb
    800019e0:	57c7b783          	ld	a5,1404(a5) # 8000cf58 <_GLOBAL_OFFSET_TABLE_+0xb8>
    800019e4:	00a7b023          	sd	a0,0(a5)
    uint64 *stack1 = (uint64 *) MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    800019e8:	00001537          	lui	a0,0x1
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	a80080e7          	jalr	-1408(ra) # 8000346c <_ZN15MemoryAllocator9mem_allocEm>
    800019f4:	00050493          	mv	s1,a0
    myConsole::initConsole();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	138080e7          	jalr	312(ra) # 80001b30 <_ZN9myConsole11initConsoleEv>
    myConsole::consumer = TCB::createThreadKernel(&myConsole::putcHandlerWrapper, nullptr, stack1);
    80001a00:	00048613          	mv	a2,s1
    80001a04:	00000593          	li	a1,0
    80001a08:	0000b517          	auipc	a0,0xb
    80001a0c:	4b853503          	ld	a0,1208(a0) # 8000cec0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	394080e7          	jalr	916(ra) # 80001da4 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_>
    80001a18:	0000b797          	auipc	a5,0xb
    80001a1c:	5087b783          	ld	a5,1288(a5) # 8000cf20 <_GLOBAL_OFFSET_TABLE_+0x80>
    80001a20:	00a7b023          	sd	a0,0(a5)

    Thread* idleThread = new Thread(idle,nullptr);
    80001a24:	02000513          	li	a0,32
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	b30080e7          	jalr	-1232(ra) # 80002558 <_Znwm>
    80001a30:	00050913          	mv	s2,a0
    80001a34:	00000613          	li	a2,0
    80001a38:	00000597          	auipc	a1,0x0
    80001a3c:	efc58593          	addi	a1,a1,-260 # 80001934 <_Z4idlePv>
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	c20080e7          	jalr	-992(ra) # 80002660 <_ZN6ThreadC1EPFvPvES0_>
    Semaphore* sem = new Semaphore(0);
    80001a48:	01000513          	li	a0,16
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	b0c080e7          	jalr	-1268(ra) # 80002558 <_Znwm>
    80001a54:	00050493          	mv	s1,a0
    80001a58:	00000593          	li	a1,0
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	db0080e7          	jalr	-592(ra) # 8000280c <_ZN9SemaphoreC1Ej>
    idleThread->start();
    80001a64:	00090513          	mv	a0,s2
    80001a68:	00001097          	auipc	ra,0x1
    80001a6c:	c88080e7          	jalr	-888(ra) # 800026f0 <_ZN6Thread5startEv>

    Thread* userThread = new Thread(userMainWrapper, sem);
    80001a70:	02000513          	li	a0,32
    80001a74:	00001097          	auipc	ra,0x1
    80001a78:	ae4080e7          	jalr	-1308(ra) # 80002558 <_Znwm>
    80001a7c:	00050913          	mv	s2,a0
    80001a80:	00048613          	mv	a2,s1
    80001a84:	00000597          	auipc	a1,0x0
    80001a88:	e8858593          	addi	a1,a1,-376 # 8000190c <_Z15userMainWrapperPv>
    80001a8c:	00001097          	auipc	ra,0x1
    80001a90:	bd4080e7          	jalr	-1068(ra) # 80002660 <_ZN6ThreadC1EPFvPvES0_>
    80001a94:	0580006f          	j	80001aec <main+0x19c>
    80001a98:	00050493          	mv	s1,a0
    Thread* idleThread = new Thread(idle,nullptr);
    80001a9c:	00090513          	mv	a0,s2
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	b08080e7          	jalr	-1272(ra) # 800025a8 <_ZdlPv>
    80001aa8:	00048513          	mv	a0,s1
    80001aac:	0000c097          	auipc	ra,0xc
    80001ab0:	72c080e7          	jalr	1836(ra) # 8000e1d8 <_Unwind_Resume>
    80001ab4:	00050913          	mv	s2,a0
    Semaphore* sem = new Semaphore(0);
    80001ab8:	00048513          	mv	a0,s1
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	aec080e7          	jalr	-1300(ra) # 800025a8 <_ZdlPv>
    80001ac4:	00090513          	mv	a0,s2
    80001ac8:	0000c097          	auipc	ra,0xc
    80001acc:	710080e7          	jalr	1808(ra) # 8000e1d8 <_Unwind_Resume>
    80001ad0:	00050493          	mv	s1,a0
    Thread* userThread = new Thread(userMainWrapper, sem);
    80001ad4:	00090513          	mv	a0,s2
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	ad0080e7          	jalr	-1328(ra) # 800025a8 <_ZdlPv>
    80001ae0:	00048513          	mv	a0,s1
    80001ae4:	0000c097          	auipc	ra,0xc
    80001ae8:	6f4080e7          	jalr	1780(ra) # 8000e1d8 <_Unwind_Resume>
    userThread->start();
    80001aec:	00090513          	mv	a0,s2
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	c00080e7          	jalr	-1024(ra) # 800026f0 <_ZN6Thread5startEv>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001af8:	00200793          	li	a5,2
    80001afc:	1007a073          	csrs	sstatus,a5
    //globalno prihvatamo prekide u supervizorskom modu
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    myConsole::wait();
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	9c4080e7          	jalr	-1596(ra) # 800024c4 <_ZN9myConsole4waitEv>
    sem->wait();
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	d3c080e7          	jalr	-708(ra) # 80002848 <_ZN9Semaphore4waitEv>

    return 0;
    80001b14:	00000513          	li	a0,0
    80001b18:	01813083          	ld	ra,24(sp)
    80001b1c:	01013403          	ld	s0,16(sp)
    80001b20:	00813483          	ld	s1,8(sp)
    80001b24:	00013903          	ld	s2,0(sp)
    80001b28:	02010113          	addi	sp,sp,32
    80001b2c:	00008067          	ret

0000000080001b30 <_ZN9myConsole11initConsoleEv>:
#include "../h/Semaphore.hpp"
class myConsole
{
public:

    static void initConsole(){
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00113423          	sd	ra,8(sp)
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	01010413          	addi	s0,sp,16
        inputBuf = new char[1024];
    80001b40:	40000513          	li	a0,1024
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	a3c080e7          	jalr	-1476(ra) # 80002580 <_Znam>
    80001b4c:	0000b797          	auipc	a5,0xb
    80001b50:	3e47b783          	ld	a5,996(a5) # 8000cf30 <_GLOBAL_OFFSET_TABLE_+0x90>
    80001b54:	00a7b023          	sd	a0,0(a5)
        outputBuf = new char[1024];
    80001b58:	40000513          	li	a0,1024
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	a24080e7          	jalr	-1500(ra) # 80002580 <_Znam>
    80001b64:	0000b797          	auipc	a5,0xb
    80001b68:	3dc7b783          	ld	a5,988(a5) # 8000cf40 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80001b6c:	00a7b023          	sd	a0,0(a5)
        inputItemAvail = mySemaphore::createSemaphore(0);
    80001b70:	00000513          	li	a0,0
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	ac4080e7          	jalr	-1340(ra) # 80001638 <_ZN11mySemaphore15createSemaphoreEj>
    80001b7c:	0000b797          	auipc	a5,0xb
    80001b80:	35c7b783          	ld	a5,860(a5) # 8000ced8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001b84:	00a7b023          	sd	a0,0(a5)
        outputItemAvail = mySemaphore::createSemaphore(0);
    80001b88:	00000513          	li	a0,0
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	aac080e7          	jalr	-1364(ra) # 80001638 <_ZN11mySemaphore15createSemaphoreEj>
    80001b94:	0000b797          	auipc	a5,0xb
    80001b98:	35c7b783          	ld	a5,860(a5) # 8000cef0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001b9c:	00a7b023          	sd	a0,0(a5)
        inputSpaceAvail = mySemaphore::createSemaphore(1023);
    80001ba0:	3ff00513          	li	a0,1023
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	a94080e7          	jalr	-1388(ra) # 80001638 <_ZN11mySemaphore15createSemaphoreEj>
    80001bac:	0000b797          	auipc	a5,0xb
    80001bb0:	37c7b783          	ld	a5,892(a5) # 8000cf28 <_GLOBAL_OFFSET_TABLE_+0x88>
    80001bb4:	00a7b023          	sd	a0,0(a5)
        outputSpaceAvail = mySemaphore::createSemaphore(1023);
    80001bb8:	3ff00513          	li	a0,1023
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	a7c080e7          	jalr	-1412(ra) # 80001638 <_ZN11mySemaphore15createSemaphoreEj>
    80001bc4:	0000b797          	auipc	a5,0xb
    80001bc8:	3747b783          	ld	a5,884(a5) # 8000cf38 <_GLOBAL_OFFSET_TABLE_+0x98>
    80001bcc:	00a7b023          	sd	a0,0(a5)
        mutexIn = mySemaphore::createSemaphore(1);
    80001bd0:	00100513          	li	a0,1
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	a64080e7          	jalr	-1436(ra) # 80001638 <_ZN11mySemaphore15createSemaphoreEj>
    80001bdc:	0000b797          	auipc	a5,0xb
    80001be0:	2f47b783          	ld	a5,756(a5) # 8000ced0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001be4:	00a7b023          	sd	a0,0(a5)
        mutexOut = mySemaphore::createSemaphore(1);
    80001be8:	00100513          	li	a0,1
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	a4c080e7          	jalr	-1460(ra) # 80001638 <_ZN11mySemaphore15createSemaphoreEj>
    80001bf4:	0000b797          	auipc	a5,0xb
    80001bf8:	3847b783          	ld	a5,900(a5) # 8000cf78 <_GLOBAL_OFFSET_TABLE_+0xd8>
    80001bfc:	00a7b023          	sd	a0,0(a5)
    }
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_Z41__static_initialization_and_destruction_0ii>:

TCB *TCB::createThreadBlocked(TCB::Body body, void *arg, void *stackSpace)
{
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace,1);

}
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00813423          	sd	s0,8(sp)
    80001c18:	01010413          	addi	s0,sp,16
    80001c1c:	00100793          	li	a5,1
    80001c20:	00f50863          	beq	a0,a5,80001c30 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001c24:	00813403          	ld	s0,8(sp)
    80001c28:	01010113          	addi	sp,sp,16
    80001c2c:	00008067          	ret
    80001c30:	000107b7          	lui	a5,0x10
    80001c34:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c38:	fef596e3          	bne	a1,a5,80001c24 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    80001c3c:	0000b797          	auipc	a5,0xb
    80001c40:	39478793          	addi	a5,a5,916 # 8000cfd0 <_ZN3TCB8blockedQE>
    80001c44:	0007b023          	sd	zero,0(a5)
    80001c48:	0007b423          	sd	zero,8(a5)
    80001c4c:	0007a823          	sw	zero,16(a5)
    80001c50:	fd5ff06f          	j	80001c24 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001c54 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper(){
    80001c54:	ff010113          	addi	sp,sp,-16
    80001c58:	00113423          	sd	ra,8(sp)
    80001c5c:	00813023          	sd	s0,0(sp)
    80001c60:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	db4080e7          	jalr	-588(ra) # 80002a18 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);//user mode
    80001c6c:	0000b797          	auipc	a5,0xb
    80001c70:	37c7b783          	ld	a5,892(a5) # 8000cfe8 <_ZN3TCB7runningE>
    80001c74:	0007b703          	ld	a4,0(a5)
    80001c78:	0087b503          	ld	a0,8(a5)
    80001c7c:	000700e7          	jalr	a4
    thread_exit();//user mode
    80001c80:	fffff097          	auipc	ra,0xfffff
    80001c84:	730080e7          	jalr	1840(ra) # 800013b0 <_Z11thread_exitv>
}
    80001c88:	00813083          	ld	ra,8(sp)
    80001c8c:	00013403          	ld	s0,0(sp)
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret

0000000080001c98 <_ZN3TCB13kernelWrapperEv>:
void TCB::kernelWrapper(){
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    Riscv::kernelWrapper();
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	db8080e7          	jalr	-584(ra) # 80002a60 <_ZN5Riscv13kernelWrapperEv>
    running->body(running->arg);//kernel mode
    80001cb0:	0000b797          	auipc	a5,0xb
    80001cb4:	3387b783          	ld	a5,824(a5) # 8000cfe8 <_ZN3TCB7runningE>
    80001cb8:	0007b703          	ld	a4,0(a5)
    80001cbc:	0087b503          	ld	a0,8(a5)
    80001cc0:	000700e7          	jalr	a4
    thread_exit();
    80001cc4:	fffff097          	auipc	ra,0xfffff
    80001cc8:	6ec080e7          	jalr	1772(ra) # 800013b0 <_Z11thread_exitv>
}
    80001ccc:	00813083          	ld	ra,8(sp)
    80001cd0:	00013403          	ld	s0,0(sp)
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret

0000000080001cdc <_ZN3TCB12createThreadEPFvPvES0_S0_>:
{
    80001cdc:	fd010113          	addi	sp,sp,-48
    80001ce0:	02113423          	sd	ra,40(sp)
    80001ce4:	02813023          	sd	s0,32(sp)
    80001ce8:	00913c23          	sd	s1,24(sp)
    80001cec:	01213823          	sd	s2,16(sp)
    80001cf0:	01313423          	sd	s3,8(sp)
    80001cf4:	01413023          	sd	s4,0(sp)
    80001cf8:	03010413          	addi	s0,sp,48
    80001cfc:	00050993          	mv	s3,a0
    80001d00:	00058a13          	mv	s4,a1
    80001d04:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace);
    80001d08:	03800513          	li	a0,56
    80001d0c:	00001097          	auipc	ra,0x1
    80001d10:	84c080e7          	jalr	-1972(ra) # 80002558 <_Znwm>
    80001d14:	00050493          	mv	s1,a0
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                                               }),
                                       finished(false),
                                       blocked(false),
                                       closed(false),
                                       sleep(false)
    80001d18:	01353023          	sd	s3,0(a0)
    80001d1c:	01453423          	sd	s4,8(a0)
    80001d20:	01253823          	sd	s2,16(a0)
    80001d24:	00200793          	li	a5,2
    80001d28:	00f53c23          	sd	a5,24(a0)
                                                       kernel? (uint64) &kernelWrapper:(uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
    80001d2c:	00000797          	auipc	a5,0x0
    80001d30:	f2878793          	addi	a5,a5,-216 # 80001c54 <_ZN3TCB13threadWrapperEv>
                                       sleep(false)
    80001d34:	02f53023          	sd	a5,32(a0)
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001d38:	00001637          	lui	a2,0x1
    80001d3c:	00c90933          	add	s2,s2,a2
                                       sleep(false)
    80001d40:	03253423          	sd	s2,40(a0)
    80001d44:	02050823          	sb	zero,48(a0)
    80001d48:	020508a3          	sb	zero,49(a0)
    80001d4c:	02050923          	sb	zero,50(a0)
    80001d50:	020509a3          	sb	zero,51(a0)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001d54:	02098663          	beqz	s3,80001d80 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa4>
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	424080e7          	jalr	1060(ra) # 8000317c <_ZN9Scheduler3putEP3TCB>
    80001d60:	0200006f          	j	80001d80 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa4>
    80001d64:	00050913          	mv	s2,a0
    80001d68:	00048513          	mv	a0,s1
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	83c080e7          	jalr	-1988(ra) # 800025a8 <_ZdlPv>
    80001d74:	00090513          	mv	a0,s2
    80001d78:	0000c097          	auipc	ra,0xc
    80001d7c:	460080e7          	jalr	1120(ra) # 8000e1d8 <_Unwind_Resume>
}
    80001d80:	00048513          	mv	a0,s1
    80001d84:	02813083          	ld	ra,40(sp)
    80001d88:	02013403          	ld	s0,32(sp)
    80001d8c:	01813483          	ld	s1,24(sp)
    80001d90:	01013903          	ld	s2,16(sp)
    80001d94:	00813983          	ld	s3,8(sp)
    80001d98:	00013a03          	ld	s4,0(sp)
    80001d9c:	03010113          	addi	sp,sp,48
    80001da0:	00008067          	ret

0000000080001da4 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_>:
{
    80001da4:	fd010113          	addi	sp,sp,-48
    80001da8:	02113423          	sd	ra,40(sp)
    80001dac:	02813023          	sd	s0,32(sp)
    80001db0:	00913c23          	sd	s1,24(sp)
    80001db4:	01213823          	sd	s2,16(sp)
    80001db8:	01313423          	sd	s3,8(sp)
    80001dbc:	01413023          	sd	s4,0(sp)
    80001dc0:	03010413          	addi	s0,sp,48
    80001dc4:	00050993          	mv	s3,a0
    80001dc8:	00058a13          	mv	s4,a1
    80001dcc:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace,true);
    80001dd0:	03800513          	li	a0,56
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	784080e7          	jalr	1924(ra) # 80002558 <_Znwm>
    80001ddc:	00050493          	mv	s1,a0
                                       sleep(false)
    80001de0:	01353023          	sd	s3,0(a0)
    80001de4:	01453423          	sd	s4,8(a0)
    80001de8:	01253823          	sd	s2,16(a0)
    80001dec:	00200793          	li	a5,2
    80001df0:	00f53c23          	sd	a5,24(a0)
                                                       kernel? (uint64) &kernelWrapper:(uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
    80001df4:	00000797          	auipc	a5,0x0
    80001df8:	ea478793          	addi	a5,a5,-348 # 80001c98 <_ZN3TCB13kernelWrapperEv>
                                       sleep(false)
    80001dfc:	02f53023          	sd	a5,32(a0)
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001e00:	00001637          	lui	a2,0x1
    80001e04:	00c90933          	add	s2,s2,a2
                                       sleep(false)
    80001e08:	03253423          	sd	s2,40(a0)
    80001e0c:	02050823          	sb	zero,48(a0)
    80001e10:	020508a3          	sb	zero,49(a0)
    80001e14:	02050923          	sb	zero,50(a0)
    80001e18:	020509a3          	sb	zero,51(a0)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001e1c:	02098663          	beqz	s3,80001e48 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_+0xa4>
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	35c080e7          	jalr	860(ra) # 8000317c <_ZN9Scheduler3putEP3TCB>
    80001e28:	0200006f          	j	80001e48 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_+0xa4>
    80001e2c:	00050913          	mv	s2,a0
    80001e30:	00048513          	mv	a0,s1
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	774080e7          	jalr	1908(ra) # 800025a8 <_ZdlPv>
    80001e3c:	00090513          	mv	a0,s2
    80001e40:	0000c097          	auipc	ra,0xc
    80001e44:	398080e7          	jalr	920(ra) # 8000e1d8 <_Unwind_Resume>
}
    80001e48:	00048513          	mv	a0,s1
    80001e4c:	02813083          	ld	ra,40(sp)
    80001e50:	02013403          	ld	s0,32(sp)
    80001e54:	01813483          	ld	s1,24(sp)
    80001e58:	01013903          	ld	s2,16(sp)
    80001e5c:	00813983          	ld	s3,8(sp)
    80001e60:	00013a03          	ld	s4,0(sp)
    80001e64:	03010113          	addi	sp,sp,48
    80001e68:	00008067          	ret

0000000080001e6c <_ZN3TCB8dispatchEv>:
{
    80001e6c:	fe010113          	addi	sp,sp,-32
    80001e70:	00113c23          	sd	ra,24(sp)
    80001e74:	00813823          	sd	s0,16(sp)
    80001e78:	00913423          	sd	s1,8(sp)
    80001e7c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001e80:	0000b497          	auipc	s1,0xb
    80001e84:	1684b483          	ld	s1,360(s1) # 8000cfe8 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001e88:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept()) Scheduler::put(old);
    80001e8c:	00079a63          	bnez	a5,80001ea0 <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked(){return blocked;}
    80001e90:	0314c783          	lbu	a5,49(s1)
    80001e94:	00079663          	bnez	a5,80001ea0 <_ZN3TCB8dispatchEv+0x34>
    bool isSlept(){return sleep;}
    80001e98:	0334c783          	lbu	a5,51(s1)
    80001e9c:	02078c63          	beqz	a5,80001ed4 <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	260080e7          	jalr	608(ra) # 80003100 <_ZN9Scheduler3getEv>
    80001ea8:	0000b797          	auipc	a5,0xb
    80001eac:	14a7b023          	sd	a0,320(a5) # 8000cfe8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001eb0:	02050593          	addi	a1,a0,32
    80001eb4:	02048513          	addi	a0,s1,32
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	368080e7          	jalr	872(ra) # 80001220 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001ec0:	01813083          	ld	ra,24(sp)
    80001ec4:	01013403          	ld	s0,16(sp)
    80001ec8:	00813483          	ld	s1,8(sp)
    80001ecc:	02010113          	addi	sp,sp,32
    80001ed0:	00008067          	ret
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept()) Scheduler::put(old);
    80001ed4:	00048513          	mv	a0,s1
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	2a4080e7          	jalr	676(ra) # 8000317c <_ZN9Scheduler3putEP3TCB>
    80001ee0:	fc1ff06f          	j	80001ea0 <_ZN3TCB8dispatchEv+0x34>

0000000080001ee4 <_ZN3TCB17createThreadBasicEPFvPvES0_>:
{
    80001ee4:	fd010113          	addi	sp,sp,-48
    80001ee8:	02113423          	sd	ra,40(sp)
    80001eec:	02813023          	sd	s0,32(sp)
    80001ef0:	00913c23          	sd	s1,24(sp)
    80001ef4:	01213823          	sd	s2,16(sp)
    80001ef8:	01313423          	sd	s3,8(sp)
    80001efc:	03010413          	addi	s0,sp,48
    80001f00:	00050913          	mv	s2,a0
    80001f04:	00058993          	mv	s3,a1
    return new TCB(body,arg,DEFAULT_TIME_SLICE);
    80001f08:	03800513          	li	a0,56
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	64c080e7          	jalr	1612(ra) # 80002558 <_Znwm>
    80001f14:	00050493          	mv	s1,a0
                                       sleep(false)
    80001f18:	01253023          	sd	s2,0(a0)
    80001f1c:	01353423          	sd	s3,8(a0)
                                       stack(body!=nullptr? (char*)(new char*[DEFAULT_STACK_SIZE]): nullptr),timeSlice(timeslice),
    80001f20:	00090a63          	beqz	s2,80001f34 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x50>
    80001f24:	00008537          	lui	a0,0x8
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	658080e7          	jalr	1624(ra) # 80002580 <_Znam>
    80001f30:	0080006f          	j	80001f38 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x54>
    80001f34:	00000513          	li	a0,0
                                       sleep(false)
    80001f38:	00a4b823          	sd	a0,16(s1)
    80001f3c:	00200793          	li	a5,2
    80001f40:	00f4bc23          	sd	a5,24(s1)
    80001f44:	00000797          	auipc	a5,0x0
    80001f48:	d1078793          	addi	a5,a5,-752 # 80001c54 <_ZN3TCB13threadWrapperEv>
    80001f4c:	02f4b023          	sd	a5,32(s1)
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001f50:	02090a63          	beqz	s2,80001f84 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xa0>
    80001f54:	000017b7          	lui	a5,0x1
    80001f58:	00f50533          	add	a0,a0,a5
                                       sleep(false)
    80001f5c:	02a4b423          	sd	a0,40(s1)
    80001f60:	02048823          	sb	zero,48(s1)
    80001f64:	020488a3          	sb	zero,49(s1)
    80001f68:	02048923          	sb	zero,50(s1)
    80001f6c:	020489a3          	sb	zero,51(s1)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001f70:	02090c63          	beqz	s2,80001fa8 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc4>
    80001f74:	00048513          	mv	a0,s1
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	204080e7          	jalr	516(ra) # 8000317c <_ZN9Scheduler3putEP3TCB>
    80001f80:	0280006f          	j	80001fa8 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc4>
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001f84:	00000513          	li	a0,0
    80001f88:	fd5ff06f          	j	80001f5c <_ZN3TCB17createThreadBasicEPFvPvES0_+0x78>
    80001f8c:	00050913          	mv	s2,a0
    80001f90:	00048513          	mv	a0,s1
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	614080e7          	jalr	1556(ra) # 800025a8 <_ZdlPv>
    80001f9c:	00090513          	mv	a0,s2
    80001fa0:	0000c097          	auipc	ra,0xc
    80001fa4:	238080e7          	jalr	568(ra) # 8000e1d8 <_Unwind_Resume>
}
    80001fa8:	00048513          	mv	a0,s1
    80001fac:	02813083          	ld	ra,40(sp)
    80001fb0:	02013403          	ld	s0,32(sp)
    80001fb4:	01813483          	ld	s1,24(sp)
    80001fb8:	01013903          	ld	s2,16(sp)
    80001fbc:	00813983          	ld	s3,8(sp)
    80001fc0:	03010113          	addi	sp,sp,48
    80001fc4:	00008067          	ret

0000000080001fc8 <_ZN3TCB7toSleepEm>:
{
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00113423          	sd	ra,8(sp)
    80001fd0:	00813023          	sd	s0,0(sp)
    80001fd4:	01010413          	addi	s0,sp,16
    80001fd8:	00050593          	mv	a1,a0
    running->setSleep(true);
    80001fdc:	0000b517          	auipc	a0,0xb
    80001fe0:	00c53503          	ld	a0,12(a0) # 8000cfe8 <_ZN3TCB7runningE>
    void setSleep(bool flag){ TCB::sleep = flag;}
    80001fe4:	00100713          	li	a4,1
    80001fe8:	02e509a3          	sb	a4,51(a0)
    Scheduler::putSorted(running,wakeTime);
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	2bc080e7          	jalr	700(ra) # 800032a8 <_ZN9Scheduler9putSortedEP3TCBm>
}
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <_ZN3TCB19createThreadBlockedEPFvPvES0_S0_>:
{
    80002004:	fd010113          	addi	sp,sp,-48
    80002008:	02113423          	sd	ra,40(sp)
    8000200c:	02813023          	sd	s0,32(sp)
    80002010:	00913c23          	sd	s1,24(sp)
    80002014:	01213823          	sd	s2,16(sp)
    80002018:	01313423          	sd	s3,8(sp)
    8000201c:	01413023          	sd	s4,0(sp)
    80002020:	03010413          	addi	s0,sp,48
    80002024:	00050a13          	mv	s4,a0
    80002028:	00058993          	mv	s3,a1
    8000202c:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace,1);
    80002030:	03800513          	li	a0,56
    80002034:	00000097          	auipc	ra,0x0
    80002038:	524080e7          	jalr	1316(ra) # 80002558 <_Znwm>
    8000203c:	00050493          	mv	s1,a0
                                                                                                    (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                                                                                            }),
                                                                                    finished(false),
                                                                                    blocked(false),
                                                                                    closed(false),
                                                                                    sleep(false)
    80002040:	01453023          	sd	s4,0(a0)
    80002044:	01353423          	sd	s3,8(a0)
    80002048:	01253823          	sd	s2,16(a0)
    8000204c:	00200793          	li	a5,2
    80002050:	00f53c23          	sd	a5,24(a0)
    80002054:	00000797          	auipc	a5,0x0
    80002058:	c0078793          	addi	a5,a5,-1024 # 80001c54 <_ZN3TCB13threadWrapperEv>
    8000205c:	02f53023          	sd	a5,32(a0)
                                                                                                    (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80002060:	00001637          	lui	a2,0x1
    80002064:	00c90933          	add	s2,s2,a2
                                                                                    sleep(false)
    80002068:	03253423          	sd	s2,40(a0)
    8000206c:	02050823          	sb	zero,48(a0)
    80002070:	020508a3          	sb	zero,49(a0)
    80002074:	02050923          	sb	zero,50(a0)
    80002078:	020509a3          	sb	zero,51(a0)
        size++;
    }
    void addLast(T *data)
    {
        size_t numOfBlocks = ((sizeof(Elem) + MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE;
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    8000207c:	00100513          	li	a0,1
    80002080:	00001097          	auipc	ra,0x1
    80002084:	3ec080e7          	jalr	1004(ra) # 8000346c <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80002088:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    8000208c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002090:	0000b797          	auipc	a5,0xb
    80002094:	f487b783          	ld	a5,-184(a5) # 8000cfd8 <_ZN3TCB8blockedQE+0x8>
    80002098:	04078463          	beqz	a5,800020e0 <_ZN3TCB19createThreadBlockedEPFvPvES0_S0_+0xdc>
        {
            tail->next = elem;
    8000209c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800020a0:	0000b797          	auipc	a5,0xb
    800020a4:	f2a7bc23          	sd	a0,-200(a5) # 8000cfd8 <_ZN3TCB8blockedQE+0x8>
        } else
        {
            head = tail = elem;
        }
        size++;
    800020a8:	0000b717          	auipc	a4,0xb
    800020ac:	f2870713          	addi	a4,a4,-216 # 8000cfd0 <_ZN3TCB8blockedQE>
    800020b0:	01072783          	lw	a5,16(a4)
    800020b4:	0017879b          	addiw	a5,a5,1
    800020b8:	00f72823          	sw	a5,16(a4)
}
    800020bc:	00048513          	mv	a0,s1
    800020c0:	02813083          	ld	ra,40(sp)
    800020c4:	02013403          	ld	s0,32(sp)
    800020c8:	01813483          	ld	s1,24(sp)
    800020cc:	01013903          	ld	s2,16(sp)
    800020d0:	00813983          	ld	s3,8(sp)
    800020d4:	00013a03          	ld	s4,0(sp)
    800020d8:	03010113          	addi	sp,sp,48
    800020dc:	00008067          	ret
            head = tail = elem;
    800020e0:	0000b797          	auipc	a5,0xb
    800020e4:	ef078793          	addi	a5,a5,-272 # 8000cfd0 <_ZN3TCB8blockedQE>
    800020e8:	00a7b423          	sd	a0,8(a5)
    800020ec:	00a7b023          	sd	a0,0(a5)
    800020f0:	fb9ff06f          	j	800020a8 <_ZN3TCB19createThreadBlockedEPFvPvES0_S0_+0xa4>
    800020f4:	00050913          	mv	s2,a0
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace,1);
    800020f8:	00048513          	mv	a0,s1
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	4ac080e7          	jalr	1196(ra) # 800025a8 <_ZdlPv>
    80002104:	00090513          	mv	a0,s2
    80002108:	0000c097          	auipc	ra,0xc
    8000210c:	0d0080e7          	jalr	208(ra) # 8000e1d8 <_Unwind_Resume>

0000000080002110 <_GLOBAL__sub_I__ZN3TCB7runningE>:
}
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00113423          	sd	ra,8(sp)
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	01010413          	addi	s0,sp,16
    80002120:	000105b7          	lui	a1,0x10
    80002124:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002128:	00100513          	li	a0,1
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	ae4080e7          	jalr	-1308(ra) # 80001c10 <_Z41__static_initialization_and_destruction_0ii>
    80002134:	00813083          	ld	ra,8(sp)
    80002138:	00013403          	ld	s0,0(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_ZN9myConsole8getInputEv>:
mySemaphore* myConsole::inputSpaceAvail;
mySemaphore* myConsole::mutexIn;
mySemaphore* myConsole::mutexOut;
TCB* myConsole::consumer;
char myConsole::getInput()
{
    80002144:	fe010113          	addi	sp,sp,-32
    80002148:	00113c23          	sd	ra,24(sp)
    8000214c:	00813823          	sd	s0,16(sp)
    80002150:	00913423          	sd	s1,8(sp)
    80002154:	01213023          	sd	s2,0(sp)
    80002158:	02010413          	addi	s0,sp,32
    inputItemAvail->wait();
    8000215c:	0000b497          	auipc	s1,0xb
    80002160:	eac48493          	addi	s1,s1,-340 # 8000d008 <_ZN9myConsole14inputItemAvailE>
    80002164:	0004b503          	ld	a0,0(s1)
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	5a8080e7          	jalr	1448(ra) # 80001710 <_ZN11mySemaphore4waitEv>
    mutexIn->wait();
    80002170:	0084b503          	ld	a0,8(s1)
    80002174:	fffff097          	auipc	ra,0xfffff
    80002178:	59c080e7          	jalr	1436(ra) # 80001710 <_ZN11mySemaphore4waitEv>
    char ret=inputBuf[inputHead];
    8000217c:	0104a783          	lw	a5,16(s1)
    80002180:	0184b703          	ld	a4,24(s1)
    80002184:	00f70733          	add	a4,a4,a5
    80002188:	00074903          	lbu	s2,0(a4)
    inputHead=(inputHead+1)%1024;
    8000218c:	0017879b          	addiw	a5,a5,1
    80002190:	41f7d71b          	sraiw	a4,a5,0x1f
    80002194:	0167571b          	srliw	a4,a4,0x16
    80002198:	00e787bb          	addw	a5,a5,a4
    8000219c:	3ff7f793          	andi	a5,a5,1023
    800021a0:	40e787bb          	subw	a5,a5,a4
    800021a4:	00f4a823          	sw	a5,16(s1)

    mutexIn->signal();
    800021a8:	0084b503          	ld	a0,8(s1)
    800021ac:	fffff097          	auipc	ra,0xfffff
    800021b0:	708080e7          	jalr	1800(ra) # 800018b4 <_ZN11mySemaphore6signalEv>
    inputSpaceAvail->signal();
    800021b4:	0204b503          	ld	a0,32(s1)
    800021b8:	fffff097          	auipc	ra,0xfffff
    800021bc:	6fc080e7          	jalr	1788(ra) # 800018b4 <_ZN11mySemaphore6signalEv>
    return ret;
}
    800021c0:	00090513          	mv	a0,s2
    800021c4:	01813083          	ld	ra,24(sp)
    800021c8:	01013403          	ld	s0,16(sp)
    800021cc:	00813483          	ld	s1,8(sp)
    800021d0:	00013903          	ld	s2,0(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret

00000000800021dc <_ZN9myConsole9getOutputEv>:

char myConsole::getOutput()
{
    800021dc:	fe010113          	addi	sp,sp,-32
    800021e0:	00113c23          	sd	ra,24(sp)
    800021e4:	00813823          	sd	s0,16(sp)
    800021e8:	00913423          	sd	s1,8(sp)
    800021ec:	01213023          	sd	s2,0(sp)
    800021f0:	02010413          	addi	s0,sp,32
    outputItemAvail->wait();
    800021f4:	0000b497          	auipc	s1,0xb
    800021f8:	e1448493          	addi	s1,s1,-492 # 8000d008 <_ZN9myConsole14inputItemAvailE>
    800021fc:	0284b503          	ld	a0,40(s1)
    80002200:	fffff097          	auipc	ra,0xfffff
    80002204:	510080e7          	jalr	1296(ra) # 80001710 <_ZN11mySemaphore4waitEv>
    mutexOut->wait();
    80002208:	0304b503          	ld	a0,48(s1)
    8000220c:	fffff097          	auipc	ra,0xfffff
    80002210:	504080e7          	jalr	1284(ra) # 80001710 <_ZN11mySemaphore4waitEv>
    char ret=outputBuf[outputHead];
    80002214:	0384a783          	lw	a5,56(s1)
    80002218:	0404b703          	ld	a4,64(s1)
    8000221c:	00f70733          	add	a4,a4,a5
    80002220:	00074903          	lbu	s2,0(a4)
    outputHead=(outputHead+1)%1024;
    80002224:	0017879b          	addiw	a5,a5,1
    80002228:	41f7d71b          	sraiw	a4,a5,0x1f
    8000222c:	0167571b          	srliw	a4,a4,0x16
    80002230:	00e787bb          	addw	a5,a5,a4
    80002234:	3ff7f793          	andi	a5,a5,1023
    80002238:	40e787bb          	subw	a5,a5,a4
    8000223c:	02f4ac23          	sw	a5,56(s1)
    outSize--;
    80002240:	0484a783          	lw	a5,72(s1)
    80002244:	fff7879b          	addiw	a5,a5,-1
    80002248:	04f4a423          	sw	a5,72(s1)

    mutexOut->signal();
    8000224c:	0304b503          	ld	a0,48(s1)
    80002250:	fffff097          	auipc	ra,0xfffff
    80002254:	664080e7          	jalr	1636(ra) # 800018b4 <_ZN11mySemaphore6signalEv>
    outputSpaceAvail->signal();
    80002258:	0504b503          	ld	a0,80(s1)
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	658080e7          	jalr	1624(ra) # 800018b4 <_ZN11mySemaphore6signalEv>
    return ret;
}
    80002264:	00090513          	mv	a0,s2
    80002268:	01813083          	ld	ra,24(sp)
    8000226c:	01013403          	ld	s0,16(sp)
    80002270:	00813483          	ld	s1,8(sp)
    80002274:	00013903          	ld	s2,0(sp)
    80002278:	02010113          	addi	sp,sp,32
    8000227c:	00008067          	ret

0000000080002280 <_ZN9myConsole8setInputEc>:

void myConsole::setInput(char c)
{
    80002280:	fe010113          	addi	sp,sp,-32
    80002284:	00113c23          	sd	ra,24(sp)
    80002288:	00813823          	sd	s0,16(sp)
    8000228c:	00913423          	sd	s1,8(sp)
    80002290:	01213023          	sd	s2,0(sp)
    80002294:	02010413          	addi	s0,sp,32
    80002298:	00050913          	mv	s2,a0
    inputSpaceAvail->wait();
    8000229c:	0000b497          	auipc	s1,0xb
    800022a0:	d6c48493          	addi	s1,s1,-660 # 8000d008 <_ZN9myConsole14inputItemAvailE>
    800022a4:	0204b503          	ld	a0,32(s1)
    800022a8:	fffff097          	auipc	ra,0xfffff
    800022ac:	468080e7          	jalr	1128(ra) # 80001710 <_ZN11mySemaphore4waitEv>
    mutexIn->wait();
    800022b0:	0084b503          	ld	a0,8(s1)
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	45c080e7          	jalr	1116(ra) # 80001710 <_ZN11mySemaphore4waitEv>
    inputBuf[inputTail]=c;
    800022bc:	0584a703          	lw	a4,88(s1)
    800022c0:	0184b783          	ld	a5,24(s1)
    800022c4:	00e787b3          	add	a5,a5,a4
    800022c8:	01278023          	sb	s2,0(a5)
    inputTail=(inputTail+1)%1024;
    800022cc:	0584a783          	lw	a5,88(s1)
    800022d0:	0017879b          	addiw	a5,a5,1
    800022d4:	41f7d71b          	sraiw	a4,a5,0x1f
    800022d8:	0167571b          	srliw	a4,a4,0x16
    800022dc:	00e787bb          	addw	a5,a5,a4
    800022e0:	3ff7f793          	andi	a5,a5,1023
    800022e4:	40e787bb          	subw	a5,a5,a4
    800022e8:	04f4ac23          	sw	a5,88(s1)
    mutexIn->signal();
    800022ec:	0084b503          	ld	a0,8(s1)
    800022f0:	fffff097          	auipc	ra,0xfffff
    800022f4:	5c4080e7          	jalr	1476(ra) # 800018b4 <_ZN11mySemaphore6signalEv>
    inputItemAvail->signal();
    800022f8:	0004b503          	ld	a0,0(s1)
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	5b8080e7          	jalr	1464(ra) # 800018b4 <_ZN11mySemaphore6signalEv>
}
    80002304:	01813083          	ld	ra,24(sp)
    80002308:	01013403          	ld	s0,16(sp)
    8000230c:	00813483          	ld	s1,8(sp)
    80002310:	00013903          	ld	s2,0(sp)
    80002314:	02010113          	addi	sp,sp,32
    80002318:	00008067          	ret

000000008000231c <_ZN9myConsole9setOutputEc>:

void myConsole::setOutput(char c)
{
    8000231c:	fe010113          	addi	sp,sp,-32
    80002320:	00113c23          	sd	ra,24(sp)
    80002324:	00813823          	sd	s0,16(sp)
    80002328:	00913423          	sd	s1,8(sp)
    8000232c:	01213023          	sd	s2,0(sp)
    80002330:	02010413          	addi	s0,sp,32
    80002334:	00050913          	mv	s2,a0
    outputSpaceAvail->wait();
    80002338:	0000b497          	auipc	s1,0xb
    8000233c:	cd048493          	addi	s1,s1,-816 # 8000d008 <_ZN9myConsole14inputItemAvailE>
    80002340:	0504b503          	ld	a0,80(s1)
    80002344:	fffff097          	auipc	ra,0xfffff
    80002348:	3cc080e7          	jalr	972(ra) # 80001710 <_ZN11mySemaphore4waitEv>
    mutexOut->wait();
    8000234c:	0304b503          	ld	a0,48(s1)
    80002350:	fffff097          	auipc	ra,0xfffff
    80002354:	3c0080e7          	jalr	960(ra) # 80001710 <_ZN11mySemaphore4waitEv>

    outputBuf[outputTail]=c;
    80002358:	05c4a703          	lw	a4,92(s1)
    8000235c:	0404b783          	ld	a5,64(s1)
    80002360:	00e787b3          	add	a5,a5,a4
    80002364:	01278023          	sb	s2,0(a5)
    outputTail=(outputTail+1)%1024;
    80002368:	05c4a783          	lw	a5,92(s1)
    8000236c:	0017879b          	addiw	a5,a5,1
    80002370:	41f7d71b          	sraiw	a4,a5,0x1f
    80002374:	0167571b          	srliw	a4,a4,0x16
    80002378:	00e787bb          	addw	a5,a5,a4
    8000237c:	3ff7f793          	andi	a5,a5,1023
    80002380:	40e787bb          	subw	a5,a5,a4
    80002384:	04f4ae23          	sw	a5,92(s1)
    outSize++;
    80002388:	0484a783          	lw	a5,72(s1)
    8000238c:	0017879b          	addiw	a5,a5,1
    80002390:	04f4a423          	sw	a5,72(s1)

    mutexOut->signal();
    80002394:	0304b503          	ld	a0,48(s1)
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	51c080e7          	jalr	1308(ra) # 800018b4 <_ZN11mySemaphore6signalEv>
    outputItemAvail->signal();
    800023a0:	0284b503          	ld	a0,40(s1)
    800023a4:	fffff097          	auipc	ra,0xfffff
    800023a8:	510080e7          	jalr	1296(ra) # 800018b4 <_ZN11mySemaphore6signalEv>

}
    800023ac:	01813083          	ld	ra,24(sp)
    800023b0:	01013403          	ld	s0,16(sp)
    800023b4:	00813483          	ld	s1,8(sp)
    800023b8:	00013903          	ld	s2,0(sp)
    800023bc:	02010113          	addi	sp,sp,32
    800023c0:	00008067          	ret

00000000800023c4 <_ZN9myConsole11putcHandlerEv>:
    putcHandler();
}


void myConsole::putcHandler()
{   //uzima znak po znak iz izlaznog buffera i prenosi ga kontroleru konzole
    800023c4:	fe010113          	addi	sp,sp,-32
    800023c8:	00113c23          	sd	ra,24(sp)
    800023cc:	00813823          	sd	s0,16(sp)
    800023d0:	00913423          	sd	s1,8(sp)
    800023d4:	02010413          	addi	s0,sp,32
    char* insert = (char* ) CONSOLE_TX_DATA;
    800023d8:	0000b797          	auipc	a5,0xb
    800023dc:	b307b783          	ld	a5,-1232(a5) # 8000cf08 <_GLOBAL_OFFSET_TABLE_+0x68>
    800023e0:	0007b483          	ld	s1,0(a5)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT){
    800023e4:	0000b797          	auipc	a5,0xb
    800023e8:	ad47b783          	ld	a5,-1324(a5) # 8000ceb8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800023ec:	0007b783          	ld	a5,0(a5)
    800023f0:	0007c783          	lbu	a5,0(a5)
    800023f4:	0207f793          	andi	a5,a5,32
    800023f8:	00078a63          	beqz	a5,8000240c <_ZN9myConsole11putcHandlerEv+0x48>
        *insert = getOutput();
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	de0080e7          	jalr	-544(ra) # 800021dc <_ZN9myConsole9getOutputEv>
    80002404:	00a48023          	sb	a0,0(s1)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT){
    80002408:	fddff06f          	j	800023e4 <_ZN9myConsole11putcHandlerEv+0x20>
    }
}
    8000240c:	01813083          	ld	ra,24(sp)
    80002410:	01013403          	ld	s0,16(sp)
    80002414:	00813483          	ld	s1,8(sp)
    80002418:	02010113          	addi	sp,sp,32
    8000241c:	00008067          	ret

0000000080002420 <_ZN9myConsole18putcHandlerWrapperEPv>:
{
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00113423          	sd	ra,8(sp)
    80002428:	00813023          	sd	s0,0(sp)
    8000242c:	01010413          	addi	s0,sp,16
    putcHandler();
    80002430:	00000097          	auipc	ra,0x0
    80002434:	f94080e7          	jalr	-108(ra) # 800023c4 <_ZN9myConsole11putcHandlerEv>
}
    80002438:	00813083          	ld	ra,8(sp)
    8000243c:	00013403          	ld	s0,0(sp)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret

0000000080002448 <_ZN9myConsole15console_handlerEv>:

void myConsole::console_handler()
{
    80002448:	fe010113          	addi	sp,sp,-32
    8000244c:	00113c23          	sd	ra,24(sp)
    80002450:	00813823          	sd	s0,16(sp)
    80002454:	00913423          	sd	s1,8(sp)
    80002458:	02010413          	addi	s0,sp,32
    //smestamo u ulazni bafer
    if(plic_claim() == CONSOLE_IRQ){
    8000245c:	00006097          	auipc	ra,0x6
    80002460:	888080e7          	jalr	-1912(ra) # 80007ce4 <plic_claim>
    80002464:	00a00793          	li	a5,10
    80002468:	00f50c63          	beq	a0,a5,80002480 <_ZN9myConsole15console_handlerEv+0x38>
            setInput(*write);
        }
        plic_complete(CONSOLE_IRQ);
    }

}
    8000246c:	01813083          	ld	ra,24(sp)
    80002470:	01013403          	ld	s0,16(sp)
    80002474:	00813483          	ld	s1,8(sp)
    80002478:	02010113          	addi	sp,sp,32
    8000247c:	00008067          	ret
        char* write = (char*) CONSOLE_RX_DATA;
    80002480:	0000b797          	auipc	a5,0xb
    80002484:	a287b783          	ld	a5,-1496(a5) # 8000cea8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002488:	0007b483          	ld	s1,0(a5)
        while(*(char*) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    8000248c:	0000b797          	auipc	a5,0xb
    80002490:	a2c7b783          	ld	a5,-1492(a5) # 8000ceb8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002494:	0007b783          	ld	a5,0(a5)
    80002498:	0007c783          	lbu	a5,0(a5)
    8000249c:	0017f793          	andi	a5,a5,1
    800024a0:	00078a63          	beqz	a5,800024b4 <_ZN9myConsole15console_handlerEv+0x6c>
            setInput(*write);
    800024a4:	0004c503          	lbu	a0,0(s1)
    800024a8:	00000097          	auipc	ra,0x0
    800024ac:	dd8080e7          	jalr	-552(ra) # 80002280 <_ZN9myConsole8setInputEc>
        while(*(char*) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    800024b0:	fddff06f          	j	8000248c <_ZN9myConsole15console_handlerEv+0x44>
        plic_complete(CONSOLE_IRQ);
    800024b4:	00a00513          	li	a0,10
    800024b8:	00006097          	auipc	ra,0x6
    800024bc:	864080e7          	jalr	-1948(ra) # 80007d1c <plic_complete>
}
    800024c0:	fadff06f          	j	8000246c <_ZN9myConsole15console_handlerEv+0x24>

00000000800024c4 <_ZN9myConsole4waitEv>:

void myConsole::wait()
{
    while(outSize) thread_dispatch();
    800024c4:	0000b797          	auipc	a5,0xb
    800024c8:	b8c7a783          	lw	a5,-1140(a5) # 8000d050 <_ZN9myConsole7outSizeE>
    800024cc:	02078c63          	beqz	a5,80002504 <_ZN9myConsole4waitEv+0x40>
{
    800024d0:	ff010113          	addi	sp,sp,-16
    800024d4:	00113423          	sd	ra,8(sp)
    800024d8:	00813023          	sd	s0,0(sp)
    800024dc:	01010413          	addi	s0,sp,16
    while(outSize) thread_dispatch();
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	f04080e7          	jalr	-252(ra) # 800013e4 <_Z15thread_dispatchv>
    800024e8:	0000b797          	auipc	a5,0xb
    800024ec:	b687a783          	lw	a5,-1176(a5) # 8000d050 <_ZN9myConsole7outSizeE>
    800024f0:	fe0798e3          	bnez	a5,800024e0 <_ZN9myConsole4waitEv+0x1c>
}
    800024f4:	00813083          	ld	ra,8(sp)
    800024f8:	00013403          	ld	s0,0(sp)
    800024fc:	01010113          	addi	sp,sp,16
    80002500:	00008067          	ret
    80002504:	00008067          	ret

0000000080002508 <_ZN6ThreadD1Ev>:
#define syscall_cpp
#include "./syscall_c.h"
void* operator new (size_t);
void operator delete (void*);

class Thread {
    80002508:	ff010113          	addi	sp,sp,-16
    8000250c:	00813423          	sd	s0,8(sp)
    80002510:	01010413          	addi	s0,sp,16
    80002514:	00813403          	ld	s0,8(sp)
    80002518:	01010113          	addi	sp,sp,16
    8000251c:	00008067          	ret

0000000080002520 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00113423          	sd	ra,8(sp)
    80002528:	00813023          	sd	s0,0(sp)
    8000252c:	01010413          	addi	s0,sp,16
    80002530:	0000a797          	auipc	a5,0xa
    80002534:	73878793          	addi	a5,a5,1848 # 8000cc68 <_ZTV9Semaphore+0x10>
    80002538:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000253c:	00853503          	ld	a0,8(a0)
    80002540:	fffff097          	auipc	ra,0xfffff
    80002544:	fbc080e7          	jalr	-68(ra) # 800014fc <_Z9sem_closeP4_sem>
}
    80002548:	00813083          	ld	ra,8(sp)
    8000254c:	00013403          	ld	s0,0(sp)
    80002550:	01010113          	addi	sp,sp,16
    80002554:	00008067          	ret

0000000080002558 <_Znwm>:
void* operator new (size_t mem){ return mem_alloc(mem);}
    80002558:	ff010113          	addi	sp,sp,-16
    8000255c:	00113423          	sd	ra,8(sp)
    80002560:	00813023          	sd	s0,0(sp)
    80002564:	01010413          	addi	s0,sp,16
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	cec080e7          	jalr	-788(ra) # 80001254 <_Z9mem_allocm>
    80002570:	00813083          	ld	ra,8(sp)
    80002574:	00013403          	ld	s0,0(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00113423          	sd	ra,8(sp)
    80002588:	00813023          	sd	s0,0(sp)
    8000258c:	01010413          	addi	s0,sp,16
    80002590:	fffff097          	auipc	ra,0xfffff
    80002594:	cc4080e7          	jalr	-828(ra) # 80001254 <_Z9mem_allocm>
    80002598:	00813083          	ld	ra,8(sp)
    8000259c:	00013403          	ld	s0,0(sp)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret

00000000800025a8 <_ZdlPv>:
void operator delete(void* addr) { mem_free(addr); }
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00113423          	sd	ra,8(sp)
    800025b0:	00813023          	sd	s0,0(sp)
    800025b4:	01010413          	addi	s0,sp,16
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	cd8080e7          	jalr	-808(ra) # 80001290 <_Z8mem_freePv>
    800025c0:	00813083          	ld	ra,8(sp)
    800025c4:	00013403          	ld	s0,0(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret

00000000800025d0 <_ZN6ThreadD0Ev>:
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00113423          	sd	ra,8(sp)
    800025d8:	00813023          	sd	s0,0(sp)
    800025dc:	01010413          	addi	s0,sp,16
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	fc8080e7          	jalr	-56(ra) # 800025a8 <_ZdlPv>
    800025e8:	00813083          	ld	ra,8(sp)
    800025ec:	00013403          	ld	s0,0(sp)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800025f8:	fe010113          	addi	sp,sp,-32
    800025fc:	00113c23          	sd	ra,24(sp)
    80002600:	00813823          	sd	s0,16(sp)
    80002604:	00913423          	sd	s1,8(sp)
    80002608:	02010413          	addi	s0,sp,32
    8000260c:	00050493          	mv	s1,a0
}
    80002610:	00000097          	auipc	ra,0x0
    80002614:	f10080e7          	jalr	-240(ra) # 80002520 <_ZN9SemaphoreD1Ev>
    80002618:	00048513          	mv	a0,s1
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	f8c080e7          	jalr	-116(ra) # 800025a8 <_ZdlPv>
    80002624:	01813083          	ld	ra,24(sp)
    80002628:	01013403          	ld	s0,16(sp)
    8000262c:	00813483          	ld	s1,8(sp)
    80002630:	02010113          	addi	sp,sp,32
    80002634:	00008067          	ret

0000000080002638 <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00113423          	sd	ra,8(sp)
    80002640:	00813023          	sd	s0,0(sp)
    80002644:	01010413          	addi	s0,sp,16
    80002648:	fffff097          	auipc	ra,0xfffff
    8000264c:	c48080e7          	jalr	-952(ra) # 80001290 <_Z8mem_freePv>
    80002650:	00813083          	ld	ra,8(sp)
    80002654:	00013403          	ld	s0,0(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret

0000000080002660 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00813423          	sd	s0,8(sp)
    80002668:	01010413          	addi	s0,sp,16
    8000266c:	0000a797          	auipc	a5,0xa
    80002670:	5d478793          	addi	a5,a5,1492 # 8000cc40 <_ZTV6Thread+0x10>
    80002674:	00f53023          	sd	a5,0(a0)
    80002678:	00053423          	sd	zero,8(a0)
    8000267c:	00b53823          	sd	a1,16(a0)
    80002680:	00c53c23          	sd	a2,24(a0)
}
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret

0000000080002690 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00813423          	sd	s0,8(sp)
    80002698:	01010413          	addi	s0,sp,16
    8000269c:	0000a797          	auipc	a5,0xa
    800026a0:	5a478793          	addi	a5,a5,1444 # 8000cc40 <_ZTV6Thread+0x10>
    800026a4:	00f53023          	sd	a5,0(a0)
    800026a8:	00053423          	sd	zero,8(a0)
    800026ac:	00000797          	auipc	a5,0x0
    800026b0:	2c878793          	addi	a5,a5,712 # 80002974 <_ZN6Thread10runWrapperEPv>
    800026b4:	00f53823          	sd	a5,16(a0)
    800026b8:	00a53c23          	sd	a0,24(a0)
}
    800026bc:	00813403          	ld	s0,8(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret

00000000800026c8 <_ZN6Thread8dispatchEv>:
{
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	d0c080e7          	jalr	-756(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800026e0:	00813083          	ld	ra,8(sp)
    800026e4:	00013403          	ld	s0,0(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	00008067          	ret

00000000800026f0 <_ZN6Thread5startEv>:
{
    800026f0:	ff010113          	addi	sp,sp,-16
    800026f4:	00113423          	sd	ra,8(sp)
    800026f8:	00813023          	sd	s0,0(sp)
    800026fc:	01010413          	addi	s0,sp,16
    if(max_of_threads){
    80002700:	0000b717          	auipc	a4,0xb
    80002704:	97072703          	lw	a4,-1680(a4) # 8000d070 <_ZN6Thread14max_of_threadsE>
    80002708:	00070e63          	beqz	a4,80002724 <_ZN6Thread5startEv+0x34>
        if(curr_threads+1>max_of_threads){
    8000270c:	0000b797          	auipc	a5,0xb
    80002710:	9687a783          	lw	a5,-1688(a5) # 8000d074 <_ZN6Thread12curr_threadsE>
    80002714:	02e7da63          	bge	a5,a4,80002748 <_ZN6Thread5startEv+0x58>
        else curr_threads++;
    80002718:	0017879b          	addiw	a5,a5,1
    8000271c:	0000b717          	auipc	a4,0xb
    80002720:	94f72c23          	sw	a5,-1704(a4) # 8000d074 <_ZN6Thread12curr_threadsE>
    return thread_create(&myHandle,body, arg);
    80002724:	01853603          	ld	a2,24(a0)
    80002728:	01053583          	ld	a1,16(a0)
    8000272c:	00850513          	addi	a0,a0,8
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	bf8080e7          	jalr	-1032(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002738:	00813083          	ld	ra,8(sp)
    8000273c:	00013403          	ld	s0,0(sp)
    80002740:	01010113          	addi	sp,sp,16
    80002744:	00008067          	ret
            return block_thread(&myHandle,body, arg);
    80002748:	01853603          	ld	a2,24(a0)
    8000274c:	01053583          	ld	a1,16(a0)
    80002750:	00850513          	addi	a0,a0,8
    80002754:	fffff097          	auipc	ra,0xfffff
    80002758:	ce4080e7          	jalr	-796(ra) # 80001438 <_Z12block_threadPP7_threadPFvPvES2_>
    8000275c:	fddff06f          	j	80002738 <_ZN6Thread5startEv+0x48>

0000000080002760 <_ZN6Thread5sleepEm>:
{
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00113423          	sd	ra,8(sp)
    80002768:	00813023          	sd	s0,0(sp)
    8000276c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	e34080e7          	jalr	-460(ra) # 800015a4 <_Z10time_sleepm>
}
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN14PeriodicThread3runEv>:
}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    80002788:	fe010113          	addi	sp,sp,-32
    8000278c:	00113c23          	sd	ra,24(sp)
    80002790:	00813823          	sd	s0,16(sp)
    80002794:	00913423          	sd	s1,8(sp)
    80002798:	02010413          	addi	s0,sp,32
    8000279c:	00050493          	mv	s1,a0
    while(period){
    800027a0:	0204b783          	ld	a5,32(s1)
    800027a4:	02078263          	beqz	a5,800027c8 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    800027a8:	0004b783          	ld	a5,0(s1)
    800027ac:	0187b783          	ld	a5,24(a5)
    800027b0:	00048513          	mv	a0,s1
    800027b4:	000780e7          	jalr	a5
        sleep(period);
    800027b8:	0204b503          	ld	a0,32(s1)
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	fa4080e7          	jalr	-92(ra) # 80002760 <_ZN6Thread5sleepEm>
    while(period){
    800027c4:	fddff06f          	j	800027a0 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    800027c8:	01813083          	ld	ra,24(sp)
    800027cc:	01013403          	ld	s0,16(sp)
    800027d0:	00813483          	ld	s1,8(sp)
    800027d4:	02010113          	addi	sp,sp,32
    800027d8:	00008067          	ret

00000000800027dc <_ZN6Thread17SetMaximumThreadsEiii>:
{
    800027dc:	ff010113          	addi	sp,sp,-16
    800027e0:	00113423          	sd	ra,8(sp)
    800027e4:	00813023          	sd	s0,0(sp)
    800027e8:	01010413          	addi	s0,sp,16
    max_of_threads=num_of_threads;
    800027ec:	0000b797          	auipc	a5,0xb
    800027f0:	88a7a223          	sw	a0,-1916(a5) # 8000d070 <_ZN6Thread14max_of_threadsE>
    set_max_threads(num_of_threads,max_time,interval_time);
    800027f4:	fffff097          	auipc	ra,0xfffff
    800027f8:	c14080e7          	jalr	-1004(ra) # 80001408 <_Z15set_max_threadsiii>
}
    800027fc:	00813083          	ld	ra,8(sp)
    80002800:	00013403          	ld	s0,0(sp)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00113423          	sd	ra,8(sp)
    80002814:	00813023          	sd	s0,0(sp)
    80002818:	01010413          	addi	s0,sp,16
    8000281c:	0000a797          	auipc	a5,0xa
    80002820:	44c78793          	addi	a5,a5,1100 # 8000cc68 <_ZTV9Semaphore+0x10>
    80002824:	00f53023          	sd	a5,0(a0)
    80002828:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    8000282c:	00850513          	addi	a0,a0,8
    80002830:	fffff097          	auipc	ra,0xfffff
    80002834:	c90080e7          	jalr	-880(ra) # 800014c0 <_Z8sem_openPP4_semj>
}
    80002838:	00813083          	ld	ra,8(sp)
    8000283c:	00013403          	ld	s0,0(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00113423          	sd	ra,8(sp)
    80002850:	00813023          	sd	s0,0(sp)
    80002854:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002858:	00853503          	ld	a0,8(a0)
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	cd8080e7          	jalr	-808(ra) # 80001534 <_Z8sem_waitP4_sem>
}
    80002864:	00813083          	ld	ra,8(sp)
    80002868:	00013403          	ld	s0,0(sp)
    8000286c:	01010113          	addi	sp,sp,16
    80002870:	00008067          	ret

0000000080002874 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002874:	ff010113          	addi	sp,sp,-16
    80002878:	00113423          	sd	ra,8(sp)
    8000287c:	00813023          	sd	s0,0(sp)
    80002880:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002884:	00853503          	ld	a0,8(a0)
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	ce4080e7          	jalr	-796(ra) # 8000156c <_Z10sem_signalP4_sem>
}
    80002890:	00813083          	ld	ra,8(sp)
    80002894:	00013403          	ld	s0,0(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret

00000000800028a0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){
    800028a0:	fe010113          	addi	sp,sp,-32
    800028a4:	00113c23          	sd	ra,24(sp)
    800028a8:	00813823          	sd	s0,16(sp)
    800028ac:	00913423          	sd	s1,8(sp)
    800028b0:	01213023          	sd	s2,0(sp)
    800028b4:	02010413          	addi	s0,sp,32
    800028b8:	00050493          	mv	s1,a0
    800028bc:	00058913          	mv	s2,a1
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	dd0080e7          	jalr	-560(ra) # 80002690 <_ZN6ThreadC1Ev>
    800028c8:	0000a797          	auipc	a5,0xa
    800028cc:	3c078793          	addi	a5,a5,960 # 8000cc88 <_ZTV14PeriodicThread+0x10>
    800028d0:	00f4b023          	sd	a5,0(s1)
    800028d4:	0324b023          	sd	s2,32(s1)
}
    800028d8:	01813083          	ld	ra,24(sp)
    800028dc:	01013403          	ld	s0,16(sp)
    800028e0:	00813483          	ld	s1,8(sp)
    800028e4:	00013903          	ld	s2,0(sp)
    800028e8:	02010113          	addi	sp,sp,32
    800028ec:	00008067          	ret

00000000800028f0 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00813423          	sd	s0,8(sp)
    800028f8:	01010413          	addi	s0,sp,16
    period=0;
    800028fc:	02053023          	sd	zero,32(a0)
}
    80002900:	00813403          	ld	s0,8(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN7Console4getcEv>:

char Console::getc() {
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00113423          	sd	ra,8(sp)
    80002914:	00813023          	sd	s0,0(sp)
    80002918:	01010413          	addi	s0,sp,16
    return ::getc();
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	cc0080e7          	jalr	-832(ra) # 800015dc <_Z4getcv>
}
    80002924:	00813083          	ld	ra,8(sp)
    80002928:	00013403          	ld	s0,0(sp)
    8000292c:	01010113          	addi	sp,sp,16
    80002930:	00008067          	ret

0000000080002934 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00113423          	sd	ra,8(sp)
    8000293c:	00813023          	sd	s0,0(sp)
    80002940:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	ccc080e7          	jalr	-820(ra) # 80001610 <_Z4putcc>
    8000294c:	00813083          	ld	ra,8(sp)
    80002950:	00013403          	ld	s0,0(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);
    static void SetMaximumThreads(int num_of_threads, int max_time, int interval_time);
protected:
    Thread ();
    virtual void run () {}
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00813423          	sd	s0,8(sp)
    80002964:	01010413          	addi	s0,sp,16
    80002968:	00813403          	ld	s0,8(sp)
    8000296c:	01010113          	addi	sp,sp,16
    80002970:	00008067          	ret

0000000080002974 <_ZN6Thread10runWrapperEPv>:
    static int max_of_threads;
    static int curr_threads;
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* thread){
        if(thread) ((Thread*) thread)->run();
    80002974:	02050863          	beqz	a0,800029a4 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread){
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00113423          	sd	ra,8(sp)
    80002980:	00813023          	sd	s0,0(sp)
    80002984:	01010413          	addi	s0,sp,16
        if(thread) ((Thread*) thread)->run();
    80002988:	00053783          	ld	a5,0(a0)
    8000298c:	0107b783          	ld	a5,16(a5)
    80002990:	000780e7          	jalr	a5
    }
    80002994:	00813083          	ld	ra,8(sp)
    80002998:	00013403          	ld	s0,0(sp)
    8000299c:	01010113          	addi	sp,sp,16
    800029a0:	00008067          	ret
    800029a4:	00008067          	ret

00000000800029a8 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800029a8:	ff010113          	addi	sp,sp,-16
    800029ac:	00813423          	sd	s0,8(sp)
    800029b0:	01010413          	addi	s0,sp,16
    800029b4:	00813403          	ld	s0,8(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800029c0:	ff010113          	addi	sp,sp,-16
    800029c4:	00813423          	sd	s0,8(sp)
    800029c8:	01010413          	addi	s0,sp,16
    800029cc:	0000a797          	auipc	a5,0xa
    800029d0:	2bc78793          	addi	a5,a5,700 # 8000cc88 <_ZTV14PeriodicThread+0x10>
    800029d4:	00f53023          	sd	a5,0(a0)
    800029d8:	00813403          	ld	s0,8(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret

00000000800029e4 <_ZN14PeriodicThreadD0Ev>:
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00113423          	sd	ra,8(sp)
    800029ec:	00813023          	sd	s0,0(sp)
    800029f0:	01010413          	addi	s0,sp,16
    800029f4:	0000a797          	auipc	a5,0xa
    800029f8:	29478793          	addi	a5,a5,660 # 8000cc88 <_ZTV14PeriodicThread+0x10>
    800029fc:	00f53023          	sd	a5,0(a0)
    80002a00:	00000097          	auipc	ra,0x0
    80002a04:	ba8080e7          	jalr	-1112(ra) # 800025a8 <_ZdlPv>
    80002a08:	00813083          	ld	ra,8(sp)
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <_ZN5Riscv10popSppSpieEv>:
#include "../h/Semaphore.hpp"
#include "../h/myConsole.hpp"

#include "../test/printing.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00813423          	sd	s0,8(sp)
    80002a20:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    if (TCB::running->body== nullptr )
    80002a24:	0000a797          	auipc	a5,0xa
    80002a28:	5347b783          	ld	a5,1332(a5) # 8000cf58 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80002a2c:	0007b783          	ld	a5,0(a5)
    80002a30:	0007b783          	ld	a5,0(a5)
    80002a34:	02078063          	beqz	a5,80002a54 <_ZN5Riscv10popSppSpieEv+0x3c>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002a38:	10000793          	li	a5,256
    80002a3c:	1007b073          	csrc	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    else mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002a40:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002a44:	10200073          	sret
}
    80002a48:	00813403          	ld	s0,8(sp)
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a54:	10000793          	li	a5,256
    80002a58:	1007a073          	csrs	sstatus,a5
}
    80002a5c:	fe5ff06f          	j	80002a40 <_ZN5Riscv10popSppSpieEv+0x28>

0000000080002a60 <_ZN5Riscv13kernelWrapperEv>:
void Riscv::kernelWrapper()
{
    80002a60:	ff010113          	addi	sp,sp,-16
    80002a64:	00813423          	sd	s0,8(sp)
    80002a68:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a6c:	10000793          	li	a5,256
    80002a70:	1007a073          	csrs	sstatus,a5
     ms_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002a74:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002a78:	10200073          	sret
}
    80002a7c:	00813403          	ld	s0,8(sp)
    80002a80:	01010113          	addi	sp,sp,16
    80002a84:	00008067          	ret

0000000080002a88 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80002a88:	f1010113          	addi	sp,sp,-240
    80002a8c:	0e113423          	sd	ra,232(sp)
    80002a90:	0e813023          	sd	s0,224(sp)
    80002a94:	0c913c23          	sd	s1,216(sp)
    80002a98:	0f010413          	addi	s0,sp,240
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002a9c:	142027f3          	csrr	a5,scause
    80002aa0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002aa4:	fb843703          	ld	a4,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    80002aa8:	ff870693          	addi	a3,a4,-8
    80002aac:	00100793          	li	a5,1
    80002ab0:	02d7fc63          	bgeu	a5,a3,80002ae8 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    else if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver/tajmer prekid
    80002ab4:	fff00793          	li	a5,-1
    80002ab8:	03f79793          	slli	a5,a5,0x3f
    80002abc:	00178793          	addi	a5,a5,1
    80002ac0:	3cf70e63          	beq	a4,a5,80002e9c <_ZN5Riscv20handleSupervisorTrapEv+0x414>
        }

        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (scause==0x8000000000000009UL){
    80002ac4:	fff00793          	li	a5,-1
    80002ac8:	03f79793          	slli	a5,a5,0x3f
    80002acc:	00978793          	addi	a5,a5,9
    80002ad0:	5cf70a63          	beq	a4,a5,800030a4 <_ZN5Riscv20handleSupervisorTrapEv+0x61c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002ad4:	141027f3          	csrr	a5,sepc
    80002ad8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002adc:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002ae0:	14179073          	csrw	sepc,a5
        //sepc- gde se desilo
        // stval - dodatno opise cause

        uint64 sepc=r_sepc();
        w_sepc(sepc);
        while(true);
    80002ae4:	0000006f          	j	80002ae4 <_ZN5Riscv20handleSupervisorTrapEv+0x5c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002ae8:	141027f3          	csrr	a5,sepc
    80002aec:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002af0:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    80002af4:	00478793          	addi	a5,a5,4
    80002af8:	f0f43c23          	sd	a5,-232(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002afc:	100027f3          	csrr	a5,sstatus
    80002b00:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002b04:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80002b08:	f2f43023          	sd	a5,-224(s0)
        __asm__ volatile("ld %0, 80(fp)":"=r"(a0));
    80002b0c:	05043783          	ld	a5,80(s0)
    80002b10:	f2f43423          	sd	a5,-216(s0)
        switch(a0){
    80002b14:	f2843783          	ld	a5,-216(s0)
    80002b18:	06900713          	li	a4,105
    80002b1c:	36f76663          	bltu	a4,a5,80002e88 <_ZN5Riscv20handleSupervisorTrapEv+0x400>
    80002b20:	00279793          	slli	a5,a5,0x2
    80002b24:	00007717          	auipc	a4,0x7
    80002b28:	52470713          	addi	a4,a4,1316 # 8000a048 <CONSOLE_STATUS+0x38>
    80002b2c:	00e787b3          	add	a5,a5,a4
    80002b30:	0007a783          	lw	a5,0(a5)
    80002b34:	00e787b3          	add	a5,a5,a4
    80002b38:	00078067          	jr	a5
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(a1));
    80002b3c:	05843783          	ld	a5,88(s0)
    80002b40:	f2f43823          	sd	a5,-208(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    80002b44:	f3043503          	ld	a0,-208(s0)
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	924080e7          	jalr	-1756(ra) # 8000346c <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    80002b50:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002b54:	04a43823          	sd	a0,80(s0)
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    80002b58:	f1843783          	ld	a5,-232(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002b5c:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002b60:	f2043783          	ld	a5,-224(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002b64:	10079073          	csrw	sstatus,a5
    }
    80002b68:	0e813083          	ld	ra,232(sp)
    80002b6c:	0e013403          	ld	s0,224(sp)
    80002b70:	0d813483          	ld	s1,216(sp)
    80002b74:	0f010113          	addi	sp,sp,240
    80002b78:	00008067          	ret
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(addr));
    80002b7c:	05843783          	ld	a5,88(s0)
    80002b80:	f2f43c23          	sd	a5,-200(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    80002b84:	f3843503          	ld	a0,-200(s0)
    80002b88:	00001097          	auipc	ra,0x1
    80002b8c:	a40080e7          	jalr	-1472(ra) # 800035c8 <_ZN15MemoryAllocator8mem_freeEPv>
    80002b90:	f4a43023          	sd	a0,-192(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    80002b94:	f4043783          	ld	a5,-192(s0)
    80002b98:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002b9c:	04a43823          	sd	a0,80(s0)
                break;
    80002ba0:	fb9ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                space=MemoryAllocator::getFree();
    80002ba4:	00001097          	auipc	ra,0x1
    80002ba8:	834080e7          	jalr	-1996(ra) # 800033d8 <_ZN15MemoryAllocator7getFreeEv>
    80002bac:	f4a43423          	sd	a0,-184(s0)
                __asm__ volatile("mv a0, %0"::"r"(space));
    80002bb0:	f4843783          	ld	a5,-184(s0)
    80002bb4:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002bb8:	04a43823          	sd	a0,80(s0)
                break;
    80002bbc:	f9dff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                block=MemoryAllocator::getLargestFreeBlock();
    80002bc0:	00001097          	auipc	ra,0x1
    80002bc4:	838080e7          	jalr	-1992(ra) # 800033f8 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    80002bc8:	f4a43823          	sd	a0,-176(s0)
                __asm__ volatile("mv a0, %0"::"r"(block));
    80002bcc:	f5043783          	ld	a5,-176(s0)
    80002bd0:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002bd4:	04a43823          	sd	a0,80(s0)
                break;
    80002bd8:	f81ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002bdc:	05843783          	ld	a5,88(s0)
    80002be0:	f4f43c23          	sd	a5,-168(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(start_routine));
    80002be4:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(arg));
    80002be8:	06843783          	ld	a5,104(s0)
    80002bec:	f6f43023          	sd	a5,-160(s0)
                __asm__ volatile("ld %0, 8*14(fp)":"=r"(addr));
    80002bf0:	07043783          	ld	a5,112(s0)
    80002bf4:	f6f43423          	sd	a5,-152(s0)
                TCB *thread =TCB::createThread(body,arg,addr);
    80002bf8:	f6043583          	ld	a1,-160(s0)
    80002bfc:	f6843603          	ld	a2,-152(s0)
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	0dc080e7          	jalr	220(ra) # 80001cdc <_ZN3TCB12createThreadEPFvPvES0_S0_>
                *(TCB**) handle= thread;
    80002c08:	f5843703          	ld	a4,-168(s0)
    80002c0c:	00a73023          	sd	a0,0(a4)
                if(thread){
    80002c10:	00050a63          	beqz	a0,80002c24 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    __asm__ volatile("mv a0, %0"::"r"(0));
    80002c14:	00000793          	li	a5,0
    80002c18:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002c1c:	04a43823          	sd	a0,80(s0)
    80002c20:	f39ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002c24:	fff00793          	li	a5,-1
    80002c28:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002c2c:	04a43823          	sd	a0,80(s0)
    80002c30:	f29ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                TCB::timeSliceCounter=0;
    80002c34:	0000a797          	auipc	a5,0xa
    80002c38:	2c47b783          	ld	a5,708(a5) # 8000cef8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002c3c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	22c080e7          	jalr	556(ra) # 80001e6c <_ZN3TCB8dispatchEv>
                break;
    80002c48:	f11ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                if(!TCB::running->isFinished()){
    80002c4c:	0000a797          	auipc	a5,0xa
    80002c50:	30c7b783          	ld	a5,780(a5) # 8000cf58 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80002c54:	0007b783          	ld	a5,0(a5)
    bool isFinished(){return finished;}
    80002c58:	0307c703          	lbu	a4,48(a5)
    80002c5c:	00070a63          	beqz	a4,80002c70 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                else ret=-1;
    80002c60:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002c64:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002c68:	04a43823          	sd	a0,80(s0)
                break;
    80002c6c:	eedff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    void setFinished(bool flag){ TCB::finished = flag;}
    80002c70:	00100713          	li	a4,1
    80002c74:	02e78823          	sb	a4,48(a5)
                    TCB::timeSliceCounter=0;
    80002c78:	0000a797          	auipc	a5,0xa
    80002c7c:	2807b783          	ld	a5,640(a5) # 8000cef8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002c80:	0007b023          	sd	zero,0(a5)
                    TCB::dispatch();
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	1e8080e7          	jalr	488(ra) # 80001e6c <_ZN3TCB8dispatchEv>
                uint64 ret=0;
    80002c8c:	00000793          	li	a5,0
    80002c90:	fd5ff06f          	j	80002c64 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002c94:	05843783          	ld	a5,88(s0)
    80002c98:	f6f43823          	sd	a5,-144(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(start_routine));
    80002c9c:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(arg));
    80002ca0:	06843783          	ld	a5,104(s0)
    80002ca4:	f6f43c23          	sd	a5,-136(s0)
                __asm__ volatile("ld %0, 8*14(fp)":"=r"(addr));
    80002ca8:	07043783          	ld	a5,112(s0)
    80002cac:	f8f43023          	sd	a5,-128(s0)
                TCB *thread =TCB::createThreadBlocked(body,arg,addr);
    80002cb0:	f7843583          	ld	a1,-136(s0)
    80002cb4:	f8043603          	ld	a2,-128(s0)
    80002cb8:	fffff097          	auipc	ra,0xfffff
    80002cbc:	34c080e7          	jalr	844(ra) # 80002004 <_ZN3TCB19createThreadBlockedEPFvPvES0_S0_>
                *(TCB**) handle= thread;
    80002cc0:	f7043703          	ld	a4,-144(s0)
    80002cc4:	00a73023          	sd	a0,0(a4)
                if(thread){
    80002cc8:	00050a63          	beqz	a0,80002cdc <_ZN5Riscv20handleSupervisorTrapEv+0x254>
                    __asm__ volatile("mv a0, %0"::"r"(0));
    80002ccc:	00000793          	li	a5,0
    80002cd0:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002cd4:	04a43823          	sd	a0,80(s0)
    80002cd8:	e81ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002cdc:	fff00793          	li	a5,-1
    80002ce0:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002ce4:	04a43823          	sd	a0,80(s0)
    80002ce8:	e71ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(num_of_threads));
    80002cec:	05843783          	ld	a5,88(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(max_time));
    80002cf0:	06043703          	ld	a4,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(interval_time));
    80002cf4:	06843683          	ld	a3,104(s0)
                TCB::timeInterval=interval_time;
    80002cf8:	0000a797          	auipc	a5,0xa
    80002cfc:	2787b783          	ld	a5,632(a5) # 8000cf70 <_GLOBAL_OFFSET_TABLE_+0xd0>
    80002d00:	00d7a023          	sw	a3,0(a5)
                TCB::timeMaxCounter=max_time;
    80002d04:	0000a797          	auipc	a5,0xa
    80002d08:	24c7b783          	ld	a5,588(a5) # 8000cf50 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80002d0c:	00e7a023          	sw	a4,0(a5)
                break;
    80002d10:	e49ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002d14:	05843783          	ld	a5,88(s0)
    80002d18:	f8f43423          	sd	a5,-120(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(init));
    80002d1c:	06043783          	ld	a5,96(s0)
    80002d20:	f0f42a23          	sw	a5,-236(s0)
                mySemaphore *sem =mySemaphore::createSemaphore(init);
    80002d24:	f1442503          	lw	a0,-236(s0)
    80002d28:	0005051b          	sext.w	a0,a0
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	90c080e7          	jalr	-1780(ra) # 80001638 <_ZN11mySemaphore15createSemaphoreEj>
                if(sem){
    80002d34:	00050e63          	beqz	a0,80002d50 <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
                    *(mySemaphore**) handle= sem;
    80002d38:	f8843703          	ld	a4,-120(s0)
    80002d3c:	00a73023          	sd	a0,0(a4)
                    ret=0;
    80002d40:	00000793          	li	a5,0
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002d44:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002d48:	04a43823          	sd	a0,80(s0)
                break;
    80002d4c:	e0dff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                else ret=-1;
    80002d50:	fff00793          	li	a5,-1
    80002d54:	ff1ff06f          	j	80002d44 <_ZN5Riscv20handleSupervisorTrapEv+0x2bc>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002d58:	05843783          	ld	a5,88(s0)
    80002d5c:	f8f43823          	sd	a5,-112(s0)
                if(!handle){
    80002d60:	f9043783          	ld	a5,-112(s0)
    80002d64:	02078663          	beqz	a5,80002d90 <_ZN5Riscv20handleSupervisorTrapEv+0x308>
                int ret=handle->close();
    80002d68:	f9043503          	ld	a0,-112(s0)
    80002d6c:	fffff097          	auipc	ra,0xfffff
    80002d70:	ac4080e7          	jalr	-1340(ra) # 80001830 <_ZN11mySemaphore5closeEv>
    80002d74:	00050493          	mv	s1,a0
                MemoryAllocator::mem_free(handle);
    80002d78:	f9043503          	ld	a0,-112(s0)
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	84c080e7          	jalr	-1972(ra) # 800035c8 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002d84:	00048513          	mv	a0,s1
                __asm__ volatile("sd a0,80(fp)");
    80002d88:	04a43823          	sd	a0,80(s0)
                break;
    80002d8c:	dcdff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002d90:	fff00793          	li	a5,-1
    80002d94:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002d98:	04a43823          	sd	a0,80(s0)
                    break;
    80002d9c:	dbdff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002da0:	05843783          	ld	a5,88(s0)
    80002da4:	f8f43c23          	sd	a5,-104(s0)
                if(!handle){
    80002da8:	f9843783          	ld	a5,-104(s0)
    80002dac:	02078263          	beqz	a5,80002dd0 <_ZN5Riscv20handleSupervisorTrapEv+0x348>
                __asm__ volatile("mv a0, %0"::"r"(0));
    80002db0:	00000793          	li	a5,0
    80002db4:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002db8:	04a43823          	sd	a0,80(s0)
                int ret=handle->wait();
    80002dbc:	f9843503          	ld	a0,-104(s0)
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	950080e7          	jalr	-1712(ra) # 80001710 <_ZN11mySemaphore4waitEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002dc8:	00050513          	mv	a0,a0
                break;
    80002dcc:	d8dff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002dd0:	fff00793          	li	a5,-1
    80002dd4:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002dd8:	04a43823          	sd	a0,80(s0)
                    break;
    80002ddc:	d7dff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002de0:	05843783          	ld	a5,88(s0)
    80002de4:	faf43023          	sd	a5,-96(s0)
                if(!handle){
    80002de8:	fa043783          	ld	a5,-96(s0)
    80002dec:	00078e63          	beqz	a5,80002e08 <_ZN5Riscv20handleSupervisorTrapEv+0x380>
                int ret=handle->signal();
    80002df0:	fa043503          	ld	a0,-96(s0)
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	ac0080e7          	jalr	-1344(ra) # 800018b4 <_ZN11mySemaphore6signalEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002dfc:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002e00:	04a43823          	sd	a0,80(s0)
                break;
    80002e04:	d55ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002e08:	fff00793          	li	a5,-1
    80002e0c:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002e10:	04a43823          	sd	a0,80(s0)
                    break;
    80002e14:	d45ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(time));
    80002e18:	05843503          	ld	a0,88(s0)
                TCB::toSleep(time+TCB::timeCur);
    80002e1c:	0000a797          	auipc	a5,0xa
    80002e20:	0cc7b783          	ld	a5,204(a5) # 8000cee8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002e24:	0007b783          	ld	a5,0(a5)
    80002e28:	00f50533          	add	a0,a0,a5
    80002e2c:	fffff097          	auipc	ra,0xfffff
    80002e30:	19c080e7          	jalr	412(ra) # 80001fc8 <_ZN3TCB7toSleepEm>
                TCB::timeSliceCounter=0;
    80002e34:	0000a797          	auipc	a5,0xa
    80002e38:	0c47b783          	ld	a5,196(a5) # 8000cef8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002e3c:	0007b023          	sd	zero,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(0));
    80002e40:	00000793          	li	a5,0
    80002e44:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002e48:	04a43823          	sd	a0,80(s0)
                TCB::dispatch();
    80002e4c:	fffff097          	auipc	ra,0xfffff
    80002e50:	020080e7          	jalr	32(ra) # 80001e6c <_ZN3TCB8dispatchEv>
                break;
    80002e54:	d05ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                char ret=myConsole::getInput();
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	2ec080e7          	jalr	748(ra) # 80002144 <_ZN9myConsole8getInputEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002e60:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002e64:	04a43823          	sd	a0,80(s0)
                break;
    80002e68:	cf1ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(c));
    80002e6c:	05843783          	ld	a5,88(s0)
    80002e70:	f0f409a3          	sb	a5,-237(s0)
                myConsole::setOutput(c);
    80002e74:	f1344503          	lbu	a0,-237(s0)
    80002e78:	0ff57513          	andi	a0,a0,255
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	4a0080e7          	jalr	1184(ra) # 8000231c <_ZN9myConsole9setOutputEc>
                break;
    80002e84:	cd5ff06f          	j	80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("sw %[val], 0(%[addr])" : : [val] "r"(val), [addr] "r"(addr));
    80002e88:	000057b7          	lui	a5,0x5
    80002e8c:	5557879b          	addiw	a5,a5,1365
    80002e90:	00100737          	lui	a4,0x100
    80002e94:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
                while (1);
    80002e98:	0000006f          	j	80002e98 <_ZN5Riscv20handleSupervisorTrapEv+0x410>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002e9c:	141027f3          	csrr	a5,sepc
    80002ea0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002ea4:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    80002ea8:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002eac:	100027f3          	csrr	a5,sstatus
    80002eb0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002eb4:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002eb8:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002ebc:	00200793          	li	a5,2
    80002ec0:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002ec4:	0000a717          	auipc	a4,0xa
    80002ec8:	03473703          	ld	a4,52(a4) # 8000cef8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ecc:	00073783          	ld	a5,0(a4)
    80002ed0:	00178793          	addi	a5,a5,1 # 5001 <_entry-0x7fffafff>
    80002ed4:	00f73023          	sd	a5,0(a4)
        TCB::timeCur++;
    80002ed8:	0000a717          	auipc	a4,0xa
    80002edc:	01073703          	ld	a4,16(a4) # 8000cee8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002ee0:	00073783          	ld	a5,0(a4)
    80002ee4:	00178793          	addi	a5,a5,1
    80002ee8:	00f73023          	sd	a5,0(a4)
        if(TCB::timeMaxCounter!=-1){
    80002eec:	0000a797          	auipc	a5,0xa
    80002ef0:	0647b783          	ld	a5,100(a5) # 8000cf50 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80002ef4:	0007a783          	lw	a5,0(a5)
    80002ef8:	fff00713          	li	a4,-1
    80002efc:	02e78e63          	beq	a5,a4,80002f38 <_ZN5Riscv20handleSupervisorTrapEv+0x4b0>
            if(TCB::timeMaxCounter>0) TCB::timeMaxCounter--;
    80002f00:	00f05a63          	blez	a5,80002f14 <_ZN5Riscv20handleSupervisorTrapEv+0x48c>
    80002f04:	fff7879b          	addiw	a5,a5,-1
    80002f08:	0000a717          	auipc	a4,0xa
    80002f0c:	04873703          	ld	a4,72(a4) # 8000cf50 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80002f10:	00f72023          	sw	a5,0(a4)
            if(!TCB::timeMaxCounter){
    80002f14:	0000a797          	auipc	a5,0xa
    80002f18:	03c7b783          	ld	a5,60(a5) # 8000cf50 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80002f1c:	0007a783          	lw	a5,0(a5)
    80002f20:	0a078e63          	beqz	a5,80002fdc <_ZN5Riscv20handleSupervisorTrapEv+0x554>
            if(TCB::timeMaxCounter==-2){
    80002f24:	0000a797          	auipc	a5,0xa
    80002f28:	02c7b783          	ld	a5,44(a5) # 8000cf50 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80002f2c:	0007a703          	lw	a4,0(a5)
    80002f30:	ffe00793          	li	a5,-2
    80002f34:	0cf70663          	beq	a4,a5,80003000 <_ZN5Riscv20handleSupervisorTrapEv+0x578>
        if(TCB::timeIntervalCounter==TCB::timeInterval){
    80002f38:	0000a797          	auipc	a5,0xa
    80002f3c:	0287b783          	ld	a5,40(a5) # 8000cf60 <_GLOBAL_OFFSET_TABLE_+0xc0>
    80002f40:	0007a703          	lw	a4,0(a5)
    80002f44:	0000a797          	auipc	a5,0xa
    80002f48:	02c7b783          	ld	a5,44(a5) # 8000cf70 <_GLOBAL_OFFSET_TABLE_+0xd0>
    80002f4c:	0007a783          	lw	a5,0(a5)
    80002f50:	0ef71263          	bne	a4,a5,80003034 <_ZN5Riscv20handleSupervisorTrapEv+0x5ac>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80002f54:	0000a797          	auipc	a5,0xa
    80002f58:	ff47b783          	ld	a5,-12(a5) # 8000cf48 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002f5c:	0007b783          	ld	a5,0(a5)
    80002f60:	0c078a63          	beqz	a5,80003034 <_ZN5Riscv20handleSupervisorTrapEv+0x5ac>
        return head->data;
    80002f64:	0007b783          	ld	a5,0(a5)
            if(TCB::blockedQ.peekFirst())
    80002f68:	0c078663          	beqz	a5,80003034 <_ZN5Riscv20handleSupervisorTrapEv+0x5ac>
                printString("Interval time elapsed \n");
    80002f6c:	00007517          	auipc	a0,0x7
    80002f70:	0c450513          	addi	a0,a0,196 # 8000a030 <CONSOLE_STATUS+0x20>
    80002f74:	00003097          	auipc	ra,0x3
    80002f78:	ff8080e7          	jalr	-8(ra) # 80005f6c <_Z11printStringPKc>
        if (!head) { return 0; }
    80002f7c:	0000a797          	auipc	a5,0xa
    80002f80:	fcc7b783          	ld	a5,-52(a5) # 8000cf48 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002f84:	0007b503          	ld	a0,0(a5)
    80002f88:	02050e63          	beqz	a0,80002fc4 <_ZN5Riscv20handleSupervisorTrapEv+0x53c>
        head = head->next;
    80002f8c:	00853783          	ld	a5,8(a0)
    80002f90:	0000a717          	auipc	a4,0xa
    80002f94:	fb873703          	ld	a4,-72(a4) # 8000cf48 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002f98:	00f73023          	sd	a5,0(a4)
        if (!head) { tail = 0; }
    80002f9c:	06078e63          	beqz	a5,80003018 <_ZN5Riscv20handleSupervisorTrapEv+0x590>
        T *ret = elem->data;
    80002fa0:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	624080e7          	jalr	1572(ra) # 800035c8 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80002fac:	0000a717          	auipc	a4,0xa
    80002fb0:	f9c73703          	ld	a4,-100(a4) # 8000cf48 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002fb4:	01072783          	lw	a5,16(a4)
    80002fb8:	fff7879b          	addiw	a5,a5,-1
    80002fbc:	00f72823          	sw	a5,16(a4)
        return ret;
    80002fc0:	00048513          	mv	a0,s1
                Scheduler::put(unblocked);
    80002fc4:	00000097          	auipc	ra,0x0
    80002fc8:	1b8080e7          	jalr	440(ra) # 8000317c <_ZN9Scheduler3putEP3TCB>
                TCB::timeIntervalCounter=0;
    80002fcc:	0000a797          	auipc	a5,0xa
    80002fd0:	f947b783          	ld	a5,-108(a5) # 8000cf60 <_GLOBAL_OFFSET_TABLE_+0xc0>
    80002fd4:	0007a023          	sw	zero,0(a5)
    80002fd8:	05c0006f          	j	80003034 <_ZN5Riscv20handleSupervisorTrapEv+0x5ac>
                printString("Waiting done! \n");
    80002fdc:	00007517          	auipc	a0,0x7
    80002fe0:	04450513          	addi	a0,a0,68 # 8000a020 <CONSOLE_STATUS+0x10>
    80002fe4:	00003097          	auipc	ra,0x3
    80002fe8:	f88080e7          	jalr	-120(ra) # 80005f6c <_Z11printStringPKc>
                TCB::timeMaxCounter=-2;
    80002fec:	0000a797          	auipc	a5,0xa
    80002ff0:	f647b783          	ld	a5,-156(a5) # 8000cf50 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80002ff4:	ffe00713          	li	a4,-2
    80002ff8:	00e7a023          	sw	a4,0(a5)
    80002ffc:	f29ff06f          	j	80002f24 <_ZN5Riscv20handleSupervisorTrapEv+0x49c>
                TCB::timeIntervalCounter++;
    80003000:	0000a717          	auipc	a4,0xa
    80003004:	f6073703          	ld	a4,-160(a4) # 8000cf60 <_GLOBAL_OFFSET_TABLE_+0xc0>
    80003008:	00072783          	lw	a5,0(a4)
    8000300c:	0017879b          	addiw	a5,a5,1
    80003010:	00f72023          	sw	a5,0(a4)
    80003014:	f25ff06f          	j	80002f38 <_ZN5Riscv20handleSupervisorTrapEv+0x4b0>
        if (!head) { tail = 0; }
    80003018:	00073423          	sd	zero,8(a4)
    8000301c:	f85ff06f          	j	80002fa0 <_ZN5Riscv20handleSupervisorTrapEv+0x518>
            TCB* rising=Scheduler::getSorted();
    80003020:	00000097          	auipc	ra,0x0
    80003024:	1dc080e7          	jalr	476(ra) # 800031fc <_ZN9Scheduler9getSortedEv>
            rising->sleep=false;
    80003028:	020509a3          	sb	zero,51(a0)
            Scheduler::put(rising);
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	150080e7          	jalr	336(ra) # 8000317c <_ZN9Scheduler3putEP3TCB>
        while(Scheduler::getWakeTime() && TCB::timeCur>=Scheduler::getWakeTime()){
    80003034:	00000097          	auipc	ra,0x0
    80003038:	244080e7          	jalr	580(ra) # 80003278 <_ZN9Scheduler11getWakeTimeEv>
    8000303c:	00050e63          	beqz	a0,80003058 <_ZN5Riscv20handleSupervisorTrapEv+0x5d0>
    80003040:	00000097          	auipc	ra,0x0
    80003044:	238080e7          	jalr	568(ra) # 80003278 <_ZN9Scheduler11getWakeTimeEv>
    80003048:	0000a797          	auipc	a5,0xa
    8000304c:	ea07b783          	ld	a5,-352(a5) # 8000cee8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003050:	0007b783          	ld	a5,0(a5)
    80003054:	fca7f6e3          	bgeu	a5,a0,80003020 <_ZN5Riscv20handleSupervisorTrapEv+0x598>
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80003058:	0000a797          	auipc	a5,0xa
    8000305c:	f007b783          	ld	a5,-256(a5) # 8000cf58 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80003060:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const {return timeSlice;}
    80003064:	0187b783          	ld	a5,24(a5)
    80003068:	0000a717          	auipc	a4,0xa
    8000306c:	e9073703          	ld	a4,-368(a4) # 8000cef8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003070:	00073703          	ld	a4,0(a4)
    80003074:	00f77c63          	bgeu	a4,a5,8000308c <_ZN5Riscv20handleSupervisorTrapEv+0x604>
        w_sepc(sepc);
    80003078:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000307c:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80003080:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003084:	10079073          	csrw	sstatus,a5
}
    80003088:	ae1ff06f          	j	80002b68 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
            TCB::timeSliceCounter=0;
    8000308c:	0000a797          	auipc	a5,0xa
    80003090:	e6c7b783          	ld	a5,-404(a5) # 8000cef8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003094:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	dd4080e7          	jalr	-556(ra) # 80001e6c <_ZN3TCB8dispatchEv>
    800030a0:	fd9ff06f          	j	80003078 <_ZN5Riscv20handleSupervisorTrapEv+0x5f0>
        myConsole::console_handler();
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	3a4080e7          	jalr	932(ra) # 80002448 <_ZN9myConsole15console_handlerEv>
    800030ac:	abdff06f          	j	80002b68 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>

00000000800030b0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::putSorted(TCB *ccb,uint64 wakeTime)
{
    sleepingThreadQueue.addSorted(ccb,wakeTime);
}
    800030b0:	ff010113          	addi	sp,sp,-16
    800030b4:	00813423          	sd	s0,8(sp)
    800030b8:	01010413          	addi	s0,sp,16
    800030bc:	00100793          	li	a5,1
    800030c0:	00f50863          	beq	a0,a5,800030d0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800030c4:	00813403          	ld	s0,8(sp)
    800030c8:	01010113          	addi	sp,sp,16
    800030cc:	00008067          	ret
    800030d0:	000107b7          	lui	a5,0x10
    800030d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800030d8:	fef596e3          	bne	a1,a5,800030c4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    800030dc:	0000a797          	auipc	a5,0xa
    800030e0:	f9c78793          	addi	a5,a5,-100 # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
    800030e4:	0007b023          	sd	zero,0(a5)
    800030e8:	0007b423          	sd	zero,8(a5)
    800030ec:	0007a823          	sw	zero,16(a5)
    800030f0:	0007bc23          	sd	zero,24(a5)
    800030f4:	0207b023          	sd	zero,32(a5)
    800030f8:	0207a423          	sw	zero,40(a5)
    800030fc:	fc9ff06f          	j	800030c4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003100 <_ZN9Scheduler3getEv>:
{
    80003100:	fe010113          	addi	sp,sp,-32
    80003104:	00113c23          	sd	ra,24(sp)
    80003108:	00813823          	sd	s0,16(sp)
    8000310c:	00913423          	sd	s1,8(sp)
    80003110:	02010413          	addi	s0,sp,32
        size++;
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80003114:	0000a517          	auipc	a0,0xa
    80003118:	f6453503          	ld	a0,-156(a0) # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
    8000311c:	04050c63          	beqz	a0,80003174 <_ZN9Scheduler3getEv+0x74>

        Elem *elem = head;
        head = head->next;
    80003120:	00853783          	ld	a5,8(a0)
    80003124:	0000a717          	auipc	a4,0xa
    80003128:	f4f73a23          	sd	a5,-172(a4) # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000312c:	02078e63          	beqz	a5,80003168 <_ZN9Scheduler3getEv+0x68>

        T *ret = elem->data;
    80003130:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80003134:	00000097          	auipc	ra,0x0
    80003138:	494080e7          	jalr	1172(ra) # 800035c8 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    8000313c:	0000a717          	auipc	a4,0xa
    80003140:	f3c70713          	addi	a4,a4,-196 # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
    80003144:	01072783          	lw	a5,16(a4)
    80003148:	fff7879b          	addiw	a5,a5,-1
    8000314c:	00f72823          	sw	a5,16(a4)
}
    80003150:	00048513          	mv	a0,s1
    80003154:	01813083          	ld	ra,24(sp)
    80003158:	01013403          	ld	s0,16(sp)
    8000315c:	00813483          	ld	s1,8(sp)
    80003160:	02010113          	addi	sp,sp,32
    80003164:	00008067          	ret
        if (!head) { tail = 0; }
    80003168:	0000a797          	auipc	a5,0xa
    8000316c:	f007bc23          	sd	zero,-232(a5) # 8000d080 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003170:	fc1ff06f          	j	80003130 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80003174:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80003178:	fd9ff06f          	j	80003150 <_ZN9Scheduler3getEv+0x50>

000000008000317c <_ZN9Scheduler3putEP3TCB>:
{
    8000317c:	fe010113          	addi	sp,sp,-32
    80003180:	00113c23          	sd	ra,24(sp)
    80003184:	00813823          	sd	s0,16(sp)
    80003188:	00913423          	sd	s1,8(sp)
    8000318c:	02010413          	addi	s0,sp,32
    80003190:	00050493          	mv	s1,a0
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    80003194:	00100513          	li	a0,1
    80003198:	00000097          	auipc	ra,0x0
    8000319c:	2d4080e7          	jalr	724(ra) # 8000346c <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    800031a0:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    800031a4:	00053423          	sd	zero,8(a0)
        if (tail)
    800031a8:	0000a797          	auipc	a5,0xa
    800031ac:	ed87b783          	ld	a5,-296(a5) # 8000d080 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800031b0:	02078c63          	beqz	a5,800031e8 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    800031b4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800031b8:	0000a797          	auipc	a5,0xa
    800031bc:	eca7b423          	sd	a0,-312(a5) # 8000d080 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    800031c0:	0000a717          	auipc	a4,0xa
    800031c4:	eb870713          	addi	a4,a4,-328 # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
    800031c8:	01072783          	lw	a5,16(a4)
    800031cc:	0017879b          	addiw	a5,a5,1
    800031d0:	00f72823          	sw	a5,16(a4)
}
    800031d4:	01813083          	ld	ra,24(sp)
    800031d8:	01013403          	ld	s0,16(sp)
    800031dc:	00813483          	ld	s1,8(sp)
    800031e0:	02010113          	addi	sp,sp,32
    800031e4:	00008067          	ret
            head = tail = elem;
    800031e8:	0000a797          	auipc	a5,0xa
    800031ec:	e9078793          	addi	a5,a5,-368 # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
    800031f0:	00a7b423          	sd	a0,8(a5)
    800031f4:	00a7b023          	sd	a0,0(a5)
    800031f8:	fc9ff06f          	j	800031c0 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800031fc <_ZN9Scheduler9getSortedEv>:
{
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00113c23          	sd	ra,24(sp)
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80003210:	0000a517          	auipc	a0,0xa
    80003214:	e8053503          	ld	a0,-384(a0) # 8000d090 <_ZN9Scheduler19sleepingThreadQueueE>
    80003218:	04050c63          	beqz	a0,80003270 <_ZN9Scheduler9getSortedEv+0x74>
        head = head->next;
    8000321c:	00853783          	ld	a5,8(a0)
    80003220:	0000a717          	auipc	a4,0xa
    80003224:	e6f73823          	sd	a5,-400(a4) # 8000d090 <_ZN9Scheduler19sleepingThreadQueueE>
        if (!head) { tail = 0; }
    80003228:	02078e63          	beqz	a5,80003264 <_ZN9Scheduler9getSortedEv+0x68>
        T *ret = elem->data;
    8000322c:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80003230:	00000097          	auipc	ra,0x0
    80003234:	398080e7          	jalr	920(ra) # 800035c8 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80003238:	0000a717          	auipc	a4,0xa
    8000323c:	e4070713          	addi	a4,a4,-448 # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
    80003240:	02872783          	lw	a5,40(a4)
    80003244:	fff7879b          	addiw	a5,a5,-1
    80003248:	02f72423          	sw	a5,40(a4)
}
    8000324c:	00048513          	mv	a0,s1
    80003250:	01813083          	ld	ra,24(sp)
    80003254:	01013403          	ld	s0,16(sp)
    80003258:	00813483          	ld	s1,8(sp)
    8000325c:	02010113          	addi	sp,sp,32
    80003260:	00008067          	ret
        if (!head) { tail = 0; }
    80003264:	0000a797          	auipc	a5,0xa
    80003268:	e207ba23          	sd	zero,-460(a5) # 8000d098 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    8000326c:	fc1ff06f          	j	8000322c <_ZN9Scheduler9getSortedEv+0x30>
        if (!head) { return 0; }
    80003270:	00050493          	mv	s1,a0
    return sleepingThreadQueue.removeFirst();
    80003274:	fd9ff06f          	j	8000324c <_ZN9Scheduler9getSortedEv+0x50>

0000000080003278 <_ZN9Scheduler11getWakeTimeEv>:
uint64 Scheduler::getWakeTime() {
    80003278:	ff010113          	addi	sp,sp,-16
    8000327c:	00813423          	sd	s0,8(sp)
    80003280:	01010413          	addi	s0,sp,16
        if (!head) { return 0; }
        return head->data;
    }

    uint64 peekFirstTime(){
        if(!head) return 0;
    80003284:	0000a797          	auipc	a5,0xa
    80003288:	e0c7b783          	ld	a5,-500(a5) # 8000d090 <_ZN9Scheduler19sleepingThreadQueueE>
    8000328c:	00078a63          	beqz	a5,800032a0 <_ZN9Scheduler11getWakeTimeEv+0x28>
        return head->wakeUp;
    80003290:	0107b503          	ld	a0,16(a5)
}
    80003294:	00813403          	ld	s0,8(sp)
    80003298:	01010113          	addi	sp,sp,16
    8000329c:	00008067          	ret
        if(!head) return 0;
    800032a0:	00000513          	li	a0,0
    return sleepingThreadQueue.peekFirstTime();
    800032a4:	ff1ff06f          	j	80003294 <_ZN9Scheduler11getWakeTimeEv+0x1c>

00000000800032a8 <_ZN9Scheduler9putSortedEP3TCBm>:
{
    800032a8:	fd010113          	addi	sp,sp,-48
    800032ac:	02113423          	sd	ra,40(sp)
    800032b0:	02813023          	sd	s0,32(sp)
    800032b4:	00913c23          	sd	s1,24(sp)
    800032b8:	01213823          	sd	s2,16(sp)
    800032bc:	01313423          	sd	s3,8(sp)
    800032c0:	03010413          	addi	s0,sp,48
    800032c4:	00050993          	mv	s3,a0
    800032c8:	00058913          	mv	s2,a1
        Elem* curr = head;
    800032cc:	0000a497          	auipc	s1,0xa
    800032d0:	dc44b483          	ld	s1,-572(s1) # 8000d090 <_ZN9Scheduler19sleepingThreadQueueE>
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    800032d4:	00100513          	li	a0,1
    800032d8:	00000097          	auipc	ra,0x0
    800032dc:	194080e7          	jalr	404(ra) # 8000346c <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    800032e0:	01353023          	sd	s3,0(a0)
        elem->next = nullptr;
    800032e4:	00053423          	sd	zero,8(a0)
        elem->wakeUp=wakeUp;
    800032e8:	01253823          	sd	s2,16(a0)
        if(!curr){
    800032ec:	02048863          	beqz	s1,8000331c <_ZN9Scheduler9putSortedEP3TCBm+0x74>
        else if(head->wakeUp>wakeUp){
    800032f0:	0000a797          	auipc	a5,0xa
    800032f4:	da07b783          	ld	a5,-608(a5) # 8000d090 <_ZN9Scheduler19sleepingThreadQueueE>
    800032f8:	0107b703          	ld	a4,16(a5)
    800032fc:	04e96063          	bltu	s2,a4,8000333c <_ZN9Scheduler9putSortedEP3TCBm+0x94>
        Elem* prev=curr;
    80003300:	00048793          	mv	a5,s1
        while(curr && curr->wakeUp<=wakeUp) {
    80003304:	04048c63          	beqz	s1,8000335c <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
    80003308:	0104b703          	ld	a4,16(s1)
    8000330c:	04e96863          	bltu	s2,a4,8000335c <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
            prev=curr;
    80003310:	00048793          	mv	a5,s1
            curr=curr->next;
    80003314:	0084b483          	ld	s1,8(s1)
        while(curr && curr->wakeUp<=wakeUp) {
    80003318:	fedff06f          	j	80003304 <_ZN9Scheduler9putSortedEP3TCBm+0x5c>
            head=tail=elem;
    8000331c:	0000a797          	auipc	a5,0xa
    80003320:	d5c78793          	addi	a5,a5,-676 # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
    80003324:	02a7b023          	sd	a0,32(a5)
    80003328:	00a7bc23          	sd	a0,24(a5)
            size++;
    8000332c:	0287a703          	lw	a4,40(a5)
    80003330:	0017071b          	addiw	a4,a4,1
    80003334:	02e7a423          	sw	a4,40(a5)
            return;
    80003338:	0440006f          	j	8000337c <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
            elem->next=head;
    8000333c:	00f53423          	sd	a5,8(a0)
            head=elem;
    80003340:	0000a797          	auipc	a5,0xa
    80003344:	d3878793          	addi	a5,a5,-712 # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
    80003348:	00a7bc23          	sd	a0,24(a5)
            size++;
    8000334c:	0287a703          	lw	a4,40(a5)
    80003350:	0017071b          	addiw	a4,a4,1
    80003354:	02e7a423          	sw	a4,40(a5)
            return;
    80003358:	0240006f          	j	8000337c <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
        elem->next=curr;
    8000335c:	00953423          	sd	s1,8(a0)
        prev->next=elem;
    80003360:	00a7b423          	sd	a0,8(a5)
        if(!curr) tail=elem;
    80003364:	02048a63          	beqz	s1,80003398 <_ZN9Scheduler9putSortedEP3TCBm+0xf0>
        size++;
    80003368:	0000a717          	auipc	a4,0xa
    8000336c:	d1070713          	addi	a4,a4,-752 # 8000d078 <_ZN9Scheduler16readyThreadQueueE>
    80003370:	02872783          	lw	a5,40(a4)
    80003374:	0017879b          	addiw	a5,a5,1
    80003378:	02f72423          	sw	a5,40(a4)
}
    8000337c:	02813083          	ld	ra,40(sp)
    80003380:	02013403          	ld	s0,32(sp)
    80003384:	01813483          	ld	s1,24(sp)
    80003388:	01013903          	ld	s2,16(sp)
    8000338c:	00813983          	ld	s3,8(sp)
    80003390:	03010113          	addi	sp,sp,48
    80003394:	00008067          	ret
        if(!curr) tail=elem;
    80003398:	0000a797          	auipc	a5,0xa
    8000339c:	d0a7b023          	sd	a0,-768(a5) # 8000d098 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    800033a0:	fc9ff06f          	j	80003368 <_ZN9Scheduler9putSortedEP3TCBm+0xc0>

00000000800033a4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800033a4:	ff010113          	addi	sp,sp,-16
    800033a8:	00113423          	sd	ra,8(sp)
    800033ac:	00813023          	sd	s0,0(sp)
    800033b0:	01010413          	addi	s0,sp,16
    800033b4:	000105b7          	lui	a1,0x10
    800033b8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800033bc:	00100513          	li	a0,1
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	cf0080e7          	jalr	-784(ra) # 800030b0 <_Z41__static_initialization_and_destruction_0ii>
    800033c8:	00813083          	ld	ra,8(sp)
    800033cc:	00013403          	ld	s0,0(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret

00000000800033d8 <_ZN15MemoryAllocator7getFreeEv>:
    findNewLargest();
    return 0;
}

size_t MemoryAllocator::getFree()
{
    800033d8:	ff010113          	addi	sp,sp,-16
    800033dc:	00813423          	sd	s0,8(sp)
    800033e0:	01010413          	addi	s0,sp,16

    return totalFreeMem;
}
    800033e4:	0000a517          	auipc	a0,0xa
    800033e8:	cc453503          	ld	a0,-828(a0) # 8000d0a8 <_ZN15MemoryAllocator12totalFreeMemE>
    800033ec:	00813403          	ld	s0,8(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock()
{
    800033f8:	ff010113          	addi	sp,sp,-16
    800033fc:	00813423          	sd	s0,8(sp)
    80003400:	01010413          	addi	s0,sp,16
    return largestFreeBlock;
}
    80003404:	0000a517          	auipc	a0,0xa
    80003408:	cac53503          	ld	a0,-852(a0) # 8000d0b0 <_ZN15MemoryAllocator16largestFreeBlockE>
    8000340c:	00813403          	ld	s0,8(sp)
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret

0000000080003418 <_ZN15MemoryAllocator14findNewLargestEv>:

void MemoryAllocator::findNewLargest()
{
    80003418:	ff010113          	addi	sp,sp,-16
    8000341c:	00813423          	sd	s0,8(sp)
    80003420:	01010413          	addi	s0,sp,16
    largestFreeBlock=0;
    80003424:	0000a797          	auipc	a5,0xa
    80003428:	c8478793          	addi	a5,a5,-892 # 8000d0a8 <_ZN15MemoryAllocator12totalFreeMemE>
    8000342c:	0007b423          	sd	zero,8(a5)
    if(!freeMemHead) return;
    80003430:	0107b783          	ld	a5,16(a5)
    80003434:	00079e63          	bnez	a5,80003450 <_ZN15MemoryAllocator14findNewLargestEv+0x38>
    while(curr) {
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
        curr=curr->next;
    }

}
    80003438:	00813403          	ld	s0,8(sp)
    8000343c:	01010113          	addi	sp,sp,16
    80003440:	00008067          	ret
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80003444:	0000a697          	auipc	a3,0xa
    80003448:	c6e6b623          	sd	a4,-916(a3) # 8000d0b0 <_ZN15MemoryAllocator16largestFreeBlockE>
        curr=curr->next;
    8000344c:	0107b783          	ld	a5,16(a5)
    while(curr) {
    80003450:	fe0784e3          	beqz	a5,80003438 <_ZN15MemoryAllocator14findNewLargestEv+0x20>
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80003454:	0007b683          	ld	a3,0(a5)
    80003458:	0000a717          	auipc	a4,0xa
    8000345c:	c5873703          	ld	a4,-936(a4) # 8000d0b0 <_ZN15MemoryAllocator16largestFreeBlockE>
    80003460:	fed772e3          	bgeu	a4,a3,80003444 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>
    80003464:	00068713          	mv	a4,a3
    80003468:	fddff06f          	j	80003444 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>

000000008000346c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000346c:	fe010113          	addi	sp,sp,-32
    80003470:	00113c23          	sd	ra,24(sp)
    80003474:	00813823          	sd	s0,16(sp)
    80003478:	00913423          	sd	s1,8(sp)
    8000347c:	02010413          	addi	s0,sp,32
    size_t size=numOfBlocks*MEM_BLOCK_SIZE;
    80003480:	00651513          	slli	a0,a0,0x6
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    80003484:	12050e63          	beqz	a0,800035c0 <_ZN15MemoryAllocator9mem_allocEm+0x154>
    80003488:	0000a497          	auipc	s1,0xa
    8000348c:	c304b483          	ld	s1,-976(s1) # 8000d0b8 <_ZN15MemoryAllocator11freeMemHeadE>
    80003490:	0e048e63          	beqz	s1,8000358c <_ZN15MemoryAllocator9mem_allocEm+0x120>
    80003494:	0000a717          	auipc	a4,0xa
    80003498:	c1c73703          	ld	a4,-996(a4) # 8000d0b0 <_ZN15MemoryAllocator16largestFreeBlockE>
    8000349c:	00a77863          	bgeu	a4,a0,800034ac <_ZN15MemoryAllocator9mem_allocEm+0x40>
    800034a0:	00000493          	li	s1,0
    800034a4:	0e80006f          	j	8000358c <_ZN15MemoryAllocator9mem_allocEm+0x120>
    while(curr && curr->size<size) curr=curr->next;
    800034a8:	0104b483          	ld	s1,16(s1)
    800034ac:	00048663          	beqz	s1,800034b8 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    800034b0:	0004b783          	ld	a5,0(s1)
    800034b4:	fea7eae3          	bltu	a5,a0,800034a8 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if(!curr) return nullptr;
    800034b8:	0c048a63          	beqz	s1,8000358c <_ZN15MemoryAllocator9mem_allocEm+0x120>
    if(curr->size> size+sizeof(FreeBlock)){
    800034bc:	0004b683          	ld	a3,0(s1)
    800034c0:	01850793          	addi	a5,a0,24
    800034c4:	08d7f063          	bgeu	a5,a3,80003544 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        totalFreeMem=totalFreeMem-size-sizeof(FreeBlock);
    800034c8:	0000a617          	auipc	a2,0xa
    800034cc:	be060613          	addi	a2,a2,-1056 # 8000d0a8 <_ZN15MemoryAllocator12totalFreeMemE>
    800034d0:	00063683          	ld	a3,0(a2)
    800034d4:	40a686b3          	sub	a3,a3,a0
    800034d8:	fe868693          	addi	a3,a3,-24
    800034dc:	00d63023          	sd	a3,0(a2)
        if(largestFreeBlock==curr->size) find=true;
    800034e0:	0004b683          	ld	a3,0(s1)
    800034e4:	04d70663          	beq	a4,a3,80003530 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        bool find=false;
    800034e8:	00000613          	li	a2,0
        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    800034ec:	00f487b3          	add	a5,s1,a5
        newBlock->size=curr->size-size-sizeof(FreeBlock);
    800034f0:	40a686b3          	sub	a3,a3,a0
    800034f4:	fe868693          	addi	a3,a3,-24
    800034f8:	00d7b023          	sd	a3,0(a5)
        newBlock->prev=curr->prev;
    800034fc:	0084b703          	ld	a4,8(s1)
    80003500:	00e7b423          	sd	a4,8(a5)
        curr->size=size;
    80003504:	00a4b023          	sd	a0,0(s1)
        if(curr->prev){
    80003508:	02070863          	beqz	a4,80003538 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            curr->prev->next=newBlock;
    8000350c:	00f73823          	sd	a5,16(a4)
        newBlock->next=curr->next;
    80003510:	0104b703          	ld	a4,16(s1)
    80003514:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=newBlock;
    80003518:	00070463          	beqz	a4,80003520 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    8000351c:	00f73423          	sd	a5,8(a4)
        if(find) findNewLargest();
    80003520:	06060063          	beqz	a2,80003580 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80003524:	00000097          	auipc	ra,0x0
    80003528:	ef4080e7          	jalr	-268(ra) # 80003418 <_ZN15MemoryAllocator14findNewLargestEv>
    8000352c:	0540006f          	j	80003580 <_ZN15MemoryAllocator9mem_allocEm+0x114>
        if(largestFreeBlock==curr->size) find=true;
    80003530:	00100613          	li	a2,1
    80003534:	fb9ff06f          	j	800034ec <_ZN15MemoryAllocator9mem_allocEm+0x80>
        else freeMemHead = newBlock;
    80003538:	0000a717          	auipc	a4,0xa
    8000353c:	b8f73023          	sd	a5,-1152(a4) # 8000d0b8 <_ZN15MemoryAllocator11freeMemHeadE>
    80003540:	fd1ff06f          	j	80003510 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        totalFreeMem=totalFreeMem-curr->size;
    80003544:	0000a617          	auipc	a2,0xa
    80003548:	b6460613          	addi	a2,a2,-1180 # 8000d0a8 <_ZN15MemoryAllocator12totalFreeMemE>
    8000354c:	00063783          	ld	a5,0(a2)
    80003550:	40d786b3          	sub	a3,a5,a3
    80003554:	00d63023          	sd	a3,0(a2)
        if(curr->prev) curr->prev->next=curr->next;
    80003558:	0084b783          	ld	a5,8(s1)
    8000355c:	04078463          	beqz	a5,800035a4 <_ZN15MemoryAllocator9mem_allocEm+0x138>
    80003560:	0104b683          	ld	a3,16(s1)
    80003564:	00d7b823          	sd	a3,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80003568:	0104b783          	ld	a5,16(s1)
    8000356c:	00078663          	beqz	a5,80003578 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    80003570:	0084b683          	ld	a3,8(s1)
    80003574:	00d7b423          	sd	a3,8(a5)
        if(curr->size==largestFreeBlock) findNewLargest();
    80003578:	0004b783          	ld	a5,0(s1)
    8000357c:	02f70c63          	beq	a4,a5,800035b4 <_ZN15MemoryAllocator9mem_allocEm+0x148>
    curr->next=nullptr;
    80003580:	0004b823          	sd	zero,16(s1)
    curr->prev=nullptr;
    80003584:	0004b423          	sd	zero,8(s1)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    80003588:	01848493          	addi	s1,s1,24
}
    8000358c:	00048513          	mv	a0,s1
    80003590:	01813083          	ld	ra,24(sp)
    80003594:	01013403          	ld	s0,16(sp)
    80003598:	00813483          	ld	s1,8(sp)
    8000359c:	02010113          	addi	sp,sp,32
    800035a0:	00008067          	ret
        else freeMemHead=curr->next;
    800035a4:	0104b783          	ld	a5,16(s1)
    800035a8:	0000a697          	auipc	a3,0xa
    800035ac:	b0f6b823          	sd	a5,-1264(a3) # 8000d0b8 <_ZN15MemoryAllocator11freeMemHeadE>
    800035b0:	fb9ff06f          	j	80003568 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if(curr->size==largestFreeBlock) findNewLargest();
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	e64080e7          	jalr	-412(ra) # 80003418 <_ZN15MemoryAllocator14findNewLargestEv>
    800035bc:	fc5ff06f          	j	80003580 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    800035c0:	00000493          	li	s1,0
    800035c4:	fc9ff06f          	j	8000358c <_ZN15MemoryAllocator9mem_allocEm+0x120>

00000000800035c8 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    800035c8:	1e050c63          	beqz	a0,800037c0 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800035cc:	fe850693          	addi	a3,a0,-24
    800035d0:	0000a797          	auipc	a5,0xa
    800035d4:	8f87b783          	ld	a5,-1800(a5) # 8000cec8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800035d8:	0007b783          	ld	a5,0(a5)
    800035dc:	1ef6e663          	bltu	a3,a5,800037c8 <_ZN15MemoryAllocator8mem_freeEPv+0x200>
    800035e0:	0000a797          	auipc	a5,0xa
    800035e4:	9887b783          	ld	a5,-1656(a5) # 8000cf68 <_GLOBAL_OFFSET_TABLE_+0xc8>
    800035e8:	0007b783          	ld	a5,0(a5)
    800035ec:	1ea7e263          	bltu	a5,a0,800037d0 <_ZN15MemoryAllocator8mem_freeEPv+0x208>
    totalFreeMem+=blk->size;
    800035f0:	fe853603          	ld	a2,-24(a0)
    800035f4:	0000a797          	auipc	a5,0xa
    800035f8:	ab478793          	addi	a5,a5,-1356 # 8000d0a8 <_ZN15MemoryAllocator12totalFreeMemE>
    800035fc:	0007b703          	ld	a4,0(a5)
    80003600:	00c70733          	add	a4,a4,a2
    80003604:	00e7b023          	sd	a4,0(a5)
    blk->next=nullptr;
    80003608:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    8000360c:	fe053823          	sd	zero,-16(a0)
    if(!freeMemHead){
    80003610:	0107b603          	ld	a2,16(a5)
    80003614:	08060463          	beqz	a2,8000369c <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
{
    80003618:	ff010113          	addi	sp,sp,-16
    8000361c:	00113423          	sd	ra,8(sp)
    80003620:	00813023          	sd	s0,0(sp)
    80003624:	01010413          	addi	s0,sp,16
    if((char*) blk < (char*) freeMemHead){
    80003628:	0cc6e263          	bltu	a3,a2,800036ec <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    8000362c:	00060793          	mv	a5,a2
    80003630:	00078713          	mv	a4,a5
    80003634:	0107b783          	ld	a5,16(a5)
    80003638:	00078463          	beqz	a5,80003640 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    8000363c:	fed7eae3          	bltu	a5,a3,80003630 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    80003640:	0a070863          	beqz	a4,800036f0 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    80003644:	00073803          	ld	a6,0(a4)
    80003648:	01880593          	addi	a1,a6,24
    8000364c:	00b705b3          	add	a1,a4,a1
    80003650:	0ab69063          	bne	a3,a1,800036f0 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
        curr->size+=sizeof(FreeBlock)+blk->size;
    80003654:	fe853683          	ld	a3,-24(a0)
    80003658:	00d806b3          	add	a3,a6,a3
    8000365c:	01868693          	addi	a3,a3,24
    80003660:	00d73023          	sd	a3,0(a4)
        totalFreeMem+=sizeof(FreeBlock);
    80003664:	0000a617          	auipc	a2,0xa
    80003668:	a4460613          	addi	a2,a2,-1468 # 8000d0a8 <_ZN15MemoryAllocator12totalFreeMemE>
    8000366c:	00063683          	ld	a3,0(a2)
    80003670:	01868693          	addi	a3,a3,24
    80003674:	00d63023          	sd	a3,0(a2)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80003678:	00078a63          	beqz	a5,8000368c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    8000367c:	00073603          	ld	a2,0(a4)
    80003680:	01860693          	addi	a3,a2,24
    80003684:	00d706b3          	add	a3,a4,a3
    80003688:	02d78663          	beq	a5,a3,800036b4 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        findNewLargest();
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	d8c080e7          	jalr	-628(ra) # 80003418 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    80003694:	00000513          	li	a0,0
    80003698:	09c0006f          	j	80003734 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        freeMemHead=blk;
    8000369c:	00d7b823          	sd	a3,16(a5)
        totalFreeMem=blk->size;
    800036a0:	fe853703          	ld	a4,-24(a0)
    800036a4:	00e7b023          	sd	a4,0(a5)
        largestFreeBlock=totalFreeMem;
    800036a8:	00e7b423          	sd	a4,8(a5)
        return 0;
    800036ac:	00000513          	li	a0,0
    800036b0:	00008067          	ret
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    800036b4:	0007b683          	ld	a3,0(a5)
    800036b8:	00d606b3          	add	a3,a2,a3
    800036bc:	01868693          	addi	a3,a3,24
    800036c0:	00d73023          	sd	a3,0(a4)
            totalFreeMem+=sizeof(FreeBlock);
    800036c4:	0000a617          	auipc	a2,0xa
    800036c8:	9e460613          	addi	a2,a2,-1564 # 8000d0a8 <_ZN15MemoryAllocator12totalFreeMemE>
    800036cc:	00063683          	ld	a3,0(a2)
    800036d0:	01868693          	addi	a3,a3,24
    800036d4:	00d63023          	sd	a3,0(a2)
            curr->next=curr->next->next;
    800036d8:	0107b783          	ld	a5,16(a5)
    800036dc:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    800036e0:	fa0786e3          	beqz	a5,8000368c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    800036e4:	00e7b423          	sd	a4,8(a5)
    800036e8:	fa5ff06f          	j	8000368c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        curr=nullptr;
    800036ec:	00000713          	li	a4,0
    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    800036f0:	00070463          	beqz	a4,800036f8 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    800036f4:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    800036f8:	00060863          	beqz	a2,80003708 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    800036fc:	fe853783          	ld	a5,-24(a0)
    80003700:	00f507b3          	add	a5,a0,a5
    80003704:	04c78063          	beq	a5,a2,80003744 <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    blk->prev=curr;
    80003708:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    8000370c:	08070e63          	beqz	a4,800037a8 <_ZN15MemoryAllocator8mem_freeEPv+0x1e0>
    80003710:	01073783          	ld	a5,16(a4)
    80003714:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    80003718:	00078463          	beqz	a5,80003720 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    8000371c:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    80003720:	08070a63          	beqz	a4,800037b4 <_ZN15MemoryAllocator8mem_freeEPv+0x1ec>
    80003724:	00d73823          	sd	a3,16(a4)
    findNewLargest();
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	cf0080e7          	jalr	-784(ra) # 80003418 <_ZN15MemoryAllocator14findNewLargestEv>
    return 0;
    80003730:	00000513          	li	a0,0
}
    80003734:	00813083          	ld	ra,8(sp)
    80003738:	00013403          	ld	s0,0(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret
        totalFreeMem+=sizeof(FreeBlock);
    80003744:	0000a717          	auipc	a4,0xa
    80003748:	96470713          	addi	a4,a4,-1692 # 8000d0a8 <_ZN15MemoryAllocator12totalFreeMemE>
    8000374c:	00073783          	ld	a5,0(a4)
    80003750:	01878793          	addi	a5,a5,24
    80003754:	00f73023          	sd	a5,0(a4)
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    80003758:	00063783          	ld	a5,0(a2)
    8000375c:	fe853703          	ld	a4,-24(a0)
    80003760:	00e787b3          	add	a5,a5,a4
    80003764:	01878793          	addi	a5,a5,24
    80003768:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    8000376c:	01063783          	ld	a5,16(a2)
    80003770:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    80003774:	00078463          	beqz	a5,8000377c <_ZN15MemoryAllocator8mem_freeEPv+0x1b4>
    80003778:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    8000377c:	00863783          	ld	a5,8(a2)
    80003780:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    80003784:	00078c63          	beqz	a5,8000379c <_ZN15MemoryAllocator8mem_freeEPv+0x1d4>
    80003788:	00d7b823          	sd	a3,16(a5)
        findNewLargest();
    8000378c:	00000097          	auipc	ra,0x0
    80003790:	c8c080e7          	jalr	-884(ra) # 80003418 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    80003794:	00000513          	li	a0,0
    80003798:	f9dff06f          	j	80003734 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        else freeMemHead=blk;
    8000379c:	0000a797          	auipc	a5,0xa
    800037a0:	90d7be23          	sd	a3,-1764(a5) # 8000d0b8 <_ZN15MemoryAllocator11freeMemHeadE>
    800037a4:	fe9ff06f          	j	8000378c <_ZN15MemoryAllocator8mem_freeEPv+0x1c4>
    blk->next=curr?curr->next:freeMemHead;
    800037a8:	0000a797          	auipc	a5,0xa
    800037ac:	9107b783          	ld	a5,-1776(a5) # 8000d0b8 <_ZN15MemoryAllocator11freeMemHeadE>
    800037b0:	f65ff06f          	j	80003714 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    else freeMemHead=blk;
    800037b4:	0000a797          	auipc	a5,0xa
    800037b8:	90d7b223          	sd	a3,-1788(a5) # 8000d0b8 <_ZN15MemoryAllocator11freeMemHeadE>
    800037bc:	f6dff06f          	j	80003728 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    if(!addr) return -1;
    800037c0:	fff00513          	li	a0,-1
    800037c4:	00008067          	ret
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800037c8:	ffe00513          	li	a0,-2
    800037cc:	00008067          	ret
    800037d0:	ffe00513          	li	a0,-2
}
    800037d4:	00008067          	ret

00000000800037d8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800037d8:	fe010113          	addi	sp,sp,-32
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	00813823          	sd	s0,16(sp)
    800037e4:	00913423          	sd	s1,8(sp)
    800037e8:	01213023          	sd	s2,0(sp)
    800037ec:	02010413          	addi	s0,sp,32
    800037f0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800037f4:	00000913          	li	s2,0
    800037f8:	00c0006f          	j	80003804 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	be8080e7          	jalr	-1048(ra) # 800013e4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	dd8080e7          	jalr	-552(ra) # 800015dc <_Z4getcv>
    8000380c:	0005059b          	sext.w	a1,a0
    80003810:	01b00793          	li	a5,27
    80003814:	02f58a63          	beq	a1,a5,80003848 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003818:	0084b503          	ld	a0,8(s1)
    8000381c:	00004097          	auipc	ra,0x4
    80003820:	9ec080e7          	jalr	-1556(ra) # 80007208 <_ZN6Buffer3putEi>
        i++;
    80003824:	0019071b          	addiw	a4,s2,1
    80003828:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000382c:	0004a683          	lw	a3,0(s1)
    80003830:	0026979b          	slliw	a5,a3,0x2
    80003834:	00d787bb          	addw	a5,a5,a3
    80003838:	0017979b          	slliw	a5,a5,0x1
    8000383c:	02f767bb          	remw	a5,a4,a5
    80003840:	fc0792e3          	bnez	a5,80003804 <_ZL16producerKeyboardPv+0x2c>
    80003844:	fb9ff06f          	j	800037fc <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003848:	00100793          	li	a5,1
    8000384c:	0000a717          	auipc	a4,0xa
    80003850:	86f72a23          	sw	a5,-1932(a4) # 8000d0c0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003854:	02100593          	li	a1,33
    80003858:	0084b503          	ld	a0,8(s1)
    8000385c:	00004097          	auipc	ra,0x4
    80003860:	9ac080e7          	jalr	-1620(ra) # 80007208 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003864:	0104b503          	ld	a0,16(s1)
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	d04080e7          	jalr	-764(ra) # 8000156c <_Z10sem_signalP4_sem>
}
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	00813483          	ld	s1,8(sp)
    8000387c:	00013903          	ld	s2,0(sp)
    80003880:	02010113          	addi	sp,sp,32
    80003884:	00008067          	ret

0000000080003888 <_ZL8producerPv>:

static void producer(void *arg) {
    80003888:	fe010113          	addi	sp,sp,-32
    8000388c:	00113c23          	sd	ra,24(sp)
    80003890:	00813823          	sd	s0,16(sp)
    80003894:	00913423          	sd	s1,8(sp)
    80003898:	01213023          	sd	s2,0(sp)
    8000389c:	02010413          	addi	s0,sp,32
    800038a0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800038a4:	00000913          	li	s2,0
    800038a8:	00c0006f          	j	800038b4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	b38080e7          	jalr	-1224(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800038b4:	0000a797          	auipc	a5,0xa
    800038b8:	80c7a783          	lw	a5,-2036(a5) # 8000d0c0 <_ZL9threadEnd>
    800038bc:	02079e63          	bnez	a5,800038f8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800038c0:	0004a583          	lw	a1,0(s1)
    800038c4:	0305859b          	addiw	a1,a1,48
    800038c8:	0084b503          	ld	a0,8(s1)
    800038cc:	00004097          	auipc	ra,0x4
    800038d0:	93c080e7          	jalr	-1732(ra) # 80007208 <_ZN6Buffer3putEi>
        i++;
    800038d4:	0019071b          	addiw	a4,s2,1
    800038d8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800038dc:	0004a683          	lw	a3,0(s1)
    800038e0:	0026979b          	slliw	a5,a3,0x2
    800038e4:	00d787bb          	addw	a5,a5,a3
    800038e8:	0017979b          	slliw	a5,a5,0x1
    800038ec:	02f767bb          	remw	a5,a4,a5
    800038f0:	fc0792e3          	bnez	a5,800038b4 <_ZL8producerPv+0x2c>
    800038f4:	fb9ff06f          	j	800038ac <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800038f8:	0104b503          	ld	a0,16(s1)
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	c70080e7          	jalr	-912(ra) # 8000156c <_Z10sem_signalP4_sem>
}
    80003904:	01813083          	ld	ra,24(sp)
    80003908:	01013403          	ld	s0,16(sp)
    8000390c:	00813483          	ld	s1,8(sp)
    80003910:	00013903          	ld	s2,0(sp)
    80003914:	02010113          	addi	sp,sp,32
    80003918:	00008067          	ret

000000008000391c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000391c:	fd010113          	addi	sp,sp,-48
    80003920:	02113423          	sd	ra,40(sp)
    80003924:	02813023          	sd	s0,32(sp)
    80003928:	00913c23          	sd	s1,24(sp)
    8000392c:	01213823          	sd	s2,16(sp)
    80003930:	01313423          	sd	s3,8(sp)
    80003934:	03010413          	addi	s0,sp,48
    80003938:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000393c:	00000993          	li	s3,0
    80003940:	01c0006f          	j	8000395c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	aa0080e7          	jalr	-1376(ra) # 800013e4 <_Z15thread_dispatchv>
    8000394c:	0500006f          	j	8000399c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003950:	00a00513          	li	a0,10
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	cbc080e7          	jalr	-836(ra) # 80001610 <_Z4putcc>
    while (!threadEnd) {
    8000395c:	00009797          	auipc	a5,0x9
    80003960:	7647a783          	lw	a5,1892(a5) # 8000d0c0 <_ZL9threadEnd>
    80003964:	06079063          	bnez	a5,800039c4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003968:	00893503          	ld	a0,8(s2)
    8000396c:	00004097          	auipc	ra,0x4
    80003970:	92c080e7          	jalr	-1748(ra) # 80007298 <_ZN6Buffer3getEv>
        i++;
    80003974:	0019849b          	addiw	s1,s3,1
    80003978:	0004899b          	sext.w	s3,s1
        putc(key);
    8000397c:	0ff57513          	andi	a0,a0,255
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	c90080e7          	jalr	-880(ra) # 80001610 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003988:	00092703          	lw	a4,0(s2)
    8000398c:	0027179b          	slliw	a5,a4,0x2
    80003990:	00e787bb          	addw	a5,a5,a4
    80003994:	02f4e7bb          	remw	a5,s1,a5
    80003998:	fa0786e3          	beqz	a5,80003944 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000399c:	05000793          	li	a5,80
    800039a0:	02f4e4bb          	remw	s1,s1,a5
    800039a4:	fa049ce3          	bnez	s1,8000395c <_ZL8consumerPv+0x40>
    800039a8:	fa9ff06f          	j	80003950 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800039ac:	00893503          	ld	a0,8(s2)
    800039b0:	00004097          	auipc	ra,0x4
    800039b4:	8e8080e7          	jalr	-1816(ra) # 80007298 <_ZN6Buffer3getEv>
        putc(key);
    800039b8:	0ff57513          	andi	a0,a0,255
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	c54080e7          	jalr	-940(ra) # 80001610 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800039c4:	00893503          	ld	a0,8(s2)
    800039c8:	00004097          	auipc	ra,0x4
    800039cc:	95c080e7          	jalr	-1700(ra) # 80007324 <_ZN6Buffer6getCntEv>
    800039d0:	fca04ee3          	bgtz	a0,800039ac <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800039d4:	01093503          	ld	a0,16(s2)
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	b94080e7          	jalr	-1132(ra) # 8000156c <_Z10sem_signalP4_sem>
}
    800039e0:	02813083          	ld	ra,40(sp)
    800039e4:	02013403          	ld	s0,32(sp)
    800039e8:	01813483          	ld	s1,24(sp)
    800039ec:	01013903          	ld	s2,16(sp)
    800039f0:	00813983          	ld	s3,8(sp)
    800039f4:	03010113          	addi	sp,sp,48
    800039f8:	00008067          	ret

00000000800039fc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800039fc:	f9010113          	addi	sp,sp,-112
    80003a00:	06113423          	sd	ra,104(sp)
    80003a04:	06813023          	sd	s0,96(sp)
    80003a08:	04913c23          	sd	s1,88(sp)
    80003a0c:	05213823          	sd	s2,80(sp)
    80003a10:	05313423          	sd	s3,72(sp)
    80003a14:	05413023          	sd	s4,64(sp)
    80003a18:	03513c23          	sd	s5,56(sp)
    80003a1c:	03613823          	sd	s6,48(sp)
    80003a20:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003a24:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003a28:	00006517          	auipc	a0,0x6
    80003a2c:	7c850513          	addi	a0,a0,1992 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    80003a30:	00002097          	auipc	ra,0x2
    80003a34:	53c080e7          	jalr	1340(ra) # 80005f6c <_Z11printStringPKc>
    getString(input, 30);
    80003a38:	01e00593          	li	a1,30
    80003a3c:	fa040493          	addi	s1,s0,-96
    80003a40:	00048513          	mv	a0,s1
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	5b0080e7          	jalr	1456(ra) # 80005ff4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003a4c:	00048513          	mv	a0,s1
    80003a50:	00002097          	auipc	ra,0x2
    80003a54:	67c080e7          	jalr	1660(ra) # 800060cc <_Z11stringToIntPKc>
    80003a58:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003a5c:	00006517          	auipc	a0,0x6
    80003a60:	7b450513          	addi	a0,a0,1972 # 8000a210 <CONSOLE_STATUS+0x200>
    80003a64:	00002097          	auipc	ra,0x2
    80003a68:	508080e7          	jalr	1288(ra) # 80005f6c <_Z11printStringPKc>
    getString(input, 30);
    80003a6c:	01e00593          	li	a1,30
    80003a70:	00048513          	mv	a0,s1
    80003a74:	00002097          	auipc	ra,0x2
    80003a78:	580080e7          	jalr	1408(ra) # 80005ff4 <_Z9getStringPci>
    n = stringToInt(input);
    80003a7c:	00048513          	mv	a0,s1
    80003a80:	00002097          	auipc	ra,0x2
    80003a84:	64c080e7          	jalr	1612(ra) # 800060cc <_Z11stringToIntPKc>
    80003a88:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003a8c:	00006517          	auipc	a0,0x6
    80003a90:	7a450513          	addi	a0,a0,1956 # 8000a230 <CONSOLE_STATUS+0x220>
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	4d8080e7          	jalr	1240(ra) # 80005f6c <_Z11printStringPKc>
    80003a9c:	00000613          	li	a2,0
    80003aa0:	00a00593          	li	a1,10
    80003aa4:	00090513          	mv	a0,s2
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	674080e7          	jalr	1652(ra) # 8000611c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003ab0:	00006517          	auipc	a0,0x6
    80003ab4:	79850513          	addi	a0,a0,1944 # 8000a248 <CONSOLE_STATUS+0x238>
    80003ab8:	00002097          	auipc	ra,0x2
    80003abc:	4b4080e7          	jalr	1204(ra) # 80005f6c <_Z11printStringPKc>
    80003ac0:	00000613          	li	a2,0
    80003ac4:	00a00593          	li	a1,10
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	650080e7          	jalr	1616(ra) # 8000611c <_Z8printIntiii>
    printString(".\n");
    80003ad4:	00006517          	auipc	a0,0x6
    80003ad8:	78c50513          	addi	a0,a0,1932 # 8000a260 <CONSOLE_STATUS+0x250>
    80003adc:	00002097          	auipc	ra,0x2
    80003ae0:	490080e7          	jalr	1168(ra) # 80005f6c <_Z11printStringPKc>
    if(threadNum > n) {
    80003ae4:	0324c463          	blt	s1,s2,80003b0c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003ae8:	03205c63          	blez	s2,80003b20 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003aec:	03800513          	li	a0,56
    80003af0:	fffff097          	auipc	ra,0xfffff
    80003af4:	a68080e7          	jalr	-1432(ra) # 80002558 <_Znwm>
    80003af8:	00050a13          	mv	s4,a0
    80003afc:	00048593          	mv	a1,s1
    80003b00:	00003097          	auipc	ra,0x3
    80003b04:	66c080e7          	jalr	1644(ra) # 8000716c <_ZN6BufferC1Ei>
    80003b08:	0300006f          	j	80003b38 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b0c:	00006517          	auipc	a0,0x6
    80003b10:	75c50513          	addi	a0,a0,1884 # 8000a268 <CONSOLE_STATUS+0x258>
    80003b14:	00002097          	auipc	ra,0x2
    80003b18:	458080e7          	jalr	1112(ra) # 80005f6c <_Z11printStringPKc>
        return;
    80003b1c:	0140006f          	j	80003b30 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003b20:	00006517          	auipc	a0,0x6
    80003b24:	78850513          	addi	a0,a0,1928 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80003b28:	00002097          	auipc	ra,0x2
    80003b2c:	444080e7          	jalr	1092(ra) # 80005f6c <_Z11printStringPKc>
        return;
    80003b30:	000b0113          	mv	sp,s6
    80003b34:	1500006f          	j	80003c84 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003b38:	00000593          	li	a1,0
    80003b3c:	00009517          	auipc	a0,0x9
    80003b40:	58c50513          	addi	a0,a0,1420 # 8000d0c8 <_ZL10waitForAll>
    80003b44:	ffffe097          	auipc	ra,0xffffe
    80003b48:	97c080e7          	jalr	-1668(ra) # 800014c0 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003b4c:	00391793          	slli	a5,s2,0x3
    80003b50:	00f78793          	addi	a5,a5,15
    80003b54:	ff07f793          	andi	a5,a5,-16
    80003b58:	40f10133          	sub	sp,sp,a5
    80003b5c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003b60:	0019071b          	addiw	a4,s2,1
    80003b64:	00171793          	slli	a5,a4,0x1
    80003b68:	00e787b3          	add	a5,a5,a4
    80003b6c:	00379793          	slli	a5,a5,0x3
    80003b70:	00f78793          	addi	a5,a5,15
    80003b74:	ff07f793          	andi	a5,a5,-16
    80003b78:	40f10133          	sub	sp,sp,a5
    80003b7c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003b80:	00191613          	slli	a2,s2,0x1
    80003b84:	012607b3          	add	a5,a2,s2
    80003b88:	00379793          	slli	a5,a5,0x3
    80003b8c:	00f987b3          	add	a5,s3,a5
    80003b90:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003b94:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003b98:	00009717          	auipc	a4,0x9
    80003b9c:	53073703          	ld	a4,1328(a4) # 8000d0c8 <_ZL10waitForAll>
    80003ba0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003ba4:	00078613          	mv	a2,a5
    80003ba8:	00000597          	auipc	a1,0x0
    80003bac:	d7458593          	addi	a1,a1,-652 # 8000391c <_ZL8consumerPv>
    80003bb0:	f9840513          	addi	a0,s0,-104
    80003bb4:	ffffd097          	auipc	ra,0xffffd
    80003bb8:	774080e7          	jalr	1908(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003bbc:	00000493          	li	s1,0
    80003bc0:	0280006f          	j	80003be8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003bc4:	00000597          	auipc	a1,0x0
    80003bc8:	c1458593          	addi	a1,a1,-1004 # 800037d8 <_ZL16producerKeyboardPv>
                      data + i);
    80003bcc:	00179613          	slli	a2,a5,0x1
    80003bd0:	00f60633          	add	a2,a2,a5
    80003bd4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003bd8:	00c98633          	add	a2,s3,a2
    80003bdc:	ffffd097          	auipc	ra,0xffffd
    80003be0:	74c080e7          	jalr	1868(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003be4:	0014849b          	addiw	s1,s1,1
    80003be8:	0524d263          	bge	s1,s2,80003c2c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003bec:	00149793          	slli	a5,s1,0x1
    80003bf0:	009787b3          	add	a5,a5,s1
    80003bf4:	00379793          	slli	a5,a5,0x3
    80003bf8:	00f987b3          	add	a5,s3,a5
    80003bfc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003c00:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003c04:	00009717          	auipc	a4,0x9
    80003c08:	4c473703          	ld	a4,1220(a4) # 8000d0c8 <_ZL10waitForAll>
    80003c0c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003c10:	00048793          	mv	a5,s1
    80003c14:	00349513          	slli	a0,s1,0x3
    80003c18:	00aa8533          	add	a0,s5,a0
    80003c1c:	fa9054e3          	blez	s1,80003bc4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003c20:	00000597          	auipc	a1,0x0
    80003c24:	c6858593          	addi	a1,a1,-920 # 80003888 <_ZL8producerPv>
    80003c28:	fa5ff06f          	j	80003bcc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003c2c:	ffffd097          	auipc	ra,0xffffd
    80003c30:	7b8080e7          	jalr	1976(ra) # 800013e4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003c34:	00000493          	li	s1,0
    80003c38:	00994e63          	blt	s2,s1,80003c54 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003c3c:	00009517          	auipc	a0,0x9
    80003c40:	48c53503          	ld	a0,1164(a0) # 8000d0c8 <_ZL10waitForAll>
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	8f0080e7          	jalr	-1808(ra) # 80001534 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003c4c:	0014849b          	addiw	s1,s1,1
    80003c50:	fe9ff06f          	j	80003c38 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003c54:	00009517          	auipc	a0,0x9
    80003c58:	47453503          	ld	a0,1140(a0) # 8000d0c8 <_ZL10waitForAll>
    80003c5c:	ffffe097          	auipc	ra,0xffffe
    80003c60:	8a0080e7          	jalr	-1888(ra) # 800014fc <_Z9sem_closeP4_sem>
    delete buffer;
    80003c64:	000a0e63          	beqz	s4,80003c80 <_Z22producerConsumer_C_APIv+0x284>
    80003c68:	000a0513          	mv	a0,s4
    80003c6c:	00003097          	auipc	ra,0x3
    80003c70:	740080e7          	jalr	1856(ra) # 800073ac <_ZN6BufferD1Ev>
    80003c74:	000a0513          	mv	a0,s4
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	930080e7          	jalr	-1744(ra) # 800025a8 <_ZdlPv>
    80003c80:	000b0113          	mv	sp,s6

}
    80003c84:	f9040113          	addi	sp,s0,-112
    80003c88:	06813083          	ld	ra,104(sp)
    80003c8c:	06013403          	ld	s0,96(sp)
    80003c90:	05813483          	ld	s1,88(sp)
    80003c94:	05013903          	ld	s2,80(sp)
    80003c98:	04813983          	ld	s3,72(sp)
    80003c9c:	04013a03          	ld	s4,64(sp)
    80003ca0:	03813a83          	ld	s5,56(sp)
    80003ca4:	03013b03          	ld	s6,48(sp)
    80003ca8:	07010113          	addi	sp,sp,112
    80003cac:	00008067          	ret
    80003cb0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003cb4:	000a0513          	mv	a0,s4
    80003cb8:	fffff097          	auipc	ra,0xfffff
    80003cbc:	8f0080e7          	jalr	-1808(ra) # 800025a8 <_ZdlPv>
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	0000a097          	auipc	ra,0xa
    80003cc8:	514080e7          	jalr	1300(ra) # 8000e1d8 <_Unwind_Resume>

0000000080003ccc <_Z15modif_MatrixMaxv>:
        matrix->max = matrix->max > max ? matrix->max : max;
        sem->signal();
    }
};

void modif_MatrixMax(){
    80003ccc:	f7010113          	addi	sp,sp,-144
    80003cd0:	08113423          	sd	ra,136(sp)
    80003cd4:	08813023          	sd	s0,128(sp)
    80003cd8:	06913c23          	sd	s1,120(sp)
    80003cdc:	07213823          	sd	s2,112(sp)
    80003ce0:	07313423          	sd	s3,104(sp)
    80003ce4:	07413023          	sd	s4,96(sp)
    80003ce8:	05513c23          	sd	s5,88(sp)
    80003cec:	09010413          	addi	s0,sp,144

    Semaphore* waitForAll = new Semaphore(0);
    80003cf0:	01000513          	li	a0,16
    80003cf4:	fffff097          	auipc	ra,0xfffff
    80003cf8:	864080e7          	jalr	-1948(ra) # 80002558 <_Znwm>
    80003cfc:	00050a13          	mv	s4,a0
    80003d00:	00000593          	li	a1,0
    80003d04:	fffff097          	auipc	ra,0xfffff
    80003d08:	b08080e7          	jalr	-1272(ra) # 8000280c <_ZN9SemaphoreC1Ej>

    Thread* threads[10];

    matrixField* base = new matrixField;
    80003d0c:	01000513          	li	a0,16
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	848080e7          	jalr	-1976(ra) # 80002558 <_Znwm>
    80003d18:	00050913          	mv	s2,a0
    base->max=0;
    80003d1c:	00052423          	sw	zero,8(a0)
    base->matrix = new int*[10];
    80003d20:	05000513          	li	a0,80
    80003d24:	fffff097          	auipc	ra,0xfffff
    80003d28:	85c080e7          	jalr	-1956(ra) # 80002580 <_Znam>
    80003d2c:	00a93023          	sd	a0,0(s2)
    for(int i =0 ; i < 10 ; i++){
    80003d30:	00000493          	li	s1,0
    80003d34:	0080006f          	j	80003d3c <_Z15modif_MatrixMaxv+0x70>
    80003d38:	0014849b          	addiw	s1,s1,1
    80003d3c:	00900793          	li	a5,9
    80003d40:	0497c863          	blt	a5,s1,80003d90 <_Z15modif_MatrixMaxv+0xc4>
        base->matrix[i] = new int[10];
    80003d44:	00093a83          	ld	s5,0(s2)
    80003d48:	00349993          	slli	s3,s1,0x3
    80003d4c:	013a8ab3          	add	s5,s5,s3
    80003d50:	02800513          	li	a0,40
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	82c080e7          	jalr	-2004(ra) # 80002580 <_Znam>
    80003d5c:	00aab023          	sd	a0,0(s5)
        for(int j = 0 ; j < 10 ; j++)
    80003d60:	00000793          	li	a5,0
    80003d64:	00900713          	li	a4,9
    80003d68:	fcf748e3          	blt	a4,a5,80003d38 <_Z15modif_MatrixMaxv+0x6c>
        {
            base->matrix[i][j] = i+j;
    80003d6c:	00093703          	ld	a4,0(s2)
    80003d70:	01370733          	add	a4,a4,s3
    80003d74:	00073703          	ld	a4,0(a4)
    80003d78:	00279693          	slli	a3,a5,0x2
    80003d7c:	00d70733          	add	a4,a4,a3
    80003d80:	00f486bb          	addw	a3,s1,a5
    80003d84:	00d72023          	sw	a3,0(a4)
        for(int j = 0 ; j < 10 ; j++)
    80003d88:	0017879b          	addiw	a5,a5,1
    80003d8c:	fd9ff06f          	j	80003d64 <_Z15modif_MatrixMaxv+0x98>
        }
    }
    base->matrix[3][4] = 11;
    80003d90:	00093783          	ld	a5,0(s2)
    80003d94:	0187b783          	ld	a5,24(a5)
    80003d98:	00b00713          	li	a4,11
    80003d9c:	00e7a823          	sw	a4,16(a5)

    for(int i =0; i < 10 ;i++){
    80003da0:	00000993          	li	s3,0
    80003da4:	0300006f          	j	80003dd4 <_Z15modif_MatrixMaxv+0x108>
    rowAdder(matrixField* matrix,Semaphore* sem, int row) : Thread(), matrix(matrix), sem(sem), rowVal(row) {};
    80003da8:	00009797          	auipc	a5,0x9
    80003dac:	f1078793          	addi	a5,a5,-240 # 8000ccb8 <_ZTV8rowAdder+0x10>
    80003db0:	00f4b023          	sd	a5,0(s1)
    80003db4:	0324b023          	sd	s2,32(s1)
    80003db8:	0344b423          	sd	s4,40(s1)
    80003dbc:	0334a823          	sw	s3,48(s1)
        threads[i] = new rowAdder(base,waitForAll,i);
    80003dc0:	00399793          	slli	a5,s3,0x3
    80003dc4:	fc040713          	addi	a4,s0,-64
    80003dc8:	00f707b3          	add	a5,a4,a5
    80003dcc:	fa97b823          	sd	s1,-80(a5)
    for(int i =0; i < 10 ;i++){
    80003dd0:	0019899b          	addiw	s3,s3,1
    80003dd4:	00900793          	li	a5,9
    80003dd8:	0337c063          	blt	a5,s3,80003df8 <_Z15modif_MatrixMaxv+0x12c>
        threads[i] = new rowAdder(base,waitForAll,i);
    80003ddc:	03800513          	li	a0,56
    80003de0:	ffffe097          	auipc	ra,0xffffe
    80003de4:	778080e7          	jalr	1912(ra) # 80002558 <_Znwm>
    80003de8:	00050493          	mv	s1,a0
    rowAdder(matrixField* matrix,Semaphore* sem, int row) : Thread(), matrix(matrix), sem(sem), rowVal(row) {};
    80003dec:	fffff097          	auipc	ra,0xfffff
    80003df0:	8a4080e7          	jalr	-1884(ra) # 80002690 <_ZN6ThreadC1Ev>
    80003df4:	fb5ff06f          	j	80003da8 <_Z15modif_MatrixMaxv+0xdc>
    }
    for(auto &thread : threads) thread->start();
    80003df8:	f7040493          	addi	s1,s0,-144
    80003dfc:	fc040793          	addi	a5,s0,-64
    80003e00:	00f48c63          	beq	s1,a5,80003e18 <_Z15modif_MatrixMaxv+0x14c>
    80003e04:	0004b503          	ld	a0,0(s1)
    80003e08:	fffff097          	auipc	ra,0xfffff
    80003e0c:	8e8080e7          	jalr	-1816(ra) # 800026f0 <_ZN6Thread5startEv>
    80003e10:	00848493          	addi	s1,s1,8
    80003e14:	fe9ff06f          	j	80003dfc <_Z15modif_MatrixMaxv+0x130>

    Thread::dispatch();
    80003e18:	fffff097          	auipc	ra,0xfffff
    80003e1c:	8b0080e7          	jalr	-1872(ra) # 800026c8 <_ZN6Thread8dispatchEv>
    for(int i = 0 ; i < 10; i++){
    80003e20:	00000493          	li	s1,0
    80003e24:	00900793          	li	a5,9
    80003e28:	0097cc63          	blt	a5,s1,80003e40 <_Z15modif_MatrixMaxv+0x174>
        waitForAll->wait();
    80003e2c:	000a0513          	mv	a0,s4
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	a18080e7          	jalr	-1512(ra) # 80002848 <_ZN9Semaphore4waitEv>
    for(int i = 0 ; i < 10; i++){
    80003e38:	0014849b          	addiw	s1,s1,1
    80003e3c:	fe9ff06f          	j	80003e24 <_Z15modif_MatrixMaxv+0x158>
    }
    delete waitForAll;
    80003e40:	000a0a63          	beqz	s4,80003e54 <_Z15modif_MatrixMaxv+0x188>
    80003e44:	000a3783          	ld	a5,0(s4)
    80003e48:	0087b783          	ld	a5,8(a5)
    80003e4c:	000a0513          	mv	a0,s4
    80003e50:	000780e7          	jalr	a5

    printString("Gotovo! Max je: ");
    80003e54:	00006517          	auipc	a0,0x6
    80003e58:	48450513          	addi	a0,a0,1156 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    80003e5c:	00002097          	auipc	ra,0x2
    80003e60:	110080e7          	jalr	272(ra) # 80005f6c <_Z11printStringPKc>
    printInt(base->max);
    80003e64:	00000613          	li	a2,0
    80003e68:	00a00593          	li	a1,10
    80003e6c:	00892503          	lw	a0,8(s2)
    80003e70:	00002097          	auipc	ra,0x2
    80003e74:	2ac080e7          	jalr	684(ra) # 8000611c <_Z8printIntiii>
    printString("\n");
    80003e78:	00007517          	auipc	a0,0x7
    80003e7c:	86850513          	addi	a0,a0,-1944 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80003e80:	00002097          	auipc	ra,0x2
    80003e84:	0ec080e7          	jalr	236(ra) # 80005f6c <_Z11printStringPKc>

    80003e88:	08813083          	ld	ra,136(sp)
    80003e8c:	08013403          	ld	s0,128(sp)
    80003e90:	07813483          	ld	s1,120(sp)
    80003e94:	07013903          	ld	s2,112(sp)
    80003e98:	06813983          	ld	s3,104(sp)
    80003e9c:	06013a03          	ld	s4,96(sp)
    80003ea0:	05813a83          	ld	s5,88(sp)
    80003ea4:	09010113          	addi	sp,sp,144
    80003ea8:	00008067          	ret
    80003eac:	00050493          	mv	s1,a0
    Semaphore* waitForAll = new Semaphore(0);
    80003eb0:	000a0513          	mv	a0,s4
    80003eb4:	ffffe097          	auipc	ra,0xffffe
    80003eb8:	6f4080e7          	jalr	1780(ra) # 800025a8 <_ZdlPv>
    80003ebc:	00048513          	mv	a0,s1
    80003ec0:	0000a097          	auipc	ra,0xa
    80003ec4:	318080e7          	jalr	792(ra) # 8000e1d8 <_Unwind_Resume>
    80003ec8:	00050913          	mv	s2,a0
        threads[i] = new rowAdder(base,waitForAll,i);
    80003ecc:	00048513          	mv	a0,s1
    80003ed0:	ffffe097          	auipc	ra,0xffffe
    80003ed4:	6d8080e7          	jalr	1752(ra) # 800025a8 <_ZdlPv>
    80003ed8:	00090513          	mv	a0,s2
    80003edc:	0000a097          	auipc	ra,0xa
    80003ee0:	2fc080e7          	jalr	764(ra) # 8000e1d8 <_Unwind_Resume>

0000000080003ee4 <_ZN8rowAdder3runEv>:
    void run() override {
    80003ee4:	ff010113          	addi	sp,sp,-16
    80003ee8:	00113423          	sd	ra,8(sp)
    80003eec:	00813023          	sd	s0,0(sp)
    80003ef0:	01010413          	addi	s0,sp,16
        int max=matrix->matrix[rowVal][0];
    80003ef4:	02053583          	ld	a1,32(a0)
    80003ef8:	0005b783          	ld	a5,0(a1)
    80003efc:	03052703          	lw	a4,48(a0)
    80003f00:	00371713          	slli	a4,a4,0x3
    80003f04:	00e787b3          	add	a5,a5,a4
    80003f08:	0007b603          	ld	a2,0(a5)
    80003f0c:	00062683          	lw	a3,0(a2)
        for(int i=1;i<10;i++){
    80003f10:	00100793          	li	a5,1
    80003f14:	0080006f          	j	80003f1c <_ZN8rowAdder3runEv+0x38>
    80003f18:	0017879b          	addiw	a5,a5,1
    80003f1c:	00900713          	li	a4,9
    80003f20:	00f74e63          	blt	a4,a5,80003f3c <_ZN8rowAdder3runEv+0x58>
            max = matrix->matrix[rowVal][i]>max?matrix->matrix[rowVal][i]:max;
    80003f24:	00279713          	slli	a4,a5,0x2
    80003f28:	00e60733          	add	a4,a2,a4
    80003f2c:	00072703          	lw	a4,0(a4)
    80003f30:	fee6d4e3          	bge	a3,a4,80003f18 <_ZN8rowAdder3runEv+0x34>
    80003f34:	00070693          	mv	a3,a4
    80003f38:	fe1ff06f          	j	80003f18 <_ZN8rowAdder3runEv+0x34>
        matrix->max = matrix->max > max ? matrix->max : max;
    80003f3c:	0085a783          	lw	a5,8(a1)
    80003f40:	00f6c463          	blt	a3,a5,80003f48 <_ZN8rowAdder3runEv+0x64>
    80003f44:	00068793          	mv	a5,a3
    80003f48:	00f5a423          	sw	a5,8(a1)
        sem->signal();
    80003f4c:	02853503          	ld	a0,40(a0)
    80003f50:	fffff097          	auipc	ra,0xfffff
    80003f54:	924080e7          	jalr	-1756(ra) # 80002874 <_ZN9Semaphore6signalEv>
    }
    80003f58:	00813083          	ld	ra,8(sp)
    80003f5c:	00013403          	ld	s0,0(sp)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <_ZN8rowAdderD1Ev>:
class rowAdder : public Thread {
    80003f68:	ff010113          	addi	sp,sp,-16
    80003f6c:	00113423          	sd	ra,8(sp)
    80003f70:	00813023          	sd	s0,0(sp)
    80003f74:	01010413          	addi	s0,sp,16
    80003f78:	00009797          	auipc	a5,0x9
    80003f7c:	d4078793          	addi	a5,a5,-704 # 8000ccb8 <_ZTV8rowAdder+0x10>
    80003f80:	00f53023          	sd	a5,0(a0)
    80003f84:	ffffe097          	auipc	ra,0xffffe
    80003f88:	584080e7          	jalr	1412(ra) # 80002508 <_ZN6ThreadD1Ev>
    80003f8c:	00813083          	ld	ra,8(sp)
    80003f90:	00013403          	ld	s0,0(sp)
    80003f94:	01010113          	addi	sp,sp,16
    80003f98:	00008067          	ret

0000000080003f9c <_ZN8rowAdderD0Ev>:
    80003f9c:	fe010113          	addi	sp,sp,-32
    80003fa0:	00113c23          	sd	ra,24(sp)
    80003fa4:	00813823          	sd	s0,16(sp)
    80003fa8:	00913423          	sd	s1,8(sp)
    80003fac:	02010413          	addi	s0,sp,32
    80003fb0:	00050493          	mv	s1,a0
    80003fb4:	00009797          	auipc	a5,0x9
    80003fb8:	d0478793          	addi	a5,a5,-764 # 8000ccb8 <_ZTV8rowAdder+0x10>
    80003fbc:	00f53023          	sd	a5,0(a0)
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	548080e7          	jalr	1352(ra) # 80002508 <_ZN6ThreadD1Ev>
    80003fc8:	00048513          	mv	a0,s1
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	5dc080e7          	jalr	1500(ra) # 800025a8 <_ZdlPv>
    80003fd4:	01813083          	ld	ra,24(sp)
    80003fd8:	01013403          	ld	s0,16(sp)
    80003fdc:	00813483          	ld	s1,8(sp)
    80003fe0:	02010113          	addi	sp,sp,32
    80003fe4:	00008067          	ret

0000000080003fe8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003fe8:	fe010113          	addi	sp,sp,-32
    80003fec:	00113c23          	sd	ra,24(sp)
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00913423          	sd	s1,8(sp)
    80003ff8:	01213023          	sd	s2,0(sp)
    80003ffc:	02010413          	addi	s0,sp,32
    80004000:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004004:	00100793          	li	a5,1
    80004008:	02a7f863          	bgeu	a5,a0,80004038 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000400c:	00a00793          	li	a5,10
    80004010:	02f577b3          	remu	a5,a0,a5
    80004014:	02078e63          	beqz	a5,80004050 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004018:	fff48513          	addi	a0,s1,-1
    8000401c:	00000097          	auipc	ra,0x0
    80004020:	fcc080e7          	jalr	-52(ra) # 80003fe8 <_ZL9fibonaccim>
    80004024:	00050913          	mv	s2,a0
    80004028:	ffe48513          	addi	a0,s1,-2
    8000402c:	00000097          	auipc	ra,0x0
    80004030:	fbc080e7          	jalr	-68(ra) # 80003fe8 <_ZL9fibonaccim>
    80004034:	00a90533          	add	a0,s2,a0
}
    80004038:	01813083          	ld	ra,24(sp)
    8000403c:	01013403          	ld	s0,16(sp)
    80004040:	00813483          	ld	s1,8(sp)
    80004044:	00013903          	ld	s2,0(sp)
    80004048:	02010113          	addi	sp,sp,32
    8000404c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004050:	ffffd097          	auipc	ra,0xffffd
    80004054:	394080e7          	jalr	916(ra) # 800013e4 <_Z15thread_dispatchv>
    80004058:	fc1ff06f          	j	80004018 <_ZL9fibonaccim+0x30>

000000008000405c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000405c:	fe010113          	addi	sp,sp,-32
    80004060:	00113c23          	sd	ra,24(sp)
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00913423          	sd	s1,8(sp)
    8000406c:	01213023          	sd	s2,0(sp)
    80004070:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004074:	00000913          	li	s2,0
    80004078:	0380006f          	j	800040b0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000407c:	ffffd097          	auipc	ra,0xffffd
    80004080:	368080e7          	jalr	872(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004084:	00148493          	addi	s1,s1,1
    80004088:	000027b7          	lui	a5,0x2
    8000408c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004090:	0097ee63          	bltu	a5,s1,800040ac <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004094:	00000713          	li	a4,0
    80004098:	000077b7          	lui	a5,0x7
    8000409c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800040a0:	fce7eee3          	bltu	a5,a4,8000407c <_ZN7WorkerA11workerBodyAEPv+0x20>
    800040a4:	00170713          	addi	a4,a4,1
    800040a8:	ff1ff06f          	j	80004098 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800040ac:	00190913          	addi	s2,s2,1
    800040b0:	00900793          	li	a5,9
    800040b4:	0527e063          	bltu	a5,s2,800040f4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800040b8:	00006517          	auipc	a0,0x6
    800040bc:	23850513          	addi	a0,a0,568 # 8000a2f0 <CONSOLE_STATUS+0x2e0>
    800040c0:	00002097          	auipc	ra,0x2
    800040c4:	eac080e7          	jalr	-340(ra) # 80005f6c <_Z11printStringPKc>
    800040c8:	00000613          	li	a2,0
    800040cc:	00a00593          	li	a1,10
    800040d0:	0009051b          	sext.w	a0,s2
    800040d4:	00002097          	auipc	ra,0x2
    800040d8:	048080e7          	jalr	72(ra) # 8000611c <_Z8printIntiii>
    800040dc:	00006517          	auipc	a0,0x6
    800040e0:	60450513          	addi	a0,a0,1540 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800040e4:	00002097          	auipc	ra,0x2
    800040e8:	e88080e7          	jalr	-376(ra) # 80005f6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800040ec:	00000493          	li	s1,0
    800040f0:	f99ff06f          	j	80004088 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800040f4:	00006517          	auipc	a0,0x6
    800040f8:	20450513          	addi	a0,a0,516 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    800040fc:	00002097          	auipc	ra,0x2
    80004100:	e70080e7          	jalr	-400(ra) # 80005f6c <_Z11printStringPKc>
    finishedA = true;
    80004104:	00100793          	li	a5,1
    80004108:	00009717          	auipc	a4,0x9
    8000410c:	fcf70423          	sb	a5,-56(a4) # 8000d0d0 <_ZL9finishedA>
}
    80004110:	01813083          	ld	ra,24(sp)
    80004114:	01013403          	ld	s0,16(sp)
    80004118:	00813483          	ld	s1,8(sp)
    8000411c:	00013903          	ld	s2,0(sp)
    80004120:	02010113          	addi	sp,sp,32
    80004124:	00008067          	ret

0000000080004128 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004128:	fe010113          	addi	sp,sp,-32
    8000412c:	00113c23          	sd	ra,24(sp)
    80004130:	00813823          	sd	s0,16(sp)
    80004134:	00913423          	sd	s1,8(sp)
    80004138:	01213023          	sd	s2,0(sp)
    8000413c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004140:	00000913          	li	s2,0
    80004144:	0380006f          	j	8000417c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	29c080e7          	jalr	668(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004150:	00148493          	addi	s1,s1,1
    80004154:	000027b7          	lui	a5,0x2
    80004158:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000415c:	0097ee63          	bltu	a5,s1,80004178 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004160:	00000713          	li	a4,0
    80004164:	000077b7          	lui	a5,0x7
    80004168:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000416c:	fce7eee3          	bltu	a5,a4,80004148 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004170:	00170713          	addi	a4,a4,1
    80004174:	ff1ff06f          	j	80004164 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004178:	00190913          	addi	s2,s2,1
    8000417c:	00f00793          	li	a5,15
    80004180:	0527e063          	bltu	a5,s2,800041c0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004184:	00006517          	auipc	a0,0x6
    80004188:	18450513          	addi	a0,a0,388 # 8000a308 <CONSOLE_STATUS+0x2f8>
    8000418c:	00002097          	auipc	ra,0x2
    80004190:	de0080e7          	jalr	-544(ra) # 80005f6c <_Z11printStringPKc>
    80004194:	00000613          	li	a2,0
    80004198:	00a00593          	li	a1,10
    8000419c:	0009051b          	sext.w	a0,s2
    800041a0:	00002097          	auipc	ra,0x2
    800041a4:	f7c080e7          	jalr	-132(ra) # 8000611c <_Z8printIntiii>
    800041a8:	00006517          	auipc	a0,0x6
    800041ac:	53850513          	addi	a0,a0,1336 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800041b0:	00002097          	auipc	ra,0x2
    800041b4:	dbc080e7          	jalr	-580(ra) # 80005f6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800041b8:	00000493          	li	s1,0
    800041bc:	f99ff06f          	j	80004154 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800041c0:	00006517          	auipc	a0,0x6
    800041c4:	15050513          	addi	a0,a0,336 # 8000a310 <CONSOLE_STATUS+0x300>
    800041c8:	00002097          	auipc	ra,0x2
    800041cc:	da4080e7          	jalr	-604(ra) # 80005f6c <_Z11printStringPKc>
    finishedB = true;
    800041d0:	00100793          	li	a5,1
    800041d4:	00009717          	auipc	a4,0x9
    800041d8:	eef70ea3          	sb	a5,-259(a4) # 8000d0d1 <_ZL9finishedB>
    thread_dispatch();
    800041dc:	ffffd097          	auipc	ra,0xffffd
    800041e0:	208080e7          	jalr	520(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800041e4:	01813083          	ld	ra,24(sp)
    800041e8:	01013403          	ld	s0,16(sp)
    800041ec:	00813483          	ld	s1,8(sp)
    800041f0:	00013903          	ld	s2,0(sp)
    800041f4:	02010113          	addi	sp,sp,32
    800041f8:	00008067          	ret

00000000800041fc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800041fc:	fe010113          	addi	sp,sp,-32
    80004200:	00113c23          	sd	ra,24(sp)
    80004204:	00813823          	sd	s0,16(sp)
    80004208:	00913423          	sd	s1,8(sp)
    8000420c:	01213023          	sd	s2,0(sp)
    80004210:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004214:	00000493          	li	s1,0
    80004218:	0400006f          	j	80004258 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000421c:	00006517          	auipc	a0,0x6
    80004220:	10450513          	addi	a0,a0,260 # 8000a320 <CONSOLE_STATUS+0x310>
    80004224:	00002097          	auipc	ra,0x2
    80004228:	d48080e7          	jalr	-696(ra) # 80005f6c <_Z11printStringPKc>
    8000422c:	00000613          	li	a2,0
    80004230:	00a00593          	li	a1,10
    80004234:	00048513          	mv	a0,s1
    80004238:	00002097          	auipc	ra,0x2
    8000423c:	ee4080e7          	jalr	-284(ra) # 8000611c <_Z8printIntiii>
    80004240:	00006517          	auipc	a0,0x6
    80004244:	4a050513          	addi	a0,a0,1184 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80004248:	00002097          	auipc	ra,0x2
    8000424c:	d24080e7          	jalr	-732(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004250:	0014849b          	addiw	s1,s1,1
    80004254:	0ff4f493          	andi	s1,s1,255
    80004258:	00200793          	li	a5,2
    8000425c:	fc97f0e3          	bgeu	a5,s1,8000421c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004260:	00006517          	auipc	a0,0x6
    80004264:	0c850513          	addi	a0,a0,200 # 8000a328 <CONSOLE_STATUS+0x318>
    80004268:	00002097          	auipc	ra,0x2
    8000426c:	d04080e7          	jalr	-764(ra) # 80005f6c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004270:	00700313          	li	t1,7
    thread_dispatch();
    80004274:	ffffd097          	auipc	ra,0xffffd
    80004278:	170080e7          	jalr	368(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000427c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004280:	00006517          	auipc	a0,0x6
    80004284:	0b850513          	addi	a0,a0,184 # 8000a338 <CONSOLE_STATUS+0x328>
    80004288:	00002097          	auipc	ra,0x2
    8000428c:	ce4080e7          	jalr	-796(ra) # 80005f6c <_Z11printStringPKc>
    80004290:	00000613          	li	a2,0
    80004294:	00a00593          	li	a1,10
    80004298:	0009051b          	sext.w	a0,s2
    8000429c:	00002097          	auipc	ra,0x2
    800042a0:	e80080e7          	jalr	-384(ra) # 8000611c <_Z8printIntiii>
    800042a4:	00006517          	auipc	a0,0x6
    800042a8:	43c50513          	addi	a0,a0,1084 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800042ac:	00002097          	auipc	ra,0x2
    800042b0:	cc0080e7          	jalr	-832(ra) # 80005f6c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800042b4:	00c00513          	li	a0,12
    800042b8:	00000097          	auipc	ra,0x0
    800042bc:	d30080e7          	jalr	-720(ra) # 80003fe8 <_ZL9fibonaccim>
    800042c0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800042c4:	00006517          	auipc	a0,0x6
    800042c8:	07c50513          	addi	a0,a0,124 # 8000a340 <CONSOLE_STATUS+0x330>
    800042cc:	00002097          	auipc	ra,0x2
    800042d0:	ca0080e7          	jalr	-864(ra) # 80005f6c <_Z11printStringPKc>
    800042d4:	00000613          	li	a2,0
    800042d8:	00a00593          	li	a1,10
    800042dc:	0009051b          	sext.w	a0,s2
    800042e0:	00002097          	auipc	ra,0x2
    800042e4:	e3c080e7          	jalr	-452(ra) # 8000611c <_Z8printIntiii>
    800042e8:	00006517          	auipc	a0,0x6
    800042ec:	3f850513          	addi	a0,a0,1016 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800042f0:	00002097          	auipc	ra,0x2
    800042f4:	c7c080e7          	jalr	-900(ra) # 80005f6c <_Z11printStringPKc>
    800042f8:	0400006f          	j	80004338 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800042fc:	00006517          	auipc	a0,0x6
    80004300:	02450513          	addi	a0,a0,36 # 8000a320 <CONSOLE_STATUS+0x310>
    80004304:	00002097          	auipc	ra,0x2
    80004308:	c68080e7          	jalr	-920(ra) # 80005f6c <_Z11printStringPKc>
    8000430c:	00000613          	li	a2,0
    80004310:	00a00593          	li	a1,10
    80004314:	00048513          	mv	a0,s1
    80004318:	00002097          	auipc	ra,0x2
    8000431c:	e04080e7          	jalr	-508(ra) # 8000611c <_Z8printIntiii>
    80004320:	00006517          	auipc	a0,0x6
    80004324:	3c050513          	addi	a0,a0,960 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80004328:	00002097          	auipc	ra,0x2
    8000432c:	c44080e7          	jalr	-956(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004330:	0014849b          	addiw	s1,s1,1
    80004334:	0ff4f493          	andi	s1,s1,255
    80004338:	00500793          	li	a5,5
    8000433c:	fc97f0e3          	bgeu	a5,s1,800042fc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004340:	00006517          	auipc	a0,0x6
    80004344:	fb850513          	addi	a0,a0,-72 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004348:	00002097          	auipc	ra,0x2
    8000434c:	c24080e7          	jalr	-988(ra) # 80005f6c <_Z11printStringPKc>
    finishedC = true;
    80004350:	00100793          	li	a5,1
    80004354:	00009717          	auipc	a4,0x9
    80004358:	d6f70f23          	sb	a5,-642(a4) # 8000d0d2 <_ZL9finishedC>
    thread_dispatch();
    8000435c:	ffffd097          	auipc	ra,0xffffd
    80004360:	088080e7          	jalr	136(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80004364:	01813083          	ld	ra,24(sp)
    80004368:	01013403          	ld	s0,16(sp)
    8000436c:	00813483          	ld	s1,8(sp)
    80004370:	00013903          	ld	s2,0(sp)
    80004374:	02010113          	addi	sp,sp,32
    80004378:	00008067          	ret

000000008000437c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    8000437c:	fe010113          	addi	sp,sp,-32
    80004380:	00113c23          	sd	ra,24(sp)
    80004384:	00813823          	sd	s0,16(sp)
    80004388:	00913423          	sd	s1,8(sp)
    8000438c:	01213023          	sd	s2,0(sp)
    80004390:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004394:	00a00493          	li	s1,10
    80004398:	0400006f          	j	800043d8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000439c:	00006517          	auipc	a0,0x6
    800043a0:	fb450513          	addi	a0,a0,-76 # 8000a350 <CONSOLE_STATUS+0x340>
    800043a4:	00002097          	auipc	ra,0x2
    800043a8:	bc8080e7          	jalr	-1080(ra) # 80005f6c <_Z11printStringPKc>
    800043ac:	00000613          	li	a2,0
    800043b0:	00a00593          	li	a1,10
    800043b4:	00048513          	mv	a0,s1
    800043b8:	00002097          	auipc	ra,0x2
    800043bc:	d64080e7          	jalr	-668(ra) # 8000611c <_Z8printIntiii>
    800043c0:	00006517          	auipc	a0,0x6
    800043c4:	32050513          	addi	a0,a0,800 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800043c8:	00002097          	auipc	ra,0x2
    800043cc:	ba4080e7          	jalr	-1116(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800043d0:	0014849b          	addiw	s1,s1,1
    800043d4:	0ff4f493          	andi	s1,s1,255
    800043d8:	00c00793          	li	a5,12
    800043dc:	fc97f0e3          	bgeu	a5,s1,8000439c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800043e0:	00006517          	auipc	a0,0x6
    800043e4:	f7850513          	addi	a0,a0,-136 # 8000a358 <CONSOLE_STATUS+0x348>
    800043e8:	00002097          	auipc	ra,0x2
    800043ec:	b84080e7          	jalr	-1148(ra) # 80005f6c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800043f0:	00500313          	li	t1,5
    thread_dispatch();
    800043f4:	ffffd097          	auipc	ra,0xffffd
    800043f8:	ff0080e7          	jalr	-16(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800043fc:	01000513          	li	a0,16
    80004400:	00000097          	auipc	ra,0x0
    80004404:	be8080e7          	jalr	-1048(ra) # 80003fe8 <_ZL9fibonaccim>
    80004408:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000440c:	00006517          	auipc	a0,0x6
    80004410:	f5c50513          	addi	a0,a0,-164 # 8000a368 <CONSOLE_STATUS+0x358>
    80004414:	00002097          	auipc	ra,0x2
    80004418:	b58080e7          	jalr	-1192(ra) # 80005f6c <_Z11printStringPKc>
    8000441c:	00000613          	li	a2,0
    80004420:	00a00593          	li	a1,10
    80004424:	0009051b          	sext.w	a0,s2
    80004428:	00002097          	auipc	ra,0x2
    8000442c:	cf4080e7          	jalr	-780(ra) # 8000611c <_Z8printIntiii>
    80004430:	00006517          	auipc	a0,0x6
    80004434:	2b050513          	addi	a0,a0,688 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80004438:	00002097          	auipc	ra,0x2
    8000443c:	b34080e7          	jalr	-1228(ra) # 80005f6c <_Z11printStringPKc>
    80004440:	0400006f          	j	80004480 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004444:	00006517          	auipc	a0,0x6
    80004448:	f0c50513          	addi	a0,a0,-244 # 8000a350 <CONSOLE_STATUS+0x340>
    8000444c:	00002097          	auipc	ra,0x2
    80004450:	b20080e7          	jalr	-1248(ra) # 80005f6c <_Z11printStringPKc>
    80004454:	00000613          	li	a2,0
    80004458:	00a00593          	li	a1,10
    8000445c:	00048513          	mv	a0,s1
    80004460:	00002097          	auipc	ra,0x2
    80004464:	cbc080e7          	jalr	-836(ra) # 8000611c <_Z8printIntiii>
    80004468:	00006517          	auipc	a0,0x6
    8000446c:	27850513          	addi	a0,a0,632 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80004470:	00002097          	auipc	ra,0x2
    80004474:	afc080e7          	jalr	-1284(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004478:	0014849b          	addiw	s1,s1,1
    8000447c:	0ff4f493          	andi	s1,s1,255
    80004480:	00f00793          	li	a5,15
    80004484:	fc97f0e3          	bgeu	a5,s1,80004444 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004488:	00006517          	auipc	a0,0x6
    8000448c:	ef050513          	addi	a0,a0,-272 # 8000a378 <CONSOLE_STATUS+0x368>
    80004490:	00002097          	auipc	ra,0x2
    80004494:	adc080e7          	jalr	-1316(ra) # 80005f6c <_Z11printStringPKc>
    finishedD = true;
    80004498:	00100793          	li	a5,1
    8000449c:	00009717          	auipc	a4,0x9
    800044a0:	c2f70ba3          	sb	a5,-969(a4) # 8000d0d3 <_ZL9finishedD>
    thread_dispatch();
    800044a4:	ffffd097          	auipc	ra,0xffffd
    800044a8:	f40080e7          	jalr	-192(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800044ac:	01813083          	ld	ra,24(sp)
    800044b0:	01013403          	ld	s0,16(sp)
    800044b4:	00813483          	ld	s1,8(sp)
    800044b8:	00013903          	ld	s2,0(sp)
    800044bc:	02010113          	addi	sp,sp,32
    800044c0:	00008067          	ret

00000000800044c4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800044c4:	fc010113          	addi	sp,sp,-64
    800044c8:	02113c23          	sd	ra,56(sp)
    800044cc:	02813823          	sd	s0,48(sp)
    800044d0:	02913423          	sd	s1,40(sp)
    800044d4:	03213023          	sd	s2,32(sp)
    800044d8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800044dc:	02000513          	li	a0,32
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	078080e7          	jalr	120(ra) # 80002558 <_Znwm>
    800044e8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800044ec:	ffffe097          	auipc	ra,0xffffe
    800044f0:	1a4080e7          	jalr	420(ra) # 80002690 <_ZN6ThreadC1Ev>
    800044f4:	00008797          	auipc	a5,0x8
    800044f8:	7ec78793          	addi	a5,a5,2028 # 8000cce0 <_ZTV7WorkerA+0x10>
    800044fc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004500:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004504:	00006517          	auipc	a0,0x6
    80004508:	e8450513          	addi	a0,a0,-380 # 8000a388 <CONSOLE_STATUS+0x378>
    8000450c:	00002097          	auipc	ra,0x2
    80004510:	a60080e7          	jalr	-1440(ra) # 80005f6c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004514:	02000513          	li	a0,32
    80004518:	ffffe097          	auipc	ra,0xffffe
    8000451c:	040080e7          	jalr	64(ra) # 80002558 <_Znwm>
    80004520:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	16c080e7          	jalr	364(ra) # 80002690 <_ZN6ThreadC1Ev>
    8000452c:	00008797          	auipc	a5,0x8
    80004530:	7dc78793          	addi	a5,a5,2012 # 8000cd08 <_ZTV7WorkerB+0x10>
    80004534:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004538:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000453c:	00006517          	auipc	a0,0x6
    80004540:	e6450513          	addi	a0,a0,-412 # 8000a3a0 <CONSOLE_STATUS+0x390>
    80004544:	00002097          	auipc	ra,0x2
    80004548:	a28080e7          	jalr	-1496(ra) # 80005f6c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000454c:	02000513          	li	a0,32
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	008080e7          	jalr	8(ra) # 80002558 <_Znwm>
    80004558:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	134080e7          	jalr	308(ra) # 80002690 <_ZN6ThreadC1Ev>
    80004564:	00008797          	auipc	a5,0x8
    80004568:	7cc78793          	addi	a5,a5,1996 # 8000cd30 <_ZTV7WorkerC+0x10>
    8000456c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004570:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004574:	00006517          	auipc	a0,0x6
    80004578:	e4450513          	addi	a0,a0,-444 # 8000a3b8 <CONSOLE_STATUS+0x3a8>
    8000457c:	00002097          	auipc	ra,0x2
    80004580:	9f0080e7          	jalr	-1552(ra) # 80005f6c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004584:	02000513          	li	a0,32
    80004588:	ffffe097          	auipc	ra,0xffffe
    8000458c:	fd0080e7          	jalr	-48(ra) # 80002558 <_Znwm>
    80004590:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004594:	ffffe097          	auipc	ra,0xffffe
    80004598:	0fc080e7          	jalr	252(ra) # 80002690 <_ZN6ThreadC1Ev>
    8000459c:	00008797          	auipc	a5,0x8
    800045a0:	7bc78793          	addi	a5,a5,1980 # 8000cd58 <_ZTV7WorkerD+0x10>
    800045a4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800045a8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800045ac:	00006517          	auipc	a0,0x6
    800045b0:	e2450513          	addi	a0,a0,-476 # 8000a3d0 <CONSOLE_STATUS+0x3c0>
    800045b4:	00002097          	auipc	ra,0x2
    800045b8:	9b8080e7          	jalr	-1608(ra) # 80005f6c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800045bc:	00000493          	li	s1,0
    800045c0:	00300793          	li	a5,3
    800045c4:	0297c663          	blt	a5,s1,800045f0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800045c8:	00349793          	slli	a5,s1,0x3
    800045cc:	fe040713          	addi	a4,s0,-32
    800045d0:	00f707b3          	add	a5,a4,a5
    800045d4:	fe07b503          	ld	a0,-32(a5)
    800045d8:	ffffe097          	auipc	ra,0xffffe
    800045dc:	118080e7          	jalr	280(ra) # 800026f0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800045e0:	0014849b          	addiw	s1,s1,1
    800045e4:	fddff06f          	j	800045c0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800045e8:	ffffe097          	auipc	ra,0xffffe
    800045ec:	0e0080e7          	jalr	224(ra) # 800026c8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800045f0:	00009797          	auipc	a5,0x9
    800045f4:	ae07c783          	lbu	a5,-1312(a5) # 8000d0d0 <_ZL9finishedA>
    800045f8:	fe0788e3          	beqz	a5,800045e8 <_Z20Threads_CPP_API_testv+0x124>
    800045fc:	00009797          	auipc	a5,0x9
    80004600:	ad57c783          	lbu	a5,-1323(a5) # 8000d0d1 <_ZL9finishedB>
    80004604:	fe0782e3          	beqz	a5,800045e8 <_Z20Threads_CPP_API_testv+0x124>
    80004608:	00009797          	auipc	a5,0x9
    8000460c:	aca7c783          	lbu	a5,-1334(a5) # 8000d0d2 <_ZL9finishedC>
    80004610:	fc078ce3          	beqz	a5,800045e8 <_Z20Threads_CPP_API_testv+0x124>
    80004614:	00009797          	auipc	a5,0x9
    80004618:	abf7c783          	lbu	a5,-1345(a5) # 8000d0d3 <_ZL9finishedD>
    8000461c:	fc0786e3          	beqz	a5,800045e8 <_Z20Threads_CPP_API_testv+0x124>
    80004620:	fc040493          	addi	s1,s0,-64
    80004624:	0080006f          	j	8000462c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004628:	00848493          	addi	s1,s1,8
    8000462c:	fe040793          	addi	a5,s0,-32
    80004630:	08f48663          	beq	s1,a5,800046bc <_Z20Threads_CPP_API_testv+0x1f8>
    80004634:	0004b503          	ld	a0,0(s1)
    80004638:	fe0508e3          	beqz	a0,80004628 <_Z20Threads_CPP_API_testv+0x164>
    8000463c:	00053783          	ld	a5,0(a0)
    80004640:	0087b783          	ld	a5,8(a5)
    80004644:	000780e7          	jalr	a5
    80004648:	fe1ff06f          	j	80004628 <_Z20Threads_CPP_API_testv+0x164>
    8000464c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004650:	00048513          	mv	a0,s1
    80004654:	ffffe097          	auipc	ra,0xffffe
    80004658:	f54080e7          	jalr	-172(ra) # 800025a8 <_ZdlPv>
    8000465c:	00090513          	mv	a0,s2
    80004660:	0000a097          	auipc	ra,0xa
    80004664:	b78080e7          	jalr	-1160(ra) # 8000e1d8 <_Unwind_Resume>
    80004668:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000466c:	00048513          	mv	a0,s1
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	f38080e7          	jalr	-200(ra) # 800025a8 <_ZdlPv>
    80004678:	00090513          	mv	a0,s2
    8000467c:	0000a097          	auipc	ra,0xa
    80004680:	b5c080e7          	jalr	-1188(ra) # 8000e1d8 <_Unwind_Resume>
    80004684:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004688:	00048513          	mv	a0,s1
    8000468c:	ffffe097          	auipc	ra,0xffffe
    80004690:	f1c080e7          	jalr	-228(ra) # 800025a8 <_ZdlPv>
    80004694:	00090513          	mv	a0,s2
    80004698:	0000a097          	auipc	ra,0xa
    8000469c:	b40080e7          	jalr	-1216(ra) # 8000e1d8 <_Unwind_Resume>
    800046a0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800046a4:	00048513          	mv	a0,s1
    800046a8:	ffffe097          	auipc	ra,0xffffe
    800046ac:	f00080e7          	jalr	-256(ra) # 800025a8 <_ZdlPv>
    800046b0:	00090513          	mv	a0,s2
    800046b4:	0000a097          	auipc	ra,0xa
    800046b8:	b24080e7          	jalr	-1244(ra) # 8000e1d8 <_Unwind_Resume>
}
    800046bc:	03813083          	ld	ra,56(sp)
    800046c0:	03013403          	ld	s0,48(sp)
    800046c4:	02813483          	ld	s1,40(sp)
    800046c8:	02013903          	ld	s2,32(sp)
    800046cc:	04010113          	addi	sp,sp,64
    800046d0:	00008067          	ret

00000000800046d4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800046d4:	ff010113          	addi	sp,sp,-16
    800046d8:	00113423          	sd	ra,8(sp)
    800046dc:	00813023          	sd	s0,0(sp)
    800046e0:	01010413          	addi	s0,sp,16
    800046e4:	00008797          	auipc	a5,0x8
    800046e8:	5fc78793          	addi	a5,a5,1532 # 8000cce0 <_ZTV7WorkerA+0x10>
    800046ec:	00f53023          	sd	a5,0(a0)
    800046f0:	ffffe097          	auipc	ra,0xffffe
    800046f4:	e18080e7          	jalr	-488(ra) # 80002508 <_ZN6ThreadD1Ev>
    800046f8:	00813083          	ld	ra,8(sp)
    800046fc:	00013403          	ld	s0,0(sp)
    80004700:	01010113          	addi	sp,sp,16
    80004704:	00008067          	ret

0000000080004708 <_ZN7WorkerAD0Ev>:
    80004708:	fe010113          	addi	sp,sp,-32
    8000470c:	00113c23          	sd	ra,24(sp)
    80004710:	00813823          	sd	s0,16(sp)
    80004714:	00913423          	sd	s1,8(sp)
    80004718:	02010413          	addi	s0,sp,32
    8000471c:	00050493          	mv	s1,a0
    80004720:	00008797          	auipc	a5,0x8
    80004724:	5c078793          	addi	a5,a5,1472 # 8000cce0 <_ZTV7WorkerA+0x10>
    80004728:	00f53023          	sd	a5,0(a0)
    8000472c:	ffffe097          	auipc	ra,0xffffe
    80004730:	ddc080e7          	jalr	-548(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004734:	00048513          	mv	a0,s1
    80004738:	ffffe097          	auipc	ra,0xffffe
    8000473c:	e70080e7          	jalr	-400(ra) # 800025a8 <_ZdlPv>
    80004740:	01813083          	ld	ra,24(sp)
    80004744:	01013403          	ld	s0,16(sp)
    80004748:	00813483          	ld	s1,8(sp)
    8000474c:	02010113          	addi	sp,sp,32
    80004750:	00008067          	ret

0000000080004754 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004754:	ff010113          	addi	sp,sp,-16
    80004758:	00113423          	sd	ra,8(sp)
    8000475c:	00813023          	sd	s0,0(sp)
    80004760:	01010413          	addi	s0,sp,16
    80004764:	00008797          	auipc	a5,0x8
    80004768:	5a478793          	addi	a5,a5,1444 # 8000cd08 <_ZTV7WorkerB+0x10>
    8000476c:	00f53023          	sd	a5,0(a0)
    80004770:	ffffe097          	auipc	ra,0xffffe
    80004774:	d98080e7          	jalr	-616(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004778:	00813083          	ld	ra,8(sp)
    8000477c:	00013403          	ld	s0,0(sp)
    80004780:	01010113          	addi	sp,sp,16
    80004784:	00008067          	ret

0000000080004788 <_ZN7WorkerBD0Ev>:
    80004788:	fe010113          	addi	sp,sp,-32
    8000478c:	00113c23          	sd	ra,24(sp)
    80004790:	00813823          	sd	s0,16(sp)
    80004794:	00913423          	sd	s1,8(sp)
    80004798:	02010413          	addi	s0,sp,32
    8000479c:	00050493          	mv	s1,a0
    800047a0:	00008797          	auipc	a5,0x8
    800047a4:	56878793          	addi	a5,a5,1384 # 8000cd08 <_ZTV7WorkerB+0x10>
    800047a8:	00f53023          	sd	a5,0(a0)
    800047ac:	ffffe097          	auipc	ra,0xffffe
    800047b0:	d5c080e7          	jalr	-676(ra) # 80002508 <_ZN6ThreadD1Ev>
    800047b4:	00048513          	mv	a0,s1
    800047b8:	ffffe097          	auipc	ra,0xffffe
    800047bc:	df0080e7          	jalr	-528(ra) # 800025a8 <_ZdlPv>
    800047c0:	01813083          	ld	ra,24(sp)
    800047c4:	01013403          	ld	s0,16(sp)
    800047c8:	00813483          	ld	s1,8(sp)
    800047cc:	02010113          	addi	sp,sp,32
    800047d0:	00008067          	ret

00000000800047d4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800047d4:	ff010113          	addi	sp,sp,-16
    800047d8:	00113423          	sd	ra,8(sp)
    800047dc:	00813023          	sd	s0,0(sp)
    800047e0:	01010413          	addi	s0,sp,16
    800047e4:	00008797          	auipc	a5,0x8
    800047e8:	54c78793          	addi	a5,a5,1356 # 8000cd30 <_ZTV7WorkerC+0x10>
    800047ec:	00f53023          	sd	a5,0(a0)
    800047f0:	ffffe097          	auipc	ra,0xffffe
    800047f4:	d18080e7          	jalr	-744(ra) # 80002508 <_ZN6ThreadD1Ev>
    800047f8:	00813083          	ld	ra,8(sp)
    800047fc:	00013403          	ld	s0,0(sp)
    80004800:	01010113          	addi	sp,sp,16
    80004804:	00008067          	ret

0000000080004808 <_ZN7WorkerCD0Ev>:
    80004808:	fe010113          	addi	sp,sp,-32
    8000480c:	00113c23          	sd	ra,24(sp)
    80004810:	00813823          	sd	s0,16(sp)
    80004814:	00913423          	sd	s1,8(sp)
    80004818:	02010413          	addi	s0,sp,32
    8000481c:	00050493          	mv	s1,a0
    80004820:	00008797          	auipc	a5,0x8
    80004824:	51078793          	addi	a5,a5,1296 # 8000cd30 <_ZTV7WorkerC+0x10>
    80004828:	00f53023          	sd	a5,0(a0)
    8000482c:	ffffe097          	auipc	ra,0xffffe
    80004830:	cdc080e7          	jalr	-804(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004834:	00048513          	mv	a0,s1
    80004838:	ffffe097          	auipc	ra,0xffffe
    8000483c:	d70080e7          	jalr	-656(ra) # 800025a8 <_ZdlPv>
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	00813483          	ld	s1,8(sp)
    8000484c:	02010113          	addi	sp,sp,32
    80004850:	00008067          	ret

0000000080004854 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004854:	ff010113          	addi	sp,sp,-16
    80004858:	00113423          	sd	ra,8(sp)
    8000485c:	00813023          	sd	s0,0(sp)
    80004860:	01010413          	addi	s0,sp,16
    80004864:	00008797          	auipc	a5,0x8
    80004868:	4f478793          	addi	a5,a5,1268 # 8000cd58 <_ZTV7WorkerD+0x10>
    8000486c:	00f53023          	sd	a5,0(a0)
    80004870:	ffffe097          	auipc	ra,0xffffe
    80004874:	c98080e7          	jalr	-872(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004878:	00813083          	ld	ra,8(sp)
    8000487c:	00013403          	ld	s0,0(sp)
    80004880:	01010113          	addi	sp,sp,16
    80004884:	00008067          	ret

0000000080004888 <_ZN7WorkerDD0Ev>:
    80004888:	fe010113          	addi	sp,sp,-32
    8000488c:	00113c23          	sd	ra,24(sp)
    80004890:	00813823          	sd	s0,16(sp)
    80004894:	00913423          	sd	s1,8(sp)
    80004898:	02010413          	addi	s0,sp,32
    8000489c:	00050493          	mv	s1,a0
    800048a0:	00008797          	auipc	a5,0x8
    800048a4:	4b878793          	addi	a5,a5,1208 # 8000cd58 <_ZTV7WorkerD+0x10>
    800048a8:	00f53023          	sd	a5,0(a0)
    800048ac:	ffffe097          	auipc	ra,0xffffe
    800048b0:	c5c080e7          	jalr	-932(ra) # 80002508 <_ZN6ThreadD1Ev>
    800048b4:	00048513          	mv	a0,s1
    800048b8:	ffffe097          	auipc	ra,0xffffe
    800048bc:	cf0080e7          	jalr	-784(ra) # 800025a8 <_ZdlPv>
    800048c0:	01813083          	ld	ra,24(sp)
    800048c4:	01013403          	ld	s0,16(sp)
    800048c8:	00813483          	ld	s1,8(sp)
    800048cc:	02010113          	addi	sp,sp,32
    800048d0:	00008067          	ret

00000000800048d4 <_ZN7WorkerA3runEv>:
    void run() override {
    800048d4:	ff010113          	addi	sp,sp,-16
    800048d8:	00113423          	sd	ra,8(sp)
    800048dc:	00813023          	sd	s0,0(sp)
    800048e0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800048e4:	00000593          	li	a1,0
    800048e8:	fffff097          	auipc	ra,0xfffff
    800048ec:	774080e7          	jalr	1908(ra) # 8000405c <_ZN7WorkerA11workerBodyAEPv>
    }
    800048f0:	00813083          	ld	ra,8(sp)
    800048f4:	00013403          	ld	s0,0(sp)
    800048f8:	01010113          	addi	sp,sp,16
    800048fc:	00008067          	ret

0000000080004900 <_ZN7WorkerB3runEv>:
    void run() override {
    80004900:	ff010113          	addi	sp,sp,-16
    80004904:	00113423          	sd	ra,8(sp)
    80004908:	00813023          	sd	s0,0(sp)
    8000490c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004910:	00000593          	li	a1,0
    80004914:	00000097          	auipc	ra,0x0
    80004918:	814080e7          	jalr	-2028(ra) # 80004128 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000491c:	00813083          	ld	ra,8(sp)
    80004920:	00013403          	ld	s0,0(sp)
    80004924:	01010113          	addi	sp,sp,16
    80004928:	00008067          	ret

000000008000492c <_ZN7WorkerC3runEv>:
    void run() override {
    8000492c:	ff010113          	addi	sp,sp,-16
    80004930:	00113423          	sd	ra,8(sp)
    80004934:	00813023          	sd	s0,0(sp)
    80004938:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000493c:	00000593          	li	a1,0
    80004940:	00000097          	auipc	ra,0x0
    80004944:	8bc080e7          	jalr	-1860(ra) # 800041fc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004948:	00813083          	ld	ra,8(sp)
    8000494c:	00013403          	ld	s0,0(sp)
    80004950:	01010113          	addi	sp,sp,16
    80004954:	00008067          	ret

0000000080004958 <_ZN7WorkerD3runEv>:
    void run() override {
    80004958:	ff010113          	addi	sp,sp,-16
    8000495c:	00113423          	sd	ra,8(sp)
    80004960:	00813023          	sd	s0,0(sp)
    80004964:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004968:	00000593          	li	a1,0
    8000496c:	00000097          	auipc	ra,0x0
    80004970:	a10080e7          	jalr	-1520(ra) # 8000437c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004974:	00813083          	ld	ra,8(sp)
    80004978:	00013403          	ld	s0,0(sp)
    8000497c:	01010113          	addi	sp,sp,16
    80004980:	00008067          	ret

0000000080004984 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004984:	f8010113          	addi	sp,sp,-128
    80004988:	06113c23          	sd	ra,120(sp)
    8000498c:	06813823          	sd	s0,112(sp)
    80004990:	06913423          	sd	s1,104(sp)
    80004994:	07213023          	sd	s2,96(sp)
    80004998:	05313c23          	sd	s3,88(sp)
    8000499c:	05413823          	sd	s4,80(sp)
    800049a0:	05513423          	sd	s5,72(sp)
    800049a4:	05613023          	sd	s6,64(sp)
    800049a8:	03713c23          	sd	s7,56(sp)
    800049ac:	03813823          	sd	s8,48(sp)
    800049b0:	03913423          	sd	s9,40(sp)
    800049b4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800049b8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800049bc:	00006517          	auipc	a0,0x6
    800049c0:	83450513          	addi	a0,a0,-1996 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    800049c4:	00001097          	auipc	ra,0x1
    800049c8:	5a8080e7          	jalr	1448(ra) # 80005f6c <_Z11printStringPKc>
    getString(input, 30);
    800049cc:	01e00593          	li	a1,30
    800049d0:	f8040493          	addi	s1,s0,-128
    800049d4:	00048513          	mv	a0,s1
    800049d8:	00001097          	auipc	ra,0x1
    800049dc:	61c080e7          	jalr	1564(ra) # 80005ff4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800049e0:	00048513          	mv	a0,s1
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	6e8080e7          	jalr	1768(ra) # 800060cc <_Z11stringToIntPKc>
    800049ec:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800049f0:	00006517          	auipc	a0,0x6
    800049f4:	82050513          	addi	a0,a0,-2016 # 8000a210 <CONSOLE_STATUS+0x200>
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	574080e7          	jalr	1396(ra) # 80005f6c <_Z11printStringPKc>
    getString(input, 30);
    80004a00:	01e00593          	li	a1,30
    80004a04:	00048513          	mv	a0,s1
    80004a08:	00001097          	auipc	ra,0x1
    80004a0c:	5ec080e7          	jalr	1516(ra) # 80005ff4 <_Z9getStringPci>
    n = stringToInt(input);
    80004a10:	00048513          	mv	a0,s1
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	6b8080e7          	jalr	1720(ra) # 800060cc <_Z11stringToIntPKc>
    80004a1c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004a20:	00006517          	auipc	a0,0x6
    80004a24:	81050513          	addi	a0,a0,-2032 # 8000a230 <CONSOLE_STATUS+0x220>
    80004a28:	00001097          	auipc	ra,0x1
    80004a2c:	544080e7          	jalr	1348(ra) # 80005f6c <_Z11printStringPKc>
    printInt(threadNum);
    80004a30:	00000613          	li	a2,0
    80004a34:	00a00593          	li	a1,10
    80004a38:	00098513          	mv	a0,s3
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	6e0080e7          	jalr	1760(ra) # 8000611c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004a44:	00006517          	auipc	a0,0x6
    80004a48:	80450513          	addi	a0,a0,-2044 # 8000a248 <CONSOLE_STATUS+0x238>
    80004a4c:	00001097          	auipc	ra,0x1
    80004a50:	520080e7          	jalr	1312(ra) # 80005f6c <_Z11printStringPKc>
    printInt(n);
    80004a54:	00000613          	li	a2,0
    80004a58:	00a00593          	li	a1,10
    80004a5c:	00048513          	mv	a0,s1
    80004a60:	00001097          	auipc	ra,0x1
    80004a64:	6bc080e7          	jalr	1724(ra) # 8000611c <_Z8printIntiii>
    printString(".\n");
    80004a68:	00005517          	auipc	a0,0x5
    80004a6c:	7f850513          	addi	a0,a0,2040 # 8000a260 <CONSOLE_STATUS+0x250>
    80004a70:	00001097          	auipc	ra,0x1
    80004a74:	4fc080e7          	jalr	1276(ra) # 80005f6c <_Z11printStringPKc>
    if (threadNum > n) {
    80004a78:	0334c463          	blt	s1,s3,80004aa0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004a7c:	03305c63          	blez	s3,80004ab4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004a80:	03800513          	li	a0,56
    80004a84:	ffffe097          	auipc	ra,0xffffe
    80004a88:	ad4080e7          	jalr	-1324(ra) # 80002558 <_Znwm>
    80004a8c:	00050a93          	mv	s5,a0
    80004a90:	00048593          	mv	a1,s1
    80004a94:	00001097          	auipc	ra,0x1
    80004a98:	7a8080e7          	jalr	1960(ra) # 8000623c <_ZN9BufferCPPC1Ei>
    80004a9c:	0300006f          	j	80004acc <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004aa0:	00005517          	auipc	a0,0x5
    80004aa4:	7c850513          	addi	a0,a0,1992 # 8000a268 <CONSOLE_STATUS+0x258>
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	4c4080e7          	jalr	1220(ra) # 80005f6c <_Z11printStringPKc>
        return;
    80004ab0:	0140006f          	j	80004ac4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004ab4:	00005517          	auipc	a0,0x5
    80004ab8:	7f450513          	addi	a0,a0,2036 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80004abc:	00001097          	auipc	ra,0x1
    80004ac0:	4b0080e7          	jalr	1200(ra) # 80005f6c <_Z11printStringPKc>
        return;
    80004ac4:	000c0113          	mv	sp,s8
    80004ac8:	2140006f          	j	80004cdc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004acc:	01000513          	li	a0,16
    80004ad0:	ffffe097          	auipc	ra,0xffffe
    80004ad4:	a88080e7          	jalr	-1400(ra) # 80002558 <_Znwm>
    80004ad8:	00050913          	mv	s2,a0
    80004adc:	00000593          	li	a1,0
    80004ae0:	ffffe097          	auipc	ra,0xffffe
    80004ae4:	d2c080e7          	jalr	-724(ra) # 8000280c <_ZN9SemaphoreC1Ej>
    80004ae8:	00008797          	auipc	a5,0x8
    80004aec:	5f27bc23          	sd	s2,1528(a5) # 8000d0e0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004af0:	00399793          	slli	a5,s3,0x3
    80004af4:	00f78793          	addi	a5,a5,15
    80004af8:	ff07f793          	andi	a5,a5,-16
    80004afc:	40f10133          	sub	sp,sp,a5
    80004b00:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004b04:	0019871b          	addiw	a4,s3,1
    80004b08:	00171793          	slli	a5,a4,0x1
    80004b0c:	00e787b3          	add	a5,a5,a4
    80004b10:	00379793          	slli	a5,a5,0x3
    80004b14:	00f78793          	addi	a5,a5,15
    80004b18:	ff07f793          	andi	a5,a5,-16
    80004b1c:	40f10133          	sub	sp,sp,a5
    80004b20:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004b24:	00199493          	slli	s1,s3,0x1
    80004b28:	013484b3          	add	s1,s1,s3
    80004b2c:	00349493          	slli	s1,s1,0x3
    80004b30:	009b04b3          	add	s1,s6,s1
    80004b34:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004b38:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004b3c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004b40:	02800513          	li	a0,40
    80004b44:	ffffe097          	auipc	ra,0xffffe
    80004b48:	a14080e7          	jalr	-1516(ra) # 80002558 <_Znwm>
    80004b4c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004b50:	ffffe097          	auipc	ra,0xffffe
    80004b54:	b40080e7          	jalr	-1216(ra) # 80002690 <_ZN6ThreadC1Ev>
    80004b58:	00008797          	auipc	a5,0x8
    80004b5c:	27878793          	addi	a5,a5,632 # 8000cdd0 <_ZTV8Consumer+0x10>
    80004b60:	00fbb023          	sd	a5,0(s7)
    80004b64:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004b68:	000b8513          	mv	a0,s7
    80004b6c:	ffffe097          	auipc	ra,0xffffe
    80004b70:	b84080e7          	jalr	-1148(ra) # 800026f0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004b74:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004b78:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004b7c:	00008797          	auipc	a5,0x8
    80004b80:	5647b783          	ld	a5,1380(a5) # 8000d0e0 <_ZL10waitForAll>
    80004b84:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004b88:	02800513          	li	a0,40
    80004b8c:	ffffe097          	auipc	ra,0xffffe
    80004b90:	9cc080e7          	jalr	-1588(ra) # 80002558 <_Znwm>
    80004b94:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004b98:	ffffe097          	auipc	ra,0xffffe
    80004b9c:	af8080e7          	jalr	-1288(ra) # 80002690 <_ZN6ThreadC1Ev>
    80004ba0:	00008797          	auipc	a5,0x8
    80004ba4:	1e078793          	addi	a5,a5,480 # 8000cd80 <_ZTV16ProducerKeyborad+0x10>
    80004ba8:	00f4b023          	sd	a5,0(s1)
    80004bac:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004bb0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004bb4:	00048513          	mv	a0,s1
    80004bb8:	ffffe097          	auipc	ra,0xffffe
    80004bbc:	b38080e7          	jalr	-1224(ra) # 800026f0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004bc0:	00100913          	li	s2,1
    80004bc4:	0300006f          	j	80004bf4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004bc8:	00008797          	auipc	a5,0x8
    80004bcc:	1e078793          	addi	a5,a5,480 # 8000cda8 <_ZTV8Producer+0x10>
    80004bd0:	00fcb023          	sd	a5,0(s9)
    80004bd4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004bd8:	00391793          	slli	a5,s2,0x3
    80004bdc:	00fa07b3          	add	a5,s4,a5
    80004be0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004be4:	000c8513          	mv	a0,s9
    80004be8:	ffffe097          	auipc	ra,0xffffe
    80004bec:	b08080e7          	jalr	-1272(ra) # 800026f0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004bf0:	0019091b          	addiw	s2,s2,1
    80004bf4:	05395263          	bge	s2,s3,80004c38 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004bf8:	00191493          	slli	s1,s2,0x1
    80004bfc:	012484b3          	add	s1,s1,s2
    80004c00:	00349493          	slli	s1,s1,0x3
    80004c04:	009b04b3          	add	s1,s6,s1
    80004c08:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004c0c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004c10:	00008797          	auipc	a5,0x8
    80004c14:	4d07b783          	ld	a5,1232(a5) # 8000d0e0 <_ZL10waitForAll>
    80004c18:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004c1c:	02800513          	li	a0,40
    80004c20:	ffffe097          	auipc	ra,0xffffe
    80004c24:	938080e7          	jalr	-1736(ra) # 80002558 <_Znwm>
    80004c28:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004c2c:	ffffe097          	auipc	ra,0xffffe
    80004c30:	a64080e7          	jalr	-1436(ra) # 80002690 <_ZN6ThreadC1Ev>
    80004c34:	f95ff06f          	j	80004bc8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004c38:	ffffe097          	auipc	ra,0xffffe
    80004c3c:	a90080e7          	jalr	-1392(ra) # 800026c8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004c40:	00000493          	li	s1,0
    80004c44:	0099ce63          	blt	s3,s1,80004c60 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004c48:	00008517          	auipc	a0,0x8
    80004c4c:	49853503          	ld	a0,1176(a0) # 8000d0e0 <_ZL10waitForAll>
    80004c50:	ffffe097          	auipc	ra,0xffffe
    80004c54:	bf8080e7          	jalr	-1032(ra) # 80002848 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004c58:	0014849b          	addiw	s1,s1,1
    80004c5c:	fe9ff06f          	j	80004c44 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004c60:	00008517          	auipc	a0,0x8
    80004c64:	48053503          	ld	a0,1152(a0) # 8000d0e0 <_ZL10waitForAll>
    80004c68:	00050863          	beqz	a0,80004c78 <_Z20testConsumerProducerv+0x2f4>
    80004c6c:	00053783          	ld	a5,0(a0)
    80004c70:	0087b783          	ld	a5,8(a5)
    80004c74:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004c78:	00000493          	li	s1,0
    80004c7c:	0080006f          	j	80004c84 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004c80:	0014849b          	addiw	s1,s1,1
    80004c84:	0334d263          	bge	s1,s3,80004ca8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004c88:	00349793          	slli	a5,s1,0x3
    80004c8c:	00fa07b3          	add	a5,s4,a5
    80004c90:	0007b503          	ld	a0,0(a5)
    80004c94:	fe0506e3          	beqz	a0,80004c80 <_Z20testConsumerProducerv+0x2fc>
    80004c98:	00053783          	ld	a5,0(a0)
    80004c9c:	0087b783          	ld	a5,8(a5)
    80004ca0:	000780e7          	jalr	a5
    80004ca4:	fddff06f          	j	80004c80 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004ca8:	000b8a63          	beqz	s7,80004cbc <_Z20testConsumerProducerv+0x338>
    80004cac:	000bb783          	ld	a5,0(s7)
    80004cb0:	0087b783          	ld	a5,8(a5)
    80004cb4:	000b8513          	mv	a0,s7
    80004cb8:	000780e7          	jalr	a5
    delete buffer;
    80004cbc:	000a8e63          	beqz	s5,80004cd8 <_Z20testConsumerProducerv+0x354>
    80004cc0:	000a8513          	mv	a0,s5
    80004cc4:	00002097          	auipc	ra,0x2
    80004cc8:	870080e7          	jalr	-1936(ra) # 80006534 <_ZN9BufferCPPD1Ev>
    80004ccc:	000a8513          	mv	a0,s5
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	8d8080e7          	jalr	-1832(ra) # 800025a8 <_ZdlPv>
    80004cd8:	000c0113          	mv	sp,s8
}
    80004cdc:	f8040113          	addi	sp,s0,-128
    80004ce0:	07813083          	ld	ra,120(sp)
    80004ce4:	07013403          	ld	s0,112(sp)
    80004ce8:	06813483          	ld	s1,104(sp)
    80004cec:	06013903          	ld	s2,96(sp)
    80004cf0:	05813983          	ld	s3,88(sp)
    80004cf4:	05013a03          	ld	s4,80(sp)
    80004cf8:	04813a83          	ld	s5,72(sp)
    80004cfc:	04013b03          	ld	s6,64(sp)
    80004d00:	03813b83          	ld	s7,56(sp)
    80004d04:	03013c03          	ld	s8,48(sp)
    80004d08:	02813c83          	ld	s9,40(sp)
    80004d0c:	08010113          	addi	sp,sp,128
    80004d10:	00008067          	ret
    80004d14:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004d18:	000a8513          	mv	a0,s5
    80004d1c:	ffffe097          	auipc	ra,0xffffe
    80004d20:	88c080e7          	jalr	-1908(ra) # 800025a8 <_ZdlPv>
    80004d24:	00048513          	mv	a0,s1
    80004d28:	00009097          	auipc	ra,0x9
    80004d2c:	4b0080e7          	jalr	1200(ra) # 8000e1d8 <_Unwind_Resume>
    80004d30:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004d34:	00090513          	mv	a0,s2
    80004d38:	ffffe097          	auipc	ra,0xffffe
    80004d3c:	870080e7          	jalr	-1936(ra) # 800025a8 <_ZdlPv>
    80004d40:	00048513          	mv	a0,s1
    80004d44:	00009097          	auipc	ra,0x9
    80004d48:	494080e7          	jalr	1172(ra) # 8000e1d8 <_Unwind_Resume>
    80004d4c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004d50:	000b8513          	mv	a0,s7
    80004d54:	ffffe097          	auipc	ra,0xffffe
    80004d58:	854080e7          	jalr	-1964(ra) # 800025a8 <_ZdlPv>
    80004d5c:	00048513          	mv	a0,s1
    80004d60:	00009097          	auipc	ra,0x9
    80004d64:	478080e7          	jalr	1144(ra) # 8000e1d8 <_Unwind_Resume>
    80004d68:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004d6c:	00048513          	mv	a0,s1
    80004d70:	ffffe097          	auipc	ra,0xffffe
    80004d74:	838080e7          	jalr	-1992(ra) # 800025a8 <_ZdlPv>
    80004d78:	00090513          	mv	a0,s2
    80004d7c:	00009097          	auipc	ra,0x9
    80004d80:	45c080e7          	jalr	1116(ra) # 8000e1d8 <_Unwind_Resume>
    80004d84:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004d88:	000c8513          	mv	a0,s9
    80004d8c:	ffffe097          	auipc	ra,0xffffe
    80004d90:	81c080e7          	jalr	-2020(ra) # 800025a8 <_ZdlPv>
    80004d94:	00048513          	mv	a0,s1
    80004d98:	00009097          	auipc	ra,0x9
    80004d9c:	440080e7          	jalr	1088(ra) # 8000e1d8 <_Unwind_Resume>

0000000080004da0 <_ZN8Consumer3runEv>:
    void run() override {
    80004da0:	fd010113          	addi	sp,sp,-48
    80004da4:	02113423          	sd	ra,40(sp)
    80004da8:	02813023          	sd	s0,32(sp)
    80004dac:	00913c23          	sd	s1,24(sp)
    80004db0:	01213823          	sd	s2,16(sp)
    80004db4:	01313423          	sd	s3,8(sp)
    80004db8:	03010413          	addi	s0,sp,48
    80004dbc:	00050913          	mv	s2,a0
        int i = 0;
    80004dc0:	00000993          	li	s3,0
    80004dc4:	0100006f          	j	80004dd4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004dc8:	00a00513          	li	a0,10
    80004dcc:	ffffe097          	auipc	ra,0xffffe
    80004dd0:	b68080e7          	jalr	-1176(ra) # 80002934 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004dd4:	00008797          	auipc	a5,0x8
    80004dd8:	3047a783          	lw	a5,772(a5) # 8000d0d8 <_ZL9threadEnd>
    80004ddc:	04079a63          	bnez	a5,80004e30 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004de0:	02093783          	ld	a5,32(s2)
    80004de4:	0087b503          	ld	a0,8(a5)
    80004de8:	00001097          	auipc	ra,0x1
    80004dec:	638080e7          	jalr	1592(ra) # 80006420 <_ZN9BufferCPP3getEv>
            i++;
    80004df0:	0019849b          	addiw	s1,s3,1
    80004df4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004df8:	0ff57513          	andi	a0,a0,255
    80004dfc:	ffffe097          	auipc	ra,0xffffe
    80004e00:	b38080e7          	jalr	-1224(ra) # 80002934 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004e04:	05000793          	li	a5,80
    80004e08:	02f4e4bb          	remw	s1,s1,a5
    80004e0c:	fc0494e3          	bnez	s1,80004dd4 <_ZN8Consumer3runEv+0x34>
    80004e10:	fb9ff06f          	j	80004dc8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004e14:	02093783          	ld	a5,32(s2)
    80004e18:	0087b503          	ld	a0,8(a5)
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	604080e7          	jalr	1540(ra) # 80006420 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004e24:	0ff57513          	andi	a0,a0,255
    80004e28:	ffffe097          	auipc	ra,0xffffe
    80004e2c:	b0c080e7          	jalr	-1268(ra) # 80002934 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004e30:	02093783          	ld	a5,32(s2)
    80004e34:	0087b503          	ld	a0,8(a5)
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	674080e7          	jalr	1652(ra) # 800064ac <_ZN9BufferCPP6getCntEv>
    80004e40:	fca04ae3          	bgtz	a0,80004e14 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004e44:	02093783          	ld	a5,32(s2)
    80004e48:	0107b503          	ld	a0,16(a5)
    80004e4c:	ffffe097          	auipc	ra,0xffffe
    80004e50:	a28080e7          	jalr	-1496(ra) # 80002874 <_ZN9Semaphore6signalEv>
    }
    80004e54:	02813083          	ld	ra,40(sp)
    80004e58:	02013403          	ld	s0,32(sp)
    80004e5c:	01813483          	ld	s1,24(sp)
    80004e60:	01013903          	ld	s2,16(sp)
    80004e64:	00813983          	ld	s3,8(sp)
    80004e68:	03010113          	addi	sp,sp,48
    80004e6c:	00008067          	ret

0000000080004e70 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004e70:	ff010113          	addi	sp,sp,-16
    80004e74:	00113423          	sd	ra,8(sp)
    80004e78:	00813023          	sd	s0,0(sp)
    80004e7c:	01010413          	addi	s0,sp,16
    80004e80:	00008797          	auipc	a5,0x8
    80004e84:	f5078793          	addi	a5,a5,-176 # 8000cdd0 <_ZTV8Consumer+0x10>
    80004e88:	00f53023          	sd	a5,0(a0)
    80004e8c:	ffffd097          	auipc	ra,0xffffd
    80004e90:	67c080e7          	jalr	1660(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004e94:	00813083          	ld	ra,8(sp)
    80004e98:	00013403          	ld	s0,0(sp)
    80004e9c:	01010113          	addi	sp,sp,16
    80004ea0:	00008067          	ret

0000000080004ea4 <_ZN8ConsumerD0Ev>:
    80004ea4:	fe010113          	addi	sp,sp,-32
    80004ea8:	00113c23          	sd	ra,24(sp)
    80004eac:	00813823          	sd	s0,16(sp)
    80004eb0:	00913423          	sd	s1,8(sp)
    80004eb4:	02010413          	addi	s0,sp,32
    80004eb8:	00050493          	mv	s1,a0
    80004ebc:	00008797          	auipc	a5,0x8
    80004ec0:	f1478793          	addi	a5,a5,-236 # 8000cdd0 <_ZTV8Consumer+0x10>
    80004ec4:	00f53023          	sd	a5,0(a0)
    80004ec8:	ffffd097          	auipc	ra,0xffffd
    80004ecc:	640080e7          	jalr	1600(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004ed0:	00048513          	mv	a0,s1
    80004ed4:	ffffd097          	auipc	ra,0xffffd
    80004ed8:	6d4080e7          	jalr	1748(ra) # 800025a8 <_ZdlPv>
    80004edc:	01813083          	ld	ra,24(sp)
    80004ee0:	01013403          	ld	s0,16(sp)
    80004ee4:	00813483          	ld	s1,8(sp)
    80004ee8:	02010113          	addi	sp,sp,32
    80004eec:	00008067          	ret

0000000080004ef0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004ef0:	ff010113          	addi	sp,sp,-16
    80004ef4:	00113423          	sd	ra,8(sp)
    80004ef8:	00813023          	sd	s0,0(sp)
    80004efc:	01010413          	addi	s0,sp,16
    80004f00:	00008797          	auipc	a5,0x8
    80004f04:	e8078793          	addi	a5,a5,-384 # 8000cd80 <_ZTV16ProducerKeyborad+0x10>
    80004f08:	00f53023          	sd	a5,0(a0)
    80004f0c:	ffffd097          	auipc	ra,0xffffd
    80004f10:	5fc080e7          	jalr	1532(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004f14:	00813083          	ld	ra,8(sp)
    80004f18:	00013403          	ld	s0,0(sp)
    80004f1c:	01010113          	addi	sp,sp,16
    80004f20:	00008067          	ret

0000000080004f24 <_ZN16ProducerKeyboradD0Ev>:
    80004f24:	fe010113          	addi	sp,sp,-32
    80004f28:	00113c23          	sd	ra,24(sp)
    80004f2c:	00813823          	sd	s0,16(sp)
    80004f30:	00913423          	sd	s1,8(sp)
    80004f34:	02010413          	addi	s0,sp,32
    80004f38:	00050493          	mv	s1,a0
    80004f3c:	00008797          	auipc	a5,0x8
    80004f40:	e4478793          	addi	a5,a5,-444 # 8000cd80 <_ZTV16ProducerKeyborad+0x10>
    80004f44:	00f53023          	sd	a5,0(a0)
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	5c0080e7          	jalr	1472(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004f50:	00048513          	mv	a0,s1
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	654080e7          	jalr	1620(ra) # 800025a8 <_ZdlPv>
    80004f5c:	01813083          	ld	ra,24(sp)
    80004f60:	01013403          	ld	s0,16(sp)
    80004f64:	00813483          	ld	s1,8(sp)
    80004f68:	02010113          	addi	sp,sp,32
    80004f6c:	00008067          	ret

0000000080004f70 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004f70:	ff010113          	addi	sp,sp,-16
    80004f74:	00113423          	sd	ra,8(sp)
    80004f78:	00813023          	sd	s0,0(sp)
    80004f7c:	01010413          	addi	s0,sp,16
    80004f80:	00008797          	auipc	a5,0x8
    80004f84:	e2878793          	addi	a5,a5,-472 # 8000cda8 <_ZTV8Producer+0x10>
    80004f88:	00f53023          	sd	a5,0(a0)
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	57c080e7          	jalr	1404(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004f94:	00813083          	ld	ra,8(sp)
    80004f98:	00013403          	ld	s0,0(sp)
    80004f9c:	01010113          	addi	sp,sp,16
    80004fa0:	00008067          	ret

0000000080004fa4 <_ZN8ProducerD0Ev>:
    80004fa4:	fe010113          	addi	sp,sp,-32
    80004fa8:	00113c23          	sd	ra,24(sp)
    80004fac:	00813823          	sd	s0,16(sp)
    80004fb0:	00913423          	sd	s1,8(sp)
    80004fb4:	02010413          	addi	s0,sp,32
    80004fb8:	00050493          	mv	s1,a0
    80004fbc:	00008797          	auipc	a5,0x8
    80004fc0:	dec78793          	addi	a5,a5,-532 # 8000cda8 <_ZTV8Producer+0x10>
    80004fc4:	00f53023          	sd	a5,0(a0)
    80004fc8:	ffffd097          	auipc	ra,0xffffd
    80004fcc:	540080e7          	jalr	1344(ra) # 80002508 <_ZN6ThreadD1Ev>
    80004fd0:	00048513          	mv	a0,s1
    80004fd4:	ffffd097          	auipc	ra,0xffffd
    80004fd8:	5d4080e7          	jalr	1492(ra) # 800025a8 <_ZdlPv>
    80004fdc:	01813083          	ld	ra,24(sp)
    80004fe0:	01013403          	ld	s0,16(sp)
    80004fe4:	00813483          	ld	s1,8(sp)
    80004fe8:	02010113          	addi	sp,sp,32
    80004fec:	00008067          	ret

0000000080004ff0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004ff0:	fe010113          	addi	sp,sp,-32
    80004ff4:	00113c23          	sd	ra,24(sp)
    80004ff8:	00813823          	sd	s0,16(sp)
    80004ffc:	00913423          	sd	s1,8(sp)
    80005000:	02010413          	addi	s0,sp,32
    80005004:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80005008:	ffffc097          	auipc	ra,0xffffc
    8000500c:	5d4080e7          	jalr	1492(ra) # 800015dc <_Z4getcv>
    80005010:	0005059b          	sext.w	a1,a0
    80005014:	01b00793          	li	a5,27
    80005018:	00f58c63          	beq	a1,a5,80005030 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000501c:	0204b783          	ld	a5,32(s1)
    80005020:	0087b503          	ld	a0,8(a5)
    80005024:	00001097          	auipc	ra,0x1
    80005028:	36c080e7          	jalr	876(ra) # 80006390 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000502c:	fddff06f          	j	80005008 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80005030:	00100793          	li	a5,1
    80005034:	00008717          	auipc	a4,0x8
    80005038:	0af72223          	sw	a5,164(a4) # 8000d0d8 <_ZL9threadEnd>
        td->buffer->put('!');
    8000503c:	0204b783          	ld	a5,32(s1)
    80005040:	02100593          	li	a1,33
    80005044:	0087b503          	ld	a0,8(a5)
    80005048:	00001097          	auipc	ra,0x1
    8000504c:	348080e7          	jalr	840(ra) # 80006390 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80005050:	0204b783          	ld	a5,32(s1)
    80005054:	0107b503          	ld	a0,16(a5)
    80005058:	ffffe097          	auipc	ra,0xffffe
    8000505c:	81c080e7          	jalr	-2020(ra) # 80002874 <_ZN9Semaphore6signalEv>
    }
    80005060:	01813083          	ld	ra,24(sp)
    80005064:	01013403          	ld	s0,16(sp)
    80005068:	00813483          	ld	s1,8(sp)
    8000506c:	02010113          	addi	sp,sp,32
    80005070:	00008067          	ret

0000000080005074 <_ZN8Producer3runEv>:
    void run() override {
    80005074:	fe010113          	addi	sp,sp,-32
    80005078:	00113c23          	sd	ra,24(sp)
    8000507c:	00813823          	sd	s0,16(sp)
    80005080:	00913423          	sd	s1,8(sp)
    80005084:	01213023          	sd	s2,0(sp)
    80005088:	02010413          	addi	s0,sp,32
    8000508c:	00050493          	mv	s1,a0
        int i = 0;
    80005090:	00000913          	li	s2,0
        while (!threadEnd) {
    80005094:	00008797          	auipc	a5,0x8
    80005098:	0447a783          	lw	a5,68(a5) # 8000d0d8 <_ZL9threadEnd>
    8000509c:	04079263          	bnez	a5,800050e0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800050a0:	0204b783          	ld	a5,32(s1)
    800050a4:	0007a583          	lw	a1,0(a5)
    800050a8:	0305859b          	addiw	a1,a1,48
    800050ac:	0087b503          	ld	a0,8(a5)
    800050b0:	00001097          	auipc	ra,0x1
    800050b4:	2e0080e7          	jalr	736(ra) # 80006390 <_ZN9BufferCPP3putEi>
            i++;
    800050b8:	0019071b          	addiw	a4,s2,1
    800050bc:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800050c0:	0204b783          	ld	a5,32(s1)
    800050c4:	0007a783          	lw	a5,0(a5)
    800050c8:	00e787bb          	addw	a5,a5,a4
    800050cc:	00500513          	li	a0,5
    800050d0:	02a7e53b          	remw	a0,a5,a0
    800050d4:	ffffd097          	auipc	ra,0xffffd
    800050d8:	68c080e7          	jalr	1676(ra) # 80002760 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800050dc:	fb9ff06f          	j	80005094 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800050e0:	0204b783          	ld	a5,32(s1)
    800050e4:	0107b503          	ld	a0,16(a5)
    800050e8:	ffffd097          	auipc	ra,0xffffd
    800050ec:	78c080e7          	jalr	1932(ra) # 80002874 <_ZN9Semaphore6signalEv>
    }
    800050f0:	01813083          	ld	ra,24(sp)
    800050f4:	01013403          	ld	s0,16(sp)
    800050f8:	00813483          	ld	s1,8(sp)
    800050fc:	00013903          	ld	s2,0(sp)
    80005100:	02010113          	addi	sp,sp,32
    80005104:	00008067          	ret

0000000080005108 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005108:	fe010113          	addi	sp,sp,-32
    8000510c:	00113c23          	sd	ra,24(sp)
    80005110:	00813823          	sd	s0,16(sp)
    80005114:	00913423          	sd	s1,8(sp)
    80005118:	01213023          	sd	s2,0(sp)
    8000511c:	02010413          	addi	s0,sp,32
    80005120:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005124:	00100793          	li	a5,1
    80005128:	02a7f863          	bgeu	a5,a0,80005158 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000512c:	00a00793          	li	a5,10
    80005130:	02f577b3          	remu	a5,a0,a5
    80005134:	02078e63          	beqz	a5,80005170 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005138:	fff48513          	addi	a0,s1,-1
    8000513c:	00000097          	auipc	ra,0x0
    80005140:	fcc080e7          	jalr	-52(ra) # 80005108 <_ZL9fibonaccim>
    80005144:	00050913          	mv	s2,a0
    80005148:	ffe48513          	addi	a0,s1,-2
    8000514c:	00000097          	auipc	ra,0x0
    80005150:	fbc080e7          	jalr	-68(ra) # 80005108 <_ZL9fibonaccim>
    80005154:	00a90533          	add	a0,s2,a0
}
    80005158:	01813083          	ld	ra,24(sp)
    8000515c:	01013403          	ld	s0,16(sp)
    80005160:	00813483          	ld	s1,8(sp)
    80005164:	00013903          	ld	s2,0(sp)
    80005168:	02010113          	addi	sp,sp,32
    8000516c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005170:	ffffc097          	auipc	ra,0xffffc
    80005174:	274080e7          	jalr	628(ra) # 800013e4 <_Z15thread_dispatchv>
    80005178:	fc1ff06f          	j	80005138 <_ZL9fibonaccim+0x30>

000000008000517c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000517c:	fe010113          	addi	sp,sp,-32
    80005180:	00113c23          	sd	ra,24(sp)
    80005184:	00813823          	sd	s0,16(sp)
    80005188:	00913423          	sd	s1,8(sp)
    8000518c:	01213023          	sd	s2,0(sp)
    80005190:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005194:	00a00493          	li	s1,10
    80005198:	0400006f          	j	800051d8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000519c:	00005517          	auipc	a0,0x5
    800051a0:	1b450513          	addi	a0,a0,436 # 8000a350 <CONSOLE_STATUS+0x340>
    800051a4:	00001097          	auipc	ra,0x1
    800051a8:	dc8080e7          	jalr	-568(ra) # 80005f6c <_Z11printStringPKc>
    800051ac:	00000613          	li	a2,0
    800051b0:	00a00593          	li	a1,10
    800051b4:	00048513          	mv	a0,s1
    800051b8:	00001097          	auipc	ra,0x1
    800051bc:	f64080e7          	jalr	-156(ra) # 8000611c <_Z8printIntiii>
    800051c0:	00005517          	auipc	a0,0x5
    800051c4:	52050513          	addi	a0,a0,1312 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800051c8:	00001097          	auipc	ra,0x1
    800051cc:	da4080e7          	jalr	-604(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800051d0:	0014849b          	addiw	s1,s1,1
    800051d4:	0ff4f493          	andi	s1,s1,255
    800051d8:	00c00793          	li	a5,12
    800051dc:	fc97f0e3          	bgeu	a5,s1,8000519c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800051e0:	00005517          	auipc	a0,0x5
    800051e4:	17850513          	addi	a0,a0,376 # 8000a358 <CONSOLE_STATUS+0x348>
    800051e8:	00001097          	auipc	ra,0x1
    800051ec:	d84080e7          	jalr	-636(ra) # 80005f6c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800051f0:	00500313          	li	t1,5
    thread_dispatch();
    800051f4:	ffffc097          	auipc	ra,0xffffc
    800051f8:	1f0080e7          	jalr	496(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800051fc:	01000513          	li	a0,16
    80005200:	00000097          	auipc	ra,0x0
    80005204:	f08080e7          	jalr	-248(ra) # 80005108 <_ZL9fibonaccim>
    80005208:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000520c:	00005517          	auipc	a0,0x5
    80005210:	15c50513          	addi	a0,a0,348 # 8000a368 <CONSOLE_STATUS+0x358>
    80005214:	00001097          	auipc	ra,0x1
    80005218:	d58080e7          	jalr	-680(ra) # 80005f6c <_Z11printStringPKc>
    8000521c:	00000613          	li	a2,0
    80005220:	00a00593          	li	a1,10
    80005224:	0009051b          	sext.w	a0,s2
    80005228:	00001097          	auipc	ra,0x1
    8000522c:	ef4080e7          	jalr	-268(ra) # 8000611c <_Z8printIntiii>
    80005230:	00005517          	auipc	a0,0x5
    80005234:	4b050513          	addi	a0,a0,1200 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80005238:	00001097          	auipc	ra,0x1
    8000523c:	d34080e7          	jalr	-716(ra) # 80005f6c <_Z11printStringPKc>
    80005240:	0400006f          	j	80005280 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005244:	00005517          	auipc	a0,0x5
    80005248:	10c50513          	addi	a0,a0,268 # 8000a350 <CONSOLE_STATUS+0x340>
    8000524c:	00001097          	auipc	ra,0x1
    80005250:	d20080e7          	jalr	-736(ra) # 80005f6c <_Z11printStringPKc>
    80005254:	00000613          	li	a2,0
    80005258:	00a00593          	li	a1,10
    8000525c:	00048513          	mv	a0,s1
    80005260:	00001097          	auipc	ra,0x1
    80005264:	ebc080e7          	jalr	-324(ra) # 8000611c <_Z8printIntiii>
    80005268:	00005517          	auipc	a0,0x5
    8000526c:	47850513          	addi	a0,a0,1144 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80005270:	00001097          	auipc	ra,0x1
    80005274:	cfc080e7          	jalr	-772(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005278:	0014849b          	addiw	s1,s1,1
    8000527c:	0ff4f493          	andi	s1,s1,255
    80005280:	00f00793          	li	a5,15
    80005284:	fc97f0e3          	bgeu	a5,s1,80005244 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005288:	00005517          	auipc	a0,0x5
    8000528c:	0f050513          	addi	a0,a0,240 # 8000a378 <CONSOLE_STATUS+0x368>
    80005290:	00001097          	auipc	ra,0x1
    80005294:	cdc080e7          	jalr	-804(ra) # 80005f6c <_Z11printStringPKc>
    finishedD = true;
    80005298:	00100793          	li	a5,1
    8000529c:	00008717          	auipc	a4,0x8
    800052a0:	e4f70623          	sb	a5,-436(a4) # 8000d0e8 <_ZL9finishedD>
    thread_dispatch();
    800052a4:	ffffc097          	auipc	ra,0xffffc
    800052a8:	140080e7          	jalr	320(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800052ac:	01813083          	ld	ra,24(sp)
    800052b0:	01013403          	ld	s0,16(sp)
    800052b4:	00813483          	ld	s1,8(sp)
    800052b8:	00013903          	ld	s2,0(sp)
    800052bc:	02010113          	addi	sp,sp,32
    800052c0:	00008067          	ret

00000000800052c4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800052c4:	fe010113          	addi	sp,sp,-32
    800052c8:	00113c23          	sd	ra,24(sp)
    800052cc:	00813823          	sd	s0,16(sp)
    800052d0:	00913423          	sd	s1,8(sp)
    800052d4:	01213023          	sd	s2,0(sp)
    800052d8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800052dc:	00000493          	li	s1,0
    800052e0:	0400006f          	j	80005320 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800052e4:	00005517          	auipc	a0,0x5
    800052e8:	03c50513          	addi	a0,a0,60 # 8000a320 <CONSOLE_STATUS+0x310>
    800052ec:	00001097          	auipc	ra,0x1
    800052f0:	c80080e7          	jalr	-896(ra) # 80005f6c <_Z11printStringPKc>
    800052f4:	00000613          	li	a2,0
    800052f8:	00a00593          	li	a1,10
    800052fc:	00048513          	mv	a0,s1
    80005300:	00001097          	auipc	ra,0x1
    80005304:	e1c080e7          	jalr	-484(ra) # 8000611c <_Z8printIntiii>
    80005308:	00005517          	auipc	a0,0x5
    8000530c:	3d850513          	addi	a0,a0,984 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80005310:	00001097          	auipc	ra,0x1
    80005314:	c5c080e7          	jalr	-932(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005318:	0014849b          	addiw	s1,s1,1
    8000531c:	0ff4f493          	andi	s1,s1,255
    80005320:	00200793          	li	a5,2
    80005324:	fc97f0e3          	bgeu	a5,s1,800052e4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005328:	00005517          	auipc	a0,0x5
    8000532c:	00050513          	mv	a0,a0
    80005330:	00001097          	auipc	ra,0x1
    80005334:	c3c080e7          	jalr	-964(ra) # 80005f6c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005338:	00700313          	li	t1,7
    thread_dispatch();
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	0a8080e7          	jalr	168(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005344:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005348:	00005517          	auipc	a0,0x5
    8000534c:	ff050513          	addi	a0,a0,-16 # 8000a338 <CONSOLE_STATUS+0x328>
    80005350:	00001097          	auipc	ra,0x1
    80005354:	c1c080e7          	jalr	-996(ra) # 80005f6c <_Z11printStringPKc>
    80005358:	00000613          	li	a2,0
    8000535c:	00a00593          	li	a1,10
    80005360:	0009051b          	sext.w	a0,s2
    80005364:	00001097          	auipc	ra,0x1
    80005368:	db8080e7          	jalr	-584(ra) # 8000611c <_Z8printIntiii>
    8000536c:	00005517          	auipc	a0,0x5
    80005370:	37450513          	addi	a0,a0,884 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80005374:	00001097          	auipc	ra,0x1
    80005378:	bf8080e7          	jalr	-1032(ra) # 80005f6c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000537c:	00c00513          	li	a0,12
    80005380:	00000097          	auipc	ra,0x0
    80005384:	d88080e7          	jalr	-632(ra) # 80005108 <_ZL9fibonaccim>
    80005388:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000538c:	00005517          	auipc	a0,0x5
    80005390:	fb450513          	addi	a0,a0,-76 # 8000a340 <CONSOLE_STATUS+0x330>
    80005394:	00001097          	auipc	ra,0x1
    80005398:	bd8080e7          	jalr	-1064(ra) # 80005f6c <_Z11printStringPKc>
    8000539c:	00000613          	li	a2,0
    800053a0:	00a00593          	li	a1,10
    800053a4:	0009051b          	sext.w	a0,s2
    800053a8:	00001097          	auipc	ra,0x1
    800053ac:	d74080e7          	jalr	-652(ra) # 8000611c <_Z8printIntiii>
    800053b0:	00005517          	auipc	a0,0x5
    800053b4:	33050513          	addi	a0,a0,816 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800053b8:	00001097          	auipc	ra,0x1
    800053bc:	bb4080e7          	jalr	-1100(ra) # 80005f6c <_Z11printStringPKc>
    800053c0:	0400006f          	j	80005400 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800053c4:	00005517          	auipc	a0,0x5
    800053c8:	f5c50513          	addi	a0,a0,-164 # 8000a320 <CONSOLE_STATUS+0x310>
    800053cc:	00001097          	auipc	ra,0x1
    800053d0:	ba0080e7          	jalr	-1120(ra) # 80005f6c <_Z11printStringPKc>
    800053d4:	00000613          	li	a2,0
    800053d8:	00a00593          	li	a1,10
    800053dc:	00048513          	mv	a0,s1
    800053e0:	00001097          	auipc	ra,0x1
    800053e4:	d3c080e7          	jalr	-708(ra) # 8000611c <_Z8printIntiii>
    800053e8:	00005517          	auipc	a0,0x5
    800053ec:	2f850513          	addi	a0,a0,760 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800053f0:	00001097          	auipc	ra,0x1
    800053f4:	b7c080e7          	jalr	-1156(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800053f8:	0014849b          	addiw	s1,s1,1
    800053fc:	0ff4f493          	andi	s1,s1,255
    80005400:	00500793          	li	a5,5
    80005404:	fc97f0e3          	bgeu	a5,s1,800053c4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005408:	00005517          	auipc	a0,0x5
    8000540c:	ef050513          	addi	a0,a0,-272 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80005410:	00001097          	auipc	ra,0x1
    80005414:	b5c080e7          	jalr	-1188(ra) # 80005f6c <_Z11printStringPKc>
    finishedC = true;
    80005418:	00100793          	li	a5,1
    8000541c:	00008717          	auipc	a4,0x8
    80005420:	ccf706a3          	sb	a5,-819(a4) # 8000d0e9 <_ZL9finishedC>
    thread_dispatch();
    80005424:	ffffc097          	auipc	ra,0xffffc
    80005428:	fc0080e7          	jalr	-64(ra) # 800013e4 <_Z15thread_dispatchv>
}
    8000542c:	01813083          	ld	ra,24(sp)
    80005430:	01013403          	ld	s0,16(sp)
    80005434:	00813483          	ld	s1,8(sp)
    80005438:	00013903          	ld	s2,0(sp)
    8000543c:	02010113          	addi	sp,sp,32
    80005440:	00008067          	ret

0000000080005444 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005444:	fe010113          	addi	sp,sp,-32
    80005448:	00113c23          	sd	ra,24(sp)
    8000544c:	00813823          	sd	s0,16(sp)
    80005450:	00913423          	sd	s1,8(sp)
    80005454:	01213023          	sd	s2,0(sp)
    80005458:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000545c:	00000913          	li	s2,0
    80005460:	0380006f          	j	80005498 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005464:	ffffc097          	auipc	ra,0xffffc
    80005468:	f80080e7          	jalr	-128(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000546c:	00148493          	addi	s1,s1,1
    80005470:	000027b7          	lui	a5,0x2
    80005474:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005478:	0097ee63          	bltu	a5,s1,80005494 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000547c:	00000713          	li	a4,0
    80005480:	000077b7          	lui	a5,0x7
    80005484:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005488:	fce7eee3          	bltu	a5,a4,80005464 <_ZL11workerBodyBPv+0x20>
    8000548c:	00170713          	addi	a4,a4,1
    80005490:	ff1ff06f          	j	80005480 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005494:	00190913          	addi	s2,s2,1
    80005498:	00f00793          	li	a5,15
    8000549c:	0527e063          	bltu	a5,s2,800054dc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800054a0:	00005517          	auipc	a0,0x5
    800054a4:	e6850513          	addi	a0,a0,-408 # 8000a308 <CONSOLE_STATUS+0x2f8>
    800054a8:	00001097          	auipc	ra,0x1
    800054ac:	ac4080e7          	jalr	-1340(ra) # 80005f6c <_Z11printStringPKc>
    800054b0:	00000613          	li	a2,0
    800054b4:	00a00593          	li	a1,10
    800054b8:	0009051b          	sext.w	a0,s2
    800054bc:	00001097          	auipc	ra,0x1
    800054c0:	c60080e7          	jalr	-928(ra) # 8000611c <_Z8printIntiii>
    800054c4:	00005517          	auipc	a0,0x5
    800054c8:	21c50513          	addi	a0,a0,540 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800054cc:	00001097          	auipc	ra,0x1
    800054d0:	aa0080e7          	jalr	-1376(ra) # 80005f6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800054d4:	00000493          	li	s1,0
    800054d8:	f99ff06f          	j	80005470 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800054dc:	00005517          	auipc	a0,0x5
    800054e0:	e3450513          	addi	a0,a0,-460 # 8000a310 <CONSOLE_STATUS+0x300>
    800054e4:	00001097          	auipc	ra,0x1
    800054e8:	a88080e7          	jalr	-1400(ra) # 80005f6c <_Z11printStringPKc>
    finishedB = true;
    800054ec:	00100793          	li	a5,1
    800054f0:	00008717          	auipc	a4,0x8
    800054f4:	bef70d23          	sb	a5,-1030(a4) # 8000d0ea <_ZL9finishedB>
    thread_dispatch();
    800054f8:	ffffc097          	auipc	ra,0xffffc
    800054fc:	eec080e7          	jalr	-276(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80005500:	01813083          	ld	ra,24(sp)
    80005504:	01013403          	ld	s0,16(sp)
    80005508:	00813483          	ld	s1,8(sp)
    8000550c:	00013903          	ld	s2,0(sp)
    80005510:	02010113          	addi	sp,sp,32
    80005514:	00008067          	ret

0000000080005518 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005518:	fe010113          	addi	sp,sp,-32
    8000551c:	00113c23          	sd	ra,24(sp)
    80005520:	00813823          	sd	s0,16(sp)
    80005524:	00913423          	sd	s1,8(sp)
    80005528:	01213023          	sd	s2,0(sp)
    8000552c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005530:	00000913          	li	s2,0
    80005534:	0380006f          	j	8000556c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	eac080e7          	jalr	-340(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005540:	00148493          	addi	s1,s1,1
    80005544:	000027b7          	lui	a5,0x2
    80005548:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000554c:	0097ee63          	bltu	a5,s1,80005568 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005550:	00000713          	li	a4,0
    80005554:	000077b7          	lui	a5,0x7
    80005558:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000555c:	fce7eee3          	bltu	a5,a4,80005538 <_ZL11workerBodyAPv+0x20>
    80005560:	00170713          	addi	a4,a4,1
    80005564:	ff1ff06f          	j	80005554 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005568:	00190913          	addi	s2,s2,1
    8000556c:	00900793          	li	a5,9
    80005570:	0527e063          	bltu	a5,s2,800055b0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005574:	00005517          	auipc	a0,0x5
    80005578:	d7c50513          	addi	a0,a0,-644 # 8000a2f0 <CONSOLE_STATUS+0x2e0>
    8000557c:	00001097          	auipc	ra,0x1
    80005580:	9f0080e7          	jalr	-1552(ra) # 80005f6c <_Z11printStringPKc>
    80005584:	00000613          	li	a2,0
    80005588:	00a00593          	li	a1,10
    8000558c:	0009051b          	sext.w	a0,s2
    80005590:	00001097          	auipc	ra,0x1
    80005594:	b8c080e7          	jalr	-1140(ra) # 8000611c <_Z8printIntiii>
    80005598:	00005517          	auipc	a0,0x5
    8000559c:	14850513          	addi	a0,a0,328 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    800055a0:	00001097          	auipc	ra,0x1
    800055a4:	9cc080e7          	jalr	-1588(ra) # 80005f6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800055a8:	00000493          	li	s1,0
    800055ac:	f99ff06f          	j	80005544 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800055b0:	00005517          	auipc	a0,0x5
    800055b4:	d4850513          	addi	a0,a0,-696 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    800055b8:	00001097          	auipc	ra,0x1
    800055bc:	9b4080e7          	jalr	-1612(ra) # 80005f6c <_Z11printStringPKc>
    finishedA = true;
    800055c0:	00100793          	li	a5,1
    800055c4:	00008717          	auipc	a4,0x8
    800055c8:	b2f703a3          	sb	a5,-1241(a4) # 8000d0eb <_ZL9finishedA>
}
    800055cc:	01813083          	ld	ra,24(sp)
    800055d0:	01013403          	ld	s0,16(sp)
    800055d4:	00813483          	ld	s1,8(sp)
    800055d8:	00013903          	ld	s2,0(sp)
    800055dc:	02010113          	addi	sp,sp,32
    800055e0:	00008067          	ret

00000000800055e4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800055e4:	fd010113          	addi	sp,sp,-48
    800055e8:	02113423          	sd	ra,40(sp)
    800055ec:	02813023          	sd	s0,32(sp)
    800055f0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800055f4:	00000613          	li	a2,0
    800055f8:	00000597          	auipc	a1,0x0
    800055fc:	f2058593          	addi	a1,a1,-224 # 80005518 <_ZL11workerBodyAPv>
    80005600:	fd040513          	addi	a0,s0,-48
    80005604:	ffffc097          	auipc	ra,0xffffc
    80005608:	d24080e7          	jalr	-732(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000560c:	00005517          	auipc	a0,0x5
    80005610:	d7c50513          	addi	a0,a0,-644 # 8000a388 <CONSOLE_STATUS+0x378>
    80005614:	00001097          	auipc	ra,0x1
    80005618:	958080e7          	jalr	-1704(ra) # 80005f6c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000561c:	00000613          	li	a2,0
    80005620:	00000597          	auipc	a1,0x0
    80005624:	e2458593          	addi	a1,a1,-476 # 80005444 <_ZL11workerBodyBPv>
    80005628:	fd840513          	addi	a0,s0,-40
    8000562c:	ffffc097          	auipc	ra,0xffffc
    80005630:	cfc080e7          	jalr	-772(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005634:	00005517          	auipc	a0,0x5
    80005638:	d6c50513          	addi	a0,a0,-660 # 8000a3a0 <CONSOLE_STATUS+0x390>
    8000563c:	00001097          	auipc	ra,0x1
    80005640:	930080e7          	jalr	-1744(ra) # 80005f6c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005644:	00000613          	li	a2,0
    80005648:	00000597          	auipc	a1,0x0
    8000564c:	c7c58593          	addi	a1,a1,-900 # 800052c4 <_ZL11workerBodyCPv>
    80005650:	fe040513          	addi	a0,s0,-32
    80005654:	ffffc097          	auipc	ra,0xffffc
    80005658:	cd4080e7          	jalr	-812(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000565c:	00005517          	auipc	a0,0x5
    80005660:	d5c50513          	addi	a0,a0,-676 # 8000a3b8 <CONSOLE_STATUS+0x3a8>
    80005664:	00001097          	auipc	ra,0x1
    80005668:	908080e7          	jalr	-1784(ra) # 80005f6c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000566c:	00000613          	li	a2,0
    80005670:	00000597          	auipc	a1,0x0
    80005674:	b0c58593          	addi	a1,a1,-1268 # 8000517c <_ZL11workerBodyDPv>
    80005678:	fe840513          	addi	a0,s0,-24
    8000567c:	ffffc097          	auipc	ra,0xffffc
    80005680:	cac080e7          	jalr	-852(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005684:	00005517          	auipc	a0,0x5
    80005688:	d4c50513          	addi	a0,a0,-692 # 8000a3d0 <CONSOLE_STATUS+0x3c0>
    8000568c:	00001097          	auipc	ra,0x1
    80005690:	8e0080e7          	jalr	-1824(ra) # 80005f6c <_Z11printStringPKc>
    80005694:	00c0006f          	j	800056a0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005698:	ffffc097          	auipc	ra,0xffffc
    8000569c:	d4c080e7          	jalr	-692(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800056a0:	00008797          	auipc	a5,0x8
    800056a4:	a4b7c783          	lbu	a5,-1461(a5) # 8000d0eb <_ZL9finishedA>
    800056a8:	fe0788e3          	beqz	a5,80005698 <_Z18Threads_C_API_testv+0xb4>
    800056ac:	00008797          	auipc	a5,0x8
    800056b0:	a3e7c783          	lbu	a5,-1474(a5) # 8000d0ea <_ZL9finishedB>
    800056b4:	fe0782e3          	beqz	a5,80005698 <_Z18Threads_C_API_testv+0xb4>
    800056b8:	00008797          	auipc	a5,0x8
    800056bc:	a317c783          	lbu	a5,-1487(a5) # 8000d0e9 <_ZL9finishedC>
    800056c0:	fc078ce3          	beqz	a5,80005698 <_Z18Threads_C_API_testv+0xb4>
    800056c4:	00008797          	auipc	a5,0x8
    800056c8:	a247c783          	lbu	a5,-1500(a5) # 8000d0e8 <_ZL9finishedD>
    800056cc:	fc0786e3          	beqz	a5,80005698 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800056d0:	02813083          	ld	ra,40(sp)
    800056d4:	02013403          	ld	s0,32(sp)
    800056d8:	03010113          	addi	sp,sp,48
    800056dc:	00008067          	ret

00000000800056e0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800056e0:	fd010113          	addi	sp,sp,-48
    800056e4:	02113423          	sd	ra,40(sp)
    800056e8:	02813023          	sd	s0,32(sp)
    800056ec:	00913c23          	sd	s1,24(sp)
    800056f0:	01213823          	sd	s2,16(sp)
    800056f4:	01313423          	sd	s3,8(sp)
    800056f8:	03010413          	addi	s0,sp,48
    800056fc:	00050993          	mv	s3,a0
    80005700:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005704:	00000913          	li	s2,0
    80005708:	00c0006f          	j	80005714 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000570c:	ffffd097          	auipc	ra,0xffffd
    80005710:	fbc080e7          	jalr	-68(ra) # 800026c8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005714:	ffffc097          	auipc	ra,0xffffc
    80005718:	ec8080e7          	jalr	-312(ra) # 800015dc <_Z4getcv>
    8000571c:	0005059b          	sext.w	a1,a0
    80005720:	01b00793          	li	a5,27
    80005724:	02f58a63          	beq	a1,a5,80005758 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005728:	0084b503          	ld	a0,8(s1)
    8000572c:	00001097          	auipc	ra,0x1
    80005730:	c64080e7          	jalr	-924(ra) # 80006390 <_ZN9BufferCPP3putEi>
        i++;
    80005734:	0019071b          	addiw	a4,s2,1
    80005738:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000573c:	0004a683          	lw	a3,0(s1)
    80005740:	0026979b          	slliw	a5,a3,0x2
    80005744:	00d787bb          	addw	a5,a5,a3
    80005748:	0017979b          	slliw	a5,a5,0x1
    8000574c:	02f767bb          	remw	a5,a4,a5
    80005750:	fc0792e3          	bnez	a5,80005714 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005754:	fb9ff06f          	j	8000570c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005758:	00100793          	li	a5,1
    8000575c:	00008717          	auipc	a4,0x8
    80005760:	98f72a23          	sw	a5,-1644(a4) # 8000d0f0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005764:	0209b783          	ld	a5,32(s3)
    80005768:	02100593          	li	a1,33
    8000576c:	0087b503          	ld	a0,8(a5)
    80005770:	00001097          	auipc	ra,0x1
    80005774:	c20080e7          	jalr	-992(ra) # 80006390 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005778:	0104b503          	ld	a0,16(s1)
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	0f8080e7          	jalr	248(ra) # 80002874 <_ZN9Semaphore6signalEv>
}
    80005784:	02813083          	ld	ra,40(sp)
    80005788:	02013403          	ld	s0,32(sp)
    8000578c:	01813483          	ld	s1,24(sp)
    80005790:	01013903          	ld	s2,16(sp)
    80005794:	00813983          	ld	s3,8(sp)
    80005798:	03010113          	addi	sp,sp,48
    8000579c:	00008067          	ret

00000000800057a0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800057a0:	fe010113          	addi	sp,sp,-32
    800057a4:	00113c23          	sd	ra,24(sp)
    800057a8:	00813823          	sd	s0,16(sp)
    800057ac:	00913423          	sd	s1,8(sp)
    800057b0:	01213023          	sd	s2,0(sp)
    800057b4:	02010413          	addi	s0,sp,32
    800057b8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800057bc:	00000913          	li	s2,0
    800057c0:	00c0006f          	j	800057cc <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800057c4:	ffffd097          	auipc	ra,0xffffd
    800057c8:	f04080e7          	jalr	-252(ra) # 800026c8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800057cc:	00008797          	auipc	a5,0x8
    800057d0:	9247a783          	lw	a5,-1756(a5) # 8000d0f0 <_ZL9threadEnd>
    800057d4:	02079e63          	bnez	a5,80005810 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800057d8:	0004a583          	lw	a1,0(s1)
    800057dc:	0305859b          	addiw	a1,a1,48
    800057e0:	0084b503          	ld	a0,8(s1)
    800057e4:	00001097          	auipc	ra,0x1
    800057e8:	bac080e7          	jalr	-1108(ra) # 80006390 <_ZN9BufferCPP3putEi>
        i++;
    800057ec:	0019071b          	addiw	a4,s2,1
    800057f0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800057f4:	0004a683          	lw	a3,0(s1)
    800057f8:	0026979b          	slliw	a5,a3,0x2
    800057fc:	00d787bb          	addw	a5,a5,a3
    80005800:	0017979b          	slliw	a5,a5,0x1
    80005804:	02f767bb          	remw	a5,a4,a5
    80005808:	fc0792e3          	bnez	a5,800057cc <_ZN12ProducerSync8producerEPv+0x2c>
    8000580c:	fb9ff06f          	j	800057c4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005810:	0104b503          	ld	a0,16(s1)
    80005814:	ffffd097          	auipc	ra,0xffffd
    80005818:	060080e7          	jalr	96(ra) # 80002874 <_ZN9Semaphore6signalEv>
}
    8000581c:	01813083          	ld	ra,24(sp)
    80005820:	01013403          	ld	s0,16(sp)
    80005824:	00813483          	ld	s1,8(sp)
    80005828:	00013903          	ld	s2,0(sp)
    8000582c:	02010113          	addi	sp,sp,32
    80005830:	00008067          	ret

0000000080005834 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005834:	fd010113          	addi	sp,sp,-48
    80005838:	02113423          	sd	ra,40(sp)
    8000583c:	02813023          	sd	s0,32(sp)
    80005840:	00913c23          	sd	s1,24(sp)
    80005844:	01213823          	sd	s2,16(sp)
    80005848:	01313423          	sd	s3,8(sp)
    8000584c:	01413023          	sd	s4,0(sp)
    80005850:	03010413          	addi	s0,sp,48
    80005854:	00050993          	mv	s3,a0
    80005858:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000585c:	00000a13          	li	s4,0
    80005860:	01c0006f          	j	8000587c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005864:	ffffd097          	auipc	ra,0xffffd
    80005868:	e64080e7          	jalr	-412(ra) # 800026c8 <_ZN6Thread8dispatchEv>
    8000586c:	0500006f          	j	800058bc <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005870:	00a00513          	li	a0,10
    80005874:	ffffc097          	auipc	ra,0xffffc
    80005878:	d9c080e7          	jalr	-612(ra) # 80001610 <_Z4putcc>
    while (!threadEnd) {
    8000587c:	00008797          	auipc	a5,0x8
    80005880:	8747a783          	lw	a5,-1932(a5) # 8000d0f0 <_ZL9threadEnd>
    80005884:	06079263          	bnez	a5,800058e8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005888:	00893503          	ld	a0,8(s2)
    8000588c:	00001097          	auipc	ra,0x1
    80005890:	b94080e7          	jalr	-1132(ra) # 80006420 <_ZN9BufferCPP3getEv>
        i++;
    80005894:	001a049b          	addiw	s1,s4,1
    80005898:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000589c:	0ff57513          	andi	a0,a0,255
    800058a0:	ffffc097          	auipc	ra,0xffffc
    800058a4:	d70080e7          	jalr	-656(ra) # 80001610 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800058a8:	00092703          	lw	a4,0(s2)
    800058ac:	0027179b          	slliw	a5,a4,0x2
    800058b0:	00e787bb          	addw	a5,a5,a4
    800058b4:	02f4e7bb          	remw	a5,s1,a5
    800058b8:	fa0786e3          	beqz	a5,80005864 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800058bc:	05000793          	li	a5,80
    800058c0:	02f4e4bb          	remw	s1,s1,a5
    800058c4:	fa049ce3          	bnez	s1,8000587c <_ZN12ConsumerSync8consumerEPv+0x48>
    800058c8:	fa9ff06f          	j	80005870 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800058cc:	0209b783          	ld	a5,32(s3)
    800058d0:	0087b503          	ld	a0,8(a5)
    800058d4:	00001097          	auipc	ra,0x1
    800058d8:	b4c080e7          	jalr	-1204(ra) # 80006420 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800058dc:	0ff57513          	andi	a0,a0,255
    800058e0:	ffffd097          	auipc	ra,0xffffd
    800058e4:	054080e7          	jalr	84(ra) # 80002934 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800058e8:	0209b783          	ld	a5,32(s3)
    800058ec:	0087b503          	ld	a0,8(a5)
    800058f0:	00001097          	auipc	ra,0x1
    800058f4:	bbc080e7          	jalr	-1092(ra) # 800064ac <_ZN9BufferCPP6getCntEv>
    800058f8:	fca04ae3          	bgtz	a0,800058cc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800058fc:	01093503          	ld	a0,16(s2)
    80005900:	ffffd097          	auipc	ra,0xffffd
    80005904:	f74080e7          	jalr	-140(ra) # 80002874 <_ZN9Semaphore6signalEv>
}
    80005908:	02813083          	ld	ra,40(sp)
    8000590c:	02013403          	ld	s0,32(sp)
    80005910:	01813483          	ld	s1,24(sp)
    80005914:	01013903          	ld	s2,16(sp)
    80005918:	00813983          	ld	s3,8(sp)
    8000591c:	00013a03          	ld	s4,0(sp)
    80005920:	03010113          	addi	sp,sp,48
    80005924:	00008067          	ret

0000000080005928 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005928:	f8010113          	addi	sp,sp,-128
    8000592c:	06113c23          	sd	ra,120(sp)
    80005930:	06813823          	sd	s0,112(sp)
    80005934:	06913423          	sd	s1,104(sp)
    80005938:	07213023          	sd	s2,96(sp)
    8000593c:	05313c23          	sd	s3,88(sp)
    80005940:	05413823          	sd	s4,80(sp)
    80005944:	05513423          	sd	s5,72(sp)
    80005948:	05613023          	sd	s6,64(sp)
    8000594c:	03713c23          	sd	s7,56(sp)
    80005950:	03813823          	sd	s8,48(sp)
    80005954:	03913423          	sd	s9,40(sp)
    80005958:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000595c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005960:	00005517          	auipc	a0,0x5
    80005964:	89050513          	addi	a0,a0,-1904 # 8000a1f0 <CONSOLE_STATUS+0x1e0>
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	604080e7          	jalr	1540(ra) # 80005f6c <_Z11printStringPKc>
    getString(input, 30);
    80005970:	01e00593          	li	a1,30
    80005974:	f8040493          	addi	s1,s0,-128
    80005978:	00048513          	mv	a0,s1
    8000597c:	00000097          	auipc	ra,0x0
    80005980:	678080e7          	jalr	1656(ra) # 80005ff4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005984:	00048513          	mv	a0,s1
    80005988:	00000097          	auipc	ra,0x0
    8000598c:	744080e7          	jalr	1860(ra) # 800060cc <_Z11stringToIntPKc>
    80005990:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005994:	00005517          	auipc	a0,0x5
    80005998:	87c50513          	addi	a0,a0,-1924 # 8000a210 <CONSOLE_STATUS+0x200>
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	5d0080e7          	jalr	1488(ra) # 80005f6c <_Z11printStringPKc>
    getString(input, 30);
    800059a4:	01e00593          	li	a1,30
    800059a8:	00048513          	mv	a0,s1
    800059ac:	00000097          	auipc	ra,0x0
    800059b0:	648080e7          	jalr	1608(ra) # 80005ff4 <_Z9getStringPci>
    n = stringToInt(input);
    800059b4:	00048513          	mv	a0,s1
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	714080e7          	jalr	1812(ra) # 800060cc <_Z11stringToIntPKc>
    800059c0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800059c4:	00005517          	auipc	a0,0x5
    800059c8:	86c50513          	addi	a0,a0,-1940 # 8000a230 <CONSOLE_STATUS+0x220>
    800059cc:	00000097          	auipc	ra,0x0
    800059d0:	5a0080e7          	jalr	1440(ra) # 80005f6c <_Z11printStringPKc>
    800059d4:	00000613          	li	a2,0
    800059d8:	00a00593          	li	a1,10
    800059dc:	00090513          	mv	a0,s2
    800059e0:	00000097          	auipc	ra,0x0
    800059e4:	73c080e7          	jalr	1852(ra) # 8000611c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800059e8:	00005517          	auipc	a0,0x5
    800059ec:	86050513          	addi	a0,a0,-1952 # 8000a248 <CONSOLE_STATUS+0x238>
    800059f0:	00000097          	auipc	ra,0x0
    800059f4:	57c080e7          	jalr	1404(ra) # 80005f6c <_Z11printStringPKc>
    800059f8:	00000613          	li	a2,0
    800059fc:	00a00593          	li	a1,10
    80005a00:	00048513          	mv	a0,s1
    80005a04:	00000097          	auipc	ra,0x0
    80005a08:	718080e7          	jalr	1816(ra) # 8000611c <_Z8printIntiii>
    printString(".\n");
    80005a0c:	00005517          	auipc	a0,0x5
    80005a10:	85450513          	addi	a0,a0,-1964 # 8000a260 <CONSOLE_STATUS+0x250>
    80005a14:	00000097          	auipc	ra,0x0
    80005a18:	558080e7          	jalr	1368(ra) # 80005f6c <_Z11printStringPKc>
    if(threadNum > n) {
    80005a1c:	0324c463          	blt	s1,s2,80005a44 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005a20:	03205c63          	blez	s2,80005a58 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005a24:	03800513          	li	a0,56
    80005a28:	ffffd097          	auipc	ra,0xffffd
    80005a2c:	b30080e7          	jalr	-1232(ra) # 80002558 <_Znwm>
    80005a30:	00050a93          	mv	s5,a0
    80005a34:	00048593          	mv	a1,s1
    80005a38:	00001097          	auipc	ra,0x1
    80005a3c:	804080e7          	jalr	-2044(ra) # 8000623c <_ZN9BufferCPPC1Ei>
    80005a40:	0300006f          	j	80005a70 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005a44:	00005517          	auipc	a0,0x5
    80005a48:	82450513          	addi	a0,a0,-2012 # 8000a268 <CONSOLE_STATUS+0x258>
    80005a4c:	00000097          	auipc	ra,0x0
    80005a50:	520080e7          	jalr	1312(ra) # 80005f6c <_Z11printStringPKc>
        return;
    80005a54:	0140006f          	j	80005a68 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005a58:	00005517          	auipc	a0,0x5
    80005a5c:	85050513          	addi	a0,a0,-1968 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80005a60:	00000097          	auipc	ra,0x0
    80005a64:	50c080e7          	jalr	1292(ra) # 80005f6c <_Z11printStringPKc>
        return;
    80005a68:	000b8113          	mv	sp,s7
    80005a6c:	2380006f          	j	80005ca4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005a70:	01000513          	li	a0,16
    80005a74:	ffffd097          	auipc	ra,0xffffd
    80005a78:	ae4080e7          	jalr	-1308(ra) # 80002558 <_Znwm>
    80005a7c:	00050493          	mv	s1,a0
    80005a80:	00000593          	li	a1,0
    80005a84:	ffffd097          	auipc	ra,0xffffd
    80005a88:	d88080e7          	jalr	-632(ra) # 8000280c <_ZN9SemaphoreC1Ej>
    80005a8c:	00007797          	auipc	a5,0x7
    80005a90:	6697b623          	sd	s1,1644(a5) # 8000d0f8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005a94:	00391793          	slli	a5,s2,0x3
    80005a98:	00f78793          	addi	a5,a5,15
    80005a9c:	ff07f793          	andi	a5,a5,-16
    80005aa0:	40f10133          	sub	sp,sp,a5
    80005aa4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005aa8:	0019071b          	addiw	a4,s2,1
    80005aac:	00171793          	slli	a5,a4,0x1
    80005ab0:	00e787b3          	add	a5,a5,a4
    80005ab4:	00379793          	slli	a5,a5,0x3
    80005ab8:	00f78793          	addi	a5,a5,15
    80005abc:	ff07f793          	andi	a5,a5,-16
    80005ac0:	40f10133          	sub	sp,sp,a5
    80005ac4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005ac8:	00191c13          	slli	s8,s2,0x1
    80005acc:	012c07b3          	add	a5,s8,s2
    80005ad0:	00379793          	slli	a5,a5,0x3
    80005ad4:	00fa07b3          	add	a5,s4,a5
    80005ad8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005adc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005ae0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005ae4:	02800513          	li	a0,40
    80005ae8:	ffffd097          	auipc	ra,0xffffd
    80005aec:	a70080e7          	jalr	-1424(ra) # 80002558 <_Znwm>
    80005af0:	00050b13          	mv	s6,a0
    80005af4:	012c0c33          	add	s8,s8,s2
    80005af8:	003c1c13          	slli	s8,s8,0x3
    80005afc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005b00:	ffffd097          	auipc	ra,0xffffd
    80005b04:	b90080e7          	jalr	-1136(ra) # 80002690 <_ZN6ThreadC1Ev>
    80005b08:	00007797          	auipc	a5,0x7
    80005b0c:	34078793          	addi	a5,a5,832 # 8000ce48 <_ZTV12ConsumerSync+0x10>
    80005b10:	00fb3023          	sd	a5,0(s6)
    80005b14:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005b18:	000b0513          	mv	a0,s6
    80005b1c:	ffffd097          	auipc	ra,0xffffd
    80005b20:	bd4080e7          	jalr	-1068(ra) # 800026f0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005b24:	00000493          	li	s1,0
    80005b28:	0380006f          	j	80005b60 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005b2c:	00007797          	auipc	a5,0x7
    80005b30:	2f478793          	addi	a5,a5,756 # 8000ce20 <_ZTV12ProducerSync+0x10>
    80005b34:	00fcb023          	sd	a5,0(s9)
    80005b38:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005b3c:	00349793          	slli	a5,s1,0x3
    80005b40:	00f987b3          	add	a5,s3,a5
    80005b44:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005b48:	00349793          	slli	a5,s1,0x3
    80005b4c:	00f987b3          	add	a5,s3,a5
    80005b50:	0007b503          	ld	a0,0(a5)
    80005b54:	ffffd097          	auipc	ra,0xffffd
    80005b58:	b9c080e7          	jalr	-1124(ra) # 800026f0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005b5c:	0014849b          	addiw	s1,s1,1
    80005b60:	0b24d063          	bge	s1,s2,80005c00 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005b64:	00149793          	slli	a5,s1,0x1
    80005b68:	009787b3          	add	a5,a5,s1
    80005b6c:	00379793          	slli	a5,a5,0x3
    80005b70:	00fa07b3          	add	a5,s4,a5
    80005b74:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005b78:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005b7c:	00007717          	auipc	a4,0x7
    80005b80:	57c73703          	ld	a4,1404(a4) # 8000d0f8 <_ZL10waitForAll>
    80005b84:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005b88:	02905863          	blez	s1,80005bb8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005b8c:	02800513          	li	a0,40
    80005b90:	ffffd097          	auipc	ra,0xffffd
    80005b94:	9c8080e7          	jalr	-1592(ra) # 80002558 <_Znwm>
    80005b98:	00050c93          	mv	s9,a0
    80005b9c:	00149c13          	slli	s8,s1,0x1
    80005ba0:	009c0c33          	add	s8,s8,s1
    80005ba4:	003c1c13          	slli	s8,s8,0x3
    80005ba8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005bac:	ffffd097          	auipc	ra,0xffffd
    80005bb0:	ae4080e7          	jalr	-1308(ra) # 80002690 <_ZN6ThreadC1Ev>
    80005bb4:	f79ff06f          	j	80005b2c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005bb8:	02800513          	li	a0,40
    80005bbc:	ffffd097          	auipc	ra,0xffffd
    80005bc0:	99c080e7          	jalr	-1636(ra) # 80002558 <_Znwm>
    80005bc4:	00050c93          	mv	s9,a0
    80005bc8:	00149c13          	slli	s8,s1,0x1
    80005bcc:	009c0c33          	add	s8,s8,s1
    80005bd0:	003c1c13          	slli	s8,s8,0x3
    80005bd4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005bd8:	ffffd097          	auipc	ra,0xffffd
    80005bdc:	ab8080e7          	jalr	-1352(ra) # 80002690 <_ZN6ThreadC1Ev>
    80005be0:	00007797          	auipc	a5,0x7
    80005be4:	21878793          	addi	a5,a5,536 # 8000cdf8 <_ZTV16ProducerKeyboard+0x10>
    80005be8:	00fcb023          	sd	a5,0(s9)
    80005bec:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005bf0:	00349793          	slli	a5,s1,0x3
    80005bf4:	00f987b3          	add	a5,s3,a5
    80005bf8:	0197b023          	sd	s9,0(a5)
    80005bfc:	f4dff06f          	j	80005b48 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005c00:	ffffd097          	auipc	ra,0xffffd
    80005c04:	ac8080e7          	jalr	-1336(ra) # 800026c8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005c08:	00000493          	li	s1,0
    80005c0c:	00994e63          	blt	s2,s1,80005c28 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005c10:	00007517          	auipc	a0,0x7
    80005c14:	4e853503          	ld	a0,1256(a0) # 8000d0f8 <_ZL10waitForAll>
    80005c18:	ffffd097          	auipc	ra,0xffffd
    80005c1c:	c30080e7          	jalr	-976(ra) # 80002848 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005c20:	0014849b          	addiw	s1,s1,1
    80005c24:	fe9ff06f          	j	80005c0c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005c28:	00000493          	li	s1,0
    80005c2c:	0080006f          	j	80005c34 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005c30:	0014849b          	addiw	s1,s1,1
    80005c34:	0324d263          	bge	s1,s2,80005c58 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005c38:	00349793          	slli	a5,s1,0x3
    80005c3c:	00f987b3          	add	a5,s3,a5
    80005c40:	0007b503          	ld	a0,0(a5)
    80005c44:	fe0506e3          	beqz	a0,80005c30 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005c48:	00053783          	ld	a5,0(a0)
    80005c4c:	0087b783          	ld	a5,8(a5)
    80005c50:	000780e7          	jalr	a5
    80005c54:	fddff06f          	j	80005c30 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005c58:	000b0a63          	beqz	s6,80005c6c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005c5c:	000b3783          	ld	a5,0(s6)
    80005c60:	0087b783          	ld	a5,8(a5)
    80005c64:	000b0513          	mv	a0,s6
    80005c68:	000780e7          	jalr	a5
    delete waitForAll;
    80005c6c:	00007517          	auipc	a0,0x7
    80005c70:	48c53503          	ld	a0,1164(a0) # 8000d0f8 <_ZL10waitForAll>
    80005c74:	00050863          	beqz	a0,80005c84 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005c78:	00053783          	ld	a5,0(a0)
    80005c7c:	0087b783          	ld	a5,8(a5)
    80005c80:	000780e7          	jalr	a5
    delete buffer;
    80005c84:	000a8e63          	beqz	s5,80005ca0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005c88:	000a8513          	mv	a0,s5
    80005c8c:	00001097          	auipc	ra,0x1
    80005c90:	8a8080e7          	jalr	-1880(ra) # 80006534 <_ZN9BufferCPPD1Ev>
    80005c94:	000a8513          	mv	a0,s5
    80005c98:	ffffd097          	auipc	ra,0xffffd
    80005c9c:	910080e7          	jalr	-1776(ra) # 800025a8 <_ZdlPv>
    80005ca0:	000b8113          	mv	sp,s7

}
    80005ca4:	f8040113          	addi	sp,s0,-128
    80005ca8:	07813083          	ld	ra,120(sp)
    80005cac:	07013403          	ld	s0,112(sp)
    80005cb0:	06813483          	ld	s1,104(sp)
    80005cb4:	06013903          	ld	s2,96(sp)
    80005cb8:	05813983          	ld	s3,88(sp)
    80005cbc:	05013a03          	ld	s4,80(sp)
    80005cc0:	04813a83          	ld	s5,72(sp)
    80005cc4:	04013b03          	ld	s6,64(sp)
    80005cc8:	03813b83          	ld	s7,56(sp)
    80005ccc:	03013c03          	ld	s8,48(sp)
    80005cd0:	02813c83          	ld	s9,40(sp)
    80005cd4:	08010113          	addi	sp,sp,128
    80005cd8:	00008067          	ret
    80005cdc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005ce0:	000a8513          	mv	a0,s5
    80005ce4:	ffffd097          	auipc	ra,0xffffd
    80005ce8:	8c4080e7          	jalr	-1852(ra) # 800025a8 <_ZdlPv>
    80005cec:	00048513          	mv	a0,s1
    80005cf0:	00008097          	auipc	ra,0x8
    80005cf4:	4e8080e7          	jalr	1256(ra) # 8000e1d8 <_Unwind_Resume>
    80005cf8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005cfc:	00048513          	mv	a0,s1
    80005d00:	ffffd097          	auipc	ra,0xffffd
    80005d04:	8a8080e7          	jalr	-1880(ra) # 800025a8 <_ZdlPv>
    80005d08:	00090513          	mv	a0,s2
    80005d0c:	00008097          	auipc	ra,0x8
    80005d10:	4cc080e7          	jalr	1228(ra) # 8000e1d8 <_Unwind_Resume>
    80005d14:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005d18:	000b0513          	mv	a0,s6
    80005d1c:	ffffd097          	auipc	ra,0xffffd
    80005d20:	88c080e7          	jalr	-1908(ra) # 800025a8 <_ZdlPv>
    80005d24:	00048513          	mv	a0,s1
    80005d28:	00008097          	auipc	ra,0x8
    80005d2c:	4b0080e7          	jalr	1200(ra) # 8000e1d8 <_Unwind_Resume>
    80005d30:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005d34:	000c8513          	mv	a0,s9
    80005d38:	ffffd097          	auipc	ra,0xffffd
    80005d3c:	870080e7          	jalr	-1936(ra) # 800025a8 <_ZdlPv>
    80005d40:	00048513          	mv	a0,s1
    80005d44:	00008097          	auipc	ra,0x8
    80005d48:	494080e7          	jalr	1172(ra) # 8000e1d8 <_Unwind_Resume>
    80005d4c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005d50:	000c8513          	mv	a0,s9
    80005d54:	ffffd097          	auipc	ra,0xffffd
    80005d58:	854080e7          	jalr	-1964(ra) # 800025a8 <_ZdlPv>
    80005d5c:	00048513          	mv	a0,s1
    80005d60:	00008097          	auipc	ra,0x8
    80005d64:	478080e7          	jalr	1144(ra) # 8000e1d8 <_Unwind_Resume>

0000000080005d68 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005d68:	ff010113          	addi	sp,sp,-16
    80005d6c:	00113423          	sd	ra,8(sp)
    80005d70:	00813023          	sd	s0,0(sp)
    80005d74:	01010413          	addi	s0,sp,16
    80005d78:	00007797          	auipc	a5,0x7
    80005d7c:	0d078793          	addi	a5,a5,208 # 8000ce48 <_ZTV12ConsumerSync+0x10>
    80005d80:	00f53023          	sd	a5,0(a0)
    80005d84:	ffffc097          	auipc	ra,0xffffc
    80005d88:	784080e7          	jalr	1924(ra) # 80002508 <_ZN6ThreadD1Ev>
    80005d8c:	00813083          	ld	ra,8(sp)
    80005d90:	00013403          	ld	s0,0(sp)
    80005d94:	01010113          	addi	sp,sp,16
    80005d98:	00008067          	ret

0000000080005d9c <_ZN12ConsumerSyncD0Ev>:
    80005d9c:	fe010113          	addi	sp,sp,-32
    80005da0:	00113c23          	sd	ra,24(sp)
    80005da4:	00813823          	sd	s0,16(sp)
    80005da8:	00913423          	sd	s1,8(sp)
    80005dac:	02010413          	addi	s0,sp,32
    80005db0:	00050493          	mv	s1,a0
    80005db4:	00007797          	auipc	a5,0x7
    80005db8:	09478793          	addi	a5,a5,148 # 8000ce48 <_ZTV12ConsumerSync+0x10>
    80005dbc:	00f53023          	sd	a5,0(a0)
    80005dc0:	ffffc097          	auipc	ra,0xffffc
    80005dc4:	748080e7          	jalr	1864(ra) # 80002508 <_ZN6ThreadD1Ev>
    80005dc8:	00048513          	mv	a0,s1
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	7dc080e7          	jalr	2012(ra) # 800025a8 <_ZdlPv>
    80005dd4:	01813083          	ld	ra,24(sp)
    80005dd8:	01013403          	ld	s0,16(sp)
    80005ddc:	00813483          	ld	s1,8(sp)
    80005de0:	02010113          	addi	sp,sp,32
    80005de4:	00008067          	ret

0000000080005de8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005de8:	ff010113          	addi	sp,sp,-16
    80005dec:	00113423          	sd	ra,8(sp)
    80005df0:	00813023          	sd	s0,0(sp)
    80005df4:	01010413          	addi	s0,sp,16
    80005df8:	00007797          	auipc	a5,0x7
    80005dfc:	02878793          	addi	a5,a5,40 # 8000ce20 <_ZTV12ProducerSync+0x10>
    80005e00:	00f53023          	sd	a5,0(a0)
    80005e04:	ffffc097          	auipc	ra,0xffffc
    80005e08:	704080e7          	jalr	1796(ra) # 80002508 <_ZN6ThreadD1Ev>
    80005e0c:	00813083          	ld	ra,8(sp)
    80005e10:	00013403          	ld	s0,0(sp)
    80005e14:	01010113          	addi	sp,sp,16
    80005e18:	00008067          	ret

0000000080005e1c <_ZN12ProducerSyncD0Ev>:
    80005e1c:	fe010113          	addi	sp,sp,-32
    80005e20:	00113c23          	sd	ra,24(sp)
    80005e24:	00813823          	sd	s0,16(sp)
    80005e28:	00913423          	sd	s1,8(sp)
    80005e2c:	02010413          	addi	s0,sp,32
    80005e30:	00050493          	mv	s1,a0
    80005e34:	00007797          	auipc	a5,0x7
    80005e38:	fec78793          	addi	a5,a5,-20 # 8000ce20 <_ZTV12ProducerSync+0x10>
    80005e3c:	00f53023          	sd	a5,0(a0)
    80005e40:	ffffc097          	auipc	ra,0xffffc
    80005e44:	6c8080e7          	jalr	1736(ra) # 80002508 <_ZN6ThreadD1Ev>
    80005e48:	00048513          	mv	a0,s1
    80005e4c:	ffffc097          	auipc	ra,0xffffc
    80005e50:	75c080e7          	jalr	1884(ra) # 800025a8 <_ZdlPv>
    80005e54:	01813083          	ld	ra,24(sp)
    80005e58:	01013403          	ld	s0,16(sp)
    80005e5c:	00813483          	ld	s1,8(sp)
    80005e60:	02010113          	addi	sp,sp,32
    80005e64:	00008067          	ret

0000000080005e68 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005e68:	ff010113          	addi	sp,sp,-16
    80005e6c:	00113423          	sd	ra,8(sp)
    80005e70:	00813023          	sd	s0,0(sp)
    80005e74:	01010413          	addi	s0,sp,16
    80005e78:	00007797          	auipc	a5,0x7
    80005e7c:	f8078793          	addi	a5,a5,-128 # 8000cdf8 <_ZTV16ProducerKeyboard+0x10>
    80005e80:	00f53023          	sd	a5,0(a0)
    80005e84:	ffffc097          	auipc	ra,0xffffc
    80005e88:	684080e7          	jalr	1668(ra) # 80002508 <_ZN6ThreadD1Ev>
    80005e8c:	00813083          	ld	ra,8(sp)
    80005e90:	00013403          	ld	s0,0(sp)
    80005e94:	01010113          	addi	sp,sp,16
    80005e98:	00008067          	ret

0000000080005e9c <_ZN16ProducerKeyboardD0Ev>:
    80005e9c:	fe010113          	addi	sp,sp,-32
    80005ea0:	00113c23          	sd	ra,24(sp)
    80005ea4:	00813823          	sd	s0,16(sp)
    80005ea8:	00913423          	sd	s1,8(sp)
    80005eac:	02010413          	addi	s0,sp,32
    80005eb0:	00050493          	mv	s1,a0
    80005eb4:	00007797          	auipc	a5,0x7
    80005eb8:	f4478793          	addi	a5,a5,-188 # 8000cdf8 <_ZTV16ProducerKeyboard+0x10>
    80005ebc:	00f53023          	sd	a5,0(a0)
    80005ec0:	ffffc097          	auipc	ra,0xffffc
    80005ec4:	648080e7          	jalr	1608(ra) # 80002508 <_ZN6ThreadD1Ev>
    80005ec8:	00048513          	mv	a0,s1
    80005ecc:	ffffc097          	auipc	ra,0xffffc
    80005ed0:	6dc080e7          	jalr	1756(ra) # 800025a8 <_ZdlPv>
    80005ed4:	01813083          	ld	ra,24(sp)
    80005ed8:	01013403          	ld	s0,16(sp)
    80005edc:	00813483          	ld	s1,8(sp)
    80005ee0:	02010113          	addi	sp,sp,32
    80005ee4:	00008067          	ret

0000000080005ee8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005ee8:	ff010113          	addi	sp,sp,-16
    80005eec:	00113423          	sd	ra,8(sp)
    80005ef0:	00813023          	sd	s0,0(sp)
    80005ef4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005ef8:	02053583          	ld	a1,32(a0)
    80005efc:	fffff097          	auipc	ra,0xfffff
    80005f00:	7e4080e7          	jalr	2020(ra) # 800056e0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005f04:	00813083          	ld	ra,8(sp)
    80005f08:	00013403          	ld	s0,0(sp)
    80005f0c:	01010113          	addi	sp,sp,16
    80005f10:	00008067          	ret

0000000080005f14 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005f14:	ff010113          	addi	sp,sp,-16
    80005f18:	00113423          	sd	ra,8(sp)
    80005f1c:	00813023          	sd	s0,0(sp)
    80005f20:	01010413          	addi	s0,sp,16
        producer(td);
    80005f24:	02053583          	ld	a1,32(a0)
    80005f28:	00000097          	auipc	ra,0x0
    80005f2c:	878080e7          	jalr	-1928(ra) # 800057a0 <_ZN12ProducerSync8producerEPv>
    }
    80005f30:	00813083          	ld	ra,8(sp)
    80005f34:	00013403          	ld	s0,0(sp)
    80005f38:	01010113          	addi	sp,sp,16
    80005f3c:	00008067          	ret

0000000080005f40 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005f40:	ff010113          	addi	sp,sp,-16
    80005f44:	00113423          	sd	ra,8(sp)
    80005f48:	00813023          	sd	s0,0(sp)
    80005f4c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005f50:	02053583          	ld	a1,32(a0)
    80005f54:	00000097          	auipc	ra,0x0
    80005f58:	8e0080e7          	jalr	-1824(ra) # 80005834 <_ZN12ConsumerSync8consumerEPv>
    }
    80005f5c:	00813083          	ld	ra,8(sp)
    80005f60:	00013403          	ld	s0,0(sp)
    80005f64:	01010113          	addi	sp,sp,16
    80005f68:	00008067          	ret

0000000080005f6c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005f6c:	fe010113          	addi	sp,sp,-32
    80005f70:	00113c23          	sd	ra,24(sp)
    80005f74:	00813823          	sd	s0,16(sp)
    80005f78:	00913423          	sd	s1,8(sp)
    80005f7c:	02010413          	addi	s0,sp,32
    80005f80:	00050493          	mv	s1,a0
    LOCK();
    80005f84:	00100613          	li	a2,1
    80005f88:	00000593          	li	a1,0
    80005f8c:	00007517          	auipc	a0,0x7
    80005f90:	17450513          	addi	a0,a0,372 # 8000d100 <lockPrint>
    80005f94:	ffffb097          	auipc	ra,0xffffb
    80005f98:	2a0080e7          	jalr	672(ra) # 80001234 <copy_and_swap>
    80005f9c:	00050863          	beqz	a0,80005fac <_Z11printStringPKc+0x40>
    80005fa0:	ffffb097          	auipc	ra,0xffffb
    80005fa4:	444080e7          	jalr	1092(ra) # 800013e4 <_Z15thread_dispatchv>
    80005fa8:	fddff06f          	j	80005f84 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005fac:	0004c503          	lbu	a0,0(s1)
    80005fb0:	00050a63          	beqz	a0,80005fc4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005fb4:	ffffb097          	auipc	ra,0xffffb
    80005fb8:	65c080e7          	jalr	1628(ra) # 80001610 <_Z4putcc>
        string++;
    80005fbc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005fc0:	fedff06f          	j	80005fac <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005fc4:	00000613          	li	a2,0
    80005fc8:	00100593          	li	a1,1
    80005fcc:	00007517          	auipc	a0,0x7
    80005fd0:	13450513          	addi	a0,a0,308 # 8000d100 <lockPrint>
    80005fd4:	ffffb097          	auipc	ra,0xffffb
    80005fd8:	260080e7          	jalr	608(ra) # 80001234 <copy_and_swap>
    80005fdc:	fe0514e3          	bnez	a0,80005fc4 <_Z11printStringPKc+0x58>
}
    80005fe0:	01813083          	ld	ra,24(sp)
    80005fe4:	01013403          	ld	s0,16(sp)
    80005fe8:	00813483          	ld	s1,8(sp)
    80005fec:	02010113          	addi	sp,sp,32
    80005ff0:	00008067          	ret

0000000080005ff4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005ff4:	fd010113          	addi	sp,sp,-48
    80005ff8:	02113423          	sd	ra,40(sp)
    80005ffc:	02813023          	sd	s0,32(sp)
    80006000:	00913c23          	sd	s1,24(sp)
    80006004:	01213823          	sd	s2,16(sp)
    80006008:	01313423          	sd	s3,8(sp)
    8000600c:	01413023          	sd	s4,0(sp)
    80006010:	03010413          	addi	s0,sp,48
    80006014:	00050993          	mv	s3,a0
    80006018:	00058a13          	mv	s4,a1
    LOCK();
    8000601c:	00100613          	li	a2,1
    80006020:	00000593          	li	a1,0
    80006024:	00007517          	auipc	a0,0x7
    80006028:	0dc50513          	addi	a0,a0,220 # 8000d100 <lockPrint>
    8000602c:	ffffb097          	auipc	ra,0xffffb
    80006030:	208080e7          	jalr	520(ra) # 80001234 <copy_and_swap>
    80006034:	00050863          	beqz	a0,80006044 <_Z9getStringPci+0x50>
    80006038:	ffffb097          	auipc	ra,0xffffb
    8000603c:	3ac080e7          	jalr	940(ra) # 800013e4 <_Z15thread_dispatchv>
    80006040:	fddff06f          	j	8000601c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80006044:	00000913          	li	s2,0
    80006048:	00090493          	mv	s1,s2
    8000604c:	0019091b          	addiw	s2,s2,1
    80006050:	03495a63          	bge	s2,s4,80006084 <_Z9getStringPci+0x90>
        cc = getc();
    80006054:	ffffb097          	auipc	ra,0xffffb
    80006058:	588080e7          	jalr	1416(ra) # 800015dc <_Z4getcv>
        if(cc < 1)
    8000605c:	02050463          	beqz	a0,80006084 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006060:	009984b3          	add	s1,s3,s1
    80006064:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006068:	00a00793          	li	a5,10
    8000606c:	00f50a63          	beq	a0,a5,80006080 <_Z9getStringPci+0x8c>
    80006070:	00d00793          	li	a5,13
    80006074:	fcf51ae3          	bne	a0,a5,80006048 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006078:	00090493          	mv	s1,s2
    8000607c:	0080006f          	j	80006084 <_Z9getStringPci+0x90>
    80006080:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006084:	009984b3          	add	s1,s3,s1
    80006088:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000608c:	00000613          	li	a2,0
    80006090:	00100593          	li	a1,1
    80006094:	00007517          	auipc	a0,0x7
    80006098:	06c50513          	addi	a0,a0,108 # 8000d100 <lockPrint>
    8000609c:	ffffb097          	auipc	ra,0xffffb
    800060a0:	198080e7          	jalr	408(ra) # 80001234 <copy_and_swap>
    800060a4:	fe0514e3          	bnez	a0,8000608c <_Z9getStringPci+0x98>
    return buf;
}
    800060a8:	00098513          	mv	a0,s3
    800060ac:	02813083          	ld	ra,40(sp)
    800060b0:	02013403          	ld	s0,32(sp)
    800060b4:	01813483          	ld	s1,24(sp)
    800060b8:	01013903          	ld	s2,16(sp)
    800060bc:	00813983          	ld	s3,8(sp)
    800060c0:	00013a03          	ld	s4,0(sp)
    800060c4:	03010113          	addi	sp,sp,48
    800060c8:	00008067          	ret

00000000800060cc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800060cc:	ff010113          	addi	sp,sp,-16
    800060d0:	00813423          	sd	s0,8(sp)
    800060d4:	01010413          	addi	s0,sp,16
    800060d8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800060dc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800060e0:	0006c603          	lbu	a2,0(a3)
    800060e4:	fd06071b          	addiw	a4,a2,-48
    800060e8:	0ff77713          	andi	a4,a4,255
    800060ec:	00900793          	li	a5,9
    800060f0:	02e7e063          	bltu	a5,a4,80006110 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800060f4:	0025179b          	slliw	a5,a0,0x2
    800060f8:	00a787bb          	addw	a5,a5,a0
    800060fc:	0017979b          	slliw	a5,a5,0x1
    80006100:	00168693          	addi	a3,a3,1
    80006104:	00c787bb          	addw	a5,a5,a2
    80006108:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000610c:	fd5ff06f          	j	800060e0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006110:	00813403          	ld	s0,8(sp)
    80006114:	01010113          	addi	sp,sp,16
    80006118:	00008067          	ret

000000008000611c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000611c:	fc010113          	addi	sp,sp,-64
    80006120:	02113c23          	sd	ra,56(sp)
    80006124:	02813823          	sd	s0,48(sp)
    80006128:	02913423          	sd	s1,40(sp)
    8000612c:	03213023          	sd	s2,32(sp)
    80006130:	01313c23          	sd	s3,24(sp)
    80006134:	04010413          	addi	s0,sp,64
    80006138:	00050493          	mv	s1,a0
    8000613c:	00058913          	mv	s2,a1
    80006140:	00060993          	mv	s3,a2
    LOCK();
    80006144:	00100613          	li	a2,1
    80006148:	00000593          	li	a1,0
    8000614c:	00007517          	auipc	a0,0x7
    80006150:	fb450513          	addi	a0,a0,-76 # 8000d100 <lockPrint>
    80006154:	ffffb097          	auipc	ra,0xffffb
    80006158:	0e0080e7          	jalr	224(ra) # 80001234 <copy_and_swap>
    8000615c:	00050863          	beqz	a0,8000616c <_Z8printIntiii+0x50>
    80006160:	ffffb097          	auipc	ra,0xffffb
    80006164:	284080e7          	jalr	644(ra) # 800013e4 <_Z15thread_dispatchv>
    80006168:	fddff06f          	j	80006144 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000616c:	00098463          	beqz	s3,80006174 <_Z8printIntiii+0x58>
    80006170:	0804c463          	bltz	s1,800061f8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006174:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006178:	00000593          	li	a1,0
    }

    i = 0;
    8000617c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006180:	0009079b          	sext.w	a5,s2
    80006184:	0325773b          	remuw	a4,a0,s2
    80006188:	00048613          	mv	a2,s1
    8000618c:	0014849b          	addiw	s1,s1,1
    80006190:	02071693          	slli	a3,a4,0x20
    80006194:	0206d693          	srli	a3,a3,0x20
    80006198:	00007717          	auipc	a4,0x7
    8000619c:	cc870713          	addi	a4,a4,-824 # 8000ce60 <digits>
    800061a0:	00d70733          	add	a4,a4,a3
    800061a4:	00074683          	lbu	a3,0(a4)
    800061a8:	fd040713          	addi	a4,s0,-48
    800061ac:	00c70733          	add	a4,a4,a2
    800061b0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800061b4:	0005071b          	sext.w	a4,a0
    800061b8:	0325553b          	divuw	a0,a0,s2
    800061bc:	fcf772e3          	bgeu	a4,a5,80006180 <_Z8printIntiii+0x64>
    if(neg)
    800061c0:	00058c63          	beqz	a1,800061d8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800061c4:	fd040793          	addi	a5,s0,-48
    800061c8:	009784b3          	add	s1,a5,s1
    800061cc:	02d00793          	li	a5,45
    800061d0:	fef48823          	sb	a5,-16(s1)
    800061d4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800061d8:	fff4849b          	addiw	s1,s1,-1
    800061dc:	0204c463          	bltz	s1,80006204 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800061e0:	fd040793          	addi	a5,s0,-48
    800061e4:	009787b3          	add	a5,a5,s1
    800061e8:	ff07c503          	lbu	a0,-16(a5)
    800061ec:	ffffb097          	auipc	ra,0xffffb
    800061f0:	424080e7          	jalr	1060(ra) # 80001610 <_Z4putcc>
    800061f4:	fe5ff06f          	j	800061d8 <_Z8printIntiii+0xbc>
        x = -xx;
    800061f8:	4090053b          	negw	a0,s1
        neg = 1;
    800061fc:	00100593          	li	a1,1
        x = -xx;
    80006200:	f7dff06f          	j	8000617c <_Z8printIntiii+0x60>

    UNLOCK();
    80006204:	00000613          	li	a2,0
    80006208:	00100593          	li	a1,1
    8000620c:	00007517          	auipc	a0,0x7
    80006210:	ef450513          	addi	a0,a0,-268 # 8000d100 <lockPrint>
    80006214:	ffffb097          	auipc	ra,0xffffb
    80006218:	020080e7          	jalr	32(ra) # 80001234 <copy_and_swap>
    8000621c:	fe0514e3          	bnez	a0,80006204 <_Z8printIntiii+0xe8>
    80006220:	03813083          	ld	ra,56(sp)
    80006224:	03013403          	ld	s0,48(sp)
    80006228:	02813483          	ld	s1,40(sp)
    8000622c:	02013903          	ld	s2,32(sp)
    80006230:	01813983          	ld	s3,24(sp)
    80006234:	04010113          	addi	sp,sp,64
    80006238:	00008067          	ret

000000008000623c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000623c:	fd010113          	addi	sp,sp,-48
    80006240:	02113423          	sd	ra,40(sp)
    80006244:	02813023          	sd	s0,32(sp)
    80006248:	00913c23          	sd	s1,24(sp)
    8000624c:	01213823          	sd	s2,16(sp)
    80006250:	01313423          	sd	s3,8(sp)
    80006254:	03010413          	addi	s0,sp,48
    80006258:	00050493          	mv	s1,a0
    8000625c:	00058913          	mv	s2,a1
    80006260:	0015879b          	addiw	a5,a1,1
    80006264:	0007851b          	sext.w	a0,a5
    80006268:	00f4a023          	sw	a5,0(s1)
    8000626c:	0004a823          	sw	zero,16(s1)
    80006270:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006274:	00251513          	slli	a0,a0,0x2
    80006278:	ffffb097          	auipc	ra,0xffffb
    8000627c:	fdc080e7          	jalr	-36(ra) # 80001254 <_Z9mem_allocm>
    80006280:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006284:	01000513          	li	a0,16
    80006288:	ffffc097          	auipc	ra,0xffffc
    8000628c:	2d0080e7          	jalr	720(ra) # 80002558 <_Znwm>
    80006290:	00050993          	mv	s3,a0
    80006294:	00000593          	li	a1,0
    80006298:	ffffc097          	auipc	ra,0xffffc
    8000629c:	574080e7          	jalr	1396(ra) # 8000280c <_ZN9SemaphoreC1Ej>
    800062a0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800062a4:	01000513          	li	a0,16
    800062a8:	ffffc097          	auipc	ra,0xffffc
    800062ac:	2b0080e7          	jalr	688(ra) # 80002558 <_Znwm>
    800062b0:	00050993          	mv	s3,a0
    800062b4:	00090593          	mv	a1,s2
    800062b8:	ffffc097          	auipc	ra,0xffffc
    800062bc:	554080e7          	jalr	1364(ra) # 8000280c <_ZN9SemaphoreC1Ej>
    800062c0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800062c4:	01000513          	li	a0,16
    800062c8:	ffffc097          	auipc	ra,0xffffc
    800062cc:	290080e7          	jalr	656(ra) # 80002558 <_Znwm>
    800062d0:	00050913          	mv	s2,a0
    800062d4:	00100593          	li	a1,1
    800062d8:	ffffc097          	auipc	ra,0xffffc
    800062dc:	534080e7          	jalr	1332(ra) # 8000280c <_ZN9SemaphoreC1Ej>
    800062e0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800062e4:	01000513          	li	a0,16
    800062e8:	ffffc097          	auipc	ra,0xffffc
    800062ec:	270080e7          	jalr	624(ra) # 80002558 <_Znwm>
    800062f0:	00050913          	mv	s2,a0
    800062f4:	00100593          	li	a1,1
    800062f8:	ffffc097          	auipc	ra,0xffffc
    800062fc:	514080e7          	jalr	1300(ra) # 8000280c <_ZN9SemaphoreC1Ej>
    80006300:	0324b823          	sd	s2,48(s1)
}
    80006304:	02813083          	ld	ra,40(sp)
    80006308:	02013403          	ld	s0,32(sp)
    8000630c:	01813483          	ld	s1,24(sp)
    80006310:	01013903          	ld	s2,16(sp)
    80006314:	00813983          	ld	s3,8(sp)
    80006318:	03010113          	addi	sp,sp,48
    8000631c:	00008067          	ret
    80006320:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80006324:	00098513          	mv	a0,s3
    80006328:	ffffc097          	auipc	ra,0xffffc
    8000632c:	280080e7          	jalr	640(ra) # 800025a8 <_ZdlPv>
    80006330:	00048513          	mv	a0,s1
    80006334:	00008097          	auipc	ra,0x8
    80006338:	ea4080e7          	jalr	-348(ra) # 8000e1d8 <_Unwind_Resume>
    8000633c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006340:	00098513          	mv	a0,s3
    80006344:	ffffc097          	auipc	ra,0xffffc
    80006348:	264080e7          	jalr	612(ra) # 800025a8 <_ZdlPv>
    8000634c:	00048513          	mv	a0,s1
    80006350:	00008097          	auipc	ra,0x8
    80006354:	e88080e7          	jalr	-376(ra) # 8000e1d8 <_Unwind_Resume>
    80006358:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000635c:	00090513          	mv	a0,s2
    80006360:	ffffc097          	auipc	ra,0xffffc
    80006364:	248080e7          	jalr	584(ra) # 800025a8 <_ZdlPv>
    80006368:	00048513          	mv	a0,s1
    8000636c:	00008097          	auipc	ra,0x8
    80006370:	e6c080e7          	jalr	-404(ra) # 8000e1d8 <_Unwind_Resume>
    80006374:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006378:	00090513          	mv	a0,s2
    8000637c:	ffffc097          	auipc	ra,0xffffc
    80006380:	22c080e7          	jalr	556(ra) # 800025a8 <_ZdlPv>
    80006384:	00048513          	mv	a0,s1
    80006388:	00008097          	auipc	ra,0x8
    8000638c:	e50080e7          	jalr	-432(ra) # 8000e1d8 <_Unwind_Resume>

0000000080006390 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006390:	fe010113          	addi	sp,sp,-32
    80006394:	00113c23          	sd	ra,24(sp)
    80006398:	00813823          	sd	s0,16(sp)
    8000639c:	00913423          	sd	s1,8(sp)
    800063a0:	01213023          	sd	s2,0(sp)
    800063a4:	02010413          	addi	s0,sp,32
    800063a8:	00050493          	mv	s1,a0
    800063ac:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800063b0:	01853503          	ld	a0,24(a0)
    800063b4:	ffffc097          	auipc	ra,0xffffc
    800063b8:	494080e7          	jalr	1172(ra) # 80002848 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800063bc:	0304b503          	ld	a0,48(s1)
    800063c0:	ffffc097          	auipc	ra,0xffffc
    800063c4:	488080e7          	jalr	1160(ra) # 80002848 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800063c8:	0084b783          	ld	a5,8(s1)
    800063cc:	0144a703          	lw	a4,20(s1)
    800063d0:	00271713          	slli	a4,a4,0x2
    800063d4:	00e787b3          	add	a5,a5,a4
    800063d8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800063dc:	0144a783          	lw	a5,20(s1)
    800063e0:	0017879b          	addiw	a5,a5,1
    800063e4:	0004a703          	lw	a4,0(s1)
    800063e8:	02e7e7bb          	remw	a5,a5,a4
    800063ec:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800063f0:	0304b503          	ld	a0,48(s1)
    800063f4:	ffffc097          	auipc	ra,0xffffc
    800063f8:	480080e7          	jalr	1152(ra) # 80002874 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800063fc:	0204b503          	ld	a0,32(s1)
    80006400:	ffffc097          	auipc	ra,0xffffc
    80006404:	474080e7          	jalr	1140(ra) # 80002874 <_ZN9Semaphore6signalEv>

}
    80006408:	01813083          	ld	ra,24(sp)
    8000640c:	01013403          	ld	s0,16(sp)
    80006410:	00813483          	ld	s1,8(sp)
    80006414:	00013903          	ld	s2,0(sp)
    80006418:	02010113          	addi	sp,sp,32
    8000641c:	00008067          	ret

0000000080006420 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006420:	fe010113          	addi	sp,sp,-32
    80006424:	00113c23          	sd	ra,24(sp)
    80006428:	00813823          	sd	s0,16(sp)
    8000642c:	00913423          	sd	s1,8(sp)
    80006430:	01213023          	sd	s2,0(sp)
    80006434:	02010413          	addi	s0,sp,32
    80006438:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000643c:	02053503          	ld	a0,32(a0)
    80006440:	ffffc097          	auipc	ra,0xffffc
    80006444:	408080e7          	jalr	1032(ra) # 80002848 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006448:	0284b503          	ld	a0,40(s1)
    8000644c:	ffffc097          	auipc	ra,0xffffc
    80006450:	3fc080e7          	jalr	1020(ra) # 80002848 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006454:	0084b703          	ld	a4,8(s1)
    80006458:	0104a783          	lw	a5,16(s1)
    8000645c:	00279693          	slli	a3,a5,0x2
    80006460:	00d70733          	add	a4,a4,a3
    80006464:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006468:	0017879b          	addiw	a5,a5,1
    8000646c:	0004a703          	lw	a4,0(s1)
    80006470:	02e7e7bb          	remw	a5,a5,a4
    80006474:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006478:	0284b503          	ld	a0,40(s1)
    8000647c:	ffffc097          	auipc	ra,0xffffc
    80006480:	3f8080e7          	jalr	1016(ra) # 80002874 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006484:	0184b503          	ld	a0,24(s1)
    80006488:	ffffc097          	auipc	ra,0xffffc
    8000648c:	3ec080e7          	jalr	1004(ra) # 80002874 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006490:	00090513          	mv	a0,s2
    80006494:	01813083          	ld	ra,24(sp)
    80006498:	01013403          	ld	s0,16(sp)
    8000649c:	00813483          	ld	s1,8(sp)
    800064a0:	00013903          	ld	s2,0(sp)
    800064a4:	02010113          	addi	sp,sp,32
    800064a8:	00008067          	ret

00000000800064ac <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800064ac:	fe010113          	addi	sp,sp,-32
    800064b0:	00113c23          	sd	ra,24(sp)
    800064b4:	00813823          	sd	s0,16(sp)
    800064b8:	00913423          	sd	s1,8(sp)
    800064bc:	01213023          	sd	s2,0(sp)
    800064c0:	02010413          	addi	s0,sp,32
    800064c4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800064c8:	02853503          	ld	a0,40(a0)
    800064cc:	ffffc097          	auipc	ra,0xffffc
    800064d0:	37c080e7          	jalr	892(ra) # 80002848 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800064d4:	0304b503          	ld	a0,48(s1)
    800064d8:	ffffc097          	auipc	ra,0xffffc
    800064dc:	370080e7          	jalr	880(ra) # 80002848 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800064e0:	0144a783          	lw	a5,20(s1)
    800064e4:	0104a903          	lw	s2,16(s1)
    800064e8:	0327ce63          	blt	a5,s2,80006524 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800064ec:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800064f0:	0304b503          	ld	a0,48(s1)
    800064f4:	ffffc097          	auipc	ra,0xffffc
    800064f8:	380080e7          	jalr	896(ra) # 80002874 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800064fc:	0284b503          	ld	a0,40(s1)
    80006500:	ffffc097          	auipc	ra,0xffffc
    80006504:	374080e7          	jalr	884(ra) # 80002874 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006508:	00090513          	mv	a0,s2
    8000650c:	01813083          	ld	ra,24(sp)
    80006510:	01013403          	ld	s0,16(sp)
    80006514:	00813483          	ld	s1,8(sp)
    80006518:	00013903          	ld	s2,0(sp)
    8000651c:	02010113          	addi	sp,sp,32
    80006520:	00008067          	ret
        ret = cap - head + tail;
    80006524:	0004a703          	lw	a4,0(s1)
    80006528:	4127093b          	subw	s2,a4,s2
    8000652c:	00f9093b          	addw	s2,s2,a5
    80006530:	fc1ff06f          	j	800064f0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006534 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006534:	fe010113          	addi	sp,sp,-32
    80006538:	00113c23          	sd	ra,24(sp)
    8000653c:	00813823          	sd	s0,16(sp)
    80006540:	00913423          	sd	s1,8(sp)
    80006544:	02010413          	addi	s0,sp,32
    80006548:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000654c:	00a00513          	li	a0,10
    80006550:	ffffc097          	auipc	ra,0xffffc
    80006554:	3e4080e7          	jalr	996(ra) # 80002934 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006558:	00004517          	auipc	a0,0x4
    8000655c:	e9050513          	addi	a0,a0,-368 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80006560:	00000097          	auipc	ra,0x0
    80006564:	a0c080e7          	jalr	-1524(ra) # 80005f6c <_Z11printStringPKc>
    while (getCnt()) {
    80006568:	00048513          	mv	a0,s1
    8000656c:	00000097          	auipc	ra,0x0
    80006570:	f40080e7          	jalr	-192(ra) # 800064ac <_ZN9BufferCPP6getCntEv>
    80006574:	02050c63          	beqz	a0,800065ac <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006578:	0084b783          	ld	a5,8(s1)
    8000657c:	0104a703          	lw	a4,16(s1)
    80006580:	00271713          	slli	a4,a4,0x2
    80006584:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006588:	0007c503          	lbu	a0,0(a5)
    8000658c:	ffffc097          	auipc	ra,0xffffc
    80006590:	3a8080e7          	jalr	936(ra) # 80002934 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006594:	0104a783          	lw	a5,16(s1)
    80006598:	0017879b          	addiw	a5,a5,1
    8000659c:	0004a703          	lw	a4,0(s1)
    800065a0:	02e7e7bb          	remw	a5,a5,a4
    800065a4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800065a8:	fc1ff06f          	j	80006568 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800065ac:	02100513          	li	a0,33
    800065b0:	ffffc097          	auipc	ra,0xffffc
    800065b4:	384080e7          	jalr	900(ra) # 80002934 <_ZN7Console4putcEc>
    Console::putc('\n');
    800065b8:	00a00513          	li	a0,10
    800065bc:	ffffc097          	auipc	ra,0xffffc
    800065c0:	378080e7          	jalr	888(ra) # 80002934 <_ZN7Console4putcEc>
    mem_free(buffer);
    800065c4:	0084b503          	ld	a0,8(s1)
    800065c8:	ffffb097          	auipc	ra,0xffffb
    800065cc:	cc8080e7          	jalr	-824(ra) # 80001290 <_Z8mem_freePv>
    delete itemAvailable;
    800065d0:	0204b503          	ld	a0,32(s1)
    800065d4:	00050863          	beqz	a0,800065e4 <_ZN9BufferCPPD1Ev+0xb0>
    800065d8:	00053783          	ld	a5,0(a0)
    800065dc:	0087b783          	ld	a5,8(a5)
    800065e0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800065e4:	0184b503          	ld	a0,24(s1)
    800065e8:	00050863          	beqz	a0,800065f8 <_ZN9BufferCPPD1Ev+0xc4>
    800065ec:	00053783          	ld	a5,0(a0)
    800065f0:	0087b783          	ld	a5,8(a5)
    800065f4:	000780e7          	jalr	a5
    delete mutexTail;
    800065f8:	0304b503          	ld	a0,48(s1)
    800065fc:	00050863          	beqz	a0,8000660c <_ZN9BufferCPPD1Ev+0xd8>
    80006600:	00053783          	ld	a5,0(a0)
    80006604:	0087b783          	ld	a5,8(a5)
    80006608:	000780e7          	jalr	a5
    delete mutexHead;
    8000660c:	0284b503          	ld	a0,40(s1)
    80006610:	00050863          	beqz	a0,80006620 <_ZN9BufferCPPD1Ev+0xec>
    80006614:	00053783          	ld	a5,0(a0)
    80006618:	0087b783          	ld	a5,8(a5)
    8000661c:	000780e7          	jalr	a5
}
    80006620:	01813083          	ld	ra,24(sp)
    80006624:	01013403          	ld	s0,16(sp)
    80006628:	00813483          	ld	s1,8(sp)
    8000662c:	02010113          	addi	sp,sp,32
    80006630:	00008067          	ret

0000000080006634 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006634:	fe010113          	addi	sp,sp,-32
    80006638:	00113c23          	sd	ra,24(sp)
    8000663c:	00813823          	sd	s0,16(sp)
    80006640:	00913423          	sd	s1,8(sp)
    80006644:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006648:	00004517          	auipc	a0,0x4
    8000664c:	db850513          	addi	a0,a0,-584 # 8000a400 <CONSOLE_STATUS+0x3f0>
    80006650:	00000097          	auipc	ra,0x0
    80006654:	91c080e7          	jalr	-1764(ra) # 80005f6c <_Z11printStringPKc>
    int test = getc() - '0';
    80006658:	ffffb097          	auipc	ra,0xffffb
    8000665c:	f84080e7          	jalr	-124(ra) # 800015dc <_Z4getcv>
    80006660:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	f78080e7          	jalr	-136(ra) # 800015dc <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000666c:	00900793          	li	a5,9
    80006670:	1297ee63          	bltu	a5,s1,800067ac <_Z8userMainv+0x178>
    80006674:	00249493          	slli	s1,s1,0x2
    80006678:	00004717          	auipc	a4,0x4
    8000667c:	01870713          	addi	a4,a4,24 # 8000a690 <CONSOLE_STATUS+0x680>
    80006680:	00e484b3          	add	s1,s1,a4
    80006684:	0004a783          	lw	a5,0(s1)
    80006688:	00e787b3          	add	a5,a5,a4
    8000668c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006690:	fffff097          	auipc	ra,0xfffff
    80006694:	f54080e7          	jalr	-172(ra) # 800055e4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006698:	00004517          	auipc	a0,0x4
    8000669c:	d8850513          	addi	a0,a0,-632 # 8000a420 <CONSOLE_STATUS+0x410>
    800066a0:	00000097          	auipc	ra,0x0
    800066a4:	8cc080e7          	jalr	-1844(ra) # 80005f6c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800066a8:	01813083          	ld	ra,24(sp)
    800066ac:	01013403          	ld	s0,16(sp)
    800066b0:	00813483          	ld	s1,8(sp)
    800066b4:	02010113          	addi	sp,sp,32
    800066b8:	00008067          	ret
            Threads_CPP_API_test();
    800066bc:	ffffe097          	auipc	ra,0xffffe
    800066c0:	e08080e7          	jalr	-504(ra) # 800044c4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800066c4:	00004517          	auipc	a0,0x4
    800066c8:	d9c50513          	addi	a0,a0,-612 # 8000a460 <CONSOLE_STATUS+0x450>
    800066cc:	00000097          	auipc	ra,0x0
    800066d0:	8a0080e7          	jalr	-1888(ra) # 80005f6c <_Z11printStringPKc>
            break;
    800066d4:	fd5ff06f          	j	800066a8 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800066d8:	ffffd097          	auipc	ra,0xffffd
    800066dc:	324080e7          	jalr	804(ra) # 800039fc <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800066e0:	00004517          	auipc	a0,0x4
    800066e4:	dc050513          	addi	a0,a0,-576 # 8000a4a0 <CONSOLE_STATUS+0x490>
    800066e8:	00000097          	auipc	ra,0x0
    800066ec:	884080e7          	jalr	-1916(ra) # 80005f6c <_Z11printStringPKc>
            break;
    800066f0:	fb9ff06f          	j	800066a8 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800066f4:	fffff097          	auipc	ra,0xfffff
    800066f8:	234080e7          	jalr	564(ra) # 80005928 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800066fc:	00004517          	auipc	a0,0x4
    80006700:	df450513          	addi	a0,a0,-524 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    80006704:	00000097          	auipc	ra,0x0
    80006708:	868080e7          	jalr	-1944(ra) # 80005f6c <_Z11printStringPKc>
            break;
    8000670c:	f9dff06f          	j	800066a8 <_Z8userMainv+0x74>
            testSleeping();
    80006710:	00000097          	auipc	ra,0x0
    80006714:	154080e7          	jalr	340(ra) # 80006864 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006718:	00004517          	auipc	a0,0x4
    8000671c:	e3050513          	addi	a0,a0,-464 # 8000a548 <CONSOLE_STATUS+0x538>
    80006720:	00000097          	auipc	ra,0x0
    80006724:	84c080e7          	jalr	-1972(ra) # 80005f6c <_Z11printStringPKc>
            break;
    80006728:	f81ff06f          	j	800066a8 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000672c:	ffffe097          	auipc	ra,0xffffe
    80006730:	258080e7          	jalr	600(ra) # 80004984 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006734:	00004517          	auipc	a0,0x4
    80006738:	e4450513          	addi	a0,a0,-444 # 8000a578 <CONSOLE_STATUS+0x568>
    8000673c:	00000097          	auipc	ra,0x0
    80006740:	830080e7          	jalr	-2000(ra) # 80005f6c <_Z11printStringPKc>
            break;
    80006744:	f65ff06f          	j	800066a8 <_Z8userMainv+0x74>
            System_Mode_test();
    80006748:	00001097          	auipc	ra,0x1
    8000674c:	928080e7          	jalr	-1752(ra) # 80007070 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006750:	00004517          	auipc	a0,0x4
    80006754:	e6850513          	addi	a0,a0,-408 # 8000a5b8 <CONSOLE_STATUS+0x5a8>
    80006758:	00000097          	auipc	ra,0x0
    8000675c:	814080e7          	jalr	-2028(ra) # 80005f6c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006760:	00004517          	auipc	a0,0x4
    80006764:	e7850513          	addi	a0,a0,-392 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80006768:	00000097          	auipc	ra,0x0
    8000676c:	804080e7          	jalr	-2044(ra) # 80005f6c <_Z11printStringPKc>
            break;
    80006770:	f39ff06f          	j	800066a8 <_Z8userMainv+0x74>
            modif_MatrixMax();
    80006774:	ffffd097          	auipc	ra,0xffffd
    80006778:	558080e7          	jalr	1368(ra) # 80003ccc <_Z15modif_MatrixMaxv>
            printString("TEST 8 (Max from Matrix)\n");
    8000677c:	00004517          	auipc	a0,0x4
    80006780:	eb450513          	addi	a0,a0,-332 # 8000a630 <CONSOLE_STATUS+0x620>
    80006784:	fffff097          	auipc	ra,0xfffff
    80006788:	7e8080e7          	jalr	2024(ra) # 80005f6c <_Z11printStringPKc>
            break;
    8000678c:	f1dff06f          	j	800066a8 <_Z8userMainv+0x74>
            setMaxThreads();
    80006790:	00000097          	auipc	ra,0x0
    80006794:	15c080e7          	jalr	348(ra) # 800068ec <_Z13setMaxThreadsv>
            printString("TEST 9 (setMaxThreads)\n");
    80006798:	00004517          	auipc	a0,0x4
    8000679c:	eb850513          	addi	a0,a0,-328 # 8000a650 <CONSOLE_STATUS+0x640>
    800067a0:	fffff097          	auipc	ra,0xfffff
    800067a4:	7cc080e7          	jalr	1996(ra) # 80005f6c <_Z11printStringPKc>
            break;
    800067a8:	f01ff06f          	j	800066a8 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800067ac:	00004517          	auipc	a0,0x4
    800067b0:	ebc50513          	addi	a0,a0,-324 # 8000a668 <CONSOLE_STATUS+0x658>
    800067b4:	fffff097          	auipc	ra,0xfffff
    800067b8:	7b8080e7          	jalr	1976(ra) # 80005f6c <_Z11printStringPKc>
    800067bc:	eedff06f          	j	800066a8 <_Z8userMainv+0x74>

00000000800067c0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800067c0:	fe010113          	addi	sp,sp,-32
    800067c4:	00113c23          	sd	ra,24(sp)
    800067c8:	00813823          	sd	s0,16(sp)
    800067cc:	00913423          	sd	s1,8(sp)
    800067d0:	01213023          	sd	s2,0(sp)
    800067d4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800067d8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800067dc:	00600493          	li	s1,6
    while (--i > 0) {
    800067e0:	fff4849b          	addiw	s1,s1,-1
    800067e4:	04905463          	blez	s1,8000682c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800067e8:	00004517          	auipc	a0,0x4
    800067ec:	ed050513          	addi	a0,a0,-304 # 8000a6b8 <CONSOLE_STATUS+0x6a8>
    800067f0:	fffff097          	auipc	ra,0xfffff
    800067f4:	77c080e7          	jalr	1916(ra) # 80005f6c <_Z11printStringPKc>
        printInt(sleep_time);
    800067f8:	00000613          	li	a2,0
    800067fc:	00a00593          	li	a1,10
    80006800:	0009051b          	sext.w	a0,s2
    80006804:	00000097          	auipc	ra,0x0
    80006808:	918080e7          	jalr	-1768(ra) # 8000611c <_Z8printIntiii>
        printString(" !\n");
    8000680c:	00004517          	auipc	a0,0x4
    80006810:	eb450513          	addi	a0,a0,-332 # 8000a6c0 <CONSOLE_STATUS+0x6b0>
    80006814:	fffff097          	auipc	ra,0xfffff
    80006818:	758080e7          	jalr	1880(ra) # 80005f6c <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000681c:	00090513          	mv	a0,s2
    80006820:	ffffb097          	auipc	ra,0xffffb
    80006824:	d84080e7          	jalr	-636(ra) # 800015a4 <_Z10time_sleepm>
    while (--i > 0) {
    80006828:	fb9ff06f          	j	800067e0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000682c:	00a00793          	li	a5,10
    80006830:	02f95933          	divu	s2,s2,a5
    80006834:	fff90913          	addi	s2,s2,-1
    80006838:	00007797          	auipc	a5,0x7
    8000683c:	8d078793          	addi	a5,a5,-1840 # 8000d108 <_ZL8finished>
    80006840:	01278933          	add	s2,a5,s2
    80006844:	00100793          	li	a5,1
    80006848:	00f90023          	sb	a5,0(s2)
}
    8000684c:	01813083          	ld	ra,24(sp)
    80006850:	01013403          	ld	s0,16(sp)
    80006854:	00813483          	ld	s1,8(sp)
    80006858:	00013903          	ld	s2,0(sp)
    8000685c:	02010113          	addi	sp,sp,32
    80006860:	00008067          	ret

0000000080006864 <_Z12testSleepingv>:

void testSleeping() {
    80006864:	fc010113          	addi	sp,sp,-64
    80006868:	02113c23          	sd	ra,56(sp)
    8000686c:	02813823          	sd	s0,48(sp)
    80006870:	02913423          	sd	s1,40(sp)
    80006874:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006878:	00a00793          	li	a5,10
    8000687c:	fcf43823          	sd	a5,-48(s0)
    80006880:	01400793          	li	a5,20
    80006884:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006888:	00000493          	li	s1,0
    8000688c:	02c0006f          	j	800068b8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006890:	00349793          	slli	a5,s1,0x3
    80006894:	fd040613          	addi	a2,s0,-48
    80006898:	00f60633          	add	a2,a2,a5
    8000689c:	00000597          	auipc	a1,0x0
    800068a0:	f2458593          	addi	a1,a1,-220 # 800067c0 <_ZL9sleepyRunPv>
    800068a4:	fc040513          	addi	a0,s0,-64
    800068a8:	00f50533          	add	a0,a0,a5
    800068ac:	ffffb097          	auipc	ra,0xffffb
    800068b0:	a7c080e7          	jalr	-1412(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800068b4:	0014849b          	addiw	s1,s1,1
    800068b8:	00100793          	li	a5,1
    800068bc:	fc97dae3          	bge	a5,s1,80006890 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800068c0:	00007797          	auipc	a5,0x7
    800068c4:	8487c783          	lbu	a5,-1976(a5) # 8000d108 <_ZL8finished>
    800068c8:	fe078ce3          	beqz	a5,800068c0 <_Z12testSleepingv+0x5c>
    800068cc:	00007797          	auipc	a5,0x7
    800068d0:	83d7c783          	lbu	a5,-1987(a5) # 8000d109 <_ZL8finished+0x1>
    800068d4:	fe0786e3          	beqz	a5,800068c0 <_Z12testSleepingv+0x5c>
}
    800068d8:	03813083          	ld	ra,56(sp)
    800068dc:	03013403          	ld	s0,48(sp)
    800068e0:	02813483          	ld	s1,40(sp)
    800068e4:	04010113          	addi	sp,sp,64
    800068e8:	00008067          	ret

00000000800068ec <_Z13setMaxThreadsv>:
            sleep(10);
        }
        sem->signal();
    }
};
void setMaxThreads(){
    800068ec:	f3010113          	addi	sp,sp,-208
    800068f0:	0c113423          	sd	ra,200(sp)
    800068f4:	0c813023          	sd	s0,192(sp)
    800068f8:	0a913c23          	sd	s1,184(sp)
    800068fc:	0b213823          	sd	s2,176(sp)
    80006900:	0b313423          	sd	s3,168(sp)
    80006904:	0d010413          	addi	s0,sp,208

    Thread::SetMaximumThreads(3,20,10);
    80006908:	00a00613          	li	a2,10
    8000690c:	01400593          	li	a1,20
    80006910:	00300513          	li	a0,3
    80006914:	ffffc097          	auipc	ra,0xffffc
    80006918:	ec8080e7          	jalr	-312(ra) # 800027dc <_ZN6Thread17SetMaximumThreadsEiii>
    Semaphore* waitForAll = new Semaphore(0);
    8000691c:	01000513          	li	a0,16
    80006920:	ffffc097          	auipc	ra,0xffffc
    80006924:	c38080e7          	jalr	-968(ra) # 80002558 <_Znwm>
    80006928:	00050993          	mv	s3,a0
    8000692c:	00000593          	li	a1,0
    80006930:	ffffc097          	auipc	ra,0xffffc
    80006934:	edc080e7          	jalr	-292(ra) # 8000280c <_ZN9SemaphoreC1Ej>
    Thread* threads[20];
    for(int i=0; i<20;i++){
    80006938:	00000913          	li	s2,0
    8000693c:	0300006f          	j	8000696c <_Z13setMaxThreadsv+0x80>
    A(int id,Semaphore* sem) : Thread(), id(id) ,sem(sem),finished(false){}
    80006940:	00006797          	auipc	a5,0x6
    80006944:	54878793          	addi	a5,a5,1352 # 8000ce88 <_ZTV1A+0x10>
    80006948:	00f4b023          	sd	a5,0(s1)
    8000694c:	0324a023          	sw	s2,32(s1)
    80006950:	0334b423          	sd	s3,40(s1)
    80006954:	02048823          	sb	zero,48(s1)
        threads[i]= new A(i,waitForAll);
    80006958:	00391793          	slli	a5,s2,0x3
    8000695c:	fd040713          	addi	a4,s0,-48
    80006960:	00f707b3          	add	a5,a4,a5
    80006964:	f697b023          	sd	s1,-160(a5)
    for(int i=0; i<20;i++){
    80006968:	0019091b          	addiw	s2,s2,1
    8000696c:	01300793          	li	a5,19
    80006970:	0327c063          	blt	a5,s2,80006990 <_Z13setMaxThreadsv+0xa4>
        threads[i]= new A(i,waitForAll);
    80006974:	03800513          	li	a0,56
    80006978:	ffffc097          	auipc	ra,0xffffc
    8000697c:	be0080e7          	jalr	-1056(ra) # 80002558 <_Znwm>
    80006980:	00050493          	mv	s1,a0
    A(int id,Semaphore* sem) : Thread(), id(id) ,sem(sem),finished(false){}
    80006984:	ffffc097          	auipc	ra,0xffffc
    80006988:	d0c080e7          	jalr	-756(ra) # 80002690 <_ZN6ThreadC1Ev>
    8000698c:	fb5ff06f          	j	80006940 <_Z13setMaxThreadsv+0x54>
    }
    for(int i=0;i<20;i++){
    80006990:	00000493          	li	s1,0
    80006994:	0200006f          	j	800069b4 <_Z13setMaxThreadsv+0xc8>
        threads[i]->start();
    80006998:	00349793          	slli	a5,s1,0x3
    8000699c:	fd040713          	addi	a4,s0,-48
    800069a0:	00f707b3          	add	a5,a4,a5
    800069a4:	f607b503          	ld	a0,-160(a5)
    800069a8:	ffffc097          	auipc	ra,0xffffc
    800069ac:	d48080e7          	jalr	-696(ra) # 800026f0 <_ZN6Thread5startEv>
    for(int i=0;i<20;i++){
    800069b0:	0014849b          	addiw	s1,s1,1
    800069b4:	01300793          	li	a5,19
    800069b8:	fe97d0e3          	bge	a5,s1,80006998 <_Z13setMaxThreadsv+0xac>
    }
    for(int i=0;i<20;i++) waitForAll->wait();
    800069bc:	00000493          	li	s1,0
    800069c0:	0140006f          	j	800069d4 <_Z13setMaxThreadsv+0xe8>
    800069c4:	00098513          	mv	a0,s3
    800069c8:	ffffc097          	auipc	ra,0xffffc
    800069cc:	e80080e7          	jalr	-384(ra) # 80002848 <_ZN9Semaphore4waitEv>
    800069d0:	0014849b          	addiw	s1,s1,1
    800069d4:	01300793          	li	a5,19
    800069d8:	fe97d6e3          	bge	a5,s1,800069c4 <_Z13setMaxThreadsv+0xd8>
    delete waitForAll;
    800069dc:	00098a63          	beqz	s3,800069f0 <_Z13setMaxThreadsv+0x104>
    800069e0:	0009b783          	ld	a5,0(s3)
    800069e4:	0087b783          	ld	a5,8(a5)
    800069e8:	00098513          	mv	a0,s3
    800069ec:	000780e7          	jalr	a5

    printString("Gotovo! \n");
    800069f0:	00004517          	auipc	a0,0x4
    800069f4:	ce850513          	addi	a0,a0,-792 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    800069f8:	fffff097          	auipc	ra,0xfffff
    800069fc:	574080e7          	jalr	1396(ra) # 80005f6c <_Z11printStringPKc>
    80006a00:	0c813083          	ld	ra,200(sp)
    80006a04:	0c013403          	ld	s0,192(sp)
    80006a08:	0b813483          	ld	s1,184(sp)
    80006a0c:	0b013903          	ld	s2,176(sp)
    80006a10:	0a813983          	ld	s3,168(sp)
    80006a14:	0d010113          	addi	sp,sp,208
    80006a18:	00008067          	ret
    80006a1c:	00050493          	mv	s1,a0
    Semaphore* waitForAll = new Semaphore(0);
    80006a20:	00098513          	mv	a0,s3
    80006a24:	ffffc097          	auipc	ra,0xffffc
    80006a28:	b84080e7          	jalr	-1148(ra) # 800025a8 <_ZdlPv>
    80006a2c:	00048513          	mv	a0,s1
    80006a30:	00007097          	auipc	ra,0x7
    80006a34:	7a8080e7          	jalr	1960(ra) # 8000e1d8 <_Unwind_Resume>
    80006a38:	00050913          	mv	s2,a0
        threads[i]= new A(i,waitForAll);
    80006a3c:	00048513          	mv	a0,s1
    80006a40:	ffffc097          	auipc	ra,0xffffc
    80006a44:	b68080e7          	jalr	-1176(ra) # 800025a8 <_ZdlPv>
    80006a48:	00090513          	mv	a0,s2
    80006a4c:	00007097          	auipc	ra,0x7
    80006a50:	78c080e7          	jalr	1932(ra) # 8000e1d8 <_Unwind_Resume>

0000000080006a54 <_ZN1A3runEv>:
    void run() override{
    80006a54:	fe010113          	addi	sp,sp,-32
    80006a58:	00113c23          	sd	ra,24(sp)
    80006a5c:	00813823          	sd	s0,16(sp)
    80006a60:	00913423          	sd	s1,8(sp)
    80006a64:	02010413          	addi	s0,sp,32
    80006a68:	00050493          	mv	s1,a0
        work();
    80006a6c:	0100006f          	j	80006a7c <_ZN1A3runEv+0x28>
            sleep(10);
    80006a70:	00a00513          	li	a0,10
    80006a74:	ffffc097          	auipc	ra,0xffffc
    80006a78:	cec080e7          	jalr	-788(ra) # 80002760 <_ZN6Thread5sleepEm>
        while(ThreadEnd)
    80006a7c:	00006797          	auipc	a5,0x6
    80006a80:	3f87a783          	lw	a5,1016(a5) # 8000ce74 <_ZL9ThreadEnd>
    80006a84:	06078063          	beqz	a5,80006ae4 <_ZN1A3runEv+0x90>
            printString("Nit broj: ");
    80006a88:	00004517          	auipc	a0,0x4
    80006a8c:	c4050513          	addi	a0,a0,-960 # 8000a6c8 <CONSOLE_STATUS+0x6b8>
    80006a90:	fffff097          	auipc	ra,0xfffff
    80006a94:	4dc080e7          	jalr	1244(ra) # 80005f6c <_Z11printStringPKc>
            printInt(id);
    80006a98:	00000613          	li	a2,0
    80006a9c:	00a00593          	li	a1,10
    80006aa0:	0204a503          	lw	a0,32(s1)
    80006aa4:	fffff097          	auipc	ra,0xfffff
    80006aa8:	678080e7          	jalr	1656(ra) # 8000611c <_Z8printIntiii>
            printString("\n");
    80006aac:	00004517          	auipc	a0,0x4
    80006ab0:	c3450513          	addi	a0,a0,-972 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006ab4:	fffff097          	auipc	ra,0xfffff
    80006ab8:	4b8080e7          	jalr	1208(ra) # 80005f6c <_Z11printStringPKc>
            if(!finished){
    80006abc:	0304c783          	lbu	a5,48(s1)
    80006ac0:	fa0798e3          	bnez	a5,80006a70 <_ZN1A3runEv+0x1c>
                ThreadEnd--;
    80006ac4:	00006717          	auipc	a4,0x6
    80006ac8:	3b070713          	addi	a4,a4,944 # 8000ce74 <_ZL9ThreadEnd>
    80006acc:	00072783          	lw	a5,0(a4)
    80006ad0:	fff7879b          	addiw	a5,a5,-1
    80006ad4:	00f72023          	sw	a5,0(a4)
                finished=true;
    80006ad8:	00100793          	li	a5,1
    80006adc:	02f48823          	sb	a5,48(s1)
    80006ae0:	f91ff06f          	j	80006a70 <_ZN1A3runEv+0x1c>
        sem->signal();
    80006ae4:	0284b503          	ld	a0,40(s1)
    80006ae8:	ffffc097          	auipc	ra,0xffffc
    80006aec:	d8c080e7          	jalr	-628(ra) # 80002874 <_ZN9Semaphore6signalEv>
    }
    80006af0:	01813083          	ld	ra,24(sp)
    80006af4:	01013403          	ld	s0,16(sp)
    80006af8:	00813483          	ld	s1,8(sp)
    80006afc:	02010113          	addi	sp,sp,32
    80006b00:	00008067          	ret

0000000080006b04 <_ZN1AD1Ev>:
class A : public Thread{
    80006b04:	ff010113          	addi	sp,sp,-16
    80006b08:	00113423          	sd	ra,8(sp)
    80006b0c:	00813023          	sd	s0,0(sp)
    80006b10:	01010413          	addi	s0,sp,16
    80006b14:	00006797          	auipc	a5,0x6
    80006b18:	37478793          	addi	a5,a5,884 # 8000ce88 <_ZTV1A+0x10>
    80006b1c:	00f53023          	sd	a5,0(a0)
    80006b20:	ffffc097          	auipc	ra,0xffffc
    80006b24:	9e8080e7          	jalr	-1560(ra) # 80002508 <_ZN6ThreadD1Ev>
    80006b28:	00813083          	ld	ra,8(sp)
    80006b2c:	00013403          	ld	s0,0(sp)
    80006b30:	01010113          	addi	sp,sp,16
    80006b34:	00008067          	ret

0000000080006b38 <_ZN1AD0Ev>:
    80006b38:	fe010113          	addi	sp,sp,-32
    80006b3c:	00113c23          	sd	ra,24(sp)
    80006b40:	00813823          	sd	s0,16(sp)
    80006b44:	00913423          	sd	s1,8(sp)
    80006b48:	02010413          	addi	s0,sp,32
    80006b4c:	00050493          	mv	s1,a0
    80006b50:	00006797          	auipc	a5,0x6
    80006b54:	33878793          	addi	a5,a5,824 # 8000ce88 <_ZTV1A+0x10>
    80006b58:	00f53023          	sd	a5,0(a0)
    80006b5c:	ffffc097          	auipc	ra,0xffffc
    80006b60:	9ac080e7          	jalr	-1620(ra) # 80002508 <_ZN6ThreadD1Ev>
    80006b64:	00048513          	mv	a0,s1
    80006b68:	ffffc097          	auipc	ra,0xffffc
    80006b6c:	a40080e7          	jalr	-1472(ra) # 800025a8 <_ZdlPv>
    80006b70:	01813083          	ld	ra,24(sp)
    80006b74:	01013403          	ld	s0,16(sp)
    80006b78:	00813483          	ld	s1,8(sp)
    80006b7c:	02010113          	addi	sp,sp,32
    80006b80:	00008067          	ret

0000000080006b84 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006b84:	fe010113          	addi	sp,sp,-32
    80006b88:	00113c23          	sd	ra,24(sp)
    80006b8c:	00813823          	sd	s0,16(sp)
    80006b90:	00913423          	sd	s1,8(sp)
    80006b94:	01213023          	sd	s2,0(sp)
    80006b98:	02010413          	addi	s0,sp,32
    80006b9c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006ba0:	00100793          	li	a5,1
    80006ba4:	02a7f863          	bgeu	a5,a0,80006bd4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006ba8:	00a00793          	li	a5,10
    80006bac:	02f577b3          	remu	a5,a0,a5
    80006bb0:	02078e63          	beqz	a5,80006bec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006bb4:	fff48513          	addi	a0,s1,-1
    80006bb8:	00000097          	auipc	ra,0x0
    80006bbc:	fcc080e7          	jalr	-52(ra) # 80006b84 <_ZL9fibonaccim>
    80006bc0:	00050913          	mv	s2,a0
    80006bc4:	ffe48513          	addi	a0,s1,-2
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	fbc080e7          	jalr	-68(ra) # 80006b84 <_ZL9fibonaccim>
    80006bd0:	00a90533          	add	a0,s2,a0
}
    80006bd4:	01813083          	ld	ra,24(sp)
    80006bd8:	01013403          	ld	s0,16(sp)
    80006bdc:	00813483          	ld	s1,8(sp)
    80006be0:	00013903          	ld	s2,0(sp)
    80006be4:	02010113          	addi	sp,sp,32
    80006be8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006bec:	ffffa097          	auipc	ra,0xffffa
    80006bf0:	7f8080e7          	jalr	2040(ra) # 800013e4 <_Z15thread_dispatchv>
    80006bf4:	fc1ff06f          	j	80006bb4 <_ZL9fibonaccim+0x30>

0000000080006bf8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006bf8:	fe010113          	addi	sp,sp,-32
    80006bfc:	00113c23          	sd	ra,24(sp)
    80006c00:	00813823          	sd	s0,16(sp)
    80006c04:	00913423          	sd	s1,8(sp)
    80006c08:	01213023          	sd	s2,0(sp)
    80006c0c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006c10:	00a00493          	li	s1,10
    80006c14:	0400006f          	j	80006c54 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006c18:	00003517          	auipc	a0,0x3
    80006c1c:	73850513          	addi	a0,a0,1848 # 8000a350 <CONSOLE_STATUS+0x340>
    80006c20:	fffff097          	auipc	ra,0xfffff
    80006c24:	34c080e7          	jalr	844(ra) # 80005f6c <_Z11printStringPKc>
    80006c28:	00000613          	li	a2,0
    80006c2c:	00a00593          	li	a1,10
    80006c30:	00048513          	mv	a0,s1
    80006c34:	fffff097          	auipc	ra,0xfffff
    80006c38:	4e8080e7          	jalr	1256(ra) # 8000611c <_Z8printIntiii>
    80006c3c:	00004517          	auipc	a0,0x4
    80006c40:	aa450513          	addi	a0,a0,-1372 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006c44:	fffff097          	auipc	ra,0xfffff
    80006c48:	328080e7          	jalr	808(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006c4c:	0014849b          	addiw	s1,s1,1
    80006c50:	0ff4f493          	andi	s1,s1,255
    80006c54:	00c00793          	li	a5,12
    80006c58:	fc97f0e3          	bgeu	a5,s1,80006c18 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006c5c:	00003517          	auipc	a0,0x3
    80006c60:	6fc50513          	addi	a0,a0,1788 # 8000a358 <CONSOLE_STATUS+0x348>
    80006c64:	fffff097          	auipc	ra,0xfffff
    80006c68:	308080e7          	jalr	776(ra) # 80005f6c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006c6c:	00500313          	li	t1,5
    thread_dispatch();
    80006c70:	ffffa097          	auipc	ra,0xffffa
    80006c74:	774080e7          	jalr	1908(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006c78:	01000513          	li	a0,16
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	f08080e7          	jalr	-248(ra) # 80006b84 <_ZL9fibonaccim>
    80006c84:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006c88:	00003517          	auipc	a0,0x3
    80006c8c:	6e050513          	addi	a0,a0,1760 # 8000a368 <CONSOLE_STATUS+0x358>
    80006c90:	fffff097          	auipc	ra,0xfffff
    80006c94:	2dc080e7          	jalr	732(ra) # 80005f6c <_Z11printStringPKc>
    80006c98:	00000613          	li	a2,0
    80006c9c:	00a00593          	li	a1,10
    80006ca0:	0009051b          	sext.w	a0,s2
    80006ca4:	fffff097          	auipc	ra,0xfffff
    80006ca8:	478080e7          	jalr	1144(ra) # 8000611c <_Z8printIntiii>
    80006cac:	00004517          	auipc	a0,0x4
    80006cb0:	a3450513          	addi	a0,a0,-1484 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006cb4:	fffff097          	auipc	ra,0xfffff
    80006cb8:	2b8080e7          	jalr	696(ra) # 80005f6c <_Z11printStringPKc>
    80006cbc:	0400006f          	j	80006cfc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006cc0:	00003517          	auipc	a0,0x3
    80006cc4:	69050513          	addi	a0,a0,1680 # 8000a350 <CONSOLE_STATUS+0x340>
    80006cc8:	fffff097          	auipc	ra,0xfffff
    80006ccc:	2a4080e7          	jalr	676(ra) # 80005f6c <_Z11printStringPKc>
    80006cd0:	00000613          	li	a2,0
    80006cd4:	00a00593          	li	a1,10
    80006cd8:	00048513          	mv	a0,s1
    80006cdc:	fffff097          	auipc	ra,0xfffff
    80006ce0:	440080e7          	jalr	1088(ra) # 8000611c <_Z8printIntiii>
    80006ce4:	00004517          	auipc	a0,0x4
    80006ce8:	9fc50513          	addi	a0,a0,-1540 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006cec:	fffff097          	auipc	ra,0xfffff
    80006cf0:	280080e7          	jalr	640(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006cf4:	0014849b          	addiw	s1,s1,1
    80006cf8:	0ff4f493          	andi	s1,s1,255
    80006cfc:	00f00793          	li	a5,15
    80006d00:	fc97f0e3          	bgeu	a5,s1,80006cc0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006d04:	00003517          	auipc	a0,0x3
    80006d08:	67450513          	addi	a0,a0,1652 # 8000a378 <CONSOLE_STATUS+0x368>
    80006d0c:	fffff097          	auipc	ra,0xfffff
    80006d10:	260080e7          	jalr	608(ra) # 80005f6c <_Z11printStringPKc>
    finishedD = true;
    80006d14:	00100793          	li	a5,1
    80006d18:	00006717          	auipc	a4,0x6
    80006d1c:	3ef70923          	sb	a5,1010(a4) # 8000d10a <_ZL9finishedD>
    thread_dispatch();
    80006d20:	ffffa097          	auipc	ra,0xffffa
    80006d24:	6c4080e7          	jalr	1732(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80006d28:	01813083          	ld	ra,24(sp)
    80006d2c:	01013403          	ld	s0,16(sp)
    80006d30:	00813483          	ld	s1,8(sp)
    80006d34:	00013903          	ld	s2,0(sp)
    80006d38:	02010113          	addi	sp,sp,32
    80006d3c:	00008067          	ret

0000000080006d40 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006d40:	fe010113          	addi	sp,sp,-32
    80006d44:	00113c23          	sd	ra,24(sp)
    80006d48:	00813823          	sd	s0,16(sp)
    80006d4c:	00913423          	sd	s1,8(sp)
    80006d50:	01213023          	sd	s2,0(sp)
    80006d54:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006d58:	00000493          	li	s1,0
    80006d5c:	0400006f          	j	80006d9c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006d60:	00003517          	auipc	a0,0x3
    80006d64:	5c050513          	addi	a0,a0,1472 # 8000a320 <CONSOLE_STATUS+0x310>
    80006d68:	fffff097          	auipc	ra,0xfffff
    80006d6c:	204080e7          	jalr	516(ra) # 80005f6c <_Z11printStringPKc>
    80006d70:	00000613          	li	a2,0
    80006d74:	00a00593          	li	a1,10
    80006d78:	00048513          	mv	a0,s1
    80006d7c:	fffff097          	auipc	ra,0xfffff
    80006d80:	3a0080e7          	jalr	928(ra) # 8000611c <_Z8printIntiii>
    80006d84:	00004517          	auipc	a0,0x4
    80006d88:	95c50513          	addi	a0,a0,-1700 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006d8c:	fffff097          	auipc	ra,0xfffff
    80006d90:	1e0080e7          	jalr	480(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006d94:	0014849b          	addiw	s1,s1,1
    80006d98:	0ff4f493          	andi	s1,s1,255
    80006d9c:	00200793          	li	a5,2
    80006da0:	fc97f0e3          	bgeu	a5,s1,80006d60 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006da4:	00003517          	auipc	a0,0x3
    80006da8:	58450513          	addi	a0,a0,1412 # 8000a328 <CONSOLE_STATUS+0x318>
    80006dac:	fffff097          	auipc	ra,0xfffff
    80006db0:	1c0080e7          	jalr	448(ra) # 80005f6c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006db4:	00700313          	li	t1,7
    thread_dispatch();
    80006db8:	ffffa097          	auipc	ra,0xffffa
    80006dbc:	62c080e7          	jalr	1580(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006dc0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006dc4:	00003517          	auipc	a0,0x3
    80006dc8:	57450513          	addi	a0,a0,1396 # 8000a338 <CONSOLE_STATUS+0x328>
    80006dcc:	fffff097          	auipc	ra,0xfffff
    80006dd0:	1a0080e7          	jalr	416(ra) # 80005f6c <_Z11printStringPKc>
    80006dd4:	00000613          	li	a2,0
    80006dd8:	00a00593          	li	a1,10
    80006ddc:	0009051b          	sext.w	a0,s2
    80006de0:	fffff097          	auipc	ra,0xfffff
    80006de4:	33c080e7          	jalr	828(ra) # 8000611c <_Z8printIntiii>
    80006de8:	00004517          	auipc	a0,0x4
    80006dec:	8f850513          	addi	a0,a0,-1800 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006df0:	fffff097          	auipc	ra,0xfffff
    80006df4:	17c080e7          	jalr	380(ra) # 80005f6c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006df8:	00c00513          	li	a0,12
    80006dfc:	00000097          	auipc	ra,0x0
    80006e00:	d88080e7          	jalr	-632(ra) # 80006b84 <_ZL9fibonaccim>
    80006e04:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006e08:	00003517          	auipc	a0,0x3
    80006e0c:	53850513          	addi	a0,a0,1336 # 8000a340 <CONSOLE_STATUS+0x330>
    80006e10:	fffff097          	auipc	ra,0xfffff
    80006e14:	15c080e7          	jalr	348(ra) # 80005f6c <_Z11printStringPKc>
    80006e18:	00000613          	li	a2,0
    80006e1c:	00a00593          	li	a1,10
    80006e20:	0009051b          	sext.w	a0,s2
    80006e24:	fffff097          	auipc	ra,0xfffff
    80006e28:	2f8080e7          	jalr	760(ra) # 8000611c <_Z8printIntiii>
    80006e2c:	00004517          	auipc	a0,0x4
    80006e30:	8b450513          	addi	a0,a0,-1868 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006e34:	fffff097          	auipc	ra,0xfffff
    80006e38:	138080e7          	jalr	312(ra) # 80005f6c <_Z11printStringPKc>
    80006e3c:	0400006f          	j	80006e7c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006e40:	00003517          	auipc	a0,0x3
    80006e44:	4e050513          	addi	a0,a0,1248 # 8000a320 <CONSOLE_STATUS+0x310>
    80006e48:	fffff097          	auipc	ra,0xfffff
    80006e4c:	124080e7          	jalr	292(ra) # 80005f6c <_Z11printStringPKc>
    80006e50:	00000613          	li	a2,0
    80006e54:	00a00593          	li	a1,10
    80006e58:	00048513          	mv	a0,s1
    80006e5c:	fffff097          	auipc	ra,0xfffff
    80006e60:	2c0080e7          	jalr	704(ra) # 8000611c <_Z8printIntiii>
    80006e64:	00004517          	auipc	a0,0x4
    80006e68:	87c50513          	addi	a0,a0,-1924 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006e6c:	fffff097          	auipc	ra,0xfffff
    80006e70:	100080e7          	jalr	256(ra) # 80005f6c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006e74:	0014849b          	addiw	s1,s1,1
    80006e78:	0ff4f493          	andi	s1,s1,255
    80006e7c:	00500793          	li	a5,5
    80006e80:	fc97f0e3          	bgeu	a5,s1,80006e40 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006e84:	00003517          	auipc	a0,0x3
    80006e88:	47450513          	addi	a0,a0,1140 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80006e8c:	fffff097          	auipc	ra,0xfffff
    80006e90:	0e0080e7          	jalr	224(ra) # 80005f6c <_Z11printStringPKc>
    finishedC = true;
    80006e94:	00100793          	li	a5,1
    80006e98:	00006717          	auipc	a4,0x6
    80006e9c:	26f709a3          	sb	a5,627(a4) # 8000d10b <_ZL9finishedC>
    thread_dispatch();
    80006ea0:	ffffa097          	auipc	ra,0xffffa
    80006ea4:	544080e7          	jalr	1348(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80006ea8:	01813083          	ld	ra,24(sp)
    80006eac:	01013403          	ld	s0,16(sp)
    80006eb0:	00813483          	ld	s1,8(sp)
    80006eb4:	00013903          	ld	s2,0(sp)
    80006eb8:	02010113          	addi	sp,sp,32
    80006ebc:	00008067          	ret

0000000080006ec0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006ec0:	fe010113          	addi	sp,sp,-32
    80006ec4:	00113c23          	sd	ra,24(sp)
    80006ec8:	00813823          	sd	s0,16(sp)
    80006ecc:	00913423          	sd	s1,8(sp)
    80006ed0:	01213023          	sd	s2,0(sp)
    80006ed4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006ed8:	00000913          	li	s2,0
    80006edc:	0400006f          	j	80006f1c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006ee0:	ffffa097          	auipc	ra,0xffffa
    80006ee4:	504080e7          	jalr	1284(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006ee8:	00148493          	addi	s1,s1,1
    80006eec:	000027b7          	lui	a5,0x2
    80006ef0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006ef4:	0097ee63          	bltu	a5,s1,80006f10 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006ef8:	00000713          	li	a4,0
    80006efc:	000077b7          	lui	a5,0x7
    80006f00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006f04:	fce7eee3          	bltu	a5,a4,80006ee0 <_ZL11workerBodyBPv+0x20>
    80006f08:	00170713          	addi	a4,a4,1
    80006f0c:	ff1ff06f          	j	80006efc <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006f10:	00a00793          	li	a5,10
    80006f14:	04f90663          	beq	s2,a5,80006f60 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006f18:	00190913          	addi	s2,s2,1
    80006f1c:	00f00793          	li	a5,15
    80006f20:	0527e463          	bltu	a5,s2,80006f68 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006f24:	00003517          	auipc	a0,0x3
    80006f28:	3e450513          	addi	a0,a0,996 # 8000a308 <CONSOLE_STATUS+0x2f8>
    80006f2c:	fffff097          	auipc	ra,0xfffff
    80006f30:	040080e7          	jalr	64(ra) # 80005f6c <_Z11printStringPKc>
    80006f34:	00000613          	li	a2,0
    80006f38:	00a00593          	li	a1,10
    80006f3c:	0009051b          	sext.w	a0,s2
    80006f40:	fffff097          	auipc	ra,0xfffff
    80006f44:	1dc080e7          	jalr	476(ra) # 8000611c <_Z8printIntiii>
    80006f48:	00003517          	auipc	a0,0x3
    80006f4c:	79850513          	addi	a0,a0,1944 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006f50:	fffff097          	auipc	ra,0xfffff
    80006f54:	01c080e7          	jalr	28(ra) # 80005f6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006f58:	00000493          	li	s1,0
    80006f5c:	f91ff06f          	j	80006eec <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006f60:	14102ff3          	csrr	t6,sepc
    80006f64:	fb5ff06f          	j	80006f18 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006f68:	00003517          	auipc	a0,0x3
    80006f6c:	3a850513          	addi	a0,a0,936 # 8000a310 <CONSOLE_STATUS+0x300>
    80006f70:	fffff097          	auipc	ra,0xfffff
    80006f74:	ffc080e7          	jalr	-4(ra) # 80005f6c <_Z11printStringPKc>
    finishedB = true;
    80006f78:	00100793          	li	a5,1
    80006f7c:	00006717          	auipc	a4,0x6
    80006f80:	18f70823          	sb	a5,400(a4) # 8000d10c <_ZL9finishedB>
    thread_dispatch();
    80006f84:	ffffa097          	auipc	ra,0xffffa
    80006f88:	460080e7          	jalr	1120(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80006f8c:	01813083          	ld	ra,24(sp)
    80006f90:	01013403          	ld	s0,16(sp)
    80006f94:	00813483          	ld	s1,8(sp)
    80006f98:	00013903          	ld	s2,0(sp)
    80006f9c:	02010113          	addi	sp,sp,32
    80006fa0:	00008067          	ret

0000000080006fa4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006fa4:	fe010113          	addi	sp,sp,-32
    80006fa8:	00113c23          	sd	ra,24(sp)
    80006fac:	00813823          	sd	s0,16(sp)
    80006fb0:	00913423          	sd	s1,8(sp)
    80006fb4:	01213023          	sd	s2,0(sp)
    80006fb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006fbc:	00000913          	li	s2,0
    80006fc0:	0380006f          	j	80006ff8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006fc4:	ffffa097          	auipc	ra,0xffffa
    80006fc8:	420080e7          	jalr	1056(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006fcc:	00148493          	addi	s1,s1,1
    80006fd0:	000027b7          	lui	a5,0x2
    80006fd4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006fd8:	0097ee63          	bltu	a5,s1,80006ff4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006fdc:	00000713          	li	a4,0
    80006fe0:	000077b7          	lui	a5,0x7
    80006fe4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006fe8:	fce7eee3          	bltu	a5,a4,80006fc4 <_ZL11workerBodyAPv+0x20>
    80006fec:	00170713          	addi	a4,a4,1
    80006ff0:	ff1ff06f          	j	80006fe0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006ff4:	00190913          	addi	s2,s2,1
    80006ff8:	00900793          	li	a5,9
    80006ffc:	0527e063          	bltu	a5,s2,8000703c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80007000:	00003517          	auipc	a0,0x3
    80007004:	2f050513          	addi	a0,a0,752 # 8000a2f0 <CONSOLE_STATUS+0x2e0>
    80007008:	fffff097          	auipc	ra,0xfffff
    8000700c:	f64080e7          	jalr	-156(ra) # 80005f6c <_Z11printStringPKc>
    80007010:	00000613          	li	a2,0
    80007014:	00a00593          	li	a1,10
    80007018:	0009051b          	sext.w	a0,s2
    8000701c:	fffff097          	auipc	ra,0xfffff
    80007020:	100080e7          	jalr	256(ra) # 8000611c <_Z8printIntiii>
    80007024:	00003517          	auipc	a0,0x3
    80007028:	6bc50513          	addi	a0,a0,1724 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    8000702c:	fffff097          	auipc	ra,0xfffff
    80007030:	f40080e7          	jalr	-192(ra) # 80005f6c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80007034:	00000493          	li	s1,0
    80007038:	f99ff06f          	j	80006fd0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000703c:	00003517          	auipc	a0,0x3
    80007040:	2bc50513          	addi	a0,a0,700 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80007044:	fffff097          	auipc	ra,0xfffff
    80007048:	f28080e7          	jalr	-216(ra) # 80005f6c <_Z11printStringPKc>
    finishedA = true;
    8000704c:	00100793          	li	a5,1
    80007050:	00006717          	auipc	a4,0x6
    80007054:	0af70ea3          	sb	a5,189(a4) # 8000d10d <_ZL9finishedA>
}
    80007058:	01813083          	ld	ra,24(sp)
    8000705c:	01013403          	ld	s0,16(sp)
    80007060:	00813483          	ld	s1,8(sp)
    80007064:	00013903          	ld	s2,0(sp)
    80007068:	02010113          	addi	sp,sp,32
    8000706c:	00008067          	ret

0000000080007070 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80007070:	fd010113          	addi	sp,sp,-48
    80007074:	02113423          	sd	ra,40(sp)
    80007078:	02813023          	sd	s0,32(sp)
    8000707c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80007080:	00000613          	li	a2,0
    80007084:	00000597          	auipc	a1,0x0
    80007088:	f2058593          	addi	a1,a1,-224 # 80006fa4 <_ZL11workerBodyAPv>
    8000708c:	fd040513          	addi	a0,s0,-48
    80007090:	ffffa097          	auipc	ra,0xffffa
    80007094:	298080e7          	jalr	664(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80007098:	00003517          	auipc	a0,0x3
    8000709c:	2f050513          	addi	a0,a0,752 # 8000a388 <CONSOLE_STATUS+0x378>
    800070a0:	fffff097          	auipc	ra,0xfffff
    800070a4:	ecc080e7          	jalr	-308(ra) # 80005f6c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800070a8:	00000613          	li	a2,0
    800070ac:	00000597          	auipc	a1,0x0
    800070b0:	e1458593          	addi	a1,a1,-492 # 80006ec0 <_ZL11workerBodyBPv>
    800070b4:	fd840513          	addi	a0,s0,-40
    800070b8:	ffffa097          	auipc	ra,0xffffa
    800070bc:	270080e7          	jalr	624(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800070c0:	00003517          	auipc	a0,0x3
    800070c4:	2e050513          	addi	a0,a0,736 # 8000a3a0 <CONSOLE_STATUS+0x390>
    800070c8:	fffff097          	auipc	ra,0xfffff
    800070cc:	ea4080e7          	jalr	-348(ra) # 80005f6c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800070d0:	00000613          	li	a2,0
    800070d4:	00000597          	auipc	a1,0x0
    800070d8:	c6c58593          	addi	a1,a1,-916 # 80006d40 <_ZL11workerBodyCPv>
    800070dc:	fe040513          	addi	a0,s0,-32
    800070e0:	ffffa097          	auipc	ra,0xffffa
    800070e4:	248080e7          	jalr	584(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800070e8:	00003517          	auipc	a0,0x3
    800070ec:	2d050513          	addi	a0,a0,720 # 8000a3b8 <CONSOLE_STATUS+0x3a8>
    800070f0:	fffff097          	auipc	ra,0xfffff
    800070f4:	e7c080e7          	jalr	-388(ra) # 80005f6c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800070f8:	00000613          	li	a2,0
    800070fc:	00000597          	auipc	a1,0x0
    80007100:	afc58593          	addi	a1,a1,-1284 # 80006bf8 <_ZL11workerBodyDPv>
    80007104:	fe840513          	addi	a0,s0,-24
    80007108:	ffffa097          	auipc	ra,0xffffa
    8000710c:	220080e7          	jalr	544(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80007110:	00003517          	auipc	a0,0x3
    80007114:	2c050513          	addi	a0,a0,704 # 8000a3d0 <CONSOLE_STATUS+0x3c0>
    80007118:	fffff097          	auipc	ra,0xfffff
    8000711c:	e54080e7          	jalr	-428(ra) # 80005f6c <_Z11printStringPKc>
    80007120:	00c0006f          	j	8000712c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80007124:	ffffa097          	auipc	ra,0xffffa
    80007128:	2c0080e7          	jalr	704(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000712c:	00006797          	auipc	a5,0x6
    80007130:	fe17c783          	lbu	a5,-31(a5) # 8000d10d <_ZL9finishedA>
    80007134:	fe0788e3          	beqz	a5,80007124 <_Z16System_Mode_testv+0xb4>
    80007138:	00006797          	auipc	a5,0x6
    8000713c:	fd47c783          	lbu	a5,-44(a5) # 8000d10c <_ZL9finishedB>
    80007140:	fe0782e3          	beqz	a5,80007124 <_Z16System_Mode_testv+0xb4>
    80007144:	00006797          	auipc	a5,0x6
    80007148:	fc77c783          	lbu	a5,-57(a5) # 8000d10b <_ZL9finishedC>
    8000714c:	fc078ce3          	beqz	a5,80007124 <_Z16System_Mode_testv+0xb4>
    80007150:	00006797          	auipc	a5,0x6
    80007154:	fba7c783          	lbu	a5,-70(a5) # 8000d10a <_ZL9finishedD>
    80007158:	fc0786e3          	beqz	a5,80007124 <_Z16System_Mode_testv+0xb4>
    }

}
    8000715c:	02813083          	ld	ra,40(sp)
    80007160:	02013403          	ld	s0,32(sp)
    80007164:	03010113          	addi	sp,sp,48
    80007168:	00008067          	ret

000000008000716c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000716c:	fe010113          	addi	sp,sp,-32
    80007170:	00113c23          	sd	ra,24(sp)
    80007174:	00813823          	sd	s0,16(sp)
    80007178:	00913423          	sd	s1,8(sp)
    8000717c:	01213023          	sd	s2,0(sp)
    80007180:	02010413          	addi	s0,sp,32
    80007184:	00050493          	mv	s1,a0
    80007188:	00058913          	mv	s2,a1
    8000718c:	0015879b          	addiw	a5,a1,1
    80007190:	0007851b          	sext.w	a0,a5
    80007194:	00f4a023          	sw	a5,0(s1)
    80007198:	0004a823          	sw	zero,16(s1)
    8000719c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800071a0:	00251513          	slli	a0,a0,0x2
    800071a4:	ffffa097          	auipc	ra,0xffffa
    800071a8:	0b0080e7          	jalr	176(ra) # 80001254 <_Z9mem_allocm>
    800071ac:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800071b0:	00000593          	li	a1,0
    800071b4:	02048513          	addi	a0,s1,32
    800071b8:	ffffa097          	auipc	ra,0xffffa
    800071bc:	308080e7          	jalr	776(ra) # 800014c0 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800071c0:	00090593          	mv	a1,s2
    800071c4:	01848513          	addi	a0,s1,24
    800071c8:	ffffa097          	auipc	ra,0xffffa
    800071cc:	2f8080e7          	jalr	760(ra) # 800014c0 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800071d0:	00100593          	li	a1,1
    800071d4:	02848513          	addi	a0,s1,40
    800071d8:	ffffa097          	auipc	ra,0xffffa
    800071dc:	2e8080e7          	jalr	744(ra) # 800014c0 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800071e0:	00100593          	li	a1,1
    800071e4:	03048513          	addi	a0,s1,48
    800071e8:	ffffa097          	auipc	ra,0xffffa
    800071ec:	2d8080e7          	jalr	728(ra) # 800014c0 <_Z8sem_openPP4_semj>
}
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	01013403          	ld	s0,16(sp)
    800071f8:	00813483          	ld	s1,8(sp)
    800071fc:	00013903          	ld	s2,0(sp)
    80007200:	02010113          	addi	sp,sp,32
    80007204:	00008067          	ret

0000000080007208 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80007208:	fe010113          	addi	sp,sp,-32
    8000720c:	00113c23          	sd	ra,24(sp)
    80007210:	00813823          	sd	s0,16(sp)
    80007214:	00913423          	sd	s1,8(sp)
    80007218:	01213023          	sd	s2,0(sp)
    8000721c:	02010413          	addi	s0,sp,32
    80007220:	00050493          	mv	s1,a0
    80007224:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80007228:	01853503          	ld	a0,24(a0)
    8000722c:	ffffa097          	auipc	ra,0xffffa
    80007230:	308080e7          	jalr	776(ra) # 80001534 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80007234:	0304b503          	ld	a0,48(s1)
    80007238:	ffffa097          	auipc	ra,0xffffa
    8000723c:	2fc080e7          	jalr	764(ra) # 80001534 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80007240:	0084b783          	ld	a5,8(s1)
    80007244:	0144a703          	lw	a4,20(s1)
    80007248:	00271713          	slli	a4,a4,0x2
    8000724c:	00e787b3          	add	a5,a5,a4
    80007250:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80007254:	0144a783          	lw	a5,20(s1)
    80007258:	0017879b          	addiw	a5,a5,1
    8000725c:	0004a703          	lw	a4,0(s1)
    80007260:	02e7e7bb          	remw	a5,a5,a4
    80007264:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80007268:	0304b503          	ld	a0,48(s1)
    8000726c:	ffffa097          	auipc	ra,0xffffa
    80007270:	300080e7          	jalr	768(ra) # 8000156c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80007274:	0204b503          	ld	a0,32(s1)
    80007278:	ffffa097          	auipc	ra,0xffffa
    8000727c:	2f4080e7          	jalr	756(ra) # 8000156c <_Z10sem_signalP4_sem>

}
    80007280:	01813083          	ld	ra,24(sp)
    80007284:	01013403          	ld	s0,16(sp)
    80007288:	00813483          	ld	s1,8(sp)
    8000728c:	00013903          	ld	s2,0(sp)
    80007290:	02010113          	addi	sp,sp,32
    80007294:	00008067          	ret

0000000080007298 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80007298:	fe010113          	addi	sp,sp,-32
    8000729c:	00113c23          	sd	ra,24(sp)
    800072a0:	00813823          	sd	s0,16(sp)
    800072a4:	00913423          	sd	s1,8(sp)
    800072a8:	01213023          	sd	s2,0(sp)
    800072ac:	02010413          	addi	s0,sp,32
    800072b0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800072b4:	02053503          	ld	a0,32(a0)
    800072b8:	ffffa097          	auipc	ra,0xffffa
    800072bc:	27c080e7          	jalr	636(ra) # 80001534 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800072c0:	0284b503          	ld	a0,40(s1)
    800072c4:	ffffa097          	auipc	ra,0xffffa
    800072c8:	270080e7          	jalr	624(ra) # 80001534 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800072cc:	0084b703          	ld	a4,8(s1)
    800072d0:	0104a783          	lw	a5,16(s1)
    800072d4:	00279693          	slli	a3,a5,0x2
    800072d8:	00d70733          	add	a4,a4,a3
    800072dc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800072e0:	0017879b          	addiw	a5,a5,1
    800072e4:	0004a703          	lw	a4,0(s1)
    800072e8:	02e7e7bb          	remw	a5,a5,a4
    800072ec:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800072f0:	0284b503          	ld	a0,40(s1)
    800072f4:	ffffa097          	auipc	ra,0xffffa
    800072f8:	278080e7          	jalr	632(ra) # 8000156c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800072fc:	0184b503          	ld	a0,24(s1)
    80007300:	ffffa097          	auipc	ra,0xffffa
    80007304:	26c080e7          	jalr	620(ra) # 8000156c <_Z10sem_signalP4_sem>

    return ret;
}
    80007308:	00090513          	mv	a0,s2
    8000730c:	01813083          	ld	ra,24(sp)
    80007310:	01013403          	ld	s0,16(sp)
    80007314:	00813483          	ld	s1,8(sp)
    80007318:	00013903          	ld	s2,0(sp)
    8000731c:	02010113          	addi	sp,sp,32
    80007320:	00008067          	ret

0000000080007324 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80007324:	fe010113          	addi	sp,sp,-32
    80007328:	00113c23          	sd	ra,24(sp)
    8000732c:	00813823          	sd	s0,16(sp)
    80007330:	00913423          	sd	s1,8(sp)
    80007334:	01213023          	sd	s2,0(sp)
    80007338:	02010413          	addi	s0,sp,32
    8000733c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80007340:	02853503          	ld	a0,40(a0)
    80007344:	ffffa097          	auipc	ra,0xffffa
    80007348:	1f0080e7          	jalr	496(ra) # 80001534 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000734c:	0304b503          	ld	a0,48(s1)
    80007350:	ffffa097          	auipc	ra,0xffffa
    80007354:	1e4080e7          	jalr	484(ra) # 80001534 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80007358:	0144a783          	lw	a5,20(s1)
    8000735c:	0104a903          	lw	s2,16(s1)
    80007360:	0327ce63          	blt	a5,s2,8000739c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80007364:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80007368:	0304b503          	ld	a0,48(s1)
    8000736c:	ffffa097          	auipc	ra,0xffffa
    80007370:	200080e7          	jalr	512(ra) # 8000156c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80007374:	0284b503          	ld	a0,40(s1)
    80007378:	ffffa097          	auipc	ra,0xffffa
    8000737c:	1f4080e7          	jalr	500(ra) # 8000156c <_Z10sem_signalP4_sem>

    return ret;
}
    80007380:	00090513          	mv	a0,s2
    80007384:	01813083          	ld	ra,24(sp)
    80007388:	01013403          	ld	s0,16(sp)
    8000738c:	00813483          	ld	s1,8(sp)
    80007390:	00013903          	ld	s2,0(sp)
    80007394:	02010113          	addi	sp,sp,32
    80007398:	00008067          	ret
        ret = cap - head + tail;
    8000739c:	0004a703          	lw	a4,0(s1)
    800073a0:	4127093b          	subw	s2,a4,s2
    800073a4:	00f9093b          	addw	s2,s2,a5
    800073a8:	fc1ff06f          	j	80007368 <_ZN6Buffer6getCntEv+0x44>

00000000800073ac <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800073ac:	fe010113          	addi	sp,sp,-32
    800073b0:	00113c23          	sd	ra,24(sp)
    800073b4:	00813823          	sd	s0,16(sp)
    800073b8:	00913423          	sd	s1,8(sp)
    800073bc:	02010413          	addi	s0,sp,32
    800073c0:	00050493          	mv	s1,a0
    putc('\n');
    800073c4:	00a00513          	li	a0,10
    800073c8:	ffffa097          	auipc	ra,0xffffa
    800073cc:	248080e7          	jalr	584(ra) # 80001610 <_Z4putcc>
    printString("Buffer deleted!\n");
    800073d0:	00003517          	auipc	a0,0x3
    800073d4:	01850513          	addi	a0,a0,24 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    800073d8:	fffff097          	auipc	ra,0xfffff
    800073dc:	b94080e7          	jalr	-1132(ra) # 80005f6c <_Z11printStringPKc>
    while (getCnt() > 0) {
    800073e0:	00048513          	mv	a0,s1
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	f40080e7          	jalr	-192(ra) # 80007324 <_ZN6Buffer6getCntEv>
    800073ec:	02a05c63          	blez	a0,80007424 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800073f0:	0084b783          	ld	a5,8(s1)
    800073f4:	0104a703          	lw	a4,16(s1)
    800073f8:	00271713          	slli	a4,a4,0x2
    800073fc:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007400:	0007c503          	lbu	a0,0(a5)
    80007404:	ffffa097          	auipc	ra,0xffffa
    80007408:	20c080e7          	jalr	524(ra) # 80001610 <_Z4putcc>
        head = (head + 1) % cap;
    8000740c:	0104a783          	lw	a5,16(s1)
    80007410:	0017879b          	addiw	a5,a5,1
    80007414:	0004a703          	lw	a4,0(s1)
    80007418:	02e7e7bb          	remw	a5,a5,a4
    8000741c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80007420:	fc1ff06f          	j	800073e0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80007424:	02100513          	li	a0,33
    80007428:	ffffa097          	auipc	ra,0xffffa
    8000742c:	1e8080e7          	jalr	488(ra) # 80001610 <_Z4putcc>
    putc('\n');
    80007430:	00a00513          	li	a0,10
    80007434:	ffffa097          	auipc	ra,0xffffa
    80007438:	1dc080e7          	jalr	476(ra) # 80001610 <_Z4putcc>
    mem_free(buffer);
    8000743c:	0084b503          	ld	a0,8(s1)
    80007440:	ffffa097          	auipc	ra,0xffffa
    80007444:	e50080e7          	jalr	-432(ra) # 80001290 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80007448:	0204b503          	ld	a0,32(s1)
    8000744c:	ffffa097          	auipc	ra,0xffffa
    80007450:	0b0080e7          	jalr	176(ra) # 800014fc <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80007454:	0184b503          	ld	a0,24(s1)
    80007458:	ffffa097          	auipc	ra,0xffffa
    8000745c:	0a4080e7          	jalr	164(ra) # 800014fc <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80007460:	0304b503          	ld	a0,48(s1)
    80007464:	ffffa097          	auipc	ra,0xffffa
    80007468:	098080e7          	jalr	152(ra) # 800014fc <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000746c:	0284b503          	ld	a0,40(s1)
    80007470:	ffffa097          	auipc	ra,0xffffa
    80007474:	08c080e7          	jalr	140(ra) # 800014fc <_Z9sem_closeP4_sem>
}
    80007478:	01813083          	ld	ra,24(sp)
    8000747c:	01013403          	ld	s0,16(sp)
    80007480:	00813483          	ld	s1,8(sp)
    80007484:	02010113          	addi	sp,sp,32
    80007488:	00008067          	ret

000000008000748c <start>:
    8000748c:	ff010113          	addi	sp,sp,-16
    80007490:	00813423          	sd	s0,8(sp)
    80007494:	01010413          	addi	s0,sp,16
    80007498:	300027f3          	csrr	a5,mstatus
    8000749c:	ffffe737          	lui	a4,0xffffe
    800074a0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff048f>
    800074a4:	00e7f7b3          	and	a5,a5,a4
    800074a8:	00001737          	lui	a4,0x1
    800074ac:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800074b0:	00e7e7b3          	or	a5,a5,a4
    800074b4:	30079073          	csrw	mstatus,a5
    800074b8:	00000797          	auipc	a5,0x0
    800074bc:	16078793          	addi	a5,a5,352 # 80007618 <system_main>
    800074c0:	34179073          	csrw	mepc,a5
    800074c4:	00000793          	li	a5,0
    800074c8:	18079073          	csrw	satp,a5
    800074cc:	000107b7          	lui	a5,0x10
    800074d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800074d4:	30279073          	csrw	medeleg,a5
    800074d8:	30379073          	csrw	mideleg,a5
    800074dc:	104027f3          	csrr	a5,sie
    800074e0:	2227e793          	ori	a5,a5,546
    800074e4:	10479073          	csrw	sie,a5
    800074e8:	fff00793          	li	a5,-1
    800074ec:	00a7d793          	srli	a5,a5,0xa
    800074f0:	3b079073          	csrw	pmpaddr0,a5
    800074f4:	00f00793          	li	a5,15
    800074f8:	3a079073          	csrw	pmpcfg0,a5
    800074fc:	f14027f3          	csrr	a5,mhartid
    80007500:	0200c737          	lui	a4,0x200c
    80007504:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007508:	0007869b          	sext.w	a3,a5
    8000750c:	00269713          	slli	a4,a3,0x2
    80007510:	000f4637          	lui	a2,0xf4
    80007514:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007518:	00d70733          	add	a4,a4,a3
    8000751c:	0037979b          	slliw	a5,a5,0x3
    80007520:	020046b7          	lui	a3,0x2004
    80007524:	00d787b3          	add	a5,a5,a3
    80007528:	00c585b3          	add	a1,a1,a2
    8000752c:	00371693          	slli	a3,a4,0x3
    80007530:	00006717          	auipc	a4,0x6
    80007534:	be070713          	addi	a4,a4,-1056 # 8000d110 <timer_scratch>
    80007538:	00b7b023          	sd	a1,0(a5)
    8000753c:	00d70733          	add	a4,a4,a3
    80007540:	00f73c23          	sd	a5,24(a4)
    80007544:	02c73023          	sd	a2,32(a4)
    80007548:	34071073          	csrw	mscratch,a4
    8000754c:	00000797          	auipc	a5,0x0
    80007550:	6e478793          	addi	a5,a5,1764 # 80007c30 <timervec>
    80007554:	30579073          	csrw	mtvec,a5
    80007558:	300027f3          	csrr	a5,mstatus
    8000755c:	0087e793          	ori	a5,a5,8
    80007560:	30079073          	csrw	mstatus,a5
    80007564:	304027f3          	csrr	a5,mie
    80007568:	0807e793          	ori	a5,a5,128
    8000756c:	30479073          	csrw	mie,a5
    80007570:	f14027f3          	csrr	a5,mhartid
    80007574:	0007879b          	sext.w	a5,a5
    80007578:	00078213          	mv	tp,a5
    8000757c:	30200073          	mret
    80007580:	00813403          	ld	s0,8(sp)
    80007584:	01010113          	addi	sp,sp,16
    80007588:	00008067          	ret

000000008000758c <timerinit>:
    8000758c:	ff010113          	addi	sp,sp,-16
    80007590:	00813423          	sd	s0,8(sp)
    80007594:	01010413          	addi	s0,sp,16
    80007598:	f14027f3          	csrr	a5,mhartid
    8000759c:	0200c737          	lui	a4,0x200c
    800075a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800075a4:	0007869b          	sext.w	a3,a5
    800075a8:	00269713          	slli	a4,a3,0x2
    800075ac:	000f4637          	lui	a2,0xf4
    800075b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800075b4:	00d70733          	add	a4,a4,a3
    800075b8:	0037979b          	slliw	a5,a5,0x3
    800075bc:	020046b7          	lui	a3,0x2004
    800075c0:	00d787b3          	add	a5,a5,a3
    800075c4:	00c585b3          	add	a1,a1,a2
    800075c8:	00371693          	slli	a3,a4,0x3
    800075cc:	00006717          	auipc	a4,0x6
    800075d0:	b4470713          	addi	a4,a4,-1212 # 8000d110 <timer_scratch>
    800075d4:	00b7b023          	sd	a1,0(a5)
    800075d8:	00d70733          	add	a4,a4,a3
    800075dc:	00f73c23          	sd	a5,24(a4)
    800075e0:	02c73023          	sd	a2,32(a4)
    800075e4:	34071073          	csrw	mscratch,a4
    800075e8:	00000797          	auipc	a5,0x0
    800075ec:	64878793          	addi	a5,a5,1608 # 80007c30 <timervec>
    800075f0:	30579073          	csrw	mtvec,a5
    800075f4:	300027f3          	csrr	a5,mstatus
    800075f8:	0087e793          	ori	a5,a5,8
    800075fc:	30079073          	csrw	mstatus,a5
    80007600:	304027f3          	csrr	a5,mie
    80007604:	0807e793          	ori	a5,a5,128
    80007608:	30479073          	csrw	mie,a5
    8000760c:	00813403          	ld	s0,8(sp)
    80007610:	01010113          	addi	sp,sp,16
    80007614:	00008067          	ret

0000000080007618 <system_main>:
    80007618:	fe010113          	addi	sp,sp,-32
    8000761c:	00813823          	sd	s0,16(sp)
    80007620:	00913423          	sd	s1,8(sp)
    80007624:	00113c23          	sd	ra,24(sp)
    80007628:	02010413          	addi	s0,sp,32
    8000762c:	00000097          	auipc	ra,0x0
    80007630:	0c4080e7          	jalr	196(ra) # 800076f0 <cpuid>
    80007634:	00006497          	auipc	s1,0x6
    80007638:	96c48493          	addi	s1,s1,-1684 # 8000cfa0 <started>
    8000763c:	02050263          	beqz	a0,80007660 <system_main+0x48>
    80007640:	0004a783          	lw	a5,0(s1)
    80007644:	0007879b          	sext.w	a5,a5
    80007648:	fe078ce3          	beqz	a5,80007640 <system_main+0x28>
    8000764c:	0ff0000f          	fence
    80007650:	00003517          	auipc	a0,0x3
    80007654:	0c850513          	addi	a0,a0,200 # 8000a718 <CONSOLE_STATUS+0x708>
    80007658:	00001097          	auipc	ra,0x1
    8000765c:	a74080e7          	jalr	-1420(ra) # 800080cc <panic>
    80007660:	00001097          	auipc	ra,0x1
    80007664:	9c8080e7          	jalr	-1592(ra) # 80008028 <consoleinit>
    80007668:	00001097          	auipc	ra,0x1
    8000766c:	154080e7          	jalr	340(ra) # 800087bc <printfinit>
    80007670:	00003517          	auipc	a0,0x3
    80007674:	07050513          	addi	a0,a0,112 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80007678:	00001097          	auipc	ra,0x1
    8000767c:	ab0080e7          	jalr	-1360(ra) # 80008128 <__printf>
    80007680:	00003517          	auipc	a0,0x3
    80007684:	06850513          	addi	a0,a0,104 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007688:	00001097          	auipc	ra,0x1
    8000768c:	aa0080e7          	jalr	-1376(ra) # 80008128 <__printf>
    80007690:	00003517          	auipc	a0,0x3
    80007694:	05050513          	addi	a0,a0,80 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80007698:	00001097          	auipc	ra,0x1
    8000769c:	a90080e7          	jalr	-1392(ra) # 80008128 <__printf>
    800076a0:	00001097          	auipc	ra,0x1
    800076a4:	4a8080e7          	jalr	1192(ra) # 80008b48 <kinit>
    800076a8:	00000097          	auipc	ra,0x0
    800076ac:	148080e7          	jalr	328(ra) # 800077f0 <trapinit>
    800076b0:	00000097          	auipc	ra,0x0
    800076b4:	16c080e7          	jalr	364(ra) # 8000781c <trapinithart>
    800076b8:	00000097          	auipc	ra,0x0
    800076bc:	5b8080e7          	jalr	1464(ra) # 80007c70 <plicinit>
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	5d8080e7          	jalr	1496(ra) # 80007c98 <plicinithart>
    800076c8:	00000097          	auipc	ra,0x0
    800076cc:	078080e7          	jalr	120(ra) # 80007740 <userinit>
    800076d0:	0ff0000f          	fence
    800076d4:	00100793          	li	a5,1
    800076d8:	00003517          	auipc	a0,0x3
    800076dc:	02850513          	addi	a0,a0,40 # 8000a700 <CONSOLE_STATUS+0x6f0>
    800076e0:	00f4a023          	sw	a5,0(s1)
    800076e4:	00001097          	auipc	ra,0x1
    800076e8:	a44080e7          	jalr	-1468(ra) # 80008128 <__printf>
    800076ec:	0000006f          	j	800076ec <system_main+0xd4>

00000000800076f0 <cpuid>:
    800076f0:	ff010113          	addi	sp,sp,-16
    800076f4:	00813423          	sd	s0,8(sp)
    800076f8:	01010413          	addi	s0,sp,16
    800076fc:	00020513          	mv	a0,tp
    80007700:	00813403          	ld	s0,8(sp)
    80007704:	0005051b          	sext.w	a0,a0
    80007708:	01010113          	addi	sp,sp,16
    8000770c:	00008067          	ret

0000000080007710 <mycpu>:
    80007710:	ff010113          	addi	sp,sp,-16
    80007714:	00813423          	sd	s0,8(sp)
    80007718:	01010413          	addi	s0,sp,16
    8000771c:	00020793          	mv	a5,tp
    80007720:	00813403          	ld	s0,8(sp)
    80007724:	0007879b          	sext.w	a5,a5
    80007728:	00779793          	slli	a5,a5,0x7
    8000772c:	00007517          	auipc	a0,0x7
    80007730:	a1450513          	addi	a0,a0,-1516 # 8000e140 <cpus>
    80007734:	00f50533          	add	a0,a0,a5
    80007738:	01010113          	addi	sp,sp,16
    8000773c:	00008067          	ret

0000000080007740 <userinit>:
    80007740:	ff010113          	addi	sp,sp,-16
    80007744:	00813423          	sd	s0,8(sp)
    80007748:	01010413          	addi	s0,sp,16
    8000774c:	00813403          	ld	s0,8(sp)
    80007750:	01010113          	addi	sp,sp,16
    80007754:	ffffa317          	auipc	t1,0xffffa
    80007758:	1fc30067          	jr	508(t1) # 80001950 <main>

000000008000775c <either_copyout>:
    8000775c:	ff010113          	addi	sp,sp,-16
    80007760:	00813023          	sd	s0,0(sp)
    80007764:	00113423          	sd	ra,8(sp)
    80007768:	01010413          	addi	s0,sp,16
    8000776c:	02051663          	bnez	a0,80007798 <either_copyout+0x3c>
    80007770:	00058513          	mv	a0,a1
    80007774:	00060593          	mv	a1,a2
    80007778:	0006861b          	sext.w	a2,a3
    8000777c:	00002097          	auipc	ra,0x2
    80007780:	c58080e7          	jalr	-936(ra) # 800093d4 <__memmove>
    80007784:	00813083          	ld	ra,8(sp)
    80007788:	00013403          	ld	s0,0(sp)
    8000778c:	00000513          	li	a0,0
    80007790:	01010113          	addi	sp,sp,16
    80007794:	00008067          	ret
    80007798:	00003517          	auipc	a0,0x3
    8000779c:	fa850513          	addi	a0,a0,-88 # 8000a740 <CONSOLE_STATUS+0x730>
    800077a0:	00001097          	auipc	ra,0x1
    800077a4:	92c080e7          	jalr	-1748(ra) # 800080cc <panic>

00000000800077a8 <either_copyin>:
    800077a8:	ff010113          	addi	sp,sp,-16
    800077ac:	00813023          	sd	s0,0(sp)
    800077b0:	00113423          	sd	ra,8(sp)
    800077b4:	01010413          	addi	s0,sp,16
    800077b8:	02059463          	bnez	a1,800077e0 <either_copyin+0x38>
    800077bc:	00060593          	mv	a1,a2
    800077c0:	0006861b          	sext.w	a2,a3
    800077c4:	00002097          	auipc	ra,0x2
    800077c8:	c10080e7          	jalr	-1008(ra) # 800093d4 <__memmove>
    800077cc:	00813083          	ld	ra,8(sp)
    800077d0:	00013403          	ld	s0,0(sp)
    800077d4:	00000513          	li	a0,0
    800077d8:	01010113          	addi	sp,sp,16
    800077dc:	00008067          	ret
    800077e0:	00003517          	auipc	a0,0x3
    800077e4:	f8850513          	addi	a0,a0,-120 # 8000a768 <CONSOLE_STATUS+0x758>
    800077e8:	00001097          	auipc	ra,0x1
    800077ec:	8e4080e7          	jalr	-1820(ra) # 800080cc <panic>

00000000800077f0 <trapinit>:
    800077f0:	ff010113          	addi	sp,sp,-16
    800077f4:	00813423          	sd	s0,8(sp)
    800077f8:	01010413          	addi	s0,sp,16
    800077fc:	00813403          	ld	s0,8(sp)
    80007800:	00003597          	auipc	a1,0x3
    80007804:	f9058593          	addi	a1,a1,-112 # 8000a790 <CONSOLE_STATUS+0x780>
    80007808:	00007517          	auipc	a0,0x7
    8000780c:	9b850513          	addi	a0,a0,-1608 # 8000e1c0 <tickslock>
    80007810:	01010113          	addi	sp,sp,16
    80007814:	00001317          	auipc	t1,0x1
    80007818:	5c430067          	jr	1476(t1) # 80008dd8 <initlock>

000000008000781c <trapinithart>:
    8000781c:	ff010113          	addi	sp,sp,-16
    80007820:	00813423          	sd	s0,8(sp)
    80007824:	01010413          	addi	s0,sp,16
    80007828:	00000797          	auipc	a5,0x0
    8000782c:	2f878793          	addi	a5,a5,760 # 80007b20 <kernelvec>
    80007830:	10579073          	csrw	stvec,a5
    80007834:	00813403          	ld	s0,8(sp)
    80007838:	01010113          	addi	sp,sp,16
    8000783c:	00008067          	ret

0000000080007840 <usertrap>:
    80007840:	ff010113          	addi	sp,sp,-16
    80007844:	00813423          	sd	s0,8(sp)
    80007848:	01010413          	addi	s0,sp,16
    8000784c:	00813403          	ld	s0,8(sp)
    80007850:	01010113          	addi	sp,sp,16
    80007854:	00008067          	ret

0000000080007858 <usertrapret>:
    80007858:	ff010113          	addi	sp,sp,-16
    8000785c:	00813423          	sd	s0,8(sp)
    80007860:	01010413          	addi	s0,sp,16
    80007864:	00813403          	ld	s0,8(sp)
    80007868:	01010113          	addi	sp,sp,16
    8000786c:	00008067          	ret

0000000080007870 <kerneltrap>:
    80007870:	fe010113          	addi	sp,sp,-32
    80007874:	00813823          	sd	s0,16(sp)
    80007878:	00113c23          	sd	ra,24(sp)
    8000787c:	00913423          	sd	s1,8(sp)
    80007880:	02010413          	addi	s0,sp,32
    80007884:	142025f3          	csrr	a1,scause
    80007888:	100027f3          	csrr	a5,sstatus
    8000788c:	0027f793          	andi	a5,a5,2
    80007890:	10079c63          	bnez	a5,800079a8 <kerneltrap+0x138>
    80007894:	142027f3          	csrr	a5,scause
    80007898:	0207ce63          	bltz	a5,800078d4 <kerneltrap+0x64>
    8000789c:	00003517          	auipc	a0,0x3
    800078a0:	f3c50513          	addi	a0,a0,-196 # 8000a7d8 <CONSOLE_STATUS+0x7c8>
    800078a4:	00001097          	auipc	ra,0x1
    800078a8:	884080e7          	jalr	-1916(ra) # 80008128 <__printf>
    800078ac:	141025f3          	csrr	a1,sepc
    800078b0:	14302673          	csrr	a2,stval
    800078b4:	00003517          	auipc	a0,0x3
    800078b8:	f3450513          	addi	a0,a0,-204 # 8000a7e8 <CONSOLE_STATUS+0x7d8>
    800078bc:	00001097          	auipc	ra,0x1
    800078c0:	86c080e7          	jalr	-1940(ra) # 80008128 <__printf>
    800078c4:	00003517          	auipc	a0,0x3
    800078c8:	f3c50513          	addi	a0,a0,-196 # 8000a800 <CONSOLE_STATUS+0x7f0>
    800078cc:	00001097          	auipc	ra,0x1
    800078d0:	800080e7          	jalr	-2048(ra) # 800080cc <panic>
    800078d4:	0ff7f713          	andi	a4,a5,255
    800078d8:	00900693          	li	a3,9
    800078dc:	04d70063          	beq	a4,a3,8000791c <kerneltrap+0xac>
    800078e0:	fff00713          	li	a4,-1
    800078e4:	03f71713          	slli	a4,a4,0x3f
    800078e8:	00170713          	addi	a4,a4,1
    800078ec:	fae798e3          	bne	a5,a4,8000789c <kerneltrap+0x2c>
    800078f0:	00000097          	auipc	ra,0x0
    800078f4:	e00080e7          	jalr	-512(ra) # 800076f0 <cpuid>
    800078f8:	06050663          	beqz	a0,80007964 <kerneltrap+0xf4>
    800078fc:	144027f3          	csrr	a5,sip
    80007900:	ffd7f793          	andi	a5,a5,-3
    80007904:	14479073          	csrw	sip,a5
    80007908:	01813083          	ld	ra,24(sp)
    8000790c:	01013403          	ld	s0,16(sp)
    80007910:	00813483          	ld	s1,8(sp)
    80007914:	02010113          	addi	sp,sp,32
    80007918:	00008067          	ret
    8000791c:	00000097          	auipc	ra,0x0
    80007920:	3c8080e7          	jalr	968(ra) # 80007ce4 <plic_claim>
    80007924:	00a00793          	li	a5,10
    80007928:	00050493          	mv	s1,a0
    8000792c:	06f50863          	beq	a0,a5,8000799c <kerneltrap+0x12c>
    80007930:	fc050ce3          	beqz	a0,80007908 <kerneltrap+0x98>
    80007934:	00050593          	mv	a1,a0
    80007938:	00003517          	auipc	a0,0x3
    8000793c:	e8050513          	addi	a0,a0,-384 # 8000a7b8 <CONSOLE_STATUS+0x7a8>
    80007940:	00000097          	auipc	ra,0x0
    80007944:	7e8080e7          	jalr	2024(ra) # 80008128 <__printf>
    80007948:	01013403          	ld	s0,16(sp)
    8000794c:	01813083          	ld	ra,24(sp)
    80007950:	00048513          	mv	a0,s1
    80007954:	00813483          	ld	s1,8(sp)
    80007958:	02010113          	addi	sp,sp,32
    8000795c:	00000317          	auipc	t1,0x0
    80007960:	3c030067          	jr	960(t1) # 80007d1c <plic_complete>
    80007964:	00007517          	auipc	a0,0x7
    80007968:	85c50513          	addi	a0,a0,-1956 # 8000e1c0 <tickslock>
    8000796c:	00001097          	auipc	ra,0x1
    80007970:	490080e7          	jalr	1168(ra) # 80008dfc <acquire>
    80007974:	00005717          	auipc	a4,0x5
    80007978:	63070713          	addi	a4,a4,1584 # 8000cfa4 <ticks>
    8000797c:	00072783          	lw	a5,0(a4)
    80007980:	00007517          	auipc	a0,0x7
    80007984:	84050513          	addi	a0,a0,-1984 # 8000e1c0 <tickslock>
    80007988:	0017879b          	addiw	a5,a5,1
    8000798c:	00f72023          	sw	a5,0(a4)
    80007990:	00001097          	auipc	ra,0x1
    80007994:	538080e7          	jalr	1336(ra) # 80008ec8 <release>
    80007998:	f65ff06f          	j	800078fc <kerneltrap+0x8c>
    8000799c:	00001097          	auipc	ra,0x1
    800079a0:	094080e7          	jalr	148(ra) # 80008a30 <uartintr>
    800079a4:	fa5ff06f          	j	80007948 <kerneltrap+0xd8>
    800079a8:	00003517          	auipc	a0,0x3
    800079ac:	df050513          	addi	a0,a0,-528 # 8000a798 <CONSOLE_STATUS+0x788>
    800079b0:	00000097          	auipc	ra,0x0
    800079b4:	71c080e7          	jalr	1820(ra) # 800080cc <panic>

00000000800079b8 <clockintr>:
    800079b8:	fe010113          	addi	sp,sp,-32
    800079bc:	00813823          	sd	s0,16(sp)
    800079c0:	00913423          	sd	s1,8(sp)
    800079c4:	00113c23          	sd	ra,24(sp)
    800079c8:	02010413          	addi	s0,sp,32
    800079cc:	00006497          	auipc	s1,0x6
    800079d0:	7f448493          	addi	s1,s1,2036 # 8000e1c0 <tickslock>
    800079d4:	00048513          	mv	a0,s1
    800079d8:	00001097          	auipc	ra,0x1
    800079dc:	424080e7          	jalr	1060(ra) # 80008dfc <acquire>
    800079e0:	00005717          	auipc	a4,0x5
    800079e4:	5c470713          	addi	a4,a4,1476 # 8000cfa4 <ticks>
    800079e8:	00072783          	lw	a5,0(a4)
    800079ec:	01013403          	ld	s0,16(sp)
    800079f0:	01813083          	ld	ra,24(sp)
    800079f4:	00048513          	mv	a0,s1
    800079f8:	0017879b          	addiw	a5,a5,1
    800079fc:	00813483          	ld	s1,8(sp)
    80007a00:	00f72023          	sw	a5,0(a4)
    80007a04:	02010113          	addi	sp,sp,32
    80007a08:	00001317          	auipc	t1,0x1
    80007a0c:	4c030067          	jr	1216(t1) # 80008ec8 <release>

0000000080007a10 <devintr>:
    80007a10:	142027f3          	csrr	a5,scause
    80007a14:	00000513          	li	a0,0
    80007a18:	0007c463          	bltz	a5,80007a20 <devintr+0x10>
    80007a1c:	00008067          	ret
    80007a20:	fe010113          	addi	sp,sp,-32
    80007a24:	00813823          	sd	s0,16(sp)
    80007a28:	00113c23          	sd	ra,24(sp)
    80007a2c:	00913423          	sd	s1,8(sp)
    80007a30:	02010413          	addi	s0,sp,32
    80007a34:	0ff7f713          	andi	a4,a5,255
    80007a38:	00900693          	li	a3,9
    80007a3c:	04d70c63          	beq	a4,a3,80007a94 <devintr+0x84>
    80007a40:	fff00713          	li	a4,-1
    80007a44:	03f71713          	slli	a4,a4,0x3f
    80007a48:	00170713          	addi	a4,a4,1
    80007a4c:	00e78c63          	beq	a5,a4,80007a64 <devintr+0x54>
    80007a50:	01813083          	ld	ra,24(sp)
    80007a54:	01013403          	ld	s0,16(sp)
    80007a58:	00813483          	ld	s1,8(sp)
    80007a5c:	02010113          	addi	sp,sp,32
    80007a60:	00008067          	ret
    80007a64:	00000097          	auipc	ra,0x0
    80007a68:	c8c080e7          	jalr	-884(ra) # 800076f0 <cpuid>
    80007a6c:	06050663          	beqz	a0,80007ad8 <devintr+0xc8>
    80007a70:	144027f3          	csrr	a5,sip
    80007a74:	ffd7f793          	andi	a5,a5,-3
    80007a78:	14479073          	csrw	sip,a5
    80007a7c:	01813083          	ld	ra,24(sp)
    80007a80:	01013403          	ld	s0,16(sp)
    80007a84:	00813483          	ld	s1,8(sp)
    80007a88:	00200513          	li	a0,2
    80007a8c:	02010113          	addi	sp,sp,32
    80007a90:	00008067          	ret
    80007a94:	00000097          	auipc	ra,0x0
    80007a98:	250080e7          	jalr	592(ra) # 80007ce4 <plic_claim>
    80007a9c:	00a00793          	li	a5,10
    80007aa0:	00050493          	mv	s1,a0
    80007aa4:	06f50663          	beq	a0,a5,80007b10 <devintr+0x100>
    80007aa8:	00100513          	li	a0,1
    80007aac:	fa0482e3          	beqz	s1,80007a50 <devintr+0x40>
    80007ab0:	00048593          	mv	a1,s1
    80007ab4:	00003517          	auipc	a0,0x3
    80007ab8:	d0450513          	addi	a0,a0,-764 # 8000a7b8 <CONSOLE_STATUS+0x7a8>
    80007abc:	00000097          	auipc	ra,0x0
    80007ac0:	66c080e7          	jalr	1644(ra) # 80008128 <__printf>
    80007ac4:	00048513          	mv	a0,s1
    80007ac8:	00000097          	auipc	ra,0x0
    80007acc:	254080e7          	jalr	596(ra) # 80007d1c <plic_complete>
    80007ad0:	00100513          	li	a0,1
    80007ad4:	f7dff06f          	j	80007a50 <devintr+0x40>
    80007ad8:	00006517          	auipc	a0,0x6
    80007adc:	6e850513          	addi	a0,a0,1768 # 8000e1c0 <tickslock>
    80007ae0:	00001097          	auipc	ra,0x1
    80007ae4:	31c080e7          	jalr	796(ra) # 80008dfc <acquire>
    80007ae8:	00005717          	auipc	a4,0x5
    80007aec:	4bc70713          	addi	a4,a4,1212 # 8000cfa4 <ticks>
    80007af0:	00072783          	lw	a5,0(a4)
    80007af4:	00006517          	auipc	a0,0x6
    80007af8:	6cc50513          	addi	a0,a0,1740 # 8000e1c0 <tickslock>
    80007afc:	0017879b          	addiw	a5,a5,1
    80007b00:	00f72023          	sw	a5,0(a4)
    80007b04:	00001097          	auipc	ra,0x1
    80007b08:	3c4080e7          	jalr	964(ra) # 80008ec8 <release>
    80007b0c:	f65ff06f          	j	80007a70 <devintr+0x60>
    80007b10:	00001097          	auipc	ra,0x1
    80007b14:	f20080e7          	jalr	-224(ra) # 80008a30 <uartintr>
    80007b18:	fadff06f          	j	80007ac4 <devintr+0xb4>
    80007b1c:	0000                	unimp
	...

0000000080007b20 <kernelvec>:
    80007b20:	f0010113          	addi	sp,sp,-256
    80007b24:	00113023          	sd	ra,0(sp)
    80007b28:	00213423          	sd	sp,8(sp)
    80007b2c:	00313823          	sd	gp,16(sp)
    80007b30:	00413c23          	sd	tp,24(sp)
    80007b34:	02513023          	sd	t0,32(sp)
    80007b38:	02613423          	sd	t1,40(sp)
    80007b3c:	02713823          	sd	t2,48(sp)
    80007b40:	02813c23          	sd	s0,56(sp)
    80007b44:	04913023          	sd	s1,64(sp)
    80007b48:	04a13423          	sd	a0,72(sp)
    80007b4c:	04b13823          	sd	a1,80(sp)
    80007b50:	04c13c23          	sd	a2,88(sp)
    80007b54:	06d13023          	sd	a3,96(sp)
    80007b58:	06e13423          	sd	a4,104(sp)
    80007b5c:	06f13823          	sd	a5,112(sp)
    80007b60:	07013c23          	sd	a6,120(sp)
    80007b64:	09113023          	sd	a7,128(sp)
    80007b68:	09213423          	sd	s2,136(sp)
    80007b6c:	09313823          	sd	s3,144(sp)
    80007b70:	09413c23          	sd	s4,152(sp)
    80007b74:	0b513023          	sd	s5,160(sp)
    80007b78:	0b613423          	sd	s6,168(sp)
    80007b7c:	0b713823          	sd	s7,176(sp)
    80007b80:	0b813c23          	sd	s8,184(sp)
    80007b84:	0d913023          	sd	s9,192(sp)
    80007b88:	0da13423          	sd	s10,200(sp)
    80007b8c:	0db13823          	sd	s11,208(sp)
    80007b90:	0dc13c23          	sd	t3,216(sp)
    80007b94:	0fd13023          	sd	t4,224(sp)
    80007b98:	0fe13423          	sd	t5,232(sp)
    80007b9c:	0ff13823          	sd	t6,240(sp)
    80007ba0:	cd1ff0ef          	jal	ra,80007870 <kerneltrap>
    80007ba4:	00013083          	ld	ra,0(sp)
    80007ba8:	00813103          	ld	sp,8(sp)
    80007bac:	01013183          	ld	gp,16(sp)
    80007bb0:	02013283          	ld	t0,32(sp)
    80007bb4:	02813303          	ld	t1,40(sp)
    80007bb8:	03013383          	ld	t2,48(sp)
    80007bbc:	03813403          	ld	s0,56(sp)
    80007bc0:	04013483          	ld	s1,64(sp)
    80007bc4:	04813503          	ld	a0,72(sp)
    80007bc8:	05013583          	ld	a1,80(sp)
    80007bcc:	05813603          	ld	a2,88(sp)
    80007bd0:	06013683          	ld	a3,96(sp)
    80007bd4:	06813703          	ld	a4,104(sp)
    80007bd8:	07013783          	ld	a5,112(sp)
    80007bdc:	07813803          	ld	a6,120(sp)
    80007be0:	08013883          	ld	a7,128(sp)
    80007be4:	08813903          	ld	s2,136(sp)
    80007be8:	09013983          	ld	s3,144(sp)
    80007bec:	09813a03          	ld	s4,152(sp)
    80007bf0:	0a013a83          	ld	s5,160(sp)
    80007bf4:	0a813b03          	ld	s6,168(sp)
    80007bf8:	0b013b83          	ld	s7,176(sp)
    80007bfc:	0b813c03          	ld	s8,184(sp)
    80007c00:	0c013c83          	ld	s9,192(sp)
    80007c04:	0c813d03          	ld	s10,200(sp)
    80007c08:	0d013d83          	ld	s11,208(sp)
    80007c0c:	0d813e03          	ld	t3,216(sp)
    80007c10:	0e013e83          	ld	t4,224(sp)
    80007c14:	0e813f03          	ld	t5,232(sp)
    80007c18:	0f013f83          	ld	t6,240(sp)
    80007c1c:	10010113          	addi	sp,sp,256
    80007c20:	10200073          	sret
    80007c24:	00000013          	nop
    80007c28:	00000013          	nop
    80007c2c:	00000013          	nop

0000000080007c30 <timervec>:
    80007c30:	34051573          	csrrw	a0,mscratch,a0
    80007c34:	00b53023          	sd	a1,0(a0)
    80007c38:	00c53423          	sd	a2,8(a0)
    80007c3c:	00d53823          	sd	a3,16(a0)
    80007c40:	01853583          	ld	a1,24(a0)
    80007c44:	02053603          	ld	a2,32(a0)
    80007c48:	0005b683          	ld	a3,0(a1)
    80007c4c:	00c686b3          	add	a3,a3,a2
    80007c50:	00d5b023          	sd	a3,0(a1)
    80007c54:	00200593          	li	a1,2
    80007c58:	14459073          	csrw	sip,a1
    80007c5c:	01053683          	ld	a3,16(a0)
    80007c60:	00853603          	ld	a2,8(a0)
    80007c64:	00053583          	ld	a1,0(a0)
    80007c68:	34051573          	csrrw	a0,mscratch,a0
    80007c6c:	30200073          	mret

0000000080007c70 <plicinit>:
    80007c70:	ff010113          	addi	sp,sp,-16
    80007c74:	00813423          	sd	s0,8(sp)
    80007c78:	01010413          	addi	s0,sp,16
    80007c7c:	00813403          	ld	s0,8(sp)
    80007c80:	0c0007b7          	lui	a5,0xc000
    80007c84:	00100713          	li	a4,1
    80007c88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80007c8c:	00e7a223          	sw	a4,4(a5)
    80007c90:	01010113          	addi	sp,sp,16
    80007c94:	00008067          	ret

0000000080007c98 <plicinithart>:
    80007c98:	ff010113          	addi	sp,sp,-16
    80007c9c:	00813023          	sd	s0,0(sp)
    80007ca0:	00113423          	sd	ra,8(sp)
    80007ca4:	01010413          	addi	s0,sp,16
    80007ca8:	00000097          	auipc	ra,0x0
    80007cac:	a48080e7          	jalr	-1464(ra) # 800076f0 <cpuid>
    80007cb0:	0085171b          	slliw	a4,a0,0x8
    80007cb4:	0c0027b7          	lui	a5,0xc002
    80007cb8:	00e787b3          	add	a5,a5,a4
    80007cbc:	40200713          	li	a4,1026
    80007cc0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007cc4:	00813083          	ld	ra,8(sp)
    80007cc8:	00013403          	ld	s0,0(sp)
    80007ccc:	00d5151b          	slliw	a0,a0,0xd
    80007cd0:	0c2017b7          	lui	a5,0xc201
    80007cd4:	00a78533          	add	a0,a5,a0
    80007cd8:	00052023          	sw	zero,0(a0)
    80007cdc:	01010113          	addi	sp,sp,16
    80007ce0:	00008067          	ret

0000000080007ce4 <plic_claim>:
    80007ce4:	ff010113          	addi	sp,sp,-16
    80007ce8:	00813023          	sd	s0,0(sp)
    80007cec:	00113423          	sd	ra,8(sp)
    80007cf0:	01010413          	addi	s0,sp,16
    80007cf4:	00000097          	auipc	ra,0x0
    80007cf8:	9fc080e7          	jalr	-1540(ra) # 800076f0 <cpuid>
    80007cfc:	00813083          	ld	ra,8(sp)
    80007d00:	00013403          	ld	s0,0(sp)
    80007d04:	00d5151b          	slliw	a0,a0,0xd
    80007d08:	0c2017b7          	lui	a5,0xc201
    80007d0c:	00a78533          	add	a0,a5,a0
    80007d10:	00452503          	lw	a0,4(a0)
    80007d14:	01010113          	addi	sp,sp,16
    80007d18:	00008067          	ret

0000000080007d1c <plic_complete>:
    80007d1c:	fe010113          	addi	sp,sp,-32
    80007d20:	00813823          	sd	s0,16(sp)
    80007d24:	00913423          	sd	s1,8(sp)
    80007d28:	00113c23          	sd	ra,24(sp)
    80007d2c:	02010413          	addi	s0,sp,32
    80007d30:	00050493          	mv	s1,a0
    80007d34:	00000097          	auipc	ra,0x0
    80007d38:	9bc080e7          	jalr	-1604(ra) # 800076f0 <cpuid>
    80007d3c:	01813083          	ld	ra,24(sp)
    80007d40:	01013403          	ld	s0,16(sp)
    80007d44:	00d5179b          	slliw	a5,a0,0xd
    80007d48:	0c201737          	lui	a4,0xc201
    80007d4c:	00f707b3          	add	a5,a4,a5
    80007d50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007d54:	00813483          	ld	s1,8(sp)
    80007d58:	02010113          	addi	sp,sp,32
    80007d5c:	00008067          	ret

0000000080007d60 <consolewrite>:
    80007d60:	fb010113          	addi	sp,sp,-80
    80007d64:	04813023          	sd	s0,64(sp)
    80007d68:	04113423          	sd	ra,72(sp)
    80007d6c:	02913c23          	sd	s1,56(sp)
    80007d70:	03213823          	sd	s2,48(sp)
    80007d74:	03313423          	sd	s3,40(sp)
    80007d78:	03413023          	sd	s4,32(sp)
    80007d7c:	01513c23          	sd	s5,24(sp)
    80007d80:	05010413          	addi	s0,sp,80
    80007d84:	06c05c63          	blez	a2,80007dfc <consolewrite+0x9c>
    80007d88:	00060993          	mv	s3,a2
    80007d8c:	00050a13          	mv	s4,a0
    80007d90:	00058493          	mv	s1,a1
    80007d94:	00000913          	li	s2,0
    80007d98:	fff00a93          	li	s5,-1
    80007d9c:	01c0006f          	j	80007db8 <consolewrite+0x58>
    80007da0:	fbf44503          	lbu	a0,-65(s0)
    80007da4:	0019091b          	addiw	s2,s2,1
    80007da8:	00148493          	addi	s1,s1,1
    80007dac:	00001097          	auipc	ra,0x1
    80007db0:	a9c080e7          	jalr	-1380(ra) # 80008848 <uartputc>
    80007db4:	03298063          	beq	s3,s2,80007dd4 <consolewrite+0x74>
    80007db8:	00048613          	mv	a2,s1
    80007dbc:	00100693          	li	a3,1
    80007dc0:	000a0593          	mv	a1,s4
    80007dc4:	fbf40513          	addi	a0,s0,-65
    80007dc8:	00000097          	auipc	ra,0x0
    80007dcc:	9e0080e7          	jalr	-1568(ra) # 800077a8 <either_copyin>
    80007dd0:	fd5518e3          	bne	a0,s5,80007da0 <consolewrite+0x40>
    80007dd4:	04813083          	ld	ra,72(sp)
    80007dd8:	04013403          	ld	s0,64(sp)
    80007ddc:	03813483          	ld	s1,56(sp)
    80007de0:	02813983          	ld	s3,40(sp)
    80007de4:	02013a03          	ld	s4,32(sp)
    80007de8:	01813a83          	ld	s5,24(sp)
    80007dec:	00090513          	mv	a0,s2
    80007df0:	03013903          	ld	s2,48(sp)
    80007df4:	05010113          	addi	sp,sp,80
    80007df8:	00008067          	ret
    80007dfc:	00000913          	li	s2,0
    80007e00:	fd5ff06f          	j	80007dd4 <consolewrite+0x74>

0000000080007e04 <consoleread>:
    80007e04:	f9010113          	addi	sp,sp,-112
    80007e08:	06813023          	sd	s0,96(sp)
    80007e0c:	04913c23          	sd	s1,88(sp)
    80007e10:	05213823          	sd	s2,80(sp)
    80007e14:	05313423          	sd	s3,72(sp)
    80007e18:	05413023          	sd	s4,64(sp)
    80007e1c:	03513c23          	sd	s5,56(sp)
    80007e20:	03613823          	sd	s6,48(sp)
    80007e24:	03713423          	sd	s7,40(sp)
    80007e28:	03813023          	sd	s8,32(sp)
    80007e2c:	06113423          	sd	ra,104(sp)
    80007e30:	01913c23          	sd	s9,24(sp)
    80007e34:	07010413          	addi	s0,sp,112
    80007e38:	00060b93          	mv	s7,a2
    80007e3c:	00050913          	mv	s2,a0
    80007e40:	00058c13          	mv	s8,a1
    80007e44:	00060b1b          	sext.w	s6,a2
    80007e48:	00006497          	auipc	s1,0x6
    80007e4c:	3a048493          	addi	s1,s1,928 # 8000e1e8 <cons>
    80007e50:	00400993          	li	s3,4
    80007e54:	fff00a13          	li	s4,-1
    80007e58:	00a00a93          	li	s5,10
    80007e5c:	05705e63          	blez	s7,80007eb8 <consoleread+0xb4>
    80007e60:	09c4a703          	lw	a4,156(s1)
    80007e64:	0984a783          	lw	a5,152(s1)
    80007e68:	0007071b          	sext.w	a4,a4
    80007e6c:	08e78463          	beq	a5,a4,80007ef4 <consoleread+0xf0>
    80007e70:	07f7f713          	andi	a4,a5,127
    80007e74:	00e48733          	add	a4,s1,a4
    80007e78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80007e7c:	0017869b          	addiw	a3,a5,1
    80007e80:	08d4ac23          	sw	a3,152(s1)
    80007e84:	00070c9b          	sext.w	s9,a4
    80007e88:	0b370663          	beq	a4,s3,80007f34 <consoleread+0x130>
    80007e8c:	00100693          	li	a3,1
    80007e90:	f9f40613          	addi	a2,s0,-97
    80007e94:	000c0593          	mv	a1,s8
    80007e98:	00090513          	mv	a0,s2
    80007e9c:	f8e40fa3          	sb	a4,-97(s0)
    80007ea0:	00000097          	auipc	ra,0x0
    80007ea4:	8bc080e7          	jalr	-1860(ra) # 8000775c <either_copyout>
    80007ea8:	01450863          	beq	a0,s4,80007eb8 <consoleread+0xb4>
    80007eac:	001c0c13          	addi	s8,s8,1
    80007eb0:	fffb8b9b          	addiw	s7,s7,-1
    80007eb4:	fb5c94e3          	bne	s9,s5,80007e5c <consoleread+0x58>
    80007eb8:	000b851b          	sext.w	a0,s7
    80007ebc:	06813083          	ld	ra,104(sp)
    80007ec0:	06013403          	ld	s0,96(sp)
    80007ec4:	05813483          	ld	s1,88(sp)
    80007ec8:	05013903          	ld	s2,80(sp)
    80007ecc:	04813983          	ld	s3,72(sp)
    80007ed0:	04013a03          	ld	s4,64(sp)
    80007ed4:	03813a83          	ld	s5,56(sp)
    80007ed8:	02813b83          	ld	s7,40(sp)
    80007edc:	02013c03          	ld	s8,32(sp)
    80007ee0:	01813c83          	ld	s9,24(sp)
    80007ee4:	40ab053b          	subw	a0,s6,a0
    80007ee8:	03013b03          	ld	s6,48(sp)
    80007eec:	07010113          	addi	sp,sp,112
    80007ef0:	00008067          	ret
    80007ef4:	00001097          	auipc	ra,0x1
    80007ef8:	1d8080e7          	jalr	472(ra) # 800090cc <push_on>
    80007efc:	0984a703          	lw	a4,152(s1)
    80007f00:	09c4a783          	lw	a5,156(s1)
    80007f04:	0007879b          	sext.w	a5,a5
    80007f08:	fef70ce3          	beq	a4,a5,80007f00 <consoleread+0xfc>
    80007f0c:	00001097          	auipc	ra,0x1
    80007f10:	234080e7          	jalr	564(ra) # 80009140 <pop_on>
    80007f14:	0984a783          	lw	a5,152(s1)
    80007f18:	07f7f713          	andi	a4,a5,127
    80007f1c:	00e48733          	add	a4,s1,a4
    80007f20:	01874703          	lbu	a4,24(a4)
    80007f24:	0017869b          	addiw	a3,a5,1
    80007f28:	08d4ac23          	sw	a3,152(s1)
    80007f2c:	00070c9b          	sext.w	s9,a4
    80007f30:	f5371ee3          	bne	a4,s3,80007e8c <consoleread+0x88>
    80007f34:	000b851b          	sext.w	a0,s7
    80007f38:	f96bf2e3          	bgeu	s7,s6,80007ebc <consoleread+0xb8>
    80007f3c:	08f4ac23          	sw	a5,152(s1)
    80007f40:	f7dff06f          	j	80007ebc <consoleread+0xb8>

0000000080007f44 <consputc>:
    80007f44:	10000793          	li	a5,256
    80007f48:	00f50663          	beq	a0,a5,80007f54 <consputc+0x10>
    80007f4c:	00001317          	auipc	t1,0x1
    80007f50:	9f430067          	jr	-1548(t1) # 80008940 <uartputc_sync>
    80007f54:	ff010113          	addi	sp,sp,-16
    80007f58:	00113423          	sd	ra,8(sp)
    80007f5c:	00813023          	sd	s0,0(sp)
    80007f60:	01010413          	addi	s0,sp,16
    80007f64:	00800513          	li	a0,8
    80007f68:	00001097          	auipc	ra,0x1
    80007f6c:	9d8080e7          	jalr	-1576(ra) # 80008940 <uartputc_sync>
    80007f70:	02000513          	li	a0,32
    80007f74:	00001097          	auipc	ra,0x1
    80007f78:	9cc080e7          	jalr	-1588(ra) # 80008940 <uartputc_sync>
    80007f7c:	00013403          	ld	s0,0(sp)
    80007f80:	00813083          	ld	ra,8(sp)
    80007f84:	00800513          	li	a0,8
    80007f88:	01010113          	addi	sp,sp,16
    80007f8c:	00001317          	auipc	t1,0x1
    80007f90:	9b430067          	jr	-1612(t1) # 80008940 <uartputc_sync>

0000000080007f94 <consoleintr>:
    80007f94:	fe010113          	addi	sp,sp,-32
    80007f98:	00813823          	sd	s0,16(sp)
    80007f9c:	00913423          	sd	s1,8(sp)
    80007fa0:	01213023          	sd	s2,0(sp)
    80007fa4:	00113c23          	sd	ra,24(sp)
    80007fa8:	02010413          	addi	s0,sp,32
    80007fac:	00006917          	auipc	s2,0x6
    80007fb0:	23c90913          	addi	s2,s2,572 # 8000e1e8 <cons>
    80007fb4:	00050493          	mv	s1,a0
    80007fb8:	00090513          	mv	a0,s2
    80007fbc:	00001097          	auipc	ra,0x1
    80007fc0:	e40080e7          	jalr	-448(ra) # 80008dfc <acquire>
    80007fc4:	02048c63          	beqz	s1,80007ffc <consoleintr+0x68>
    80007fc8:	0a092783          	lw	a5,160(s2)
    80007fcc:	09892703          	lw	a4,152(s2)
    80007fd0:	07f00693          	li	a3,127
    80007fd4:	40e7873b          	subw	a4,a5,a4
    80007fd8:	02e6e263          	bltu	a3,a4,80007ffc <consoleintr+0x68>
    80007fdc:	00d00713          	li	a4,13
    80007fe0:	04e48063          	beq	s1,a4,80008020 <consoleintr+0x8c>
    80007fe4:	07f7f713          	andi	a4,a5,127
    80007fe8:	00e90733          	add	a4,s2,a4
    80007fec:	0017879b          	addiw	a5,a5,1
    80007ff0:	0af92023          	sw	a5,160(s2)
    80007ff4:	00970c23          	sb	s1,24(a4)
    80007ff8:	08f92e23          	sw	a5,156(s2)
    80007ffc:	01013403          	ld	s0,16(sp)
    80008000:	01813083          	ld	ra,24(sp)
    80008004:	00813483          	ld	s1,8(sp)
    80008008:	00013903          	ld	s2,0(sp)
    8000800c:	00006517          	auipc	a0,0x6
    80008010:	1dc50513          	addi	a0,a0,476 # 8000e1e8 <cons>
    80008014:	02010113          	addi	sp,sp,32
    80008018:	00001317          	auipc	t1,0x1
    8000801c:	eb030067          	jr	-336(t1) # 80008ec8 <release>
    80008020:	00a00493          	li	s1,10
    80008024:	fc1ff06f          	j	80007fe4 <consoleintr+0x50>

0000000080008028 <consoleinit>:
    80008028:	fe010113          	addi	sp,sp,-32
    8000802c:	00113c23          	sd	ra,24(sp)
    80008030:	00813823          	sd	s0,16(sp)
    80008034:	00913423          	sd	s1,8(sp)
    80008038:	02010413          	addi	s0,sp,32
    8000803c:	00006497          	auipc	s1,0x6
    80008040:	1ac48493          	addi	s1,s1,428 # 8000e1e8 <cons>
    80008044:	00048513          	mv	a0,s1
    80008048:	00002597          	auipc	a1,0x2
    8000804c:	7c858593          	addi	a1,a1,1992 # 8000a810 <CONSOLE_STATUS+0x800>
    80008050:	00001097          	auipc	ra,0x1
    80008054:	d88080e7          	jalr	-632(ra) # 80008dd8 <initlock>
    80008058:	00000097          	auipc	ra,0x0
    8000805c:	7ac080e7          	jalr	1964(ra) # 80008804 <uartinit>
    80008060:	01813083          	ld	ra,24(sp)
    80008064:	01013403          	ld	s0,16(sp)
    80008068:	00000797          	auipc	a5,0x0
    8000806c:	d9c78793          	addi	a5,a5,-612 # 80007e04 <consoleread>
    80008070:	0af4bc23          	sd	a5,184(s1)
    80008074:	00000797          	auipc	a5,0x0
    80008078:	cec78793          	addi	a5,a5,-788 # 80007d60 <consolewrite>
    8000807c:	0cf4b023          	sd	a5,192(s1)
    80008080:	00813483          	ld	s1,8(sp)
    80008084:	02010113          	addi	sp,sp,32
    80008088:	00008067          	ret

000000008000808c <console_read>:
    8000808c:	ff010113          	addi	sp,sp,-16
    80008090:	00813423          	sd	s0,8(sp)
    80008094:	01010413          	addi	s0,sp,16
    80008098:	00813403          	ld	s0,8(sp)
    8000809c:	00006317          	auipc	t1,0x6
    800080a0:	20433303          	ld	t1,516(t1) # 8000e2a0 <devsw+0x10>
    800080a4:	01010113          	addi	sp,sp,16
    800080a8:	00030067          	jr	t1

00000000800080ac <console_write>:
    800080ac:	ff010113          	addi	sp,sp,-16
    800080b0:	00813423          	sd	s0,8(sp)
    800080b4:	01010413          	addi	s0,sp,16
    800080b8:	00813403          	ld	s0,8(sp)
    800080bc:	00006317          	auipc	t1,0x6
    800080c0:	1ec33303          	ld	t1,492(t1) # 8000e2a8 <devsw+0x18>
    800080c4:	01010113          	addi	sp,sp,16
    800080c8:	00030067          	jr	t1

00000000800080cc <panic>:
    800080cc:	fe010113          	addi	sp,sp,-32
    800080d0:	00113c23          	sd	ra,24(sp)
    800080d4:	00813823          	sd	s0,16(sp)
    800080d8:	00913423          	sd	s1,8(sp)
    800080dc:	02010413          	addi	s0,sp,32
    800080e0:	00050493          	mv	s1,a0
    800080e4:	00002517          	auipc	a0,0x2
    800080e8:	73450513          	addi	a0,a0,1844 # 8000a818 <CONSOLE_STATUS+0x808>
    800080ec:	00006797          	auipc	a5,0x6
    800080f0:	2407ae23          	sw	zero,604(a5) # 8000e348 <pr+0x18>
    800080f4:	00000097          	auipc	ra,0x0
    800080f8:	034080e7          	jalr	52(ra) # 80008128 <__printf>
    800080fc:	00048513          	mv	a0,s1
    80008100:	00000097          	auipc	ra,0x0
    80008104:	028080e7          	jalr	40(ra) # 80008128 <__printf>
    80008108:	00002517          	auipc	a0,0x2
    8000810c:	5d850513          	addi	a0,a0,1496 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80008110:	00000097          	auipc	ra,0x0
    80008114:	018080e7          	jalr	24(ra) # 80008128 <__printf>
    80008118:	00100793          	li	a5,1
    8000811c:	00005717          	auipc	a4,0x5
    80008120:	e8f72623          	sw	a5,-372(a4) # 8000cfa8 <panicked>
    80008124:	0000006f          	j	80008124 <panic+0x58>

0000000080008128 <__printf>:
    80008128:	f3010113          	addi	sp,sp,-208
    8000812c:	08813023          	sd	s0,128(sp)
    80008130:	07313423          	sd	s3,104(sp)
    80008134:	09010413          	addi	s0,sp,144
    80008138:	05813023          	sd	s8,64(sp)
    8000813c:	08113423          	sd	ra,136(sp)
    80008140:	06913c23          	sd	s1,120(sp)
    80008144:	07213823          	sd	s2,112(sp)
    80008148:	07413023          	sd	s4,96(sp)
    8000814c:	05513c23          	sd	s5,88(sp)
    80008150:	05613823          	sd	s6,80(sp)
    80008154:	05713423          	sd	s7,72(sp)
    80008158:	03913c23          	sd	s9,56(sp)
    8000815c:	03a13823          	sd	s10,48(sp)
    80008160:	03b13423          	sd	s11,40(sp)
    80008164:	00006317          	auipc	t1,0x6
    80008168:	1cc30313          	addi	t1,t1,460 # 8000e330 <pr>
    8000816c:	01832c03          	lw	s8,24(t1)
    80008170:	00b43423          	sd	a1,8(s0)
    80008174:	00c43823          	sd	a2,16(s0)
    80008178:	00d43c23          	sd	a3,24(s0)
    8000817c:	02e43023          	sd	a4,32(s0)
    80008180:	02f43423          	sd	a5,40(s0)
    80008184:	03043823          	sd	a6,48(s0)
    80008188:	03143c23          	sd	a7,56(s0)
    8000818c:	00050993          	mv	s3,a0
    80008190:	4a0c1663          	bnez	s8,8000863c <__printf+0x514>
    80008194:	60098c63          	beqz	s3,800087ac <__printf+0x684>
    80008198:	0009c503          	lbu	a0,0(s3)
    8000819c:	00840793          	addi	a5,s0,8
    800081a0:	f6f43c23          	sd	a5,-136(s0)
    800081a4:	00000493          	li	s1,0
    800081a8:	22050063          	beqz	a0,800083c8 <__printf+0x2a0>
    800081ac:	00002a37          	lui	s4,0x2
    800081b0:	00018ab7          	lui	s5,0x18
    800081b4:	000f4b37          	lui	s6,0xf4
    800081b8:	00989bb7          	lui	s7,0x989
    800081bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800081c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800081c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800081c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800081cc:	00148c9b          	addiw	s9,s1,1
    800081d0:	02500793          	li	a5,37
    800081d4:	01998933          	add	s2,s3,s9
    800081d8:	38f51263          	bne	a0,a5,8000855c <__printf+0x434>
    800081dc:	00094783          	lbu	a5,0(s2)
    800081e0:	00078c9b          	sext.w	s9,a5
    800081e4:	1e078263          	beqz	a5,800083c8 <__printf+0x2a0>
    800081e8:	0024849b          	addiw	s1,s1,2
    800081ec:	07000713          	li	a4,112
    800081f0:	00998933          	add	s2,s3,s1
    800081f4:	38e78a63          	beq	a5,a4,80008588 <__printf+0x460>
    800081f8:	20f76863          	bltu	a4,a5,80008408 <__printf+0x2e0>
    800081fc:	42a78863          	beq	a5,a0,8000862c <__printf+0x504>
    80008200:	06400713          	li	a4,100
    80008204:	40e79663          	bne	a5,a4,80008610 <__printf+0x4e8>
    80008208:	f7843783          	ld	a5,-136(s0)
    8000820c:	0007a603          	lw	a2,0(a5)
    80008210:	00878793          	addi	a5,a5,8
    80008214:	f6f43c23          	sd	a5,-136(s0)
    80008218:	42064a63          	bltz	a2,8000864c <__printf+0x524>
    8000821c:	00a00713          	li	a4,10
    80008220:	02e677bb          	remuw	a5,a2,a4
    80008224:	00002d97          	auipc	s11,0x2
    80008228:	61cd8d93          	addi	s11,s11,1564 # 8000a840 <digits>
    8000822c:	00900593          	li	a1,9
    80008230:	0006051b          	sext.w	a0,a2
    80008234:	00000c93          	li	s9,0
    80008238:	02079793          	slli	a5,a5,0x20
    8000823c:	0207d793          	srli	a5,a5,0x20
    80008240:	00fd87b3          	add	a5,s11,a5
    80008244:	0007c783          	lbu	a5,0(a5)
    80008248:	02e656bb          	divuw	a3,a2,a4
    8000824c:	f8f40023          	sb	a5,-128(s0)
    80008250:	14c5d863          	bge	a1,a2,800083a0 <__printf+0x278>
    80008254:	06300593          	li	a1,99
    80008258:	00100c93          	li	s9,1
    8000825c:	02e6f7bb          	remuw	a5,a3,a4
    80008260:	02079793          	slli	a5,a5,0x20
    80008264:	0207d793          	srli	a5,a5,0x20
    80008268:	00fd87b3          	add	a5,s11,a5
    8000826c:	0007c783          	lbu	a5,0(a5)
    80008270:	02e6d73b          	divuw	a4,a3,a4
    80008274:	f8f400a3          	sb	a5,-127(s0)
    80008278:	12a5f463          	bgeu	a1,a0,800083a0 <__printf+0x278>
    8000827c:	00a00693          	li	a3,10
    80008280:	00900593          	li	a1,9
    80008284:	02d777bb          	remuw	a5,a4,a3
    80008288:	02079793          	slli	a5,a5,0x20
    8000828c:	0207d793          	srli	a5,a5,0x20
    80008290:	00fd87b3          	add	a5,s11,a5
    80008294:	0007c503          	lbu	a0,0(a5)
    80008298:	02d757bb          	divuw	a5,a4,a3
    8000829c:	f8a40123          	sb	a0,-126(s0)
    800082a0:	48e5f263          	bgeu	a1,a4,80008724 <__printf+0x5fc>
    800082a4:	06300513          	li	a0,99
    800082a8:	02d7f5bb          	remuw	a1,a5,a3
    800082ac:	02059593          	slli	a1,a1,0x20
    800082b0:	0205d593          	srli	a1,a1,0x20
    800082b4:	00bd85b3          	add	a1,s11,a1
    800082b8:	0005c583          	lbu	a1,0(a1)
    800082bc:	02d7d7bb          	divuw	a5,a5,a3
    800082c0:	f8b401a3          	sb	a1,-125(s0)
    800082c4:	48e57263          	bgeu	a0,a4,80008748 <__printf+0x620>
    800082c8:	3e700513          	li	a0,999
    800082cc:	02d7f5bb          	remuw	a1,a5,a3
    800082d0:	02059593          	slli	a1,a1,0x20
    800082d4:	0205d593          	srli	a1,a1,0x20
    800082d8:	00bd85b3          	add	a1,s11,a1
    800082dc:	0005c583          	lbu	a1,0(a1)
    800082e0:	02d7d7bb          	divuw	a5,a5,a3
    800082e4:	f8b40223          	sb	a1,-124(s0)
    800082e8:	46e57663          	bgeu	a0,a4,80008754 <__printf+0x62c>
    800082ec:	02d7f5bb          	remuw	a1,a5,a3
    800082f0:	02059593          	slli	a1,a1,0x20
    800082f4:	0205d593          	srli	a1,a1,0x20
    800082f8:	00bd85b3          	add	a1,s11,a1
    800082fc:	0005c583          	lbu	a1,0(a1)
    80008300:	02d7d7bb          	divuw	a5,a5,a3
    80008304:	f8b402a3          	sb	a1,-123(s0)
    80008308:	46ea7863          	bgeu	s4,a4,80008778 <__printf+0x650>
    8000830c:	02d7f5bb          	remuw	a1,a5,a3
    80008310:	02059593          	slli	a1,a1,0x20
    80008314:	0205d593          	srli	a1,a1,0x20
    80008318:	00bd85b3          	add	a1,s11,a1
    8000831c:	0005c583          	lbu	a1,0(a1)
    80008320:	02d7d7bb          	divuw	a5,a5,a3
    80008324:	f8b40323          	sb	a1,-122(s0)
    80008328:	3eeaf863          	bgeu	s5,a4,80008718 <__printf+0x5f0>
    8000832c:	02d7f5bb          	remuw	a1,a5,a3
    80008330:	02059593          	slli	a1,a1,0x20
    80008334:	0205d593          	srli	a1,a1,0x20
    80008338:	00bd85b3          	add	a1,s11,a1
    8000833c:	0005c583          	lbu	a1,0(a1)
    80008340:	02d7d7bb          	divuw	a5,a5,a3
    80008344:	f8b403a3          	sb	a1,-121(s0)
    80008348:	42eb7e63          	bgeu	s6,a4,80008784 <__printf+0x65c>
    8000834c:	02d7f5bb          	remuw	a1,a5,a3
    80008350:	02059593          	slli	a1,a1,0x20
    80008354:	0205d593          	srli	a1,a1,0x20
    80008358:	00bd85b3          	add	a1,s11,a1
    8000835c:	0005c583          	lbu	a1,0(a1)
    80008360:	02d7d7bb          	divuw	a5,a5,a3
    80008364:	f8b40423          	sb	a1,-120(s0)
    80008368:	42ebfc63          	bgeu	s7,a4,800087a0 <__printf+0x678>
    8000836c:	02079793          	slli	a5,a5,0x20
    80008370:	0207d793          	srli	a5,a5,0x20
    80008374:	00fd8db3          	add	s11,s11,a5
    80008378:	000dc703          	lbu	a4,0(s11)
    8000837c:	00a00793          	li	a5,10
    80008380:	00900c93          	li	s9,9
    80008384:	f8e404a3          	sb	a4,-119(s0)
    80008388:	00065c63          	bgez	a2,800083a0 <__printf+0x278>
    8000838c:	f9040713          	addi	a4,s0,-112
    80008390:	00f70733          	add	a4,a4,a5
    80008394:	02d00693          	li	a3,45
    80008398:	fed70823          	sb	a3,-16(a4)
    8000839c:	00078c93          	mv	s9,a5
    800083a0:	f8040793          	addi	a5,s0,-128
    800083a4:	01978cb3          	add	s9,a5,s9
    800083a8:	f7f40d13          	addi	s10,s0,-129
    800083ac:	000cc503          	lbu	a0,0(s9)
    800083b0:	fffc8c93          	addi	s9,s9,-1
    800083b4:	00000097          	auipc	ra,0x0
    800083b8:	b90080e7          	jalr	-1136(ra) # 80007f44 <consputc>
    800083bc:	ffac98e3          	bne	s9,s10,800083ac <__printf+0x284>
    800083c0:	00094503          	lbu	a0,0(s2)
    800083c4:	e00514e3          	bnez	a0,800081cc <__printf+0xa4>
    800083c8:	1a0c1663          	bnez	s8,80008574 <__printf+0x44c>
    800083cc:	08813083          	ld	ra,136(sp)
    800083d0:	08013403          	ld	s0,128(sp)
    800083d4:	07813483          	ld	s1,120(sp)
    800083d8:	07013903          	ld	s2,112(sp)
    800083dc:	06813983          	ld	s3,104(sp)
    800083e0:	06013a03          	ld	s4,96(sp)
    800083e4:	05813a83          	ld	s5,88(sp)
    800083e8:	05013b03          	ld	s6,80(sp)
    800083ec:	04813b83          	ld	s7,72(sp)
    800083f0:	04013c03          	ld	s8,64(sp)
    800083f4:	03813c83          	ld	s9,56(sp)
    800083f8:	03013d03          	ld	s10,48(sp)
    800083fc:	02813d83          	ld	s11,40(sp)
    80008400:	0d010113          	addi	sp,sp,208
    80008404:	00008067          	ret
    80008408:	07300713          	li	a4,115
    8000840c:	1ce78a63          	beq	a5,a4,800085e0 <__printf+0x4b8>
    80008410:	07800713          	li	a4,120
    80008414:	1ee79e63          	bne	a5,a4,80008610 <__printf+0x4e8>
    80008418:	f7843783          	ld	a5,-136(s0)
    8000841c:	0007a703          	lw	a4,0(a5)
    80008420:	00878793          	addi	a5,a5,8
    80008424:	f6f43c23          	sd	a5,-136(s0)
    80008428:	28074263          	bltz	a4,800086ac <__printf+0x584>
    8000842c:	00002d97          	auipc	s11,0x2
    80008430:	414d8d93          	addi	s11,s11,1044 # 8000a840 <digits>
    80008434:	00f77793          	andi	a5,a4,15
    80008438:	00fd87b3          	add	a5,s11,a5
    8000843c:	0007c683          	lbu	a3,0(a5)
    80008440:	00f00613          	li	a2,15
    80008444:	0007079b          	sext.w	a5,a4
    80008448:	f8d40023          	sb	a3,-128(s0)
    8000844c:	0047559b          	srliw	a1,a4,0x4
    80008450:	0047569b          	srliw	a3,a4,0x4
    80008454:	00000c93          	li	s9,0
    80008458:	0ee65063          	bge	a2,a4,80008538 <__printf+0x410>
    8000845c:	00f6f693          	andi	a3,a3,15
    80008460:	00dd86b3          	add	a3,s11,a3
    80008464:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008468:	0087d79b          	srliw	a5,a5,0x8
    8000846c:	00100c93          	li	s9,1
    80008470:	f8d400a3          	sb	a3,-127(s0)
    80008474:	0cb67263          	bgeu	a2,a1,80008538 <__printf+0x410>
    80008478:	00f7f693          	andi	a3,a5,15
    8000847c:	00dd86b3          	add	a3,s11,a3
    80008480:	0006c583          	lbu	a1,0(a3)
    80008484:	00f00613          	li	a2,15
    80008488:	0047d69b          	srliw	a3,a5,0x4
    8000848c:	f8b40123          	sb	a1,-126(s0)
    80008490:	0047d593          	srli	a1,a5,0x4
    80008494:	28f67e63          	bgeu	a2,a5,80008730 <__printf+0x608>
    80008498:	00f6f693          	andi	a3,a3,15
    8000849c:	00dd86b3          	add	a3,s11,a3
    800084a0:	0006c503          	lbu	a0,0(a3)
    800084a4:	0087d813          	srli	a6,a5,0x8
    800084a8:	0087d69b          	srliw	a3,a5,0x8
    800084ac:	f8a401a3          	sb	a0,-125(s0)
    800084b0:	28b67663          	bgeu	a2,a1,8000873c <__printf+0x614>
    800084b4:	00f6f693          	andi	a3,a3,15
    800084b8:	00dd86b3          	add	a3,s11,a3
    800084bc:	0006c583          	lbu	a1,0(a3)
    800084c0:	00c7d513          	srli	a0,a5,0xc
    800084c4:	00c7d69b          	srliw	a3,a5,0xc
    800084c8:	f8b40223          	sb	a1,-124(s0)
    800084cc:	29067a63          	bgeu	a2,a6,80008760 <__printf+0x638>
    800084d0:	00f6f693          	andi	a3,a3,15
    800084d4:	00dd86b3          	add	a3,s11,a3
    800084d8:	0006c583          	lbu	a1,0(a3)
    800084dc:	0107d813          	srli	a6,a5,0x10
    800084e0:	0107d69b          	srliw	a3,a5,0x10
    800084e4:	f8b402a3          	sb	a1,-123(s0)
    800084e8:	28a67263          	bgeu	a2,a0,8000876c <__printf+0x644>
    800084ec:	00f6f693          	andi	a3,a3,15
    800084f0:	00dd86b3          	add	a3,s11,a3
    800084f4:	0006c683          	lbu	a3,0(a3)
    800084f8:	0147d79b          	srliw	a5,a5,0x14
    800084fc:	f8d40323          	sb	a3,-122(s0)
    80008500:	21067663          	bgeu	a2,a6,8000870c <__printf+0x5e4>
    80008504:	02079793          	slli	a5,a5,0x20
    80008508:	0207d793          	srli	a5,a5,0x20
    8000850c:	00fd8db3          	add	s11,s11,a5
    80008510:	000dc683          	lbu	a3,0(s11)
    80008514:	00800793          	li	a5,8
    80008518:	00700c93          	li	s9,7
    8000851c:	f8d403a3          	sb	a3,-121(s0)
    80008520:	00075c63          	bgez	a4,80008538 <__printf+0x410>
    80008524:	f9040713          	addi	a4,s0,-112
    80008528:	00f70733          	add	a4,a4,a5
    8000852c:	02d00693          	li	a3,45
    80008530:	fed70823          	sb	a3,-16(a4)
    80008534:	00078c93          	mv	s9,a5
    80008538:	f8040793          	addi	a5,s0,-128
    8000853c:	01978cb3          	add	s9,a5,s9
    80008540:	f7f40d13          	addi	s10,s0,-129
    80008544:	000cc503          	lbu	a0,0(s9)
    80008548:	fffc8c93          	addi	s9,s9,-1
    8000854c:	00000097          	auipc	ra,0x0
    80008550:	9f8080e7          	jalr	-1544(ra) # 80007f44 <consputc>
    80008554:	ff9d18e3          	bne	s10,s9,80008544 <__printf+0x41c>
    80008558:	0100006f          	j	80008568 <__printf+0x440>
    8000855c:	00000097          	auipc	ra,0x0
    80008560:	9e8080e7          	jalr	-1560(ra) # 80007f44 <consputc>
    80008564:	000c8493          	mv	s1,s9
    80008568:	00094503          	lbu	a0,0(s2)
    8000856c:	c60510e3          	bnez	a0,800081cc <__printf+0xa4>
    80008570:	e40c0ee3          	beqz	s8,800083cc <__printf+0x2a4>
    80008574:	00006517          	auipc	a0,0x6
    80008578:	dbc50513          	addi	a0,a0,-580 # 8000e330 <pr>
    8000857c:	00001097          	auipc	ra,0x1
    80008580:	94c080e7          	jalr	-1716(ra) # 80008ec8 <release>
    80008584:	e49ff06f          	j	800083cc <__printf+0x2a4>
    80008588:	f7843783          	ld	a5,-136(s0)
    8000858c:	03000513          	li	a0,48
    80008590:	01000d13          	li	s10,16
    80008594:	00878713          	addi	a4,a5,8
    80008598:	0007bc83          	ld	s9,0(a5)
    8000859c:	f6e43c23          	sd	a4,-136(s0)
    800085a0:	00000097          	auipc	ra,0x0
    800085a4:	9a4080e7          	jalr	-1628(ra) # 80007f44 <consputc>
    800085a8:	07800513          	li	a0,120
    800085ac:	00000097          	auipc	ra,0x0
    800085b0:	998080e7          	jalr	-1640(ra) # 80007f44 <consputc>
    800085b4:	00002d97          	auipc	s11,0x2
    800085b8:	28cd8d93          	addi	s11,s11,652 # 8000a840 <digits>
    800085bc:	03ccd793          	srli	a5,s9,0x3c
    800085c0:	00fd87b3          	add	a5,s11,a5
    800085c4:	0007c503          	lbu	a0,0(a5)
    800085c8:	fffd0d1b          	addiw	s10,s10,-1
    800085cc:	004c9c93          	slli	s9,s9,0x4
    800085d0:	00000097          	auipc	ra,0x0
    800085d4:	974080e7          	jalr	-1676(ra) # 80007f44 <consputc>
    800085d8:	fe0d12e3          	bnez	s10,800085bc <__printf+0x494>
    800085dc:	f8dff06f          	j	80008568 <__printf+0x440>
    800085e0:	f7843783          	ld	a5,-136(s0)
    800085e4:	0007bc83          	ld	s9,0(a5)
    800085e8:	00878793          	addi	a5,a5,8
    800085ec:	f6f43c23          	sd	a5,-136(s0)
    800085f0:	000c9a63          	bnez	s9,80008604 <__printf+0x4dc>
    800085f4:	1080006f          	j	800086fc <__printf+0x5d4>
    800085f8:	001c8c93          	addi	s9,s9,1
    800085fc:	00000097          	auipc	ra,0x0
    80008600:	948080e7          	jalr	-1720(ra) # 80007f44 <consputc>
    80008604:	000cc503          	lbu	a0,0(s9)
    80008608:	fe0518e3          	bnez	a0,800085f8 <__printf+0x4d0>
    8000860c:	f5dff06f          	j	80008568 <__printf+0x440>
    80008610:	02500513          	li	a0,37
    80008614:	00000097          	auipc	ra,0x0
    80008618:	930080e7          	jalr	-1744(ra) # 80007f44 <consputc>
    8000861c:	000c8513          	mv	a0,s9
    80008620:	00000097          	auipc	ra,0x0
    80008624:	924080e7          	jalr	-1756(ra) # 80007f44 <consputc>
    80008628:	f41ff06f          	j	80008568 <__printf+0x440>
    8000862c:	02500513          	li	a0,37
    80008630:	00000097          	auipc	ra,0x0
    80008634:	914080e7          	jalr	-1772(ra) # 80007f44 <consputc>
    80008638:	f31ff06f          	j	80008568 <__printf+0x440>
    8000863c:	00030513          	mv	a0,t1
    80008640:	00000097          	auipc	ra,0x0
    80008644:	7bc080e7          	jalr	1980(ra) # 80008dfc <acquire>
    80008648:	b4dff06f          	j	80008194 <__printf+0x6c>
    8000864c:	40c0053b          	negw	a0,a2
    80008650:	00a00713          	li	a4,10
    80008654:	02e576bb          	remuw	a3,a0,a4
    80008658:	00002d97          	auipc	s11,0x2
    8000865c:	1e8d8d93          	addi	s11,s11,488 # 8000a840 <digits>
    80008660:	ff700593          	li	a1,-9
    80008664:	02069693          	slli	a3,a3,0x20
    80008668:	0206d693          	srli	a3,a3,0x20
    8000866c:	00dd86b3          	add	a3,s11,a3
    80008670:	0006c683          	lbu	a3,0(a3)
    80008674:	02e557bb          	divuw	a5,a0,a4
    80008678:	f8d40023          	sb	a3,-128(s0)
    8000867c:	10b65e63          	bge	a2,a1,80008798 <__printf+0x670>
    80008680:	06300593          	li	a1,99
    80008684:	02e7f6bb          	remuw	a3,a5,a4
    80008688:	02069693          	slli	a3,a3,0x20
    8000868c:	0206d693          	srli	a3,a3,0x20
    80008690:	00dd86b3          	add	a3,s11,a3
    80008694:	0006c683          	lbu	a3,0(a3)
    80008698:	02e7d73b          	divuw	a4,a5,a4
    8000869c:	00200793          	li	a5,2
    800086a0:	f8d400a3          	sb	a3,-127(s0)
    800086a4:	bca5ece3          	bltu	a1,a0,8000827c <__printf+0x154>
    800086a8:	ce5ff06f          	j	8000838c <__printf+0x264>
    800086ac:	40e007bb          	negw	a5,a4
    800086b0:	00002d97          	auipc	s11,0x2
    800086b4:	190d8d93          	addi	s11,s11,400 # 8000a840 <digits>
    800086b8:	00f7f693          	andi	a3,a5,15
    800086bc:	00dd86b3          	add	a3,s11,a3
    800086c0:	0006c583          	lbu	a1,0(a3)
    800086c4:	ff100613          	li	a2,-15
    800086c8:	0047d69b          	srliw	a3,a5,0x4
    800086cc:	f8b40023          	sb	a1,-128(s0)
    800086d0:	0047d59b          	srliw	a1,a5,0x4
    800086d4:	0ac75e63          	bge	a4,a2,80008790 <__printf+0x668>
    800086d8:	00f6f693          	andi	a3,a3,15
    800086dc:	00dd86b3          	add	a3,s11,a3
    800086e0:	0006c603          	lbu	a2,0(a3)
    800086e4:	00f00693          	li	a3,15
    800086e8:	0087d79b          	srliw	a5,a5,0x8
    800086ec:	f8c400a3          	sb	a2,-127(s0)
    800086f0:	d8b6e4e3          	bltu	a3,a1,80008478 <__printf+0x350>
    800086f4:	00200793          	li	a5,2
    800086f8:	e2dff06f          	j	80008524 <__printf+0x3fc>
    800086fc:	00002c97          	auipc	s9,0x2
    80008700:	124c8c93          	addi	s9,s9,292 # 8000a820 <CONSOLE_STATUS+0x810>
    80008704:	02800513          	li	a0,40
    80008708:	ef1ff06f          	j	800085f8 <__printf+0x4d0>
    8000870c:	00700793          	li	a5,7
    80008710:	00600c93          	li	s9,6
    80008714:	e0dff06f          	j	80008520 <__printf+0x3f8>
    80008718:	00700793          	li	a5,7
    8000871c:	00600c93          	li	s9,6
    80008720:	c69ff06f          	j	80008388 <__printf+0x260>
    80008724:	00300793          	li	a5,3
    80008728:	00200c93          	li	s9,2
    8000872c:	c5dff06f          	j	80008388 <__printf+0x260>
    80008730:	00300793          	li	a5,3
    80008734:	00200c93          	li	s9,2
    80008738:	de9ff06f          	j	80008520 <__printf+0x3f8>
    8000873c:	00400793          	li	a5,4
    80008740:	00300c93          	li	s9,3
    80008744:	dddff06f          	j	80008520 <__printf+0x3f8>
    80008748:	00400793          	li	a5,4
    8000874c:	00300c93          	li	s9,3
    80008750:	c39ff06f          	j	80008388 <__printf+0x260>
    80008754:	00500793          	li	a5,5
    80008758:	00400c93          	li	s9,4
    8000875c:	c2dff06f          	j	80008388 <__printf+0x260>
    80008760:	00500793          	li	a5,5
    80008764:	00400c93          	li	s9,4
    80008768:	db9ff06f          	j	80008520 <__printf+0x3f8>
    8000876c:	00600793          	li	a5,6
    80008770:	00500c93          	li	s9,5
    80008774:	dadff06f          	j	80008520 <__printf+0x3f8>
    80008778:	00600793          	li	a5,6
    8000877c:	00500c93          	li	s9,5
    80008780:	c09ff06f          	j	80008388 <__printf+0x260>
    80008784:	00800793          	li	a5,8
    80008788:	00700c93          	li	s9,7
    8000878c:	bfdff06f          	j	80008388 <__printf+0x260>
    80008790:	00100793          	li	a5,1
    80008794:	d91ff06f          	j	80008524 <__printf+0x3fc>
    80008798:	00100793          	li	a5,1
    8000879c:	bf1ff06f          	j	8000838c <__printf+0x264>
    800087a0:	00900793          	li	a5,9
    800087a4:	00800c93          	li	s9,8
    800087a8:	be1ff06f          	j	80008388 <__printf+0x260>
    800087ac:	00002517          	auipc	a0,0x2
    800087b0:	07c50513          	addi	a0,a0,124 # 8000a828 <CONSOLE_STATUS+0x818>
    800087b4:	00000097          	auipc	ra,0x0
    800087b8:	918080e7          	jalr	-1768(ra) # 800080cc <panic>

00000000800087bc <printfinit>:
    800087bc:	fe010113          	addi	sp,sp,-32
    800087c0:	00813823          	sd	s0,16(sp)
    800087c4:	00913423          	sd	s1,8(sp)
    800087c8:	00113c23          	sd	ra,24(sp)
    800087cc:	02010413          	addi	s0,sp,32
    800087d0:	00006497          	auipc	s1,0x6
    800087d4:	b6048493          	addi	s1,s1,-1184 # 8000e330 <pr>
    800087d8:	00048513          	mv	a0,s1
    800087dc:	00002597          	auipc	a1,0x2
    800087e0:	05c58593          	addi	a1,a1,92 # 8000a838 <CONSOLE_STATUS+0x828>
    800087e4:	00000097          	auipc	ra,0x0
    800087e8:	5f4080e7          	jalr	1524(ra) # 80008dd8 <initlock>
    800087ec:	01813083          	ld	ra,24(sp)
    800087f0:	01013403          	ld	s0,16(sp)
    800087f4:	0004ac23          	sw	zero,24(s1)
    800087f8:	00813483          	ld	s1,8(sp)
    800087fc:	02010113          	addi	sp,sp,32
    80008800:	00008067          	ret

0000000080008804 <uartinit>:
    80008804:	ff010113          	addi	sp,sp,-16
    80008808:	00813423          	sd	s0,8(sp)
    8000880c:	01010413          	addi	s0,sp,16
    80008810:	100007b7          	lui	a5,0x10000
    80008814:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008818:	f8000713          	li	a4,-128
    8000881c:	00e781a3          	sb	a4,3(a5)
    80008820:	00300713          	li	a4,3
    80008824:	00e78023          	sb	a4,0(a5)
    80008828:	000780a3          	sb	zero,1(a5)
    8000882c:	00e781a3          	sb	a4,3(a5)
    80008830:	00700693          	li	a3,7
    80008834:	00d78123          	sb	a3,2(a5)
    80008838:	00e780a3          	sb	a4,1(a5)
    8000883c:	00813403          	ld	s0,8(sp)
    80008840:	01010113          	addi	sp,sp,16
    80008844:	00008067          	ret

0000000080008848 <uartputc>:
    80008848:	00004797          	auipc	a5,0x4
    8000884c:	7607a783          	lw	a5,1888(a5) # 8000cfa8 <panicked>
    80008850:	00078463          	beqz	a5,80008858 <uartputc+0x10>
    80008854:	0000006f          	j	80008854 <uartputc+0xc>
    80008858:	fd010113          	addi	sp,sp,-48
    8000885c:	02813023          	sd	s0,32(sp)
    80008860:	00913c23          	sd	s1,24(sp)
    80008864:	01213823          	sd	s2,16(sp)
    80008868:	01313423          	sd	s3,8(sp)
    8000886c:	02113423          	sd	ra,40(sp)
    80008870:	03010413          	addi	s0,sp,48
    80008874:	00004917          	auipc	s2,0x4
    80008878:	73c90913          	addi	s2,s2,1852 # 8000cfb0 <uart_tx_r>
    8000887c:	00093783          	ld	a5,0(s2)
    80008880:	00004497          	auipc	s1,0x4
    80008884:	73848493          	addi	s1,s1,1848 # 8000cfb8 <uart_tx_w>
    80008888:	0004b703          	ld	a4,0(s1)
    8000888c:	02078693          	addi	a3,a5,32
    80008890:	00050993          	mv	s3,a0
    80008894:	02e69c63          	bne	a3,a4,800088cc <uartputc+0x84>
    80008898:	00001097          	auipc	ra,0x1
    8000889c:	834080e7          	jalr	-1996(ra) # 800090cc <push_on>
    800088a0:	00093783          	ld	a5,0(s2)
    800088a4:	0004b703          	ld	a4,0(s1)
    800088a8:	02078793          	addi	a5,a5,32
    800088ac:	00e79463          	bne	a5,a4,800088b4 <uartputc+0x6c>
    800088b0:	0000006f          	j	800088b0 <uartputc+0x68>
    800088b4:	00001097          	auipc	ra,0x1
    800088b8:	88c080e7          	jalr	-1908(ra) # 80009140 <pop_on>
    800088bc:	00093783          	ld	a5,0(s2)
    800088c0:	0004b703          	ld	a4,0(s1)
    800088c4:	02078693          	addi	a3,a5,32
    800088c8:	fce688e3          	beq	a3,a4,80008898 <uartputc+0x50>
    800088cc:	01f77693          	andi	a3,a4,31
    800088d0:	00006597          	auipc	a1,0x6
    800088d4:	a8058593          	addi	a1,a1,-1408 # 8000e350 <uart_tx_buf>
    800088d8:	00d586b3          	add	a3,a1,a3
    800088dc:	00170713          	addi	a4,a4,1
    800088e0:	01368023          	sb	s3,0(a3)
    800088e4:	00e4b023          	sd	a4,0(s1)
    800088e8:	10000637          	lui	a2,0x10000
    800088ec:	02f71063          	bne	a4,a5,8000890c <uartputc+0xc4>
    800088f0:	0340006f          	j	80008924 <uartputc+0xdc>
    800088f4:	00074703          	lbu	a4,0(a4)
    800088f8:	00f93023          	sd	a5,0(s2)
    800088fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008900:	00093783          	ld	a5,0(s2)
    80008904:	0004b703          	ld	a4,0(s1)
    80008908:	00f70e63          	beq	a4,a5,80008924 <uartputc+0xdc>
    8000890c:	00564683          	lbu	a3,5(a2)
    80008910:	01f7f713          	andi	a4,a5,31
    80008914:	00e58733          	add	a4,a1,a4
    80008918:	0206f693          	andi	a3,a3,32
    8000891c:	00178793          	addi	a5,a5,1
    80008920:	fc069ae3          	bnez	a3,800088f4 <uartputc+0xac>
    80008924:	02813083          	ld	ra,40(sp)
    80008928:	02013403          	ld	s0,32(sp)
    8000892c:	01813483          	ld	s1,24(sp)
    80008930:	01013903          	ld	s2,16(sp)
    80008934:	00813983          	ld	s3,8(sp)
    80008938:	03010113          	addi	sp,sp,48
    8000893c:	00008067          	ret

0000000080008940 <uartputc_sync>:
    80008940:	ff010113          	addi	sp,sp,-16
    80008944:	00813423          	sd	s0,8(sp)
    80008948:	01010413          	addi	s0,sp,16
    8000894c:	00004717          	auipc	a4,0x4
    80008950:	65c72703          	lw	a4,1628(a4) # 8000cfa8 <panicked>
    80008954:	02071663          	bnez	a4,80008980 <uartputc_sync+0x40>
    80008958:	00050793          	mv	a5,a0
    8000895c:	100006b7          	lui	a3,0x10000
    80008960:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008964:	02077713          	andi	a4,a4,32
    80008968:	fe070ce3          	beqz	a4,80008960 <uartputc_sync+0x20>
    8000896c:	0ff7f793          	andi	a5,a5,255
    80008970:	00f68023          	sb	a5,0(a3)
    80008974:	00813403          	ld	s0,8(sp)
    80008978:	01010113          	addi	sp,sp,16
    8000897c:	00008067          	ret
    80008980:	0000006f          	j	80008980 <uartputc_sync+0x40>

0000000080008984 <uartstart>:
    80008984:	ff010113          	addi	sp,sp,-16
    80008988:	00813423          	sd	s0,8(sp)
    8000898c:	01010413          	addi	s0,sp,16
    80008990:	00004617          	auipc	a2,0x4
    80008994:	62060613          	addi	a2,a2,1568 # 8000cfb0 <uart_tx_r>
    80008998:	00004517          	auipc	a0,0x4
    8000899c:	62050513          	addi	a0,a0,1568 # 8000cfb8 <uart_tx_w>
    800089a0:	00063783          	ld	a5,0(a2)
    800089a4:	00053703          	ld	a4,0(a0)
    800089a8:	04f70263          	beq	a4,a5,800089ec <uartstart+0x68>
    800089ac:	100005b7          	lui	a1,0x10000
    800089b0:	00006817          	auipc	a6,0x6
    800089b4:	9a080813          	addi	a6,a6,-1632 # 8000e350 <uart_tx_buf>
    800089b8:	01c0006f          	j	800089d4 <uartstart+0x50>
    800089bc:	0006c703          	lbu	a4,0(a3)
    800089c0:	00f63023          	sd	a5,0(a2)
    800089c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800089c8:	00063783          	ld	a5,0(a2)
    800089cc:	00053703          	ld	a4,0(a0)
    800089d0:	00f70e63          	beq	a4,a5,800089ec <uartstart+0x68>
    800089d4:	01f7f713          	andi	a4,a5,31
    800089d8:	00e806b3          	add	a3,a6,a4
    800089dc:	0055c703          	lbu	a4,5(a1)
    800089e0:	00178793          	addi	a5,a5,1
    800089e4:	02077713          	andi	a4,a4,32
    800089e8:	fc071ae3          	bnez	a4,800089bc <uartstart+0x38>
    800089ec:	00813403          	ld	s0,8(sp)
    800089f0:	01010113          	addi	sp,sp,16
    800089f4:	00008067          	ret

00000000800089f8 <uartgetc>:
    800089f8:	ff010113          	addi	sp,sp,-16
    800089fc:	00813423          	sd	s0,8(sp)
    80008a00:	01010413          	addi	s0,sp,16
    80008a04:	10000737          	lui	a4,0x10000
    80008a08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80008a0c:	0017f793          	andi	a5,a5,1
    80008a10:	00078c63          	beqz	a5,80008a28 <uartgetc+0x30>
    80008a14:	00074503          	lbu	a0,0(a4)
    80008a18:	0ff57513          	andi	a0,a0,255
    80008a1c:	00813403          	ld	s0,8(sp)
    80008a20:	01010113          	addi	sp,sp,16
    80008a24:	00008067          	ret
    80008a28:	fff00513          	li	a0,-1
    80008a2c:	ff1ff06f          	j	80008a1c <uartgetc+0x24>

0000000080008a30 <uartintr>:
    80008a30:	100007b7          	lui	a5,0x10000
    80008a34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008a38:	0017f793          	andi	a5,a5,1
    80008a3c:	0a078463          	beqz	a5,80008ae4 <uartintr+0xb4>
    80008a40:	fe010113          	addi	sp,sp,-32
    80008a44:	00813823          	sd	s0,16(sp)
    80008a48:	00913423          	sd	s1,8(sp)
    80008a4c:	00113c23          	sd	ra,24(sp)
    80008a50:	02010413          	addi	s0,sp,32
    80008a54:	100004b7          	lui	s1,0x10000
    80008a58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80008a5c:	0ff57513          	andi	a0,a0,255
    80008a60:	fffff097          	auipc	ra,0xfffff
    80008a64:	534080e7          	jalr	1332(ra) # 80007f94 <consoleintr>
    80008a68:	0054c783          	lbu	a5,5(s1)
    80008a6c:	0017f793          	andi	a5,a5,1
    80008a70:	fe0794e3          	bnez	a5,80008a58 <uartintr+0x28>
    80008a74:	00004617          	auipc	a2,0x4
    80008a78:	53c60613          	addi	a2,a2,1340 # 8000cfb0 <uart_tx_r>
    80008a7c:	00004517          	auipc	a0,0x4
    80008a80:	53c50513          	addi	a0,a0,1340 # 8000cfb8 <uart_tx_w>
    80008a84:	00063783          	ld	a5,0(a2)
    80008a88:	00053703          	ld	a4,0(a0)
    80008a8c:	04f70263          	beq	a4,a5,80008ad0 <uartintr+0xa0>
    80008a90:	100005b7          	lui	a1,0x10000
    80008a94:	00006817          	auipc	a6,0x6
    80008a98:	8bc80813          	addi	a6,a6,-1860 # 8000e350 <uart_tx_buf>
    80008a9c:	01c0006f          	j	80008ab8 <uartintr+0x88>
    80008aa0:	0006c703          	lbu	a4,0(a3)
    80008aa4:	00f63023          	sd	a5,0(a2)
    80008aa8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008aac:	00063783          	ld	a5,0(a2)
    80008ab0:	00053703          	ld	a4,0(a0)
    80008ab4:	00f70e63          	beq	a4,a5,80008ad0 <uartintr+0xa0>
    80008ab8:	01f7f713          	andi	a4,a5,31
    80008abc:	00e806b3          	add	a3,a6,a4
    80008ac0:	0055c703          	lbu	a4,5(a1)
    80008ac4:	00178793          	addi	a5,a5,1
    80008ac8:	02077713          	andi	a4,a4,32
    80008acc:	fc071ae3          	bnez	a4,80008aa0 <uartintr+0x70>
    80008ad0:	01813083          	ld	ra,24(sp)
    80008ad4:	01013403          	ld	s0,16(sp)
    80008ad8:	00813483          	ld	s1,8(sp)
    80008adc:	02010113          	addi	sp,sp,32
    80008ae0:	00008067          	ret
    80008ae4:	00004617          	auipc	a2,0x4
    80008ae8:	4cc60613          	addi	a2,a2,1228 # 8000cfb0 <uart_tx_r>
    80008aec:	00004517          	auipc	a0,0x4
    80008af0:	4cc50513          	addi	a0,a0,1228 # 8000cfb8 <uart_tx_w>
    80008af4:	00063783          	ld	a5,0(a2)
    80008af8:	00053703          	ld	a4,0(a0)
    80008afc:	04f70263          	beq	a4,a5,80008b40 <uartintr+0x110>
    80008b00:	100005b7          	lui	a1,0x10000
    80008b04:	00006817          	auipc	a6,0x6
    80008b08:	84c80813          	addi	a6,a6,-1972 # 8000e350 <uart_tx_buf>
    80008b0c:	01c0006f          	j	80008b28 <uartintr+0xf8>
    80008b10:	0006c703          	lbu	a4,0(a3)
    80008b14:	00f63023          	sd	a5,0(a2)
    80008b18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008b1c:	00063783          	ld	a5,0(a2)
    80008b20:	00053703          	ld	a4,0(a0)
    80008b24:	02f70063          	beq	a4,a5,80008b44 <uartintr+0x114>
    80008b28:	01f7f713          	andi	a4,a5,31
    80008b2c:	00e806b3          	add	a3,a6,a4
    80008b30:	0055c703          	lbu	a4,5(a1)
    80008b34:	00178793          	addi	a5,a5,1
    80008b38:	02077713          	andi	a4,a4,32
    80008b3c:	fc071ae3          	bnez	a4,80008b10 <uartintr+0xe0>
    80008b40:	00008067          	ret
    80008b44:	00008067          	ret

0000000080008b48 <kinit>:
    80008b48:	fc010113          	addi	sp,sp,-64
    80008b4c:	02913423          	sd	s1,40(sp)
    80008b50:	fffff7b7          	lui	a5,0xfffff
    80008b54:	00007497          	auipc	s1,0x7
    80008b58:	81b48493          	addi	s1,s1,-2021 # 8000f36f <end+0xfff>
    80008b5c:	02813823          	sd	s0,48(sp)
    80008b60:	01313c23          	sd	s3,24(sp)
    80008b64:	00f4f4b3          	and	s1,s1,a5
    80008b68:	02113c23          	sd	ra,56(sp)
    80008b6c:	03213023          	sd	s2,32(sp)
    80008b70:	01413823          	sd	s4,16(sp)
    80008b74:	01513423          	sd	s5,8(sp)
    80008b78:	04010413          	addi	s0,sp,64
    80008b7c:	000017b7          	lui	a5,0x1
    80008b80:	01100993          	li	s3,17
    80008b84:	00f487b3          	add	a5,s1,a5
    80008b88:	01b99993          	slli	s3,s3,0x1b
    80008b8c:	06f9e063          	bltu	s3,a5,80008bec <kinit+0xa4>
    80008b90:	00005a97          	auipc	s5,0x5
    80008b94:	7e0a8a93          	addi	s5,s5,2016 # 8000e370 <end>
    80008b98:	0754ec63          	bltu	s1,s5,80008c10 <kinit+0xc8>
    80008b9c:	0734fa63          	bgeu	s1,s3,80008c10 <kinit+0xc8>
    80008ba0:	00088a37          	lui	s4,0x88
    80008ba4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008ba8:	00004917          	auipc	s2,0x4
    80008bac:	41890913          	addi	s2,s2,1048 # 8000cfc0 <kmem>
    80008bb0:	00ca1a13          	slli	s4,s4,0xc
    80008bb4:	0140006f          	j	80008bc8 <kinit+0x80>
    80008bb8:	000017b7          	lui	a5,0x1
    80008bbc:	00f484b3          	add	s1,s1,a5
    80008bc0:	0554e863          	bltu	s1,s5,80008c10 <kinit+0xc8>
    80008bc4:	0534f663          	bgeu	s1,s3,80008c10 <kinit+0xc8>
    80008bc8:	00001637          	lui	a2,0x1
    80008bcc:	00100593          	li	a1,1
    80008bd0:	00048513          	mv	a0,s1
    80008bd4:	00000097          	auipc	ra,0x0
    80008bd8:	5e4080e7          	jalr	1508(ra) # 800091b8 <__memset>
    80008bdc:	00093783          	ld	a5,0(s2)
    80008be0:	00f4b023          	sd	a5,0(s1)
    80008be4:	00993023          	sd	s1,0(s2)
    80008be8:	fd4498e3          	bne	s1,s4,80008bb8 <kinit+0x70>
    80008bec:	03813083          	ld	ra,56(sp)
    80008bf0:	03013403          	ld	s0,48(sp)
    80008bf4:	02813483          	ld	s1,40(sp)
    80008bf8:	02013903          	ld	s2,32(sp)
    80008bfc:	01813983          	ld	s3,24(sp)
    80008c00:	01013a03          	ld	s4,16(sp)
    80008c04:	00813a83          	ld	s5,8(sp)
    80008c08:	04010113          	addi	sp,sp,64
    80008c0c:	00008067          	ret
    80008c10:	00002517          	auipc	a0,0x2
    80008c14:	c4850513          	addi	a0,a0,-952 # 8000a858 <digits+0x18>
    80008c18:	fffff097          	auipc	ra,0xfffff
    80008c1c:	4b4080e7          	jalr	1204(ra) # 800080cc <panic>

0000000080008c20 <freerange>:
    80008c20:	fc010113          	addi	sp,sp,-64
    80008c24:	000017b7          	lui	a5,0x1
    80008c28:	02913423          	sd	s1,40(sp)
    80008c2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008c30:	009504b3          	add	s1,a0,s1
    80008c34:	fffff537          	lui	a0,0xfffff
    80008c38:	02813823          	sd	s0,48(sp)
    80008c3c:	02113c23          	sd	ra,56(sp)
    80008c40:	03213023          	sd	s2,32(sp)
    80008c44:	01313c23          	sd	s3,24(sp)
    80008c48:	01413823          	sd	s4,16(sp)
    80008c4c:	01513423          	sd	s5,8(sp)
    80008c50:	01613023          	sd	s6,0(sp)
    80008c54:	04010413          	addi	s0,sp,64
    80008c58:	00a4f4b3          	and	s1,s1,a0
    80008c5c:	00f487b3          	add	a5,s1,a5
    80008c60:	06f5e463          	bltu	a1,a5,80008cc8 <freerange+0xa8>
    80008c64:	00005a97          	auipc	s5,0x5
    80008c68:	70ca8a93          	addi	s5,s5,1804 # 8000e370 <end>
    80008c6c:	0954e263          	bltu	s1,s5,80008cf0 <freerange+0xd0>
    80008c70:	01100993          	li	s3,17
    80008c74:	01b99993          	slli	s3,s3,0x1b
    80008c78:	0734fc63          	bgeu	s1,s3,80008cf0 <freerange+0xd0>
    80008c7c:	00058a13          	mv	s4,a1
    80008c80:	00004917          	auipc	s2,0x4
    80008c84:	34090913          	addi	s2,s2,832 # 8000cfc0 <kmem>
    80008c88:	00002b37          	lui	s6,0x2
    80008c8c:	0140006f          	j	80008ca0 <freerange+0x80>
    80008c90:	000017b7          	lui	a5,0x1
    80008c94:	00f484b3          	add	s1,s1,a5
    80008c98:	0554ec63          	bltu	s1,s5,80008cf0 <freerange+0xd0>
    80008c9c:	0534fa63          	bgeu	s1,s3,80008cf0 <freerange+0xd0>
    80008ca0:	00001637          	lui	a2,0x1
    80008ca4:	00100593          	li	a1,1
    80008ca8:	00048513          	mv	a0,s1
    80008cac:	00000097          	auipc	ra,0x0
    80008cb0:	50c080e7          	jalr	1292(ra) # 800091b8 <__memset>
    80008cb4:	00093703          	ld	a4,0(s2)
    80008cb8:	016487b3          	add	a5,s1,s6
    80008cbc:	00e4b023          	sd	a4,0(s1)
    80008cc0:	00993023          	sd	s1,0(s2)
    80008cc4:	fcfa76e3          	bgeu	s4,a5,80008c90 <freerange+0x70>
    80008cc8:	03813083          	ld	ra,56(sp)
    80008ccc:	03013403          	ld	s0,48(sp)
    80008cd0:	02813483          	ld	s1,40(sp)
    80008cd4:	02013903          	ld	s2,32(sp)
    80008cd8:	01813983          	ld	s3,24(sp)
    80008cdc:	01013a03          	ld	s4,16(sp)
    80008ce0:	00813a83          	ld	s5,8(sp)
    80008ce4:	00013b03          	ld	s6,0(sp)
    80008ce8:	04010113          	addi	sp,sp,64
    80008cec:	00008067          	ret
    80008cf0:	00002517          	auipc	a0,0x2
    80008cf4:	b6850513          	addi	a0,a0,-1176 # 8000a858 <digits+0x18>
    80008cf8:	fffff097          	auipc	ra,0xfffff
    80008cfc:	3d4080e7          	jalr	980(ra) # 800080cc <panic>

0000000080008d00 <kfree>:
    80008d00:	fe010113          	addi	sp,sp,-32
    80008d04:	00813823          	sd	s0,16(sp)
    80008d08:	00113c23          	sd	ra,24(sp)
    80008d0c:	00913423          	sd	s1,8(sp)
    80008d10:	02010413          	addi	s0,sp,32
    80008d14:	03451793          	slli	a5,a0,0x34
    80008d18:	04079c63          	bnez	a5,80008d70 <kfree+0x70>
    80008d1c:	00005797          	auipc	a5,0x5
    80008d20:	65478793          	addi	a5,a5,1620 # 8000e370 <end>
    80008d24:	00050493          	mv	s1,a0
    80008d28:	04f56463          	bltu	a0,a5,80008d70 <kfree+0x70>
    80008d2c:	01100793          	li	a5,17
    80008d30:	01b79793          	slli	a5,a5,0x1b
    80008d34:	02f57e63          	bgeu	a0,a5,80008d70 <kfree+0x70>
    80008d38:	00001637          	lui	a2,0x1
    80008d3c:	00100593          	li	a1,1
    80008d40:	00000097          	auipc	ra,0x0
    80008d44:	478080e7          	jalr	1144(ra) # 800091b8 <__memset>
    80008d48:	00004797          	auipc	a5,0x4
    80008d4c:	27878793          	addi	a5,a5,632 # 8000cfc0 <kmem>
    80008d50:	0007b703          	ld	a4,0(a5)
    80008d54:	01813083          	ld	ra,24(sp)
    80008d58:	01013403          	ld	s0,16(sp)
    80008d5c:	00e4b023          	sd	a4,0(s1)
    80008d60:	0097b023          	sd	s1,0(a5)
    80008d64:	00813483          	ld	s1,8(sp)
    80008d68:	02010113          	addi	sp,sp,32
    80008d6c:	00008067          	ret
    80008d70:	00002517          	auipc	a0,0x2
    80008d74:	ae850513          	addi	a0,a0,-1304 # 8000a858 <digits+0x18>
    80008d78:	fffff097          	auipc	ra,0xfffff
    80008d7c:	354080e7          	jalr	852(ra) # 800080cc <panic>

0000000080008d80 <kalloc>:
    80008d80:	fe010113          	addi	sp,sp,-32
    80008d84:	00813823          	sd	s0,16(sp)
    80008d88:	00913423          	sd	s1,8(sp)
    80008d8c:	00113c23          	sd	ra,24(sp)
    80008d90:	02010413          	addi	s0,sp,32
    80008d94:	00004797          	auipc	a5,0x4
    80008d98:	22c78793          	addi	a5,a5,556 # 8000cfc0 <kmem>
    80008d9c:	0007b483          	ld	s1,0(a5)
    80008da0:	02048063          	beqz	s1,80008dc0 <kalloc+0x40>
    80008da4:	0004b703          	ld	a4,0(s1)
    80008da8:	00001637          	lui	a2,0x1
    80008dac:	00500593          	li	a1,5
    80008db0:	00048513          	mv	a0,s1
    80008db4:	00e7b023          	sd	a4,0(a5)
    80008db8:	00000097          	auipc	ra,0x0
    80008dbc:	400080e7          	jalr	1024(ra) # 800091b8 <__memset>
    80008dc0:	01813083          	ld	ra,24(sp)
    80008dc4:	01013403          	ld	s0,16(sp)
    80008dc8:	00048513          	mv	a0,s1
    80008dcc:	00813483          	ld	s1,8(sp)
    80008dd0:	02010113          	addi	sp,sp,32
    80008dd4:	00008067          	ret

0000000080008dd8 <initlock>:
    80008dd8:	ff010113          	addi	sp,sp,-16
    80008ddc:	00813423          	sd	s0,8(sp)
    80008de0:	01010413          	addi	s0,sp,16
    80008de4:	00813403          	ld	s0,8(sp)
    80008de8:	00b53423          	sd	a1,8(a0)
    80008dec:	00052023          	sw	zero,0(a0)
    80008df0:	00053823          	sd	zero,16(a0)
    80008df4:	01010113          	addi	sp,sp,16
    80008df8:	00008067          	ret

0000000080008dfc <acquire>:
    80008dfc:	fe010113          	addi	sp,sp,-32
    80008e00:	00813823          	sd	s0,16(sp)
    80008e04:	00913423          	sd	s1,8(sp)
    80008e08:	00113c23          	sd	ra,24(sp)
    80008e0c:	01213023          	sd	s2,0(sp)
    80008e10:	02010413          	addi	s0,sp,32
    80008e14:	00050493          	mv	s1,a0
    80008e18:	10002973          	csrr	s2,sstatus
    80008e1c:	100027f3          	csrr	a5,sstatus
    80008e20:	ffd7f793          	andi	a5,a5,-3
    80008e24:	10079073          	csrw	sstatus,a5
    80008e28:	fffff097          	auipc	ra,0xfffff
    80008e2c:	8e8080e7          	jalr	-1816(ra) # 80007710 <mycpu>
    80008e30:	07852783          	lw	a5,120(a0)
    80008e34:	06078e63          	beqz	a5,80008eb0 <acquire+0xb4>
    80008e38:	fffff097          	auipc	ra,0xfffff
    80008e3c:	8d8080e7          	jalr	-1832(ra) # 80007710 <mycpu>
    80008e40:	07852783          	lw	a5,120(a0)
    80008e44:	0004a703          	lw	a4,0(s1)
    80008e48:	0017879b          	addiw	a5,a5,1
    80008e4c:	06f52c23          	sw	a5,120(a0)
    80008e50:	04071063          	bnez	a4,80008e90 <acquire+0x94>
    80008e54:	00100713          	li	a4,1
    80008e58:	00070793          	mv	a5,a4
    80008e5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008e60:	0007879b          	sext.w	a5,a5
    80008e64:	fe079ae3          	bnez	a5,80008e58 <acquire+0x5c>
    80008e68:	0ff0000f          	fence
    80008e6c:	fffff097          	auipc	ra,0xfffff
    80008e70:	8a4080e7          	jalr	-1884(ra) # 80007710 <mycpu>
    80008e74:	01813083          	ld	ra,24(sp)
    80008e78:	01013403          	ld	s0,16(sp)
    80008e7c:	00a4b823          	sd	a0,16(s1)
    80008e80:	00013903          	ld	s2,0(sp)
    80008e84:	00813483          	ld	s1,8(sp)
    80008e88:	02010113          	addi	sp,sp,32
    80008e8c:	00008067          	ret
    80008e90:	0104b903          	ld	s2,16(s1)
    80008e94:	fffff097          	auipc	ra,0xfffff
    80008e98:	87c080e7          	jalr	-1924(ra) # 80007710 <mycpu>
    80008e9c:	faa91ce3          	bne	s2,a0,80008e54 <acquire+0x58>
    80008ea0:	00002517          	auipc	a0,0x2
    80008ea4:	9c050513          	addi	a0,a0,-1600 # 8000a860 <digits+0x20>
    80008ea8:	fffff097          	auipc	ra,0xfffff
    80008eac:	224080e7          	jalr	548(ra) # 800080cc <panic>
    80008eb0:	00195913          	srli	s2,s2,0x1
    80008eb4:	fffff097          	auipc	ra,0xfffff
    80008eb8:	85c080e7          	jalr	-1956(ra) # 80007710 <mycpu>
    80008ebc:	00197913          	andi	s2,s2,1
    80008ec0:	07252e23          	sw	s2,124(a0)
    80008ec4:	f75ff06f          	j	80008e38 <acquire+0x3c>

0000000080008ec8 <release>:
    80008ec8:	fe010113          	addi	sp,sp,-32
    80008ecc:	00813823          	sd	s0,16(sp)
    80008ed0:	00113c23          	sd	ra,24(sp)
    80008ed4:	00913423          	sd	s1,8(sp)
    80008ed8:	01213023          	sd	s2,0(sp)
    80008edc:	02010413          	addi	s0,sp,32
    80008ee0:	00052783          	lw	a5,0(a0)
    80008ee4:	00079a63          	bnez	a5,80008ef8 <release+0x30>
    80008ee8:	00002517          	auipc	a0,0x2
    80008eec:	98050513          	addi	a0,a0,-1664 # 8000a868 <digits+0x28>
    80008ef0:	fffff097          	auipc	ra,0xfffff
    80008ef4:	1dc080e7          	jalr	476(ra) # 800080cc <panic>
    80008ef8:	01053903          	ld	s2,16(a0)
    80008efc:	00050493          	mv	s1,a0
    80008f00:	fffff097          	auipc	ra,0xfffff
    80008f04:	810080e7          	jalr	-2032(ra) # 80007710 <mycpu>
    80008f08:	fea910e3          	bne	s2,a0,80008ee8 <release+0x20>
    80008f0c:	0004b823          	sd	zero,16(s1)
    80008f10:	0ff0000f          	fence
    80008f14:	0f50000f          	fence	iorw,ow
    80008f18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80008f1c:	ffffe097          	auipc	ra,0xffffe
    80008f20:	7f4080e7          	jalr	2036(ra) # 80007710 <mycpu>
    80008f24:	100027f3          	csrr	a5,sstatus
    80008f28:	0027f793          	andi	a5,a5,2
    80008f2c:	04079a63          	bnez	a5,80008f80 <release+0xb8>
    80008f30:	07852783          	lw	a5,120(a0)
    80008f34:	02f05e63          	blez	a5,80008f70 <release+0xa8>
    80008f38:	fff7871b          	addiw	a4,a5,-1
    80008f3c:	06e52c23          	sw	a4,120(a0)
    80008f40:	00071c63          	bnez	a4,80008f58 <release+0x90>
    80008f44:	07c52783          	lw	a5,124(a0)
    80008f48:	00078863          	beqz	a5,80008f58 <release+0x90>
    80008f4c:	100027f3          	csrr	a5,sstatus
    80008f50:	0027e793          	ori	a5,a5,2
    80008f54:	10079073          	csrw	sstatus,a5
    80008f58:	01813083          	ld	ra,24(sp)
    80008f5c:	01013403          	ld	s0,16(sp)
    80008f60:	00813483          	ld	s1,8(sp)
    80008f64:	00013903          	ld	s2,0(sp)
    80008f68:	02010113          	addi	sp,sp,32
    80008f6c:	00008067          	ret
    80008f70:	00002517          	auipc	a0,0x2
    80008f74:	91850513          	addi	a0,a0,-1768 # 8000a888 <digits+0x48>
    80008f78:	fffff097          	auipc	ra,0xfffff
    80008f7c:	154080e7          	jalr	340(ra) # 800080cc <panic>
    80008f80:	00002517          	auipc	a0,0x2
    80008f84:	8f050513          	addi	a0,a0,-1808 # 8000a870 <digits+0x30>
    80008f88:	fffff097          	auipc	ra,0xfffff
    80008f8c:	144080e7          	jalr	324(ra) # 800080cc <panic>

0000000080008f90 <holding>:
    80008f90:	00052783          	lw	a5,0(a0)
    80008f94:	00079663          	bnez	a5,80008fa0 <holding+0x10>
    80008f98:	00000513          	li	a0,0
    80008f9c:	00008067          	ret
    80008fa0:	fe010113          	addi	sp,sp,-32
    80008fa4:	00813823          	sd	s0,16(sp)
    80008fa8:	00913423          	sd	s1,8(sp)
    80008fac:	00113c23          	sd	ra,24(sp)
    80008fb0:	02010413          	addi	s0,sp,32
    80008fb4:	01053483          	ld	s1,16(a0)
    80008fb8:	ffffe097          	auipc	ra,0xffffe
    80008fbc:	758080e7          	jalr	1880(ra) # 80007710 <mycpu>
    80008fc0:	01813083          	ld	ra,24(sp)
    80008fc4:	01013403          	ld	s0,16(sp)
    80008fc8:	40a48533          	sub	a0,s1,a0
    80008fcc:	00153513          	seqz	a0,a0
    80008fd0:	00813483          	ld	s1,8(sp)
    80008fd4:	02010113          	addi	sp,sp,32
    80008fd8:	00008067          	ret

0000000080008fdc <push_off>:
    80008fdc:	fe010113          	addi	sp,sp,-32
    80008fe0:	00813823          	sd	s0,16(sp)
    80008fe4:	00113c23          	sd	ra,24(sp)
    80008fe8:	00913423          	sd	s1,8(sp)
    80008fec:	02010413          	addi	s0,sp,32
    80008ff0:	100024f3          	csrr	s1,sstatus
    80008ff4:	100027f3          	csrr	a5,sstatus
    80008ff8:	ffd7f793          	andi	a5,a5,-3
    80008ffc:	10079073          	csrw	sstatus,a5
    80009000:	ffffe097          	auipc	ra,0xffffe
    80009004:	710080e7          	jalr	1808(ra) # 80007710 <mycpu>
    80009008:	07852783          	lw	a5,120(a0)
    8000900c:	02078663          	beqz	a5,80009038 <push_off+0x5c>
    80009010:	ffffe097          	auipc	ra,0xffffe
    80009014:	700080e7          	jalr	1792(ra) # 80007710 <mycpu>
    80009018:	07852783          	lw	a5,120(a0)
    8000901c:	01813083          	ld	ra,24(sp)
    80009020:	01013403          	ld	s0,16(sp)
    80009024:	0017879b          	addiw	a5,a5,1
    80009028:	06f52c23          	sw	a5,120(a0)
    8000902c:	00813483          	ld	s1,8(sp)
    80009030:	02010113          	addi	sp,sp,32
    80009034:	00008067          	ret
    80009038:	0014d493          	srli	s1,s1,0x1
    8000903c:	ffffe097          	auipc	ra,0xffffe
    80009040:	6d4080e7          	jalr	1748(ra) # 80007710 <mycpu>
    80009044:	0014f493          	andi	s1,s1,1
    80009048:	06952e23          	sw	s1,124(a0)
    8000904c:	fc5ff06f          	j	80009010 <push_off+0x34>

0000000080009050 <pop_off>:
    80009050:	ff010113          	addi	sp,sp,-16
    80009054:	00813023          	sd	s0,0(sp)
    80009058:	00113423          	sd	ra,8(sp)
    8000905c:	01010413          	addi	s0,sp,16
    80009060:	ffffe097          	auipc	ra,0xffffe
    80009064:	6b0080e7          	jalr	1712(ra) # 80007710 <mycpu>
    80009068:	100027f3          	csrr	a5,sstatus
    8000906c:	0027f793          	andi	a5,a5,2
    80009070:	04079663          	bnez	a5,800090bc <pop_off+0x6c>
    80009074:	07852783          	lw	a5,120(a0)
    80009078:	02f05a63          	blez	a5,800090ac <pop_off+0x5c>
    8000907c:	fff7871b          	addiw	a4,a5,-1
    80009080:	06e52c23          	sw	a4,120(a0)
    80009084:	00071c63          	bnez	a4,8000909c <pop_off+0x4c>
    80009088:	07c52783          	lw	a5,124(a0)
    8000908c:	00078863          	beqz	a5,8000909c <pop_off+0x4c>
    80009090:	100027f3          	csrr	a5,sstatus
    80009094:	0027e793          	ori	a5,a5,2
    80009098:	10079073          	csrw	sstatus,a5
    8000909c:	00813083          	ld	ra,8(sp)
    800090a0:	00013403          	ld	s0,0(sp)
    800090a4:	01010113          	addi	sp,sp,16
    800090a8:	00008067          	ret
    800090ac:	00001517          	auipc	a0,0x1
    800090b0:	7dc50513          	addi	a0,a0,2012 # 8000a888 <digits+0x48>
    800090b4:	fffff097          	auipc	ra,0xfffff
    800090b8:	018080e7          	jalr	24(ra) # 800080cc <panic>
    800090bc:	00001517          	auipc	a0,0x1
    800090c0:	7b450513          	addi	a0,a0,1972 # 8000a870 <digits+0x30>
    800090c4:	fffff097          	auipc	ra,0xfffff
    800090c8:	008080e7          	jalr	8(ra) # 800080cc <panic>

00000000800090cc <push_on>:
    800090cc:	fe010113          	addi	sp,sp,-32
    800090d0:	00813823          	sd	s0,16(sp)
    800090d4:	00113c23          	sd	ra,24(sp)
    800090d8:	00913423          	sd	s1,8(sp)
    800090dc:	02010413          	addi	s0,sp,32
    800090e0:	100024f3          	csrr	s1,sstatus
    800090e4:	100027f3          	csrr	a5,sstatus
    800090e8:	0027e793          	ori	a5,a5,2
    800090ec:	10079073          	csrw	sstatus,a5
    800090f0:	ffffe097          	auipc	ra,0xffffe
    800090f4:	620080e7          	jalr	1568(ra) # 80007710 <mycpu>
    800090f8:	07852783          	lw	a5,120(a0)
    800090fc:	02078663          	beqz	a5,80009128 <push_on+0x5c>
    80009100:	ffffe097          	auipc	ra,0xffffe
    80009104:	610080e7          	jalr	1552(ra) # 80007710 <mycpu>
    80009108:	07852783          	lw	a5,120(a0)
    8000910c:	01813083          	ld	ra,24(sp)
    80009110:	01013403          	ld	s0,16(sp)
    80009114:	0017879b          	addiw	a5,a5,1
    80009118:	06f52c23          	sw	a5,120(a0)
    8000911c:	00813483          	ld	s1,8(sp)
    80009120:	02010113          	addi	sp,sp,32
    80009124:	00008067          	ret
    80009128:	0014d493          	srli	s1,s1,0x1
    8000912c:	ffffe097          	auipc	ra,0xffffe
    80009130:	5e4080e7          	jalr	1508(ra) # 80007710 <mycpu>
    80009134:	0014f493          	andi	s1,s1,1
    80009138:	06952e23          	sw	s1,124(a0)
    8000913c:	fc5ff06f          	j	80009100 <push_on+0x34>

0000000080009140 <pop_on>:
    80009140:	ff010113          	addi	sp,sp,-16
    80009144:	00813023          	sd	s0,0(sp)
    80009148:	00113423          	sd	ra,8(sp)
    8000914c:	01010413          	addi	s0,sp,16
    80009150:	ffffe097          	auipc	ra,0xffffe
    80009154:	5c0080e7          	jalr	1472(ra) # 80007710 <mycpu>
    80009158:	100027f3          	csrr	a5,sstatus
    8000915c:	0027f793          	andi	a5,a5,2
    80009160:	04078463          	beqz	a5,800091a8 <pop_on+0x68>
    80009164:	07852783          	lw	a5,120(a0)
    80009168:	02f05863          	blez	a5,80009198 <pop_on+0x58>
    8000916c:	fff7879b          	addiw	a5,a5,-1
    80009170:	06f52c23          	sw	a5,120(a0)
    80009174:	07853783          	ld	a5,120(a0)
    80009178:	00079863          	bnez	a5,80009188 <pop_on+0x48>
    8000917c:	100027f3          	csrr	a5,sstatus
    80009180:	ffd7f793          	andi	a5,a5,-3
    80009184:	10079073          	csrw	sstatus,a5
    80009188:	00813083          	ld	ra,8(sp)
    8000918c:	00013403          	ld	s0,0(sp)
    80009190:	01010113          	addi	sp,sp,16
    80009194:	00008067          	ret
    80009198:	00001517          	auipc	a0,0x1
    8000919c:	71850513          	addi	a0,a0,1816 # 8000a8b0 <digits+0x70>
    800091a0:	fffff097          	auipc	ra,0xfffff
    800091a4:	f2c080e7          	jalr	-212(ra) # 800080cc <panic>
    800091a8:	00001517          	auipc	a0,0x1
    800091ac:	6e850513          	addi	a0,a0,1768 # 8000a890 <digits+0x50>
    800091b0:	fffff097          	auipc	ra,0xfffff
    800091b4:	f1c080e7          	jalr	-228(ra) # 800080cc <panic>

00000000800091b8 <__memset>:
    800091b8:	ff010113          	addi	sp,sp,-16
    800091bc:	00813423          	sd	s0,8(sp)
    800091c0:	01010413          	addi	s0,sp,16
    800091c4:	1a060e63          	beqz	a2,80009380 <__memset+0x1c8>
    800091c8:	40a007b3          	neg	a5,a0
    800091cc:	0077f793          	andi	a5,a5,7
    800091d0:	00778693          	addi	a3,a5,7
    800091d4:	00b00813          	li	a6,11
    800091d8:	0ff5f593          	andi	a1,a1,255
    800091dc:	fff6071b          	addiw	a4,a2,-1
    800091e0:	1b06e663          	bltu	a3,a6,8000938c <__memset+0x1d4>
    800091e4:	1cd76463          	bltu	a4,a3,800093ac <__memset+0x1f4>
    800091e8:	1a078e63          	beqz	a5,800093a4 <__memset+0x1ec>
    800091ec:	00b50023          	sb	a1,0(a0)
    800091f0:	00100713          	li	a4,1
    800091f4:	1ae78463          	beq	a5,a4,8000939c <__memset+0x1e4>
    800091f8:	00b500a3          	sb	a1,1(a0)
    800091fc:	00200713          	li	a4,2
    80009200:	1ae78a63          	beq	a5,a4,800093b4 <__memset+0x1fc>
    80009204:	00b50123          	sb	a1,2(a0)
    80009208:	00300713          	li	a4,3
    8000920c:	18e78463          	beq	a5,a4,80009394 <__memset+0x1dc>
    80009210:	00b501a3          	sb	a1,3(a0)
    80009214:	00400713          	li	a4,4
    80009218:	1ae78263          	beq	a5,a4,800093bc <__memset+0x204>
    8000921c:	00b50223          	sb	a1,4(a0)
    80009220:	00500713          	li	a4,5
    80009224:	1ae78063          	beq	a5,a4,800093c4 <__memset+0x20c>
    80009228:	00b502a3          	sb	a1,5(a0)
    8000922c:	00700713          	li	a4,7
    80009230:	18e79e63          	bne	a5,a4,800093cc <__memset+0x214>
    80009234:	00b50323          	sb	a1,6(a0)
    80009238:	00700e93          	li	t4,7
    8000923c:	00859713          	slli	a4,a1,0x8
    80009240:	00e5e733          	or	a4,a1,a4
    80009244:	01059e13          	slli	t3,a1,0x10
    80009248:	01c76e33          	or	t3,a4,t3
    8000924c:	01859313          	slli	t1,a1,0x18
    80009250:	006e6333          	or	t1,t3,t1
    80009254:	02059893          	slli	a7,a1,0x20
    80009258:	40f60e3b          	subw	t3,a2,a5
    8000925c:	011368b3          	or	a7,t1,a7
    80009260:	02859813          	slli	a6,a1,0x28
    80009264:	0108e833          	or	a6,a7,a6
    80009268:	03059693          	slli	a3,a1,0x30
    8000926c:	003e589b          	srliw	a7,t3,0x3
    80009270:	00d866b3          	or	a3,a6,a3
    80009274:	03859713          	slli	a4,a1,0x38
    80009278:	00389813          	slli	a6,a7,0x3
    8000927c:	00f507b3          	add	a5,a0,a5
    80009280:	00e6e733          	or	a4,a3,a4
    80009284:	000e089b          	sext.w	a7,t3
    80009288:	00f806b3          	add	a3,a6,a5
    8000928c:	00e7b023          	sd	a4,0(a5)
    80009290:	00878793          	addi	a5,a5,8
    80009294:	fed79ce3          	bne	a5,a3,8000928c <__memset+0xd4>
    80009298:	ff8e7793          	andi	a5,t3,-8
    8000929c:	0007871b          	sext.w	a4,a5
    800092a0:	01d787bb          	addw	a5,a5,t4
    800092a4:	0ce88e63          	beq	a7,a4,80009380 <__memset+0x1c8>
    800092a8:	00f50733          	add	a4,a0,a5
    800092ac:	00b70023          	sb	a1,0(a4)
    800092b0:	0017871b          	addiw	a4,a5,1
    800092b4:	0cc77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092b8:	00e50733          	add	a4,a0,a4
    800092bc:	00b70023          	sb	a1,0(a4)
    800092c0:	0027871b          	addiw	a4,a5,2
    800092c4:	0ac77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092c8:	00e50733          	add	a4,a0,a4
    800092cc:	00b70023          	sb	a1,0(a4)
    800092d0:	0037871b          	addiw	a4,a5,3
    800092d4:	0ac77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092d8:	00e50733          	add	a4,a0,a4
    800092dc:	00b70023          	sb	a1,0(a4)
    800092e0:	0047871b          	addiw	a4,a5,4
    800092e4:	08c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092e8:	00e50733          	add	a4,a0,a4
    800092ec:	00b70023          	sb	a1,0(a4)
    800092f0:	0057871b          	addiw	a4,a5,5
    800092f4:	08c77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    800092f8:	00e50733          	add	a4,a0,a4
    800092fc:	00b70023          	sb	a1,0(a4)
    80009300:	0067871b          	addiw	a4,a5,6
    80009304:	06c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009308:	00e50733          	add	a4,a0,a4
    8000930c:	00b70023          	sb	a1,0(a4)
    80009310:	0077871b          	addiw	a4,a5,7
    80009314:	06c77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009318:	00e50733          	add	a4,a0,a4
    8000931c:	00b70023          	sb	a1,0(a4)
    80009320:	0087871b          	addiw	a4,a5,8
    80009324:	04c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009328:	00e50733          	add	a4,a0,a4
    8000932c:	00b70023          	sb	a1,0(a4)
    80009330:	0097871b          	addiw	a4,a5,9
    80009334:	04c77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009338:	00e50733          	add	a4,a0,a4
    8000933c:	00b70023          	sb	a1,0(a4)
    80009340:	00a7871b          	addiw	a4,a5,10
    80009344:	02c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009348:	00e50733          	add	a4,a0,a4
    8000934c:	00b70023          	sb	a1,0(a4)
    80009350:	00b7871b          	addiw	a4,a5,11
    80009354:	02c77663          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009358:	00e50733          	add	a4,a0,a4
    8000935c:	00b70023          	sb	a1,0(a4)
    80009360:	00c7871b          	addiw	a4,a5,12
    80009364:	00c77e63          	bgeu	a4,a2,80009380 <__memset+0x1c8>
    80009368:	00e50733          	add	a4,a0,a4
    8000936c:	00b70023          	sb	a1,0(a4)
    80009370:	00d7879b          	addiw	a5,a5,13
    80009374:	00c7f663          	bgeu	a5,a2,80009380 <__memset+0x1c8>
    80009378:	00f507b3          	add	a5,a0,a5
    8000937c:	00b78023          	sb	a1,0(a5)
    80009380:	00813403          	ld	s0,8(sp)
    80009384:	01010113          	addi	sp,sp,16
    80009388:	00008067          	ret
    8000938c:	00b00693          	li	a3,11
    80009390:	e55ff06f          	j	800091e4 <__memset+0x2c>
    80009394:	00300e93          	li	t4,3
    80009398:	ea5ff06f          	j	8000923c <__memset+0x84>
    8000939c:	00100e93          	li	t4,1
    800093a0:	e9dff06f          	j	8000923c <__memset+0x84>
    800093a4:	00000e93          	li	t4,0
    800093a8:	e95ff06f          	j	8000923c <__memset+0x84>
    800093ac:	00000793          	li	a5,0
    800093b0:	ef9ff06f          	j	800092a8 <__memset+0xf0>
    800093b4:	00200e93          	li	t4,2
    800093b8:	e85ff06f          	j	8000923c <__memset+0x84>
    800093bc:	00400e93          	li	t4,4
    800093c0:	e7dff06f          	j	8000923c <__memset+0x84>
    800093c4:	00500e93          	li	t4,5
    800093c8:	e75ff06f          	j	8000923c <__memset+0x84>
    800093cc:	00600e93          	li	t4,6
    800093d0:	e6dff06f          	j	8000923c <__memset+0x84>

00000000800093d4 <__memmove>:
    800093d4:	ff010113          	addi	sp,sp,-16
    800093d8:	00813423          	sd	s0,8(sp)
    800093dc:	01010413          	addi	s0,sp,16
    800093e0:	0e060863          	beqz	a2,800094d0 <__memmove+0xfc>
    800093e4:	fff6069b          	addiw	a3,a2,-1
    800093e8:	0006881b          	sext.w	a6,a3
    800093ec:	0ea5e863          	bltu	a1,a0,800094dc <__memmove+0x108>
    800093f0:	00758713          	addi	a4,a1,7
    800093f4:	00a5e7b3          	or	a5,a1,a0
    800093f8:	40a70733          	sub	a4,a4,a0
    800093fc:	0077f793          	andi	a5,a5,7
    80009400:	00f73713          	sltiu	a4,a4,15
    80009404:	00174713          	xori	a4,a4,1
    80009408:	0017b793          	seqz	a5,a5
    8000940c:	00e7f7b3          	and	a5,a5,a4
    80009410:	10078863          	beqz	a5,80009520 <__memmove+0x14c>
    80009414:	00900793          	li	a5,9
    80009418:	1107f463          	bgeu	a5,a6,80009520 <__memmove+0x14c>
    8000941c:	0036581b          	srliw	a6,a2,0x3
    80009420:	fff8081b          	addiw	a6,a6,-1
    80009424:	02081813          	slli	a6,a6,0x20
    80009428:	01d85893          	srli	a7,a6,0x1d
    8000942c:	00858813          	addi	a6,a1,8
    80009430:	00058793          	mv	a5,a1
    80009434:	00050713          	mv	a4,a0
    80009438:	01088833          	add	a6,a7,a6
    8000943c:	0007b883          	ld	a7,0(a5)
    80009440:	00878793          	addi	a5,a5,8
    80009444:	00870713          	addi	a4,a4,8
    80009448:	ff173c23          	sd	a7,-8(a4)
    8000944c:	ff0798e3          	bne	a5,a6,8000943c <__memmove+0x68>
    80009450:	ff867713          	andi	a4,a2,-8
    80009454:	02071793          	slli	a5,a4,0x20
    80009458:	0207d793          	srli	a5,a5,0x20
    8000945c:	00f585b3          	add	a1,a1,a5
    80009460:	40e686bb          	subw	a3,a3,a4
    80009464:	00f507b3          	add	a5,a0,a5
    80009468:	06e60463          	beq	a2,a4,800094d0 <__memmove+0xfc>
    8000946c:	0005c703          	lbu	a4,0(a1)
    80009470:	00e78023          	sb	a4,0(a5)
    80009474:	04068e63          	beqz	a3,800094d0 <__memmove+0xfc>
    80009478:	0015c603          	lbu	a2,1(a1)
    8000947c:	00100713          	li	a4,1
    80009480:	00c780a3          	sb	a2,1(a5)
    80009484:	04e68663          	beq	a3,a4,800094d0 <__memmove+0xfc>
    80009488:	0025c603          	lbu	a2,2(a1)
    8000948c:	00200713          	li	a4,2
    80009490:	00c78123          	sb	a2,2(a5)
    80009494:	02e68e63          	beq	a3,a4,800094d0 <__memmove+0xfc>
    80009498:	0035c603          	lbu	a2,3(a1)
    8000949c:	00300713          	li	a4,3
    800094a0:	00c781a3          	sb	a2,3(a5)
    800094a4:	02e68663          	beq	a3,a4,800094d0 <__memmove+0xfc>
    800094a8:	0045c603          	lbu	a2,4(a1)
    800094ac:	00400713          	li	a4,4
    800094b0:	00c78223          	sb	a2,4(a5)
    800094b4:	00e68e63          	beq	a3,a4,800094d0 <__memmove+0xfc>
    800094b8:	0055c603          	lbu	a2,5(a1)
    800094bc:	00500713          	li	a4,5
    800094c0:	00c782a3          	sb	a2,5(a5)
    800094c4:	00e68663          	beq	a3,a4,800094d0 <__memmove+0xfc>
    800094c8:	0065c703          	lbu	a4,6(a1)
    800094cc:	00e78323          	sb	a4,6(a5)
    800094d0:	00813403          	ld	s0,8(sp)
    800094d4:	01010113          	addi	sp,sp,16
    800094d8:	00008067          	ret
    800094dc:	02061713          	slli	a4,a2,0x20
    800094e0:	02075713          	srli	a4,a4,0x20
    800094e4:	00e587b3          	add	a5,a1,a4
    800094e8:	f0f574e3          	bgeu	a0,a5,800093f0 <__memmove+0x1c>
    800094ec:	02069613          	slli	a2,a3,0x20
    800094f0:	02065613          	srli	a2,a2,0x20
    800094f4:	fff64613          	not	a2,a2
    800094f8:	00e50733          	add	a4,a0,a4
    800094fc:	00c78633          	add	a2,a5,a2
    80009500:	fff7c683          	lbu	a3,-1(a5)
    80009504:	fff78793          	addi	a5,a5,-1
    80009508:	fff70713          	addi	a4,a4,-1
    8000950c:	00d70023          	sb	a3,0(a4)
    80009510:	fec798e3          	bne	a5,a2,80009500 <__memmove+0x12c>
    80009514:	00813403          	ld	s0,8(sp)
    80009518:	01010113          	addi	sp,sp,16
    8000951c:	00008067          	ret
    80009520:	02069713          	slli	a4,a3,0x20
    80009524:	02075713          	srli	a4,a4,0x20
    80009528:	00170713          	addi	a4,a4,1
    8000952c:	00e50733          	add	a4,a0,a4
    80009530:	00050793          	mv	a5,a0
    80009534:	0005c683          	lbu	a3,0(a1)
    80009538:	00178793          	addi	a5,a5,1
    8000953c:	00158593          	addi	a1,a1,1
    80009540:	fed78fa3          	sb	a3,-1(a5)
    80009544:	fee798e3          	bne	a5,a4,80009534 <__memmove+0x160>
    80009548:	f89ff06f          	j	800094d0 <__memmove+0xfc>
	...
