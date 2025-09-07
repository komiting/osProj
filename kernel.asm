
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	fb013103          	ld	sp,-80(sp) # 80005fb0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	205020ef          	jal	ra,80002a20 <start>

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
    80001184:	038010ef          	jal	ra,800021bc <_ZN5Riscv20handleSupervisorTrapEv>
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

0000000080001224 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"


void* mem_alloc(size_t size){
    80001224:	fe010113          	addi	sp,sp,-32
    80001228:	00813c23          	sd	s0,24(sp)
    8000122c:	02010413          	addi	s0,sp,32
    size=((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);//mora u blokovima
    80001230:	03f50513          	addi	a0,a0,63
    80001234:	00655513          	srli	a0,a0,0x6

    __asm__ volatile("mv a1, %0"::"r"(size));
    80001238:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(MEM_ALLOC));
    8000123c:	00100793          	li	a5,1
    80001240:	00078513          	mv	a0,a5
    __asm__ volatile("ecall"); // saljemo u ABI da nam u prekidnoj rutini resi posao
    80001244:	00000073          	ecall
    //dobijamo povratnu vrednost u a0, koju treba da vratimo

    void* volatile retAddr;
    __asm__ volatile("mv %0, a0":"=r"(retAddr));
    80001248:	00050793          	mv	a5,a0
    8000124c:	fef43423          	sd	a5,-24(s0)

    return retAddr;
    80001250:	fe843503          	ld	a0,-24(s0)
}
    80001254:	01813403          	ld	s0,24(sp)
    80001258:	02010113          	addi	sp,sp,32
    8000125c:	00008067          	ret

0000000080001260 <_Z8mem_freePv>:

int mem_free(void* addr){
    80001260:	fe010113          	addi	sp,sp,-32
    80001264:	00813c23          	sd	s0,24(sp)
    80001268:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(addr));
    8000126c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(MEM_FREE));
    80001270:	00200793          	li	a5,2
    80001274:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001278:	00000073          	ecall
    int volatile retVal;
    __asm__ volatile("mv %0, a0":"=r"(retVal));
    8000127c:	00050793          	mv	a5,a0
    80001280:	fef42623          	sw	a5,-20(s0)
    return retVal;
    80001284:	fec42503          	lw	a0,-20(s0)
}
    80001288:	0005051b          	sext.w	a0,a0
    8000128c:	01813403          	ld	s0,24(sp)
    80001290:	02010113          	addi	sp,sp,32
    80001294:	00008067          	ret

0000000080001298 <_Z18mem_get_free_spacev>:

size_t mem_get_free_space(){
    80001298:	fe010113          	addi	sp,sp,-32
    8000129c:	00813c23          	sd	s0,24(sp)
    800012a0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(MEM_FREE_SPACE));
    800012a4:	00300793          	li	a5,3
    800012a8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012ac:	00000073          	ecall
    size_t volatile block;
    __asm__ volatile("mv %0, a0":"=r"(block));
    800012b0:	00050793          	mv	a5,a0
    800012b4:	fef43423          	sd	a5,-24(s0)
    return block;
    800012b8:	fe843503          	ld	a0,-24(s0)
}
    800012bc:	01813403          	ld	s0,24(sp)
    800012c0:	02010113          	addi	sp,sp,32
    800012c4:	00008067          	ret

00000000800012c8 <_Z26mem_get_largest_free_blockv>:

size_t mem_get_largest_free_block(){
    800012c8:	fe010113          	addi	sp,sp,-32
    800012cc:	00813c23          	sd	s0,24(sp)
    800012d0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(MEM_LARGEST_BLOCK_SYSCALL));
    800012d4:	00400793          	li	a5,4
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

00000000800012f8 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*),void* arg){
    800012f8:	fc010113          	addi	sp,sp,-64
    800012fc:	02113c23          	sd	ra,56(sp)
    80001300:	02813823          	sd	s0,48(sp)
    80001304:	02913423          	sd	s1,40(sp)
    80001308:	03213023          	sd	s2,32(sp)
    8000130c:	01313c23          	sd	s3,24(sp)
    80001310:	04010413          	addi	s0,sp,64
    80001314:	00050493          	mv	s1,a0
    80001318:	00058913          	mv	s2,a1
    8000131c:	00060993          	mv	s3,a2
    //a1=handle,a2=funkc,a3=arg
    //ABI se razlikuje u odnosu na C API, ima dodatan argument - stack_space - a4
    void* addr=mem_alloc(DEFAULT_STACK_SIZE);//stek raste ka nizim adresama, mi
    80001320:	00001537          	lui	a0,0x1
    80001324:	00000097          	auipc	ra,0x0
    80001328:	f00080e7          	jalr	-256(ra) # 80001224 <_Z9mem_allocm>
    //alociramo memoriju ka visim, pa poslednja lokacija steka je zapravo prva lokacija
    //zauzete memorije
    if(!addr) return -1;
    8000132c:	04050663          	beqz	a0,80001378 <_Z13thread_createPP7_threadPFvPvES2_+0x80>

    __asm__ volatile("mv a4, %0"::"r"(addr));
    80001330:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0"::"r"(arg));
    80001334:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    80001338:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0"::"r"(handle));
    8000133c:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0"::"r"(THREAD_CREATE));
    80001340:	01100793          	li	a5,17
    80001344:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001348:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    8000134c:	00050793          	mv	a5,a0
    80001350:	fcf42623          	sw	a5,-52(s0)
    return flag;
    80001354:	fcc42503          	lw	a0,-52(s0)
    80001358:	0005051b          	sext.w	a0,a0
}
    8000135c:	03813083          	ld	ra,56(sp)
    80001360:	03013403          	ld	s0,48(sp)
    80001364:	02813483          	ld	s1,40(sp)
    80001368:	02013903          	ld	s2,32(sp)
    8000136c:	01813983          	ld	s3,24(sp)
    80001370:	04010113          	addi	sp,sp,64
    80001374:	00008067          	ret
    if(!addr) return -1;
    80001378:	fff00513          	li	a0,-1
    8000137c:	fe1ff06f          	j	8000135c <_Z13thread_createPP7_threadPFvPvES2_+0x64>

0000000080001380 <_Z11thread_exitv>:
int thread_exit(){
    80001380:	fe010113          	addi	sp,sp,-32
    80001384:	00813c23          	sd	s0,24(sp)
    80001388:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(THREAD_EXIT));
    8000138c:	01200793          	li	a5,18
    80001390:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001394:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001398:	00050793          	mv	a5,a0
    8000139c:	fef42623          	sw	a5,-20(s0)
    return flag;
    800013a0:	fec42503          	lw	a0,-20(s0)
}
    800013a4:	0005051b          	sext.w	a0,a0
    800013a8:	01813403          	ld	s0,24(sp)
    800013ac:	02010113          	addi	sp,sp,32
    800013b0:	00008067          	ret

00000000800013b4 <_Z15thread_dispatchv>:
void thread_dispatch(){
    800013b4:	ff010113          	addi	sp,sp,-16
    800013b8:	00813423          	sd	s0,8(sp)
    800013bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a0, %0"::"r"(THREAD_DISPATCH));
    800013c0:	01300793          	li	a5,19
    800013c4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013c8:	00000073          	ecall
}
    800013cc:	00813403          	ld	s0,8(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <_Z8sem_openPP4_semj>:

int sem_open (sem_t* handle,unsigned init){
    800013d8:	fe010113          	addi	sp,sp,-32
    800013dc:	00813c23          	sd	s0,24(sp)
    800013e0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a2, %0"::"r"(init));
    800013e4:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800013e8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    800013ec:	02100793          	li	a5,33
    800013f0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013f4:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800013f8:	00050793          	mv	a5,a0
    800013fc:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001400:	fec42503          	lw	a0,-20(s0)
}
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	01813403          	ld	s0,24(sp)
    8000140c:	02010113          	addi	sp,sp,32
    80001410:	00008067          	ret

0000000080001414 <_Z9sem_closeP4_sem>:
int sem_close(sem_t handle){
    80001414:	fe010113          	addi	sp,sp,-32
    80001418:	00813c23          	sd	s0,24(sp)
    8000141c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001420:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    80001424:	02200793          	li	a5,34
    80001428:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000142c:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001430:	00050793          	mv	a5,a0
    80001434:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001438:	fec42503          	lw	a0,-20(s0)
}
    8000143c:	0005051b          	sext.w	a0,a0
    80001440:	01813403          	ld	s0,24(sp)
    80001444:	02010113          	addi	sp,sp,32
    80001448:	00008067          	ret

000000008000144c <_Z8sem_waitP4_sem>:
int sem_wait(sem_t id){
    8000144c:	fe010113          	addi	sp,sp,-32
    80001450:	00813c23          	sd	s0,24(sp)
    80001454:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001458:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    8000145c:	02300793          	li	a5,35
    80001460:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001464:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    80001468:	00050793          	mv	a5,a0
    8000146c:	fef42623          	sw	a5,-20(s0)
    return flag;
    80001470:	fec42503          	lw	a0,-20(s0)
}
    80001474:	0005051b          	sext.w	a0,a0
    80001478:	01813403          	ld	s0,24(sp)
    8000147c:	02010113          	addi	sp,sp,32
    80001480:	00008067          	ret

0000000080001484 <_Z10sem_signalP4_sem>:
int sem_signal(sem_t id){
    80001484:	fe010113          	addi	sp,sp,-32
    80001488:	00813c23          	sd	s0,24(sp)
    8000148c:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001490:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    80001494:	02400793          	li	a5,36
    80001498:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000149c:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800014a0:	00050793          	mv	a5,a0
    800014a4:	fef42623          	sw	a5,-20(s0)
    return flag;
    800014a8:	fec42503          	lw	a0,-20(s0)
}
    800014ac:	0005051b          	sext.w	a0,a0
    800014b0:	01813403          	ld	s0,24(sp)
    800014b4:	02010113          	addi	sp,sp,32
    800014b8:	00008067          	ret

00000000800014bc <_Z10time_sleepm>:

int time_sleep(time_t tajmara){
    800014bc:	fe010113          	addi	sp,sp,-32
    800014c0:	00813c23          	sd	s0,24(sp)
    800014c4:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(tajmara));
    800014c8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    800014cc:	03100793          	li	a5,49
    800014d0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014d4:	00000073          	ecall
    int volatile flag;
    __asm__ volatile("mv %0, a0":"=r"(flag));
    800014d8:	00050793          	mv	a5,a0
    800014dc:	fef42623          	sw	a5,-20(s0)
    return flag;
    800014e0:	fec42503          	lw	a0,-20(s0)
}
    800014e4:	0005051b          	sext.w	a0,a0
    800014e8:	01813403          	ld	s0,24(sp)
    800014ec:	02010113          	addi	sp,sp,32
    800014f0:	00008067          	ret

00000000800014f4 <_Z4getcv>:

char getc(){
    800014f4:	fe010113          	addi	sp,sp,-32
    800014f8:	00813c23          	sd	s0,24(sp)
    800014fc:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a0, %0"::"r"(GETC));
    80001500:	04100793          	li	a5,65
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
    80001518:	0ff57513          	andi	a0,a0,255
    8000151c:	01813403          	ld	s0,24(sp)
    80001520:	02010113          	addi	sp,sp,32
    80001524:	00008067          	ret

0000000080001528 <_Z4putcc>:

void putc(char c){
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00813423          	sd	s0,8(sp)
    80001530:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(c));
    80001534:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    80001538:	04200793          	li	a5,66
    8000153c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001540:	00000073          	ecall
}
    80001544:	00813403          	ld	s0,8(sp)
    80001548:	01010113          	addi	sp,sp,16
    8000154c:	00008067          	ret

0000000080001550 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001550:	fe010113          	addi	sp,sp,-32
    80001554:	00113c23          	sd	ra,24(sp)
    80001558:	00813823          	sd	s0,16(sp)
    8000155c:	00913423          	sd	s1,8(sp)
    80001560:	01213023          	sd	s2,0(sp)
    80001564:	02010413          	addi	s0,sp,32
    80001568:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000156c:	00100793          	li	a5,1
    80001570:	02a7f863          	bgeu	a5,a0,800015a0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001574:	00a00793          	li	a5,10
    80001578:	02f577b3          	remu	a5,a0,a5
    8000157c:	02078e63          	beqz	a5,800015b8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001580:	fff48513          	addi	a0,s1,-1
    80001584:	00000097          	auipc	ra,0x0
    80001588:	fcc080e7          	jalr	-52(ra) # 80001550 <_ZL9fibonaccim>
    8000158c:	00050913          	mv	s2,a0
    80001590:	ffe48513          	addi	a0,s1,-2
    80001594:	00000097          	auipc	ra,0x0
    80001598:	fbc080e7          	jalr	-68(ra) # 80001550 <_ZL9fibonaccim>
    8000159c:	00a90533          	add	a0,s2,a0
}
    800015a0:	01813083          	ld	ra,24(sp)
    800015a4:	01013403          	ld	s0,16(sp)
    800015a8:	00813483          	ld	s1,8(sp)
    800015ac:	00013903          	ld	s2,0(sp)
    800015b0:	02010113          	addi	sp,sp,32
    800015b4:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	59c080e7          	jalr	1436(ra) # 80001b54 <_ZN3TCB5yieldEv>
    800015c0:	fc1ff06f          	j	80001580 <_ZL9fibonaccim+0x30>

