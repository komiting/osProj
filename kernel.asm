
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	1e013103          	ld	sp,480(sp) # 8000d1e0 <_GLOBAL_OFFSET_TABLE_+0x70>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	235070ef          	jal	ra,80007a50 <start>

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
    80001188:	2ad010ef          	jal	ra,80002c34 <_ZN5Riscv20handleSupervisorTrapEv>
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

0000000080001408 <_Z11thread_joinPP7_threadm>:
void thread_join(thread_t* handle, time_t tajm){
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00813423          	sd	s0,8(sp)
    80001410:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0"::"r"(handle));
    80001414:	00050613          	mv	a2,a0
    __asm__ volatile("mv a1, %0"::"r"(tajm));
    80001418:	00058593          	mv	a1,a1
    __asm__ volatile("mv a0, %0" :: "r"(THREAD_JOIN));
    8000141c:	07000793          	li	a5,112
    80001420:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001424:	00000073          	ecall
}
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z15set_max_threadsiii>:
void set_max_threads(int num_of_threads, int max_time, int interval_time){
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00813423          	sd	s0,8(sp)
    8000143c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0"::"r"(interval_time));
    80001440:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0"::"r"(max_time));
    80001444:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(num_of_threads));
    80001448:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(THREAD_SET_MAX));
    8000144c:	06900793          	li	a5,105
    80001450:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001454:	00000073          	ecall
}
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_Z12block_threadPP7_threadPFvPvES2_>:


int block_thread (thread_t* handle, void(*start_routine)(void*),void* arg){
    80001464:	fc010113          	addi	sp,sp,-64
    80001468:	02113c23          	sd	ra,56(sp)
    8000146c:	02813823          	sd	s0,48(sp)
    80001470:	02913423          	sd	s1,40(sp)
    80001474:	03213023          	sd	s2,32(sp)
    80001478:	01313c23          	sd	s3,24(sp)
    8000147c:	04010413          	addi	s0,sp,64
    80001480:	00050493          	mv	s1,a0
    80001484:	00058913          	mv	s2,a1
    80001488:	00060993          	mv	s3,a2
    //a1=handle,a2=funkc,a3=arg
    //ABI se razlikuje u odnosu na C API, ima dodatan argument - stack_space - a4
    void* addr=mem_alloc(DEFAULT_STACK_SIZE);//stek raste ka nizim adresama, mi
    8000148c:	00001537          	lui	a0,0x1
    80001490:	00000097          	auipc	ra,0x0
    80001494:	dc4080e7          	jalr	-572(ra) # 80001254 <_Z9mem_allocm>
    //alociramo memoriju ka visim, pa poslednja lokacija steka je zapravo prva lokacija
    //zauzete memorije
    if(!addr) return -1;
    80001498:	04050663          	beqz	a0,800014e4 <_Z12block_threadPP7_threadPFvPvES2_+0x80>

    __asm__ volatile("mv a4, %0"::"r"(addr));
    8000149c:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0"::"r"(arg));
    800014a0:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    800014a4:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800014a8:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0"::"r"(THREAD_BLOCK));
    800014ac:	06800793          	li	a5,104
    800014b0:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800014b4:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800014b8:	00050793          	mv	a5,a0
    800014bc:	fcf42623          	sw	a5,-52(s0)
    return flag;
    800014c0:	fcc42503          	lw	a0,-52(s0)
    800014c4:	0005051b          	sext.w	a0,a0
}
    800014c8:	03813083          	ld	ra,56(sp)
    800014cc:	03013403          	ld	s0,48(sp)
    800014d0:	02813483          	ld	s1,40(sp)
    800014d4:	02013903          	ld	s2,32(sp)
    800014d8:	01813983          	ld	s3,24(sp)
    800014dc:	04010113          	addi	sp,sp,64
    800014e0:	00008067          	ret
    if(!addr) return -1;
    800014e4:	fff00513          	li	a0,-1
    800014e8:	fe1ff06f          	j	800014c8 <_Z12block_threadPP7_threadPFvPvES2_+0x64>

00000000800014ec <_Z8sem_openPP4_semj>:
int sem_open (sem_t* handle,unsigned init){
    800014ec:	fe010113          	addi	sp,sp,-32
    800014f0:	00813c23          	sd	s0,24(sp)
    800014f4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a2, %0"::"r"(init));
    800014f8:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800014fc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    80001500:	02100793          	li	a5,33
    80001504:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001508:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    8000150c:	00050793          	mv	a5,a0
    80001510:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001514:	fec42503          	lw	a0,-20(s0)
}
    80001518:	0005051b          	sext.w	a0,a0
    8000151c:	01813403          	ld	s0,24(sp)
    80001520:	02010113          	addi	sp,sp,32
    80001524:	00008067          	ret

0000000080001528 <_Z9sem_closeP4_sem>:
int sem_close(sem_t handle){
    80001528:	fe010113          	addi	sp,sp,-32
    8000152c:	00813c23          	sd	s0,24(sp)
    80001530:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001534:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    80001538:	02200793          	li	a5,34
    8000153c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001540:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001544:	00050793          	mv	a5,a0
    80001548:	fef42623          	sw	a5,-20(s0)
    return flag;
    8000154c:	fec42503          	lw	a0,-20(s0)
}
    80001550:	0005051b          	sext.w	a0,a0
    80001554:	01813403          	ld	s0,24(sp)
    80001558:	02010113          	addi	sp,sp,32
    8000155c:	00008067          	ret

0000000080001560 <_Z8sem_waitP4_sem>:
int sem_wait(sem_t id){
    80001560:	fe010113          	addi	sp,sp,-32
    80001564:	00813c23          	sd	s0,24(sp)
    80001568:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    8000156c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    80001570:	02300793          	li	a5,35
    80001574:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001578:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    8000157c:	00050793          	mv	a5,a0
    80001580:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001584:	fec42503          	lw	a0,-20(s0)
}
    80001588:	0005051b          	sext.w	a0,a0
    8000158c:	01813403          	ld	s0,24(sp)
    80001590:	02010113          	addi	sp,sp,32
    80001594:	00008067          	ret

0000000080001598 <_Z10sem_signalP4_sem>:
int sem_signal(sem_t id){
    80001598:	fe010113          	addi	sp,sp,-32
    8000159c:	00813c23          	sd	s0,24(sp)
    800015a0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    800015a4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    800015a8:	02400793          	li	a5,36
    800015ac:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015b0:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800015b4:	00050793          	mv	a5,a0
    800015b8:	fef42623          	sw	a5,-20(s0)
    return flag;
    800015bc:	fec42503          	lw	a0,-20(s0)
}
    800015c0:	0005051b          	sext.w	a0,a0
    800015c4:	01813403          	ld	s0,24(sp)
    800015c8:	02010113          	addi	sp,sp,32
    800015cc:	00008067          	ret

00000000800015d0 <_Z10time_sleepm>:

int time_sleep(time_t tajmara){
    800015d0:	fe010113          	addi	sp,sp,-32
    800015d4:	00813c23          	sd	s0,24(sp)
    800015d8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(tajmara));
    800015dc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    800015e0:	03100793          	li	a5,49
    800015e4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800015e8:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800015ec:	00050793          	mv	a5,a0
    800015f0:	fef42623          	sw	a5,-20(s0)
    return flag;
    800015f4:	fec42503          	lw	a0,-20(s0)
}
    800015f8:	0005051b          	sext.w	a0,a0
    800015fc:	01813403          	ld	s0,24(sp)
    80001600:	02010113          	addi	sp,sp,32
    80001604:	00008067          	ret

0000000080001608 <_Z4getcv>:

char getc(){
    80001608:	fe010113          	addi	sp,sp,-32
    8000160c:	00813c23          	sd	s0,24(sp)
    80001610:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(GETC));
    80001614:	04100793          	li	a5,65
    80001618:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000161c:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001620:	00050793          	mv	a5,a0
    80001624:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001628:	fec42503          	lw	a0,-20(s0)
}
    8000162c:	0ff57513          	andi	a0,a0,255
    80001630:	01813403          	ld	s0,24(sp)
    80001634:	02010113          	addi	sp,sp,32
    80001638:	00008067          	ret

000000008000163c <_Z4putcc>:

void putc(char c){
    8000163c:	ff010113          	addi	sp,sp,-16
    80001640:	00813423          	sd	s0,8(sp)
    80001644:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(c));
    80001648:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    8000164c:	04200793          	li	a5,66
    80001650:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001654:	00000073          	ecall
}
    80001658:	00813403          	ld	s0,8(sp)
    8000165c:	01010113          	addi	sp,sp,16
    80001660:	00008067          	ret

0000000080001664 <_ZN11mySemaphore15createSemaphoreEj>:
// Created by os on 9/8/25.
//

#include "../h/Semaphore.hpp"

mySemaphore *mySemaphore::createSemaphore(unsigned int i) {
    80001664:	fe010113          	addi	sp,sp,-32
    80001668:	00113c23          	sd	ra,24(sp)
    8000166c:	00813823          	sd	s0,16(sp)
    80001670:	00913423          	sd	s1,8(sp)
    80001674:	02010413          	addi	s0,sp,32
    80001678:	00050493          	mv	s1,a0
    return new mySemaphore(i);
    8000167c:	02000513          	li	a0,32
    80001680:	00001097          	auipc	ra,0x1
    80001684:	058080e7          	jalr	88(ra) # 800026d8 <_Znwm>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    80001688:	00053023          	sd	zero,0(a0) # 1000 <_entry-0x7ffff000>
    8000168c:	00053423          	sd	zero,8(a0)
    80001690:	00052823          	sw	zero,16(a0)
    int wait();
    int signal();
    int close();

private:
    mySemaphore(int init) : blockedQ(),val(init),closed(false){}
    80001694:	00952c23          	sw	s1,24(a0)
    80001698:	00050e23          	sb	zero,28(a0)
}
    8000169c:	01813083          	ld	ra,24(sp)
    800016a0:	01013403          	ld	s0,16(sp)
    800016a4:	00813483          	ld	s1,8(sp)
    800016a8:	02010113          	addi	sp,sp,32
    800016ac:	00008067          	ret

00000000800016b0 <_ZN11mySemaphore5blockEv>:
    if(++this->val<=0) unblock();

    return 0;
}
void mySemaphore::block()
{
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	01213023          	sd	s2,0(sp)
    800016c4:	02010413          	addi	s0,sp,32
    800016c8:	00050493          	mv	s1,a0
  TCB::running->setBlocked(true);
    800016cc:	0000c797          	auipc	a5,0xc
    800016d0:	b5c7b783          	ld	a5,-1188(a5) # 8000d228 <_GLOBAL_OFFSET_TABLE_+0xb8>
    800016d4:	0007b903          	ld	s2,0(a5)

    bool isFinished(){return finished;}
    void setFinished(bool flag){ TCB::finished = flag;}

    bool isBlocked(){return blocked;}
    void setBlocked(bool flag){ TCB::blocked = flag;}
    800016d8:	00100793          	li	a5,1
    800016dc:	02f908a3          	sb	a5,49(s2)
        size++;
    }
    void addLast(T *data)
    {
        size_t numOfBlocks = ((sizeof(Elem) + MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE;
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    800016e0:	00100513          	li	a0,1
    800016e4:	00002097          	auipc	ra,0x2
    800016e8:	fa0080e7          	jalr	-96(ra) # 80003684 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    800016ec:	01253023          	sd	s2,0(a0)
        elem->next = nullptr;
    800016f0:	00053423          	sd	zero,8(a0)
        if (tail)
    800016f4:	0084b783          	ld	a5,8(s1)
    800016f8:	02078c63          	beqz	a5,80001730 <_ZN11mySemaphore5blockEv+0x80>
        {
            tail->next = elem;
    800016fc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001700:	00a4b423          	sd	a0,8(s1)
        } else
        {
            head = tail = elem;
        }
        size++;
    80001704:	0104a783          	lw	a5,16(s1)
    80001708:	0017879b          	addiw	a5,a5,1
    8000170c:	00f4a823          	sw	a5,16(s1)
  blockedQ.addLast(TCB::running);
  TCB::dispatch();
    80001710:	00000097          	auipc	ra,0x0
    80001714:	7a8080e7          	jalr	1960(ra) # 80001eb8 <_ZN3TCB8dispatchEv>
}
    80001718:	01813083          	ld	ra,24(sp)
    8000171c:	01013403          	ld	s0,16(sp)
    80001720:	00813483          	ld	s1,8(sp)
    80001724:	00013903          	ld	s2,0(sp)
    80001728:	02010113          	addi	sp,sp,32
    8000172c:	00008067          	ret
            head = tail = elem;
    80001730:	00a4b423          	sd	a0,8(s1)
    80001734:	00a4b023          	sd	a0,0(s1)
    80001738:	fcdff06f          	j	80001704 <_ZN11mySemaphore5blockEv+0x54>

000000008000173c <_ZN11mySemaphore4waitEv>:
    if(closed) return -1;
    8000173c:	01c54783          	lbu	a5,28(a0)
    80001740:	06079a63          	bnez	a5,800017b4 <_ZN11mySemaphore4waitEv+0x78>
    if(--this->val<0) block();
    80001744:	01852783          	lw	a5,24(a0)
    80001748:	fff7879b          	addiw	a5,a5,-1
    8000174c:	00f52c23          	sw	a5,24(a0)
    80001750:	02079713          	slli	a4,a5,0x20
    80001754:	02074063          	bltz	a4,80001774 <_ZN11mySemaphore4waitEv+0x38>
    if(TCB::running->isClosed()) return -1;
    80001758:	0000c797          	auipc	a5,0xc
    8000175c:	ad07b783          	ld	a5,-1328(a5) # 8000d228 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80001760:	0007b783          	ld	a5,0(a5)

    bool isClosed(){return closed;}
    80001764:	0327c783          	lbu	a5,50(a5)
    80001768:	04079e63          	bnez	a5,800017c4 <_ZN11mySemaphore4waitEv+0x88>
    return 0;
    8000176c:	00000513          	li	a0,0
    80001770:	00008067          	ret
int mySemaphore::wait() {
    80001774:	ff010113          	addi	sp,sp,-16
    80001778:	00113423          	sd	ra,8(sp)
    8000177c:	00813023          	sd	s0,0(sp)
    80001780:	01010413          	addi	s0,sp,16
    if(--this->val<0) block();
    80001784:	00000097          	auipc	ra,0x0
    80001788:	f2c080e7          	jalr	-212(ra) # 800016b0 <_ZN11mySemaphore5blockEv>
    if(TCB::running->isClosed()) return -1;
    8000178c:	0000c797          	auipc	a5,0xc
    80001790:	a9c7b783          	ld	a5,-1380(a5) # 8000d228 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80001794:	0007b783          	ld	a5,0(a5)
    80001798:	0327c783          	lbu	a5,50(a5)
    8000179c:	02079063          	bnez	a5,800017bc <_ZN11mySemaphore4waitEv+0x80>
    return 0;
    800017a0:	00000513          	li	a0,0
}
    800017a4:	00813083          	ld	ra,8(sp)
    800017a8:	00013403          	ld	s0,0(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret
    if(closed) return -1;
    800017b4:	fff00513          	li	a0,-1
    800017b8:	00008067          	ret
    if(TCB::running->isClosed()) return -1;
    800017bc:	fff00513          	li	a0,-1
    800017c0:	fe5ff06f          	j	800017a4 <_ZN11mySemaphore4waitEv+0x68>
    800017c4:	fff00513          	li	a0,-1
}
    800017c8:	00008067          	ret

00000000800017cc <_ZN11mySemaphore7unblockEv>:

void mySemaphore::unblock()
{
    800017cc:	fe010113          	addi	sp,sp,-32
    800017d0:	00113c23          	sd	ra,24(sp)
    800017d4:	00813823          	sd	s0,16(sp)
    800017d8:	00913423          	sd	s1,8(sp)
    800017dc:	01213023          	sd	s2,0(sp)
    800017e0:	02010413          	addi	s0,sp,32
    800017e4:	00050493          	mv	s1,a0
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800017e8:	00053503          	ld	a0,0(a0)
    800017ec:	06050463          	beqz	a0,80001854 <_ZN11mySemaphore7unblockEv+0x88>

        Elem *elem = head;
        head = head->next;
    800017f0:	00853783          	ld	a5,8(a0)
    800017f4:	00f4b023          	sd	a5,0(s1)
        if (!head) { tail = 0; }
    800017f8:	04078a63          	beqz	a5,8000184c <_ZN11mySemaphore7unblockEv+0x80>

        T *ret = elem->data;
    800017fc:	00053903          	ld	s2,0(a0)
        MemoryAllocator::mem_free(elem);
    80001800:	00002097          	auipc	ra,0x2
    80001804:	fe0080e7          	jalr	-32(ra) # 800037e0 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80001808:	0104a783          	lw	a5,16(s1)
    8000180c:	fff7879b          	addiw	a5,a5,-1
    80001810:	00f4a823          	sw	a5,16(s1)
    TCB* cur=blockedQ.removeFirst();
    if(closed) cur->setClosed(true);
    80001814:	01c4c783          	lbu	a5,28(s1)
    80001818:	00078663          	beqz	a5,80001824 <_ZN11mySemaphore7unblockEv+0x58>
    void setClosed(bool flag){ TCB::closed = flag;}
    8000181c:	00100793          	li	a5,1
    80001820:	02f90923          	sb	a5,50(s2)
    void setBlocked(bool flag){ TCB::blocked = flag;}
    80001824:	020908a3          	sb	zero,49(s2)
    cur->setBlocked(false);
    Scheduler::put(cur);
    80001828:	00090513          	mv	a0,s2
    8000182c:	00002097          	auipc	ra,0x2
    80001830:	b68080e7          	jalr	-1176(ra) # 80003394 <_ZN9Scheduler3putEP3TCB>
}
    80001834:	01813083          	ld	ra,24(sp)
    80001838:	01013403          	ld	s0,16(sp)
    8000183c:	00813483          	ld	s1,8(sp)
    80001840:	00013903          	ld	s2,0(sp)
    80001844:	02010113          	addi	sp,sp,32
    80001848:	00008067          	ret
        if (!head) { tail = 0; }
    8000184c:	0004b423          	sd	zero,8(s1)
    80001850:	fadff06f          	j	800017fc <_ZN11mySemaphore7unblockEv+0x30>
        if (!head) { return 0; }
    80001854:	00050913          	mv	s2,a0
    80001858:	fbdff06f          	j	80001814 <_ZN11mySemaphore7unblockEv+0x48>

000000008000185c <_ZN11mySemaphore5closeEv>:
    if(closed) return -1;
    8000185c:	01c54783          	lbu	a5,28(a0)
    80001860:	04079863          	bnez	a5,800018b0 <_ZN11mySemaphore5closeEv+0x54>
int mySemaphore::close() {
    80001864:	fe010113          	addi	sp,sp,-32
    80001868:	00113c23          	sd	ra,24(sp)
    8000186c:	00813823          	sd	s0,16(sp)
    80001870:	00913423          	sd	s1,8(sp)
    80001874:	02010413          	addi	s0,sp,32
    80001878:	00050493          	mv	s1,a0
    closed=true;
    8000187c:	00100793          	li	a5,1
    80001880:	00f50e23          	sb	a5,28(a0)
    80001884:	0100006f          	j	80001894 <_ZN11mySemaphore5closeEv+0x38>
        unblock();
    80001888:	00048513          	mv	a0,s1
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	f40080e7          	jalr	-192(ra) # 800017cc <_ZN11mySemaphore7unblockEv>
    int getSize() {return size;}
    80001894:	0104a503          	lw	a0,16(s1)
    while(blockedQ.getSize()){
    80001898:	fe0518e3          	bnez	a0,80001888 <_ZN11mySemaphore5closeEv+0x2c>
}
    8000189c:	01813083          	ld	ra,24(sp)
    800018a0:	01013403          	ld	s0,16(sp)
    800018a4:	00813483          	ld	s1,8(sp)
    800018a8:	02010113          	addi	sp,sp,32
    800018ac:	00008067          	ret
    if(closed) return -1;
    800018b0:	fff00513          	li	a0,-1
}
    800018b4:	00008067          	ret

00000000800018b8 <_ZN11mySemaphoreD1Ev>:
mySemaphore::~mySemaphore()
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00113423          	sd	ra,8(sp)
    800018c0:	00813023          	sd	s0,0(sp)
    800018c4:	01010413          	addi	s0,sp,16
    close();
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	f94080e7          	jalr	-108(ra) # 8000185c <_ZN11mySemaphore5closeEv>
}
    800018d0:	00813083          	ld	ra,8(sp)
    800018d4:	00013403          	ld	s0,0(sp)
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <_ZN11mySemaphore6signalEv>:
    if(closed) return -1;
    800018e0:	01c54783          	lbu	a5,28(a0)
    800018e4:	04079663          	bnez	a5,80001930 <_ZN11mySemaphore6signalEv+0x50>
    if(++this->val<=0) unblock();
    800018e8:	01852783          	lw	a5,24(a0)
    800018ec:	0017879b          	addiw	a5,a5,1
    800018f0:	0007871b          	sext.w	a4,a5
    800018f4:	00f52c23          	sw	a5,24(a0)
    800018f8:	00e05663          	blez	a4,80001904 <_ZN11mySemaphore6signalEv+0x24>
    return 0;
    800018fc:	00000513          	li	a0,0
}
    80001900:	00008067          	ret
int mySemaphore::signal() {
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00113423          	sd	ra,8(sp)
    8000190c:	00813023          	sd	s0,0(sp)
    80001910:	01010413          	addi	s0,sp,16
    if(++this->val<=0) unblock();
    80001914:	00000097          	auipc	ra,0x0
    80001918:	eb8080e7          	jalr	-328(ra) # 800017cc <_ZN11mySemaphore7unblockEv>
    return 0;
    8000191c:	00000513          	li	a0,0
}
    80001920:	00813083          	ld	ra,8(sp)
    80001924:	00013403          	ld	s0,0(sp)
    80001928:	01010113          	addi	sp,sp,16
    8000192c:	00008067          	ret
    if(closed) return -1;
    80001930:	fff00513          	li	a0,-1
    80001934:	00008067          	ret

0000000080001938 <_Z15userMainWrapperPv>:
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../h/myConsole.hpp"
extern void userMain();

void userMainWrapper(void* arg){
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00113423          	sd	ra,8(sp)
    80001940:	00813023          	sd	s0,0(sp)
    80001944:	01010413          	addi	s0,sp,16
    userMain();
    80001948:	00005097          	auipc	ra,0x5
    8000194c:	f04080e7          	jalr	-252(ra) # 8000684c <_Z8userMainv>
}
    80001950:	00813083          	ld	ra,8(sp)
    80001954:	00013403          	ld	s0,0(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret

0000000080001960 <_Z4idlePv>:
void idle(void* arg){
    80001960:	ff010113          	addi	sp,sp,-16
    80001964:	00113423          	sd	ra,8(sp)
    80001968:	00813023          	sd	s0,0(sp)
    8000196c:	01010413          	addi	s0,sp,16
    while(true) thread_dispatch();
    80001970:	00000097          	auipc	ra,0x0
    80001974:	a74080e7          	jalr	-1420(ra) # 800013e4 <_Z15thread_dispatchv>
    80001978:	ff9ff06f          	j	80001970 <_Z4idlePv+0x10>

000000008000197c <main>:
}
int main(){
    8000197c:	fe010113          	addi	sp,sp,-32
    80001980:	00113c23          	sd	ra,24(sp)
    80001984:	00813823          	sd	s0,16(sp)
    80001988:	00913423          	sd	s1,8(sp)
    8000198c:	01213023          	sd	s2,0(sp)
    80001990:	02010413          	addi	s0,sp,32
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static size_t getLargestFreeBlock();
    static size_t getFree();
    static void initMemory(){
        freeMemHead=(FreeBlock*) HEAP_START_ADDR;
    80001994:	0000c797          	auipc	a5,0xc
    80001998:	8047b783          	ld	a5,-2044(a5) # 8000d198 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000199c:	0007b783          	ld	a5,0(a5)
    800019a0:	0000c697          	auipc	a3,0xc
    800019a4:	8306b683          	ld	a3,-2000(a3) # 8000d1d0 <_GLOBAL_OFFSET_TABLE_+0x60>
    800019a8:	00f6b023          	sd	a5,0(a3)
        freeMemHead->next=nullptr;
    800019ac:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    800019b0:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    800019b4:	0000c717          	auipc	a4,0xc
    800019b8:	88473703          	ld	a4,-1916(a4) # 8000d238 <_GLOBAL_OFFSET_TABLE_+0xc8>
    800019bc:	00073703          	ld	a4,0(a4)
    800019c0:	40f70733          	sub	a4,a4,a5
    800019c4:	fe870713          	addi	a4,a4,-24
    800019c8:	00e7b023          	sd	a4,0(a5)
        totalFreeMem=freeMemHead->size;
    800019cc:	0006b783          	ld	a5,0(a3)
    800019d0:	0007b783          	ld	a5,0(a5)
    800019d4:	0000c717          	auipc	a4,0xc
    800019d8:	81473703          	ld	a4,-2028(a4) # 8000d1e8 <_GLOBAL_OFFSET_TABLE_+0x78>
    800019dc:	00f73023          	sd	a5,0(a4)
        largestFreeBlock=totalFreeMem;
    800019e0:	0000b717          	auipc	a4,0xb
    800019e4:	7a073703          	ld	a4,1952(a4) # 8000d180 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019e8:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::initMemory();
    TCB *threads[5];
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800019ec:	0000b797          	auipc	a5,0xb
    800019f0:	7c47b783          	ld	a5,1988(a5) # 8000d1b0 <_GLOBAL_OFFSET_TABLE_+0x40>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800019f4:	10579073          	csrw	stvec,a5

    threads[0]=TCB::createThreadBasic(nullptr,nullptr);
    800019f8:	00000593          	li	a1,0
    800019fc:	00000513          	li	a0,0
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	5bc080e7          	jalr	1468(ra) # 80001fbc <_ZN3TCB17createThreadBasicEPFvPvES0_>
    TCB::running = threads[0];
    80001a08:	0000c797          	auipc	a5,0xc
    80001a0c:	8207b783          	ld	a5,-2016(a5) # 8000d228 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80001a10:	00a7b023          	sd	a0,0(a5)
    uint64 *stack1 = (uint64 *) MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    80001a14:	00001537          	lui	a0,0x1
    80001a18:	00002097          	auipc	ra,0x2
    80001a1c:	c6c080e7          	jalr	-916(ra) # 80003684 <_ZN15MemoryAllocator9mem_allocEm>
    80001a20:	00050493          	mv	s1,a0
    myConsole::initConsole();
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	138080e7          	jalr	312(ra) # 80001b5c <_ZN9myConsole11initConsoleEv>
    myConsole::consumer = TCB::createThreadKernel(&myConsole::putcHandlerWrapper, nullptr, stack1);
    80001a2c:	00048613          	mv	a2,s1
    80001a30:	00000593          	li	a1,0
    80001a34:	0000b517          	auipc	a0,0xb
    80001a38:	75c53503          	ld	a0,1884(a0) # 8000d190 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	3a4080e7          	jalr	932(ra) # 80001de0 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_>
    80001a44:	0000b797          	auipc	a5,0xb
    80001a48:	7ac7b783          	ld	a5,1964(a5) # 8000d1f0 <_GLOBAL_OFFSET_TABLE_+0x80>
    80001a4c:	00a7b023          	sd	a0,0(a5)

    Thread* idleThread = new Thread(idle,nullptr);
    80001a50:	02000513          	li	a0,32
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	c84080e7          	jalr	-892(ra) # 800026d8 <_Znwm>
    80001a5c:	00050913          	mv	s2,a0
    80001a60:	00000613          	li	a2,0
    80001a64:	00000597          	auipc	a1,0x0
    80001a68:	efc58593          	addi	a1,a1,-260 # 80001960 <_Z4idlePv>
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	d74080e7          	jalr	-652(ra) # 800027e0 <_ZN6ThreadC1EPFvPvES0_>
    Semaphore* sem = new Semaphore(0);
    80001a74:	01000513          	li	a0,16
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	c60080e7          	jalr	-928(ra) # 800026d8 <_Znwm>
    80001a80:	00050493          	mv	s1,a0
    80001a84:	00000593          	li	a1,0
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	f30080e7          	jalr	-208(ra) # 800029b8 <_ZN9SemaphoreC1Ej>
    idleThread->start();
    80001a90:	00090513          	mv	a0,s2
    80001a94:	00001097          	auipc	ra,0x1
    80001a98:	ddc080e7          	jalr	-548(ra) # 80002870 <_ZN6Thread5startEv>

    Thread* userThread = new Thread(userMainWrapper, sem);
    80001a9c:	02000513          	li	a0,32
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	c38080e7          	jalr	-968(ra) # 800026d8 <_Znwm>
    80001aa8:	00050913          	mv	s2,a0
    80001aac:	00048613          	mv	a2,s1
    80001ab0:	00000597          	auipc	a1,0x0
    80001ab4:	e8858593          	addi	a1,a1,-376 # 80001938 <_Z15userMainWrapperPv>
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	d28080e7          	jalr	-728(ra) # 800027e0 <_ZN6ThreadC1EPFvPvES0_>
    80001ac0:	0580006f          	j	80001b18 <main+0x19c>
    80001ac4:	00050493          	mv	s1,a0
    Thread* idleThread = new Thread(idle,nullptr);
    80001ac8:	00090513          	mv	a0,s2
    80001acc:	00001097          	auipc	ra,0x1
    80001ad0:	c5c080e7          	jalr	-932(ra) # 80002728 <_ZdlPv>
    80001ad4:	00048513          	mv	a0,s1
    80001ad8:	0000d097          	auipc	ra,0xd
    80001adc:	9d0080e7          	jalr	-1584(ra) # 8000e4a8 <_Unwind_Resume>
    80001ae0:	00050913          	mv	s2,a0
    Semaphore* sem = new Semaphore(0);
    80001ae4:	00048513          	mv	a0,s1
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	c40080e7          	jalr	-960(ra) # 80002728 <_ZdlPv>
    80001af0:	00090513          	mv	a0,s2
    80001af4:	0000d097          	auipc	ra,0xd
    80001af8:	9b4080e7          	jalr	-1612(ra) # 8000e4a8 <_Unwind_Resume>
    80001afc:	00050493          	mv	s1,a0
    Thread* userThread = new Thread(userMainWrapper, sem);
    80001b00:	00090513          	mv	a0,s2
    80001b04:	00001097          	auipc	ra,0x1
    80001b08:	c24080e7          	jalr	-988(ra) # 80002728 <_ZdlPv>
    80001b0c:	00048513          	mv	a0,s1
    80001b10:	0000d097          	auipc	ra,0xd
    80001b14:	998080e7          	jalr	-1640(ra) # 8000e4a8 <_Unwind_Resume>
    userThread->start();
    80001b18:	00090513          	mv	a0,s2
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	d54080e7          	jalr	-684(ra) # 80002870 <_ZN6Thread5startEv>
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001b24:	00200793          	li	a5,2
    80001b28:	1007a073          	csrs	sstatus,a5
    //globalno prihvatamo prekide u supervizorskom modu
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    myConsole::wait();
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	b18080e7          	jalr	-1256(ra) # 80002644 <_ZN9myConsole4waitEv>
    sem->wait();
    80001b34:	00048513          	mv	a0,s1
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	ebc080e7          	jalr	-324(ra) # 800029f4 <_ZN9Semaphore4waitEv>

    return 0;
    80001b40:	00000513          	li	a0,0
    80001b44:	01813083          	ld	ra,24(sp)
    80001b48:	01013403          	ld	s0,16(sp)
    80001b4c:	00813483          	ld	s1,8(sp)
    80001b50:	00013903          	ld	s2,0(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret

0000000080001b5c <_ZN9myConsole11initConsoleEv>:
#include "../h/Semaphore.hpp"
class myConsole
{
public:

    static void initConsole(){
    80001b5c:	ff010113          	addi	sp,sp,-16
    80001b60:	00113423          	sd	ra,8(sp)
    80001b64:	00813023          	sd	s0,0(sp)
    80001b68:	01010413          	addi	s0,sp,16
        inputBuf = new char[1024];
    80001b6c:	40000513          	li	a0,1024
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	b90080e7          	jalr	-1136(ra) # 80002700 <_Znam>
    80001b78:	0000b797          	auipc	a5,0xb
    80001b7c:	6887b783          	ld	a5,1672(a5) # 8000d200 <_GLOBAL_OFFSET_TABLE_+0x90>
    80001b80:	00a7b023          	sd	a0,0(a5)
        outputBuf = new char[1024];
    80001b84:	40000513          	li	a0,1024
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	b78080e7          	jalr	-1160(ra) # 80002700 <_Znam>
    80001b90:	0000b797          	auipc	a5,0xb
    80001b94:	6807b783          	ld	a5,1664(a5) # 8000d210 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80001b98:	00a7b023          	sd	a0,0(a5)
        inputItemAvail = mySemaphore::createSemaphore(0);
    80001b9c:	00000513          	li	a0,0
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	ac4080e7          	jalr	-1340(ra) # 80001664 <_ZN11mySemaphore15createSemaphoreEj>
    80001ba8:	0000b797          	auipc	a5,0xb
    80001bac:	6007b783          	ld	a5,1536(a5) # 8000d1a8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001bb0:	00a7b023          	sd	a0,0(a5)
        outputItemAvail = mySemaphore::createSemaphore(0);
    80001bb4:	00000513          	li	a0,0
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	aac080e7          	jalr	-1364(ra) # 80001664 <_ZN11mySemaphore15createSemaphoreEj>
    80001bc0:	0000b797          	auipc	a5,0xb
    80001bc4:	6007b783          	ld	a5,1536(a5) # 8000d1c0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001bc8:	00a7b023          	sd	a0,0(a5)
        inputSpaceAvail = mySemaphore::createSemaphore(1023);
    80001bcc:	3ff00513          	li	a0,1023
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	a94080e7          	jalr	-1388(ra) # 80001664 <_ZN11mySemaphore15createSemaphoreEj>
    80001bd8:	0000b797          	auipc	a5,0xb
    80001bdc:	6207b783          	ld	a5,1568(a5) # 8000d1f8 <_GLOBAL_OFFSET_TABLE_+0x88>
    80001be0:	00a7b023          	sd	a0,0(a5)
        outputSpaceAvail = mySemaphore::createSemaphore(1023);
    80001be4:	3ff00513          	li	a0,1023
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	a7c080e7          	jalr	-1412(ra) # 80001664 <_ZN11mySemaphore15createSemaphoreEj>
    80001bf0:	0000b797          	auipc	a5,0xb
    80001bf4:	6187b783          	ld	a5,1560(a5) # 8000d208 <_GLOBAL_OFFSET_TABLE_+0x98>
    80001bf8:	00a7b023          	sd	a0,0(a5)
        mutexIn = mySemaphore::createSemaphore(1);
    80001bfc:	00100513          	li	a0,1
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	a64080e7          	jalr	-1436(ra) # 80001664 <_ZN11mySemaphore15createSemaphoreEj>
    80001c08:	0000b797          	auipc	a5,0xb
    80001c0c:	5987b783          	ld	a5,1432(a5) # 8000d1a0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c10:	00a7b023          	sd	a0,0(a5)
        mutexOut = mySemaphore::createSemaphore(1);
    80001c14:	00100513          	li	a0,1
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	a4c080e7          	jalr	-1460(ra) # 80001664 <_ZN11mySemaphore15createSemaphoreEj>
    80001c20:	0000b797          	auipc	a5,0xb
    80001c24:	6287b783          	ld	a5,1576(a5) # 8000d248 <_GLOBAL_OFFSET_TABLE_+0xd8>
    80001c28:	00a7b023          	sd	a0,0(a5)
    }
    80001c2c:	00813083          	ld	ra,8(sp)
    80001c30:	00013403          	ld	s0,0(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret

0000000080001c3c <_Z41__static_initialization_and_destruction_0ii>:
void TCB::insertWaiter(TCB *thread)
{
    thread->blockedWait=true;
    this->waitingThreads.addLast(thread);

}
    80001c3c:	ff010113          	addi	sp,sp,-16
    80001c40:	00813423          	sd	s0,8(sp)
    80001c44:	01010413          	addi	s0,sp,16
    80001c48:	00100793          	li	a5,1
    80001c4c:	00f50863          	beq	a0,a5,80001c5c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001c50:	00813403          	ld	s0,8(sp)
    80001c54:	01010113          	addi	sp,sp,16
    80001c58:	00008067          	ret
    80001c5c:	000107b7          	lui	a5,0x10
    80001c60:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c64:	fef596e3          	bne	a1,a5,80001c50 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    80001c68:	0000b797          	auipc	a5,0xb
    80001c6c:	63878793          	addi	a5,a5,1592 # 8000d2a0 <_ZN3TCB8blockedQE>
    80001c70:	0007b023          	sd	zero,0(a5)
    80001c74:	0007b423          	sd	zero,8(a5)
    80001c78:	0007a823          	sw	zero,16(a5)
    80001c7c:	fd5ff06f          	j	80001c50 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001c80 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper(){
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00113423          	sd	ra,8(sp)
    80001c88:	00813023          	sd	s0,0(sp)
    80001c8c:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001c90:	00001097          	auipc	ra,0x1
    80001c94:	f34080e7          	jalr	-204(ra) # 80002bc4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);//user mode
    80001c98:	0000b797          	auipc	a5,0xb
    80001c9c:	6207b783          	ld	a5,1568(a5) # 8000d2b8 <_ZN3TCB7runningE>
    80001ca0:	0007b703          	ld	a4,0(a5)
    80001ca4:	0087b503          	ld	a0,8(a5)
    80001ca8:	000700e7          	jalr	a4
    thread_exit();//user mode
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	704080e7          	jalr	1796(ra) # 800013b0 <_Z11thread_exitv>
}
    80001cb4:	00813083          	ld	ra,8(sp)
    80001cb8:	00013403          	ld	s0,0(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN3TCB13kernelWrapperEv>:
void TCB::kernelWrapper(){
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00113423          	sd	ra,8(sp)
    80001ccc:	00813023          	sd	s0,0(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    Riscv::kernelWrapper();
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	f38080e7          	jalr	-200(ra) # 80002c0c <_ZN5Riscv13kernelWrapperEv>
    running->body(running->arg);//kernel mode
    80001cdc:	0000b797          	auipc	a5,0xb
    80001ce0:	5dc7b783          	ld	a5,1500(a5) # 8000d2b8 <_ZN3TCB7runningE>
    80001ce4:	0007b703          	ld	a4,0(a5)
    80001ce8:	0087b503          	ld	a0,8(a5)
    80001cec:	000700e7          	jalr	a4
    thread_exit();
    80001cf0:	fffff097          	auipc	ra,0xfffff
    80001cf4:	6c0080e7          	jalr	1728(ra) # 800013b0 <_Z11thread_exitv>
}
    80001cf8:	00813083          	ld	ra,8(sp)
    80001cfc:	00013403          	ld	s0,0(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret

0000000080001d08 <_ZN3TCB12createThreadEPFvPvES0_S0_>:
{
    80001d08:	fd010113          	addi	sp,sp,-48
    80001d0c:	02113423          	sd	ra,40(sp)
    80001d10:	02813023          	sd	s0,32(sp)
    80001d14:	00913c23          	sd	s1,24(sp)
    80001d18:	01213823          	sd	s2,16(sp)
    80001d1c:	01313423          	sd	s3,8(sp)
    80001d20:	01413023          	sd	s4,0(sp)
    80001d24:	03010413          	addi	s0,sp,48
    80001d28:	00050993          	mv	s3,a0
    80001d2c:	00058a13          	mv	s4,a1
    80001d30:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace);
    80001d34:	05000513          	li	a0,80
    80001d38:	00001097          	auipc	ra,0x1
    80001d3c:	9a0080e7          	jalr	-1632(ra) # 800026d8 <_Znwm>
    80001d40:	00050493          	mv	s1,a0
                                               }),
                                       finished(false),
                                       blocked(false),
                                       closed(false),
                                       sleep(false),
                                       blockedWait(false)
    80001d44:	01353023          	sd	s3,0(a0)
    80001d48:	01453423          	sd	s4,8(a0)
    80001d4c:	01253823          	sd	s2,16(a0)
    80001d50:	00200793          	li	a5,2
    80001d54:	00f53c23          	sd	a5,24(a0)
                                                       kernel? (uint64) &kernelWrapper:(uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
    80001d58:	00000797          	auipc	a5,0x0
    80001d5c:	f2878793          	addi	a5,a5,-216 # 80001c80 <_ZN3TCB13threadWrapperEv>
                                       blockedWait(false)
    80001d60:	02f53023          	sd	a5,32(a0)
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001d64:	00001637          	lui	a2,0x1
    80001d68:	00c90933          	add	s2,s2,a2
                                       blockedWait(false)
    80001d6c:	03253423          	sd	s2,40(a0)
    80001d70:	02050823          	sb	zero,48(a0)
    80001d74:	020508a3          	sb	zero,49(a0)
    80001d78:	02050923          	sb	zero,50(a0)
    80001d7c:	020509a3          	sb	zero,51(a0)
    80001d80:	02050a23          	sb	zero,52(a0)
    80001d84:	02053c23          	sd	zero,56(a0)
    80001d88:	04053023          	sd	zero,64(a0)
    80001d8c:	04052423          	sw	zero,72(a0)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001d90:	02098663          	beqz	s3,80001dbc <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb4>
    80001d94:	00001097          	auipc	ra,0x1
    80001d98:	600080e7          	jalr	1536(ra) # 80003394 <_ZN9Scheduler3putEP3TCB>
    80001d9c:	0200006f          	j	80001dbc <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb4>
    80001da0:	00050913          	mv	s2,a0
    80001da4:	00048513          	mv	a0,s1
    80001da8:	00001097          	auipc	ra,0x1
    80001dac:	980080e7          	jalr	-1664(ra) # 80002728 <_ZdlPv>
    80001db0:	00090513          	mv	a0,s2
    80001db4:	0000c097          	auipc	ra,0xc
    80001db8:	6f4080e7          	jalr	1780(ra) # 8000e4a8 <_Unwind_Resume>
}
    80001dbc:	00048513          	mv	a0,s1
    80001dc0:	02813083          	ld	ra,40(sp)
    80001dc4:	02013403          	ld	s0,32(sp)
    80001dc8:	01813483          	ld	s1,24(sp)
    80001dcc:	01013903          	ld	s2,16(sp)
    80001dd0:	00813983          	ld	s3,8(sp)
    80001dd4:	00013a03          	ld	s4,0(sp)
    80001dd8:	03010113          	addi	sp,sp,48
    80001ddc:	00008067          	ret

0000000080001de0 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_>:
{
    80001de0:	fd010113          	addi	sp,sp,-48
    80001de4:	02113423          	sd	ra,40(sp)
    80001de8:	02813023          	sd	s0,32(sp)
    80001dec:	00913c23          	sd	s1,24(sp)
    80001df0:	01213823          	sd	s2,16(sp)
    80001df4:	01313423          	sd	s3,8(sp)
    80001df8:	01413023          	sd	s4,0(sp)
    80001dfc:	03010413          	addi	s0,sp,48
    80001e00:	00050993          	mv	s3,a0
    80001e04:	00058a13          	mv	s4,a1
    80001e08:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace,true);
    80001e0c:	05000513          	li	a0,80
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	8c8080e7          	jalr	-1848(ra) # 800026d8 <_Znwm>
    80001e18:	00050493          	mv	s1,a0
                                       blockedWait(false)
    80001e1c:	01353023          	sd	s3,0(a0)
    80001e20:	01453423          	sd	s4,8(a0)
    80001e24:	01253823          	sd	s2,16(a0)
    80001e28:	00200793          	li	a5,2
    80001e2c:	00f53c23          	sd	a5,24(a0)
                                                       kernel? (uint64) &kernelWrapper:(uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
    80001e30:	00000797          	auipc	a5,0x0
    80001e34:	e9478793          	addi	a5,a5,-364 # 80001cc4 <_ZN3TCB13kernelWrapperEv>
                                       blockedWait(false)
    80001e38:	02f53023          	sd	a5,32(a0)
                                                       (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001e3c:	00001637          	lui	a2,0x1
    80001e40:	00c90933          	add	s2,s2,a2
                                       blockedWait(false)
    80001e44:	03253423          	sd	s2,40(a0)
    80001e48:	02050823          	sb	zero,48(a0)
    80001e4c:	020508a3          	sb	zero,49(a0)
    80001e50:	02050923          	sb	zero,50(a0)
    80001e54:	020509a3          	sb	zero,51(a0)
    80001e58:	02050a23          	sb	zero,52(a0)
    80001e5c:	02053c23          	sd	zero,56(a0)
    80001e60:	04053023          	sd	zero,64(a0)
    80001e64:	04052423          	sw	zero,72(a0)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001e68:	02098663          	beqz	s3,80001e94 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_+0xb4>
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	528080e7          	jalr	1320(ra) # 80003394 <_ZN9Scheduler3putEP3TCB>
    80001e74:	0200006f          	j	80001e94 <_ZN3TCB18createThreadKernelEPFvPvES0_S0_+0xb4>
    80001e78:	00050913          	mv	s2,a0
    80001e7c:	00048513          	mv	a0,s1
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	8a8080e7          	jalr	-1880(ra) # 80002728 <_ZdlPv>
    80001e88:	00090513          	mv	a0,s2
    80001e8c:	0000c097          	auipc	ra,0xc
    80001e90:	61c080e7          	jalr	1564(ra) # 8000e4a8 <_Unwind_Resume>
}
    80001e94:	00048513          	mv	a0,s1
    80001e98:	02813083          	ld	ra,40(sp)
    80001e9c:	02013403          	ld	s0,32(sp)
    80001ea0:	01813483          	ld	s1,24(sp)
    80001ea4:	01013903          	ld	s2,16(sp)
    80001ea8:	00813983          	ld	s3,8(sp)
    80001eac:	00013a03          	ld	s4,0(sp)
    80001eb0:	03010113          	addi	sp,sp,48
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN3TCB8dispatchEv>:
{
    80001eb8:	fd010113          	addi	sp,sp,-48
    80001ebc:	02113423          	sd	ra,40(sp)
    80001ec0:	02813023          	sd	s0,32(sp)
    80001ec4:	00913c23          	sd	s1,24(sp)
    80001ec8:	01213823          	sd	s2,16(sp)
    80001ecc:	01313423          	sd	s3,8(sp)
    80001ed0:	03010413          	addi	s0,sp,48
    TCB* old = running;
    80001ed4:	0000b497          	auipc	s1,0xb
    80001ed8:	3e44b483          	ld	s1,996(s1) # 8000d2b8 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001edc:	0304c783          	lbu	a5,48(s1)
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept() && !old->blockedWait) Scheduler::put(old);
    80001ee0:	00079e63          	bnez	a5,80001efc <_ZN3TCB8dispatchEv+0x44>
    bool isBlocked(){return blocked;}
    80001ee4:	0314c703          	lbu	a4,49(s1)
    80001ee8:	00071a63          	bnez	a4,80001efc <_ZN3TCB8dispatchEv+0x44>
    bool isSlept(){return sleep;}
    80001eec:	0334c703          	lbu	a4,51(s1)
    80001ef0:	00071663          	bnez	a4,80001efc <_ZN3TCB8dispatchEv+0x44>
    80001ef4:	0344c703          	lbu	a4,52(s1)
    80001ef8:	04070263          	beqz	a4,80001f3c <_ZN3TCB8dispatchEv+0x84>
    else if(old->isFinished()) {
    80001efc:	06079c63          	bnez	a5,80001f74 <_ZN3TCB8dispatchEv+0xbc>
    running=Scheduler::get();
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	418080e7          	jalr	1048(ra) # 80003318 <_ZN9Scheduler3getEv>
    80001f08:	0000b797          	auipc	a5,0xb
    80001f0c:	3aa7b823          	sd	a0,944(a5) # 8000d2b8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001f10:	02050593          	addi	a1,a0,32
    80001f14:	02048513          	addi	a0,s1,32
    80001f18:	fffff097          	auipc	ra,0xfffff
    80001f1c:	308080e7          	jalr	776(ra) # 80001220 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001f20:	02813083          	ld	ra,40(sp)
    80001f24:	02013403          	ld	s0,32(sp)
    80001f28:	01813483          	ld	s1,24(sp)
    80001f2c:	01013903          	ld	s2,16(sp)
    80001f30:	00813983          	ld	s3,8(sp)
    80001f34:	03010113          	addi	sp,sp,48
    80001f38:	00008067          	ret
    if(!old->isFinished() && !old->isBlocked() && !old->isSlept() && !old->blockedWait) Scheduler::put(old);
    80001f3c:	00048513          	mv	a0,s1
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	454080e7          	jalr	1108(ra) # 80003394 <_ZN9Scheduler3putEP3TCB>
    80001f48:	fb9ff06f          	j	80001f00 <_ZN3TCB8dispatchEv+0x48>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001f4c:	00093423          	sd	zero,8(s2)

        T *ret = elem->data;
    80001f50:	00053983          	ld	s3,0(a0)
        MemoryAllocator::mem_free(elem);
    80001f54:	00002097          	auipc	ra,0x2
    80001f58:	88c080e7          	jalr	-1908(ra) # 800037e0 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80001f5c:	01092783          	lw	a5,16(s2)
    80001f60:	fff7879b          	addiw	a5,a5,-1
    80001f64:	00f92823          	sw	a5,16(s2)
            thread->sleep=false;
    80001f68:	020989a3          	sb	zero,51(s3)
            if(thread->blockedWait)
    80001f6c:	0349c783          	lbu	a5,52(s3)
    80001f70:	02079c63          	bnez	a5,80001fa8 <_ZN3TCB8dispatchEv+0xf0>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001f74:	0384b783          	ld	a5,56(s1)
    80001f78:	f80784e3          	beqz	a5,80001f00 <_ZN3TCB8dispatchEv+0x48>
        return head->data;
    80001f7c:	0007b783          	ld	a5,0(a5)
        while(old->waitingThreads.peekFirst()){
    80001f80:	f80780e3          	beqz	a5,80001f00 <_ZN3TCB8dispatchEv+0x48>
            TCB* thread = old->waitingThreads.removeFirst();
    80001f84:	03848913          	addi	s2,s1,56
        if (!head) { return 0; }
    80001f88:	0384b503          	ld	a0,56(s1)
    80001f8c:	00050a63          	beqz	a0,80001fa0 <_ZN3TCB8dispatchEv+0xe8>
        head = head->next;
    80001f90:	00853783          	ld	a5,8(a0)
    80001f94:	02f4bc23          	sd	a5,56(s1)
        if (!head) { tail = 0; }
    80001f98:	fa079ce3          	bnez	a5,80001f50 <_ZN3TCB8dispatchEv+0x98>
    80001f9c:	fb1ff06f          	j	80001f4c <_ZN3TCB8dispatchEv+0x94>
        if (!head) { return 0; }
    80001fa0:	00050993          	mv	s3,a0
    80001fa4:	fc5ff06f          	j	80001f68 <_ZN3TCB8dispatchEv+0xb0>
                Scheduler::put(thread);
    80001fa8:	00098513          	mv	a0,s3
    80001fac:	00001097          	auipc	ra,0x1
    80001fb0:	3e8080e7          	jalr	1000(ra) # 80003394 <_ZN9Scheduler3putEP3TCB>
                thread->blockedWait = false;
    80001fb4:	02098a23          	sb	zero,52(s3)
    80001fb8:	fbdff06f          	j	80001f74 <_ZN3TCB8dispatchEv+0xbc>

0000000080001fbc <_ZN3TCB17createThreadBasicEPFvPvES0_>:
{
    80001fbc:	fd010113          	addi	sp,sp,-48
    80001fc0:	02113423          	sd	ra,40(sp)
    80001fc4:	02813023          	sd	s0,32(sp)
    80001fc8:	00913c23          	sd	s1,24(sp)
    80001fcc:	01213823          	sd	s2,16(sp)
    80001fd0:	01313423          	sd	s3,8(sp)
    80001fd4:	03010413          	addi	s0,sp,48
    80001fd8:	00050913          	mv	s2,a0
    80001fdc:	00058993          	mv	s3,a1
    return new TCB(body,arg,DEFAULT_TIME_SLICE);
    80001fe0:	05000513          	li	a0,80
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	6f4080e7          	jalr	1780(ra) # 800026d8 <_Znwm>
    80001fec:	00050493          	mv	s1,a0
                                       blockedWait(false)
    80001ff0:	01253023          	sd	s2,0(a0)
    80001ff4:	01353423          	sd	s3,8(a0)
                                       stack(body!=nullptr? (char*)(new char*[DEFAULT_STACK_SIZE]): nullptr),timeSlice(timeslice),
    80001ff8:	00090a63          	beqz	s2,8000200c <_ZN3TCB17createThreadBasicEPFvPvES0_+0x50>
    80001ffc:	00008537          	lui	a0,0x8
    80002000:	00000097          	auipc	ra,0x0
    80002004:	700080e7          	jalr	1792(ra) # 80002700 <_Znam>
    80002008:	0080006f          	j	80002010 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x54>
    8000200c:	00000513          	li	a0,0
                                       blockedWait(false)
    80002010:	00a4b823          	sd	a0,16(s1)
    80002014:	00200793          	li	a5,2
    80002018:	00f4bc23          	sd	a5,24(s1)
    8000201c:	00000797          	auipc	a5,0x0
    80002020:	c6478793          	addi	a5,a5,-924 # 80001c80 <_ZN3TCB13threadWrapperEv>
    80002024:	02f4b023          	sd	a5,32(s1)
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80002028:	04090263          	beqz	s2,8000206c <_ZN3TCB17createThreadBasicEPFvPvES0_+0xb0>
    8000202c:	000017b7          	lui	a5,0x1
    80002030:	00f50533          	add	a0,a0,a5
                                       blockedWait(false)
    80002034:	02a4b423          	sd	a0,40(s1)
    80002038:	02048823          	sb	zero,48(s1)
    8000203c:	020488a3          	sb	zero,49(s1)
    80002040:	02048923          	sb	zero,50(s1)
    80002044:	020489a3          	sb	zero,51(s1)
    80002048:	02048a23          	sb	zero,52(s1)
    List() : head(0), tail(0) ,size(0){}
    8000204c:	0204bc23          	sd	zero,56(s1)
    80002050:	0404b023          	sd	zero,64(s1)
    80002054:	0404a423          	sw	zero,72(s1)
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80002058:	02090c63          	beqz	s2,80002090 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xd4>
    8000205c:	00048513          	mv	a0,s1
    80002060:	00001097          	auipc	ra,0x1
    80002064:	334080e7          	jalr	820(ra) # 80003394 <_ZN9Scheduler3putEP3TCB>
    80002068:	0280006f          	j	80002090 <_ZN3TCB17createThreadBasicEPFvPvES0_+0xd4>
                                                       body!= nullptr? (uint64) &stack[DEFAULT_STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    8000206c:	00000513          	li	a0,0
    80002070:	fc5ff06f          	j	80002034 <_ZN3TCB17createThreadBasicEPFvPvES0_+0x78>
    80002074:	00050913          	mv	s2,a0
    80002078:	00048513          	mv	a0,s1
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	6ac080e7          	jalr	1708(ra) # 80002728 <_ZdlPv>
    80002084:	00090513          	mv	a0,s2
    80002088:	0000c097          	auipc	ra,0xc
    8000208c:	420080e7          	jalr	1056(ra) # 8000e4a8 <_Unwind_Resume>
}
    80002090:	00048513          	mv	a0,s1
    80002094:	02813083          	ld	ra,40(sp)
    80002098:	02013403          	ld	s0,32(sp)
    8000209c:	01813483          	ld	s1,24(sp)
    800020a0:	01013903          	ld	s2,16(sp)
    800020a4:	00813983          	ld	s3,8(sp)
    800020a8:	03010113          	addi	sp,sp,48
    800020ac:	00008067          	ret

00000000800020b0 <_ZN3TCB7toSleepEm>:
{
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00113423          	sd	ra,8(sp)
    800020b8:	00813023          	sd	s0,0(sp)
    800020bc:	01010413          	addi	s0,sp,16
    800020c0:	00050593          	mv	a1,a0
    running->setSleep(true);
    800020c4:	0000b517          	auipc	a0,0xb
    800020c8:	1f453503          	ld	a0,500(a0) # 8000d2b8 <_ZN3TCB7runningE>
    void setSleep(bool flag){ TCB::sleep = flag;}
    800020cc:	00100713          	li	a4,1
    800020d0:	02e509a3          	sb	a4,51(a0)
    Scheduler::putSorted(running,wakeTime);
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	3ec080e7          	jalr	1004(ra) # 800034c0 <_ZN9Scheduler9putSortedEP3TCBm>
}
    800020dc:	00813083          	ld	ra,8(sp)
    800020e0:	00013403          	ld	s0,0(sp)
    800020e4:	01010113          	addi	sp,sp,16
    800020e8:	00008067          	ret

00000000800020ec <_ZN3TCB19createThreadBlockedEPFvPvES0_S0_>:
{
    800020ec:	fd010113          	addi	sp,sp,-48
    800020f0:	02113423          	sd	ra,40(sp)
    800020f4:	02813023          	sd	s0,32(sp)
    800020f8:	00913c23          	sd	s1,24(sp)
    800020fc:	01213823          	sd	s2,16(sp)
    80002100:	01313423          	sd	s3,8(sp)
    80002104:	01413023          	sd	s4,0(sp)
    80002108:	03010413          	addi	s0,sp,48
    8000210c:	00050a13          	mv	s4,a0
    80002110:	00058993          	mv	s3,a1
    80002114:	00060913          	mv	s2,a2
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace,1);
    80002118:	05000513          	li	a0,80
    8000211c:	00000097          	auipc	ra,0x0
    80002120:	5bc080e7          	jalr	1468(ra) # 800026d8 <_Znwm>
    80002124:	00050493          	mv	s1,a0
                                                                                            }),
                                                                                    finished(false),
                                                                                    blocked(false),
                                                                                    closed(false),
                                                                                    sleep(false),
                                                                                    blockedWait(false)
    80002128:	01453023          	sd	s4,0(a0)
    8000212c:	01353423          	sd	s3,8(a0)
    80002130:	01253823          	sd	s2,16(a0)
    80002134:	00200793          	li	a5,2
    80002138:	00f53c23          	sd	a5,24(a0)
    8000213c:	00000797          	auipc	a5,0x0
    80002140:	b4478793          	addi	a5,a5,-1212 # 80001c80 <_ZN3TCB13threadWrapperEv>
    80002144:	02f53023          	sd	a5,32(a0)
                                                                                                    (uint64) & ((char*)stack)[DEFAULT_STACK_SIZE]// stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80002148:	00001637          	lui	a2,0x1
    8000214c:	00c90933          	add	s2,s2,a2
                                                                                    blockedWait(false)
    80002150:	03253423          	sd	s2,40(a0)
    80002154:	02050823          	sb	zero,48(a0)
    80002158:	020508a3          	sb	zero,49(a0)
    8000215c:	02050923          	sb	zero,50(a0)
    80002160:	020509a3          	sb	zero,51(a0)
    80002164:	02050a23          	sb	zero,52(a0)
    80002168:	02053c23          	sd	zero,56(a0)
    8000216c:	04053023          	sd	zero,64(a0)
    80002170:	04052423          	sw	zero,72(a0)
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    80002174:	00100513          	li	a0,1
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	50c080e7          	jalr	1292(ra) # 80003684 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80002180:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    80002184:	00053423          	sd	zero,8(a0)
        if (tail)
    80002188:	0000b797          	auipc	a5,0xb
    8000218c:	1207b783          	ld	a5,288(a5) # 8000d2a8 <_ZN3TCB8blockedQE+0x8>
    80002190:	04078463          	beqz	a5,800021d8 <_ZN3TCB19createThreadBlockedEPFvPvES0_S0_+0xec>
            tail->next = elem;
    80002194:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002198:	0000b797          	auipc	a5,0xb
    8000219c:	10a7b823          	sd	a0,272(a5) # 8000d2a8 <_ZN3TCB8blockedQE+0x8>
        size++;
    800021a0:	0000b717          	auipc	a4,0xb
    800021a4:	10070713          	addi	a4,a4,256 # 8000d2a0 <_ZN3TCB8blockedQE>
    800021a8:	01072783          	lw	a5,16(a4)
    800021ac:	0017879b          	addiw	a5,a5,1
    800021b0:	00f72823          	sw	a5,16(a4)
}
    800021b4:	00048513          	mv	a0,s1
    800021b8:	02813083          	ld	ra,40(sp)
    800021bc:	02013403          	ld	s0,32(sp)
    800021c0:	01813483          	ld	s1,24(sp)
    800021c4:	01013903          	ld	s2,16(sp)
    800021c8:	00813983          	ld	s3,8(sp)
    800021cc:	00013a03          	ld	s4,0(sp)
    800021d0:	03010113          	addi	sp,sp,48
    800021d4:	00008067          	ret
            head = tail = elem;
    800021d8:	0000b797          	auipc	a5,0xb
    800021dc:	0c878793          	addi	a5,a5,200 # 8000d2a0 <_ZN3TCB8blockedQE>
    800021e0:	00a7b423          	sd	a0,8(a5)
    800021e4:	00a7b023          	sd	a0,0(a5)
    800021e8:	fb9ff06f          	j	800021a0 <_ZN3TCB19createThreadBlockedEPFvPvES0_S0_+0xb4>
    800021ec:	00050913          	mv	s2,a0
    return new TCB(body, DEFAULT_TIME_SLICE,arg,stackSpace,1);
    800021f0:	00048513          	mv	a0,s1
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	534080e7          	jalr	1332(ra) # 80002728 <_ZdlPv>
    800021fc:	00090513          	mv	a0,s2
    80002200:	0000c097          	auipc	ra,0xc
    80002204:	2a8080e7          	jalr	680(ra) # 8000e4a8 <_Unwind_Resume>

0000000080002208 <_ZN3TCB12insertWaiterEPS_>:
{
    80002208:	fd010113          	addi	sp,sp,-48
    8000220c:	02113423          	sd	ra,40(sp)
    80002210:	02813023          	sd	s0,32(sp)
    80002214:	00913c23          	sd	s1,24(sp)
    80002218:	01213823          	sd	s2,16(sp)
    8000221c:	01313423          	sd	s3,8(sp)
    80002220:	03010413          	addi	s0,sp,48
    80002224:	00050993          	mv	s3,a0
    80002228:	00058913          	mv	s2,a1
    thread->blockedWait=true;
    8000222c:	00100793          	li	a5,1
    80002230:	02f58a23          	sb	a5,52(a1)
    this->waitingThreads.addLast(thread);
    80002234:	03850493          	addi	s1,a0,56
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    80002238:	00100513          	li	a0,1
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	448080e7          	jalr	1096(ra) # 80003684 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    80002244:	01253023          	sd	s2,0(a0)
        elem->next = nullptr;
    80002248:	00053423          	sd	zero,8(a0)
        if (tail)
    8000224c:	0084b783          	ld	a5,8(s1)
    80002250:	02078a63          	beqz	a5,80002284 <_ZN3TCB12insertWaiterEPS_+0x7c>
            tail->next = elem;
    80002254:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002258:	00a4b423          	sd	a0,8(s1)
        size++;
    8000225c:	0104a783          	lw	a5,16(s1)
    80002260:	0017879b          	addiw	a5,a5,1
    80002264:	00f4a823          	sw	a5,16(s1)
}
    80002268:	02813083          	ld	ra,40(sp)
    8000226c:	02013403          	ld	s0,32(sp)
    80002270:	01813483          	ld	s1,24(sp)
    80002274:	01013903          	ld	s2,16(sp)
    80002278:	00813983          	ld	s3,8(sp)
    8000227c:	03010113          	addi	sp,sp,48
    80002280:	00008067          	ret
            head = tail = elem;
    80002284:	00a4b423          	sd	a0,8(s1)
    80002288:	02a9bc23          	sd	a0,56(s3)
    8000228c:	fd1ff06f          	j	8000225c <_ZN3TCB12insertWaiterEPS_+0x54>

0000000080002290 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00113423          	sd	ra,8(sp)
    80002298:	00813023          	sd	s0,0(sp)
    8000229c:	01010413          	addi	s0,sp,16
    800022a0:	000105b7          	lui	a1,0x10
    800022a4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800022a8:	00100513          	li	a0,1
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	990080e7          	jalr	-1648(ra) # 80001c3c <_Z41__static_initialization_and_destruction_0ii>
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <_ZN9myConsole8getInputEv>:
mySemaphore* myConsole::inputSpaceAvail;
mySemaphore* myConsole::mutexIn;
mySemaphore* myConsole::mutexOut;
TCB* myConsole::consumer;
char myConsole::getInput()
{
    800022c4:	fe010113          	addi	sp,sp,-32
    800022c8:	00113c23          	sd	ra,24(sp)
    800022cc:	00813823          	sd	s0,16(sp)
    800022d0:	00913423          	sd	s1,8(sp)
    800022d4:	01213023          	sd	s2,0(sp)
    800022d8:	02010413          	addi	s0,sp,32
    inputItemAvail->wait();
    800022dc:	0000b497          	auipc	s1,0xb
    800022e0:	ffc48493          	addi	s1,s1,-4 # 8000d2d8 <_ZN9myConsole14inputItemAvailE>
    800022e4:	0004b503          	ld	a0,0(s1)
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	454080e7          	jalr	1108(ra) # 8000173c <_ZN11mySemaphore4waitEv>
    mutexIn->wait();
    800022f0:	0084b503          	ld	a0,8(s1)
    800022f4:	fffff097          	auipc	ra,0xfffff
    800022f8:	448080e7          	jalr	1096(ra) # 8000173c <_ZN11mySemaphore4waitEv>
    char ret=inputBuf[inputHead];
    800022fc:	0104a783          	lw	a5,16(s1)
    80002300:	0184b703          	ld	a4,24(s1)
    80002304:	00f70733          	add	a4,a4,a5
    80002308:	00074903          	lbu	s2,0(a4)
    inputHead=(inputHead+1)%1024;
    8000230c:	0017879b          	addiw	a5,a5,1
    80002310:	41f7d71b          	sraiw	a4,a5,0x1f
    80002314:	0167571b          	srliw	a4,a4,0x16
    80002318:	00e787bb          	addw	a5,a5,a4
    8000231c:	3ff7f793          	andi	a5,a5,1023
    80002320:	40e787bb          	subw	a5,a5,a4
    80002324:	00f4a823          	sw	a5,16(s1)

    mutexIn->signal();
    80002328:	0084b503          	ld	a0,8(s1)
    8000232c:	fffff097          	auipc	ra,0xfffff
    80002330:	5b4080e7          	jalr	1460(ra) # 800018e0 <_ZN11mySemaphore6signalEv>
    inputSpaceAvail->signal();
    80002334:	0204b503          	ld	a0,32(s1)
    80002338:	fffff097          	auipc	ra,0xfffff
    8000233c:	5a8080e7          	jalr	1448(ra) # 800018e0 <_ZN11mySemaphore6signalEv>
    return ret;
}
    80002340:	00090513          	mv	a0,s2
    80002344:	01813083          	ld	ra,24(sp)
    80002348:	01013403          	ld	s0,16(sp)
    8000234c:	00813483          	ld	s1,8(sp)
    80002350:	00013903          	ld	s2,0(sp)
    80002354:	02010113          	addi	sp,sp,32
    80002358:	00008067          	ret

000000008000235c <_ZN9myConsole9getOutputEv>:

char myConsole::getOutput()
{
    8000235c:	fe010113          	addi	sp,sp,-32
    80002360:	00113c23          	sd	ra,24(sp)
    80002364:	00813823          	sd	s0,16(sp)
    80002368:	00913423          	sd	s1,8(sp)
    8000236c:	01213023          	sd	s2,0(sp)
    80002370:	02010413          	addi	s0,sp,32
    outputItemAvail->wait();
    80002374:	0000b497          	auipc	s1,0xb
    80002378:	f6448493          	addi	s1,s1,-156 # 8000d2d8 <_ZN9myConsole14inputItemAvailE>
    8000237c:	0284b503          	ld	a0,40(s1)
    80002380:	fffff097          	auipc	ra,0xfffff
    80002384:	3bc080e7          	jalr	956(ra) # 8000173c <_ZN11mySemaphore4waitEv>
    mutexOut->wait();
    80002388:	0304b503          	ld	a0,48(s1)
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	3b0080e7          	jalr	944(ra) # 8000173c <_ZN11mySemaphore4waitEv>
    char ret=outputBuf[outputHead];
    80002394:	0384a783          	lw	a5,56(s1)
    80002398:	0404b703          	ld	a4,64(s1)
    8000239c:	00f70733          	add	a4,a4,a5
    800023a0:	00074903          	lbu	s2,0(a4)
    outputHead=(outputHead+1)%1024;
    800023a4:	0017879b          	addiw	a5,a5,1
    800023a8:	41f7d71b          	sraiw	a4,a5,0x1f
    800023ac:	0167571b          	srliw	a4,a4,0x16
    800023b0:	00e787bb          	addw	a5,a5,a4
    800023b4:	3ff7f793          	andi	a5,a5,1023
    800023b8:	40e787bb          	subw	a5,a5,a4
    800023bc:	02f4ac23          	sw	a5,56(s1)
    outSize--;
    800023c0:	0484a783          	lw	a5,72(s1)
    800023c4:	fff7879b          	addiw	a5,a5,-1
    800023c8:	04f4a423          	sw	a5,72(s1)

    mutexOut->signal();
    800023cc:	0304b503          	ld	a0,48(s1)
    800023d0:	fffff097          	auipc	ra,0xfffff
    800023d4:	510080e7          	jalr	1296(ra) # 800018e0 <_ZN11mySemaphore6signalEv>
    outputSpaceAvail->signal();
    800023d8:	0504b503          	ld	a0,80(s1)
    800023dc:	fffff097          	auipc	ra,0xfffff
    800023e0:	504080e7          	jalr	1284(ra) # 800018e0 <_ZN11mySemaphore6signalEv>
    return ret;
}
    800023e4:	00090513          	mv	a0,s2
    800023e8:	01813083          	ld	ra,24(sp)
    800023ec:	01013403          	ld	s0,16(sp)
    800023f0:	00813483          	ld	s1,8(sp)
    800023f4:	00013903          	ld	s2,0(sp)
    800023f8:	02010113          	addi	sp,sp,32
    800023fc:	00008067          	ret

0000000080002400 <_ZN9myConsole8setInputEc>:

void myConsole::setInput(char c)
{
    80002400:	fe010113          	addi	sp,sp,-32
    80002404:	00113c23          	sd	ra,24(sp)
    80002408:	00813823          	sd	s0,16(sp)
    8000240c:	00913423          	sd	s1,8(sp)
    80002410:	01213023          	sd	s2,0(sp)
    80002414:	02010413          	addi	s0,sp,32
    80002418:	00050913          	mv	s2,a0
    inputSpaceAvail->wait();
    8000241c:	0000b497          	auipc	s1,0xb
    80002420:	ebc48493          	addi	s1,s1,-324 # 8000d2d8 <_ZN9myConsole14inputItemAvailE>
    80002424:	0204b503          	ld	a0,32(s1)
    80002428:	fffff097          	auipc	ra,0xfffff
    8000242c:	314080e7          	jalr	788(ra) # 8000173c <_ZN11mySemaphore4waitEv>
    mutexIn->wait();
    80002430:	0084b503          	ld	a0,8(s1)
    80002434:	fffff097          	auipc	ra,0xfffff
    80002438:	308080e7          	jalr	776(ra) # 8000173c <_ZN11mySemaphore4waitEv>
    inputBuf[inputTail]=c;
    8000243c:	0584a703          	lw	a4,88(s1)
    80002440:	0184b783          	ld	a5,24(s1)
    80002444:	00e787b3          	add	a5,a5,a4
    80002448:	01278023          	sb	s2,0(a5)
    inputTail=(inputTail+1)%1024;
    8000244c:	0584a783          	lw	a5,88(s1)
    80002450:	0017879b          	addiw	a5,a5,1
    80002454:	41f7d71b          	sraiw	a4,a5,0x1f
    80002458:	0167571b          	srliw	a4,a4,0x16
    8000245c:	00e787bb          	addw	a5,a5,a4
    80002460:	3ff7f793          	andi	a5,a5,1023
    80002464:	40e787bb          	subw	a5,a5,a4
    80002468:	04f4ac23          	sw	a5,88(s1)
    mutexIn->signal();
    8000246c:	0084b503          	ld	a0,8(s1)
    80002470:	fffff097          	auipc	ra,0xfffff
    80002474:	470080e7          	jalr	1136(ra) # 800018e0 <_ZN11mySemaphore6signalEv>
    inputItemAvail->signal();
    80002478:	0004b503          	ld	a0,0(s1)
    8000247c:	fffff097          	auipc	ra,0xfffff
    80002480:	464080e7          	jalr	1124(ra) # 800018e0 <_ZN11mySemaphore6signalEv>
}
    80002484:	01813083          	ld	ra,24(sp)
    80002488:	01013403          	ld	s0,16(sp)
    8000248c:	00813483          	ld	s1,8(sp)
    80002490:	00013903          	ld	s2,0(sp)
    80002494:	02010113          	addi	sp,sp,32
    80002498:	00008067          	ret

000000008000249c <_ZN9myConsole9setOutputEc>:

void myConsole::setOutput(char c)
{
    8000249c:	fe010113          	addi	sp,sp,-32
    800024a0:	00113c23          	sd	ra,24(sp)
    800024a4:	00813823          	sd	s0,16(sp)
    800024a8:	00913423          	sd	s1,8(sp)
    800024ac:	01213023          	sd	s2,0(sp)
    800024b0:	02010413          	addi	s0,sp,32
    800024b4:	00050913          	mv	s2,a0
    outputSpaceAvail->wait();
    800024b8:	0000b497          	auipc	s1,0xb
    800024bc:	e2048493          	addi	s1,s1,-480 # 8000d2d8 <_ZN9myConsole14inputItemAvailE>
    800024c0:	0504b503          	ld	a0,80(s1)
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	278080e7          	jalr	632(ra) # 8000173c <_ZN11mySemaphore4waitEv>
    mutexOut->wait();
    800024cc:	0304b503          	ld	a0,48(s1)
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	26c080e7          	jalr	620(ra) # 8000173c <_ZN11mySemaphore4waitEv>

    outputBuf[outputTail]=c;
    800024d8:	05c4a703          	lw	a4,92(s1)
    800024dc:	0404b783          	ld	a5,64(s1)
    800024e0:	00e787b3          	add	a5,a5,a4
    800024e4:	01278023          	sb	s2,0(a5)
    outputTail=(outputTail+1)%1024;
    800024e8:	05c4a783          	lw	a5,92(s1)
    800024ec:	0017879b          	addiw	a5,a5,1
    800024f0:	41f7d71b          	sraiw	a4,a5,0x1f
    800024f4:	0167571b          	srliw	a4,a4,0x16
    800024f8:	00e787bb          	addw	a5,a5,a4
    800024fc:	3ff7f793          	andi	a5,a5,1023
    80002500:	40e787bb          	subw	a5,a5,a4
    80002504:	04f4ae23          	sw	a5,92(s1)
    outSize++;
    80002508:	0484a783          	lw	a5,72(s1)
    8000250c:	0017879b          	addiw	a5,a5,1
    80002510:	04f4a423          	sw	a5,72(s1)

    mutexOut->signal();
    80002514:	0304b503          	ld	a0,48(s1)
    80002518:	fffff097          	auipc	ra,0xfffff
    8000251c:	3c8080e7          	jalr	968(ra) # 800018e0 <_ZN11mySemaphore6signalEv>
    outputItemAvail->signal();
    80002520:	0284b503          	ld	a0,40(s1)
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	3bc080e7          	jalr	956(ra) # 800018e0 <_ZN11mySemaphore6signalEv>

}
    8000252c:	01813083          	ld	ra,24(sp)
    80002530:	01013403          	ld	s0,16(sp)
    80002534:	00813483          	ld	s1,8(sp)
    80002538:	00013903          	ld	s2,0(sp)
    8000253c:	02010113          	addi	sp,sp,32
    80002540:	00008067          	ret

0000000080002544 <_ZN9myConsole11putcHandlerEv>:
    putcHandler();
}


void myConsole::putcHandler()
{   //uzima znak po znak iz izlaznog buffera i prenosi ga kontroleru konzole
    80002544:	fe010113          	addi	sp,sp,-32
    80002548:	00113c23          	sd	ra,24(sp)
    8000254c:	00813823          	sd	s0,16(sp)
    80002550:	00913423          	sd	s1,8(sp)
    80002554:	02010413          	addi	s0,sp,32
    char* insert = (char* ) CONSOLE_TX_DATA;
    80002558:	0000b797          	auipc	a5,0xb
    8000255c:	c807b783          	ld	a5,-896(a5) # 8000d1d8 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002560:	0007b483          	ld	s1,0(a5)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT){
    80002564:	0000b797          	auipc	a5,0xb
    80002568:	c247b783          	ld	a5,-988(a5) # 8000d188 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000256c:	0007b783          	ld	a5,0(a5)
    80002570:	0007c783          	lbu	a5,0(a5)
    80002574:	0207f793          	andi	a5,a5,32
    80002578:	00078a63          	beqz	a5,8000258c <_ZN9myConsole11putcHandlerEv+0x48>
        *insert = getOutput();
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	de0080e7          	jalr	-544(ra) # 8000235c <_ZN9myConsole9getOutputEv>
    80002584:	00a48023          	sb	a0,0(s1)
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT){
    80002588:	fddff06f          	j	80002564 <_ZN9myConsole11putcHandlerEv+0x20>
    }
}
    8000258c:	01813083          	ld	ra,24(sp)
    80002590:	01013403          	ld	s0,16(sp)
    80002594:	00813483          	ld	s1,8(sp)
    80002598:	02010113          	addi	sp,sp,32
    8000259c:	00008067          	ret

00000000800025a0 <_ZN9myConsole18putcHandlerWrapperEPv>:
{
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    putcHandler();
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	f94080e7          	jalr	-108(ra) # 80002544 <_ZN9myConsole11putcHandlerEv>
}
    800025b8:	00813083          	ld	ra,8(sp)
    800025bc:	00013403          	ld	s0,0(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_ZN9myConsole15console_handlerEv>:

void myConsole::console_handler()
{
    800025c8:	fe010113          	addi	sp,sp,-32
    800025cc:	00113c23          	sd	ra,24(sp)
    800025d0:	00813823          	sd	s0,16(sp)
    800025d4:	00913423          	sd	s1,8(sp)
    800025d8:	02010413          	addi	s0,sp,32
    //smestamo u ulazni bafer
    if(plic_claim() == CONSOLE_IRQ){
    800025dc:	00006097          	auipc	ra,0x6
    800025e0:	cc8080e7          	jalr	-824(ra) # 800082a4 <plic_claim>
    800025e4:	00a00793          	li	a5,10
    800025e8:	00f50c63          	beq	a0,a5,80002600 <_ZN9myConsole15console_handlerEv+0x38>
            setInput(*write);
        }
        plic_complete(CONSOLE_IRQ);
    }

}
    800025ec:	01813083          	ld	ra,24(sp)
    800025f0:	01013403          	ld	s0,16(sp)
    800025f4:	00813483          	ld	s1,8(sp)
    800025f8:	02010113          	addi	sp,sp,32
    800025fc:	00008067          	ret
        char* write = (char*) CONSOLE_RX_DATA;
    80002600:	0000b797          	auipc	a5,0xb
    80002604:	b787b783          	ld	a5,-1160(a5) # 8000d178 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002608:	0007b483          	ld	s1,0(a5)
        while(*(char*) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    8000260c:	0000b797          	auipc	a5,0xb
    80002610:	b7c7b783          	ld	a5,-1156(a5) # 8000d188 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002614:	0007b783          	ld	a5,0(a5)
    80002618:	0007c783          	lbu	a5,0(a5)
    8000261c:	0017f793          	andi	a5,a5,1
    80002620:	00078a63          	beqz	a5,80002634 <_ZN9myConsole15console_handlerEv+0x6c>
            setInput(*write);
    80002624:	0004c503          	lbu	a0,0(s1)
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	dd8080e7          	jalr	-552(ra) # 80002400 <_ZN9myConsole8setInputEc>
        while(*(char*) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT){
    80002630:	fddff06f          	j	8000260c <_ZN9myConsole15console_handlerEv+0x44>
        plic_complete(CONSOLE_IRQ);
    80002634:	00a00513          	li	a0,10
    80002638:	00006097          	auipc	ra,0x6
    8000263c:	ca4080e7          	jalr	-860(ra) # 800082dc <plic_complete>
}
    80002640:	fadff06f          	j	800025ec <_ZN9myConsole15console_handlerEv+0x24>

0000000080002644 <_ZN9myConsole4waitEv>:

void myConsole::wait()
{
    while(outSize) thread_dispatch();
    80002644:	0000b797          	auipc	a5,0xb
    80002648:	cdc7a783          	lw	a5,-804(a5) # 8000d320 <_ZN9myConsole7outSizeE>
    8000264c:	02078c63          	beqz	a5,80002684 <_ZN9myConsole4waitEv+0x40>
{
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00113423          	sd	ra,8(sp)
    80002658:	00813023          	sd	s0,0(sp)
    8000265c:	01010413          	addi	s0,sp,16
    while(outSize) thread_dispatch();
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	d84080e7          	jalr	-636(ra) # 800013e4 <_Z15thread_dispatchv>
    80002668:	0000b797          	auipc	a5,0xb
    8000266c:	cb87a783          	lw	a5,-840(a5) # 8000d320 <_ZN9myConsole7outSizeE>
    80002670:	fe0798e3          	bnez	a5,80002660 <_ZN9myConsole4waitEv+0x1c>
}
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret
    80002684:	00008067          	ret

0000000080002688 <_ZN6ThreadD1Ev>:
#define syscall_cpp
#include "./syscall_c.h"
void* operator new (size_t);
void operator delete (void*);

class Thread {
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    80002694:	00813403          	ld	s0,8(sp)
    80002698:	01010113          	addi	sp,sp,16
    8000269c:	00008067          	ret

00000000800026a0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    800026a0:	ff010113          	addi	sp,sp,-16
    800026a4:	00113423          	sd	ra,8(sp)
    800026a8:	00813023          	sd	s0,0(sp)
    800026ac:	01010413          	addi	s0,sp,16
    800026b0:	0000b797          	auipc	a5,0xb
    800026b4:	85878793          	addi	a5,a5,-1960 # 8000cf08 <_ZTV9Semaphore+0x10>
    800026b8:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800026bc:	00853503          	ld	a0,8(a0)
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	e68080e7          	jalr	-408(ra) # 80001528 <_Z9sem_closeP4_sem>
}
    800026c8:	00813083          	ld	ra,8(sp)
    800026cc:	00013403          	ld	s0,0(sp)
    800026d0:	01010113          	addi	sp,sp,16
    800026d4:	00008067          	ret

00000000800026d8 <_Znwm>:
void* operator new (size_t mem){ return mem_alloc(mem);}
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00113423          	sd	ra,8(sp)
    800026e0:	00813023          	sd	s0,0(sp)
    800026e4:	01010413          	addi	s0,sp,16
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	b6c080e7          	jalr	-1172(ra) # 80001254 <_Z9mem_allocm>
    800026f0:	00813083          	ld	ra,8(sp)
    800026f4:	00013403          	ld	s0,0(sp)
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00008067          	ret

0000000080002700 <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	b44080e7          	jalr	-1212(ra) # 80001254 <_Z9mem_allocm>
    80002718:	00813083          	ld	ra,8(sp)
    8000271c:	00013403          	ld	s0,0(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <_ZdlPv>:
void operator delete(void* addr) { mem_free(addr); }
    80002728:	ff010113          	addi	sp,sp,-16
    8000272c:	00113423          	sd	ra,8(sp)
    80002730:	00813023          	sd	s0,0(sp)
    80002734:	01010413          	addi	s0,sp,16
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	b58080e7          	jalr	-1192(ra) # 80001290 <_Z8mem_freePv>
    80002740:	00813083          	ld	ra,8(sp)
    80002744:	00013403          	ld	s0,0(sp)
    80002748:	01010113          	addi	sp,sp,16
    8000274c:	00008067          	ret

0000000080002750 <_ZN6ThreadD0Ev>:
    80002750:	ff010113          	addi	sp,sp,-16
    80002754:	00113423          	sd	ra,8(sp)
    80002758:	00813023          	sd	s0,0(sp)
    8000275c:	01010413          	addi	s0,sp,16
    80002760:	00000097          	auipc	ra,0x0
    80002764:	fc8080e7          	jalr	-56(ra) # 80002728 <_ZdlPv>
    80002768:	00813083          	ld	ra,8(sp)
    8000276c:	00013403          	ld	s0,0(sp)
    80002770:	01010113          	addi	sp,sp,16
    80002774:	00008067          	ret

0000000080002778 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002778:	fe010113          	addi	sp,sp,-32
    8000277c:	00113c23          	sd	ra,24(sp)
    80002780:	00813823          	sd	s0,16(sp)
    80002784:	00913423          	sd	s1,8(sp)
    80002788:	02010413          	addi	s0,sp,32
    8000278c:	00050493          	mv	s1,a0
}
    80002790:	00000097          	auipc	ra,0x0
    80002794:	f10080e7          	jalr	-240(ra) # 800026a0 <_ZN9SemaphoreD1Ev>
    80002798:	00048513          	mv	a0,s1
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	f8c080e7          	jalr	-116(ra) # 80002728 <_ZdlPv>
    800027a4:	01813083          	ld	ra,24(sp)
    800027a8:	01013403          	ld	s0,16(sp)
    800027ac:	00813483          	ld	s1,8(sp)
    800027b0:	02010113          	addi	sp,sp,32
    800027b4:	00008067          	ret

00000000800027b8 <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00113423          	sd	ra,8(sp)
    800027c0:	00813023          	sd	s0,0(sp)
    800027c4:	01010413          	addi	s0,sp,16
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	ac8080e7          	jalr	-1336(ra) # 80001290 <_Z8mem_freePv>
    800027d0:	00813083          	ld	ra,8(sp)
    800027d4:	00013403          	ld	s0,0(sp)
    800027d8:	01010113          	addi	sp,sp,16
    800027dc:	00008067          	ret

00000000800027e0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
    800027e0:	ff010113          	addi	sp,sp,-16
    800027e4:	00813423          	sd	s0,8(sp)
    800027e8:	01010413          	addi	s0,sp,16
    800027ec:	0000a797          	auipc	a5,0xa
    800027f0:	6f478793          	addi	a5,a5,1780 # 8000cee0 <_ZTV6Thread+0x10>
    800027f4:	00f53023          	sd	a5,0(a0)
    800027f8:	00053423          	sd	zero,8(a0)
    800027fc:	00b53823          	sd	a1,16(a0)
    80002800:	00c53c23          	sd	a2,24(a0)
}
    80002804:	00813403          	ld	s0,8(sp)
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00008067          	ret

0000000080002810 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
    80002810:	ff010113          	addi	sp,sp,-16
    80002814:	00813423          	sd	s0,8(sp)
    80002818:	01010413          	addi	s0,sp,16
    8000281c:	0000a797          	auipc	a5,0xa
    80002820:	6c478793          	addi	a5,a5,1732 # 8000cee0 <_ZTV6Thread+0x10>
    80002824:	00f53023          	sd	a5,0(a0)
    80002828:	00053423          	sd	zero,8(a0)
    8000282c:	00000797          	auipc	a5,0x0
    80002830:	2f478793          	addi	a5,a5,756 # 80002b20 <_ZN6Thread10runWrapperEPv>
    80002834:	00f53823          	sd	a5,16(a0)
    80002838:	00a53c23          	sd	a0,24(a0)
}
    8000283c:	00813403          	ld	s0,8(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <_ZN6Thread8dispatchEv>:
{
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00113423          	sd	ra,8(sp)
    80002850:	00813023          	sd	s0,0(sp)
    80002854:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	b8c080e7          	jalr	-1140(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80002860:	00813083          	ld	ra,8(sp)
    80002864:	00013403          	ld	s0,0(sp)
    80002868:	01010113          	addi	sp,sp,16
    8000286c:	00008067          	ret

0000000080002870 <_ZN6Thread5startEv>:
{
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00113423          	sd	ra,8(sp)
    80002878:	00813023          	sd	s0,0(sp)
    8000287c:	01010413          	addi	s0,sp,16
    if(max_of_threads){
    80002880:	0000b717          	auipc	a4,0xb
    80002884:	ac072703          	lw	a4,-1344(a4) # 8000d340 <_ZN6Thread14max_of_threadsE>
    80002888:	00070e63          	beqz	a4,800028a4 <_ZN6Thread5startEv+0x34>
        if(curr_threads+1>max_of_threads){
    8000288c:	0000b797          	auipc	a5,0xb
    80002890:	ab87a783          	lw	a5,-1352(a5) # 8000d344 <_ZN6Thread12curr_threadsE>
    80002894:	02e7da63          	bge	a5,a4,800028c8 <_ZN6Thread5startEv+0x58>
        else curr_threads++;
    80002898:	0017879b          	addiw	a5,a5,1
    8000289c:	0000b717          	auipc	a4,0xb
    800028a0:	aaf72423          	sw	a5,-1368(a4) # 8000d344 <_ZN6Thread12curr_threadsE>
    return thread_create(&myHandle,body, arg);
    800028a4:	01853603          	ld	a2,24(a0)
    800028a8:	01053583          	ld	a1,16(a0)
    800028ac:	00850513          	addi	a0,a0,8
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	a78080e7          	jalr	-1416(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800028b8:	00813083          	ld	ra,8(sp)
    800028bc:	00013403          	ld	s0,0(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret
            return block_thread(&myHandle,body, arg);
    800028c8:	01853603          	ld	a2,24(a0)
    800028cc:	01053583          	ld	a1,16(a0)
    800028d0:	00850513          	addi	a0,a0,8
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	b90080e7          	jalr	-1136(ra) # 80001464 <_Z12block_threadPP7_threadPFvPvES2_>
    800028dc:	fddff06f          	j	800028b8 <_ZN6Thread5startEv+0x48>

00000000800028e0 <_ZN6Thread5sleepEm>:
{
    800028e0:	ff010113          	addi	sp,sp,-16
    800028e4:	00113423          	sd	ra,8(sp)
    800028e8:	00813023          	sd	s0,0(sp)
    800028ec:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800028f0:	fffff097          	auipc	ra,0xfffff
    800028f4:	ce0080e7          	jalr	-800(ra) # 800015d0 <_Z10time_sleepm>
}
    800028f8:	00813083          	ld	ra,8(sp)
    800028fc:	00013403          	ld	s0,0(sp)
    80002900:	01010113          	addi	sp,sp,16
    80002904:	00008067          	ret

0000000080002908 <_ZN14PeriodicThread3runEv>:
}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    80002908:	fe010113          	addi	sp,sp,-32
    8000290c:	00113c23          	sd	ra,24(sp)
    80002910:	00813823          	sd	s0,16(sp)
    80002914:	00913423          	sd	s1,8(sp)
    80002918:	02010413          	addi	s0,sp,32
    8000291c:	00050493          	mv	s1,a0
    while(period){
    80002920:	0204b783          	ld	a5,32(s1)
    80002924:	02078263          	beqz	a5,80002948 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002928:	0004b783          	ld	a5,0(s1)
    8000292c:	0187b783          	ld	a5,24(a5)
    80002930:	00048513          	mv	a0,s1
    80002934:	000780e7          	jalr	a5
        sleep(period);
    80002938:	0204b503          	ld	a0,32(s1)
    8000293c:	00000097          	auipc	ra,0x0
    80002940:	fa4080e7          	jalr	-92(ra) # 800028e0 <_ZN6Thread5sleepEm>
    while(period){
    80002944:	fddff06f          	j	80002920 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80002948:	01813083          	ld	ra,24(sp)
    8000294c:	01013403          	ld	s0,16(sp)
    80002950:	00813483          	ld	s1,8(sp)
    80002954:	02010113          	addi	sp,sp,32
    80002958:	00008067          	ret

000000008000295c <_ZN6Thread17SetMaximumThreadsEiii>:
{
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
    max_of_threads=num_of_threads;
    8000296c:	0000b797          	auipc	a5,0xb
    80002970:	9ca7aa23          	sw	a0,-1580(a5) # 8000d340 <_ZN6Thread14max_of_threadsE>
    set_max_threads(num_of_threads,max_time,interval_time);
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	ac0080e7          	jalr	-1344(ra) # 80001434 <_Z15set_max_threadsiii>
}
    8000297c:	00813083          	ld	ra,8(sp)
    80002980:	00013403          	ld	s0,0(sp)
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00008067          	ret

000000008000298c <_ZN6Thread4joinEm>:
{
    8000298c:	ff010113          	addi	sp,sp,-16
    80002990:	00113423          	sd	ra,8(sp)
    80002994:	00813023          	sd	s0,0(sp)
    80002998:	01010413          	addi	s0,sp,16
    thread_join(&myHandle,tajm);
    8000299c:	00850513          	addi	a0,a0,8
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	a68080e7          	jalr	-1432(ra) # 80001408 <_Z11thread_joinPP7_threadm>
}
    800029a8:	00813083          	ld	ra,8(sp)
    800029ac:	00013403          	ld	s0,0(sp)
    800029b0:	01010113          	addi	sp,sp,16
    800029b4:	00008067          	ret

00000000800029b8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    800029b8:	ff010113          	addi	sp,sp,-16
    800029bc:	00113423          	sd	ra,8(sp)
    800029c0:	00813023          	sd	s0,0(sp)
    800029c4:	01010413          	addi	s0,sp,16
    800029c8:	0000a797          	auipc	a5,0xa
    800029cc:	54078793          	addi	a5,a5,1344 # 8000cf08 <_ZTV9Semaphore+0x10>
    800029d0:	00f53023          	sd	a5,0(a0)
    800029d4:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    800029d8:	00850513          	addi	a0,a0,8
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	b10080e7          	jalr	-1264(ra) # 800014ec <_Z8sem_openPP4_semj>
}
    800029e4:	00813083          	ld	ra,8(sp)
    800029e8:	00013403          	ld	s0,0(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret

00000000800029f4 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00113423          	sd	ra,8(sp)
    800029fc:	00813023          	sd	s0,0(sp)
    80002a00:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002a04:	00853503          	ld	a0,8(a0)
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	b58080e7          	jalr	-1192(ra) # 80001560 <_Z8sem_waitP4_sem>
}
    80002a10:	00813083          	ld	ra,8(sp)
    80002a14:	00013403          	ld	s0,0(sp)
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00008067          	ret

0000000080002a20 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80002a20:	ff010113          	addi	sp,sp,-16
    80002a24:	00113423          	sd	ra,8(sp)
    80002a28:	00813023          	sd	s0,0(sp)
    80002a2c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002a30:	00853503          	ld	a0,8(a0)
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	b64080e7          	jalr	-1180(ra) # 80001598 <_Z10sem_signalP4_sem>
}
    80002a3c:	00813083          	ld	ra,8(sp)
    80002a40:	00013403          	ld	s0,0(sp)
    80002a44:	01010113          	addi	sp,sp,16
    80002a48:	00008067          	ret

0000000080002a4c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){
    80002a4c:	fe010113          	addi	sp,sp,-32
    80002a50:	00113c23          	sd	ra,24(sp)
    80002a54:	00813823          	sd	s0,16(sp)
    80002a58:	00913423          	sd	s1,8(sp)
    80002a5c:	01213023          	sd	s2,0(sp)
    80002a60:	02010413          	addi	s0,sp,32
    80002a64:	00050493          	mv	s1,a0
    80002a68:	00058913          	mv	s2,a1
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	da4080e7          	jalr	-604(ra) # 80002810 <_ZN6ThreadC1Ev>
    80002a74:	0000a797          	auipc	a5,0xa
    80002a78:	4b478793          	addi	a5,a5,1204 # 8000cf28 <_ZTV14PeriodicThread+0x10>
    80002a7c:	00f4b023          	sd	a5,0(s1)
    80002a80:	0324b023          	sd	s2,32(s1)
}
    80002a84:	01813083          	ld	ra,24(sp)
    80002a88:	01013403          	ld	s0,16(sp)
    80002a8c:	00813483          	ld	s1,8(sp)
    80002a90:	00013903          	ld	s2,0(sp)
    80002a94:	02010113          	addi	sp,sp,32
    80002a98:	00008067          	ret

0000000080002a9c <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00813423          	sd	s0,8(sp)
    80002aa4:	01010413          	addi	s0,sp,16
    period=0;
    80002aa8:	02053023          	sd	zero,32(a0)
}
    80002aac:	00813403          	ld	s0,8(sp)
    80002ab0:	01010113          	addi	sp,sp,16
    80002ab4:	00008067          	ret

0000000080002ab8 <_ZN7Console4getcEv>:

char Console::getc() {
    80002ab8:	ff010113          	addi	sp,sp,-16
    80002abc:	00113423          	sd	ra,8(sp)
    80002ac0:	00813023          	sd	s0,0(sp)
    80002ac4:	01010413          	addi	s0,sp,16
    return ::getc();
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	b40080e7          	jalr	-1216(ra) # 80001608 <_Z4getcv>
}
    80002ad0:	00813083          	ld	ra,8(sp)
    80002ad4:	00013403          	ld	s0,0(sp)
    80002ad8:	01010113          	addi	sp,sp,16
    80002adc:	00008067          	ret

0000000080002ae0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002ae0:	ff010113          	addi	sp,sp,-16
    80002ae4:	00113423          	sd	ra,8(sp)
    80002ae8:	00813023          	sd	s0,0(sp)
    80002aec:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002af0:	fffff097          	auipc	ra,0xfffff
    80002af4:	b4c080e7          	jalr	-1204(ra) # 8000163c <_Z4putcc>
    80002af8:	00813083          	ld	ra,8(sp)
    80002afc:	00013403          	ld	s0,0(sp)
    80002b00:	01010113          	addi	sp,sp,16
    80002b04:	00008067          	ret

0000000080002b08 <_ZN6Thread3runEv>:
    void join(time_t);
    static int sleep (time_t);
    static void SetMaximumThreads(int num_of_threads, int max_time, int interval_time);
protected:
    Thread ();
    virtual void run () {}
    80002b08:	ff010113          	addi	sp,sp,-16
    80002b0c:	00813423          	sd	s0,8(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	00813403          	ld	s0,8(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <_ZN6Thread10runWrapperEPv>:
    static int max_of_threads;
    static int curr_threads;
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* thread){
        if(thread) ((Thread*) thread)->run();
    80002b20:	02050863          	beqz	a0,80002b50 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread){
    80002b24:	ff010113          	addi	sp,sp,-16
    80002b28:	00113423          	sd	ra,8(sp)
    80002b2c:	00813023          	sd	s0,0(sp)
    80002b30:	01010413          	addi	s0,sp,16
        if(thread) ((Thread*) thread)->run();
    80002b34:	00053783          	ld	a5,0(a0)
    80002b38:	0107b783          	ld	a5,16(a5)
    80002b3c:	000780e7          	jalr	a5
    }
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret
    80002b50:	00008067          	ret

0000000080002b54 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00813423          	sd	s0,8(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    80002b60:	00813403          	ld	s0,8(sp)
    80002b64:	01010113          	addi	sp,sp,16
    80002b68:	00008067          	ret

0000000080002b6c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002b6c:	ff010113          	addi	sp,sp,-16
    80002b70:	00813423          	sd	s0,8(sp)
    80002b74:	01010413          	addi	s0,sp,16
    80002b78:	0000a797          	auipc	a5,0xa
    80002b7c:	3b078793          	addi	a5,a5,944 # 8000cf28 <_ZTV14PeriodicThread+0x10>
    80002b80:	00f53023          	sd	a5,0(a0)
    80002b84:	00813403          	ld	s0,8(sp)
    80002b88:	01010113          	addi	sp,sp,16
    80002b8c:	00008067          	ret

0000000080002b90 <_ZN14PeriodicThreadD0Ev>:
    80002b90:	ff010113          	addi	sp,sp,-16
    80002b94:	00113423          	sd	ra,8(sp)
    80002b98:	00813023          	sd	s0,0(sp)
    80002b9c:	01010413          	addi	s0,sp,16
    80002ba0:	0000a797          	auipc	a5,0xa
    80002ba4:	38878793          	addi	a5,a5,904 # 8000cf28 <_ZTV14PeriodicThread+0x10>
    80002ba8:	00f53023          	sd	a5,0(a0)
    80002bac:	00000097          	auipc	ra,0x0
    80002bb0:	b7c080e7          	jalr	-1156(ra) # 80002728 <_ZdlPv>
    80002bb4:	00813083          	ld	ra,8(sp)
    80002bb8:	00013403          	ld	s0,0(sp)
    80002bbc:	01010113          	addi	sp,sp,16
    80002bc0:	00008067          	ret

0000000080002bc4 <_ZN5Riscv10popSppSpieEv>:
#include "../h/Semaphore.hpp"
#include "../h/myConsole.hpp"

#include "../test/printing.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80002bc4:	ff010113          	addi	sp,sp,-16
    80002bc8:	00813423          	sd	s0,8(sp)
    80002bcc:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    if (TCB::running->body== nullptr )
    80002bd0:	0000a797          	auipc	a5,0xa
    80002bd4:	6587b783          	ld	a5,1624(a5) # 8000d228 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80002bd8:	0007b783          	ld	a5,0(a5)
    80002bdc:	0007b783          	ld	a5,0(a5)
    80002be0:	02078063          	beqz	a5,80002c00 <_ZN5Riscv10popSppSpieEv+0x3c>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002be4:	10000793          	li	a5,256
    80002be8:	1007b073          	csrc	sstatus,a5
        ms_sstatus(SSTATUS_SPP);
    else mc_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002bec:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002bf0:	10200073          	sret
}
    80002bf4:	00813403          	ld	s0,8(sp)
    80002bf8:	01010113          	addi	sp,sp,16
    80002bfc:	00008067          	ret
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002c00:	10000793          	li	a5,256
    80002c04:	1007a073          	csrs	sstatus,a5
}
    80002c08:	fe5ff06f          	j	80002bec <_ZN5Riscv10popSppSpieEv+0x28>

0000000080002c0c <_ZN5Riscv13kernelWrapperEv>:
void Riscv::kernelWrapper()
{
    80002c0c:	ff010113          	addi	sp,sp,-16
    80002c10:	00813423          	sd	s0,8(sp)
    80002c14:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002c18:	10000793          	li	a5,256
    80002c1c:	1007a073          	csrs	sstatus,a5
     ms_sstatus(SSTATUS_SPP);
    __asm__ volatile ("csrw sepc, ra");
    80002c20:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002c24:	10200073          	sret
}
    80002c28:	00813403          	ld	s0,8(sp)
    80002c2c:	01010113          	addi	sp,sp,16
    80002c30:	00008067          	ret

0000000080002c34 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80002c34:	f1010113          	addi	sp,sp,-240
    80002c38:	0e113423          	sd	ra,232(sp)
    80002c3c:	0e813023          	sd	s0,224(sp)
    80002c40:	0c913c23          	sd	s1,216(sp)
    80002c44:	0f010413          	addi	s0,sp,240
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002c48:	142027f3          	csrr	a5,scause
    80002c4c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80002c50:	fb843703          	ld	a4,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    80002c54:	ff870693          	addi	a3,a4,-8
    80002c58:	00100793          	li	a5,1
    80002c5c:	02d7fc63          	bgeu	a5,a3,80002c94 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    else if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver/tajmer prekid
    80002c60:	fff00793          	li	a5,-1
    80002c64:	03f79793          	slli	a5,a5,0x3f
    80002c68:	00178793          	addi	a5,a5,1
    80002c6c:	42f70a63          	beq	a4,a5,800030a0 <_ZN5Riscv20handleSupervisorTrapEv+0x46c>
        }

        w_sepc(sepc);
        w_sstatus(sstatus);
    }
    else if (scause==0x8000000000000009UL){
    80002c70:	fff00793          	li	a5,-1
    80002c74:	03f79793          	slli	a5,a5,0x3f
    80002c78:	00978793          	addi	a5,a5,9
    80002c7c:	64f70063          	beq	a4,a5,800032bc <_ZN5Riscv20handleSupervisorTrapEv+0x688>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002c80:	141027f3          	csrr	a5,sepc
    80002c84:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002c88:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002c8c:	14179073          	csrw	sepc,a5
        //sepc- gde se desilo
        // stval - dodatno opise cause

        uint64 sepc=r_sepc();
        w_sepc(sepc);
        while(true);
    80002c90:	0000006f          	j	80002c90 <_ZN5Riscv20handleSupervisorTrapEv+0x5c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002c94:	141027f3          	csrr	a5,sepc
    80002c98:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002c9c:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    80002ca0:	00478793          	addi	a5,a5,4
    80002ca4:	f0f43c23          	sd	a5,-232(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002ca8:	100027f3          	csrr	a5,sstatus
    80002cac:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002cb0:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80002cb4:	f2f43023          	sd	a5,-224(s0)
        __asm__ volatile("ld %0, 80(fp)":"=r"(a0));
    80002cb8:	05043783          	ld	a5,80(s0)
    80002cbc:	f2f43423          	sd	a5,-216(s0)
        switch(a0){
    80002cc0:	f2843783          	ld	a5,-216(s0)
    80002cc4:	07000713          	li	a4,112
    80002cc8:	3cf76263          	bltu	a4,a5,8000308c <_ZN5Riscv20handleSupervisorTrapEv+0x458>
    80002ccc:	00279793          	slli	a5,a5,0x2
    80002cd0:	00007717          	auipc	a4,0x7
    80002cd4:	37870713          	addi	a4,a4,888 # 8000a048 <CONSOLE_STATUS+0x38>
    80002cd8:	00e787b3          	add	a5,a5,a4
    80002cdc:	0007a783          	lw	a5,0(a5)
    80002ce0:	00e787b3          	add	a5,a5,a4
    80002ce4:	00078067          	jr	a5
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(a1));
    80002ce8:	05843783          	ld	a5,88(s0)
    80002cec:	f2f43823          	sd	a5,-208(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    80002cf0:	f3043503          	ld	a0,-208(s0)
    80002cf4:	00001097          	auipc	ra,0x1
    80002cf8:	990080e7          	jalr	-1648(ra) # 80003684 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    80002cfc:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002d00:	04a43823          	sd	a0,80(s0)
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    80002d04:	f1843783          	ld	a5,-232(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002d08:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002d0c:	f2043783          	ld	a5,-224(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002d10:	10079073          	csrw	sstatus,a5
    }
    80002d14:	0e813083          	ld	ra,232(sp)
    80002d18:	0e013403          	ld	s0,224(sp)
    80002d1c:	0d813483          	ld	s1,216(sp)
    80002d20:	0f010113          	addi	sp,sp,240
    80002d24:	00008067          	ret
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(addr));
    80002d28:	05843783          	ld	a5,88(s0)
    80002d2c:	f2f43c23          	sd	a5,-200(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    80002d30:	f3843503          	ld	a0,-200(s0)
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	aac080e7          	jalr	-1364(ra) # 800037e0 <_ZN15MemoryAllocator8mem_freeEPv>
    80002d3c:	f4a43023          	sd	a0,-192(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    80002d40:	f4043783          	ld	a5,-192(s0)
    80002d44:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002d48:	04a43823          	sd	a0,80(s0)
                break;
    80002d4c:	fb9ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                space=MemoryAllocator::getFree();
    80002d50:	00001097          	auipc	ra,0x1
    80002d54:	8a0080e7          	jalr	-1888(ra) # 800035f0 <_ZN15MemoryAllocator7getFreeEv>
    80002d58:	f4a43423          	sd	a0,-184(s0)
                __asm__ volatile("mv a0, %0"::"r"(space));
    80002d5c:	f4843783          	ld	a5,-184(s0)
    80002d60:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002d64:	04a43823          	sd	a0,80(s0)
                break;
    80002d68:	f9dff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                block=MemoryAllocator::getLargestFreeBlock();
    80002d6c:	00001097          	auipc	ra,0x1
    80002d70:	8a4080e7          	jalr	-1884(ra) # 80003610 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    80002d74:	f4a43823          	sd	a0,-176(s0)
                __asm__ volatile("mv a0, %0"::"r"(block));
    80002d78:	f5043783          	ld	a5,-176(s0)
    80002d7c:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002d80:	04a43823          	sd	a0,80(s0)
                break;
    80002d84:	f81ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002d88:	05843783          	ld	a5,88(s0)
    80002d8c:	f4f43c23          	sd	a5,-168(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(start_routine));
    80002d90:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(arg));
    80002d94:	06843783          	ld	a5,104(s0)
    80002d98:	f6f43023          	sd	a5,-160(s0)
                __asm__ volatile("ld %0, 8*14(fp)":"=r"(addr));
    80002d9c:	07043783          	ld	a5,112(s0)
    80002da0:	f6f43423          	sd	a5,-152(s0)
                TCB *thread =TCB::createThread(body,arg,addr);
    80002da4:	f6043583          	ld	a1,-160(s0)
    80002da8:	f6843603          	ld	a2,-152(s0)
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	f5c080e7          	jalr	-164(ra) # 80001d08 <_ZN3TCB12createThreadEPFvPvES0_S0_>
                *(TCB**) handle= thread;
    80002db4:	f5843703          	ld	a4,-168(s0)
    80002db8:	00a73023          	sd	a0,0(a4)
                if(thread){
    80002dbc:	00050a63          	beqz	a0,80002dd0 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
                    __asm__ volatile("mv a0, %0"::"r"(0));
    80002dc0:	00000793          	li	a5,0
    80002dc4:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002dc8:	04a43823          	sd	a0,80(s0)
    80002dcc:	f39ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002dd0:	fff00793          	li	a5,-1
    80002dd4:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002dd8:	04a43823          	sd	a0,80(s0)
    80002ddc:	f29ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                TCB::timeSliceCounter=0;
    80002de0:	0000a797          	auipc	a5,0xa
    80002de4:	3e87b783          	ld	a5,1000(a5) # 8000d1c8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002de8:	0007b023          	sd	zero,0(a5)
                TCB::dispatch();
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	0cc080e7          	jalr	204(ra) # 80001eb8 <_ZN3TCB8dispatchEv>
                break;
    80002df4:	f11ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(time));
    80002df8:	05843483          	ld	s1,88(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(handle));
    80002dfc:	06043783          	ld	a5,96(s0)
                leader->insertWaiter(TCB::running);
    80002e00:	0000a717          	auipc	a4,0xa
    80002e04:	42873703          	ld	a4,1064(a4) # 8000d228 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80002e08:	00073583          	ld	a1,0(a4)
    80002e0c:	0007b503          	ld	a0,0(a5)
    80002e10:	fffff097          	auipc	ra,0xfffff
    80002e14:	3f8080e7          	jalr	1016(ra) # 80002208 <_ZN3TCB12insertWaiterEPS_>
                if(time)
    80002e18:	00049863          	bnez	s1,80002e28 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                TCB::dispatch();
    80002e1c:	fffff097          	auipc	ra,0xfffff
    80002e20:	09c080e7          	jalr	156(ra) # 80001eb8 <_ZN3TCB8dispatchEv>
                break;
    80002e24:	ee1ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    TCB::toSleep(time + TCB::timeCur);
    80002e28:	0000a797          	auipc	a5,0xa
    80002e2c:	3907b783          	ld	a5,912(a5) # 8000d1b8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002e30:	0007b503          	ld	a0,0(a5)
    80002e34:	00a48533          	add	a0,s1,a0
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	278080e7          	jalr	632(ra) # 800020b0 <_ZN3TCB7toSleepEm>
                    TCB::timeSliceCounter = 0;
    80002e40:	0000a797          	auipc	a5,0xa
    80002e44:	3887b783          	ld	a5,904(a5) # 8000d1c8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002e48:	0007b023          	sd	zero,0(a5)
    80002e4c:	fd1ff06f          	j	80002e1c <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
                if(!TCB::running->isFinished()){
    80002e50:	0000a797          	auipc	a5,0xa
    80002e54:	3d87b783          	ld	a5,984(a5) # 8000d228 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80002e58:	0007b783          	ld	a5,0(a5)
    bool isFinished(){return finished;}
    80002e5c:	0307c703          	lbu	a4,48(a5)
    80002e60:	00070a63          	beqz	a4,80002e74 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
                else ret=-1;
    80002e64:	fff00793          	li	a5,-1
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002e68:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002e6c:	04a43823          	sd	a0,80(s0)
                break;
    80002e70:	e95ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
    void setFinished(bool flag){ TCB::finished = flag;}
    80002e74:	00100713          	li	a4,1
    80002e78:	02e78823          	sb	a4,48(a5)
                    TCB::timeSliceCounter=0;
    80002e7c:	0000a797          	auipc	a5,0xa
    80002e80:	34c7b783          	ld	a5,844(a5) # 8000d1c8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002e84:	0007b023          	sd	zero,0(a5)
                    TCB::dispatch();
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	030080e7          	jalr	48(ra) # 80001eb8 <_ZN3TCB8dispatchEv>
                uint64 ret=0;
    80002e90:	00000793          	li	a5,0
    80002e94:	fd5ff06f          	j	80002e68 <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002e98:	05843783          	ld	a5,88(s0)
    80002e9c:	f6f43823          	sd	a5,-144(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(start_routine));
    80002ea0:	06043503          	ld	a0,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(arg));
    80002ea4:	06843783          	ld	a5,104(s0)
    80002ea8:	f6f43c23          	sd	a5,-136(s0)
                __asm__ volatile("ld %0, 8*14(fp)":"=r"(addr));
    80002eac:	07043783          	ld	a5,112(s0)
    80002eb0:	f8f43023          	sd	a5,-128(s0)
                TCB *thread =TCB::createThreadBlocked(body,arg,addr);
    80002eb4:	f7843583          	ld	a1,-136(s0)
    80002eb8:	f8043603          	ld	a2,-128(s0)
    80002ebc:	fffff097          	auipc	ra,0xfffff
    80002ec0:	230080e7          	jalr	560(ra) # 800020ec <_ZN3TCB19createThreadBlockedEPFvPvES0_S0_>
                *(TCB**) handle= thread;
    80002ec4:	f7043703          	ld	a4,-144(s0)
    80002ec8:	00a73023          	sd	a0,0(a4)
                if(thread){
    80002ecc:	00050a63          	beqz	a0,80002ee0 <_ZN5Riscv20handleSupervisorTrapEv+0x2ac>
                    __asm__ volatile("mv a0, %0"::"r"(0));
    80002ed0:	00000793          	li	a5,0
    80002ed4:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002ed8:	04a43823          	sd	a0,80(s0)
    80002edc:	e29ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002ee0:	fff00793          	li	a5,-1
    80002ee4:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002ee8:	04a43823          	sd	a0,80(s0)
    80002eec:	e19ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(num_of_threads));
    80002ef0:	05843783          	ld	a5,88(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(max_time));
    80002ef4:	06043703          	ld	a4,96(s0)
                __asm__ volatile("ld %0, 8*13(fp)":"=r"(interval_time));
    80002ef8:	06843683          	ld	a3,104(s0)
                TCB::timeInterval=interval_time;
    80002efc:	0000a797          	auipc	a5,0xa
    80002f00:	3447b783          	ld	a5,836(a5) # 8000d240 <_GLOBAL_OFFSET_TABLE_+0xd0>
    80002f04:	00d7a023          	sw	a3,0(a5)
                TCB::timeMaxCounter=max_time;
    80002f08:	0000a797          	auipc	a5,0xa
    80002f0c:	3187b783          	ld	a5,792(a5) # 8000d220 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80002f10:	00e7a023          	sw	a4,0(a5)
                break;
    80002f14:	df1ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002f18:	05843783          	ld	a5,88(s0)
    80002f1c:	f8f43423          	sd	a5,-120(s0)
                __asm__ volatile("ld %0, 8*12(fp)":"=r"(init));
    80002f20:	06043783          	ld	a5,96(s0)
    80002f24:	f0f42a23          	sw	a5,-236(s0)
                mySemaphore *sem =mySemaphore::createSemaphore(init);
    80002f28:	f1442503          	lw	a0,-236(s0)
    80002f2c:	0005051b          	sext.w	a0,a0
    80002f30:	ffffe097          	auipc	ra,0xffffe
    80002f34:	734080e7          	jalr	1844(ra) # 80001664 <_ZN11mySemaphore15createSemaphoreEj>
                if(sem){
    80002f38:	00050e63          	beqz	a0,80002f54 <_ZN5Riscv20handleSupervisorTrapEv+0x320>
                    *(mySemaphore**) handle= sem;
    80002f3c:	f8843703          	ld	a4,-120(s0)
    80002f40:	00a73023          	sd	a0,0(a4)
                    ret=0;
    80002f44:	00000793          	li	a5,0
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002f48:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002f4c:	04a43823          	sd	a0,80(s0)
                break;
    80002f50:	db5ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                else ret=-1;
    80002f54:	fff00793          	li	a5,-1
    80002f58:	ff1ff06f          	j	80002f48 <_ZN5Riscv20handleSupervisorTrapEv+0x314>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002f5c:	05843783          	ld	a5,88(s0)
    80002f60:	f8f43823          	sd	a5,-112(s0)
                if(!handle){
    80002f64:	f9043783          	ld	a5,-112(s0)
    80002f68:	02078663          	beqz	a5,80002f94 <_ZN5Riscv20handleSupervisorTrapEv+0x360>
                int ret=handle->close();
    80002f6c:	f9043503          	ld	a0,-112(s0)
    80002f70:	fffff097          	auipc	ra,0xfffff
    80002f74:	8ec080e7          	jalr	-1812(ra) # 8000185c <_ZN11mySemaphore5closeEv>
    80002f78:	00050493          	mv	s1,a0
                MemoryAllocator::mem_free(handle);
    80002f7c:	f9043503          	ld	a0,-112(s0)
    80002f80:	00001097          	auipc	ra,0x1
    80002f84:	860080e7          	jalr	-1952(ra) # 800037e0 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002f88:	00048513          	mv	a0,s1
                __asm__ volatile("sd a0,80(fp)");
    80002f8c:	04a43823          	sd	a0,80(s0)
                break;
    80002f90:	d75ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002f94:	fff00793          	li	a5,-1
    80002f98:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002f9c:	04a43823          	sd	a0,80(s0)
                    break;
    80002fa0:	d65ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002fa4:	05843783          	ld	a5,88(s0)
    80002fa8:	f8f43c23          	sd	a5,-104(s0)
                if(!handle){
    80002fac:	f9843783          	ld	a5,-104(s0)
    80002fb0:	02078263          	beqz	a5,80002fd4 <_ZN5Riscv20handleSupervisorTrapEv+0x3a0>
                __asm__ volatile("mv a0, %0"::"r"(0));
    80002fb4:	00000793          	li	a5,0
    80002fb8:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002fbc:	04a43823          	sd	a0,80(s0)
                int ret=handle->wait();
    80002fc0:	f9843503          	ld	a0,-104(s0)
    80002fc4:	ffffe097          	auipc	ra,0xffffe
    80002fc8:	778080e7          	jalr	1912(ra) # 8000173c <_ZN11mySemaphore4waitEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80002fcc:	00050513          	mv	a0,a0
                break;
    80002fd0:	d35ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    80002fd4:	fff00793          	li	a5,-1
    80002fd8:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80002fdc:	04a43823          	sd	a0,80(s0)
                    break;
    80002fe0:	d25ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(handle));
    80002fe4:	05843783          	ld	a5,88(s0)
    80002fe8:	faf43023          	sd	a5,-96(s0)
                if(!handle){
    80002fec:	fa043783          	ld	a5,-96(s0)
    80002ff0:	00078e63          	beqz	a5,8000300c <_ZN5Riscv20handleSupervisorTrapEv+0x3d8>
                int ret=handle->signal();
    80002ff4:	fa043503          	ld	a0,-96(s0)
    80002ff8:	fffff097          	auipc	ra,0xfffff
    80002ffc:	8e8080e7          	jalr	-1816(ra) # 800018e0 <_ZN11mySemaphore6signalEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80003000:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80003004:	04a43823          	sd	a0,80(s0)
                break;
    80003008:	cfdff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                    __asm__ volatile("mv a0, %0"::"r"(-1));
    8000300c:	fff00793          	li	a5,-1
    80003010:	00078513          	mv	a0,a5
                    __asm__ volatile("sd a0,80(fp)");
    80003014:	04a43823          	sd	a0,80(s0)
                    break;
    80003018:	cedff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(time));
    8000301c:	05843503          	ld	a0,88(s0)
                TCB::toSleep(time+TCB::timeCur);
    80003020:	0000a797          	auipc	a5,0xa
    80003024:	1987b783          	ld	a5,408(a5) # 8000d1b8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003028:	0007b783          	ld	a5,0(a5)
    8000302c:	00f50533          	add	a0,a0,a5
    80003030:	fffff097          	auipc	ra,0xfffff
    80003034:	080080e7          	jalr	128(ra) # 800020b0 <_ZN3TCB7toSleepEm>
                TCB::timeSliceCounter=0;
    80003038:	0000a797          	auipc	a5,0xa
    8000303c:	1907b783          	ld	a5,400(a5) # 8000d1c8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003040:	0007b023          	sd	zero,0(a5)
                __asm__ volatile("mv a0, %0"::"r"(0));
    80003044:	00000793          	li	a5,0
    80003048:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    8000304c:	04a43823          	sd	a0,80(s0)
                TCB::dispatch();
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	e68080e7          	jalr	-408(ra) # 80001eb8 <_ZN3TCB8dispatchEv>
                break;
    80003058:	cadff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                char ret=myConsole::getInput();
    8000305c:	fffff097          	auipc	ra,0xfffff
    80003060:	268080e7          	jalr	616(ra) # 800022c4 <_ZN9myConsole8getInputEv>
                __asm__ volatile("mv a0, %0"::"r"(ret));
    80003064:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80003068:	04a43823          	sd	a0,80(s0)
                break;
    8000306c:	c99ff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("ld %0, 8*11(fp)":"=r"(c));
    80003070:	05843783          	ld	a5,88(s0)
    80003074:	f0f409a3          	sb	a5,-237(s0)
                myConsole::setOutput(c);
    80003078:	f1344503          	lbu	a0,-237(s0)
    8000307c:	0ff57513          	andi	a0,a0,255
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	41c080e7          	jalr	1052(ra) # 8000249c <_ZN9myConsole9setOutputEc>
                break;
    80003088:	c7dff06f          	j	80002d04 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                __asm__ volatile("sw %[val], 0(%[addr])" : : [val] "r"(val), [addr] "r"(addr));
    8000308c:	000057b7          	lui	a5,0x5
    80003090:	5557879b          	addiw	a5,a5,1365
    80003094:	00100737          	lui	a4,0x100
    80003098:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
                while (1);
    8000309c:	0000006f          	j	8000309c <_ZN5Riscv20handleSupervisorTrapEv+0x468>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800030a0:	141027f3          	csrr	a5,sepc
    800030a4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800030a8:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    800030ac:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800030b0:	100027f3          	csrr	a5,sstatus
    800030b4:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800030b8:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800030bc:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800030c0:	00200793          	li	a5,2
    800030c4:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800030c8:	0000a717          	auipc	a4,0xa
    800030cc:	10073703          	ld	a4,256(a4) # 8000d1c8 <_GLOBAL_OFFSET_TABLE_+0x58>
    800030d0:	00073783          	ld	a5,0(a4)
    800030d4:	00178793          	addi	a5,a5,1 # 5001 <_entry-0x7fffafff>
    800030d8:	00f73023          	sd	a5,0(a4)
        TCB::timeCur++;
    800030dc:	0000a717          	auipc	a4,0xa
    800030e0:	0dc73703          	ld	a4,220(a4) # 8000d1b8 <_GLOBAL_OFFSET_TABLE_+0x48>
    800030e4:	00073783          	ld	a5,0(a4)
    800030e8:	00178793          	addi	a5,a5,1
    800030ec:	00f73023          	sd	a5,0(a4)
        if(TCB::timeMaxCounter!=-1){
    800030f0:	0000a797          	auipc	a5,0xa
    800030f4:	1307b783          	ld	a5,304(a5) # 8000d220 <_GLOBAL_OFFSET_TABLE_+0xb0>
    800030f8:	0007a783          	lw	a5,0(a5)
    800030fc:	fff00713          	li	a4,-1
    80003100:	02e78e63          	beq	a5,a4,8000313c <_ZN5Riscv20handleSupervisorTrapEv+0x508>
            if(TCB::timeMaxCounter>0) TCB::timeMaxCounter--;
    80003104:	00f05a63          	blez	a5,80003118 <_ZN5Riscv20handleSupervisorTrapEv+0x4e4>
    80003108:	fff7879b          	addiw	a5,a5,-1
    8000310c:	0000a717          	auipc	a4,0xa
    80003110:	11473703          	ld	a4,276(a4) # 8000d220 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80003114:	00f72023          	sw	a5,0(a4)
            if(!TCB::timeMaxCounter){
    80003118:	0000a797          	auipc	a5,0xa
    8000311c:	1087b783          	ld	a5,264(a5) # 8000d220 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80003120:	0007a783          	lw	a5,0(a5)
    80003124:	08078063          	beqz	a5,800031a4 <_ZN5Riscv20handleSupervisorTrapEv+0x570>
            if(TCB::timeMaxCounter==-2){
    80003128:	0000a797          	auipc	a5,0xa
    8000312c:	0f87b783          	ld	a5,248(a5) # 8000d220 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80003130:	0007a703          	lw	a4,0(a5)
    80003134:	ffe00793          	li	a5,-2
    80003138:	08f70863          	beq	a4,a5,800031c8 <_ZN5Riscv20handleSupervisorTrapEv+0x594>
        if(TCB::timeIntervalCounter==TCB::timeInterval){
    8000313c:	0000a797          	auipc	a5,0xa
    80003140:	0f47b783          	ld	a5,244(a5) # 8000d230 <_GLOBAL_OFFSET_TABLE_+0xc0>
    80003144:	0007a703          	lw	a4,0(a5)
    80003148:	0000a797          	auipc	a5,0xa
    8000314c:	0f87b783          	ld	a5,248(a5) # 8000d240 <_GLOBAL_OFFSET_TABLE_+0xd0>
    80003150:	0007a783          	lw	a5,0(a5)
    80003154:	08f70663          	beq	a4,a5,800031e0 <_ZN5Riscv20handleSupervisorTrapEv+0x5ac>
        while(Scheduler::getWakeTime() && TCB::timeCur>=Scheduler::getWakeTime()){
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	338080e7          	jalr	824(ra) # 80003490 <_ZN9Scheduler11getWakeTimeEv>
    80003160:	10050863          	beqz	a0,80003270 <_ZN5Riscv20handleSupervisorTrapEv+0x63c>
    80003164:	00000097          	auipc	ra,0x0
    80003168:	32c080e7          	jalr	812(ra) # 80003490 <_ZN9Scheduler11getWakeTimeEv>
    8000316c:	0000a797          	auipc	a5,0xa
    80003170:	04c7b783          	ld	a5,76(a5) # 8000d1b8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003174:	0007b783          	ld	a5,0(a5)
    80003178:	0ea7ec63          	bltu	a5,a0,80003270 <_ZN5Riscv20handleSupervisorTrapEv+0x63c>
            TCB* rising=Scheduler::getSorted();
    8000317c:	00000097          	auipc	ra,0x0
    80003180:	298080e7          	jalr	664(ra) # 80003414 <_ZN9Scheduler9getSortedEv>
    80003184:	00050493          	mv	s1,a0
            rising->blockedWait=false;
    80003188:	02050a23          	sb	zero,52(a0)
            if(rising->sleep){
    8000318c:	03354783          	lbu	a5,51(a0)
    80003190:	fc0784e3          	beqz	a5,80003158 <_ZN5Riscv20handleSupervisorTrapEv+0x524>
                Scheduler::put(rising);
    80003194:	00000097          	auipc	ra,0x0
    80003198:	200080e7          	jalr	512(ra) # 80003394 <_ZN9Scheduler3putEP3TCB>
                rising->sleep=false;
    8000319c:	020489a3          	sb	zero,51(s1)
    800031a0:	fb9ff06f          	j	80003158 <_ZN5Riscv20handleSupervisorTrapEv+0x524>
                printString("Waiting done! \n");
    800031a4:	00007517          	auipc	a0,0x7
    800031a8:	e7c50513          	addi	a0,a0,-388 # 8000a020 <CONSOLE_STATUS+0x10>
    800031ac:	00003097          	auipc	ra,0x3
    800031b0:	fd8080e7          	jalr	-40(ra) # 80006184 <_Z11printStringPKc>
                TCB::timeMaxCounter=-2;
    800031b4:	0000a797          	auipc	a5,0xa
    800031b8:	06c7b783          	ld	a5,108(a5) # 8000d220 <_GLOBAL_OFFSET_TABLE_+0xb0>
    800031bc:	ffe00713          	li	a4,-2
    800031c0:	00e7a023          	sw	a4,0(a5)
    800031c4:	f65ff06f          	j	80003128 <_ZN5Riscv20handleSupervisorTrapEv+0x4f4>
                TCB::timeIntervalCounter++;
    800031c8:	0000a717          	auipc	a4,0xa
    800031cc:	06873703          	ld	a4,104(a4) # 8000d230 <_GLOBAL_OFFSET_TABLE_+0xc0>
    800031d0:	00072783          	lw	a5,0(a4)
    800031d4:	0017879b          	addiw	a5,a5,1
    800031d8:	00f72023          	sw	a5,0(a4)
    800031dc:	f61ff06f          	j	8000313c <_ZN5Riscv20handleSupervisorTrapEv+0x508>
        if (!head) { return 0; }
    800031e0:	0000a797          	auipc	a5,0xa
    800031e4:	0387b783          	ld	a5,56(a5) # 8000d218 <_GLOBAL_OFFSET_TABLE_+0xa8>
    800031e8:	0007b783          	ld	a5,0(a5)
    800031ec:	f60786e3          	beqz	a5,80003158 <_ZN5Riscv20handleSupervisorTrapEv+0x524>
        return head->data;
    800031f0:	0007b783          	ld	a5,0(a5)
            if(TCB::blockedQ.peekFirst())
    800031f4:	f60782e3          	beqz	a5,80003158 <_ZN5Riscv20handleSupervisorTrapEv+0x524>
                printString("Interval time elapsed \n");
    800031f8:	00007517          	auipc	a0,0x7
    800031fc:	e3850513          	addi	a0,a0,-456 # 8000a030 <CONSOLE_STATUS+0x20>
    80003200:	00003097          	auipc	ra,0x3
    80003204:	f84080e7          	jalr	-124(ra) # 80006184 <_Z11printStringPKc>
        if (!head) { return 0; }
    80003208:	0000a797          	auipc	a5,0xa
    8000320c:	0107b783          	ld	a5,16(a5) # 8000d218 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80003210:	0007b503          	ld	a0,0(a5)
    80003214:	02050e63          	beqz	a0,80003250 <_ZN5Riscv20handleSupervisorTrapEv+0x61c>
        head = head->next;
    80003218:	00853783          	ld	a5,8(a0)
    8000321c:	0000a717          	auipc	a4,0xa
    80003220:	ffc73703          	ld	a4,-4(a4) # 8000d218 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80003224:	00f73023          	sd	a5,0(a4)
        if (!head) { tail = 0; }
    80003228:	04078063          	beqz	a5,80003268 <_ZN5Riscv20handleSupervisorTrapEv+0x634>
        T *ret = elem->data;
    8000322c:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80003230:	00000097          	auipc	ra,0x0
    80003234:	5b0080e7          	jalr	1456(ra) # 800037e0 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80003238:	0000a717          	auipc	a4,0xa
    8000323c:	fe073703          	ld	a4,-32(a4) # 8000d218 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80003240:	01072783          	lw	a5,16(a4)
    80003244:	fff7879b          	addiw	a5,a5,-1
    80003248:	00f72823          	sw	a5,16(a4)
        return ret;
    8000324c:	00048513          	mv	a0,s1
                Scheduler::put(unblocked);
    80003250:	00000097          	auipc	ra,0x0
    80003254:	144080e7          	jalr	324(ra) # 80003394 <_ZN9Scheduler3putEP3TCB>
                TCB::timeIntervalCounter=0;
    80003258:	0000a797          	auipc	a5,0xa
    8000325c:	fd87b783          	ld	a5,-40(a5) # 8000d230 <_GLOBAL_OFFSET_TABLE_+0xc0>
    80003260:	0007a023          	sw	zero,0(a5)
    80003264:	ef5ff06f          	j	80003158 <_ZN5Riscv20handleSupervisorTrapEv+0x524>
        if (!head) { tail = 0; }
    80003268:	00073423          	sd	zero,8(a4)
    8000326c:	fc1ff06f          	j	8000322c <_ZN5Riscv20handleSupervisorTrapEv+0x5f8>
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80003270:	0000a797          	auipc	a5,0xa
    80003274:	fb87b783          	ld	a5,-72(a5) # 8000d228 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80003278:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() const {return timeSlice;}
    8000327c:	0187b783          	ld	a5,24(a5)
    80003280:	0000a717          	auipc	a4,0xa
    80003284:	f4873703          	ld	a4,-184(a4) # 8000d1c8 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003288:	00073703          	ld	a4,0(a4)
    8000328c:	00f77c63          	bgeu	a4,a5,800032a4 <_ZN5Riscv20handleSupervisorTrapEv+0x670>
        w_sepc(sepc);
    80003290:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003294:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80003298:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000329c:	10079073          	csrw	sstatus,a5
}
    800032a0:	a75ff06f          	j	80002d14 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
            TCB::timeSliceCounter=0;
    800032a4:	0000a797          	auipc	a5,0xa
    800032a8:	f247b783          	ld	a5,-220(a5) # 8000d1c8 <_GLOBAL_OFFSET_TABLE_+0x58>
    800032ac:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800032b0:	fffff097          	auipc	ra,0xfffff
    800032b4:	c08080e7          	jalr	-1016(ra) # 80001eb8 <_ZN3TCB8dispatchEv>
    800032b8:	fd9ff06f          	j	80003290 <_ZN5Riscv20handleSupervisorTrapEv+0x65c>
        myConsole::console_handler();
    800032bc:	fffff097          	auipc	ra,0xfffff
    800032c0:	30c080e7          	jalr	780(ra) # 800025c8 <_ZN9myConsole15console_handlerEv>
    800032c4:	a51ff06f          	j	80002d14 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>

00000000800032c8 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::putSorted(TCB *ccb,uint64 wakeTime)
{
    sleepingThreadQueue.addSorted(ccb,wakeTime);
}
    800032c8:	ff010113          	addi	sp,sp,-16
    800032cc:	00813423          	sd	s0,8(sp)
    800032d0:	01010413          	addi	s0,sp,16
    800032d4:	00100793          	li	a5,1
    800032d8:	00f50863          	beq	a0,a5,800032e8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800032dc:	00813403          	ld	s0,8(sp)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret
    800032e8:	000107b7          	lui	a5,0x10
    800032ec:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800032f0:	fef596e3          	bne	a1,a5,800032dc <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;
    int size;
public:
    List() : head(0), tail(0) ,size(0){}
    800032f4:	0000a797          	auipc	a5,0xa
    800032f8:	05478793          	addi	a5,a5,84 # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
    800032fc:	0007b023          	sd	zero,0(a5)
    80003300:	0007b423          	sd	zero,8(a5)
    80003304:	0007a823          	sw	zero,16(a5)
    80003308:	0007bc23          	sd	zero,24(a5)
    8000330c:	0207b023          	sd	zero,32(a5)
    80003310:	0207a423          	sw	zero,40(a5)
    80003314:	fc9ff06f          	j	800032dc <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003318 <_ZN9Scheduler3getEv>:
{
    80003318:	fe010113          	addi	sp,sp,-32
    8000331c:	00113c23          	sd	ra,24(sp)
    80003320:	00813823          	sd	s0,16(sp)
    80003324:	00913423          	sd	s1,8(sp)
    80003328:	02010413          	addi	s0,sp,32
        size++;
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000332c:	0000a517          	auipc	a0,0xa
    80003330:	01c53503          	ld	a0,28(a0) # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
    80003334:	04050c63          	beqz	a0,8000338c <_ZN9Scheduler3getEv+0x74>

        Elem *elem = head;
        head = head->next;
    80003338:	00853783          	ld	a5,8(a0)
    8000333c:	0000a717          	auipc	a4,0xa
    80003340:	00f73623          	sd	a5,12(a4) # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80003344:	02078e63          	beqz	a5,80003380 <_ZN9Scheduler3getEv+0x68>

        T *ret = elem->data;
    80003348:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	494080e7          	jalr	1172(ra) # 800037e0 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80003354:	0000a717          	auipc	a4,0xa
    80003358:	ff470713          	addi	a4,a4,-12 # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
    8000335c:	01072783          	lw	a5,16(a4)
    80003360:	fff7879b          	addiw	a5,a5,-1
    80003364:	00f72823          	sw	a5,16(a4)
}
    80003368:	00048513          	mv	a0,s1
    8000336c:	01813083          	ld	ra,24(sp)
    80003370:	01013403          	ld	s0,16(sp)
    80003374:	00813483          	ld	s1,8(sp)
    80003378:	02010113          	addi	sp,sp,32
    8000337c:	00008067          	ret
        if (!head) { tail = 0; }
    80003380:	0000a797          	auipc	a5,0xa
    80003384:	fc07b823          	sd	zero,-48(a5) # 8000d350 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003388:	fc1ff06f          	j	80003348 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000338c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80003390:	fd9ff06f          	j	80003368 <_ZN9Scheduler3getEv+0x50>

0000000080003394 <_ZN9Scheduler3putEP3TCB>:
{
    80003394:	fe010113          	addi	sp,sp,-32
    80003398:	00113c23          	sd	ra,24(sp)
    8000339c:	00813823          	sd	s0,16(sp)
    800033a0:	00913423          	sd	s1,8(sp)
    800033a4:	02010413          	addi	s0,sp,32
    800033a8:	00050493          	mv	s1,a0
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    800033ac:	00100513          	li	a0,1
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	2d4080e7          	jalr	724(ra) # 80003684 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    800033b8:	00953023          	sd	s1,0(a0)
        elem->next = nullptr;
    800033bc:	00053423          	sd	zero,8(a0)
        if (tail)
    800033c0:	0000a797          	auipc	a5,0xa
    800033c4:	f907b783          	ld	a5,-112(a5) # 8000d350 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800033c8:	02078c63          	beqz	a5,80003400 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    800033cc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800033d0:	0000a797          	auipc	a5,0xa
    800033d4:	f8a7b023          	sd	a0,-128(a5) # 8000d350 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    800033d8:	0000a717          	auipc	a4,0xa
    800033dc:	f7070713          	addi	a4,a4,-144 # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
    800033e0:	01072783          	lw	a5,16(a4)
    800033e4:	0017879b          	addiw	a5,a5,1
    800033e8:	00f72823          	sw	a5,16(a4)
}
    800033ec:	01813083          	ld	ra,24(sp)
    800033f0:	01013403          	ld	s0,16(sp)
    800033f4:	00813483          	ld	s1,8(sp)
    800033f8:	02010113          	addi	sp,sp,32
    800033fc:	00008067          	ret
            head = tail = elem;
    80003400:	0000a797          	auipc	a5,0xa
    80003404:	f4878793          	addi	a5,a5,-184 # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
    80003408:	00a7b423          	sd	a0,8(a5)
    8000340c:	00a7b023          	sd	a0,0(a5)
    80003410:	fc9ff06f          	j	800033d8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080003414 <_ZN9Scheduler9getSortedEv>:
{
    80003414:	fe010113          	addi	sp,sp,-32
    80003418:	00113c23          	sd	ra,24(sp)
    8000341c:	00813823          	sd	s0,16(sp)
    80003420:	00913423          	sd	s1,8(sp)
    80003424:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80003428:	0000a517          	auipc	a0,0xa
    8000342c:	f3853503          	ld	a0,-200(a0) # 8000d360 <_ZN9Scheduler19sleepingThreadQueueE>
    80003430:	04050c63          	beqz	a0,80003488 <_ZN9Scheduler9getSortedEv+0x74>
        head = head->next;
    80003434:	00853783          	ld	a5,8(a0)
    80003438:	0000a717          	auipc	a4,0xa
    8000343c:	f2f73423          	sd	a5,-216(a4) # 8000d360 <_ZN9Scheduler19sleepingThreadQueueE>
        if (!head) { tail = 0; }
    80003440:	02078e63          	beqz	a5,8000347c <_ZN9Scheduler9getSortedEv+0x68>
        T *ret = elem->data;
    80003444:	00053483          	ld	s1,0(a0)
        MemoryAllocator::mem_free(elem);
    80003448:	00000097          	auipc	ra,0x0
    8000344c:	398080e7          	jalr	920(ra) # 800037e0 <_ZN15MemoryAllocator8mem_freeEPv>
        size--;
    80003450:	0000a717          	auipc	a4,0xa
    80003454:	ef870713          	addi	a4,a4,-264 # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
    80003458:	02872783          	lw	a5,40(a4)
    8000345c:	fff7879b          	addiw	a5,a5,-1
    80003460:	02f72423          	sw	a5,40(a4)
}
    80003464:	00048513          	mv	a0,s1
    80003468:	01813083          	ld	ra,24(sp)
    8000346c:	01013403          	ld	s0,16(sp)
    80003470:	00813483          	ld	s1,8(sp)
    80003474:	02010113          	addi	sp,sp,32
    80003478:	00008067          	ret
        if (!head) { tail = 0; }
    8000347c:	0000a797          	auipc	a5,0xa
    80003480:	ee07b623          	sd	zero,-276(a5) # 8000d368 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    80003484:	fc1ff06f          	j	80003444 <_ZN9Scheduler9getSortedEv+0x30>
        if (!head) { return 0; }
    80003488:	00050493          	mv	s1,a0
    return sleepingThreadQueue.removeFirst();
    8000348c:	fd9ff06f          	j	80003464 <_ZN9Scheduler9getSortedEv+0x50>

0000000080003490 <_ZN9Scheduler11getWakeTimeEv>:
uint64 Scheduler::getWakeTime() {
    80003490:	ff010113          	addi	sp,sp,-16
    80003494:	00813423          	sd	s0,8(sp)
    80003498:	01010413          	addi	s0,sp,16
        if (!head) { return 0; }
        return head->data;
    }

    uint64 peekFirstTime(){
        if(!head) return 0;
    8000349c:	0000a797          	auipc	a5,0xa
    800034a0:	ec47b783          	ld	a5,-316(a5) # 8000d360 <_ZN9Scheduler19sleepingThreadQueueE>
    800034a4:	00078a63          	beqz	a5,800034b8 <_ZN9Scheduler11getWakeTimeEv+0x28>
        return head->wakeUp;
    800034a8:	0107b503          	ld	a0,16(a5)
}
    800034ac:	00813403          	ld	s0,8(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret
        if(!head) return 0;
    800034b8:	00000513          	li	a0,0
    return sleepingThreadQueue.peekFirstTime();
    800034bc:	ff1ff06f          	j	800034ac <_ZN9Scheduler11getWakeTimeEv+0x1c>

00000000800034c0 <_ZN9Scheduler9putSortedEP3TCBm>:
{
    800034c0:	fd010113          	addi	sp,sp,-48
    800034c4:	02113423          	sd	ra,40(sp)
    800034c8:	02813023          	sd	s0,32(sp)
    800034cc:	00913c23          	sd	s1,24(sp)
    800034d0:	01213823          	sd	s2,16(sp)
    800034d4:	01313423          	sd	s3,8(sp)
    800034d8:	03010413          	addi	s0,sp,48
    800034dc:	00050993          	mv	s3,a0
    800034e0:	00058913          	mv	s2,a1
        Elem* curr = head;
    800034e4:	0000a497          	auipc	s1,0xa
    800034e8:	e7c4b483          	ld	s1,-388(s1) # 8000d360 <_ZN9Scheduler19sleepingThreadQueueE>
        Elem* elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
    800034ec:	00100513          	li	a0,1
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	194080e7          	jalr	404(ra) # 80003684 <_ZN15MemoryAllocator9mem_allocEm>
        elem->data = (T*)data;
    800034f8:	01353023          	sd	s3,0(a0)
        elem->next = nullptr;
    800034fc:	00053423          	sd	zero,8(a0)
        elem->wakeUp=wakeUp;
    80003500:	01253823          	sd	s2,16(a0)
        if(!curr){
    80003504:	02048863          	beqz	s1,80003534 <_ZN9Scheduler9putSortedEP3TCBm+0x74>
        else if(head->wakeUp>wakeUp){
    80003508:	0000a797          	auipc	a5,0xa
    8000350c:	e587b783          	ld	a5,-424(a5) # 8000d360 <_ZN9Scheduler19sleepingThreadQueueE>
    80003510:	0107b703          	ld	a4,16(a5)
    80003514:	04e96063          	bltu	s2,a4,80003554 <_ZN9Scheduler9putSortedEP3TCBm+0x94>
        Elem* prev=curr;
    80003518:	00048793          	mv	a5,s1
        while(curr && curr->wakeUp<=wakeUp) {
    8000351c:	04048c63          	beqz	s1,80003574 <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
    80003520:	0104b703          	ld	a4,16(s1)
    80003524:	04e96863          	bltu	s2,a4,80003574 <_ZN9Scheduler9putSortedEP3TCBm+0xb4>
            prev=curr;
    80003528:	00048793          	mv	a5,s1
            curr=curr->next;
    8000352c:	0084b483          	ld	s1,8(s1)
        while(curr && curr->wakeUp<=wakeUp) {
    80003530:	fedff06f          	j	8000351c <_ZN9Scheduler9putSortedEP3TCBm+0x5c>
            head=tail=elem;
    80003534:	0000a797          	auipc	a5,0xa
    80003538:	e1478793          	addi	a5,a5,-492 # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
    8000353c:	02a7b023          	sd	a0,32(a5)
    80003540:	00a7bc23          	sd	a0,24(a5)
            size++;
    80003544:	0287a703          	lw	a4,40(a5)
    80003548:	0017071b          	addiw	a4,a4,1
    8000354c:	02e7a423          	sw	a4,40(a5)
            return;
    80003550:	0440006f          	j	80003594 <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
            elem->next=head;
    80003554:	00f53423          	sd	a5,8(a0)
            head=elem;
    80003558:	0000a797          	auipc	a5,0xa
    8000355c:	df078793          	addi	a5,a5,-528 # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
    80003560:	00a7bc23          	sd	a0,24(a5)
            size++;
    80003564:	0287a703          	lw	a4,40(a5)
    80003568:	0017071b          	addiw	a4,a4,1
    8000356c:	02e7a423          	sw	a4,40(a5)
            return;
    80003570:	0240006f          	j	80003594 <_ZN9Scheduler9putSortedEP3TCBm+0xd4>
        elem->next=curr;
    80003574:	00953423          	sd	s1,8(a0)
        prev->next=elem;
    80003578:	00a7b423          	sd	a0,8(a5)
        if(!curr) tail=elem;
    8000357c:	02048a63          	beqz	s1,800035b0 <_ZN9Scheduler9putSortedEP3TCBm+0xf0>
        size++;
    80003580:	0000a717          	auipc	a4,0xa
    80003584:	dc870713          	addi	a4,a4,-568 # 8000d348 <_ZN9Scheduler16readyThreadQueueE>
    80003588:	02872783          	lw	a5,40(a4)
    8000358c:	0017879b          	addiw	a5,a5,1
    80003590:	02f72423          	sw	a5,40(a4)
}
    80003594:	02813083          	ld	ra,40(sp)
    80003598:	02013403          	ld	s0,32(sp)
    8000359c:	01813483          	ld	s1,24(sp)
    800035a0:	01013903          	ld	s2,16(sp)
    800035a4:	00813983          	ld	s3,8(sp)
    800035a8:	03010113          	addi	sp,sp,48
    800035ac:	00008067          	ret
        if(!curr) tail=elem;
    800035b0:	0000a797          	auipc	a5,0xa
    800035b4:	daa7bc23          	sd	a0,-584(a5) # 8000d368 <_ZN9Scheduler19sleepingThreadQueueE+0x8>
    800035b8:	fc9ff06f          	j	80003580 <_ZN9Scheduler9putSortedEP3TCBm+0xc0>

00000000800035bc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800035bc:	ff010113          	addi	sp,sp,-16
    800035c0:	00113423          	sd	ra,8(sp)
    800035c4:	00813023          	sd	s0,0(sp)
    800035c8:	01010413          	addi	s0,sp,16
    800035cc:	000105b7          	lui	a1,0x10
    800035d0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800035d4:	00100513          	li	a0,1
    800035d8:	00000097          	auipc	ra,0x0
    800035dc:	cf0080e7          	jalr	-784(ra) # 800032c8 <_Z41__static_initialization_and_destruction_0ii>
    800035e0:	00813083          	ld	ra,8(sp)
    800035e4:	00013403          	ld	s0,0(sp)
    800035e8:	01010113          	addi	sp,sp,16
    800035ec:	00008067          	ret

00000000800035f0 <_ZN15MemoryAllocator7getFreeEv>:
    findNewLargest();
    return 0;
}

size_t MemoryAllocator::getFree()
{
    800035f0:	ff010113          	addi	sp,sp,-16
    800035f4:	00813423          	sd	s0,8(sp)
    800035f8:	01010413          	addi	s0,sp,16

    return totalFreeMem;
}
    800035fc:	0000a517          	auipc	a0,0xa
    80003600:	d7c53503          	ld	a0,-644(a0) # 8000d378 <_ZN15MemoryAllocator12totalFreeMemE>
    80003604:	00813403          	ld	s0,8(sp)
    80003608:	01010113          	addi	sp,sp,16
    8000360c:	00008067          	ret

0000000080003610 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock()
{
    80003610:	ff010113          	addi	sp,sp,-16
    80003614:	00813423          	sd	s0,8(sp)
    80003618:	01010413          	addi	s0,sp,16
    return largestFreeBlock;
}
    8000361c:	0000a517          	auipc	a0,0xa
    80003620:	d6453503          	ld	a0,-668(a0) # 8000d380 <_ZN15MemoryAllocator16largestFreeBlockE>
    80003624:	00813403          	ld	s0,8(sp)
    80003628:	01010113          	addi	sp,sp,16
    8000362c:	00008067          	ret

0000000080003630 <_ZN15MemoryAllocator14findNewLargestEv>:

void MemoryAllocator::findNewLargest()
{
    80003630:	ff010113          	addi	sp,sp,-16
    80003634:	00813423          	sd	s0,8(sp)
    80003638:	01010413          	addi	s0,sp,16
    largestFreeBlock=0;
    8000363c:	0000a797          	auipc	a5,0xa
    80003640:	d3c78793          	addi	a5,a5,-708 # 8000d378 <_ZN15MemoryAllocator12totalFreeMemE>
    80003644:	0007b423          	sd	zero,8(a5)
    if(!freeMemHead) return;
    80003648:	0107b783          	ld	a5,16(a5)
    8000364c:	00079e63          	bnez	a5,80003668 <_ZN15MemoryAllocator14findNewLargestEv+0x38>
    while(curr) {
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
        curr=curr->next;
    }

}
    80003650:	00813403          	ld	s0,8(sp)
    80003654:	01010113          	addi	sp,sp,16
    80003658:	00008067          	ret
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    8000365c:	0000a697          	auipc	a3,0xa
    80003660:	d2e6b223          	sd	a4,-732(a3) # 8000d380 <_ZN15MemoryAllocator16largestFreeBlockE>
        curr=curr->next;
    80003664:	0107b783          	ld	a5,16(a5)
    while(curr) {
    80003668:	fe0784e3          	beqz	a5,80003650 <_ZN15MemoryAllocator14findNewLargestEv+0x20>
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    8000366c:	0007b683          	ld	a3,0(a5)
    80003670:	0000a717          	auipc	a4,0xa
    80003674:	d1073703          	ld	a4,-752(a4) # 8000d380 <_ZN15MemoryAllocator16largestFreeBlockE>
    80003678:	fed772e3          	bgeu	a4,a3,8000365c <_ZN15MemoryAllocator14findNewLargestEv+0x2c>
    8000367c:	00068713          	mv	a4,a3
    80003680:	fddff06f          	j	8000365c <_ZN15MemoryAllocator14findNewLargestEv+0x2c>

0000000080003684 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80003684:	fe010113          	addi	sp,sp,-32
    80003688:	00113c23          	sd	ra,24(sp)
    8000368c:	00813823          	sd	s0,16(sp)
    80003690:	00913423          	sd	s1,8(sp)
    80003694:	02010413          	addi	s0,sp,32
    size_t size=numOfBlocks*MEM_BLOCK_SIZE;
    80003698:	00651513          	slli	a0,a0,0x6
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    8000369c:	12050e63          	beqz	a0,800037d8 <_ZN15MemoryAllocator9mem_allocEm+0x154>
    800036a0:	0000a497          	auipc	s1,0xa
    800036a4:	ce84b483          	ld	s1,-792(s1) # 8000d388 <_ZN15MemoryAllocator11freeMemHeadE>
    800036a8:	0e048e63          	beqz	s1,800037a4 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    800036ac:	0000a717          	auipc	a4,0xa
    800036b0:	cd473703          	ld	a4,-812(a4) # 8000d380 <_ZN15MemoryAllocator16largestFreeBlockE>
    800036b4:	00a77863          	bgeu	a4,a0,800036c4 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    800036b8:	00000493          	li	s1,0
    800036bc:	0e80006f          	j	800037a4 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    while(curr && curr->size<size) curr=curr->next;
    800036c0:	0104b483          	ld	s1,16(s1)
    800036c4:	00048663          	beqz	s1,800036d0 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    800036c8:	0004b783          	ld	a5,0(s1)
    800036cc:	fea7eae3          	bltu	a5,a0,800036c0 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if(!curr) return nullptr;
    800036d0:	0c048a63          	beqz	s1,800037a4 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    if(curr->size> size+sizeof(FreeBlock)){
    800036d4:	0004b683          	ld	a3,0(s1)
    800036d8:	01850793          	addi	a5,a0,24
    800036dc:	08d7f063          	bgeu	a5,a3,8000375c <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        totalFreeMem=totalFreeMem-size-sizeof(FreeBlock);
    800036e0:	0000a617          	auipc	a2,0xa
    800036e4:	c9860613          	addi	a2,a2,-872 # 8000d378 <_ZN15MemoryAllocator12totalFreeMemE>
    800036e8:	00063683          	ld	a3,0(a2)
    800036ec:	40a686b3          	sub	a3,a3,a0
    800036f0:	fe868693          	addi	a3,a3,-24
    800036f4:	00d63023          	sd	a3,0(a2)
        if(largestFreeBlock==curr->size) find=true;
    800036f8:	0004b683          	ld	a3,0(s1)
    800036fc:	04d70663          	beq	a4,a3,80003748 <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        bool find=false;
    80003700:	00000613          	li	a2,0
        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    80003704:	00f487b3          	add	a5,s1,a5
        newBlock->size=curr->size-size-sizeof(FreeBlock);
    80003708:	40a686b3          	sub	a3,a3,a0
    8000370c:	fe868693          	addi	a3,a3,-24
    80003710:	00d7b023          	sd	a3,0(a5)
        newBlock->prev=curr->prev;
    80003714:	0084b703          	ld	a4,8(s1)
    80003718:	00e7b423          	sd	a4,8(a5)
        curr->size=size;
    8000371c:	00a4b023          	sd	a0,0(s1)
        if(curr->prev){
    80003720:	02070863          	beqz	a4,80003750 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            curr->prev->next=newBlock;
    80003724:	00f73823          	sd	a5,16(a4)
        newBlock->next=curr->next;
    80003728:	0104b703          	ld	a4,16(s1)
    8000372c:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=newBlock;
    80003730:	00070463          	beqz	a4,80003738 <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80003734:	00f73423          	sd	a5,8(a4)
        if(find) findNewLargest();
    80003738:	06060063          	beqz	a2,80003798 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	ef4080e7          	jalr	-268(ra) # 80003630 <_ZN15MemoryAllocator14findNewLargestEv>
    80003744:	0540006f          	j	80003798 <_ZN15MemoryAllocator9mem_allocEm+0x114>
        if(largestFreeBlock==curr->size) find=true;
    80003748:	00100613          	li	a2,1
    8000374c:	fb9ff06f          	j	80003704 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        else freeMemHead = newBlock;
    80003750:	0000a717          	auipc	a4,0xa
    80003754:	c2f73c23          	sd	a5,-968(a4) # 8000d388 <_ZN15MemoryAllocator11freeMemHeadE>
    80003758:	fd1ff06f          	j	80003728 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        totalFreeMem=totalFreeMem-curr->size;
    8000375c:	0000a617          	auipc	a2,0xa
    80003760:	c1c60613          	addi	a2,a2,-996 # 8000d378 <_ZN15MemoryAllocator12totalFreeMemE>
    80003764:	00063783          	ld	a5,0(a2)
    80003768:	40d786b3          	sub	a3,a5,a3
    8000376c:	00d63023          	sd	a3,0(a2)
        if(curr->prev) curr->prev->next=curr->next;
    80003770:	0084b783          	ld	a5,8(s1)
    80003774:	04078463          	beqz	a5,800037bc <_ZN15MemoryAllocator9mem_allocEm+0x138>
    80003778:	0104b683          	ld	a3,16(s1)
    8000377c:	00d7b823          	sd	a3,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80003780:	0104b783          	ld	a5,16(s1)
    80003784:	00078663          	beqz	a5,80003790 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    80003788:	0084b683          	ld	a3,8(s1)
    8000378c:	00d7b423          	sd	a3,8(a5)
        if(curr->size==largestFreeBlock) findNewLargest();
    80003790:	0004b783          	ld	a5,0(s1)
    80003794:	02f70c63          	beq	a4,a5,800037cc <_ZN15MemoryAllocator9mem_allocEm+0x148>
    curr->next=nullptr;
    80003798:	0004b823          	sd	zero,16(s1)
    curr->prev=nullptr;
    8000379c:	0004b423          	sd	zero,8(s1)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    800037a0:	01848493          	addi	s1,s1,24
}
    800037a4:	00048513          	mv	a0,s1
    800037a8:	01813083          	ld	ra,24(sp)
    800037ac:	01013403          	ld	s0,16(sp)
    800037b0:	00813483          	ld	s1,8(sp)
    800037b4:	02010113          	addi	sp,sp,32
    800037b8:	00008067          	ret
        else freeMemHead=curr->next;
    800037bc:	0104b783          	ld	a5,16(s1)
    800037c0:	0000a697          	auipc	a3,0xa
    800037c4:	bcf6b423          	sd	a5,-1080(a3) # 8000d388 <_ZN15MemoryAllocator11freeMemHeadE>
    800037c8:	fb9ff06f          	j	80003780 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if(curr->size==largestFreeBlock) findNewLargest();
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	e64080e7          	jalr	-412(ra) # 80003630 <_ZN15MemoryAllocator14findNewLargestEv>
    800037d4:	fc5ff06f          	j	80003798 <_ZN15MemoryAllocator9mem_allocEm+0x114>
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    800037d8:	00000493          	li	s1,0
    800037dc:	fc9ff06f          	j	800037a4 <_ZN15MemoryAllocator9mem_allocEm+0x120>

00000000800037e0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    800037e0:	1e050c63          	beqz	a0,800039d8 <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800037e4:	fe850693          	addi	a3,a0,-24
    800037e8:	0000a797          	auipc	a5,0xa
    800037ec:	9b07b783          	ld	a5,-1616(a5) # 8000d198 <_GLOBAL_OFFSET_TABLE_+0x28>
    800037f0:	0007b783          	ld	a5,0(a5)
    800037f4:	1ef6e663          	bltu	a3,a5,800039e0 <_ZN15MemoryAllocator8mem_freeEPv+0x200>
    800037f8:	0000a797          	auipc	a5,0xa
    800037fc:	a407b783          	ld	a5,-1472(a5) # 8000d238 <_GLOBAL_OFFSET_TABLE_+0xc8>
    80003800:	0007b783          	ld	a5,0(a5)
    80003804:	1ea7e263          	bltu	a5,a0,800039e8 <_ZN15MemoryAllocator8mem_freeEPv+0x208>
    totalFreeMem+=blk->size;
    80003808:	fe853603          	ld	a2,-24(a0)
    8000380c:	0000a797          	auipc	a5,0xa
    80003810:	b6c78793          	addi	a5,a5,-1172 # 8000d378 <_ZN15MemoryAllocator12totalFreeMemE>
    80003814:	0007b703          	ld	a4,0(a5)
    80003818:	00c70733          	add	a4,a4,a2
    8000381c:	00e7b023          	sd	a4,0(a5)
    blk->next=nullptr;
    80003820:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    80003824:	fe053823          	sd	zero,-16(a0)
    if(!freeMemHead){
    80003828:	0107b603          	ld	a2,16(a5)
    8000382c:	08060463          	beqz	a2,800038b4 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
{
    80003830:	ff010113          	addi	sp,sp,-16
    80003834:	00113423          	sd	ra,8(sp)
    80003838:	00813023          	sd	s0,0(sp)
    8000383c:	01010413          	addi	s0,sp,16
    if((char*) blk < (char*) freeMemHead){
    80003840:	0cc6e263          	bltu	a3,a2,80003904 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    80003844:	00060793          	mv	a5,a2
    80003848:	00078713          	mv	a4,a5
    8000384c:	0107b783          	ld	a5,16(a5)
    80003850:	00078463          	beqz	a5,80003858 <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80003854:	fed7eae3          	bltu	a5,a3,80003848 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    80003858:	0a070863          	beqz	a4,80003908 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    8000385c:	00073803          	ld	a6,0(a4)
    80003860:	01880593          	addi	a1,a6,24
    80003864:	00b705b3          	add	a1,a4,a1
    80003868:	0ab69063          	bne	a3,a1,80003908 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
        curr->size+=sizeof(FreeBlock)+blk->size;
    8000386c:	fe853683          	ld	a3,-24(a0)
    80003870:	00d806b3          	add	a3,a6,a3
    80003874:	01868693          	addi	a3,a3,24
    80003878:	00d73023          	sd	a3,0(a4)
        totalFreeMem+=sizeof(FreeBlock);
    8000387c:	0000a617          	auipc	a2,0xa
    80003880:	afc60613          	addi	a2,a2,-1284 # 8000d378 <_ZN15MemoryAllocator12totalFreeMemE>
    80003884:	00063683          	ld	a3,0(a2)
    80003888:	01868693          	addi	a3,a3,24
    8000388c:	00d63023          	sd	a3,0(a2)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80003890:	00078a63          	beqz	a5,800038a4 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80003894:	00073603          	ld	a2,0(a4)
    80003898:	01860693          	addi	a3,a2,24
    8000389c:	00d706b3          	add	a3,a4,a3
    800038a0:	02d78663          	beq	a5,a3,800038cc <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        findNewLargest();
    800038a4:	00000097          	auipc	ra,0x0
    800038a8:	d8c080e7          	jalr	-628(ra) # 80003630 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    800038ac:	00000513          	li	a0,0
    800038b0:	09c0006f          	j	8000394c <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        freeMemHead=blk;
    800038b4:	00d7b823          	sd	a3,16(a5)
        totalFreeMem=blk->size;
    800038b8:	fe853703          	ld	a4,-24(a0)
    800038bc:	00e7b023          	sd	a4,0(a5)
        largestFreeBlock=totalFreeMem;
    800038c0:	00e7b423          	sd	a4,8(a5)
        return 0;
    800038c4:	00000513          	li	a0,0
    800038c8:	00008067          	ret
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    800038cc:	0007b683          	ld	a3,0(a5)
    800038d0:	00d606b3          	add	a3,a2,a3
    800038d4:	01868693          	addi	a3,a3,24
    800038d8:	00d73023          	sd	a3,0(a4)
            totalFreeMem+=sizeof(FreeBlock);
    800038dc:	0000a617          	auipc	a2,0xa
    800038e0:	a9c60613          	addi	a2,a2,-1380 # 8000d378 <_ZN15MemoryAllocator12totalFreeMemE>
    800038e4:	00063683          	ld	a3,0(a2)
    800038e8:	01868693          	addi	a3,a3,24
    800038ec:	00d63023          	sd	a3,0(a2)
            curr->next=curr->next->next;
    800038f0:	0107b783          	ld	a5,16(a5)
    800038f4:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    800038f8:	fa0786e3          	beqz	a5,800038a4 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    800038fc:	00e7b423          	sd	a4,8(a5)
    80003900:	fa5ff06f          	j	800038a4 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        curr=nullptr;
    80003904:	00000713          	li	a4,0
    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    80003908:	00070463          	beqz	a4,80003910 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    8000390c:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    80003910:	00060863          	beqz	a2,80003920 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    80003914:	fe853783          	ld	a5,-24(a0)
    80003918:	00f507b3          	add	a5,a0,a5
    8000391c:	04c78063          	beq	a5,a2,8000395c <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    blk->prev=curr;
    80003920:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    80003924:	08070e63          	beqz	a4,800039c0 <_ZN15MemoryAllocator8mem_freeEPv+0x1e0>
    80003928:	01073783          	ld	a5,16(a4)
    8000392c:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    80003930:	00078463          	beqz	a5,80003938 <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    80003934:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    80003938:	08070a63          	beqz	a4,800039cc <_ZN15MemoryAllocator8mem_freeEPv+0x1ec>
    8000393c:	00d73823          	sd	a3,16(a4)
    findNewLargest();
    80003940:	00000097          	auipc	ra,0x0
    80003944:	cf0080e7          	jalr	-784(ra) # 80003630 <_ZN15MemoryAllocator14findNewLargestEv>
    return 0;
    80003948:	00000513          	li	a0,0
}
    8000394c:	00813083          	ld	ra,8(sp)
    80003950:	00013403          	ld	s0,0(sp)
    80003954:	01010113          	addi	sp,sp,16
    80003958:	00008067          	ret
        totalFreeMem+=sizeof(FreeBlock);
    8000395c:	0000a717          	auipc	a4,0xa
    80003960:	a1c70713          	addi	a4,a4,-1508 # 8000d378 <_ZN15MemoryAllocator12totalFreeMemE>
    80003964:	00073783          	ld	a5,0(a4)
    80003968:	01878793          	addi	a5,a5,24
    8000396c:	00f73023          	sd	a5,0(a4)
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    80003970:	00063783          	ld	a5,0(a2)
    80003974:	fe853703          	ld	a4,-24(a0)
    80003978:	00e787b3          	add	a5,a5,a4
    8000397c:	01878793          	addi	a5,a5,24
    80003980:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    80003984:	01063783          	ld	a5,16(a2)
    80003988:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    8000398c:	00078463          	beqz	a5,80003994 <_ZN15MemoryAllocator8mem_freeEPv+0x1b4>
    80003990:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    80003994:	00863783          	ld	a5,8(a2)
    80003998:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    8000399c:	00078c63          	beqz	a5,800039b4 <_ZN15MemoryAllocator8mem_freeEPv+0x1d4>
    800039a0:	00d7b823          	sd	a3,16(a5)
        findNewLargest();
    800039a4:	00000097          	auipc	ra,0x0
    800039a8:	c8c080e7          	jalr	-884(ra) # 80003630 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    800039ac:	00000513          	li	a0,0
    800039b0:	f9dff06f          	j	8000394c <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        else freeMemHead=blk;
    800039b4:	0000a797          	auipc	a5,0xa
    800039b8:	9cd7ba23          	sd	a3,-1580(a5) # 8000d388 <_ZN15MemoryAllocator11freeMemHeadE>
    800039bc:	fe9ff06f          	j	800039a4 <_ZN15MemoryAllocator8mem_freeEPv+0x1c4>
    blk->next=curr?curr->next:freeMemHead;
    800039c0:	0000a797          	auipc	a5,0xa
    800039c4:	9c87b783          	ld	a5,-1592(a5) # 8000d388 <_ZN15MemoryAllocator11freeMemHeadE>
    800039c8:	f65ff06f          	j	8000392c <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    else freeMemHead=blk;
    800039cc:	0000a797          	auipc	a5,0xa
    800039d0:	9ad7be23          	sd	a3,-1604(a5) # 8000d388 <_ZN15MemoryAllocator11freeMemHeadE>
    800039d4:	f6dff06f          	j	80003940 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    if(!addr) return -1;
    800039d8:	fff00513          	li	a0,-1
    800039dc:	00008067          	ret
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800039e0:	ffe00513          	li	a0,-2
    800039e4:	00008067          	ret
    800039e8:	ffe00513          	li	a0,-2
}
    800039ec:	00008067          	ret

00000000800039f0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800039f0:	fe010113          	addi	sp,sp,-32
    800039f4:	00113c23          	sd	ra,24(sp)
    800039f8:	00813823          	sd	s0,16(sp)
    800039fc:	00913423          	sd	s1,8(sp)
    80003a00:	01213023          	sd	s2,0(sp)
    80003a04:	02010413          	addi	s0,sp,32
    80003a08:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003a0c:	00000913          	li	s2,0
    80003a10:	00c0006f          	j	80003a1c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	9d0080e7          	jalr	-1584(ra) # 800013e4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	bec080e7          	jalr	-1044(ra) # 80001608 <_Z4getcv>
    80003a24:	0005059b          	sext.w	a1,a0
    80003a28:	01b00793          	li	a5,27
    80003a2c:	02f58a63          	beq	a1,a5,80003a60 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003a30:	0084b503          	ld	a0,8(s1)
    80003a34:	00004097          	auipc	ra,0x4
    80003a38:	d98080e7          	jalr	-616(ra) # 800077cc <_ZN6Buffer3putEi>
        i++;
    80003a3c:	0019071b          	addiw	a4,s2,1
    80003a40:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003a44:	0004a683          	lw	a3,0(s1)
    80003a48:	0026979b          	slliw	a5,a3,0x2
    80003a4c:	00d787bb          	addw	a5,a5,a3
    80003a50:	0017979b          	slliw	a5,a5,0x1
    80003a54:	02f767bb          	remw	a5,a4,a5
    80003a58:	fc0792e3          	bnez	a5,80003a1c <_ZL16producerKeyboardPv+0x2c>
    80003a5c:	fb9ff06f          	j	80003a14 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003a60:	00100793          	li	a5,1
    80003a64:	0000a717          	auipc	a4,0xa
    80003a68:	92f72623          	sw	a5,-1748(a4) # 8000d390 <_ZL9threadEnd>
    data->buffer->put('!');
    80003a6c:	02100593          	li	a1,33
    80003a70:	0084b503          	ld	a0,8(s1)
    80003a74:	00004097          	auipc	ra,0x4
    80003a78:	d58080e7          	jalr	-680(ra) # 800077cc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003a7c:	0104b503          	ld	a0,16(s1)
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	b18080e7          	jalr	-1256(ra) # 80001598 <_Z10sem_signalP4_sem>
}
    80003a88:	01813083          	ld	ra,24(sp)
    80003a8c:	01013403          	ld	s0,16(sp)
    80003a90:	00813483          	ld	s1,8(sp)
    80003a94:	00013903          	ld	s2,0(sp)
    80003a98:	02010113          	addi	sp,sp,32
    80003a9c:	00008067          	ret

0000000080003aa0 <_ZL8producerPv>:

static void producer(void *arg) {
    80003aa0:	fe010113          	addi	sp,sp,-32
    80003aa4:	00113c23          	sd	ra,24(sp)
    80003aa8:	00813823          	sd	s0,16(sp)
    80003aac:	00913423          	sd	s1,8(sp)
    80003ab0:	01213023          	sd	s2,0(sp)
    80003ab4:	02010413          	addi	s0,sp,32
    80003ab8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003abc:	00000913          	li	s2,0
    80003ac0:	00c0006f          	j	80003acc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	920080e7          	jalr	-1760(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003acc:	0000a797          	auipc	a5,0xa
    80003ad0:	8c47a783          	lw	a5,-1852(a5) # 8000d390 <_ZL9threadEnd>
    80003ad4:	02079e63          	bnez	a5,80003b10 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003ad8:	0004a583          	lw	a1,0(s1)
    80003adc:	0305859b          	addiw	a1,a1,48
    80003ae0:	0084b503          	ld	a0,8(s1)
    80003ae4:	00004097          	auipc	ra,0x4
    80003ae8:	ce8080e7          	jalr	-792(ra) # 800077cc <_ZN6Buffer3putEi>
        i++;
    80003aec:	0019071b          	addiw	a4,s2,1
    80003af0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003af4:	0004a683          	lw	a3,0(s1)
    80003af8:	0026979b          	slliw	a5,a3,0x2
    80003afc:	00d787bb          	addw	a5,a5,a3
    80003b00:	0017979b          	slliw	a5,a5,0x1
    80003b04:	02f767bb          	remw	a5,a4,a5
    80003b08:	fc0792e3          	bnez	a5,80003acc <_ZL8producerPv+0x2c>
    80003b0c:	fb9ff06f          	j	80003ac4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003b10:	0104b503          	ld	a0,16(s1)
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	a84080e7          	jalr	-1404(ra) # 80001598 <_Z10sem_signalP4_sem>
}
    80003b1c:	01813083          	ld	ra,24(sp)
    80003b20:	01013403          	ld	s0,16(sp)
    80003b24:	00813483          	ld	s1,8(sp)
    80003b28:	00013903          	ld	s2,0(sp)
    80003b2c:	02010113          	addi	sp,sp,32
    80003b30:	00008067          	ret

0000000080003b34 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003b34:	fd010113          	addi	sp,sp,-48
    80003b38:	02113423          	sd	ra,40(sp)
    80003b3c:	02813023          	sd	s0,32(sp)
    80003b40:	00913c23          	sd	s1,24(sp)
    80003b44:	01213823          	sd	s2,16(sp)
    80003b48:	01313423          	sd	s3,8(sp)
    80003b4c:	03010413          	addi	s0,sp,48
    80003b50:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003b54:	00000993          	li	s3,0
    80003b58:	01c0006f          	j	80003b74 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003b5c:	ffffe097          	auipc	ra,0xffffe
    80003b60:	888080e7          	jalr	-1912(ra) # 800013e4 <_Z15thread_dispatchv>
    80003b64:	0500006f          	j	80003bb4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003b68:	00a00513          	li	a0,10
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	ad0080e7          	jalr	-1328(ra) # 8000163c <_Z4putcc>
    while (!threadEnd) {
    80003b74:	0000a797          	auipc	a5,0xa
    80003b78:	81c7a783          	lw	a5,-2020(a5) # 8000d390 <_ZL9threadEnd>
    80003b7c:	06079063          	bnez	a5,80003bdc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003b80:	00893503          	ld	a0,8(s2)
    80003b84:	00004097          	auipc	ra,0x4
    80003b88:	cd8080e7          	jalr	-808(ra) # 8000785c <_ZN6Buffer3getEv>
        i++;
    80003b8c:	0019849b          	addiw	s1,s3,1
    80003b90:	0004899b          	sext.w	s3,s1
        putc(key);
    80003b94:	0ff57513          	andi	a0,a0,255
    80003b98:	ffffe097          	auipc	ra,0xffffe
    80003b9c:	aa4080e7          	jalr	-1372(ra) # 8000163c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003ba0:	00092703          	lw	a4,0(s2)
    80003ba4:	0027179b          	slliw	a5,a4,0x2
    80003ba8:	00e787bb          	addw	a5,a5,a4
    80003bac:	02f4e7bb          	remw	a5,s1,a5
    80003bb0:	fa0786e3          	beqz	a5,80003b5c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003bb4:	05000793          	li	a5,80
    80003bb8:	02f4e4bb          	remw	s1,s1,a5
    80003bbc:	fa049ce3          	bnez	s1,80003b74 <_ZL8consumerPv+0x40>
    80003bc0:	fa9ff06f          	j	80003b68 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003bc4:	00893503          	ld	a0,8(s2)
    80003bc8:	00004097          	auipc	ra,0x4
    80003bcc:	c94080e7          	jalr	-876(ra) # 8000785c <_ZN6Buffer3getEv>
        putc(key);
    80003bd0:	0ff57513          	andi	a0,a0,255
    80003bd4:	ffffe097          	auipc	ra,0xffffe
    80003bd8:	a68080e7          	jalr	-1432(ra) # 8000163c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003bdc:	00893503          	ld	a0,8(s2)
    80003be0:	00004097          	auipc	ra,0x4
    80003be4:	d08080e7          	jalr	-760(ra) # 800078e8 <_ZN6Buffer6getCntEv>
    80003be8:	fca04ee3          	bgtz	a0,80003bc4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003bec:	01093503          	ld	a0,16(s2)
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	9a8080e7          	jalr	-1624(ra) # 80001598 <_Z10sem_signalP4_sem>
}
    80003bf8:	02813083          	ld	ra,40(sp)
    80003bfc:	02013403          	ld	s0,32(sp)
    80003c00:	01813483          	ld	s1,24(sp)
    80003c04:	01013903          	ld	s2,16(sp)
    80003c08:	00813983          	ld	s3,8(sp)
    80003c0c:	03010113          	addi	sp,sp,48
    80003c10:	00008067          	ret

0000000080003c14 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003c14:	f9010113          	addi	sp,sp,-112
    80003c18:	06113423          	sd	ra,104(sp)
    80003c1c:	06813023          	sd	s0,96(sp)
    80003c20:	04913c23          	sd	s1,88(sp)
    80003c24:	05213823          	sd	s2,80(sp)
    80003c28:	05313423          	sd	s3,72(sp)
    80003c2c:	05413023          	sd	s4,64(sp)
    80003c30:	03513c23          	sd	s5,56(sp)
    80003c34:	03613823          	sd	s6,48(sp)
    80003c38:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003c3c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003c40:	00006517          	auipc	a0,0x6
    80003c44:	5d050513          	addi	a0,a0,1488 # 8000a210 <CONSOLE_STATUS+0x200>
    80003c48:	00002097          	auipc	ra,0x2
    80003c4c:	53c080e7          	jalr	1340(ra) # 80006184 <_Z11printStringPKc>
    getString(input, 30);
    80003c50:	01e00593          	li	a1,30
    80003c54:	fa040493          	addi	s1,s0,-96
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	00002097          	auipc	ra,0x2
    80003c60:	5b0080e7          	jalr	1456(ra) # 8000620c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003c64:	00048513          	mv	a0,s1
    80003c68:	00002097          	auipc	ra,0x2
    80003c6c:	67c080e7          	jalr	1660(ra) # 800062e4 <_Z11stringToIntPKc>
    80003c70:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003c74:	00006517          	auipc	a0,0x6
    80003c78:	5bc50513          	addi	a0,a0,1468 # 8000a230 <CONSOLE_STATUS+0x220>
    80003c7c:	00002097          	auipc	ra,0x2
    80003c80:	508080e7          	jalr	1288(ra) # 80006184 <_Z11printStringPKc>
    getString(input, 30);
    80003c84:	01e00593          	li	a1,30
    80003c88:	00048513          	mv	a0,s1
    80003c8c:	00002097          	auipc	ra,0x2
    80003c90:	580080e7          	jalr	1408(ra) # 8000620c <_Z9getStringPci>
    n = stringToInt(input);
    80003c94:	00048513          	mv	a0,s1
    80003c98:	00002097          	auipc	ra,0x2
    80003c9c:	64c080e7          	jalr	1612(ra) # 800062e4 <_Z11stringToIntPKc>
    80003ca0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003ca4:	00006517          	auipc	a0,0x6
    80003ca8:	5ac50513          	addi	a0,a0,1452 # 8000a250 <CONSOLE_STATUS+0x240>
    80003cac:	00002097          	auipc	ra,0x2
    80003cb0:	4d8080e7          	jalr	1240(ra) # 80006184 <_Z11printStringPKc>
    80003cb4:	00000613          	li	a2,0
    80003cb8:	00a00593          	li	a1,10
    80003cbc:	00090513          	mv	a0,s2
    80003cc0:	00002097          	auipc	ra,0x2
    80003cc4:	674080e7          	jalr	1652(ra) # 80006334 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003cc8:	00006517          	auipc	a0,0x6
    80003ccc:	5a050513          	addi	a0,a0,1440 # 8000a268 <CONSOLE_STATUS+0x258>
    80003cd0:	00002097          	auipc	ra,0x2
    80003cd4:	4b4080e7          	jalr	1204(ra) # 80006184 <_Z11printStringPKc>
    80003cd8:	00000613          	li	a2,0
    80003cdc:	00a00593          	li	a1,10
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	00002097          	auipc	ra,0x2
    80003ce8:	650080e7          	jalr	1616(ra) # 80006334 <_Z8printIntiii>
    printString(".\n");
    80003cec:	00006517          	auipc	a0,0x6
    80003cf0:	59450513          	addi	a0,a0,1428 # 8000a280 <CONSOLE_STATUS+0x270>
    80003cf4:	00002097          	auipc	ra,0x2
    80003cf8:	490080e7          	jalr	1168(ra) # 80006184 <_Z11printStringPKc>
    if(threadNum > n) {
    80003cfc:	0324c463          	blt	s1,s2,80003d24 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003d00:	03205c63          	blez	s2,80003d38 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003d04:	03800513          	li	a0,56
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	9d0080e7          	jalr	-1584(ra) # 800026d8 <_Znwm>
    80003d10:	00050a13          	mv	s4,a0
    80003d14:	00048593          	mv	a1,s1
    80003d18:	00004097          	auipc	ra,0x4
    80003d1c:	a18080e7          	jalr	-1512(ra) # 80007730 <_ZN6BufferC1Ei>
    80003d20:	0300006f          	j	80003d50 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003d24:	00006517          	auipc	a0,0x6
    80003d28:	56450513          	addi	a0,a0,1380 # 8000a288 <CONSOLE_STATUS+0x278>
    80003d2c:	00002097          	auipc	ra,0x2
    80003d30:	458080e7          	jalr	1112(ra) # 80006184 <_Z11printStringPKc>
        return;
    80003d34:	0140006f          	j	80003d48 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003d38:	00006517          	auipc	a0,0x6
    80003d3c:	59050513          	addi	a0,a0,1424 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80003d40:	00002097          	auipc	ra,0x2
    80003d44:	444080e7          	jalr	1092(ra) # 80006184 <_Z11printStringPKc>
        return;
    80003d48:	000b0113          	mv	sp,s6
    80003d4c:	1500006f          	j	80003e9c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003d50:	00000593          	li	a1,0
    80003d54:	00009517          	auipc	a0,0x9
    80003d58:	64450513          	addi	a0,a0,1604 # 8000d398 <_ZL10waitForAll>
    80003d5c:	ffffd097          	auipc	ra,0xffffd
    80003d60:	790080e7          	jalr	1936(ra) # 800014ec <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003d64:	00391793          	slli	a5,s2,0x3
    80003d68:	00f78793          	addi	a5,a5,15
    80003d6c:	ff07f793          	andi	a5,a5,-16
    80003d70:	40f10133          	sub	sp,sp,a5
    80003d74:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003d78:	0019071b          	addiw	a4,s2,1
    80003d7c:	00171793          	slli	a5,a4,0x1
    80003d80:	00e787b3          	add	a5,a5,a4
    80003d84:	00379793          	slli	a5,a5,0x3
    80003d88:	00f78793          	addi	a5,a5,15
    80003d8c:	ff07f793          	andi	a5,a5,-16
    80003d90:	40f10133          	sub	sp,sp,a5
    80003d94:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003d98:	00191613          	slli	a2,s2,0x1
    80003d9c:	012607b3          	add	a5,a2,s2
    80003da0:	00379793          	slli	a5,a5,0x3
    80003da4:	00f987b3          	add	a5,s3,a5
    80003da8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003dac:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003db0:	00009717          	auipc	a4,0x9
    80003db4:	5e873703          	ld	a4,1512(a4) # 8000d398 <_ZL10waitForAll>
    80003db8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003dbc:	00078613          	mv	a2,a5
    80003dc0:	00000597          	auipc	a1,0x0
    80003dc4:	d7458593          	addi	a1,a1,-652 # 80003b34 <_ZL8consumerPv>
    80003dc8:	f9840513          	addi	a0,s0,-104
    80003dcc:	ffffd097          	auipc	ra,0xffffd
    80003dd0:	55c080e7          	jalr	1372(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003dd4:	00000493          	li	s1,0
    80003dd8:	0280006f          	j	80003e00 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003ddc:	00000597          	auipc	a1,0x0
    80003de0:	c1458593          	addi	a1,a1,-1004 # 800039f0 <_ZL16producerKeyboardPv>
                      data + i);
    80003de4:	00179613          	slli	a2,a5,0x1
    80003de8:	00f60633          	add	a2,a2,a5
    80003dec:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003df0:	00c98633          	add	a2,s3,a2
    80003df4:	ffffd097          	auipc	ra,0xffffd
    80003df8:	534080e7          	jalr	1332(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003dfc:	0014849b          	addiw	s1,s1,1
    80003e00:	0524d263          	bge	s1,s2,80003e44 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003e04:	00149793          	slli	a5,s1,0x1
    80003e08:	009787b3          	add	a5,a5,s1
    80003e0c:	00379793          	slli	a5,a5,0x3
    80003e10:	00f987b3          	add	a5,s3,a5
    80003e14:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003e18:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003e1c:	00009717          	auipc	a4,0x9
    80003e20:	57c73703          	ld	a4,1404(a4) # 8000d398 <_ZL10waitForAll>
    80003e24:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003e28:	00048793          	mv	a5,s1
    80003e2c:	00349513          	slli	a0,s1,0x3
    80003e30:	00aa8533          	add	a0,s5,a0
    80003e34:	fa9054e3          	blez	s1,80003ddc <_Z22producerConsumer_C_APIv+0x1c8>
    80003e38:	00000597          	auipc	a1,0x0
    80003e3c:	c6858593          	addi	a1,a1,-920 # 80003aa0 <_ZL8producerPv>
    80003e40:	fa5ff06f          	j	80003de4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003e44:	ffffd097          	auipc	ra,0xffffd
    80003e48:	5a0080e7          	jalr	1440(ra) # 800013e4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003e4c:	00000493          	li	s1,0
    80003e50:	00994e63          	blt	s2,s1,80003e6c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003e54:	00009517          	auipc	a0,0x9
    80003e58:	54453503          	ld	a0,1348(a0) # 8000d398 <_ZL10waitForAll>
    80003e5c:	ffffd097          	auipc	ra,0xffffd
    80003e60:	704080e7          	jalr	1796(ra) # 80001560 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003e64:	0014849b          	addiw	s1,s1,1
    80003e68:	fe9ff06f          	j	80003e50 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003e6c:	00009517          	auipc	a0,0x9
    80003e70:	52c53503          	ld	a0,1324(a0) # 8000d398 <_ZL10waitForAll>
    80003e74:	ffffd097          	auipc	ra,0xffffd
    80003e78:	6b4080e7          	jalr	1716(ra) # 80001528 <_Z9sem_closeP4_sem>
    delete buffer;
    80003e7c:	000a0e63          	beqz	s4,80003e98 <_Z22producerConsumer_C_APIv+0x284>
    80003e80:	000a0513          	mv	a0,s4
    80003e84:	00004097          	auipc	ra,0x4
    80003e88:	aec080e7          	jalr	-1300(ra) # 80007970 <_ZN6BufferD1Ev>
    80003e8c:	000a0513          	mv	a0,s4
    80003e90:	fffff097          	auipc	ra,0xfffff
    80003e94:	898080e7          	jalr	-1896(ra) # 80002728 <_ZdlPv>
    80003e98:	000b0113          	mv	sp,s6

}
    80003e9c:	f9040113          	addi	sp,s0,-112
    80003ea0:	06813083          	ld	ra,104(sp)
    80003ea4:	06013403          	ld	s0,96(sp)
    80003ea8:	05813483          	ld	s1,88(sp)
    80003eac:	05013903          	ld	s2,80(sp)
    80003eb0:	04813983          	ld	s3,72(sp)
    80003eb4:	04013a03          	ld	s4,64(sp)
    80003eb8:	03813a83          	ld	s5,56(sp)
    80003ebc:	03013b03          	ld	s6,48(sp)
    80003ec0:	07010113          	addi	sp,sp,112
    80003ec4:	00008067          	ret
    80003ec8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003ecc:	000a0513          	mv	a0,s4
    80003ed0:	fffff097          	auipc	ra,0xfffff
    80003ed4:	858080e7          	jalr	-1960(ra) # 80002728 <_ZdlPv>
    80003ed8:	00048513          	mv	a0,s1
    80003edc:	0000a097          	auipc	ra,0xa
    80003ee0:	5cc080e7          	jalr	1484(ra) # 8000e4a8 <_Unwind_Resume>

0000000080003ee4 <_Z15modif_MatrixMaxv>:
        matrix->max = matrix->max > max ? matrix->max : max;
        sem->signal();
    }
};

void modif_MatrixMax(){
    80003ee4:	f7010113          	addi	sp,sp,-144
    80003ee8:	08113423          	sd	ra,136(sp)
    80003eec:	08813023          	sd	s0,128(sp)
    80003ef0:	06913c23          	sd	s1,120(sp)
    80003ef4:	07213823          	sd	s2,112(sp)
    80003ef8:	07313423          	sd	s3,104(sp)
    80003efc:	07413023          	sd	s4,96(sp)
    80003f00:	05513c23          	sd	s5,88(sp)
    80003f04:	09010413          	addi	s0,sp,144

    Semaphore* waitForAll = new Semaphore(0);
    80003f08:	01000513          	li	a0,16
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	7cc080e7          	jalr	1996(ra) # 800026d8 <_Znwm>
    80003f14:	00050a13          	mv	s4,a0
    80003f18:	00000593          	li	a1,0
    80003f1c:	fffff097          	auipc	ra,0xfffff
    80003f20:	a9c080e7          	jalr	-1380(ra) # 800029b8 <_ZN9SemaphoreC1Ej>

    Thread* threads[10];

    matrixField* base = new matrixField;
    80003f24:	01000513          	li	a0,16
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	7b0080e7          	jalr	1968(ra) # 800026d8 <_Znwm>
    80003f30:	00050913          	mv	s2,a0
    base->max=0;
    80003f34:	00052423          	sw	zero,8(a0)
    base->matrix = new int*[10];
    80003f38:	05000513          	li	a0,80
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	7c4080e7          	jalr	1988(ra) # 80002700 <_Znam>
    80003f44:	00a93023          	sd	a0,0(s2)
    for(int i =0 ; i < 10 ; i++){
    80003f48:	00000493          	li	s1,0
    80003f4c:	0080006f          	j	80003f54 <_Z15modif_MatrixMaxv+0x70>
    80003f50:	0014849b          	addiw	s1,s1,1
    80003f54:	00900793          	li	a5,9
    80003f58:	0497c863          	blt	a5,s1,80003fa8 <_Z15modif_MatrixMaxv+0xc4>
        base->matrix[i] = new int[10];
    80003f5c:	00093a83          	ld	s5,0(s2)
    80003f60:	00349993          	slli	s3,s1,0x3
    80003f64:	013a8ab3          	add	s5,s5,s3
    80003f68:	02800513          	li	a0,40
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	794080e7          	jalr	1940(ra) # 80002700 <_Znam>
    80003f74:	00aab023          	sd	a0,0(s5)
        for(int j = 0 ; j < 10 ; j++)
    80003f78:	00000793          	li	a5,0
    80003f7c:	00900713          	li	a4,9
    80003f80:	fcf748e3          	blt	a4,a5,80003f50 <_Z15modif_MatrixMaxv+0x6c>
        {
            base->matrix[i][j] = i+j;
    80003f84:	00093703          	ld	a4,0(s2)
    80003f88:	01370733          	add	a4,a4,s3
    80003f8c:	00073703          	ld	a4,0(a4)
    80003f90:	00279693          	slli	a3,a5,0x2
    80003f94:	00d70733          	add	a4,a4,a3
    80003f98:	00f486bb          	addw	a3,s1,a5
    80003f9c:	00d72023          	sw	a3,0(a4)
        for(int j = 0 ; j < 10 ; j++)
    80003fa0:	0017879b          	addiw	a5,a5,1
    80003fa4:	fd9ff06f          	j	80003f7c <_Z15modif_MatrixMaxv+0x98>
        }
    }
    base->matrix[3][4] = 11;
    80003fa8:	00093783          	ld	a5,0(s2)
    80003fac:	0187b783          	ld	a5,24(a5)
    80003fb0:	00b00713          	li	a4,11
    80003fb4:	00e7a823          	sw	a4,16(a5)

    for(int i =0; i < 10 ;i++){
    80003fb8:	00000993          	li	s3,0
    80003fbc:	0300006f          	j	80003fec <_Z15modif_MatrixMaxv+0x108>
    rowAdder(matrixField* matrix,Semaphore* sem, int row) : Thread(), matrix(matrix), sem(sem), rowVal(row) {};
    80003fc0:	00009797          	auipc	a5,0x9
    80003fc4:	f9878793          	addi	a5,a5,-104 # 8000cf58 <_ZTV8rowAdder+0x10>
    80003fc8:	00f4b023          	sd	a5,0(s1)
    80003fcc:	0324b023          	sd	s2,32(s1)
    80003fd0:	0344b423          	sd	s4,40(s1)
    80003fd4:	0334a823          	sw	s3,48(s1)
        threads[i] = new rowAdder(base,waitForAll,i);
    80003fd8:	00399793          	slli	a5,s3,0x3
    80003fdc:	fc040713          	addi	a4,s0,-64
    80003fe0:	00f707b3          	add	a5,a4,a5
    80003fe4:	fa97b823          	sd	s1,-80(a5)
    for(int i =0; i < 10 ;i++){
    80003fe8:	0019899b          	addiw	s3,s3,1
    80003fec:	00900793          	li	a5,9
    80003ff0:	0337c063          	blt	a5,s3,80004010 <_Z15modif_MatrixMaxv+0x12c>
        threads[i] = new rowAdder(base,waitForAll,i);
    80003ff4:	03800513          	li	a0,56
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	6e0080e7          	jalr	1760(ra) # 800026d8 <_Znwm>
    80004000:	00050493          	mv	s1,a0
    rowAdder(matrixField* matrix,Semaphore* sem, int row) : Thread(), matrix(matrix), sem(sem), rowVal(row) {};
    80004004:	fffff097          	auipc	ra,0xfffff
    80004008:	80c080e7          	jalr	-2036(ra) # 80002810 <_ZN6ThreadC1Ev>
    8000400c:	fb5ff06f          	j	80003fc0 <_Z15modif_MatrixMaxv+0xdc>
    }
    for(auto &thread : threads) thread->start();
    80004010:	f7040493          	addi	s1,s0,-144
    80004014:	fc040793          	addi	a5,s0,-64
    80004018:	00f48c63          	beq	s1,a5,80004030 <_Z15modif_MatrixMaxv+0x14c>
    8000401c:	0004b503          	ld	a0,0(s1)
    80004020:	fffff097          	auipc	ra,0xfffff
    80004024:	850080e7          	jalr	-1968(ra) # 80002870 <_ZN6Thread5startEv>
    80004028:	00848493          	addi	s1,s1,8
    8000402c:	fe9ff06f          	j	80004014 <_Z15modif_MatrixMaxv+0x130>

    Thread::dispatch();
    80004030:	fffff097          	auipc	ra,0xfffff
    80004034:	818080e7          	jalr	-2024(ra) # 80002848 <_ZN6Thread8dispatchEv>
    for(int i = 0 ; i < 10; i++){
    80004038:	00000493          	li	s1,0
    8000403c:	00900793          	li	a5,9
    80004040:	0097cc63          	blt	a5,s1,80004058 <_Z15modif_MatrixMaxv+0x174>
        waitForAll->wait();
    80004044:	000a0513          	mv	a0,s4
    80004048:	fffff097          	auipc	ra,0xfffff
    8000404c:	9ac080e7          	jalr	-1620(ra) # 800029f4 <_ZN9Semaphore4waitEv>
    for(int i = 0 ; i < 10; i++){
    80004050:	0014849b          	addiw	s1,s1,1
    80004054:	fe9ff06f          	j	8000403c <_Z15modif_MatrixMaxv+0x158>
    }
    delete waitForAll;
    80004058:	000a0a63          	beqz	s4,8000406c <_Z15modif_MatrixMaxv+0x188>
    8000405c:	000a3783          	ld	a5,0(s4)
    80004060:	0087b783          	ld	a5,8(a5)
    80004064:	000a0513          	mv	a0,s4
    80004068:	000780e7          	jalr	a5

    printString("Gotovo! Max je: ");
    8000406c:	00006517          	auipc	a0,0x6
    80004070:	28c50513          	addi	a0,a0,652 # 8000a2f8 <CONSOLE_STATUS+0x2e8>
    80004074:	00002097          	auipc	ra,0x2
    80004078:	110080e7          	jalr	272(ra) # 80006184 <_Z11printStringPKc>
    printInt(base->max);
    8000407c:	00000613          	li	a2,0
    80004080:	00a00593          	li	a1,10
    80004084:	00892503          	lw	a0,8(s2)
    80004088:	00002097          	auipc	ra,0x2
    8000408c:	2ac080e7          	jalr	684(ra) # 80006334 <_Z8printIntiii>
    printString("\n");
    80004090:	00006517          	auipc	a0,0x6
    80004094:	6f050513          	addi	a0,a0,1776 # 8000a780 <CONSOLE_STATUS+0x770>
    80004098:	00002097          	auipc	ra,0x2
    8000409c:	0ec080e7          	jalr	236(ra) # 80006184 <_Z11printStringPKc>

    800040a0:	08813083          	ld	ra,136(sp)
    800040a4:	08013403          	ld	s0,128(sp)
    800040a8:	07813483          	ld	s1,120(sp)
    800040ac:	07013903          	ld	s2,112(sp)
    800040b0:	06813983          	ld	s3,104(sp)
    800040b4:	06013a03          	ld	s4,96(sp)
    800040b8:	05813a83          	ld	s5,88(sp)
    800040bc:	09010113          	addi	sp,sp,144
    800040c0:	00008067          	ret
    800040c4:	00050493          	mv	s1,a0
    Semaphore* waitForAll = new Semaphore(0);
    800040c8:	000a0513          	mv	a0,s4
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	65c080e7          	jalr	1628(ra) # 80002728 <_ZdlPv>
    800040d4:	00048513          	mv	a0,s1
    800040d8:	0000a097          	auipc	ra,0xa
    800040dc:	3d0080e7          	jalr	976(ra) # 8000e4a8 <_Unwind_Resume>
    800040e0:	00050913          	mv	s2,a0
        threads[i] = new rowAdder(base,waitForAll,i);
    800040e4:	00048513          	mv	a0,s1
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	640080e7          	jalr	1600(ra) # 80002728 <_ZdlPv>
    800040f0:	00090513          	mv	a0,s2
    800040f4:	0000a097          	auipc	ra,0xa
    800040f8:	3b4080e7          	jalr	948(ra) # 8000e4a8 <_Unwind_Resume>

00000000800040fc <_ZN8rowAdder3runEv>:
    void run() override {
    800040fc:	ff010113          	addi	sp,sp,-16
    80004100:	00113423          	sd	ra,8(sp)
    80004104:	00813023          	sd	s0,0(sp)
    80004108:	01010413          	addi	s0,sp,16
        int max=matrix->matrix[rowVal][0];
    8000410c:	02053583          	ld	a1,32(a0)
    80004110:	0005b783          	ld	a5,0(a1)
    80004114:	03052703          	lw	a4,48(a0)
    80004118:	00371713          	slli	a4,a4,0x3
    8000411c:	00e787b3          	add	a5,a5,a4
    80004120:	0007b603          	ld	a2,0(a5)
    80004124:	00062683          	lw	a3,0(a2)
        for(int i=1;i<10;i++){
    80004128:	00100793          	li	a5,1
    8000412c:	0080006f          	j	80004134 <_ZN8rowAdder3runEv+0x38>
    80004130:	0017879b          	addiw	a5,a5,1
    80004134:	00900713          	li	a4,9
    80004138:	00f74e63          	blt	a4,a5,80004154 <_ZN8rowAdder3runEv+0x58>
            max = matrix->matrix[rowVal][i]>max?matrix->matrix[rowVal][i]:max;
    8000413c:	00279713          	slli	a4,a5,0x2
    80004140:	00e60733          	add	a4,a2,a4
    80004144:	00072703          	lw	a4,0(a4)
    80004148:	fee6d4e3          	bge	a3,a4,80004130 <_ZN8rowAdder3runEv+0x34>
    8000414c:	00070693          	mv	a3,a4
    80004150:	fe1ff06f          	j	80004130 <_ZN8rowAdder3runEv+0x34>
        matrix->max = matrix->max > max ? matrix->max : max;
    80004154:	0085a783          	lw	a5,8(a1)
    80004158:	00f6c463          	blt	a3,a5,80004160 <_ZN8rowAdder3runEv+0x64>
    8000415c:	00068793          	mv	a5,a3
    80004160:	00f5a423          	sw	a5,8(a1)
        sem->signal();
    80004164:	02853503          	ld	a0,40(a0)
    80004168:	fffff097          	auipc	ra,0xfffff
    8000416c:	8b8080e7          	jalr	-1864(ra) # 80002a20 <_ZN9Semaphore6signalEv>
    }
    80004170:	00813083          	ld	ra,8(sp)
    80004174:	00013403          	ld	s0,0(sp)
    80004178:	01010113          	addi	sp,sp,16
    8000417c:	00008067          	ret

0000000080004180 <_ZN8rowAdderD1Ev>:
class rowAdder : public Thread {
    80004180:	ff010113          	addi	sp,sp,-16
    80004184:	00113423          	sd	ra,8(sp)
    80004188:	00813023          	sd	s0,0(sp)
    8000418c:	01010413          	addi	s0,sp,16
    80004190:	00009797          	auipc	a5,0x9
    80004194:	dc878793          	addi	a5,a5,-568 # 8000cf58 <_ZTV8rowAdder+0x10>
    80004198:	00f53023          	sd	a5,0(a0)
    8000419c:	ffffe097          	auipc	ra,0xffffe
    800041a0:	4ec080e7          	jalr	1260(ra) # 80002688 <_ZN6ThreadD1Ev>
    800041a4:	00813083          	ld	ra,8(sp)
    800041a8:	00013403          	ld	s0,0(sp)
    800041ac:	01010113          	addi	sp,sp,16
    800041b0:	00008067          	ret

00000000800041b4 <_ZN8rowAdderD0Ev>:
    800041b4:	fe010113          	addi	sp,sp,-32
    800041b8:	00113c23          	sd	ra,24(sp)
    800041bc:	00813823          	sd	s0,16(sp)
    800041c0:	00913423          	sd	s1,8(sp)
    800041c4:	02010413          	addi	s0,sp,32
    800041c8:	00050493          	mv	s1,a0
    800041cc:	00009797          	auipc	a5,0x9
    800041d0:	d8c78793          	addi	a5,a5,-628 # 8000cf58 <_ZTV8rowAdder+0x10>
    800041d4:	00f53023          	sd	a5,0(a0)
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	4b0080e7          	jalr	1200(ra) # 80002688 <_ZN6ThreadD1Ev>
    800041e0:	00048513          	mv	a0,s1
    800041e4:	ffffe097          	auipc	ra,0xffffe
    800041e8:	544080e7          	jalr	1348(ra) # 80002728 <_ZdlPv>
    800041ec:	01813083          	ld	ra,24(sp)
    800041f0:	01013403          	ld	s0,16(sp)
    800041f4:	00813483          	ld	s1,8(sp)
    800041f8:	02010113          	addi	sp,sp,32
    800041fc:	00008067          	ret

0000000080004200 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004200:	fe010113          	addi	sp,sp,-32
    80004204:	00113c23          	sd	ra,24(sp)
    80004208:	00813823          	sd	s0,16(sp)
    8000420c:	00913423          	sd	s1,8(sp)
    80004210:	01213023          	sd	s2,0(sp)
    80004214:	02010413          	addi	s0,sp,32
    80004218:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000421c:	00100793          	li	a5,1
    80004220:	02a7f863          	bgeu	a5,a0,80004250 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004224:	00a00793          	li	a5,10
    80004228:	02f577b3          	remu	a5,a0,a5
    8000422c:	02078e63          	beqz	a5,80004268 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004230:	fff48513          	addi	a0,s1,-1
    80004234:	00000097          	auipc	ra,0x0
    80004238:	fcc080e7          	jalr	-52(ra) # 80004200 <_ZL9fibonaccim>
    8000423c:	00050913          	mv	s2,a0
    80004240:	ffe48513          	addi	a0,s1,-2
    80004244:	00000097          	auipc	ra,0x0
    80004248:	fbc080e7          	jalr	-68(ra) # 80004200 <_ZL9fibonaccim>
    8000424c:	00a90533          	add	a0,s2,a0
}
    80004250:	01813083          	ld	ra,24(sp)
    80004254:	01013403          	ld	s0,16(sp)
    80004258:	00813483          	ld	s1,8(sp)
    8000425c:	00013903          	ld	s2,0(sp)
    80004260:	02010113          	addi	sp,sp,32
    80004264:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004268:	ffffd097          	auipc	ra,0xffffd
    8000426c:	17c080e7          	jalr	380(ra) # 800013e4 <_Z15thread_dispatchv>
    80004270:	fc1ff06f          	j	80004230 <_ZL9fibonaccim+0x30>

0000000080004274 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80004274:	fe010113          	addi	sp,sp,-32
    80004278:	00113c23          	sd	ra,24(sp)
    8000427c:	00813823          	sd	s0,16(sp)
    80004280:	00913423          	sd	s1,8(sp)
    80004284:	01213023          	sd	s2,0(sp)
    80004288:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000428c:	00000913          	li	s2,0
    80004290:	0380006f          	j	800042c8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004294:	ffffd097          	auipc	ra,0xffffd
    80004298:	150080e7          	jalr	336(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000429c:	00148493          	addi	s1,s1,1
    800042a0:	000027b7          	lui	a5,0x2
    800042a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800042a8:	0097ee63          	bltu	a5,s1,800042c4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800042ac:	00000713          	li	a4,0
    800042b0:	000077b7          	lui	a5,0x7
    800042b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800042b8:	fce7eee3          	bltu	a5,a4,80004294 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800042bc:	00170713          	addi	a4,a4,1
    800042c0:	ff1ff06f          	j	800042b0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800042c4:	00190913          	addi	s2,s2,1
    800042c8:	00900793          	li	a5,9
    800042cc:	0527e063          	bltu	a5,s2,8000430c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800042d0:	00006517          	auipc	a0,0x6
    800042d4:	04050513          	addi	a0,a0,64 # 8000a310 <CONSOLE_STATUS+0x300>
    800042d8:	00002097          	auipc	ra,0x2
    800042dc:	eac080e7          	jalr	-340(ra) # 80006184 <_Z11printStringPKc>
    800042e0:	00000613          	li	a2,0
    800042e4:	00a00593          	li	a1,10
    800042e8:	0009051b          	sext.w	a0,s2
    800042ec:	00002097          	auipc	ra,0x2
    800042f0:	048080e7          	jalr	72(ra) # 80006334 <_Z8printIntiii>
    800042f4:	00006517          	auipc	a0,0x6
    800042f8:	48c50513          	addi	a0,a0,1164 # 8000a780 <CONSOLE_STATUS+0x770>
    800042fc:	00002097          	auipc	ra,0x2
    80004300:	e88080e7          	jalr	-376(ra) # 80006184 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004304:	00000493          	li	s1,0
    80004308:	f99ff06f          	j	800042a0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000430c:	00006517          	auipc	a0,0x6
    80004310:	00c50513          	addi	a0,a0,12 # 8000a318 <CONSOLE_STATUS+0x308>
    80004314:	00002097          	auipc	ra,0x2
    80004318:	e70080e7          	jalr	-400(ra) # 80006184 <_Z11printStringPKc>
    finishedA = true;
    8000431c:	00100793          	li	a5,1
    80004320:	00009717          	auipc	a4,0x9
    80004324:	08f70023          	sb	a5,128(a4) # 8000d3a0 <_ZL9finishedA>
}
    80004328:	01813083          	ld	ra,24(sp)
    8000432c:	01013403          	ld	s0,16(sp)
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	00013903          	ld	s2,0(sp)
    80004338:	02010113          	addi	sp,sp,32
    8000433c:	00008067          	ret

0000000080004340 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80004340:	fe010113          	addi	sp,sp,-32
    80004344:	00113c23          	sd	ra,24(sp)
    80004348:	00813823          	sd	s0,16(sp)
    8000434c:	00913423          	sd	s1,8(sp)
    80004350:	01213023          	sd	s2,0(sp)
    80004354:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004358:	00000913          	li	s2,0
    8000435c:	0380006f          	j	80004394 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004360:	ffffd097          	auipc	ra,0xffffd
    80004364:	084080e7          	jalr	132(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004368:	00148493          	addi	s1,s1,1
    8000436c:	000027b7          	lui	a5,0x2
    80004370:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004374:	0097ee63          	bltu	a5,s1,80004390 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004378:	00000713          	li	a4,0
    8000437c:	000077b7          	lui	a5,0x7
    80004380:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004384:	fce7eee3          	bltu	a5,a4,80004360 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004388:	00170713          	addi	a4,a4,1
    8000438c:	ff1ff06f          	j	8000437c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004390:	00190913          	addi	s2,s2,1
    80004394:	00f00793          	li	a5,15
    80004398:	0527e063          	bltu	a5,s2,800043d8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000439c:	00006517          	auipc	a0,0x6
    800043a0:	f8c50513          	addi	a0,a0,-116 # 8000a328 <CONSOLE_STATUS+0x318>
    800043a4:	00002097          	auipc	ra,0x2
    800043a8:	de0080e7          	jalr	-544(ra) # 80006184 <_Z11printStringPKc>
    800043ac:	00000613          	li	a2,0
    800043b0:	00a00593          	li	a1,10
    800043b4:	0009051b          	sext.w	a0,s2
    800043b8:	00002097          	auipc	ra,0x2
    800043bc:	f7c080e7          	jalr	-132(ra) # 80006334 <_Z8printIntiii>
    800043c0:	00006517          	auipc	a0,0x6
    800043c4:	3c050513          	addi	a0,a0,960 # 8000a780 <CONSOLE_STATUS+0x770>
    800043c8:	00002097          	auipc	ra,0x2
    800043cc:	dbc080e7          	jalr	-580(ra) # 80006184 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800043d0:	00000493          	li	s1,0
    800043d4:	f99ff06f          	j	8000436c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800043d8:	00006517          	auipc	a0,0x6
    800043dc:	f5850513          	addi	a0,a0,-168 # 8000a330 <CONSOLE_STATUS+0x320>
    800043e0:	00002097          	auipc	ra,0x2
    800043e4:	da4080e7          	jalr	-604(ra) # 80006184 <_Z11printStringPKc>
    finishedB = true;
    800043e8:	00100793          	li	a5,1
    800043ec:	00009717          	auipc	a4,0x9
    800043f0:	faf70aa3          	sb	a5,-75(a4) # 8000d3a1 <_ZL9finishedB>
    thread_dispatch();
    800043f4:	ffffd097          	auipc	ra,0xffffd
    800043f8:	ff0080e7          	jalr	-16(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800043fc:	01813083          	ld	ra,24(sp)
    80004400:	01013403          	ld	s0,16(sp)
    80004404:	00813483          	ld	s1,8(sp)
    80004408:	00013903          	ld	s2,0(sp)
    8000440c:	02010113          	addi	sp,sp,32
    80004410:	00008067          	ret

0000000080004414 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004414:	fe010113          	addi	sp,sp,-32
    80004418:	00113c23          	sd	ra,24(sp)
    8000441c:	00813823          	sd	s0,16(sp)
    80004420:	00913423          	sd	s1,8(sp)
    80004424:	01213023          	sd	s2,0(sp)
    80004428:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000442c:	00000493          	li	s1,0
    80004430:	0400006f          	j	80004470 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004434:	00006517          	auipc	a0,0x6
    80004438:	f0c50513          	addi	a0,a0,-244 # 8000a340 <CONSOLE_STATUS+0x330>
    8000443c:	00002097          	auipc	ra,0x2
    80004440:	d48080e7          	jalr	-696(ra) # 80006184 <_Z11printStringPKc>
    80004444:	00000613          	li	a2,0
    80004448:	00a00593          	li	a1,10
    8000444c:	00048513          	mv	a0,s1
    80004450:	00002097          	auipc	ra,0x2
    80004454:	ee4080e7          	jalr	-284(ra) # 80006334 <_Z8printIntiii>
    80004458:	00006517          	auipc	a0,0x6
    8000445c:	32850513          	addi	a0,a0,808 # 8000a780 <CONSOLE_STATUS+0x770>
    80004460:	00002097          	auipc	ra,0x2
    80004464:	d24080e7          	jalr	-732(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004468:	0014849b          	addiw	s1,s1,1
    8000446c:	0ff4f493          	andi	s1,s1,255
    80004470:	00200793          	li	a5,2
    80004474:	fc97f0e3          	bgeu	a5,s1,80004434 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80004478:	00006517          	auipc	a0,0x6
    8000447c:	ed050513          	addi	a0,a0,-304 # 8000a348 <CONSOLE_STATUS+0x338>
    80004480:	00002097          	auipc	ra,0x2
    80004484:	d04080e7          	jalr	-764(ra) # 80006184 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004488:	00700313          	li	t1,7
    thread_dispatch();
    8000448c:	ffffd097          	auipc	ra,0xffffd
    80004490:	f58080e7          	jalr	-168(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004494:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004498:	00006517          	auipc	a0,0x6
    8000449c:	ec050513          	addi	a0,a0,-320 # 8000a358 <CONSOLE_STATUS+0x348>
    800044a0:	00002097          	auipc	ra,0x2
    800044a4:	ce4080e7          	jalr	-796(ra) # 80006184 <_Z11printStringPKc>
    800044a8:	00000613          	li	a2,0
    800044ac:	00a00593          	li	a1,10
    800044b0:	0009051b          	sext.w	a0,s2
    800044b4:	00002097          	auipc	ra,0x2
    800044b8:	e80080e7          	jalr	-384(ra) # 80006334 <_Z8printIntiii>
    800044bc:	00006517          	auipc	a0,0x6
    800044c0:	2c450513          	addi	a0,a0,708 # 8000a780 <CONSOLE_STATUS+0x770>
    800044c4:	00002097          	auipc	ra,0x2
    800044c8:	cc0080e7          	jalr	-832(ra) # 80006184 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800044cc:	00c00513          	li	a0,12
    800044d0:	00000097          	auipc	ra,0x0
    800044d4:	d30080e7          	jalr	-720(ra) # 80004200 <_ZL9fibonaccim>
    800044d8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800044dc:	00006517          	auipc	a0,0x6
    800044e0:	e8450513          	addi	a0,a0,-380 # 8000a360 <CONSOLE_STATUS+0x350>
    800044e4:	00002097          	auipc	ra,0x2
    800044e8:	ca0080e7          	jalr	-864(ra) # 80006184 <_Z11printStringPKc>
    800044ec:	00000613          	li	a2,0
    800044f0:	00a00593          	li	a1,10
    800044f4:	0009051b          	sext.w	a0,s2
    800044f8:	00002097          	auipc	ra,0x2
    800044fc:	e3c080e7          	jalr	-452(ra) # 80006334 <_Z8printIntiii>
    80004500:	00006517          	auipc	a0,0x6
    80004504:	28050513          	addi	a0,a0,640 # 8000a780 <CONSOLE_STATUS+0x770>
    80004508:	00002097          	auipc	ra,0x2
    8000450c:	c7c080e7          	jalr	-900(ra) # 80006184 <_Z11printStringPKc>
    80004510:	0400006f          	j	80004550 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004514:	00006517          	auipc	a0,0x6
    80004518:	e2c50513          	addi	a0,a0,-468 # 8000a340 <CONSOLE_STATUS+0x330>
    8000451c:	00002097          	auipc	ra,0x2
    80004520:	c68080e7          	jalr	-920(ra) # 80006184 <_Z11printStringPKc>
    80004524:	00000613          	li	a2,0
    80004528:	00a00593          	li	a1,10
    8000452c:	00048513          	mv	a0,s1
    80004530:	00002097          	auipc	ra,0x2
    80004534:	e04080e7          	jalr	-508(ra) # 80006334 <_Z8printIntiii>
    80004538:	00006517          	auipc	a0,0x6
    8000453c:	24850513          	addi	a0,a0,584 # 8000a780 <CONSOLE_STATUS+0x770>
    80004540:	00002097          	auipc	ra,0x2
    80004544:	c44080e7          	jalr	-956(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004548:	0014849b          	addiw	s1,s1,1
    8000454c:	0ff4f493          	andi	s1,s1,255
    80004550:	00500793          	li	a5,5
    80004554:	fc97f0e3          	bgeu	a5,s1,80004514 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004558:	00006517          	auipc	a0,0x6
    8000455c:	dc050513          	addi	a0,a0,-576 # 8000a318 <CONSOLE_STATUS+0x308>
    80004560:	00002097          	auipc	ra,0x2
    80004564:	c24080e7          	jalr	-988(ra) # 80006184 <_Z11printStringPKc>
    finishedC = true;
    80004568:	00100793          	li	a5,1
    8000456c:	00009717          	auipc	a4,0x9
    80004570:	e2f70b23          	sb	a5,-458(a4) # 8000d3a2 <_ZL9finishedC>
    thread_dispatch();
    80004574:	ffffd097          	auipc	ra,0xffffd
    80004578:	e70080e7          	jalr	-400(ra) # 800013e4 <_Z15thread_dispatchv>
}
    8000457c:	01813083          	ld	ra,24(sp)
    80004580:	01013403          	ld	s0,16(sp)
    80004584:	00813483          	ld	s1,8(sp)
    80004588:	00013903          	ld	s2,0(sp)
    8000458c:	02010113          	addi	sp,sp,32
    80004590:	00008067          	ret

0000000080004594 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004594:	fe010113          	addi	sp,sp,-32
    80004598:	00113c23          	sd	ra,24(sp)
    8000459c:	00813823          	sd	s0,16(sp)
    800045a0:	00913423          	sd	s1,8(sp)
    800045a4:	01213023          	sd	s2,0(sp)
    800045a8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800045ac:	00a00493          	li	s1,10
    800045b0:	0400006f          	j	800045f0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800045b4:	00006517          	auipc	a0,0x6
    800045b8:	dbc50513          	addi	a0,a0,-580 # 8000a370 <CONSOLE_STATUS+0x360>
    800045bc:	00002097          	auipc	ra,0x2
    800045c0:	bc8080e7          	jalr	-1080(ra) # 80006184 <_Z11printStringPKc>
    800045c4:	00000613          	li	a2,0
    800045c8:	00a00593          	li	a1,10
    800045cc:	00048513          	mv	a0,s1
    800045d0:	00002097          	auipc	ra,0x2
    800045d4:	d64080e7          	jalr	-668(ra) # 80006334 <_Z8printIntiii>
    800045d8:	00006517          	auipc	a0,0x6
    800045dc:	1a850513          	addi	a0,a0,424 # 8000a780 <CONSOLE_STATUS+0x770>
    800045e0:	00002097          	auipc	ra,0x2
    800045e4:	ba4080e7          	jalr	-1116(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800045e8:	0014849b          	addiw	s1,s1,1
    800045ec:	0ff4f493          	andi	s1,s1,255
    800045f0:	00c00793          	li	a5,12
    800045f4:	fc97f0e3          	bgeu	a5,s1,800045b4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800045f8:	00006517          	auipc	a0,0x6
    800045fc:	d8050513          	addi	a0,a0,-640 # 8000a378 <CONSOLE_STATUS+0x368>
    80004600:	00002097          	auipc	ra,0x2
    80004604:	b84080e7          	jalr	-1148(ra) # 80006184 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004608:	00500313          	li	t1,5
    thread_dispatch();
    8000460c:	ffffd097          	auipc	ra,0xffffd
    80004610:	dd8080e7          	jalr	-552(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004614:	01000513          	li	a0,16
    80004618:	00000097          	auipc	ra,0x0
    8000461c:	be8080e7          	jalr	-1048(ra) # 80004200 <_ZL9fibonaccim>
    80004620:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004624:	00006517          	auipc	a0,0x6
    80004628:	d6450513          	addi	a0,a0,-668 # 8000a388 <CONSOLE_STATUS+0x378>
    8000462c:	00002097          	auipc	ra,0x2
    80004630:	b58080e7          	jalr	-1192(ra) # 80006184 <_Z11printStringPKc>
    80004634:	00000613          	li	a2,0
    80004638:	00a00593          	li	a1,10
    8000463c:	0009051b          	sext.w	a0,s2
    80004640:	00002097          	auipc	ra,0x2
    80004644:	cf4080e7          	jalr	-780(ra) # 80006334 <_Z8printIntiii>
    80004648:	00006517          	auipc	a0,0x6
    8000464c:	13850513          	addi	a0,a0,312 # 8000a780 <CONSOLE_STATUS+0x770>
    80004650:	00002097          	auipc	ra,0x2
    80004654:	b34080e7          	jalr	-1228(ra) # 80006184 <_Z11printStringPKc>
    80004658:	0400006f          	j	80004698 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000465c:	00006517          	auipc	a0,0x6
    80004660:	d1450513          	addi	a0,a0,-748 # 8000a370 <CONSOLE_STATUS+0x360>
    80004664:	00002097          	auipc	ra,0x2
    80004668:	b20080e7          	jalr	-1248(ra) # 80006184 <_Z11printStringPKc>
    8000466c:	00000613          	li	a2,0
    80004670:	00a00593          	li	a1,10
    80004674:	00048513          	mv	a0,s1
    80004678:	00002097          	auipc	ra,0x2
    8000467c:	cbc080e7          	jalr	-836(ra) # 80006334 <_Z8printIntiii>
    80004680:	00006517          	auipc	a0,0x6
    80004684:	10050513          	addi	a0,a0,256 # 8000a780 <CONSOLE_STATUS+0x770>
    80004688:	00002097          	auipc	ra,0x2
    8000468c:	afc080e7          	jalr	-1284(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004690:	0014849b          	addiw	s1,s1,1
    80004694:	0ff4f493          	andi	s1,s1,255
    80004698:	00f00793          	li	a5,15
    8000469c:	fc97f0e3          	bgeu	a5,s1,8000465c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800046a0:	00006517          	auipc	a0,0x6
    800046a4:	cf850513          	addi	a0,a0,-776 # 8000a398 <CONSOLE_STATUS+0x388>
    800046a8:	00002097          	auipc	ra,0x2
    800046ac:	adc080e7          	jalr	-1316(ra) # 80006184 <_Z11printStringPKc>
    finishedD = true;
    800046b0:	00100793          	li	a5,1
    800046b4:	00009717          	auipc	a4,0x9
    800046b8:	cef707a3          	sb	a5,-785(a4) # 8000d3a3 <_ZL9finishedD>
    thread_dispatch();
    800046bc:	ffffd097          	auipc	ra,0xffffd
    800046c0:	d28080e7          	jalr	-728(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800046c4:	01813083          	ld	ra,24(sp)
    800046c8:	01013403          	ld	s0,16(sp)
    800046cc:	00813483          	ld	s1,8(sp)
    800046d0:	00013903          	ld	s2,0(sp)
    800046d4:	02010113          	addi	sp,sp,32
    800046d8:	00008067          	ret

00000000800046dc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800046dc:	fc010113          	addi	sp,sp,-64
    800046e0:	02113c23          	sd	ra,56(sp)
    800046e4:	02813823          	sd	s0,48(sp)
    800046e8:	02913423          	sd	s1,40(sp)
    800046ec:	03213023          	sd	s2,32(sp)
    800046f0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800046f4:	02000513          	li	a0,32
    800046f8:	ffffe097          	auipc	ra,0xffffe
    800046fc:	fe0080e7          	jalr	-32(ra) # 800026d8 <_Znwm>
    80004700:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004704:	ffffe097          	auipc	ra,0xffffe
    80004708:	10c080e7          	jalr	268(ra) # 80002810 <_ZN6ThreadC1Ev>
    8000470c:	00009797          	auipc	a5,0x9
    80004710:	87478793          	addi	a5,a5,-1932 # 8000cf80 <_ZTV7WorkerA+0x10>
    80004714:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004718:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000471c:	00006517          	auipc	a0,0x6
    80004720:	c8c50513          	addi	a0,a0,-884 # 8000a3a8 <CONSOLE_STATUS+0x398>
    80004724:	00002097          	auipc	ra,0x2
    80004728:	a60080e7          	jalr	-1440(ra) # 80006184 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000472c:	02000513          	li	a0,32
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	fa8080e7          	jalr	-88(ra) # 800026d8 <_Znwm>
    80004738:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	0d4080e7          	jalr	212(ra) # 80002810 <_ZN6ThreadC1Ev>
    80004744:	00009797          	auipc	a5,0x9
    80004748:	86478793          	addi	a5,a5,-1948 # 8000cfa8 <_ZTV7WorkerB+0x10>
    8000474c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004750:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004754:	00006517          	auipc	a0,0x6
    80004758:	c6c50513          	addi	a0,a0,-916 # 8000a3c0 <CONSOLE_STATUS+0x3b0>
    8000475c:	00002097          	auipc	ra,0x2
    80004760:	a28080e7          	jalr	-1496(ra) # 80006184 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004764:	02000513          	li	a0,32
    80004768:	ffffe097          	auipc	ra,0xffffe
    8000476c:	f70080e7          	jalr	-144(ra) # 800026d8 <_Znwm>
    80004770:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004774:	ffffe097          	auipc	ra,0xffffe
    80004778:	09c080e7          	jalr	156(ra) # 80002810 <_ZN6ThreadC1Ev>
    8000477c:	00009797          	auipc	a5,0x9
    80004780:	85478793          	addi	a5,a5,-1964 # 8000cfd0 <_ZTV7WorkerC+0x10>
    80004784:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004788:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000478c:	00006517          	auipc	a0,0x6
    80004790:	c4c50513          	addi	a0,a0,-948 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    80004794:	00002097          	auipc	ra,0x2
    80004798:	9f0080e7          	jalr	-1552(ra) # 80006184 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000479c:	02000513          	li	a0,32
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	f38080e7          	jalr	-200(ra) # 800026d8 <_Znwm>
    800047a8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800047ac:	ffffe097          	auipc	ra,0xffffe
    800047b0:	064080e7          	jalr	100(ra) # 80002810 <_ZN6ThreadC1Ev>
    800047b4:	00009797          	auipc	a5,0x9
    800047b8:	84478793          	addi	a5,a5,-1980 # 8000cff8 <_ZTV7WorkerD+0x10>
    800047bc:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800047c0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800047c4:	00006517          	auipc	a0,0x6
    800047c8:	c2c50513          	addi	a0,a0,-980 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    800047cc:	00002097          	auipc	ra,0x2
    800047d0:	9b8080e7          	jalr	-1608(ra) # 80006184 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800047d4:	00000493          	li	s1,0
    800047d8:	00300793          	li	a5,3
    800047dc:	0297c663          	blt	a5,s1,80004808 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800047e0:	00349793          	slli	a5,s1,0x3
    800047e4:	fe040713          	addi	a4,s0,-32
    800047e8:	00f707b3          	add	a5,a4,a5
    800047ec:	fe07b503          	ld	a0,-32(a5)
    800047f0:	ffffe097          	auipc	ra,0xffffe
    800047f4:	080080e7          	jalr	128(ra) # 80002870 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800047f8:	0014849b          	addiw	s1,s1,1
    800047fc:	fddff06f          	j	800047d8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	048080e7          	jalr	72(ra) # 80002848 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004808:	00009797          	auipc	a5,0x9
    8000480c:	b987c783          	lbu	a5,-1128(a5) # 8000d3a0 <_ZL9finishedA>
    80004810:	fe0788e3          	beqz	a5,80004800 <_Z20Threads_CPP_API_testv+0x124>
    80004814:	00009797          	auipc	a5,0x9
    80004818:	b8d7c783          	lbu	a5,-1139(a5) # 8000d3a1 <_ZL9finishedB>
    8000481c:	fe0782e3          	beqz	a5,80004800 <_Z20Threads_CPP_API_testv+0x124>
    80004820:	00009797          	auipc	a5,0x9
    80004824:	b827c783          	lbu	a5,-1150(a5) # 8000d3a2 <_ZL9finishedC>
    80004828:	fc078ce3          	beqz	a5,80004800 <_Z20Threads_CPP_API_testv+0x124>
    8000482c:	00009797          	auipc	a5,0x9
    80004830:	b777c783          	lbu	a5,-1161(a5) # 8000d3a3 <_ZL9finishedD>
    80004834:	fc0786e3          	beqz	a5,80004800 <_Z20Threads_CPP_API_testv+0x124>
    80004838:	fc040493          	addi	s1,s0,-64
    8000483c:	0080006f          	j	80004844 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004840:	00848493          	addi	s1,s1,8
    80004844:	fe040793          	addi	a5,s0,-32
    80004848:	08f48663          	beq	s1,a5,800048d4 <_Z20Threads_CPP_API_testv+0x1f8>
    8000484c:	0004b503          	ld	a0,0(s1)
    80004850:	fe0508e3          	beqz	a0,80004840 <_Z20Threads_CPP_API_testv+0x164>
    80004854:	00053783          	ld	a5,0(a0)
    80004858:	0087b783          	ld	a5,8(a5)
    8000485c:	000780e7          	jalr	a5
    80004860:	fe1ff06f          	j	80004840 <_Z20Threads_CPP_API_testv+0x164>
    80004864:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004868:	00048513          	mv	a0,s1
    8000486c:	ffffe097          	auipc	ra,0xffffe
    80004870:	ebc080e7          	jalr	-324(ra) # 80002728 <_ZdlPv>
    80004874:	00090513          	mv	a0,s2
    80004878:	0000a097          	auipc	ra,0xa
    8000487c:	c30080e7          	jalr	-976(ra) # 8000e4a8 <_Unwind_Resume>
    80004880:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004884:	00048513          	mv	a0,s1
    80004888:	ffffe097          	auipc	ra,0xffffe
    8000488c:	ea0080e7          	jalr	-352(ra) # 80002728 <_ZdlPv>
    80004890:	00090513          	mv	a0,s2
    80004894:	0000a097          	auipc	ra,0xa
    80004898:	c14080e7          	jalr	-1004(ra) # 8000e4a8 <_Unwind_Resume>
    8000489c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800048a0:	00048513          	mv	a0,s1
    800048a4:	ffffe097          	auipc	ra,0xffffe
    800048a8:	e84080e7          	jalr	-380(ra) # 80002728 <_ZdlPv>
    800048ac:	00090513          	mv	a0,s2
    800048b0:	0000a097          	auipc	ra,0xa
    800048b4:	bf8080e7          	jalr	-1032(ra) # 8000e4a8 <_Unwind_Resume>
    800048b8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800048bc:	00048513          	mv	a0,s1
    800048c0:	ffffe097          	auipc	ra,0xffffe
    800048c4:	e68080e7          	jalr	-408(ra) # 80002728 <_ZdlPv>
    800048c8:	00090513          	mv	a0,s2
    800048cc:	0000a097          	auipc	ra,0xa
    800048d0:	bdc080e7          	jalr	-1060(ra) # 8000e4a8 <_Unwind_Resume>
}
    800048d4:	03813083          	ld	ra,56(sp)
    800048d8:	03013403          	ld	s0,48(sp)
    800048dc:	02813483          	ld	s1,40(sp)
    800048e0:	02013903          	ld	s2,32(sp)
    800048e4:	04010113          	addi	sp,sp,64
    800048e8:	00008067          	ret

00000000800048ec <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800048ec:	ff010113          	addi	sp,sp,-16
    800048f0:	00113423          	sd	ra,8(sp)
    800048f4:	00813023          	sd	s0,0(sp)
    800048f8:	01010413          	addi	s0,sp,16
    800048fc:	00008797          	auipc	a5,0x8
    80004900:	68478793          	addi	a5,a5,1668 # 8000cf80 <_ZTV7WorkerA+0x10>
    80004904:	00f53023          	sd	a5,0(a0)
    80004908:	ffffe097          	auipc	ra,0xffffe
    8000490c:	d80080e7          	jalr	-640(ra) # 80002688 <_ZN6ThreadD1Ev>
    80004910:	00813083          	ld	ra,8(sp)
    80004914:	00013403          	ld	s0,0(sp)
    80004918:	01010113          	addi	sp,sp,16
    8000491c:	00008067          	ret

0000000080004920 <_ZN7WorkerAD0Ev>:
    80004920:	fe010113          	addi	sp,sp,-32
    80004924:	00113c23          	sd	ra,24(sp)
    80004928:	00813823          	sd	s0,16(sp)
    8000492c:	00913423          	sd	s1,8(sp)
    80004930:	02010413          	addi	s0,sp,32
    80004934:	00050493          	mv	s1,a0
    80004938:	00008797          	auipc	a5,0x8
    8000493c:	64878793          	addi	a5,a5,1608 # 8000cf80 <_ZTV7WorkerA+0x10>
    80004940:	00f53023          	sd	a5,0(a0)
    80004944:	ffffe097          	auipc	ra,0xffffe
    80004948:	d44080e7          	jalr	-700(ra) # 80002688 <_ZN6ThreadD1Ev>
    8000494c:	00048513          	mv	a0,s1
    80004950:	ffffe097          	auipc	ra,0xffffe
    80004954:	dd8080e7          	jalr	-552(ra) # 80002728 <_ZdlPv>
    80004958:	01813083          	ld	ra,24(sp)
    8000495c:	01013403          	ld	s0,16(sp)
    80004960:	00813483          	ld	s1,8(sp)
    80004964:	02010113          	addi	sp,sp,32
    80004968:	00008067          	ret

000000008000496c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000496c:	ff010113          	addi	sp,sp,-16
    80004970:	00113423          	sd	ra,8(sp)
    80004974:	00813023          	sd	s0,0(sp)
    80004978:	01010413          	addi	s0,sp,16
    8000497c:	00008797          	auipc	a5,0x8
    80004980:	62c78793          	addi	a5,a5,1580 # 8000cfa8 <_ZTV7WorkerB+0x10>
    80004984:	00f53023          	sd	a5,0(a0)
    80004988:	ffffe097          	auipc	ra,0xffffe
    8000498c:	d00080e7          	jalr	-768(ra) # 80002688 <_ZN6ThreadD1Ev>
    80004990:	00813083          	ld	ra,8(sp)
    80004994:	00013403          	ld	s0,0(sp)
    80004998:	01010113          	addi	sp,sp,16
    8000499c:	00008067          	ret

00000000800049a0 <_ZN7WorkerBD0Ev>:
    800049a0:	fe010113          	addi	sp,sp,-32
    800049a4:	00113c23          	sd	ra,24(sp)
    800049a8:	00813823          	sd	s0,16(sp)
    800049ac:	00913423          	sd	s1,8(sp)
    800049b0:	02010413          	addi	s0,sp,32
    800049b4:	00050493          	mv	s1,a0
    800049b8:	00008797          	auipc	a5,0x8
    800049bc:	5f078793          	addi	a5,a5,1520 # 8000cfa8 <_ZTV7WorkerB+0x10>
    800049c0:	00f53023          	sd	a5,0(a0)
    800049c4:	ffffe097          	auipc	ra,0xffffe
    800049c8:	cc4080e7          	jalr	-828(ra) # 80002688 <_ZN6ThreadD1Ev>
    800049cc:	00048513          	mv	a0,s1
    800049d0:	ffffe097          	auipc	ra,0xffffe
    800049d4:	d58080e7          	jalr	-680(ra) # 80002728 <_ZdlPv>
    800049d8:	01813083          	ld	ra,24(sp)
    800049dc:	01013403          	ld	s0,16(sp)
    800049e0:	00813483          	ld	s1,8(sp)
    800049e4:	02010113          	addi	sp,sp,32
    800049e8:	00008067          	ret

00000000800049ec <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800049ec:	ff010113          	addi	sp,sp,-16
    800049f0:	00113423          	sd	ra,8(sp)
    800049f4:	00813023          	sd	s0,0(sp)
    800049f8:	01010413          	addi	s0,sp,16
    800049fc:	00008797          	auipc	a5,0x8
    80004a00:	5d478793          	addi	a5,a5,1492 # 8000cfd0 <_ZTV7WorkerC+0x10>
    80004a04:	00f53023          	sd	a5,0(a0)
    80004a08:	ffffe097          	auipc	ra,0xffffe
    80004a0c:	c80080e7          	jalr	-896(ra) # 80002688 <_ZN6ThreadD1Ev>
    80004a10:	00813083          	ld	ra,8(sp)
    80004a14:	00013403          	ld	s0,0(sp)
    80004a18:	01010113          	addi	sp,sp,16
    80004a1c:	00008067          	ret

0000000080004a20 <_ZN7WorkerCD0Ev>:
    80004a20:	fe010113          	addi	sp,sp,-32
    80004a24:	00113c23          	sd	ra,24(sp)
    80004a28:	00813823          	sd	s0,16(sp)
    80004a2c:	00913423          	sd	s1,8(sp)
    80004a30:	02010413          	addi	s0,sp,32
    80004a34:	00050493          	mv	s1,a0
    80004a38:	00008797          	auipc	a5,0x8
    80004a3c:	59878793          	addi	a5,a5,1432 # 8000cfd0 <_ZTV7WorkerC+0x10>
    80004a40:	00f53023          	sd	a5,0(a0)
    80004a44:	ffffe097          	auipc	ra,0xffffe
    80004a48:	c44080e7          	jalr	-956(ra) # 80002688 <_ZN6ThreadD1Ev>
    80004a4c:	00048513          	mv	a0,s1
    80004a50:	ffffe097          	auipc	ra,0xffffe
    80004a54:	cd8080e7          	jalr	-808(ra) # 80002728 <_ZdlPv>
    80004a58:	01813083          	ld	ra,24(sp)
    80004a5c:	01013403          	ld	s0,16(sp)
    80004a60:	00813483          	ld	s1,8(sp)
    80004a64:	02010113          	addi	sp,sp,32
    80004a68:	00008067          	ret

0000000080004a6c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004a6c:	ff010113          	addi	sp,sp,-16
    80004a70:	00113423          	sd	ra,8(sp)
    80004a74:	00813023          	sd	s0,0(sp)
    80004a78:	01010413          	addi	s0,sp,16
    80004a7c:	00008797          	auipc	a5,0x8
    80004a80:	57c78793          	addi	a5,a5,1404 # 8000cff8 <_ZTV7WorkerD+0x10>
    80004a84:	00f53023          	sd	a5,0(a0)
    80004a88:	ffffe097          	auipc	ra,0xffffe
    80004a8c:	c00080e7          	jalr	-1024(ra) # 80002688 <_ZN6ThreadD1Ev>
    80004a90:	00813083          	ld	ra,8(sp)
    80004a94:	00013403          	ld	s0,0(sp)
    80004a98:	01010113          	addi	sp,sp,16
    80004a9c:	00008067          	ret

0000000080004aa0 <_ZN7WorkerDD0Ev>:
    80004aa0:	fe010113          	addi	sp,sp,-32
    80004aa4:	00113c23          	sd	ra,24(sp)
    80004aa8:	00813823          	sd	s0,16(sp)
    80004aac:	00913423          	sd	s1,8(sp)
    80004ab0:	02010413          	addi	s0,sp,32
    80004ab4:	00050493          	mv	s1,a0
    80004ab8:	00008797          	auipc	a5,0x8
    80004abc:	54078793          	addi	a5,a5,1344 # 8000cff8 <_ZTV7WorkerD+0x10>
    80004ac0:	00f53023          	sd	a5,0(a0)
    80004ac4:	ffffe097          	auipc	ra,0xffffe
    80004ac8:	bc4080e7          	jalr	-1084(ra) # 80002688 <_ZN6ThreadD1Ev>
    80004acc:	00048513          	mv	a0,s1
    80004ad0:	ffffe097          	auipc	ra,0xffffe
    80004ad4:	c58080e7          	jalr	-936(ra) # 80002728 <_ZdlPv>
    80004ad8:	01813083          	ld	ra,24(sp)
    80004adc:	01013403          	ld	s0,16(sp)
    80004ae0:	00813483          	ld	s1,8(sp)
    80004ae4:	02010113          	addi	sp,sp,32
    80004ae8:	00008067          	ret

0000000080004aec <_ZN7WorkerA3runEv>:
    void run() override {
    80004aec:	ff010113          	addi	sp,sp,-16
    80004af0:	00113423          	sd	ra,8(sp)
    80004af4:	00813023          	sd	s0,0(sp)
    80004af8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004afc:	00000593          	li	a1,0
    80004b00:	fffff097          	auipc	ra,0xfffff
    80004b04:	774080e7          	jalr	1908(ra) # 80004274 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004b08:	00813083          	ld	ra,8(sp)
    80004b0c:	00013403          	ld	s0,0(sp)
    80004b10:	01010113          	addi	sp,sp,16
    80004b14:	00008067          	ret

0000000080004b18 <_ZN7WorkerB3runEv>:
    void run() override {
    80004b18:	ff010113          	addi	sp,sp,-16
    80004b1c:	00113423          	sd	ra,8(sp)
    80004b20:	00813023          	sd	s0,0(sp)
    80004b24:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004b28:	00000593          	li	a1,0
    80004b2c:	00000097          	auipc	ra,0x0
    80004b30:	814080e7          	jalr	-2028(ra) # 80004340 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004b34:	00813083          	ld	ra,8(sp)
    80004b38:	00013403          	ld	s0,0(sp)
    80004b3c:	01010113          	addi	sp,sp,16
    80004b40:	00008067          	ret

0000000080004b44 <_ZN7WorkerC3runEv>:
    void run() override {
    80004b44:	ff010113          	addi	sp,sp,-16
    80004b48:	00113423          	sd	ra,8(sp)
    80004b4c:	00813023          	sd	s0,0(sp)
    80004b50:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004b54:	00000593          	li	a1,0
    80004b58:	00000097          	auipc	ra,0x0
    80004b5c:	8bc080e7          	jalr	-1860(ra) # 80004414 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004b60:	00813083          	ld	ra,8(sp)
    80004b64:	00013403          	ld	s0,0(sp)
    80004b68:	01010113          	addi	sp,sp,16
    80004b6c:	00008067          	ret

0000000080004b70 <_ZN7WorkerD3runEv>:
    void run() override {
    80004b70:	ff010113          	addi	sp,sp,-16
    80004b74:	00113423          	sd	ra,8(sp)
    80004b78:	00813023          	sd	s0,0(sp)
    80004b7c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004b80:	00000593          	li	a1,0
    80004b84:	00000097          	auipc	ra,0x0
    80004b88:	a10080e7          	jalr	-1520(ra) # 80004594 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004b8c:	00813083          	ld	ra,8(sp)
    80004b90:	00013403          	ld	s0,0(sp)
    80004b94:	01010113          	addi	sp,sp,16
    80004b98:	00008067          	ret

0000000080004b9c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004b9c:	f8010113          	addi	sp,sp,-128
    80004ba0:	06113c23          	sd	ra,120(sp)
    80004ba4:	06813823          	sd	s0,112(sp)
    80004ba8:	06913423          	sd	s1,104(sp)
    80004bac:	07213023          	sd	s2,96(sp)
    80004bb0:	05313c23          	sd	s3,88(sp)
    80004bb4:	05413823          	sd	s4,80(sp)
    80004bb8:	05513423          	sd	s5,72(sp)
    80004bbc:	05613023          	sd	s6,64(sp)
    80004bc0:	03713c23          	sd	s7,56(sp)
    80004bc4:	03813823          	sd	s8,48(sp)
    80004bc8:	03913423          	sd	s9,40(sp)
    80004bcc:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004bd0:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004bd4:	00005517          	auipc	a0,0x5
    80004bd8:	63c50513          	addi	a0,a0,1596 # 8000a210 <CONSOLE_STATUS+0x200>
    80004bdc:	00001097          	auipc	ra,0x1
    80004be0:	5a8080e7          	jalr	1448(ra) # 80006184 <_Z11printStringPKc>
    getString(input, 30);
    80004be4:	01e00593          	li	a1,30
    80004be8:	f8040493          	addi	s1,s0,-128
    80004bec:	00048513          	mv	a0,s1
    80004bf0:	00001097          	auipc	ra,0x1
    80004bf4:	61c080e7          	jalr	1564(ra) # 8000620c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004bf8:	00048513          	mv	a0,s1
    80004bfc:	00001097          	auipc	ra,0x1
    80004c00:	6e8080e7          	jalr	1768(ra) # 800062e4 <_Z11stringToIntPKc>
    80004c04:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004c08:	00005517          	auipc	a0,0x5
    80004c0c:	62850513          	addi	a0,a0,1576 # 8000a230 <CONSOLE_STATUS+0x220>
    80004c10:	00001097          	auipc	ra,0x1
    80004c14:	574080e7          	jalr	1396(ra) # 80006184 <_Z11printStringPKc>
    getString(input, 30);
    80004c18:	01e00593          	li	a1,30
    80004c1c:	00048513          	mv	a0,s1
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	5ec080e7          	jalr	1516(ra) # 8000620c <_Z9getStringPci>
    n = stringToInt(input);
    80004c28:	00048513          	mv	a0,s1
    80004c2c:	00001097          	auipc	ra,0x1
    80004c30:	6b8080e7          	jalr	1720(ra) # 800062e4 <_Z11stringToIntPKc>
    80004c34:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004c38:	00005517          	auipc	a0,0x5
    80004c3c:	61850513          	addi	a0,a0,1560 # 8000a250 <CONSOLE_STATUS+0x240>
    80004c40:	00001097          	auipc	ra,0x1
    80004c44:	544080e7          	jalr	1348(ra) # 80006184 <_Z11printStringPKc>
    printInt(threadNum);
    80004c48:	00000613          	li	a2,0
    80004c4c:	00a00593          	li	a1,10
    80004c50:	00098513          	mv	a0,s3
    80004c54:	00001097          	auipc	ra,0x1
    80004c58:	6e0080e7          	jalr	1760(ra) # 80006334 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004c5c:	00005517          	auipc	a0,0x5
    80004c60:	60c50513          	addi	a0,a0,1548 # 8000a268 <CONSOLE_STATUS+0x258>
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	520080e7          	jalr	1312(ra) # 80006184 <_Z11printStringPKc>
    printInt(n);
    80004c6c:	00000613          	li	a2,0
    80004c70:	00a00593          	li	a1,10
    80004c74:	00048513          	mv	a0,s1
    80004c78:	00001097          	auipc	ra,0x1
    80004c7c:	6bc080e7          	jalr	1724(ra) # 80006334 <_Z8printIntiii>
    printString(".\n");
    80004c80:	00005517          	auipc	a0,0x5
    80004c84:	60050513          	addi	a0,a0,1536 # 8000a280 <CONSOLE_STATUS+0x270>
    80004c88:	00001097          	auipc	ra,0x1
    80004c8c:	4fc080e7          	jalr	1276(ra) # 80006184 <_Z11printStringPKc>
    if (threadNum > n) {
    80004c90:	0334c463          	blt	s1,s3,80004cb8 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004c94:	03305c63          	blez	s3,80004ccc <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004c98:	03800513          	li	a0,56
    80004c9c:	ffffe097          	auipc	ra,0xffffe
    80004ca0:	a3c080e7          	jalr	-1476(ra) # 800026d8 <_Znwm>
    80004ca4:	00050a93          	mv	s5,a0
    80004ca8:	00048593          	mv	a1,s1
    80004cac:	00001097          	auipc	ra,0x1
    80004cb0:	7a8080e7          	jalr	1960(ra) # 80006454 <_ZN9BufferCPPC1Ei>
    80004cb4:	0300006f          	j	80004ce4 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004cb8:	00005517          	auipc	a0,0x5
    80004cbc:	5d050513          	addi	a0,a0,1488 # 8000a288 <CONSOLE_STATUS+0x278>
    80004cc0:	00001097          	auipc	ra,0x1
    80004cc4:	4c4080e7          	jalr	1220(ra) # 80006184 <_Z11printStringPKc>
        return;
    80004cc8:	0140006f          	j	80004cdc <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004ccc:	00005517          	auipc	a0,0x5
    80004cd0:	5fc50513          	addi	a0,a0,1532 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	4b0080e7          	jalr	1200(ra) # 80006184 <_Z11printStringPKc>
        return;
    80004cdc:	000c0113          	mv	sp,s8
    80004ce0:	2140006f          	j	80004ef4 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004ce4:	01000513          	li	a0,16
    80004ce8:	ffffe097          	auipc	ra,0xffffe
    80004cec:	9f0080e7          	jalr	-1552(ra) # 800026d8 <_Znwm>
    80004cf0:	00050913          	mv	s2,a0
    80004cf4:	00000593          	li	a1,0
    80004cf8:	ffffe097          	auipc	ra,0xffffe
    80004cfc:	cc0080e7          	jalr	-832(ra) # 800029b8 <_ZN9SemaphoreC1Ej>
    80004d00:	00008797          	auipc	a5,0x8
    80004d04:	6b27b823          	sd	s2,1712(a5) # 8000d3b0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004d08:	00399793          	slli	a5,s3,0x3
    80004d0c:	00f78793          	addi	a5,a5,15
    80004d10:	ff07f793          	andi	a5,a5,-16
    80004d14:	40f10133          	sub	sp,sp,a5
    80004d18:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004d1c:	0019871b          	addiw	a4,s3,1
    80004d20:	00171793          	slli	a5,a4,0x1
    80004d24:	00e787b3          	add	a5,a5,a4
    80004d28:	00379793          	slli	a5,a5,0x3
    80004d2c:	00f78793          	addi	a5,a5,15
    80004d30:	ff07f793          	andi	a5,a5,-16
    80004d34:	40f10133          	sub	sp,sp,a5
    80004d38:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004d3c:	00199493          	slli	s1,s3,0x1
    80004d40:	013484b3          	add	s1,s1,s3
    80004d44:	00349493          	slli	s1,s1,0x3
    80004d48:	009b04b3          	add	s1,s6,s1
    80004d4c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004d50:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004d54:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004d58:	02800513          	li	a0,40
    80004d5c:	ffffe097          	auipc	ra,0xffffe
    80004d60:	97c080e7          	jalr	-1668(ra) # 800026d8 <_Znwm>
    80004d64:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004d68:	ffffe097          	auipc	ra,0xffffe
    80004d6c:	aa8080e7          	jalr	-1368(ra) # 80002810 <_ZN6ThreadC1Ev>
    80004d70:	00008797          	auipc	a5,0x8
    80004d74:	30078793          	addi	a5,a5,768 # 8000d070 <_ZTV8Consumer+0x10>
    80004d78:	00fbb023          	sd	a5,0(s7)
    80004d7c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004d80:	000b8513          	mv	a0,s7
    80004d84:	ffffe097          	auipc	ra,0xffffe
    80004d88:	aec080e7          	jalr	-1300(ra) # 80002870 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004d8c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004d90:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004d94:	00008797          	auipc	a5,0x8
    80004d98:	61c7b783          	ld	a5,1564(a5) # 8000d3b0 <_ZL10waitForAll>
    80004d9c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004da0:	02800513          	li	a0,40
    80004da4:	ffffe097          	auipc	ra,0xffffe
    80004da8:	934080e7          	jalr	-1740(ra) # 800026d8 <_Znwm>
    80004dac:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004db0:	ffffe097          	auipc	ra,0xffffe
    80004db4:	a60080e7          	jalr	-1440(ra) # 80002810 <_ZN6ThreadC1Ev>
    80004db8:	00008797          	auipc	a5,0x8
    80004dbc:	26878793          	addi	a5,a5,616 # 8000d020 <_ZTV16ProducerKeyborad+0x10>
    80004dc0:	00f4b023          	sd	a5,0(s1)
    80004dc4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004dc8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004dcc:	00048513          	mv	a0,s1
    80004dd0:	ffffe097          	auipc	ra,0xffffe
    80004dd4:	aa0080e7          	jalr	-1376(ra) # 80002870 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004dd8:	00100913          	li	s2,1
    80004ddc:	0300006f          	j	80004e0c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004de0:	00008797          	auipc	a5,0x8
    80004de4:	26878793          	addi	a5,a5,616 # 8000d048 <_ZTV8Producer+0x10>
    80004de8:	00fcb023          	sd	a5,0(s9)
    80004dec:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004df0:	00391793          	slli	a5,s2,0x3
    80004df4:	00fa07b3          	add	a5,s4,a5
    80004df8:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004dfc:	000c8513          	mv	a0,s9
    80004e00:	ffffe097          	auipc	ra,0xffffe
    80004e04:	a70080e7          	jalr	-1424(ra) # 80002870 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004e08:	0019091b          	addiw	s2,s2,1
    80004e0c:	05395263          	bge	s2,s3,80004e50 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004e10:	00191493          	slli	s1,s2,0x1
    80004e14:	012484b3          	add	s1,s1,s2
    80004e18:	00349493          	slli	s1,s1,0x3
    80004e1c:	009b04b3          	add	s1,s6,s1
    80004e20:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004e24:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004e28:	00008797          	auipc	a5,0x8
    80004e2c:	5887b783          	ld	a5,1416(a5) # 8000d3b0 <_ZL10waitForAll>
    80004e30:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004e34:	02800513          	li	a0,40
    80004e38:	ffffe097          	auipc	ra,0xffffe
    80004e3c:	8a0080e7          	jalr	-1888(ra) # 800026d8 <_Znwm>
    80004e40:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004e44:	ffffe097          	auipc	ra,0xffffe
    80004e48:	9cc080e7          	jalr	-1588(ra) # 80002810 <_ZN6ThreadC1Ev>
    80004e4c:	f95ff06f          	j	80004de0 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004e50:	ffffe097          	auipc	ra,0xffffe
    80004e54:	9f8080e7          	jalr	-1544(ra) # 80002848 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e58:	00000493          	li	s1,0
    80004e5c:	0099ce63          	blt	s3,s1,80004e78 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004e60:	00008517          	auipc	a0,0x8
    80004e64:	55053503          	ld	a0,1360(a0) # 8000d3b0 <_ZL10waitForAll>
    80004e68:	ffffe097          	auipc	ra,0xffffe
    80004e6c:	b8c080e7          	jalr	-1140(ra) # 800029f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e70:	0014849b          	addiw	s1,s1,1
    80004e74:	fe9ff06f          	j	80004e5c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004e78:	00008517          	auipc	a0,0x8
    80004e7c:	53853503          	ld	a0,1336(a0) # 8000d3b0 <_ZL10waitForAll>
    80004e80:	00050863          	beqz	a0,80004e90 <_Z20testConsumerProducerv+0x2f4>
    80004e84:	00053783          	ld	a5,0(a0)
    80004e88:	0087b783          	ld	a5,8(a5)
    80004e8c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004e90:	00000493          	li	s1,0
    80004e94:	0080006f          	j	80004e9c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004e98:	0014849b          	addiw	s1,s1,1
    80004e9c:	0334d263          	bge	s1,s3,80004ec0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004ea0:	00349793          	slli	a5,s1,0x3
    80004ea4:	00fa07b3          	add	a5,s4,a5
    80004ea8:	0007b503          	ld	a0,0(a5)
    80004eac:	fe0506e3          	beqz	a0,80004e98 <_Z20testConsumerProducerv+0x2fc>
    80004eb0:	00053783          	ld	a5,0(a0)
    80004eb4:	0087b783          	ld	a5,8(a5)
    80004eb8:	000780e7          	jalr	a5
    80004ebc:	fddff06f          	j	80004e98 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004ec0:	000b8a63          	beqz	s7,80004ed4 <_Z20testConsumerProducerv+0x338>
    80004ec4:	000bb783          	ld	a5,0(s7)
    80004ec8:	0087b783          	ld	a5,8(a5)
    80004ecc:	000b8513          	mv	a0,s7
    80004ed0:	000780e7          	jalr	a5
    delete buffer;
    80004ed4:	000a8e63          	beqz	s5,80004ef0 <_Z20testConsumerProducerv+0x354>
    80004ed8:	000a8513          	mv	a0,s5
    80004edc:	00002097          	auipc	ra,0x2
    80004ee0:	870080e7          	jalr	-1936(ra) # 8000674c <_ZN9BufferCPPD1Ev>
    80004ee4:	000a8513          	mv	a0,s5
    80004ee8:	ffffe097          	auipc	ra,0xffffe
    80004eec:	840080e7          	jalr	-1984(ra) # 80002728 <_ZdlPv>
    80004ef0:	000c0113          	mv	sp,s8
}
    80004ef4:	f8040113          	addi	sp,s0,-128
    80004ef8:	07813083          	ld	ra,120(sp)
    80004efc:	07013403          	ld	s0,112(sp)
    80004f00:	06813483          	ld	s1,104(sp)
    80004f04:	06013903          	ld	s2,96(sp)
    80004f08:	05813983          	ld	s3,88(sp)
    80004f0c:	05013a03          	ld	s4,80(sp)
    80004f10:	04813a83          	ld	s5,72(sp)
    80004f14:	04013b03          	ld	s6,64(sp)
    80004f18:	03813b83          	ld	s7,56(sp)
    80004f1c:	03013c03          	ld	s8,48(sp)
    80004f20:	02813c83          	ld	s9,40(sp)
    80004f24:	08010113          	addi	sp,sp,128
    80004f28:	00008067          	ret
    80004f2c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004f30:	000a8513          	mv	a0,s5
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	7f4080e7          	jalr	2036(ra) # 80002728 <_ZdlPv>
    80004f3c:	00048513          	mv	a0,s1
    80004f40:	00009097          	auipc	ra,0x9
    80004f44:	568080e7          	jalr	1384(ra) # 8000e4a8 <_Unwind_Resume>
    80004f48:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004f4c:	00090513          	mv	a0,s2
    80004f50:	ffffd097          	auipc	ra,0xffffd
    80004f54:	7d8080e7          	jalr	2008(ra) # 80002728 <_ZdlPv>
    80004f58:	00048513          	mv	a0,s1
    80004f5c:	00009097          	auipc	ra,0x9
    80004f60:	54c080e7          	jalr	1356(ra) # 8000e4a8 <_Unwind_Resume>
    80004f64:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004f68:	000b8513          	mv	a0,s7
    80004f6c:	ffffd097          	auipc	ra,0xffffd
    80004f70:	7bc080e7          	jalr	1980(ra) # 80002728 <_ZdlPv>
    80004f74:	00048513          	mv	a0,s1
    80004f78:	00009097          	auipc	ra,0x9
    80004f7c:	530080e7          	jalr	1328(ra) # 8000e4a8 <_Unwind_Resume>
    80004f80:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004f84:	00048513          	mv	a0,s1
    80004f88:	ffffd097          	auipc	ra,0xffffd
    80004f8c:	7a0080e7          	jalr	1952(ra) # 80002728 <_ZdlPv>
    80004f90:	00090513          	mv	a0,s2
    80004f94:	00009097          	auipc	ra,0x9
    80004f98:	514080e7          	jalr	1300(ra) # 8000e4a8 <_Unwind_Resume>
    80004f9c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004fa0:	000c8513          	mv	a0,s9
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	784080e7          	jalr	1924(ra) # 80002728 <_ZdlPv>
    80004fac:	00048513          	mv	a0,s1
    80004fb0:	00009097          	auipc	ra,0x9
    80004fb4:	4f8080e7          	jalr	1272(ra) # 8000e4a8 <_Unwind_Resume>

0000000080004fb8 <_ZN8Consumer3runEv>:
    void run() override {
    80004fb8:	fd010113          	addi	sp,sp,-48
    80004fbc:	02113423          	sd	ra,40(sp)
    80004fc0:	02813023          	sd	s0,32(sp)
    80004fc4:	00913c23          	sd	s1,24(sp)
    80004fc8:	01213823          	sd	s2,16(sp)
    80004fcc:	01313423          	sd	s3,8(sp)
    80004fd0:	03010413          	addi	s0,sp,48
    80004fd4:	00050913          	mv	s2,a0
        int i = 0;
    80004fd8:	00000993          	li	s3,0
    80004fdc:	0100006f          	j	80004fec <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004fe0:	00a00513          	li	a0,10
    80004fe4:	ffffe097          	auipc	ra,0xffffe
    80004fe8:	afc080e7          	jalr	-1284(ra) # 80002ae0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004fec:	00008797          	auipc	a5,0x8
    80004ff0:	3bc7a783          	lw	a5,956(a5) # 8000d3a8 <_ZL9threadEnd>
    80004ff4:	04079a63          	bnez	a5,80005048 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004ff8:	02093783          	ld	a5,32(s2)
    80004ffc:	0087b503          	ld	a0,8(a5)
    80005000:	00001097          	auipc	ra,0x1
    80005004:	638080e7          	jalr	1592(ra) # 80006638 <_ZN9BufferCPP3getEv>
            i++;
    80005008:	0019849b          	addiw	s1,s3,1
    8000500c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80005010:	0ff57513          	andi	a0,a0,255
    80005014:	ffffe097          	auipc	ra,0xffffe
    80005018:	acc080e7          	jalr	-1332(ra) # 80002ae0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000501c:	05000793          	li	a5,80
    80005020:	02f4e4bb          	remw	s1,s1,a5
    80005024:	fc0494e3          	bnez	s1,80004fec <_ZN8Consumer3runEv+0x34>
    80005028:	fb9ff06f          	j	80004fe0 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000502c:	02093783          	ld	a5,32(s2)
    80005030:	0087b503          	ld	a0,8(a5)
    80005034:	00001097          	auipc	ra,0x1
    80005038:	604080e7          	jalr	1540(ra) # 80006638 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000503c:	0ff57513          	andi	a0,a0,255
    80005040:	ffffe097          	auipc	ra,0xffffe
    80005044:	aa0080e7          	jalr	-1376(ra) # 80002ae0 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80005048:	02093783          	ld	a5,32(s2)
    8000504c:	0087b503          	ld	a0,8(a5)
    80005050:	00001097          	auipc	ra,0x1
    80005054:	674080e7          	jalr	1652(ra) # 800066c4 <_ZN9BufferCPP6getCntEv>
    80005058:	fca04ae3          	bgtz	a0,8000502c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    8000505c:	02093783          	ld	a5,32(s2)
    80005060:	0107b503          	ld	a0,16(a5)
    80005064:	ffffe097          	auipc	ra,0xffffe
    80005068:	9bc080e7          	jalr	-1604(ra) # 80002a20 <_ZN9Semaphore6signalEv>
    }
    8000506c:	02813083          	ld	ra,40(sp)
    80005070:	02013403          	ld	s0,32(sp)
    80005074:	01813483          	ld	s1,24(sp)
    80005078:	01013903          	ld	s2,16(sp)
    8000507c:	00813983          	ld	s3,8(sp)
    80005080:	03010113          	addi	sp,sp,48
    80005084:	00008067          	ret

0000000080005088 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80005088:	ff010113          	addi	sp,sp,-16
    8000508c:	00113423          	sd	ra,8(sp)
    80005090:	00813023          	sd	s0,0(sp)
    80005094:	01010413          	addi	s0,sp,16
    80005098:	00008797          	auipc	a5,0x8
    8000509c:	fd878793          	addi	a5,a5,-40 # 8000d070 <_ZTV8Consumer+0x10>
    800050a0:	00f53023          	sd	a5,0(a0)
    800050a4:	ffffd097          	auipc	ra,0xffffd
    800050a8:	5e4080e7          	jalr	1508(ra) # 80002688 <_ZN6ThreadD1Ev>
    800050ac:	00813083          	ld	ra,8(sp)
    800050b0:	00013403          	ld	s0,0(sp)
    800050b4:	01010113          	addi	sp,sp,16
    800050b8:	00008067          	ret

00000000800050bc <_ZN8ConsumerD0Ev>:
    800050bc:	fe010113          	addi	sp,sp,-32
    800050c0:	00113c23          	sd	ra,24(sp)
    800050c4:	00813823          	sd	s0,16(sp)
    800050c8:	00913423          	sd	s1,8(sp)
    800050cc:	02010413          	addi	s0,sp,32
    800050d0:	00050493          	mv	s1,a0
    800050d4:	00008797          	auipc	a5,0x8
    800050d8:	f9c78793          	addi	a5,a5,-100 # 8000d070 <_ZTV8Consumer+0x10>
    800050dc:	00f53023          	sd	a5,0(a0)
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	5a8080e7          	jalr	1448(ra) # 80002688 <_ZN6ThreadD1Ev>
    800050e8:	00048513          	mv	a0,s1
    800050ec:	ffffd097          	auipc	ra,0xffffd
    800050f0:	63c080e7          	jalr	1596(ra) # 80002728 <_ZdlPv>
    800050f4:	01813083          	ld	ra,24(sp)
    800050f8:	01013403          	ld	s0,16(sp)
    800050fc:	00813483          	ld	s1,8(sp)
    80005100:	02010113          	addi	sp,sp,32
    80005104:	00008067          	ret

0000000080005108 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80005108:	ff010113          	addi	sp,sp,-16
    8000510c:	00113423          	sd	ra,8(sp)
    80005110:	00813023          	sd	s0,0(sp)
    80005114:	01010413          	addi	s0,sp,16
    80005118:	00008797          	auipc	a5,0x8
    8000511c:	f0878793          	addi	a5,a5,-248 # 8000d020 <_ZTV16ProducerKeyborad+0x10>
    80005120:	00f53023          	sd	a5,0(a0)
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	564080e7          	jalr	1380(ra) # 80002688 <_ZN6ThreadD1Ev>
    8000512c:	00813083          	ld	ra,8(sp)
    80005130:	00013403          	ld	s0,0(sp)
    80005134:	01010113          	addi	sp,sp,16
    80005138:	00008067          	ret

000000008000513c <_ZN16ProducerKeyboradD0Ev>:
    8000513c:	fe010113          	addi	sp,sp,-32
    80005140:	00113c23          	sd	ra,24(sp)
    80005144:	00813823          	sd	s0,16(sp)
    80005148:	00913423          	sd	s1,8(sp)
    8000514c:	02010413          	addi	s0,sp,32
    80005150:	00050493          	mv	s1,a0
    80005154:	00008797          	auipc	a5,0x8
    80005158:	ecc78793          	addi	a5,a5,-308 # 8000d020 <_ZTV16ProducerKeyborad+0x10>
    8000515c:	00f53023          	sd	a5,0(a0)
    80005160:	ffffd097          	auipc	ra,0xffffd
    80005164:	528080e7          	jalr	1320(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005168:	00048513          	mv	a0,s1
    8000516c:	ffffd097          	auipc	ra,0xffffd
    80005170:	5bc080e7          	jalr	1468(ra) # 80002728 <_ZdlPv>
    80005174:	01813083          	ld	ra,24(sp)
    80005178:	01013403          	ld	s0,16(sp)
    8000517c:	00813483          	ld	s1,8(sp)
    80005180:	02010113          	addi	sp,sp,32
    80005184:	00008067          	ret

0000000080005188 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80005188:	ff010113          	addi	sp,sp,-16
    8000518c:	00113423          	sd	ra,8(sp)
    80005190:	00813023          	sd	s0,0(sp)
    80005194:	01010413          	addi	s0,sp,16
    80005198:	00008797          	auipc	a5,0x8
    8000519c:	eb078793          	addi	a5,a5,-336 # 8000d048 <_ZTV8Producer+0x10>
    800051a0:	00f53023          	sd	a5,0(a0)
    800051a4:	ffffd097          	auipc	ra,0xffffd
    800051a8:	4e4080e7          	jalr	1252(ra) # 80002688 <_ZN6ThreadD1Ev>
    800051ac:	00813083          	ld	ra,8(sp)
    800051b0:	00013403          	ld	s0,0(sp)
    800051b4:	01010113          	addi	sp,sp,16
    800051b8:	00008067          	ret

00000000800051bc <_ZN8ProducerD0Ev>:
    800051bc:	fe010113          	addi	sp,sp,-32
    800051c0:	00113c23          	sd	ra,24(sp)
    800051c4:	00813823          	sd	s0,16(sp)
    800051c8:	00913423          	sd	s1,8(sp)
    800051cc:	02010413          	addi	s0,sp,32
    800051d0:	00050493          	mv	s1,a0
    800051d4:	00008797          	auipc	a5,0x8
    800051d8:	e7478793          	addi	a5,a5,-396 # 8000d048 <_ZTV8Producer+0x10>
    800051dc:	00f53023          	sd	a5,0(a0)
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	4a8080e7          	jalr	1192(ra) # 80002688 <_ZN6ThreadD1Ev>
    800051e8:	00048513          	mv	a0,s1
    800051ec:	ffffd097          	auipc	ra,0xffffd
    800051f0:	53c080e7          	jalr	1340(ra) # 80002728 <_ZdlPv>
    800051f4:	01813083          	ld	ra,24(sp)
    800051f8:	01013403          	ld	s0,16(sp)
    800051fc:	00813483          	ld	s1,8(sp)
    80005200:	02010113          	addi	sp,sp,32
    80005204:	00008067          	ret

0000000080005208 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80005208:	fe010113          	addi	sp,sp,-32
    8000520c:	00113c23          	sd	ra,24(sp)
    80005210:	00813823          	sd	s0,16(sp)
    80005214:	00913423          	sd	s1,8(sp)
    80005218:	02010413          	addi	s0,sp,32
    8000521c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80005220:	ffffc097          	auipc	ra,0xffffc
    80005224:	3e8080e7          	jalr	1000(ra) # 80001608 <_Z4getcv>
    80005228:	0005059b          	sext.w	a1,a0
    8000522c:	01b00793          	li	a5,27
    80005230:	00f58c63          	beq	a1,a5,80005248 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80005234:	0204b783          	ld	a5,32(s1)
    80005238:	0087b503          	ld	a0,8(a5)
    8000523c:	00001097          	auipc	ra,0x1
    80005240:	36c080e7          	jalr	876(ra) # 800065a8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80005244:	fddff06f          	j	80005220 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80005248:	00100793          	li	a5,1
    8000524c:	00008717          	auipc	a4,0x8
    80005250:	14f72e23          	sw	a5,348(a4) # 8000d3a8 <_ZL9threadEnd>
        td->buffer->put('!');
    80005254:	0204b783          	ld	a5,32(s1)
    80005258:	02100593          	li	a1,33
    8000525c:	0087b503          	ld	a0,8(a5)
    80005260:	00001097          	auipc	ra,0x1
    80005264:	348080e7          	jalr	840(ra) # 800065a8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80005268:	0204b783          	ld	a5,32(s1)
    8000526c:	0107b503          	ld	a0,16(a5)
    80005270:	ffffd097          	auipc	ra,0xffffd
    80005274:	7b0080e7          	jalr	1968(ra) # 80002a20 <_ZN9Semaphore6signalEv>
    }
    80005278:	01813083          	ld	ra,24(sp)
    8000527c:	01013403          	ld	s0,16(sp)
    80005280:	00813483          	ld	s1,8(sp)
    80005284:	02010113          	addi	sp,sp,32
    80005288:	00008067          	ret

000000008000528c <_ZN8Producer3runEv>:
    void run() override {
    8000528c:	fe010113          	addi	sp,sp,-32
    80005290:	00113c23          	sd	ra,24(sp)
    80005294:	00813823          	sd	s0,16(sp)
    80005298:	00913423          	sd	s1,8(sp)
    8000529c:	01213023          	sd	s2,0(sp)
    800052a0:	02010413          	addi	s0,sp,32
    800052a4:	00050493          	mv	s1,a0
        int i = 0;
    800052a8:	00000913          	li	s2,0
        while (!threadEnd) {
    800052ac:	00008797          	auipc	a5,0x8
    800052b0:	0fc7a783          	lw	a5,252(a5) # 8000d3a8 <_ZL9threadEnd>
    800052b4:	04079263          	bnez	a5,800052f8 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800052b8:	0204b783          	ld	a5,32(s1)
    800052bc:	0007a583          	lw	a1,0(a5)
    800052c0:	0305859b          	addiw	a1,a1,48
    800052c4:	0087b503          	ld	a0,8(a5)
    800052c8:	00001097          	auipc	ra,0x1
    800052cc:	2e0080e7          	jalr	736(ra) # 800065a8 <_ZN9BufferCPP3putEi>
            i++;
    800052d0:	0019071b          	addiw	a4,s2,1
    800052d4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800052d8:	0204b783          	ld	a5,32(s1)
    800052dc:	0007a783          	lw	a5,0(a5)
    800052e0:	00e787bb          	addw	a5,a5,a4
    800052e4:	00500513          	li	a0,5
    800052e8:	02a7e53b          	remw	a0,a5,a0
    800052ec:	ffffd097          	auipc	ra,0xffffd
    800052f0:	5f4080e7          	jalr	1524(ra) # 800028e0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800052f4:	fb9ff06f          	j	800052ac <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800052f8:	0204b783          	ld	a5,32(s1)
    800052fc:	0107b503          	ld	a0,16(a5)
    80005300:	ffffd097          	auipc	ra,0xffffd
    80005304:	720080e7          	jalr	1824(ra) # 80002a20 <_ZN9Semaphore6signalEv>
    }
    80005308:	01813083          	ld	ra,24(sp)
    8000530c:	01013403          	ld	s0,16(sp)
    80005310:	00813483          	ld	s1,8(sp)
    80005314:	00013903          	ld	s2,0(sp)
    80005318:	02010113          	addi	sp,sp,32
    8000531c:	00008067          	ret

0000000080005320 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005320:	fe010113          	addi	sp,sp,-32
    80005324:	00113c23          	sd	ra,24(sp)
    80005328:	00813823          	sd	s0,16(sp)
    8000532c:	00913423          	sd	s1,8(sp)
    80005330:	01213023          	sd	s2,0(sp)
    80005334:	02010413          	addi	s0,sp,32
    80005338:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000533c:	00100793          	li	a5,1
    80005340:	02a7f863          	bgeu	a5,a0,80005370 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005344:	00a00793          	li	a5,10
    80005348:	02f577b3          	remu	a5,a0,a5
    8000534c:	02078e63          	beqz	a5,80005388 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005350:	fff48513          	addi	a0,s1,-1
    80005354:	00000097          	auipc	ra,0x0
    80005358:	fcc080e7          	jalr	-52(ra) # 80005320 <_ZL9fibonaccim>
    8000535c:	00050913          	mv	s2,a0
    80005360:	ffe48513          	addi	a0,s1,-2
    80005364:	00000097          	auipc	ra,0x0
    80005368:	fbc080e7          	jalr	-68(ra) # 80005320 <_ZL9fibonaccim>
    8000536c:	00a90533          	add	a0,s2,a0
}
    80005370:	01813083          	ld	ra,24(sp)
    80005374:	01013403          	ld	s0,16(sp)
    80005378:	00813483          	ld	s1,8(sp)
    8000537c:	00013903          	ld	s2,0(sp)
    80005380:	02010113          	addi	sp,sp,32
    80005384:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005388:	ffffc097          	auipc	ra,0xffffc
    8000538c:	05c080e7          	jalr	92(ra) # 800013e4 <_Z15thread_dispatchv>
    80005390:	fc1ff06f          	j	80005350 <_ZL9fibonaccim+0x30>

0000000080005394 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005394:	fe010113          	addi	sp,sp,-32
    80005398:	00113c23          	sd	ra,24(sp)
    8000539c:	00813823          	sd	s0,16(sp)
    800053a0:	00913423          	sd	s1,8(sp)
    800053a4:	01213023          	sd	s2,0(sp)
    800053a8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800053ac:	00a00493          	li	s1,10
    800053b0:	0400006f          	j	800053f0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800053b4:	00005517          	auipc	a0,0x5
    800053b8:	fbc50513          	addi	a0,a0,-68 # 8000a370 <CONSOLE_STATUS+0x360>
    800053bc:	00001097          	auipc	ra,0x1
    800053c0:	dc8080e7          	jalr	-568(ra) # 80006184 <_Z11printStringPKc>
    800053c4:	00000613          	li	a2,0
    800053c8:	00a00593          	li	a1,10
    800053cc:	00048513          	mv	a0,s1
    800053d0:	00001097          	auipc	ra,0x1
    800053d4:	f64080e7          	jalr	-156(ra) # 80006334 <_Z8printIntiii>
    800053d8:	00005517          	auipc	a0,0x5
    800053dc:	3a850513          	addi	a0,a0,936 # 8000a780 <CONSOLE_STATUS+0x770>
    800053e0:	00001097          	auipc	ra,0x1
    800053e4:	da4080e7          	jalr	-604(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800053e8:	0014849b          	addiw	s1,s1,1
    800053ec:	0ff4f493          	andi	s1,s1,255
    800053f0:	00c00793          	li	a5,12
    800053f4:	fc97f0e3          	bgeu	a5,s1,800053b4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800053f8:	00005517          	auipc	a0,0x5
    800053fc:	f8050513          	addi	a0,a0,-128 # 8000a378 <CONSOLE_STATUS+0x368>
    80005400:	00001097          	auipc	ra,0x1
    80005404:	d84080e7          	jalr	-636(ra) # 80006184 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005408:	00500313          	li	t1,5
    thread_dispatch();
    8000540c:	ffffc097          	auipc	ra,0xffffc
    80005410:	fd8080e7          	jalr	-40(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005414:	01000513          	li	a0,16
    80005418:	00000097          	auipc	ra,0x0
    8000541c:	f08080e7          	jalr	-248(ra) # 80005320 <_ZL9fibonaccim>
    80005420:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005424:	00005517          	auipc	a0,0x5
    80005428:	f6450513          	addi	a0,a0,-156 # 8000a388 <CONSOLE_STATUS+0x378>
    8000542c:	00001097          	auipc	ra,0x1
    80005430:	d58080e7          	jalr	-680(ra) # 80006184 <_Z11printStringPKc>
    80005434:	00000613          	li	a2,0
    80005438:	00a00593          	li	a1,10
    8000543c:	0009051b          	sext.w	a0,s2
    80005440:	00001097          	auipc	ra,0x1
    80005444:	ef4080e7          	jalr	-268(ra) # 80006334 <_Z8printIntiii>
    80005448:	00005517          	auipc	a0,0x5
    8000544c:	33850513          	addi	a0,a0,824 # 8000a780 <CONSOLE_STATUS+0x770>
    80005450:	00001097          	auipc	ra,0x1
    80005454:	d34080e7          	jalr	-716(ra) # 80006184 <_Z11printStringPKc>
    80005458:	0400006f          	j	80005498 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000545c:	00005517          	auipc	a0,0x5
    80005460:	f1450513          	addi	a0,a0,-236 # 8000a370 <CONSOLE_STATUS+0x360>
    80005464:	00001097          	auipc	ra,0x1
    80005468:	d20080e7          	jalr	-736(ra) # 80006184 <_Z11printStringPKc>
    8000546c:	00000613          	li	a2,0
    80005470:	00a00593          	li	a1,10
    80005474:	00048513          	mv	a0,s1
    80005478:	00001097          	auipc	ra,0x1
    8000547c:	ebc080e7          	jalr	-324(ra) # 80006334 <_Z8printIntiii>
    80005480:	00005517          	auipc	a0,0x5
    80005484:	30050513          	addi	a0,a0,768 # 8000a780 <CONSOLE_STATUS+0x770>
    80005488:	00001097          	auipc	ra,0x1
    8000548c:	cfc080e7          	jalr	-772(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005490:	0014849b          	addiw	s1,s1,1
    80005494:	0ff4f493          	andi	s1,s1,255
    80005498:	00f00793          	li	a5,15
    8000549c:	fc97f0e3          	bgeu	a5,s1,8000545c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800054a0:	00005517          	auipc	a0,0x5
    800054a4:	ef850513          	addi	a0,a0,-264 # 8000a398 <CONSOLE_STATUS+0x388>
    800054a8:	00001097          	auipc	ra,0x1
    800054ac:	cdc080e7          	jalr	-804(ra) # 80006184 <_Z11printStringPKc>
    finishedD = true;
    800054b0:	00100793          	li	a5,1
    800054b4:	00008717          	auipc	a4,0x8
    800054b8:	f0f70223          	sb	a5,-252(a4) # 8000d3b8 <_ZL9finishedD>
    thread_dispatch();
    800054bc:	ffffc097          	auipc	ra,0xffffc
    800054c0:	f28080e7          	jalr	-216(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800054c4:	01813083          	ld	ra,24(sp)
    800054c8:	01013403          	ld	s0,16(sp)
    800054cc:	00813483          	ld	s1,8(sp)
    800054d0:	00013903          	ld	s2,0(sp)
    800054d4:	02010113          	addi	sp,sp,32
    800054d8:	00008067          	ret

00000000800054dc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800054dc:	fe010113          	addi	sp,sp,-32
    800054e0:	00113c23          	sd	ra,24(sp)
    800054e4:	00813823          	sd	s0,16(sp)
    800054e8:	00913423          	sd	s1,8(sp)
    800054ec:	01213023          	sd	s2,0(sp)
    800054f0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800054f4:	00000493          	li	s1,0
    800054f8:	0400006f          	j	80005538 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800054fc:	00005517          	auipc	a0,0x5
    80005500:	e4450513          	addi	a0,a0,-444 # 8000a340 <CONSOLE_STATUS+0x330>
    80005504:	00001097          	auipc	ra,0x1
    80005508:	c80080e7          	jalr	-896(ra) # 80006184 <_Z11printStringPKc>
    8000550c:	00000613          	li	a2,0
    80005510:	00a00593          	li	a1,10
    80005514:	00048513          	mv	a0,s1
    80005518:	00001097          	auipc	ra,0x1
    8000551c:	e1c080e7          	jalr	-484(ra) # 80006334 <_Z8printIntiii>
    80005520:	00005517          	auipc	a0,0x5
    80005524:	26050513          	addi	a0,a0,608 # 8000a780 <CONSOLE_STATUS+0x770>
    80005528:	00001097          	auipc	ra,0x1
    8000552c:	c5c080e7          	jalr	-932(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005530:	0014849b          	addiw	s1,s1,1
    80005534:	0ff4f493          	andi	s1,s1,255
    80005538:	00200793          	li	a5,2
    8000553c:	fc97f0e3          	bgeu	a5,s1,800054fc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005540:	00005517          	auipc	a0,0x5
    80005544:	e0850513          	addi	a0,a0,-504 # 8000a348 <CONSOLE_STATUS+0x338>
    80005548:	00001097          	auipc	ra,0x1
    8000554c:	c3c080e7          	jalr	-964(ra) # 80006184 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005550:	00700313          	li	t1,7
    thread_dispatch();
    80005554:	ffffc097          	auipc	ra,0xffffc
    80005558:	e90080e7          	jalr	-368(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000555c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005560:	00005517          	auipc	a0,0x5
    80005564:	df850513          	addi	a0,a0,-520 # 8000a358 <CONSOLE_STATUS+0x348>
    80005568:	00001097          	auipc	ra,0x1
    8000556c:	c1c080e7          	jalr	-996(ra) # 80006184 <_Z11printStringPKc>
    80005570:	00000613          	li	a2,0
    80005574:	00a00593          	li	a1,10
    80005578:	0009051b          	sext.w	a0,s2
    8000557c:	00001097          	auipc	ra,0x1
    80005580:	db8080e7          	jalr	-584(ra) # 80006334 <_Z8printIntiii>
    80005584:	00005517          	auipc	a0,0x5
    80005588:	1fc50513          	addi	a0,a0,508 # 8000a780 <CONSOLE_STATUS+0x770>
    8000558c:	00001097          	auipc	ra,0x1
    80005590:	bf8080e7          	jalr	-1032(ra) # 80006184 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005594:	00c00513          	li	a0,12
    80005598:	00000097          	auipc	ra,0x0
    8000559c:	d88080e7          	jalr	-632(ra) # 80005320 <_ZL9fibonaccim>
    800055a0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800055a4:	00005517          	auipc	a0,0x5
    800055a8:	dbc50513          	addi	a0,a0,-580 # 8000a360 <CONSOLE_STATUS+0x350>
    800055ac:	00001097          	auipc	ra,0x1
    800055b0:	bd8080e7          	jalr	-1064(ra) # 80006184 <_Z11printStringPKc>
    800055b4:	00000613          	li	a2,0
    800055b8:	00a00593          	li	a1,10
    800055bc:	0009051b          	sext.w	a0,s2
    800055c0:	00001097          	auipc	ra,0x1
    800055c4:	d74080e7          	jalr	-652(ra) # 80006334 <_Z8printIntiii>
    800055c8:	00005517          	auipc	a0,0x5
    800055cc:	1b850513          	addi	a0,a0,440 # 8000a780 <CONSOLE_STATUS+0x770>
    800055d0:	00001097          	auipc	ra,0x1
    800055d4:	bb4080e7          	jalr	-1100(ra) # 80006184 <_Z11printStringPKc>
    800055d8:	0400006f          	j	80005618 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800055dc:	00005517          	auipc	a0,0x5
    800055e0:	d6450513          	addi	a0,a0,-668 # 8000a340 <CONSOLE_STATUS+0x330>
    800055e4:	00001097          	auipc	ra,0x1
    800055e8:	ba0080e7          	jalr	-1120(ra) # 80006184 <_Z11printStringPKc>
    800055ec:	00000613          	li	a2,0
    800055f0:	00a00593          	li	a1,10
    800055f4:	00048513          	mv	a0,s1
    800055f8:	00001097          	auipc	ra,0x1
    800055fc:	d3c080e7          	jalr	-708(ra) # 80006334 <_Z8printIntiii>
    80005600:	00005517          	auipc	a0,0x5
    80005604:	18050513          	addi	a0,a0,384 # 8000a780 <CONSOLE_STATUS+0x770>
    80005608:	00001097          	auipc	ra,0x1
    8000560c:	b7c080e7          	jalr	-1156(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005610:	0014849b          	addiw	s1,s1,1
    80005614:	0ff4f493          	andi	s1,s1,255
    80005618:	00500793          	li	a5,5
    8000561c:	fc97f0e3          	bgeu	a5,s1,800055dc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005620:	00005517          	auipc	a0,0x5
    80005624:	cf850513          	addi	a0,a0,-776 # 8000a318 <CONSOLE_STATUS+0x308>
    80005628:	00001097          	auipc	ra,0x1
    8000562c:	b5c080e7          	jalr	-1188(ra) # 80006184 <_Z11printStringPKc>
    finishedC = true;
    80005630:	00100793          	li	a5,1
    80005634:	00008717          	auipc	a4,0x8
    80005638:	d8f702a3          	sb	a5,-635(a4) # 8000d3b9 <_ZL9finishedC>
    thread_dispatch();
    8000563c:	ffffc097          	auipc	ra,0xffffc
    80005640:	da8080e7          	jalr	-600(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80005644:	01813083          	ld	ra,24(sp)
    80005648:	01013403          	ld	s0,16(sp)
    8000564c:	00813483          	ld	s1,8(sp)
    80005650:	00013903          	ld	s2,0(sp)
    80005654:	02010113          	addi	sp,sp,32
    80005658:	00008067          	ret

000000008000565c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000565c:	fe010113          	addi	sp,sp,-32
    80005660:	00113c23          	sd	ra,24(sp)
    80005664:	00813823          	sd	s0,16(sp)
    80005668:	00913423          	sd	s1,8(sp)
    8000566c:	01213023          	sd	s2,0(sp)
    80005670:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005674:	00000913          	li	s2,0
    80005678:	0380006f          	j	800056b0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000567c:	ffffc097          	auipc	ra,0xffffc
    80005680:	d68080e7          	jalr	-664(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005684:	00148493          	addi	s1,s1,1
    80005688:	000027b7          	lui	a5,0x2
    8000568c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005690:	0097ee63          	bltu	a5,s1,800056ac <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005694:	00000713          	li	a4,0
    80005698:	000077b7          	lui	a5,0x7
    8000569c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056a0:	fce7eee3          	bltu	a5,a4,8000567c <_ZL11workerBodyBPv+0x20>
    800056a4:	00170713          	addi	a4,a4,1
    800056a8:	ff1ff06f          	j	80005698 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800056ac:	00190913          	addi	s2,s2,1
    800056b0:	00f00793          	li	a5,15
    800056b4:	0527e063          	bltu	a5,s2,800056f4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800056b8:	00005517          	auipc	a0,0x5
    800056bc:	c7050513          	addi	a0,a0,-912 # 8000a328 <CONSOLE_STATUS+0x318>
    800056c0:	00001097          	auipc	ra,0x1
    800056c4:	ac4080e7          	jalr	-1340(ra) # 80006184 <_Z11printStringPKc>
    800056c8:	00000613          	li	a2,0
    800056cc:	00a00593          	li	a1,10
    800056d0:	0009051b          	sext.w	a0,s2
    800056d4:	00001097          	auipc	ra,0x1
    800056d8:	c60080e7          	jalr	-928(ra) # 80006334 <_Z8printIntiii>
    800056dc:	00005517          	auipc	a0,0x5
    800056e0:	0a450513          	addi	a0,a0,164 # 8000a780 <CONSOLE_STATUS+0x770>
    800056e4:	00001097          	auipc	ra,0x1
    800056e8:	aa0080e7          	jalr	-1376(ra) # 80006184 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800056ec:	00000493          	li	s1,0
    800056f0:	f99ff06f          	j	80005688 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800056f4:	00005517          	auipc	a0,0x5
    800056f8:	c3c50513          	addi	a0,a0,-964 # 8000a330 <CONSOLE_STATUS+0x320>
    800056fc:	00001097          	auipc	ra,0x1
    80005700:	a88080e7          	jalr	-1400(ra) # 80006184 <_Z11printStringPKc>
    finishedB = true;
    80005704:	00100793          	li	a5,1
    80005708:	00008717          	auipc	a4,0x8
    8000570c:	caf70923          	sb	a5,-846(a4) # 8000d3ba <_ZL9finishedB>
    thread_dispatch();
    80005710:	ffffc097          	auipc	ra,0xffffc
    80005714:	cd4080e7          	jalr	-812(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80005718:	01813083          	ld	ra,24(sp)
    8000571c:	01013403          	ld	s0,16(sp)
    80005720:	00813483          	ld	s1,8(sp)
    80005724:	00013903          	ld	s2,0(sp)
    80005728:	02010113          	addi	sp,sp,32
    8000572c:	00008067          	ret

0000000080005730 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005730:	fe010113          	addi	sp,sp,-32
    80005734:	00113c23          	sd	ra,24(sp)
    80005738:	00813823          	sd	s0,16(sp)
    8000573c:	00913423          	sd	s1,8(sp)
    80005740:	01213023          	sd	s2,0(sp)
    80005744:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005748:	00000913          	li	s2,0
    8000574c:	0380006f          	j	80005784 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005750:	ffffc097          	auipc	ra,0xffffc
    80005754:	c94080e7          	jalr	-876(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005758:	00148493          	addi	s1,s1,1
    8000575c:	000027b7          	lui	a5,0x2
    80005760:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005764:	0097ee63          	bltu	a5,s1,80005780 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005768:	00000713          	li	a4,0
    8000576c:	000077b7          	lui	a5,0x7
    80005770:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005774:	fce7eee3          	bltu	a5,a4,80005750 <_ZL11workerBodyAPv+0x20>
    80005778:	00170713          	addi	a4,a4,1
    8000577c:	ff1ff06f          	j	8000576c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005780:	00190913          	addi	s2,s2,1
    80005784:	00900793          	li	a5,9
    80005788:	0527e063          	bltu	a5,s2,800057c8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000578c:	00005517          	auipc	a0,0x5
    80005790:	b8450513          	addi	a0,a0,-1148 # 8000a310 <CONSOLE_STATUS+0x300>
    80005794:	00001097          	auipc	ra,0x1
    80005798:	9f0080e7          	jalr	-1552(ra) # 80006184 <_Z11printStringPKc>
    8000579c:	00000613          	li	a2,0
    800057a0:	00a00593          	li	a1,10
    800057a4:	0009051b          	sext.w	a0,s2
    800057a8:	00001097          	auipc	ra,0x1
    800057ac:	b8c080e7          	jalr	-1140(ra) # 80006334 <_Z8printIntiii>
    800057b0:	00005517          	auipc	a0,0x5
    800057b4:	fd050513          	addi	a0,a0,-48 # 8000a780 <CONSOLE_STATUS+0x770>
    800057b8:	00001097          	auipc	ra,0x1
    800057bc:	9cc080e7          	jalr	-1588(ra) # 80006184 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800057c0:	00000493          	li	s1,0
    800057c4:	f99ff06f          	j	8000575c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800057c8:	00005517          	auipc	a0,0x5
    800057cc:	b5050513          	addi	a0,a0,-1200 # 8000a318 <CONSOLE_STATUS+0x308>
    800057d0:	00001097          	auipc	ra,0x1
    800057d4:	9b4080e7          	jalr	-1612(ra) # 80006184 <_Z11printStringPKc>
    finishedA = true;
    800057d8:	00100793          	li	a5,1
    800057dc:	00008717          	auipc	a4,0x8
    800057e0:	bcf70fa3          	sb	a5,-1057(a4) # 8000d3bb <_ZL9finishedA>
}
    800057e4:	01813083          	ld	ra,24(sp)
    800057e8:	01013403          	ld	s0,16(sp)
    800057ec:	00813483          	ld	s1,8(sp)
    800057f0:	00013903          	ld	s2,0(sp)
    800057f4:	02010113          	addi	sp,sp,32
    800057f8:	00008067          	ret

00000000800057fc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800057fc:	fd010113          	addi	sp,sp,-48
    80005800:	02113423          	sd	ra,40(sp)
    80005804:	02813023          	sd	s0,32(sp)
    80005808:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000580c:	00000613          	li	a2,0
    80005810:	00000597          	auipc	a1,0x0
    80005814:	f2058593          	addi	a1,a1,-224 # 80005730 <_ZL11workerBodyAPv>
    80005818:	fd040513          	addi	a0,s0,-48
    8000581c:	ffffc097          	auipc	ra,0xffffc
    80005820:	b0c080e7          	jalr	-1268(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005824:	00005517          	auipc	a0,0x5
    80005828:	b8450513          	addi	a0,a0,-1148 # 8000a3a8 <CONSOLE_STATUS+0x398>
    8000582c:	00001097          	auipc	ra,0x1
    80005830:	958080e7          	jalr	-1704(ra) # 80006184 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005834:	00000613          	li	a2,0
    80005838:	00000597          	auipc	a1,0x0
    8000583c:	e2458593          	addi	a1,a1,-476 # 8000565c <_ZL11workerBodyBPv>
    80005840:	fd840513          	addi	a0,s0,-40
    80005844:	ffffc097          	auipc	ra,0xffffc
    80005848:	ae4080e7          	jalr	-1308(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000584c:	00005517          	auipc	a0,0x5
    80005850:	b7450513          	addi	a0,a0,-1164 # 8000a3c0 <CONSOLE_STATUS+0x3b0>
    80005854:	00001097          	auipc	ra,0x1
    80005858:	930080e7          	jalr	-1744(ra) # 80006184 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000585c:	00000613          	li	a2,0
    80005860:	00000597          	auipc	a1,0x0
    80005864:	c7c58593          	addi	a1,a1,-900 # 800054dc <_ZL11workerBodyCPv>
    80005868:	fe040513          	addi	a0,s0,-32
    8000586c:	ffffc097          	auipc	ra,0xffffc
    80005870:	abc080e7          	jalr	-1348(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005874:	00005517          	auipc	a0,0x5
    80005878:	b6450513          	addi	a0,a0,-1180 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    8000587c:	00001097          	auipc	ra,0x1
    80005880:	908080e7          	jalr	-1784(ra) # 80006184 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005884:	00000613          	li	a2,0
    80005888:	00000597          	auipc	a1,0x0
    8000588c:	b0c58593          	addi	a1,a1,-1268 # 80005394 <_ZL11workerBodyDPv>
    80005890:	fe840513          	addi	a0,s0,-24
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	a94080e7          	jalr	-1388(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000589c:	00005517          	auipc	a0,0x5
    800058a0:	b5450513          	addi	a0,a0,-1196 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    800058a4:	00001097          	auipc	ra,0x1
    800058a8:	8e0080e7          	jalr	-1824(ra) # 80006184 <_Z11printStringPKc>
    800058ac:	00c0006f          	j	800058b8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800058b0:	ffffc097          	auipc	ra,0xffffc
    800058b4:	b34080e7          	jalr	-1228(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800058b8:	00008797          	auipc	a5,0x8
    800058bc:	b037c783          	lbu	a5,-1277(a5) # 8000d3bb <_ZL9finishedA>
    800058c0:	fe0788e3          	beqz	a5,800058b0 <_Z18Threads_C_API_testv+0xb4>
    800058c4:	00008797          	auipc	a5,0x8
    800058c8:	af67c783          	lbu	a5,-1290(a5) # 8000d3ba <_ZL9finishedB>
    800058cc:	fe0782e3          	beqz	a5,800058b0 <_Z18Threads_C_API_testv+0xb4>
    800058d0:	00008797          	auipc	a5,0x8
    800058d4:	ae97c783          	lbu	a5,-1303(a5) # 8000d3b9 <_ZL9finishedC>
    800058d8:	fc078ce3          	beqz	a5,800058b0 <_Z18Threads_C_API_testv+0xb4>
    800058dc:	00008797          	auipc	a5,0x8
    800058e0:	adc7c783          	lbu	a5,-1316(a5) # 8000d3b8 <_ZL9finishedD>
    800058e4:	fc0786e3          	beqz	a5,800058b0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800058e8:	02813083          	ld	ra,40(sp)
    800058ec:	02013403          	ld	s0,32(sp)
    800058f0:	03010113          	addi	sp,sp,48
    800058f4:	00008067          	ret

00000000800058f8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800058f8:	fd010113          	addi	sp,sp,-48
    800058fc:	02113423          	sd	ra,40(sp)
    80005900:	02813023          	sd	s0,32(sp)
    80005904:	00913c23          	sd	s1,24(sp)
    80005908:	01213823          	sd	s2,16(sp)
    8000590c:	01313423          	sd	s3,8(sp)
    80005910:	03010413          	addi	s0,sp,48
    80005914:	00050993          	mv	s3,a0
    80005918:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000591c:	00000913          	li	s2,0
    80005920:	00c0006f          	j	8000592c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005924:	ffffd097          	auipc	ra,0xffffd
    80005928:	f24080e7          	jalr	-220(ra) # 80002848 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000592c:	ffffc097          	auipc	ra,0xffffc
    80005930:	cdc080e7          	jalr	-804(ra) # 80001608 <_Z4getcv>
    80005934:	0005059b          	sext.w	a1,a0
    80005938:	01b00793          	li	a5,27
    8000593c:	02f58a63          	beq	a1,a5,80005970 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005940:	0084b503          	ld	a0,8(s1)
    80005944:	00001097          	auipc	ra,0x1
    80005948:	c64080e7          	jalr	-924(ra) # 800065a8 <_ZN9BufferCPP3putEi>
        i++;
    8000594c:	0019071b          	addiw	a4,s2,1
    80005950:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005954:	0004a683          	lw	a3,0(s1)
    80005958:	0026979b          	slliw	a5,a3,0x2
    8000595c:	00d787bb          	addw	a5,a5,a3
    80005960:	0017979b          	slliw	a5,a5,0x1
    80005964:	02f767bb          	remw	a5,a4,a5
    80005968:	fc0792e3          	bnez	a5,8000592c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000596c:	fb9ff06f          	j	80005924 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005970:	00100793          	li	a5,1
    80005974:	00008717          	auipc	a4,0x8
    80005978:	a4f72623          	sw	a5,-1460(a4) # 8000d3c0 <_ZL9threadEnd>
    td->buffer->put('!');
    8000597c:	0209b783          	ld	a5,32(s3)
    80005980:	02100593          	li	a1,33
    80005984:	0087b503          	ld	a0,8(a5)
    80005988:	00001097          	auipc	ra,0x1
    8000598c:	c20080e7          	jalr	-992(ra) # 800065a8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005990:	0104b503          	ld	a0,16(s1)
    80005994:	ffffd097          	auipc	ra,0xffffd
    80005998:	08c080e7          	jalr	140(ra) # 80002a20 <_ZN9Semaphore6signalEv>
}
    8000599c:	02813083          	ld	ra,40(sp)
    800059a0:	02013403          	ld	s0,32(sp)
    800059a4:	01813483          	ld	s1,24(sp)
    800059a8:	01013903          	ld	s2,16(sp)
    800059ac:	00813983          	ld	s3,8(sp)
    800059b0:	03010113          	addi	sp,sp,48
    800059b4:	00008067          	ret

00000000800059b8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800059b8:	fe010113          	addi	sp,sp,-32
    800059bc:	00113c23          	sd	ra,24(sp)
    800059c0:	00813823          	sd	s0,16(sp)
    800059c4:	00913423          	sd	s1,8(sp)
    800059c8:	01213023          	sd	s2,0(sp)
    800059cc:	02010413          	addi	s0,sp,32
    800059d0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800059d4:	00000913          	li	s2,0
    800059d8:	00c0006f          	j	800059e4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800059dc:	ffffd097          	auipc	ra,0xffffd
    800059e0:	e6c080e7          	jalr	-404(ra) # 80002848 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800059e4:	00008797          	auipc	a5,0x8
    800059e8:	9dc7a783          	lw	a5,-1572(a5) # 8000d3c0 <_ZL9threadEnd>
    800059ec:	02079e63          	bnez	a5,80005a28 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800059f0:	0004a583          	lw	a1,0(s1)
    800059f4:	0305859b          	addiw	a1,a1,48
    800059f8:	0084b503          	ld	a0,8(s1)
    800059fc:	00001097          	auipc	ra,0x1
    80005a00:	bac080e7          	jalr	-1108(ra) # 800065a8 <_ZN9BufferCPP3putEi>
        i++;
    80005a04:	0019071b          	addiw	a4,s2,1
    80005a08:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005a0c:	0004a683          	lw	a3,0(s1)
    80005a10:	0026979b          	slliw	a5,a3,0x2
    80005a14:	00d787bb          	addw	a5,a5,a3
    80005a18:	0017979b          	slliw	a5,a5,0x1
    80005a1c:	02f767bb          	remw	a5,a4,a5
    80005a20:	fc0792e3          	bnez	a5,800059e4 <_ZN12ProducerSync8producerEPv+0x2c>
    80005a24:	fb9ff06f          	j	800059dc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005a28:	0104b503          	ld	a0,16(s1)
    80005a2c:	ffffd097          	auipc	ra,0xffffd
    80005a30:	ff4080e7          	jalr	-12(ra) # 80002a20 <_ZN9Semaphore6signalEv>
}
    80005a34:	01813083          	ld	ra,24(sp)
    80005a38:	01013403          	ld	s0,16(sp)
    80005a3c:	00813483          	ld	s1,8(sp)
    80005a40:	00013903          	ld	s2,0(sp)
    80005a44:	02010113          	addi	sp,sp,32
    80005a48:	00008067          	ret

0000000080005a4c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005a4c:	fd010113          	addi	sp,sp,-48
    80005a50:	02113423          	sd	ra,40(sp)
    80005a54:	02813023          	sd	s0,32(sp)
    80005a58:	00913c23          	sd	s1,24(sp)
    80005a5c:	01213823          	sd	s2,16(sp)
    80005a60:	01313423          	sd	s3,8(sp)
    80005a64:	01413023          	sd	s4,0(sp)
    80005a68:	03010413          	addi	s0,sp,48
    80005a6c:	00050993          	mv	s3,a0
    80005a70:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005a74:	00000a13          	li	s4,0
    80005a78:	01c0006f          	j	80005a94 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005a7c:	ffffd097          	auipc	ra,0xffffd
    80005a80:	dcc080e7          	jalr	-564(ra) # 80002848 <_ZN6Thread8dispatchEv>
    80005a84:	0500006f          	j	80005ad4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005a88:	00a00513          	li	a0,10
    80005a8c:	ffffc097          	auipc	ra,0xffffc
    80005a90:	bb0080e7          	jalr	-1104(ra) # 8000163c <_Z4putcc>
    while (!threadEnd) {
    80005a94:	00008797          	auipc	a5,0x8
    80005a98:	92c7a783          	lw	a5,-1748(a5) # 8000d3c0 <_ZL9threadEnd>
    80005a9c:	06079263          	bnez	a5,80005b00 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005aa0:	00893503          	ld	a0,8(s2)
    80005aa4:	00001097          	auipc	ra,0x1
    80005aa8:	b94080e7          	jalr	-1132(ra) # 80006638 <_ZN9BufferCPP3getEv>
        i++;
    80005aac:	001a049b          	addiw	s1,s4,1
    80005ab0:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005ab4:	0ff57513          	andi	a0,a0,255
    80005ab8:	ffffc097          	auipc	ra,0xffffc
    80005abc:	b84080e7          	jalr	-1148(ra) # 8000163c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005ac0:	00092703          	lw	a4,0(s2)
    80005ac4:	0027179b          	slliw	a5,a4,0x2
    80005ac8:	00e787bb          	addw	a5,a5,a4
    80005acc:	02f4e7bb          	remw	a5,s1,a5
    80005ad0:	fa0786e3          	beqz	a5,80005a7c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005ad4:	05000793          	li	a5,80
    80005ad8:	02f4e4bb          	remw	s1,s1,a5
    80005adc:	fa049ce3          	bnez	s1,80005a94 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005ae0:	fa9ff06f          	j	80005a88 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005ae4:	0209b783          	ld	a5,32(s3)
    80005ae8:	0087b503          	ld	a0,8(a5)
    80005aec:	00001097          	auipc	ra,0x1
    80005af0:	b4c080e7          	jalr	-1204(ra) # 80006638 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005af4:	0ff57513          	andi	a0,a0,255
    80005af8:	ffffd097          	auipc	ra,0xffffd
    80005afc:	fe8080e7          	jalr	-24(ra) # 80002ae0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005b00:	0209b783          	ld	a5,32(s3)
    80005b04:	0087b503          	ld	a0,8(a5)
    80005b08:	00001097          	auipc	ra,0x1
    80005b0c:	bbc080e7          	jalr	-1092(ra) # 800066c4 <_ZN9BufferCPP6getCntEv>
    80005b10:	fca04ae3          	bgtz	a0,80005ae4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005b14:	01093503          	ld	a0,16(s2)
    80005b18:	ffffd097          	auipc	ra,0xffffd
    80005b1c:	f08080e7          	jalr	-248(ra) # 80002a20 <_ZN9Semaphore6signalEv>
}
    80005b20:	02813083          	ld	ra,40(sp)
    80005b24:	02013403          	ld	s0,32(sp)
    80005b28:	01813483          	ld	s1,24(sp)
    80005b2c:	01013903          	ld	s2,16(sp)
    80005b30:	00813983          	ld	s3,8(sp)
    80005b34:	00013a03          	ld	s4,0(sp)
    80005b38:	03010113          	addi	sp,sp,48
    80005b3c:	00008067          	ret

0000000080005b40 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005b40:	f8010113          	addi	sp,sp,-128
    80005b44:	06113c23          	sd	ra,120(sp)
    80005b48:	06813823          	sd	s0,112(sp)
    80005b4c:	06913423          	sd	s1,104(sp)
    80005b50:	07213023          	sd	s2,96(sp)
    80005b54:	05313c23          	sd	s3,88(sp)
    80005b58:	05413823          	sd	s4,80(sp)
    80005b5c:	05513423          	sd	s5,72(sp)
    80005b60:	05613023          	sd	s6,64(sp)
    80005b64:	03713c23          	sd	s7,56(sp)
    80005b68:	03813823          	sd	s8,48(sp)
    80005b6c:	03913423          	sd	s9,40(sp)
    80005b70:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005b74:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005b78:	00004517          	auipc	a0,0x4
    80005b7c:	69850513          	addi	a0,a0,1688 # 8000a210 <CONSOLE_STATUS+0x200>
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	604080e7          	jalr	1540(ra) # 80006184 <_Z11printStringPKc>
    getString(input, 30);
    80005b88:	01e00593          	li	a1,30
    80005b8c:	f8040493          	addi	s1,s0,-128
    80005b90:	00048513          	mv	a0,s1
    80005b94:	00000097          	auipc	ra,0x0
    80005b98:	678080e7          	jalr	1656(ra) # 8000620c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005b9c:	00048513          	mv	a0,s1
    80005ba0:	00000097          	auipc	ra,0x0
    80005ba4:	744080e7          	jalr	1860(ra) # 800062e4 <_Z11stringToIntPKc>
    80005ba8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005bac:	00004517          	auipc	a0,0x4
    80005bb0:	68450513          	addi	a0,a0,1668 # 8000a230 <CONSOLE_STATUS+0x220>
    80005bb4:	00000097          	auipc	ra,0x0
    80005bb8:	5d0080e7          	jalr	1488(ra) # 80006184 <_Z11printStringPKc>
    getString(input, 30);
    80005bbc:	01e00593          	li	a1,30
    80005bc0:	00048513          	mv	a0,s1
    80005bc4:	00000097          	auipc	ra,0x0
    80005bc8:	648080e7          	jalr	1608(ra) # 8000620c <_Z9getStringPci>
    n = stringToInt(input);
    80005bcc:	00048513          	mv	a0,s1
    80005bd0:	00000097          	auipc	ra,0x0
    80005bd4:	714080e7          	jalr	1812(ra) # 800062e4 <_Z11stringToIntPKc>
    80005bd8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005bdc:	00004517          	auipc	a0,0x4
    80005be0:	67450513          	addi	a0,a0,1652 # 8000a250 <CONSOLE_STATUS+0x240>
    80005be4:	00000097          	auipc	ra,0x0
    80005be8:	5a0080e7          	jalr	1440(ra) # 80006184 <_Z11printStringPKc>
    80005bec:	00000613          	li	a2,0
    80005bf0:	00a00593          	li	a1,10
    80005bf4:	00090513          	mv	a0,s2
    80005bf8:	00000097          	auipc	ra,0x0
    80005bfc:	73c080e7          	jalr	1852(ra) # 80006334 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005c00:	00004517          	auipc	a0,0x4
    80005c04:	66850513          	addi	a0,a0,1640 # 8000a268 <CONSOLE_STATUS+0x258>
    80005c08:	00000097          	auipc	ra,0x0
    80005c0c:	57c080e7          	jalr	1404(ra) # 80006184 <_Z11printStringPKc>
    80005c10:	00000613          	li	a2,0
    80005c14:	00a00593          	li	a1,10
    80005c18:	00048513          	mv	a0,s1
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	718080e7          	jalr	1816(ra) # 80006334 <_Z8printIntiii>
    printString(".\n");
    80005c24:	00004517          	auipc	a0,0x4
    80005c28:	65c50513          	addi	a0,a0,1628 # 8000a280 <CONSOLE_STATUS+0x270>
    80005c2c:	00000097          	auipc	ra,0x0
    80005c30:	558080e7          	jalr	1368(ra) # 80006184 <_Z11printStringPKc>
    if(threadNum > n) {
    80005c34:	0324c463          	blt	s1,s2,80005c5c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005c38:	03205c63          	blez	s2,80005c70 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005c3c:	03800513          	li	a0,56
    80005c40:	ffffd097          	auipc	ra,0xffffd
    80005c44:	a98080e7          	jalr	-1384(ra) # 800026d8 <_Znwm>
    80005c48:	00050a93          	mv	s5,a0
    80005c4c:	00048593          	mv	a1,s1
    80005c50:	00001097          	auipc	ra,0x1
    80005c54:	804080e7          	jalr	-2044(ra) # 80006454 <_ZN9BufferCPPC1Ei>
    80005c58:	0300006f          	j	80005c88 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005c5c:	00004517          	auipc	a0,0x4
    80005c60:	62c50513          	addi	a0,a0,1580 # 8000a288 <CONSOLE_STATUS+0x278>
    80005c64:	00000097          	auipc	ra,0x0
    80005c68:	520080e7          	jalr	1312(ra) # 80006184 <_Z11printStringPKc>
        return;
    80005c6c:	0140006f          	j	80005c80 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005c70:	00004517          	auipc	a0,0x4
    80005c74:	65850513          	addi	a0,a0,1624 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80005c78:	00000097          	auipc	ra,0x0
    80005c7c:	50c080e7          	jalr	1292(ra) # 80006184 <_Z11printStringPKc>
        return;
    80005c80:	000b8113          	mv	sp,s7
    80005c84:	2380006f          	j	80005ebc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005c88:	01000513          	li	a0,16
    80005c8c:	ffffd097          	auipc	ra,0xffffd
    80005c90:	a4c080e7          	jalr	-1460(ra) # 800026d8 <_Znwm>
    80005c94:	00050493          	mv	s1,a0
    80005c98:	00000593          	li	a1,0
    80005c9c:	ffffd097          	auipc	ra,0xffffd
    80005ca0:	d1c080e7          	jalr	-740(ra) # 800029b8 <_ZN9SemaphoreC1Ej>
    80005ca4:	00007797          	auipc	a5,0x7
    80005ca8:	7297b223          	sd	s1,1828(a5) # 8000d3c8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005cac:	00391793          	slli	a5,s2,0x3
    80005cb0:	00f78793          	addi	a5,a5,15
    80005cb4:	ff07f793          	andi	a5,a5,-16
    80005cb8:	40f10133          	sub	sp,sp,a5
    80005cbc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005cc0:	0019071b          	addiw	a4,s2,1
    80005cc4:	00171793          	slli	a5,a4,0x1
    80005cc8:	00e787b3          	add	a5,a5,a4
    80005ccc:	00379793          	slli	a5,a5,0x3
    80005cd0:	00f78793          	addi	a5,a5,15
    80005cd4:	ff07f793          	andi	a5,a5,-16
    80005cd8:	40f10133          	sub	sp,sp,a5
    80005cdc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005ce0:	00191c13          	slli	s8,s2,0x1
    80005ce4:	012c07b3          	add	a5,s8,s2
    80005ce8:	00379793          	slli	a5,a5,0x3
    80005cec:	00fa07b3          	add	a5,s4,a5
    80005cf0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005cf4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005cf8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005cfc:	02800513          	li	a0,40
    80005d00:	ffffd097          	auipc	ra,0xffffd
    80005d04:	9d8080e7          	jalr	-1576(ra) # 800026d8 <_Znwm>
    80005d08:	00050b13          	mv	s6,a0
    80005d0c:	012c0c33          	add	s8,s8,s2
    80005d10:	003c1c13          	slli	s8,s8,0x3
    80005d14:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005d18:	ffffd097          	auipc	ra,0xffffd
    80005d1c:	af8080e7          	jalr	-1288(ra) # 80002810 <_ZN6ThreadC1Ev>
    80005d20:	00007797          	auipc	a5,0x7
    80005d24:	3c878793          	addi	a5,a5,968 # 8000d0e8 <_ZTV12ConsumerSync+0x10>
    80005d28:	00fb3023          	sd	a5,0(s6)
    80005d2c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005d30:	000b0513          	mv	a0,s6
    80005d34:	ffffd097          	auipc	ra,0xffffd
    80005d38:	b3c080e7          	jalr	-1220(ra) # 80002870 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005d3c:	00000493          	li	s1,0
    80005d40:	0380006f          	j	80005d78 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005d44:	00007797          	auipc	a5,0x7
    80005d48:	37c78793          	addi	a5,a5,892 # 8000d0c0 <_ZTV12ProducerSync+0x10>
    80005d4c:	00fcb023          	sd	a5,0(s9)
    80005d50:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005d54:	00349793          	slli	a5,s1,0x3
    80005d58:	00f987b3          	add	a5,s3,a5
    80005d5c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005d60:	00349793          	slli	a5,s1,0x3
    80005d64:	00f987b3          	add	a5,s3,a5
    80005d68:	0007b503          	ld	a0,0(a5)
    80005d6c:	ffffd097          	auipc	ra,0xffffd
    80005d70:	b04080e7          	jalr	-1276(ra) # 80002870 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005d74:	0014849b          	addiw	s1,s1,1
    80005d78:	0b24d063          	bge	s1,s2,80005e18 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005d7c:	00149793          	slli	a5,s1,0x1
    80005d80:	009787b3          	add	a5,a5,s1
    80005d84:	00379793          	slli	a5,a5,0x3
    80005d88:	00fa07b3          	add	a5,s4,a5
    80005d8c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005d90:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005d94:	00007717          	auipc	a4,0x7
    80005d98:	63473703          	ld	a4,1588(a4) # 8000d3c8 <_ZL10waitForAll>
    80005d9c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005da0:	02905863          	blez	s1,80005dd0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005da4:	02800513          	li	a0,40
    80005da8:	ffffd097          	auipc	ra,0xffffd
    80005dac:	930080e7          	jalr	-1744(ra) # 800026d8 <_Znwm>
    80005db0:	00050c93          	mv	s9,a0
    80005db4:	00149c13          	slli	s8,s1,0x1
    80005db8:	009c0c33          	add	s8,s8,s1
    80005dbc:	003c1c13          	slli	s8,s8,0x3
    80005dc0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005dc4:	ffffd097          	auipc	ra,0xffffd
    80005dc8:	a4c080e7          	jalr	-1460(ra) # 80002810 <_ZN6ThreadC1Ev>
    80005dcc:	f79ff06f          	j	80005d44 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005dd0:	02800513          	li	a0,40
    80005dd4:	ffffd097          	auipc	ra,0xffffd
    80005dd8:	904080e7          	jalr	-1788(ra) # 800026d8 <_Znwm>
    80005ddc:	00050c93          	mv	s9,a0
    80005de0:	00149c13          	slli	s8,s1,0x1
    80005de4:	009c0c33          	add	s8,s8,s1
    80005de8:	003c1c13          	slli	s8,s8,0x3
    80005dec:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005df0:	ffffd097          	auipc	ra,0xffffd
    80005df4:	a20080e7          	jalr	-1504(ra) # 80002810 <_ZN6ThreadC1Ev>
    80005df8:	00007797          	auipc	a5,0x7
    80005dfc:	2a078793          	addi	a5,a5,672 # 8000d098 <_ZTV16ProducerKeyboard+0x10>
    80005e00:	00fcb023          	sd	a5,0(s9)
    80005e04:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005e08:	00349793          	slli	a5,s1,0x3
    80005e0c:	00f987b3          	add	a5,s3,a5
    80005e10:	0197b023          	sd	s9,0(a5)
    80005e14:	f4dff06f          	j	80005d60 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005e18:	ffffd097          	auipc	ra,0xffffd
    80005e1c:	a30080e7          	jalr	-1488(ra) # 80002848 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005e20:	00000493          	li	s1,0
    80005e24:	00994e63          	blt	s2,s1,80005e40 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005e28:	00007517          	auipc	a0,0x7
    80005e2c:	5a053503          	ld	a0,1440(a0) # 8000d3c8 <_ZL10waitForAll>
    80005e30:	ffffd097          	auipc	ra,0xffffd
    80005e34:	bc4080e7          	jalr	-1084(ra) # 800029f4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005e38:	0014849b          	addiw	s1,s1,1
    80005e3c:	fe9ff06f          	j	80005e24 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005e40:	00000493          	li	s1,0
    80005e44:	0080006f          	j	80005e4c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005e48:	0014849b          	addiw	s1,s1,1
    80005e4c:	0324d263          	bge	s1,s2,80005e70 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005e50:	00349793          	slli	a5,s1,0x3
    80005e54:	00f987b3          	add	a5,s3,a5
    80005e58:	0007b503          	ld	a0,0(a5)
    80005e5c:	fe0506e3          	beqz	a0,80005e48 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005e60:	00053783          	ld	a5,0(a0)
    80005e64:	0087b783          	ld	a5,8(a5)
    80005e68:	000780e7          	jalr	a5
    80005e6c:	fddff06f          	j	80005e48 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005e70:	000b0a63          	beqz	s6,80005e84 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005e74:	000b3783          	ld	a5,0(s6)
    80005e78:	0087b783          	ld	a5,8(a5)
    80005e7c:	000b0513          	mv	a0,s6
    80005e80:	000780e7          	jalr	a5
    delete waitForAll;
    80005e84:	00007517          	auipc	a0,0x7
    80005e88:	54453503          	ld	a0,1348(a0) # 8000d3c8 <_ZL10waitForAll>
    80005e8c:	00050863          	beqz	a0,80005e9c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005e90:	00053783          	ld	a5,0(a0)
    80005e94:	0087b783          	ld	a5,8(a5)
    80005e98:	000780e7          	jalr	a5
    delete buffer;
    80005e9c:	000a8e63          	beqz	s5,80005eb8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005ea0:	000a8513          	mv	a0,s5
    80005ea4:	00001097          	auipc	ra,0x1
    80005ea8:	8a8080e7          	jalr	-1880(ra) # 8000674c <_ZN9BufferCPPD1Ev>
    80005eac:	000a8513          	mv	a0,s5
    80005eb0:	ffffd097          	auipc	ra,0xffffd
    80005eb4:	878080e7          	jalr	-1928(ra) # 80002728 <_ZdlPv>
    80005eb8:	000b8113          	mv	sp,s7

}
    80005ebc:	f8040113          	addi	sp,s0,-128
    80005ec0:	07813083          	ld	ra,120(sp)
    80005ec4:	07013403          	ld	s0,112(sp)
    80005ec8:	06813483          	ld	s1,104(sp)
    80005ecc:	06013903          	ld	s2,96(sp)
    80005ed0:	05813983          	ld	s3,88(sp)
    80005ed4:	05013a03          	ld	s4,80(sp)
    80005ed8:	04813a83          	ld	s5,72(sp)
    80005edc:	04013b03          	ld	s6,64(sp)
    80005ee0:	03813b83          	ld	s7,56(sp)
    80005ee4:	03013c03          	ld	s8,48(sp)
    80005ee8:	02813c83          	ld	s9,40(sp)
    80005eec:	08010113          	addi	sp,sp,128
    80005ef0:	00008067          	ret
    80005ef4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005ef8:	000a8513          	mv	a0,s5
    80005efc:	ffffd097          	auipc	ra,0xffffd
    80005f00:	82c080e7          	jalr	-2004(ra) # 80002728 <_ZdlPv>
    80005f04:	00048513          	mv	a0,s1
    80005f08:	00008097          	auipc	ra,0x8
    80005f0c:	5a0080e7          	jalr	1440(ra) # 8000e4a8 <_Unwind_Resume>
    80005f10:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005f14:	00048513          	mv	a0,s1
    80005f18:	ffffd097          	auipc	ra,0xffffd
    80005f1c:	810080e7          	jalr	-2032(ra) # 80002728 <_ZdlPv>
    80005f20:	00090513          	mv	a0,s2
    80005f24:	00008097          	auipc	ra,0x8
    80005f28:	584080e7          	jalr	1412(ra) # 8000e4a8 <_Unwind_Resume>
    80005f2c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005f30:	000b0513          	mv	a0,s6
    80005f34:	ffffc097          	auipc	ra,0xffffc
    80005f38:	7f4080e7          	jalr	2036(ra) # 80002728 <_ZdlPv>
    80005f3c:	00048513          	mv	a0,s1
    80005f40:	00008097          	auipc	ra,0x8
    80005f44:	568080e7          	jalr	1384(ra) # 8000e4a8 <_Unwind_Resume>
    80005f48:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005f4c:	000c8513          	mv	a0,s9
    80005f50:	ffffc097          	auipc	ra,0xffffc
    80005f54:	7d8080e7          	jalr	2008(ra) # 80002728 <_ZdlPv>
    80005f58:	00048513          	mv	a0,s1
    80005f5c:	00008097          	auipc	ra,0x8
    80005f60:	54c080e7          	jalr	1356(ra) # 8000e4a8 <_Unwind_Resume>
    80005f64:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005f68:	000c8513          	mv	a0,s9
    80005f6c:	ffffc097          	auipc	ra,0xffffc
    80005f70:	7bc080e7          	jalr	1980(ra) # 80002728 <_ZdlPv>
    80005f74:	00048513          	mv	a0,s1
    80005f78:	00008097          	auipc	ra,0x8
    80005f7c:	530080e7          	jalr	1328(ra) # 8000e4a8 <_Unwind_Resume>

0000000080005f80 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005f80:	ff010113          	addi	sp,sp,-16
    80005f84:	00113423          	sd	ra,8(sp)
    80005f88:	00813023          	sd	s0,0(sp)
    80005f8c:	01010413          	addi	s0,sp,16
    80005f90:	00007797          	auipc	a5,0x7
    80005f94:	15878793          	addi	a5,a5,344 # 8000d0e8 <_ZTV12ConsumerSync+0x10>
    80005f98:	00f53023          	sd	a5,0(a0)
    80005f9c:	ffffc097          	auipc	ra,0xffffc
    80005fa0:	6ec080e7          	jalr	1772(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005fa4:	00813083          	ld	ra,8(sp)
    80005fa8:	00013403          	ld	s0,0(sp)
    80005fac:	01010113          	addi	sp,sp,16
    80005fb0:	00008067          	ret

0000000080005fb4 <_ZN12ConsumerSyncD0Ev>:
    80005fb4:	fe010113          	addi	sp,sp,-32
    80005fb8:	00113c23          	sd	ra,24(sp)
    80005fbc:	00813823          	sd	s0,16(sp)
    80005fc0:	00913423          	sd	s1,8(sp)
    80005fc4:	02010413          	addi	s0,sp,32
    80005fc8:	00050493          	mv	s1,a0
    80005fcc:	00007797          	auipc	a5,0x7
    80005fd0:	11c78793          	addi	a5,a5,284 # 8000d0e8 <_ZTV12ConsumerSync+0x10>
    80005fd4:	00f53023          	sd	a5,0(a0)
    80005fd8:	ffffc097          	auipc	ra,0xffffc
    80005fdc:	6b0080e7          	jalr	1712(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005fe0:	00048513          	mv	a0,s1
    80005fe4:	ffffc097          	auipc	ra,0xffffc
    80005fe8:	744080e7          	jalr	1860(ra) # 80002728 <_ZdlPv>
    80005fec:	01813083          	ld	ra,24(sp)
    80005ff0:	01013403          	ld	s0,16(sp)
    80005ff4:	00813483          	ld	s1,8(sp)
    80005ff8:	02010113          	addi	sp,sp,32
    80005ffc:	00008067          	ret

0000000080006000 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80006000:	ff010113          	addi	sp,sp,-16
    80006004:	00113423          	sd	ra,8(sp)
    80006008:	00813023          	sd	s0,0(sp)
    8000600c:	01010413          	addi	s0,sp,16
    80006010:	00007797          	auipc	a5,0x7
    80006014:	0b078793          	addi	a5,a5,176 # 8000d0c0 <_ZTV12ProducerSync+0x10>
    80006018:	00f53023          	sd	a5,0(a0)
    8000601c:	ffffc097          	auipc	ra,0xffffc
    80006020:	66c080e7          	jalr	1644(ra) # 80002688 <_ZN6ThreadD1Ev>
    80006024:	00813083          	ld	ra,8(sp)
    80006028:	00013403          	ld	s0,0(sp)
    8000602c:	01010113          	addi	sp,sp,16
    80006030:	00008067          	ret

0000000080006034 <_ZN12ProducerSyncD0Ev>:
    80006034:	fe010113          	addi	sp,sp,-32
    80006038:	00113c23          	sd	ra,24(sp)
    8000603c:	00813823          	sd	s0,16(sp)
    80006040:	00913423          	sd	s1,8(sp)
    80006044:	02010413          	addi	s0,sp,32
    80006048:	00050493          	mv	s1,a0
    8000604c:	00007797          	auipc	a5,0x7
    80006050:	07478793          	addi	a5,a5,116 # 8000d0c0 <_ZTV12ProducerSync+0x10>
    80006054:	00f53023          	sd	a5,0(a0)
    80006058:	ffffc097          	auipc	ra,0xffffc
    8000605c:	630080e7          	jalr	1584(ra) # 80002688 <_ZN6ThreadD1Ev>
    80006060:	00048513          	mv	a0,s1
    80006064:	ffffc097          	auipc	ra,0xffffc
    80006068:	6c4080e7          	jalr	1732(ra) # 80002728 <_ZdlPv>
    8000606c:	01813083          	ld	ra,24(sp)
    80006070:	01013403          	ld	s0,16(sp)
    80006074:	00813483          	ld	s1,8(sp)
    80006078:	02010113          	addi	sp,sp,32
    8000607c:	00008067          	ret

0000000080006080 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80006080:	ff010113          	addi	sp,sp,-16
    80006084:	00113423          	sd	ra,8(sp)
    80006088:	00813023          	sd	s0,0(sp)
    8000608c:	01010413          	addi	s0,sp,16
    80006090:	00007797          	auipc	a5,0x7
    80006094:	00878793          	addi	a5,a5,8 # 8000d098 <_ZTV16ProducerKeyboard+0x10>
    80006098:	00f53023          	sd	a5,0(a0)
    8000609c:	ffffc097          	auipc	ra,0xffffc
    800060a0:	5ec080e7          	jalr	1516(ra) # 80002688 <_ZN6ThreadD1Ev>
    800060a4:	00813083          	ld	ra,8(sp)
    800060a8:	00013403          	ld	s0,0(sp)
    800060ac:	01010113          	addi	sp,sp,16
    800060b0:	00008067          	ret

00000000800060b4 <_ZN16ProducerKeyboardD0Ev>:
    800060b4:	fe010113          	addi	sp,sp,-32
    800060b8:	00113c23          	sd	ra,24(sp)
    800060bc:	00813823          	sd	s0,16(sp)
    800060c0:	00913423          	sd	s1,8(sp)
    800060c4:	02010413          	addi	s0,sp,32
    800060c8:	00050493          	mv	s1,a0
    800060cc:	00007797          	auipc	a5,0x7
    800060d0:	fcc78793          	addi	a5,a5,-52 # 8000d098 <_ZTV16ProducerKeyboard+0x10>
    800060d4:	00f53023          	sd	a5,0(a0)
    800060d8:	ffffc097          	auipc	ra,0xffffc
    800060dc:	5b0080e7          	jalr	1456(ra) # 80002688 <_ZN6ThreadD1Ev>
    800060e0:	00048513          	mv	a0,s1
    800060e4:	ffffc097          	auipc	ra,0xffffc
    800060e8:	644080e7          	jalr	1604(ra) # 80002728 <_ZdlPv>
    800060ec:	01813083          	ld	ra,24(sp)
    800060f0:	01013403          	ld	s0,16(sp)
    800060f4:	00813483          	ld	s1,8(sp)
    800060f8:	02010113          	addi	sp,sp,32
    800060fc:	00008067          	ret

0000000080006100 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006100:	ff010113          	addi	sp,sp,-16
    80006104:	00113423          	sd	ra,8(sp)
    80006108:	00813023          	sd	s0,0(sp)
    8000610c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006110:	02053583          	ld	a1,32(a0)
    80006114:	fffff097          	auipc	ra,0xfffff
    80006118:	7e4080e7          	jalr	2020(ra) # 800058f8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000611c:	00813083          	ld	ra,8(sp)
    80006120:	00013403          	ld	s0,0(sp)
    80006124:	01010113          	addi	sp,sp,16
    80006128:	00008067          	ret

000000008000612c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000612c:	ff010113          	addi	sp,sp,-16
    80006130:	00113423          	sd	ra,8(sp)
    80006134:	00813023          	sd	s0,0(sp)
    80006138:	01010413          	addi	s0,sp,16
        producer(td);
    8000613c:	02053583          	ld	a1,32(a0)
    80006140:	00000097          	auipc	ra,0x0
    80006144:	878080e7          	jalr	-1928(ra) # 800059b8 <_ZN12ProducerSync8producerEPv>
    }
    80006148:	00813083          	ld	ra,8(sp)
    8000614c:	00013403          	ld	s0,0(sp)
    80006150:	01010113          	addi	sp,sp,16
    80006154:	00008067          	ret

0000000080006158 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80006158:	ff010113          	addi	sp,sp,-16
    8000615c:	00113423          	sd	ra,8(sp)
    80006160:	00813023          	sd	s0,0(sp)
    80006164:	01010413          	addi	s0,sp,16
        consumer(td);
    80006168:	02053583          	ld	a1,32(a0)
    8000616c:	00000097          	auipc	ra,0x0
    80006170:	8e0080e7          	jalr	-1824(ra) # 80005a4c <_ZN12ConsumerSync8consumerEPv>
    }
    80006174:	00813083          	ld	ra,8(sp)
    80006178:	00013403          	ld	s0,0(sp)
    8000617c:	01010113          	addi	sp,sp,16
    80006180:	00008067          	ret

0000000080006184 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006184:	fe010113          	addi	sp,sp,-32
    80006188:	00113c23          	sd	ra,24(sp)
    8000618c:	00813823          	sd	s0,16(sp)
    80006190:	00913423          	sd	s1,8(sp)
    80006194:	02010413          	addi	s0,sp,32
    80006198:	00050493          	mv	s1,a0
    LOCK();
    8000619c:	00100613          	li	a2,1
    800061a0:	00000593          	li	a1,0
    800061a4:	00007517          	auipc	a0,0x7
    800061a8:	22c50513          	addi	a0,a0,556 # 8000d3d0 <lockPrint>
    800061ac:	ffffb097          	auipc	ra,0xffffb
    800061b0:	088080e7          	jalr	136(ra) # 80001234 <copy_and_swap>
    800061b4:	00050863          	beqz	a0,800061c4 <_Z11printStringPKc+0x40>
    800061b8:	ffffb097          	auipc	ra,0xffffb
    800061bc:	22c080e7          	jalr	556(ra) # 800013e4 <_Z15thread_dispatchv>
    800061c0:	fddff06f          	j	8000619c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800061c4:	0004c503          	lbu	a0,0(s1)
    800061c8:	00050a63          	beqz	a0,800061dc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800061cc:	ffffb097          	auipc	ra,0xffffb
    800061d0:	470080e7          	jalr	1136(ra) # 8000163c <_Z4putcc>
        string++;
    800061d4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800061d8:	fedff06f          	j	800061c4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800061dc:	00000613          	li	a2,0
    800061e0:	00100593          	li	a1,1
    800061e4:	00007517          	auipc	a0,0x7
    800061e8:	1ec50513          	addi	a0,a0,492 # 8000d3d0 <lockPrint>
    800061ec:	ffffb097          	auipc	ra,0xffffb
    800061f0:	048080e7          	jalr	72(ra) # 80001234 <copy_and_swap>
    800061f4:	fe0514e3          	bnez	a0,800061dc <_Z11printStringPKc+0x58>
}
    800061f8:	01813083          	ld	ra,24(sp)
    800061fc:	01013403          	ld	s0,16(sp)
    80006200:	00813483          	ld	s1,8(sp)
    80006204:	02010113          	addi	sp,sp,32
    80006208:	00008067          	ret

000000008000620c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000620c:	fd010113          	addi	sp,sp,-48
    80006210:	02113423          	sd	ra,40(sp)
    80006214:	02813023          	sd	s0,32(sp)
    80006218:	00913c23          	sd	s1,24(sp)
    8000621c:	01213823          	sd	s2,16(sp)
    80006220:	01313423          	sd	s3,8(sp)
    80006224:	01413023          	sd	s4,0(sp)
    80006228:	03010413          	addi	s0,sp,48
    8000622c:	00050993          	mv	s3,a0
    80006230:	00058a13          	mv	s4,a1
    LOCK();
    80006234:	00100613          	li	a2,1
    80006238:	00000593          	li	a1,0
    8000623c:	00007517          	auipc	a0,0x7
    80006240:	19450513          	addi	a0,a0,404 # 8000d3d0 <lockPrint>
    80006244:	ffffb097          	auipc	ra,0xffffb
    80006248:	ff0080e7          	jalr	-16(ra) # 80001234 <copy_and_swap>
    8000624c:	00050863          	beqz	a0,8000625c <_Z9getStringPci+0x50>
    80006250:	ffffb097          	auipc	ra,0xffffb
    80006254:	194080e7          	jalr	404(ra) # 800013e4 <_Z15thread_dispatchv>
    80006258:	fddff06f          	j	80006234 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000625c:	00000913          	li	s2,0
    80006260:	00090493          	mv	s1,s2
    80006264:	0019091b          	addiw	s2,s2,1
    80006268:	03495a63          	bge	s2,s4,8000629c <_Z9getStringPci+0x90>
        cc = getc();
    8000626c:	ffffb097          	auipc	ra,0xffffb
    80006270:	39c080e7          	jalr	924(ra) # 80001608 <_Z4getcv>
        if(cc < 1)
    80006274:	02050463          	beqz	a0,8000629c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006278:	009984b3          	add	s1,s3,s1
    8000627c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006280:	00a00793          	li	a5,10
    80006284:	00f50a63          	beq	a0,a5,80006298 <_Z9getStringPci+0x8c>
    80006288:	00d00793          	li	a5,13
    8000628c:	fcf51ae3          	bne	a0,a5,80006260 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80006290:	00090493          	mv	s1,s2
    80006294:	0080006f          	j	8000629c <_Z9getStringPci+0x90>
    80006298:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000629c:	009984b3          	add	s1,s3,s1
    800062a0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800062a4:	00000613          	li	a2,0
    800062a8:	00100593          	li	a1,1
    800062ac:	00007517          	auipc	a0,0x7
    800062b0:	12450513          	addi	a0,a0,292 # 8000d3d0 <lockPrint>
    800062b4:	ffffb097          	auipc	ra,0xffffb
    800062b8:	f80080e7          	jalr	-128(ra) # 80001234 <copy_and_swap>
    800062bc:	fe0514e3          	bnez	a0,800062a4 <_Z9getStringPci+0x98>
    return buf;
}
    800062c0:	00098513          	mv	a0,s3
    800062c4:	02813083          	ld	ra,40(sp)
    800062c8:	02013403          	ld	s0,32(sp)
    800062cc:	01813483          	ld	s1,24(sp)
    800062d0:	01013903          	ld	s2,16(sp)
    800062d4:	00813983          	ld	s3,8(sp)
    800062d8:	00013a03          	ld	s4,0(sp)
    800062dc:	03010113          	addi	sp,sp,48
    800062e0:	00008067          	ret

00000000800062e4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800062e4:	ff010113          	addi	sp,sp,-16
    800062e8:	00813423          	sd	s0,8(sp)
    800062ec:	01010413          	addi	s0,sp,16
    800062f0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800062f4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800062f8:	0006c603          	lbu	a2,0(a3)
    800062fc:	fd06071b          	addiw	a4,a2,-48
    80006300:	0ff77713          	andi	a4,a4,255
    80006304:	00900793          	li	a5,9
    80006308:	02e7e063          	bltu	a5,a4,80006328 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000630c:	0025179b          	slliw	a5,a0,0x2
    80006310:	00a787bb          	addw	a5,a5,a0
    80006314:	0017979b          	slliw	a5,a5,0x1
    80006318:	00168693          	addi	a3,a3,1
    8000631c:	00c787bb          	addw	a5,a5,a2
    80006320:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006324:	fd5ff06f          	j	800062f8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006328:	00813403          	ld	s0,8(sp)
    8000632c:	01010113          	addi	sp,sp,16
    80006330:	00008067          	ret

0000000080006334 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006334:	fc010113          	addi	sp,sp,-64
    80006338:	02113c23          	sd	ra,56(sp)
    8000633c:	02813823          	sd	s0,48(sp)
    80006340:	02913423          	sd	s1,40(sp)
    80006344:	03213023          	sd	s2,32(sp)
    80006348:	01313c23          	sd	s3,24(sp)
    8000634c:	04010413          	addi	s0,sp,64
    80006350:	00050493          	mv	s1,a0
    80006354:	00058913          	mv	s2,a1
    80006358:	00060993          	mv	s3,a2
    LOCK();
    8000635c:	00100613          	li	a2,1
    80006360:	00000593          	li	a1,0
    80006364:	00007517          	auipc	a0,0x7
    80006368:	06c50513          	addi	a0,a0,108 # 8000d3d0 <lockPrint>
    8000636c:	ffffb097          	auipc	ra,0xffffb
    80006370:	ec8080e7          	jalr	-312(ra) # 80001234 <copy_and_swap>
    80006374:	00050863          	beqz	a0,80006384 <_Z8printIntiii+0x50>
    80006378:	ffffb097          	auipc	ra,0xffffb
    8000637c:	06c080e7          	jalr	108(ra) # 800013e4 <_Z15thread_dispatchv>
    80006380:	fddff06f          	j	8000635c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006384:	00098463          	beqz	s3,8000638c <_Z8printIntiii+0x58>
    80006388:	0804c463          	bltz	s1,80006410 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000638c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80006390:	00000593          	li	a1,0
    }

    i = 0;
    80006394:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006398:	0009079b          	sext.w	a5,s2
    8000639c:	0325773b          	remuw	a4,a0,s2
    800063a0:	00048613          	mv	a2,s1
    800063a4:	0014849b          	addiw	s1,s1,1
    800063a8:	02071693          	slli	a3,a4,0x20
    800063ac:	0206d693          	srli	a3,a3,0x20
    800063b0:	00007717          	auipc	a4,0x7
    800063b4:	d5070713          	addi	a4,a4,-688 # 8000d100 <digits>
    800063b8:	00d70733          	add	a4,a4,a3
    800063bc:	00074683          	lbu	a3,0(a4)
    800063c0:	fd040713          	addi	a4,s0,-48
    800063c4:	00c70733          	add	a4,a4,a2
    800063c8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800063cc:	0005071b          	sext.w	a4,a0
    800063d0:	0325553b          	divuw	a0,a0,s2
    800063d4:	fcf772e3          	bgeu	a4,a5,80006398 <_Z8printIntiii+0x64>
    if(neg)
    800063d8:	00058c63          	beqz	a1,800063f0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800063dc:	fd040793          	addi	a5,s0,-48
    800063e0:	009784b3          	add	s1,a5,s1
    800063e4:	02d00793          	li	a5,45
    800063e8:	fef48823          	sb	a5,-16(s1)
    800063ec:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800063f0:	fff4849b          	addiw	s1,s1,-1
    800063f4:	0204c463          	bltz	s1,8000641c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800063f8:	fd040793          	addi	a5,s0,-48
    800063fc:	009787b3          	add	a5,a5,s1
    80006400:	ff07c503          	lbu	a0,-16(a5)
    80006404:	ffffb097          	auipc	ra,0xffffb
    80006408:	238080e7          	jalr	568(ra) # 8000163c <_Z4putcc>
    8000640c:	fe5ff06f          	j	800063f0 <_Z8printIntiii+0xbc>
        x = -xx;
    80006410:	4090053b          	negw	a0,s1
        neg = 1;
    80006414:	00100593          	li	a1,1
        x = -xx;
    80006418:	f7dff06f          	j	80006394 <_Z8printIntiii+0x60>

    UNLOCK();
    8000641c:	00000613          	li	a2,0
    80006420:	00100593          	li	a1,1
    80006424:	00007517          	auipc	a0,0x7
    80006428:	fac50513          	addi	a0,a0,-84 # 8000d3d0 <lockPrint>
    8000642c:	ffffb097          	auipc	ra,0xffffb
    80006430:	e08080e7          	jalr	-504(ra) # 80001234 <copy_and_swap>
    80006434:	fe0514e3          	bnez	a0,8000641c <_Z8printIntiii+0xe8>
    80006438:	03813083          	ld	ra,56(sp)
    8000643c:	03013403          	ld	s0,48(sp)
    80006440:	02813483          	ld	s1,40(sp)
    80006444:	02013903          	ld	s2,32(sp)
    80006448:	01813983          	ld	s3,24(sp)
    8000644c:	04010113          	addi	sp,sp,64
    80006450:	00008067          	ret

0000000080006454 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006454:	fd010113          	addi	sp,sp,-48
    80006458:	02113423          	sd	ra,40(sp)
    8000645c:	02813023          	sd	s0,32(sp)
    80006460:	00913c23          	sd	s1,24(sp)
    80006464:	01213823          	sd	s2,16(sp)
    80006468:	01313423          	sd	s3,8(sp)
    8000646c:	03010413          	addi	s0,sp,48
    80006470:	00050493          	mv	s1,a0
    80006474:	00058913          	mv	s2,a1
    80006478:	0015879b          	addiw	a5,a1,1
    8000647c:	0007851b          	sext.w	a0,a5
    80006480:	00f4a023          	sw	a5,0(s1)
    80006484:	0004a823          	sw	zero,16(s1)
    80006488:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000648c:	00251513          	slli	a0,a0,0x2
    80006490:	ffffb097          	auipc	ra,0xffffb
    80006494:	dc4080e7          	jalr	-572(ra) # 80001254 <_Z9mem_allocm>
    80006498:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000649c:	01000513          	li	a0,16
    800064a0:	ffffc097          	auipc	ra,0xffffc
    800064a4:	238080e7          	jalr	568(ra) # 800026d8 <_Znwm>
    800064a8:	00050993          	mv	s3,a0
    800064ac:	00000593          	li	a1,0
    800064b0:	ffffc097          	auipc	ra,0xffffc
    800064b4:	508080e7          	jalr	1288(ra) # 800029b8 <_ZN9SemaphoreC1Ej>
    800064b8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800064bc:	01000513          	li	a0,16
    800064c0:	ffffc097          	auipc	ra,0xffffc
    800064c4:	218080e7          	jalr	536(ra) # 800026d8 <_Znwm>
    800064c8:	00050993          	mv	s3,a0
    800064cc:	00090593          	mv	a1,s2
    800064d0:	ffffc097          	auipc	ra,0xffffc
    800064d4:	4e8080e7          	jalr	1256(ra) # 800029b8 <_ZN9SemaphoreC1Ej>
    800064d8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800064dc:	01000513          	li	a0,16
    800064e0:	ffffc097          	auipc	ra,0xffffc
    800064e4:	1f8080e7          	jalr	504(ra) # 800026d8 <_Znwm>
    800064e8:	00050913          	mv	s2,a0
    800064ec:	00100593          	li	a1,1
    800064f0:	ffffc097          	auipc	ra,0xffffc
    800064f4:	4c8080e7          	jalr	1224(ra) # 800029b8 <_ZN9SemaphoreC1Ej>
    800064f8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800064fc:	01000513          	li	a0,16
    80006500:	ffffc097          	auipc	ra,0xffffc
    80006504:	1d8080e7          	jalr	472(ra) # 800026d8 <_Znwm>
    80006508:	00050913          	mv	s2,a0
    8000650c:	00100593          	li	a1,1
    80006510:	ffffc097          	auipc	ra,0xffffc
    80006514:	4a8080e7          	jalr	1192(ra) # 800029b8 <_ZN9SemaphoreC1Ej>
    80006518:	0324b823          	sd	s2,48(s1)
}
    8000651c:	02813083          	ld	ra,40(sp)
    80006520:	02013403          	ld	s0,32(sp)
    80006524:	01813483          	ld	s1,24(sp)
    80006528:	01013903          	ld	s2,16(sp)
    8000652c:	00813983          	ld	s3,8(sp)
    80006530:	03010113          	addi	sp,sp,48
    80006534:	00008067          	ret
    80006538:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000653c:	00098513          	mv	a0,s3
    80006540:	ffffc097          	auipc	ra,0xffffc
    80006544:	1e8080e7          	jalr	488(ra) # 80002728 <_ZdlPv>
    80006548:	00048513          	mv	a0,s1
    8000654c:	00008097          	auipc	ra,0x8
    80006550:	f5c080e7          	jalr	-164(ra) # 8000e4a8 <_Unwind_Resume>
    80006554:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006558:	00098513          	mv	a0,s3
    8000655c:	ffffc097          	auipc	ra,0xffffc
    80006560:	1cc080e7          	jalr	460(ra) # 80002728 <_ZdlPv>
    80006564:	00048513          	mv	a0,s1
    80006568:	00008097          	auipc	ra,0x8
    8000656c:	f40080e7          	jalr	-192(ra) # 8000e4a8 <_Unwind_Resume>
    80006570:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006574:	00090513          	mv	a0,s2
    80006578:	ffffc097          	auipc	ra,0xffffc
    8000657c:	1b0080e7          	jalr	432(ra) # 80002728 <_ZdlPv>
    80006580:	00048513          	mv	a0,s1
    80006584:	00008097          	auipc	ra,0x8
    80006588:	f24080e7          	jalr	-220(ra) # 8000e4a8 <_Unwind_Resume>
    8000658c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006590:	00090513          	mv	a0,s2
    80006594:	ffffc097          	auipc	ra,0xffffc
    80006598:	194080e7          	jalr	404(ra) # 80002728 <_ZdlPv>
    8000659c:	00048513          	mv	a0,s1
    800065a0:	00008097          	auipc	ra,0x8
    800065a4:	f08080e7          	jalr	-248(ra) # 8000e4a8 <_Unwind_Resume>

00000000800065a8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800065a8:	fe010113          	addi	sp,sp,-32
    800065ac:	00113c23          	sd	ra,24(sp)
    800065b0:	00813823          	sd	s0,16(sp)
    800065b4:	00913423          	sd	s1,8(sp)
    800065b8:	01213023          	sd	s2,0(sp)
    800065bc:	02010413          	addi	s0,sp,32
    800065c0:	00050493          	mv	s1,a0
    800065c4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800065c8:	01853503          	ld	a0,24(a0)
    800065cc:	ffffc097          	auipc	ra,0xffffc
    800065d0:	428080e7          	jalr	1064(ra) # 800029f4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800065d4:	0304b503          	ld	a0,48(s1)
    800065d8:	ffffc097          	auipc	ra,0xffffc
    800065dc:	41c080e7          	jalr	1052(ra) # 800029f4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800065e0:	0084b783          	ld	a5,8(s1)
    800065e4:	0144a703          	lw	a4,20(s1)
    800065e8:	00271713          	slli	a4,a4,0x2
    800065ec:	00e787b3          	add	a5,a5,a4
    800065f0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800065f4:	0144a783          	lw	a5,20(s1)
    800065f8:	0017879b          	addiw	a5,a5,1
    800065fc:	0004a703          	lw	a4,0(s1)
    80006600:	02e7e7bb          	remw	a5,a5,a4
    80006604:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006608:	0304b503          	ld	a0,48(s1)
    8000660c:	ffffc097          	auipc	ra,0xffffc
    80006610:	414080e7          	jalr	1044(ra) # 80002a20 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006614:	0204b503          	ld	a0,32(s1)
    80006618:	ffffc097          	auipc	ra,0xffffc
    8000661c:	408080e7          	jalr	1032(ra) # 80002a20 <_ZN9Semaphore6signalEv>

}
    80006620:	01813083          	ld	ra,24(sp)
    80006624:	01013403          	ld	s0,16(sp)
    80006628:	00813483          	ld	s1,8(sp)
    8000662c:	00013903          	ld	s2,0(sp)
    80006630:	02010113          	addi	sp,sp,32
    80006634:	00008067          	ret

0000000080006638 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006638:	fe010113          	addi	sp,sp,-32
    8000663c:	00113c23          	sd	ra,24(sp)
    80006640:	00813823          	sd	s0,16(sp)
    80006644:	00913423          	sd	s1,8(sp)
    80006648:	01213023          	sd	s2,0(sp)
    8000664c:	02010413          	addi	s0,sp,32
    80006650:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006654:	02053503          	ld	a0,32(a0)
    80006658:	ffffc097          	auipc	ra,0xffffc
    8000665c:	39c080e7          	jalr	924(ra) # 800029f4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006660:	0284b503          	ld	a0,40(s1)
    80006664:	ffffc097          	auipc	ra,0xffffc
    80006668:	390080e7          	jalr	912(ra) # 800029f4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000666c:	0084b703          	ld	a4,8(s1)
    80006670:	0104a783          	lw	a5,16(s1)
    80006674:	00279693          	slli	a3,a5,0x2
    80006678:	00d70733          	add	a4,a4,a3
    8000667c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006680:	0017879b          	addiw	a5,a5,1
    80006684:	0004a703          	lw	a4,0(s1)
    80006688:	02e7e7bb          	remw	a5,a5,a4
    8000668c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006690:	0284b503          	ld	a0,40(s1)
    80006694:	ffffc097          	auipc	ra,0xffffc
    80006698:	38c080e7          	jalr	908(ra) # 80002a20 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000669c:	0184b503          	ld	a0,24(s1)
    800066a0:	ffffc097          	auipc	ra,0xffffc
    800066a4:	380080e7          	jalr	896(ra) # 80002a20 <_ZN9Semaphore6signalEv>

    return ret;
}
    800066a8:	00090513          	mv	a0,s2
    800066ac:	01813083          	ld	ra,24(sp)
    800066b0:	01013403          	ld	s0,16(sp)
    800066b4:	00813483          	ld	s1,8(sp)
    800066b8:	00013903          	ld	s2,0(sp)
    800066bc:	02010113          	addi	sp,sp,32
    800066c0:	00008067          	ret

00000000800066c4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800066c4:	fe010113          	addi	sp,sp,-32
    800066c8:	00113c23          	sd	ra,24(sp)
    800066cc:	00813823          	sd	s0,16(sp)
    800066d0:	00913423          	sd	s1,8(sp)
    800066d4:	01213023          	sd	s2,0(sp)
    800066d8:	02010413          	addi	s0,sp,32
    800066dc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800066e0:	02853503          	ld	a0,40(a0)
    800066e4:	ffffc097          	auipc	ra,0xffffc
    800066e8:	310080e7          	jalr	784(ra) # 800029f4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800066ec:	0304b503          	ld	a0,48(s1)
    800066f0:	ffffc097          	auipc	ra,0xffffc
    800066f4:	304080e7          	jalr	772(ra) # 800029f4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800066f8:	0144a783          	lw	a5,20(s1)
    800066fc:	0104a903          	lw	s2,16(s1)
    80006700:	0327ce63          	blt	a5,s2,8000673c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006704:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006708:	0304b503          	ld	a0,48(s1)
    8000670c:	ffffc097          	auipc	ra,0xffffc
    80006710:	314080e7          	jalr	788(ra) # 80002a20 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006714:	0284b503          	ld	a0,40(s1)
    80006718:	ffffc097          	auipc	ra,0xffffc
    8000671c:	308080e7          	jalr	776(ra) # 80002a20 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006720:	00090513          	mv	a0,s2
    80006724:	01813083          	ld	ra,24(sp)
    80006728:	01013403          	ld	s0,16(sp)
    8000672c:	00813483          	ld	s1,8(sp)
    80006730:	00013903          	ld	s2,0(sp)
    80006734:	02010113          	addi	sp,sp,32
    80006738:	00008067          	ret
        ret = cap - head + tail;
    8000673c:	0004a703          	lw	a4,0(s1)
    80006740:	4127093b          	subw	s2,a4,s2
    80006744:	00f9093b          	addw	s2,s2,a5
    80006748:	fc1ff06f          	j	80006708 <_ZN9BufferCPP6getCntEv+0x44>

000000008000674c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000674c:	fe010113          	addi	sp,sp,-32
    80006750:	00113c23          	sd	ra,24(sp)
    80006754:	00813823          	sd	s0,16(sp)
    80006758:	00913423          	sd	s1,8(sp)
    8000675c:	02010413          	addi	s0,sp,32
    80006760:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006764:	00a00513          	li	a0,10
    80006768:	ffffc097          	auipc	ra,0xffffc
    8000676c:	378080e7          	jalr	888(ra) # 80002ae0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006770:	00004517          	auipc	a0,0x4
    80006774:	c9850513          	addi	a0,a0,-872 # 8000a408 <CONSOLE_STATUS+0x3f8>
    80006778:	00000097          	auipc	ra,0x0
    8000677c:	a0c080e7          	jalr	-1524(ra) # 80006184 <_Z11printStringPKc>
    while (getCnt()) {
    80006780:	00048513          	mv	a0,s1
    80006784:	00000097          	auipc	ra,0x0
    80006788:	f40080e7          	jalr	-192(ra) # 800066c4 <_ZN9BufferCPP6getCntEv>
    8000678c:	02050c63          	beqz	a0,800067c4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006790:	0084b783          	ld	a5,8(s1)
    80006794:	0104a703          	lw	a4,16(s1)
    80006798:	00271713          	slli	a4,a4,0x2
    8000679c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800067a0:	0007c503          	lbu	a0,0(a5)
    800067a4:	ffffc097          	auipc	ra,0xffffc
    800067a8:	33c080e7          	jalr	828(ra) # 80002ae0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800067ac:	0104a783          	lw	a5,16(s1)
    800067b0:	0017879b          	addiw	a5,a5,1
    800067b4:	0004a703          	lw	a4,0(s1)
    800067b8:	02e7e7bb          	remw	a5,a5,a4
    800067bc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800067c0:	fc1ff06f          	j	80006780 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800067c4:	02100513          	li	a0,33
    800067c8:	ffffc097          	auipc	ra,0xffffc
    800067cc:	318080e7          	jalr	792(ra) # 80002ae0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800067d0:	00a00513          	li	a0,10
    800067d4:	ffffc097          	auipc	ra,0xffffc
    800067d8:	30c080e7          	jalr	780(ra) # 80002ae0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800067dc:	0084b503          	ld	a0,8(s1)
    800067e0:	ffffb097          	auipc	ra,0xffffb
    800067e4:	ab0080e7          	jalr	-1360(ra) # 80001290 <_Z8mem_freePv>
    delete itemAvailable;
    800067e8:	0204b503          	ld	a0,32(s1)
    800067ec:	00050863          	beqz	a0,800067fc <_ZN9BufferCPPD1Ev+0xb0>
    800067f0:	00053783          	ld	a5,0(a0)
    800067f4:	0087b783          	ld	a5,8(a5)
    800067f8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800067fc:	0184b503          	ld	a0,24(s1)
    80006800:	00050863          	beqz	a0,80006810 <_ZN9BufferCPPD1Ev+0xc4>
    80006804:	00053783          	ld	a5,0(a0)
    80006808:	0087b783          	ld	a5,8(a5)
    8000680c:	000780e7          	jalr	a5
    delete mutexTail;
    80006810:	0304b503          	ld	a0,48(s1)
    80006814:	00050863          	beqz	a0,80006824 <_ZN9BufferCPPD1Ev+0xd8>
    80006818:	00053783          	ld	a5,0(a0)
    8000681c:	0087b783          	ld	a5,8(a5)
    80006820:	000780e7          	jalr	a5
    delete mutexHead;
    80006824:	0284b503          	ld	a0,40(s1)
    80006828:	00050863          	beqz	a0,80006838 <_ZN9BufferCPPD1Ev+0xec>
    8000682c:	00053783          	ld	a5,0(a0)
    80006830:	0087b783          	ld	a5,8(a5)
    80006834:	000780e7          	jalr	a5
}
    80006838:	01813083          	ld	ra,24(sp)
    8000683c:	01013403          	ld	s0,16(sp)
    80006840:	00813483          	ld	s1,8(sp)
    80006844:	02010113          	addi	sp,sp,32
    80006848:	00008067          	ret

000000008000684c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000684c:	fe010113          	addi	sp,sp,-32
    80006850:	00113c23          	sd	ra,24(sp)
    80006854:	00813823          	sd	s0,16(sp)
    80006858:	00913423          	sd	s1,8(sp)
    8000685c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006860:	00004517          	auipc	a0,0x4
    80006864:	bc050513          	addi	a0,a0,-1088 # 8000a420 <CONSOLE_STATUS+0x410>
    80006868:	00000097          	auipc	ra,0x0
    8000686c:	91c080e7          	jalr	-1764(ra) # 80006184 <_Z11printStringPKc>
    int test = getc() - '0';
    80006870:	ffffb097          	auipc	ra,0xffffb
    80006874:	d98080e7          	jalr	-616(ra) # 80001608 <_Z4getcv>
    80006878:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000687c:	ffffb097          	auipc	ra,0xffffb
    80006880:	d8c080e7          	jalr	-628(ra) # 80001608 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006884:	00900793          	li	a5,9
    80006888:	1297ee63          	bltu	a5,s1,800069c4 <_Z8userMainv+0x178>
    8000688c:	00249493          	slli	s1,s1,0x2
    80006890:	00004717          	auipc	a4,0x4
    80006894:	e2070713          	addi	a4,a4,-480 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    80006898:	00e484b3          	add	s1,s1,a4
    8000689c:	0004a783          	lw	a5,0(s1)
    800068a0:	00e787b3          	add	a5,a5,a4
    800068a4:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800068a8:	fffff097          	auipc	ra,0xfffff
    800068ac:	f54080e7          	jalr	-172(ra) # 800057fc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800068b0:	00004517          	auipc	a0,0x4
    800068b4:	b9050513          	addi	a0,a0,-1136 # 8000a440 <CONSOLE_STATUS+0x430>
    800068b8:	00000097          	auipc	ra,0x0
    800068bc:	8cc080e7          	jalr	-1844(ra) # 80006184 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800068c0:	01813083          	ld	ra,24(sp)
    800068c4:	01013403          	ld	s0,16(sp)
    800068c8:	00813483          	ld	s1,8(sp)
    800068cc:	02010113          	addi	sp,sp,32
    800068d0:	00008067          	ret
            Threads_CPP_API_test();
    800068d4:	ffffe097          	auipc	ra,0xffffe
    800068d8:	e08080e7          	jalr	-504(ra) # 800046dc <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800068dc:	00004517          	auipc	a0,0x4
    800068e0:	ba450513          	addi	a0,a0,-1116 # 8000a480 <CONSOLE_STATUS+0x470>
    800068e4:	00000097          	auipc	ra,0x0
    800068e8:	8a0080e7          	jalr	-1888(ra) # 80006184 <_Z11printStringPKc>
            break;
    800068ec:	fd5ff06f          	j	800068c0 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800068f0:	ffffd097          	auipc	ra,0xffffd
    800068f4:	324080e7          	jalr	804(ra) # 80003c14 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800068f8:	00004517          	auipc	a0,0x4
    800068fc:	bc850513          	addi	a0,a0,-1080 # 8000a4c0 <CONSOLE_STATUS+0x4b0>
    80006900:	00000097          	auipc	ra,0x0
    80006904:	884080e7          	jalr	-1916(ra) # 80006184 <_Z11printStringPKc>
            break;
    80006908:	fb9ff06f          	j	800068c0 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    8000690c:	fffff097          	auipc	ra,0xfffff
    80006910:	234080e7          	jalr	564(ra) # 80005b40 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006914:	00004517          	auipc	a0,0x4
    80006918:	bfc50513          	addi	a0,a0,-1028 # 8000a510 <CONSOLE_STATUS+0x500>
    8000691c:	00000097          	auipc	ra,0x0
    80006920:	868080e7          	jalr	-1944(ra) # 80006184 <_Z11printStringPKc>
            break;
    80006924:	f9dff06f          	j	800068c0 <_Z8userMainv+0x74>
            testSleeping();
    80006928:	00000097          	auipc	ra,0x0
    8000692c:	154080e7          	jalr	340(ra) # 80006a7c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006930:	00004517          	auipc	a0,0x4
    80006934:	c3850513          	addi	a0,a0,-968 # 8000a568 <CONSOLE_STATUS+0x558>
    80006938:	00000097          	auipc	ra,0x0
    8000693c:	84c080e7          	jalr	-1972(ra) # 80006184 <_Z11printStringPKc>
            break;
    80006940:	f81ff06f          	j	800068c0 <_Z8userMainv+0x74>
            testConsumerProducer();
    80006944:	ffffe097          	auipc	ra,0xffffe
    80006948:	258080e7          	jalr	600(ra) # 80004b9c <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    8000694c:	00004517          	auipc	a0,0x4
    80006950:	c4c50513          	addi	a0,a0,-948 # 8000a598 <CONSOLE_STATUS+0x588>
    80006954:	00000097          	auipc	ra,0x0
    80006958:	830080e7          	jalr	-2000(ra) # 80006184 <_Z11printStringPKc>
            break;
    8000695c:	f65ff06f          	j	800068c0 <_Z8userMainv+0x74>
            System_Mode_test();
    80006960:	00001097          	auipc	ra,0x1
    80006964:	cd4080e7          	jalr	-812(ra) # 80007634 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006968:	00004517          	auipc	a0,0x4
    8000696c:	c7050513          	addi	a0,a0,-912 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    80006970:	00000097          	auipc	ra,0x0
    80006974:	814080e7          	jalr	-2028(ra) # 80006184 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006978:	00004517          	auipc	a0,0x4
    8000697c:	c8050513          	addi	a0,a0,-896 # 8000a5f8 <CONSOLE_STATUS+0x5e8>
    80006980:	00000097          	auipc	ra,0x0
    80006984:	804080e7          	jalr	-2044(ra) # 80006184 <_Z11printStringPKc>
            break;
    80006988:	f39ff06f          	j	800068c0 <_Z8userMainv+0x74>
            setMaxThreads();
    8000698c:	00000097          	auipc	ra,0x0
    80006990:	654080e7          	jalr	1620(ra) # 80006fe0 <_Z13setMaxThreadsv>
            printString("TEST 9 (setMaxThreads)\n");
    80006994:	00004517          	auipc	a0,0x4
    80006998:	cbc50513          	addi	a0,a0,-836 # 8000a650 <CONSOLE_STATUS+0x640>
    8000699c:	fffff097          	auipc	ra,0xfffff
    800069a0:	7e8080e7          	jalr	2024(ra) # 80006184 <_Z11printStringPKc>
            break;
    800069a4:	f1dff06f          	j	800068c0 <_Z8userMainv+0x74>
            thread_join_async();
    800069a8:	00000097          	auipc	ra,0x0
    800069ac:	15c080e7          	jalr	348(ra) # 80006b04 <_Z17thread_join_asyncv>
            printString("TEST 10 (threadJoin async)\n");
    800069b0:	00004517          	auipc	a0,0x4
    800069b4:	cb850513          	addi	a0,a0,-840 # 8000a668 <CONSOLE_STATUS+0x658>
    800069b8:	fffff097          	auipc	ra,0xfffff
    800069bc:	7cc080e7          	jalr	1996(ra) # 80006184 <_Z11printStringPKc>
            break;
    800069c0:	f01ff06f          	j	800068c0 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800069c4:	00004517          	auipc	a0,0x4
    800069c8:	cc450513          	addi	a0,a0,-828 # 8000a688 <CONSOLE_STATUS+0x678>
    800069cc:	fffff097          	auipc	ra,0xfffff
    800069d0:	7b8080e7          	jalr	1976(ra) # 80006184 <_Z11printStringPKc>
    800069d4:	eedff06f          	j	800068c0 <_Z8userMainv+0x74>

00000000800069d8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800069d8:	fe010113          	addi	sp,sp,-32
    800069dc:	00113c23          	sd	ra,24(sp)
    800069e0:	00813823          	sd	s0,16(sp)
    800069e4:	00913423          	sd	s1,8(sp)
    800069e8:	01213023          	sd	s2,0(sp)
    800069ec:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800069f0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800069f4:	00600493          	li	s1,6
    while (--i > 0) {
    800069f8:	fff4849b          	addiw	s1,s1,-1
    800069fc:	04905463          	blez	s1,80006a44 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006a00:	00004517          	auipc	a0,0x4
    80006a04:	cd850513          	addi	a0,a0,-808 # 8000a6d8 <CONSOLE_STATUS+0x6c8>
    80006a08:	fffff097          	auipc	ra,0xfffff
    80006a0c:	77c080e7          	jalr	1916(ra) # 80006184 <_Z11printStringPKc>
        printInt(sleep_time);
    80006a10:	00000613          	li	a2,0
    80006a14:	00a00593          	li	a1,10
    80006a18:	0009051b          	sext.w	a0,s2
    80006a1c:	00000097          	auipc	ra,0x0
    80006a20:	918080e7          	jalr	-1768(ra) # 80006334 <_Z8printIntiii>
        printString(" !\n");
    80006a24:	00004517          	auipc	a0,0x4
    80006a28:	cbc50513          	addi	a0,a0,-836 # 8000a6e0 <CONSOLE_STATUS+0x6d0>
    80006a2c:	fffff097          	auipc	ra,0xfffff
    80006a30:	758080e7          	jalr	1880(ra) # 80006184 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006a34:	00090513          	mv	a0,s2
    80006a38:	ffffb097          	auipc	ra,0xffffb
    80006a3c:	b98080e7          	jalr	-1128(ra) # 800015d0 <_Z10time_sleepm>
    while (--i > 0) {
    80006a40:	fb9ff06f          	j	800069f8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006a44:	00a00793          	li	a5,10
    80006a48:	02f95933          	divu	s2,s2,a5
    80006a4c:	fff90913          	addi	s2,s2,-1
    80006a50:	00007797          	auipc	a5,0x7
    80006a54:	98878793          	addi	a5,a5,-1656 # 8000d3d8 <_ZL8finished>
    80006a58:	01278933          	add	s2,a5,s2
    80006a5c:	00100793          	li	a5,1
    80006a60:	00f90023          	sb	a5,0(s2)
}
    80006a64:	01813083          	ld	ra,24(sp)
    80006a68:	01013403          	ld	s0,16(sp)
    80006a6c:	00813483          	ld	s1,8(sp)
    80006a70:	00013903          	ld	s2,0(sp)
    80006a74:	02010113          	addi	sp,sp,32
    80006a78:	00008067          	ret

0000000080006a7c <_Z12testSleepingv>:

void testSleeping() {
    80006a7c:	fc010113          	addi	sp,sp,-64
    80006a80:	02113c23          	sd	ra,56(sp)
    80006a84:	02813823          	sd	s0,48(sp)
    80006a88:	02913423          	sd	s1,40(sp)
    80006a8c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006a90:	00a00793          	li	a5,10
    80006a94:	fcf43823          	sd	a5,-48(s0)
    80006a98:	01400793          	li	a5,20
    80006a9c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006aa0:	00000493          	li	s1,0
    80006aa4:	02c0006f          	j	80006ad0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006aa8:	00349793          	slli	a5,s1,0x3
    80006aac:	fd040613          	addi	a2,s0,-48
    80006ab0:	00f60633          	add	a2,a2,a5
    80006ab4:	00000597          	auipc	a1,0x0
    80006ab8:	f2458593          	addi	a1,a1,-220 # 800069d8 <_ZL9sleepyRunPv>
    80006abc:	fc040513          	addi	a0,s0,-64
    80006ac0:	00f50533          	add	a0,a0,a5
    80006ac4:	ffffb097          	auipc	ra,0xffffb
    80006ac8:	864080e7          	jalr	-1948(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006acc:	0014849b          	addiw	s1,s1,1
    80006ad0:	00100793          	li	a5,1
    80006ad4:	fc97dae3          	bge	a5,s1,80006aa8 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006ad8:	00007797          	auipc	a5,0x7
    80006adc:	9007c783          	lbu	a5,-1792(a5) # 8000d3d8 <_ZL8finished>
    80006ae0:	fe078ce3          	beqz	a5,80006ad8 <_Z12testSleepingv+0x5c>
    80006ae4:	00007797          	auipc	a5,0x7
    80006ae8:	8f57c783          	lbu	a5,-1803(a5) # 8000d3d9 <_ZL8finished+0x1>
    80006aec:	fe0786e3          	beqz	a5,80006ad8 <_Z12testSleepingv+0x5c>
}
    80006af0:	03813083          	ld	ra,56(sp)
    80006af4:	03013403          	ld	s0,48(sp)
    80006af8:	02813483          	ld	s1,40(sp)
    80006afc:	04010113          	addi	sp,sp,64
    80006b00:	00008067          	ret

0000000080006b04 <_Z17thread_join_asyncv>:
        printInt(id);
        printString("\n");
        sem->signal();
    }
};
void thread_join_async(){
    80006b04:	fd010113          	addi	sp,sp,-48
    80006b08:	02113423          	sd	ra,40(sp)
    80006b0c:	02813023          	sd	s0,32(sp)
    80006b10:	00913c23          	sd	s1,24(sp)
    80006b14:	01213823          	sd	s2,16(sp)
    80006b18:	01313423          	sd	s3,8(sp)
    80006b1c:	01413023          	sd	s4,0(sp)
    80006b20:	03010413          	addi	s0,sp,48

    Thread* threads[3];
    Semaphore* waitForAll = new Semaphore(0);
    80006b24:	01000513          	li	a0,16
    80006b28:	ffffc097          	auipc	ra,0xffffc
    80006b2c:	bb0080e7          	jalr	-1104(ra) # 800026d8 <_Znwm>
    80006b30:	00050a13          	mv	s4,a0
    80006b34:	00000593          	li	a1,0
    80006b38:	ffffc097          	auipc	ra,0xffffc
    80006b3c:	e80080e7          	jalr	-384(ra) # 800029b8 <_ZN9SemaphoreC1Ej>

    threads[2] = new A(2,waitForAll);
    80006b40:	03800513          	li	a0,56
    80006b44:	ffffc097          	auipc	ra,0xffffc
    80006b48:	b94080e7          	jalr	-1132(ra) # 800026d8 <_Znwm>
    80006b4c:	00050493          	mv	s1,a0
    A(int id,Semaphore* sem) : Thread(), id(id) ,sem(sem),finished(false){}
    80006b50:	ffffc097          	auipc	ra,0xffffc
    80006b54:	cc0080e7          	jalr	-832(ra) # 80002810 <_ZN6ThreadC1Ev>
    80006b58:	00006797          	auipc	a5,0x6
    80006b5c:	5d078793          	addi	a5,a5,1488 # 8000d128 <_ZTV1A+0x10>
    80006b60:	00f4b023          	sd	a5,0(s1)
    80006b64:	00200793          	li	a5,2
    80006b68:	02f4a023          	sw	a5,32(s1)
    80006b6c:	0344b423          	sd	s4,40(s1)
    80006b70:	02048823          	sb	zero,48(s1)
    threads[0] = new B(0,waitForAll,threads[2],10);
    80006b74:	04000513          	li	a0,64
    80006b78:	ffffc097          	auipc	ra,0xffffc
    80006b7c:	b60080e7          	jalr	-1184(ra) # 800026d8 <_Znwm>
    80006b80:	00050993          	mv	s3,a0
    B(int id,Semaphore* sem,Thread* tcb, time_t vreme) : Thread(), id(id) ,sem(sem),treca(tcb),vreme(vreme){}
    80006b84:	ffffc097          	auipc	ra,0xffffc
    80006b88:	c8c080e7          	jalr	-884(ra) # 80002810 <_ZN6ThreadC1Ev>
    80006b8c:	00006797          	auipc	a5,0x6
    80006b90:	5c478793          	addi	a5,a5,1476 # 8000d150 <_ZTV1B+0x10>
    80006b94:	00f9b023          	sd	a5,0(s3)
    80006b98:	0209a023          	sw	zero,32(s3)
    80006b9c:	0349b423          	sd	s4,40(s3)
    80006ba0:	0299b823          	sd	s1,48(s3)
    80006ba4:	00a00793          	li	a5,10
    80006ba8:	02f9bc23          	sd	a5,56(s3)
    threads[1] = new B(1,waitForAll,threads[2],0);
    80006bac:	04000513          	li	a0,64
    80006bb0:	ffffc097          	auipc	ra,0xffffc
    80006bb4:	b28080e7          	jalr	-1240(ra) # 800026d8 <_Znwm>
    80006bb8:	00050913          	mv	s2,a0
    B(int id,Semaphore* sem,Thread* tcb, time_t vreme) : Thread(), id(id) ,sem(sem),treca(tcb),vreme(vreme){}
    80006bbc:	ffffc097          	auipc	ra,0xffffc
    80006bc0:	c54080e7          	jalr	-940(ra) # 80002810 <_ZN6ThreadC1Ev>
    80006bc4:	00006797          	auipc	a5,0x6
    80006bc8:	58c78793          	addi	a5,a5,1420 # 8000d150 <_ZTV1B+0x10>
    80006bcc:	00f93023          	sd	a5,0(s2)
    80006bd0:	00100793          	li	a5,1
    80006bd4:	02f92023          	sw	a5,32(s2)
    80006bd8:	03493423          	sd	s4,40(s2)
    80006bdc:	02993823          	sd	s1,48(s2)
    80006be0:	02093c23          	sd	zero,56(s2)

    threads[2]->start();
    80006be4:	00048513          	mv	a0,s1
    80006be8:	ffffc097          	auipc	ra,0xffffc
    80006bec:	c88080e7          	jalr	-888(ra) # 80002870 <_ZN6Thread5startEv>
    threads[0]->start();
    80006bf0:	00098513          	mv	a0,s3
    80006bf4:	ffffc097          	auipc	ra,0xffffc
    80006bf8:	c7c080e7          	jalr	-900(ra) # 80002870 <_ZN6Thread5startEv>
    threads[1]->start();
    80006bfc:	00090513          	mv	a0,s2
    80006c00:	ffffc097          	auipc	ra,0xffffc
    80006c04:	c70080e7          	jalr	-912(ra) # 80002870 <_ZN6Thread5startEv>

    Thread::dispatch();
    80006c08:	ffffc097          	auipc	ra,0xffffc
    80006c0c:	c40080e7          	jalr	-960(ra) # 80002848 <_ZN6Thread8dispatchEv>
    for(int i = 0; i < 3; i++){
    80006c10:	00000493          	li	s1,0
    80006c14:	0140006f          	j	80006c28 <_Z17thread_join_asyncv+0x124>
        waitForAll->wait();
    80006c18:	000a0513          	mv	a0,s4
    80006c1c:	ffffc097          	auipc	ra,0xffffc
    80006c20:	dd8080e7          	jalr	-552(ra) # 800029f4 <_ZN9Semaphore4waitEv>
    for(int i = 0; i < 3; i++){
    80006c24:	0014849b          	addiw	s1,s1,1
    80006c28:	00200793          	li	a5,2
    80006c2c:	fe97d6e3          	bge	a5,s1,80006c18 <_Z17thread_join_asyncv+0x114>
    }

    80006c30:	02813083          	ld	ra,40(sp)
    80006c34:	02013403          	ld	s0,32(sp)
    80006c38:	01813483          	ld	s1,24(sp)
    80006c3c:	01013903          	ld	s2,16(sp)
    80006c40:	00813983          	ld	s3,8(sp)
    80006c44:	00013a03          	ld	s4,0(sp)
    80006c48:	03010113          	addi	sp,sp,48
    80006c4c:	00008067          	ret
    80006c50:	00050493          	mv	s1,a0
    Semaphore* waitForAll = new Semaphore(0);
    80006c54:	000a0513          	mv	a0,s4
    80006c58:	ffffc097          	auipc	ra,0xffffc
    80006c5c:	ad0080e7          	jalr	-1328(ra) # 80002728 <_ZdlPv>
    80006c60:	00048513          	mv	a0,s1
    80006c64:	00008097          	auipc	ra,0x8
    80006c68:	844080e7          	jalr	-1980(ra) # 8000e4a8 <_Unwind_Resume>
    80006c6c:	00050913          	mv	s2,a0
    threads[2] = new A(2,waitForAll);
    80006c70:	00048513          	mv	a0,s1
    80006c74:	ffffc097          	auipc	ra,0xffffc
    80006c78:	ab4080e7          	jalr	-1356(ra) # 80002728 <_ZdlPv>
    80006c7c:	00090513          	mv	a0,s2
    80006c80:	00008097          	auipc	ra,0x8
    80006c84:	828080e7          	jalr	-2008(ra) # 8000e4a8 <_Unwind_Resume>
    80006c88:	00050493          	mv	s1,a0
    threads[0] = new B(0,waitForAll,threads[2],10);
    80006c8c:	00098513          	mv	a0,s3
    80006c90:	ffffc097          	auipc	ra,0xffffc
    80006c94:	a98080e7          	jalr	-1384(ra) # 80002728 <_ZdlPv>
    80006c98:	00048513          	mv	a0,s1
    80006c9c:	00008097          	auipc	ra,0x8
    80006ca0:	80c080e7          	jalr	-2036(ra) # 8000e4a8 <_Unwind_Resume>
    80006ca4:	00050493          	mv	s1,a0
    threads[1] = new B(1,waitForAll,threads[2],0);
    80006ca8:	00090513          	mv	a0,s2
    80006cac:	ffffc097          	auipc	ra,0xffffc
    80006cb0:	a7c080e7          	jalr	-1412(ra) # 80002728 <_ZdlPv>
    80006cb4:	00048513          	mv	a0,s1
    80006cb8:	00007097          	auipc	ra,0x7
    80006cbc:	7f0080e7          	jalr	2032(ra) # 8000e4a8 <_Unwind_Resume>

0000000080006cc0 <_ZN1A3runEv>:
    void run() override{
    80006cc0:	fe010113          	addi	sp,sp,-32
    80006cc4:	00113c23          	sd	ra,24(sp)
    80006cc8:	00813823          	sd	s0,16(sp)
    80006ccc:	00913423          	sd	s1,8(sp)
    80006cd0:	01213023          	sd	s2,0(sp)
    80006cd4:	02010413          	addi	s0,sp,32
    80006cd8:	00050493          	mv	s1,a0
        printString("Ja sam glavna: ");
    80006cdc:	00004517          	auipc	a0,0x4
    80006ce0:	a0c50513          	addi	a0,a0,-1524 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80006ce4:	fffff097          	auipc	ra,0xfffff
    80006ce8:	4a0080e7          	jalr	1184(ra) # 80006184 <_Z11printStringPKc>
        printInt(id);
    80006cec:	00000613          	li	a2,0
    80006cf0:	00a00593          	li	a1,10
    80006cf4:	0204a503          	lw	a0,32(s1)
    80006cf8:	fffff097          	auipc	ra,0xfffff
    80006cfc:	63c080e7          	jalr	1596(ra) # 80006334 <_Z8printIntiii>
        printString("\n");
    80006d00:	00004517          	auipc	a0,0x4
    80006d04:	a8050513          	addi	a0,a0,-1408 # 8000a780 <CONSOLE_STATUS+0x770>
    80006d08:	fffff097          	auipc	ra,0xfffff
    80006d0c:	47c080e7          	jalr	1148(ra) # 80006184 <_Z11printStringPKc>
        for(int i = 0 ; i< 100000; i++){
    80006d10:	00000913          	li	s2,0
    80006d14:	01c0006f          	j	80006d30 <_ZN1A3runEv+0x70>
            if(i==150 || i==70000) printString(" glavna obrada ");
    80006d18:	09600793          	li	a5,150
    80006d1c:	02f90c63          	beq	s2,a5,80006d54 <_ZN1A3runEv+0x94>
    80006d20:	000117b7          	lui	a5,0x11
    80006d24:	17078793          	addi	a5,a5,368 # 11170 <_entry-0x7ffeee90>
    80006d28:	02f90663          	beq	s2,a5,80006d54 <_ZN1A3runEv+0x94>
        for(int i = 0 ; i< 100000; i++){
    80006d2c:	0019091b          	addiw	s2,s2,1
    80006d30:	000187b7          	lui	a5,0x18
    80006d34:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    80006d38:	0327c863          	blt	a5,s2,80006d68 <_ZN1A3runEv+0xa8>
            for(int j=0;j<100000;j++);
    80006d3c:	00000793          	li	a5,0
    80006d40:	00018737          	lui	a4,0x18
    80006d44:	69f70713          	addi	a4,a4,1695 # 1869f <_entry-0x7ffe7961>
    80006d48:	fcf748e3          	blt	a4,a5,80006d18 <_ZN1A3runEv+0x58>
    80006d4c:	0017879b          	addiw	a5,a5,1
    80006d50:	ff1ff06f          	j	80006d40 <_ZN1A3runEv+0x80>
            if(i==150 || i==70000) printString(" glavna obrada ");
    80006d54:	00004517          	auipc	a0,0x4
    80006d58:	9a450513          	addi	a0,a0,-1628 # 8000a6f8 <CONSOLE_STATUS+0x6e8>
    80006d5c:	fffff097          	auipc	ra,0xfffff
    80006d60:	428080e7          	jalr	1064(ra) # 80006184 <_Z11printStringPKc>
    80006d64:	fc9ff06f          	j	80006d2c <_ZN1A3runEv+0x6c>
        printString("Gotova glavna nit: ");
    80006d68:	00004517          	auipc	a0,0x4
    80006d6c:	9a050513          	addi	a0,a0,-1632 # 8000a708 <CONSOLE_STATUS+0x6f8>
    80006d70:	fffff097          	auipc	ra,0xfffff
    80006d74:	414080e7          	jalr	1044(ra) # 80006184 <_Z11printStringPKc>
        printInt(id);
    80006d78:	00000613          	li	a2,0
    80006d7c:	00a00593          	li	a1,10
    80006d80:	0204a503          	lw	a0,32(s1)
    80006d84:	fffff097          	auipc	ra,0xfffff
    80006d88:	5b0080e7          	jalr	1456(ra) # 80006334 <_Z8printIntiii>
        printString("\n");
    80006d8c:	00004517          	auipc	a0,0x4
    80006d90:	9f450513          	addi	a0,a0,-1548 # 8000a780 <CONSOLE_STATUS+0x770>
    80006d94:	fffff097          	auipc	ra,0xfffff
    80006d98:	3f0080e7          	jalr	1008(ra) # 80006184 <_Z11printStringPKc>
        sem->signal();
    80006d9c:	0284b503          	ld	a0,40(s1)
    80006da0:	ffffc097          	auipc	ra,0xffffc
    80006da4:	c80080e7          	jalr	-896(ra) # 80002a20 <_ZN9Semaphore6signalEv>
    }
    80006da8:	01813083          	ld	ra,24(sp)
    80006dac:	01013403          	ld	s0,16(sp)
    80006db0:	00813483          	ld	s1,8(sp)
    80006db4:	00013903          	ld	s2,0(sp)
    80006db8:	02010113          	addi	sp,sp,32
    80006dbc:	00008067          	ret

0000000080006dc0 <_ZN1AD1Ev>:
class A : public Thread{
    80006dc0:	ff010113          	addi	sp,sp,-16
    80006dc4:	00113423          	sd	ra,8(sp)
    80006dc8:	00813023          	sd	s0,0(sp)
    80006dcc:	01010413          	addi	s0,sp,16
    80006dd0:	00006797          	auipc	a5,0x6
    80006dd4:	35878793          	addi	a5,a5,856 # 8000d128 <_ZTV1A+0x10>
    80006dd8:	00f53023          	sd	a5,0(a0)
    80006ddc:	ffffc097          	auipc	ra,0xffffc
    80006de0:	8ac080e7          	jalr	-1876(ra) # 80002688 <_ZN6ThreadD1Ev>
    80006de4:	00813083          	ld	ra,8(sp)
    80006de8:	00013403          	ld	s0,0(sp)
    80006dec:	01010113          	addi	sp,sp,16
    80006df0:	00008067          	ret

0000000080006df4 <_ZN1AD0Ev>:
    80006df4:	fe010113          	addi	sp,sp,-32
    80006df8:	00113c23          	sd	ra,24(sp)
    80006dfc:	00813823          	sd	s0,16(sp)
    80006e00:	00913423          	sd	s1,8(sp)
    80006e04:	02010413          	addi	s0,sp,32
    80006e08:	00050493          	mv	s1,a0
    80006e0c:	00006797          	auipc	a5,0x6
    80006e10:	31c78793          	addi	a5,a5,796 # 8000d128 <_ZTV1A+0x10>
    80006e14:	00f53023          	sd	a5,0(a0)
    80006e18:	ffffc097          	auipc	ra,0xffffc
    80006e1c:	870080e7          	jalr	-1936(ra) # 80002688 <_ZN6ThreadD1Ev>
    80006e20:	00048513          	mv	a0,s1
    80006e24:	ffffc097          	auipc	ra,0xffffc
    80006e28:	904080e7          	jalr	-1788(ra) # 80002728 <_ZdlPv>
    80006e2c:	01813083          	ld	ra,24(sp)
    80006e30:	01013403          	ld	s0,16(sp)
    80006e34:	00813483          	ld	s1,8(sp)
    80006e38:	02010113          	addi	sp,sp,32
    80006e3c:	00008067          	ret

0000000080006e40 <_ZN1BD1Ev>:
class B : public Thread{
    80006e40:	ff010113          	addi	sp,sp,-16
    80006e44:	00113423          	sd	ra,8(sp)
    80006e48:	00813023          	sd	s0,0(sp)
    80006e4c:	01010413          	addi	s0,sp,16
    80006e50:	00006797          	auipc	a5,0x6
    80006e54:	30078793          	addi	a5,a5,768 # 8000d150 <_ZTV1B+0x10>
    80006e58:	00f53023          	sd	a5,0(a0)
    80006e5c:	ffffc097          	auipc	ra,0xffffc
    80006e60:	82c080e7          	jalr	-2004(ra) # 80002688 <_ZN6ThreadD1Ev>
    80006e64:	00813083          	ld	ra,8(sp)
    80006e68:	00013403          	ld	s0,0(sp)
    80006e6c:	01010113          	addi	sp,sp,16
    80006e70:	00008067          	ret

0000000080006e74 <_ZN1BD0Ev>:
    80006e74:	fe010113          	addi	sp,sp,-32
    80006e78:	00113c23          	sd	ra,24(sp)
    80006e7c:	00813823          	sd	s0,16(sp)
    80006e80:	00913423          	sd	s1,8(sp)
    80006e84:	02010413          	addi	s0,sp,32
    80006e88:	00050493          	mv	s1,a0
    80006e8c:	00006797          	auipc	a5,0x6
    80006e90:	2c478793          	addi	a5,a5,708 # 8000d150 <_ZTV1B+0x10>
    80006e94:	00f53023          	sd	a5,0(a0)
    80006e98:	ffffb097          	auipc	ra,0xffffb
    80006e9c:	7f0080e7          	jalr	2032(ra) # 80002688 <_ZN6ThreadD1Ev>
    80006ea0:	00048513          	mv	a0,s1
    80006ea4:	ffffc097          	auipc	ra,0xffffc
    80006ea8:	884080e7          	jalr	-1916(ra) # 80002728 <_ZdlPv>
    80006eac:	01813083          	ld	ra,24(sp)
    80006eb0:	01013403          	ld	s0,16(sp)
    80006eb4:	00813483          	ld	s1,8(sp)
    80006eb8:	02010113          	addi	sp,sp,32
    80006ebc:	00008067          	ret

0000000080006ec0 <_ZN1B3runEv>:
    void run() override{
    80006ec0:	fe010113          	addi	sp,sp,-32
    80006ec4:	00113c23          	sd	ra,24(sp)
    80006ec8:	00813823          	sd	s0,16(sp)
    80006ecc:	00913423          	sd	s1,8(sp)
    80006ed0:	01213023          	sd	s2,0(sp)
    80006ed4:	02010413          	addi	s0,sp,32
    80006ed8:	00050493          	mv	s1,a0
        printString("Ja sam nit: ");
    80006edc:	00004517          	auipc	a0,0x4
    80006ee0:	84450513          	addi	a0,a0,-1980 # 8000a720 <CONSOLE_STATUS+0x710>
    80006ee4:	fffff097          	auipc	ra,0xfffff
    80006ee8:	2a0080e7          	jalr	672(ra) # 80006184 <_Z11printStringPKc>
        printInt(id);
    80006eec:	00000613          	li	a2,0
    80006ef0:	00a00593          	li	a1,10
    80006ef4:	0204a503          	lw	a0,32(s1)
    80006ef8:	fffff097          	auipc	ra,0xfffff
    80006efc:	43c080e7          	jalr	1084(ra) # 80006334 <_Z8printIntiii>
        printString("\n");
    80006f00:	00004517          	auipc	a0,0x4
    80006f04:	88050513          	addi	a0,a0,-1920 # 8000a780 <CONSOLE_STATUS+0x770>
    80006f08:	fffff097          	auipc	ra,0xfffff
    80006f0c:	27c080e7          	jalr	636(ra) # 80006184 <_Z11printStringPKc>
        treca->join(vreme);
    80006f10:	0384b583          	ld	a1,56(s1)
    80006f14:	0304b503          	ld	a0,48(s1)
    80006f18:	ffffc097          	auipc	ra,0xffffc
    80006f1c:	a74080e7          	jalr	-1420(ra) # 8000298c <_ZN6Thread4joinEm>
        if(vreme) printString("Vreme je proslo!\n");
    80006f20:	0384b783          	ld	a5,56(s1)
    80006f24:	00079663          	bnez	a5,80006f30 <_ZN1B3runEv+0x70>
    void run() override{
    80006f28:	00000913          	li	s2,0
    80006f2c:	0400006f          	j	80006f6c <_ZN1B3runEv+0xac>
        if(vreme) printString("Vreme je proslo!\n");
    80006f30:	00004517          	auipc	a0,0x4
    80006f34:	80050513          	addi	a0,a0,-2048 # 8000a730 <CONSOLE_STATUS+0x720>
    80006f38:	fffff097          	auipc	ra,0xfffff
    80006f3c:	24c080e7          	jalr	588(ra) # 80006184 <_Z11printStringPKc>
    80006f40:	fe9ff06f          	j	80006f28 <_ZN1B3runEv+0x68>
            printString(" obrada niti: ");
    80006f44:	00004517          	auipc	a0,0x4
    80006f48:	80450513          	addi	a0,a0,-2044 # 8000a748 <CONSOLE_STATUS+0x738>
    80006f4c:	fffff097          	auipc	ra,0xfffff
    80006f50:	238080e7          	jalr	568(ra) # 80006184 <_Z11printStringPKc>
            printInt(id);
    80006f54:	00000613          	li	a2,0
    80006f58:	00a00593          	li	a1,10
    80006f5c:	0204a503          	lw	a0,32(s1)
    80006f60:	fffff097          	auipc	ra,0xfffff
    80006f64:	3d4080e7          	jalr	980(ra) # 80006334 <_Z8printIntiii>
        for(int i = 0 ; i< 100; i++){
    80006f68:	0019091b          	addiw	s2,s2,1
    80006f6c:	06300793          	li	a5,99
    80006f70:	0127cc63          	blt	a5,s2,80006f88 <_ZN1B3runEv+0xc8>
            for(int j=0;j<1000;j++);
    80006f74:	00000793          	li	a5,0
    80006f78:	3e700713          	li	a4,999
    80006f7c:	fcf744e3          	blt	a4,a5,80006f44 <_ZN1B3runEv+0x84>
    80006f80:	0017879b          	addiw	a5,a5,1
    80006f84:	ff5ff06f          	j	80006f78 <_ZN1B3runEv+0xb8>
        printString("Gotova nit: ");
    80006f88:	00003517          	auipc	a0,0x3
    80006f8c:	7d050513          	addi	a0,a0,2000 # 8000a758 <CONSOLE_STATUS+0x748>
    80006f90:	fffff097          	auipc	ra,0xfffff
    80006f94:	1f4080e7          	jalr	500(ra) # 80006184 <_Z11printStringPKc>
        printInt(id);
    80006f98:	00000613          	li	a2,0
    80006f9c:	00a00593          	li	a1,10
    80006fa0:	0204a503          	lw	a0,32(s1)
    80006fa4:	fffff097          	auipc	ra,0xfffff
    80006fa8:	390080e7          	jalr	912(ra) # 80006334 <_Z8printIntiii>
        printString("\n");
    80006fac:	00003517          	auipc	a0,0x3
    80006fb0:	7d450513          	addi	a0,a0,2004 # 8000a780 <CONSOLE_STATUS+0x770>
    80006fb4:	fffff097          	auipc	ra,0xfffff
    80006fb8:	1d0080e7          	jalr	464(ra) # 80006184 <_Z11printStringPKc>
        sem->signal();
    80006fbc:	0284b503          	ld	a0,40(s1)
    80006fc0:	ffffc097          	auipc	ra,0xffffc
    80006fc4:	a60080e7          	jalr	-1440(ra) # 80002a20 <_ZN9Semaphore6signalEv>
    }
    80006fc8:	01813083          	ld	ra,24(sp)
    80006fcc:	01013403          	ld	s0,16(sp)
    80006fd0:	00813483          	ld	s1,8(sp)
    80006fd4:	00013903          	ld	s2,0(sp)
    80006fd8:	02010113          	addi	sp,sp,32
    80006fdc:	00008067          	ret

0000000080006fe0 <_Z13setMaxThreadsv>:
            sleep(10);
        }
        sem->signal();
    }
};
void setMaxThreads(){
    80006fe0:	f3010113          	addi	sp,sp,-208
    80006fe4:	0c113423          	sd	ra,200(sp)
    80006fe8:	0c813023          	sd	s0,192(sp)
    80006fec:	0a913c23          	sd	s1,184(sp)
    80006ff0:	0b213823          	sd	s2,176(sp)
    80006ff4:	0b313423          	sd	s3,168(sp)
    80006ff8:	0d010413          	addi	s0,sp,208

    Thread::SetMaximumThreads(3,20,10);
    80006ffc:	00a00613          	li	a2,10
    80007000:	01400593          	li	a1,20
    80007004:	00300513          	li	a0,3
    80007008:	ffffc097          	auipc	ra,0xffffc
    8000700c:	954080e7          	jalr	-1708(ra) # 8000295c <_ZN6Thread17SetMaximumThreadsEiii>
    Semaphore* waitForAll = new Semaphore(0);
    80007010:	01000513          	li	a0,16
    80007014:	ffffb097          	auipc	ra,0xffffb
    80007018:	6c4080e7          	jalr	1732(ra) # 800026d8 <_Znwm>
    8000701c:	00050993          	mv	s3,a0
    80007020:	00000593          	li	a1,0
    80007024:	ffffc097          	auipc	ra,0xffffc
    80007028:	994080e7          	jalr	-1644(ra) # 800029b8 <_ZN9SemaphoreC1Ej>
    Thread* threads[20];
    for(int i=0; i<20;i++){
    8000702c:	00000913          	li	s2,0
    80007030:	0300006f          	j	80007060 <_Z13setMaxThreadsv+0x80>
    A(int id,Semaphore* sem) : Thread(), id(id) ,sem(sem),finished(false){}
    80007034:	00006797          	auipc	a5,0x6
    80007038:	0f478793          	addi	a5,a5,244 # 8000d128 <_ZTV1A+0x10>
    8000703c:	00f4b023          	sd	a5,0(s1)
    80007040:	0324a023          	sw	s2,32(s1)
    80007044:	0334b423          	sd	s3,40(s1)
    80007048:	02048823          	sb	zero,48(s1)
        threads[i]= new A(i,waitForAll);
    8000704c:	00391793          	slli	a5,s2,0x3
    80007050:	fd040713          	addi	a4,s0,-48
    80007054:	00f707b3          	add	a5,a4,a5
    80007058:	f697b023          	sd	s1,-160(a5)
    for(int i=0; i<20;i++){
    8000705c:	0019091b          	addiw	s2,s2,1
    80007060:	01300793          	li	a5,19
    80007064:	0327c063          	blt	a5,s2,80007084 <_Z13setMaxThreadsv+0xa4>
        threads[i]= new A(i,waitForAll);
    80007068:	03800513          	li	a0,56
    8000706c:	ffffb097          	auipc	ra,0xffffb
    80007070:	66c080e7          	jalr	1644(ra) # 800026d8 <_Znwm>
    80007074:	00050493          	mv	s1,a0
    A(int id,Semaphore* sem) : Thread(), id(id) ,sem(sem),finished(false){}
    80007078:	ffffb097          	auipc	ra,0xffffb
    8000707c:	798080e7          	jalr	1944(ra) # 80002810 <_ZN6ThreadC1Ev>
    80007080:	fb5ff06f          	j	80007034 <_Z13setMaxThreadsv+0x54>
    }
    for(int i=0;i<20;i++){
    80007084:	00000493          	li	s1,0
    80007088:	0200006f          	j	800070a8 <_Z13setMaxThreadsv+0xc8>
        threads[i]->start();
    8000708c:	00349793          	slli	a5,s1,0x3
    80007090:	fd040713          	addi	a4,s0,-48
    80007094:	00f707b3          	add	a5,a4,a5
    80007098:	f607b503          	ld	a0,-160(a5)
    8000709c:	ffffb097          	auipc	ra,0xffffb
    800070a0:	7d4080e7          	jalr	2004(ra) # 80002870 <_ZN6Thread5startEv>
    for(int i=0;i<20;i++){
    800070a4:	0014849b          	addiw	s1,s1,1
    800070a8:	01300793          	li	a5,19
    800070ac:	fe97d0e3          	bge	a5,s1,8000708c <_Z13setMaxThreadsv+0xac>
    }
    for(int i=0;i<20;i++) waitForAll->wait();
    800070b0:	00000493          	li	s1,0
    800070b4:	0140006f          	j	800070c8 <_Z13setMaxThreadsv+0xe8>
    800070b8:	00098513          	mv	a0,s3
    800070bc:	ffffc097          	auipc	ra,0xffffc
    800070c0:	938080e7          	jalr	-1736(ra) # 800029f4 <_ZN9Semaphore4waitEv>
    800070c4:	0014849b          	addiw	s1,s1,1
    800070c8:	01300793          	li	a5,19
    800070cc:	fe97d6e3          	bge	a5,s1,800070b8 <_Z13setMaxThreadsv+0xd8>
    delete waitForAll;
    800070d0:	00098a63          	beqz	s3,800070e4 <_Z13setMaxThreadsv+0x104>
    800070d4:	0009b783          	ld	a5,0(s3)
    800070d8:	0087b783          	ld	a5,8(a5)
    800070dc:	00098513          	mv	a0,s3
    800070e0:	000780e7          	jalr	a5

    printString("Gotovo! \n");
    800070e4:	00003517          	auipc	a0,0x3
    800070e8:	69450513          	addi	a0,a0,1684 # 8000a778 <CONSOLE_STATUS+0x768>
    800070ec:	fffff097          	auipc	ra,0xfffff
    800070f0:	098080e7          	jalr	152(ra) # 80006184 <_Z11printStringPKc>
    800070f4:	0c813083          	ld	ra,200(sp)
    800070f8:	0c013403          	ld	s0,192(sp)
    800070fc:	0b813483          	ld	s1,184(sp)
    80007100:	0b013903          	ld	s2,176(sp)
    80007104:	0a813983          	ld	s3,168(sp)
    80007108:	0d010113          	addi	sp,sp,208
    8000710c:	00008067          	ret
    80007110:	00050493          	mv	s1,a0
    Semaphore* waitForAll = new Semaphore(0);
    80007114:	00098513          	mv	a0,s3
    80007118:	ffffb097          	auipc	ra,0xffffb
    8000711c:	610080e7          	jalr	1552(ra) # 80002728 <_ZdlPv>
    80007120:	00048513          	mv	a0,s1
    80007124:	00007097          	auipc	ra,0x7
    80007128:	384080e7          	jalr	900(ra) # 8000e4a8 <_Unwind_Resume>
    8000712c:	00050913          	mv	s2,a0
        threads[i]= new A(i,waitForAll);
    80007130:	00048513          	mv	a0,s1
    80007134:	ffffb097          	auipc	ra,0xffffb
    80007138:	5f4080e7          	jalr	1524(ra) # 80002728 <_ZdlPv>
    8000713c:	00090513          	mv	a0,s2
    80007140:	00007097          	auipc	ra,0x7
    80007144:	368080e7          	jalr	872(ra) # 8000e4a8 <_Unwind_Resume>

0000000080007148 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80007148:	fe010113          	addi	sp,sp,-32
    8000714c:	00113c23          	sd	ra,24(sp)
    80007150:	00813823          	sd	s0,16(sp)
    80007154:	00913423          	sd	s1,8(sp)
    80007158:	01213023          	sd	s2,0(sp)
    8000715c:	02010413          	addi	s0,sp,32
    80007160:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80007164:	00100793          	li	a5,1
    80007168:	02a7f863          	bgeu	a5,a0,80007198 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000716c:	00a00793          	li	a5,10
    80007170:	02f577b3          	remu	a5,a0,a5
    80007174:	02078e63          	beqz	a5,800071b0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80007178:	fff48513          	addi	a0,s1,-1
    8000717c:	00000097          	auipc	ra,0x0
    80007180:	fcc080e7          	jalr	-52(ra) # 80007148 <_ZL9fibonaccim>
    80007184:	00050913          	mv	s2,a0
    80007188:	ffe48513          	addi	a0,s1,-2
    8000718c:	00000097          	auipc	ra,0x0
    80007190:	fbc080e7          	jalr	-68(ra) # 80007148 <_ZL9fibonaccim>
    80007194:	00a90533          	add	a0,s2,a0
}
    80007198:	01813083          	ld	ra,24(sp)
    8000719c:	01013403          	ld	s0,16(sp)
    800071a0:	00813483          	ld	s1,8(sp)
    800071a4:	00013903          	ld	s2,0(sp)
    800071a8:	02010113          	addi	sp,sp,32
    800071ac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800071b0:	ffffa097          	auipc	ra,0xffffa
    800071b4:	234080e7          	jalr	564(ra) # 800013e4 <_Z15thread_dispatchv>
    800071b8:	fc1ff06f          	j	80007178 <_ZL9fibonaccim+0x30>

00000000800071bc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800071bc:	fe010113          	addi	sp,sp,-32
    800071c0:	00113c23          	sd	ra,24(sp)
    800071c4:	00813823          	sd	s0,16(sp)
    800071c8:	00913423          	sd	s1,8(sp)
    800071cc:	01213023          	sd	s2,0(sp)
    800071d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800071d4:	00a00493          	li	s1,10
    800071d8:	0400006f          	j	80007218 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800071dc:	00003517          	auipc	a0,0x3
    800071e0:	19450513          	addi	a0,a0,404 # 8000a370 <CONSOLE_STATUS+0x360>
    800071e4:	fffff097          	auipc	ra,0xfffff
    800071e8:	fa0080e7          	jalr	-96(ra) # 80006184 <_Z11printStringPKc>
    800071ec:	00000613          	li	a2,0
    800071f0:	00a00593          	li	a1,10
    800071f4:	00048513          	mv	a0,s1
    800071f8:	fffff097          	auipc	ra,0xfffff
    800071fc:	13c080e7          	jalr	316(ra) # 80006334 <_Z8printIntiii>
    80007200:	00003517          	auipc	a0,0x3
    80007204:	58050513          	addi	a0,a0,1408 # 8000a780 <CONSOLE_STATUS+0x770>
    80007208:	fffff097          	auipc	ra,0xfffff
    8000720c:	f7c080e7          	jalr	-132(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80007210:	0014849b          	addiw	s1,s1,1
    80007214:	0ff4f493          	andi	s1,s1,255
    80007218:	00c00793          	li	a5,12
    8000721c:	fc97f0e3          	bgeu	a5,s1,800071dc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80007220:	00003517          	auipc	a0,0x3
    80007224:	15850513          	addi	a0,a0,344 # 8000a378 <CONSOLE_STATUS+0x368>
    80007228:	fffff097          	auipc	ra,0xfffff
    8000722c:	f5c080e7          	jalr	-164(ra) # 80006184 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80007230:	00500313          	li	t1,5
    thread_dispatch();
    80007234:	ffffa097          	auipc	ra,0xffffa
    80007238:	1b0080e7          	jalr	432(ra) # 800013e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000723c:	01000513          	li	a0,16
    80007240:	00000097          	auipc	ra,0x0
    80007244:	f08080e7          	jalr	-248(ra) # 80007148 <_ZL9fibonaccim>
    80007248:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000724c:	00003517          	auipc	a0,0x3
    80007250:	13c50513          	addi	a0,a0,316 # 8000a388 <CONSOLE_STATUS+0x378>
    80007254:	fffff097          	auipc	ra,0xfffff
    80007258:	f30080e7          	jalr	-208(ra) # 80006184 <_Z11printStringPKc>
    8000725c:	00000613          	li	a2,0
    80007260:	00a00593          	li	a1,10
    80007264:	0009051b          	sext.w	a0,s2
    80007268:	fffff097          	auipc	ra,0xfffff
    8000726c:	0cc080e7          	jalr	204(ra) # 80006334 <_Z8printIntiii>
    80007270:	00003517          	auipc	a0,0x3
    80007274:	51050513          	addi	a0,a0,1296 # 8000a780 <CONSOLE_STATUS+0x770>
    80007278:	fffff097          	auipc	ra,0xfffff
    8000727c:	f0c080e7          	jalr	-244(ra) # 80006184 <_Z11printStringPKc>
    80007280:	0400006f          	j	800072c0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80007284:	00003517          	auipc	a0,0x3
    80007288:	0ec50513          	addi	a0,a0,236 # 8000a370 <CONSOLE_STATUS+0x360>
    8000728c:	fffff097          	auipc	ra,0xfffff
    80007290:	ef8080e7          	jalr	-264(ra) # 80006184 <_Z11printStringPKc>
    80007294:	00000613          	li	a2,0
    80007298:	00a00593          	li	a1,10
    8000729c:	00048513          	mv	a0,s1
    800072a0:	fffff097          	auipc	ra,0xfffff
    800072a4:	094080e7          	jalr	148(ra) # 80006334 <_Z8printIntiii>
    800072a8:	00003517          	auipc	a0,0x3
    800072ac:	4d850513          	addi	a0,a0,1240 # 8000a780 <CONSOLE_STATUS+0x770>
    800072b0:	fffff097          	auipc	ra,0xfffff
    800072b4:	ed4080e7          	jalr	-300(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800072b8:	0014849b          	addiw	s1,s1,1
    800072bc:	0ff4f493          	andi	s1,s1,255
    800072c0:	00f00793          	li	a5,15
    800072c4:	fc97f0e3          	bgeu	a5,s1,80007284 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800072c8:	00003517          	auipc	a0,0x3
    800072cc:	0d050513          	addi	a0,a0,208 # 8000a398 <CONSOLE_STATUS+0x388>
    800072d0:	fffff097          	auipc	ra,0xfffff
    800072d4:	eb4080e7          	jalr	-332(ra) # 80006184 <_Z11printStringPKc>
    finishedD = true;
    800072d8:	00100793          	li	a5,1
    800072dc:	00006717          	auipc	a4,0x6
    800072e0:	0ef70f23          	sb	a5,254(a4) # 8000d3da <_ZL9finishedD>
    thread_dispatch();
    800072e4:	ffffa097          	auipc	ra,0xffffa
    800072e8:	100080e7          	jalr	256(ra) # 800013e4 <_Z15thread_dispatchv>
}
    800072ec:	01813083          	ld	ra,24(sp)
    800072f0:	01013403          	ld	s0,16(sp)
    800072f4:	00813483          	ld	s1,8(sp)
    800072f8:	00013903          	ld	s2,0(sp)
    800072fc:	02010113          	addi	sp,sp,32
    80007300:	00008067          	ret

0000000080007304 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80007304:	fe010113          	addi	sp,sp,-32
    80007308:	00113c23          	sd	ra,24(sp)
    8000730c:	00813823          	sd	s0,16(sp)
    80007310:	00913423          	sd	s1,8(sp)
    80007314:	01213023          	sd	s2,0(sp)
    80007318:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000731c:	00000493          	li	s1,0
    80007320:	0400006f          	j	80007360 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80007324:	00003517          	auipc	a0,0x3
    80007328:	01c50513          	addi	a0,a0,28 # 8000a340 <CONSOLE_STATUS+0x330>
    8000732c:	fffff097          	auipc	ra,0xfffff
    80007330:	e58080e7          	jalr	-424(ra) # 80006184 <_Z11printStringPKc>
    80007334:	00000613          	li	a2,0
    80007338:	00a00593          	li	a1,10
    8000733c:	00048513          	mv	a0,s1
    80007340:	fffff097          	auipc	ra,0xfffff
    80007344:	ff4080e7          	jalr	-12(ra) # 80006334 <_Z8printIntiii>
    80007348:	00003517          	auipc	a0,0x3
    8000734c:	43850513          	addi	a0,a0,1080 # 8000a780 <CONSOLE_STATUS+0x770>
    80007350:	fffff097          	auipc	ra,0xfffff
    80007354:	e34080e7          	jalr	-460(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80007358:	0014849b          	addiw	s1,s1,1
    8000735c:	0ff4f493          	andi	s1,s1,255
    80007360:	00200793          	li	a5,2
    80007364:	fc97f0e3          	bgeu	a5,s1,80007324 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80007368:	00003517          	auipc	a0,0x3
    8000736c:	fe050513          	addi	a0,a0,-32 # 8000a348 <CONSOLE_STATUS+0x338>
    80007370:	fffff097          	auipc	ra,0xfffff
    80007374:	e14080e7          	jalr	-492(ra) # 80006184 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80007378:	00700313          	li	t1,7
    thread_dispatch();
    8000737c:	ffffa097          	auipc	ra,0xffffa
    80007380:	068080e7          	jalr	104(ra) # 800013e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80007384:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80007388:	00003517          	auipc	a0,0x3
    8000738c:	fd050513          	addi	a0,a0,-48 # 8000a358 <CONSOLE_STATUS+0x348>
    80007390:	fffff097          	auipc	ra,0xfffff
    80007394:	df4080e7          	jalr	-524(ra) # 80006184 <_Z11printStringPKc>
    80007398:	00000613          	li	a2,0
    8000739c:	00a00593          	li	a1,10
    800073a0:	0009051b          	sext.w	a0,s2
    800073a4:	fffff097          	auipc	ra,0xfffff
    800073a8:	f90080e7          	jalr	-112(ra) # 80006334 <_Z8printIntiii>
    800073ac:	00003517          	auipc	a0,0x3
    800073b0:	3d450513          	addi	a0,a0,980 # 8000a780 <CONSOLE_STATUS+0x770>
    800073b4:	fffff097          	auipc	ra,0xfffff
    800073b8:	dd0080e7          	jalr	-560(ra) # 80006184 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800073bc:	00c00513          	li	a0,12
    800073c0:	00000097          	auipc	ra,0x0
    800073c4:	d88080e7          	jalr	-632(ra) # 80007148 <_ZL9fibonaccim>
    800073c8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800073cc:	00003517          	auipc	a0,0x3
    800073d0:	f9450513          	addi	a0,a0,-108 # 8000a360 <CONSOLE_STATUS+0x350>
    800073d4:	fffff097          	auipc	ra,0xfffff
    800073d8:	db0080e7          	jalr	-592(ra) # 80006184 <_Z11printStringPKc>
    800073dc:	00000613          	li	a2,0
    800073e0:	00a00593          	li	a1,10
    800073e4:	0009051b          	sext.w	a0,s2
    800073e8:	fffff097          	auipc	ra,0xfffff
    800073ec:	f4c080e7          	jalr	-180(ra) # 80006334 <_Z8printIntiii>
    800073f0:	00003517          	auipc	a0,0x3
    800073f4:	39050513          	addi	a0,a0,912 # 8000a780 <CONSOLE_STATUS+0x770>
    800073f8:	fffff097          	auipc	ra,0xfffff
    800073fc:	d8c080e7          	jalr	-628(ra) # 80006184 <_Z11printStringPKc>
    80007400:	0400006f          	j	80007440 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80007404:	00003517          	auipc	a0,0x3
    80007408:	f3c50513          	addi	a0,a0,-196 # 8000a340 <CONSOLE_STATUS+0x330>
    8000740c:	fffff097          	auipc	ra,0xfffff
    80007410:	d78080e7          	jalr	-648(ra) # 80006184 <_Z11printStringPKc>
    80007414:	00000613          	li	a2,0
    80007418:	00a00593          	li	a1,10
    8000741c:	00048513          	mv	a0,s1
    80007420:	fffff097          	auipc	ra,0xfffff
    80007424:	f14080e7          	jalr	-236(ra) # 80006334 <_Z8printIntiii>
    80007428:	00003517          	auipc	a0,0x3
    8000742c:	35850513          	addi	a0,a0,856 # 8000a780 <CONSOLE_STATUS+0x770>
    80007430:	fffff097          	auipc	ra,0xfffff
    80007434:	d54080e7          	jalr	-684(ra) # 80006184 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80007438:	0014849b          	addiw	s1,s1,1
    8000743c:	0ff4f493          	andi	s1,s1,255
    80007440:	00500793          	li	a5,5
    80007444:	fc97f0e3          	bgeu	a5,s1,80007404 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80007448:	00003517          	auipc	a0,0x3
    8000744c:	ed050513          	addi	a0,a0,-304 # 8000a318 <CONSOLE_STATUS+0x308>
    80007450:	fffff097          	auipc	ra,0xfffff
    80007454:	d34080e7          	jalr	-716(ra) # 80006184 <_Z11printStringPKc>
    finishedC = true;
    80007458:	00100793          	li	a5,1
    8000745c:	00006717          	auipc	a4,0x6
    80007460:	f6f70fa3          	sb	a5,-129(a4) # 8000d3db <_ZL9finishedC>
    thread_dispatch();
    80007464:	ffffa097          	auipc	ra,0xffffa
    80007468:	f80080e7          	jalr	-128(ra) # 800013e4 <_Z15thread_dispatchv>
}
    8000746c:	01813083          	ld	ra,24(sp)
    80007470:	01013403          	ld	s0,16(sp)
    80007474:	00813483          	ld	s1,8(sp)
    80007478:	00013903          	ld	s2,0(sp)
    8000747c:	02010113          	addi	sp,sp,32
    80007480:	00008067          	ret

0000000080007484 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80007484:	fe010113          	addi	sp,sp,-32
    80007488:	00113c23          	sd	ra,24(sp)
    8000748c:	00813823          	sd	s0,16(sp)
    80007490:	00913423          	sd	s1,8(sp)
    80007494:	01213023          	sd	s2,0(sp)
    80007498:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000749c:	00000913          	li	s2,0
    800074a0:	0400006f          	j	800074e0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800074a4:	ffffa097          	auipc	ra,0xffffa
    800074a8:	f40080e7          	jalr	-192(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800074ac:	00148493          	addi	s1,s1,1
    800074b0:	000027b7          	lui	a5,0x2
    800074b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800074b8:	0097ee63          	bltu	a5,s1,800074d4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800074bc:	00000713          	li	a4,0
    800074c0:	000077b7          	lui	a5,0x7
    800074c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800074c8:	fce7eee3          	bltu	a5,a4,800074a4 <_ZL11workerBodyBPv+0x20>
    800074cc:	00170713          	addi	a4,a4,1
    800074d0:	ff1ff06f          	j	800074c0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800074d4:	00a00793          	li	a5,10
    800074d8:	04f90663          	beq	s2,a5,80007524 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800074dc:	00190913          	addi	s2,s2,1
    800074e0:	00f00793          	li	a5,15
    800074e4:	0527e463          	bltu	a5,s2,8000752c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800074e8:	00003517          	auipc	a0,0x3
    800074ec:	e4050513          	addi	a0,a0,-448 # 8000a328 <CONSOLE_STATUS+0x318>
    800074f0:	fffff097          	auipc	ra,0xfffff
    800074f4:	c94080e7          	jalr	-876(ra) # 80006184 <_Z11printStringPKc>
    800074f8:	00000613          	li	a2,0
    800074fc:	00a00593          	li	a1,10
    80007500:	0009051b          	sext.w	a0,s2
    80007504:	fffff097          	auipc	ra,0xfffff
    80007508:	e30080e7          	jalr	-464(ra) # 80006334 <_Z8printIntiii>
    8000750c:	00003517          	auipc	a0,0x3
    80007510:	27450513          	addi	a0,a0,628 # 8000a780 <CONSOLE_STATUS+0x770>
    80007514:	fffff097          	auipc	ra,0xfffff
    80007518:	c70080e7          	jalr	-912(ra) # 80006184 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000751c:	00000493          	li	s1,0
    80007520:	f91ff06f          	j	800074b0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80007524:	14102ff3          	csrr	t6,sepc
    80007528:	fb5ff06f          	j	800074dc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000752c:	00003517          	auipc	a0,0x3
    80007530:	e0450513          	addi	a0,a0,-508 # 8000a330 <CONSOLE_STATUS+0x320>
    80007534:	fffff097          	auipc	ra,0xfffff
    80007538:	c50080e7          	jalr	-944(ra) # 80006184 <_Z11printStringPKc>
    finishedB = true;
    8000753c:	00100793          	li	a5,1
    80007540:	00006717          	auipc	a4,0x6
    80007544:	e8f70e23          	sb	a5,-356(a4) # 8000d3dc <_ZL9finishedB>
    thread_dispatch();
    80007548:	ffffa097          	auipc	ra,0xffffa
    8000754c:	e9c080e7          	jalr	-356(ra) # 800013e4 <_Z15thread_dispatchv>
}
    80007550:	01813083          	ld	ra,24(sp)
    80007554:	01013403          	ld	s0,16(sp)
    80007558:	00813483          	ld	s1,8(sp)
    8000755c:	00013903          	ld	s2,0(sp)
    80007560:	02010113          	addi	sp,sp,32
    80007564:	00008067          	ret

0000000080007568 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80007568:	fe010113          	addi	sp,sp,-32
    8000756c:	00113c23          	sd	ra,24(sp)
    80007570:	00813823          	sd	s0,16(sp)
    80007574:	00913423          	sd	s1,8(sp)
    80007578:	01213023          	sd	s2,0(sp)
    8000757c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80007580:	00000913          	li	s2,0
    80007584:	0380006f          	j	800075bc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80007588:	ffffa097          	auipc	ra,0xffffa
    8000758c:	e5c080e7          	jalr	-420(ra) # 800013e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80007590:	00148493          	addi	s1,s1,1
    80007594:	000027b7          	lui	a5,0x2
    80007598:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000759c:	0097ee63          	bltu	a5,s1,800075b8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800075a0:	00000713          	li	a4,0
    800075a4:	000077b7          	lui	a5,0x7
    800075a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800075ac:	fce7eee3          	bltu	a5,a4,80007588 <_ZL11workerBodyAPv+0x20>
    800075b0:	00170713          	addi	a4,a4,1
    800075b4:	ff1ff06f          	j	800075a4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800075b8:	00190913          	addi	s2,s2,1
    800075bc:	00900793          	li	a5,9
    800075c0:	0527e063          	bltu	a5,s2,80007600 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800075c4:	00003517          	auipc	a0,0x3
    800075c8:	d4c50513          	addi	a0,a0,-692 # 8000a310 <CONSOLE_STATUS+0x300>
    800075cc:	fffff097          	auipc	ra,0xfffff
    800075d0:	bb8080e7          	jalr	-1096(ra) # 80006184 <_Z11printStringPKc>
    800075d4:	00000613          	li	a2,0
    800075d8:	00a00593          	li	a1,10
    800075dc:	0009051b          	sext.w	a0,s2
    800075e0:	fffff097          	auipc	ra,0xfffff
    800075e4:	d54080e7          	jalr	-684(ra) # 80006334 <_Z8printIntiii>
    800075e8:	00003517          	auipc	a0,0x3
    800075ec:	19850513          	addi	a0,a0,408 # 8000a780 <CONSOLE_STATUS+0x770>
    800075f0:	fffff097          	auipc	ra,0xfffff
    800075f4:	b94080e7          	jalr	-1132(ra) # 80006184 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800075f8:	00000493          	li	s1,0
    800075fc:	f99ff06f          	j	80007594 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80007600:	00003517          	auipc	a0,0x3
    80007604:	d1850513          	addi	a0,a0,-744 # 8000a318 <CONSOLE_STATUS+0x308>
    80007608:	fffff097          	auipc	ra,0xfffff
    8000760c:	b7c080e7          	jalr	-1156(ra) # 80006184 <_Z11printStringPKc>
    finishedA = true;
    80007610:	00100793          	li	a5,1
    80007614:	00006717          	auipc	a4,0x6
    80007618:	dcf704a3          	sb	a5,-567(a4) # 8000d3dd <_ZL9finishedA>
}
    8000761c:	01813083          	ld	ra,24(sp)
    80007620:	01013403          	ld	s0,16(sp)
    80007624:	00813483          	ld	s1,8(sp)
    80007628:	00013903          	ld	s2,0(sp)
    8000762c:	02010113          	addi	sp,sp,32
    80007630:	00008067          	ret

0000000080007634 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80007634:	fd010113          	addi	sp,sp,-48
    80007638:	02113423          	sd	ra,40(sp)
    8000763c:	02813023          	sd	s0,32(sp)
    80007640:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80007644:	00000613          	li	a2,0
    80007648:	00000597          	auipc	a1,0x0
    8000764c:	f2058593          	addi	a1,a1,-224 # 80007568 <_ZL11workerBodyAPv>
    80007650:	fd040513          	addi	a0,s0,-48
    80007654:	ffffa097          	auipc	ra,0xffffa
    80007658:	cd4080e7          	jalr	-812(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000765c:	00003517          	auipc	a0,0x3
    80007660:	d4c50513          	addi	a0,a0,-692 # 8000a3a8 <CONSOLE_STATUS+0x398>
    80007664:	fffff097          	auipc	ra,0xfffff
    80007668:	b20080e7          	jalr	-1248(ra) # 80006184 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000766c:	00000613          	li	a2,0
    80007670:	00000597          	auipc	a1,0x0
    80007674:	e1458593          	addi	a1,a1,-492 # 80007484 <_ZL11workerBodyBPv>
    80007678:	fd840513          	addi	a0,s0,-40
    8000767c:	ffffa097          	auipc	ra,0xffffa
    80007680:	cac080e7          	jalr	-852(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80007684:	00003517          	auipc	a0,0x3
    80007688:	d3c50513          	addi	a0,a0,-708 # 8000a3c0 <CONSOLE_STATUS+0x3b0>
    8000768c:	fffff097          	auipc	ra,0xfffff
    80007690:	af8080e7          	jalr	-1288(ra) # 80006184 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80007694:	00000613          	li	a2,0
    80007698:	00000597          	auipc	a1,0x0
    8000769c:	c6c58593          	addi	a1,a1,-916 # 80007304 <_ZL11workerBodyCPv>
    800076a0:	fe040513          	addi	a0,s0,-32
    800076a4:	ffffa097          	auipc	ra,0xffffa
    800076a8:	c84080e7          	jalr	-892(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800076ac:	00003517          	auipc	a0,0x3
    800076b0:	d2c50513          	addi	a0,a0,-724 # 8000a3d8 <CONSOLE_STATUS+0x3c8>
    800076b4:	fffff097          	auipc	ra,0xfffff
    800076b8:	ad0080e7          	jalr	-1328(ra) # 80006184 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800076bc:	00000613          	li	a2,0
    800076c0:	00000597          	auipc	a1,0x0
    800076c4:	afc58593          	addi	a1,a1,-1284 # 800071bc <_ZL11workerBodyDPv>
    800076c8:	fe840513          	addi	a0,s0,-24
    800076cc:	ffffa097          	auipc	ra,0xffffa
    800076d0:	c5c080e7          	jalr	-932(ra) # 80001328 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800076d4:	00003517          	auipc	a0,0x3
    800076d8:	d1c50513          	addi	a0,a0,-740 # 8000a3f0 <CONSOLE_STATUS+0x3e0>
    800076dc:	fffff097          	auipc	ra,0xfffff
    800076e0:	aa8080e7          	jalr	-1368(ra) # 80006184 <_Z11printStringPKc>
    800076e4:	00c0006f          	j	800076f0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800076e8:	ffffa097          	auipc	ra,0xffffa
    800076ec:	cfc080e7          	jalr	-772(ra) # 800013e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800076f0:	00006797          	auipc	a5,0x6
    800076f4:	ced7c783          	lbu	a5,-787(a5) # 8000d3dd <_ZL9finishedA>
    800076f8:	fe0788e3          	beqz	a5,800076e8 <_Z16System_Mode_testv+0xb4>
    800076fc:	00006797          	auipc	a5,0x6
    80007700:	ce07c783          	lbu	a5,-800(a5) # 8000d3dc <_ZL9finishedB>
    80007704:	fe0782e3          	beqz	a5,800076e8 <_Z16System_Mode_testv+0xb4>
    80007708:	00006797          	auipc	a5,0x6
    8000770c:	cd37c783          	lbu	a5,-813(a5) # 8000d3db <_ZL9finishedC>
    80007710:	fc078ce3          	beqz	a5,800076e8 <_Z16System_Mode_testv+0xb4>
    80007714:	00006797          	auipc	a5,0x6
    80007718:	cc67c783          	lbu	a5,-826(a5) # 8000d3da <_ZL9finishedD>
    8000771c:	fc0786e3          	beqz	a5,800076e8 <_Z16System_Mode_testv+0xb4>
    }

}
    80007720:	02813083          	ld	ra,40(sp)
    80007724:	02013403          	ld	s0,32(sp)
    80007728:	03010113          	addi	sp,sp,48
    8000772c:	00008067          	ret

0000000080007730 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80007730:	fe010113          	addi	sp,sp,-32
    80007734:	00113c23          	sd	ra,24(sp)
    80007738:	00813823          	sd	s0,16(sp)
    8000773c:	00913423          	sd	s1,8(sp)
    80007740:	01213023          	sd	s2,0(sp)
    80007744:	02010413          	addi	s0,sp,32
    80007748:	00050493          	mv	s1,a0
    8000774c:	00058913          	mv	s2,a1
    80007750:	0015879b          	addiw	a5,a1,1
    80007754:	0007851b          	sext.w	a0,a5
    80007758:	00f4a023          	sw	a5,0(s1)
    8000775c:	0004a823          	sw	zero,16(s1)
    80007760:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80007764:	00251513          	slli	a0,a0,0x2
    80007768:	ffffa097          	auipc	ra,0xffffa
    8000776c:	aec080e7          	jalr	-1300(ra) # 80001254 <_Z9mem_allocm>
    80007770:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80007774:	00000593          	li	a1,0
    80007778:	02048513          	addi	a0,s1,32
    8000777c:	ffffa097          	auipc	ra,0xffffa
    80007780:	d70080e7          	jalr	-656(ra) # 800014ec <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80007784:	00090593          	mv	a1,s2
    80007788:	01848513          	addi	a0,s1,24
    8000778c:	ffffa097          	auipc	ra,0xffffa
    80007790:	d60080e7          	jalr	-672(ra) # 800014ec <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80007794:	00100593          	li	a1,1
    80007798:	02848513          	addi	a0,s1,40
    8000779c:	ffffa097          	auipc	ra,0xffffa
    800077a0:	d50080e7          	jalr	-688(ra) # 800014ec <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800077a4:	00100593          	li	a1,1
    800077a8:	03048513          	addi	a0,s1,48
    800077ac:	ffffa097          	auipc	ra,0xffffa
    800077b0:	d40080e7          	jalr	-704(ra) # 800014ec <_Z8sem_openPP4_semj>
}
    800077b4:	01813083          	ld	ra,24(sp)
    800077b8:	01013403          	ld	s0,16(sp)
    800077bc:	00813483          	ld	s1,8(sp)
    800077c0:	00013903          	ld	s2,0(sp)
    800077c4:	02010113          	addi	sp,sp,32
    800077c8:	00008067          	ret

00000000800077cc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800077cc:	fe010113          	addi	sp,sp,-32
    800077d0:	00113c23          	sd	ra,24(sp)
    800077d4:	00813823          	sd	s0,16(sp)
    800077d8:	00913423          	sd	s1,8(sp)
    800077dc:	01213023          	sd	s2,0(sp)
    800077e0:	02010413          	addi	s0,sp,32
    800077e4:	00050493          	mv	s1,a0
    800077e8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800077ec:	01853503          	ld	a0,24(a0)
    800077f0:	ffffa097          	auipc	ra,0xffffa
    800077f4:	d70080e7          	jalr	-656(ra) # 80001560 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800077f8:	0304b503          	ld	a0,48(s1)
    800077fc:	ffffa097          	auipc	ra,0xffffa
    80007800:	d64080e7          	jalr	-668(ra) # 80001560 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80007804:	0084b783          	ld	a5,8(s1)
    80007808:	0144a703          	lw	a4,20(s1)
    8000780c:	00271713          	slli	a4,a4,0x2
    80007810:	00e787b3          	add	a5,a5,a4
    80007814:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80007818:	0144a783          	lw	a5,20(s1)
    8000781c:	0017879b          	addiw	a5,a5,1
    80007820:	0004a703          	lw	a4,0(s1)
    80007824:	02e7e7bb          	remw	a5,a5,a4
    80007828:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000782c:	0304b503          	ld	a0,48(s1)
    80007830:	ffffa097          	auipc	ra,0xffffa
    80007834:	d68080e7          	jalr	-664(ra) # 80001598 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80007838:	0204b503          	ld	a0,32(s1)
    8000783c:	ffffa097          	auipc	ra,0xffffa
    80007840:	d5c080e7          	jalr	-676(ra) # 80001598 <_Z10sem_signalP4_sem>

}
    80007844:	01813083          	ld	ra,24(sp)
    80007848:	01013403          	ld	s0,16(sp)
    8000784c:	00813483          	ld	s1,8(sp)
    80007850:	00013903          	ld	s2,0(sp)
    80007854:	02010113          	addi	sp,sp,32
    80007858:	00008067          	ret

000000008000785c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000785c:	fe010113          	addi	sp,sp,-32
    80007860:	00113c23          	sd	ra,24(sp)
    80007864:	00813823          	sd	s0,16(sp)
    80007868:	00913423          	sd	s1,8(sp)
    8000786c:	01213023          	sd	s2,0(sp)
    80007870:	02010413          	addi	s0,sp,32
    80007874:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80007878:	02053503          	ld	a0,32(a0)
    8000787c:	ffffa097          	auipc	ra,0xffffa
    80007880:	ce4080e7          	jalr	-796(ra) # 80001560 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80007884:	0284b503          	ld	a0,40(s1)
    80007888:	ffffa097          	auipc	ra,0xffffa
    8000788c:	cd8080e7          	jalr	-808(ra) # 80001560 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80007890:	0084b703          	ld	a4,8(s1)
    80007894:	0104a783          	lw	a5,16(s1)
    80007898:	00279693          	slli	a3,a5,0x2
    8000789c:	00d70733          	add	a4,a4,a3
    800078a0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800078a4:	0017879b          	addiw	a5,a5,1
    800078a8:	0004a703          	lw	a4,0(s1)
    800078ac:	02e7e7bb          	remw	a5,a5,a4
    800078b0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800078b4:	0284b503          	ld	a0,40(s1)
    800078b8:	ffffa097          	auipc	ra,0xffffa
    800078bc:	ce0080e7          	jalr	-800(ra) # 80001598 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800078c0:	0184b503          	ld	a0,24(s1)
    800078c4:	ffffa097          	auipc	ra,0xffffa
    800078c8:	cd4080e7          	jalr	-812(ra) # 80001598 <_Z10sem_signalP4_sem>

    return ret;
}
    800078cc:	00090513          	mv	a0,s2
    800078d0:	01813083          	ld	ra,24(sp)
    800078d4:	01013403          	ld	s0,16(sp)
    800078d8:	00813483          	ld	s1,8(sp)
    800078dc:	00013903          	ld	s2,0(sp)
    800078e0:	02010113          	addi	sp,sp,32
    800078e4:	00008067          	ret

00000000800078e8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800078e8:	fe010113          	addi	sp,sp,-32
    800078ec:	00113c23          	sd	ra,24(sp)
    800078f0:	00813823          	sd	s0,16(sp)
    800078f4:	00913423          	sd	s1,8(sp)
    800078f8:	01213023          	sd	s2,0(sp)
    800078fc:	02010413          	addi	s0,sp,32
    80007900:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80007904:	02853503          	ld	a0,40(a0)
    80007908:	ffffa097          	auipc	ra,0xffffa
    8000790c:	c58080e7          	jalr	-936(ra) # 80001560 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80007910:	0304b503          	ld	a0,48(s1)
    80007914:	ffffa097          	auipc	ra,0xffffa
    80007918:	c4c080e7          	jalr	-948(ra) # 80001560 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000791c:	0144a783          	lw	a5,20(s1)
    80007920:	0104a903          	lw	s2,16(s1)
    80007924:	0327ce63          	blt	a5,s2,80007960 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80007928:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000792c:	0304b503          	ld	a0,48(s1)
    80007930:	ffffa097          	auipc	ra,0xffffa
    80007934:	c68080e7          	jalr	-920(ra) # 80001598 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80007938:	0284b503          	ld	a0,40(s1)
    8000793c:	ffffa097          	auipc	ra,0xffffa
    80007940:	c5c080e7          	jalr	-932(ra) # 80001598 <_Z10sem_signalP4_sem>

    return ret;
}
    80007944:	00090513          	mv	a0,s2
    80007948:	01813083          	ld	ra,24(sp)
    8000794c:	01013403          	ld	s0,16(sp)
    80007950:	00813483          	ld	s1,8(sp)
    80007954:	00013903          	ld	s2,0(sp)
    80007958:	02010113          	addi	sp,sp,32
    8000795c:	00008067          	ret
        ret = cap - head + tail;
    80007960:	0004a703          	lw	a4,0(s1)
    80007964:	4127093b          	subw	s2,a4,s2
    80007968:	00f9093b          	addw	s2,s2,a5
    8000796c:	fc1ff06f          	j	8000792c <_ZN6Buffer6getCntEv+0x44>

0000000080007970 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80007970:	fe010113          	addi	sp,sp,-32
    80007974:	00113c23          	sd	ra,24(sp)
    80007978:	00813823          	sd	s0,16(sp)
    8000797c:	00913423          	sd	s1,8(sp)
    80007980:	02010413          	addi	s0,sp,32
    80007984:	00050493          	mv	s1,a0
    putc('\n');
    80007988:	00a00513          	li	a0,10
    8000798c:	ffffa097          	auipc	ra,0xffffa
    80007990:	cb0080e7          	jalr	-848(ra) # 8000163c <_Z4putcc>
    printString("Buffer deleted!\n");
    80007994:	00003517          	auipc	a0,0x3
    80007998:	a7450513          	addi	a0,a0,-1420 # 8000a408 <CONSOLE_STATUS+0x3f8>
    8000799c:	ffffe097          	auipc	ra,0xffffe
    800079a0:	7e8080e7          	jalr	2024(ra) # 80006184 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800079a4:	00048513          	mv	a0,s1
    800079a8:	00000097          	auipc	ra,0x0
    800079ac:	f40080e7          	jalr	-192(ra) # 800078e8 <_ZN6Buffer6getCntEv>
    800079b0:	02a05c63          	blez	a0,800079e8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800079b4:	0084b783          	ld	a5,8(s1)
    800079b8:	0104a703          	lw	a4,16(s1)
    800079bc:	00271713          	slli	a4,a4,0x2
    800079c0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800079c4:	0007c503          	lbu	a0,0(a5)
    800079c8:	ffffa097          	auipc	ra,0xffffa
    800079cc:	c74080e7          	jalr	-908(ra) # 8000163c <_Z4putcc>
        head = (head + 1) % cap;
    800079d0:	0104a783          	lw	a5,16(s1)
    800079d4:	0017879b          	addiw	a5,a5,1
    800079d8:	0004a703          	lw	a4,0(s1)
    800079dc:	02e7e7bb          	remw	a5,a5,a4
    800079e0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800079e4:	fc1ff06f          	j	800079a4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800079e8:	02100513          	li	a0,33
    800079ec:	ffffa097          	auipc	ra,0xffffa
    800079f0:	c50080e7          	jalr	-944(ra) # 8000163c <_Z4putcc>
    putc('\n');
    800079f4:	00a00513          	li	a0,10
    800079f8:	ffffa097          	auipc	ra,0xffffa
    800079fc:	c44080e7          	jalr	-956(ra) # 8000163c <_Z4putcc>
    mem_free(buffer);
    80007a00:	0084b503          	ld	a0,8(s1)
    80007a04:	ffffa097          	auipc	ra,0xffffa
    80007a08:	88c080e7          	jalr	-1908(ra) # 80001290 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80007a0c:	0204b503          	ld	a0,32(s1)
    80007a10:	ffffa097          	auipc	ra,0xffffa
    80007a14:	b18080e7          	jalr	-1256(ra) # 80001528 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80007a18:	0184b503          	ld	a0,24(s1)
    80007a1c:	ffffa097          	auipc	ra,0xffffa
    80007a20:	b0c080e7          	jalr	-1268(ra) # 80001528 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80007a24:	0304b503          	ld	a0,48(s1)
    80007a28:	ffffa097          	auipc	ra,0xffffa
    80007a2c:	b00080e7          	jalr	-1280(ra) # 80001528 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80007a30:	0284b503          	ld	a0,40(s1)
    80007a34:	ffffa097          	auipc	ra,0xffffa
    80007a38:	af4080e7          	jalr	-1292(ra) # 80001528 <_Z9sem_closeP4_sem>
}
    80007a3c:	01813083          	ld	ra,24(sp)
    80007a40:	01013403          	ld	s0,16(sp)
    80007a44:	00813483          	ld	s1,8(sp)
    80007a48:	02010113          	addi	sp,sp,32
    80007a4c:	00008067          	ret

0000000080007a50 <start>:
    80007a50:	ff010113          	addi	sp,sp,-16
    80007a54:	00813423          	sd	s0,8(sp)
    80007a58:	01010413          	addi	s0,sp,16
    80007a5c:	300027f3          	csrr	a5,mstatus
    80007a60:	ffffe737          	lui	a4,0xffffe
    80007a64:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff01bf>
    80007a68:	00e7f7b3          	and	a5,a5,a4
    80007a6c:	00001737          	lui	a4,0x1
    80007a70:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80007a74:	00e7e7b3          	or	a5,a5,a4
    80007a78:	30079073          	csrw	mstatus,a5
    80007a7c:	00000797          	auipc	a5,0x0
    80007a80:	16078793          	addi	a5,a5,352 # 80007bdc <system_main>
    80007a84:	34179073          	csrw	mepc,a5
    80007a88:	00000793          	li	a5,0
    80007a8c:	18079073          	csrw	satp,a5
    80007a90:	000107b7          	lui	a5,0x10
    80007a94:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80007a98:	30279073          	csrw	medeleg,a5
    80007a9c:	30379073          	csrw	mideleg,a5
    80007aa0:	104027f3          	csrr	a5,sie
    80007aa4:	2227e793          	ori	a5,a5,546
    80007aa8:	10479073          	csrw	sie,a5
    80007aac:	fff00793          	li	a5,-1
    80007ab0:	00a7d793          	srli	a5,a5,0xa
    80007ab4:	3b079073          	csrw	pmpaddr0,a5
    80007ab8:	00f00793          	li	a5,15
    80007abc:	3a079073          	csrw	pmpcfg0,a5
    80007ac0:	f14027f3          	csrr	a5,mhartid
    80007ac4:	0200c737          	lui	a4,0x200c
    80007ac8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007acc:	0007869b          	sext.w	a3,a5
    80007ad0:	00269713          	slli	a4,a3,0x2
    80007ad4:	000f4637          	lui	a2,0xf4
    80007ad8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007adc:	00d70733          	add	a4,a4,a3
    80007ae0:	0037979b          	slliw	a5,a5,0x3
    80007ae4:	020046b7          	lui	a3,0x2004
    80007ae8:	00d787b3          	add	a5,a5,a3
    80007aec:	00c585b3          	add	a1,a1,a2
    80007af0:	00371693          	slli	a3,a4,0x3
    80007af4:	00006717          	auipc	a4,0x6
    80007af8:	8ec70713          	addi	a4,a4,-1812 # 8000d3e0 <timer_scratch>
    80007afc:	00b7b023          	sd	a1,0(a5)
    80007b00:	00d70733          	add	a4,a4,a3
    80007b04:	00f73c23          	sd	a5,24(a4)
    80007b08:	02c73023          	sd	a2,32(a4)
    80007b0c:	34071073          	csrw	mscratch,a4
    80007b10:	00000797          	auipc	a5,0x0
    80007b14:	6e078793          	addi	a5,a5,1760 # 800081f0 <timervec>
    80007b18:	30579073          	csrw	mtvec,a5
    80007b1c:	300027f3          	csrr	a5,mstatus
    80007b20:	0087e793          	ori	a5,a5,8
    80007b24:	30079073          	csrw	mstatus,a5
    80007b28:	304027f3          	csrr	a5,mie
    80007b2c:	0807e793          	ori	a5,a5,128
    80007b30:	30479073          	csrw	mie,a5
    80007b34:	f14027f3          	csrr	a5,mhartid
    80007b38:	0007879b          	sext.w	a5,a5
    80007b3c:	00078213          	mv	tp,a5
    80007b40:	30200073          	mret
    80007b44:	00813403          	ld	s0,8(sp)
    80007b48:	01010113          	addi	sp,sp,16
    80007b4c:	00008067          	ret

0000000080007b50 <timerinit>:
    80007b50:	ff010113          	addi	sp,sp,-16
    80007b54:	00813423          	sd	s0,8(sp)
    80007b58:	01010413          	addi	s0,sp,16
    80007b5c:	f14027f3          	csrr	a5,mhartid
    80007b60:	0200c737          	lui	a4,0x200c
    80007b64:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007b68:	0007869b          	sext.w	a3,a5
    80007b6c:	00269713          	slli	a4,a3,0x2
    80007b70:	000f4637          	lui	a2,0xf4
    80007b74:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007b78:	00d70733          	add	a4,a4,a3
    80007b7c:	0037979b          	slliw	a5,a5,0x3
    80007b80:	020046b7          	lui	a3,0x2004
    80007b84:	00d787b3          	add	a5,a5,a3
    80007b88:	00c585b3          	add	a1,a1,a2
    80007b8c:	00371693          	slli	a3,a4,0x3
    80007b90:	00006717          	auipc	a4,0x6
    80007b94:	85070713          	addi	a4,a4,-1968 # 8000d3e0 <timer_scratch>
    80007b98:	00b7b023          	sd	a1,0(a5)
    80007b9c:	00d70733          	add	a4,a4,a3
    80007ba0:	00f73c23          	sd	a5,24(a4)
    80007ba4:	02c73023          	sd	a2,32(a4)
    80007ba8:	34071073          	csrw	mscratch,a4
    80007bac:	00000797          	auipc	a5,0x0
    80007bb0:	64478793          	addi	a5,a5,1604 # 800081f0 <timervec>
    80007bb4:	30579073          	csrw	mtvec,a5
    80007bb8:	300027f3          	csrr	a5,mstatus
    80007bbc:	0087e793          	ori	a5,a5,8
    80007bc0:	30079073          	csrw	mstatus,a5
    80007bc4:	304027f3          	csrr	a5,mie
    80007bc8:	0807e793          	ori	a5,a5,128
    80007bcc:	30479073          	csrw	mie,a5
    80007bd0:	00813403          	ld	s0,8(sp)
    80007bd4:	01010113          	addi	sp,sp,16
    80007bd8:	00008067          	ret

0000000080007bdc <system_main>:
    80007bdc:	fe010113          	addi	sp,sp,-32
    80007be0:	00813823          	sd	s0,16(sp)
    80007be4:	00913423          	sd	s1,8(sp)
    80007be8:	00113c23          	sd	ra,24(sp)
    80007bec:	02010413          	addi	s0,sp,32
    80007bf0:	00000097          	auipc	ra,0x0
    80007bf4:	0c4080e7          	jalr	196(ra) # 80007cb4 <cpuid>
    80007bf8:	00005497          	auipc	s1,0x5
    80007bfc:	67848493          	addi	s1,s1,1656 # 8000d270 <started>
    80007c00:	02050263          	beqz	a0,80007c24 <system_main+0x48>
    80007c04:	0004a783          	lw	a5,0(s1)
    80007c08:	0007879b          	sext.w	a5,a5
    80007c0c:	fe078ce3          	beqz	a5,80007c04 <system_main+0x28>
    80007c10:	0ff0000f          	fence
    80007c14:	00003517          	auipc	a0,0x3
    80007c18:	ba450513          	addi	a0,a0,-1116 # 8000a7b8 <CONSOLE_STATUS+0x7a8>
    80007c1c:	00001097          	auipc	ra,0x1
    80007c20:	a70080e7          	jalr	-1424(ra) # 8000868c <panic>
    80007c24:	00001097          	auipc	ra,0x1
    80007c28:	9c4080e7          	jalr	-1596(ra) # 800085e8 <consoleinit>
    80007c2c:	00001097          	auipc	ra,0x1
    80007c30:	150080e7          	jalr	336(ra) # 80008d7c <printfinit>
    80007c34:	00003517          	auipc	a0,0x3
    80007c38:	b4c50513          	addi	a0,a0,-1204 # 8000a780 <CONSOLE_STATUS+0x770>
    80007c3c:	00001097          	auipc	ra,0x1
    80007c40:	aac080e7          	jalr	-1364(ra) # 800086e8 <__printf>
    80007c44:	00003517          	auipc	a0,0x3
    80007c48:	b4450513          	addi	a0,a0,-1212 # 8000a788 <CONSOLE_STATUS+0x778>
    80007c4c:	00001097          	auipc	ra,0x1
    80007c50:	a9c080e7          	jalr	-1380(ra) # 800086e8 <__printf>
    80007c54:	00003517          	auipc	a0,0x3
    80007c58:	b2c50513          	addi	a0,a0,-1236 # 8000a780 <CONSOLE_STATUS+0x770>
    80007c5c:	00001097          	auipc	ra,0x1
    80007c60:	a8c080e7          	jalr	-1396(ra) # 800086e8 <__printf>
    80007c64:	00001097          	auipc	ra,0x1
    80007c68:	4a4080e7          	jalr	1188(ra) # 80009108 <kinit>
    80007c6c:	00000097          	auipc	ra,0x0
    80007c70:	148080e7          	jalr	328(ra) # 80007db4 <trapinit>
    80007c74:	00000097          	auipc	ra,0x0
    80007c78:	16c080e7          	jalr	364(ra) # 80007de0 <trapinithart>
    80007c7c:	00000097          	auipc	ra,0x0
    80007c80:	5b4080e7          	jalr	1460(ra) # 80008230 <plicinit>
    80007c84:	00000097          	auipc	ra,0x0
    80007c88:	5d4080e7          	jalr	1492(ra) # 80008258 <plicinithart>
    80007c8c:	00000097          	auipc	ra,0x0
    80007c90:	078080e7          	jalr	120(ra) # 80007d04 <userinit>
    80007c94:	0ff0000f          	fence
    80007c98:	00100793          	li	a5,1
    80007c9c:	00003517          	auipc	a0,0x3
    80007ca0:	b0450513          	addi	a0,a0,-1276 # 8000a7a0 <CONSOLE_STATUS+0x790>
    80007ca4:	00f4a023          	sw	a5,0(s1)
    80007ca8:	00001097          	auipc	ra,0x1
    80007cac:	a40080e7          	jalr	-1472(ra) # 800086e8 <__printf>
    80007cb0:	0000006f          	j	80007cb0 <system_main+0xd4>

0000000080007cb4 <cpuid>:
    80007cb4:	ff010113          	addi	sp,sp,-16
    80007cb8:	00813423          	sd	s0,8(sp)
    80007cbc:	01010413          	addi	s0,sp,16
    80007cc0:	00020513          	mv	a0,tp
    80007cc4:	00813403          	ld	s0,8(sp)
    80007cc8:	0005051b          	sext.w	a0,a0
    80007ccc:	01010113          	addi	sp,sp,16
    80007cd0:	00008067          	ret

0000000080007cd4 <mycpu>:
    80007cd4:	ff010113          	addi	sp,sp,-16
    80007cd8:	00813423          	sd	s0,8(sp)
    80007cdc:	01010413          	addi	s0,sp,16
    80007ce0:	00020793          	mv	a5,tp
    80007ce4:	00813403          	ld	s0,8(sp)
    80007ce8:	0007879b          	sext.w	a5,a5
    80007cec:	00779793          	slli	a5,a5,0x7
    80007cf0:	00006517          	auipc	a0,0x6
    80007cf4:	72050513          	addi	a0,a0,1824 # 8000e410 <cpus>
    80007cf8:	00f50533          	add	a0,a0,a5
    80007cfc:	01010113          	addi	sp,sp,16
    80007d00:	00008067          	ret

0000000080007d04 <userinit>:
    80007d04:	ff010113          	addi	sp,sp,-16
    80007d08:	00813423          	sd	s0,8(sp)
    80007d0c:	01010413          	addi	s0,sp,16
    80007d10:	00813403          	ld	s0,8(sp)
    80007d14:	01010113          	addi	sp,sp,16
    80007d18:	ffffa317          	auipc	t1,0xffffa
    80007d1c:	c6430067          	jr	-924(t1) # 8000197c <main>

0000000080007d20 <either_copyout>:
    80007d20:	ff010113          	addi	sp,sp,-16
    80007d24:	00813023          	sd	s0,0(sp)
    80007d28:	00113423          	sd	ra,8(sp)
    80007d2c:	01010413          	addi	s0,sp,16
    80007d30:	02051663          	bnez	a0,80007d5c <either_copyout+0x3c>
    80007d34:	00058513          	mv	a0,a1
    80007d38:	00060593          	mv	a1,a2
    80007d3c:	0006861b          	sext.w	a2,a3
    80007d40:	00002097          	auipc	ra,0x2
    80007d44:	c54080e7          	jalr	-940(ra) # 80009994 <__memmove>
    80007d48:	00813083          	ld	ra,8(sp)
    80007d4c:	00013403          	ld	s0,0(sp)
    80007d50:	00000513          	li	a0,0
    80007d54:	01010113          	addi	sp,sp,16
    80007d58:	00008067          	ret
    80007d5c:	00003517          	auipc	a0,0x3
    80007d60:	a8450513          	addi	a0,a0,-1404 # 8000a7e0 <CONSOLE_STATUS+0x7d0>
    80007d64:	00001097          	auipc	ra,0x1
    80007d68:	928080e7          	jalr	-1752(ra) # 8000868c <panic>

0000000080007d6c <either_copyin>:
    80007d6c:	ff010113          	addi	sp,sp,-16
    80007d70:	00813023          	sd	s0,0(sp)
    80007d74:	00113423          	sd	ra,8(sp)
    80007d78:	01010413          	addi	s0,sp,16
    80007d7c:	02059463          	bnez	a1,80007da4 <either_copyin+0x38>
    80007d80:	00060593          	mv	a1,a2
    80007d84:	0006861b          	sext.w	a2,a3
    80007d88:	00002097          	auipc	ra,0x2
    80007d8c:	c0c080e7          	jalr	-1012(ra) # 80009994 <__memmove>
    80007d90:	00813083          	ld	ra,8(sp)
    80007d94:	00013403          	ld	s0,0(sp)
    80007d98:	00000513          	li	a0,0
    80007d9c:	01010113          	addi	sp,sp,16
    80007da0:	00008067          	ret
    80007da4:	00003517          	auipc	a0,0x3
    80007da8:	a6450513          	addi	a0,a0,-1436 # 8000a808 <CONSOLE_STATUS+0x7f8>
    80007dac:	00001097          	auipc	ra,0x1
    80007db0:	8e0080e7          	jalr	-1824(ra) # 8000868c <panic>

0000000080007db4 <trapinit>:
    80007db4:	ff010113          	addi	sp,sp,-16
    80007db8:	00813423          	sd	s0,8(sp)
    80007dbc:	01010413          	addi	s0,sp,16
    80007dc0:	00813403          	ld	s0,8(sp)
    80007dc4:	00003597          	auipc	a1,0x3
    80007dc8:	a6c58593          	addi	a1,a1,-1428 # 8000a830 <CONSOLE_STATUS+0x820>
    80007dcc:	00006517          	auipc	a0,0x6
    80007dd0:	6c450513          	addi	a0,a0,1732 # 8000e490 <tickslock>
    80007dd4:	01010113          	addi	sp,sp,16
    80007dd8:	00001317          	auipc	t1,0x1
    80007ddc:	5c030067          	jr	1472(t1) # 80009398 <initlock>

0000000080007de0 <trapinithart>:
    80007de0:	ff010113          	addi	sp,sp,-16
    80007de4:	00813423          	sd	s0,8(sp)
    80007de8:	01010413          	addi	s0,sp,16
    80007dec:	00000797          	auipc	a5,0x0
    80007df0:	2f478793          	addi	a5,a5,756 # 800080e0 <kernelvec>
    80007df4:	10579073          	csrw	stvec,a5
    80007df8:	00813403          	ld	s0,8(sp)
    80007dfc:	01010113          	addi	sp,sp,16
    80007e00:	00008067          	ret

0000000080007e04 <usertrap>:
    80007e04:	ff010113          	addi	sp,sp,-16
    80007e08:	00813423          	sd	s0,8(sp)
    80007e0c:	01010413          	addi	s0,sp,16
    80007e10:	00813403          	ld	s0,8(sp)
    80007e14:	01010113          	addi	sp,sp,16
    80007e18:	00008067          	ret

0000000080007e1c <usertrapret>:
    80007e1c:	ff010113          	addi	sp,sp,-16
    80007e20:	00813423          	sd	s0,8(sp)
    80007e24:	01010413          	addi	s0,sp,16
    80007e28:	00813403          	ld	s0,8(sp)
    80007e2c:	01010113          	addi	sp,sp,16
    80007e30:	00008067          	ret

0000000080007e34 <kerneltrap>:
    80007e34:	fe010113          	addi	sp,sp,-32
    80007e38:	00813823          	sd	s0,16(sp)
    80007e3c:	00113c23          	sd	ra,24(sp)
    80007e40:	00913423          	sd	s1,8(sp)
    80007e44:	02010413          	addi	s0,sp,32
    80007e48:	142025f3          	csrr	a1,scause
    80007e4c:	100027f3          	csrr	a5,sstatus
    80007e50:	0027f793          	andi	a5,a5,2
    80007e54:	10079c63          	bnez	a5,80007f6c <kerneltrap+0x138>
    80007e58:	142027f3          	csrr	a5,scause
    80007e5c:	0207ce63          	bltz	a5,80007e98 <kerneltrap+0x64>
    80007e60:	00003517          	auipc	a0,0x3
    80007e64:	a1850513          	addi	a0,a0,-1512 # 8000a878 <CONSOLE_STATUS+0x868>
    80007e68:	00001097          	auipc	ra,0x1
    80007e6c:	880080e7          	jalr	-1920(ra) # 800086e8 <__printf>
    80007e70:	141025f3          	csrr	a1,sepc
    80007e74:	14302673          	csrr	a2,stval
    80007e78:	00003517          	auipc	a0,0x3
    80007e7c:	a1050513          	addi	a0,a0,-1520 # 8000a888 <CONSOLE_STATUS+0x878>
    80007e80:	00001097          	auipc	ra,0x1
    80007e84:	868080e7          	jalr	-1944(ra) # 800086e8 <__printf>
    80007e88:	00003517          	auipc	a0,0x3
    80007e8c:	a1850513          	addi	a0,a0,-1512 # 8000a8a0 <CONSOLE_STATUS+0x890>
    80007e90:	00000097          	auipc	ra,0x0
    80007e94:	7fc080e7          	jalr	2044(ra) # 8000868c <panic>
    80007e98:	0ff7f713          	andi	a4,a5,255
    80007e9c:	00900693          	li	a3,9
    80007ea0:	04d70063          	beq	a4,a3,80007ee0 <kerneltrap+0xac>
    80007ea4:	fff00713          	li	a4,-1
    80007ea8:	03f71713          	slli	a4,a4,0x3f
    80007eac:	00170713          	addi	a4,a4,1
    80007eb0:	fae798e3          	bne	a5,a4,80007e60 <kerneltrap+0x2c>
    80007eb4:	00000097          	auipc	ra,0x0
    80007eb8:	e00080e7          	jalr	-512(ra) # 80007cb4 <cpuid>
    80007ebc:	06050663          	beqz	a0,80007f28 <kerneltrap+0xf4>
    80007ec0:	144027f3          	csrr	a5,sip
    80007ec4:	ffd7f793          	andi	a5,a5,-3
    80007ec8:	14479073          	csrw	sip,a5
    80007ecc:	01813083          	ld	ra,24(sp)
    80007ed0:	01013403          	ld	s0,16(sp)
    80007ed4:	00813483          	ld	s1,8(sp)
    80007ed8:	02010113          	addi	sp,sp,32
    80007edc:	00008067          	ret
    80007ee0:	00000097          	auipc	ra,0x0
    80007ee4:	3c4080e7          	jalr	964(ra) # 800082a4 <plic_claim>
    80007ee8:	00a00793          	li	a5,10
    80007eec:	00050493          	mv	s1,a0
    80007ef0:	06f50863          	beq	a0,a5,80007f60 <kerneltrap+0x12c>
    80007ef4:	fc050ce3          	beqz	a0,80007ecc <kerneltrap+0x98>
    80007ef8:	00050593          	mv	a1,a0
    80007efc:	00003517          	auipc	a0,0x3
    80007f00:	95c50513          	addi	a0,a0,-1700 # 8000a858 <CONSOLE_STATUS+0x848>
    80007f04:	00000097          	auipc	ra,0x0
    80007f08:	7e4080e7          	jalr	2020(ra) # 800086e8 <__printf>
    80007f0c:	01013403          	ld	s0,16(sp)
    80007f10:	01813083          	ld	ra,24(sp)
    80007f14:	00048513          	mv	a0,s1
    80007f18:	00813483          	ld	s1,8(sp)
    80007f1c:	02010113          	addi	sp,sp,32
    80007f20:	00000317          	auipc	t1,0x0
    80007f24:	3bc30067          	jr	956(t1) # 800082dc <plic_complete>
    80007f28:	00006517          	auipc	a0,0x6
    80007f2c:	56850513          	addi	a0,a0,1384 # 8000e490 <tickslock>
    80007f30:	00001097          	auipc	ra,0x1
    80007f34:	48c080e7          	jalr	1164(ra) # 800093bc <acquire>
    80007f38:	00005717          	auipc	a4,0x5
    80007f3c:	33c70713          	addi	a4,a4,828 # 8000d274 <ticks>
    80007f40:	00072783          	lw	a5,0(a4)
    80007f44:	00006517          	auipc	a0,0x6
    80007f48:	54c50513          	addi	a0,a0,1356 # 8000e490 <tickslock>
    80007f4c:	0017879b          	addiw	a5,a5,1
    80007f50:	00f72023          	sw	a5,0(a4)
    80007f54:	00001097          	auipc	ra,0x1
    80007f58:	534080e7          	jalr	1332(ra) # 80009488 <release>
    80007f5c:	f65ff06f          	j	80007ec0 <kerneltrap+0x8c>
    80007f60:	00001097          	auipc	ra,0x1
    80007f64:	090080e7          	jalr	144(ra) # 80008ff0 <uartintr>
    80007f68:	fa5ff06f          	j	80007f0c <kerneltrap+0xd8>
    80007f6c:	00003517          	auipc	a0,0x3
    80007f70:	8cc50513          	addi	a0,a0,-1844 # 8000a838 <CONSOLE_STATUS+0x828>
    80007f74:	00000097          	auipc	ra,0x0
    80007f78:	718080e7          	jalr	1816(ra) # 8000868c <panic>

0000000080007f7c <clockintr>:
    80007f7c:	fe010113          	addi	sp,sp,-32
    80007f80:	00813823          	sd	s0,16(sp)
    80007f84:	00913423          	sd	s1,8(sp)
    80007f88:	00113c23          	sd	ra,24(sp)
    80007f8c:	02010413          	addi	s0,sp,32
    80007f90:	00006497          	auipc	s1,0x6
    80007f94:	50048493          	addi	s1,s1,1280 # 8000e490 <tickslock>
    80007f98:	00048513          	mv	a0,s1
    80007f9c:	00001097          	auipc	ra,0x1
    80007fa0:	420080e7          	jalr	1056(ra) # 800093bc <acquire>
    80007fa4:	00005717          	auipc	a4,0x5
    80007fa8:	2d070713          	addi	a4,a4,720 # 8000d274 <ticks>
    80007fac:	00072783          	lw	a5,0(a4)
    80007fb0:	01013403          	ld	s0,16(sp)
    80007fb4:	01813083          	ld	ra,24(sp)
    80007fb8:	00048513          	mv	a0,s1
    80007fbc:	0017879b          	addiw	a5,a5,1
    80007fc0:	00813483          	ld	s1,8(sp)
    80007fc4:	00f72023          	sw	a5,0(a4)
    80007fc8:	02010113          	addi	sp,sp,32
    80007fcc:	00001317          	auipc	t1,0x1
    80007fd0:	4bc30067          	jr	1212(t1) # 80009488 <release>

0000000080007fd4 <devintr>:
    80007fd4:	142027f3          	csrr	a5,scause
    80007fd8:	00000513          	li	a0,0
    80007fdc:	0007c463          	bltz	a5,80007fe4 <devintr+0x10>
    80007fe0:	00008067          	ret
    80007fe4:	fe010113          	addi	sp,sp,-32
    80007fe8:	00813823          	sd	s0,16(sp)
    80007fec:	00113c23          	sd	ra,24(sp)
    80007ff0:	00913423          	sd	s1,8(sp)
    80007ff4:	02010413          	addi	s0,sp,32
    80007ff8:	0ff7f713          	andi	a4,a5,255
    80007ffc:	00900693          	li	a3,9
    80008000:	04d70c63          	beq	a4,a3,80008058 <devintr+0x84>
    80008004:	fff00713          	li	a4,-1
    80008008:	03f71713          	slli	a4,a4,0x3f
    8000800c:	00170713          	addi	a4,a4,1
    80008010:	00e78c63          	beq	a5,a4,80008028 <devintr+0x54>
    80008014:	01813083          	ld	ra,24(sp)
    80008018:	01013403          	ld	s0,16(sp)
    8000801c:	00813483          	ld	s1,8(sp)
    80008020:	02010113          	addi	sp,sp,32
    80008024:	00008067          	ret
    80008028:	00000097          	auipc	ra,0x0
    8000802c:	c8c080e7          	jalr	-884(ra) # 80007cb4 <cpuid>
    80008030:	06050663          	beqz	a0,8000809c <devintr+0xc8>
    80008034:	144027f3          	csrr	a5,sip
    80008038:	ffd7f793          	andi	a5,a5,-3
    8000803c:	14479073          	csrw	sip,a5
    80008040:	01813083          	ld	ra,24(sp)
    80008044:	01013403          	ld	s0,16(sp)
    80008048:	00813483          	ld	s1,8(sp)
    8000804c:	00200513          	li	a0,2
    80008050:	02010113          	addi	sp,sp,32
    80008054:	00008067          	ret
    80008058:	00000097          	auipc	ra,0x0
    8000805c:	24c080e7          	jalr	588(ra) # 800082a4 <plic_claim>
    80008060:	00a00793          	li	a5,10
    80008064:	00050493          	mv	s1,a0
    80008068:	06f50663          	beq	a0,a5,800080d4 <devintr+0x100>
    8000806c:	00100513          	li	a0,1
    80008070:	fa0482e3          	beqz	s1,80008014 <devintr+0x40>
    80008074:	00048593          	mv	a1,s1
    80008078:	00002517          	auipc	a0,0x2
    8000807c:	7e050513          	addi	a0,a0,2016 # 8000a858 <CONSOLE_STATUS+0x848>
    80008080:	00000097          	auipc	ra,0x0
    80008084:	668080e7          	jalr	1640(ra) # 800086e8 <__printf>
    80008088:	00048513          	mv	a0,s1
    8000808c:	00000097          	auipc	ra,0x0
    80008090:	250080e7          	jalr	592(ra) # 800082dc <plic_complete>
    80008094:	00100513          	li	a0,1
    80008098:	f7dff06f          	j	80008014 <devintr+0x40>
    8000809c:	00006517          	auipc	a0,0x6
    800080a0:	3f450513          	addi	a0,a0,1012 # 8000e490 <tickslock>
    800080a4:	00001097          	auipc	ra,0x1
    800080a8:	318080e7          	jalr	792(ra) # 800093bc <acquire>
    800080ac:	00005717          	auipc	a4,0x5
    800080b0:	1c870713          	addi	a4,a4,456 # 8000d274 <ticks>
    800080b4:	00072783          	lw	a5,0(a4)
    800080b8:	00006517          	auipc	a0,0x6
    800080bc:	3d850513          	addi	a0,a0,984 # 8000e490 <tickslock>
    800080c0:	0017879b          	addiw	a5,a5,1
    800080c4:	00f72023          	sw	a5,0(a4)
    800080c8:	00001097          	auipc	ra,0x1
    800080cc:	3c0080e7          	jalr	960(ra) # 80009488 <release>
    800080d0:	f65ff06f          	j	80008034 <devintr+0x60>
    800080d4:	00001097          	auipc	ra,0x1
    800080d8:	f1c080e7          	jalr	-228(ra) # 80008ff0 <uartintr>
    800080dc:	fadff06f          	j	80008088 <devintr+0xb4>

00000000800080e0 <kernelvec>:
    800080e0:	f0010113          	addi	sp,sp,-256
    800080e4:	00113023          	sd	ra,0(sp)
    800080e8:	00213423          	sd	sp,8(sp)
    800080ec:	00313823          	sd	gp,16(sp)
    800080f0:	00413c23          	sd	tp,24(sp)
    800080f4:	02513023          	sd	t0,32(sp)
    800080f8:	02613423          	sd	t1,40(sp)
    800080fc:	02713823          	sd	t2,48(sp)
    80008100:	02813c23          	sd	s0,56(sp)
    80008104:	04913023          	sd	s1,64(sp)
    80008108:	04a13423          	sd	a0,72(sp)
    8000810c:	04b13823          	sd	a1,80(sp)
    80008110:	04c13c23          	sd	a2,88(sp)
    80008114:	06d13023          	sd	a3,96(sp)
    80008118:	06e13423          	sd	a4,104(sp)
    8000811c:	06f13823          	sd	a5,112(sp)
    80008120:	07013c23          	sd	a6,120(sp)
    80008124:	09113023          	sd	a7,128(sp)
    80008128:	09213423          	sd	s2,136(sp)
    8000812c:	09313823          	sd	s3,144(sp)
    80008130:	09413c23          	sd	s4,152(sp)
    80008134:	0b513023          	sd	s5,160(sp)
    80008138:	0b613423          	sd	s6,168(sp)
    8000813c:	0b713823          	sd	s7,176(sp)
    80008140:	0b813c23          	sd	s8,184(sp)
    80008144:	0d913023          	sd	s9,192(sp)
    80008148:	0da13423          	sd	s10,200(sp)
    8000814c:	0db13823          	sd	s11,208(sp)
    80008150:	0dc13c23          	sd	t3,216(sp)
    80008154:	0fd13023          	sd	t4,224(sp)
    80008158:	0fe13423          	sd	t5,232(sp)
    8000815c:	0ff13823          	sd	t6,240(sp)
    80008160:	cd5ff0ef          	jal	ra,80007e34 <kerneltrap>
    80008164:	00013083          	ld	ra,0(sp)
    80008168:	00813103          	ld	sp,8(sp)
    8000816c:	01013183          	ld	gp,16(sp)
    80008170:	02013283          	ld	t0,32(sp)
    80008174:	02813303          	ld	t1,40(sp)
    80008178:	03013383          	ld	t2,48(sp)
    8000817c:	03813403          	ld	s0,56(sp)
    80008180:	04013483          	ld	s1,64(sp)
    80008184:	04813503          	ld	a0,72(sp)
    80008188:	05013583          	ld	a1,80(sp)
    8000818c:	05813603          	ld	a2,88(sp)
    80008190:	06013683          	ld	a3,96(sp)
    80008194:	06813703          	ld	a4,104(sp)
    80008198:	07013783          	ld	a5,112(sp)
    8000819c:	07813803          	ld	a6,120(sp)
    800081a0:	08013883          	ld	a7,128(sp)
    800081a4:	08813903          	ld	s2,136(sp)
    800081a8:	09013983          	ld	s3,144(sp)
    800081ac:	09813a03          	ld	s4,152(sp)
    800081b0:	0a013a83          	ld	s5,160(sp)
    800081b4:	0a813b03          	ld	s6,168(sp)
    800081b8:	0b013b83          	ld	s7,176(sp)
    800081bc:	0b813c03          	ld	s8,184(sp)
    800081c0:	0c013c83          	ld	s9,192(sp)
    800081c4:	0c813d03          	ld	s10,200(sp)
    800081c8:	0d013d83          	ld	s11,208(sp)
    800081cc:	0d813e03          	ld	t3,216(sp)
    800081d0:	0e013e83          	ld	t4,224(sp)
    800081d4:	0e813f03          	ld	t5,232(sp)
    800081d8:	0f013f83          	ld	t6,240(sp)
    800081dc:	10010113          	addi	sp,sp,256
    800081e0:	10200073          	sret
    800081e4:	00000013          	nop
    800081e8:	00000013          	nop
    800081ec:	00000013          	nop

00000000800081f0 <timervec>:
    800081f0:	34051573          	csrrw	a0,mscratch,a0
    800081f4:	00b53023          	sd	a1,0(a0)
    800081f8:	00c53423          	sd	a2,8(a0)
    800081fc:	00d53823          	sd	a3,16(a0)
    80008200:	01853583          	ld	a1,24(a0)
    80008204:	02053603          	ld	a2,32(a0)
    80008208:	0005b683          	ld	a3,0(a1)
    8000820c:	00c686b3          	add	a3,a3,a2
    80008210:	00d5b023          	sd	a3,0(a1)
    80008214:	00200593          	li	a1,2
    80008218:	14459073          	csrw	sip,a1
    8000821c:	01053683          	ld	a3,16(a0)
    80008220:	00853603          	ld	a2,8(a0)
    80008224:	00053583          	ld	a1,0(a0)
    80008228:	34051573          	csrrw	a0,mscratch,a0
    8000822c:	30200073          	mret

0000000080008230 <plicinit>:
    80008230:	ff010113          	addi	sp,sp,-16
    80008234:	00813423          	sd	s0,8(sp)
    80008238:	01010413          	addi	s0,sp,16
    8000823c:	00813403          	ld	s0,8(sp)
    80008240:	0c0007b7          	lui	a5,0xc000
    80008244:	00100713          	li	a4,1
    80008248:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000824c:	00e7a223          	sw	a4,4(a5)
    80008250:	01010113          	addi	sp,sp,16
    80008254:	00008067          	ret

0000000080008258 <plicinithart>:
    80008258:	ff010113          	addi	sp,sp,-16
    8000825c:	00813023          	sd	s0,0(sp)
    80008260:	00113423          	sd	ra,8(sp)
    80008264:	01010413          	addi	s0,sp,16
    80008268:	00000097          	auipc	ra,0x0
    8000826c:	a4c080e7          	jalr	-1460(ra) # 80007cb4 <cpuid>
    80008270:	0085171b          	slliw	a4,a0,0x8
    80008274:	0c0027b7          	lui	a5,0xc002
    80008278:	00e787b3          	add	a5,a5,a4
    8000827c:	40200713          	li	a4,1026
    80008280:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80008284:	00813083          	ld	ra,8(sp)
    80008288:	00013403          	ld	s0,0(sp)
    8000828c:	00d5151b          	slliw	a0,a0,0xd
    80008290:	0c2017b7          	lui	a5,0xc201
    80008294:	00a78533          	add	a0,a5,a0
    80008298:	00052023          	sw	zero,0(a0)
    8000829c:	01010113          	addi	sp,sp,16
    800082a0:	00008067          	ret

00000000800082a4 <plic_claim>:
    800082a4:	ff010113          	addi	sp,sp,-16
    800082a8:	00813023          	sd	s0,0(sp)
    800082ac:	00113423          	sd	ra,8(sp)
    800082b0:	01010413          	addi	s0,sp,16
    800082b4:	00000097          	auipc	ra,0x0
    800082b8:	a00080e7          	jalr	-1536(ra) # 80007cb4 <cpuid>
    800082bc:	00813083          	ld	ra,8(sp)
    800082c0:	00013403          	ld	s0,0(sp)
    800082c4:	00d5151b          	slliw	a0,a0,0xd
    800082c8:	0c2017b7          	lui	a5,0xc201
    800082cc:	00a78533          	add	a0,a5,a0
    800082d0:	00452503          	lw	a0,4(a0)
    800082d4:	01010113          	addi	sp,sp,16
    800082d8:	00008067          	ret

00000000800082dc <plic_complete>:
    800082dc:	fe010113          	addi	sp,sp,-32
    800082e0:	00813823          	sd	s0,16(sp)
    800082e4:	00913423          	sd	s1,8(sp)
    800082e8:	00113c23          	sd	ra,24(sp)
    800082ec:	02010413          	addi	s0,sp,32
    800082f0:	00050493          	mv	s1,a0
    800082f4:	00000097          	auipc	ra,0x0
    800082f8:	9c0080e7          	jalr	-1600(ra) # 80007cb4 <cpuid>
    800082fc:	01813083          	ld	ra,24(sp)
    80008300:	01013403          	ld	s0,16(sp)
    80008304:	00d5179b          	slliw	a5,a0,0xd
    80008308:	0c201737          	lui	a4,0xc201
    8000830c:	00f707b3          	add	a5,a4,a5
    80008310:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80008314:	00813483          	ld	s1,8(sp)
    80008318:	02010113          	addi	sp,sp,32
    8000831c:	00008067          	ret

0000000080008320 <consolewrite>:
    80008320:	fb010113          	addi	sp,sp,-80
    80008324:	04813023          	sd	s0,64(sp)
    80008328:	04113423          	sd	ra,72(sp)
    8000832c:	02913c23          	sd	s1,56(sp)
    80008330:	03213823          	sd	s2,48(sp)
    80008334:	03313423          	sd	s3,40(sp)
    80008338:	03413023          	sd	s4,32(sp)
    8000833c:	01513c23          	sd	s5,24(sp)
    80008340:	05010413          	addi	s0,sp,80
    80008344:	06c05c63          	blez	a2,800083bc <consolewrite+0x9c>
    80008348:	00060993          	mv	s3,a2
    8000834c:	00050a13          	mv	s4,a0
    80008350:	00058493          	mv	s1,a1
    80008354:	00000913          	li	s2,0
    80008358:	fff00a93          	li	s5,-1
    8000835c:	01c0006f          	j	80008378 <consolewrite+0x58>
    80008360:	fbf44503          	lbu	a0,-65(s0)
    80008364:	0019091b          	addiw	s2,s2,1
    80008368:	00148493          	addi	s1,s1,1
    8000836c:	00001097          	auipc	ra,0x1
    80008370:	a9c080e7          	jalr	-1380(ra) # 80008e08 <uartputc>
    80008374:	03298063          	beq	s3,s2,80008394 <consolewrite+0x74>
    80008378:	00048613          	mv	a2,s1
    8000837c:	00100693          	li	a3,1
    80008380:	000a0593          	mv	a1,s4
    80008384:	fbf40513          	addi	a0,s0,-65
    80008388:	00000097          	auipc	ra,0x0
    8000838c:	9e4080e7          	jalr	-1564(ra) # 80007d6c <either_copyin>
    80008390:	fd5518e3          	bne	a0,s5,80008360 <consolewrite+0x40>
    80008394:	04813083          	ld	ra,72(sp)
    80008398:	04013403          	ld	s0,64(sp)
    8000839c:	03813483          	ld	s1,56(sp)
    800083a0:	02813983          	ld	s3,40(sp)
    800083a4:	02013a03          	ld	s4,32(sp)
    800083a8:	01813a83          	ld	s5,24(sp)
    800083ac:	00090513          	mv	a0,s2
    800083b0:	03013903          	ld	s2,48(sp)
    800083b4:	05010113          	addi	sp,sp,80
    800083b8:	00008067          	ret
    800083bc:	00000913          	li	s2,0
    800083c0:	fd5ff06f          	j	80008394 <consolewrite+0x74>

00000000800083c4 <consoleread>:
    800083c4:	f9010113          	addi	sp,sp,-112
    800083c8:	06813023          	sd	s0,96(sp)
    800083cc:	04913c23          	sd	s1,88(sp)
    800083d0:	05213823          	sd	s2,80(sp)
    800083d4:	05313423          	sd	s3,72(sp)
    800083d8:	05413023          	sd	s4,64(sp)
    800083dc:	03513c23          	sd	s5,56(sp)
    800083e0:	03613823          	sd	s6,48(sp)
    800083e4:	03713423          	sd	s7,40(sp)
    800083e8:	03813023          	sd	s8,32(sp)
    800083ec:	06113423          	sd	ra,104(sp)
    800083f0:	01913c23          	sd	s9,24(sp)
    800083f4:	07010413          	addi	s0,sp,112
    800083f8:	00060b93          	mv	s7,a2
    800083fc:	00050913          	mv	s2,a0
    80008400:	00058c13          	mv	s8,a1
    80008404:	00060b1b          	sext.w	s6,a2
    80008408:	00006497          	auipc	s1,0x6
    8000840c:	0b048493          	addi	s1,s1,176 # 8000e4b8 <cons>
    80008410:	00400993          	li	s3,4
    80008414:	fff00a13          	li	s4,-1
    80008418:	00a00a93          	li	s5,10
    8000841c:	05705e63          	blez	s7,80008478 <consoleread+0xb4>
    80008420:	09c4a703          	lw	a4,156(s1)
    80008424:	0984a783          	lw	a5,152(s1)
    80008428:	0007071b          	sext.w	a4,a4
    8000842c:	08e78463          	beq	a5,a4,800084b4 <consoleread+0xf0>
    80008430:	07f7f713          	andi	a4,a5,127
    80008434:	00e48733          	add	a4,s1,a4
    80008438:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000843c:	0017869b          	addiw	a3,a5,1
    80008440:	08d4ac23          	sw	a3,152(s1)
    80008444:	00070c9b          	sext.w	s9,a4
    80008448:	0b370663          	beq	a4,s3,800084f4 <consoleread+0x130>
    8000844c:	00100693          	li	a3,1
    80008450:	f9f40613          	addi	a2,s0,-97
    80008454:	000c0593          	mv	a1,s8
    80008458:	00090513          	mv	a0,s2
    8000845c:	f8e40fa3          	sb	a4,-97(s0)
    80008460:	00000097          	auipc	ra,0x0
    80008464:	8c0080e7          	jalr	-1856(ra) # 80007d20 <either_copyout>
    80008468:	01450863          	beq	a0,s4,80008478 <consoleread+0xb4>
    8000846c:	001c0c13          	addi	s8,s8,1
    80008470:	fffb8b9b          	addiw	s7,s7,-1
    80008474:	fb5c94e3          	bne	s9,s5,8000841c <consoleread+0x58>
    80008478:	000b851b          	sext.w	a0,s7
    8000847c:	06813083          	ld	ra,104(sp)
    80008480:	06013403          	ld	s0,96(sp)
    80008484:	05813483          	ld	s1,88(sp)
    80008488:	05013903          	ld	s2,80(sp)
    8000848c:	04813983          	ld	s3,72(sp)
    80008490:	04013a03          	ld	s4,64(sp)
    80008494:	03813a83          	ld	s5,56(sp)
    80008498:	02813b83          	ld	s7,40(sp)
    8000849c:	02013c03          	ld	s8,32(sp)
    800084a0:	01813c83          	ld	s9,24(sp)
    800084a4:	40ab053b          	subw	a0,s6,a0
    800084a8:	03013b03          	ld	s6,48(sp)
    800084ac:	07010113          	addi	sp,sp,112
    800084b0:	00008067          	ret
    800084b4:	00001097          	auipc	ra,0x1
    800084b8:	1d8080e7          	jalr	472(ra) # 8000968c <push_on>
    800084bc:	0984a703          	lw	a4,152(s1)
    800084c0:	09c4a783          	lw	a5,156(s1)
    800084c4:	0007879b          	sext.w	a5,a5
    800084c8:	fef70ce3          	beq	a4,a5,800084c0 <consoleread+0xfc>
    800084cc:	00001097          	auipc	ra,0x1
    800084d0:	234080e7          	jalr	564(ra) # 80009700 <pop_on>
    800084d4:	0984a783          	lw	a5,152(s1)
    800084d8:	07f7f713          	andi	a4,a5,127
    800084dc:	00e48733          	add	a4,s1,a4
    800084e0:	01874703          	lbu	a4,24(a4)
    800084e4:	0017869b          	addiw	a3,a5,1
    800084e8:	08d4ac23          	sw	a3,152(s1)
    800084ec:	00070c9b          	sext.w	s9,a4
    800084f0:	f5371ee3          	bne	a4,s3,8000844c <consoleread+0x88>
    800084f4:	000b851b          	sext.w	a0,s7
    800084f8:	f96bf2e3          	bgeu	s7,s6,8000847c <consoleread+0xb8>
    800084fc:	08f4ac23          	sw	a5,152(s1)
    80008500:	f7dff06f          	j	8000847c <consoleread+0xb8>

0000000080008504 <consputc>:
    80008504:	10000793          	li	a5,256
    80008508:	00f50663          	beq	a0,a5,80008514 <consputc+0x10>
    8000850c:	00001317          	auipc	t1,0x1
    80008510:	9f430067          	jr	-1548(t1) # 80008f00 <uartputc_sync>
    80008514:	ff010113          	addi	sp,sp,-16
    80008518:	00113423          	sd	ra,8(sp)
    8000851c:	00813023          	sd	s0,0(sp)
    80008520:	01010413          	addi	s0,sp,16
    80008524:	00800513          	li	a0,8
    80008528:	00001097          	auipc	ra,0x1
    8000852c:	9d8080e7          	jalr	-1576(ra) # 80008f00 <uartputc_sync>
    80008530:	02000513          	li	a0,32
    80008534:	00001097          	auipc	ra,0x1
    80008538:	9cc080e7          	jalr	-1588(ra) # 80008f00 <uartputc_sync>
    8000853c:	00013403          	ld	s0,0(sp)
    80008540:	00813083          	ld	ra,8(sp)
    80008544:	00800513          	li	a0,8
    80008548:	01010113          	addi	sp,sp,16
    8000854c:	00001317          	auipc	t1,0x1
    80008550:	9b430067          	jr	-1612(t1) # 80008f00 <uartputc_sync>

0000000080008554 <consoleintr>:
    80008554:	fe010113          	addi	sp,sp,-32
    80008558:	00813823          	sd	s0,16(sp)
    8000855c:	00913423          	sd	s1,8(sp)
    80008560:	01213023          	sd	s2,0(sp)
    80008564:	00113c23          	sd	ra,24(sp)
    80008568:	02010413          	addi	s0,sp,32
    8000856c:	00006917          	auipc	s2,0x6
    80008570:	f4c90913          	addi	s2,s2,-180 # 8000e4b8 <cons>
    80008574:	00050493          	mv	s1,a0
    80008578:	00090513          	mv	a0,s2
    8000857c:	00001097          	auipc	ra,0x1
    80008580:	e40080e7          	jalr	-448(ra) # 800093bc <acquire>
    80008584:	02048c63          	beqz	s1,800085bc <consoleintr+0x68>
    80008588:	0a092783          	lw	a5,160(s2)
    8000858c:	09892703          	lw	a4,152(s2)
    80008590:	07f00693          	li	a3,127
    80008594:	40e7873b          	subw	a4,a5,a4
    80008598:	02e6e263          	bltu	a3,a4,800085bc <consoleintr+0x68>
    8000859c:	00d00713          	li	a4,13
    800085a0:	04e48063          	beq	s1,a4,800085e0 <consoleintr+0x8c>
    800085a4:	07f7f713          	andi	a4,a5,127
    800085a8:	00e90733          	add	a4,s2,a4
    800085ac:	0017879b          	addiw	a5,a5,1
    800085b0:	0af92023          	sw	a5,160(s2)
    800085b4:	00970c23          	sb	s1,24(a4)
    800085b8:	08f92e23          	sw	a5,156(s2)
    800085bc:	01013403          	ld	s0,16(sp)
    800085c0:	01813083          	ld	ra,24(sp)
    800085c4:	00813483          	ld	s1,8(sp)
    800085c8:	00013903          	ld	s2,0(sp)
    800085cc:	00006517          	auipc	a0,0x6
    800085d0:	eec50513          	addi	a0,a0,-276 # 8000e4b8 <cons>
    800085d4:	02010113          	addi	sp,sp,32
    800085d8:	00001317          	auipc	t1,0x1
    800085dc:	eb030067          	jr	-336(t1) # 80009488 <release>
    800085e0:	00a00493          	li	s1,10
    800085e4:	fc1ff06f          	j	800085a4 <consoleintr+0x50>

00000000800085e8 <consoleinit>:
    800085e8:	fe010113          	addi	sp,sp,-32
    800085ec:	00113c23          	sd	ra,24(sp)
    800085f0:	00813823          	sd	s0,16(sp)
    800085f4:	00913423          	sd	s1,8(sp)
    800085f8:	02010413          	addi	s0,sp,32
    800085fc:	00006497          	auipc	s1,0x6
    80008600:	ebc48493          	addi	s1,s1,-324 # 8000e4b8 <cons>
    80008604:	00048513          	mv	a0,s1
    80008608:	00002597          	auipc	a1,0x2
    8000860c:	2a858593          	addi	a1,a1,680 # 8000a8b0 <CONSOLE_STATUS+0x8a0>
    80008610:	00001097          	auipc	ra,0x1
    80008614:	d88080e7          	jalr	-632(ra) # 80009398 <initlock>
    80008618:	00000097          	auipc	ra,0x0
    8000861c:	7ac080e7          	jalr	1964(ra) # 80008dc4 <uartinit>
    80008620:	01813083          	ld	ra,24(sp)
    80008624:	01013403          	ld	s0,16(sp)
    80008628:	00000797          	auipc	a5,0x0
    8000862c:	d9c78793          	addi	a5,a5,-612 # 800083c4 <consoleread>
    80008630:	0af4bc23          	sd	a5,184(s1)
    80008634:	00000797          	auipc	a5,0x0
    80008638:	cec78793          	addi	a5,a5,-788 # 80008320 <consolewrite>
    8000863c:	0cf4b023          	sd	a5,192(s1)
    80008640:	00813483          	ld	s1,8(sp)
    80008644:	02010113          	addi	sp,sp,32
    80008648:	00008067          	ret

000000008000864c <console_read>:
    8000864c:	ff010113          	addi	sp,sp,-16
    80008650:	00813423          	sd	s0,8(sp)
    80008654:	01010413          	addi	s0,sp,16
    80008658:	00813403          	ld	s0,8(sp)
    8000865c:	00006317          	auipc	t1,0x6
    80008660:	f1433303          	ld	t1,-236(t1) # 8000e570 <devsw+0x10>
    80008664:	01010113          	addi	sp,sp,16
    80008668:	00030067          	jr	t1

000000008000866c <console_write>:
    8000866c:	ff010113          	addi	sp,sp,-16
    80008670:	00813423          	sd	s0,8(sp)
    80008674:	01010413          	addi	s0,sp,16
    80008678:	00813403          	ld	s0,8(sp)
    8000867c:	00006317          	auipc	t1,0x6
    80008680:	efc33303          	ld	t1,-260(t1) # 8000e578 <devsw+0x18>
    80008684:	01010113          	addi	sp,sp,16
    80008688:	00030067          	jr	t1

000000008000868c <panic>:
    8000868c:	fe010113          	addi	sp,sp,-32
    80008690:	00113c23          	sd	ra,24(sp)
    80008694:	00813823          	sd	s0,16(sp)
    80008698:	00913423          	sd	s1,8(sp)
    8000869c:	02010413          	addi	s0,sp,32
    800086a0:	00050493          	mv	s1,a0
    800086a4:	00002517          	auipc	a0,0x2
    800086a8:	21450513          	addi	a0,a0,532 # 8000a8b8 <CONSOLE_STATUS+0x8a8>
    800086ac:	00006797          	auipc	a5,0x6
    800086b0:	f607a623          	sw	zero,-148(a5) # 8000e618 <pr+0x18>
    800086b4:	00000097          	auipc	ra,0x0
    800086b8:	034080e7          	jalr	52(ra) # 800086e8 <__printf>
    800086bc:	00048513          	mv	a0,s1
    800086c0:	00000097          	auipc	ra,0x0
    800086c4:	028080e7          	jalr	40(ra) # 800086e8 <__printf>
    800086c8:	00002517          	auipc	a0,0x2
    800086cc:	0b850513          	addi	a0,a0,184 # 8000a780 <CONSOLE_STATUS+0x770>
    800086d0:	00000097          	auipc	ra,0x0
    800086d4:	018080e7          	jalr	24(ra) # 800086e8 <__printf>
    800086d8:	00100793          	li	a5,1
    800086dc:	00005717          	auipc	a4,0x5
    800086e0:	b8f72e23          	sw	a5,-1124(a4) # 8000d278 <panicked>
    800086e4:	0000006f          	j	800086e4 <panic+0x58>

00000000800086e8 <__printf>:
    800086e8:	f3010113          	addi	sp,sp,-208
    800086ec:	08813023          	sd	s0,128(sp)
    800086f0:	07313423          	sd	s3,104(sp)
    800086f4:	09010413          	addi	s0,sp,144
    800086f8:	05813023          	sd	s8,64(sp)
    800086fc:	08113423          	sd	ra,136(sp)
    80008700:	06913c23          	sd	s1,120(sp)
    80008704:	07213823          	sd	s2,112(sp)
    80008708:	07413023          	sd	s4,96(sp)
    8000870c:	05513c23          	sd	s5,88(sp)
    80008710:	05613823          	sd	s6,80(sp)
    80008714:	05713423          	sd	s7,72(sp)
    80008718:	03913c23          	sd	s9,56(sp)
    8000871c:	03a13823          	sd	s10,48(sp)
    80008720:	03b13423          	sd	s11,40(sp)
    80008724:	00006317          	auipc	t1,0x6
    80008728:	edc30313          	addi	t1,t1,-292 # 8000e600 <pr>
    8000872c:	01832c03          	lw	s8,24(t1)
    80008730:	00b43423          	sd	a1,8(s0)
    80008734:	00c43823          	sd	a2,16(s0)
    80008738:	00d43c23          	sd	a3,24(s0)
    8000873c:	02e43023          	sd	a4,32(s0)
    80008740:	02f43423          	sd	a5,40(s0)
    80008744:	03043823          	sd	a6,48(s0)
    80008748:	03143c23          	sd	a7,56(s0)
    8000874c:	00050993          	mv	s3,a0
    80008750:	4a0c1663          	bnez	s8,80008bfc <__printf+0x514>
    80008754:	60098c63          	beqz	s3,80008d6c <__printf+0x684>
    80008758:	0009c503          	lbu	a0,0(s3)
    8000875c:	00840793          	addi	a5,s0,8
    80008760:	f6f43c23          	sd	a5,-136(s0)
    80008764:	00000493          	li	s1,0
    80008768:	22050063          	beqz	a0,80008988 <__printf+0x2a0>
    8000876c:	00002a37          	lui	s4,0x2
    80008770:	00018ab7          	lui	s5,0x18
    80008774:	000f4b37          	lui	s6,0xf4
    80008778:	00989bb7          	lui	s7,0x989
    8000877c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80008780:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80008784:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80008788:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000878c:	00148c9b          	addiw	s9,s1,1
    80008790:	02500793          	li	a5,37
    80008794:	01998933          	add	s2,s3,s9
    80008798:	38f51263          	bne	a0,a5,80008b1c <__printf+0x434>
    8000879c:	00094783          	lbu	a5,0(s2)
    800087a0:	00078c9b          	sext.w	s9,a5
    800087a4:	1e078263          	beqz	a5,80008988 <__printf+0x2a0>
    800087a8:	0024849b          	addiw	s1,s1,2
    800087ac:	07000713          	li	a4,112
    800087b0:	00998933          	add	s2,s3,s1
    800087b4:	38e78a63          	beq	a5,a4,80008b48 <__printf+0x460>
    800087b8:	20f76863          	bltu	a4,a5,800089c8 <__printf+0x2e0>
    800087bc:	42a78863          	beq	a5,a0,80008bec <__printf+0x504>
    800087c0:	06400713          	li	a4,100
    800087c4:	40e79663          	bne	a5,a4,80008bd0 <__printf+0x4e8>
    800087c8:	f7843783          	ld	a5,-136(s0)
    800087cc:	0007a603          	lw	a2,0(a5)
    800087d0:	00878793          	addi	a5,a5,8
    800087d4:	f6f43c23          	sd	a5,-136(s0)
    800087d8:	42064a63          	bltz	a2,80008c0c <__printf+0x524>
    800087dc:	00a00713          	li	a4,10
    800087e0:	02e677bb          	remuw	a5,a2,a4
    800087e4:	00002d97          	auipc	s11,0x2
    800087e8:	0fcd8d93          	addi	s11,s11,252 # 8000a8e0 <digits>
    800087ec:	00900593          	li	a1,9
    800087f0:	0006051b          	sext.w	a0,a2
    800087f4:	00000c93          	li	s9,0
    800087f8:	02079793          	slli	a5,a5,0x20
    800087fc:	0207d793          	srli	a5,a5,0x20
    80008800:	00fd87b3          	add	a5,s11,a5
    80008804:	0007c783          	lbu	a5,0(a5)
    80008808:	02e656bb          	divuw	a3,a2,a4
    8000880c:	f8f40023          	sb	a5,-128(s0)
    80008810:	14c5d863          	bge	a1,a2,80008960 <__printf+0x278>
    80008814:	06300593          	li	a1,99
    80008818:	00100c93          	li	s9,1
    8000881c:	02e6f7bb          	remuw	a5,a3,a4
    80008820:	02079793          	slli	a5,a5,0x20
    80008824:	0207d793          	srli	a5,a5,0x20
    80008828:	00fd87b3          	add	a5,s11,a5
    8000882c:	0007c783          	lbu	a5,0(a5)
    80008830:	02e6d73b          	divuw	a4,a3,a4
    80008834:	f8f400a3          	sb	a5,-127(s0)
    80008838:	12a5f463          	bgeu	a1,a0,80008960 <__printf+0x278>
    8000883c:	00a00693          	li	a3,10
    80008840:	00900593          	li	a1,9
    80008844:	02d777bb          	remuw	a5,a4,a3
    80008848:	02079793          	slli	a5,a5,0x20
    8000884c:	0207d793          	srli	a5,a5,0x20
    80008850:	00fd87b3          	add	a5,s11,a5
    80008854:	0007c503          	lbu	a0,0(a5)
    80008858:	02d757bb          	divuw	a5,a4,a3
    8000885c:	f8a40123          	sb	a0,-126(s0)
    80008860:	48e5f263          	bgeu	a1,a4,80008ce4 <__printf+0x5fc>
    80008864:	06300513          	li	a0,99
    80008868:	02d7f5bb          	remuw	a1,a5,a3
    8000886c:	02059593          	slli	a1,a1,0x20
    80008870:	0205d593          	srli	a1,a1,0x20
    80008874:	00bd85b3          	add	a1,s11,a1
    80008878:	0005c583          	lbu	a1,0(a1)
    8000887c:	02d7d7bb          	divuw	a5,a5,a3
    80008880:	f8b401a3          	sb	a1,-125(s0)
    80008884:	48e57263          	bgeu	a0,a4,80008d08 <__printf+0x620>
    80008888:	3e700513          	li	a0,999
    8000888c:	02d7f5bb          	remuw	a1,a5,a3
    80008890:	02059593          	slli	a1,a1,0x20
    80008894:	0205d593          	srli	a1,a1,0x20
    80008898:	00bd85b3          	add	a1,s11,a1
    8000889c:	0005c583          	lbu	a1,0(a1)
    800088a0:	02d7d7bb          	divuw	a5,a5,a3
    800088a4:	f8b40223          	sb	a1,-124(s0)
    800088a8:	46e57663          	bgeu	a0,a4,80008d14 <__printf+0x62c>
    800088ac:	02d7f5bb          	remuw	a1,a5,a3
    800088b0:	02059593          	slli	a1,a1,0x20
    800088b4:	0205d593          	srli	a1,a1,0x20
    800088b8:	00bd85b3          	add	a1,s11,a1
    800088bc:	0005c583          	lbu	a1,0(a1)
    800088c0:	02d7d7bb          	divuw	a5,a5,a3
    800088c4:	f8b402a3          	sb	a1,-123(s0)
    800088c8:	46ea7863          	bgeu	s4,a4,80008d38 <__printf+0x650>
    800088cc:	02d7f5bb          	remuw	a1,a5,a3
    800088d0:	02059593          	slli	a1,a1,0x20
    800088d4:	0205d593          	srli	a1,a1,0x20
    800088d8:	00bd85b3          	add	a1,s11,a1
    800088dc:	0005c583          	lbu	a1,0(a1)
    800088e0:	02d7d7bb          	divuw	a5,a5,a3
    800088e4:	f8b40323          	sb	a1,-122(s0)
    800088e8:	3eeaf863          	bgeu	s5,a4,80008cd8 <__printf+0x5f0>
    800088ec:	02d7f5bb          	remuw	a1,a5,a3
    800088f0:	02059593          	slli	a1,a1,0x20
    800088f4:	0205d593          	srli	a1,a1,0x20
    800088f8:	00bd85b3          	add	a1,s11,a1
    800088fc:	0005c583          	lbu	a1,0(a1)
    80008900:	02d7d7bb          	divuw	a5,a5,a3
    80008904:	f8b403a3          	sb	a1,-121(s0)
    80008908:	42eb7e63          	bgeu	s6,a4,80008d44 <__printf+0x65c>
    8000890c:	02d7f5bb          	remuw	a1,a5,a3
    80008910:	02059593          	slli	a1,a1,0x20
    80008914:	0205d593          	srli	a1,a1,0x20
    80008918:	00bd85b3          	add	a1,s11,a1
    8000891c:	0005c583          	lbu	a1,0(a1)
    80008920:	02d7d7bb          	divuw	a5,a5,a3
    80008924:	f8b40423          	sb	a1,-120(s0)
    80008928:	42ebfc63          	bgeu	s7,a4,80008d60 <__printf+0x678>
    8000892c:	02079793          	slli	a5,a5,0x20
    80008930:	0207d793          	srli	a5,a5,0x20
    80008934:	00fd8db3          	add	s11,s11,a5
    80008938:	000dc703          	lbu	a4,0(s11)
    8000893c:	00a00793          	li	a5,10
    80008940:	00900c93          	li	s9,9
    80008944:	f8e404a3          	sb	a4,-119(s0)
    80008948:	00065c63          	bgez	a2,80008960 <__printf+0x278>
    8000894c:	f9040713          	addi	a4,s0,-112
    80008950:	00f70733          	add	a4,a4,a5
    80008954:	02d00693          	li	a3,45
    80008958:	fed70823          	sb	a3,-16(a4)
    8000895c:	00078c93          	mv	s9,a5
    80008960:	f8040793          	addi	a5,s0,-128
    80008964:	01978cb3          	add	s9,a5,s9
    80008968:	f7f40d13          	addi	s10,s0,-129
    8000896c:	000cc503          	lbu	a0,0(s9)
    80008970:	fffc8c93          	addi	s9,s9,-1
    80008974:	00000097          	auipc	ra,0x0
    80008978:	b90080e7          	jalr	-1136(ra) # 80008504 <consputc>
    8000897c:	ffac98e3          	bne	s9,s10,8000896c <__printf+0x284>
    80008980:	00094503          	lbu	a0,0(s2)
    80008984:	e00514e3          	bnez	a0,8000878c <__printf+0xa4>
    80008988:	1a0c1663          	bnez	s8,80008b34 <__printf+0x44c>
    8000898c:	08813083          	ld	ra,136(sp)
    80008990:	08013403          	ld	s0,128(sp)
    80008994:	07813483          	ld	s1,120(sp)
    80008998:	07013903          	ld	s2,112(sp)
    8000899c:	06813983          	ld	s3,104(sp)
    800089a0:	06013a03          	ld	s4,96(sp)
    800089a4:	05813a83          	ld	s5,88(sp)
    800089a8:	05013b03          	ld	s6,80(sp)
    800089ac:	04813b83          	ld	s7,72(sp)
    800089b0:	04013c03          	ld	s8,64(sp)
    800089b4:	03813c83          	ld	s9,56(sp)
    800089b8:	03013d03          	ld	s10,48(sp)
    800089bc:	02813d83          	ld	s11,40(sp)
    800089c0:	0d010113          	addi	sp,sp,208
    800089c4:	00008067          	ret
    800089c8:	07300713          	li	a4,115
    800089cc:	1ce78a63          	beq	a5,a4,80008ba0 <__printf+0x4b8>
    800089d0:	07800713          	li	a4,120
    800089d4:	1ee79e63          	bne	a5,a4,80008bd0 <__printf+0x4e8>
    800089d8:	f7843783          	ld	a5,-136(s0)
    800089dc:	0007a703          	lw	a4,0(a5)
    800089e0:	00878793          	addi	a5,a5,8
    800089e4:	f6f43c23          	sd	a5,-136(s0)
    800089e8:	28074263          	bltz	a4,80008c6c <__printf+0x584>
    800089ec:	00002d97          	auipc	s11,0x2
    800089f0:	ef4d8d93          	addi	s11,s11,-268 # 8000a8e0 <digits>
    800089f4:	00f77793          	andi	a5,a4,15
    800089f8:	00fd87b3          	add	a5,s11,a5
    800089fc:	0007c683          	lbu	a3,0(a5)
    80008a00:	00f00613          	li	a2,15
    80008a04:	0007079b          	sext.w	a5,a4
    80008a08:	f8d40023          	sb	a3,-128(s0)
    80008a0c:	0047559b          	srliw	a1,a4,0x4
    80008a10:	0047569b          	srliw	a3,a4,0x4
    80008a14:	00000c93          	li	s9,0
    80008a18:	0ee65063          	bge	a2,a4,80008af8 <__printf+0x410>
    80008a1c:	00f6f693          	andi	a3,a3,15
    80008a20:	00dd86b3          	add	a3,s11,a3
    80008a24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008a28:	0087d79b          	srliw	a5,a5,0x8
    80008a2c:	00100c93          	li	s9,1
    80008a30:	f8d400a3          	sb	a3,-127(s0)
    80008a34:	0cb67263          	bgeu	a2,a1,80008af8 <__printf+0x410>
    80008a38:	00f7f693          	andi	a3,a5,15
    80008a3c:	00dd86b3          	add	a3,s11,a3
    80008a40:	0006c583          	lbu	a1,0(a3)
    80008a44:	00f00613          	li	a2,15
    80008a48:	0047d69b          	srliw	a3,a5,0x4
    80008a4c:	f8b40123          	sb	a1,-126(s0)
    80008a50:	0047d593          	srli	a1,a5,0x4
    80008a54:	28f67e63          	bgeu	a2,a5,80008cf0 <__printf+0x608>
    80008a58:	00f6f693          	andi	a3,a3,15
    80008a5c:	00dd86b3          	add	a3,s11,a3
    80008a60:	0006c503          	lbu	a0,0(a3)
    80008a64:	0087d813          	srli	a6,a5,0x8
    80008a68:	0087d69b          	srliw	a3,a5,0x8
    80008a6c:	f8a401a3          	sb	a0,-125(s0)
    80008a70:	28b67663          	bgeu	a2,a1,80008cfc <__printf+0x614>
    80008a74:	00f6f693          	andi	a3,a3,15
    80008a78:	00dd86b3          	add	a3,s11,a3
    80008a7c:	0006c583          	lbu	a1,0(a3)
    80008a80:	00c7d513          	srli	a0,a5,0xc
    80008a84:	00c7d69b          	srliw	a3,a5,0xc
    80008a88:	f8b40223          	sb	a1,-124(s0)
    80008a8c:	29067a63          	bgeu	a2,a6,80008d20 <__printf+0x638>
    80008a90:	00f6f693          	andi	a3,a3,15
    80008a94:	00dd86b3          	add	a3,s11,a3
    80008a98:	0006c583          	lbu	a1,0(a3)
    80008a9c:	0107d813          	srli	a6,a5,0x10
    80008aa0:	0107d69b          	srliw	a3,a5,0x10
    80008aa4:	f8b402a3          	sb	a1,-123(s0)
    80008aa8:	28a67263          	bgeu	a2,a0,80008d2c <__printf+0x644>
    80008aac:	00f6f693          	andi	a3,a3,15
    80008ab0:	00dd86b3          	add	a3,s11,a3
    80008ab4:	0006c683          	lbu	a3,0(a3)
    80008ab8:	0147d79b          	srliw	a5,a5,0x14
    80008abc:	f8d40323          	sb	a3,-122(s0)
    80008ac0:	21067663          	bgeu	a2,a6,80008ccc <__printf+0x5e4>
    80008ac4:	02079793          	slli	a5,a5,0x20
    80008ac8:	0207d793          	srli	a5,a5,0x20
    80008acc:	00fd8db3          	add	s11,s11,a5
    80008ad0:	000dc683          	lbu	a3,0(s11)
    80008ad4:	00800793          	li	a5,8
    80008ad8:	00700c93          	li	s9,7
    80008adc:	f8d403a3          	sb	a3,-121(s0)
    80008ae0:	00075c63          	bgez	a4,80008af8 <__printf+0x410>
    80008ae4:	f9040713          	addi	a4,s0,-112
    80008ae8:	00f70733          	add	a4,a4,a5
    80008aec:	02d00693          	li	a3,45
    80008af0:	fed70823          	sb	a3,-16(a4)
    80008af4:	00078c93          	mv	s9,a5
    80008af8:	f8040793          	addi	a5,s0,-128
    80008afc:	01978cb3          	add	s9,a5,s9
    80008b00:	f7f40d13          	addi	s10,s0,-129
    80008b04:	000cc503          	lbu	a0,0(s9)
    80008b08:	fffc8c93          	addi	s9,s9,-1
    80008b0c:	00000097          	auipc	ra,0x0
    80008b10:	9f8080e7          	jalr	-1544(ra) # 80008504 <consputc>
    80008b14:	ff9d18e3          	bne	s10,s9,80008b04 <__printf+0x41c>
    80008b18:	0100006f          	j	80008b28 <__printf+0x440>
    80008b1c:	00000097          	auipc	ra,0x0
    80008b20:	9e8080e7          	jalr	-1560(ra) # 80008504 <consputc>
    80008b24:	000c8493          	mv	s1,s9
    80008b28:	00094503          	lbu	a0,0(s2)
    80008b2c:	c60510e3          	bnez	a0,8000878c <__printf+0xa4>
    80008b30:	e40c0ee3          	beqz	s8,8000898c <__printf+0x2a4>
    80008b34:	00006517          	auipc	a0,0x6
    80008b38:	acc50513          	addi	a0,a0,-1332 # 8000e600 <pr>
    80008b3c:	00001097          	auipc	ra,0x1
    80008b40:	94c080e7          	jalr	-1716(ra) # 80009488 <release>
    80008b44:	e49ff06f          	j	8000898c <__printf+0x2a4>
    80008b48:	f7843783          	ld	a5,-136(s0)
    80008b4c:	03000513          	li	a0,48
    80008b50:	01000d13          	li	s10,16
    80008b54:	00878713          	addi	a4,a5,8
    80008b58:	0007bc83          	ld	s9,0(a5)
    80008b5c:	f6e43c23          	sd	a4,-136(s0)
    80008b60:	00000097          	auipc	ra,0x0
    80008b64:	9a4080e7          	jalr	-1628(ra) # 80008504 <consputc>
    80008b68:	07800513          	li	a0,120
    80008b6c:	00000097          	auipc	ra,0x0
    80008b70:	998080e7          	jalr	-1640(ra) # 80008504 <consputc>
    80008b74:	00002d97          	auipc	s11,0x2
    80008b78:	d6cd8d93          	addi	s11,s11,-660 # 8000a8e0 <digits>
    80008b7c:	03ccd793          	srli	a5,s9,0x3c
    80008b80:	00fd87b3          	add	a5,s11,a5
    80008b84:	0007c503          	lbu	a0,0(a5)
    80008b88:	fffd0d1b          	addiw	s10,s10,-1
    80008b8c:	004c9c93          	slli	s9,s9,0x4
    80008b90:	00000097          	auipc	ra,0x0
    80008b94:	974080e7          	jalr	-1676(ra) # 80008504 <consputc>
    80008b98:	fe0d12e3          	bnez	s10,80008b7c <__printf+0x494>
    80008b9c:	f8dff06f          	j	80008b28 <__printf+0x440>
    80008ba0:	f7843783          	ld	a5,-136(s0)
    80008ba4:	0007bc83          	ld	s9,0(a5)
    80008ba8:	00878793          	addi	a5,a5,8
    80008bac:	f6f43c23          	sd	a5,-136(s0)
    80008bb0:	000c9a63          	bnez	s9,80008bc4 <__printf+0x4dc>
    80008bb4:	1080006f          	j	80008cbc <__printf+0x5d4>
    80008bb8:	001c8c93          	addi	s9,s9,1
    80008bbc:	00000097          	auipc	ra,0x0
    80008bc0:	948080e7          	jalr	-1720(ra) # 80008504 <consputc>
    80008bc4:	000cc503          	lbu	a0,0(s9)
    80008bc8:	fe0518e3          	bnez	a0,80008bb8 <__printf+0x4d0>
    80008bcc:	f5dff06f          	j	80008b28 <__printf+0x440>
    80008bd0:	02500513          	li	a0,37
    80008bd4:	00000097          	auipc	ra,0x0
    80008bd8:	930080e7          	jalr	-1744(ra) # 80008504 <consputc>
    80008bdc:	000c8513          	mv	a0,s9
    80008be0:	00000097          	auipc	ra,0x0
    80008be4:	924080e7          	jalr	-1756(ra) # 80008504 <consputc>
    80008be8:	f41ff06f          	j	80008b28 <__printf+0x440>
    80008bec:	02500513          	li	a0,37
    80008bf0:	00000097          	auipc	ra,0x0
    80008bf4:	914080e7          	jalr	-1772(ra) # 80008504 <consputc>
    80008bf8:	f31ff06f          	j	80008b28 <__printf+0x440>
    80008bfc:	00030513          	mv	a0,t1
    80008c00:	00000097          	auipc	ra,0x0
    80008c04:	7bc080e7          	jalr	1980(ra) # 800093bc <acquire>
    80008c08:	b4dff06f          	j	80008754 <__printf+0x6c>
    80008c0c:	40c0053b          	negw	a0,a2
    80008c10:	00a00713          	li	a4,10
    80008c14:	02e576bb          	remuw	a3,a0,a4
    80008c18:	00002d97          	auipc	s11,0x2
    80008c1c:	cc8d8d93          	addi	s11,s11,-824 # 8000a8e0 <digits>
    80008c20:	ff700593          	li	a1,-9
    80008c24:	02069693          	slli	a3,a3,0x20
    80008c28:	0206d693          	srli	a3,a3,0x20
    80008c2c:	00dd86b3          	add	a3,s11,a3
    80008c30:	0006c683          	lbu	a3,0(a3)
    80008c34:	02e557bb          	divuw	a5,a0,a4
    80008c38:	f8d40023          	sb	a3,-128(s0)
    80008c3c:	10b65e63          	bge	a2,a1,80008d58 <__printf+0x670>
    80008c40:	06300593          	li	a1,99
    80008c44:	02e7f6bb          	remuw	a3,a5,a4
    80008c48:	02069693          	slli	a3,a3,0x20
    80008c4c:	0206d693          	srli	a3,a3,0x20
    80008c50:	00dd86b3          	add	a3,s11,a3
    80008c54:	0006c683          	lbu	a3,0(a3)
    80008c58:	02e7d73b          	divuw	a4,a5,a4
    80008c5c:	00200793          	li	a5,2
    80008c60:	f8d400a3          	sb	a3,-127(s0)
    80008c64:	bca5ece3          	bltu	a1,a0,8000883c <__printf+0x154>
    80008c68:	ce5ff06f          	j	8000894c <__printf+0x264>
    80008c6c:	40e007bb          	negw	a5,a4
    80008c70:	00002d97          	auipc	s11,0x2
    80008c74:	c70d8d93          	addi	s11,s11,-912 # 8000a8e0 <digits>
    80008c78:	00f7f693          	andi	a3,a5,15
    80008c7c:	00dd86b3          	add	a3,s11,a3
    80008c80:	0006c583          	lbu	a1,0(a3)
    80008c84:	ff100613          	li	a2,-15
    80008c88:	0047d69b          	srliw	a3,a5,0x4
    80008c8c:	f8b40023          	sb	a1,-128(s0)
    80008c90:	0047d59b          	srliw	a1,a5,0x4
    80008c94:	0ac75e63          	bge	a4,a2,80008d50 <__printf+0x668>
    80008c98:	00f6f693          	andi	a3,a3,15
    80008c9c:	00dd86b3          	add	a3,s11,a3
    80008ca0:	0006c603          	lbu	a2,0(a3)
    80008ca4:	00f00693          	li	a3,15
    80008ca8:	0087d79b          	srliw	a5,a5,0x8
    80008cac:	f8c400a3          	sb	a2,-127(s0)
    80008cb0:	d8b6e4e3          	bltu	a3,a1,80008a38 <__printf+0x350>
    80008cb4:	00200793          	li	a5,2
    80008cb8:	e2dff06f          	j	80008ae4 <__printf+0x3fc>
    80008cbc:	00002c97          	auipc	s9,0x2
    80008cc0:	c04c8c93          	addi	s9,s9,-1020 # 8000a8c0 <CONSOLE_STATUS+0x8b0>
    80008cc4:	02800513          	li	a0,40
    80008cc8:	ef1ff06f          	j	80008bb8 <__printf+0x4d0>
    80008ccc:	00700793          	li	a5,7
    80008cd0:	00600c93          	li	s9,6
    80008cd4:	e0dff06f          	j	80008ae0 <__printf+0x3f8>
    80008cd8:	00700793          	li	a5,7
    80008cdc:	00600c93          	li	s9,6
    80008ce0:	c69ff06f          	j	80008948 <__printf+0x260>
    80008ce4:	00300793          	li	a5,3
    80008ce8:	00200c93          	li	s9,2
    80008cec:	c5dff06f          	j	80008948 <__printf+0x260>
    80008cf0:	00300793          	li	a5,3
    80008cf4:	00200c93          	li	s9,2
    80008cf8:	de9ff06f          	j	80008ae0 <__printf+0x3f8>
    80008cfc:	00400793          	li	a5,4
    80008d00:	00300c93          	li	s9,3
    80008d04:	dddff06f          	j	80008ae0 <__printf+0x3f8>
    80008d08:	00400793          	li	a5,4
    80008d0c:	00300c93          	li	s9,3
    80008d10:	c39ff06f          	j	80008948 <__printf+0x260>
    80008d14:	00500793          	li	a5,5
    80008d18:	00400c93          	li	s9,4
    80008d1c:	c2dff06f          	j	80008948 <__printf+0x260>
    80008d20:	00500793          	li	a5,5
    80008d24:	00400c93          	li	s9,4
    80008d28:	db9ff06f          	j	80008ae0 <__printf+0x3f8>
    80008d2c:	00600793          	li	a5,6
    80008d30:	00500c93          	li	s9,5
    80008d34:	dadff06f          	j	80008ae0 <__printf+0x3f8>
    80008d38:	00600793          	li	a5,6
    80008d3c:	00500c93          	li	s9,5
    80008d40:	c09ff06f          	j	80008948 <__printf+0x260>
    80008d44:	00800793          	li	a5,8
    80008d48:	00700c93          	li	s9,7
    80008d4c:	bfdff06f          	j	80008948 <__printf+0x260>
    80008d50:	00100793          	li	a5,1
    80008d54:	d91ff06f          	j	80008ae4 <__printf+0x3fc>
    80008d58:	00100793          	li	a5,1
    80008d5c:	bf1ff06f          	j	8000894c <__printf+0x264>
    80008d60:	00900793          	li	a5,9
    80008d64:	00800c93          	li	s9,8
    80008d68:	be1ff06f          	j	80008948 <__printf+0x260>
    80008d6c:	00002517          	auipc	a0,0x2
    80008d70:	b5c50513          	addi	a0,a0,-1188 # 8000a8c8 <CONSOLE_STATUS+0x8b8>
    80008d74:	00000097          	auipc	ra,0x0
    80008d78:	918080e7          	jalr	-1768(ra) # 8000868c <panic>

0000000080008d7c <printfinit>:
    80008d7c:	fe010113          	addi	sp,sp,-32
    80008d80:	00813823          	sd	s0,16(sp)
    80008d84:	00913423          	sd	s1,8(sp)
    80008d88:	00113c23          	sd	ra,24(sp)
    80008d8c:	02010413          	addi	s0,sp,32
    80008d90:	00006497          	auipc	s1,0x6
    80008d94:	87048493          	addi	s1,s1,-1936 # 8000e600 <pr>
    80008d98:	00048513          	mv	a0,s1
    80008d9c:	00002597          	auipc	a1,0x2
    80008da0:	b3c58593          	addi	a1,a1,-1220 # 8000a8d8 <CONSOLE_STATUS+0x8c8>
    80008da4:	00000097          	auipc	ra,0x0
    80008da8:	5f4080e7          	jalr	1524(ra) # 80009398 <initlock>
    80008dac:	01813083          	ld	ra,24(sp)
    80008db0:	01013403          	ld	s0,16(sp)
    80008db4:	0004ac23          	sw	zero,24(s1)
    80008db8:	00813483          	ld	s1,8(sp)
    80008dbc:	02010113          	addi	sp,sp,32
    80008dc0:	00008067          	ret

0000000080008dc4 <uartinit>:
    80008dc4:	ff010113          	addi	sp,sp,-16
    80008dc8:	00813423          	sd	s0,8(sp)
    80008dcc:	01010413          	addi	s0,sp,16
    80008dd0:	100007b7          	lui	a5,0x10000
    80008dd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008dd8:	f8000713          	li	a4,-128
    80008ddc:	00e781a3          	sb	a4,3(a5)
    80008de0:	00300713          	li	a4,3
    80008de4:	00e78023          	sb	a4,0(a5)
    80008de8:	000780a3          	sb	zero,1(a5)
    80008dec:	00e781a3          	sb	a4,3(a5)
    80008df0:	00700693          	li	a3,7
    80008df4:	00d78123          	sb	a3,2(a5)
    80008df8:	00e780a3          	sb	a4,1(a5)
    80008dfc:	00813403          	ld	s0,8(sp)
    80008e00:	01010113          	addi	sp,sp,16
    80008e04:	00008067          	ret

0000000080008e08 <uartputc>:
    80008e08:	00004797          	auipc	a5,0x4
    80008e0c:	4707a783          	lw	a5,1136(a5) # 8000d278 <panicked>
    80008e10:	00078463          	beqz	a5,80008e18 <uartputc+0x10>
    80008e14:	0000006f          	j	80008e14 <uartputc+0xc>
    80008e18:	fd010113          	addi	sp,sp,-48
    80008e1c:	02813023          	sd	s0,32(sp)
    80008e20:	00913c23          	sd	s1,24(sp)
    80008e24:	01213823          	sd	s2,16(sp)
    80008e28:	01313423          	sd	s3,8(sp)
    80008e2c:	02113423          	sd	ra,40(sp)
    80008e30:	03010413          	addi	s0,sp,48
    80008e34:	00004917          	auipc	s2,0x4
    80008e38:	44c90913          	addi	s2,s2,1100 # 8000d280 <uart_tx_r>
    80008e3c:	00093783          	ld	a5,0(s2)
    80008e40:	00004497          	auipc	s1,0x4
    80008e44:	44848493          	addi	s1,s1,1096 # 8000d288 <uart_tx_w>
    80008e48:	0004b703          	ld	a4,0(s1)
    80008e4c:	02078693          	addi	a3,a5,32
    80008e50:	00050993          	mv	s3,a0
    80008e54:	02e69c63          	bne	a3,a4,80008e8c <uartputc+0x84>
    80008e58:	00001097          	auipc	ra,0x1
    80008e5c:	834080e7          	jalr	-1996(ra) # 8000968c <push_on>
    80008e60:	00093783          	ld	a5,0(s2)
    80008e64:	0004b703          	ld	a4,0(s1)
    80008e68:	02078793          	addi	a5,a5,32
    80008e6c:	00e79463          	bne	a5,a4,80008e74 <uartputc+0x6c>
    80008e70:	0000006f          	j	80008e70 <uartputc+0x68>
    80008e74:	00001097          	auipc	ra,0x1
    80008e78:	88c080e7          	jalr	-1908(ra) # 80009700 <pop_on>
    80008e7c:	00093783          	ld	a5,0(s2)
    80008e80:	0004b703          	ld	a4,0(s1)
    80008e84:	02078693          	addi	a3,a5,32
    80008e88:	fce688e3          	beq	a3,a4,80008e58 <uartputc+0x50>
    80008e8c:	01f77693          	andi	a3,a4,31
    80008e90:	00005597          	auipc	a1,0x5
    80008e94:	79058593          	addi	a1,a1,1936 # 8000e620 <uart_tx_buf>
    80008e98:	00d586b3          	add	a3,a1,a3
    80008e9c:	00170713          	addi	a4,a4,1
    80008ea0:	01368023          	sb	s3,0(a3)
    80008ea4:	00e4b023          	sd	a4,0(s1)
    80008ea8:	10000637          	lui	a2,0x10000
    80008eac:	02f71063          	bne	a4,a5,80008ecc <uartputc+0xc4>
    80008eb0:	0340006f          	j	80008ee4 <uartputc+0xdc>
    80008eb4:	00074703          	lbu	a4,0(a4)
    80008eb8:	00f93023          	sd	a5,0(s2)
    80008ebc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008ec0:	00093783          	ld	a5,0(s2)
    80008ec4:	0004b703          	ld	a4,0(s1)
    80008ec8:	00f70e63          	beq	a4,a5,80008ee4 <uartputc+0xdc>
    80008ecc:	00564683          	lbu	a3,5(a2)
    80008ed0:	01f7f713          	andi	a4,a5,31
    80008ed4:	00e58733          	add	a4,a1,a4
    80008ed8:	0206f693          	andi	a3,a3,32
    80008edc:	00178793          	addi	a5,a5,1
    80008ee0:	fc069ae3          	bnez	a3,80008eb4 <uartputc+0xac>
    80008ee4:	02813083          	ld	ra,40(sp)
    80008ee8:	02013403          	ld	s0,32(sp)
    80008eec:	01813483          	ld	s1,24(sp)
    80008ef0:	01013903          	ld	s2,16(sp)
    80008ef4:	00813983          	ld	s3,8(sp)
    80008ef8:	03010113          	addi	sp,sp,48
    80008efc:	00008067          	ret

0000000080008f00 <uartputc_sync>:
    80008f00:	ff010113          	addi	sp,sp,-16
    80008f04:	00813423          	sd	s0,8(sp)
    80008f08:	01010413          	addi	s0,sp,16
    80008f0c:	00004717          	auipc	a4,0x4
    80008f10:	36c72703          	lw	a4,876(a4) # 8000d278 <panicked>
    80008f14:	02071663          	bnez	a4,80008f40 <uartputc_sync+0x40>
    80008f18:	00050793          	mv	a5,a0
    80008f1c:	100006b7          	lui	a3,0x10000
    80008f20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008f24:	02077713          	andi	a4,a4,32
    80008f28:	fe070ce3          	beqz	a4,80008f20 <uartputc_sync+0x20>
    80008f2c:	0ff7f793          	andi	a5,a5,255
    80008f30:	00f68023          	sb	a5,0(a3)
    80008f34:	00813403          	ld	s0,8(sp)
    80008f38:	01010113          	addi	sp,sp,16
    80008f3c:	00008067          	ret
    80008f40:	0000006f          	j	80008f40 <uartputc_sync+0x40>

0000000080008f44 <uartstart>:
    80008f44:	ff010113          	addi	sp,sp,-16
    80008f48:	00813423          	sd	s0,8(sp)
    80008f4c:	01010413          	addi	s0,sp,16
    80008f50:	00004617          	auipc	a2,0x4
    80008f54:	33060613          	addi	a2,a2,816 # 8000d280 <uart_tx_r>
    80008f58:	00004517          	auipc	a0,0x4
    80008f5c:	33050513          	addi	a0,a0,816 # 8000d288 <uart_tx_w>
    80008f60:	00063783          	ld	a5,0(a2)
    80008f64:	00053703          	ld	a4,0(a0)
    80008f68:	04f70263          	beq	a4,a5,80008fac <uartstart+0x68>
    80008f6c:	100005b7          	lui	a1,0x10000
    80008f70:	00005817          	auipc	a6,0x5
    80008f74:	6b080813          	addi	a6,a6,1712 # 8000e620 <uart_tx_buf>
    80008f78:	01c0006f          	j	80008f94 <uartstart+0x50>
    80008f7c:	0006c703          	lbu	a4,0(a3)
    80008f80:	00f63023          	sd	a5,0(a2)
    80008f84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008f88:	00063783          	ld	a5,0(a2)
    80008f8c:	00053703          	ld	a4,0(a0)
    80008f90:	00f70e63          	beq	a4,a5,80008fac <uartstart+0x68>
    80008f94:	01f7f713          	andi	a4,a5,31
    80008f98:	00e806b3          	add	a3,a6,a4
    80008f9c:	0055c703          	lbu	a4,5(a1)
    80008fa0:	00178793          	addi	a5,a5,1
    80008fa4:	02077713          	andi	a4,a4,32
    80008fa8:	fc071ae3          	bnez	a4,80008f7c <uartstart+0x38>
    80008fac:	00813403          	ld	s0,8(sp)
    80008fb0:	01010113          	addi	sp,sp,16
    80008fb4:	00008067          	ret

0000000080008fb8 <uartgetc>:
    80008fb8:	ff010113          	addi	sp,sp,-16
    80008fbc:	00813423          	sd	s0,8(sp)
    80008fc0:	01010413          	addi	s0,sp,16
    80008fc4:	10000737          	lui	a4,0x10000
    80008fc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80008fcc:	0017f793          	andi	a5,a5,1
    80008fd0:	00078c63          	beqz	a5,80008fe8 <uartgetc+0x30>
    80008fd4:	00074503          	lbu	a0,0(a4)
    80008fd8:	0ff57513          	andi	a0,a0,255
    80008fdc:	00813403          	ld	s0,8(sp)
    80008fe0:	01010113          	addi	sp,sp,16
    80008fe4:	00008067          	ret
    80008fe8:	fff00513          	li	a0,-1
    80008fec:	ff1ff06f          	j	80008fdc <uartgetc+0x24>

0000000080008ff0 <uartintr>:
    80008ff0:	100007b7          	lui	a5,0x10000
    80008ff4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008ff8:	0017f793          	andi	a5,a5,1
    80008ffc:	0a078463          	beqz	a5,800090a4 <uartintr+0xb4>
    80009000:	fe010113          	addi	sp,sp,-32
    80009004:	00813823          	sd	s0,16(sp)
    80009008:	00913423          	sd	s1,8(sp)
    8000900c:	00113c23          	sd	ra,24(sp)
    80009010:	02010413          	addi	s0,sp,32
    80009014:	100004b7          	lui	s1,0x10000
    80009018:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000901c:	0ff57513          	andi	a0,a0,255
    80009020:	fffff097          	auipc	ra,0xfffff
    80009024:	534080e7          	jalr	1332(ra) # 80008554 <consoleintr>
    80009028:	0054c783          	lbu	a5,5(s1)
    8000902c:	0017f793          	andi	a5,a5,1
    80009030:	fe0794e3          	bnez	a5,80009018 <uartintr+0x28>
    80009034:	00004617          	auipc	a2,0x4
    80009038:	24c60613          	addi	a2,a2,588 # 8000d280 <uart_tx_r>
    8000903c:	00004517          	auipc	a0,0x4
    80009040:	24c50513          	addi	a0,a0,588 # 8000d288 <uart_tx_w>
    80009044:	00063783          	ld	a5,0(a2)
    80009048:	00053703          	ld	a4,0(a0)
    8000904c:	04f70263          	beq	a4,a5,80009090 <uartintr+0xa0>
    80009050:	100005b7          	lui	a1,0x10000
    80009054:	00005817          	auipc	a6,0x5
    80009058:	5cc80813          	addi	a6,a6,1484 # 8000e620 <uart_tx_buf>
    8000905c:	01c0006f          	j	80009078 <uartintr+0x88>
    80009060:	0006c703          	lbu	a4,0(a3)
    80009064:	00f63023          	sd	a5,0(a2)
    80009068:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000906c:	00063783          	ld	a5,0(a2)
    80009070:	00053703          	ld	a4,0(a0)
    80009074:	00f70e63          	beq	a4,a5,80009090 <uartintr+0xa0>
    80009078:	01f7f713          	andi	a4,a5,31
    8000907c:	00e806b3          	add	a3,a6,a4
    80009080:	0055c703          	lbu	a4,5(a1)
    80009084:	00178793          	addi	a5,a5,1
    80009088:	02077713          	andi	a4,a4,32
    8000908c:	fc071ae3          	bnez	a4,80009060 <uartintr+0x70>
    80009090:	01813083          	ld	ra,24(sp)
    80009094:	01013403          	ld	s0,16(sp)
    80009098:	00813483          	ld	s1,8(sp)
    8000909c:	02010113          	addi	sp,sp,32
    800090a0:	00008067          	ret
    800090a4:	00004617          	auipc	a2,0x4
    800090a8:	1dc60613          	addi	a2,a2,476 # 8000d280 <uart_tx_r>
    800090ac:	00004517          	auipc	a0,0x4
    800090b0:	1dc50513          	addi	a0,a0,476 # 8000d288 <uart_tx_w>
    800090b4:	00063783          	ld	a5,0(a2)
    800090b8:	00053703          	ld	a4,0(a0)
    800090bc:	04f70263          	beq	a4,a5,80009100 <uartintr+0x110>
    800090c0:	100005b7          	lui	a1,0x10000
    800090c4:	00005817          	auipc	a6,0x5
    800090c8:	55c80813          	addi	a6,a6,1372 # 8000e620 <uart_tx_buf>
    800090cc:	01c0006f          	j	800090e8 <uartintr+0xf8>
    800090d0:	0006c703          	lbu	a4,0(a3)
    800090d4:	00f63023          	sd	a5,0(a2)
    800090d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800090dc:	00063783          	ld	a5,0(a2)
    800090e0:	00053703          	ld	a4,0(a0)
    800090e4:	02f70063          	beq	a4,a5,80009104 <uartintr+0x114>
    800090e8:	01f7f713          	andi	a4,a5,31
    800090ec:	00e806b3          	add	a3,a6,a4
    800090f0:	0055c703          	lbu	a4,5(a1)
    800090f4:	00178793          	addi	a5,a5,1
    800090f8:	02077713          	andi	a4,a4,32
    800090fc:	fc071ae3          	bnez	a4,800090d0 <uartintr+0xe0>
    80009100:	00008067          	ret
    80009104:	00008067          	ret

0000000080009108 <kinit>:
    80009108:	fc010113          	addi	sp,sp,-64
    8000910c:	02913423          	sd	s1,40(sp)
    80009110:	fffff7b7          	lui	a5,0xfffff
    80009114:	00006497          	auipc	s1,0x6
    80009118:	52b48493          	addi	s1,s1,1323 # 8000f63f <end+0xfff>
    8000911c:	02813823          	sd	s0,48(sp)
    80009120:	01313c23          	sd	s3,24(sp)
    80009124:	00f4f4b3          	and	s1,s1,a5
    80009128:	02113c23          	sd	ra,56(sp)
    8000912c:	03213023          	sd	s2,32(sp)
    80009130:	01413823          	sd	s4,16(sp)
    80009134:	01513423          	sd	s5,8(sp)
    80009138:	04010413          	addi	s0,sp,64
    8000913c:	000017b7          	lui	a5,0x1
    80009140:	01100993          	li	s3,17
    80009144:	00f487b3          	add	a5,s1,a5
    80009148:	01b99993          	slli	s3,s3,0x1b
    8000914c:	06f9e063          	bltu	s3,a5,800091ac <kinit+0xa4>
    80009150:	00005a97          	auipc	s5,0x5
    80009154:	4f0a8a93          	addi	s5,s5,1264 # 8000e640 <end>
    80009158:	0754ec63          	bltu	s1,s5,800091d0 <kinit+0xc8>
    8000915c:	0734fa63          	bgeu	s1,s3,800091d0 <kinit+0xc8>
    80009160:	00088a37          	lui	s4,0x88
    80009164:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80009168:	00004917          	auipc	s2,0x4
    8000916c:	12890913          	addi	s2,s2,296 # 8000d290 <kmem>
    80009170:	00ca1a13          	slli	s4,s4,0xc
    80009174:	0140006f          	j	80009188 <kinit+0x80>
    80009178:	000017b7          	lui	a5,0x1
    8000917c:	00f484b3          	add	s1,s1,a5
    80009180:	0554e863          	bltu	s1,s5,800091d0 <kinit+0xc8>
    80009184:	0534f663          	bgeu	s1,s3,800091d0 <kinit+0xc8>
    80009188:	00001637          	lui	a2,0x1
    8000918c:	00100593          	li	a1,1
    80009190:	00048513          	mv	a0,s1
    80009194:	00000097          	auipc	ra,0x0
    80009198:	5e4080e7          	jalr	1508(ra) # 80009778 <__memset>
    8000919c:	00093783          	ld	a5,0(s2)
    800091a0:	00f4b023          	sd	a5,0(s1)
    800091a4:	00993023          	sd	s1,0(s2)
    800091a8:	fd4498e3          	bne	s1,s4,80009178 <kinit+0x70>
    800091ac:	03813083          	ld	ra,56(sp)
    800091b0:	03013403          	ld	s0,48(sp)
    800091b4:	02813483          	ld	s1,40(sp)
    800091b8:	02013903          	ld	s2,32(sp)
    800091bc:	01813983          	ld	s3,24(sp)
    800091c0:	01013a03          	ld	s4,16(sp)
    800091c4:	00813a83          	ld	s5,8(sp)
    800091c8:	04010113          	addi	sp,sp,64
    800091cc:	00008067          	ret
    800091d0:	00001517          	auipc	a0,0x1
    800091d4:	72850513          	addi	a0,a0,1832 # 8000a8f8 <digits+0x18>
    800091d8:	fffff097          	auipc	ra,0xfffff
    800091dc:	4b4080e7          	jalr	1204(ra) # 8000868c <panic>

00000000800091e0 <freerange>:
    800091e0:	fc010113          	addi	sp,sp,-64
    800091e4:	000017b7          	lui	a5,0x1
    800091e8:	02913423          	sd	s1,40(sp)
    800091ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800091f0:	009504b3          	add	s1,a0,s1
    800091f4:	fffff537          	lui	a0,0xfffff
    800091f8:	02813823          	sd	s0,48(sp)
    800091fc:	02113c23          	sd	ra,56(sp)
    80009200:	03213023          	sd	s2,32(sp)
    80009204:	01313c23          	sd	s3,24(sp)
    80009208:	01413823          	sd	s4,16(sp)
    8000920c:	01513423          	sd	s5,8(sp)
    80009210:	01613023          	sd	s6,0(sp)
    80009214:	04010413          	addi	s0,sp,64
    80009218:	00a4f4b3          	and	s1,s1,a0
    8000921c:	00f487b3          	add	a5,s1,a5
    80009220:	06f5e463          	bltu	a1,a5,80009288 <freerange+0xa8>
    80009224:	00005a97          	auipc	s5,0x5
    80009228:	41ca8a93          	addi	s5,s5,1052 # 8000e640 <end>
    8000922c:	0954e263          	bltu	s1,s5,800092b0 <freerange+0xd0>
    80009230:	01100993          	li	s3,17
    80009234:	01b99993          	slli	s3,s3,0x1b
    80009238:	0734fc63          	bgeu	s1,s3,800092b0 <freerange+0xd0>
    8000923c:	00058a13          	mv	s4,a1
    80009240:	00004917          	auipc	s2,0x4
    80009244:	05090913          	addi	s2,s2,80 # 8000d290 <kmem>
    80009248:	00002b37          	lui	s6,0x2
    8000924c:	0140006f          	j	80009260 <freerange+0x80>
    80009250:	000017b7          	lui	a5,0x1
    80009254:	00f484b3          	add	s1,s1,a5
    80009258:	0554ec63          	bltu	s1,s5,800092b0 <freerange+0xd0>
    8000925c:	0534fa63          	bgeu	s1,s3,800092b0 <freerange+0xd0>
    80009260:	00001637          	lui	a2,0x1
    80009264:	00100593          	li	a1,1
    80009268:	00048513          	mv	a0,s1
    8000926c:	00000097          	auipc	ra,0x0
    80009270:	50c080e7          	jalr	1292(ra) # 80009778 <__memset>
    80009274:	00093703          	ld	a4,0(s2)
    80009278:	016487b3          	add	a5,s1,s6
    8000927c:	00e4b023          	sd	a4,0(s1)
    80009280:	00993023          	sd	s1,0(s2)
    80009284:	fcfa76e3          	bgeu	s4,a5,80009250 <freerange+0x70>
    80009288:	03813083          	ld	ra,56(sp)
    8000928c:	03013403          	ld	s0,48(sp)
    80009290:	02813483          	ld	s1,40(sp)
    80009294:	02013903          	ld	s2,32(sp)
    80009298:	01813983          	ld	s3,24(sp)
    8000929c:	01013a03          	ld	s4,16(sp)
    800092a0:	00813a83          	ld	s5,8(sp)
    800092a4:	00013b03          	ld	s6,0(sp)
    800092a8:	04010113          	addi	sp,sp,64
    800092ac:	00008067          	ret
    800092b0:	00001517          	auipc	a0,0x1
    800092b4:	64850513          	addi	a0,a0,1608 # 8000a8f8 <digits+0x18>
    800092b8:	fffff097          	auipc	ra,0xfffff
    800092bc:	3d4080e7          	jalr	980(ra) # 8000868c <panic>

00000000800092c0 <kfree>:
    800092c0:	fe010113          	addi	sp,sp,-32
    800092c4:	00813823          	sd	s0,16(sp)
    800092c8:	00113c23          	sd	ra,24(sp)
    800092cc:	00913423          	sd	s1,8(sp)
    800092d0:	02010413          	addi	s0,sp,32
    800092d4:	03451793          	slli	a5,a0,0x34
    800092d8:	04079c63          	bnez	a5,80009330 <kfree+0x70>
    800092dc:	00005797          	auipc	a5,0x5
    800092e0:	36478793          	addi	a5,a5,868 # 8000e640 <end>
    800092e4:	00050493          	mv	s1,a0
    800092e8:	04f56463          	bltu	a0,a5,80009330 <kfree+0x70>
    800092ec:	01100793          	li	a5,17
    800092f0:	01b79793          	slli	a5,a5,0x1b
    800092f4:	02f57e63          	bgeu	a0,a5,80009330 <kfree+0x70>
    800092f8:	00001637          	lui	a2,0x1
    800092fc:	00100593          	li	a1,1
    80009300:	00000097          	auipc	ra,0x0
    80009304:	478080e7          	jalr	1144(ra) # 80009778 <__memset>
    80009308:	00004797          	auipc	a5,0x4
    8000930c:	f8878793          	addi	a5,a5,-120 # 8000d290 <kmem>
    80009310:	0007b703          	ld	a4,0(a5)
    80009314:	01813083          	ld	ra,24(sp)
    80009318:	01013403          	ld	s0,16(sp)
    8000931c:	00e4b023          	sd	a4,0(s1)
    80009320:	0097b023          	sd	s1,0(a5)
    80009324:	00813483          	ld	s1,8(sp)
    80009328:	02010113          	addi	sp,sp,32
    8000932c:	00008067          	ret
    80009330:	00001517          	auipc	a0,0x1
    80009334:	5c850513          	addi	a0,a0,1480 # 8000a8f8 <digits+0x18>
    80009338:	fffff097          	auipc	ra,0xfffff
    8000933c:	354080e7          	jalr	852(ra) # 8000868c <panic>

0000000080009340 <kalloc>:
    80009340:	fe010113          	addi	sp,sp,-32
    80009344:	00813823          	sd	s0,16(sp)
    80009348:	00913423          	sd	s1,8(sp)
    8000934c:	00113c23          	sd	ra,24(sp)
    80009350:	02010413          	addi	s0,sp,32
    80009354:	00004797          	auipc	a5,0x4
    80009358:	f3c78793          	addi	a5,a5,-196 # 8000d290 <kmem>
    8000935c:	0007b483          	ld	s1,0(a5)
    80009360:	02048063          	beqz	s1,80009380 <kalloc+0x40>
    80009364:	0004b703          	ld	a4,0(s1)
    80009368:	00001637          	lui	a2,0x1
    8000936c:	00500593          	li	a1,5
    80009370:	00048513          	mv	a0,s1
    80009374:	00e7b023          	sd	a4,0(a5)
    80009378:	00000097          	auipc	ra,0x0
    8000937c:	400080e7          	jalr	1024(ra) # 80009778 <__memset>
    80009380:	01813083          	ld	ra,24(sp)
    80009384:	01013403          	ld	s0,16(sp)
    80009388:	00048513          	mv	a0,s1
    8000938c:	00813483          	ld	s1,8(sp)
    80009390:	02010113          	addi	sp,sp,32
    80009394:	00008067          	ret

0000000080009398 <initlock>:
    80009398:	ff010113          	addi	sp,sp,-16
    8000939c:	00813423          	sd	s0,8(sp)
    800093a0:	01010413          	addi	s0,sp,16
    800093a4:	00813403          	ld	s0,8(sp)
    800093a8:	00b53423          	sd	a1,8(a0)
    800093ac:	00052023          	sw	zero,0(a0)
    800093b0:	00053823          	sd	zero,16(a0)
    800093b4:	01010113          	addi	sp,sp,16
    800093b8:	00008067          	ret

00000000800093bc <acquire>:
    800093bc:	fe010113          	addi	sp,sp,-32
    800093c0:	00813823          	sd	s0,16(sp)
    800093c4:	00913423          	sd	s1,8(sp)
    800093c8:	00113c23          	sd	ra,24(sp)
    800093cc:	01213023          	sd	s2,0(sp)
    800093d0:	02010413          	addi	s0,sp,32
    800093d4:	00050493          	mv	s1,a0
    800093d8:	10002973          	csrr	s2,sstatus
    800093dc:	100027f3          	csrr	a5,sstatus
    800093e0:	ffd7f793          	andi	a5,a5,-3
    800093e4:	10079073          	csrw	sstatus,a5
    800093e8:	fffff097          	auipc	ra,0xfffff
    800093ec:	8ec080e7          	jalr	-1812(ra) # 80007cd4 <mycpu>
    800093f0:	07852783          	lw	a5,120(a0)
    800093f4:	06078e63          	beqz	a5,80009470 <acquire+0xb4>
    800093f8:	fffff097          	auipc	ra,0xfffff
    800093fc:	8dc080e7          	jalr	-1828(ra) # 80007cd4 <mycpu>
    80009400:	07852783          	lw	a5,120(a0)
    80009404:	0004a703          	lw	a4,0(s1)
    80009408:	0017879b          	addiw	a5,a5,1
    8000940c:	06f52c23          	sw	a5,120(a0)
    80009410:	04071063          	bnez	a4,80009450 <acquire+0x94>
    80009414:	00100713          	li	a4,1
    80009418:	00070793          	mv	a5,a4
    8000941c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80009420:	0007879b          	sext.w	a5,a5
    80009424:	fe079ae3          	bnez	a5,80009418 <acquire+0x5c>
    80009428:	0ff0000f          	fence
    8000942c:	fffff097          	auipc	ra,0xfffff
    80009430:	8a8080e7          	jalr	-1880(ra) # 80007cd4 <mycpu>
    80009434:	01813083          	ld	ra,24(sp)
    80009438:	01013403          	ld	s0,16(sp)
    8000943c:	00a4b823          	sd	a0,16(s1)
    80009440:	00013903          	ld	s2,0(sp)
    80009444:	00813483          	ld	s1,8(sp)
    80009448:	02010113          	addi	sp,sp,32
    8000944c:	00008067          	ret
    80009450:	0104b903          	ld	s2,16(s1)
    80009454:	fffff097          	auipc	ra,0xfffff
    80009458:	880080e7          	jalr	-1920(ra) # 80007cd4 <mycpu>
    8000945c:	faa91ce3          	bne	s2,a0,80009414 <acquire+0x58>
    80009460:	00001517          	auipc	a0,0x1
    80009464:	4a050513          	addi	a0,a0,1184 # 8000a900 <digits+0x20>
    80009468:	fffff097          	auipc	ra,0xfffff
    8000946c:	224080e7          	jalr	548(ra) # 8000868c <panic>
    80009470:	00195913          	srli	s2,s2,0x1
    80009474:	fffff097          	auipc	ra,0xfffff
    80009478:	860080e7          	jalr	-1952(ra) # 80007cd4 <mycpu>
    8000947c:	00197913          	andi	s2,s2,1
    80009480:	07252e23          	sw	s2,124(a0)
    80009484:	f75ff06f          	j	800093f8 <acquire+0x3c>

0000000080009488 <release>:
    80009488:	fe010113          	addi	sp,sp,-32
    8000948c:	00813823          	sd	s0,16(sp)
    80009490:	00113c23          	sd	ra,24(sp)
    80009494:	00913423          	sd	s1,8(sp)
    80009498:	01213023          	sd	s2,0(sp)
    8000949c:	02010413          	addi	s0,sp,32
    800094a0:	00052783          	lw	a5,0(a0)
    800094a4:	00079a63          	bnez	a5,800094b8 <release+0x30>
    800094a8:	00001517          	auipc	a0,0x1
    800094ac:	46050513          	addi	a0,a0,1120 # 8000a908 <digits+0x28>
    800094b0:	fffff097          	auipc	ra,0xfffff
    800094b4:	1dc080e7          	jalr	476(ra) # 8000868c <panic>
    800094b8:	01053903          	ld	s2,16(a0)
    800094bc:	00050493          	mv	s1,a0
    800094c0:	fffff097          	auipc	ra,0xfffff
    800094c4:	814080e7          	jalr	-2028(ra) # 80007cd4 <mycpu>
    800094c8:	fea910e3          	bne	s2,a0,800094a8 <release+0x20>
    800094cc:	0004b823          	sd	zero,16(s1)
    800094d0:	0ff0000f          	fence
    800094d4:	0f50000f          	fence	iorw,ow
    800094d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800094dc:	ffffe097          	auipc	ra,0xffffe
    800094e0:	7f8080e7          	jalr	2040(ra) # 80007cd4 <mycpu>
    800094e4:	100027f3          	csrr	a5,sstatus
    800094e8:	0027f793          	andi	a5,a5,2
    800094ec:	04079a63          	bnez	a5,80009540 <release+0xb8>
    800094f0:	07852783          	lw	a5,120(a0)
    800094f4:	02f05e63          	blez	a5,80009530 <release+0xa8>
    800094f8:	fff7871b          	addiw	a4,a5,-1
    800094fc:	06e52c23          	sw	a4,120(a0)
    80009500:	00071c63          	bnez	a4,80009518 <release+0x90>
    80009504:	07c52783          	lw	a5,124(a0)
    80009508:	00078863          	beqz	a5,80009518 <release+0x90>
    8000950c:	100027f3          	csrr	a5,sstatus
    80009510:	0027e793          	ori	a5,a5,2
    80009514:	10079073          	csrw	sstatus,a5
    80009518:	01813083          	ld	ra,24(sp)
    8000951c:	01013403          	ld	s0,16(sp)
    80009520:	00813483          	ld	s1,8(sp)
    80009524:	00013903          	ld	s2,0(sp)
    80009528:	02010113          	addi	sp,sp,32
    8000952c:	00008067          	ret
    80009530:	00001517          	auipc	a0,0x1
    80009534:	3f850513          	addi	a0,a0,1016 # 8000a928 <digits+0x48>
    80009538:	fffff097          	auipc	ra,0xfffff
    8000953c:	154080e7          	jalr	340(ra) # 8000868c <panic>
    80009540:	00001517          	auipc	a0,0x1
    80009544:	3d050513          	addi	a0,a0,976 # 8000a910 <digits+0x30>
    80009548:	fffff097          	auipc	ra,0xfffff
    8000954c:	144080e7          	jalr	324(ra) # 8000868c <panic>

0000000080009550 <holding>:
    80009550:	00052783          	lw	a5,0(a0)
    80009554:	00079663          	bnez	a5,80009560 <holding+0x10>
    80009558:	00000513          	li	a0,0
    8000955c:	00008067          	ret
    80009560:	fe010113          	addi	sp,sp,-32
    80009564:	00813823          	sd	s0,16(sp)
    80009568:	00913423          	sd	s1,8(sp)
    8000956c:	00113c23          	sd	ra,24(sp)
    80009570:	02010413          	addi	s0,sp,32
    80009574:	01053483          	ld	s1,16(a0)
    80009578:	ffffe097          	auipc	ra,0xffffe
    8000957c:	75c080e7          	jalr	1884(ra) # 80007cd4 <mycpu>
    80009580:	01813083          	ld	ra,24(sp)
    80009584:	01013403          	ld	s0,16(sp)
    80009588:	40a48533          	sub	a0,s1,a0
    8000958c:	00153513          	seqz	a0,a0
    80009590:	00813483          	ld	s1,8(sp)
    80009594:	02010113          	addi	sp,sp,32
    80009598:	00008067          	ret

000000008000959c <push_off>:
    8000959c:	fe010113          	addi	sp,sp,-32
    800095a0:	00813823          	sd	s0,16(sp)
    800095a4:	00113c23          	sd	ra,24(sp)
    800095a8:	00913423          	sd	s1,8(sp)
    800095ac:	02010413          	addi	s0,sp,32
    800095b0:	100024f3          	csrr	s1,sstatus
    800095b4:	100027f3          	csrr	a5,sstatus
    800095b8:	ffd7f793          	andi	a5,a5,-3
    800095bc:	10079073          	csrw	sstatus,a5
    800095c0:	ffffe097          	auipc	ra,0xffffe
    800095c4:	714080e7          	jalr	1812(ra) # 80007cd4 <mycpu>
    800095c8:	07852783          	lw	a5,120(a0)
    800095cc:	02078663          	beqz	a5,800095f8 <push_off+0x5c>
    800095d0:	ffffe097          	auipc	ra,0xffffe
    800095d4:	704080e7          	jalr	1796(ra) # 80007cd4 <mycpu>
    800095d8:	07852783          	lw	a5,120(a0)
    800095dc:	01813083          	ld	ra,24(sp)
    800095e0:	01013403          	ld	s0,16(sp)
    800095e4:	0017879b          	addiw	a5,a5,1
    800095e8:	06f52c23          	sw	a5,120(a0)
    800095ec:	00813483          	ld	s1,8(sp)
    800095f0:	02010113          	addi	sp,sp,32
    800095f4:	00008067          	ret
    800095f8:	0014d493          	srli	s1,s1,0x1
    800095fc:	ffffe097          	auipc	ra,0xffffe
    80009600:	6d8080e7          	jalr	1752(ra) # 80007cd4 <mycpu>
    80009604:	0014f493          	andi	s1,s1,1
    80009608:	06952e23          	sw	s1,124(a0)
    8000960c:	fc5ff06f          	j	800095d0 <push_off+0x34>

0000000080009610 <pop_off>:
    80009610:	ff010113          	addi	sp,sp,-16
    80009614:	00813023          	sd	s0,0(sp)
    80009618:	00113423          	sd	ra,8(sp)
    8000961c:	01010413          	addi	s0,sp,16
    80009620:	ffffe097          	auipc	ra,0xffffe
    80009624:	6b4080e7          	jalr	1716(ra) # 80007cd4 <mycpu>
    80009628:	100027f3          	csrr	a5,sstatus
    8000962c:	0027f793          	andi	a5,a5,2
    80009630:	04079663          	bnez	a5,8000967c <pop_off+0x6c>
    80009634:	07852783          	lw	a5,120(a0)
    80009638:	02f05a63          	blez	a5,8000966c <pop_off+0x5c>
    8000963c:	fff7871b          	addiw	a4,a5,-1
    80009640:	06e52c23          	sw	a4,120(a0)
    80009644:	00071c63          	bnez	a4,8000965c <pop_off+0x4c>
    80009648:	07c52783          	lw	a5,124(a0)
    8000964c:	00078863          	beqz	a5,8000965c <pop_off+0x4c>
    80009650:	100027f3          	csrr	a5,sstatus
    80009654:	0027e793          	ori	a5,a5,2
    80009658:	10079073          	csrw	sstatus,a5
    8000965c:	00813083          	ld	ra,8(sp)
    80009660:	00013403          	ld	s0,0(sp)
    80009664:	01010113          	addi	sp,sp,16
    80009668:	00008067          	ret
    8000966c:	00001517          	auipc	a0,0x1
    80009670:	2bc50513          	addi	a0,a0,700 # 8000a928 <digits+0x48>
    80009674:	fffff097          	auipc	ra,0xfffff
    80009678:	018080e7          	jalr	24(ra) # 8000868c <panic>
    8000967c:	00001517          	auipc	a0,0x1
    80009680:	29450513          	addi	a0,a0,660 # 8000a910 <digits+0x30>
    80009684:	fffff097          	auipc	ra,0xfffff
    80009688:	008080e7          	jalr	8(ra) # 8000868c <panic>

000000008000968c <push_on>:
    8000968c:	fe010113          	addi	sp,sp,-32
    80009690:	00813823          	sd	s0,16(sp)
    80009694:	00113c23          	sd	ra,24(sp)
    80009698:	00913423          	sd	s1,8(sp)
    8000969c:	02010413          	addi	s0,sp,32
    800096a0:	100024f3          	csrr	s1,sstatus
    800096a4:	100027f3          	csrr	a5,sstatus
    800096a8:	0027e793          	ori	a5,a5,2
    800096ac:	10079073          	csrw	sstatus,a5
    800096b0:	ffffe097          	auipc	ra,0xffffe
    800096b4:	624080e7          	jalr	1572(ra) # 80007cd4 <mycpu>
    800096b8:	07852783          	lw	a5,120(a0)
    800096bc:	02078663          	beqz	a5,800096e8 <push_on+0x5c>
    800096c0:	ffffe097          	auipc	ra,0xffffe
    800096c4:	614080e7          	jalr	1556(ra) # 80007cd4 <mycpu>
    800096c8:	07852783          	lw	a5,120(a0)
    800096cc:	01813083          	ld	ra,24(sp)
    800096d0:	01013403          	ld	s0,16(sp)
    800096d4:	0017879b          	addiw	a5,a5,1
    800096d8:	06f52c23          	sw	a5,120(a0)
    800096dc:	00813483          	ld	s1,8(sp)
    800096e0:	02010113          	addi	sp,sp,32
    800096e4:	00008067          	ret
    800096e8:	0014d493          	srli	s1,s1,0x1
    800096ec:	ffffe097          	auipc	ra,0xffffe
    800096f0:	5e8080e7          	jalr	1512(ra) # 80007cd4 <mycpu>
    800096f4:	0014f493          	andi	s1,s1,1
    800096f8:	06952e23          	sw	s1,124(a0)
    800096fc:	fc5ff06f          	j	800096c0 <push_on+0x34>

0000000080009700 <pop_on>:
    80009700:	ff010113          	addi	sp,sp,-16
    80009704:	00813023          	sd	s0,0(sp)
    80009708:	00113423          	sd	ra,8(sp)
    8000970c:	01010413          	addi	s0,sp,16
    80009710:	ffffe097          	auipc	ra,0xffffe
    80009714:	5c4080e7          	jalr	1476(ra) # 80007cd4 <mycpu>
    80009718:	100027f3          	csrr	a5,sstatus
    8000971c:	0027f793          	andi	a5,a5,2
    80009720:	04078463          	beqz	a5,80009768 <pop_on+0x68>
    80009724:	07852783          	lw	a5,120(a0)
    80009728:	02f05863          	blez	a5,80009758 <pop_on+0x58>
    8000972c:	fff7879b          	addiw	a5,a5,-1
    80009730:	06f52c23          	sw	a5,120(a0)
    80009734:	07853783          	ld	a5,120(a0)
    80009738:	00079863          	bnez	a5,80009748 <pop_on+0x48>
    8000973c:	100027f3          	csrr	a5,sstatus
    80009740:	ffd7f793          	andi	a5,a5,-3
    80009744:	10079073          	csrw	sstatus,a5
    80009748:	00813083          	ld	ra,8(sp)
    8000974c:	00013403          	ld	s0,0(sp)
    80009750:	01010113          	addi	sp,sp,16
    80009754:	00008067          	ret
    80009758:	00001517          	auipc	a0,0x1
    8000975c:	1f850513          	addi	a0,a0,504 # 8000a950 <digits+0x70>
    80009760:	fffff097          	auipc	ra,0xfffff
    80009764:	f2c080e7          	jalr	-212(ra) # 8000868c <panic>
    80009768:	00001517          	auipc	a0,0x1
    8000976c:	1c850513          	addi	a0,a0,456 # 8000a930 <digits+0x50>
    80009770:	fffff097          	auipc	ra,0xfffff
    80009774:	f1c080e7          	jalr	-228(ra) # 8000868c <panic>

0000000080009778 <__memset>:
    80009778:	ff010113          	addi	sp,sp,-16
    8000977c:	00813423          	sd	s0,8(sp)
    80009780:	01010413          	addi	s0,sp,16
    80009784:	1a060e63          	beqz	a2,80009940 <__memset+0x1c8>
    80009788:	40a007b3          	neg	a5,a0
    8000978c:	0077f793          	andi	a5,a5,7
    80009790:	00778693          	addi	a3,a5,7
    80009794:	00b00813          	li	a6,11
    80009798:	0ff5f593          	andi	a1,a1,255
    8000979c:	fff6071b          	addiw	a4,a2,-1
    800097a0:	1b06e663          	bltu	a3,a6,8000994c <__memset+0x1d4>
    800097a4:	1cd76463          	bltu	a4,a3,8000996c <__memset+0x1f4>
    800097a8:	1a078e63          	beqz	a5,80009964 <__memset+0x1ec>
    800097ac:	00b50023          	sb	a1,0(a0)
    800097b0:	00100713          	li	a4,1
    800097b4:	1ae78463          	beq	a5,a4,8000995c <__memset+0x1e4>
    800097b8:	00b500a3          	sb	a1,1(a0)
    800097bc:	00200713          	li	a4,2
    800097c0:	1ae78a63          	beq	a5,a4,80009974 <__memset+0x1fc>
    800097c4:	00b50123          	sb	a1,2(a0)
    800097c8:	00300713          	li	a4,3
    800097cc:	18e78463          	beq	a5,a4,80009954 <__memset+0x1dc>
    800097d0:	00b501a3          	sb	a1,3(a0)
    800097d4:	00400713          	li	a4,4
    800097d8:	1ae78263          	beq	a5,a4,8000997c <__memset+0x204>
    800097dc:	00b50223          	sb	a1,4(a0)
    800097e0:	00500713          	li	a4,5
    800097e4:	1ae78063          	beq	a5,a4,80009984 <__memset+0x20c>
    800097e8:	00b502a3          	sb	a1,5(a0)
    800097ec:	00700713          	li	a4,7
    800097f0:	18e79e63          	bne	a5,a4,8000998c <__memset+0x214>
    800097f4:	00b50323          	sb	a1,6(a0)
    800097f8:	00700e93          	li	t4,7
    800097fc:	00859713          	slli	a4,a1,0x8
    80009800:	00e5e733          	or	a4,a1,a4
    80009804:	01059e13          	slli	t3,a1,0x10
    80009808:	01c76e33          	or	t3,a4,t3
    8000980c:	01859313          	slli	t1,a1,0x18
    80009810:	006e6333          	or	t1,t3,t1
    80009814:	02059893          	slli	a7,a1,0x20
    80009818:	40f60e3b          	subw	t3,a2,a5
    8000981c:	011368b3          	or	a7,t1,a7
    80009820:	02859813          	slli	a6,a1,0x28
    80009824:	0108e833          	or	a6,a7,a6
    80009828:	03059693          	slli	a3,a1,0x30
    8000982c:	003e589b          	srliw	a7,t3,0x3
    80009830:	00d866b3          	or	a3,a6,a3
    80009834:	03859713          	slli	a4,a1,0x38
    80009838:	00389813          	slli	a6,a7,0x3
    8000983c:	00f507b3          	add	a5,a0,a5
    80009840:	00e6e733          	or	a4,a3,a4
    80009844:	000e089b          	sext.w	a7,t3
    80009848:	00f806b3          	add	a3,a6,a5
    8000984c:	00e7b023          	sd	a4,0(a5)
    80009850:	00878793          	addi	a5,a5,8
    80009854:	fed79ce3          	bne	a5,a3,8000984c <__memset+0xd4>
    80009858:	ff8e7793          	andi	a5,t3,-8
    8000985c:	0007871b          	sext.w	a4,a5
    80009860:	01d787bb          	addw	a5,a5,t4
    80009864:	0ce88e63          	beq	a7,a4,80009940 <__memset+0x1c8>
    80009868:	00f50733          	add	a4,a0,a5
    8000986c:	00b70023          	sb	a1,0(a4)
    80009870:	0017871b          	addiw	a4,a5,1
    80009874:	0cc77663          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    80009878:	00e50733          	add	a4,a0,a4
    8000987c:	00b70023          	sb	a1,0(a4)
    80009880:	0027871b          	addiw	a4,a5,2
    80009884:	0ac77e63          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    80009888:	00e50733          	add	a4,a0,a4
    8000988c:	00b70023          	sb	a1,0(a4)
    80009890:	0037871b          	addiw	a4,a5,3
    80009894:	0ac77663          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    80009898:	00e50733          	add	a4,a0,a4
    8000989c:	00b70023          	sb	a1,0(a4)
    800098a0:	0047871b          	addiw	a4,a5,4
    800098a4:	08c77e63          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    800098a8:	00e50733          	add	a4,a0,a4
    800098ac:	00b70023          	sb	a1,0(a4)
    800098b0:	0057871b          	addiw	a4,a5,5
    800098b4:	08c77663          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    800098b8:	00e50733          	add	a4,a0,a4
    800098bc:	00b70023          	sb	a1,0(a4)
    800098c0:	0067871b          	addiw	a4,a5,6
    800098c4:	06c77e63          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    800098c8:	00e50733          	add	a4,a0,a4
    800098cc:	00b70023          	sb	a1,0(a4)
    800098d0:	0077871b          	addiw	a4,a5,7
    800098d4:	06c77663          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    800098d8:	00e50733          	add	a4,a0,a4
    800098dc:	00b70023          	sb	a1,0(a4)
    800098e0:	0087871b          	addiw	a4,a5,8
    800098e4:	04c77e63          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    800098e8:	00e50733          	add	a4,a0,a4
    800098ec:	00b70023          	sb	a1,0(a4)
    800098f0:	0097871b          	addiw	a4,a5,9
    800098f4:	04c77663          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    800098f8:	00e50733          	add	a4,a0,a4
    800098fc:	00b70023          	sb	a1,0(a4)
    80009900:	00a7871b          	addiw	a4,a5,10
    80009904:	02c77e63          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    80009908:	00e50733          	add	a4,a0,a4
    8000990c:	00b70023          	sb	a1,0(a4)
    80009910:	00b7871b          	addiw	a4,a5,11
    80009914:	02c77663          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    80009918:	00e50733          	add	a4,a0,a4
    8000991c:	00b70023          	sb	a1,0(a4)
    80009920:	00c7871b          	addiw	a4,a5,12
    80009924:	00c77e63          	bgeu	a4,a2,80009940 <__memset+0x1c8>
    80009928:	00e50733          	add	a4,a0,a4
    8000992c:	00b70023          	sb	a1,0(a4)
    80009930:	00d7879b          	addiw	a5,a5,13
    80009934:	00c7f663          	bgeu	a5,a2,80009940 <__memset+0x1c8>
    80009938:	00f507b3          	add	a5,a0,a5
    8000993c:	00b78023          	sb	a1,0(a5)
    80009940:	00813403          	ld	s0,8(sp)
    80009944:	01010113          	addi	sp,sp,16
    80009948:	00008067          	ret
    8000994c:	00b00693          	li	a3,11
    80009950:	e55ff06f          	j	800097a4 <__memset+0x2c>
    80009954:	00300e93          	li	t4,3
    80009958:	ea5ff06f          	j	800097fc <__memset+0x84>
    8000995c:	00100e93          	li	t4,1
    80009960:	e9dff06f          	j	800097fc <__memset+0x84>
    80009964:	00000e93          	li	t4,0
    80009968:	e95ff06f          	j	800097fc <__memset+0x84>
    8000996c:	00000793          	li	a5,0
    80009970:	ef9ff06f          	j	80009868 <__memset+0xf0>
    80009974:	00200e93          	li	t4,2
    80009978:	e85ff06f          	j	800097fc <__memset+0x84>
    8000997c:	00400e93          	li	t4,4
    80009980:	e7dff06f          	j	800097fc <__memset+0x84>
    80009984:	00500e93          	li	t4,5
    80009988:	e75ff06f          	j	800097fc <__memset+0x84>
    8000998c:	00600e93          	li	t4,6
    80009990:	e6dff06f          	j	800097fc <__memset+0x84>

0000000080009994 <__memmove>:
    80009994:	ff010113          	addi	sp,sp,-16
    80009998:	00813423          	sd	s0,8(sp)
    8000999c:	01010413          	addi	s0,sp,16
    800099a0:	0e060863          	beqz	a2,80009a90 <__memmove+0xfc>
    800099a4:	fff6069b          	addiw	a3,a2,-1
    800099a8:	0006881b          	sext.w	a6,a3
    800099ac:	0ea5e863          	bltu	a1,a0,80009a9c <__memmove+0x108>
    800099b0:	00758713          	addi	a4,a1,7
    800099b4:	00a5e7b3          	or	a5,a1,a0
    800099b8:	40a70733          	sub	a4,a4,a0
    800099bc:	0077f793          	andi	a5,a5,7
    800099c0:	00f73713          	sltiu	a4,a4,15
    800099c4:	00174713          	xori	a4,a4,1
    800099c8:	0017b793          	seqz	a5,a5
    800099cc:	00e7f7b3          	and	a5,a5,a4
    800099d0:	10078863          	beqz	a5,80009ae0 <__memmove+0x14c>
    800099d4:	00900793          	li	a5,9
    800099d8:	1107f463          	bgeu	a5,a6,80009ae0 <__memmove+0x14c>
    800099dc:	0036581b          	srliw	a6,a2,0x3
    800099e0:	fff8081b          	addiw	a6,a6,-1
    800099e4:	02081813          	slli	a6,a6,0x20
    800099e8:	01d85893          	srli	a7,a6,0x1d
    800099ec:	00858813          	addi	a6,a1,8
    800099f0:	00058793          	mv	a5,a1
    800099f4:	00050713          	mv	a4,a0
    800099f8:	01088833          	add	a6,a7,a6
    800099fc:	0007b883          	ld	a7,0(a5)
    80009a00:	00878793          	addi	a5,a5,8
    80009a04:	00870713          	addi	a4,a4,8
    80009a08:	ff173c23          	sd	a7,-8(a4)
    80009a0c:	ff0798e3          	bne	a5,a6,800099fc <__memmove+0x68>
    80009a10:	ff867713          	andi	a4,a2,-8
    80009a14:	02071793          	slli	a5,a4,0x20
    80009a18:	0207d793          	srli	a5,a5,0x20
    80009a1c:	00f585b3          	add	a1,a1,a5
    80009a20:	40e686bb          	subw	a3,a3,a4
    80009a24:	00f507b3          	add	a5,a0,a5
    80009a28:	06e60463          	beq	a2,a4,80009a90 <__memmove+0xfc>
    80009a2c:	0005c703          	lbu	a4,0(a1)
    80009a30:	00e78023          	sb	a4,0(a5)
    80009a34:	04068e63          	beqz	a3,80009a90 <__memmove+0xfc>
    80009a38:	0015c603          	lbu	a2,1(a1)
    80009a3c:	00100713          	li	a4,1
    80009a40:	00c780a3          	sb	a2,1(a5)
    80009a44:	04e68663          	beq	a3,a4,80009a90 <__memmove+0xfc>
    80009a48:	0025c603          	lbu	a2,2(a1)
    80009a4c:	00200713          	li	a4,2
    80009a50:	00c78123          	sb	a2,2(a5)
    80009a54:	02e68e63          	beq	a3,a4,80009a90 <__memmove+0xfc>
    80009a58:	0035c603          	lbu	a2,3(a1)
    80009a5c:	00300713          	li	a4,3
    80009a60:	00c781a3          	sb	a2,3(a5)
    80009a64:	02e68663          	beq	a3,a4,80009a90 <__memmove+0xfc>
    80009a68:	0045c603          	lbu	a2,4(a1)
    80009a6c:	00400713          	li	a4,4
    80009a70:	00c78223          	sb	a2,4(a5)
    80009a74:	00e68e63          	beq	a3,a4,80009a90 <__memmove+0xfc>
    80009a78:	0055c603          	lbu	a2,5(a1)
    80009a7c:	00500713          	li	a4,5
    80009a80:	00c782a3          	sb	a2,5(a5)
    80009a84:	00e68663          	beq	a3,a4,80009a90 <__memmove+0xfc>
    80009a88:	0065c703          	lbu	a4,6(a1)
    80009a8c:	00e78323          	sb	a4,6(a5)
    80009a90:	00813403          	ld	s0,8(sp)
    80009a94:	01010113          	addi	sp,sp,16
    80009a98:	00008067          	ret
    80009a9c:	02061713          	slli	a4,a2,0x20
    80009aa0:	02075713          	srli	a4,a4,0x20
    80009aa4:	00e587b3          	add	a5,a1,a4
    80009aa8:	f0f574e3          	bgeu	a0,a5,800099b0 <__memmove+0x1c>
    80009aac:	02069613          	slli	a2,a3,0x20
    80009ab0:	02065613          	srli	a2,a2,0x20
    80009ab4:	fff64613          	not	a2,a2
    80009ab8:	00e50733          	add	a4,a0,a4
    80009abc:	00c78633          	add	a2,a5,a2
    80009ac0:	fff7c683          	lbu	a3,-1(a5)
    80009ac4:	fff78793          	addi	a5,a5,-1
    80009ac8:	fff70713          	addi	a4,a4,-1
    80009acc:	00d70023          	sb	a3,0(a4)
    80009ad0:	fec798e3          	bne	a5,a2,80009ac0 <__memmove+0x12c>
    80009ad4:	00813403          	ld	s0,8(sp)
    80009ad8:	01010113          	addi	sp,sp,16
    80009adc:	00008067          	ret
    80009ae0:	02069713          	slli	a4,a3,0x20
    80009ae4:	02075713          	srli	a4,a4,0x20
    80009ae8:	00170713          	addi	a4,a4,1
    80009aec:	00e50733          	add	a4,a0,a4
    80009af0:	00050793          	mv	a5,a0
    80009af4:	0005c683          	lbu	a3,0(a1)
    80009af8:	00178793          	addi	a5,a5,1
    80009afc:	00158593          	addi	a1,a1,1
    80009b00:	fed78fa3          	sb	a3,-1(a5)
    80009b04:	fee798e3          	bne	a5,a4,80009af4 <__memmove+0x160>
    80009b08:	f89ff06f          	j	80009a90 <__memmove+0xfc>
	...
