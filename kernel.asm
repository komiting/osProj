
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9e813103          	ld	sp,-1560(sp) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x70>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	225060ef          	jal	ra,80006a40 <start>

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
    80001188:	650010ef          	jal	ra,800027d8 <_ZN5Riscv20handleSupervisorTrapEv>
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
    8000159c:	00001097          	auipc	ra,0x1
    800015a0:	d78080e7          	jalr	-648(ra) # 80002314 <_Znwm>
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
    800015ec:	4387b783          	ld	a5,1080(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
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
    80001600:	00002097          	auipc	ra,0x2
    80001604:	a0c080e7          	jalr	-1524(ra) # 8000300c <_ZN15MemoryAllocator9mem_allocEm>
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
    80001630:	73c080e7          	jalr	1852(ra) # 80001d68 <_ZN3TCB8dispatchEv>
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
    80001678:	3ac7b783          	ld	a5,940(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
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
    800016ac:	3787b783          	ld	a5,888(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
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
    8000171c:	00002097          	auipc	ra,0x2
    80001720:	a4c080e7          	jalr	-1460(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>
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
    8000174c:	5d4080e7          	jalr	1492(ra) # 80002d1c <_ZN9Scheduler3putEP3TCB>
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
#include "../h/myConsole.hpp"
extern void userMain();

void userMainWrapper(void* arg){
    80001854:	ff010113          	addi	sp,sp,-16
    80001858:	00113423          	sd	ra,8(sp)
    8000185c:	00813023          	sd	s0,0(sp)
    80001860:	01010413          	addi	s0,sp,16
    userMain();
    80001864:	00004097          	auipc	ra,0x4
    80001868:	654080e7          	jalr	1620(ra) # 80005eb8 <_Z8userMainv>
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
    800018b4:	0f07b783          	ld	a5,240(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018b8:	0007b783          	ld	a5,0(a5)
    800018bc:	0000a697          	auipc	a3,0xa
    800018c0:	11c6b683          	ld	a3,284(a3) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800018c4:	00f6b023          	sd	a5,0(a3)
        freeMemHead->next=nullptr;
    800018c8:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    800018cc:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    800018d0:	0000a717          	auipc	a4,0xa
    800018d4:	15873703          	ld	a4,344(a4) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0xb0>
    800018d8:	00073703          	ld	a4,0(a4)
    800018dc:	40f70733          	sub	a4,a4,a5
    800018e0:	fe870713          	addi	a4,a4,-24
    800018e4:	00e7b023          	sd	a4,0(a5)
        totalFreeMem=freeMemHead->size;
    800018e8:	0006b783          	ld	a5,0(a3)
    800018ec:	0007b783          	ld	a5,0(a5)
    800018f0:	0000a717          	auipc	a4,0xa
    800018f4:	10073703          	ld	a4,256(a4) # 8000b9f0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800018f8:	00f73023          	sd	a5,0(a4)
        largestFreeBlock=totalFreeMem;
    800018fc:	0000a717          	auipc	a4,0xa
    80001900:	08c73703          	ld	a4,140(a4) # 8000b988 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001904:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::initMemory();
    TCB *threads[5];
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001908:	0000a797          	auipc	a5,0xa
    8000190c:	0b07b783          	ld	a5,176(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80001920:	4c4080e7          	jalr	1220(ra) # 80001de0 <_ZN3TCB17createThreadBasicEPFvPvES0_>
    TCB::running = threads[0];
    80001924:	0000a797          	auipc	a5,0xa
    80001928:	0fc7b783          	ld	a5,252(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
    8000192c:	00a7b023          	sd	a0,0(a5)
    uint64 *stack1 = (uint64 *) MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    80001930:	00001537          	lui	a0,0x1
    80001934:	00001097          	auipc	ra,0x1
    80001938:	6d8080e7          	jalr	1752(ra) # 8000300c <_ZN15MemoryAllocator9mem_allocEm>
    8000193c:	00050493          	mv	s1,a0
    myConsole::initConsole();
    80001940:	00000097          	auipc	ra,0x0
    80001944:	130080e7          	jalr	304(ra) # 80001a70 <_ZN9myConsole11initConsoleEv>
    myConsole::consumer = TCB::createThreadKernel(&myConsole::putcHandlerWrapper, nullptr, stack1);
    80001948:	00048613          	mv	a2,s1
    8000194c:	00000593          	li	a1,0
    80001950:	0000a517          	auipc	a0,0xa
    80001954:	04853503          	ld	a0,72(a0) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	348080e7          	jalr	840(ra) # 80001ca0 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_>
    80001960:	0000a797          	auipc	a5,0xa
    80001964:	0987b783          	ld	a5,152(a5) # 8000b9f8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80001968:	00a7b023          	sd	a0,0(a5)

    Thread* idleThread = new Thread(idle,nullptr);
    8000196c:	02000513          	li	a0,32
    80001970:	00001097          	auipc	ra,0x1
    80001974:	9a4080e7          	jalr	-1628(ra) # 80002314 <_Znwm>
    80001978:	00050913          	mv	s2,a0
    8000197c:	00000613          	li	a2,0
    80001980:	00000597          	auipc	a1,0x0
    80001984:	efc58593          	addi	a1,a1,-260 # 8000187c <_Z4idlePv>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	a94080e7          	jalr	-1388(ra) # 8000241c <_ZN6ThreadC1EPFvPvES0_>
    Semaphore* sem = new Semaphore(0);
    80001990:	01000513          	li	a0,16
    80001994:	00001097          	auipc	ra,0x1
    80001998:	980080e7          	jalr	-1664(ra) # 80002314 <_Znwm>
    8000199c:	00050493          	mv	s1,a0
    800019a0:	00000593          	li	a1,0
    800019a4:	00001097          	auipc	ra,0x1
    800019a8:	bb8080e7          	jalr	-1096(ra) # 8000255c <_ZN9SemaphoreC1Ej>
    idleThread->start();
    800019ac:	00090513          	mv	a0,s2
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	afc080e7          	jalr	-1284(ra) # 800024ac <_ZN6Thread5startEv>

    Thread* userThread = new Thread(userMainWrapper, sem);
    800019b8:	02000513          	li	a0,32
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	958080e7          	jalr	-1704(ra) # 80002314 <_Znwm>
    800019c4:	00050913          	mv	s2,a0
    800019c8:	00048613          	mv	a2,s1
    800019cc:	00000597          	auipc	a1,0x0
    800019d0:	e8858593          	addi	a1,a1,-376 # 80001854 <_Z15userMainWrapperPv>
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	a48080e7          	jalr	-1464(ra) # 8000241c <_ZN6ThreadC1EPFvPvES0_>
    800019dc:	0580006f          	j	80001a34 <main+0x19c>
    800019e0:	00050493          	mv	s1,a0
    Thread* idleThread = new Thread(idle,nullptr);
    800019e4:	00090513          	mv	a0,s2
    800019e8:	00001097          	auipc	ra,0x1
    800019ec:	97c080e7          	jalr	-1668(ra) # 80002364 <_ZdlPv>
    800019f0:	00048513          	mv	a0,s1
    800019f4:	0000b097          	auipc	ra,0xb
    800019f8:	274080e7          	jalr	628(ra) # 8000cc68 <_Unwind_Resume>
    800019fc:	00050913          	mv	s2,a0
    Semaphore* sem = new Semaphore(0);
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	960080e7          	jalr	-1696(ra) # 80002364 <_ZdlPv>
    80001a0c:	00090513          	mv	a0,s2
    80001a10:	0000b097          	auipc	ra,0xb
    80001a14:	258080e7          	jalr	600(ra) # 8000cc68 <_Unwind_Resume>
    80001a18:	00050493          	mv	s1,a0
    Thread* userThread = new Thread(userMainWrapper, sem);
    80001a1c:	00090513          	mv	a0,s2
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	944080e7          	jalr	-1724(ra) # 80002364 <_ZdlPv>
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	0000b097          	auipc	ra,0xb
    80001a30:	23c080e7          	jalr	572(ra) # 8000cc68 <_Unwind_Resume>
    userThread->start();
    80001a34:	00090513          	mv	a0,s2
    80001a38:	00001097          	auipc	ra,0x1
    80001a3c:	a74080e7          	jalr	-1420(ra) # 800024ac <_ZN6Thread5startEv>

    myConsole::wait();
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	840080e7          	jalr	-1984(ra) # 80002280 <_ZN9myConsole4waitEv>
    sem->wait();
    80001a48:	00048513          	mv	a0,s1
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	b4c080e7          	jalr	-1204(ra) # 80002598 <_ZN9Semaphore4waitEv>

    return 0;
    80001a54:	00000513          	li	a0,0
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	00813483          	ld	s1,8(sp)
    80001a64:	00013903          	ld	s2,0(sp)
    80001a68:	02010113          	addi	sp,sp,32
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN9myConsole11initConsoleEv>:
#include "../h/Semaphore.hpp"
class myConsole
{
public:

    static void initConsole(){
    80001a70:	ff010113          	addi	sp,sp,-16
    80001a74:	00113423          	sd	ra,8(sp)
    80001a78:	00813023          	sd	s0,0(sp)
    80001a7c:	01010413          	addi	s0,sp,16
        inputBuf = new char[1024];
    80001a80:	40000513          	li	a0,1024
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	8b8080e7          	jalr	-1864(ra) # 8000233c <_Znam>
    80001a8c:	0000a797          	auipc	a5,0xa
    80001a90:	f7c7b783          	ld	a5,-132(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x90>
    80001a94:	00a7b023          	sd	a0,0(a5)
        outputBuf = new char[1024];
    80001a98:	40000513          	li	a0,1024
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	8a0080e7          	jalr	-1888(ra) # 8000233c <_Znam>
    80001aa4:	0000a797          	auipc	a5,0xa
    80001aa8:	f747b783          	ld	a5,-140(a5) # 8000ba18 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80001aac:	00a7b023          	sd	a0,0(a5)
        inputItemAvail = mySemaphore::createSemaphore(0);
    80001ab0:	00000513          	li	a0,0
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	acc080e7          	jalr	-1332(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001abc:	0000a797          	auipc	a5,0xa
    80001ac0:	ef47b783          	ld	a5,-268(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001ac4:	00a7b023          	sd	a0,0(a5)
        outputItemAvail = mySemaphore::createSemaphore(0);
    80001ac8:	00000513          	li	a0,0
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	ab4080e7          	jalr	-1356(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001ad4:	0000a797          	auipc	a5,0xa
    80001ad8:	ef47b783          	ld	a5,-268(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001adc:	00a7b023          	sd	a0,0(a5)
        inputSpaceAvail = mySemaphore::createSemaphore(1023);
    80001ae0:	3ff00513          	li	a0,1023
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	a9c080e7          	jalr	-1380(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001aec:	0000a797          	auipc	a5,0xa
    80001af0:	f147b783          	ld	a5,-236(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x88>
    80001af4:	00a7b023          	sd	a0,0(a5)
        outputSpaceAvail = mySemaphore::createSemaphore(1023);
    80001af8:	3ff00513          	li	a0,1023
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	a84080e7          	jalr	-1404(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001b04:	0000a797          	auipc	a5,0xa
    80001b08:	f0c7b783          	ld	a5,-244(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x98>
    80001b0c:	00a7b023          	sd	a0,0(a5)
        mutexIn = mySemaphore::createSemaphore(1);
    80001b10:	00100513          	li	a0,1
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	a6c080e7          	jalr	-1428(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001b1c:	0000a797          	auipc	a5,0xa
    80001b20:	e8c7b783          	ld	a5,-372(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b24:	00a7b023          	sd	a0,0(a5)
        mutexOut = mySemaphore::createSemaphore(1);
    80001b28:	00100513          	li	a0,1
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	a54080e7          	jalr	-1452(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001b34:	0000a797          	auipc	a5,0xa
    80001b38:	efc7b783          	ld	a5,-260(a5) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80001b3c:	00a7b023          	sd	a0,0(a5)
    }
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00013403          	ld	s0,0(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN3TCB13threadWrapperEv>:
        //njihova povratna adresa zbog nacina na koji smo ih pravili ce biti postavljena
        // na threadWrapper funkciju, odakle ce da pokrene njen tok
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper(){
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00113423          	sd	ra,8(sp)
    80001b58:	00813023          	sd	s0,0(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	c08080e7          	jalr	-1016(ra) # 80002768 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);//user mode
    80001b68:	0000a797          	auipc	a5,0xa
    80001b6c:	f187b783          	ld	a5,-232(a5) # 8000ba80 <_ZN3TCB7runningE>
    80001b70:	0007b703          	ld	a4,0(a5)
    80001b74:	0087b503          	ld	a0,8(a5)
    80001b78:	000700e7          	jalr	a4
    thread_exit();//user mode
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	834080e7          	jalr	-1996(ra) # 800013b0 <_Z11thread_exitv>
}
    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00013403          	ld	s0,0(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <_ZN3TCB13kernelWrapperEv>:

void TCB::kernelWrapper(){
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00113423          	sd	ra,8(sp)
    80001b9c:	00813023          	sd	s0,0(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    Riscv::kernelWrapper();
    80001ba4:	00001097          	auipc	ra,0x1
    80001ba8:	c0c080e7          	jalr	-1012(ra) # 800027b0 <_ZN5Riscv13kernelWrapperEv>
    running->body(running->arg);//kernel mode
    80001bac:	0000a797          	auipc	a5,0xa
    80001bb0:	ed47b783          	ld	a5,-300(a5) # 8000ba80 <_ZN3TCB7runningE>
    80001bb4:	0007b703          	ld	a4,0(a5)
    80001bb8:	0087b503          	ld	a0,8(a5)
    80001bbc:	000700e7          	jalr	a4
    thread_exit();
    80001bc0:	fffff097          	auipc	ra,0xfffff
    80001bc4:	7f0080e7          	jalr	2032(ra) # 800013b0 <_Z11thread_exitv>
}
    80001bc8:	00813083          	ld	ra,8(sp)
    80001bcc:	00013403          	ld	s0,0(sp)
    80001bd0:	01010113          	addi	sp,sp,16
    80001bd4:	00008067          	ret

0000000080001bd8 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
{
    80001bd8:	fd010113          	addi	sp,sp,-48
    80001bdc:	02113423          	sd	ra,40(sp)
    80001be0:	02813023          	sd	s0,32(sp)
    80001be4:	00913c23          	sd	s1,24(sp)
    80001be8:	01213823          	sd	s2,16(sp)
    80001bec:	01313423          	sd	s3,8(sp)
    80001bf0:	01413023          	sd	s4,0(sp)
    80001bf4:	03010413          	addi	s0,sp,48
    80001bf8:	00050993          	mv	s3,a0
    80001bfc:	00058a13          	mv	s4,a1
    80001c00:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace);
    80001c04:	03800513          	li	a0,56
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	70c080e7          	jalr	1804(ra) # 80002314 <_Znwm>
    80001c10:	00050493          	mv	s1,a0
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                                               }),
                                       finished(false),
                                       blocked(false),
                                       closed(false),
                                       sleep(false)
    80001c14:	01353023          	sd	s3,0(a0)
    80001c18:	01453423          	sd	s4,8(a0)
    80001c1c:	01253823          	sd	s2,16(a0)
    80001c20:	00200793          	li	a5,2
    80001c24:	00f53c23          	sd	a5,24(a0)
                                                       kernel? (uint64) &kernelWrapper:(uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
    80001c28:	00000797          	auipc	a5,0x0
    80001c2c:	f2878793          	addi	a5,a5,-216 # 80001b50 <_ZN3TCB13threadWrapperEv>
                                       sleep(false)
    80001c30:	02f53023          	sd	a5,32(a0)
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001c34:	00001637          	lui	a2,0x1
    80001c38:	00c90933          	add	s2,s2,a2
                                       sleep(false)
    80001c3c:	03253423          	sd	s2,40(a0)
    80001c40:	02050823          	sb	zero,48(a0)
    80001c44:	020508a3          	sb	zero,49(a0)
    80001c48:	02050923          	sb	zero,50(a0)
    80001c4c:	020509a3          	sb	zero,51(a0)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001c50:	02098663          	beqz	s3,80001c7c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa4>
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	0c8080e7          	jalr	200(ra) # 80002d1c <_ZN9Scheduler3putEP3TCB>
    80001c5c:	0200006f          	j	80001c7c <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa4>
    80001c60:	00050913          	mv	s2,a0
    80001c64:	00048513          	mv	a0,s1
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	6fc080e7          	jalr	1788(ra) # 80002364 <_ZdlPv>
    80001c70:	00090513          	mv	a0,s2
    80001c74:	0000b097          	auipc	ra,0xb
    80001c78:	ff4080e7          	jalr	-12(ra) # 8000cc68 <_Unwind_Resume>
}
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	02813083          	ld	ra,40(sp)
    80001c84:	02013403          	ld	s0,32(sp)
    80001c88:	01813483          	ld	s1,24(sp)
    80001c8c:	01013903          	ld	s2,16(sp)
    80001c90:	00813983          	ld	s3,8(sp)
    80001c94:	00013a03          	ld	s4,0(sp)
    80001c98:	03010113          	addi	sp,sp,48
    80001c9c:	00008067          	ret

0000000080001ca0 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_>:
{
    80001ca0:	fd010113          	addi	sp,sp,-48
    80001ca4:	02113423          	sd	ra,40(sp)
    80001ca8:	02813023          	sd	s0,32(sp)
    80001cac:	00913c23          	sd	s1,24(sp)
    80001cb0:	01213823          	sd	s2,16(sp)
    80001cb4:	01313423          	sd	s3,8(sp)
    80001cb8:	01413023          	sd	s4,0(sp)
    80001cbc:	03010413          	addi	s0,sp,48
    80001cc0:	00050993          	mv	s3,a0
    80001cc4:	00058a13          	mv	s4,a1
    80001cc8:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace,true);
    80001ccc:	03800513          	li	a0,56
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	644080e7          	jalr	1604(ra) # 80002314 <_Znwm>
    80001cd8:	00050493          	mv	s1,a0
                                       sleep(false)
    80001cdc:	01353023          	sd	s3,0(a0)
    80001ce0:	01453423          	sd	s4,8(a0)
    80001ce4:	01253823          	sd	s2,16(a0)
    80001ce8:	00200793          	li	a5,2
    80001cec:	00f53c23          	sd	a5,24(a0)
                                                       kernel? (uint64) &kernelWrapper:(uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
    80001cf0:	00000797          	auipc	a5,0x0
    80001cf4:	ea478793          	addi	a5,a5,-348 # 80001b94 <_ZN3TCB13kernelWrapperEv>
                                       sleep(false)
    80001cf8:	02f53023          	sd	a5,32(a0)
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001cfc:	00001637          	lui	a2,0x1
    80001d00:	00c90933          	add	s2,s2,a2
                                       sleep(false)
    80001d04:	03253423          	sd	s2,40(a0)
    80001d08:	02050823          	sb	zero,48(a0)
    80001d0c:	020508a3          	sb	zero,49(a0)
    80001d10:	02050923          	sb	zero,50(a0)
    80001d14:	020509a3          	sb	zero,51(a0)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001d18:	02098663          	beqz	s3,80001d44 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_+0xa4>
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	000080e7          	jalr	ra # 80002d1c <_ZN9Scheduler3putEP3TCB>
    80001d24:	0200006f          	j	80001d44 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_+0xa4>
    80001d28:	00050913          	mv	s2,a0
    80001d2c:	00048513          	mv	a0,s1
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	634080e7          	jalr	1588(ra) # 80002364 <_ZdlPv>
    80001d38:	00090513          	mv	a0,s2
    80001d3c:	0000b097          	auipc	ra,0xb
    80001d40:	f2c080e7          	jalr	-212(ra) # 8000cc68 <_Unwind_Resume>
}
    80001d44:	00048513          	mv	a0,s1
    80001d48:	02813083          	ld	ra,40(sp)
    80001d4c:	02013403          	ld	s0,32(sp)
    80001d50:	01813483          	ld	s1,24(sp)
    80001d54:	01013903          	ld	s2,16(sp)
    80001d58:	00813983          	ld	s3,8(sp)
    80001d5c:	00013a03          	ld	s4,0(sp)
    80001d60:	03010113          	addi	sp,sp,48
    80001d64:	00008067          	ret

0000000080001d68 <_ZN3TCB8dispatchEv>:
{
    80001d68:	fe010113          	addi	sp,sp,-32
    80001d6c:	00113c23          	sd	ra,24(sp)
    80001d70:	00813823          	sd	s0,16(sp)
    80001d74:	00913423          	sd	s1,8(sp)
    80001d78:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001d7c:	0000a497          	auipc	s1,0xa
    80001d80:	d044b483          	ld	s1,-764(s1) # 8000ba80 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001d84:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept()) Scheduler::put(old);
    80001d88:	00079a63          	bnez	a5,80001d9c <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked(){return blocked;}
    80001d8c:	0314c783          	lbu	a5,49(s1)
    80001d90:	00079663          	bnez	a5,80001d9c <_ZN3TCB8dispatchEv+0x34>
    bool isSlept(){return sleep;}
    80001d94:	0334c783          	lbu	a5,51(s1)
    80001d98:	02078c63          	beqz	a5,80001dd0 <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	f04080e7          	jalr	-252(ra) # 80002ca0 <_ZN9Scheduler3getEv>
    80001da4:	0000a797          	auipc	a5,0xa
    80001da8:	cca7be23          	sd	a0,-804(a5) # 8000ba80 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001dac:	02050593          	addi	a1,a0,32
    80001db0:	02048513          	addi	a0,s1,32
    80001db4:	fffff097          	auipc	ra,0xfffff
    80001db8:	46c080e7          	jalr	1132(ra) # 80001220 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001dbc:	01813083          	ld	ra,24(sp)
    80001dc0:	01013403          	ld	s0,16(sp)
    80001dc4:	00813483          	ld	s1,8(sp)
    80001dc8:	02010113          	addi	sp,sp,32
    80001dcc:	00008067          	ret
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept()) Scheduler::put(old);
    80001dd0:	00048513          	mv	a0,s1
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	f48080e7          	jalr	-184(ra) # 80002d1c <_ZN9Scheduler3putEP3TCB>
    80001ddc:	fc1ff06f          	j	80001d9c <_ZN3TCB8dispatchEv+0x34>

0000000080001de0 <_ZN3TCB17createThreadBasicEPFvPvES0_>:
TCB *TCB::createThreadBasic(TCB::Body body, void *arg)
{
    80001de0:	fd010113          	addi	sp,sp,-48
    80001de4:	02113423          	sd	ra,40(sp)
    80001de8:	02813023          	sd	s0,32(sp)
    80001dec:	00913c23          	sd	s1,24(sp)
    80001df0:	01213823          	sd	s2,16(sp)
    80001df4:	01313423          	sd	s3,8(sp)
    80001df8:	03010413          	addi	s0,sp,48
    80001dfc:	00050913          	mv	s2,a0
    80001e00:	00058993          	mv	s3,a1
    return new TCB(body,arg,DEFAULT_TIME_SLICE);
    80001e04:	03800513          	li	a0,56
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	50c080e7          	jalr	1292(ra) # 80002314 <_Znwm>
    80001e10:	00050493          	mv	s1,a0
                                       sleep(false)
    80001e14:	01253023          	sd	s2,0(a0)
    80001e18:	01353423          	sd	s3,8(a0)
                                       stack(body!=nullptr? (char*)(new char*[DEFAULT_STACK_SIZE]): nullptr),timeSlice(timeslice),
    80001e1c:	00090a63          	beqz	s2,80001e30 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x50>
    80001e20:	00008537          	lui	a0,0x8
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	518080e7          	jalr	1304(ra) # 8000233c <_Znam>
    80001e2c:	0080006f          	j	80001e34 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x54>
    80001e30:	00000513          	li	a0,0
                                       sleep(false)
    80001e34:	00a4b823          	sd	a0,16(s1)
    80001e38:	00200793          	li	a5,2
    80001e3c:	00f4bc23          	sd	a5,24(s1)
    80001e40:	00000797          	auipc	a5,0x0
    80001e44:	d1078793          	addi	a5,a5,-752 # 80001b50 <_ZN3TCB13threadWrapperEv>
    80001e48:	02f4b023          	sd	a5,32(s1)
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001e4c:	02090a63          	beqz	s2,80001e80 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xa0>
    80001e50:	000017b7          	lui	a5,0x1
    80001e54:	00f50533          	add	a0,a0,a5
                                       sleep(false)
    80001e58:	02a4b423          	sd	a0,40(s1)
    80001e5c:	02048823          	sb	zero,48(s1)
    80001e60:	020488a3          	sb	zero,49(s1)
    80001e64:	02048923          	sb	zero,50(s1)
    80001e68:	020489a3          	sb	zero,51(s1)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001e6c:	02090c63          	beqz	s2,80001ea4 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc4>
    80001e70:	00048513          	mv	a0,s1
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	ea8080e7          	jalr	-344(ra) # 80002d1c <_ZN9Scheduler3putEP3TCB>
    80001e7c:	0280006f          	j	80001ea4 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc4>
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001e80:	00000513          	li	a0,0
    80001e84:	fd5ff06f          	j	80001e58 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x78>
    80001e88:	00050913          	mv	s2,a0
    80001e8c:	00048513          	mv	a0,s1
    80001e90:	00000097          	auipc	ra,0x0
    80001e94:	4d4080e7          	jalr	1236(ra) # 80002364 <_ZdlPv>
    80001e98:	00090513          	mv	a0,s2
    80001e9c:	0000b097          	auipc	ra,0xb
    80001ea0:	dcc080e7          	jalr	-564(ra) # 8000cc68 <_Unwind_Resume>
}
    80001ea4:	00048513          	mv	a0,s1
    80001ea8:	02813083          	ld	ra,40(sp)
    80001eac:	02013403          	ld	s0,32(sp)
    80001eb0:	01813483          	ld	s1,24(sp)
    80001eb4:	01013903          	ld	s2,16(sp)
    80001eb8:	00813983          	ld	s3,8(sp)
    80001ebc:	03010113          	addi	sp,sp,48
    80001ec0:	00008067          	ret

0000000080001ec4 <_ZN3TCB7toSleepEm>:

void TCB::toSleep(uint64 wakeTime)
{
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00113423          	sd	ra,8(sp)
    80001ecc:	00813023          	sd	s0,0(sp)
    80001ed0:	01010413          	addi	s0,sp,16
    80001ed4:	00050593          	mv	a1,a0
    running->setSleep(true);
    80001ed8:	0000a517          	auipc	a0,0xa
    80001edc:	ba853503          	ld	a0,-1112(a0) # 8000ba80 <_ZN3TCB7runningE>
    void setSleep(bool flag){ TCB::sleep = flag;}
    80001ee0:	00100713          	li	a4,1
    80001ee4:	02e509a3          	sb	a4,51(a0)
    Scheduler::putSorted(running,wakeTime);
    80001ee8:	00001097          	auipc	ra,0x1
    80001eec:	f60080e7          	jalr	-160(ra) # 80002e48 <_ZN9Scheduler9putSortedEP3TCBm>
}
    80001ef0:	00813083          	ld	ra,8(sp)
    80001ef4:	00013403          	ld	s0,0(sp)
    80001ef8:	01010113          	addi	sp,sp,16
    80001efc:	00008067          	ret

0000000080001f00 <_ZN9myConsole8getInputEv>:
mySemaphore* myConsole::inputSpaceAvail;
mySemaphore* myConsole::mutexIn;
mySemaphore* myConsole::mutexOut;
TCB* myConsole::consumer;
char myConsole::getInput()
{
    80001f00:	fe010113          	addi	sp,sp,-32
    80001f04:	00113c23          	sd	ra,24(sp)
    80001f08:	00813823          	sd	s0,16(sp)
    80001f0c:	00913423          	sd	s1,8(sp)
    80001f10:	01213023          	sd	s2,0(sp)
    80001f14:	02010413          	addi	s0,sp,32
    inputItemAvail->wait();
    80001f18:	0000a497          	auipc	s1,0xa
    80001f1c:	b8048493          	addi	s1,s1,-1152 # 8000ba98 <_ZN9myConsole14inputItemAvailE>
    80001f20:	0004b503          	ld	a0,0(s1)
    80001f24:	fffff097          	auipc	ra,0xfffff
    80001f28:	734080e7          	jalr	1844(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    mutexIn->wait();
    80001f2c:	0084b503          	ld	a0,8(s1)
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	728080e7          	jalr	1832(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    char ret=inputBuf[inputHead];
    80001f38:	0104a783          	lw	a5,16(s1)
    80001f3c:	0184b703          	ld	a4,24(s1)
    80001f40:	00f70733          	add	a4,a4,a5
    80001f44:	00074903          	lbu	s2,0(a4)
    inputHead=(inputHead+1)%1024;
    80001f48:	0017879b          	addiw	a5,a5,1
    80001f4c:	41f7d71b          	sraiw	a4,a5,0x1f
    80001f50:	0167571b          	srliw	a4,a4,0x16
    80001f54:	00e787bb          	addw	a5,a5,a4
    80001f58:	3ff7f793          	andi	a5,a5,1023
    80001f5c:	40e787bb          	subw	a5,a5,a4
    80001f60:	00f4a823          	sw	a5,16(s1)

    mutexIn->signal();
    80001f64:	0084b503          	ld	a0,8(s1)
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	894080e7          	jalr	-1900(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    inputSpaceAvail->signal();
    80001f70:	0204b503          	ld	a0,32(s1)
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	888080e7          	jalr	-1912(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    return ret;
}
    80001f7c:	00090513          	mv	a0,s2
    80001f80:	01813083          	ld	ra,24(sp)
    80001f84:	01013403          	ld	s0,16(sp)
    80001f88:	00813483          	ld	s1,8(sp)
    80001f8c:	00013903          	ld	s2,0(sp)
    80001f90:	02010113          	addi	sp,sp,32
    80001f94:	00008067          	ret

0000000080001f98 <_ZN9myConsole9getOutputEv>:

char myConsole::getOutput()
{
    80001f98:	fe010113          	addi	sp,sp,-32
    80001f9c:	00113c23          	sd	ra,24(sp)
    80001fa0:	00813823          	sd	s0,16(sp)
    80001fa4:	00913423          	sd	s1,8(sp)
    80001fa8:	01213023          	sd	s2,0(sp)
    80001fac:	02010413          	addi	s0,sp,32
    outputItemAvail->wait();
    80001fb0:	0000a497          	auipc	s1,0xa
    80001fb4:	ae848493          	addi	s1,s1,-1304 # 8000ba98 <_ZN9myConsole14inputItemAvailE>
    80001fb8:	0284b503          	ld	a0,40(s1)
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	69c080e7          	jalr	1692(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    mutexOut->wait();
    80001fc4:	0304b503          	ld	a0,48(s1)
    80001fc8:	fffff097          	auipc	ra,0xfffff
    80001fcc:	690080e7          	jalr	1680(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    char ret=outputBuf[outputHead];
    80001fd0:	0384a783          	lw	a5,56(s1)
    80001fd4:	0404b703          	ld	a4,64(s1)
    80001fd8:	00f70733          	add	a4,a4,a5
    80001fdc:	00074903          	lbu	s2,0(a4)
    outputHead=(outputHead+1)%1024;
    80001fe0:	0017879b          	addiw	a5,a5,1
    80001fe4:	41f7d71b          	sraiw	a4,a5,0x1f
    80001fe8:	0167571b          	srliw	a4,a4,0x16
    80001fec:	00e787bb          	addw	a5,a5,a4
    80001ff0:	3ff7f793          	andi	a5,a5,1023
    80001ff4:	40e787bb          	subw	a5,a5,a4
    80001ff8:	02f4ac23          	sw	a5,56(s1)
    outSize--;
    80001ffc:	0484a783          	lw	a5,72(s1)
    80002000:	fff7879b          	addiw	a5,a5,-1
    80002004:	04f4a423          	sw	a5,72(s1)

    mutexOut->signal();
    80002008:	0304b503          	ld	a0,48(s1)
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	7f0080e7          	jalr	2032(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    outputSpaceAvail->signal();
    80002014:	0504b503          	ld	a0,80(s1)
    80002018:	fffff097          	auipc	ra,0xfffff
    8000201c:	7e4080e7          	jalr	2020(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    return ret;
}
    80002020:	00090513          	mv	a0,s2
    80002024:	01813083          	ld	ra,24(sp)
    80002028:	01013403          	ld	s0,16(sp)
    8000202c:	00813483          	ld	s1,8(sp)
    80002030:	00013903          	ld	s2,0(sp)
    80002034:	02010113          	addi	sp,sp,32
    80002038:	00008067          	ret

000000008000203c <_ZN9myConsole8setInputEc>:

void myConsole::setInput(char c)
{
    8000203c:	fe010113          	addi	sp,sp,-32
    80002040:	00113c23          	sd	ra,24(sp)
    80002044:	00813823          	sd	s0,16(sp)
    80002048:	00913423          	sd	s1,8(sp)
    8000204c:	01213023          	sd	s2,0(sp)
    80002050:	02010413          	addi	s0,sp,32
    80002054:	00050913          	mv	s2,a0
    inputSpaceAvail->wait();
    80002058:	0000a497          	auipc	s1,0xa
    8000205c:	a4048493          	addi	s1,s1,-1472 # 8000ba98 <_ZN9myConsole14inputItemAvailE>
    80002060:	0204b503          	ld	a0,32(s1)
    80002064:	fffff097          	auipc	ra,0xfffff
    80002068:	5f4080e7          	jalr	1524(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    mutexIn->wait();
    8000206c:	0084b503          	ld	a0,8(s1)
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	5e8080e7          	jalr	1512(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    inputBuf[inputTail]=c;
    80002078:	0584a703          	lw	a4,88(s1)
    8000207c:	0184b783          	ld	a5,24(s1)
    80002080:	00e787b3          	add	a5,a5,a4
    80002084:	01278023          	sb	s2,0(a5) # 1000 <_entry-0x7ffff000>
    inputTail=(inputTail+1)%1024;
    80002088:	0584a783          	lw	a5,88(s1)
    8000208c:	0017879b          	addiw	a5,a5,1
    80002090:	41f7d71b          	sraiw	a4,a5,0x1f
    80002094:	0167571b          	srliw	a4,a4,0x16
    80002098:	00e787bb          	addw	a5,a5,a4
    8000209c:	3ff7f793          	andi	a5,a5,1023
    800020a0:	40e787bb          	subw	a5,a5,a4
    800020a4:	04f4ac23          	sw	a5,88(s1)
    mutexIn->signal();
    800020a8:	0084b503          	ld	a0,8(s1)
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	750080e7          	jalr	1872(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    inputItemAvail->signal();
    800020b4:	0004b503          	ld	a0,0(s1)
    800020b8:	fffff097          	auipc	ra,0xfffff
    800020bc:	744080e7          	jalr	1860(ra) # 800017fc <_ZN11mySemaphore6signalEv>
}
    800020c0:	01813083          	ld	ra,24(sp)
    800020c4:	01013403          	ld	s0,16(sp)
    800020c8:	00813483          	ld	s1,8(sp)
    800020cc:	00013903          	ld	s2,0(sp)
    800020d0:	02010113          	addi	sp,sp,32
    800020d4:	00008067          	ret

00000000800020d8 <_ZN9myConsole9setOutputEc>:

void myConsole::setOutput(char c)
{
    800020d8:	fe010113          	addi	sp,sp,-32
    800020dc:	00113c23          	sd	ra,24(sp)
    800020e0:	00813823          	sd	s0,16(sp)
    800020e4:	00913423          	sd	s1,8(sp)
    800020e8:	01213023          	sd	s2,0(sp)
    800020ec:	02010413          	addi	s0,sp,32
    800020f0:	00050913          	mv	s2,a0
    outputSpaceAvail->wait();
    800020f4:	0000a497          	auipc	s1,0xa
    800020f8:	9a448493          	addi	s1,s1,-1628 # 8000ba98 <_ZN9myConsole14inputItemAvailE>
    800020fc:	0504b503          	ld	a0,80(s1)
    80002100:	fffff097          	auipc	ra,0xfffff
    80002104:	558080e7          	jalr	1368(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    mutexOut->wait();
    80002108:	0304b503          	ld	a0,48(s1)
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	54c080e7          	jalr	1356(ra) # 80001658 <_ZN11mySemaphore4waitEv>

    outputBuf[outputTail]=c;
    80002114:	05c4a703          	lw	a4,92(s1)
    80002118:	0404b783          	ld	a5,64(s1)
    8000211c:	00e787b3          	add	a5,a5,a4
    80002120:	01278023          	sb	s2,0(a5)
    outputTail=(outputTail+1)%1024;
    80002124:	05c4a783          	lw	a5,92(s1)
    80002128:	0017879b          	addiw	a5,a5,1
    8000212c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002130:	0167571b          	srliw	a4,a4,0x16
    80002134:	00e787bb          	addw	a5,a5,a4
    80002138:	3ff7f793          	andi	a5,a5,1023
    8000213c:	40e787bb          	subw	a5,a5,a4
    80002140:	04f4ae23          	sw	a5,92(s1)
    outSize++;
    80002144:	0484a783          	lw	a5,72(s1)
    80002148:	0017879b          	addiw	a5,a5,1
    8000214c:	04f4a423          	sw	a5,72(s1)

    mutexOut->signal();
    80002150:	0304b503          	ld	a0,48(s1)
    80002154:	fffff097          	auipc	ra,0xfffff
    80002158:	6a8080e7          	jalr	1704(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    outputItemAvail->signal();
    8000215c:	0284b503          	ld	a0,40(s1)
    80002160:	fffff097          	auipc	ra,0xfffff
    80002164:	69c080e7          	jalr	1692(ra) # 800017fc <_ZN11mySemaphore6signalEv>

}
    80002168:	01813083          	ld	ra,24(sp)
    8000216c:	01013403          	ld	s0,16(sp)
    80002170:	00813483          	ld	s1,8(sp)
    80002174:	00013903          	ld	s2,0(sp)
    80002178:	02010113          	addi	sp,sp,32
    8000217c:	00008067          	ret

0000000080002180 <_ZN9myConsole11putcHandlerEv>:
    putcHandler();
}


void myConsole::putcHandler()
{   //uzima znak po znak iz izlaznog buffera i prenosi ga kontroleru konzole
    80002180:	fe010113          	addi	sp,sp,-32
    80002184:	00113c23          	sd	ra,24(sp)
    80002188:	00813823          	sd	s0,16(sp)
    8000218c:	00913423          	sd	s1,8(sp)
    80002190:	02010413          	addi	s0,sp,32
    char* insert = (char* ) CONSOLE_TX_DATA;
    80002194:	0000a797          	auipc	a5,0xa
    80002198:	84c7b783          	ld	a5,-1972(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000219c:	0007b483          	ld	s1,0(a5)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT){
    800021a0:	00009797          	auipc	a5,0x9
    800021a4:	7f07b783          	ld	a5,2032(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021a8:	0007b783          	ld	a5,0(a5)
    800021ac:	0007c783          	lbu	a5,0(a5)
    800021b0:	0207f793          	andi	a5,a5,32
    800021b4:	00078a63          	beqz	a5,800021c8 <_ZN9myConsole11putcHandlerEv+0x48>
        *insert = getOutput();
    800021b8:	00000097          	auipc	ra,0x0
    800021bc:	de0080e7          	jalr	-544(ra) # 80001f98 <_ZN9myConsole9getOutputEv>
    800021c0:	00a48023          	sb	a0,0(s1)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT){
    800021c4:	fddff06f          	j	800021a0 <_ZN9myConsole11putcHandlerEv+0x20>
    }
}
    800021c8:	01813083          	ld	ra,24(sp)
    800021cc:	01013403          	ld	s0,16(sp)
    800021d0:	00813483          	ld	s1,8(sp)
    800021d4:	02010113          	addi	sp,sp,32
    800021d8:	00008067          	ret

00000000800021dc <_ZN9myConsole18putcHandlerWrapperEPv>:
{
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00113423          	sd	ra,8(sp)
    800021e4:	00813023          	sd	s0,0(sp)
    800021e8:	01010413          	addi	s0,sp,16
    putcHandler();
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	f94080e7          	jalr	-108(ra) # 80002180 <_ZN9myConsole11putcHandlerEv>
}
    800021f4:	00813083          	ld	ra,8(sp)
    800021f8:	00013403          	ld	s0,0(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <_ZN9myConsole15console_handlerEv>:

void myConsole::console_handler()
{
    80002204:	fe010113          	addi	sp,sp,-32
    80002208:	00113c23          	sd	ra,24(sp)
    8000220c:	00813823          	sd	s0,16(sp)
    80002210:	00913423          	sd	s1,8(sp)
    80002214:	02010413          	addi	s0,sp,32
    //smestamo u ulazni bafer
    if(plic_claim() == CONSOLE_IRQ){
    80002218:	00005097          	auipc	ra,0x5
    8000221c:	07c080e7          	jalr	124(ra) # 80007294 <plic_claim>
    80002220:	00a00793          	li	a5,10
    80002224:	00f50c63          	beq	a0,a5,8000223c <_ZN9myConsole15console_handlerEv+0x38>
            setInput(*write);
        }
        plic_complete(CONSOLE_IRQ);
    }

}
    80002228:	01813083          	ld	ra,24(sp)
    8000222c:	01013403          	ld	s0,16(sp)
    80002230:	00813483          	ld	s1,8(sp)
    80002234:	02010113          	addi	sp,sp,32
    80002238:	00008067          	ret
        char* write = (char*) CONSOLE_RX_DATA;
    8000223c:	00009797          	auipc	a5,0x9
    80002240:	7447b783          	ld	a5,1860(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002244:	0007b483          	ld	s1,0(a5)
        while(*(char*) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    80002248:	00009797          	auipc	a5,0x9
    8000224c:	7487b783          	ld	a5,1864(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002250:	0007b783          	ld	a5,0(a5)
    80002254:	0007c783          	lbu	a5,0(a5)
    80002258:	0017f793          	andi	a5,a5,1
    8000225c:	00078a63          	beqz	a5,80002270 <_ZN9myConsole15console_handlerEv+0x6c>
            setInput(*write);
    80002260:	0004c503          	lbu	a0,0(s1)
    80002264:	00000097          	auipc	ra,0x0
    80002268:	dd8080e7          	jalr	-552(ra) # 8000203c <_ZN9myConsole8setInputEc>
        while(*(char*) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    8000226c:	fddff06f          	j	80002248 <_ZN9myConsole15console_handlerEv+0x44>
        plic_complete(CONSOLE_IRQ);
    80002270:	00a00513          	li	a0,10
    80002274:	00005097          	auipc	ra,0x5
    80002278:	058080e7          	jalr	88(ra) # 800072cc <plic_complete>
}
    8000227c:	fadff06f          	j	80002228 <_ZN9myConsole15console_handlerEv+0x24>

0000000080002280 <_ZN9myConsole4waitEv>:

void myConsole::wait()
{
    while(outSize) thread_dispatch();
    80002280:	0000a797          	auipc	a5,0xa
    80002284:	8607a783          	lw	a5,-1952(a5) # 8000bae0 <_ZN9myConsole7outSizeE>
    80002288:	02078c63          	beqz	a5,800022c0 <_ZN9myConsole4waitEv+0x40>
{
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00113423          	sd	ra,8(sp)
    80002294:	00813023          	sd	s0,0(sp)
    80002298:	01010413          	addi	s0,sp,16
    while(outSize) thread_dispatch();
    8000229c:	fffff097          	auipc	ra,0xfffff
    800022a0:	148080e7          	jalr	328(ra) # 800013e4 <_Z15thread_dispatchv>
    800022a4:	0000a797          	auipc	a5,0xa
    800022a8:	83c7a783          	lw	a5,-1988(a5) # 8000bae0 <_ZN9myConsole7outSizeE>
    800022ac:	fe0798e3          	bnez	a5,8000229c <_ZN9myConsole4waitEv+0x1c>
}
    800022b0:	00813083          	ld	ra,8(sp)
    800022b4:	00013403          	ld	s0,0(sp)
    800022b8:	01010113          	addi	sp,sp,16
    800022bc:	00008067          	ret
    800022c0:	00008067          	ret

00000000800022c4 <_ZN6ThreadD1Ev>:
#define syscall_cpp
#include "./syscall_c.h"
void* operator new (size_t);
void operator delete (void*);

class Thread {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16
    800022d0:	00813403          	ld	s0,8(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00113423          	sd	ra,8(sp)
    800022e4:	00813023          	sd	s0,0(sp)
    800022e8:	01010413          	addi	s0,sp,16
    800022ec:	00009797          	auipc	a5,0x9
    800022f0:	4a478793          	addi	a5,a5,1188 # 8000b790 <_ZTV9Semaphore+0x10>
    800022f4:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800022f8:	00853503          	ld	a0,8(a0)
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	148080e7          	jalr	328(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80002304:	00813083          	ld	ra,8(sp)
    80002308:	00013403          	ld	s0,0(sp)
    8000230c:	01010113          	addi	sp,sp,16
    80002310:	00008067          	ret

0000000080002314 <_Znwm>:
void* operator new (size_t mem){ return mem_alloc(mem);}
    80002314:	ff010113          	addi	sp,sp,-16
    80002318:	00113423          	sd	ra,8(sp)
    8000231c:	00813023          	sd	s0,0(sp)
    80002320:	01010413          	addi	s0,sp,16
    80002324:	fffff097          	auipc	ra,0xfffff
    80002328:	f30080e7          	jalr	-208(ra) # 80001254 <_Z9mem_allocm>
    8000232c:	00813083          	ld	ra,8(sp)
    80002330:	00013403          	ld	s0,0(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00113423          	sd	ra,8(sp)
    80002344:	00813023          	sd	s0,0(sp)
    80002348:	01010413          	addi	s0,sp,16
    8000234c:	fffff097          	auipc	ra,0xfffff
    80002350:	f08080e7          	jalr	-248(ra) # 80001254 <_Z9mem_allocm>
    80002354:	00813083          	ld	ra,8(sp)
    80002358:	00013403          	ld	s0,0(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <_ZdlPv>:
void operator delete(void* addr) { mem_free(addr); }
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00113423          	sd	ra,8(sp)
    8000236c:	00813023          	sd	s0,0(sp)
    80002370:	01010413          	addi	s0,sp,16
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	f1c080e7          	jalr	-228(ra) # 80001290 <_Z8mem_freePv>
    8000237c:	00813083          	ld	ra,8(sp)
    80002380:	00013403          	ld	s0,0(sp)
    80002384:	01010113          	addi	sp,sp,16
    80002388:	00008067          	ret

000000008000238c <_ZN6ThreadD0Ev>:
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00113423          	sd	ra,8(sp)
    80002394:	00813023          	sd	s0,0(sp)
    80002398:	01010413          	addi	s0,sp,16
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	fc8080e7          	jalr	-56(ra) # 80002364 <_ZdlPv>
    800023a4:	00813083          	ld	ra,8(sp)
    800023a8:	00013403          	ld	s0,0(sp)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800023b4:	fe010113          	addi	sp,sp,-32
    800023b8:	00113c23          	sd	ra,24(sp)
    800023bc:	00813823          	sd	s0,16(sp)
    800023c0:	00913423          	sd	s1,8(sp)
    800023c4:	02010413          	addi	s0,sp,32
    800023c8:	00050493          	mv	s1,a0
}
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	f10080e7          	jalr	-240(ra) # 800022dc <_ZN9SemaphoreD1Ev>
    800023d4:	00048513          	mv	a0,s1
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	f8c080e7          	jalr	-116(ra) # 80002364 <_ZdlPv>
    800023e0:	01813083          	ld	ra,24(sp)
    800023e4:	01013403          	ld	s0,16(sp)
    800023e8:	00813483          	ld	s1,8(sp)
    800023ec:	02010113          	addi	sp,sp,32
    800023f0:	00008067          	ret

00000000800023f4 <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00113423          	sd	ra,8(sp)
    800023fc:	00813023          	sd	s0,0(sp)
    80002400:	01010413          	addi	s0,sp,16
    80002404:	fffff097          	auipc	ra,0xfffff
    80002408:	e8c080e7          	jalr	-372(ra) # 80001290 <_Z8mem_freePv>
    8000240c:	00813083          	ld	ra,8(sp)
    80002410:	00013403          	ld	s0,0(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00813423          	sd	s0,8(sp)
    80002424:	01010413          	addi	s0,sp,16
    80002428:	00009797          	auipc	a5,0x9
    8000242c:	34078793          	addi	a5,a5,832 # 8000b768 <_ZTV6Thread+0x10>
    80002430:	00f53023          	sd	a5,0(a0)
    80002434:	00053423          	sd	zero,8(a0)
    80002438:	00b53823          	sd	a1,16(a0)
    8000243c:	00c53c23          	sd	a2,24(a0)
}
    80002440:	00813403          	ld	s0,8(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00813423          	sd	s0,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    80002458:	00009797          	auipc	a5,0x9
    8000245c:	31078793          	addi	a5,a5,784 # 8000b768 <_ZTV6Thread+0x10>
    80002460:	00f53023          	sd	a5,0(a0)
    80002464:	00053423          	sd	zero,8(a0)
    80002468:	00000797          	auipc	a5,0x0
    8000246c:	25c78793          	addi	a5,a5,604 # 800026c4 <_ZN6Thread10runWrapperEPv>
    80002470:	00f53823          	sd	a5,16(a0)
    80002474:	00a53c23          	sd	a0,24(a0)
}
    80002478:	00813403          	ld	s0,8(sp)
    8000247c:	01010113          	addi	sp,sp,16
    80002480:	00008067          	ret

0000000080002484 <_ZN6Thread8dispatchEv>:
{
    80002484:	ff010113          	addi	sp,sp,-16
    80002488:	00113423          	sd	ra,8(sp)
    8000248c:	00813023          	sd	s0,0(sp)
    80002490:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	f50080e7          	jalr	-176(ra) # 800013e4 <_Z15thread_dispatchv>
}
    8000249c:	00813083          	ld	ra,8(sp)
    800024a0:	00013403          	ld	s0,0(sp)
    800024a4:	01010113          	addi	sp,sp,16
    800024a8:	00008067          	ret

00000000800024ac <_ZN6Thread5startEv>:
{
    800024ac:	ff010113          	addi	sp,sp,-16
    800024b0:	00113423          	sd	ra,8(sp)
    800024b4:	00813023          	sd	s0,0(sp)
    800024b8:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,body, arg);
    800024bc:	01853603          	ld	a2,24(a0)
    800024c0:	01053583          	ld	a1,16(a0)
    800024c4:	00850513          	addi	a0,a0,8
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	e60080e7          	jalr	-416(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800024d0:	00813083          	ld	ra,8(sp)
    800024d4:	00013403          	ld	s0,0(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret

00000000800024e0 <_ZN6Thread5sleepEm>:
{
    800024e0:	ff010113          	addi	sp,sp,-16
    800024e4:	00113423          	sd	ra,8(sp)
    800024e8:	00813023          	sd	s0,0(sp)
    800024ec:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800024f0:	fffff097          	auipc	ra,0xfffff
    800024f4:	ffc080e7          	jalr	-4(ra) # 800014ec <_Z10time_sleepm>
}
    800024f8:	00813083          	ld	ra,8(sp)
    800024fc:	00013403          	ld	s0,0(sp)
    80002500:	01010113          	addi	sp,sp,16
    80002504:	00008067          	ret

0000000080002508 <_ZN14PeriodicThread3runEv>:
}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    80002508:	fe010113          	addi	sp,sp,-32
    8000250c:	00113c23          	sd	ra,24(sp)
    80002510:	00813823          	sd	s0,16(sp)
    80002514:	00913423          	sd	s1,8(sp)
    80002518:	02010413          	addi	s0,sp,32
    8000251c:	00050493          	mv	s1,a0
    while(period){
    80002520:	0204b783          	ld	a5,32(s1)
    80002524:	02078263          	beqz	a5,80002548 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002528:	0004b783          	ld	a5,0(s1)
    8000252c:	0187b783          	ld	a5,24(a5)
    80002530:	00048513          	mv	a0,s1
    80002534:	000780e7          	jalr	a5
        sleep(period);
    80002538:	0204b503          	ld	a0,32(s1)
    8000253c:	00000097          	auipc	ra,0x0
    80002540:	fa4080e7          	jalr	-92(ra) # 800024e0 <_ZN6Thread5sleepEm>
    while(period){
    80002544:	fddff06f          	j	80002520 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002548:	01813083          	ld	ra,24(sp)
    8000254c:	01013403          	ld	s0,16(sp)
    80002550:	00813483          	ld	s1,8(sp)
    80002554:	02010113          	addi	sp,sp,32
    80002558:	00008067          	ret

000000008000255c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    8000255c:	ff010113          	addi	sp,sp,-16
    80002560:	00113423          	sd	ra,8(sp)
    80002564:	00813023          	sd	s0,0(sp)
    80002568:	01010413          	addi	s0,sp,16
    8000256c:	00009797          	auipc	a5,0x9
    80002570:	22478793          	addi	a5,a5,548 # 8000b790 <_ZTV9Semaphore+0x10>
    80002574:	00f53023          	sd	a5,0(a0)
    80002578:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    8000257c:	00850513          	addi	a0,a0,8
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	e88080e7          	jalr	-376(ra) # 80001408 <_Z8sem_openPP4_semj>
}
    80002588:	00813083          	ld	ra,8(sp)
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00113423          	sd	ra,8(sp)
    800025a0:	00813023          	sd	s0,0(sp)
    800025a4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800025a8:	00853503          	ld	a0,8(a0)
    800025ac:	fffff097          	auipc	ra,0xfffff
    800025b0:	ed0080e7          	jalr	-304(ra) # 8000147c <_Z8sem_waitP4_sem>
}
    800025b4:	00813083          	ld	ra,8(sp)
    800025b8:	00013403          	ld	s0,0(sp)
    800025bc:	01010113          	addi	sp,sp,16
    800025c0:	00008067          	ret

00000000800025c4 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00113423          	sd	ra,8(sp)
    800025cc:	00813023          	sd	s0,0(sp)
    800025d0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800025d4:	00853503          	ld	a0,8(a0)
    800025d8:	fffff097          	auipc	ra,0xfffff
    800025dc:	edc080e7          	jalr	-292(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    800025e0:	00813083          	ld	ra,8(sp)
    800025e4:	00013403          	ld	s0,0(sp)
    800025e8:	01010113          	addi	sp,sp,16
    800025ec:	00008067          	ret

00000000800025f0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){
    800025f0:	fe010113          	addi	sp,sp,-32
    800025f4:	00113c23          	sd	ra,24(sp)
    800025f8:	00813823          	sd	s0,16(sp)
    800025fc:	00913423          	sd	s1,8(sp)
    80002600:	01213023          	sd	s2,0(sp)
    80002604:	02010413          	addi	s0,sp,32
    80002608:	00050493          	mv	s1,a0
    8000260c:	00058913          	mv	s2,a1
    80002610:	00000097          	auipc	ra,0x0
    80002614:	e3c080e7          	jalr	-452(ra) # 8000244c <_ZN6ThreadC1Ev>
    80002618:	00009797          	auipc	a5,0x9
    8000261c:	19878793          	addi	a5,a5,408 # 8000b7b0 <_ZTV14PeriodicThread+0x10>
    80002620:	00f4b023          	sd	a5,0(s1)
    80002624:	0324b023          	sd	s2,32(s1)
}
    80002628:	01813083          	ld	ra,24(sp)
    8000262c:	01013403          	ld	s0,16(sp)
    80002630:	00813483          	ld	s1,8(sp)
    80002634:	00013903          	ld	s2,0(sp)
    80002638:	02010113          	addi	sp,sp,32
    8000263c:	00008067          	ret

0000000080002640 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00813423          	sd	s0,8(sp)
    80002648:	01010413          	addi	s0,sp,16
    period=0;
    8000264c:	02053023          	sd	zero,32(a0)
}
    80002650:	00813403          	ld	s0,8(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <_ZN7Console4getcEv>:

char Console::getc() {
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00113423          	sd	ra,8(sp)
    80002664:	00813023          	sd	s0,0(sp)
    80002668:	01010413          	addi	s0,sp,16
    return ::getc();
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	eb8080e7          	jalr	-328(ra) # 80001524 <_Z4getcv>
}
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	ec4080e7          	jalr	-316(ra) # 80001558 <_Z4putcc>
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00813423          	sd	s0,8(sp)
    800026b4:	01010413          	addi	s0,sp,16
    800026b8:	00813403          	ld	s0,8(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN6Thread10runWrapperEPv>:
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* thread){
        if(thread) ((Thread*) thread)->run();
    800026c4:	02050863          	beqz	a0,800026f4 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread){
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
        if(thread) ((Thread*) thread)->run();
    800026d8:	00053783          	ld	a5,0(a0)
    800026dc:	0107b783          	ld	a5,16(a5)
    800026e0:	000780e7          	jalr	a5
    }
    800026e4:	00813083          	ld	ra,8(sp)
    800026e8:	00013403          	ld	s0,0(sp)
    800026ec:	01010113          	addi	sp,sp,16
    800026f0:	00008067          	ret
    800026f4:	00008067          	ret

00000000800026f8 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800026f8:	ff010113          	addi	sp,sp,-16
    800026fc:	00813423          	sd	s0,8(sp)
    80002700:	01010413          	addi	s0,sp,16
    80002704:	00813403          	ld	s0,8(sp)
    80002708:	01010113          	addi	sp,sp,16
    8000270c:	00008067          	ret

0000000080002710 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002710:	ff010113          	addi	sp,sp,-16
    80002714:	00813423          	sd	s0,8(sp)
    80002718:	01010413          	addi	s0,sp,16
    8000271c:	00009797          	auipc	a5,0x9
    80002720:	09478793          	addi	a5,a5,148 # 8000b7b0 <_ZTV14PeriodicThread+0x10>
    80002724:	00f53023          	sd	a5,0(a0)
    80002728:	00813403          	ld	s0,8(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret

0000000080002734 <_ZN14PeriodicThreadD0Ev>:
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    80002744:	00009797          	auipc	a5,0x9
    80002748:	06c78793          	addi	a5,a5,108 # 8000b7b0 <_ZTV14PeriodicThread+0x10>
    8000274c:	00f53023          	sd	a5,0(a0)
    80002750:	00000097          	auipc	ra,0x0
    80002754:	c14080e7          	jalr	-1004(ra) # 80002364 <_ZdlPv>
    80002758:	00813083          	ld	ra,8(sp)
    8000275c:	00013403          	ld	s0,0(sp)
    80002760:	01010113          	addi	sp,sp,16
    80002764:	00008067          	ret

0000000080002768 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"
#include "../h/Semaphore.hpp"
#include "../h/myConsole.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80002768:	ff010113          	addi	sp,sp,-16
    8000276c:	00813423          	sd	s0,8(sp)
    80002770:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    if (TCB::running->body== nullptr )
    80002774:	00009797          	auipc	a5,0x9
    80002778:	2ac7b783          	ld	a5,684(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
    8000277c:	0007b783          	ld	a5,0(a5)
    80002780:	0007b783          	ld	a5,0(a5)
    80002784:	02078063          	beqz	a5,800027a4 <_ZN5Riscv10popSppSpieEv+0x3c>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002788:	10000793          	li	a5,256
    8000278c:	1007b073          	csrc	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    else mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002790:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002794:	10200073          	sret
}
    80002798:	00813403          	ld	s0,8(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800027a4:	10000793          	li	a5,256
    800027a8:	1007a073          	csrs	sstatus,a5
}
    800027ac:	fe5ff06f          	j	80002790 <_ZN5Riscv10popSppSpieEv+0x28>

00000000800027b0 <_ZN5Riscv13kernelWrapperEv>:
void Riscv::kernelWrapper()
{
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00813423          	sd	s0,8(sp)
    800027b8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800027bc:	10000793          	li	a5,256
    800027c0:	1007a073          	csrs	sstatus,a5
     ms_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    800027c4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800027c8:	10200073          	sret
}
    800027cc:	00813403          	ld	s0,8(sp)
    800027d0:	01010113          	addi	sp,sp,16
    800027d4:	00008067          	ret

00000000800027d8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    800027d8:	f2010113          	addi	sp,sp,-224
    800027dc:	0c113c23          	sd	ra,216(sp)
    800027e0:	0c813823          	sd	s0,208(sp)
    800027e4:	0c913423          	sd	s1,200(sp)
    800027e8:	0e010413          	addi	s0,sp,224
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800027ec:	142027f3          	csrr	a5,scause
    800027f0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800027f4:	fb843703          	ld	a4,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    800027f8:	ff870693          	addi	a3,a4,-8
    800027fc:	00100793          	li	a5,1
    80002800:	02d7fc63          	bgeu	a5,a3,80002838 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    else if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver/tajmer prekid
    80002804:	fff00793          	li	a5,-1
    80002808:	03f79793          	slli	a5,a5,0x3f
    8000280c:	00178793          	addi	a5,a5,1
    80002810:	34f70e63          	beq	a4,a5,80002b6c <_ZN5Riscv20handleSupervisorTrapEv+0x394>
        }

        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (scause==0x8000000000000009UL){
    80002814:	fff00793          	li	a5,-1
    80002818:	03f79793          	slli	a5,a5,0x3f
    8000281c:	00978793          	addi	a5,a5,9
    80002820:	42f70263          	beq	a4,a5,80002c44 <_ZN5Riscv20handleSupervisorTrapEv+0x46c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002824:	141027f3          	csrr	a5,sepc
    80002828:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000282c:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002830:	14179073          	csrw	sepc,a5
        //sepc- gde se desilo
        // stval - dodatno opise cause

        uint64 sepc=r_sepc();
        w_sepc(sepc);
        while(true);
    80002834:	0000006f          	j	80002834 <_ZN5Riscv20handleSupervisorTrapEv+0x5c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002838:	141027f3          	csrr	a5,sepc
    8000283c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002840:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    80002844:	00478793          	addi	a5,a5,4
    80002848:	f2f43823          	sd	a5,-208(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000284c:	100027f3          	csrr	a5,sstatus
    80002850:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002854:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80002858:	f2f43c23          	sd	a5,-200(s0)
        __asm__ volatile("ld %0, 80(fp)":"=r"(a0));
    8000285c:	05043783          	ld	a5,80(s0)
    80002860:	f4f43023          	sd	a5,-192(s0)
        switch(a0){
    80002864:	f4043783          	ld	a5,-192(s0)
    80002868:	04200713          	li	a4,66
    8000286c:	2ef76663          	bltu	a4,a5,80002b58 <_ZN5Riscv20handleSupervisorTrapEv+0x380>
    80002870:	00279793          	slli	a5,a5,0x2
    80002874:	00006717          	auipc	a4,0x6
    80002878:	7ac70713          	addi	a4,a4,1964 # 80009020 <CONSOLE_STATUS+0x10>
    8000287c:	00e787b3          	add	a5,a5,a4
    80002880:	0007a783          	lw	a5,0(a5)
    80002884:	00e787b3          	add	a5,a5,a4
    80002888:	00078067          	jr	a5
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(a1));
    8000288c:	05843783          	ld	a5,88(s0)
    80002890:	f4f43423          	sd	a5,-184(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    80002894:	f4843503          	ld	a0,-184(s0)
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	774080e7          	jalr	1908(ra) # 8000300c <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    800028a0:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    800028a4:	04a43823          	sd	a0,80(s0)
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    800028a8:	f3043783          	ld	a5,-208(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800028ac:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    800028b0:	f3843783          	ld	a5,-200(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800028b4:	10079073          	csrw	sstatus,a5
    }
    800028b8:	0d813083          	ld	ra,216(sp)
    800028bc:	0d013403          	ld	s0,208(sp)
    800028c0:	0c813483          	ld	s1,200(sp)
    800028c4:	0e010113          	addi	sp,sp,224
    800028c8:	00008067          	ret
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(addr));
    800028cc:	05843783          	ld	a5,88(s0)
    800028d0:	f4f43823          	sd	a5,-176(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    800028d4:	f5043503          	ld	a0,-176(s0)
    800028d8:	00001097          	auipc	ra,0x1
    800028dc:	890080e7          	jalr	-1904(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>
    800028e0:	f4a43c23          	sd	a0,-168(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    800028e4:	f5843783          	ld	a5,-168(s0)
    800028e8:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800028ec:	04a43823          	sd	a0,80(s0)
                break;
    800028f0:	fb9ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                space=MemoryAllocator::getFree();
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	684080e7          	jalr	1668(ra) # 80002f78 <_ZN15MemoryAllocator7getFreeEv>
    800028fc:	f6a43023          	sd	a0,-160(s0)
                __asm__ volatile("mv a0, %0"::"r"(space));
    80002900:	f6043783          	ld	a5,-160(s0)
    80002904:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002908:	04a43823          	sd	a0,80(s0)
                break;
    8000290c:	f9dff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                block=MemoryAllocator::getLargestFreeBlock();
    80002910:	00000097          	auipc	ra,0x0
    80002914:	688080e7          	jalr	1672(ra) # 80002f98 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    80002918:	f6a43423          	sd	a0,-152(s0)
                __asm__ volatile("mv a0, %0"::"r"(block));
    8000291c:	f6843783          	ld	a5,-152(s0)
    80002920:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002924:	04a43823          	sd	a0,80(s0)
                break;
    80002928:	f81ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    8000292c:	05843783          	ld	a5,88(s0)
    80002930:	f6f43823          	sd	a5,-144(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(start_routine));
    80002934:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(arg));
    80002938:	06843783          	ld	a5,104(s0)
    8000293c:	f6f43c23          	sd	a5,-136(s0)
                __asm__ volatile("ld %0, 8*14(fp)":"=r"(addr));
    80002940:	07043783          	ld	a5,112(s0)
    80002944:	f8f43023          	sd	a5,-128(s0)
                TCB *thread =TCB::createThread(body,arg,addr);
    80002948:	f7843583          	ld	a1,-136(s0)
    8000294c:	f8043603          	ld	a2,-128(s0)
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	288080e7          	jalr	648(ra) # 80001bd8 <_ZN3TCB12createThreadEPFvPvES0_S0_>
                *(TCB**) handle= thread;
    80002958:	f7043703          	ld	a4,-144(s0)
    8000295c:	00a73023          	sd	a0,0(a4)
                if(thread){
    80002960:	00050a63          	beqz	a0,80002974 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    __asm__ volatile("mv a0, %0"::"r"(0));
    80002964:	00000793          	li	a5,0
    80002968:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    8000296c:	04a43823          	sd	a0,80(s0)
    80002970:	f39ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002974:	fff00793          	li	a5,-1
    80002978:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    8000297c:	04a43823          	sd	a0,80(s0)
    80002980:	f29ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                TCB::timeSliceCounter=0;
    80002984:	00009797          	auipc	a5,0x9
    80002988:	04c7b783          	ld	a5,76(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000298c:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002990:	fffff097          	auipc	ra,0xfffff
    80002994:	3d8080e7          	jalr	984(ra) # 80001d68 <_ZN3TCB8dispatchEv>
                break;
    80002998:	f11ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                if(!TCB::running->isFinished()){
    8000299c:	00009797          	auipc	a5,0x9
    800029a0:	0847b783          	ld	a5,132(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
    800029a4:	0007b783          	ld	a5,0(a5)
    bool isFinished(){return finished;}
    800029a8:	0307c703          	lbu	a4,48(a5)
    800029ac:	00070a63          	beqz	a4,800029c0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                else ret=-1;
    800029b0:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0"::"r"(ret));
    800029b4:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800029b8:	04a43823          	sd	a0,80(s0)
                break;
    800029bc:	eedff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    void setFinished(bool flag){ TCB::finished = flag;}
    800029c0:	00100713          	li	a4,1
    800029c4:	02e78823          	sb	a4,48(a5)
                    TCB::timeSliceCounter=0;
    800029c8:	00009797          	auipc	a5,0x9
    800029cc:	0087b783          	ld	a5,8(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800029d0:	0007b023          	sd	zero,0(a5)
                    TCB::dispatch();
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	394080e7          	jalr	916(ra) # 80001d68 <_ZN3TCB8dispatchEv>
                uint64 ret=0;
    800029dc:	00000793          	li	a5,0
    800029e0:	fd5ff06f          	j	800029b4 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    800029e4:	05843783          	ld	a5,88(s0)
    800029e8:	f8f43423          	sd	a5,-120(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(init));
    800029ec:	06043783          	ld	a5,96(s0)
    800029f0:	f2f42623          	sw	a5,-212(s0)
                mySemaphore *sem =mySemaphore::createSemaphore(init);
    800029f4:	f2c42503          	lw	a0,-212(s0)
    800029f8:	0005051b          	sext.w	a0,a0
    800029fc:	fffff097          	auipc	ra,0xfffff
    80002a00:	b84080e7          	jalr	-1148(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
                if(sem){
    80002a04:	00050e63          	beqz	a0,80002a20 <_ZN5Riscv20handleSupervisorTrapEv+0x248>
                    *(mySemaphore**) handle= sem;
    80002a08:	f8843703          	ld	a4,-120(s0)
    80002a0c:	00a73023          	sd	a0,0(a4)
                    ret=0;
    80002a10:	00000793          	li	a5,0
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002a14:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002a18:	04a43823          	sd	a0,80(s0)
                break;
    80002a1c:	e8dff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                else ret=-1;
    80002a20:	fff00793          	li	a5,-1
    80002a24:	ff1ff06f          	j	80002a14 <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002a28:	05843783          	ld	a5,88(s0)
    80002a2c:	f8f43823          	sd	a5,-112(s0)
                if(!handle){
    80002a30:	f9043783          	ld	a5,-112(s0)
    80002a34:	02078663          	beqz	a5,80002a60 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
                int ret=handle->close();
    80002a38:	f9043503          	ld	a0,-112(s0)
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	d3c080e7          	jalr	-708(ra) # 80001778 <_ZN11mySemaphore5closeEv>
    80002a44:	00050493          	mv	s1,a0
                MemoryAllocator::mem_free(handle);
    80002a48:	f9043503          	ld	a0,-112(s0)
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	71c080e7          	jalr	1820(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002a54:	00048513          	mv	a0,s1
                __asm__ volatile("sd a0,80(fp)");
    80002a58:	04a43823          	sd	a0,80(s0)
                break;
    80002a5c:	e4dff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002a60:	fff00793          	li	a5,-1
    80002a64:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002a68:	04a43823          	sd	a0,80(s0)
                    break;
    80002a6c:	e3dff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002a70:	05843783          	ld	a5,88(s0)
    80002a74:	f8f43c23          	sd	a5,-104(s0)
                if(!handle){
    80002a78:	f9843783          	ld	a5,-104(s0)
    80002a7c:	02078263          	beqz	a5,80002aa0 <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
                __asm__ volatile("mv a0, %0"::"r"(0));
    80002a80:	00000793          	li	a5,0
    80002a84:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002a88:	04a43823          	sd	a0,80(s0)
                int ret=handle->wait();
    80002a8c:	f9843503          	ld	a0,-104(s0)
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	bc8080e7          	jalr	-1080(ra) # 80001658 <_ZN11mySemaphore4waitEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002a98:	00050513          	mv	a0,a0
                break;
    80002a9c:	e0dff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002aa0:	fff00793          	li	a5,-1
    80002aa4:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002aa8:	04a43823          	sd	a0,80(s0)
                    break;
    80002aac:	dfdff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002ab0:	05843783          	ld	a5,88(s0)
    80002ab4:	faf43023          	sd	a5,-96(s0)
                if(!handle){
    80002ab8:	fa043783          	ld	a5,-96(s0)
    80002abc:	00078e63          	beqz	a5,80002ad8 <_ZN5Riscv20handleSupervisorTrapEv+0x300>
                int ret=handle->signal();
    80002ac0:	fa043503          	ld	a0,-96(s0)
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	d38080e7          	jalr	-712(ra) # 800017fc <_ZN11mySemaphore6signalEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002acc:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002ad0:	04a43823          	sd	a0,80(s0)
                break;
    80002ad4:	dd5ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002ad8:	fff00793          	li	a5,-1
    80002adc:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002ae0:	04a43823          	sd	a0,80(s0)
                    break;
    80002ae4:	dc5ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(time));
    80002ae8:	05843503          	ld	a0,88(s0)
                TCB::toSleep(time+TCB::timeCur);
    80002aec:	00009797          	auipc	a5,0x9
    80002af0:	ed47b783          	ld	a5,-300(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002af4:	0007b783          	ld	a5,0(a5)
    80002af8:	00f50533          	add	a0,a0,a5
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	3c8080e7          	jalr	968(ra) # 80001ec4 <_ZN3TCB7toSleepEm>
                TCB::timeSliceCounter=0;
    80002b04:	00009797          	auipc	a5,0x9
    80002b08:	ecc7b783          	ld	a5,-308(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002b0c:	0007b023          	sd	zero,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(0));
    80002b10:	00000793          	li	a5,0
    80002b14:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002b18:	04a43823          	sd	a0,80(s0)
                TCB::dispatch();
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	24c080e7          	jalr	588(ra) # 80001d68 <_ZN3TCB8dispatchEv>
                break;
    80002b24:	d85ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                char ret=myConsole::getInput();
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	3d8080e7          	jalr	984(ra) # 80001f00 <_ZN9myConsole8getInputEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002b30:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002b34:	04a43823          	sd	a0,80(s0)
                break;
    80002b38:	d71ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(c));
    80002b3c:	05843783          	ld	a5,88(s0)
    80002b40:	f2f405a3          	sb	a5,-213(s0)
                myConsole::setOutput(c);
    80002b44:	f2b44503          	lbu	a0,-213(s0)
    80002b48:	0ff57513          	andi	a0,a0,255
    80002b4c:	fffff097          	auipc	ra,0xfffff
    80002b50:	58c080e7          	jalr	1420(ra) # 800020d8 <_ZN9myConsole9setOutputEc>
                break;
    80002b54:	d55ff06f          	j	800028a8 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("sw %[val], 0(%[addr])" : : [val] "r"(val), [addr] "r"(addr));
    80002b58:	000057b7          	lui	a5,0x5
    80002b5c:	5557879b          	addiw	a5,a5,1365
    80002b60:	00100737          	lui	a4,0x100
    80002b64:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
                while (1);
    80002b68:	0000006f          	j	80002b68 <_ZN5Riscv20handleSupervisorTrapEv+0x390>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002b6c:	141027f3          	csrr	a5,sepc
    80002b70:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002b74:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    80002b78:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002b7c:	100027f3          	csrr	a5,sstatus
    80002b80:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002b84:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002b88:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002b8c:	00200793          	li	a5,2
    80002b90:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002b94:	00009717          	auipc	a4,0x9
    80002b98:	e3c73703          	ld	a4,-452(a4) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002b9c:	00073783          	ld	a5,0(a4)
    80002ba0:	00178793          	addi	a5,a5,1 # 5001 <_entry-0x7fffafff>
    80002ba4:	00f73023          	sd	a5,0(a4)
        TCB::timeCur++;
    80002ba8:	00009717          	auipc	a4,0x9
    80002bac:	e1873703          	ld	a4,-488(a4) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bb0:	00073783          	ld	a5,0(a4)
    80002bb4:	00178793          	addi	a5,a5,1
    80002bb8:	00f73023          	sd	a5,0(a4)
    80002bbc:	0180006f          	j	80002bd4 <_ZN5Riscv20handleSupervisorTrapEv+0x3fc>
            TCB* rising=Scheduler::getSorted();
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	1dc080e7          	jalr	476(ra) # 80002d9c <_ZN9Scheduler9getSortedEv>
            rising->sleep=false;
    80002bc8:	020509a3          	sb	zero,51(a0)
            Scheduler::put(rising);
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	150080e7          	jalr	336(ra) # 80002d1c <_ZN9Scheduler3putEP3TCB>
        while(Scheduler::getWakeTime() && TCB::timeCur>=Scheduler::getWakeTime()){
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	244080e7          	jalr	580(ra) # 80002e18 <_ZN9Scheduler11getWakeTimeEv>
    80002bdc:	00050e63          	beqz	a0,80002bf8 <_ZN5Riscv20handleSupervisorTrapEv+0x420>
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	238080e7          	jalr	568(ra) # 80002e18 <_ZN9Scheduler11getWakeTimeEv>
    80002be8:	00009797          	auipc	a5,0x9
    80002bec:	dd87b783          	ld	a5,-552(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bf0:	0007b783          	ld	a5,0(a5)
    80002bf4:	fca7f6e3          	bgeu	a5,a0,80002bc0 <_ZN5Riscv20handleSupervisorTrapEv+0x3e8>
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80002bf8:	00009797          	auipc	a5,0x9
    80002bfc:	e287b783          	ld	a5,-472(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002c00:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const {return timeSlice;}
    80002c04:	0187b783          	ld	a5,24(a5)
    80002c08:	00009717          	auipc	a4,0x9
    80002c0c:	dc873703          	ld	a4,-568(a4) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002c10:	00073703          	ld	a4,0(a4)
    80002c14:	00f77c63          	bgeu	a4,a5,80002c2c <_ZN5Riscv20handleSupervisorTrapEv+0x454>
        w_sepc(sepc);
    80002c18:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002c1c:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002c20:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002c24:	10079073          	csrw	sstatus,a5
}
    80002c28:	c91ff06f          	j	800028b8 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
            TCB::timeSliceCounter=0;
    80002c2c:	00009797          	auipc	a5,0x9
    80002c30:	da47b783          	ld	a5,-604(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002c34:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002c38:	fffff097          	auipc	ra,0xfffff
    80002c3c:	130080e7          	jalr	304(ra) # 80001d68 <_ZN3TCB8dispatchEv>
    80002c40:	fd9ff06f          	j	80002c18 <_ZN5Riscv20handleSupervisorTrapEv+0x440>
        myConsole::console_handler();
    80002c44:	fffff097          	auipc	ra,0xfffff
    80002c48:	5c0080e7          	jalr	1472(ra) # 80002204 <_ZN9myConsole15console_handlerEv>
    80002c4c:	c6dff06f          	j	800028b8 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>

0000000080002c50 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::putSorted(TCB *ccb,uint64 wakeTime)
{
    sleepingThreadQueue.addSorted(ccb,wakeTime);
}
    80002c50:	ff010113          	addi	sp,sp,-16
    80002c54:	00813423          	sd	s0,8(sp)
    80002c58:	01010413          	addi	s0,sp,16
    80002c5c:	00100793          	li	a5,1
    80002c60:	00f50863          	beq	a0,a5,80002c70 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002c64:	00813403          	ld	s0,8(sp)
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00008067          	ret
    80002c70:	000107b7          	lui	a5,0x10
    80002c74:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c78:	fef596e3          	bne	a1,a5,80002c64 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    80002c7c:	00009797          	auipc	a5,0x9
    80002c80:	e8478793          	addi	a5,a5,-380 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002c84:	0007b023          	sd	zero,0(a5)
    80002c88:	0007b423          	sd	zero,8(a5)
    80002c8c:	0007a823          	sw	zero,16(a5)
    80002c90:	0007bc23          	sd	zero,24(a5)
    80002c94:	0207b023          	sd	zero,32(a5)
    80002c98:	0207a423          	sw	zero,40(a5)
    80002c9c:	fc9ff06f          	j	80002c64 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ca0 <_ZN9Scheduler3getEv>:
{
    80002ca0:	fe010113          	addi	sp,sp,-32
    80002ca4:	00113c23          	sd	ra,24(sp)
    80002ca8:	00813823          	sd	s0,16(sp)
    80002cac:	00913423          	sd	s1,8(sp)
    80002cb0:	02010413          	addi	s0,sp,32
        size++;
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002cb4:	00009517          	auipc	a0,0x9
    80002cb8:	e4c53503          	ld	a0,-436(a0) # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002cbc:	04050c63          	beqz	a0,80002d14 <_ZN9Scheduler3getEv+0x74>

        Elem *elem = head;
        head = head->next;
    80002cc0:	00853783          	ld	a5,8(a0)
    80002cc4:	00009717          	auipc	a4,0x9
    80002cc8:	e2f73e23          	sd	a5,-452(a4) # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002ccc:	02078e63          	beqz	a5,80002d08 <_ZN9Scheduler3getEv+0x68>

        T *ret = elem->data;
    80002cd0:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	494080e7          	jalr	1172(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80002cdc:	00009717          	auipc	a4,0x9
    80002ce0:	e2470713          	addi	a4,a4,-476 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002ce4:	01072783          	lw	a5,16(a4)
    80002ce8:	fff7879b          	addiw	a5,a5,-1
    80002cec:	00f72823          	sw	a5,16(a4)
}
    80002cf0:	00048513          	mv	a0,s1
    80002cf4:	01813083          	ld	ra,24(sp)
    80002cf8:	01013403          	ld	s0,16(sp)
    80002cfc:	00813483          	ld	s1,8(sp)
    80002d00:	02010113          	addi	sp,sp,32
    80002d04:	00008067          	ret
        if (!head) { tail = 0; }
    80002d08:	00009797          	auipc	a5,0x9
    80002d0c:	e007b023          	sd	zero,-512(a5) # 8000bb08 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002d10:	fc1ff06f          	j	80002cd0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002d14:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002d18:	fd9ff06f          	j	80002cf0 <_ZN9Scheduler3getEv+0x50>

0000000080002d1c <_ZN9Scheduler3putEP3TCB>:
{
    80002d1c:	fe010113          	addi	sp,sp,-32
    80002d20:	00113c23          	sd	ra,24(sp)
    80002d24:	00813823          	sd	s0,16(sp)
    80002d28:	00913423          	sd	s1,8(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    80002d30:	00050493          	mv	s1,a0
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    80002d34:	00100513          	li	a0,1
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	2d4080e7          	jalr	724(ra) # 8000300c <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80002d40:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    80002d44:	00053423          	sd	zero,8(a0)
        if (tail)
    80002d48:	00009797          	auipc	a5,0x9
    80002d4c:	dc07b783          	ld	a5,-576(a5) # 8000bb08 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002d50:	02078c63          	beqz	a5,80002d88 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    80002d54:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002d58:	00009797          	auipc	a5,0x9
    80002d5c:	daa7b823          	sd	a0,-592(a5) # 8000bb08 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    80002d60:	00009717          	auipc	a4,0x9
    80002d64:	da070713          	addi	a4,a4,-608 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002d68:	01072783          	lw	a5,16(a4)
    80002d6c:	0017879b          	addiw	a5,a5,1
    80002d70:	00f72823          	sw	a5,16(a4)
}
    80002d74:	01813083          	ld	ra,24(sp)
    80002d78:	01013403          	ld	s0,16(sp)
    80002d7c:	00813483          	ld	s1,8(sp)
    80002d80:	02010113          	addi	sp,sp,32
    80002d84:	00008067          	ret
            head = tail = elem;
    80002d88:	00009797          	auipc	a5,0x9
    80002d8c:	d7878793          	addi	a5,a5,-648 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002d90:	00a7b423          	sd	a0,8(a5)
    80002d94:	00a7b023          	sd	a0,0(a5)
    80002d98:	fc9ff06f          	j	80002d60 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002d9c <_ZN9Scheduler9getSortedEv>:
{
    80002d9c:	fe010113          	addi	sp,sp,-32
    80002da0:	00113c23          	sd	ra,24(sp)
    80002da4:	00813823          	sd	s0,16(sp)
    80002da8:	00913423          	sd	s1,8(sp)
    80002dac:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002db0:	00009517          	auipc	a0,0x9
    80002db4:	d6853503          	ld	a0,-664(a0) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
    80002db8:	04050c63          	beqz	a0,80002e10 <_ZN9Scheduler9getSortedEv+0x74>
        head = head->next;
    80002dbc:	00853783          	ld	a5,8(a0)
    80002dc0:	00009717          	auipc	a4,0x9
    80002dc4:	d4f73c23          	sd	a5,-680(a4) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
        if (!head) { tail = 0; }
    80002dc8:	02078e63          	beqz	a5,80002e04 <_ZN9Scheduler9getSortedEv+0x68>
        T *ret = elem->data;
    80002dcc:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	398080e7          	jalr	920(ra) # 80003168 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80002dd8:	00009717          	auipc	a4,0x9
    80002ddc:	d2870713          	addi	a4,a4,-728 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002de0:	02872783          	lw	a5,40(a4)
    80002de4:	fff7879b          	addiw	a5,a5,-1
    80002de8:	02f72423          	sw	a5,40(a4)
}
    80002dec:	00048513          	mv	a0,s1
    80002df0:	01813083          	ld	ra,24(sp)
    80002df4:	01013403          	ld	s0,16(sp)
    80002df8:	00813483          	ld	s1,8(sp)
    80002dfc:	02010113          	addi	sp,sp,32
    80002e00:	00008067          	ret
        if (!head) { tail = 0; }
    80002e04:	00009797          	auipc	a5,0x9
    80002e08:	d007be23          	sd	zero,-740(a5) # 8000bb20 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    80002e0c:	fc1ff06f          	j	80002dcc <_ZN9Scheduler9getSortedEv+0x30>
        if (!head) { return 0; }
    80002e10:	00050493          	mv	s1,a0
    return sleepingThreadQueue.removeFirst();
    80002e14:	fd9ff06f          	j	80002dec <_ZN9Scheduler9getSortedEv+0x50>

0000000080002e18 <_ZN9Scheduler11getWakeTimeEv>:
uint64 Scheduler::getWakeTime() {
    80002e18:	ff010113          	addi	sp,sp,-16
    80002e1c:	00813423          	sd	s0,8(sp)
    80002e20:	01010413          	addi	s0,sp,16
        if (!head) { return 0; }
        return head->data;
    }

    uint64 peekFirstTime(){
        if(!head) return 0;
    80002e24:	00009797          	auipc	a5,0x9
    80002e28:	cf47b783          	ld	a5,-780(a5) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
    80002e2c:	00078a63          	beqz	a5,80002e40 <_ZN9Scheduler11getWakeTimeEv+0x28>
        return head->wakeUp;
    80002e30:	0107b503          	ld	a0,16(a5)
}
    80002e34:	00813403          	ld	s0,8(sp)
    80002e38:	01010113          	addi	sp,sp,16
    80002e3c:	00008067          	ret
        if(!head) return 0;
    80002e40:	00000513          	li	a0,0
    return sleepingThreadQueue.peekFirstTime();
    80002e44:	ff1ff06f          	j	80002e34 <_ZN9Scheduler11getWakeTimeEv+0x1c>

0000000080002e48 <_ZN9Scheduler9putSortedEP3TCBm>:
{
    80002e48:	fd010113          	addi	sp,sp,-48
    80002e4c:	02113423          	sd	ra,40(sp)
    80002e50:	02813023          	sd	s0,32(sp)
    80002e54:	00913c23          	sd	s1,24(sp)
    80002e58:	01213823          	sd	s2,16(sp)
    80002e5c:	01313423          	sd	s3,8(sp)
    80002e60:	03010413          	addi	s0,sp,48
    80002e64:	00050993          	mv	s3,a0
    80002e68:	00058913          	mv	s2,a1
        Elem* curr = head;
    80002e6c:	00009497          	auipc	s1,0x9
    80002e70:	cac4b483          	ld	s1,-852(s1) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    80002e74:	00100513          	li	a0,1
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	194080e7          	jalr	404(ra) # 8000300c <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80002e80:	01353023          	sd	s3,0(a0)
        elem->next = nullptr;
    80002e84:	00053423          	sd	zero,8(a0)
        elem->wakeUp=wakeUp;
    80002e88:	01253823          	sd	s2,16(a0)
        if(!curr){
    80002e8c:	02048863          	beqz	s1,80002ebc <_ZN9Scheduler9putSortedEP3TCBm+0x74>
        else if(head->wakeUp>wakeUp){
    80002e90:	00009797          	auipc	a5,0x9
    80002e94:	c887b783          	ld	a5,-888(a5) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
    80002e98:	0107b703          	ld	a4,16(a5)
    80002e9c:	04e96063          	bltu	s2,a4,80002edc <_ZN9Scheduler9putSortedEP3TCBm+0x94>
        Elem* prev=curr;
    80002ea0:	00048793          	mv	a5,s1
        while(curr && curr->wakeUp<=wakeUp) {
    80002ea4:	04048c63          	beqz	s1,80002efc <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
    80002ea8:	0104b703          	ld	a4,16(s1)
    80002eac:	04e96863          	bltu	s2,a4,80002efc <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
            prev=curr;
    80002eb0:	00048793          	mv	a5,s1
            curr=curr->next;
    80002eb4:	0084b483          	ld	s1,8(s1)
        while(curr && curr->wakeUp<=wakeUp) {
    80002eb8:	fedff06f          	j	80002ea4 <_ZN9Scheduler9putSortedEP3TCBm+0x5c>
            head=tail=elem;
    80002ebc:	00009797          	auipc	a5,0x9
    80002ec0:	c4478793          	addi	a5,a5,-956 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002ec4:	02a7b023          	sd	a0,32(a5)
    80002ec8:	00a7bc23          	sd	a0,24(a5)
            size++;
    80002ecc:	0287a703          	lw	a4,40(a5)
    80002ed0:	0017071b          	addiw	a4,a4,1
    80002ed4:	02e7a423          	sw	a4,40(a5)
            return;
    80002ed8:	0440006f          	j	80002f1c <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
            elem->next=head;
    80002edc:	00f53423          	sd	a5,8(a0)
            head=elem;
    80002ee0:	00009797          	auipc	a5,0x9
    80002ee4:	c2078793          	addi	a5,a5,-992 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002ee8:	00a7bc23          	sd	a0,24(a5)
            size++;
    80002eec:	0287a703          	lw	a4,40(a5)
    80002ef0:	0017071b          	addiw	a4,a4,1
    80002ef4:	02e7a423          	sw	a4,40(a5)
            return;
    80002ef8:	0240006f          	j	80002f1c <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
        elem->next=curr;
    80002efc:	00953423          	sd	s1,8(a0)
        prev->next=elem;
    80002f00:	00a7b423          	sd	a0,8(a5)
        if(!curr) tail=elem;
    80002f04:	02048a63          	beqz	s1,80002f38 <_ZN9Scheduler9putSortedEP3TCBm+0xf0>
        size++;
    80002f08:	00009717          	auipc	a4,0x9
    80002f0c:	bf870713          	addi	a4,a4,-1032 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002f10:	02872783          	lw	a5,40(a4)
    80002f14:	0017879b          	addiw	a5,a5,1
    80002f18:	02f72423          	sw	a5,40(a4)
}
    80002f1c:	02813083          	ld	ra,40(sp)
    80002f20:	02013403          	ld	s0,32(sp)
    80002f24:	01813483          	ld	s1,24(sp)
    80002f28:	01013903          	ld	s2,16(sp)
    80002f2c:	00813983          	ld	s3,8(sp)
    80002f30:	03010113          	addi	sp,sp,48
    80002f34:	00008067          	ret
        if(!curr) tail=elem;
    80002f38:	00009797          	auipc	a5,0x9
    80002f3c:	bea7b423          	sd	a0,-1048(a5) # 8000bb20 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    80002f40:	fc9ff06f          	j	80002f08 <_ZN9Scheduler9putSortedEP3TCBm+0xc0>

0000000080002f44 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002f44:	ff010113          	addi	sp,sp,-16
    80002f48:	00113423          	sd	ra,8(sp)
    80002f4c:	00813023          	sd	s0,0(sp)
    80002f50:	01010413          	addi	s0,sp,16
    80002f54:	000105b7          	lui	a1,0x10
    80002f58:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002f5c:	00100513          	li	a0,1
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	cf0080e7          	jalr	-784(ra) # 80002c50 <_Z41__static_initialization_and_destruction_0ii>
    80002f68:	00813083          	ld	ra,8(sp)
    80002f6c:	00013403          	ld	s0,0(sp)
    80002f70:	01010113          	addi	sp,sp,16
    80002f74:	00008067          	ret

0000000080002f78 <_ZN15MemoryAllocator7getFreeEv>:
    findNewLargest();
    return 0;
}

size_t MemoryAllocator::getFree()
{
    80002f78:	ff010113          	addi	sp,sp,-16
    80002f7c:	00813423          	sd	s0,8(sp)
    80002f80:	01010413          	addi	s0,sp,16

    return totalFreeMem;
}
    80002f84:	00009517          	auipc	a0,0x9
    80002f88:	bac53503          	ld	a0,-1108(a0) # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    80002f8c:	00813403          	ld	s0,8(sp)
    80002f90:	01010113          	addi	sp,sp,16
    80002f94:	00008067          	ret

0000000080002f98 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock()
{
    80002f98:	ff010113          	addi	sp,sp,-16
    80002f9c:	00813423          	sd	s0,8(sp)
    80002fa0:	01010413          	addi	s0,sp,16
    return largestFreeBlock;
}
    80002fa4:	00009517          	auipc	a0,0x9
    80002fa8:	b9453503          	ld	a0,-1132(a0) # 8000bb38 <_ZN15MemoryAllocator16largestFreeBlockE>
    80002fac:	00813403          	ld	s0,8(sp)
    80002fb0:	01010113          	addi	sp,sp,16
    80002fb4:	00008067          	ret

0000000080002fb8 <_ZN15MemoryAllocator14findNewLargestEv>:

void MemoryAllocator::findNewLargest()
{
    80002fb8:	ff010113          	addi	sp,sp,-16
    80002fbc:	00813423          	sd	s0,8(sp)
    80002fc0:	01010413          	addi	s0,sp,16
    largestFreeBlock=0;
    80002fc4:	00009797          	auipc	a5,0x9
    80002fc8:	b6c78793          	addi	a5,a5,-1172 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    80002fcc:	0007b423          	sd	zero,8(a5)
    if(!freeMemHead) return;
    80002fd0:	0107b783          	ld	a5,16(a5)
    80002fd4:	00079e63          	bnez	a5,80002ff0 <_ZN15MemoryAllocator14findNewLargestEv+0x38>
    while(curr) {
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
        curr=curr->next;
    }

}
    80002fd8:	00813403          	ld	s0,8(sp)
    80002fdc:	01010113          	addi	sp,sp,16
    80002fe0:	00008067          	ret
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002fe4:	00009697          	auipc	a3,0x9
    80002fe8:	b4e6ba23          	sd	a4,-1196(a3) # 8000bb38 <_ZN15MemoryAllocator16largestFreeBlockE>
        curr=curr->next;
    80002fec:	0107b783          	ld	a5,16(a5)
    while(curr) {
    80002ff0:	fe0784e3          	beqz	a5,80002fd8 <_ZN15MemoryAllocator14findNewLargestEv+0x20>
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002ff4:	0007b683          	ld	a3,0(a5)
    80002ff8:	00009717          	auipc	a4,0x9
    80002ffc:	b4073703          	ld	a4,-1216(a4) # 8000bb38 <_ZN15MemoryAllocator16largestFreeBlockE>
    80003000:	fed772e3          	bgeu	a4,a3,80002fe4 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>
    80003004:	00068713          	mv	a4,a3
    80003008:	fddff06f          	j	80002fe4 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>

000000008000300c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000300c:	fe010113          	addi	sp,sp,-32
    80003010:	00113c23          	sd	ra,24(sp)
    80003014:	00813823          	sd	s0,16(sp)
    80003018:	00913423          	sd	s1,8(sp)
    8000301c:	02010413          	addi	s0,sp,32
    size_t size=numOfBlocks*MEM_BLOCK_SIZE;
    80003020:	00651513          	slli	a0,a0,0x6
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    80003024:	12050e63          	beqz	a0,80003160 <_ZN15MemoryAllocator9mem_allocEm+0x154>
    80003028:	00009497          	auipc	s1,0x9
    8000302c:	b184b483          	ld	s1,-1256(s1) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    80003030:	0e048e63          	beqz	s1,8000312c <_ZN15MemoryAllocator9mem_allocEm+0x120>
    80003034:	00009717          	auipc	a4,0x9
    80003038:	b0473703          	ld	a4,-1276(a4) # 8000bb38 <_ZN15MemoryAllocator16largestFreeBlockE>
    8000303c:	00a77863          	bgeu	a4,a0,8000304c <_ZN15MemoryAllocator9mem_allocEm+0x40>
    80003040:	00000493          	li	s1,0
    80003044:	0e80006f          	j	8000312c <_ZN15MemoryAllocator9mem_allocEm+0x120>
    while(curr && curr->size<size) curr=curr->next;
    80003048:	0104b483          	ld	s1,16(s1)
    8000304c:	00048663          	beqz	s1,80003058 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80003050:	0004b783          	ld	a5,0(s1)
    80003054:	fea7eae3          	bltu	a5,a0,80003048 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if(!curr) return nullptr;
    80003058:	0c048a63          	beqz	s1,8000312c <_ZN15MemoryAllocator9mem_allocEm+0x120>
    if(curr->size> size+sizeof(FreeBlock)){
    8000305c:	0004b683          	ld	a3,0(s1)
    80003060:	01850793          	addi	a5,a0,24
    80003064:	08d7f063          	bgeu	a5,a3,800030e4 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        totalFreeMem=totalFreeMem-size-sizeof(FreeBlock);
    80003068:	00009617          	auipc	a2,0x9
    8000306c:	ac860613          	addi	a2,a2,-1336 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    80003070:	00063683          	ld	a3,0(a2)
    80003074:	40a686b3          	sub	a3,a3,a0
    80003078:	fe868693          	addi	a3,a3,-24
    8000307c:	00d63023          	sd	a3,0(a2)
        if(largestFreeBlock==curr->size) find=true;
    80003080:	0004b683          	ld	a3,0(s1)
    80003084:	04d70663          	beq	a4,a3,800030d0 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        bool find=false;
    80003088:	00000613          	li	a2,0
        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    8000308c:	00f487b3          	add	a5,s1,a5
        newBlock->size=curr->size-size-sizeof(FreeBlock);
    80003090:	40a686b3          	sub	a3,a3,a0
    80003094:	fe868693          	addi	a3,a3,-24
    80003098:	00d7b023          	sd	a3,0(a5)
        newBlock->prev=curr->prev;
    8000309c:	0084b703          	ld	a4,8(s1)
    800030a0:	00e7b423          	sd	a4,8(a5)
        curr->size=size;
    800030a4:	00a4b023          	sd	a0,0(s1)
        if(curr->prev){
    800030a8:	02070863          	beqz	a4,800030d8 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            curr->prev->next=newBlock;
    800030ac:	00f73823          	sd	a5,16(a4)
        newBlock->next=curr->next;
    800030b0:	0104b703          	ld	a4,16(s1)
    800030b4:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=newBlock;
    800030b8:	00070463          	beqz	a4,800030c0 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800030bc:	00f73423          	sd	a5,8(a4)
        if(find) findNewLargest();
    800030c0:	06060063          	beqz	a2,80003120 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	ef4080e7          	jalr	-268(ra) # 80002fb8 <_ZN15MemoryAllocator14findNewLargestEv>
    800030cc:	0540006f          	j	80003120 <_ZN15MemoryAllocator9mem_allocEm+0x114>
        if(largestFreeBlock==curr->size) find=true;
    800030d0:	00100613          	li	a2,1
    800030d4:	fb9ff06f          	j	8000308c <_ZN15MemoryAllocator9mem_allocEm+0x80>
        else freeMemHead = newBlock;
    800030d8:	00009717          	auipc	a4,0x9
    800030dc:	a6f73423          	sd	a5,-1432(a4) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    800030e0:	fd1ff06f          	j	800030b0 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        totalFreeMem=totalFreeMem-curr->size;
    800030e4:	00009617          	auipc	a2,0x9
    800030e8:	a4c60613          	addi	a2,a2,-1460 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    800030ec:	00063783          	ld	a5,0(a2)
    800030f0:	40d786b3          	sub	a3,a5,a3
    800030f4:	00d63023          	sd	a3,0(a2)
        if(curr->prev) curr->prev->next=curr->next;
    800030f8:	0084b783          	ld	a5,8(s1)
    800030fc:	04078463          	beqz	a5,80003144 <_ZN15MemoryAllocator9mem_allocEm+0x138>
    80003100:	0104b683          	ld	a3,16(s1)
    80003104:	00d7b823          	sd	a3,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80003108:	0104b783          	ld	a5,16(s1)
    8000310c:	00078663          	beqz	a5,80003118 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    80003110:	0084b683          	ld	a3,8(s1)
    80003114:	00d7b423          	sd	a3,8(a5)
        if(curr->size==largestFreeBlock) findNewLargest();
    80003118:	0004b783          	ld	a5,0(s1)
    8000311c:	02f70c63          	beq	a4,a5,80003154 <_ZN15MemoryAllocator9mem_allocEm+0x148>
    curr->next=nullptr;
    80003120:	0004b823          	sd	zero,16(s1)
    curr->prev=nullptr;
    80003124:	0004b423          	sd	zero,8(s1)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    80003128:	01848493          	addi	s1,s1,24
}
    8000312c:	00048513          	mv	a0,s1
    80003130:	01813083          	ld	ra,24(sp)
    80003134:	01013403          	ld	s0,16(sp)
    80003138:	00813483          	ld	s1,8(sp)
    8000313c:	02010113          	addi	sp,sp,32
    80003140:	00008067          	ret
        else freeMemHead=curr->next;
    80003144:	0104b783          	ld	a5,16(s1)
    80003148:	00009697          	auipc	a3,0x9
    8000314c:	9ef6bc23          	sd	a5,-1544(a3) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    80003150:	fb9ff06f          	j	80003108 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if(curr->size==largestFreeBlock) findNewLargest();
    80003154:	00000097          	auipc	ra,0x0
    80003158:	e64080e7          	jalr	-412(ra) # 80002fb8 <_ZN15MemoryAllocator14findNewLargestEv>
    8000315c:	fc5ff06f          	j	80003120 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    80003160:	00000493          	li	s1,0
    80003164:	fc9ff06f          	j	8000312c <_ZN15MemoryAllocator9mem_allocEm+0x120>

0000000080003168 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    80003168:	1e050c63          	beqz	a0,80003360 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    8000316c:	fe850693          	addi	a3,a0,-24
    80003170:	00009797          	auipc	a5,0x9
    80003174:	8307b783          	ld	a5,-2000(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003178:	0007b783          	ld	a5,0(a5)
    8000317c:	1ef6e663          	bltu	a3,a5,80003368 <_ZN15MemoryAllocator8mem_freeEPv+0x200>
    80003180:	00009797          	auipc	a5,0x9
    80003184:	8a87b783          	ld	a5,-1880(a5) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80003188:	0007b783          	ld	a5,0(a5)
    8000318c:	1ea7e263          	bltu	a5,a0,80003370 <_ZN15MemoryAllocator8mem_freeEPv+0x208>
    totalFreeMem+=blk->size;
    80003190:	fe853603          	ld	a2,-24(a0)
    80003194:	00009797          	auipc	a5,0x9
    80003198:	99c78793          	addi	a5,a5,-1636 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    8000319c:	0007b703          	ld	a4,0(a5)
    800031a0:	00c70733          	add	a4,a4,a2
    800031a4:	00e7b023          	sd	a4,0(a5)
    blk->next=nullptr;
    800031a8:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    800031ac:	fe053823          	sd	zero,-16(a0)
    if(!freeMemHead){
    800031b0:	0107b603          	ld	a2,16(a5)
    800031b4:	08060463          	beqz	a2,8000323c <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
{
    800031b8:	ff010113          	addi	sp,sp,-16
    800031bc:	00113423          	sd	ra,8(sp)
    800031c0:	00813023          	sd	s0,0(sp)
    800031c4:	01010413          	addi	s0,sp,16
    if((char*) blk < (char*) freeMemHead){
    800031c8:	0cc6e263          	bltu	a3,a2,8000328c <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    800031cc:	00060793          	mv	a5,a2
    800031d0:	00078713          	mv	a4,a5
    800031d4:	0107b783          	ld	a5,16(a5)
    800031d8:	00078463          	beqz	a5,800031e0 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    800031dc:	fed7eae3          	bltu	a5,a3,800031d0 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    800031e0:	0a070863          	beqz	a4,80003290 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    800031e4:	00073803          	ld	a6,0(a4)
    800031e8:	01880593          	addi	a1,a6,24
    800031ec:	00b705b3          	add	a1,a4,a1
    800031f0:	0ab69063          	bne	a3,a1,80003290 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
        curr->size+=sizeof(FreeBlock)+blk->size;
    800031f4:	fe853683          	ld	a3,-24(a0)
    800031f8:	00d806b3          	add	a3,a6,a3
    800031fc:	01868693          	addi	a3,a3,24
    80003200:	00d73023          	sd	a3,0(a4)
        totalFreeMem+=sizeof(FreeBlock);
    80003204:	00009617          	auipc	a2,0x9
    80003208:	92c60613          	addi	a2,a2,-1748 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    8000320c:	00063683          	ld	a3,0(a2)
    80003210:	01868693          	addi	a3,a3,24
    80003214:	00d63023          	sd	a3,0(a2)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80003218:	00078a63          	beqz	a5,8000322c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    8000321c:	00073603          	ld	a2,0(a4)
    80003220:	01860693          	addi	a3,a2,24
    80003224:	00d706b3          	add	a3,a4,a3
    80003228:	02d78663          	beq	a5,a3,80003254 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        findNewLargest();
    8000322c:	00000097          	auipc	ra,0x0
    80003230:	d8c080e7          	jalr	-628(ra) # 80002fb8 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    80003234:	00000513          	li	a0,0
    80003238:	09c0006f          	j	800032d4 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        freeMemHead=blk;
    8000323c:	00d7b823          	sd	a3,16(a5)
        totalFreeMem=blk->size;
    80003240:	fe853703          	ld	a4,-24(a0)
    80003244:	00e7b023          	sd	a4,0(a5)
        largestFreeBlock=totalFreeMem;
    80003248:	00e7b423          	sd	a4,8(a5)
        return 0;
    8000324c:	00000513          	li	a0,0
    80003250:	00008067          	ret
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    80003254:	0007b683          	ld	a3,0(a5)
    80003258:	00d606b3          	add	a3,a2,a3
    8000325c:	01868693          	addi	a3,a3,24
    80003260:	00d73023          	sd	a3,0(a4)
            totalFreeMem+=sizeof(FreeBlock);
    80003264:	00009617          	auipc	a2,0x9
    80003268:	8cc60613          	addi	a2,a2,-1844 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    8000326c:	00063683          	ld	a3,0(a2)
    80003270:	01868693          	addi	a3,a3,24
    80003274:	00d63023          	sd	a3,0(a2)
            curr->next=curr->next->next;
    80003278:	0107b783          	ld	a5,16(a5)
    8000327c:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    80003280:	fa0786e3          	beqz	a5,8000322c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80003284:	00e7b423          	sd	a4,8(a5)
    80003288:	fa5ff06f          	j	8000322c <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        curr=nullptr;
    8000328c:	00000713          	li	a4,0
    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    80003290:	00070463          	beqz	a4,80003298 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    80003294:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    80003298:	00060863          	beqz	a2,800032a8 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    8000329c:	fe853783          	ld	a5,-24(a0)
    800032a0:	00f507b3          	add	a5,a0,a5
    800032a4:	04c78063          	beq	a5,a2,800032e4 <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    blk->prev=curr;
    800032a8:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    800032ac:	08070e63          	beqz	a4,80003348 <_ZN15MemoryAllocator8mem_freeEPv+0x1e0>
    800032b0:	01073783          	ld	a5,16(a4)
    800032b4:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    800032b8:	00078463          	beqz	a5,800032c0 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    800032bc:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    800032c0:	08070a63          	beqz	a4,80003354 <_ZN15MemoryAllocator8mem_freeEPv+0x1ec>
    800032c4:	00d73823          	sd	a3,16(a4)
    findNewLargest();
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	cf0080e7          	jalr	-784(ra) # 80002fb8 <_ZN15MemoryAllocator14findNewLargestEv>
    return 0;
    800032d0:	00000513          	li	a0,0
}
    800032d4:	00813083          	ld	ra,8(sp)
    800032d8:	00013403          	ld	s0,0(sp)
    800032dc:	01010113          	addi	sp,sp,16
    800032e0:	00008067          	ret
        totalFreeMem+=sizeof(FreeBlock);
    800032e4:	00009717          	auipc	a4,0x9
    800032e8:	84c70713          	addi	a4,a4,-1972 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    800032ec:	00073783          	ld	a5,0(a4)
    800032f0:	01878793          	addi	a5,a5,24
    800032f4:	00f73023          	sd	a5,0(a4)
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    800032f8:	00063783          	ld	a5,0(a2)
    800032fc:	fe853703          	ld	a4,-24(a0)
    80003300:	00e787b3          	add	a5,a5,a4
    80003304:	01878793          	addi	a5,a5,24
    80003308:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    8000330c:	01063783          	ld	a5,16(a2)
    80003310:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    80003314:	00078463          	beqz	a5,8000331c <_ZN15MemoryAllocator8mem_freeEPv+0x1b4>
    80003318:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    8000331c:	00863783          	ld	a5,8(a2)
    80003320:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    80003324:	00078c63          	beqz	a5,8000333c <_ZN15MemoryAllocator8mem_freeEPv+0x1d4>
    80003328:	00d7b823          	sd	a3,16(a5)
        findNewLargest();
    8000332c:	00000097          	auipc	ra,0x0
    80003330:	c8c080e7          	jalr	-884(ra) # 80002fb8 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    80003334:	00000513          	li	a0,0
    80003338:	f9dff06f          	j	800032d4 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        else freeMemHead=blk;
    8000333c:	00009797          	auipc	a5,0x9
    80003340:	80d7b223          	sd	a3,-2044(a5) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    80003344:	fe9ff06f          	j	8000332c <_ZN15MemoryAllocator8mem_freeEPv+0x1c4>
    blk->next=curr?curr->next:freeMemHead;
    80003348:	00008797          	auipc	a5,0x8
    8000334c:	7f87b783          	ld	a5,2040(a5) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    80003350:	f65ff06f          	j	800032b4 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    else freeMemHead=blk;
    80003354:	00008797          	auipc	a5,0x8
    80003358:	7ed7b623          	sd	a3,2028(a5) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    8000335c:	f6dff06f          	j	800032c8 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    if(!addr) return -1;
    80003360:	fff00513          	li	a0,-1
    80003364:	00008067          	ret
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80003368:	ffe00513          	li	a0,-2
    8000336c:	00008067          	ret
    80003370:	ffe00513          	li	a0,-2
}
    80003374:	00008067          	ret

0000000080003378 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003378:	fe010113          	addi	sp,sp,-32
    8000337c:	00113c23          	sd	ra,24(sp)
    80003380:	00813823          	sd	s0,16(sp)
    80003384:	00913423          	sd	s1,8(sp)
    80003388:	01213023          	sd	s2,0(sp)
    8000338c:	02010413          	addi	s0,sp,32
    80003390:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003394:	00000913          	li	s2,0
    80003398:	00c0006f          	j	800033a4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000339c:	ffffe097          	auipc	ra,0xffffe
    800033a0:	048080e7          	jalr	72(ra) # 800013e4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800033a4:	ffffe097          	auipc	ra,0xffffe
    800033a8:	180080e7          	jalr	384(ra) # 80001524 <_Z4getcv>
    800033ac:	0005059b          	sext.w	a1,a0
    800033b0:	01b00793          	li	a5,27
    800033b4:	02f58a63          	beq	a1,a5,800033e8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800033b8:	0084b503          	ld	a0,8(s1)
    800033bc:	00003097          	auipc	ra,0x3
    800033c0:	400080e7          	jalr	1024(ra) # 800067bc <_ZN6Buffer3putEi>
        i++;
    800033c4:	0019071b          	addiw	a4,s2,1
    800033c8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800033cc:	0004a683          	lw	a3,0(s1)
    800033d0:	0026979b          	slliw	a5,a3,0x2
    800033d4:	00d787bb          	addw	a5,a5,a3
    800033d8:	0017979b          	slliw	a5,a5,0x1
    800033dc:	02f767bb          	remw	a5,a4,a5
    800033e0:	fc0792e3          	bnez	a5,800033a4 <_ZL16producerKeyboardPv+0x2c>
    800033e4:	fb9ff06f          	j	8000339c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800033e8:	00100793          	li	a5,1
    800033ec:	00008717          	auipc	a4,0x8
    800033f0:	74f72e23          	sw	a5,1884(a4) # 8000bb48 <_ZL9threadEnd>
    data->buffer->put('!');
    800033f4:	02100593          	li	a1,33
    800033f8:	0084b503          	ld	a0,8(s1)
    800033fc:	00003097          	auipc	ra,0x3
    80003400:	3c0080e7          	jalr	960(ra) # 800067bc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003404:	0104b503          	ld	a0,16(s1)
    80003408:	ffffe097          	auipc	ra,0xffffe
    8000340c:	0ac080e7          	jalr	172(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    80003410:	01813083          	ld	ra,24(sp)
    80003414:	01013403          	ld	s0,16(sp)
    80003418:	00813483          	ld	s1,8(sp)
    8000341c:	00013903          	ld	s2,0(sp)
    80003420:	02010113          	addi	sp,sp,32
    80003424:	00008067          	ret

0000000080003428 <_ZL8producerPv>:

static void producer(void *arg) {
    80003428:	fe010113          	addi	sp,sp,-32
    8000342c:	00113c23          	sd	ra,24(sp)
    80003430:	00813823          	sd	s0,16(sp)
    80003434:	00913423          	sd	s1,8(sp)
    80003438:	01213023          	sd	s2,0(sp)
    8000343c:	02010413          	addi	s0,sp,32
    80003440:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003444:	00000913          	li	s2,0
    80003448:	00c0006f          	j	80003454 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000344c:	ffffe097          	auipc	ra,0xffffe
    80003450:	f98080e7          	jalr	-104(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003454:	00008797          	auipc	a5,0x8
    80003458:	6f47a783          	lw	a5,1780(a5) # 8000bb48 <_ZL9threadEnd>
    8000345c:	02079e63          	bnez	a5,80003498 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003460:	0004a583          	lw	a1,0(s1)
    80003464:	0305859b          	addiw	a1,a1,48
    80003468:	0084b503          	ld	a0,8(s1)
    8000346c:	00003097          	auipc	ra,0x3
    80003470:	350080e7          	jalr	848(ra) # 800067bc <_ZN6Buffer3putEi>
        i++;
    80003474:	0019071b          	addiw	a4,s2,1
    80003478:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000347c:	0004a683          	lw	a3,0(s1)
    80003480:	0026979b          	slliw	a5,a3,0x2
    80003484:	00d787bb          	addw	a5,a5,a3
    80003488:	0017979b          	slliw	a5,a5,0x1
    8000348c:	02f767bb          	remw	a5,a4,a5
    80003490:	fc0792e3          	bnez	a5,80003454 <_ZL8producerPv+0x2c>
    80003494:	fb9ff06f          	j	8000344c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003498:	0104b503          	ld	a0,16(s1)
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	018080e7          	jalr	24(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    800034a4:	01813083          	ld	ra,24(sp)
    800034a8:	01013403          	ld	s0,16(sp)
    800034ac:	00813483          	ld	s1,8(sp)
    800034b0:	00013903          	ld	s2,0(sp)
    800034b4:	02010113          	addi	sp,sp,32
    800034b8:	00008067          	ret

00000000800034bc <_ZL8consumerPv>:

static void consumer(void *arg) {
    800034bc:	fd010113          	addi	sp,sp,-48
    800034c0:	02113423          	sd	ra,40(sp)
    800034c4:	02813023          	sd	s0,32(sp)
    800034c8:	00913c23          	sd	s1,24(sp)
    800034cc:	01213823          	sd	s2,16(sp)
    800034d0:	01313423          	sd	s3,8(sp)
    800034d4:	03010413          	addi	s0,sp,48
    800034d8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800034dc:	00000993          	li	s3,0
    800034e0:	01c0006f          	j	800034fc <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800034e4:	ffffe097          	auipc	ra,0xffffe
    800034e8:	f00080e7          	jalr	-256(ra) # 800013e4 <_Z15thread_dispatchv>
    800034ec:	0500006f          	j	8000353c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800034f0:	00a00513          	li	a0,10
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	064080e7          	jalr	100(ra) # 80001558 <_Z4putcc>
    while (!threadEnd) {
    800034fc:	00008797          	auipc	a5,0x8
    80003500:	64c7a783          	lw	a5,1612(a5) # 8000bb48 <_ZL9threadEnd>
    80003504:	06079063          	bnez	a5,80003564 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003508:	00893503          	ld	a0,8(s2)
    8000350c:	00003097          	auipc	ra,0x3
    80003510:	340080e7          	jalr	832(ra) # 8000684c <_ZN6Buffer3getEv>
        i++;
    80003514:	0019849b          	addiw	s1,s3,1
    80003518:	0004899b          	sext.w	s3,s1
        putc(key);
    8000351c:	0ff57513          	andi	a0,a0,255
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	038080e7          	jalr	56(ra) # 80001558 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003528:	00092703          	lw	a4,0(s2)
    8000352c:	0027179b          	slliw	a5,a4,0x2
    80003530:	00e787bb          	addw	a5,a5,a4
    80003534:	02f4e7bb          	remw	a5,s1,a5
    80003538:	fa0786e3          	beqz	a5,800034e4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000353c:	05000793          	li	a5,80
    80003540:	02f4e4bb          	remw	s1,s1,a5
    80003544:	fa049ce3          	bnez	s1,800034fc <_ZL8consumerPv+0x40>
    80003548:	fa9ff06f          	j	800034f0 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000354c:	00893503          	ld	a0,8(s2)
    80003550:	00003097          	auipc	ra,0x3
    80003554:	2fc080e7          	jalr	764(ra) # 8000684c <_ZN6Buffer3getEv>
        putc(key);
    80003558:	0ff57513          	andi	a0,a0,255
    8000355c:	ffffe097          	auipc	ra,0xffffe
    80003560:	ffc080e7          	jalr	-4(ra) # 80001558 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003564:	00893503          	ld	a0,8(s2)
    80003568:	00003097          	auipc	ra,0x3
    8000356c:	370080e7          	jalr	880(ra) # 800068d8 <_ZN6Buffer6getCntEv>
    80003570:	fca04ee3          	bgtz	a0,8000354c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003574:	01093503          	ld	a0,16(s2)
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	f3c080e7          	jalr	-196(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    80003580:	02813083          	ld	ra,40(sp)
    80003584:	02013403          	ld	s0,32(sp)
    80003588:	01813483          	ld	s1,24(sp)
    8000358c:	01013903          	ld	s2,16(sp)
    80003590:	00813983          	ld	s3,8(sp)
    80003594:	03010113          	addi	sp,sp,48
    80003598:	00008067          	ret

000000008000359c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000359c:	f9010113          	addi	sp,sp,-112
    800035a0:	06113423          	sd	ra,104(sp)
    800035a4:	06813023          	sd	s0,96(sp)
    800035a8:	04913c23          	sd	s1,88(sp)
    800035ac:	05213823          	sd	s2,80(sp)
    800035b0:	05313423          	sd	s3,72(sp)
    800035b4:	05413023          	sd	s4,64(sp)
    800035b8:	03513c23          	sd	s5,56(sp)
    800035bc:	03613823          	sd	s6,48(sp)
    800035c0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800035c4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800035c8:	00006517          	auipc	a0,0x6
    800035cc:	b6850513          	addi	a0,a0,-1176 # 80009130 <CONSOLE_STATUS+0x120>
    800035d0:	00002097          	auipc	ra,0x2
    800035d4:	220080e7          	jalr	544(ra) # 800057f0 <_Z11printStringPKc>
    getString(input, 30);
    800035d8:	01e00593          	li	a1,30
    800035dc:	fa040493          	addi	s1,s0,-96
    800035e0:	00048513          	mv	a0,s1
    800035e4:	00002097          	auipc	ra,0x2
    800035e8:	294080e7          	jalr	660(ra) # 80005878 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800035ec:	00048513          	mv	a0,s1
    800035f0:	00002097          	auipc	ra,0x2
    800035f4:	360080e7          	jalr	864(ra) # 80005950 <_Z11stringToIntPKc>
    800035f8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800035fc:	00006517          	auipc	a0,0x6
    80003600:	b5450513          	addi	a0,a0,-1196 # 80009150 <CONSOLE_STATUS+0x140>
    80003604:	00002097          	auipc	ra,0x2
    80003608:	1ec080e7          	jalr	492(ra) # 800057f0 <_Z11printStringPKc>
    getString(input, 30);
    8000360c:	01e00593          	li	a1,30
    80003610:	00048513          	mv	a0,s1
    80003614:	00002097          	auipc	ra,0x2
    80003618:	264080e7          	jalr	612(ra) # 80005878 <_Z9getStringPci>
    n = stringToInt(input);
    8000361c:	00048513          	mv	a0,s1
    80003620:	00002097          	auipc	ra,0x2
    80003624:	330080e7          	jalr	816(ra) # 80005950 <_Z11stringToIntPKc>
    80003628:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000362c:	00006517          	auipc	a0,0x6
    80003630:	b4450513          	addi	a0,a0,-1212 # 80009170 <CONSOLE_STATUS+0x160>
    80003634:	00002097          	auipc	ra,0x2
    80003638:	1bc080e7          	jalr	444(ra) # 800057f0 <_Z11printStringPKc>
    8000363c:	00000613          	li	a2,0
    80003640:	00a00593          	li	a1,10
    80003644:	00090513          	mv	a0,s2
    80003648:	00002097          	auipc	ra,0x2
    8000364c:	358080e7          	jalr	856(ra) # 800059a0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003650:	00006517          	auipc	a0,0x6
    80003654:	b3850513          	addi	a0,a0,-1224 # 80009188 <CONSOLE_STATUS+0x178>
    80003658:	00002097          	auipc	ra,0x2
    8000365c:	198080e7          	jalr	408(ra) # 800057f0 <_Z11printStringPKc>
    80003660:	00000613          	li	a2,0
    80003664:	00a00593          	li	a1,10
    80003668:	00048513          	mv	a0,s1
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	334080e7          	jalr	820(ra) # 800059a0 <_Z8printIntiii>
    printString(".\n");
    80003674:	00006517          	auipc	a0,0x6
    80003678:	b2c50513          	addi	a0,a0,-1236 # 800091a0 <CONSOLE_STATUS+0x190>
    8000367c:	00002097          	auipc	ra,0x2
    80003680:	174080e7          	jalr	372(ra) # 800057f0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003684:	0324c463          	blt	s1,s2,800036ac <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003688:	03205c63          	blez	s2,800036c0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000368c:	03800513          	li	a0,56
    80003690:	fffff097          	auipc	ra,0xfffff
    80003694:	c84080e7          	jalr	-892(ra) # 80002314 <_Znwm>
    80003698:	00050a13          	mv	s4,a0
    8000369c:	00048593          	mv	a1,s1
    800036a0:	00003097          	auipc	ra,0x3
    800036a4:	080080e7          	jalr	128(ra) # 80006720 <_ZN6BufferC1Ei>
    800036a8:	0300006f          	j	800036d8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800036ac:	00006517          	auipc	a0,0x6
    800036b0:	afc50513          	addi	a0,a0,-1284 # 800091a8 <CONSOLE_STATUS+0x198>
    800036b4:	00002097          	auipc	ra,0x2
    800036b8:	13c080e7          	jalr	316(ra) # 800057f0 <_Z11printStringPKc>
        return;
    800036bc:	0140006f          	j	800036d0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800036c0:	00006517          	auipc	a0,0x6
    800036c4:	b2850513          	addi	a0,a0,-1240 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800036c8:	00002097          	auipc	ra,0x2
    800036cc:	128080e7          	jalr	296(ra) # 800057f0 <_Z11printStringPKc>
        return;
    800036d0:	000b0113          	mv	sp,s6
    800036d4:	1500006f          	j	80003824 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800036d8:	00000593          	li	a1,0
    800036dc:	00008517          	auipc	a0,0x8
    800036e0:	47450513          	addi	a0,a0,1140 # 8000bb50 <_ZL10waitForAll>
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	d24080e7          	jalr	-732(ra) # 80001408 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800036ec:	00391793          	slli	a5,s2,0x3
    800036f0:	00f78793          	addi	a5,a5,15
    800036f4:	ff07f793          	andi	a5,a5,-16
    800036f8:	40f10133          	sub	sp,sp,a5
    800036fc:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003700:	0019071b          	addiw	a4,s2,1
    80003704:	00171793          	slli	a5,a4,0x1
    80003708:	00e787b3          	add	a5,a5,a4
    8000370c:	00379793          	slli	a5,a5,0x3
    80003710:	00f78793          	addi	a5,a5,15
    80003714:	ff07f793          	andi	a5,a5,-16
    80003718:	40f10133          	sub	sp,sp,a5
    8000371c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003720:	00191613          	slli	a2,s2,0x1
    80003724:	012607b3          	add	a5,a2,s2
    80003728:	00379793          	slli	a5,a5,0x3
    8000372c:	00f987b3          	add	a5,s3,a5
    80003730:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003734:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003738:	00008717          	auipc	a4,0x8
    8000373c:	41873703          	ld	a4,1048(a4) # 8000bb50 <_ZL10waitForAll>
    80003740:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003744:	00078613          	mv	a2,a5
    80003748:	00000597          	auipc	a1,0x0
    8000374c:	d7458593          	addi	a1,a1,-652 # 800034bc <_ZL8consumerPv>
    80003750:	f9840513          	addi	a0,s0,-104
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	bd4080e7          	jalr	-1068(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000375c:	00000493          	li	s1,0
    80003760:	0280006f          	j	80003788 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003764:	00000597          	auipc	a1,0x0
    80003768:	c1458593          	addi	a1,a1,-1004 # 80003378 <_ZL16producerKeyboardPv>
                      data + i);
    8000376c:	00179613          	slli	a2,a5,0x1
    80003770:	00f60633          	add	a2,a2,a5
    80003774:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003778:	00c98633          	add	a2,s3,a2
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	bac080e7          	jalr	-1108(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003784:	0014849b          	addiw	s1,s1,1
    80003788:	0524d263          	bge	s1,s2,800037cc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000378c:	00149793          	slli	a5,s1,0x1
    80003790:	009787b3          	add	a5,a5,s1
    80003794:	00379793          	slli	a5,a5,0x3
    80003798:	00f987b3          	add	a5,s3,a5
    8000379c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800037a0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800037a4:	00008717          	auipc	a4,0x8
    800037a8:	3ac73703          	ld	a4,940(a4) # 8000bb50 <_ZL10waitForAll>
    800037ac:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800037b0:	00048793          	mv	a5,s1
    800037b4:	00349513          	slli	a0,s1,0x3
    800037b8:	00aa8533          	add	a0,s5,a0
    800037bc:	fa9054e3          	blez	s1,80003764 <_Z22producerConsumer_C_APIv+0x1c8>
    800037c0:	00000597          	auipc	a1,0x0
    800037c4:	c6858593          	addi	a1,a1,-920 # 80003428 <_ZL8producerPv>
    800037c8:	fa5ff06f          	j	8000376c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	c18080e7          	jalr	-1000(ra) # 800013e4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800037d4:	00000493          	li	s1,0
    800037d8:	00994e63          	blt	s2,s1,800037f4 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800037dc:	00008517          	auipc	a0,0x8
    800037e0:	37453503          	ld	a0,884(a0) # 8000bb50 <_ZL10waitForAll>
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	c98080e7          	jalr	-872(ra) # 8000147c <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800037ec:	0014849b          	addiw	s1,s1,1
    800037f0:	fe9ff06f          	j	800037d8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800037f4:	00008517          	auipc	a0,0x8
    800037f8:	35c53503          	ld	a0,860(a0) # 8000bb50 <_ZL10waitForAll>
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	c48080e7          	jalr	-952(ra) # 80001444 <_Z9sem_closeP4_sem>
    delete buffer;
    80003804:	000a0e63          	beqz	s4,80003820 <_Z22producerConsumer_C_APIv+0x284>
    80003808:	000a0513          	mv	a0,s4
    8000380c:	00003097          	auipc	ra,0x3
    80003810:	154080e7          	jalr	340(ra) # 80006960 <_ZN6BufferD1Ev>
    80003814:	000a0513          	mv	a0,s4
    80003818:	fffff097          	auipc	ra,0xfffff
    8000381c:	b4c080e7          	jalr	-1204(ra) # 80002364 <_ZdlPv>
    80003820:	000b0113          	mv	sp,s6

}
    80003824:	f9040113          	addi	sp,s0,-112
    80003828:	06813083          	ld	ra,104(sp)
    8000382c:	06013403          	ld	s0,96(sp)
    80003830:	05813483          	ld	s1,88(sp)
    80003834:	05013903          	ld	s2,80(sp)
    80003838:	04813983          	ld	s3,72(sp)
    8000383c:	04013a03          	ld	s4,64(sp)
    80003840:	03813a83          	ld	s5,56(sp)
    80003844:	03013b03          	ld	s6,48(sp)
    80003848:	07010113          	addi	sp,sp,112
    8000384c:	00008067          	ret
    80003850:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003854:	000a0513          	mv	a0,s4
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	b0c080e7          	jalr	-1268(ra) # 80002364 <_ZdlPv>
    80003860:	00048513          	mv	a0,s1
    80003864:	00009097          	auipc	ra,0x9
    80003868:	404080e7          	jalr	1028(ra) # 8000cc68 <_Unwind_Resume>

000000008000386c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000386c:	fe010113          	addi	sp,sp,-32
    80003870:	00113c23          	sd	ra,24(sp)
    80003874:	00813823          	sd	s0,16(sp)
    80003878:	00913423          	sd	s1,8(sp)
    8000387c:	01213023          	sd	s2,0(sp)
    80003880:	02010413          	addi	s0,sp,32
    80003884:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003888:	00100793          	li	a5,1
    8000388c:	02a7f863          	bgeu	a5,a0,800038bc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003890:	00a00793          	li	a5,10
    80003894:	02f577b3          	remu	a5,a0,a5
    80003898:	02078e63          	beqz	a5,800038d4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000389c:	fff48513          	addi	a0,s1,-1
    800038a0:	00000097          	auipc	ra,0x0
    800038a4:	fcc080e7          	jalr	-52(ra) # 8000386c <_ZL9fibonaccim>
    800038a8:	00050913          	mv	s2,a0
    800038ac:	ffe48513          	addi	a0,s1,-2
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	fbc080e7          	jalr	-68(ra) # 8000386c <_ZL9fibonaccim>
    800038b8:	00a90533          	add	a0,s2,a0
}
    800038bc:	01813083          	ld	ra,24(sp)
    800038c0:	01013403          	ld	s0,16(sp)
    800038c4:	00813483          	ld	s1,8(sp)
    800038c8:	00013903          	ld	s2,0(sp)
    800038cc:	02010113          	addi	sp,sp,32
    800038d0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	b10080e7          	jalr	-1264(ra) # 800013e4 <_Z15thread_dispatchv>
    800038dc:	fc1ff06f          	j	8000389c <_ZL9fibonaccim+0x30>

00000000800038e0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800038e0:	fe010113          	addi	sp,sp,-32
    800038e4:	00113c23          	sd	ra,24(sp)
    800038e8:	00813823          	sd	s0,16(sp)
    800038ec:	00913423          	sd	s1,8(sp)
    800038f0:	01213023          	sd	s2,0(sp)
    800038f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800038f8:	00000913          	li	s2,0
    800038fc:	0380006f          	j	80003934 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	ae4080e7          	jalr	-1308(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003908:	00148493          	addi	s1,s1,1
    8000390c:	000027b7          	lui	a5,0x2
    80003910:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003914:	0097ee63          	bltu	a5,s1,80003930 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003918:	00000713          	li	a4,0
    8000391c:	000077b7          	lui	a5,0x7
    80003920:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003924:	fce7eee3          	bltu	a5,a4,80003900 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003928:	00170713          	addi	a4,a4,1
    8000392c:	ff1ff06f          	j	8000391c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003930:	00190913          	addi	s2,s2,1
    80003934:	00900793          	li	a5,9
    80003938:	0527e063          	bltu	a5,s2,80003978 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000393c:	00006517          	auipc	a0,0x6
    80003940:	8dc50513          	addi	a0,a0,-1828 # 80009218 <CONSOLE_STATUS+0x208>
    80003944:	00002097          	auipc	ra,0x2
    80003948:	eac080e7          	jalr	-340(ra) # 800057f0 <_Z11printStringPKc>
    8000394c:	00000613          	li	a2,0
    80003950:	00a00593          	li	a1,10
    80003954:	0009051b          	sext.w	a0,s2
    80003958:	00002097          	auipc	ra,0x2
    8000395c:	048080e7          	jalr	72(ra) # 800059a0 <_Z8printIntiii>
    80003960:	00006517          	auipc	a0,0x6
    80003964:	b0850513          	addi	a0,a0,-1272 # 80009468 <CONSOLE_STATUS+0x458>
    80003968:	00002097          	auipc	ra,0x2
    8000396c:	e88080e7          	jalr	-376(ra) # 800057f0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003970:	00000493          	li	s1,0
    80003974:	f99ff06f          	j	8000390c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003978:	00006517          	auipc	a0,0x6
    8000397c:	8a850513          	addi	a0,a0,-1880 # 80009220 <CONSOLE_STATUS+0x210>
    80003980:	00002097          	auipc	ra,0x2
    80003984:	e70080e7          	jalr	-400(ra) # 800057f0 <_Z11printStringPKc>
    finishedA = true;
    80003988:	00100793          	li	a5,1
    8000398c:	00008717          	auipc	a4,0x8
    80003990:	1cf70623          	sb	a5,460(a4) # 8000bb58 <_ZL9finishedA>
}
    80003994:	01813083          	ld	ra,24(sp)
    80003998:	01013403          	ld	s0,16(sp)
    8000399c:	00813483          	ld	s1,8(sp)
    800039a0:	00013903          	ld	s2,0(sp)
    800039a4:	02010113          	addi	sp,sp,32
    800039a8:	00008067          	ret

00000000800039ac <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800039ac:	fe010113          	addi	sp,sp,-32
    800039b0:	00113c23          	sd	ra,24(sp)
    800039b4:	00813823          	sd	s0,16(sp)
    800039b8:	00913423          	sd	s1,8(sp)
    800039bc:	01213023          	sd	s2,0(sp)
    800039c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800039c4:	00000913          	li	s2,0
    800039c8:	0380006f          	j	80003a00 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	a18080e7          	jalr	-1512(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800039d4:	00148493          	addi	s1,s1,1
    800039d8:	000027b7          	lui	a5,0x2
    800039dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800039e0:	0097ee63          	bltu	a5,s1,800039fc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800039e4:	00000713          	li	a4,0
    800039e8:	000077b7          	lui	a5,0x7
    800039ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800039f0:	fce7eee3          	bltu	a5,a4,800039cc <_ZN7WorkerB11workerBodyBEPv+0x20>
    800039f4:	00170713          	addi	a4,a4,1
    800039f8:	ff1ff06f          	j	800039e8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800039fc:	00190913          	addi	s2,s2,1
    80003a00:	00f00793          	li	a5,15
    80003a04:	0527e063          	bltu	a5,s2,80003a44 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003a08:	00006517          	auipc	a0,0x6
    80003a0c:	82850513          	addi	a0,a0,-2008 # 80009230 <CONSOLE_STATUS+0x220>
    80003a10:	00002097          	auipc	ra,0x2
    80003a14:	de0080e7          	jalr	-544(ra) # 800057f0 <_Z11printStringPKc>
    80003a18:	00000613          	li	a2,0
    80003a1c:	00a00593          	li	a1,10
    80003a20:	0009051b          	sext.w	a0,s2
    80003a24:	00002097          	auipc	ra,0x2
    80003a28:	f7c080e7          	jalr	-132(ra) # 800059a0 <_Z8printIntiii>
    80003a2c:	00006517          	auipc	a0,0x6
    80003a30:	a3c50513          	addi	a0,a0,-1476 # 80009468 <CONSOLE_STATUS+0x458>
    80003a34:	00002097          	auipc	ra,0x2
    80003a38:	dbc080e7          	jalr	-580(ra) # 800057f0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a3c:	00000493          	li	s1,0
    80003a40:	f99ff06f          	j	800039d8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003a44:	00005517          	auipc	a0,0x5
    80003a48:	7f450513          	addi	a0,a0,2036 # 80009238 <CONSOLE_STATUS+0x228>
    80003a4c:	00002097          	auipc	ra,0x2
    80003a50:	da4080e7          	jalr	-604(ra) # 800057f0 <_Z11printStringPKc>
    finishedB = true;
    80003a54:	00100793          	li	a5,1
    80003a58:	00008717          	auipc	a4,0x8
    80003a5c:	10f700a3          	sb	a5,257(a4) # 8000bb59 <_ZL9finishedB>
    thread_dispatch();
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	984080e7          	jalr	-1660(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80003a68:	01813083          	ld	ra,24(sp)
    80003a6c:	01013403          	ld	s0,16(sp)
    80003a70:	00813483          	ld	s1,8(sp)
    80003a74:	00013903          	ld	s2,0(sp)
    80003a78:	02010113          	addi	sp,sp,32
    80003a7c:	00008067          	ret

0000000080003a80 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003a80:	fe010113          	addi	sp,sp,-32
    80003a84:	00113c23          	sd	ra,24(sp)
    80003a88:	00813823          	sd	s0,16(sp)
    80003a8c:	00913423          	sd	s1,8(sp)
    80003a90:	01213023          	sd	s2,0(sp)
    80003a94:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003a98:	00000493          	li	s1,0
    80003a9c:	0400006f          	j	80003adc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003aa0:	00005517          	auipc	a0,0x5
    80003aa4:	7a850513          	addi	a0,a0,1960 # 80009248 <CONSOLE_STATUS+0x238>
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	d48080e7          	jalr	-696(ra) # 800057f0 <_Z11printStringPKc>
    80003ab0:	00000613          	li	a2,0
    80003ab4:	00a00593          	li	a1,10
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	00002097          	auipc	ra,0x2
    80003ac0:	ee4080e7          	jalr	-284(ra) # 800059a0 <_Z8printIntiii>
    80003ac4:	00006517          	auipc	a0,0x6
    80003ac8:	9a450513          	addi	a0,a0,-1628 # 80009468 <CONSOLE_STATUS+0x458>
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	d24080e7          	jalr	-732(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003ad4:	0014849b          	addiw	s1,s1,1
    80003ad8:	0ff4f493          	andi	s1,s1,255
    80003adc:	00200793          	li	a5,2
    80003ae0:	fc97f0e3          	bgeu	a5,s1,80003aa0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003ae4:	00005517          	auipc	a0,0x5
    80003ae8:	76c50513          	addi	a0,a0,1900 # 80009250 <CONSOLE_STATUS+0x240>
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	d04080e7          	jalr	-764(ra) # 800057f0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003af4:	00700313          	li	t1,7
    thread_dispatch();
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	8ec080e7          	jalr	-1812(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003b00:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003b04:	00005517          	auipc	a0,0x5
    80003b08:	75c50513          	addi	a0,a0,1884 # 80009260 <CONSOLE_STATUS+0x250>
    80003b0c:	00002097          	auipc	ra,0x2
    80003b10:	ce4080e7          	jalr	-796(ra) # 800057f0 <_Z11printStringPKc>
    80003b14:	00000613          	li	a2,0
    80003b18:	00a00593          	li	a1,10
    80003b1c:	0009051b          	sext.w	a0,s2
    80003b20:	00002097          	auipc	ra,0x2
    80003b24:	e80080e7          	jalr	-384(ra) # 800059a0 <_Z8printIntiii>
    80003b28:	00006517          	auipc	a0,0x6
    80003b2c:	94050513          	addi	a0,a0,-1728 # 80009468 <CONSOLE_STATUS+0x458>
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	cc0080e7          	jalr	-832(ra) # 800057f0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003b38:	00c00513          	li	a0,12
    80003b3c:	00000097          	auipc	ra,0x0
    80003b40:	d30080e7          	jalr	-720(ra) # 8000386c <_ZL9fibonaccim>
    80003b44:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003b48:	00005517          	auipc	a0,0x5
    80003b4c:	72050513          	addi	a0,a0,1824 # 80009268 <CONSOLE_STATUS+0x258>
    80003b50:	00002097          	auipc	ra,0x2
    80003b54:	ca0080e7          	jalr	-864(ra) # 800057f0 <_Z11printStringPKc>
    80003b58:	00000613          	li	a2,0
    80003b5c:	00a00593          	li	a1,10
    80003b60:	0009051b          	sext.w	a0,s2
    80003b64:	00002097          	auipc	ra,0x2
    80003b68:	e3c080e7          	jalr	-452(ra) # 800059a0 <_Z8printIntiii>
    80003b6c:	00006517          	auipc	a0,0x6
    80003b70:	8fc50513          	addi	a0,a0,-1796 # 80009468 <CONSOLE_STATUS+0x458>
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	c7c080e7          	jalr	-900(ra) # 800057f0 <_Z11printStringPKc>
    80003b7c:	0400006f          	j	80003bbc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003b80:	00005517          	auipc	a0,0x5
    80003b84:	6c850513          	addi	a0,a0,1736 # 80009248 <CONSOLE_STATUS+0x238>
    80003b88:	00002097          	auipc	ra,0x2
    80003b8c:	c68080e7          	jalr	-920(ra) # 800057f0 <_Z11printStringPKc>
    80003b90:	00000613          	li	a2,0
    80003b94:	00a00593          	li	a1,10
    80003b98:	00048513          	mv	a0,s1
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	e04080e7          	jalr	-508(ra) # 800059a0 <_Z8printIntiii>
    80003ba4:	00006517          	auipc	a0,0x6
    80003ba8:	8c450513          	addi	a0,a0,-1852 # 80009468 <CONSOLE_STATUS+0x458>
    80003bac:	00002097          	auipc	ra,0x2
    80003bb0:	c44080e7          	jalr	-956(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003bb4:	0014849b          	addiw	s1,s1,1
    80003bb8:	0ff4f493          	andi	s1,s1,255
    80003bbc:	00500793          	li	a5,5
    80003bc0:	fc97f0e3          	bgeu	a5,s1,80003b80 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003bc4:	00005517          	auipc	a0,0x5
    80003bc8:	65c50513          	addi	a0,a0,1628 # 80009220 <CONSOLE_STATUS+0x210>
    80003bcc:	00002097          	auipc	ra,0x2
    80003bd0:	c24080e7          	jalr	-988(ra) # 800057f0 <_Z11printStringPKc>
    finishedC = true;
    80003bd4:	00100793          	li	a5,1
    80003bd8:	00008717          	auipc	a4,0x8
    80003bdc:	f8f70123          	sb	a5,-126(a4) # 8000bb5a <_ZL9finishedC>
    thread_dispatch();
    80003be0:	ffffe097          	auipc	ra,0xffffe
    80003be4:	804080e7          	jalr	-2044(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80003be8:	01813083          	ld	ra,24(sp)
    80003bec:	01013403          	ld	s0,16(sp)
    80003bf0:	00813483          	ld	s1,8(sp)
    80003bf4:	00013903          	ld	s2,0(sp)
    80003bf8:	02010113          	addi	sp,sp,32
    80003bfc:	00008067          	ret

0000000080003c00 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003c00:	fe010113          	addi	sp,sp,-32
    80003c04:	00113c23          	sd	ra,24(sp)
    80003c08:	00813823          	sd	s0,16(sp)
    80003c0c:	00913423          	sd	s1,8(sp)
    80003c10:	01213023          	sd	s2,0(sp)
    80003c14:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003c18:	00a00493          	li	s1,10
    80003c1c:	0400006f          	j	80003c5c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c20:	00005517          	auipc	a0,0x5
    80003c24:	65850513          	addi	a0,a0,1624 # 80009278 <CONSOLE_STATUS+0x268>
    80003c28:	00002097          	auipc	ra,0x2
    80003c2c:	bc8080e7          	jalr	-1080(ra) # 800057f0 <_Z11printStringPKc>
    80003c30:	00000613          	li	a2,0
    80003c34:	00a00593          	li	a1,10
    80003c38:	00048513          	mv	a0,s1
    80003c3c:	00002097          	auipc	ra,0x2
    80003c40:	d64080e7          	jalr	-668(ra) # 800059a0 <_Z8printIntiii>
    80003c44:	00006517          	auipc	a0,0x6
    80003c48:	82450513          	addi	a0,a0,-2012 # 80009468 <CONSOLE_STATUS+0x458>
    80003c4c:	00002097          	auipc	ra,0x2
    80003c50:	ba4080e7          	jalr	-1116(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003c54:	0014849b          	addiw	s1,s1,1
    80003c58:	0ff4f493          	andi	s1,s1,255
    80003c5c:	00c00793          	li	a5,12
    80003c60:	fc97f0e3          	bgeu	a5,s1,80003c20 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003c64:	00005517          	auipc	a0,0x5
    80003c68:	61c50513          	addi	a0,a0,1564 # 80009280 <CONSOLE_STATUS+0x270>
    80003c6c:	00002097          	auipc	ra,0x2
    80003c70:	b84080e7          	jalr	-1148(ra) # 800057f0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c74:	00500313          	li	t1,5
    thread_dispatch();
    80003c78:	ffffd097          	auipc	ra,0xffffd
    80003c7c:	76c080e7          	jalr	1900(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c80:	01000513          	li	a0,16
    80003c84:	00000097          	auipc	ra,0x0
    80003c88:	be8080e7          	jalr	-1048(ra) # 8000386c <_ZL9fibonaccim>
    80003c8c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c90:	00005517          	auipc	a0,0x5
    80003c94:	60050513          	addi	a0,a0,1536 # 80009290 <CONSOLE_STATUS+0x280>
    80003c98:	00002097          	auipc	ra,0x2
    80003c9c:	b58080e7          	jalr	-1192(ra) # 800057f0 <_Z11printStringPKc>
    80003ca0:	00000613          	li	a2,0
    80003ca4:	00a00593          	li	a1,10
    80003ca8:	0009051b          	sext.w	a0,s2
    80003cac:	00002097          	auipc	ra,0x2
    80003cb0:	cf4080e7          	jalr	-780(ra) # 800059a0 <_Z8printIntiii>
    80003cb4:	00005517          	auipc	a0,0x5
    80003cb8:	7b450513          	addi	a0,a0,1972 # 80009468 <CONSOLE_STATUS+0x458>
    80003cbc:	00002097          	auipc	ra,0x2
    80003cc0:	b34080e7          	jalr	-1228(ra) # 800057f0 <_Z11printStringPKc>
    80003cc4:	0400006f          	j	80003d04 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003cc8:	00005517          	auipc	a0,0x5
    80003ccc:	5b050513          	addi	a0,a0,1456 # 80009278 <CONSOLE_STATUS+0x268>
    80003cd0:	00002097          	auipc	ra,0x2
    80003cd4:	b20080e7          	jalr	-1248(ra) # 800057f0 <_Z11printStringPKc>
    80003cd8:	00000613          	li	a2,0
    80003cdc:	00a00593          	li	a1,10
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	00002097          	auipc	ra,0x2
    80003ce8:	cbc080e7          	jalr	-836(ra) # 800059a0 <_Z8printIntiii>
    80003cec:	00005517          	auipc	a0,0x5
    80003cf0:	77c50513          	addi	a0,a0,1916 # 80009468 <CONSOLE_STATUS+0x458>
    80003cf4:	00002097          	auipc	ra,0x2
    80003cf8:	afc080e7          	jalr	-1284(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003cfc:	0014849b          	addiw	s1,s1,1
    80003d00:	0ff4f493          	andi	s1,s1,255
    80003d04:	00f00793          	li	a5,15
    80003d08:	fc97f0e3          	bgeu	a5,s1,80003cc8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	59450513          	addi	a0,a0,1428 # 800092a0 <CONSOLE_STATUS+0x290>
    80003d14:	00002097          	auipc	ra,0x2
    80003d18:	adc080e7          	jalr	-1316(ra) # 800057f0 <_Z11printStringPKc>
    finishedD = true;
    80003d1c:	00100793          	li	a5,1
    80003d20:	00008717          	auipc	a4,0x8
    80003d24:	e2f70da3          	sb	a5,-453(a4) # 8000bb5b <_ZL9finishedD>
    thread_dispatch();
    80003d28:	ffffd097          	auipc	ra,0xffffd
    80003d2c:	6bc080e7          	jalr	1724(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80003d30:	01813083          	ld	ra,24(sp)
    80003d34:	01013403          	ld	s0,16(sp)
    80003d38:	00813483          	ld	s1,8(sp)
    80003d3c:	00013903          	ld	s2,0(sp)
    80003d40:	02010113          	addi	sp,sp,32
    80003d44:	00008067          	ret

0000000080003d48 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003d48:	fc010113          	addi	sp,sp,-64
    80003d4c:	02113c23          	sd	ra,56(sp)
    80003d50:	02813823          	sd	s0,48(sp)
    80003d54:	02913423          	sd	s1,40(sp)
    80003d58:	03213023          	sd	s2,32(sp)
    80003d5c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003d60:	02000513          	li	a0,32
    80003d64:	ffffe097          	auipc	ra,0xffffe
    80003d68:	5b0080e7          	jalr	1456(ra) # 80002314 <_Znwm>
    80003d6c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	6dc080e7          	jalr	1756(ra) # 8000244c <_ZN6ThreadC1Ev>
    80003d78:	00008797          	auipc	a5,0x8
    80003d7c:	a6878793          	addi	a5,a5,-1432 # 8000b7e0 <_ZTV7WorkerA+0x10>
    80003d80:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003d84:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003d88:	00005517          	auipc	a0,0x5
    80003d8c:	52850513          	addi	a0,a0,1320 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003d90:	00002097          	auipc	ra,0x2
    80003d94:	a60080e7          	jalr	-1440(ra) # 800057f0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003d98:	02000513          	li	a0,32
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	578080e7          	jalr	1400(ra) # 80002314 <_Znwm>
    80003da4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003da8:	ffffe097          	auipc	ra,0xffffe
    80003dac:	6a4080e7          	jalr	1700(ra) # 8000244c <_ZN6ThreadC1Ev>
    80003db0:	00008797          	auipc	a5,0x8
    80003db4:	a5878793          	addi	a5,a5,-1448 # 8000b808 <_ZTV7WorkerB+0x10>
    80003db8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003dbc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003dc0:	00005517          	auipc	a0,0x5
    80003dc4:	50850513          	addi	a0,a0,1288 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003dc8:	00002097          	auipc	ra,0x2
    80003dcc:	a28080e7          	jalr	-1496(ra) # 800057f0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003dd0:	02000513          	li	a0,32
    80003dd4:	ffffe097          	auipc	ra,0xffffe
    80003dd8:	540080e7          	jalr	1344(ra) # 80002314 <_Znwm>
    80003ddc:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003de0:	ffffe097          	auipc	ra,0xffffe
    80003de4:	66c080e7          	jalr	1644(ra) # 8000244c <_ZN6ThreadC1Ev>
    80003de8:	00008797          	auipc	a5,0x8
    80003dec:	a4878793          	addi	a5,a5,-1464 # 8000b830 <_ZTV7WorkerC+0x10>
    80003df0:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003df4:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003df8:	00005517          	auipc	a0,0x5
    80003dfc:	4e850513          	addi	a0,a0,1256 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003e00:	00002097          	auipc	ra,0x2
    80003e04:	9f0080e7          	jalr	-1552(ra) # 800057f0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003e08:	02000513          	li	a0,32
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	508080e7          	jalr	1288(ra) # 80002314 <_Znwm>
    80003e14:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003e18:	ffffe097          	auipc	ra,0xffffe
    80003e1c:	634080e7          	jalr	1588(ra) # 8000244c <_ZN6ThreadC1Ev>
    80003e20:	00008797          	auipc	a5,0x8
    80003e24:	a3878793          	addi	a5,a5,-1480 # 8000b858 <_ZTV7WorkerD+0x10>
    80003e28:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003e2c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003e30:	00005517          	auipc	a0,0x5
    80003e34:	4c850513          	addi	a0,a0,1224 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003e38:	00002097          	auipc	ra,0x2
    80003e3c:	9b8080e7          	jalr	-1608(ra) # 800057f0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003e40:	00000493          	li	s1,0
    80003e44:	00300793          	li	a5,3
    80003e48:	0297c663          	blt	a5,s1,80003e74 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003e4c:	00349793          	slli	a5,s1,0x3
    80003e50:	fe040713          	addi	a4,s0,-32
    80003e54:	00f707b3          	add	a5,a4,a5
    80003e58:	fe07b503          	ld	a0,-32(a5)
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	650080e7          	jalr	1616(ra) # 800024ac <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003e64:	0014849b          	addiw	s1,s1,1
    80003e68:	fddff06f          	j	80003e44 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003e6c:	ffffe097          	auipc	ra,0xffffe
    80003e70:	618080e7          	jalr	1560(ra) # 80002484 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003e74:	00008797          	auipc	a5,0x8
    80003e78:	ce47c783          	lbu	a5,-796(a5) # 8000bb58 <_ZL9finishedA>
    80003e7c:	fe0788e3          	beqz	a5,80003e6c <_Z20Threads_CPP_API_testv+0x124>
    80003e80:	00008797          	auipc	a5,0x8
    80003e84:	cd97c783          	lbu	a5,-807(a5) # 8000bb59 <_ZL9finishedB>
    80003e88:	fe0782e3          	beqz	a5,80003e6c <_Z20Threads_CPP_API_testv+0x124>
    80003e8c:	00008797          	auipc	a5,0x8
    80003e90:	cce7c783          	lbu	a5,-818(a5) # 8000bb5a <_ZL9finishedC>
    80003e94:	fc078ce3          	beqz	a5,80003e6c <_Z20Threads_CPP_API_testv+0x124>
    80003e98:	00008797          	auipc	a5,0x8
    80003e9c:	cc37c783          	lbu	a5,-829(a5) # 8000bb5b <_ZL9finishedD>
    80003ea0:	fc0786e3          	beqz	a5,80003e6c <_Z20Threads_CPP_API_testv+0x124>
    80003ea4:	fc040493          	addi	s1,s0,-64
    80003ea8:	0080006f          	j	80003eb0 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003eac:	00848493          	addi	s1,s1,8
    80003eb0:	fe040793          	addi	a5,s0,-32
    80003eb4:	08f48663          	beq	s1,a5,80003f40 <_Z20Threads_CPP_API_testv+0x1f8>
    80003eb8:	0004b503          	ld	a0,0(s1)
    80003ebc:	fe0508e3          	beqz	a0,80003eac <_Z20Threads_CPP_API_testv+0x164>
    80003ec0:	00053783          	ld	a5,0(a0)
    80003ec4:	0087b783          	ld	a5,8(a5)
    80003ec8:	000780e7          	jalr	a5
    80003ecc:	fe1ff06f          	j	80003eac <_Z20Threads_CPP_API_testv+0x164>
    80003ed0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003ed4:	00048513          	mv	a0,s1
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	48c080e7          	jalr	1164(ra) # 80002364 <_ZdlPv>
    80003ee0:	00090513          	mv	a0,s2
    80003ee4:	00009097          	auipc	ra,0x9
    80003ee8:	d84080e7          	jalr	-636(ra) # 8000cc68 <_Unwind_Resume>
    80003eec:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003ef0:	00048513          	mv	a0,s1
    80003ef4:	ffffe097          	auipc	ra,0xffffe
    80003ef8:	470080e7          	jalr	1136(ra) # 80002364 <_ZdlPv>
    80003efc:	00090513          	mv	a0,s2
    80003f00:	00009097          	auipc	ra,0x9
    80003f04:	d68080e7          	jalr	-664(ra) # 8000cc68 <_Unwind_Resume>
    80003f08:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003f0c:	00048513          	mv	a0,s1
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	454080e7          	jalr	1108(ra) # 80002364 <_ZdlPv>
    80003f18:	00090513          	mv	a0,s2
    80003f1c:	00009097          	auipc	ra,0x9
    80003f20:	d4c080e7          	jalr	-692(ra) # 8000cc68 <_Unwind_Resume>
    80003f24:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003f28:	00048513          	mv	a0,s1
    80003f2c:	ffffe097          	auipc	ra,0xffffe
    80003f30:	438080e7          	jalr	1080(ra) # 80002364 <_ZdlPv>
    80003f34:	00090513          	mv	a0,s2
    80003f38:	00009097          	auipc	ra,0x9
    80003f3c:	d30080e7          	jalr	-720(ra) # 8000cc68 <_Unwind_Resume>
}
    80003f40:	03813083          	ld	ra,56(sp)
    80003f44:	03013403          	ld	s0,48(sp)
    80003f48:	02813483          	ld	s1,40(sp)
    80003f4c:	02013903          	ld	s2,32(sp)
    80003f50:	04010113          	addi	sp,sp,64
    80003f54:	00008067          	ret

0000000080003f58 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003f58:	ff010113          	addi	sp,sp,-16
    80003f5c:	00113423          	sd	ra,8(sp)
    80003f60:	00813023          	sd	s0,0(sp)
    80003f64:	01010413          	addi	s0,sp,16
    80003f68:	00008797          	auipc	a5,0x8
    80003f6c:	87878793          	addi	a5,a5,-1928 # 8000b7e0 <_ZTV7WorkerA+0x10>
    80003f70:	00f53023          	sd	a5,0(a0)
    80003f74:	ffffe097          	auipc	ra,0xffffe
    80003f78:	350080e7          	jalr	848(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80003f7c:	00813083          	ld	ra,8(sp)
    80003f80:	00013403          	ld	s0,0(sp)
    80003f84:	01010113          	addi	sp,sp,16
    80003f88:	00008067          	ret

0000000080003f8c <_ZN7WorkerAD0Ev>:
    80003f8c:	fe010113          	addi	sp,sp,-32
    80003f90:	00113c23          	sd	ra,24(sp)
    80003f94:	00813823          	sd	s0,16(sp)
    80003f98:	00913423          	sd	s1,8(sp)
    80003f9c:	02010413          	addi	s0,sp,32
    80003fa0:	00050493          	mv	s1,a0
    80003fa4:	00008797          	auipc	a5,0x8
    80003fa8:	83c78793          	addi	a5,a5,-1988 # 8000b7e0 <_ZTV7WorkerA+0x10>
    80003fac:	00f53023          	sd	a5,0(a0)
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	314080e7          	jalr	788(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80003fb8:	00048513          	mv	a0,s1
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	3a8080e7          	jalr	936(ra) # 80002364 <_ZdlPv>
    80003fc4:	01813083          	ld	ra,24(sp)
    80003fc8:	01013403          	ld	s0,16(sp)
    80003fcc:	00813483          	ld	s1,8(sp)
    80003fd0:	02010113          	addi	sp,sp,32
    80003fd4:	00008067          	ret

0000000080003fd8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003fd8:	ff010113          	addi	sp,sp,-16
    80003fdc:	00113423          	sd	ra,8(sp)
    80003fe0:	00813023          	sd	s0,0(sp)
    80003fe4:	01010413          	addi	s0,sp,16
    80003fe8:	00008797          	auipc	a5,0x8
    80003fec:	82078793          	addi	a5,a5,-2016 # 8000b808 <_ZTV7WorkerB+0x10>
    80003ff0:	00f53023          	sd	a5,0(a0)
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	2d0080e7          	jalr	720(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80003ffc:	00813083          	ld	ra,8(sp)
    80004000:	00013403          	ld	s0,0(sp)
    80004004:	01010113          	addi	sp,sp,16
    80004008:	00008067          	ret

000000008000400c <_ZN7WorkerBD0Ev>:
    8000400c:	fe010113          	addi	sp,sp,-32
    80004010:	00113c23          	sd	ra,24(sp)
    80004014:	00813823          	sd	s0,16(sp)
    80004018:	00913423          	sd	s1,8(sp)
    8000401c:	02010413          	addi	s0,sp,32
    80004020:	00050493          	mv	s1,a0
    80004024:	00007797          	auipc	a5,0x7
    80004028:	7e478793          	addi	a5,a5,2020 # 8000b808 <_ZTV7WorkerB+0x10>
    8000402c:	00f53023          	sd	a5,0(a0)
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	294080e7          	jalr	660(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80004038:	00048513          	mv	a0,s1
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	328080e7          	jalr	808(ra) # 80002364 <_ZdlPv>
    80004044:	01813083          	ld	ra,24(sp)
    80004048:	01013403          	ld	s0,16(sp)
    8000404c:	00813483          	ld	s1,8(sp)
    80004050:	02010113          	addi	sp,sp,32
    80004054:	00008067          	ret

0000000080004058 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004058:	ff010113          	addi	sp,sp,-16
    8000405c:	00113423          	sd	ra,8(sp)
    80004060:	00813023          	sd	s0,0(sp)
    80004064:	01010413          	addi	s0,sp,16
    80004068:	00007797          	auipc	a5,0x7
    8000406c:	7c878793          	addi	a5,a5,1992 # 8000b830 <_ZTV7WorkerC+0x10>
    80004070:	00f53023          	sd	a5,0(a0)
    80004074:	ffffe097          	auipc	ra,0xffffe
    80004078:	250080e7          	jalr	592(ra) # 800022c4 <_ZN6ThreadD1Ev>
    8000407c:	00813083          	ld	ra,8(sp)
    80004080:	00013403          	ld	s0,0(sp)
    80004084:	01010113          	addi	sp,sp,16
    80004088:	00008067          	ret

000000008000408c <_ZN7WorkerCD0Ev>:
    8000408c:	fe010113          	addi	sp,sp,-32
    80004090:	00113c23          	sd	ra,24(sp)
    80004094:	00813823          	sd	s0,16(sp)
    80004098:	00913423          	sd	s1,8(sp)
    8000409c:	02010413          	addi	s0,sp,32
    800040a0:	00050493          	mv	s1,a0
    800040a4:	00007797          	auipc	a5,0x7
    800040a8:	78c78793          	addi	a5,a5,1932 # 8000b830 <_ZTV7WorkerC+0x10>
    800040ac:	00f53023          	sd	a5,0(a0)
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	214080e7          	jalr	532(ra) # 800022c4 <_ZN6ThreadD1Ev>
    800040b8:	00048513          	mv	a0,s1
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	2a8080e7          	jalr	680(ra) # 80002364 <_ZdlPv>
    800040c4:	01813083          	ld	ra,24(sp)
    800040c8:	01013403          	ld	s0,16(sp)
    800040cc:	00813483          	ld	s1,8(sp)
    800040d0:	02010113          	addi	sp,sp,32
    800040d4:	00008067          	ret

00000000800040d8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800040d8:	ff010113          	addi	sp,sp,-16
    800040dc:	00113423          	sd	ra,8(sp)
    800040e0:	00813023          	sd	s0,0(sp)
    800040e4:	01010413          	addi	s0,sp,16
    800040e8:	00007797          	auipc	a5,0x7
    800040ec:	77078793          	addi	a5,a5,1904 # 8000b858 <_ZTV7WorkerD+0x10>
    800040f0:	00f53023          	sd	a5,0(a0)
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	1d0080e7          	jalr	464(ra) # 800022c4 <_ZN6ThreadD1Ev>
    800040fc:	00813083          	ld	ra,8(sp)
    80004100:	00013403          	ld	s0,0(sp)
    80004104:	01010113          	addi	sp,sp,16
    80004108:	00008067          	ret

000000008000410c <_ZN7WorkerDD0Ev>:
    8000410c:	fe010113          	addi	sp,sp,-32
    80004110:	00113c23          	sd	ra,24(sp)
    80004114:	00813823          	sd	s0,16(sp)
    80004118:	00913423          	sd	s1,8(sp)
    8000411c:	02010413          	addi	s0,sp,32
    80004120:	00050493          	mv	s1,a0
    80004124:	00007797          	auipc	a5,0x7
    80004128:	73478793          	addi	a5,a5,1844 # 8000b858 <_ZTV7WorkerD+0x10>
    8000412c:	00f53023          	sd	a5,0(a0)
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	194080e7          	jalr	404(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80004138:	00048513          	mv	a0,s1
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	228080e7          	jalr	552(ra) # 80002364 <_ZdlPv>
    80004144:	01813083          	ld	ra,24(sp)
    80004148:	01013403          	ld	s0,16(sp)
    8000414c:	00813483          	ld	s1,8(sp)
    80004150:	02010113          	addi	sp,sp,32
    80004154:	00008067          	ret

0000000080004158 <_ZN7WorkerA3runEv>:
    void run() override {
    80004158:	ff010113          	addi	sp,sp,-16
    8000415c:	00113423          	sd	ra,8(sp)
    80004160:	00813023          	sd	s0,0(sp)
    80004164:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004168:	00000593          	li	a1,0
    8000416c:	fffff097          	auipc	ra,0xfffff
    80004170:	774080e7          	jalr	1908(ra) # 800038e0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004174:	00813083          	ld	ra,8(sp)
    80004178:	00013403          	ld	s0,0(sp)
    8000417c:	01010113          	addi	sp,sp,16
    80004180:	00008067          	ret

0000000080004184 <_ZN7WorkerB3runEv>:
    void run() override {
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	00813023          	sd	s0,0(sp)
    80004190:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004194:	00000593          	li	a1,0
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	814080e7          	jalr	-2028(ra) # 800039ac <_ZN7WorkerB11workerBodyBEPv>
    }
    800041a0:	00813083          	ld	ra,8(sp)
    800041a4:	00013403          	ld	s0,0(sp)
    800041a8:	01010113          	addi	sp,sp,16
    800041ac:	00008067          	ret

00000000800041b0 <_ZN7WorkerC3runEv>:
    void run() override {
    800041b0:	ff010113          	addi	sp,sp,-16
    800041b4:	00113423          	sd	ra,8(sp)
    800041b8:	00813023          	sd	s0,0(sp)
    800041bc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800041c0:	00000593          	li	a1,0
    800041c4:	00000097          	auipc	ra,0x0
    800041c8:	8bc080e7          	jalr	-1860(ra) # 80003a80 <_ZN7WorkerC11workerBodyCEPv>
    }
    800041cc:	00813083          	ld	ra,8(sp)
    800041d0:	00013403          	ld	s0,0(sp)
    800041d4:	01010113          	addi	sp,sp,16
    800041d8:	00008067          	ret

00000000800041dc <_ZN7WorkerD3runEv>:
    void run() override {
    800041dc:	ff010113          	addi	sp,sp,-16
    800041e0:	00113423          	sd	ra,8(sp)
    800041e4:	00813023          	sd	s0,0(sp)
    800041e8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800041ec:	00000593          	li	a1,0
    800041f0:	00000097          	auipc	ra,0x0
    800041f4:	a10080e7          	jalr	-1520(ra) # 80003c00 <_ZN7WorkerD11workerBodyDEPv>
    }
    800041f8:	00813083          	ld	ra,8(sp)
    800041fc:	00013403          	ld	s0,0(sp)
    80004200:	01010113          	addi	sp,sp,16
    80004204:	00008067          	ret

0000000080004208 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004208:	f8010113          	addi	sp,sp,-128
    8000420c:	06113c23          	sd	ra,120(sp)
    80004210:	06813823          	sd	s0,112(sp)
    80004214:	06913423          	sd	s1,104(sp)
    80004218:	07213023          	sd	s2,96(sp)
    8000421c:	05313c23          	sd	s3,88(sp)
    80004220:	05413823          	sd	s4,80(sp)
    80004224:	05513423          	sd	s5,72(sp)
    80004228:	05613023          	sd	s6,64(sp)
    8000422c:	03713c23          	sd	s7,56(sp)
    80004230:	03813823          	sd	s8,48(sp)
    80004234:	03913423          	sd	s9,40(sp)
    80004238:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000423c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004240:	00005517          	auipc	a0,0x5
    80004244:	ef050513          	addi	a0,a0,-272 # 80009130 <CONSOLE_STATUS+0x120>
    80004248:	00001097          	auipc	ra,0x1
    8000424c:	5a8080e7          	jalr	1448(ra) # 800057f0 <_Z11printStringPKc>
    getString(input, 30);
    80004250:	01e00593          	li	a1,30
    80004254:	f8040493          	addi	s1,s0,-128
    80004258:	00048513          	mv	a0,s1
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	61c080e7          	jalr	1564(ra) # 80005878 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004264:	00048513          	mv	a0,s1
    80004268:	00001097          	auipc	ra,0x1
    8000426c:	6e8080e7          	jalr	1768(ra) # 80005950 <_Z11stringToIntPKc>
    80004270:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004274:	00005517          	auipc	a0,0x5
    80004278:	edc50513          	addi	a0,a0,-292 # 80009150 <CONSOLE_STATUS+0x140>
    8000427c:	00001097          	auipc	ra,0x1
    80004280:	574080e7          	jalr	1396(ra) # 800057f0 <_Z11printStringPKc>
    getString(input, 30);
    80004284:	01e00593          	li	a1,30
    80004288:	00048513          	mv	a0,s1
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	5ec080e7          	jalr	1516(ra) # 80005878 <_Z9getStringPci>
    n = stringToInt(input);
    80004294:	00048513          	mv	a0,s1
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	6b8080e7          	jalr	1720(ra) # 80005950 <_Z11stringToIntPKc>
    800042a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800042a4:	00005517          	auipc	a0,0x5
    800042a8:	ecc50513          	addi	a0,a0,-308 # 80009170 <CONSOLE_STATUS+0x160>
    800042ac:	00001097          	auipc	ra,0x1
    800042b0:	544080e7          	jalr	1348(ra) # 800057f0 <_Z11printStringPKc>
    printInt(threadNum);
    800042b4:	00000613          	li	a2,0
    800042b8:	00a00593          	li	a1,10
    800042bc:	00098513          	mv	a0,s3
    800042c0:	00001097          	auipc	ra,0x1
    800042c4:	6e0080e7          	jalr	1760(ra) # 800059a0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800042c8:	00005517          	auipc	a0,0x5
    800042cc:	ec050513          	addi	a0,a0,-320 # 80009188 <CONSOLE_STATUS+0x178>
    800042d0:	00001097          	auipc	ra,0x1
    800042d4:	520080e7          	jalr	1312(ra) # 800057f0 <_Z11printStringPKc>
    printInt(n);
    800042d8:	00000613          	li	a2,0
    800042dc:	00a00593          	li	a1,10
    800042e0:	00048513          	mv	a0,s1
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	6bc080e7          	jalr	1724(ra) # 800059a0 <_Z8printIntiii>
    printString(".\n");
    800042ec:	00005517          	auipc	a0,0x5
    800042f0:	eb450513          	addi	a0,a0,-332 # 800091a0 <CONSOLE_STATUS+0x190>
    800042f4:	00001097          	auipc	ra,0x1
    800042f8:	4fc080e7          	jalr	1276(ra) # 800057f0 <_Z11printStringPKc>
    if (threadNum > n) {
    800042fc:	0334c463          	blt	s1,s3,80004324 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004300:	03305c63          	blez	s3,80004338 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004304:	03800513          	li	a0,56
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	00c080e7          	jalr	12(ra) # 80002314 <_Znwm>
    80004310:	00050a93          	mv	s5,a0
    80004314:	00048593          	mv	a1,s1
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	7a8080e7          	jalr	1960(ra) # 80005ac0 <_ZN9BufferCPPC1Ei>
    80004320:	0300006f          	j	80004350 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004324:	00005517          	auipc	a0,0x5
    80004328:	e8450513          	addi	a0,a0,-380 # 800091a8 <CONSOLE_STATUS+0x198>
    8000432c:	00001097          	auipc	ra,0x1
    80004330:	4c4080e7          	jalr	1220(ra) # 800057f0 <_Z11printStringPKc>
        return;
    80004334:	0140006f          	j	80004348 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004338:	00005517          	auipc	a0,0x5
    8000433c:	eb050513          	addi	a0,a0,-336 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004340:	00001097          	auipc	ra,0x1
    80004344:	4b0080e7          	jalr	1200(ra) # 800057f0 <_Z11printStringPKc>
        return;
    80004348:	000c0113          	mv	sp,s8
    8000434c:	2140006f          	j	80004560 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004350:	01000513          	li	a0,16
    80004354:	ffffe097          	auipc	ra,0xffffe
    80004358:	fc0080e7          	jalr	-64(ra) # 80002314 <_Znwm>
    8000435c:	00050913          	mv	s2,a0
    80004360:	00000593          	li	a1,0
    80004364:	ffffe097          	auipc	ra,0xffffe
    80004368:	1f8080e7          	jalr	504(ra) # 8000255c <_ZN9SemaphoreC1Ej>
    8000436c:	00007797          	auipc	a5,0x7
    80004370:	7f27be23          	sd	s2,2044(a5) # 8000bb68 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004374:	00399793          	slli	a5,s3,0x3
    80004378:	00f78793          	addi	a5,a5,15
    8000437c:	ff07f793          	andi	a5,a5,-16
    80004380:	40f10133          	sub	sp,sp,a5
    80004384:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004388:	0019871b          	addiw	a4,s3,1
    8000438c:	00171793          	slli	a5,a4,0x1
    80004390:	00e787b3          	add	a5,a5,a4
    80004394:	00379793          	slli	a5,a5,0x3
    80004398:	00f78793          	addi	a5,a5,15
    8000439c:	ff07f793          	andi	a5,a5,-16
    800043a0:	40f10133          	sub	sp,sp,a5
    800043a4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800043a8:	00199493          	slli	s1,s3,0x1
    800043ac:	013484b3          	add	s1,s1,s3
    800043b0:	00349493          	slli	s1,s1,0x3
    800043b4:	009b04b3          	add	s1,s6,s1
    800043b8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800043bc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800043c0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800043c4:	02800513          	li	a0,40
    800043c8:	ffffe097          	auipc	ra,0xffffe
    800043cc:	f4c080e7          	jalr	-180(ra) # 80002314 <_Znwm>
    800043d0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800043d4:	ffffe097          	auipc	ra,0xffffe
    800043d8:	078080e7          	jalr	120(ra) # 8000244c <_ZN6ThreadC1Ev>
    800043dc:	00007797          	auipc	a5,0x7
    800043e0:	4f478793          	addi	a5,a5,1268 # 8000b8d0 <_ZTV8Consumer+0x10>
    800043e4:	00fbb023          	sd	a5,0(s7)
    800043e8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800043ec:	000b8513          	mv	a0,s7
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	0bc080e7          	jalr	188(ra) # 800024ac <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800043f8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800043fc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004400:	00007797          	auipc	a5,0x7
    80004404:	7687b783          	ld	a5,1896(a5) # 8000bb68 <_ZL10waitForAll>
    80004408:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000440c:	02800513          	li	a0,40
    80004410:	ffffe097          	auipc	ra,0xffffe
    80004414:	f04080e7          	jalr	-252(ra) # 80002314 <_Znwm>
    80004418:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000441c:	ffffe097          	auipc	ra,0xffffe
    80004420:	030080e7          	jalr	48(ra) # 8000244c <_ZN6ThreadC1Ev>
    80004424:	00007797          	auipc	a5,0x7
    80004428:	45c78793          	addi	a5,a5,1116 # 8000b880 <_ZTV16ProducerKeyborad+0x10>
    8000442c:	00f4b023          	sd	a5,0(s1)
    80004430:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004434:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004438:	00048513          	mv	a0,s1
    8000443c:	ffffe097          	auipc	ra,0xffffe
    80004440:	070080e7          	jalr	112(ra) # 800024ac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004444:	00100913          	li	s2,1
    80004448:	0300006f          	j	80004478 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000444c:	00007797          	auipc	a5,0x7
    80004450:	45c78793          	addi	a5,a5,1116 # 8000b8a8 <_ZTV8Producer+0x10>
    80004454:	00fcb023          	sd	a5,0(s9)
    80004458:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000445c:	00391793          	slli	a5,s2,0x3
    80004460:	00fa07b3          	add	a5,s4,a5
    80004464:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004468:	000c8513          	mv	a0,s9
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	040080e7          	jalr	64(ra) # 800024ac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004474:	0019091b          	addiw	s2,s2,1
    80004478:	05395263          	bge	s2,s3,800044bc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000447c:	00191493          	slli	s1,s2,0x1
    80004480:	012484b3          	add	s1,s1,s2
    80004484:	00349493          	slli	s1,s1,0x3
    80004488:	009b04b3          	add	s1,s6,s1
    8000448c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004490:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004494:	00007797          	auipc	a5,0x7
    80004498:	6d47b783          	ld	a5,1748(a5) # 8000bb68 <_ZL10waitForAll>
    8000449c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800044a0:	02800513          	li	a0,40
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	e70080e7          	jalr	-400(ra) # 80002314 <_Znwm>
    800044ac:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	f9c080e7          	jalr	-100(ra) # 8000244c <_ZN6ThreadC1Ev>
    800044b8:	f95ff06f          	j	8000444c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800044bc:	ffffe097          	auipc	ra,0xffffe
    800044c0:	fc8080e7          	jalr	-56(ra) # 80002484 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800044c4:	00000493          	li	s1,0
    800044c8:	0099ce63          	blt	s3,s1,800044e4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800044cc:	00007517          	auipc	a0,0x7
    800044d0:	69c53503          	ld	a0,1692(a0) # 8000bb68 <_ZL10waitForAll>
    800044d4:	ffffe097          	auipc	ra,0xffffe
    800044d8:	0c4080e7          	jalr	196(ra) # 80002598 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800044dc:	0014849b          	addiw	s1,s1,1
    800044e0:	fe9ff06f          	j	800044c8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800044e4:	00007517          	auipc	a0,0x7
    800044e8:	68453503          	ld	a0,1668(a0) # 8000bb68 <_ZL10waitForAll>
    800044ec:	00050863          	beqz	a0,800044fc <_Z20testConsumerProducerv+0x2f4>
    800044f0:	00053783          	ld	a5,0(a0)
    800044f4:	0087b783          	ld	a5,8(a5)
    800044f8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800044fc:	00000493          	li	s1,0
    80004500:	0080006f          	j	80004508 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004504:	0014849b          	addiw	s1,s1,1
    80004508:	0334d263          	bge	s1,s3,8000452c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000450c:	00349793          	slli	a5,s1,0x3
    80004510:	00fa07b3          	add	a5,s4,a5
    80004514:	0007b503          	ld	a0,0(a5)
    80004518:	fe0506e3          	beqz	a0,80004504 <_Z20testConsumerProducerv+0x2fc>
    8000451c:	00053783          	ld	a5,0(a0)
    80004520:	0087b783          	ld	a5,8(a5)
    80004524:	000780e7          	jalr	a5
    80004528:	fddff06f          	j	80004504 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000452c:	000b8a63          	beqz	s7,80004540 <_Z20testConsumerProducerv+0x338>
    80004530:	000bb783          	ld	a5,0(s7)
    80004534:	0087b783          	ld	a5,8(a5)
    80004538:	000b8513          	mv	a0,s7
    8000453c:	000780e7          	jalr	a5
    delete buffer;
    80004540:	000a8e63          	beqz	s5,8000455c <_Z20testConsumerProducerv+0x354>
    80004544:	000a8513          	mv	a0,s5
    80004548:	00002097          	auipc	ra,0x2
    8000454c:	870080e7          	jalr	-1936(ra) # 80005db8 <_ZN9BufferCPPD1Ev>
    80004550:	000a8513          	mv	a0,s5
    80004554:	ffffe097          	auipc	ra,0xffffe
    80004558:	e10080e7          	jalr	-496(ra) # 80002364 <_ZdlPv>
    8000455c:	000c0113          	mv	sp,s8
}
    80004560:	f8040113          	addi	sp,s0,-128
    80004564:	07813083          	ld	ra,120(sp)
    80004568:	07013403          	ld	s0,112(sp)
    8000456c:	06813483          	ld	s1,104(sp)
    80004570:	06013903          	ld	s2,96(sp)
    80004574:	05813983          	ld	s3,88(sp)
    80004578:	05013a03          	ld	s4,80(sp)
    8000457c:	04813a83          	ld	s5,72(sp)
    80004580:	04013b03          	ld	s6,64(sp)
    80004584:	03813b83          	ld	s7,56(sp)
    80004588:	03013c03          	ld	s8,48(sp)
    8000458c:	02813c83          	ld	s9,40(sp)
    80004590:	08010113          	addi	sp,sp,128
    80004594:	00008067          	ret
    80004598:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000459c:	000a8513          	mv	a0,s5
    800045a0:	ffffe097          	auipc	ra,0xffffe
    800045a4:	dc4080e7          	jalr	-572(ra) # 80002364 <_ZdlPv>
    800045a8:	00048513          	mv	a0,s1
    800045ac:	00008097          	auipc	ra,0x8
    800045b0:	6bc080e7          	jalr	1724(ra) # 8000cc68 <_Unwind_Resume>
    800045b4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800045b8:	00090513          	mv	a0,s2
    800045bc:	ffffe097          	auipc	ra,0xffffe
    800045c0:	da8080e7          	jalr	-600(ra) # 80002364 <_ZdlPv>
    800045c4:	00048513          	mv	a0,s1
    800045c8:	00008097          	auipc	ra,0x8
    800045cc:	6a0080e7          	jalr	1696(ra) # 8000cc68 <_Unwind_Resume>
    800045d0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800045d4:	000b8513          	mv	a0,s7
    800045d8:	ffffe097          	auipc	ra,0xffffe
    800045dc:	d8c080e7          	jalr	-628(ra) # 80002364 <_ZdlPv>
    800045e0:	00048513          	mv	a0,s1
    800045e4:	00008097          	auipc	ra,0x8
    800045e8:	684080e7          	jalr	1668(ra) # 8000cc68 <_Unwind_Resume>
    800045ec:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045f0:	00048513          	mv	a0,s1
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	d70080e7          	jalr	-656(ra) # 80002364 <_ZdlPv>
    800045fc:	00090513          	mv	a0,s2
    80004600:	00008097          	auipc	ra,0x8
    80004604:	668080e7          	jalr	1640(ra) # 8000cc68 <_Unwind_Resume>
    80004608:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000460c:	000c8513          	mv	a0,s9
    80004610:	ffffe097          	auipc	ra,0xffffe
    80004614:	d54080e7          	jalr	-684(ra) # 80002364 <_ZdlPv>
    80004618:	00048513          	mv	a0,s1
    8000461c:	00008097          	auipc	ra,0x8
    80004620:	64c080e7          	jalr	1612(ra) # 8000cc68 <_Unwind_Resume>

0000000080004624 <_ZN8Consumer3runEv>:
    void run() override {
    80004624:	fd010113          	addi	sp,sp,-48
    80004628:	02113423          	sd	ra,40(sp)
    8000462c:	02813023          	sd	s0,32(sp)
    80004630:	00913c23          	sd	s1,24(sp)
    80004634:	01213823          	sd	s2,16(sp)
    80004638:	01313423          	sd	s3,8(sp)
    8000463c:	03010413          	addi	s0,sp,48
    80004640:	00050913          	mv	s2,a0
        int i = 0;
    80004644:	00000993          	li	s3,0
    80004648:	0100006f          	j	80004658 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000464c:	00a00513          	li	a0,10
    80004650:	ffffe097          	auipc	ra,0xffffe
    80004654:	034080e7          	jalr	52(ra) # 80002684 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004658:	00007797          	auipc	a5,0x7
    8000465c:	5087a783          	lw	a5,1288(a5) # 8000bb60 <_ZL9threadEnd>
    80004660:	04079a63          	bnez	a5,800046b4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004664:	02093783          	ld	a5,32(s2)
    80004668:	0087b503          	ld	a0,8(a5)
    8000466c:	00001097          	auipc	ra,0x1
    80004670:	638080e7          	jalr	1592(ra) # 80005ca4 <_ZN9BufferCPP3getEv>
            i++;
    80004674:	0019849b          	addiw	s1,s3,1
    80004678:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000467c:	0ff57513          	andi	a0,a0,255
    80004680:	ffffe097          	auipc	ra,0xffffe
    80004684:	004080e7          	jalr	4(ra) # 80002684 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004688:	05000793          	li	a5,80
    8000468c:	02f4e4bb          	remw	s1,s1,a5
    80004690:	fc0494e3          	bnez	s1,80004658 <_ZN8Consumer3runEv+0x34>
    80004694:	fb9ff06f          	j	8000464c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004698:	02093783          	ld	a5,32(s2)
    8000469c:	0087b503          	ld	a0,8(a5)
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	604080e7          	jalr	1540(ra) # 80005ca4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800046a8:	0ff57513          	andi	a0,a0,255
    800046ac:	ffffe097          	auipc	ra,0xffffe
    800046b0:	fd8080e7          	jalr	-40(ra) # 80002684 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800046b4:	02093783          	ld	a5,32(s2)
    800046b8:	0087b503          	ld	a0,8(a5)
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	674080e7          	jalr	1652(ra) # 80005d30 <_ZN9BufferCPP6getCntEv>
    800046c4:	fca04ae3          	bgtz	a0,80004698 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800046c8:	02093783          	ld	a5,32(s2)
    800046cc:	0107b503          	ld	a0,16(a5)
    800046d0:	ffffe097          	auipc	ra,0xffffe
    800046d4:	ef4080e7          	jalr	-268(ra) # 800025c4 <_ZN9Semaphore6signalEv>
    }
    800046d8:	02813083          	ld	ra,40(sp)
    800046dc:	02013403          	ld	s0,32(sp)
    800046e0:	01813483          	ld	s1,24(sp)
    800046e4:	01013903          	ld	s2,16(sp)
    800046e8:	00813983          	ld	s3,8(sp)
    800046ec:	03010113          	addi	sp,sp,48
    800046f0:	00008067          	ret

00000000800046f4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800046f4:	ff010113          	addi	sp,sp,-16
    800046f8:	00113423          	sd	ra,8(sp)
    800046fc:	00813023          	sd	s0,0(sp)
    80004700:	01010413          	addi	s0,sp,16
    80004704:	00007797          	auipc	a5,0x7
    80004708:	1cc78793          	addi	a5,a5,460 # 8000b8d0 <_ZTV8Consumer+0x10>
    8000470c:	00f53023          	sd	a5,0(a0)
    80004710:	ffffe097          	auipc	ra,0xffffe
    80004714:	bb4080e7          	jalr	-1100(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80004718:	00813083          	ld	ra,8(sp)
    8000471c:	00013403          	ld	s0,0(sp)
    80004720:	01010113          	addi	sp,sp,16
    80004724:	00008067          	ret

0000000080004728 <_ZN8ConsumerD0Ev>:
    80004728:	fe010113          	addi	sp,sp,-32
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	00813823          	sd	s0,16(sp)
    80004734:	00913423          	sd	s1,8(sp)
    80004738:	02010413          	addi	s0,sp,32
    8000473c:	00050493          	mv	s1,a0
    80004740:	00007797          	auipc	a5,0x7
    80004744:	19078793          	addi	a5,a5,400 # 8000b8d0 <_ZTV8Consumer+0x10>
    80004748:	00f53023          	sd	a5,0(a0)
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	b78080e7          	jalr	-1160(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80004754:	00048513          	mv	a0,s1
    80004758:	ffffe097          	auipc	ra,0xffffe
    8000475c:	c0c080e7          	jalr	-1012(ra) # 80002364 <_ZdlPv>
    80004760:	01813083          	ld	ra,24(sp)
    80004764:	01013403          	ld	s0,16(sp)
    80004768:	00813483          	ld	s1,8(sp)
    8000476c:	02010113          	addi	sp,sp,32
    80004770:	00008067          	ret

0000000080004774 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004774:	ff010113          	addi	sp,sp,-16
    80004778:	00113423          	sd	ra,8(sp)
    8000477c:	00813023          	sd	s0,0(sp)
    80004780:	01010413          	addi	s0,sp,16
    80004784:	00007797          	auipc	a5,0x7
    80004788:	0fc78793          	addi	a5,a5,252 # 8000b880 <_ZTV16ProducerKeyborad+0x10>
    8000478c:	00f53023          	sd	a5,0(a0)
    80004790:	ffffe097          	auipc	ra,0xffffe
    80004794:	b34080e7          	jalr	-1228(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80004798:	00813083          	ld	ra,8(sp)
    8000479c:	00013403          	ld	s0,0(sp)
    800047a0:	01010113          	addi	sp,sp,16
    800047a4:	00008067          	ret

00000000800047a8 <_ZN16ProducerKeyboradD0Ev>:
    800047a8:	fe010113          	addi	sp,sp,-32
    800047ac:	00113c23          	sd	ra,24(sp)
    800047b0:	00813823          	sd	s0,16(sp)
    800047b4:	00913423          	sd	s1,8(sp)
    800047b8:	02010413          	addi	s0,sp,32
    800047bc:	00050493          	mv	s1,a0
    800047c0:	00007797          	auipc	a5,0x7
    800047c4:	0c078793          	addi	a5,a5,192 # 8000b880 <_ZTV16ProducerKeyborad+0x10>
    800047c8:	00f53023          	sd	a5,0(a0)
    800047cc:	ffffe097          	auipc	ra,0xffffe
    800047d0:	af8080e7          	jalr	-1288(ra) # 800022c4 <_ZN6ThreadD1Ev>
    800047d4:	00048513          	mv	a0,s1
    800047d8:	ffffe097          	auipc	ra,0xffffe
    800047dc:	b8c080e7          	jalr	-1140(ra) # 80002364 <_ZdlPv>
    800047e0:	01813083          	ld	ra,24(sp)
    800047e4:	01013403          	ld	s0,16(sp)
    800047e8:	00813483          	ld	s1,8(sp)
    800047ec:	02010113          	addi	sp,sp,32
    800047f0:	00008067          	ret

00000000800047f4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800047f4:	ff010113          	addi	sp,sp,-16
    800047f8:	00113423          	sd	ra,8(sp)
    800047fc:	00813023          	sd	s0,0(sp)
    80004800:	01010413          	addi	s0,sp,16
    80004804:	00007797          	auipc	a5,0x7
    80004808:	0a478793          	addi	a5,a5,164 # 8000b8a8 <_ZTV8Producer+0x10>
    8000480c:	00f53023          	sd	a5,0(a0)
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	ab4080e7          	jalr	-1356(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80004818:	00813083          	ld	ra,8(sp)
    8000481c:	00013403          	ld	s0,0(sp)
    80004820:	01010113          	addi	sp,sp,16
    80004824:	00008067          	ret

0000000080004828 <_ZN8ProducerD0Ev>:
    80004828:	fe010113          	addi	sp,sp,-32
    8000482c:	00113c23          	sd	ra,24(sp)
    80004830:	00813823          	sd	s0,16(sp)
    80004834:	00913423          	sd	s1,8(sp)
    80004838:	02010413          	addi	s0,sp,32
    8000483c:	00050493          	mv	s1,a0
    80004840:	00007797          	auipc	a5,0x7
    80004844:	06878793          	addi	a5,a5,104 # 8000b8a8 <_ZTV8Producer+0x10>
    80004848:	00f53023          	sd	a5,0(a0)
    8000484c:	ffffe097          	auipc	ra,0xffffe
    80004850:	a78080e7          	jalr	-1416(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80004854:	00048513          	mv	a0,s1
    80004858:	ffffe097          	auipc	ra,0xffffe
    8000485c:	b0c080e7          	jalr	-1268(ra) # 80002364 <_ZdlPv>
    80004860:	01813083          	ld	ra,24(sp)
    80004864:	01013403          	ld	s0,16(sp)
    80004868:	00813483          	ld	s1,8(sp)
    8000486c:	02010113          	addi	sp,sp,32
    80004870:	00008067          	ret

0000000080004874 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004874:	fe010113          	addi	sp,sp,-32
    80004878:	00113c23          	sd	ra,24(sp)
    8000487c:	00813823          	sd	s0,16(sp)
    80004880:	00913423          	sd	s1,8(sp)
    80004884:	02010413          	addi	s0,sp,32
    80004888:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	c98080e7          	jalr	-872(ra) # 80001524 <_Z4getcv>
    80004894:	0005059b          	sext.w	a1,a0
    80004898:	01b00793          	li	a5,27
    8000489c:	00f58c63          	beq	a1,a5,800048b4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800048a0:	0204b783          	ld	a5,32(s1)
    800048a4:	0087b503          	ld	a0,8(a5)
    800048a8:	00001097          	auipc	ra,0x1
    800048ac:	36c080e7          	jalr	876(ra) # 80005c14 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800048b0:	fddff06f          	j	8000488c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800048b4:	00100793          	li	a5,1
    800048b8:	00007717          	auipc	a4,0x7
    800048bc:	2af72423          	sw	a5,680(a4) # 8000bb60 <_ZL9threadEnd>
        td->buffer->put('!');
    800048c0:	0204b783          	ld	a5,32(s1)
    800048c4:	02100593          	li	a1,33
    800048c8:	0087b503          	ld	a0,8(a5)
    800048cc:	00001097          	auipc	ra,0x1
    800048d0:	348080e7          	jalr	840(ra) # 80005c14 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800048d4:	0204b783          	ld	a5,32(s1)
    800048d8:	0107b503          	ld	a0,16(a5)
    800048dc:	ffffe097          	auipc	ra,0xffffe
    800048e0:	ce8080e7          	jalr	-792(ra) # 800025c4 <_ZN9Semaphore6signalEv>
    }
    800048e4:	01813083          	ld	ra,24(sp)
    800048e8:	01013403          	ld	s0,16(sp)
    800048ec:	00813483          	ld	s1,8(sp)
    800048f0:	02010113          	addi	sp,sp,32
    800048f4:	00008067          	ret

00000000800048f8 <_ZN8Producer3runEv>:
    void run() override {
    800048f8:	fe010113          	addi	sp,sp,-32
    800048fc:	00113c23          	sd	ra,24(sp)
    80004900:	00813823          	sd	s0,16(sp)
    80004904:	00913423          	sd	s1,8(sp)
    80004908:	01213023          	sd	s2,0(sp)
    8000490c:	02010413          	addi	s0,sp,32
    80004910:	00050493          	mv	s1,a0
        int i = 0;
    80004914:	00000913          	li	s2,0
        while (!threadEnd) {
    80004918:	00007797          	auipc	a5,0x7
    8000491c:	2487a783          	lw	a5,584(a5) # 8000bb60 <_ZL9threadEnd>
    80004920:	04079263          	bnez	a5,80004964 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004924:	0204b783          	ld	a5,32(s1)
    80004928:	0007a583          	lw	a1,0(a5)
    8000492c:	0305859b          	addiw	a1,a1,48
    80004930:	0087b503          	ld	a0,8(a5)
    80004934:	00001097          	auipc	ra,0x1
    80004938:	2e0080e7          	jalr	736(ra) # 80005c14 <_ZN9BufferCPP3putEi>
            i++;
    8000493c:	0019071b          	addiw	a4,s2,1
    80004940:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004944:	0204b783          	ld	a5,32(s1)
    80004948:	0007a783          	lw	a5,0(a5)
    8000494c:	00e787bb          	addw	a5,a5,a4
    80004950:	00500513          	li	a0,5
    80004954:	02a7e53b          	remw	a0,a5,a0
    80004958:	ffffe097          	auipc	ra,0xffffe
    8000495c:	b88080e7          	jalr	-1144(ra) # 800024e0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004960:	fb9ff06f          	j	80004918 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004964:	0204b783          	ld	a5,32(s1)
    80004968:	0107b503          	ld	a0,16(a5)
    8000496c:	ffffe097          	auipc	ra,0xffffe
    80004970:	c58080e7          	jalr	-936(ra) # 800025c4 <_ZN9Semaphore6signalEv>
    }
    80004974:	01813083          	ld	ra,24(sp)
    80004978:	01013403          	ld	s0,16(sp)
    8000497c:	00813483          	ld	s1,8(sp)
    80004980:	00013903          	ld	s2,0(sp)
    80004984:	02010113          	addi	sp,sp,32
    80004988:	00008067          	ret

000000008000498c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000498c:	fe010113          	addi	sp,sp,-32
    80004990:	00113c23          	sd	ra,24(sp)
    80004994:	00813823          	sd	s0,16(sp)
    80004998:	00913423          	sd	s1,8(sp)
    8000499c:	01213023          	sd	s2,0(sp)
    800049a0:	02010413          	addi	s0,sp,32
    800049a4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800049a8:	00100793          	li	a5,1
    800049ac:	02a7f863          	bgeu	a5,a0,800049dc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800049b0:	00a00793          	li	a5,10
    800049b4:	02f577b3          	remu	a5,a0,a5
    800049b8:	02078e63          	beqz	a5,800049f4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800049bc:	fff48513          	addi	a0,s1,-1
    800049c0:	00000097          	auipc	ra,0x0
    800049c4:	fcc080e7          	jalr	-52(ra) # 8000498c <_ZL9fibonaccim>
    800049c8:	00050913          	mv	s2,a0
    800049cc:	ffe48513          	addi	a0,s1,-2
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	fbc080e7          	jalr	-68(ra) # 8000498c <_ZL9fibonaccim>
    800049d8:	00a90533          	add	a0,s2,a0
}
    800049dc:	01813083          	ld	ra,24(sp)
    800049e0:	01013403          	ld	s0,16(sp)
    800049e4:	00813483          	ld	s1,8(sp)
    800049e8:	00013903          	ld	s2,0(sp)
    800049ec:	02010113          	addi	sp,sp,32
    800049f0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800049f4:	ffffd097          	auipc	ra,0xffffd
    800049f8:	9f0080e7          	jalr	-1552(ra) # 800013e4 <_Z15thread_dispatchv>
    800049fc:	fc1ff06f          	j	800049bc <_ZL9fibonaccim+0x30>

0000000080004a00 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004a00:	fe010113          	addi	sp,sp,-32
    80004a04:	00113c23          	sd	ra,24(sp)
    80004a08:	00813823          	sd	s0,16(sp)
    80004a0c:	00913423          	sd	s1,8(sp)
    80004a10:	01213023          	sd	s2,0(sp)
    80004a14:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004a18:	00a00493          	li	s1,10
    80004a1c:	0400006f          	j	80004a5c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a20:	00005517          	auipc	a0,0x5
    80004a24:	85850513          	addi	a0,a0,-1960 # 80009278 <CONSOLE_STATUS+0x268>
    80004a28:	00001097          	auipc	ra,0x1
    80004a2c:	dc8080e7          	jalr	-568(ra) # 800057f0 <_Z11printStringPKc>
    80004a30:	00000613          	li	a2,0
    80004a34:	00a00593          	li	a1,10
    80004a38:	00048513          	mv	a0,s1
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	f64080e7          	jalr	-156(ra) # 800059a0 <_Z8printIntiii>
    80004a44:	00005517          	auipc	a0,0x5
    80004a48:	a2450513          	addi	a0,a0,-1500 # 80009468 <CONSOLE_STATUS+0x458>
    80004a4c:	00001097          	auipc	ra,0x1
    80004a50:	da4080e7          	jalr	-604(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004a54:	0014849b          	addiw	s1,s1,1
    80004a58:	0ff4f493          	andi	s1,s1,255
    80004a5c:	00c00793          	li	a5,12
    80004a60:	fc97f0e3          	bgeu	a5,s1,80004a20 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004a64:	00005517          	auipc	a0,0x5
    80004a68:	81c50513          	addi	a0,a0,-2020 # 80009280 <CONSOLE_STATUS+0x270>
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	d84080e7          	jalr	-636(ra) # 800057f0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004a74:	00500313          	li	t1,5
    thread_dispatch();
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	96c080e7          	jalr	-1684(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004a80:	01000513          	li	a0,16
    80004a84:	00000097          	auipc	ra,0x0
    80004a88:	f08080e7          	jalr	-248(ra) # 8000498c <_ZL9fibonaccim>
    80004a8c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a90:	00005517          	auipc	a0,0x5
    80004a94:	80050513          	addi	a0,a0,-2048 # 80009290 <CONSOLE_STATUS+0x280>
    80004a98:	00001097          	auipc	ra,0x1
    80004a9c:	d58080e7          	jalr	-680(ra) # 800057f0 <_Z11printStringPKc>
    80004aa0:	00000613          	li	a2,0
    80004aa4:	00a00593          	li	a1,10
    80004aa8:	0009051b          	sext.w	a0,s2
    80004aac:	00001097          	auipc	ra,0x1
    80004ab0:	ef4080e7          	jalr	-268(ra) # 800059a0 <_Z8printIntiii>
    80004ab4:	00005517          	auipc	a0,0x5
    80004ab8:	9b450513          	addi	a0,a0,-1612 # 80009468 <CONSOLE_STATUS+0x458>
    80004abc:	00001097          	auipc	ra,0x1
    80004ac0:	d34080e7          	jalr	-716(ra) # 800057f0 <_Z11printStringPKc>
    80004ac4:	0400006f          	j	80004b04 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ac8:	00004517          	auipc	a0,0x4
    80004acc:	7b050513          	addi	a0,a0,1968 # 80009278 <CONSOLE_STATUS+0x268>
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	d20080e7          	jalr	-736(ra) # 800057f0 <_Z11printStringPKc>
    80004ad8:	00000613          	li	a2,0
    80004adc:	00a00593          	li	a1,10
    80004ae0:	00048513          	mv	a0,s1
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	ebc080e7          	jalr	-324(ra) # 800059a0 <_Z8printIntiii>
    80004aec:	00005517          	auipc	a0,0x5
    80004af0:	97c50513          	addi	a0,a0,-1668 # 80009468 <CONSOLE_STATUS+0x458>
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	cfc080e7          	jalr	-772(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004afc:	0014849b          	addiw	s1,s1,1
    80004b00:	0ff4f493          	andi	s1,s1,255
    80004b04:	00f00793          	li	a5,15
    80004b08:	fc97f0e3          	bgeu	a5,s1,80004ac8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004b0c:	00004517          	auipc	a0,0x4
    80004b10:	79450513          	addi	a0,a0,1940 # 800092a0 <CONSOLE_STATUS+0x290>
    80004b14:	00001097          	auipc	ra,0x1
    80004b18:	cdc080e7          	jalr	-804(ra) # 800057f0 <_Z11printStringPKc>
    finishedD = true;
    80004b1c:	00100793          	li	a5,1
    80004b20:	00007717          	auipc	a4,0x7
    80004b24:	04f70823          	sb	a5,80(a4) # 8000bb70 <_ZL9finishedD>
    thread_dispatch();
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	8bc080e7          	jalr	-1860(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80004b30:	01813083          	ld	ra,24(sp)
    80004b34:	01013403          	ld	s0,16(sp)
    80004b38:	00813483          	ld	s1,8(sp)
    80004b3c:	00013903          	ld	s2,0(sp)
    80004b40:	02010113          	addi	sp,sp,32
    80004b44:	00008067          	ret

0000000080004b48 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004b48:	fe010113          	addi	sp,sp,-32
    80004b4c:	00113c23          	sd	ra,24(sp)
    80004b50:	00813823          	sd	s0,16(sp)
    80004b54:	00913423          	sd	s1,8(sp)
    80004b58:	01213023          	sd	s2,0(sp)
    80004b5c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004b60:	00000493          	li	s1,0
    80004b64:	0400006f          	j	80004ba4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004b68:	00004517          	auipc	a0,0x4
    80004b6c:	6e050513          	addi	a0,a0,1760 # 80009248 <CONSOLE_STATUS+0x238>
    80004b70:	00001097          	auipc	ra,0x1
    80004b74:	c80080e7          	jalr	-896(ra) # 800057f0 <_Z11printStringPKc>
    80004b78:	00000613          	li	a2,0
    80004b7c:	00a00593          	li	a1,10
    80004b80:	00048513          	mv	a0,s1
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	e1c080e7          	jalr	-484(ra) # 800059a0 <_Z8printIntiii>
    80004b8c:	00005517          	auipc	a0,0x5
    80004b90:	8dc50513          	addi	a0,a0,-1828 # 80009468 <CONSOLE_STATUS+0x458>
    80004b94:	00001097          	auipc	ra,0x1
    80004b98:	c5c080e7          	jalr	-932(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b9c:	0014849b          	addiw	s1,s1,1
    80004ba0:	0ff4f493          	andi	s1,s1,255
    80004ba4:	00200793          	li	a5,2
    80004ba8:	fc97f0e3          	bgeu	a5,s1,80004b68 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004bac:	00004517          	auipc	a0,0x4
    80004bb0:	6a450513          	addi	a0,a0,1700 # 80009250 <CONSOLE_STATUS+0x240>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	c3c080e7          	jalr	-964(ra) # 800057f0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004bbc:	00700313          	li	t1,7
    thread_dispatch();
    80004bc0:	ffffd097          	auipc	ra,0xffffd
    80004bc4:	824080e7          	jalr	-2012(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004bc8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004bcc:	00004517          	auipc	a0,0x4
    80004bd0:	69450513          	addi	a0,a0,1684 # 80009260 <CONSOLE_STATUS+0x250>
    80004bd4:	00001097          	auipc	ra,0x1
    80004bd8:	c1c080e7          	jalr	-996(ra) # 800057f0 <_Z11printStringPKc>
    80004bdc:	00000613          	li	a2,0
    80004be0:	00a00593          	li	a1,10
    80004be4:	0009051b          	sext.w	a0,s2
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	db8080e7          	jalr	-584(ra) # 800059a0 <_Z8printIntiii>
    80004bf0:	00005517          	auipc	a0,0x5
    80004bf4:	87850513          	addi	a0,a0,-1928 # 80009468 <CONSOLE_STATUS+0x458>
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	bf8080e7          	jalr	-1032(ra) # 800057f0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004c00:	00c00513          	li	a0,12
    80004c04:	00000097          	auipc	ra,0x0
    80004c08:	d88080e7          	jalr	-632(ra) # 8000498c <_ZL9fibonaccim>
    80004c0c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004c10:	00004517          	auipc	a0,0x4
    80004c14:	65850513          	addi	a0,a0,1624 # 80009268 <CONSOLE_STATUS+0x258>
    80004c18:	00001097          	auipc	ra,0x1
    80004c1c:	bd8080e7          	jalr	-1064(ra) # 800057f0 <_Z11printStringPKc>
    80004c20:	00000613          	li	a2,0
    80004c24:	00a00593          	li	a1,10
    80004c28:	0009051b          	sext.w	a0,s2
    80004c2c:	00001097          	auipc	ra,0x1
    80004c30:	d74080e7          	jalr	-652(ra) # 800059a0 <_Z8printIntiii>
    80004c34:	00005517          	auipc	a0,0x5
    80004c38:	83450513          	addi	a0,a0,-1996 # 80009468 <CONSOLE_STATUS+0x458>
    80004c3c:	00001097          	auipc	ra,0x1
    80004c40:	bb4080e7          	jalr	-1100(ra) # 800057f0 <_Z11printStringPKc>
    80004c44:	0400006f          	j	80004c84 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004c48:	00004517          	auipc	a0,0x4
    80004c4c:	60050513          	addi	a0,a0,1536 # 80009248 <CONSOLE_STATUS+0x238>
    80004c50:	00001097          	auipc	ra,0x1
    80004c54:	ba0080e7          	jalr	-1120(ra) # 800057f0 <_Z11printStringPKc>
    80004c58:	00000613          	li	a2,0
    80004c5c:	00a00593          	li	a1,10
    80004c60:	00048513          	mv	a0,s1
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	d3c080e7          	jalr	-708(ra) # 800059a0 <_Z8printIntiii>
    80004c6c:	00004517          	auipc	a0,0x4
    80004c70:	7fc50513          	addi	a0,a0,2044 # 80009468 <CONSOLE_STATUS+0x458>
    80004c74:	00001097          	auipc	ra,0x1
    80004c78:	b7c080e7          	jalr	-1156(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c7c:	0014849b          	addiw	s1,s1,1
    80004c80:	0ff4f493          	andi	s1,s1,255
    80004c84:	00500793          	li	a5,5
    80004c88:	fc97f0e3          	bgeu	a5,s1,80004c48 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004c8c:	00004517          	auipc	a0,0x4
    80004c90:	59450513          	addi	a0,a0,1428 # 80009220 <CONSOLE_STATUS+0x210>
    80004c94:	00001097          	auipc	ra,0x1
    80004c98:	b5c080e7          	jalr	-1188(ra) # 800057f0 <_Z11printStringPKc>
    finishedC = true;
    80004c9c:	00100793          	li	a5,1
    80004ca0:	00007717          	auipc	a4,0x7
    80004ca4:	ecf708a3          	sb	a5,-303(a4) # 8000bb71 <_ZL9finishedC>
    thread_dispatch();
    80004ca8:	ffffc097          	auipc	ra,0xffffc
    80004cac:	73c080e7          	jalr	1852(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80004cb0:	01813083          	ld	ra,24(sp)
    80004cb4:	01013403          	ld	s0,16(sp)
    80004cb8:	00813483          	ld	s1,8(sp)
    80004cbc:	00013903          	ld	s2,0(sp)
    80004cc0:	02010113          	addi	sp,sp,32
    80004cc4:	00008067          	ret

0000000080004cc8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004cc8:	fe010113          	addi	sp,sp,-32
    80004ccc:	00113c23          	sd	ra,24(sp)
    80004cd0:	00813823          	sd	s0,16(sp)
    80004cd4:	00913423          	sd	s1,8(sp)
    80004cd8:	01213023          	sd	s2,0(sp)
    80004cdc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004ce0:	00000913          	li	s2,0
    80004ce4:	0380006f          	j	80004d1c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004ce8:	ffffc097          	auipc	ra,0xffffc
    80004cec:	6fc080e7          	jalr	1788(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004cf0:	00148493          	addi	s1,s1,1
    80004cf4:	000027b7          	lui	a5,0x2
    80004cf8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004cfc:	0097ee63          	bltu	a5,s1,80004d18 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d00:	00000713          	li	a4,0
    80004d04:	000077b7          	lui	a5,0x7
    80004d08:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d0c:	fce7eee3          	bltu	a5,a4,80004ce8 <_ZL11workerBodyBPv+0x20>
    80004d10:	00170713          	addi	a4,a4,1
    80004d14:	ff1ff06f          	j	80004d04 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004d18:	00190913          	addi	s2,s2,1
    80004d1c:	00f00793          	li	a5,15
    80004d20:	0527e063          	bltu	a5,s2,80004d60 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004d24:	00004517          	auipc	a0,0x4
    80004d28:	50c50513          	addi	a0,a0,1292 # 80009230 <CONSOLE_STATUS+0x220>
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	ac4080e7          	jalr	-1340(ra) # 800057f0 <_Z11printStringPKc>
    80004d34:	00000613          	li	a2,0
    80004d38:	00a00593          	li	a1,10
    80004d3c:	0009051b          	sext.w	a0,s2
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	c60080e7          	jalr	-928(ra) # 800059a0 <_Z8printIntiii>
    80004d48:	00004517          	auipc	a0,0x4
    80004d4c:	72050513          	addi	a0,a0,1824 # 80009468 <CONSOLE_STATUS+0x458>
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	aa0080e7          	jalr	-1376(ra) # 800057f0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d58:	00000493          	li	s1,0
    80004d5c:	f99ff06f          	j	80004cf4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004d60:	00004517          	auipc	a0,0x4
    80004d64:	4d850513          	addi	a0,a0,1240 # 80009238 <CONSOLE_STATUS+0x228>
    80004d68:	00001097          	auipc	ra,0x1
    80004d6c:	a88080e7          	jalr	-1400(ra) # 800057f0 <_Z11printStringPKc>
    finishedB = true;
    80004d70:	00100793          	li	a5,1
    80004d74:	00007717          	auipc	a4,0x7
    80004d78:	def70f23          	sb	a5,-514(a4) # 8000bb72 <_ZL9finishedB>
    thread_dispatch();
    80004d7c:	ffffc097          	auipc	ra,0xffffc
    80004d80:	668080e7          	jalr	1640(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80004d84:	01813083          	ld	ra,24(sp)
    80004d88:	01013403          	ld	s0,16(sp)
    80004d8c:	00813483          	ld	s1,8(sp)
    80004d90:	00013903          	ld	s2,0(sp)
    80004d94:	02010113          	addi	sp,sp,32
    80004d98:	00008067          	ret

0000000080004d9c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004d9c:	fe010113          	addi	sp,sp,-32
    80004da0:	00113c23          	sd	ra,24(sp)
    80004da4:	00813823          	sd	s0,16(sp)
    80004da8:	00913423          	sd	s1,8(sp)
    80004dac:	01213023          	sd	s2,0(sp)
    80004db0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004db4:	00000913          	li	s2,0
    80004db8:	0380006f          	j	80004df0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004dbc:	ffffc097          	auipc	ra,0xffffc
    80004dc0:	628080e7          	jalr	1576(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004dc4:	00148493          	addi	s1,s1,1
    80004dc8:	000027b7          	lui	a5,0x2
    80004dcc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004dd0:	0097ee63          	bltu	a5,s1,80004dec <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004dd4:	00000713          	li	a4,0
    80004dd8:	000077b7          	lui	a5,0x7
    80004ddc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004de0:	fce7eee3          	bltu	a5,a4,80004dbc <_ZL11workerBodyAPv+0x20>
    80004de4:	00170713          	addi	a4,a4,1
    80004de8:	ff1ff06f          	j	80004dd8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004dec:	00190913          	addi	s2,s2,1
    80004df0:	00900793          	li	a5,9
    80004df4:	0527e063          	bltu	a5,s2,80004e34 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004df8:	00004517          	auipc	a0,0x4
    80004dfc:	42050513          	addi	a0,a0,1056 # 80009218 <CONSOLE_STATUS+0x208>
    80004e00:	00001097          	auipc	ra,0x1
    80004e04:	9f0080e7          	jalr	-1552(ra) # 800057f0 <_Z11printStringPKc>
    80004e08:	00000613          	li	a2,0
    80004e0c:	00a00593          	li	a1,10
    80004e10:	0009051b          	sext.w	a0,s2
    80004e14:	00001097          	auipc	ra,0x1
    80004e18:	b8c080e7          	jalr	-1140(ra) # 800059a0 <_Z8printIntiii>
    80004e1c:	00004517          	auipc	a0,0x4
    80004e20:	64c50513          	addi	a0,a0,1612 # 80009468 <CONSOLE_STATUS+0x458>
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	9cc080e7          	jalr	-1588(ra) # 800057f0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e2c:	00000493          	li	s1,0
    80004e30:	f99ff06f          	j	80004dc8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004e34:	00004517          	auipc	a0,0x4
    80004e38:	3ec50513          	addi	a0,a0,1004 # 80009220 <CONSOLE_STATUS+0x210>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	9b4080e7          	jalr	-1612(ra) # 800057f0 <_Z11printStringPKc>
    finishedA = true;
    80004e44:	00100793          	li	a5,1
    80004e48:	00007717          	auipc	a4,0x7
    80004e4c:	d2f705a3          	sb	a5,-725(a4) # 8000bb73 <_ZL9finishedA>
}
    80004e50:	01813083          	ld	ra,24(sp)
    80004e54:	01013403          	ld	s0,16(sp)
    80004e58:	00813483          	ld	s1,8(sp)
    80004e5c:	00013903          	ld	s2,0(sp)
    80004e60:	02010113          	addi	sp,sp,32
    80004e64:	00008067          	ret

0000000080004e68 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004e68:	fd010113          	addi	sp,sp,-48
    80004e6c:	02113423          	sd	ra,40(sp)
    80004e70:	02813023          	sd	s0,32(sp)
    80004e74:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004e78:	00000613          	li	a2,0
    80004e7c:	00000597          	auipc	a1,0x0
    80004e80:	f2058593          	addi	a1,a1,-224 # 80004d9c <_ZL11workerBodyAPv>
    80004e84:	fd040513          	addi	a0,s0,-48
    80004e88:	ffffc097          	auipc	ra,0xffffc
    80004e8c:	4a0080e7          	jalr	1184(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004e90:	00004517          	auipc	a0,0x4
    80004e94:	42050513          	addi	a0,a0,1056 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004e98:	00001097          	auipc	ra,0x1
    80004e9c:	958080e7          	jalr	-1704(ra) # 800057f0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ea0:	00000613          	li	a2,0
    80004ea4:	00000597          	auipc	a1,0x0
    80004ea8:	e2458593          	addi	a1,a1,-476 # 80004cc8 <_ZL11workerBodyBPv>
    80004eac:	fd840513          	addi	a0,s0,-40
    80004eb0:	ffffc097          	auipc	ra,0xffffc
    80004eb4:	478080e7          	jalr	1144(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004eb8:	00004517          	auipc	a0,0x4
    80004ebc:	41050513          	addi	a0,a0,1040 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	930080e7          	jalr	-1744(ra) # 800057f0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004ec8:	00000613          	li	a2,0
    80004ecc:	00000597          	auipc	a1,0x0
    80004ed0:	c7c58593          	addi	a1,a1,-900 # 80004b48 <_ZL11workerBodyCPv>
    80004ed4:	fe040513          	addi	a0,s0,-32
    80004ed8:	ffffc097          	auipc	ra,0xffffc
    80004edc:	450080e7          	jalr	1104(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004ee0:	00004517          	auipc	a0,0x4
    80004ee4:	40050513          	addi	a0,a0,1024 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	908080e7          	jalr	-1784(ra) # 800057f0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004ef0:	00000613          	li	a2,0
    80004ef4:	00000597          	auipc	a1,0x0
    80004ef8:	b0c58593          	addi	a1,a1,-1268 # 80004a00 <_ZL11workerBodyDPv>
    80004efc:	fe840513          	addi	a0,s0,-24
    80004f00:	ffffc097          	auipc	ra,0xffffc
    80004f04:	428080e7          	jalr	1064(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004f08:	00004517          	auipc	a0,0x4
    80004f0c:	3f050513          	addi	a0,a0,1008 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	8e0080e7          	jalr	-1824(ra) # 800057f0 <_Z11printStringPKc>
    80004f18:	00c0006f          	j	80004f24 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	4c8080e7          	jalr	1224(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f24:	00007797          	auipc	a5,0x7
    80004f28:	c4f7c783          	lbu	a5,-945(a5) # 8000bb73 <_ZL9finishedA>
    80004f2c:	fe0788e3          	beqz	a5,80004f1c <_Z18Threads_C_API_testv+0xb4>
    80004f30:	00007797          	auipc	a5,0x7
    80004f34:	c427c783          	lbu	a5,-958(a5) # 8000bb72 <_ZL9finishedB>
    80004f38:	fe0782e3          	beqz	a5,80004f1c <_Z18Threads_C_API_testv+0xb4>
    80004f3c:	00007797          	auipc	a5,0x7
    80004f40:	c357c783          	lbu	a5,-971(a5) # 8000bb71 <_ZL9finishedC>
    80004f44:	fc078ce3          	beqz	a5,80004f1c <_Z18Threads_C_API_testv+0xb4>
    80004f48:	00007797          	auipc	a5,0x7
    80004f4c:	c287c783          	lbu	a5,-984(a5) # 8000bb70 <_ZL9finishedD>
    80004f50:	fc0786e3          	beqz	a5,80004f1c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004f54:	02813083          	ld	ra,40(sp)
    80004f58:	02013403          	ld	s0,32(sp)
    80004f5c:	03010113          	addi	sp,sp,48
    80004f60:	00008067          	ret

0000000080004f64 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004f64:	fd010113          	addi	sp,sp,-48
    80004f68:	02113423          	sd	ra,40(sp)
    80004f6c:	02813023          	sd	s0,32(sp)
    80004f70:	00913c23          	sd	s1,24(sp)
    80004f74:	01213823          	sd	s2,16(sp)
    80004f78:	01313423          	sd	s3,8(sp)
    80004f7c:	03010413          	addi	s0,sp,48
    80004f80:	00050993          	mv	s3,a0
    80004f84:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004f88:	00000913          	li	s2,0
    80004f8c:	00c0006f          	j	80004f98 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f90:	ffffd097          	auipc	ra,0xffffd
    80004f94:	4f4080e7          	jalr	1268(ra) # 80002484 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004f98:	ffffc097          	auipc	ra,0xffffc
    80004f9c:	58c080e7          	jalr	1420(ra) # 80001524 <_Z4getcv>
    80004fa0:	0005059b          	sext.w	a1,a0
    80004fa4:	01b00793          	li	a5,27
    80004fa8:	02f58a63          	beq	a1,a5,80004fdc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004fac:	0084b503          	ld	a0,8(s1)
    80004fb0:	00001097          	auipc	ra,0x1
    80004fb4:	c64080e7          	jalr	-924(ra) # 80005c14 <_ZN9BufferCPP3putEi>
        i++;
    80004fb8:	0019071b          	addiw	a4,s2,1
    80004fbc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004fc0:	0004a683          	lw	a3,0(s1)
    80004fc4:	0026979b          	slliw	a5,a3,0x2
    80004fc8:	00d787bb          	addw	a5,a5,a3
    80004fcc:	0017979b          	slliw	a5,a5,0x1
    80004fd0:	02f767bb          	remw	a5,a4,a5
    80004fd4:	fc0792e3          	bnez	a5,80004f98 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004fd8:	fb9ff06f          	j	80004f90 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004fdc:	00100793          	li	a5,1
    80004fe0:	00007717          	auipc	a4,0x7
    80004fe4:	b8f72c23          	sw	a5,-1128(a4) # 8000bb78 <_ZL9threadEnd>
    td->buffer->put('!');
    80004fe8:	0209b783          	ld	a5,32(s3)
    80004fec:	02100593          	li	a1,33
    80004ff0:	0087b503          	ld	a0,8(a5)
    80004ff4:	00001097          	auipc	ra,0x1
    80004ff8:	c20080e7          	jalr	-992(ra) # 80005c14 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004ffc:	0104b503          	ld	a0,16(s1)
    80005000:	ffffd097          	auipc	ra,0xffffd
    80005004:	5c4080e7          	jalr	1476(ra) # 800025c4 <_ZN9Semaphore6signalEv>
}
    80005008:	02813083          	ld	ra,40(sp)
    8000500c:	02013403          	ld	s0,32(sp)
    80005010:	01813483          	ld	s1,24(sp)
    80005014:	01013903          	ld	s2,16(sp)
    80005018:	00813983          	ld	s3,8(sp)
    8000501c:	03010113          	addi	sp,sp,48
    80005020:	00008067          	ret

0000000080005024 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005024:	fe010113          	addi	sp,sp,-32
    80005028:	00113c23          	sd	ra,24(sp)
    8000502c:	00813823          	sd	s0,16(sp)
    80005030:	00913423          	sd	s1,8(sp)
    80005034:	01213023          	sd	s2,0(sp)
    80005038:	02010413          	addi	s0,sp,32
    8000503c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005040:	00000913          	li	s2,0
    80005044:	00c0006f          	j	80005050 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005048:	ffffd097          	auipc	ra,0xffffd
    8000504c:	43c080e7          	jalr	1084(ra) # 80002484 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005050:	00007797          	auipc	a5,0x7
    80005054:	b287a783          	lw	a5,-1240(a5) # 8000bb78 <_ZL9threadEnd>
    80005058:	02079e63          	bnez	a5,80005094 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000505c:	0004a583          	lw	a1,0(s1)
    80005060:	0305859b          	addiw	a1,a1,48
    80005064:	0084b503          	ld	a0,8(s1)
    80005068:	00001097          	auipc	ra,0x1
    8000506c:	bac080e7          	jalr	-1108(ra) # 80005c14 <_ZN9BufferCPP3putEi>
        i++;
    80005070:	0019071b          	addiw	a4,s2,1
    80005074:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005078:	0004a683          	lw	a3,0(s1)
    8000507c:	0026979b          	slliw	a5,a3,0x2
    80005080:	00d787bb          	addw	a5,a5,a3
    80005084:	0017979b          	slliw	a5,a5,0x1
    80005088:	02f767bb          	remw	a5,a4,a5
    8000508c:	fc0792e3          	bnez	a5,80005050 <_ZN12ProducerSync8producerEPv+0x2c>
    80005090:	fb9ff06f          	j	80005048 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005094:	0104b503          	ld	a0,16(s1)
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	52c080e7          	jalr	1324(ra) # 800025c4 <_ZN9Semaphore6signalEv>
}
    800050a0:	01813083          	ld	ra,24(sp)
    800050a4:	01013403          	ld	s0,16(sp)
    800050a8:	00813483          	ld	s1,8(sp)
    800050ac:	00013903          	ld	s2,0(sp)
    800050b0:	02010113          	addi	sp,sp,32
    800050b4:	00008067          	ret

00000000800050b8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800050b8:	fd010113          	addi	sp,sp,-48
    800050bc:	02113423          	sd	ra,40(sp)
    800050c0:	02813023          	sd	s0,32(sp)
    800050c4:	00913c23          	sd	s1,24(sp)
    800050c8:	01213823          	sd	s2,16(sp)
    800050cc:	01313423          	sd	s3,8(sp)
    800050d0:	01413023          	sd	s4,0(sp)
    800050d4:	03010413          	addi	s0,sp,48
    800050d8:	00050993          	mv	s3,a0
    800050dc:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800050e0:	00000a13          	li	s4,0
    800050e4:	01c0006f          	j	80005100 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800050e8:	ffffd097          	auipc	ra,0xffffd
    800050ec:	39c080e7          	jalr	924(ra) # 80002484 <_ZN6Thread8dispatchEv>
    800050f0:	0500006f          	j	80005140 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800050f4:	00a00513          	li	a0,10
    800050f8:	ffffc097          	auipc	ra,0xffffc
    800050fc:	460080e7          	jalr	1120(ra) # 80001558 <_Z4putcc>
    while (!threadEnd) {
    80005100:	00007797          	auipc	a5,0x7
    80005104:	a787a783          	lw	a5,-1416(a5) # 8000bb78 <_ZL9threadEnd>
    80005108:	06079263          	bnez	a5,8000516c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000510c:	00893503          	ld	a0,8(s2)
    80005110:	00001097          	auipc	ra,0x1
    80005114:	b94080e7          	jalr	-1132(ra) # 80005ca4 <_ZN9BufferCPP3getEv>
        i++;
    80005118:	001a049b          	addiw	s1,s4,1
    8000511c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005120:	0ff57513          	andi	a0,a0,255
    80005124:	ffffc097          	auipc	ra,0xffffc
    80005128:	434080e7          	jalr	1076(ra) # 80001558 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000512c:	00092703          	lw	a4,0(s2)
    80005130:	0027179b          	slliw	a5,a4,0x2
    80005134:	00e787bb          	addw	a5,a5,a4
    80005138:	02f4e7bb          	remw	a5,s1,a5
    8000513c:	fa0786e3          	beqz	a5,800050e8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005140:	05000793          	li	a5,80
    80005144:	02f4e4bb          	remw	s1,s1,a5
    80005148:	fa049ce3          	bnez	s1,80005100 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000514c:	fa9ff06f          	j	800050f4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005150:	0209b783          	ld	a5,32(s3)
    80005154:	0087b503          	ld	a0,8(a5)
    80005158:	00001097          	auipc	ra,0x1
    8000515c:	b4c080e7          	jalr	-1204(ra) # 80005ca4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005160:	0ff57513          	andi	a0,a0,255
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	520080e7          	jalr	1312(ra) # 80002684 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000516c:	0209b783          	ld	a5,32(s3)
    80005170:	0087b503          	ld	a0,8(a5)
    80005174:	00001097          	auipc	ra,0x1
    80005178:	bbc080e7          	jalr	-1092(ra) # 80005d30 <_ZN9BufferCPP6getCntEv>
    8000517c:	fca04ae3          	bgtz	a0,80005150 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005180:	01093503          	ld	a0,16(s2)
    80005184:	ffffd097          	auipc	ra,0xffffd
    80005188:	440080e7          	jalr	1088(ra) # 800025c4 <_ZN9Semaphore6signalEv>
}
    8000518c:	02813083          	ld	ra,40(sp)
    80005190:	02013403          	ld	s0,32(sp)
    80005194:	01813483          	ld	s1,24(sp)
    80005198:	01013903          	ld	s2,16(sp)
    8000519c:	00813983          	ld	s3,8(sp)
    800051a0:	00013a03          	ld	s4,0(sp)
    800051a4:	03010113          	addi	sp,sp,48
    800051a8:	00008067          	ret

00000000800051ac <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800051ac:	f8010113          	addi	sp,sp,-128
    800051b0:	06113c23          	sd	ra,120(sp)
    800051b4:	06813823          	sd	s0,112(sp)
    800051b8:	06913423          	sd	s1,104(sp)
    800051bc:	07213023          	sd	s2,96(sp)
    800051c0:	05313c23          	sd	s3,88(sp)
    800051c4:	05413823          	sd	s4,80(sp)
    800051c8:	05513423          	sd	s5,72(sp)
    800051cc:	05613023          	sd	s6,64(sp)
    800051d0:	03713c23          	sd	s7,56(sp)
    800051d4:	03813823          	sd	s8,48(sp)
    800051d8:	03913423          	sd	s9,40(sp)
    800051dc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800051e0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800051e4:	00004517          	auipc	a0,0x4
    800051e8:	f4c50513          	addi	a0,a0,-180 # 80009130 <CONSOLE_STATUS+0x120>
    800051ec:	00000097          	auipc	ra,0x0
    800051f0:	604080e7          	jalr	1540(ra) # 800057f0 <_Z11printStringPKc>
    getString(input, 30);
    800051f4:	01e00593          	li	a1,30
    800051f8:	f8040493          	addi	s1,s0,-128
    800051fc:	00048513          	mv	a0,s1
    80005200:	00000097          	auipc	ra,0x0
    80005204:	678080e7          	jalr	1656(ra) # 80005878 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005208:	00048513          	mv	a0,s1
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	744080e7          	jalr	1860(ra) # 80005950 <_Z11stringToIntPKc>
    80005214:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005218:	00004517          	auipc	a0,0x4
    8000521c:	f3850513          	addi	a0,a0,-200 # 80009150 <CONSOLE_STATUS+0x140>
    80005220:	00000097          	auipc	ra,0x0
    80005224:	5d0080e7          	jalr	1488(ra) # 800057f0 <_Z11printStringPKc>
    getString(input, 30);
    80005228:	01e00593          	li	a1,30
    8000522c:	00048513          	mv	a0,s1
    80005230:	00000097          	auipc	ra,0x0
    80005234:	648080e7          	jalr	1608(ra) # 80005878 <_Z9getStringPci>
    n = stringToInt(input);
    80005238:	00048513          	mv	a0,s1
    8000523c:	00000097          	auipc	ra,0x0
    80005240:	714080e7          	jalr	1812(ra) # 80005950 <_Z11stringToIntPKc>
    80005244:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005248:	00004517          	auipc	a0,0x4
    8000524c:	f2850513          	addi	a0,a0,-216 # 80009170 <CONSOLE_STATUS+0x160>
    80005250:	00000097          	auipc	ra,0x0
    80005254:	5a0080e7          	jalr	1440(ra) # 800057f0 <_Z11printStringPKc>
    80005258:	00000613          	li	a2,0
    8000525c:	00a00593          	li	a1,10
    80005260:	00090513          	mv	a0,s2
    80005264:	00000097          	auipc	ra,0x0
    80005268:	73c080e7          	jalr	1852(ra) # 800059a0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000526c:	00004517          	auipc	a0,0x4
    80005270:	f1c50513          	addi	a0,a0,-228 # 80009188 <CONSOLE_STATUS+0x178>
    80005274:	00000097          	auipc	ra,0x0
    80005278:	57c080e7          	jalr	1404(ra) # 800057f0 <_Z11printStringPKc>
    8000527c:	00000613          	li	a2,0
    80005280:	00a00593          	li	a1,10
    80005284:	00048513          	mv	a0,s1
    80005288:	00000097          	auipc	ra,0x0
    8000528c:	718080e7          	jalr	1816(ra) # 800059a0 <_Z8printIntiii>
    printString(".\n");
    80005290:	00004517          	auipc	a0,0x4
    80005294:	f1050513          	addi	a0,a0,-240 # 800091a0 <CONSOLE_STATUS+0x190>
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	558080e7          	jalr	1368(ra) # 800057f0 <_Z11printStringPKc>
    if(threadNum > n) {
    800052a0:	0324c463          	blt	s1,s2,800052c8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800052a4:	03205c63          	blez	s2,800052dc <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800052a8:	03800513          	li	a0,56
    800052ac:	ffffd097          	auipc	ra,0xffffd
    800052b0:	068080e7          	jalr	104(ra) # 80002314 <_Znwm>
    800052b4:	00050a93          	mv	s5,a0
    800052b8:	00048593          	mv	a1,s1
    800052bc:	00001097          	auipc	ra,0x1
    800052c0:	804080e7          	jalr	-2044(ra) # 80005ac0 <_ZN9BufferCPPC1Ei>
    800052c4:	0300006f          	j	800052f4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800052c8:	00004517          	auipc	a0,0x4
    800052cc:	ee050513          	addi	a0,a0,-288 # 800091a8 <CONSOLE_STATUS+0x198>
    800052d0:	00000097          	auipc	ra,0x0
    800052d4:	520080e7          	jalr	1312(ra) # 800057f0 <_Z11printStringPKc>
        return;
    800052d8:	0140006f          	j	800052ec <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800052dc:	00004517          	auipc	a0,0x4
    800052e0:	f0c50513          	addi	a0,a0,-244 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800052e4:	00000097          	auipc	ra,0x0
    800052e8:	50c080e7          	jalr	1292(ra) # 800057f0 <_Z11printStringPKc>
        return;
    800052ec:	000b8113          	mv	sp,s7
    800052f0:	2380006f          	j	80005528 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800052f4:	01000513          	li	a0,16
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	01c080e7          	jalr	28(ra) # 80002314 <_Znwm>
    80005300:	00050493          	mv	s1,a0
    80005304:	00000593          	li	a1,0
    80005308:	ffffd097          	auipc	ra,0xffffd
    8000530c:	254080e7          	jalr	596(ra) # 8000255c <_ZN9SemaphoreC1Ej>
    80005310:	00007797          	auipc	a5,0x7
    80005314:	8697b823          	sd	s1,-1936(a5) # 8000bb80 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005318:	00391793          	slli	a5,s2,0x3
    8000531c:	00f78793          	addi	a5,a5,15
    80005320:	ff07f793          	andi	a5,a5,-16
    80005324:	40f10133          	sub	sp,sp,a5
    80005328:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000532c:	0019071b          	addiw	a4,s2,1
    80005330:	00171793          	slli	a5,a4,0x1
    80005334:	00e787b3          	add	a5,a5,a4
    80005338:	00379793          	slli	a5,a5,0x3
    8000533c:	00f78793          	addi	a5,a5,15
    80005340:	ff07f793          	andi	a5,a5,-16
    80005344:	40f10133          	sub	sp,sp,a5
    80005348:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000534c:	00191c13          	slli	s8,s2,0x1
    80005350:	012c07b3          	add	a5,s8,s2
    80005354:	00379793          	slli	a5,a5,0x3
    80005358:	00fa07b3          	add	a5,s4,a5
    8000535c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005360:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005364:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005368:	02800513          	li	a0,40
    8000536c:	ffffd097          	auipc	ra,0xffffd
    80005370:	fa8080e7          	jalr	-88(ra) # 80002314 <_Znwm>
    80005374:	00050b13          	mv	s6,a0
    80005378:	012c0c33          	add	s8,s8,s2
    8000537c:	003c1c13          	slli	s8,s8,0x3
    80005380:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005384:	ffffd097          	auipc	ra,0xffffd
    80005388:	0c8080e7          	jalr	200(ra) # 8000244c <_ZN6ThreadC1Ev>
    8000538c:	00006797          	auipc	a5,0x6
    80005390:	5bc78793          	addi	a5,a5,1468 # 8000b948 <_ZTV12ConsumerSync+0x10>
    80005394:	00fb3023          	sd	a5,0(s6)
    80005398:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000539c:	000b0513          	mv	a0,s6
    800053a0:	ffffd097          	auipc	ra,0xffffd
    800053a4:	10c080e7          	jalr	268(ra) # 800024ac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800053a8:	00000493          	li	s1,0
    800053ac:	0380006f          	j	800053e4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800053b0:	00006797          	auipc	a5,0x6
    800053b4:	57078793          	addi	a5,a5,1392 # 8000b920 <_ZTV12ProducerSync+0x10>
    800053b8:	00fcb023          	sd	a5,0(s9)
    800053bc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800053c0:	00349793          	slli	a5,s1,0x3
    800053c4:	00f987b3          	add	a5,s3,a5
    800053c8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800053cc:	00349793          	slli	a5,s1,0x3
    800053d0:	00f987b3          	add	a5,s3,a5
    800053d4:	0007b503          	ld	a0,0(a5)
    800053d8:	ffffd097          	auipc	ra,0xffffd
    800053dc:	0d4080e7          	jalr	212(ra) # 800024ac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800053e0:	0014849b          	addiw	s1,s1,1
    800053e4:	0b24d063          	bge	s1,s2,80005484 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800053e8:	00149793          	slli	a5,s1,0x1
    800053ec:	009787b3          	add	a5,a5,s1
    800053f0:	00379793          	slli	a5,a5,0x3
    800053f4:	00fa07b3          	add	a5,s4,a5
    800053f8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800053fc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005400:	00006717          	auipc	a4,0x6
    80005404:	78073703          	ld	a4,1920(a4) # 8000bb80 <_ZL10waitForAll>
    80005408:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000540c:	02905863          	blez	s1,8000543c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005410:	02800513          	li	a0,40
    80005414:	ffffd097          	auipc	ra,0xffffd
    80005418:	f00080e7          	jalr	-256(ra) # 80002314 <_Znwm>
    8000541c:	00050c93          	mv	s9,a0
    80005420:	00149c13          	slli	s8,s1,0x1
    80005424:	009c0c33          	add	s8,s8,s1
    80005428:	003c1c13          	slli	s8,s8,0x3
    8000542c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005430:	ffffd097          	auipc	ra,0xffffd
    80005434:	01c080e7          	jalr	28(ra) # 8000244c <_ZN6ThreadC1Ev>
    80005438:	f79ff06f          	j	800053b0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    8000543c:	02800513          	li	a0,40
    80005440:	ffffd097          	auipc	ra,0xffffd
    80005444:	ed4080e7          	jalr	-300(ra) # 80002314 <_Znwm>
    80005448:	00050c93          	mv	s9,a0
    8000544c:	00149c13          	slli	s8,s1,0x1
    80005450:	009c0c33          	add	s8,s8,s1
    80005454:	003c1c13          	slli	s8,s8,0x3
    80005458:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000545c:	ffffd097          	auipc	ra,0xffffd
    80005460:	ff0080e7          	jalr	-16(ra) # 8000244c <_ZN6ThreadC1Ev>
    80005464:	00006797          	auipc	a5,0x6
    80005468:	49478793          	addi	a5,a5,1172 # 8000b8f8 <_ZTV16ProducerKeyboard+0x10>
    8000546c:	00fcb023          	sd	a5,0(s9)
    80005470:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005474:	00349793          	slli	a5,s1,0x3
    80005478:	00f987b3          	add	a5,s3,a5
    8000547c:	0197b023          	sd	s9,0(a5)
    80005480:	f4dff06f          	j	800053cc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005484:	ffffd097          	auipc	ra,0xffffd
    80005488:	000080e7          	jalr	ra # 80002484 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000548c:	00000493          	li	s1,0
    80005490:	00994e63          	blt	s2,s1,800054ac <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005494:	00006517          	auipc	a0,0x6
    80005498:	6ec53503          	ld	a0,1772(a0) # 8000bb80 <_ZL10waitForAll>
    8000549c:	ffffd097          	auipc	ra,0xffffd
    800054a0:	0fc080e7          	jalr	252(ra) # 80002598 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800054a4:	0014849b          	addiw	s1,s1,1
    800054a8:	fe9ff06f          	j	80005490 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800054ac:	00000493          	li	s1,0
    800054b0:	0080006f          	j	800054b8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800054b4:	0014849b          	addiw	s1,s1,1
    800054b8:	0324d263          	bge	s1,s2,800054dc <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800054bc:	00349793          	slli	a5,s1,0x3
    800054c0:	00f987b3          	add	a5,s3,a5
    800054c4:	0007b503          	ld	a0,0(a5)
    800054c8:	fe0506e3          	beqz	a0,800054b4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800054cc:	00053783          	ld	a5,0(a0)
    800054d0:	0087b783          	ld	a5,8(a5)
    800054d4:	000780e7          	jalr	a5
    800054d8:	fddff06f          	j	800054b4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800054dc:	000b0a63          	beqz	s6,800054f0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800054e0:	000b3783          	ld	a5,0(s6)
    800054e4:	0087b783          	ld	a5,8(a5)
    800054e8:	000b0513          	mv	a0,s6
    800054ec:	000780e7          	jalr	a5
    delete waitForAll;
    800054f0:	00006517          	auipc	a0,0x6
    800054f4:	69053503          	ld	a0,1680(a0) # 8000bb80 <_ZL10waitForAll>
    800054f8:	00050863          	beqz	a0,80005508 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800054fc:	00053783          	ld	a5,0(a0)
    80005500:	0087b783          	ld	a5,8(a5)
    80005504:	000780e7          	jalr	a5
    delete buffer;
    80005508:	000a8e63          	beqz	s5,80005524 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000550c:	000a8513          	mv	a0,s5
    80005510:	00001097          	auipc	ra,0x1
    80005514:	8a8080e7          	jalr	-1880(ra) # 80005db8 <_ZN9BufferCPPD1Ev>
    80005518:	000a8513          	mv	a0,s5
    8000551c:	ffffd097          	auipc	ra,0xffffd
    80005520:	e48080e7          	jalr	-440(ra) # 80002364 <_ZdlPv>
    80005524:	000b8113          	mv	sp,s7

}
    80005528:	f8040113          	addi	sp,s0,-128
    8000552c:	07813083          	ld	ra,120(sp)
    80005530:	07013403          	ld	s0,112(sp)
    80005534:	06813483          	ld	s1,104(sp)
    80005538:	06013903          	ld	s2,96(sp)
    8000553c:	05813983          	ld	s3,88(sp)
    80005540:	05013a03          	ld	s4,80(sp)
    80005544:	04813a83          	ld	s5,72(sp)
    80005548:	04013b03          	ld	s6,64(sp)
    8000554c:	03813b83          	ld	s7,56(sp)
    80005550:	03013c03          	ld	s8,48(sp)
    80005554:	02813c83          	ld	s9,40(sp)
    80005558:	08010113          	addi	sp,sp,128
    8000555c:	00008067          	ret
    80005560:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005564:	000a8513          	mv	a0,s5
    80005568:	ffffd097          	auipc	ra,0xffffd
    8000556c:	dfc080e7          	jalr	-516(ra) # 80002364 <_ZdlPv>
    80005570:	00048513          	mv	a0,s1
    80005574:	00007097          	auipc	ra,0x7
    80005578:	6f4080e7          	jalr	1780(ra) # 8000cc68 <_Unwind_Resume>
    8000557c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005580:	00048513          	mv	a0,s1
    80005584:	ffffd097          	auipc	ra,0xffffd
    80005588:	de0080e7          	jalr	-544(ra) # 80002364 <_ZdlPv>
    8000558c:	00090513          	mv	a0,s2
    80005590:	00007097          	auipc	ra,0x7
    80005594:	6d8080e7          	jalr	1752(ra) # 8000cc68 <_Unwind_Resume>
    80005598:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000559c:	000b0513          	mv	a0,s6
    800055a0:	ffffd097          	auipc	ra,0xffffd
    800055a4:	dc4080e7          	jalr	-572(ra) # 80002364 <_ZdlPv>
    800055a8:	00048513          	mv	a0,s1
    800055ac:	00007097          	auipc	ra,0x7
    800055b0:	6bc080e7          	jalr	1724(ra) # 8000cc68 <_Unwind_Resume>
    800055b4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800055b8:	000c8513          	mv	a0,s9
    800055bc:	ffffd097          	auipc	ra,0xffffd
    800055c0:	da8080e7          	jalr	-600(ra) # 80002364 <_ZdlPv>
    800055c4:	00048513          	mv	a0,s1
    800055c8:	00007097          	auipc	ra,0x7
    800055cc:	6a0080e7          	jalr	1696(ra) # 8000cc68 <_Unwind_Resume>
    800055d0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800055d4:	000c8513          	mv	a0,s9
    800055d8:	ffffd097          	auipc	ra,0xffffd
    800055dc:	d8c080e7          	jalr	-628(ra) # 80002364 <_ZdlPv>
    800055e0:	00048513          	mv	a0,s1
    800055e4:	00007097          	auipc	ra,0x7
    800055e8:	684080e7          	jalr	1668(ra) # 8000cc68 <_Unwind_Resume>

00000000800055ec <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800055ec:	ff010113          	addi	sp,sp,-16
    800055f0:	00113423          	sd	ra,8(sp)
    800055f4:	00813023          	sd	s0,0(sp)
    800055f8:	01010413          	addi	s0,sp,16
    800055fc:	00006797          	auipc	a5,0x6
    80005600:	34c78793          	addi	a5,a5,844 # 8000b948 <_ZTV12ConsumerSync+0x10>
    80005604:	00f53023          	sd	a5,0(a0)
    80005608:	ffffd097          	auipc	ra,0xffffd
    8000560c:	cbc080e7          	jalr	-836(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80005610:	00813083          	ld	ra,8(sp)
    80005614:	00013403          	ld	s0,0(sp)
    80005618:	01010113          	addi	sp,sp,16
    8000561c:	00008067          	ret

0000000080005620 <_ZN12ConsumerSyncD0Ev>:
    80005620:	fe010113          	addi	sp,sp,-32
    80005624:	00113c23          	sd	ra,24(sp)
    80005628:	00813823          	sd	s0,16(sp)
    8000562c:	00913423          	sd	s1,8(sp)
    80005630:	02010413          	addi	s0,sp,32
    80005634:	00050493          	mv	s1,a0
    80005638:	00006797          	auipc	a5,0x6
    8000563c:	31078793          	addi	a5,a5,784 # 8000b948 <_ZTV12ConsumerSync+0x10>
    80005640:	00f53023          	sd	a5,0(a0)
    80005644:	ffffd097          	auipc	ra,0xffffd
    80005648:	c80080e7          	jalr	-896(ra) # 800022c4 <_ZN6ThreadD1Ev>
    8000564c:	00048513          	mv	a0,s1
    80005650:	ffffd097          	auipc	ra,0xffffd
    80005654:	d14080e7          	jalr	-748(ra) # 80002364 <_ZdlPv>
    80005658:	01813083          	ld	ra,24(sp)
    8000565c:	01013403          	ld	s0,16(sp)
    80005660:	00813483          	ld	s1,8(sp)
    80005664:	02010113          	addi	sp,sp,32
    80005668:	00008067          	ret

000000008000566c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000566c:	ff010113          	addi	sp,sp,-16
    80005670:	00113423          	sd	ra,8(sp)
    80005674:	00813023          	sd	s0,0(sp)
    80005678:	01010413          	addi	s0,sp,16
    8000567c:	00006797          	auipc	a5,0x6
    80005680:	2a478793          	addi	a5,a5,676 # 8000b920 <_ZTV12ProducerSync+0x10>
    80005684:	00f53023          	sd	a5,0(a0)
    80005688:	ffffd097          	auipc	ra,0xffffd
    8000568c:	c3c080e7          	jalr	-964(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80005690:	00813083          	ld	ra,8(sp)
    80005694:	00013403          	ld	s0,0(sp)
    80005698:	01010113          	addi	sp,sp,16
    8000569c:	00008067          	ret

00000000800056a0 <_ZN12ProducerSyncD0Ev>:
    800056a0:	fe010113          	addi	sp,sp,-32
    800056a4:	00113c23          	sd	ra,24(sp)
    800056a8:	00813823          	sd	s0,16(sp)
    800056ac:	00913423          	sd	s1,8(sp)
    800056b0:	02010413          	addi	s0,sp,32
    800056b4:	00050493          	mv	s1,a0
    800056b8:	00006797          	auipc	a5,0x6
    800056bc:	26878793          	addi	a5,a5,616 # 8000b920 <_ZTV12ProducerSync+0x10>
    800056c0:	00f53023          	sd	a5,0(a0)
    800056c4:	ffffd097          	auipc	ra,0xffffd
    800056c8:	c00080e7          	jalr	-1024(ra) # 800022c4 <_ZN6ThreadD1Ev>
    800056cc:	00048513          	mv	a0,s1
    800056d0:	ffffd097          	auipc	ra,0xffffd
    800056d4:	c94080e7          	jalr	-876(ra) # 80002364 <_ZdlPv>
    800056d8:	01813083          	ld	ra,24(sp)
    800056dc:	01013403          	ld	s0,16(sp)
    800056e0:	00813483          	ld	s1,8(sp)
    800056e4:	02010113          	addi	sp,sp,32
    800056e8:	00008067          	ret

00000000800056ec <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800056ec:	ff010113          	addi	sp,sp,-16
    800056f0:	00113423          	sd	ra,8(sp)
    800056f4:	00813023          	sd	s0,0(sp)
    800056f8:	01010413          	addi	s0,sp,16
    800056fc:	00006797          	auipc	a5,0x6
    80005700:	1fc78793          	addi	a5,a5,508 # 8000b8f8 <_ZTV16ProducerKeyboard+0x10>
    80005704:	00f53023          	sd	a5,0(a0)
    80005708:	ffffd097          	auipc	ra,0xffffd
    8000570c:	bbc080e7          	jalr	-1092(ra) # 800022c4 <_ZN6ThreadD1Ev>
    80005710:	00813083          	ld	ra,8(sp)
    80005714:	00013403          	ld	s0,0(sp)
    80005718:	01010113          	addi	sp,sp,16
    8000571c:	00008067          	ret

0000000080005720 <_ZN16ProducerKeyboardD0Ev>:
    80005720:	fe010113          	addi	sp,sp,-32
    80005724:	00113c23          	sd	ra,24(sp)
    80005728:	00813823          	sd	s0,16(sp)
    8000572c:	00913423          	sd	s1,8(sp)
    80005730:	02010413          	addi	s0,sp,32
    80005734:	00050493          	mv	s1,a0
    80005738:	00006797          	auipc	a5,0x6
    8000573c:	1c078793          	addi	a5,a5,448 # 8000b8f8 <_ZTV16ProducerKeyboard+0x10>
    80005740:	00f53023          	sd	a5,0(a0)
    80005744:	ffffd097          	auipc	ra,0xffffd
    80005748:	b80080e7          	jalr	-1152(ra) # 800022c4 <_ZN6ThreadD1Ev>
    8000574c:	00048513          	mv	a0,s1
    80005750:	ffffd097          	auipc	ra,0xffffd
    80005754:	c14080e7          	jalr	-1004(ra) # 80002364 <_ZdlPv>
    80005758:	01813083          	ld	ra,24(sp)
    8000575c:	01013403          	ld	s0,16(sp)
    80005760:	00813483          	ld	s1,8(sp)
    80005764:	02010113          	addi	sp,sp,32
    80005768:	00008067          	ret

000000008000576c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000576c:	ff010113          	addi	sp,sp,-16
    80005770:	00113423          	sd	ra,8(sp)
    80005774:	00813023          	sd	s0,0(sp)
    80005778:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000577c:	02053583          	ld	a1,32(a0)
    80005780:	fffff097          	auipc	ra,0xfffff
    80005784:	7e4080e7          	jalr	2020(ra) # 80004f64 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005788:	00813083          	ld	ra,8(sp)
    8000578c:	00013403          	ld	s0,0(sp)
    80005790:	01010113          	addi	sp,sp,16
    80005794:	00008067          	ret

0000000080005798 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005798:	ff010113          	addi	sp,sp,-16
    8000579c:	00113423          	sd	ra,8(sp)
    800057a0:	00813023          	sd	s0,0(sp)
    800057a4:	01010413          	addi	s0,sp,16
        producer(td);
    800057a8:	02053583          	ld	a1,32(a0)
    800057ac:	00000097          	auipc	ra,0x0
    800057b0:	878080e7          	jalr	-1928(ra) # 80005024 <_ZN12ProducerSync8producerEPv>
    }
    800057b4:	00813083          	ld	ra,8(sp)
    800057b8:	00013403          	ld	s0,0(sp)
    800057bc:	01010113          	addi	sp,sp,16
    800057c0:	00008067          	ret

00000000800057c4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800057c4:	ff010113          	addi	sp,sp,-16
    800057c8:	00113423          	sd	ra,8(sp)
    800057cc:	00813023          	sd	s0,0(sp)
    800057d0:	01010413          	addi	s0,sp,16
        consumer(td);
    800057d4:	02053583          	ld	a1,32(a0)
    800057d8:	00000097          	auipc	ra,0x0
    800057dc:	8e0080e7          	jalr	-1824(ra) # 800050b8 <_ZN12ConsumerSync8consumerEPv>
    }
    800057e0:	00813083          	ld	ra,8(sp)
    800057e4:	00013403          	ld	s0,0(sp)
    800057e8:	01010113          	addi	sp,sp,16
    800057ec:	00008067          	ret

00000000800057f0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800057f0:	fe010113          	addi	sp,sp,-32
    800057f4:	00113c23          	sd	ra,24(sp)
    800057f8:	00813823          	sd	s0,16(sp)
    800057fc:	00913423          	sd	s1,8(sp)
    80005800:	02010413          	addi	s0,sp,32
    80005804:	00050493          	mv	s1,a0
    LOCK();
    80005808:	00100613          	li	a2,1
    8000580c:	00000593          	li	a1,0
    80005810:	00006517          	auipc	a0,0x6
    80005814:	37850513          	addi	a0,a0,888 # 8000bb88 <lockPrint>
    80005818:	ffffc097          	auipc	ra,0xffffc
    8000581c:	a1c080e7          	jalr	-1508(ra) # 80001234 <copy_and_swap>
    80005820:	00050863          	beqz	a0,80005830 <_Z11printStringPKc+0x40>
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	bc0080e7          	jalr	-1088(ra) # 800013e4 <_Z15thread_dispatchv>
    8000582c:	fddff06f          	j	80005808 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005830:	0004c503          	lbu	a0,0(s1)
    80005834:	00050a63          	beqz	a0,80005848 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005838:	ffffc097          	auipc	ra,0xffffc
    8000583c:	d20080e7          	jalr	-736(ra) # 80001558 <_Z4putcc>
        string++;
    80005840:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005844:	fedff06f          	j	80005830 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005848:	00000613          	li	a2,0
    8000584c:	00100593          	li	a1,1
    80005850:	00006517          	auipc	a0,0x6
    80005854:	33850513          	addi	a0,a0,824 # 8000bb88 <lockPrint>
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	9dc080e7          	jalr	-1572(ra) # 80001234 <copy_and_swap>
    80005860:	fe0514e3          	bnez	a0,80005848 <_Z11printStringPKc+0x58>
}
    80005864:	01813083          	ld	ra,24(sp)
    80005868:	01013403          	ld	s0,16(sp)
    8000586c:	00813483          	ld	s1,8(sp)
    80005870:	02010113          	addi	sp,sp,32
    80005874:	00008067          	ret

0000000080005878 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005878:	fd010113          	addi	sp,sp,-48
    8000587c:	02113423          	sd	ra,40(sp)
    80005880:	02813023          	sd	s0,32(sp)
    80005884:	00913c23          	sd	s1,24(sp)
    80005888:	01213823          	sd	s2,16(sp)
    8000588c:	01313423          	sd	s3,8(sp)
    80005890:	01413023          	sd	s4,0(sp)
    80005894:	03010413          	addi	s0,sp,48
    80005898:	00050993          	mv	s3,a0
    8000589c:	00058a13          	mv	s4,a1
    LOCK();
    800058a0:	00100613          	li	a2,1
    800058a4:	00000593          	li	a1,0
    800058a8:	00006517          	auipc	a0,0x6
    800058ac:	2e050513          	addi	a0,a0,736 # 8000bb88 <lockPrint>
    800058b0:	ffffc097          	auipc	ra,0xffffc
    800058b4:	984080e7          	jalr	-1660(ra) # 80001234 <copy_and_swap>
    800058b8:	00050863          	beqz	a0,800058c8 <_Z9getStringPci+0x50>
    800058bc:	ffffc097          	auipc	ra,0xffffc
    800058c0:	b28080e7          	jalr	-1240(ra) # 800013e4 <_Z15thread_dispatchv>
    800058c4:	fddff06f          	j	800058a0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800058c8:	00000913          	li	s2,0
    800058cc:	00090493          	mv	s1,s2
    800058d0:	0019091b          	addiw	s2,s2,1
    800058d4:	03495a63          	bge	s2,s4,80005908 <_Z9getStringPci+0x90>
        cc = getc();
    800058d8:	ffffc097          	auipc	ra,0xffffc
    800058dc:	c4c080e7          	jalr	-948(ra) # 80001524 <_Z4getcv>
        if(cc < 1)
    800058e0:	02050463          	beqz	a0,80005908 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800058e4:	009984b3          	add	s1,s3,s1
    800058e8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800058ec:	00a00793          	li	a5,10
    800058f0:	00f50a63          	beq	a0,a5,80005904 <_Z9getStringPci+0x8c>
    800058f4:	00d00793          	li	a5,13
    800058f8:	fcf51ae3          	bne	a0,a5,800058cc <_Z9getStringPci+0x54>
        buf[i++] = c;
    800058fc:	00090493          	mv	s1,s2
    80005900:	0080006f          	j	80005908 <_Z9getStringPci+0x90>
    80005904:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005908:	009984b3          	add	s1,s3,s1
    8000590c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005910:	00000613          	li	a2,0
    80005914:	00100593          	li	a1,1
    80005918:	00006517          	auipc	a0,0x6
    8000591c:	27050513          	addi	a0,a0,624 # 8000bb88 <lockPrint>
    80005920:	ffffc097          	auipc	ra,0xffffc
    80005924:	914080e7          	jalr	-1772(ra) # 80001234 <copy_and_swap>
    80005928:	fe0514e3          	bnez	a0,80005910 <_Z9getStringPci+0x98>
    return buf;
}
    8000592c:	00098513          	mv	a0,s3
    80005930:	02813083          	ld	ra,40(sp)
    80005934:	02013403          	ld	s0,32(sp)
    80005938:	01813483          	ld	s1,24(sp)
    8000593c:	01013903          	ld	s2,16(sp)
    80005940:	00813983          	ld	s3,8(sp)
    80005944:	00013a03          	ld	s4,0(sp)
    80005948:	03010113          	addi	sp,sp,48
    8000594c:	00008067          	ret

0000000080005950 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005950:	ff010113          	addi	sp,sp,-16
    80005954:	00813423          	sd	s0,8(sp)
    80005958:	01010413          	addi	s0,sp,16
    8000595c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005960:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005964:	0006c603          	lbu	a2,0(a3)
    80005968:	fd06071b          	addiw	a4,a2,-48
    8000596c:	0ff77713          	andi	a4,a4,255
    80005970:	00900793          	li	a5,9
    80005974:	02e7e063          	bltu	a5,a4,80005994 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005978:	0025179b          	slliw	a5,a0,0x2
    8000597c:	00a787bb          	addw	a5,a5,a0
    80005980:	0017979b          	slliw	a5,a5,0x1
    80005984:	00168693          	addi	a3,a3,1
    80005988:	00c787bb          	addw	a5,a5,a2
    8000598c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005990:	fd5ff06f          	j	80005964 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005994:	00813403          	ld	s0,8(sp)
    80005998:	01010113          	addi	sp,sp,16
    8000599c:	00008067          	ret

00000000800059a0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800059a0:	fc010113          	addi	sp,sp,-64
    800059a4:	02113c23          	sd	ra,56(sp)
    800059a8:	02813823          	sd	s0,48(sp)
    800059ac:	02913423          	sd	s1,40(sp)
    800059b0:	03213023          	sd	s2,32(sp)
    800059b4:	01313c23          	sd	s3,24(sp)
    800059b8:	04010413          	addi	s0,sp,64
    800059bc:	00050493          	mv	s1,a0
    800059c0:	00058913          	mv	s2,a1
    800059c4:	00060993          	mv	s3,a2
    LOCK();
    800059c8:	00100613          	li	a2,1
    800059cc:	00000593          	li	a1,0
    800059d0:	00006517          	auipc	a0,0x6
    800059d4:	1b850513          	addi	a0,a0,440 # 8000bb88 <lockPrint>
    800059d8:	ffffc097          	auipc	ra,0xffffc
    800059dc:	85c080e7          	jalr	-1956(ra) # 80001234 <copy_and_swap>
    800059e0:	00050863          	beqz	a0,800059f0 <_Z8printIntiii+0x50>
    800059e4:	ffffc097          	auipc	ra,0xffffc
    800059e8:	a00080e7          	jalr	-1536(ra) # 800013e4 <_Z15thread_dispatchv>
    800059ec:	fddff06f          	j	800059c8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800059f0:	00098463          	beqz	s3,800059f8 <_Z8printIntiii+0x58>
    800059f4:	0804c463          	bltz	s1,80005a7c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800059f8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800059fc:	00000593          	li	a1,0
    }

    i = 0;
    80005a00:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005a04:	0009079b          	sext.w	a5,s2
    80005a08:	0325773b          	remuw	a4,a0,s2
    80005a0c:	00048613          	mv	a2,s1
    80005a10:	0014849b          	addiw	s1,s1,1
    80005a14:	02071693          	slli	a3,a4,0x20
    80005a18:	0206d693          	srli	a3,a3,0x20
    80005a1c:	00006717          	auipc	a4,0x6
    80005a20:	f4470713          	addi	a4,a4,-188 # 8000b960 <digits>
    80005a24:	00d70733          	add	a4,a4,a3
    80005a28:	00074683          	lbu	a3,0(a4)
    80005a2c:	fd040713          	addi	a4,s0,-48
    80005a30:	00c70733          	add	a4,a4,a2
    80005a34:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005a38:	0005071b          	sext.w	a4,a0
    80005a3c:	0325553b          	divuw	a0,a0,s2
    80005a40:	fcf772e3          	bgeu	a4,a5,80005a04 <_Z8printIntiii+0x64>
    if(neg)
    80005a44:	00058c63          	beqz	a1,80005a5c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005a48:	fd040793          	addi	a5,s0,-48
    80005a4c:	009784b3          	add	s1,a5,s1
    80005a50:	02d00793          	li	a5,45
    80005a54:	fef48823          	sb	a5,-16(s1)
    80005a58:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005a5c:	fff4849b          	addiw	s1,s1,-1
    80005a60:	0204c463          	bltz	s1,80005a88 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005a64:	fd040793          	addi	a5,s0,-48
    80005a68:	009787b3          	add	a5,a5,s1
    80005a6c:	ff07c503          	lbu	a0,-16(a5)
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	ae8080e7          	jalr	-1304(ra) # 80001558 <_Z4putcc>
    80005a78:	fe5ff06f          	j	80005a5c <_Z8printIntiii+0xbc>
        x = -xx;
    80005a7c:	4090053b          	negw	a0,s1
        neg = 1;
    80005a80:	00100593          	li	a1,1
        x = -xx;
    80005a84:	f7dff06f          	j	80005a00 <_Z8printIntiii+0x60>

    UNLOCK();
    80005a88:	00000613          	li	a2,0
    80005a8c:	00100593          	li	a1,1
    80005a90:	00006517          	auipc	a0,0x6
    80005a94:	0f850513          	addi	a0,a0,248 # 8000bb88 <lockPrint>
    80005a98:	ffffb097          	auipc	ra,0xffffb
    80005a9c:	79c080e7          	jalr	1948(ra) # 80001234 <copy_and_swap>
    80005aa0:	fe0514e3          	bnez	a0,80005a88 <_Z8printIntiii+0xe8>
    80005aa4:	03813083          	ld	ra,56(sp)
    80005aa8:	03013403          	ld	s0,48(sp)
    80005aac:	02813483          	ld	s1,40(sp)
    80005ab0:	02013903          	ld	s2,32(sp)
    80005ab4:	01813983          	ld	s3,24(sp)
    80005ab8:	04010113          	addi	sp,sp,64
    80005abc:	00008067          	ret

0000000080005ac0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ac0:	fd010113          	addi	sp,sp,-48
    80005ac4:	02113423          	sd	ra,40(sp)
    80005ac8:	02813023          	sd	s0,32(sp)
    80005acc:	00913c23          	sd	s1,24(sp)
    80005ad0:	01213823          	sd	s2,16(sp)
    80005ad4:	01313423          	sd	s3,8(sp)
    80005ad8:	03010413          	addi	s0,sp,48
    80005adc:	00050493          	mv	s1,a0
    80005ae0:	00058913          	mv	s2,a1
    80005ae4:	0015879b          	addiw	a5,a1,1
    80005ae8:	0007851b          	sext.w	a0,a5
    80005aec:	00f4a023          	sw	a5,0(s1)
    80005af0:	0004a823          	sw	zero,16(s1)
    80005af4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005af8:	00251513          	slli	a0,a0,0x2
    80005afc:	ffffb097          	auipc	ra,0xffffb
    80005b00:	758080e7          	jalr	1880(ra) # 80001254 <_Z9mem_allocm>
    80005b04:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005b08:	01000513          	li	a0,16
    80005b0c:	ffffd097          	auipc	ra,0xffffd
    80005b10:	808080e7          	jalr	-2040(ra) # 80002314 <_Znwm>
    80005b14:	00050993          	mv	s3,a0
    80005b18:	00000593          	li	a1,0
    80005b1c:	ffffd097          	auipc	ra,0xffffd
    80005b20:	a40080e7          	jalr	-1472(ra) # 8000255c <_ZN9SemaphoreC1Ej>
    80005b24:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005b28:	01000513          	li	a0,16
    80005b2c:	ffffc097          	auipc	ra,0xffffc
    80005b30:	7e8080e7          	jalr	2024(ra) # 80002314 <_Znwm>
    80005b34:	00050993          	mv	s3,a0
    80005b38:	00090593          	mv	a1,s2
    80005b3c:	ffffd097          	auipc	ra,0xffffd
    80005b40:	a20080e7          	jalr	-1504(ra) # 8000255c <_ZN9SemaphoreC1Ej>
    80005b44:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005b48:	01000513          	li	a0,16
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	7c8080e7          	jalr	1992(ra) # 80002314 <_Znwm>
    80005b54:	00050913          	mv	s2,a0
    80005b58:	00100593          	li	a1,1
    80005b5c:	ffffd097          	auipc	ra,0xffffd
    80005b60:	a00080e7          	jalr	-1536(ra) # 8000255c <_ZN9SemaphoreC1Ej>
    80005b64:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005b68:	01000513          	li	a0,16
    80005b6c:	ffffc097          	auipc	ra,0xffffc
    80005b70:	7a8080e7          	jalr	1960(ra) # 80002314 <_Znwm>
    80005b74:	00050913          	mv	s2,a0
    80005b78:	00100593          	li	a1,1
    80005b7c:	ffffd097          	auipc	ra,0xffffd
    80005b80:	9e0080e7          	jalr	-1568(ra) # 8000255c <_ZN9SemaphoreC1Ej>
    80005b84:	0324b823          	sd	s2,48(s1)
}
    80005b88:	02813083          	ld	ra,40(sp)
    80005b8c:	02013403          	ld	s0,32(sp)
    80005b90:	01813483          	ld	s1,24(sp)
    80005b94:	01013903          	ld	s2,16(sp)
    80005b98:	00813983          	ld	s3,8(sp)
    80005b9c:	03010113          	addi	sp,sp,48
    80005ba0:	00008067          	ret
    80005ba4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005ba8:	00098513          	mv	a0,s3
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	7b8080e7          	jalr	1976(ra) # 80002364 <_ZdlPv>
    80005bb4:	00048513          	mv	a0,s1
    80005bb8:	00007097          	auipc	ra,0x7
    80005bbc:	0b0080e7          	jalr	176(ra) # 8000cc68 <_Unwind_Resume>
    80005bc0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005bc4:	00098513          	mv	a0,s3
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	79c080e7          	jalr	1948(ra) # 80002364 <_ZdlPv>
    80005bd0:	00048513          	mv	a0,s1
    80005bd4:	00007097          	auipc	ra,0x7
    80005bd8:	094080e7          	jalr	148(ra) # 8000cc68 <_Unwind_Resume>
    80005bdc:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005be0:	00090513          	mv	a0,s2
    80005be4:	ffffc097          	auipc	ra,0xffffc
    80005be8:	780080e7          	jalr	1920(ra) # 80002364 <_ZdlPv>
    80005bec:	00048513          	mv	a0,s1
    80005bf0:	00007097          	auipc	ra,0x7
    80005bf4:	078080e7          	jalr	120(ra) # 8000cc68 <_Unwind_Resume>
    80005bf8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005bfc:	00090513          	mv	a0,s2
    80005c00:	ffffc097          	auipc	ra,0xffffc
    80005c04:	764080e7          	jalr	1892(ra) # 80002364 <_ZdlPv>
    80005c08:	00048513          	mv	a0,s1
    80005c0c:	00007097          	auipc	ra,0x7
    80005c10:	05c080e7          	jalr	92(ra) # 8000cc68 <_Unwind_Resume>

0000000080005c14 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005c14:	fe010113          	addi	sp,sp,-32
    80005c18:	00113c23          	sd	ra,24(sp)
    80005c1c:	00813823          	sd	s0,16(sp)
    80005c20:	00913423          	sd	s1,8(sp)
    80005c24:	01213023          	sd	s2,0(sp)
    80005c28:	02010413          	addi	s0,sp,32
    80005c2c:	00050493          	mv	s1,a0
    80005c30:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005c34:	01853503          	ld	a0,24(a0)
    80005c38:	ffffd097          	auipc	ra,0xffffd
    80005c3c:	960080e7          	jalr	-1696(ra) # 80002598 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005c40:	0304b503          	ld	a0,48(s1)
    80005c44:	ffffd097          	auipc	ra,0xffffd
    80005c48:	954080e7          	jalr	-1708(ra) # 80002598 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005c4c:	0084b783          	ld	a5,8(s1)
    80005c50:	0144a703          	lw	a4,20(s1)
    80005c54:	00271713          	slli	a4,a4,0x2
    80005c58:	00e787b3          	add	a5,a5,a4
    80005c5c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005c60:	0144a783          	lw	a5,20(s1)
    80005c64:	0017879b          	addiw	a5,a5,1
    80005c68:	0004a703          	lw	a4,0(s1)
    80005c6c:	02e7e7bb          	remw	a5,a5,a4
    80005c70:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005c74:	0304b503          	ld	a0,48(s1)
    80005c78:	ffffd097          	auipc	ra,0xffffd
    80005c7c:	94c080e7          	jalr	-1716(ra) # 800025c4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005c80:	0204b503          	ld	a0,32(s1)
    80005c84:	ffffd097          	auipc	ra,0xffffd
    80005c88:	940080e7          	jalr	-1728(ra) # 800025c4 <_ZN9Semaphore6signalEv>

}
    80005c8c:	01813083          	ld	ra,24(sp)
    80005c90:	01013403          	ld	s0,16(sp)
    80005c94:	00813483          	ld	s1,8(sp)
    80005c98:	00013903          	ld	s2,0(sp)
    80005c9c:	02010113          	addi	sp,sp,32
    80005ca0:	00008067          	ret

0000000080005ca4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005ca4:	fe010113          	addi	sp,sp,-32
    80005ca8:	00113c23          	sd	ra,24(sp)
    80005cac:	00813823          	sd	s0,16(sp)
    80005cb0:	00913423          	sd	s1,8(sp)
    80005cb4:	01213023          	sd	s2,0(sp)
    80005cb8:	02010413          	addi	s0,sp,32
    80005cbc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005cc0:	02053503          	ld	a0,32(a0)
    80005cc4:	ffffd097          	auipc	ra,0xffffd
    80005cc8:	8d4080e7          	jalr	-1836(ra) # 80002598 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005ccc:	0284b503          	ld	a0,40(s1)
    80005cd0:	ffffd097          	auipc	ra,0xffffd
    80005cd4:	8c8080e7          	jalr	-1848(ra) # 80002598 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005cd8:	0084b703          	ld	a4,8(s1)
    80005cdc:	0104a783          	lw	a5,16(s1)
    80005ce0:	00279693          	slli	a3,a5,0x2
    80005ce4:	00d70733          	add	a4,a4,a3
    80005ce8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005cec:	0017879b          	addiw	a5,a5,1
    80005cf0:	0004a703          	lw	a4,0(s1)
    80005cf4:	02e7e7bb          	remw	a5,a5,a4
    80005cf8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005cfc:	0284b503          	ld	a0,40(s1)
    80005d00:	ffffd097          	auipc	ra,0xffffd
    80005d04:	8c4080e7          	jalr	-1852(ra) # 800025c4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005d08:	0184b503          	ld	a0,24(s1)
    80005d0c:	ffffd097          	auipc	ra,0xffffd
    80005d10:	8b8080e7          	jalr	-1864(ra) # 800025c4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d14:	00090513          	mv	a0,s2
    80005d18:	01813083          	ld	ra,24(sp)
    80005d1c:	01013403          	ld	s0,16(sp)
    80005d20:	00813483          	ld	s1,8(sp)
    80005d24:	00013903          	ld	s2,0(sp)
    80005d28:	02010113          	addi	sp,sp,32
    80005d2c:	00008067          	ret

0000000080005d30 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005d30:	fe010113          	addi	sp,sp,-32
    80005d34:	00113c23          	sd	ra,24(sp)
    80005d38:	00813823          	sd	s0,16(sp)
    80005d3c:	00913423          	sd	s1,8(sp)
    80005d40:	01213023          	sd	s2,0(sp)
    80005d44:	02010413          	addi	s0,sp,32
    80005d48:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005d4c:	02853503          	ld	a0,40(a0)
    80005d50:	ffffd097          	auipc	ra,0xffffd
    80005d54:	848080e7          	jalr	-1976(ra) # 80002598 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005d58:	0304b503          	ld	a0,48(s1)
    80005d5c:	ffffd097          	auipc	ra,0xffffd
    80005d60:	83c080e7          	jalr	-1988(ra) # 80002598 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005d64:	0144a783          	lw	a5,20(s1)
    80005d68:	0104a903          	lw	s2,16(s1)
    80005d6c:	0327ce63          	blt	a5,s2,80005da8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005d70:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005d74:	0304b503          	ld	a0,48(s1)
    80005d78:	ffffd097          	auipc	ra,0xffffd
    80005d7c:	84c080e7          	jalr	-1972(ra) # 800025c4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005d80:	0284b503          	ld	a0,40(s1)
    80005d84:	ffffd097          	auipc	ra,0xffffd
    80005d88:	840080e7          	jalr	-1984(ra) # 800025c4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d8c:	00090513          	mv	a0,s2
    80005d90:	01813083          	ld	ra,24(sp)
    80005d94:	01013403          	ld	s0,16(sp)
    80005d98:	00813483          	ld	s1,8(sp)
    80005d9c:	00013903          	ld	s2,0(sp)
    80005da0:	02010113          	addi	sp,sp,32
    80005da4:	00008067          	ret
        ret = cap - head + tail;
    80005da8:	0004a703          	lw	a4,0(s1)
    80005dac:	4127093b          	subw	s2,a4,s2
    80005db0:	00f9093b          	addw	s2,s2,a5
    80005db4:	fc1ff06f          	j	80005d74 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005db8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005db8:	fe010113          	addi	sp,sp,-32
    80005dbc:	00113c23          	sd	ra,24(sp)
    80005dc0:	00813823          	sd	s0,16(sp)
    80005dc4:	00913423          	sd	s1,8(sp)
    80005dc8:	02010413          	addi	s0,sp,32
    80005dcc:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005dd0:	00a00513          	li	a0,10
    80005dd4:	ffffd097          	auipc	ra,0xffffd
    80005dd8:	8b0080e7          	jalr	-1872(ra) # 80002684 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005ddc:	00003517          	auipc	a0,0x3
    80005de0:	53450513          	addi	a0,a0,1332 # 80009310 <CONSOLE_STATUS+0x300>
    80005de4:	00000097          	auipc	ra,0x0
    80005de8:	a0c080e7          	jalr	-1524(ra) # 800057f0 <_Z11printStringPKc>
    while (getCnt()) {
    80005dec:	00048513          	mv	a0,s1
    80005df0:	00000097          	auipc	ra,0x0
    80005df4:	f40080e7          	jalr	-192(ra) # 80005d30 <_ZN9BufferCPP6getCntEv>
    80005df8:	02050c63          	beqz	a0,80005e30 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005dfc:	0084b783          	ld	a5,8(s1)
    80005e00:	0104a703          	lw	a4,16(s1)
    80005e04:	00271713          	slli	a4,a4,0x2
    80005e08:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005e0c:	0007c503          	lbu	a0,0(a5)
    80005e10:	ffffd097          	auipc	ra,0xffffd
    80005e14:	874080e7          	jalr	-1932(ra) # 80002684 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005e18:	0104a783          	lw	a5,16(s1)
    80005e1c:	0017879b          	addiw	a5,a5,1
    80005e20:	0004a703          	lw	a4,0(s1)
    80005e24:	02e7e7bb          	remw	a5,a5,a4
    80005e28:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005e2c:	fc1ff06f          	j	80005dec <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005e30:	02100513          	li	a0,33
    80005e34:	ffffd097          	auipc	ra,0xffffd
    80005e38:	850080e7          	jalr	-1968(ra) # 80002684 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005e3c:	00a00513          	li	a0,10
    80005e40:	ffffd097          	auipc	ra,0xffffd
    80005e44:	844080e7          	jalr	-1980(ra) # 80002684 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005e48:	0084b503          	ld	a0,8(s1)
    80005e4c:	ffffb097          	auipc	ra,0xffffb
    80005e50:	444080e7          	jalr	1092(ra) # 80001290 <_Z8mem_freePv>
    delete itemAvailable;
    80005e54:	0204b503          	ld	a0,32(s1)
    80005e58:	00050863          	beqz	a0,80005e68 <_ZN9BufferCPPD1Ev+0xb0>
    80005e5c:	00053783          	ld	a5,0(a0)
    80005e60:	0087b783          	ld	a5,8(a5)
    80005e64:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005e68:	0184b503          	ld	a0,24(s1)
    80005e6c:	00050863          	beqz	a0,80005e7c <_ZN9BufferCPPD1Ev+0xc4>
    80005e70:	00053783          	ld	a5,0(a0)
    80005e74:	0087b783          	ld	a5,8(a5)
    80005e78:	000780e7          	jalr	a5
    delete mutexTail;
    80005e7c:	0304b503          	ld	a0,48(s1)
    80005e80:	00050863          	beqz	a0,80005e90 <_ZN9BufferCPPD1Ev+0xd8>
    80005e84:	00053783          	ld	a5,0(a0)
    80005e88:	0087b783          	ld	a5,8(a5)
    80005e8c:	000780e7          	jalr	a5
    delete mutexHead;
    80005e90:	0284b503          	ld	a0,40(s1)
    80005e94:	00050863          	beqz	a0,80005ea4 <_ZN9BufferCPPD1Ev+0xec>
    80005e98:	00053783          	ld	a5,0(a0)
    80005e9c:	0087b783          	ld	a5,8(a5)
    80005ea0:	000780e7          	jalr	a5
}
    80005ea4:	01813083          	ld	ra,24(sp)
    80005ea8:	01013403          	ld	s0,16(sp)
    80005eac:	00813483          	ld	s1,8(sp)
    80005eb0:	02010113          	addi	sp,sp,32
    80005eb4:	00008067          	ret

0000000080005eb8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005eb8:	fe010113          	addi	sp,sp,-32
    80005ebc:	00113c23          	sd	ra,24(sp)
    80005ec0:	00813823          	sd	s0,16(sp)
    80005ec4:	00913423          	sd	s1,8(sp)
    80005ec8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005ecc:	00003517          	auipc	a0,0x3
    80005ed0:	45c50513          	addi	a0,a0,1116 # 80009328 <CONSOLE_STATUS+0x318>
    80005ed4:	00000097          	auipc	ra,0x0
    80005ed8:	91c080e7          	jalr	-1764(ra) # 800057f0 <_Z11printStringPKc>
    int test = getc() - '0';
    80005edc:	ffffb097          	auipc	ra,0xffffb
    80005ee0:	648080e7          	jalr	1608(ra) # 80001524 <_Z4getcv>
    80005ee4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005ee8:	ffffb097          	auipc	ra,0xffffb
    80005eec:	63c080e7          	jalr	1596(ra) # 80001524 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005ef0:	00700793          	li	a5,7
    80005ef4:	1097e263          	bltu	a5,s1,80005ff8 <_Z8userMainv+0x140>
    80005ef8:	00249493          	slli	s1,s1,0x2
    80005efc:	00003717          	auipc	a4,0x3
    80005f00:	68470713          	addi	a4,a4,1668 # 80009580 <CONSOLE_STATUS+0x570>
    80005f04:	00e484b3          	add	s1,s1,a4
    80005f08:	0004a783          	lw	a5,0(s1)
    80005f0c:	00e787b3          	add	a5,a5,a4
    80005f10:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005f14:	fffff097          	auipc	ra,0xfffff
    80005f18:	f54080e7          	jalr	-172(ra) # 80004e68 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005f1c:	00003517          	auipc	a0,0x3
    80005f20:	42c50513          	addi	a0,a0,1068 # 80009348 <CONSOLE_STATUS+0x338>
    80005f24:	00000097          	auipc	ra,0x0
    80005f28:	8cc080e7          	jalr	-1844(ra) # 800057f0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005f2c:	01813083          	ld	ra,24(sp)
    80005f30:	01013403          	ld	s0,16(sp)
    80005f34:	00813483          	ld	s1,8(sp)
    80005f38:	02010113          	addi	sp,sp,32
    80005f3c:	00008067          	ret
            Threads_CPP_API_test();
    80005f40:	ffffe097          	auipc	ra,0xffffe
    80005f44:	e08080e7          	jalr	-504(ra) # 80003d48 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005f48:	00003517          	auipc	a0,0x3
    80005f4c:	44050513          	addi	a0,a0,1088 # 80009388 <CONSOLE_STATUS+0x378>
    80005f50:	00000097          	auipc	ra,0x0
    80005f54:	8a0080e7          	jalr	-1888(ra) # 800057f0 <_Z11printStringPKc>
            break;
    80005f58:	fd5ff06f          	j	80005f2c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005f5c:	ffffd097          	auipc	ra,0xffffd
    80005f60:	640080e7          	jalr	1600(ra) # 8000359c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005f64:	00003517          	auipc	a0,0x3
    80005f68:	46450513          	addi	a0,a0,1124 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005f6c:	00000097          	auipc	ra,0x0
    80005f70:	884080e7          	jalr	-1916(ra) # 800057f0 <_Z11printStringPKc>
            break;
    80005f74:	fb9ff06f          	j	80005f2c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005f78:	fffff097          	auipc	ra,0xfffff
    80005f7c:	234080e7          	jalr	564(ra) # 800051ac <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005f80:	00003517          	auipc	a0,0x3
    80005f84:	49850513          	addi	a0,a0,1176 # 80009418 <CONSOLE_STATUS+0x408>
    80005f88:	00000097          	auipc	ra,0x0
    80005f8c:	868080e7          	jalr	-1944(ra) # 800057f0 <_Z11printStringPKc>
            break;
    80005f90:	f9dff06f          	j	80005f2c <_Z8userMainv+0x74>
            testSleeping();
    80005f94:	00000097          	auipc	ra,0x0
    80005f98:	11c080e7          	jalr	284(ra) # 800060b0 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005f9c:	00003517          	auipc	a0,0x3
    80005fa0:	4d450513          	addi	a0,a0,1236 # 80009470 <CONSOLE_STATUS+0x460>
    80005fa4:	00000097          	auipc	ra,0x0
    80005fa8:	84c080e7          	jalr	-1972(ra) # 800057f0 <_Z11printStringPKc>
            break;
    80005fac:	f81ff06f          	j	80005f2c <_Z8userMainv+0x74>
            testConsumerProducer();
    80005fb0:	ffffe097          	auipc	ra,0xffffe
    80005fb4:	258080e7          	jalr	600(ra) # 80004208 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005fb8:	00003517          	auipc	a0,0x3
    80005fbc:	4e850513          	addi	a0,a0,1256 # 800094a0 <CONSOLE_STATUS+0x490>
    80005fc0:	00000097          	auipc	ra,0x0
    80005fc4:	830080e7          	jalr	-2000(ra) # 800057f0 <_Z11printStringPKc>
            break;
    80005fc8:	f65ff06f          	j	80005f2c <_Z8userMainv+0x74>
            System_Mode_test();
    80005fcc:	00000097          	auipc	ra,0x0
    80005fd0:	658080e7          	jalr	1624(ra) # 80006624 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005fd4:	00003517          	auipc	a0,0x3
    80005fd8:	50c50513          	addi	a0,a0,1292 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005fdc:	00000097          	auipc	ra,0x0
    80005fe0:	814080e7          	jalr	-2028(ra) # 800057f0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005fe4:	00003517          	auipc	a0,0x3
    80005fe8:	51c50513          	addi	a0,a0,1308 # 80009500 <CONSOLE_STATUS+0x4f0>
    80005fec:	00000097          	auipc	ra,0x0
    80005ff0:	804080e7          	jalr	-2044(ra) # 800057f0 <_Z11printStringPKc>
            break;
    80005ff4:	f39ff06f          	j	80005f2c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005ff8:	00003517          	auipc	a0,0x3
    80005ffc:	56050513          	addi	a0,a0,1376 # 80009558 <CONSOLE_STATUS+0x548>
    80006000:	fffff097          	auipc	ra,0xfffff
    80006004:	7f0080e7          	jalr	2032(ra) # 800057f0 <_Z11printStringPKc>
    80006008:	f25ff06f          	j	80005f2c <_Z8userMainv+0x74>

000000008000600c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000600c:	fe010113          	addi	sp,sp,-32
    80006010:	00113c23          	sd	ra,24(sp)
    80006014:	00813823          	sd	s0,16(sp)
    80006018:	00913423          	sd	s1,8(sp)
    8000601c:	01213023          	sd	s2,0(sp)
    80006020:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006024:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006028:	00600493          	li	s1,6
    while (--i > 0) {
    8000602c:	fff4849b          	addiw	s1,s1,-1
    80006030:	04905463          	blez	s1,80006078 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006034:	00003517          	auipc	a0,0x3
    80006038:	56c50513          	addi	a0,a0,1388 # 800095a0 <CONSOLE_STATUS+0x590>
    8000603c:	fffff097          	auipc	ra,0xfffff
    80006040:	7b4080e7          	jalr	1972(ra) # 800057f0 <_Z11printStringPKc>
        printInt(sleep_time);
    80006044:	00000613          	li	a2,0
    80006048:	00a00593          	li	a1,10
    8000604c:	0009051b          	sext.w	a0,s2
    80006050:	00000097          	auipc	ra,0x0
    80006054:	950080e7          	jalr	-1712(ra) # 800059a0 <_Z8printIntiii>
        printString(" !\n");
    80006058:	00003517          	auipc	a0,0x3
    8000605c:	55050513          	addi	a0,a0,1360 # 800095a8 <CONSOLE_STATUS+0x598>
    80006060:	fffff097          	auipc	ra,0xfffff
    80006064:	790080e7          	jalr	1936(ra) # 800057f0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006068:	00090513          	mv	a0,s2
    8000606c:	ffffb097          	auipc	ra,0xffffb
    80006070:	480080e7          	jalr	1152(ra) # 800014ec <_Z10time_sleepm>
    while (--i > 0) {
    80006074:	fb9ff06f          	j	8000602c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006078:	00a00793          	li	a5,10
    8000607c:	02f95933          	divu	s2,s2,a5
    80006080:	fff90913          	addi	s2,s2,-1
    80006084:	00006797          	auipc	a5,0x6
    80006088:	b0c78793          	addi	a5,a5,-1268 # 8000bb90 <_ZL8finished>
    8000608c:	01278933          	add	s2,a5,s2
    80006090:	00100793          	li	a5,1
    80006094:	00f90023          	sb	a5,0(s2)
}
    80006098:	01813083          	ld	ra,24(sp)
    8000609c:	01013403          	ld	s0,16(sp)
    800060a0:	00813483          	ld	s1,8(sp)
    800060a4:	00013903          	ld	s2,0(sp)
    800060a8:	02010113          	addi	sp,sp,32
    800060ac:	00008067          	ret

00000000800060b0 <_Z12testSleepingv>:

void testSleeping() {
    800060b0:	fc010113          	addi	sp,sp,-64
    800060b4:	02113c23          	sd	ra,56(sp)
    800060b8:	02813823          	sd	s0,48(sp)
    800060bc:	02913423          	sd	s1,40(sp)
    800060c0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800060c4:	00a00793          	li	a5,10
    800060c8:	fcf43823          	sd	a5,-48(s0)
    800060cc:	01400793          	li	a5,20
    800060d0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800060d4:	00000493          	li	s1,0
    800060d8:	02c0006f          	j	80006104 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800060dc:	00349793          	slli	a5,s1,0x3
    800060e0:	fd040613          	addi	a2,s0,-48
    800060e4:	00f60633          	add	a2,a2,a5
    800060e8:	00000597          	auipc	a1,0x0
    800060ec:	f2458593          	addi	a1,a1,-220 # 8000600c <_ZL9sleepyRunPv>
    800060f0:	fc040513          	addi	a0,s0,-64
    800060f4:	00f50533          	add	a0,a0,a5
    800060f8:	ffffb097          	auipc	ra,0xffffb
    800060fc:	230080e7          	jalr	560(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006100:	0014849b          	addiw	s1,s1,1
    80006104:	00100793          	li	a5,1
    80006108:	fc97dae3          	bge	a5,s1,800060dc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000610c:	00006797          	auipc	a5,0x6
    80006110:	a847c783          	lbu	a5,-1404(a5) # 8000bb90 <_ZL8finished>
    80006114:	fe078ce3          	beqz	a5,8000610c <_Z12testSleepingv+0x5c>
    80006118:	00006797          	auipc	a5,0x6
    8000611c:	a797c783          	lbu	a5,-1415(a5) # 8000bb91 <_ZL8finished+0x1>
    80006120:	fe0786e3          	beqz	a5,8000610c <_Z12testSleepingv+0x5c>
}
    80006124:	03813083          	ld	ra,56(sp)
    80006128:	03013403          	ld	s0,48(sp)
    8000612c:	02813483          	ld	s1,40(sp)
    80006130:	04010113          	addi	sp,sp,64
    80006134:	00008067          	ret

0000000080006138 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006138:	fe010113          	addi	sp,sp,-32
    8000613c:	00113c23          	sd	ra,24(sp)
    80006140:	00813823          	sd	s0,16(sp)
    80006144:	00913423          	sd	s1,8(sp)
    80006148:	01213023          	sd	s2,0(sp)
    8000614c:	02010413          	addi	s0,sp,32
    80006150:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006154:	00100793          	li	a5,1
    80006158:	02a7f863          	bgeu	a5,a0,80006188 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000615c:	00a00793          	li	a5,10
    80006160:	02f577b3          	remu	a5,a0,a5
    80006164:	02078e63          	beqz	a5,800061a0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006168:	fff48513          	addi	a0,s1,-1
    8000616c:	00000097          	auipc	ra,0x0
    80006170:	fcc080e7          	jalr	-52(ra) # 80006138 <_ZL9fibonaccim>
    80006174:	00050913          	mv	s2,a0
    80006178:	ffe48513          	addi	a0,s1,-2
    8000617c:	00000097          	auipc	ra,0x0
    80006180:	fbc080e7          	jalr	-68(ra) # 80006138 <_ZL9fibonaccim>
    80006184:	00a90533          	add	a0,s2,a0
}
    80006188:	01813083          	ld	ra,24(sp)
    8000618c:	01013403          	ld	s0,16(sp)
    80006190:	00813483          	ld	s1,8(sp)
    80006194:	00013903          	ld	s2,0(sp)
    80006198:	02010113          	addi	sp,sp,32
    8000619c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800061a0:	ffffb097          	auipc	ra,0xffffb
    800061a4:	244080e7          	jalr	580(ra) # 800013e4 <_Z15thread_dispatchv>
    800061a8:	fc1ff06f          	j	80006168 <_ZL9fibonaccim+0x30>

00000000800061ac <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800061ac:	fe010113          	addi	sp,sp,-32
    800061b0:	00113c23          	sd	ra,24(sp)
    800061b4:	00813823          	sd	s0,16(sp)
    800061b8:	00913423          	sd	s1,8(sp)
    800061bc:	01213023          	sd	s2,0(sp)
    800061c0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800061c4:	00a00493          	li	s1,10
    800061c8:	0400006f          	j	80006208 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800061cc:	00003517          	auipc	a0,0x3
    800061d0:	0ac50513          	addi	a0,a0,172 # 80009278 <CONSOLE_STATUS+0x268>
    800061d4:	fffff097          	auipc	ra,0xfffff
    800061d8:	61c080e7          	jalr	1564(ra) # 800057f0 <_Z11printStringPKc>
    800061dc:	00000613          	li	a2,0
    800061e0:	00a00593          	li	a1,10
    800061e4:	00048513          	mv	a0,s1
    800061e8:	fffff097          	auipc	ra,0xfffff
    800061ec:	7b8080e7          	jalr	1976(ra) # 800059a0 <_Z8printIntiii>
    800061f0:	00003517          	auipc	a0,0x3
    800061f4:	27850513          	addi	a0,a0,632 # 80009468 <CONSOLE_STATUS+0x458>
    800061f8:	fffff097          	auipc	ra,0xfffff
    800061fc:	5f8080e7          	jalr	1528(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006200:	0014849b          	addiw	s1,s1,1
    80006204:	0ff4f493          	andi	s1,s1,255
    80006208:	00c00793          	li	a5,12
    8000620c:	fc97f0e3          	bgeu	a5,s1,800061cc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006210:	00003517          	auipc	a0,0x3
    80006214:	07050513          	addi	a0,a0,112 # 80009280 <CONSOLE_STATUS+0x270>
    80006218:	fffff097          	auipc	ra,0xfffff
    8000621c:	5d8080e7          	jalr	1496(ra) # 800057f0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006220:	00500313          	li	t1,5
    thread_dispatch();
    80006224:	ffffb097          	auipc	ra,0xffffb
    80006228:	1c0080e7          	jalr	448(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000622c:	01000513          	li	a0,16
    80006230:	00000097          	auipc	ra,0x0
    80006234:	f08080e7          	jalr	-248(ra) # 80006138 <_ZL9fibonaccim>
    80006238:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000623c:	00003517          	auipc	a0,0x3
    80006240:	05450513          	addi	a0,a0,84 # 80009290 <CONSOLE_STATUS+0x280>
    80006244:	fffff097          	auipc	ra,0xfffff
    80006248:	5ac080e7          	jalr	1452(ra) # 800057f0 <_Z11printStringPKc>
    8000624c:	00000613          	li	a2,0
    80006250:	00a00593          	li	a1,10
    80006254:	0009051b          	sext.w	a0,s2
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	748080e7          	jalr	1864(ra) # 800059a0 <_Z8printIntiii>
    80006260:	00003517          	auipc	a0,0x3
    80006264:	20850513          	addi	a0,a0,520 # 80009468 <CONSOLE_STATUS+0x458>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	588080e7          	jalr	1416(ra) # 800057f0 <_Z11printStringPKc>
    80006270:	0400006f          	j	800062b0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006274:	00003517          	auipc	a0,0x3
    80006278:	00450513          	addi	a0,a0,4 # 80009278 <CONSOLE_STATUS+0x268>
    8000627c:	fffff097          	auipc	ra,0xfffff
    80006280:	574080e7          	jalr	1396(ra) # 800057f0 <_Z11printStringPKc>
    80006284:	00000613          	li	a2,0
    80006288:	00a00593          	li	a1,10
    8000628c:	00048513          	mv	a0,s1
    80006290:	fffff097          	auipc	ra,0xfffff
    80006294:	710080e7          	jalr	1808(ra) # 800059a0 <_Z8printIntiii>
    80006298:	00003517          	auipc	a0,0x3
    8000629c:	1d050513          	addi	a0,a0,464 # 80009468 <CONSOLE_STATUS+0x458>
    800062a0:	fffff097          	auipc	ra,0xfffff
    800062a4:	550080e7          	jalr	1360(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800062a8:	0014849b          	addiw	s1,s1,1
    800062ac:	0ff4f493          	andi	s1,s1,255
    800062b0:	00f00793          	li	a5,15
    800062b4:	fc97f0e3          	bgeu	a5,s1,80006274 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800062b8:	00003517          	auipc	a0,0x3
    800062bc:	fe850513          	addi	a0,a0,-24 # 800092a0 <CONSOLE_STATUS+0x290>
    800062c0:	fffff097          	auipc	ra,0xfffff
    800062c4:	530080e7          	jalr	1328(ra) # 800057f0 <_Z11printStringPKc>
    finishedD = true;
    800062c8:	00100793          	li	a5,1
    800062cc:	00006717          	auipc	a4,0x6
    800062d0:	8cf70323          	sb	a5,-1850(a4) # 8000bb92 <_ZL9finishedD>
    thread_dispatch();
    800062d4:	ffffb097          	auipc	ra,0xffffb
    800062d8:	110080e7          	jalr	272(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800062dc:	01813083          	ld	ra,24(sp)
    800062e0:	01013403          	ld	s0,16(sp)
    800062e4:	00813483          	ld	s1,8(sp)
    800062e8:	00013903          	ld	s2,0(sp)
    800062ec:	02010113          	addi	sp,sp,32
    800062f0:	00008067          	ret

00000000800062f4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800062f4:	fe010113          	addi	sp,sp,-32
    800062f8:	00113c23          	sd	ra,24(sp)
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00913423          	sd	s1,8(sp)
    80006304:	01213023          	sd	s2,0(sp)
    80006308:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000630c:	00000493          	li	s1,0
    80006310:	0400006f          	j	80006350 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006314:	00003517          	auipc	a0,0x3
    80006318:	f3450513          	addi	a0,a0,-204 # 80009248 <CONSOLE_STATUS+0x238>
    8000631c:	fffff097          	auipc	ra,0xfffff
    80006320:	4d4080e7          	jalr	1236(ra) # 800057f0 <_Z11printStringPKc>
    80006324:	00000613          	li	a2,0
    80006328:	00a00593          	li	a1,10
    8000632c:	00048513          	mv	a0,s1
    80006330:	fffff097          	auipc	ra,0xfffff
    80006334:	670080e7          	jalr	1648(ra) # 800059a0 <_Z8printIntiii>
    80006338:	00003517          	auipc	a0,0x3
    8000633c:	13050513          	addi	a0,a0,304 # 80009468 <CONSOLE_STATUS+0x458>
    80006340:	fffff097          	auipc	ra,0xfffff
    80006344:	4b0080e7          	jalr	1200(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006348:	0014849b          	addiw	s1,s1,1
    8000634c:	0ff4f493          	andi	s1,s1,255
    80006350:	00200793          	li	a5,2
    80006354:	fc97f0e3          	bgeu	a5,s1,80006314 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006358:	00003517          	auipc	a0,0x3
    8000635c:	ef850513          	addi	a0,a0,-264 # 80009250 <CONSOLE_STATUS+0x240>
    80006360:	fffff097          	auipc	ra,0xfffff
    80006364:	490080e7          	jalr	1168(ra) # 800057f0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006368:	00700313          	li	t1,7
    thread_dispatch();
    8000636c:	ffffb097          	auipc	ra,0xffffb
    80006370:	078080e7          	jalr	120(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006374:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006378:	00003517          	auipc	a0,0x3
    8000637c:	ee850513          	addi	a0,a0,-280 # 80009260 <CONSOLE_STATUS+0x250>
    80006380:	fffff097          	auipc	ra,0xfffff
    80006384:	470080e7          	jalr	1136(ra) # 800057f0 <_Z11printStringPKc>
    80006388:	00000613          	li	a2,0
    8000638c:	00a00593          	li	a1,10
    80006390:	0009051b          	sext.w	a0,s2
    80006394:	fffff097          	auipc	ra,0xfffff
    80006398:	60c080e7          	jalr	1548(ra) # 800059a0 <_Z8printIntiii>
    8000639c:	00003517          	auipc	a0,0x3
    800063a0:	0cc50513          	addi	a0,a0,204 # 80009468 <CONSOLE_STATUS+0x458>
    800063a4:	fffff097          	auipc	ra,0xfffff
    800063a8:	44c080e7          	jalr	1100(ra) # 800057f0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800063ac:	00c00513          	li	a0,12
    800063b0:	00000097          	auipc	ra,0x0
    800063b4:	d88080e7          	jalr	-632(ra) # 80006138 <_ZL9fibonaccim>
    800063b8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800063bc:	00003517          	auipc	a0,0x3
    800063c0:	eac50513          	addi	a0,a0,-340 # 80009268 <CONSOLE_STATUS+0x258>
    800063c4:	fffff097          	auipc	ra,0xfffff
    800063c8:	42c080e7          	jalr	1068(ra) # 800057f0 <_Z11printStringPKc>
    800063cc:	00000613          	li	a2,0
    800063d0:	00a00593          	li	a1,10
    800063d4:	0009051b          	sext.w	a0,s2
    800063d8:	fffff097          	auipc	ra,0xfffff
    800063dc:	5c8080e7          	jalr	1480(ra) # 800059a0 <_Z8printIntiii>
    800063e0:	00003517          	auipc	a0,0x3
    800063e4:	08850513          	addi	a0,a0,136 # 80009468 <CONSOLE_STATUS+0x458>
    800063e8:	fffff097          	auipc	ra,0xfffff
    800063ec:	408080e7          	jalr	1032(ra) # 800057f0 <_Z11printStringPKc>
    800063f0:	0400006f          	j	80006430 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800063f4:	00003517          	auipc	a0,0x3
    800063f8:	e5450513          	addi	a0,a0,-428 # 80009248 <CONSOLE_STATUS+0x238>
    800063fc:	fffff097          	auipc	ra,0xfffff
    80006400:	3f4080e7          	jalr	1012(ra) # 800057f0 <_Z11printStringPKc>
    80006404:	00000613          	li	a2,0
    80006408:	00a00593          	li	a1,10
    8000640c:	00048513          	mv	a0,s1
    80006410:	fffff097          	auipc	ra,0xfffff
    80006414:	590080e7          	jalr	1424(ra) # 800059a0 <_Z8printIntiii>
    80006418:	00003517          	auipc	a0,0x3
    8000641c:	05050513          	addi	a0,a0,80 # 80009468 <CONSOLE_STATUS+0x458>
    80006420:	fffff097          	auipc	ra,0xfffff
    80006424:	3d0080e7          	jalr	976(ra) # 800057f0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006428:	0014849b          	addiw	s1,s1,1
    8000642c:	0ff4f493          	andi	s1,s1,255
    80006430:	00500793          	li	a5,5
    80006434:	fc97f0e3          	bgeu	a5,s1,800063f4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006438:	00003517          	auipc	a0,0x3
    8000643c:	de850513          	addi	a0,a0,-536 # 80009220 <CONSOLE_STATUS+0x210>
    80006440:	fffff097          	auipc	ra,0xfffff
    80006444:	3b0080e7          	jalr	944(ra) # 800057f0 <_Z11printStringPKc>
    finishedC = true;
    80006448:	00100793          	li	a5,1
    8000644c:	00005717          	auipc	a4,0x5
    80006450:	74f703a3          	sb	a5,1863(a4) # 8000bb93 <_ZL9finishedC>
    thread_dispatch();
    80006454:	ffffb097          	auipc	ra,0xffffb
    80006458:	f90080e7          	jalr	-112(ra) # 800013e4 <_Z15thread_dispatchv>
}
    8000645c:	01813083          	ld	ra,24(sp)
    80006460:	01013403          	ld	s0,16(sp)
    80006464:	00813483          	ld	s1,8(sp)
    80006468:	00013903          	ld	s2,0(sp)
    8000646c:	02010113          	addi	sp,sp,32
    80006470:	00008067          	ret

0000000080006474 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006474:	fe010113          	addi	sp,sp,-32
    80006478:	00113c23          	sd	ra,24(sp)
    8000647c:	00813823          	sd	s0,16(sp)
    80006480:	00913423          	sd	s1,8(sp)
    80006484:	01213023          	sd	s2,0(sp)
    80006488:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000648c:	00000913          	li	s2,0
    80006490:	0400006f          	j	800064d0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006494:	ffffb097          	auipc	ra,0xffffb
    80006498:	f50080e7          	jalr	-176(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000649c:	00148493          	addi	s1,s1,1
    800064a0:	000027b7          	lui	a5,0x2
    800064a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800064a8:	0097ee63          	bltu	a5,s1,800064c4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800064ac:	00000713          	li	a4,0
    800064b0:	000077b7          	lui	a5,0x7
    800064b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800064b8:	fce7eee3          	bltu	a5,a4,80006494 <_ZL11workerBodyBPv+0x20>
    800064bc:	00170713          	addi	a4,a4,1
    800064c0:	ff1ff06f          	j	800064b0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800064c4:	00a00793          	li	a5,10
    800064c8:	04f90663          	beq	s2,a5,80006514 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800064cc:	00190913          	addi	s2,s2,1
    800064d0:	00f00793          	li	a5,15
    800064d4:	0527e463          	bltu	a5,s2,8000651c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	d5850513          	addi	a0,a0,-680 # 80009230 <CONSOLE_STATUS+0x220>
    800064e0:	fffff097          	auipc	ra,0xfffff
    800064e4:	310080e7          	jalr	784(ra) # 800057f0 <_Z11printStringPKc>
    800064e8:	00000613          	li	a2,0
    800064ec:	00a00593          	li	a1,10
    800064f0:	0009051b          	sext.w	a0,s2
    800064f4:	fffff097          	auipc	ra,0xfffff
    800064f8:	4ac080e7          	jalr	1196(ra) # 800059a0 <_Z8printIntiii>
    800064fc:	00003517          	auipc	a0,0x3
    80006500:	f6c50513          	addi	a0,a0,-148 # 80009468 <CONSOLE_STATUS+0x458>
    80006504:	fffff097          	auipc	ra,0xfffff
    80006508:	2ec080e7          	jalr	748(ra) # 800057f0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000650c:	00000493          	li	s1,0
    80006510:	f91ff06f          	j	800064a0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006514:	14102ff3          	csrr	t6,sepc
    80006518:	fb5ff06f          	j	800064cc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000651c:	00003517          	auipc	a0,0x3
    80006520:	d1c50513          	addi	a0,a0,-740 # 80009238 <CONSOLE_STATUS+0x228>
    80006524:	fffff097          	auipc	ra,0xfffff
    80006528:	2cc080e7          	jalr	716(ra) # 800057f0 <_Z11printStringPKc>
    finishedB = true;
    8000652c:	00100793          	li	a5,1
    80006530:	00005717          	auipc	a4,0x5
    80006534:	66f70223          	sb	a5,1636(a4) # 8000bb94 <_ZL9finishedB>
    thread_dispatch();
    80006538:	ffffb097          	auipc	ra,0xffffb
    8000653c:	eac080e7          	jalr	-340(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80006540:	01813083          	ld	ra,24(sp)
    80006544:	01013403          	ld	s0,16(sp)
    80006548:	00813483          	ld	s1,8(sp)
    8000654c:	00013903          	ld	s2,0(sp)
    80006550:	02010113          	addi	sp,sp,32
    80006554:	00008067          	ret

0000000080006558 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006558:	fe010113          	addi	sp,sp,-32
    8000655c:	00113c23          	sd	ra,24(sp)
    80006560:	00813823          	sd	s0,16(sp)
    80006564:	00913423          	sd	s1,8(sp)
    80006568:	01213023          	sd	s2,0(sp)
    8000656c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006570:	00000913          	li	s2,0
    80006574:	0380006f          	j	800065ac <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006578:	ffffb097          	auipc	ra,0xffffb
    8000657c:	e6c080e7          	jalr	-404(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006580:	00148493          	addi	s1,s1,1
    80006584:	000027b7          	lui	a5,0x2
    80006588:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000658c:	0097ee63          	bltu	a5,s1,800065a8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006590:	00000713          	li	a4,0
    80006594:	000077b7          	lui	a5,0x7
    80006598:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000659c:	fce7eee3          	bltu	a5,a4,80006578 <_ZL11workerBodyAPv+0x20>
    800065a0:	00170713          	addi	a4,a4,1
    800065a4:	ff1ff06f          	j	80006594 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800065a8:	00190913          	addi	s2,s2,1
    800065ac:	00900793          	li	a5,9
    800065b0:	0527e063          	bltu	a5,s2,800065f0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800065b4:	00003517          	auipc	a0,0x3
    800065b8:	c6450513          	addi	a0,a0,-924 # 80009218 <CONSOLE_STATUS+0x208>
    800065bc:	fffff097          	auipc	ra,0xfffff
    800065c0:	234080e7          	jalr	564(ra) # 800057f0 <_Z11printStringPKc>
    800065c4:	00000613          	li	a2,0
    800065c8:	00a00593          	li	a1,10
    800065cc:	0009051b          	sext.w	a0,s2
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	3d0080e7          	jalr	976(ra) # 800059a0 <_Z8printIntiii>
    800065d8:	00003517          	auipc	a0,0x3
    800065dc:	e9050513          	addi	a0,a0,-368 # 80009468 <CONSOLE_STATUS+0x458>
    800065e0:	fffff097          	auipc	ra,0xfffff
    800065e4:	210080e7          	jalr	528(ra) # 800057f0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800065e8:	00000493          	li	s1,0
    800065ec:	f99ff06f          	j	80006584 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800065f0:	00003517          	auipc	a0,0x3
    800065f4:	c3050513          	addi	a0,a0,-976 # 80009220 <CONSOLE_STATUS+0x210>
    800065f8:	fffff097          	auipc	ra,0xfffff
    800065fc:	1f8080e7          	jalr	504(ra) # 800057f0 <_Z11printStringPKc>
    finishedA = true;
    80006600:	00100793          	li	a5,1
    80006604:	00005717          	auipc	a4,0x5
    80006608:	58f708a3          	sb	a5,1425(a4) # 8000bb95 <_ZL9finishedA>
}
    8000660c:	01813083          	ld	ra,24(sp)
    80006610:	01013403          	ld	s0,16(sp)
    80006614:	00813483          	ld	s1,8(sp)
    80006618:	00013903          	ld	s2,0(sp)
    8000661c:	02010113          	addi	sp,sp,32
    80006620:	00008067          	ret

0000000080006624 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006624:	fd010113          	addi	sp,sp,-48
    80006628:	02113423          	sd	ra,40(sp)
    8000662c:	02813023          	sd	s0,32(sp)
    80006630:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006634:	00000613          	li	a2,0
    80006638:	00000597          	auipc	a1,0x0
    8000663c:	f2058593          	addi	a1,a1,-224 # 80006558 <_ZL11workerBodyAPv>
    80006640:	fd040513          	addi	a0,s0,-48
    80006644:	ffffb097          	auipc	ra,0xffffb
    80006648:	ce4080e7          	jalr	-796(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000664c:	00003517          	auipc	a0,0x3
    80006650:	c6450513          	addi	a0,a0,-924 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006654:	fffff097          	auipc	ra,0xfffff
    80006658:	19c080e7          	jalr	412(ra) # 800057f0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000665c:	00000613          	li	a2,0
    80006660:	00000597          	auipc	a1,0x0
    80006664:	e1458593          	addi	a1,a1,-492 # 80006474 <_ZL11workerBodyBPv>
    80006668:	fd840513          	addi	a0,s0,-40
    8000666c:	ffffb097          	auipc	ra,0xffffb
    80006670:	cbc080e7          	jalr	-836(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006674:	00003517          	auipc	a0,0x3
    80006678:	c5450513          	addi	a0,a0,-940 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000667c:	fffff097          	auipc	ra,0xfffff
    80006680:	174080e7          	jalr	372(ra) # 800057f0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006684:	00000613          	li	a2,0
    80006688:	00000597          	auipc	a1,0x0
    8000668c:	c6c58593          	addi	a1,a1,-916 # 800062f4 <_ZL11workerBodyCPv>
    80006690:	fe040513          	addi	a0,s0,-32
    80006694:	ffffb097          	auipc	ra,0xffffb
    80006698:	c94080e7          	jalr	-876(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000669c:	00003517          	auipc	a0,0x3
    800066a0:	c4450513          	addi	a0,a0,-956 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800066a4:	fffff097          	auipc	ra,0xfffff
    800066a8:	14c080e7          	jalr	332(ra) # 800057f0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800066ac:	00000613          	li	a2,0
    800066b0:	00000597          	auipc	a1,0x0
    800066b4:	afc58593          	addi	a1,a1,-1284 # 800061ac <_ZL11workerBodyDPv>
    800066b8:	fe840513          	addi	a0,s0,-24
    800066bc:	ffffb097          	auipc	ra,0xffffb
    800066c0:	c6c080e7          	jalr	-916(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800066c4:	00003517          	auipc	a0,0x3
    800066c8:	c3450513          	addi	a0,a0,-972 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800066cc:	fffff097          	auipc	ra,0xfffff
    800066d0:	124080e7          	jalr	292(ra) # 800057f0 <_Z11printStringPKc>
    800066d4:	00c0006f          	j	800066e0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	d0c080e7          	jalr	-756(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800066e0:	00005797          	auipc	a5,0x5
    800066e4:	4b57c783          	lbu	a5,1205(a5) # 8000bb95 <_ZL9finishedA>
    800066e8:	fe0788e3          	beqz	a5,800066d8 <_Z16System_Mode_testv+0xb4>
    800066ec:	00005797          	auipc	a5,0x5
    800066f0:	4a87c783          	lbu	a5,1192(a5) # 8000bb94 <_ZL9finishedB>
    800066f4:	fe0782e3          	beqz	a5,800066d8 <_Z16System_Mode_testv+0xb4>
    800066f8:	00005797          	auipc	a5,0x5
    800066fc:	49b7c783          	lbu	a5,1179(a5) # 8000bb93 <_ZL9finishedC>
    80006700:	fc078ce3          	beqz	a5,800066d8 <_Z16System_Mode_testv+0xb4>
    80006704:	00005797          	auipc	a5,0x5
    80006708:	48e7c783          	lbu	a5,1166(a5) # 8000bb92 <_ZL9finishedD>
    8000670c:	fc0786e3          	beqz	a5,800066d8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006710:	02813083          	ld	ra,40(sp)
    80006714:	02013403          	ld	s0,32(sp)
    80006718:	03010113          	addi	sp,sp,48
    8000671c:	00008067          	ret

0000000080006720 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006720:	fe010113          	addi	sp,sp,-32
    80006724:	00113c23          	sd	ra,24(sp)
    80006728:	00813823          	sd	s0,16(sp)
    8000672c:	00913423          	sd	s1,8(sp)
    80006730:	01213023          	sd	s2,0(sp)
    80006734:	02010413          	addi	s0,sp,32
    80006738:	00050493          	mv	s1,a0
    8000673c:	00058913          	mv	s2,a1
    80006740:	0015879b          	addiw	a5,a1,1
    80006744:	0007851b          	sext.w	a0,a5
    80006748:	00f4a023          	sw	a5,0(s1)
    8000674c:	0004a823          	sw	zero,16(s1)
    80006750:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006754:	00251513          	slli	a0,a0,0x2
    80006758:	ffffb097          	auipc	ra,0xffffb
    8000675c:	afc080e7          	jalr	-1284(ra) # 80001254 <_Z9mem_allocm>
    80006760:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006764:	00000593          	li	a1,0
    80006768:	02048513          	addi	a0,s1,32
    8000676c:	ffffb097          	auipc	ra,0xffffb
    80006770:	c9c080e7          	jalr	-868(ra) # 80001408 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006774:	00090593          	mv	a1,s2
    80006778:	01848513          	addi	a0,s1,24
    8000677c:	ffffb097          	auipc	ra,0xffffb
    80006780:	c8c080e7          	jalr	-884(ra) # 80001408 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006784:	00100593          	li	a1,1
    80006788:	02848513          	addi	a0,s1,40
    8000678c:	ffffb097          	auipc	ra,0xffffb
    80006790:	c7c080e7          	jalr	-900(ra) # 80001408 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006794:	00100593          	li	a1,1
    80006798:	03048513          	addi	a0,s1,48
    8000679c:	ffffb097          	auipc	ra,0xffffb
    800067a0:	c6c080e7          	jalr	-916(ra) # 80001408 <_Z8sem_openPP4_semj>
}
    800067a4:	01813083          	ld	ra,24(sp)
    800067a8:	01013403          	ld	s0,16(sp)
    800067ac:	00813483          	ld	s1,8(sp)
    800067b0:	00013903          	ld	s2,0(sp)
    800067b4:	02010113          	addi	sp,sp,32
    800067b8:	00008067          	ret

00000000800067bc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800067bc:	fe010113          	addi	sp,sp,-32
    800067c0:	00113c23          	sd	ra,24(sp)
    800067c4:	00813823          	sd	s0,16(sp)
    800067c8:	00913423          	sd	s1,8(sp)
    800067cc:	01213023          	sd	s2,0(sp)
    800067d0:	02010413          	addi	s0,sp,32
    800067d4:	00050493          	mv	s1,a0
    800067d8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800067dc:	01853503          	ld	a0,24(a0)
    800067e0:	ffffb097          	auipc	ra,0xffffb
    800067e4:	c9c080e7          	jalr	-868(ra) # 8000147c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800067e8:	0304b503          	ld	a0,48(s1)
    800067ec:	ffffb097          	auipc	ra,0xffffb
    800067f0:	c90080e7          	jalr	-880(ra) # 8000147c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800067f4:	0084b783          	ld	a5,8(s1)
    800067f8:	0144a703          	lw	a4,20(s1)
    800067fc:	00271713          	slli	a4,a4,0x2
    80006800:	00e787b3          	add	a5,a5,a4
    80006804:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006808:	0144a783          	lw	a5,20(s1)
    8000680c:	0017879b          	addiw	a5,a5,1
    80006810:	0004a703          	lw	a4,0(s1)
    80006814:	02e7e7bb          	remw	a5,a5,a4
    80006818:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000681c:	0304b503          	ld	a0,48(s1)
    80006820:	ffffb097          	auipc	ra,0xffffb
    80006824:	c94080e7          	jalr	-876(ra) # 800014b4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006828:	0204b503          	ld	a0,32(s1)
    8000682c:	ffffb097          	auipc	ra,0xffffb
    80006830:	c88080e7          	jalr	-888(ra) # 800014b4 <_Z10sem_signalP4_sem>

}
    80006834:	01813083          	ld	ra,24(sp)
    80006838:	01013403          	ld	s0,16(sp)
    8000683c:	00813483          	ld	s1,8(sp)
    80006840:	00013903          	ld	s2,0(sp)
    80006844:	02010113          	addi	sp,sp,32
    80006848:	00008067          	ret

000000008000684c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000684c:	fe010113          	addi	sp,sp,-32
    80006850:	00113c23          	sd	ra,24(sp)
    80006854:	00813823          	sd	s0,16(sp)
    80006858:	00913423          	sd	s1,8(sp)
    8000685c:	01213023          	sd	s2,0(sp)
    80006860:	02010413          	addi	s0,sp,32
    80006864:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006868:	02053503          	ld	a0,32(a0)
    8000686c:	ffffb097          	auipc	ra,0xffffb
    80006870:	c10080e7          	jalr	-1008(ra) # 8000147c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006874:	0284b503          	ld	a0,40(s1)
    80006878:	ffffb097          	auipc	ra,0xffffb
    8000687c:	c04080e7          	jalr	-1020(ra) # 8000147c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006880:	0084b703          	ld	a4,8(s1)
    80006884:	0104a783          	lw	a5,16(s1)
    80006888:	00279693          	slli	a3,a5,0x2
    8000688c:	00d70733          	add	a4,a4,a3
    80006890:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006894:	0017879b          	addiw	a5,a5,1
    80006898:	0004a703          	lw	a4,0(s1)
    8000689c:	02e7e7bb          	remw	a5,a5,a4
    800068a0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800068a4:	0284b503          	ld	a0,40(s1)
    800068a8:	ffffb097          	auipc	ra,0xffffb
    800068ac:	c0c080e7          	jalr	-1012(ra) # 800014b4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800068b0:	0184b503          	ld	a0,24(s1)
    800068b4:	ffffb097          	auipc	ra,0xffffb
    800068b8:	c00080e7          	jalr	-1024(ra) # 800014b4 <_Z10sem_signalP4_sem>

    return ret;
}
    800068bc:	00090513          	mv	a0,s2
    800068c0:	01813083          	ld	ra,24(sp)
    800068c4:	01013403          	ld	s0,16(sp)
    800068c8:	00813483          	ld	s1,8(sp)
    800068cc:	00013903          	ld	s2,0(sp)
    800068d0:	02010113          	addi	sp,sp,32
    800068d4:	00008067          	ret

00000000800068d8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800068d8:	fe010113          	addi	sp,sp,-32
    800068dc:	00113c23          	sd	ra,24(sp)
    800068e0:	00813823          	sd	s0,16(sp)
    800068e4:	00913423          	sd	s1,8(sp)
    800068e8:	01213023          	sd	s2,0(sp)
    800068ec:	02010413          	addi	s0,sp,32
    800068f0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800068f4:	02853503          	ld	a0,40(a0)
    800068f8:	ffffb097          	auipc	ra,0xffffb
    800068fc:	b84080e7          	jalr	-1148(ra) # 8000147c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006900:	0304b503          	ld	a0,48(s1)
    80006904:	ffffb097          	auipc	ra,0xffffb
    80006908:	b78080e7          	jalr	-1160(ra) # 8000147c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000690c:	0144a783          	lw	a5,20(s1)
    80006910:	0104a903          	lw	s2,16(s1)
    80006914:	0327ce63          	blt	a5,s2,80006950 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006918:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000691c:	0304b503          	ld	a0,48(s1)
    80006920:	ffffb097          	auipc	ra,0xffffb
    80006924:	b94080e7          	jalr	-1132(ra) # 800014b4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006928:	0284b503          	ld	a0,40(s1)
    8000692c:	ffffb097          	auipc	ra,0xffffb
    80006930:	b88080e7          	jalr	-1144(ra) # 800014b4 <_Z10sem_signalP4_sem>

    return ret;
}
    80006934:	00090513          	mv	a0,s2
    80006938:	01813083          	ld	ra,24(sp)
    8000693c:	01013403          	ld	s0,16(sp)
    80006940:	00813483          	ld	s1,8(sp)
    80006944:	00013903          	ld	s2,0(sp)
    80006948:	02010113          	addi	sp,sp,32
    8000694c:	00008067          	ret
        ret = cap - head + tail;
    80006950:	0004a703          	lw	a4,0(s1)
    80006954:	4127093b          	subw	s2,a4,s2
    80006958:	00f9093b          	addw	s2,s2,a5
    8000695c:	fc1ff06f          	j	8000691c <_ZN6Buffer6getCntEv+0x44>

0000000080006960 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006960:	fe010113          	addi	sp,sp,-32
    80006964:	00113c23          	sd	ra,24(sp)
    80006968:	00813823          	sd	s0,16(sp)
    8000696c:	00913423          	sd	s1,8(sp)
    80006970:	02010413          	addi	s0,sp,32
    80006974:	00050493          	mv	s1,a0
    putc('\n');
    80006978:	00a00513          	li	a0,10
    8000697c:	ffffb097          	auipc	ra,0xffffb
    80006980:	bdc080e7          	jalr	-1060(ra) # 80001558 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006984:	00003517          	auipc	a0,0x3
    80006988:	98c50513          	addi	a0,a0,-1652 # 80009310 <CONSOLE_STATUS+0x300>
    8000698c:	fffff097          	auipc	ra,0xfffff
    80006990:	e64080e7          	jalr	-412(ra) # 800057f0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006994:	00048513          	mv	a0,s1
    80006998:	00000097          	auipc	ra,0x0
    8000699c:	f40080e7          	jalr	-192(ra) # 800068d8 <_ZN6Buffer6getCntEv>
    800069a0:	02a05c63          	blez	a0,800069d8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800069a4:	0084b783          	ld	a5,8(s1)
    800069a8:	0104a703          	lw	a4,16(s1)
    800069ac:	00271713          	slli	a4,a4,0x2
    800069b0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800069b4:	0007c503          	lbu	a0,0(a5)
    800069b8:	ffffb097          	auipc	ra,0xffffb
    800069bc:	ba0080e7          	jalr	-1120(ra) # 80001558 <_Z4putcc>
        head = (head + 1) % cap;
    800069c0:	0104a783          	lw	a5,16(s1)
    800069c4:	0017879b          	addiw	a5,a5,1
    800069c8:	0004a703          	lw	a4,0(s1)
    800069cc:	02e7e7bb          	remw	a5,a5,a4
    800069d0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800069d4:	fc1ff06f          	j	80006994 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800069d8:	02100513          	li	a0,33
    800069dc:	ffffb097          	auipc	ra,0xffffb
    800069e0:	b7c080e7          	jalr	-1156(ra) # 80001558 <_Z4putcc>
    putc('\n');
    800069e4:	00a00513          	li	a0,10
    800069e8:	ffffb097          	auipc	ra,0xffffb
    800069ec:	b70080e7          	jalr	-1168(ra) # 80001558 <_Z4putcc>
    mem_free(buffer);
    800069f0:	0084b503          	ld	a0,8(s1)
    800069f4:	ffffb097          	auipc	ra,0xffffb
    800069f8:	89c080e7          	jalr	-1892(ra) # 80001290 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800069fc:	0204b503          	ld	a0,32(s1)
    80006a00:	ffffb097          	auipc	ra,0xffffb
    80006a04:	a44080e7          	jalr	-1468(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006a08:	0184b503          	ld	a0,24(s1)
    80006a0c:	ffffb097          	auipc	ra,0xffffb
    80006a10:	a38080e7          	jalr	-1480(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006a14:	0304b503          	ld	a0,48(s1)
    80006a18:	ffffb097          	auipc	ra,0xffffb
    80006a1c:	a2c080e7          	jalr	-1492(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006a20:	0284b503          	ld	a0,40(s1)
    80006a24:	ffffb097          	auipc	ra,0xffffb
    80006a28:	a20080e7          	jalr	-1504(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80006a2c:	01813083          	ld	ra,24(sp)
    80006a30:	01013403          	ld	s0,16(sp)
    80006a34:	00813483          	ld	s1,8(sp)
    80006a38:	02010113          	addi	sp,sp,32
    80006a3c:	00008067          	ret

0000000080006a40 <start>:
    80006a40:	ff010113          	addi	sp,sp,-16
    80006a44:	00813423          	sd	s0,8(sp)
    80006a48:	01010413          	addi	s0,sp,16
    80006a4c:	300027f3          	csrr	a5,mstatus
    80006a50:	ffffe737          	lui	a4,0xffffe
    80006a54:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff19ff>
    80006a58:	00e7f7b3          	and	a5,a5,a4
    80006a5c:	00001737          	lui	a4,0x1
    80006a60:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006a64:	00e7e7b3          	or	a5,a5,a4
    80006a68:	30079073          	csrw	mstatus,a5
    80006a6c:	00000797          	auipc	a5,0x0
    80006a70:	16078793          	addi	a5,a5,352 # 80006bcc <system_main>
    80006a74:	34179073          	csrw	mepc,a5
    80006a78:	00000793          	li	a5,0
    80006a7c:	18079073          	csrw	satp,a5
    80006a80:	000107b7          	lui	a5,0x10
    80006a84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006a88:	30279073          	csrw	medeleg,a5
    80006a8c:	30379073          	csrw	mideleg,a5
    80006a90:	104027f3          	csrr	a5,sie
    80006a94:	2227e793          	ori	a5,a5,546
    80006a98:	10479073          	csrw	sie,a5
    80006a9c:	fff00793          	li	a5,-1
    80006aa0:	00a7d793          	srli	a5,a5,0xa
    80006aa4:	3b079073          	csrw	pmpaddr0,a5
    80006aa8:	00f00793          	li	a5,15
    80006aac:	3a079073          	csrw	pmpcfg0,a5
    80006ab0:	f14027f3          	csrr	a5,mhartid
    80006ab4:	0200c737          	lui	a4,0x200c
    80006ab8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006abc:	0007869b          	sext.w	a3,a5
    80006ac0:	00269713          	slli	a4,a3,0x2
    80006ac4:	000f4637          	lui	a2,0xf4
    80006ac8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006acc:	00d70733          	add	a4,a4,a3
    80006ad0:	0037979b          	slliw	a5,a5,0x3
    80006ad4:	020046b7          	lui	a3,0x2004
    80006ad8:	00d787b3          	add	a5,a5,a3
    80006adc:	00c585b3          	add	a1,a1,a2
    80006ae0:	00371693          	slli	a3,a4,0x3
    80006ae4:	00005717          	auipc	a4,0x5
    80006ae8:	0bc70713          	addi	a4,a4,188 # 8000bba0 <timer_scratch>
    80006aec:	00b7b023          	sd	a1,0(a5)
    80006af0:	00d70733          	add	a4,a4,a3
    80006af4:	00f73c23          	sd	a5,24(a4)
    80006af8:	02c73023          	sd	a2,32(a4)
    80006afc:	34071073          	csrw	mscratch,a4
    80006b00:	00000797          	auipc	a5,0x0
    80006b04:	6e078793          	addi	a5,a5,1760 # 800071e0 <timervec>
    80006b08:	30579073          	csrw	mtvec,a5
    80006b0c:	300027f3          	csrr	a5,mstatus
    80006b10:	0087e793          	ori	a5,a5,8
    80006b14:	30079073          	csrw	mstatus,a5
    80006b18:	304027f3          	csrr	a5,mie
    80006b1c:	0807e793          	ori	a5,a5,128
    80006b20:	30479073          	csrw	mie,a5
    80006b24:	f14027f3          	csrr	a5,mhartid
    80006b28:	0007879b          	sext.w	a5,a5
    80006b2c:	00078213          	mv	tp,a5
    80006b30:	30200073          	mret
    80006b34:	00813403          	ld	s0,8(sp)
    80006b38:	01010113          	addi	sp,sp,16
    80006b3c:	00008067          	ret

0000000080006b40 <timerinit>:
    80006b40:	ff010113          	addi	sp,sp,-16
    80006b44:	00813423          	sd	s0,8(sp)
    80006b48:	01010413          	addi	s0,sp,16
    80006b4c:	f14027f3          	csrr	a5,mhartid
    80006b50:	0200c737          	lui	a4,0x200c
    80006b54:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b58:	0007869b          	sext.w	a3,a5
    80006b5c:	00269713          	slli	a4,a3,0x2
    80006b60:	000f4637          	lui	a2,0xf4
    80006b64:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b68:	00d70733          	add	a4,a4,a3
    80006b6c:	0037979b          	slliw	a5,a5,0x3
    80006b70:	020046b7          	lui	a3,0x2004
    80006b74:	00d787b3          	add	a5,a5,a3
    80006b78:	00c585b3          	add	a1,a1,a2
    80006b7c:	00371693          	slli	a3,a4,0x3
    80006b80:	00005717          	auipc	a4,0x5
    80006b84:	02070713          	addi	a4,a4,32 # 8000bba0 <timer_scratch>
    80006b88:	00b7b023          	sd	a1,0(a5)
    80006b8c:	00d70733          	add	a4,a4,a3
    80006b90:	00f73c23          	sd	a5,24(a4)
    80006b94:	02c73023          	sd	a2,32(a4)
    80006b98:	34071073          	csrw	mscratch,a4
    80006b9c:	00000797          	auipc	a5,0x0
    80006ba0:	64478793          	addi	a5,a5,1604 # 800071e0 <timervec>
    80006ba4:	30579073          	csrw	mtvec,a5
    80006ba8:	300027f3          	csrr	a5,mstatus
    80006bac:	0087e793          	ori	a5,a5,8
    80006bb0:	30079073          	csrw	mstatus,a5
    80006bb4:	304027f3          	csrr	a5,mie
    80006bb8:	0807e793          	ori	a5,a5,128
    80006bbc:	30479073          	csrw	mie,a5
    80006bc0:	00813403          	ld	s0,8(sp)
    80006bc4:	01010113          	addi	sp,sp,16
    80006bc8:	00008067          	ret

0000000080006bcc <system_main>:
    80006bcc:	fe010113          	addi	sp,sp,-32
    80006bd0:	00813823          	sd	s0,16(sp)
    80006bd4:	00913423          	sd	s1,8(sp)
    80006bd8:	00113c23          	sd	ra,24(sp)
    80006bdc:	02010413          	addi	s0,sp,32
    80006be0:	00000097          	auipc	ra,0x0
    80006be4:	0c4080e7          	jalr	196(ra) # 80006ca4 <cpuid>
    80006be8:	00005497          	auipc	s1,0x5
    80006bec:	e6848493          	addi	s1,s1,-408 # 8000ba50 <started>
    80006bf0:	02050263          	beqz	a0,80006c14 <system_main+0x48>
    80006bf4:	0004a783          	lw	a5,0(s1)
    80006bf8:	0007879b          	sext.w	a5,a5
    80006bfc:	fe078ce3          	beqz	a5,80006bf4 <system_main+0x28>
    80006c00:	0ff0000f          	fence
    80006c04:	00003517          	auipc	a0,0x3
    80006c08:	9dc50513          	addi	a0,a0,-1572 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006c0c:	00001097          	auipc	ra,0x1
    80006c10:	a70080e7          	jalr	-1424(ra) # 8000767c <panic>
    80006c14:	00001097          	auipc	ra,0x1
    80006c18:	9c4080e7          	jalr	-1596(ra) # 800075d8 <consoleinit>
    80006c1c:	00001097          	auipc	ra,0x1
    80006c20:	150080e7          	jalr	336(ra) # 80007d6c <printfinit>
    80006c24:	00003517          	auipc	a0,0x3
    80006c28:	84450513          	addi	a0,a0,-1980 # 80009468 <CONSOLE_STATUS+0x458>
    80006c2c:	00001097          	auipc	ra,0x1
    80006c30:	aac080e7          	jalr	-1364(ra) # 800076d8 <__printf>
    80006c34:	00003517          	auipc	a0,0x3
    80006c38:	97c50513          	addi	a0,a0,-1668 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	a9c080e7          	jalr	-1380(ra) # 800076d8 <__printf>
    80006c44:	00003517          	auipc	a0,0x3
    80006c48:	82450513          	addi	a0,a0,-2012 # 80009468 <CONSOLE_STATUS+0x458>
    80006c4c:	00001097          	auipc	ra,0x1
    80006c50:	a8c080e7          	jalr	-1396(ra) # 800076d8 <__printf>
    80006c54:	00001097          	auipc	ra,0x1
    80006c58:	4a4080e7          	jalr	1188(ra) # 800080f8 <kinit>
    80006c5c:	00000097          	auipc	ra,0x0
    80006c60:	148080e7          	jalr	328(ra) # 80006da4 <trapinit>
    80006c64:	00000097          	auipc	ra,0x0
    80006c68:	16c080e7          	jalr	364(ra) # 80006dd0 <trapinithart>
    80006c6c:	00000097          	auipc	ra,0x0
    80006c70:	5b4080e7          	jalr	1460(ra) # 80007220 <plicinit>
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	5d4080e7          	jalr	1492(ra) # 80007248 <plicinithart>
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	078080e7          	jalr	120(ra) # 80006cf4 <userinit>
    80006c84:	0ff0000f          	fence
    80006c88:	00100793          	li	a5,1
    80006c8c:	00003517          	auipc	a0,0x3
    80006c90:	93c50513          	addi	a0,a0,-1732 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006c94:	00f4a023          	sw	a5,0(s1)
    80006c98:	00001097          	auipc	ra,0x1
    80006c9c:	a40080e7          	jalr	-1472(ra) # 800076d8 <__printf>
    80006ca0:	0000006f          	j	80006ca0 <system_main+0xd4>

0000000080006ca4 <cpuid>:
    80006ca4:	ff010113          	addi	sp,sp,-16
    80006ca8:	00813423          	sd	s0,8(sp)
    80006cac:	01010413          	addi	s0,sp,16
    80006cb0:	00020513          	mv	a0,tp
    80006cb4:	00813403          	ld	s0,8(sp)
    80006cb8:	0005051b          	sext.w	a0,a0
    80006cbc:	01010113          	addi	sp,sp,16
    80006cc0:	00008067          	ret

0000000080006cc4 <mycpu>:
    80006cc4:	ff010113          	addi	sp,sp,-16
    80006cc8:	00813423          	sd	s0,8(sp)
    80006ccc:	01010413          	addi	s0,sp,16
    80006cd0:	00020793          	mv	a5,tp
    80006cd4:	00813403          	ld	s0,8(sp)
    80006cd8:	0007879b          	sext.w	a5,a5
    80006cdc:	00779793          	slli	a5,a5,0x7
    80006ce0:	00006517          	auipc	a0,0x6
    80006ce4:	ef050513          	addi	a0,a0,-272 # 8000cbd0 <cpus>
    80006ce8:	00f50533          	add	a0,a0,a5
    80006cec:	01010113          	addi	sp,sp,16
    80006cf0:	00008067          	ret

0000000080006cf4 <userinit>:
    80006cf4:	ff010113          	addi	sp,sp,-16
    80006cf8:	00813423          	sd	s0,8(sp)
    80006cfc:	01010413          	addi	s0,sp,16
    80006d00:	00813403          	ld	s0,8(sp)
    80006d04:	01010113          	addi	sp,sp,16
    80006d08:	ffffb317          	auipc	t1,0xffffb
    80006d0c:	b9030067          	jr	-1136(t1) # 80001898 <main>

0000000080006d10 <either_copyout>:
    80006d10:	ff010113          	addi	sp,sp,-16
    80006d14:	00813023          	sd	s0,0(sp)
    80006d18:	00113423          	sd	ra,8(sp)
    80006d1c:	01010413          	addi	s0,sp,16
    80006d20:	02051663          	bnez	a0,80006d4c <either_copyout+0x3c>
    80006d24:	00058513          	mv	a0,a1
    80006d28:	00060593          	mv	a1,a2
    80006d2c:	0006861b          	sext.w	a2,a3
    80006d30:	00002097          	auipc	ra,0x2
    80006d34:	c54080e7          	jalr	-940(ra) # 80008984 <__memmove>
    80006d38:	00813083          	ld	ra,8(sp)
    80006d3c:	00013403          	ld	s0,0(sp)
    80006d40:	00000513          	li	a0,0
    80006d44:	01010113          	addi	sp,sp,16
    80006d48:	00008067          	ret
    80006d4c:	00003517          	auipc	a0,0x3
    80006d50:	8bc50513          	addi	a0,a0,-1860 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006d54:	00001097          	auipc	ra,0x1
    80006d58:	928080e7          	jalr	-1752(ra) # 8000767c <panic>

0000000080006d5c <either_copyin>:
    80006d5c:	ff010113          	addi	sp,sp,-16
    80006d60:	00813023          	sd	s0,0(sp)
    80006d64:	00113423          	sd	ra,8(sp)
    80006d68:	01010413          	addi	s0,sp,16
    80006d6c:	02059463          	bnez	a1,80006d94 <either_copyin+0x38>
    80006d70:	00060593          	mv	a1,a2
    80006d74:	0006861b          	sext.w	a2,a3
    80006d78:	00002097          	auipc	ra,0x2
    80006d7c:	c0c080e7          	jalr	-1012(ra) # 80008984 <__memmove>
    80006d80:	00813083          	ld	ra,8(sp)
    80006d84:	00013403          	ld	s0,0(sp)
    80006d88:	00000513          	li	a0,0
    80006d8c:	01010113          	addi	sp,sp,16
    80006d90:	00008067          	ret
    80006d94:	00003517          	auipc	a0,0x3
    80006d98:	89c50513          	addi	a0,a0,-1892 # 80009630 <CONSOLE_STATUS+0x620>
    80006d9c:	00001097          	auipc	ra,0x1
    80006da0:	8e0080e7          	jalr	-1824(ra) # 8000767c <panic>

0000000080006da4 <trapinit>:
    80006da4:	ff010113          	addi	sp,sp,-16
    80006da8:	00813423          	sd	s0,8(sp)
    80006dac:	01010413          	addi	s0,sp,16
    80006db0:	00813403          	ld	s0,8(sp)
    80006db4:	00003597          	auipc	a1,0x3
    80006db8:	8a458593          	addi	a1,a1,-1884 # 80009658 <CONSOLE_STATUS+0x648>
    80006dbc:	00006517          	auipc	a0,0x6
    80006dc0:	e9450513          	addi	a0,a0,-364 # 8000cc50 <tickslock>
    80006dc4:	01010113          	addi	sp,sp,16
    80006dc8:	00001317          	auipc	t1,0x1
    80006dcc:	5c030067          	jr	1472(t1) # 80008388 <initlock>

0000000080006dd0 <trapinithart>:
    80006dd0:	ff010113          	addi	sp,sp,-16
    80006dd4:	00813423          	sd	s0,8(sp)
    80006dd8:	01010413          	addi	s0,sp,16
    80006ddc:	00000797          	auipc	a5,0x0
    80006de0:	2f478793          	addi	a5,a5,756 # 800070d0 <kernelvec>
    80006de4:	10579073          	csrw	stvec,a5
    80006de8:	00813403          	ld	s0,8(sp)
    80006dec:	01010113          	addi	sp,sp,16
    80006df0:	00008067          	ret

0000000080006df4 <usertrap>:
    80006df4:	ff010113          	addi	sp,sp,-16
    80006df8:	00813423          	sd	s0,8(sp)
    80006dfc:	01010413          	addi	s0,sp,16
    80006e00:	00813403          	ld	s0,8(sp)
    80006e04:	01010113          	addi	sp,sp,16
    80006e08:	00008067          	ret

0000000080006e0c <usertrapret>:
    80006e0c:	ff010113          	addi	sp,sp,-16
    80006e10:	00813423          	sd	s0,8(sp)
    80006e14:	01010413          	addi	s0,sp,16
    80006e18:	00813403          	ld	s0,8(sp)
    80006e1c:	01010113          	addi	sp,sp,16
    80006e20:	00008067          	ret

0000000080006e24 <kerneltrap>:
    80006e24:	fe010113          	addi	sp,sp,-32
    80006e28:	00813823          	sd	s0,16(sp)
    80006e2c:	00113c23          	sd	ra,24(sp)
    80006e30:	00913423          	sd	s1,8(sp)
    80006e34:	02010413          	addi	s0,sp,32
    80006e38:	142025f3          	csrr	a1,scause
    80006e3c:	100027f3          	csrr	a5,sstatus
    80006e40:	0027f793          	andi	a5,a5,2
    80006e44:	10079c63          	bnez	a5,80006f5c <kerneltrap+0x138>
    80006e48:	142027f3          	csrr	a5,scause
    80006e4c:	0207ce63          	bltz	a5,80006e88 <kerneltrap+0x64>
    80006e50:	00003517          	auipc	a0,0x3
    80006e54:	85050513          	addi	a0,a0,-1968 # 800096a0 <CONSOLE_STATUS+0x690>
    80006e58:	00001097          	auipc	ra,0x1
    80006e5c:	880080e7          	jalr	-1920(ra) # 800076d8 <__printf>
    80006e60:	141025f3          	csrr	a1,sepc
    80006e64:	14302673          	csrr	a2,stval
    80006e68:	00003517          	auipc	a0,0x3
    80006e6c:	84850513          	addi	a0,a0,-1976 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006e70:	00001097          	auipc	ra,0x1
    80006e74:	868080e7          	jalr	-1944(ra) # 800076d8 <__printf>
    80006e78:	00003517          	auipc	a0,0x3
    80006e7c:	85050513          	addi	a0,a0,-1968 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006e80:	00000097          	auipc	ra,0x0
    80006e84:	7fc080e7          	jalr	2044(ra) # 8000767c <panic>
    80006e88:	0ff7f713          	andi	a4,a5,255
    80006e8c:	00900693          	li	a3,9
    80006e90:	04d70063          	beq	a4,a3,80006ed0 <kerneltrap+0xac>
    80006e94:	fff00713          	li	a4,-1
    80006e98:	03f71713          	slli	a4,a4,0x3f
    80006e9c:	00170713          	addi	a4,a4,1
    80006ea0:	fae798e3          	bne	a5,a4,80006e50 <kerneltrap+0x2c>
    80006ea4:	00000097          	auipc	ra,0x0
    80006ea8:	e00080e7          	jalr	-512(ra) # 80006ca4 <cpuid>
    80006eac:	06050663          	beqz	a0,80006f18 <kerneltrap+0xf4>
    80006eb0:	144027f3          	csrr	a5,sip
    80006eb4:	ffd7f793          	andi	a5,a5,-3
    80006eb8:	14479073          	csrw	sip,a5
    80006ebc:	01813083          	ld	ra,24(sp)
    80006ec0:	01013403          	ld	s0,16(sp)
    80006ec4:	00813483          	ld	s1,8(sp)
    80006ec8:	02010113          	addi	sp,sp,32
    80006ecc:	00008067          	ret
    80006ed0:	00000097          	auipc	ra,0x0
    80006ed4:	3c4080e7          	jalr	964(ra) # 80007294 <plic_claim>
    80006ed8:	00a00793          	li	a5,10
    80006edc:	00050493          	mv	s1,a0
    80006ee0:	06f50863          	beq	a0,a5,80006f50 <kerneltrap+0x12c>
    80006ee4:	fc050ce3          	beqz	a0,80006ebc <kerneltrap+0x98>
    80006ee8:	00050593          	mv	a1,a0
    80006eec:	00002517          	auipc	a0,0x2
    80006ef0:	79450513          	addi	a0,a0,1940 # 80009680 <CONSOLE_STATUS+0x670>
    80006ef4:	00000097          	auipc	ra,0x0
    80006ef8:	7e4080e7          	jalr	2020(ra) # 800076d8 <__printf>
    80006efc:	01013403          	ld	s0,16(sp)
    80006f00:	01813083          	ld	ra,24(sp)
    80006f04:	00048513          	mv	a0,s1
    80006f08:	00813483          	ld	s1,8(sp)
    80006f0c:	02010113          	addi	sp,sp,32
    80006f10:	00000317          	auipc	t1,0x0
    80006f14:	3bc30067          	jr	956(t1) # 800072cc <plic_complete>
    80006f18:	00006517          	auipc	a0,0x6
    80006f1c:	d3850513          	addi	a0,a0,-712 # 8000cc50 <tickslock>
    80006f20:	00001097          	auipc	ra,0x1
    80006f24:	48c080e7          	jalr	1164(ra) # 800083ac <acquire>
    80006f28:	00005717          	auipc	a4,0x5
    80006f2c:	b2c70713          	addi	a4,a4,-1236 # 8000ba54 <ticks>
    80006f30:	00072783          	lw	a5,0(a4)
    80006f34:	00006517          	auipc	a0,0x6
    80006f38:	d1c50513          	addi	a0,a0,-740 # 8000cc50 <tickslock>
    80006f3c:	0017879b          	addiw	a5,a5,1
    80006f40:	00f72023          	sw	a5,0(a4)
    80006f44:	00001097          	auipc	ra,0x1
    80006f48:	534080e7          	jalr	1332(ra) # 80008478 <release>
    80006f4c:	f65ff06f          	j	80006eb0 <kerneltrap+0x8c>
    80006f50:	00001097          	auipc	ra,0x1
    80006f54:	090080e7          	jalr	144(ra) # 80007fe0 <uartintr>
    80006f58:	fa5ff06f          	j	80006efc <kerneltrap+0xd8>
    80006f5c:	00002517          	auipc	a0,0x2
    80006f60:	70450513          	addi	a0,a0,1796 # 80009660 <CONSOLE_STATUS+0x650>
    80006f64:	00000097          	auipc	ra,0x0
    80006f68:	718080e7          	jalr	1816(ra) # 8000767c <panic>

0000000080006f6c <clockintr>:
    80006f6c:	fe010113          	addi	sp,sp,-32
    80006f70:	00813823          	sd	s0,16(sp)
    80006f74:	00913423          	sd	s1,8(sp)
    80006f78:	00113c23          	sd	ra,24(sp)
    80006f7c:	02010413          	addi	s0,sp,32
    80006f80:	00006497          	auipc	s1,0x6
    80006f84:	cd048493          	addi	s1,s1,-816 # 8000cc50 <tickslock>
    80006f88:	00048513          	mv	a0,s1
    80006f8c:	00001097          	auipc	ra,0x1
    80006f90:	420080e7          	jalr	1056(ra) # 800083ac <acquire>
    80006f94:	00005717          	auipc	a4,0x5
    80006f98:	ac070713          	addi	a4,a4,-1344 # 8000ba54 <ticks>
    80006f9c:	00072783          	lw	a5,0(a4)
    80006fa0:	01013403          	ld	s0,16(sp)
    80006fa4:	01813083          	ld	ra,24(sp)
    80006fa8:	00048513          	mv	a0,s1
    80006fac:	0017879b          	addiw	a5,a5,1
    80006fb0:	00813483          	ld	s1,8(sp)
    80006fb4:	00f72023          	sw	a5,0(a4)
    80006fb8:	02010113          	addi	sp,sp,32
    80006fbc:	00001317          	auipc	t1,0x1
    80006fc0:	4bc30067          	jr	1212(t1) # 80008478 <release>

0000000080006fc4 <devintr>:
    80006fc4:	142027f3          	csrr	a5,scause
    80006fc8:	00000513          	li	a0,0
    80006fcc:	0007c463          	bltz	a5,80006fd4 <devintr+0x10>
    80006fd0:	00008067          	ret
    80006fd4:	fe010113          	addi	sp,sp,-32
    80006fd8:	00813823          	sd	s0,16(sp)
    80006fdc:	00113c23          	sd	ra,24(sp)
    80006fe0:	00913423          	sd	s1,8(sp)
    80006fe4:	02010413          	addi	s0,sp,32
    80006fe8:	0ff7f713          	andi	a4,a5,255
    80006fec:	00900693          	li	a3,9
    80006ff0:	04d70c63          	beq	a4,a3,80007048 <devintr+0x84>
    80006ff4:	fff00713          	li	a4,-1
    80006ff8:	03f71713          	slli	a4,a4,0x3f
    80006ffc:	00170713          	addi	a4,a4,1
    80007000:	00e78c63          	beq	a5,a4,80007018 <devintr+0x54>
    80007004:	01813083          	ld	ra,24(sp)
    80007008:	01013403          	ld	s0,16(sp)
    8000700c:	00813483          	ld	s1,8(sp)
    80007010:	02010113          	addi	sp,sp,32
    80007014:	00008067          	ret
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	c8c080e7          	jalr	-884(ra) # 80006ca4 <cpuid>
    80007020:	06050663          	beqz	a0,8000708c <devintr+0xc8>
    80007024:	144027f3          	csrr	a5,sip
    80007028:	ffd7f793          	andi	a5,a5,-3
    8000702c:	14479073          	csrw	sip,a5
    80007030:	01813083          	ld	ra,24(sp)
    80007034:	01013403          	ld	s0,16(sp)
    80007038:	00813483          	ld	s1,8(sp)
    8000703c:	00200513          	li	a0,2
    80007040:	02010113          	addi	sp,sp,32
    80007044:	00008067          	ret
    80007048:	00000097          	auipc	ra,0x0
    8000704c:	24c080e7          	jalr	588(ra) # 80007294 <plic_claim>
    80007050:	00a00793          	li	a5,10
    80007054:	00050493          	mv	s1,a0
    80007058:	06f50663          	beq	a0,a5,800070c4 <devintr+0x100>
    8000705c:	00100513          	li	a0,1
    80007060:	fa0482e3          	beqz	s1,80007004 <devintr+0x40>
    80007064:	00048593          	mv	a1,s1
    80007068:	00002517          	auipc	a0,0x2
    8000706c:	61850513          	addi	a0,a0,1560 # 80009680 <CONSOLE_STATUS+0x670>
    80007070:	00000097          	auipc	ra,0x0
    80007074:	668080e7          	jalr	1640(ra) # 800076d8 <__printf>
    80007078:	00048513          	mv	a0,s1
    8000707c:	00000097          	auipc	ra,0x0
    80007080:	250080e7          	jalr	592(ra) # 800072cc <plic_complete>
    80007084:	00100513          	li	a0,1
    80007088:	f7dff06f          	j	80007004 <devintr+0x40>
    8000708c:	00006517          	auipc	a0,0x6
    80007090:	bc450513          	addi	a0,a0,-1084 # 8000cc50 <tickslock>
    80007094:	00001097          	auipc	ra,0x1
    80007098:	318080e7          	jalr	792(ra) # 800083ac <acquire>
    8000709c:	00005717          	auipc	a4,0x5
    800070a0:	9b870713          	addi	a4,a4,-1608 # 8000ba54 <ticks>
    800070a4:	00072783          	lw	a5,0(a4)
    800070a8:	00006517          	auipc	a0,0x6
    800070ac:	ba850513          	addi	a0,a0,-1112 # 8000cc50 <tickslock>
    800070b0:	0017879b          	addiw	a5,a5,1
    800070b4:	00f72023          	sw	a5,0(a4)
    800070b8:	00001097          	auipc	ra,0x1
    800070bc:	3c0080e7          	jalr	960(ra) # 80008478 <release>
    800070c0:	f65ff06f          	j	80007024 <devintr+0x60>
    800070c4:	00001097          	auipc	ra,0x1
    800070c8:	f1c080e7          	jalr	-228(ra) # 80007fe0 <uartintr>
    800070cc:	fadff06f          	j	80007078 <devintr+0xb4>

00000000800070d0 <kernelvec>:
    800070d0:	f0010113          	addi	sp,sp,-256
    800070d4:	00113023          	sd	ra,0(sp)
    800070d8:	00213423          	sd	sp,8(sp)
    800070dc:	00313823          	sd	gp,16(sp)
    800070e0:	00413c23          	sd	tp,24(sp)
    800070e4:	02513023          	sd	t0,32(sp)
    800070e8:	02613423          	sd	t1,40(sp)
    800070ec:	02713823          	sd	t2,48(sp)
    800070f0:	02813c23          	sd	s0,56(sp)
    800070f4:	04913023          	sd	s1,64(sp)
    800070f8:	04a13423          	sd	a0,72(sp)
    800070fc:	04b13823          	sd	a1,80(sp)
    80007100:	04c13c23          	sd	a2,88(sp)
    80007104:	06d13023          	sd	a3,96(sp)
    80007108:	06e13423          	sd	a4,104(sp)
    8000710c:	06f13823          	sd	a5,112(sp)
    80007110:	07013c23          	sd	a6,120(sp)
    80007114:	09113023          	sd	a7,128(sp)
    80007118:	09213423          	sd	s2,136(sp)
    8000711c:	09313823          	sd	s3,144(sp)
    80007120:	09413c23          	sd	s4,152(sp)
    80007124:	0b513023          	sd	s5,160(sp)
    80007128:	0b613423          	sd	s6,168(sp)
    8000712c:	0b713823          	sd	s7,176(sp)
    80007130:	0b813c23          	sd	s8,184(sp)
    80007134:	0d913023          	sd	s9,192(sp)
    80007138:	0da13423          	sd	s10,200(sp)
    8000713c:	0db13823          	sd	s11,208(sp)
    80007140:	0dc13c23          	sd	t3,216(sp)
    80007144:	0fd13023          	sd	t4,224(sp)
    80007148:	0fe13423          	sd	t5,232(sp)
    8000714c:	0ff13823          	sd	t6,240(sp)
    80007150:	cd5ff0ef          	jal	ra,80006e24 <kerneltrap>
    80007154:	00013083          	ld	ra,0(sp)
    80007158:	00813103          	ld	sp,8(sp)
    8000715c:	01013183          	ld	gp,16(sp)
    80007160:	02013283          	ld	t0,32(sp)
    80007164:	02813303          	ld	t1,40(sp)
    80007168:	03013383          	ld	t2,48(sp)
    8000716c:	03813403          	ld	s0,56(sp)
    80007170:	04013483          	ld	s1,64(sp)
    80007174:	04813503          	ld	a0,72(sp)
    80007178:	05013583          	ld	a1,80(sp)
    8000717c:	05813603          	ld	a2,88(sp)
    80007180:	06013683          	ld	a3,96(sp)
    80007184:	06813703          	ld	a4,104(sp)
    80007188:	07013783          	ld	a5,112(sp)
    8000718c:	07813803          	ld	a6,120(sp)
    80007190:	08013883          	ld	a7,128(sp)
    80007194:	08813903          	ld	s2,136(sp)
    80007198:	09013983          	ld	s3,144(sp)
    8000719c:	09813a03          	ld	s4,152(sp)
    800071a0:	0a013a83          	ld	s5,160(sp)
    800071a4:	0a813b03          	ld	s6,168(sp)
    800071a8:	0b013b83          	ld	s7,176(sp)
    800071ac:	0b813c03          	ld	s8,184(sp)
    800071b0:	0c013c83          	ld	s9,192(sp)
    800071b4:	0c813d03          	ld	s10,200(sp)
    800071b8:	0d013d83          	ld	s11,208(sp)
    800071bc:	0d813e03          	ld	t3,216(sp)
    800071c0:	0e013e83          	ld	t4,224(sp)
    800071c4:	0e813f03          	ld	t5,232(sp)
    800071c8:	0f013f83          	ld	t6,240(sp)
    800071cc:	10010113          	addi	sp,sp,256
    800071d0:	10200073          	sret
    800071d4:	00000013          	nop
    800071d8:	00000013          	nop
    800071dc:	00000013          	nop

00000000800071e0 <timervec>:
    800071e0:	34051573          	csrrw	a0,mscratch,a0
    800071e4:	00b53023          	sd	a1,0(a0)
    800071e8:	00c53423          	sd	a2,8(a0)
    800071ec:	00d53823          	sd	a3,16(a0)
    800071f0:	01853583          	ld	a1,24(a0)
    800071f4:	02053603          	ld	a2,32(a0)
    800071f8:	0005b683          	ld	a3,0(a1)
    800071fc:	00c686b3          	add	a3,a3,a2
    80007200:	00d5b023          	sd	a3,0(a1)
    80007204:	00200593          	li	a1,2
    80007208:	14459073          	csrw	sip,a1
    8000720c:	01053683          	ld	a3,16(a0)
    80007210:	00853603          	ld	a2,8(a0)
    80007214:	00053583          	ld	a1,0(a0)
    80007218:	34051573          	csrrw	a0,mscratch,a0
    8000721c:	30200073          	mret

0000000080007220 <plicinit>:
    80007220:	ff010113          	addi	sp,sp,-16
    80007224:	00813423          	sd	s0,8(sp)
    80007228:	01010413          	addi	s0,sp,16
    8000722c:	00813403          	ld	s0,8(sp)
    80007230:	0c0007b7          	lui	a5,0xc000
    80007234:	00100713          	li	a4,1
    80007238:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000723c:	00e7a223          	sw	a4,4(a5)
    80007240:	01010113          	addi	sp,sp,16
    80007244:	00008067          	ret

0000000080007248 <plicinithart>:
    80007248:	ff010113          	addi	sp,sp,-16
    8000724c:	00813023          	sd	s0,0(sp)
    80007250:	00113423          	sd	ra,8(sp)
    80007254:	01010413          	addi	s0,sp,16
    80007258:	00000097          	auipc	ra,0x0
    8000725c:	a4c080e7          	jalr	-1460(ra) # 80006ca4 <cpuid>
    80007260:	0085171b          	slliw	a4,a0,0x8
    80007264:	0c0027b7          	lui	a5,0xc002
    80007268:	00e787b3          	add	a5,a5,a4
    8000726c:	40200713          	li	a4,1026
    80007270:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007274:	00813083          	ld	ra,8(sp)
    80007278:	00013403          	ld	s0,0(sp)
    8000727c:	00d5151b          	slliw	a0,a0,0xd
    80007280:	0c2017b7          	lui	a5,0xc201
    80007284:	00a78533          	add	a0,a5,a0
    80007288:	00052023          	sw	zero,0(a0)
    8000728c:	01010113          	addi	sp,sp,16
    80007290:	00008067          	ret

0000000080007294 <plic_claim>:
    80007294:	ff010113          	addi	sp,sp,-16
    80007298:	00813023          	sd	s0,0(sp)
    8000729c:	00113423          	sd	ra,8(sp)
    800072a0:	01010413          	addi	s0,sp,16
    800072a4:	00000097          	auipc	ra,0x0
    800072a8:	a00080e7          	jalr	-1536(ra) # 80006ca4 <cpuid>
    800072ac:	00813083          	ld	ra,8(sp)
    800072b0:	00013403          	ld	s0,0(sp)
    800072b4:	00d5151b          	slliw	a0,a0,0xd
    800072b8:	0c2017b7          	lui	a5,0xc201
    800072bc:	00a78533          	add	a0,a5,a0
    800072c0:	00452503          	lw	a0,4(a0)
    800072c4:	01010113          	addi	sp,sp,16
    800072c8:	00008067          	ret

00000000800072cc <plic_complete>:
    800072cc:	fe010113          	addi	sp,sp,-32
    800072d0:	00813823          	sd	s0,16(sp)
    800072d4:	00913423          	sd	s1,8(sp)
    800072d8:	00113c23          	sd	ra,24(sp)
    800072dc:	02010413          	addi	s0,sp,32
    800072e0:	00050493          	mv	s1,a0
    800072e4:	00000097          	auipc	ra,0x0
    800072e8:	9c0080e7          	jalr	-1600(ra) # 80006ca4 <cpuid>
    800072ec:	01813083          	ld	ra,24(sp)
    800072f0:	01013403          	ld	s0,16(sp)
    800072f4:	00d5179b          	slliw	a5,a0,0xd
    800072f8:	0c201737          	lui	a4,0xc201
    800072fc:	00f707b3          	add	a5,a4,a5
    80007300:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007304:	00813483          	ld	s1,8(sp)
    80007308:	02010113          	addi	sp,sp,32
    8000730c:	00008067          	ret

0000000080007310 <consolewrite>:
    80007310:	fb010113          	addi	sp,sp,-80
    80007314:	04813023          	sd	s0,64(sp)
    80007318:	04113423          	sd	ra,72(sp)
    8000731c:	02913c23          	sd	s1,56(sp)
    80007320:	03213823          	sd	s2,48(sp)
    80007324:	03313423          	sd	s3,40(sp)
    80007328:	03413023          	sd	s4,32(sp)
    8000732c:	01513c23          	sd	s5,24(sp)
    80007330:	05010413          	addi	s0,sp,80
    80007334:	06c05c63          	blez	a2,800073ac <consolewrite+0x9c>
    80007338:	00060993          	mv	s3,a2
    8000733c:	00050a13          	mv	s4,a0
    80007340:	00058493          	mv	s1,a1
    80007344:	00000913          	li	s2,0
    80007348:	fff00a93          	li	s5,-1
    8000734c:	01c0006f          	j	80007368 <consolewrite+0x58>
    80007350:	fbf44503          	lbu	a0,-65(s0)
    80007354:	0019091b          	addiw	s2,s2,1
    80007358:	00148493          	addi	s1,s1,1
    8000735c:	00001097          	auipc	ra,0x1
    80007360:	a9c080e7          	jalr	-1380(ra) # 80007df8 <uartputc>
    80007364:	03298063          	beq	s3,s2,80007384 <consolewrite+0x74>
    80007368:	00048613          	mv	a2,s1
    8000736c:	00100693          	li	a3,1
    80007370:	000a0593          	mv	a1,s4
    80007374:	fbf40513          	addi	a0,s0,-65
    80007378:	00000097          	auipc	ra,0x0
    8000737c:	9e4080e7          	jalr	-1564(ra) # 80006d5c <either_copyin>
    80007380:	fd5518e3          	bne	a0,s5,80007350 <consolewrite+0x40>
    80007384:	04813083          	ld	ra,72(sp)
    80007388:	04013403          	ld	s0,64(sp)
    8000738c:	03813483          	ld	s1,56(sp)
    80007390:	02813983          	ld	s3,40(sp)
    80007394:	02013a03          	ld	s4,32(sp)
    80007398:	01813a83          	ld	s5,24(sp)
    8000739c:	00090513          	mv	a0,s2
    800073a0:	03013903          	ld	s2,48(sp)
    800073a4:	05010113          	addi	sp,sp,80
    800073a8:	00008067          	ret
    800073ac:	00000913          	li	s2,0
    800073b0:	fd5ff06f          	j	80007384 <consolewrite+0x74>

00000000800073b4 <consoleread>:
    800073b4:	f9010113          	addi	sp,sp,-112
    800073b8:	06813023          	sd	s0,96(sp)
    800073bc:	04913c23          	sd	s1,88(sp)
    800073c0:	05213823          	sd	s2,80(sp)
    800073c4:	05313423          	sd	s3,72(sp)
    800073c8:	05413023          	sd	s4,64(sp)
    800073cc:	03513c23          	sd	s5,56(sp)
    800073d0:	03613823          	sd	s6,48(sp)
    800073d4:	03713423          	sd	s7,40(sp)
    800073d8:	03813023          	sd	s8,32(sp)
    800073dc:	06113423          	sd	ra,104(sp)
    800073e0:	01913c23          	sd	s9,24(sp)
    800073e4:	07010413          	addi	s0,sp,112
    800073e8:	00060b93          	mv	s7,a2
    800073ec:	00050913          	mv	s2,a0
    800073f0:	00058c13          	mv	s8,a1
    800073f4:	00060b1b          	sext.w	s6,a2
    800073f8:	00006497          	auipc	s1,0x6
    800073fc:	88048493          	addi	s1,s1,-1920 # 8000cc78 <cons>
    80007400:	00400993          	li	s3,4
    80007404:	fff00a13          	li	s4,-1
    80007408:	00a00a93          	li	s5,10
    8000740c:	05705e63          	blez	s7,80007468 <consoleread+0xb4>
    80007410:	09c4a703          	lw	a4,156(s1)
    80007414:	0984a783          	lw	a5,152(s1)
    80007418:	0007071b          	sext.w	a4,a4
    8000741c:	08e78463          	beq	a5,a4,800074a4 <consoleread+0xf0>
    80007420:	07f7f713          	andi	a4,a5,127
    80007424:	00e48733          	add	a4,s1,a4
    80007428:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000742c:	0017869b          	addiw	a3,a5,1
    80007430:	08d4ac23          	sw	a3,152(s1)
    80007434:	00070c9b          	sext.w	s9,a4
    80007438:	0b370663          	beq	a4,s3,800074e4 <consoleread+0x130>
    8000743c:	00100693          	li	a3,1
    80007440:	f9f40613          	addi	a2,s0,-97
    80007444:	000c0593          	mv	a1,s8
    80007448:	00090513          	mv	a0,s2
    8000744c:	f8e40fa3          	sb	a4,-97(s0)
    80007450:	00000097          	auipc	ra,0x0
    80007454:	8c0080e7          	jalr	-1856(ra) # 80006d10 <either_copyout>
    80007458:	01450863          	beq	a0,s4,80007468 <consoleread+0xb4>
    8000745c:	001c0c13          	addi	s8,s8,1
    80007460:	fffb8b9b          	addiw	s7,s7,-1
    80007464:	fb5c94e3          	bne	s9,s5,8000740c <consoleread+0x58>
    80007468:	000b851b          	sext.w	a0,s7
    8000746c:	06813083          	ld	ra,104(sp)
    80007470:	06013403          	ld	s0,96(sp)
    80007474:	05813483          	ld	s1,88(sp)
    80007478:	05013903          	ld	s2,80(sp)
    8000747c:	04813983          	ld	s3,72(sp)
    80007480:	04013a03          	ld	s4,64(sp)
    80007484:	03813a83          	ld	s5,56(sp)
    80007488:	02813b83          	ld	s7,40(sp)
    8000748c:	02013c03          	ld	s8,32(sp)
    80007490:	01813c83          	ld	s9,24(sp)
    80007494:	40ab053b          	subw	a0,s6,a0
    80007498:	03013b03          	ld	s6,48(sp)
    8000749c:	07010113          	addi	sp,sp,112
    800074a0:	00008067          	ret
    800074a4:	00001097          	auipc	ra,0x1
    800074a8:	1d8080e7          	jalr	472(ra) # 8000867c <push_on>
    800074ac:	0984a703          	lw	a4,152(s1)
    800074b0:	09c4a783          	lw	a5,156(s1)
    800074b4:	0007879b          	sext.w	a5,a5
    800074b8:	fef70ce3          	beq	a4,a5,800074b0 <consoleread+0xfc>
    800074bc:	00001097          	auipc	ra,0x1
    800074c0:	234080e7          	jalr	564(ra) # 800086f0 <pop_on>
    800074c4:	0984a783          	lw	a5,152(s1)
    800074c8:	07f7f713          	andi	a4,a5,127
    800074cc:	00e48733          	add	a4,s1,a4
    800074d0:	01874703          	lbu	a4,24(a4)
    800074d4:	0017869b          	addiw	a3,a5,1
    800074d8:	08d4ac23          	sw	a3,152(s1)
    800074dc:	00070c9b          	sext.w	s9,a4
    800074e0:	f5371ee3          	bne	a4,s3,8000743c <consoleread+0x88>
    800074e4:	000b851b          	sext.w	a0,s7
    800074e8:	f96bf2e3          	bgeu	s7,s6,8000746c <consoleread+0xb8>
    800074ec:	08f4ac23          	sw	a5,152(s1)
    800074f0:	f7dff06f          	j	8000746c <consoleread+0xb8>

00000000800074f4 <consputc>:
    800074f4:	10000793          	li	a5,256
    800074f8:	00f50663          	beq	a0,a5,80007504 <consputc+0x10>
    800074fc:	00001317          	auipc	t1,0x1
    80007500:	9f430067          	jr	-1548(t1) # 80007ef0 <uartputc_sync>
    80007504:	ff010113          	addi	sp,sp,-16
    80007508:	00113423          	sd	ra,8(sp)
    8000750c:	00813023          	sd	s0,0(sp)
    80007510:	01010413          	addi	s0,sp,16
    80007514:	00800513          	li	a0,8
    80007518:	00001097          	auipc	ra,0x1
    8000751c:	9d8080e7          	jalr	-1576(ra) # 80007ef0 <uartputc_sync>
    80007520:	02000513          	li	a0,32
    80007524:	00001097          	auipc	ra,0x1
    80007528:	9cc080e7          	jalr	-1588(ra) # 80007ef0 <uartputc_sync>
    8000752c:	00013403          	ld	s0,0(sp)
    80007530:	00813083          	ld	ra,8(sp)
    80007534:	00800513          	li	a0,8
    80007538:	01010113          	addi	sp,sp,16
    8000753c:	00001317          	auipc	t1,0x1
    80007540:	9b430067          	jr	-1612(t1) # 80007ef0 <uartputc_sync>

0000000080007544 <consoleintr>:
    80007544:	fe010113          	addi	sp,sp,-32
    80007548:	00813823          	sd	s0,16(sp)
    8000754c:	00913423          	sd	s1,8(sp)
    80007550:	01213023          	sd	s2,0(sp)
    80007554:	00113c23          	sd	ra,24(sp)
    80007558:	02010413          	addi	s0,sp,32
    8000755c:	00005917          	auipc	s2,0x5
    80007560:	71c90913          	addi	s2,s2,1820 # 8000cc78 <cons>
    80007564:	00050493          	mv	s1,a0
    80007568:	00090513          	mv	a0,s2
    8000756c:	00001097          	auipc	ra,0x1
    80007570:	e40080e7          	jalr	-448(ra) # 800083ac <acquire>
    80007574:	02048c63          	beqz	s1,800075ac <consoleintr+0x68>
    80007578:	0a092783          	lw	a5,160(s2)
    8000757c:	09892703          	lw	a4,152(s2)
    80007580:	07f00693          	li	a3,127
    80007584:	40e7873b          	subw	a4,a5,a4
    80007588:	02e6e263          	bltu	a3,a4,800075ac <consoleintr+0x68>
    8000758c:	00d00713          	li	a4,13
    80007590:	04e48063          	beq	s1,a4,800075d0 <consoleintr+0x8c>
    80007594:	07f7f713          	andi	a4,a5,127
    80007598:	00e90733          	add	a4,s2,a4
    8000759c:	0017879b          	addiw	a5,a5,1
    800075a0:	0af92023          	sw	a5,160(s2)
    800075a4:	00970c23          	sb	s1,24(a4)
    800075a8:	08f92e23          	sw	a5,156(s2)
    800075ac:	01013403          	ld	s0,16(sp)
    800075b0:	01813083          	ld	ra,24(sp)
    800075b4:	00813483          	ld	s1,8(sp)
    800075b8:	00013903          	ld	s2,0(sp)
    800075bc:	00005517          	auipc	a0,0x5
    800075c0:	6bc50513          	addi	a0,a0,1724 # 8000cc78 <cons>
    800075c4:	02010113          	addi	sp,sp,32
    800075c8:	00001317          	auipc	t1,0x1
    800075cc:	eb030067          	jr	-336(t1) # 80008478 <release>
    800075d0:	00a00493          	li	s1,10
    800075d4:	fc1ff06f          	j	80007594 <consoleintr+0x50>

00000000800075d8 <consoleinit>:
    800075d8:	fe010113          	addi	sp,sp,-32
    800075dc:	00113c23          	sd	ra,24(sp)
    800075e0:	00813823          	sd	s0,16(sp)
    800075e4:	00913423          	sd	s1,8(sp)
    800075e8:	02010413          	addi	s0,sp,32
    800075ec:	00005497          	auipc	s1,0x5
    800075f0:	68c48493          	addi	s1,s1,1676 # 8000cc78 <cons>
    800075f4:	00048513          	mv	a0,s1
    800075f8:	00002597          	auipc	a1,0x2
    800075fc:	0e058593          	addi	a1,a1,224 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007600:	00001097          	auipc	ra,0x1
    80007604:	d88080e7          	jalr	-632(ra) # 80008388 <initlock>
    80007608:	00000097          	auipc	ra,0x0
    8000760c:	7ac080e7          	jalr	1964(ra) # 80007db4 <uartinit>
    80007610:	01813083          	ld	ra,24(sp)
    80007614:	01013403          	ld	s0,16(sp)
    80007618:	00000797          	auipc	a5,0x0
    8000761c:	d9c78793          	addi	a5,a5,-612 # 800073b4 <consoleread>
    80007620:	0af4bc23          	sd	a5,184(s1)
    80007624:	00000797          	auipc	a5,0x0
    80007628:	cec78793          	addi	a5,a5,-788 # 80007310 <consolewrite>
    8000762c:	0cf4b023          	sd	a5,192(s1)
    80007630:	00813483          	ld	s1,8(sp)
    80007634:	02010113          	addi	sp,sp,32
    80007638:	00008067          	ret

000000008000763c <console_read>:
    8000763c:	ff010113          	addi	sp,sp,-16
    80007640:	00813423          	sd	s0,8(sp)
    80007644:	01010413          	addi	s0,sp,16
    80007648:	00813403          	ld	s0,8(sp)
    8000764c:	00005317          	auipc	t1,0x5
    80007650:	6e433303          	ld	t1,1764(t1) # 8000cd30 <devsw+0x10>
    80007654:	01010113          	addi	sp,sp,16
    80007658:	00030067          	jr	t1

000000008000765c <console_write>:
    8000765c:	ff010113          	addi	sp,sp,-16
    80007660:	00813423          	sd	s0,8(sp)
    80007664:	01010413          	addi	s0,sp,16
    80007668:	00813403          	ld	s0,8(sp)
    8000766c:	00005317          	auipc	t1,0x5
    80007670:	6cc33303          	ld	t1,1740(t1) # 8000cd38 <devsw+0x18>
    80007674:	01010113          	addi	sp,sp,16
    80007678:	00030067          	jr	t1

000000008000767c <panic>:
    8000767c:	fe010113          	addi	sp,sp,-32
    80007680:	00113c23          	sd	ra,24(sp)
    80007684:	00813823          	sd	s0,16(sp)
    80007688:	00913423          	sd	s1,8(sp)
    8000768c:	02010413          	addi	s0,sp,32
    80007690:	00050493          	mv	s1,a0
    80007694:	00002517          	auipc	a0,0x2
    80007698:	04c50513          	addi	a0,a0,76 # 800096e0 <CONSOLE_STATUS+0x6d0>
    8000769c:	00005797          	auipc	a5,0x5
    800076a0:	7207ae23          	sw	zero,1852(a5) # 8000cdd8 <pr+0x18>
    800076a4:	00000097          	auipc	ra,0x0
    800076a8:	034080e7          	jalr	52(ra) # 800076d8 <__printf>
    800076ac:	00048513          	mv	a0,s1
    800076b0:	00000097          	auipc	ra,0x0
    800076b4:	028080e7          	jalr	40(ra) # 800076d8 <__printf>
    800076b8:	00002517          	auipc	a0,0x2
    800076bc:	db050513          	addi	a0,a0,-592 # 80009468 <CONSOLE_STATUS+0x458>
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	018080e7          	jalr	24(ra) # 800076d8 <__printf>
    800076c8:	00100793          	li	a5,1
    800076cc:	00004717          	auipc	a4,0x4
    800076d0:	38f72623          	sw	a5,908(a4) # 8000ba58 <panicked>
    800076d4:	0000006f          	j	800076d4 <panic+0x58>

00000000800076d8 <__printf>:
    800076d8:	f3010113          	addi	sp,sp,-208
    800076dc:	08813023          	sd	s0,128(sp)
    800076e0:	07313423          	sd	s3,104(sp)
    800076e4:	09010413          	addi	s0,sp,144
    800076e8:	05813023          	sd	s8,64(sp)
    800076ec:	08113423          	sd	ra,136(sp)
    800076f0:	06913c23          	sd	s1,120(sp)
    800076f4:	07213823          	sd	s2,112(sp)
    800076f8:	07413023          	sd	s4,96(sp)
    800076fc:	05513c23          	sd	s5,88(sp)
    80007700:	05613823          	sd	s6,80(sp)
    80007704:	05713423          	sd	s7,72(sp)
    80007708:	03913c23          	sd	s9,56(sp)
    8000770c:	03a13823          	sd	s10,48(sp)
    80007710:	03b13423          	sd	s11,40(sp)
    80007714:	00005317          	auipc	t1,0x5
    80007718:	6ac30313          	addi	t1,t1,1708 # 8000cdc0 <pr>
    8000771c:	01832c03          	lw	s8,24(t1)
    80007720:	00b43423          	sd	a1,8(s0)
    80007724:	00c43823          	sd	a2,16(s0)
    80007728:	00d43c23          	sd	a3,24(s0)
    8000772c:	02e43023          	sd	a4,32(s0)
    80007730:	02f43423          	sd	a5,40(s0)
    80007734:	03043823          	sd	a6,48(s0)
    80007738:	03143c23          	sd	a7,56(s0)
    8000773c:	00050993          	mv	s3,a0
    80007740:	4a0c1663          	bnez	s8,80007bec <__printf+0x514>
    80007744:	60098c63          	beqz	s3,80007d5c <__printf+0x684>
    80007748:	0009c503          	lbu	a0,0(s3)
    8000774c:	00840793          	addi	a5,s0,8
    80007750:	f6f43c23          	sd	a5,-136(s0)
    80007754:	00000493          	li	s1,0
    80007758:	22050063          	beqz	a0,80007978 <__printf+0x2a0>
    8000775c:	00002a37          	lui	s4,0x2
    80007760:	00018ab7          	lui	s5,0x18
    80007764:	000f4b37          	lui	s6,0xf4
    80007768:	00989bb7          	lui	s7,0x989
    8000776c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007770:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007774:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007778:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000777c:	00148c9b          	addiw	s9,s1,1
    80007780:	02500793          	li	a5,37
    80007784:	01998933          	add	s2,s3,s9
    80007788:	38f51263          	bne	a0,a5,80007b0c <__printf+0x434>
    8000778c:	00094783          	lbu	a5,0(s2)
    80007790:	00078c9b          	sext.w	s9,a5
    80007794:	1e078263          	beqz	a5,80007978 <__printf+0x2a0>
    80007798:	0024849b          	addiw	s1,s1,2
    8000779c:	07000713          	li	a4,112
    800077a0:	00998933          	add	s2,s3,s1
    800077a4:	38e78a63          	beq	a5,a4,80007b38 <__printf+0x460>
    800077a8:	20f76863          	bltu	a4,a5,800079b8 <__printf+0x2e0>
    800077ac:	42a78863          	beq	a5,a0,80007bdc <__printf+0x504>
    800077b0:	06400713          	li	a4,100
    800077b4:	40e79663          	bne	a5,a4,80007bc0 <__printf+0x4e8>
    800077b8:	f7843783          	ld	a5,-136(s0)
    800077bc:	0007a603          	lw	a2,0(a5)
    800077c0:	00878793          	addi	a5,a5,8
    800077c4:	f6f43c23          	sd	a5,-136(s0)
    800077c8:	42064a63          	bltz	a2,80007bfc <__printf+0x524>
    800077cc:	00a00713          	li	a4,10
    800077d0:	02e677bb          	remuw	a5,a2,a4
    800077d4:	00002d97          	auipc	s11,0x2
    800077d8:	f34d8d93          	addi	s11,s11,-204 # 80009708 <digits>
    800077dc:	00900593          	li	a1,9
    800077e0:	0006051b          	sext.w	a0,a2
    800077e4:	00000c93          	li	s9,0
    800077e8:	02079793          	slli	a5,a5,0x20
    800077ec:	0207d793          	srli	a5,a5,0x20
    800077f0:	00fd87b3          	add	a5,s11,a5
    800077f4:	0007c783          	lbu	a5,0(a5)
    800077f8:	02e656bb          	divuw	a3,a2,a4
    800077fc:	f8f40023          	sb	a5,-128(s0)
    80007800:	14c5d863          	bge	a1,a2,80007950 <__printf+0x278>
    80007804:	06300593          	li	a1,99
    80007808:	00100c93          	li	s9,1
    8000780c:	02e6f7bb          	remuw	a5,a3,a4
    80007810:	02079793          	slli	a5,a5,0x20
    80007814:	0207d793          	srli	a5,a5,0x20
    80007818:	00fd87b3          	add	a5,s11,a5
    8000781c:	0007c783          	lbu	a5,0(a5)
    80007820:	02e6d73b          	divuw	a4,a3,a4
    80007824:	f8f400a3          	sb	a5,-127(s0)
    80007828:	12a5f463          	bgeu	a1,a0,80007950 <__printf+0x278>
    8000782c:	00a00693          	li	a3,10
    80007830:	00900593          	li	a1,9
    80007834:	02d777bb          	remuw	a5,a4,a3
    80007838:	02079793          	slli	a5,a5,0x20
    8000783c:	0207d793          	srli	a5,a5,0x20
    80007840:	00fd87b3          	add	a5,s11,a5
    80007844:	0007c503          	lbu	a0,0(a5)
    80007848:	02d757bb          	divuw	a5,a4,a3
    8000784c:	f8a40123          	sb	a0,-126(s0)
    80007850:	48e5f263          	bgeu	a1,a4,80007cd4 <__printf+0x5fc>
    80007854:	06300513          	li	a0,99
    80007858:	02d7f5bb          	remuw	a1,a5,a3
    8000785c:	02059593          	slli	a1,a1,0x20
    80007860:	0205d593          	srli	a1,a1,0x20
    80007864:	00bd85b3          	add	a1,s11,a1
    80007868:	0005c583          	lbu	a1,0(a1)
    8000786c:	02d7d7bb          	divuw	a5,a5,a3
    80007870:	f8b401a3          	sb	a1,-125(s0)
    80007874:	48e57263          	bgeu	a0,a4,80007cf8 <__printf+0x620>
    80007878:	3e700513          	li	a0,999
    8000787c:	02d7f5bb          	remuw	a1,a5,a3
    80007880:	02059593          	slli	a1,a1,0x20
    80007884:	0205d593          	srli	a1,a1,0x20
    80007888:	00bd85b3          	add	a1,s11,a1
    8000788c:	0005c583          	lbu	a1,0(a1)
    80007890:	02d7d7bb          	divuw	a5,a5,a3
    80007894:	f8b40223          	sb	a1,-124(s0)
    80007898:	46e57663          	bgeu	a0,a4,80007d04 <__printf+0x62c>
    8000789c:	02d7f5bb          	remuw	a1,a5,a3
    800078a0:	02059593          	slli	a1,a1,0x20
    800078a4:	0205d593          	srli	a1,a1,0x20
    800078a8:	00bd85b3          	add	a1,s11,a1
    800078ac:	0005c583          	lbu	a1,0(a1)
    800078b0:	02d7d7bb          	divuw	a5,a5,a3
    800078b4:	f8b402a3          	sb	a1,-123(s0)
    800078b8:	46ea7863          	bgeu	s4,a4,80007d28 <__printf+0x650>
    800078bc:	02d7f5bb          	remuw	a1,a5,a3
    800078c0:	02059593          	slli	a1,a1,0x20
    800078c4:	0205d593          	srli	a1,a1,0x20
    800078c8:	00bd85b3          	add	a1,s11,a1
    800078cc:	0005c583          	lbu	a1,0(a1)
    800078d0:	02d7d7bb          	divuw	a5,a5,a3
    800078d4:	f8b40323          	sb	a1,-122(s0)
    800078d8:	3eeaf863          	bgeu	s5,a4,80007cc8 <__printf+0x5f0>
    800078dc:	02d7f5bb          	remuw	a1,a5,a3
    800078e0:	02059593          	slli	a1,a1,0x20
    800078e4:	0205d593          	srli	a1,a1,0x20
    800078e8:	00bd85b3          	add	a1,s11,a1
    800078ec:	0005c583          	lbu	a1,0(a1)
    800078f0:	02d7d7bb          	divuw	a5,a5,a3
    800078f4:	f8b403a3          	sb	a1,-121(s0)
    800078f8:	42eb7e63          	bgeu	s6,a4,80007d34 <__printf+0x65c>
    800078fc:	02d7f5bb          	remuw	a1,a5,a3
    80007900:	02059593          	slli	a1,a1,0x20
    80007904:	0205d593          	srli	a1,a1,0x20
    80007908:	00bd85b3          	add	a1,s11,a1
    8000790c:	0005c583          	lbu	a1,0(a1)
    80007910:	02d7d7bb          	divuw	a5,a5,a3
    80007914:	f8b40423          	sb	a1,-120(s0)
    80007918:	42ebfc63          	bgeu	s7,a4,80007d50 <__printf+0x678>
    8000791c:	02079793          	slli	a5,a5,0x20
    80007920:	0207d793          	srli	a5,a5,0x20
    80007924:	00fd8db3          	add	s11,s11,a5
    80007928:	000dc703          	lbu	a4,0(s11)
    8000792c:	00a00793          	li	a5,10
    80007930:	00900c93          	li	s9,9
    80007934:	f8e404a3          	sb	a4,-119(s0)
    80007938:	00065c63          	bgez	a2,80007950 <__printf+0x278>
    8000793c:	f9040713          	addi	a4,s0,-112
    80007940:	00f70733          	add	a4,a4,a5
    80007944:	02d00693          	li	a3,45
    80007948:	fed70823          	sb	a3,-16(a4)
    8000794c:	00078c93          	mv	s9,a5
    80007950:	f8040793          	addi	a5,s0,-128
    80007954:	01978cb3          	add	s9,a5,s9
    80007958:	f7f40d13          	addi	s10,s0,-129
    8000795c:	000cc503          	lbu	a0,0(s9)
    80007960:	fffc8c93          	addi	s9,s9,-1
    80007964:	00000097          	auipc	ra,0x0
    80007968:	b90080e7          	jalr	-1136(ra) # 800074f4 <consputc>
    8000796c:	ffac98e3          	bne	s9,s10,8000795c <__printf+0x284>
    80007970:	00094503          	lbu	a0,0(s2)
    80007974:	e00514e3          	bnez	a0,8000777c <__printf+0xa4>
    80007978:	1a0c1663          	bnez	s8,80007b24 <__printf+0x44c>
    8000797c:	08813083          	ld	ra,136(sp)
    80007980:	08013403          	ld	s0,128(sp)
    80007984:	07813483          	ld	s1,120(sp)
    80007988:	07013903          	ld	s2,112(sp)
    8000798c:	06813983          	ld	s3,104(sp)
    80007990:	06013a03          	ld	s4,96(sp)
    80007994:	05813a83          	ld	s5,88(sp)
    80007998:	05013b03          	ld	s6,80(sp)
    8000799c:	04813b83          	ld	s7,72(sp)
    800079a0:	04013c03          	ld	s8,64(sp)
    800079a4:	03813c83          	ld	s9,56(sp)
    800079a8:	03013d03          	ld	s10,48(sp)
    800079ac:	02813d83          	ld	s11,40(sp)
    800079b0:	0d010113          	addi	sp,sp,208
    800079b4:	00008067          	ret
    800079b8:	07300713          	li	a4,115
    800079bc:	1ce78a63          	beq	a5,a4,80007b90 <__printf+0x4b8>
    800079c0:	07800713          	li	a4,120
    800079c4:	1ee79e63          	bne	a5,a4,80007bc0 <__printf+0x4e8>
    800079c8:	f7843783          	ld	a5,-136(s0)
    800079cc:	0007a703          	lw	a4,0(a5)
    800079d0:	00878793          	addi	a5,a5,8
    800079d4:	f6f43c23          	sd	a5,-136(s0)
    800079d8:	28074263          	bltz	a4,80007c5c <__printf+0x584>
    800079dc:	00002d97          	auipc	s11,0x2
    800079e0:	d2cd8d93          	addi	s11,s11,-724 # 80009708 <digits>
    800079e4:	00f77793          	andi	a5,a4,15
    800079e8:	00fd87b3          	add	a5,s11,a5
    800079ec:	0007c683          	lbu	a3,0(a5)
    800079f0:	00f00613          	li	a2,15
    800079f4:	0007079b          	sext.w	a5,a4
    800079f8:	f8d40023          	sb	a3,-128(s0)
    800079fc:	0047559b          	srliw	a1,a4,0x4
    80007a00:	0047569b          	srliw	a3,a4,0x4
    80007a04:	00000c93          	li	s9,0
    80007a08:	0ee65063          	bge	a2,a4,80007ae8 <__printf+0x410>
    80007a0c:	00f6f693          	andi	a3,a3,15
    80007a10:	00dd86b3          	add	a3,s11,a3
    80007a14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007a18:	0087d79b          	srliw	a5,a5,0x8
    80007a1c:	00100c93          	li	s9,1
    80007a20:	f8d400a3          	sb	a3,-127(s0)
    80007a24:	0cb67263          	bgeu	a2,a1,80007ae8 <__printf+0x410>
    80007a28:	00f7f693          	andi	a3,a5,15
    80007a2c:	00dd86b3          	add	a3,s11,a3
    80007a30:	0006c583          	lbu	a1,0(a3)
    80007a34:	00f00613          	li	a2,15
    80007a38:	0047d69b          	srliw	a3,a5,0x4
    80007a3c:	f8b40123          	sb	a1,-126(s0)
    80007a40:	0047d593          	srli	a1,a5,0x4
    80007a44:	28f67e63          	bgeu	a2,a5,80007ce0 <__printf+0x608>
    80007a48:	00f6f693          	andi	a3,a3,15
    80007a4c:	00dd86b3          	add	a3,s11,a3
    80007a50:	0006c503          	lbu	a0,0(a3)
    80007a54:	0087d813          	srli	a6,a5,0x8
    80007a58:	0087d69b          	srliw	a3,a5,0x8
    80007a5c:	f8a401a3          	sb	a0,-125(s0)
    80007a60:	28b67663          	bgeu	a2,a1,80007cec <__printf+0x614>
    80007a64:	00f6f693          	andi	a3,a3,15
    80007a68:	00dd86b3          	add	a3,s11,a3
    80007a6c:	0006c583          	lbu	a1,0(a3)
    80007a70:	00c7d513          	srli	a0,a5,0xc
    80007a74:	00c7d69b          	srliw	a3,a5,0xc
    80007a78:	f8b40223          	sb	a1,-124(s0)
    80007a7c:	29067a63          	bgeu	a2,a6,80007d10 <__printf+0x638>
    80007a80:	00f6f693          	andi	a3,a3,15
    80007a84:	00dd86b3          	add	a3,s11,a3
    80007a88:	0006c583          	lbu	a1,0(a3)
    80007a8c:	0107d813          	srli	a6,a5,0x10
    80007a90:	0107d69b          	srliw	a3,a5,0x10
    80007a94:	f8b402a3          	sb	a1,-123(s0)
    80007a98:	28a67263          	bgeu	a2,a0,80007d1c <__printf+0x644>
    80007a9c:	00f6f693          	andi	a3,a3,15
    80007aa0:	00dd86b3          	add	a3,s11,a3
    80007aa4:	0006c683          	lbu	a3,0(a3)
    80007aa8:	0147d79b          	srliw	a5,a5,0x14
    80007aac:	f8d40323          	sb	a3,-122(s0)
    80007ab0:	21067663          	bgeu	a2,a6,80007cbc <__printf+0x5e4>
    80007ab4:	02079793          	slli	a5,a5,0x20
    80007ab8:	0207d793          	srli	a5,a5,0x20
    80007abc:	00fd8db3          	add	s11,s11,a5
    80007ac0:	000dc683          	lbu	a3,0(s11)
    80007ac4:	00800793          	li	a5,8
    80007ac8:	00700c93          	li	s9,7
    80007acc:	f8d403a3          	sb	a3,-121(s0)
    80007ad0:	00075c63          	bgez	a4,80007ae8 <__printf+0x410>
    80007ad4:	f9040713          	addi	a4,s0,-112
    80007ad8:	00f70733          	add	a4,a4,a5
    80007adc:	02d00693          	li	a3,45
    80007ae0:	fed70823          	sb	a3,-16(a4)
    80007ae4:	00078c93          	mv	s9,a5
    80007ae8:	f8040793          	addi	a5,s0,-128
    80007aec:	01978cb3          	add	s9,a5,s9
    80007af0:	f7f40d13          	addi	s10,s0,-129
    80007af4:	000cc503          	lbu	a0,0(s9)
    80007af8:	fffc8c93          	addi	s9,s9,-1
    80007afc:	00000097          	auipc	ra,0x0
    80007b00:	9f8080e7          	jalr	-1544(ra) # 800074f4 <consputc>
    80007b04:	ff9d18e3          	bne	s10,s9,80007af4 <__printf+0x41c>
    80007b08:	0100006f          	j	80007b18 <__printf+0x440>
    80007b0c:	00000097          	auipc	ra,0x0
    80007b10:	9e8080e7          	jalr	-1560(ra) # 800074f4 <consputc>
    80007b14:	000c8493          	mv	s1,s9
    80007b18:	00094503          	lbu	a0,0(s2)
    80007b1c:	c60510e3          	bnez	a0,8000777c <__printf+0xa4>
    80007b20:	e40c0ee3          	beqz	s8,8000797c <__printf+0x2a4>
    80007b24:	00005517          	auipc	a0,0x5
    80007b28:	29c50513          	addi	a0,a0,668 # 8000cdc0 <pr>
    80007b2c:	00001097          	auipc	ra,0x1
    80007b30:	94c080e7          	jalr	-1716(ra) # 80008478 <release>
    80007b34:	e49ff06f          	j	8000797c <__printf+0x2a4>
    80007b38:	f7843783          	ld	a5,-136(s0)
    80007b3c:	03000513          	li	a0,48
    80007b40:	01000d13          	li	s10,16
    80007b44:	00878713          	addi	a4,a5,8
    80007b48:	0007bc83          	ld	s9,0(a5)
    80007b4c:	f6e43c23          	sd	a4,-136(s0)
    80007b50:	00000097          	auipc	ra,0x0
    80007b54:	9a4080e7          	jalr	-1628(ra) # 800074f4 <consputc>
    80007b58:	07800513          	li	a0,120
    80007b5c:	00000097          	auipc	ra,0x0
    80007b60:	998080e7          	jalr	-1640(ra) # 800074f4 <consputc>
    80007b64:	00002d97          	auipc	s11,0x2
    80007b68:	ba4d8d93          	addi	s11,s11,-1116 # 80009708 <digits>
    80007b6c:	03ccd793          	srli	a5,s9,0x3c
    80007b70:	00fd87b3          	add	a5,s11,a5
    80007b74:	0007c503          	lbu	a0,0(a5)
    80007b78:	fffd0d1b          	addiw	s10,s10,-1
    80007b7c:	004c9c93          	slli	s9,s9,0x4
    80007b80:	00000097          	auipc	ra,0x0
    80007b84:	974080e7          	jalr	-1676(ra) # 800074f4 <consputc>
    80007b88:	fe0d12e3          	bnez	s10,80007b6c <__printf+0x494>
    80007b8c:	f8dff06f          	j	80007b18 <__printf+0x440>
    80007b90:	f7843783          	ld	a5,-136(s0)
    80007b94:	0007bc83          	ld	s9,0(a5)
    80007b98:	00878793          	addi	a5,a5,8
    80007b9c:	f6f43c23          	sd	a5,-136(s0)
    80007ba0:	000c9a63          	bnez	s9,80007bb4 <__printf+0x4dc>
    80007ba4:	1080006f          	j	80007cac <__printf+0x5d4>
    80007ba8:	001c8c93          	addi	s9,s9,1
    80007bac:	00000097          	auipc	ra,0x0
    80007bb0:	948080e7          	jalr	-1720(ra) # 800074f4 <consputc>
    80007bb4:	000cc503          	lbu	a0,0(s9)
    80007bb8:	fe0518e3          	bnez	a0,80007ba8 <__printf+0x4d0>
    80007bbc:	f5dff06f          	j	80007b18 <__printf+0x440>
    80007bc0:	02500513          	li	a0,37
    80007bc4:	00000097          	auipc	ra,0x0
    80007bc8:	930080e7          	jalr	-1744(ra) # 800074f4 <consputc>
    80007bcc:	000c8513          	mv	a0,s9
    80007bd0:	00000097          	auipc	ra,0x0
    80007bd4:	924080e7          	jalr	-1756(ra) # 800074f4 <consputc>
    80007bd8:	f41ff06f          	j	80007b18 <__printf+0x440>
    80007bdc:	02500513          	li	a0,37
    80007be0:	00000097          	auipc	ra,0x0
    80007be4:	914080e7          	jalr	-1772(ra) # 800074f4 <consputc>
    80007be8:	f31ff06f          	j	80007b18 <__printf+0x440>
    80007bec:	00030513          	mv	a0,t1
    80007bf0:	00000097          	auipc	ra,0x0
    80007bf4:	7bc080e7          	jalr	1980(ra) # 800083ac <acquire>
    80007bf8:	b4dff06f          	j	80007744 <__printf+0x6c>
    80007bfc:	40c0053b          	negw	a0,a2
    80007c00:	00a00713          	li	a4,10
    80007c04:	02e576bb          	remuw	a3,a0,a4
    80007c08:	00002d97          	auipc	s11,0x2
    80007c0c:	b00d8d93          	addi	s11,s11,-1280 # 80009708 <digits>
    80007c10:	ff700593          	li	a1,-9
    80007c14:	02069693          	slli	a3,a3,0x20
    80007c18:	0206d693          	srli	a3,a3,0x20
    80007c1c:	00dd86b3          	add	a3,s11,a3
    80007c20:	0006c683          	lbu	a3,0(a3)
    80007c24:	02e557bb          	divuw	a5,a0,a4
    80007c28:	f8d40023          	sb	a3,-128(s0)
    80007c2c:	10b65e63          	bge	a2,a1,80007d48 <__printf+0x670>
    80007c30:	06300593          	li	a1,99
    80007c34:	02e7f6bb          	remuw	a3,a5,a4
    80007c38:	02069693          	slli	a3,a3,0x20
    80007c3c:	0206d693          	srli	a3,a3,0x20
    80007c40:	00dd86b3          	add	a3,s11,a3
    80007c44:	0006c683          	lbu	a3,0(a3)
    80007c48:	02e7d73b          	divuw	a4,a5,a4
    80007c4c:	00200793          	li	a5,2
    80007c50:	f8d400a3          	sb	a3,-127(s0)
    80007c54:	bca5ece3          	bltu	a1,a0,8000782c <__printf+0x154>
    80007c58:	ce5ff06f          	j	8000793c <__printf+0x264>
    80007c5c:	40e007bb          	negw	a5,a4
    80007c60:	00002d97          	auipc	s11,0x2
    80007c64:	aa8d8d93          	addi	s11,s11,-1368 # 80009708 <digits>
    80007c68:	00f7f693          	andi	a3,a5,15
    80007c6c:	00dd86b3          	add	a3,s11,a3
    80007c70:	0006c583          	lbu	a1,0(a3)
    80007c74:	ff100613          	li	a2,-15
    80007c78:	0047d69b          	srliw	a3,a5,0x4
    80007c7c:	f8b40023          	sb	a1,-128(s0)
    80007c80:	0047d59b          	srliw	a1,a5,0x4
    80007c84:	0ac75e63          	bge	a4,a2,80007d40 <__printf+0x668>
    80007c88:	00f6f693          	andi	a3,a3,15
    80007c8c:	00dd86b3          	add	a3,s11,a3
    80007c90:	0006c603          	lbu	a2,0(a3)
    80007c94:	00f00693          	li	a3,15
    80007c98:	0087d79b          	srliw	a5,a5,0x8
    80007c9c:	f8c400a3          	sb	a2,-127(s0)
    80007ca0:	d8b6e4e3          	bltu	a3,a1,80007a28 <__printf+0x350>
    80007ca4:	00200793          	li	a5,2
    80007ca8:	e2dff06f          	j	80007ad4 <__printf+0x3fc>
    80007cac:	00002c97          	auipc	s9,0x2
    80007cb0:	a3cc8c93          	addi	s9,s9,-1476 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007cb4:	02800513          	li	a0,40
    80007cb8:	ef1ff06f          	j	80007ba8 <__printf+0x4d0>
    80007cbc:	00700793          	li	a5,7
    80007cc0:	00600c93          	li	s9,6
    80007cc4:	e0dff06f          	j	80007ad0 <__printf+0x3f8>
    80007cc8:	00700793          	li	a5,7
    80007ccc:	00600c93          	li	s9,6
    80007cd0:	c69ff06f          	j	80007938 <__printf+0x260>
    80007cd4:	00300793          	li	a5,3
    80007cd8:	00200c93          	li	s9,2
    80007cdc:	c5dff06f          	j	80007938 <__printf+0x260>
    80007ce0:	00300793          	li	a5,3
    80007ce4:	00200c93          	li	s9,2
    80007ce8:	de9ff06f          	j	80007ad0 <__printf+0x3f8>
    80007cec:	00400793          	li	a5,4
    80007cf0:	00300c93          	li	s9,3
    80007cf4:	dddff06f          	j	80007ad0 <__printf+0x3f8>
    80007cf8:	00400793          	li	a5,4
    80007cfc:	00300c93          	li	s9,3
    80007d00:	c39ff06f          	j	80007938 <__printf+0x260>
    80007d04:	00500793          	li	a5,5
    80007d08:	00400c93          	li	s9,4
    80007d0c:	c2dff06f          	j	80007938 <__printf+0x260>
    80007d10:	00500793          	li	a5,5
    80007d14:	00400c93          	li	s9,4
    80007d18:	db9ff06f          	j	80007ad0 <__printf+0x3f8>
    80007d1c:	00600793          	li	a5,6
    80007d20:	00500c93          	li	s9,5
    80007d24:	dadff06f          	j	80007ad0 <__printf+0x3f8>
    80007d28:	00600793          	li	a5,6
    80007d2c:	00500c93          	li	s9,5
    80007d30:	c09ff06f          	j	80007938 <__printf+0x260>
    80007d34:	00800793          	li	a5,8
    80007d38:	00700c93          	li	s9,7
    80007d3c:	bfdff06f          	j	80007938 <__printf+0x260>
    80007d40:	00100793          	li	a5,1
    80007d44:	d91ff06f          	j	80007ad4 <__printf+0x3fc>
    80007d48:	00100793          	li	a5,1
    80007d4c:	bf1ff06f          	j	8000793c <__printf+0x264>
    80007d50:	00900793          	li	a5,9
    80007d54:	00800c93          	li	s9,8
    80007d58:	be1ff06f          	j	80007938 <__printf+0x260>
    80007d5c:	00002517          	auipc	a0,0x2
    80007d60:	99450513          	addi	a0,a0,-1644 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80007d64:	00000097          	auipc	ra,0x0
    80007d68:	918080e7          	jalr	-1768(ra) # 8000767c <panic>

0000000080007d6c <printfinit>:
    80007d6c:	fe010113          	addi	sp,sp,-32
    80007d70:	00813823          	sd	s0,16(sp)
    80007d74:	00913423          	sd	s1,8(sp)
    80007d78:	00113c23          	sd	ra,24(sp)
    80007d7c:	02010413          	addi	s0,sp,32
    80007d80:	00005497          	auipc	s1,0x5
    80007d84:	04048493          	addi	s1,s1,64 # 8000cdc0 <pr>
    80007d88:	00048513          	mv	a0,s1
    80007d8c:	00002597          	auipc	a1,0x2
    80007d90:	97458593          	addi	a1,a1,-1676 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007d94:	00000097          	auipc	ra,0x0
    80007d98:	5f4080e7          	jalr	1524(ra) # 80008388 <initlock>
    80007d9c:	01813083          	ld	ra,24(sp)
    80007da0:	01013403          	ld	s0,16(sp)
    80007da4:	0004ac23          	sw	zero,24(s1)
    80007da8:	00813483          	ld	s1,8(sp)
    80007dac:	02010113          	addi	sp,sp,32
    80007db0:	00008067          	ret

0000000080007db4 <uartinit>:
    80007db4:	ff010113          	addi	sp,sp,-16
    80007db8:	00813423          	sd	s0,8(sp)
    80007dbc:	01010413          	addi	s0,sp,16
    80007dc0:	100007b7          	lui	a5,0x10000
    80007dc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007dc8:	f8000713          	li	a4,-128
    80007dcc:	00e781a3          	sb	a4,3(a5)
    80007dd0:	00300713          	li	a4,3
    80007dd4:	00e78023          	sb	a4,0(a5)
    80007dd8:	000780a3          	sb	zero,1(a5)
    80007ddc:	00e781a3          	sb	a4,3(a5)
    80007de0:	00700693          	li	a3,7
    80007de4:	00d78123          	sb	a3,2(a5)
    80007de8:	00e780a3          	sb	a4,1(a5)
    80007dec:	00813403          	ld	s0,8(sp)
    80007df0:	01010113          	addi	sp,sp,16
    80007df4:	00008067          	ret

0000000080007df8 <uartputc>:
    80007df8:	00004797          	auipc	a5,0x4
    80007dfc:	c607a783          	lw	a5,-928(a5) # 8000ba58 <panicked>
    80007e00:	00078463          	beqz	a5,80007e08 <uartputc+0x10>
    80007e04:	0000006f          	j	80007e04 <uartputc+0xc>
    80007e08:	fd010113          	addi	sp,sp,-48
    80007e0c:	02813023          	sd	s0,32(sp)
    80007e10:	00913c23          	sd	s1,24(sp)
    80007e14:	01213823          	sd	s2,16(sp)
    80007e18:	01313423          	sd	s3,8(sp)
    80007e1c:	02113423          	sd	ra,40(sp)
    80007e20:	03010413          	addi	s0,sp,48
    80007e24:	00004917          	auipc	s2,0x4
    80007e28:	c3c90913          	addi	s2,s2,-964 # 8000ba60 <uart_tx_r>
    80007e2c:	00093783          	ld	a5,0(s2)
    80007e30:	00004497          	auipc	s1,0x4
    80007e34:	c3848493          	addi	s1,s1,-968 # 8000ba68 <uart_tx_w>
    80007e38:	0004b703          	ld	a4,0(s1)
    80007e3c:	02078693          	addi	a3,a5,32
    80007e40:	00050993          	mv	s3,a0
    80007e44:	02e69c63          	bne	a3,a4,80007e7c <uartputc+0x84>
    80007e48:	00001097          	auipc	ra,0x1
    80007e4c:	834080e7          	jalr	-1996(ra) # 8000867c <push_on>
    80007e50:	00093783          	ld	a5,0(s2)
    80007e54:	0004b703          	ld	a4,0(s1)
    80007e58:	02078793          	addi	a5,a5,32
    80007e5c:	00e79463          	bne	a5,a4,80007e64 <uartputc+0x6c>
    80007e60:	0000006f          	j	80007e60 <uartputc+0x68>
    80007e64:	00001097          	auipc	ra,0x1
    80007e68:	88c080e7          	jalr	-1908(ra) # 800086f0 <pop_on>
    80007e6c:	00093783          	ld	a5,0(s2)
    80007e70:	0004b703          	ld	a4,0(s1)
    80007e74:	02078693          	addi	a3,a5,32
    80007e78:	fce688e3          	beq	a3,a4,80007e48 <uartputc+0x50>
    80007e7c:	01f77693          	andi	a3,a4,31
    80007e80:	00005597          	auipc	a1,0x5
    80007e84:	f6058593          	addi	a1,a1,-160 # 8000cde0 <uart_tx_buf>
    80007e88:	00d586b3          	add	a3,a1,a3
    80007e8c:	00170713          	addi	a4,a4,1
    80007e90:	01368023          	sb	s3,0(a3)
    80007e94:	00e4b023          	sd	a4,0(s1)
    80007e98:	10000637          	lui	a2,0x10000
    80007e9c:	02f71063          	bne	a4,a5,80007ebc <uartputc+0xc4>
    80007ea0:	0340006f          	j	80007ed4 <uartputc+0xdc>
    80007ea4:	00074703          	lbu	a4,0(a4)
    80007ea8:	00f93023          	sd	a5,0(s2)
    80007eac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007eb0:	00093783          	ld	a5,0(s2)
    80007eb4:	0004b703          	ld	a4,0(s1)
    80007eb8:	00f70e63          	beq	a4,a5,80007ed4 <uartputc+0xdc>
    80007ebc:	00564683          	lbu	a3,5(a2)
    80007ec0:	01f7f713          	andi	a4,a5,31
    80007ec4:	00e58733          	add	a4,a1,a4
    80007ec8:	0206f693          	andi	a3,a3,32
    80007ecc:	00178793          	addi	a5,a5,1
    80007ed0:	fc069ae3          	bnez	a3,80007ea4 <uartputc+0xac>
    80007ed4:	02813083          	ld	ra,40(sp)
    80007ed8:	02013403          	ld	s0,32(sp)
    80007edc:	01813483          	ld	s1,24(sp)
    80007ee0:	01013903          	ld	s2,16(sp)
    80007ee4:	00813983          	ld	s3,8(sp)
    80007ee8:	03010113          	addi	sp,sp,48
    80007eec:	00008067          	ret

0000000080007ef0 <uartputc_sync>:
    80007ef0:	ff010113          	addi	sp,sp,-16
    80007ef4:	00813423          	sd	s0,8(sp)
    80007ef8:	01010413          	addi	s0,sp,16
    80007efc:	00004717          	auipc	a4,0x4
    80007f00:	b5c72703          	lw	a4,-1188(a4) # 8000ba58 <panicked>
    80007f04:	02071663          	bnez	a4,80007f30 <uartputc_sync+0x40>
    80007f08:	00050793          	mv	a5,a0
    80007f0c:	100006b7          	lui	a3,0x10000
    80007f10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007f14:	02077713          	andi	a4,a4,32
    80007f18:	fe070ce3          	beqz	a4,80007f10 <uartputc_sync+0x20>
    80007f1c:	0ff7f793          	andi	a5,a5,255
    80007f20:	00f68023          	sb	a5,0(a3)
    80007f24:	00813403          	ld	s0,8(sp)
    80007f28:	01010113          	addi	sp,sp,16
    80007f2c:	00008067          	ret
    80007f30:	0000006f          	j	80007f30 <uartputc_sync+0x40>

0000000080007f34 <uartstart>:
    80007f34:	ff010113          	addi	sp,sp,-16
    80007f38:	00813423          	sd	s0,8(sp)
    80007f3c:	01010413          	addi	s0,sp,16
    80007f40:	00004617          	auipc	a2,0x4
    80007f44:	b2060613          	addi	a2,a2,-1248 # 8000ba60 <uart_tx_r>
    80007f48:	00004517          	auipc	a0,0x4
    80007f4c:	b2050513          	addi	a0,a0,-1248 # 8000ba68 <uart_tx_w>
    80007f50:	00063783          	ld	a5,0(a2)
    80007f54:	00053703          	ld	a4,0(a0)
    80007f58:	04f70263          	beq	a4,a5,80007f9c <uartstart+0x68>
    80007f5c:	100005b7          	lui	a1,0x10000
    80007f60:	00005817          	auipc	a6,0x5
    80007f64:	e8080813          	addi	a6,a6,-384 # 8000cde0 <uart_tx_buf>
    80007f68:	01c0006f          	j	80007f84 <uartstart+0x50>
    80007f6c:	0006c703          	lbu	a4,0(a3)
    80007f70:	00f63023          	sd	a5,0(a2)
    80007f74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f78:	00063783          	ld	a5,0(a2)
    80007f7c:	00053703          	ld	a4,0(a0)
    80007f80:	00f70e63          	beq	a4,a5,80007f9c <uartstart+0x68>
    80007f84:	01f7f713          	andi	a4,a5,31
    80007f88:	00e806b3          	add	a3,a6,a4
    80007f8c:	0055c703          	lbu	a4,5(a1)
    80007f90:	00178793          	addi	a5,a5,1
    80007f94:	02077713          	andi	a4,a4,32
    80007f98:	fc071ae3          	bnez	a4,80007f6c <uartstart+0x38>
    80007f9c:	00813403          	ld	s0,8(sp)
    80007fa0:	01010113          	addi	sp,sp,16
    80007fa4:	00008067          	ret

0000000080007fa8 <uartgetc>:
    80007fa8:	ff010113          	addi	sp,sp,-16
    80007fac:	00813423          	sd	s0,8(sp)
    80007fb0:	01010413          	addi	s0,sp,16
    80007fb4:	10000737          	lui	a4,0x10000
    80007fb8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007fbc:	0017f793          	andi	a5,a5,1
    80007fc0:	00078c63          	beqz	a5,80007fd8 <uartgetc+0x30>
    80007fc4:	00074503          	lbu	a0,0(a4)
    80007fc8:	0ff57513          	andi	a0,a0,255
    80007fcc:	00813403          	ld	s0,8(sp)
    80007fd0:	01010113          	addi	sp,sp,16
    80007fd4:	00008067          	ret
    80007fd8:	fff00513          	li	a0,-1
    80007fdc:	ff1ff06f          	j	80007fcc <uartgetc+0x24>

0000000080007fe0 <uartintr>:
    80007fe0:	100007b7          	lui	a5,0x10000
    80007fe4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007fe8:	0017f793          	andi	a5,a5,1
    80007fec:	0a078463          	beqz	a5,80008094 <uartintr+0xb4>
    80007ff0:	fe010113          	addi	sp,sp,-32
    80007ff4:	00813823          	sd	s0,16(sp)
    80007ff8:	00913423          	sd	s1,8(sp)
    80007ffc:	00113c23          	sd	ra,24(sp)
    80008000:	02010413          	addi	s0,sp,32
    80008004:	100004b7          	lui	s1,0x10000
    80008008:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000800c:	0ff57513          	andi	a0,a0,255
    80008010:	fffff097          	auipc	ra,0xfffff
    80008014:	534080e7          	jalr	1332(ra) # 80007544 <consoleintr>
    80008018:	0054c783          	lbu	a5,5(s1)
    8000801c:	0017f793          	andi	a5,a5,1
    80008020:	fe0794e3          	bnez	a5,80008008 <uartintr+0x28>
    80008024:	00004617          	auipc	a2,0x4
    80008028:	a3c60613          	addi	a2,a2,-1476 # 8000ba60 <uart_tx_r>
    8000802c:	00004517          	auipc	a0,0x4
    80008030:	a3c50513          	addi	a0,a0,-1476 # 8000ba68 <uart_tx_w>
    80008034:	00063783          	ld	a5,0(a2)
    80008038:	00053703          	ld	a4,0(a0)
    8000803c:	04f70263          	beq	a4,a5,80008080 <uartintr+0xa0>
    80008040:	100005b7          	lui	a1,0x10000
    80008044:	00005817          	auipc	a6,0x5
    80008048:	d9c80813          	addi	a6,a6,-612 # 8000cde0 <uart_tx_buf>
    8000804c:	01c0006f          	j	80008068 <uartintr+0x88>
    80008050:	0006c703          	lbu	a4,0(a3)
    80008054:	00f63023          	sd	a5,0(a2)
    80008058:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000805c:	00063783          	ld	a5,0(a2)
    80008060:	00053703          	ld	a4,0(a0)
    80008064:	00f70e63          	beq	a4,a5,80008080 <uartintr+0xa0>
    80008068:	01f7f713          	andi	a4,a5,31
    8000806c:	00e806b3          	add	a3,a6,a4
    80008070:	0055c703          	lbu	a4,5(a1)
    80008074:	00178793          	addi	a5,a5,1
    80008078:	02077713          	andi	a4,a4,32
    8000807c:	fc071ae3          	bnez	a4,80008050 <uartintr+0x70>
    80008080:	01813083          	ld	ra,24(sp)
    80008084:	01013403          	ld	s0,16(sp)
    80008088:	00813483          	ld	s1,8(sp)
    8000808c:	02010113          	addi	sp,sp,32
    80008090:	00008067          	ret
    80008094:	00004617          	auipc	a2,0x4
    80008098:	9cc60613          	addi	a2,a2,-1588 # 8000ba60 <uart_tx_r>
    8000809c:	00004517          	auipc	a0,0x4
    800080a0:	9cc50513          	addi	a0,a0,-1588 # 8000ba68 <uart_tx_w>
    800080a4:	00063783          	ld	a5,0(a2)
    800080a8:	00053703          	ld	a4,0(a0)
    800080ac:	04f70263          	beq	a4,a5,800080f0 <uartintr+0x110>
    800080b0:	100005b7          	lui	a1,0x10000
    800080b4:	00005817          	auipc	a6,0x5
    800080b8:	d2c80813          	addi	a6,a6,-724 # 8000cde0 <uart_tx_buf>
    800080bc:	01c0006f          	j	800080d8 <uartintr+0xf8>
    800080c0:	0006c703          	lbu	a4,0(a3)
    800080c4:	00f63023          	sd	a5,0(a2)
    800080c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080cc:	00063783          	ld	a5,0(a2)
    800080d0:	00053703          	ld	a4,0(a0)
    800080d4:	02f70063          	beq	a4,a5,800080f4 <uartintr+0x114>
    800080d8:	01f7f713          	andi	a4,a5,31
    800080dc:	00e806b3          	add	a3,a6,a4
    800080e0:	0055c703          	lbu	a4,5(a1)
    800080e4:	00178793          	addi	a5,a5,1
    800080e8:	02077713          	andi	a4,a4,32
    800080ec:	fc071ae3          	bnez	a4,800080c0 <uartintr+0xe0>
    800080f0:	00008067          	ret
    800080f4:	00008067          	ret

00000000800080f8 <kinit>:
    800080f8:	fc010113          	addi	sp,sp,-64
    800080fc:	02913423          	sd	s1,40(sp)
    80008100:	fffff7b7          	lui	a5,0xfffff
    80008104:	00006497          	auipc	s1,0x6
    80008108:	cfb48493          	addi	s1,s1,-773 # 8000ddff <end+0xfff>
    8000810c:	02813823          	sd	s0,48(sp)
    80008110:	01313c23          	sd	s3,24(sp)
    80008114:	00f4f4b3          	and	s1,s1,a5
    80008118:	02113c23          	sd	ra,56(sp)
    8000811c:	03213023          	sd	s2,32(sp)
    80008120:	01413823          	sd	s4,16(sp)
    80008124:	01513423          	sd	s5,8(sp)
    80008128:	04010413          	addi	s0,sp,64
    8000812c:	000017b7          	lui	a5,0x1
    80008130:	01100993          	li	s3,17
    80008134:	00f487b3          	add	a5,s1,a5
    80008138:	01b99993          	slli	s3,s3,0x1b
    8000813c:	06f9e063          	bltu	s3,a5,8000819c <kinit+0xa4>
    80008140:	00005a97          	auipc	s5,0x5
    80008144:	cc0a8a93          	addi	s5,s5,-832 # 8000ce00 <end>
    80008148:	0754ec63          	bltu	s1,s5,800081c0 <kinit+0xc8>
    8000814c:	0734fa63          	bgeu	s1,s3,800081c0 <kinit+0xc8>
    80008150:	00088a37          	lui	s4,0x88
    80008154:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008158:	00004917          	auipc	s2,0x4
    8000815c:	91890913          	addi	s2,s2,-1768 # 8000ba70 <kmem>
    80008160:	00ca1a13          	slli	s4,s4,0xc
    80008164:	0140006f          	j	80008178 <kinit+0x80>
    80008168:	000017b7          	lui	a5,0x1
    8000816c:	00f484b3          	add	s1,s1,a5
    80008170:	0554e863          	bltu	s1,s5,800081c0 <kinit+0xc8>
    80008174:	0534f663          	bgeu	s1,s3,800081c0 <kinit+0xc8>
    80008178:	00001637          	lui	a2,0x1
    8000817c:	00100593          	li	a1,1
    80008180:	00048513          	mv	a0,s1
    80008184:	00000097          	auipc	ra,0x0
    80008188:	5e4080e7          	jalr	1508(ra) # 80008768 <__memset>
    8000818c:	00093783          	ld	a5,0(s2)
    80008190:	00f4b023          	sd	a5,0(s1)
    80008194:	00993023          	sd	s1,0(s2)
    80008198:	fd4498e3          	bne	s1,s4,80008168 <kinit+0x70>
    8000819c:	03813083          	ld	ra,56(sp)
    800081a0:	03013403          	ld	s0,48(sp)
    800081a4:	02813483          	ld	s1,40(sp)
    800081a8:	02013903          	ld	s2,32(sp)
    800081ac:	01813983          	ld	s3,24(sp)
    800081b0:	01013a03          	ld	s4,16(sp)
    800081b4:	00813a83          	ld	s5,8(sp)
    800081b8:	04010113          	addi	sp,sp,64
    800081bc:	00008067          	ret
    800081c0:	00001517          	auipc	a0,0x1
    800081c4:	56050513          	addi	a0,a0,1376 # 80009720 <digits+0x18>
    800081c8:	fffff097          	auipc	ra,0xfffff
    800081cc:	4b4080e7          	jalr	1204(ra) # 8000767c <panic>

00000000800081d0 <freerange>:
    800081d0:	fc010113          	addi	sp,sp,-64
    800081d4:	000017b7          	lui	a5,0x1
    800081d8:	02913423          	sd	s1,40(sp)
    800081dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800081e0:	009504b3          	add	s1,a0,s1
    800081e4:	fffff537          	lui	a0,0xfffff
    800081e8:	02813823          	sd	s0,48(sp)
    800081ec:	02113c23          	sd	ra,56(sp)
    800081f0:	03213023          	sd	s2,32(sp)
    800081f4:	01313c23          	sd	s3,24(sp)
    800081f8:	01413823          	sd	s4,16(sp)
    800081fc:	01513423          	sd	s5,8(sp)
    80008200:	01613023          	sd	s6,0(sp)
    80008204:	04010413          	addi	s0,sp,64
    80008208:	00a4f4b3          	and	s1,s1,a0
    8000820c:	00f487b3          	add	a5,s1,a5
    80008210:	06f5e463          	bltu	a1,a5,80008278 <freerange+0xa8>
    80008214:	00005a97          	auipc	s5,0x5
    80008218:	beca8a93          	addi	s5,s5,-1044 # 8000ce00 <end>
    8000821c:	0954e263          	bltu	s1,s5,800082a0 <freerange+0xd0>
    80008220:	01100993          	li	s3,17
    80008224:	01b99993          	slli	s3,s3,0x1b
    80008228:	0734fc63          	bgeu	s1,s3,800082a0 <freerange+0xd0>
    8000822c:	00058a13          	mv	s4,a1
    80008230:	00004917          	auipc	s2,0x4
    80008234:	84090913          	addi	s2,s2,-1984 # 8000ba70 <kmem>
    80008238:	00002b37          	lui	s6,0x2
    8000823c:	0140006f          	j	80008250 <freerange+0x80>
    80008240:	000017b7          	lui	a5,0x1
    80008244:	00f484b3          	add	s1,s1,a5
    80008248:	0554ec63          	bltu	s1,s5,800082a0 <freerange+0xd0>
    8000824c:	0534fa63          	bgeu	s1,s3,800082a0 <freerange+0xd0>
    80008250:	00001637          	lui	a2,0x1
    80008254:	00100593          	li	a1,1
    80008258:	00048513          	mv	a0,s1
    8000825c:	00000097          	auipc	ra,0x0
    80008260:	50c080e7          	jalr	1292(ra) # 80008768 <__memset>
    80008264:	00093703          	ld	a4,0(s2)
    80008268:	016487b3          	add	a5,s1,s6
    8000826c:	00e4b023          	sd	a4,0(s1)
    80008270:	00993023          	sd	s1,0(s2)
    80008274:	fcfa76e3          	bgeu	s4,a5,80008240 <freerange+0x70>
    80008278:	03813083          	ld	ra,56(sp)
    8000827c:	03013403          	ld	s0,48(sp)
    80008280:	02813483          	ld	s1,40(sp)
    80008284:	02013903          	ld	s2,32(sp)
    80008288:	01813983          	ld	s3,24(sp)
    8000828c:	01013a03          	ld	s4,16(sp)
    80008290:	00813a83          	ld	s5,8(sp)
    80008294:	00013b03          	ld	s6,0(sp)
    80008298:	04010113          	addi	sp,sp,64
    8000829c:	00008067          	ret
    800082a0:	00001517          	auipc	a0,0x1
    800082a4:	48050513          	addi	a0,a0,1152 # 80009720 <digits+0x18>
    800082a8:	fffff097          	auipc	ra,0xfffff
    800082ac:	3d4080e7          	jalr	980(ra) # 8000767c <panic>

00000000800082b0 <kfree>:
    800082b0:	fe010113          	addi	sp,sp,-32
    800082b4:	00813823          	sd	s0,16(sp)
    800082b8:	00113c23          	sd	ra,24(sp)
    800082bc:	00913423          	sd	s1,8(sp)
    800082c0:	02010413          	addi	s0,sp,32
    800082c4:	03451793          	slli	a5,a0,0x34
    800082c8:	04079c63          	bnez	a5,80008320 <kfree+0x70>
    800082cc:	00005797          	auipc	a5,0x5
    800082d0:	b3478793          	addi	a5,a5,-1228 # 8000ce00 <end>
    800082d4:	00050493          	mv	s1,a0
    800082d8:	04f56463          	bltu	a0,a5,80008320 <kfree+0x70>
    800082dc:	01100793          	li	a5,17
    800082e0:	01b79793          	slli	a5,a5,0x1b
    800082e4:	02f57e63          	bgeu	a0,a5,80008320 <kfree+0x70>
    800082e8:	00001637          	lui	a2,0x1
    800082ec:	00100593          	li	a1,1
    800082f0:	00000097          	auipc	ra,0x0
    800082f4:	478080e7          	jalr	1144(ra) # 80008768 <__memset>
    800082f8:	00003797          	auipc	a5,0x3
    800082fc:	77878793          	addi	a5,a5,1912 # 8000ba70 <kmem>
    80008300:	0007b703          	ld	a4,0(a5)
    80008304:	01813083          	ld	ra,24(sp)
    80008308:	01013403          	ld	s0,16(sp)
    8000830c:	00e4b023          	sd	a4,0(s1)
    80008310:	0097b023          	sd	s1,0(a5)
    80008314:	00813483          	ld	s1,8(sp)
    80008318:	02010113          	addi	sp,sp,32
    8000831c:	00008067          	ret
    80008320:	00001517          	auipc	a0,0x1
    80008324:	40050513          	addi	a0,a0,1024 # 80009720 <digits+0x18>
    80008328:	fffff097          	auipc	ra,0xfffff
    8000832c:	354080e7          	jalr	852(ra) # 8000767c <panic>

0000000080008330 <kalloc>:
    80008330:	fe010113          	addi	sp,sp,-32
    80008334:	00813823          	sd	s0,16(sp)
    80008338:	00913423          	sd	s1,8(sp)
    8000833c:	00113c23          	sd	ra,24(sp)
    80008340:	02010413          	addi	s0,sp,32
    80008344:	00003797          	auipc	a5,0x3
    80008348:	72c78793          	addi	a5,a5,1836 # 8000ba70 <kmem>
    8000834c:	0007b483          	ld	s1,0(a5)
    80008350:	02048063          	beqz	s1,80008370 <kalloc+0x40>
    80008354:	0004b703          	ld	a4,0(s1)
    80008358:	00001637          	lui	a2,0x1
    8000835c:	00500593          	li	a1,5
    80008360:	00048513          	mv	a0,s1
    80008364:	00e7b023          	sd	a4,0(a5)
    80008368:	00000097          	auipc	ra,0x0
    8000836c:	400080e7          	jalr	1024(ra) # 80008768 <__memset>
    80008370:	01813083          	ld	ra,24(sp)
    80008374:	01013403          	ld	s0,16(sp)
    80008378:	00048513          	mv	a0,s1
    8000837c:	00813483          	ld	s1,8(sp)
    80008380:	02010113          	addi	sp,sp,32
    80008384:	00008067          	ret

0000000080008388 <initlock>:
    80008388:	ff010113          	addi	sp,sp,-16
    8000838c:	00813423          	sd	s0,8(sp)
    80008390:	01010413          	addi	s0,sp,16
    80008394:	00813403          	ld	s0,8(sp)
    80008398:	00b53423          	sd	a1,8(a0)
    8000839c:	00052023          	sw	zero,0(a0)
    800083a0:	00053823          	sd	zero,16(a0)
    800083a4:	01010113          	addi	sp,sp,16
    800083a8:	00008067          	ret

00000000800083ac <acquire>:
    800083ac:	fe010113          	addi	sp,sp,-32
    800083b0:	00813823          	sd	s0,16(sp)
    800083b4:	00913423          	sd	s1,8(sp)
    800083b8:	00113c23          	sd	ra,24(sp)
    800083bc:	01213023          	sd	s2,0(sp)
    800083c0:	02010413          	addi	s0,sp,32
    800083c4:	00050493          	mv	s1,a0
    800083c8:	10002973          	csrr	s2,sstatus
    800083cc:	100027f3          	csrr	a5,sstatus
    800083d0:	ffd7f793          	andi	a5,a5,-3
    800083d4:	10079073          	csrw	sstatus,a5
    800083d8:	fffff097          	auipc	ra,0xfffff
    800083dc:	8ec080e7          	jalr	-1812(ra) # 80006cc4 <mycpu>
    800083e0:	07852783          	lw	a5,120(a0)
    800083e4:	06078e63          	beqz	a5,80008460 <acquire+0xb4>
    800083e8:	fffff097          	auipc	ra,0xfffff
    800083ec:	8dc080e7          	jalr	-1828(ra) # 80006cc4 <mycpu>
    800083f0:	07852783          	lw	a5,120(a0)
    800083f4:	0004a703          	lw	a4,0(s1)
    800083f8:	0017879b          	addiw	a5,a5,1
    800083fc:	06f52c23          	sw	a5,120(a0)
    80008400:	04071063          	bnez	a4,80008440 <acquire+0x94>
    80008404:	00100713          	li	a4,1
    80008408:	00070793          	mv	a5,a4
    8000840c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008410:	0007879b          	sext.w	a5,a5
    80008414:	fe079ae3          	bnez	a5,80008408 <acquire+0x5c>
    80008418:	0ff0000f          	fence
    8000841c:	fffff097          	auipc	ra,0xfffff
    80008420:	8a8080e7          	jalr	-1880(ra) # 80006cc4 <mycpu>
    80008424:	01813083          	ld	ra,24(sp)
    80008428:	01013403          	ld	s0,16(sp)
    8000842c:	00a4b823          	sd	a0,16(s1)
    80008430:	00013903          	ld	s2,0(sp)
    80008434:	00813483          	ld	s1,8(sp)
    80008438:	02010113          	addi	sp,sp,32
    8000843c:	00008067          	ret
    80008440:	0104b903          	ld	s2,16(s1)
    80008444:	fffff097          	auipc	ra,0xfffff
    80008448:	880080e7          	jalr	-1920(ra) # 80006cc4 <mycpu>
    8000844c:	faa91ce3          	bne	s2,a0,80008404 <acquire+0x58>
    80008450:	00001517          	auipc	a0,0x1
    80008454:	2d850513          	addi	a0,a0,728 # 80009728 <digits+0x20>
    80008458:	fffff097          	auipc	ra,0xfffff
    8000845c:	224080e7          	jalr	548(ra) # 8000767c <panic>
    80008460:	00195913          	srli	s2,s2,0x1
    80008464:	fffff097          	auipc	ra,0xfffff
    80008468:	860080e7          	jalr	-1952(ra) # 80006cc4 <mycpu>
    8000846c:	00197913          	andi	s2,s2,1
    80008470:	07252e23          	sw	s2,124(a0)
    80008474:	f75ff06f          	j	800083e8 <acquire+0x3c>

0000000080008478 <release>:
    80008478:	fe010113          	addi	sp,sp,-32
    8000847c:	00813823          	sd	s0,16(sp)
    80008480:	00113c23          	sd	ra,24(sp)
    80008484:	00913423          	sd	s1,8(sp)
    80008488:	01213023          	sd	s2,0(sp)
    8000848c:	02010413          	addi	s0,sp,32
    80008490:	00052783          	lw	a5,0(a0)
    80008494:	00079a63          	bnez	a5,800084a8 <release+0x30>
    80008498:	00001517          	auipc	a0,0x1
    8000849c:	29850513          	addi	a0,a0,664 # 80009730 <digits+0x28>
    800084a0:	fffff097          	auipc	ra,0xfffff
    800084a4:	1dc080e7          	jalr	476(ra) # 8000767c <panic>
    800084a8:	01053903          	ld	s2,16(a0)
    800084ac:	00050493          	mv	s1,a0
    800084b0:	fffff097          	auipc	ra,0xfffff
    800084b4:	814080e7          	jalr	-2028(ra) # 80006cc4 <mycpu>
    800084b8:	fea910e3          	bne	s2,a0,80008498 <release+0x20>
    800084bc:	0004b823          	sd	zero,16(s1)
    800084c0:	0ff0000f          	fence
    800084c4:	0f50000f          	fence	iorw,ow
    800084c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800084cc:	ffffe097          	auipc	ra,0xffffe
    800084d0:	7f8080e7          	jalr	2040(ra) # 80006cc4 <mycpu>
    800084d4:	100027f3          	csrr	a5,sstatus
    800084d8:	0027f793          	andi	a5,a5,2
    800084dc:	04079a63          	bnez	a5,80008530 <release+0xb8>
    800084e0:	07852783          	lw	a5,120(a0)
    800084e4:	02f05e63          	blez	a5,80008520 <release+0xa8>
    800084e8:	fff7871b          	addiw	a4,a5,-1
    800084ec:	06e52c23          	sw	a4,120(a0)
    800084f0:	00071c63          	bnez	a4,80008508 <release+0x90>
    800084f4:	07c52783          	lw	a5,124(a0)
    800084f8:	00078863          	beqz	a5,80008508 <release+0x90>
    800084fc:	100027f3          	csrr	a5,sstatus
    80008500:	0027e793          	ori	a5,a5,2
    80008504:	10079073          	csrw	sstatus,a5
    80008508:	01813083          	ld	ra,24(sp)
    8000850c:	01013403          	ld	s0,16(sp)
    80008510:	00813483          	ld	s1,8(sp)
    80008514:	00013903          	ld	s2,0(sp)
    80008518:	02010113          	addi	sp,sp,32
    8000851c:	00008067          	ret
    80008520:	00001517          	auipc	a0,0x1
    80008524:	23050513          	addi	a0,a0,560 # 80009750 <digits+0x48>
    80008528:	fffff097          	auipc	ra,0xfffff
    8000852c:	154080e7          	jalr	340(ra) # 8000767c <panic>
    80008530:	00001517          	auipc	a0,0x1
    80008534:	20850513          	addi	a0,a0,520 # 80009738 <digits+0x30>
    80008538:	fffff097          	auipc	ra,0xfffff
    8000853c:	144080e7          	jalr	324(ra) # 8000767c <panic>

0000000080008540 <holding>:
    80008540:	00052783          	lw	a5,0(a0)
    80008544:	00079663          	bnez	a5,80008550 <holding+0x10>
    80008548:	00000513          	li	a0,0
    8000854c:	00008067          	ret
    80008550:	fe010113          	addi	sp,sp,-32
    80008554:	00813823          	sd	s0,16(sp)
    80008558:	00913423          	sd	s1,8(sp)
    8000855c:	00113c23          	sd	ra,24(sp)
    80008560:	02010413          	addi	s0,sp,32
    80008564:	01053483          	ld	s1,16(a0)
    80008568:	ffffe097          	auipc	ra,0xffffe
    8000856c:	75c080e7          	jalr	1884(ra) # 80006cc4 <mycpu>
    80008570:	01813083          	ld	ra,24(sp)
    80008574:	01013403          	ld	s0,16(sp)
    80008578:	40a48533          	sub	a0,s1,a0
    8000857c:	00153513          	seqz	a0,a0
    80008580:	00813483          	ld	s1,8(sp)
    80008584:	02010113          	addi	sp,sp,32
    80008588:	00008067          	ret

000000008000858c <push_off>:
    8000858c:	fe010113          	addi	sp,sp,-32
    80008590:	00813823          	sd	s0,16(sp)
    80008594:	00113c23          	sd	ra,24(sp)
    80008598:	00913423          	sd	s1,8(sp)
    8000859c:	02010413          	addi	s0,sp,32
    800085a0:	100024f3          	csrr	s1,sstatus
    800085a4:	100027f3          	csrr	a5,sstatus
    800085a8:	ffd7f793          	andi	a5,a5,-3
    800085ac:	10079073          	csrw	sstatus,a5
    800085b0:	ffffe097          	auipc	ra,0xffffe
    800085b4:	714080e7          	jalr	1812(ra) # 80006cc4 <mycpu>
    800085b8:	07852783          	lw	a5,120(a0)
    800085bc:	02078663          	beqz	a5,800085e8 <push_off+0x5c>
    800085c0:	ffffe097          	auipc	ra,0xffffe
    800085c4:	704080e7          	jalr	1796(ra) # 80006cc4 <mycpu>
    800085c8:	07852783          	lw	a5,120(a0)
    800085cc:	01813083          	ld	ra,24(sp)
    800085d0:	01013403          	ld	s0,16(sp)
    800085d4:	0017879b          	addiw	a5,a5,1
    800085d8:	06f52c23          	sw	a5,120(a0)
    800085dc:	00813483          	ld	s1,8(sp)
    800085e0:	02010113          	addi	sp,sp,32
    800085e4:	00008067          	ret
    800085e8:	0014d493          	srli	s1,s1,0x1
    800085ec:	ffffe097          	auipc	ra,0xffffe
    800085f0:	6d8080e7          	jalr	1752(ra) # 80006cc4 <mycpu>
    800085f4:	0014f493          	andi	s1,s1,1
    800085f8:	06952e23          	sw	s1,124(a0)
    800085fc:	fc5ff06f          	j	800085c0 <push_off+0x34>

0000000080008600 <pop_off>:
    80008600:	ff010113          	addi	sp,sp,-16
    80008604:	00813023          	sd	s0,0(sp)
    80008608:	00113423          	sd	ra,8(sp)
    8000860c:	01010413          	addi	s0,sp,16
    80008610:	ffffe097          	auipc	ra,0xffffe
    80008614:	6b4080e7          	jalr	1716(ra) # 80006cc4 <mycpu>
    80008618:	100027f3          	csrr	a5,sstatus
    8000861c:	0027f793          	andi	a5,a5,2
    80008620:	04079663          	bnez	a5,8000866c <pop_off+0x6c>
    80008624:	07852783          	lw	a5,120(a0)
    80008628:	02f05a63          	blez	a5,8000865c <pop_off+0x5c>
    8000862c:	fff7871b          	addiw	a4,a5,-1
    80008630:	06e52c23          	sw	a4,120(a0)
    80008634:	00071c63          	bnez	a4,8000864c <pop_off+0x4c>
    80008638:	07c52783          	lw	a5,124(a0)
    8000863c:	00078863          	beqz	a5,8000864c <pop_off+0x4c>
    80008640:	100027f3          	csrr	a5,sstatus
    80008644:	0027e793          	ori	a5,a5,2
    80008648:	10079073          	csrw	sstatus,a5
    8000864c:	00813083          	ld	ra,8(sp)
    80008650:	00013403          	ld	s0,0(sp)
    80008654:	01010113          	addi	sp,sp,16
    80008658:	00008067          	ret
    8000865c:	00001517          	auipc	a0,0x1
    80008660:	0f450513          	addi	a0,a0,244 # 80009750 <digits+0x48>
    80008664:	fffff097          	auipc	ra,0xfffff
    80008668:	018080e7          	jalr	24(ra) # 8000767c <panic>
    8000866c:	00001517          	auipc	a0,0x1
    80008670:	0cc50513          	addi	a0,a0,204 # 80009738 <digits+0x30>
    80008674:	fffff097          	auipc	ra,0xfffff
    80008678:	008080e7          	jalr	8(ra) # 8000767c <panic>

000000008000867c <push_on>:
    8000867c:	fe010113          	addi	sp,sp,-32
    80008680:	00813823          	sd	s0,16(sp)
    80008684:	00113c23          	sd	ra,24(sp)
    80008688:	00913423          	sd	s1,8(sp)
    8000868c:	02010413          	addi	s0,sp,32
    80008690:	100024f3          	csrr	s1,sstatus
    80008694:	100027f3          	csrr	a5,sstatus
    80008698:	0027e793          	ori	a5,a5,2
    8000869c:	10079073          	csrw	sstatus,a5
    800086a0:	ffffe097          	auipc	ra,0xffffe
    800086a4:	624080e7          	jalr	1572(ra) # 80006cc4 <mycpu>
    800086a8:	07852783          	lw	a5,120(a0)
    800086ac:	02078663          	beqz	a5,800086d8 <push_on+0x5c>
    800086b0:	ffffe097          	auipc	ra,0xffffe
    800086b4:	614080e7          	jalr	1556(ra) # 80006cc4 <mycpu>
    800086b8:	07852783          	lw	a5,120(a0)
    800086bc:	01813083          	ld	ra,24(sp)
    800086c0:	01013403          	ld	s0,16(sp)
    800086c4:	0017879b          	addiw	a5,a5,1
    800086c8:	06f52c23          	sw	a5,120(a0)
    800086cc:	00813483          	ld	s1,8(sp)
    800086d0:	02010113          	addi	sp,sp,32
    800086d4:	00008067          	ret
    800086d8:	0014d493          	srli	s1,s1,0x1
    800086dc:	ffffe097          	auipc	ra,0xffffe
    800086e0:	5e8080e7          	jalr	1512(ra) # 80006cc4 <mycpu>
    800086e4:	0014f493          	andi	s1,s1,1
    800086e8:	06952e23          	sw	s1,124(a0)
    800086ec:	fc5ff06f          	j	800086b0 <push_on+0x34>

00000000800086f0 <pop_on>:
    800086f0:	ff010113          	addi	sp,sp,-16
    800086f4:	00813023          	sd	s0,0(sp)
    800086f8:	00113423          	sd	ra,8(sp)
    800086fc:	01010413          	addi	s0,sp,16
    80008700:	ffffe097          	auipc	ra,0xffffe
    80008704:	5c4080e7          	jalr	1476(ra) # 80006cc4 <mycpu>
    80008708:	100027f3          	csrr	a5,sstatus
    8000870c:	0027f793          	andi	a5,a5,2
    80008710:	04078463          	beqz	a5,80008758 <pop_on+0x68>
    80008714:	07852783          	lw	a5,120(a0)
    80008718:	02f05863          	blez	a5,80008748 <pop_on+0x58>
    8000871c:	fff7879b          	addiw	a5,a5,-1
    80008720:	06f52c23          	sw	a5,120(a0)
    80008724:	07853783          	ld	a5,120(a0)
    80008728:	00079863          	bnez	a5,80008738 <pop_on+0x48>
    8000872c:	100027f3          	csrr	a5,sstatus
    80008730:	ffd7f793          	andi	a5,a5,-3
    80008734:	10079073          	csrw	sstatus,a5
    80008738:	00813083          	ld	ra,8(sp)
    8000873c:	00013403          	ld	s0,0(sp)
    80008740:	01010113          	addi	sp,sp,16
    80008744:	00008067          	ret
    80008748:	00001517          	auipc	a0,0x1
    8000874c:	03050513          	addi	a0,a0,48 # 80009778 <digits+0x70>
    80008750:	fffff097          	auipc	ra,0xfffff
    80008754:	f2c080e7          	jalr	-212(ra) # 8000767c <panic>
    80008758:	00001517          	auipc	a0,0x1
    8000875c:	00050513          	mv	a0,a0
    80008760:	fffff097          	auipc	ra,0xfffff
    80008764:	f1c080e7          	jalr	-228(ra) # 8000767c <panic>

0000000080008768 <__memset>:
    80008768:	ff010113          	addi	sp,sp,-16
    8000876c:	00813423          	sd	s0,8(sp)
    80008770:	01010413          	addi	s0,sp,16
    80008774:	1a060e63          	beqz	a2,80008930 <__memset+0x1c8>
    80008778:	40a007b3          	neg	a5,a0
    8000877c:	0077f793          	andi	a5,a5,7
    80008780:	00778693          	addi	a3,a5,7
    80008784:	00b00813          	li	a6,11
    80008788:	0ff5f593          	andi	a1,a1,255
    8000878c:	fff6071b          	addiw	a4,a2,-1
    80008790:	1b06e663          	bltu	a3,a6,8000893c <__memset+0x1d4>
    80008794:	1cd76463          	bltu	a4,a3,8000895c <__memset+0x1f4>
    80008798:	1a078e63          	beqz	a5,80008954 <__memset+0x1ec>
    8000879c:	00b50023          	sb	a1,0(a0) # 80009758 <digits+0x50>
    800087a0:	00100713          	li	a4,1
    800087a4:	1ae78463          	beq	a5,a4,8000894c <__memset+0x1e4>
    800087a8:	00b500a3          	sb	a1,1(a0)
    800087ac:	00200713          	li	a4,2
    800087b0:	1ae78a63          	beq	a5,a4,80008964 <__memset+0x1fc>
    800087b4:	00b50123          	sb	a1,2(a0)
    800087b8:	00300713          	li	a4,3
    800087bc:	18e78463          	beq	a5,a4,80008944 <__memset+0x1dc>
    800087c0:	00b501a3          	sb	a1,3(a0)
    800087c4:	00400713          	li	a4,4
    800087c8:	1ae78263          	beq	a5,a4,8000896c <__memset+0x204>
    800087cc:	00b50223          	sb	a1,4(a0)
    800087d0:	00500713          	li	a4,5
    800087d4:	1ae78063          	beq	a5,a4,80008974 <__memset+0x20c>
    800087d8:	00b502a3          	sb	a1,5(a0)
    800087dc:	00700713          	li	a4,7
    800087e0:	18e79e63          	bne	a5,a4,8000897c <__memset+0x214>
    800087e4:	00b50323          	sb	a1,6(a0)
    800087e8:	00700e93          	li	t4,7
    800087ec:	00859713          	slli	a4,a1,0x8
    800087f0:	00e5e733          	or	a4,a1,a4
    800087f4:	01059e13          	slli	t3,a1,0x10
    800087f8:	01c76e33          	or	t3,a4,t3
    800087fc:	01859313          	slli	t1,a1,0x18
    80008800:	006e6333          	or	t1,t3,t1
    80008804:	02059893          	slli	a7,a1,0x20
    80008808:	40f60e3b          	subw	t3,a2,a5
    8000880c:	011368b3          	or	a7,t1,a7
    80008810:	02859813          	slli	a6,a1,0x28
    80008814:	0108e833          	or	a6,a7,a6
    80008818:	03059693          	slli	a3,a1,0x30
    8000881c:	003e589b          	srliw	a7,t3,0x3
    80008820:	00d866b3          	or	a3,a6,a3
    80008824:	03859713          	slli	a4,a1,0x38
    80008828:	00389813          	slli	a6,a7,0x3
    8000882c:	00f507b3          	add	a5,a0,a5
    80008830:	00e6e733          	or	a4,a3,a4
    80008834:	000e089b          	sext.w	a7,t3
    80008838:	00f806b3          	add	a3,a6,a5
    8000883c:	00e7b023          	sd	a4,0(a5)
    80008840:	00878793          	addi	a5,a5,8
    80008844:	fed79ce3          	bne	a5,a3,8000883c <__memset+0xd4>
    80008848:	ff8e7793          	andi	a5,t3,-8
    8000884c:	0007871b          	sext.w	a4,a5
    80008850:	01d787bb          	addw	a5,a5,t4
    80008854:	0ce88e63          	beq	a7,a4,80008930 <__memset+0x1c8>
    80008858:	00f50733          	add	a4,a0,a5
    8000885c:	00b70023          	sb	a1,0(a4)
    80008860:	0017871b          	addiw	a4,a5,1
    80008864:	0cc77663          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    80008868:	00e50733          	add	a4,a0,a4
    8000886c:	00b70023          	sb	a1,0(a4)
    80008870:	0027871b          	addiw	a4,a5,2
    80008874:	0ac77e63          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    80008878:	00e50733          	add	a4,a0,a4
    8000887c:	00b70023          	sb	a1,0(a4)
    80008880:	0037871b          	addiw	a4,a5,3
    80008884:	0ac77663          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00b70023          	sb	a1,0(a4)
    80008890:	0047871b          	addiw	a4,a5,4
    80008894:	08c77e63          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    80008898:	00e50733          	add	a4,a0,a4
    8000889c:	00b70023          	sb	a1,0(a4)
    800088a0:	0057871b          	addiw	a4,a5,5
    800088a4:	08c77663          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    800088a8:	00e50733          	add	a4,a0,a4
    800088ac:	00b70023          	sb	a1,0(a4)
    800088b0:	0067871b          	addiw	a4,a5,6
    800088b4:	06c77e63          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00b70023          	sb	a1,0(a4)
    800088c0:	0077871b          	addiw	a4,a5,7
    800088c4:	06c77663          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	0087871b          	addiw	a4,a5,8
    800088d4:	04c77e63          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    800088d8:	00e50733          	add	a4,a0,a4
    800088dc:	00b70023          	sb	a1,0(a4)
    800088e0:	0097871b          	addiw	a4,a5,9
    800088e4:	04c77663          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	00a7871b          	addiw	a4,a5,10
    800088f4:	02c77e63          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    800088f8:	00e50733          	add	a4,a0,a4
    800088fc:	00b70023          	sb	a1,0(a4)
    80008900:	00b7871b          	addiw	a4,a5,11
    80008904:	02c77663          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00b70023          	sb	a1,0(a4)
    80008910:	00c7871b          	addiw	a4,a5,12
    80008914:	00c77e63          	bgeu	a4,a2,80008930 <__memset+0x1c8>
    80008918:	00e50733          	add	a4,a0,a4
    8000891c:	00b70023          	sb	a1,0(a4)
    80008920:	00d7879b          	addiw	a5,a5,13
    80008924:	00c7f663          	bgeu	a5,a2,80008930 <__memset+0x1c8>
    80008928:	00f507b3          	add	a5,a0,a5
    8000892c:	00b78023          	sb	a1,0(a5)
    80008930:	00813403          	ld	s0,8(sp)
    80008934:	01010113          	addi	sp,sp,16
    80008938:	00008067          	ret
    8000893c:	00b00693          	li	a3,11
    80008940:	e55ff06f          	j	80008794 <__memset+0x2c>
    80008944:	00300e93          	li	t4,3
    80008948:	ea5ff06f          	j	800087ec <__memset+0x84>
    8000894c:	00100e93          	li	t4,1
    80008950:	e9dff06f          	j	800087ec <__memset+0x84>
    80008954:	00000e93          	li	t4,0
    80008958:	e95ff06f          	j	800087ec <__memset+0x84>
    8000895c:	00000793          	li	a5,0
    80008960:	ef9ff06f          	j	80008858 <__memset+0xf0>
    80008964:	00200e93          	li	t4,2
    80008968:	e85ff06f          	j	800087ec <__memset+0x84>
    8000896c:	00400e93          	li	t4,4
    80008970:	e7dff06f          	j	800087ec <__memset+0x84>
    80008974:	00500e93          	li	t4,5
    80008978:	e75ff06f          	j	800087ec <__memset+0x84>
    8000897c:	00600e93          	li	t4,6
    80008980:	e6dff06f          	j	800087ec <__memset+0x84>

0000000080008984 <__memmove>:
    80008984:	ff010113          	addi	sp,sp,-16
    80008988:	00813423          	sd	s0,8(sp)
    8000898c:	01010413          	addi	s0,sp,16
    80008990:	0e060863          	beqz	a2,80008a80 <__memmove+0xfc>
    80008994:	fff6069b          	addiw	a3,a2,-1
    80008998:	0006881b          	sext.w	a6,a3
    8000899c:	0ea5e863          	bltu	a1,a0,80008a8c <__memmove+0x108>
    800089a0:	00758713          	addi	a4,a1,7
    800089a4:	00a5e7b3          	or	a5,a1,a0
    800089a8:	40a70733          	sub	a4,a4,a0
    800089ac:	0077f793          	andi	a5,a5,7
    800089b0:	00f73713          	sltiu	a4,a4,15
    800089b4:	00174713          	xori	a4,a4,1
    800089b8:	0017b793          	seqz	a5,a5
    800089bc:	00e7f7b3          	and	a5,a5,a4
    800089c0:	10078863          	beqz	a5,80008ad0 <__memmove+0x14c>
    800089c4:	00900793          	li	a5,9
    800089c8:	1107f463          	bgeu	a5,a6,80008ad0 <__memmove+0x14c>
    800089cc:	0036581b          	srliw	a6,a2,0x3
    800089d0:	fff8081b          	addiw	a6,a6,-1
    800089d4:	02081813          	slli	a6,a6,0x20
    800089d8:	01d85893          	srli	a7,a6,0x1d
    800089dc:	00858813          	addi	a6,a1,8
    800089e0:	00058793          	mv	a5,a1
    800089e4:	00050713          	mv	a4,a0
    800089e8:	01088833          	add	a6,a7,a6
    800089ec:	0007b883          	ld	a7,0(a5)
    800089f0:	00878793          	addi	a5,a5,8
    800089f4:	00870713          	addi	a4,a4,8
    800089f8:	ff173c23          	sd	a7,-8(a4)
    800089fc:	ff0798e3          	bne	a5,a6,800089ec <__memmove+0x68>
    80008a00:	ff867713          	andi	a4,a2,-8
    80008a04:	02071793          	slli	a5,a4,0x20
    80008a08:	0207d793          	srli	a5,a5,0x20
    80008a0c:	00f585b3          	add	a1,a1,a5
    80008a10:	40e686bb          	subw	a3,a3,a4
    80008a14:	00f507b3          	add	a5,a0,a5
    80008a18:	06e60463          	beq	a2,a4,80008a80 <__memmove+0xfc>
    80008a1c:	0005c703          	lbu	a4,0(a1)
    80008a20:	00e78023          	sb	a4,0(a5)
    80008a24:	04068e63          	beqz	a3,80008a80 <__memmove+0xfc>
    80008a28:	0015c603          	lbu	a2,1(a1)
    80008a2c:	00100713          	li	a4,1
    80008a30:	00c780a3          	sb	a2,1(a5)
    80008a34:	04e68663          	beq	a3,a4,80008a80 <__memmove+0xfc>
    80008a38:	0025c603          	lbu	a2,2(a1)
    80008a3c:	00200713          	li	a4,2
    80008a40:	00c78123          	sb	a2,2(a5)
    80008a44:	02e68e63          	beq	a3,a4,80008a80 <__memmove+0xfc>
    80008a48:	0035c603          	lbu	a2,3(a1)
    80008a4c:	00300713          	li	a4,3
    80008a50:	00c781a3          	sb	a2,3(a5)
    80008a54:	02e68663          	beq	a3,a4,80008a80 <__memmove+0xfc>
    80008a58:	0045c603          	lbu	a2,4(a1)
    80008a5c:	00400713          	li	a4,4
    80008a60:	00c78223          	sb	a2,4(a5)
    80008a64:	00e68e63          	beq	a3,a4,80008a80 <__memmove+0xfc>
    80008a68:	0055c603          	lbu	a2,5(a1)
    80008a6c:	00500713          	li	a4,5
    80008a70:	00c782a3          	sb	a2,5(a5)
    80008a74:	00e68663          	beq	a3,a4,80008a80 <__memmove+0xfc>
    80008a78:	0065c703          	lbu	a4,6(a1)
    80008a7c:	00e78323          	sb	a4,6(a5)
    80008a80:	00813403          	ld	s0,8(sp)
    80008a84:	01010113          	addi	sp,sp,16
    80008a88:	00008067          	ret
    80008a8c:	02061713          	slli	a4,a2,0x20
    80008a90:	02075713          	srli	a4,a4,0x20
    80008a94:	00e587b3          	add	a5,a1,a4
    80008a98:	f0f574e3          	bgeu	a0,a5,800089a0 <__memmove+0x1c>
    80008a9c:	02069613          	slli	a2,a3,0x20
    80008aa0:	02065613          	srli	a2,a2,0x20
    80008aa4:	fff64613          	not	a2,a2
    80008aa8:	00e50733          	add	a4,a0,a4
    80008aac:	00c78633          	add	a2,a5,a2
    80008ab0:	fff7c683          	lbu	a3,-1(a5)
    80008ab4:	fff78793          	addi	a5,a5,-1
    80008ab8:	fff70713          	addi	a4,a4,-1
    80008abc:	00d70023          	sb	a3,0(a4)
    80008ac0:	fec798e3          	bne	a5,a2,80008ab0 <__memmove+0x12c>
    80008ac4:	00813403          	ld	s0,8(sp)
    80008ac8:	01010113          	addi	sp,sp,16
    80008acc:	00008067          	ret
    80008ad0:	02069713          	slli	a4,a3,0x20
    80008ad4:	02075713          	srli	a4,a4,0x20
    80008ad8:	00170713          	addi	a4,a4,1
    80008adc:	00e50733          	add	a4,a0,a4
    80008ae0:	00050793          	mv	a5,a0
    80008ae4:	0005c683          	lbu	a3,0(a1)
    80008ae8:	00178793          	addi	a5,a5,1
    80008aec:	00158593          	addi	a1,a1,1
    80008af0:	fed78fa3          	sb	a3,-1(a5)
    80008af4:	fee798e3          	bne	a5,a4,80008ae4 <__memmove+0x160>
    80008af8:	f89ff06f          	j	80008a80 <__memmove+0xfc>
	...
