
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
    8000001c:	22d060ef          	jal	ra,80006a48 <start>

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
    80001188:	658010ef          	jal	ra,800027e0 <_ZN5Riscv20handleSupervisorTrapEv>
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
    800015a0:	d80080e7          	jalr	-640(ra) # 8000231c <_Znwm>
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
    80001604:	a14080e7          	jalr	-1516(ra) # 80003014 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001630:	744080e7          	jalr	1860(ra) # 80001d70 <_ZN3TCB8dispatchEv>
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
    80001720:	a54080e7          	jalr	-1452(ra) # 80003170 <_ZN15MemoryAllocator8mem_freeEPv>
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
    8000174c:	5dc080e7          	jalr	1500(ra) # 80002d24 <_ZN9Scheduler3putEP3TCB>
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
    80001868:	65c080e7          	jalr	1628(ra) # 80005ec0 <_Z8userMainv>
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

    threads[0]=TCB::createThreadBasic(nullptr,nullptr);
    80001914:	00000593          	li	a1,0
    80001918:	00000513          	li	a0,0
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	4cc080e7          	jalr	1228(ra) # 80001de8 <_ZN3TCB17createThreadBasicEPFvPvES0_>
    TCB::running = threads[0];
    80001924:	0000a797          	auipc	a5,0xa
    80001928:	0fc7b783          	ld	a5,252(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
    8000192c:	00a7b023          	sd	a0,0(a5)
    uint64 *stack1 = (uint64 *) MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    80001930:	00001537          	lui	a0,0x1
    80001934:	00001097          	auipc	ra,0x1
    80001938:	6e0080e7          	jalr	1760(ra) # 80003014 <_ZN15MemoryAllocator9mem_allocEm>
    8000193c:	00050493          	mv	s1,a0
    myConsole::initConsole();
    80001940:	00000097          	auipc	ra,0x0
    80001944:	138080e7          	jalr	312(ra) # 80001a78 <_ZN9myConsole11initConsoleEv>
    myConsole::consumer = TCB::createThreadKernel(&myConsole::putcHandlerWrapper, nullptr, stack1);
    80001948:	00048613          	mv	a2,s1
    8000194c:	00000593          	li	a1,0
    80001950:	0000a517          	auipc	a0,0xa
    80001954:	04853503          	ld	a0,72(a0) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	350080e7          	jalr	848(ra) # 80001ca8 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_>
    80001960:	0000a797          	auipc	a5,0xa
    80001964:	0987b783          	ld	a5,152(a5) # 8000b9f8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80001968:	00a7b023          	sd	a0,0(a5)

    Thread* idleThread = new Thread(idle,nullptr);
    8000196c:	02000513          	li	a0,32
    80001970:	00001097          	auipc	ra,0x1
    80001974:	9ac080e7          	jalr	-1620(ra) # 8000231c <_Znwm>
    80001978:	00050913          	mv	s2,a0
    8000197c:	00000613          	li	a2,0
    80001980:	00000597          	auipc	a1,0x0
    80001984:	efc58593          	addi	a1,a1,-260 # 8000187c <_Z4idlePv>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	a9c080e7          	jalr	-1380(ra) # 80002424 <_ZN6ThreadC1EPFvPvES0_>
    Semaphore* sem = new Semaphore(0);
    80001990:	01000513          	li	a0,16
    80001994:	00001097          	auipc	ra,0x1
    80001998:	988080e7          	jalr	-1656(ra) # 8000231c <_Znwm>
    8000199c:	00050493          	mv	s1,a0
    800019a0:	00000593          	li	a1,0
    800019a4:	00001097          	auipc	ra,0x1
    800019a8:	bc0080e7          	jalr	-1088(ra) # 80002564 <_ZN9SemaphoreC1Ej>
    idleThread->start();
    800019ac:	00090513          	mv	a0,s2
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	b04080e7          	jalr	-1276(ra) # 800024b4 <_ZN6Thread5startEv>

    Thread* userThread = new Thread(userMainWrapper, sem);
    800019b8:	02000513          	li	a0,32
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	960080e7          	jalr	-1696(ra) # 8000231c <_Znwm>
    800019c4:	00050913          	mv	s2,a0
    800019c8:	00048613          	mv	a2,s1
    800019cc:	00000597          	auipc	a1,0x0
    800019d0:	e8858593          	addi	a1,a1,-376 # 80001854 <_Z15userMainWrapperPv>
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	a50080e7          	jalr	-1456(ra) # 80002424 <_ZN6ThreadC1EPFvPvES0_>
    800019dc:	0580006f          	j	80001a34 <main+0x19c>
    800019e0:	00050493          	mv	s1,a0
    Thread* idleThread = new Thread(idle,nullptr);
    800019e4:	00090513          	mv	a0,s2
    800019e8:	00001097          	auipc	ra,0x1
    800019ec:	984080e7          	jalr	-1660(ra) # 8000236c <_ZdlPv>
    800019f0:	00048513          	mv	a0,s1
    800019f4:	0000b097          	auipc	ra,0xb
    800019f8:	274080e7          	jalr	628(ra) # 8000cc68 <_Unwind_Resume>
    800019fc:	00050913          	mv	s2,a0
    Semaphore* sem = new Semaphore(0);
    80001a00:	00048513          	mv	a0,s1
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	968080e7          	jalr	-1688(ra) # 8000236c <_ZdlPv>
    80001a0c:	00090513          	mv	a0,s2
    80001a10:	0000b097          	auipc	ra,0xb
    80001a14:	258080e7          	jalr	600(ra) # 8000cc68 <_Unwind_Resume>
    80001a18:	00050493          	mv	s1,a0
    Thread* userThread = new Thread(userMainWrapper, sem);
    80001a1c:	00090513          	mv	a0,s2
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	94c080e7          	jalr	-1716(ra) # 8000236c <_ZdlPv>
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	0000b097          	auipc	ra,0xb
    80001a30:	23c080e7          	jalr	572(ra) # 8000cc68 <_Unwind_Resume>
    userThread->start();
    80001a34:	00090513          	mv	a0,s2
    80001a38:	00001097          	auipc	ra,0x1
    80001a3c:	a7c080e7          	jalr	-1412(ra) # 800024b4 <_ZN6Thread5startEv>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001a40:	00200793          	li	a5,2
    80001a44:	1007a073          	csrs	sstatus,a5
    //globalno prihvatamo prekide u supervizorskom modu
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    myConsole::wait();
    80001a48:	00001097          	auipc	ra,0x1
    80001a4c:	840080e7          	jalr	-1984(ra) # 80002288 <_ZN9myConsole4waitEv>
    sem->wait();
    80001a50:	00048513          	mv	a0,s1
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	b4c080e7          	jalr	-1204(ra) # 800025a0 <_ZN9Semaphore4waitEv>

    return 0;
    80001a5c:	00000513          	li	a0,0
    80001a60:	01813083          	ld	ra,24(sp)
    80001a64:	01013403          	ld	s0,16(sp)
    80001a68:	00813483          	ld	s1,8(sp)
    80001a6c:	00013903          	ld	s2,0(sp)
    80001a70:	02010113          	addi	sp,sp,32
    80001a74:	00008067          	ret

0000000080001a78 <_ZN9myConsole11initConsoleEv>:
#include "../h/Semaphore.hpp"
class myConsole
{
public:

    static void initConsole(){
    80001a78:	ff010113          	addi	sp,sp,-16
    80001a7c:	00113423          	sd	ra,8(sp)
    80001a80:	00813023          	sd	s0,0(sp)
    80001a84:	01010413          	addi	s0,sp,16
        inputBuf = new char[1024];
    80001a88:	40000513          	li	a0,1024
    80001a8c:	00001097          	auipc	ra,0x1
    80001a90:	8b8080e7          	jalr	-1864(ra) # 80002344 <_Znam>
    80001a94:	0000a797          	auipc	a5,0xa
    80001a98:	f747b783          	ld	a5,-140(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x90>
    80001a9c:	00a7b023          	sd	a0,0(a5)
        outputBuf = new char[1024];
    80001aa0:	40000513          	li	a0,1024
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	8a0080e7          	jalr	-1888(ra) # 80002344 <_Znam>
    80001aac:	0000a797          	auipc	a5,0xa
    80001ab0:	f6c7b783          	ld	a5,-148(a5) # 8000ba18 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80001ab4:	00a7b023          	sd	a0,0(a5)
        inputItemAvail = mySemaphore::createSemaphore(0);
    80001ab8:	00000513          	li	a0,0
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	ac4080e7          	jalr	-1340(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001ac4:	0000a797          	auipc	a5,0xa
    80001ac8:	eec7b783          	ld	a5,-276(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001acc:	00a7b023          	sd	a0,0(a5)
        outputItemAvail = mySemaphore::createSemaphore(0);
    80001ad0:	00000513          	li	a0,0
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	aac080e7          	jalr	-1364(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001adc:	0000a797          	auipc	a5,0xa
    80001ae0:	eec7b783          	ld	a5,-276(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001ae4:	00a7b023          	sd	a0,0(a5)
        inputSpaceAvail = mySemaphore::createSemaphore(1023);
    80001ae8:	3ff00513          	li	a0,1023
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	a94080e7          	jalr	-1388(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001af4:	0000a797          	auipc	a5,0xa
    80001af8:	f0c7b783          	ld	a5,-244(a5) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x88>
    80001afc:	00a7b023          	sd	a0,0(a5)
        outputSpaceAvail = mySemaphore::createSemaphore(1023);
    80001b00:	3ff00513          	li	a0,1023
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	a7c080e7          	jalr	-1412(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001b0c:	0000a797          	auipc	a5,0xa
    80001b10:	f047b783          	ld	a5,-252(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x98>
    80001b14:	00a7b023          	sd	a0,0(a5)
        mutexIn = mySemaphore::createSemaphore(1);
    80001b18:	00100513          	li	a0,1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	a64080e7          	jalr	-1436(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001b24:	0000a797          	auipc	a5,0xa
    80001b28:	e847b783          	ld	a5,-380(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b2c:	00a7b023          	sd	a0,0(a5)
        mutexOut = mySemaphore::createSemaphore(1);
    80001b30:	00100513          	li	a0,1
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	a4c080e7          	jalr	-1460(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
    80001b3c:	0000a797          	auipc	a5,0xa
    80001b40:	ef47b783          	ld	a5,-268(a5) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80001b44:	00a7b023          	sd	a0,0(a5)
    }
    80001b48:	00813083          	ld	ra,8(sp)
    80001b4c:	00013403          	ld	s0,0(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_ZN3TCB13threadWrapperEv>:
        //njihova povratna adresa zbog nacina na koji smo ih pravili ce biti postavljena
        // na threadWrapper funkciju, odakle ce da pokrene njen tok
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper(){
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00113423          	sd	ra,8(sp)
    80001b60:	00813023          	sd	s0,0(sp)
    80001b64:	01010413          	addi	s0,sp,16
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    80001b68:	00001097          	auipc	ra,0x1
    80001b6c:	c08080e7          	jalr	-1016(ra) # 80002770 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);//user mode
    80001b70:	0000a797          	auipc	a5,0xa
    80001b74:	f107b783          	ld	a5,-240(a5) # 8000ba80 <_ZN3TCB7runningE>
    80001b78:	0007b703          	ld	a4,0(a5)
    80001b7c:	0087b503          	ld	a0,8(a5)
    80001b80:	000700e7          	jalr	a4
    thread_exit();//user mode
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	82c080e7          	jalr	-2004(ra) # 800013b0 <_Z11thread_exitv>
}
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_ZN3TCB13kernelWrapperEv>:

void TCB::kernelWrapper(){
    80001b9c:	ff010113          	addi	sp,sp,-16
    80001ba0:	00113423          	sd	ra,8(sp)
    80001ba4:	00813023          	sd	s0,0(sp)
    80001ba8:	01010413          	addi	s0,sp,16
    Riscv::kernelWrapper();
    80001bac:	00001097          	auipc	ra,0x1
    80001bb0:	c0c080e7          	jalr	-1012(ra) # 800027b8 <_ZN5Riscv13kernelWrapperEv>
    running->body(running->arg);//kernel mode
    80001bb4:	0000a797          	auipc	a5,0xa
    80001bb8:	ecc7b783          	ld	a5,-308(a5) # 8000ba80 <_ZN3TCB7runningE>
    80001bbc:	0007b703          	ld	a4,0(a5)
    80001bc0:	0087b503          	ld	a0,8(a5)
    80001bc4:	000700e7          	jalr	a4
    thread_exit();
    80001bc8:	fffff097          	auipc	ra,0xfffff
    80001bcc:	7e8080e7          	jalr	2024(ra) # 800013b0 <_Z11thread_exitv>
}
    80001bd0:	00813083          	ld	ra,8(sp)
    80001bd4:	00013403          	ld	s0,0(sp)
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
{
    80001be0:	fd010113          	addi	sp,sp,-48
    80001be4:	02113423          	sd	ra,40(sp)
    80001be8:	02813023          	sd	s0,32(sp)
    80001bec:	00913c23          	sd	s1,24(sp)
    80001bf0:	01213823          	sd	s2,16(sp)
    80001bf4:	01313423          	sd	s3,8(sp)
    80001bf8:	01413023          	sd	s4,0(sp)
    80001bfc:	03010413          	addi	s0,sp,48
    80001c00:	00050993          	mv	s3,a0
    80001c04:	00058a13          	mv	s4,a1
    80001c08:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace);
    80001c0c:	03800513          	li	a0,56
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	70c080e7          	jalr	1804(ra) # 8000231c <_Znwm>
    80001c18:	00050493          	mv	s1,a0
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                                               }),
                                       finished(false),
                                       blocked(false),
                                       closed(false),
                                       sleep(false)
    80001c1c:	01353023          	sd	s3,0(a0)
    80001c20:	01453423          	sd	s4,8(a0)
    80001c24:	01253823          	sd	s2,16(a0)
    80001c28:	00200793          	li	a5,2
    80001c2c:	00f53c23          	sd	a5,24(a0)
                                                       kernel? (uint64) &kernelWrapper:(uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
    80001c30:	00000797          	auipc	a5,0x0
    80001c34:	f2878793          	addi	a5,a5,-216 # 80001b58 <_ZN3TCB13threadWrapperEv>
                                       sleep(false)
    80001c38:	02f53023          	sd	a5,32(a0)
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001c3c:	00001637          	lui	a2,0x1
    80001c40:	00c90933          	add	s2,s2,a2
                                       sleep(false)
    80001c44:	03253423          	sd	s2,40(a0)
    80001c48:	02050823          	sb	zero,48(a0)
    80001c4c:	020508a3          	sb	zero,49(a0)
    80001c50:	02050923          	sb	zero,50(a0)
    80001c54:	020509a3          	sb	zero,51(a0)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001c58:	02098663          	beqz	s3,80001c84 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa4>
    80001c5c:	00001097          	auipc	ra,0x1
    80001c60:	0c8080e7          	jalr	200(ra) # 80002d24 <_ZN9Scheduler3putEP3TCB>
    80001c64:	0200006f          	j	80001c84 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xa4>
    80001c68:	00050913          	mv	s2,a0
    80001c6c:	00048513          	mv	a0,s1
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	6fc080e7          	jalr	1788(ra) # 8000236c <_ZdlPv>
    80001c78:	00090513          	mv	a0,s2
    80001c7c:	0000b097          	auipc	ra,0xb
    80001c80:	fec080e7          	jalr	-20(ra) # 8000cc68 <_Unwind_Resume>
}
    80001c84:	00048513          	mv	a0,s1
    80001c88:	02813083          	ld	ra,40(sp)
    80001c8c:	02013403          	ld	s0,32(sp)
    80001c90:	01813483          	ld	s1,24(sp)
    80001c94:	01013903          	ld	s2,16(sp)
    80001c98:	00813983          	ld	s3,8(sp)
    80001c9c:	00013a03          	ld	s4,0(sp)
    80001ca0:	03010113          	addi	sp,sp,48
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_>:
{
    80001ca8:	fd010113          	addi	sp,sp,-48
    80001cac:	02113423          	sd	ra,40(sp)
    80001cb0:	02813023          	sd	s0,32(sp)
    80001cb4:	00913c23          	sd	s1,24(sp)
    80001cb8:	01213823          	sd	s2,16(sp)
    80001cbc:	01313423          	sd	s3,8(sp)
    80001cc0:	01413023          	sd	s4,0(sp)
    80001cc4:	03010413          	addi	s0,sp,48
    80001cc8:	00050993          	mv	s3,a0
    80001ccc:	00058a13          	mv	s4,a1
    80001cd0:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace,true);
    80001cd4:	03800513          	li	a0,56
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	644080e7          	jalr	1604(ra) # 8000231c <_Znwm>
    80001ce0:	00050493          	mv	s1,a0
                                       sleep(false)
    80001ce4:	01353023          	sd	s3,0(a0)
    80001ce8:	01453423          	sd	s4,8(a0)
    80001cec:	01253823          	sd	s2,16(a0)
    80001cf0:	00200793          	li	a5,2
    80001cf4:	00f53c23          	sd	a5,24(a0)
                                                       kernel? (uint64) &kernelWrapper:(uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
    80001cf8:	00000797          	auipc	a5,0x0
    80001cfc:	ea478793          	addi	a5,a5,-348 # 80001b9c <_ZN3TCB13kernelWrapperEv>
                                       sleep(false)
    80001d00:	02f53023          	sd	a5,32(a0)
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001d04:	00001637          	lui	a2,0x1
    80001d08:	00c90933          	add	s2,s2,a2
                                       sleep(false)
    80001d0c:	03253423          	sd	s2,40(a0)
    80001d10:	02050823          	sb	zero,48(a0)
    80001d14:	020508a3          	sb	zero,49(a0)
    80001d18:	02050923          	sb	zero,50(a0)
    80001d1c:	020509a3          	sb	zero,51(a0)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001d20:	02098663          	beqz	s3,80001d4c <_ZN3TCB18createThreadKernelEPFvPvES0_S0_+0xa4>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	000080e7          	jalr	ra # 80002d24 <_ZN9Scheduler3putEP3TCB>
    80001d2c:	0200006f          	j	80001d4c <_ZN3TCB18createThreadKernelEPFvPvES0_S0_+0xa4>
    80001d30:	00050913          	mv	s2,a0
    80001d34:	00048513          	mv	a0,s1
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	634080e7          	jalr	1588(ra) # 8000236c <_ZdlPv>
    80001d40:	00090513          	mv	a0,s2
    80001d44:	0000b097          	auipc	ra,0xb
    80001d48:	f24080e7          	jalr	-220(ra) # 8000cc68 <_Unwind_Resume>
}
    80001d4c:	00048513          	mv	a0,s1
    80001d50:	02813083          	ld	ra,40(sp)
    80001d54:	02013403          	ld	s0,32(sp)
    80001d58:	01813483          	ld	s1,24(sp)
    80001d5c:	01013903          	ld	s2,16(sp)
    80001d60:	00813983          	ld	s3,8(sp)
    80001d64:	00013a03          	ld	s4,0(sp)
    80001d68:	03010113          	addi	sp,sp,48
    80001d6c:	00008067          	ret

0000000080001d70 <_ZN3TCB8dispatchEv>:
{
    80001d70:	fe010113          	addi	sp,sp,-32
    80001d74:	00113c23          	sd	ra,24(sp)
    80001d78:	00813823          	sd	s0,16(sp)
    80001d7c:	00913423          	sd	s1,8(sp)
    80001d80:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001d84:	0000a497          	auipc	s1,0xa
    80001d88:	cfc4b483          	ld	s1,-772(s1) # 8000ba80 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001d8c:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept()) Scheduler::put(old);
    80001d90:	00079a63          	bnez	a5,80001da4 <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked(){return blocked;}
    80001d94:	0314c783          	lbu	a5,49(s1)
    80001d98:	00079663          	bnez	a5,80001da4 <_ZN3TCB8dispatchEv+0x34>
    bool isSlept(){return sleep;}
    80001d9c:	0334c783          	lbu	a5,51(s1)
    80001da0:	02078c63          	beqz	a5,80001dd8 <_ZN3TCB8dispatchEv+0x68>
    running=Scheduler::get();
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	f04080e7          	jalr	-252(ra) # 80002ca8 <_ZN9Scheduler3getEv>
    80001dac:	0000a797          	auipc	a5,0xa
    80001db0:	cca7ba23          	sd	a0,-812(a5) # 8000ba80 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001db4:	02050593          	addi	a1,a0,32
    80001db8:	02048513          	addi	a0,s1,32
    80001dbc:	fffff097          	auipc	ra,0xfffff
    80001dc0:	464080e7          	jalr	1124(ra) # 80001220 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001dc4:	01813083          	ld	ra,24(sp)
    80001dc8:	01013403          	ld	s0,16(sp)
    80001dcc:	00813483          	ld	s1,8(sp)
    80001dd0:	02010113          	addi	sp,sp,32
    80001dd4:	00008067          	ret
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept()) Scheduler::put(old);
    80001dd8:	00048513          	mv	a0,s1
    80001ddc:	00001097          	auipc	ra,0x1
    80001de0:	f48080e7          	jalr	-184(ra) # 80002d24 <_ZN9Scheduler3putEP3TCB>
    80001de4:	fc1ff06f          	j	80001da4 <_ZN3TCB8dispatchEv+0x34>

0000000080001de8 <_ZN3TCB17createThreadBasicEPFvPvES0_>:
TCB *TCB::createThreadBasic(TCB::Body body, void *arg)
{
    80001de8:	fd010113          	addi	sp,sp,-48
    80001dec:	02113423          	sd	ra,40(sp)
    80001df0:	02813023          	sd	s0,32(sp)
    80001df4:	00913c23          	sd	s1,24(sp)
    80001df8:	01213823          	sd	s2,16(sp)
    80001dfc:	01313423          	sd	s3,8(sp)
    80001e00:	03010413          	addi	s0,sp,48
    80001e04:	00050913          	mv	s2,a0
    80001e08:	00058993          	mv	s3,a1
    return new TCB(body,arg,DEFAULT_TIME_SLICE);
    80001e0c:	03800513          	li	a0,56
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	50c080e7          	jalr	1292(ra) # 8000231c <_Znwm>
    80001e18:	00050493          	mv	s1,a0
                                       sleep(false)
    80001e1c:	01253023          	sd	s2,0(a0)
    80001e20:	01353423          	sd	s3,8(a0)
                                       stack(body!=nullptr? (char*)(new char*[DEFAULT_STACK_SIZE]): nullptr),timeSlice(timeslice),
    80001e24:	00090a63          	beqz	s2,80001e38 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x50>
    80001e28:	00008537          	lui	a0,0x8
    80001e2c:	00000097          	auipc	ra,0x0
    80001e30:	518080e7          	jalr	1304(ra) # 80002344 <_Znam>
    80001e34:	0080006f          	j	80001e3c <_ZN3TCB17createThreadBasicEPFvPvES0_+0x54>
    80001e38:	00000513          	li	a0,0
                                       sleep(false)
    80001e3c:	00a4b823          	sd	a0,16(s1)
    80001e40:	00200793          	li	a5,2
    80001e44:	00f4bc23          	sd	a5,24(s1)
    80001e48:	00000797          	auipc	a5,0x0
    80001e4c:	d1078793          	addi	a5,a5,-752 # 80001b58 <_ZN3TCB13threadWrapperEv>
    80001e50:	02f4b023          	sd	a5,32(s1)
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001e54:	02090a63          	beqz	s2,80001e88 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xa0>
    80001e58:	000017b7          	lui	a5,0x1
    80001e5c:	00f50533          	add	a0,a0,a5
                                       sleep(false)
    80001e60:	02a4b423          	sd	a0,40(s1)
    80001e64:	02048823          	sb	zero,48(s1)
    80001e68:	020488a3          	sb	zero,49(s1)
    80001e6c:	02048923          	sb	zero,50(s1)
    80001e70:	020489a3          	sb	zero,51(s1)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001e74:	02090c63          	beqz	s2,80001eac <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc4>
    80001e78:	00048513          	mv	a0,s1
    80001e7c:	00001097          	auipc	ra,0x1
    80001e80:	ea8080e7          	jalr	-344(ra) # 80002d24 <_ZN9Scheduler3putEP3TCB>
    80001e84:	0280006f          	j	80001eac <_ZN3TCB17createThreadBasicEPFvPvES0_+0xc4>
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001e88:	00000513          	li	a0,0
    80001e8c:	fd5ff06f          	j	80001e60 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x78>
    80001e90:	00050913          	mv	s2,a0
    80001e94:	00048513          	mv	a0,s1
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	4d4080e7          	jalr	1236(ra) # 8000236c <_ZdlPv>
    80001ea0:	00090513          	mv	a0,s2
    80001ea4:	0000b097          	auipc	ra,0xb
    80001ea8:	dc4080e7          	jalr	-572(ra) # 8000cc68 <_Unwind_Resume>
}
    80001eac:	00048513          	mv	a0,s1
    80001eb0:	02813083          	ld	ra,40(sp)
    80001eb4:	02013403          	ld	s0,32(sp)
    80001eb8:	01813483          	ld	s1,24(sp)
    80001ebc:	01013903          	ld	s2,16(sp)
    80001ec0:	00813983          	ld	s3,8(sp)
    80001ec4:	03010113          	addi	sp,sp,48
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN3TCB7toSleepEm>:

void TCB::toSleep(uint64 wakeTime)
{
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00113423          	sd	ra,8(sp)
    80001ed4:	00813023          	sd	s0,0(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    80001edc:	00050593          	mv	a1,a0
    running->setSleep(true);
    80001ee0:	0000a517          	auipc	a0,0xa
    80001ee4:	ba053503          	ld	a0,-1120(a0) # 8000ba80 <_ZN3TCB7runningE>
    void setSleep(bool flag){ TCB::sleep = flag;}
    80001ee8:	00100713          	li	a4,1
    80001eec:	02e509a3          	sb	a4,51(a0)
    Scheduler::putSorted(running,wakeTime);
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	f60080e7          	jalr	-160(ra) # 80002e50 <_ZN9Scheduler9putSortedEP3TCBm>
}
    80001ef8:	00813083          	ld	ra,8(sp)
    80001efc:	00013403          	ld	s0,0(sp)
    80001f00:	01010113          	addi	sp,sp,16
    80001f04:	00008067          	ret

0000000080001f08 <_ZN9myConsole8getInputEv>:
mySemaphore* myConsole::inputSpaceAvail;
mySemaphore* myConsole::mutexIn;
mySemaphore* myConsole::mutexOut;
TCB* myConsole::consumer;
char myConsole::getInput()
{
    80001f08:	fe010113          	addi	sp,sp,-32
    80001f0c:	00113c23          	sd	ra,24(sp)
    80001f10:	00813823          	sd	s0,16(sp)
    80001f14:	00913423          	sd	s1,8(sp)
    80001f18:	01213023          	sd	s2,0(sp)
    80001f1c:	02010413          	addi	s0,sp,32
    inputItemAvail->wait();
    80001f20:	0000a497          	auipc	s1,0xa
    80001f24:	b7848493          	addi	s1,s1,-1160 # 8000ba98 <_ZN9myConsole14inputItemAvailE>
    80001f28:	0004b503          	ld	a0,0(s1)
    80001f2c:	fffff097          	auipc	ra,0xfffff
    80001f30:	72c080e7          	jalr	1836(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    mutexIn->wait();
    80001f34:	0084b503          	ld	a0,8(s1)
    80001f38:	fffff097          	auipc	ra,0xfffff
    80001f3c:	720080e7          	jalr	1824(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    char ret=inputBuf[inputHead];
    80001f40:	0104a783          	lw	a5,16(s1)
    80001f44:	0184b703          	ld	a4,24(s1)
    80001f48:	00f70733          	add	a4,a4,a5
    80001f4c:	00074903          	lbu	s2,0(a4)
    inputHead=(inputHead+1)%1024;
    80001f50:	0017879b          	addiw	a5,a5,1
    80001f54:	41f7d71b          	sraiw	a4,a5,0x1f
    80001f58:	0167571b          	srliw	a4,a4,0x16
    80001f5c:	00e787bb          	addw	a5,a5,a4
    80001f60:	3ff7f793          	andi	a5,a5,1023
    80001f64:	40e787bb          	subw	a5,a5,a4
    80001f68:	00f4a823          	sw	a5,16(s1)

    mutexIn->signal();
    80001f6c:	0084b503          	ld	a0,8(s1)
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	88c080e7          	jalr	-1908(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    inputSpaceAvail->signal();
    80001f78:	0204b503          	ld	a0,32(s1)
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	880080e7          	jalr	-1920(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    return ret;
}
    80001f84:	00090513          	mv	a0,s2
    80001f88:	01813083          	ld	ra,24(sp)
    80001f8c:	01013403          	ld	s0,16(sp)
    80001f90:	00813483          	ld	s1,8(sp)
    80001f94:	00013903          	ld	s2,0(sp)
    80001f98:	02010113          	addi	sp,sp,32
    80001f9c:	00008067          	ret

0000000080001fa0 <_ZN9myConsole9getOutputEv>:

char myConsole::getOutput()
{
    80001fa0:	fe010113          	addi	sp,sp,-32
    80001fa4:	00113c23          	sd	ra,24(sp)
    80001fa8:	00813823          	sd	s0,16(sp)
    80001fac:	00913423          	sd	s1,8(sp)
    80001fb0:	01213023          	sd	s2,0(sp)
    80001fb4:	02010413          	addi	s0,sp,32
    outputItemAvail->wait();
    80001fb8:	0000a497          	auipc	s1,0xa
    80001fbc:	ae048493          	addi	s1,s1,-1312 # 8000ba98 <_ZN9myConsole14inputItemAvailE>
    80001fc0:	0284b503          	ld	a0,40(s1)
    80001fc4:	fffff097          	auipc	ra,0xfffff
    80001fc8:	694080e7          	jalr	1684(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    mutexOut->wait();
    80001fcc:	0304b503          	ld	a0,48(s1)
    80001fd0:	fffff097          	auipc	ra,0xfffff
    80001fd4:	688080e7          	jalr	1672(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    char ret=outputBuf[outputHead];
    80001fd8:	0384a783          	lw	a5,56(s1)
    80001fdc:	0404b703          	ld	a4,64(s1)
    80001fe0:	00f70733          	add	a4,a4,a5
    80001fe4:	00074903          	lbu	s2,0(a4)
    outputHead=(outputHead+1)%1024;
    80001fe8:	0017879b          	addiw	a5,a5,1
    80001fec:	41f7d71b          	sraiw	a4,a5,0x1f
    80001ff0:	0167571b          	srliw	a4,a4,0x16
    80001ff4:	00e787bb          	addw	a5,a5,a4
    80001ff8:	3ff7f793          	andi	a5,a5,1023
    80001ffc:	40e787bb          	subw	a5,a5,a4
    80002000:	02f4ac23          	sw	a5,56(s1)
    outSize--;
    80002004:	0484a783          	lw	a5,72(s1)
    80002008:	fff7879b          	addiw	a5,a5,-1
    8000200c:	04f4a423          	sw	a5,72(s1)

    mutexOut->signal();
    80002010:	0304b503          	ld	a0,48(s1)
    80002014:	fffff097          	auipc	ra,0xfffff
    80002018:	7e8080e7          	jalr	2024(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    outputSpaceAvail->signal();
    8000201c:	0504b503          	ld	a0,80(s1)
    80002020:	fffff097          	auipc	ra,0xfffff
    80002024:	7dc080e7          	jalr	2012(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    return ret;
}
    80002028:	00090513          	mv	a0,s2
    8000202c:	01813083          	ld	ra,24(sp)
    80002030:	01013403          	ld	s0,16(sp)
    80002034:	00813483          	ld	s1,8(sp)
    80002038:	00013903          	ld	s2,0(sp)
    8000203c:	02010113          	addi	sp,sp,32
    80002040:	00008067          	ret

0000000080002044 <_ZN9myConsole8setInputEc>:

void myConsole::setInput(char c)
{
    80002044:	fe010113          	addi	sp,sp,-32
    80002048:	00113c23          	sd	ra,24(sp)
    8000204c:	00813823          	sd	s0,16(sp)
    80002050:	00913423          	sd	s1,8(sp)
    80002054:	01213023          	sd	s2,0(sp)
    80002058:	02010413          	addi	s0,sp,32
    8000205c:	00050913          	mv	s2,a0
    inputSpaceAvail->wait();
    80002060:	0000a497          	auipc	s1,0xa
    80002064:	a3848493          	addi	s1,s1,-1480 # 8000ba98 <_ZN9myConsole14inputItemAvailE>
    80002068:	0204b503          	ld	a0,32(s1)
    8000206c:	fffff097          	auipc	ra,0xfffff
    80002070:	5ec080e7          	jalr	1516(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    mutexIn->wait();
    80002074:	0084b503          	ld	a0,8(s1)
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	5e0080e7          	jalr	1504(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    inputBuf[inputTail]=c;
    80002080:	0584a703          	lw	a4,88(s1)
    80002084:	0184b783          	ld	a5,24(s1)
    80002088:	00e787b3          	add	a5,a5,a4
    8000208c:	01278023          	sb	s2,0(a5) # 1000 <_entry-0x7ffff000>
    inputTail=(inputTail+1)%1024;
    80002090:	0584a783          	lw	a5,88(s1)
    80002094:	0017879b          	addiw	a5,a5,1
    80002098:	41f7d71b          	sraiw	a4,a5,0x1f
    8000209c:	0167571b          	srliw	a4,a4,0x16
    800020a0:	00e787bb          	addw	a5,a5,a4
    800020a4:	3ff7f793          	andi	a5,a5,1023
    800020a8:	40e787bb          	subw	a5,a5,a4
    800020ac:	04f4ac23          	sw	a5,88(s1)
    mutexIn->signal();
    800020b0:	0084b503          	ld	a0,8(s1)
    800020b4:	fffff097          	auipc	ra,0xfffff
    800020b8:	748080e7          	jalr	1864(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    inputItemAvail->signal();
    800020bc:	0004b503          	ld	a0,0(s1)
    800020c0:	fffff097          	auipc	ra,0xfffff
    800020c4:	73c080e7          	jalr	1852(ra) # 800017fc <_ZN11mySemaphore6signalEv>
}
    800020c8:	01813083          	ld	ra,24(sp)
    800020cc:	01013403          	ld	s0,16(sp)
    800020d0:	00813483          	ld	s1,8(sp)
    800020d4:	00013903          	ld	s2,0(sp)
    800020d8:	02010113          	addi	sp,sp,32
    800020dc:	00008067          	ret

00000000800020e0 <_ZN9myConsole9setOutputEc>:

void myConsole::setOutput(char c)
{
    800020e0:	fe010113          	addi	sp,sp,-32
    800020e4:	00113c23          	sd	ra,24(sp)
    800020e8:	00813823          	sd	s0,16(sp)
    800020ec:	00913423          	sd	s1,8(sp)
    800020f0:	01213023          	sd	s2,0(sp)
    800020f4:	02010413          	addi	s0,sp,32
    800020f8:	00050913          	mv	s2,a0
    outputSpaceAvail->wait();
    800020fc:	0000a497          	auipc	s1,0xa
    80002100:	99c48493          	addi	s1,s1,-1636 # 8000ba98 <_ZN9myConsole14inputItemAvailE>
    80002104:	0504b503          	ld	a0,80(s1)
    80002108:	fffff097          	auipc	ra,0xfffff
    8000210c:	550080e7          	jalr	1360(ra) # 80001658 <_ZN11mySemaphore4waitEv>
    mutexOut->wait();
    80002110:	0304b503          	ld	a0,48(s1)
    80002114:	fffff097          	auipc	ra,0xfffff
    80002118:	544080e7          	jalr	1348(ra) # 80001658 <_ZN11mySemaphore4waitEv>

    outputBuf[outputTail]=c;
    8000211c:	05c4a703          	lw	a4,92(s1)
    80002120:	0404b783          	ld	a5,64(s1)
    80002124:	00e787b3          	add	a5,a5,a4
    80002128:	01278023          	sb	s2,0(a5)
    outputTail=(outputTail+1)%1024;
    8000212c:	05c4a783          	lw	a5,92(s1)
    80002130:	0017879b          	addiw	a5,a5,1
    80002134:	41f7d71b          	sraiw	a4,a5,0x1f
    80002138:	0167571b          	srliw	a4,a4,0x16
    8000213c:	00e787bb          	addw	a5,a5,a4
    80002140:	3ff7f793          	andi	a5,a5,1023
    80002144:	40e787bb          	subw	a5,a5,a4
    80002148:	04f4ae23          	sw	a5,92(s1)
    outSize++;
    8000214c:	0484a783          	lw	a5,72(s1)
    80002150:	0017879b          	addiw	a5,a5,1
    80002154:	04f4a423          	sw	a5,72(s1)

    mutexOut->signal();
    80002158:	0304b503          	ld	a0,48(s1)
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	6a0080e7          	jalr	1696(ra) # 800017fc <_ZN11mySemaphore6signalEv>
    outputItemAvail->signal();
    80002164:	0284b503          	ld	a0,40(s1)
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	694080e7          	jalr	1684(ra) # 800017fc <_ZN11mySemaphore6signalEv>

}
    80002170:	01813083          	ld	ra,24(sp)
    80002174:	01013403          	ld	s0,16(sp)
    80002178:	00813483          	ld	s1,8(sp)
    8000217c:	00013903          	ld	s2,0(sp)
    80002180:	02010113          	addi	sp,sp,32
    80002184:	00008067          	ret

0000000080002188 <_ZN9myConsole11putcHandlerEv>:
    putcHandler();
}


void myConsole::putcHandler()
{   //uzima znak po znak iz izlaznog buffera i prenosi ga kontroleru konzole
    80002188:	fe010113          	addi	sp,sp,-32
    8000218c:	00113c23          	sd	ra,24(sp)
    80002190:	00813823          	sd	s0,16(sp)
    80002194:	00913423          	sd	s1,8(sp)
    80002198:	02010413          	addi	s0,sp,32
    char* insert = (char* ) CONSOLE_TX_DATA;
    8000219c:	0000a797          	auipc	a5,0xa
    800021a0:	8447b783          	ld	a5,-1980(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800021a4:	0007b483          	ld	s1,0(a5)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT){
    800021a8:	00009797          	auipc	a5,0x9
    800021ac:	7e87b783          	ld	a5,2024(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021b0:	0007b783          	ld	a5,0(a5)
    800021b4:	0007c783          	lbu	a5,0(a5)
    800021b8:	0207f793          	andi	a5,a5,32
    800021bc:	00078a63          	beqz	a5,800021d0 <_ZN9myConsole11putcHandlerEv+0x48>
        *insert = getOutput();
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	de0080e7          	jalr	-544(ra) # 80001fa0 <_ZN9myConsole9getOutputEv>
    800021c8:	00a48023          	sb	a0,0(s1)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT){
    800021cc:	fddff06f          	j	800021a8 <_ZN9myConsole11putcHandlerEv+0x20>
    }
}
    800021d0:	01813083          	ld	ra,24(sp)
    800021d4:	01013403          	ld	s0,16(sp)
    800021d8:	00813483          	ld	s1,8(sp)
    800021dc:	02010113          	addi	sp,sp,32
    800021e0:	00008067          	ret

00000000800021e4 <_ZN9myConsole18putcHandlerWrapperEPv>:
{
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00113423          	sd	ra,8(sp)
    800021ec:	00813023          	sd	s0,0(sp)
    800021f0:	01010413          	addi	s0,sp,16
    putcHandler();
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	f94080e7          	jalr	-108(ra) # 80002188 <_ZN9myConsole11putcHandlerEv>
}
    800021fc:	00813083          	ld	ra,8(sp)
    80002200:	00013403          	ld	s0,0(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <_ZN9myConsole15console_handlerEv>:

void myConsole::console_handler()
{
    8000220c:	fe010113          	addi	sp,sp,-32
    80002210:	00113c23          	sd	ra,24(sp)
    80002214:	00813823          	sd	s0,16(sp)
    80002218:	00913423          	sd	s1,8(sp)
    8000221c:	02010413          	addi	s0,sp,32
    //smestamo u ulazni bafer
    if(plic_claim() == CONSOLE_IRQ){
    80002220:	00005097          	auipc	ra,0x5
    80002224:	084080e7          	jalr	132(ra) # 800072a4 <plic_claim>
    80002228:	00a00793          	li	a5,10
    8000222c:	00f50c63          	beq	a0,a5,80002244 <_ZN9myConsole15console_handlerEv+0x38>
            setInput(*write);
        }
        plic_complete(CONSOLE_IRQ);
    }

}
    80002230:	01813083          	ld	ra,24(sp)
    80002234:	01013403          	ld	s0,16(sp)
    80002238:	00813483          	ld	s1,8(sp)
    8000223c:	02010113          	addi	sp,sp,32
    80002240:	00008067          	ret
        char* write = (char*) CONSOLE_RX_DATA;
    80002244:	00009797          	auipc	a5,0x9
    80002248:	73c7b783          	ld	a5,1852(a5) # 8000b980 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000224c:	0007b483          	ld	s1,0(a5)
        while(*(char*) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    80002250:	00009797          	auipc	a5,0x9
    80002254:	7407b783          	ld	a5,1856(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002258:	0007b783          	ld	a5,0(a5)
    8000225c:	0007c783          	lbu	a5,0(a5)
    80002260:	0017f793          	andi	a5,a5,1
    80002264:	00078a63          	beqz	a5,80002278 <_ZN9myConsole15console_handlerEv+0x6c>
            setInput(*write);
    80002268:	0004c503          	lbu	a0,0(s1)
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	dd8080e7          	jalr	-552(ra) # 80002044 <_ZN9myConsole8setInputEc>
        while(*(char*) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    80002274:	fddff06f          	j	80002250 <_ZN9myConsole15console_handlerEv+0x44>
        plic_complete(CONSOLE_IRQ);
    80002278:	00a00513          	li	a0,10
    8000227c:	00005097          	auipc	ra,0x5
    80002280:	060080e7          	jalr	96(ra) # 800072dc <plic_complete>
}
    80002284:	fadff06f          	j	80002230 <_ZN9myConsole15console_handlerEv+0x24>

0000000080002288 <_ZN9myConsole4waitEv>:

void myConsole::wait()
{
    while(outSize) thread_dispatch();
    80002288:	0000a797          	auipc	a5,0xa
    8000228c:	8587a783          	lw	a5,-1960(a5) # 8000bae0 <_ZN9myConsole7outSizeE>
    80002290:	02078c63          	beqz	a5,800022c8 <_ZN9myConsole4waitEv+0x40>
{
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00113423          	sd	ra,8(sp)
    8000229c:	00813023          	sd	s0,0(sp)
    800022a0:	01010413          	addi	s0,sp,16
    while(outSize) thread_dispatch();
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	140080e7          	jalr	320(ra) # 800013e4 <_Z15thread_dispatchv>
    800022ac:	0000a797          	auipc	a5,0xa
    800022b0:	8347a783          	lw	a5,-1996(a5) # 8000bae0 <_ZN9myConsole7outSizeE>
    800022b4:	fe0798e3          	bnez	a5,800022a4 <_ZN9myConsole4waitEv+0x1c>
}
    800022b8:	00813083          	ld	ra,8(sp)
    800022bc:	00013403          	ld	s0,0(sp)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret
    800022c8:	00008067          	ret

00000000800022cc <_ZN6ThreadD1Ev>:
#define syscall_cpp
#include "./syscall_c.h"
void* operator new (size_t);
void operator delete (void*);

class Thread {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
    800022d8:	00813403          	ld	s0,8(sp)
    800022dc:	01010113          	addi	sp,sp,16
    800022e0:	00008067          	ret

00000000800022e4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    800022e4:	ff010113          	addi	sp,sp,-16
    800022e8:	00113423          	sd	ra,8(sp)
    800022ec:	00813023          	sd	s0,0(sp)
    800022f0:	01010413          	addi	s0,sp,16
    800022f4:	00009797          	auipc	a5,0x9
    800022f8:	49c78793          	addi	a5,a5,1180 # 8000b790 <_ZTV9Semaphore+0x10>
    800022fc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002300:	00853503          	ld	a0,8(a0)
    80002304:	fffff097          	auipc	ra,0xfffff
    80002308:	140080e7          	jalr	320(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    8000230c:	00813083          	ld	ra,8(sp)
    80002310:	00013403          	ld	s0,0(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_Znwm>:
void* operator new (size_t mem){ return mem_alloc(mem);}
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00113423          	sd	ra,8(sp)
    80002324:	00813023          	sd	s0,0(sp)
    80002328:	01010413          	addi	s0,sp,16
    8000232c:	fffff097          	auipc	ra,0xfffff
    80002330:	f28080e7          	jalr	-216(ra) # 80001254 <_Z9mem_allocm>
    80002334:	00813083          	ld	ra,8(sp)
    80002338:	00013403          	ld	s0,0(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00113423          	sd	ra,8(sp)
    8000234c:	00813023          	sd	s0,0(sp)
    80002350:	01010413          	addi	s0,sp,16
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	f00080e7          	jalr	-256(ra) # 80001254 <_Z9mem_allocm>
    8000235c:	00813083          	ld	ra,8(sp)
    80002360:	00013403          	ld	s0,0(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret

000000008000236c <_ZdlPv>:
void operator delete(void* addr) { mem_free(addr); }
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00113423          	sd	ra,8(sp)
    80002374:	00813023          	sd	s0,0(sp)
    80002378:	01010413          	addi	s0,sp,16
    8000237c:	fffff097          	auipc	ra,0xfffff
    80002380:	f14080e7          	jalr	-236(ra) # 80001290 <_Z8mem_freePv>
    80002384:	00813083          	ld	ra,8(sp)
    80002388:	00013403          	ld	s0,0(sp)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret

0000000080002394 <_ZN6ThreadD0Ev>:
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00113423          	sd	ra,8(sp)
    8000239c:	00813023          	sd	s0,0(sp)
    800023a0:	01010413          	addi	s0,sp,16
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	fc8080e7          	jalr	-56(ra) # 8000236c <_ZdlPv>
    800023ac:	00813083          	ld	ra,8(sp)
    800023b0:	00013403          	ld	s0,0(sp)
    800023b4:	01010113          	addi	sp,sp,16
    800023b8:	00008067          	ret

00000000800023bc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800023bc:	fe010113          	addi	sp,sp,-32
    800023c0:	00113c23          	sd	ra,24(sp)
    800023c4:	00813823          	sd	s0,16(sp)
    800023c8:	00913423          	sd	s1,8(sp)
    800023cc:	02010413          	addi	s0,sp,32
    800023d0:	00050493          	mv	s1,a0
}
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	f10080e7          	jalr	-240(ra) # 800022e4 <_ZN9SemaphoreD1Ev>
    800023dc:	00048513          	mv	a0,s1
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	f8c080e7          	jalr	-116(ra) # 8000236c <_ZdlPv>
    800023e8:	01813083          	ld	ra,24(sp)
    800023ec:	01013403          	ld	s0,16(sp)
    800023f0:	00813483          	ld	s1,8(sp)
    800023f4:	02010113          	addi	sp,sp,32
    800023f8:	00008067          	ret

00000000800023fc <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00113423          	sd	ra,8(sp)
    80002404:	00813023          	sd	s0,0(sp)
    80002408:	01010413          	addi	s0,sp,16
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	e84080e7          	jalr	-380(ra) # 80001290 <_Z8mem_freePv>
    80002414:	00813083          	ld	ra,8(sp)
    80002418:	00013403          	ld	s0,0(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00813423          	sd	s0,8(sp)
    8000242c:	01010413          	addi	s0,sp,16
    80002430:	00009797          	auipc	a5,0x9
    80002434:	33878793          	addi	a5,a5,824 # 8000b768 <_ZTV6Thread+0x10>
    80002438:	00f53023          	sd	a5,0(a0)
    8000243c:	00053423          	sd	zero,8(a0)
    80002440:	00b53823          	sd	a1,16(a0)
    80002444:	00c53c23          	sd	a2,24(a0)
}
    80002448:	00813403          	ld	s0,8(sp)
    8000244c:	01010113          	addi	sp,sp,16
    80002450:	00008067          	ret

0000000080002454 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00813423          	sd	s0,8(sp)
    8000245c:	01010413          	addi	s0,sp,16
    80002460:	00009797          	auipc	a5,0x9
    80002464:	30878793          	addi	a5,a5,776 # 8000b768 <_ZTV6Thread+0x10>
    80002468:	00f53023          	sd	a5,0(a0)
    8000246c:	00053423          	sd	zero,8(a0)
    80002470:	00000797          	auipc	a5,0x0
    80002474:	25c78793          	addi	a5,a5,604 # 800026cc <_ZN6Thread10runWrapperEPv>
    80002478:	00f53823          	sd	a5,16(a0)
    8000247c:	00a53c23          	sd	a0,24(a0)
}
    80002480:	00813403          	ld	s0,8(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_ZN6Thread8dispatchEv>:
{
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	f48080e7          	jalr	-184(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN6Thread5startEv>:
{
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00113423          	sd	ra,8(sp)
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,body, arg);
    800024c4:	01853603          	ld	a2,24(a0)
    800024c8:	01053583          	ld	a1,16(a0)
    800024cc:	00850513          	addi	a0,a0,8
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	e58080e7          	jalr	-424(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800024d8:	00813083          	ld	ra,8(sp)
    800024dc:	00013403          	ld	s0,0(sp)
    800024e0:	01010113          	addi	sp,sp,16
    800024e4:	00008067          	ret

00000000800024e8 <_ZN6Thread5sleepEm>:
{
    800024e8:	ff010113          	addi	sp,sp,-16
    800024ec:	00113423          	sd	ra,8(sp)
    800024f0:	00813023          	sd	s0,0(sp)
    800024f4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800024f8:	fffff097          	auipc	ra,0xfffff
    800024fc:	ff4080e7          	jalr	-12(ra) # 800014ec <_Z10time_sleepm>
}
    80002500:	00813083          	ld	ra,8(sp)
    80002504:	00013403          	ld	s0,0(sp)
    80002508:	01010113          	addi	sp,sp,16
    8000250c:	00008067          	ret

0000000080002510 <_ZN14PeriodicThread3runEv>:
}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    80002510:	fe010113          	addi	sp,sp,-32
    80002514:	00113c23          	sd	ra,24(sp)
    80002518:	00813823          	sd	s0,16(sp)
    8000251c:	00913423          	sd	s1,8(sp)
    80002520:	02010413          	addi	s0,sp,32
    80002524:	00050493          	mv	s1,a0
    while(period){
    80002528:	0204b783          	ld	a5,32(s1)
    8000252c:	02078263          	beqz	a5,80002550 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002530:	0004b783          	ld	a5,0(s1)
    80002534:	0187b783          	ld	a5,24(a5)
    80002538:	00048513          	mv	a0,s1
    8000253c:	000780e7          	jalr	a5
        sleep(period);
    80002540:	0204b503          	ld	a0,32(s1)
    80002544:	00000097          	auipc	ra,0x0
    80002548:	fa4080e7          	jalr	-92(ra) # 800024e8 <_ZN6Thread5sleepEm>
    while(period){
    8000254c:	fddff06f          	j	80002528 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002550:	01813083          	ld	ra,24(sp)
    80002554:	01013403          	ld	s0,16(sp)
    80002558:	00813483          	ld	s1,8(sp)
    8000255c:	02010113          	addi	sp,sp,32
    80002560:	00008067          	ret

0000000080002564 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00113423          	sd	ra,8(sp)
    8000256c:	00813023          	sd	s0,0(sp)
    80002570:	01010413          	addi	s0,sp,16
    80002574:	00009797          	auipc	a5,0x9
    80002578:	21c78793          	addi	a5,a5,540 # 8000b790 <_ZTV9Semaphore+0x10>
    8000257c:	00f53023          	sd	a5,0(a0)
    80002580:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    80002584:	00850513          	addi	a0,a0,8
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	e80080e7          	jalr	-384(ra) # 80001408 <_Z8sem_openPP4_semj>
}
    80002590:	00813083          	ld	ra,8(sp)
    80002594:	00013403          	ld	s0,0(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800025b0:	00853503          	ld	a0,8(a0)
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	ec8080e7          	jalr	-312(ra) # 8000147c <_Z8sem_waitP4_sem>
}
    800025bc:	00813083          	ld	ra,8(sp)
    800025c0:	00013403          	ld	s0,0(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800025cc:	ff010113          	addi	sp,sp,-16
    800025d0:	00113423          	sd	ra,8(sp)
    800025d4:	00813023          	sd	s0,0(sp)
    800025d8:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800025dc:	00853503          	ld	a0,8(a0)
    800025e0:	fffff097          	auipc	ra,0xfffff
    800025e4:	ed4080e7          	jalr	-300(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    800025e8:	00813083          	ld	ra,8(sp)
    800025ec:	00013403          	ld	s0,0(sp)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){
    800025f8:	fe010113          	addi	sp,sp,-32
    800025fc:	00113c23          	sd	ra,24(sp)
    80002600:	00813823          	sd	s0,16(sp)
    80002604:	00913423          	sd	s1,8(sp)
    80002608:	01213023          	sd	s2,0(sp)
    8000260c:	02010413          	addi	s0,sp,32
    80002610:	00050493          	mv	s1,a0
    80002614:	00058913          	mv	s2,a1
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	e3c080e7          	jalr	-452(ra) # 80002454 <_ZN6ThreadC1Ev>
    80002620:	00009797          	auipc	a5,0x9
    80002624:	19078793          	addi	a5,a5,400 # 8000b7b0 <_ZTV14PeriodicThread+0x10>
    80002628:	00f4b023          	sd	a5,0(s1)
    8000262c:	0324b023          	sd	s2,32(s1)
}
    80002630:	01813083          	ld	ra,24(sp)
    80002634:	01013403          	ld	s0,16(sp)
    80002638:	00813483          	ld	s1,8(sp)
    8000263c:	00013903          	ld	s2,0(sp)
    80002640:	02010113          	addi	sp,sp,32
    80002644:	00008067          	ret

0000000080002648 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00813423          	sd	s0,8(sp)
    80002650:	01010413          	addi	s0,sp,16
    period=0;
    80002654:	02053023          	sd	zero,32(a0)
}
    80002658:	00813403          	ld	s0,8(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_ZN7Console4getcEv>:

char Console::getc() {
    80002664:	ff010113          	addi	sp,sp,-16
    80002668:	00113423          	sd	ra,8(sp)
    8000266c:	00813023          	sd	s0,0(sp)
    80002670:	01010413          	addi	s0,sp,16
    return ::getc();
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	eb0080e7          	jalr	-336(ra) # 80001524 <_Z4getcv>
}
    8000267c:	00813083          	ld	ra,8(sp)
    80002680:	00013403          	ld	s0,0(sp)
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00008067          	ret

000000008000268c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000268c:	ff010113          	addi	sp,sp,-16
    80002690:	00113423          	sd	ra,8(sp)
    80002694:	00813023          	sd	s0,0(sp)
    80002698:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	ebc080e7          	jalr	-324(ra) # 80001558 <_Z4putcc>
    800026a4:	00813083          	ld	ra,8(sp)
    800026a8:	00013403          	ld	s0,0(sp)
    800026ac:	01010113          	addi	sp,sp,16
    800026b0:	00008067          	ret

00000000800026b4 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800026b4:	ff010113          	addi	sp,sp,-16
    800026b8:	00813423          	sd	s0,8(sp)
    800026bc:	01010413          	addi	s0,sp,16
    800026c0:	00813403          	ld	s0,8(sp)
    800026c4:	01010113          	addi	sp,sp,16
    800026c8:	00008067          	ret

00000000800026cc <_ZN6Thread10runWrapperEPv>:
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* thread){
        if(thread) ((Thread*) thread)->run();
    800026cc:	02050863          	beqz	a0,800026fc <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread){
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00113423          	sd	ra,8(sp)
    800026d8:	00813023          	sd	s0,0(sp)
    800026dc:	01010413          	addi	s0,sp,16
        if(thread) ((Thread*) thread)->run();
    800026e0:	00053783          	ld	a5,0(a0)
    800026e4:	0107b783          	ld	a5,16(a5)
    800026e8:	000780e7          	jalr	a5
    }
    800026ec:	00813083          	ld	ra,8(sp)
    800026f0:	00013403          	ld	s0,0(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret
    800026fc:	00008067          	ret

0000000080002700 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00813423          	sd	s0,8(sp)
    80002708:	01010413          	addi	s0,sp,16
    8000270c:	00813403          	ld	s0,8(sp)
    80002710:	01010113          	addi	sp,sp,16
    80002714:	00008067          	ret

0000000080002718 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002718:	ff010113          	addi	sp,sp,-16
    8000271c:	00813423          	sd	s0,8(sp)
    80002720:	01010413          	addi	s0,sp,16
    80002724:	00009797          	auipc	a5,0x9
    80002728:	08c78793          	addi	a5,a5,140 # 8000b7b0 <_ZTV14PeriodicThread+0x10>
    8000272c:	00f53023          	sd	a5,0(a0)
    80002730:	00813403          	ld	s0,8(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <_ZN14PeriodicThreadD0Ev>:
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00113423          	sd	ra,8(sp)
    80002744:	00813023          	sd	s0,0(sp)
    80002748:	01010413          	addi	s0,sp,16
    8000274c:	00009797          	auipc	a5,0x9
    80002750:	06478793          	addi	a5,a5,100 # 8000b7b0 <_ZTV14PeriodicThread+0x10>
    80002754:	00f53023          	sd	a5,0(a0)
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	c14080e7          	jalr	-1004(ra) # 8000236c <_ZdlPv>
    80002760:	00813083          	ld	ra,8(sp)
    80002764:	00013403          	ld	s0,0(sp)
    80002768:	01010113          	addi	sp,sp,16
    8000276c:	00008067          	ret

0000000080002770 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"
#include "../h/Semaphore.hpp"
#include "../h/myConsole.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80002770:	ff010113          	addi	sp,sp,-16
    80002774:	00813423          	sd	s0,8(sp)
    80002778:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    if (TCB::running->body== nullptr )
    8000277c:	00009797          	auipc	a5,0x9
    80002780:	2a47b783          	ld	a5,676(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002784:	0007b783          	ld	a5,0(a5)
    80002788:	0007b783          	ld	a5,0(a5)
    8000278c:	02078063          	beqz	a5,800027ac <_ZN5Riscv10popSppSpieEv+0x3c>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002790:	10000793          	li	a5,256
    80002794:	1007b073          	csrc	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    else mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002798:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000279c:	10200073          	sret
}
    800027a0:	00813403          	ld	s0,8(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800027ac:	10000793          	li	a5,256
    800027b0:	1007a073          	csrs	sstatus,a5
}
    800027b4:	fe5ff06f          	j	80002798 <_ZN5Riscv10popSppSpieEv+0x28>

00000000800027b8 <_ZN5Riscv13kernelWrapperEv>:
void Riscv::kernelWrapper()
{
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00813423          	sd	s0,8(sp)
    800027c0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800027c4:	10000793          	li	a5,256
    800027c8:	1007a073          	csrs	sstatus,a5
     ms_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    800027cc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800027d0:	10200073          	sret
}
    800027d4:	00813403          	ld	s0,8(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret

00000000800027e0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    800027e0:	f2010113          	addi	sp,sp,-224
    800027e4:	0c113c23          	sd	ra,216(sp)
    800027e8:	0c813823          	sd	s0,208(sp)
    800027ec:	0c913423          	sd	s1,200(sp)
    800027f0:	0e010413          	addi	s0,sp,224
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800027f4:	142027f3          	csrr	a5,scause
    800027f8:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800027fc:	fb843703          	ld	a4,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    80002800:	ff870693          	addi	a3,a4,-8
    80002804:	00100793          	li	a5,1
    80002808:	02d7fc63          	bgeu	a5,a3,80002840 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    else if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver/tajmer prekid
    8000280c:	fff00793          	li	a5,-1
    80002810:	03f79793          	slli	a5,a5,0x3f
    80002814:	00178793          	addi	a5,a5,1
    80002818:	34f70e63          	beq	a4,a5,80002b74 <_ZN5Riscv20handleSupervisorTrapEv+0x394>
        }

        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (scause==0x8000000000000009UL){
    8000281c:	fff00793          	li	a5,-1
    80002820:	03f79793          	slli	a5,a5,0x3f
    80002824:	00978793          	addi	a5,a5,9
    80002828:	42f70263          	beq	a4,a5,80002c4c <_ZN5Riscv20handleSupervisorTrapEv+0x46c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000282c:	141027f3          	csrr	a5,sepc
    80002830:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002834:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002838:	14179073          	csrw	sepc,a5
        //sepc- gde se desilo
        // stval - dodatno opise cause

        uint64 sepc=r_sepc();
        w_sepc(sepc);
        while(true);
    8000283c:	0000006f          	j	8000283c <_ZN5Riscv20handleSupervisorTrapEv+0x5c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002840:	141027f3          	csrr	a5,sepc
    80002844:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002848:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    8000284c:	00478793          	addi	a5,a5,4
    80002850:	f2f43823          	sd	a5,-208(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002854:	100027f3          	csrr	a5,sstatus
    80002858:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    8000285c:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80002860:	f2f43c23          	sd	a5,-200(s0)
        __asm__ volatile("ld %0, 80(fp)":"=r"(a0));
    80002864:	05043783          	ld	a5,80(s0)
    80002868:	f4f43023          	sd	a5,-192(s0)
        switch(a0){
    8000286c:	f4043783          	ld	a5,-192(s0)
    80002870:	04200713          	li	a4,66
    80002874:	2ef76663          	bltu	a4,a5,80002b60 <_ZN5Riscv20handleSupervisorTrapEv+0x380>
    80002878:	00279793          	slli	a5,a5,0x2
    8000287c:	00006717          	auipc	a4,0x6
    80002880:	7a470713          	addi	a4,a4,1956 # 80009020 <CONSOLE_STATUS+0x10>
    80002884:	00e787b3          	add	a5,a5,a4
    80002888:	0007a783          	lw	a5,0(a5)
    8000288c:	00e787b3          	add	a5,a5,a4
    80002890:	00078067          	jr	a5
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(a1));
    80002894:	05843783          	ld	a5,88(s0)
    80002898:	f4f43423          	sd	a5,-184(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    8000289c:	f4843503          	ld	a0,-184(s0)
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	774080e7          	jalr	1908(ra) # 80003014 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    800028a8:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    800028ac:	04a43823          	sd	a0,80(s0)
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    800028b0:	f3043783          	ld	a5,-208(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800028b4:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    800028b8:	f3843783          	ld	a5,-200(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800028bc:	10079073          	csrw	sstatus,a5
    }
    800028c0:	0d813083          	ld	ra,216(sp)
    800028c4:	0d013403          	ld	s0,208(sp)
    800028c8:	0c813483          	ld	s1,200(sp)
    800028cc:	0e010113          	addi	sp,sp,224
    800028d0:	00008067          	ret
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(addr));
    800028d4:	05843783          	ld	a5,88(s0)
    800028d8:	f4f43823          	sd	a5,-176(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    800028dc:	f5043503          	ld	a0,-176(s0)
    800028e0:	00001097          	auipc	ra,0x1
    800028e4:	890080e7          	jalr	-1904(ra) # 80003170 <_ZN15MemoryAllocator8mem_freeEPv>
    800028e8:	f4a43c23          	sd	a0,-168(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    800028ec:	f5843783          	ld	a5,-168(s0)
    800028f0:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800028f4:	04a43823          	sd	a0,80(s0)
                break;
    800028f8:	fb9ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                space=MemoryAllocator::getFree();
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	684080e7          	jalr	1668(ra) # 80002f80 <_ZN15MemoryAllocator7getFreeEv>
    80002904:	f6a43023          	sd	a0,-160(s0)
                __asm__ volatile("mv a0, %0"::"r"(space));
    80002908:	f6043783          	ld	a5,-160(s0)
    8000290c:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002910:	04a43823          	sd	a0,80(s0)
                break;
    80002914:	f9dff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                block=MemoryAllocator::getLargestFreeBlock();
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	688080e7          	jalr	1672(ra) # 80002fa0 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    80002920:	f6a43423          	sd	a0,-152(s0)
                __asm__ volatile("mv a0, %0"::"r"(block));
    80002924:	f6843783          	ld	a5,-152(s0)
    80002928:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    8000292c:	04a43823          	sd	a0,80(s0)
                break;
    80002930:	f81ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002934:	05843783          	ld	a5,88(s0)
    80002938:	f6f43823          	sd	a5,-144(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(start_routine));
    8000293c:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(arg));
    80002940:	06843783          	ld	a5,104(s0)
    80002944:	f6f43c23          	sd	a5,-136(s0)
                __asm__ volatile("ld %0, 8*14(fp)":"=r"(addr));
    80002948:	07043783          	ld	a5,112(s0)
    8000294c:	f8f43023          	sd	a5,-128(s0)
                TCB *thread =TCB::createThread(body,arg,addr);
    80002950:	f7843583          	ld	a1,-136(s0)
    80002954:	f8043603          	ld	a2,-128(s0)
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	288080e7          	jalr	648(ra) # 80001be0 <_ZN3TCB12createThreadEPFvPvES0_S0_>
                *(TCB**) handle= thread;
    80002960:	f7043703          	ld	a4,-144(s0)
    80002964:	00a73023          	sd	a0,0(a4)
                if(thread){
    80002968:	00050a63          	beqz	a0,8000297c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    __asm__ volatile("mv a0, %0"::"r"(0));
    8000296c:	00000793          	li	a5,0
    80002970:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002974:	04a43823          	sd	a0,80(s0)
    80002978:	f39ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    8000297c:	fff00793          	li	a5,-1
    80002980:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002984:	04a43823          	sd	a0,80(s0)
    80002988:	f29ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                TCB::timeSliceCounter=0;
    8000298c:	00009797          	auipc	a5,0x9
    80002990:	0447b783          	ld	a5,68(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002994:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	3d8080e7          	jalr	984(ra) # 80001d70 <_ZN3TCB8dispatchEv>
                break;
    800029a0:	f11ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                if(!TCB::running->isFinished()){
    800029a4:	00009797          	auipc	a5,0x9
    800029a8:	07c7b783          	ld	a5,124(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
    800029ac:	0007b783          	ld	a5,0(a5)
    bool isFinished(){return finished;}
    800029b0:	0307c703          	lbu	a4,48(a5)
    800029b4:	00070a63          	beqz	a4,800029c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                else ret=-1;
    800029b8:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0"::"r"(ret));
    800029bc:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800029c0:	04a43823          	sd	a0,80(s0)
                break;
    800029c4:	eedff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    void setFinished(bool flag){ TCB::finished = flag;}
    800029c8:	00100713          	li	a4,1
    800029cc:	02e78823          	sb	a4,48(a5)
                    TCB::timeSliceCounter=0;
    800029d0:	00009797          	auipc	a5,0x9
    800029d4:	0007b783          	ld	a5,0(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800029d8:	0007b023          	sd	zero,0(a5)
                    TCB::dispatch();
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	394080e7          	jalr	916(ra) # 80001d70 <_ZN3TCB8dispatchEv>
                uint64 ret=0;
    800029e4:	00000793          	li	a5,0
    800029e8:	fd5ff06f          	j	800029bc <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    800029ec:	05843783          	ld	a5,88(s0)
    800029f0:	f8f43423          	sd	a5,-120(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(init));
    800029f4:	06043783          	ld	a5,96(s0)
    800029f8:	f2f42623          	sw	a5,-212(s0)
                mySemaphore *sem =mySemaphore::createSemaphore(init);
    800029fc:	f2c42503          	lw	a0,-212(s0)
    80002a00:	0005051b          	sext.w	a0,a0
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	b7c080e7          	jalr	-1156(ra) # 80001580 <_ZN11mySemaphore15createSemaphoreEj>
                if(sem){
    80002a0c:	00050e63          	beqz	a0,80002a28 <_ZN5Riscv20handleSupervisorTrapEv+0x248>
                    *(mySemaphore**) handle= sem;
    80002a10:	f8843703          	ld	a4,-120(s0)
    80002a14:	00a73023          	sd	a0,0(a4)
                    ret=0;
    80002a18:	00000793          	li	a5,0
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002a1c:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002a20:	04a43823          	sd	a0,80(s0)
                break;
    80002a24:	e8dff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                else ret=-1;
    80002a28:	fff00793          	li	a5,-1
    80002a2c:	ff1ff06f          	j	80002a1c <_ZN5Riscv20handleSupervisorTrapEv+0x23c>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002a30:	05843783          	ld	a5,88(s0)
    80002a34:	f8f43823          	sd	a5,-112(s0)
                if(!handle){
    80002a38:	f9043783          	ld	a5,-112(s0)
    80002a3c:	02078663          	beqz	a5,80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
                int ret=handle->close();
    80002a40:	f9043503          	ld	a0,-112(s0)
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	d34080e7          	jalr	-716(ra) # 80001778 <_ZN11mySemaphore5closeEv>
    80002a4c:	00050493          	mv	s1,a0
                MemoryAllocator::mem_free(handle);
    80002a50:	f9043503          	ld	a0,-112(s0)
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	71c080e7          	jalr	1820(ra) # 80003170 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002a5c:	00048513          	mv	a0,s1
                __asm__ volatile("sd a0,80(fp)");
    80002a60:	04a43823          	sd	a0,80(s0)
                break;
    80002a64:	e4dff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002a68:	fff00793          	li	a5,-1
    80002a6c:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002a70:	04a43823          	sd	a0,80(s0)
                    break;
    80002a74:	e3dff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002a78:	05843783          	ld	a5,88(s0)
    80002a7c:	f8f43c23          	sd	a5,-104(s0)
                if(!handle){
    80002a80:	f9843783          	ld	a5,-104(s0)
    80002a84:	02078263          	beqz	a5,80002aa8 <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
                __asm__ volatile("mv a0, %0"::"r"(0));
    80002a88:	00000793          	li	a5,0
    80002a8c:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002a90:	04a43823          	sd	a0,80(s0)
                int ret=handle->wait();
    80002a94:	f9843503          	ld	a0,-104(s0)
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	bc0080e7          	jalr	-1088(ra) # 80001658 <_ZN11mySemaphore4waitEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002aa0:	00050513          	mv	a0,a0
                break;
    80002aa4:	e0dff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002aa8:	fff00793          	li	a5,-1
    80002aac:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002ab0:	04a43823          	sd	a0,80(s0)
                    break;
    80002ab4:	dfdff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002ab8:	05843783          	ld	a5,88(s0)
    80002abc:	faf43023          	sd	a5,-96(s0)
                if(!handle){
    80002ac0:	fa043783          	ld	a5,-96(s0)
    80002ac4:	00078e63          	beqz	a5,80002ae0 <_ZN5Riscv20handleSupervisorTrapEv+0x300>
                int ret=handle->signal();
    80002ac8:	fa043503          	ld	a0,-96(s0)
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	d30080e7          	jalr	-720(ra) # 800017fc <_ZN11mySemaphore6signalEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002ad4:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002ad8:	04a43823          	sd	a0,80(s0)
                break;
    80002adc:	dd5ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002ae0:	fff00793          	li	a5,-1
    80002ae4:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002ae8:	04a43823          	sd	a0,80(s0)
                    break;
    80002aec:	dc5ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(time));
    80002af0:	05843503          	ld	a0,88(s0)
                TCB::toSleep(time+TCB::timeCur);
    80002af4:	00009797          	auipc	a5,0x9
    80002af8:	ecc7b783          	ld	a5,-308(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002afc:	0007b783          	ld	a5,0(a5)
    80002b00:	00f50533          	add	a0,a0,a5
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	3c8080e7          	jalr	968(ra) # 80001ecc <_ZN3TCB7toSleepEm>
                TCB::timeSliceCounter=0;
    80002b0c:	00009797          	auipc	a5,0x9
    80002b10:	ec47b783          	ld	a5,-316(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002b14:	0007b023          	sd	zero,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(0));
    80002b18:	00000793          	li	a5,0
    80002b1c:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002b20:	04a43823          	sd	a0,80(s0)
                TCB::dispatch();
    80002b24:	fffff097          	auipc	ra,0xfffff
    80002b28:	24c080e7          	jalr	588(ra) # 80001d70 <_ZN3TCB8dispatchEv>
                break;
    80002b2c:	d85ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                char ret=myConsole::getInput();
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	3d8080e7          	jalr	984(ra) # 80001f08 <_ZN9myConsole8getInputEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002b38:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002b3c:	04a43823          	sd	a0,80(s0)
                break;
    80002b40:	d71ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(c));
    80002b44:	05843783          	ld	a5,88(s0)
    80002b48:	f2f405a3          	sb	a5,-213(s0)
                myConsole::setOutput(c);
    80002b4c:	f2b44503          	lbu	a0,-213(s0)
    80002b50:	0ff57513          	andi	a0,a0,255
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	58c080e7          	jalr	1420(ra) # 800020e0 <_ZN9myConsole9setOutputEc>
                break;
    80002b5c:	d55ff06f          	j	800028b0 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("sw %[val], 0(%[addr])" : : [val] "r"(val), [addr] "r"(addr));
    80002b60:	000057b7          	lui	a5,0x5
    80002b64:	5557879b          	addiw	a5,a5,1365
    80002b68:	00100737          	lui	a4,0x100
    80002b6c:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
                while (1);
    80002b70:	0000006f          	j	80002b70 <_ZN5Riscv20handleSupervisorTrapEv+0x390>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002b74:	141027f3          	csrr	a5,sepc
    80002b78:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002b7c:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    80002b80:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002b84:	100027f3          	csrr	a5,sstatus
    80002b88:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002b8c:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002b90:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002b94:	00200793          	li	a5,2
    80002b98:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80002b9c:	00009717          	auipc	a4,0x9
    80002ba0:	e3473703          	ld	a4,-460(a4) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ba4:	00073783          	ld	a5,0(a4)
    80002ba8:	00178793          	addi	a5,a5,1 # 5001 <_entry-0x7fffafff>
    80002bac:	00f73023          	sd	a5,0(a4)
        TCB::timeCur++;
    80002bb0:	00009717          	auipc	a4,0x9
    80002bb4:	e1073703          	ld	a4,-496(a4) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bb8:	00073783          	ld	a5,0(a4)
    80002bbc:	00178793          	addi	a5,a5,1
    80002bc0:	00f73023          	sd	a5,0(a4)
    80002bc4:	0180006f          	j	80002bdc <_ZN5Riscv20handleSupervisorTrapEv+0x3fc>
            TCB* rising=Scheduler::getSorted();
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	1dc080e7          	jalr	476(ra) # 80002da4 <_ZN9Scheduler9getSortedEv>
            rising->sleep=false;
    80002bd0:	020509a3          	sb	zero,51(a0)
            Scheduler::put(rising);
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	150080e7          	jalr	336(ra) # 80002d24 <_ZN9Scheduler3putEP3TCB>
        while(Scheduler::getWakeTime() && TCB::timeCur>=Scheduler::getWakeTime()){
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	244080e7          	jalr	580(ra) # 80002e20 <_ZN9Scheduler11getWakeTimeEv>
    80002be4:	00050e63          	beqz	a0,80002c00 <_ZN5Riscv20handleSupervisorTrapEv+0x420>
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	238080e7          	jalr	568(ra) # 80002e20 <_ZN9Scheduler11getWakeTimeEv>
    80002bf0:	00009797          	auipc	a5,0x9
    80002bf4:	dd07b783          	ld	a5,-560(a5) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002bf8:	0007b783          	ld	a5,0(a5)
    80002bfc:	fca7f6e3          	bgeu	a5,a0,80002bc8 <_ZN5Riscv20handleSupervisorTrapEv+0x3e8>
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80002c00:	00009797          	auipc	a5,0x9
    80002c04:	e207b783          	ld	a5,-480(a5) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002c08:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const {return timeSlice;}
    80002c0c:	0187b783          	ld	a5,24(a5)
    80002c10:	00009717          	auipc	a4,0x9
    80002c14:	dc073703          	ld	a4,-576(a4) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002c18:	00073703          	ld	a4,0(a4)
    80002c1c:	00f77c63          	bgeu	a4,a5,80002c34 <_ZN5Riscv20handleSupervisorTrapEv+0x454>
        w_sepc(sepc);
    80002c20:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002c24:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002c28:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002c2c:	10079073          	csrw	sstatus,a5
}
    80002c30:	c91ff06f          	j	800028c0 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
            TCB::timeSliceCounter=0;
    80002c34:	00009797          	auipc	a5,0x9
    80002c38:	d9c7b783          	ld	a5,-612(a5) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002c3c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	130080e7          	jalr	304(ra) # 80001d70 <_ZN3TCB8dispatchEv>
    80002c48:	fd9ff06f          	j	80002c20 <_ZN5Riscv20handleSupervisorTrapEv+0x440>
        myConsole::console_handler();
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	5c0080e7          	jalr	1472(ra) # 8000220c <_ZN9myConsole15console_handlerEv>
    80002c54:	c6dff06f          	j	800028c0 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>

0000000080002c58 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::putSorted(TCB *ccb,uint64 wakeTime)
{
    sleepingThreadQueue.addSorted(ccb,wakeTime);
}
    80002c58:	ff010113          	addi	sp,sp,-16
    80002c5c:	00813423          	sd	s0,8(sp)
    80002c60:	01010413          	addi	s0,sp,16
    80002c64:	00100793          	li	a5,1
    80002c68:	00f50863          	beq	a0,a5,80002c78 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002c6c:	00813403          	ld	s0,8(sp)
    80002c70:	01010113          	addi	sp,sp,16
    80002c74:	00008067          	ret
    80002c78:	000107b7          	lui	a5,0x10
    80002c7c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c80:	fef596e3          	bne	a1,a5,80002c6c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    80002c84:	00009797          	auipc	a5,0x9
    80002c88:	e7c78793          	addi	a5,a5,-388 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002c8c:	0007b023          	sd	zero,0(a5)
    80002c90:	0007b423          	sd	zero,8(a5)
    80002c94:	0007a823          	sw	zero,16(a5)
    80002c98:	0007bc23          	sd	zero,24(a5)
    80002c9c:	0207b023          	sd	zero,32(a5)
    80002ca0:	0207a423          	sw	zero,40(a5)
    80002ca4:	fc9ff06f          	j	80002c6c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ca8 <_ZN9Scheduler3getEv>:
{
    80002ca8:	fe010113          	addi	sp,sp,-32
    80002cac:	00113c23          	sd	ra,24(sp)
    80002cb0:	00813823          	sd	s0,16(sp)
    80002cb4:	00913423          	sd	s1,8(sp)
    80002cb8:	02010413          	addi	s0,sp,32
        size++;
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002cbc:	00009517          	auipc	a0,0x9
    80002cc0:	e4453503          	ld	a0,-444(a0) # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002cc4:	04050c63          	beqz	a0,80002d1c <_ZN9Scheduler3getEv+0x74>

        Elem *elem = head;
        head = head->next;
    80002cc8:	00853783          	ld	a5,8(a0)
    80002ccc:	00009717          	auipc	a4,0x9
    80002cd0:	e2f73a23          	sd	a5,-460(a4) # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002cd4:	02078e63          	beqz	a5,80002d10 <_ZN9Scheduler3getEv+0x68>

        T *ret = elem->data;
    80002cd8:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	494080e7          	jalr	1172(ra) # 80003170 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80002ce4:	00009717          	auipc	a4,0x9
    80002ce8:	e1c70713          	addi	a4,a4,-484 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002cec:	01072783          	lw	a5,16(a4)
    80002cf0:	fff7879b          	addiw	a5,a5,-1
    80002cf4:	00f72823          	sw	a5,16(a4)
}
    80002cf8:	00048513          	mv	a0,s1
    80002cfc:	01813083          	ld	ra,24(sp)
    80002d00:	01013403          	ld	s0,16(sp)
    80002d04:	00813483          	ld	s1,8(sp)
    80002d08:	02010113          	addi	sp,sp,32
    80002d0c:	00008067          	ret
        if (!head) { tail = 0; }
    80002d10:	00009797          	auipc	a5,0x9
    80002d14:	de07bc23          	sd	zero,-520(a5) # 8000bb08 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002d18:	fc1ff06f          	j	80002cd8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002d1c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002d20:	fd9ff06f          	j	80002cf8 <_ZN9Scheduler3getEv+0x50>

0000000080002d24 <_ZN9Scheduler3putEP3TCB>:
{
    80002d24:	fe010113          	addi	sp,sp,-32
    80002d28:	00113c23          	sd	ra,24(sp)
    80002d2c:	00813823          	sd	s0,16(sp)
    80002d30:	00913423          	sd	s1,8(sp)
    80002d34:	02010413          	addi	s0,sp,32
    80002d38:	00050493          	mv	s1,a0
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    80002d3c:	00100513          	li	a0,1
    80002d40:	00000097          	auipc	ra,0x0
    80002d44:	2d4080e7          	jalr	724(ra) # 80003014 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80002d48:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    80002d4c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002d50:	00009797          	auipc	a5,0x9
    80002d54:	db87b783          	ld	a5,-584(a5) # 8000bb08 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002d58:	02078c63          	beqz	a5,80002d90 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    80002d5c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002d60:	00009797          	auipc	a5,0x9
    80002d64:	daa7b423          	sd	a0,-600(a5) # 8000bb08 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    80002d68:	00009717          	auipc	a4,0x9
    80002d6c:	d9870713          	addi	a4,a4,-616 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002d70:	01072783          	lw	a5,16(a4)
    80002d74:	0017879b          	addiw	a5,a5,1
    80002d78:	00f72823          	sw	a5,16(a4)
}
    80002d7c:	01813083          	ld	ra,24(sp)
    80002d80:	01013403          	ld	s0,16(sp)
    80002d84:	00813483          	ld	s1,8(sp)
    80002d88:	02010113          	addi	sp,sp,32
    80002d8c:	00008067          	ret
            head = tail = elem;
    80002d90:	00009797          	auipc	a5,0x9
    80002d94:	d7078793          	addi	a5,a5,-656 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002d98:	00a7b423          	sd	a0,8(a5)
    80002d9c:	00a7b023          	sd	a0,0(a5)
    80002da0:	fc9ff06f          	j	80002d68 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002da4 <_ZN9Scheduler9getSortedEv>:
{
    80002da4:	fe010113          	addi	sp,sp,-32
    80002da8:	00113c23          	sd	ra,24(sp)
    80002dac:	00813823          	sd	s0,16(sp)
    80002db0:	00913423          	sd	s1,8(sp)
    80002db4:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002db8:	00009517          	auipc	a0,0x9
    80002dbc:	d6053503          	ld	a0,-672(a0) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
    80002dc0:	04050c63          	beqz	a0,80002e18 <_ZN9Scheduler9getSortedEv+0x74>
        head = head->next;
    80002dc4:	00853783          	ld	a5,8(a0)
    80002dc8:	00009717          	auipc	a4,0x9
    80002dcc:	d4f73823          	sd	a5,-688(a4) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
        if (!head) { tail = 0; }
    80002dd0:	02078e63          	beqz	a5,80002e0c <_ZN9Scheduler9getSortedEv+0x68>
        T *ret = elem->data;
    80002dd4:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	398080e7          	jalr	920(ra) # 80003170 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80002de0:	00009717          	auipc	a4,0x9
    80002de4:	d2070713          	addi	a4,a4,-736 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002de8:	02872783          	lw	a5,40(a4)
    80002dec:	fff7879b          	addiw	a5,a5,-1
    80002df0:	02f72423          	sw	a5,40(a4)
}
    80002df4:	00048513          	mv	a0,s1
    80002df8:	01813083          	ld	ra,24(sp)
    80002dfc:	01013403          	ld	s0,16(sp)
    80002e00:	00813483          	ld	s1,8(sp)
    80002e04:	02010113          	addi	sp,sp,32
    80002e08:	00008067          	ret
        if (!head) { tail = 0; }
    80002e0c:	00009797          	auipc	a5,0x9
    80002e10:	d007ba23          	sd	zero,-748(a5) # 8000bb20 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    80002e14:	fc1ff06f          	j	80002dd4 <_ZN9Scheduler9getSortedEv+0x30>
        if (!head) { return 0; }
    80002e18:	00050493          	mv	s1,a0
    return sleepingThreadQueue.removeFirst();
    80002e1c:	fd9ff06f          	j	80002df4 <_ZN9Scheduler9getSortedEv+0x50>

0000000080002e20 <_ZN9Scheduler11getWakeTimeEv>:
uint64 Scheduler::getWakeTime() {
    80002e20:	ff010113          	addi	sp,sp,-16
    80002e24:	00813423          	sd	s0,8(sp)
    80002e28:	01010413          	addi	s0,sp,16
        if (!head) { return 0; }
        return head->data;
    }

    uint64 peekFirstTime(){
        if(!head) return 0;
    80002e2c:	00009797          	auipc	a5,0x9
    80002e30:	cec7b783          	ld	a5,-788(a5) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
    80002e34:	00078a63          	beqz	a5,80002e48 <_ZN9Scheduler11getWakeTimeEv+0x28>
        return head->wakeUp;
    80002e38:	0107b503          	ld	a0,16(a5)
}
    80002e3c:	00813403          	ld	s0,8(sp)
    80002e40:	01010113          	addi	sp,sp,16
    80002e44:	00008067          	ret
        if(!head) return 0;
    80002e48:	00000513          	li	a0,0
    return sleepingThreadQueue.peekFirstTime();
    80002e4c:	ff1ff06f          	j	80002e3c <_ZN9Scheduler11getWakeTimeEv+0x1c>

0000000080002e50 <_ZN9Scheduler9putSortedEP3TCBm>:
{
    80002e50:	fd010113          	addi	sp,sp,-48
    80002e54:	02113423          	sd	ra,40(sp)
    80002e58:	02813023          	sd	s0,32(sp)
    80002e5c:	00913c23          	sd	s1,24(sp)
    80002e60:	01213823          	sd	s2,16(sp)
    80002e64:	01313423          	sd	s3,8(sp)
    80002e68:	03010413          	addi	s0,sp,48
    80002e6c:	00050993          	mv	s3,a0
    80002e70:	00058913          	mv	s2,a1
        Elem* curr = head;
    80002e74:	00009497          	auipc	s1,0x9
    80002e78:	ca44b483          	ld	s1,-860(s1) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    80002e7c:	00100513          	li	a0,1
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	194080e7          	jalr	404(ra) # 80003014 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80002e88:	01353023          	sd	s3,0(a0)
        elem->next = nullptr;
    80002e8c:	00053423          	sd	zero,8(a0)
        elem->wakeUp=wakeUp;
    80002e90:	01253823          	sd	s2,16(a0)
        if(!curr){
    80002e94:	02048863          	beqz	s1,80002ec4 <_ZN9Scheduler9putSortedEP3TCBm+0x74>
        else if(head->wakeUp>wakeUp){
    80002e98:	00009797          	auipc	a5,0x9
    80002e9c:	c807b783          	ld	a5,-896(a5) # 8000bb18 <_ZN9Scheduler19sleepingThreadQueueE>
    80002ea0:	0107b703          	ld	a4,16(a5)
    80002ea4:	04e96063          	bltu	s2,a4,80002ee4 <_ZN9Scheduler9putSortedEP3TCBm+0x94>
        Elem* prev=curr;
    80002ea8:	00048793          	mv	a5,s1
        while(curr && curr->wakeUp<=wakeUp) {
    80002eac:	04048c63          	beqz	s1,80002f04 <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
    80002eb0:	0104b703          	ld	a4,16(s1)
    80002eb4:	04e96863          	bltu	s2,a4,80002f04 <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
            prev=curr;
    80002eb8:	00048793          	mv	a5,s1
            curr=curr->next;
    80002ebc:	0084b483          	ld	s1,8(s1)
        while(curr && curr->wakeUp<=wakeUp) {
    80002ec0:	fedff06f          	j	80002eac <_ZN9Scheduler9putSortedEP3TCBm+0x5c>
            head=tail=elem;
    80002ec4:	00009797          	auipc	a5,0x9
    80002ec8:	c3c78793          	addi	a5,a5,-964 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002ecc:	02a7b023          	sd	a0,32(a5)
    80002ed0:	00a7bc23          	sd	a0,24(a5)
            size++;
    80002ed4:	0287a703          	lw	a4,40(a5)
    80002ed8:	0017071b          	addiw	a4,a4,1
    80002edc:	02e7a423          	sw	a4,40(a5)
            return;
    80002ee0:	0440006f          	j	80002f24 <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
            elem->next=head;
    80002ee4:	00f53423          	sd	a5,8(a0)
            head=elem;
    80002ee8:	00009797          	auipc	a5,0x9
    80002eec:	c1878793          	addi	a5,a5,-1000 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002ef0:	00a7bc23          	sd	a0,24(a5)
            size++;
    80002ef4:	0287a703          	lw	a4,40(a5)
    80002ef8:	0017071b          	addiw	a4,a4,1
    80002efc:	02e7a423          	sw	a4,40(a5)
            return;
    80002f00:	0240006f          	j	80002f24 <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
        elem->next=curr;
    80002f04:	00953423          	sd	s1,8(a0)
        prev->next=elem;
    80002f08:	00a7b423          	sd	a0,8(a5)
        if(!curr) tail=elem;
    80002f0c:	02048a63          	beqz	s1,80002f40 <_ZN9Scheduler9putSortedEP3TCBm+0xf0>
        size++;
    80002f10:	00009717          	auipc	a4,0x9
    80002f14:	bf070713          	addi	a4,a4,-1040 # 8000bb00 <_ZN9Scheduler16readyThreadQueueE>
    80002f18:	02872783          	lw	a5,40(a4)
    80002f1c:	0017879b          	addiw	a5,a5,1
    80002f20:	02f72423          	sw	a5,40(a4)
}
    80002f24:	02813083          	ld	ra,40(sp)
    80002f28:	02013403          	ld	s0,32(sp)
    80002f2c:	01813483          	ld	s1,24(sp)
    80002f30:	01013903          	ld	s2,16(sp)
    80002f34:	00813983          	ld	s3,8(sp)
    80002f38:	03010113          	addi	sp,sp,48
    80002f3c:	00008067          	ret
        if(!curr) tail=elem;
    80002f40:	00009797          	auipc	a5,0x9
    80002f44:	bea7b023          	sd	a0,-1056(a5) # 8000bb20 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    80002f48:	fc9ff06f          	j	80002f10 <_ZN9Scheduler9putSortedEP3TCBm+0xc0>

0000000080002f4c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002f4c:	ff010113          	addi	sp,sp,-16
    80002f50:	00113423          	sd	ra,8(sp)
    80002f54:	00813023          	sd	s0,0(sp)
    80002f58:	01010413          	addi	s0,sp,16
    80002f5c:	000105b7          	lui	a1,0x10
    80002f60:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002f64:	00100513          	li	a0,1
    80002f68:	00000097          	auipc	ra,0x0
    80002f6c:	cf0080e7          	jalr	-784(ra) # 80002c58 <_Z41__static_initialization_and_destruction_0ii>
    80002f70:	00813083          	ld	ra,8(sp)
    80002f74:	00013403          	ld	s0,0(sp)
    80002f78:	01010113          	addi	sp,sp,16
    80002f7c:	00008067          	ret

0000000080002f80 <_ZN15MemoryAllocator7getFreeEv>:
    findNewLargest();
    return 0;
}

size_t MemoryAllocator::getFree()
{
    80002f80:	ff010113          	addi	sp,sp,-16
    80002f84:	00813423          	sd	s0,8(sp)
    80002f88:	01010413          	addi	s0,sp,16

    return totalFreeMem;
}
    80002f8c:	00009517          	auipc	a0,0x9
    80002f90:	ba453503          	ld	a0,-1116(a0) # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    80002f94:	00813403          	ld	s0,8(sp)
    80002f98:	01010113          	addi	sp,sp,16
    80002f9c:	00008067          	ret

0000000080002fa0 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock()
{
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00813423          	sd	s0,8(sp)
    80002fa8:	01010413          	addi	s0,sp,16
    return largestFreeBlock;
}
    80002fac:	00009517          	auipc	a0,0x9
    80002fb0:	b8c53503          	ld	a0,-1140(a0) # 8000bb38 <_ZN15MemoryAllocator16largestFreeBlockE>
    80002fb4:	00813403          	ld	s0,8(sp)
    80002fb8:	01010113          	addi	sp,sp,16
    80002fbc:	00008067          	ret

0000000080002fc0 <_ZN15MemoryAllocator14findNewLargestEv>:

void MemoryAllocator::findNewLargest()
{
    80002fc0:	ff010113          	addi	sp,sp,-16
    80002fc4:	00813423          	sd	s0,8(sp)
    80002fc8:	01010413          	addi	s0,sp,16
    largestFreeBlock=0;
    80002fcc:	00009797          	auipc	a5,0x9
    80002fd0:	b6478793          	addi	a5,a5,-1180 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    80002fd4:	0007b423          	sd	zero,8(a5)
    if(!freeMemHead) return;
    80002fd8:	0107b783          	ld	a5,16(a5)
    80002fdc:	00079e63          	bnez	a5,80002ff8 <_ZN15MemoryAllocator14findNewLargestEv+0x38>
    while(curr) {
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
        curr=curr->next;
    }

}
    80002fe0:	00813403          	ld	s0,8(sp)
    80002fe4:	01010113          	addi	sp,sp,16
    80002fe8:	00008067          	ret
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002fec:	00009697          	auipc	a3,0x9
    80002ff0:	b4e6b623          	sd	a4,-1204(a3) # 8000bb38 <_ZN15MemoryAllocator16largestFreeBlockE>
        curr=curr->next;
    80002ff4:	0107b783          	ld	a5,16(a5)
    while(curr) {
    80002ff8:	fe0784e3          	beqz	a5,80002fe0 <_ZN15MemoryAllocator14findNewLargestEv+0x20>
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002ffc:	0007b683          	ld	a3,0(a5)
    80003000:	00009717          	auipc	a4,0x9
    80003004:	b3873703          	ld	a4,-1224(a4) # 8000bb38 <_ZN15MemoryAllocator16largestFreeBlockE>
    80003008:	fed772e3          	bgeu	a4,a3,80002fec <_ZN15MemoryAllocator14findNewLargestEv+0x2c>
    8000300c:	00068713          	mv	a4,a3
    80003010:	fddff06f          	j	80002fec <_ZN15MemoryAllocator14findNewLargestEv+0x2c>

0000000080003014 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003014:	fe010113          	addi	sp,sp,-32
    80003018:	00113c23          	sd	ra,24(sp)
    8000301c:	00813823          	sd	s0,16(sp)
    80003020:	00913423          	sd	s1,8(sp)
    80003024:	02010413          	addi	s0,sp,32
    size_t size=numOfBlocks*MEM_BLOCK_SIZE;
    80003028:	00651513          	slli	a0,a0,0x6
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    8000302c:	12050e63          	beqz	a0,80003168 <_ZN15MemoryAllocator9mem_allocEm+0x154>
    80003030:	00009497          	auipc	s1,0x9
    80003034:	b104b483          	ld	s1,-1264(s1) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    80003038:	0e048e63          	beqz	s1,80003134 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    8000303c:	00009717          	auipc	a4,0x9
    80003040:	afc73703          	ld	a4,-1284(a4) # 8000bb38 <_ZN15MemoryAllocator16largestFreeBlockE>
    80003044:	00a77863          	bgeu	a4,a0,80003054 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    80003048:	00000493          	li	s1,0
    8000304c:	0e80006f          	j	80003134 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    while(curr && curr->size<size) curr=curr->next;
    80003050:	0104b483          	ld	s1,16(s1)
    80003054:	00048663          	beqz	s1,80003060 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    80003058:	0004b783          	ld	a5,0(s1)
    8000305c:	fea7eae3          	bltu	a5,a0,80003050 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if(!curr) return nullptr;
    80003060:	0c048a63          	beqz	s1,80003134 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    if(curr->size> size+sizeof(FreeBlock)){
    80003064:	0004b683          	ld	a3,0(s1)
    80003068:	01850793          	addi	a5,a0,24
    8000306c:	08d7f063          	bgeu	a5,a3,800030ec <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        totalFreeMem=totalFreeMem-size-sizeof(FreeBlock);
    80003070:	00009617          	auipc	a2,0x9
    80003074:	ac060613          	addi	a2,a2,-1344 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    80003078:	00063683          	ld	a3,0(a2)
    8000307c:	40a686b3          	sub	a3,a3,a0
    80003080:	fe868693          	addi	a3,a3,-24
    80003084:	00d63023          	sd	a3,0(a2)
        if(largestFreeBlock==curr->size) find=true;
    80003088:	0004b683          	ld	a3,0(s1)
    8000308c:	04d70663          	beq	a4,a3,800030d8 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        bool find=false;
    80003090:	00000613          	li	a2,0
        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    80003094:	00f487b3          	add	a5,s1,a5
        newBlock->size=curr->size-size-sizeof(FreeBlock);
    80003098:	40a686b3          	sub	a3,a3,a0
    8000309c:	fe868693          	addi	a3,a3,-24
    800030a0:	00d7b023          	sd	a3,0(a5)
        newBlock->prev=curr->prev;
    800030a4:	0084b703          	ld	a4,8(s1)
    800030a8:	00e7b423          	sd	a4,8(a5)
        curr->size=size;
    800030ac:	00a4b023          	sd	a0,0(s1)
        if(curr->prev){
    800030b0:	02070863          	beqz	a4,800030e0 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            curr->prev->next=newBlock;
    800030b4:	00f73823          	sd	a5,16(a4)
        newBlock->next=curr->next;
    800030b8:	0104b703          	ld	a4,16(s1)
    800030bc:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=newBlock;
    800030c0:	00070463          	beqz	a4,800030c8 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    800030c4:	00f73423          	sd	a5,8(a4)
        if(find) findNewLargest();
    800030c8:	06060063          	beqz	a2,80003128 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	ef4080e7          	jalr	-268(ra) # 80002fc0 <_ZN15MemoryAllocator14findNewLargestEv>
    800030d4:	0540006f          	j	80003128 <_ZN15MemoryAllocator9mem_allocEm+0x114>
        if(largestFreeBlock==curr->size) find=true;
    800030d8:	00100613          	li	a2,1
    800030dc:	fb9ff06f          	j	80003094 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        else freeMemHead = newBlock;
    800030e0:	00009717          	auipc	a4,0x9
    800030e4:	a6f73023          	sd	a5,-1440(a4) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    800030e8:	fd1ff06f          	j	800030b8 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        totalFreeMem=totalFreeMem-curr->size;
    800030ec:	00009617          	auipc	a2,0x9
    800030f0:	a4460613          	addi	a2,a2,-1468 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    800030f4:	00063783          	ld	a5,0(a2)
    800030f8:	40d786b3          	sub	a3,a5,a3
    800030fc:	00d63023          	sd	a3,0(a2)
        if(curr->prev) curr->prev->next=curr->next;
    80003100:	0084b783          	ld	a5,8(s1)
    80003104:	04078463          	beqz	a5,8000314c <_ZN15MemoryAllocator9mem_allocEm+0x138>
    80003108:	0104b683          	ld	a3,16(s1)
    8000310c:	00d7b823          	sd	a3,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80003110:	0104b783          	ld	a5,16(s1)
    80003114:	00078663          	beqz	a5,80003120 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    80003118:	0084b683          	ld	a3,8(s1)
    8000311c:	00d7b423          	sd	a3,8(a5)
        if(curr->size==largestFreeBlock) findNewLargest();
    80003120:	0004b783          	ld	a5,0(s1)
    80003124:	02f70c63          	beq	a4,a5,8000315c <_ZN15MemoryAllocator9mem_allocEm+0x148>
    curr->next=nullptr;
    80003128:	0004b823          	sd	zero,16(s1)
    curr->prev=nullptr;
    8000312c:	0004b423          	sd	zero,8(s1)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    80003130:	01848493          	addi	s1,s1,24
}
    80003134:	00048513          	mv	a0,s1
    80003138:	01813083          	ld	ra,24(sp)
    8000313c:	01013403          	ld	s0,16(sp)
    80003140:	00813483          	ld	s1,8(sp)
    80003144:	02010113          	addi	sp,sp,32
    80003148:	00008067          	ret
        else freeMemHead=curr->next;
    8000314c:	0104b783          	ld	a5,16(s1)
    80003150:	00009697          	auipc	a3,0x9
    80003154:	9ef6b823          	sd	a5,-1552(a3) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    80003158:	fb9ff06f          	j	80003110 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if(curr->size==largestFreeBlock) findNewLargest();
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	e64080e7          	jalr	-412(ra) # 80002fc0 <_ZN15MemoryAllocator14findNewLargestEv>
    80003164:	fc5ff06f          	j	80003128 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    80003168:	00000493          	li	s1,0
    8000316c:	fc9ff06f          	j	80003134 <_ZN15MemoryAllocator9mem_allocEm+0x120>

0000000080003170 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    80003170:	1e050c63          	beqz	a0,80003368 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80003174:	fe850693          	addi	a3,a0,-24
    80003178:	00009797          	auipc	a5,0x9
    8000317c:	8287b783          	ld	a5,-2008(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003180:	0007b783          	ld	a5,0(a5)
    80003184:	1ef6e663          	bltu	a3,a5,80003370 <_ZN15MemoryAllocator8mem_freeEPv+0x200>
    80003188:	00009797          	auipc	a5,0x9
    8000318c:	8a07b783          	ld	a5,-1888(a5) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80003190:	0007b783          	ld	a5,0(a5)
    80003194:	1ea7e263          	bltu	a5,a0,80003378 <_ZN15MemoryAllocator8mem_freeEPv+0x208>
    totalFreeMem+=blk->size;
    80003198:	fe853603          	ld	a2,-24(a0)
    8000319c:	00009797          	auipc	a5,0x9
    800031a0:	99478793          	addi	a5,a5,-1644 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    800031a4:	0007b703          	ld	a4,0(a5)
    800031a8:	00c70733          	add	a4,a4,a2
    800031ac:	00e7b023          	sd	a4,0(a5)
    blk->next=nullptr;
    800031b0:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    800031b4:	fe053823          	sd	zero,-16(a0)
    if(!freeMemHead){
    800031b8:	0107b603          	ld	a2,16(a5)
    800031bc:	08060463          	beqz	a2,80003244 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
{
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00113423          	sd	ra,8(sp)
    800031c8:	00813023          	sd	s0,0(sp)
    800031cc:	01010413          	addi	s0,sp,16
    if((char*) blk < (char*) freeMemHead){
    800031d0:	0cc6e263          	bltu	a3,a2,80003294 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    800031d4:	00060793          	mv	a5,a2
    800031d8:	00078713          	mv	a4,a5
    800031dc:	0107b783          	ld	a5,16(a5)
    800031e0:	00078463          	beqz	a5,800031e8 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    800031e4:	fed7eae3          	bltu	a5,a3,800031d8 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    800031e8:	0a070863          	beqz	a4,80003298 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    800031ec:	00073803          	ld	a6,0(a4)
    800031f0:	01880593          	addi	a1,a6,24
    800031f4:	00b705b3          	add	a1,a4,a1
    800031f8:	0ab69063          	bne	a3,a1,80003298 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
        curr->size+=sizeof(FreeBlock)+blk->size;
    800031fc:	fe853683          	ld	a3,-24(a0)
    80003200:	00d806b3          	add	a3,a6,a3
    80003204:	01868693          	addi	a3,a3,24
    80003208:	00d73023          	sd	a3,0(a4)
        totalFreeMem+=sizeof(FreeBlock);
    8000320c:	00009617          	auipc	a2,0x9
    80003210:	92460613          	addi	a2,a2,-1756 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    80003214:	00063683          	ld	a3,0(a2)
    80003218:	01868693          	addi	a3,a3,24
    8000321c:	00d63023          	sd	a3,0(a2)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80003220:	00078a63          	beqz	a5,80003234 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80003224:	00073603          	ld	a2,0(a4)
    80003228:	01860693          	addi	a3,a2,24
    8000322c:	00d706b3          	add	a3,a4,a3
    80003230:	02d78663          	beq	a5,a3,8000325c <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        findNewLargest();
    80003234:	00000097          	auipc	ra,0x0
    80003238:	d8c080e7          	jalr	-628(ra) # 80002fc0 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    8000323c:	00000513          	li	a0,0
    80003240:	09c0006f          	j	800032dc <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        freeMemHead=blk;
    80003244:	00d7b823          	sd	a3,16(a5)
        totalFreeMem=blk->size;
    80003248:	fe853703          	ld	a4,-24(a0)
    8000324c:	00e7b023          	sd	a4,0(a5)
        largestFreeBlock=totalFreeMem;
    80003250:	00e7b423          	sd	a4,8(a5)
        return 0;
    80003254:	00000513          	li	a0,0
    80003258:	00008067          	ret
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    8000325c:	0007b683          	ld	a3,0(a5)
    80003260:	00d606b3          	add	a3,a2,a3
    80003264:	01868693          	addi	a3,a3,24
    80003268:	00d73023          	sd	a3,0(a4)
            totalFreeMem+=sizeof(FreeBlock);
    8000326c:	00009617          	auipc	a2,0x9
    80003270:	8c460613          	addi	a2,a2,-1852 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    80003274:	00063683          	ld	a3,0(a2)
    80003278:	01868693          	addi	a3,a3,24
    8000327c:	00d63023          	sd	a3,0(a2)
            curr->next=curr->next->next;
    80003280:	0107b783          	ld	a5,16(a5)
    80003284:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    80003288:	fa0786e3          	beqz	a5,80003234 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    8000328c:	00e7b423          	sd	a4,8(a5)
    80003290:	fa5ff06f          	j	80003234 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        curr=nullptr;
    80003294:	00000713          	li	a4,0
    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    80003298:	00070463          	beqz	a4,800032a0 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    8000329c:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    800032a0:	00060863          	beqz	a2,800032b0 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    800032a4:	fe853783          	ld	a5,-24(a0)
    800032a8:	00f507b3          	add	a5,a0,a5
    800032ac:	04c78063          	beq	a5,a2,800032ec <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    blk->prev=curr;
    800032b0:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    800032b4:	08070e63          	beqz	a4,80003350 <_ZN15MemoryAllocator8mem_freeEPv+0x1e0>
    800032b8:	01073783          	ld	a5,16(a4)
    800032bc:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    800032c0:	00078463          	beqz	a5,800032c8 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    800032c4:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    800032c8:	08070a63          	beqz	a4,8000335c <_ZN15MemoryAllocator8mem_freeEPv+0x1ec>
    800032cc:	00d73823          	sd	a3,16(a4)
    findNewLargest();
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	cf0080e7          	jalr	-784(ra) # 80002fc0 <_ZN15MemoryAllocator14findNewLargestEv>
    return 0;
    800032d8:	00000513          	li	a0,0
}
    800032dc:	00813083          	ld	ra,8(sp)
    800032e0:	00013403          	ld	s0,0(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret
        totalFreeMem+=sizeof(FreeBlock);
    800032ec:	00009717          	auipc	a4,0x9
    800032f0:	84470713          	addi	a4,a4,-1980 # 8000bb30 <_ZN15MemoryAllocator12totalFreeMemE>
    800032f4:	00073783          	ld	a5,0(a4)
    800032f8:	01878793          	addi	a5,a5,24
    800032fc:	00f73023          	sd	a5,0(a4)
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    80003300:	00063783          	ld	a5,0(a2)
    80003304:	fe853703          	ld	a4,-24(a0)
    80003308:	00e787b3          	add	a5,a5,a4
    8000330c:	01878793          	addi	a5,a5,24
    80003310:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    80003314:	01063783          	ld	a5,16(a2)
    80003318:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    8000331c:	00078463          	beqz	a5,80003324 <_ZN15MemoryAllocator8mem_freeEPv+0x1b4>
    80003320:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    80003324:	00863783          	ld	a5,8(a2)
    80003328:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    8000332c:	00078c63          	beqz	a5,80003344 <_ZN15MemoryAllocator8mem_freeEPv+0x1d4>
    80003330:	00d7b823          	sd	a3,16(a5)
        findNewLargest();
    80003334:	00000097          	auipc	ra,0x0
    80003338:	c8c080e7          	jalr	-884(ra) # 80002fc0 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    8000333c:	00000513          	li	a0,0
    80003340:	f9dff06f          	j	800032dc <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        else freeMemHead=blk;
    80003344:	00008797          	auipc	a5,0x8
    80003348:	7ed7be23          	sd	a3,2044(a5) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    8000334c:	fe9ff06f          	j	80003334 <_ZN15MemoryAllocator8mem_freeEPv+0x1c4>
    blk->next=curr?curr->next:freeMemHead;
    80003350:	00008797          	auipc	a5,0x8
    80003354:	7f07b783          	ld	a5,2032(a5) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    80003358:	f65ff06f          	j	800032bc <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    else freeMemHead=blk;
    8000335c:	00008797          	auipc	a5,0x8
    80003360:	7ed7b223          	sd	a3,2020(a5) # 8000bb40 <_ZN15MemoryAllocator11freeMemHeadE>
    80003364:	f6dff06f          	j	800032d0 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    if(!addr) return -1;
    80003368:	fff00513          	li	a0,-1
    8000336c:	00008067          	ret
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80003370:	ffe00513          	li	a0,-2
    80003374:	00008067          	ret
    80003378:	ffe00513          	li	a0,-2
}
    8000337c:	00008067          	ret

0000000080003380 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003380:	fe010113          	addi	sp,sp,-32
    80003384:	00113c23          	sd	ra,24(sp)
    80003388:	00813823          	sd	s0,16(sp)
    8000338c:	00913423          	sd	s1,8(sp)
    80003390:	01213023          	sd	s2,0(sp)
    80003394:	02010413          	addi	s0,sp,32
    80003398:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000339c:	00000913          	li	s2,0
    800033a0:	00c0006f          	j	800033ac <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800033a4:	ffffe097          	auipc	ra,0xffffe
    800033a8:	040080e7          	jalr	64(ra) # 800013e4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800033ac:	ffffe097          	auipc	ra,0xffffe
    800033b0:	178080e7          	jalr	376(ra) # 80001524 <_Z4getcv>
    800033b4:	0005059b          	sext.w	a1,a0
    800033b8:	01b00793          	li	a5,27
    800033bc:	02f58a63          	beq	a1,a5,800033f0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800033c0:	0084b503          	ld	a0,8(s1)
    800033c4:	00003097          	auipc	ra,0x3
    800033c8:	400080e7          	jalr	1024(ra) # 800067c4 <_ZN6Buffer3putEi>
        i++;
    800033cc:	0019071b          	addiw	a4,s2,1
    800033d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800033d4:	0004a683          	lw	a3,0(s1)
    800033d8:	0026979b          	slliw	a5,a3,0x2
    800033dc:	00d787bb          	addw	a5,a5,a3
    800033e0:	0017979b          	slliw	a5,a5,0x1
    800033e4:	02f767bb          	remw	a5,a4,a5
    800033e8:	fc0792e3          	bnez	a5,800033ac <_ZL16producerKeyboardPv+0x2c>
    800033ec:	fb9ff06f          	j	800033a4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800033f0:	00100793          	li	a5,1
    800033f4:	00008717          	auipc	a4,0x8
    800033f8:	74f72a23          	sw	a5,1876(a4) # 8000bb48 <_ZL9threadEnd>
    data->buffer->put('!');
    800033fc:	02100593          	li	a1,33
    80003400:	0084b503          	ld	a0,8(s1)
    80003404:	00003097          	auipc	ra,0x3
    80003408:	3c0080e7          	jalr	960(ra) # 800067c4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000340c:	0104b503          	ld	a0,16(s1)
    80003410:	ffffe097          	auipc	ra,0xffffe
    80003414:	0a4080e7          	jalr	164(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    80003418:	01813083          	ld	ra,24(sp)
    8000341c:	01013403          	ld	s0,16(sp)
    80003420:	00813483          	ld	s1,8(sp)
    80003424:	00013903          	ld	s2,0(sp)
    80003428:	02010113          	addi	sp,sp,32
    8000342c:	00008067          	ret

0000000080003430 <_ZL8producerPv>:

static void producer(void *arg) {
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00113c23          	sd	ra,24(sp)
    80003438:	00813823          	sd	s0,16(sp)
    8000343c:	00913423          	sd	s1,8(sp)
    80003440:	01213023          	sd	s2,0(sp)
    80003444:	02010413          	addi	s0,sp,32
    80003448:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000344c:	00000913          	li	s2,0
    80003450:	00c0006f          	j	8000345c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	f90080e7          	jalr	-112(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000345c:	00008797          	auipc	a5,0x8
    80003460:	6ec7a783          	lw	a5,1772(a5) # 8000bb48 <_ZL9threadEnd>
    80003464:	02079e63          	bnez	a5,800034a0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003468:	0004a583          	lw	a1,0(s1)
    8000346c:	0305859b          	addiw	a1,a1,48
    80003470:	0084b503          	ld	a0,8(s1)
    80003474:	00003097          	auipc	ra,0x3
    80003478:	350080e7          	jalr	848(ra) # 800067c4 <_ZN6Buffer3putEi>
        i++;
    8000347c:	0019071b          	addiw	a4,s2,1
    80003480:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003484:	0004a683          	lw	a3,0(s1)
    80003488:	0026979b          	slliw	a5,a3,0x2
    8000348c:	00d787bb          	addw	a5,a5,a3
    80003490:	0017979b          	slliw	a5,a5,0x1
    80003494:	02f767bb          	remw	a5,a4,a5
    80003498:	fc0792e3          	bnez	a5,8000345c <_ZL8producerPv+0x2c>
    8000349c:	fb9ff06f          	j	80003454 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800034a0:	0104b503          	ld	a0,16(s1)
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	010080e7          	jalr	16(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    800034ac:	01813083          	ld	ra,24(sp)
    800034b0:	01013403          	ld	s0,16(sp)
    800034b4:	00813483          	ld	s1,8(sp)
    800034b8:	00013903          	ld	s2,0(sp)
    800034bc:	02010113          	addi	sp,sp,32
    800034c0:	00008067          	ret

00000000800034c4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800034c4:	fd010113          	addi	sp,sp,-48
    800034c8:	02113423          	sd	ra,40(sp)
    800034cc:	02813023          	sd	s0,32(sp)
    800034d0:	00913c23          	sd	s1,24(sp)
    800034d4:	01213823          	sd	s2,16(sp)
    800034d8:	01313423          	sd	s3,8(sp)
    800034dc:	03010413          	addi	s0,sp,48
    800034e0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800034e4:	00000993          	li	s3,0
    800034e8:	01c0006f          	j	80003504 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	ef8080e7          	jalr	-264(ra) # 800013e4 <_Z15thread_dispatchv>
    800034f4:	0500006f          	j	80003544 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800034f8:	00a00513          	li	a0,10
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	05c080e7          	jalr	92(ra) # 80001558 <_Z4putcc>
    while (!threadEnd) {
    80003504:	00008797          	auipc	a5,0x8
    80003508:	6447a783          	lw	a5,1604(a5) # 8000bb48 <_ZL9threadEnd>
    8000350c:	06079063          	bnez	a5,8000356c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003510:	00893503          	ld	a0,8(s2)
    80003514:	00003097          	auipc	ra,0x3
    80003518:	340080e7          	jalr	832(ra) # 80006854 <_ZN6Buffer3getEv>
        i++;
    8000351c:	0019849b          	addiw	s1,s3,1
    80003520:	0004899b          	sext.w	s3,s1
        putc(key);
    80003524:	0ff57513          	andi	a0,a0,255
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	030080e7          	jalr	48(ra) # 80001558 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003530:	00092703          	lw	a4,0(s2)
    80003534:	0027179b          	slliw	a5,a4,0x2
    80003538:	00e787bb          	addw	a5,a5,a4
    8000353c:	02f4e7bb          	remw	a5,s1,a5
    80003540:	fa0786e3          	beqz	a5,800034ec <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003544:	05000793          	li	a5,80
    80003548:	02f4e4bb          	remw	s1,s1,a5
    8000354c:	fa049ce3          	bnez	s1,80003504 <_ZL8consumerPv+0x40>
    80003550:	fa9ff06f          	j	800034f8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003554:	00893503          	ld	a0,8(s2)
    80003558:	00003097          	auipc	ra,0x3
    8000355c:	2fc080e7          	jalr	764(ra) # 80006854 <_ZN6Buffer3getEv>
        putc(key);
    80003560:	0ff57513          	andi	a0,a0,255
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	ff4080e7          	jalr	-12(ra) # 80001558 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000356c:	00893503          	ld	a0,8(s2)
    80003570:	00003097          	auipc	ra,0x3
    80003574:	370080e7          	jalr	880(ra) # 800068e0 <_ZN6Buffer6getCntEv>
    80003578:	fca04ee3          	bgtz	a0,80003554 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000357c:	01093503          	ld	a0,16(s2)
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	f34080e7          	jalr	-204(ra) # 800014b4 <_Z10sem_signalP4_sem>
}
    80003588:	02813083          	ld	ra,40(sp)
    8000358c:	02013403          	ld	s0,32(sp)
    80003590:	01813483          	ld	s1,24(sp)
    80003594:	01013903          	ld	s2,16(sp)
    80003598:	00813983          	ld	s3,8(sp)
    8000359c:	03010113          	addi	sp,sp,48
    800035a0:	00008067          	ret

00000000800035a4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800035a4:	f9010113          	addi	sp,sp,-112
    800035a8:	06113423          	sd	ra,104(sp)
    800035ac:	06813023          	sd	s0,96(sp)
    800035b0:	04913c23          	sd	s1,88(sp)
    800035b4:	05213823          	sd	s2,80(sp)
    800035b8:	05313423          	sd	s3,72(sp)
    800035bc:	05413023          	sd	s4,64(sp)
    800035c0:	03513c23          	sd	s5,56(sp)
    800035c4:	03613823          	sd	s6,48(sp)
    800035c8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800035cc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800035d0:	00006517          	auipc	a0,0x6
    800035d4:	b6050513          	addi	a0,a0,-1184 # 80009130 <CONSOLE_STATUS+0x120>
    800035d8:	00002097          	auipc	ra,0x2
    800035dc:	220080e7          	jalr	544(ra) # 800057f8 <_Z11printStringPKc>
    getString(input, 30);
    800035e0:	01e00593          	li	a1,30
    800035e4:	fa040493          	addi	s1,s0,-96
    800035e8:	00048513          	mv	a0,s1
    800035ec:	00002097          	auipc	ra,0x2
    800035f0:	294080e7          	jalr	660(ra) # 80005880 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800035f4:	00048513          	mv	a0,s1
    800035f8:	00002097          	auipc	ra,0x2
    800035fc:	360080e7          	jalr	864(ra) # 80005958 <_Z11stringToIntPKc>
    80003600:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003604:	00006517          	auipc	a0,0x6
    80003608:	b4c50513          	addi	a0,a0,-1204 # 80009150 <CONSOLE_STATUS+0x140>
    8000360c:	00002097          	auipc	ra,0x2
    80003610:	1ec080e7          	jalr	492(ra) # 800057f8 <_Z11printStringPKc>
    getString(input, 30);
    80003614:	01e00593          	li	a1,30
    80003618:	00048513          	mv	a0,s1
    8000361c:	00002097          	auipc	ra,0x2
    80003620:	264080e7          	jalr	612(ra) # 80005880 <_Z9getStringPci>
    n = stringToInt(input);
    80003624:	00048513          	mv	a0,s1
    80003628:	00002097          	auipc	ra,0x2
    8000362c:	330080e7          	jalr	816(ra) # 80005958 <_Z11stringToIntPKc>
    80003630:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003634:	00006517          	auipc	a0,0x6
    80003638:	b3c50513          	addi	a0,a0,-1220 # 80009170 <CONSOLE_STATUS+0x160>
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	1bc080e7          	jalr	444(ra) # 800057f8 <_Z11printStringPKc>
    80003644:	00000613          	li	a2,0
    80003648:	00a00593          	li	a1,10
    8000364c:	00090513          	mv	a0,s2
    80003650:	00002097          	auipc	ra,0x2
    80003654:	358080e7          	jalr	856(ra) # 800059a8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003658:	00006517          	auipc	a0,0x6
    8000365c:	b3050513          	addi	a0,a0,-1232 # 80009188 <CONSOLE_STATUS+0x178>
    80003660:	00002097          	auipc	ra,0x2
    80003664:	198080e7          	jalr	408(ra) # 800057f8 <_Z11printStringPKc>
    80003668:	00000613          	li	a2,0
    8000366c:	00a00593          	li	a1,10
    80003670:	00048513          	mv	a0,s1
    80003674:	00002097          	auipc	ra,0x2
    80003678:	334080e7          	jalr	820(ra) # 800059a8 <_Z8printIntiii>
    printString(".\n");
    8000367c:	00006517          	auipc	a0,0x6
    80003680:	b2450513          	addi	a0,a0,-1244 # 800091a0 <CONSOLE_STATUS+0x190>
    80003684:	00002097          	auipc	ra,0x2
    80003688:	174080e7          	jalr	372(ra) # 800057f8 <_Z11printStringPKc>
    if(threadNum > n) {
    8000368c:	0324c463          	blt	s1,s2,800036b4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003690:	03205c63          	blez	s2,800036c8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003694:	03800513          	li	a0,56
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	c84080e7          	jalr	-892(ra) # 8000231c <_Znwm>
    800036a0:	00050a13          	mv	s4,a0
    800036a4:	00048593          	mv	a1,s1
    800036a8:	00003097          	auipc	ra,0x3
    800036ac:	080080e7          	jalr	128(ra) # 80006728 <_ZN6BufferC1Ei>
    800036b0:	0300006f          	j	800036e0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800036b4:	00006517          	auipc	a0,0x6
    800036b8:	af450513          	addi	a0,a0,-1292 # 800091a8 <CONSOLE_STATUS+0x198>
    800036bc:	00002097          	auipc	ra,0x2
    800036c0:	13c080e7          	jalr	316(ra) # 800057f8 <_Z11printStringPKc>
        return;
    800036c4:	0140006f          	j	800036d8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800036c8:	00006517          	auipc	a0,0x6
    800036cc:	b2050513          	addi	a0,a0,-1248 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800036d0:	00002097          	auipc	ra,0x2
    800036d4:	128080e7          	jalr	296(ra) # 800057f8 <_Z11printStringPKc>
        return;
    800036d8:	000b0113          	mv	sp,s6
    800036dc:	1500006f          	j	8000382c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800036e0:	00000593          	li	a1,0
    800036e4:	00008517          	auipc	a0,0x8
    800036e8:	46c50513          	addi	a0,a0,1132 # 8000bb50 <_ZL10waitForAll>
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	d1c080e7          	jalr	-740(ra) # 80001408 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800036f4:	00391793          	slli	a5,s2,0x3
    800036f8:	00f78793          	addi	a5,a5,15
    800036fc:	ff07f793          	andi	a5,a5,-16
    80003700:	40f10133          	sub	sp,sp,a5
    80003704:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003708:	0019071b          	addiw	a4,s2,1
    8000370c:	00171793          	slli	a5,a4,0x1
    80003710:	00e787b3          	add	a5,a5,a4
    80003714:	00379793          	slli	a5,a5,0x3
    80003718:	00f78793          	addi	a5,a5,15
    8000371c:	ff07f793          	andi	a5,a5,-16
    80003720:	40f10133          	sub	sp,sp,a5
    80003724:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003728:	00191613          	slli	a2,s2,0x1
    8000372c:	012607b3          	add	a5,a2,s2
    80003730:	00379793          	slli	a5,a5,0x3
    80003734:	00f987b3          	add	a5,s3,a5
    80003738:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000373c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003740:	00008717          	auipc	a4,0x8
    80003744:	41073703          	ld	a4,1040(a4) # 8000bb50 <_ZL10waitForAll>
    80003748:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000374c:	00078613          	mv	a2,a5
    80003750:	00000597          	auipc	a1,0x0
    80003754:	d7458593          	addi	a1,a1,-652 # 800034c4 <_ZL8consumerPv>
    80003758:	f9840513          	addi	a0,s0,-104
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	bcc080e7          	jalr	-1076(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003764:	00000493          	li	s1,0
    80003768:	0280006f          	j	80003790 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000376c:	00000597          	auipc	a1,0x0
    80003770:	c1458593          	addi	a1,a1,-1004 # 80003380 <_ZL16producerKeyboardPv>
                      data + i);
    80003774:	00179613          	slli	a2,a5,0x1
    80003778:	00f60633          	add	a2,a2,a5
    8000377c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003780:	00c98633          	add	a2,s3,a2
    80003784:	ffffe097          	auipc	ra,0xffffe
    80003788:	ba4080e7          	jalr	-1116(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000378c:	0014849b          	addiw	s1,s1,1
    80003790:	0524d263          	bge	s1,s2,800037d4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003794:	00149793          	slli	a5,s1,0x1
    80003798:	009787b3          	add	a5,a5,s1
    8000379c:	00379793          	slli	a5,a5,0x3
    800037a0:	00f987b3          	add	a5,s3,a5
    800037a4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800037a8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800037ac:	00008717          	auipc	a4,0x8
    800037b0:	3a473703          	ld	a4,932(a4) # 8000bb50 <_ZL10waitForAll>
    800037b4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800037b8:	00048793          	mv	a5,s1
    800037bc:	00349513          	slli	a0,s1,0x3
    800037c0:	00aa8533          	add	a0,s5,a0
    800037c4:	fa9054e3          	blez	s1,8000376c <_Z22producerConsumer_C_APIv+0x1c8>
    800037c8:	00000597          	auipc	a1,0x0
    800037cc:	c6858593          	addi	a1,a1,-920 # 80003430 <_ZL8producerPv>
    800037d0:	fa5ff06f          	j	80003774 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	c10080e7          	jalr	-1008(ra) # 800013e4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800037dc:	00000493          	li	s1,0
    800037e0:	00994e63          	blt	s2,s1,800037fc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800037e4:	00008517          	auipc	a0,0x8
    800037e8:	36c53503          	ld	a0,876(a0) # 8000bb50 <_ZL10waitForAll>
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	c90080e7          	jalr	-880(ra) # 8000147c <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800037f4:	0014849b          	addiw	s1,s1,1
    800037f8:	fe9ff06f          	j	800037e0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800037fc:	00008517          	auipc	a0,0x8
    80003800:	35453503          	ld	a0,852(a0) # 8000bb50 <_ZL10waitForAll>
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	c40080e7          	jalr	-960(ra) # 80001444 <_Z9sem_closeP4_sem>
    delete buffer;
    8000380c:	000a0e63          	beqz	s4,80003828 <_Z22producerConsumer_C_APIv+0x284>
    80003810:	000a0513          	mv	a0,s4
    80003814:	00003097          	auipc	ra,0x3
    80003818:	154080e7          	jalr	340(ra) # 80006968 <_ZN6BufferD1Ev>
    8000381c:	000a0513          	mv	a0,s4
    80003820:	fffff097          	auipc	ra,0xfffff
    80003824:	b4c080e7          	jalr	-1204(ra) # 8000236c <_ZdlPv>
    80003828:	000b0113          	mv	sp,s6

}
    8000382c:	f9040113          	addi	sp,s0,-112
    80003830:	06813083          	ld	ra,104(sp)
    80003834:	06013403          	ld	s0,96(sp)
    80003838:	05813483          	ld	s1,88(sp)
    8000383c:	05013903          	ld	s2,80(sp)
    80003840:	04813983          	ld	s3,72(sp)
    80003844:	04013a03          	ld	s4,64(sp)
    80003848:	03813a83          	ld	s5,56(sp)
    8000384c:	03013b03          	ld	s6,48(sp)
    80003850:	07010113          	addi	sp,sp,112
    80003854:	00008067          	ret
    80003858:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000385c:	000a0513          	mv	a0,s4
    80003860:	fffff097          	auipc	ra,0xfffff
    80003864:	b0c080e7          	jalr	-1268(ra) # 8000236c <_ZdlPv>
    80003868:	00048513          	mv	a0,s1
    8000386c:	00009097          	auipc	ra,0x9
    80003870:	3fc080e7          	jalr	1020(ra) # 8000cc68 <_Unwind_Resume>

0000000080003874 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003874:	fe010113          	addi	sp,sp,-32
    80003878:	00113c23          	sd	ra,24(sp)
    8000387c:	00813823          	sd	s0,16(sp)
    80003880:	00913423          	sd	s1,8(sp)
    80003884:	01213023          	sd	s2,0(sp)
    80003888:	02010413          	addi	s0,sp,32
    8000388c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003890:	00100793          	li	a5,1
    80003894:	02a7f863          	bgeu	a5,a0,800038c4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003898:	00a00793          	li	a5,10
    8000389c:	02f577b3          	remu	a5,a0,a5
    800038a0:	02078e63          	beqz	a5,800038dc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800038a4:	fff48513          	addi	a0,s1,-1
    800038a8:	00000097          	auipc	ra,0x0
    800038ac:	fcc080e7          	jalr	-52(ra) # 80003874 <_ZL9fibonaccim>
    800038b0:	00050913          	mv	s2,a0
    800038b4:	ffe48513          	addi	a0,s1,-2
    800038b8:	00000097          	auipc	ra,0x0
    800038bc:	fbc080e7          	jalr	-68(ra) # 80003874 <_ZL9fibonaccim>
    800038c0:	00a90533          	add	a0,s2,a0
}
    800038c4:	01813083          	ld	ra,24(sp)
    800038c8:	01013403          	ld	s0,16(sp)
    800038cc:	00813483          	ld	s1,8(sp)
    800038d0:	00013903          	ld	s2,0(sp)
    800038d4:	02010113          	addi	sp,sp,32
    800038d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	b08080e7          	jalr	-1272(ra) # 800013e4 <_Z15thread_dispatchv>
    800038e4:	fc1ff06f          	j	800038a4 <_ZL9fibonaccim+0x30>

00000000800038e8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800038e8:	fe010113          	addi	sp,sp,-32
    800038ec:	00113c23          	sd	ra,24(sp)
    800038f0:	00813823          	sd	s0,16(sp)
    800038f4:	00913423          	sd	s1,8(sp)
    800038f8:	01213023          	sd	s2,0(sp)
    800038fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003900:	00000913          	li	s2,0
    80003904:	0380006f          	j	8000393c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	adc080e7          	jalr	-1316(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003910:	00148493          	addi	s1,s1,1
    80003914:	000027b7          	lui	a5,0x2
    80003918:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000391c:	0097ee63          	bltu	a5,s1,80003938 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003920:	00000713          	li	a4,0
    80003924:	000077b7          	lui	a5,0x7
    80003928:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000392c:	fce7eee3          	bltu	a5,a4,80003908 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003930:	00170713          	addi	a4,a4,1
    80003934:	ff1ff06f          	j	80003924 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003938:	00190913          	addi	s2,s2,1
    8000393c:	00900793          	li	a5,9
    80003940:	0527e063          	bltu	a5,s2,80003980 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003944:	00006517          	auipc	a0,0x6
    80003948:	8d450513          	addi	a0,a0,-1836 # 80009218 <CONSOLE_STATUS+0x208>
    8000394c:	00002097          	auipc	ra,0x2
    80003950:	eac080e7          	jalr	-340(ra) # 800057f8 <_Z11printStringPKc>
    80003954:	00000613          	li	a2,0
    80003958:	00a00593          	li	a1,10
    8000395c:	0009051b          	sext.w	a0,s2
    80003960:	00002097          	auipc	ra,0x2
    80003964:	048080e7          	jalr	72(ra) # 800059a8 <_Z8printIntiii>
    80003968:	00006517          	auipc	a0,0x6
    8000396c:	b0050513          	addi	a0,a0,-1280 # 80009468 <CONSOLE_STATUS+0x458>
    80003970:	00002097          	auipc	ra,0x2
    80003974:	e88080e7          	jalr	-376(ra) # 800057f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003978:	00000493          	li	s1,0
    8000397c:	f99ff06f          	j	80003914 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003980:	00006517          	auipc	a0,0x6
    80003984:	8a050513          	addi	a0,a0,-1888 # 80009220 <CONSOLE_STATUS+0x210>
    80003988:	00002097          	auipc	ra,0x2
    8000398c:	e70080e7          	jalr	-400(ra) # 800057f8 <_Z11printStringPKc>
    finishedA = true;
    80003990:	00100793          	li	a5,1
    80003994:	00008717          	auipc	a4,0x8
    80003998:	1cf70223          	sb	a5,452(a4) # 8000bb58 <_ZL9finishedA>
}
    8000399c:	01813083          	ld	ra,24(sp)
    800039a0:	01013403          	ld	s0,16(sp)
    800039a4:	00813483          	ld	s1,8(sp)
    800039a8:	00013903          	ld	s2,0(sp)
    800039ac:	02010113          	addi	sp,sp,32
    800039b0:	00008067          	ret

00000000800039b4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800039b4:	fe010113          	addi	sp,sp,-32
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	00813823          	sd	s0,16(sp)
    800039c0:	00913423          	sd	s1,8(sp)
    800039c4:	01213023          	sd	s2,0(sp)
    800039c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800039cc:	00000913          	li	s2,0
    800039d0:	0380006f          	j	80003a08 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	a10080e7          	jalr	-1520(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800039dc:	00148493          	addi	s1,s1,1
    800039e0:	000027b7          	lui	a5,0x2
    800039e4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800039e8:	0097ee63          	bltu	a5,s1,80003a04 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800039ec:	00000713          	li	a4,0
    800039f0:	000077b7          	lui	a5,0x7
    800039f4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800039f8:	fce7eee3          	bltu	a5,a4,800039d4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800039fc:	00170713          	addi	a4,a4,1
    80003a00:	ff1ff06f          	j	800039f0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003a04:	00190913          	addi	s2,s2,1
    80003a08:	00f00793          	li	a5,15
    80003a0c:	0527e063          	bltu	a5,s2,80003a4c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003a10:	00006517          	auipc	a0,0x6
    80003a14:	82050513          	addi	a0,a0,-2016 # 80009230 <CONSOLE_STATUS+0x220>
    80003a18:	00002097          	auipc	ra,0x2
    80003a1c:	de0080e7          	jalr	-544(ra) # 800057f8 <_Z11printStringPKc>
    80003a20:	00000613          	li	a2,0
    80003a24:	00a00593          	li	a1,10
    80003a28:	0009051b          	sext.w	a0,s2
    80003a2c:	00002097          	auipc	ra,0x2
    80003a30:	f7c080e7          	jalr	-132(ra) # 800059a8 <_Z8printIntiii>
    80003a34:	00006517          	auipc	a0,0x6
    80003a38:	a3450513          	addi	a0,a0,-1484 # 80009468 <CONSOLE_STATUS+0x458>
    80003a3c:	00002097          	auipc	ra,0x2
    80003a40:	dbc080e7          	jalr	-580(ra) # 800057f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a44:	00000493          	li	s1,0
    80003a48:	f99ff06f          	j	800039e0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003a4c:	00005517          	auipc	a0,0x5
    80003a50:	7ec50513          	addi	a0,a0,2028 # 80009238 <CONSOLE_STATUS+0x228>
    80003a54:	00002097          	auipc	ra,0x2
    80003a58:	da4080e7          	jalr	-604(ra) # 800057f8 <_Z11printStringPKc>
    finishedB = true;
    80003a5c:	00100793          	li	a5,1
    80003a60:	00008717          	auipc	a4,0x8
    80003a64:	0ef70ca3          	sb	a5,249(a4) # 8000bb59 <_ZL9finishedB>
    thread_dispatch();
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	97c080e7          	jalr	-1668(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80003a70:	01813083          	ld	ra,24(sp)
    80003a74:	01013403          	ld	s0,16(sp)
    80003a78:	00813483          	ld	s1,8(sp)
    80003a7c:	00013903          	ld	s2,0(sp)
    80003a80:	02010113          	addi	sp,sp,32
    80003a84:	00008067          	ret

0000000080003a88 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003a88:	fe010113          	addi	sp,sp,-32
    80003a8c:	00113c23          	sd	ra,24(sp)
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00913423          	sd	s1,8(sp)
    80003a98:	01213023          	sd	s2,0(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003aa0:	00000493          	li	s1,0
    80003aa4:	0400006f          	j	80003ae4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003aa8:	00005517          	auipc	a0,0x5
    80003aac:	7a050513          	addi	a0,a0,1952 # 80009248 <CONSOLE_STATUS+0x238>
    80003ab0:	00002097          	auipc	ra,0x2
    80003ab4:	d48080e7          	jalr	-696(ra) # 800057f8 <_Z11printStringPKc>
    80003ab8:	00000613          	li	a2,0
    80003abc:	00a00593          	li	a1,10
    80003ac0:	00048513          	mv	a0,s1
    80003ac4:	00002097          	auipc	ra,0x2
    80003ac8:	ee4080e7          	jalr	-284(ra) # 800059a8 <_Z8printIntiii>
    80003acc:	00006517          	auipc	a0,0x6
    80003ad0:	99c50513          	addi	a0,a0,-1636 # 80009468 <CONSOLE_STATUS+0x458>
    80003ad4:	00002097          	auipc	ra,0x2
    80003ad8:	d24080e7          	jalr	-732(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003adc:	0014849b          	addiw	s1,s1,1
    80003ae0:	0ff4f493          	andi	s1,s1,255
    80003ae4:	00200793          	li	a5,2
    80003ae8:	fc97f0e3          	bgeu	a5,s1,80003aa8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003aec:	00005517          	auipc	a0,0x5
    80003af0:	76450513          	addi	a0,a0,1892 # 80009250 <CONSOLE_STATUS+0x240>
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	d04080e7          	jalr	-764(ra) # 800057f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003afc:	00700313          	li	t1,7
    thread_dispatch();
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	8e4080e7          	jalr	-1820(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003b08:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003b0c:	00005517          	auipc	a0,0x5
    80003b10:	75450513          	addi	a0,a0,1876 # 80009260 <CONSOLE_STATUS+0x250>
    80003b14:	00002097          	auipc	ra,0x2
    80003b18:	ce4080e7          	jalr	-796(ra) # 800057f8 <_Z11printStringPKc>
    80003b1c:	00000613          	li	a2,0
    80003b20:	00a00593          	li	a1,10
    80003b24:	0009051b          	sext.w	a0,s2
    80003b28:	00002097          	auipc	ra,0x2
    80003b2c:	e80080e7          	jalr	-384(ra) # 800059a8 <_Z8printIntiii>
    80003b30:	00006517          	auipc	a0,0x6
    80003b34:	93850513          	addi	a0,a0,-1736 # 80009468 <CONSOLE_STATUS+0x458>
    80003b38:	00002097          	auipc	ra,0x2
    80003b3c:	cc0080e7          	jalr	-832(ra) # 800057f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003b40:	00c00513          	li	a0,12
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	d30080e7          	jalr	-720(ra) # 80003874 <_ZL9fibonaccim>
    80003b4c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003b50:	00005517          	auipc	a0,0x5
    80003b54:	71850513          	addi	a0,a0,1816 # 80009268 <CONSOLE_STATUS+0x258>
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	ca0080e7          	jalr	-864(ra) # 800057f8 <_Z11printStringPKc>
    80003b60:	00000613          	li	a2,0
    80003b64:	00a00593          	li	a1,10
    80003b68:	0009051b          	sext.w	a0,s2
    80003b6c:	00002097          	auipc	ra,0x2
    80003b70:	e3c080e7          	jalr	-452(ra) # 800059a8 <_Z8printIntiii>
    80003b74:	00006517          	auipc	a0,0x6
    80003b78:	8f450513          	addi	a0,a0,-1804 # 80009468 <CONSOLE_STATUS+0x458>
    80003b7c:	00002097          	auipc	ra,0x2
    80003b80:	c7c080e7          	jalr	-900(ra) # 800057f8 <_Z11printStringPKc>
    80003b84:	0400006f          	j	80003bc4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003b88:	00005517          	auipc	a0,0x5
    80003b8c:	6c050513          	addi	a0,a0,1728 # 80009248 <CONSOLE_STATUS+0x238>
    80003b90:	00002097          	auipc	ra,0x2
    80003b94:	c68080e7          	jalr	-920(ra) # 800057f8 <_Z11printStringPKc>
    80003b98:	00000613          	li	a2,0
    80003b9c:	00a00593          	li	a1,10
    80003ba0:	00048513          	mv	a0,s1
    80003ba4:	00002097          	auipc	ra,0x2
    80003ba8:	e04080e7          	jalr	-508(ra) # 800059a8 <_Z8printIntiii>
    80003bac:	00006517          	auipc	a0,0x6
    80003bb0:	8bc50513          	addi	a0,a0,-1860 # 80009468 <CONSOLE_STATUS+0x458>
    80003bb4:	00002097          	auipc	ra,0x2
    80003bb8:	c44080e7          	jalr	-956(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003bbc:	0014849b          	addiw	s1,s1,1
    80003bc0:	0ff4f493          	andi	s1,s1,255
    80003bc4:	00500793          	li	a5,5
    80003bc8:	fc97f0e3          	bgeu	a5,s1,80003b88 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003bcc:	00005517          	auipc	a0,0x5
    80003bd0:	65450513          	addi	a0,a0,1620 # 80009220 <CONSOLE_STATUS+0x210>
    80003bd4:	00002097          	auipc	ra,0x2
    80003bd8:	c24080e7          	jalr	-988(ra) # 800057f8 <_Z11printStringPKc>
    finishedC = true;
    80003bdc:	00100793          	li	a5,1
    80003be0:	00008717          	auipc	a4,0x8
    80003be4:	f6f70d23          	sb	a5,-134(a4) # 8000bb5a <_ZL9finishedC>
    thread_dispatch();
    80003be8:	ffffd097          	auipc	ra,0xffffd
    80003bec:	7fc080e7          	jalr	2044(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80003bf0:	01813083          	ld	ra,24(sp)
    80003bf4:	01013403          	ld	s0,16(sp)
    80003bf8:	00813483          	ld	s1,8(sp)
    80003bfc:	00013903          	ld	s2,0(sp)
    80003c00:	02010113          	addi	sp,sp,32
    80003c04:	00008067          	ret

0000000080003c08 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003c08:	fe010113          	addi	sp,sp,-32
    80003c0c:	00113c23          	sd	ra,24(sp)
    80003c10:	00813823          	sd	s0,16(sp)
    80003c14:	00913423          	sd	s1,8(sp)
    80003c18:	01213023          	sd	s2,0(sp)
    80003c1c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003c20:	00a00493          	li	s1,10
    80003c24:	0400006f          	j	80003c64 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c28:	00005517          	auipc	a0,0x5
    80003c2c:	65050513          	addi	a0,a0,1616 # 80009278 <CONSOLE_STATUS+0x268>
    80003c30:	00002097          	auipc	ra,0x2
    80003c34:	bc8080e7          	jalr	-1080(ra) # 800057f8 <_Z11printStringPKc>
    80003c38:	00000613          	li	a2,0
    80003c3c:	00a00593          	li	a1,10
    80003c40:	00048513          	mv	a0,s1
    80003c44:	00002097          	auipc	ra,0x2
    80003c48:	d64080e7          	jalr	-668(ra) # 800059a8 <_Z8printIntiii>
    80003c4c:	00006517          	auipc	a0,0x6
    80003c50:	81c50513          	addi	a0,a0,-2020 # 80009468 <CONSOLE_STATUS+0x458>
    80003c54:	00002097          	auipc	ra,0x2
    80003c58:	ba4080e7          	jalr	-1116(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003c5c:	0014849b          	addiw	s1,s1,1
    80003c60:	0ff4f493          	andi	s1,s1,255
    80003c64:	00c00793          	li	a5,12
    80003c68:	fc97f0e3          	bgeu	a5,s1,80003c28 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003c6c:	00005517          	auipc	a0,0x5
    80003c70:	61450513          	addi	a0,a0,1556 # 80009280 <CONSOLE_STATUS+0x270>
    80003c74:	00002097          	auipc	ra,0x2
    80003c78:	b84080e7          	jalr	-1148(ra) # 800057f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c7c:	00500313          	li	t1,5
    thread_dispatch();
    80003c80:	ffffd097          	auipc	ra,0xffffd
    80003c84:	764080e7          	jalr	1892(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c88:	01000513          	li	a0,16
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	be8080e7          	jalr	-1048(ra) # 80003874 <_ZL9fibonaccim>
    80003c94:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c98:	00005517          	auipc	a0,0x5
    80003c9c:	5f850513          	addi	a0,a0,1528 # 80009290 <CONSOLE_STATUS+0x280>
    80003ca0:	00002097          	auipc	ra,0x2
    80003ca4:	b58080e7          	jalr	-1192(ra) # 800057f8 <_Z11printStringPKc>
    80003ca8:	00000613          	li	a2,0
    80003cac:	00a00593          	li	a1,10
    80003cb0:	0009051b          	sext.w	a0,s2
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	cf4080e7          	jalr	-780(ra) # 800059a8 <_Z8printIntiii>
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	7ac50513          	addi	a0,a0,1964 # 80009468 <CONSOLE_STATUS+0x458>
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	b34080e7          	jalr	-1228(ra) # 800057f8 <_Z11printStringPKc>
    80003ccc:	0400006f          	j	80003d0c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003cd0:	00005517          	auipc	a0,0x5
    80003cd4:	5a850513          	addi	a0,a0,1448 # 80009278 <CONSOLE_STATUS+0x268>
    80003cd8:	00002097          	auipc	ra,0x2
    80003cdc:	b20080e7          	jalr	-1248(ra) # 800057f8 <_Z11printStringPKc>
    80003ce0:	00000613          	li	a2,0
    80003ce4:	00a00593          	li	a1,10
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	cbc080e7          	jalr	-836(ra) # 800059a8 <_Z8printIntiii>
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	77450513          	addi	a0,a0,1908 # 80009468 <CONSOLE_STATUS+0x458>
    80003cfc:	00002097          	auipc	ra,0x2
    80003d00:	afc080e7          	jalr	-1284(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003d04:	0014849b          	addiw	s1,s1,1
    80003d08:	0ff4f493          	andi	s1,s1,255
    80003d0c:	00f00793          	li	a5,15
    80003d10:	fc97f0e3          	bgeu	a5,s1,80003cd0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003d14:	00005517          	auipc	a0,0x5
    80003d18:	58c50513          	addi	a0,a0,1420 # 800092a0 <CONSOLE_STATUS+0x290>
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	adc080e7          	jalr	-1316(ra) # 800057f8 <_Z11printStringPKc>
    finishedD = true;
    80003d24:	00100793          	li	a5,1
    80003d28:	00008717          	auipc	a4,0x8
    80003d2c:	e2f709a3          	sb	a5,-461(a4) # 8000bb5b <_ZL9finishedD>
    thread_dispatch();
    80003d30:	ffffd097          	auipc	ra,0xffffd
    80003d34:	6b4080e7          	jalr	1716(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	00013903          	ld	s2,0(sp)
    80003d48:	02010113          	addi	sp,sp,32
    80003d4c:	00008067          	ret

0000000080003d50 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003d50:	fc010113          	addi	sp,sp,-64
    80003d54:	02113c23          	sd	ra,56(sp)
    80003d58:	02813823          	sd	s0,48(sp)
    80003d5c:	02913423          	sd	s1,40(sp)
    80003d60:	03213023          	sd	s2,32(sp)
    80003d64:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003d68:	02000513          	li	a0,32
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	5b0080e7          	jalr	1456(ra) # 8000231c <_Znwm>
    80003d74:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	6dc080e7          	jalr	1756(ra) # 80002454 <_ZN6ThreadC1Ev>
    80003d80:	00008797          	auipc	a5,0x8
    80003d84:	a6078793          	addi	a5,a5,-1440 # 8000b7e0 <_ZTV7WorkerA+0x10>
    80003d88:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003d8c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003d90:	00005517          	auipc	a0,0x5
    80003d94:	52050513          	addi	a0,a0,1312 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003d98:	00002097          	auipc	ra,0x2
    80003d9c:	a60080e7          	jalr	-1440(ra) # 800057f8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003da0:	02000513          	li	a0,32
    80003da4:	ffffe097          	auipc	ra,0xffffe
    80003da8:	578080e7          	jalr	1400(ra) # 8000231c <_Znwm>
    80003dac:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003db0:	ffffe097          	auipc	ra,0xffffe
    80003db4:	6a4080e7          	jalr	1700(ra) # 80002454 <_ZN6ThreadC1Ev>
    80003db8:	00008797          	auipc	a5,0x8
    80003dbc:	a5078793          	addi	a5,a5,-1456 # 8000b808 <_ZTV7WorkerB+0x10>
    80003dc0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003dc4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003dc8:	00005517          	auipc	a0,0x5
    80003dcc:	50050513          	addi	a0,a0,1280 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003dd0:	00002097          	auipc	ra,0x2
    80003dd4:	a28080e7          	jalr	-1496(ra) # 800057f8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003dd8:	02000513          	li	a0,32
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	540080e7          	jalr	1344(ra) # 8000231c <_Znwm>
    80003de4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	66c080e7          	jalr	1644(ra) # 80002454 <_ZN6ThreadC1Ev>
    80003df0:	00008797          	auipc	a5,0x8
    80003df4:	a4078793          	addi	a5,a5,-1472 # 8000b830 <_ZTV7WorkerC+0x10>
    80003df8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003dfc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003e00:	00005517          	auipc	a0,0x5
    80003e04:	4e050513          	addi	a0,a0,1248 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003e08:	00002097          	auipc	ra,0x2
    80003e0c:	9f0080e7          	jalr	-1552(ra) # 800057f8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003e10:	02000513          	li	a0,32
    80003e14:	ffffe097          	auipc	ra,0xffffe
    80003e18:	508080e7          	jalr	1288(ra) # 8000231c <_Znwm>
    80003e1c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	634080e7          	jalr	1588(ra) # 80002454 <_ZN6ThreadC1Ev>
    80003e28:	00008797          	auipc	a5,0x8
    80003e2c:	a3078793          	addi	a5,a5,-1488 # 8000b858 <_ZTV7WorkerD+0x10>
    80003e30:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003e34:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003e38:	00005517          	auipc	a0,0x5
    80003e3c:	4c050513          	addi	a0,a0,1216 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003e40:	00002097          	auipc	ra,0x2
    80003e44:	9b8080e7          	jalr	-1608(ra) # 800057f8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003e48:	00000493          	li	s1,0
    80003e4c:	00300793          	li	a5,3
    80003e50:	0297c663          	blt	a5,s1,80003e7c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003e54:	00349793          	slli	a5,s1,0x3
    80003e58:	fe040713          	addi	a4,s0,-32
    80003e5c:	00f707b3          	add	a5,a4,a5
    80003e60:	fe07b503          	ld	a0,-32(a5)
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	650080e7          	jalr	1616(ra) # 800024b4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003e6c:	0014849b          	addiw	s1,s1,1
    80003e70:	fddff06f          	j	80003e4c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	618080e7          	jalr	1560(ra) # 8000248c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003e7c:	00008797          	auipc	a5,0x8
    80003e80:	cdc7c783          	lbu	a5,-804(a5) # 8000bb58 <_ZL9finishedA>
    80003e84:	fe0788e3          	beqz	a5,80003e74 <_Z20Threads_CPP_API_testv+0x124>
    80003e88:	00008797          	auipc	a5,0x8
    80003e8c:	cd17c783          	lbu	a5,-815(a5) # 8000bb59 <_ZL9finishedB>
    80003e90:	fe0782e3          	beqz	a5,80003e74 <_Z20Threads_CPP_API_testv+0x124>
    80003e94:	00008797          	auipc	a5,0x8
    80003e98:	cc67c783          	lbu	a5,-826(a5) # 8000bb5a <_ZL9finishedC>
    80003e9c:	fc078ce3          	beqz	a5,80003e74 <_Z20Threads_CPP_API_testv+0x124>
    80003ea0:	00008797          	auipc	a5,0x8
    80003ea4:	cbb7c783          	lbu	a5,-837(a5) # 8000bb5b <_ZL9finishedD>
    80003ea8:	fc0786e3          	beqz	a5,80003e74 <_Z20Threads_CPP_API_testv+0x124>
    80003eac:	fc040493          	addi	s1,s0,-64
    80003eb0:	0080006f          	j	80003eb8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003eb4:	00848493          	addi	s1,s1,8
    80003eb8:	fe040793          	addi	a5,s0,-32
    80003ebc:	08f48663          	beq	s1,a5,80003f48 <_Z20Threads_CPP_API_testv+0x1f8>
    80003ec0:	0004b503          	ld	a0,0(s1)
    80003ec4:	fe0508e3          	beqz	a0,80003eb4 <_Z20Threads_CPP_API_testv+0x164>
    80003ec8:	00053783          	ld	a5,0(a0)
    80003ecc:	0087b783          	ld	a5,8(a5)
    80003ed0:	000780e7          	jalr	a5
    80003ed4:	fe1ff06f          	j	80003eb4 <_Z20Threads_CPP_API_testv+0x164>
    80003ed8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003edc:	00048513          	mv	a0,s1
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	48c080e7          	jalr	1164(ra) # 8000236c <_ZdlPv>
    80003ee8:	00090513          	mv	a0,s2
    80003eec:	00009097          	auipc	ra,0x9
    80003ef0:	d7c080e7          	jalr	-644(ra) # 8000cc68 <_Unwind_Resume>
    80003ef4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003ef8:	00048513          	mv	a0,s1
    80003efc:	ffffe097          	auipc	ra,0xffffe
    80003f00:	470080e7          	jalr	1136(ra) # 8000236c <_ZdlPv>
    80003f04:	00090513          	mv	a0,s2
    80003f08:	00009097          	auipc	ra,0x9
    80003f0c:	d60080e7          	jalr	-672(ra) # 8000cc68 <_Unwind_Resume>
    80003f10:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003f14:	00048513          	mv	a0,s1
    80003f18:	ffffe097          	auipc	ra,0xffffe
    80003f1c:	454080e7          	jalr	1108(ra) # 8000236c <_ZdlPv>
    80003f20:	00090513          	mv	a0,s2
    80003f24:	00009097          	auipc	ra,0x9
    80003f28:	d44080e7          	jalr	-700(ra) # 8000cc68 <_Unwind_Resume>
    80003f2c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003f30:	00048513          	mv	a0,s1
    80003f34:	ffffe097          	auipc	ra,0xffffe
    80003f38:	438080e7          	jalr	1080(ra) # 8000236c <_ZdlPv>
    80003f3c:	00090513          	mv	a0,s2
    80003f40:	00009097          	auipc	ra,0x9
    80003f44:	d28080e7          	jalr	-728(ra) # 8000cc68 <_Unwind_Resume>
}
    80003f48:	03813083          	ld	ra,56(sp)
    80003f4c:	03013403          	ld	s0,48(sp)
    80003f50:	02813483          	ld	s1,40(sp)
    80003f54:	02013903          	ld	s2,32(sp)
    80003f58:	04010113          	addi	sp,sp,64
    80003f5c:	00008067          	ret

0000000080003f60 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003f60:	ff010113          	addi	sp,sp,-16
    80003f64:	00113423          	sd	ra,8(sp)
    80003f68:	00813023          	sd	s0,0(sp)
    80003f6c:	01010413          	addi	s0,sp,16
    80003f70:	00008797          	auipc	a5,0x8
    80003f74:	87078793          	addi	a5,a5,-1936 # 8000b7e0 <_ZTV7WorkerA+0x10>
    80003f78:	00f53023          	sd	a5,0(a0)
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	350080e7          	jalr	848(ra) # 800022cc <_ZN6ThreadD1Ev>
    80003f84:	00813083          	ld	ra,8(sp)
    80003f88:	00013403          	ld	s0,0(sp)
    80003f8c:	01010113          	addi	sp,sp,16
    80003f90:	00008067          	ret

0000000080003f94 <_ZN7WorkerAD0Ev>:
    80003f94:	fe010113          	addi	sp,sp,-32
    80003f98:	00113c23          	sd	ra,24(sp)
    80003f9c:	00813823          	sd	s0,16(sp)
    80003fa0:	00913423          	sd	s1,8(sp)
    80003fa4:	02010413          	addi	s0,sp,32
    80003fa8:	00050493          	mv	s1,a0
    80003fac:	00008797          	auipc	a5,0x8
    80003fb0:	83478793          	addi	a5,a5,-1996 # 8000b7e0 <_ZTV7WorkerA+0x10>
    80003fb4:	00f53023          	sd	a5,0(a0)
    80003fb8:	ffffe097          	auipc	ra,0xffffe
    80003fbc:	314080e7          	jalr	788(ra) # 800022cc <_ZN6ThreadD1Ev>
    80003fc0:	00048513          	mv	a0,s1
    80003fc4:	ffffe097          	auipc	ra,0xffffe
    80003fc8:	3a8080e7          	jalr	936(ra) # 8000236c <_ZdlPv>
    80003fcc:	01813083          	ld	ra,24(sp)
    80003fd0:	01013403          	ld	s0,16(sp)
    80003fd4:	00813483          	ld	s1,8(sp)
    80003fd8:	02010113          	addi	sp,sp,32
    80003fdc:	00008067          	ret

0000000080003fe0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003fe0:	ff010113          	addi	sp,sp,-16
    80003fe4:	00113423          	sd	ra,8(sp)
    80003fe8:	00813023          	sd	s0,0(sp)
    80003fec:	01010413          	addi	s0,sp,16
    80003ff0:	00008797          	auipc	a5,0x8
    80003ff4:	81878793          	addi	a5,a5,-2024 # 8000b808 <_ZTV7WorkerB+0x10>
    80003ff8:	00f53023          	sd	a5,0(a0)
    80003ffc:	ffffe097          	auipc	ra,0xffffe
    80004000:	2d0080e7          	jalr	720(ra) # 800022cc <_ZN6ThreadD1Ev>
    80004004:	00813083          	ld	ra,8(sp)
    80004008:	00013403          	ld	s0,0(sp)
    8000400c:	01010113          	addi	sp,sp,16
    80004010:	00008067          	ret

0000000080004014 <_ZN7WorkerBD0Ev>:
    80004014:	fe010113          	addi	sp,sp,-32
    80004018:	00113c23          	sd	ra,24(sp)
    8000401c:	00813823          	sd	s0,16(sp)
    80004020:	00913423          	sd	s1,8(sp)
    80004024:	02010413          	addi	s0,sp,32
    80004028:	00050493          	mv	s1,a0
    8000402c:	00007797          	auipc	a5,0x7
    80004030:	7dc78793          	addi	a5,a5,2012 # 8000b808 <_ZTV7WorkerB+0x10>
    80004034:	00f53023          	sd	a5,0(a0)
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	294080e7          	jalr	660(ra) # 800022cc <_ZN6ThreadD1Ev>
    80004040:	00048513          	mv	a0,s1
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	328080e7          	jalr	808(ra) # 8000236c <_ZdlPv>
    8000404c:	01813083          	ld	ra,24(sp)
    80004050:	01013403          	ld	s0,16(sp)
    80004054:	00813483          	ld	s1,8(sp)
    80004058:	02010113          	addi	sp,sp,32
    8000405c:	00008067          	ret

0000000080004060 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00113423          	sd	ra,8(sp)
    80004068:	00813023          	sd	s0,0(sp)
    8000406c:	01010413          	addi	s0,sp,16
    80004070:	00007797          	auipc	a5,0x7
    80004074:	7c078793          	addi	a5,a5,1984 # 8000b830 <_ZTV7WorkerC+0x10>
    80004078:	00f53023          	sd	a5,0(a0)
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	250080e7          	jalr	592(ra) # 800022cc <_ZN6ThreadD1Ev>
    80004084:	00813083          	ld	ra,8(sp)
    80004088:	00013403          	ld	s0,0(sp)
    8000408c:	01010113          	addi	sp,sp,16
    80004090:	00008067          	ret

0000000080004094 <_ZN7WorkerCD0Ev>:
    80004094:	fe010113          	addi	sp,sp,-32
    80004098:	00113c23          	sd	ra,24(sp)
    8000409c:	00813823          	sd	s0,16(sp)
    800040a0:	00913423          	sd	s1,8(sp)
    800040a4:	02010413          	addi	s0,sp,32
    800040a8:	00050493          	mv	s1,a0
    800040ac:	00007797          	auipc	a5,0x7
    800040b0:	78478793          	addi	a5,a5,1924 # 8000b830 <_ZTV7WorkerC+0x10>
    800040b4:	00f53023          	sd	a5,0(a0)
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	214080e7          	jalr	532(ra) # 800022cc <_ZN6ThreadD1Ev>
    800040c0:	00048513          	mv	a0,s1
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	2a8080e7          	jalr	680(ra) # 8000236c <_ZdlPv>
    800040cc:	01813083          	ld	ra,24(sp)
    800040d0:	01013403          	ld	s0,16(sp)
    800040d4:	00813483          	ld	s1,8(sp)
    800040d8:	02010113          	addi	sp,sp,32
    800040dc:	00008067          	ret

00000000800040e0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800040e0:	ff010113          	addi	sp,sp,-16
    800040e4:	00113423          	sd	ra,8(sp)
    800040e8:	00813023          	sd	s0,0(sp)
    800040ec:	01010413          	addi	s0,sp,16
    800040f0:	00007797          	auipc	a5,0x7
    800040f4:	76878793          	addi	a5,a5,1896 # 8000b858 <_ZTV7WorkerD+0x10>
    800040f8:	00f53023          	sd	a5,0(a0)
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	1d0080e7          	jalr	464(ra) # 800022cc <_ZN6ThreadD1Ev>
    80004104:	00813083          	ld	ra,8(sp)
    80004108:	00013403          	ld	s0,0(sp)
    8000410c:	01010113          	addi	sp,sp,16
    80004110:	00008067          	ret

0000000080004114 <_ZN7WorkerDD0Ev>:
    80004114:	fe010113          	addi	sp,sp,-32
    80004118:	00113c23          	sd	ra,24(sp)
    8000411c:	00813823          	sd	s0,16(sp)
    80004120:	00913423          	sd	s1,8(sp)
    80004124:	02010413          	addi	s0,sp,32
    80004128:	00050493          	mv	s1,a0
    8000412c:	00007797          	auipc	a5,0x7
    80004130:	72c78793          	addi	a5,a5,1836 # 8000b858 <_ZTV7WorkerD+0x10>
    80004134:	00f53023          	sd	a5,0(a0)
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	194080e7          	jalr	404(ra) # 800022cc <_ZN6ThreadD1Ev>
    80004140:	00048513          	mv	a0,s1
    80004144:	ffffe097          	auipc	ra,0xffffe
    80004148:	228080e7          	jalr	552(ra) # 8000236c <_ZdlPv>
    8000414c:	01813083          	ld	ra,24(sp)
    80004150:	01013403          	ld	s0,16(sp)
    80004154:	00813483          	ld	s1,8(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret

0000000080004160 <_ZN7WorkerA3runEv>:
    void run() override {
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00113423          	sd	ra,8(sp)
    80004168:	00813023          	sd	s0,0(sp)
    8000416c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004170:	00000593          	li	a1,0
    80004174:	fffff097          	auipc	ra,0xfffff
    80004178:	774080e7          	jalr	1908(ra) # 800038e8 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000417c:	00813083          	ld	ra,8(sp)
    80004180:	00013403          	ld	s0,0(sp)
    80004184:	01010113          	addi	sp,sp,16
    80004188:	00008067          	ret

000000008000418c <_ZN7WorkerB3runEv>:
    void run() override {
    8000418c:	ff010113          	addi	sp,sp,-16
    80004190:	00113423          	sd	ra,8(sp)
    80004194:	00813023          	sd	s0,0(sp)
    80004198:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000419c:	00000593          	li	a1,0
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	814080e7          	jalr	-2028(ra) # 800039b4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800041a8:	00813083          	ld	ra,8(sp)
    800041ac:	00013403          	ld	s0,0(sp)
    800041b0:	01010113          	addi	sp,sp,16
    800041b4:	00008067          	ret

00000000800041b8 <_ZN7WorkerC3runEv>:
    void run() override {
    800041b8:	ff010113          	addi	sp,sp,-16
    800041bc:	00113423          	sd	ra,8(sp)
    800041c0:	00813023          	sd	s0,0(sp)
    800041c4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800041c8:	00000593          	li	a1,0
    800041cc:	00000097          	auipc	ra,0x0
    800041d0:	8bc080e7          	jalr	-1860(ra) # 80003a88 <_ZN7WorkerC11workerBodyCEPv>
    }
    800041d4:	00813083          	ld	ra,8(sp)
    800041d8:	00013403          	ld	s0,0(sp)
    800041dc:	01010113          	addi	sp,sp,16
    800041e0:	00008067          	ret

00000000800041e4 <_ZN7WorkerD3runEv>:
    void run() override {
    800041e4:	ff010113          	addi	sp,sp,-16
    800041e8:	00113423          	sd	ra,8(sp)
    800041ec:	00813023          	sd	s0,0(sp)
    800041f0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800041f4:	00000593          	li	a1,0
    800041f8:	00000097          	auipc	ra,0x0
    800041fc:	a10080e7          	jalr	-1520(ra) # 80003c08 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004200:	00813083          	ld	ra,8(sp)
    80004204:	00013403          	ld	s0,0(sp)
    80004208:	01010113          	addi	sp,sp,16
    8000420c:	00008067          	ret

0000000080004210 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004210:	f8010113          	addi	sp,sp,-128
    80004214:	06113c23          	sd	ra,120(sp)
    80004218:	06813823          	sd	s0,112(sp)
    8000421c:	06913423          	sd	s1,104(sp)
    80004220:	07213023          	sd	s2,96(sp)
    80004224:	05313c23          	sd	s3,88(sp)
    80004228:	05413823          	sd	s4,80(sp)
    8000422c:	05513423          	sd	s5,72(sp)
    80004230:	05613023          	sd	s6,64(sp)
    80004234:	03713c23          	sd	s7,56(sp)
    80004238:	03813823          	sd	s8,48(sp)
    8000423c:	03913423          	sd	s9,40(sp)
    80004240:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004244:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004248:	00005517          	auipc	a0,0x5
    8000424c:	ee850513          	addi	a0,a0,-280 # 80009130 <CONSOLE_STATUS+0x120>
    80004250:	00001097          	auipc	ra,0x1
    80004254:	5a8080e7          	jalr	1448(ra) # 800057f8 <_Z11printStringPKc>
    getString(input, 30);
    80004258:	01e00593          	li	a1,30
    8000425c:	f8040493          	addi	s1,s0,-128
    80004260:	00048513          	mv	a0,s1
    80004264:	00001097          	auipc	ra,0x1
    80004268:	61c080e7          	jalr	1564(ra) # 80005880 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000426c:	00048513          	mv	a0,s1
    80004270:	00001097          	auipc	ra,0x1
    80004274:	6e8080e7          	jalr	1768(ra) # 80005958 <_Z11stringToIntPKc>
    80004278:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000427c:	00005517          	auipc	a0,0x5
    80004280:	ed450513          	addi	a0,a0,-300 # 80009150 <CONSOLE_STATUS+0x140>
    80004284:	00001097          	auipc	ra,0x1
    80004288:	574080e7          	jalr	1396(ra) # 800057f8 <_Z11printStringPKc>
    getString(input, 30);
    8000428c:	01e00593          	li	a1,30
    80004290:	00048513          	mv	a0,s1
    80004294:	00001097          	auipc	ra,0x1
    80004298:	5ec080e7          	jalr	1516(ra) # 80005880 <_Z9getStringPci>
    n = stringToInt(input);
    8000429c:	00048513          	mv	a0,s1
    800042a0:	00001097          	auipc	ra,0x1
    800042a4:	6b8080e7          	jalr	1720(ra) # 80005958 <_Z11stringToIntPKc>
    800042a8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800042ac:	00005517          	auipc	a0,0x5
    800042b0:	ec450513          	addi	a0,a0,-316 # 80009170 <CONSOLE_STATUS+0x160>
    800042b4:	00001097          	auipc	ra,0x1
    800042b8:	544080e7          	jalr	1348(ra) # 800057f8 <_Z11printStringPKc>
    printInt(threadNum);
    800042bc:	00000613          	li	a2,0
    800042c0:	00a00593          	li	a1,10
    800042c4:	00098513          	mv	a0,s3
    800042c8:	00001097          	auipc	ra,0x1
    800042cc:	6e0080e7          	jalr	1760(ra) # 800059a8 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800042d0:	00005517          	auipc	a0,0x5
    800042d4:	eb850513          	addi	a0,a0,-328 # 80009188 <CONSOLE_STATUS+0x178>
    800042d8:	00001097          	auipc	ra,0x1
    800042dc:	520080e7          	jalr	1312(ra) # 800057f8 <_Z11printStringPKc>
    printInt(n);
    800042e0:	00000613          	li	a2,0
    800042e4:	00a00593          	li	a1,10
    800042e8:	00048513          	mv	a0,s1
    800042ec:	00001097          	auipc	ra,0x1
    800042f0:	6bc080e7          	jalr	1724(ra) # 800059a8 <_Z8printIntiii>
    printString(".\n");
    800042f4:	00005517          	auipc	a0,0x5
    800042f8:	eac50513          	addi	a0,a0,-340 # 800091a0 <CONSOLE_STATUS+0x190>
    800042fc:	00001097          	auipc	ra,0x1
    80004300:	4fc080e7          	jalr	1276(ra) # 800057f8 <_Z11printStringPKc>
    if (threadNum > n) {
    80004304:	0334c463          	blt	s1,s3,8000432c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004308:	03305c63          	blez	s3,80004340 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000430c:	03800513          	li	a0,56
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	00c080e7          	jalr	12(ra) # 8000231c <_Znwm>
    80004318:	00050a93          	mv	s5,a0
    8000431c:	00048593          	mv	a1,s1
    80004320:	00001097          	auipc	ra,0x1
    80004324:	7a8080e7          	jalr	1960(ra) # 80005ac8 <_ZN9BufferCPPC1Ei>
    80004328:	0300006f          	j	80004358 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000432c:	00005517          	auipc	a0,0x5
    80004330:	e7c50513          	addi	a0,a0,-388 # 800091a8 <CONSOLE_STATUS+0x198>
    80004334:	00001097          	auipc	ra,0x1
    80004338:	4c4080e7          	jalr	1220(ra) # 800057f8 <_Z11printStringPKc>
        return;
    8000433c:	0140006f          	j	80004350 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004340:	00005517          	auipc	a0,0x5
    80004344:	ea850513          	addi	a0,a0,-344 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004348:	00001097          	auipc	ra,0x1
    8000434c:	4b0080e7          	jalr	1200(ra) # 800057f8 <_Z11printStringPKc>
        return;
    80004350:	000c0113          	mv	sp,s8
    80004354:	2140006f          	j	80004568 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004358:	01000513          	li	a0,16
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	fc0080e7          	jalr	-64(ra) # 8000231c <_Znwm>
    80004364:	00050913          	mv	s2,a0
    80004368:	00000593          	li	a1,0
    8000436c:	ffffe097          	auipc	ra,0xffffe
    80004370:	1f8080e7          	jalr	504(ra) # 80002564 <_ZN9SemaphoreC1Ej>
    80004374:	00007797          	auipc	a5,0x7
    80004378:	7f27ba23          	sd	s2,2036(a5) # 8000bb68 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000437c:	00399793          	slli	a5,s3,0x3
    80004380:	00f78793          	addi	a5,a5,15
    80004384:	ff07f793          	andi	a5,a5,-16
    80004388:	40f10133          	sub	sp,sp,a5
    8000438c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004390:	0019871b          	addiw	a4,s3,1
    80004394:	00171793          	slli	a5,a4,0x1
    80004398:	00e787b3          	add	a5,a5,a4
    8000439c:	00379793          	slli	a5,a5,0x3
    800043a0:	00f78793          	addi	a5,a5,15
    800043a4:	ff07f793          	andi	a5,a5,-16
    800043a8:	40f10133          	sub	sp,sp,a5
    800043ac:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800043b0:	00199493          	slli	s1,s3,0x1
    800043b4:	013484b3          	add	s1,s1,s3
    800043b8:	00349493          	slli	s1,s1,0x3
    800043bc:	009b04b3          	add	s1,s6,s1
    800043c0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800043c4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800043c8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800043cc:	02800513          	li	a0,40
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	f4c080e7          	jalr	-180(ra) # 8000231c <_Znwm>
    800043d8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800043dc:	ffffe097          	auipc	ra,0xffffe
    800043e0:	078080e7          	jalr	120(ra) # 80002454 <_ZN6ThreadC1Ev>
    800043e4:	00007797          	auipc	a5,0x7
    800043e8:	4ec78793          	addi	a5,a5,1260 # 8000b8d0 <_ZTV8Consumer+0x10>
    800043ec:	00fbb023          	sd	a5,0(s7)
    800043f0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800043f4:	000b8513          	mv	a0,s7
    800043f8:	ffffe097          	auipc	ra,0xffffe
    800043fc:	0bc080e7          	jalr	188(ra) # 800024b4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004400:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004404:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004408:	00007797          	auipc	a5,0x7
    8000440c:	7607b783          	ld	a5,1888(a5) # 8000bb68 <_ZL10waitForAll>
    80004410:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004414:	02800513          	li	a0,40
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	f04080e7          	jalr	-252(ra) # 8000231c <_Znwm>
    80004420:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004424:	ffffe097          	auipc	ra,0xffffe
    80004428:	030080e7          	jalr	48(ra) # 80002454 <_ZN6ThreadC1Ev>
    8000442c:	00007797          	auipc	a5,0x7
    80004430:	45478793          	addi	a5,a5,1108 # 8000b880 <_ZTV16ProducerKeyborad+0x10>
    80004434:	00f4b023          	sd	a5,0(s1)
    80004438:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000443c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004440:	00048513          	mv	a0,s1
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	070080e7          	jalr	112(ra) # 800024b4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000444c:	00100913          	li	s2,1
    80004450:	0300006f          	j	80004480 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004454:	00007797          	auipc	a5,0x7
    80004458:	45478793          	addi	a5,a5,1108 # 8000b8a8 <_ZTV8Producer+0x10>
    8000445c:	00fcb023          	sd	a5,0(s9)
    80004460:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004464:	00391793          	slli	a5,s2,0x3
    80004468:	00fa07b3          	add	a5,s4,a5
    8000446c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004470:	000c8513          	mv	a0,s9
    80004474:	ffffe097          	auipc	ra,0xffffe
    80004478:	040080e7          	jalr	64(ra) # 800024b4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000447c:	0019091b          	addiw	s2,s2,1
    80004480:	05395263          	bge	s2,s3,800044c4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004484:	00191493          	slli	s1,s2,0x1
    80004488:	012484b3          	add	s1,s1,s2
    8000448c:	00349493          	slli	s1,s1,0x3
    80004490:	009b04b3          	add	s1,s6,s1
    80004494:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004498:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000449c:	00007797          	auipc	a5,0x7
    800044a0:	6cc7b783          	ld	a5,1740(a5) # 8000bb68 <_ZL10waitForAll>
    800044a4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800044a8:	02800513          	li	a0,40
    800044ac:	ffffe097          	auipc	ra,0xffffe
    800044b0:	e70080e7          	jalr	-400(ra) # 8000231c <_Znwm>
    800044b4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800044b8:	ffffe097          	auipc	ra,0xffffe
    800044bc:	f9c080e7          	jalr	-100(ra) # 80002454 <_ZN6ThreadC1Ev>
    800044c0:	f95ff06f          	j	80004454 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800044c4:	ffffe097          	auipc	ra,0xffffe
    800044c8:	fc8080e7          	jalr	-56(ra) # 8000248c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800044cc:	00000493          	li	s1,0
    800044d0:	0099ce63          	blt	s3,s1,800044ec <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800044d4:	00007517          	auipc	a0,0x7
    800044d8:	69453503          	ld	a0,1684(a0) # 8000bb68 <_ZL10waitForAll>
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	0c4080e7          	jalr	196(ra) # 800025a0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800044e4:	0014849b          	addiw	s1,s1,1
    800044e8:	fe9ff06f          	j	800044d0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800044ec:	00007517          	auipc	a0,0x7
    800044f0:	67c53503          	ld	a0,1660(a0) # 8000bb68 <_ZL10waitForAll>
    800044f4:	00050863          	beqz	a0,80004504 <_Z20testConsumerProducerv+0x2f4>
    800044f8:	00053783          	ld	a5,0(a0)
    800044fc:	0087b783          	ld	a5,8(a5)
    80004500:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004504:	00000493          	li	s1,0
    80004508:	0080006f          	j	80004510 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000450c:	0014849b          	addiw	s1,s1,1
    80004510:	0334d263          	bge	s1,s3,80004534 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004514:	00349793          	slli	a5,s1,0x3
    80004518:	00fa07b3          	add	a5,s4,a5
    8000451c:	0007b503          	ld	a0,0(a5)
    80004520:	fe0506e3          	beqz	a0,8000450c <_Z20testConsumerProducerv+0x2fc>
    80004524:	00053783          	ld	a5,0(a0)
    80004528:	0087b783          	ld	a5,8(a5)
    8000452c:	000780e7          	jalr	a5
    80004530:	fddff06f          	j	8000450c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004534:	000b8a63          	beqz	s7,80004548 <_Z20testConsumerProducerv+0x338>
    80004538:	000bb783          	ld	a5,0(s7)
    8000453c:	0087b783          	ld	a5,8(a5)
    80004540:	000b8513          	mv	a0,s7
    80004544:	000780e7          	jalr	a5
    delete buffer;
    80004548:	000a8e63          	beqz	s5,80004564 <_Z20testConsumerProducerv+0x354>
    8000454c:	000a8513          	mv	a0,s5
    80004550:	00002097          	auipc	ra,0x2
    80004554:	870080e7          	jalr	-1936(ra) # 80005dc0 <_ZN9BufferCPPD1Ev>
    80004558:	000a8513          	mv	a0,s5
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	e10080e7          	jalr	-496(ra) # 8000236c <_ZdlPv>
    80004564:	000c0113          	mv	sp,s8
}
    80004568:	f8040113          	addi	sp,s0,-128
    8000456c:	07813083          	ld	ra,120(sp)
    80004570:	07013403          	ld	s0,112(sp)
    80004574:	06813483          	ld	s1,104(sp)
    80004578:	06013903          	ld	s2,96(sp)
    8000457c:	05813983          	ld	s3,88(sp)
    80004580:	05013a03          	ld	s4,80(sp)
    80004584:	04813a83          	ld	s5,72(sp)
    80004588:	04013b03          	ld	s6,64(sp)
    8000458c:	03813b83          	ld	s7,56(sp)
    80004590:	03013c03          	ld	s8,48(sp)
    80004594:	02813c83          	ld	s9,40(sp)
    80004598:	08010113          	addi	sp,sp,128
    8000459c:	00008067          	ret
    800045a0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800045a4:	000a8513          	mv	a0,s5
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	dc4080e7          	jalr	-572(ra) # 8000236c <_ZdlPv>
    800045b0:	00048513          	mv	a0,s1
    800045b4:	00008097          	auipc	ra,0x8
    800045b8:	6b4080e7          	jalr	1716(ra) # 8000cc68 <_Unwind_Resume>
    800045bc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800045c0:	00090513          	mv	a0,s2
    800045c4:	ffffe097          	auipc	ra,0xffffe
    800045c8:	da8080e7          	jalr	-600(ra) # 8000236c <_ZdlPv>
    800045cc:	00048513          	mv	a0,s1
    800045d0:	00008097          	auipc	ra,0x8
    800045d4:	698080e7          	jalr	1688(ra) # 8000cc68 <_Unwind_Resume>
    800045d8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800045dc:	000b8513          	mv	a0,s7
    800045e0:	ffffe097          	auipc	ra,0xffffe
    800045e4:	d8c080e7          	jalr	-628(ra) # 8000236c <_ZdlPv>
    800045e8:	00048513          	mv	a0,s1
    800045ec:	00008097          	auipc	ra,0x8
    800045f0:	67c080e7          	jalr	1660(ra) # 8000cc68 <_Unwind_Resume>
    800045f4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045f8:	00048513          	mv	a0,s1
    800045fc:	ffffe097          	auipc	ra,0xffffe
    80004600:	d70080e7          	jalr	-656(ra) # 8000236c <_ZdlPv>
    80004604:	00090513          	mv	a0,s2
    80004608:	00008097          	auipc	ra,0x8
    8000460c:	660080e7          	jalr	1632(ra) # 8000cc68 <_Unwind_Resume>
    80004610:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004614:	000c8513          	mv	a0,s9
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	d54080e7          	jalr	-684(ra) # 8000236c <_ZdlPv>
    80004620:	00048513          	mv	a0,s1
    80004624:	00008097          	auipc	ra,0x8
    80004628:	644080e7          	jalr	1604(ra) # 8000cc68 <_Unwind_Resume>

000000008000462c <_ZN8Consumer3runEv>:
    void run() override {
    8000462c:	fd010113          	addi	sp,sp,-48
    80004630:	02113423          	sd	ra,40(sp)
    80004634:	02813023          	sd	s0,32(sp)
    80004638:	00913c23          	sd	s1,24(sp)
    8000463c:	01213823          	sd	s2,16(sp)
    80004640:	01313423          	sd	s3,8(sp)
    80004644:	03010413          	addi	s0,sp,48
    80004648:	00050913          	mv	s2,a0
        int i = 0;
    8000464c:	00000993          	li	s3,0
    80004650:	0100006f          	j	80004660 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004654:	00a00513          	li	a0,10
    80004658:	ffffe097          	auipc	ra,0xffffe
    8000465c:	034080e7          	jalr	52(ra) # 8000268c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004660:	00007797          	auipc	a5,0x7
    80004664:	5007a783          	lw	a5,1280(a5) # 8000bb60 <_ZL9threadEnd>
    80004668:	04079a63          	bnez	a5,800046bc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000466c:	02093783          	ld	a5,32(s2)
    80004670:	0087b503          	ld	a0,8(a5)
    80004674:	00001097          	auipc	ra,0x1
    80004678:	638080e7          	jalr	1592(ra) # 80005cac <_ZN9BufferCPP3getEv>
            i++;
    8000467c:	0019849b          	addiw	s1,s3,1
    80004680:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004684:	0ff57513          	andi	a0,a0,255
    80004688:	ffffe097          	auipc	ra,0xffffe
    8000468c:	004080e7          	jalr	4(ra) # 8000268c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004690:	05000793          	li	a5,80
    80004694:	02f4e4bb          	remw	s1,s1,a5
    80004698:	fc0494e3          	bnez	s1,80004660 <_ZN8Consumer3runEv+0x34>
    8000469c:	fb9ff06f          	j	80004654 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800046a0:	02093783          	ld	a5,32(s2)
    800046a4:	0087b503          	ld	a0,8(a5)
    800046a8:	00001097          	auipc	ra,0x1
    800046ac:	604080e7          	jalr	1540(ra) # 80005cac <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800046b0:	0ff57513          	andi	a0,a0,255
    800046b4:	ffffe097          	auipc	ra,0xffffe
    800046b8:	fd8080e7          	jalr	-40(ra) # 8000268c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800046bc:	02093783          	ld	a5,32(s2)
    800046c0:	0087b503          	ld	a0,8(a5)
    800046c4:	00001097          	auipc	ra,0x1
    800046c8:	674080e7          	jalr	1652(ra) # 80005d38 <_ZN9BufferCPP6getCntEv>
    800046cc:	fca04ae3          	bgtz	a0,800046a0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800046d0:	02093783          	ld	a5,32(s2)
    800046d4:	0107b503          	ld	a0,16(a5)
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	ef4080e7          	jalr	-268(ra) # 800025cc <_ZN9Semaphore6signalEv>
    }
    800046e0:	02813083          	ld	ra,40(sp)
    800046e4:	02013403          	ld	s0,32(sp)
    800046e8:	01813483          	ld	s1,24(sp)
    800046ec:	01013903          	ld	s2,16(sp)
    800046f0:	00813983          	ld	s3,8(sp)
    800046f4:	03010113          	addi	sp,sp,48
    800046f8:	00008067          	ret

00000000800046fc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800046fc:	ff010113          	addi	sp,sp,-16
    80004700:	00113423          	sd	ra,8(sp)
    80004704:	00813023          	sd	s0,0(sp)
    80004708:	01010413          	addi	s0,sp,16
    8000470c:	00007797          	auipc	a5,0x7
    80004710:	1c478793          	addi	a5,a5,452 # 8000b8d0 <_ZTV8Consumer+0x10>
    80004714:	00f53023          	sd	a5,0(a0)
    80004718:	ffffe097          	auipc	ra,0xffffe
    8000471c:	bb4080e7          	jalr	-1100(ra) # 800022cc <_ZN6ThreadD1Ev>
    80004720:	00813083          	ld	ra,8(sp)
    80004724:	00013403          	ld	s0,0(sp)
    80004728:	01010113          	addi	sp,sp,16
    8000472c:	00008067          	ret

0000000080004730 <_ZN8ConsumerD0Ev>:
    80004730:	fe010113          	addi	sp,sp,-32
    80004734:	00113c23          	sd	ra,24(sp)
    80004738:	00813823          	sd	s0,16(sp)
    8000473c:	00913423          	sd	s1,8(sp)
    80004740:	02010413          	addi	s0,sp,32
    80004744:	00050493          	mv	s1,a0
    80004748:	00007797          	auipc	a5,0x7
    8000474c:	18878793          	addi	a5,a5,392 # 8000b8d0 <_ZTV8Consumer+0x10>
    80004750:	00f53023          	sd	a5,0(a0)
    80004754:	ffffe097          	auipc	ra,0xffffe
    80004758:	b78080e7          	jalr	-1160(ra) # 800022cc <_ZN6ThreadD1Ev>
    8000475c:	00048513          	mv	a0,s1
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	c0c080e7          	jalr	-1012(ra) # 8000236c <_ZdlPv>
    80004768:	01813083          	ld	ra,24(sp)
    8000476c:	01013403          	ld	s0,16(sp)
    80004770:	00813483          	ld	s1,8(sp)
    80004774:	02010113          	addi	sp,sp,32
    80004778:	00008067          	ret

000000008000477c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000477c:	ff010113          	addi	sp,sp,-16
    80004780:	00113423          	sd	ra,8(sp)
    80004784:	00813023          	sd	s0,0(sp)
    80004788:	01010413          	addi	s0,sp,16
    8000478c:	00007797          	auipc	a5,0x7
    80004790:	0f478793          	addi	a5,a5,244 # 8000b880 <_ZTV16ProducerKeyborad+0x10>
    80004794:	00f53023          	sd	a5,0(a0)
    80004798:	ffffe097          	auipc	ra,0xffffe
    8000479c:	b34080e7          	jalr	-1228(ra) # 800022cc <_ZN6ThreadD1Ev>
    800047a0:	00813083          	ld	ra,8(sp)
    800047a4:	00013403          	ld	s0,0(sp)
    800047a8:	01010113          	addi	sp,sp,16
    800047ac:	00008067          	ret

00000000800047b0 <_ZN16ProducerKeyboradD0Ev>:
    800047b0:	fe010113          	addi	sp,sp,-32
    800047b4:	00113c23          	sd	ra,24(sp)
    800047b8:	00813823          	sd	s0,16(sp)
    800047bc:	00913423          	sd	s1,8(sp)
    800047c0:	02010413          	addi	s0,sp,32
    800047c4:	00050493          	mv	s1,a0
    800047c8:	00007797          	auipc	a5,0x7
    800047cc:	0b878793          	addi	a5,a5,184 # 8000b880 <_ZTV16ProducerKeyborad+0x10>
    800047d0:	00f53023          	sd	a5,0(a0)
    800047d4:	ffffe097          	auipc	ra,0xffffe
    800047d8:	af8080e7          	jalr	-1288(ra) # 800022cc <_ZN6ThreadD1Ev>
    800047dc:	00048513          	mv	a0,s1
    800047e0:	ffffe097          	auipc	ra,0xffffe
    800047e4:	b8c080e7          	jalr	-1140(ra) # 8000236c <_ZdlPv>
    800047e8:	01813083          	ld	ra,24(sp)
    800047ec:	01013403          	ld	s0,16(sp)
    800047f0:	00813483          	ld	s1,8(sp)
    800047f4:	02010113          	addi	sp,sp,32
    800047f8:	00008067          	ret

00000000800047fc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800047fc:	ff010113          	addi	sp,sp,-16
    80004800:	00113423          	sd	ra,8(sp)
    80004804:	00813023          	sd	s0,0(sp)
    80004808:	01010413          	addi	s0,sp,16
    8000480c:	00007797          	auipc	a5,0x7
    80004810:	09c78793          	addi	a5,a5,156 # 8000b8a8 <_ZTV8Producer+0x10>
    80004814:	00f53023          	sd	a5,0(a0)
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	ab4080e7          	jalr	-1356(ra) # 800022cc <_ZN6ThreadD1Ev>
    80004820:	00813083          	ld	ra,8(sp)
    80004824:	00013403          	ld	s0,0(sp)
    80004828:	01010113          	addi	sp,sp,16
    8000482c:	00008067          	ret

0000000080004830 <_ZN8ProducerD0Ev>:
    80004830:	fe010113          	addi	sp,sp,-32
    80004834:	00113c23          	sd	ra,24(sp)
    80004838:	00813823          	sd	s0,16(sp)
    8000483c:	00913423          	sd	s1,8(sp)
    80004840:	02010413          	addi	s0,sp,32
    80004844:	00050493          	mv	s1,a0
    80004848:	00007797          	auipc	a5,0x7
    8000484c:	06078793          	addi	a5,a5,96 # 8000b8a8 <_ZTV8Producer+0x10>
    80004850:	00f53023          	sd	a5,0(a0)
    80004854:	ffffe097          	auipc	ra,0xffffe
    80004858:	a78080e7          	jalr	-1416(ra) # 800022cc <_ZN6ThreadD1Ev>
    8000485c:	00048513          	mv	a0,s1
    80004860:	ffffe097          	auipc	ra,0xffffe
    80004864:	b0c080e7          	jalr	-1268(ra) # 8000236c <_ZdlPv>
    80004868:	01813083          	ld	ra,24(sp)
    8000486c:	01013403          	ld	s0,16(sp)
    80004870:	00813483          	ld	s1,8(sp)
    80004874:	02010113          	addi	sp,sp,32
    80004878:	00008067          	ret

000000008000487c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000487c:	fe010113          	addi	sp,sp,-32
    80004880:	00113c23          	sd	ra,24(sp)
    80004884:	00813823          	sd	s0,16(sp)
    80004888:	00913423          	sd	s1,8(sp)
    8000488c:	02010413          	addi	s0,sp,32
    80004890:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	c90080e7          	jalr	-880(ra) # 80001524 <_Z4getcv>
    8000489c:	0005059b          	sext.w	a1,a0
    800048a0:	01b00793          	li	a5,27
    800048a4:	00f58c63          	beq	a1,a5,800048bc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800048a8:	0204b783          	ld	a5,32(s1)
    800048ac:	0087b503          	ld	a0,8(a5)
    800048b0:	00001097          	auipc	ra,0x1
    800048b4:	36c080e7          	jalr	876(ra) # 80005c1c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800048b8:	fddff06f          	j	80004894 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800048bc:	00100793          	li	a5,1
    800048c0:	00007717          	auipc	a4,0x7
    800048c4:	2af72023          	sw	a5,672(a4) # 8000bb60 <_ZL9threadEnd>
        td->buffer->put('!');
    800048c8:	0204b783          	ld	a5,32(s1)
    800048cc:	02100593          	li	a1,33
    800048d0:	0087b503          	ld	a0,8(a5)
    800048d4:	00001097          	auipc	ra,0x1
    800048d8:	348080e7          	jalr	840(ra) # 80005c1c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800048dc:	0204b783          	ld	a5,32(s1)
    800048e0:	0107b503          	ld	a0,16(a5)
    800048e4:	ffffe097          	auipc	ra,0xffffe
    800048e8:	ce8080e7          	jalr	-792(ra) # 800025cc <_ZN9Semaphore6signalEv>
    }
    800048ec:	01813083          	ld	ra,24(sp)
    800048f0:	01013403          	ld	s0,16(sp)
    800048f4:	00813483          	ld	s1,8(sp)
    800048f8:	02010113          	addi	sp,sp,32
    800048fc:	00008067          	ret

0000000080004900 <_ZN8Producer3runEv>:
    void run() override {
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00113c23          	sd	ra,24(sp)
    80004908:	00813823          	sd	s0,16(sp)
    8000490c:	00913423          	sd	s1,8(sp)
    80004910:	01213023          	sd	s2,0(sp)
    80004914:	02010413          	addi	s0,sp,32
    80004918:	00050493          	mv	s1,a0
        int i = 0;
    8000491c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004920:	00007797          	auipc	a5,0x7
    80004924:	2407a783          	lw	a5,576(a5) # 8000bb60 <_ZL9threadEnd>
    80004928:	04079263          	bnez	a5,8000496c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    8000492c:	0204b783          	ld	a5,32(s1)
    80004930:	0007a583          	lw	a1,0(a5)
    80004934:	0305859b          	addiw	a1,a1,48
    80004938:	0087b503          	ld	a0,8(a5)
    8000493c:	00001097          	auipc	ra,0x1
    80004940:	2e0080e7          	jalr	736(ra) # 80005c1c <_ZN9BufferCPP3putEi>
            i++;
    80004944:	0019071b          	addiw	a4,s2,1
    80004948:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    8000494c:	0204b783          	ld	a5,32(s1)
    80004950:	0007a783          	lw	a5,0(a5)
    80004954:	00e787bb          	addw	a5,a5,a4
    80004958:	00500513          	li	a0,5
    8000495c:	02a7e53b          	remw	a0,a5,a0
    80004960:	ffffe097          	auipc	ra,0xffffe
    80004964:	b88080e7          	jalr	-1144(ra) # 800024e8 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004968:	fb9ff06f          	j	80004920 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000496c:	0204b783          	ld	a5,32(s1)
    80004970:	0107b503          	ld	a0,16(a5)
    80004974:	ffffe097          	auipc	ra,0xffffe
    80004978:	c58080e7          	jalr	-936(ra) # 800025cc <_ZN9Semaphore6signalEv>
    }
    8000497c:	01813083          	ld	ra,24(sp)
    80004980:	01013403          	ld	s0,16(sp)
    80004984:	00813483          	ld	s1,8(sp)
    80004988:	00013903          	ld	s2,0(sp)
    8000498c:	02010113          	addi	sp,sp,32
    80004990:	00008067          	ret

0000000080004994 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004994:	fe010113          	addi	sp,sp,-32
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00813823          	sd	s0,16(sp)
    800049a0:	00913423          	sd	s1,8(sp)
    800049a4:	01213023          	sd	s2,0(sp)
    800049a8:	02010413          	addi	s0,sp,32
    800049ac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800049b0:	00100793          	li	a5,1
    800049b4:	02a7f863          	bgeu	a5,a0,800049e4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800049b8:	00a00793          	li	a5,10
    800049bc:	02f577b3          	remu	a5,a0,a5
    800049c0:	02078e63          	beqz	a5,800049fc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800049c4:	fff48513          	addi	a0,s1,-1
    800049c8:	00000097          	auipc	ra,0x0
    800049cc:	fcc080e7          	jalr	-52(ra) # 80004994 <_ZL9fibonaccim>
    800049d0:	00050913          	mv	s2,a0
    800049d4:	ffe48513          	addi	a0,s1,-2
    800049d8:	00000097          	auipc	ra,0x0
    800049dc:	fbc080e7          	jalr	-68(ra) # 80004994 <_ZL9fibonaccim>
    800049e0:	00a90533          	add	a0,s2,a0
}
    800049e4:	01813083          	ld	ra,24(sp)
    800049e8:	01013403          	ld	s0,16(sp)
    800049ec:	00813483          	ld	s1,8(sp)
    800049f0:	00013903          	ld	s2,0(sp)
    800049f4:	02010113          	addi	sp,sp,32
    800049f8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	9e8080e7          	jalr	-1560(ra) # 800013e4 <_Z15thread_dispatchv>
    80004a04:	fc1ff06f          	j	800049c4 <_ZL9fibonaccim+0x30>

0000000080004a08 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004a08:	fe010113          	addi	sp,sp,-32
    80004a0c:	00113c23          	sd	ra,24(sp)
    80004a10:	00813823          	sd	s0,16(sp)
    80004a14:	00913423          	sd	s1,8(sp)
    80004a18:	01213023          	sd	s2,0(sp)
    80004a1c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004a20:	00a00493          	li	s1,10
    80004a24:	0400006f          	j	80004a64 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a28:	00005517          	auipc	a0,0x5
    80004a2c:	85050513          	addi	a0,a0,-1968 # 80009278 <CONSOLE_STATUS+0x268>
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	dc8080e7          	jalr	-568(ra) # 800057f8 <_Z11printStringPKc>
    80004a38:	00000613          	li	a2,0
    80004a3c:	00a00593          	li	a1,10
    80004a40:	00048513          	mv	a0,s1
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	f64080e7          	jalr	-156(ra) # 800059a8 <_Z8printIntiii>
    80004a4c:	00005517          	auipc	a0,0x5
    80004a50:	a1c50513          	addi	a0,a0,-1508 # 80009468 <CONSOLE_STATUS+0x458>
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	da4080e7          	jalr	-604(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004a5c:	0014849b          	addiw	s1,s1,1
    80004a60:	0ff4f493          	andi	s1,s1,255
    80004a64:	00c00793          	li	a5,12
    80004a68:	fc97f0e3          	bgeu	a5,s1,80004a28 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004a6c:	00005517          	auipc	a0,0x5
    80004a70:	81450513          	addi	a0,a0,-2028 # 80009280 <CONSOLE_STATUS+0x270>
    80004a74:	00001097          	auipc	ra,0x1
    80004a78:	d84080e7          	jalr	-636(ra) # 800057f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004a7c:	00500313          	li	t1,5
    thread_dispatch();
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	964080e7          	jalr	-1692(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004a88:	01000513          	li	a0,16
    80004a8c:	00000097          	auipc	ra,0x0
    80004a90:	f08080e7          	jalr	-248(ra) # 80004994 <_ZL9fibonaccim>
    80004a94:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a98:	00004517          	auipc	a0,0x4
    80004a9c:	7f850513          	addi	a0,a0,2040 # 80009290 <CONSOLE_STATUS+0x280>
    80004aa0:	00001097          	auipc	ra,0x1
    80004aa4:	d58080e7          	jalr	-680(ra) # 800057f8 <_Z11printStringPKc>
    80004aa8:	00000613          	li	a2,0
    80004aac:	00a00593          	li	a1,10
    80004ab0:	0009051b          	sext.w	a0,s2
    80004ab4:	00001097          	auipc	ra,0x1
    80004ab8:	ef4080e7          	jalr	-268(ra) # 800059a8 <_Z8printIntiii>
    80004abc:	00005517          	auipc	a0,0x5
    80004ac0:	9ac50513          	addi	a0,a0,-1620 # 80009468 <CONSOLE_STATUS+0x458>
    80004ac4:	00001097          	auipc	ra,0x1
    80004ac8:	d34080e7          	jalr	-716(ra) # 800057f8 <_Z11printStringPKc>
    80004acc:	0400006f          	j	80004b0c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ad0:	00004517          	auipc	a0,0x4
    80004ad4:	7a850513          	addi	a0,a0,1960 # 80009278 <CONSOLE_STATUS+0x268>
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	d20080e7          	jalr	-736(ra) # 800057f8 <_Z11printStringPKc>
    80004ae0:	00000613          	li	a2,0
    80004ae4:	00a00593          	li	a1,10
    80004ae8:	00048513          	mv	a0,s1
    80004aec:	00001097          	auipc	ra,0x1
    80004af0:	ebc080e7          	jalr	-324(ra) # 800059a8 <_Z8printIntiii>
    80004af4:	00005517          	auipc	a0,0x5
    80004af8:	97450513          	addi	a0,a0,-1676 # 80009468 <CONSOLE_STATUS+0x458>
    80004afc:	00001097          	auipc	ra,0x1
    80004b00:	cfc080e7          	jalr	-772(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004b04:	0014849b          	addiw	s1,s1,1
    80004b08:	0ff4f493          	andi	s1,s1,255
    80004b0c:	00f00793          	li	a5,15
    80004b10:	fc97f0e3          	bgeu	a5,s1,80004ad0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004b14:	00004517          	auipc	a0,0x4
    80004b18:	78c50513          	addi	a0,a0,1932 # 800092a0 <CONSOLE_STATUS+0x290>
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	cdc080e7          	jalr	-804(ra) # 800057f8 <_Z11printStringPKc>
    finishedD = true;
    80004b24:	00100793          	li	a5,1
    80004b28:	00007717          	auipc	a4,0x7
    80004b2c:	04f70423          	sb	a5,72(a4) # 8000bb70 <_ZL9finishedD>
    thread_dispatch();
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	8b4080e7          	jalr	-1868(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80004b38:	01813083          	ld	ra,24(sp)
    80004b3c:	01013403          	ld	s0,16(sp)
    80004b40:	00813483          	ld	s1,8(sp)
    80004b44:	00013903          	ld	s2,0(sp)
    80004b48:	02010113          	addi	sp,sp,32
    80004b4c:	00008067          	ret

0000000080004b50 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004b50:	fe010113          	addi	sp,sp,-32
    80004b54:	00113c23          	sd	ra,24(sp)
    80004b58:	00813823          	sd	s0,16(sp)
    80004b5c:	00913423          	sd	s1,8(sp)
    80004b60:	01213023          	sd	s2,0(sp)
    80004b64:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004b68:	00000493          	li	s1,0
    80004b6c:	0400006f          	j	80004bac <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004b70:	00004517          	auipc	a0,0x4
    80004b74:	6d850513          	addi	a0,a0,1752 # 80009248 <CONSOLE_STATUS+0x238>
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	c80080e7          	jalr	-896(ra) # 800057f8 <_Z11printStringPKc>
    80004b80:	00000613          	li	a2,0
    80004b84:	00a00593          	li	a1,10
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	e1c080e7          	jalr	-484(ra) # 800059a8 <_Z8printIntiii>
    80004b94:	00005517          	auipc	a0,0x5
    80004b98:	8d450513          	addi	a0,a0,-1836 # 80009468 <CONSOLE_STATUS+0x458>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	c5c080e7          	jalr	-932(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ba4:	0014849b          	addiw	s1,s1,1
    80004ba8:	0ff4f493          	andi	s1,s1,255
    80004bac:	00200793          	li	a5,2
    80004bb0:	fc97f0e3          	bgeu	a5,s1,80004b70 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004bb4:	00004517          	auipc	a0,0x4
    80004bb8:	69c50513          	addi	a0,a0,1692 # 80009250 <CONSOLE_STATUS+0x240>
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	c3c080e7          	jalr	-964(ra) # 800057f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004bc4:	00700313          	li	t1,7
    thread_dispatch();
    80004bc8:	ffffd097          	auipc	ra,0xffffd
    80004bcc:	81c080e7          	jalr	-2020(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004bd0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004bd4:	00004517          	auipc	a0,0x4
    80004bd8:	68c50513          	addi	a0,a0,1676 # 80009260 <CONSOLE_STATUS+0x250>
    80004bdc:	00001097          	auipc	ra,0x1
    80004be0:	c1c080e7          	jalr	-996(ra) # 800057f8 <_Z11printStringPKc>
    80004be4:	00000613          	li	a2,0
    80004be8:	00a00593          	li	a1,10
    80004bec:	0009051b          	sext.w	a0,s2
    80004bf0:	00001097          	auipc	ra,0x1
    80004bf4:	db8080e7          	jalr	-584(ra) # 800059a8 <_Z8printIntiii>
    80004bf8:	00005517          	auipc	a0,0x5
    80004bfc:	87050513          	addi	a0,a0,-1936 # 80009468 <CONSOLE_STATUS+0x458>
    80004c00:	00001097          	auipc	ra,0x1
    80004c04:	bf8080e7          	jalr	-1032(ra) # 800057f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004c08:	00c00513          	li	a0,12
    80004c0c:	00000097          	auipc	ra,0x0
    80004c10:	d88080e7          	jalr	-632(ra) # 80004994 <_ZL9fibonaccim>
    80004c14:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004c18:	00004517          	auipc	a0,0x4
    80004c1c:	65050513          	addi	a0,a0,1616 # 80009268 <CONSOLE_STATUS+0x258>
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	bd8080e7          	jalr	-1064(ra) # 800057f8 <_Z11printStringPKc>
    80004c28:	00000613          	li	a2,0
    80004c2c:	00a00593          	li	a1,10
    80004c30:	0009051b          	sext.w	a0,s2
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	d74080e7          	jalr	-652(ra) # 800059a8 <_Z8printIntiii>
    80004c3c:	00005517          	auipc	a0,0x5
    80004c40:	82c50513          	addi	a0,a0,-2004 # 80009468 <CONSOLE_STATUS+0x458>
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	bb4080e7          	jalr	-1100(ra) # 800057f8 <_Z11printStringPKc>
    80004c4c:	0400006f          	j	80004c8c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004c50:	00004517          	auipc	a0,0x4
    80004c54:	5f850513          	addi	a0,a0,1528 # 80009248 <CONSOLE_STATUS+0x238>
    80004c58:	00001097          	auipc	ra,0x1
    80004c5c:	ba0080e7          	jalr	-1120(ra) # 800057f8 <_Z11printStringPKc>
    80004c60:	00000613          	li	a2,0
    80004c64:	00a00593          	li	a1,10
    80004c68:	00048513          	mv	a0,s1
    80004c6c:	00001097          	auipc	ra,0x1
    80004c70:	d3c080e7          	jalr	-708(ra) # 800059a8 <_Z8printIntiii>
    80004c74:	00004517          	auipc	a0,0x4
    80004c78:	7f450513          	addi	a0,a0,2036 # 80009468 <CONSOLE_STATUS+0x458>
    80004c7c:	00001097          	auipc	ra,0x1
    80004c80:	b7c080e7          	jalr	-1156(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c84:	0014849b          	addiw	s1,s1,1
    80004c88:	0ff4f493          	andi	s1,s1,255
    80004c8c:	00500793          	li	a5,5
    80004c90:	fc97f0e3          	bgeu	a5,s1,80004c50 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004c94:	00004517          	auipc	a0,0x4
    80004c98:	58c50513          	addi	a0,a0,1420 # 80009220 <CONSOLE_STATUS+0x210>
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	b5c080e7          	jalr	-1188(ra) # 800057f8 <_Z11printStringPKc>
    finishedC = true;
    80004ca4:	00100793          	li	a5,1
    80004ca8:	00007717          	auipc	a4,0x7
    80004cac:	ecf704a3          	sb	a5,-311(a4) # 8000bb71 <_ZL9finishedC>
    thread_dispatch();
    80004cb0:	ffffc097          	auipc	ra,0xffffc
    80004cb4:	734080e7          	jalr	1844(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80004cb8:	01813083          	ld	ra,24(sp)
    80004cbc:	01013403          	ld	s0,16(sp)
    80004cc0:	00813483          	ld	s1,8(sp)
    80004cc4:	00013903          	ld	s2,0(sp)
    80004cc8:	02010113          	addi	sp,sp,32
    80004ccc:	00008067          	ret

0000000080004cd0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004cd0:	fe010113          	addi	sp,sp,-32
    80004cd4:	00113c23          	sd	ra,24(sp)
    80004cd8:	00813823          	sd	s0,16(sp)
    80004cdc:	00913423          	sd	s1,8(sp)
    80004ce0:	01213023          	sd	s2,0(sp)
    80004ce4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004ce8:	00000913          	li	s2,0
    80004cec:	0380006f          	j	80004d24 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004cf0:	ffffc097          	auipc	ra,0xffffc
    80004cf4:	6f4080e7          	jalr	1780(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004cf8:	00148493          	addi	s1,s1,1
    80004cfc:	000027b7          	lui	a5,0x2
    80004d00:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d04:	0097ee63          	bltu	a5,s1,80004d20 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d08:	00000713          	li	a4,0
    80004d0c:	000077b7          	lui	a5,0x7
    80004d10:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d14:	fce7eee3          	bltu	a5,a4,80004cf0 <_ZL11workerBodyBPv+0x20>
    80004d18:	00170713          	addi	a4,a4,1
    80004d1c:	ff1ff06f          	j	80004d0c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004d20:	00190913          	addi	s2,s2,1
    80004d24:	00f00793          	li	a5,15
    80004d28:	0527e063          	bltu	a5,s2,80004d68 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004d2c:	00004517          	auipc	a0,0x4
    80004d30:	50450513          	addi	a0,a0,1284 # 80009230 <CONSOLE_STATUS+0x220>
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	ac4080e7          	jalr	-1340(ra) # 800057f8 <_Z11printStringPKc>
    80004d3c:	00000613          	li	a2,0
    80004d40:	00a00593          	li	a1,10
    80004d44:	0009051b          	sext.w	a0,s2
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	c60080e7          	jalr	-928(ra) # 800059a8 <_Z8printIntiii>
    80004d50:	00004517          	auipc	a0,0x4
    80004d54:	71850513          	addi	a0,a0,1816 # 80009468 <CONSOLE_STATUS+0x458>
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	aa0080e7          	jalr	-1376(ra) # 800057f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d60:	00000493          	li	s1,0
    80004d64:	f99ff06f          	j	80004cfc <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004d68:	00004517          	auipc	a0,0x4
    80004d6c:	4d050513          	addi	a0,a0,1232 # 80009238 <CONSOLE_STATUS+0x228>
    80004d70:	00001097          	auipc	ra,0x1
    80004d74:	a88080e7          	jalr	-1400(ra) # 800057f8 <_Z11printStringPKc>
    finishedB = true;
    80004d78:	00100793          	li	a5,1
    80004d7c:	00007717          	auipc	a4,0x7
    80004d80:	def70b23          	sb	a5,-522(a4) # 8000bb72 <_ZL9finishedB>
    thread_dispatch();
    80004d84:	ffffc097          	auipc	ra,0xffffc
    80004d88:	660080e7          	jalr	1632(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80004d8c:	01813083          	ld	ra,24(sp)
    80004d90:	01013403          	ld	s0,16(sp)
    80004d94:	00813483          	ld	s1,8(sp)
    80004d98:	00013903          	ld	s2,0(sp)
    80004d9c:	02010113          	addi	sp,sp,32
    80004da0:	00008067          	ret

0000000080004da4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004da4:	fe010113          	addi	sp,sp,-32
    80004da8:	00113c23          	sd	ra,24(sp)
    80004dac:	00813823          	sd	s0,16(sp)
    80004db0:	00913423          	sd	s1,8(sp)
    80004db4:	01213023          	sd	s2,0(sp)
    80004db8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004dbc:	00000913          	li	s2,0
    80004dc0:	0380006f          	j	80004df8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004dc4:	ffffc097          	auipc	ra,0xffffc
    80004dc8:	620080e7          	jalr	1568(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004dcc:	00148493          	addi	s1,s1,1
    80004dd0:	000027b7          	lui	a5,0x2
    80004dd4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004dd8:	0097ee63          	bltu	a5,s1,80004df4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ddc:	00000713          	li	a4,0
    80004de0:	000077b7          	lui	a5,0x7
    80004de4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004de8:	fce7eee3          	bltu	a5,a4,80004dc4 <_ZL11workerBodyAPv+0x20>
    80004dec:	00170713          	addi	a4,a4,1
    80004df0:	ff1ff06f          	j	80004de0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004df4:	00190913          	addi	s2,s2,1
    80004df8:	00900793          	li	a5,9
    80004dfc:	0527e063          	bltu	a5,s2,80004e3c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004e00:	00004517          	auipc	a0,0x4
    80004e04:	41850513          	addi	a0,a0,1048 # 80009218 <CONSOLE_STATUS+0x208>
    80004e08:	00001097          	auipc	ra,0x1
    80004e0c:	9f0080e7          	jalr	-1552(ra) # 800057f8 <_Z11printStringPKc>
    80004e10:	00000613          	li	a2,0
    80004e14:	00a00593          	li	a1,10
    80004e18:	0009051b          	sext.w	a0,s2
    80004e1c:	00001097          	auipc	ra,0x1
    80004e20:	b8c080e7          	jalr	-1140(ra) # 800059a8 <_Z8printIntiii>
    80004e24:	00004517          	auipc	a0,0x4
    80004e28:	64450513          	addi	a0,a0,1604 # 80009468 <CONSOLE_STATUS+0x458>
    80004e2c:	00001097          	auipc	ra,0x1
    80004e30:	9cc080e7          	jalr	-1588(ra) # 800057f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e34:	00000493          	li	s1,0
    80004e38:	f99ff06f          	j	80004dd0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004e3c:	00004517          	auipc	a0,0x4
    80004e40:	3e450513          	addi	a0,a0,996 # 80009220 <CONSOLE_STATUS+0x210>
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	9b4080e7          	jalr	-1612(ra) # 800057f8 <_Z11printStringPKc>
    finishedA = true;
    80004e4c:	00100793          	li	a5,1
    80004e50:	00007717          	auipc	a4,0x7
    80004e54:	d2f701a3          	sb	a5,-733(a4) # 8000bb73 <_ZL9finishedA>
}
    80004e58:	01813083          	ld	ra,24(sp)
    80004e5c:	01013403          	ld	s0,16(sp)
    80004e60:	00813483          	ld	s1,8(sp)
    80004e64:	00013903          	ld	s2,0(sp)
    80004e68:	02010113          	addi	sp,sp,32
    80004e6c:	00008067          	ret

0000000080004e70 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004e70:	fd010113          	addi	sp,sp,-48
    80004e74:	02113423          	sd	ra,40(sp)
    80004e78:	02813023          	sd	s0,32(sp)
    80004e7c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004e80:	00000613          	li	a2,0
    80004e84:	00000597          	auipc	a1,0x0
    80004e88:	f2058593          	addi	a1,a1,-224 # 80004da4 <_ZL11workerBodyAPv>
    80004e8c:	fd040513          	addi	a0,s0,-48
    80004e90:	ffffc097          	auipc	ra,0xffffc
    80004e94:	498080e7          	jalr	1176(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004e98:	00004517          	auipc	a0,0x4
    80004e9c:	41850513          	addi	a0,a0,1048 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	958080e7          	jalr	-1704(ra) # 800057f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ea8:	00000613          	li	a2,0
    80004eac:	00000597          	auipc	a1,0x0
    80004eb0:	e2458593          	addi	a1,a1,-476 # 80004cd0 <_ZL11workerBodyBPv>
    80004eb4:	fd840513          	addi	a0,s0,-40
    80004eb8:	ffffc097          	auipc	ra,0xffffc
    80004ebc:	470080e7          	jalr	1136(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004ec0:	00004517          	auipc	a0,0x4
    80004ec4:	40850513          	addi	a0,a0,1032 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004ec8:	00001097          	auipc	ra,0x1
    80004ecc:	930080e7          	jalr	-1744(ra) # 800057f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004ed0:	00000613          	li	a2,0
    80004ed4:	00000597          	auipc	a1,0x0
    80004ed8:	c7c58593          	addi	a1,a1,-900 # 80004b50 <_ZL11workerBodyCPv>
    80004edc:	fe040513          	addi	a0,s0,-32
    80004ee0:	ffffc097          	auipc	ra,0xffffc
    80004ee4:	448080e7          	jalr	1096(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004ee8:	00004517          	auipc	a0,0x4
    80004eec:	3f850513          	addi	a0,a0,1016 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004ef0:	00001097          	auipc	ra,0x1
    80004ef4:	908080e7          	jalr	-1784(ra) # 800057f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004ef8:	00000613          	li	a2,0
    80004efc:	00000597          	auipc	a1,0x0
    80004f00:	b0c58593          	addi	a1,a1,-1268 # 80004a08 <_ZL11workerBodyDPv>
    80004f04:	fe840513          	addi	a0,s0,-24
    80004f08:	ffffc097          	auipc	ra,0xffffc
    80004f0c:	420080e7          	jalr	1056(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004f10:	00004517          	auipc	a0,0x4
    80004f14:	3e850513          	addi	a0,a0,1000 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	8e0080e7          	jalr	-1824(ra) # 800057f8 <_Z11printStringPKc>
    80004f20:	00c0006f          	j	80004f2c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004f24:	ffffc097          	auipc	ra,0xffffc
    80004f28:	4c0080e7          	jalr	1216(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f2c:	00007797          	auipc	a5,0x7
    80004f30:	c477c783          	lbu	a5,-953(a5) # 8000bb73 <_ZL9finishedA>
    80004f34:	fe0788e3          	beqz	a5,80004f24 <_Z18Threads_C_API_testv+0xb4>
    80004f38:	00007797          	auipc	a5,0x7
    80004f3c:	c3a7c783          	lbu	a5,-966(a5) # 8000bb72 <_ZL9finishedB>
    80004f40:	fe0782e3          	beqz	a5,80004f24 <_Z18Threads_C_API_testv+0xb4>
    80004f44:	00007797          	auipc	a5,0x7
    80004f48:	c2d7c783          	lbu	a5,-979(a5) # 8000bb71 <_ZL9finishedC>
    80004f4c:	fc078ce3          	beqz	a5,80004f24 <_Z18Threads_C_API_testv+0xb4>
    80004f50:	00007797          	auipc	a5,0x7
    80004f54:	c207c783          	lbu	a5,-992(a5) # 8000bb70 <_ZL9finishedD>
    80004f58:	fc0786e3          	beqz	a5,80004f24 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004f5c:	02813083          	ld	ra,40(sp)
    80004f60:	02013403          	ld	s0,32(sp)
    80004f64:	03010113          	addi	sp,sp,48
    80004f68:	00008067          	ret

0000000080004f6c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004f6c:	fd010113          	addi	sp,sp,-48
    80004f70:	02113423          	sd	ra,40(sp)
    80004f74:	02813023          	sd	s0,32(sp)
    80004f78:	00913c23          	sd	s1,24(sp)
    80004f7c:	01213823          	sd	s2,16(sp)
    80004f80:	01313423          	sd	s3,8(sp)
    80004f84:	03010413          	addi	s0,sp,48
    80004f88:	00050993          	mv	s3,a0
    80004f8c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004f90:	00000913          	li	s2,0
    80004f94:	00c0006f          	j	80004fa0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f98:	ffffd097          	auipc	ra,0xffffd
    80004f9c:	4f4080e7          	jalr	1268(ra) # 8000248c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004fa0:	ffffc097          	auipc	ra,0xffffc
    80004fa4:	584080e7          	jalr	1412(ra) # 80001524 <_Z4getcv>
    80004fa8:	0005059b          	sext.w	a1,a0
    80004fac:	01b00793          	li	a5,27
    80004fb0:	02f58a63          	beq	a1,a5,80004fe4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004fb4:	0084b503          	ld	a0,8(s1)
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	c64080e7          	jalr	-924(ra) # 80005c1c <_ZN9BufferCPP3putEi>
        i++;
    80004fc0:	0019071b          	addiw	a4,s2,1
    80004fc4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004fc8:	0004a683          	lw	a3,0(s1)
    80004fcc:	0026979b          	slliw	a5,a3,0x2
    80004fd0:	00d787bb          	addw	a5,a5,a3
    80004fd4:	0017979b          	slliw	a5,a5,0x1
    80004fd8:	02f767bb          	remw	a5,a4,a5
    80004fdc:	fc0792e3          	bnez	a5,80004fa0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004fe0:	fb9ff06f          	j	80004f98 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004fe4:	00100793          	li	a5,1
    80004fe8:	00007717          	auipc	a4,0x7
    80004fec:	b8f72823          	sw	a5,-1136(a4) # 8000bb78 <_ZL9threadEnd>
    td->buffer->put('!');
    80004ff0:	0209b783          	ld	a5,32(s3)
    80004ff4:	02100593          	li	a1,33
    80004ff8:	0087b503          	ld	a0,8(a5)
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	c20080e7          	jalr	-992(ra) # 80005c1c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005004:	0104b503          	ld	a0,16(s1)
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	5c4080e7          	jalr	1476(ra) # 800025cc <_ZN9Semaphore6signalEv>
}
    80005010:	02813083          	ld	ra,40(sp)
    80005014:	02013403          	ld	s0,32(sp)
    80005018:	01813483          	ld	s1,24(sp)
    8000501c:	01013903          	ld	s2,16(sp)
    80005020:	00813983          	ld	s3,8(sp)
    80005024:	03010113          	addi	sp,sp,48
    80005028:	00008067          	ret

000000008000502c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000502c:	fe010113          	addi	sp,sp,-32
    80005030:	00113c23          	sd	ra,24(sp)
    80005034:	00813823          	sd	s0,16(sp)
    80005038:	00913423          	sd	s1,8(sp)
    8000503c:	01213023          	sd	s2,0(sp)
    80005040:	02010413          	addi	s0,sp,32
    80005044:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005048:	00000913          	li	s2,0
    8000504c:	00c0006f          	j	80005058 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005050:	ffffd097          	auipc	ra,0xffffd
    80005054:	43c080e7          	jalr	1084(ra) # 8000248c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005058:	00007797          	auipc	a5,0x7
    8000505c:	b207a783          	lw	a5,-1248(a5) # 8000bb78 <_ZL9threadEnd>
    80005060:	02079e63          	bnez	a5,8000509c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005064:	0004a583          	lw	a1,0(s1)
    80005068:	0305859b          	addiw	a1,a1,48
    8000506c:	0084b503          	ld	a0,8(s1)
    80005070:	00001097          	auipc	ra,0x1
    80005074:	bac080e7          	jalr	-1108(ra) # 80005c1c <_ZN9BufferCPP3putEi>
        i++;
    80005078:	0019071b          	addiw	a4,s2,1
    8000507c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005080:	0004a683          	lw	a3,0(s1)
    80005084:	0026979b          	slliw	a5,a3,0x2
    80005088:	00d787bb          	addw	a5,a5,a3
    8000508c:	0017979b          	slliw	a5,a5,0x1
    80005090:	02f767bb          	remw	a5,a4,a5
    80005094:	fc0792e3          	bnez	a5,80005058 <_ZN12ProducerSync8producerEPv+0x2c>
    80005098:	fb9ff06f          	j	80005050 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000509c:	0104b503          	ld	a0,16(s1)
    800050a0:	ffffd097          	auipc	ra,0xffffd
    800050a4:	52c080e7          	jalr	1324(ra) # 800025cc <_ZN9Semaphore6signalEv>
}
    800050a8:	01813083          	ld	ra,24(sp)
    800050ac:	01013403          	ld	s0,16(sp)
    800050b0:	00813483          	ld	s1,8(sp)
    800050b4:	00013903          	ld	s2,0(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret

00000000800050c0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800050c0:	fd010113          	addi	sp,sp,-48
    800050c4:	02113423          	sd	ra,40(sp)
    800050c8:	02813023          	sd	s0,32(sp)
    800050cc:	00913c23          	sd	s1,24(sp)
    800050d0:	01213823          	sd	s2,16(sp)
    800050d4:	01313423          	sd	s3,8(sp)
    800050d8:	01413023          	sd	s4,0(sp)
    800050dc:	03010413          	addi	s0,sp,48
    800050e0:	00050993          	mv	s3,a0
    800050e4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800050e8:	00000a13          	li	s4,0
    800050ec:	01c0006f          	j	80005108 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	39c080e7          	jalr	924(ra) # 8000248c <_ZN6Thread8dispatchEv>
    800050f8:	0500006f          	j	80005148 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800050fc:	00a00513          	li	a0,10
    80005100:	ffffc097          	auipc	ra,0xffffc
    80005104:	458080e7          	jalr	1112(ra) # 80001558 <_Z4putcc>
    while (!threadEnd) {
    80005108:	00007797          	auipc	a5,0x7
    8000510c:	a707a783          	lw	a5,-1424(a5) # 8000bb78 <_ZL9threadEnd>
    80005110:	06079263          	bnez	a5,80005174 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005114:	00893503          	ld	a0,8(s2)
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	b94080e7          	jalr	-1132(ra) # 80005cac <_ZN9BufferCPP3getEv>
        i++;
    80005120:	001a049b          	addiw	s1,s4,1
    80005124:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005128:	0ff57513          	andi	a0,a0,255
    8000512c:	ffffc097          	auipc	ra,0xffffc
    80005130:	42c080e7          	jalr	1068(ra) # 80001558 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005134:	00092703          	lw	a4,0(s2)
    80005138:	0027179b          	slliw	a5,a4,0x2
    8000513c:	00e787bb          	addw	a5,a5,a4
    80005140:	02f4e7bb          	remw	a5,s1,a5
    80005144:	fa0786e3          	beqz	a5,800050f0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005148:	05000793          	li	a5,80
    8000514c:	02f4e4bb          	remw	s1,s1,a5
    80005150:	fa049ce3          	bnez	s1,80005108 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005154:	fa9ff06f          	j	800050fc <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005158:	0209b783          	ld	a5,32(s3)
    8000515c:	0087b503          	ld	a0,8(a5)
    80005160:	00001097          	auipc	ra,0x1
    80005164:	b4c080e7          	jalr	-1204(ra) # 80005cac <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005168:	0ff57513          	andi	a0,a0,255
    8000516c:	ffffd097          	auipc	ra,0xffffd
    80005170:	520080e7          	jalr	1312(ra) # 8000268c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005174:	0209b783          	ld	a5,32(s3)
    80005178:	0087b503          	ld	a0,8(a5)
    8000517c:	00001097          	auipc	ra,0x1
    80005180:	bbc080e7          	jalr	-1092(ra) # 80005d38 <_ZN9BufferCPP6getCntEv>
    80005184:	fca04ae3          	bgtz	a0,80005158 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005188:	01093503          	ld	a0,16(s2)
    8000518c:	ffffd097          	auipc	ra,0xffffd
    80005190:	440080e7          	jalr	1088(ra) # 800025cc <_ZN9Semaphore6signalEv>
}
    80005194:	02813083          	ld	ra,40(sp)
    80005198:	02013403          	ld	s0,32(sp)
    8000519c:	01813483          	ld	s1,24(sp)
    800051a0:	01013903          	ld	s2,16(sp)
    800051a4:	00813983          	ld	s3,8(sp)
    800051a8:	00013a03          	ld	s4,0(sp)
    800051ac:	03010113          	addi	sp,sp,48
    800051b0:	00008067          	ret

00000000800051b4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800051b4:	f8010113          	addi	sp,sp,-128
    800051b8:	06113c23          	sd	ra,120(sp)
    800051bc:	06813823          	sd	s0,112(sp)
    800051c0:	06913423          	sd	s1,104(sp)
    800051c4:	07213023          	sd	s2,96(sp)
    800051c8:	05313c23          	sd	s3,88(sp)
    800051cc:	05413823          	sd	s4,80(sp)
    800051d0:	05513423          	sd	s5,72(sp)
    800051d4:	05613023          	sd	s6,64(sp)
    800051d8:	03713c23          	sd	s7,56(sp)
    800051dc:	03813823          	sd	s8,48(sp)
    800051e0:	03913423          	sd	s9,40(sp)
    800051e4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800051e8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800051ec:	00004517          	auipc	a0,0x4
    800051f0:	f4450513          	addi	a0,a0,-188 # 80009130 <CONSOLE_STATUS+0x120>
    800051f4:	00000097          	auipc	ra,0x0
    800051f8:	604080e7          	jalr	1540(ra) # 800057f8 <_Z11printStringPKc>
    getString(input, 30);
    800051fc:	01e00593          	li	a1,30
    80005200:	f8040493          	addi	s1,s0,-128
    80005204:	00048513          	mv	a0,s1
    80005208:	00000097          	auipc	ra,0x0
    8000520c:	678080e7          	jalr	1656(ra) # 80005880 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005210:	00048513          	mv	a0,s1
    80005214:	00000097          	auipc	ra,0x0
    80005218:	744080e7          	jalr	1860(ra) # 80005958 <_Z11stringToIntPKc>
    8000521c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005220:	00004517          	auipc	a0,0x4
    80005224:	f3050513          	addi	a0,a0,-208 # 80009150 <CONSOLE_STATUS+0x140>
    80005228:	00000097          	auipc	ra,0x0
    8000522c:	5d0080e7          	jalr	1488(ra) # 800057f8 <_Z11printStringPKc>
    getString(input, 30);
    80005230:	01e00593          	li	a1,30
    80005234:	00048513          	mv	a0,s1
    80005238:	00000097          	auipc	ra,0x0
    8000523c:	648080e7          	jalr	1608(ra) # 80005880 <_Z9getStringPci>
    n = stringToInt(input);
    80005240:	00048513          	mv	a0,s1
    80005244:	00000097          	auipc	ra,0x0
    80005248:	714080e7          	jalr	1812(ra) # 80005958 <_Z11stringToIntPKc>
    8000524c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005250:	00004517          	auipc	a0,0x4
    80005254:	f2050513          	addi	a0,a0,-224 # 80009170 <CONSOLE_STATUS+0x160>
    80005258:	00000097          	auipc	ra,0x0
    8000525c:	5a0080e7          	jalr	1440(ra) # 800057f8 <_Z11printStringPKc>
    80005260:	00000613          	li	a2,0
    80005264:	00a00593          	li	a1,10
    80005268:	00090513          	mv	a0,s2
    8000526c:	00000097          	auipc	ra,0x0
    80005270:	73c080e7          	jalr	1852(ra) # 800059a8 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005274:	00004517          	auipc	a0,0x4
    80005278:	f1450513          	addi	a0,a0,-236 # 80009188 <CONSOLE_STATUS+0x178>
    8000527c:	00000097          	auipc	ra,0x0
    80005280:	57c080e7          	jalr	1404(ra) # 800057f8 <_Z11printStringPKc>
    80005284:	00000613          	li	a2,0
    80005288:	00a00593          	li	a1,10
    8000528c:	00048513          	mv	a0,s1
    80005290:	00000097          	auipc	ra,0x0
    80005294:	718080e7          	jalr	1816(ra) # 800059a8 <_Z8printIntiii>
    printString(".\n");
    80005298:	00004517          	auipc	a0,0x4
    8000529c:	f0850513          	addi	a0,a0,-248 # 800091a0 <CONSOLE_STATUS+0x190>
    800052a0:	00000097          	auipc	ra,0x0
    800052a4:	558080e7          	jalr	1368(ra) # 800057f8 <_Z11printStringPKc>
    if(threadNum > n) {
    800052a8:	0324c463          	blt	s1,s2,800052d0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800052ac:	03205c63          	blez	s2,800052e4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800052b0:	03800513          	li	a0,56
    800052b4:	ffffd097          	auipc	ra,0xffffd
    800052b8:	068080e7          	jalr	104(ra) # 8000231c <_Znwm>
    800052bc:	00050a93          	mv	s5,a0
    800052c0:	00048593          	mv	a1,s1
    800052c4:	00001097          	auipc	ra,0x1
    800052c8:	804080e7          	jalr	-2044(ra) # 80005ac8 <_ZN9BufferCPPC1Ei>
    800052cc:	0300006f          	j	800052fc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800052d0:	00004517          	auipc	a0,0x4
    800052d4:	ed850513          	addi	a0,a0,-296 # 800091a8 <CONSOLE_STATUS+0x198>
    800052d8:	00000097          	auipc	ra,0x0
    800052dc:	520080e7          	jalr	1312(ra) # 800057f8 <_Z11printStringPKc>
        return;
    800052e0:	0140006f          	j	800052f4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800052e4:	00004517          	auipc	a0,0x4
    800052e8:	f0450513          	addi	a0,a0,-252 # 800091e8 <CONSOLE_STATUS+0x1d8>
    800052ec:	00000097          	auipc	ra,0x0
    800052f0:	50c080e7          	jalr	1292(ra) # 800057f8 <_Z11printStringPKc>
        return;
    800052f4:	000b8113          	mv	sp,s7
    800052f8:	2380006f          	j	80005530 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800052fc:	01000513          	li	a0,16
    80005300:	ffffd097          	auipc	ra,0xffffd
    80005304:	01c080e7          	jalr	28(ra) # 8000231c <_Znwm>
    80005308:	00050493          	mv	s1,a0
    8000530c:	00000593          	li	a1,0
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	254080e7          	jalr	596(ra) # 80002564 <_ZN9SemaphoreC1Ej>
    80005318:	00007797          	auipc	a5,0x7
    8000531c:	8697b423          	sd	s1,-1944(a5) # 8000bb80 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005320:	00391793          	slli	a5,s2,0x3
    80005324:	00f78793          	addi	a5,a5,15
    80005328:	ff07f793          	andi	a5,a5,-16
    8000532c:	40f10133          	sub	sp,sp,a5
    80005330:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005334:	0019071b          	addiw	a4,s2,1
    80005338:	00171793          	slli	a5,a4,0x1
    8000533c:	00e787b3          	add	a5,a5,a4
    80005340:	00379793          	slli	a5,a5,0x3
    80005344:	00f78793          	addi	a5,a5,15
    80005348:	ff07f793          	andi	a5,a5,-16
    8000534c:	40f10133          	sub	sp,sp,a5
    80005350:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005354:	00191c13          	slli	s8,s2,0x1
    80005358:	012c07b3          	add	a5,s8,s2
    8000535c:	00379793          	slli	a5,a5,0x3
    80005360:	00fa07b3          	add	a5,s4,a5
    80005364:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005368:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000536c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005370:	02800513          	li	a0,40
    80005374:	ffffd097          	auipc	ra,0xffffd
    80005378:	fa8080e7          	jalr	-88(ra) # 8000231c <_Znwm>
    8000537c:	00050b13          	mv	s6,a0
    80005380:	012c0c33          	add	s8,s8,s2
    80005384:	003c1c13          	slli	s8,s8,0x3
    80005388:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000538c:	ffffd097          	auipc	ra,0xffffd
    80005390:	0c8080e7          	jalr	200(ra) # 80002454 <_ZN6ThreadC1Ev>
    80005394:	00006797          	auipc	a5,0x6
    80005398:	5b478793          	addi	a5,a5,1460 # 8000b948 <_ZTV12ConsumerSync+0x10>
    8000539c:	00fb3023          	sd	a5,0(s6)
    800053a0:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800053a4:	000b0513          	mv	a0,s6
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	10c080e7          	jalr	268(ra) # 800024b4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800053b0:	00000493          	li	s1,0
    800053b4:	0380006f          	j	800053ec <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800053b8:	00006797          	auipc	a5,0x6
    800053bc:	56878793          	addi	a5,a5,1384 # 8000b920 <_ZTV12ProducerSync+0x10>
    800053c0:	00fcb023          	sd	a5,0(s9)
    800053c4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800053c8:	00349793          	slli	a5,s1,0x3
    800053cc:	00f987b3          	add	a5,s3,a5
    800053d0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800053d4:	00349793          	slli	a5,s1,0x3
    800053d8:	00f987b3          	add	a5,s3,a5
    800053dc:	0007b503          	ld	a0,0(a5)
    800053e0:	ffffd097          	auipc	ra,0xffffd
    800053e4:	0d4080e7          	jalr	212(ra) # 800024b4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800053e8:	0014849b          	addiw	s1,s1,1
    800053ec:	0b24d063          	bge	s1,s2,8000548c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800053f0:	00149793          	slli	a5,s1,0x1
    800053f4:	009787b3          	add	a5,a5,s1
    800053f8:	00379793          	slli	a5,a5,0x3
    800053fc:	00fa07b3          	add	a5,s4,a5
    80005400:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005404:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005408:	00006717          	auipc	a4,0x6
    8000540c:	77873703          	ld	a4,1912(a4) # 8000bb80 <_ZL10waitForAll>
    80005410:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005414:	02905863          	blez	s1,80005444 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005418:	02800513          	li	a0,40
    8000541c:	ffffd097          	auipc	ra,0xffffd
    80005420:	f00080e7          	jalr	-256(ra) # 8000231c <_Znwm>
    80005424:	00050c93          	mv	s9,a0
    80005428:	00149c13          	slli	s8,s1,0x1
    8000542c:	009c0c33          	add	s8,s8,s1
    80005430:	003c1c13          	slli	s8,s8,0x3
    80005434:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005438:	ffffd097          	auipc	ra,0xffffd
    8000543c:	01c080e7          	jalr	28(ra) # 80002454 <_ZN6ThreadC1Ev>
    80005440:	f79ff06f          	j	800053b8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005444:	02800513          	li	a0,40
    80005448:	ffffd097          	auipc	ra,0xffffd
    8000544c:	ed4080e7          	jalr	-300(ra) # 8000231c <_Znwm>
    80005450:	00050c93          	mv	s9,a0
    80005454:	00149c13          	slli	s8,s1,0x1
    80005458:	009c0c33          	add	s8,s8,s1
    8000545c:	003c1c13          	slli	s8,s8,0x3
    80005460:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005464:	ffffd097          	auipc	ra,0xffffd
    80005468:	ff0080e7          	jalr	-16(ra) # 80002454 <_ZN6ThreadC1Ev>
    8000546c:	00006797          	auipc	a5,0x6
    80005470:	48c78793          	addi	a5,a5,1164 # 8000b8f8 <_ZTV16ProducerKeyboard+0x10>
    80005474:	00fcb023          	sd	a5,0(s9)
    80005478:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000547c:	00349793          	slli	a5,s1,0x3
    80005480:	00f987b3          	add	a5,s3,a5
    80005484:	0197b023          	sd	s9,0(a5)
    80005488:	f4dff06f          	j	800053d4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	000080e7          	jalr	ra # 8000248c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005494:	00000493          	li	s1,0
    80005498:	00994e63          	blt	s2,s1,800054b4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000549c:	00006517          	auipc	a0,0x6
    800054a0:	6e453503          	ld	a0,1764(a0) # 8000bb80 <_ZL10waitForAll>
    800054a4:	ffffd097          	auipc	ra,0xffffd
    800054a8:	0fc080e7          	jalr	252(ra) # 800025a0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800054ac:	0014849b          	addiw	s1,s1,1
    800054b0:	fe9ff06f          	j	80005498 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800054b4:	00000493          	li	s1,0
    800054b8:	0080006f          	j	800054c0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800054bc:	0014849b          	addiw	s1,s1,1
    800054c0:	0324d263          	bge	s1,s2,800054e4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800054c4:	00349793          	slli	a5,s1,0x3
    800054c8:	00f987b3          	add	a5,s3,a5
    800054cc:	0007b503          	ld	a0,0(a5)
    800054d0:	fe0506e3          	beqz	a0,800054bc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800054d4:	00053783          	ld	a5,0(a0)
    800054d8:	0087b783          	ld	a5,8(a5)
    800054dc:	000780e7          	jalr	a5
    800054e0:	fddff06f          	j	800054bc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800054e4:	000b0a63          	beqz	s6,800054f8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800054e8:	000b3783          	ld	a5,0(s6)
    800054ec:	0087b783          	ld	a5,8(a5)
    800054f0:	000b0513          	mv	a0,s6
    800054f4:	000780e7          	jalr	a5
    delete waitForAll;
    800054f8:	00006517          	auipc	a0,0x6
    800054fc:	68853503          	ld	a0,1672(a0) # 8000bb80 <_ZL10waitForAll>
    80005500:	00050863          	beqz	a0,80005510 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005504:	00053783          	ld	a5,0(a0)
    80005508:	0087b783          	ld	a5,8(a5)
    8000550c:	000780e7          	jalr	a5
    delete buffer;
    80005510:	000a8e63          	beqz	s5,8000552c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005514:	000a8513          	mv	a0,s5
    80005518:	00001097          	auipc	ra,0x1
    8000551c:	8a8080e7          	jalr	-1880(ra) # 80005dc0 <_ZN9BufferCPPD1Ev>
    80005520:	000a8513          	mv	a0,s5
    80005524:	ffffd097          	auipc	ra,0xffffd
    80005528:	e48080e7          	jalr	-440(ra) # 8000236c <_ZdlPv>
    8000552c:	000b8113          	mv	sp,s7

}
    80005530:	f8040113          	addi	sp,s0,-128
    80005534:	07813083          	ld	ra,120(sp)
    80005538:	07013403          	ld	s0,112(sp)
    8000553c:	06813483          	ld	s1,104(sp)
    80005540:	06013903          	ld	s2,96(sp)
    80005544:	05813983          	ld	s3,88(sp)
    80005548:	05013a03          	ld	s4,80(sp)
    8000554c:	04813a83          	ld	s5,72(sp)
    80005550:	04013b03          	ld	s6,64(sp)
    80005554:	03813b83          	ld	s7,56(sp)
    80005558:	03013c03          	ld	s8,48(sp)
    8000555c:	02813c83          	ld	s9,40(sp)
    80005560:	08010113          	addi	sp,sp,128
    80005564:	00008067          	ret
    80005568:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000556c:	000a8513          	mv	a0,s5
    80005570:	ffffd097          	auipc	ra,0xffffd
    80005574:	dfc080e7          	jalr	-516(ra) # 8000236c <_ZdlPv>
    80005578:	00048513          	mv	a0,s1
    8000557c:	00007097          	auipc	ra,0x7
    80005580:	6ec080e7          	jalr	1772(ra) # 8000cc68 <_Unwind_Resume>
    80005584:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005588:	00048513          	mv	a0,s1
    8000558c:	ffffd097          	auipc	ra,0xffffd
    80005590:	de0080e7          	jalr	-544(ra) # 8000236c <_ZdlPv>
    80005594:	00090513          	mv	a0,s2
    80005598:	00007097          	auipc	ra,0x7
    8000559c:	6d0080e7          	jalr	1744(ra) # 8000cc68 <_Unwind_Resume>
    800055a0:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800055a4:	000b0513          	mv	a0,s6
    800055a8:	ffffd097          	auipc	ra,0xffffd
    800055ac:	dc4080e7          	jalr	-572(ra) # 8000236c <_ZdlPv>
    800055b0:	00048513          	mv	a0,s1
    800055b4:	00007097          	auipc	ra,0x7
    800055b8:	6b4080e7          	jalr	1716(ra) # 8000cc68 <_Unwind_Resume>
    800055bc:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800055c0:	000c8513          	mv	a0,s9
    800055c4:	ffffd097          	auipc	ra,0xffffd
    800055c8:	da8080e7          	jalr	-600(ra) # 8000236c <_ZdlPv>
    800055cc:	00048513          	mv	a0,s1
    800055d0:	00007097          	auipc	ra,0x7
    800055d4:	698080e7          	jalr	1688(ra) # 8000cc68 <_Unwind_Resume>
    800055d8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800055dc:	000c8513          	mv	a0,s9
    800055e0:	ffffd097          	auipc	ra,0xffffd
    800055e4:	d8c080e7          	jalr	-628(ra) # 8000236c <_ZdlPv>
    800055e8:	00048513          	mv	a0,s1
    800055ec:	00007097          	auipc	ra,0x7
    800055f0:	67c080e7          	jalr	1660(ra) # 8000cc68 <_Unwind_Resume>

00000000800055f4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800055f4:	ff010113          	addi	sp,sp,-16
    800055f8:	00113423          	sd	ra,8(sp)
    800055fc:	00813023          	sd	s0,0(sp)
    80005600:	01010413          	addi	s0,sp,16
    80005604:	00006797          	auipc	a5,0x6
    80005608:	34478793          	addi	a5,a5,836 # 8000b948 <_ZTV12ConsumerSync+0x10>
    8000560c:	00f53023          	sd	a5,0(a0)
    80005610:	ffffd097          	auipc	ra,0xffffd
    80005614:	cbc080e7          	jalr	-836(ra) # 800022cc <_ZN6ThreadD1Ev>
    80005618:	00813083          	ld	ra,8(sp)
    8000561c:	00013403          	ld	s0,0(sp)
    80005620:	01010113          	addi	sp,sp,16
    80005624:	00008067          	ret

0000000080005628 <_ZN12ConsumerSyncD0Ev>:
    80005628:	fe010113          	addi	sp,sp,-32
    8000562c:	00113c23          	sd	ra,24(sp)
    80005630:	00813823          	sd	s0,16(sp)
    80005634:	00913423          	sd	s1,8(sp)
    80005638:	02010413          	addi	s0,sp,32
    8000563c:	00050493          	mv	s1,a0
    80005640:	00006797          	auipc	a5,0x6
    80005644:	30878793          	addi	a5,a5,776 # 8000b948 <_ZTV12ConsumerSync+0x10>
    80005648:	00f53023          	sd	a5,0(a0)
    8000564c:	ffffd097          	auipc	ra,0xffffd
    80005650:	c80080e7          	jalr	-896(ra) # 800022cc <_ZN6ThreadD1Ev>
    80005654:	00048513          	mv	a0,s1
    80005658:	ffffd097          	auipc	ra,0xffffd
    8000565c:	d14080e7          	jalr	-748(ra) # 8000236c <_ZdlPv>
    80005660:	01813083          	ld	ra,24(sp)
    80005664:	01013403          	ld	s0,16(sp)
    80005668:	00813483          	ld	s1,8(sp)
    8000566c:	02010113          	addi	sp,sp,32
    80005670:	00008067          	ret

0000000080005674 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005674:	ff010113          	addi	sp,sp,-16
    80005678:	00113423          	sd	ra,8(sp)
    8000567c:	00813023          	sd	s0,0(sp)
    80005680:	01010413          	addi	s0,sp,16
    80005684:	00006797          	auipc	a5,0x6
    80005688:	29c78793          	addi	a5,a5,668 # 8000b920 <_ZTV12ProducerSync+0x10>
    8000568c:	00f53023          	sd	a5,0(a0)
    80005690:	ffffd097          	auipc	ra,0xffffd
    80005694:	c3c080e7          	jalr	-964(ra) # 800022cc <_ZN6ThreadD1Ev>
    80005698:	00813083          	ld	ra,8(sp)
    8000569c:	00013403          	ld	s0,0(sp)
    800056a0:	01010113          	addi	sp,sp,16
    800056a4:	00008067          	ret

00000000800056a8 <_ZN12ProducerSyncD0Ev>:
    800056a8:	fe010113          	addi	sp,sp,-32
    800056ac:	00113c23          	sd	ra,24(sp)
    800056b0:	00813823          	sd	s0,16(sp)
    800056b4:	00913423          	sd	s1,8(sp)
    800056b8:	02010413          	addi	s0,sp,32
    800056bc:	00050493          	mv	s1,a0
    800056c0:	00006797          	auipc	a5,0x6
    800056c4:	26078793          	addi	a5,a5,608 # 8000b920 <_ZTV12ProducerSync+0x10>
    800056c8:	00f53023          	sd	a5,0(a0)
    800056cc:	ffffd097          	auipc	ra,0xffffd
    800056d0:	c00080e7          	jalr	-1024(ra) # 800022cc <_ZN6ThreadD1Ev>
    800056d4:	00048513          	mv	a0,s1
    800056d8:	ffffd097          	auipc	ra,0xffffd
    800056dc:	c94080e7          	jalr	-876(ra) # 8000236c <_ZdlPv>
    800056e0:	01813083          	ld	ra,24(sp)
    800056e4:	01013403          	ld	s0,16(sp)
    800056e8:	00813483          	ld	s1,8(sp)
    800056ec:	02010113          	addi	sp,sp,32
    800056f0:	00008067          	ret

00000000800056f4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800056f4:	ff010113          	addi	sp,sp,-16
    800056f8:	00113423          	sd	ra,8(sp)
    800056fc:	00813023          	sd	s0,0(sp)
    80005700:	01010413          	addi	s0,sp,16
    80005704:	00006797          	auipc	a5,0x6
    80005708:	1f478793          	addi	a5,a5,500 # 8000b8f8 <_ZTV16ProducerKeyboard+0x10>
    8000570c:	00f53023          	sd	a5,0(a0)
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	bbc080e7          	jalr	-1092(ra) # 800022cc <_ZN6ThreadD1Ev>
    80005718:	00813083          	ld	ra,8(sp)
    8000571c:	00013403          	ld	s0,0(sp)
    80005720:	01010113          	addi	sp,sp,16
    80005724:	00008067          	ret

0000000080005728 <_ZN16ProducerKeyboardD0Ev>:
    80005728:	fe010113          	addi	sp,sp,-32
    8000572c:	00113c23          	sd	ra,24(sp)
    80005730:	00813823          	sd	s0,16(sp)
    80005734:	00913423          	sd	s1,8(sp)
    80005738:	02010413          	addi	s0,sp,32
    8000573c:	00050493          	mv	s1,a0
    80005740:	00006797          	auipc	a5,0x6
    80005744:	1b878793          	addi	a5,a5,440 # 8000b8f8 <_ZTV16ProducerKeyboard+0x10>
    80005748:	00f53023          	sd	a5,0(a0)
    8000574c:	ffffd097          	auipc	ra,0xffffd
    80005750:	b80080e7          	jalr	-1152(ra) # 800022cc <_ZN6ThreadD1Ev>
    80005754:	00048513          	mv	a0,s1
    80005758:	ffffd097          	auipc	ra,0xffffd
    8000575c:	c14080e7          	jalr	-1004(ra) # 8000236c <_ZdlPv>
    80005760:	01813083          	ld	ra,24(sp)
    80005764:	01013403          	ld	s0,16(sp)
    80005768:	00813483          	ld	s1,8(sp)
    8000576c:	02010113          	addi	sp,sp,32
    80005770:	00008067          	ret

0000000080005774 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005774:	ff010113          	addi	sp,sp,-16
    80005778:	00113423          	sd	ra,8(sp)
    8000577c:	00813023          	sd	s0,0(sp)
    80005780:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005784:	02053583          	ld	a1,32(a0)
    80005788:	fffff097          	auipc	ra,0xfffff
    8000578c:	7e4080e7          	jalr	2020(ra) # 80004f6c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005790:	00813083          	ld	ra,8(sp)
    80005794:	00013403          	ld	s0,0(sp)
    80005798:	01010113          	addi	sp,sp,16
    8000579c:	00008067          	ret

00000000800057a0 <_ZN12ProducerSync3runEv>:
    void run() override {
    800057a0:	ff010113          	addi	sp,sp,-16
    800057a4:	00113423          	sd	ra,8(sp)
    800057a8:	00813023          	sd	s0,0(sp)
    800057ac:	01010413          	addi	s0,sp,16
        producer(td);
    800057b0:	02053583          	ld	a1,32(a0)
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	878080e7          	jalr	-1928(ra) # 8000502c <_ZN12ProducerSync8producerEPv>
    }
    800057bc:	00813083          	ld	ra,8(sp)
    800057c0:	00013403          	ld	s0,0(sp)
    800057c4:	01010113          	addi	sp,sp,16
    800057c8:	00008067          	ret

00000000800057cc <_ZN12ConsumerSync3runEv>:
    void run() override {
    800057cc:	ff010113          	addi	sp,sp,-16
    800057d0:	00113423          	sd	ra,8(sp)
    800057d4:	00813023          	sd	s0,0(sp)
    800057d8:	01010413          	addi	s0,sp,16
        consumer(td);
    800057dc:	02053583          	ld	a1,32(a0)
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	8e0080e7          	jalr	-1824(ra) # 800050c0 <_ZN12ConsumerSync8consumerEPv>
    }
    800057e8:	00813083          	ld	ra,8(sp)
    800057ec:	00013403          	ld	s0,0(sp)
    800057f0:	01010113          	addi	sp,sp,16
    800057f4:	00008067          	ret

00000000800057f8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800057f8:	fe010113          	addi	sp,sp,-32
    800057fc:	00113c23          	sd	ra,24(sp)
    80005800:	00813823          	sd	s0,16(sp)
    80005804:	00913423          	sd	s1,8(sp)
    80005808:	02010413          	addi	s0,sp,32
    8000580c:	00050493          	mv	s1,a0
    LOCK();
    80005810:	00100613          	li	a2,1
    80005814:	00000593          	li	a1,0
    80005818:	00006517          	auipc	a0,0x6
    8000581c:	37050513          	addi	a0,a0,880 # 8000bb88 <lockPrint>
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	a14080e7          	jalr	-1516(ra) # 80001234 <copy_and_swap>
    80005828:	00050863          	beqz	a0,80005838 <_Z11printStringPKc+0x40>
    8000582c:	ffffc097          	auipc	ra,0xffffc
    80005830:	bb8080e7          	jalr	-1096(ra) # 800013e4 <_Z15thread_dispatchv>
    80005834:	fddff06f          	j	80005810 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005838:	0004c503          	lbu	a0,0(s1)
    8000583c:	00050a63          	beqz	a0,80005850 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005840:	ffffc097          	auipc	ra,0xffffc
    80005844:	d18080e7          	jalr	-744(ra) # 80001558 <_Z4putcc>
        string++;
    80005848:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000584c:	fedff06f          	j	80005838 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005850:	00000613          	li	a2,0
    80005854:	00100593          	li	a1,1
    80005858:	00006517          	auipc	a0,0x6
    8000585c:	33050513          	addi	a0,a0,816 # 8000bb88 <lockPrint>
    80005860:	ffffc097          	auipc	ra,0xffffc
    80005864:	9d4080e7          	jalr	-1580(ra) # 80001234 <copy_and_swap>
    80005868:	fe0514e3          	bnez	a0,80005850 <_Z11printStringPKc+0x58>
}
    8000586c:	01813083          	ld	ra,24(sp)
    80005870:	01013403          	ld	s0,16(sp)
    80005874:	00813483          	ld	s1,8(sp)
    80005878:	02010113          	addi	sp,sp,32
    8000587c:	00008067          	ret

0000000080005880 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005880:	fd010113          	addi	sp,sp,-48
    80005884:	02113423          	sd	ra,40(sp)
    80005888:	02813023          	sd	s0,32(sp)
    8000588c:	00913c23          	sd	s1,24(sp)
    80005890:	01213823          	sd	s2,16(sp)
    80005894:	01313423          	sd	s3,8(sp)
    80005898:	01413023          	sd	s4,0(sp)
    8000589c:	03010413          	addi	s0,sp,48
    800058a0:	00050993          	mv	s3,a0
    800058a4:	00058a13          	mv	s4,a1
    LOCK();
    800058a8:	00100613          	li	a2,1
    800058ac:	00000593          	li	a1,0
    800058b0:	00006517          	auipc	a0,0x6
    800058b4:	2d850513          	addi	a0,a0,728 # 8000bb88 <lockPrint>
    800058b8:	ffffc097          	auipc	ra,0xffffc
    800058bc:	97c080e7          	jalr	-1668(ra) # 80001234 <copy_and_swap>
    800058c0:	00050863          	beqz	a0,800058d0 <_Z9getStringPci+0x50>
    800058c4:	ffffc097          	auipc	ra,0xffffc
    800058c8:	b20080e7          	jalr	-1248(ra) # 800013e4 <_Z15thread_dispatchv>
    800058cc:	fddff06f          	j	800058a8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800058d0:	00000913          	li	s2,0
    800058d4:	00090493          	mv	s1,s2
    800058d8:	0019091b          	addiw	s2,s2,1
    800058dc:	03495a63          	bge	s2,s4,80005910 <_Z9getStringPci+0x90>
        cc = getc();
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	c44080e7          	jalr	-956(ra) # 80001524 <_Z4getcv>
        if(cc < 1)
    800058e8:	02050463          	beqz	a0,80005910 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800058ec:	009984b3          	add	s1,s3,s1
    800058f0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800058f4:	00a00793          	li	a5,10
    800058f8:	00f50a63          	beq	a0,a5,8000590c <_Z9getStringPci+0x8c>
    800058fc:	00d00793          	li	a5,13
    80005900:	fcf51ae3          	bne	a0,a5,800058d4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005904:	00090493          	mv	s1,s2
    80005908:	0080006f          	j	80005910 <_Z9getStringPci+0x90>
    8000590c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005910:	009984b3          	add	s1,s3,s1
    80005914:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005918:	00000613          	li	a2,0
    8000591c:	00100593          	li	a1,1
    80005920:	00006517          	auipc	a0,0x6
    80005924:	26850513          	addi	a0,a0,616 # 8000bb88 <lockPrint>
    80005928:	ffffc097          	auipc	ra,0xffffc
    8000592c:	90c080e7          	jalr	-1780(ra) # 80001234 <copy_and_swap>
    80005930:	fe0514e3          	bnez	a0,80005918 <_Z9getStringPci+0x98>
    return buf;
}
    80005934:	00098513          	mv	a0,s3
    80005938:	02813083          	ld	ra,40(sp)
    8000593c:	02013403          	ld	s0,32(sp)
    80005940:	01813483          	ld	s1,24(sp)
    80005944:	01013903          	ld	s2,16(sp)
    80005948:	00813983          	ld	s3,8(sp)
    8000594c:	00013a03          	ld	s4,0(sp)
    80005950:	03010113          	addi	sp,sp,48
    80005954:	00008067          	ret

0000000080005958 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005958:	ff010113          	addi	sp,sp,-16
    8000595c:	00813423          	sd	s0,8(sp)
    80005960:	01010413          	addi	s0,sp,16
    80005964:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005968:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000596c:	0006c603          	lbu	a2,0(a3)
    80005970:	fd06071b          	addiw	a4,a2,-48
    80005974:	0ff77713          	andi	a4,a4,255
    80005978:	00900793          	li	a5,9
    8000597c:	02e7e063          	bltu	a5,a4,8000599c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005980:	0025179b          	slliw	a5,a0,0x2
    80005984:	00a787bb          	addw	a5,a5,a0
    80005988:	0017979b          	slliw	a5,a5,0x1
    8000598c:	00168693          	addi	a3,a3,1
    80005990:	00c787bb          	addw	a5,a5,a2
    80005994:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005998:	fd5ff06f          	j	8000596c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000599c:	00813403          	ld	s0,8(sp)
    800059a0:	01010113          	addi	sp,sp,16
    800059a4:	00008067          	ret

00000000800059a8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800059a8:	fc010113          	addi	sp,sp,-64
    800059ac:	02113c23          	sd	ra,56(sp)
    800059b0:	02813823          	sd	s0,48(sp)
    800059b4:	02913423          	sd	s1,40(sp)
    800059b8:	03213023          	sd	s2,32(sp)
    800059bc:	01313c23          	sd	s3,24(sp)
    800059c0:	04010413          	addi	s0,sp,64
    800059c4:	00050493          	mv	s1,a0
    800059c8:	00058913          	mv	s2,a1
    800059cc:	00060993          	mv	s3,a2
    LOCK();
    800059d0:	00100613          	li	a2,1
    800059d4:	00000593          	li	a1,0
    800059d8:	00006517          	auipc	a0,0x6
    800059dc:	1b050513          	addi	a0,a0,432 # 8000bb88 <lockPrint>
    800059e0:	ffffc097          	auipc	ra,0xffffc
    800059e4:	854080e7          	jalr	-1964(ra) # 80001234 <copy_and_swap>
    800059e8:	00050863          	beqz	a0,800059f8 <_Z8printIntiii+0x50>
    800059ec:	ffffc097          	auipc	ra,0xffffc
    800059f0:	9f8080e7          	jalr	-1544(ra) # 800013e4 <_Z15thread_dispatchv>
    800059f4:	fddff06f          	j	800059d0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800059f8:	00098463          	beqz	s3,80005a00 <_Z8printIntiii+0x58>
    800059fc:	0804c463          	bltz	s1,80005a84 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005a00:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005a04:	00000593          	li	a1,0
    }

    i = 0;
    80005a08:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005a0c:	0009079b          	sext.w	a5,s2
    80005a10:	0325773b          	remuw	a4,a0,s2
    80005a14:	00048613          	mv	a2,s1
    80005a18:	0014849b          	addiw	s1,s1,1
    80005a1c:	02071693          	slli	a3,a4,0x20
    80005a20:	0206d693          	srli	a3,a3,0x20
    80005a24:	00006717          	auipc	a4,0x6
    80005a28:	f3c70713          	addi	a4,a4,-196 # 8000b960 <digits>
    80005a2c:	00d70733          	add	a4,a4,a3
    80005a30:	00074683          	lbu	a3,0(a4)
    80005a34:	fd040713          	addi	a4,s0,-48
    80005a38:	00c70733          	add	a4,a4,a2
    80005a3c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005a40:	0005071b          	sext.w	a4,a0
    80005a44:	0325553b          	divuw	a0,a0,s2
    80005a48:	fcf772e3          	bgeu	a4,a5,80005a0c <_Z8printIntiii+0x64>
    if(neg)
    80005a4c:	00058c63          	beqz	a1,80005a64 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005a50:	fd040793          	addi	a5,s0,-48
    80005a54:	009784b3          	add	s1,a5,s1
    80005a58:	02d00793          	li	a5,45
    80005a5c:	fef48823          	sb	a5,-16(s1)
    80005a60:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005a64:	fff4849b          	addiw	s1,s1,-1
    80005a68:	0204c463          	bltz	s1,80005a90 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005a6c:	fd040793          	addi	a5,s0,-48
    80005a70:	009787b3          	add	a5,a5,s1
    80005a74:	ff07c503          	lbu	a0,-16(a5)
    80005a78:	ffffc097          	auipc	ra,0xffffc
    80005a7c:	ae0080e7          	jalr	-1312(ra) # 80001558 <_Z4putcc>
    80005a80:	fe5ff06f          	j	80005a64 <_Z8printIntiii+0xbc>
        x = -xx;
    80005a84:	4090053b          	negw	a0,s1
        neg = 1;
    80005a88:	00100593          	li	a1,1
        x = -xx;
    80005a8c:	f7dff06f          	j	80005a08 <_Z8printIntiii+0x60>

    UNLOCK();
    80005a90:	00000613          	li	a2,0
    80005a94:	00100593          	li	a1,1
    80005a98:	00006517          	auipc	a0,0x6
    80005a9c:	0f050513          	addi	a0,a0,240 # 8000bb88 <lockPrint>
    80005aa0:	ffffb097          	auipc	ra,0xffffb
    80005aa4:	794080e7          	jalr	1940(ra) # 80001234 <copy_and_swap>
    80005aa8:	fe0514e3          	bnez	a0,80005a90 <_Z8printIntiii+0xe8>
    80005aac:	03813083          	ld	ra,56(sp)
    80005ab0:	03013403          	ld	s0,48(sp)
    80005ab4:	02813483          	ld	s1,40(sp)
    80005ab8:	02013903          	ld	s2,32(sp)
    80005abc:	01813983          	ld	s3,24(sp)
    80005ac0:	04010113          	addi	sp,sp,64
    80005ac4:	00008067          	ret

0000000080005ac8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ac8:	fd010113          	addi	sp,sp,-48
    80005acc:	02113423          	sd	ra,40(sp)
    80005ad0:	02813023          	sd	s0,32(sp)
    80005ad4:	00913c23          	sd	s1,24(sp)
    80005ad8:	01213823          	sd	s2,16(sp)
    80005adc:	01313423          	sd	s3,8(sp)
    80005ae0:	03010413          	addi	s0,sp,48
    80005ae4:	00050493          	mv	s1,a0
    80005ae8:	00058913          	mv	s2,a1
    80005aec:	0015879b          	addiw	a5,a1,1
    80005af0:	0007851b          	sext.w	a0,a5
    80005af4:	00f4a023          	sw	a5,0(s1)
    80005af8:	0004a823          	sw	zero,16(s1)
    80005afc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b00:	00251513          	slli	a0,a0,0x2
    80005b04:	ffffb097          	auipc	ra,0xffffb
    80005b08:	750080e7          	jalr	1872(ra) # 80001254 <_Z9mem_allocm>
    80005b0c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005b10:	01000513          	li	a0,16
    80005b14:	ffffd097          	auipc	ra,0xffffd
    80005b18:	808080e7          	jalr	-2040(ra) # 8000231c <_Znwm>
    80005b1c:	00050993          	mv	s3,a0
    80005b20:	00000593          	li	a1,0
    80005b24:	ffffd097          	auipc	ra,0xffffd
    80005b28:	a40080e7          	jalr	-1472(ra) # 80002564 <_ZN9SemaphoreC1Ej>
    80005b2c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005b30:	01000513          	li	a0,16
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	7e8080e7          	jalr	2024(ra) # 8000231c <_Znwm>
    80005b3c:	00050993          	mv	s3,a0
    80005b40:	00090593          	mv	a1,s2
    80005b44:	ffffd097          	auipc	ra,0xffffd
    80005b48:	a20080e7          	jalr	-1504(ra) # 80002564 <_ZN9SemaphoreC1Ej>
    80005b4c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005b50:	01000513          	li	a0,16
    80005b54:	ffffc097          	auipc	ra,0xffffc
    80005b58:	7c8080e7          	jalr	1992(ra) # 8000231c <_Znwm>
    80005b5c:	00050913          	mv	s2,a0
    80005b60:	00100593          	li	a1,1
    80005b64:	ffffd097          	auipc	ra,0xffffd
    80005b68:	a00080e7          	jalr	-1536(ra) # 80002564 <_ZN9SemaphoreC1Ej>
    80005b6c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005b70:	01000513          	li	a0,16
    80005b74:	ffffc097          	auipc	ra,0xffffc
    80005b78:	7a8080e7          	jalr	1960(ra) # 8000231c <_Znwm>
    80005b7c:	00050913          	mv	s2,a0
    80005b80:	00100593          	li	a1,1
    80005b84:	ffffd097          	auipc	ra,0xffffd
    80005b88:	9e0080e7          	jalr	-1568(ra) # 80002564 <_ZN9SemaphoreC1Ej>
    80005b8c:	0324b823          	sd	s2,48(s1)
}
    80005b90:	02813083          	ld	ra,40(sp)
    80005b94:	02013403          	ld	s0,32(sp)
    80005b98:	01813483          	ld	s1,24(sp)
    80005b9c:	01013903          	ld	s2,16(sp)
    80005ba0:	00813983          	ld	s3,8(sp)
    80005ba4:	03010113          	addi	sp,sp,48
    80005ba8:	00008067          	ret
    80005bac:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005bb0:	00098513          	mv	a0,s3
    80005bb4:	ffffc097          	auipc	ra,0xffffc
    80005bb8:	7b8080e7          	jalr	1976(ra) # 8000236c <_ZdlPv>
    80005bbc:	00048513          	mv	a0,s1
    80005bc0:	00007097          	auipc	ra,0x7
    80005bc4:	0a8080e7          	jalr	168(ra) # 8000cc68 <_Unwind_Resume>
    80005bc8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005bcc:	00098513          	mv	a0,s3
    80005bd0:	ffffc097          	auipc	ra,0xffffc
    80005bd4:	79c080e7          	jalr	1948(ra) # 8000236c <_ZdlPv>
    80005bd8:	00048513          	mv	a0,s1
    80005bdc:	00007097          	auipc	ra,0x7
    80005be0:	08c080e7          	jalr	140(ra) # 8000cc68 <_Unwind_Resume>
    80005be4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005be8:	00090513          	mv	a0,s2
    80005bec:	ffffc097          	auipc	ra,0xffffc
    80005bf0:	780080e7          	jalr	1920(ra) # 8000236c <_ZdlPv>
    80005bf4:	00048513          	mv	a0,s1
    80005bf8:	00007097          	auipc	ra,0x7
    80005bfc:	070080e7          	jalr	112(ra) # 8000cc68 <_Unwind_Resume>
    80005c00:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005c04:	00090513          	mv	a0,s2
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	764080e7          	jalr	1892(ra) # 8000236c <_ZdlPv>
    80005c10:	00048513          	mv	a0,s1
    80005c14:	00007097          	auipc	ra,0x7
    80005c18:	054080e7          	jalr	84(ra) # 8000cc68 <_Unwind_Resume>

0000000080005c1c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005c1c:	fe010113          	addi	sp,sp,-32
    80005c20:	00113c23          	sd	ra,24(sp)
    80005c24:	00813823          	sd	s0,16(sp)
    80005c28:	00913423          	sd	s1,8(sp)
    80005c2c:	01213023          	sd	s2,0(sp)
    80005c30:	02010413          	addi	s0,sp,32
    80005c34:	00050493          	mv	s1,a0
    80005c38:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005c3c:	01853503          	ld	a0,24(a0)
    80005c40:	ffffd097          	auipc	ra,0xffffd
    80005c44:	960080e7          	jalr	-1696(ra) # 800025a0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005c48:	0304b503          	ld	a0,48(s1)
    80005c4c:	ffffd097          	auipc	ra,0xffffd
    80005c50:	954080e7          	jalr	-1708(ra) # 800025a0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005c54:	0084b783          	ld	a5,8(s1)
    80005c58:	0144a703          	lw	a4,20(s1)
    80005c5c:	00271713          	slli	a4,a4,0x2
    80005c60:	00e787b3          	add	a5,a5,a4
    80005c64:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005c68:	0144a783          	lw	a5,20(s1)
    80005c6c:	0017879b          	addiw	a5,a5,1
    80005c70:	0004a703          	lw	a4,0(s1)
    80005c74:	02e7e7bb          	remw	a5,a5,a4
    80005c78:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005c7c:	0304b503          	ld	a0,48(s1)
    80005c80:	ffffd097          	auipc	ra,0xffffd
    80005c84:	94c080e7          	jalr	-1716(ra) # 800025cc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005c88:	0204b503          	ld	a0,32(s1)
    80005c8c:	ffffd097          	auipc	ra,0xffffd
    80005c90:	940080e7          	jalr	-1728(ra) # 800025cc <_ZN9Semaphore6signalEv>

}
    80005c94:	01813083          	ld	ra,24(sp)
    80005c98:	01013403          	ld	s0,16(sp)
    80005c9c:	00813483          	ld	s1,8(sp)
    80005ca0:	00013903          	ld	s2,0(sp)
    80005ca4:	02010113          	addi	sp,sp,32
    80005ca8:	00008067          	ret

0000000080005cac <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005cac:	fe010113          	addi	sp,sp,-32
    80005cb0:	00113c23          	sd	ra,24(sp)
    80005cb4:	00813823          	sd	s0,16(sp)
    80005cb8:	00913423          	sd	s1,8(sp)
    80005cbc:	01213023          	sd	s2,0(sp)
    80005cc0:	02010413          	addi	s0,sp,32
    80005cc4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005cc8:	02053503          	ld	a0,32(a0)
    80005ccc:	ffffd097          	auipc	ra,0xffffd
    80005cd0:	8d4080e7          	jalr	-1836(ra) # 800025a0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005cd4:	0284b503          	ld	a0,40(s1)
    80005cd8:	ffffd097          	auipc	ra,0xffffd
    80005cdc:	8c8080e7          	jalr	-1848(ra) # 800025a0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005ce0:	0084b703          	ld	a4,8(s1)
    80005ce4:	0104a783          	lw	a5,16(s1)
    80005ce8:	00279693          	slli	a3,a5,0x2
    80005cec:	00d70733          	add	a4,a4,a3
    80005cf0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005cf4:	0017879b          	addiw	a5,a5,1
    80005cf8:	0004a703          	lw	a4,0(s1)
    80005cfc:	02e7e7bb          	remw	a5,a5,a4
    80005d00:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005d04:	0284b503          	ld	a0,40(s1)
    80005d08:	ffffd097          	auipc	ra,0xffffd
    80005d0c:	8c4080e7          	jalr	-1852(ra) # 800025cc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005d10:	0184b503          	ld	a0,24(s1)
    80005d14:	ffffd097          	auipc	ra,0xffffd
    80005d18:	8b8080e7          	jalr	-1864(ra) # 800025cc <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d1c:	00090513          	mv	a0,s2
    80005d20:	01813083          	ld	ra,24(sp)
    80005d24:	01013403          	ld	s0,16(sp)
    80005d28:	00813483          	ld	s1,8(sp)
    80005d2c:	00013903          	ld	s2,0(sp)
    80005d30:	02010113          	addi	sp,sp,32
    80005d34:	00008067          	ret

0000000080005d38 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005d38:	fe010113          	addi	sp,sp,-32
    80005d3c:	00113c23          	sd	ra,24(sp)
    80005d40:	00813823          	sd	s0,16(sp)
    80005d44:	00913423          	sd	s1,8(sp)
    80005d48:	01213023          	sd	s2,0(sp)
    80005d4c:	02010413          	addi	s0,sp,32
    80005d50:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005d54:	02853503          	ld	a0,40(a0)
    80005d58:	ffffd097          	auipc	ra,0xffffd
    80005d5c:	848080e7          	jalr	-1976(ra) # 800025a0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005d60:	0304b503          	ld	a0,48(s1)
    80005d64:	ffffd097          	auipc	ra,0xffffd
    80005d68:	83c080e7          	jalr	-1988(ra) # 800025a0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005d6c:	0144a783          	lw	a5,20(s1)
    80005d70:	0104a903          	lw	s2,16(s1)
    80005d74:	0327ce63          	blt	a5,s2,80005db0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005d78:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005d7c:	0304b503          	ld	a0,48(s1)
    80005d80:	ffffd097          	auipc	ra,0xffffd
    80005d84:	84c080e7          	jalr	-1972(ra) # 800025cc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005d88:	0284b503          	ld	a0,40(s1)
    80005d8c:	ffffd097          	auipc	ra,0xffffd
    80005d90:	840080e7          	jalr	-1984(ra) # 800025cc <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d94:	00090513          	mv	a0,s2
    80005d98:	01813083          	ld	ra,24(sp)
    80005d9c:	01013403          	ld	s0,16(sp)
    80005da0:	00813483          	ld	s1,8(sp)
    80005da4:	00013903          	ld	s2,0(sp)
    80005da8:	02010113          	addi	sp,sp,32
    80005dac:	00008067          	ret
        ret = cap - head + tail;
    80005db0:	0004a703          	lw	a4,0(s1)
    80005db4:	4127093b          	subw	s2,a4,s2
    80005db8:	00f9093b          	addw	s2,s2,a5
    80005dbc:	fc1ff06f          	j	80005d7c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005dc0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005dc0:	fe010113          	addi	sp,sp,-32
    80005dc4:	00113c23          	sd	ra,24(sp)
    80005dc8:	00813823          	sd	s0,16(sp)
    80005dcc:	00913423          	sd	s1,8(sp)
    80005dd0:	02010413          	addi	s0,sp,32
    80005dd4:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005dd8:	00a00513          	li	a0,10
    80005ddc:	ffffd097          	auipc	ra,0xffffd
    80005de0:	8b0080e7          	jalr	-1872(ra) # 8000268c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005de4:	00003517          	auipc	a0,0x3
    80005de8:	52c50513          	addi	a0,a0,1324 # 80009310 <CONSOLE_STATUS+0x300>
    80005dec:	00000097          	auipc	ra,0x0
    80005df0:	a0c080e7          	jalr	-1524(ra) # 800057f8 <_Z11printStringPKc>
    while (getCnt()) {
    80005df4:	00048513          	mv	a0,s1
    80005df8:	00000097          	auipc	ra,0x0
    80005dfc:	f40080e7          	jalr	-192(ra) # 80005d38 <_ZN9BufferCPP6getCntEv>
    80005e00:	02050c63          	beqz	a0,80005e38 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005e04:	0084b783          	ld	a5,8(s1)
    80005e08:	0104a703          	lw	a4,16(s1)
    80005e0c:	00271713          	slli	a4,a4,0x2
    80005e10:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005e14:	0007c503          	lbu	a0,0(a5)
    80005e18:	ffffd097          	auipc	ra,0xffffd
    80005e1c:	874080e7          	jalr	-1932(ra) # 8000268c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005e20:	0104a783          	lw	a5,16(s1)
    80005e24:	0017879b          	addiw	a5,a5,1
    80005e28:	0004a703          	lw	a4,0(s1)
    80005e2c:	02e7e7bb          	remw	a5,a5,a4
    80005e30:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005e34:	fc1ff06f          	j	80005df4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005e38:	02100513          	li	a0,33
    80005e3c:	ffffd097          	auipc	ra,0xffffd
    80005e40:	850080e7          	jalr	-1968(ra) # 8000268c <_ZN7Console4putcEc>
    Console::putc('\n');
    80005e44:	00a00513          	li	a0,10
    80005e48:	ffffd097          	auipc	ra,0xffffd
    80005e4c:	844080e7          	jalr	-1980(ra) # 8000268c <_ZN7Console4putcEc>
    mem_free(buffer);
    80005e50:	0084b503          	ld	a0,8(s1)
    80005e54:	ffffb097          	auipc	ra,0xffffb
    80005e58:	43c080e7          	jalr	1084(ra) # 80001290 <_Z8mem_freePv>
    delete itemAvailable;
    80005e5c:	0204b503          	ld	a0,32(s1)
    80005e60:	00050863          	beqz	a0,80005e70 <_ZN9BufferCPPD1Ev+0xb0>
    80005e64:	00053783          	ld	a5,0(a0)
    80005e68:	0087b783          	ld	a5,8(a5)
    80005e6c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005e70:	0184b503          	ld	a0,24(s1)
    80005e74:	00050863          	beqz	a0,80005e84 <_ZN9BufferCPPD1Ev+0xc4>
    80005e78:	00053783          	ld	a5,0(a0)
    80005e7c:	0087b783          	ld	a5,8(a5)
    80005e80:	000780e7          	jalr	a5
    delete mutexTail;
    80005e84:	0304b503          	ld	a0,48(s1)
    80005e88:	00050863          	beqz	a0,80005e98 <_ZN9BufferCPPD1Ev+0xd8>
    80005e8c:	00053783          	ld	a5,0(a0)
    80005e90:	0087b783          	ld	a5,8(a5)
    80005e94:	000780e7          	jalr	a5
    delete mutexHead;
    80005e98:	0284b503          	ld	a0,40(s1)
    80005e9c:	00050863          	beqz	a0,80005eac <_ZN9BufferCPPD1Ev+0xec>
    80005ea0:	00053783          	ld	a5,0(a0)
    80005ea4:	0087b783          	ld	a5,8(a5)
    80005ea8:	000780e7          	jalr	a5
}
    80005eac:	01813083          	ld	ra,24(sp)
    80005eb0:	01013403          	ld	s0,16(sp)
    80005eb4:	00813483          	ld	s1,8(sp)
    80005eb8:	02010113          	addi	sp,sp,32
    80005ebc:	00008067          	ret

0000000080005ec0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005ec0:	fe010113          	addi	sp,sp,-32
    80005ec4:	00113c23          	sd	ra,24(sp)
    80005ec8:	00813823          	sd	s0,16(sp)
    80005ecc:	00913423          	sd	s1,8(sp)
    80005ed0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005ed4:	00003517          	auipc	a0,0x3
    80005ed8:	45450513          	addi	a0,a0,1108 # 80009328 <CONSOLE_STATUS+0x318>
    80005edc:	00000097          	auipc	ra,0x0
    80005ee0:	91c080e7          	jalr	-1764(ra) # 800057f8 <_Z11printStringPKc>
    int test = getc() - '0';
    80005ee4:	ffffb097          	auipc	ra,0xffffb
    80005ee8:	640080e7          	jalr	1600(ra) # 80001524 <_Z4getcv>
    80005eec:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005ef0:	ffffb097          	auipc	ra,0xffffb
    80005ef4:	634080e7          	jalr	1588(ra) # 80001524 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005ef8:	00700793          	li	a5,7
    80005efc:	1097e263          	bltu	a5,s1,80006000 <_Z8userMainv+0x140>
    80005f00:	00249493          	slli	s1,s1,0x2
    80005f04:	00003717          	auipc	a4,0x3
    80005f08:	67c70713          	addi	a4,a4,1660 # 80009580 <CONSOLE_STATUS+0x570>
    80005f0c:	00e484b3          	add	s1,s1,a4
    80005f10:	0004a783          	lw	a5,0(s1)
    80005f14:	00e787b3          	add	a5,a5,a4
    80005f18:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005f1c:	fffff097          	auipc	ra,0xfffff
    80005f20:	f54080e7          	jalr	-172(ra) # 80004e70 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005f24:	00003517          	auipc	a0,0x3
    80005f28:	42450513          	addi	a0,a0,1060 # 80009348 <CONSOLE_STATUS+0x338>
    80005f2c:	00000097          	auipc	ra,0x0
    80005f30:	8cc080e7          	jalr	-1844(ra) # 800057f8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005f34:	01813083          	ld	ra,24(sp)
    80005f38:	01013403          	ld	s0,16(sp)
    80005f3c:	00813483          	ld	s1,8(sp)
    80005f40:	02010113          	addi	sp,sp,32
    80005f44:	00008067          	ret
            Threads_CPP_API_test();
    80005f48:	ffffe097          	auipc	ra,0xffffe
    80005f4c:	e08080e7          	jalr	-504(ra) # 80003d50 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005f50:	00003517          	auipc	a0,0x3
    80005f54:	43850513          	addi	a0,a0,1080 # 80009388 <CONSOLE_STATUS+0x378>
    80005f58:	00000097          	auipc	ra,0x0
    80005f5c:	8a0080e7          	jalr	-1888(ra) # 800057f8 <_Z11printStringPKc>
            break;
    80005f60:	fd5ff06f          	j	80005f34 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005f64:	ffffd097          	auipc	ra,0xffffd
    80005f68:	640080e7          	jalr	1600(ra) # 800035a4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005f6c:	00003517          	auipc	a0,0x3
    80005f70:	45c50513          	addi	a0,a0,1116 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005f74:	00000097          	auipc	ra,0x0
    80005f78:	884080e7          	jalr	-1916(ra) # 800057f8 <_Z11printStringPKc>
            break;
    80005f7c:	fb9ff06f          	j	80005f34 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005f80:	fffff097          	auipc	ra,0xfffff
    80005f84:	234080e7          	jalr	564(ra) # 800051b4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005f88:	00003517          	auipc	a0,0x3
    80005f8c:	49050513          	addi	a0,a0,1168 # 80009418 <CONSOLE_STATUS+0x408>
    80005f90:	00000097          	auipc	ra,0x0
    80005f94:	868080e7          	jalr	-1944(ra) # 800057f8 <_Z11printStringPKc>
            break;
    80005f98:	f9dff06f          	j	80005f34 <_Z8userMainv+0x74>
            testSleeping();
    80005f9c:	00000097          	auipc	ra,0x0
    80005fa0:	11c080e7          	jalr	284(ra) # 800060b8 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005fa4:	00003517          	auipc	a0,0x3
    80005fa8:	4cc50513          	addi	a0,a0,1228 # 80009470 <CONSOLE_STATUS+0x460>
    80005fac:	00000097          	auipc	ra,0x0
    80005fb0:	84c080e7          	jalr	-1972(ra) # 800057f8 <_Z11printStringPKc>
            break;
    80005fb4:	f81ff06f          	j	80005f34 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005fb8:	ffffe097          	auipc	ra,0xffffe
    80005fbc:	258080e7          	jalr	600(ra) # 80004210 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005fc0:	00003517          	auipc	a0,0x3
    80005fc4:	4e050513          	addi	a0,a0,1248 # 800094a0 <CONSOLE_STATUS+0x490>
    80005fc8:	00000097          	auipc	ra,0x0
    80005fcc:	830080e7          	jalr	-2000(ra) # 800057f8 <_Z11printStringPKc>
            break;
    80005fd0:	f65ff06f          	j	80005f34 <_Z8userMainv+0x74>
            System_Mode_test();
    80005fd4:	00000097          	auipc	ra,0x0
    80005fd8:	658080e7          	jalr	1624(ra) # 8000662c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005fdc:	00003517          	auipc	a0,0x3
    80005fe0:	50450513          	addi	a0,a0,1284 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005fe4:	00000097          	auipc	ra,0x0
    80005fe8:	814080e7          	jalr	-2028(ra) # 800057f8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005fec:	00003517          	auipc	a0,0x3
    80005ff0:	51450513          	addi	a0,a0,1300 # 80009500 <CONSOLE_STATUS+0x4f0>
    80005ff4:	00000097          	auipc	ra,0x0
    80005ff8:	804080e7          	jalr	-2044(ra) # 800057f8 <_Z11printStringPKc>
            break;
    80005ffc:	f39ff06f          	j	80005f34 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006000:	00003517          	auipc	a0,0x3
    80006004:	55850513          	addi	a0,a0,1368 # 80009558 <CONSOLE_STATUS+0x548>
    80006008:	fffff097          	auipc	ra,0xfffff
    8000600c:	7f0080e7          	jalr	2032(ra) # 800057f8 <_Z11printStringPKc>
    80006010:	f25ff06f          	j	80005f34 <_Z8userMainv+0x74>

0000000080006014 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006014:	fe010113          	addi	sp,sp,-32
    80006018:	00113c23          	sd	ra,24(sp)
    8000601c:	00813823          	sd	s0,16(sp)
    80006020:	00913423          	sd	s1,8(sp)
    80006024:	01213023          	sd	s2,0(sp)
    80006028:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000602c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006030:	00600493          	li	s1,6
    while (--i > 0) {
    80006034:	fff4849b          	addiw	s1,s1,-1
    80006038:	04905463          	blez	s1,80006080 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000603c:	00003517          	auipc	a0,0x3
    80006040:	56450513          	addi	a0,a0,1380 # 800095a0 <CONSOLE_STATUS+0x590>
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	7b4080e7          	jalr	1972(ra) # 800057f8 <_Z11printStringPKc>
        printInt(sleep_time);
    8000604c:	00000613          	li	a2,0
    80006050:	00a00593          	li	a1,10
    80006054:	0009051b          	sext.w	a0,s2
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	950080e7          	jalr	-1712(ra) # 800059a8 <_Z8printIntiii>
        printString(" !\n");
    80006060:	00003517          	auipc	a0,0x3
    80006064:	54850513          	addi	a0,a0,1352 # 800095a8 <CONSOLE_STATUS+0x598>
    80006068:	fffff097          	auipc	ra,0xfffff
    8000606c:	790080e7          	jalr	1936(ra) # 800057f8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006070:	00090513          	mv	a0,s2
    80006074:	ffffb097          	auipc	ra,0xffffb
    80006078:	478080e7          	jalr	1144(ra) # 800014ec <_Z10time_sleepm>
    while (--i > 0) {
    8000607c:	fb9ff06f          	j	80006034 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006080:	00a00793          	li	a5,10
    80006084:	02f95933          	divu	s2,s2,a5
    80006088:	fff90913          	addi	s2,s2,-1
    8000608c:	00006797          	auipc	a5,0x6
    80006090:	b0478793          	addi	a5,a5,-1276 # 8000bb90 <_ZL8finished>
    80006094:	01278933          	add	s2,a5,s2
    80006098:	00100793          	li	a5,1
    8000609c:	00f90023          	sb	a5,0(s2)
}
    800060a0:	01813083          	ld	ra,24(sp)
    800060a4:	01013403          	ld	s0,16(sp)
    800060a8:	00813483          	ld	s1,8(sp)
    800060ac:	00013903          	ld	s2,0(sp)
    800060b0:	02010113          	addi	sp,sp,32
    800060b4:	00008067          	ret

00000000800060b8 <_Z12testSleepingv>:

void testSleeping() {
    800060b8:	fc010113          	addi	sp,sp,-64
    800060bc:	02113c23          	sd	ra,56(sp)
    800060c0:	02813823          	sd	s0,48(sp)
    800060c4:	02913423          	sd	s1,40(sp)
    800060c8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800060cc:	00a00793          	li	a5,10
    800060d0:	fcf43823          	sd	a5,-48(s0)
    800060d4:	01400793          	li	a5,20
    800060d8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800060dc:	00000493          	li	s1,0
    800060e0:	02c0006f          	j	8000610c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800060e4:	00349793          	slli	a5,s1,0x3
    800060e8:	fd040613          	addi	a2,s0,-48
    800060ec:	00f60633          	add	a2,a2,a5
    800060f0:	00000597          	auipc	a1,0x0
    800060f4:	f2458593          	addi	a1,a1,-220 # 80006014 <_ZL9sleepyRunPv>
    800060f8:	fc040513          	addi	a0,s0,-64
    800060fc:	00f50533          	add	a0,a0,a5
    80006100:	ffffb097          	auipc	ra,0xffffb
    80006104:	228080e7          	jalr	552(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006108:	0014849b          	addiw	s1,s1,1
    8000610c:	00100793          	li	a5,1
    80006110:	fc97dae3          	bge	a5,s1,800060e4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006114:	00006797          	auipc	a5,0x6
    80006118:	a7c7c783          	lbu	a5,-1412(a5) # 8000bb90 <_ZL8finished>
    8000611c:	fe078ce3          	beqz	a5,80006114 <_Z12testSleepingv+0x5c>
    80006120:	00006797          	auipc	a5,0x6
    80006124:	a717c783          	lbu	a5,-1423(a5) # 8000bb91 <_ZL8finished+0x1>
    80006128:	fe0786e3          	beqz	a5,80006114 <_Z12testSleepingv+0x5c>
}
    8000612c:	03813083          	ld	ra,56(sp)
    80006130:	03013403          	ld	s0,48(sp)
    80006134:	02813483          	ld	s1,40(sp)
    80006138:	04010113          	addi	sp,sp,64
    8000613c:	00008067          	ret

0000000080006140 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006140:	fe010113          	addi	sp,sp,-32
    80006144:	00113c23          	sd	ra,24(sp)
    80006148:	00813823          	sd	s0,16(sp)
    8000614c:	00913423          	sd	s1,8(sp)
    80006150:	01213023          	sd	s2,0(sp)
    80006154:	02010413          	addi	s0,sp,32
    80006158:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000615c:	00100793          	li	a5,1
    80006160:	02a7f863          	bgeu	a5,a0,80006190 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006164:	00a00793          	li	a5,10
    80006168:	02f577b3          	remu	a5,a0,a5
    8000616c:	02078e63          	beqz	a5,800061a8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006170:	fff48513          	addi	a0,s1,-1
    80006174:	00000097          	auipc	ra,0x0
    80006178:	fcc080e7          	jalr	-52(ra) # 80006140 <_ZL9fibonaccim>
    8000617c:	00050913          	mv	s2,a0
    80006180:	ffe48513          	addi	a0,s1,-2
    80006184:	00000097          	auipc	ra,0x0
    80006188:	fbc080e7          	jalr	-68(ra) # 80006140 <_ZL9fibonaccim>
    8000618c:	00a90533          	add	a0,s2,a0
}
    80006190:	01813083          	ld	ra,24(sp)
    80006194:	01013403          	ld	s0,16(sp)
    80006198:	00813483          	ld	s1,8(sp)
    8000619c:	00013903          	ld	s2,0(sp)
    800061a0:	02010113          	addi	sp,sp,32
    800061a4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800061a8:	ffffb097          	auipc	ra,0xffffb
    800061ac:	23c080e7          	jalr	572(ra) # 800013e4 <_Z15thread_dispatchv>
    800061b0:	fc1ff06f          	j	80006170 <_ZL9fibonaccim+0x30>

00000000800061b4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800061b4:	fe010113          	addi	sp,sp,-32
    800061b8:	00113c23          	sd	ra,24(sp)
    800061bc:	00813823          	sd	s0,16(sp)
    800061c0:	00913423          	sd	s1,8(sp)
    800061c4:	01213023          	sd	s2,0(sp)
    800061c8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800061cc:	00a00493          	li	s1,10
    800061d0:	0400006f          	j	80006210 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800061d4:	00003517          	auipc	a0,0x3
    800061d8:	0a450513          	addi	a0,a0,164 # 80009278 <CONSOLE_STATUS+0x268>
    800061dc:	fffff097          	auipc	ra,0xfffff
    800061e0:	61c080e7          	jalr	1564(ra) # 800057f8 <_Z11printStringPKc>
    800061e4:	00000613          	li	a2,0
    800061e8:	00a00593          	li	a1,10
    800061ec:	00048513          	mv	a0,s1
    800061f0:	fffff097          	auipc	ra,0xfffff
    800061f4:	7b8080e7          	jalr	1976(ra) # 800059a8 <_Z8printIntiii>
    800061f8:	00003517          	auipc	a0,0x3
    800061fc:	27050513          	addi	a0,a0,624 # 80009468 <CONSOLE_STATUS+0x458>
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	5f8080e7          	jalr	1528(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006208:	0014849b          	addiw	s1,s1,1
    8000620c:	0ff4f493          	andi	s1,s1,255
    80006210:	00c00793          	li	a5,12
    80006214:	fc97f0e3          	bgeu	a5,s1,800061d4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006218:	00003517          	auipc	a0,0x3
    8000621c:	06850513          	addi	a0,a0,104 # 80009280 <CONSOLE_STATUS+0x270>
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	5d8080e7          	jalr	1496(ra) # 800057f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006228:	00500313          	li	t1,5
    thread_dispatch();
    8000622c:	ffffb097          	auipc	ra,0xffffb
    80006230:	1b8080e7          	jalr	440(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006234:	01000513          	li	a0,16
    80006238:	00000097          	auipc	ra,0x0
    8000623c:	f08080e7          	jalr	-248(ra) # 80006140 <_ZL9fibonaccim>
    80006240:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006244:	00003517          	auipc	a0,0x3
    80006248:	04c50513          	addi	a0,a0,76 # 80009290 <CONSOLE_STATUS+0x280>
    8000624c:	fffff097          	auipc	ra,0xfffff
    80006250:	5ac080e7          	jalr	1452(ra) # 800057f8 <_Z11printStringPKc>
    80006254:	00000613          	li	a2,0
    80006258:	00a00593          	li	a1,10
    8000625c:	0009051b          	sext.w	a0,s2
    80006260:	fffff097          	auipc	ra,0xfffff
    80006264:	748080e7          	jalr	1864(ra) # 800059a8 <_Z8printIntiii>
    80006268:	00003517          	auipc	a0,0x3
    8000626c:	20050513          	addi	a0,a0,512 # 80009468 <CONSOLE_STATUS+0x458>
    80006270:	fffff097          	auipc	ra,0xfffff
    80006274:	588080e7          	jalr	1416(ra) # 800057f8 <_Z11printStringPKc>
    80006278:	0400006f          	j	800062b8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000627c:	00003517          	auipc	a0,0x3
    80006280:	ffc50513          	addi	a0,a0,-4 # 80009278 <CONSOLE_STATUS+0x268>
    80006284:	fffff097          	auipc	ra,0xfffff
    80006288:	574080e7          	jalr	1396(ra) # 800057f8 <_Z11printStringPKc>
    8000628c:	00000613          	li	a2,0
    80006290:	00a00593          	li	a1,10
    80006294:	00048513          	mv	a0,s1
    80006298:	fffff097          	auipc	ra,0xfffff
    8000629c:	710080e7          	jalr	1808(ra) # 800059a8 <_Z8printIntiii>
    800062a0:	00003517          	auipc	a0,0x3
    800062a4:	1c850513          	addi	a0,a0,456 # 80009468 <CONSOLE_STATUS+0x458>
    800062a8:	fffff097          	auipc	ra,0xfffff
    800062ac:	550080e7          	jalr	1360(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800062b0:	0014849b          	addiw	s1,s1,1
    800062b4:	0ff4f493          	andi	s1,s1,255
    800062b8:	00f00793          	li	a5,15
    800062bc:	fc97f0e3          	bgeu	a5,s1,8000627c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800062c0:	00003517          	auipc	a0,0x3
    800062c4:	fe050513          	addi	a0,a0,-32 # 800092a0 <CONSOLE_STATUS+0x290>
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	530080e7          	jalr	1328(ra) # 800057f8 <_Z11printStringPKc>
    finishedD = true;
    800062d0:	00100793          	li	a5,1
    800062d4:	00006717          	auipc	a4,0x6
    800062d8:	8af70f23          	sb	a5,-1858(a4) # 8000bb92 <_ZL9finishedD>
    thread_dispatch();
    800062dc:	ffffb097          	auipc	ra,0xffffb
    800062e0:	108080e7          	jalr	264(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800062e4:	01813083          	ld	ra,24(sp)
    800062e8:	01013403          	ld	s0,16(sp)
    800062ec:	00813483          	ld	s1,8(sp)
    800062f0:	00013903          	ld	s2,0(sp)
    800062f4:	02010113          	addi	sp,sp,32
    800062f8:	00008067          	ret

00000000800062fc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800062fc:	fe010113          	addi	sp,sp,-32
    80006300:	00113c23          	sd	ra,24(sp)
    80006304:	00813823          	sd	s0,16(sp)
    80006308:	00913423          	sd	s1,8(sp)
    8000630c:	01213023          	sd	s2,0(sp)
    80006310:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006314:	00000493          	li	s1,0
    80006318:	0400006f          	j	80006358 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000631c:	00003517          	auipc	a0,0x3
    80006320:	f2c50513          	addi	a0,a0,-212 # 80009248 <CONSOLE_STATUS+0x238>
    80006324:	fffff097          	auipc	ra,0xfffff
    80006328:	4d4080e7          	jalr	1236(ra) # 800057f8 <_Z11printStringPKc>
    8000632c:	00000613          	li	a2,0
    80006330:	00a00593          	li	a1,10
    80006334:	00048513          	mv	a0,s1
    80006338:	fffff097          	auipc	ra,0xfffff
    8000633c:	670080e7          	jalr	1648(ra) # 800059a8 <_Z8printIntiii>
    80006340:	00003517          	auipc	a0,0x3
    80006344:	12850513          	addi	a0,a0,296 # 80009468 <CONSOLE_STATUS+0x458>
    80006348:	fffff097          	auipc	ra,0xfffff
    8000634c:	4b0080e7          	jalr	1200(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006350:	0014849b          	addiw	s1,s1,1
    80006354:	0ff4f493          	andi	s1,s1,255
    80006358:	00200793          	li	a5,2
    8000635c:	fc97f0e3          	bgeu	a5,s1,8000631c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006360:	00003517          	auipc	a0,0x3
    80006364:	ef050513          	addi	a0,a0,-272 # 80009250 <CONSOLE_STATUS+0x240>
    80006368:	fffff097          	auipc	ra,0xfffff
    8000636c:	490080e7          	jalr	1168(ra) # 800057f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006370:	00700313          	li	t1,7
    thread_dispatch();
    80006374:	ffffb097          	auipc	ra,0xffffb
    80006378:	070080e7          	jalr	112(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000637c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006380:	00003517          	auipc	a0,0x3
    80006384:	ee050513          	addi	a0,a0,-288 # 80009260 <CONSOLE_STATUS+0x250>
    80006388:	fffff097          	auipc	ra,0xfffff
    8000638c:	470080e7          	jalr	1136(ra) # 800057f8 <_Z11printStringPKc>
    80006390:	00000613          	li	a2,0
    80006394:	00a00593          	li	a1,10
    80006398:	0009051b          	sext.w	a0,s2
    8000639c:	fffff097          	auipc	ra,0xfffff
    800063a0:	60c080e7          	jalr	1548(ra) # 800059a8 <_Z8printIntiii>
    800063a4:	00003517          	auipc	a0,0x3
    800063a8:	0c450513          	addi	a0,a0,196 # 80009468 <CONSOLE_STATUS+0x458>
    800063ac:	fffff097          	auipc	ra,0xfffff
    800063b0:	44c080e7          	jalr	1100(ra) # 800057f8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800063b4:	00c00513          	li	a0,12
    800063b8:	00000097          	auipc	ra,0x0
    800063bc:	d88080e7          	jalr	-632(ra) # 80006140 <_ZL9fibonaccim>
    800063c0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800063c4:	00003517          	auipc	a0,0x3
    800063c8:	ea450513          	addi	a0,a0,-348 # 80009268 <CONSOLE_STATUS+0x258>
    800063cc:	fffff097          	auipc	ra,0xfffff
    800063d0:	42c080e7          	jalr	1068(ra) # 800057f8 <_Z11printStringPKc>
    800063d4:	00000613          	li	a2,0
    800063d8:	00a00593          	li	a1,10
    800063dc:	0009051b          	sext.w	a0,s2
    800063e0:	fffff097          	auipc	ra,0xfffff
    800063e4:	5c8080e7          	jalr	1480(ra) # 800059a8 <_Z8printIntiii>
    800063e8:	00003517          	auipc	a0,0x3
    800063ec:	08050513          	addi	a0,a0,128 # 80009468 <CONSOLE_STATUS+0x458>
    800063f0:	fffff097          	auipc	ra,0xfffff
    800063f4:	408080e7          	jalr	1032(ra) # 800057f8 <_Z11printStringPKc>
    800063f8:	0400006f          	j	80006438 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800063fc:	00003517          	auipc	a0,0x3
    80006400:	e4c50513          	addi	a0,a0,-436 # 80009248 <CONSOLE_STATUS+0x238>
    80006404:	fffff097          	auipc	ra,0xfffff
    80006408:	3f4080e7          	jalr	1012(ra) # 800057f8 <_Z11printStringPKc>
    8000640c:	00000613          	li	a2,0
    80006410:	00a00593          	li	a1,10
    80006414:	00048513          	mv	a0,s1
    80006418:	fffff097          	auipc	ra,0xfffff
    8000641c:	590080e7          	jalr	1424(ra) # 800059a8 <_Z8printIntiii>
    80006420:	00003517          	auipc	a0,0x3
    80006424:	04850513          	addi	a0,a0,72 # 80009468 <CONSOLE_STATUS+0x458>
    80006428:	fffff097          	auipc	ra,0xfffff
    8000642c:	3d0080e7          	jalr	976(ra) # 800057f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006430:	0014849b          	addiw	s1,s1,1
    80006434:	0ff4f493          	andi	s1,s1,255
    80006438:	00500793          	li	a5,5
    8000643c:	fc97f0e3          	bgeu	a5,s1,800063fc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006440:	00003517          	auipc	a0,0x3
    80006444:	de050513          	addi	a0,a0,-544 # 80009220 <CONSOLE_STATUS+0x210>
    80006448:	fffff097          	auipc	ra,0xfffff
    8000644c:	3b0080e7          	jalr	944(ra) # 800057f8 <_Z11printStringPKc>
    finishedC = true;
    80006450:	00100793          	li	a5,1
    80006454:	00005717          	auipc	a4,0x5
    80006458:	72f70fa3          	sb	a5,1855(a4) # 8000bb93 <_ZL9finishedC>
    thread_dispatch();
    8000645c:	ffffb097          	auipc	ra,0xffffb
    80006460:	f88080e7          	jalr	-120(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80006464:	01813083          	ld	ra,24(sp)
    80006468:	01013403          	ld	s0,16(sp)
    8000646c:	00813483          	ld	s1,8(sp)
    80006470:	00013903          	ld	s2,0(sp)
    80006474:	02010113          	addi	sp,sp,32
    80006478:	00008067          	ret

000000008000647c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000647c:	fe010113          	addi	sp,sp,-32
    80006480:	00113c23          	sd	ra,24(sp)
    80006484:	00813823          	sd	s0,16(sp)
    80006488:	00913423          	sd	s1,8(sp)
    8000648c:	01213023          	sd	s2,0(sp)
    80006490:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006494:	00000913          	li	s2,0
    80006498:	0400006f          	j	800064d8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000649c:	ffffb097          	auipc	ra,0xffffb
    800064a0:	f48080e7          	jalr	-184(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800064a4:	00148493          	addi	s1,s1,1
    800064a8:	000027b7          	lui	a5,0x2
    800064ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800064b0:	0097ee63          	bltu	a5,s1,800064cc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800064b4:	00000713          	li	a4,0
    800064b8:	000077b7          	lui	a5,0x7
    800064bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800064c0:	fce7eee3          	bltu	a5,a4,8000649c <_ZL11workerBodyBPv+0x20>
    800064c4:	00170713          	addi	a4,a4,1
    800064c8:	ff1ff06f          	j	800064b8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800064cc:	00a00793          	li	a5,10
    800064d0:	04f90663          	beq	s2,a5,8000651c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800064d4:	00190913          	addi	s2,s2,1
    800064d8:	00f00793          	li	a5,15
    800064dc:	0527e463          	bltu	a5,s2,80006524 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800064e0:	00003517          	auipc	a0,0x3
    800064e4:	d5050513          	addi	a0,a0,-688 # 80009230 <CONSOLE_STATUS+0x220>
    800064e8:	fffff097          	auipc	ra,0xfffff
    800064ec:	310080e7          	jalr	784(ra) # 800057f8 <_Z11printStringPKc>
    800064f0:	00000613          	li	a2,0
    800064f4:	00a00593          	li	a1,10
    800064f8:	0009051b          	sext.w	a0,s2
    800064fc:	fffff097          	auipc	ra,0xfffff
    80006500:	4ac080e7          	jalr	1196(ra) # 800059a8 <_Z8printIntiii>
    80006504:	00003517          	auipc	a0,0x3
    80006508:	f6450513          	addi	a0,a0,-156 # 80009468 <CONSOLE_STATUS+0x458>
    8000650c:	fffff097          	auipc	ra,0xfffff
    80006510:	2ec080e7          	jalr	748(ra) # 800057f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006514:	00000493          	li	s1,0
    80006518:	f91ff06f          	j	800064a8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000651c:	14102ff3          	csrr	t6,sepc
    80006520:	fb5ff06f          	j	800064d4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006524:	00003517          	auipc	a0,0x3
    80006528:	d1450513          	addi	a0,a0,-748 # 80009238 <CONSOLE_STATUS+0x228>
    8000652c:	fffff097          	auipc	ra,0xfffff
    80006530:	2cc080e7          	jalr	716(ra) # 800057f8 <_Z11printStringPKc>
    finishedB = true;
    80006534:	00100793          	li	a5,1
    80006538:	00005717          	auipc	a4,0x5
    8000653c:	64f70e23          	sb	a5,1628(a4) # 8000bb94 <_ZL9finishedB>
    thread_dispatch();
    80006540:	ffffb097          	auipc	ra,0xffffb
    80006544:	ea4080e7          	jalr	-348(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80006548:	01813083          	ld	ra,24(sp)
    8000654c:	01013403          	ld	s0,16(sp)
    80006550:	00813483          	ld	s1,8(sp)
    80006554:	00013903          	ld	s2,0(sp)
    80006558:	02010113          	addi	sp,sp,32
    8000655c:	00008067          	ret

0000000080006560 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006560:	fe010113          	addi	sp,sp,-32
    80006564:	00113c23          	sd	ra,24(sp)
    80006568:	00813823          	sd	s0,16(sp)
    8000656c:	00913423          	sd	s1,8(sp)
    80006570:	01213023          	sd	s2,0(sp)
    80006574:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006578:	00000913          	li	s2,0
    8000657c:	0380006f          	j	800065b4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006580:	ffffb097          	auipc	ra,0xffffb
    80006584:	e64080e7          	jalr	-412(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006588:	00148493          	addi	s1,s1,1
    8000658c:	000027b7          	lui	a5,0x2
    80006590:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006594:	0097ee63          	bltu	a5,s1,800065b0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006598:	00000713          	li	a4,0
    8000659c:	000077b7          	lui	a5,0x7
    800065a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800065a4:	fce7eee3          	bltu	a5,a4,80006580 <_ZL11workerBodyAPv+0x20>
    800065a8:	00170713          	addi	a4,a4,1
    800065ac:	ff1ff06f          	j	8000659c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800065b0:	00190913          	addi	s2,s2,1
    800065b4:	00900793          	li	a5,9
    800065b8:	0527e063          	bltu	a5,s2,800065f8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800065bc:	00003517          	auipc	a0,0x3
    800065c0:	c5c50513          	addi	a0,a0,-932 # 80009218 <CONSOLE_STATUS+0x208>
    800065c4:	fffff097          	auipc	ra,0xfffff
    800065c8:	234080e7          	jalr	564(ra) # 800057f8 <_Z11printStringPKc>
    800065cc:	00000613          	li	a2,0
    800065d0:	00a00593          	li	a1,10
    800065d4:	0009051b          	sext.w	a0,s2
    800065d8:	fffff097          	auipc	ra,0xfffff
    800065dc:	3d0080e7          	jalr	976(ra) # 800059a8 <_Z8printIntiii>
    800065e0:	00003517          	auipc	a0,0x3
    800065e4:	e8850513          	addi	a0,a0,-376 # 80009468 <CONSOLE_STATUS+0x458>
    800065e8:	fffff097          	auipc	ra,0xfffff
    800065ec:	210080e7          	jalr	528(ra) # 800057f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800065f0:	00000493          	li	s1,0
    800065f4:	f99ff06f          	j	8000658c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800065f8:	00003517          	auipc	a0,0x3
    800065fc:	c2850513          	addi	a0,a0,-984 # 80009220 <CONSOLE_STATUS+0x210>
    80006600:	fffff097          	auipc	ra,0xfffff
    80006604:	1f8080e7          	jalr	504(ra) # 800057f8 <_Z11printStringPKc>
    finishedA = true;
    80006608:	00100793          	li	a5,1
    8000660c:	00005717          	auipc	a4,0x5
    80006610:	58f704a3          	sb	a5,1417(a4) # 8000bb95 <_ZL9finishedA>
}
    80006614:	01813083          	ld	ra,24(sp)
    80006618:	01013403          	ld	s0,16(sp)
    8000661c:	00813483          	ld	s1,8(sp)
    80006620:	00013903          	ld	s2,0(sp)
    80006624:	02010113          	addi	sp,sp,32
    80006628:	00008067          	ret

000000008000662c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000662c:	fd010113          	addi	sp,sp,-48
    80006630:	02113423          	sd	ra,40(sp)
    80006634:	02813023          	sd	s0,32(sp)
    80006638:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000663c:	00000613          	li	a2,0
    80006640:	00000597          	auipc	a1,0x0
    80006644:	f2058593          	addi	a1,a1,-224 # 80006560 <_ZL11workerBodyAPv>
    80006648:	fd040513          	addi	a0,s0,-48
    8000664c:	ffffb097          	auipc	ra,0xffffb
    80006650:	cdc080e7          	jalr	-804(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006654:	00003517          	auipc	a0,0x3
    80006658:	c5c50513          	addi	a0,a0,-932 # 800092b0 <CONSOLE_STATUS+0x2a0>
    8000665c:	fffff097          	auipc	ra,0xfffff
    80006660:	19c080e7          	jalr	412(ra) # 800057f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006664:	00000613          	li	a2,0
    80006668:	00000597          	auipc	a1,0x0
    8000666c:	e1458593          	addi	a1,a1,-492 # 8000647c <_ZL11workerBodyBPv>
    80006670:	fd840513          	addi	a0,s0,-40
    80006674:	ffffb097          	auipc	ra,0xffffb
    80006678:	cb4080e7          	jalr	-844(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000667c:	00003517          	auipc	a0,0x3
    80006680:	c4c50513          	addi	a0,a0,-948 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80006684:	fffff097          	auipc	ra,0xfffff
    80006688:	174080e7          	jalr	372(ra) # 800057f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000668c:	00000613          	li	a2,0
    80006690:	00000597          	auipc	a1,0x0
    80006694:	c6c58593          	addi	a1,a1,-916 # 800062fc <_ZL11workerBodyCPv>
    80006698:	fe040513          	addi	a0,s0,-32
    8000669c:	ffffb097          	auipc	ra,0xffffb
    800066a0:	c8c080e7          	jalr	-884(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800066a4:	00003517          	auipc	a0,0x3
    800066a8:	c3c50513          	addi	a0,a0,-964 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800066ac:	fffff097          	auipc	ra,0xfffff
    800066b0:	14c080e7          	jalr	332(ra) # 800057f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800066b4:	00000613          	li	a2,0
    800066b8:	00000597          	auipc	a1,0x0
    800066bc:	afc58593          	addi	a1,a1,-1284 # 800061b4 <_ZL11workerBodyDPv>
    800066c0:	fe840513          	addi	a0,s0,-24
    800066c4:	ffffb097          	auipc	ra,0xffffb
    800066c8:	c64080e7          	jalr	-924(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800066cc:	00003517          	auipc	a0,0x3
    800066d0:	c2c50513          	addi	a0,a0,-980 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800066d4:	fffff097          	auipc	ra,0xfffff
    800066d8:	124080e7          	jalr	292(ra) # 800057f8 <_Z11printStringPKc>
    800066dc:	00c0006f          	j	800066e8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800066e0:	ffffb097          	auipc	ra,0xffffb
    800066e4:	d04080e7          	jalr	-764(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800066e8:	00005797          	auipc	a5,0x5
    800066ec:	4ad7c783          	lbu	a5,1197(a5) # 8000bb95 <_ZL9finishedA>
    800066f0:	fe0788e3          	beqz	a5,800066e0 <_Z16System_Mode_testv+0xb4>
    800066f4:	00005797          	auipc	a5,0x5
    800066f8:	4a07c783          	lbu	a5,1184(a5) # 8000bb94 <_ZL9finishedB>
    800066fc:	fe0782e3          	beqz	a5,800066e0 <_Z16System_Mode_testv+0xb4>
    80006700:	00005797          	auipc	a5,0x5
    80006704:	4937c783          	lbu	a5,1171(a5) # 8000bb93 <_ZL9finishedC>
    80006708:	fc078ce3          	beqz	a5,800066e0 <_Z16System_Mode_testv+0xb4>
    8000670c:	00005797          	auipc	a5,0x5
    80006710:	4867c783          	lbu	a5,1158(a5) # 8000bb92 <_ZL9finishedD>
    80006714:	fc0786e3          	beqz	a5,800066e0 <_Z16System_Mode_testv+0xb4>
    }

}
    80006718:	02813083          	ld	ra,40(sp)
    8000671c:	02013403          	ld	s0,32(sp)
    80006720:	03010113          	addi	sp,sp,48
    80006724:	00008067          	ret

0000000080006728 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006728:	fe010113          	addi	sp,sp,-32
    8000672c:	00113c23          	sd	ra,24(sp)
    80006730:	00813823          	sd	s0,16(sp)
    80006734:	00913423          	sd	s1,8(sp)
    80006738:	01213023          	sd	s2,0(sp)
    8000673c:	02010413          	addi	s0,sp,32
    80006740:	00050493          	mv	s1,a0
    80006744:	00058913          	mv	s2,a1
    80006748:	0015879b          	addiw	a5,a1,1
    8000674c:	0007851b          	sext.w	a0,a5
    80006750:	00f4a023          	sw	a5,0(s1)
    80006754:	0004a823          	sw	zero,16(s1)
    80006758:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000675c:	00251513          	slli	a0,a0,0x2
    80006760:	ffffb097          	auipc	ra,0xffffb
    80006764:	af4080e7          	jalr	-1292(ra) # 80001254 <_Z9mem_allocm>
    80006768:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000676c:	00000593          	li	a1,0
    80006770:	02048513          	addi	a0,s1,32
    80006774:	ffffb097          	auipc	ra,0xffffb
    80006778:	c94080e7          	jalr	-876(ra) # 80001408 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000677c:	00090593          	mv	a1,s2
    80006780:	01848513          	addi	a0,s1,24
    80006784:	ffffb097          	auipc	ra,0xffffb
    80006788:	c84080e7          	jalr	-892(ra) # 80001408 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000678c:	00100593          	li	a1,1
    80006790:	02848513          	addi	a0,s1,40
    80006794:	ffffb097          	auipc	ra,0xffffb
    80006798:	c74080e7          	jalr	-908(ra) # 80001408 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000679c:	00100593          	li	a1,1
    800067a0:	03048513          	addi	a0,s1,48
    800067a4:	ffffb097          	auipc	ra,0xffffb
    800067a8:	c64080e7          	jalr	-924(ra) # 80001408 <_Z8sem_openPP4_semj>
}
    800067ac:	01813083          	ld	ra,24(sp)
    800067b0:	01013403          	ld	s0,16(sp)
    800067b4:	00813483          	ld	s1,8(sp)
    800067b8:	00013903          	ld	s2,0(sp)
    800067bc:	02010113          	addi	sp,sp,32
    800067c0:	00008067          	ret

00000000800067c4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800067c4:	fe010113          	addi	sp,sp,-32
    800067c8:	00113c23          	sd	ra,24(sp)
    800067cc:	00813823          	sd	s0,16(sp)
    800067d0:	00913423          	sd	s1,8(sp)
    800067d4:	01213023          	sd	s2,0(sp)
    800067d8:	02010413          	addi	s0,sp,32
    800067dc:	00050493          	mv	s1,a0
    800067e0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800067e4:	01853503          	ld	a0,24(a0)
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	c94080e7          	jalr	-876(ra) # 8000147c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800067f0:	0304b503          	ld	a0,48(s1)
    800067f4:	ffffb097          	auipc	ra,0xffffb
    800067f8:	c88080e7          	jalr	-888(ra) # 8000147c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800067fc:	0084b783          	ld	a5,8(s1)
    80006800:	0144a703          	lw	a4,20(s1)
    80006804:	00271713          	slli	a4,a4,0x2
    80006808:	00e787b3          	add	a5,a5,a4
    8000680c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006810:	0144a783          	lw	a5,20(s1)
    80006814:	0017879b          	addiw	a5,a5,1
    80006818:	0004a703          	lw	a4,0(s1)
    8000681c:	02e7e7bb          	remw	a5,a5,a4
    80006820:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006824:	0304b503          	ld	a0,48(s1)
    80006828:	ffffb097          	auipc	ra,0xffffb
    8000682c:	c8c080e7          	jalr	-884(ra) # 800014b4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006830:	0204b503          	ld	a0,32(s1)
    80006834:	ffffb097          	auipc	ra,0xffffb
    80006838:	c80080e7          	jalr	-896(ra) # 800014b4 <_Z10sem_signalP4_sem>

}
    8000683c:	01813083          	ld	ra,24(sp)
    80006840:	01013403          	ld	s0,16(sp)
    80006844:	00813483          	ld	s1,8(sp)
    80006848:	00013903          	ld	s2,0(sp)
    8000684c:	02010113          	addi	sp,sp,32
    80006850:	00008067          	ret

0000000080006854 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006854:	fe010113          	addi	sp,sp,-32
    80006858:	00113c23          	sd	ra,24(sp)
    8000685c:	00813823          	sd	s0,16(sp)
    80006860:	00913423          	sd	s1,8(sp)
    80006864:	01213023          	sd	s2,0(sp)
    80006868:	02010413          	addi	s0,sp,32
    8000686c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006870:	02053503          	ld	a0,32(a0)
    80006874:	ffffb097          	auipc	ra,0xffffb
    80006878:	c08080e7          	jalr	-1016(ra) # 8000147c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000687c:	0284b503          	ld	a0,40(s1)
    80006880:	ffffb097          	auipc	ra,0xffffb
    80006884:	bfc080e7          	jalr	-1028(ra) # 8000147c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006888:	0084b703          	ld	a4,8(s1)
    8000688c:	0104a783          	lw	a5,16(s1)
    80006890:	00279693          	slli	a3,a5,0x2
    80006894:	00d70733          	add	a4,a4,a3
    80006898:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000689c:	0017879b          	addiw	a5,a5,1
    800068a0:	0004a703          	lw	a4,0(s1)
    800068a4:	02e7e7bb          	remw	a5,a5,a4
    800068a8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800068ac:	0284b503          	ld	a0,40(s1)
    800068b0:	ffffb097          	auipc	ra,0xffffb
    800068b4:	c04080e7          	jalr	-1020(ra) # 800014b4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800068b8:	0184b503          	ld	a0,24(s1)
    800068bc:	ffffb097          	auipc	ra,0xffffb
    800068c0:	bf8080e7          	jalr	-1032(ra) # 800014b4 <_Z10sem_signalP4_sem>

    return ret;
}
    800068c4:	00090513          	mv	a0,s2
    800068c8:	01813083          	ld	ra,24(sp)
    800068cc:	01013403          	ld	s0,16(sp)
    800068d0:	00813483          	ld	s1,8(sp)
    800068d4:	00013903          	ld	s2,0(sp)
    800068d8:	02010113          	addi	sp,sp,32
    800068dc:	00008067          	ret

00000000800068e0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800068e0:	fe010113          	addi	sp,sp,-32
    800068e4:	00113c23          	sd	ra,24(sp)
    800068e8:	00813823          	sd	s0,16(sp)
    800068ec:	00913423          	sd	s1,8(sp)
    800068f0:	01213023          	sd	s2,0(sp)
    800068f4:	02010413          	addi	s0,sp,32
    800068f8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800068fc:	02853503          	ld	a0,40(a0)
    80006900:	ffffb097          	auipc	ra,0xffffb
    80006904:	b7c080e7          	jalr	-1156(ra) # 8000147c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006908:	0304b503          	ld	a0,48(s1)
    8000690c:	ffffb097          	auipc	ra,0xffffb
    80006910:	b70080e7          	jalr	-1168(ra) # 8000147c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006914:	0144a783          	lw	a5,20(s1)
    80006918:	0104a903          	lw	s2,16(s1)
    8000691c:	0327ce63          	blt	a5,s2,80006958 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006920:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006924:	0304b503          	ld	a0,48(s1)
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	b8c080e7          	jalr	-1140(ra) # 800014b4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006930:	0284b503          	ld	a0,40(s1)
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	b80080e7          	jalr	-1152(ra) # 800014b4 <_Z10sem_signalP4_sem>

    return ret;
}
    8000693c:	00090513          	mv	a0,s2
    80006940:	01813083          	ld	ra,24(sp)
    80006944:	01013403          	ld	s0,16(sp)
    80006948:	00813483          	ld	s1,8(sp)
    8000694c:	00013903          	ld	s2,0(sp)
    80006950:	02010113          	addi	sp,sp,32
    80006954:	00008067          	ret
        ret = cap - head + tail;
    80006958:	0004a703          	lw	a4,0(s1)
    8000695c:	4127093b          	subw	s2,a4,s2
    80006960:	00f9093b          	addw	s2,s2,a5
    80006964:	fc1ff06f          	j	80006924 <_ZN6Buffer6getCntEv+0x44>

0000000080006968 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006968:	fe010113          	addi	sp,sp,-32
    8000696c:	00113c23          	sd	ra,24(sp)
    80006970:	00813823          	sd	s0,16(sp)
    80006974:	00913423          	sd	s1,8(sp)
    80006978:	02010413          	addi	s0,sp,32
    8000697c:	00050493          	mv	s1,a0
    putc('\n');
    80006980:	00a00513          	li	a0,10
    80006984:	ffffb097          	auipc	ra,0xffffb
    80006988:	bd4080e7          	jalr	-1068(ra) # 80001558 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000698c:	00003517          	auipc	a0,0x3
    80006990:	98450513          	addi	a0,a0,-1660 # 80009310 <CONSOLE_STATUS+0x300>
    80006994:	fffff097          	auipc	ra,0xfffff
    80006998:	e64080e7          	jalr	-412(ra) # 800057f8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000699c:	00048513          	mv	a0,s1
    800069a0:	00000097          	auipc	ra,0x0
    800069a4:	f40080e7          	jalr	-192(ra) # 800068e0 <_ZN6Buffer6getCntEv>
    800069a8:	02a05c63          	blez	a0,800069e0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800069ac:	0084b783          	ld	a5,8(s1)
    800069b0:	0104a703          	lw	a4,16(s1)
    800069b4:	00271713          	slli	a4,a4,0x2
    800069b8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800069bc:	0007c503          	lbu	a0,0(a5)
    800069c0:	ffffb097          	auipc	ra,0xffffb
    800069c4:	b98080e7          	jalr	-1128(ra) # 80001558 <_Z4putcc>
        head = (head + 1) % cap;
    800069c8:	0104a783          	lw	a5,16(s1)
    800069cc:	0017879b          	addiw	a5,a5,1
    800069d0:	0004a703          	lw	a4,0(s1)
    800069d4:	02e7e7bb          	remw	a5,a5,a4
    800069d8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800069dc:	fc1ff06f          	j	8000699c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800069e0:	02100513          	li	a0,33
    800069e4:	ffffb097          	auipc	ra,0xffffb
    800069e8:	b74080e7          	jalr	-1164(ra) # 80001558 <_Z4putcc>
    putc('\n');
    800069ec:	00a00513          	li	a0,10
    800069f0:	ffffb097          	auipc	ra,0xffffb
    800069f4:	b68080e7          	jalr	-1176(ra) # 80001558 <_Z4putcc>
    mem_free(buffer);
    800069f8:	0084b503          	ld	a0,8(s1)
    800069fc:	ffffb097          	auipc	ra,0xffffb
    80006a00:	894080e7          	jalr	-1900(ra) # 80001290 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006a04:	0204b503          	ld	a0,32(s1)
    80006a08:	ffffb097          	auipc	ra,0xffffb
    80006a0c:	a3c080e7          	jalr	-1476(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006a10:	0184b503          	ld	a0,24(s1)
    80006a14:	ffffb097          	auipc	ra,0xffffb
    80006a18:	a30080e7          	jalr	-1488(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006a1c:	0304b503          	ld	a0,48(s1)
    80006a20:	ffffb097          	auipc	ra,0xffffb
    80006a24:	a24080e7          	jalr	-1500(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006a28:	0284b503          	ld	a0,40(s1)
    80006a2c:	ffffb097          	auipc	ra,0xffffb
    80006a30:	a18080e7          	jalr	-1512(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80006a34:	01813083          	ld	ra,24(sp)
    80006a38:	01013403          	ld	s0,16(sp)
    80006a3c:	00813483          	ld	s1,8(sp)
    80006a40:	02010113          	addi	sp,sp,32
    80006a44:	00008067          	ret

0000000080006a48 <start>:
    80006a48:	ff010113          	addi	sp,sp,-16
    80006a4c:	00813423          	sd	s0,8(sp)
    80006a50:	01010413          	addi	s0,sp,16
    80006a54:	300027f3          	csrr	a5,mstatus
    80006a58:	ffffe737          	lui	a4,0xffffe
    80006a5c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff19ff>
    80006a60:	00e7f7b3          	and	a5,a5,a4
    80006a64:	00001737          	lui	a4,0x1
    80006a68:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006a6c:	00e7e7b3          	or	a5,a5,a4
    80006a70:	30079073          	csrw	mstatus,a5
    80006a74:	00000797          	auipc	a5,0x0
    80006a78:	16078793          	addi	a5,a5,352 # 80006bd4 <system_main>
    80006a7c:	34179073          	csrw	mepc,a5
    80006a80:	00000793          	li	a5,0
    80006a84:	18079073          	csrw	satp,a5
    80006a88:	000107b7          	lui	a5,0x10
    80006a8c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006a90:	30279073          	csrw	medeleg,a5
    80006a94:	30379073          	csrw	mideleg,a5
    80006a98:	104027f3          	csrr	a5,sie
    80006a9c:	2227e793          	ori	a5,a5,546
    80006aa0:	10479073          	csrw	sie,a5
    80006aa4:	fff00793          	li	a5,-1
    80006aa8:	00a7d793          	srli	a5,a5,0xa
    80006aac:	3b079073          	csrw	pmpaddr0,a5
    80006ab0:	00f00793          	li	a5,15
    80006ab4:	3a079073          	csrw	pmpcfg0,a5
    80006ab8:	f14027f3          	csrr	a5,mhartid
    80006abc:	0200c737          	lui	a4,0x200c
    80006ac0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006ac4:	0007869b          	sext.w	a3,a5
    80006ac8:	00269713          	slli	a4,a3,0x2
    80006acc:	000f4637          	lui	a2,0xf4
    80006ad0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006ad4:	00d70733          	add	a4,a4,a3
    80006ad8:	0037979b          	slliw	a5,a5,0x3
    80006adc:	020046b7          	lui	a3,0x2004
    80006ae0:	00d787b3          	add	a5,a5,a3
    80006ae4:	00c585b3          	add	a1,a1,a2
    80006ae8:	00371693          	slli	a3,a4,0x3
    80006aec:	00005717          	auipc	a4,0x5
    80006af0:	0b470713          	addi	a4,a4,180 # 8000bba0 <timer_scratch>
    80006af4:	00b7b023          	sd	a1,0(a5)
    80006af8:	00d70733          	add	a4,a4,a3
    80006afc:	00f73c23          	sd	a5,24(a4)
    80006b00:	02c73023          	sd	a2,32(a4)
    80006b04:	34071073          	csrw	mscratch,a4
    80006b08:	00000797          	auipc	a5,0x0
    80006b0c:	6e878793          	addi	a5,a5,1768 # 800071f0 <timervec>
    80006b10:	30579073          	csrw	mtvec,a5
    80006b14:	300027f3          	csrr	a5,mstatus
    80006b18:	0087e793          	ori	a5,a5,8
    80006b1c:	30079073          	csrw	mstatus,a5
    80006b20:	304027f3          	csrr	a5,mie
    80006b24:	0807e793          	ori	a5,a5,128
    80006b28:	30479073          	csrw	mie,a5
    80006b2c:	f14027f3          	csrr	a5,mhartid
    80006b30:	0007879b          	sext.w	a5,a5
    80006b34:	00078213          	mv	tp,a5
    80006b38:	30200073          	mret
    80006b3c:	00813403          	ld	s0,8(sp)
    80006b40:	01010113          	addi	sp,sp,16
    80006b44:	00008067          	ret

0000000080006b48 <timerinit>:
    80006b48:	ff010113          	addi	sp,sp,-16
    80006b4c:	00813423          	sd	s0,8(sp)
    80006b50:	01010413          	addi	s0,sp,16
    80006b54:	f14027f3          	csrr	a5,mhartid
    80006b58:	0200c737          	lui	a4,0x200c
    80006b5c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b60:	0007869b          	sext.w	a3,a5
    80006b64:	00269713          	slli	a4,a3,0x2
    80006b68:	000f4637          	lui	a2,0xf4
    80006b6c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b70:	00d70733          	add	a4,a4,a3
    80006b74:	0037979b          	slliw	a5,a5,0x3
    80006b78:	020046b7          	lui	a3,0x2004
    80006b7c:	00d787b3          	add	a5,a5,a3
    80006b80:	00c585b3          	add	a1,a1,a2
    80006b84:	00371693          	slli	a3,a4,0x3
    80006b88:	00005717          	auipc	a4,0x5
    80006b8c:	01870713          	addi	a4,a4,24 # 8000bba0 <timer_scratch>
    80006b90:	00b7b023          	sd	a1,0(a5)
    80006b94:	00d70733          	add	a4,a4,a3
    80006b98:	00f73c23          	sd	a5,24(a4)
    80006b9c:	02c73023          	sd	a2,32(a4)
    80006ba0:	34071073          	csrw	mscratch,a4
    80006ba4:	00000797          	auipc	a5,0x0
    80006ba8:	64c78793          	addi	a5,a5,1612 # 800071f0 <timervec>
    80006bac:	30579073          	csrw	mtvec,a5
    80006bb0:	300027f3          	csrr	a5,mstatus
    80006bb4:	0087e793          	ori	a5,a5,8
    80006bb8:	30079073          	csrw	mstatus,a5
    80006bbc:	304027f3          	csrr	a5,mie
    80006bc0:	0807e793          	ori	a5,a5,128
    80006bc4:	30479073          	csrw	mie,a5
    80006bc8:	00813403          	ld	s0,8(sp)
    80006bcc:	01010113          	addi	sp,sp,16
    80006bd0:	00008067          	ret

0000000080006bd4 <system_main>:
    80006bd4:	fe010113          	addi	sp,sp,-32
    80006bd8:	00813823          	sd	s0,16(sp)
    80006bdc:	00913423          	sd	s1,8(sp)
    80006be0:	00113c23          	sd	ra,24(sp)
    80006be4:	02010413          	addi	s0,sp,32
    80006be8:	00000097          	auipc	ra,0x0
    80006bec:	0c4080e7          	jalr	196(ra) # 80006cac <cpuid>
    80006bf0:	00005497          	auipc	s1,0x5
    80006bf4:	e6048493          	addi	s1,s1,-416 # 8000ba50 <started>
    80006bf8:	02050263          	beqz	a0,80006c1c <system_main+0x48>
    80006bfc:	0004a783          	lw	a5,0(s1)
    80006c00:	0007879b          	sext.w	a5,a5
    80006c04:	fe078ce3          	beqz	a5,80006bfc <system_main+0x28>
    80006c08:	0ff0000f          	fence
    80006c0c:	00003517          	auipc	a0,0x3
    80006c10:	9d450513          	addi	a0,a0,-1580 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006c14:	00001097          	auipc	ra,0x1
    80006c18:	a78080e7          	jalr	-1416(ra) # 8000768c <panic>
    80006c1c:	00001097          	auipc	ra,0x1
    80006c20:	9cc080e7          	jalr	-1588(ra) # 800075e8 <consoleinit>
    80006c24:	00001097          	auipc	ra,0x1
    80006c28:	158080e7          	jalr	344(ra) # 80007d7c <printfinit>
    80006c2c:	00003517          	auipc	a0,0x3
    80006c30:	83c50513          	addi	a0,a0,-1988 # 80009468 <CONSOLE_STATUS+0x458>
    80006c34:	00001097          	auipc	ra,0x1
    80006c38:	ab4080e7          	jalr	-1356(ra) # 800076e8 <__printf>
    80006c3c:	00003517          	auipc	a0,0x3
    80006c40:	97450513          	addi	a0,a0,-1676 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006c44:	00001097          	auipc	ra,0x1
    80006c48:	aa4080e7          	jalr	-1372(ra) # 800076e8 <__printf>
    80006c4c:	00003517          	auipc	a0,0x3
    80006c50:	81c50513          	addi	a0,a0,-2020 # 80009468 <CONSOLE_STATUS+0x458>
    80006c54:	00001097          	auipc	ra,0x1
    80006c58:	a94080e7          	jalr	-1388(ra) # 800076e8 <__printf>
    80006c5c:	00001097          	auipc	ra,0x1
    80006c60:	4ac080e7          	jalr	1196(ra) # 80008108 <kinit>
    80006c64:	00000097          	auipc	ra,0x0
    80006c68:	148080e7          	jalr	328(ra) # 80006dac <trapinit>
    80006c6c:	00000097          	auipc	ra,0x0
    80006c70:	16c080e7          	jalr	364(ra) # 80006dd8 <trapinithart>
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	5bc080e7          	jalr	1468(ra) # 80007230 <plicinit>
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	5dc080e7          	jalr	1500(ra) # 80007258 <plicinithart>
    80006c84:	00000097          	auipc	ra,0x0
    80006c88:	078080e7          	jalr	120(ra) # 80006cfc <userinit>
    80006c8c:	0ff0000f          	fence
    80006c90:	00100793          	li	a5,1
    80006c94:	00003517          	auipc	a0,0x3
    80006c98:	93450513          	addi	a0,a0,-1740 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006c9c:	00f4a023          	sw	a5,0(s1)
    80006ca0:	00001097          	auipc	ra,0x1
    80006ca4:	a48080e7          	jalr	-1464(ra) # 800076e8 <__printf>
    80006ca8:	0000006f          	j	80006ca8 <system_main+0xd4>

0000000080006cac <cpuid>:
    80006cac:	ff010113          	addi	sp,sp,-16
    80006cb0:	00813423          	sd	s0,8(sp)
    80006cb4:	01010413          	addi	s0,sp,16
    80006cb8:	00020513          	mv	a0,tp
    80006cbc:	00813403          	ld	s0,8(sp)
    80006cc0:	0005051b          	sext.w	a0,a0
    80006cc4:	01010113          	addi	sp,sp,16
    80006cc8:	00008067          	ret

0000000080006ccc <mycpu>:
    80006ccc:	ff010113          	addi	sp,sp,-16
    80006cd0:	00813423          	sd	s0,8(sp)
    80006cd4:	01010413          	addi	s0,sp,16
    80006cd8:	00020793          	mv	a5,tp
    80006cdc:	00813403          	ld	s0,8(sp)
    80006ce0:	0007879b          	sext.w	a5,a5
    80006ce4:	00779793          	slli	a5,a5,0x7
    80006ce8:	00006517          	auipc	a0,0x6
    80006cec:	ee850513          	addi	a0,a0,-280 # 8000cbd0 <cpus>
    80006cf0:	00f50533          	add	a0,a0,a5
    80006cf4:	01010113          	addi	sp,sp,16
    80006cf8:	00008067          	ret

0000000080006cfc <userinit>:
    80006cfc:	ff010113          	addi	sp,sp,-16
    80006d00:	00813423          	sd	s0,8(sp)
    80006d04:	01010413          	addi	s0,sp,16
    80006d08:	00813403          	ld	s0,8(sp)
    80006d0c:	01010113          	addi	sp,sp,16
    80006d10:	ffffb317          	auipc	t1,0xffffb
    80006d14:	b8830067          	jr	-1144(t1) # 80001898 <main>

0000000080006d18 <either_copyout>:
    80006d18:	ff010113          	addi	sp,sp,-16
    80006d1c:	00813023          	sd	s0,0(sp)
    80006d20:	00113423          	sd	ra,8(sp)
    80006d24:	01010413          	addi	s0,sp,16
    80006d28:	02051663          	bnez	a0,80006d54 <either_copyout+0x3c>
    80006d2c:	00058513          	mv	a0,a1
    80006d30:	00060593          	mv	a1,a2
    80006d34:	0006861b          	sext.w	a2,a3
    80006d38:	00002097          	auipc	ra,0x2
    80006d3c:	c5c080e7          	jalr	-932(ra) # 80008994 <__memmove>
    80006d40:	00813083          	ld	ra,8(sp)
    80006d44:	00013403          	ld	s0,0(sp)
    80006d48:	00000513          	li	a0,0
    80006d4c:	01010113          	addi	sp,sp,16
    80006d50:	00008067          	ret
    80006d54:	00003517          	auipc	a0,0x3
    80006d58:	8b450513          	addi	a0,a0,-1868 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006d5c:	00001097          	auipc	ra,0x1
    80006d60:	930080e7          	jalr	-1744(ra) # 8000768c <panic>

0000000080006d64 <either_copyin>:
    80006d64:	ff010113          	addi	sp,sp,-16
    80006d68:	00813023          	sd	s0,0(sp)
    80006d6c:	00113423          	sd	ra,8(sp)
    80006d70:	01010413          	addi	s0,sp,16
    80006d74:	02059463          	bnez	a1,80006d9c <either_copyin+0x38>
    80006d78:	00060593          	mv	a1,a2
    80006d7c:	0006861b          	sext.w	a2,a3
    80006d80:	00002097          	auipc	ra,0x2
    80006d84:	c14080e7          	jalr	-1004(ra) # 80008994 <__memmove>
    80006d88:	00813083          	ld	ra,8(sp)
    80006d8c:	00013403          	ld	s0,0(sp)
    80006d90:	00000513          	li	a0,0
    80006d94:	01010113          	addi	sp,sp,16
    80006d98:	00008067          	ret
    80006d9c:	00003517          	auipc	a0,0x3
    80006da0:	89450513          	addi	a0,a0,-1900 # 80009630 <CONSOLE_STATUS+0x620>
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	8e8080e7          	jalr	-1816(ra) # 8000768c <panic>

0000000080006dac <trapinit>:
    80006dac:	ff010113          	addi	sp,sp,-16
    80006db0:	00813423          	sd	s0,8(sp)
    80006db4:	01010413          	addi	s0,sp,16
    80006db8:	00813403          	ld	s0,8(sp)
    80006dbc:	00003597          	auipc	a1,0x3
    80006dc0:	89c58593          	addi	a1,a1,-1892 # 80009658 <CONSOLE_STATUS+0x648>
    80006dc4:	00006517          	auipc	a0,0x6
    80006dc8:	e8c50513          	addi	a0,a0,-372 # 8000cc50 <tickslock>
    80006dcc:	01010113          	addi	sp,sp,16
    80006dd0:	00001317          	auipc	t1,0x1
    80006dd4:	5c830067          	jr	1480(t1) # 80008398 <initlock>

0000000080006dd8 <trapinithart>:
    80006dd8:	ff010113          	addi	sp,sp,-16
    80006ddc:	00813423          	sd	s0,8(sp)
    80006de0:	01010413          	addi	s0,sp,16
    80006de4:	00000797          	auipc	a5,0x0
    80006de8:	2fc78793          	addi	a5,a5,764 # 800070e0 <kernelvec>
    80006dec:	10579073          	csrw	stvec,a5
    80006df0:	00813403          	ld	s0,8(sp)
    80006df4:	01010113          	addi	sp,sp,16
    80006df8:	00008067          	ret

0000000080006dfc <usertrap>:
    80006dfc:	ff010113          	addi	sp,sp,-16
    80006e00:	00813423          	sd	s0,8(sp)
    80006e04:	01010413          	addi	s0,sp,16
    80006e08:	00813403          	ld	s0,8(sp)
    80006e0c:	01010113          	addi	sp,sp,16
    80006e10:	00008067          	ret

0000000080006e14 <usertrapret>:
    80006e14:	ff010113          	addi	sp,sp,-16
    80006e18:	00813423          	sd	s0,8(sp)
    80006e1c:	01010413          	addi	s0,sp,16
    80006e20:	00813403          	ld	s0,8(sp)
    80006e24:	01010113          	addi	sp,sp,16
    80006e28:	00008067          	ret

0000000080006e2c <kerneltrap>:
    80006e2c:	fe010113          	addi	sp,sp,-32
    80006e30:	00813823          	sd	s0,16(sp)
    80006e34:	00113c23          	sd	ra,24(sp)
    80006e38:	00913423          	sd	s1,8(sp)
    80006e3c:	02010413          	addi	s0,sp,32
    80006e40:	142025f3          	csrr	a1,scause
    80006e44:	100027f3          	csrr	a5,sstatus
    80006e48:	0027f793          	andi	a5,a5,2
    80006e4c:	10079c63          	bnez	a5,80006f64 <kerneltrap+0x138>
    80006e50:	142027f3          	csrr	a5,scause
    80006e54:	0207ce63          	bltz	a5,80006e90 <kerneltrap+0x64>
    80006e58:	00003517          	auipc	a0,0x3
    80006e5c:	84850513          	addi	a0,a0,-1976 # 800096a0 <CONSOLE_STATUS+0x690>
    80006e60:	00001097          	auipc	ra,0x1
    80006e64:	888080e7          	jalr	-1912(ra) # 800076e8 <__printf>
    80006e68:	141025f3          	csrr	a1,sepc
    80006e6c:	14302673          	csrr	a2,stval
    80006e70:	00003517          	auipc	a0,0x3
    80006e74:	84050513          	addi	a0,a0,-1984 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006e78:	00001097          	auipc	ra,0x1
    80006e7c:	870080e7          	jalr	-1936(ra) # 800076e8 <__printf>
    80006e80:	00003517          	auipc	a0,0x3
    80006e84:	84850513          	addi	a0,a0,-1976 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006e88:	00001097          	auipc	ra,0x1
    80006e8c:	804080e7          	jalr	-2044(ra) # 8000768c <panic>
    80006e90:	0ff7f713          	andi	a4,a5,255
    80006e94:	00900693          	li	a3,9
    80006e98:	04d70063          	beq	a4,a3,80006ed8 <kerneltrap+0xac>
    80006e9c:	fff00713          	li	a4,-1
    80006ea0:	03f71713          	slli	a4,a4,0x3f
    80006ea4:	00170713          	addi	a4,a4,1
    80006ea8:	fae798e3          	bne	a5,a4,80006e58 <kerneltrap+0x2c>
    80006eac:	00000097          	auipc	ra,0x0
    80006eb0:	e00080e7          	jalr	-512(ra) # 80006cac <cpuid>
    80006eb4:	06050663          	beqz	a0,80006f20 <kerneltrap+0xf4>
    80006eb8:	144027f3          	csrr	a5,sip
    80006ebc:	ffd7f793          	andi	a5,a5,-3
    80006ec0:	14479073          	csrw	sip,a5
    80006ec4:	01813083          	ld	ra,24(sp)
    80006ec8:	01013403          	ld	s0,16(sp)
    80006ecc:	00813483          	ld	s1,8(sp)
    80006ed0:	02010113          	addi	sp,sp,32
    80006ed4:	00008067          	ret
    80006ed8:	00000097          	auipc	ra,0x0
    80006edc:	3cc080e7          	jalr	972(ra) # 800072a4 <plic_claim>
    80006ee0:	00a00793          	li	a5,10
    80006ee4:	00050493          	mv	s1,a0
    80006ee8:	06f50863          	beq	a0,a5,80006f58 <kerneltrap+0x12c>
    80006eec:	fc050ce3          	beqz	a0,80006ec4 <kerneltrap+0x98>
    80006ef0:	00050593          	mv	a1,a0
    80006ef4:	00002517          	auipc	a0,0x2
    80006ef8:	78c50513          	addi	a0,a0,1932 # 80009680 <CONSOLE_STATUS+0x670>
    80006efc:	00000097          	auipc	ra,0x0
    80006f00:	7ec080e7          	jalr	2028(ra) # 800076e8 <__printf>
    80006f04:	01013403          	ld	s0,16(sp)
    80006f08:	01813083          	ld	ra,24(sp)
    80006f0c:	00048513          	mv	a0,s1
    80006f10:	00813483          	ld	s1,8(sp)
    80006f14:	02010113          	addi	sp,sp,32
    80006f18:	00000317          	auipc	t1,0x0
    80006f1c:	3c430067          	jr	964(t1) # 800072dc <plic_complete>
    80006f20:	00006517          	auipc	a0,0x6
    80006f24:	d3050513          	addi	a0,a0,-720 # 8000cc50 <tickslock>
    80006f28:	00001097          	auipc	ra,0x1
    80006f2c:	494080e7          	jalr	1172(ra) # 800083bc <acquire>
    80006f30:	00005717          	auipc	a4,0x5
    80006f34:	b2470713          	addi	a4,a4,-1244 # 8000ba54 <ticks>
    80006f38:	00072783          	lw	a5,0(a4)
    80006f3c:	00006517          	auipc	a0,0x6
    80006f40:	d1450513          	addi	a0,a0,-748 # 8000cc50 <tickslock>
    80006f44:	0017879b          	addiw	a5,a5,1
    80006f48:	00f72023          	sw	a5,0(a4)
    80006f4c:	00001097          	auipc	ra,0x1
    80006f50:	53c080e7          	jalr	1340(ra) # 80008488 <release>
    80006f54:	f65ff06f          	j	80006eb8 <kerneltrap+0x8c>
    80006f58:	00001097          	auipc	ra,0x1
    80006f5c:	098080e7          	jalr	152(ra) # 80007ff0 <uartintr>
    80006f60:	fa5ff06f          	j	80006f04 <kerneltrap+0xd8>
    80006f64:	00002517          	auipc	a0,0x2
    80006f68:	6fc50513          	addi	a0,a0,1788 # 80009660 <CONSOLE_STATUS+0x650>
    80006f6c:	00000097          	auipc	ra,0x0
    80006f70:	720080e7          	jalr	1824(ra) # 8000768c <panic>

0000000080006f74 <clockintr>:
    80006f74:	fe010113          	addi	sp,sp,-32
    80006f78:	00813823          	sd	s0,16(sp)
    80006f7c:	00913423          	sd	s1,8(sp)
    80006f80:	00113c23          	sd	ra,24(sp)
    80006f84:	02010413          	addi	s0,sp,32
    80006f88:	00006497          	auipc	s1,0x6
    80006f8c:	cc848493          	addi	s1,s1,-824 # 8000cc50 <tickslock>
    80006f90:	00048513          	mv	a0,s1
    80006f94:	00001097          	auipc	ra,0x1
    80006f98:	428080e7          	jalr	1064(ra) # 800083bc <acquire>
    80006f9c:	00005717          	auipc	a4,0x5
    80006fa0:	ab870713          	addi	a4,a4,-1352 # 8000ba54 <ticks>
    80006fa4:	00072783          	lw	a5,0(a4)
    80006fa8:	01013403          	ld	s0,16(sp)
    80006fac:	01813083          	ld	ra,24(sp)
    80006fb0:	00048513          	mv	a0,s1
    80006fb4:	0017879b          	addiw	a5,a5,1
    80006fb8:	00813483          	ld	s1,8(sp)
    80006fbc:	00f72023          	sw	a5,0(a4)
    80006fc0:	02010113          	addi	sp,sp,32
    80006fc4:	00001317          	auipc	t1,0x1
    80006fc8:	4c430067          	jr	1220(t1) # 80008488 <release>

0000000080006fcc <devintr>:
    80006fcc:	142027f3          	csrr	a5,scause
    80006fd0:	00000513          	li	a0,0
    80006fd4:	0007c463          	bltz	a5,80006fdc <devintr+0x10>
    80006fd8:	00008067          	ret
    80006fdc:	fe010113          	addi	sp,sp,-32
    80006fe0:	00813823          	sd	s0,16(sp)
    80006fe4:	00113c23          	sd	ra,24(sp)
    80006fe8:	00913423          	sd	s1,8(sp)
    80006fec:	02010413          	addi	s0,sp,32
    80006ff0:	0ff7f713          	andi	a4,a5,255
    80006ff4:	00900693          	li	a3,9
    80006ff8:	04d70c63          	beq	a4,a3,80007050 <devintr+0x84>
    80006ffc:	fff00713          	li	a4,-1
    80007000:	03f71713          	slli	a4,a4,0x3f
    80007004:	00170713          	addi	a4,a4,1
    80007008:	00e78c63          	beq	a5,a4,80007020 <devintr+0x54>
    8000700c:	01813083          	ld	ra,24(sp)
    80007010:	01013403          	ld	s0,16(sp)
    80007014:	00813483          	ld	s1,8(sp)
    80007018:	02010113          	addi	sp,sp,32
    8000701c:	00008067          	ret
    80007020:	00000097          	auipc	ra,0x0
    80007024:	c8c080e7          	jalr	-884(ra) # 80006cac <cpuid>
    80007028:	06050663          	beqz	a0,80007094 <devintr+0xc8>
    8000702c:	144027f3          	csrr	a5,sip
    80007030:	ffd7f793          	andi	a5,a5,-3
    80007034:	14479073          	csrw	sip,a5
    80007038:	01813083          	ld	ra,24(sp)
    8000703c:	01013403          	ld	s0,16(sp)
    80007040:	00813483          	ld	s1,8(sp)
    80007044:	00200513          	li	a0,2
    80007048:	02010113          	addi	sp,sp,32
    8000704c:	00008067          	ret
    80007050:	00000097          	auipc	ra,0x0
    80007054:	254080e7          	jalr	596(ra) # 800072a4 <plic_claim>
    80007058:	00a00793          	li	a5,10
    8000705c:	00050493          	mv	s1,a0
    80007060:	06f50663          	beq	a0,a5,800070cc <devintr+0x100>
    80007064:	00100513          	li	a0,1
    80007068:	fa0482e3          	beqz	s1,8000700c <devintr+0x40>
    8000706c:	00048593          	mv	a1,s1
    80007070:	00002517          	auipc	a0,0x2
    80007074:	61050513          	addi	a0,a0,1552 # 80009680 <CONSOLE_STATUS+0x670>
    80007078:	00000097          	auipc	ra,0x0
    8000707c:	670080e7          	jalr	1648(ra) # 800076e8 <__printf>
    80007080:	00048513          	mv	a0,s1
    80007084:	00000097          	auipc	ra,0x0
    80007088:	258080e7          	jalr	600(ra) # 800072dc <plic_complete>
    8000708c:	00100513          	li	a0,1
    80007090:	f7dff06f          	j	8000700c <devintr+0x40>
    80007094:	00006517          	auipc	a0,0x6
    80007098:	bbc50513          	addi	a0,a0,-1092 # 8000cc50 <tickslock>
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	320080e7          	jalr	800(ra) # 800083bc <acquire>
    800070a4:	00005717          	auipc	a4,0x5
    800070a8:	9b070713          	addi	a4,a4,-1616 # 8000ba54 <ticks>
    800070ac:	00072783          	lw	a5,0(a4)
    800070b0:	00006517          	auipc	a0,0x6
    800070b4:	ba050513          	addi	a0,a0,-1120 # 8000cc50 <tickslock>
    800070b8:	0017879b          	addiw	a5,a5,1
    800070bc:	00f72023          	sw	a5,0(a4)
    800070c0:	00001097          	auipc	ra,0x1
    800070c4:	3c8080e7          	jalr	968(ra) # 80008488 <release>
    800070c8:	f65ff06f          	j	8000702c <devintr+0x60>
    800070cc:	00001097          	auipc	ra,0x1
    800070d0:	f24080e7          	jalr	-220(ra) # 80007ff0 <uartintr>
    800070d4:	fadff06f          	j	80007080 <devintr+0xb4>
	...

00000000800070e0 <kernelvec>:
    800070e0:	f0010113          	addi	sp,sp,-256
    800070e4:	00113023          	sd	ra,0(sp)
    800070e8:	00213423          	sd	sp,8(sp)
    800070ec:	00313823          	sd	gp,16(sp)
    800070f0:	00413c23          	sd	tp,24(sp)
    800070f4:	02513023          	sd	t0,32(sp)
    800070f8:	02613423          	sd	t1,40(sp)
    800070fc:	02713823          	sd	t2,48(sp)
    80007100:	02813c23          	sd	s0,56(sp)
    80007104:	04913023          	sd	s1,64(sp)
    80007108:	04a13423          	sd	a0,72(sp)
    8000710c:	04b13823          	sd	a1,80(sp)
    80007110:	04c13c23          	sd	a2,88(sp)
    80007114:	06d13023          	sd	a3,96(sp)
    80007118:	06e13423          	sd	a4,104(sp)
    8000711c:	06f13823          	sd	a5,112(sp)
    80007120:	07013c23          	sd	a6,120(sp)
    80007124:	09113023          	sd	a7,128(sp)
    80007128:	09213423          	sd	s2,136(sp)
    8000712c:	09313823          	sd	s3,144(sp)
    80007130:	09413c23          	sd	s4,152(sp)
    80007134:	0b513023          	sd	s5,160(sp)
    80007138:	0b613423          	sd	s6,168(sp)
    8000713c:	0b713823          	sd	s7,176(sp)
    80007140:	0b813c23          	sd	s8,184(sp)
    80007144:	0d913023          	sd	s9,192(sp)
    80007148:	0da13423          	sd	s10,200(sp)
    8000714c:	0db13823          	sd	s11,208(sp)
    80007150:	0dc13c23          	sd	t3,216(sp)
    80007154:	0fd13023          	sd	t4,224(sp)
    80007158:	0fe13423          	sd	t5,232(sp)
    8000715c:	0ff13823          	sd	t6,240(sp)
    80007160:	ccdff0ef          	jal	ra,80006e2c <kerneltrap>
    80007164:	00013083          	ld	ra,0(sp)
    80007168:	00813103          	ld	sp,8(sp)
    8000716c:	01013183          	ld	gp,16(sp)
    80007170:	02013283          	ld	t0,32(sp)
    80007174:	02813303          	ld	t1,40(sp)
    80007178:	03013383          	ld	t2,48(sp)
    8000717c:	03813403          	ld	s0,56(sp)
    80007180:	04013483          	ld	s1,64(sp)
    80007184:	04813503          	ld	a0,72(sp)
    80007188:	05013583          	ld	a1,80(sp)
    8000718c:	05813603          	ld	a2,88(sp)
    80007190:	06013683          	ld	a3,96(sp)
    80007194:	06813703          	ld	a4,104(sp)
    80007198:	07013783          	ld	a5,112(sp)
    8000719c:	07813803          	ld	a6,120(sp)
    800071a0:	08013883          	ld	a7,128(sp)
    800071a4:	08813903          	ld	s2,136(sp)
    800071a8:	09013983          	ld	s3,144(sp)
    800071ac:	09813a03          	ld	s4,152(sp)
    800071b0:	0a013a83          	ld	s5,160(sp)
    800071b4:	0a813b03          	ld	s6,168(sp)
    800071b8:	0b013b83          	ld	s7,176(sp)
    800071bc:	0b813c03          	ld	s8,184(sp)
    800071c0:	0c013c83          	ld	s9,192(sp)
    800071c4:	0c813d03          	ld	s10,200(sp)
    800071c8:	0d013d83          	ld	s11,208(sp)
    800071cc:	0d813e03          	ld	t3,216(sp)
    800071d0:	0e013e83          	ld	t4,224(sp)
    800071d4:	0e813f03          	ld	t5,232(sp)
    800071d8:	0f013f83          	ld	t6,240(sp)
    800071dc:	10010113          	addi	sp,sp,256
    800071e0:	10200073          	sret
    800071e4:	00000013          	nop
    800071e8:	00000013          	nop
    800071ec:	00000013          	nop

00000000800071f0 <timervec>:
    800071f0:	34051573          	csrrw	a0,mscratch,a0
    800071f4:	00b53023          	sd	a1,0(a0)
    800071f8:	00c53423          	sd	a2,8(a0)
    800071fc:	00d53823          	sd	a3,16(a0)
    80007200:	01853583          	ld	a1,24(a0)
    80007204:	02053603          	ld	a2,32(a0)
    80007208:	0005b683          	ld	a3,0(a1)
    8000720c:	00c686b3          	add	a3,a3,a2
    80007210:	00d5b023          	sd	a3,0(a1)
    80007214:	00200593          	li	a1,2
    80007218:	14459073          	csrw	sip,a1
    8000721c:	01053683          	ld	a3,16(a0)
    80007220:	00853603          	ld	a2,8(a0)
    80007224:	00053583          	ld	a1,0(a0)
    80007228:	34051573          	csrrw	a0,mscratch,a0
    8000722c:	30200073          	mret

0000000080007230 <plicinit>:
    80007230:	ff010113          	addi	sp,sp,-16
    80007234:	00813423          	sd	s0,8(sp)
    80007238:	01010413          	addi	s0,sp,16
    8000723c:	00813403          	ld	s0,8(sp)
    80007240:	0c0007b7          	lui	a5,0xc000
    80007244:	00100713          	li	a4,1
    80007248:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000724c:	00e7a223          	sw	a4,4(a5)
    80007250:	01010113          	addi	sp,sp,16
    80007254:	00008067          	ret

0000000080007258 <plicinithart>:
    80007258:	ff010113          	addi	sp,sp,-16
    8000725c:	00813023          	sd	s0,0(sp)
    80007260:	00113423          	sd	ra,8(sp)
    80007264:	01010413          	addi	s0,sp,16
    80007268:	00000097          	auipc	ra,0x0
    8000726c:	a44080e7          	jalr	-1468(ra) # 80006cac <cpuid>
    80007270:	0085171b          	slliw	a4,a0,0x8
    80007274:	0c0027b7          	lui	a5,0xc002
    80007278:	00e787b3          	add	a5,a5,a4
    8000727c:	40200713          	li	a4,1026
    80007280:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007284:	00813083          	ld	ra,8(sp)
    80007288:	00013403          	ld	s0,0(sp)
    8000728c:	00d5151b          	slliw	a0,a0,0xd
    80007290:	0c2017b7          	lui	a5,0xc201
    80007294:	00a78533          	add	a0,a5,a0
    80007298:	00052023          	sw	zero,0(a0)
    8000729c:	01010113          	addi	sp,sp,16
    800072a0:	00008067          	ret

00000000800072a4 <plic_claim>:
    800072a4:	ff010113          	addi	sp,sp,-16
    800072a8:	00813023          	sd	s0,0(sp)
    800072ac:	00113423          	sd	ra,8(sp)
    800072b0:	01010413          	addi	s0,sp,16
    800072b4:	00000097          	auipc	ra,0x0
    800072b8:	9f8080e7          	jalr	-1544(ra) # 80006cac <cpuid>
    800072bc:	00813083          	ld	ra,8(sp)
    800072c0:	00013403          	ld	s0,0(sp)
    800072c4:	00d5151b          	slliw	a0,a0,0xd
    800072c8:	0c2017b7          	lui	a5,0xc201
    800072cc:	00a78533          	add	a0,a5,a0
    800072d0:	00452503          	lw	a0,4(a0)
    800072d4:	01010113          	addi	sp,sp,16
    800072d8:	00008067          	ret

00000000800072dc <plic_complete>:
    800072dc:	fe010113          	addi	sp,sp,-32
    800072e0:	00813823          	sd	s0,16(sp)
    800072e4:	00913423          	sd	s1,8(sp)
    800072e8:	00113c23          	sd	ra,24(sp)
    800072ec:	02010413          	addi	s0,sp,32
    800072f0:	00050493          	mv	s1,a0
    800072f4:	00000097          	auipc	ra,0x0
    800072f8:	9b8080e7          	jalr	-1608(ra) # 80006cac <cpuid>
    800072fc:	01813083          	ld	ra,24(sp)
    80007300:	01013403          	ld	s0,16(sp)
    80007304:	00d5179b          	slliw	a5,a0,0xd
    80007308:	0c201737          	lui	a4,0xc201
    8000730c:	00f707b3          	add	a5,a4,a5
    80007310:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007314:	00813483          	ld	s1,8(sp)
    80007318:	02010113          	addi	sp,sp,32
    8000731c:	00008067          	ret

0000000080007320 <consolewrite>:
    80007320:	fb010113          	addi	sp,sp,-80
    80007324:	04813023          	sd	s0,64(sp)
    80007328:	04113423          	sd	ra,72(sp)
    8000732c:	02913c23          	sd	s1,56(sp)
    80007330:	03213823          	sd	s2,48(sp)
    80007334:	03313423          	sd	s3,40(sp)
    80007338:	03413023          	sd	s4,32(sp)
    8000733c:	01513c23          	sd	s5,24(sp)
    80007340:	05010413          	addi	s0,sp,80
    80007344:	06c05c63          	blez	a2,800073bc <consolewrite+0x9c>
    80007348:	00060993          	mv	s3,a2
    8000734c:	00050a13          	mv	s4,a0
    80007350:	00058493          	mv	s1,a1
    80007354:	00000913          	li	s2,0
    80007358:	fff00a93          	li	s5,-1
    8000735c:	01c0006f          	j	80007378 <consolewrite+0x58>
    80007360:	fbf44503          	lbu	a0,-65(s0)
    80007364:	0019091b          	addiw	s2,s2,1
    80007368:	00148493          	addi	s1,s1,1
    8000736c:	00001097          	auipc	ra,0x1
    80007370:	a9c080e7          	jalr	-1380(ra) # 80007e08 <uartputc>
    80007374:	03298063          	beq	s3,s2,80007394 <consolewrite+0x74>
    80007378:	00048613          	mv	a2,s1
    8000737c:	00100693          	li	a3,1
    80007380:	000a0593          	mv	a1,s4
    80007384:	fbf40513          	addi	a0,s0,-65
    80007388:	00000097          	auipc	ra,0x0
    8000738c:	9dc080e7          	jalr	-1572(ra) # 80006d64 <either_copyin>
    80007390:	fd5518e3          	bne	a0,s5,80007360 <consolewrite+0x40>
    80007394:	04813083          	ld	ra,72(sp)
    80007398:	04013403          	ld	s0,64(sp)
    8000739c:	03813483          	ld	s1,56(sp)
    800073a0:	02813983          	ld	s3,40(sp)
    800073a4:	02013a03          	ld	s4,32(sp)
    800073a8:	01813a83          	ld	s5,24(sp)
    800073ac:	00090513          	mv	a0,s2
    800073b0:	03013903          	ld	s2,48(sp)
    800073b4:	05010113          	addi	sp,sp,80
    800073b8:	00008067          	ret
    800073bc:	00000913          	li	s2,0
    800073c0:	fd5ff06f          	j	80007394 <consolewrite+0x74>

00000000800073c4 <consoleread>:
    800073c4:	f9010113          	addi	sp,sp,-112
    800073c8:	06813023          	sd	s0,96(sp)
    800073cc:	04913c23          	sd	s1,88(sp)
    800073d0:	05213823          	sd	s2,80(sp)
    800073d4:	05313423          	sd	s3,72(sp)
    800073d8:	05413023          	sd	s4,64(sp)
    800073dc:	03513c23          	sd	s5,56(sp)
    800073e0:	03613823          	sd	s6,48(sp)
    800073e4:	03713423          	sd	s7,40(sp)
    800073e8:	03813023          	sd	s8,32(sp)
    800073ec:	06113423          	sd	ra,104(sp)
    800073f0:	01913c23          	sd	s9,24(sp)
    800073f4:	07010413          	addi	s0,sp,112
    800073f8:	00060b93          	mv	s7,a2
    800073fc:	00050913          	mv	s2,a0
    80007400:	00058c13          	mv	s8,a1
    80007404:	00060b1b          	sext.w	s6,a2
    80007408:	00006497          	auipc	s1,0x6
    8000740c:	87048493          	addi	s1,s1,-1936 # 8000cc78 <cons>
    80007410:	00400993          	li	s3,4
    80007414:	fff00a13          	li	s4,-1
    80007418:	00a00a93          	li	s5,10
    8000741c:	05705e63          	blez	s7,80007478 <consoleread+0xb4>
    80007420:	09c4a703          	lw	a4,156(s1)
    80007424:	0984a783          	lw	a5,152(s1)
    80007428:	0007071b          	sext.w	a4,a4
    8000742c:	08e78463          	beq	a5,a4,800074b4 <consoleread+0xf0>
    80007430:	07f7f713          	andi	a4,a5,127
    80007434:	00e48733          	add	a4,s1,a4
    80007438:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000743c:	0017869b          	addiw	a3,a5,1
    80007440:	08d4ac23          	sw	a3,152(s1)
    80007444:	00070c9b          	sext.w	s9,a4
    80007448:	0b370663          	beq	a4,s3,800074f4 <consoleread+0x130>
    8000744c:	00100693          	li	a3,1
    80007450:	f9f40613          	addi	a2,s0,-97
    80007454:	000c0593          	mv	a1,s8
    80007458:	00090513          	mv	a0,s2
    8000745c:	f8e40fa3          	sb	a4,-97(s0)
    80007460:	00000097          	auipc	ra,0x0
    80007464:	8b8080e7          	jalr	-1864(ra) # 80006d18 <either_copyout>
    80007468:	01450863          	beq	a0,s4,80007478 <consoleread+0xb4>
    8000746c:	001c0c13          	addi	s8,s8,1
    80007470:	fffb8b9b          	addiw	s7,s7,-1
    80007474:	fb5c94e3          	bne	s9,s5,8000741c <consoleread+0x58>
    80007478:	000b851b          	sext.w	a0,s7
    8000747c:	06813083          	ld	ra,104(sp)
    80007480:	06013403          	ld	s0,96(sp)
    80007484:	05813483          	ld	s1,88(sp)
    80007488:	05013903          	ld	s2,80(sp)
    8000748c:	04813983          	ld	s3,72(sp)
    80007490:	04013a03          	ld	s4,64(sp)
    80007494:	03813a83          	ld	s5,56(sp)
    80007498:	02813b83          	ld	s7,40(sp)
    8000749c:	02013c03          	ld	s8,32(sp)
    800074a0:	01813c83          	ld	s9,24(sp)
    800074a4:	40ab053b          	subw	a0,s6,a0
    800074a8:	03013b03          	ld	s6,48(sp)
    800074ac:	07010113          	addi	sp,sp,112
    800074b0:	00008067          	ret
    800074b4:	00001097          	auipc	ra,0x1
    800074b8:	1d8080e7          	jalr	472(ra) # 8000868c <push_on>
    800074bc:	0984a703          	lw	a4,152(s1)
    800074c0:	09c4a783          	lw	a5,156(s1)
    800074c4:	0007879b          	sext.w	a5,a5
    800074c8:	fef70ce3          	beq	a4,a5,800074c0 <consoleread+0xfc>
    800074cc:	00001097          	auipc	ra,0x1
    800074d0:	234080e7          	jalr	564(ra) # 80008700 <pop_on>
    800074d4:	0984a783          	lw	a5,152(s1)
    800074d8:	07f7f713          	andi	a4,a5,127
    800074dc:	00e48733          	add	a4,s1,a4
    800074e0:	01874703          	lbu	a4,24(a4)
    800074e4:	0017869b          	addiw	a3,a5,1
    800074e8:	08d4ac23          	sw	a3,152(s1)
    800074ec:	00070c9b          	sext.w	s9,a4
    800074f0:	f5371ee3          	bne	a4,s3,8000744c <consoleread+0x88>
    800074f4:	000b851b          	sext.w	a0,s7
    800074f8:	f96bf2e3          	bgeu	s7,s6,8000747c <consoleread+0xb8>
    800074fc:	08f4ac23          	sw	a5,152(s1)
    80007500:	f7dff06f          	j	8000747c <consoleread+0xb8>

0000000080007504 <consputc>:
    80007504:	10000793          	li	a5,256
    80007508:	00f50663          	beq	a0,a5,80007514 <consputc+0x10>
    8000750c:	00001317          	auipc	t1,0x1
    80007510:	9f430067          	jr	-1548(t1) # 80007f00 <uartputc_sync>
    80007514:	ff010113          	addi	sp,sp,-16
    80007518:	00113423          	sd	ra,8(sp)
    8000751c:	00813023          	sd	s0,0(sp)
    80007520:	01010413          	addi	s0,sp,16
    80007524:	00800513          	li	a0,8
    80007528:	00001097          	auipc	ra,0x1
    8000752c:	9d8080e7          	jalr	-1576(ra) # 80007f00 <uartputc_sync>
    80007530:	02000513          	li	a0,32
    80007534:	00001097          	auipc	ra,0x1
    80007538:	9cc080e7          	jalr	-1588(ra) # 80007f00 <uartputc_sync>
    8000753c:	00013403          	ld	s0,0(sp)
    80007540:	00813083          	ld	ra,8(sp)
    80007544:	00800513          	li	a0,8
    80007548:	01010113          	addi	sp,sp,16
    8000754c:	00001317          	auipc	t1,0x1
    80007550:	9b430067          	jr	-1612(t1) # 80007f00 <uartputc_sync>

0000000080007554 <consoleintr>:
    80007554:	fe010113          	addi	sp,sp,-32
    80007558:	00813823          	sd	s0,16(sp)
    8000755c:	00913423          	sd	s1,8(sp)
    80007560:	01213023          	sd	s2,0(sp)
    80007564:	00113c23          	sd	ra,24(sp)
    80007568:	02010413          	addi	s0,sp,32
    8000756c:	00005917          	auipc	s2,0x5
    80007570:	70c90913          	addi	s2,s2,1804 # 8000cc78 <cons>
    80007574:	00050493          	mv	s1,a0
    80007578:	00090513          	mv	a0,s2
    8000757c:	00001097          	auipc	ra,0x1
    80007580:	e40080e7          	jalr	-448(ra) # 800083bc <acquire>
    80007584:	02048c63          	beqz	s1,800075bc <consoleintr+0x68>
    80007588:	0a092783          	lw	a5,160(s2)
    8000758c:	09892703          	lw	a4,152(s2)
    80007590:	07f00693          	li	a3,127
    80007594:	40e7873b          	subw	a4,a5,a4
    80007598:	02e6e263          	bltu	a3,a4,800075bc <consoleintr+0x68>
    8000759c:	00d00713          	li	a4,13
    800075a0:	04e48063          	beq	s1,a4,800075e0 <consoleintr+0x8c>
    800075a4:	07f7f713          	andi	a4,a5,127
    800075a8:	00e90733          	add	a4,s2,a4
    800075ac:	0017879b          	addiw	a5,a5,1
    800075b0:	0af92023          	sw	a5,160(s2)
    800075b4:	00970c23          	sb	s1,24(a4)
    800075b8:	08f92e23          	sw	a5,156(s2)
    800075bc:	01013403          	ld	s0,16(sp)
    800075c0:	01813083          	ld	ra,24(sp)
    800075c4:	00813483          	ld	s1,8(sp)
    800075c8:	00013903          	ld	s2,0(sp)
    800075cc:	00005517          	auipc	a0,0x5
    800075d0:	6ac50513          	addi	a0,a0,1708 # 8000cc78 <cons>
    800075d4:	02010113          	addi	sp,sp,32
    800075d8:	00001317          	auipc	t1,0x1
    800075dc:	eb030067          	jr	-336(t1) # 80008488 <release>
    800075e0:	00a00493          	li	s1,10
    800075e4:	fc1ff06f          	j	800075a4 <consoleintr+0x50>

00000000800075e8 <consoleinit>:
    800075e8:	fe010113          	addi	sp,sp,-32
    800075ec:	00113c23          	sd	ra,24(sp)
    800075f0:	00813823          	sd	s0,16(sp)
    800075f4:	00913423          	sd	s1,8(sp)
    800075f8:	02010413          	addi	s0,sp,32
    800075fc:	00005497          	auipc	s1,0x5
    80007600:	67c48493          	addi	s1,s1,1660 # 8000cc78 <cons>
    80007604:	00048513          	mv	a0,s1
    80007608:	00002597          	auipc	a1,0x2
    8000760c:	0d058593          	addi	a1,a1,208 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007610:	00001097          	auipc	ra,0x1
    80007614:	d88080e7          	jalr	-632(ra) # 80008398 <initlock>
    80007618:	00000097          	auipc	ra,0x0
    8000761c:	7ac080e7          	jalr	1964(ra) # 80007dc4 <uartinit>
    80007620:	01813083          	ld	ra,24(sp)
    80007624:	01013403          	ld	s0,16(sp)
    80007628:	00000797          	auipc	a5,0x0
    8000762c:	d9c78793          	addi	a5,a5,-612 # 800073c4 <consoleread>
    80007630:	0af4bc23          	sd	a5,184(s1)
    80007634:	00000797          	auipc	a5,0x0
    80007638:	cec78793          	addi	a5,a5,-788 # 80007320 <consolewrite>
    8000763c:	0cf4b023          	sd	a5,192(s1)
    80007640:	00813483          	ld	s1,8(sp)
    80007644:	02010113          	addi	sp,sp,32
    80007648:	00008067          	ret

000000008000764c <console_read>:
    8000764c:	ff010113          	addi	sp,sp,-16
    80007650:	00813423          	sd	s0,8(sp)
    80007654:	01010413          	addi	s0,sp,16
    80007658:	00813403          	ld	s0,8(sp)
    8000765c:	00005317          	auipc	t1,0x5
    80007660:	6d433303          	ld	t1,1748(t1) # 8000cd30 <devsw+0x10>
    80007664:	01010113          	addi	sp,sp,16
    80007668:	00030067          	jr	t1

000000008000766c <console_write>:
    8000766c:	ff010113          	addi	sp,sp,-16
    80007670:	00813423          	sd	s0,8(sp)
    80007674:	01010413          	addi	s0,sp,16
    80007678:	00813403          	ld	s0,8(sp)
    8000767c:	00005317          	auipc	t1,0x5
    80007680:	6bc33303          	ld	t1,1724(t1) # 8000cd38 <devsw+0x18>
    80007684:	01010113          	addi	sp,sp,16
    80007688:	00030067          	jr	t1

000000008000768c <panic>:
    8000768c:	fe010113          	addi	sp,sp,-32
    80007690:	00113c23          	sd	ra,24(sp)
    80007694:	00813823          	sd	s0,16(sp)
    80007698:	00913423          	sd	s1,8(sp)
    8000769c:	02010413          	addi	s0,sp,32
    800076a0:	00050493          	mv	s1,a0
    800076a4:	00002517          	auipc	a0,0x2
    800076a8:	03c50513          	addi	a0,a0,60 # 800096e0 <CONSOLE_STATUS+0x6d0>
    800076ac:	00005797          	auipc	a5,0x5
    800076b0:	7207a623          	sw	zero,1836(a5) # 8000cdd8 <pr+0x18>
    800076b4:	00000097          	auipc	ra,0x0
    800076b8:	034080e7          	jalr	52(ra) # 800076e8 <__printf>
    800076bc:	00048513          	mv	a0,s1
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	028080e7          	jalr	40(ra) # 800076e8 <__printf>
    800076c8:	00002517          	auipc	a0,0x2
    800076cc:	da050513          	addi	a0,a0,-608 # 80009468 <CONSOLE_STATUS+0x458>
    800076d0:	00000097          	auipc	ra,0x0
    800076d4:	018080e7          	jalr	24(ra) # 800076e8 <__printf>
    800076d8:	00100793          	li	a5,1
    800076dc:	00004717          	auipc	a4,0x4
    800076e0:	36f72e23          	sw	a5,892(a4) # 8000ba58 <panicked>
    800076e4:	0000006f          	j	800076e4 <panic+0x58>

00000000800076e8 <__printf>:
    800076e8:	f3010113          	addi	sp,sp,-208
    800076ec:	08813023          	sd	s0,128(sp)
    800076f0:	07313423          	sd	s3,104(sp)
    800076f4:	09010413          	addi	s0,sp,144
    800076f8:	05813023          	sd	s8,64(sp)
    800076fc:	08113423          	sd	ra,136(sp)
    80007700:	06913c23          	sd	s1,120(sp)
    80007704:	07213823          	sd	s2,112(sp)
    80007708:	07413023          	sd	s4,96(sp)
    8000770c:	05513c23          	sd	s5,88(sp)
    80007710:	05613823          	sd	s6,80(sp)
    80007714:	05713423          	sd	s7,72(sp)
    80007718:	03913c23          	sd	s9,56(sp)
    8000771c:	03a13823          	sd	s10,48(sp)
    80007720:	03b13423          	sd	s11,40(sp)
    80007724:	00005317          	auipc	t1,0x5
    80007728:	69c30313          	addi	t1,t1,1692 # 8000cdc0 <pr>
    8000772c:	01832c03          	lw	s8,24(t1)
    80007730:	00b43423          	sd	a1,8(s0)
    80007734:	00c43823          	sd	a2,16(s0)
    80007738:	00d43c23          	sd	a3,24(s0)
    8000773c:	02e43023          	sd	a4,32(s0)
    80007740:	02f43423          	sd	a5,40(s0)
    80007744:	03043823          	sd	a6,48(s0)
    80007748:	03143c23          	sd	a7,56(s0)
    8000774c:	00050993          	mv	s3,a0
    80007750:	4a0c1663          	bnez	s8,80007bfc <__printf+0x514>
    80007754:	60098c63          	beqz	s3,80007d6c <__printf+0x684>
    80007758:	0009c503          	lbu	a0,0(s3)
    8000775c:	00840793          	addi	a5,s0,8
    80007760:	f6f43c23          	sd	a5,-136(s0)
    80007764:	00000493          	li	s1,0
    80007768:	22050063          	beqz	a0,80007988 <__printf+0x2a0>
    8000776c:	00002a37          	lui	s4,0x2
    80007770:	00018ab7          	lui	s5,0x18
    80007774:	000f4b37          	lui	s6,0xf4
    80007778:	00989bb7          	lui	s7,0x989
    8000777c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007780:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007784:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007788:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000778c:	00148c9b          	addiw	s9,s1,1
    80007790:	02500793          	li	a5,37
    80007794:	01998933          	add	s2,s3,s9
    80007798:	38f51263          	bne	a0,a5,80007b1c <__printf+0x434>
    8000779c:	00094783          	lbu	a5,0(s2)
    800077a0:	00078c9b          	sext.w	s9,a5
    800077a4:	1e078263          	beqz	a5,80007988 <__printf+0x2a0>
    800077a8:	0024849b          	addiw	s1,s1,2
    800077ac:	07000713          	li	a4,112
    800077b0:	00998933          	add	s2,s3,s1
    800077b4:	38e78a63          	beq	a5,a4,80007b48 <__printf+0x460>
    800077b8:	20f76863          	bltu	a4,a5,800079c8 <__printf+0x2e0>
    800077bc:	42a78863          	beq	a5,a0,80007bec <__printf+0x504>
    800077c0:	06400713          	li	a4,100
    800077c4:	40e79663          	bne	a5,a4,80007bd0 <__printf+0x4e8>
    800077c8:	f7843783          	ld	a5,-136(s0)
    800077cc:	0007a603          	lw	a2,0(a5)
    800077d0:	00878793          	addi	a5,a5,8
    800077d4:	f6f43c23          	sd	a5,-136(s0)
    800077d8:	42064a63          	bltz	a2,80007c0c <__printf+0x524>
    800077dc:	00a00713          	li	a4,10
    800077e0:	02e677bb          	remuw	a5,a2,a4
    800077e4:	00002d97          	auipc	s11,0x2
    800077e8:	f24d8d93          	addi	s11,s11,-220 # 80009708 <digits>
    800077ec:	00900593          	li	a1,9
    800077f0:	0006051b          	sext.w	a0,a2
    800077f4:	00000c93          	li	s9,0
    800077f8:	02079793          	slli	a5,a5,0x20
    800077fc:	0207d793          	srli	a5,a5,0x20
    80007800:	00fd87b3          	add	a5,s11,a5
    80007804:	0007c783          	lbu	a5,0(a5)
    80007808:	02e656bb          	divuw	a3,a2,a4
    8000780c:	f8f40023          	sb	a5,-128(s0)
    80007810:	14c5d863          	bge	a1,a2,80007960 <__printf+0x278>
    80007814:	06300593          	li	a1,99
    80007818:	00100c93          	li	s9,1
    8000781c:	02e6f7bb          	remuw	a5,a3,a4
    80007820:	02079793          	slli	a5,a5,0x20
    80007824:	0207d793          	srli	a5,a5,0x20
    80007828:	00fd87b3          	add	a5,s11,a5
    8000782c:	0007c783          	lbu	a5,0(a5)
    80007830:	02e6d73b          	divuw	a4,a3,a4
    80007834:	f8f400a3          	sb	a5,-127(s0)
    80007838:	12a5f463          	bgeu	a1,a0,80007960 <__printf+0x278>
    8000783c:	00a00693          	li	a3,10
    80007840:	00900593          	li	a1,9
    80007844:	02d777bb          	remuw	a5,a4,a3
    80007848:	02079793          	slli	a5,a5,0x20
    8000784c:	0207d793          	srli	a5,a5,0x20
    80007850:	00fd87b3          	add	a5,s11,a5
    80007854:	0007c503          	lbu	a0,0(a5)
    80007858:	02d757bb          	divuw	a5,a4,a3
    8000785c:	f8a40123          	sb	a0,-126(s0)
    80007860:	48e5f263          	bgeu	a1,a4,80007ce4 <__printf+0x5fc>
    80007864:	06300513          	li	a0,99
    80007868:	02d7f5bb          	remuw	a1,a5,a3
    8000786c:	02059593          	slli	a1,a1,0x20
    80007870:	0205d593          	srli	a1,a1,0x20
    80007874:	00bd85b3          	add	a1,s11,a1
    80007878:	0005c583          	lbu	a1,0(a1)
    8000787c:	02d7d7bb          	divuw	a5,a5,a3
    80007880:	f8b401a3          	sb	a1,-125(s0)
    80007884:	48e57263          	bgeu	a0,a4,80007d08 <__printf+0x620>
    80007888:	3e700513          	li	a0,999
    8000788c:	02d7f5bb          	remuw	a1,a5,a3
    80007890:	02059593          	slli	a1,a1,0x20
    80007894:	0205d593          	srli	a1,a1,0x20
    80007898:	00bd85b3          	add	a1,s11,a1
    8000789c:	0005c583          	lbu	a1,0(a1)
    800078a0:	02d7d7bb          	divuw	a5,a5,a3
    800078a4:	f8b40223          	sb	a1,-124(s0)
    800078a8:	46e57663          	bgeu	a0,a4,80007d14 <__printf+0x62c>
    800078ac:	02d7f5bb          	remuw	a1,a5,a3
    800078b0:	02059593          	slli	a1,a1,0x20
    800078b4:	0205d593          	srli	a1,a1,0x20
    800078b8:	00bd85b3          	add	a1,s11,a1
    800078bc:	0005c583          	lbu	a1,0(a1)
    800078c0:	02d7d7bb          	divuw	a5,a5,a3
    800078c4:	f8b402a3          	sb	a1,-123(s0)
    800078c8:	46ea7863          	bgeu	s4,a4,80007d38 <__printf+0x650>
    800078cc:	02d7f5bb          	remuw	a1,a5,a3
    800078d0:	02059593          	slli	a1,a1,0x20
    800078d4:	0205d593          	srli	a1,a1,0x20
    800078d8:	00bd85b3          	add	a1,s11,a1
    800078dc:	0005c583          	lbu	a1,0(a1)
    800078e0:	02d7d7bb          	divuw	a5,a5,a3
    800078e4:	f8b40323          	sb	a1,-122(s0)
    800078e8:	3eeaf863          	bgeu	s5,a4,80007cd8 <__printf+0x5f0>
    800078ec:	02d7f5bb          	remuw	a1,a5,a3
    800078f0:	02059593          	slli	a1,a1,0x20
    800078f4:	0205d593          	srli	a1,a1,0x20
    800078f8:	00bd85b3          	add	a1,s11,a1
    800078fc:	0005c583          	lbu	a1,0(a1)
    80007900:	02d7d7bb          	divuw	a5,a5,a3
    80007904:	f8b403a3          	sb	a1,-121(s0)
    80007908:	42eb7e63          	bgeu	s6,a4,80007d44 <__printf+0x65c>
    8000790c:	02d7f5bb          	remuw	a1,a5,a3
    80007910:	02059593          	slli	a1,a1,0x20
    80007914:	0205d593          	srli	a1,a1,0x20
    80007918:	00bd85b3          	add	a1,s11,a1
    8000791c:	0005c583          	lbu	a1,0(a1)
    80007920:	02d7d7bb          	divuw	a5,a5,a3
    80007924:	f8b40423          	sb	a1,-120(s0)
    80007928:	42ebfc63          	bgeu	s7,a4,80007d60 <__printf+0x678>
    8000792c:	02079793          	slli	a5,a5,0x20
    80007930:	0207d793          	srli	a5,a5,0x20
    80007934:	00fd8db3          	add	s11,s11,a5
    80007938:	000dc703          	lbu	a4,0(s11)
    8000793c:	00a00793          	li	a5,10
    80007940:	00900c93          	li	s9,9
    80007944:	f8e404a3          	sb	a4,-119(s0)
    80007948:	00065c63          	bgez	a2,80007960 <__printf+0x278>
    8000794c:	f9040713          	addi	a4,s0,-112
    80007950:	00f70733          	add	a4,a4,a5
    80007954:	02d00693          	li	a3,45
    80007958:	fed70823          	sb	a3,-16(a4)
    8000795c:	00078c93          	mv	s9,a5
    80007960:	f8040793          	addi	a5,s0,-128
    80007964:	01978cb3          	add	s9,a5,s9
    80007968:	f7f40d13          	addi	s10,s0,-129
    8000796c:	000cc503          	lbu	a0,0(s9)
    80007970:	fffc8c93          	addi	s9,s9,-1
    80007974:	00000097          	auipc	ra,0x0
    80007978:	b90080e7          	jalr	-1136(ra) # 80007504 <consputc>
    8000797c:	ffac98e3          	bne	s9,s10,8000796c <__printf+0x284>
    80007980:	00094503          	lbu	a0,0(s2)
    80007984:	e00514e3          	bnez	a0,8000778c <__printf+0xa4>
    80007988:	1a0c1663          	bnez	s8,80007b34 <__printf+0x44c>
    8000798c:	08813083          	ld	ra,136(sp)
    80007990:	08013403          	ld	s0,128(sp)
    80007994:	07813483          	ld	s1,120(sp)
    80007998:	07013903          	ld	s2,112(sp)
    8000799c:	06813983          	ld	s3,104(sp)
    800079a0:	06013a03          	ld	s4,96(sp)
    800079a4:	05813a83          	ld	s5,88(sp)
    800079a8:	05013b03          	ld	s6,80(sp)
    800079ac:	04813b83          	ld	s7,72(sp)
    800079b0:	04013c03          	ld	s8,64(sp)
    800079b4:	03813c83          	ld	s9,56(sp)
    800079b8:	03013d03          	ld	s10,48(sp)
    800079bc:	02813d83          	ld	s11,40(sp)
    800079c0:	0d010113          	addi	sp,sp,208
    800079c4:	00008067          	ret
    800079c8:	07300713          	li	a4,115
    800079cc:	1ce78a63          	beq	a5,a4,80007ba0 <__printf+0x4b8>
    800079d0:	07800713          	li	a4,120
    800079d4:	1ee79e63          	bne	a5,a4,80007bd0 <__printf+0x4e8>
    800079d8:	f7843783          	ld	a5,-136(s0)
    800079dc:	0007a703          	lw	a4,0(a5)
    800079e0:	00878793          	addi	a5,a5,8
    800079e4:	f6f43c23          	sd	a5,-136(s0)
    800079e8:	28074263          	bltz	a4,80007c6c <__printf+0x584>
    800079ec:	00002d97          	auipc	s11,0x2
    800079f0:	d1cd8d93          	addi	s11,s11,-740 # 80009708 <digits>
    800079f4:	00f77793          	andi	a5,a4,15
    800079f8:	00fd87b3          	add	a5,s11,a5
    800079fc:	0007c683          	lbu	a3,0(a5)
    80007a00:	00f00613          	li	a2,15
    80007a04:	0007079b          	sext.w	a5,a4
    80007a08:	f8d40023          	sb	a3,-128(s0)
    80007a0c:	0047559b          	srliw	a1,a4,0x4
    80007a10:	0047569b          	srliw	a3,a4,0x4
    80007a14:	00000c93          	li	s9,0
    80007a18:	0ee65063          	bge	a2,a4,80007af8 <__printf+0x410>
    80007a1c:	00f6f693          	andi	a3,a3,15
    80007a20:	00dd86b3          	add	a3,s11,a3
    80007a24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007a28:	0087d79b          	srliw	a5,a5,0x8
    80007a2c:	00100c93          	li	s9,1
    80007a30:	f8d400a3          	sb	a3,-127(s0)
    80007a34:	0cb67263          	bgeu	a2,a1,80007af8 <__printf+0x410>
    80007a38:	00f7f693          	andi	a3,a5,15
    80007a3c:	00dd86b3          	add	a3,s11,a3
    80007a40:	0006c583          	lbu	a1,0(a3)
    80007a44:	00f00613          	li	a2,15
    80007a48:	0047d69b          	srliw	a3,a5,0x4
    80007a4c:	f8b40123          	sb	a1,-126(s0)
    80007a50:	0047d593          	srli	a1,a5,0x4
    80007a54:	28f67e63          	bgeu	a2,a5,80007cf0 <__printf+0x608>
    80007a58:	00f6f693          	andi	a3,a3,15
    80007a5c:	00dd86b3          	add	a3,s11,a3
    80007a60:	0006c503          	lbu	a0,0(a3)
    80007a64:	0087d813          	srli	a6,a5,0x8
    80007a68:	0087d69b          	srliw	a3,a5,0x8
    80007a6c:	f8a401a3          	sb	a0,-125(s0)
    80007a70:	28b67663          	bgeu	a2,a1,80007cfc <__printf+0x614>
    80007a74:	00f6f693          	andi	a3,a3,15
    80007a78:	00dd86b3          	add	a3,s11,a3
    80007a7c:	0006c583          	lbu	a1,0(a3)
    80007a80:	00c7d513          	srli	a0,a5,0xc
    80007a84:	00c7d69b          	srliw	a3,a5,0xc
    80007a88:	f8b40223          	sb	a1,-124(s0)
    80007a8c:	29067a63          	bgeu	a2,a6,80007d20 <__printf+0x638>
    80007a90:	00f6f693          	andi	a3,a3,15
    80007a94:	00dd86b3          	add	a3,s11,a3
    80007a98:	0006c583          	lbu	a1,0(a3)
    80007a9c:	0107d813          	srli	a6,a5,0x10
    80007aa0:	0107d69b          	srliw	a3,a5,0x10
    80007aa4:	f8b402a3          	sb	a1,-123(s0)
    80007aa8:	28a67263          	bgeu	a2,a0,80007d2c <__printf+0x644>
    80007aac:	00f6f693          	andi	a3,a3,15
    80007ab0:	00dd86b3          	add	a3,s11,a3
    80007ab4:	0006c683          	lbu	a3,0(a3)
    80007ab8:	0147d79b          	srliw	a5,a5,0x14
    80007abc:	f8d40323          	sb	a3,-122(s0)
    80007ac0:	21067663          	bgeu	a2,a6,80007ccc <__printf+0x5e4>
    80007ac4:	02079793          	slli	a5,a5,0x20
    80007ac8:	0207d793          	srli	a5,a5,0x20
    80007acc:	00fd8db3          	add	s11,s11,a5
    80007ad0:	000dc683          	lbu	a3,0(s11)
    80007ad4:	00800793          	li	a5,8
    80007ad8:	00700c93          	li	s9,7
    80007adc:	f8d403a3          	sb	a3,-121(s0)
    80007ae0:	00075c63          	bgez	a4,80007af8 <__printf+0x410>
    80007ae4:	f9040713          	addi	a4,s0,-112
    80007ae8:	00f70733          	add	a4,a4,a5
    80007aec:	02d00693          	li	a3,45
    80007af0:	fed70823          	sb	a3,-16(a4)
    80007af4:	00078c93          	mv	s9,a5
    80007af8:	f8040793          	addi	a5,s0,-128
    80007afc:	01978cb3          	add	s9,a5,s9
    80007b00:	f7f40d13          	addi	s10,s0,-129
    80007b04:	000cc503          	lbu	a0,0(s9)
    80007b08:	fffc8c93          	addi	s9,s9,-1
    80007b0c:	00000097          	auipc	ra,0x0
    80007b10:	9f8080e7          	jalr	-1544(ra) # 80007504 <consputc>
    80007b14:	ff9d18e3          	bne	s10,s9,80007b04 <__printf+0x41c>
    80007b18:	0100006f          	j	80007b28 <__printf+0x440>
    80007b1c:	00000097          	auipc	ra,0x0
    80007b20:	9e8080e7          	jalr	-1560(ra) # 80007504 <consputc>
    80007b24:	000c8493          	mv	s1,s9
    80007b28:	00094503          	lbu	a0,0(s2)
    80007b2c:	c60510e3          	bnez	a0,8000778c <__printf+0xa4>
    80007b30:	e40c0ee3          	beqz	s8,8000798c <__printf+0x2a4>
    80007b34:	00005517          	auipc	a0,0x5
    80007b38:	28c50513          	addi	a0,a0,652 # 8000cdc0 <pr>
    80007b3c:	00001097          	auipc	ra,0x1
    80007b40:	94c080e7          	jalr	-1716(ra) # 80008488 <release>
    80007b44:	e49ff06f          	j	8000798c <__printf+0x2a4>
    80007b48:	f7843783          	ld	a5,-136(s0)
    80007b4c:	03000513          	li	a0,48
    80007b50:	01000d13          	li	s10,16
    80007b54:	00878713          	addi	a4,a5,8
    80007b58:	0007bc83          	ld	s9,0(a5)
    80007b5c:	f6e43c23          	sd	a4,-136(s0)
    80007b60:	00000097          	auipc	ra,0x0
    80007b64:	9a4080e7          	jalr	-1628(ra) # 80007504 <consputc>
    80007b68:	07800513          	li	a0,120
    80007b6c:	00000097          	auipc	ra,0x0
    80007b70:	998080e7          	jalr	-1640(ra) # 80007504 <consputc>
    80007b74:	00002d97          	auipc	s11,0x2
    80007b78:	b94d8d93          	addi	s11,s11,-1132 # 80009708 <digits>
    80007b7c:	03ccd793          	srli	a5,s9,0x3c
    80007b80:	00fd87b3          	add	a5,s11,a5
    80007b84:	0007c503          	lbu	a0,0(a5)
    80007b88:	fffd0d1b          	addiw	s10,s10,-1
    80007b8c:	004c9c93          	slli	s9,s9,0x4
    80007b90:	00000097          	auipc	ra,0x0
    80007b94:	974080e7          	jalr	-1676(ra) # 80007504 <consputc>
    80007b98:	fe0d12e3          	bnez	s10,80007b7c <__printf+0x494>
    80007b9c:	f8dff06f          	j	80007b28 <__printf+0x440>
    80007ba0:	f7843783          	ld	a5,-136(s0)
    80007ba4:	0007bc83          	ld	s9,0(a5)
    80007ba8:	00878793          	addi	a5,a5,8
    80007bac:	f6f43c23          	sd	a5,-136(s0)
    80007bb0:	000c9a63          	bnez	s9,80007bc4 <__printf+0x4dc>
    80007bb4:	1080006f          	j	80007cbc <__printf+0x5d4>
    80007bb8:	001c8c93          	addi	s9,s9,1
    80007bbc:	00000097          	auipc	ra,0x0
    80007bc0:	948080e7          	jalr	-1720(ra) # 80007504 <consputc>
    80007bc4:	000cc503          	lbu	a0,0(s9)
    80007bc8:	fe0518e3          	bnez	a0,80007bb8 <__printf+0x4d0>
    80007bcc:	f5dff06f          	j	80007b28 <__printf+0x440>
    80007bd0:	02500513          	li	a0,37
    80007bd4:	00000097          	auipc	ra,0x0
    80007bd8:	930080e7          	jalr	-1744(ra) # 80007504 <consputc>
    80007bdc:	000c8513          	mv	a0,s9
    80007be0:	00000097          	auipc	ra,0x0
    80007be4:	924080e7          	jalr	-1756(ra) # 80007504 <consputc>
    80007be8:	f41ff06f          	j	80007b28 <__printf+0x440>
    80007bec:	02500513          	li	a0,37
    80007bf0:	00000097          	auipc	ra,0x0
    80007bf4:	914080e7          	jalr	-1772(ra) # 80007504 <consputc>
    80007bf8:	f31ff06f          	j	80007b28 <__printf+0x440>
    80007bfc:	00030513          	mv	a0,t1
    80007c00:	00000097          	auipc	ra,0x0
    80007c04:	7bc080e7          	jalr	1980(ra) # 800083bc <acquire>
    80007c08:	b4dff06f          	j	80007754 <__printf+0x6c>
    80007c0c:	40c0053b          	negw	a0,a2
    80007c10:	00a00713          	li	a4,10
    80007c14:	02e576bb          	remuw	a3,a0,a4
    80007c18:	00002d97          	auipc	s11,0x2
    80007c1c:	af0d8d93          	addi	s11,s11,-1296 # 80009708 <digits>
    80007c20:	ff700593          	li	a1,-9
    80007c24:	02069693          	slli	a3,a3,0x20
    80007c28:	0206d693          	srli	a3,a3,0x20
    80007c2c:	00dd86b3          	add	a3,s11,a3
    80007c30:	0006c683          	lbu	a3,0(a3)
    80007c34:	02e557bb          	divuw	a5,a0,a4
    80007c38:	f8d40023          	sb	a3,-128(s0)
    80007c3c:	10b65e63          	bge	a2,a1,80007d58 <__printf+0x670>
    80007c40:	06300593          	li	a1,99
    80007c44:	02e7f6bb          	remuw	a3,a5,a4
    80007c48:	02069693          	slli	a3,a3,0x20
    80007c4c:	0206d693          	srli	a3,a3,0x20
    80007c50:	00dd86b3          	add	a3,s11,a3
    80007c54:	0006c683          	lbu	a3,0(a3)
    80007c58:	02e7d73b          	divuw	a4,a5,a4
    80007c5c:	00200793          	li	a5,2
    80007c60:	f8d400a3          	sb	a3,-127(s0)
    80007c64:	bca5ece3          	bltu	a1,a0,8000783c <__printf+0x154>
    80007c68:	ce5ff06f          	j	8000794c <__printf+0x264>
    80007c6c:	40e007bb          	negw	a5,a4
    80007c70:	00002d97          	auipc	s11,0x2
    80007c74:	a98d8d93          	addi	s11,s11,-1384 # 80009708 <digits>
    80007c78:	00f7f693          	andi	a3,a5,15
    80007c7c:	00dd86b3          	add	a3,s11,a3
    80007c80:	0006c583          	lbu	a1,0(a3)
    80007c84:	ff100613          	li	a2,-15
    80007c88:	0047d69b          	srliw	a3,a5,0x4
    80007c8c:	f8b40023          	sb	a1,-128(s0)
    80007c90:	0047d59b          	srliw	a1,a5,0x4
    80007c94:	0ac75e63          	bge	a4,a2,80007d50 <__printf+0x668>
    80007c98:	00f6f693          	andi	a3,a3,15
    80007c9c:	00dd86b3          	add	a3,s11,a3
    80007ca0:	0006c603          	lbu	a2,0(a3)
    80007ca4:	00f00693          	li	a3,15
    80007ca8:	0087d79b          	srliw	a5,a5,0x8
    80007cac:	f8c400a3          	sb	a2,-127(s0)
    80007cb0:	d8b6e4e3          	bltu	a3,a1,80007a38 <__printf+0x350>
    80007cb4:	00200793          	li	a5,2
    80007cb8:	e2dff06f          	j	80007ae4 <__printf+0x3fc>
    80007cbc:	00002c97          	auipc	s9,0x2
    80007cc0:	a2cc8c93          	addi	s9,s9,-1492 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007cc4:	02800513          	li	a0,40
    80007cc8:	ef1ff06f          	j	80007bb8 <__printf+0x4d0>
    80007ccc:	00700793          	li	a5,7
    80007cd0:	00600c93          	li	s9,6
    80007cd4:	e0dff06f          	j	80007ae0 <__printf+0x3f8>
    80007cd8:	00700793          	li	a5,7
    80007cdc:	00600c93          	li	s9,6
    80007ce0:	c69ff06f          	j	80007948 <__printf+0x260>
    80007ce4:	00300793          	li	a5,3
    80007ce8:	00200c93          	li	s9,2
    80007cec:	c5dff06f          	j	80007948 <__printf+0x260>
    80007cf0:	00300793          	li	a5,3
    80007cf4:	00200c93          	li	s9,2
    80007cf8:	de9ff06f          	j	80007ae0 <__printf+0x3f8>
    80007cfc:	00400793          	li	a5,4
    80007d00:	00300c93          	li	s9,3
    80007d04:	dddff06f          	j	80007ae0 <__printf+0x3f8>
    80007d08:	00400793          	li	a5,4
    80007d0c:	00300c93          	li	s9,3
    80007d10:	c39ff06f          	j	80007948 <__printf+0x260>
    80007d14:	00500793          	li	a5,5
    80007d18:	00400c93          	li	s9,4
    80007d1c:	c2dff06f          	j	80007948 <__printf+0x260>
    80007d20:	00500793          	li	a5,5
    80007d24:	00400c93          	li	s9,4
    80007d28:	db9ff06f          	j	80007ae0 <__printf+0x3f8>
    80007d2c:	00600793          	li	a5,6
    80007d30:	00500c93          	li	s9,5
    80007d34:	dadff06f          	j	80007ae0 <__printf+0x3f8>
    80007d38:	00600793          	li	a5,6
    80007d3c:	00500c93          	li	s9,5
    80007d40:	c09ff06f          	j	80007948 <__printf+0x260>
    80007d44:	00800793          	li	a5,8
    80007d48:	00700c93          	li	s9,7
    80007d4c:	bfdff06f          	j	80007948 <__printf+0x260>
    80007d50:	00100793          	li	a5,1
    80007d54:	d91ff06f          	j	80007ae4 <__printf+0x3fc>
    80007d58:	00100793          	li	a5,1
    80007d5c:	bf1ff06f          	j	8000794c <__printf+0x264>
    80007d60:	00900793          	li	a5,9
    80007d64:	00800c93          	li	s9,8
    80007d68:	be1ff06f          	j	80007948 <__printf+0x260>
    80007d6c:	00002517          	auipc	a0,0x2
    80007d70:	98450513          	addi	a0,a0,-1660 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80007d74:	00000097          	auipc	ra,0x0
    80007d78:	918080e7          	jalr	-1768(ra) # 8000768c <panic>

0000000080007d7c <printfinit>:
    80007d7c:	fe010113          	addi	sp,sp,-32
    80007d80:	00813823          	sd	s0,16(sp)
    80007d84:	00913423          	sd	s1,8(sp)
    80007d88:	00113c23          	sd	ra,24(sp)
    80007d8c:	02010413          	addi	s0,sp,32
    80007d90:	00005497          	auipc	s1,0x5
    80007d94:	03048493          	addi	s1,s1,48 # 8000cdc0 <pr>
    80007d98:	00048513          	mv	a0,s1
    80007d9c:	00002597          	auipc	a1,0x2
    80007da0:	96458593          	addi	a1,a1,-1692 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007da4:	00000097          	auipc	ra,0x0
    80007da8:	5f4080e7          	jalr	1524(ra) # 80008398 <initlock>
    80007dac:	01813083          	ld	ra,24(sp)
    80007db0:	01013403          	ld	s0,16(sp)
    80007db4:	0004ac23          	sw	zero,24(s1)
    80007db8:	00813483          	ld	s1,8(sp)
    80007dbc:	02010113          	addi	sp,sp,32
    80007dc0:	00008067          	ret

0000000080007dc4 <uartinit>:
    80007dc4:	ff010113          	addi	sp,sp,-16
    80007dc8:	00813423          	sd	s0,8(sp)
    80007dcc:	01010413          	addi	s0,sp,16
    80007dd0:	100007b7          	lui	a5,0x10000
    80007dd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007dd8:	f8000713          	li	a4,-128
    80007ddc:	00e781a3          	sb	a4,3(a5)
    80007de0:	00300713          	li	a4,3
    80007de4:	00e78023          	sb	a4,0(a5)
    80007de8:	000780a3          	sb	zero,1(a5)
    80007dec:	00e781a3          	sb	a4,3(a5)
    80007df0:	00700693          	li	a3,7
    80007df4:	00d78123          	sb	a3,2(a5)
    80007df8:	00e780a3          	sb	a4,1(a5)
    80007dfc:	00813403          	ld	s0,8(sp)
    80007e00:	01010113          	addi	sp,sp,16
    80007e04:	00008067          	ret

0000000080007e08 <uartputc>:
    80007e08:	00004797          	auipc	a5,0x4
    80007e0c:	c507a783          	lw	a5,-944(a5) # 8000ba58 <panicked>
    80007e10:	00078463          	beqz	a5,80007e18 <uartputc+0x10>
    80007e14:	0000006f          	j	80007e14 <uartputc+0xc>
    80007e18:	fd010113          	addi	sp,sp,-48
    80007e1c:	02813023          	sd	s0,32(sp)
    80007e20:	00913c23          	sd	s1,24(sp)
    80007e24:	01213823          	sd	s2,16(sp)
    80007e28:	01313423          	sd	s3,8(sp)
    80007e2c:	02113423          	sd	ra,40(sp)
    80007e30:	03010413          	addi	s0,sp,48
    80007e34:	00004917          	auipc	s2,0x4
    80007e38:	c2c90913          	addi	s2,s2,-980 # 8000ba60 <uart_tx_r>
    80007e3c:	00093783          	ld	a5,0(s2)
    80007e40:	00004497          	auipc	s1,0x4
    80007e44:	c2848493          	addi	s1,s1,-984 # 8000ba68 <uart_tx_w>
    80007e48:	0004b703          	ld	a4,0(s1)
    80007e4c:	02078693          	addi	a3,a5,32
    80007e50:	00050993          	mv	s3,a0
    80007e54:	02e69c63          	bne	a3,a4,80007e8c <uartputc+0x84>
    80007e58:	00001097          	auipc	ra,0x1
    80007e5c:	834080e7          	jalr	-1996(ra) # 8000868c <push_on>
    80007e60:	00093783          	ld	a5,0(s2)
    80007e64:	0004b703          	ld	a4,0(s1)
    80007e68:	02078793          	addi	a5,a5,32
    80007e6c:	00e79463          	bne	a5,a4,80007e74 <uartputc+0x6c>
    80007e70:	0000006f          	j	80007e70 <uartputc+0x68>
    80007e74:	00001097          	auipc	ra,0x1
    80007e78:	88c080e7          	jalr	-1908(ra) # 80008700 <pop_on>
    80007e7c:	00093783          	ld	a5,0(s2)
    80007e80:	0004b703          	ld	a4,0(s1)
    80007e84:	02078693          	addi	a3,a5,32
    80007e88:	fce688e3          	beq	a3,a4,80007e58 <uartputc+0x50>
    80007e8c:	01f77693          	andi	a3,a4,31
    80007e90:	00005597          	auipc	a1,0x5
    80007e94:	f5058593          	addi	a1,a1,-176 # 8000cde0 <uart_tx_buf>
    80007e98:	00d586b3          	add	a3,a1,a3
    80007e9c:	00170713          	addi	a4,a4,1
    80007ea0:	01368023          	sb	s3,0(a3)
    80007ea4:	00e4b023          	sd	a4,0(s1)
    80007ea8:	10000637          	lui	a2,0x10000
    80007eac:	02f71063          	bne	a4,a5,80007ecc <uartputc+0xc4>
    80007eb0:	0340006f          	j	80007ee4 <uartputc+0xdc>
    80007eb4:	00074703          	lbu	a4,0(a4)
    80007eb8:	00f93023          	sd	a5,0(s2)
    80007ebc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007ec0:	00093783          	ld	a5,0(s2)
    80007ec4:	0004b703          	ld	a4,0(s1)
    80007ec8:	00f70e63          	beq	a4,a5,80007ee4 <uartputc+0xdc>
    80007ecc:	00564683          	lbu	a3,5(a2)
    80007ed0:	01f7f713          	andi	a4,a5,31
    80007ed4:	00e58733          	add	a4,a1,a4
    80007ed8:	0206f693          	andi	a3,a3,32
    80007edc:	00178793          	addi	a5,a5,1
    80007ee0:	fc069ae3          	bnez	a3,80007eb4 <uartputc+0xac>
    80007ee4:	02813083          	ld	ra,40(sp)
    80007ee8:	02013403          	ld	s0,32(sp)
    80007eec:	01813483          	ld	s1,24(sp)
    80007ef0:	01013903          	ld	s2,16(sp)
    80007ef4:	00813983          	ld	s3,8(sp)
    80007ef8:	03010113          	addi	sp,sp,48
    80007efc:	00008067          	ret

0000000080007f00 <uartputc_sync>:
    80007f00:	ff010113          	addi	sp,sp,-16
    80007f04:	00813423          	sd	s0,8(sp)
    80007f08:	01010413          	addi	s0,sp,16
    80007f0c:	00004717          	auipc	a4,0x4
    80007f10:	b4c72703          	lw	a4,-1204(a4) # 8000ba58 <panicked>
    80007f14:	02071663          	bnez	a4,80007f40 <uartputc_sync+0x40>
    80007f18:	00050793          	mv	a5,a0
    80007f1c:	100006b7          	lui	a3,0x10000
    80007f20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007f24:	02077713          	andi	a4,a4,32
    80007f28:	fe070ce3          	beqz	a4,80007f20 <uartputc_sync+0x20>
    80007f2c:	0ff7f793          	andi	a5,a5,255
    80007f30:	00f68023          	sb	a5,0(a3)
    80007f34:	00813403          	ld	s0,8(sp)
    80007f38:	01010113          	addi	sp,sp,16
    80007f3c:	00008067          	ret
    80007f40:	0000006f          	j	80007f40 <uartputc_sync+0x40>

0000000080007f44 <uartstart>:
    80007f44:	ff010113          	addi	sp,sp,-16
    80007f48:	00813423          	sd	s0,8(sp)
    80007f4c:	01010413          	addi	s0,sp,16
    80007f50:	00004617          	auipc	a2,0x4
    80007f54:	b1060613          	addi	a2,a2,-1264 # 8000ba60 <uart_tx_r>
    80007f58:	00004517          	auipc	a0,0x4
    80007f5c:	b1050513          	addi	a0,a0,-1264 # 8000ba68 <uart_tx_w>
    80007f60:	00063783          	ld	a5,0(a2)
    80007f64:	00053703          	ld	a4,0(a0)
    80007f68:	04f70263          	beq	a4,a5,80007fac <uartstart+0x68>
    80007f6c:	100005b7          	lui	a1,0x10000
    80007f70:	00005817          	auipc	a6,0x5
    80007f74:	e7080813          	addi	a6,a6,-400 # 8000cde0 <uart_tx_buf>
    80007f78:	01c0006f          	j	80007f94 <uartstart+0x50>
    80007f7c:	0006c703          	lbu	a4,0(a3)
    80007f80:	00f63023          	sd	a5,0(a2)
    80007f84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f88:	00063783          	ld	a5,0(a2)
    80007f8c:	00053703          	ld	a4,0(a0)
    80007f90:	00f70e63          	beq	a4,a5,80007fac <uartstart+0x68>
    80007f94:	01f7f713          	andi	a4,a5,31
    80007f98:	00e806b3          	add	a3,a6,a4
    80007f9c:	0055c703          	lbu	a4,5(a1)
    80007fa0:	00178793          	addi	a5,a5,1
    80007fa4:	02077713          	andi	a4,a4,32
    80007fa8:	fc071ae3          	bnez	a4,80007f7c <uartstart+0x38>
    80007fac:	00813403          	ld	s0,8(sp)
    80007fb0:	01010113          	addi	sp,sp,16
    80007fb4:	00008067          	ret

0000000080007fb8 <uartgetc>:
    80007fb8:	ff010113          	addi	sp,sp,-16
    80007fbc:	00813423          	sd	s0,8(sp)
    80007fc0:	01010413          	addi	s0,sp,16
    80007fc4:	10000737          	lui	a4,0x10000
    80007fc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007fcc:	0017f793          	andi	a5,a5,1
    80007fd0:	00078c63          	beqz	a5,80007fe8 <uartgetc+0x30>
    80007fd4:	00074503          	lbu	a0,0(a4)
    80007fd8:	0ff57513          	andi	a0,a0,255
    80007fdc:	00813403          	ld	s0,8(sp)
    80007fe0:	01010113          	addi	sp,sp,16
    80007fe4:	00008067          	ret
    80007fe8:	fff00513          	li	a0,-1
    80007fec:	ff1ff06f          	j	80007fdc <uartgetc+0x24>

0000000080007ff0 <uartintr>:
    80007ff0:	100007b7          	lui	a5,0x10000
    80007ff4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ff8:	0017f793          	andi	a5,a5,1
    80007ffc:	0a078463          	beqz	a5,800080a4 <uartintr+0xb4>
    80008000:	fe010113          	addi	sp,sp,-32
    80008004:	00813823          	sd	s0,16(sp)
    80008008:	00913423          	sd	s1,8(sp)
    8000800c:	00113c23          	sd	ra,24(sp)
    80008010:	02010413          	addi	s0,sp,32
    80008014:	100004b7          	lui	s1,0x10000
    80008018:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000801c:	0ff57513          	andi	a0,a0,255
    80008020:	fffff097          	auipc	ra,0xfffff
    80008024:	534080e7          	jalr	1332(ra) # 80007554 <consoleintr>
    80008028:	0054c783          	lbu	a5,5(s1)
    8000802c:	0017f793          	andi	a5,a5,1
    80008030:	fe0794e3          	bnez	a5,80008018 <uartintr+0x28>
    80008034:	00004617          	auipc	a2,0x4
    80008038:	a2c60613          	addi	a2,a2,-1492 # 8000ba60 <uart_tx_r>
    8000803c:	00004517          	auipc	a0,0x4
    80008040:	a2c50513          	addi	a0,a0,-1492 # 8000ba68 <uart_tx_w>
    80008044:	00063783          	ld	a5,0(a2)
    80008048:	00053703          	ld	a4,0(a0)
    8000804c:	04f70263          	beq	a4,a5,80008090 <uartintr+0xa0>
    80008050:	100005b7          	lui	a1,0x10000
    80008054:	00005817          	auipc	a6,0x5
    80008058:	d8c80813          	addi	a6,a6,-628 # 8000cde0 <uart_tx_buf>
    8000805c:	01c0006f          	j	80008078 <uartintr+0x88>
    80008060:	0006c703          	lbu	a4,0(a3)
    80008064:	00f63023          	sd	a5,0(a2)
    80008068:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000806c:	00063783          	ld	a5,0(a2)
    80008070:	00053703          	ld	a4,0(a0)
    80008074:	00f70e63          	beq	a4,a5,80008090 <uartintr+0xa0>
    80008078:	01f7f713          	andi	a4,a5,31
    8000807c:	00e806b3          	add	a3,a6,a4
    80008080:	0055c703          	lbu	a4,5(a1)
    80008084:	00178793          	addi	a5,a5,1
    80008088:	02077713          	andi	a4,a4,32
    8000808c:	fc071ae3          	bnez	a4,80008060 <uartintr+0x70>
    80008090:	01813083          	ld	ra,24(sp)
    80008094:	01013403          	ld	s0,16(sp)
    80008098:	00813483          	ld	s1,8(sp)
    8000809c:	02010113          	addi	sp,sp,32
    800080a0:	00008067          	ret
    800080a4:	00004617          	auipc	a2,0x4
    800080a8:	9bc60613          	addi	a2,a2,-1604 # 8000ba60 <uart_tx_r>
    800080ac:	00004517          	auipc	a0,0x4
    800080b0:	9bc50513          	addi	a0,a0,-1604 # 8000ba68 <uart_tx_w>
    800080b4:	00063783          	ld	a5,0(a2)
    800080b8:	00053703          	ld	a4,0(a0)
    800080bc:	04f70263          	beq	a4,a5,80008100 <uartintr+0x110>
    800080c0:	100005b7          	lui	a1,0x10000
    800080c4:	00005817          	auipc	a6,0x5
    800080c8:	d1c80813          	addi	a6,a6,-740 # 8000cde0 <uart_tx_buf>
    800080cc:	01c0006f          	j	800080e8 <uartintr+0xf8>
    800080d0:	0006c703          	lbu	a4,0(a3)
    800080d4:	00f63023          	sd	a5,0(a2)
    800080d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080dc:	00063783          	ld	a5,0(a2)
    800080e0:	00053703          	ld	a4,0(a0)
    800080e4:	02f70063          	beq	a4,a5,80008104 <uartintr+0x114>
    800080e8:	01f7f713          	andi	a4,a5,31
    800080ec:	00e806b3          	add	a3,a6,a4
    800080f0:	0055c703          	lbu	a4,5(a1)
    800080f4:	00178793          	addi	a5,a5,1
    800080f8:	02077713          	andi	a4,a4,32
    800080fc:	fc071ae3          	bnez	a4,800080d0 <uartintr+0xe0>
    80008100:	00008067          	ret
    80008104:	00008067          	ret

0000000080008108 <kinit>:
    80008108:	fc010113          	addi	sp,sp,-64
    8000810c:	02913423          	sd	s1,40(sp)
    80008110:	fffff7b7          	lui	a5,0xfffff
    80008114:	00006497          	auipc	s1,0x6
    80008118:	ceb48493          	addi	s1,s1,-789 # 8000ddff <end+0xfff>
    8000811c:	02813823          	sd	s0,48(sp)
    80008120:	01313c23          	sd	s3,24(sp)
    80008124:	00f4f4b3          	and	s1,s1,a5
    80008128:	02113c23          	sd	ra,56(sp)
    8000812c:	03213023          	sd	s2,32(sp)
    80008130:	01413823          	sd	s4,16(sp)
    80008134:	01513423          	sd	s5,8(sp)
    80008138:	04010413          	addi	s0,sp,64
    8000813c:	000017b7          	lui	a5,0x1
    80008140:	01100993          	li	s3,17
    80008144:	00f487b3          	add	a5,s1,a5
    80008148:	01b99993          	slli	s3,s3,0x1b
    8000814c:	06f9e063          	bltu	s3,a5,800081ac <kinit+0xa4>
    80008150:	00005a97          	auipc	s5,0x5
    80008154:	cb0a8a93          	addi	s5,s5,-848 # 8000ce00 <end>
    80008158:	0754ec63          	bltu	s1,s5,800081d0 <kinit+0xc8>
    8000815c:	0734fa63          	bgeu	s1,s3,800081d0 <kinit+0xc8>
    80008160:	00088a37          	lui	s4,0x88
    80008164:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008168:	00004917          	auipc	s2,0x4
    8000816c:	90890913          	addi	s2,s2,-1784 # 8000ba70 <kmem>
    80008170:	00ca1a13          	slli	s4,s4,0xc
    80008174:	0140006f          	j	80008188 <kinit+0x80>
    80008178:	000017b7          	lui	a5,0x1
    8000817c:	00f484b3          	add	s1,s1,a5
    80008180:	0554e863          	bltu	s1,s5,800081d0 <kinit+0xc8>
    80008184:	0534f663          	bgeu	s1,s3,800081d0 <kinit+0xc8>
    80008188:	00001637          	lui	a2,0x1
    8000818c:	00100593          	li	a1,1
    80008190:	00048513          	mv	a0,s1
    80008194:	00000097          	auipc	ra,0x0
    80008198:	5e4080e7          	jalr	1508(ra) # 80008778 <__memset>
    8000819c:	00093783          	ld	a5,0(s2)
    800081a0:	00f4b023          	sd	a5,0(s1)
    800081a4:	00993023          	sd	s1,0(s2)
    800081a8:	fd4498e3          	bne	s1,s4,80008178 <kinit+0x70>
    800081ac:	03813083          	ld	ra,56(sp)
    800081b0:	03013403          	ld	s0,48(sp)
    800081b4:	02813483          	ld	s1,40(sp)
    800081b8:	02013903          	ld	s2,32(sp)
    800081bc:	01813983          	ld	s3,24(sp)
    800081c0:	01013a03          	ld	s4,16(sp)
    800081c4:	00813a83          	ld	s5,8(sp)
    800081c8:	04010113          	addi	sp,sp,64
    800081cc:	00008067          	ret
    800081d0:	00001517          	auipc	a0,0x1
    800081d4:	55050513          	addi	a0,a0,1360 # 80009720 <digits+0x18>
    800081d8:	fffff097          	auipc	ra,0xfffff
    800081dc:	4b4080e7          	jalr	1204(ra) # 8000768c <panic>

00000000800081e0 <freerange>:
    800081e0:	fc010113          	addi	sp,sp,-64
    800081e4:	000017b7          	lui	a5,0x1
    800081e8:	02913423          	sd	s1,40(sp)
    800081ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800081f0:	009504b3          	add	s1,a0,s1
    800081f4:	fffff537          	lui	a0,0xfffff
    800081f8:	02813823          	sd	s0,48(sp)
    800081fc:	02113c23          	sd	ra,56(sp)
    80008200:	03213023          	sd	s2,32(sp)
    80008204:	01313c23          	sd	s3,24(sp)
    80008208:	01413823          	sd	s4,16(sp)
    8000820c:	01513423          	sd	s5,8(sp)
    80008210:	01613023          	sd	s6,0(sp)
    80008214:	04010413          	addi	s0,sp,64
    80008218:	00a4f4b3          	and	s1,s1,a0
    8000821c:	00f487b3          	add	a5,s1,a5
    80008220:	06f5e463          	bltu	a1,a5,80008288 <freerange+0xa8>
    80008224:	00005a97          	auipc	s5,0x5
    80008228:	bdca8a93          	addi	s5,s5,-1060 # 8000ce00 <end>
    8000822c:	0954e263          	bltu	s1,s5,800082b0 <freerange+0xd0>
    80008230:	01100993          	li	s3,17
    80008234:	01b99993          	slli	s3,s3,0x1b
    80008238:	0734fc63          	bgeu	s1,s3,800082b0 <freerange+0xd0>
    8000823c:	00058a13          	mv	s4,a1
    80008240:	00004917          	auipc	s2,0x4
    80008244:	83090913          	addi	s2,s2,-2000 # 8000ba70 <kmem>
    80008248:	00002b37          	lui	s6,0x2
    8000824c:	0140006f          	j	80008260 <freerange+0x80>
    80008250:	000017b7          	lui	a5,0x1
    80008254:	00f484b3          	add	s1,s1,a5
    80008258:	0554ec63          	bltu	s1,s5,800082b0 <freerange+0xd0>
    8000825c:	0534fa63          	bgeu	s1,s3,800082b0 <freerange+0xd0>
    80008260:	00001637          	lui	a2,0x1
    80008264:	00100593          	li	a1,1
    80008268:	00048513          	mv	a0,s1
    8000826c:	00000097          	auipc	ra,0x0
    80008270:	50c080e7          	jalr	1292(ra) # 80008778 <__memset>
    80008274:	00093703          	ld	a4,0(s2)
    80008278:	016487b3          	add	a5,s1,s6
    8000827c:	00e4b023          	sd	a4,0(s1)
    80008280:	00993023          	sd	s1,0(s2)
    80008284:	fcfa76e3          	bgeu	s4,a5,80008250 <freerange+0x70>
    80008288:	03813083          	ld	ra,56(sp)
    8000828c:	03013403          	ld	s0,48(sp)
    80008290:	02813483          	ld	s1,40(sp)
    80008294:	02013903          	ld	s2,32(sp)
    80008298:	01813983          	ld	s3,24(sp)
    8000829c:	01013a03          	ld	s4,16(sp)
    800082a0:	00813a83          	ld	s5,8(sp)
    800082a4:	00013b03          	ld	s6,0(sp)
    800082a8:	04010113          	addi	sp,sp,64
    800082ac:	00008067          	ret
    800082b0:	00001517          	auipc	a0,0x1
    800082b4:	47050513          	addi	a0,a0,1136 # 80009720 <digits+0x18>
    800082b8:	fffff097          	auipc	ra,0xfffff
    800082bc:	3d4080e7          	jalr	980(ra) # 8000768c <panic>

00000000800082c0 <kfree>:
    800082c0:	fe010113          	addi	sp,sp,-32
    800082c4:	00813823          	sd	s0,16(sp)
    800082c8:	00113c23          	sd	ra,24(sp)
    800082cc:	00913423          	sd	s1,8(sp)
    800082d0:	02010413          	addi	s0,sp,32
    800082d4:	03451793          	slli	a5,a0,0x34
    800082d8:	04079c63          	bnez	a5,80008330 <kfree+0x70>
    800082dc:	00005797          	auipc	a5,0x5
    800082e0:	b2478793          	addi	a5,a5,-1244 # 8000ce00 <end>
    800082e4:	00050493          	mv	s1,a0
    800082e8:	04f56463          	bltu	a0,a5,80008330 <kfree+0x70>
    800082ec:	01100793          	li	a5,17
    800082f0:	01b79793          	slli	a5,a5,0x1b
    800082f4:	02f57e63          	bgeu	a0,a5,80008330 <kfree+0x70>
    800082f8:	00001637          	lui	a2,0x1
    800082fc:	00100593          	li	a1,1
    80008300:	00000097          	auipc	ra,0x0
    80008304:	478080e7          	jalr	1144(ra) # 80008778 <__memset>
    80008308:	00003797          	auipc	a5,0x3
    8000830c:	76878793          	addi	a5,a5,1896 # 8000ba70 <kmem>
    80008310:	0007b703          	ld	a4,0(a5)
    80008314:	01813083          	ld	ra,24(sp)
    80008318:	01013403          	ld	s0,16(sp)
    8000831c:	00e4b023          	sd	a4,0(s1)
    80008320:	0097b023          	sd	s1,0(a5)
    80008324:	00813483          	ld	s1,8(sp)
    80008328:	02010113          	addi	sp,sp,32
    8000832c:	00008067          	ret
    80008330:	00001517          	auipc	a0,0x1
    80008334:	3f050513          	addi	a0,a0,1008 # 80009720 <digits+0x18>
    80008338:	fffff097          	auipc	ra,0xfffff
    8000833c:	354080e7          	jalr	852(ra) # 8000768c <panic>

0000000080008340 <kalloc>:
    80008340:	fe010113          	addi	sp,sp,-32
    80008344:	00813823          	sd	s0,16(sp)
    80008348:	00913423          	sd	s1,8(sp)
    8000834c:	00113c23          	sd	ra,24(sp)
    80008350:	02010413          	addi	s0,sp,32
    80008354:	00003797          	auipc	a5,0x3
    80008358:	71c78793          	addi	a5,a5,1820 # 8000ba70 <kmem>
    8000835c:	0007b483          	ld	s1,0(a5)
    80008360:	02048063          	beqz	s1,80008380 <kalloc+0x40>
    80008364:	0004b703          	ld	a4,0(s1)
    80008368:	00001637          	lui	a2,0x1
    8000836c:	00500593          	li	a1,5
    80008370:	00048513          	mv	a0,s1
    80008374:	00e7b023          	sd	a4,0(a5)
    80008378:	00000097          	auipc	ra,0x0
    8000837c:	400080e7          	jalr	1024(ra) # 80008778 <__memset>
    80008380:	01813083          	ld	ra,24(sp)
    80008384:	01013403          	ld	s0,16(sp)
    80008388:	00048513          	mv	a0,s1
    8000838c:	00813483          	ld	s1,8(sp)
    80008390:	02010113          	addi	sp,sp,32
    80008394:	00008067          	ret

0000000080008398 <initlock>:
    80008398:	ff010113          	addi	sp,sp,-16
    8000839c:	00813423          	sd	s0,8(sp)
    800083a0:	01010413          	addi	s0,sp,16
    800083a4:	00813403          	ld	s0,8(sp)
    800083a8:	00b53423          	sd	a1,8(a0)
    800083ac:	00052023          	sw	zero,0(a0)
    800083b0:	00053823          	sd	zero,16(a0)
    800083b4:	01010113          	addi	sp,sp,16
    800083b8:	00008067          	ret

00000000800083bc <acquire>:
    800083bc:	fe010113          	addi	sp,sp,-32
    800083c0:	00813823          	sd	s0,16(sp)
    800083c4:	00913423          	sd	s1,8(sp)
    800083c8:	00113c23          	sd	ra,24(sp)
    800083cc:	01213023          	sd	s2,0(sp)
    800083d0:	02010413          	addi	s0,sp,32
    800083d4:	00050493          	mv	s1,a0
    800083d8:	10002973          	csrr	s2,sstatus
    800083dc:	100027f3          	csrr	a5,sstatus
    800083e0:	ffd7f793          	andi	a5,a5,-3
    800083e4:	10079073          	csrw	sstatus,a5
    800083e8:	fffff097          	auipc	ra,0xfffff
    800083ec:	8e4080e7          	jalr	-1820(ra) # 80006ccc <mycpu>
    800083f0:	07852783          	lw	a5,120(a0)
    800083f4:	06078e63          	beqz	a5,80008470 <acquire+0xb4>
    800083f8:	fffff097          	auipc	ra,0xfffff
    800083fc:	8d4080e7          	jalr	-1836(ra) # 80006ccc <mycpu>
    80008400:	07852783          	lw	a5,120(a0)
    80008404:	0004a703          	lw	a4,0(s1)
    80008408:	0017879b          	addiw	a5,a5,1
    8000840c:	06f52c23          	sw	a5,120(a0)
    80008410:	04071063          	bnez	a4,80008450 <acquire+0x94>
    80008414:	00100713          	li	a4,1
    80008418:	00070793          	mv	a5,a4
    8000841c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008420:	0007879b          	sext.w	a5,a5
    80008424:	fe079ae3          	bnez	a5,80008418 <acquire+0x5c>
    80008428:	0ff0000f          	fence
    8000842c:	fffff097          	auipc	ra,0xfffff
    80008430:	8a0080e7          	jalr	-1888(ra) # 80006ccc <mycpu>
    80008434:	01813083          	ld	ra,24(sp)
    80008438:	01013403          	ld	s0,16(sp)
    8000843c:	00a4b823          	sd	a0,16(s1)
    80008440:	00013903          	ld	s2,0(sp)
    80008444:	00813483          	ld	s1,8(sp)
    80008448:	02010113          	addi	sp,sp,32
    8000844c:	00008067          	ret
    80008450:	0104b903          	ld	s2,16(s1)
    80008454:	fffff097          	auipc	ra,0xfffff
    80008458:	878080e7          	jalr	-1928(ra) # 80006ccc <mycpu>
    8000845c:	faa91ce3          	bne	s2,a0,80008414 <acquire+0x58>
    80008460:	00001517          	auipc	a0,0x1
    80008464:	2c850513          	addi	a0,a0,712 # 80009728 <digits+0x20>
    80008468:	fffff097          	auipc	ra,0xfffff
    8000846c:	224080e7          	jalr	548(ra) # 8000768c <panic>
    80008470:	00195913          	srli	s2,s2,0x1
    80008474:	fffff097          	auipc	ra,0xfffff
    80008478:	858080e7          	jalr	-1960(ra) # 80006ccc <mycpu>
    8000847c:	00197913          	andi	s2,s2,1
    80008480:	07252e23          	sw	s2,124(a0)
    80008484:	f75ff06f          	j	800083f8 <acquire+0x3c>

0000000080008488 <release>:
    80008488:	fe010113          	addi	sp,sp,-32
    8000848c:	00813823          	sd	s0,16(sp)
    80008490:	00113c23          	sd	ra,24(sp)
    80008494:	00913423          	sd	s1,8(sp)
    80008498:	01213023          	sd	s2,0(sp)
    8000849c:	02010413          	addi	s0,sp,32
    800084a0:	00052783          	lw	a5,0(a0)
    800084a4:	00079a63          	bnez	a5,800084b8 <release+0x30>
    800084a8:	00001517          	auipc	a0,0x1
    800084ac:	28850513          	addi	a0,a0,648 # 80009730 <digits+0x28>
    800084b0:	fffff097          	auipc	ra,0xfffff
    800084b4:	1dc080e7          	jalr	476(ra) # 8000768c <panic>
    800084b8:	01053903          	ld	s2,16(a0)
    800084bc:	00050493          	mv	s1,a0
    800084c0:	fffff097          	auipc	ra,0xfffff
    800084c4:	80c080e7          	jalr	-2036(ra) # 80006ccc <mycpu>
    800084c8:	fea910e3          	bne	s2,a0,800084a8 <release+0x20>
    800084cc:	0004b823          	sd	zero,16(s1)
    800084d0:	0ff0000f          	fence
    800084d4:	0f50000f          	fence	iorw,ow
    800084d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800084dc:	ffffe097          	auipc	ra,0xffffe
    800084e0:	7f0080e7          	jalr	2032(ra) # 80006ccc <mycpu>
    800084e4:	100027f3          	csrr	a5,sstatus
    800084e8:	0027f793          	andi	a5,a5,2
    800084ec:	04079a63          	bnez	a5,80008540 <release+0xb8>
    800084f0:	07852783          	lw	a5,120(a0)
    800084f4:	02f05e63          	blez	a5,80008530 <release+0xa8>
    800084f8:	fff7871b          	addiw	a4,a5,-1
    800084fc:	06e52c23          	sw	a4,120(a0)
    80008500:	00071c63          	bnez	a4,80008518 <release+0x90>
    80008504:	07c52783          	lw	a5,124(a0)
    80008508:	00078863          	beqz	a5,80008518 <release+0x90>
    8000850c:	100027f3          	csrr	a5,sstatus
    80008510:	0027e793          	ori	a5,a5,2
    80008514:	10079073          	csrw	sstatus,a5
    80008518:	01813083          	ld	ra,24(sp)
    8000851c:	01013403          	ld	s0,16(sp)
    80008520:	00813483          	ld	s1,8(sp)
    80008524:	00013903          	ld	s2,0(sp)
    80008528:	02010113          	addi	sp,sp,32
    8000852c:	00008067          	ret
    80008530:	00001517          	auipc	a0,0x1
    80008534:	22050513          	addi	a0,a0,544 # 80009750 <digits+0x48>
    80008538:	fffff097          	auipc	ra,0xfffff
    8000853c:	154080e7          	jalr	340(ra) # 8000768c <panic>
    80008540:	00001517          	auipc	a0,0x1
    80008544:	1f850513          	addi	a0,a0,504 # 80009738 <digits+0x30>
    80008548:	fffff097          	auipc	ra,0xfffff
    8000854c:	144080e7          	jalr	324(ra) # 8000768c <panic>

0000000080008550 <holding>:
    80008550:	00052783          	lw	a5,0(a0)
    80008554:	00079663          	bnez	a5,80008560 <holding+0x10>
    80008558:	00000513          	li	a0,0
    8000855c:	00008067          	ret
    80008560:	fe010113          	addi	sp,sp,-32
    80008564:	00813823          	sd	s0,16(sp)
    80008568:	00913423          	sd	s1,8(sp)
    8000856c:	00113c23          	sd	ra,24(sp)
    80008570:	02010413          	addi	s0,sp,32
    80008574:	01053483          	ld	s1,16(a0)
    80008578:	ffffe097          	auipc	ra,0xffffe
    8000857c:	754080e7          	jalr	1876(ra) # 80006ccc <mycpu>
    80008580:	01813083          	ld	ra,24(sp)
    80008584:	01013403          	ld	s0,16(sp)
    80008588:	40a48533          	sub	a0,s1,a0
    8000858c:	00153513          	seqz	a0,a0
    80008590:	00813483          	ld	s1,8(sp)
    80008594:	02010113          	addi	sp,sp,32
    80008598:	00008067          	ret

000000008000859c <push_off>:
    8000859c:	fe010113          	addi	sp,sp,-32
    800085a0:	00813823          	sd	s0,16(sp)
    800085a4:	00113c23          	sd	ra,24(sp)
    800085a8:	00913423          	sd	s1,8(sp)
    800085ac:	02010413          	addi	s0,sp,32
    800085b0:	100024f3          	csrr	s1,sstatus
    800085b4:	100027f3          	csrr	a5,sstatus
    800085b8:	ffd7f793          	andi	a5,a5,-3
    800085bc:	10079073          	csrw	sstatus,a5
    800085c0:	ffffe097          	auipc	ra,0xffffe
    800085c4:	70c080e7          	jalr	1804(ra) # 80006ccc <mycpu>
    800085c8:	07852783          	lw	a5,120(a0)
    800085cc:	02078663          	beqz	a5,800085f8 <push_off+0x5c>
    800085d0:	ffffe097          	auipc	ra,0xffffe
    800085d4:	6fc080e7          	jalr	1788(ra) # 80006ccc <mycpu>
    800085d8:	07852783          	lw	a5,120(a0)
    800085dc:	01813083          	ld	ra,24(sp)
    800085e0:	01013403          	ld	s0,16(sp)
    800085e4:	0017879b          	addiw	a5,a5,1
    800085e8:	06f52c23          	sw	a5,120(a0)
    800085ec:	00813483          	ld	s1,8(sp)
    800085f0:	02010113          	addi	sp,sp,32
    800085f4:	00008067          	ret
    800085f8:	0014d493          	srli	s1,s1,0x1
    800085fc:	ffffe097          	auipc	ra,0xffffe
    80008600:	6d0080e7          	jalr	1744(ra) # 80006ccc <mycpu>
    80008604:	0014f493          	andi	s1,s1,1
    80008608:	06952e23          	sw	s1,124(a0)
    8000860c:	fc5ff06f          	j	800085d0 <push_off+0x34>

0000000080008610 <pop_off>:
    80008610:	ff010113          	addi	sp,sp,-16
    80008614:	00813023          	sd	s0,0(sp)
    80008618:	00113423          	sd	ra,8(sp)
    8000861c:	01010413          	addi	s0,sp,16
    80008620:	ffffe097          	auipc	ra,0xffffe
    80008624:	6ac080e7          	jalr	1708(ra) # 80006ccc <mycpu>
    80008628:	100027f3          	csrr	a5,sstatus
    8000862c:	0027f793          	andi	a5,a5,2
    80008630:	04079663          	bnez	a5,8000867c <pop_off+0x6c>
    80008634:	07852783          	lw	a5,120(a0)
    80008638:	02f05a63          	blez	a5,8000866c <pop_off+0x5c>
    8000863c:	fff7871b          	addiw	a4,a5,-1
    80008640:	06e52c23          	sw	a4,120(a0)
    80008644:	00071c63          	bnez	a4,8000865c <pop_off+0x4c>
    80008648:	07c52783          	lw	a5,124(a0)
    8000864c:	00078863          	beqz	a5,8000865c <pop_off+0x4c>
    80008650:	100027f3          	csrr	a5,sstatus
    80008654:	0027e793          	ori	a5,a5,2
    80008658:	10079073          	csrw	sstatus,a5
    8000865c:	00813083          	ld	ra,8(sp)
    80008660:	00013403          	ld	s0,0(sp)
    80008664:	01010113          	addi	sp,sp,16
    80008668:	00008067          	ret
    8000866c:	00001517          	auipc	a0,0x1
    80008670:	0e450513          	addi	a0,a0,228 # 80009750 <digits+0x48>
    80008674:	fffff097          	auipc	ra,0xfffff
    80008678:	018080e7          	jalr	24(ra) # 8000768c <panic>
    8000867c:	00001517          	auipc	a0,0x1
    80008680:	0bc50513          	addi	a0,a0,188 # 80009738 <digits+0x30>
    80008684:	fffff097          	auipc	ra,0xfffff
    80008688:	008080e7          	jalr	8(ra) # 8000768c <panic>

000000008000868c <push_on>:
    8000868c:	fe010113          	addi	sp,sp,-32
    80008690:	00813823          	sd	s0,16(sp)
    80008694:	00113c23          	sd	ra,24(sp)
    80008698:	00913423          	sd	s1,8(sp)
    8000869c:	02010413          	addi	s0,sp,32
    800086a0:	100024f3          	csrr	s1,sstatus
    800086a4:	100027f3          	csrr	a5,sstatus
    800086a8:	0027e793          	ori	a5,a5,2
    800086ac:	10079073          	csrw	sstatus,a5
    800086b0:	ffffe097          	auipc	ra,0xffffe
    800086b4:	61c080e7          	jalr	1564(ra) # 80006ccc <mycpu>
    800086b8:	07852783          	lw	a5,120(a0)
    800086bc:	02078663          	beqz	a5,800086e8 <push_on+0x5c>
    800086c0:	ffffe097          	auipc	ra,0xffffe
    800086c4:	60c080e7          	jalr	1548(ra) # 80006ccc <mycpu>
    800086c8:	07852783          	lw	a5,120(a0)
    800086cc:	01813083          	ld	ra,24(sp)
    800086d0:	01013403          	ld	s0,16(sp)
    800086d4:	0017879b          	addiw	a5,a5,1
    800086d8:	06f52c23          	sw	a5,120(a0)
    800086dc:	00813483          	ld	s1,8(sp)
    800086e0:	02010113          	addi	sp,sp,32
    800086e4:	00008067          	ret
    800086e8:	0014d493          	srli	s1,s1,0x1
    800086ec:	ffffe097          	auipc	ra,0xffffe
    800086f0:	5e0080e7          	jalr	1504(ra) # 80006ccc <mycpu>
    800086f4:	0014f493          	andi	s1,s1,1
    800086f8:	06952e23          	sw	s1,124(a0)
    800086fc:	fc5ff06f          	j	800086c0 <push_on+0x34>

0000000080008700 <pop_on>:
    80008700:	ff010113          	addi	sp,sp,-16
    80008704:	00813023          	sd	s0,0(sp)
    80008708:	00113423          	sd	ra,8(sp)
    8000870c:	01010413          	addi	s0,sp,16
    80008710:	ffffe097          	auipc	ra,0xffffe
    80008714:	5bc080e7          	jalr	1468(ra) # 80006ccc <mycpu>
    80008718:	100027f3          	csrr	a5,sstatus
    8000871c:	0027f793          	andi	a5,a5,2
    80008720:	04078463          	beqz	a5,80008768 <pop_on+0x68>
    80008724:	07852783          	lw	a5,120(a0)
    80008728:	02f05863          	blez	a5,80008758 <pop_on+0x58>
    8000872c:	fff7879b          	addiw	a5,a5,-1
    80008730:	06f52c23          	sw	a5,120(a0)
    80008734:	07853783          	ld	a5,120(a0)
    80008738:	00079863          	bnez	a5,80008748 <pop_on+0x48>
    8000873c:	100027f3          	csrr	a5,sstatus
    80008740:	ffd7f793          	andi	a5,a5,-3
    80008744:	10079073          	csrw	sstatus,a5
    80008748:	00813083          	ld	ra,8(sp)
    8000874c:	00013403          	ld	s0,0(sp)
    80008750:	01010113          	addi	sp,sp,16
    80008754:	00008067          	ret
    80008758:	00001517          	auipc	a0,0x1
    8000875c:	02050513          	addi	a0,a0,32 # 80009778 <digits+0x70>
    80008760:	fffff097          	auipc	ra,0xfffff
    80008764:	f2c080e7          	jalr	-212(ra) # 8000768c <panic>
    80008768:	00001517          	auipc	a0,0x1
    8000876c:	ff050513          	addi	a0,a0,-16 # 80009758 <digits+0x50>
    80008770:	fffff097          	auipc	ra,0xfffff
    80008774:	f1c080e7          	jalr	-228(ra) # 8000768c <panic>

0000000080008778 <__memset>:
    80008778:	ff010113          	addi	sp,sp,-16
    8000877c:	00813423          	sd	s0,8(sp)
    80008780:	01010413          	addi	s0,sp,16
    80008784:	1a060e63          	beqz	a2,80008940 <__memset+0x1c8>
    80008788:	40a007b3          	neg	a5,a0
    8000878c:	0077f793          	andi	a5,a5,7
    80008790:	00778693          	addi	a3,a5,7
    80008794:	00b00813          	li	a6,11
    80008798:	0ff5f593          	andi	a1,a1,255
    8000879c:	fff6071b          	addiw	a4,a2,-1
    800087a0:	1b06e663          	bltu	a3,a6,8000894c <__memset+0x1d4>
    800087a4:	1cd76463          	bltu	a4,a3,8000896c <__memset+0x1f4>
    800087a8:	1a078e63          	beqz	a5,80008964 <__memset+0x1ec>
    800087ac:	00b50023          	sb	a1,0(a0)
    800087b0:	00100713          	li	a4,1
    800087b4:	1ae78463          	beq	a5,a4,8000895c <__memset+0x1e4>
    800087b8:	00b500a3          	sb	a1,1(a0)
    800087bc:	00200713          	li	a4,2
    800087c0:	1ae78a63          	beq	a5,a4,80008974 <__memset+0x1fc>
    800087c4:	00b50123          	sb	a1,2(a0)
    800087c8:	00300713          	li	a4,3
    800087cc:	18e78463          	beq	a5,a4,80008954 <__memset+0x1dc>
    800087d0:	00b501a3          	sb	a1,3(a0)
    800087d4:	00400713          	li	a4,4
    800087d8:	1ae78263          	beq	a5,a4,8000897c <__memset+0x204>
    800087dc:	00b50223          	sb	a1,4(a0)
    800087e0:	00500713          	li	a4,5
    800087e4:	1ae78063          	beq	a5,a4,80008984 <__memset+0x20c>
    800087e8:	00b502a3          	sb	a1,5(a0)
    800087ec:	00700713          	li	a4,7
    800087f0:	18e79e63          	bne	a5,a4,8000898c <__memset+0x214>
    800087f4:	00b50323          	sb	a1,6(a0)
    800087f8:	00700e93          	li	t4,7
    800087fc:	00859713          	slli	a4,a1,0x8
    80008800:	00e5e733          	or	a4,a1,a4
    80008804:	01059e13          	slli	t3,a1,0x10
    80008808:	01c76e33          	or	t3,a4,t3
    8000880c:	01859313          	slli	t1,a1,0x18
    80008810:	006e6333          	or	t1,t3,t1
    80008814:	02059893          	slli	a7,a1,0x20
    80008818:	40f60e3b          	subw	t3,a2,a5
    8000881c:	011368b3          	or	a7,t1,a7
    80008820:	02859813          	slli	a6,a1,0x28
    80008824:	0108e833          	or	a6,a7,a6
    80008828:	03059693          	slli	a3,a1,0x30
    8000882c:	003e589b          	srliw	a7,t3,0x3
    80008830:	00d866b3          	or	a3,a6,a3
    80008834:	03859713          	slli	a4,a1,0x38
    80008838:	00389813          	slli	a6,a7,0x3
    8000883c:	00f507b3          	add	a5,a0,a5
    80008840:	00e6e733          	or	a4,a3,a4
    80008844:	000e089b          	sext.w	a7,t3
    80008848:	00f806b3          	add	a3,a6,a5
    8000884c:	00e7b023          	sd	a4,0(a5)
    80008850:	00878793          	addi	a5,a5,8
    80008854:	fed79ce3          	bne	a5,a3,8000884c <__memset+0xd4>
    80008858:	ff8e7793          	andi	a5,t3,-8
    8000885c:	0007871b          	sext.w	a4,a5
    80008860:	01d787bb          	addw	a5,a5,t4
    80008864:	0ce88e63          	beq	a7,a4,80008940 <__memset+0x1c8>
    80008868:	00f50733          	add	a4,a0,a5
    8000886c:	00b70023          	sb	a1,0(a4)
    80008870:	0017871b          	addiw	a4,a5,1
    80008874:	0cc77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008878:	00e50733          	add	a4,a0,a4
    8000887c:	00b70023          	sb	a1,0(a4)
    80008880:	0027871b          	addiw	a4,a5,2
    80008884:	0ac77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00b70023          	sb	a1,0(a4)
    80008890:	0037871b          	addiw	a4,a5,3
    80008894:	0ac77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008898:	00e50733          	add	a4,a0,a4
    8000889c:	00b70023          	sb	a1,0(a4)
    800088a0:	0047871b          	addiw	a4,a5,4
    800088a4:	08c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088a8:	00e50733          	add	a4,a0,a4
    800088ac:	00b70023          	sb	a1,0(a4)
    800088b0:	0057871b          	addiw	a4,a5,5
    800088b4:	08c77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00b70023          	sb	a1,0(a4)
    800088c0:	0067871b          	addiw	a4,a5,6
    800088c4:	06c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	0077871b          	addiw	a4,a5,7
    800088d4:	06c77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088d8:	00e50733          	add	a4,a0,a4
    800088dc:	00b70023          	sb	a1,0(a4)
    800088e0:	0087871b          	addiw	a4,a5,8
    800088e4:	04c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	0097871b          	addiw	a4,a5,9
    800088f4:	04c77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    800088f8:	00e50733          	add	a4,a0,a4
    800088fc:	00b70023          	sb	a1,0(a4)
    80008900:	00a7871b          	addiw	a4,a5,10
    80008904:	02c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00b70023          	sb	a1,0(a4)
    80008910:	00b7871b          	addiw	a4,a5,11
    80008914:	02c77663          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008918:	00e50733          	add	a4,a0,a4
    8000891c:	00b70023          	sb	a1,0(a4)
    80008920:	00c7871b          	addiw	a4,a5,12
    80008924:	00c77e63          	bgeu	a4,a2,80008940 <__memset+0x1c8>
    80008928:	00e50733          	add	a4,a0,a4
    8000892c:	00b70023          	sb	a1,0(a4)
    80008930:	00d7879b          	addiw	a5,a5,13
    80008934:	00c7f663          	bgeu	a5,a2,80008940 <__memset+0x1c8>
    80008938:	00f507b3          	add	a5,a0,a5
    8000893c:	00b78023          	sb	a1,0(a5)
    80008940:	00813403          	ld	s0,8(sp)
    80008944:	01010113          	addi	sp,sp,16
    80008948:	00008067          	ret
    8000894c:	00b00693          	li	a3,11
    80008950:	e55ff06f          	j	800087a4 <__memset+0x2c>
    80008954:	00300e93          	li	t4,3
    80008958:	ea5ff06f          	j	800087fc <__memset+0x84>
    8000895c:	00100e93          	li	t4,1
    80008960:	e9dff06f          	j	800087fc <__memset+0x84>
    80008964:	00000e93          	li	t4,0
    80008968:	e95ff06f          	j	800087fc <__memset+0x84>
    8000896c:	00000793          	li	a5,0
    80008970:	ef9ff06f          	j	80008868 <__memset+0xf0>
    80008974:	00200e93          	li	t4,2
    80008978:	e85ff06f          	j	800087fc <__memset+0x84>
    8000897c:	00400e93          	li	t4,4
    80008980:	e7dff06f          	j	800087fc <__memset+0x84>
    80008984:	00500e93          	li	t4,5
    80008988:	e75ff06f          	j	800087fc <__memset+0x84>
    8000898c:	00600e93          	li	t4,6
    80008990:	e6dff06f          	j	800087fc <__memset+0x84>

0000000080008994 <__memmove>:
    80008994:	ff010113          	addi	sp,sp,-16
    80008998:	00813423          	sd	s0,8(sp)
    8000899c:	01010413          	addi	s0,sp,16
    800089a0:	0e060863          	beqz	a2,80008a90 <__memmove+0xfc>
    800089a4:	fff6069b          	addiw	a3,a2,-1
    800089a8:	0006881b          	sext.w	a6,a3
    800089ac:	0ea5e863          	bltu	a1,a0,80008a9c <__memmove+0x108>
    800089b0:	00758713          	addi	a4,a1,7
    800089b4:	00a5e7b3          	or	a5,a1,a0
    800089b8:	40a70733          	sub	a4,a4,a0
    800089bc:	0077f793          	andi	a5,a5,7
    800089c0:	00f73713          	sltiu	a4,a4,15
    800089c4:	00174713          	xori	a4,a4,1
    800089c8:	0017b793          	seqz	a5,a5
    800089cc:	00e7f7b3          	and	a5,a5,a4
    800089d0:	10078863          	beqz	a5,80008ae0 <__memmove+0x14c>
    800089d4:	00900793          	li	a5,9
    800089d8:	1107f463          	bgeu	a5,a6,80008ae0 <__memmove+0x14c>
    800089dc:	0036581b          	srliw	a6,a2,0x3
    800089e0:	fff8081b          	addiw	a6,a6,-1
    800089e4:	02081813          	slli	a6,a6,0x20
    800089e8:	01d85893          	srli	a7,a6,0x1d
    800089ec:	00858813          	addi	a6,a1,8
    800089f0:	00058793          	mv	a5,a1
    800089f4:	00050713          	mv	a4,a0
    800089f8:	01088833          	add	a6,a7,a6
    800089fc:	0007b883          	ld	a7,0(a5)
    80008a00:	00878793          	addi	a5,a5,8
    80008a04:	00870713          	addi	a4,a4,8
    80008a08:	ff173c23          	sd	a7,-8(a4)
    80008a0c:	ff0798e3          	bne	a5,a6,800089fc <__memmove+0x68>
    80008a10:	ff867713          	andi	a4,a2,-8
    80008a14:	02071793          	slli	a5,a4,0x20
    80008a18:	0207d793          	srli	a5,a5,0x20
    80008a1c:	00f585b3          	add	a1,a1,a5
    80008a20:	40e686bb          	subw	a3,a3,a4
    80008a24:	00f507b3          	add	a5,a0,a5
    80008a28:	06e60463          	beq	a2,a4,80008a90 <__memmove+0xfc>
    80008a2c:	0005c703          	lbu	a4,0(a1)
    80008a30:	00e78023          	sb	a4,0(a5)
    80008a34:	04068e63          	beqz	a3,80008a90 <__memmove+0xfc>
    80008a38:	0015c603          	lbu	a2,1(a1)
    80008a3c:	00100713          	li	a4,1
    80008a40:	00c780a3          	sb	a2,1(a5)
    80008a44:	04e68663          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a48:	0025c603          	lbu	a2,2(a1)
    80008a4c:	00200713          	li	a4,2
    80008a50:	00c78123          	sb	a2,2(a5)
    80008a54:	02e68e63          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a58:	0035c603          	lbu	a2,3(a1)
    80008a5c:	00300713          	li	a4,3
    80008a60:	00c781a3          	sb	a2,3(a5)
    80008a64:	02e68663          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a68:	0045c603          	lbu	a2,4(a1)
    80008a6c:	00400713          	li	a4,4
    80008a70:	00c78223          	sb	a2,4(a5)
    80008a74:	00e68e63          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a78:	0055c603          	lbu	a2,5(a1)
    80008a7c:	00500713          	li	a4,5
    80008a80:	00c782a3          	sb	a2,5(a5)
    80008a84:	00e68663          	beq	a3,a4,80008a90 <__memmove+0xfc>
    80008a88:	0065c703          	lbu	a4,6(a1)
    80008a8c:	00e78323          	sb	a4,6(a5)
    80008a90:	00813403          	ld	s0,8(sp)
    80008a94:	01010113          	addi	sp,sp,16
    80008a98:	00008067          	ret
    80008a9c:	02061713          	slli	a4,a2,0x20
    80008aa0:	02075713          	srli	a4,a4,0x20
    80008aa4:	00e587b3          	add	a5,a1,a4
    80008aa8:	f0f574e3          	bgeu	a0,a5,800089b0 <__memmove+0x1c>
    80008aac:	02069613          	slli	a2,a3,0x20
    80008ab0:	02065613          	srli	a2,a2,0x20
    80008ab4:	fff64613          	not	a2,a2
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00c78633          	add	a2,a5,a2
    80008ac0:	fff7c683          	lbu	a3,-1(a5)
    80008ac4:	fff78793          	addi	a5,a5,-1
    80008ac8:	fff70713          	addi	a4,a4,-1
    80008acc:	00d70023          	sb	a3,0(a4)
    80008ad0:	fec798e3          	bne	a5,a2,80008ac0 <__memmove+0x12c>
    80008ad4:	00813403          	ld	s0,8(sp)
    80008ad8:	01010113          	addi	sp,sp,16
    80008adc:	00008067          	ret
    80008ae0:	02069713          	slli	a4,a3,0x20
    80008ae4:	02075713          	srli	a4,a4,0x20
    80008ae8:	00170713          	addi	a4,a4,1
    80008aec:	00e50733          	add	a4,a0,a4
    80008af0:	00050793          	mv	a5,a0
    80008af4:	0005c683          	lbu	a3,0(a1)
    80008af8:	00178793          	addi	a5,a5,1
    80008afc:	00158593          	addi	a1,a1,1
    80008b00:	fed78fa3          	sb	a3,-1(a5)
    80008b04:	fee798e3          	bne	a5,a4,80008af4 <__memmove+0x160>
    80008b08:	f89ff06f          	j	80008a90 <__memmove+0xfc>
	...
