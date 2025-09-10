
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	79013103          	ld	sp,1936(sp) # 8000b790 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3e8060ef          	jal	ra,80006404 <start>

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
    80001188:	014010ef          	jal	ra,8000219c <_ZN5Riscv20handleSupervisorTrapEv>
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

0000000080001408 <_Z8sem_openPP4_semj>:

int sem_open (sem_t* handle,unsigned init){
    80001408:	fe010113          	addi	sp,sp,-32
    8000140c:	00813c23          	sd	s0,24(sp)
    80001410:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a2, %0"::"r"(init));
    80001414:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001418:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    8000141c:	02100793          	li	a5,33
    80001420:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001424:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001428:	00050793          	mv	a5,a0
    8000142c:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001430:	fec42503          	lw	a0,-20(s0)
}
    80001434:	0005051b          	sext.w	a0,a0
    80001438:	01813403          	ld	s0,24(sp)
    8000143c:	02010113          	addi	sp,sp,32
    80001440:	00008067          	ret

0000000080001444 <_Z9sem_closeP4_sem>:
int sem_close(sem_t handle){
    80001444:	fe010113          	addi	sp,sp,-32
    80001448:	00813c23          	sd	s0,24(sp)
    8000144c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001450:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    80001454:	02200793          	li	a5,34
    80001458:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000145c:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001460:	00050793          	mv	a5,a0
    80001464:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001468:	fec42503          	lw	a0,-20(s0)
}
    8000146c:	0005051b          	sext.w	a0,a0
    80001470:	01813403          	ld	s0,24(sp)
    80001474:	02010113          	addi	sp,sp,32
    80001478:	00008067          	ret

000000008000147c <_Z8sem_waitP4_sem>:
int sem_wait(sem_t id){
    8000147c:	fe010113          	addi	sp,sp,-32
    80001480:	00813c23          	sd	s0,24(sp)
    80001484:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001488:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    8000148c:	02300793          	li	a5,35
    80001490:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001494:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001498:	00050793          	mv	a5,a0
    8000149c:	fef42623          	sw	a5,-20(s0)
    return flag;
    800014a0:	fec42503          	lw	a0,-20(s0)
}
    800014a4:	0005051b          	sext.w	a0,a0
    800014a8:	01813403          	ld	s0,24(sp)
    800014ac:	02010113          	addi	sp,sp,32
    800014b0:	00008067          	ret

00000000800014b4 <_Z10sem_signalP4_sem>:
int sem_signal(sem_t id){
    800014b4:	fe010113          	addi	sp,sp,-32
    800014b8:	00813c23          	sd	s0,24(sp)
    800014bc:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    800014c0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    800014c4:	02400793          	li	a5,36
    800014c8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014cc:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800014d0:	00050793          	mv	a5,a0
    800014d4:	fef42623          	sw	a5,-20(s0)
    return flag;
    800014d8:	fec42503          	lw	a0,-20(s0)
}
    800014dc:	0005051b          	sext.w	a0,a0
    800014e0:	01813403          	ld	s0,24(sp)
    800014e4:	02010113          	addi	sp,sp,32
    800014e8:	00008067          	ret

00000000800014ec <_Z10time_sleepm>:

int time_sleep(time_t tajmara){
    800014ec:	fe010113          	addi	sp,sp,-32
    800014f0:	00813c23          	sd	s0,24(sp)
    800014f4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(tajmara));
    800014f8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    800014fc:	03100793          	li	a5,49
    80001500:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001504:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001508:	00050793          	mv	a5,a0
    8000150c:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001510:	fec42503          	lw	a0,-20(s0)
}
    80001514:	0005051b          	sext.w	a0,a0
    80001518:	01813403          	ld	s0,24(sp)
    8000151c:	02010113          	addi	sp,sp,32
    80001520:	00008067          	ret

0000000080001524 <_Z4getcv>:

char getc(){
    80001524:	fe010113          	addi	sp,sp,-32
    80001528:	00813c23          	sd	s0,24(sp)
    8000152c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(GETC));
    80001530:	04100793          	li	a5,65
    80001534:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001538:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    8000153c:	00050793          	mv	a5,a0
    80001540:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001544:	fec42503          	lw	a0,-20(s0)
}
    80001548:	0ff57513          	andi	a0,a0,255
    8000154c:	01813403          	ld	s0,24(sp)
    80001550:	02010113          	addi	sp,sp,32
    80001554:	00008067          	ret

0000000080001558 <_Z4putcc>:

void putc(char c){
    80001558:	ff010113          	addi	sp,sp,-16
    8000155c:	00813423          	sd	s0,8(sp)
    80001560:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(c));
    80001564:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    80001568:	04200793          	li	a5,66
    8000156c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001570:	00000073          	ecall
}
    80001574:	00813403          	ld	s0,8(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret

0000000080001580 <_ZN11mySemaphore15createSemaphoreEj>:
// Created by os on 9/8/25.
//

#include "../h/Semaphore.hpp"

mySemaphore *mySemaphore::createSemaphore(unsigned int i) {
    80001580:	fe010113          	addi	sp,sp,-32
    80001584:	00113c23          	sd	ra,24(sp)
    80001588:	00813823          	sd	s0,16(sp)
    8000158c:	00913423          	sd	s1,8(sp)
    80001590:	02010413          	addi	s0,sp,32
    80001594:	00050493          	mv	s1,a0
    return new mySemaphore(i);
    80001598:	02000513          	li	a0,32
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	784080e7          	jalr	1924(ra) # 80001d20 <_Znwm>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    800015a4:	00053023          	sd	zero,0(a0) # 1000 <_entry-0x7ffff000>
    800015a8:	00053423          	sd	zero,8(a0)
    800015ac:	00052823          	sw	zero,16(a0)
    int wait();
    int signal();
    int close();

private:
    mySemaphore(int init) : blockedQ(),val(init),closed(false){}
    800015b0:	00952c23          	sw	s1,24(a0)
    800015b4:	00050e23          	sb	zero,28(a0)
}
    800015b8:	01813083          	ld	ra,24(sp)
    800015bc:	01013403          	ld	s0,16(sp)
    800015c0:	00813483          	ld	s1,8(sp)
    800015c4:	02010113          	addi	sp,sp,32
    800015c8:	00008067          	ret

00000000800015cc <_ZN11mySemaphore5blockEv>:
    if(++this->val<=0) unblock();

    return 0;
}
void mySemaphore::block()
{
    800015cc:	fe010113          	addi	sp,sp,-32
    800015d0:	00113c23          	sd	ra,24(sp)
    800015d4:	00813823          	sd	s0,16(sp)
    800015d8:	00913423          	sd	s1,8(sp)
    800015dc:	01213023          	sd	s2,0(sp)
    800015e0:	02010413          	addi	s0,sp,32
    800015e4:	00050493          	mv	s1,a0
  TCB::running->setBlocked(true);
    800015e8:	0000a797          	auipc	a5,0xa
    800015ec:	1b87b783          	ld	a5,440(a5) # 8000b7a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800015f0:	0007b903          	ld	s2,0(a5)

    bool isFinished(){return finished;}
    void setFinished(bool flag){ TCB::finished = flag;}

    bool isBlocked(){return blocked;}
    void setBlocked(bool flag){ TCB::blocked = flag;}
    800015f4:	00100793          	li	a5,1
    800015f8:	02f908a3          	sb	a5,49(s2)
        size++;
    }
    void addLast(T *data)
    {
        size_t numOfBlocks = ((sizeof(Elem) + MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE;
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    800015fc:	00100513          	li	a0,1
    80001600:	00001097          	auipc	ra,0x1
    80001604:	3d0080e7          	jalr	976(ra) # 800029d0 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80001608:	01253023          	sd	s2,0(a0)
        elem->next = nullptr;
    8000160c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001610:	0084b783          	ld	a5,8(s1)
    80001614:	02078c63          	beqz	a5,8000164c <_ZN11mySemaphore5blockEv+0x80>
        {
            tail->next = elem;
    80001618:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000161c:	00a4b423          	sd	a0,8(s1)
        } else
        {
            head = tail = elem;
        }
        size++;
    80001620:	0104a783          	lw	a5,16(s1)
    80001624:	0017879b          	addiw	a5,a5,1
    80001628:	00f4a823          	sw	a5,16(s1)
  blockedQ.addLast(TCB::running);
  TCB::dispatch();
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	50c080e7          	jalr	1292(ra) # 80001b38 <_ZN3TCB8dispatchEv>
}
    80001634:	01813083          	ld	ra,24(sp)
    80001638:	01013403          	ld	s0,16(sp)
    8000163c:	00813483          	ld	s1,8(sp)
    80001640:	00013903          	ld	s2,0(sp)
    80001644:	02010113          	addi	sp,sp,32
    80001648:	00008067          	ret
            head = tail = elem;
    8000164c:	00a4b423          	sd	a0,8(s1)
    80001650:	00a4b023          	sd	a0,0(s1)
    80001654:	fcdff06f          	j	80001620 <_ZN11mySemaphore5blockEv+0x54>

0000000080001658 <_ZN11mySemaphore4waitEv>:
    if(closed) return -1;
    80001658:	01c54783          	lbu	a5,28(a0)
    8000165c:	06079a63          	bnez	a5,800016d0 <_ZN11mySemaphore4waitEv+0x78>
    if(--this->val<0) block();
    80001660:	01852783          	lw	a5,24(a0)
    80001664:	fff7879b          	addiw	a5,a5,-1
    80001668:	00f52c23          	sw	a5,24(a0)
    8000166c:	02079713          	slli	a4,a5,0x20
    80001670:	02074063          	bltz	a4,80001690 <_ZN11mySemaphore4waitEv+0x38>
    if(TCB::running->isClosed()) return -1;
    80001674:	0000a797          	auipc	a5,0xa
    80001678:	12c7b783          	ld	a5,300(a5) # 8000b7a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000167c:	0007b783          	ld	a5,0(a5)

    bool isClosed(){return closed;}
    80001680:	0327c783          	lbu	a5,50(a5)
    80001684:	04079e63          	bnez	a5,800016e0 <_ZN11mySemaphore4waitEv+0x88>
    return 0;
    80001688:	00000513          	li	a0,0
    8000168c:	00008067          	ret
int mySemaphore::wait() {
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00113423          	sd	ra,8(sp)
    80001698:	00813023          	sd	s0,0(sp)
    8000169c:	01010413          	addi	s0,sp,16
    if(--this->val<0) block();
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	f2c080e7          	jalr	-212(ra) # 800015cc <_ZN11mySemaphore5blockEv>
    if(TCB::running->isClosed()) return -1;
    800016a8:	0000a797          	auipc	a5,0xa
    800016ac:	0f87b783          	ld	a5,248(a5) # 8000b7a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800016b0:	0007b783          	ld	a5,0(a5)
    800016b4:	0327c783          	lbu	a5,50(a5)
    800016b8:	02079063          	bnez	a5,800016d8 <_ZN11mySemaphore4waitEv+0x80>
    return 0;
    800016bc:	00000513          	li	a0,0
}
    800016c0:	00813083          	ld	ra,8(sp)
    800016c4:	00013403          	ld	s0,0(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret
    if(closed) return -1;
    800016d0:	fff00513          	li	a0,-1
    800016d4:	00008067          	ret
    if(TCB::running->isClosed()) return -1;
    800016d8:	fff00513          	li	a0,-1
    800016dc:	fe5ff06f          	j	800016c0 <_ZN11mySemaphore4waitEv+0x68>
    800016e0:	fff00513          	li	a0,-1
}
    800016e4:	00008067          	ret

00000000800016e8 <_ZN11mySemaphore7unblockEv>:

void mySemaphore::unblock()
{
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	01213023          	sd	s2,0(sp)
    800016fc:	02010413          	addi	s0,sp,32
    80001700:	00050493          	mv	s1,a0
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001704:	00053503          	ld	a0,0(a0)
    80001708:	06050463          	beqz	a0,80001770 <_ZN11mySemaphore7unblockEv+0x88>

        Elem *elem = head;
        head = head->next;
    8000170c:	00853783          	ld	a5,8(a0)
    80001710:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    80001714:	04078a63          	beqz	a5,80001768 <_ZN11mySemaphore7unblockEv+0x80>

        T *ret = elem->data;
    80001718:	00053903          	ld	s2,0(a0)
        MemoryAllocator::mem_free(elem);
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	410080e7          	jalr	1040(ra) # 80002b2c <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80001724:	0104a783          	lw	a5,16(s1)
    80001728:	fff7879b          	addiw	a5,a5,-1
    8000172c:	00f4a823          	sw	a5,16(s1)
    TCB* cur=blockedQ.removeFirst();
    if(closed) cur->setClosed(true);
    80001730:	01c4c783          	lbu	a5,28(s1)
    80001734:	00078663          	beqz	a5,80001740 <_ZN11mySemaphore7unblockEv+0x58>
    void setClosed(bool flag){ TCB::closed = flag;}
    80001738:	00100793          	li	a5,1
    8000173c:	02f90923          	sb	a5,50(s2)
    void setBlocked(bool flag){ TCB::blocked = flag;}
    80001740:	020908a3          	sb	zero,49(s2)
    cur->setBlocked(false);
    Scheduler::put(cur);
    80001744:	00090513          	mv	a0,s2
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	f98080e7          	jalr	-104(ra) # 800026e0 <_ZN9Scheduler3putEP3TCB>
}
    80001750:	01813083          	ld	ra,24(sp)
    80001754:	01013403          	ld	s0,16(sp)
    80001758:	00813483          	ld	s1,8(sp)
    8000175c:	00013903          	ld	s2,0(sp)
    80001760:	02010113          	addi	sp,sp,32
    80001764:	00008067          	ret
        if (!head) { tail = 0; }
    80001768:	0004b423          	sd	zero,8(s1)
    8000176c:	fadff06f          	j	80001718 <_ZN11mySemaphore7unblockEv+0x30>
        if (!head) { return 0; }
    80001770:	00050913          	mv	s2,a0
    80001774:	fbdff06f          	j	80001730 <_ZN11mySemaphore7unblockEv+0x48>

0000000080001778 <_ZN11mySemaphore5closeEv>:
    if(closed) return -1;
    80001778:	01c54783          	lbu	a5,28(a0)
    8000177c:	04079863          	bnez	a5,800017cc <_ZN11mySemaphore5closeEv+0x54>
int mySemaphore::close() {
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	02010413          	addi	s0,sp,32
    80001794:	00050493          	mv	s1,a0
    closed=true;
    80001798:	00100793          	li	a5,1
    8000179c:	00f50e23          	sb	a5,28(a0)
    800017a0:	0100006f          	j	800017b0 <_ZN11mySemaphore5closeEv+0x38>
        unblock();
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	f40080e7          	jalr	-192(ra) # 800016e8 <_ZN11mySemaphore7unblockEv>
    int getSize() {return size;}
    800017b0:	0104a503          	lw	a0,16(s1)
    while(blockedQ.getSize()){
    800017b4:	fe0518e3          	bnez	a0,800017a4 <_ZN11mySemaphore5closeEv+0x2c>
}
    800017b8:	01813083          	ld	ra,24(sp)
    800017bc:	01013403          	ld	s0,16(sp)
    800017c0:	00813483          	ld	s1,8(sp)
    800017c4:	02010113          	addi	sp,sp,32
    800017c8:	00008067          	ret
    if(closed) return -1;
    800017cc:	fff00513          	li	a0,-1
}
    800017d0:	00008067          	ret

00000000800017d4 <_ZN11mySemaphoreD1Ev>:
mySemaphore::~mySemaphore()
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00113423          	sd	ra,8(sp)
    800017dc:	00813023          	sd	s0,0(sp)
    800017e0:	01010413          	addi	s0,sp,16
    close();
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	f94080e7          	jalr	-108(ra) # 80001778 <_ZN11mySemaphore5closeEv>
}
    800017ec:	00813083          	ld	ra,8(sp)
    800017f0:	00013403          	ld	s0,0(sp)
    800017f4:	01010113          	addi	sp,sp,16
    800017f8:	00008067          	ret

00000000800017fc <_ZN11mySemaphore6signalEv>:
    if(closed) return -1;
    800017fc:	01c54783          	lbu	a5,28(a0)
    80001800:	04079663          	bnez	a5,8000184c <_ZN11mySemaphore6signalEv+0x50>
    if(++this->val<=0) unblock();
    80001804:	01852783          	lw	a5,24(a0)
    80001808:	0017879b          	addiw	a5,a5,1
    8000180c:	0007871b          	sext.w	a4,a5
    80001810:	00f52c23          	sw	a5,24(a0)
    80001814:	00e05663          	blez	a4,80001820 <_ZN11mySemaphore6signalEv+0x24>
    return 0;
    80001818:	00000513          	li	a0,0
}
    8000181c:	00008067          	ret
int mySemaphore::signal() {
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00113423          	sd	ra,8(sp)
    80001828:	00813023          	sd	s0,0(sp)
    8000182c:	01010413          	addi	s0,sp,16
    if(++this->val<=0) unblock();
    80001830:	00000097          	auipc	ra,0x0
    80001834:	eb8080e7          	jalr	-328(ra) # 800016e8 <_ZN11mySemaphore7unblockEv>
    return 0;
    80001838:	00000513          	li	a0,0
}
    8000183c:	00813083          	ld	ra,8(sp)
    80001840:	00013403          	ld	s0,0(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret
    if(closed) return -1;
    8000184c:	fff00513          	li	a0,-1
    80001850:	00008067          	ret

0000000080001854 <_Z15userMainWrapperPv>:
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"

extern void userMain();

void userMainWrapper(void* arg){
    80001854:	ff010113          	addi	sp,sp,-16
    80001858:	00113423          	sd	ra,8(sp)
    8000185c:	00813023          	sd	s0,0(sp)
    80001860:	01010413          	addi	s0,sp,16
    userMain();
    80001864:	00004097          	auipc	ra,0x4
    80001868:	018080e7          	jalr	24(ra) # 8000587c <_Z8userMainv>
}
    8000186c:	00813083          	ld	ra,8(sp)
    80001870:	00013403          	ld	s0,0(sp)
    80001874:	01010113          	addi	sp,sp,16
    80001878:	00008067          	ret

000000008000187c <_Z4idlePv>:
void idle(void* arg){
    8000187c:	ff010113          	addi	sp,sp,-16
    80001880:	00113423          	sd	ra,8(sp)
    80001884:	00813023          	sd	s0,0(sp)
    80001888:	01010413          	addi	s0,sp,16
    while(true) thread_dispatch();
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	b58080e7          	jalr	-1192(ra) # 800013e4 <_Z15thread_dispatchv>
    80001894:	ff9ff06f          	j	8000188c <_Z4idlePv+0x10>

0000000080001898 <main>:
}
int main(){
    80001898:	fe010113          	addi	sp,sp,-32
    8000189c:	00113c23          	sd	ra,24(sp)
    800018a0:	00813823          	sd	s0,16(sp)
    800018a4:	00913423          	sd	s1,8(sp)
    800018a8:	01213023          	sd	s2,0(sp)
    800018ac:	02010413          	addi	s0,sp,32
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static size_t getLargestFreeBlock();
    static size_t getFree();
    static void initMemory(){
        freeMemHead=(FreeBlock*) HEAP_START_ADDR;
    800018b0:	0000a797          	auipc	a5,0xa
    800018b4:	eb87b783          	ld	a5,-328(a5) # 8000b768 <_GLOBAL_OFFSET_TABLE_+0x10>
    800018b8:	0007b783          	ld	a5,0(a5)
    800018bc:	0000a697          	auipc	a3,0xa
    800018c0:	ecc6b683          	ld	a3,-308(a3) # 8000b788 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018c4:	00f6b023          	sd	a5,0(a3)
        freeMemHead->next=nullptr;
    800018c8:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    800018cc:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    800018d0:	0000a717          	auipc	a4,0xa
    800018d4:	ed873703          	ld	a4,-296(a4) # 8000b7a8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800018d8:	00073703          	ld	a4,0(a4)
    800018dc:	40f70733          	sub	a4,a4,a5
    800018e0:	fe870713          	addi	a4,a4,-24
    800018e4:	00e7b023          	sd	a4,0(a5)
        totalFreeMem=freeMemHead->size;
    800018e8:	0006b783          	ld	a5,0(a3)
    800018ec:	0007b783          	ld	a5,0(a5)
    800018f0:	0000a717          	auipc	a4,0xa
    800018f4:	ea873703          	ld	a4,-344(a4) # 8000b798 <_GLOBAL_OFFSET_TABLE_+0x40>
    800018f8:	00f73023          	sd	a5,0(a4)
        largestFreeBlock=totalFreeMem;
    800018fc:	0000a717          	auipc	a4,0xa
    80001900:	e6473703          	ld	a4,-412(a4) # 8000b760 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001904:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::initMemory();
    TCB *threads[5];
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001908:	0000a797          	auipc	a5,0xa
    8000190c:	e687b783          	ld	a5,-408(a5) # 8000b770 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001910:	10579073          	csrw	stvec,a5
    //globalno prihvatamo prekide u supervizorskom modu
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    threads[0]=TCB::createThreadBasic(nullptr,nullptr);
    80001914:	00000593          	li	a1,0
    80001918:	00000513          	li	a0,0
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	294080e7          	jalr	660(ra) # 80001bb0 <_ZN3TCB17createThreadBasicEPFvPvES0_>
    TCB::running = threads[0];
    80001924:	0000a797          	auipc	a5,0xa
    80001928:	e7c7b783          	ld	a5,-388(a5) # 8000b7a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000192c:	00a7b023          	sd	a0,0(a5)

    Thread* idleThread = new Thread(idle,nullptr);
    80001930:	02000513          	li	a0,32
    80001934:	00000097          	auipc	ra,0x0
    80001938:	3ec080e7          	jalr	1004(ra) # 80001d20 <_Znwm>
    8000193c:	00050913          	mv	s2,a0
    80001940:	00000613          	li	a2,0
    80001944:	00000597          	auipc	a1,0x0
    80001948:	f3858593          	addi	a1,a1,-200 # 8000187c <_Z4idlePv>
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	4dc080e7          	jalr	1244(ra) # 80001e28 <_ZN6ThreadC1EPFvPvES0_>
    Semaphore* sem = new Semaphore(0);
    80001954:	01000513          	li	a0,16
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	3c8080e7          	jalr	968(ra) # 80001d20 <_Znwm>
    80001960:	00050493          	mv	s1,a0
    80001964:	00000593          	li	a1,0
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	600080e7          	jalr	1536(ra) # 80001f68 <_ZN9SemaphoreC1Ej>
    idleThread->start();
    80001970:	00090513          	mv	a0,s2
    80001974:	00000097          	auipc	ra,0x0
    80001978:	544080e7          	jalr	1348(ra) # 80001eb8 <_ZN6Thread5startEv>

    Thread* userThread = new Thread(userMainWrapper, sem);
    8000197c:	02000513          	li	a0,32
    80001980:	00000097          	auipc	ra,0x0
    80001984:	3a0080e7          	jalr	928(ra) # 80001d20 <_Znwm>
    80001988:	00050913          	mv	s2,a0
    8000198c:	00048613          	mv	a2,s1
    80001990:	00000597          	auipc	a1,0x0
    80001994:	ec458593          	addi	a1,a1,-316 # 80001854 <_Z15userMainWrapperPv>
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	490080e7          	jalr	1168(ra) # 80001e28 <_ZN6ThreadC1EPFvPvES0_>
    800019a0:	0580006f          	j	800019f8 <main+0x160>
    800019a4:	00050493          	mv	s1,a0
    Thread* idleThread = new Thread(idle,nullptr);
    800019a8:	00090513          	mv	a0,s2
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	3c4080e7          	jalr	964(ra) # 80001d70 <_ZdlPv>
    800019b4:	00048513          	mv	a0,s1
    800019b8:	0000b097          	auipc	ra,0xb
    800019bc:	fc0080e7          	jalr	-64(ra) # 8000c978 <_Unwind_Resume>
    800019c0:	00050913          	mv	s2,a0
    Semaphore* sem = new Semaphore(0);
    800019c4:	00048513          	mv	a0,s1
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	3a8080e7          	jalr	936(ra) # 80001d70 <_ZdlPv>
    800019d0:	00090513          	mv	a0,s2
    800019d4:	0000b097          	auipc	ra,0xb
    800019d8:	fa4080e7          	jalr	-92(ra) # 8000c978 <_Unwind_Resume>
    800019dc:	00050493          	mv	s1,a0
    Thread* userThread = new Thread(userMainWrapper, sem);
    800019e0:	00090513          	mv	a0,s2
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	38c080e7          	jalr	908(ra) # 80001d70 <_ZdlPv>
    800019ec:	00048513          	mv	a0,s1
    800019f0:	0000b097          	auipc	ra,0xb
    800019f4:	f88080e7          	jalr	-120(ra) # 8000c978 <_Unwind_Resume>
    userThread->start();
    800019f8:	00090513          	mv	a0,s2
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	4bc080e7          	jalr	1212(ra) # 80001eb8 <_ZN6Thread5startEv>

    sem->wait();
    80001a04:	00048513          	mv	a0,s1
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	59c080e7          	jalr	1436(ra) # 80001fa4 <_ZN9Semaphore4waitEv>
    return 0;
    80001a10:	00000513          	li	a0,0
    80001a14:	01813083          	ld	ra,24(sp)
    80001a18:	01013403          	ld	s0,16(sp)
    80001a1c:	00813483          	ld	s1,8(sp)
    80001a20:	00013903          	ld	s2,0(sp)
    80001a24:	02010113          	addi	sp,sp,32
    80001a28:	00008067          	ret

0000000080001a2c <_ZN3TCB13threadWrapperEv>:
        //njihova povratna adresa zbog nacina na koji smo ih pravili ce biti postavljena
        // na threadWrapper funkciju, odakle ce da pokrene njen tok
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper(){
    80001a2c:	ff010113          	addi	sp,sp,-16
    80001a30:	00113423          	sd	ra,8(sp)
    80001a34:	00813023          	sd	s0,0(sp)
    80001a38:	01010413          	addi	s0,sp,16
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	738080e7          	jalr	1848(ra) # 80002174 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);//user mode
    80001a44:	0000a797          	auipc	a5,0xa
    80001a48:	dbc7b783          	ld	a5,-580(a5) # 8000b800 <_ZN3TCB7runningE>
    80001a4c:	0007b703          	ld	a4,0(a5)
    80001a50:	0087b503          	ld	a0,8(a5)
    80001a54:	000700e7          	jalr	a4
    thread_exit();//user mode
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	958080e7          	jalr	-1704(ra) # 800013b0 <_Z11thread_exitv>
}
    80001a60:	00813083          	ld	ra,8(sp)
    80001a64:	00013403          	ld	s0,0(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
{
    80001a70:	fd010113          	addi	sp,sp,-48
    80001a74:	02113423          	sd	ra,40(sp)
    80001a78:	02813023          	sd	s0,32(sp)
    80001a7c:	00913c23          	sd	s1,24(sp)
    80001a80:	01213823          	sd	s2,16(sp)
    80001a84:	01313423          	sd	s3,8(sp)
    80001a88:	01413023          	sd	s4,0(sp)
    80001a8c:	03010413          	addi	s0,sp,48
    80001a90:	00050993          	mv	s3,a0
    80001a94:	00058a13          	mv	s4,a1
    80001a98:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace);
    80001a9c:	03800513          	li	a0,56
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	280080e7          	jalr	640(ra) # 80001d20 <_Znwm>
    80001aa8:	00050493          	mv	s1,a0
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                                               }),
                                       finished(false),
                                       blocked(false),
                                       closed(false),
                                       sleep(false)
    80001aac:	01353023          	sd	s3,0(a0)
    80001ab0:	01453423          	sd	s4,8(a0)
    80001ab4:	01253823          	sd	s2,16(a0)
    80001ab8:	00200793          	li	a5,2
    80001abc:	00f53c23          	sd	a5,24(a0)
    80001ac0:	00000797          	auipc	a5,0x0
    80001ac4:	f6c78793          	addi	a5,a5,-148 # 80001a2c <_ZN3TCB13threadWrapperEv>
    80001ac8:	02f53023          	sd	a5,32(a0)
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001acc:	00001637          	lui	a2,0x1
    80001ad0:	00c90933          	add	s2,s2,a2
                                       sleep(false)
    80001ad4:	03253423          	sd	s2,40(a0)
    80001ad8:	02050823          	sb	zero,48(a0)
    80001adc:	020508a3          	sb	zero,49(a0)
    80001ae0:	02050923          	sb	zero,50(a0)
    80001ae4:	020509a3          	sb	zero,51(a0)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001ae8:	02098663          	beqz	s3,80001b14 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa4>
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	bf4080e7          	jalr	-1036(ra) # 800026e0 <_ZN9Scheduler3putEP3TCB>
    80001af4:	0200006f          	j	80001b14 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa4>
    80001af8:	00050913          	mv	s2,a0
    80001afc:	00048513          	mv	a0,s1
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	270080e7          	jalr	624(ra) # 80001d70 <_ZdlPv>
    80001b08:	00090513          	mv	a0,s2
    80001b0c:	0000b097          	auipc	ra,0xb
    80001b10:	e6c080e7          	jalr	-404(ra) # 8000c978 <_Unwind_Resume>
}
    80001b14:	00048513          	mv	a0,s1
    80001b18:	02813083          	ld	ra,40(sp)
    80001b1c:	02013403          	ld	s0,32(sp)
    80001b20:	01813483          	ld	s1,24(sp)
    80001b24:	01013903          	ld	s2,16(sp)
    80001b28:	00813983          	ld	s3,8(sp)
    80001b2c:	00013a03          	ld	s4,0(sp)
    80001b30:	03010113          	addi	sp,sp,48
    80001b34:	00008067          	ret

0000000080001b38 <_ZN3TCB8dispatchEv>:
{
    80001b38:	fe010113          	addi	sp,sp,-32
    80001b3c:	00113c23          	sd	ra,24(sp)
    80001b40:	00813823          	sd	s0,16(sp)
    80001b44:	00913423          	sd	s1,8(sp)
    80001b48:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001b4c:	0000a497          	auipc	s1,0xa
    80001b50:	cb44b483          	ld	s1,-844(s1) # 8000b800 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001b54:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept()) Scheduler::put(old);
    80001b58:	00079a63          	bnez	a5,80001b6c <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked(){return blocked;}
    80001b5c:	0314c783          	lbu	a5,49(s1)
    80001b60:	00079663          	bnez	a5,80001b6c <_ZN3TCB8dispatchEv+0x34>
    bool isSlept(){return sleep;}
    80001b64:	0334c783          	lbu	a5,51(s1)
    80001b68:	02078c63          	beqz	a5,80001ba0 <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	af8080e7          	jalr	-1288(ra) # 80002664 <_ZN9Scheduler3getEv>
    80001b74:	0000a797          	auipc	a5,0xa
    80001b78:	c8a7b623          	sd	a0,-884(a5) # 8000b800 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001b7c:	02050593          	addi	a1,a0,32
    80001b80:	02048513          	addi	a0,s1,32
    80001b84:	fffff097          	auipc	ra,0xfffff
    80001b88:	69c080e7          	jalr	1692(ra) # 80001220 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	02010113          	addi	sp,sp,32
    80001b9c:	00008067          	ret
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept()) Scheduler::put(old);
    80001ba0:	00048513          	mv	a0,s1
    80001ba4:	00001097          	auipc	ra,0x1
    80001ba8:	b3c080e7          	jalr	-1220(ra) # 800026e0 <_ZN9Scheduler3putEP3TCB>
    80001bac:	fc1ff06f          	j	80001b6c <_ZN3TCB8dispatchEv+0x34>

0000000080001bb0 <_ZN3TCB17createThreadBasicEPFvPvES0_>:

TCB *TCB::createThreadBasic(TCB::Body body, void *arg)
{
    80001bb0:	fd010113          	addi	sp,sp,-48
    80001bb4:	02113423          	sd	ra,40(sp)
    80001bb8:	02813023          	sd	s0,32(sp)
    80001bbc:	00913c23          	sd	s1,24(sp)
    80001bc0:	01213823          	sd	s2,16(sp)
    80001bc4:	01313423          	sd	s3,8(sp)
    80001bc8:	03010413          	addi	s0,sp,48
    80001bcc:	00050913          	mv	s2,a0
    80001bd0:	00058993          	mv	s3,a1
    return new TCB(body,arg,DEFAULT_TIME_SLICE);
    80001bd4:	03800513          	li	a0,56
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	148080e7          	jalr	328(ra) # 80001d20 <_Znwm>
    80001be0:	00050493          	mv	s1,a0
                                       sleep(false)
    80001be4:	01253023          	sd	s2,0(a0)
    80001be8:	01353423          	sd	s3,8(a0)
                                       stack(body!=nullptr? (char*)(new char*[DEFAULT_STACK_SIZE]): nullptr),timeSlice(timeslice),
    80001bec:	00090a63          	beqz	s2,80001c00 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x50>
    80001bf0:	00008537          	lui	a0,0x8
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	154080e7          	jalr	340(ra) # 80001d48 <_Znam>
    80001bfc:	0080006f          	j	80001c04 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x54>
    80001c00:	00000513          	li	a0,0
                                       sleep(false)
    80001c04:	00a4b823          	sd	a0,16(s1)
    80001c08:	00200793          	li	a5,2
    80001c0c:	00f4bc23          	sd	a5,24(s1)
    80001c10:	00000797          	auipc	a5,0x0
    80001c14:	e1c78793          	addi	a5,a5,-484 # 80001a2c <_ZN3TCB13threadWrapperEv>
    80001c18:	02f4b023          	sd	a5,32(s1)
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001c1c:	02090a63          	beqz	s2,80001c50 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xa0>
    80001c20:	000017b7          	lui	a5,0x1
    80001c24:	00f50533          	add	a0,a0,a5
                                       sleep(false)
    80001c28:	02a4b423          	sd	a0,40(s1)
    80001c2c:	02048823          	sb	zero,48(s1)
    80001c30:	020488a3          	sb	zero,49(s1)
    80001c34:	02048923          	sb	zero,50(s1)
    80001c38:	020489a3          	sb	zero,51(s1)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001c3c:	02090c63          	beqz	s2,80001c74 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc4>
    80001c40:	00048513          	mv	a0,s1
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	a9c080e7          	jalr	-1380(ra) # 800026e0 <_ZN9Scheduler3putEP3TCB>
    80001c4c:	0280006f          	j	80001c74 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc4>
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001c50:	00000513          	li	a0,0
    80001c54:	fd5ff06f          	j	80001c28 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x78>
    80001c58:	00050913          	mv	s2,a0
    80001c5c:	00048513          	mv	a0,s1
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	110080e7          	jalr	272(ra) # 80001d70 <_ZdlPv>
    80001c68:	00090513          	mv	a0,s2
    80001c6c:	0000b097          	auipc	ra,0xb
    80001c70:	d0c080e7          	jalr	-756(ra) # 8000c978 <_Unwind_Resume>
}
    80001c74:	00048513          	mv	a0,s1
    80001c78:	02813083          	ld	ra,40(sp)
    80001c7c:	02013403          	ld	s0,32(sp)
    80001c80:	01813483          	ld	s1,24(sp)
    80001c84:	01013903          	ld	s2,16(sp)
    80001c88:	00813983          	ld	s3,8(sp)
    80001c8c:	03010113          	addi	sp,sp,48
    80001c90:	00008067          	ret

0000000080001c94 <_ZN3TCB7toSleepEm>:

void TCB::toSleep(uint64 wakeTime)
{
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00113423          	sd	ra,8(sp)
    80001c9c:	00813023          	sd	s0,0(sp)
    80001ca0:	01010413          	addi	s0,sp,16
    80001ca4:	00050593          	mv	a1,a0
    running->setSleep(true);
    80001ca8:	0000a517          	auipc	a0,0xa
    80001cac:	b5853503          	ld	a0,-1192(a0) # 8000b800 <_ZN3TCB7runningE>
    void setSleep(bool flag){ TCB::sleep = flag;}
    80001cb0:	00100713          	li	a4,1
    80001cb4:	02e509a3          	sb	a4,51(a0)
    Scheduler::putSorted(running,wakeTime);
    80001cb8:	00001097          	auipc	ra,0x1
    80001cbc:	b54080e7          	jalr	-1196(ra) # 8000280c <_ZN9Scheduler9putSortedEP3TCBm>
}
    80001cc0:	00813083          	ld	ra,8(sp)
    80001cc4:	00013403          	ld	s0,0(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN6ThreadD1Ev>:
#define syscall_cpp
#include "./syscall_c.h"
void* operator new (size_t);
void operator delete (void*);

class Thread {
    80001cd0:	ff010113          	addi	sp,sp,-16
    80001cd4:	00813423          	sd	s0,8(sp)
    80001cd8:	01010413          	addi	s0,sp,16
    80001cdc:	00813403          	ld	s0,8(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00113423          	sd	ra,8(sp)
    80001cf0:	00813023          	sd	s0,0(sp)
    80001cf4:	01010413          	addi	s0,sp,16
    80001cf8:	0000a797          	auipc	a5,0xa
    80001cfc:	87878793          	addi	a5,a5,-1928 # 8000b570 <_ZTV9Semaphore+0x10>
    80001d00:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001d04:	00853503          	ld	a0,8(a0)
    80001d08:	fffff097          	auipc	ra,0xfffff
    80001d0c:	73c080e7          	jalr	1852(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80001d10:	00813083          	ld	ra,8(sp)
    80001d14:	00013403          	ld	s0,0(sp)
    80001d18:	01010113          	addi	sp,sp,16
    80001d1c:	00008067          	ret

0000000080001d20 <_Znwm>:
void* operator new (size_t mem){ return mem_alloc(mem);}
    80001d20:	ff010113          	addi	sp,sp,-16
    80001d24:	00113423          	sd	ra,8(sp)
    80001d28:	00813023          	sd	s0,0(sp)
    80001d2c:	01010413          	addi	s0,sp,16
    80001d30:	fffff097          	auipc	ra,0xfffff
    80001d34:	524080e7          	jalr	1316(ra) # 80001254 <_Z9mem_allocm>
    80001d38:	00813083          	ld	ra,8(sp)
    80001d3c:	00013403          	ld	s0,0(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    80001d48:	ff010113          	addi	sp,sp,-16
    80001d4c:	00113423          	sd	ra,8(sp)
    80001d50:	00813023          	sd	s0,0(sp)
    80001d54:	01010413          	addi	s0,sp,16
    80001d58:	fffff097          	auipc	ra,0xfffff
    80001d5c:	4fc080e7          	jalr	1276(ra) # 80001254 <_Z9mem_allocm>
    80001d60:	00813083          	ld	ra,8(sp)
    80001d64:	00013403          	ld	s0,0(sp)
    80001d68:	01010113          	addi	sp,sp,16
    80001d6c:	00008067          	ret

0000000080001d70 <_ZdlPv>:
void operator delete(void* addr) { mem_free(addr); }
    80001d70:	ff010113          	addi	sp,sp,-16
    80001d74:	00113423          	sd	ra,8(sp)
    80001d78:	00813023          	sd	s0,0(sp)
    80001d7c:	01010413          	addi	s0,sp,16
    80001d80:	fffff097          	auipc	ra,0xfffff
    80001d84:	510080e7          	jalr	1296(ra) # 80001290 <_Z8mem_freePv>
    80001d88:	00813083          	ld	ra,8(sp)
    80001d8c:	00013403          	ld	s0,0(sp)
    80001d90:	01010113          	addi	sp,sp,16
    80001d94:	00008067          	ret

0000000080001d98 <_ZN6ThreadD0Ev>:
    80001d98:	ff010113          	addi	sp,sp,-16
    80001d9c:	00113423          	sd	ra,8(sp)
    80001da0:	00813023          	sd	s0,0(sp)
    80001da4:	01010413          	addi	s0,sp,16
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	fc8080e7          	jalr	-56(ra) # 80001d70 <_ZdlPv>
    80001db0:	00813083          	ld	ra,8(sp)
    80001db4:	00013403          	ld	s0,0(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001dc0:	fe010113          	addi	sp,sp,-32
    80001dc4:	00113c23          	sd	ra,24(sp)
    80001dc8:	00813823          	sd	s0,16(sp)
    80001dcc:	00913423          	sd	s1,8(sp)
    80001dd0:	02010413          	addi	s0,sp,32
    80001dd4:	00050493          	mv	s1,a0
}
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	f10080e7          	jalr	-240(ra) # 80001ce8 <_ZN9SemaphoreD1Ev>
    80001de0:	00048513          	mv	a0,s1
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	f8c080e7          	jalr	-116(ra) # 80001d70 <_ZdlPv>
    80001dec:	01813083          	ld	ra,24(sp)
    80001df0:	01013403          	ld	s0,16(sp)
    80001df4:	00813483          	ld	s1,8(sp)
    80001df8:	02010113          	addi	sp,sp,32
    80001dfc:	00008067          	ret

0000000080001e00 <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	00813023          	sd	s0,0(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	480080e7          	jalr	1152(ra) # 80001290 <_Z8mem_freePv>
    80001e18:	00813083          	ld	ra,8(sp)
    80001e1c:	00013403          	ld	s0,0(sp)
    80001e20:	01010113          	addi	sp,sp,16
    80001e24:	00008067          	ret

0000000080001e28 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00813423          	sd	s0,8(sp)
    80001e30:	01010413          	addi	s0,sp,16
    80001e34:	00009797          	auipc	a5,0x9
    80001e38:	71478793          	addi	a5,a5,1812 # 8000b548 <_ZTV6Thread+0x10>
    80001e3c:	00f53023          	sd	a5,0(a0)
    80001e40:	00053423          	sd	zero,8(a0)
    80001e44:	00b53823          	sd	a1,16(a0)
    80001e48:	00c53c23          	sd	a2,24(a0)
}
    80001e4c:	00813403          	ld	s0,8(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret

0000000080001e58 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
    80001e58:	ff010113          	addi	sp,sp,-16
    80001e5c:	00813423          	sd	s0,8(sp)
    80001e60:	01010413          	addi	s0,sp,16
    80001e64:	00009797          	auipc	a5,0x9
    80001e68:	6e478793          	addi	a5,a5,1764 # 8000b548 <_ZTV6Thread+0x10>
    80001e6c:	00f53023          	sd	a5,0(a0)
    80001e70:	00053423          	sd	zero,8(a0)
    80001e74:	00000797          	auipc	a5,0x0
    80001e78:	25c78793          	addi	a5,a5,604 # 800020d0 <_ZN6Thread10runWrapperEPv>
    80001e7c:	00f53823          	sd	a5,16(a0)
    80001e80:	00a53c23          	sd	a0,24(a0)
}
    80001e84:	00813403          	ld	s0,8(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <_ZN6Thread8dispatchEv>:
{
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00113423          	sd	ra,8(sp)
    80001e98:	00813023          	sd	s0,0(sp)
    80001e9c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001ea0:	fffff097          	auipc	ra,0xfffff
    80001ea4:	544080e7          	jalr	1348(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN6Thread5startEv>:
{
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00113423          	sd	ra,8(sp)
    80001ec0:	00813023          	sd	s0,0(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,body, arg);
    80001ec8:	01853603          	ld	a2,24(a0)
    80001ecc:	01053583          	ld	a1,16(a0)
    80001ed0:	00850513          	addi	a0,a0,8
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	454080e7          	jalr	1108(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001edc:	00813083          	ld	ra,8(sp)
    80001ee0:	00013403          	ld	s0,0(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN6Thread5sleepEm>:
{
    80001eec:	ff010113          	addi	sp,sp,-16
    80001ef0:	00113423          	sd	ra,8(sp)
    80001ef4:	00813023          	sd	s0,0(sp)
    80001ef8:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	5f0080e7          	jalr	1520(ra) # 800014ec <_Z10time_sleepm>
}
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret

0000000080001f14 <_ZN14PeriodicThread3runEv>:
}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    80001f14:	fe010113          	addi	sp,sp,-32
    80001f18:	00113c23          	sd	ra,24(sp)
    80001f1c:	00813823          	sd	s0,16(sp)
    80001f20:	00913423          	sd	s1,8(sp)
    80001f24:	02010413          	addi	s0,sp,32
    80001f28:	00050493          	mv	s1,a0
    while(period){
    80001f2c:	0204b783          	ld	a5,32(s1)
    80001f30:	02078263          	beqz	a5,80001f54 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001f34:	0004b783          	ld	a5,0(s1)
    80001f38:	0187b783          	ld	a5,24(a5)
    80001f3c:	00048513          	mv	a0,s1
    80001f40:	000780e7          	jalr	a5
        sleep(period);
    80001f44:	0204b503          	ld	a0,32(s1)
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	fa4080e7          	jalr	-92(ra) # 80001eec <_ZN6Thread5sleepEm>
    while(period){
    80001f50:	fddff06f          	j	80001f2c <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001f54:	01813083          	ld	ra,24(sp)
    80001f58:	01013403          	ld	s0,16(sp)
    80001f5c:	00813483          	ld	s1,8(sp)
    80001f60:	02010113          	addi	sp,sp,32
    80001f64:	00008067          	ret

0000000080001f68 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00113423          	sd	ra,8(sp)
    80001f70:	00813023          	sd	s0,0(sp)
    80001f74:	01010413          	addi	s0,sp,16
    80001f78:	00009797          	auipc	a5,0x9
    80001f7c:	5f878793          	addi	a5,a5,1528 # 8000b570 <_ZTV9Semaphore+0x10>
    80001f80:	00f53023          	sd	a5,0(a0)
    80001f84:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    80001f88:	00850513          	addi	a0,a0,8
    80001f8c:	fffff097          	auipc	ra,0xfffff
    80001f90:	47c080e7          	jalr	1148(ra) # 80001408 <_Z8sem_openPP4_semj>
}
    80001f94:	00813083          	ld	ra,8(sp)
    80001f98:	00013403          	ld	s0,0(sp)
    80001f9c:	01010113          	addi	sp,sp,16
    80001fa0:	00008067          	ret

0000000080001fa4 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00113423          	sd	ra,8(sp)
    80001fac:	00813023          	sd	s0,0(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001fb4:	00853503          	ld	a0,8(a0)
    80001fb8:	fffff097          	auipc	ra,0xfffff
    80001fbc:	4c4080e7          	jalr	1220(ra) # 8000147c <_Z8sem_waitP4_sem>
}
    80001fc0:	00813083          	ld	ra,8(sp)
    80001fc4:	00013403          	ld	s0,0(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00113423          	sd	ra,8(sp)
    80001fd8:	00813023          	sd	s0,0(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001fe0:	00853503          	ld	a0,8(a0)
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	4d0080e7          	jalr	1232(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    80001fec:	00813083          	ld	ra,8(sp)
    80001ff0:	00013403          	ld	s0,0(sp)
    80001ff4:	01010113          	addi	sp,sp,16
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){
    80001ffc:	fe010113          	addi	sp,sp,-32
    80002000:	00113c23          	sd	ra,24(sp)
    80002004:	00813823          	sd	s0,16(sp)
    80002008:	00913423          	sd	s1,8(sp)
    8000200c:	01213023          	sd	s2,0(sp)
    80002010:	02010413          	addi	s0,sp,32
    80002014:	00050493          	mv	s1,a0
    80002018:	00058913          	mv	s2,a1
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	e3c080e7          	jalr	-452(ra) # 80001e58 <_ZN6ThreadC1Ev>
    80002024:	00009797          	auipc	a5,0x9
    80002028:	56c78793          	addi	a5,a5,1388 # 8000b590 <_ZTV14PeriodicThread+0x10>
    8000202c:	00f4b023          	sd	a5,0(s1)
    80002030:	0324b023          	sd	s2,32(s1)
}
    80002034:	01813083          	ld	ra,24(sp)
    80002038:	01013403          	ld	s0,16(sp)
    8000203c:	00813483          	ld	s1,8(sp)
    80002040:	00013903          	ld	s2,0(sp)
    80002044:	02010113          	addi	sp,sp,32
    80002048:	00008067          	ret

000000008000204c <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    period=0;
    80002058:	02053023          	sd	zero,32(a0)
}
    8000205c:	00813403          	ld	s0,8(sp)
    80002060:	01010113          	addi	sp,sp,16
    80002064:	00008067          	ret

0000000080002068 <_ZN7Console4getcEv>:

char Console::getc() {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00113423          	sd	ra,8(sp)
    80002070:	00813023          	sd	s0,0(sp)
    80002074:	01010413          	addi	s0,sp,16
    return ::getc();
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	4ac080e7          	jalr	1196(ra) # 80001524 <_Z4getcv>
}
    80002080:	00813083          	ld	ra,8(sp)
    80002084:	00013403          	ld	s0,0(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
    ::putc(c);
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	4b8080e7          	jalr	1208(ra) # 80001558 <_Z4putcc>
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00813423          	sd	s0,8(sp)
    800020c0:	01010413          	addi	s0,sp,16
    800020c4:	00813403          	ld	s0,8(sp)
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00008067          	ret

00000000800020d0 <_ZN6Thread10runWrapperEPv>:
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* thread){
        if(thread) ((Thread*) thread)->run();
    800020d0:	02050863          	beqz	a0,80002100 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread){
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00113423          	sd	ra,8(sp)
    800020dc:	00813023          	sd	s0,0(sp)
    800020e0:	01010413          	addi	s0,sp,16
        if(thread) ((Thread*) thread)->run();
    800020e4:	00053783          	ld	a5,0(a0)
    800020e8:	0107b783          	ld	a5,16(a5)
    800020ec:	000780e7          	jalr	a5
    }
    800020f0:	00813083          	ld	ra,8(sp)
    800020f4:	00013403          	ld	s0,0(sp)
    800020f8:	01010113          	addi	sp,sp,16
    800020fc:	00008067          	ret
    80002100:	00008067          	ret

0000000080002104 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002104:	ff010113          	addi	sp,sp,-16
    80002108:	00813423          	sd	s0,8(sp)
    8000210c:	01010413          	addi	s0,sp,16
    80002110:	00813403          	ld	s0,8(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret

000000008000211c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16
    80002128:	00009797          	auipc	a5,0x9
    8000212c:	46878793          	addi	a5,a5,1128 # 8000b590 <_ZTV14PeriodicThread+0x10>
    80002130:	00f53023          	sd	a5,0(a0)
    80002134:	00813403          	ld	s0,8(sp)
    80002138:	01010113          	addi	sp,sp,16
    8000213c:	00008067          	ret

0000000080002140 <_ZN14PeriodicThreadD0Ev>:
    80002140:	ff010113          	addi	sp,sp,-16
    80002144:	00113423          	sd	ra,8(sp)
    80002148:	00813023          	sd	s0,0(sp)
    8000214c:	01010413          	addi	s0,sp,16
    80002150:	00009797          	auipc	a5,0x9
    80002154:	44078793          	addi	a5,a5,1088 # 8000b590 <_ZTV14PeriodicThread+0x10>
    80002158:	00f53023          	sd	a5,0(a0)
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	c14080e7          	jalr	-1004(ra) # 80001d70 <_ZdlPv>
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <_ZN5Riscv10popSppSpieEv>:
#include "../h/syscall_c.h"
#include "../h/Semaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00813423          	sd	s0,8(sp)
    8000217c:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    __asm__ volatile("csrc sstatus, %0" ::"r"(SSTATUS_SPP));
    80002180:	10000793          	li	a5,256
    80002184:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrw sepc, ra");
    80002188:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000218c:	10200073          	sret
}
    80002190:	00813403          	ld	s0,8(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    8000219c:	f2010113          	addi	sp,sp,-224
    800021a0:	0c113c23          	sd	ra,216(sp)
    800021a4:	0c813823          	sd	s0,208(sp)
    800021a8:	0c913423          	sd	s1,200(sp)
    800021ac:	0e010413          	addi	s0,sp,224
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800021b0:	142027f3          	csrr	a5,scause
    800021b4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800021b8:	fb843703          	ld	a4,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    800021bc:	ff870693          	addi	a3,a4,-8
    800021c0:	00100793          	li	a5,1
    800021c4:	02d7fc63          	bgeu	a5,a3,800021fc <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    else if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver/tajmer prekid
    800021c8:	fff00793          	li	a5,-1
    800021cc:	03f79793          	slli	a5,a5,0x3f
    800021d0:	00178793          	addi	a5,a5,1
    800021d4:	34f70e63          	beq	a4,a5,80002530 <_ZN5Riscv20handleSupervisorTrapEv+0x394>
        }

        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (scause==0x8000000000000009UL){
    800021d8:	fff00793          	li	a5,-1
    800021dc:	03f79793          	slli	a5,a5,0x3f
    800021e0:	00978793          	addi	a5,a5,9
    800021e4:	42f70263          	beq	a4,a5,80002608 <_ZN5Riscv20handleSupervisorTrapEv+0x46c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021e8:	141027f3          	csrr	a5,sepc
    800021ec:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800021f0:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800021f4:	14179073          	csrw	sepc,a5
        //sepc- gde se desilo
        // stval - dodatno opise cause

        uint64 sepc=r_sepc();
        w_sepc(sepc);
        while(true);
    800021f8:	0000006f          	j	800021f8 <_ZN5Riscv20handleSupervisorTrapEv+0x5c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021fc:	141027f3          	csrr	a5,sepc
    80002200:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002204:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    80002208:	00478793          	addi	a5,a5,4
    8000220c:	f2f43823          	sd	a5,-208(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002210:	100027f3          	csrr	a5,sstatus
    80002214:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002218:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    8000221c:	f2f43c23          	sd	a5,-200(s0)
        __asm__ volatile("ld %0, 80(fp)":"=r"(a0));
    80002220:	05043783          	ld	a5,80(s0)
    80002224:	f4f43023          	sd	a5,-192(s0)
        switch(a0){
    80002228:	f4043783          	ld	a5,-192(s0)
    8000222c:	04200713          	li	a4,66
    80002230:	2ef76663          	bltu	a4,a5,8000251c <_ZN5Riscv20handleSupervisorTrapEv+0x380>
    80002234:	00279793          	slli	a5,a5,0x2
    80002238:	00007717          	auipc	a4,0x7
    8000223c:	de870713          	addi	a4,a4,-536 # 80009020 <CONSOLE_STATUS+0x10>
    80002240:	00e787b3          	add	a5,a5,a4
    80002244:	0007a783          	lw	a5,0(a5)
    80002248:	00e787b3          	add	a5,a5,a4
    8000224c:	00078067          	jr	a5
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(a1));
    80002250:	05843783          	ld	a5,88(s0)
    80002254:	f4f43423          	sd	a5,-184(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    80002258:	f4843503          	ld	a0,-184(s0)
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	774080e7          	jalr	1908(ra) # 800029d0 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    80002264:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002268:	04a43823          	sd	a0,80(s0)
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    8000226c:	f3043783          	ld	a5,-208(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002270:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002274:	f3843783          	ld	a5,-200(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002278:	10079073          	csrw	sstatus,a5
    }
    8000227c:	0d813083          	ld	ra,216(sp)
    80002280:	0d013403          	ld	s0,208(sp)
    80002284:	0c813483          	ld	s1,200(sp)
    80002288:	0e010113          	addi	sp,sp,224
    8000228c:	00008067          	ret
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(addr));
    80002290:	05843783          	ld	a5,88(s0)
    80002294:	f4f43823          	sd	a5,-176(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    80002298:	f5043503          	ld	a0,-176(s0)
    8000229c:	00001097          	auipc	ra,0x1
    800022a0:	890080e7          	jalr	-1904(ra) # 80002b2c <_ZN15MemoryAllocator8mem_freeEPv>
    800022a4:	f4a43c23          	sd	a0,-168(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    800022a8:	f5843783          	ld	a5,-168(s0)
    800022ac:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800022b0:	04a43823          	sd	a0,80(s0)
                break;
    800022b4:	fb9ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                space=MemoryAllocator::getFree();
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	684080e7          	jalr	1668(ra) # 8000293c <_ZN15MemoryAllocator7getFreeEv>
    800022c0:	f6a43023          	sd	a0,-160(s0)
                __asm__ volatile("mv a0, %0"::"r"(space));
    800022c4:	f6043783          	ld	a5,-160(s0)
    800022c8:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800022cc:	04a43823          	sd	a0,80(s0)
                break;
    800022d0:	f9dff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                block=MemoryAllocator::getLargestFreeBlock();
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	688080e7          	jalr	1672(ra) # 8000295c <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    800022dc:	f6a43423          	sd	a0,-152(s0)
                __asm__ volatile("mv a0, %0"::"r"(block));
    800022e0:	f6843783          	ld	a5,-152(s0)
    800022e4:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800022e8:	04a43823          	sd	a0,80(s0)
                break;
    800022ec:	f81ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    800022f0:	05843783          	ld	a5,88(s0)
    800022f4:	f6f43823          	sd	a5,-144(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(start_routine));
    800022f8:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(arg));
    800022fc:	06843783          	ld	a5,104(s0)
    80002300:	f6f43c23          	sd	a5,-136(s0)
                __asm__ volatile("ld %0, 8*14(fp)":"=r"(addr));
    80002304:	07043783          	ld	a5,112(s0)
    80002308:	f8f43023          	sd	a5,-128(s0)
                TCB *thread =TCB::createThread(body,arg,addr);
    8000230c:	f7843583          	ld	a1,-136(s0)
    80002310:	f8043603          	ld	a2,-128(s0)
    80002314:	fffff097          	auipc	ra,0xfffff
    80002318:	75c080e7          	jalr	1884(ra) # 80001a70 <_ZN3TCB12createThreadEPFvPvES0_S0_>
                *(TCB**) handle= thread;
    8000231c:	f7043703          	ld	a4,-144(s0)
    80002320:	00a73023          	sd	a0,0(a4)
                if(thread){
    80002324:	00050a63          	beqz	a0,80002338 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    __asm__ volatile("mv a0, %0"::"r"(0));
    80002328:	00000793          	li	a5,0
    8000232c:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002330:	04a43823          	sd	a0,80(s0)
    80002334:	f39ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002338:	fff00793          	li	a5,-1
    8000233c:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002340:	04a43823          	sd	a0,80(s0)
    80002344:	f29ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                TCB::timeSliceCounter=0;
    80002348:	00009797          	auipc	a5,0x9
    8000234c:	4387b783          	ld	a5,1080(a5) # 8000b780 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002350:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	7e4080e7          	jalr	2020(ra) # 80001b38 <_ZN3TCB8dispatchEv>
                break;
    8000235c:	f11ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                if(!TCB::running->isFinished()){
    80002360:	00009797          	auipc	a5,0x9
    80002364:	4407b783          	ld	a5,1088(a5) # 8000b7a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002368:	0007b783          	ld	a5,0(a5)
    bool isFinished(){return finished;}
    8000236c:	0307c703          	lbu	a4,48(a5)
    80002370:	00070a63          	beqz	a4,80002384 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                else ret=-1;
    80002374:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002378:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    8000237c:	04a43823          	sd	a0,80(s0)
                break;
    80002380:	eedff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    void setFinished(bool flag){ TCB::finished = flag;}
    80002384:	00100713          	li	a4,1
    80002388:	02e78823          	sb	a4,48(a5)
                    TCB::timeSliceCounter=0;
    8000238c:	00009797          	auipc	a5,0x9
    80002390:	3f47b783          	ld	a5,1012(a5) # 8000b780 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002394:	0007b023          	sd	zero,0(a5)
                    TCB::dispatch();
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	7a0080e7          	jalr	1952(ra) # 80001b38 <_ZN3TCB8dispatchEv>
                uint64 ret=0;
    800023a0:	00000793          	li	a5,0
    800023a4:	fd5ff06f          	j	80002378 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    800023a8:	05843783          	ld	a5,88(s0)
    800023ac:	f8f43423          	sd	a5,-120(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(init));
    800023b0:	06043783          	ld	a5,96(s0)
    800023b4:	f2f42623          	sw	a5,-212(s0)
                mySemaphore *sem =mySemaphore::createSemaphore(init);
    800023b8:	f2c42503          	lw	a0,-212(s0)
    800023bc:	0005051b          	sext.w	a0,a0
    800023c0:	fffff097          	auipc	ra,0xfffff
    800023c4:	1c0080e7          	jalr	448(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
                if(sem){
    800023c8:	00050e63          	beqz	a0,800023e4 <_ZN5Riscv20handleSupervisorTrapEv+0x248>
                    *(mySemaphore**) handle= sem;
    800023cc:	f8843703          	ld	a4,-120(s0)
    800023d0:	00a73023          	sd	a0,0(a4)
                    ret=0;
    800023d4:	00000793          	li	a5,0
                __asm__ volatile("mv a0, %0"::"r"(ret));
    800023d8:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800023dc:	04a43823          	sd	a0,80(s0)
                break;
    800023e0:	e8dff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                else ret=-1;
    800023e4:	fff00793          	li	a5,-1
    800023e8:	ff1ff06f          	j	800023d8 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    800023ec:	05843783          	ld	a5,88(s0)
    800023f0:	f8f43823          	sd	a5,-112(s0)
                if(!handle){
    800023f4:	f9043783          	ld	a5,-112(s0)
    800023f8:	02078663          	beqz	a5,80002424 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
                int ret=handle->close();
    800023fc:	f9043503          	ld	a0,-112(s0)
    80002400:	fffff097          	auipc	ra,0xfffff
    80002404:	378080e7          	jalr	888(ra) # 80001778 <_ZN11mySemaphore5closeEv>
    80002408:	00050493          	mv	s1,a0
                MemoryAllocator::mem_free(handle);
    8000240c:	f9043503          	ld	a0,-112(s0)
    80002410:	00000097          	auipc	ra,0x0
    80002414:	71c080e7          	jalr	1820(ra) # 80002b2c <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002418:	00048513          	mv	a0,s1
                __asm__ volatile("sd a0,80(fp)");
    8000241c:	04a43823          	sd	a0,80(s0)
                break;
    80002420:	e4dff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002424:	fff00793          	li	a5,-1
    80002428:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    8000242c:	04a43823          	sd	a0,80(s0)
                    break;
    80002430:	e3dff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002434:	05843783          	ld	a5,88(s0)
    80002438:	f8f43c23          	sd	a5,-104(s0)
                if(!handle){
    8000243c:	f9843783          	ld	a5,-104(s0)
    80002440:	02078263          	beqz	a5,80002464 <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
                __asm__ volatile("mv a0, %0"::"r"(0));
    80002444:	00000793          	li	a5,0
    80002448:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    8000244c:	04a43823          	sd	a0,80(s0)
                int ret=handle->wait();
    80002450:	f9843503          	ld	a0,-104(s0)
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	204080e7          	jalr	516(ra) # 80001658 <_ZN11mySemaphore4waitEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    8000245c:	00050513          	mv	a0,a0
                break;
    80002460:	e0dff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002464:	fff00793          	li	a5,-1
    80002468:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    8000246c:	04a43823          	sd	a0,80(s0)
                    break;
    80002470:	dfdff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002474:	05843783          	ld	a5,88(s0)
    80002478:	faf43023          	sd	a5,-96(s0)
                if(!handle){
    8000247c:	fa043783          	ld	a5,-96(s0)
    80002480:	00078e63          	beqz	a5,8000249c <_ZN5Riscv20handleSupervisorTrapEv+0x300>
                int ret=handle->signal();
    80002484:	fa043503          	ld	a0,-96(s0)
    80002488:	fffff097          	auipc	ra,0xfffff
    8000248c:	374080e7          	jalr	884(ra) # 800017fc <_ZN11mySemaphore6signalEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002490:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002494:	04a43823          	sd	a0,80(s0)
                break;
    80002498:	dd5ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    8000249c:	fff00793          	li	a5,-1
    800024a0:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    800024a4:	04a43823          	sd	a0,80(s0)
                    break;
    800024a8:	dc5ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(time));
    800024ac:	05843503          	ld	a0,88(s0)
                TCB::toSleep(time+TCB::timeCur);
    800024b0:	00009797          	auipc	a5,0x9
    800024b4:	2c87b783          	ld	a5,712(a5) # 8000b778 <_GLOBAL_OFFSET_TABLE_+0x20>
    800024b8:	0007b783          	ld	a5,0(a5)
    800024bc:	00f50533          	add	a0,a0,a5
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	7d4080e7          	jalr	2004(ra) # 80001c94 <_ZN3TCB7toSleepEm>
                TCB::timeSliceCounter=0;
    800024c8:	00009797          	auipc	a5,0x9
    800024cc:	2b87b783          	ld	a5,696(a5) # 8000b780 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024d0:	0007b023          	sd	zero,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(0));
    800024d4:	00000793          	li	a5,0
    800024d8:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800024dc:	04a43823          	sd	a0,80(s0)
                TCB::dispatch();
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	658080e7          	jalr	1624(ra) # 80001b38 <_ZN3TCB8dispatchEv>
                break;
    800024e8:	d85ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                char ret=__getc();
    800024ec:	00006097          	auipc	ra,0x6
    800024f0:	01c080e7          	jalr	28(ra) # 80008508 <__getc>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    800024f4:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    800024f8:	04a43823          	sd	a0,80(s0)
                break;
    800024fc:	d71ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(c));
    80002500:	05843783          	ld	a5,88(s0)
    80002504:	f2f405a3          	sb	a5,-213(s0)
                __putc(c);
    80002508:	f2b44503          	lbu	a0,-213(s0)
    8000250c:	0ff57513          	andi	a0,a0,255
    80002510:	00006097          	auipc	ra,0x6
    80002514:	fbc080e7          	jalr	-68(ra) # 800084cc <__putc>
                break;
    80002518:	d55ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("sw %[val], 0(%[addr])" : : [val] "r"(val), [addr] "r"(addr));
    8000251c:	000057b7          	lui	a5,0x5
    80002520:	5557879b          	addiw	a5,a5,1365
    80002524:	00100737          	lui	a4,0x100
    80002528:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
                while (1);
    8000252c:	0000006f          	j	8000252c <_ZN5Riscv20handleSupervisorTrapEv+0x390>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002530:	141027f3          	csrr	a5,sepc
    80002534:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002538:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    8000253c:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002540:	100027f3          	csrr	a5,sstatus
    80002544:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002548:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    8000254c:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002550:	00200793          	li	a5,2
    80002554:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002558:	00009717          	auipc	a4,0x9
    8000255c:	22873703          	ld	a4,552(a4) # 8000b780 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002560:	00073783          	ld	a5,0(a4)
    80002564:	00178793          	addi	a5,a5,1 # 5001 <_entry-0x7fffafff>
    80002568:	00f73023          	sd	a5,0(a4)
        TCB::timeCur++;
    8000256c:	00009717          	auipc	a4,0x9
    80002570:	20c73703          	ld	a4,524(a4) # 8000b778 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002574:	00073783          	ld	a5,0(a4)
    80002578:	00178793          	addi	a5,a5,1
    8000257c:	00f73023          	sd	a5,0(a4)
    80002580:	0180006f          	j	80002598 <_ZN5Riscv20handleSupervisorTrapEv+0x3fc>
            TCB* rising=Scheduler::getSorted();
    80002584:	00000097          	auipc	ra,0x0
    80002588:	1dc080e7          	jalr	476(ra) # 80002760 <_ZN9Scheduler9getSortedEv>
            rising->sleep=false;
    8000258c:	020509a3          	sb	zero,51(a0)
            Scheduler::put(rising);
    80002590:	00000097          	auipc	ra,0x0
    80002594:	150080e7          	jalr	336(ra) # 800026e0 <_ZN9Scheduler3putEP3TCB>
        while(Scheduler::getWakeTime() && TCB::timeCur>=Scheduler::getWakeTime()){
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	244080e7          	jalr	580(ra) # 800027dc <_ZN9Scheduler11getWakeTimeEv>
    800025a0:	00050e63          	beqz	a0,800025bc <_ZN5Riscv20handleSupervisorTrapEv+0x420>
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	238080e7          	jalr	568(ra) # 800027dc <_ZN9Scheduler11getWakeTimeEv>
    800025ac:	00009797          	auipc	a5,0x9
    800025b0:	1cc7b783          	ld	a5,460(a5) # 8000b778 <_GLOBAL_OFFSET_TABLE_+0x20>
    800025b4:	0007b783          	ld	a5,0(a5)
    800025b8:	fca7f6e3          	bgeu	a5,a0,80002584 <_ZN5Riscv20handleSupervisorTrapEv+0x3e8>
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    800025bc:	00009797          	auipc	a5,0x9
    800025c0:	1e47b783          	ld	a5,484(a5) # 8000b7a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800025c4:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const {return timeSlice;}
    800025c8:	0187b783          	ld	a5,24(a5)
    800025cc:	00009717          	auipc	a4,0x9
    800025d0:	1b473703          	ld	a4,436(a4) # 8000b780 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025d4:	00073703          	ld	a4,0(a4)
    800025d8:	00f77c63          	bgeu	a4,a5,800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x454>
        w_sepc(sepc);
    800025dc:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800025e0:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    800025e4:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800025e8:	10079073          	csrw	sstatus,a5
}
    800025ec:	c91ff06f          	j	8000227c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
            TCB::timeSliceCounter=0;
    800025f0:	00009797          	auipc	a5,0x9
    800025f4:	1907b783          	ld	a5,400(a5) # 8000b780 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025f8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	53c080e7          	jalr	1340(ra) # 80001b38 <_ZN3TCB8dispatchEv>
    80002604:	fd9ff06f          	j	800025dc <_ZN5Riscv20handleSupervisorTrapEv+0x440>
        console_handler();
    80002608:	00006097          	auipc	ra,0x6
    8000260c:	f38080e7          	jalr	-200(ra) # 80008540 <console_handler>
    80002610:	c6dff06f          	j	8000227c <_ZN5Riscv20handleSupervisorTrapEv+0xe0>

0000000080002614 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::putSorted(TCB *ccb,uint64 wakeTime)
{
    sleepingThreadQueue.addSorted(ccb,wakeTime);
}
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
    80002620:	00100793          	li	a5,1
    80002624:	00f50863          	beq	a0,a5,80002634 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002628:	00813403          	ld	s0,8(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret
    80002634:	000107b7          	lui	a5,0x10
    80002638:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000263c:	fef596e3          	bne	a1,a5,80002628 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    80002640:	00009797          	auipc	a5,0x9
    80002644:	1d878793          	addi	a5,a5,472 # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
    80002648:	0007b023          	sd	zero,0(a5)
    8000264c:	0007b423          	sd	zero,8(a5)
    80002650:	0007a823          	sw	zero,16(a5)
    80002654:	0007bc23          	sd	zero,24(a5)
    80002658:	0207b023          	sd	zero,32(a5)
    8000265c:	0207a423          	sw	zero,40(a5)
    80002660:	fc9ff06f          	j	80002628 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002664 <_ZN9Scheduler3getEv>:
{
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	00813823          	sd	s0,16(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	02010413          	addi	s0,sp,32
        size++;
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002678:	00009517          	auipc	a0,0x9
    8000267c:	1a053503          	ld	a0,416(a0) # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
    80002680:	04050c63          	beqz	a0,800026d8 <_ZN9Scheduler3getEv+0x74>

        Elem *elem = head;
        head = head->next;
    80002684:	00853783          	ld	a5,8(a0)
    80002688:	00009717          	auipc	a4,0x9
    8000268c:	18f73823          	sd	a5,400(a4) # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002690:	02078e63          	beqz	a5,800026cc <_ZN9Scheduler3getEv+0x68>

        T *ret = elem->data;
    80002694:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002698:	00000097          	auipc	ra,0x0
    8000269c:	494080e7          	jalr	1172(ra) # 80002b2c <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    800026a0:	00009717          	auipc	a4,0x9
    800026a4:	17870713          	addi	a4,a4,376 # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
    800026a8:	01072783          	lw	a5,16(a4)
    800026ac:	fff7879b          	addiw	a5,a5,-1
    800026b0:	00f72823          	sw	a5,16(a4)
}
    800026b4:	00048513          	mv	a0,s1
    800026b8:	01813083          	ld	ra,24(sp)
    800026bc:	01013403          	ld	s0,16(sp)
    800026c0:	00813483          	ld	s1,8(sp)
    800026c4:	02010113          	addi	sp,sp,32
    800026c8:	00008067          	ret
        if (!head) { tail = 0; }
    800026cc:	00009797          	auipc	a5,0x9
    800026d0:	1407ba23          	sd	zero,340(a5) # 8000b820 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800026d4:	fc1ff06f          	j	80002694 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800026d8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800026dc:	fd9ff06f          	j	800026b4 <_ZN9Scheduler3getEv+0x50>

00000000800026e0 <_ZN9Scheduler3putEP3TCB>:
{
    800026e0:	fe010113          	addi	sp,sp,-32
    800026e4:	00113c23          	sd	ra,24(sp)
    800026e8:	00813823          	sd	s0,16(sp)
    800026ec:	00913423          	sd	s1,8(sp)
    800026f0:	02010413          	addi	s0,sp,32
    800026f4:	00050493          	mv	s1,a0
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    800026f8:	00100513          	li	a0,1
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	2d4080e7          	jalr	724(ra) # 800029d0 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80002704:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    80002708:	00053423          	sd	zero,8(a0)
        if (tail)
    8000270c:	00009797          	auipc	a5,0x9
    80002710:	1147b783          	ld	a5,276(a5) # 8000b820 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002714:	02078c63          	beqz	a5,8000274c <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    80002718:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000271c:	00009797          	auipc	a5,0x9
    80002720:	10a7b223          	sd	a0,260(a5) # 8000b820 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    80002724:	00009717          	auipc	a4,0x9
    80002728:	0f470713          	addi	a4,a4,244 # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
    8000272c:	01072783          	lw	a5,16(a4)
    80002730:	0017879b          	addiw	a5,a5,1
    80002734:	00f72823          	sw	a5,16(a4)
}
    80002738:	01813083          	ld	ra,24(sp)
    8000273c:	01013403          	ld	s0,16(sp)
    80002740:	00813483          	ld	s1,8(sp)
    80002744:	02010113          	addi	sp,sp,32
    80002748:	00008067          	ret
            head = tail = elem;
    8000274c:	00009797          	auipc	a5,0x9
    80002750:	0cc78793          	addi	a5,a5,204 # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
    80002754:	00a7b423          	sd	a0,8(a5)
    80002758:	00a7b023          	sd	a0,0(a5)
    8000275c:	fc9ff06f          	j	80002724 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002760 <_ZN9Scheduler9getSortedEv>:
{
    80002760:	fe010113          	addi	sp,sp,-32
    80002764:	00113c23          	sd	ra,24(sp)
    80002768:	00813823          	sd	s0,16(sp)
    8000276c:	00913423          	sd	s1,8(sp)
    80002770:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002774:	00009517          	auipc	a0,0x9
    80002778:	0bc53503          	ld	a0,188(a0) # 8000b830 <_ZN9Scheduler19sleepingThreadQueueE>
    8000277c:	04050c63          	beqz	a0,800027d4 <_ZN9Scheduler9getSortedEv+0x74>
        head = head->next;
    80002780:	00853783          	ld	a5,8(a0)
    80002784:	00009717          	auipc	a4,0x9
    80002788:	0af73623          	sd	a5,172(a4) # 8000b830 <_ZN9Scheduler19sleepingThreadQueueE>
        if (!head) { tail = 0; }
    8000278c:	02078e63          	beqz	a5,800027c8 <_ZN9Scheduler9getSortedEv+0x68>
        T *ret = elem->data;
    80002790:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002794:	00000097          	auipc	ra,0x0
    80002798:	398080e7          	jalr	920(ra) # 80002b2c <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    8000279c:	00009717          	auipc	a4,0x9
    800027a0:	07c70713          	addi	a4,a4,124 # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
    800027a4:	02872783          	lw	a5,40(a4)
    800027a8:	fff7879b          	addiw	a5,a5,-1
    800027ac:	02f72423          	sw	a5,40(a4)
}
    800027b0:	00048513          	mv	a0,s1
    800027b4:	01813083          	ld	ra,24(sp)
    800027b8:	01013403          	ld	s0,16(sp)
    800027bc:	00813483          	ld	s1,8(sp)
    800027c0:	02010113          	addi	sp,sp,32
    800027c4:	00008067          	ret
        if (!head) { tail = 0; }
    800027c8:	00009797          	auipc	a5,0x9
    800027cc:	0607b823          	sd	zero,112(a5) # 8000b838 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    800027d0:	fc1ff06f          	j	80002790 <_ZN9Scheduler9getSortedEv+0x30>
        if (!head) { return 0; }
    800027d4:	00050493          	mv	s1,a0
    return sleepingThreadQueue.removeFirst();
    800027d8:	fd9ff06f          	j	800027b0 <_ZN9Scheduler9getSortedEv+0x50>

00000000800027dc <_ZN9Scheduler11getWakeTimeEv>:
uint64 Scheduler::getWakeTime() {
    800027dc:	ff010113          	addi	sp,sp,-16
    800027e0:	00813423          	sd	s0,8(sp)
    800027e4:	01010413          	addi	s0,sp,16
        if (!head) { return 0; }
        return head->data;
    }

    uint64 peekFirstTime(){
        if(!head) return 0;
    800027e8:	00009797          	auipc	a5,0x9
    800027ec:	0487b783          	ld	a5,72(a5) # 8000b830 <_ZN9Scheduler19sleepingThreadQueueE>
    800027f0:	00078a63          	beqz	a5,80002804 <_ZN9Scheduler11getWakeTimeEv+0x28>
        return head->wakeUp;
    800027f4:	0107b503          	ld	a0,16(a5)
}
    800027f8:	00813403          	ld	s0,8(sp)
    800027fc:	01010113          	addi	sp,sp,16
    80002800:	00008067          	ret
        if(!head) return 0;
    80002804:	00000513          	li	a0,0
    return sleepingThreadQueue.peekFirstTime();
    80002808:	ff1ff06f          	j	800027f8 <_ZN9Scheduler11getWakeTimeEv+0x1c>

000000008000280c <_ZN9Scheduler9putSortedEP3TCBm>:
{
    8000280c:	fd010113          	addi	sp,sp,-48
    80002810:	02113423          	sd	ra,40(sp)
    80002814:	02813023          	sd	s0,32(sp)
    80002818:	00913c23          	sd	s1,24(sp)
    8000281c:	01213823          	sd	s2,16(sp)
    80002820:	01313423          	sd	s3,8(sp)
    80002824:	03010413          	addi	s0,sp,48
    80002828:	00050993          	mv	s3,a0
    8000282c:	00058913          	mv	s2,a1
        Elem* curr = head;
    80002830:	00009497          	auipc	s1,0x9
    80002834:	0004b483          	ld	s1,0(s1) # 8000b830 <_ZN9Scheduler19sleepingThreadQueueE>
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    80002838:	00100513          	li	a0,1
    8000283c:	00000097          	auipc	ra,0x0
    80002840:	194080e7          	jalr	404(ra) # 800029d0 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80002844:	01353023          	sd	s3,0(a0)
        elem->next = nullptr;
    80002848:	00053423          	sd	zero,8(a0)
        elem->wakeUp=wakeUp;
    8000284c:	01253823          	sd	s2,16(a0)
        if(!curr){
    80002850:	02048863          	beqz	s1,80002880 <_ZN9Scheduler9putSortedEP3TCBm+0x74>
        else if(head->wakeUp>wakeUp){
    80002854:	00009797          	auipc	a5,0x9
    80002858:	fdc7b783          	ld	a5,-36(a5) # 8000b830 <_ZN9Scheduler19sleepingThreadQueueE>
    8000285c:	0107b703          	ld	a4,16(a5)
    80002860:	04e96063          	bltu	s2,a4,800028a0 <_ZN9Scheduler9putSortedEP3TCBm+0x94>
        Elem* prev=curr;
    80002864:	00048793          	mv	a5,s1
        while(curr && curr->wakeUp<=wakeUp) {
    80002868:	04048c63          	beqz	s1,800028c0 <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
    8000286c:	0104b703          	ld	a4,16(s1)
    80002870:	04e96863          	bltu	s2,a4,800028c0 <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
            prev=curr;
    80002874:	00048793          	mv	a5,s1
            curr=curr->next;
    80002878:	0084b483          	ld	s1,8(s1)
        while(curr && curr->wakeUp<=wakeUp) {
    8000287c:	fedff06f          	j	80002868 <_ZN9Scheduler9putSortedEP3TCBm+0x5c>
            head=tail=elem;
    80002880:	00009797          	auipc	a5,0x9
    80002884:	f9878793          	addi	a5,a5,-104 # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
    80002888:	02a7b023          	sd	a0,32(a5)
    8000288c:	00a7bc23          	sd	a0,24(a5)
            size++;
    80002890:	0287a703          	lw	a4,40(a5)
    80002894:	0017071b          	addiw	a4,a4,1
    80002898:	02e7a423          	sw	a4,40(a5)
            return;
    8000289c:	0440006f          	j	800028e0 <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
            elem->next=head;
    800028a0:	00f53423          	sd	a5,8(a0)
            head=elem;
    800028a4:	00009797          	auipc	a5,0x9
    800028a8:	f7478793          	addi	a5,a5,-140 # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
    800028ac:	00a7bc23          	sd	a0,24(a5)
            size++;
    800028b0:	0287a703          	lw	a4,40(a5)
    800028b4:	0017071b          	addiw	a4,a4,1
    800028b8:	02e7a423          	sw	a4,40(a5)
            return;
    800028bc:	0240006f          	j	800028e0 <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
        elem->next=curr;
    800028c0:	00953423          	sd	s1,8(a0)
        prev->next=elem;
    800028c4:	00a7b423          	sd	a0,8(a5)
        if(!curr) tail=elem;
    800028c8:	02048a63          	beqz	s1,800028fc <_ZN9Scheduler9putSortedEP3TCBm+0xf0>
        size++;
    800028cc:	00009717          	auipc	a4,0x9
    800028d0:	f4c70713          	addi	a4,a4,-180 # 8000b818 <_ZN9Scheduler16readyThreadQueueE>
    800028d4:	02872783          	lw	a5,40(a4)
    800028d8:	0017879b          	addiw	a5,a5,1
    800028dc:	02f72423          	sw	a5,40(a4)
}
    800028e0:	02813083          	ld	ra,40(sp)
    800028e4:	02013403          	ld	s0,32(sp)
    800028e8:	01813483          	ld	s1,24(sp)
    800028ec:	01013903          	ld	s2,16(sp)
    800028f0:	00813983          	ld	s3,8(sp)
    800028f4:	03010113          	addi	sp,sp,48
    800028f8:	00008067          	ret
        if(!curr) tail=elem;
    800028fc:	00009797          	auipc	a5,0x9
    80002900:	f2a7be23          	sd	a0,-196(a5) # 8000b838 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    80002904:	fc9ff06f          	j	800028cc <_ZN9Scheduler9putSortedEP3TCBm+0xc0>

0000000080002908 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002908:	ff010113          	addi	sp,sp,-16
    8000290c:	00113423          	sd	ra,8(sp)
    80002910:	00813023          	sd	s0,0(sp)
    80002914:	01010413          	addi	s0,sp,16
    80002918:	000105b7          	lui	a1,0x10
    8000291c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002920:	00100513          	li	a0,1
    80002924:	00000097          	auipc	ra,0x0
    80002928:	cf0080e7          	jalr	-784(ra) # 80002614 <_Z41__static_initialization_and_destruction_0ii>
    8000292c:	00813083          	ld	ra,8(sp)
    80002930:	00013403          	ld	s0,0(sp)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret

000000008000293c <_ZN15MemoryAllocator7getFreeEv>:
    findNewLargest();
    return 0;
}

size_t MemoryAllocator::getFree()
{
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00813423          	sd	s0,8(sp)
    80002944:	01010413          	addi	s0,sp,16

    return totalFreeMem;
}
    80002948:	00009517          	auipc	a0,0x9
    8000294c:	f0053503          	ld	a0,-256(a0) # 8000b848 <_ZN15MemoryAllocator12totalFreeMemE>
    80002950:	00813403          	ld	s0,8(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock()
{
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00813423          	sd	s0,8(sp)
    80002964:	01010413          	addi	s0,sp,16
    return largestFreeBlock;
}
    80002968:	00009517          	auipc	a0,0x9
    8000296c:	ee853503          	ld	a0,-280(a0) # 8000b850 <_ZN15MemoryAllocator16largestFreeBlockE>
    80002970:	00813403          	ld	s0,8(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <_ZN15MemoryAllocator14findNewLargestEv>:

void MemoryAllocator::findNewLargest()
{
    8000297c:	ff010113          	addi	sp,sp,-16
    80002980:	00813423          	sd	s0,8(sp)
    80002984:	01010413          	addi	s0,sp,16
    largestFreeBlock=0;
    80002988:	00009797          	auipc	a5,0x9
    8000298c:	ec078793          	addi	a5,a5,-320 # 8000b848 <_ZN15MemoryAllocator12totalFreeMemE>
    80002990:	0007b423          	sd	zero,8(a5)
    if(!freeMemHead) return;
    80002994:	0107b783          	ld	a5,16(a5)
    80002998:	00079e63          	bnez	a5,800029b4 <_ZN15MemoryAllocator14findNewLargestEv+0x38>
    while(curr) {
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
        curr=curr->next;
    }

}
    8000299c:	00813403          	ld	s0,8(sp)
    800029a0:	01010113          	addi	sp,sp,16
    800029a4:	00008067          	ret
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    800029a8:	00009697          	auipc	a3,0x9
    800029ac:	eae6b423          	sd	a4,-344(a3) # 8000b850 <_ZN15MemoryAllocator16largestFreeBlockE>
        curr=curr->next;
    800029b0:	0107b783          	ld	a5,16(a5)
    while(curr) {
    800029b4:	fe0784e3          	beqz	a5,8000299c <_ZN15MemoryAllocator14findNewLargestEv+0x20>
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    800029b8:	0007b683          	ld	a3,0(a5)
    800029bc:	00009717          	auipc	a4,0x9
    800029c0:	e9473703          	ld	a4,-364(a4) # 8000b850 <_ZN15MemoryAllocator16largestFreeBlockE>
    800029c4:	fed772e3          	bgeu	a4,a3,800029a8 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>
    800029c8:	00068713          	mv	a4,a3
    800029cc:	fddff06f          	j	800029a8 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>

00000000800029d0 <_ZN15MemoryAllocator9mem_allocEm>:
{
    800029d0:	fe010113          	addi	sp,sp,-32
    800029d4:	00113c23          	sd	ra,24(sp)
    800029d8:	00813823          	sd	s0,16(sp)
    800029dc:	00913423          	sd	s1,8(sp)
    800029e0:	02010413          	addi	s0,sp,32
    size_t size=numOfBlocks*MEM_BLOCK_SIZE;
    800029e4:	00651513          	slli	a0,a0,0x6
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    800029e8:	12050e63          	beqz	a0,80002b24 <_ZN15MemoryAllocator9mem_allocEm+0x154>
    800029ec:	00009497          	auipc	s1,0x9
    800029f0:	e6c4b483          	ld	s1,-404(s1) # 8000b858 <_ZN15MemoryAllocator11freeMemHeadE>
    800029f4:	0e048e63          	beqz	s1,80002af0 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    800029f8:	00009717          	auipc	a4,0x9
    800029fc:	e5873703          	ld	a4,-424(a4) # 8000b850 <_ZN15MemoryAllocator16largestFreeBlockE>
    80002a00:	00a77863          	bgeu	a4,a0,80002a10 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    80002a04:	00000493          	li	s1,0
    80002a08:	0e80006f          	j	80002af0 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    while(curr && curr->size<size) curr=curr->next;
    80002a0c:	0104b483          	ld	s1,16(s1)
    80002a10:	00048663          	beqz	s1,80002a1c <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80002a14:	0004b783          	ld	a5,0(s1)
    80002a18:	fea7eae3          	bltu	a5,a0,80002a0c <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if(!curr) return nullptr;
    80002a1c:	0c048a63          	beqz	s1,80002af0 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    if(curr->size> size+sizeof(FreeBlock)){
    80002a20:	0004b683          	ld	a3,0(s1)
    80002a24:	01850793          	addi	a5,a0,24
    80002a28:	08d7f063          	bgeu	a5,a3,80002aa8 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        totalFreeMem=totalFreeMem-size-sizeof(FreeBlock);
    80002a2c:	00009617          	auipc	a2,0x9
    80002a30:	e1c60613          	addi	a2,a2,-484 # 8000b848 <_ZN15MemoryAllocator12totalFreeMemE>
    80002a34:	00063683          	ld	a3,0(a2)
    80002a38:	40a686b3          	sub	a3,a3,a0
    80002a3c:	fe868693          	addi	a3,a3,-24
    80002a40:	00d63023          	sd	a3,0(a2)
        if(largestFreeBlock==curr->size) find=true;
    80002a44:	0004b683          	ld	a3,0(s1)
    80002a48:	04d70663          	beq	a4,a3,80002a94 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        bool find=false;
    80002a4c:	00000613          	li	a2,0
        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    80002a50:	00f487b3          	add	a5,s1,a5
        newBlock->size=curr->size-size-sizeof(FreeBlock);
    80002a54:	40a686b3          	sub	a3,a3,a0
    80002a58:	fe868693          	addi	a3,a3,-24
    80002a5c:	00d7b023          	sd	a3,0(a5)
        newBlock->prev=curr->prev;
    80002a60:	0084b703          	ld	a4,8(s1)
    80002a64:	00e7b423          	sd	a4,8(a5)
        curr->size=size;
    80002a68:	00a4b023          	sd	a0,0(s1)
        if(curr->prev){
    80002a6c:	02070863          	beqz	a4,80002a9c <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            curr->prev->next=newBlock;
    80002a70:	00f73823          	sd	a5,16(a4)
        newBlock->next=curr->next;
    80002a74:	0104b703          	ld	a4,16(s1)
    80002a78:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=newBlock;
    80002a7c:	00070463          	beqz	a4,80002a84 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002a80:	00f73423          	sd	a5,8(a4)
        if(find) findNewLargest();
    80002a84:	06060063          	beqz	a2,80002ae4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	ef4080e7          	jalr	-268(ra) # 8000297c <_ZN15MemoryAllocator14findNewLargestEv>
    80002a90:	0540006f          	j	80002ae4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
        if(largestFreeBlock==curr->size) find=true;
    80002a94:	00100613          	li	a2,1
    80002a98:	fb9ff06f          	j	80002a50 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        else freeMemHead = newBlock;
    80002a9c:	00009717          	auipc	a4,0x9
    80002aa0:	daf73e23          	sd	a5,-580(a4) # 8000b858 <_ZN15MemoryAllocator11freeMemHeadE>
    80002aa4:	fd1ff06f          	j	80002a74 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        totalFreeMem=totalFreeMem-curr->size;
    80002aa8:	00009617          	auipc	a2,0x9
    80002aac:	da060613          	addi	a2,a2,-608 # 8000b848 <_ZN15MemoryAllocator12totalFreeMemE>
    80002ab0:	00063783          	ld	a5,0(a2)
    80002ab4:	40d786b3          	sub	a3,a5,a3
    80002ab8:	00d63023          	sd	a3,0(a2)
        if(curr->prev) curr->prev->next=curr->next;
    80002abc:	0084b783          	ld	a5,8(s1)
    80002ac0:	04078463          	beqz	a5,80002b08 <_ZN15MemoryAllocator9mem_allocEm+0x138>
    80002ac4:	0104b683          	ld	a3,16(s1)
    80002ac8:	00d7b823          	sd	a3,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80002acc:	0104b783          	ld	a5,16(s1)
    80002ad0:	00078663          	beqz	a5,80002adc <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    80002ad4:	0084b683          	ld	a3,8(s1)
    80002ad8:	00d7b423          	sd	a3,8(a5)
        if(curr->size==largestFreeBlock) findNewLargest();
    80002adc:	0004b783          	ld	a5,0(s1)
    80002ae0:	02f70c63          	beq	a4,a5,80002b18 <_ZN15MemoryAllocator9mem_allocEm+0x148>
    curr->next=nullptr;
    80002ae4:	0004b823          	sd	zero,16(s1)
    curr->prev=nullptr;
    80002ae8:	0004b423          	sd	zero,8(s1)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    80002aec:	01848493          	addi	s1,s1,24
}
    80002af0:	00048513          	mv	a0,s1
    80002af4:	01813083          	ld	ra,24(sp)
    80002af8:	01013403          	ld	s0,16(sp)
    80002afc:	00813483          	ld	s1,8(sp)
    80002b00:	02010113          	addi	sp,sp,32
    80002b04:	00008067          	ret
        else freeMemHead=curr->next;
    80002b08:	0104b783          	ld	a5,16(s1)
    80002b0c:	00009697          	auipc	a3,0x9
    80002b10:	d4f6b623          	sd	a5,-692(a3) # 8000b858 <_ZN15MemoryAllocator11freeMemHeadE>
    80002b14:	fb9ff06f          	j	80002acc <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if(curr->size==largestFreeBlock) findNewLargest();
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	e64080e7          	jalr	-412(ra) # 8000297c <_ZN15MemoryAllocator14findNewLargestEv>
    80002b20:	fc5ff06f          	j	80002ae4 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    80002b24:	00000493          	li	s1,0
    80002b28:	fc9ff06f          	j	80002af0 <_ZN15MemoryAllocator9mem_allocEm+0x120>

0000000080002b2c <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    80002b2c:	1e050c63          	beqz	a0,80002d24 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80002b30:	fe850693          	addi	a3,a0,-24
    80002b34:	00009797          	auipc	a5,0x9
    80002b38:	c347b783          	ld	a5,-972(a5) # 8000b768 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002b3c:	0007b783          	ld	a5,0(a5)
    80002b40:	1ef6e663          	bltu	a3,a5,80002d2c <_ZN15MemoryAllocator8mem_freeEPv+0x200>
    80002b44:	00009797          	auipc	a5,0x9
    80002b48:	c647b783          	ld	a5,-924(a5) # 8000b7a8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002b4c:	0007b783          	ld	a5,0(a5)
    80002b50:	1ea7e263          	bltu	a5,a0,80002d34 <_ZN15MemoryAllocator8mem_freeEPv+0x208>
    totalFreeMem+=blk->size;
    80002b54:	fe853603          	ld	a2,-24(a0)
    80002b58:	00009797          	auipc	a5,0x9
    80002b5c:	cf078793          	addi	a5,a5,-784 # 8000b848 <_ZN15MemoryAllocator12totalFreeMemE>
    80002b60:	0007b703          	ld	a4,0(a5)
    80002b64:	00c70733          	add	a4,a4,a2
    80002b68:	00e7b023          	sd	a4,0(a5)
    blk->next=nullptr;
    80002b6c:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    80002b70:	fe053823          	sd	zero,-16(a0)
    if(!freeMemHead){
    80002b74:	0107b603          	ld	a2,16(a5)
    80002b78:	08060463          	beqz	a2,80002c00 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
{
    80002b7c:	ff010113          	addi	sp,sp,-16
    80002b80:	00113423          	sd	ra,8(sp)
    80002b84:	00813023          	sd	s0,0(sp)
    80002b88:	01010413          	addi	s0,sp,16
    if((char*) blk < (char*) freeMemHead){
    80002b8c:	0cc6e263          	bltu	a3,a2,80002c50 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    80002b90:	00060793          	mv	a5,a2
    80002b94:	00078713          	mv	a4,a5
    80002b98:	0107b783          	ld	a5,16(a5)
    80002b9c:	00078463          	beqz	a5,80002ba4 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80002ba0:	fed7eae3          	bltu	a5,a3,80002b94 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    80002ba4:	0a070863          	beqz	a4,80002c54 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    80002ba8:	00073803          	ld	a6,0(a4)
    80002bac:	01880593          	addi	a1,a6,24
    80002bb0:	00b705b3          	add	a1,a4,a1
    80002bb4:	0ab69063          	bne	a3,a1,80002c54 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
        curr->size+=sizeof(FreeBlock)+blk->size;
    80002bb8:	fe853683          	ld	a3,-24(a0)
    80002bbc:	00d806b3          	add	a3,a6,a3
    80002bc0:	01868693          	addi	a3,a3,24
    80002bc4:	00d73023          	sd	a3,0(a4)
        totalFreeMem+=sizeof(FreeBlock);
    80002bc8:	00009617          	auipc	a2,0x9
    80002bcc:	c8060613          	addi	a2,a2,-896 # 8000b848 <_ZN15MemoryAllocator12totalFreeMemE>
    80002bd0:	00063683          	ld	a3,0(a2)
    80002bd4:	01868693          	addi	a3,a3,24
    80002bd8:	00d63023          	sd	a3,0(a2)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80002bdc:	00078a63          	beqz	a5,80002bf0 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80002be0:	00073603          	ld	a2,0(a4)
    80002be4:	01860693          	addi	a3,a2,24
    80002be8:	00d706b3          	add	a3,a4,a3
    80002bec:	02d78663          	beq	a5,a3,80002c18 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        findNewLargest();
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	d8c080e7          	jalr	-628(ra) # 8000297c <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    80002bf8:	00000513          	li	a0,0
    80002bfc:	09c0006f          	j	80002c98 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        freeMemHead=blk;
    80002c00:	00d7b823          	sd	a3,16(a5)
        totalFreeMem=blk->size;
    80002c04:	fe853703          	ld	a4,-24(a0)
    80002c08:	00e7b023          	sd	a4,0(a5)
        largestFreeBlock=totalFreeMem;
    80002c0c:	00e7b423          	sd	a4,8(a5)
        return 0;
    80002c10:	00000513          	li	a0,0
    80002c14:	00008067          	ret
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    80002c18:	0007b683          	ld	a3,0(a5)
    80002c1c:	00d606b3          	add	a3,a2,a3
    80002c20:	01868693          	addi	a3,a3,24
    80002c24:	00d73023          	sd	a3,0(a4)
            totalFreeMem+=sizeof(FreeBlock);
    80002c28:	00009617          	auipc	a2,0x9
    80002c2c:	c2060613          	addi	a2,a2,-992 # 8000b848 <_ZN15MemoryAllocator12totalFreeMemE>
    80002c30:	00063683          	ld	a3,0(a2)
    80002c34:	01868693          	addi	a3,a3,24
    80002c38:	00d63023          	sd	a3,0(a2)
            curr->next=curr->next->next;
    80002c3c:	0107b783          	ld	a5,16(a5)
    80002c40:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    80002c44:	fa0786e3          	beqz	a5,80002bf0 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80002c48:	00e7b423          	sd	a4,8(a5)
    80002c4c:	fa5ff06f          	j	80002bf0 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        curr=nullptr;
    80002c50:	00000713          	li	a4,0
    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    80002c54:	00070463          	beqz	a4,80002c5c <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    80002c58:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    80002c5c:	00060863          	beqz	a2,80002c6c <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    80002c60:	fe853783          	ld	a5,-24(a0)
    80002c64:	00f507b3          	add	a5,a0,a5
    80002c68:	04c78063          	beq	a5,a2,80002ca8 <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    blk->prev=curr;
    80002c6c:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    80002c70:	08070e63          	beqz	a4,80002d0c <_ZN15MemoryAllocator8mem_freeEPv+0x1e0>
    80002c74:	01073783          	ld	a5,16(a4)
    80002c78:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    80002c7c:	00078463          	beqz	a5,80002c84 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    80002c80:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    80002c84:	08070a63          	beqz	a4,80002d18 <_ZN15MemoryAllocator8mem_freeEPv+0x1ec>
    80002c88:	00d73823          	sd	a3,16(a4)
    findNewLargest();
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	cf0080e7          	jalr	-784(ra) # 8000297c <_ZN15MemoryAllocator14findNewLargestEv>
    return 0;
    80002c94:	00000513          	li	a0,0
}
    80002c98:	00813083          	ld	ra,8(sp)
    80002c9c:	00013403          	ld	s0,0(sp)
    80002ca0:	01010113          	addi	sp,sp,16
    80002ca4:	00008067          	ret
        totalFreeMem+=sizeof(FreeBlock);
    80002ca8:	00009717          	auipc	a4,0x9
    80002cac:	ba070713          	addi	a4,a4,-1120 # 8000b848 <_ZN15MemoryAllocator12totalFreeMemE>
    80002cb0:	00073783          	ld	a5,0(a4)
    80002cb4:	01878793          	addi	a5,a5,24
    80002cb8:	00f73023          	sd	a5,0(a4)
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    80002cbc:	00063783          	ld	a5,0(a2)
    80002cc0:	fe853703          	ld	a4,-24(a0)
    80002cc4:	00e787b3          	add	a5,a5,a4
    80002cc8:	01878793          	addi	a5,a5,24
    80002ccc:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    80002cd0:	01063783          	ld	a5,16(a2)
    80002cd4:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    80002cd8:	00078463          	beqz	a5,80002ce0 <_ZN15MemoryAllocator8mem_freeEPv+0x1b4>
    80002cdc:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    80002ce0:	00863783          	ld	a5,8(a2)
    80002ce4:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    80002ce8:	00078c63          	beqz	a5,80002d00 <_ZN15MemoryAllocator8mem_freeEPv+0x1d4>
    80002cec:	00d7b823          	sd	a3,16(a5)
        findNewLargest();
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	c8c080e7          	jalr	-884(ra) # 8000297c <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    80002cf8:	00000513          	li	a0,0
    80002cfc:	f9dff06f          	j	80002c98 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        else freeMemHead=blk;
    80002d00:	00009797          	auipc	a5,0x9
    80002d04:	b4d7bc23          	sd	a3,-1192(a5) # 8000b858 <_ZN15MemoryAllocator11freeMemHeadE>
    80002d08:	fe9ff06f          	j	80002cf0 <_ZN15MemoryAllocator8mem_freeEPv+0x1c4>
    blk->next=curr?curr->next:freeMemHead;
    80002d0c:	00009797          	auipc	a5,0x9
    80002d10:	b4c7b783          	ld	a5,-1204(a5) # 8000b858 <_ZN15MemoryAllocator11freeMemHeadE>
    80002d14:	f65ff06f          	j	80002c78 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    else freeMemHead=blk;
    80002d18:	00009797          	auipc	a5,0x9
    80002d1c:	b4d7b023          	sd	a3,-1216(a5) # 8000b858 <_ZN15MemoryAllocator11freeMemHeadE>
    80002d20:	f6dff06f          	j	80002c8c <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    if(!addr) return -1;
    80002d24:	fff00513          	li	a0,-1
    80002d28:	00008067          	ret
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80002d2c:	ffe00513          	li	a0,-2
    80002d30:	00008067          	ret
    80002d34:	ffe00513          	li	a0,-2
}
    80002d38:	00008067          	ret

0000000080002d3c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002d3c:	fe010113          	addi	sp,sp,-32
    80002d40:	00113c23          	sd	ra,24(sp)
    80002d44:	00813823          	sd	s0,16(sp)
    80002d48:	00913423          	sd	s1,8(sp)
    80002d4c:	01213023          	sd	s2,0(sp)
    80002d50:	02010413          	addi	s0,sp,32
    80002d54:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002d58:	00000913          	li	s2,0
    80002d5c:	00c0006f          	j	80002d68 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002d60:	ffffe097          	auipc	ra,0xffffe
    80002d64:	684080e7          	jalr	1668(ra) # 800013e4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002d68:	ffffe097          	auipc	ra,0xffffe
    80002d6c:	7bc080e7          	jalr	1980(ra) # 80001524 <_Z4getcv>
    80002d70:	0005059b          	sext.w	a1,a0
    80002d74:	01b00793          	li	a5,27
    80002d78:	02f58a63          	beq	a1,a5,80002dac <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002d7c:	0084b503          	ld	a0,8(s1)
    80002d80:	00003097          	auipc	ra,0x3
    80002d84:	400080e7          	jalr	1024(ra) # 80006180 <_ZN6Buffer3putEi>
        i++;
    80002d88:	0019071b          	addiw	a4,s2,1
    80002d8c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002d90:	0004a683          	lw	a3,0(s1)
    80002d94:	0026979b          	slliw	a5,a3,0x2
    80002d98:	00d787bb          	addw	a5,a5,a3
    80002d9c:	0017979b          	slliw	a5,a5,0x1
    80002da0:	02f767bb          	remw	a5,a4,a5
    80002da4:	fc0792e3          	bnez	a5,80002d68 <_ZL16producerKeyboardPv+0x2c>
    80002da8:	fb9ff06f          	j	80002d60 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002dac:	00100793          	li	a5,1
    80002db0:	00009717          	auipc	a4,0x9
    80002db4:	aaf72823          	sw	a5,-1360(a4) # 8000b860 <_ZL9threadEnd>
    data->buffer->put('!');
    80002db8:	02100593          	li	a1,33
    80002dbc:	0084b503          	ld	a0,8(s1)
    80002dc0:	00003097          	auipc	ra,0x3
    80002dc4:	3c0080e7          	jalr	960(ra) # 80006180 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002dc8:	0104b503          	ld	a0,16(s1)
    80002dcc:	ffffe097          	auipc	ra,0xffffe
    80002dd0:	6e8080e7          	jalr	1768(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    80002dd4:	01813083          	ld	ra,24(sp)
    80002dd8:	01013403          	ld	s0,16(sp)
    80002ddc:	00813483          	ld	s1,8(sp)
    80002de0:	00013903          	ld	s2,0(sp)
    80002de4:	02010113          	addi	sp,sp,32
    80002de8:	00008067          	ret

0000000080002dec <_ZL8producerPv>:

static void producer(void *arg) {
    80002dec:	fe010113          	addi	sp,sp,-32
    80002df0:	00113c23          	sd	ra,24(sp)
    80002df4:	00813823          	sd	s0,16(sp)
    80002df8:	00913423          	sd	s1,8(sp)
    80002dfc:	01213023          	sd	s2,0(sp)
    80002e00:	02010413          	addi	s0,sp,32
    80002e04:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e08:	00000913          	li	s2,0
    80002e0c:	00c0006f          	j	80002e18 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002e10:	ffffe097          	auipc	ra,0xffffe
    80002e14:	5d4080e7          	jalr	1492(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002e18:	00009797          	auipc	a5,0x9
    80002e1c:	a487a783          	lw	a5,-1464(a5) # 8000b860 <_ZL9threadEnd>
    80002e20:	02079e63          	bnez	a5,80002e5c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002e24:	0004a583          	lw	a1,0(s1)
    80002e28:	0305859b          	addiw	a1,a1,48
    80002e2c:	0084b503          	ld	a0,8(s1)
    80002e30:	00003097          	auipc	ra,0x3
    80002e34:	350080e7          	jalr	848(ra) # 80006180 <_ZN6Buffer3putEi>
        i++;
    80002e38:	0019071b          	addiw	a4,s2,1
    80002e3c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e40:	0004a683          	lw	a3,0(s1)
    80002e44:	0026979b          	slliw	a5,a3,0x2
    80002e48:	00d787bb          	addw	a5,a5,a3
    80002e4c:	0017979b          	slliw	a5,a5,0x1
    80002e50:	02f767bb          	remw	a5,a4,a5
    80002e54:	fc0792e3          	bnez	a5,80002e18 <_ZL8producerPv+0x2c>
    80002e58:	fb9ff06f          	j	80002e10 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002e5c:	0104b503          	ld	a0,16(s1)
    80002e60:	ffffe097          	auipc	ra,0xffffe
    80002e64:	654080e7          	jalr	1620(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    80002e68:	01813083          	ld	ra,24(sp)
    80002e6c:	01013403          	ld	s0,16(sp)
    80002e70:	00813483          	ld	s1,8(sp)
    80002e74:	00013903          	ld	s2,0(sp)
    80002e78:	02010113          	addi	sp,sp,32
    80002e7c:	00008067          	ret

0000000080002e80 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002e80:	fd010113          	addi	sp,sp,-48
    80002e84:	02113423          	sd	ra,40(sp)
    80002e88:	02813023          	sd	s0,32(sp)
    80002e8c:	00913c23          	sd	s1,24(sp)
    80002e90:	01213823          	sd	s2,16(sp)
    80002e94:	01313423          	sd	s3,8(sp)
    80002e98:	03010413          	addi	s0,sp,48
    80002e9c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002ea0:	00000993          	li	s3,0
    80002ea4:	01c0006f          	j	80002ec0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002ea8:	ffffe097          	auipc	ra,0xffffe
    80002eac:	53c080e7          	jalr	1340(ra) # 800013e4 <_Z15thread_dispatchv>
    80002eb0:	0500006f          	j	80002f00 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002eb4:	00a00513          	li	a0,10
    80002eb8:	ffffe097          	auipc	ra,0xffffe
    80002ebc:	6a0080e7          	jalr	1696(ra) # 80001558 <_Z4putcc>
    while (!threadEnd) {
    80002ec0:	00009797          	auipc	a5,0x9
    80002ec4:	9a07a783          	lw	a5,-1632(a5) # 8000b860 <_ZL9threadEnd>
    80002ec8:	06079063          	bnez	a5,80002f28 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002ecc:	00893503          	ld	a0,8(s2)
    80002ed0:	00003097          	auipc	ra,0x3
    80002ed4:	340080e7          	jalr	832(ra) # 80006210 <_ZN6Buffer3getEv>
        i++;
    80002ed8:	0019849b          	addiw	s1,s3,1
    80002edc:	0004899b          	sext.w	s3,s1
        putc(key);
    80002ee0:	0ff57513          	andi	a0,a0,255
    80002ee4:	ffffe097          	auipc	ra,0xffffe
    80002ee8:	674080e7          	jalr	1652(ra) # 80001558 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002eec:	00092703          	lw	a4,0(s2)
    80002ef0:	0027179b          	slliw	a5,a4,0x2
    80002ef4:	00e787bb          	addw	a5,a5,a4
    80002ef8:	02f4e7bb          	remw	a5,s1,a5
    80002efc:	fa0786e3          	beqz	a5,80002ea8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f00:	05000793          	li	a5,80
    80002f04:	02f4e4bb          	remw	s1,s1,a5
    80002f08:	fa049ce3          	bnez	s1,80002ec0 <_ZL8consumerPv+0x40>
    80002f0c:	fa9ff06f          	j	80002eb4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002f10:	00893503          	ld	a0,8(s2)
    80002f14:	00003097          	auipc	ra,0x3
    80002f18:	2fc080e7          	jalr	764(ra) # 80006210 <_ZN6Buffer3getEv>
        putc(key);
    80002f1c:	0ff57513          	andi	a0,a0,255
    80002f20:	ffffe097          	auipc	ra,0xffffe
    80002f24:	638080e7          	jalr	1592(ra) # 80001558 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002f28:	00893503          	ld	a0,8(s2)
    80002f2c:	00003097          	auipc	ra,0x3
    80002f30:	370080e7          	jalr	880(ra) # 8000629c <_ZN6Buffer6getCntEv>
    80002f34:	fca04ee3          	bgtz	a0,80002f10 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002f38:	01093503          	ld	a0,16(s2)
    80002f3c:	ffffe097          	auipc	ra,0xffffe
    80002f40:	578080e7          	jalr	1400(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    80002f44:	02813083          	ld	ra,40(sp)
    80002f48:	02013403          	ld	s0,32(sp)
    80002f4c:	01813483          	ld	s1,24(sp)
    80002f50:	01013903          	ld	s2,16(sp)
    80002f54:	00813983          	ld	s3,8(sp)
    80002f58:	03010113          	addi	sp,sp,48
    80002f5c:	00008067          	ret

0000000080002f60 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002f60:	f9010113          	addi	sp,sp,-112
    80002f64:	06113423          	sd	ra,104(sp)
    80002f68:	06813023          	sd	s0,96(sp)
    80002f6c:	04913c23          	sd	s1,88(sp)
    80002f70:	05213823          	sd	s2,80(sp)
    80002f74:	05313423          	sd	s3,72(sp)
    80002f78:	05413023          	sd	s4,64(sp)
    80002f7c:	03513c23          	sd	s5,56(sp)
    80002f80:	03613823          	sd	s6,48(sp)
    80002f84:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002f88:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002f8c:	00006517          	auipc	a0,0x6
    80002f90:	1a450513          	addi	a0,a0,420 # 80009130 <CONSOLE_STATUS+0x120>
    80002f94:	00002097          	auipc	ra,0x2
    80002f98:	220080e7          	jalr	544(ra) # 800051b4 <_Z11printStringPKc>
    getString(input, 30);
    80002f9c:	01e00593          	li	a1,30
    80002fa0:	fa040493          	addi	s1,s0,-96
    80002fa4:	00048513          	mv	a0,s1
    80002fa8:	00002097          	auipc	ra,0x2
    80002fac:	294080e7          	jalr	660(ra) # 8000523c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002fb0:	00048513          	mv	a0,s1
    80002fb4:	00002097          	auipc	ra,0x2
    80002fb8:	360080e7          	jalr	864(ra) # 80005314 <_Z11stringToIntPKc>
    80002fbc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002fc0:	00006517          	auipc	a0,0x6
    80002fc4:	19050513          	addi	a0,a0,400 # 80009150 <CONSOLE_STATUS+0x140>
    80002fc8:	00002097          	auipc	ra,0x2
    80002fcc:	1ec080e7          	jalr	492(ra) # 800051b4 <_Z11printStringPKc>
    getString(input, 30);
    80002fd0:	01e00593          	li	a1,30
    80002fd4:	00048513          	mv	a0,s1
    80002fd8:	00002097          	auipc	ra,0x2
    80002fdc:	264080e7          	jalr	612(ra) # 8000523c <_Z9getStringPci>
    n = stringToInt(input);
    80002fe0:	00048513          	mv	a0,s1
    80002fe4:	00002097          	auipc	ra,0x2
    80002fe8:	330080e7          	jalr	816(ra) # 80005314 <_Z11stringToIntPKc>
    80002fec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002ff0:	00006517          	auipc	a0,0x6
    80002ff4:	18050513          	addi	a0,a0,384 # 80009170 <CONSOLE_STATUS+0x160>
    80002ff8:	00002097          	auipc	ra,0x2
    80002ffc:	1bc080e7          	jalr	444(ra) # 800051b4 <_Z11printStringPKc>
    80003000:	00000613          	li	a2,0
    80003004:	00a00593          	li	a1,10
    80003008:	00090513          	mv	a0,s2
    8000300c:	00002097          	auipc	ra,0x2
    80003010:	358080e7          	jalr	856(ra) # 80005364 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003014:	00006517          	auipc	a0,0x6
    80003018:	17450513          	addi	a0,a0,372 # 80009188 <CONSOLE_STATUS+0x178>
    8000301c:	00002097          	auipc	ra,0x2
    80003020:	198080e7          	jalr	408(ra) # 800051b4 <_Z11printStringPKc>
    80003024:	00000613          	li	a2,0
    80003028:	00a00593          	li	a1,10
    8000302c:	00048513          	mv	a0,s1
    80003030:	00002097          	auipc	ra,0x2
    80003034:	334080e7          	jalr	820(ra) # 80005364 <_Z8printIntiii>
    printString(".\n");
    80003038:	00006517          	auipc	a0,0x6
    8000303c:	16850513          	addi	a0,a0,360 # 800091a0 <CONSOLE_STATUS+0x190>
    80003040:	00002097          	auipc	ra,0x2
    80003044:	174080e7          	jalr	372(ra) # 800051b4 <_Z11printStringPKc>
    if(threadNum > n) {
    80003048:	0324c463          	blt	s1,s2,80003070 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000304c:	03205c63          	blez	s2,80003084 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003050:	03800513          	li	a0,56
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	ccc080e7          	jalr	-820(ra) # 80001d20 <_Znwm>
    8000305c:	00050a13          	mv	s4,a0
    80003060:	00048593          	mv	a1,s1
    80003064:	00003097          	auipc	ra,0x3
    80003068:	080080e7          	jalr	128(ra) # 800060e4 <_ZN6BufferC1Ei>
    8000306c:	0300006f          	j	8000309c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003070:	00006517          	auipc	a0,0x6
    80003074:	13850513          	addi	a0,a0,312 # 800091a8 <CONSOLE_STATUS+0x198>
    80003078:	00002097          	auipc	ra,0x2
    8000307c:	13c080e7          	jalr	316(ra) # 800051b4 <_Z11printStringPKc>
        return;
    80003080:	0140006f          	j	80003094 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003084:	00006517          	auipc	a0,0x6
    80003088:	16450513          	addi	a0,a0,356 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000308c:	00002097          	auipc	ra,0x2
    80003090:	128080e7          	jalr	296(ra) # 800051b4 <_Z11printStringPKc>
        return;
    80003094:	000b0113          	mv	sp,s6
    80003098:	1500006f          	j	800031e8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    8000309c:	00000593          	li	a1,0
    800030a0:	00008517          	auipc	a0,0x8
    800030a4:	7c850513          	addi	a0,a0,1992 # 8000b868 <_ZL10waitForAll>
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	360080e7          	jalr	864(ra) # 80001408 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800030b0:	00391793          	slli	a5,s2,0x3
    800030b4:	00f78793          	addi	a5,a5,15
    800030b8:	ff07f793          	andi	a5,a5,-16
    800030bc:	40f10133          	sub	sp,sp,a5
    800030c0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800030c4:	0019071b          	addiw	a4,s2,1
    800030c8:	00171793          	slli	a5,a4,0x1
    800030cc:	00e787b3          	add	a5,a5,a4
    800030d0:	00379793          	slli	a5,a5,0x3
    800030d4:	00f78793          	addi	a5,a5,15
    800030d8:	ff07f793          	andi	a5,a5,-16
    800030dc:	40f10133          	sub	sp,sp,a5
    800030e0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800030e4:	00191613          	slli	a2,s2,0x1
    800030e8:	012607b3          	add	a5,a2,s2
    800030ec:	00379793          	slli	a5,a5,0x3
    800030f0:	00f987b3          	add	a5,s3,a5
    800030f4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800030f8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800030fc:	00008717          	auipc	a4,0x8
    80003100:	76c73703          	ld	a4,1900(a4) # 8000b868 <_ZL10waitForAll>
    80003104:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003108:	00078613          	mv	a2,a5
    8000310c:	00000597          	auipc	a1,0x0
    80003110:	d7458593          	addi	a1,a1,-652 # 80002e80 <_ZL8consumerPv>
    80003114:	f9840513          	addi	a0,s0,-104
    80003118:	ffffe097          	auipc	ra,0xffffe
    8000311c:	210080e7          	jalr	528(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003120:	00000493          	li	s1,0
    80003124:	0280006f          	j	8000314c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003128:	00000597          	auipc	a1,0x0
    8000312c:	c1458593          	addi	a1,a1,-1004 # 80002d3c <_ZL16producerKeyboardPv>
                      data + i);
    80003130:	00179613          	slli	a2,a5,0x1
    80003134:	00f60633          	add	a2,a2,a5
    80003138:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000313c:	00c98633          	add	a2,s3,a2
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	1e8080e7          	jalr	488(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003148:	0014849b          	addiw	s1,s1,1
    8000314c:	0524d263          	bge	s1,s2,80003190 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003150:	00149793          	slli	a5,s1,0x1
    80003154:	009787b3          	add	a5,a5,s1
    80003158:	00379793          	slli	a5,a5,0x3
    8000315c:	00f987b3          	add	a5,s3,a5
    80003160:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003164:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003168:	00008717          	auipc	a4,0x8
    8000316c:	70073703          	ld	a4,1792(a4) # 8000b868 <_ZL10waitForAll>
    80003170:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003174:	00048793          	mv	a5,s1
    80003178:	00349513          	slli	a0,s1,0x3
    8000317c:	00aa8533          	add	a0,s5,a0
    80003180:	fa9054e3          	blez	s1,80003128 <_Z22producerConsumer_C_APIv+0x1c8>
    80003184:	00000597          	auipc	a1,0x0
    80003188:	c6858593          	addi	a1,a1,-920 # 80002dec <_ZL8producerPv>
    8000318c:	fa5ff06f          	j	80003130 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	254080e7          	jalr	596(ra) # 800013e4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003198:	00000493          	li	s1,0
    8000319c:	00994e63          	blt	s2,s1,800031b8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800031a0:	00008517          	auipc	a0,0x8
    800031a4:	6c853503          	ld	a0,1736(a0) # 8000b868 <_ZL10waitForAll>
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	2d4080e7          	jalr	724(ra) # 8000147c <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800031b0:	0014849b          	addiw	s1,s1,1
    800031b4:	fe9ff06f          	j	8000319c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800031b8:	00008517          	auipc	a0,0x8
    800031bc:	6b053503          	ld	a0,1712(a0) # 8000b868 <_ZL10waitForAll>
    800031c0:	ffffe097          	auipc	ra,0xffffe
    800031c4:	284080e7          	jalr	644(ra) # 80001444 <_Z9sem_closeP4_sem>
    delete buffer;
    800031c8:	000a0e63          	beqz	s4,800031e4 <_Z22producerConsumer_C_APIv+0x284>
    800031cc:	000a0513          	mv	a0,s4
    800031d0:	00003097          	auipc	ra,0x3
    800031d4:	154080e7          	jalr	340(ra) # 80006324 <_ZN6BufferD1Ev>
    800031d8:	000a0513          	mv	a0,s4
    800031dc:	fffff097          	auipc	ra,0xfffff
    800031e0:	b94080e7          	jalr	-1132(ra) # 80001d70 <_ZdlPv>
    800031e4:	000b0113          	mv	sp,s6

}
    800031e8:	f9040113          	addi	sp,s0,-112
    800031ec:	06813083          	ld	ra,104(sp)
    800031f0:	06013403          	ld	s0,96(sp)
    800031f4:	05813483          	ld	s1,88(sp)
    800031f8:	05013903          	ld	s2,80(sp)
    800031fc:	04813983          	ld	s3,72(sp)
    80003200:	04013a03          	ld	s4,64(sp)
    80003204:	03813a83          	ld	s5,56(sp)
    80003208:	03013b03          	ld	s6,48(sp)
    8000320c:	07010113          	addi	sp,sp,112
    80003210:	00008067          	ret
    80003214:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003218:	000a0513          	mv	a0,s4
    8000321c:	fffff097          	auipc	ra,0xfffff
    80003220:	b54080e7          	jalr	-1196(ra) # 80001d70 <_ZdlPv>
    80003224:	00048513          	mv	a0,s1
    80003228:	00009097          	auipc	ra,0x9
    8000322c:	750080e7          	jalr	1872(ra) # 8000c978 <_Unwind_Resume>

0000000080003230 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003230:	fe010113          	addi	sp,sp,-32
    80003234:	00113c23          	sd	ra,24(sp)
    80003238:	00813823          	sd	s0,16(sp)
    8000323c:	00913423          	sd	s1,8(sp)
    80003240:	01213023          	sd	s2,0(sp)
    80003244:	02010413          	addi	s0,sp,32
    80003248:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000324c:	00100793          	li	a5,1
    80003250:	02a7f863          	bgeu	a5,a0,80003280 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003254:	00a00793          	li	a5,10
    80003258:	02f577b3          	remu	a5,a0,a5
    8000325c:	02078e63          	beqz	a5,80003298 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003260:	fff48513          	addi	a0,s1,-1
    80003264:	00000097          	auipc	ra,0x0
    80003268:	fcc080e7          	jalr	-52(ra) # 80003230 <_ZL9fibonaccim>
    8000326c:	00050913          	mv	s2,a0
    80003270:	ffe48513          	addi	a0,s1,-2
    80003274:	00000097          	auipc	ra,0x0
    80003278:	fbc080e7          	jalr	-68(ra) # 80003230 <_ZL9fibonaccim>
    8000327c:	00a90533          	add	a0,s2,a0
}
    80003280:	01813083          	ld	ra,24(sp)
    80003284:	01013403          	ld	s0,16(sp)
    80003288:	00813483          	ld	s1,8(sp)
    8000328c:	00013903          	ld	s2,0(sp)
    80003290:	02010113          	addi	sp,sp,32
    80003294:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003298:	ffffe097          	auipc	ra,0xffffe
    8000329c:	14c080e7          	jalr	332(ra) # 800013e4 <_Z15thread_dispatchv>
    800032a0:	fc1ff06f          	j	80003260 <_ZL9fibonaccim+0x30>

00000000800032a4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800032a4:	fe010113          	addi	sp,sp,-32
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	00813823          	sd	s0,16(sp)
    800032b0:	00913423          	sd	s1,8(sp)
    800032b4:	01213023          	sd	s2,0(sp)
    800032b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800032bc:	00000913          	li	s2,0
    800032c0:	0380006f          	j	800032f8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800032c4:	ffffe097          	auipc	ra,0xffffe
    800032c8:	120080e7          	jalr	288(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800032cc:	00148493          	addi	s1,s1,1
    800032d0:	000027b7          	lui	a5,0x2
    800032d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800032d8:	0097ee63          	bltu	a5,s1,800032f4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800032dc:	00000713          	li	a4,0
    800032e0:	000077b7          	lui	a5,0x7
    800032e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800032e8:	fce7eee3          	bltu	a5,a4,800032c4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800032ec:	00170713          	addi	a4,a4,1
    800032f0:	ff1ff06f          	j	800032e0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800032f4:	00190913          	addi	s2,s2,1
    800032f8:	00900793          	li	a5,9
    800032fc:	0527e063          	bltu	a5,s2,8000333c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003300:	00006517          	auipc	a0,0x6
    80003304:	f1850513          	addi	a0,a0,-232 # 80009218 <CONSOLE_STATUS+0x208>
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	eac080e7          	jalr	-340(ra) # 800051b4 <_Z11printStringPKc>
    80003310:	00000613          	li	a2,0
    80003314:	00a00593          	li	a1,10
    80003318:	0009051b          	sext.w	a0,s2
    8000331c:	00002097          	auipc	ra,0x2
    80003320:	048080e7          	jalr	72(ra) # 80005364 <_Z8printIntiii>
    80003324:	00006517          	auipc	a0,0x6
    80003328:	14450513          	addi	a0,a0,324 # 80009468 <CONSOLE_STATUS+0x458>
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	e88080e7          	jalr	-376(ra) # 800051b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003334:	00000493          	li	s1,0
    80003338:	f99ff06f          	j	800032d0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000333c:	00006517          	auipc	a0,0x6
    80003340:	ee450513          	addi	a0,a0,-284 # 80009220 <CONSOLE_STATUS+0x210>
    80003344:	00002097          	auipc	ra,0x2
    80003348:	e70080e7          	jalr	-400(ra) # 800051b4 <_Z11printStringPKc>
    finishedA = true;
    8000334c:	00100793          	li	a5,1
    80003350:	00008717          	auipc	a4,0x8
    80003354:	52f70023          	sb	a5,1312(a4) # 8000b870 <_ZL9finishedA>
}
    80003358:	01813083          	ld	ra,24(sp)
    8000335c:	01013403          	ld	s0,16(sp)
    80003360:	00813483          	ld	s1,8(sp)
    80003364:	00013903          	ld	s2,0(sp)
    80003368:	02010113          	addi	sp,sp,32
    8000336c:	00008067          	ret

0000000080003370 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003370:	fe010113          	addi	sp,sp,-32
    80003374:	00113c23          	sd	ra,24(sp)
    80003378:	00813823          	sd	s0,16(sp)
    8000337c:	00913423          	sd	s1,8(sp)
    80003380:	01213023          	sd	s2,0(sp)
    80003384:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003388:	00000913          	li	s2,0
    8000338c:	0380006f          	j	800033c4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003390:	ffffe097          	auipc	ra,0xffffe
    80003394:	054080e7          	jalr	84(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003398:	00148493          	addi	s1,s1,1
    8000339c:	000027b7          	lui	a5,0x2
    800033a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800033a4:	0097ee63          	bltu	a5,s1,800033c0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800033a8:	00000713          	li	a4,0
    800033ac:	000077b7          	lui	a5,0x7
    800033b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800033b4:	fce7eee3          	bltu	a5,a4,80003390 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800033b8:	00170713          	addi	a4,a4,1
    800033bc:	ff1ff06f          	j	800033ac <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800033c0:	00190913          	addi	s2,s2,1
    800033c4:	00f00793          	li	a5,15
    800033c8:	0527e063          	bltu	a5,s2,80003408 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800033cc:	00006517          	auipc	a0,0x6
    800033d0:	e6450513          	addi	a0,a0,-412 # 80009230 <CONSOLE_STATUS+0x220>
    800033d4:	00002097          	auipc	ra,0x2
    800033d8:	de0080e7          	jalr	-544(ra) # 800051b4 <_Z11printStringPKc>
    800033dc:	00000613          	li	a2,0
    800033e0:	00a00593          	li	a1,10
    800033e4:	0009051b          	sext.w	a0,s2
    800033e8:	00002097          	auipc	ra,0x2
    800033ec:	f7c080e7          	jalr	-132(ra) # 80005364 <_Z8printIntiii>
    800033f0:	00006517          	auipc	a0,0x6
    800033f4:	07850513          	addi	a0,a0,120 # 80009468 <CONSOLE_STATUS+0x458>
    800033f8:	00002097          	auipc	ra,0x2
    800033fc:	dbc080e7          	jalr	-580(ra) # 800051b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003400:	00000493          	li	s1,0
    80003404:	f99ff06f          	j	8000339c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003408:	00006517          	auipc	a0,0x6
    8000340c:	e3050513          	addi	a0,a0,-464 # 80009238 <CONSOLE_STATUS+0x228>
    80003410:	00002097          	auipc	ra,0x2
    80003414:	da4080e7          	jalr	-604(ra) # 800051b4 <_Z11printStringPKc>
    finishedB = true;
    80003418:	00100793          	li	a5,1
    8000341c:	00008717          	auipc	a4,0x8
    80003420:	44f70aa3          	sb	a5,1109(a4) # 8000b871 <_ZL9finishedB>
    thread_dispatch();
    80003424:	ffffe097          	auipc	ra,0xffffe
    80003428:	fc0080e7          	jalr	-64(ra) # 800013e4 <_Z15thread_dispatchv>
}
    8000342c:	01813083          	ld	ra,24(sp)
    80003430:	01013403          	ld	s0,16(sp)
    80003434:	00813483          	ld	s1,8(sp)
    80003438:	00013903          	ld	s2,0(sp)
    8000343c:	02010113          	addi	sp,sp,32
    80003440:	00008067          	ret

0000000080003444 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003444:	fe010113          	addi	sp,sp,-32
    80003448:	00113c23          	sd	ra,24(sp)
    8000344c:	00813823          	sd	s0,16(sp)
    80003450:	00913423          	sd	s1,8(sp)
    80003454:	01213023          	sd	s2,0(sp)
    80003458:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000345c:	00000493          	li	s1,0
    80003460:	0400006f          	j	800034a0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003464:	00006517          	auipc	a0,0x6
    80003468:	de450513          	addi	a0,a0,-540 # 80009248 <CONSOLE_STATUS+0x238>
    8000346c:	00002097          	auipc	ra,0x2
    80003470:	d48080e7          	jalr	-696(ra) # 800051b4 <_Z11printStringPKc>
    80003474:	00000613          	li	a2,0
    80003478:	00a00593          	li	a1,10
    8000347c:	00048513          	mv	a0,s1
    80003480:	00002097          	auipc	ra,0x2
    80003484:	ee4080e7          	jalr	-284(ra) # 80005364 <_Z8printIntiii>
    80003488:	00006517          	auipc	a0,0x6
    8000348c:	fe050513          	addi	a0,a0,-32 # 80009468 <CONSOLE_STATUS+0x458>
    80003490:	00002097          	auipc	ra,0x2
    80003494:	d24080e7          	jalr	-732(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003498:	0014849b          	addiw	s1,s1,1
    8000349c:	0ff4f493          	andi	s1,s1,255
    800034a0:	00200793          	li	a5,2
    800034a4:	fc97f0e3          	bgeu	a5,s1,80003464 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800034a8:	00006517          	auipc	a0,0x6
    800034ac:	da850513          	addi	a0,a0,-600 # 80009250 <CONSOLE_STATUS+0x240>
    800034b0:	00002097          	auipc	ra,0x2
    800034b4:	d04080e7          	jalr	-764(ra) # 800051b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800034b8:	00700313          	li	t1,7
    thread_dispatch();
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	f28080e7          	jalr	-216(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800034c4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800034c8:	00006517          	auipc	a0,0x6
    800034cc:	d9850513          	addi	a0,a0,-616 # 80009260 <CONSOLE_STATUS+0x250>
    800034d0:	00002097          	auipc	ra,0x2
    800034d4:	ce4080e7          	jalr	-796(ra) # 800051b4 <_Z11printStringPKc>
    800034d8:	00000613          	li	a2,0
    800034dc:	00a00593          	li	a1,10
    800034e0:	0009051b          	sext.w	a0,s2
    800034e4:	00002097          	auipc	ra,0x2
    800034e8:	e80080e7          	jalr	-384(ra) # 80005364 <_Z8printIntiii>
    800034ec:	00006517          	auipc	a0,0x6
    800034f0:	f7c50513          	addi	a0,a0,-132 # 80009468 <CONSOLE_STATUS+0x458>
    800034f4:	00002097          	auipc	ra,0x2
    800034f8:	cc0080e7          	jalr	-832(ra) # 800051b4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800034fc:	00c00513          	li	a0,12
    80003500:	00000097          	auipc	ra,0x0
    80003504:	d30080e7          	jalr	-720(ra) # 80003230 <_ZL9fibonaccim>
    80003508:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000350c:	00006517          	auipc	a0,0x6
    80003510:	d5c50513          	addi	a0,a0,-676 # 80009268 <CONSOLE_STATUS+0x258>
    80003514:	00002097          	auipc	ra,0x2
    80003518:	ca0080e7          	jalr	-864(ra) # 800051b4 <_Z11printStringPKc>
    8000351c:	00000613          	li	a2,0
    80003520:	00a00593          	li	a1,10
    80003524:	0009051b          	sext.w	a0,s2
    80003528:	00002097          	auipc	ra,0x2
    8000352c:	e3c080e7          	jalr	-452(ra) # 80005364 <_Z8printIntiii>
    80003530:	00006517          	auipc	a0,0x6
    80003534:	f3850513          	addi	a0,a0,-200 # 80009468 <CONSOLE_STATUS+0x458>
    80003538:	00002097          	auipc	ra,0x2
    8000353c:	c7c080e7          	jalr	-900(ra) # 800051b4 <_Z11printStringPKc>
    80003540:	0400006f          	j	80003580 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003544:	00006517          	auipc	a0,0x6
    80003548:	d0450513          	addi	a0,a0,-764 # 80009248 <CONSOLE_STATUS+0x238>
    8000354c:	00002097          	auipc	ra,0x2
    80003550:	c68080e7          	jalr	-920(ra) # 800051b4 <_Z11printStringPKc>
    80003554:	00000613          	li	a2,0
    80003558:	00a00593          	li	a1,10
    8000355c:	00048513          	mv	a0,s1
    80003560:	00002097          	auipc	ra,0x2
    80003564:	e04080e7          	jalr	-508(ra) # 80005364 <_Z8printIntiii>
    80003568:	00006517          	auipc	a0,0x6
    8000356c:	f0050513          	addi	a0,a0,-256 # 80009468 <CONSOLE_STATUS+0x458>
    80003570:	00002097          	auipc	ra,0x2
    80003574:	c44080e7          	jalr	-956(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003578:	0014849b          	addiw	s1,s1,1
    8000357c:	0ff4f493          	andi	s1,s1,255
    80003580:	00500793          	li	a5,5
    80003584:	fc97f0e3          	bgeu	a5,s1,80003544 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003588:	00006517          	auipc	a0,0x6
    8000358c:	c9850513          	addi	a0,a0,-872 # 80009220 <CONSOLE_STATUS+0x210>
    80003590:	00002097          	auipc	ra,0x2
    80003594:	c24080e7          	jalr	-988(ra) # 800051b4 <_Z11printStringPKc>
    finishedC = true;
    80003598:	00100793          	li	a5,1
    8000359c:	00008717          	auipc	a4,0x8
    800035a0:	2cf70b23          	sb	a5,726(a4) # 8000b872 <_ZL9finishedC>
    thread_dispatch();
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	e40080e7          	jalr	-448(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800035ac:	01813083          	ld	ra,24(sp)
    800035b0:	01013403          	ld	s0,16(sp)
    800035b4:	00813483          	ld	s1,8(sp)
    800035b8:	00013903          	ld	s2,0(sp)
    800035bc:	02010113          	addi	sp,sp,32
    800035c0:	00008067          	ret

00000000800035c4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800035c4:	fe010113          	addi	sp,sp,-32
    800035c8:	00113c23          	sd	ra,24(sp)
    800035cc:	00813823          	sd	s0,16(sp)
    800035d0:	00913423          	sd	s1,8(sp)
    800035d4:	01213023          	sd	s2,0(sp)
    800035d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800035dc:	00a00493          	li	s1,10
    800035e0:	0400006f          	j	80003620 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800035e4:	00006517          	auipc	a0,0x6
    800035e8:	c9450513          	addi	a0,a0,-876 # 80009278 <CONSOLE_STATUS+0x268>
    800035ec:	00002097          	auipc	ra,0x2
    800035f0:	bc8080e7          	jalr	-1080(ra) # 800051b4 <_Z11printStringPKc>
    800035f4:	00000613          	li	a2,0
    800035f8:	00a00593          	li	a1,10
    800035fc:	00048513          	mv	a0,s1
    80003600:	00002097          	auipc	ra,0x2
    80003604:	d64080e7          	jalr	-668(ra) # 80005364 <_Z8printIntiii>
    80003608:	00006517          	auipc	a0,0x6
    8000360c:	e6050513          	addi	a0,a0,-416 # 80009468 <CONSOLE_STATUS+0x458>
    80003610:	00002097          	auipc	ra,0x2
    80003614:	ba4080e7          	jalr	-1116(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003618:	0014849b          	addiw	s1,s1,1
    8000361c:	0ff4f493          	andi	s1,s1,255
    80003620:	00c00793          	li	a5,12
    80003624:	fc97f0e3          	bgeu	a5,s1,800035e4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003628:	00006517          	auipc	a0,0x6
    8000362c:	c5850513          	addi	a0,a0,-936 # 80009280 <CONSOLE_STATUS+0x270>
    80003630:	00002097          	auipc	ra,0x2
    80003634:	b84080e7          	jalr	-1148(ra) # 800051b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003638:	00500313          	li	t1,5
    thread_dispatch();
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	da8080e7          	jalr	-600(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003644:	01000513          	li	a0,16
    80003648:	00000097          	auipc	ra,0x0
    8000364c:	be8080e7          	jalr	-1048(ra) # 80003230 <_ZL9fibonaccim>
    80003650:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003654:	00006517          	auipc	a0,0x6
    80003658:	c3c50513          	addi	a0,a0,-964 # 80009290 <CONSOLE_STATUS+0x280>
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	b58080e7          	jalr	-1192(ra) # 800051b4 <_Z11printStringPKc>
    80003664:	00000613          	li	a2,0
    80003668:	00a00593          	li	a1,10
    8000366c:	0009051b          	sext.w	a0,s2
    80003670:	00002097          	auipc	ra,0x2
    80003674:	cf4080e7          	jalr	-780(ra) # 80005364 <_Z8printIntiii>
    80003678:	00006517          	auipc	a0,0x6
    8000367c:	df050513          	addi	a0,a0,-528 # 80009468 <CONSOLE_STATUS+0x458>
    80003680:	00002097          	auipc	ra,0x2
    80003684:	b34080e7          	jalr	-1228(ra) # 800051b4 <_Z11printStringPKc>
    80003688:	0400006f          	j	800036c8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000368c:	00006517          	auipc	a0,0x6
    80003690:	bec50513          	addi	a0,a0,-1044 # 80009278 <CONSOLE_STATUS+0x268>
    80003694:	00002097          	auipc	ra,0x2
    80003698:	b20080e7          	jalr	-1248(ra) # 800051b4 <_Z11printStringPKc>
    8000369c:	00000613          	li	a2,0
    800036a0:	00a00593          	li	a1,10
    800036a4:	00048513          	mv	a0,s1
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	cbc080e7          	jalr	-836(ra) # 80005364 <_Z8printIntiii>
    800036b0:	00006517          	auipc	a0,0x6
    800036b4:	db850513          	addi	a0,a0,-584 # 80009468 <CONSOLE_STATUS+0x458>
    800036b8:	00002097          	auipc	ra,0x2
    800036bc:	afc080e7          	jalr	-1284(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800036c0:	0014849b          	addiw	s1,s1,1
    800036c4:	0ff4f493          	andi	s1,s1,255
    800036c8:	00f00793          	li	a5,15
    800036cc:	fc97f0e3          	bgeu	a5,s1,8000368c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800036d0:	00006517          	auipc	a0,0x6
    800036d4:	bd050513          	addi	a0,a0,-1072 # 800092a0 <CONSOLE_STATUS+0x290>
    800036d8:	00002097          	auipc	ra,0x2
    800036dc:	adc080e7          	jalr	-1316(ra) # 800051b4 <_Z11printStringPKc>
    finishedD = true;
    800036e0:	00100793          	li	a5,1
    800036e4:	00008717          	auipc	a4,0x8
    800036e8:	18f707a3          	sb	a5,399(a4) # 8000b873 <_ZL9finishedD>
    thread_dispatch();
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	cf8080e7          	jalr	-776(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800036f4:	01813083          	ld	ra,24(sp)
    800036f8:	01013403          	ld	s0,16(sp)
    800036fc:	00813483          	ld	s1,8(sp)
    80003700:	00013903          	ld	s2,0(sp)
    80003704:	02010113          	addi	sp,sp,32
    80003708:	00008067          	ret

000000008000370c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000370c:	fc010113          	addi	sp,sp,-64
    80003710:	02113c23          	sd	ra,56(sp)
    80003714:	02813823          	sd	s0,48(sp)
    80003718:	02913423          	sd	s1,40(sp)
    8000371c:	03213023          	sd	s2,32(sp)
    80003720:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003724:	02000513          	li	a0,32
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	5f8080e7          	jalr	1528(ra) # 80001d20 <_Znwm>
    80003730:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	724080e7          	jalr	1828(ra) # 80001e58 <_ZN6ThreadC1Ev>
    8000373c:	00008797          	auipc	a5,0x8
    80003740:	e8478793          	addi	a5,a5,-380 # 8000b5c0 <_ZTV7WorkerA+0x10>
    80003744:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003748:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000374c:	00006517          	auipc	a0,0x6
    80003750:	b6450513          	addi	a0,a0,-1180 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003754:	00002097          	auipc	ra,0x2
    80003758:	a60080e7          	jalr	-1440(ra) # 800051b4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000375c:	02000513          	li	a0,32
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	5c0080e7          	jalr	1472(ra) # 80001d20 <_Znwm>
    80003768:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	6ec080e7          	jalr	1772(ra) # 80001e58 <_ZN6ThreadC1Ev>
    80003774:	00008797          	auipc	a5,0x8
    80003778:	e7478793          	addi	a5,a5,-396 # 8000b5e8 <_ZTV7WorkerB+0x10>
    8000377c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003780:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003784:	00006517          	auipc	a0,0x6
    80003788:	b4450513          	addi	a0,a0,-1212 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	a28080e7          	jalr	-1496(ra) # 800051b4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003794:	02000513          	li	a0,32
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	588080e7          	jalr	1416(ra) # 80001d20 <_Znwm>
    800037a0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	6b4080e7          	jalr	1716(ra) # 80001e58 <_ZN6ThreadC1Ev>
    800037ac:	00008797          	auipc	a5,0x8
    800037b0:	e6478793          	addi	a5,a5,-412 # 8000b610 <_ZTV7WorkerC+0x10>
    800037b4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800037b8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800037bc:	00006517          	auipc	a0,0x6
    800037c0:	b2450513          	addi	a0,a0,-1244 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800037c4:	00002097          	auipc	ra,0x2
    800037c8:	9f0080e7          	jalr	-1552(ra) # 800051b4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800037cc:	02000513          	li	a0,32
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	550080e7          	jalr	1360(ra) # 80001d20 <_Znwm>
    800037d8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	67c080e7          	jalr	1660(ra) # 80001e58 <_ZN6ThreadC1Ev>
    800037e4:	00008797          	auipc	a5,0x8
    800037e8:	e5478793          	addi	a5,a5,-428 # 8000b638 <_ZTV7WorkerD+0x10>
    800037ec:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800037f0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800037f4:	00006517          	auipc	a0,0x6
    800037f8:	b0450513          	addi	a0,a0,-1276 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800037fc:	00002097          	auipc	ra,0x2
    80003800:	9b8080e7          	jalr	-1608(ra) # 800051b4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003804:	00000493          	li	s1,0
    80003808:	00300793          	li	a5,3
    8000380c:	0297c663          	blt	a5,s1,80003838 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003810:	00349793          	slli	a5,s1,0x3
    80003814:	fe040713          	addi	a4,s0,-32
    80003818:	00f707b3          	add	a5,a4,a5
    8000381c:	fe07b503          	ld	a0,-32(a5)
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	698080e7          	jalr	1688(ra) # 80001eb8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003828:	0014849b          	addiw	s1,s1,1
    8000382c:	fddff06f          	j	80003808 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	660080e7          	jalr	1632(ra) # 80001e90 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003838:	00008797          	auipc	a5,0x8
    8000383c:	0387c783          	lbu	a5,56(a5) # 8000b870 <_ZL9finishedA>
    80003840:	fe0788e3          	beqz	a5,80003830 <_Z20Threads_CPP_API_testv+0x124>
    80003844:	00008797          	auipc	a5,0x8
    80003848:	02d7c783          	lbu	a5,45(a5) # 8000b871 <_ZL9finishedB>
    8000384c:	fe0782e3          	beqz	a5,80003830 <_Z20Threads_CPP_API_testv+0x124>
    80003850:	00008797          	auipc	a5,0x8
    80003854:	0227c783          	lbu	a5,34(a5) # 8000b872 <_ZL9finishedC>
    80003858:	fc078ce3          	beqz	a5,80003830 <_Z20Threads_CPP_API_testv+0x124>
    8000385c:	00008797          	auipc	a5,0x8
    80003860:	0177c783          	lbu	a5,23(a5) # 8000b873 <_ZL9finishedD>
    80003864:	fc0786e3          	beqz	a5,80003830 <_Z20Threads_CPP_API_testv+0x124>
    80003868:	fc040493          	addi	s1,s0,-64
    8000386c:	0080006f          	j	80003874 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003870:	00848493          	addi	s1,s1,8
    80003874:	fe040793          	addi	a5,s0,-32
    80003878:	08f48663          	beq	s1,a5,80003904 <_Z20Threads_CPP_API_testv+0x1f8>
    8000387c:	0004b503          	ld	a0,0(s1)
    80003880:	fe0508e3          	beqz	a0,80003870 <_Z20Threads_CPP_API_testv+0x164>
    80003884:	00053783          	ld	a5,0(a0)
    80003888:	0087b783          	ld	a5,8(a5)
    8000388c:	000780e7          	jalr	a5
    80003890:	fe1ff06f          	j	80003870 <_Z20Threads_CPP_API_testv+0x164>
    80003894:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003898:	00048513          	mv	a0,s1
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	4d4080e7          	jalr	1236(ra) # 80001d70 <_ZdlPv>
    800038a4:	00090513          	mv	a0,s2
    800038a8:	00009097          	auipc	ra,0x9
    800038ac:	0d0080e7          	jalr	208(ra) # 8000c978 <_Unwind_Resume>
    800038b0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    800038b4:	00048513          	mv	a0,s1
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	4b8080e7          	jalr	1208(ra) # 80001d70 <_ZdlPv>
    800038c0:	00090513          	mv	a0,s2
    800038c4:	00009097          	auipc	ra,0x9
    800038c8:	0b4080e7          	jalr	180(ra) # 8000c978 <_Unwind_Resume>
    800038cc:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800038d0:	00048513          	mv	a0,s1
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	49c080e7          	jalr	1180(ra) # 80001d70 <_ZdlPv>
    800038dc:	00090513          	mv	a0,s2
    800038e0:	00009097          	auipc	ra,0x9
    800038e4:	098080e7          	jalr	152(ra) # 8000c978 <_Unwind_Resume>
    800038e8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800038ec:	00048513          	mv	a0,s1
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	480080e7          	jalr	1152(ra) # 80001d70 <_ZdlPv>
    800038f8:	00090513          	mv	a0,s2
    800038fc:	00009097          	auipc	ra,0x9
    80003900:	07c080e7          	jalr	124(ra) # 8000c978 <_Unwind_Resume>
}
    80003904:	03813083          	ld	ra,56(sp)
    80003908:	03013403          	ld	s0,48(sp)
    8000390c:	02813483          	ld	s1,40(sp)
    80003910:	02013903          	ld	s2,32(sp)
    80003914:	04010113          	addi	sp,sp,64
    80003918:	00008067          	ret

000000008000391c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000391c:	ff010113          	addi	sp,sp,-16
    80003920:	00113423          	sd	ra,8(sp)
    80003924:	00813023          	sd	s0,0(sp)
    80003928:	01010413          	addi	s0,sp,16
    8000392c:	00008797          	auipc	a5,0x8
    80003930:	c9478793          	addi	a5,a5,-876 # 8000b5c0 <_ZTV7WorkerA+0x10>
    80003934:	00f53023          	sd	a5,0(a0)
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	398080e7          	jalr	920(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003940:	00813083          	ld	ra,8(sp)
    80003944:	00013403          	ld	s0,0(sp)
    80003948:	01010113          	addi	sp,sp,16
    8000394c:	00008067          	ret

0000000080003950 <_ZN7WorkerAD0Ev>:
    80003950:	fe010113          	addi	sp,sp,-32
    80003954:	00113c23          	sd	ra,24(sp)
    80003958:	00813823          	sd	s0,16(sp)
    8000395c:	00913423          	sd	s1,8(sp)
    80003960:	02010413          	addi	s0,sp,32
    80003964:	00050493          	mv	s1,a0
    80003968:	00008797          	auipc	a5,0x8
    8000396c:	c5878793          	addi	a5,a5,-936 # 8000b5c0 <_ZTV7WorkerA+0x10>
    80003970:	00f53023          	sd	a5,0(a0)
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	35c080e7          	jalr	860(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    8000397c:	00048513          	mv	a0,s1
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	3f0080e7          	jalr	1008(ra) # 80001d70 <_ZdlPv>
    80003988:	01813083          	ld	ra,24(sp)
    8000398c:	01013403          	ld	s0,16(sp)
    80003990:	00813483          	ld	s1,8(sp)
    80003994:	02010113          	addi	sp,sp,32
    80003998:	00008067          	ret

000000008000399c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000399c:	ff010113          	addi	sp,sp,-16
    800039a0:	00113423          	sd	ra,8(sp)
    800039a4:	00813023          	sd	s0,0(sp)
    800039a8:	01010413          	addi	s0,sp,16
    800039ac:	00008797          	auipc	a5,0x8
    800039b0:	c3c78793          	addi	a5,a5,-964 # 8000b5e8 <_ZTV7WorkerB+0x10>
    800039b4:	00f53023          	sd	a5,0(a0)
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	318080e7          	jalr	792(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800039c0:	00813083          	ld	ra,8(sp)
    800039c4:	00013403          	ld	s0,0(sp)
    800039c8:	01010113          	addi	sp,sp,16
    800039cc:	00008067          	ret

00000000800039d0 <_ZN7WorkerBD0Ev>:
    800039d0:	fe010113          	addi	sp,sp,-32
    800039d4:	00113c23          	sd	ra,24(sp)
    800039d8:	00813823          	sd	s0,16(sp)
    800039dc:	00913423          	sd	s1,8(sp)
    800039e0:	02010413          	addi	s0,sp,32
    800039e4:	00050493          	mv	s1,a0
    800039e8:	00008797          	auipc	a5,0x8
    800039ec:	c0078793          	addi	a5,a5,-1024 # 8000b5e8 <_ZTV7WorkerB+0x10>
    800039f0:	00f53023          	sd	a5,0(a0)
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	2dc080e7          	jalr	732(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800039fc:	00048513          	mv	a0,s1
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	370080e7          	jalr	880(ra) # 80001d70 <_ZdlPv>
    80003a08:	01813083          	ld	ra,24(sp)
    80003a0c:	01013403          	ld	s0,16(sp)
    80003a10:	00813483          	ld	s1,8(sp)
    80003a14:	02010113          	addi	sp,sp,32
    80003a18:	00008067          	ret

0000000080003a1c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003a1c:	ff010113          	addi	sp,sp,-16
    80003a20:	00113423          	sd	ra,8(sp)
    80003a24:	00813023          	sd	s0,0(sp)
    80003a28:	01010413          	addi	s0,sp,16
    80003a2c:	00008797          	auipc	a5,0x8
    80003a30:	be478793          	addi	a5,a5,-1052 # 8000b610 <_ZTV7WorkerC+0x10>
    80003a34:	00f53023          	sd	a5,0(a0)
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	298080e7          	jalr	664(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003a40:	00813083          	ld	ra,8(sp)
    80003a44:	00013403          	ld	s0,0(sp)
    80003a48:	01010113          	addi	sp,sp,16
    80003a4c:	00008067          	ret

0000000080003a50 <_ZN7WorkerCD0Ev>:
    80003a50:	fe010113          	addi	sp,sp,-32
    80003a54:	00113c23          	sd	ra,24(sp)
    80003a58:	00813823          	sd	s0,16(sp)
    80003a5c:	00913423          	sd	s1,8(sp)
    80003a60:	02010413          	addi	s0,sp,32
    80003a64:	00050493          	mv	s1,a0
    80003a68:	00008797          	auipc	a5,0x8
    80003a6c:	ba878793          	addi	a5,a5,-1112 # 8000b610 <_ZTV7WorkerC+0x10>
    80003a70:	00f53023          	sd	a5,0(a0)
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	25c080e7          	jalr	604(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003a7c:	00048513          	mv	a0,s1
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	2f0080e7          	jalr	752(ra) # 80001d70 <_ZdlPv>
    80003a88:	01813083          	ld	ra,24(sp)
    80003a8c:	01013403          	ld	s0,16(sp)
    80003a90:	00813483          	ld	s1,8(sp)
    80003a94:	02010113          	addi	sp,sp,32
    80003a98:	00008067          	ret

0000000080003a9c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003a9c:	ff010113          	addi	sp,sp,-16
    80003aa0:	00113423          	sd	ra,8(sp)
    80003aa4:	00813023          	sd	s0,0(sp)
    80003aa8:	01010413          	addi	s0,sp,16
    80003aac:	00008797          	auipc	a5,0x8
    80003ab0:	b8c78793          	addi	a5,a5,-1140 # 8000b638 <_ZTV7WorkerD+0x10>
    80003ab4:	00f53023          	sd	a5,0(a0)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	218080e7          	jalr	536(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003ac0:	00813083          	ld	ra,8(sp)
    80003ac4:	00013403          	ld	s0,0(sp)
    80003ac8:	01010113          	addi	sp,sp,16
    80003acc:	00008067          	ret

0000000080003ad0 <_ZN7WorkerDD0Ev>:
    80003ad0:	fe010113          	addi	sp,sp,-32
    80003ad4:	00113c23          	sd	ra,24(sp)
    80003ad8:	00813823          	sd	s0,16(sp)
    80003adc:	00913423          	sd	s1,8(sp)
    80003ae0:	02010413          	addi	s0,sp,32
    80003ae4:	00050493          	mv	s1,a0
    80003ae8:	00008797          	auipc	a5,0x8
    80003aec:	b5078793          	addi	a5,a5,-1200 # 8000b638 <_ZTV7WorkerD+0x10>
    80003af0:	00f53023          	sd	a5,0(a0)
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	1dc080e7          	jalr	476(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80003afc:	00048513          	mv	a0,s1
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	270080e7          	jalr	624(ra) # 80001d70 <_ZdlPv>
    80003b08:	01813083          	ld	ra,24(sp)
    80003b0c:	01013403          	ld	s0,16(sp)
    80003b10:	00813483          	ld	s1,8(sp)
    80003b14:	02010113          	addi	sp,sp,32
    80003b18:	00008067          	ret

0000000080003b1c <_ZN7WorkerA3runEv>:
    void run() override {
    80003b1c:	ff010113          	addi	sp,sp,-16
    80003b20:	00113423          	sd	ra,8(sp)
    80003b24:	00813023          	sd	s0,0(sp)
    80003b28:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003b2c:	00000593          	li	a1,0
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	774080e7          	jalr	1908(ra) # 800032a4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003b38:	00813083          	ld	ra,8(sp)
    80003b3c:	00013403          	ld	s0,0(sp)
    80003b40:	01010113          	addi	sp,sp,16
    80003b44:	00008067          	ret

0000000080003b48 <_ZN7WorkerB3runEv>:
    void run() override {
    80003b48:	ff010113          	addi	sp,sp,-16
    80003b4c:	00113423          	sd	ra,8(sp)
    80003b50:	00813023          	sd	s0,0(sp)
    80003b54:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003b58:	00000593          	li	a1,0
    80003b5c:	00000097          	auipc	ra,0x0
    80003b60:	814080e7          	jalr	-2028(ra) # 80003370 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003b64:	00813083          	ld	ra,8(sp)
    80003b68:	00013403          	ld	s0,0(sp)
    80003b6c:	01010113          	addi	sp,sp,16
    80003b70:	00008067          	ret

0000000080003b74 <_ZN7WorkerC3runEv>:
    void run() override {
    80003b74:	ff010113          	addi	sp,sp,-16
    80003b78:	00113423          	sd	ra,8(sp)
    80003b7c:	00813023          	sd	s0,0(sp)
    80003b80:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003b84:	00000593          	li	a1,0
    80003b88:	00000097          	auipc	ra,0x0
    80003b8c:	8bc080e7          	jalr	-1860(ra) # 80003444 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003b90:	00813083          	ld	ra,8(sp)
    80003b94:	00013403          	ld	s0,0(sp)
    80003b98:	01010113          	addi	sp,sp,16
    80003b9c:	00008067          	ret

0000000080003ba0 <_ZN7WorkerD3runEv>:
    void run() override {
    80003ba0:	ff010113          	addi	sp,sp,-16
    80003ba4:	00113423          	sd	ra,8(sp)
    80003ba8:	00813023          	sd	s0,0(sp)
    80003bac:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003bb0:	00000593          	li	a1,0
    80003bb4:	00000097          	auipc	ra,0x0
    80003bb8:	a10080e7          	jalr	-1520(ra) # 800035c4 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003bbc:	00813083          	ld	ra,8(sp)
    80003bc0:	00013403          	ld	s0,0(sp)
    80003bc4:	01010113          	addi	sp,sp,16
    80003bc8:	00008067          	ret

0000000080003bcc <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003bcc:	f8010113          	addi	sp,sp,-128
    80003bd0:	06113c23          	sd	ra,120(sp)
    80003bd4:	06813823          	sd	s0,112(sp)
    80003bd8:	06913423          	sd	s1,104(sp)
    80003bdc:	07213023          	sd	s2,96(sp)
    80003be0:	05313c23          	sd	s3,88(sp)
    80003be4:	05413823          	sd	s4,80(sp)
    80003be8:	05513423          	sd	s5,72(sp)
    80003bec:	05613023          	sd	s6,64(sp)
    80003bf0:	03713c23          	sd	s7,56(sp)
    80003bf4:	03813823          	sd	s8,48(sp)
    80003bf8:	03913423          	sd	s9,40(sp)
    80003bfc:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003c00:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c04:	00005517          	auipc	a0,0x5
    80003c08:	52c50513          	addi	a0,a0,1324 # 80009130 <CONSOLE_STATUS+0x120>
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	5a8080e7          	jalr	1448(ra) # 800051b4 <_Z11printStringPKc>
    getString(input, 30);
    80003c14:	01e00593          	li	a1,30
    80003c18:	f8040493          	addi	s1,s0,-128
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	00001097          	auipc	ra,0x1
    80003c24:	61c080e7          	jalr	1564(ra) # 8000523c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c28:	00048513          	mv	a0,s1
    80003c2c:	00001097          	auipc	ra,0x1
    80003c30:	6e8080e7          	jalr	1768(ra) # 80005314 <_Z11stringToIntPKc>
    80003c34:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003c38:	00005517          	auipc	a0,0x5
    80003c3c:	51850513          	addi	a0,a0,1304 # 80009150 <CONSOLE_STATUS+0x140>
    80003c40:	00001097          	auipc	ra,0x1
    80003c44:	574080e7          	jalr	1396(ra) # 800051b4 <_Z11printStringPKc>
    getString(input, 30);
    80003c48:	01e00593          	li	a1,30
    80003c4c:	00048513          	mv	a0,s1
    80003c50:	00001097          	auipc	ra,0x1
    80003c54:	5ec080e7          	jalr	1516(ra) # 8000523c <_Z9getStringPci>
    n = stringToInt(input);
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00001097          	auipc	ra,0x1
    80003c60:	6b8080e7          	jalr	1720(ra) # 80005314 <_Z11stringToIntPKc>
    80003c64:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003c68:	00005517          	auipc	a0,0x5
    80003c6c:	50850513          	addi	a0,a0,1288 # 80009170 <CONSOLE_STATUS+0x160>
    80003c70:	00001097          	auipc	ra,0x1
    80003c74:	544080e7          	jalr	1348(ra) # 800051b4 <_Z11printStringPKc>
    printInt(threadNum);
    80003c78:	00000613          	li	a2,0
    80003c7c:	00a00593          	li	a1,10
    80003c80:	00098513          	mv	a0,s3
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	6e0080e7          	jalr	1760(ra) # 80005364 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003c8c:	00005517          	auipc	a0,0x5
    80003c90:	4fc50513          	addi	a0,a0,1276 # 80009188 <CONSOLE_STATUS+0x178>
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	520080e7          	jalr	1312(ra) # 800051b4 <_Z11printStringPKc>
    printInt(n);
    80003c9c:	00000613          	li	a2,0
    80003ca0:	00a00593          	li	a1,10
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	6bc080e7          	jalr	1724(ra) # 80005364 <_Z8printIntiii>
    printString(".\n");
    80003cb0:	00005517          	auipc	a0,0x5
    80003cb4:	4f050513          	addi	a0,a0,1264 # 800091a0 <CONSOLE_STATUS+0x190>
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	4fc080e7          	jalr	1276(ra) # 800051b4 <_Z11printStringPKc>
    if (threadNum > n) {
    80003cc0:	0334c463          	blt	s1,s3,80003ce8 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003cc4:	03305c63          	blez	s3,80003cfc <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003cc8:	03800513          	li	a0,56
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	054080e7          	jalr	84(ra) # 80001d20 <_Znwm>
    80003cd4:	00050a93          	mv	s5,a0
    80003cd8:	00048593          	mv	a1,s1
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	7a8080e7          	jalr	1960(ra) # 80005484 <_ZN9BufferCPPC1Ei>
    80003ce4:	0300006f          	j	80003d14 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003ce8:	00005517          	auipc	a0,0x5
    80003cec:	4c050513          	addi	a0,a0,1216 # 800091a8 <CONSOLE_STATUS+0x198>
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	4c4080e7          	jalr	1220(ra) # 800051b4 <_Z11printStringPKc>
        return;
    80003cf8:	0140006f          	j	80003d0c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003cfc:	00005517          	auipc	a0,0x5
    80003d00:	4ec50513          	addi	a0,a0,1260 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003d04:	00001097          	auipc	ra,0x1
    80003d08:	4b0080e7          	jalr	1200(ra) # 800051b4 <_Z11printStringPKc>
        return;
    80003d0c:	000c0113          	mv	sp,s8
    80003d10:	2140006f          	j	80003f24 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003d14:	01000513          	li	a0,16
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	008080e7          	jalr	8(ra) # 80001d20 <_Znwm>
    80003d20:	00050913          	mv	s2,a0
    80003d24:	00000593          	li	a1,0
    80003d28:	ffffe097          	auipc	ra,0xffffe
    80003d2c:	240080e7          	jalr	576(ra) # 80001f68 <_ZN9SemaphoreC1Ej>
    80003d30:	00008797          	auipc	a5,0x8
    80003d34:	b527b823          	sd	s2,-1200(a5) # 8000b880 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003d38:	00399793          	slli	a5,s3,0x3
    80003d3c:	00f78793          	addi	a5,a5,15
    80003d40:	ff07f793          	andi	a5,a5,-16
    80003d44:	40f10133          	sub	sp,sp,a5
    80003d48:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003d4c:	0019871b          	addiw	a4,s3,1
    80003d50:	00171793          	slli	a5,a4,0x1
    80003d54:	00e787b3          	add	a5,a5,a4
    80003d58:	00379793          	slli	a5,a5,0x3
    80003d5c:	00f78793          	addi	a5,a5,15
    80003d60:	ff07f793          	andi	a5,a5,-16
    80003d64:	40f10133          	sub	sp,sp,a5
    80003d68:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003d6c:	00199493          	slli	s1,s3,0x1
    80003d70:	013484b3          	add	s1,s1,s3
    80003d74:	00349493          	slli	s1,s1,0x3
    80003d78:	009b04b3          	add	s1,s6,s1
    80003d7c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003d80:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003d84:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003d88:	02800513          	li	a0,40
    80003d8c:	ffffe097          	auipc	ra,0xffffe
    80003d90:	f94080e7          	jalr	-108(ra) # 80001d20 <_Znwm>
    80003d94:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003d98:	ffffe097          	auipc	ra,0xffffe
    80003d9c:	0c0080e7          	jalr	192(ra) # 80001e58 <_ZN6ThreadC1Ev>
    80003da0:	00008797          	auipc	a5,0x8
    80003da4:	91078793          	addi	a5,a5,-1776 # 8000b6b0 <_ZTV8Consumer+0x10>
    80003da8:	00fbb023          	sd	a5,0(s7)
    80003dac:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003db0:	000b8513          	mv	a0,s7
    80003db4:	ffffe097          	auipc	ra,0xffffe
    80003db8:	104080e7          	jalr	260(ra) # 80001eb8 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003dbc:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003dc0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003dc4:	00008797          	auipc	a5,0x8
    80003dc8:	abc7b783          	ld	a5,-1348(a5) # 8000b880 <_ZL10waitForAll>
    80003dcc:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003dd0:	02800513          	li	a0,40
    80003dd4:	ffffe097          	auipc	ra,0xffffe
    80003dd8:	f4c080e7          	jalr	-180(ra) # 80001d20 <_Znwm>
    80003ddc:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003de0:	ffffe097          	auipc	ra,0xffffe
    80003de4:	078080e7          	jalr	120(ra) # 80001e58 <_ZN6ThreadC1Ev>
    80003de8:	00008797          	auipc	a5,0x8
    80003dec:	87878793          	addi	a5,a5,-1928 # 8000b660 <_ZTV16ProducerKeyborad+0x10>
    80003df0:	00f4b023          	sd	a5,0(s1)
    80003df4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003df8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003dfc:	00048513          	mv	a0,s1
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	0b8080e7          	jalr	184(ra) # 80001eb8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e08:	00100913          	li	s2,1
    80003e0c:	0300006f          	j	80003e3c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e10:	00008797          	auipc	a5,0x8
    80003e14:	87878793          	addi	a5,a5,-1928 # 8000b688 <_ZTV8Producer+0x10>
    80003e18:	00fcb023          	sd	a5,0(s9)
    80003e1c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003e20:	00391793          	slli	a5,s2,0x3
    80003e24:	00fa07b3          	add	a5,s4,a5
    80003e28:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003e2c:	000c8513          	mv	a0,s9
    80003e30:	ffffe097          	auipc	ra,0xffffe
    80003e34:	088080e7          	jalr	136(ra) # 80001eb8 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e38:	0019091b          	addiw	s2,s2,1
    80003e3c:	05395263          	bge	s2,s3,80003e80 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003e40:	00191493          	slli	s1,s2,0x1
    80003e44:	012484b3          	add	s1,s1,s2
    80003e48:	00349493          	slli	s1,s1,0x3
    80003e4c:	009b04b3          	add	s1,s6,s1
    80003e50:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003e54:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003e58:	00008797          	auipc	a5,0x8
    80003e5c:	a287b783          	ld	a5,-1496(a5) # 8000b880 <_ZL10waitForAll>
    80003e60:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003e64:	02800513          	li	a0,40
    80003e68:	ffffe097          	auipc	ra,0xffffe
    80003e6c:	eb8080e7          	jalr	-328(ra) # 80001d20 <_Znwm>
    80003e70:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	fe4080e7          	jalr	-28(ra) # 80001e58 <_ZN6ThreadC1Ev>
    80003e7c:	f95ff06f          	j	80003e10 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	010080e7          	jalr	16(ra) # 80001e90 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003e88:	00000493          	li	s1,0
    80003e8c:	0099ce63          	blt	s3,s1,80003ea8 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003e90:	00008517          	auipc	a0,0x8
    80003e94:	9f053503          	ld	a0,-1552(a0) # 8000b880 <_ZL10waitForAll>
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	10c080e7          	jalr	268(ra) # 80001fa4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003ea0:	0014849b          	addiw	s1,s1,1
    80003ea4:	fe9ff06f          	j	80003e8c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003ea8:	00008517          	auipc	a0,0x8
    80003eac:	9d853503          	ld	a0,-1576(a0) # 8000b880 <_ZL10waitForAll>
    80003eb0:	00050863          	beqz	a0,80003ec0 <_Z20testConsumerProducerv+0x2f4>
    80003eb4:	00053783          	ld	a5,0(a0)
    80003eb8:	0087b783          	ld	a5,8(a5)
    80003ebc:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003ec0:	00000493          	li	s1,0
    80003ec4:	0080006f          	j	80003ecc <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003ec8:	0014849b          	addiw	s1,s1,1
    80003ecc:	0334d263          	bge	s1,s3,80003ef0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003ed0:	00349793          	slli	a5,s1,0x3
    80003ed4:	00fa07b3          	add	a5,s4,a5
    80003ed8:	0007b503          	ld	a0,0(a5)
    80003edc:	fe0506e3          	beqz	a0,80003ec8 <_Z20testConsumerProducerv+0x2fc>
    80003ee0:	00053783          	ld	a5,0(a0)
    80003ee4:	0087b783          	ld	a5,8(a5)
    80003ee8:	000780e7          	jalr	a5
    80003eec:	fddff06f          	j	80003ec8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003ef0:	000b8a63          	beqz	s7,80003f04 <_Z20testConsumerProducerv+0x338>
    80003ef4:	000bb783          	ld	a5,0(s7)
    80003ef8:	0087b783          	ld	a5,8(a5)
    80003efc:	000b8513          	mv	a0,s7
    80003f00:	000780e7          	jalr	a5
    delete buffer;
    80003f04:	000a8e63          	beqz	s5,80003f20 <_Z20testConsumerProducerv+0x354>
    80003f08:	000a8513          	mv	a0,s5
    80003f0c:	00002097          	auipc	ra,0x2
    80003f10:	870080e7          	jalr	-1936(ra) # 8000577c <_ZN9BufferCPPD1Ev>
    80003f14:	000a8513          	mv	a0,s5
    80003f18:	ffffe097          	auipc	ra,0xffffe
    80003f1c:	e58080e7          	jalr	-424(ra) # 80001d70 <_ZdlPv>
    80003f20:	000c0113          	mv	sp,s8
}
    80003f24:	f8040113          	addi	sp,s0,-128
    80003f28:	07813083          	ld	ra,120(sp)
    80003f2c:	07013403          	ld	s0,112(sp)
    80003f30:	06813483          	ld	s1,104(sp)
    80003f34:	06013903          	ld	s2,96(sp)
    80003f38:	05813983          	ld	s3,88(sp)
    80003f3c:	05013a03          	ld	s4,80(sp)
    80003f40:	04813a83          	ld	s5,72(sp)
    80003f44:	04013b03          	ld	s6,64(sp)
    80003f48:	03813b83          	ld	s7,56(sp)
    80003f4c:	03013c03          	ld	s8,48(sp)
    80003f50:	02813c83          	ld	s9,40(sp)
    80003f54:	08010113          	addi	sp,sp,128
    80003f58:	00008067          	ret
    80003f5c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003f60:	000a8513          	mv	a0,s5
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	e0c080e7          	jalr	-500(ra) # 80001d70 <_ZdlPv>
    80003f6c:	00048513          	mv	a0,s1
    80003f70:	00009097          	auipc	ra,0x9
    80003f74:	a08080e7          	jalr	-1528(ra) # 8000c978 <_Unwind_Resume>
    80003f78:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003f7c:	00090513          	mv	a0,s2
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	df0080e7          	jalr	-528(ra) # 80001d70 <_ZdlPv>
    80003f88:	00048513          	mv	a0,s1
    80003f8c:	00009097          	auipc	ra,0x9
    80003f90:	9ec080e7          	jalr	-1556(ra) # 8000c978 <_Unwind_Resume>
    80003f94:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003f98:	000b8513          	mv	a0,s7
    80003f9c:	ffffe097          	auipc	ra,0xffffe
    80003fa0:	dd4080e7          	jalr	-556(ra) # 80001d70 <_ZdlPv>
    80003fa4:	00048513          	mv	a0,s1
    80003fa8:	00009097          	auipc	ra,0x9
    80003fac:	9d0080e7          	jalr	-1584(ra) # 8000c978 <_Unwind_Resume>
    80003fb0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003fb4:	00048513          	mv	a0,s1
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	db8080e7          	jalr	-584(ra) # 80001d70 <_ZdlPv>
    80003fc0:	00090513          	mv	a0,s2
    80003fc4:	00009097          	auipc	ra,0x9
    80003fc8:	9b4080e7          	jalr	-1612(ra) # 8000c978 <_Unwind_Resume>
    80003fcc:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003fd0:	000c8513          	mv	a0,s9
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	d9c080e7          	jalr	-612(ra) # 80001d70 <_ZdlPv>
    80003fdc:	00048513          	mv	a0,s1
    80003fe0:	00009097          	auipc	ra,0x9
    80003fe4:	998080e7          	jalr	-1640(ra) # 8000c978 <_Unwind_Resume>

0000000080003fe8 <_ZN8Consumer3runEv>:
    void run() override {
    80003fe8:	fd010113          	addi	sp,sp,-48
    80003fec:	02113423          	sd	ra,40(sp)
    80003ff0:	02813023          	sd	s0,32(sp)
    80003ff4:	00913c23          	sd	s1,24(sp)
    80003ff8:	01213823          	sd	s2,16(sp)
    80003ffc:	01313423          	sd	s3,8(sp)
    80004000:	03010413          	addi	s0,sp,48
    80004004:	00050913          	mv	s2,a0
        int i = 0;
    80004008:	00000993          	li	s3,0
    8000400c:	0100006f          	j	8000401c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004010:	00a00513          	li	a0,10
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	07c080e7          	jalr	124(ra) # 80002090 <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000401c:	00008797          	auipc	a5,0x8
    80004020:	85c7a783          	lw	a5,-1956(a5) # 8000b878 <_ZL9threadEnd>
    80004024:	04079a63          	bnez	a5,80004078 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004028:	02093783          	ld	a5,32(s2)
    8000402c:	0087b503          	ld	a0,8(a5)
    80004030:	00001097          	auipc	ra,0x1
    80004034:	638080e7          	jalr	1592(ra) # 80005668 <_ZN9BufferCPP3getEv>
            i++;
    80004038:	0019849b          	addiw	s1,s3,1
    8000403c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004040:	0ff57513          	andi	a0,a0,255
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	04c080e7          	jalr	76(ra) # 80002090 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000404c:	05000793          	li	a5,80
    80004050:	02f4e4bb          	remw	s1,s1,a5
    80004054:	fc0494e3          	bnez	s1,8000401c <_ZN8Consumer3runEv+0x34>
    80004058:	fb9ff06f          	j	80004010 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000405c:	02093783          	ld	a5,32(s2)
    80004060:	0087b503          	ld	a0,8(a5)
    80004064:	00001097          	auipc	ra,0x1
    80004068:	604080e7          	jalr	1540(ra) # 80005668 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000406c:	0ff57513          	andi	a0,a0,255
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	020080e7          	jalr	32(ra) # 80002090 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004078:	02093783          	ld	a5,32(s2)
    8000407c:	0087b503          	ld	a0,8(a5)
    80004080:	00001097          	auipc	ra,0x1
    80004084:	674080e7          	jalr	1652(ra) # 800056f4 <_ZN9BufferCPP6getCntEv>
    80004088:	fca04ae3          	bgtz	a0,8000405c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    8000408c:	02093783          	ld	a5,32(s2)
    80004090:	0107b503          	ld	a0,16(a5)
    80004094:	ffffe097          	auipc	ra,0xffffe
    80004098:	f3c080e7          	jalr	-196(ra) # 80001fd0 <_ZN9Semaphore6signalEv>
    }
    8000409c:	02813083          	ld	ra,40(sp)
    800040a0:	02013403          	ld	s0,32(sp)
    800040a4:	01813483          	ld	s1,24(sp)
    800040a8:	01013903          	ld	s2,16(sp)
    800040ac:	00813983          	ld	s3,8(sp)
    800040b0:	03010113          	addi	sp,sp,48
    800040b4:	00008067          	ret

00000000800040b8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800040b8:	ff010113          	addi	sp,sp,-16
    800040bc:	00113423          	sd	ra,8(sp)
    800040c0:	00813023          	sd	s0,0(sp)
    800040c4:	01010413          	addi	s0,sp,16
    800040c8:	00007797          	auipc	a5,0x7
    800040cc:	5e878793          	addi	a5,a5,1512 # 8000b6b0 <_ZTV8Consumer+0x10>
    800040d0:	00f53023          	sd	a5,0(a0)
    800040d4:	ffffe097          	auipc	ra,0xffffe
    800040d8:	bfc080e7          	jalr	-1028(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800040dc:	00813083          	ld	ra,8(sp)
    800040e0:	00013403          	ld	s0,0(sp)
    800040e4:	01010113          	addi	sp,sp,16
    800040e8:	00008067          	ret

00000000800040ec <_ZN8ConsumerD0Ev>:
    800040ec:	fe010113          	addi	sp,sp,-32
    800040f0:	00113c23          	sd	ra,24(sp)
    800040f4:	00813823          	sd	s0,16(sp)
    800040f8:	00913423          	sd	s1,8(sp)
    800040fc:	02010413          	addi	s0,sp,32
    80004100:	00050493          	mv	s1,a0
    80004104:	00007797          	auipc	a5,0x7
    80004108:	5ac78793          	addi	a5,a5,1452 # 8000b6b0 <_ZTV8Consumer+0x10>
    8000410c:	00f53023          	sd	a5,0(a0)
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	bc0080e7          	jalr	-1088(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80004118:	00048513          	mv	a0,s1
    8000411c:	ffffe097          	auipc	ra,0xffffe
    80004120:	c54080e7          	jalr	-940(ra) # 80001d70 <_ZdlPv>
    80004124:	01813083          	ld	ra,24(sp)
    80004128:	01013403          	ld	s0,16(sp)
    8000412c:	00813483          	ld	s1,8(sp)
    80004130:	02010113          	addi	sp,sp,32
    80004134:	00008067          	ret

0000000080004138 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004138:	ff010113          	addi	sp,sp,-16
    8000413c:	00113423          	sd	ra,8(sp)
    80004140:	00813023          	sd	s0,0(sp)
    80004144:	01010413          	addi	s0,sp,16
    80004148:	00007797          	auipc	a5,0x7
    8000414c:	51878793          	addi	a5,a5,1304 # 8000b660 <_ZTV16ProducerKeyborad+0x10>
    80004150:	00f53023          	sd	a5,0(a0)
    80004154:	ffffe097          	auipc	ra,0xffffe
    80004158:	b7c080e7          	jalr	-1156(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    8000415c:	00813083          	ld	ra,8(sp)
    80004160:	00013403          	ld	s0,0(sp)
    80004164:	01010113          	addi	sp,sp,16
    80004168:	00008067          	ret

000000008000416c <_ZN16ProducerKeyboradD0Ev>:
    8000416c:	fe010113          	addi	sp,sp,-32
    80004170:	00113c23          	sd	ra,24(sp)
    80004174:	00813823          	sd	s0,16(sp)
    80004178:	00913423          	sd	s1,8(sp)
    8000417c:	02010413          	addi	s0,sp,32
    80004180:	00050493          	mv	s1,a0
    80004184:	00007797          	auipc	a5,0x7
    80004188:	4dc78793          	addi	a5,a5,1244 # 8000b660 <_ZTV16ProducerKeyborad+0x10>
    8000418c:	00f53023          	sd	a5,0(a0)
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	b40080e7          	jalr	-1216(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80004198:	00048513          	mv	a0,s1
    8000419c:	ffffe097          	auipc	ra,0xffffe
    800041a0:	bd4080e7          	jalr	-1068(ra) # 80001d70 <_ZdlPv>
    800041a4:	01813083          	ld	ra,24(sp)
    800041a8:	01013403          	ld	s0,16(sp)
    800041ac:	00813483          	ld	s1,8(sp)
    800041b0:	02010113          	addi	sp,sp,32
    800041b4:	00008067          	ret

00000000800041b8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800041b8:	ff010113          	addi	sp,sp,-16
    800041bc:	00113423          	sd	ra,8(sp)
    800041c0:	00813023          	sd	s0,0(sp)
    800041c4:	01010413          	addi	s0,sp,16
    800041c8:	00007797          	auipc	a5,0x7
    800041cc:	4c078793          	addi	a5,a5,1216 # 8000b688 <_ZTV8Producer+0x10>
    800041d0:	00f53023          	sd	a5,0(a0)
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	afc080e7          	jalr	-1284(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800041dc:	00813083          	ld	ra,8(sp)
    800041e0:	00013403          	ld	s0,0(sp)
    800041e4:	01010113          	addi	sp,sp,16
    800041e8:	00008067          	ret

00000000800041ec <_ZN8ProducerD0Ev>:
    800041ec:	fe010113          	addi	sp,sp,-32
    800041f0:	00113c23          	sd	ra,24(sp)
    800041f4:	00813823          	sd	s0,16(sp)
    800041f8:	00913423          	sd	s1,8(sp)
    800041fc:	02010413          	addi	s0,sp,32
    80004200:	00050493          	mv	s1,a0
    80004204:	00007797          	auipc	a5,0x7
    80004208:	48478793          	addi	a5,a5,1156 # 8000b688 <_ZTV8Producer+0x10>
    8000420c:	00f53023          	sd	a5,0(a0)
    80004210:	ffffe097          	auipc	ra,0xffffe
    80004214:	ac0080e7          	jalr	-1344(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80004218:	00048513          	mv	a0,s1
    8000421c:	ffffe097          	auipc	ra,0xffffe
    80004220:	b54080e7          	jalr	-1196(ra) # 80001d70 <_ZdlPv>
    80004224:	01813083          	ld	ra,24(sp)
    80004228:	01013403          	ld	s0,16(sp)
    8000422c:	00813483          	ld	s1,8(sp)
    80004230:	02010113          	addi	sp,sp,32
    80004234:	00008067          	ret

0000000080004238 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004238:	fe010113          	addi	sp,sp,-32
    8000423c:	00113c23          	sd	ra,24(sp)
    80004240:	00813823          	sd	s0,16(sp)
    80004244:	00913423          	sd	s1,8(sp)
    80004248:	02010413          	addi	s0,sp,32
    8000424c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004250:	ffffd097          	auipc	ra,0xffffd
    80004254:	2d4080e7          	jalr	724(ra) # 80001524 <_Z4getcv>
    80004258:	0005059b          	sext.w	a1,a0
    8000425c:	01b00793          	li	a5,27
    80004260:	00f58c63          	beq	a1,a5,80004278 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004264:	0204b783          	ld	a5,32(s1)
    80004268:	0087b503          	ld	a0,8(a5)
    8000426c:	00001097          	auipc	ra,0x1
    80004270:	36c080e7          	jalr	876(ra) # 800055d8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004274:	fddff06f          	j	80004250 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004278:	00100793          	li	a5,1
    8000427c:	00007717          	auipc	a4,0x7
    80004280:	5ef72e23          	sw	a5,1532(a4) # 8000b878 <_ZL9threadEnd>
        td->buffer->put('!');
    80004284:	0204b783          	ld	a5,32(s1)
    80004288:	02100593          	li	a1,33
    8000428c:	0087b503          	ld	a0,8(a5)
    80004290:	00001097          	auipc	ra,0x1
    80004294:	348080e7          	jalr	840(ra) # 800055d8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004298:	0204b783          	ld	a5,32(s1)
    8000429c:	0107b503          	ld	a0,16(a5)
    800042a0:	ffffe097          	auipc	ra,0xffffe
    800042a4:	d30080e7          	jalr	-720(ra) # 80001fd0 <_ZN9Semaphore6signalEv>
    }
    800042a8:	01813083          	ld	ra,24(sp)
    800042ac:	01013403          	ld	s0,16(sp)
    800042b0:	00813483          	ld	s1,8(sp)
    800042b4:	02010113          	addi	sp,sp,32
    800042b8:	00008067          	ret

00000000800042bc <_ZN8Producer3runEv>:
    void run() override {
    800042bc:	fe010113          	addi	sp,sp,-32
    800042c0:	00113c23          	sd	ra,24(sp)
    800042c4:	00813823          	sd	s0,16(sp)
    800042c8:	00913423          	sd	s1,8(sp)
    800042cc:	01213023          	sd	s2,0(sp)
    800042d0:	02010413          	addi	s0,sp,32
    800042d4:	00050493          	mv	s1,a0
        int i = 0;
    800042d8:	00000913          	li	s2,0
        while (!threadEnd) {
    800042dc:	00007797          	auipc	a5,0x7
    800042e0:	59c7a783          	lw	a5,1436(a5) # 8000b878 <_ZL9threadEnd>
    800042e4:	04079263          	bnez	a5,80004328 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800042e8:	0204b783          	ld	a5,32(s1)
    800042ec:	0007a583          	lw	a1,0(a5)
    800042f0:	0305859b          	addiw	a1,a1,48
    800042f4:	0087b503          	ld	a0,8(a5)
    800042f8:	00001097          	auipc	ra,0x1
    800042fc:	2e0080e7          	jalr	736(ra) # 800055d8 <_ZN9BufferCPP3putEi>
            i++;
    80004300:	0019071b          	addiw	a4,s2,1
    80004304:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004308:	0204b783          	ld	a5,32(s1)
    8000430c:	0007a783          	lw	a5,0(a5)
    80004310:	00e787bb          	addw	a5,a5,a4
    80004314:	00500513          	li	a0,5
    80004318:	02a7e53b          	remw	a0,a5,a0
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	bd0080e7          	jalr	-1072(ra) # 80001eec <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004324:	fb9ff06f          	j	800042dc <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004328:	0204b783          	ld	a5,32(s1)
    8000432c:	0107b503          	ld	a0,16(a5)
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	ca0080e7          	jalr	-864(ra) # 80001fd0 <_ZN9Semaphore6signalEv>
    }
    80004338:	01813083          	ld	ra,24(sp)
    8000433c:	01013403          	ld	s0,16(sp)
    80004340:	00813483          	ld	s1,8(sp)
    80004344:	00013903          	ld	s2,0(sp)
    80004348:	02010113          	addi	sp,sp,32
    8000434c:	00008067          	ret

0000000080004350 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004350:	fe010113          	addi	sp,sp,-32
    80004354:	00113c23          	sd	ra,24(sp)
    80004358:	00813823          	sd	s0,16(sp)
    8000435c:	00913423          	sd	s1,8(sp)
    80004360:	01213023          	sd	s2,0(sp)
    80004364:	02010413          	addi	s0,sp,32
    80004368:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000436c:	00100793          	li	a5,1
    80004370:	02a7f863          	bgeu	a5,a0,800043a0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004374:	00a00793          	li	a5,10
    80004378:	02f577b3          	remu	a5,a0,a5
    8000437c:	02078e63          	beqz	a5,800043b8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004380:	fff48513          	addi	a0,s1,-1
    80004384:	00000097          	auipc	ra,0x0
    80004388:	fcc080e7          	jalr	-52(ra) # 80004350 <_ZL9fibonaccim>
    8000438c:	00050913          	mv	s2,a0
    80004390:	ffe48513          	addi	a0,s1,-2
    80004394:	00000097          	auipc	ra,0x0
    80004398:	fbc080e7          	jalr	-68(ra) # 80004350 <_ZL9fibonaccim>
    8000439c:	00a90533          	add	a0,s2,a0
}
    800043a0:	01813083          	ld	ra,24(sp)
    800043a4:	01013403          	ld	s0,16(sp)
    800043a8:	00813483          	ld	s1,8(sp)
    800043ac:	00013903          	ld	s2,0(sp)
    800043b0:	02010113          	addi	sp,sp,32
    800043b4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800043b8:	ffffd097          	auipc	ra,0xffffd
    800043bc:	02c080e7          	jalr	44(ra) # 800013e4 <_Z15thread_dispatchv>
    800043c0:	fc1ff06f          	j	80004380 <_ZL9fibonaccim+0x30>

00000000800043c4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800043c4:	fe010113          	addi	sp,sp,-32
    800043c8:	00113c23          	sd	ra,24(sp)
    800043cc:	00813823          	sd	s0,16(sp)
    800043d0:	00913423          	sd	s1,8(sp)
    800043d4:	01213023          	sd	s2,0(sp)
    800043d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800043dc:	00a00493          	li	s1,10
    800043e0:	0400006f          	j	80004420 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800043e4:	00005517          	auipc	a0,0x5
    800043e8:	e9450513          	addi	a0,a0,-364 # 80009278 <CONSOLE_STATUS+0x268>
    800043ec:	00001097          	auipc	ra,0x1
    800043f0:	dc8080e7          	jalr	-568(ra) # 800051b4 <_Z11printStringPKc>
    800043f4:	00000613          	li	a2,0
    800043f8:	00a00593          	li	a1,10
    800043fc:	00048513          	mv	a0,s1
    80004400:	00001097          	auipc	ra,0x1
    80004404:	f64080e7          	jalr	-156(ra) # 80005364 <_Z8printIntiii>
    80004408:	00005517          	auipc	a0,0x5
    8000440c:	06050513          	addi	a0,a0,96 # 80009468 <CONSOLE_STATUS+0x458>
    80004410:	00001097          	auipc	ra,0x1
    80004414:	da4080e7          	jalr	-604(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004418:	0014849b          	addiw	s1,s1,1
    8000441c:	0ff4f493          	andi	s1,s1,255
    80004420:	00c00793          	li	a5,12
    80004424:	fc97f0e3          	bgeu	a5,s1,800043e4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004428:	00005517          	auipc	a0,0x5
    8000442c:	e5850513          	addi	a0,a0,-424 # 80009280 <CONSOLE_STATUS+0x270>
    80004430:	00001097          	auipc	ra,0x1
    80004434:	d84080e7          	jalr	-636(ra) # 800051b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004438:	00500313          	li	t1,5
    thread_dispatch();
    8000443c:	ffffd097          	auipc	ra,0xffffd
    80004440:	fa8080e7          	jalr	-88(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004444:	01000513          	li	a0,16
    80004448:	00000097          	auipc	ra,0x0
    8000444c:	f08080e7          	jalr	-248(ra) # 80004350 <_ZL9fibonaccim>
    80004450:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004454:	00005517          	auipc	a0,0x5
    80004458:	e3c50513          	addi	a0,a0,-452 # 80009290 <CONSOLE_STATUS+0x280>
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	d58080e7          	jalr	-680(ra) # 800051b4 <_Z11printStringPKc>
    80004464:	00000613          	li	a2,0
    80004468:	00a00593          	li	a1,10
    8000446c:	0009051b          	sext.w	a0,s2
    80004470:	00001097          	auipc	ra,0x1
    80004474:	ef4080e7          	jalr	-268(ra) # 80005364 <_Z8printIntiii>
    80004478:	00005517          	auipc	a0,0x5
    8000447c:	ff050513          	addi	a0,a0,-16 # 80009468 <CONSOLE_STATUS+0x458>
    80004480:	00001097          	auipc	ra,0x1
    80004484:	d34080e7          	jalr	-716(ra) # 800051b4 <_Z11printStringPKc>
    80004488:	0400006f          	j	800044c8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000448c:	00005517          	auipc	a0,0x5
    80004490:	dec50513          	addi	a0,a0,-532 # 80009278 <CONSOLE_STATUS+0x268>
    80004494:	00001097          	auipc	ra,0x1
    80004498:	d20080e7          	jalr	-736(ra) # 800051b4 <_Z11printStringPKc>
    8000449c:	00000613          	li	a2,0
    800044a0:	00a00593          	li	a1,10
    800044a4:	00048513          	mv	a0,s1
    800044a8:	00001097          	auipc	ra,0x1
    800044ac:	ebc080e7          	jalr	-324(ra) # 80005364 <_Z8printIntiii>
    800044b0:	00005517          	auipc	a0,0x5
    800044b4:	fb850513          	addi	a0,a0,-72 # 80009468 <CONSOLE_STATUS+0x458>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	cfc080e7          	jalr	-772(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800044c0:	0014849b          	addiw	s1,s1,1
    800044c4:	0ff4f493          	andi	s1,s1,255
    800044c8:	00f00793          	li	a5,15
    800044cc:	fc97f0e3          	bgeu	a5,s1,8000448c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800044d0:	00005517          	auipc	a0,0x5
    800044d4:	dd050513          	addi	a0,a0,-560 # 800092a0 <CONSOLE_STATUS+0x290>
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	cdc080e7          	jalr	-804(ra) # 800051b4 <_Z11printStringPKc>
    finishedD = true;
    800044e0:	00100793          	li	a5,1
    800044e4:	00007717          	auipc	a4,0x7
    800044e8:	3af70223          	sb	a5,932(a4) # 8000b888 <_ZL9finishedD>
    thread_dispatch();
    800044ec:	ffffd097          	auipc	ra,0xffffd
    800044f0:	ef8080e7          	jalr	-264(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800044f4:	01813083          	ld	ra,24(sp)
    800044f8:	01013403          	ld	s0,16(sp)
    800044fc:	00813483          	ld	s1,8(sp)
    80004500:	00013903          	ld	s2,0(sp)
    80004504:	02010113          	addi	sp,sp,32
    80004508:	00008067          	ret

000000008000450c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000450c:	fe010113          	addi	sp,sp,-32
    80004510:	00113c23          	sd	ra,24(sp)
    80004514:	00813823          	sd	s0,16(sp)
    80004518:	00913423          	sd	s1,8(sp)
    8000451c:	01213023          	sd	s2,0(sp)
    80004520:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004524:	00000493          	li	s1,0
    80004528:	0400006f          	j	80004568 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000452c:	00005517          	auipc	a0,0x5
    80004530:	d1c50513          	addi	a0,a0,-740 # 80009248 <CONSOLE_STATUS+0x238>
    80004534:	00001097          	auipc	ra,0x1
    80004538:	c80080e7          	jalr	-896(ra) # 800051b4 <_Z11printStringPKc>
    8000453c:	00000613          	li	a2,0
    80004540:	00a00593          	li	a1,10
    80004544:	00048513          	mv	a0,s1
    80004548:	00001097          	auipc	ra,0x1
    8000454c:	e1c080e7          	jalr	-484(ra) # 80005364 <_Z8printIntiii>
    80004550:	00005517          	auipc	a0,0x5
    80004554:	f1850513          	addi	a0,a0,-232 # 80009468 <CONSOLE_STATUS+0x458>
    80004558:	00001097          	auipc	ra,0x1
    8000455c:	c5c080e7          	jalr	-932(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004560:	0014849b          	addiw	s1,s1,1
    80004564:	0ff4f493          	andi	s1,s1,255
    80004568:	00200793          	li	a5,2
    8000456c:	fc97f0e3          	bgeu	a5,s1,8000452c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004570:	00005517          	auipc	a0,0x5
    80004574:	ce050513          	addi	a0,a0,-800 # 80009250 <CONSOLE_STATUS+0x240>
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	c3c080e7          	jalr	-964(ra) # 800051b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004580:	00700313          	li	t1,7
    thread_dispatch();
    80004584:	ffffd097          	auipc	ra,0xffffd
    80004588:	e60080e7          	jalr	-416(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000458c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004590:	00005517          	auipc	a0,0x5
    80004594:	cd050513          	addi	a0,a0,-816 # 80009260 <CONSOLE_STATUS+0x250>
    80004598:	00001097          	auipc	ra,0x1
    8000459c:	c1c080e7          	jalr	-996(ra) # 800051b4 <_Z11printStringPKc>
    800045a0:	00000613          	li	a2,0
    800045a4:	00a00593          	li	a1,10
    800045a8:	0009051b          	sext.w	a0,s2
    800045ac:	00001097          	auipc	ra,0x1
    800045b0:	db8080e7          	jalr	-584(ra) # 80005364 <_Z8printIntiii>
    800045b4:	00005517          	auipc	a0,0x5
    800045b8:	eb450513          	addi	a0,a0,-332 # 80009468 <CONSOLE_STATUS+0x458>
    800045bc:	00001097          	auipc	ra,0x1
    800045c0:	bf8080e7          	jalr	-1032(ra) # 800051b4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800045c4:	00c00513          	li	a0,12
    800045c8:	00000097          	auipc	ra,0x0
    800045cc:	d88080e7          	jalr	-632(ra) # 80004350 <_ZL9fibonaccim>
    800045d0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800045d4:	00005517          	auipc	a0,0x5
    800045d8:	c9450513          	addi	a0,a0,-876 # 80009268 <CONSOLE_STATUS+0x258>
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	bd8080e7          	jalr	-1064(ra) # 800051b4 <_Z11printStringPKc>
    800045e4:	00000613          	li	a2,0
    800045e8:	00a00593          	li	a1,10
    800045ec:	0009051b          	sext.w	a0,s2
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	d74080e7          	jalr	-652(ra) # 80005364 <_Z8printIntiii>
    800045f8:	00005517          	auipc	a0,0x5
    800045fc:	e7050513          	addi	a0,a0,-400 # 80009468 <CONSOLE_STATUS+0x458>
    80004600:	00001097          	auipc	ra,0x1
    80004604:	bb4080e7          	jalr	-1100(ra) # 800051b4 <_Z11printStringPKc>
    80004608:	0400006f          	j	80004648 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000460c:	00005517          	auipc	a0,0x5
    80004610:	c3c50513          	addi	a0,a0,-964 # 80009248 <CONSOLE_STATUS+0x238>
    80004614:	00001097          	auipc	ra,0x1
    80004618:	ba0080e7          	jalr	-1120(ra) # 800051b4 <_Z11printStringPKc>
    8000461c:	00000613          	li	a2,0
    80004620:	00a00593          	li	a1,10
    80004624:	00048513          	mv	a0,s1
    80004628:	00001097          	auipc	ra,0x1
    8000462c:	d3c080e7          	jalr	-708(ra) # 80005364 <_Z8printIntiii>
    80004630:	00005517          	auipc	a0,0x5
    80004634:	e3850513          	addi	a0,a0,-456 # 80009468 <CONSOLE_STATUS+0x458>
    80004638:	00001097          	auipc	ra,0x1
    8000463c:	b7c080e7          	jalr	-1156(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004640:	0014849b          	addiw	s1,s1,1
    80004644:	0ff4f493          	andi	s1,s1,255
    80004648:	00500793          	li	a5,5
    8000464c:	fc97f0e3          	bgeu	a5,s1,8000460c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004650:	00005517          	auipc	a0,0x5
    80004654:	bd050513          	addi	a0,a0,-1072 # 80009220 <CONSOLE_STATUS+0x210>
    80004658:	00001097          	auipc	ra,0x1
    8000465c:	b5c080e7          	jalr	-1188(ra) # 800051b4 <_Z11printStringPKc>
    finishedC = true;
    80004660:	00100793          	li	a5,1
    80004664:	00007717          	auipc	a4,0x7
    80004668:	22f702a3          	sb	a5,549(a4) # 8000b889 <_ZL9finishedC>
    thread_dispatch();
    8000466c:	ffffd097          	auipc	ra,0xffffd
    80004670:	d78080e7          	jalr	-648(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80004674:	01813083          	ld	ra,24(sp)
    80004678:	01013403          	ld	s0,16(sp)
    8000467c:	00813483          	ld	s1,8(sp)
    80004680:	00013903          	ld	s2,0(sp)
    80004684:	02010113          	addi	sp,sp,32
    80004688:	00008067          	ret

000000008000468c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000468c:	fe010113          	addi	sp,sp,-32
    80004690:	00113c23          	sd	ra,24(sp)
    80004694:	00813823          	sd	s0,16(sp)
    80004698:	00913423          	sd	s1,8(sp)
    8000469c:	01213023          	sd	s2,0(sp)
    800046a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800046a4:	00000913          	li	s2,0
    800046a8:	0380006f          	j	800046e0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	d38080e7          	jalr	-712(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800046b4:	00148493          	addi	s1,s1,1
    800046b8:	000027b7          	lui	a5,0x2
    800046bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800046c0:	0097ee63          	bltu	a5,s1,800046dc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800046c4:	00000713          	li	a4,0
    800046c8:	000077b7          	lui	a5,0x7
    800046cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800046d0:	fce7eee3          	bltu	a5,a4,800046ac <_ZL11workerBodyBPv+0x20>
    800046d4:	00170713          	addi	a4,a4,1
    800046d8:	ff1ff06f          	j	800046c8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800046dc:	00190913          	addi	s2,s2,1
    800046e0:	00f00793          	li	a5,15
    800046e4:	0527e063          	bltu	a5,s2,80004724 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800046e8:	00005517          	auipc	a0,0x5
    800046ec:	b4850513          	addi	a0,a0,-1208 # 80009230 <CONSOLE_STATUS+0x220>
    800046f0:	00001097          	auipc	ra,0x1
    800046f4:	ac4080e7          	jalr	-1340(ra) # 800051b4 <_Z11printStringPKc>
    800046f8:	00000613          	li	a2,0
    800046fc:	00a00593          	li	a1,10
    80004700:	0009051b          	sext.w	a0,s2
    80004704:	00001097          	auipc	ra,0x1
    80004708:	c60080e7          	jalr	-928(ra) # 80005364 <_Z8printIntiii>
    8000470c:	00005517          	auipc	a0,0x5
    80004710:	d5c50513          	addi	a0,a0,-676 # 80009468 <CONSOLE_STATUS+0x458>
    80004714:	00001097          	auipc	ra,0x1
    80004718:	aa0080e7          	jalr	-1376(ra) # 800051b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000471c:	00000493          	li	s1,0
    80004720:	f99ff06f          	j	800046b8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004724:	00005517          	auipc	a0,0x5
    80004728:	b1450513          	addi	a0,a0,-1260 # 80009238 <CONSOLE_STATUS+0x228>
    8000472c:	00001097          	auipc	ra,0x1
    80004730:	a88080e7          	jalr	-1400(ra) # 800051b4 <_Z11printStringPKc>
    finishedB = true;
    80004734:	00100793          	li	a5,1
    80004738:	00007717          	auipc	a4,0x7
    8000473c:	14f70923          	sb	a5,338(a4) # 8000b88a <_ZL9finishedB>
    thread_dispatch();
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	ca4080e7          	jalr	-860(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80004748:	01813083          	ld	ra,24(sp)
    8000474c:	01013403          	ld	s0,16(sp)
    80004750:	00813483          	ld	s1,8(sp)
    80004754:	00013903          	ld	s2,0(sp)
    80004758:	02010113          	addi	sp,sp,32
    8000475c:	00008067          	ret

0000000080004760 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004760:	fe010113          	addi	sp,sp,-32
    80004764:	00113c23          	sd	ra,24(sp)
    80004768:	00813823          	sd	s0,16(sp)
    8000476c:	00913423          	sd	s1,8(sp)
    80004770:	01213023          	sd	s2,0(sp)
    80004774:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004778:	00000913          	li	s2,0
    8000477c:	0380006f          	j	800047b4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	c64080e7          	jalr	-924(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004788:	00148493          	addi	s1,s1,1
    8000478c:	000027b7          	lui	a5,0x2
    80004790:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004794:	0097ee63          	bltu	a5,s1,800047b0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004798:	00000713          	li	a4,0
    8000479c:	000077b7          	lui	a5,0x7
    800047a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800047a4:	fce7eee3          	bltu	a5,a4,80004780 <_ZL11workerBodyAPv+0x20>
    800047a8:	00170713          	addi	a4,a4,1
    800047ac:	ff1ff06f          	j	8000479c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800047b0:	00190913          	addi	s2,s2,1
    800047b4:	00900793          	li	a5,9
    800047b8:	0527e063          	bltu	a5,s2,800047f8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800047bc:	00005517          	auipc	a0,0x5
    800047c0:	a5c50513          	addi	a0,a0,-1444 # 80009218 <CONSOLE_STATUS+0x208>
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	9f0080e7          	jalr	-1552(ra) # 800051b4 <_Z11printStringPKc>
    800047cc:	00000613          	li	a2,0
    800047d0:	00a00593          	li	a1,10
    800047d4:	0009051b          	sext.w	a0,s2
    800047d8:	00001097          	auipc	ra,0x1
    800047dc:	b8c080e7          	jalr	-1140(ra) # 80005364 <_Z8printIntiii>
    800047e0:	00005517          	auipc	a0,0x5
    800047e4:	c8850513          	addi	a0,a0,-888 # 80009468 <CONSOLE_STATUS+0x458>
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	9cc080e7          	jalr	-1588(ra) # 800051b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047f0:	00000493          	li	s1,0
    800047f4:	f99ff06f          	j	8000478c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800047f8:	00005517          	auipc	a0,0x5
    800047fc:	a2850513          	addi	a0,a0,-1496 # 80009220 <CONSOLE_STATUS+0x210>
    80004800:	00001097          	auipc	ra,0x1
    80004804:	9b4080e7          	jalr	-1612(ra) # 800051b4 <_Z11printStringPKc>
    finishedA = true;
    80004808:	00100793          	li	a5,1
    8000480c:	00007717          	auipc	a4,0x7
    80004810:	06f70fa3          	sb	a5,127(a4) # 8000b88b <_ZL9finishedA>
}
    80004814:	01813083          	ld	ra,24(sp)
    80004818:	01013403          	ld	s0,16(sp)
    8000481c:	00813483          	ld	s1,8(sp)
    80004820:	00013903          	ld	s2,0(sp)
    80004824:	02010113          	addi	sp,sp,32
    80004828:	00008067          	ret

000000008000482c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000482c:	fd010113          	addi	sp,sp,-48
    80004830:	02113423          	sd	ra,40(sp)
    80004834:	02813023          	sd	s0,32(sp)
    80004838:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000483c:	00000613          	li	a2,0
    80004840:	00000597          	auipc	a1,0x0
    80004844:	f2058593          	addi	a1,a1,-224 # 80004760 <_ZL11workerBodyAPv>
    80004848:	fd040513          	addi	a0,s0,-48
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	adc080e7          	jalr	-1316(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004854:	00005517          	auipc	a0,0x5
    80004858:	a5c50513          	addi	a0,a0,-1444 # 800092b0 <CONSOLE_STATUS+0x2a0>
    8000485c:	00001097          	auipc	ra,0x1
    80004860:	958080e7          	jalr	-1704(ra) # 800051b4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004864:	00000613          	li	a2,0
    80004868:	00000597          	auipc	a1,0x0
    8000486c:	e2458593          	addi	a1,a1,-476 # 8000468c <_ZL11workerBodyBPv>
    80004870:	fd840513          	addi	a0,s0,-40
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	ab4080e7          	jalr	-1356(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000487c:	00005517          	auipc	a0,0x5
    80004880:	a4c50513          	addi	a0,a0,-1460 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004884:	00001097          	auipc	ra,0x1
    80004888:	930080e7          	jalr	-1744(ra) # 800051b4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000488c:	00000613          	li	a2,0
    80004890:	00000597          	auipc	a1,0x0
    80004894:	c7c58593          	addi	a1,a1,-900 # 8000450c <_ZL11workerBodyCPv>
    80004898:	fe040513          	addi	a0,s0,-32
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	a8c080e7          	jalr	-1396(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800048a4:	00005517          	auipc	a0,0x5
    800048a8:	a3c50513          	addi	a0,a0,-1476 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800048ac:	00001097          	auipc	ra,0x1
    800048b0:	908080e7          	jalr	-1784(ra) # 800051b4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800048b4:	00000613          	li	a2,0
    800048b8:	00000597          	auipc	a1,0x0
    800048bc:	b0c58593          	addi	a1,a1,-1268 # 800043c4 <_ZL11workerBodyDPv>
    800048c0:	fe840513          	addi	a0,s0,-24
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	a64080e7          	jalr	-1436(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800048cc:	00005517          	auipc	a0,0x5
    800048d0:	a2c50513          	addi	a0,a0,-1492 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800048d4:	00001097          	auipc	ra,0x1
    800048d8:	8e0080e7          	jalr	-1824(ra) # 800051b4 <_Z11printStringPKc>
    800048dc:	00c0006f          	j	800048e8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800048e0:	ffffd097          	auipc	ra,0xffffd
    800048e4:	b04080e7          	jalr	-1276(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800048e8:	00007797          	auipc	a5,0x7
    800048ec:	fa37c783          	lbu	a5,-93(a5) # 8000b88b <_ZL9finishedA>
    800048f0:	fe0788e3          	beqz	a5,800048e0 <_Z18Threads_C_API_testv+0xb4>
    800048f4:	00007797          	auipc	a5,0x7
    800048f8:	f967c783          	lbu	a5,-106(a5) # 8000b88a <_ZL9finishedB>
    800048fc:	fe0782e3          	beqz	a5,800048e0 <_Z18Threads_C_API_testv+0xb4>
    80004900:	00007797          	auipc	a5,0x7
    80004904:	f897c783          	lbu	a5,-119(a5) # 8000b889 <_ZL9finishedC>
    80004908:	fc078ce3          	beqz	a5,800048e0 <_Z18Threads_C_API_testv+0xb4>
    8000490c:	00007797          	auipc	a5,0x7
    80004910:	f7c7c783          	lbu	a5,-132(a5) # 8000b888 <_ZL9finishedD>
    80004914:	fc0786e3          	beqz	a5,800048e0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004918:	02813083          	ld	ra,40(sp)
    8000491c:	02013403          	ld	s0,32(sp)
    80004920:	03010113          	addi	sp,sp,48
    80004924:	00008067          	ret

0000000080004928 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004928:	fd010113          	addi	sp,sp,-48
    8000492c:	02113423          	sd	ra,40(sp)
    80004930:	02813023          	sd	s0,32(sp)
    80004934:	00913c23          	sd	s1,24(sp)
    80004938:	01213823          	sd	s2,16(sp)
    8000493c:	01313423          	sd	s3,8(sp)
    80004940:	03010413          	addi	s0,sp,48
    80004944:	00050993          	mv	s3,a0
    80004948:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000494c:	00000913          	li	s2,0
    80004950:	00c0006f          	j	8000495c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	53c080e7          	jalr	1340(ra) # 80001e90 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	bc8080e7          	jalr	-1080(ra) # 80001524 <_Z4getcv>
    80004964:	0005059b          	sext.w	a1,a0
    80004968:	01b00793          	li	a5,27
    8000496c:	02f58a63          	beq	a1,a5,800049a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004970:	0084b503          	ld	a0,8(s1)
    80004974:	00001097          	auipc	ra,0x1
    80004978:	c64080e7          	jalr	-924(ra) # 800055d8 <_ZN9BufferCPP3putEi>
        i++;
    8000497c:	0019071b          	addiw	a4,s2,1
    80004980:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004984:	0004a683          	lw	a3,0(s1)
    80004988:	0026979b          	slliw	a5,a3,0x2
    8000498c:	00d787bb          	addw	a5,a5,a3
    80004990:	0017979b          	slliw	a5,a5,0x1
    80004994:	02f767bb          	remw	a5,a4,a5
    80004998:	fc0792e3          	bnez	a5,8000495c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000499c:	fb9ff06f          	j	80004954 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800049a0:	00100793          	li	a5,1
    800049a4:	00007717          	auipc	a4,0x7
    800049a8:	eef72623          	sw	a5,-276(a4) # 8000b890 <_ZL9threadEnd>
    td->buffer->put('!');
    800049ac:	0209b783          	ld	a5,32(s3)
    800049b0:	02100593          	li	a1,33
    800049b4:	0087b503          	ld	a0,8(a5)
    800049b8:	00001097          	auipc	ra,0x1
    800049bc:	c20080e7          	jalr	-992(ra) # 800055d8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800049c0:	0104b503          	ld	a0,16(s1)
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	60c080e7          	jalr	1548(ra) # 80001fd0 <_ZN9Semaphore6signalEv>
}
    800049cc:	02813083          	ld	ra,40(sp)
    800049d0:	02013403          	ld	s0,32(sp)
    800049d4:	01813483          	ld	s1,24(sp)
    800049d8:	01013903          	ld	s2,16(sp)
    800049dc:	00813983          	ld	s3,8(sp)
    800049e0:	03010113          	addi	sp,sp,48
    800049e4:	00008067          	ret

00000000800049e8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800049e8:	fe010113          	addi	sp,sp,-32
    800049ec:	00113c23          	sd	ra,24(sp)
    800049f0:	00813823          	sd	s0,16(sp)
    800049f4:	00913423          	sd	s1,8(sp)
    800049f8:	01213023          	sd	s2,0(sp)
    800049fc:	02010413          	addi	s0,sp,32
    80004a00:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a04:	00000913          	li	s2,0
    80004a08:	00c0006f          	j	80004a14 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	484080e7          	jalr	1156(ra) # 80001e90 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004a14:	00007797          	auipc	a5,0x7
    80004a18:	e7c7a783          	lw	a5,-388(a5) # 8000b890 <_ZL9threadEnd>
    80004a1c:	02079e63          	bnez	a5,80004a58 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004a20:	0004a583          	lw	a1,0(s1)
    80004a24:	0305859b          	addiw	a1,a1,48
    80004a28:	0084b503          	ld	a0,8(s1)
    80004a2c:	00001097          	auipc	ra,0x1
    80004a30:	bac080e7          	jalr	-1108(ra) # 800055d8 <_ZN9BufferCPP3putEi>
        i++;
    80004a34:	0019071b          	addiw	a4,s2,1
    80004a38:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a3c:	0004a683          	lw	a3,0(s1)
    80004a40:	0026979b          	slliw	a5,a3,0x2
    80004a44:	00d787bb          	addw	a5,a5,a3
    80004a48:	0017979b          	slliw	a5,a5,0x1
    80004a4c:	02f767bb          	remw	a5,a4,a5
    80004a50:	fc0792e3          	bnez	a5,80004a14 <_ZN12ProducerSync8producerEPv+0x2c>
    80004a54:	fb9ff06f          	j	80004a0c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004a58:	0104b503          	ld	a0,16(s1)
    80004a5c:	ffffd097          	auipc	ra,0xffffd
    80004a60:	574080e7          	jalr	1396(ra) # 80001fd0 <_ZN9Semaphore6signalEv>
}
    80004a64:	01813083          	ld	ra,24(sp)
    80004a68:	01013403          	ld	s0,16(sp)
    80004a6c:	00813483          	ld	s1,8(sp)
    80004a70:	00013903          	ld	s2,0(sp)
    80004a74:	02010113          	addi	sp,sp,32
    80004a78:	00008067          	ret

0000000080004a7c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004a7c:	fd010113          	addi	sp,sp,-48
    80004a80:	02113423          	sd	ra,40(sp)
    80004a84:	02813023          	sd	s0,32(sp)
    80004a88:	00913c23          	sd	s1,24(sp)
    80004a8c:	01213823          	sd	s2,16(sp)
    80004a90:	01313423          	sd	s3,8(sp)
    80004a94:	01413023          	sd	s4,0(sp)
    80004a98:	03010413          	addi	s0,sp,48
    80004a9c:	00050993          	mv	s3,a0
    80004aa0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004aa4:	00000a13          	li	s4,0
    80004aa8:	01c0006f          	j	80004ac4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	3e4080e7          	jalr	996(ra) # 80001e90 <_ZN6Thread8dispatchEv>
    80004ab4:	0500006f          	j	80004b04 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004ab8:	00a00513          	li	a0,10
    80004abc:	ffffd097          	auipc	ra,0xffffd
    80004ac0:	a9c080e7          	jalr	-1380(ra) # 80001558 <_Z4putcc>
    while (!threadEnd) {
    80004ac4:	00007797          	auipc	a5,0x7
    80004ac8:	dcc7a783          	lw	a5,-564(a5) # 8000b890 <_ZL9threadEnd>
    80004acc:	06079263          	bnez	a5,80004b30 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004ad0:	00893503          	ld	a0,8(s2)
    80004ad4:	00001097          	auipc	ra,0x1
    80004ad8:	b94080e7          	jalr	-1132(ra) # 80005668 <_ZN9BufferCPP3getEv>
        i++;
    80004adc:	001a049b          	addiw	s1,s4,1
    80004ae0:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004ae4:	0ff57513          	andi	a0,a0,255
    80004ae8:	ffffd097          	auipc	ra,0xffffd
    80004aec:	a70080e7          	jalr	-1424(ra) # 80001558 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004af0:	00092703          	lw	a4,0(s2)
    80004af4:	0027179b          	slliw	a5,a4,0x2
    80004af8:	00e787bb          	addw	a5,a5,a4
    80004afc:	02f4e7bb          	remw	a5,s1,a5
    80004b00:	fa0786e3          	beqz	a5,80004aac <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004b04:	05000793          	li	a5,80
    80004b08:	02f4e4bb          	remw	s1,s1,a5
    80004b0c:	fa049ce3          	bnez	s1,80004ac4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004b10:	fa9ff06f          	j	80004ab8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004b14:	0209b783          	ld	a5,32(s3)
    80004b18:	0087b503          	ld	a0,8(a5)
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	b4c080e7          	jalr	-1204(ra) # 80005668 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004b24:	0ff57513          	andi	a0,a0,255
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	568080e7          	jalr	1384(ra) # 80002090 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004b30:	0209b783          	ld	a5,32(s3)
    80004b34:	0087b503          	ld	a0,8(a5)
    80004b38:	00001097          	auipc	ra,0x1
    80004b3c:	bbc080e7          	jalr	-1092(ra) # 800056f4 <_ZN9BufferCPP6getCntEv>
    80004b40:	fca04ae3          	bgtz	a0,80004b14 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004b44:	01093503          	ld	a0,16(s2)
    80004b48:	ffffd097          	auipc	ra,0xffffd
    80004b4c:	488080e7          	jalr	1160(ra) # 80001fd0 <_ZN9Semaphore6signalEv>
}
    80004b50:	02813083          	ld	ra,40(sp)
    80004b54:	02013403          	ld	s0,32(sp)
    80004b58:	01813483          	ld	s1,24(sp)
    80004b5c:	01013903          	ld	s2,16(sp)
    80004b60:	00813983          	ld	s3,8(sp)
    80004b64:	00013a03          	ld	s4,0(sp)
    80004b68:	03010113          	addi	sp,sp,48
    80004b6c:	00008067          	ret

0000000080004b70 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004b70:	f8010113          	addi	sp,sp,-128
    80004b74:	06113c23          	sd	ra,120(sp)
    80004b78:	06813823          	sd	s0,112(sp)
    80004b7c:	06913423          	sd	s1,104(sp)
    80004b80:	07213023          	sd	s2,96(sp)
    80004b84:	05313c23          	sd	s3,88(sp)
    80004b88:	05413823          	sd	s4,80(sp)
    80004b8c:	05513423          	sd	s5,72(sp)
    80004b90:	05613023          	sd	s6,64(sp)
    80004b94:	03713c23          	sd	s7,56(sp)
    80004b98:	03813823          	sd	s8,48(sp)
    80004b9c:	03913423          	sd	s9,40(sp)
    80004ba0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004ba4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004ba8:	00004517          	auipc	a0,0x4
    80004bac:	58850513          	addi	a0,a0,1416 # 80009130 <CONSOLE_STATUS+0x120>
    80004bb0:	00000097          	auipc	ra,0x0
    80004bb4:	604080e7          	jalr	1540(ra) # 800051b4 <_Z11printStringPKc>
    getString(input, 30);
    80004bb8:	01e00593          	li	a1,30
    80004bbc:	f8040493          	addi	s1,s0,-128
    80004bc0:	00048513          	mv	a0,s1
    80004bc4:	00000097          	auipc	ra,0x0
    80004bc8:	678080e7          	jalr	1656(ra) # 8000523c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004bcc:	00048513          	mv	a0,s1
    80004bd0:	00000097          	auipc	ra,0x0
    80004bd4:	744080e7          	jalr	1860(ra) # 80005314 <_Z11stringToIntPKc>
    80004bd8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004bdc:	00004517          	auipc	a0,0x4
    80004be0:	57450513          	addi	a0,a0,1396 # 80009150 <CONSOLE_STATUS+0x140>
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	5d0080e7          	jalr	1488(ra) # 800051b4 <_Z11printStringPKc>
    getString(input, 30);
    80004bec:	01e00593          	li	a1,30
    80004bf0:	00048513          	mv	a0,s1
    80004bf4:	00000097          	auipc	ra,0x0
    80004bf8:	648080e7          	jalr	1608(ra) # 8000523c <_Z9getStringPci>
    n = stringToInt(input);
    80004bfc:	00048513          	mv	a0,s1
    80004c00:	00000097          	auipc	ra,0x0
    80004c04:	714080e7          	jalr	1812(ra) # 80005314 <_Z11stringToIntPKc>
    80004c08:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004c0c:	00004517          	auipc	a0,0x4
    80004c10:	56450513          	addi	a0,a0,1380 # 80009170 <CONSOLE_STATUS+0x160>
    80004c14:	00000097          	auipc	ra,0x0
    80004c18:	5a0080e7          	jalr	1440(ra) # 800051b4 <_Z11printStringPKc>
    80004c1c:	00000613          	li	a2,0
    80004c20:	00a00593          	li	a1,10
    80004c24:	00090513          	mv	a0,s2
    80004c28:	00000097          	auipc	ra,0x0
    80004c2c:	73c080e7          	jalr	1852(ra) # 80005364 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004c30:	00004517          	auipc	a0,0x4
    80004c34:	55850513          	addi	a0,a0,1368 # 80009188 <CONSOLE_STATUS+0x178>
    80004c38:	00000097          	auipc	ra,0x0
    80004c3c:	57c080e7          	jalr	1404(ra) # 800051b4 <_Z11printStringPKc>
    80004c40:	00000613          	li	a2,0
    80004c44:	00a00593          	li	a1,10
    80004c48:	00048513          	mv	a0,s1
    80004c4c:	00000097          	auipc	ra,0x0
    80004c50:	718080e7          	jalr	1816(ra) # 80005364 <_Z8printIntiii>
    printString(".\n");
    80004c54:	00004517          	auipc	a0,0x4
    80004c58:	54c50513          	addi	a0,a0,1356 # 800091a0 <CONSOLE_STATUS+0x190>
    80004c5c:	00000097          	auipc	ra,0x0
    80004c60:	558080e7          	jalr	1368(ra) # 800051b4 <_Z11printStringPKc>
    if(threadNum > n) {
    80004c64:	0324c463          	blt	s1,s2,80004c8c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004c68:	03205c63          	blez	s2,80004ca0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004c6c:	03800513          	li	a0,56
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	0b0080e7          	jalr	176(ra) # 80001d20 <_Znwm>
    80004c78:	00050a93          	mv	s5,a0
    80004c7c:	00048593          	mv	a1,s1
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	804080e7          	jalr	-2044(ra) # 80005484 <_ZN9BufferCPPC1Ei>
    80004c88:	0300006f          	j	80004cb8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004c8c:	00004517          	auipc	a0,0x4
    80004c90:	51c50513          	addi	a0,a0,1308 # 800091a8 <CONSOLE_STATUS+0x198>
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	520080e7          	jalr	1312(ra) # 800051b4 <_Z11printStringPKc>
        return;
    80004c9c:	0140006f          	j	80004cb0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004ca0:	00004517          	auipc	a0,0x4
    80004ca4:	54850513          	addi	a0,a0,1352 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004ca8:	00000097          	auipc	ra,0x0
    80004cac:	50c080e7          	jalr	1292(ra) # 800051b4 <_Z11printStringPKc>
        return;
    80004cb0:	000b8113          	mv	sp,s7
    80004cb4:	2380006f          	j	80004eec <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004cb8:	01000513          	li	a0,16
    80004cbc:	ffffd097          	auipc	ra,0xffffd
    80004cc0:	064080e7          	jalr	100(ra) # 80001d20 <_Znwm>
    80004cc4:	00050493          	mv	s1,a0
    80004cc8:	00000593          	li	a1,0
    80004ccc:	ffffd097          	auipc	ra,0xffffd
    80004cd0:	29c080e7          	jalr	668(ra) # 80001f68 <_ZN9SemaphoreC1Ej>
    80004cd4:	00007797          	auipc	a5,0x7
    80004cd8:	bc97b223          	sd	s1,-1084(a5) # 8000b898 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004cdc:	00391793          	slli	a5,s2,0x3
    80004ce0:	00f78793          	addi	a5,a5,15
    80004ce4:	ff07f793          	andi	a5,a5,-16
    80004ce8:	40f10133          	sub	sp,sp,a5
    80004cec:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004cf0:	0019071b          	addiw	a4,s2,1
    80004cf4:	00171793          	slli	a5,a4,0x1
    80004cf8:	00e787b3          	add	a5,a5,a4
    80004cfc:	00379793          	slli	a5,a5,0x3
    80004d00:	00f78793          	addi	a5,a5,15
    80004d04:	ff07f793          	andi	a5,a5,-16
    80004d08:	40f10133          	sub	sp,sp,a5
    80004d0c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004d10:	00191c13          	slli	s8,s2,0x1
    80004d14:	012c07b3          	add	a5,s8,s2
    80004d18:	00379793          	slli	a5,a5,0x3
    80004d1c:	00fa07b3          	add	a5,s4,a5
    80004d20:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004d24:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004d28:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004d2c:	02800513          	li	a0,40
    80004d30:	ffffd097          	auipc	ra,0xffffd
    80004d34:	ff0080e7          	jalr	-16(ra) # 80001d20 <_Znwm>
    80004d38:	00050b13          	mv	s6,a0
    80004d3c:	012c0c33          	add	s8,s8,s2
    80004d40:	003c1c13          	slli	s8,s8,0x3
    80004d44:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	110080e7          	jalr	272(ra) # 80001e58 <_ZN6ThreadC1Ev>
    80004d50:	00007797          	auipc	a5,0x7
    80004d54:	9d878793          	addi	a5,a5,-1576 # 8000b728 <_ZTV12ConsumerSync+0x10>
    80004d58:	00fb3023          	sd	a5,0(s6)
    80004d5c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004d60:	000b0513          	mv	a0,s6
    80004d64:	ffffd097          	auipc	ra,0xffffd
    80004d68:	154080e7          	jalr	340(ra) # 80001eb8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004d6c:	00000493          	li	s1,0
    80004d70:	0380006f          	j	80004da8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004d74:	00007797          	auipc	a5,0x7
    80004d78:	98c78793          	addi	a5,a5,-1652 # 8000b700 <_ZTV12ProducerSync+0x10>
    80004d7c:	00fcb023          	sd	a5,0(s9)
    80004d80:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004d84:	00349793          	slli	a5,s1,0x3
    80004d88:	00f987b3          	add	a5,s3,a5
    80004d8c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004d90:	00349793          	slli	a5,s1,0x3
    80004d94:	00f987b3          	add	a5,s3,a5
    80004d98:	0007b503          	ld	a0,0(a5)
    80004d9c:	ffffd097          	auipc	ra,0xffffd
    80004da0:	11c080e7          	jalr	284(ra) # 80001eb8 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004da4:	0014849b          	addiw	s1,s1,1
    80004da8:	0b24d063          	bge	s1,s2,80004e48 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004dac:	00149793          	slli	a5,s1,0x1
    80004db0:	009787b3          	add	a5,a5,s1
    80004db4:	00379793          	slli	a5,a5,0x3
    80004db8:	00fa07b3          	add	a5,s4,a5
    80004dbc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004dc0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004dc4:	00007717          	auipc	a4,0x7
    80004dc8:	ad473703          	ld	a4,-1324(a4) # 8000b898 <_ZL10waitForAll>
    80004dcc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004dd0:	02905863          	blez	s1,80004e00 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004dd4:	02800513          	li	a0,40
    80004dd8:	ffffd097          	auipc	ra,0xffffd
    80004ddc:	f48080e7          	jalr	-184(ra) # 80001d20 <_Znwm>
    80004de0:	00050c93          	mv	s9,a0
    80004de4:	00149c13          	slli	s8,s1,0x1
    80004de8:	009c0c33          	add	s8,s8,s1
    80004dec:	003c1c13          	slli	s8,s8,0x3
    80004df0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004df4:	ffffd097          	auipc	ra,0xffffd
    80004df8:	064080e7          	jalr	100(ra) # 80001e58 <_ZN6ThreadC1Ev>
    80004dfc:	f79ff06f          	j	80004d74 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004e00:	02800513          	li	a0,40
    80004e04:	ffffd097          	auipc	ra,0xffffd
    80004e08:	f1c080e7          	jalr	-228(ra) # 80001d20 <_Znwm>
    80004e0c:	00050c93          	mv	s9,a0
    80004e10:	00149c13          	slli	s8,s1,0x1
    80004e14:	009c0c33          	add	s8,s8,s1
    80004e18:	003c1c13          	slli	s8,s8,0x3
    80004e1c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	038080e7          	jalr	56(ra) # 80001e58 <_ZN6ThreadC1Ev>
    80004e28:	00007797          	auipc	a5,0x7
    80004e2c:	8b078793          	addi	a5,a5,-1872 # 8000b6d8 <_ZTV16ProducerKeyboard+0x10>
    80004e30:	00fcb023          	sd	a5,0(s9)
    80004e34:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004e38:	00349793          	slli	a5,s1,0x3
    80004e3c:	00f987b3          	add	a5,s3,a5
    80004e40:	0197b023          	sd	s9,0(a5)
    80004e44:	f4dff06f          	j	80004d90 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	048080e7          	jalr	72(ra) # 80001e90 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e50:	00000493          	li	s1,0
    80004e54:	00994e63          	blt	s2,s1,80004e70 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004e58:	00007517          	auipc	a0,0x7
    80004e5c:	a4053503          	ld	a0,-1472(a0) # 8000b898 <_ZL10waitForAll>
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	144080e7          	jalr	324(ra) # 80001fa4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e68:	0014849b          	addiw	s1,s1,1
    80004e6c:	fe9ff06f          	j	80004e54 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004e70:	00000493          	li	s1,0
    80004e74:	0080006f          	j	80004e7c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004e78:	0014849b          	addiw	s1,s1,1
    80004e7c:	0324d263          	bge	s1,s2,80004ea0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004e80:	00349793          	slli	a5,s1,0x3
    80004e84:	00f987b3          	add	a5,s3,a5
    80004e88:	0007b503          	ld	a0,0(a5)
    80004e8c:	fe0506e3          	beqz	a0,80004e78 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004e90:	00053783          	ld	a5,0(a0)
    80004e94:	0087b783          	ld	a5,8(a5)
    80004e98:	000780e7          	jalr	a5
    80004e9c:	fddff06f          	j	80004e78 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004ea0:	000b0a63          	beqz	s6,80004eb4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004ea4:	000b3783          	ld	a5,0(s6)
    80004ea8:	0087b783          	ld	a5,8(a5)
    80004eac:	000b0513          	mv	a0,s6
    80004eb0:	000780e7          	jalr	a5
    delete waitForAll;
    80004eb4:	00007517          	auipc	a0,0x7
    80004eb8:	9e453503          	ld	a0,-1564(a0) # 8000b898 <_ZL10waitForAll>
    80004ebc:	00050863          	beqz	a0,80004ecc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004ec0:	00053783          	ld	a5,0(a0)
    80004ec4:	0087b783          	ld	a5,8(a5)
    80004ec8:	000780e7          	jalr	a5
    delete buffer;
    80004ecc:	000a8e63          	beqz	s5,80004ee8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004ed0:	000a8513          	mv	a0,s5
    80004ed4:	00001097          	auipc	ra,0x1
    80004ed8:	8a8080e7          	jalr	-1880(ra) # 8000577c <_ZN9BufferCPPD1Ev>
    80004edc:	000a8513          	mv	a0,s5
    80004ee0:	ffffd097          	auipc	ra,0xffffd
    80004ee4:	e90080e7          	jalr	-368(ra) # 80001d70 <_ZdlPv>
    80004ee8:	000b8113          	mv	sp,s7

}
    80004eec:	f8040113          	addi	sp,s0,-128
    80004ef0:	07813083          	ld	ra,120(sp)
    80004ef4:	07013403          	ld	s0,112(sp)
    80004ef8:	06813483          	ld	s1,104(sp)
    80004efc:	06013903          	ld	s2,96(sp)
    80004f00:	05813983          	ld	s3,88(sp)
    80004f04:	05013a03          	ld	s4,80(sp)
    80004f08:	04813a83          	ld	s5,72(sp)
    80004f0c:	04013b03          	ld	s6,64(sp)
    80004f10:	03813b83          	ld	s7,56(sp)
    80004f14:	03013c03          	ld	s8,48(sp)
    80004f18:	02813c83          	ld	s9,40(sp)
    80004f1c:	08010113          	addi	sp,sp,128
    80004f20:	00008067          	ret
    80004f24:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f28:	000a8513          	mv	a0,s5
    80004f2c:	ffffd097          	auipc	ra,0xffffd
    80004f30:	e44080e7          	jalr	-444(ra) # 80001d70 <_ZdlPv>
    80004f34:	00048513          	mv	a0,s1
    80004f38:	00008097          	auipc	ra,0x8
    80004f3c:	a40080e7          	jalr	-1472(ra) # 8000c978 <_Unwind_Resume>
    80004f40:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004f44:	00048513          	mv	a0,s1
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	e28080e7          	jalr	-472(ra) # 80001d70 <_ZdlPv>
    80004f50:	00090513          	mv	a0,s2
    80004f54:	00008097          	auipc	ra,0x8
    80004f58:	a24080e7          	jalr	-1500(ra) # 8000c978 <_Unwind_Resume>
    80004f5c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004f60:	000b0513          	mv	a0,s6
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	e0c080e7          	jalr	-500(ra) # 80001d70 <_ZdlPv>
    80004f6c:	00048513          	mv	a0,s1
    80004f70:	00008097          	auipc	ra,0x8
    80004f74:	a08080e7          	jalr	-1528(ra) # 8000c978 <_Unwind_Resume>
    80004f78:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004f7c:	000c8513          	mv	a0,s9
    80004f80:	ffffd097          	auipc	ra,0xffffd
    80004f84:	df0080e7          	jalr	-528(ra) # 80001d70 <_ZdlPv>
    80004f88:	00048513          	mv	a0,s1
    80004f8c:	00008097          	auipc	ra,0x8
    80004f90:	9ec080e7          	jalr	-1556(ra) # 8000c978 <_Unwind_Resume>
    80004f94:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004f98:	000c8513          	mv	a0,s9
    80004f9c:	ffffd097          	auipc	ra,0xffffd
    80004fa0:	dd4080e7          	jalr	-556(ra) # 80001d70 <_ZdlPv>
    80004fa4:	00048513          	mv	a0,s1
    80004fa8:	00008097          	auipc	ra,0x8
    80004fac:	9d0080e7          	jalr	-1584(ra) # 8000c978 <_Unwind_Resume>

0000000080004fb0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004fb0:	ff010113          	addi	sp,sp,-16
    80004fb4:	00113423          	sd	ra,8(sp)
    80004fb8:	00813023          	sd	s0,0(sp)
    80004fbc:	01010413          	addi	s0,sp,16
    80004fc0:	00006797          	auipc	a5,0x6
    80004fc4:	76878793          	addi	a5,a5,1896 # 8000b728 <_ZTV12ConsumerSync+0x10>
    80004fc8:	00f53023          	sd	a5,0(a0)
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	d04080e7          	jalr	-764(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80004fd4:	00813083          	ld	ra,8(sp)
    80004fd8:	00013403          	ld	s0,0(sp)
    80004fdc:	01010113          	addi	sp,sp,16
    80004fe0:	00008067          	ret

0000000080004fe4 <_ZN12ConsumerSyncD0Ev>:
    80004fe4:	fe010113          	addi	sp,sp,-32
    80004fe8:	00113c23          	sd	ra,24(sp)
    80004fec:	00813823          	sd	s0,16(sp)
    80004ff0:	00913423          	sd	s1,8(sp)
    80004ff4:	02010413          	addi	s0,sp,32
    80004ff8:	00050493          	mv	s1,a0
    80004ffc:	00006797          	auipc	a5,0x6
    80005000:	72c78793          	addi	a5,a5,1836 # 8000b728 <_ZTV12ConsumerSync+0x10>
    80005004:	00f53023          	sd	a5,0(a0)
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	cc8080e7          	jalr	-824(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80005010:	00048513          	mv	a0,s1
    80005014:	ffffd097          	auipc	ra,0xffffd
    80005018:	d5c080e7          	jalr	-676(ra) # 80001d70 <_ZdlPv>
    8000501c:	01813083          	ld	ra,24(sp)
    80005020:	01013403          	ld	s0,16(sp)
    80005024:	00813483          	ld	s1,8(sp)
    80005028:	02010113          	addi	sp,sp,32
    8000502c:	00008067          	ret

0000000080005030 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005030:	ff010113          	addi	sp,sp,-16
    80005034:	00113423          	sd	ra,8(sp)
    80005038:	00813023          	sd	s0,0(sp)
    8000503c:	01010413          	addi	s0,sp,16
    80005040:	00006797          	auipc	a5,0x6
    80005044:	6c078793          	addi	a5,a5,1728 # 8000b700 <_ZTV12ProducerSync+0x10>
    80005048:	00f53023          	sd	a5,0(a0)
    8000504c:	ffffd097          	auipc	ra,0xffffd
    80005050:	c84080e7          	jalr	-892(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80005054:	00813083          	ld	ra,8(sp)
    80005058:	00013403          	ld	s0,0(sp)
    8000505c:	01010113          	addi	sp,sp,16
    80005060:	00008067          	ret

0000000080005064 <_ZN12ProducerSyncD0Ev>:
    80005064:	fe010113          	addi	sp,sp,-32
    80005068:	00113c23          	sd	ra,24(sp)
    8000506c:	00813823          	sd	s0,16(sp)
    80005070:	00913423          	sd	s1,8(sp)
    80005074:	02010413          	addi	s0,sp,32
    80005078:	00050493          	mv	s1,a0
    8000507c:	00006797          	auipc	a5,0x6
    80005080:	68478793          	addi	a5,a5,1668 # 8000b700 <_ZTV12ProducerSync+0x10>
    80005084:	00f53023          	sd	a5,0(a0)
    80005088:	ffffd097          	auipc	ra,0xffffd
    8000508c:	c48080e7          	jalr	-952(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80005090:	00048513          	mv	a0,s1
    80005094:	ffffd097          	auipc	ra,0xffffd
    80005098:	cdc080e7          	jalr	-804(ra) # 80001d70 <_ZdlPv>
    8000509c:	01813083          	ld	ra,24(sp)
    800050a0:	01013403          	ld	s0,16(sp)
    800050a4:	00813483          	ld	s1,8(sp)
    800050a8:	02010113          	addi	sp,sp,32
    800050ac:	00008067          	ret

00000000800050b0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800050b0:	ff010113          	addi	sp,sp,-16
    800050b4:	00113423          	sd	ra,8(sp)
    800050b8:	00813023          	sd	s0,0(sp)
    800050bc:	01010413          	addi	s0,sp,16
    800050c0:	00006797          	auipc	a5,0x6
    800050c4:	61878793          	addi	a5,a5,1560 # 8000b6d8 <_ZTV16ProducerKeyboard+0x10>
    800050c8:	00f53023          	sd	a5,0(a0)
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	c04080e7          	jalr	-1020(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    800050d4:	00813083          	ld	ra,8(sp)
    800050d8:	00013403          	ld	s0,0(sp)
    800050dc:	01010113          	addi	sp,sp,16
    800050e0:	00008067          	ret

00000000800050e4 <_ZN16ProducerKeyboardD0Ev>:
    800050e4:	fe010113          	addi	sp,sp,-32
    800050e8:	00113c23          	sd	ra,24(sp)
    800050ec:	00813823          	sd	s0,16(sp)
    800050f0:	00913423          	sd	s1,8(sp)
    800050f4:	02010413          	addi	s0,sp,32
    800050f8:	00050493          	mv	s1,a0
    800050fc:	00006797          	auipc	a5,0x6
    80005100:	5dc78793          	addi	a5,a5,1500 # 8000b6d8 <_ZTV16ProducerKeyboard+0x10>
    80005104:	00f53023          	sd	a5,0(a0)
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	bc8080e7          	jalr	-1080(ra) # 80001cd0 <_ZN6ThreadD1Ev>
    80005110:	00048513          	mv	a0,s1
    80005114:	ffffd097          	auipc	ra,0xffffd
    80005118:	c5c080e7          	jalr	-932(ra) # 80001d70 <_ZdlPv>
    8000511c:	01813083          	ld	ra,24(sp)
    80005120:	01013403          	ld	s0,16(sp)
    80005124:	00813483          	ld	s1,8(sp)
    80005128:	02010113          	addi	sp,sp,32
    8000512c:	00008067          	ret

0000000080005130 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005130:	ff010113          	addi	sp,sp,-16
    80005134:	00113423          	sd	ra,8(sp)
    80005138:	00813023          	sd	s0,0(sp)
    8000513c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005140:	02053583          	ld	a1,32(a0)
    80005144:	fffff097          	auipc	ra,0xfffff
    80005148:	7e4080e7          	jalr	2020(ra) # 80004928 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000514c:	00813083          	ld	ra,8(sp)
    80005150:	00013403          	ld	s0,0(sp)
    80005154:	01010113          	addi	sp,sp,16
    80005158:	00008067          	ret

000000008000515c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000515c:	ff010113          	addi	sp,sp,-16
    80005160:	00113423          	sd	ra,8(sp)
    80005164:	00813023          	sd	s0,0(sp)
    80005168:	01010413          	addi	s0,sp,16
        producer(td);
    8000516c:	02053583          	ld	a1,32(a0)
    80005170:	00000097          	auipc	ra,0x0
    80005174:	878080e7          	jalr	-1928(ra) # 800049e8 <_ZN12ProducerSync8producerEPv>
    }
    80005178:	00813083          	ld	ra,8(sp)
    8000517c:	00013403          	ld	s0,0(sp)
    80005180:	01010113          	addi	sp,sp,16
    80005184:	00008067          	ret

0000000080005188 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005188:	ff010113          	addi	sp,sp,-16
    8000518c:	00113423          	sd	ra,8(sp)
    80005190:	00813023          	sd	s0,0(sp)
    80005194:	01010413          	addi	s0,sp,16
        consumer(td);
    80005198:	02053583          	ld	a1,32(a0)
    8000519c:	00000097          	auipc	ra,0x0
    800051a0:	8e0080e7          	jalr	-1824(ra) # 80004a7c <_ZN12ConsumerSync8consumerEPv>
    }
    800051a4:	00813083          	ld	ra,8(sp)
    800051a8:	00013403          	ld	s0,0(sp)
    800051ac:	01010113          	addi	sp,sp,16
    800051b0:	00008067          	ret

00000000800051b4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800051b4:	fe010113          	addi	sp,sp,-32
    800051b8:	00113c23          	sd	ra,24(sp)
    800051bc:	00813823          	sd	s0,16(sp)
    800051c0:	00913423          	sd	s1,8(sp)
    800051c4:	02010413          	addi	s0,sp,32
    800051c8:	00050493          	mv	s1,a0
    LOCK();
    800051cc:	00100613          	li	a2,1
    800051d0:	00000593          	li	a1,0
    800051d4:	00006517          	auipc	a0,0x6
    800051d8:	6cc50513          	addi	a0,a0,1740 # 8000b8a0 <lockPrint>
    800051dc:	ffffc097          	auipc	ra,0xffffc
    800051e0:	058080e7          	jalr	88(ra) # 80001234 <copy_and_swap>
    800051e4:	00050863          	beqz	a0,800051f4 <_Z11printStringPKc+0x40>
    800051e8:	ffffc097          	auipc	ra,0xffffc
    800051ec:	1fc080e7          	jalr	508(ra) # 800013e4 <_Z15thread_dispatchv>
    800051f0:	fddff06f          	j	800051cc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800051f4:	0004c503          	lbu	a0,0(s1)
    800051f8:	00050a63          	beqz	a0,8000520c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800051fc:	ffffc097          	auipc	ra,0xffffc
    80005200:	35c080e7          	jalr	860(ra) # 80001558 <_Z4putcc>
        string++;
    80005204:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005208:	fedff06f          	j	800051f4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000520c:	00000613          	li	a2,0
    80005210:	00100593          	li	a1,1
    80005214:	00006517          	auipc	a0,0x6
    80005218:	68c50513          	addi	a0,a0,1676 # 8000b8a0 <lockPrint>
    8000521c:	ffffc097          	auipc	ra,0xffffc
    80005220:	018080e7          	jalr	24(ra) # 80001234 <copy_and_swap>
    80005224:	fe0514e3          	bnez	a0,8000520c <_Z11printStringPKc+0x58>
}
    80005228:	01813083          	ld	ra,24(sp)
    8000522c:	01013403          	ld	s0,16(sp)
    80005230:	00813483          	ld	s1,8(sp)
    80005234:	02010113          	addi	sp,sp,32
    80005238:	00008067          	ret

000000008000523c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000523c:	fd010113          	addi	sp,sp,-48
    80005240:	02113423          	sd	ra,40(sp)
    80005244:	02813023          	sd	s0,32(sp)
    80005248:	00913c23          	sd	s1,24(sp)
    8000524c:	01213823          	sd	s2,16(sp)
    80005250:	01313423          	sd	s3,8(sp)
    80005254:	01413023          	sd	s4,0(sp)
    80005258:	03010413          	addi	s0,sp,48
    8000525c:	00050993          	mv	s3,a0
    80005260:	00058a13          	mv	s4,a1
    LOCK();
    80005264:	00100613          	li	a2,1
    80005268:	00000593          	li	a1,0
    8000526c:	00006517          	auipc	a0,0x6
    80005270:	63450513          	addi	a0,a0,1588 # 8000b8a0 <lockPrint>
    80005274:	ffffc097          	auipc	ra,0xffffc
    80005278:	fc0080e7          	jalr	-64(ra) # 80001234 <copy_and_swap>
    8000527c:	00050863          	beqz	a0,8000528c <_Z9getStringPci+0x50>
    80005280:	ffffc097          	auipc	ra,0xffffc
    80005284:	164080e7          	jalr	356(ra) # 800013e4 <_Z15thread_dispatchv>
    80005288:	fddff06f          	j	80005264 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000528c:	00000913          	li	s2,0
    80005290:	00090493          	mv	s1,s2
    80005294:	0019091b          	addiw	s2,s2,1
    80005298:	03495a63          	bge	s2,s4,800052cc <_Z9getStringPci+0x90>
        cc = getc();
    8000529c:	ffffc097          	auipc	ra,0xffffc
    800052a0:	288080e7          	jalr	648(ra) # 80001524 <_Z4getcv>
        if(cc < 1)
    800052a4:	02050463          	beqz	a0,800052cc <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800052a8:	009984b3          	add	s1,s3,s1
    800052ac:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800052b0:	00a00793          	li	a5,10
    800052b4:	00f50a63          	beq	a0,a5,800052c8 <_Z9getStringPci+0x8c>
    800052b8:	00d00793          	li	a5,13
    800052bc:	fcf51ae3          	bne	a0,a5,80005290 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800052c0:	00090493          	mv	s1,s2
    800052c4:	0080006f          	j	800052cc <_Z9getStringPci+0x90>
    800052c8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800052cc:	009984b3          	add	s1,s3,s1
    800052d0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800052d4:	00000613          	li	a2,0
    800052d8:	00100593          	li	a1,1
    800052dc:	00006517          	auipc	a0,0x6
    800052e0:	5c450513          	addi	a0,a0,1476 # 8000b8a0 <lockPrint>
    800052e4:	ffffc097          	auipc	ra,0xffffc
    800052e8:	f50080e7          	jalr	-176(ra) # 80001234 <copy_and_swap>
    800052ec:	fe0514e3          	bnez	a0,800052d4 <_Z9getStringPci+0x98>
    return buf;
}
    800052f0:	00098513          	mv	a0,s3
    800052f4:	02813083          	ld	ra,40(sp)
    800052f8:	02013403          	ld	s0,32(sp)
    800052fc:	01813483          	ld	s1,24(sp)
    80005300:	01013903          	ld	s2,16(sp)
    80005304:	00813983          	ld	s3,8(sp)
    80005308:	00013a03          	ld	s4,0(sp)
    8000530c:	03010113          	addi	sp,sp,48
    80005310:	00008067          	ret

0000000080005314 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005314:	ff010113          	addi	sp,sp,-16
    80005318:	00813423          	sd	s0,8(sp)
    8000531c:	01010413          	addi	s0,sp,16
    80005320:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005324:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005328:	0006c603          	lbu	a2,0(a3)
    8000532c:	fd06071b          	addiw	a4,a2,-48
    80005330:	0ff77713          	andi	a4,a4,255
    80005334:	00900793          	li	a5,9
    80005338:	02e7e063          	bltu	a5,a4,80005358 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000533c:	0025179b          	slliw	a5,a0,0x2
    80005340:	00a787bb          	addw	a5,a5,a0
    80005344:	0017979b          	slliw	a5,a5,0x1
    80005348:	00168693          	addi	a3,a3,1
    8000534c:	00c787bb          	addw	a5,a5,a2
    80005350:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005354:	fd5ff06f          	j	80005328 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005358:	00813403          	ld	s0,8(sp)
    8000535c:	01010113          	addi	sp,sp,16
    80005360:	00008067          	ret

0000000080005364 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005364:	fc010113          	addi	sp,sp,-64
    80005368:	02113c23          	sd	ra,56(sp)
    8000536c:	02813823          	sd	s0,48(sp)
    80005370:	02913423          	sd	s1,40(sp)
    80005374:	03213023          	sd	s2,32(sp)
    80005378:	01313c23          	sd	s3,24(sp)
    8000537c:	04010413          	addi	s0,sp,64
    80005380:	00050493          	mv	s1,a0
    80005384:	00058913          	mv	s2,a1
    80005388:	00060993          	mv	s3,a2
    LOCK();
    8000538c:	00100613          	li	a2,1
    80005390:	00000593          	li	a1,0
    80005394:	00006517          	auipc	a0,0x6
    80005398:	50c50513          	addi	a0,a0,1292 # 8000b8a0 <lockPrint>
    8000539c:	ffffc097          	auipc	ra,0xffffc
    800053a0:	e98080e7          	jalr	-360(ra) # 80001234 <copy_and_swap>
    800053a4:	00050863          	beqz	a0,800053b4 <_Z8printIntiii+0x50>
    800053a8:	ffffc097          	auipc	ra,0xffffc
    800053ac:	03c080e7          	jalr	60(ra) # 800013e4 <_Z15thread_dispatchv>
    800053b0:	fddff06f          	j	8000538c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800053b4:	00098463          	beqz	s3,800053bc <_Z8printIntiii+0x58>
    800053b8:	0804c463          	bltz	s1,80005440 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800053bc:	0004851b          	sext.w	a0,s1
    neg = 0;
    800053c0:	00000593          	li	a1,0
    }

    i = 0;
    800053c4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800053c8:	0009079b          	sext.w	a5,s2
    800053cc:	0325773b          	remuw	a4,a0,s2
    800053d0:	00048613          	mv	a2,s1
    800053d4:	0014849b          	addiw	s1,s1,1
    800053d8:	02071693          	slli	a3,a4,0x20
    800053dc:	0206d693          	srli	a3,a3,0x20
    800053e0:	00006717          	auipc	a4,0x6
    800053e4:	36070713          	addi	a4,a4,864 # 8000b740 <digits>
    800053e8:	00d70733          	add	a4,a4,a3
    800053ec:	00074683          	lbu	a3,0(a4)
    800053f0:	fd040713          	addi	a4,s0,-48
    800053f4:	00c70733          	add	a4,a4,a2
    800053f8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800053fc:	0005071b          	sext.w	a4,a0
    80005400:	0325553b          	divuw	a0,a0,s2
    80005404:	fcf772e3          	bgeu	a4,a5,800053c8 <_Z8printIntiii+0x64>
    if(neg)
    80005408:	00058c63          	beqz	a1,80005420 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000540c:	fd040793          	addi	a5,s0,-48
    80005410:	009784b3          	add	s1,a5,s1
    80005414:	02d00793          	li	a5,45
    80005418:	fef48823          	sb	a5,-16(s1)
    8000541c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005420:	fff4849b          	addiw	s1,s1,-1
    80005424:	0204c463          	bltz	s1,8000544c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005428:	fd040793          	addi	a5,s0,-48
    8000542c:	009787b3          	add	a5,a5,s1
    80005430:	ff07c503          	lbu	a0,-16(a5)
    80005434:	ffffc097          	auipc	ra,0xffffc
    80005438:	124080e7          	jalr	292(ra) # 80001558 <_Z4putcc>
    8000543c:	fe5ff06f          	j	80005420 <_Z8printIntiii+0xbc>
        x = -xx;
    80005440:	4090053b          	negw	a0,s1
        neg = 1;
    80005444:	00100593          	li	a1,1
        x = -xx;
    80005448:	f7dff06f          	j	800053c4 <_Z8printIntiii+0x60>

    UNLOCK();
    8000544c:	00000613          	li	a2,0
    80005450:	00100593          	li	a1,1
    80005454:	00006517          	auipc	a0,0x6
    80005458:	44c50513          	addi	a0,a0,1100 # 8000b8a0 <lockPrint>
    8000545c:	ffffc097          	auipc	ra,0xffffc
    80005460:	dd8080e7          	jalr	-552(ra) # 80001234 <copy_and_swap>
    80005464:	fe0514e3          	bnez	a0,8000544c <_Z8printIntiii+0xe8>
    80005468:	03813083          	ld	ra,56(sp)
    8000546c:	03013403          	ld	s0,48(sp)
    80005470:	02813483          	ld	s1,40(sp)
    80005474:	02013903          	ld	s2,32(sp)
    80005478:	01813983          	ld	s3,24(sp)
    8000547c:	04010113          	addi	sp,sp,64
    80005480:	00008067          	ret

0000000080005484 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005484:	fd010113          	addi	sp,sp,-48
    80005488:	02113423          	sd	ra,40(sp)
    8000548c:	02813023          	sd	s0,32(sp)
    80005490:	00913c23          	sd	s1,24(sp)
    80005494:	01213823          	sd	s2,16(sp)
    80005498:	01313423          	sd	s3,8(sp)
    8000549c:	03010413          	addi	s0,sp,48
    800054a0:	00050493          	mv	s1,a0
    800054a4:	00058913          	mv	s2,a1
    800054a8:	0015879b          	addiw	a5,a1,1
    800054ac:	0007851b          	sext.w	a0,a5
    800054b0:	00f4a023          	sw	a5,0(s1)
    800054b4:	0004a823          	sw	zero,16(s1)
    800054b8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800054bc:	00251513          	slli	a0,a0,0x2
    800054c0:	ffffc097          	auipc	ra,0xffffc
    800054c4:	d94080e7          	jalr	-620(ra) # 80001254 <_Z9mem_allocm>
    800054c8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800054cc:	01000513          	li	a0,16
    800054d0:	ffffd097          	auipc	ra,0xffffd
    800054d4:	850080e7          	jalr	-1968(ra) # 80001d20 <_Znwm>
    800054d8:	00050993          	mv	s3,a0
    800054dc:	00000593          	li	a1,0
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	a88080e7          	jalr	-1400(ra) # 80001f68 <_ZN9SemaphoreC1Ej>
    800054e8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800054ec:	01000513          	li	a0,16
    800054f0:	ffffd097          	auipc	ra,0xffffd
    800054f4:	830080e7          	jalr	-2000(ra) # 80001d20 <_Znwm>
    800054f8:	00050993          	mv	s3,a0
    800054fc:	00090593          	mv	a1,s2
    80005500:	ffffd097          	auipc	ra,0xffffd
    80005504:	a68080e7          	jalr	-1432(ra) # 80001f68 <_ZN9SemaphoreC1Ej>
    80005508:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000550c:	01000513          	li	a0,16
    80005510:	ffffd097          	auipc	ra,0xffffd
    80005514:	810080e7          	jalr	-2032(ra) # 80001d20 <_Znwm>
    80005518:	00050913          	mv	s2,a0
    8000551c:	00100593          	li	a1,1
    80005520:	ffffd097          	auipc	ra,0xffffd
    80005524:	a48080e7          	jalr	-1464(ra) # 80001f68 <_ZN9SemaphoreC1Ej>
    80005528:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000552c:	01000513          	li	a0,16
    80005530:	ffffc097          	auipc	ra,0xffffc
    80005534:	7f0080e7          	jalr	2032(ra) # 80001d20 <_Znwm>
    80005538:	00050913          	mv	s2,a0
    8000553c:	00100593          	li	a1,1
    80005540:	ffffd097          	auipc	ra,0xffffd
    80005544:	a28080e7          	jalr	-1496(ra) # 80001f68 <_ZN9SemaphoreC1Ej>
    80005548:	0324b823          	sd	s2,48(s1)
}
    8000554c:	02813083          	ld	ra,40(sp)
    80005550:	02013403          	ld	s0,32(sp)
    80005554:	01813483          	ld	s1,24(sp)
    80005558:	01013903          	ld	s2,16(sp)
    8000555c:	00813983          	ld	s3,8(sp)
    80005560:	03010113          	addi	sp,sp,48
    80005564:	00008067          	ret
    80005568:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000556c:	00098513          	mv	a0,s3
    80005570:	ffffd097          	auipc	ra,0xffffd
    80005574:	800080e7          	jalr	-2048(ra) # 80001d70 <_ZdlPv>
    80005578:	00048513          	mv	a0,s1
    8000557c:	00007097          	auipc	ra,0x7
    80005580:	3fc080e7          	jalr	1020(ra) # 8000c978 <_Unwind_Resume>
    80005584:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005588:	00098513          	mv	a0,s3
    8000558c:	ffffc097          	auipc	ra,0xffffc
    80005590:	7e4080e7          	jalr	2020(ra) # 80001d70 <_ZdlPv>
    80005594:	00048513          	mv	a0,s1
    80005598:	00007097          	auipc	ra,0x7
    8000559c:	3e0080e7          	jalr	992(ra) # 8000c978 <_Unwind_Resume>
    800055a0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800055a4:	00090513          	mv	a0,s2
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	7c8080e7          	jalr	1992(ra) # 80001d70 <_ZdlPv>
    800055b0:	00048513          	mv	a0,s1
    800055b4:	00007097          	auipc	ra,0x7
    800055b8:	3c4080e7          	jalr	964(ra) # 8000c978 <_Unwind_Resume>
    800055bc:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800055c0:	00090513          	mv	a0,s2
    800055c4:	ffffc097          	auipc	ra,0xffffc
    800055c8:	7ac080e7          	jalr	1964(ra) # 80001d70 <_ZdlPv>
    800055cc:	00048513          	mv	a0,s1
    800055d0:	00007097          	auipc	ra,0x7
    800055d4:	3a8080e7          	jalr	936(ra) # 8000c978 <_Unwind_Resume>

00000000800055d8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800055d8:	fe010113          	addi	sp,sp,-32
    800055dc:	00113c23          	sd	ra,24(sp)
    800055e0:	00813823          	sd	s0,16(sp)
    800055e4:	00913423          	sd	s1,8(sp)
    800055e8:	01213023          	sd	s2,0(sp)
    800055ec:	02010413          	addi	s0,sp,32
    800055f0:	00050493          	mv	s1,a0
    800055f4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800055f8:	01853503          	ld	a0,24(a0)
    800055fc:	ffffd097          	auipc	ra,0xffffd
    80005600:	9a8080e7          	jalr	-1624(ra) # 80001fa4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005604:	0304b503          	ld	a0,48(s1)
    80005608:	ffffd097          	auipc	ra,0xffffd
    8000560c:	99c080e7          	jalr	-1636(ra) # 80001fa4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005610:	0084b783          	ld	a5,8(s1)
    80005614:	0144a703          	lw	a4,20(s1)
    80005618:	00271713          	slli	a4,a4,0x2
    8000561c:	00e787b3          	add	a5,a5,a4
    80005620:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005624:	0144a783          	lw	a5,20(s1)
    80005628:	0017879b          	addiw	a5,a5,1
    8000562c:	0004a703          	lw	a4,0(s1)
    80005630:	02e7e7bb          	remw	a5,a5,a4
    80005634:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005638:	0304b503          	ld	a0,48(s1)
    8000563c:	ffffd097          	auipc	ra,0xffffd
    80005640:	994080e7          	jalr	-1644(ra) # 80001fd0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005644:	0204b503          	ld	a0,32(s1)
    80005648:	ffffd097          	auipc	ra,0xffffd
    8000564c:	988080e7          	jalr	-1656(ra) # 80001fd0 <_ZN9Semaphore6signalEv>

}
    80005650:	01813083          	ld	ra,24(sp)
    80005654:	01013403          	ld	s0,16(sp)
    80005658:	00813483          	ld	s1,8(sp)
    8000565c:	00013903          	ld	s2,0(sp)
    80005660:	02010113          	addi	sp,sp,32
    80005664:	00008067          	ret

0000000080005668 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005668:	fe010113          	addi	sp,sp,-32
    8000566c:	00113c23          	sd	ra,24(sp)
    80005670:	00813823          	sd	s0,16(sp)
    80005674:	00913423          	sd	s1,8(sp)
    80005678:	01213023          	sd	s2,0(sp)
    8000567c:	02010413          	addi	s0,sp,32
    80005680:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005684:	02053503          	ld	a0,32(a0)
    80005688:	ffffd097          	auipc	ra,0xffffd
    8000568c:	91c080e7          	jalr	-1764(ra) # 80001fa4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005690:	0284b503          	ld	a0,40(s1)
    80005694:	ffffd097          	auipc	ra,0xffffd
    80005698:	910080e7          	jalr	-1776(ra) # 80001fa4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000569c:	0084b703          	ld	a4,8(s1)
    800056a0:	0104a783          	lw	a5,16(s1)
    800056a4:	00279693          	slli	a3,a5,0x2
    800056a8:	00d70733          	add	a4,a4,a3
    800056ac:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800056b0:	0017879b          	addiw	a5,a5,1
    800056b4:	0004a703          	lw	a4,0(s1)
    800056b8:	02e7e7bb          	remw	a5,a5,a4
    800056bc:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800056c0:	0284b503          	ld	a0,40(s1)
    800056c4:	ffffd097          	auipc	ra,0xffffd
    800056c8:	90c080e7          	jalr	-1780(ra) # 80001fd0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800056cc:	0184b503          	ld	a0,24(s1)
    800056d0:	ffffd097          	auipc	ra,0xffffd
    800056d4:	900080e7          	jalr	-1792(ra) # 80001fd0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800056d8:	00090513          	mv	a0,s2
    800056dc:	01813083          	ld	ra,24(sp)
    800056e0:	01013403          	ld	s0,16(sp)
    800056e4:	00813483          	ld	s1,8(sp)
    800056e8:	00013903          	ld	s2,0(sp)
    800056ec:	02010113          	addi	sp,sp,32
    800056f0:	00008067          	ret

00000000800056f4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800056f4:	fe010113          	addi	sp,sp,-32
    800056f8:	00113c23          	sd	ra,24(sp)
    800056fc:	00813823          	sd	s0,16(sp)
    80005700:	00913423          	sd	s1,8(sp)
    80005704:	01213023          	sd	s2,0(sp)
    80005708:	02010413          	addi	s0,sp,32
    8000570c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005710:	02853503          	ld	a0,40(a0)
    80005714:	ffffd097          	auipc	ra,0xffffd
    80005718:	890080e7          	jalr	-1904(ra) # 80001fa4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000571c:	0304b503          	ld	a0,48(s1)
    80005720:	ffffd097          	auipc	ra,0xffffd
    80005724:	884080e7          	jalr	-1916(ra) # 80001fa4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005728:	0144a783          	lw	a5,20(s1)
    8000572c:	0104a903          	lw	s2,16(s1)
    80005730:	0327ce63          	blt	a5,s2,8000576c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005734:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005738:	0304b503          	ld	a0,48(s1)
    8000573c:	ffffd097          	auipc	ra,0xffffd
    80005740:	894080e7          	jalr	-1900(ra) # 80001fd0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005744:	0284b503          	ld	a0,40(s1)
    80005748:	ffffd097          	auipc	ra,0xffffd
    8000574c:	888080e7          	jalr	-1912(ra) # 80001fd0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005750:	00090513          	mv	a0,s2
    80005754:	01813083          	ld	ra,24(sp)
    80005758:	01013403          	ld	s0,16(sp)
    8000575c:	00813483          	ld	s1,8(sp)
    80005760:	00013903          	ld	s2,0(sp)
    80005764:	02010113          	addi	sp,sp,32
    80005768:	00008067          	ret
        ret = cap - head + tail;
    8000576c:	0004a703          	lw	a4,0(s1)
    80005770:	4127093b          	subw	s2,a4,s2
    80005774:	00f9093b          	addw	s2,s2,a5
    80005778:	fc1ff06f          	j	80005738 <_ZN9BufferCPP6getCntEv+0x44>

000000008000577c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000577c:	fe010113          	addi	sp,sp,-32
    80005780:	00113c23          	sd	ra,24(sp)
    80005784:	00813823          	sd	s0,16(sp)
    80005788:	00913423          	sd	s1,8(sp)
    8000578c:	02010413          	addi	s0,sp,32
    80005790:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005794:	00a00513          	li	a0,10
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	8f8080e7          	jalr	-1800(ra) # 80002090 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800057a0:	00004517          	auipc	a0,0x4
    800057a4:	b7050513          	addi	a0,a0,-1168 # 80009310 <CONSOLE_STATUS+0x300>
    800057a8:	00000097          	auipc	ra,0x0
    800057ac:	a0c080e7          	jalr	-1524(ra) # 800051b4 <_Z11printStringPKc>
    while (getCnt()) {
    800057b0:	00048513          	mv	a0,s1
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	f40080e7          	jalr	-192(ra) # 800056f4 <_ZN9BufferCPP6getCntEv>
    800057bc:	02050c63          	beqz	a0,800057f4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800057c0:	0084b783          	ld	a5,8(s1)
    800057c4:	0104a703          	lw	a4,16(s1)
    800057c8:	00271713          	slli	a4,a4,0x2
    800057cc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800057d0:	0007c503          	lbu	a0,0(a5)
    800057d4:	ffffd097          	auipc	ra,0xffffd
    800057d8:	8bc080e7          	jalr	-1860(ra) # 80002090 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800057dc:	0104a783          	lw	a5,16(s1)
    800057e0:	0017879b          	addiw	a5,a5,1
    800057e4:	0004a703          	lw	a4,0(s1)
    800057e8:	02e7e7bb          	remw	a5,a5,a4
    800057ec:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800057f0:	fc1ff06f          	j	800057b0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800057f4:	02100513          	li	a0,33
    800057f8:	ffffd097          	auipc	ra,0xffffd
    800057fc:	898080e7          	jalr	-1896(ra) # 80002090 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005800:	00a00513          	li	a0,10
    80005804:	ffffd097          	auipc	ra,0xffffd
    80005808:	88c080e7          	jalr	-1908(ra) # 80002090 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000580c:	0084b503          	ld	a0,8(s1)
    80005810:	ffffc097          	auipc	ra,0xffffc
    80005814:	a80080e7          	jalr	-1408(ra) # 80001290 <_Z8mem_freePv>
    delete itemAvailable;
    80005818:	0204b503          	ld	a0,32(s1)
    8000581c:	00050863          	beqz	a0,8000582c <_ZN9BufferCPPD1Ev+0xb0>
    80005820:	00053783          	ld	a5,0(a0)
    80005824:	0087b783          	ld	a5,8(a5)
    80005828:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000582c:	0184b503          	ld	a0,24(s1)
    80005830:	00050863          	beqz	a0,80005840 <_ZN9BufferCPPD1Ev+0xc4>
    80005834:	00053783          	ld	a5,0(a0)
    80005838:	0087b783          	ld	a5,8(a5)
    8000583c:	000780e7          	jalr	a5
    delete mutexTail;
    80005840:	0304b503          	ld	a0,48(s1)
    80005844:	00050863          	beqz	a0,80005854 <_ZN9BufferCPPD1Ev+0xd8>
    80005848:	00053783          	ld	a5,0(a0)
    8000584c:	0087b783          	ld	a5,8(a5)
    80005850:	000780e7          	jalr	a5
    delete mutexHead;
    80005854:	0284b503          	ld	a0,40(s1)
    80005858:	00050863          	beqz	a0,80005868 <_ZN9BufferCPPD1Ev+0xec>
    8000585c:	00053783          	ld	a5,0(a0)
    80005860:	0087b783          	ld	a5,8(a5)
    80005864:	000780e7          	jalr	a5
}
    80005868:	01813083          	ld	ra,24(sp)
    8000586c:	01013403          	ld	s0,16(sp)
    80005870:	00813483          	ld	s1,8(sp)
    80005874:	02010113          	addi	sp,sp,32
    80005878:	00008067          	ret

000000008000587c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000587c:	fe010113          	addi	sp,sp,-32
    80005880:	00113c23          	sd	ra,24(sp)
    80005884:	00813823          	sd	s0,16(sp)
    80005888:	00913423          	sd	s1,8(sp)
    8000588c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005890:	00004517          	auipc	a0,0x4
    80005894:	a9850513          	addi	a0,a0,-1384 # 80009328 <CONSOLE_STATUS+0x318>
    80005898:	00000097          	auipc	ra,0x0
    8000589c:	91c080e7          	jalr	-1764(ra) # 800051b4 <_Z11printStringPKc>
    int test = getc() - '0';
    800058a0:	ffffc097          	auipc	ra,0xffffc
    800058a4:	c84080e7          	jalr	-892(ra) # 80001524 <_Z4getcv>
    800058a8:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800058ac:	ffffc097          	auipc	ra,0xffffc
    800058b0:	c78080e7          	jalr	-904(ra) # 80001524 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800058b4:	00700793          	li	a5,7
    800058b8:	1097e263          	bltu	a5,s1,800059bc <_Z8userMainv+0x140>
    800058bc:	00249493          	slli	s1,s1,0x2
    800058c0:	00004717          	auipc	a4,0x4
    800058c4:	cc070713          	addi	a4,a4,-832 # 80009580 <CONSOLE_STATUS+0x570>
    800058c8:	00e484b3          	add	s1,s1,a4
    800058cc:	0004a783          	lw	a5,0(s1)
    800058d0:	00e787b3          	add	a5,a5,a4
    800058d4:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800058d8:	fffff097          	auipc	ra,0xfffff
    800058dc:	f54080e7          	jalr	-172(ra) # 8000482c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800058e0:	00004517          	auipc	a0,0x4
    800058e4:	a6850513          	addi	a0,a0,-1432 # 80009348 <CONSOLE_STATUS+0x338>
    800058e8:	00000097          	auipc	ra,0x0
    800058ec:	8cc080e7          	jalr	-1844(ra) # 800051b4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800058f0:	01813083          	ld	ra,24(sp)
    800058f4:	01013403          	ld	s0,16(sp)
    800058f8:	00813483          	ld	s1,8(sp)
    800058fc:	02010113          	addi	sp,sp,32
    80005900:	00008067          	ret
            Threads_CPP_API_test();
    80005904:	ffffe097          	auipc	ra,0xffffe
    80005908:	e08080e7          	jalr	-504(ra) # 8000370c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000590c:	00004517          	auipc	a0,0x4
    80005910:	a7c50513          	addi	a0,a0,-1412 # 80009388 <CONSOLE_STATUS+0x378>
    80005914:	00000097          	auipc	ra,0x0
    80005918:	8a0080e7          	jalr	-1888(ra) # 800051b4 <_Z11printStringPKc>
            break;
    8000591c:	fd5ff06f          	j	800058f0 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005920:	ffffd097          	auipc	ra,0xffffd
    80005924:	640080e7          	jalr	1600(ra) # 80002f60 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005928:	00004517          	auipc	a0,0x4
    8000592c:	aa050513          	addi	a0,a0,-1376 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005930:	00000097          	auipc	ra,0x0
    80005934:	884080e7          	jalr	-1916(ra) # 800051b4 <_Z11printStringPKc>
            break;
    80005938:	fb9ff06f          	j	800058f0 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    8000593c:	fffff097          	auipc	ra,0xfffff
    80005940:	234080e7          	jalr	564(ra) # 80004b70 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005944:	00004517          	auipc	a0,0x4
    80005948:	ad450513          	addi	a0,a0,-1324 # 80009418 <CONSOLE_STATUS+0x408>
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	868080e7          	jalr	-1944(ra) # 800051b4 <_Z11printStringPKc>
            break;
    80005954:	f9dff06f          	j	800058f0 <_Z8userMainv+0x74>
            testSleeping();
    80005958:	00000097          	auipc	ra,0x0
    8000595c:	11c080e7          	jalr	284(ra) # 80005a74 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005960:	00004517          	auipc	a0,0x4
    80005964:	b1050513          	addi	a0,a0,-1264 # 80009470 <CONSOLE_STATUS+0x460>
    80005968:	00000097          	auipc	ra,0x0
    8000596c:	84c080e7          	jalr	-1972(ra) # 800051b4 <_Z11printStringPKc>
            break;
    80005970:	f81ff06f          	j	800058f0 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005974:	ffffe097          	auipc	ra,0xffffe
    80005978:	258080e7          	jalr	600(ra) # 80003bcc <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    8000597c:	00004517          	auipc	a0,0x4
    80005980:	b2450513          	addi	a0,a0,-1244 # 800094a0 <CONSOLE_STATUS+0x490>
    80005984:	00000097          	auipc	ra,0x0
    80005988:	830080e7          	jalr	-2000(ra) # 800051b4 <_Z11printStringPKc>
            break;
    8000598c:	f65ff06f          	j	800058f0 <_Z8userMainv+0x74>
            System_Mode_test();
    80005990:	00000097          	auipc	ra,0x0
    80005994:	658080e7          	jalr	1624(ra) # 80005fe8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005998:	00004517          	auipc	a0,0x4
    8000599c:	b4850513          	addi	a0,a0,-1208 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800059a0:	00000097          	auipc	ra,0x0
    800059a4:	814080e7          	jalr	-2028(ra) # 800051b4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800059a8:	00004517          	auipc	a0,0x4
    800059ac:	b5850513          	addi	a0,a0,-1192 # 80009500 <CONSOLE_STATUS+0x4f0>
    800059b0:	00000097          	auipc	ra,0x0
    800059b4:	804080e7          	jalr	-2044(ra) # 800051b4 <_Z11printStringPKc>
            break;
    800059b8:	f39ff06f          	j	800058f0 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800059bc:	00004517          	auipc	a0,0x4
    800059c0:	b9c50513          	addi	a0,a0,-1124 # 80009558 <CONSOLE_STATUS+0x548>
    800059c4:	fffff097          	auipc	ra,0xfffff
    800059c8:	7f0080e7          	jalr	2032(ra) # 800051b4 <_Z11printStringPKc>
    800059cc:	f25ff06f          	j	800058f0 <_Z8userMainv+0x74>

00000000800059d0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800059d0:	fe010113          	addi	sp,sp,-32
    800059d4:	00113c23          	sd	ra,24(sp)
    800059d8:	00813823          	sd	s0,16(sp)
    800059dc:	00913423          	sd	s1,8(sp)
    800059e0:	01213023          	sd	s2,0(sp)
    800059e4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800059e8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800059ec:	00600493          	li	s1,6
    while (--i > 0) {
    800059f0:	fff4849b          	addiw	s1,s1,-1
    800059f4:	04905463          	blez	s1,80005a3c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800059f8:	00004517          	auipc	a0,0x4
    800059fc:	ba850513          	addi	a0,a0,-1112 # 800095a0 <CONSOLE_STATUS+0x590>
    80005a00:	fffff097          	auipc	ra,0xfffff
    80005a04:	7b4080e7          	jalr	1972(ra) # 800051b4 <_Z11printStringPKc>
        printInt(sleep_time);
    80005a08:	00000613          	li	a2,0
    80005a0c:	00a00593          	li	a1,10
    80005a10:	0009051b          	sext.w	a0,s2
    80005a14:	00000097          	auipc	ra,0x0
    80005a18:	950080e7          	jalr	-1712(ra) # 80005364 <_Z8printIntiii>
        printString(" !\n");
    80005a1c:	00004517          	auipc	a0,0x4
    80005a20:	b8c50513          	addi	a0,a0,-1140 # 800095a8 <CONSOLE_STATUS+0x598>
    80005a24:	fffff097          	auipc	ra,0xfffff
    80005a28:	790080e7          	jalr	1936(ra) # 800051b4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005a2c:	00090513          	mv	a0,s2
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	abc080e7          	jalr	-1348(ra) # 800014ec <_Z10time_sleepm>
    while (--i > 0) {
    80005a38:	fb9ff06f          	j	800059f0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005a3c:	00a00793          	li	a5,10
    80005a40:	02f95933          	divu	s2,s2,a5
    80005a44:	fff90913          	addi	s2,s2,-1
    80005a48:	00006797          	auipc	a5,0x6
    80005a4c:	e6078793          	addi	a5,a5,-416 # 8000b8a8 <_ZL8finished>
    80005a50:	01278933          	add	s2,a5,s2
    80005a54:	00100793          	li	a5,1
    80005a58:	00f90023          	sb	a5,0(s2)
}
    80005a5c:	01813083          	ld	ra,24(sp)
    80005a60:	01013403          	ld	s0,16(sp)
    80005a64:	00813483          	ld	s1,8(sp)
    80005a68:	00013903          	ld	s2,0(sp)
    80005a6c:	02010113          	addi	sp,sp,32
    80005a70:	00008067          	ret

0000000080005a74 <_Z12testSleepingv>:

void testSleeping() {
    80005a74:	fc010113          	addi	sp,sp,-64
    80005a78:	02113c23          	sd	ra,56(sp)
    80005a7c:	02813823          	sd	s0,48(sp)
    80005a80:	02913423          	sd	s1,40(sp)
    80005a84:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005a88:	00a00793          	li	a5,10
    80005a8c:	fcf43823          	sd	a5,-48(s0)
    80005a90:	01400793          	li	a5,20
    80005a94:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005a98:	00000493          	li	s1,0
    80005a9c:	02c0006f          	j	80005ac8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005aa0:	00349793          	slli	a5,s1,0x3
    80005aa4:	fd040613          	addi	a2,s0,-48
    80005aa8:	00f60633          	add	a2,a2,a5
    80005aac:	00000597          	auipc	a1,0x0
    80005ab0:	f2458593          	addi	a1,a1,-220 # 800059d0 <_ZL9sleepyRunPv>
    80005ab4:	fc040513          	addi	a0,s0,-64
    80005ab8:	00f50533          	add	a0,a0,a5
    80005abc:	ffffc097          	auipc	ra,0xffffc
    80005ac0:	86c080e7          	jalr	-1940(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ac4:	0014849b          	addiw	s1,s1,1
    80005ac8:	00100793          	li	a5,1
    80005acc:	fc97dae3          	bge	a5,s1,80005aa0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005ad0:	00006797          	auipc	a5,0x6
    80005ad4:	dd87c783          	lbu	a5,-552(a5) # 8000b8a8 <_ZL8finished>
    80005ad8:	fe078ce3          	beqz	a5,80005ad0 <_Z12testSleepingv+0x5c>
    80005adc:	00006797          	auipc	a5,0x6
    80005ae0:	dcd7c783          	lbu	a5,-563(a5) # 8000b8a9 <_ZL8finished+0x1>
    80005ae4:	fe0786e3          	beqz	a5,80005ad0 <_Z12testSleepingv+0x5c>
}
    80005ae8:	03813083          	ld	ra,56(sp)
    80005aec:	03013403          	ld	s0,48(sp)
    80005af0:	02813483          	ld	s1,40(sp)
    80005af4:	04010113          	addi	sp,sp,64
    80005af8:	00008067          	ret

0000000080005afc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005afc:	fe010113          	addi	sp,sp,-32
    80005b00:	00113c23          	sd	ra,24(sp)
    80005b04:	00813823          	sd	s0,16(sp)
    80005b08:	00913423          	sd	s1,8(sp)
    80005b0c:	01213023          	sd	s2,0(sp)
    80005b10:	02010413          	addi	s0,sp,32
    80005b14:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005b18:	00100793          	li	a5,1
    80005b1c:	02a7f863          	bgeu	a5,a0,80005b4c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005b20:	00a00793          	li	a5,10
    80005b24:	02f577b3          	remu	a5,a0,a5
    80005b28:	02078e63          	beqz	a5,80005b64 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005b2c:	fff48513          	addi	a0,s1,-1
    80005b30:	00000097          	auipc	ra,0x0
    80005b34:	fcc080e7          	jalr	-52(ra) # 80005afc <_ZL9fibonaccim>
    80005b38:	00050913          	mv	s2,a0
    80005b3c:	ffe48513          	addi	a0,s1,-2
    80005b40:	00000097          	auipc	ra,0x0
    80005b44:	fbc080e7          	jalr	-68(ra) # 80005afc <_ZL9fibonaccim>
    80005b48:	00a90533          	add	a0,s2,a0
}
    80005b4c:	01813083          	ld	ra,24(sp)
    80005b50:	01013403          	ld	s0,16(sp)
    80005b54:	00813483          	ld	s1,8(sp)
    80005b58:	00013903          	ld	s2,0(sp)
    80005b5c:	02010113          	addi	sp,sp,32
    80005b60:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005b64:	ffffc097          	auipc	ra,0xffffc
    80005b68:	880080e7          	jalr	-1920(ra) # 800013e4 <_Z15thread_dispatchv>
    80005b6c:	fc1ff06f          	j	80005b2c <_ZL9fibonaccim+0x30>

0000000080005b70 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005b70:	fe010113          	addi	sp,sp,-32
    80005b74:	00113c23          	sd	ra,24(sp)
    80005b78:	00813823          	sd	s0,16(sp)
    80005b7c:	00913423          	sd	s1,8(sp)
    80005b80:	01213023          	sd	s2,0(sp)
    80005b84:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005b88:	00a00493          	li	s1,10
    80005b8c:	0400006f          	j	80005bcc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b90:	00003517          	auipc	a0,0x3
    80005b94:	6e850513          	addi	a0,a0,1768 # 80009278 <CONSOLE_STATUS+0x268>
    80005b98:	fffff097          	auipc	ra,0xfffff
    80005b9c:	61c080e7          	jalr	1564(ra) # 800051b4 <_Z11printStringPKc>
    80005ba0:	00000613          	li	a2,0
    80005ba4:	00a00593          	li	a1,10
    80005ba8:	00048513          	mv	a0,s1
    80005bac:	fffff097          	auipc	ra,0xfffff
    80005bb0:	7b8080e7          	jalr	1976(ra) # 80005364 <_Z8printIntiii>
    80005bb4:	00004517          	auipc	a0,0x4
    80005bb8:	8b450513          	addi	a0,a0,-1868 # 80009468 <CONSOLE_STATUS+0x458>
    80005bbc:	fffff097          	auipc	ra,0xfffff
    80005bc0:	5f8080e7          	jalr	1528(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005bc4:	0014849b          	addiw	s1,s1,1
    80005bc8:	0ff4f493          	andi	s1,s1,255
    80005bcc:	00c00793          	li	a5,12
    80005bd0:	fc97f0e3          	bgeu	a5,s1,80005b90 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005bd4:	00003517          	auipc	a0,0x3
    80005bd8:	6ac50513          	addi	a0,a0,1708 # 80009280 <CONSOLE_STATUS+0x270>
    80005bdc:	fffff097          	auipc	ra,0xfffff
    80005be0:	5d8080e7          	jalr	1496(ra) # 800051b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005be4:	00500313          	li	t1,5
    thread_dispatch();
    80005be8:	ffffb097          	auipc	ra,0xffffb
    80005bec:	7fc080e7          	jalr	2044(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005bf0:	01000513          	li	a0,16
    80005bf4:	00000097          	auipc	ra,0x0
    80005bf8:	f08080e7          	jalr	-248(ra) # 80005afc <_ZL9fibonaccim>
    80005bfc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005c00:	00003517          	auipc	a0,0x3
    80005c04:	69050513          	addi	a0,a0,1680 # 80009290 <CONSOLE_STATUS+0x280>
    80005c08:	fffff097          	auipc	ra,0xfffff
    80005c0c:	5ac080e7          	jalr	1452(ra) # 800051b4 <_Z11printStringPKc>
    80005c10:	00000613          	li	a2,0
    80005c14:	00a00593          	li	a1,10
    80005c18:	0009051b          	sext.w	a0,s2
    80005c1c:	fffff097          	auipc	ra,0xfffff
    80005c20:	748080e7          	jalr	1864(ra) # 80005364 <_Z8printIntiii>
    80005c24:	00004517          	auipc	a0,0x4
    80005c28:	84450513          	addi	a0,a0,-1980 # 80009468 <CONSOLE_STATUS+0x458>
    80005c2c:	fffff097          	auipc	ra,0xfffff
    80005c30:	588080e7          	jalr	1416(ra) # 800051b4 <_Z11printStringPKc>
    80005c34:	0400006f          	j	80005c74 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c38:	00003517          	auipc	a0,0x3
    80005c3c:	64050513          	addi	a0,a0,1600 # 80009278 <CONSOLE_STATUS+0x268>
    80005c40:	fffff097          	auipc	ra,0xfffff
    80005c44:	574080e7          	jalr	1396(ra) # 800051b4 <_Z11printStringPKc>
    80005c48:	00000613          	li	a2,0
    80005c4c:	00a00593          	li	a1,10
    80005c50:	00048513          	mv	a0,s1
    80005c54:	fffff097          	auipc	ra,0xfffff
    80005c58:	710080e7          	jalr	1808(ra) # 80005364 <_Z8printIntiii>
    80005c5c:	00004517          	auipc	a0,0x4
    80005c60:	80c50513          	addi	a0,a0,-2036 # 80009468 <CONSOLE_STATUS+0x458>
    80005c64:	fffff097          	auipc	ra,0xfffff
    80005c68:	550080e7          	jalr	1360(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005c6c:	0014849b          	addiw	s1,s1,1
    80005c70:	0ff4f493          	andi	s1,s1,255
    80005c74:	00f00793          	li	a5,15
    80005c78:	fc97f0e3          	bgeu	a5,s1,80005c38 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005c7c:	00003517          	auipc	a0,0x3
    80005c80:	62450513          	addi	a0,a0,1572 # 800092a0 <CONSOLE_STATUS+0x290>
    80005c84:	fffff097          	auipc	ra,0xfffff
    80005c88:	530080e7          	jalr	1328(ra) # 800051b4 <_Z11printStringPKc>
    finishedD = true;
    80005c8c:	00100793          	li	a5,1
    80005c90:	00006717          	auipc	a4,0x6
    80005c94:	c0f70d23          	sb	a5,-998(a4) # 8000b8aa <_ZL9finishedD>
    thread_dispatch();
    80005c98:	ffffb097          	auipc	ra,0xffffb
    80005c9c:	74c080e7          	jalr	1868(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80005ca0:	01813083          	ld	ra,24(sp)
    80005ca4:	01013403          	ld	s0,16(sp)
    80005ca8:	00813483          	ld	s1,8(sp)
    80005cac:	00013903          	ld	s2,0(sp)
    80005cb0:	02010113          	addi	sp,sp,32
    80005cb4:	00008067          	ret

0000000080005cb8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005cb8:	fe010113          	addi	sp,sp,-32
    80005cbc:	00113c23          	sd	ra,24(sp)
    80005cc0:	00813823          	sd	s0,16(sp)
    80005cc4:	00913423          	sd	s1,8(sp)
    80005cc8:	01213023          	sd	s2,0(sp)
    80005ccc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005cd0:	00000493          	li	s1,0
    80005cd4:	0400006f          	j	80005d14 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005cd8:	00003517          	auipc	a0,0x3
    80005cdc:	57050513          	addi	a0,a0,1392 # 80009248 <CONSOLE_STATUS+0x238>
    80005ce0:	fffff097          	auipc	ra,0xfffff
    80005ce4:	4d4080e7          	jalr	1236(ra) # 800051b4 <_Z11printStringPKc>
    80005ce8:	00000613          	li	a2,0
    80005cec:	00a00593          	li	a1,10
    80005cf0:	00048513          	mv	a0,s1
    80005cf4:	fffff097          	auipc	ra,0xfffff
    80005cf8:	670080e7          	jalr	1648(ra) # 80005364 <_Z8printIntiii>
    80005cfc:	00003517          	auipc	a0,0x3
    80005d00:	76c50513          	addi	a0,a0,1900 # 80009468 <CONSOLE_STATUS+0x458>
    80005d04:	fffff097          	auipc	ra,0xfffff
    80005d08:	4b0080e7          	jalr	1200(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005d0c:	0014849b          	addiw	s1,s1,1
    80005d10:	0ff4f493          	andi	s1,s1,255
    80005d14:	00200793          	li	a5,2
    80005d18:	fc97f0e3          	bgeu	a5,s1,80005cd8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005d1c:	00003517          	auipc	a0,0x3
    80005d20:	53450513          	addi	a0,a0,1332 # 80009250 <CONSOLE_STATUS+0x240>
    80005d24:	fffff097          	auipc	ra,0xfffff
    80005d28:	490080e7          	jalr	1168(ra) # 800051b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005d2c:	00700313          	li	t1,7
    thread_dispatch();
    80005d30:	ffffb097          	auipc	ra,0xffffb
    80005d34:	6b4080e7          	jalr	1716(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005d38:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005d3c:	00003517          	auipc	a0,0x3
    80005d40:	52450513          	addi	a0,a0,1316 # 80009260 <CONSOLE_STATUS+0x250>
    80005d44:	fffff097          	auipc	ra,0xfffff
    80005d48:	470080e7          	jalr	1136(ra) # 800051b4 <_Z11printStringPKc>
    80005d4c:	00000613          	li	a2,0
    80005d50:	00a00593          	li	a1,10
    80005d54:	0009051b          	sext.w	a0,s2
    80005d58:	fffff097          	auipc	ra,0xfffff
    80005d5c:	60c080e7          	jalr	1548(ra) # 80005364 <_Z8printIntiii>
    80005d60:	00003517          	auipc	a0,0x3
    80005d64:	70850513          	addi	a0,a0,1800 # 80009468 <CONSOLE_STATUS+0x458>
    80005d68:	fffff097          	auipc	ra,0xfffff
    80005d6c:	44c080e7          	jalr	1100(ra) # 800051b4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005d70:	00c00513          	li	a0,12
    80005d74:	00000097          	auipc	ra,0x0
    80005d78:	d88080e7          	jalr	-632(ra) # 80005afc <_ZL9fibonaccim>
    80005d7c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005d80:	00003517          	auipc	a0,0x3
    80005d84:	4e850513          	addi	a0,a0,1256 # 80009268 <CONSOLE_STATUS+0x258>
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	42c080e7          	jalr	1068(ra) # 800051b4 <_Z11printStringPKc>
    80005d90:	00000613          	li	a2,0
    80005d94:	00a00593          	li	a1,10
    80005d98:	0009051b          	sext.w	a0,s2
    80005d9c:	fffff097          	auipc	ra,0xfffff
    80005da0:	5c8080e7          	jalr	1480(ra) # 80005364 <_Z8printIntiii>
    80005da4:	00003517          	auipc	a0,0x3
    80005da8:	6c450513          	addi	a0,a0,1732 # 80009468 <CONSOLE_STATUS+0x458>
    80005dac:	fffff097          	auipc	ra,0xfffff
    80005db0:	408080e7          	jalr	1032(ra) # 800051b4 <_Z11printStringPKc>
    80005db4:	0400006f          	j	80005df4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005db8:	00003517          	auipc	a0,0x3
    80005dbc:	49050513          	addi	a0,a0,1168 # 80009248 <CONSOLE_STATUS+0x238>
    80005dc0:	fffff097          	auipc	ra,0xfffff
    80005dc4:	3f4080e7          	jalr	1012(ra) # 800051b4 <_Z11printStringPKc>
    80005dc8:	00000613          	li	a2,0
    80005dcc:	00a00593          	li	a1,10
    80005dd0:	00048513          	mv	a0,s1
    80005dd4:	fffff097          	auipc	ra,0xfffff
    80005dd8:	590080e7          	jalr	1424(ra) # 80005364 <_Z8printIntiii>
    80005ddc:	00003517          	auipc	a0,0x3
    80005de0:	68c50513          	addi	a0,a0,1676 # 80009468 <CONSOLE_STATUS+0x458>
    80005de4:	fffff097          	auipc	ra,0xfffff
    80005de8:	3d0080e7          	jalr	976(ra) # 800051b4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005dec:	0014849b          	addiw	s1,s1,1
    80005df0:	0ff4f493          	andi	s1,s1,255
    80005df4:	00500793          	li	a5,5
    80005df8:	fc97f0e3          	bgeu	a5,s1,80005db8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005dfc:	00003517          	auipc	a0,0x3
    80005e00:	42450513          	addi	a0,a0,1060 # 80009220 <CONSOLE_STATUS+0x210>
    80005e04:	fffff097          	auipc	ra,0xfffff
    80005e08:	3b0080e7          	jalr	944(ra) # 800051b4 <_Z11printStringPKc>
    finishedC = true;
    80005e0c:	00100793          	li	a5,1
    80005e10:	00006717          	auipc	a4,0x6
    80005e14:	a8f70da3          	sb	a5,-1381(a4) # 8000b8ab <_ZL9finishedC>
    thread_dispatch();
    80005e18:	ffffb097          	auipc	ra,0xffffb
    80005e1c:	5cc080e7          	jalr	1484(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80005e20:	01813083          	ld	ra,24(sp)
    80005e24:	01013403          	ld	s0,16(sp)
    80005e28:	00813483          	ld	s1,8(sp)
    80005e2c:	00013903          	ld	s2,0(sp)
    80005e30:	02010113          	addi	sp,sp,32
    80005e34:	00008067          	ret

0000000080005e38 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005e38:	fe010113          	addi	sp,sp,-32
    80005e3c:	00113c23          	sd	ra,24(sp)
    80005e40:	00813823          	sd	s0,16(sp)
    80005e44:	00913423          	sd	s1,8(sp)
    80005e48:	01213023          	sd	s2,0(sp)
    80005e4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005e50:	00000913          	li	s2,0
    80005e54:	0400006f          	j	80005e94 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	58c080e7          	jalr	1420(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005e60:	00148493          	addi	s1,s1,1
    80005e64:	000027b7          	lui	a5,0x2
    80005e68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005e6c:	0097ee63          	bltu	a5,s1,80005e88 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005e70:	00000713          	li	a4,0
    80005e74:	000077b7          	lui	a5,0x7
    80005e78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005e7c:	fce7eee3          	bltu	a5,a4,80005e58 <_ZL11workerBodyBPv+0x20>
    80005e80:	00170713          	addi	a4,a4,1
    80005e84:	ff1ff06f          	j	80005e74 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005e88:	00a00793          	li	a5,10
    80005e8c:	04f90663          	beq	s2,a5,80005ed8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005e90:	00190913          	addi	s2,s2,1
    80005e94:	00f00793          	li	a5,15
    80005e98:	0527e463          	bltu	a5,s2,80005ee0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005e9c:	00003517          	auipc	a0,0x3
    80005ea0:	39450513          	addi	a0,a0,916 # 80009230 <CONSOLE_STATUS+0x220>
    80005ea4:	fffff097          	auipc	ra,0xfffff
    80005ea8:	310080e7          	jalr	784(ra) # 800051b4 <_Z11printStringPKc>
    80005eac:	00000613          	li	a2,0
    80005eb0:	00a00593          	li	a1,10
    80005eb4:	0009051b          	sext.w	a0,s2
    80005eb8:	fffff097          	auipc	ra,0xfffff
    80005ebc:	4ac080e7          	jalr	1196(ra) # 80005364 <_Z8printIntiii>
    80005ec0:	00003517          	auipc	a0,0x3
    80005ec4:	5a850513          	addi	a0,a0,1448 # 80009468 <CONSOLE_STATUS+0x458>
    80005ec8:	fffff097          	auipc	ra,0xfffff
    80005ecc:	2ec080e7          	jalr	748(ra) # 800051b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005ed0:	00000493          	li	s1,0
    80005ed4:	f91ff06f          	j	80005e64 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005ed8:	14102ff3          	csrr	t6,sepc
    80005edc:	fb5ff06f          	j	80005e90 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005ee0:	00003517          	auipc	a0,0x3
    80005ee4:	35850513          	addi	a0,a0,856 # 80009238 <CONSOLE_STATUS+0x228>
    80005ee8:	fffff097          	auipc	ra,0xfffff
    80005eec:	2cc080e7          	jalr	716(ra) # 800051b4 <_Z11printStringPKc>
    finishedB = true;
    80005ef0:	00100793          	li	a5,1
    80005ef4:	00006717          	auipc	a4,0x6
    80005ef8:	9af70c23          	sb	a5,-1608(a4) # 8000b8ac <_ZL9finishedB>
    thread_dispatch();
    80005efc:	ffffb097          	auipc	ra,0xffffb
    80005f00:	4e8080e7          	jalr	1256(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80005f04:	01813083          	ld	ra,24(sp)
    80005f08:	01013403          	ld	s0,16(sp)
    80005f0c:	00813483          	ld	s1,8(sp)
    80005f10:	00013903          	ld	s2,0(sp)
    80005f14:	02010113          	addi	sp,sp,32
    80005f18:	00008067          	ret

0000000080005f1c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005f1c:	fe010113          	addi	sp,sp,-32
    80005f20:	00113c23          	sd	ra,24(sp)
    80005f24:	00813823          	sd	s0,16(sp)
    80005f28:	00913423          	sd	s1,8(sp)
    80005f2c:	01213023          	sd	s2,0(sp)
    80005f30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005f34:	00000913          	li	s2,0
    80005f38:	0380006f          	j	80005f70 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005f3c:	ffffb097          	auipc	ra,0xffffb
    80005f40:	4a8080e7          	jalr	1192(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005f44:	00148493          	addi	s1,s1,1
    80005f48:	000027b7          	lui	a5,0x2
    80005f4c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005f50:	0097ee63          	bltu	a5,s1,80005f6c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005f54:	00000713          	li	a4,0
    80005f58:	000077b7          	lui	a5,0x7
    80005f5c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005f60:	fce7eee3          	bltu	a5,a4,80005f3c <_ZL11workerBodyAPv+0x20>
    80005f64:	00170713          	addi	a4,a4,1
    80005f68:	ff1ff06f          	j	80005f58 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005f6c:	00190913          	addi	s2,s2,1
    80005f70:	00900793          	li	a5,9
    80005f74:	0527e063          	bltu	a5,s2,80005fb4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005f78:	00003517          	auipc	a0,0x3
    80005f7c:	2a050513          	addi	a0,a0,672 # 80009218 <CONSOLE_STATUS+0x208>
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	234080e7          	jalr	564(ra) # 800051b4 <_Z11printStringPKc>
    80005f88:	00000613          	li	a2,0
    80005f8c:	00a00593          	li	a1,10
    80005f90:	0009051b          	sext.w	a0,s2
    80005f94:	fffff097          	auipc	ra,0xfffff
    80005f98:	3d0080e7          	jalr	976(ra) # 80005364 <_Z8printIntiii>
    80005f9c:	00003517          	auipc	a0,0x3
    80005fa0:	4cc50513          	addi	a0,a0,1228 # 80009468 <CONSOLE_STATUS+0x458>
    80005fa4:	fffff097          	auipc	ra,0xfffff
    80005fa8:	210080e7          	jalr	528(ra) # 800051b4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005fac:	00000493          	li	s1,0
    80005fb0:	f99ff06f          	j	80005f48 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005fb4:	00003517          	auipc	a0,0x3
    80005fb8:	26c50513          	addi	a0,a0,620 # 80009220 <CONSOLE_STATUS+0x210>
    80005fbc:	fffff097          	auipc	ra,0xfffff
    80005fc0:	1f8080e7          	jalr	504(ra) # 800051b4 <_Z11printStringPKc>
    finishedA = true;
    80005fc4:	00100793          	li	a5,1
    80005fc8:	00006717          	auipc	a4,0x6
    80005fcc:	8ef702a3          	sb	a5,-1819(a4) # 8000b8ad <_ZL9finishedA>
}
    80005fd0:	01813083          	ld	ra,24(sp)
    80005fd4:	01013403          	ld	s0,16(sp)
    80005fd8:	00813483          	ld	s1,8(sp)
    80005fdc:	00013903          	ld	s2,0(sp)
    80005fe0:	02010113          	addi	sp,sp,32
    80005fe4:	00008067          	ret

0000000080005fe8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005fe8:	fd010113          	addi	sp,sp,-48
    80005fec:	02113423          	sd	ra,40(sp)
    80005ff0:	02813023          	sd	s0,32(sp)
    80005ff4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005ff8:	00000613          	li	a2,0
    80005ffc:	00000597          	auipc	a1,0x0
    80006000:	f2058593          	addi	a1,a1,-224 # 80005f1c <_ZL11workerBodyAPv>
    80006004:	fd040513          	addi	a0,s0,-48
    80006008:	ffffb097          	auipc	ra,0xffffb
    8000600c:	320080e7          	jalr	800(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006010:	00003517          	auipc	a0,0x3
    80006014:	2a050513          	addi	a0,a0,672 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006018:	fffff097          	auipc	ra,0xfffff
    8000601c:	19c080e7          	jalr	412(ra) # 800051b4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006020:	00000613          	li	a2,0
    80006024:	00000597          	auipc	a1,0x0
    80006028:	e1458593          	addi	a1,a1,-492 # 80005e38 <_ZL11workerBodyBPv>
    8000602c:	fd840513          	addi	a0,s0,-40
    80006030:	ffffb097          	auipc	ra,0xffffb
    80006034:	2f8080e7          	jalr	760(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006038:	00003517          	auipc	a0,0x3
    8000603c:	29050513          	addi	a0,a0,656 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006040:	fffff097          	auipc	ra,0xfffff
    80006044:	174080e7          	jalr	372(ra) # 800051b4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006048:	00000613          	li	a2,0
    8000604c:	00000597          	auipc	a1,0x0
    80006050:	c6c58593          	addi	a1,a1,-916 # 80005cb8 <_ZL11workerBodyCPv>
    80006054:	fe040513          	addi	a0,s0,-32
    80006058:	ffffb097          	auipc	ra,0xffffb
    8000605c:	2d0080e7          	jalr	720(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006060:	00003517          	auipc	a0,0x3
    80006064:	28050513          	addi	a0,a0,640 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006068:	fffff097          	auipc	ra,0xfffff
    8000606c:	14c080e7          	jalr	332(ra) # 800051b4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006070:	00000613          	li	a2,0
    80006074:	00000597          	auipc	a1,0x0
    80006078:	afc58593          	addi	a1,a1,-1284 # 80005b70 <_ZL11workerBodyDPv>
    8000607c:	fe840513          	addi	a0,s0,-24
    80006080:	ffffb097          	auipc	ra,0xffffb
    80006084:	2a8080e7          	jalr	680(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006088:	00003517          	auipc	a0,0x3
    8000608c:	27050513          	addi	a0,a0,624 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006090:	fffff097          	auipc	ra,0xfffff
    80006094:	124080e7          	jalr	292(ra) # 800051b4 <_Z11printStringPKc>
    80006098:	00c0006f          	j	800060a4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000609c:	ffffb097          	auipc	ra,0xffffb
    800060a0:	348080e7          	jalr	840(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800060a4:	00006797          	auipc	a5,0x6
    800060a8:	8097c783          	lbu	a5,-2039(a5) # 8000b8ad <_ZL9finishedA>
    800060ac:	fe0788e3          	beqz	a5,8000609c <_Z16System_Mode_testv+0xb4>
    800060b0:	00005797          	auipc	a5,0x5
    800060b4:	7fc7c783          	lbu	a5,2044(a5) # 8000b8ac <_ZL9finishedB>
    800060b8:	fe0782e3          	beqz	a5,8000609c <_Z16System_Mode_testv+0xb4>
    800060bc:	00005797          	auipc	a5,0x5
    800060c0:	7ef7c783          	lbu	a5,2031(a5) # 8000b8ab <_ZL9finishedC>
    800060c4:	fc078ce3          	beqz	a5,8000609c <_Z16System_Mode_testv+0xb4>
    800060c8:	00005797          	auipc	a5,0x5
    800060cc:	7e27c783          	lbu	a5,2018(a5) # 8000b8aa <_ZL9finishedD>
    800060d0:	fc0786e3          	beqz	a5,8000609c <_Z16System_Mode_testv+0xb4>
    }

}
    800060d4:	02813083          	ld	ra,40(sp)
    800060d8:	02013403          	ld	s0,32(sp)
    800060dc:	03010113          	addi	sp,sp,48
    800060e0:	00008067          	ret

00000000800060e4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800060e4:	fe010113          	addi	sp,sp,-32
    800060e8:	00113c23          	sd	ra,24(sp)
    800060ec:	00813823          	sd	s0,16(sp)
    800060f0:	00913423          	sd	s1,8(sp)
    800060f4:	01213023          	sd	s2,0(sp)
    800060f8:	02010413          	addi	s0,sp,32
    800060fc:	00050493          	mv	s1,a0
    80006100:	00058913          	mv	s2,a1
    80006104:	0015879b          	addiw	a5,a1,1
    80006108:	0007851b          	sext.w	a0,a5
    8000610c:	00f4a023          	sw	a5,0(s1)
    80006110:	0004a823          	sw	zero,16(s1)
    80006114:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006118:	00251513          	slli	a0,a0,0x2
    8000611c:	ffffb097          	auipc	ra,0xffffb
    80006120:	138080e7          	jalr	312(ra) # 80001254 <_Z9mem_allocm>
    80006124:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006128:	00000593          	li	a1,0
    8000612c:	02048513          	addi	a0,s1,32
    80006130:	ffffb097          	auipc	ra,0xffffb
    80006134:	2d8080e7          	jalr	728(ra) # 80001408 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006138:	00090593          	mv	a1,s2
    8000613c:	01848513          	addi	a0,s1,24
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	2c8080e7          	jalr	712(ra) # 80001408 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006148:	00100593          	li	a1,1
    8000614c:	02848513          	addi	a0,s1,40
    80006150:	ffffb097          	auipc	ra,0xffffb
    80006154:	2b8080e7          	jalr	696(ra) # 80001408 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006158:	00100593          	li	a1,1
    8000615c:	03048513          	addi	a0,s1,48
    80006160:	ffffb097          	auipc	ra,0xffffb
    80006164:	2a8080e7          	jalr	680(ra) # 80001408 <_Z8sem_openPP4_semj>
}
    80006168:	01813083          	ld	ra,24(sp)
    8000616c:	01013403          	ld	s0,16(sp)
    80006170:	00813483          	ld	s1,8(sp)
    80006174:	00013903          	ld	s2,0(sp)
    80006178:	02010113          	addi	sp,sp,32
    8000617c:	00008067          	ret

0000000080006180 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006180:	fe010113          	addi	sp,sp,-32
    80006184:	00113c23          	sd	ra,24(sp)
    80006188:	00813823          	sd	s0,16(sp)
    8000618c:	00913423          	sd	s1,8(sp)
    80006190:	01213023          	sd	s2,0(sp)
    80006194:	02010413          	addi	s0,sp,32
    80006198:	00050493          	mv	s1,a0
    8000619c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800061a0:	01853503          	ld	a0,24(a0)
    800061a4:	ffffb097          	auipc	ra,0xffffb
    800061a8:	2d8080e7          	jalr	728(ra) # 8000147c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800061ac:	0304b503          	ld	a0,48(s1)
    800061b0:	ffffb097          	auipc	ra,0xffffb
    800061b4:	2cc080e7          	jalr	716(ra) # 8000147c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800061b8:	0084b783          	ld	a5,8(s1)
    800061bc:	0144a703          	lw	a4,20(s1)
    800061c0:	00271713          	slli	a4,a4,0x2
    800061c4:	00e787b3          	add	a5,a5,a4
    800061c8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800061cc:	0144a783          	lw	a5,20(s1)
    800061d0:	0017879b          	addiw	a5,a5,1
    800061d4:	0004a703          	lw	a4,0(s1)
    800061d8:	02e7e7bb          	remw	a5,a5,a4
    800061dc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800061e0:	0304b503          	ld	a0,48(s1)
    800061e4:	ffffb097          	auipc	ra,0xffffb
    800061e8:	2d0080e7          	jalr	720(ra) # 800014b4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800061ec:	0204b503          	ld	a0,32(s1)
    800061f0:	ffffb097          	auipc	ra,0xffffb
    800061f4:	2c4080e7          	jalr	708(ra) # 800014b4 <_Z10sem_signalP4_sem>

}
    800061f8:	01813083          	ld	ra,24(sp)
    800061fc:	01013403          	ld	s0,16(sp)
    80006200:	00813483          	ld	s1,8(sp)
    80006204:	00013903          	ld	s2,0(sp)
    80006208:	02010113          	addi	sp,sp,32
    8000620c:	00008067          	ret

0000000080006210 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006210:	fe010113          	addi	sp,sp,-32
    80006214:	00113c23          	sd	ra,24(sp)
    80006218:	00813823          	sd	s0,16(sp)
    8000621c:	00913423          	sd	s1,8(sp)
    80006220:	01213023          	sd	s2,0(sp)
    80006224:	02010413          	addi	s0,sp,32
    80006228:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000622c:	02053503          	ld	a0,32(a0)
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	24c080e7          	jalr	588(ra) # 8000147c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006238:	0284b503          	ld	a0,40(s1)
    8000623c:	ffffb097          	auipc	ra,0xffffb
    80006240:	240080e7          	jalr	576(ra) # 8000147c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006244:	0084b703          	ld	a4,8(s1)
    80006248:	0104a783          	lw	a5,16(s1)
    8000624c:	00279693          	slli	a3,a5,0x2
    80006250:	00d70733          	add	a4,a4,a3
    80006254:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006258:	0017879b          	addiw	a5,a5,1
    8000625c:	0004a703          	lw	a4,0(s1)
    80006260:	02e7e7bb          	remw	a5,a5,a4
    80006264:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006268:	0284b503          	ld	a0,40(s1)
    8000626c:	ffffb097          	auipc	ra,0xffffb
    80006270:	248080e7          	jalr	584(ra) # 800014b4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006274:	0184b503          	ld	a0,24(s1)
    80006278:	ffffb097          	auipc	ra,0xffffb
    8000627c:	23c080e7          	jalr	572(ra) # 800014b4 <_Z10sem_signalP4_sem>

    return ret;
}
    80006280:	00090513          	mv	a0,s2
    80006284:	01813083          	ld	ra,24(sp)
    80006288:	01013403          	ld	s0,16(sp)
    8000628c:	00813483          	ld	s1,8(sp)
    80006290:	00013903          	ld	s2,0(sp)
    80006294:	02010113          	addi	sp,sp,32
    80006298:	00008067          	ret

000000008000629c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000629c:	fe010113          	addi	sp,sp,-32
    800062a0:	00113c23          	sd	ra,24(sp)
    800062a4:	00813823          	sd	s0,16(sp)
    800062a8:	00913423          	sd	s1,8(sp)
    800062ac:	01213023          	sd	s2,0(sp)
    800062b0:	02010413          	addi	s0,sp,32
    800062b4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800062b8:	02853503          	ld	a0,40(a0)
    800062bc:	ffffb097          	auipc	ra,0xffffb
    800062c0:	1c0080e7          	jalr	448(ra) # 8000147c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800062c4:	0304b503          	ld	a0,48(s1)
    800062c8:	ffffb097          	auipc	ra,0xffffb
    800062cc:	1b4080e7          	jalr	436(ra) # 8000147c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800062d0:	0144a783          	lw	a5,20(s1)
    800062d4:	0104a903          	lw	s2,16(s1)
    800062d8:	0327ce63          	blt	a5,s2,80006314 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800062dc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800062e0:	0304b503          	ld	a0,48(s1)
    800062e4:	ffffb097          	auipc	ra,0xffffb
    800062e8:	1d0080e7          	jalr	464(ra) # 800014b4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800062ec:	0284b503          	ld	a0,40(s1)
    800062f0:	ffffb097          	auipc	ra,0xffffb
    800062f4:	1c4080e7          	jalr	452(ra) # 800014b4 <_Z10sem_signalP4_sem>

    return ret;
}
    800062f8:	00090513          	mv	a0,s2
    800062fc:	01813083          	ld	ra,24(sp)
    80006300:	01013403          	ld	s0,16(sp)
    80006304:	00813483          	ld	s1,8(sp)
    80006308:	00013903          	ld	s2,0(sp)
    8000630c:	02010113          	addi	sp,sp,32
    80006310:	00008067          	ret
        ret = cap - head + tail;
    80006314:	0004a703          	lw	a4,0(s1)
    80006318:	4127093b          	subw	s2,a4,s2
    8000631c:	00f9093b          	addw	s2,s2,a5
    80006320:	fc1ff06f          	j	800062e0 <_ZN6Buffer6getCntEv+0x44>

0000000080006324 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006324:	fe010113          	addi	sp,sp,-32
    80006328:	00113c23          	sd	ra,24(sp)
    8000632c:	00813823          	sd	s0,16(sp)
    80006330:	00913423          	sd	s1,8(sp)
    80006334:	02010413          	addi	s0,sp,32
    80006338:	00050493          	mv	s1,a0
    putc('\n');
    8000633c:	00a00513          	li	a0,10
    80006340:	ffffb097          	auipc	ra,0xffffb
    80006344:	218080e7          	jalr	536(ra) # 80001558 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006348:	00003517          	auipc	a0,0x3
    8000634c:	fc850513          	addi	a0,a0,-56 # 80009310 <CONSOLE_STATUS+0x300>
    80006350:	fffff097          	auipc	ra,0xfffff
    80006354:	e64080e7          	jalr	-412(ra) # 800051b4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006358:	00048513          	mv	a0,s1
    8000635c:	00000097          	auipc	ra,0x0
    80006360:	f40080e7          	jalr	-192(ra) # 8000629c <_ZN6Buffer6getCntEv>
    80006364:	02a05c63          	blez	a0,8000639c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006368:	0084b783          	ld	a5,8(s1)
    8000636c:	0104a703          	lw	a4,16(s1)
    80006370:	00271713          	slli	a4,a4,0x2
    80006374:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006378:	0007c503          	lbu	a0,0(a5)
    8000637c:	ffffb097          	auipc	ra,0xffffb
    80006380:	1dc080e7          	jalr	476(ra) # 80001558 <_Z4putcc>
        head = (head + 1) % cap;
    80006384:	0104a783          	lw	a5,16(s1)
    80006388:	0017879b          	addiw	a5,a5,1
    8000638c:	0004a703          	lw	a4,0(s1)
    80006390:	02e7e7bb          	remw	a5,a5,a4
    80006394:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006398:	fc1ff06f          	j	80006358 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000639c:	02100513          	li	a0,33
    800063a0:	ffffb097          	auipc	ra,0xffffb
    800063a4:	1b8080e7          	jalr	440(ra) # 80001558 <_Z4putcc>
    putc('\n');
    800063a8:	00a00513          	li	a0,10
    800063ac:	ffffb097          	auipc	ra,0xffffb
    800063b0:	1ac080e7          	jalr	428(ra) # 80001558 <_Z4putcc>
    mem_free(buffer);
    800063b4:	0084b503          	ld	a0,8(s1)
    800063b8:	ffffb097          	auipc	ra,0xffffb
    800063bc:	ed8080e7          	jalr	-296(ra) # 80001290 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800063c0:	0204b503          	ld	a0,32(s1)
    800063c4:	ffffb097          	auipc	ra,0xffffb
    800063c8:	080080e7          	jalr	128(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800063cc:	0184b503          	ld	a0,24(s1)
    800063d0:	ffffb097          	auipc	ra,0xffffb
    800063d4:	074080e7          	jalr	116(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800063d8:	0304b503          	ld	a0,48(s1)
    800063dc:	ffffb097          	auipc	ra,0xffffb
    800063e0:	068080e7          	jalr	104(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800063e4:	0284b503          	ld	a0,40(s1)
    800063e8:	ffffb097          	auipc	ra,0xffffb
    800063ec:	05c080e7          	jalr	92(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    800063f0:	01813083          	ld	ra,24(sp)
    800063f4:	01013403          	ld	s0,16(sp)
    800063f8:	00813483          	ld	s1,8(sp)
    800063fc:	02010113          	addi	sp,sp,32
    80006400:	00008067          	ret

0000000080006404 <start>:
    80006404:	ff010113          	addi	sp,sp,-16
    80006408:	00813423          	sd	s0,8(sp)
    8000640c:	01010413          	addi	s0,sp,16
    80006410:	300027f3          	csrr	a5,mstatus
    80006414:	ffffe737          	lui	a4,0xffffe
    80006418:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1cef>
    8000641c:	00e7f7b3          	and	a5,a5,a4
    80006420:	00001737          	lui	a4,0x1
    80006424:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006428:	00e7e7b3          	or	a5,a5,a4
    8000642c:	30079073          	csrw	mstatus,a5
    80006430:	00000797          	auipc	a5,0x0
    80006434:	16078793          	addi	a5,a5,352 # 80006590 <system_main>
    80006438:	34179073          	csrw	mepc,a5
    8000643c:	00000793          	li	a5,0
    80006440:	18079073          	csrw	satp,a5
    80006444:	000107b7          	lui	a5,0x10
    80006448:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000644c:	30279073          	csrw	medeleg,a5
    80006450:	30379073          	csrw	mideleg,a5
    80006454:	104027f3          	csrr	a5,sie
    80006458:	2227e793          	ori	a5,a5,546
    8000645c:	10479073          	csrw	sie,a5
    80006460:	fff00793          	li	a5,-1
    80006464:	00a7d793          	srli	a5,a5,0xa
    80006468:	3b079073          	csrw	pmpaddr0,a5
    8000646c:	00f00793          	li	a5,15
    80006470:	3a079073          	csrw	pmpcfg0,a5
    80006474:	f14027f3          	csrr	a5,mhartid
    80006478:	0200c737          	lui	a4,0x200c
    8000647c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006480:	0007869b          	sext.w	a3,a5
    80006484:	00269713          	slli	a4,a3,0x2
    80006488:	000f4637          	lui	a2,0xf4
    8000648c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006490:	00d70733          	add	a4,a4,a3
    80006494:	0037979b          	slliw	a5,a5,0x3
    80006498:	020046b7          	lui	a3,0x2004
    8000649c:	00d787b3          	add	a5,a5,a3
    800064a0:	00c585b3          	add	a1,a1,a2
    800064a4:	00371693          	slli	a3,a4,0x3
    800064a8:	00005717          	auipc	a4,0x5
    800064ac:	40870713          	addi	a4,a4,1032 # 8000b8b0 <timer_scratch>
    800064b0:	00b7b023          	sd	a1,0(a5)
    800064b4:	00d70733          	add	a4,a4,a3
    800064b8:	00f73c23          	sd	a5,24(a4)
    800064bc:	02c73023          	sd	a2,32(a4)
    800064c0:	34071073          	csrw	mscratch,a4
    800064c4:	00000797          	auipc	a5,0x0
    800064c8:	6ec78793          	addi	a5,a5,1772 # 80006bb0 <timervec>
    800064cc:	30579073          	csrw	mtvec,a5
    800064d0:	300027f3          	csrr	a5,mstatus
    800064d4:	0087e793          	ori	a5,a5,8
    800064d8:	30079073          	csrw	mstatus,a5
    800064dc:	304027f3          	csrr	a5,mie
    800064e0:	0807e793          	ori	a5,a5,128
    800064e4:	30479073          	csrw	mie,a5
    800064e8:	f14027f3          	csrr	a5,mhartid
    800064ec:	0007879b          	sext.w	a5,a5
    800064f0:	00078213          	mv	tp,a5
    800064f4:	30200073          	mret
    800064f8:	00813403          	ld	s0,8(sp)
    800064fc:	01010113          	addi	sp,sp,16
    80006500:	00008067          	ret

0000000080006504 <timerinit>:
    80006504:	ff010113          	addi	sp,sp,-16
    80006508:	00813423          	sd	s0,8(sp)
    8000650c:	01010413          	addi	s0,sp,16
    80006510:	f14027f3          	csrr	a5,mhartid
    80006514:	0200c737          	lui	a4,0x200c
    80006518:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000651c:	0007869b          	sext.w	a3,a5
    80006520:	00269713          	slli	a4,a3,0x2
    80006524:	000f4637          	lui	a2,0xf4
    80006528:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000652c:	00d70733          	add	a4,a4,a3
    80006530:	0037979b          	slliw	a5,a5,0x3
    80006534:	020046b7          	lui	a3,0x2004
    80006538:	00d787b3          	add	a5,a5,a3
    8000653c:	00c585b3          	add	a1,a1,a2
    80006540:	00371693          	slli	a3,a4,0x3
    80006544:	00005717          	auipc	a4,0x5
    80006548:	36c70713          	addi	a4,a4,876 # 8000b8b0 <timer_scratch>
    8000654c:	00b7b023          	sd	a1,0(a5)
    80006550:	00d70733          	add	a4,a4,a3
    80006554:	00f73c23          	sd	a5,24(a4)
    80006558:	02c73023          	sd	a2,32(a4)
    8000655c:	34071073          	csrw	mscratch,a4
    80006560:	00000797          	auipc	a5,0x0
    80006564:	65078793          	addi	a5,a5,1616 # 80006bb0 <timervec>
    80006568:	30579073          	csrw	mtvec,a5
    8000656c:	300027f3          	csrr	a5,mstatus
    80006570:	0087e793          	ori	a5,a5,8
    80006574:	30079073          	csrw	mstatus,a5
    80006578:	304027f3          	csrr	a5,mie
    8000657c:	0807e793          	ori	a5,a5,128
    80006580:	30479073          	csrw	mie,a5
    80006584:	00813403          	ld	s0,8(sp)
    80006588:	01010113          	addi	sp,sp,16
    8000658c:	00008067          	ret

0000000080006590 <system_main>:
    80006590:	fe010113          	addi	sp,sp,-32
    80006594:	00813823          	sd	s0,16(sp)
    80006598:	00913423          	sd	s1,8(sp)
    8000659c:	00113c23          	sd	ra,24(sp)
    800065a0:	02010413          	addi	s0,sp,32
    800065a4:	00000097          	auipc	ra,0x0
    800065a8:	0c4080e7          	jalr	196(ra) # 80006668 <cpuid>
    800065ac:	00005497          	auipc	s1,0x5
    800065b0:	22448493          	addi	s1,s1,548 # 8000b7d0 <started>
    800065b4:	02050263          	beqz	a0,800065d8 <system_main+0x48>
    800065b8:	0004a783          	lw	a5,0(s1)
    800065bc:	0007879b          	sext.w	a5,a5
    800065c0:	fe078ce3          	beqz	a5,800065b8 <system_main+0x28>
    800065c4:	0ff0000f          	fence
    800065c8:	00003517          	auipc	a0,0x3
    800065cc:	01850513          	addi	a0,a0,24 # 800095e0 <CONSOLE_STATUS+0x5d0>
    800065d0:	00001097          	auipc	ra,0x1
    800065d4:	a7c080e7          	jalr	-1412(ra) # 8000704c <panic>
    800065d8:	00001097          	auipc	ra,0x1
    800065dc:	9d0080e7          	jalr	-1584(ra) # 80006fa8 <consoleinit>
    800065e0:	00001097          	auipc	ra,0x1
    800065e4:	15c080e7          	jalr	348(ra) # 8000773c <printfinit>
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	e8050513          	addi	a0,a0,-384 # 80009468 <CONSOLE_STATUS+0x458>
    800065f0:	00001097          	auipc	ra,0x1
    800065f4:	ab8080e7          	jalr	-1352(ra) # 800070a8 <__printf>
    800065f8:	00003517          	auipc	a0,0x3
    800065fc:	fb850513          	addi	a0,a0,-72 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006600:	00001097          	auipc	ra,0x1
    80006604:	aa8080e7          	jalr	-1368(ra) # 800070a8 <__printf>
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	e6050513          	addi	a0,a0,-416 # 80009468 <CONSOLE_STATUS+0x458>
    80006610:	00001097          	auipc	ra,0x1
    80006614:	a98080e7          	jalr	-1384(ra) # 800070a8 <__printf>
    80006618:	00001097          	auipc	ra,0x1
    8000661c:	4b0080e7          	jalr	1200(ra) # 80007ac8 <kinit>
    80006620:	00000097          	auipc	ra,0x0
    80006624:	148080e7          	jalr	328(ra) # 80006768 <trapinit>
    80006628:	00000097          	auipc	ra,0x0
    8000662c:	16c080e7          	jalr	364(ra) # 80006794 <trapinithart>
    80006630:	00000097          	auipc	ra,0x0
    80006634:	5c0080e7          	jalr	1472(ra) # 80006bf0 <plicinit>
    80006638:	00000097          	auipc	ra,0x0
    8000663c:	5e0080e7          	jalr	1504(ra) # 80006c18 <plicinithart>
    80006640:	00000097          	auipc	ra,0x0
    80006644:	078080e7          	jalr	120(ra) # 800066b8 <userinit>
    80006648:	0ff0000f          	fence
    8000664c:	00100793          	li	a5,1
    80006650:	00003517          	auipc	a0,0x3
    80006654:	f7850513          	addi	a0,a0,-136 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006658:	00f4a023          	sw	a5,0(s1)
    8000665c:	00001097          	auipc	ra,0x1
    80006660:	a4c080e7          	jalr	-1460(ra) # 800070a8 <__printf>
    80006664:	0000006f          	j	80006664 <system_main+0xd4>

0000000080006668 <cpuid>:
    80006668:	ff010113          	addi	sp,sp,-16
    8000666c:	00813423          	sd	s0,8(sp)
    80006670:	01010413          	addi	s0,sp,16
    80006674:	00020513          	mv	a0,tp
    80006678:	00813403          	ld	s0,8(sp)
    8000667c:	0005051b          	sext.w	a0,a0
    80006680:	01010113          	addi	sp,sp,16
    80006684:	00008067          	ret

0000000080006688 <mycpu>:
    80006688:	ff010113          	addi	sp,sp,-16
    8000668c:	00813423          	sd	s0,8(sp)
    80006690:	01010413          	addi	s0,sp,16
    80006694:	00020793          	mv	a5,tp
    80006698:	00813403          	ld	s0,8(sp)
    8000669c:	0007879b          	sext.w	a5,a5
    800066a0:	00779793          	slli	a5,a5,0x7
    800066a4:	00006517          	auipc	a0,0x6
    800066a8:	23c50513          	addi	a0,a0,572 # 8000c8e0 <cpus>
    800066ac:	00f50533          	add	a0,a0,a5
    800066b0:	01010113          	addi	sp,sp,16
    800066b4:	00008067          	ret

00000000800066b8 <userinit>:
    800066b8:	ff010113          	addi	sp,sp,-16
    800066bc:	00813423          	sd	s0,8(sp)
    800066c0:	01010413          	addi	s0,sp,16
    800066c4:	00813403          	ld	s0,8(sp)
    800066c8:	01010113          	addi	sp,sp,16
    800066cc:	ffffb317          	auipc	t1,0xffffb
    800066d0:	1cc30067          	jr	460(t1) # 80001898 <main>

00000000800066d4 <either_copyout>:
    800066d4:	ff010113          	addi	sp,sp,-16
    800066d8:	00813023          	sd	s0,0(sp)
    800066dc:	00113423          	sd	ra,8(sp)
    800066e0:	01010413          	addi	s0,sp,16
    800066e4:	02051663          	bnez	a0,80006710 <either_copyout+0x3c>
    800066e8:	00058513          	mv	a0,a1
    800066ec:	00060593          	mv	a1,a2
    800066f0:	0006861b          	sext.w	a2,a3
    800066f4:	00002097          	auipc	ra,0x2
    800066f8:	c60080e7          	jalr	-928(ra) # 80008354 <__memmove>
    800066fc:	00813083          	ld	ra,8(sp)
    80006700:	00013403          	ld	s0,0(sp)
    80006704:	00000513          	li	a0,0
    80006708:	01010113          	addi	sp,sp,16
    8000670c:	00008067          	ret
    80006710:	00003517          	auipc	a0,0x3
    80006714:	ef850513          	addi	a0,a0,-264 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006718:	00001097          	auipc	ra,0x1
    8000671c:	934080e7          	jalr	-1740(ra) # 8000704c <panic>

0000000080006720 <either_copyin>:
    80006720:	ff010113          	addi	sp,sp,-16
    80006724:	00813023          	sd	s0,0(sp)
    80006728:	00113423          	sd	ra,8(sp)
    8000672c:	01010413          	addi	s0,sp,16
    80006730:	02059463          	bnez	a1,80006758 <either_copyin+0x38>
    80006734:	00060593          	mv	a1,a2
    80006738:	0006861b          	sext.w	a2,a3
    8000673c:	00002097          	auipc	ra,0x2
    80006740:	c18080e7          	jalr	-1000(ra) # 80008354 <__memmove>
    80006744:	00813083          	ld	ra,8(sp)
    80006748:	00013403          	ld	s0,0(sp)
    8000674c:	00000513          	li	a0,0
    80006750:	01010113          	addi	sp,sp,16
    80006754:	00008067          	ret
    80006758:	00003517          	auipc	a0,0x3
    8000675c:	ed850513          	addi	a0,a0,-296 # 80009630 <CONSOLE_STATUS+0x620>
    80006760:	00001097          	auipc	ra,0x1
    80006764:	8ec080e7          	jalr	-1812(ra) # 8000704c <panic>

0000000080006768 <trapinit>:
    80006768:	ff010113          	addi	sp,sp,-16
    8000676c:	00813423          	sd	s0,8(sp)
    80006770:	01010413          	addi	s0,sp,16
    80006774:	00813403          	ld	s0,8(sp)
    80006778:	00003597          	auipc	a1,0x3
    8000677c:	ee058593          	addi	a1,a1,-288 # 80009658 <CONSOLE_STATUS+0x648>
    80006780:	00006517          	auipc	a0,0x6
    80006784:	1e050513          	addi	a0,a0,480 # 8000c960 <tickslock>
    80006788:	01010113          	addi	sp,sp,16
    8000678c:	00001317          	auipc	t1,0x1
    80006790:	5cc30067          	jr	1484(t1) # 80007d58 <initlock>

0000000080006794 <trapinithart>:
    80006794:	ff010113          	addi	sp,sp,-16
    80006798:	00813423          	sd	s0,8(sp)
    8000679c:	01010413          	addi	s0,sp,16
    800067a0:	00000797          	auipc	a5,0x0
    800067a4:	30078793          	addi	a5,a5,768 # 80006aa0 <kernelvec>
    800067a8:	10579073          	csrw	stvec,a5
    800067ac:	00813403          	ld	s0,8(sp)
    800067b0:	01010113          	addi	sp,sp,16
    800067b4:	00008067          	ret

00000000800067b8 <usertrap>:
    800067b8:	ff010113          	addi	sp,sp,-16
    800067bc:	00813423          	sd	s0,8(sp)
    800067c0:	01010413          	addi	s0,sp,16
    800067c4:	00813403          	ld	s0,8(sp)
    800067c8:	01010113          	addi	sp,sp,16
    800067cc:	00008067          	ret

00000000800067d0 <usertrapret>:
    800067d0:	ff010113          	addi	sp,sp,-16
    800067d4:	00813423          	sd	s0,8(sp)
    800067d8:	01010413          	addi	s0,sp,16
    800067dc:	00813403          	ld	s0,8(sp)
    800067e0:	01010113          	addi	sp,sp,16
    800067e4:	00008067          	ret

00000000800067e8 <kerneltrap>:
    800067e8:	fe010113          	addi	sp,sp,-32
    800067ec:	00813823          	sd	s0,16(sp)
    800067f0:	00113c23          	sd	ra,24(sp)
    800067f4:	00913423          	sd	s1,8(sp)
    800067f8:	02010413          	addi	s0,sp,32
    800067fc:	142025f3          	csrr	a1,scause
    80006800:	100027f3          	csrr	a5,sstatus
    80006804:	0027f793          	andi	a5,a5,2
    80006808:	10079c63          	bnez	a5,80006920 <kerneltrap+0x138>
    8000680c:	142027f3          	csrr	a5,scause
    80006810:	0207ce63          	bltz	a5,8000684c <kerneltrap+0x64>
    80006814:	00003517          	auipc	a0,0x3
    80006818:	e8c50513          	addi	a0,a0,-372 # 800096a0 <CONSOLE_STATUS+0x690>
    8000681c:	00001097          	auipc	ra,0x1
    80006820:	88c080e7          	jalr	-1908(ra) # 800070a8 <__printf>
    80006824:	141025f3          	csrr	a1,sepc
    80006828:	14302673          	csrr	a2,stval
    8000682c:	00003517          	auipc	a0,0x3
    80006830:	e8450513          	addi	a0,a0,-380 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006834:	00001097          	auipc	ra,0x1
    80006838:	874080e7          	jalr	-1932(ra) # 800070a8 <__printf>
    8000683c:	00003517          	auipc	a0,0x3
    80006840:	e8c50513          	addi	a0,a0,-372 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006844:	00001097          	auipc	ra,0x1
    80006848:	808080e7          	jalr	-2040(ra) # 8000704c <panic>
    8000684c:	0ff7f713          	andi	a4,a5,255
    80006850:	00900693          	li	a3,9
    80006854:	04d70063          	beq	a4,a3,80006894 <kerneltrap+0xac>
    80006858:	fff00713          	li	a4,-1
    8000685c:	03f71713          	slli	a4,a4,0x3f
    80006860:	00170713          	addi	a4,a4,1
    80006864:	fae798e3          	bne	a5,a4,80006814 <kerneltrap+0x2c>
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	e00080e7          	jalr	-512(ra) # 80006668 <cpuid>
    80006870:	06050663          	beqz	a0,800068dc <kerneltrap+0xf4>
    80006874:	144027f3          	csrr	a5,sip
    80006878:	ffd7f793          	andi	a5,a5,-3
    8000687c:	14479073          	csrw	sip,a5
    80006880:	01813083          	ld	ra,24(sp)
    80006884:	01013403          	ld	s0,16(sp)
    80006888:	00813483          	ld	s1,8(sp)
    8000688c:	02010113          	addi	sp,sp,32
    80006890:	00008067          	ret
    80006894:	00000097          	auipc	ra,0x0
    80006898:	3d0080e7          	jalr	976(ra) # 80006c64 <plic_claim>
    8000689c:	00a00793          	li	a5,10
    800068a0:	00050493          	mv	s1,a0
    800068a4:	06f50863          	beq	a0,a5,80006914 <kerneltrap+0x12c>
    800068a8:	fc050ce3          	beqz	a0,80006880 <kerneltrap+0x98>
    800068ac:	00050593          	mv	a1,a0
    800068b0:	00003517          	auipc	a0,0x3
    800068b4:	dd050513          	addi	a0,a0,-560 # 80009680 <CONSOLE_STATUS+0x670>
    800068b8:	00000097          	auipc	ra,0x0
    800068bc:	7f0080e7          	jalr	2032(ra) # 800070a8 <__printf>
    800068c0:	01013403          	ld	s0,16(sp)
    800068c4:	01813083          	ld	ra,24(sp)
    800068c8:	00048513          	mv	a0,s1
    800068cc:	00813483          	ld	s1,8(sp)
    800068d0:	02010113          	addi	sp,sp,32
    800068d4:	00000317          	auipc	t1,0x0
    800068d8:	3c830067          	jr	968(t1) # 80006c9c <plic_complete>
    800068dc:	00006517          	auipc	a0,0x6
    800068e0:	08450513          	addi	a0,a0,132 # 8000c960 <tickslock>
    800068e4:	00001097          	auipc	ra,0x1
    800068e8:	498080e7          	jalr	1176(ra) # 80007d7c <acquire>
    800068ec:	00005717          	auipc	a4,0x5
    800068f0:	ee870713          	addi	a4,a4,-280 # 8000b7d4 <ticks>
    800068f4:	00072783          	lw	a5,0(a4)
    800068f8:	00006517          	auipc	a0,0x6
    800068fc:	06850513          	addi	a0,a0,104 # 8000c960 <tickslock>
    80006900:	0017879b          	addiw	a5,a5,1
    80006904:	00f72023          	sw	a5,0(a4)
    80006908:	00001097          	auipc	ra,0x1
    8000690c:	540080e7          	jalr	1344(ra) # 80007e48 <release>
    80006910:	f65ff06f          	j	80006874 <kerneltrap+0x8c>
    80006914:	00001097          	auipc	ra,0x1
    80006918:	09c080e7          	jalr	156(ra) # 800079b0 <uartintr>
    8000691c:	fa5ff06f          	j	800068c0 <kerneltrap+0xd8>
    80006920:	00003517          	auipc	a0,0x3
    80006924:	d4050513          	addi	a0,a0,-704 # 80009660 <CONSOLE_STATUS+0x650>
    80006928:	00000097          	auipc	ra,0x0
    8000692c:	724080e7          	jalr	1828(ra) # 8000704c <panic>

0000000080006930 <clockintr>:
    80006930:	fe010113          	addi	sp,sp,-32
    80006934:	00813823          	sd	s0,16(sp)
    80006938:	00913423          	sd	s1,8(sp)
    8000693c:	00113c23          	sd	ra,24(sp)
    80006940:	02010413          	addi	s0,sp,32
    80006944:	00006497          	auipc	s1,0x6
    80006948:	01c48493          	addi	s1,s1,28 # 8000c960 <tickslock>
    8000694c:	00048513          	mv	a0,s1
    80006950:	00001097          	auipc	ra,0x1
    80006954:	42c080e7          	jalr	1068(ra) # 80007d7c <acquire>
    80006958:	00005717          	auipc	a4,0x5
    8000695c:	e7c70713          	addi	a4,a4,-388 # 8000b7d4 <ticks>
    80006960:	00072783          	lw	a5,0(a4)
    80006964:	01013403          	ld	s0,16(sp)
    80006968:	01813083          	ld	ra,24(sp)
    8000696c:	00048513          	mv	a0,s1
    80006970:	0017879b          	addiw	a5,a5,1
    80006974:	00813483          	ld	s1,8(sp)
    80006978:	00f72023          	sw	a5,0(a4)
    8000697c:	02010113          	addi	sp,sp,32
    80006980:	00001317          	auipc	t1,0x1
    80006984:	4c830067          	jr	1224(t1) # 80007e48 <release>

0000000080006988 <devintr>:
    80006988:	142027f3          	csrr	a5,scause
    8000698c:	00000513          	li	a0,0
    80006990:	0007c463          	bltz	a5,80006998 <devintr+0x10>
    80006994:	00008067          	ret
    80006998:	fe010113          	addi	sp,sp,-32
    8000699c:	00813823          	sd	s0,16(sp)
    800069a0:	00113c23          	sd	ra,24(sp)
    800069a4:	00913423          	sd	s1,8(sp)
    800069a8:	02010413          	addi	s0,sp,32
    800069ac:	0ff7f713          	andi	a4,a5,255
    800069b0:	00900693          	li	a3,9
    800069b4:	04d70c63          	beq	a4,a3,80006a0c <devintr+0x84>
    800069b8:	fff00713          	li	a4,-1
    800069bc:	03f71713          	slli	a4,a4,0x3f
    800069c0:	00170713          	addi	a4,a4,1
    800069c4:	00e78c63          	beq	a5,a4,800069dc <devintr+0x54>
    800069c8:	01813083          	ld	ra,24(sp)
    800069cc:	01013403          	ld	s0,16(sp)
    800069d0:	00813483          	ld	s1,8(sp)
    800069d4:	02010113          	addi	sp,sp,32
    800069d8:	00008067          	ret
    800069dc:	00000097          	auipc	ra,0x0
    800069e0:	c8c080e7          	jalr	-884(ra) # 80006668 <cpuid>
    800069e4:	06050663          	beqz	a0,80006a50 <devintr+0xc8>
    800069e8:	144027f3          	csrr	a5,sip
    800069ec:	ffd7f793          	andi	a5,a5,-3
    800069f0:	14479073          	csrw	sip,a5
    800069f4:	01813083          	ld	ra,24(sp)
    800069f8:	01013403          	ld	s0,16(sp)
    800069fc:	00813483          	ld	s1,8(sp)
    80006a00:	00200513          	li	a0,2
    80006a04:	02010113          	addi	sp,sp,32
    80006a08:	00008067          	ret
    80006a0c:	00000097          	auipc	ra,0x0
    80006a10:	258080e7          	jalr	600(ra) # 80006c64 <plic_claim>
    80006a14:	00a00793          	li	a5,10
    80006a18:	00050493          	mv	s1,a0
    80006a1c:	06f50663          	beq	a0,a5,80006a88 <devintr+0x100>
    80006a20:	00100513          	li	a0,1
    80006a24:	fa0482e3          	beqz	s1,800069c8 <devintr+0x40>
    80006a28:	00048593          	mv	a1,s1
    80006a2c:	00003517          	auipc	a0,0x3
    80006a30:	c5450513          	addi	a0,a0,-940 # 80009680 <CONSOLE_STATUS+0x670>
    80006a34:	00000097          	auipc	ra,0x0
    80006a38:	674080e7          	jalr	1652(ra) # 800070a8 <__printf>
    80006a3c:	00048513          	mv	a0,s1
    80006a40:	00000097          	auipc	ra,0x0
    80006a44:	25c080e7          	jalr	604(ra) # 80006c9c <plic_complete>
    80006a48:	00100513          	li	a0,1
    80006a4c:	f7dff06f          	j	800069c8 <devintr+0x40>
    80006a50:	00006517          	auipc	a0,0x6
    80006a54:	f1050513          	addi	a0,a0,-240 # 8000c960 <tickslock>
    80006a58:	00001097          	auipc	ra,0x1
    80006a5c:	324080e7          	jalr	804(ra) # 80007d7c <acquire>
    80006a60:	00005717          	auipc	a4,0x5
    80006a64:	d7470713          	addi	a4,a4,-652 # 8000b7d4 <ticks>
    80006a68:	00072783          	lw	a5,0(a4)
    80006a6c:	00006517          	auipc	a0,0x6
    80006a70:	ef450513          	addi	a0,a0,-268 # 8000c960 <tickslock>
    80006a74:	0017879b          	addiw	a5,a5,1
    80006a78:	00f72023          	sw	a5,0(a4)
    80006a7c:	00001097          	auipc	ra,0x1
    80006a80:	3cc080e7          	jalr	972(ra) # 80007e48 <release>
    80006a84:	f65ff06f          	j	800069e8 <devintr+0x60>
    80006a88:	00001097          	auipc	ra,0x1
    80006a8c:	f28080e7          	jalr	-216(ra) # 800079b0 <uartintr>
    80006a90:	fadff06f          	j	80006a3c <devintr+0xb4>
	...

0000000080006aa0 <kernelvec>:
    80006aa0:	f0010113          	addi	sp,sp,-256
    80006aa4:	00113023          	sd	ra,0(sp)
    80006aa8:	00213423          	sd	sp,8(sp)
    80006aac:	00313823          	sd	gp,16(sp)
    80006ab0:	00413c23          	sd	tp,24(sp)
    80006ab4:	02513023          	sd	t0,32(sp)
    80006ab8:	02613423          	sd	t1,40(sp)
    80006abc:	02713823          	sd	t2,48(sp)
    80006ac0:	02813c23          	sd	s0,56(sp)
    80006ac4:	04913023          	sd	s1,64(sp)
    80006ac8:	04a13423          	sd	a0,72(sp)
    80006acc:	04b13823          	sd	a1,80(sp)
    80006ad0:	04c13c23          	sd	a2,88(sp)
    80006ad4:	06d13023          	sd	a3,96(sp)
    80006ad8:	06e13423          	sd	a4,104(sp)
    80006adc:	06f13823          	sd	a5,112(sp)
    80006ae0:	07013c23          	sd	a6,120(sp)
    80006ae4:	09113023          	sd	a7,128(sp)
    80006ae8:	09213423          	sd	s2,136(sp)
    80006aec:	09313823          	sd	s3,144(sp)
    80006af0:	09413c23          	sd	s4,152(sp)
    80006af4:	0b513023          	sd	s5,160(sp)
    80006af8:	0b613423          	sd	s6,168(sp)
    80006afc:	0b713823          	sd	s7,176(sp)
    80006b00:	0b813c23          	sd	s8,184(sp)
    80006b04:	0d913023          	sd	s9,192(sp)
    80006b08:	0da13423          	sd	s10,200(sp)
    80006b0c:	0db13823          	sd	s11,208(sp)
    80006b10:	0dc13c23          	sd	t3,216(sp)
    80006b14:	0fd13023          	sd	t4,224(sp)
    80006b18:	0fe13423          	sd	t5,232(sp)
    80006b1c:	0ff13823          	sd	t6,240(sp)
    80006b20:	cc9ff0ef          	jal	ra,800067e8 <kerneltrap>
    80006b24:	00013083          	ld	ra,0(sp)
    80006b28:	00813103          	ld	sp,8(sp)
    80006b2c:	01013183          	ld	gp,16(sp)
    80006b30:	02013283          	ld	t0,32(sp)
    80006b34:	02813303          	ld	t1,40(sp)
    80006b38:	03013383          	ld	t2,48(sp)
    80006b3c:	03813403          	ld	s0,56(sp)
    80006b40:	04013483          	ld	s1,64(sp)
    80006b44:	04813503          	ld	a0,72(sp)
    80006b48:	05013583          	ld	a1,80(sp)
    80006b4c:	05813603          	ld	a2,88(sp)
    80006b50:	06013683          	ld	a3,96(sp)
    80006b54:	06813703          	ld	a4,104(sp)
    80006b58:	07013783          	ld	a5,112(sp)
    80006b5c:	07813803          	ld	a6,120(sp)
    80006b60:	08013883          	ld	a7,128(sp)
    80006b64:	08813903          	ld	s2,136(sp)
    80006b68:	09013983          	ld	s3,144(sp)
    80006b6c:	09813a03          	ld	s4,152(sp)
    80006b70:	0a013a83          	ld	s5,160(sp)
    80006b74:	0a813b03          	ld	s6,168(sp)
    80006b78:	0b013b83          	ld	s7,176(sp)
    80006b7c:	0b813c03          	ld	s8,184(sp)
    80006b80:	0c013c83          	ld	s9,192(sp)
    80006b84:	0c813d03          	ld	s10,200(sp)
    80006b88:	0d013d83          	ld	s11,208(sp)
    80006b8c:	0d813e03          	ld	t3,216(sp)
    80006b90:	0e013e83          	ld	t4,224(sp)
    80006b94:	0e813f03          	ld	t5,232(sp)
    80006b98:	0f013f83          	ld	t6,240(sp)
    80006b9c:	10010113          	addi	sp,sp,256
    80006ba0:	10200073          	sret
    80006ba4:	00000013          	nop
    80006ba8:	00000013          	nop
    80006bac:	00000013          	nop

0000000080006bb0 <timervec>:
    80006bb0:	34051573          	csrrw	a0,mscratch,a0
    80006bb4:	00b53023          	sd	a1,0(a0)
    80006bb8:	00c53423          	sd	a2,8(a0)
    80006bbc:	00d53823          	sd	a3,16(a0)
    80006bc0:	01853583          	ld	a1,24(a0)
    80006bc4:	02053603          	ld	a2,32(a0)
    80006bc8:	0005b683          	ld	a3,0(a1)
    80006bcc:	00c686b3          	add	a3,a3,a2
    80006bd0:	00d5b023          	sd	a3,0(a1)
    80006bd4:	00200593          	li	a1,2
    80006bd8:	14459073          	csrw	sip,a1
    80006bdc:	01053683          	ld	a3,16(a0)
    80006be0:	00853603          	ld	a2,8(a0)
    80006be4:	00053583          	ld	a1,0(a0)
    80006be8:	34051573          	csrrw	a0,mscratch,a0
    80006bec:	30200073          	mret

0000000080006bf0 <plicinit>:
    80006bf0:	ff010113          	addi	sp,sp,-16
    80006bf4:	00813423          	sd	s0,8(sp)
    80006bf8:	01010413          	addi	s0,sp,16
    80006bfc:	00813403          	ld	s0,8(sp)
    80006c00:	0c0007b7          	lui	a5,0xc000
    80006c04:	00100713          	li	a4,1
    80006c08:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c0c:	00e7a223          	sw	a4,4(a5)
    80006c10:	01010113          	addi	sp,sp,16
    80006c14:	00008067          	ret

0000000080006c18 <plicinithart>:
    80006c18:	ff010113          	addi	sp,sp,-16
    80006c1c:	00813023          	sd	s0,0(sp)
    80006c20:	00113423          	sd	ra,8(sp)
    80006c24:	01010413          	addi	s0,sp,16
    80006c28:	00000097          	auipc	ra,0x0
    80006c2c:	a40080e7          	jalr	-1472(ra) # 80006668 <cpuid>
    80006c30:	0085171b          	slliw	a4,a0,0x8
    80006c34:	0c0027b7          	lui	a5,0xc002
    80006c38:	00e787b3          	add	a5,a5,a4
    80006c3c:	40200713          	li	a4,1026
    80006c40:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006c44:	00813083          	ld	ra,8(sp)
    80006c48:	00013403          	ld	s0,0(sp)
    80006c4c:	00d5151b          	slliw	a0,a0,0xd
    80006c50:	0c2017b7          	lui	a5,0xc201
    80006c54:	00a78533          	add	a0,a5,a0
    80006c58:	00052023          	sw	zero,0(a0)
    80006c5c:	01010113          	addi	sp,sp,16
    80006c60:	00008067          	ret

0000000080006c64 <plic_claim>:
    80006c64:	ff010113          	addi	sp,sp,-16
    80006c68:	00813023          	sd	s0,0(sp)
    80006c6c:	00113423          	sd	ra,8(sp)
    80006c70:	01010413          	addi	s0,sp,16
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	9f4080e7          	jalr	-1548(ra) # 80006668 <cpuid>
    80006c7c:	00813083          	ld	ra,8(sp)
    80006c80:	00013403          	ld	s0,0(sp)
    80006c84:	00d5151b          	slliw	a0,a0,0xd
    80006c88:	0c2017b7          	lui	a5,0xc201
    80006c8c:	00a78533          	add	a0,a5,a0
    80006c90:	00452503          	lw	a0,4(a0)
    80006c94:	01010113          	addi	sp,sp,16
    80006c98:	00008067          	ret

0000000080006c9c <plic_complete>:
    80006c9c:	fe010113          	addi	sp,sp,-32
    80006ca0:	00813823          	sd	s0,16(sp)
    80006ca4:	00913423          	sd	s1,8(sp)
    80006ca8:	00113c23          	sd	ra,24(sp)
    80006cac:	02010413          	addi	s0,sp,32
    80006cb0:	00050493          	mv	s1,a0
    80006cb4:	00000097          	auipc	ra,0x0
    80006cb8:	9b4080e7          	jalr	-1612(ra) # 80006668 <cpuid>
    80006cbc:	01813083          	ld	ra,24(sp)
    80006cc0:	01013403          	ld	s0,16(sp)
    80006cc4:	00d5179b          	slliw	a5,a0,0xd
    80006cc8:	0c201737          	lui	a4,0xc201
    80006ccc:	00f707b3          	add	a5,a4,a5
    80006cd0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006cd4:	00813483          	ld	s1,8(sp)
    80006cd8:	02010113          	addi	sp,sp,32
    80006cdc:	00008067          	ret

0000000080006ce0 <consolewrite>:
    80006ce0:	fb010113          	addi	sp,sp,-80
    80006ce4:	04813023          	sd	s0,64(sp)
    80006ce8:	04113423          	sd	ra,72(sp)
    80006cec:	02913c23          	sd	s1,56(sp)
    80006cf0:	03213823          	sd	s2,48(sp)
    80006cf4:	03313423          	sd	s3,40(sp)
    80006cf8:	03413023          	sd	s4,32(sp)
    80006cfc:	01513c23          	sd	s5,24(sp)
    80006d00:	05010413          	addi	s0,sp,80
    80006d04:	06c05c63          	blez	a2,80006d7c <consolewrite+0x9c>
    80006d08:	00060993          	mv	s3,a2
    80006d0c:	00050a13          	mv	s4,a0
    80006d10:	00058493          	mv	s1,a1
    80006d14:	00000913          	li	s2,0
    80006d18:	fff00a93          	li	s5,-1
    80006d1c:	01c0006f          	j	80006d38 <consolewrite+0x58>
    80006d20:	fbf44503          	lbu	a0,-65(s0)
    80006d24:	0019091b          	addiw	s2,s2,1
    80006d28:	00148493          	addi	s1,s1,1
    80006d2c:	00001097          	auipc	ra,0x1
    80006d30:	a9c080e7          	jalr	-1380(ra) # 800077c8 <uartputc>
    80006d34:	03298063          	beq	s3,s2,80006d54 <consolewrite+0x74>
    80006d38:	00048613          	mv	a2,s1
    80006d3c:	00100693          	li	a3,1
    80006d40:	000a0593          	mv	a1,s4
    80006d44:	fbf40513          	addi	a0,s0,-65
    80006d48:	00000097          	auipc	ra,0x0
    80006d4c:	9d8080e7          	jalr	-1576(ra) # 80006720 <either_copyin>
    80006d50:	fd5518e3          	bne	a0,s5,80006d20 <consolewrite+0x40>
    80006d54:	04813083          	ld	ra,72(sp)
    80006d58:	04013403          	ld	s0,64(sp)
    80006d5c:	03813483          	ld	s1,56(sp)
    80006d60:	02813983          	ld	s3,40(sp)
    80006d64:	02013a03          	ld	s4,32(sp)
    80006d68:	01813a83          	ld	s5,24(sp)
    80006d6c:	00090513          	mv	a0,s2
    80006d70:	03013903          	ld	s2,48(sp)
    80006d74:	05010113          	addi	sp,sp,80
    80006d78:	00008067          	ret
    80006d7c:	00000913          	li	s2,0
    80006d80:	fd5ff06f          	j	80006d54 <consolewrite+0x74>

0000000080006d84 <consoleread>:
    80006d84:	f9010113          	addi	sp,sp,-112
    80006d88:	06813023          	sd	s0,96(sp)
    80006d8c:	04913c23          	sd	s1,88(sp)
    80006d90:	05213823          	sd	s2,80(sp)
    80006d94:	05313423          	sd	s3,72(sp)
    80006d98:	05413023          	sd	s4,64(sp)
    80006d9c:	03513c23          	sd	s5,56(sp)
    80006da0:	03613823          	sd	s6,48(sp)
    80006da4:	03713423          	sd	s7,40(sp)
    80006da8:	03813023          	sd	s8,32(sp)
    80006dac:	06113423          	sd	ra,104(sp)
    80006db0:	01913c23          	sd	s9,24(sp)
    80006db4:	07010413          	addi	s0,sp,112
    80006db8:	00060b93          	mv	s7,a2
    80006dbc:	00050913          	mv	s2,a0
    80006dc0:	00058c13          	mv	s8,a1
    80006dc4:	00060b1b          	sext.w	s6,a2
    80006dc8:	00006497          	auipc	s1,0x6
    80006dcc:	bc048493          	addi	s1,s1,-1088 # 8000c988 <cons>
    80006dd0:	00400993          	li	s3,4
    80006dd4:	fff00a13          	li	s4,-1
    80006dd8:	00a00a93          	li	s5,10
    80006ddc:	05705e63          	blez	s7,80006e38 <consoleread+0xb4>
    80006de0:	09c4a703          	lw	a4,156(s1)
    80006de4:	0984a783          	lw	a5,152(s1)
    80006de8:	0007071b          	sext.w	a4,a4
    80006dec:	08e78463          	beq	a5,a4,80006e74 <consoleread+0xf0>
    80006df0:	07f7f713          	andi	a4,a5,127
    80006df4:	00e48733          	add	a4,s1,a4
    80006df8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006dfc:	0017869b          	addiw	a3,a5,1
    80006e00:	08d4ac23          	sw	a3,152(s1)
    80006e04:	00070c9b          	sext.w	s9,a4
    80006e08:	0b370663          	beq	a4,s3,80006eb4 <consoleread+0x130>
    80006e0c:	00100693          	li	a3,1
    80006e10:	f9f40613          	addi	a2,s0,-97
    80006e14:	000c0593          	mv	a1,s8
    80006e18:	00090513          	mv	a0,s2
    80006e1c:	f8e40fa3          	sb	a4,-97(s0)
    80006e20:	00000097          	auipc	ra,0x0
    80006e24:	8b4080e7          	jalr	-1868(ra) # 800066d4 <either_copyout>
    80006e28:	01450863          	beq	a0,s4,80006e38 <consoleread+0xb4>
    80006e2c:	001c0c13          	addi	s8,s8,1
    80006e30:	fffb8b9b          	addiw	s7,s7,-1
    80006e34:	fb5c94e3          	bne	s9,s5,80006ddc <consoleread+0x58>
    80006e38:	000b851b          	sext.w	a0,s7
    80006e3c:	06813083          	ld	ra,104(sp)
    80006e40:	06013403          	ld	s0,96(sp)
    80006e44:	05813483          	ld	s1,88(sp)
    80006e48:	05013903          	ld	s2,80(sp)
    80006e4c:	04813983          	ld	s3,72(sp)
    80006e50:	04013a03          	ld	s4,64(sp)
    80006e54:	03813a83          	ld	s5,56(sp)
    80006e58:	02813b83          	ld	s7,40(sp)
    80006e5c:	02013c03          	ld	s8,32(sp)
    80006e60:	01813c83          	ld	s9,24(sp)
    80006e64:	40ab053b          	subw	a0,s6,a0
    80006e68:	03013b03          	ld	s6,48(sp)
    80006e6c:	07010113          	addi	sp,sp,112
    80006e70:	00008067          	ret
    80006e74:	00001097          	auipc	ra,0x1
    80006e78:	1d8080e7          	jalr	472(ra) # 8000804c <push_on>
    80006e7c:	0984a703          	lw	a4,152(s1)
    80006e80:	09c4a783          	lw	a5,156(s1)
    80006e84:	0007879b          	sext.w	a5,a5
    80006e88:	fef70ce3          	beq	a4,a5,80006e80 <consoleread+0xfc>
    80006e8c:	00001097          	auipc	ra,0x1
    80006e90:	234080e7          	jalr	564(ra) # 800080c0 <pop_on>
    80006e94:	0984a783          	lw	a5,152(s1)
    80006e98:	07f7f713          	andi	a4,a5,127
    80006e9c:	00e48733          	add	a4,s1,a4
    80006ea0:	01874703          	lbu	a4,24(a4)
    80006ea4:	0017869b          	addiw	a3,a5,1
    80006ea8:	08d4ac23          	sw	a3,152(s1)
    80006eac:	00070c9b          	sext.w	s9,a4
    80006eb0:	f5371ee3          	bne	a4,s3,80006e0c <consoleread+0x88>
    80006eb4:	000b851b          	sext.w	a0,s7
    80006eb8:	f96bf2e3          	bgeu	s7,s6,80006e3c <consoleread+0xb8>
    80006ebc:	08f4ac23          	sw	a5,152(s1)
    80006ec0:	f7dff06f          	j	80006e3c <consoleread+0xb8>

0000000080006ec4 <consputc>:
    80006ec4:	10000793          	li	a5,256
    80006ec8:	00f50663          	beq	a0,a5,80006ed4 <consputc+0x10>
    80006ecc:	00001317          	auipc	t1,0x1
    80006ed0:	9f430067          	jr	-1548(t1) # 800078c0 <uartputc_sync>
    80006ed4:	ff010113          	addi	sp,sp,-16
    80006ed8:	00113423          	sd	ra,8(sp)
    80006edc:	00813023          	sd	s0,0(sp)
    80006ee0:	01010413          	addi	s0,sp,16
    80006ee4:	00800513          	li	a0,8
    80006ee8:	00001097          	auipc	ra,0x1
    80006eec:	9d8080e7          	jalr	-1576(ra) # 800078c0 <uartputc_sync>
    80006ef0:	02000513          	li	a0,32
    80006ef4:	00001097          	auipc	ra,0x1
    80006ef8:	9cc080e7          	jalr	-1588(ra) # 800078c0 <uartputc_sync>
    80006efc:	00013403          	ld	s0,0(sp)
    80006f00:	00813083          	ld	ra,8(sp)
    80006f04:	00800513          	li	a0,8
    80006f08:	01010113          	addi	sp,sp,16
    80006f0c:	00001317          	auipc	t1,0x1
    80006f10:	9b430067          	jr	-1612(t1) # 800078c0 <uartputc_sync>

0000000080006f14 <consoleintr>:
    80006f14:	fe010113          	addi	sp,sp,-32
    80006f18:	00813823          	sd	s0,16(sp)
    80006f1c:	00913423          	sd	s1,8(sp)
    80006f20:	01213023          	sd	s2,0(sp)
    80006f24:	00113c23          	sd	ra,24(sp)
    80006f28:	02010413          	addi	s0,sp,32
    80006f2c:	00006917          	auipc	s2,0x6
    80006f30:	a5c90913          	addi	s2,s2,-1444 # 8000c988 <cons>
    80006f34:	00050493          	mv	s1,a0
    80006f38:	00090513          	mv	a0,s2
    80006f3c:	00001097          	auipc	ra,0x1
    80006f40:	e40080e7          	jalr	-448(ra) # 80007d7c <acquire>
    80006f44:	02048c63          	beqz	s1,80006f7c <consoleintr+0x68>
    80006f48:	0a092783          	lw	a5,160(s2)
    80006f4c:	09892703          	lw	a4,152(s2)
    80006f50:	07f00693          	li	a3,127
    80006f54:	40e7873b          	subw	a4,a5,a4
    80006f58:	02e6e263          	bltu	a3,a4,80006f7c <consoleintr+0x68>
    80006f5c:	00d00713          	li	a4,13
    80006f60:	04e48063          	beq	s1,a4,80006fa0 <consoleintr+0x8c>
    80006f64:	07f7f713          	andi	a4,a5,127
    80006f68:	00e90733          	add	a4,s2,a4
    80006f6c:	0017879b          	addiw	a5,a5,1
    80006f70:	0af92023          	sw	a5,160(s2)
    80006f74:	00970c23          	sb	s1,24(a4)
    80006f78:	08f92e23          	sw	a5,156(s2)
    80006f7c:	01013403          	ld	s0,16(sp)
    80006f80:	01813083          	ld	ra,24(sp)
    80006f84:	00813483          	ld	s1,8(sp)
    80006f88:	00013903          	ld	s2,0(sp)
    80006f8c:	00006517          	auipc	a0,0x6
    80006f90:	9fc50513          	addi	a0,a0,-1540 # 8000c988 <cons>
    80006f94:	02010113          	addi	sp,sp,32
    80006f98:	00001317          	auipc	t1,0x1
    80006f9c:	eb030067          	jr	-336(t1) # 80007e48 <release>
    80006fa0:	00a00493          	li	s1,10
    80006fa4:	fc1ff06f          	j	80006f64 <consoleintr+0x50>

0000000080006fa8 <consoleinit>:
    80006fa8:	fe010113          	addi	sp,sp,-32
    80006fac:	00113c23          	sd	ra,24(sp)
    80006fb0:	00813823          	sd	s0,16(sp)
    80006fb4:	00913423          	sd	s1,8(sp)
    80006fb8:	02010413          	addi	s0,sp,32
    80006fbc:	00006497          	auipc	s1,0x6
    80006fc0:	9cc48493          	addi	s1,s1,-1588 # 8000c988 <cons>
    80006fc4:	00048513          	mv	a0,s1
    80006fc8:	00002597          	auipc	a1,0x2
    80006fcc:	71058593          	addi	a1,a1,1808 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80006fd0:	00001097          	auipc	ra,0x1
    80006fd4:	d88080e7          	jalr	-632(ra) # 80007d58 <initlock>
    80006fd8:	00000097          	auipc	ra,0x0
    80006fdc:	7ac080e7          	jalr	1964(ra) # 80007784 <uartinit>
    80006fe0:	01813083          	ld	ra,24(sp)
    80006fe4:	01013403          	ld	s0,16(sp)
    80006fe8:	00000797          	auipc	a5,0x0
    80006fec:	d9c78793          	addi	a5,a5,-612 # 80006d84 <consoleread>
    80006ff0:	0af4bc23          	sd	a5,184(s1)
    80006ff4:	00000797          	auipc	a5,0x0
    80006ff8:	cec78793          	addi	a5,a5,-788 # 80006ce0 <consolewrite>
    80006ffc:	0cf4b023          	sd	a5,192(s1)
    80007000:	00813483          	ld	s1,8(sp)
    80007004:	02010113          	addi	sp,sp,32
    80007008:	00008067          	ret

000000008000700c <console_read>:
    8000700c:	ff010113          	addi	sp,sp,-16
    80007010:	00813423          	sd	s0,8(sp)
    80007014:	01010413          	addi	s0,sp,16
    80007018:	00813403          	ld	s0,8(sp)
    8000701c:	00006317          	auipc	t1,0x6
    80007020:	a2433303          	ld	t1,-1500(t1) # 8000ca40 <devsw+0x10>
    80007024:	01010113          	addi	sp,sp,16
    80007028:	00030067          	jr	t1

000000008000702c <console_write>:
    8000702c:	ff010113          	addi	sp,sp,-16
    80007030:	00813423          	sd	s0,8(sp)
    80007034:	01010413          	addi	s0,sp,16
    80007038:	00813403          	ld	s0,8(sp)
    8000703c:	00006317          	auipc	t1,0x6
    80007040:	a0c33303          	ld	t1,-1524(t1) # 8000ca48 <devsw+0x18>
    80007044:	01010113          	addi	sp,sp,16
    80007048:	00030067          	jr	t1

000000008000704c <panic>:
    8000704c:	fe010113          	addi	sp,sp,-32
    80007050:	00113c23          	sd	ra,24(sp)
    80007054:	00813823          	sd	s0,16(sp)
    80007058:	00913423          	sd	s1,8(sp)
    8000705c:	02010413          	addi	s0,sp,32
    80007060:	00050493          	mv	s1,a0
    80007064:	00002517          	auipc	a0,0x2
    80007068:	67c50513          	addi	a0,a0,1660 # 800096e0 <CONSOLE_STATUS+0x6d0>
    8000706c:	00006797          	auipc	a5,0x6
    80007070:	a607ae23          	sw	zero,-1412(a5) # 8000cae8 <pr+0x18>
    80007074:	00000097          	auipc	ra,0x0
    80007078:	034080e7          	jalr	52(ra) # 800070a8 <__printf>
    8000707c:	00048513          	mv	a0,s1
    80007080:	00000097          	auipc	ra,0x0
    80007084:	028080e7          	jalr	40(ra) # 800070a8 <__printf>
    80007088:	00002517          	auipc	a0,0x2
    8000708c:	3e050513          	addi	a0,a0,992 # 80009468 <CONSOLE_STATUS+0x458>
    80007090:	00000097          	auipc	ra,0x0
    80007094:	018080e7          	jalr	24(ra) # 800070a8 <__printf>
    80007098:	00100793          	li	a5,1
    8000709c:	00004717          	auipc	a4,0x4
    800070a0:	72f72e23          	sw	a5,1852(a4) # 8000b7d8 <panicked>
    800070a4:	0000006f          	j	800070a4 <panic+0x58>

00000000800070a8 <__printf>:
    800070a8:	f3010113          	addi	sp,sp,-208
    800070ac:	08813023          	sd	s0,128(sp)
    800070b0:	07313423          	sd	s3,104(sp)
    800070b4:	09010413          	addi	s0,sp,144
    800070b8:	05813023          	sd	s8,64(sp)
    800070bc:	08113423          	sd	ra,136(sp)
    800070c0:	06913c23          	sd	s1,120(sp)
    800070c4:	07213823          	sd	s2,112(sp)
    800070c8:	07413023          	sd	s4,96(sp)
    800070cc:	05513c23          	sd	s5,88(sp)
    800070d0:	05613823          	sd	s6,80(sp)
    800070d4:	05713423          	sd	s7,72(sp)
    800070d8:	03913c23          	sd	s9,56(sp)
    800070dc:	03a13823          	sd	s10,48(sp)
    800070e0:	03b13423          	sd	s11,40(sp)
    800070e4:	00006317          	auipc	t1,0x6
    800070e8:	9ec30313          	addi	t1,t1,-1556 # 8000cad0 <pr>
    800070ec:	01832c03          	lw	s8,24(t1)
    800070f0:	00b43423          	sd	a1,8(s0)
    800070f4:	00c43823          	sd	a2,16(s0)
    800070f8:	00d43c23          	sd	a3,24(s0)
    800070fc:	02e43023          	sd	a4,32(s0)
    80007100:	02f43423          	sd	a5,40(s0)
    80007104:	03043823          	sd	a6,48(s0)
    80007108:	03143c23          	sd	a7,56(s0)
    8000710c:	00050993          	mv	s3,a0
    80007110:	4a0c1663          	bnez	s8,800075bc <__printf+0x514>
    80007114:	60098c63          	beqz	s3,8000772c <__printf+0x684>
    80007118:	0009c503          	lbu	a0,0(s3)
    8000711c:	00840793          	addi	a5,s0,8
    80007120:	f6f43c23          	sd	a5,-136(s0)
    80007124:	00000493          	li	s1,0
    80007128:	22050063          	beqz	a0,80007348 <__printf+0x2a0>
    8000712c:	00002a37          	lui	s4,0x2
    80007130:	00018ab7          	lui	s5,0x18
    80007134:	000f4b37          	lui	s6,0xf4
    80007138:	00989bb7          	lui	s7,0x989
    8000713c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007140:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007144:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007148:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000714c:	00148c9b          	addiw	s9,s1,1
    80007150:	02500793          	li	a5,37
    80007154:	01998933          	add	s2,s3,s9
    80007158:	38f51263          	bne	a0,a5,800074dc <__printf+0x434>
    8000715c:	00094783          	lbu	a5,0(s2)
    80007160:	00078c9b          	sext.w	s9,a5
    80007164:	1e078263          	beqz	a5,80007348 <__printf+0x2a0>
    80007168:	0024849b          	addiw	s1,s1,2
    8000716c:	07000713          	li	a4,112
    80007170:	00998933          	add	s2,s3,s1
    80007174:	38e78a63          	beq	a5,a4,80007508 <__printf+0x460>
    80007178:	20f76863          	bltu	a4,a5,80007388 <__printf+0x2e0>
    8000717c:	42a78863          	beq	a5,a0,800075ac <__printf+0x504>
    80007180:	06400713          	li	a4,100
    80007184:	40e79663          	bne	a5,a4,80007590 <__printf+0x4e8>
    80007188:	f7843783          	ld	a5,-136(s0)
    8000718c:	0007a603          	lw	a2,0(a5)
    80007190:	00878793          	addi	a5,a5,8
    80007194:	f6f43c23          	sd	a5,-136(s0)
    80007198:	42064a63          	bltz	a2,800075cc <__printf+0x524>
    8000719c:	00a00713          	li	a4,10
    800071a0:	02e677bb          	remuw	a5,a2,a4
    800071a4:	00002d97          	auipc	s11,0x2
    800071a8:	564d8d93          	addi	s11,s11,1380 # 80009708 <digits>
    800071ac:	00900593          	li	a1,9
    800071b0:	0006051b          	sext.w	a0,a2
    800071b4:	00000c93          	li	s9,0
    800071b8:	02079793          	slli	a5,a5,0x20
    800071bc:	0207d793          	srli	a5,a5,0x20
    800071c0:	00fd87b3          	add	a5,s11,a5
    800071c4:	0007c783          	lbu	a5,0(a5)
    800071c8:	02e656bb          	divuw	a3,a2,a4
    800071cc:	f8f40023          	sb	a5,-128(s0)
    800071d0:	14c5d863          	bge	a1,a2,80007320 <__printf+0x278>
    800071d4:	06300593          	li	a1,99
    800071d8:	00100c93          	li	s9,1
    800071dc:	02e6f7bb          	remuw	a5,a3,a4
    800071e0:	02079793          	slli	a5,a5,0x20
    800071e4:	0207d793          	srli	a5,a5,0x20
    800071e8:	00fd87b3          	add	a5,s11,a5
    800071ec:	0007c783          	lbu	a5,0(a5)
    800071f0:	02e6d73b          	divuw	a4,a3,a4
    800071f4:	f8f400a3          	sb	a5,-127(s0)
    800071f8:	12a5f463          	bgeu	a1,a0,80007320 <__printf+0x278>
    800071fc:	00a00693          	li	a3,10
    80007200:	00900593          	li	a1,9
    80007204:	02d777bb          	remuw	a5,a4,a3
    80007208:	02079793          	slli	a5,a5,0x20
    8000720c:	0207d793          	srli	a5,a5,0x20
    80007210:	00fd87b3          	add	a5,s11,a5
    80007214:	0007c503          	lbu	a0,0(a5)
    80007218:	02d757bb          	divuw	a5,a4,a3
    8000721c:	f8a40123          	sb	a0,-126(s0)
    80007220:	48e5f263          	bgeu	a1,a4,800076a4 <__printf+0x5fc>
    80007224:	06300513          	li	a0,99
    80007228:	02d7f5bb          	remuw	a1,a5,a3
    8000722c:	02059593          	slli	a1,a1,0x20
    80007230:	0205d593          	srli	a1,a1,0x20
    80007234:	00bd85b3          	add	a1,s11,a1
    80007238:	0005c583          	lbu	a1,0(a1)
    8000723c:	02d7d7bb          	divuw	a5,a5,a3
    80007240:	f8b401a3          	sb	a1,-125(s0)
    80007244:	48e57263          	bgeu	a0,a4,800076c8 <__printf+0x620>
    80007248:	3e700513          	li	a0,999
    8000724c:	02d7f5bb          	remuw	a1,a5,a3
    80007250:	02059593          	slli	a1,a1,0x20
    80007254:	0205d593          	srli	a1,a1,0x20
    80007258:	00bd85b3          	add	a1,s11,a1
    8000725c:	0005c583          	lbu	a1,0(a1)
    80007260:	02d7d7bb          	divuw	a5,a5,a3
    80007264:	f8b40223          	sb	a1,-124(s0)
    80007268:	46e57663          	bgeu	a0,a4,800076d4 <__printf+0x62c>
    8000726c:	02d7f5bb          	remuw	a1,a5,a3
    80007270:	02059593          	slli	a1,a1,0x20
    80007274:	0205d593          	srli	a1,a1,0x20
    80007278:	00bd85b3          	add	a1,s11,a1
    8000727c:	0005c583          	lbu	a1,0(a1)
    80007280:	02d7d7bb          	divuw	a5,a5,a3
    80007284:	f8b402a3          	sb	a1,-123(s0)
    80007288:	46ea7863          	bgeu	s4,a4,800076f8 <__printf+0x650>
    8000728c:	02d7f5bb          	remuw	a1,a5,a3
    80007290:	02059593          	slli	a1,a1,0x20
    80007294:	0205d593          	srli	a1,a1,0x20
    80007298:	00bd85b3          	add	a1,s11,a1
    8000729c:	0005c583          	lbu	a1,0(a1)
    800072a0:	02d7d7bb          	divuw	a5,a5,a3
    800072a4:	f8b40323          	sb	a1,-122(s0)
    800072a8:	3eeaf863          	bgeu	s5,a4,80007698 <__printf+0x5f0>
    800072ac:	02d7f5bb          	remuw	a1,a5,a3
    800072b0:	02059593          	slli	a1,a1,0x20
    800072b4:	0205d593          	srli	a1,a1,0x20
    800072b8:	00bd85b3          	add	a1,s11,a1
    800072bc:	0005c583          	lbu	a1,0(a1)
    800072c0:	02d7d7bb          	divuw	a5,a5,a3
    800072c4:	f8b403a3          	sb	a1,-121(s0)
    800072c8:	42eb7e63          	bgeu	s6,a4,80007704 <__printf+0x65c>
    800072cc:	02d7f5bb          	remuw	a1,a5,a3
    800072d0:	02059593          	slli	a1,a1,0x20
    800072d4:	0205d593          	srli	a1,a1,0x20
    800072d8:	00bd85b3          	add	a1,s11,a1
    800072dc:	0005c583          	lbu	a1,0(a1)
    800072e0:	02d7d7bb          	divuw	a5,a5,a3
    800072e4:	f8b40423          	sb	a1,-120(s0)
    800072e8:	42ebfc63          	bgeu	s7,a4,80007720 <__printf+0x678>
    800072ec:	02079793          	slli	a5,a5,0x20
    800072f0:	0207d793          	srli	a5,a5,0x20
    800072f4:	00fd8db3          	add	s11,s11,a5
    800072f8:	000dc703          	lbu	a4,0(s11)
    800072fc:	00a00793          	li	a5,10
    80007300:	00900c93          	li	s9,9
    80007304:	f8e404a3          	sb	a4,-119(s0)
    80007308:	00065c63          	bgez	a2,80007320 <__printf+0x278>
    8000730c:	f9040713          	addi	a4,s0,-112
    80007310:	00f70733          	add	a4,a4,a5
    80007314:	02d00693          	li	a3,45
    80007318:	fed70823          	sb	a3,-16(a4)
    8000731c:	00078c93          	mv	s9,a5
    80007320:	f8040793          	addi	a5,s0,-128
    80007324:	01978cb3          	add	s9,a5,s9
    80007328:	f7f40d13          	addi	s10,s0,-129
    8000732c:	000cc503          	lbu	a0,0(s9)
    80007330:	fffc8c93          	addi	s9,s9,-1
    80007334:	00000097          	auipc	ra,0x0
    80007338:	b90080e7          	jalr	-1136(ra) # 80006ec4 <consputc>
    8000733c:	ffac98e3          	bne	s9,s10,8000732c <__printf+0x284>
    80007340:	00094503          	lbu	a0,0(s2)
    80007344:	e00514e3          	bnez	a0,8000714c <__printf+0xa4>
    80007348:	1a0c1663          	bnez	s8,800074f4 <__printf+0x44c>
    8000734c:	08813083          	ld	ra,136(sp)
    80007350:	08013403          	ld	s0,128(sp)
    80007354:	07813483          	ld	s1,120(sp)
    80007358:	07013903          	ld	s2,112(sp)
    8000735c:	06813983          	ld	s3,104(sp)
    80007360:	06013a03          	ld	s4,96(sp)
    80007364:	05813a83          	ld	s5,88(sp)
    80007368:	05013b03          	ld	s6,80(sp)
    8000736c:	04813b83          	ld	s7,72(sp)
    80007370:	04013c03          	ld	s8,64(sp)
    80007374:	03813c83          	ld	s9,56(sp)
    80007378:	03013d03          	ld	s10,48(sp)
    8000737c:	02813d83          	ld	s11,40(sp)
    80007380:	0d010113          	addi	sp,sp,208
    80007384:	00008067          	ret
    80007388:	07300713          	li	a4,115
    8000738c:	1ce78a63          	beq	a5,a4,80007560 <__printf+0x4b8>
    80007390:	07800713          	li	a4,120
    80007394:	1ee79e63          	bne	a5,a4,80007590 <__printf+0x4e8>
    80007398:	f7843783          	ld	a5,-136(s0)
    8000739c:	0007a703          	lw	a4,0(a5)
    800073a0:	00878793          	addi	a5,a5,8
    800073a4:	f6f43c23          	sd	a5,-136(s0)
    800073a8:	28074263          	bltz	a4,8000762c <__printf+0x584>
    800073ac:	00002d97          	auipc	s11,0x2
    800073b0:	35cd8d93          	addi	s11,s11,860 # 80009708 <digits>
    800073b4:	00f77793          	andi	a5,a4,15
    800073b8:	00fd87b3          	add	a5,s11,a5
    800073bc:	0007c683          	lbu	a3,0(a5)
    800073c0:	00f00613          	li	a2,15
    800073c4:	0007079b          	sext.w	a5,a4
    800073c8:	f8d40023          	sb	a3,-128(s0)
    800073cc:	0047559b          	srliw	a1,a4,0x4
    800073d0:	0047569b          	srliw	a3,a4,0x4
    800073d4:	00000c93          	li	s9,0
    800073d8:	0ee65063          	bge	a2,a4,800074b8 <__printf+0x410>
    800073dc:	00f6f693          	andi	a3,a3,15
    800073e0:	00dd86b3          	add	a3,s11,a3
    800073e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800073e8:	0087d79b          	srliw	a5,a5,0x8
    800073ec:	00100c93          	li	s9,1
    800073f0:	f8d400a3          	sb	a3,-127(s0)
    800073f4:	0cb67263          	bgeu	a2,a1,800074b8 <__printf+0x410>
    800073f8:	00f7f693          	andi	a3,a5,15
    800073fc:	00dd86b3          	add	a3,s11,a3
    80007400:	0006c583          	lbu	a1,0(a3)
    80007404:	00f00613          	li	a2,15
    80007408:	0047d69b          	srliw	a3,a5,0x4
    8000740c:	f8b40123          	sb	a1,-126(s0)
    80007410:	0047d593          	srli	a1,a5,0x4
    80007414:	28f67e63          	bgeu	a2,a5,800076b0 <__printf+0x608>
    80007418:	00f6f693          	andi	a3,a3,15
    8000741c:	00dd86b3          	add	a3,s11,a3
    80007420:	0006c503          	lbu	a0,0(a3)
    80007424:	0087d813          	srli	a6,a5,0x8
    80007428:	0087d69b          	srliw	a3,a5,0x8
    8000742c:	f8a401a3          	sb	a0,-125(s0)
    80007430:	28b67663          	bgeu	a2,a1,800076bc <__printf+0x614>
    80007434:	00f6f693          	andi	a3,a3,15
    80007438:	00dd86b3          	add	a3,s11,a3
    8000743c:	0006c583          	lbu	a1,0(a3)
    80007440:	00c7d513          	srli	a0,a5,0xc
    80007444:	00c7d69b          	srliw	a3,a5,0xc
    80007448:	f8b40223          	sb	a1,-124(s0)
    8000744c:	29067a63          	bgeu	a2,a6,800076e0 <__printf+0x638>
    80007450:	00f6f693          	andi	a3,a3,15
    80007454:	00dd86b3          	add	a3,s11,a3
    80007458:	0006c583          	lbu	a1,0(a3)
    8000745c:	0107d813          	srli	a6,a5,0x10
    80007460:	0107d69b          	srliw	a3,a5,0x10
    80007464:	f8b402a3          	sb	a1,-123(s0)
    80007468:	28a67263          	bgeu	a2,a0,800076ec <__printf+0x644>
    8000746c:	00f6f693          	andi	a3,a3,15
    80007470:	00dd86b3          	add	a3,s11,a3
    80007474:	0006c683          	lbu	a3,0(a3)
    80007478:	0147d79b          	srliw	a5,a5,0x14
    8000747c:	f8d40323          	sb	a3,-122(s0)
    80007480:	21067663          	bgeu	a2,a6,8000768c <__printf+0x5e4>
    80007484:	02079793          	slli	a5,a5,0x20
    80007488:	0207d793          	srli	a5,a5,0x20
    8000748c:	00fd8db3          	add	s11,s11,a5
    80007490:	000dc683          	lbu	a3,0(s11)
    80007494:	00800793          	li	a5,8
    80007498:	00700c93          	li	s9,7
    8000749c:	f8d403a3          	sb	a3,-121(s0)
    800074a0:	00075c63          	bgez	a4,800074b8 <__printf+0x410>
    800074a4:	f9040713          	addi	a4,s0,-112
    800074a8:	00f70733          	add	a4,a4,a5
    800074ac:	02d00693          	li	a3,45
    800074b0:	fed70823          	sb	a3,-16(a4)
    800074b4:	00078c93          	mv	s9,a5
    800074b8:	f8040793          	addi	a5,s0,-128
    800074bc:	01978cb3          	add	s9,a5,s9
    800074c0:	f7f40d13          	addi	s10,s0,-129
    800074c4:	000cc503          	lbu	a0,0(s9)
    800074c8:	fffc8c93          	addi	s9,s9,-1
    800074cc:	00000097          	auipc	ra,0x0
    800074d0:	9f8080e7          	jalr	-1544(ra) # 80006ec4 <consputc>
    800074d4:	ff9d18e3          	bne	s10,s9,800074c4 <__printf+0x41c>
    800074d8:	0100006f          	j	800074e8 <__printf+0x440>
    800074dc:	00000097          	auipc	ra,0x0
    800074e0:	9e8080e7          	jalr	-1560(ra) # 80006ec4 <consputc>
    800074e4:	000c8493          	mv	s1,s9
    800074e8:	00094503          	lbu	a0,0(s2)
    800074ec:	c60510e3          	bnez	a0,8000714c <__printf+0xa4>
    800074f0:	e40c0ee3          	beqz	s8,8000734c <__printf+0x2a4>
    800074f4:	00005517          	auipc	a0,0x5
    800074f8:	5dc50513          	addi	a0,a0,1500 # 8000cad0 <pr>
    800074fc:	00001097          	auipc	ra,0x1
    80007500:	94c080e7          	jalr	-1716(ra) # 80007e48 <release>
    80007504:	e49ff06f          	j	8000734c <__printf+0x2a4>
    80007508:	f7843783          	ld	a5,-136(s0)
    8000750c:	03000513          	li	a0,48
    80007510:	01000d13          	li	s10,16
    80007514:	00878713          	addi	a4,a5,8
    80007518:	0007bc83          	ld	s9,0(a5)
    8000751c:	f6e43c23          	sd	a4,-136(s0)
    80007520:	00000097          	auipc	ra,0x0
    80007524:	9a4080e7          	jalr	-1628(ra) # 80006ec4 <consputc>
    80007528:	07800513          	li	a0,120
    8000752c:	00000097          	auipc	ra,0x0
    80007530:	998080e7          	jalr	-1640(ra) # 80006ec4 <consputc>
    80007534:	00002d97          	auipc	s11,0x2
    80007538:	1d4d8d93          	addi	s11,s11,468 # 80009708 <digits>
    8000753c:	03ccd793          	srli	a5,s9,0x3c
    80007540:	00fd87b3          	add	a5,s11,a5
    80007544:	0007c503          	lbu	a0,0(a5)
    80007548:	fffd0d1b          	addiw	s10,s10,-1
    8000754c:	004c9c93          	slli	s9,s9,0x4
    80007550:	00000097          	auipc	ra,0x0
    80007554:	974080e7          	jalr	-1676(ra) # 80006ec4 <consputc>
    80007558:	fe0d12e3          	bnez	s10,8000753c <__printf+0x494>
    8000755c:	f8dff06f          	j	800074e8 <__printf+0x440>
    80007560:	f7843783          	ld	a5,-136(s0)
    80007564:	0007bc83          	ld	s9,0(a5)
    80007568:	00878793          	addi	a5,a5,8
    8000756c:	f6f43c23          	sd	a5,-136(s0)
    80007570:	000c9a63          	bnez	s9,80007584 <__printf+0x4dc>
    80007574:	1080006f          	j	8000767c <__printf+0x5d4>
    80007578:	001c8c93          	addi	s9,s9,1
    8000757c:	00000097          	auipc	ra,0x0
    80007580:	948080e7          	jalr	-1720(ra) # 80006ec4 <consputc>
    80007584:	000cc503          	lbu	a0,0(s9)
    80007588:	fe0518e3          	bnez	a0,80007578 <__printf+0x4d0>
    8000758c:	f5dff06f          	j	800074e8 <__printf+0x440>
    80007590:	02500513          	li	a0,37
    80007594:	00000097          	auipc	ra,0x0
    80007598:	930080e7          	jalr	-1744(ra) # 80006ec4 <consputc>
    8000759c:	000c8513          	mv	a0,s9
    800075a0:	00000097          	auipc	ra,0x0
    800075a4:	924080e7          	jalr	-1756(ra) # 80006ec4 <consputc>
    800075a8:	f41ff06f          	j	800074e8 <__printf+0x440>
    800075ac:	02500513          	li	a0,37
    800075b0:	00000097          	auipc	ra,0x0
    800075b4:	914080e7          	jalr	-1772(ra) # 80006ec4 <consputc>
    800075b8:	f31ff06f          	j	800074e8 <__printf+0x440>
    800075bc:	00030513          	mv	a0,t1
    800075c0:	00000097          	auipc	ra,0x0
    800075c4:	7bc080e7          	jalr	1980(ra) # 80007d7c <acquire>
    800075c8:	b4dff06f          	j	80007114 <__printf+0x6c>
    800075cc:	40c0053b          	negw	a0,a2
    800075d0:	00a00713          	li	a4,10
    800075d4:	02e576bb          	remuw	a3,a0,a4
    800075d8:	00002d97          	auipc	s11,0x2
    800075dc:	130d8d93          	addi	s11,s11,304 # 80009708 <digits>
    800075e0:	ff700593          	li	a1,-9
    800075e4:	02069693          	slli	a3,a3,0x20
    800075e8:	0206d693          	srli	a3,a3,0x20
    800075ec:	00dd86b3          	add	a3,s11,a3
    800075f0:	0006c683          	lbu	a3,0(a3)
    800075f4:	02e557bb          	divuw	a5,a0,a4
    800075f8:	f8d40023          	sb	a3,-128(s0)
    800075fc:	10b65e63          	bge	a2,a1,80007718 <__printf+0x670>
    80007600:	06300593          	li	a1,99
    80007604:	02e7f6bb          	remuw	a3,a5,a4
    80007608:	02069693          	slli	a3,a3,0x20
    8000760c:	0206d693          	srli	a3,a3,0x20
    80007610:	00dd86b3          	add	a3,s11,a3
    80007614:	0006c683          	lbu	a3,0(a3)
    80007618:	02e7d73b          	divuw	a4,a5,a4
    8000761c:	00200793          	li	a5,2
    80007620:	f8d400a3          	sb	a3,-127(s0)
    80007624:	bca5ece3          	bltu	a1,a0,800071fc <__printf+0x154>
    80007628:	ce5ff06f          	j	8000730c <__printf+0x264>
    8000762c:	40e007bb          	negw	a5,a4
    80007630:	00002d97          	auipc	s11,0x2
    80007634:	0d8d8d93          	addi	s11,s11,216 # 80009708 <digits>
    80007638:	00f7f693          	andi	a3,a5,15
    8000763c:	00dd86b3          	add	a3,s11,a3
    80007640:	0006c583          	lbu	a1,0(a3)
    80007644:	ff100613          	li	a2,-15
    80007648:	0047d69b          	srliw	a3,a5,0x4
    8000764c:	f8b40023          	sb	a1,-128(s0)
    80007650:	0047d59b          	srliw	a1,a5,0x4
    80007654:	0ac75e63          	bge	a4,a2,80007710 <__printf+0x668>
    80007658:	00f6f693          	andi	a3,a3,15
    8000765c:	00dd86b3          	add	a3,s11,a3
    80007660:	0006c603          	lbu	a2,0(a3)
    80007664:	00f00693          	li	a3,15
    80007668:	0087d79b          	srliw	a5,a5,0x8
    8000766c:	f8c400a3          	sb	a2,-127(s0)
    80007670:	d8b6e4e3          	bltu	a3,a1,800073f8 <__printf+0x350>
    80007674:	00200793          	li	a5,2
    80007678:	e2dff06f          	j	800074a4 <__printf+0x3fc>
    8000767c:	00002c97          	auipc	s9,0x2
    80007680:	06cc8c93          	addi	s9,s9,108 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007684:	02800513          	li	a0,40
    80007688:	ef1ff06f          	j	80007578 <__printf+0x4d0>
    8000768c:	00700793          	li	a5,7
    80007690:	00600c93          	li	s9,6
    80007694:	e0dff06f          	j	800074a0 <__printf+0x3f8>
    80007698:	00700793          	li	a5,7
    8000769c:	00600c93          	li	s9,6
    800076a0:	c69ff06f          	j	80007308 <__printf+0x260>
    800076a4:	00300793          	li	a5,3
    800076a8:	00200c93          	li	s9,2
    800076ac:	c5dff06f          	j	80007308 <__printf+0x260>
    800076b0:	00300793          	li	a5,3
    800076b4:	00200c93          	li	s9,2
    800076b8:	de9ff06f          	j	800074a0 <__printf+0x3f8>
    800076bc:	00400793          	li	a5,4
    800076c0:	00300c93          	li	s9,3
    800076c4:	dddff06f          	j	800074a0 <__printf+0x3f8>
    800076c8:	00400793          	li	a5,4
    800076cc:	00300c93          	li	s9,3
    800076d0:	c39ff06f          	j	80007308 <__printf+0x260>
    800076d4:	00500793          	li	a5,5
    800076d8:	00400c93          	li	s9,4
    800076dc:	c2dff06f          	j	80007308 <__printf+0x260>
    800076e0:	00500793          	li	a5,5
    800076e4:	00400c93          	li	s9,4
    800076e8:	db9ff06f          	j	800074a0 <__printf+0x3f8>
    800076ec:	00600793          	li	a5,6
    800076f0:	00500c93          	li	s9,5
    800076f4:	dadff06f          	j	800074a0 <__printf+0x3f8>
    800076f8:	00600793          	li	a5,6
    800076fc:	00500c93          	li	s9,5
    80007700:	c09ff06f          	j	80007308 <__printf+0x260>
    80007704:	00800793          	li	a5,8
    80007708:	00700c93          	li	s9,7
    8000770c:	bfdff06f          	j	80007308 <__printf+0x260>
    80007710:	00100793          	li	a5,1
    80007714:	d91ff06f          	j	800074a4 <__printf+0x3fc>
    80007718:	00100793          	li	a5,1
    8000771c:	bf1ff06f          	j	8000730c <__printf+0x264>
    80007720:	00900793          	li	a5,9
    80007724:	00800c93          	li	s9,8
    80007728:	be1ff06f          	j	80007308 <__printf+0x260>
    8000772c:	00002517          	auipc	a0,0x2
    80007730:	fc450513          	addi	a0,a0,-60 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80007734:	00000097          	auipc	ra,0x0
    80007738:	918080e7          	jalr	-1768(ra) # 8000704c <panic>

000000008000773c <printfinit>:
    8000773c:	fe010113          	addi	sp,sp,-32
    80007740:	00813823          	sd	s0,16(sp)
    80007744:	00913423          	sd	s1,8(sp)
    80007748:	00113c23          	sd	ra,24(sp)
    8000774c:	02010413          	addi	s0,sp,32
    80007750:	00005497          	auipc	s1,0x5
    80007754:	38048493          	addi	s1,s1,896 # 8000cad0 <pr>
    80007758:	00048513          	mv	a0,s1
    8000775c:	00002597          	auipc	a1,0x2
    80007760:	fa458593          	addi	a1,a1,-92 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007764:	00000097          	auipc	ra,0x0
    80007768:	5f4080e7          	jalr	1524(ra) # 80007d58 <initlock>
    8000776c:	01813083          	ld	ra,24(sp)
    80007770:	01013403          	ld	s0,16(sp)
    80007774:	0004ac23          	sw	zero,24(s1)
    80007778:	00813483          	ld	s1,8(sp)
    8000777c:	02010113          	addi	sp,sp,32
    80007780:	00008067          	ret

0000000080007784 <uartinit>:
    80007784:	ff010113          	addi	sp,sp,-16
    80007788:	00813423          	sd	s0,8(sp)
    8000778c:	01010413          	addi	s0,sp,16
    80007790:	100007b7          	lui	a5,0x10000
    80007794:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007798:	f8000713          	li	a4,-128
    8000779c:	00e781a3          	sb	a4,3(a5)
    800077a0:	00300713          	li	a4,3
    800077a4:	00e78023          	sb	a4,0(a5)
    800077a8:	000780a3          	sb	zero,1(a5)
    800077ac:	00e781a3          	sb	a4,3(a5)
    800077b0:	00700693          	li	a3,7
    800077b4:	00d78123          	sb	a3,2(a5)
    800077b8:	00e780a3          	sb	a4,1(a5)
    800077bc:	00813403          	ld	s0,8(sp)
    800077c0:	01010113          	addi	sp,sp,16
    800077c4:	00008067          	ret

00000000800077c8 <uartputc>:
    800077c8:	00004797          	auipc	a5,0x4
    800077cc:	0107a783          	lw	a5,16(a5) # 8000b7d8 <panicked>
    800077d0:	00078463          	beqz	a5,800077d8 <uartputc+0x10>
    800077d4:	0000006f          	j	800077d4 <uartputc+0xc>
    800077d8:	fd010113          	addi	sp,sp,-48
    800077dc:	02813023          	sd	s0,32(sp)
    800077e0:	00913c23          	sd	s1,24(sp)
    800077e4:	01213823          	sd	s2,16(sp)
    800077e8:	01313423          	sd	s3,8(sp)
    800077ec:	02113423          	sd	ra,40(sp)
    800077f0:	03010413          	addi	s0,sp,48
    800077f4:	00004917          	auipc	s2,0x4
    800077f8:	fec90913          	addi	s2,s2,-20 # 8000b7e0 <uart_tx_r>
    800077fc:	00093783          	ld	a5,0(s2)
    80007800:	00004497          	auipc	s1,0x4
    80007804:	fe848493          	addi	s1,s1,-24 # 8000b7e8 <uart_tx_w>
    80007808:	0004b703          	ld	a4,0(s1)
    8000780c:	02078693          	addi	a3,a5,32
    80007810:	00050993          	mv	s3,a0
    80007814:	02e69c63          	bne	a3,a4,8000784c <uartputc+0x84>
    80007818:	00001097          	auipc	ra,0x1
    8000781c:	834080e7          	jalr	-1996(ra) # 8000804c <push_on>
    80007820:	00093783          	ld	a5,0(s2)
    80007824:	0004b703          	ld	a4,0(s1)
    80007828:	02078793          	addi	a5,a5,32
    8000782c:	00e79463          	bne	a5,a4,80007834 <uartputc+0x6c>
    80007830:	0000006f          	j	80007830 <uartputc+0x68>
    80007834:	00001097          	auipc	ra,0x1
    80007838:	88c080e7          	jalr	-1908(ra) # 800080c0 <pop_on>
    8000783c:	00093783          	ld	a5,0(s2)
    80007840:	0004b703          	ld	a4,0(s1)
    80007844:	02078693          	addi	a3,a5,32
    80007848:	fce688e3          	beq	a3,a4,80007818 <uartputc+0x50>
    8000784c:	01f77693          	andi	a3,a4,31
    80007850:	00005597          	auipc	a1,0x5
    80007854:	2a058593          	addi	a1,a1,672 # 8000caf0 <uart_tx_buf>
    80007858:	00d586b3          	add	a3,a1,a3
    8000785c:	00170713          	addi	a4,a4,1
    80007860:	01368023          	sb	s3,0(a3)
    80007864:	00e4b023          	sd	a4,0(s1)
    80007868:	10000637          	lui	a2,0x10000
    8000786c:	02f71063          	bne	a4,a5,8000788c <uartputc+0xc4>
    80007870:	0340006f          	j	800078a4 <uartputc+0xdc>
    80007874:	00074703          	lbu	a4,0(a4)
    80007878:	00f93023          	sd	a5,0(s2)
    8000787c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007880:	00093783          	ld	a5,0(s2)
    80007884:	0004b703          	ld	a4,0(s1)
    80007888:	00f70e63          	beq	a4,a5,800078a4 <uartputc+0xdc>
    8000788c:	00564683          	lbu	a3,5(a2)
    80007890:	01f7f713          	andi	a4,a5,31
    80007894:	00e58733          	add	a4,a1,a4
    80007898:	0206f693          	andi	a3,a3,32
    8000789c:	00178793          	addi	a5,a5,1
    800078a0:	fc069ae3          	bnez	a3,80007874 <uartputc+0xac>
    800078a4:	02813083          	ld	ra,40(sp)
    800078a8:	02013403          	ld	s0,32(sp)
    800078ac:	01813483          	ld	s1,24(sp)
    800078b0:	01013903          	ld	s2,16(sp)
    800078b4:	00813983          	ld	s3,8(sp)
    800078b8:	03010113          	addi	sp,sp,48
    800078bc:	00008067          	ret

00000000800078c0 <uartputc_sync>:
    800078c0:	ff010113          	addi	sp,sp,-16
    800078c4:	00813423          	sd	s0,8(sp)
    800078c8:	01010413          	addi	s0,sp,16
    800078cc:	00004717          	auipc	a4,0x4
    800078d0:	f0c72703          	lw	a4,-244(a4) # 8000b7d8 <panicked>
    800078d4:	02071663          	bnez	a4,80007900 <uartputc_sync+0x40>
    800078d8:	00050793          	mv	a5,a0
    800078dc:	100006b7          	lui	a3,0x10000
    800078e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800078e4:	02077713          	andi	a4,a4,32
    800078e8:	fe070ce3          	beqz	a4,800078e0 <uartputc_sync+0x20>
    800078ec:	0ff7f793          	andi	a5,a5,255
    800078f0:	00f68023          	sb	a5,0(a3)
    800078f4:	00813403          	ld	s0,8(sp)
    800078f8:	01010113          	addi	sp,sp,16
    800078fc:	00008067          	ret
    80007900:	0000006f          	j	80007900 <uartputc_sync+0x40>

0000000080007904 <uartstart>:
    80007904:	ff010113          	addi	sp,sp,-16
    80007908:	00813423          	sd	s0,8(sp)
    8000790c:	01010413          	addi	s0,sp,16
    80007910:	00004617          	auipc	a2,0x4
    80007914:	ed060613          	addi	a2,a2,-304 # 8000b7e0 <uart_tx_r>
    80007918:	00004517          	auipc	a0,0x4
    8000791c:	ed050513          	addi	a0,a0,-304 # 8000b7e8 <uart_tx_w>
    80007920:	00063783          	ld	a5,0(a2)
    80007924:	00053703          	ld	a4,0(a0)
    80007928:	04f70263          	beq	a4,a5,8000796c <uartstart+0x68>
    8000792c:	100005b7          	lui	a1,0x10000
    80007930:	00005817          	auipc	a6,0x5
    80007934:	1c080813          	addi	a6,a6,448 # 8000caf0 <uart_tx_buf>
    80007938:	01c0006f          	j	80007954 <uartstart+0x50>
    8000793c:	0006c703          	lbu	a4,0(a3)
    80007940:	00f63023          	sd	a5,0(a2)
    80007944:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007948:	00063783          	ld	a5,0(a2)
    8000794c:	00053703          	ld	a4,0(a0)
    80007950:	00f70e63          	beq	a4,a5,8000796c <uartstart+0x68>
    80007954:	01f7f713          	andi	a4,a5,31
    80007958:	00e806b3          	add	a3,a6,a4
    8000795c:	0055c703          	lbu	a4,5(a1)
    80007960:	00178793          	addi	a5,a5,1
    80007964:	02077713          	andi	a4,a4,32
    80007968:	fc071ae3          	bnez	a4,8000793c <uartstart+0x38>
    8000796c:	00813403          	ld	s0,8(sp)
    80007970:	01010113          	addi	sp,sp,16
    80007974:	00008067          	ret

0000000080007978 <uartgetc>:
    80007978:	ff010113          	addi	sp,sp,-16
    8000797c:	00813423          	sd	s0,8(sp)
    80007980:	01010413          	addi	s0,sp,16
    80007984:	10000737          	lui	a4,0x10000
    80007988:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000798c:	0017f793          	andi	a5,a5,1
    80007990:	00078c63          	beqz	a5,800079a8 <uartgetc+0x30>
    80007994:	00074503          	lbu	a0,0(a4)
    80007998:	0ff57513          	andi	a0,a0,255
    8000799c:	00813403          	ld	s0,8(sp)
    800079a0:	01010113          	addi	sp,sp,16
    800079a4:	00008067          	ret
    800079a8:	fff00513          	li	a0,-1
    800079ac:	ff1ff06f          	j	8000799c <uartgetc+0x24>

00000000800079b0 <uartintr>:
    800079b0:	100007b7          	lui	a5,0x10000
    800079b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800079b8:	0017f793          	andi	a5,a5,1
    800079bc:	0a078463          	beqz	a5,80007a64 <uartintr+0xb4>
    800079c0:	fe010113          	addi	sp,sp,-32
    800079c4:	00813823          	sd	s0,16(sp)
    800079c8:	00913423          	sd	s1,8(sp)
    800079cc:	00113c23          	sd	ra,24(sp)
    800079d0:	02010413          	addi	s0,sp,32
    800079d4:	100004b7          	lui	s1,0x10000
    800079d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800079dc:	0ff57513          	andi	a0,a0,255
    800079e0:	fffff097          	auipc	ra,0xfffff
    800079e4:	534080e7          	jalr	1332(ra) # 80006f14 <consoleintr>
    800079e8:	0054c783          	lbu	a5,5(s1)
    800079ec:	0017f793          	andi	a5,a5,1
    800079f0:	fe0794e3          	bnez	a5,800079d8 <uartintr+0x28>
    800079f4:	00004617          	auipc	a2,0x4
    800079f8:	dec60613          	addi	a2,a2,-532 # 8000b7e0 <uart_tx_r>
    800079fc:	00004517          	auipc	a0,0x4
    80007a00:	dec50513          	addi	a0,a0,-532 # 8000b7e8 <uart_tx_w>
    80007a04:	00063783          	ld	a5,0(a2)
    80007a08:	00053703          	ld	a4,0(a0)
    80007a0c:	04f70263          	beq	a4,a5,80007a50 <uartintr+0xa0>
    80007a10:	100005b7          	lui	a1,0x10000
    80007a14:	00005817          	auipc	a6,0x5
    80007a18:	0dc80813          	addi	a6,a6,220 # 8000caf0 <uart_tx_buf>
    80007a1c:	01c0006f          	j	80007a38 <uartintr+0x88>
    80007a20:	0006c703          	lbu	a4,0(a3)
    80007a24:	00f63023          	sd	a5,0(a2)
    80007a28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a2c:	00063783          	ld	a5,0(a2)
    80007a30:	00053703          	ld	a4,0(a0)
    80007a34:	00f70e63          	beq	a4,a5,80007a50 <uartintr+0xa0>
    80007a38:	01f7f713          	andi	a4,a5,31
    80007a3c:	00e806b3          	add	a3,a6,a4
    80007a40:	0055c703          	lbu	a4,5(a1)
    80007a44:	00178793          	addi	a5,a5,1
    80007a48:	02077713          	andi	a4,a4,32
    80007a4c:	fc071ae3          	bnez	a4,80007a20 <uartintr+0x70>
    80007a50:	01813083          	ld	ra,24(sp)
    80007a54:	01013403          	ld	s0,16(sp)
    80007a58:	00813483          	ld	s1,8(sp)
    80007a5c:	02010113          	addi	sp,sp,32
    80007a60:	00008067          	ret
    80007a64:	00004617          	auipc	a2,0x4
    80007a68:	d7c60613          	addi	a2,a2,-644 # 8000b7e0 <uart_tx_r>
    80007a6c:	00004517          	auipc	a0,0x4
    80007a70:	d7c50513          	addi	a0,a0,-644 # 8000b7e8 <uart_tx_w>
    80007a74:	00063783          	ld	a5,0(a2)
    80007a78:	00053703          	ld	a4,0(a0)
    80007a7c:	04f70263          	beq	a4,a5,80007ac0 <uartintr+0x110>
    80007a80:	100005b7          	lui	a1,0x10000
    80007a84:	00005817          	auipc	a6,0x5
    80007a88:	06c80813          	addi	a6,a6,108 # 8000caf0 <uart_tx_buf>
    80007a8c:	01c0006f          	j	80007aa8 <uartintr+0xf8>
    80007a90:	0006c703          	lbu	a4,0(a3)
    80007a94:	00f63023          	sd	a5,0(a2)
    80007a98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a9c:	00063783          	ld	a5,0(a2)
    80007aa0:	00053703          	ld	a4,0(a0)
    80007aa4:	02f70063          	beq	a4,a5,80007ac4 <uartintr+0x114>
    80007aa8:	01f7f713          	andi	a4,a5,31
    80007aac:	00e806b3          	add	a3,a6,a4
    80007ab0:	0055c703          	lbu	a4,5(a1)
    80007ab4:	00178793          	addi	a5,a5,1
    80007ab8:	02077713          	andi	a4,a4,32
    80007abc:	fc071ae3          	bnez	a4,80007a90 <uartintr+0xe0>
    80007ac0:	00008067          	ret
    80007ac4:	00008067          	ret

0000000080007ac8 <kinit>:
    80007ac8:	fc010113          	addi	sp,sp,-64
    80007acc:	02913423          	sd	s1,40(sp)
    80007ad0:	fffff7b7          	lui	a5,0xfffff
    80007ad4:	00006497          	auipc	s1,0x6
    80007ad8:	03b48493          	addi	s1,s1,59 # 8000db0f <end+0xfff>
    80007adc:	02813823          	sd	s0,48(sp)
    80007ae0:	01313c23          	sd	s3,24(sp)
    80007ae4:	00f4f4b3          	and	s1,s1,a5
    80007ae8:	02113c23          	sd	ra,56(sp)
    80007aec:	03213023          	sd	s2,32(sp)
    80007af0:	01413823          	sd	s4,16(sp)
    80007af4:	01513423          	sd	s5,8(sp)
    80007af8:	04010413          	addi	s0,sp,64
    80007afc:	000017b7          	lui	a5,0x1
    80007b00:	01100993          	li	s3,17
    80007b04:	00f487b3          	add	a5,s1,a5
    80007b08:	01b99993          	slli	s3,s3,0x1b
    80007b0c:	06f9e063          	bltu	s3,a5,80007b6c <kinit+0xa4>
    80007b10:	00005a97          	auipc	s5,0x5
    80007b14:	000a8a93          	mv	s5,s5
    80007b18:	0754ec63          	bltu	s1,s5,80007b90 <kinit+0xc8>
    80007b1c:	0734fa63          	bgeu	s1,s3,80007b90 <kinit+0xc8>
    80007b20:	00088a37          	lui	s4,0x88
    80007b24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b28:	00004917          	auipc	s2,0x4
    80007b2c:	cc890913          	addi	s2,s2,-824 # 8000b7f0 <kmem>
    80007b30:	00ca1a13          	slli	s4,s4,0xc
    80007b34:	0140006f          	j	80007b48 <kinit+0x80>
    80007b38:	000017b7          	lui	a5,0x1
    80007b3c:	00f484b3          	add	s1,s1,a5
    80007b40:	0554e863          	bltu	s1,s5,80007b90 <kinit+0xc8>
    80007b44:	0534f663          	bgeu	s1,s3,80007b90 <kinit+0xc8>
    80007b48:	00001637          	lui	a2,0x1
    80007b4c:	00100593          	li	a1,1
    80007b50:	00048513          	mv	a0,s1
    80007b54:	00000097          	auipc	ra,0x0
    80007b58:	5e4080e7          	jalr	1508(ra) # 80008138 <__memset>
    80007b5c:	00093783          	ld	a5,0(s2)
    80007b60:	00f4b023          	sd	a5,0(s1)
    80007b64:	00993023          	sd	s1,0(s2)
    80007b68:	fd4498e3          	bne	s1,s4,80007b38 <kinit+0x70>
    80007b6c:	03813083          	ld	ra,56(sp)
    80007b70:	03013403          	ld	s0,48(sp)
    80007b74:	02813483          	ld	s1,40(sp)
    80007b78:	02013903          	ld	s2,32(sp)
    80007b7c:	01813983          	ld	s3,24(sp)
    80007b80:	01013a03          	ld	s4,16(sp)
    80007b84:	00813a83          	ld	s5,8(sp)
    80007b88:	04010113          	addi	sp,sp,64
    80007b8c:	00008067          	ret
    80007b90:	00002517          	auipc	a0,0x2
    80007b94:	b9050513          	addi	a0,a0,-1136 # 80009720 <digits+0x18>
    80007b98:	fffff097          	auipc	ra,0xfffff
    80007b9c:	4b4080e7          	jalr	1204(ra) # 8000704c <panic>

0000000080007ba0 <freerange>:
    80007ba0:	fc010113          	addi	sp,sp,-64
    80007ba4:	000017b7          	lui	a5,0x1
    80007ba8:	02913423          	sd	s1,40(sp)
    80007bac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007bb0:	009504b3          	add	s1,a0,s1
    80007bb4:	fffff537          	lui	a0,0xfffff
    80007bb8:	02813823          	sd	s0,48(sp)
    80007bbc:	02113c23          	sd	ra,56(sp)
    80007bc0:	03213023          	sd	s2,32(sp)
    80007bc4:	01313c23          	sd	s3,24(sp)
    80007bc8:	01413823          	sd	s4,16(sp)
    80007bcc:	01513423          	sd	s5,8(sp)
    80007bd0:	01613023          	sd	s6,0(sp)
    80007bd4:	04010413          	addi	s0,sp,64
    80007bd8:	00a4f4b3          	and	s1,s1,a0
    80007bdc:	00f487b3          	add	a5,s1,a5
    80007be0:	06f5e463          	bltu	a1,a5,80007c48 <freerange+0xa8>
    80007be4:	00005a97          	auipc	s5,0x5
    80007be8:	f2ca8a93          	addi	s5,s5,-212 # 8000cb10 <end>
    80007bec:	0954e263          	bltu	s1,s5,80007c70 <freerange+0xd0>
    80007bf0:	01100993          	li	s3,17
    80007bf4:	01b99993          	slli	s3,s3,0x1b
    80007bf8:	0734fc63          	bgeu	s1,s3,80007c70 <freerange+0xd0>
    80007bfc:	00058a13          	mv	s4,a1
    80007c00:	00004917          	auipc	s2,0x4
    80007c04:	bf090913          	addi	s2,s2,-1040 # 8000b7f0 <kmem>
    80007c08:	00002b37          	lui	s6,0x2
    80007c0c:	0140006f          	j	80007c20 <freerange+0x80>
    80007c10:	000017b7          	lui	a5,0x1
    80007c14:	00f484b3          	add	s1,s1,a5
    80007c18:	0554ec63          	bltu	s1,s5,80007c70 <freerange+0xd0>
    80007c1c:	0534fa63          	bgeu	s1,s3,80007c70 <freerange+0xd0>
    80007c20:	00001637          	lui	a2,0x1
    80007c24:	00100593          	li	a1,1
    80007c28:	00048513          	mv	a0,s1
    80007c2c:	00000097          	auipc	ra,0x0
    80007c30:	50c080e7          	jalr	1292(ra) # 80008138 <__memset>
    80007c34:	00093703          	ld	a4,0(s2)
    80007c38:	016487b3          	add	a5,s1,s6
    80007c3c:	00e4b023          	sd	a4,0(s1)
    80007c40:	00993023          	sd	s1,0(s2)
    80007c44:	fcfa76e3          	bgeu	s4,a5,80007c10 <freerange+0x70>
    80007c48:	03813083          	ld	ra,56(sp)
    80007c4c:	03013403          	ld	s0,48(sp)
    80007c50:	02813483          	ld	s1,40(sp)
    80007c54:	02013903          	ld	s2,32(sp)
    80007c58:	01813983          	ld	s3,24(sp)
    80007c5c:	01013a03          	ld	s4,16(sp)
    80007c60:	00813a83          	ld	s5,8(sp)
    80007c64:	00013b03          	ld	s6,0(sp)
    80007c68:	04010113          	addi	sp,sp,64
    80007c6c:	00008067          	ret
    80007c70:	00002517          	auipc	a0,0x2
    80007c74:	ab050513          	addi	a0,a0,-1360 # 80009720 <digits+0x18>
    80007c78:	fffff097          	auipc	ra,0xfffff
    80007c7c:	3d4080e7          	jalr	980(ra) # 8000704c <panic>

0000000080007c80 <kfree>:
    80007c80:	fe010113          	addi	sp,sp,-32
    80007c84:	00813823          	sd	s0,16(sp)
    80007c88:	00113c23          	sd	ra,24(sp)
    80007c8c:	00913423          	sd	s1,8(sp)
    80007c90:	02010413          	addi	s0,sp,32
    80007c94:	03451793          	slli	a5,a0,0x34
    80007c98:	04079c63          	bnez	a5,80007cf0 <kfree+0x70>
    80007c9c:	00005797          	auipc	a5,0x5
    80007ca0:	e7478793          	addi	a5,a5,-396 # 8000cb10 <end>
    80007ca4:	00050493          	mv	s1,a0
    80007ca8:	04f56463          	bltu	a0,a5,80007cf0 <kfree+0x70>
    80007cac:	01100793          	li	a5,17
    80007cb0:	01b79793          	slli	a5,a5,0x1b
    80007cb4:	02f57e63          	bgeu	a0,a5,80007cf0 <kfree+0x70>
    80007cb8:	00001637          	lui	a2,0x1
    80007cbc:	00100593          	li	a1,1
    80007cc0:	00000097          	auipc	ra,0x0
    80007cc4:	478080e7          	jalr	1144(ra) # 80008138 <__memset>
    80007cc8:	00004797          	auipc	a5,0x4
    80007ccc:	b2878793          	addi	a5,a5,-1240 # 8000b7f0 <kmem>
    80007cd0:	0007b703          	ld	a4,0(a5)
    80007cd4:	01813083          	ld	ra,24(sp)
    80007cd8:	01013403          	ld	s0,16(sp)
    80007cdc:	00e4b023          	sd	a4,0(s1)
    80007ce0:	0097b023          	sd	s1,0(a5)
    80007ce4:	00813483          	ld	s1,8(sp)
    80007ce8:	02010113          	addi	sp,sp,32
    80007cec:	00008067          	ret
    80007cf0:	00002517          	auipc	a0,0x2
    80007cf4:	a3050513          	addi	a0,a0,-1488 # 80009720 <digits+0x18>
    80007cf8:	fffff097          	auipc	ra,0xfffff
    80007cfc:	354080e7          	jalr	852(ra) # 8000704c <panic>

0000000080007d00 <kalloc>:
    80007d00:	fe010113          	addi	sp,sp,-32
    80007d04:	00813823          	sd	s0,16(sp)
    80007d08:	00913423          	sd	s1,8(sp)
    80007d0c:	00113c23          	sd	ra,24(sp)
    80007d10:	02010413          	addi	s0,sp,32
    80007d14:	00004797          	auipc	a5,0x4
    80007d18:	adc78793          	addi	a5,a5,-1316 # 8000b7f0 <kmem>
    80007d1c:	0007b483          	ld	s1,0(a5)
    80007d20:	02048063          	beqz	s1,80007d40 <kalloc+0x40>
    80007d24:	0004b703          	ld	a4,0(s1)
    80007d28:	00001637          	lui	a2,0x1
    80007d2c:	00500593          	li	a1,5
    80007d30:	00048513          	mv	a0,s1
    80007d34:	00e7b023          	sd	a4,0(a5)
    80007d38:	00000097          	auipc	ra,0x0
    80007d3c:	400080e7          	jalr	1024(ra) # 80008138 <__memset>
    80007d40:	01813083          	ld	ra,24(sp)
    80007d44:	01013403          	ld	s0,16(sp)
    80007d48:	00048513          	mv	a0,s1
    80007d4c:	00813483          	ld	s1,8(sp)
    80007d50:	02010113          	addi	sp,sp,32
    80007d54:	00008067          	ret

0000000080007d58 <initlock>:
    80007d58:	ff010113          	addi	sp,sp,-16
    80007d5c:	00813423          	sd	s0,8(sp)
    80007d60:	01010413          	addi	s0,sp,16
    80007d64:	00813403          	ld	s0,8(sp)
    80007d68:	00b53423          	sd	a1,8(a0)
    80007d6c:	00052023          	sw	zero,0(a0)
    80007d70:	00053823          	sd	zero,16(a0)
    80007d74:	01010113          	addi	sp,sp,16
    80007d78:	00008067          	ret

0000000080007d7c <acquire>:
    80007d7c:	fe010113          	addi	sp,sp,-32
    80007d80:	00813823          	sd	s0,16(sp)
    80007d84:	00913423          	sd	s1,8(sp)
    80007d88:	00113c23          	sd	ra,24(sp)
    80007d8c:	01213023          	sd	s2,0(sp)
    80007d90:	02010413          	addi	s0,sp,32
    80007d94:	00050493          	mv	s1,a0
    80007d98:	10002973          	csrr	s2,sstatus
    80007d9c:	100027f3          	csrr	a5,sstatus
    80007da0:	ffd7f793          	andi	a5,a5,-3
    80007da4:	10079073          	csrw	sstatus,a5
    80007da8:	fffff097          	auipc	ra,0xfffff
    80007dac:	8e0080e7          	jalr	-1824(ra) # 80006688 <mycpu>
    80007db0:	07852783          	lw	a5,120(a0)
    80007db4:	06078e63          	beqz	a5,80007e30 <acquire+0xb4>
    80007db8:	fffff097          	auipc	ra,0xfffff
    80007dbc:	8d0080e7          	jalr	-1840(ra) # 80006688 <mycpu>
    80007dc0:	07852783          	lw	a5,120(a0)
    80007dc4:	0004a703          	lw	a4,0(s1)
    80007dc8:	0017879b          	addiw	a5,a5,1
    80007dcc:	06f52c23          	sw	a5,120(a0)
    80007dd0:	04071063          	bnez	a4,80007e10 <acquire+0x94>
    80007dd4:	00100713          	li	a4,1
    80007dd8:	00070793          	mv	a5,a4
    80007ddc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007de0:	0007879b          	sext.w	a5,a5
    80007de4:	fe079ae3          	bnez	a5,80007dd8 <acquire+0x5c>
    80007de8:	0ff0000f          	fence
    80007dec:	fffff097          	auipc	ra,0xfffff
    80007df0:	89c080e7          	jalr	-1892(ra) # 80006688 <mycpu>
    80007df4:	01813083          	ld	ra,24(sp)
    80007df8:	01013403          	ld	s0,16(sp)
    80007dfc:	00a4b823          	sd	a0,16(s1)
    80007e00:	00013903          	ld	s2,0(sp)
    80007e04:	00813483          	ld	s1,8(sp)
    80007e08:	02010113          	addi	sp,sp,32
    80007e0c:	00008067          	ret
    80007e10:	0104b903          	ld	s2,16(s1)
    80007e14:	fffff097          	auipc	ra,0xfffff
    80007e18:	874080e7          	jalr	-1932(ra) # 80006688 <mycpu>
    80007e1c:	faa91ce3          	bne	s2,a0,80007dd4 <acquire+0x58>
    80007e20:	00002517          	auipc	a0,0x2
    80007e24:	90850513          	addi	a0,a0,-1784 # 80009728 <digits+0x20>
    80007e28:	fffff097          	auipc	ra,0xfffff
    80007e2c:	224080e7          	jalr	548(ra) # 8000704c <panic>
    80007e30:	00195913          	srli	s2,s2,0x1
    80007e34:	fffff097          	auipc	ra,0xfffff
    80007e38:	854080e7          	jalr	-1964(ra) # 80006688 <mycpu>
    80007e3c:	00197913          	andi	s2,s2,1
    80007e40:	07252e23          	sw	s2,124(a0)
    80007e44:	f75ff06f          	j	80007db8 <acquire+0x3c>

0000000080007e48 <release>:
    80007e48:	fe010113          	addi	sp,sp,-32
    80007e4c:	00813823          	sd	s0,16(sp)
    80007e50:	00113c23          	sd	ra,24(sp)
    80007e54:	00913423          	sd	s1,8(sp)
    80007e58:	01213023          	sd	s2,0(sp)
    80007e5c:	02010413          	addi	s0,sp,32
    80007e60:	00052783          	lw	a5,0(a0)
    80007e64:	00079a63          	bnez	a5,80007e78 <release+0x30>
    80007e68:	00002517          	auipc	a0,0x2
    80007e6c:	8c850513          	addi	a0,a0,-1848 # 80009730 <digits+0x28>
    80007e70:	fffff097          	auipc	ra,0xfffff
    80007e74:	1dc080e7          	jalr	476(ra) # 8000704c <panic>
    80007e78:	01053903          	ld	s2,16(a0)
    80007e7c:	00050493          	mv	s1,a0
    80007e80:	fffff097          	auipc	ra,0xfffff
    80007e84:	808080e7          	jalr	-2040(ra) # 80006688 <mycpu>
    80007e88:	fea910e3          	bne	s2,a0,80007e68 <release+0x20>
    80007e8c:	0004b823          	sd	zero,16(s1)
    80007e90:	0ff0000f          	fence
    80007e94:	0f50000f          	fence	iorw,ow
    80007e98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007e9c:	ffffe097          	auipc	ra,0xffffe
    80007ea0:	7ec080e7          	jalr	2028(ra) # 80006688 <mycpu>
    80007ea4:	100027f3          	csrr	a5,sstatus
    80007ea8:	0027f793          	andi	a5,a5,2
    80007eac:	04079a63          	bnez	a5,80007f00 <release+0xb8>
    80007eb0:	07852783          	lw	a5,120(a0)
    80007eb4:	02f05e63          	blez	a5,80007ef0 <release+0xa8>
    80007eb8:	fff7871b          	addiw	a4,a5,-1
    80007ebc:	06e52c23          	sw	a4,120(a0)
    80007ec0:	00071c63          	bnez	a4,80007ed8 <release+0x90>
    80007ec4:	07c52783          	lw	a5,124(a0)
    80007ec8:	00078863          	beqz	a5,80007ed8 <release+0x90>
    80007ecc:	100027f3          	csrr	a5,sstatus
    80007ed0:	0027e793          	ori	a5,a5,2
    80007ed4:	10079073          	csrw	sstatus,a5
    80007ed8:	01813083          	ld	ra,24(sp)
    80007edc:	01013403          	ld	s0,16(sp)
    80007ee0:	00813483          	ld	s1,8(sp)
    80007ee4:	00013903          	ld	s2,0(sp)
    80007ee8:	02010113          	addi	sp,sp,32
    80007eec:	00008067          	ret
    80007ef0:	00002517          	auipc	a0,0x2
    80007ef4:	86050513          	addi	a0,a0,-1952 # 80009750 <digits+0x48>
    80007ef8:	fffff097          	auipc	ra,0xfffff
    80007efc:	154080e7          	jalr	340(ra) # 8000704c <panic>
    80007f00:	00002517          	auipc	a0,0x2
    80007f04:	83850513          	addi	a0,a0,-1992 # 80009738 <digits+0x30>
    80007f08:	fffff097          	auipc	ra,0xfffff
    80007f0c:	144080e7          	jalr	324(ra) # 8000704c <panic>

0000000080007f10 <holding>:
    80007f10:	00052783          	lw	a5,0(a0)
    80007f14:	00079663          	bnez	a5,80007f20 <holding+0x10>
    80007f18:	00000513          	li	a0,0
    80007f1c:	00008067          	ret
    80007f20:	fe010113          	addi	sp,sp,-32
    80007f24:	00813823          	sd	s0,16(sp)
    80007f28:	00913423          	sd	s1,8(sp)
    80007f2c:	00113c23          	sd	ra,24(sp)
    80007f30:	02010413          	addi	s0,sp,32
    80007f34:	01053483          	ld	s1,16(a0)
    80007f38:	ffffe097          	auipc	ra,0xffffe
    80007f3c:	750080e7          	jalr	1872(ra) # 80006688 <mycpu>
    80007f40:	01813083          	ld	ra,24(sp)
    80007f44:	01013403          	ld	s0,16(sp)
    80007f48:	40a48533          	sub	a0,s1,a0
    80007f4c:	00153513          	seqz	a0,a0
    80007f50:	00813483          	ld	s1,8(sp)
    80007f54:	02010113          	addi	sp,sp,32
    80007f58:	00008067          	ret

0000000080007f5c <push_off>:
    80007f5c:	fe010113          	addi	sp,sp,-32
    80007f60:	00813823          	sd	s0,16(sp)
    80007f64:	00113c23          	sd	ra,24(sp)
    80007f68:	00913423          	sd	s1,8(sp)
    80007f6c:	02010413          	addi	s0,sp,32
    80007f70:	100024f3          	csrr	s1,sstatus
    80007f74:	100027f3          	csrr	a5,sstatus
    80007f78:	ffd7f793          	andi	a5,a5,-3
    80007f7c:	10079073          	csrw	sstatus,a5
    80007f80:	ffffe097          	auipc	ra,0xffffe
    80007f84:	708080e7          	jalr	1800(ra) # 80006688 <mycpu>
    80007f88:	07852783          	lw	a5,120(a0)
    80007f8c:	02078663          	beqz	a5,80007fb8 <push_off+0x5c>
    80007f90:	ffffe097          	auipc	ra,0xffffe
    80007f94:	6f8080e7          	jalr	1784(ra) # 80006688 <mycpu>
    80007f98:	07852783          	lw	a5,120(a0)
    80007f9c:	01813083          	ld	ra,24(sp)
    80007fa0:	01013403          	ld	s0,16(sp)
    80007fa4:	0017879b          	addiw	a5,a5,1
    80007fa8:	06f52c23          	sw	a5,120(a0)
    80007fac:	00813483          	ld	s1,8(sp)
    80007fb0:	02010113          	addi	sp,sp,32
    80007fb4:	00008067          	ret
    80007fb8:	0014d493          	srli	s1,s1,0x1
    80007fbc:	ffffe097          	auipc	ra,0xffffe
    80007fc0:	6cc080e7          	jalr	1740(ra) # 80006688 <mycpu>
    80007fc4:	0014f493          	andi	s1,s1,1
    80007fc8:	06952e23          	sw	s1,124(a0)
    80007fcc:	fc5ff06f          	j	80007f90 <push_off+0x34>

0000000080007fd0 <pop_off>:
    80007fd0:	ff010113          	addi	sp,sp,-16
    80007fd4:	00813023          	sd	s0,0(sp)
    80007fd8:	00113423          	sd	ra,8(sp)
    80007fdc:	01010413          	addi	s0,sp,16
    80007fe0:	ffffe097          	auipc	ra,0xffffe
    80007fe4:	6a8080e7          	jalr	1704(ra) # 80006688 <mycpu>
    80007fe8:	100027f3          	csrr	a5,sstatus
    80007fec:	0027f793          	andi	a5,a5,2
    80007ff0:	04079663          	bnez	a5,8000803c <pop_off+0x6c>
    80007ff4:	07852783          	lw	a5,120(a0)
    80007ff8:	02f05a63          	blez	a5,8000802c <pop_off+0x5c>
    80007ffc:	fff7871b          	addiw	a4,a5,-1
    80008000:	06e52c23          	sw	a4,120(a0)
    80008004:	00071c63          	bnez	a4,8000801c <pop_off+0x4c>
    80008008:	07c52783          	lw	a5,124(a0)
    8000800c:	00078863          	beqz	a5,8000801c <pop_off+0x4c>
    80008010:	100027f3          	csrr	a5,sstatus
    80008014:	0027e793          	ori	a5,a5,2
    80008018:	10079073          	csrw	sstatus,a5
    8000801c:	00813083          	ld	ra,8(sp)
    80008020:	00013403          	ld	s0,0(sp)
    80008024:	01010113          	addi	sp,sp,16
    80008028:	00008067          	ret
    8000802c:	00001517          	auipc	a0,0x1
    80008030:	72450513          	addi	a0,a0,1828 # 80009750 <digits+0x48>
    80008034:	fffff097          	auipc	ra,0xfffff
    80008038:	018080e7          	jalr	24(ra) # 8000704c <panic>
    8000803c:	00001517          	auipc	a0,0x1
    80008040:	6fc50513          	addi	a0,a0,1788 # 80009738 <digits+0x30>
    80008044:	fffff097          	auipc	ra,0xfffff
    80008048:	008080e7          	jalr	8(ra) # 8000704c <panic>

000000008000804c <push_on>:
    8000804c:	fe010113          	addi	sp,sp,-32
    80008050:	00813823          	sd	s0,16(sp)
    80008054:	00113c23          	sd	ra,24(sp)
    80008058:	00913423          	sd	s1,8(sp)
    8000805c:	02010413          	addi	s0,sp,32
    80008060:	100024f3          	csrr	s1,sstatus
    80008064:	100027f3          	csrr	a5,sstatus
    80008068:	0027e793          	ori	a5,a5,2
    8000806c:	10079073          	csrw	sstatus,a5
    80008070:	ffffe097          	auipc	ra,0xffffe
    80008074:	618080e7          	jalr	1560(ra) # 80006688 <mycpu>
    80008078:	07852783          	lw	a5,120(a0)
    8000807c:	02078663          	beqz	a5,800080a8 <push_on+0x5c>
    80008080:	ffffe097          	auipc	ra,0xffffe
    80008084:	608080e7          	jalr	1544(ra) # 80006688 <mycpu>
    80008088:	07852783          	lw	a5,120(a0)
    8000808c:	01813083          	ld	ra,24(sp)
    80008090:	01013403          	ld	s0,16(sp)
    80008094:	0017879b          	addiw	a5,a5,1
    80008098:	06f52c23          	sw	a5,120(a0)
    8000809c:	00813483          	ld	s1,8(sp)
    800080a0:	02010113          	addi	sp,sp,32
    800080a4:	00008067          	ret
    800080a8:	0014d493          	srli	s1,s1,0x1
    800080ac:	ffffe097          	auipc	ra,0xffffe
    800080b0:	5dc080e7          	jalr	1500(ra) # 80006688 <mycpu>
    800080b4:	0014f493          	andi	s1,s1,1
    800080b8:	06952e23          	sw	s1,124(a0)
    800080bc:	fc5ff06f          	j	80008080 <push_on+0x34>

00000000800080c0 <pop_on>:
    800080c0:	ff010113          	addi	sp,sp,-16
    800080c4:	00813023          	sd	s0,0(sp)
    800080c8:	00113423          	sd	ra,8(sp)
    800080cc:	01010413          	addi	s0,sp,16
    800080d0:	ffffe097          	auipc	ra,0xffffe
    800080d4:	5b8080e7          	jalr	1464(ra) # 80006688 <mycpu>
    800080d8:	100027f3          	csrr	a5,sstatus
    800080dc:	0027f793          	andi	a5,a5,2
    800080e0:	04078463          	beqz	a5,80008128 <pop_on+0x68>
    800080e4:	07852783          	lw	a5,120(a0)
    800080e8:	02f05863          	blez	a5,80008118 <pop_on+0x58>
    800080ec:	fff7879b          	addiw	a5,a5,-1
    800080f0:	06f52c23          	sw	a5,120(a0)
    800080f4:	07853783          	ld	a5,120(a0)
    800080f8:	00079863          	bnez	a5,80008108 <pop_on+0x48>
    800080fc:	100027f3          	csrr	a5,sstatus
    80008100:	ffd7f793          	andi	a5,a5,-3
    80008104:	10079073          	csrw	sstatus,a5
    80008108:	00813083          	ld	ra,8(sp)
    8000810c:	00013403          	ld	s0,0(sp)
    80008110:	01010113          	addi	sp,sp,16
    80008114:	00008067          	ret
    80008118:	00001517          	auipc	a0,0x1
    8000811c:	66050513          	addi	a0,a0,1632 # 80009778 <digits+0x70>
    80008120:	fffff097          	auipc	ra,0xfffff
    80008124:	f2c080e7          	jalr	-212(ra) # 8000704c <panic>
    80008128:	00001517          	auipc	a0,0x1
    8000812c:	63050513          	addi	a0,a0,1584 # 80009758 <digits+0x50>
    80008130:	fffff097          	auipc	ra,0xfffff
    80008134:	f1c080e7          	jalr	-228(ra) # 8000704c <panic>

0000000080008138 <__memset>:
    80008138:	ff010113          	addi	sp,sp,-16
    8000813c:	00813423          	sd	s0,8(sp)
    80008140:	01010413          	addi	s0,sp,16
    80008144:	1a060e63          	beqz	a2,80008300 <__memset+0x1c8>
    80008148:	40a007b3          	neg	a5,a0
    8000814c:	0077f793          	andi	a5,a5,7
    80008150:	00778693          	addi	a3,a5,7
    80008154:	00b00813          	li	a6,11
    80008158:	0ff5f593          	andi	a1,a1,255
    8000815c:	fff6071b          	addiw	a4,a2,-1
    80008160:	1b06e663          	bltu	a3,a6,8000830c <__memset+0x1d4>
    80008164:	1cd76463          	bltu	a4,a3,8000832c <__memset+0x1f4>
    80008168:	1a078e63          	beqz	a5,80008324 <__memset+0x1ec>
    8000816c:	00b50023          	sb	a1,0(a0)
    80008170:	00100713          	li	a4,1
    80008174:	1ae78463          	beq	a5,a4,8000831c <__memset+0x1e4>
    80008178:	00b500a3          	sb	a1,1(a0)
    8000817c:	00200713          	li	a4,2
    80008180:	1ae78a63          	beq	a5,a4,80008334 <__memset+0x1fc>
    80008184:	00b50123          	sb	a1,2(a0)
    80008188:	00300713          	li	a4,3
    8000818c:	18e78463          	beq	a5,a4,80008314 <__memset+0x1dc>
    80008190:	00b501a3          	sb	a1,3(a0)
    80008194:	00400713          	li	a4,4
    80008198:	1ae78263          	beq	a5,a4,8000833c <__memset+0x204>
    8000819c:	00b50223          	sb	a1,4(a0)
    800081a0:	00500713          	li	a4,5
    800081a4:	1ae78063          	beq	a5,a4,80008344 <__memset+0x20c>
    800081a8:	00b502a3          	sb	a1,5(a0)
    800081ac:	00700713          	li	a4,7
    800081b0:	18e79e63          	bne	a5,a4,8000834c <__memset+0x214>
    800081b4:	00b50323          	sb	a1,6(a0)
    800081b8:	00700e93          	li	t4,7
    800081bc:	00859713          	slli	a4,a1,0x8
    800081c0:	00e5e733          	or	a4,a1,a4
    800081c4:	01059e13          	slli	t3,a1,0x10
    800081c8:	01c76e33          	or	t3,a4,t3
    800081cc:	01859313          	slli	t1,a1,0x18
    800081d0:	006e6333          	or	t1,t3,t1
    800081d4:	02059893          	slli	a7,a1,0x20
    800081d8:	40f60e3b          	subw	t3,a2,a5
    800081dc:	011368b3          	or	a7,t1,a7
    800081e0:	02859813          	slli	a6,a1,0x28
    800081e4:	0108e833          	or	a6,a7,a6
    800081e8:	03059693          	slli	a3,a1,0x30
    800081ec:	003e589b          	srliw	a7,t3,0x3
    800081f0:	00d866b3          	or	a3,a6,a3
    800081f4:	03859713          	slli	a4,a1,0x38
    800081f8:	00389813          	slli	a6,a7,0x3
    800081fc:	00f507b3          	add	a5,a0,a5
    80008200:	00e6e733          	or	a4,a3,a4
    80008204:	000e089b          	sext.w	a7,t3
    80008208:	00f806b3          	add	a3,a6,a5
    8000820c:	00e7b023          	sd	a4,0(a5)
    80008210:	00878793          	addi	a5,a5,8
    80008214:	fed79ce3          	bne	a5,a3,8000820c <__memset+0xd4>
    80008218:	ff8e7793          	andi	a5,t3,-8
    8000821c:	0007871b          	sext.w	a4,a5
    80008220:	01d787bb          	addw	a5,a5,t4
    80008224:	0ce88e63          	beq	a7,a4,80008300 <__memset+0x1c8>
    80008228:	00f50733          	add	a4,a0,a5
    8000822c:	00b70023          	sb	a1,0(a4)
    80008230:	0017871b          	addiw	a4,a5,1
    80008234:	0cc77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008238:	00e50733          	add	a4,a0,a4
    8000823c:	00b70023          	sb	a1,0(a4)
    80008240:	0027871b          	addiw	a4,a5,2
    80008244:	0ac77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008248:	00e50733          	add	a4,a0,a4
    8000824c:	00b70023          	sb	a1,0(a4)
    80008250:	0037871b          	addiw	a4,a5,3
    80008254:	0ac77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008258:	00e50733          	add	a4,a0,a4
    8000825c:	00b70023          	sb	a1,0(a4)
    80008260:	0047871b          	addiw	a4,a5,4
    80008264:	08c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008268:	00e50733          	add	a4,a0,a4
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	0057871b          	addiw	a4,a5,5
    80008274:	08c77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	0067871b          	addiw	a4,a5,6
    80008284:	06c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008288:	00e50733          	add	a4,a0,a4
    8000828c:	00b70023          	sb	a1,0(a4)
    80008290:	0077871b          	addiw	a4,a5,7
    80008294:	06c77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    80008298:	00e50733          	add	a4,a0,a4
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0087871b          	addiw	a4,a5,8
    800082a4:	04c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0097871b          	addiw	a4,a5,9
    800082b4:	04c77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	00a7871b          	addiw	a4,a5,10
    800082c4:	02c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	00b7871b          	addiw	a4,a5,11
    800082d4:	02c77663          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	00c7871b          	addiw	a4,a5,12
    800082e4:	00c77e63          	bgeu	a4,a2,80008300 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	00d7879b          	addiw	a5,a5,13
    800082f4:	00c7f663          	bgeu	a5,a2,80008300 <__memset+0x1c8>
    800082f8:	00f507b3          	add	a5,a0,a5
    800082fc:	00b78023          	sb	a1,0(a5)
    80008300:	00813403          	ld	s0,8(sp)
    80008304:	01010113          	addi	sp,sp,16
    80008308:	00008067          	ret
    8000830c:	00b00693          	li	a3,11
    80008310:	e55ff06f          	j	80008164 <__memset+0x2c>
    80008314:	00300e93          	li	t4,3
    80008318:	ea5ff06f          	j	800081bc <__memset+0x84>
    8000831c:	00100e93          	li	t4,1
    80008320:	e9dff06f          	j	800081bc <__memset+0x84>
    80008324:	00000e93          	li	t4,0
    80008328:	e95ff06f          	j	800081bc <__memset+0x84>
    8000832c:	00000793          	li	a5,0
    80008330:	ef9ff06f          	j	80008228 <__memset+0xf0>
    80008334:	00200e93          	li	t4,2
    80008338:	e85ff06f          	j	800081bc <__memset+0x84>
    8000833c:	00400e93          	li	t4,4
    80008340:	e7dff06f          	j	800081bc <__memset+0x84>
    80008344:	00500e93          	li	t4,5
    80008348:	e75ff06f          	j	800081bc <__memset+0x84>
    8000834c:	00600e93          	li	t4,6
    80008350:	e6dff06f          	j	800081bc <__memset+0x84>

0000000080008354 <__memmove>:
    80008354:	ff010113          	addi	sp,sp,-16
    80008358:	00813423          	sd	s0,8(sp)
    8000835c:	01010413          	addi	s0,sp,16
    80008360:	0e060863          	beqz	a2,80008450 <__memmove+0xfc>
    80008364:	fff6069b          	addiw	a3,a2,-1
    80008368:	0006881b          	sext.w	a6,a3
    8000836c:	0ea5e863          	bltu	a1,a0,8000845c <__memmove+0x108>
    80008370:	00758713          	addi	a4,a1,7
    80008374:	00a5e7b3          	or	a5,a1,a0
    80008378:	40a70733          	sub	a4,a4,a0
    8000837c:	0077f793          	andi	a5,a5,7
    80008380:	00f73713          	sltiu	a4,a4,15
    80008384:	00174713          	xori	a4,a4,1
    80008388:	0017b793          	seqz	a5,a5
    8000838c:	00e7f7b3          	and	a5,a5,a4
    80008390:	10078863          	beqz	a5,800084a0 <__memmove+0x14c>
    80008394:	00900793          	li	a5,9
    80008398:	1107f463          	bgeu	a5,a6,800084a0 <__memmove+0x14c>
    8000839c:	0036581b          	srliw	a6,a2,0x3
    800083a0:	fff8081b          	addiw	a6,a6,-1
    800083a4:	02081813          	slli	a6,a6,0x20
    800083a8:	01d85893          	srli	a7,a6,0x1d
    800083ac:	00858813          	addi	a6,a1,8
    800083b0:	00058793          	mv	a5,a1
    800083b4:	00050713          	mv	a4,a0
    800083b8:	01088833          	add	a6,a7,a6
    800083bc:	0007b883          	ld	a7,0(a5)
    800083c0:	00878793          	addi	a5,a5,8
    800083c4:	00870713          	addi	a4,a4,8
    800083c8:	ff173c23          	sd	a7,-8(a4)
    800083cc:	ff0798e3          	bne	a5,a6,800083bc <__memmove+0x68>
    800083d0:	ff867713          	andi	a4,a2,-8
    800083d4:	02071793          	slli	a5,a4,0x20
    800083d8:	0207d793          	srli	a5,a5,0x20
    800083dc:	00f585b3          	add	a1,a1,a5
    800083e0:	40e686bb          	subw	a3,a3,a4
    800083e4:	00f507b3          	add	a5,a0,a5
    800083e8:	06e60463          	beq	a2,a4,80008450 <__memmove+0xfc>
    800083ec:	0005c703          	lbu	a4,0(a1)
    800083f0:	00e78023          	sb	a4,0(a5)
    800083f4:	04068e63          	beqz	a3,80008450 <__memmove+0xfc>
    800083f8:	0015c603          	lbu	a2,1(a1)
    800083fc:	00100713          	li	a4,1
    80008400:	00c780a3          	sb	a2,1(a5)
    80008404:	04e68663          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008408:	0025c603          	lbu	a2,2(a1)
    8000840c:	00200713          	li	a4,2
    80008410:	00c78123          	sb	a2,2(a5)
    80008414:	02e68e63          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008418:	0035c603          	lbu	a2,3(a1)
    8000841c:	00300713          	li	a4,3
    80008420:	00c781a3          	sb	a2,3(a5)
    80008424:	02e68663          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008428:	0045c603          	lbu	a2,4(a1)
    8000842c:	00400713          	li	a4,4
    80008430:	00c78223          	sb	a2,4(a5)
    80008434:	00e68e63          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008438:	0055c603          	lbu	a2,5(a1)
    8000843c:	00500713          	li	a4,5
    80008440:	00c782a3          	sb	a2,5(a5)
    80008444:	00e68663          	beq	a3,a4,80008450 <__memmove+0xfc>
    80008448:	0065c703          	lbu	a4,6(a1)
    8000844c:	00e78323          	sb	a4,6(a5)
    80008450:	00813403          	ld	s0,8(sp)
    80008454:	01010113          	addi	sp,sp,16
    80008458:	00008067          	ret
    8000845c:	02061713          	slli	a4,a2,0x20
    80008460:	02075713          	srli	a4,a4,0x20
    80008464:	00e587b3          	add	a5,a1,a4
    80008468:	f0f574e3          	bgeu	a0,a5,80008370 <__memmove+0x1c>
    8000846c:	02069613          	slli	a2,a3,0x20
    80008470:	02065613          	srli	a2,a2,0x20
    80008474:	fff64613          	not	a2,a2
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00c78633          	add	a2,a5,a2
    80008480:	fff7c683          	lbu	a3,-1(a5)
    80008484:	fff78793          	addi	a5,a5,-1
    80008488:	fff70713          	addi	a4,a4,-1
    8000848c:	00d70023          	sb	a3,0(a4)
    80008490:	fec798e3          	bne	a5,a2,80008480 <__memmove+0x12c>
    80008494:	00813403          	ld	s0,8(sp)
    80008498:	01010113          	addi	sp,sp,16
    8000849c:	00008067          	ret
    800084a0:	02069713          	slli	a4,a3,0x20
    800084a4:	02075713          	srli	a4,a4,0x20
    800084a8:	00170713          	addi	a4,a4,1
    800084ac:	00e50733          	add	a4,a0,a4
    800084b0:	00050793          	mv	a5,a0
    800084b4:	0005c683          	lbu	a3,0(a1)
    800084b8:	00178793          	addi	a5,a5,1
    800084bc:	00158593          	addi	a1,a1,1
    800084c0:	fed78fa3          	sb	a3,-1(a5)
    800084c4:	fee798e3          	bne	a5,a4,800084b4 <__memmove+0x160>
    800084c8:	f89ff06f          	j	80008450 <__memmove+0xfc>

00000000800084cc <__putc>:
    800084cc:	fe010113          	addi	sp,sp,-32
    800084d0:	00813823          	sd	s0,16(sp)
    800084d4:	00113c23          	sd	ra,24(sp)
    800084d8:	02010413          	addi	s0,sp,32
    800084dc:	00050793          	mv	a5,a0
    800084e0:	fef40593          	addi	a1,s0,-17
    800084e4:	00100613          	li	a2,1
    800084e8:	00000513          	li	a0,0
    800084ec:	fef407a3          	sb	a5,-17(s0)
    800084f0:	fffff097          	auipc	ra,0xfffff
    800084f4:	b3c080e7          	jalr	-1220(ra) # 8000702c <console_write>
    800084f8:	01813083          	ld	ra,24(sp)
    800084fc:	01013403          	ld	s0,16(sp)
    80008500:	02010113          	addi	sp,sp,32
    80008504:	00008067          	ret

0000000080008508 <__getc>:
    80008508:	fe010113          	addi	sp,sp,-32
    8000850c:	00813823          	sd	s0,16(sp)
    80008510:	00113c23          	sd	ra,24(sp)
    80008514:	02010413          	addi	s0,sp,32
    80008518:	fe840593          	addi	a1,s0,-24
    8000851c:	00100613          	li	a2,1
    80008520:	00000513          	li	a0,0
    80008524:	fffff097          	auipc	ra,0xfffff
    80008528:	ae8080e7          	jalr	-1304(ra) # 8000700c <console_read>
    8000852c:	fe844503          	lbu	a0,-24(s0)
    80008530:	01813083          	ld	ra,24(sp)
    80008534:	01013403          	ld	s0,16(sp)
    80008538:	02010113          	addi	sp,sp,32
    8000853c:	00008067          	ret

0000000080008540 <console_handler>:
    80008540:	fe010113          	addi	sp,sp,-32
    80008544:	00813823          	sd	s0,16(sp)
    80008548:	00113c23          	sd	ra,24(sp)
    8000854c:	00913423          	sd	s1,8(sp)
    80008550:	02010413          	addi	s0,sp,32
    80008554:	14202773          	csrr	a4,scause
    80008558:	100027f3          	csrr	a5,sstatus
    8000855c:	0027f793          	andi	a5,a5,2
    80008560:	06079e63          	bnez	a5,800085dc <console_handler+0x9c>
    80008564:	00074c63          	bltz	a4,8000857c <console_handler+0x3c>
    80008568:	01813083          	ld	ra,24(sp)
    8000856c:	01013403          	ld	s0,16(sp)
    80008570:	00813483          	ld	s1,8(sp)
    80008574:	02010113          	addi	sp,sp,32
    80008578:	00008067          	ret
    8000857c:	0ff77713          	andi	a4,a4,255
    80008580:	00900793          	li	a5,9
    80008584:	fef712e3          	bne	a4,a5,80008568 <console_handler+0x28>
    80008588:	ffffe097          	auipc	ra,0xffffe
    8000858c:	6dc080e7          	jalr	1756(ra) # 80006c64 <plic_claim>
    80008590:	00a00793          	li	a5,10
    80008594:	00050493          	mv	s1,a0
    80008598:	02f50c63          	beq	a0,a5,800085d0 <console_handler+0x90>
    8000859c:	fc0506e3          	beqz	a0,80008568 <console_handler+0x28>
    800085a0:	00050593          	mv	a1,a0
    800085a4:	00001517          	auipc	a0,0x1
    800085a8:	0dc50513          	addi	a0,a0,220 # 80009680 <CONSOLE_STATUS+0x670>
    800085ac:	fffff097          	auipc	ra,0xfffff
    800085b0:	afc080e7          	jalr	-1284(ra) # 800070a8 <__printf>
    800085b4:	01013403          	ld	s0,16(sp)
    800085b8:	01813083          	ld	ra,24(sp)
    800085bc:	00048513          	mv	a0,s1
    800085c0:	00813483          	ld	s1,8(sp)
    800085c4:	02010113          	addi	sp,sp,32
    800085c8:	ffffe317          	auipc	t1,0xffffe
    800085cc:	6d430067          	jr	1748(t1) # 80006c9c <plic_complete>
    800085d0:	fffff097          	auipc	ra,0xfffff
    800085d4:	3e0080e7          	jalr	992(ra) # 800079b0 <uartintr>
    800085d8:	fddff06f          	j	800085b4 <console_handler+0x74>
    800085dc:	00001517          	auipc	a0,0x1
    800085e0:	1a450513          	addi	a0,a0,420 # 80009780 <digits+0x78>
    800085e4:	fffff097          	auipc	ra,0xfffff
    800085e8:	a68080e7          	jalr	-1432(ra) # 8000704c <panic>
	...