00000000800015c4 <_Z11workerBodyAv>:
{
    800015c4:	fe010113          	addi	sp,sp,-32
    800015c8:	00113c23          	sd	ra,24(sp)
    800015cc:	00813823          	sd	s0,16(sp)
    800015d0:	00913423          	sd	s1,8(sp)
    800015d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800015d8:	00000493          	li	s1,0
    800015dc:	0300006f          	j	8000160c <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800015e0:	00168693          	addi	a3,a3,1
    800015e4:	000027b7          	lui	a5,0x2
    800015e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015ec:	00d7ee63          	bltu	a5,a3,80001608 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800015f0:	00000713          	li	a4,0
    800015f4:	000077b7          	lui	a5,0x7
    800015f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800015fc:	fee7e2e3          	bltu	a5,a4,800015e0 <_Z11workerBodyAv+0x1c>
    80001600:	00170713          	addi	a4,a4,1
    80001604:	ff1ff06f          	j	800015f4 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001608:	00148493          	addi	s1,s1,1
    8000160c:	00900793          	li	a5,9
    80001610:	0297ec63          	bltu	a5,s1,80001648 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    80001614:	00004517          	auipc	a0,0x4
    80001618:	a0c50513          	addi	a0,a0,-1524 # 80005020 <CONSOLE_STATUS+0x10>
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	2d8080e7          	jalr	728(ra) # 800028f4 <_Z11printStringPKc>
        printInteger(i);
    80001624:	00048513          	mv	a0,s1
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	33c080e7          	jalr	828(ra) # 80002964 <_Z12printIntegerm>
        printString("\n");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	a1050513          	addi	a0,a0,-1520 # 80005040 <CONSOLE_STATUS+0x30>
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	2bc080e7          	jalr	700(ra) # 800028f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001640:	00000693          	li	a3,0
    80001644:	fa1ff06f          	j	800015e4 <_Z11workerBodyAv+0x20>
}
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	00813483          	ld	s1,8(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret

000000008000165c <_Z11workerBodyBv>:
{
    8000165c:	fe010113          	addi	sp,sp,-32
    80001660:	00113c23          	sd	ra,24(sp)
    80001664:	00813823          	sd	s0,16(sp)
    80001668:	00913423          	sd	s1,8(sp)
    8000166c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001670:	00000493          	li	s1,0
    80001674:	0300006f          	j	800016a4 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001678:	00168693          	addi	a3,a3,1
    8000167c:	000027b7          	lui	a5,0x2
    80001680:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001684:	00d7ee63          	bltu	a5,a3,800016a0 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001688:	00000713          	li	a4,0
    8000168c:	000077b7          	lui	a5,0x7
    80001690:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001694:	fee7e2e3          	bltu	a5,a4,80001678 <_Z11workerBodyBv+0x1c>
    80001698:	00170713          	addi	a4,a4,1
    8000169c:	ff1ff06f          	j	8000168c <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    800016a0:	00148493          	addi	s1,s1,1
    800016a4:	00f00793          	li	a5,15
    800016a8:	0297ec63          	bltu	a5,s1,800016e0 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    800016ac:	00004517          	auipc	a0,0x4
    800016b0:	97c50513          	addi	a0,a0,-1668 # 80005028 <CONSOLE_STATUS+0x18>
    800016b4:	00001097          	auipc	ra,0x1
    800016b8:	240080e7          	jalr	576(ra) # 800028f4 <_Z11printStringPKc>
        printInteger(i);
    800016bc:	00048513          	mv	a0,s1
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	2a4080e7          	jalr	676(ra) # 80002964 <_Z12printIntegerm>
        printString("\n");
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	97850513          	addi	a0,a0,-1672 # 80005040 <CONSOLE_STATUS+0x30>
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	224080e7          	jalr	548(ra) # 800028f4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800016d8:	00000693          	li	a3,0
    800016dc:	fa1ff06f          	j	8000167c <_Z11workerBodyBv+0x20>
}
    800016e0:	01813083          	ld	ra,24(sp)
    800016e4:	01013403          	ld	s0,16(sp)
    800016e8:	00813483          	ld	s1,8(sp)
    800016ec:	02010113          	addi	sp,sp,32
    800016f0:	00008067          	ret

00000000800016f4 <_Z11workerBodyCv>:

void workerBodyC()
{
    800016f4:	fe010113          	addi	sp,sp,-32
    800016f8:	00113c23          	sd	ra,24(sp)
    800016fc:	00813823          	sd	s0,16(sp)
    80001700:	00913423          	sd	s1,8(sp)
    80001704:	01213023          	sd	s2,0(sp)
    80001708:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000170c:	00000493          	li	s1,0
    80001710:	0380006f          	j	80001748 <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001714:	00004517          	auipc	a0,0x4
    80001718:	91c50513          	addi	a0,a0,-1764 # 80005030 <CONSOLE_STATUS+0x20>
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	1d8080e7          	jalr	472(ra) # 800028f4 <_Z11printStringPKc>
        printInteger(i);
    80001724:	00048513          	mv	a0,s1
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	23c080e7          	jalr	572(ra) # 80002964 <_Z12printIntegerm>
        printString("\n");
    80001730:	00004517          	auipc	a0,0x4
    80001734:	91050513          	addi	a0,a0,-1776 # 80005040 <CONSOLE_STATUS+0x30>
    80001738:	00001097          	auipc	ra,0x1
    8000173c:	1bc080e7          	jalr	444(ra) # 800028f4 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001740:	0014849b          	addiw	s1,s1,1
    80001744:	0ff4f493          	andi	s1,s1,255
    80001748:	00200793          	li	a5,2
    8000174c:	fc97f4e3          	bgeu	a5,s1,80001714 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001750:	00004517          	auipc	a0,0x4
    80001754:	8e850513          	addi	a0,a0,-1816 # 80005038 <CONSOLE_STATUS+0x28>
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	19c080e7          	jalr	412(ra) # 800028f4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001760:	00700313          	li	t1,7
    TCB::yield();
    80001764:	00000097          	auipc	ra,0x0
    80001768:	3f0080e7          	jalr	1008(ra) # 80001b54 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000176c:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001770:	00004517          	auipc	a0,0x4
    80001774:	8d850513          	addi	a0,a0,-1832 # 80005048 <CONSOLE_STATUS+0x38>
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	17c080e7          	jalr	380(ra) # 800028f4 <_Z11printStringPKc>
    printInteger(t1);
    80001780:	00090513          	mv	a0,s2
    80001784:	00001097          	auipc	ra,0x1
    80001788:	1e0080e7          	jalr	480(ra) # 80002964 <_Z12printIntegerm>
    printString("\n");
    8000178c:	00004517          	auipc	a0,0x4
    80001790:	8b450513          	addi	a0,a0,-1868 # 80005040 <CONSOLE_STATUS+0x30>
    80001794:	00001097          	auipc	ra,0x1
    80001798:	160080e7          	jalr	352(ra) # 800028f4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000179c:	00c00513          	li	a0,12
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	db0080e7          	jalr	-592(ra) # 80001550 <_ZL9fibonaccim>
    800017a8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800017ac:	00004517          	auipc	a0,0x4
    800017b0:	8a450513          	addi	a0,a0,-1884 # 80005050 <CONSOLE_STATUS+0x40>
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	140080e7          	jalr	320(ra) # 800028f4 <_Z11printStringPKc>
    printInteger(result);
    800017bc:	00090513          	mv	a0,s2
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	1a4080e7          	jalr	420(ra) # 80002964 <_Z12printIntegerm>
    printString("\n");
    800017c8:	00004517          	auipc	a0,0x4
    800017cc:	87850513          	addi	a0,a0,-1928 # 80005040 <CONSOLE_STATUS+0x30>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	124080e7          	jalr	292(ra) # 800028f4 <_Z11printStringPKc>
    800017d8:	0380006f          	j	80001810 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800017dc:	00004517          	auipc	a0,0x4
    800017e0:	85450513          	addi	a0,a0,-1964 # 80005030 <CONSOLE_STATUS+0x20>
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	110080e7          	jalr	272(ra) # 800028f4 <_Z11printStringPKc>
        printInteger(i);
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	174080e7          	jalr	372(ra) # 80002964 <_Z12printIntegerm>
        printString("\n");
    800017f8:	00004517          	auipc	a0,0x4
    800017fc:	84850513          	addi	a0,a0,-1976 # 80005040 <CONSOLE_STATUS+0x30>
    80001800:	00001097          	auipc	ra,0x1
    80001804:	0f4080e7          	jalr	244(ra) # 800028f4 <_Z11printStringPKc>
    for (; i < 6; i++)
    80001808:	0014849b          	addiw	s1,s1,1
    8000180c:	0ff4f493          	andi	s1,s1,255
    80001810:	00500793          	li	a5,5
    80001814:	fc97f4e3          	bgeu	a5,s1,800017dc <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    80001818:	01813083          	ld	ra,24(sp)
    8000181c:	01013403          	ld	s0,16(sp)
    80001820:	00813483          	ld	s1,8(sp)
    80001824:	00013903          	ld	s2,0(sp)
    80001828:	02010113          	addi	sp,sp,32
    8000182c:	00008067          	ret

0000000080001830 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001830:	fe010113          	addi	sp,sp,-32
    80001834:	00113c23          	sd	ra,24(sp)
    80001838:	00813823          	sd	s0,16(sp)
    8000183c:	00913423          	sd	s1,8(sp)
    80001840:	01213023          	sd	s2,0(sp)
    80001844:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001848:	00a00493          	li	s1,10
    8000184c:	0380006f          	j	80001884 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001850:	00004517          	auipc	a0,0x4
    80001854:	81050513          	addi	a0,a0,-2032 # 80005060 <CONSOLE_STATUS+0x50>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	09c080e7          	jalr	156(ra) # 800028f4 <_Z11printStringPKc>
        printInteger(i);
    80001860:	00048513          	mv	a0,s1
    80001864:	00001097          	auipc	ra,0x1
    80001868:	100080e7          	jalr	256(ra) # 80002964 <_Z12printIntegerm>
        printString("\n");
    8000186c:	00003517          	auipc	a0,0x3
    80001870:	7d450513          	addi	a0,a0,2004 # 80005040 <CONSOLE_STATUS+0x30>
    80001874:	00001097          	auipc	ra,0x1
    80001878:	080080e7          	jalr	128(ra) # 800028f4 <_Z11printStringPKc>
    for (; i < 13; i++)
    8000187c:	0014849b          	addiw	s1,s1,1
    80001880:	0ff4f493          	andi	s1,s1,255
    80001884:	00c00793          	li	a5,12
    80001888:	fc97f4e3          	bgeu	a5,s1,80001850 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    8000188c:	00003517          	auipc	a0,0x3
    80001890:	7dc50513          	addi	a0,a0,2012 # 80005068 <CONSOLE_STATUS+0x58>
    80001894:	00001097          	auipc	ra,0x1
    80001898:	060080e7          	jalr	96(ra) # 800028f4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000189c:	00500313          	li	t1,5
    TCB::yield();
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	2b4080e7          	jalr	692(ra) # 80001b54 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800018a8:	01000513          	li	a0,16
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	ca4080e7          	jalr	-860(ra) # 80001550 <_ZL9fibonaccim>
    800018b4:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800018b8:	00003517          	auipc	a0,0x3
    800018bc:	7c050513          	addi	a0,a0,1984 # 80005078 <CONSOLE_STATUS+0x68>
    800018c0:	00001097          	auipc	ra,0x1
    800018c4:	034080e7          	jalr	52(ra) # 800028f4 <_Z11printStringPKc>
    printInteger(result);
    800018c8:	00090513          	mv	a0,s2
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	098080e7          	jalr	152(ra) # 80002964 <_Z12printIntegerm>
    printString("\n");
    800018d4:	00003517          	auipc	a0,0x3
    800018d8:	76c50513          	addi	a0,a0,1900 # 80005040 <CONSOLE_STATUS+0x30>
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	018080e7          	jalr	24(ra) # 800028f4 <_Z11printStringPKc>
    800018e4:	0380006f          	j	8000191c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800018e8:	00003517          	auipc	a0,0x3
    800018ec:	77850513          	addi	a0,a0,1912 # 80005060 <CONSOLE_STATUS+0x50>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	004080e7          	jalr	4(ra) # 800028f4 <_Z11printStringPKc>
        printInteger(i);
    800018f8:	00048513          	mv	a0,s1
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	068080e7          	jalr	104(ra) # 80002964 <_Z12printIntegerm>
        printString("\n");
    80001904:	00003517          	auipc	a0,0x3
    80001908:	73c50513          	addi	a0,a0,1852 # 80005040 <CONSOLE_STATUS+0x30>
    8000190c:	00001097          	auipc	ra,0x1
    80001910:	fe8080e7          	jalr	-24(ra) # 800028f4 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001914:	0014849b          	addiw	s1,s1,1
    80001918:	0ff4f493          	andi	s1,s1,255
    8000191c:	00f00793          	li	a5,15
    80001920:	fc97f4e3          	bgeu	a5,s1,800018e8 <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    80001924:	01813083          	ld	ra,24(sp)
    80001928:	01013403          	ld	s0,16(sp)
    8000192c:	00813483          	ld	s1,8(sp)
    80001930:	00013903          	ld	s2,0(sp)
    80001934:	02010113          	addi	sp,sp,32
    80001938:	00008067          	ret

000000008000193c <main>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"
int main(){
    8000193c:	fe010113          	addi	sp,sp,-32
    80001940:	00113c23          	sd	ra,24(sp)
    80001944:	00813823          	sd	s0,16(sp)
    80001948:	00913423          	sd	s1,8(sp)
    8000194c:	01213023          	sd	s2,0(sp)
    80001950:	02010413          	addi	s0,sp,32
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static size_t getLargestFreeBlock();
    static size_t getFree();
    static void initMemory(){
        freeMemHead=(FreeBlock*) HEAP_START_ADDR;
    80001954:	00004797          	auipc	a5,0x4
    80001958:	63c7b783          	ld	a5,1596(a5) # 80005f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000195c:	0007b783          	ld	a5,0(a5)
    80001960:	00004697          	auipc	a3,0x4
    80001964:	6486b683          	ld	a3,1608(a3) # 80005fa8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001968:	00f6b023          	sd	a5,0(a3)
        freeMemHead->next=nullptr;
    8000196c:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    80001970:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    80001974:	00004717          	auipc	a4,0x4
    80001978:	65473703          	ld	a4,1620(a4) # 80005fc8 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000197c:	00073703          	ld	a4,0(a4)
    80001980:	40f70733          	sub	a4,a4,a5
    80001984:	fe870713          	addi	a4,a4,-24
    80001988:	00e7b023          	sd	a4,0(a5)
        totalFreeMem=freeMemHead->size;
    8000198c:	0006b783          	ld	a5,0(a3)
    80001990:	0007b783          	ld	a5,0(a5)
    80001994:	00004717          	auipc	a4,0x4
    80001998:	62473703          	ld	a4,1572(a4) # 80005fb8 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000199c:	00f73023          	sd	a5,0(a4)
        largestFreeBlock=totalFreeMem;
    800019a0:	00004717          	auipc	a4,0x4
    800019a4:	5e873703          	ld	a4,1512(a4) # 80005f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019a8:	00f73023          	sd	a5,0(a4)
    MemoryAllocator::initMemory();
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800019ac:	00004797          	auipc	a5,0x4
    800019b0:	5ec7b783          	ld	a5,1516(a5) # 80005f98 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800019b4:	10579073          	csrw	stvec,a5
    //globalno prihvatamo prekide u supervizorskom modu
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    printInteger(mem_get_largest_free_block());
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	910080e7          	jalr	-1776(ra) # 800012c8 <_Z26mem_get_largest_free_blockv>
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	fa4080e7          	jalr	-92(ra) # 80002964 <_Z12printIntegerm>
    printString("\n");
    800019c8:	00003517          	auipc	a0,0x3
    800019cc:	67850513          	addi	a0,a0,1656 # 80005040 <CONSOLE_STATUS+0x30>
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	f24080e7          	jalr	-220(ra) # 800028f4 <_Z11printStringPKc>
    void* test=mem_alloc(100);
    800019d8:	06400513          	li	a0,100
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	848080e7          	jalr	-1976(ra) # 80001224 <_Z9mem_allocm>
    800019e4:	00050493          	mv	s1,a0
    printInteger(mem_get_largest_free_block());
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	8e0080e7          	jalr	-1824(ra) # 800012c8 <_Z26mem_get_largest_free_blockv>
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	f74080e7          	jalr	-140(ra) # 80002964 <_Z12printIntegerm>
    printString("\n");
    800019f8:	00003517          	auipc	a0,0x3
    800019fc:	64850513          	addi	a0,a0,1608 # 80005040 <CONSOLE_STATUS+0x30>
    80001a00:	00001097          	auipc	ra,0x1
    80001a04:	ef4080e7          	jalr	-268(ra) # 800028f4 <_Z11printStringPKc>
    mem_free(test);
    80001a08:	00048513          	mv	a0,s1
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	854080e7          	jalr	-1964(ra) # 80001260 <_Z8mem_freePv>
    printInteger(mem_get_free_space());
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	884080e7          	jalr	-1916(ra) # 80001298 <_Z18mem_get_free_spacev>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	f48080e7          	jalr	-184(ra) # 80002964 <_Z12printIntegerm>
    printString("\n");
    80001a24:	00003517          	auipc	a0,0x3
    80001a28:	61c50513          	addi	a0,a0,1564 # 80005040 <CONSOLE_STATUS+0x30>
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	ec8080e7          	jalr	-312(ra) # 800028f4 <_Z11printStringPKc>
    void* test2 = mem_alloc(100);
    80001a34:	06400513          	li	a0,100
    80001a38:	fffff097          	auipc	ra,0xfffff
    80001a3c:	7ec080e7          	jalr	2028(ra) # 80001224 <_Z9mem_allocm>
    80001a40:	00050493          	mv	s1,a0
    void* test21 = mem_alloc(200);
    80001a44:	0c800513          	li	a0,200
    80001a48:	fffff097          	auipc	ra,0xfffff
    80001a4c:	7dc080e7          	jalr	2012(ra) # 80001224 <_Z9mem_allocm>
    80001a50:	00050913          	mv	s2,a0
    mem_free(test2);
    80001a54:	00048513          	mv	a0,s1
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	808080e7          	jalr	-2040(ra) # 80001260 <_Z8mem_freePv>
    printInteger(mem_get_free_space());
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	838080e7          	jalr	-1992(ra) # 80001298 <_Z18mem_get_free_spacev>
    80001a68:	00001097          	auipc	ra,0x1
    80001a6c:	efc080e7          	jalr	-260(ra) # 80002964 <_Z12printIntegerm>
    printString("\n Nakon oslobadjanja 100 sa pocetka, dok jos uvek imamo 200 i dodavanje 50\n");
    80001a70:	00003517          	auipc	a0,0x3
    80001a74:	61850513          	addi	a0,a0,1560 # 80005088 <CONSOLE_STATUS+0x78>
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	e7c080e7          	jalr	-388(ra) # 800028f4 <_Z11printStringPKc>
    void* test22 = mem_alloc(50);
    80001a80:	03200513          	li	a0,50
    80001a84:	fffff097          	auipc	ra,0xfffff
    80001a88:	7a0080e7          	jalr	1952(ra) # 80001224 <_Z9mem_allocm>
    80001a8c:	00050493          	mv	s1,a0
    printInteger(mem_get_free_space());
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	808080e7          	jalr	-2040(ra) # 80001298 <_Z18mem_get_free_spacev>
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	ecc080e7          	jalr	-308(ra) # 80002964 <_Z12printIntegerm>
    printString("\n");
    80001aa0:	00003517          	auipc	a0,0x3
    80001aa4:	5a050513          	addi	a0,a0,1440 # 80005040 <CONSOLE_STATUS+0x30>
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	e4c080e7          	jalr	-436(ra) # 800028f4 <_Z11printStringPKc>
    printInteger(mem_get_largest_free_block());
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	818080e7          	jalr	-2024(ra) # 800012c8 <_Z26mem_get_largest_free_blockv>
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	eac080e7          	jalr	-340(ra) # 80002964 <_Z12printIntegerm>
    printString("Oslobadjanje i 200, tkd ostaje samo 50 na pocetku\n");
    80001ac0:	00003517          	auipc	a0,0x3
    80001ac4:	61850513          	addi	a0,a0,1560 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	e2c080e7          	jalr	-468(ra) # 800028f4 <_Z11printStringPKc>
    mem_free(test21);
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	fffff097          	auipc	ra,0xfffff
    80001ad8:	78c080e7          	jalr	1932(ra) # 80001260 <_Z8mem_freePv>

    printInteger(mem_get_largest_free_block());
    80001adc:	fffff097          	auipc	ra,0xfffff
    80001ae0:	7ec080e7          	jalr	2028(ra) # 800012c8 <_Z26mem_get_largest_free_blockv>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	e80080e7          	jalr	-384(ra) # 80002964 <_Z12printIntegerm>
    printString("\n");
    80001aec:	00003517          	auipc	a0,0x3
    80001af0:	55450513          	addi	a0,a0,1364 # 80005040 <CONSOLE_STATUS+0x30>
    80001af4:	00001097          	auipc	ra,0x1
    80001af8:	e00080e7          	jalr	-512(ra) # 800028f4 <_Z11printStringPKc>
    mem_free(test22);
    80001afc:	00048513          	mv	a0,s1
    80001b00:	fffff097          	auipc	ra,0xfffff
    80001b04:	760080e7          	jalr	1888(ra) # 80001260 <_Z8mem_freePv>

    printInteger(mem_get_largest_free_block());
    80001b08:	fffff097          	auipc	ra,0xfffff
    80001b0c:	7c0080e7          	jalr	1984(ra) # 800012c8 <_Z26mem_get_largest_free_blockv>
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	e54080e7          	jalr	-428(ra) # 80002964 <_Z12printIntegerm>
    printString("\n");
    80001b18:	00003517          	auipc	a0,0x3
    80001b1c:	52850513          	addi	a0,a0,1320 # 80005040 <CONSOLE_STATUS+0x30>
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	dd4080e7          	jalr	-556(ra) # 800028f4 <_Z11printStringPKc>
    printString("gotov!\n");
    80001b28:	00003517          	auipc	a0,0x3
    80001b2c:	5e850513          	addi	a0,a0,1512 # 80005110 <CONSOLE_STATUS+0x100>
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	dc4080e7          	jalr	-572(ra) # 800028f4 <_Z11printStringPKc>
    return 0;
    80001b38:	00000513          	li	a0,0
    80001b3c:	01813083          	ld	ra,24(sp)
    80001b40:	01013403          	ld	s0,16(sp)
    80001b44:	00813483          	ld	s1,8(sp)
    80001b48:	00013903          	ld	s2,0(sp)
    80001b4c:	02010113          	addi	sp,sp,32
    80001b50:	00008067          	ret

0000000080001b54 <_ZN3TCB5yieldEv>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

void TCB::yield()
{
    80001b54:	ff010113          	addi	sp,sp,-16
    80001b58:	00813423          	sd	s0,8(sp)
    80001b5c:	01010413          	addi	s0,sp,16
    //sada hocemo da se svi prekidi izvrsavaju preko funkcije koju smo ispisali
    //hocemo da sinhrono udjemo u tu prekidnu funkciju - ulazak u prekidnu rutinu zbog zvrsavajna neke instrukcije - exception
    __asm__ volatile("ecall");
    80001b60:	00000073          	ecall
}
    80001b64:	00813403          	ld	s0,8(sp)
    80001b68:	01010113          	addi	sp,sp,16
    80001b6c:	00008067          	ret

0000000080001b70 <_ZN3TCB13threadWrapperEv>:
        // na threadWrapper funkciju, odakle ce da pokrene njen tok
    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper(){
    80001b70:	fe010113          	addi	sp,sp,-32
    80001b74:	00113c23          	sd	ra,24(sp)
    80001b78:	00813823          	sd	s0,16(sp)
    80001b7c:	00913423          	sd	s1,8(sp)
    80001b80:	02010413          	addi	s0,sp,32
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	618080e7          	jalr	1560(ra) # 8000219c <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001b8c:	00004497          	auipc	s1,0x4
    80001b90:	49448493          	addi	s1,s1,1172 # 80006020 <_ZN3TCB7runningE>
    80001b94:	0004b783          	ld	a5,0(s1)
    80001b98:	0007b783          	ld	a5,0(a5)
    80001b9c:	000780e7          	jalr	a5
    running->setFinished(true);
    80001ba0:	0004b783          	ld	a5,0(s1)
{
public:
    ~TCB(){delete[] stack;}

    bool isFinished(){return finished;}
    void setFinished(bool flag){ TCB::finished = flag;}
    80001ba4:	00100713          	li	a4,1
    80001ba8:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	fa8080e7          	jalr	-88(ra) # 80001b54 <_ZN3TCB5yieldEv>
}
    80001bb4:	01813083          	ld	ra,24(sp)
    80001bb8:	01013403          	ld	s0,16(sp)
    80001bbc:	00813483          	ld	s1,8(sp)
    80001bc0:	02010113          	addi	sp,sp,32
    80001bc4:	00008067          	ret

0000000080001bc8 <_ZN3TCB15createCoroutineEPFvvE>:
{
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00113c23          	sd	ra,24(sp)
    80001bd0:	00813823          	sd	s0,16(sp)
    80001bd4:	00913423          	sd	s1,8(sp)
    80001bd8:	01213023          	sd	s2,0(sp)
    80001bdc:	02010413          	addi	s0,sp,32
    80001be0:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001be4:	03000513          	li	a0,48
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	160080e7          	jalr	352(ra) # 80001d48 <_Znwm>
    80001bf0:	00050493          	mv	s1,a0
                     stack(body!=nullptr? new uint64[STACK_SIZE] : nullptr),timeSlice(timeslice),
                     context({
                         (uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                    }),
                     finished(false)
    80001bf4:	01253023          	sd	s2,0(a0)
                     stack(body!=nullptr? new uint64[STACK_SIZE] : nullptr),timeSlice(timeslice),
    80001bf8:	00090a63          	beqz	s2,80001c0c <_ZN3TCB15createCoroutineEPFvvE+0x44>
    80001bfc:	00002537          	lui	a0,0x2
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	170080e7          	jalr	368(ra) # 80001d70 <_Znam>
    80001c08:	0080006f          	j	80001c10 <_ZN3TCB15createCoroutineEPFvvE+0x48>
    80001c0c:	00000513          	li	a0,0
                     finished(false)
    80001c10:	00a4b423          	sd	a0,8(s1)
    80001c14:	00200793          	li	a5,2
    80001c18:	00f4b823          	sd	a5,16(s1)
    80001c1c:	00000797          	auipc	a5,0x0
    80001c20:	f5478793          	addi	a5,a5,-172 # 80001b70 <_ZN3TCB13threadWrapperEv>
    80001c24:	00f4bc23          	sd	a5,24(s1)
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001c28:	02090463          	beqz	s2,80001c50 <_ZN3TCB15createCoroutineEPFvvE+0x88>
    80001c2c:	000027b7          	lui	a5,0x2
    80001c30:	00f50533          	add	a0,a0,a5
                     finished(false)
    80001c34:	02a4b023          	sd	a0,32(s1)
    80001c38:	02048423          	sb	zero,40(s1)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001c3c:	02090c63          	beqz	s2,80001c74 <_ZN3TCB15createCoroutineEPFvvE+0xac>
    80001c40:	00048513          	mv	a0,s1
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	810080e7          	jalr	-2032(ra) # 80002454 <_ZN9Scheduler3putEP3TCB>
    80001c4c:	0280006f          	j	80001c74 <_ZN3TCB15createCoroutineEPFvvE+0xac>
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001c50:	00000513          	li	a0,0
    80001c54:	fe1ff06f          	j	80001c34 <_ZN3TCB15createCoroutineEPFvvE+0x6c>
    80001c58:	00050913          	mv	s2,a0
    80001c5c:	00048513          	mv	a0,s1
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	138080e7          	jalr	312(ra) # 80001d98 <_ZdlPv>
    80001c68:	00090513          	mv	a0,s2
    80001c6c:	00005097          	auipc	ra,0x5
    80001c70:	4bc080e7          	jalr	1212(ra) # 80007128 <_Unwind_Resume>
}
    80001c74:	00048513          	mv	a0,s1
    80001c78:	01813083          	ld	ra,24(sp)
    80001c7c:	01013403          	ld	s0,16(sp)
    80001c80:	00813483          	ld	s1,8(sp)
    80001c84:	00013903          	ld	s2,0(sp)
    80001c88:	02010113          	addi	sp,sp,32
    80001c8c:	00008067          	ret

0000000080001c90 <_ZN3TCB8dispatchEv>:
{
    80001c90:	fe010113          	addi	sp,sp,-32
    80001c94:	00113c23          	sd	ra,24(sp)
    80001c98:	00813823          	sd	s0,16(sp)
    80001c9c:	00913423          	sd	s1,8(sp)
    80001ca0:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001ca4:	00004497          	auipc	s1,0x4
    80001ca8:	37c4b483          	ld	s1,892(s1) # 80006020 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001cac:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) Scheduler::put(old);
    80001cb0:	02078c63          	beqz	a5,80001ce8 <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	738080e7          	jalr	1848(ra) # 800023ec <_ZN9Scheduler3getEv>
    80001cbc:	00004797          	auipc	a5,0x4
    80001cc0:	36a7b223          	sd	a0,868(a5) # 80006020 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001cc4:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80001cc8:	01848513          	addi	a0,s1,24
    80001ccc:	fffff097          	auipc	ra,0xfffff
    80001cd0:	544080e7          	jalr	1348(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001cd4:	01813083          	ld	ra,24(sp)
    80001cd8:	01013403          	ld	s0,16(sp)
    80001cdc:	00813483          	ld	s1,8(sp)
    80001ce0:	02010113          	addi	sp,sp,32
    80001ce4:	00008067          	ret
    if(!old->isFinished()) Scheduler::put(old);
    80001ce8:	00048513          	mv	a0,s1
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	768080e7          	jalr	1896(ra) # 80002454 <_ZN9Scheduler3putEP3TCB>
    80001cf4:	fc1ff06f          	j	80001cb4 <_ZN3TCB8dispatchEv+0x24>

0000000080001cf8 <_ZN6ThreadD1Ev>:
#define syscall_cpp
#include "./syscall_c.hpp"
void* operator new (size_t);
void operator delete (void*);

class Thread {
    80001cf8:	ff010113          	addi	sp,sp,-16
    80001cfc:	00813423          	sd	s0,8(sp)
    80001d00:	01010413          	addi	s0,sp,16
    80001d04:	00813403          	ld	s0,8(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00113423          	sd	ra,8(sp)
    80001d18:	00813023          	sd	s0,0(sp)
    80001d1c:	01010413          	addi	s0,sp,16
    80001d20:	00004797          	auipc	a5,0x4
    80001d24:	22078793          	addi	a5,a5,544 # 80005f40 <_ZTV9Semaphore+0x10>
    80001d28:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001d2c:	00853503          	ld	a0,8(a0)
    80001d30:	fffff097          	auipc	ra,0xfffff
    80001d34:	6e4080e7          	jalr	1764(ra) # 80001414 <_Z9sem_closeP4_sem>
}
    80001d38:	00813083          	ld	ra,8(sp)
    80001d3c:	00013403          	ld	s0,0(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	00008067          	ret

0000000080001d48 <_Znwm>:
void* operator new (size_t mem){ return mem_alloc(mem);}
    80001d48:	ff010113          	addi	sp,sp,-16
    80001d4c:	00113423          	sd	ra,8(sp)
    80001d50:	00813023          	sd	s0,0(sp)
    80001d54:	01010413          	addi	s0,sp,16
    80001d58:	fffff097          	auipc	ra,0xfffff
    80001d5c:	4cc080e7          	jalr	1228(ra) # 80001224 <_Z9mem_allocm>
    80001d60:	00813083          	ld	ra,8(sp)
    80001d64:	00013403          	ld	s0,0(sp)
    80001d68:	01010113          	addi	sp,sp,16
    80001d6c:	00008067          	ret

0000000080001d70 <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    80001d70:	ff010113          	addi	sp,sp,-16
    80001d74:	00113423          	sd	ra,8(sp)
    80001d78:	00813023          	sd	s0,0(sp)
    80001d7c:	01010413          	addi	s0,sp,16
    80001d80:	fffff097          	auipc	ra,0xfffff
    80001d84:	4a4080e7          	jalr	1188(ra) # 80001224 <_Z9mem_allocm>
    80001d88:	00813083          	ld	ra,8(sp)
    80001d8c:	00013403          	ld	s0,0(sp)
    80001d90:	01010113          	addi	sp,sp,16
    80001d94:	00008067          	ret

0000000080001d98 <_ZdlPv>:
void operator delete(void* addr) { mem_free(addr); }
    80001d98:	ff010113          	addi	sp,sp,-16
    80001d9c:	00113423          	sd	ra,8(sp)
    80001da0:	00813023          	sd	s0,0(sp)
    80001da4:	01010413          	addi	s0,sp,16
    80001da8:	fffff097          	auipc	ra,0xfffff
    80001dac:	4b8080e7          	jalr	1208(ra) # 80001260 <_Z8mem_freePv>
    80001db0:	00813083          	ld	ra,8(sp)
    80001db4:	00013403          	ld	s0,0(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN6ThreadD0Ev>:
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    80001dd0:	00000097          	auipc	ra,0x0
    80001dd4:	fc8080e7          	jalr	-56(ra) # 80001d98 <_ZdlPv>
    80001dd8:	00813083          	ld	ra,8(sp)
    80001ddc:	00013403          	ld	s0,0(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001de8:	fe010113          	addi	sp,sp,-32
    80001dec:	00113c23          	sd	ra,24(sp)
    80001df0:	00813823          	sd	s0,16(sp)
    80001df4:	00913423          	sd	s1,8(sp)
    80001df8:	02010413          	addi	s0,sp,32
    80001dfc:	00050493          	mv	s1,a0
}
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	f10080e7          	jalr	-240(ra) # 80001d10 <_ZN9SemaphoreD1Ev>
    80001e08:	00048513          	mv	a0,s1
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	f8c080e7          	jalr	-116(ra) # 80001d98 <_ZdlPv>
    80001e14:	01813083          	ld	ra,24(sp)
    80001e18:	01013403          	ld	s0,16(sp)
    80001e1c:	00813483          	ld	s1,8(sp)
    80001e20:	02010113          	addi	sp,sp,32
    80001e24:	00008067          	ret

0000000080001e28 <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00113423          	sd	ra,8(sp)
    80001e30:	00813023          	sd	s0,0(sp)
    80001e34:	01010413          	addi	s0,sp,16
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	428080e7          	jalr	1064(ra) # 80001260 <_Z8mem_freePv>
    80001e40:	00813083          	ld	ra,8(sp)
    80001e44:	00013403          	ld	s0,0(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00813423          	sd	s0,8(sp)
    80001e58:	01010413          	addi	s0,sp,16
    80001e5c:	00004797          	auipc	a5,0x4
    80001e60:	0bc78793          	addi	a5,a5,188 # 80005f18 <_ZTV6Thread+0x10>
    80001e64:	00f53023          	sd	a5,0(a0)
    80001e68:	00053423          	sd	zero,8(a0)
    80001e6c:	00b53823          	sd	a1,16(a0)
    80001e70:	00c53c23          	sd	a2,24(a0)
}
    80001e74:	00813403          	ld	s0,8(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00813423          	sd	s0,8(sp)
    80001e88:	01010413          	addi	s0,sp,16
    80001e8c:	00004797          	auipc	a5,0x4
    80001e90:	08c78793          	addi	a5,a5,140 # 80005f18 <_ZTV6Thread+0x10>
    80001e94:	00f53023          	sd	a5,0(a0)
    80001e98:	00053423          	sd	zero,8(a0)
    80001e9c:	00000797          	auipc	a5,0x0
    80001ea0:	25c78793          	addi	a5,a5,604 # 800020f8 <_ZN6Thread10runWrapperEPv>
    80001ea4:	00f53823          	sd	a5,16(a0)
    80001ea8:	00a53c23          	sd	a0,24(a0)
}
    80001eac:	00813403          	ld	s0,8(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN6Thread8dispatchEv>:
{
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00113423          	sd	ra,8(sp)
    80001ec0:	00813023          	sd	s0,0(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001ec8:	fffff097          	auipc	ra,0xfffff
    80001ecc:	4ec080e7          	jalr	1260(ra) # 800013b4 <_Z15thread_dispatchv>
}
    80001ed0:	00813083          	ld	ra,8(sp)
    80001ed4:	00013403          	ld	s0,0(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret

0000000080001ee0 <_ZN6Thread5startEv>:
{
    80001ee0:	ff010113          	addi	sp,sp,-16
    80001ee4:	00113423          	sd	ra,8(sp)
    80001ee8:	00813023          	sd	s0,0(sp)
    80001eec:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,body, arg);
    80001ef0:	01853603          	ld	a2,24(a0)
    80001ef4:	01053583          	ld	a1,16(a0)
    80001ef8:	00850513          	addi	a0,a0,8
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	3fc080e7          	jalr	1020(ra) # 800012f8 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret

0000000080001f14 <_ZN6Thread5sleepEm>:
{
    80001f14:	ff010113          	addi	sp,sp,-16
    80001f18:	00113423          	sd	ra,8(sp)
    80001f1c:	00813023          	sd	s0,0(sp)
    80001f20:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001f24:	fffff097          	auipc	ra,0xfffff
    80001f28:	598080e7          	jalr	1432(ra) # 800014bc <_Z10time_sleepm>
}
    80001f2c:	00813083          	ld	ra,8(sp)
    80001f30:	00013403          	ld	s0,0(sp)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <_ZN14PeriodicThread3runEv>:
}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    80001f3c:	fe010113          	addi	sp,sp,-32
    80001f40:	00113c23          	sd	ra,24(sp)
    80001f44:	00813823          	sd	s0,16(sp)
    80001f48:	00913423          	sd	s1,8(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    80001f50:	00050493          	mv	s1,a0
    while(period){
    80001f54:	0204b783          	ld	a5,32(s1)
    80001f58:	02078263          	beqz	a5,80001f7c <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001f5c:	0004b783          	ld	a5,0(s1)
    80001f60:	0187b783          	ld	a5,24(a5)
    80001f64:	00048513          	mv	a0,s1
    80001f68:	000780e7          	jalr	a5
        sleep(period);
    80001f6c:	0204b503          	ld	a0,32(s1)
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	fa4080e7          	jalr	-92(ra) # 80001f14 <_ZN6Thread5sleepEm>
    while(period){
    80001f78:	fddff06f          	j	80001f54 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001f7c:	01813083          	ld	ra,24(sp)
    80001f80:	01013403          	ld	s0,16(sp)
    80001f84:	00813483          	ld	s1,8(sp)
    80001f88:	02010113          	addi	sp,sp,32
    80001f8c:	00008067          	ret

0000000080001f90 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00113423          	sd	ra,8(sp)
    80001f98:	00813023          	sd	s0,0(sp)
    80001f9c:	01010413          	addi	s0,sp,16
    80001fa0:	00004797          	auipc	a5,0x4
    80001fa4:	fa078793          	addi	a5,a5,-96 # 80005f40 <_ZTV9Semaphore+0x10>
    80001fa8:	00f53023          	sd	a5,0(a0)
    80001fac:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    80001fb0:	00850513          	addi	a0,a0,8
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	424080e7          	jalr	1060(ra) # 800013d8 <_Z8sem_openPP4_semj>
}
    80001fbc:	00813083          	ld	ra,8(sp)
    80001fc0:	00013403          	ld	s0,0(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001fcc:	ff010113          	addi	sp,sp,-16
    80001fd0:	00113423          	sd	ra,8(sp)
    80001fd4:	00813023          	sd	s0,0(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001fdc:	00853503          	ld	a0,8(a0)
    80001fe0:	fffff097          	auipc	ra,0xfffff
    80001fe4:	46c080e7          	jalr	1132(ra) # 8000144c <_Z8sem_waitP4_sem>
}
    80001fe8:	00813083          	ld	ra,8(sp)
    80001fec:	00013403          	ld	s0,0(sp)
    80001ff0:	01010113          	addi	sp,sp,16
    80001ff4:	00008067          	ret

0000000080001ff8 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001ff8:	ff010113          	addi	sp,sp,-16
    80001ffc:	00113423          	sd	ra,8(sp)
    80002000:	00813023          	sd	s0,0(sp)
    80002004:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002008:	00853503          	ld	a0,8(a0)
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	478080e7          	jalr	1144(ra) # 80001484 <_Z10sem_signalP4_sem>
}
    80002014:	00813083          	ld	ra,8(sp)
    80002018:	00013403          	ld	s0,0(sp)
    8000201c:	01010113          	addi	sp,sp,16
    80002020:	00008067          	ret

0000000080002024 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00813823          	sd	s0,16(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	01213023          	sd	s2,0(sp)
    80002038:	02010413          	addi	s0,sp,32
    8000203c:	00050493          	mv	s1,a0
    80002040:	00058913          	mv	s2,a1
    80002044:	00000097          	auipc	ra,0x0
    80002048:	e3c080e7          	jalr	-452(ra) # 80001e80 <_ZN6ThreadC1Ev>
    8000204c:	00004797          	auipc	a5,0x4
    80002050:	f1478793          	addi	a5,a5,-236 # 80005f60 <_ZTV14PeriodicThread+0x10>
    80002054:	00f4b023          	sd	a5,0(s1)
    80002058:	0324b023          	sd	s2,32(s1)
}
    8000205c:	01813083          	ld	ra,24(sp)
    80002060:	01013403          	ld	s0,16(sp)
    80002064:	00813483          	ld	s1,8(sp)
    80002068:	00013903          	ld	s2,0(sp)
    8000206c:	02010113          	addi	sp,sp,32
    80002070:	00008067          	ret

0000000080002074 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00813423          	sd	s0,8(sp)
    8000207c:	01010413          	addi	s0,sp,16
    period=0;
    80002080:	02053023          	sd	zero,32(a0)
}
    80002084:	00813403          	ld	s0,8(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret

0000000080002090 <_ZN7Console4getcEv>:

char Console::getc() {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
    return ::getc();
    800020a0:	fffff097          	auipc	ra,0xfffff
    800020a4:	454080e7          	jalr	1108(ra) # 800014f4 <_Z4getcv>
}
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00113423          	sd	ra,8(sp)
    800020c0:	00813023          	sd	s0,0(sp)
    800020c4:	01010413          	addi	s0,sp,16
    ::putc(c);
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	460080e7          	jalr	1120(ra) # 80001528 <_Z4putcc>
    800020d0:	00813083          	ld	ra,8(sp)
    800020d4:	00013403          	ld	s0,0(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00813423          	sd	s0,8(sp)
    800020e8:	01010413          	addi	s0,sp,16
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <_ZN6Thread10runWrapperEPv>:
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* thread){
        if(thread) ((Thread*) thread)->run();
    800020f8:	02050863          	beqz	a0,80002128 <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread){
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00113423          	sd	ra,8(sp)
    80002104:	00813023          	sd	s0,0(sp)
    80002108:	01010413          	addi	s0,sp,16
        if(thread) ((Thread*) thread)->run();
    8000210c:	00053783          	ld	a5,0(a0)
    80002110:	0107b783          	ld	a5,16(a5)
    80002114:	000780e7          	jalr	a5
    }
    80002118:	00813083          	ld	ra,8(sp)
    8000211c:	00013403          	ld	s0,0(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret
    80002128:	00008067          	ret

000000008000212c <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00813423          	sd	s0,8(sp)
    80002134:	01010413          	addi	s0,sp,16
    80002138:	00813403          	ld	s0,8(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    80002150:	00004797          	auipc	a5,0x4
    80002154:	e1078793          	addi	a5,a5,-496 # 80005f60 <_ZTV14PeriodicThread+0x10>
    80002158:	00f53023          	sd	a5,0(a0)
    8000215c:	00813403          	ld	s0,8(sp)
    80002160:	01010113          	addi	sp,sp,16
    80002164:	00008067          	ret

0000000080002168 <_ZN14PeriodicThreadD0Ev>:
    80002168:	ff010113          	addi	sp,sp,-16
    8000216c:	00113423          	sd	ra,8(sp)
    80002170:	00813023          	sd	s0,0(sp)
    80002174:	01010413          	addi	s0,sp,16
    80002178:	00004797          	auipc	a5,0x4
    8000217c:	de878793          	addi	a5,a5,-536 # 80005f60 <_ZTV14PeriodicThread+0x10>
    80002180:	00f53023          	sd	a5,0(a0)
    80002184:	00000097          	auipc	ra,0x0
    80002188:	c14080e7          	jalr	-1004(ra) # 80001d98 <_ZdlPv>
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/print.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00813423          	sd	s0,8(sp)
    800021a4:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    __asm__ volatile ("csrw sepc, ra");
    800021a8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800021ac:	10200073          	sret
}
    800021b0:	00813403          	ld	s0,8(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    800021bc:	f6010113          	addi	sp,sp,-160
    800021c0:	08113c23          	sd	ra,152(sp)
    800021c4:	08813823          	sd	s0,144(sp)
    800021c8:	08913423          	sd	s1,136(sp)
    800021cc:	0a010413          	addi	s0,sp,160
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800021d0:	142027f3          	csrr	a5,scause
    800021d4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800021d8:	fb843483          	ld	s1,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    800021dc:	ff848713          	addi	a4,s1,-8
    800021e0:	00100793          	li	a5,1
    800021e4:	02e7fc63          	bgeu	a5,a4,8000221c <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver prekid
    800021e8:	fff00793          	li	a5,-1
    800021ec:	03f79793          	slli	a5,a5,0x3f
    800021f0:	00178793          	addi	a5,a5,1
    800021f4:	12f48863          	beq	s1,a5,80002324 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause==0x8000000000000009UL){
    800021f8:	fff00793          	li	a5,-1
    800021fc:	03f79793          	slli	a5,a5,0x3f
    80002200:	00978793          	addi	a5,a5,9
    80002204:	18f48e63          	beq	s1,a5,800023a0 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
        //scause - sta se  desilo
        //sepc- gde se desilo
        // stval - dodatno opise cause

    }
    80002208:	09813083          	ld	ra,152(sp)
    8000220c:	09013403          	ld	s0,144(sp)
    80002210:	08813483          	ld	s1,136(sp)
    80002214:	0a010113          	addi	sp,sp,160
    80002218:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000221c:	141027f3          	csrr	a5,sepc
    80002220:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002224:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    80002228:	00478793          	addi	a5,a5,4
    8000222c:	f6f43423          	sd	a5,-152(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002230:	100027f3          	csrr	a5,sstatus
    80002234:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002238:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    8000223c:	f6f43823          	sd	a5,-144(s0)
        __asm__ volatile("mv %0, a0":"=r"(a0));
    80002240:	00050793          	mv	a5,a0
    80002244:	f6f43c23          	sd	a5,-136(s0)
        switch(a0){
    80002248:	f7843783          	ld	a5,-136(s0)
    8000224c:	04200713          	li	a4,66
    80002250:	0af76863          	bltu	a4,a5,80002300 <_ZN5Riscv20handleSupervisorTrapEv+0x144>
    80002254:	00279793          	slli	a5,a5,0x2
    80002258:	00003717          	auipc	a4,0x3
    8000225c:	ee870713          	addi	a4,a4,-280 # 80005140 <CONSOLE_STATUS+0x130>
    80002260:	00e787b3          	add	a5,a5,a4
    80002264:	0007a783          	lw	a5,0(a5)
    80002268:	00e787b3          	add	a5,a5,a4
    8000226c:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1":"=r"(a1));
    80002270:	00058793          	mv	a5,a1
    80002274:	f8f43023          	sd	a5,-128(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    80002278:	f8043503          	ld	a0,-128(s0)
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	30c080e7          	jalr	780(ra) # 80002588 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    80002284:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80002288:	04a43823          	sd	a0,80(s0)
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    8000228c:	f6843783          	ld	a5,-152(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002290:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80002294:	f7043783          	ld	a5,-144(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002298:	10079073          	csrw	sstatus,a5
}
    8000229c:	f4dff06f          	j	800021e8 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                __asm__ volatile("mv %0, a1":"=r"(addr));
    800022a0:	00058793          	mv	a5,a1
    800022a4:	f8f43423          	sd	a5,-120(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    800022a8:	f8843503          	ld	a0,-120(s0)
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	438080e7          	jalr	1080(ra) # 800026e4 <_ZN15MemoryAllocator8mem_freeEPv>
    800022b4:	f8a43823          	sd	a0,-112(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    800022b8:	f9043783          	ld	a5,-112(s0)
    800022bc:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800022c0:	04a43823          	sd	a0,80(s0)
                break;
    800022c4:	fc9ff06f          	j	8000228c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                space=MemoryAllocator::getFree();
    800022c8:	00000097          	auipc	ra,0x0
    800022cc:	22c080e7          	jalr	556(ra) # 800024f4 <_ZN15MemoryAllocator7getFreeEv>
    800022d0:	f8a43c23          	sd	a0,-104(s0)
                __asm__ volatile("mv a0, %0"::"r"(space));
    800022d4:	f9843783          	ld	a5,-104(s0)
    800022d8:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800022dc:	04a43823          	sd	a0,80(s0)
                break;
    800022e0:	fadff06f          	j	8000228c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                block=MemoryAllocator::getLargestFreeBlock();
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	230080e7          	jalr	560(ra) # 80002514 <_ZN15MemoryAllocator19getLargestFreeBlockEv>
    800022ec:	faa43023          	sd	a0,-96(s0)
                __asm__ volatile("mv a0, %0"::"r"(block));
    800022f0:	fa043783          	ld	a5,-96(s0)
    800022f4:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    800022f8:	04a43823          	sd	a0,80(s0)
                break;
    800022fc:	f91ff06f          	j	8000228c <_ZN5Riscv20handleSupervisorTrapEv+0xd0>
                printString("Unknown error, system is shitting down\n");
    80002300:	00003517          	auipc	a0,0x3
    80002304:	e1850513          	addi	a0,a0,-488 # 80005118 <CONSOLE_STATUS+0x108>
    80002308:	00000097          	auipc	ra,0x0
    8000230c:	5ec080e7          	jalr	1516(ra) # 800028f4 <_Z11printStringPKc>
                __asm__ volatile("sw %[val], 0(%[addr])" : : [val] "r"(val), [addr] "r"(addr));
    80002310:	000057b7          	lui	a5,0x5
    80002314:	5557879b          	addiw	a5,a5,1365
    80002318:	00100737          	lui	a4,0x100
    8000231c:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
                while (1);
    80002320:	0000006f          	j	80002320 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        TCB::timeSliceCounter++;
    80002324:	00004717          	auipc	a4,0x4
    80002328:	c7c73703          	ld	a4,-900(a4) # 80005fa0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000232c:	00073783          	ld	a5,0(a4)
    80002330:	00178793          	addi	a5,a5,1 # 5001 <_entry-0x7fffafff>
    80002334:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80002338:	00004717          	auipc	a4,0x4
    8000233c:	c8873703          	ld	a4,-888(a4) # 80005fc0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002340:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const {return timeSlice;}
    80002344:	01073703          	ld	a4,16(a4)
    80002348:	00e7f863          	bgeu	a5,a4,80002358 <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000234c:	00200793          	li	a5,2
    80002350:	1447b073          	csrc	sip,a5
}
    80002354:	eb5ff06f          	j	80002208 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002358:	141027f3          	csrr	a5,sepc
    8000235c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002360:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80002364:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002368:	100027f3          	csrr	a5,sstatus
    8000236c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002370:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80002374:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter=0;
    80002378:	00004797          	auipc	a5,0x4
    8000237c:	c287b783          	ld	a5,-984(a5) # 80005fa0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002380:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002384:	00000097          	auipc	ra,0x0
    80002388:	90c080e7          	jalr	-1780(ra) # 80001c90 <_ZN3TCB8dispatchEv>
            w_sepc(sepc);
    8000238c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002390:	14179073          	csrw	sepc,a5
            w_sstatus(sstatus);
    80002394:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002398:	10079073          	csrw	sstatus,a5
}
    8000239c:	fb1ff06f          	j	8000234c <_ZN5Riscv20handleSupervisorTrapEv+0x190>
        console_handler();
    800023a0:	00002097          	auipc	ra,0x2
    800023a4:	7b0080e7          	jalr	1968(ra) # 80004b50 <console_handler>
    800023a8:	e61ff06f          	j	80002208 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>

00000000800023ac <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    800023ac:	ff010113          	addi	sp,sp,-16
    800023b0:	00813423          	sd	s0,8(sp)
    800023b4:	01010413          	addi	s0,sp,16
    800023b8:	00100793          	li	a5,1
    800023bc:	00f50863          	beq	a0,a5,800023cc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret
    800023cc:	000107b7          	lui	a5,0x10
    800023d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800023d4:	fef596e3          	bne	a1,a5,800023c0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800023d8:	00004797          	auipc	a5,0x4
    800023dc:	c5878793          	addi	a5,a5,-936 # 80006030 <_ZN9Scheduler19readyCoroutineQueueE>
    800023e0:	0007b023          	sd	zero,0(a5)
    800023e4:	0007b423          	sd	zero,8(a5)
    800023e8:	fd9ff06f          	j	800023c0 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800023ec <_ZN9Scheduler3getEv>:
{
    800023ec:	fe010113          	addi	sp,sp,-32
    800023f0:	00113c23          	sd	ra,24(sp)
    800023f4:	00813823          	sd	s0,16(sp)
    800023f8:	00913423          	sd	s1,8(sp)
    800023fc:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002400:	00004517          	auipc	a0,0x4
    80002404:	c3053503          	ld	a0,-976(a0) # 80006030 <_ZN9Scheduler19readyCoroutineQueueE>
    80002408:	04050263          	beqz	a0,8000244c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000240c:	00853783          	ld	a5,8(a0)
    80002410:	00004717          	auipc	a4,0x4
    80002414:	c2f73023          	sd	a5,-992(a4) # 80006030 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002418:	02078463          	beqz	a5,80002440 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000241c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002420:	00000097          	auipc	ra,0x0
    80002424:	978080e7          	jalr	-1672(ra) # 80001d98 <_ZdlPv>
}
    80002428:	00048513          	mv	a0,s1
    8000242c:	01813083          	ld	ra,24(sp)
    80002430:	01013403          	ld	s0,16(sp)
    80002434:	00813483          	ld	s1,8(sp)
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret
        if (!head) { tail = 0; }
    80002440:	00004797          	auipc	a5,0x4
    80002444:	be07bc23          	sd	zero,-1032(a5) # 80006038 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002448:	fd5ff06f          	j	8000241c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000244c:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002450:	fd9ff06f          	j	80002428 <_ZN9Scheduler3getEv+0x3c>

0000000080002454 <_ZN9Scheduler3putEP3TCB>:
{
    80002454:	fe010113          	addi	sp,sp,-32
    80002458:	00113c23          	sd	ra,24(sp)
    8000245c:	00813823          	sd	s0,16(sp)
    80002460:	00913423          	sd	s1,8(sp)
    80002464:	02010413          	addi	s0,sp,32
    80002468:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000246c:	01000513          	li	a0,16
    80002470:	00000097          	auipc	ra,0x0
    80002474:	8d8080e7          	jalr	-1832(ra) # 80001d48 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002478:	00953023          	sd	s1,0(a0)
    8000247c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002480:	00004797          	auipc	a5,0x4
    80002484:	bb87b783          	ld	a5,-1096(a5) # 80006038 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002488:	02078263          	beqz	a5,800024ac <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    8000248c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002490:	00004797          	auipc	a5,0x4
    80002494:	baa7b423          	sd	a0,-1112(a5) # 80006038 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002498:	01813083          	ld	ra,24(sp)
    8000249c:	01013403          	ld	s0,16(sp)
    800024a0:	00813483          	ld	s1,8(sp)
    800024a4:	02010113          	addi	sp,sp,32
    800024a8:	00008067          	ret
            head = tail = elem;
    800024ac:	00004797          	auipc	a5,0x4
    800024b0:	b8478793          	addi	a5,a5,-1148 # 80006030 <_ZN9Scheduler19readyCoroutineQueueE>
    800024b4:	00a7b423          	sd	a0,8(a5)
    800024b8:	00a7b023          	sd	a0,0(a5)
    800024bc:	fddff06f          	j	80002498 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800024c0 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00113423          	sd	ra,8(sp)
    800024c8:	00813023          	sd	s0,0(sp)
    800024cc:	01010413          	addi	s0,sp,16
    800024d0:	000105b7          	lui	a1,0x10
    800024d4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800024d8:	00100513          	li	a0,1
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	ed0080e7          	jalr	-304(ra) # 800023ac <_Z41__static_initialization_and_destruction_0ii>
    800024e4:	00813083          	ld	ra,8(sp)
    800024e8:	00013403          	ld	s0,0(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret

00000000800024f4 <_ZN15MemoryAllocator7getFreeEv>:
    findNewLargest();
    return 0;
}

size_t MemoryAllocator::getFree()
{
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00813423          	sd	s0,8(sp)
    800024fc:	01010413          	addi	s0,sp,16

    return totalFreeMem;
}
    80002500:	00004517          	auipc	a0,0x4
    80002504:	b4053503          	ld	a0,-1216(a0) # 80006040 <_ZN15MemoryAllocator12totalFreeMemE>
    80002508:	00813403          	ld	s0,8(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret

0000000080002514 <_ZN15MemoryAllocator19getLargestFreeBlockEv>:

size_t MemoryAllocator::getLargestFreeBlock()
{
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00813423          	sd	s0,8(sp)
    8000251c:	01010413          	addi	s0,sp,16
    return largestFreeBlock;
}
    80002520:	00004517          	auipc	a0,0x4
    80002524:	b2853503          	ld	a0,-1240(a0) # 80006048 <_ZN15MemoryAllocator16largestFreeBlockE>
    80002528:	00813403          	ld	s0,8(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret

0000000080002534 <_ZN15MemoryAllocator14findNewLargestEv>:

void MemoryAllocator::findNewLargest()
{
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00813423          	sd	s0,8(sp)
    8000253c:	01010413          	addi	s0,sp,16
    largestFreeBlock=0;
    80002540:	00004797          	auipc	a5,0x4
    80002544:	b0078793          	addi	a5,a5,-1280 # 80006040 <_ZN15MemoryAllocator12totalFreeMemE>
    80002548:	0007b423          	sd	zero,8(a5)
    if(!freeMemHead) return;
    8000254c:	0107b783          	ld	a5,16(a5)
    80002550:	00079e63          	bnez	a5,8000256c <_ZN15MemoryAllocator14findNewLargestEv+0x38>
    while(curr) {
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
        curr=curr->next;
    }

}
    80002554:	00813403          	ld	s0,8(sp)
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00008067          	ret
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002560:	00004697          	auipc	a3,0x4
    80002564:	aee6b423          	sd	a4,-1304(a3) # 80006048 <_ZN15MemoryAllocator16largestFreeBlockE>
        curr=curr->next;
    80002568:	0107b783          	ld	a5,16(a5)
    while(curr) {
    8000256c:	fe0784e3          	beqz	a5,80002554 <_ZN15MemoryAllocator14findNewLargestEv+0x20>
        largestFreeBlock=curr->size>largestFreeBlock?curr->size:largestFreeBlock;
    80002570:	0007b683          	ld	a3,0(a5)
    80002574:	00004717          	auipc	a4,0x4
    80002578:	ad473703          	ld	a4,-1324(a4) # 80006048 <_ZN15MemoryAllocator16largestFreeBlockE>
    8000257c:	fed772e3          	bgeu	a4,a3,80002560 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>
    80002580:	00068713          	mv	a4,a3
    80002584:	fddff06f          	j	80002560 <_ZN15MemoryAllocator14findNewLargestEv+0x2c>

0000000080002588 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80002588:	fe010113          	addi	sp,sp,-32
    8000258c:	00113c23          	sd	ra,24(sp)
    80002590:	00813823          	sd	s0,16(sp)
    80002594:	00913423          	sd	s1,8(sp)
    80002598:	02010413          	addi	s0,sp,32
    size_t size=numOfBlocks*MEM_BLOCK_SIZE;
    8000259c:	00651513          	slli	a0,a0,0x6
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    800025a0:	12050e63          	beqz	a0,800026dc <_ZN15MemoryAllocator9mem_allocEm+0x154>
    800025a4:	00004497          	auipc	s1,0x4
    800025a8:	aac4b483          	ld	s1,-1364(s1) # 80006050 <_ZN15MemoryAllocator11freeMemHeadE>
    800025ac:	0e048e63          	beqz	s1,800026a8 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    800025b0:	00004717          	auipc	a4,0x4
    800025b4:	a9873703          	ld	a4,-1384(a4) # 80006048 <_ZN15MemoryAllocator16largestFreeBlockE>
    800025b8:	00a77863          	bgeu	a4,a0,800025c8 <_ZN15MemoryAllocator9mem_allocEm+0x40>
    800025bc:	00000493          	li	s1,0
    800025c0:	0e80006f          	j	800026a8 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    while(curr && curr->size<size) curr=curr->next;
    800025c4:	0104b483          	ld	s1,16(s1)
    800025c8:	00048663          	beqz	s1,800025d4 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    800025cc:	0004b783          	ld	a5,0(s1)
    800025d0:	fea7eae3          	bltu	a5,a0,800025c4 <_ZN15MemoryAllocator9mem_allocEm+0x3c>
    if(!curr) return nullptr;
    800025d4:	0c048a63          	beqz	s1,800026a8 <_ZN15MemoryAllocator9mem_allocEm+0x120>
    if(curr->size> size+sizeof(FreeBlock)){
    800025d8:	0004b683          	ld	a3,0(s1)
    800025dc:	01850793          	addi	a5,a0,24
    800025e0:	08d7f063          	bgeu	a5,a3,80002660 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        totalFreeMem=totalFreeMem-size-sizeof(FreeBlock);
    800025e4:	00004617          	auipc	a2,0x4
    800025e8:	a5c60613          	addi	a2,a2,-1444 # 80006040 <_ZN15MemoryAllocator12totalFreeMemE>
    800025ec:	00063683          	ld	a3,0(a2)
    800025f0:	40a686b3          	sub	a3,a3,a0
    800025f4:	fe868693          	addi	a3,a3,-24
    800025f8:	00d63023          	sd	a3,0(a2)
        if(largestFreeBlock==curr->size) find=true;
    800025fc:	0004b683          	ld	a3,0(s1)
    80002600:	04d70663          	beq	a4,a3,8000264c <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        bool find=false;
    80002604:	00000613          	li	a2,0
        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    80002608:	00f487b3          	add	a5,s1,a5
        newBlock->size=curr->size-size-sizeof(FreeBlock);
    8000260c:	40a686b3          	sub	a3,a3,a0
    80002610:	fe868693          	addi	a3,a3,-24
    80002614:	00d7b023          	sd	a3,0(a5)
        newBlock->prev=curr->prev;
    80002618:	0084b703          	ld	a4,8(s1)
    8000261c:	00e7b423          	sd	a4,8(a5)
        curr->size=size;
    80002620:	00a4b023          	sd	a0,0(s1)
        if(curr->prev){
    80002624:	02070863          	beqz	a4,80002654 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
            curr->prev->next=newBlock;
    80002628:	00f73823          	sd	a5,16(a4)
        newBlock->next=curr->next;
    8000262c:	0104b703          	ld	a4,16(s1)
    80002630:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=newBlock;
    80002634:	00070463          	beqz	a4,8000263c <_ZN15MemoryAllocator9mem_allocEm+0xb4>
    80002638:	00f73423          	sd	a5,8(a4)
        if(find) findNewLargest();
    8000263c:	06060063          	beqz	a2,8000269c <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80002640:	00000097          	auipc	ra,0x0
    80002644:	ef4080e7          	jalr	-268(ra) # 80002534 <_ZN15MemoryAllocator14findNewLargestEv>
    80002648:	0540006f          	j	8000269c <_ZN15MemoryAllocator9mem_allocEm+0x114>
        if(largestFreeBlock==curr->size) find=true;
    8000264c:	00100613          	li	a2,1
    80002650:	fb9ff06f          	j	80002608 <_ZN15MemoryAllocator9mem_allocEm+0x80>
        else freeMemHead = newBlock;
    80002654:	00004717          	auipc	a4,0x4
    80002658:	9ef73e23          	sd	a5,-1540(a4) # 80006050 <_ZN15MemoryAllocator11freeMemHeadE>
    8000265c:	fd1ff06f          	j	8000262c <_ZN15MemoryAllocator9mem_allocEm+0xa4>
        totalFreeMem=totalFreeMem-curr->size;
    80002660:	00004617          	auipc	a2,0x4
    80002664:	9e060613          	addi	a2,a2,-1568 # 80006040 <_ZN15MemoryAllocator12totalFreeMemE>
    80002668:	00063783          	ld	a5,0(a2)
    8000266c:	40d786b3          	sub	a3,a5,a3
    80002670:	00d63023          	sd	a3,0(a2)
        if(curr->prev) curr->prev->next=curr->next;
    80002674:	0084b783          	ld	a5,8(s1)
    80002678:	04078463          	beqz	a5,800026c0 <_ZN15MemoryAllocator9mem_allocEm+0x138>
    8000267c:	0104b683          	ld	a3,16(s1)
    80002680:	00d7b823          	sd	a3,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80002684:	0104b783          	ld	a5,16(s1)
    80002688:	00078663          	beqz	a5,80002694 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    8000268c:	0084b683          	ld	a3,8(s1)
    80002690:	00d7b423          	sd	a3,8(a5)
        if(curr->size==largestFreeBlock) findNewLargest();
    80002694:	0004b783          	ld	a5,0(s1)
    80002698:	02f70c63          	beq	a4,a5,800026d0 <_ZN15MemoryAllocator9mem_allocEm+0x148>
    curr->next=nullptr;
    8000269c:	0004b823          	sd	zero,16(s1)
    curr->prev=nullptr;
    800026a0:	0004b423          	sd	zero,8(s1)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    800026a4:	01848493          	addi	s1,s1,24
}
    800026a8:	00048513          	mv	a0,s1
    800026ac:	01813083          	ld	ra,24(sp)
    800026b0:	01013403          	ld	s0,16(sp)
    800026b4:	00813483          	ld	s1,8(sp)
    800026b8:	02010113          	addi	sp,sp,32
    800026bc:	00008067          	ret
        else freeMemHead=curr->next;
    800026c0:	0104b783          	ld	a5,16(s1)
    800026c4:	00004697          	auipc	a3,0x4
    800026c8:	98f6b623          	sd	a5,-1652(a3) # 80006050 <_ZN15MemoryAllocator11freeMemHeadE>
    800026cc:	fb9ff06f          	j	80002684 <_ZN15MemoryAllocator9mem_allocEm+0xfc>
        if(curr->size==largestFreeBlock) findNewLargest();
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	e64080e7          	jalr	-412(ra) # 80002534 <_ZN15MemoryAllocator14findNewLargestEv>
    800026d8:	fc5ff06f          	j	8000269c <_ZN15MemoryAllocator9mem_allocEm+0x114>
    if(size <=0 || !freeMemHead || size>largestFreeBlock) return nullptr;
    800026dc:	00000493          	li	s1,0
    800026e0:	fc9ff06f          	j	800026a8 <_ZN15MemoryAllocator9mem_allocEm+0x120>

00000000800026e4 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!addr) return -1;
    800026e4:	1e050c63          	beqz	a0,800028dc <_ZN15MemoryAllocator8mem_freeEPv+0x1f8>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800026e8:	fe850693          	addi	a3,a0,-24
    800026ec:	00004797          	auipc	a5,0x4
    800026f0:	8a47b783          	ld	a5,-1884(a5) # 80005f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026f4:	0007b783          	ld	a5,0(a5)
    800026f8:	1ef6e663          	bltu	a3,a5,800028e4 <_ZN15MemoryAllocator8mem_freeEPv+0x200>
    800026fc:	00004797          	auipc	a5,0x4
    80002700:	8cc7b783          	ld	a5,-1844(a5) # 80005fc8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002704:	0007b783          	ld	a5,0(a5)
    80002708:	1ea7e263          	bltu	a5,a0,800028ec <_ZN15MemoryAllocator8mem_freeEPv+0x208>
    totalFreeMem+=blk->size;
    8000270c:	fe853603          	ld	a2,-24(a0)
    80002710:	00004797          	auipc	a5,0x4
    80002714:	93078793          	addi	a5,a5,-1744 # 80006040 <_ZN15MemoryAllocator12totalFreeMemE>
    80002718:	0007b703          	ld	a4,0(a5)
    8000271c:	00c70733          	add	a4,a4,a2
    80002720:	00e7b023          	sd	a4,0(a5)
    blk->next=nullptr;
    80002724:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    80002728:	fe053823          	sd	zero,-16(a0)
    if(!freeMemHead){
    8000272c:	0107b603          	ld	a2,16(a5)
    80002730:	08060463          	beqz	a2,800027b8 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
{
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    if((char*) blk < (char*) freeMemHead){
    80002744:	0cc6e263          	bltu	a3,a2,80002808 <_ZN15MemoryAllocator8mem_freeEPv+0x124>
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    80002748:	00060793          	mv	a5,a2
    8000274c:	00078713          	mv	a4,a5
    80002750:	0107b783          	ld	a5,16(a5)
    80002754:	00078463          	beqz	a5,8000275c <_ZN15MemoryAllocator8mem_freeEPv+0x78>
    80002758:	fed7eae3          	bltu	a5,a3,8000274c <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    8000275c:	0a070863          	beqz	a4,8000280c <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    80002760:	00073803          	ld	a6,0(a4)
    80002764:	01880593          	addi	a1,a6,24
    80002768:	00b705b3          	add	a1,a4,a1
    8000276c:	0ab69063          	bne	a3,a1,8000280c <_ZN15MemoryAllocator8mem_freeEPv+0x128>
        curr->size+=sizeof(FreeBlock)+blk->size;
    80002770:	fe853683          	ld	a3,-24(a0)
    80002774:	00d806b3          	add	a3,a6,a3
    80002778:	01868693          	addi	a3,a3,24
    8000277c:	00d73023          	sd	a3,0(a4)
        totalFreeMem+=sizeof(FreeBlock);
    80002780:	00004617          	auipc	a2,0x4
    80002784:	8c060613          	addi	a2,a2,-1856 # 80006040 <_ZN15MemoryAllocator12totalFreeMemE>
    80002788:	00063683          	ld	a3,0(a2)
    8000278c:	01868693          	addi	a3,a3,24
    80002790:	00d63023          	sd	a3,0(a2)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80002794:	00078a63          	beqz	a5,800027a8 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80002798:	00073603          	ld	a2,0(a4)
    8000279c:	01860693          	addi	a3,a2,24
    800027a0:	00d706b3          	add	a3,a4,a3
    800027a4:	02d78663          	beq	a5,a3,800027d0 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
        findNewLargest();
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	d8c080e7          	jalr	-628(ra) # 80002534 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    800027b0:	00000513          	li	a0,0
    800027b4:	09c0006f          	j	80002850 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        freeMemHead=blk;
    800027b8:	00d7b823          	sd	a3,16(a5)
        totalFreeMem=blk->size;
    800027bc:	fe853703          	ld	a4,-24(a0)
    800027c0:	00e7b023          	sd	a4,0(a5)
        largestFreeBlock=totalFreeMem;
    800027c4:	00e7b423          	sd	a4,8(a5)
        return 0;
    800027c8:	00000513          	li	a0,0
    800027cc:	00008067          	ret
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    800027d0:	0007b683          	ld	a3,0(a5)
    800027d4:	00d606b3          	add	a3,a2,a3
    800027d8:	01868693          	addi	a3,a3,24
    800027dc:	00d73023          	sd	a3,0(a4)
            totalFreeMem+=sizeof(FreeBlock);
    800027e0:	00004617          	auipc	a2,0x4
    800027e4:	86060613          	addi	a2,a2,-1952 # 80006040 <_ZN15MemoryAllocator12totalFreeMemE>
    800027e8:	00063683          	ld	a3,0(a2)
    800027ec:	01868693          	addi	a3,a3,24
    800027f0:	00d63023          	sd	a3,0(a2)
            curr->next=curr->next->next;
    800027f4:	0107b783          	ld	a5,16(a5)
    800027f8:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    800027fc:	fa0786e3          	beqz	a5,800027a8 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
    80002800:	00e7b423          	sd	a4,8(a5)
    80002804:	fa5ff06f          	j	800027a8 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        curr=nullptr;
    80002808:	00000713          	li	a4,0
    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    8000280c:	00070463          	beqz	a4,80002814 <_ZN15MemoryAllocator8mem_freeEPv+0x130>
    80002810:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    80002814:	00060863          	beqz	a2,80002824 <_ZN15MemoryAllocator8mem_freeEPv+0x140>
    80002818:	fe853783          	ld	a5,-24(a0)
    8000281c:	00f507b3          	add	a5,a0,a5
    80002820:	04c78063          	beq	a5,a2,80002860 <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    blk->prev=curr;
    80002824:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    80002828:	08070e63          	beqz	a4,800028c4 <_ZN15MemoryAllocator8mem_freeEPv+0x1e0>
    8000282c:	01073783          	ld	a5,16(a4)
    80002830:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    80002834:	00078463          	beqz	a5,8000283c <_ZN15MemoryAllocator8mem_freeEPv+0x158>
    80002838:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    8000283c:	08070a63          	beqz	a4,800028d0 <_ZN15MemoryAllocator8mem_freeEPv+0x1ec>
    80002840:	00d73823          	sd	a3,16(a4)
    findNewLargest();
    80002844:	00000097          	auipc	ra,0x0
    80002848:	cf0080e7          	jalr	-784(ra) # 80002534 <_ZN15MemoryAllocator14findNewLargestEv>
    return 0;
    8000284c:	00000513          	li	a0,0
}
    80002850:	00813083          	ld	ra,8(sp)
    80002854:	00013403          	ld	s0,0(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret
        totalFreeMem+=sizeof(FreeBlock);
    80002860:	00003717          	auipc	a4,0x3
    80002864:	7e070713          	addi	a4,a4,2016 # 80006040 <_ZN15MemoryAllocator12totalFreeMemE>
    80002868:	00073783          	ld	a5,0(a4)
    8000286c:	01878793          	addi	a5,a5,24
    80002870:	00f73023          	sd	a5,0(a4)
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    80002874:	00063783          	ld	a5,0(a2)
    80002878:	fe853703          	ld	a4,-24(a0)
    8000287c:	00e787b3          	add	a5,a5,a4
    80002880:	01878793          	addi	a5,a5,24
    80002884:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    80002888:	01063783          	ld	a5,16(a2)
    8000288c:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    80002890:	00078463          	beqz	a5,80002898 <_ZN15MemoryAllocator8mem_freeEPv+0x1b4>
    80002894:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    80002898:	00863783          	ld	a5,8(a2)
    8000289c:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    800028a0:	00078c63          	beqz	a5,800028b8 <_ZN15MemoryAllocator8mem_freeEPv+0x1d4>
    800028a4:	00d7b823          	sd	a3,16(a5)
        findNewLargest();
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	c8c080e7          	jalr	-884(ra) # 80002534 <_ZN15MemoryAllocator14findNewLargestEv>
        return 0;
    800028b0:	00000513          	li	a0,0
    800028b4:	f9dff06f          	j	80002850 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
        else freeMemHead=blk;
    800028b8:	00003797          	auipc	a5,0x3
    800028bc:	78d7bc23          	sd	a3,1944(a5) # 80006050 <_ZN15MemoryAllocator11freeMemHeadE>
    800028c0:	fe9ff06f          	j	800028a8 <_ZN15MemoryAllocator8mem_freeEPv+0x1c4>
    blk->next=curr?curr->next:freeMemHead;
    800028c4:	00003797          	auipc	a5,0x3
    800028c8:	78c7b783          	ld	a5,1932(a5) # 80006050 <_ZN15MemoryAllocator11freeMemHeadE>
    800028cc:	f65ff06f          	j	80002830 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    else freeMemHead=blk;
    800028d0:	00003797          	auipc	a5,0x3
    800028d4:	78d7b023          	sd	a3,1920(a5) # 80006050 <_ZN15MemoryAllocator11freeMemHeadE>
    800028d8:	f6dff06f          	j	80002844 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    if(!addr) return -1;
    800028dc:	fff00513          	li	a0,-1
    800028e0:	00008067          	ret
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800028e4:	ffe00513          	li	a0,-2
    800028e8:	00008067          	ret
    800028ec:	ffe00513          	li	a0,-2
}
    800028f0:	00008067          	ret

00000000800028f4 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"
void printString(char const *string)
{
    800028f4:	fd010113          	addi	sp,sp,-48
    800028f8:	02113423          	sd	ra,40(sp)
    800028fc:	02813023          	sd	s0,32(sp)
    80002900:	00913c23          	sd	s1,24(sp)
    80002904:	01213823          	sd	s2,16(sp)
    80002908:	03010413          	addi	s0,sp,48
    8000290c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002910:	100027f3          	csrr	a5,sstatus
    80002914:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002918:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000291c:	00200793          	li	a5,2
    80002920:	1007b073          	csrc	sstatus,a5
    //nije bas elegantno zabraniti prekide ovako, jer ako su dugi ispisi moramo cekati, ali eto
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0')
    80002924:	0004c503          	lbu	a0,0(s1)
    80002928:	00050a63          	beqz	a0,8000293c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    8000292c:	00002097          	auipc	ra,0x2
    80002930:	1b0080e7          	jalr	432(ra) # 80004adc <__putc>
        string++;
    80002934:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002938:	fedff06f          	j	80002924 <_Z11printStringPKc+0x30>
    }
    //moramo proveriti da li su ranije prekidi bili dozvoljeni, ako nisu ne zelimo sad da ih dozvolimo
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    8000293c:	0009091b          	sext.w	s2,s2
    80002940:	00297913          	andi	s2,s2,2
    80002944:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002948:	10092073          	csrs	sstatus,s2
}
    8000294c:	02813083          	ld	ra,40(sp)
    80002950:	02013403          	ld	s0,32(sp)
    80002954:	01813483          	ld	s1,24(sp)
    80002958:	01013903          	ld	s2,16(sp)
    8000295c:	03010113          	addi	sp,sp,48
    80002960:	00008067          	ret

0000000080002964 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002964:	fc010113          	addi	sp,sp,-64
    80002968:	02113c23          	sd	ra,56(sp)
    8000296c:	02813823          	sd	s0,48(sp)
    80002970:	02913423          	sd	s1,40(sp)
    80002974:	03213023          	sd	s2,32(sp)
    80002978:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000297c:	100027f3          	csrr	a5,sstatus
    80002980:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002984:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002988:	00200793          	li	a5,2
    8000298c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002990:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002994:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002998:	00a00613          	li	a2,10
    8000299c:	02c5773b          	remuw	a4,a0,a2
    800029a0:	02071693          	slli	a3,a4,0x20
    800029a4:	0206d693          	srli	a3,a3,0x20
    800029a8:	00003717          	auipc	a4,0x3
    800029ac:	8a870713          	addi	a4,a4,-1880 # 80005250 <_ZZ12printIntegermE6digits>
    800029b0:	00d70733          	add	a4,a4,a3
    800029b4:	00074703          	lbu	a4,0(a4)
    800029b8:	fe040693          	addi	a3,s0,-32
    800029bc:	009687b3          	add	a5,a3,s1
    800029c0:	0014849b          	addiw	s1,s1,1
    800029c4:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800029c8:	0005071b          	sext.w	a4,a0
    800029cc:	02c5553b          	divuw	a0,a0,a2
    800029d0:	00900793          	li	a5,9
    800029d4:	fce7e2e3          	bltu	a5,a4,80002998 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    800029d8:	fff4849b          	addiw	s1,s1,-1
    800029dc:	0004ce63          	bltz	s1,800029f8 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    800029e0:	fe040793          	addi	a5,s0,-32
    800029e4:	009787b3          	add	a5,a5,s1
    800029e8:	ff07c503          	lbu	a0,-16(a5)
    800029ec:	00002097          	auipc	ra,0x2
    800029f0:	0f0080e7          	jalr	240(ra) # 80004adc <__putc>
    800029f4:	fe5ff06f          	j	800029d8 <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    800029f8:	0009091b          	sext.w	s2,s2
    800029fc:	00297913          	andi	s2,s2,2
    80002a00:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002a04:	10092073          	csrs	sstatus,s2
    80002a08:	03813083          	ld	ra,56(sp)
    80002a0c:	03013403          	ld	s0,48(sp)
    80002a10:	02813483          	ld	s1,40(sp)
    80002a14:	02013903          	ld	s2,32(sp)
    80002a18:	04010113          	addi	sp,sp,64
    80002a1c:	00008067          	ret

0000000080002a20 <start>:
    80002a20:	ff010113          	addi	sp,sp,-16
    80002a24:	00813423          	sd	s0,8(sp)
    80002a28:	01010413          	addi	s0,sp,16
    80002a2c:	300027f3          	csrr	a5,mstatus
    80002a30:	ffffe737          	lui	a4,0xffffe
    80002a34:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff753f>
    80002a38:	00e7f7b3          	and	a5,a5,a4
    80002a3c:	00001737          	lui	a4,0x1
    80002a40:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002a44:	00e7e7b3          	or	a5,a5,a4
    80002a48:	30079073          	csrw	mstatus,a5
    80002a4c:	00000797          	auipc	a5,0x0
    80002a50:	16078793          	addi	a5,a5,352 # 80002bac <system_main>
    80002a54:	34179073          	csrw	mepc,a5
    80002a58:	00000793          	li	a5,0
    80002a5c:	18079073          	csrw	satp,a5
    80002a60:	000107b7          	lui	a5,0x10
    80002a64:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a68:	30279073          	csrw	medeleg,a5
    80002a6c:	30379073          	csrw	mideleg,a5
    80002a70:	104027f3          	csrr	a5,sie
    80002a74:	2227e793          	ori	a5,a5,546
    80002a78:	10479073          	csrw	sie,a5
    80002a7c:	fff00793          	li	a5,-1
    80002a80:	00a7d793          	srli	a5,a5,0xa
    80002a84:	3b079073          	csrw	pmpaddr0,a5
    80002a88:	00f00793          	li	a5,15
    80002a8c:	3a079073          	csrw	pmpcfg0,a5
    80002a90:	f14027f3          	csrr	a5,mhartid
    80002a94:	0200c737          	lui	a4,0x200c
    80002a98:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002a9c:	0007869b          	sext.w	a3,a5
    80002aa0:	00269713          	slli	a4,a3,0x2
    80002aa4:	000f4637          	lui	a2,0xf4
    80002aa8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002aac:	00d70733          	add	a4,a4,a3
    80002ab0:	0037979b          	slliw	a5,a5,0x3
    80002ab4:	020046b7          	lui	a3,0x2004
    80002ab8:	00d787b3          	add	a5,a5,a3
    80002abc:	00c585b3          	add	a1,a1,a2
    80002ac0:	00371693          	slli	a3,a4,0x3
    80002ac4:	00003717          	auipc	a4,0x3
    80002ac8:	59c70713          	addi	a4,a4,1436 # 80006060 <timer_scratch>
    80002acc:	00b7b023          	sd	a1,0(a5)
    80002ad0:	00d70733          	add	a4,a4,a3
    80002ad4:	00f73c23          	sd	a5,24(a4)
    80002ad8:	02c73023          	sd	a2,32(a4)
    80002adc:	34071073          	csrw	mscratch,a4
    80002ae0:	00000797          	auipc	a5,0x0
    80002ae4:	6e078793          	addi	a5,a5,1760 # 800031c0 <timervec>
    80002ae8:	30579073          	csrw	mtvec,a5
    80002aec:	300027f3          	csrr	a5,mstatus
    80002af0:	0087e793          	ori	a5,a5,8
    80002af4:	30079073          	csrw	mstatus,a5
    80002af8:	304027f3          	csrr	a5,mie
    80002afc:	0807e793          	ori	a5,a5,128
    80002b00:	30479073          	csrw	mie,a5
    80002b04:	f14027f3          	csrr	a5,mhartid
    80002b08:	0007879b          	sext.w	a5,a5
    80002b0c:	00078213          	mv	tp,a5
    80002b10:	30200073          	mret
    80002b14:	00813403          	ld	s0,8(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <timerinit>:
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00813423          	sd	s0,8(sp)
    80002b28:	01010413          	addi	s0,sp,16
    80002b2c:	f14027f3          	csrr	a5,mhartid
    80002b30:	0200c737          	lui	a4,0x200c
    80002b34:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002b38:	0007869b          	sext.w	a3,a5
    80002b3c:	00269713          	slli	a4,a3,0x2
    80002b40:	000f4637          	lui	a2,0xf4
    80002b44:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002b48:	00d70733          	add	a4,a4,a3
    80002b4c:	0037979b          	slliw	a5,a5,0x3
    80002b50:	020046b7          	lui	a3,0x2004
    80002b54:	00d787b3          	add	a5,a5,a3
    80002b58:	00c585b3          	add	a1,a1,a2
    80002b5c:	00371693          	slli	a3,a4,0x3
    80002b60:	00003717          	auipc	a4,0x3
    80002b64:	50070713          	addi	a4,a4,1280 # 80006060 <timer_scratch>
    80002b68:	00b7b023          	sd	a1,0(a5)
    80002b6c:	00d70733          	add	a4,a4,a3
    80002b70:	00f73c23          	sd	a5,24(a4)
    80002b74:	02c73023          	sd	a2,32(a4)
    80002b78:	34071073          	csrw	mscratch,a4
    80002b7c:	00000797          	auipc	a5,0x0
    80002b80:	64478793          	addi	a5,a5,1604 # 800031c0 <timervec>
    80002b84:	30579073          	csrw	mtvec,a5
    80002b88:	300027f3          	csrr	a5,mstatus
    80002b8c:	0087e793          	ori	a5,a5,8
    80002b90:	30079073          	csrw	mstatus,a5
    80002b94:	304027f3          	csrr	a5,mie
    80002b98:	0807e793          	ori	a5,a5,128
    80002b9c:	30479073          	csrw	mie,a5
    80002ba0:	00813403          	ld	s0,8(sp)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret

0000000080002bac <system_main>:
    80002bac:	fe010113          	addi	sp,sp,-32
    80002bb0:	00813823          	sd	s0,16(sp)
    80002bb4:	00913423          	sd	s1,8(sp)
    80002bb8:	00113c23          	sd	ra,24(sp)
    80002bbc:	02010413          	addi	s0,sp,32
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	0c4080e7          	jalr	196(ra) # 80002c84 <cpuid>
    80002bc8:	00003497          	auipc	s1,0x3
    80002bcc:	42848493          	addi	s1,s1,1064 # 80005ff0 <started>
    80002bd0:	02050263          	beqz	a0,80002bf4 <system_main+0x48>
    80002bd4:	0004a783          	lw	a5,0(s1)
    80002bd8:	0007879b          	sext.w	a5,a5
    80002bdc:	fe078ce3          	beqz	a5,80002bd4 <system_main+0x28>
    80002be0:	0ff0000f          	fence
    80002be4:	00002517          	auipc	a0,0x2
    80002be8:	6ac50513          	addi	a0,a0,1708 # 80005290 <_ZZ12printIntegermE6digits+0x40>
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	a70080e7          	jalr	-1424(ra) # 8000365c <panic>
    80002bf4:	00001097          	auipc	ra,0x1
    80002bf8:	9c4080e7          	jalr	-1596(ra) # 800035b8 <consoleinit>
    80002bfc:	00001097          	auipc	ra,0x1
    80002c00:	150080e7          	jalr	336(ra) # 80003d4c <printfinit>
    80002c04:	00002517          	auipc	a0,0x2
    80002c08:	43c50513          	addi	a0,a0,1084 # 80005040 <CONSOLE_STATUS+0x30>
    80002c0c:	00001097          	auipc	ra,0x1
    80002c10:	aac080e7          	jalr	-1364(ra) # 800036b8 <__printf>
    80002c14:	00002517          	auipc	a0,0x2
    80002c18:	64c50513          	addi	a0,a0,1612 # 80005260 <_ZZ12printIntegermE6digits+0x10>
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	a9c080e7          	jalr	-1380(ra) # 800036b8 <__printf>
    80002c24:	00002517          	auipc	a0,0x2
    80002c28:	41c50513          	addi	a0,a0,1052 # 80005040 <CONSOLE_STATUS+0x30>
    80002c2c:	00001097          	auipc	ra,0x1
    80002c30:	a8c080e7          	jalr	-1396(ra) # 800036b8 <__printf>
    80002c34:	00001097          	auipc	ra,0x1
    80002c38:	4a4080e7          	jalr	1188(ra) # 800040d8 <kinit>
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	148080e7          	jalr	328(ra) # 80002d84 <trapinit>
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	16c080e7          	jalr	364(ra) # 80002db0 <trapinithart>
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	5b4080e7          	jalr	1460(ra) # 80003200 <plicinit>
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	5d4080e7          	jalr	1492(ra) # 80003228 <plicinithart>
    80002c5c:	00000097          	auipc	ra,0x0
    80002c60:	078080e7          	jalr	120(ra) # 80002cd4 <userinit>
    80002c64:	0ff0000f          	fence
    80002c68:	00100793          	li	a5,1
    80002c6c:	00002517          	auipc	a0,0x2
    80002c70:	60c50513          	addi	a0,a0,1548 # 80005278 <_ZZ12printIntegermE6digits+0x28>
    80002c74:	00f4a023          	sw	a5,0(s1)
    80002c78:	00001097          	auipc	ra,0x1
    80002c7c:	a40080e7          	jalr	-1472(ra) # 800036b8 <__printf>
    80002c80:	0000006f          	j	80002c80 <system_main+0xd4>

0000000080002c84 <cpuid>:
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00813423          	sd	s0,8(sp)
    80002c8c:	01010413          	addi	s0,sp,16
    80002c90:	00020513          	mv	a0,tp
    80002c94:	00813403          	ld	s0,8(sp)
    80002c98:	0005051b          	sext.w	a0,a0
    80002c9c:	01010113          	addi	sp,sp,16
    80002ca0:	00008067          	ret

0000000080002ca4 <mycpu>:
    80002ca4:	ff010113          	addi	sp,sp,-16
    80002ca8:	00813423          	sd	s0,8(sp)
    80002cac:	01010413          	addi	s0,sp,16
    80002cb0:	00020793          	mv	a5,tp
    80002cb4:	00813403          	ld	s0,8(sp)
    80002cb8:	0007879b          	sext.w	a5,a5
    80002cbc:	00779793          	slli	a5,a5,0x7
    80002cc0:	00004517          	auipc	a0,0x4
    80002cc4:	3d050513          	addi	a0,a0,976 # 80007090 <cpus>
    80002cc8:	00f50533          	add	a0,a0,a5
    80002ccc:	01010113          	addi	sp,sp,16
    80002cd0:	00008067          	ret

0000000080002cd4 <userinit>:
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00813423          	sd	s0,8(sp)
    80002cdc:	01010413          	addi	s0,sp,16
    80002ce0:	00813403          	ld	s0,8(sp)
    80002ce4:	01010113          	addi	sp,sp,16
    80002ce8:	fffff317          	auipc	t1,0xfffff
    80002cec:	c5430067          	jr	-940(t1) # 8000193c <main>

0000000080002cf0 <either_copyout>:
    80002cf0:	ff010113          	addi	sp,sp,-16
    80002cf4:	00813023          	sd	s0,0(sp)
    80002cf8:	00113423          	sd	ra,8(sp)
    80002cfc:	01010413          	addi	s0,sp,16
    80002d00:	02051663          	bnez	a0,80002d2c <either_copyout+0x3c>
    80002d04:	00058513          	mv	a0,a1
    80002d08:	00060593          	mv	a1,a2
    80002d0c:	0006861b          	sext.w	a2,a3
    80002d10:	00002097          	auipc	ra,0x2
    80002d14:	c54080e7          	jalr	-940(ra) # 80004964 <__memmove>
    80002d18:	00813083          	ld	ra,8(sp)
    80002d1c:	00013403          	ld	s0,0(sp)
    80002d20:	00000513          	li	a0,0
    80002d24:	01010113          	addi	sp,sp,16
    80002d28:	00008067          	ret
    80002d2c:	00002517          	auipc	a0,0x2
    80002d30:	58c50513          	addi	a0,a0,1420 # 800052b8 <_ZZ12printIntegermE6digits+0x68>
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	928080e7          	jalr	-1752(ra) # 8000365c <panic>

0000000080002d3c <either_copyin>:
    80002d3c:	ff010113          	addi	sp,sp,-16
    80002d40:	00813023          	sd	s0,0(sp)
    80002d44:	00113423          	sd	ra,8(sp)
    80002d48:	01010413          	addi	s0,sp,16
    80002d4c:	02059463          	bnez	a1,80002d74 <either_copyin+0x38>
    80002d50:	00060593          	mv	a1,a2
    80002d54:	0006861b          	sext.w	a2,a3
    80002d58:	00002097          	auipc	ra,0x2
    80002d5c:	c0c080e7          	jalr	-1012(ra) # 80004964 <__memmove>
    80002d60:	00813083          	ld	ra,8(sp)
    80002d64:	00013403          	ld	s0,0(sp)
    80002d68:	00000513          	li	a0,0
    80002d6c:	01010113          	addi	sp,sp,16
    80002d70:	00008067          	ret
    80002d74:	00002517          	auipc	a0,0x2
    80002d78:	56c50513          	addi	a0,a0,1388 # 800052e0 <_ZZ12printIntegermE6digits+0x90>
    80002d7c:	00001097          	auipc	ra,0x1
    80002d80:	8e0080e7          	jalr	-1824(ra) # 8000365c <panic>

0000000080002d84 <trapinit>:
    80002d84:	ff010113          	addi	sp,sp,-16
    80002d88:	00813423          	sd	s0,8(sp)
    80002d8c:	01010413          	addi	s0,sp,16
    80002d90:	00813403          	ld	s0,8(sp)
    80002d94:	00002597          	auipc	a1,0x2
    80002d98:	57458593          	addi	a1,a1,1396 # 80005308 <_ZZ12printIntegermE6digits+0xb8>
    80002d9c:	00004517          	auipc	a0,0x4
    80002da0:	37450513          	addi	a0,a0,884 # 80007110 <tickslock>
    80002da4:	01010113          	addi	sp,sp,16
    80002da8:	00001317          	auipc	t1,0x1
    80002dac:	5c030067          	jr	1472(t1) # 80004368 <initlock>

0000000080002db0 <trapinithart>:
    80002db0:	ff010113          	addi	sp,sp,-16
    80002db4:	00813423          	sd	s0,8(sp)
    80002db8:	01010413          	addi	s0,sp,16
    80002dbc:	00000797          	auipc	a5,0x0
    80002dc0:	2f478793          	addi	a5,a5,756 # 800030b0 <kernelvec>
    80002dc4:	10579073          	csrw	stvec,a5
    80002dc8:	00813403          	ld	s0,8(sp)
    80002dcc:	01010113          	addi	sp,sp,16
    80002dd0:	00008067          	ret

0000000080002dd4 <usertrap>:
    80002dd4:	ff010113          	addi	sp,sp,-16
    80002dd8:	00813423          	sd	s0,8(sp)
    80002ddc:	01010413          	addi	s0,sp,16
    80002de0:	00813403          	ld	s0,8(sp)
    80002de4:	01010113          	addi	sp,sp,16
    80002de8:	00008067          	ret

0000000080002dec <usertrapret>:
    80002dec:	ff010113          	addi	sp,sp,-16
    80002df0:	00813423          	sd	s0,8(sp)
    80002df4:	01010413          	addi	s0,sp,16
    80002df8:	00813403          	ld	s0,8(sp)
    80002dfc:	01010113          	addi	sp,sp,16
    80002e00:	00008067          	ret

0000000080002e04 <kerneltrap>:
    80002e04:	fe010113          	addi	sp,sp,-32
    80002e08:	00813823          	sd	s0,16(sp)
    80002e0c:	00113c23          	sd	ra,24(sp)
    80002e10:	00913423          	sd	s1,8(sp)
    80002e14:	02010413          	addi	s0,sp,32
    80002e18:	142025f3          	csrr	a1,scause
    80002e1c:	100027f3          	csrr	a5,sstatus
    80002e20:	0027f793          	andi	a5,a5,2
    80002e24:	10079c63          	bnez	a5,80002f3c <kerneltrap+0x138>
    80002e28:	142027f3          	csrr	a5,scause
    80002e2c:	0207ce63          	bltz	a5,80002e68 <kerneltrap+0x64>
    80002e30:	00002517          	auipc	a0,0x2
    80002e34:	52050513          	addi	a0,a0,1312 # 80005350 <_ZZ12printIntegermE6digits+0x100>
    80002e38:	00001097          	auipc	ra,0x1
    80002e3c:	880080e7          	jalr	-1920(ra) # 800036b8 <__printf>
    80002e40:	141025f3          	csrr	a1,sepc
    80002e44:	14302673          	csrr	a2,stval
    80002e48:	00002517          	auipc	a0,0x2
    80002e4c:	51850513          	addi	a0,a0,1304 # 80005360 <_ZZ12printIntegermE6digits+0x110>
    80002e50:	00001097          	auipc	ra,0x1
    80002e54:	868080e7          	jalr	-1944(ra) # 800036b8 <__printf>
    80002e58:	00002517          	auipc	a0,0x2
    80002e5c:	52050513          	addi	a0,a0,1312 # 80005378 <_ZZ12printIntegermE6digits+0x128>
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	7fc080e7          	jalr	2044(ra) # 8000365c <panic>
    80002e68:	0ff7f713          	andi	a4,a5,255
    80002e6c:	00900693          	li	a3,9
    80002e70:	04d70063          	beq	a4,a3,80002eb0 <kerneltrap+0xac>
    80002e74:	fff00713          	li	a4,-1
    80002e78:	03f71713          	slli	a4,a4,0x3f
    80002e7c:	00170713          	addi	a4,a4,1
    80002e80:	fae798e3          	bne	a5,a4,80002e30 <kerneltrap+0x2c>
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	e00080e7          	jalr	-512(ra) # 80002c84 <cpuid>
    80002e8c:	06050663          	beqz	a0,80002ef8 <kerneltrap+0xf4>
    80002e90:	144027f3          	csrr	a5,sip
    80002e94:	ffd7f793          	andi	a5,a5,-3
    80002e98:	14479073          	csrw	sip,a5
    80002e9c:	01813083          	ld	ra,24(sp)
    80002ea0:	01013403          	ld	s0,16(sp)
    80002ea4:	00813483          	ld	s1,8(sp)
    80002ea8:	02010113          	addi	sp,sp,32
    80002eac:	00008067          	ret
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	3c4080e7          	jalr	964(ra) # 80003274 <plic_claim>
    80002eb8:	00a00793          	li	a5,10
    80002ebc:	00050493          	mv	s1,a0
    80002ec0:	06f50863          	beq	a0,a5,80002f30 <kerneltrap+0x12c>
    80002ec4:	fc050ce3          	beqz	a0,80002e9c <kerneltrap+0x98>
    80002ec8:	00050593          	mv	a1,a0
    80002ecc:	00002517          	auipc	a0,0x2
    80002ed0:	46450513          	addi	a0,a0,1124 # 80005330 <_ZZ12printIntegermE6digits+0xe0>
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	7e4080e7          	jalr	2020(ra) # 800036b8 <__printf>
    80002edc:	01013403          	ld	s0,16(sp)
    80002ee0:	01813083          	ld	ra,24(sp)
    80002ee4:	00048513          	mv	a0,s1
    80002ee8:	00813483          	ld	s1,8(sp)
    80002eec:	02010113          	addi	sp,sp,32
    80002ef0:	00000317          	auipc	t1,0x0
    80002ef4:	3bc30067          	jr	956(t1) # 800032ac <plic_complete>
    80002ef8:	00004517          	auipc	a0,0x4
    80002efc:	21850513          	addi	a0,a0,536 # 80007110 <tickslock>
    80002f00:	00001097          	auipc	ra,0x1
    80002f04:	48c080e7          	jalr	1164(ra) # 8000438c <acquire>
    80002f08:	00003717          	auipc	a4,0x3
    80002f0c:	0ec70713          	addi	a4,a4,236 # 80005ff4 <ticks>
    80002f10:	00072783          	lw	a5,0(a4)
    80002f14:	00004517          	auipc	a0,0x4
    80002f18:	1fc50513          	addi	a0,a0,508 # 80007110 <tickslock>
    80002f1c:	0017879b          	addiw	a5,a5,1
    80002f20:	00f72023          	sw	a5,0(a4)
    80002f24:	00001097          	auipc	ra,0x1
    80002f28:	534080e7          	jalr	1332(ra) # 80004458 <release>
    80002f2c:	f65ff06f          	j	80002e90 <kerneltrap+0x8c>
    80002f30:	00001097          	auipc	ra,0x1
    80002f34:	090080e7          	jalr	144(ra) # 80003fc0 <uartintr>
    80002f38:	fa5ff06f          	j	80002edc <kerneltrap+0xd8>
    80002f3c:	00002517          	auipc	a0,0x2
    80002f40:	3d450513          	addi	a0,a0,980 # 80005310 <_ZZ12printIntegermE6digits+0xc0>
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	718080e7          	jalr	1816(ra) # 8000365c <panic>

0000000080002f4c <clockintr>:
    80002f4c:	fe010113          	addi	sp,sp,-32
    80002f50:	00813823          	sd	s0,16(sp)
    80002f54:	00913423          	sd	s1,8(sp)
    80002f58:	00113c23          	sd	ra,24(sp)
    80002f5c:	02010413          	addi	s0,sp,32
    80002f60:	00004497          	auipc	s1,0x4
    80002f64:	1b048493          	addi	s1,s1,432 # 80007110 <tickslock>
    80002f68:	00048513          	mv	a0,s1
    80002f6c:	00001097          	auipc	ra,0x1
    80002f70:	420080e7          	jalr	1056(ra) # 8000438c <acquire>
    80002f74:	00003717          	auipc	a4,0x3
    80002f78:	08070713          	addi	a4,a4,128 # 80005ff4 <ticks>
    80002f7c:	00072783          	lw	a5,0(a4)
    80002f80:	01013403          	ld	s0,16(sp)
    80002f84:	01813083          	ld	ra,24(sp)
    80002f88:	00048513          	mv	a0,s1
    80002f8c:	0017879b          	addiw	a5,a5,1
    80002f90:	00813483          	ld	s1,8(sp)
    80002f94:	00f72023          	sw	a5,0(a4)
    80002f98:	02010113          	addi	sp,sp,32
    80002f9c:	00001317          	auipc	t1,0x1
    80002fa0:	4bc30067          	jr	1212(t1) # 80004458 <release>

0000000080002fa4 <devintr>:
    80002fa4:	142027f3          	csrr	a5,scause
    80002fa8:	00000513          	li	a0,0
    80002fac:	0007c463          	bltz	a5,80002fb4 <devintr+0x10>
    80002fb0:	00008067          	ret
    80002fb4:	fe010113          	addi	sp,sp,-32
    80002fb8:	00813823          	sd	s0,16(sp)
    80002fbc:	00113c23          	sd	ra,24(sp)
    80002fc0:	00913423          	sd	s1,8(sp)
    80002fc4:	02010413          	addi	s0,sp,32
    80002fc8:	0ff7f713          	andi	a4,a5,255
    80002fcc:	00900693          	li	a3,9
    80002fd0:	04d70c63          	beq	a4,a3,80003028 <devintr+0x84>
    80002fd4:	fff00713          	li	a4,-1
    80002fd8:	03f71713          	slli	a4,a4,0x3f
    80002fdc:	00170713          	addi	a4,a4,1
    80002fe0:	00e78c63          	beq	a5,a4,80002ff8 <devintr+0x54>
    80002fe4:	01813083          	ld	ra,24(sp)
    80002fe8:	01013403          	ld	s0,16(sp)
    80002fec:	00813483          	ld	s1,8(sp)
    80002ff0:	02010113          	addi	sp,sp,32
    80002ff4:	00008067          	ret
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	c8c080e7          	jalr	-884(ra) # 80002c84 <cpuid>
    80003000:	06050663          	beqz	a0,8000306c <devintr+0xc8>
    80003004:	144027f3          	csrr	a5,sip
    80003008:	ffd7f793          	andi	a5,a5,-3
    8000300c:	14479073          	csrw	sip,a5
    80003010:	01813083          	ld	ra,24(sp)
    80003014:	01013403          	ld	s0,16(sp)
    80003018:	00813483          	ld	s1,8(sp)
    8000301c:	00200513          	li	a0,2
    80003020:	02010113          	addi	sp,sp,32
    80003024:	00008067          	ret
    80003028:	00000097          	auipc	ra,0x0
    8000302c:	24c080e7          	jalr	588(ra) # 80003274 <plic_claim>
    80003030:	00a00793          	li	a5,10
    80003034:	00050493          	mv	s1,a0
    80003038:	06f50663          	beq	a0,a5,800030a4 <devintr+0x100>
    8000303c:	00100513          	li	a0,1
    80003040:	fa0482e3          	beqz	s1,80002fe4 <devintr+0x40>
    80003044:	00048593          	mv	a1,s1
    80003048:	00002517          	auipc	a0,0x2
    8000304c:	2e850513          	addi	a0,a0,744 # 80005330 <_ZZ12printIntegermE6digits+0xe0>
    80003050:	00000097          	auipc	ra,0x0
    80003054:	668080e7          	jalr	1640(ra) # 800036b8 <__printf>
    80003058:	00048513          	mv	a0,s1
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	250080e7          	jalr	592(ra) # 800032ac <plic_complete>
    80003064:	00100513          	li	a0,1
    80003068:	f7dff06f          	j	80002fe4 <devintr+0x40>
    8000306c:	00004517          	auipc	a0,0x4
    80003070:	0a450513          	addi	a0,a0,164 # 80007110 <tickslock>
    80003074:	00001097          	auipc	ra,0x1
    80003078:	318080e7          	jalr	792(ra) # 8000438c <acquire>
    8000307c:	00003717          	auipc	a4,0x3
    80003080:	f7870713          	addi	a4,a4,-136 # 80005ff4 <ticks>
    80003084:	00072783          	lw	a5,0(a4)
    80003088:	00004517          	auipc	a0,0x4
    8000308c:	08850513          	addi	a0,a0,136 # 80007110 <tickslock>
    80003090:	0017879b          	addiw	a5,a5,1
    80003094:	00f72023          	sw	a5,0(a4)
    80003098:	00001097          	auipc	ra,0x1
    8000309c:	3c0080e7          	jalr	960(ra) # 80004458 <release>
    800030a0:	f65ff06f          	j	80003004 <devintr+0x60>
    800030a4:	00001097          	auipc	ra,0x1
    800030a8:	f1c080e7          	jalr	-228(ra) # 80003fc0 <uartintr>
    800030ac:	fadff06f          	j	80003058 <devintr+0xb4>

00000000800030b0 <kernelvec>:
    800030b0:	f0010113          	addi	sp,sp,-256
    800030b4:	00113023          	sd	ra,0(sp)
    800030b8:	00213423          	sd	sp,8(sp)
    800030bc:	00313823          	sd	gp,16(sp)
    800030c0:	00413c23          	sd	tp,24(sp)
    800030c4:	02513023          	sd	t0,32(sp)
    800030c8:	02613423          	sd	t1,40(sp)
    800030cc:	02713823          	sd	t2,48(sp)
    800030d0:	02813c23          	sd	s0,56(sp)
    800030d4:	04913023          	sd	s1,64(sp)
    800030d8:	04a13423          	sd	a0,72(sp)
    800030dc:	04b13823          	sd	a1,80(sp)
    800030e0:	04c13c23          	sd	a2,88(sp)
    800030e4:	06d13023          	sd	a3,96(sp)
    800030e8:	06e13423          	sd	a4,104(sp)
    800030ec:	06f13823          	sd	a5,112(sp)
    800030f0:	07013c23          	sd	a6,120(sp)
    800030f4:	09113023          	sd	a7,128(sp)
    800030f8:	09213423          	sd	s2,136(sp)
    800030fc:	09313823          	sd	s3,144(sp)
    80003100:	09413c23          	sd	s4,152(sp)
    80003104:	0b513023          	sd	s5,160(sp)
    80003108:	0b613423          	sd	s6,168(sp)
    8000310c:	0b713823          	sd	s7,176(sp)
    80003110:	0b813c23          	sd	s8,184(sp)
    80003114:	0d913023          	sd	s9,192(sp)
    80003118:	0da13423          	sd	s10,200(sp)
    8000311c:	0db13823          	sd	s11,208(sp)
    80003120:	0dc13c23          	sd	t3,216(sp)
    80003124:	0fd13023          	sd	t4,224(sp)
    80003128:	0fe13423          	sd	t5,232(sp)
    8000312c:	0ff13823          	sd	t6,240(sp)
    80003130:	cd5ff0ef          	jal	ra,80002e04 <kerneltrap>
    80003134:	00013083          	ld	ra,0(sp)
    80003138:	00813103          	ld	sp,8(sp)
    8000313c:	01013183          	ld	gp,16(sp)
    80003140:	02013283          	ld	t0,32(sp)
    80003144:	02813303          	ld	t1,40(sp)
    80003148:	03013383          	ld	t2,48(sp)
    8000314c:	03813403          	ld	s0,56(sp)
    80003150:	04013483          	ld	s1,64(sp)
    80003154:	04813503          	ld	a0,72(sp)
    80003158:	05013583          	ld	a1,80(sp)
    8000315c:	05813603          	ld	a2,88(sp)
    80003160:	06013683          	ld	a3,96(sp)
    80003164:	06813703          	ld	a4,104(sp)
    80003168:	07013783          	ld	a5,112(sp)
    8000316c:	07813803          	ld	a6,120(sp)
    80003170:	08013883          	ld	a7,128(sp)
    80003174:	08813903          	ld	s2,136(sp)
    80003178:	09013983          	ld	s3,144(sp)
    8000317c:	09813a03          	ld	s4,152(sp)
    80003180:	0a013a83          	ld	s5,160(sp)
    80003184:	0a813b03          	ld	s6,168(sp)
    80003188:	0b013b83          	ld	s7,176(sp)
    8000318c:	0b813c03          	ld	s8,184(sp)
    80003190:	0c013c83          	ld	s9,192(sp)
    80003194:	0c813d03          	ld	s10,200(sp)
    80003198:	0d013d83          	ld	s11,208(sp)
    8000319c:	0d813e03          	ld	t3,216(sp)
    800031a0:	0e013e83          	ld	t4,224(sp)
    800031a4:	0e813f03          	ld	t5,232(sp)
    800031a8:	0f013f83          	ld	t6,240(sp)
    800031ac:	10010113          	addi	sp,sp,256
    800031b0:	10200073          	sret
    800031b4:	00000013          	nop
    800031b8:	00000013          	nop
    800031bc:	00000013          	nop

00000000800031c0 <timervec>:
    800031c0:	34051573          	csrrw	a0,mscratch,a0
    800031c4:	00b53023          	sd	a1,0(a0)
    800031c8:	00c53423          	sd	a2,8(a0)
    800031cc:	00d53823          	sd	a3,16(a0)
    800031d0:	01853583          	ld	a1,24(a0)
    800031d4:	02053603          	ld	a2,32(a0)
    800031d8:	0005b683          	ld	a3,0(a1)
    800031dc:	00c686b3          	add	a3,a3,a2
    800031e0:	00d5b023          	sd	a3,0(a1)
    800031e4:	00200593          	li	a1,2
    800031e8:	14459073          	csrw	sip,a1
    800031ec:	01053683          	ld	a3,16(a0)
    800031f0:	00853603          	ld	a2,8(a0)
    800031f4:	00053583          	ld	a1,0(a0)
    800031f8:	34051573          	csrrw	a0,mscratch,a0
    800031fc:	30200073          	mret

0000000080003200 <plicinit>:
    80003200:	ff010113          	addi	sp,sp,-16
    80003204:	00813423          	sd	s0,8(sp)
    80003208:	01010413          	addi	s0,sp,16
    8000320c:	00813403          	ld	s0,8(sp)
    80003210:	0c0007b7          	lui	a5,0xc000
    80003214:	00100713          	li	a4,1
    80003218:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000321c:	00e7a223          	sw	a4,4(a5)
    80003220:	01010113          	addi	sp,sp,16
    80003224:	00008067          	ret

0000000080003228 <plicinithart>:
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00813023          	sd	s0,0(sp)
    80003230:	00113423          	sd	ra,8(sp)
    80003234:	01010413          	addi	s0,sp,16
    80003238:	00000097          	auipc	ra,0x0
    8000323c:	a4c080e7          	jalr	-1460(ra) # 80002c84 <cpuid>
    80003240:	0085171b          	slliw	a4,a0,0x8
    80003244:	0c0027b7          	lui	a5,0xc002
    80003248:	00e787b3          	add	a5,a5,a4
    8000324c:	40200713          	li	a4,1026
    80003250:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003254:	00813083          	ld	ra,8(sp)
    80003258:	00013403          	ld	s0,0(sp)
    8000325c:	00d5151b          	slliw	a0,a0,0xd
    80003260:	0c2017b7          	lui	a5,0xc201
    80003264:	00a78533          	add	a0,a5,a0
    80003268:	00052023          	sw	zero,0(a0)
    8000326c:	01010113          	addi	sp,sp,16
    80003270:	00008067          	ret

0000000080003274 <plic_claim>:
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00813023          	sd	s0,0(sp)
    8000327c:	00113423          	sd	ra,8(sp)
    80003280:	01010413          	addi	s0,sp,16
    80003284:	00000097          	auipc	ra,0x0
    80003288:	a00080e7          	jalr	-1536(ra) # 80002c84 <cpuid>
    8000328c:	00813083          	ld	ra,8(sp)
    80003290:	00013403          	ld	s0,0(sp)
    80003294:	00d5151b          	slliw	a0,a0,0xd
    80003298:	0c2017b7          	lui	a5,0xc201
    8000329c:	00a78533          	add	a0,a5,a0
    800032a0:	00452503          	lw	a0,4(a0)
    800032a4:	01010113          	addi	sp,sp,16
    800032a8:	00008067          	ret

00000000800032ac <plic_complete>:
    800032ac:	fe010113          	addi	sp,sp,-32
    800032b0:	00813823          	sd	s0,16(sp)
    800032b4:	00913423          	sd	s1,8(sp)
    800032b8:	00113c23          	sd	ra,24(sp)
    800032bc:	02010413          	addi	s0,sp,32
    800032c0:	00050493          	mv	s1,a0
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	9c0080e7          	jalr	-1600(ra) # 80002c84 <cpuid>
    800032cc:	01813083          	ld	ra,24(sp)
    800032d0:	01013403          	ld	s0,16(sp)
    800032d4:	00d5179b          	slliw	a5,a0,0xd
    800032d8:	0c201737          	lui	a4,0xc201
    800032dc:	00f707b3          	add	a5,a4,a5
    800032e0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800032e4:	00813483          	ld	s1,8(sp)
    800032e8:	02010113          	addi	sp,sp,32
    800032ec:	00008067          	ret

00000000800032f0 <consolewrite>:
    800032f0:	fb010113          	addi	sp,sp,-80
    800032f4:	04813023          	sd	s0,64(sp)
    800032f8:	04113423          	sd	ra,72(sp)
    800032fc:	02913c23          	sd	s1,56(sp)
    80003300:	03213823          	sd	s2,48(sp)
    80003304:	03313423          	sd	s3,40(sp)
    80003308:	03413023          	sd	s4,32(sp)
    8000330c:	01513c23          	sd	s5,24(sp)
    80003310:	05010413          	addi	s0,sp,80
    80003314:	06c05c63          	blez	a2,8000338c <consolewrite+0x9c>
    80003318:	00060993          	mv	s3,a2
    8000331c:	00050a13          	mv	s4,a0
    80003320:	00058493          	mv	s1,a1
    80003324:	00000913          	li	s2,0
    80003328:	fff00a93          	li	s5,-1
    8000332c:	01c0006f          	j	80003348 <consolewrite+0x58>
    80003330:	fbf44503          	lbu	a0,-65(s0)
    80003334:	0019091b          	addiw	s2,s2,1
    80003338:	00148493          	addi	s1,s1,1
    8000333c:	00001097          	auipc	ra,0x1
    80003340:	a9c080e7          	jalr	-1380(ra) # 80003dd8 <uartputc>
    80003344:	03298063          	beq	s3,s2,80003364 <consolewrite+0x74>
    80003348:	00048613          	mv	a2,s1
    8000334c:	00100693          	li	a3,1
    80003350:	000a0593          	mv	a1,s4
    80003354:	fbf40513          	addi	a0,s0,-65
    80003358:	00000097          	auipc	ra,0x0
    8000335c:	9e4080e7          	jalr	-1564(ra) # 80002d3c <either_copyin>
    80003360:	fd5518e3          	bne	a0,s5,80003330 <consolewrite+0x40>
    80003364:	04813083          	ld	ra,72(sp)
    80003368:	04013403          	ld	s0,64(sp)
    8000336c:	03813483          	ld	s1,56(sp)
    80003370:	02813983          	ld	s3,40(sp)
    80003374:	02013a03          	ld	s4,32(sp)
    80003378:	01813a83          	ld	s5,24(sp)
    8000337c:	00090513          	mv	a0,s2
    80003380:	03013903          	ld	s2,48(sp)
    80003384:	05010113          	addi	sp,sp,80
    80003388:	00008067          	ret
    8000338c:	00000913          	li	s2,0
    80003390:	fd5ff06f          	j	80003364 <consolewrite+0x74>

0000000080003394 <consoleread>:
    80003394:	f9010113          	addi	sp,sp,-112
    80003398:	06813023          	sd	s0,96(sp)
    8000339c:	04913c23          	sd	s1,88(sp)
    800033a0:	05213823          	sd	s2,80(sp)
    800033a4:	05313423          	sd	s3,72(sp)
    800033a8:	05413023          	sd	s4,64(sp)
    800033ac:	03513c23          	sd	s5,56(sp)
    800033b0:	03613823          	sd	s6,48(sp)
    800033b4:	03713423          	sd	s7,40(sp)
    800033b8:	03813023          	sd	s8,32(sp)
    800033bc:	06113423          	sd	ra,104(sp)
    800033c0:	01913c23          	sd	s9,24(sp)
    800033c4:	07010413          	addi	s0,sp,112
    800033c8:	00060b93          	mv	s7,a2
    800033cc:	00050913          	mv	s2,a0
    800033d0:	00058c13          	mv	s8,a1
    800033d4:	00060b1b          	sext.w	s6,a2
    800033d8:	00004497          	auipc	s1,0x4
    800033dc:	d6048493          	addi	s1,s1,-672 # 80007138 <cons>
    800033e0:	00400993          	li	s3,4
    800033e4:	fff00a13          	li	s4,-1
    800033e8:	00a00a93          	li	s5,10
    800033ec:	05705e63          	blez	s7,80003448 <consoleread+0xb4>
    800033f0:	09c4a703          	lw	a4,156(s1)
    800033f4:	0984a783          	lw	a5,152(s1)
    800033f8:	0007071b          	sext.w	a4,a4
    800033fc:	08e78463          	beq	a5,a4,80003484 <consoleread+0xf0>
    80003400:	07f7f713          	andi	a4,a5,127
    80003404:	00e48733          	add	a4,s1,a4
    80003408:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000340c:	0017869b          	addiw	a3,a5,1
    80003410:	08d4ac23          	sw	a3,152(s1)
    80003414:	00070c9b          	sext.w	s9,a4
    80003418:	0b370663          	beq	a4,s3,800034c4 <consoleread+0x130>
    8000341c:	00100693          	li	a3,1
    80003420:	f9f40613          	addi	a2,s0,-97
    80003424:	000c0593          	mv	a1,s8
    80003428:	00090513          	mv	a0,s2
    8000342c:	f8e40fa3          	sb	a4,-97(s0)
    80003430:	00000097          	auipc	ra,0x0
    80003434:	8c0080e7          	jalr	-1856(ra) # 80002cf0 <either_copyout>
    80003438:	01450863          	beq	a0,s4,80003448 <consoleread+0xb4>
    8000343c:	001c0c13          	addi	s8,s8,1
    80003440:	fffb8b9b          	addiw	s7,s7,-1
    80003444:	fb5c94e3          	bne	s9,s5,800033ec <consoleread+0x58>
    80003448:	000b851b          	sext.w	a0,s7
    8000344c:	06813083          	ld	ra,104(sp)
    80003450:	06013403          	ld	s0,96(sp)
    80003454:	05813483          	ld	s1,88(sp)
    80003458:	05013903          	ld	s2,80(sp)
    8000345c:	04813983          	ld	s3,72(sp)
    80003460:	04013a03          	ld	s4,64(sp)
    80003464:	03813a83          	ld	s5,56(sp)
    80003468:	02813b83          	ld	s7,40(sp)
    8000346c:	02013c03          	ld	s8,32(sp)
    80003470:	01813c83          	ld	s9,24(sp)
    80003474:	40ab053b          	subw	a0,s6,a0
    80003478:	03013b03          	ld	s6,48(sp)
    8000347c:	07010113          	addi	sp,sp,112
    80003480:	00008067          	ret
    80003484:	00001097          	auipc	ra,0x1
    80003488:	1d8080e7          	jalr	472(ra) # 8000465c <push_on>
    8000348c:	0984a703          	lw	a4,152(s1)
    80003490:	09c4a783          	lw	a5,156(s1)
    80003494:	0007879b          	sext.w	a5,a5
    80003498:	fef70ce3          	beq	a4,a5,80003490 <consoleread+0xfc>
    8000349c:	00001097          	auipc	ra,0x1
    800034a0:	234080e7          	jalr	564(ra) # 800046d0 <pop_on>
    800034a4:	0984a783          	lw	a5,152(s1)
    800034a8:	07f7f713          	andi	a4,a5,127
    800034ac:	00e48733          	add	a4,s1,a4
    800034b0:	01874703          	lbu	a4,24(a4)
    800034b4:	0017869b          	addiw	a3,a5,1
    800034b8:	08d4ac23          	sw	a3,152(s1)
    800034bc:	00070c9b          	sext.w	s9,a4
    800034c0:	f5371ee3          	bne	a4,s3,8000341c <consoleread+0x88>
    800034c4:	000b851b          	sext.w	a0,s7
    800034c8:	f96bf2e3          	bgeu	s7,s6,8000344c <consoleread+0xb8>
    800034cc:	08f4ac23          	sw	a5,152(s1)
    800034d0:	f7dff06f          	j	8000344c <consoleread+0xb8>

00000000800034d4 <consputc>:
    800034d4:	10000793          	li	a5,256
    800034d8:	00f50663          	beq	a0,a5,800034e4 <consputc+0x10>
    800034dc:	00001317          	auipc	t1,0x1
    800034e0:	9f430067          	jr	-1548(t1) # 80003ed0 <uartputc_sync>
    800034e4:	ff010113          	addi	sp,sp,-16
    800034e8:	00113423          	sd	ra,8(sp)
    800034ec:	00813023          	sd	s0,0(sp)
    800034f0:	01010413          	addi	s0,sp,16
    800034f4:	00800513          	li	a0,8
    800034f8:	00001097          	auipc	ra,0x1
    800034fc:	9d8080e7          	jalr	-1576(ra) # 80003ed0 <uartputc_sync>
    80003500:	02000513          	li	a0,32
    80003504:	00001097          	auipc	ra,0x1
    80003508:	9cc080e7          	jalr	-1588(ra) # 80003ed0 <uartputc_sync>
    8000350c:	00013403          	ld	s0,0(sp)
    80003510:	00813083          	ld	ra,8(sp)
    80003514:	00800513          	li	a0,8
    80003518:	01010113          	addi	sp,sp,16
    8000351c:	00001317          	auipc	t1,0x1
    80003520:	9b430067          	jr	-1612(t1) # 80003ed0 <uartputc_sync>

0000000080003524 <consoleintr>:
    80003524:	fe010113          	addi	sp,sp,-32
    80003528:	00813823          	sd	s0,16(sp)
    8000352c:	00913423          	sd	s1,8(sp)
    80003530:	01213023          	sd	s2,0(sp)
    80003534:	00113c23          	sd	ra,24(sp)
    80003538:	02010413          	addi	s0,sp,32
    8000353c:	00004917          	auipc	s2,0x4
    80003540:	bfc90913          	addi	s2,s2,-1028 # 80007138 <cons>
    80003544:	00050493          	mv	s1,a0
    80003548:	00090513          	mv	a0,s2
    8000354c:	00001097          	auipc	ra,0x1
    80003550:	e40080e7          	jalr	-448(ra) # 8000438c <acquire>
    80003554:	02048c63          	beqz	s1,8000358c <consoleintr+0x68>
    80003558:	0a092783          	lw	a5,160(s2)
    8000355c:	09892703          	lw	a4,152(s2)
    80003560:	07f00693          	li	a3,127
    80003564:	40e7873b          	subw	a4,a5,a4
    80003568:	02e6e263          	bltu	a3,a4,8000358c <consoleintr+0x68>
    8000356c:	00d00713          	li	a4,13
    80003570:	04e48063          	beq	s1,a4,800035b0 <consoleintr+0x8c>
    80003574:	07f7f713          	andi	a4,a5,127
    80003578:	00e90733          	add	a4,s2,a4
    8000357c:	0017879b          	addiw	a5,a5,1
    80003580:	0af92023          	sw	a5,160(s2)
    80003584:	00970c23          	sb	s1,24(a4)
    80003588:	08f92e23          	sw	a5,156(s2)
    8000358c:	01013403          	ld	s0,16(sp)
    80003590:	01813083          	ld	ra,24(sp)
    80003594:	00813483          	ld	s1,8(sp)
    80003598:	00013903          	ld	s2,0(sp)
    8000359c:	00004517          	auipc	a0,0x4
    800035a0:	b9c50513          	addi	a0,a0,-1124 # 80007138 <cons>
    800035a4:	02010113          	addi	sp,sp,32
    800035a8:	00001317          	auipc	t1,0x1
    800035ac:	eb030067          	jr	-336(t1) # 80004458 <release>
    800035b0:	00a00493          	li	s1,10
    800035b4:	fc1ff06f          	j	80003574 <consoleintr+0x50>

00000000800035b8 <consoleinit>:
    800035b8:	fe010113          	addi	sp,sp,-32
    800035bc:	00113c23          	sd	ra,24(sp)
    800035c0:	00813823          	sd	s0,16(sp)
    800035c4:	00913423          	sd	s1,8(sp)
    800035c8:	02010413          	addi	s0,sp,32
    800035cc:	00004497          	auipc	s1,0x4
    800035d0:	b6c48493          	addi	s1,s1,-1172 # 80007138 <cons>
    800035d4:	00048513          	mv	a0,s1
    800035d8:	00002597          	auipc	a1,0x2
    800035dc:	db058593          	addi	a1,a1,-592 # 80005388 <_ZZ12printIntegermE6digits+0x138>
    800035e0:	00001097          	auipc	ra,0x1
    800035e4:	d88080e7          	jalr	-632(ra) # 80004368 <initlock>
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	7ac080e7          	jalr	1964(ra) # 80003d94 <uartinit>
    800035f0:	01813083          	ld	ra,24(sp)
    800035f4:	01013403          	ld	s0,16(sp)
    800035f8:	00000797          	auipc	a5,0x0
    800035fc:	d9c78793          	addi	a5,a5,-612 # 80003394 <consoleread>
    80003600:	0af4bc23          	sd	a5,184(s1)
    80003604:	00000797          	auipc	a5,0x0
    80003608:	cec78793          	addi	a5,a5,-788 # 800032f0 <consolewrite>
    8000360c:	0cf4b023          	sd	a5,192(s1)
    80003610:	00813483          	ld	s1,8(sp)
    80003614:	02010113          	addi	sp,sp,32
    80003618:	00008067          	ret

000000008000361c <console_read>:
    8000361c:	ff010113          	addi	sp,sp,-16
    80003620:	00813423          	sd	s0,8(sp)
    80003624:	01010413          	addi	s0,sp,16
    80003628:	00813403          	ld	s0,8(sp)
    8000362c:	00004317          	auipc	t1,0x4
    80003630:	bc433303          	ld	t1,-1084(t1) # 800071f0 <devsw+0x10>
    80003634:	01010113          	addi	sp,sp,16
    80003638:	00030067          	jr	t1

000000008000363c <console_write>:
    8000363c:	ff010113          	addi	sp,sp,-16
    80003640:	00813423          	sd	s0,8(sp)
    80003644:	01010413          	addi	s0,sp,16
    80003648:	00813403          	ld	s0,8(sp)
    8000364c:	00004317          	auipc	t1,0x4
    80003650:	bac33303          	ld	t1,-1108(t1) # 800071f8 <devsw+0x18>
    80003654:	01010113          	addi	sp,sp,16
    80003658:	00030067          	jr	t1

000000008000365c <panic>:
    8000365c:	fe010113          	addi	sp,sp,-32
    80003660:	00113c23          	sd	ra,24(sp)
    80003664:	00813823          	sd	s0,16(sp)
    80003668:	00913423          	sd	s1,8(sp)
    8000366c:	02010413          	addi	s0,sp,32
    80003670:	00050493          	mv	s1,a0
    80003674:	00002517          	auipc	a0,0x2
    80003678:	d1c50513          	addi	a0,a0,-740 # 80005390 <_ZZ12printIntegermE6digits+0x140>
    8000367c:	00004797          	auipc	a5,0x4
    80003680:	c007ae23          	sw	zero,-996(a5) # 80007298 <pr+0x18>
    80003684:	00000097          	auipc	ra,0x0
    80003688:	034080e7          	jalr	52(ra) # 800036b8 <__printf>
    8000368c:	00048513          	mv	a0,s1
    80003690:	00000097          	auipc	ra,0x0
    80003694:	028080e7          	jalr	40(ra) # 800036b8 <__printf>
    80003698:	00002517          	auipc	a0,0x2
    8000369c:	9a850513          	addi	a0,a0,-1624 # 80005040 <CONSOLE_STATUS+0x30>
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	018080e7          	jalr	24(ra) # 800036b8 <__printf>
    800036a8:	00100793          	li	a5,1
    800036ac:	00003717          	auipc	a4,0x3
    800036b0:	94f72623          	sw	a5,-1716(a4) # 80005ff8 <panicked>
    800036b4:	0000006f          	j	800036b4 <panic+0x58>

00000000800036b8 <__printf>:
    800036b8:	f3010113          	addi	sp,sp,-208
    800036bc:	08813023          	sd	s0,128(sp)
    800036c0:	07313423          	sd	s3,104(sp)
    800036c4:	09010413          	addi	s0,sp,144
    800036c8:	05813023          	sd	s8,64(sp)
    800036cc:	08113423          	sd	ra,136(sp)
    800036d0:	06913c23          	sd	s1,120(sp)
    800036d4:	07213823          	sd	s2,112(sp)
    800036d8:	07413023          	sd	s4,96(sp)
    800036dc:	05513c23          	sd	s5,88(sp)
    800036e0:	05613823          	sd	s6,80(sp)
    800036e4:	05713423          	sd	s7,72(sp)
    800036e8:	03913c23          	sd	s9,56(sp)
    800036ec:	03a13823          	sd	s10,48(sp)
    800036f0:	03b13423          	sd	s11,40(sp)
    800036f4:	00004317          	auipc	t1,0x4
    800036f8:	b8c30313          	addi	t1,t1,-1140 # 80007280 <pr>
    800036fc:	01832c03          	lw	s8,24(t1)
    80003700:	00b43423          	sd	a1,8(s0)
    80003704:	00c43823          	sd	a2,16(s0)
    80003708:	00d43c23          	sd	a3,24(s0)
    8000370c:	02e43023          	sd	a4,32(s0)
    80003710:	02f43423          	sd	a5,40(s0)
    80003714:	03043823          	sd	a6,48(s0)
    80003718:	03143c23          	sd	a7,56(s0)
    8000371c:	00050993          	mv	s3,a0
    80003720:	4a0c1663          	bnez	s8,80003bcc <__printf+0x514>
    80003724:	60098c63          	beqz	s3,80003d3c <__printf+0x684>
    80003728:	0009c503          	lbu	a0,0(s3)
    8000372c:	00840793          	addi	a5,s0,8
    80003730:	f6f43c23          	sd	a5,-136(s0)
    80003734:	00000493          	li	s1,0
    80003738:	22050063          	beqz	a0,80003958 <__printf+0x2a0>
    8000373c:	00002a37          	lui	s4,0x2
    80003740:	00018ab7          	lui	s5,0x18
    80003744:	000f4b37          	lui	s6,0xf4
    80003748:	00989bb7          	lui	s7,0x989
    8000374c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003750:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003754:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003758:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000375c:	00148c9b          	addiw	s9,s1,1
    80003760:	02500793          	li	a5,37
    80003764:	01998933          	add	s2,s3,s9
    80003768:	38f51263          	bne	a0,a5,80003aec <__printf+0x434>
    8000376c:	00094783          	lbu	a5,0(s2)
    80003770:	00078c9b          	sext.w	s9,a5
    80003774:	1e078263          	beqz	a5,80003958 <__printf+0x2a0>
    80003778:	0024849b          	addiw	s1,s1,2
    8000377c:	07000713          	li	a4,112
    80003780:	00998933          	add	s2,s3,s1
    80003784:	38e78a63          	beq	a5,a4,80003b18 <__printf+0x460>
    80003788:	20f76863          	bltu	a4,a5,80003998 <__printf+0x2e0>
    8000378c:	42a78863          	beq	a5,a0,80003bbc <__printf+0x504>
    80003790:	06400713          	li	a4,100
    80003794:	40e79663          	bne	a5,a4,80003ba0 <__printf+0x4e8>
    80003798:	f7843783          	ld	a5,-136(s0)
    8000379c:	0007a603          	lw	a2,0(a5)
    800037a0:	00878793          	addi	a5,a5,8
    800037a4:	f6f43c23          	sd	a5,-136(s0)
    800037a8:	42064a63          	bltz	a2,80003bdc <__printf+0x524>
    800037ac:	00a00713          	li	a4,10
    800037b0:	02e677bb          	remuw	a5,a2,a4
    800037b4:	00002d97          	auipc	s11,0x2
    800037b8:	c04d8d93          	addi	s11,s11,-1020 # 800053b8 <digits>
    800037bc:	00900593          	li	a1,9
    800037c0:	0006051b          	sext.w	a0,a2
    800037c4:	00000c93          	li	s9,0
    800037c8:	02079793          	slli	a5,a5,0x20
    800037cc:	0207d793          	srli	a5,a5,0x20
    800037d0:	00fd87b3          	add	a5,s11,a5
    800037d4:	0007c783          	lbu	a5,0(a5)
    800037d8:	02e656bb          	divuw	a3,a2,a4
    800037dc:	f8f40023          	sb	a5,-128(s0)
    800037e0:	14c5d863          	bge	a1,a2,80003930 <__printf+0x278>
    800037e4:	06300593          	li	a1,99
    800037e8:	00100c93          	li	s9,1
    800037ec:	02e6f7bb          	remuw	a5,a3,a4
    800037f0:	02079793          	slli	a5,a5,0x20
    800037f4:	0207d793          	srli	a5,a5,0x20
    800037f8:	00fd87b3          	add	a5,s11,a5
    800037fc:	0007c783          	lbu	a5,0(a5)
    80003800:	02e6d73b          	divuw	a4,a3,a4
    80003804:	f8f400a3          	sb	a5,-127(s0)
    80003808:	12a5f463          	bgeu	a1,a0,80003930 <__printf+0x278>
    8000380c:	00a00693          	li	a3,10
    80003810:	00900593          	li	a1,9
    80003814:	02d777bb          	remuw	a5,a4,a3
    80003818:	02079793          	slli	a5,a5,0x20
    8000381c:	0207d793          	srli	a5,a5,0x20
    80003820:	00fd87b3          	add	a5,s11,a5
    80003824:	0007c503          	lbu	a0,0(a5)
    80003828:	02d757bb          	divuw	a5,a4,a3
    8000382c:	f8a40123          	sb	a0,-126(s0)
    80003830:	48e5f263          	bgeu	a1,a4,80003cb4 <__printf+0x5fc>
    80003834:	06300513          	li	a0,99
    80003838:	02d7f5bb          	remuw	a1,a5,a3
    8000383c:	02059593          	slli	a1,a1,0x20
    80003840:	0205d593          	srli	a1,a1,0x20
    80003844:	00bd85b3          	add	a1,s11,a1
    80003848:	0005c583          	lbu	a1,0(a1)
    8000384c:	02d7d7bb          	divuw	a5,a5,a3
    80003850:	f8b401a3          	sb	a1,-125(s0)
    80003854:	48e57263          	bgeu	a0,a4,80003cd8 <__printf+0x620>
    80003858:	3e700513          	li	a0,999
    8000385c:	02d7f5bb          	remuw	a1,a5,a3
    80003860:	02059593          	slli	a1,a1,0x20
    80003864:	0205d593          	srli	a1,a1,0x20
    80003868:	00bd85b3          	add	a1,s11,a1
    8000386c:	0005c583          	lbu	a1,0(a1)
    80003870:	02d7d7bb          	divuw	a5,a5,a3
    80003874:	f8b40223          	sb	a1,-124(s0)
    80003878:	46e57663          	bgeu	a0,a4,80003ce4 <__printf+0x62c>
    8000387c:	02d7f5bb          	remuw	a1,a5,a3
    80003880:	02059593          	slli	a1,a1,0x20
    80003884:	0205d593          	srli	a1,a1,0x20
    80003888:	00bd85b3          	add	a1,s11,a1
    8000388c:	0005c583          	lbu	a1,0(a1)
    80003890:	02d7d7bb          	divuw	a5,a5,a3
    80003894:	f8b402a3          	sb	a1,-123(s0)
    80003898:	46ea7863          	bgeu	s4,a4,80003d08 <__printf+0x650>
    8000389c:	02d7f5bb          	remuw	a1,a5,a3
    800038a0:	02059593          	slli	a1,a1,0x20
    800038a4:	0205d593          	srli	a1,a1,0x20
    800038a8:	00bd85b3          	add	a1,s11,a1
    800038ac:	0005c583          	lbu	a1,0(a1)
    800038b0:	02d7d7bb          	divuw	a5,a5,a3
    800038b4:	f8b40323          	sb	a1,-122(s0)
    800038b8:	3eeaf863          	bgeu	s5,a4,80003ca8 <__printf+0x5f0>
    800038bc:	02d7f5bb          	remuw	a1,a5,a3
    800038c0:	02059593          	slli	a1,a1,0x20
    800038c4:	0205d593          	srli	a1,a1,0x20
    800038c8:	00bd85b3          	add	a1,s11,a1
    800038cc:	0005c583          	lbu	a1,0(a1)
    800038d0:	02d7d7bb          	divuw	a5,a5,a3
    800038d4:	f8b403a3          	sb	a1,-121(s0)
    800038d8:	42eb7e63          	bgeu	s6,a4,80003d14 <__printf+0x65c>
    800038dc:	02d7f5bb          	remuw	a1,a5,a3
    800038e0:	02059593          	slli	a1,a1,0x20
    800038e4:	0205d593          	srli	a1,a1,0x20
    800038e8:	00bd85b3          	add	a1,s11,a1
    800038ec:	0005c583          	lbu	a1,0(a1)
    800038f0:	02d7d7bb          	divuw	a5,a5,a3
    800038f4:	f8b40423          	sb	a1,-120(s0)
    800038f8:	42ebfc63          	bgeu	s7,a4,80003d30 <__printf+0x678>
    800038fc:	02079793          	slli	a5,a5,0x20
    80003900:	0207d793          	srli	a5,a5,0x20
    80003904:	00fd8db3          	add	s11,s11,a5
    80003908:	000dc703          	lbu	a4,0(s11)
    8000390c:	00a00793          	li	a5,10
    80003910:	00900c93          	li	s9,9
    80003914:	f8e404a3          	sb	a4,-119(s0)
    80003918:	00065c63          	bgez	a2,80003930 <__printf+0x278>
    8000391c:	f9040713          	addi	a4,s0,-112
    80003920:	00f70733          	add	a4,a4,a5
    80003924:	02d00693          	li	a3,45
    80003928:	fed70823          	sb	a3,-16(a4)
    8000392c:	00078c93          	mv	s9,a5
    80003930:	f8040793          	addi	a5,s0,-128
    80003934:	01978cb3          	add	s9,a5,s9
    80003938:	f7f40d13          	addi	s10,s0,-129
    8000393c:	000cc503          	lbu	a0,0(s9)
    80003940:	fffc8c93          	addi	s9,s9,-1
    80003944:	00000097          	auipc	ra,0x0
    80003948:	b90080e7          	jalr	-1136(ra) # 800034d4 <consputc>
    8000394c:	ffac98e3          	bne	s9,s10,8000393c <__printf+0x284>
    80003950:	00094503          	lbu	a0,0(s2)
    80003954:	e00514e3          	bnez	a0,8000375c <__printf+0xa4>
    80003958:	1a0c1663          	bnez	s8,80003b04 <__printf+0x44c>
    8000395c:	08813083          	ld	ra,136(sp)
    80003960:	08013403          	ld	s0,128(sp)
    80003964:	07813483          	ld	s1,120(sp)
    80003968:	07013903          	ld	s2,112(sp)
    8000396c:	06813983          	ld	s3,104(sp)
    80003970:	06013a03          	ld	s4,96(sp)
    80003974:	05813a83          	ld	s5,88(sp)
    80003978:	05013b03          	ld	s6,80(sp)
    8000397c:	04813b83          	ld	s7,72(sp)
    80003980:	04013c03          	ld	s8,64(sp)
    80003984:	03813c83          	ld	s9,56(sp)
    80003988:	03013d03          	ld	s10,48(sp)
    8000398c:	02813d83          	ld	s11,40(sp)
    80003990:	0d010113          	addi	sp,sp,208
    80003994:	00008067          	ret
    80003998:	07300713          	li	a4,115
    8000399c:	1ce78a63          	beq	a5,a4,80003b70 <__printf+0x4b8>
    800039a0:	07800713          	li	a4,120
    800039a4:	1ee79e63          	bne	a5,a4,80003ba0 <__printf+0x4e8>
    800039a8:	f7843783          	ld	a5,-136(s0)
    800039ac:	0007a703          	lw	a4,0(a5)
    800039b0:	00878793          	addi	a5,a5,8
    800039b4:	f6f43c23          	sd	a5,-136(s0)
    800039b8:	28074263          	bltz	a4,80003c3c <__printf+0x584>
    800039bc:	00002d97          	auipc	s11,0x2
    800039c0:	9fcd8d93          	addi	s11,s11,-1540 # 800053b8 <digits>
    800039c4:	00f77793          	andi	a5,a4,15
    800039c8:	00fd87b3          	add	a5,s11,a5
    800039cc:	0007c683          	lbu	a3,0(a5)
    800039d0:	00f00613          	li	a2,15
    800039d4:	0007079b          	sext.w	a5,a4
    800039d8:	f8d40023          	sb	a3,-128(s0)
    800039dc:	0047559b          	srliw	a1,a4,0x4
    800039e0:	0047569b          	srliw	a3,a4,0x4
    800039e4:	00000c93          	li	s9,0
    800039e8:	0ee65063          	bge	a2,a4,80003ac8 <__printf+0x410>
    800039ec:	00f6f693          	andi	a3,a3,15
    800039f0:	00dd86b3          	add	a3,s11,a3
    800039f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800039f8:	0087d79b          	srliw	a5,a5,0x8
    800039fc:	00100c93          	li	s9,1
    80003a00:	f8d400a3          	sb	a3,-127(s0)
    80003a04:	0cb67263          	bgeu	a2,a1,80003ac8 <__printf+0x410>
    80003a08:	00f7f693          	andi	a3,a5,15
    80003a0c:	00dd86b3          	add	a3,s11,a3
    80003a10:	0006c583          	lbu	a1,0(a3)
    80003a14:	00f00613          	li	a2,15
    80003a18:	0047d69b          	srliw	a3,a5,0x4
    80003a1c:	f8b40123          	sb	a1,-126(s0)
    80003a20:	0047d593          	srli	a1,a5,0x4
    80003a24:	28f67e63          	bgeu	a2,a5,80003cc0 <__printf+0x608>
    80003a28:	00f6f693          	andi	a3,a3,15
    80003a2c:	00dd86b3          	add	a3,s11,a3
    80003a30:	0006c503          	lbu	a0,0(a3)
    80003a34:	0087d813          	srli	a6,a5,0x8
    80003a38:	0087d69b          	srliw	a3,a5,0x8
    80003a3c:	f8a401a3          	sb	a0,-125(s0)
    80003a40:	28b67663          	bgeu	a2,a1,80003ccc <__printf+0x614>
    80003a44:	00f6f693          	andi	a3,a3,15
    80003a48:	00dd86b3          	add	a3,s11,a3
    80003a4c:	0006c583          	lbu	a1,0(a3)
    80003a50:	00c7d513          	srli	a0,a5,0xc
    80003a54:	00c7d69b          	srliw	a3,a5,0xc
    80003a58:	f8b40223          	sb	a1,-124(s0)
    80003a5c:	29067a63          	bgeu	a2,a6,80003cf0 <__printf+0x638>
    80003a60:	00f6f693          	andi	a3,a3,15
    80003a64:	00dd86b3          	add	a3,s11,a3
    80003a68:	0006c583          	lbu	a1,0(a3)
    80003a6c:	0107d813          	srli	a6,a5,0x10
    80003a70:	0107d69b          	srliw	a3,a5,0x10
    80003a74:	f8b402a3          	sb	a1,-123(s0)
    80003a78:	28a67263          	bgeu	a2,a0,80003cfc <__printf+0x644>
    80003a7c:	00f6f693          	andi	a3,a3,15
    80003a80:	00dd86b3          	add	a3,s11,a3
    80003a84:	0006c683          	lbu	a3,0(a3)
    80003a88:	0147d79b          	srliw	a5,a5,0x14
    80003a8c:	f8d40323          	sb	a3,-122(s0)
    80003a90:	21067663          	bgeu	a2,a6,80003c9c <__printf+0x5e4>
    80003a94:	02079793          	slli	a5,a5,0x20
    80003a98:	0207d793          	srli	a5,a5,0x20
    80003a9c:	00fd8db3          	add	s11,s11,a5
    80003aa0:	000dc683          	lbu	a3,0(s11)
    80003aa4:	00800793          	li	a5,8
    80003aa8:	00700c93          	li	s9,7
    80003aac:	f8d403a3          	sb	a3,-121(s0)
    80003ab0:	00075c63          	bgez	a4,80003ac8 <__printf+0x410>
    80003ab4:	f9040713          	addi	a4,s0,-112
    80003ab8:	00f70733          	add	a4,a4,a5
    80003abc:	02d00693          	li	a3,45
    80003ac0:	fed70823          	sb	a3,-16(a4)
    80003ac4:	00078c93          	mv	s9,a5
    80003ac8:	f8040793          	addi	a5,s0,-128
    80003acc:	01978cb3          	add	s9,a5,s9
    80003ad0:	f7f40d13          	addi	s10,s0,-129
    80003ad4:	000cc503          	lbu	a0,0(s9)
    80003ad8:	fffc8c93          	addi	s9,s9,-1
    80003adc:	00000097          	auipc	ra,0x0
    80003ae0:	9f8080e7          	jalr	-1544(ra) # 800034d4 <consputc>
    80003ae4:	ff9d18e3          	bne	s10,s9,80003ad4 <__printf+0x41c>
    80003ae8:	0100006f          	j	80003af8 <__printf+0x440>
    80003aec:	00000097          	auipc	ra,0x0
    80003af0:	9e8080e7          	jalr	-1560(ra) # 800034d4 <consputc>
    80003af4:	000c8493          	mv	s1,s9
    80003af8:	00094503          	lbu	a0,0(s2)
    80003afc:	c60510e3          	bnez	a0,8000375c <__printf+0xa4>
    80003b00:	e40c0ee3          	beqz	s8,8000395c <__printf+0x2a4>
    80003b04:	00003517          	auipc	a0,0x3
    80003b08:	77c50513          	addi	a0,a0,1916 # 80007280 <pr>
    80003b0c:	00001097          	auipc	ra,0x1
    80003b10:	94c080e7          	jalr	-1716(ra) # 80004458 <release>
    80003b14:	e49ff06f          	j	8000395c <__printf+0x2a4>
    80003b18:	f7843783          	ld	a5,-136(s0)
    80003b1c:	03000513          	li	a0,48
    80003b20:	01000d13          	li	s10,16
    80003b24:	00878713          	addi	a4,a5,8
    80003b28:	0007bc83          	ld	s9,0(a5)
    80003b2c:	f6e43c23          	sd	a4,-136(s0)
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	9a4080e7          	jalr	-1628(ra) # 800034d4 <consputc>
    80003b38:	07800513          	li	a0,120
    80003b3c:	00000097          	auipc	ra,0x0
    80003b40:	998080e7          	jalr	-1640(ra) # 800034d4 <consputc>
    80003b44:	00002d97          	auipc	s11,0x2
    80003b48:	874d8d93          	addi	s11,s11,-1932 # 800053b8 <digits>
    80003b4c:	03ccd793          	srli	a5,s9,0x3c
    80003b50:	00fd87b3          	add	a5,s11,a5
    80003b54:	0007c503          	lbu	a0,0(a5)
    80003b58:	fffd0d1b          	addiw	s10,s10,-1
    80003b5c:	004c9c93          	slli	s9,s9,0x4
    80003b60:	00000097          	auipc	ra,0x0
    80003b64:	974080e7          	jalr	-1676(ra) # 800034d4 <consputc>
    80003b68:	fe0d12e3          	bnez	s10,80003b4c <__printf+0x494>
    80003b6c:	f8dff06f          	j	80003af8 <__printf+0x440>
    80003b70:	f7843783          	ld	a5,-136(s0)
    80003b74:	0007bc83          	ld	s9,0(a5)
    80003b78:	00878793          	addi	a5,a5,8
    80003b7c:	f6f43c23          	sd	a5,-136(s0)
    80003b80:	000c9a63          	bnez	s9,80003b94 <__printf+0x4dc>
    80003b84:	1080006f          	j	80003c8c <__printf+0x5d4>
    80003b88:	001c8c93          	addi	s9,s9,1
    80003b8c:	00000097          	auipc	ra,0x0
    80003b90:	948080e7          	jalr	-1720(ra) # 800034d4 <consputc>
    80003b94:	000cc503          	lbu	a0,0(s9)
    80003b98:	fe0518e3          	bnez	a0,80003b88 <__printf+0x4d0>
    80003b9c:	f5dff06f          	j	80003af8 <__printf+0x440>
    80003ba0:	02500513          	li	a0,37
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	930080e7          	jalr	-1744(ra) # 800034d4 <consputc>
    80003bac:	000c8513          	mv	a0,s9
    80003bb0:	00000097          	auipc	ra,0x0
    80003bb4:	924080e7          	jalr	-1756(ra) # 800034d4 <consputc>
    80003bb8:	f41ff06f          	j	80003af8 <__printf+0x440>
    80003bbc:	02500513          	li	a0,37
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	914080e7          	jalr	-1772(ra) # 800034d4 <consputc>
    80003bc8:	f31ff06f          	j	80003af8 <__printf+0x440>
    80003bcc:	00030513          	mv	a0,t1
    80003bd0:	00000097          	auipc	ra,0x0
    80003bd4:	7bc080e7          	jalr	1980(ra) # 8000438c <acquire>
    80003bd8:	b4dff06f          	j	80003724 <__printf+0x6c>
    80003bdc:	40c0053b          	negw	a0,a2
    80003be0:	00a00713          	li	a4,10
    80003be4:	02e576bb          	remuw	a3,a0,a4
    80003be8:	00001d97          	auipc	s11,0x1
    80003bec:	7d0d8d93          	addi	s11,s11,2000 # 800053b8 <digits>
    80003bf0:	ff700593          	li	a1,-9
    80003bf4:	02069693          	slli	a3,a3,0x20
    80003bf8:	0206d693          	srli	a3,a3,0x20
    80003bfc:	00dd86b3          	add	a3,s11,a3
    80003c00:	0006c683          	lbu	a3,0(a3)
    80003c04:	02e557bb          	divuw	a5,a0,a4
    80003c08:	f8d40023          	sb	a3,-128(s0)
    80003c0c:	10b65e63          	bge	a2,a1,80003d28 <__printf+0x670>
    80003c10:	06300593          	li	a1,99
    80003c14:	02e7f6bb          	remuw	a3,a5,a4
    80003c18:	02069693          	slli	a3,a3,0x20
    80003c1c:	0206d693          	srli	a3,a3,0x20
    80003c20:	00dd86b3          	add	a3,s11,a3
    80003c24:	0006c683          	lbu	a3,0(a3)
    80003c28:	02e7d73b          	divuw	a4,a5,a4
    80003c2c:	00200793          	li	a5,2
    80003c30:	f8d400a3          	sb	a3,-127(s0)
    80003c34:	bca5ece3          	bltu	a1,a0,8000380c <__printf+0x154>
    80003c38:	ce5ff06f          	j	8000391c <__printf+0x264>
    80003c3c:	40e007bb          	negw	a5,a4
    80003c40:	00001d97          	auipc	s11,0x1
    80003c44:	778d8d93          	addi	s11,s11,1912 # 800053b8 <digits>
    80003c48:	00f7f693          	andi	a3,a5,15
    80003c4c:	00dd86b3          	add	a3,s11,a3
    80003c50:	0006c583          	lbu	a1,0(a3)
    80003c54:	ff100613          	li	a2,-15
    80003c58:	0047d69b          	srliw	a3,a5,0x4
    80003c5c:	f8b40023          	sb	a1,-128(s0)
    80003c60:	0047d59b          	srliw	a1,a5,0x4
    80003c64:	0ac75e63          	bge	a4,a2,80003d20 <__printf+0x668>
    80003c68:	00f6f693          	andi	a3,a3,15
    80003c6c:	00dd86b3          	add	a3,s11,a3
    80003c70:	0006c603          	lbu	a2,0(a3)
    80003c74:	00f00693          	li	a3,15
    80003c78:	0087d79b          	srliw	a5,a5,0x8
    80003c7c:	f8c400a3          	sb	a2,-127(s0)
    80003c80:	d8b6e4e3          	bltu	a3,a1,80003a08 <__printf+0x350>
    80003c84:	00200793          	li	a5,2
    80003c88:	e2dff06f          	j	80003ab4 <__printf+0x3fc>
    80003c8c:	00001c97          	auipc	s9,0x1
    80003c90:	70cc8c93          	addi	s9,s9,1804 # 80005398 <_ZZ12printIntegermE6digits+0x148>
    80003c94:	02800513          	li	a0,40
    80003c98:	ef1ff06f          	j	80003b88 <__printf+0x4d0>
    80003c9c:	00700793          	li	a5,7
    80003ca0:	00600c93          	li	s9,6
    80003ca4:	e0dff06f          	j	80003ab0 <__printf+0x3f8>
    80003ca8:	00700793          	li	a5,7
    80003cac:	00600c93          	li	s9,6
    80003cb0:	c69ff06f          	j	80003918 <__printf+0x260>
    80003cb4:	00300793          	li	a5,3
    80003cb8:	00200c93          	li	s9,2
    80003cbc:	c5dff06f          	j	80003918 <__printf+0x260>
    80003cc0:	00300793          	li	a5,3
    80003cc4:	00200c93          	li	s9,2
    80003cc8:	de9ff06f          	j	80003ab0 <__printf+0x3f8>
    80003ccc:	00400793          	li	a5,4
    80003cd0:	00300c93          	li	s9,3
    80003cd4:	dddff06f          	j	80003ab0 <__printf+0x3f8>
    80003cd8:	00400793          	li	a5,4
    80003cdc:	00300c93          	li	s9,3
    80003ce0:	c39ff06f          	j	80003918 <__printf+0x260>
    80003ce4:	00500793          	li	a5,5
    80003ce8:	00400c93          	li	s9,4
    80003cec:	c2dff06f          	j	80003918 <__printf+0x260>
    80003cf0:	00500793          	li	a5,5
    80003cf4:	00400c93          	li	s9,4
    80003cf8:	db9ff06f          	j	80003ab0 <__printf+0x3f8>
    80003cfc:	00600793          	li	a5,6
    80003d00:	00500c93          	li	s9,5
    80003d04:	dadff06f          	j	80003ab0 <__printf+0x3f8>
    80003d08:	00600793          	li	a5,6
    80003d0c:	00500c93          	li	s9,5
    80003d10:	c09ff06f          	j	80003918 <__printf+0x260>
    80003d14:	00800793          	li	a5,8
    80003d18:	00700c93          	li	s9,7
    80003d1c:	bfdff06f          	j	80003918 <__printf+0x260>
    80003d20:	00100793          	li	a5,1
    80003d24:	d91ff06f          	j	80003ab4 <__printf+0x3fc>
    80003d28:	00100793          	li	a5,1
    80003d2c:	bf1ff06f          	j	8000391c <__printf+0x264>
    80003d30:	00900793          	li	a5,9
    80003d34:	00800c93          	li	s9,8
    80003d38:	be1ff06f          	j	80003918 <__printf+0x260>
    80003d3c:	00001517          	auipc	a0,0x1
    80003d40:	66450513          	addi	a0,a0,1636 # 800053a0 <_ZZ12printIntegermE6digits+0x150>
    80003d44:	00000097          	auipc	ra,0x0
    80003d48:	918080e7          	jalr	-1768(ra) # 8000365c <panic>

0000000080003d4c <printfinit>:
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00813823          	sd	s0,16(sp)
    80003d54:	00913423          	sd	s1,8(sp)
    80003d58:	00113c23          	sd	ra,24(sp)
    80003d5c:	02010413          	addi	s0,sp,32
    80003d60:	00003497          	auipc	s1,0x3
    80003d64:	52048493          	addi	s1,s1,1312 # 80007280 <pr>
    80003d68:	00048513          	mv	a0,s1
    80003d6c:	00001597          	auipc	a1,0x1
    80003d70:	64458593          	addi	a1,a1,1604 # 800053b0 <_ZZ12printIntegermE6digits+0x160>
    80003d74:	00000097          	auipc	ra,0x0
    80003d78:	5f4080e7          	jalr	1524(ra) # 80004368 <initlock>
    80003d7c:	01813083          	ld	ra,24(sp)
    80003d80:	01013403          	ld	s0,16(sp)
    80003d84:	0004ac23          	sw	zero,24(s1)
    80003d88:	00813483          	ld	s1,8(sp)
    80003d8c:	02010113          	addi	sp,sp,32
    80003d90:	00008067          	ret

0000000080003d94 <uartinit>:
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00813423          	sd	s0,8(sp)
    80003d9c:	01010413          	addi	s0,sp,16
    80003da0:	100007b7          	lui	a5,0x10000
    80003da4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003da8:	f8000713          	li	a4,-128
    80003dac:	00e781a3          	sb	a4,3(a5)
    80003db0:	00300713          	li	a4,3
    80003db4:	00e78023          	sb	a4,0(a5)
    80003db8:	000780a3          	sb	zero,1(a5)
    80003dbc:	00e781a3          	sb	a4,3(a5)
    80003dc0:	00700693          	li	a3,7
    80003dc4:	00d78123          	sb	a3,2(a5)
    80003dc8:	00e780a3          	sb	a4,1(a5)
    80003dcc:	00813403          	ld	s0,8(sp)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret

0000000080003dd8 <uartputc>:
    80003dd8:	00002797          	auipc	a5,0x2
    80003ddc:	2207a783          	lw	a5,544(a5) # 80005ff8 <panicked>
    80003de0:	00078463          	beqz	a5,80003de8 <uartputc+0x10>
    80003de4:	0000006f          	j	80003de4 <uartputc+0xc>
    80003de8:	fd010113          	addi	sp,sp,-48
    80003dec:	02813023          	sd	s0,32(sp)
    80003df0:	00913c23          	sd	s1,24(sp)
    80003df4:	01213823          	sd	s2,16(sp)
    80003df8:	01313423          	sd	s3,8(sp)
    80003dfc:	02113423          	sd	ra,40(sp)
    80003e00:	03010413          	addi	s0,sp,48
    80003e04:	00002917          	auipc	s2,0x2
    80003e08:	1fc90913          	addi	s2,s2,508 # 80006000 <uart_tx_r>
    80003e0c:	00093783          	ld	a5,0(s2)
    80003e10:	00002497          	auipc	s1,0x2
    80003e14:	1f848493          	addi	s1,s1,504 # 80006008 <uart_tx_w>
    80003e18:	0004b703          	ld	a4,0(s1)
    80003e1c:	02078693          	addi	a3,a5,32
    80003e20:	00050993          	mv	s3,a0
    80003e24:	02e69c63          	bne	a3,a4,80003e5c <uartputc+0x84>
    80003e28:	00001097          	auipc	ra,0x1
    80003e2c:	834080e7          	jalr	-1996(ra) # 8000465c <push_on>
    80003e30:	00093783          	ld	a5,0(s2)
    80003e34:	0004b703          	ld	a4,0(s1)
    80003e38:	02078793          	addi	a5,a5,32
    80003e3c:	00e79463          	bne	a5,a4,80003e44 <uartputc+0x6c>
    80003e40:	0000006f          	j	80003e40 <uartputc+0x68>
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	88c080e7          	jalr	-1908(ra) # 800046d0 <pop_on>
    80003e4c:	00093783          	ld	a5,0(s2)
    80003e50:	0004b703          	ld	a4,0(s1)
    80003e54:	02078693          	addi	a3,a5,32
    80003e58:	fce688e3          	beq	a3,a4,80003e28 <uartputc+0x50>
    80003e5c:	01f77693          	andi	a3,a4,31
    80003e60:	00003597          	auipc	a1,0x3
    80003e64:	44058593          	addi	a1,a1,1088 # 800072a0 <uart_tx_buf>
    80003e68:	00d586b3          	add	a3,a1,a3
    80003e6c:	00170713          	addi	a4,a4,1
    80003e70:	01368023          	sb	s3,0(a3)
    80003e74:	00e4b023          	sd	a4,0(s1)
    80003e78:	10000637          	lui	a2,0x10000
    80003e7c:	02f71063          	bne	a4,a5,80003e9c <uartputc+0xc4>
    80003e80:	0340006f          	j	80003eb4 <uartputc+0xdc>
    80003e84:	00074703          	lbu	a4,0(a4)
    80003e88:	00f93023          	sd	a5,0(s2)
    80003e8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003e90:	00093783          	ld	a5,0(s2)
    80003e94:	0004b703          	ld	a4,0(s1)
    80003e98:	00f70e63          	beq	a4,a5,80003eb4 <uartputc+0xdc>
    80003e9c:	00564683          	lbu	a3,5(a2)
    80003ea0:	01f7f713          	andi	a4,a5,31
    80003ea4:	00e58733          	add	a4,a1,a4
    80003ea8:	0206f693          	andi	a3,a3,32
    80003eac:	00178793          	addi	a5,a5,1
    80003eb0:	fc069ae3          	bnez	a3,80003e84 <uartputc+0xac>
    80003eb4:	02813083          	ld	ra,40(sp)
    80003eb8:	02013403          	ld	s0,32(sp)
    80003ebc:	01813483          	ld	s1,24(sp)
    80003ec0:	01013903          	ld	s2,16(sp)
    80003ec4:	00813983          	ld	s3,8(sp)
    80003ec8:	03010113          	addi	sp,sp,48
    80003ecc:	00008067          	ret

0000000080003ed0 <uartputc_sync>:
    80003ed0:	ff010113          	addi	sp,sp,-16
    80003ed4:	00813423          	sd	s0,8(sp)
    80003ed8:	01010413          	addi	s0,sp,16
    80003edc:	00002717          	auipc	a4,0x2
    80003ee0:	11c72703          	lw	a4,284(a4) # 80005ff8 <panicked>
    80003ee4:	02071663          	bnez	a4,80003f10 <uartputc_sync+0x40>
    80003ee8:	00050793          	mv	a5,a0
    80003eec:	100006b7          	lui	a3,0x10000
    80003ef0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003ef4:	02077713          	andi	a4,a4,32
    80003ef8:	fe070ce3          	beqz	a4,80003ef0 <uartputc_sync+0x20>
    80003efc:	0ff7f793          	andi	a5,a5,255
    80003f00:	00f68023          	sb	a5,0(a3)
    80003f04:	00813403          	ld	s0,8(sp)
    80003f08:	01010113          	addi	sp,sp,16
    80003f0c:	00008067          	ret
    80003f10:	0000006f          	j	80003f10 <uartputc_sync+0x40>

0000000080003f14 <uartstart>:
    80003f14:	ff010113          	addi	sp,sp,-16
    80003f18:	00813423          	sd	s0,8(sp)
    80003f1c:	01010413          	addi	s0,sp,16
    80003f20:	00002617          	auipc	a2,0x2
    80003f24:	0e060613          	addi	a2,a2,224 # 80006000 <uart_tx_r>
    80003f28:	00002517          	auipc	a0,0x2
    80003f2c:	0e050513          	addi	a0,a0,224 # 80006008 <uart_tx_w>
    80003f30:	00063783          	ld	a5,0(a2)
    80003f34:	00053703          	ld	a4,0(a0)
    80003f38:	04f70263          	beq	a4,a5,80003f7c <uartstart+0x68>
    80003f3c:	100005b7          	lui	a1,0x10000
    80003f40:	00003817          	auipc	a6,0x3
    80003f44:	36080813          	addi	a6,a6,864 # 800072a0 <uart_tx_buf>
    80003f48:	01c0006f          	j	80003f64 <uartstart+0x50>
    80003f4c:	0006c703          	lbu	a4,0(a3)
    80003f50:	00f63023          	sd	a5,0(a2)
    80003f54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f58:	00063783          	ld	a5,0(a2)
    80003f5c:	00053703          	ld	a4,0(a0)
    80003f60:	00f70e63          	beq	a4,a5,80003f7c <uartstart+0x68>
    80003f64:	01f7f713          	andi	a4,a5,31
    80003f68:	00e806b3          	add	a3,a6,a4
    80003f6c:	0055c703          	lbu	a4,5(a1)
    80003f70:	00178793          	addi	a5,a5,1
    80003f74:	02077713          	andi	a4,a4,32
    80003f78:	fc071ae3          	bnez	a4,80003f4c <uartstart+0x38>
    80003f7c:	00813403          	ld	s0,8(sp)
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret

0000000080003f88 <uartgetc>:
    80003f88:	ff010113          	addi	sp,sp,-16
    80003f8c:	00813423          	sd	s0,8(sp)
    80003f90:	01010413          	addi	s0,sp,16
    80003f94:	10000737          	lui	a4,0x10000
    80003f98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003f9c:	0017f793          	andi	a5,a5,1
    80003fa0:	00078c63          	beqz	a5,80003fb8 <uartgetc+0x30>
    80003fa4:	00074503          	lbu	a0,0(a4)
    80003fa8:	0ff57513          	andi	a0,a0,255
    80003fac:	00813403          	ld	s0,8(sp)
    80003fb0:	01010113          	addi	sp,sp,16
    80003fb4:	00008067          	ret
    80003fb8:	fff00513          	li	a0,-1
    80003fbc:	ff1ff06f          	j	80003fac <uartgetc+0x24>

0000000080003fc0 <uartintr>:
    80003fc0:	100007b7          	lui	a5,0x10000
    80003fc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003fc8:	0017f793          	andi	a5,a5,1
    80003fcc:	0a078463          	beqz	a5,80004074 <uartintr+0xb4>
    80003fd0:	fe010113          	addi	sp,sp,-32
    80003fd4:	00813823          	sd	s0,16(sp)
    80003fd8:	00913423          	sd	s1,8(sp)
    80003fdc:	00113c23          	sd	ra,24(sp)
    80003fe0:	02010413          	addi	s0,sp,32
    80003fe4:	100004b7          	lui	s1,0x10000
    80003fe8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003fec:	0ff57513          	andi	a0,a0,255
    80003ff0:	fffff097          	auipc	ra,0xfffff
    80003ff4:	534080e7          	jalr	1332(ra) # 80003524 <consoleintr>
    80003ff8:	0054c783          	lbu	a5,5(s1)
    80003ffc:	0017f793          	andi	a5,a5,1
    80004000:	fe0794e3          	bnez	a5,80003fe8 <uartintr+0x28>
    80004004:	00002617          	auipc	a2,0x2
    80004008:	ffc60613          	addi	a2,a2,-4 # 80006000 <uart_tx_r>
    8000400c:	00002517          	auipc	a0,0x2
    80004010:	ffc50513          	addi	a0,a0,-4 # 80006008 <uart_tx_w>
    80004014:	00063783          	ld	a5,0(a2)
    80004018:	00053703          	ld	a4,0(a0)
    8000401c:	04f70263          	beq	a4,a5,80004060 <uartintr+0xa0>
    80004020:	100005b7          	lui	a1,0x10000
    80004024:	00003817          	auipc	a6,0x3
    80004028:	27c80813          	addi	a6,a6,636 # 800072a0 <uart_tx_buf>
    8000402c:	01c0006f          	j	80004048 <uartintr+0x88>
    80004030:	0006c703          	lbu	a4,0(a3)
    80004034:	00f63023          	sd	a5,0(a2)
    80004038:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000403c:	00063783          	ld	a5,0(a2)
    80004040:	00053703          	ld	a4,0(a0)
    80004044:	00f70e63          	beq	a4,a5,80004060 <uartintr+0xa0>
    80004048:	01f7f713          	andi	a4,a5,31
    8000404c:	00e806b3          	add	a3,a6,a4
    80004050:	0055c703          	lbu	a4,5(a1)
    80004054:	00178793          	addi	a5,a5,1
    80004058:	02077713          	andi	a4,a4,32
    8000405c:	fc071ae3          	bnez	a4,80004030 <uartintr+0x70>
    80004060:	01813083          	ld	ra,24(sp)
    80004064:	01013403          	ld	s0,16(sp)
    80004068:	00813483          	ld	s1,8(sp)
    8000406c:	02010113          	addi	sp,sp,32
    80004070:	00008067          	ret
    80004074:	00002617          	auipc	a2,0x2
    80004078:	f8c60613          	addi	a2,a2,-116 # 80006000 <uart_tx_r>
    8000407c:	00002517          	auipc	a0,0x2
    80004080:	f8c50513          	addi	a0,a0,-116 # 80006008 <uart_tx_w>
    80004084:	00063783          	ld	a5,0(a2)
    80004088:	00053703          	ld	a4,0(a0)
    8000408c:	04f70263          	beq	a4,a5,800040d0 <uartintr+0x110>
    80004090:	100005b7          	lui	a1,0x10000
    80004094:	00003817          	auipc	a6,0x3
    80004098:	20c80813          	addi	a6,a6,524 # 800072a0 <uart_tx_buf>
    8000409c:	01c0006f          	j	800040b8 <uartintr+0xf8>
    800040a0:	0006c703          	lbu	a4,0(a3)
    800040a4:	00f63023          	sd	a5,0(a2)
    800040a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800040ac:	00063783          	ld	a5,0(a2)
    800040b0:	00053703          	ld	a4,0(a0)
    800040b4:	02f70063          	beq	a4,a5,800040d4 <uartintr+0x114>
    800040b8:	01f7f713          	andi	a4,a5,31
    800040bc:	00e806b3          	add	a3,a6,a4
    800040c0:	0055c703          	lbu	a4,5(a1)
    800040c4:	00178793          	addi	a5,a5,1
    800040c8:	02077713          	andi	a4,a4,32
    800040cc:	fc071ae3          	bnez	a4,800040a0 <uartintr+0xe0>
    800040d0:	00008067          	ret
    800040d4:	00008067          	ret

00000000800040d8 <kinit>:
    800040d8:	fc010113          	addi	sp,sp,-64
    800040dc:	02913423          	sd	s1,40(sp)
    800040e0:	fffff7b7          	lui	a5,0xfffff
    800040e4:	00004497          	auipc	s1,0x4
    800040e8:	1db48493          	addi	s1,s1,475 # 800082bf <end+0xfff>
    800040ec:	02813823          	sd	s0,48(sp)
    800040f0:	01313c23          	sd	s3,24(sp)
    800040f4:	00f4f4b3          	and	s1,s1,a5
    800040f8:	02113c23          	sd	ra,56(sp)
    800040fc:	03213023          	sd	s2,32(sp)
    80004100:	01413823          	sd	s4,16(sp)
    80004104:	01513423          	sd	s5,8(sp)
    80004108:	04010413          	addi	s0,sp,64
    8000410c:	000017b7          	lui	a5,0x1
    80004110:	01100993          	li	s3,17
    80004114:	00f487b3          	add	a5,s1,a5
    80004118:	01b99993          	slli	s3,s3,0x1b
    8000411c:	06f9e063          	bltu	s3,a5,8000417c <kinit+0xa4>
    80004120:	00003a97          	auipc	s5,0x3
    80004124:	1a0a8a93          	addi	s5,s5,416 # 800072c0 <end>
    80004128:	0754ec63          	bltu	s1,s5,800041a0 <kinit+0xc8>
    8000412c:	0734fa63          	bgeu	s1,s3,800041a0 <kinit+0xc8>
    80004130:	00088a37          	lui	s4,0x88
    80004134:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004138:	00002917          	auipc	s2,0x2
    8000413c:	ed890913          	addi	s2,s2,-296 # 80006010 <kmem>
    80004140:	00ca1a13          	slli	s4,s4,0xc
    80004144:	0140006f          	j	80004158 <kinit+0x80>
    80004148:	000017b7          	lui	a5,0x1
    8000414c:	00f484b3          	add	s1,s1,a5
    80004150:	0554e863          	bltu	s1,s5,800041a0 <kinit+0xc8>
    80004154:	0534f663          	bgeu	s1,s3,800041a0 <kinit+0xc8>
    80004158:	00001637          	lui	a2,0x1
    8000415c:	00100593          	li	a1,1
    80004160:	00048513          	mv	a0,s1
    80004164:	00000097          	auipc	ra,0x0
    80004168:	5e4080e7          	jalr	1508(ra) # 80004748 <__memset>
    8000416c:	00093783          	ld	a5,0(s2)
    80004170:	00f4b023          	sd	a5,0(s1)
    80004174:	00993023          	sd	s1,0(s2)
    80004178:	fd4498e3          	bne	s1,s4,80004148 <kinit+0x70>
    8000417c:	03813083          	ld	ra,56(sp)
    80004180:	03013403          	ld	s0,48(sp)
    80004184:	02813483          	ld	s1,40(sp)
    80004188:	02013903          	ld	s2,32(sp)
    8000418c:	01813983          	ld	s3,24(sp)
    80004190:	01013a03          	ld	s4,16(sp)
    80004194:	00813a83          	ld	s5,8(sp)
    80004198:	04010113          	addi	sp,sp,64
    8000419c:	00008067          	ret
    800041a0:	00001517          	auipc	a0,0x1
    800041a4:	23050513          	addi	a0,a0,560 # 800053d0 <digits+0x18>
    800041a8:	fffff097          	auipc	ra,0xfffff
    800041ac:	4b4080e7          	jalr	1204(ra) # 8000365c <panic>

00000000800041b0 <freerange>:
    800041b0:	fc010113          	addi	sp,sp,-64
    800041b4:	000017b7          	lui	a5,0x1
    800041b8:	02913423          	sd	s1,40(sp)
    800041bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800041c0:	009504b3          	add	s1,a0,s1
    800041c4:	fffff537          	lui	a0,0xfffff
    800041c8:	02813823          	sd	s0,48(sp)
    800041cc:	02113c23          	sd	ra,56(sp)
    800041d0:	03213023          	sd	s2,32(sp)
    800041d4:	01313c23          	sd	s3,24(sp)
    800041d8:	01413823          	sd	s4,16(sp)
    800041dc:	01513423          	sd	s5,8(sp)
    800041e0:	01613023          	sd	s6,0(sp)
    800041e4:	04010413          	addi	s0,sp,64
    800041e8:	00a4f4b3          	and	s1,s1,a0
    800041ec:	00f487b3          	add	a5,s1,a5
    800041f0:	06f5e463          	bltu	a1,a5,80004258 <freerange+0xa8>
    800041f4:	00003a97          	auipc	s5,0x3
    800041f8:	0cca8a93          	addi	s5,s5,204 # 800072c0 <end>
    800041fc:	0954e263          	bltu	s1,s5,80004280 <freerange+0xd0>
    80004200:	01100993          	li	s3,17
    80004204:	01b99993          	slli	s3,s3,0x1b
    80004208:	0734fc63          	bgeu	s1,s3,80004280 <freerange+0xd0>
    8000420c:	00058a13          	mv	s4,a1
    80004210:	00002917          	auipc	s2,0x2
    80004214:	e0090913          	addi	s2,s2,-512 # 80006010 <kmem>
    80004218:	00002b37          	lui	s6,0x2
    8000421c:	0140006f          	j	80004230 <freerange+0x80>
    80004220:	000017b7          	lui	a5,0x1
    80004224:	00f484b3          	add	s1,s1,a5
    80004228:	0554ec63          	bltu	s1,s5,80004280 <freerange+0xd0>
    8000422c:	0534fa63          	bgeu	s1,s3,80004280 <freerange+0xd0>
    80004230:	00001637          	lui	a2,0x1
    80004234:	00100593          	li	a1,1
    80004238:	00048513          	mv	a0,s1
    8000423c:	00000097          	auipc	ra,0x0
    80004240:	50c080e7          	jalr	1292(ra) # 80004748 <__memset>
    80004244:	00093703          	ld	a4,0(s2)
    80004248:	016487b3          	add	a5,s1,s6
    8000424c:	00e4b023          	sd	a4,0(s1)
    80004250:	00993023          	sd	s1,0(s2)
    80004254:	fcfa76e3          	bgeu	s4,a5,80004220 <freerange+0x70>
    80004258:	03813083          	ld	ra,56(sp)
    8000425c:	03013403          	ld	s0,48(sp)
    80004260:	02813483          	ld	s1,40(sp)
    80004264:	02013903          	ld	s2,32(sp)
    80004268:	01813983          	ld	s3,24(sp)
    8000426c:	01013a03          	ld	s4,16(sp)
    80004270:	00813a83          	ld	s5,8(sp)
    80004274:	00013b03          	ld	s6,0(sp)
    80004278:	04010113          	addi	sp,sp,64
    8000427c:	00008067          	ret
    80004280:	00001517          	auipc	a0,0x1
    80004284:	15050513          	addi	a0,a0,336 # 800053d0 <digits+0x18>
    80004288:	fffff097          	auipc	ra,0xfffff
    8000428c:	3d4080e7          	jalr	980(ra) # 8000365c <panic>

0000000080004290 <kfree>:
    80004290:	fe010113          	addi	sp,sp,-32
    80004294:	00813823          	sd	s0,16(sp)
    80004298:	00113c23          	sd	ra,24(sp)
    8000429c:	00913423          	sd	s1,8(sp)
    800042a0:	02010413          	addi	s0,sp,32
    800042a4:	03451793          	slli	a5,a0,0x34
    800042a8:	04079c63          	bnez	a5,80004300 <kfree+0x70>
    800042ac:	00003797          	auipc	a5,0x3
    800042b0:	01478793          	addi	a5,a5,20 # 800072c0 <end>
    800042b4:	00050493          	mv	s1,a0
    800042b8:	04f56463          	bltu	a0,a5,80004300 <kfree+0x70>
    800042bc:	01100793          	li	a5,17
    800042c0:	01b79793          	slli	a5,a5,0x1b
    800042c4:	02f57e63          	bgeu	a0,a5,80004300 <kfree+0x70>
    800042c8:	00001637          	lui	a2,0x1
    800042cc:	00100593          	li	a1,1
    800042d0:	00000097          	auipc	ra,0x0
    800042d4:	478080e7          	jalr	1144(ra) # 80004748 <__memset>
    800042d8:	00002797          	auipc	a5,0x2
    800042dc:	d3878793          	addi	a5,a5,-712 # 80006010 <kmem>
    800042e0:	0007b703          	ld	a4,0(a5)
    800042e4:	01813083          	ld	ra,24(sp)
    800042e8:	01013403          	ld	s0,16(sp)
    800042ec:	00e4b023          	sd	a4,0(s1)
    800042f0:	0097b023          	sd	s1,0(a5)
    800042f4:	00813483          	ld	s1,8(sp)
    800042f8:	02010113          	addi	sp,sp,32
    800042fc:	00008067          	ret
    80004300:	00001517          	auipc	a0,0x1
    80004304:	0d050513          	addi	a0,a0,208 # 800053d0 <digits+0x18>
    80004308:	fffff097          	auipc	ra,0xfffff
    8000430c:	354080e7          	jalr	852(ra) # 8000365c <panic>

0000000080004310 <kalloc>:
    80004310:	fe010113          	addi	sp,sp,-32
    80004314:	00813823          	sd	s0,16(sp)
    80004318:	00913423          	sd	s1,8(sp)
    8000431c:	00113c23          	sd	ra,24(sp)
    80004320:	02010413          	addi	s0,sp,32
    80004324:	00002797          	auipc	a5,0x2
    80004328:	cec78793          	addi	a5,a5,-788 # 80006010 <kmem>
    8000432c:	0007b483          	ld	s1,0(a5)
    80004330:	02048063          	beqz	s1,80004350 <kalloc+0x40>
    80004334:	0004b703          	ld	a4,0(s1)
    80004338:	00001637          	lui	a2,0x1
    8000433c:	00500593          	li	a1,5
    80004340:	00048513          	mv	a0,s1
    80004344:	00e7b023          	sd	a4,0(a5)
    80004348:	00000097          	auipc	ra,0x0
    8000434c:	400080e7          	jalr	1024(ra) # 80004748 <__memset>
    80004350:	01813083          	ld	ra,24(sp)
    80004354:	01013403          	ld	s0,16(sp)
    80004358:	00048513          	mv	a0,s1
    8000435c:	00813483          	ld	s1,8(sp)
    80004360:	02010113          	addi	sp,sp,32
    80004364:	00008067          	ret

0000000080004368 <initlock>:
    80004368:	ff010113          	addi	sp,sp,-16
    8000436c:	00813423          	sd	s0,8(sp)
    80004370:	01010413          	addi	s0,sp,16
    80004374:	00813403          	ld	s0,8(sp)
    80004378:	00b53423          	sd	a1,8(a0)
    8000437c:	00052023          	sw	zero,0(a0)
    80004380:	00053823          	sd	zero,16(a0)
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00008067          	ret

000000008000438c <acquire>:
    8000438c:	fe010113          	addi	sp,sp,-32
    80004390:	00813823          	sd	s0,16(sp)
    80004394:	00913423          	sd	s1,8(sp)
    80004398:	00113c23          	sd	ra,24(sp)
    8000439c:	01213023          	sd	s2,0(sp)
    800043a0:	02010413          	addi	s0,sp,32
    800043a4:	00050493          	mv	s1,a0
    800043a8:	10002973          	csrr	s2,sstatus
    800043ac:	100027f3          	csrr	a5,sstatus
    800043b0:	ffd7f793          	andi	a5,a5,-3
    800043b4:	10079073          	csrw	sstatus,a5
    800043b8:	fffff097          	auipc	ra,0xfffff
    800043bc:	8ec080e7          	jalr	-1812(ra) # 80002ca4 <mycpu>
    800043c0:	07852783          	lw	a5,120(a0)
    800043c4:	06078e63          	beqz	a5,80004440 <acquire+0xb4>
    800043c8:	fffff097          	auipc	ra,0xfffff
    800043cc:	8dc080e7          	jalr	-1828(ra) # 80002ca4 <mycpu>
    800043d0:	07852783          	lw	a5,120(a0)
    800043d4:	0004a703          	lw	a4,0(s1)
    800043d8:	0017879b          	addiw	a5,a5,1
    800043dc:	06f52c23          	sw	a5,120(a0)
    800043e0:	04071063          	bnez	a4,80004420 <acquire+0x94>
    800043e4:	00100713          	li	a4,1
    800043e8:	00070793          	mv	a5,a4
    800043ec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800043f0:	0007879b          	sext.w	a5,a5
    800043f4:	fe079ae3          	bnez	a5,800043e8 <acquire+0x5c>
    800043f8:	0ff0000f          	fence
    800043fc:	fffff097          	auipc	ra,0xfffff
    80004400:	8a8080e7          	jalr	-1880(ra) # 80002ca4 <mycpu>
    80004404:	01813083          	ld	ra,24(sp)
    80004408:	01013403          	ld	s0,16(sp)
    8000440c:	00a4b823          	sd	a0,16(s1)
    80004410:	00013903          	ld	s2,0(sp)
    80004414:	00813483          	ld	s1,8(sp)
    80004418:	02010113          	addi	sp,sp,32
    8000441c:	00008067          	ret
    80004420:	0104b903          	ld	s2,16(s1)
    80004424:	fffff097          	auipc	ra,0xfffff
    80004428:	880080e7          	jalr	-1920(ra) # 80002ca4 <mycpu>
    8000442c:	faa91ce3          	bne	s2,a0,800043e4 <acquire+0x58>
    80004430:	00001517          	auipc	a0,0x1
    80004434:	fa850513          	addi	a0,a0,-88 # 800053d8 <digits+0x20>
    80004438:	fffff097          	auipc	ra,0xfffff
    8000443c:	224080e7          	jalr	548(ra) # 8000365c <panic>
    80004440:	00195913          	srli	s2,s2,0x1
    80004444:	fffff097          	auipc	ra,0xfffff
    80004448:	860080e7          	jalr	-1952(ra) # 80002ca4 <mycpu>
    8000444c:	00197913          	andi	s2,s2,1
    80004450:	07252e23          	sw	s2,124(a0)
    80004454:	f75ff06f          	j	800043c8 <acquire+0x3c>

0000000080004458 <release>:
    80004458:	fe010113          	addi	sp,sp,-32
    8000445c:	00813823          	sd	s0,16(sp)
    80004460:	00113c23          	sd	ra,24(sp)
    80004464:	00913423          	sd	s1,8(sp)
    80004468:	01213023          	sd	s2,0(sp)
    8000446c:	02010413          	addi	s0,sp,32
    80004470:	00052783          	lw	a5,0(a0)
    80004474:	00079a63          	bnez	a5,80004488 <release+0x30>
    80004478:	00001517          	auipc	a0,0x1
    8000447c:	f6850513          	addi	a0,a0,-152 # 800053e0 <digits+0x28>
    80004480:	fffff097          	auipc	ra,0xfffff
    80004484:	1dc080e7          	jalr	476(ra) # 8000365c <panic>
    80004488:	01053903          	ld	s2,16(a0)
    8000448c:	00050493          	mv	s1,a0
    80004490:	fffff097          	auipc	ra,0xfffff
    80004494:	814080e7          	jalr	-2028(ra) # 80002ca4 <mycpu>
    80004498:	fea910e3          	bne	s2,a0,80004478 <release+0x20>
    8000449c:	0004b823          	sd	zero,16(s1)
    800044a0:	0ff0000f          	fence
    800044a4:	0f50000f          	fence	iorw,ow
    800044a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800044ac:	ffffe097          	auipc	ra,0xffffe
    800044b0:	7f8080e7          	jalr	2040(ra) # 80002ca4 <mycpu>
    800044b4:	100027f3          	csrr	a5,sstatus
    800044b8:	0027f793          	andi	a5,a5,2
    800044bc:	04079a63          	bnez	a5,80004510 <release+0xb8>
    800044c0:	07852783          	lw	a5,120(a0)
    800044c4:	02f05e63          	blez	a5,80004500 <release+0xa8>
    800044c8:	fff7871b          	addiw	a4,a5,-1
    800044cc:	06e52c23          	sw	a4,120(a0)
    800044d0:	00071c63          	bnez	a4,800044e8 <release+0x90>
    800044d4:	07c52783          	lw	a5,124(a0)
    800044d8:	00078863          	beqz	a5,800044e8 <release+0x90>
    800044dc:	100027f3          	csrr	a5,sstatus
    800044e0:	0027e793          	ori	a5,a5,2
    800044e4:	10079073          	csrw	sstatus,a5
    800044e8:	01813083          	ld	ra,24(sp)
    800044ec:	01013403          	ld	s0,16(sp)
    800044f0:	00813483          	ld	s1,8(sp)
    800044f4:	00013903          	ld	s2,0(sp)
    800044f8:	02010113          	addi	sp,sp,32
    800044fc:	00008067          	ret
    80004500:	00001517          	auipc	a0,0x1
    80004504:	f0050513          	addi	a0,a0,-256 # 80005400 <digits+0x48>
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	154080e7          	jalr	340(ra) # 8000365c <panic>
    80004510:	00001517          	auipc	a0,0x1
    80004514:	ed850513          	addi	a0,a0,-296 # 800053e8 <digits+0x30>
    80004518:	fffff097          	auipc	ra,0xfffff
    8000451c:	144080e7          	jalr	324(ra) # 8000365c <panic>

0000000080004520 <holding>:
    80004520:	00052783          	lw	a5,0(a0)
    80004524:	00079663          	bnez	a5,80004530 <holding+0x10>
    80004528:	00000513          	li	a0,0
    8000452c:	00008067          	ret
    80004530:	fe010113          	addi	sp,sp,-32
    80004534:	00813823          	sd	s0,16(sp)
    80004538:	00913423          	sd	s1,8(sp)
    8000453c:	00113c23          	sd	ra,24(sp)
    80004540:	02010413          	addi	s0,sp,32
    80004544:	01053483          	ld	s1,16(a0)
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	75c080e7          	jalr	1884(ra) # 80002ca4 <mycpu>
    80004550:	01813083          	ld	ra,24(sp)
    80004554:	01013403          	ld	s0,16(sp)
    80004558:	40a48533          	sub	a0,s1,a0
    8000455c:	00153513          	seqz	a0,a0
    80004560:	00813483          	ld	s1,8(sp)
    80004564:	02010113          	addi	sp,sp,32
    80004568:	00008067          	ret

000000008000456c <push_off>:
    8000456c:	fe010113          	addi	sp,sp,-32
    80004570:	00813823          	sd	s0,16(sp)
    80004574:	00113c23          	sd	ra,24(sp)
    80004578:	00913423          	sd	s1,8(sp)
    8000457c:	02010413          	addi	s0,sp,32
    80004580:	100024f3          	csrr	s1,sstatus
    80004584:	100027f3          	csrr	a5,sstatus
    80004588:	ffd7f793          	andi	a5,a5,-3
    8000458c:	10079073          	csrw	sstatus,a5
    80004590:	ffffe097          	auipc	ra,0xffffe
    80004594:	714080e7          	jalr	1812(ra) # 80002ca4 <mycpu>
    80004598:	07852783          	lw	a5,120(a0)
    8000459c:	02078663          	beqz	a5,800045c8 <push_off+0x5c>
    800045a0:	ffffe097          	auipc	ra,0xffffe
    800045a4:	704080e7          	jalr	1796(ra) # 80002ca4 <mycpu>
    800045a8:	07852783          	lw	a5,120(a0)
    800045ac:	01813083          	ld	ra,24(sp)
    800045b0:	01013403          	ld	s0,16(sp)
    800045b4:	0017879b          	addiw	a5,a5,1
    800045b8:	06f52c23          	sw	a5,120(a0)
    800045bc:	00813483          	ld	s1,8(sp)
    800045c0:	02010113          	addi	sp,sp,32
    800045c4:	00008067          	ret
    800045c8:	0014d493          	srli	s1,s1,0x1
    800045cc:	ffffe097          	auipc	ra,0xffffe
    800045d0:	6d8080e7          	jalr	1752(ra) # 80002ca4 <mycpu>
    800045d4:	0014f493          	andi	s1,s1,1
    800045d8:	06952e23          	sw	s1,124(a0)
    800045dc:	fc5ff06f          	j	800045a0 <push_off+0x34>

00000000800045e0 <pop_off>:
    800045e0:	ff010113          	addi	sp,sp,-16
    800045e4:	00813023          	sd	s0,0(sp)
    800045e8:	00113423          	sd	ra,8(sp)
    800045ec:	01010413          	addi	s0,sp,16
    800045f0:	ffffe097          	auipc	ra,0xffffe
    800045f4:	6b4080e7          	jalr	1716(ra) # 80002ca4 <mycpu>
    800045f8:	100027f3          	csrr	a5,sstatus
    800045fc:	0027f793          	andi	a5,a5,2
    80004600:	04079663          	bnez	a5,8000464c <pop_off+0x6c>
    80004604:	07852783          	lw	a5,120(a0)
    80004608:	02f05a63          	blez	a5,8000463c <pop_off+0x5c>
    8000460c:	fff7871b          	addiw	a4,a5,-1
    80004610:	06e52c23          	sw	a4,120(a0)
    80004614:	00071c63          	bnez	a4,8000462c <pop_off+0x4c>
    80004618:	07c52783          	lw	a5,124(a0)
    8000461c:	00078863          	beqz	a5,8000462c <pop_off+0x4c>
    80004620:	100027f3          	csrr	a5,sstatus
    80004624:	0027e793          	ori	a5,a5,2
    80004628:	10079073          	csrw	sstatus,a5
    8000462c:	00813083          	ld	ra,8(sp)
    80004630:	00013403          	ld	s0,0(sp)
    80004634:	01010113          	addi	sp,sp,16
    80004638:	00008067          	ret
    8000463c:	00001517          	auipc	a0,0x1
    80004640:	dc450513          	addi	a0,a0,-572 # 80005400 <digits+0x48>
    80004644:	fffff097          	auipc	ra,0xfffff
    80004648:	018080e7          	jalr	24(ra) # 8000365c <panic>
    8000464c:	00001517          	auipc	a0,0x1
    80004650:	d9c50513          	addi	a0,a0,-612 # 800053e8 <digits+0x30>
    80004654:	fffff097          	auipc	ra,0xfffff
    80004658:	008080e7          	jalr	8(ra) # 8000365c <panic>

000000008000465c <push_on>:
    8000465c:	fe010113          	addi	sp,sp,-32
    80004660:	00813823          	sd	s0,16(sp)
    80004664:	00113c23          	sd	ra,24(sp)
    80004668:	00913423          	sd	s1,8(sp)
    8000466c:	02010413          	addi	s0,sp,32
    80004670:	100024f3          	csrr	s1,sstatus
    80004674:	100027f3          	csrr	a5,sstatus
    80004678:	0027e793          	ori	a5,a5,2
    8000467c:	10079073          	csrw	sstatus,a5
    80004680:	ffffe097          	auipc	ra,0xffffe
    80004684:	624080e7          	jalr	1572(ra) # 80002ca4 <mycpu>
    80004688:	07852783          	lw	a5,120(a0)
    8000468c:	02078663          	beqz	a5,800046b8 <push_on+0x5c>
    80004690:	ffffe097          	auipc	ra,0xffffe
    80004694:	614080e7          	jalr	1556(ra) # 80002ca4 <mycpu>
    80004698:	07852783          	lw	a5,120(a0)
    8000469c:	01813083          	ld	ra,24(sp)
    800046a0:	01013403          	ld	s0,16(sp)
    800046a4:	0017879b          	addiw	a5,a5,1
    800046a8:	06f52c23          	sw	a5,120(a0)
    800046ac:	00813483          	ld	s1,8(sp)
    800046b0:	02010113          	addi	sp,sp,32
    800046b4:	00008067          	ret
    800046b8:	0014d493          	srli	s1,s1,0x1
    800046bc:	ffffe097          	auipc	ra,0xffffe
    800046c0:	5e8080e7          	jalr	1512(ra) # 80002ca4 <mycpu>
    800046c4:	0014f493          	andi	s1,s1,1
    800046c8:	06952e23          	sw	s1,124(a0)
    800046cc:	fc5ff06f          	j	80004690 <push_on+0x34>

00000000800046d0 <pop_on>:
    800046d0:	ff010113          	addi	sp,sp,-16
    800046d4:	00813023          	sd	s0,0(sp)
    800046d8:	00113423          	sd	ra,8(sp)
    800046dc:	01010413          	addi	s0,sp,16
    800046e0:	ffffe097          	auipc	ra,0xffffe
    800046e4:	5c4080e7          	jalr	1476(ra) # 80002ca4 <mycpu>
    800046e8:	100027f3          	csrr	a5,sstatus
    800046ec:	0027f793          	andi	a5,a5,2
    800046f0:	04078463          	beqz	a5,80004738 <pop_on+0x68>
    800046f4:	07852783          	lw	a5,120(a0)
    800046f8:	02f05863          	blez	a5,80004728 <pop_on+0x58>
    800046fc:	fff7879b          	addiw	a5,a5,-1
    80004700:	06f52c23          	sw	a5,120(a0)
    80004704:	07853783          	ld	a5,120(a0)
    80004708:	00079863          	bnez	a5,80004718 <pop_on+0x48>
    8000470c:	100027f3          	csrr	a5,sstatus
    80004710:	ffd7f793          	andi	a5,a5,-3
    80004714:	10079073          	csrw	sstatus,a5
    80004718:	00813083          	ld	ra,8(sp)
    8000471c:	00013403          	ld	s0,0(sp)
    80004720:	01010113          	addi	sp,sp,16
    80004724:	00008067          	ret
    80004728:	00001517          	auipc	a0,0x1
    8000472c:	d0050513          	addi	a0,a0,-768 # 80005428 <digits+0x70>
    80004730:	fffff097          	auipc	ra,0xfffff
    80004734:	f2c080e7          	jalr	-212(ra) # 8000365c <panic>
    80004738:	00001517          	auipc	a0,0x1
    8000473c:	cd050513          	addi	a0,a0,-816 # 80005408 <digits+0x50>
    80004740:	fffff097          	auipc	ra,0xfffff
    80004744:	f1c080e7          	jalr	-228(ra) # 8000365c <panic>

0000000080004748 <__memset>:
    80004748:	ff010113          	addi	sp,sp,-16
    8000474c:	00813423          	sd	s0,8(sp)
    80004750:	01010413          	addi	s0,sp,16
    80004754:	1a060e63          	beqz	a2,80004910 <__memset+0x1c8>
    80004758:	40a007b3          	neg	a5,a0
    8000475c:	0077f793          	andi	a5,a5,7
    80004760:	00778693          	addi	a3,a5,7
    80004764:	00b00813          	li	a6,11
    80004768:	0ff5f593          	andi	a1,a1,255
    8000476c:	fff6071b          	addiw	a4,a2,-1
    80004770:	1b06e663          	bltu	a3,a6,8000491c <__memset+0x1d4>
    80004774:	1cd76463          	bltu	a4,a3,8000493c <__memset+0x1f4>
    80004778:	1a078e63          	beqz	a5,80004934 <__memset+0x1ec>
    8000477c:	00b50023          	sb	a1,0(a0)
    80004780:	00100713          	li	a4,1
    80004784:	1ae78463          	beq	a5,a4,8000492c <__memset+0x1e4>
    80004788:	00b500a3          	sb	a1,1(a0)
    8000478c:	00200713          	li	a4,2
    80004790:	1ae78a63          	beq	a5,a4,80004944 <__memset+0x1fc>
    80004794:	00b50123          	sb	a1,2(a0)
    80004798:	00300713          	li	a4,3
    8000479c:	18e78463          	beq	a5,a4,80004924 <__memset+0x1dc>
    800047a0:	00b501a3          	sb	a1,3(a0)
    800047a4:	00400713          	li	a4,4
    800047a8:	1ae78263          	beq	a5,a4,8000494c <__memset+0x204>
    800047ac:	00b50223          	sb	a1,4(a0)
    800047b0:	00500713          	li	a4,5
    800047b4:	1ae78063          	beq	a5,a4,80004954 <__memset+0x20c>
    800047b8:	00b502a3          	sb	a1,5(a0)
    800047bc:	00700713          	li	a4,7
    800047c0:	18e79e63          	bne	a5,a4,8000495c <__memset+0x214>
    800047c4:	00b50323          	sb	a1,6(a0)
    800047c8:	00700e93          	li	t4,7
    800047cc:	00859713          	slli	a4,a1,0x8
    800047d0:	00e5e733          	or	a4,a1,a4
    800047d4:	01059e13          	slli	t3,a1,0x10
    800047d8:	01c76e33          	or	t3,a4,t3
    800047dc:	01859313          	slli	t1,a1,0x18
    800047e0:	006e6333          	or	t1,t3,t1
    800047e4:	02059893          	slli	a7,a1,0x20
    800047e8:	40f60e3b          	subw	t3,a2,a5
    800047ec:	011368b3          	or	a7,t1,a7
    800047f0:	02859813          	slli	a6,a1,0x28
    800047f4:	0108e833          	or	a6,a7,a6
    800047f8:	03059693          	slli	a3,a1,0x30
    800047fc:	003e589b          	srliw	a7,t3,0x3
    80004800:	00d866b3          	or	a3,a6,a3
    80004804:	03859713          	slli	a4,a1,0x38
    80004808:	00389813          	slli	a6,a7,0x3
    8000480c:	00f507b3          	add	a5,a0,a5
    80004810:	00e6e733          	or	a4,a3,a4
    80004814:	000e089b          	sext.w	a7,t3
    80004818:	00f806b3          	add	a3,a6,a5
    8000481c:	00e7b023          	sd	a4,0(a5)
    80004820:	00878793          	addi	a5,a5,8
    80004824:	fed79ce3          	bne	a5,a3,8000481c <__memset+0xd4>
    80004828:	ff8e7793          	andi	a5,t3,-8
    8000482c:	0007871b          	sext.w	a4,a5
    80004830:	01d787bb          	addw	a5,a5,t4
    80004834:	0ce88e63          	beq	a7,a4,80004910 <__memset+0x1c8>
    80004838:	00f50733          	add	a4,a0,a5
    8000483c:	00b70023          	sb	a1,0(a4)
    80004840:	0017871b          	addiw	a4,a5,1
    80004844:	0cc77663          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    80004848:	00e50733          	add	a4,a0,a4
    8000484c:	00b70023          	sb	a1,0(a4)
    80004850:	0027871b          	addiw	a4,a5,2
    80004854:	0ac77e63          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    80004858:	00e50733          	add	a4,a0,a4
    8000485c:	00b70023          	sb	a1,0(a4)
    80004860:	0037871b          	addiw	a4,a5,3
    80004864:	0ac77663          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    80004868:	00e50733          	add	a4,a0,a4
    8000486c:	00b70023          	sb	a1,0(a4)
    80004870:	0047871b          	addiw	a4,a5,4
    80004874:	08c77e63          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    80004878:	00e50733          	add	a4,a0,a4
    8000487c:	00b70023          	sb	a1,0(a4)
    80004880:	0057871b          	addiw	a4,a5,5
    80004884:	08c77663          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    80004888:	00e50733          	add	a4,a0,a4
    8000488c:	00b70023          	sb	a1,0(a4)
    80004890:	0067871b          	addiw	a4,a5,6
    80004894:	06c77e63          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    80004898:	00e50733          	add	a4,a0,a4
    8000489c:	00b70023          	sb	a1,0(a4)
    800048a0:	0077871b          	addiw	a4,a5,7
    800048a4:	06c77663          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    800048a8:	00e50733          	add	a4,a0,a4
    800048ac:	00b70023          	sb	a1,0(a4)
    800048b0:	0087871b          	addiw	a4,a5,8
    800048b4:	04c77e63          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    800048b8:	00e50733          	add	a4,a0,a4
    800048bc:	00b70023          	sb	a1,0(a4)
    800048c0:	0097871b          	addiw	a4,a5,9
    800048c4:	04c77663          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    800048c8:	00e50733          	add	a4,a0,a4
    800048cc:	00b70023          	sb	a1,0(a4)
    800048d0:	00a7871b          	addiw	a4,a5,10
    800048d4:	02c77e63          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    800048d8:	00e50733          	add	a4,a0,a4
    800048dc:	00b70023          	sb	a1,0(a4)
    800048e0:	00b7871b          	addiw	a4,a5,11
    800048e4:	02c77663          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    800048e8:	00e50733          	add	a4,a0,a4
    800048ec:	00b70023          	sb	a1,0(a4)
    800048f0:	00c7871b          	addiw	a4,a5,12
    800048f4:	00c77e63          	bgeu	a4,a2,80004910 <__memset+0x1c8>
    800048f8:	00e50733          	add	a4,a0,a4
    800048fc:	00b70023          	sb	a1,0(a4)
    80004900:	00d7879b          	addiw	a5,a5,13
    80004904:	00c7f663          	bgeu	a5,a2,80004910 <__memset+0x1c8>
    80004908:	00f507b3          	add	a5,a0,a5
    8000490c:	00b78023          	sb	a1,0(a5)
    80004910:	00813403          	ld	s0,8(sp)
    80004914:	01010113          	addi	sp,sp,16
    80004918:	00008067          	ret
    8000491c:	00b00693          	li	a3,11
    80004920:	e55ff06f          	j	80004774 <__memset+0x2c>
    80004924:	00300e93          	li	t4,3
    80004928:	ea5ff06f          	j	800047cc <__memset+0x84>
    8000492c:	00100e93          	li	t4,1
    80004930:	e9dff06f          	j	800047cc <__memset+0x84>
    80004934:	00000e93          	li	t4,0
    80004938:	e95ff06f          	j	800047cc <__memset+0x84>
    8000493c:	00000793          	li	a5,0
    80004940:	ef9ff06f          	j	80004838 <__memset+0xf0>
    80004944:	00200e93          	li	t4,2
    80004948:	e85ff06f          	j	800047cc <__memset+0x84>
    8000494c:	00400e93          	li	t4,4
    80004950:	e7dff06f          	j	800047cc <__memset+0x84>
    80004954:	00500e93          	li	t4,5
    80004958:	e75ff06f          	j	800047cc <__memset+0x84>
    8000495c:	00600e93          	li	t4,6
    80004960:	e6dff06f          	j	800047cc <__memset+0x84>

0000000080004964 <__memmove>:
    80004964:	ff010113          	addi	sp,sp,-16
    80004968:	00813423          	sd	s0,8(sp)
    8000496c:	01010413          	addi	s0,sp,16
    80004970:	0e060863          	beqz	a2,80004a60 <__memmove+0xfc>
    80004974:	fff6069b          	addiw	a3,a2,-1
    80004978:	0006881b          	sext.w	a6,a3
    8000497c:	0ea5e863          	bltu	a1,a0,80004a6c <__memmove+0x108>
    80004980:	00758713          	addi	a4,a1,7
    80004984:	00a5e7b3          	or	a5,a1,a0
    80004988:	40a70733          	sub	a4,a4,a0
    8000498c:	0077f793          	andi	a5,a5,7
    80004990:	00f73713          	sltiu	a4,a4,15
    80004994:	00174713          	xori	a4,a4,1
    80004998:	0017b793          	seqz	a5,a5
    8000499c:	00e7f7b3          	and	a5,a5,a4
    800049a0:	10078863          	beqz	a5,80004ab0 <__memmove+0x14c>
    800049a4:	00900793          	li	a5,9
    800049a8:	1107f463          	bgeu	a5,a6,80004ab0 <__memmove+0x14c>
    800049ac:	0036581b          	srliw	a6,a2,0x3
    800049b0:	fff8081b          	addiw	a6,a6,-1
    800049b4:	02081813          	slli	a6,a6,0x20
    800049b8:	01d85893          	srli	a7,a6,0x1d
    800049bc:	00858813          	addi	a6,a1,8
    800049c0:	00058793          	mv	a5,a1
    800049c4:	00050713          	mv	a4,a0
    800049c8:	01088833          	add	a6,a7,a6
    800049cc:	0007b883          	ld	a7,0(a5)
    800049d0:	00878793          	addi	a5,a5,8
    800049d4:	00870713          	addi	a4,a4,8
    800049d8:	ff173c23          	sd	a7,-8(a4)
    800049dc:	ff0798e3          	bne	a5,a6,800049cc <__memmove+0x68>
    800049e0:	ff867713          	andi	a4,a2,-8
    800049e4:	02071793          	slli	a5,a4,0x20
    800049e8:	0207d793          	srli	a5,a5,0x20
    800049ec:	00f585b3          	add	a1,a1,a5
    800049f0:	40e686bb          	subw	a3,a3,a4
    800049f4:	00f507b3          	add	a5,a0,a5
    800049f8:	06e60463          	beq	a2,a4,80004a60 <__memmove+0xfc>
    800049fc:	0005c703          	lbu	a4,0(a1)
    80004a00:	00e78023          	sb	a4,0(a5)
    80004a04:	04068e63          	beqz	a3,80004a60 <__memmove+0xfc>
    80004a08:	0015c603          	lbu	a2,1(a1)
    80004a0c:	00100713          	li	a4,1
    80004a10:	00c780a3          	sb	a2,1(a5)
    80004a14:	04e68663          	beq	a3,a4,80004a60 <__memmove+0xfc>
    80004a18:	0025c603          	lbu	a2,2(a1)
    80004a1c:	00200713          	li	a4,2
    80004a20:	00c78123          	sb	a2,2(a5)
    80004a24:	02e68e63          	beq	a3,a4,80004a60 <__memmove+0xfc>
    80004a28:	0035c603          	lbu	a2,3(a1)
    80004a2c:	00300713          	li	a4,3
    80004a30:	00c781a3          	sb	a2,3(a5)
    80004a34:	02e68663          	beq	a3,a4,80004a60 <__memmove+0xfc>
    80004a38:	0045c603          	lbu	a2,4(a1)
    80004a3c:	00400713          	li	a4,4
    80004a40:	00c78223          	sb	a2,4(a5)
    80004a44:	00e68e63          	beq	a3,a4,80004a60 <__memmove+0xfc>
    80004a48:	0055c603          	lbu	a2,5(a1)
    80004a4c:	00500713          	li	a4,5
    80004a50:	00c782a3          	sb	a2,5(a5)
    80004a54:	00e68663          	beq	a3,a4,80004a60 <__memmove+0xfc>
    80004a58:	0065c703          	lbu	a4,6(a1)
    80004a5c:	00e78323          	sb	a4,6(a5)
    80004a60:	00813403          	ld	s0,8(sp)
    80004a64:	01010113          	addi	sp,sp,16
    80004a68:	00008067          	ret
    80004a6c:	02061713          	slli	a4,a2,0x20
    80004a70:	02075713          	srli	a4,a4,0x20
    80004a74:	00e587b3          	add	a5,a1,a4
    80004a78:	f0f574e3          	bgeu	a0,a5,80004980 <__memmove+0x1c>
    80004a7c:	02069613          	slli	a2,a3,0x20
    80004a80:	02065613          	srli	a2,a2,0x20
    80004a84:	fff64613          	not	a2,a2
    80004a88:	00e50733          	add	a4,a0,a4
    80004a8c:	00c78633          	add	a2,a5,a2
    80004a90:	fff7c683          	lbu	a3,-1(a5)
    80004a94:	fff78793          	addi	a5,a5,-1
    80004a98:	fff70713          	addi	a4,a4,-1
    80004a9c:	00d70023          	sb	a3,0(a4)
    80004aa0:	fec798e3          	bne	a5,a2,80004a90 <__memmove+0x12c>
    80004aa4:	00813403          	ld	s0,8(sp)
    80004aa8:	01010113          	addi	sp,sp,16
    80004aac:	00008067          	ret
    80004ab0:	02069713          	slli	a4,a3,0x20
    80004ab4:	02075713          	srli	a4,a4,0x20
    80004ab8:	00170713          	addi	a4,a4,1
    80004abc:	00e50733          	add	a4,a0,a4
    80004ac0:	00050793          	mv	a5,a0
    80004ac4:	0005c683          	lbu	a3,0(a1)
    80004ac8:	00178793          	addi	a5,a5,1
    80004acc:	00158593          	addi	a1,a1,1
    80004ad0:	fed78fa3          	sb	a3,-1(a5)
    80004ad4:	fee798e3          	bne	a5,a4,80004ac4 <__memmove+0x160>
    80004ad8:	f89ff06f          	j	80004a60 <__memmove+0xfc>

0000000080004adc <__putc>:
    80004adc:	fe010113          	addi	sp,sp,-32
    80004ae0:	00813823          	sd	s0,16(sp)
    80004ae4:	00113c23          	sd	ra,24(sp)
    80004ae8:	02010413          	addi	s0,sp,32
    80004aec:	00050793          	mv	a5,a0
    80004af0:	fef40593          	addi	a1,s0,-17
    80004af4:	00100613          	li	a2,1
    80004af8:	00000513          	li	a0,0
    80004afc:	fef407a3          	sb	a5,-17(s0)
    80004b00:	fffff097          	auipc	ra,0xfffff
    80004b04:	b3c080e7          	jalr	-1220(ra) # 8000363c <console_write>
    80004b08:	01813083          	ld	ra,24(sp)
    80004b0c:	01013403          	ld	s0,16(sp)
    80004b10:	02010113          	addi	sp,sp,32
    80004b14:	00008067          	ret

0000000080004b18 <__getc>:
    80004b18:	fe010113          	addi	sp,sp,-32
    80004b1c:	00813823          	sd	s0,16(sp)
    80004b20:	00113c23          	sd	ra,24(sp)
    80004b24:	02010413          	addi	s0,sp,32
    80004b28:	fe840593          	addi	a1,s0,-24
    80004b2c:	00100613          	li	a2,1
    80004b30:	00000513          	li	a0,0
    80004b34:	fffff097          	auipc	ra,0xfffff
    80004b38:	ae8080e7          	jalr	-1304(ra) # 8000361c <console_read>
    80004b3c:	fe844503          	lbu	a0,-24(s0)
    80004b40:	01813083          	ld	ra,24(sp)
    80004b44:	01013403          	ld	s0,16(sp)
    80004b48:	02010113          	addi	sp,sp,32
    80004b4c:	00008067          	ret

0000000080004b50 <console_handler>:
    80004b50:	fe010113          	addi	sp,sp,-32
    80004b54:	00813823          	sd	s0,16(sp)
    80004b58:	00113c23          	sd	ra,24(sp)
    80004b5c:	00913423          	sd	s1,8(sp)
    80004b60:	02010413          	addi	s0,sp,32
    80004b64:	14202773          	csrr	a4,scause
    80004b68:	100027f3          	csrr	a5,sstatus
    80004b6c:	0027f793          	andi	a5,a5,2
    80004b70:	06079e63          	bnez	a5,80004bec <console_handler+0x9c>
    80004b74:	00074c63          	bltz	a4,80004b8c <console_handler+0x3c>
    80004b78:	01813083          	ld	ra,24(sp)
    80004b7c:	01013403          	ld	s0,16(sp)
    80004b80:	00813483          	ld	s1,8(sp)
    80004b84:	02010113          	addi	sp,sp,32
    80004b88:	00008067          	ret
    80004b8c:	0ff77713          	andi	a4,a4,255
    80004b90:	00900793          	li	a5,9
    80004b94:	fef712e3          	bne	a4,a5,80004b78 <console_handler+0x28>
    80004b98:	ffffe097          	auipc	ra,0xffffe
    80004b9c:	6dc080e7          	jalr	1756(ra) # 80003274 <plic_claim>
    80004ba0:	00a00793          	li	a5,10
    80004ba4:	00050493          	mv	s1,a0
    80004ba8:	02f50c63          	beq	a0,a5,80004be0 <console_handler+0x90>
    80004bac:	fc0506e3          	beqz	a0,80004b78 <console_handler+0x28>
    80004bb0:	00050593          	mv	a1,a0
    80004bb4:	00000517          	auipc	a0,0x0
    80004bb8:	77c50513          	addi	a0,a0,1916 # 80005330 <_ZZ12printIntegermE6digits+0xe0>
    80004bbc:	fffff097          	auipc	ra,0xfffff
    80004bc0:	afc080e7          	jalr	-1284(ra) # 800036b8 <__printf>
    80004bc4:	01013403          	ld	s0,16(sp)
    80004bc8:	01813083          	ld	ra,24(sp)
    80004bcc:	00048513          	mv	a0,s1
    80004bd0:	00813483          	ld	s1,8(sp)
    80004bd4:	02010113          	addi	sp,sp,32
    80004bd8:	ffffe317          	auipc	t1,0xffffe
    80004bdc:	6d430067          	jr	1748(t1) # 800032ac <plic_complete>
    80004be0:	fffff097          	auipc	ra,0xfffff
    80004be4:	3e0080e7          	jalr	992(ra) # 80003fc0 <uartintr>
    80004be8:	fddff06f          	j	80004bc4 <console_handler+0x74>
    80004bec:	00001517          	auipc	a0,0x1
    80004bf0:	84450513          	addi	a0,a0,-1980 # 80005430 <digits+0x78>
    80004bf4:	fffff097          	auipc	ra,0xfffff
    80004bf8:	a68080e7          	jalr	-1432(ra) # 8000365c <panic>
	...
