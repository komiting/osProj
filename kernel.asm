
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	97013103          	ld	sp,-1680(sp) # 80005970 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	284020ef          	jal	ra,800022a0 <start>

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
    80001184:	2a9000ef          	jal	ra,80001c2c <_ZN5Riscv20handleSupervisorTrapEv>
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
    80001314:	00050993          	mv	s3,a0
    80001318:	00058913          	mv	s2,a1
    8000131c:	00060493          	mv	s1,a2
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
    __asm__ volatile("mv a0, %0"::"r"(THREAD_CREATE));
    80001330:	01100793          	li	a5,17
    80001334:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001338:	00098593          	mv	a1,s3
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    8000133c:	00090613          	mv	a2,s2
    __asm__ volatile("mv a3, %0"::"r"(arg));
    80001340:	00048693          	mv	a3,s1
    __asm__ volatile("mv a4, %0"::"r"(addr));
    80001344:	00050713          	mv	a4,a0
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
    __asm__ volatile("mv a0, %0"::"r"(SEM_OPEN));
    800013e4:	02100793          	li	a5,33
    800013e8:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800013ec:	00050593          	mv	a1,a0
    __asm__ volatile("mv a2, %0"::"r"(init));
    800013f0:	00058613          	mv	a2,a1
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
    __asm__ volatile("mv a0, %0"::"r"(SEM_CLOSE));
    80001420:	02200793          	li	a5,34
    80001424:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001428:	00050593          	mv	a1,a0
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
    __asm__ volatile("mv a0, %0"::"r"(SEM_WAIT));
    80001458:	02300793          	li	a5,35
    8000145c:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001460:	00050593          	mv	a1,a0
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
    __asm__ volatile("mv a0, %0"::"r"(SEM_SIGNAL));
    80001490:	02400793          	li	a5,36
    80001494:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001498:	00050593          	mv	a1,a0
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
    __asm__ volatile("mv a0, %0"::"r"(TIME_SLEEP));
    800014c8:	03100793          	li	a5,49
    800014cc:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0"::"r"(tajmara));
    800014d0:	00050593          	mv	a1,a0
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
    __asm__ volatile("mv a0, %0"::"r"(PUTC));
    80001534:	04200793          	li	a5,66
    80001538:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0"::"r"(c));
    8000153c:	00050593          	mv	a1,a0
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
    800015bc:	410080e7          	jalr	1040(ra) # 800019c8 <_ZN3TCB5yieldEv>
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
    80001620:	b58080e7          	jalr	-1192(ra) # 80002174 <_Z11printStringPKc>
        printInteger(i);
    80001624:	00048513          	mv	a0,s1
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	bbc080e7          	jalr	-1092(ra) # 800021e4 <_Z12printIntegerm>
        printString("\n");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	a1050513          	addi	a0,a0,-1520 # 80005040 <CONSOLE_STATUS+0x30>
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	b3c080e7          	jalr	-1220(ra) # 80002174 <_Z11printStringPKc>
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
    800016b8:	ac0080e7          	jalr	-1344(ra) # 80002174 <_Z11printStringPKc>
        printInteger(i);
    800016bc:	00048513          	mv	a0,s1
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	b24080e7          	jalr	-1244(ra) # 800021e4 <_Z12printIntegerm>
        printString("\n");
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	97850513          	addi	a0,a0,-1672 # 80005040 <CONSOLE_STATUS+0x30>
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	aa4080e7          	jalr	-1372(ra) # 80002174 <_Z11printStringPKc>
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
    80001720:	a58080e7          	jalr	-1448(ra) # 80002174 <_Z11printStringPKc>
        printInteger(i);
    80001724:	00048513          	mv	a0,s1
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	abc080e7          	jalr	-1348(ra) # 800021e4 <_Z12printIntegerm>
        printString("\n");
    80001730:	00004517          	auipc	a0,0x4
    80001734:	91050513          	addi	a0,a0,-1776 # 80005040 <CONSOLE_STATUS+0x30>
    80001738:	00001097          	auipc	ra,0x1
    8000173c:	a3c080e7          	jalr	-1476(ra) # 80002174 <_Z11printStringPKc>
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
    8000175c:	a1c080e7          	jalr	-1508(ra) # 80002174 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001760:	00700313          	li	t1,7
    TCB::yield();
    80001764:	00000097          	auipc	ra,0x0
    80001768:	264080e7          	jalr	612(ra) # 800019c8 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000176c:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001770:	00004517          	auipc	a0,0x4
    80001774:	8d850513          	addi	a0,a0,-1832 # 80005048 <CONSOLE_STATUS+0x38>
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	9fc080e7          	jalr	-1540(ra) # 80002174 <_Z11printStringPKc>
    printInteger(t1);
    80001780:	00090513          	mv	a0,s2
    80001784:	00001097          	auipc	ra,0x1
    80001788:	a60080e7          	jalr	-1440(ra) # 800021e4 <_Z12printIntegerm>
    printString("\n");
    8000178c:	00004517          	auipc	a0,0x4
    80001790:	8b450513          	addi	a0,a0,-1868 # 80005040 <CONSOLE_STATUS+0x30>
    80001794:	00001097          	auipc	ra,0x1
    80001798:	9e0080e7          	jalr	-1568(ra) # 80002174 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000179c:	00c00513          	li	a0,12
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	db0080e7          	jalr	-592(ra) # 80001550 <_ZL9fibonaccim>
    800017a8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800017ac:	00004517          	auipc	a0,0x4
    800017b0:	8a450513          	addi	a0,a0,-1884 # 80005050 <CONSOLE_STATUS+0x40>
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	9c0080e7          	jalr	-1600(ra) # 80002174 <_Z11printStringPKc>
    printInteger(result);
    800017bc:	00090513          	mv	a0,s2
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	a24080e7          	jalr	-1500(ra) # 800021e4 <_Z12printIntegerm>
    printString("\n");
    800017c8:	00004517          	auipc	a0,0x4
    800017cc:	87850513          	addi	a0,a0,-1928 # 80005040 <CONSOLE_STATUS+0x30>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	9a4080e7          	jalr	-1628(ra) # 80002174 <_Z11printStringPKc>
    800017d8:	0380006f          	j	80001810 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800017dc:	00004517          	auipc	a0,0x4
    800017e0:	85450513          	addi	a0,a0,-1964 # 80005030 <CONSOLE_STATUS+0x20>
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	990080e7          	jalr	-1648(ra) # 80002174 <_Z11printStringPKc>
        printInteger(i);
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	9f4080e7          	jalr	-1548(ra) # 800021e4 <_Z12printIntegerm>
        printString("\n");
    800017f8:	00004517          	auipc	a0,0x4
    800017fc:	84850513          	addi	a0,a0,-1976 # 80005040 <CONSOLE_STATUS+0x30>
    80001800:	00001097          	auipc	ra,0x1
    80001804:	974080e7          	jalr	-1676(ra) # 80002174 <_Z11printStringPKc>
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
    8000185c:	91c080e7          	jalr	-1764(ra) # 80002174 <_Z11printStringPKc>
        printInteger(i);
    80001860:	00048513          	mv	a0,s1
    80001864:	00001097          	auipc	ra,0x1
    80001868:	980080e7          	jalr	-1664(ra) # 800021e4 <_Z12printIntegerm>
        printString("\n");
    8000186c:	00003517          	auipc	a0,0x3
    80001870:	7d450513          	addi	a0,a0,2004 # 80005040 <CONSOLE_STATUS+0x30>
    80001874:	00001097          	auipc	ra,0x1
    80001878:	900080e7          	jalr	-1792(ra) # 80002174 <_Z11printStringPKc>
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
    80001898:	8e0080e7          	jalr	-1824(ra) # 80002174 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000189c:	00500313          	li	t1,5
    TCB::yield();
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	128080e7          	jalr	296(ra) # 800019c8 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800018a8:	01000513          	li	a0,16
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	ca4080e7          	jalr	-860(ra) # 80001550 <_ZL9fibonaccim>
    800018b4:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800018b8:	00003517          	auipc	a0,0x3
    800018bc:	7c050513          	addi	a0,a0,1984 # 80005078 <CONSOLE_STATUS+0x68>
    800018c0:	00001097          	auipc	ra,0x1
    800018c4:	8b4080e7          	jalr	-1868(ra) # 80002174 <_Z11printStringPKc>
    printInteger(result);
    800018c8:	00090513          	mv	a0,s2
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	918080e7          	jalr	-1768(ra) # 800021e4 <_Z12printIntegerm>
    printString("\n");
    800018d4:	00003517          	auipc	a0,0x3
    800018d8:	76c50513          	addi	a0,a0,1900 # 80005040 <CONSOLE_STATUS+0x30>
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	898080e7          	jalr	-1896(ra) # 80002174 <_Z11printStringPKc>
    800018e4:	0380006f          	j	8000191c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800018e8:	00003517          	auipc	a0,0x3
    800018ec:	77850513          	addi	a0,a0,1912 # 80005060 <CONSOLE_STATUS+0x50>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	884080e7          	jalr	-1916(ra) # 80002174 <_Z11printStringPKc>
        printInteger(i);
    800018f8:	00048513          	mv	a0,s1
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	8e8080e7          	jalr	-1816(ra) # 800021e4 <_Z12printIntegerm>
        printString("\n");
    80001904:	00003517          	auipc	a0,0x3
    80001908:	73c50513          	addi	a0,a0,1852 # 80005040 <CONSOLE_STATUS+0x30>
    8000190c:	00001097          	auipc	ra,0x1
    80001910:	868080e7          	jalr	-1944(ra) # 80002174 <_Z11printStringPKc>
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
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.hpp"
int main(){
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00113423          	sd	ra,8(sp)
    80001944:	00813023          	sd	s0,0(sp)
    80001948:	01010413          	addi	s0,sp,16
public:
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);

    static void initMemory(){
        freeMemHead=(FreeBlock*) HEAP_START_ADDR;
    8000194c:	00004797          	auipc	a5,0x4
    80001950:	0047b783          	ld	a5,4(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001954:	0007b783          	ld	a5,0(a5)
    80001958:	00004717          	auipc	a4,0x4
    8000195c:	01073703          	ld	a4,16(a4) # 80005968 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001960:	00f73023          	sd	a5,0(a4)
        freeMemHead->next=nullptr;
    80001964:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    80001968:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    8000196c:	00004717          	auipc	a4,0x4
    80001970:	01473703          	ld	a4,20(a4) # 80005980 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001974:	00073703          	ld	a4,0(a4)
    80001978:	40f70733          	sub	a4,a4,a5
    8000197c:	fe870713          	addi	a4,a4,-24
    80001980:	00e7b023          	sd	a4,0(a5)
    MemoryAllocator::initMemory();
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001984:	00004797          	auipc	a5,0x4
    80001988:	fd47b783          	ld	a5,-44(a5) # 80005958 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000198c:	10579073          	csrw	stvec,a5
    //globalno prihvatamo prekide u supervizorskom modu
    //Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    void* test=mem_alloc(100);
    80001990:	06400513          	li	a0,100
    80001994:	00000097          	auipc	ra,0x0
    80001998:	890080e7          	jalr	-1904(ra) # 80001224 <_Z9mem_allocm>
    mem_free(test);
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	8c4080e7          	jalr	-1852(ra) # 80001260 <_Z8mem_freePv>
    printString("gotov!\n");
    800019a4:	00003517          	auipc	a0,0x3
    800019a8:	6e450513          	addi	a0,a0,1764 # 80005088 <CONSOLE_STATUS+0x78>
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	7c8080e7          	jalr	1992(ra) # 80002174 <_Z11printStringPKc>
    return 0;
    800019b4:	00000513          	li	a0,0
    800019b8:	00813083          	ld	ra,8(sp)
    800019bc:	00013403          	ld	s0,0(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_ZN3TCB5yieldEv>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

void TCB::yield()
{
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00813423          	sd	s0,8(sp)
    800019d0:	01010413          	addi	s0,sp,16
    //sada hocemo da se svi prekidi izvrsavaju preko funkcije koju smo ispisali
    //hocemo da sinhrono udjemo u tu prekidnu funkciju - ulazak u prekidnu rutinu zbog zvrsavajna neke instrukcije - exception
    __asm__ volatile("ecall");
    800019d4:	00000073          	ecall
}
    800019d8:	00813403          	ld	s0,8(sp)
    800019dc:	01010113          	addi	sp,sp,16
    800019e0:	00008067          	ret

00000000800019e4 <_ZN3TCB13threadWrapperEv>:
        // na threadWrapper funkciju, odakle ce da pokrene njen tok
    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper(){
    800019e4:	fe010113          	addi	sp,sp,-32
    800019e8:	00113c23          	sd	ra,24(sp)
    800019ec:	00813823          	sd	s0,16(sp)
    800019f0:	00913423          	sd	s1,8(sp)
    800019f4:	02010413          	addi	s0,sp,32
    //mi smo i dalje u prekidnoj ruti zato sto je iz prekidne rutine pozvan dispatch, samim tim i ovaj threadwrapper
    //zato zbog toga ako bi zeleli da predjemo u korisnicki rezim morali bi da skinemo SPP = supervisor previous privilege
    // i da dozvolimo prekid opet - SPIE
    //za prvi poziv niti ovde ce se izaci iz prekidne rutine, samim tim moramo obezbediti da se ovde prekid zavrsi
    Riscv::popSppSpie();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	214080e7          	jalr	532(ra) # 80001c0c <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001a00:	00004497          	auipc	s1,0x4
    80001a04:	fd048493          	addi	s1,s1,-48 # 800059d0 <_ZN3TCB7runningE>
    80001a08:	0004b783          	ld	a5,0(s1)
    80001a0c:	0007b783          	ld	a5,0(a5)
    80001a10:	000780e7          	jalr	a5
    running->setFinished(true);
    80001a14:	0004b783          	ld	a5,0(s1)
{
public:
    ~TCB(){delete[] stack;}

    bool isFinished(){return finished;}
    void setFinished(bool flag){ TCB::finished = flag;}
    80001a18:	00100713          	li	a4,1
    80001a1c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	fa8080e7          	jalr	-88(ra) # 800019c8 <_ZN3TCB5yieldEv>
}
    80001a28:	01813083          	ld	ra,24(sp)
    80001a2c:	01013403          	ld	s0,16(sp)
    80001a30:	00813483          	ld	s1,8(sp)
    80001a34:	02010113          	addi	sp,sp,32
    80001a38:	00008067          	ret

0000000080001a3c <_ZN3TCB15createCoroutineEPFvvE>:
{
    80001a3c:	fe010113          	addi	sp,sp,-32
    80001a40:	00113c23          	sd	ra,24(sp)
    80001a44:	00813823          	sd	s0,16(sp)
    80001a48:	00913423          	sd	s1,8(sp)
    80001a4c:	01213023          	sd	s2,0(sp)
    80001a50:	02010413          	addi	s0,sp,32
    80001a54:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001a58:	03000513          	li	a0,48
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	110080e7          	jalr	272(ra) # 80001b6c <_Znwm>
    80001a64:	00050493          	mv	s1,a0
                     stack(body!=nullptr? new uint64[STACK_SIZE] : nullptr),timeSlice(timeslice),
                     context({
                         (uint64) &threadWrapper, // hocemo da kad napravimo ovaj kontrolni blok sa funkcijom body, da odma udje u tu fju, tj to povratna adresa ce biti adresa fje
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
                    }),
                     finished(false)
    80001a68:	01253023          	sd	s2,0(a0)
                     stack(body!=nullptr? new uint64[STACK_SIZE] : nullptr),timeSlice(timeslice),
    80001a6c:	00090a63          	beqz	s2,80001a80 <_ZN3TCB15createCoroutineEPFvvE+0x44>
    80001a70:	00002537          	lui	a0,0x2
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	120080e7          	jalr	288(ra) # 80001b94 <_Znam>
    80001a7c:	0080006f          	j	80001a84 <_ZN3TCB15createCoroutineEPFvvE+0x48>
    80001a80:	00000513          	li	a0,0
                     finished(false)
    80001a84:	00a4b423          	sd	a0,8(s1)
    80001a88:	00200793          	li	a5,2
    80001a8c:	00f4b823          	sd	a5,16(s1)
    80001a90:	00000797          	auipc	a5,0x0
    80001a94:	f5478793          	addi	a5,a5,-172 # 800019e4 <_ZN3TCB13threadWrapperEv>
    80001a98:	00f4bc23          	sd	a5,24(s1)
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001a9c:	02090463          	beqz	s2,80001ac4 <_ZN3TCB15createCoroutineEPFvvE+0x88>
    80001aa0:	000027b7          	lui	a5,0x2
    80001aa4:	00f50533          	add	a0,a0,a5
                     finished(false)
    80001aa8:	02a4b023          	sd	a0,32(s1)
    80001aac:	02048423          	sb	zero,40(s1)
    {
        if(body != nullptr) Scheduler::put(this); //jedino ako je nova rutina ovo trbea da krene da se izvrsava
    80001ab0:	02090c63          	beqz	s2,80001ae8 <_ZN3TCB15createCoroutineEPFvvE+0xac>
    80001ab4:	00048513          	mv	a0,s1
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	3a0080e7          	jalr	928(ra) # 80001e58 <_ZN9Scheduler3putEP3TCB>
    80001ac0:	0280006f          	j	80001ae8 <_ZN3TCB15createCoroutineEPFvvE+0xac>
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001ac4:	00000513          	li	a0,0
    80001ac8:	fe1ff06f          	j	80001aa8 <_ZN3TCB15createCoroutineEPFvvE+0x6c>
    80001acc:	00050913          	mv	s2,a0
    80001ad0:	00048513          	mv	a0,s1
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	0e8080e7          	jalr	232(ra) # 80001bbc <_ZdlPv>
    80001adc:	00090513          	mv	a0,s2
    80001ae0:	00005097          	auipc	ra,0x5
    80001ae4:	fe8080e7          	jalr	-24(ra) # 80006ac8 <_Unwind_Resume>
}
    80001ae8:	00048513          	mv	a0,s1
    80001aec:	01813083          	ld	ra,24(sp)
    80001af0:	01013403          	ld	s0,16(sp)
    80001af4:	00813483          	ld	s1,8(sp)
    80001af8:	00013903          	ld	s2,0(sp)
    80001afc:	02010113          	addi	sp,sp,32
    80001b00:	00008067          	ret

0000000080001b04 <_ZN3TCB8dispatchEv>:
{
    80001b04:	fe010113          	addi	sp,sp,-32
    80001b08:	00113c23          	sd	ra,24(sp)
    80001b0c:	00813823          	sd	s0,16(sp)
    80001b10:	00913423          	sd	s1,8(sp)
    80001b14:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001b18:	00004497          	auipc	s1,0x4
    80001b1c:	eb84b483          	ld	s1,-328(s1) # 800059d0 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001b20:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) Scheduler::put(old);
    80001b24:	02078c63          	beqz	a5,80001b5c <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	2c8080e7          	jalr	712(ra) # 80001df0 <_ZN9Scheduler3getEv>
    80001b30:	00004797          	auipc	a5,0x4
    80001b34:	eaa7b023          	sd	a0,-352(a5) # 800059d0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001b38:	01850593          	addi	a1,a0,24 # 2018 <_entry-0x7fffdfe8>
    80001b3c:	01848513          	addi	a0,s1,24
    80001b40:	fffff097          	auipc	ra,0xfffff
    80001b44:	6d0080e7          	jalr	1744(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001b48:	01813083          	ld	ra,24(sp)
    80001b4c:	01013403          	ld	s0,16(sp)
    80001b50:	00813483          	ld	s1,8(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret
    if(!old->isFinished()) Scheduler::put(old);
    80001b5c:	00048513          	mv	a0,s1
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	2f8080e7          	jalr	760(ra) # 80001e58 <_ZN9Scheduler3putEP3TCB>
    80001b68:	fc1ff06f          	j	80001b28 <_ZN3TCB8dispatchEv+0x24>

0000000080001b6c <_Znwm>:
#include "../h/syscall_cpp.hpp"

void* operator new (size_t mem){ return mem_alloc(mem);}
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	00813023          	sd	s0,0(sp)
    80001b78:	01010413          	addi	s0,sp,16
    80001b7c:	fffff097          	auipc	ra,0xfffff
    80001b80:	6a8080e7          	jalr	1704(ra) # 80001224 <_Z9mem_allocm>
    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00013403          	ld	s0,0(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00113423          	sd	ra,8(sp)
    80001b9c:	00813023          	sd	s0,0(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    80001ba4:	fffff097          	auipc	ra,0xfffff
    80001ba8:	680080e7          	jalr	1664(ra) # 80001224 <_Z9mem_allocm>
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_ZdlPv>:

void operator delete(void* addr) { mem_free(addr); }
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00113423          	sd	ra,8(sp)
    80001bc4:	00813023          	sd	s0,0(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    80001bcc:	fffff097          	auipc	ra,0xfffff
    80001bd0:	694080e7          	jalr	1684(ra) # 80001260 <_Z8mem_freePv>
    80001bd4:	00813083          	ld	ra,8(sp)
    80001bd8:	00013403          	ld	s0,0(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret

0000000080001be4 <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00113423          	sd	ra,8(sp)
    80001bec:	00813023          	sd	s0,0(sp)
    80001bf0:	01010413          	addi	s0,sp,16
    80001bf4:	fffff097          	auipc	ra,0xfffff
    80001bf8:	66c080e7          	jalr	1644(ra) # 80001260 <_Z8mem_freePv>
    80001bfc:	00813083          	ld	ra,8(sp)
    80001c00:	00013403          	ld	s0,0(sp)
    80001c04:	01010113          	addi	sp,sp,16
    80001c08:	00008067          	ret

0000000080001c0c <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80001c0c:	ff010113          	addi	sp,sp,-16
    80001c10:	00813423          	sd	s0,8(sp)
    80001c14:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    __asm__ volatile ("csrw sepc, ra");
    80001c18:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001c1c:	10200073          	sret
}
    80001c20:	00813403          	ld	s0,8(sp)
    80001c24:	01010113          	addi	sp,sp,16
    80001c28:	00008067          	ret

0000000080001c2c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001c2c:	f7010113          	addi	sp,sp,-144
    80001c30:	08113423          	sd	ra,136(sp)
    80001c34:	08813023          	sd	s0,128(sp)
    80001c38:	06913c23          	sd	s1,120(sp)
    80001c3c:	09010413          	addi	s0,sp,144
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c40:	142027f3          	csrr	a5,scause
    80001c44:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001c48:	fb843483          	ld	s1,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    80001c4c:	ff848713          	addi	a4,s1,-8
    80001c50:	00100793          	li	a5,1
    80001c54:	02e7fc63          	bgeu	a5,a4,80001c8c <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver prekid
    80001c58:	fff00793          	li	a5,-1
    80001c5c:	03f79793          	slli	a5,a5,0x3f
    80001c60:	00178793          	addi	a5,a5,1
    80001c64:	0cf48263          	beq	s1,a5,80001d28 <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause==0x8000000000000009UL){
    80001c68:	fff00793          	li	a5,-1
    80001c6c:	03f79793          	slli	a5,a5,0x3f
    80001c70:	00978793          	addi	a5,a5,9
    80001c74:	12f48863          	beq	s1,a5,80001da4 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
        //scause - sta se  desilo
        //sepc- gde se desilo
        // stval - dodatno opise cause

    }
    80001c78:	08813083          	ld	ra,136(sp)
    80001c7c:	08013403          	ld	s0,128(sp)
    80001c80:	07813483          	ld	s1,120(sp)
    80001c84:	09010113          	addi	sp,sp,144
    80001c88:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c8c:	141027f3          	csrr	a5,sepc
    80001c90:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001c94:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    80001c98:	00478793          	addi	a5,a5,4
    80001c9c:	f6f43c23          	sd	a5,-136(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ca0:	100027f3          	csrr	a5,sstatus
    80001ca4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001ca8:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001cac:	f8f43023          	sd	a5,-128(s0)
        __asm__ volatile("mv %0, a0":"=r"(a0));
    80001cb0:	00050793          	mv	a5,a0
    80001cb4:	f8f43423          	sd	a5,-120(s0)
        switch(a0){
    80001cb8:	f8843783          	ld	a5,-120(s0)
    80001cbc:	00100713          	li	a4,1
    80001cc0:	02e78063          	beq	a5,a4,80001ce0 <_ZN5Riscv20handleSupervisorTrapEv+0xb4>
    80001cc4:	00200713          	li	a4,2
    80001cc8:	02e78c63          	beq	a5,a4,80001d00 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    80001ccc:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cd0:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80001cd4:	f8043783          	ld	a5,-128(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cd8:	10079073          	csrw	sstatus,a5
}
    80001cdc:	f7dff06f          	j	80001c58 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                __asm__ volatile("mv %0, a1":"=r"(a1));
    80001ce0:	00058793          	mv	a5,a1
    80001ce4:	f8f43823          	sd	a5,-112(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    80001ce8:	f9043503          	ld	a0,-112(s0)
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	20c080e7          	jalr	524(ra) # 80001ef8 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    80001cf4:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    80001cf8:	04a43823          	sd	a0,80(s0)
                break;
    80001cfc:	fd1ff06f          	j	80001ccc <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
                __asm__ volatile("mv %0, a1":"=r"(addr));
    80001d00:	00058793          	mv	a5,a1
    80001d04:	f8f43c23          	sd	a5,-104(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    80001d08:	f9843503          	ld	a0,-104(s0)
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	2d4080e7          	jalr	724(ra) # 80001fe0 <_ZN15MemoryAllocator8mem_freeEPv>
    80001d14:	faa43023          	sd	a0,-96(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    80001d18:	fa043783          	ld	a5,-96(s0)
    80001d1c:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80001d20:	04a43823          	sd	a0,80(s0)
                break;
    80001d24:	fa9ff06f          	j	80001ccc <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
        TCB::timeSliceCounter++;
    80001d28:	00004717          	auipc	a4,0x4
    80001d2c:	c3873703          	ld	a4,-968(a4) # 80005960 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001d30:	00073783          	ld	a5,0(a4)
    80001d34:	00178793          	addi	a5,a5,1
    80001d38:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80001d3c:	00004717          	auipc	a4,0x4
    80001d40:	c3c73703          	ld	a4,-964(a4) # 80005978 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d44:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const {return timeSlice;}
    80001d48:	01073703          	ld	a4,16(a4)
    80001d4c:	00e7f863          	bgeu	a5,a4,80001d5c <_ZN5Riscv20handleSupervisorTrapEv+0x130>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001d50:	00200793          	li	a5,2
    80001d54:	1447b073          	csrc	sip,a5
}
    80001d58:	f21ff06f          	j	80001c78 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d5c:	141027f3          	csrr	a5,sepc
    80001d60:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001d64:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    80001d68:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d6c:	100027f3          	csrr	a5,sstatus
    80001d70:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001d74:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    80001d78:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter=0;
    80001d7c:	00004797          	auipc	a5,0x4
    80001d80:	be47b783          	ld	a5,-1052(a5) # 80005960 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001d84:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	d7c080e7          	jalr	-644(ra) # 80001b04 <_ZN3TCB8dispatchEv>
            w_sepc(sepc);
    80001d90:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d94:	14179073          	csrw	sepc,a5
            w_sstatus(sstatus);
    80001d98:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d9c:	10079073          	csrw	sstatus,a5
}
    80001da0:	fb1ff06f          	j	80001d50 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
        console_handler();
    80001da4:	00002097          	auipc	ra,0x2
    80001da8:	62c080e7          	jalr	1580(ra) # 800043d0 <console_handler>
    80001dac:	ecdff06f          	j	80001c78 <_ZN5Riscv20handleSupervisorTrapEv+0x4c>

0000000080001db0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00813423          	sd	s0,8(sp)
    80001db8:	01010413          	addi	s0,sp,16
    80001dbc:	00100793          	li	a5,1
    80001dc0:	00f50863          	beq	a0,a5,80001dd0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001dc4:	00813403          	ld	s0,8(sp)
    80001dc8:	01010113          	addi	sp,sp,16
    80001dcc:	00008067          	ret
    80001dd0:	000107b7          	lui	a5,0x10
    80001dd4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001dd8:	fef596e3          	bne	a1,a5,80001dc4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001ddc:	00004797          	auipc	a5,0x4
    80001de0:	c0478793          	addi	a5,a5,-1020 # 800059e0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001de4:	0007b023          	sd	zero,0(a5)
    80001de8:	0007b423          	sd	zero,8(a5)
    80001dec:	fd9ff06f          	j	80001dc4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001df0 <_ZN9Scheduler3getEv>:
{
    80001df0:	fe010113          	addi	sp,sp,-32
    80001df4:	00113c23          	sd	ra,24(sp)
    80001df8:	00813823          	sd	s0,16(sp)
    80001dfc:	00913423          	sd	s1,8(sp)
    80001e00:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001e04:	00004517          	auipc	a0,0x4
    80001e08:	bdc53503          	ld	a0,-1060(a0) # 800059e0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001e0c:	04050263          	beqz	a0,80001e50 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001e10:	00853783          	ld	a5,8(a0)
    80001e14:	00004717          	auipc	a4,0x4
    80001e18:	bcf73623          	sd	a5,-1076(a4) # 800059e0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80001e1c:	02078463          	beqz	a5,80001e44 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001e20:	00053483          	ld	s1,0(a0)
        delete elem;
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	d98080e7          	jalr	-616(ra) # 80001bbc <_ZdlPv>
}
    80001e2c:	00048513          	mv	a0,s1
    80001e30:	01813083          	ld	ra,24(sp)
    80001e34:	01013403          	ld	s0,16(sp)
    80001e38:	00813483          	ld	s1,8(sp)
    80001e3c:	02010113          	addi	sp,sp,32
    80001e40:	00008067          	ret
        if (!head) { tail = 0; }
    80001e44:	00004797          	auipc	a5,0x4
    80001e48:	ba07b223          	sd	zero,-1116(a5) # 800059e8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001e4c:	fd5ff06f          	j	80001e20 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001e50:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001e54:	fd9ff06f          	j	80001e2c <_ZN9Scheduler3getEv+0x3c>

0000000080001e58 <_ZN9Scheduler3putEP3TCB>:
{
    80001e58:	fe010113          	addi	sp,sp,-32
    80001e5c:	00113c23          	sd	ra,24(sp)
    80001e60:	00813823          	sd	s0,16(sp)
    80001e64:	00913423          	sd	s1,8(sp)
    80001e68:	02010413          	addi	s0,sp,32
    80001e6c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001e70:	01000513          	li	a0,16
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	cf8080e7          	jalr	-776(ra) # 80001b6c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001e7c:	00953023          	sd	s1,0(a0)
    80001e80:	00053423          	sd	zero,8(a0)
        if (tail)
    80001e84:	00004797          	auipc	a5,0x4
    80001e88:	b647b783          	ld	a5,-1180(a5) # 800059e8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001e8c:	02078263          	beqz	a5,80001eb0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001e90:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001e94:	00004797          	auipc	a5,0x4
    80001e98:	b4a7ba23          	sd	a0,-1196(a5) # 800059e8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001e9c:	01813083          	ld	ra,24(sp)
    80001ea0:	01013403          	ld	s0,16(sp)
    80001ea4:	00813483          	ld	s1,8(sp)
    80001ea8:	02010113          	addi	sp,sp,32
    80001eac:	00008067          	ret
            head = tail = elem;
    80001eb0:	00004797          	auipc	a5,0x4
    80001eb4:	b3078793          	addi	a5,a5,-1232 # 800059e0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001eb8:	00a7b423          	sd	a0,8(a5)
    80001ebc:	00a7b023          	sd	a0,0(a5)
    80001ec0:	fddff06f          	j	80001e9c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001ec4 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00113423          	sd	ra,8(sp)
    80001ecc:	00813023          	sd	s0,0(sp)
    80001ed0:	01010413          	addi	s0,sp,16
    80001ed4:	000105b7          	lui	a1,0x10
    80001ed8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001edc:	00100513          	li	a0,1
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	ed0080e7          	jalr	-304(ra) # 80001db0 <_Z41__static_initialization_and_destruction_0ii>
    80001ee8:	00813083          	ld	ra,8(sp)
    80001eec:	00013403          	ld	s0,0(sp)
    80001ef0:	01010113          	addi	sp,sp,16
    80001ef4:	00008067          	ret

0000000080001ef8 <_ZN15MemoryAllocator9mem_allocEm>:

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeBlock* MemoryAllocator::freeMemHead;
void *MemoryAllocator::mem_alloc(size_t size)
{
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00813423          	sd	s0,8(sp)
    80001f00:	01010413          	addi	s0,sp,16
    if(size <=0 || !freeMemHead) return nullptr;
    80001f04:	0c050a63          	beqz	a0,80001fd8 <_ZN15MemoryAllocator9mem_allocEm+0xe0>
    80001f08:	00050793          	mv	a5,a0
    80001f0c:	00004517          	auipc	a0,0x4
    80001f10:	ae453503          	ld	a0,-1308(a0) # 800059f0 <_ZN15MemoryAllocator11freeMemHeadE>
    80001f14:	06050c63          	beqz	a0,80001f8c <_ZN15MemoryAllocator9mem_allocEm+0x94>
    MemoryAllocator::FreeBlock* curr = freeMemHead;
    // zaokruzi na ceo blok
    if(size%MEM_BLOCK_SIZE){
    80001f18:	03f7f713          	andi	a4,a5,63
    80001f1c:	00070a63          	beqz	a4,80001f30 <_ZN15MemoryAllocator9mem_allocEm+0x38>
        size=((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    80001f20:	03f78793          	addi	a5,a5,63
    80001f24:	fc07f793          	andi	a5,a5,-64
    80001f28:	0080006f          	j	80001f30 <_ZN15MemoryAllocator9mem_allocEm+0x38>
    }
    while(curr && curr->size<size) curr=curr->next;
    80001f2c:	01053503          	ld	a0,16(a0)
    80001f30:	00050663          	beqz	a0,80001f3c <_ZN15MemoryAllocator9mem_allocEm+0x44>
    80001f34:	00053703          	ld	a4,0(a0)
    80001f38:	fef76ae3          	bltu	a4,a5,80001f2c <_ZN15MemoryAllocator9mem_allocEm+0x34>
    if(!curr) return nullptr;
    80001f3c:	04050863          	beqz	a0,80001f8c <_ZN15MemoryAllocator9mem_allocEm+0x94>
    if(curr->size> size+sizeof(FreeBlock)){
    80001f40:	00053683          	ld	a3,0(a0)
    80001f44:	01878713          	addi	a4,a5,24
    80001f48:	04d77e63          	bgeu	a4,a3,80001fa4 <_ZN15MemoryAllocator9mem_allocEm+0xac>
        //ostaje nam blok       <-curr->size odavde pokazuje
        //| datablock metadata |     allocated     | new datablock metadata | remaining size |

        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    80001f4c:	00e50733          	add	a4,a0,a4

        newBlock->size=curr->size-size-sizeof(FreeBlock);
    80001f50:	40f686b3          	sub	a3,a3,a5
    80001f54:	fe868693          	addi	a3,a3,-24
    80001f58:	00d73023          	sd	a3,0(a4)
        newBlock->prev=curr->prev;
    80001f5c:	00853683          	ld	a3,8(a0)
    80001f60:	00d73423          	sd	a3,8(a4)
        //size je velicina koja je trazena da se zauzme, zaokruzena na ceo broj blokova, kada budemo oslobadjali sa adrese curr, oslobodicemo tacno koliko treba
        curr->size=size;
    80001f64:	00f53023          	sd	a5,0(a0)
        if(curr->prev){
    80001f68:	02068863          	beqz	a3,80001f98 <_ZN15MemoryAllocator9mem_allocEm+0xa0>
            curr->prev->next=newBlock;
    80001f6c:	00e6b823          	sd	a4,16(a3)
        }
        else freeMemHead = newBlock;
        newBlock->next=curr->next;
    80001f70:	01053783          	ld	a5,16(a0)
    80001f74:	00f73823          	sd	a5,16(a4)
        if(curr->next) curr->next->prev=newBlock;
    80001f78:	00078463          	beqz	a5,80001f80 <_ZN15MemoryAllocator9mem_allocEm+0x88>
    80001f7c:	00e7b423          	sd	a4,8(a5)
        //ne menjamo curr->size zato sto ceo curr blok alociramo, pa kada ga budemo oslobadjali, oslobodicemo ceo
        if(curr->prev) curr->prev->next=curr->next;
        else freeMemHead=curr->next;
        if(curr->next) curr->next->prev=curr->prev;
    }
    curr->next=nullptr;
    80001f80:	00053823          	sd	zero,16(a0)
    curr->prev=nullptr;
    80001f84:	00053423          	sd	zero,8(a0)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    80001f88:	01850513          	addi	a0,a0,24
}
    80001f8c:	00813403          	ld	s0,8(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret
        else freeMemHead = newBlock;
    80001f98:	00004797          	auipc	a5,0x4
    80001f9c:	a4e7bc23          	sd	a4,-1448(a5) # 800059f0 <_ZN15MemoryAllocator11freeMemHeadE>
    80001fa0:	fd1ff06f          	j	80001f70 <_ZN15MemoryAllocator9mem_allocEm+0x78>
        if(curr->prev) curr->prev->next=curr->next;
    80001fa4:	00853783          	ld	a5,8(a0)
    80001fa8:	02078063          	beqz	a5,80001fc8 <_ZN15MemoryAllocator9mem_allocEm+0xd0>
    80001fac:	01053703          	ld	a4,16(a0)
    80001fb0:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    80001fb4:	01053783          	ld	a5,16(a0)
    80001fb8:	fc0784e3          	beqz	a5,80001f80 <_ZN15MemoryAllocator9mem_allocEm+0x88>
    80001fbc:	00853703          	ld	a4,8(a0)
    80001fc0:	00e7b423          	sd	a4,8(a5)
    80001fc4:	fbdff06f          	j	80001f80 <_ZN15MemoryAllocator9mem_allocEm+0x88>
        else freeMemHead=curr->next;
    80001fc8:	01053783          	ld	a5,16(a0)
    80001fcc:	00004717          	auipc	a4,0x4
    80001fd0:	a2f73223          	sd	a5,-1500(a4) # 800059f0 <_ZN15MemoryAllocator11freeMemHeadE>
    80001fd4:	fe1ff06f          	j	80001fb4 <_ZN15MemoryAllocator9mem_allocEm+0xbc>
    if(size <=0 || !freeMemHead) return nullptr;
    80001fd8:	00000513          	li	a0,0
    80001fdc:	fb1ff06f          	j	80001f8c <_ZN15MemoryAllocator9mem_allocEm+0x94>

0000000080001fe0 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void *addr)
{
    80001fe0:	ff010113          	addi	sp,sp,-16
    80001fe4:	00813423          	sd	s0,8(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    if(!addr) return -1;
    80001fec:	16050863          	beqz	a0,8000215c <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80001ff0:	fe850693          	addi	a3,a0,-24
    80001ff4:	00004797          	auipc	a5,0x4
    80001ff8:	95c7b783          	ld	a5,-1700(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ffc:	0007b783          	ld	a5,0(a5)
    80002000:	16f6e263          	bltu	a3,a5,80002164 <_ZN15MemoryAllocator8mem_freeEPv+0x184>
    80002004:	00004797          	auipc	a5,0x4
    80002008:	97c7b783          	ld	a5,-1668(a5) # 80005980 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000200c:	0007b783          	ld	a5,0(a5)
    80002010:	14a7ee63          	bltu	a5,a0,8000216c <_ZN15MemoryAllocator8mem_freeEPv+0x18c>

    FreeBlock* blk = (FreeBlock*) ((char*)addr-sizeof(FreeBlock));
    blk->next=nullptr;
    80002014:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    80002018:	fe053823          	sd	zero,-16(a0)
    FreeBlock* curr = nullptr;
    if(!freeMemHead){
    8000201c:	00004617          	auipc	a2,0x4
    80002020:	9d463603          	ld	a2,-1580(a2) # 800059f0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002024:	04060c63          	beqz	a2,8000207c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
        //prvi slobodni
        freeMemHead=blk;
        return 0;
    }
    if((char*) blk < (char*) freeMemHead){
    80002028:	08c6e463          	bltu	a3,a2,800020b0 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
        //blk je pre heada, obradjujemo na kraju
        curr=nullptr;
    }
    else
    {
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    8000202c:	00060793          	mv	a5,a2
    80002030:	00078713          	mv	a4,a5
    80002034:	0107b783          	ld	a5,16(a5)
    80002038:	00078463          	beqz	a5,80002040 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    8000203c:	fed7eae3          	bltu	a5,a3,80002030 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
        // curr|?|blk|?| curr->next
    }
    //gledamo da li mozemo spojiti sa sledecim
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    80002040:	06070a63          	beqz	a4,800020b4 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80002044:	00073803          	ld	a6,0(a4)
    80002048:	01880593          	addi	a1,a6,24
    8000204c:	00b705b3          	add	a1,a4,a1
    80002050:	06b69263          	bne	a3,a1,800020b4 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
        // |curr|blk|
        curr->size+=sizeof(FreeBlock)+blk->size;
    80002054:	fe853683          	ld	a3,-24(a0)
    80002058:	00d806b3          	add	a3,a6,a3
    8000205c:	01868693          	addi	a3,a3,24
    80002060:	00d73023          	sd	a3,0(a4)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80002064:	00078863          	beqz	a5,80002074 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    80002068:	01868613          	addi	a2,a3,24
    8000206c:	00c70633          	add	a2,a4,a2
    80002070:	00c78e63          	beq	a5,a2,8000208c <_ZN15MemoryAllocator8mem_freeEPv+0xac>
            //|curr |curr->next|
            curr->size+=sizeof(FreeBlock)+curr->next->size;
            curr->next=curr->next->next;
            if(curr->next) curr->next->prev=curr;
        }
        return 0;
    80002074:	00000513          	li	a0,0
    80002078:	0780006f          	j	800020f0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
        freeMemHead=blk;
    8000207c:	00004797          	auipc	a5,0x4
    80002080:	96d7ba23          	sd	a3,-1676(a5) # 800059f0 <_ZN15MemoryAllocator11freeMemHeadE>
        return 0;
    80002084:	00000513          	li	a0,0
    80002088:	0680006f          	j	800020f0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    8000208c:	0007b603          	ld	a2,0(a5)
    80002090:	00c686b3          	add	a3,a3,a2
    80002094:	01868693          	addi	a3,a3,24
    80002098:	00d73023          	sd	a3,0(a4)
            curr->next=curr->next->next;
    8000209c:	0107b783          	ld	a5,16(a5)
    800020a0:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    800020a4:	fc0788e3          	beqz	a5,80002074 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    800020a8:	00e7b423          	sd	a4,8(a5)
    800020ac:	fc9ff06f          	j	80002074 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
        curr=nullptr;
    800020b0:	00000713          	li	a4,0
    }

    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    800020b4:	00070463          	beqz	a4,800020bc <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    800020b8:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    800020bc:	00060863          	beqz	a2,800020cc <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    800020c0:	fe853783          	ld	a5,-24(a0)
    800020c4:	00f505b3          	add	a1,a0,a5
    800020c8:	02c58a63          	beq	a1,a2,800020fc <_ZN15MemoryAllocator8mem_freeEPv+0x11c>
        if(nextBlock->prev) nextBlock->prev->next=blk;
        else freeMemHead=blk;
        return 0;
    }
    //nema potrebe za spajanjem, samo dodajemo blok;
    blk->prev=curr;
    800020cc:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    800020d0:	06070863          	beqz	a4,80002140 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    800020d4:	01073783          	ld	a5,16(a4)
    800020d8:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    800020dc:	00078463          	beqz	a5,800020e4 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    800020e0:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    800020e4:	06070463          	beqz	a4,8000214c <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    800020e8:	00d73823          	sd	a3,16(a4)
    else freeMemHead=blk;
    return 0;
    800020ec:	00000513          	li	a0,0
}
    800020f0:	00813403          	ld	s0,8(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    800020fc:	00063703          	ld	a4,0(a2)
    80002100:	00e787b3          	add	a5,a5,a4
    80002104:	01878793          	addi	a5,a5,24
    80002108:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    8000210c:	01063783          	ld	a5,16(a2)
    80002110:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    80002114:	00078463          	beqz	a5,8000211c <_ZN15MemoryAllocator8mem_freeEPv+0x13c>
    80002118:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    8000211c:	00863783          	ld	a5,8(a2)
    80002120:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    80002124:	00078863          	beqz	a5,80002134 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    80002128:	00d7b823          	sd	a3,16(a5)
        return 0;
    8000212c:	00000513          	li	a0,0
    80002130:	fc1ff06f          	j	800020f0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
        else freeMemHead=blk;
    80002134:	00004797          	auipc	a5,0x4
    80002138:	8ad7be23          	sd	a3,-1860(a5) # 800059f0 <_ZN15MemoryAllocator11freeMemHeadE>
    8000213c:	ff1ff06f          	j	8000212c <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    blk->next=curr?curr->next:freeMemHead;
    80002140:	00004797          	auipc	a5,0x4
    80002144:	8b07b783          	ld	a5,-1872(a5) # 800059f0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002148:	f91ff06f          	j	800020d8 <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
    else freeMemHead=blk;
    8000214c:	00004797          	auipc	a5,0x4
    80002150:	8ad7b223          	sd	a3,-1884(a5) # 800059f0 <_ZN15MemoryAllocator11freeMemHeadE>
    return 0;
    80002154:	00000513          	li	a0,0
    80002158:	f99ff06f          	j	800020f0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    if(!addr) return -1;
    8000215c:	fff00513          	li	a0,-1
    80002160:	f91ff06f          	j	800020f0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80002164:	ffe00513          	li	a0,-2
    80002168:	f89ff06f          	j	800020f0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    8000216c:	ffe00513          	li	a0,-2
    80002170:	f81ff06f          	j	800020f0 <_ZN15MemoryAllocator8mem_freeEPv+0x110>

0000000080002174 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"
void printString(char const *string)
{
    80002174:	fd010113          	addi	sp,sp,-48
    80002178:	02113423          	sd	ra,40(sp)
    8000217c:	02813023          	sd	s0,32(sp)
    80002180:	00913c23          	sd	s1,24(sp)
    80002184:	01213823          	sd	s2,16(sp)
    80002188:	03010413          	addi	s0,sp,48
    8000218c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002190:	100027f3          	csrr	a5,sstatus
    80002194:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002198:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000219c:	00200793          	li	a5,2
    800021a0:	1007b073          	csrc	sstatus,a5
    //nije bas elegantno zabraniti prekide ovako, jer ako su dugi ispisi moramo cekati, ali eto
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0')
    800021a4:	0004c503          	lbu	a0,0(s1)
    800021a8:	00050a63          	beqz	a0,800021bc <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800021ac:	00002097          	auipc	ra,0x2
    800021b0:	1b0080e7          	jalr	432(ra) # 8000435c <__putc>
        string++;
    800021b4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021b8:	fedff06f          	j	800021a4 <_Z11printStringPKc+0x30>
    }
    //moramo proveriti da li su ranije prekidi bili dozvoljeni, ako nisu ne zelimo sad da ih dozvolimo
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    800021bc:	0009091b          	sext.w	s2,s2
    800021c0:	00297913          	andi	s2,s2,2
    800021c4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800021c8:	10092073          	csrs	sstatus,s2
}
    800021cc:	02813083          	ld	ra,40(sp)
    800021d0:	02013403          	ld	s0,32(sp)
    800021d4:	01813483          	ld	s1,24(sp)
    800021d8:	01013903          	ld	s2,16(sp)
    800021dc:	03010113          	addi	sp,sp,48
    800021e0:	00008067          	ret

00000000800021e4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800021e4:	fc010113          	addi	sp,sp,-64
    800021e8:	02113c23          	sd	ra,56(sp)
    800021ec:	02813823          	sd	s0,48(sp)
    800021f0:	02913423          	sd	s1,40(sp)
    800021f4:	03213023          	sd	s2,32(sp)
    800021f8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021fc:	100027f3          	csrr	a5,sstatus
    80002200:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002204:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002208:	00200793          	li	a5,2
    8000220c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002210:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002214:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80002218:	00a00613          	li	a2,10
    8000221c:	02c5773b          	remuw	a4,a0,a2
    80002220:	02071693          	slli	a3,a4,0x20
    80002224:	0206d693          	srli	a3,a3,0x20
    80002228:	00003717          	auipc	a4,0x3
    8000222c:	e6870713          	addi	a4,a4,-408 # 80005090 <_ZZ12printIntegermE6digits>
    80002230:	00d70733          	add	a4,a4,a3
    80002234:	00074703          	lbu	a4,0(a4)
    80002238:	fe040693          	addi	a3,s0,-32
    8000223c:	009687b3          	add	a5,a3,s1
    80002240:	0014849b          	addiw	s1,s1,1
    80002244:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80002248:	0005071b          	sext.w	a4,a0
    8000224c:	02c5553b          	divuw	a0,a0,a2
    80002250:	00900793          	li	a5,9
    80002254:	fce7e2e3          	bltu	a5,a4,80002218 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    80002258:	fff4849b          	addiw	s1,s1,-1
    8000225c:	0004ce63          	bltz	s1,80002278 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    80002260:	fe040793          	addi	a5,s0,-32
    80002264:	009787b3          	add	a5,a5,s1
    80002268:	ff07c503          	lbu	a0,-16(a5)
    8000226c:	00002097          	auipc	ra,0x2
    80002270:	0f0080e7          	jalr	240(ra) # 8000435c <__putc>
    80002274:	fe5ff06f          	j	80002258 <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    80002278:	0009091b          	sext.w	s2,s2
    8000227c:	00297913          	andi	s2,s2,2
    80002280:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002284:	10092073          	csrs	sstatus,s2
    80002288:	03813083          	ld	ra,56(sp)
    8000228c:	03013403          	ld	s0,48(sp)
    80002290:	02813483          	ld	s1,40(sp)
    80002294:	02013903          	ld	s2,32(sp)
    80002298:	04010113          	addi	sp,sp,64
    8000229c:	00008067          	ret

00000000800022a0 <start>:
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00813423          	sd	s0,8(sp)
    800022a8:	01010413          	addi	s0,sp,16
    800022ac:	300027f3          	csrr	a5,mstatus
    800022b0:	ffffe737          	lui	a4,0xffffe
    800022b4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b9f>
    800022b8:	00e7f7b3          	and	a5,a5,a4
    800022bc:	00001737          	lui	a4,0x1
    800022c0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800022c4:	00e7e7b3          	or	a5,a5,a4
    800022c8:	30079073          	csrw	mstatus,a5
    800022cc:	00000797          	auipc	a5,0x0
    800022d0:	16078793          	addi	a5,a5,352 # 8000242c <system_main>
    800022d4:	34179073          	csrw	mepc,a5
    800022d8:	00000793          	li	a5,0
    800022dc:	18079073          	csrw	satp,a5
    800022e0:	000107b7          	lui	a5,0x10
    800022e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800022e8:	30279073          	csrw	medeleg,a5
    800022ec:	30379073          	csrw	mideleg,a5
    800022f0:	104027f3          	csrr	a5,sie
    800022f4:	2227e793          	ori	a5,a5,546
    800022f8:	10479073          	csrw	sie,a5
    800022fc:	fff00793          	li	a5,-1
    80002300:	00a7d793          	srli	a5,a5,0xa
    80002304:	3b079073          	csrw	pmpaddr0,a5
    80002308:	00f00793          	li	a5,15
    8000230c:	3a079073          	csrw	pmpcfg0,a5
    80002310:	f14027f3          	csrr	a5,mhartid
    80002314:	0200c737          	lui	a4,0x200c
    80002318:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000231c:	0007869b          	sext.w	a3,a5
    80002320:	00269713          	slli	a4,a3,0x2
    80002324:	000f4637          	lui	a2,0xf4
    80002328:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000232c:	00d70733          	add	a4,a4,a3
    80002330:	0037979b          	slliw	a5,a5,0x3
    80002334:	020046b7          	lui	a3,0x2004
    80002338:	00d787b3          	add	a5,a5,a3
    8000233c:	00c585b3          	add	a1,a1,a2
    80002340:	00371693          	slli	a3,a4,0x3
    80002344:	00003717          	auipc	a4,0x3
    80002348:	6bc70713          	addi	a4,a4,1724 # 80005a00 <timer_scratch>
    8000234c:	00b7b023          	sd	a1,0(a5)
    80002350:	00d70733          	add	a4,a4,a3
    80002354:	00f73c23          	sd	a5,24(a4)
    80002358:	02c73023          	sd	a2,32(a4)
    8000235c:	34071073          	csrw	mscratch,a4
    80002360:	00000797          	auipc	a5,0x0
    80002364:	6e078793          	addi	a5,a5,1760 # 80002a40 <timervec>
    80002368:	30579073          	csrw	mtvec,a5
    8000236c:	300027f3          	csrr	a5,mstatus
    80002370:	0087e793          	ori	a5,a5,8
    80002374:	30079073          	csrw	mstatus,a5
    80002378:	304027f3          	csrr	a5,mie
    8000237c:	0807e793          	ori	a5,a5,128
    80002380:	30479073          	csrw	mie,a5
    80002384:	f14027f3          	csrr	a5,mhartid
    80002388:	0007879b          	sext.w	a5,a5
    8000238c:	00078213          	mv	tp,a5
    80002390:	30200073          	mret
    80002394:	00813403          	ld	s0,8(sp)
    80002398:	01010113          	addi	sp,sp,16
    8000239c:	00008067          	ret

00000000800023a0 <timerinit>:
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00813423          	sd	s0,8(sp)
    800023a8:	01010413          	addi	s0,sp,16
    800023ac:	f14027f3          	csrr	a5,mhartid
    800023b0:	0200c737          	lui	a4,0x200c
    800023b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800023b8:	0007869b          	sext.w	a3,a5
    800023bc:	00269713          	slli	a4,a3,0x2
    800023c0:	000f4637          	lui	a2,0xf4
    800023c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800023c8:	00d70733          	add	a4,a4,a3
    800023cc:	0037979b          	slliw	a5,a5,0x3
    800023d0:	020046b7          	lui	a3,0x2004
    800023d4:	00d787b3          	add	a5,a5,a3
    800023d8:	00c585b3          	add	a1,a1,a2
    800023dc:	00371693          	slli	a3,a4,0x3
    800023e0:	00003717          	auipc	a4,0x3
    800023e4:	62070713          	addi	a4,a4,1568 # 80005a00 <timer_scratch>
    800023e8:	00b7b023          	sd	a1,0(a5)
    800023ec:	00d70733          	add	a4,a4,a3
    800023f0:	00f73c23          	sd	a5,24(a4)
    800023f4:	02c73023          	sd	a2,32(a4)
    800023f8:	34071073          	csrw	mscratch,a4
    800023fc:	00000797          	auipc	a5,0x0
    80002400:	64478793          	addi	a5,a5,1604 # 80002a40 <timervec>
    80002404:	30579073          	csrw	mtvec,a5
    80002408:	300027f3          	csrr	a5,mstatus
    8000240c:	0087e793          	ori	a5,a5,8
    80002410:	30079073          	csrw	mstatus,a5
    80002414:	304027f3          	csrr	a5,mie
    80002418:	0807e793          	ori	a5,a5,128
    8000241c:	30479073          	csrw	mie,a5
    80002420:	00813403          	ld	s0,8(sp)
    80002424:	01010113          	addi	sp,sp,16
    80002428:	00008067          	ret

000000008000242c <system_main>:
    8000242c:	fe010113          	addi	sp,sp,-32
    80002430:	00813823          	sd	s0,16(sp)
    80002434:	00913423          	sd	s1,8(sp)
    80002438:	00113c23          	sd	ra,24(sp)
    8000243c:	02010413          	addi	s0,sp,32
    80002440:	00000097          	auipc	ra,0x0
    80002444:	0c4080e7          	jalr	196(ra) # 80002504 <cpuid>
    80002448:	00003497          	auipc	s1,0x3
    8000244c:	55848493          	addi	s1,s1,1368 # 800059a0 <started>
    80002450:	02050263          	beqz	a0,80002474 <system_main+0x48>
    80002454:	0004a783          	lw	a5,0(s1)
    80002458:	0007879b          	sext.w	a5,a5
    8000245c:	fe078ce3          	beqz	a5,80002454 <system_main+0x28>
    80002460:	0ff0000f          	fence
    80002464:	00003517          	auipc	a0,0x3
    80002468:	c6c50513          	addi	a0,a0,-916 # 800050d0 <_ZZ12printIntegermE6digits+0x40>
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	a70080e7          	jalr	-1424(ra) # 80002edc <panic>
    80002474:	00001097          	auipc	ra,0x1
    80002478:	9c4080e7          	jalr	-1596(ra) # 80002e38 <consoleinit>
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	150080e7          	jalr	336(ra) # 800035cc <printfinit>
    80002484:	00003517          	auipc	a0,0x3
    80002488:	bbc50513          	addi	a0,a0,-1092 # 80005040 <CONSOLE_STATUS+0x30>
    8000248c:	00001097          	auipc	ra,0x1
    80002490:	aac080e7          	jalr	-1364(ra) # 80002f38 <__printf>
    80002494:	00003517          	auipc	a0,0x3
    80002498:	c0c50513          	addi	a0,a0,-1012 # 800050a0 <_ZZ12printIntegermE6digits+0x10>
    8000249c:	00001097          	auipc	ra,0x1
    800024a0:	a9c080e7          	jalr	-1380(ra) # 80002f38 <__printf>
    800024a4:	00003517          	auipc	a0,0x3
    800024a8:	b9c50513          	addi	a0,a0,-1124 # 80005040 <CONSOLE_STATUS+0x30>
    800024ac:	00001097          	auipc	ra,0x1
    800024b0:	a8c080e7          	jalr	-1396(ra) # 80002f38 <__printf>
    800024b4:	00001097          	auipc	ra,0x1
    800024b8:	4a4080e7          	jalr	1188(ra) # 80003958 <kinit>
    800024bc:	00000097          	auipc	ra,0x0
    800024c0:	148080e7          	jalr	328(ra) # 80002604 <trapinit>
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	16c080e7          	jalr	364(ra) # 80002630 <trapinithart>
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	5b4080e7          	jalr	1460(ra) # 80002a80 <plicinit>
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	5d4080e7          	jalr	1492(ra) # 80002aa8 <plicinithart>
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	078080e7          	jalr	120(ra) # 80002554 <userinit>
    800024e4:	0ff0000f          	fence
    800024e8:	00100793          	li	a5,1
    800024ec:	00003517          	auipc	a0,0x3
    800024f0:	bcc50513          	addi	a0,a0,-1076 # 800050b8 <_ZZ12printIntegermE6digits+0x28>
    800024f4:	00f4a023          	sw	a5,0(s1)
    800024f8:	00001097          	auipc	ra,0x1
    800024fc:	a40080e7          	jalr	-1472(ra) # 80002f38 <__printf>
    80002500:	0000006f          	j	80002500 <system_main+0xd4>

0000000080002504 <cpuid>:
    80002504:	ff010113          	addi	sp,sp,-16
    80002508:	00813423          	sd	s0,8(sp)
    8000250c:	01010413          	addi	s0,sp,16
    80002510:	00020513          	mv	a0,tp
    80002514:	00813403          	ld	s0,8(sp)
    80002518:	0005051b          	sext.w	a0,a0
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret

0000000080002524 <mycpu>:
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00813423          	sd	s0,8(sp)
    8000252c:	01010413          	addi	s0,sp,16
    80002530:	00020793          	mv	a5,tp
    80002534:	00813403          	ld	s0,8(sp)
    80002538:	0007879b          	sext.w	a5,a5
    8000253c:	00779793          	slli	a5,a5,0x7
    80002540:	00004517          	auipc	a0,0x4
    80002544:	4f050513          	addi	a0,a0,1264 # 80006a30 <cpus>
    80002548:	00f50533          	add	a0,a0,a5
    8000254c:	01010113          	addi	sp,sp,16
    80002550:	00008067          	ret

0000000080002554 <userinit>:
    80002554:	ff010113          	addi	sp,sp,-16
    80002558:	00813423          	sd	s0,8(sp)
    8000255c:	01010413          	addi	s0,sp,16
    80002560:	00813403          	ld	s0,8(sp)
    80002564:	01010113          	addi	sp,sp,16
    80002568:	fffff317          	auipc	t1,0xfffff
    8000256c:	3d430067          	jr	980(t1) # 8000193c <main>

0000000080002570 <either_copyout>:
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00813023          	sd	s0,0(sp)
    80002578:	00113423          	sd	ra,8(sp)
    8000257c:	01010413          	addi	s0,sp,16
    80002580:	02051663          	bnez	a0,800025ac <either_copyout+0x3c>
    80002584:	00058513          	mv	a0,a1
    80002588:	00060593          	mv	a1,a2
    8000258c:	0006861b          	sext.w	a2,a3
    80002590:	00002097          	auipc	ra,0x2
    80002594:	c54080e7          	jalr	-940(ra) # 800041e4 <__memmove>
    80002598:	00813083          	ld	ra,8(sp)
    8000259c:	00013403          	ld	s0,0(sp)
    800025a0:	00000513          	li	a0,0
    800025a4:	01010113          	addi	sp,sp,16
    800025a8:	00008067          	ret
    800025ac:	00003517          	auipc	a0,0x3
    800025b0:	b4c50513          	addi	a0,a0,-1204 # 800050f8 <_ZZ12printIntegermE6digits+0x68>
    800025b4:	00001097          	auipc	ra,0x1
    800025b8:	928080e7          	jalr	-1752(ra) # 80002edc <panic>

00000000800025bc <either_copyin>:
    800025bc:	ff010113          	addi	sp,sp,-16
    800025c0:	00813023          	sd	s0,0(sp)
    800025c4:	00113423          	sd	ra,8(sp)
    800025c8:	01010413          	addi	s0,sp,16
    800025cc:	02059463          	bnez	a1,800025f4 <either_copyin+0x38>
    800025d0:	00060593          	mv	a1,a2
    800025d4:	0006861b          	sext.w	a2,a3
    800025d8:	00002097          	auipc	ra,0x2
    800025dc:	c0c080e7          	jalr	-1012(ra) # 800041e4 <__memmove>
    800025e0:	00813083          	ld	ra,8(sp)
    800025e4:	00013403          	ld	s0,0(sp)
    800025e8:	00000513          	li	a0,0
    800025ec:	01010113          	addi	sp,sp,16
    800025f0:	00008067          	ret
    800025f4:	00003517          	auipc	a0,0x3
    800025f8:	b2c50513          	addi	a0,a0,-1236 # 80005120 <_ZZ12printIntegermE6digits+0x90>
    800025fc:	00001097          	auipc	ra,0x1
    80002600:	8e0080e7          	jalr	-1824(ra) # 80002edc <panic>

0000000080002604 <trapinit>:
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00813423          	sd	s0,8(sp)
    8000260c:	01010413          	addi	s0,sp,16
    80002610:	00813403          	ld	s0,8(sp)
    80002614:	00003597          	auipc	a1,0x3
    80002618:	b3458593          	addi	a1,a1,-1228 # 80005148 <_ZZ12printIntegermE6digits+0xb8>
    8000261c:	00004517          	auipc	a0,0x4
    80002620:	49450513          	addi	a0,a0,1172 # 80006ab0 <tickslock>
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00001317          	auipc	t1,0x1
    8000262c:	5c030067          	jr	1472(t1) # 80003be8 <initlock>

0000000080002630 <trapinithart>:
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00813423          	sd	s0,8(sp)
    80002638:	01010413          	addi	s0,sp,16
    8000263c:	00000797          	auipc	a5,0x0
    80002640:	2f478793          	addi	a5,a5,756 # 80002930 <kernelvec>
    80002644:	10579073          	csrw	stvec,a5
    80002648:	00813403          	ld	s0,8(sp)
    8000264c:	01010113          	addi	sp,sp,16
    80002650:	00008067          	ret

0000000080002654 <usertrap>:
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00813423          	sd	s0,8(sp)
    8000265c:	01010413          	addi	s0,sp,16
    80002660:	00813403          	ld	s0,8(sp)
    80002664:	01010113          	addi	sp,sp,16
    80002668:	00008067          	ret

000000008000266c <usertrapret>:
    8000266c:	ff010113          	addi	sp,sp,-16
    80002670:	00813423          	sd	s0,8(sp)
    80002674:	01010413          	addi	s0,sp,16
    80002678:	00813403          	ld	s0,8(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <kerneltrap>:
    80002684:	fe010113          	addi	sp,sp,-32
    80002688:	00813823          	sd	s0,16(sp)
    8000268c:	00113c23          	sd	ra,24(sp)
    80002690:	00913423          	sd	s1,8(sp)
    80002694:	02010413          	addi	s0,sp,32
    80002698:	142025f3          	csrr	a1,scause
    8000269c:	100027f3          	csrr	a5,sstatus
    800026a0:	0027f793          	andi	a5,a5,2
    800026a4:	10079c63          	bnez	a5,800027bc <kerneltrap+0x138>
    800026a8:	142027f3          	csrr	a5,scause
    800026ac:	0207ce63          	bltz	a5,800026e8 <kerneltrap+0x64>
    800026b0:	00003517          	auipc	a0,0x3
    800026b4:	ae050513          	addi	a0,a0,-1312 # 80005190 <_ZZ12printIntegermE6digits+0x100>
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	880080e7          	jalr	-1920(ra) # 80002f38 <__printf>
    800026c0:	141025f3          	csrr	a1,sepc
    800026c4:	14302673          	csrr	a2,stval
    800026c8:	00003517          	auipc	a0,0x3
    800026cc:	ad850513          	addi	a0,a0,-1320 # 800051a0 <_ZZ12printIntegermE6digits+0x110>
    800026d0:	00001097          	auipc	ra,0x1
    800026d4:	868080e7          	jalr	-1944(ra) # 80002f38 <__printf>
    800026d8:	00003517          	auipc	a0,0x3
    800026dc:	ae050513          	addi	a0,a0,-1312 # 800051b8 <_ZZ12printIntegermE6digits+0x128>
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	7fc080e7          	jalr	2044(ra) # 80002edc <panic>
    800026e8:	0ff7f713          	andi	a4,a5,255
    800026ec:	00900693          	li	a3,9
    800026f0:	04d70063          	beq	a4,a3,80002730 <kerneltrap+0xac>
    800026f4:	fff00713          	li	a4,-1
    800026f8:	03f71713          	slli	a4,a4,0x3f
    800026fc:	00170713          	addi	a4,a4,1
    80002700:	fae798e3          	bne	a5,a4,800026b0 <kerneltrap+0x2c>
    80002704:	00000097          	auipc	ra,0x0
    80002708:	e00080e7          	jalr	-512(ra) # 80002504 <cpuid>
    8000270c:	06050663          	beqz	a0,80002778 <kerneltrap+0xf4>
    80002710:	144027f3          	csrr	a5,sip
    80002714:	ffd7f793          	andi	a5,a5,-3
    80002718:	14479073          	csrw	sip,a5
    8000271c:	01813083          	ld	ra,24(sp)
    80002720:	01013403          	ld	s0,16(sp)
    80002724:	00813483          	ld	s1,8(sp)
    80002728:	02010113          	addi	sp,sp,32
    8000272c:	00008067          	ret
    80002730:	00000097          	auipc	ra,0x0
    80002734:	3c4080e7          	jalr	964(ra) # 80002af4 <plic_claim>
    80002738:	00a00793          	li	a5,10
    8000273c:	00050493          	mv	s1,a0
    80002740:	06f50863          	beq	a0,a5,800027b0 <kerneltrap+0x12c>
    80002744:	fc050ce3          	beqz	a0,8000271c <kerneltrap+0x98>
    80002748:	00050593          	mv	a1,a0
    8000274c:	00003517          	auipc	a0,0x3
    80002750:	a2450513          	addi	a0,a0,-1500 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    80002754:	00000097          	auipc	ra,0x0
    80002758:	7e4080e7          	jalr	2020(ra) # 80002f38 <__printf>
    8000275c:	01013403          	ld	s0,16(sp)
    80002760:	01813083          	ld	ra,24(sp)
    80002764:	00048513          	mv	a0,s1
    80002768:	00813483          	ld	s1,8(sp)
    8000276c:	02010113          	addi	sp,sp,32
    80002770:	00000317          	auipc	t1,0x0
    80002774:	3bc30067          	jr	956(t1) # 80002b2c <plic_complete>
    80002778:	00004517          	auipc	a0,0x4
    8000277c:	33850513          	addi	a0,a0,824 # 80006ab0 <tickslock>
    80002780:	00001097          	auipc	ra,0x1
    80002784:	48c080e7          	jalr	1164(ra) # 80003c0c <acquire>
    80002788:	00003717          	auipc	a4,0x3
    8000278c:	21c70713          	addi	a4,a4,540 # 800059a4 <ticks>
    80002790:	00072783          	lw	a5,0(a4)
    80002794:	00004517          	auipc	a0,0x4
    80002798:	31c50513          	addi	a0,a0,796 # 80006ab0 <tickslock>
    8000279c:	0017879b          	addiw	a5,a5,1
    800027a0:	00f72023          	sw	a5,0(a4)
    800027a4:	00001097          	auipc	ra,0x1
    800027a8:	534080e7          	jalr	1332(ra) # 80003cd8 <release>
    800027ac:	f65ff06f          	j	80002710 <kerneltrap+0x8c>
    800027b0:	00001097          	auipc	ra,0x1
    800027b4:	090080e7          	jalr	144(ra) # 80003840 <uartintr>
    800027b8:	fa5ff06f          	j	8000275c <kerneltrap+0xd8>
    800027bc:	00003517          	auipc	a0,0x3
    800027c0:	99450513          	addi	a0,a0,-1644 # 80005150 <_ZZ12printIntegermE6digits+0xc0>
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	718080e7          	jalr	1816(ra) # 80002edc <panic>

00000000800027cc <clockintr>:
    800027cc:	fe010113          	addi	sp,sp,-32
    800027d0:	00813823          	sd	s0,16(sp)
    800027d4:	00913423          	sd	s1,8(sp)
    800027d8:	00113c23          	sd	ra,24(sp)
    800027dc:	02010413          	addi	s0,sp,32
    800027e0:	00004497          	auipc	s1,0x4
    800027e4:	2d048493          	addi	s1,s1,720 # 80006ab0 <tickslock>
    800027e8:	00048513          	mv	a0,s1
    800027ec:	00001097          	auipc	ra,0x1
    800027f0:	420080e7          	jalr	1056(ra) # 80003c0c <acquire>
    800027f4:	00003717          	auipc	a4,0x3
    800027f8:	1b070713          	addi	a4,a4,432 # 800059a4 <ticks>
    800027fc:	00072783          	lw	a5,0(a4)
    80002800:	01013403          	ld	s0,16(sp)
    80002804:	01813083          	ld	ra,24(sp)
    80002808:	00048513          	mv	a0,s1
    8000280c:	0017879b          	addiw	a5,a5,1
    80002810:	00813483          	ld	s1,8(sp)
    80002814:	00f72023          	sw	a5,0(a4)
    80002818:	02010113          	addi	sp,sp,32
    8000281c:	00001317          	auipc	t1,0x1
    80002820:	4bc30067          	jr	1212(t1) # 80003cd8 <release>

0000000080002824 <devintr>:
    80002824:	142027f3          	csrr	a5,scause
    80002828:	00000513          	li	a0,0
    8000282c:	0007c463          	bltz	a5,80002834 <devintr+0x10>
    80002830:	00008067          	ret
    80002834:	fe010113          	addi	sp,sp,-32
    80002838:	00813823          	sd	s0,16(sp)
    8000283c:	00113c23          	sd	ra,24(sp)
    80002840:	00913423          	sd	s1,8(sp)
    80002844:	02010413          	addi	s0,sp,32
    80002848:	0ff7f713          	andi	a4,a5,255
    8000284c:	00900693          	li	a3,9
    80002850:	04d70c63          	beq	a4,a3,800028a8 <devintr+0x84>
    80002854:	fff00713          	li	a4,-1
    80002858:	03f71713          	slli	a4,a4,0x3f
    8000285c:	00170713          	addi	a4,a4,1
    80002860:	00e78c63          	beq	a5,a4,80002878 <devintr+0x54>
    80002864:	01813083          	ld	ra,24(sp)
    80002868:	01013403          	ld	s0,16(sp)
    8000286c:	00813483          	ld	s1,8(sp)
    80002870:	02010113          	addi	sp,sp,32
    80002874:	00008067          	ret
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	c8c080e7          	jalr	-884(ra) # 80002504 <cpuid>
    80002880:	06050663          	beqz	a0,800028ec <devintr+0xc8>
    80002884:	144027f3          	csrr	a5,sip
    80002888:	ffd7f793          	andi	a5,a5,-3
    8000288c:	14479073          	csrw	sip,a5
    80002890:	01813083          	ld	ra,24(sp)
    80002894:	01013403          	ld	s0,16(sp)
    80002898:	00813483          	ld	s1,8(sp)
    8000289c:	00200513          	li	a0,2
    800028a0:	02010113          	addi	sp,sp,32
    800028a4:	00008067          	ret
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	24c080e7          	jalr	588(ra) # 80002af4 <plic_claim>
    800028b0:	00a00793          	li	a5,10
    800028b4:	00050493          	mv	s1,a0
    800028b8:	06f50663          	beq	a0,a5,80002924 <devintr+0x100>
    800028bc:	00100513          	li	a0,1
    800028c0:	fa0482e3          	beqz	s1,80002864 <devintr+0x40>
    800028c4:	00048593          	mv	a1,s1
    800028c8:	00003517          	auipc	a0,0x3
    800028cc:	8a850513          	addi	a0,a0,-1880 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	668080e7          	jalr	1640(ra) # 80002f38 <__printf>
    800028d8:	00048513          	mv	a0,s1
    800028dc:	00000097          	auipc	ra,0x0
    800028e0:	250080e7          	jalr	592(ra) # 80002b2c <plic_complete>
    800028e4:	00100513          	li	a0,1
    800028e8:	f7dff06f          	j	80002864 <devintr+0x40>
    800028ec:	00004517          	auipc	a0,0x4
    800028f0:	1c450513          	addi	a0,a0,452 # 80006ab0 <tickslock>
    800028f4:	00001097          	auipc	ra,0x1
    800028f8:	318080e7          	jalr	792(ra) # 80003c0c <acquire>
    800028fc:	00003717          	auipc	a4,0x3
    80002900:	0a870713          	addi	a4,a4,168 # 800059a4 <ticks>
    80002904:	00072783          	lw	a5,0(a4)
    80002908:	00004517          	auipc	a0,0x4
    8000290c:	1a850513          	addi	a0,a0,424 # 80006ab0 <tickslock>
    80002910:	0017879b          	addiw	a5,a5,1
    80002914:	00f72023          	sw	a5,0(a4)
    80002918:	00001097          	auipc	ra,0x1
    8000291c:	3c0080e7          	jalr	960(ra) # 80003cd8 <release>
    80002920:	f65ff06f          	j	80002884 <devintr+0x60>
    80002924:	00001097          	auipc	ra,0x1
    80002928:	f1c080e7          	jalr	-228(ra) # 80003840 <uartintr>
    8000292c:	fadff06f          	j	800028d8 <devintr+0xb4>

0000000080002930 <kernelvec>:
    80002930:	f0010113          	addi	sp,sp,-256
    80002934:	00113023          	sd	ra,0(sp)
    80002938:	00213423          	sd	sp,8(sp)
    8000293c:	00313823          	sd	gp,16(sp)
    80002940:	00413c23          	sd	tp,24(sp)
    80002944:	02513023          	sd	t0,32(sp)
    80002948:	02613423          	sd	t1,40(sp)
    8000294c:	02713823          	sd	t2,48(sp)
    80002950:	02813c23          	sd	s0,56(sp)
    80002954:	04913023          	sd	s1,64(sp)
    80002958:	04a13423          	sd	a0,72(sp)
    8000295c:	04b13823          	sd	a1,80(sp)
    80002960:	04c13c23          	sd	a2,88(sp)
    80002964:	06d13023          	sd	a3,96(sp)
    80002968:	06e13423          	sd	a4,104(sp)
    8000296c:	06f13823          	sd	a5,112(sp)
    80002970:	07013c23          	sd	a6,120(sp)
    80002974:	09113023          	sd	a7,128(sp)
    80002978:	09213423          	sd	s2,136(sp)
    8000297c:	09313823          	sd	s3,144(sp)
    80002980:	09413c23          	sd	s4,152(sp)
    80002984:	0b513023          	sd	s5,160(sp)
    80002988:	0b613423          	sd	s6,168(sp)
    8000298c:	0b713823          	sd	s7,176(sp)
    80002990:	0b813c23          	sd	s8,184(sp)
    80002994:	0d913023          	sd	s9,192(sp)
    80002998:	0da13423          	sd	s10,200(sp)
    8000299c:	0db13823          	sd	s11,208(sp)
    800029a0:	0dc13c23          	sd	t3,216(sp)
    800029a4:	0fd13023          	sd	t4,224(sp)
    800029a8:	0fe13423          	sd	t5,232(sp)
    800029ac:	0ff13823          	sd	t6,240(sp)
    800029b0:	cd5ff0ef          	jal	ra,80002684 <kerneltrap>
    800029b4:	00013083          	ld	ra,0(sp)
    800029b8:	00813103          	ld	sp,8(sp)
    800029bc:	01013183          	ld	gp,16(sp)
    800029c0:	02013283          	ld	t0,32(sp)
    800029c4:	02813303          	ld	t1,40(sp)
    800029c8:	03013383          	ld	t2,48(sp)
    800029cc:	03813403          	ld	s0,56(sp)
    800029d0:	04013483          	ld	s1,64(sp)
    800029d4:	04813503          	ld	a0,72(sp)
    800029d8:	05013583          	ld	a1,80(sp)
    800029dc:	05813603          	ld	a2,88(sp)
    800029e0:	06013683          	ld	a3,96(sp)
    800029e4:	06813703          	ld	a4,104(sp)
    800029e8:	07013783          	ld	a5,112(sp)
    800029ec:	07813803          	ld	a6,120(sp)
    800029f0:	08013883          	ld	a7,128(sp)
    800029f4:	08813903          	ld	s2,136(sp)
    800029f8:	09013983          	ld	s3,144(sp)
    800029fc:	09813a03          	ld	s4,152(sp)
    80002a00:	0a013a83          	ld	s5,160(sp)
    80002a04:	0a813b03          	ld	s6,168(sp)
    80002a08:	0b013b83          	ld	s7,176(sp)
    80002a0c:	0b813c03          	ld	s8,184(sp)
    80002a10:	0c013c83          	ld	s9,192(sp)
    80002a14:	0c813d03          	ld	s10,200(sp)
    80002a18:	0d013d83          	ld	s11,208(sp)
    80002a1c:	0d813e03          	ld	t3,216(sp)
    80002a20:	0e013e83          	ld	t4,224(sp)
    80002a24:	0e813f03          	ld	t5,232(sp)
    80002a28:	0f013f83          	ld	t6,240(sp)
    80002a2c:	10010113          	addi	sp,sp,256
    80002a30:	10200073          	sret
    80002a34:	00000013          	nop
    80002a38:	00000013          	nop
    80002a3c:	00000013          	nop

0000000080002a40 <timervec>:
    80002a40:	34051573          	csrrw	a0,mscratch,a0
    80002a44:	00b53023          	sd	a1,0(a0)
    80002a48:	00c53423          	sd	a2,8(a0)
    80002a4c:	00d53823          	sd	a3,16(a0)
    80002a50:	01853583          	ld	a1,24(a0)
    80002a54:	02053603          	ld	a2,32(a0)
    80002a58:	0005b683          	ld	a3,0(a1)
    80002a5c:	00c686b3          	add	a3,a3,a2
    80002a60:	00d5b023          	sd	a3,0(a1)
    80002a64:	00200593          	li	a1,2
    80002a68:	14459073          	csrw	sip,a1
    80002a6c:	01053683          	ld	a3,16(a0)
    80002a70:	00853603          	ld	a2,8(a0)
    80002a74:	00053583          	ld	a1,0(a0)
    80002a78:	34051573          	csrrw	a0,mscratch,a0
    80002a7c:	30200073          	mret

0000000080002a80 <plicinit>:
    80002a80:	ff010113          	addi	sp,sp,-16
    80002a84:	00813423          	sd	s0,8(sp)
    80002a88:	01010413          	addi	s0,sp,16
    80002a8c:	00813403          	ld	s0,8(sp)
    80002a90:	0c0007b7          	lui	a5,0xc000
    80002a94:	00100713          	li	a4,1
    80002a98:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002a9c:	00e7a223          	sw	a4,4(a5)
    80002aa0:	01010113          	addi	sp,sp,16
    80002aa4:	00008067          	ret

0000000080002aa8 <plicinithart>:
    80002aa8:	ff010113          	addi	sp,sp,-16
    80002aac:	00813023          	sd	s0,0(sp)
    80002ab0:	00113423          	sd	ra,8(sp)
    80002ab4:	01010413          	addi	s0,sp,16
    80002ab8:	00000097          	auipc	ra,0x0
    80002abc:	a4c080e7          	jalr	-1460(ra) # 80002504 <cpuid>
    80002ac0:	0085171b          	slliw	a4,a0,0x8
    80002ac4:	0c0027b7          	lui	a5,0xc002
    80002ac8:	00e787b3          	add	a5,a5,a4
    80002acc:	40200713          	li	a4,1026
    80002ad0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002ad4:	00813083          	ld	ra,8(sp)
    80002ad8:	00013403          	ld	s0,0(sp)
    80002adc:	00d5151b          	slliw	a0,a0,0xd
    80002ae0:	0c2017b7          	lui	a5,0xc201
    80002ae4:	00a78533          	add	a0,a5,a0
    80002ae8:	00052023          	sw	zero,0(a0)
    80002aec:	01010113          	addi	sp,sp,16
    80002af0:	00008067          	ret

0000000080002af4 <plic_claim>:
    80002af4:	ff010113          	addi	sp,sp,-16
    80002af8:	00813023          	sd	s0,0(sp)
    80002afc:	00113423          	sd	ra,8(sp)
    80002b00:	01010413          	addi	s0,sp,16
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	a00080e7          	jalr	-1536(ra) # 80002504 <cpuid>
    80002b0c:	00813083          	ld	ra,8(sp)
    80002b10:	00013403          	ld	s0,0(sp)
    80002b14:	00d5151b          	slliw	a0,a0,0xd
    80002b18:	0c2017b7          	lui	a5,0xc201
    80002b1c:	00a78533          	add	a0,a5,a0
    80002b20:	00452503          	lw	a0,4(a0)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <plic_complete>:
    80002b2c:	fe010113          	addi	sp,sp,-32
    80002b30:	00813823          	sd	s0,16(sp)
    80002b34:	00913423          	sd	s1,8(sp)
    80002b38:	00113c23          	sd	ra,24(sp)
    80002b3c:	02010413          	addi	s0,sp,32
    80002b40:	00050493          	mv	s1,a0
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	9c0080e7          	jalr	-1600(ra) # 80002504 <cpuid>
    80002b4c:	01813083          	ld	ra,24(sp)
    80002b50:	01013403          	ld	s0,16(sp)
    80002b54:	00d5179b          	slliw	a5,a0,0xd
    80002b58:	0c201737          	lui	a4,0xc201
    80002b5c:	00f707b3          	add	a5,a4,a5
    80002b60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002b64:	00813483          	ld	s1,8(sp)
    80002b68:	02010113          	addi	sp,sp,32
    80002b6c:	00008067          	ret

0000000080002b70 <consolewrite>:
    80002b70:	fb010113          	addi	sp,sp,-80
    80002b74:	04813023          	sd	s0,64(sp)
    80002b78:	04113423          	sd	ra,72(sp)
    80002b7c:	02913c23          	sd	s1,56(sp)
    80002b80:	03213823          	sd	s2,48(sp)
    80002b84:	03313423          	sd	s3,40(sp)
    80002b88:	03413023          	sd	s4,32(sp)
    80002b8c:	01513c23          	sd	s5,24(sp)
    80002b90:	05010413          	addi	s0,sp,80
    80002b94:	06c05c63          	blez	a2,80002c0c <consolewrite+0x9c>
    80002b98:	00060993          	mv	s3,a2
    80002b9c:	00050a13          	mv	s4,a0
    80002ba0:	00058493          	mv	s1,a1
    80002ba4:	00000913          	li	s2,0
    80002ba8:	fff00a93          	li	s5,-1
    80002bac:	01c0006f          	j	80002bc8 <consolewrite+0x58>
    80002bb0:	fbf44503          	lbu	a0,-65(s0)
    80002bb4:	0019091b          	addiw	s2,s2,1
    80002bb8:	00148493          	addi	s1,s1,1
    80002bbc:	00001097          	auipc	ra,0x1
    80002bc0:	a9c080e7          	jalr	-1380(ra) # 80003658 <uartputc>
    80002bc4:	03298063          	beq	s3,s2,80002be4 <consolewrite+0x74>
    80002bc8:	00048613          	mv	a2,s1
    80002bcc:	00100693          	li	a3,1
    80002bd0:	000a0593          	mv	a1,s4
    80002bd4:	fbf40513          	addi	a0,s0,-65
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	9e4080e7          	jalr	-1564(ra) # 800025bc <either_copyin>
    80002be0:	fd5518e3          	bne	a0,s5,80002bb0 <consolewrite+0x40>
    80002be4:	04813083          	ld	ra,72(sp)
    80002be8:	04013403          	ld	s0,64(sp)
    80002bec:	03813483          	ld	s1,56(sp)
    80002bf0:	02813983          	ld	s3,40(sp)
    80002bf4:	02013a03          	ld	s4,32(sp)
    80002bf8:	01813a83          	ld	s5,24(sp)
    80002bfc:	00090513          	mv	a0,s2
    80002c00:	03013903          	ld	s2,48(sp)
    80002c04:	05010113          	addi	sp,sp,80
    80002c08:	00008067          	ret
    80002c0c:	00000913          	li	s2,0
    80002c10:	fd5ff06f          	j	80002be4 <consolewrite+0x74>

0000000080002c14 <consoleread>:
    80002c14:	f9010113          	addi	sp,sp,-112
    80002c18:	06813023          	sd	s0,96(sp)
    80002c1c:	04913c23          	sd	s1,88(sp)
    80002c20:	05213823          	sd	s2,80(sp)
    80002c24:	05313423          	sd	s3,72(sp)
    80002c28:	05413023          	sd	s4,64(sp)
    80002c2c:	03513c23          	sd	s5,56(sp)
    80002c30:	03613823          	sd	s6,48(sp)
    80002c34:	03713423          	sd	s7,40(sp)
    80002c38:	03813023          	sd	s8,32(sp)
    80002c3c:	06113423          	sd	ra,104(sp)
    80002c40:	01913c23          	sd	s9,24(sp)
    80002c44:	07010413          	addi	s0,sp,112
    80002c48:	00060b93          	mv	s7,a2
    80002c4c:	00050913          	mv	s2,a0
    80002c50:	00058c13          	mv	s8,a1
    80002c54:	00060b1b          	sext.w	s6,a2
    80002c58:	00004497          	auipc	s1,0x4
    80002c5c:	e8048493          	addi	s1,s1,-384 # 80006ad8 <cons>
    80002c60:	00400993          	li	s3,4
    80002c64:	fff00a13          	li	s4,-1
    80002c68:	00a00a93          	li	s5,10
    80002c6c:	05705e63          	blez	s7,80002cc8 <consoleread+0xb4>
    80002c70:	09c4a703          	lw	a4,156(s1)
    80002c74:	0984a783          	lw	a5,152(s1)
    80002c78:	0007071b          	sext.w	a4,a4
    80002c7c:	08e78463          	beq	a5,a4,80002d04 <consoleread+0xf0>
    80002c80:	07f7f713          	andi	a4,a5,127
    80002c84:	00e48733          	add	a4,s1,a4
    80002c88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002c8c:	0017869b          	addiw	a3,a5,1
    80002c90:	08d4ac23          	sw	a3,152(s1)
    80002c94:	00070c9b          	sext.w	s9,a4
    80002c98:	0b370663          	beq	a4,s3,80002d44 <consoleread+0x130>
    80002c9c:	00100693          	li	a3,1
    80002ca0:	f9f40613          	addi	a2,s0,-97
    80002ca4:	000c0593          	mv	a1,s8
    80002ca8:	00090513          	mv	a0,s2
    80002cac:	f8e40fa3          	sb	a4,-97(s0)
    80002cb0:	00000097          	auipc	ra,0x0
    80002cb4:	8c0080e7          	jalr	-1856(ra) # 80002570 <either_copyout>
    80002cb8:	01450863          	beq	a0,s4,80002cc8 <consoleread+0xb4>
    80002cbc:	001c0c13          	addi	s8,s8,1
    80002cc0:	fffb8b9b          	addiw	s7,s7,-1
    80002cc4:	fb5c94e3          	bne	s9,s5,80002c6c <consoleread+0x58>
    80002cc8:	000b851b          	sext.w	a0,s7
    80002ccc:	06813083          	ld	ra,104(sp)
    80002cd0:	06013403          	ld	s0,96(sp)
    80002cd4:	05813483          	ld	s1,88(sp)
    80002cd8:	05013903          	ld	s2,80(sp)
    80002cdc:	04813983          	ld	s3,72(sp)
    80002ce0:	04013a03          	ld	s4,64(sp)
    80002ce4:	03813a83          	ld	s5,56(sp)
    80002ce8:	02813b83          	ld	s7,40(sp)
    80002cec:	02013c03          	ld	s8,32(sp)
    80002cf0:	01813c83          	ld	s9,24(sp)
    80002cf4:	40ab053b          	subw	a0,s6,a0
    80002cf8:	03013b03          	ld	s6,48(sp)
    80002cfc:	07010113          	addi	sp,sp,112
    80002d00:	00008067          	ret
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	1d8080e7          	jalr	472(ra) # 80003edc <push_on>
    80002d0c:	0984a703          	lw	a4,152(s1)
    80002d10:	09c4a783          	lw	a5,156(s1)
    80002d14:	0007879b          	sext.w	a5,a5
    80002d18:	fef70ce3          	beq	a4,a5,80002d10 <consoleread+0xfc>
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	234080e7          	jalr	564(ra) # 80003f50 <pop_on>
    80002d24:	0984a783          	lw	a5,152(s1)
    80002d28:	07f7f713          	andi	a4,a5,127
    80002d2c:	00e48733          	add	a4,s1,a4
    80002d30:	01874703          	lbu	a4,24(a4)
    80002d34:	0017869b          	addiw	a3,a5,1
    80002d38:	08d4ac23          	sw	a3,152(s1)
    80002d3c:	00070c9b          	sext.w	s9,a4
    80002d40:	f5371ee3          	bne	a4,s3,80002c9c <consoleread+0x88>
    80002d44:	000b851b          	sext.w	a0,s7
    80002d48:	f96bf2e3          	bgeu	s7,s6,80002ccc <consoleread+0xb8>
    80002d4c:	08f4ac23          	sw	a5,152(s1)
    80002d50:	f7dff06f          	j	80002ccc <consoleread+0xb8>

0000000080002d54 <consputc>:
    80002d54:	10000793          	li	a5,256
    80002d58:	00f50663          	beq	a0,a5,80002d64 <consputc+0x10>
    80002d5c:	00001317          	auipc	t1,0x1
    80002d60:	9f430067          	jr	-1548(t1) # 80003750 <uartputc_sync>
    80002d64:	ff010113          	addi	sp,sp,-16
    80002d68:	00113423          	sd	ra,8(sp)
    80002d6c:	00813023          	sd	s0,0(sp)
    80002d70:	01010413          	addi	s0,sp,16
    80002d74:	00800513          	li	a0,8
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	9d8080e7          	jalr	-1576(ra) # 80003750 <uartputc_sync>
    80002d80:	02000513          	li	a0,32
    80002d84:	00001097          	auipc	ra,0x1
    80002d88:	9cc080e7          	jalr	-1588(ra) # 80003750 <uartputc_sync>
    80002d8c:	00013403          	ld	s0,0(sp)
    80002d90:	00813083          	ld	ra,8(sp)
    80002d94:	00800513          	li	a0,8
    80002d98:	01010113          	addi	sp,sp,16
    80002d9c:	00001317          	auipc	t1,0x1
    80002da0:	9b430067          	jr	-1612(t1) # 80003750 <uartputc_sync>

0000000080002da4 <consoleintr>:
    80002da4:	fe010113          	addi	sp,sp,-32
    80002da8:	00813823          	sd	s0,16(sp)
    80002dac:	00913423          	sd	s1,8(sp)
    80002db0:	01213023          	sd	s2,0(sp)
    80002db4:	00113c23          	sd	ra,24(sp)
    80002db8:	02010413          	addi	s0,sp,32
    80002dbc:	00004917          	auipc	s2,0x4
    80002dc0:	d1c90913          	addi	s2,s2,-740 # 80006ad8 <cons>
    80002dc4:	00050493          	mv	s1,a0
    80002dc8:	00090513          	mv	a0,s2
    80002dcc:	00001097          	auipc	ra,0x1
    80002dd0:	e40080e7          	jalr	-448(ra) # 80003c0c <acquire>
    80002dd4:	02048c63          	beqz	s1,80002e0c <consoleintr+0x68>
    80002dd8:	0a092783          	lw	a5,160(s2)
    80002ddc:	09892703          	lw	a4,152(s2)
    80002de0:	07f00693          	li	a3,127
    80002de4:	40e7873b          	subw	a4,a5,a4
    80002de8:	02e6e263          	bltu	a3,a4,80002e0c <consoleintr+0x68>
    80002dec:	00d00713          	li	a4,13
    80002df0:	04e48063          	beq	s1,a4,80002e30 <consoleintr+0x8c>
    80002df4:	07f7f713          	andi	a4,a5,127
    80002df8:	00e90733          	add	a4,s2,a4
    80002dfc:	0017879b          	addiw	a5,a5,1
    80002e00:	0af92023          	sw	a5,160(s2)
    80002e04:	00970c23          	sb	s1,24(a4)
    80002e08:	08f92e23          	sw	a5,156(s2)
    80002e0c:	01013403          	ld	s0,16(sp)
    80002e10:	01813083          	ld	ra,24(sp)
    80002e14:	00813483          	ld	s1,8(sp)
    80002e18:	00013903          	ld	s2,0(sp)
    80002e1c:	00004517          	auipc	a0,0x4
    80002e20:	cbc50513          	addi	a0,a0,-836 # 80006ad8 <cons>
    80002e24:	02010113          	addi	sp,sp,32
    80002e28:	00001317          	auipc	t1,0x1
    80002e2c:	eb030067          	jr	-336(t1) # 80003cd8 <release>
    80002e30:	00a00493          	li	s1,10
    80002e34:	fc1ff06f          	j	80002df4 <consoleintr+0x50>

0000000080002e38 <consoleinit>:
    80002e38:	fe010113          	addi	sp,sp,-32
    80002e3c:	00113c23          	sd	ra,24(sp)
    80002e40:	00813823          	sd	s0,16(sp)
    80002e44:	00913423          	sd	s1,8(sp)
    80002e48:	02010413          	addi	s0,sp,32
    80002e4c:	00004497          	auipc	s1,0x4
    80002e50:	c8c48493          	addi	s1,s1,-884 # 80006ad8 <cons>
    80002e54:	00048513          	mv	a0,s1
    80002e58:	00002597          	auipc	a1,0x2
    80002e5c:	37058593          	addi	a1,a1,880 # 800051c8 <_ZZ12printIntegermE6digits+0x138>
    80002e60:	00001097          	auipc	ra,0x1
    80002e64:	d88080e7          	jalr	-632(ra) # 80003be8 <initlock>
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	7ac080e7          	jalr	1964(ra) # 80003614 <uartinit>
    80002e70:	01813083          	ld	ra,24(sp)
    80002e74:	01013403          	ld	s0,16(sp)
    80002e78:	00000797          	auipc	a5,0x0
    80002e7c:	d9c78793          	addi	a5,a5,-612 # 80002c14 <consoleread>
    80002e80:	0af4bc23          	sd	a5,184(s1)
    80002e84:	00000797          	auipc	a5,0x0
    80002e88:	cec78793          	addi	a5,a5,-788 # 80002b70 <consolewrite>
    80002e8c:	0cf4b023          	sd	a5,192(s1)
    80002e90:	00813483          	ld	s1,8(sp)
    80002e94:	02010113          	addi	sp,sp,32
    80002e98:	00008067          	ret

0000000080002e9c <console_read>:
    80002e9c:	ff010113          	addi	sp,sp,-16
    80002ea0:	00813423          	sd	s0,8(sp)
    80002ea4:	01010413          	addi	s0,sp,16
    80002ea8:	00813403          	ld	s0,8(sp)
    80002eac:	00004317          	auipc	t1,0x4
    80002eb0:	ce433303          	ld	t1,-796(t1) # 80006b90 <devsw+0x10>
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00030067          	jr	t1

0000000080002ebc <console_write>:
    80002ebc:	ff010113          	addi	sp,sp,-16
    80002ec0:	00813423          	sd	s0,8(sp)
    80002ec4:	01010413          	addi	s0,sp,16
    80002ec8:	00813403          	ld	s0,8(sp)
    80002ecc:	00004317          	auipc	t1,0x4
    80002ed0:	ccc33303          	ld	t1,-820(t1) # 80006b98 <devsw+0x18>
    80002ed4:	01010113          	addi	sp,sp,16
    80002ed8:	00030067          	jr	t1

0000000080002edc <panic>:
    80002edc:	fe010113          	addi	sp,sp,-32
    80002ee0:	00113c23          	sd	ra,24(sp)
    80002ee4:	00813823          	sd	s0,16(sp)
    80002ee8:	00913423          	sd	s1,8(sp)
    80002eec:	02010413          	addi	s0,sp,32
    80002ef0:	00050493          	mv	s1,a0
    80002ef4:	00002517          	auipc	a0,0x2
    80002ef8:	2dc50513          	addi	a0,a0,732 # 800051d0 <_ZZ12printIntegermE6digits+0x140>
    80002efc:	00004797          	auipc	a5,0x4
    80002f00:	d207ae23          	sw	zero,-708(a5) # 80006c38 <pr+0x18>
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	034080e7          	jalr	52(ra) # 80002f38 <__printf>
    80002f0c:	00048513          	mv	a0,s1
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	028080e7          	jalr	40(ra) # 80002f38 <__printf>
    80002f18:	00002517          	auipc	a0,0x2
    80002f1c:	12850513          	addi	a0,a0,296 # 80005040 <CONSOLE_STATUS+0x30>
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	018080e7          	jalr	24(ra) # 80002f38 <__printf>
    80002f28:	00100793          	li	a5,1
    80002f2c:	00003717          	auipc	a4,0x3
    80002f30:	a6f72e23          	sw	a5,-1412(a4) # 800059a8 <panicked>
    80002f34:	0000006f          	j	80002f34 <panic+0x58>

0000000080002f38 <__printf>:
    80002f38:	f3010113          	addi	sp,sp,-208
    80002f3c:	08813023          	sd	s0,128(sp)
    80002f40:	07313423          	sd	s3,104(sp)
    80002f44:	09010413          	addi	s0,sp,144
    80002f48:	05813023          	sd	s8,64(sp)
    80002f4c:	08113423          	sd	ra,136(sp)
    80002f50:	06913c23          	sd	s1,120(sp)
    80002f54:	07213823          	sd	s2,112(sp)
    80002f58:	07413023          	sd	s4,96(sp)
    80002f5c:	05513c23          	sd	s5,88(sp)
    80002f60:	05613823          	sd	s6,80(sp)
    80002f64:	05713423          	sd	s7,72(sp)
    80002f68:	03913c23          	sd	s9,56(sp)
    80002f6c:	03a13823          	sd	s10,48(sp)
    80002f70:	03b13423          	sd	s11,40(sp)
    80002f74:	00004317          	auipc	t1,0x4
    80002f78:	cac30313          	addi	t1,t1,-852 # 80006c20 <pr>
    80002f7c:	01832c03          	lw	s8,24(t1)
    80002f80:	00b43423          	sd	a1,8(s0)
    80002f84:	00c43823          	sd	a2,16(s0)
    80002f88:	00d43c23          	sd	a3,24(s0)
    80002f8c:	02e43023          	sd	a4,32(s0)
    80002f90:	02f43423          	sd	a5,40(s0)
    80002f94:	03043823          	sd	a6,48(s0)
    80002f98:	03143c23          	sd	a7,56(s0)
    80002f9c:	00050993          	mv	s3,a0
    80002fa0:	4a0c1663          	bnez	s8,8000344c <__printf+0x514>
    80002fa4:	60098c63          	beqz	s3,800035bc <__printf+0x684>
    80002fa8:	0009c503          	lbu	a0,0(s3)
    80002fac:	00840793          	addi	a5,s0,8
    80002fb0:	f6f43c23          	sd	a5,-136(s0)
    80002fb4:	00000493          	li	s1,0
    80002fb8:	22050063          	beqz	a0,800031d8 <__printf+0x2a0>
    80002fbc:	00002a37          	lui	s4,0x2
    80002fc0:	00018ab7          	lui	s5,0x18
    80002fc4:	000f4b37          	lui	s6,0xf4
    80002fc8:	00989bb7          	lui	s7,0x989
    80002fcc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002fd0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002fd4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002fd8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002fdc:	00148c9b          	addiw	s9,s1,1
    80002fe0:	02500793          	li	a5,37
    80002fe4:	01998933          	add	s2,s3,s9
    80002fe8:	38f51263          	bne	a0,a5,8000336c <__printf+0x434>
    80002fec:	00094783          	lbu	a5,0(s2)
    80002ff0:	00078c9b          	sext.w	s9,a5
    80002ff4:	1e078263          	beqz	a5,800031d8 <__printf+0x2a0>
    80002ff8:	0024849b          	addiw	s1,s1,2
    80002ffc:	07000713          	li	a4,112
    80003000:	00998933          	add	s2,s3,s1
    80003004:	38e78a63          	beq	a5,a4,80003398 <__printf+0x460>
    80003008:	20f76863          	bltu	a4,a5,80003218 <__printf+0x2e0>
    8000300c:	42a78863          	beq	a5,a0,8000343c <__printf+0x504>
    80003010:	06400713          	li	a4,100
    80003014:	40e79663          	bne	a5,a4,80003420 <__printf+0x4e8>
    80003018:	f7843783          	ld	a5,-136(s0)
    8000301c:	0007a603          	lw	a2,0(a5)
    80003020:	00878793          	addi	a5,a5,8
    80003024:	f6f43c23          	sd	a5,-136(s0)
    80003028:	42064a63          	bltz	a2,8000345c <__printf+0x524>
    8000302c:	00a00713          	li	a4,10
    80003030:	02e677bb          	remuw	a5,a2,a4
    80003034:	00002d97          	auipc	s11,0x2
    80003038:	1c4d8d93          	addi	s11,s11,452 # 800051f8 <digits>
    8000303c:	00900593          	li	a1,9
    80003040:	0006051b          	sext.w	a0,a2
    80003044:	00000c93          	li	s9,0
    80003048:	02079793          	slli	a5,a5,0x20
    8000304c:	0207d793          	srli	a5,a5,0x20
    80003050:	00fd87b3          	add	a5,s11,a5
    80003054:	0007c783          	lbu	a5,0(a5)
    80003058:	02e656bb          	divuw	a3,a2,a4
    8000305c:	f8f40023          	sb	a5,-128(s0)
    80003060:	14c5d863          	bge	a1,a2,800031b0 <__printf+0x278>
    80003064:	06300593          	li	a1,99
    80003068:	00100c93          	li	s9,1
    8000306c:	02e6f7bb          	remuw	a5,a3,a4
    80003070:	02079793          	slli	a5,a5,0x20
    80003074:	0207d793          	srli	a5,a5,0x20
    80003078:	00fd87b3          	add	a5,s11,a5
    8000307c:	0007c783          	lbu	a5,0(a5)
    80003080:	02e6d73b          	divuw	a4,a3,a4
    80003084:	f8f400a3          	sb	a5,-127(s0)
    80003088:	12a5f463          	bgeu	a1,a0,800031b0 <__printf+0x278>
    8000308c:	00a00693          	li	a3,10
    80003090:	00900593          	li	a1,9
    80003094:	02d777bb          	remuw	a5,a4,a3
    80003098:	02079793          	slli	a5,a5,0x20
    8000309c:	0207d793          	srli	a5,a5,0x20
    800030a0:	00fd87b3          	add	a5,s11,a5
    800030a4:	0007c503          	lbu	a0,0(a5)
    800030a8:	02d757bb          	divuw	a5,a4,a3
    800030ac:	f8a40123          	sb	a0,-126(s0)
    800030b0:	48e5f263          	bgeu	a1,a4,80003534 <__printf+0x5fc>
    800030b4:	06300513          	li	a0,99
    800030b8:	02d7f5bb          	remuw	a1,a5,a3
    800030bc:	02059593          	slli	a1,a1,0x20
    800030c0:	0205d593          	srli	a1,a1,0x20
    800030c4:	00bd85b3          	add	a1,s11,a1
    800030c8:	0005c583          	lbu	a1,0(a1)
    800030cc:	02d7d7bb          	divuw	a5,a5,a3
    800030d0:	f8b401a3          	sb	a1,-125(s0)
    800030d4:	48e57263          	bgeu	a0,a4,80003558 <__printf+0x620>
    800030d8:	3e700513          	li	a0,999
    800030dc:	02d7f5bb          	remuw	a1,a5,a3
    800030e0:	02059593          	slli	a1,a1,0x20
    800030e4:	0205d593          	srli	a1,a1,0x20
    800030e8:	00bd85b3          	add	a1,s11,a1
    800030ec:	0005c583          	lbu	a1,0(a1)
    800030f0:	02d7d7bb          	divuw	a5,a5,a3
    800030f4:	f8b40223          	sb	a1,-124(s0)
    800030f8:	46e57663          	bgeu	a0,a4,80003564 <__printf+0x62c>
    800030fc:	02d7f5bb          	remuw	a1,a5,a3
    80003100:	02059593          	slli	a1,a1,0x20
    80003104:	0205d593          	srli	a1,a1,0x20
    80003108:	00bd85b3          	add	a1,s11,a1
    8000310c:	0005c583          	lbu	a1,0(a1)
    80003110:	02d7d7bb          	divuw	a5,a5,a3
    80003114:	f8b402a3          	sb	a1,-123(s0)
    80003118:	46ea7863          	bgeu	s4,a4,80003588 <__printf+0x650>
    8000311c:	02d7f5bb          	remuw	a1,a5,a3
    80003120:	02059593          	slli	a1,a1,0x20
    80003124:	0205d593          	srli	a1,a1,0x20
    80003128:	00bd85b3          	add	a1,s11,a1
    8000312c:	0005c583          	lbu	a1,0(a1)
    80003130:	02d7d7bb          	divuw	a5,a5,a3
    80003134:	f8b40323          	sb	a1,-122(s0)
    80003138:	3eeaf863          	bgeu	s5,a4,80003528 <__printf+0x5f0>
    8000313c:	02d7f5bb          	remuw	a1,a5,a3
    80003140:	02059593          	slli	a1,a1,0x20
    80003144:	0205d593          	srli	a1,a1,0x20
    80003148:	00bd85b3          	add	a1,s11,a1
    8000314c:	0005c583          	lbu	a1,0(a1)
    80003150:	02d7d7bb          	divuw	a5,a5,a3
    80003154:	f8b403a3          	sb	a1,-121(s0)
    80003158:	42eb7e63          	bgeu	s6,a4,80003594 <__printf+0x65c>
    8000315c:	02d7f5bb          	remuw	a1,a5,a3
    80003160:	02059593          	slli	a1,a1,0x20
    80003164:	0205d593          	srli	a1,a1,0x20
    80003168:	00bd85b3          	add	a1,s11,a1
    8000316c:	0005c583          	lbu	a1,0(a1)
    80003170:	02d7d7bb          	divuw	a5,a5,a3
    80003174:	f8b40423          	sb	a1,-120(s0)
    80003178:	42ebfc63          	bgeu	s7,a4,800035b0 <__printf+0x678>
    8000317c:	02079793          	slli	a5,a5,0x20
    80003180:	0207d793          	srli	a5,a5,0x20
    80003184:	00fd8db3          	add	s11,s11,a5
    80003188:	000dc703          	lbu	a4,0(s11)
    8000318c:	00a00793          	li	a5,10
    80003190:	00900c93          	li	s9,9
    80003194:	f8e404a3          	sb	a4,-119(s0)
    80003198:	00065c63          	bgez	a2,800031b0 <__printf+0x278>
    8000319c:	f9040713          	addi	a4,s0,-112
    800031a0:	00f70733          	add	a4,a4,a5
    800031a4:	02d00693          	li	a3,45
    800031a8:	fed70823          	sb	a3,-16(a4)
    800031ac:	00078c93          	mv	s9,a5
    800031b0:	f8040793          	addi	a5,s0,-128
    800031b4:	01978cb3          	add	s9,a5,s9
    800031b8:	f7f40d13          	addi	s10,s0,-129
    800031bc:	000cc503          	lbu	a0,0(s9)
    800031c0:	fffc8c93          	addi	s9,s9,-1
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	b90080e7          	jalr	-1136(ra) # 80002d54 <consputc>
    800031cc:	ffac98e3          	bne	s9,s10,800031bc <__printf+0x284>
    800031d0:	00094503          	lbu	a0,0(s2)
    800031d4:	e00514e3          	bnez	a0,80002fdc <__printf+0xa4>
    800031d8:	1a0c1663          	bnez	s8,80003384 <__printf+0x44c>
    800031dc:	08813083          	ld	ra,136(sp)
    800031e0:	08013403          	ld	s0,128(sp)
    800031e4:	07813483          	ld	s1,120(sp)
    800031e8:	07013903          	ld	s2,112(sp)
    800031ec:	06813983          	ld	s3,104(sp)
    800031f0:	06013a03          	ld	s4,96(sp)
    800031f4:	05813a83          	ld	s5,88(sp)
    800031f8:	05013b03          	ld	s6,80(sp)
    800031fc:	04813b83          	ld	s7,72(sp)
    80003200:	04013c03          	ld	s8,64(sp)
    80003204:	03813c83          	ld	s9,56(sp)
    80003208:	03013d03          	ld	s10,48(sp)
    8000320c:	02813d83          	ld	s11,40(sp)
    80003210:	0d010113          	addi	sp,sp,208
    80003214:	00008067          	ret
    80003218:	07300713          	li	a4,115
    8000321c:	1ce78a63          	beq	a5,a4,800033f0 <__printf+0x4b8>
    80003220:	07800713          	li	a4,120
    80003224:	1ee79e63          	bne	a5,a4,80003420 <__printf+0x4e8>
    80003228:	f7843783          	ld	a5,-136(s0)
    8000322c:	0007a703          	lw	a4,0(a5)
    80003230:	00878793          	addi	a5,a5,8
    80003234:	f6f43c23          	sd	a5,-136(s0)
    80003238:	28074263          	bltz	a4,800034bc <__printf+0x584>
    8000323c:	00002d97          	auipc	s11,0x2
    80003240:	fbcd8d93          	addi	s11,s11,-68 # 800051f8 <digits>
    80003244:	00f77793          	andi	a5,a4,15
    80003248:	00fd87b3          	add	a5,s11,a5
    8000324c:	0007c683          	lbu	a3,0(a5)
    80003250:	00f00613          	li	a2,15
    80003254:	0007079b          	sext.w	a5,a4
    80003258:	f8d40023          	sb	a3,-128(s0)
    8000325c:	0047559b          	srliw	a1,a4,0x4
    80003260:	0047569b          	srliw	a3,a4,0x4
    80003264:	00000c93          	li	s9,0
    80003268:	0ee65063          	bge	a2,a4,80003348 <__printf+0x410>
    8000326c:	00f6f693          	andi	a3,a3,15
    80003270:	00dd86b3          	add	a3,s11,a3
    80003274:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003278:	0087d79b          	srliw	a5,a5,0x8
    8000327c:	00100c93          	li	s9,1
    80003280:	f8d400a3          	sb	a3,-127(s0)
    80003284:	0cb67263          	bgeu	a2,a1,80003348 <__printf+0x410>
    80003288:	00f7f693          	andi	a3,a5,15
    8000328c:	00dd86b3          	add	a3,s11,a3
    80003290:	0006c583          	lbu	a1,0(a3)
    80003294:	00f00613          	li	a2,15
    80003298:	0047d69b          	srliw	a3,a5,0x4
    8000329c:	f8b40123          	sb	a1,-126(s0)
    800032a0:	0047d593          	srli	a1,a5,0x4
    800032a4:	28f67e63          	bgeu	a2,a5,80003540 <__printf+0x608>
    800032a8:	00f6f693          	andi	a3,a3,15
    800032ac:	00dd86b3          	add	a3,s11,a3
    800032b0:	0006c503          	lbu	a0,0(a3)
    800032b4:	0087d813          	srli	a6,a5,0x8
    800032b8:	0087d69b          	srliw	a3,a5,0x8
    800032bc:	f8a401a3          	sb	a0,-125(s0)
    800032c0:	28b67663          	bgeu	a2,a1,8000354c <__printf+0x614>
    800032c4:	00f6f693          	andi	a3,a3,15
    800032c8:	00dd86b3          	add	a3,s11,a3
    800032cc:	0006c583          	lbu	a1,0(a3)
    800032d0:	00c7d513          	srli	a0,a5,0xc
    800032d4:	00c7d69b          	srliw	a3,a5,0xc
    800032d8:	f8b40223          	sb	a1,-124(s0)
    800032dc:	29067a63          	bgeu	a2,a6,80003570 <__printf+0x638>
    800032e0:	00f6f693          	andi	a3,a3,15
    800032e4:	00dd86b3          	add	a3,s11,a3
    800032e8:	0006c583          	lbu	a1,0(a3)
    800032ec:	0107d813          	srli	a6,a5,0x10
    800032f0:	0107d69b          	srliw	a3,a5,0x10
    800032f4:	f8b402a3          	sb	a1,-123(s0)
    800032f8:	28a67263          	bgeu	a2,a0,8000357c <__printf+0x644>
    800032fc:	00f6f693          	andi	a3,a3,15
    80003300:	00dd86b3          	add	a3,s11,a3
    80003304:	0006c683          	lbu	a3,0(a3)
    80003308:	0147d79b          	srliw	a5,a5,0x14
    8000330c:	f8d40323          	sb	a3,-122(s0)
    80003310:	21067663          	bgeu	a2,a6,8000351c <__printf+0x5e4>
    80003314:	02079793          	slli	a5,a5,0x20
    80003318:	0207d793          	srli	a5,a5,0x20
    8000331c:	00fd8db3          	add	s11,s11,a5
    80003320:	000dc683          	lbu	a3,0(s11)
    80003324:	00800793          	li	a5,8
    80003328:	00700c93          	li	s9,7
    8000332c:	f8d403a3          	sb	a3,-121(s0)
    80003330:	00075c63          	bgez	a4,80003348 <__printf+0x410>
    80003334:	f9040713          	addi	a4,s0,-112
    80003338:	00f70733          	add	a4,a4,a5
    8000333c:	02d00693          	li	a3,45
    80003340:	fed70823          	sb	a3,-16(a4)
    80003344:	00078c93          	mv	s9,a5
    80003348:	f8040793          	addi	a5,s0,-128
    8000334c:	01978cb3          	add	s9,a5,s9
    80003350:	f7f40d13          	addi	s10,s0,-129
    80003354:	000cc503          	lbu	a0,0(s9)
    80003358:	fffc8c93          	addi	s9,s9,-1
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	9f8080e7          	jalr	-1544(ra) # 80002d54 <consputc>
    80003364:	ff9d18e3          	bne	s10,s9,80003354 <__printf+0x41c>
    80003368:	0100006f          	j	80003378 <__printf+0x440>
    8000336c:	00000097          	auipc	ra,0x0
    80003370:	9e8080e7          	jalr	-1560(ra) # 80002d54 <consputc>
    80003374:	000c8493          	mv	s1,s9
    80003378:	00094503          	lbu	a0,0(s2)
    8000337c:	c60510e3          	bnez	a0,80002fdc <__printf+0xa4>
    80003380:	e40c0ee3          	beqz	s8,800031dc <__printf+0x2a4>
    80003384:	00004517          	auipc	a0,0x4
    80003388:	89c50513          	addi	a0,a0,-1892 # 80006c20 <pr>
    8000338c:	00001097          	auipc	ra,0x1
    80003390:	94c080e7          	jalr	-1716(ra) # 80003cd8 <release>
    80003394:	e49ff06f          	j	800031dc <__printf+0x2a4>
    80003398:	f7843783          	ld	a5,-136(s0)
    8000339c:	03000513          	li	a0,48
    800033a0:	01000d13          	li	s10,16
    800033a4:	00878713          	addi	a4,a5,8
    800033a8:	0007bc83          	ld	s9,0(a5)
    800033ac:	f6e43c23          	sd	a4,-136(s0)
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	9a4080e7          	jalr	-1628(ra) # 80002d54 <consputc>
    800033b8:	07800513          	li	a0,120
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	998080e7          	jalr	-1640(ra) # 80002d54 <consputc>
    800033c4:	00002d97          	auipc	s11,0x2
    800033c8:	e34d8d93          	addi	s11,s11,-460 # 800051f8 <digits>
    800033cc:	03ccd793          	srli	a5,s9,0x3c
    800033d0:	00fd87b3          	add	a5,s11,a5
    800033d4:	0007c503          	lbu	a0,0(a5)
    800033d8:	fffd0d1b          	addiw	s10,s10,-1
    800033dc:	004c9c93          	slli	s9,s9,0x4
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	974080e7          	jalr	-1676(ra) # 80002d54 <consputc>
    800033e8:	fe0d12e3          	bnez	s10,800033cc <__printf+0x494>
    800033ec:	f8dff06f          	j	80003378 <__printf+0x440>
    800033f0:	f7843783          	ld	a5,-136(s0)
    800033f4:	0007bc83          	ld	s9,0(a5)
    800033f8:	00878793          	addi	a5,a5,8
    800033fc:	f6f43c23          	sd	a5,-136(s0)
    80003400:	000c9a63          	bnez	s9,80003414 <__printf+0x4dc>
    80003404:	1080006f          	j	8000350c <__printf+0x5d4>
    80003408:	001c8c93          	addi	s9,s9,1
    8000340c:	00000097          	auipc	ra,0x0
    80003410:	948080e7          	jalr	-1720(ra) # 80002d54 <consputc>
    80003414:	000cc503          	lbu	a0,0(s9)
    80003418:	fe0518e3          	bnez	a0,80003408 <__printf+0x4d0>
    8000341c:	f5dff06f          	j	80003378 <__printf+0x440>
    80003420:	02500513          	li	a0,37
    80003424:	00000097          	auipc	ra,0x0
    80003428:	930080e7          	jalr	-1744(ra) # 80002d54 <consputc>
    8000342c:	000c8513          	mv	a0,s9
    80003430:	00000097          	auipc	ra,0x0
    80003434:	924080e7          	jalr	-1756(ra) # 80002d54 <consputc>
    80003438:	f41ff06f          	j	80003378 <__printf+0x440>
    8000343c:	02500513          	li	a0,37
    80003440:	00000097          	auipc	ra,0x0
    80003444:	914080e7          	jalr	-1772(ra) # 80002d54 <consputc>
    80003448:	f31ff06f          	j	80003378 <__printf+0x440>
    8000344c:	00030513          	mv	a0,t1
    80003450:	00000097          	auipc	ra,0x0
    80003454:	7bc080e7          	jalr	1980(ra) # 80003c0c <acquire>
    80003458:	b4dff06f          	j	80002fa4 <__printf+0x6c>
    8000345c:	40c0053b          	negw	a0,a2
    80003460:	00a00713          	li	a4,10
    80003464:	02e576bb          	remuw	a3,a0,a4
    80003468:	00002d97          	auipc	s11,0x2
    8000346c:	d90d8d93          	addi	s11,s11,-624 # 800051f8 <digits>
    80003470:	ff700593          	li	a1,-9
    80003474:	02069693          	slli	a3,a3,0x20
    80003478:	0206d693          	srli	a3,a3,0x20
    8000347c:	00dd86b3          	add	a3,s11,a3
    80003480:	0006c683          	lbu	a3,0(a3)
    80003484:	02e557bb          	divuw	a5,a0,a4
    80003488:	f8d40023          	sb	a3,-128(s0)
    8000348c:	10b65e63          	bge	a2,a1,800035a8 <__printf+0x670>
    80003490:	06300593          	li	a1,99
    80003494:	02e7f6bb          	remuw	a3,a5,a4
    80003498:	02069693          	slli	a3,a3,0x20
    8000349c:	0206d693          	srli	a3,a3,0x20
    800034a0:	00dd86b3          	add	a3,s11,a3
    800034a4:	0006c683          	lbu	a3,0(a3)
    800034a8:	02e7d73b          	divuw	a4,a5,a4
    800034ac:	00200793          	li	a5,2
    800034b0:	f8d400a3          	sb	a3,-127(s0)
    800034b4:	bca5ece3          	bltu	a1,a0,8000308c <__printf+0x154>
    800034b8:	ce5ff06f          	j	8000319c <__printf+0x264>
    800034bc:	40e007bb          	negw	a5,a4
    800034c0:	00002d97          	auipc	s11,0x2
    800034c4:	d38d8d93          	addi	s11,s11,-712 # 800051f8 <digits>
    800034c8:	00f7f693          	andi	a3,a5,15
    800034cc:	00dd86b3          	add	a3,s11,a3
    800034d0:	0006c583          	lbu	a1,0(a3)
    800034d4:	ff100613          	li	a2,-15
    800034d8:	0047d69b          	srliw	a3,a5,0x4
    800034dc:	f8b40023          	sb	a1,-128(s0)
    800034e0:	0047d59b          	srliw	a1,a5,0x4
    800034e4:	0ac75e63          	bge	a4,a2,800035a0 <__printf+0x668>
    800034e8:	00f6f693          	andi	a3,a3,15
    800034ec:	00dd86b3          	add	a3,s11,a3
    800034f0:	0006c603          	lbu	a2,0(a3)
    800034f4:	00f00693          	li	a3,15
    800034f8:	0087d79b          	srliw	a5,a5,0x8
    800034fc:	f8c400a3          	sb	a2,-127(s0)
    80003500:	d8b6e4e3          	bltu	a3,a1,80003288 <__printf+0x350>
    80003504:	00200793          	li	a5,2
    80003508:	e2dff06f          	j	80003334 <__printf+0x3fc>
    8000350c:	00002c97          	auipc	s9,0x2
    80003510:	cccc8c93          	addi	s9,s9,-820 # 800051d8 <_ZZ12printIntegermE6digits+0x148>
    80003514:	02800513          	li	a0,40
    80003518:	ef1ff06f          	j	80003408 <__printf+0x4d0>
    8000351c:	00700793          	li	a5,7
    80003520:	00600c93          	li	s9,6
    80003524:	e0dff06f          	j	80003330 <__printf+0x3f8>
    80003528:	00700793          	li	a5,7
    8000352c:	00600c93          	li	s9,6
    80003530:	c69ff06f          	j	80003198 <__printf+0x260>
    80003534:	00300793          	li	a5,3
    80003538:	00200c93          	li	s9,2
    8000353c:	c5dff06f          	j	80003198 <__printf+0x260>
    80003540:	00300793          	li	a5,3
    80003544:	00200c93          	li	s9,2
    80003548:	de9ff06f          	j	80003330 <__printf+0x3f8>
    8000354c:	00400793          	li	a5,4
    80003550:	00300c93          	li	s9,3
    80003554:	dddff06f          	j	80003330 <__printf+0x3f8>
    80003558:	00400793          	li	a5,4
    8000355c:	00300c93          	li	s9,3
    80003560:	c39ff06f          	j	80003198 <__printf+0x260>
    80003564:	00500793          	li	a5,5
    80003568:	00400c93          	li	s9,4
    8000356c:	c2dff06f          	j	80003198 <__printf+0x260>
    80003570:	00500793          	li	a5,5
    80003574:	00400c93          	li	s9,4
    80003578:	db9ff06f          	j	80003330 <__printf+0x3f8>
    8000357c:	00600793          	li	a5,6
    80003580:	00500c93          	li	s9,5
    80003584:	dadff06f          	j	80003330 <__printf+0x3f8>
    80003588:	00600793          	li	a5,6
    8000358c:	00500c93          	li	s9,5
    80003590:	c09ff06f          	j	80003198 <__printf+0x260>
    80003594:	00800793          	li	a5,8
    80003598:	00700c93          	li	s9,7
    8000359c:	bfdff06f          	j	80003198 <__printf+0x260>
    800035a0:	00100793          	li	a5,1
    800035a4:	d91ff06f          	j	80003334 <__printf+0x3fc>
    800035a8:	00100793          	li	a5,1
    800035ac:	bf1ff06f          	j	8000319c <__printf+0x264>
    800035b0:	00900793          	li	a5,9
    800035b4:	00800c93          	li	s9,8
    800035b8:	be1ff06f          	j	80003198 <__printf+0x260>
    800035bc:	00002517          	auipc	a0,0x2
    800035c0:	c2450513          	addi	a0,a0,-988 # 800051e0 <_ZZ12printIntegermE6digits+0x150>
    800035c4:	00000097          	auipc	ra,0x0
    800035c8:	918080e7          	jalr	-1768(ra) # 80002edc <panic>

00000000800035cc <printfinit>:
    800035cc:	fe010113          	addi	sp,sp,-32
    800035d0:	00813823          	sd	s0,16(sp)
    800035d4:	00913423          	sd	s1,8(sp)
    800035d8:	00113c23          	sd	ra,24(sp)
    800035dc:	02010413          	addi	s0,sp,32
    800035e0:	00003497          	auipc	s1,0x3
    800035e4:	64048493          	addi	s1,s1,1600 # 80006c20 <pr>
    800035e8:	00048513          	mv	a0,s1
    800035ec:	00002597          	auipc	a1,0x2
    800035f0:	c0458593          	addi	a1,a1,-1020 # 800051f0 <_ZZ12printIntegermE6digits+0x160>
    800035f4:	00000097          	auipc	ra,0x0
    800035f8:	5f4080e7          	jalr	1524(ra) # 80003be8 <initlock>
    800035fc:	01813083          	ld	ra,24(sp)
    80003600:	01013403          	ld	s0,16(sp)
    80003604:	0004ac23          	sw	zero,24(s1)
    80003608:	00813483          	ld	s1,8(sp)
    8000360c:	02010113          	addi	sp,sp,32
    80003610:	00008067          	ret

0000000080003614 <uartinit>:
    80003614:	ff010113          	addi	sp,sp,-16
    80003618:	00813423          	sd	s0,8(sp)
    8000361c:	01010413          	addi	s0,sp,16
    80003620:	100007b7          	lui	a5,0x10000
    80003624:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003628:	f8000713          	li	a4,-128
    8000362c:	00e781a3          	sb	a4,3(a5)
    80003630:	00300713          	li	a4,3
    80003634:	00e78023          	sb	a4,0(a5)
    80003638:	000780a3          	sb	zero,1(a5)
    8000363c:	00e781a3          	sb	a4,3(a5)
    80003640:	00700693          	li	a3,7
    80003644:	00d78123          	sb	a3,2(a5)
    80003648:	00e780a3          	sb	a4,1(a5)
    8000364c:	00813403          	ld	s0,8(sp)
    80003650:	01010113          	addi	sp,sp,16
    80003654:	00008067          	ret

0000000080003658 <uartputc>:
    80003658:	00002797          	auipc	a5,0x2
    8000365c:	3507a783          	lw	a5,848(a5) # 800059a8 <panicked>
    80003660:	00078463          	beqz	a5,80003668 <uartputc+0x10>
    80003664:	0000006f          	j	80003664 <uartputc+0xc>
    80003668:	fd010113          	addi	sp,sp,-48
    8000366c:	02813023          	sd	s0,32(sp)
    80003670:	00913c23          	sd	s1,24(sp)
    80003674:	01213823          	sd	s2,16(sp)
    80003678:	01313423          	sd	s3,8(sp)
    8000367c:	02113423          	sd	ra,40(sp)
    80003680:	03010413          	addi	s0,sp,48
    80003684:	00002917          	auipc	s2,0x2
    80003688:	32c90913          	addi	s2,s2,812 # 800059b0 <uart_tx_r>
    8000368c:	00093783          	ld	a5,0(s2)
    80003690:	00002497          	auipc	s1,0x2
    80003694:	32848493          	addi	s1,s1,808 # 800059b8 <uart_tx_w>
    80003698:	0004b703          	ld	a4,0(s1)
    8000369c:	02078693          	addi	a3,a5,32
    800036a0:	00050993          	mv	s3,a0
    800036a4:	02e69c63          	bne	a3,a4,800036dc <uartputc+0x84>
    800036a8:	00001097          	auipc	ra,0x1
    800036ac:	834080e7          	jalr	-1996(ra) # 80003edc <push_on>
    800036b0:	00093783          	ld	a5,0(s2)
    800036b4:	0004b703          	ld	a4,0(s1)
    800036b8:	02078793          	addi	a5,a5,32
    800036bc:	00e79463          	bne	a5,a4,800036c4 <uartputc+0x6c>
    800036c0:	0000006f          	j	800036c0 <uartputc+0x68>
    800036c4:	00001097          	auipc	ra,0x1
    800036c8:	88c080e7          	jalr	-1908(ra) # 80003f50 <pop_on>
    800036cc:	00093783          	ld	a5,0(s2)
    800036d0:	0004b703          	ld	a4,0(s1)
    800036d4:	02078693          	addi	a3,a5,32
    800036d8:	fce688e3          	beq	a3,a4,800036a8 <uartputc+0x50>
    800036dc:	01f77693          	andi	a3,a4,31
    800036e0:	00003597          	auipc	a1,0x3
    800036e4:	56058593          	addi	a1,a1,1376 # 80006c40 <uart_tx_buf>
    800036e8:	00d586b3          	add	a3,a1,a3
    800036ec:	00170713          	addi	a4,a4,1
    800036f0:	01368023          	sb	s3,0(a3)
    800036f4:	00e4b023          	sd	a4,0(s1)
    800036f8:	10000637          	lui	a2,0x10000
    800036fc:	02f71063          	bne	a4,a5,8000371c <uartputc+0xc4>
    80003700:	0340006f          	j	80003734 <uartputc+0xdc>
    80003704:	00074703          	lbu	a4,0(a4)
    80003708:	00f93023          	sd	a5,0(s2)
    8000370c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003710:	00093783          	ld	a5,0(s2)
    80003714:	0004b703          	ld	a4,0(s1)
    80003718:	00f70e63          	beq	a4,a5,80003734 <uartputc+0xdc>
    8000371c:	00564683          	lbu	a3,5(a2)
    80003720:	01f7f713          	andi	a4,a5,31
    80003724:	00e58733          	add	a4,a1,a4
    80003728:	0206f693          	andi	a3,a3,32
    8000372c:	00178793          	addi	a5,a5,1
    80003730:	fc069ae3          	bnez	a3,80003704 <uartputc+0xac>
    80003734:	02813083          	ld	ra,40(sp)
    80003738:	02013403          	ld	s0,32(sp)
    8000373c:	01813483          	ld	s1,24(sp)
    80003740:	01013903          	ld	s2,16(sp)
    80003744:	00813983          	ld	s3,8(sp)
    80003748:	03010113          	addi	sp,sp,48
    8000374c:	00008067          	ret

0000000080003750 <uartputc_sync>:
    80003750:	ff010113          	addi	sp,sp,-16
    80003754:	00813423          	sd	s0,8(sp)
    80003758:	01010413          	addi	s0,sp,16
    8000375c:	00002717          	auipc	a4,0x2
    80003760:	24c72703          	lw	a4,588(a4) # 800059a8 <panicked>
    80003764:	02071663          	bnez	a4,80003790 <uartputc_sync+0x40>
    80003768:	00050793          	mv	a5,a0
    8000376c:	100006b7          	lui	a3,0x10000
    80003770:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003774:	02077713          	andi	a4,a4,32
    80003778:	fe070ce3          	beqz	a4,80003770 <uartputc_sync+0x20>
    8000377c:	0ff7f793          	andi	a5,a5,255
    80003780:	00f68023          	sb	a5,0(a3)
    80003784:	00813403          	ld	s0,8(sp)
    80003788:	01010113          	addi	sp,sp,16
    8000378c:	00008067          	ret
    80003790:	0000006f          	j	80003790 <uartputc_sync+0x40>

0000000080003794 <uartstart>:
    80003794:	ff010113          	addi	sp,sp,-16
    80003798:	00813423          	sd	s0,8(sp)
    8000379c:	01010413          	addi	s0,sp,16
    800037a0:	00002617          	auipc	a2,0x2
    800037a4:	21060613          	addi	a2,a2,528 # 800059b0 <uart_tx_r>
    800037a8:	00002517          	auipc	a0,0x2
    800037ac:	21050513          	addi	a0,a0,528 # 800059b8 <uart_tx_w>
    800037b0:	00063783          	ld	a5,0(a2)
    800037b4:	00053703          	ld	a4,0(a0)
    800037b8:	04f70263          	beq	a4,a5,800037fc <uartstart+0x68>
    800037bc:	100005b7          	lui	a1,0x10000
    800037c0:	00003817          	auipc	a6,0x3
    800037c4:	48080813          	addi	a6,a6,1152 # 80006c40 <uart_tx_buf>
    800037c8:	01c0006f          	j	800037e4 <uartstart+0x50>
    800037cc:	0006c703          	lbu	a4,0(a3)
    800037d0:	00f63023          	sd	a5,0(a2)
    800037d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800037d8:	00063783          	ld	a5,0(a2)
    800037dc:	00053703          	ld	a4,0(a0)
    800037e0:	00f70e63          	beq	a4,a5,800037fc <uartstart+0x68>
    800037e4:	01f7f713          	andi	a4,a5,31
    800037e8:	00e806b3          	add	a3,a6,a4
    800037ec:	0055c703          	lbu	a4,5(a1)
    800037f0:	00178793          	addi	a5,a5,1
    800037f4:	02077713          	andi	a4,a4,32
    800037f8:	fc071ae3          	bnez	a4,800037cc <uartstart+0x38>
    800037fc:	00813403          	ld	s0,8(sp)
    80003800:	01010113          	addi	sp,sp,16
    80003804:	00008067          	ret

0000000080003808 <uartgetc>:
    80003808:	ff010113          	addi	sp,sp,-16
    8000380c:	00813423          	sd	s0,8(sp)
    80003810:	01010413          	addi	s0,sp,16
    80003814:	10000737          	lui	a4,0x10000
    80003818:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000381c:	0017f793          	andi	a5,a5,1
    80003820:	00078c63          	beqz	a5,80003838 <uartgetc+0x30>
    80003824:	00074503          	lbu	a0,0(a4)
    80003828:	0ff57513          	andi	a0,a0,255
    8000382c:	00813403          	ld	s0,8(sp)
    80003830:	01010113          	addi	sp,sp,16
    80003834:	00008067          	ret
    80003838:	fff00513          	li	a0,-1
    8000383c:	ff1ff06f          	j	8000382c <uartgetc+0x24>

0000000080003840 <uartintr>:
    80003840:	100007b7          	lui	a5,0x10000
    80003844:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003848:	0017f793          	andi	a5,a5,1
    8000384c:	0a078463          	beqz	a5,800038f4 <uartintr+0xb4>
    80003850:	fe010113          	addi	sp,sp,-32
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00913423          	sd	s1,8(sp)
    8000385c:	00113c23          	sd	ra,24(sp)
    80003860:	02010413          	addi	s0,sp,32
    80003864:	100004b7          	lui	s1,0x10000
    80003868:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000386c:	0ff57513          	andi	a0,a0,255
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	534080e7          	jalr	1332(ra) # 80002da4 <consoleintr>
    80003878:	0054c783          	lbu	a5,5(s1)
    8000387c:	0017f793          	andi	a5,a5,1
    80003880:	fe0794e3          	bnez	a5,80003868 <uartintr+0x28>
    80003884:	00002617          	auipc	a2,0x2
    80003888:	12c60613          	addi	a2,a2,300 # 800059b0 <uart_tx_r>
    8000388c:	00002517          	auipc	a0,0x2
    80003890:	12c50513          	addi	a0,a0,300 # 800059b8 <uart_tx_w>
    80003894:	00063783          	ld	a5,0(a2)
    80003898:	00053703          	ld	a4,0(a0)
    8000389c:	04f70263          	beq	a4,a5,800038e0 <uartintr+0xa0>
    800038a0:	100005b7          	lui	a1,0x10000
    800038a4:	00003817          	auipc	a6,0x3
    800038a8:	39c80813          	addi	a6,a6,924 # 80006c40 <uart_tx_buf>
    800038ac:	01c0006f          	j	800038c8 <uartintr+0x88>
    800038b0:	0006c703          	lbu	a4,0(a3)
    800038b4:	00f63023          	sd	a5,0(a2)
    800038b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038bc:	00063783          	ld	a5,0(a2)
    800038c0:	00053703          	ld	a4,0(a0)
    800038c4:	00f70e63          	beq	a4,a5,800038e0 <uartintr+0xa0>
    800038c8:	01f7f713          	andi	a4,a5,31
    800038cc:	00e806b3          	add	a3,a6,a4
    800038d0:	0055c703          	lbu	a4,5(a1)
    800038d4:	00178793          	addi	a5,a5,1
    800038d8:	02077713          	andi	a4,a4,32
    800038dc:	fc071ae3          	bnez	a4,800038b0 <uartintr+0x70>
    800038e0:	01813083          	ld	ra,24(sp)
    800038e4:	01013403          	ld	s0,16(sp)
    800038e8:	00813483          	ld	s1,8(sp)
    800038ec:	02010113          	addi	sp,sp,32
    800038f0:	00008067          	ret
    800038f4:	00002617          	auipc	a2,0x2
    800038f8:	0bc60613          	addi	a2,a2,188 # 800059b0 <uart_tx_r>
    800038fc:	00002517          	auipc	a0,0x2
    80003900:	0bc50513          	addi	a0,a0,188 # 800059b8 <uart_tx_w>
    80003904:	00063783          	ld	a5,0(a2)
    80003908:	00053703          	ld	a4,0(a0)
    8000390c:	04f70263          	beq	a4,a5,80003950 <uartintr+0x110>
    80003910:	100005b7          	lui	a1,0x10000
    80003914:	00003817          	auipc	a6,0x3
    80003918:	32c80813          	addi	a6,a6,812 # 80006c40 <uart_tx_buf>
    8000391c:	01c0006f          	j	80003938 <uartintr+0xf8>
    80003920:	0006c703          	lbu	a4,0(a3)
    80003924:	00f63023          	sd	a5,0(a2)
    80003928:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000392c:	00063783          	ld	a5,0(a2)
    80003930:	00053703          	ld	a4,0(a0)
    80003934:	02f70063          	beq	a4,a5,80003954 <uartintr+0x114>
    80003938:	01f7f713          	andi	a4,a5,31
    8000393c:	00e806b3          	add	a3,a6,a4
    80003940:	0055c703          	lbu	a4,5(a1)
    80003944:	00178793          	addi	a5,a5,1
    80003948:	02077713          	andi	a4,a4,32
    8000394c:	fc071ae3          	bnez	a4,80003920 <uartintr+0xe0>
    80003950:	00008067          	ret
    80003954:	00008067          	ret

0000000080003958 <kinit>:
    80003958:	fc010113          	addi	sp,sp,-64
    8000395c:	02913423          	sd	s1,40(sp)
    80003960:	fffff7b7          	lui	a5,0xfffff
    80003964:	00004497          	auipc	s1,0x4
    80003968:	2fb48493          	addi	s1,s1,763 # 80007c5f <end+0xfff>
    8000396c:	02813823          	sd	s0,48(sp)
    80003970:	01313c23          	sd	s3,24(sp)
    80003974:	00f4f4b3          	and	s1,s1,a5
    80003978:	02113c23          	sd	ra,56(sp)
    8000397c:	03213023          	sd	s2,32(sp)
    80003980:	01413823          	sd	s4,16(sp)
    80003984:	01513423          	sd	s5,8(sp)
    80003988:	04010413          	addi	s0,sp,64
    8000398c:	000017b7          	lui	a5,0x1
    80003990:	01100993          	li	s3,17
    80003994:	00f487b3          	add	a5,s1,a5
    80003998:	01b99993          	slli	s3,s3,0x1b
    8000399c:	06f9e063          	bltu	s3,a5,800039fc <kinit+0xa4>
    800039a0:	00003a97          	auipc	s5,0x3
    800039a4:	2c0a8a93          	addi	s5,s5,704 # 80006c60 <end>
    800039a8:	0754ec63          	bltu	s1,s5,80003a20 <kinit+0xc8>
    800039ac:	0734fa63          	bgeu	s1,s3,80003a20 <kinit+0xc8>
    800039b0:	00088a37          	lui	s4,0x88
    800039b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800039b8:	00002917          	auipc	s2,0x2
    800039bc:	00890913          	addi	s2,s2,8 # 800059c0 <kmem>
    800039c0:	00ca1a13          	slli	s4,s4,0xc
    800039c4:	0140006f          	j	800039d8 <kinit+0x80>
    800039c8:	000017b7          	lui	a5,0x1
    800039cc:	00f484b3          	add	s1,s1,a5
    800039d0:	0554e863          	bltu	s1,s5,80003a20 <kinit+0xc8>
    800039d4:	0534f663          	bgeu	s1,s3,80003a20 <kinit+0xc8>
    800039d8:	00001637          	lui	a2,0x1
    800039dc:	00100593          	li	a1,1
    800039e0:	00048513          	mv	a0,s1
    800039e4:	00000097          	auipc	ra,0x0
    800039e8:	5e4080e7          	jalr	1508(ra) # 80003fc8 <__memset>
    800039ec:	00093783          	ld	a5,0(s2)
    800039f0:	00f4b023          	sd	a5,0(s1)
    800039f4:	00993023          	sd	s1,0(s2)
    800039f8:	fd4498e3          	bne	s1,s4,800039c8 <kinit+0x70>
    800039fc:	03813083          	ld	ra,56(sp)
    80003a00:	03013403          	ld	s0,48(sp)
    80003a04:	02813483          	ld	s1,40(sp)
    80003a08:	02013903          	ld	s2,32(sp)
    80003a0c:	01813983          	ld	s3,24(sp)
    80003a10:	01013a03          	ld	s4,16(sp)
    80003a14:	00813a83          	ld	s5,8(sp)
    80003a18:	04010113          	addi	sp,sp,64
    80003a1c:	00008067          	ret
    80003a20:	00001517          	auipc	a0,0x1
    80003a24:	7f050513          	addi	a0,a0,2032 # 80005210 <digits+0x18>
    80003a28:	fffff097          	auipc	ra,0xfffff
    80003a2c:	4b4080e7          	jalr	1204(ra) # 80002edc <panic>

0000000080003a30 <freerange>:
    80003a30:	fc010113          	addi	sp,sp,-64
    80003a34:	000017b7          	lui	a5,0x1
    80003a38:	02913423          	sd	s1,40(sp)
    80003a3c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003a40:	009504b3          	add	s1,a0,s1
    80003a44:	fffff537          	lui	a0,0xfffff
    80003a48:	02813823          	sd	s0,48(sp)
    80003a4c:	02113c23          	sd	ra,56(sp)
    80003a50:	03213023          	sd	s2,32(sp)
    80003a54:	01313c23          	sd	s3,24(sp)
    80003a58:	01413823          	sd	s4,16(sp)
    80003a5c:	01513423          	sd	s5,8(sp)
    80003a60:	01613023          	sd	s6,0(sp)
    80003a64:	04010413          	addi	s0,sp,64
    80003a68:	00a4f4b3          	and	s1,s1,a0
    80003a6c:	00f487b3          	add	a5,s1,a5
    80003a70:	06f5e463          	bltu	a1,a5,80003ad8 <freerange+0xa8>
    80003a74:	00003a97          	auipc	s5,0x3
    80003a78:	1eca8a93          	addi	s5,s5,492 # 80006c60 <end>
    80003a7c:	0954e263          	bltu	s1,s5,80003b00 <freerange+0xd0>
    80003a80:	01100993          	li	s3,17
    80003a84:	01b99993          	slli	s3,s3,0x1b
    80003a88:	0734fc63          	bgeu	s1,s3,80003b00 <freerange+0xd0>
    80003a8c:	00058a13          	mv	s4,a1
    80003a90:	00002917          	auipc	s2,0x2
    80003a94:	f3090913          	addi	s2,s2,-208 # 800059c0 <kmem>
    80003a98:	00002b37          	lui	s6,0x2
    80003a9c:	0140006f          	j	80003ab0 <freerange+0x80>
    80003aa0:	000017b7          	lui	a5,0x1
    80003aa4:	00f484b3          	add	s1,s1,a5
    80003aa8:	0554ec63          	bltu	s1,s5,80003b00 <freerange+0xd0>
    80003aac:	0534fa63          	bgeu	s1,s3,80003b00 <freerange+0xd0>
    80003ab0:	00001637          	lui	a2,0x1
    80003ab4:	00100593          	li	a1,1
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	00000097          	auipc	ra,0x0
    80003ac0:	50c080e7          	jalr	1292(ra) # 80003fc8 <__memset>
    80003ac4:	00093703          	ld	a4,0(s2)
    80003ac8:	016487b3          	add	a5,s1,s6
    80003acc:	00e4b023          	sd	a4,0(s1)
    80003ad0:	00993023          	sd	s1,0(s2)
    80003ad4:	fcfa76e3          	bgeu	s4,a5,80003aa0 <freerange+0x70>
    80003ad8:	03813083          	ld	ra,56(sp)
    80003adc:	03013403          	ld	s0,48(sp)
    80003ae0:	02813483          	ld	s1,40(sp)
    80003ae4:	02013903          	ld	s2,32(sp)
    80003ae8:	01813983          	ld	s3,24(sp)
    80003aec:	01013a03          	ld	s4,16(sp)
    80003af0:	00813a83          	ld	s5,8(sp)
    80003af4:	00013b03          	ld	s6,0(sp)
    80003af8:	04010113          	addi	sp,sp,64
    80003afc:	00008067          	ret
    80003b00:	00001517          	auipc	a0,0x1
    80003b04:	71050513          	addi	a0,a0,1808 # 80005210 <digits+0x18>
    80003b08:	fffff097          	auipc	ra,0xfffff
    80003b0c:	3d4080e7          	jalr	980(ra) # 80002edc <panic>

0000000080003b10 <kfree>:
    80003b10:	fe010113          	addi	sp,sp,-32
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00113c23          	sd	ra,24(sp)
    80003b1c:	00913423          	sd	s1,8(sp)
    80003b20:	02010413          	addi	s0,sp,32
    80003b24:	03451793          	slli	a5,a0,0x34
    80003b28:	04079c63          	bnez	a5,80003b80 <kfree+0x70>
    80003b2c:	00003797          	auipc	a5,0x3
    80003b30:	13478793          	addi	a5,a5,308 # 80006c60 <end>
    80003b34:	00050493          	mv	s1,a0
    80003b38:	04f56463          	bltu	a0,a5,80003b80 <kfree+0x70>
    80003b3c:	01100793          	li	a5,17
    80003b40:	01b79793          	slli	a5,a5,0x1b
    80003b44:	02f57e63          	bgeu	a0,a5,80003b80 <kfree+0x70>
    80003b48:	00001637          	lui	a2,0x1
    80003b4c:	00100593          	li	a1,1
    80003b50:	00000097          	auipc	ra,0x0
    80003b54:	478080e7          	jalr	1144(ra) # 80003fc8 <__memset>
    80003b58:	00002797          	auipc	a5,0x2
    80003b5c:	e6878793          	addi	a5,a5,-408 # 800059c0 <kmem>
    80003b60:	0007b703          	ld	a4,0(a5)
    80003b64:	01813083          	ld	ra,24(sp)
    80003b68:	01013403          	ld	s0,16(sp)
    80003b6c:	00e4b023          	sd	a4,0(s1)
    80003b70:	0097b023          	sd	s1,0(a5)
    80003b74:	00813483          	ld	s1,8(sp)
    80003b78:	02010113          	addi	sp,sp,32
    80003b7c:	00008067          	ret
    80003b80:	00001517          	auipc	a0,0x1
    80003b84:	69050513          	addi	a0,a0,1680 # 80005210 <digits+0x18>
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	354080e7          	jalr	852(ra) # 80002edc <panic>

0000000080003b90 <kalloc>:
    80003b90:	fe010113          	addi	sp,sp,-32
    80003b94:	00813823          	sd	s0,16(sp)
    80003b98:	00913423          	sd	s1,8(sp)
    80003b9c:	00113c23          	sd	ra,24(sp)
    80003ba0:	02010413          	addi	s0,sp,32
    80003ba4:	00002797          	auipc	a5,0x2
    80003ba8:	e1c78793          	addi	a5,a5,-484 # 800059c0 <kmem>
    80003bac:	0007b483          	ld	s1,0(a5)
    80003bb0:	02048063          	beqz	s1,80003bd0 <kalloc+0x40>
    80003bb4:	0004b703          	ld	a4,0(s1)
    80003bb8:	00001637          	lui	a2,0x1
    80003bbc:	00500593          	li	a1,5
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	00e7b023          	sd	a4,0(a5)
    80003bc8:	00000097          	auipc	ra,0x0
    80003bcc:	400080e7          	jalr	1024(ra) # 80003fc8 <__memset>
    80003bd0:	01813083          	ld	ra,24(sp)
    80003bd4:	01013403          	ld	s0,16(sp)
    80003bd8:	00048513          	mv	a0,s1
    80003bdc:	00813483          	ld	s1,8(sp)
    80003be0:	02010113          	addi	sp,sp,32
    80003be4:	00008067          	ret

0000000080003be8 <initlock>:
    80003be8:	ff010113          	addi	sp,sp,-16
    80003bec:	00813423          	sd	s0,8(sp)
    80003bf0:	01010413          	addi	s0,sp,16
    80003bf4:	00813403          	ld	s0,8(sp)
    80003bf8:	00b53423          	sd	a1,8(a0)
    80003bfc:	00052023          	sw	zero,0(a0)
    80003c00:	00053823          	sd	zero,16(a0)
    80003c04:	01010113          	addi	sp,sp,16
    80003c08:	00008067          	ret

0000000080003c0c <acquire>:
    80003c0c:	fe010113          	addi	sp,sp,-32
    80003c10:	00813823          	sd	s0,16(sp)
    80003c14:	00913423          	sd	s1,8(sp)
    80003c18:	00113c23          	sd	ra,24(sp)
    80003c1c:	01213023          	sd	s2,0(sp)
    80003c20:	02010413          	addi	s0,sp,32
    80003c24:	00050493          	mv	s1,a0
    80003c28:	10002973          	csrr	s2,sstatus
    80003c2c:	100027f3          	csrr	a5,sstatus
    80003c30:	ffd7f793          	andi	a5,a5,-3
    80003c34:	10079073          	csrw	sstatus,a5
    80003c38:	fffff097          	auipc	ra,0xfffff
    80003c3c:	8ec080e7          	jalr	-1812(ra) # 80002524 <mycpu>
    80003c40:	07852783          	lw	a5,120(a0)
    80003c44:	06078e63          	beqz	a5,80003cc0 <acquire+0xb4>
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	8dc080e7          	jalr	-1828(ra) # 80002524 <mycpu>
    80003c50:	07852783          	lw	a5,120(a0)
    80003c54:	0004a703          	lw	a4,0(s1)
    80003c58:	0017879b          	addiw	a5,a5,1
    80003c5c:	06f52c23          	sw	a5,120(a0)
    80003c60:	04071063          	bnez	a4,80003ca0 <acquire+0x94>
    80003c64:	00100713          	li	a4,1
    80003c68:	00070793          	mv	a5,a4
    80003c6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003c70:	0007879b          	sext.w	a5,a5
    80003c74:	fe079ae3          	bnez	a5,80003c68 <acquire+0x5c>
    80003c78:	0ff0000f          	fence
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	8a8080e7          	jalr	-1880(ra) # 80002524 <mycpu>
    80003c84:	01813083          	ld	ra,24(sp)
    80003c88:	01013403          	ld	s0,16(sp)
    80003c8c:	00a4b823          	sd	a0,16(s1)
    80003c90:	00013903          	ld	s2,0(sp)
    80003c94:	00813483          	ld	s1,8(sp)
    80003c98:	02010113          	addi	sp,sp,32
    80003c9c:	00008067          	ret
    80003ca0:	0104b903          	ld	s2,16(s1)
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	880080e7          	jalr	-1920(ra) # 80002524 <mycpu>
    80003cac:	faa91ce3          	bne	s2,a0,80003c64 <acquire+0x58>
    80003cb0:	00001517          	auipc	a0,0x1
    80003cb4:	56850513          	addi	a0,a0,1384 # 80005218 <digits+0x20>
    80003cb8:	fffff097          	auipc	ra,0xfffff
    80003cbc:	224080e7          	jalr	548(ra) # 80002edc <panic>
    80003cc0:	00195913          	srli	s2,s2,0x1
    80003cc4:	fffff097          	auipc	ra,0xfffff
    80003cc8:	860080e7          	jalr	-1952(ra) # 80002524 <mycpu>
    80003ccc:	00197913          	andi	s2,s2,1
    80003cd0:	07252e23          	sw	s2,124(a0)
    80003cd4:	f75ff06f          	j	80003c48 <acquire+0x3c>

0000000080003cd8 <release>:
    80003cd8:	fe010113          	addi	sp,sp,-32
    80003cdc:	00813823          	sd	s0,16(sp)
    80003ce0:	00113c23          	sd	ra,24(sp)
    80003ce4:	00913423          	sd	s1,8(sp)
    80003ce8:	01213023          	sd	s2,0(sp)
    80003cec:	02010413          	addi	s0,sp,32
    80003cf0:	00052783          	lw	a5,0(a0)
    80003cf4:	00079a63          	bnez	a5,80003d08 <release+0x30>
    80003cf8:	00001517          	auipc	a0,0x1
    80003cfc:	52850513          	addi	a0,a0,1320 # 80005220 <digits+0x28>
    80003d00:	fffff097          	auipc	ra,0xfffff
    80003d04:	1dc080e7          	jalr	476(ra) # 80002edc <panic>
    80003d08:	01053903          	ld	s2,16(a0)
    80003d0c:	00050493          	mv	s1,a0
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	814080e7          	jalr	-2028(ra) # 80002524 <mycpu>
    80003d18:	fea910e3          	bne	s2,a0,80003cf8 <release+0x20>
    80003d1c:	0004b823          	sd	zero,16(s1)
    80003d20:	0ff0000f          	fence
    80003d24:	0f50000f          	fence	iorw,ow
    80003d28:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	7f8080e7          	jalr	2040(ra) # 80002524 <mycpu>
    80003d34:	100027f3          	csrr	a5,sstatus
    80003d38:	0027f793          	andi	a5,a5,2
    80003d3c:	04079a63          	bnez	a5,80003d90 <release+0xb8>
    80003d40:	07852783          	lw	a5,120(a0)
    80003d44:	02f05e63          	blez	a5,80003d80 <release+0xa8>
    80003d48:	fff7871b          	addiw	a4,a5,-1
    80003d4c:	06e52c23          	sw	a4,120(a0)
    80003d50:	00071c63          	bnez	a4,80003d68 <release+0x90>
    80003d54:	07c52783          	lw	a5,124(a0)
    80003d58:	00078863          	beqz	a5,80003d68 <release+0x90>
    80003d5c:	100027f3          	csrr	a5,sstatus
    80003d60:	0027e793          	ori	a5,a5,2
    80003d64:	10079073          	csrw	sstatus,a5
    80003d68:	01813083          	ld	ra,24(sp)
    80003d6c:	01013403          	ld	s0,16(sp)
    80003d70:	00813483          	ld	s1,8(sp)
    80003d74:	00013903          	ld	s2,0(sp)
    80003d78:	02010113          	addi	sp,sp,32
    80003d7c:	00008067          	ret
    80003d80:	00001517          	auipc	a0,0x1
    80003d84:	4c050513          	addi	a0,a0,1216 # 80005240 <digits+0x48>
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	154080e7          	jalr	340(ra) # 80002edc <panic>
    80003d90:	00001517          	auipc	a0,0x1
    80003d94:	49850513          	addi	a0,a0,1176 # 80005228 <digits+0x30>
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	144080e7          	jalr	324(ra) # 80002edc <panic>

0000000080003da0 <holding>:
    80003da0:	00052783          	lw	a5,0(a0)
    80003da4:	00079663          	bnez	a5,80003db0 <holding+0x10>
    80003da8:	00000513          	li	a0,0
    80003dac:	00008067          	ret
    80003db0:	fe010113          	addi	sp,sp,-32
    80003db4:	00813823          	sd	s0,16(sp)
    80003db8:	00913423          	sd	s1,8(sp)
    80003dbc:	00113c23          	sd	ra,24(sp)
    80003dc0:	02010413          	addi	s0,sp,32
    80003dc4:	01053483          	ld	s1,16(a0)
    80003dc8:	ffffe097          	auipc	ra,0xffffe
    80003dcc:	75c080e7          	jalr	1884(ra) # 80002524 <mycpu>
    80003dd0:	01813083          	ld	ra,24(sp)
    80003dd4:	01013403          	ld	s0,16(sp)
    80003dd8:	40a48533          	sub	a0,s1,a0
    80003ddc:	00153513          	seqz	a0,a0
    80003de0:	00813483          	ld	s1,8(sp)
    80003de4:	02010113          	addi	sp,sp,32
    80003de8:	00008067          	ret

0000000080003dec <push_off>:
    80003dec:	fe010113          	addi	sp,sp,-32
    80003df0:	00813823          	sd	s0,16(sp)
    80003df4:	00113c23          	sd	ra,24(sp)
    80003df8:	00913423          	sd	s1,8(sp)
    80003dfc:	02010413          	addi	s0,sp,32
    80003e00:	100024f3          	csrr	s1,sstatus
    80003e04:	100027f3          	csrr	a5,sstatus
    80003e08:	ffd7f793          	andi	a5,a5,-3
    80003e0c:	10079073          	csrw	sstatus,a5
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	714080e7          	jalr	1812(ra) # 80002524 <mycpu>
    80003e18:	07852783          	lw	a5,120(a0)
    80003e1c:	02078663          	beqz	a5,80003e48 <push_off+0x5c>
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	704080e7          	jalr	1796(ra) # 80002524 <mycpu>
    80003e28:	07852783          	lw	a5,120(a0)
    80003e2c:	01813083          	ld	ra,24(sp)
    80003e30:	01013403          	ld	s0,16(sp)
    80003e34:	0017879b          	addiw	a5,a5,1
    80003e38:	06f52c23          	sw	a5,120(a0)
    80003e3c:	00813483          	ld	s1,8(sp)
    80003e40:	02010113          	addi	sp,sp,32
    80003e44:	00008067          	ret
    80003e48:	0014d493          	srli	s1,s1,0x1
    80003e4c:	ffffe097          	auipc	ra,0xffffe
    80003e50:	6d8080e7          	jalr	1752(ra) # 80002524 <mycpu>
    80003e54:	0014f493          	andi	s1,s1,1
    80003e58:	06952e23          	sw	s1,124(a0)
    80003e5c:	fc5ff06f          	j	80003e20 <push_off+0x34>

0000000080003e60 <pop_off>:
    80003e60:	ff010113          	addi	sp,sp,-16
    80003e64:	00813023          	sd	s0,0(sp)
    80003e68:	00113423          	sd	ra,8(sp)
    80003e6c:	01010413          	addi	s0,sp,16
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	6b4080e7          	jalr	1716(ra) # 80002524 <mycpu>
    80003e78:	100027f3          	csrr	a5,sstatus
    80003e7c:	0027f793          	andi	a5,a5,2
    80003e80:	04079663          	bnez	a5,80003ecc <pop_off+0x6c>
    80003e84:	07852783          	lw	a5,120(a0)
    80003e88:	02f05a63          	blez	a5,80003ebc <pop_off+0x5c>
    80003e8c:	fff7871b          	addiw	a4,a5,-1
    80003e90:	06e52c23          	sw	a4,120(a0)
    80003e94:	00071c63          	bnez	a4,80003eac <pop_off+0x4c>
    80003e98:	07c52783          	lw	a5,124(a0)
    80003e9c:	00078863          	beqz	a5,80003eac <pop_off+0x4c>
    80003ea0:	100027f3          	csrr	a5,sstatus
    80003ea4:	0027e793          	ori	a5,a5,2
    80003ea8:	10079073          	csrw	sstatus,a5
    80003eac:	00813083          	ld	ra,8(sp)
    80003eb0:	00013403          	ld	s0,0(sp)
    80003eb4:	01010113          	addi	sp,sp,16
    80003eb8:	00008067          	ret
    80003ebc:	00001517          	auipc	a0,0x1
    80003ec0:	38450513          	addi	a0,a0,900 # 80005240 <digits+0x48>
    80003ec4:	fffff097          	auipc	ra,0xfffff
    80003ec8:	018080e7          	jalr	24(ra) # 80002edc <panic>
    80003ecc:	00001517          	auipc	a0,0x1
    80003ed0:	35c50513          	addi	a0,a0,860 # 80005228 <digits+0x30>
    80003ed4:	fffff097          	auipc	ra,0xfffff
    80003ed8:	008080e7          	jalr	8(ra) # 80002edc <panic>

0000000080003edc <push_on>:
    80003edc:	fe010113          	addi	sp,sp,-32
    80003ee0:	00813823          	sd	s0,16(sp)
    80003ee4:	00113c23          	sd	ra,24(sp)
    80003ee8:	00913423          	sd	s1,8(sp)
    80003eec:	02010413          	addi	s0,sp,32
    80003ef0:	100024f3          	csrr	s1,sstatus
    80003ef4:	100027f3          	csrr	a5,sstatus
    80003ef8:	0027e793          	ori	a5,a5,2
    80003efc:	10079073          	csrw	sstatus,a5
    80003f00:	ffffe097          	auipc	ra,0xffffe
    80003f04:	624080e7          	jalr	1572(ra) # 80002524 <mycpu>
    80003f08:	07852783          	lw	a5,120(a0)
    80003f0c:	02078663          	beqz	a5,80003f38 <push_on+0x5c>
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	614080e7          	jalr	1556(ra) # 80002524 <mycpu>
    80003f18:	07852783          	lw	a5,120(a0)
    80003f1c:	01813083          	ld	ra,24(sp)
    80003f20:	01013403          	ld	s0,16(sp)
    80003f24:	0017879b          	addiw	a5,a5,1
    80003f28:	06f52c23          	sw	a5,120(a0)
    80003f2c:	00813483          	ld	s1,8(sp)
    80003f30:	02010113          	addi	sp,sp,32
    80003f34:	00008067          	ret
    80003f38:	0014d493          	srli	s1,s1,0x1
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	5e8080e7          	jalr	1512(ra) # 80002524 <mycpu>
    80003f44:	0014f493          	andi	s1,s1,1
    80003f48:	06952e23          	sw	s1,124(a0)
    80003f4c:	fc5ff06f          	j	80003f10 <push_on+0x34>

0000000080003f50 <pop_on>:
    80003f50:	ff010113          	addi	sp,sp,-16
    80003f54:	00813023          	sd	s0,0(sp)
    80003f58:	00113423          	sd	ra,8(sp)
    80003f5c:	01010413          	addi	s0,sp,16
    80003f60:	ffffe097          	auipc	ra,0xffffe
    80003f64:	5c4080e7          	jalr	1476(ra) # 80002524 <mycpu>
    80003f68:	100027f3          	csrr	a5,sstatus
    80003f6c:	0027f793          	andi	a5,a5,2
    80003f70:	04078463          	beqz	a5,80003fb8 <pop_on+0x68>
    80003f74:	07852783          	lw	a5,120(a0)
    80003f78:	02f05863          	blez	a5,80003fa8 <pop_on+0x58>
    80003f7c:	fff7879b          	addiw	a5,a5,-1
    80003f80:	06f52c23          	sw	a5,120(a0)
    80003f84:	07853783          	ld	a5,120(a0)
    80003f88:	00079863          	bnez	a5,80003f98 <pop_on+0x48>
    80003f8c:	100027f3          	csrr	a5,sstatus
    80003f90:	ffd7f793          	andi	a5,a5,-3
    80003f94:	10079073          	csrw	sstatus,a5
    80003f98:	00813083          	ld	ra,8(sp)
    80003f9c:	00013403          	ld	s0,0(sp)
    80003fa0:	01010113          	addi	sp,sp,16
    80003fa4:	00008067          	ret
    80003fa8:	00001517          	auipc	a0,0x1
    80003fac:	2c050513          	addi	a0,a0,704 # 80005268 <digits+0x70>
    80003fb0:	fffff097          	auipc	ra,0xfffff
    80003fb4:	f2c080e7          	jalr	-212(ra) # 80002edc <panic>
    80003fb8:	00001517          	auipc	a0,0x1
    80003fbc:	29050513          	addi	a0,a0,656 # 80005248 <digits+0x50>
    80003fc0:	fffff097          	auipc	ra,0xfffff
    80003fc4:	f1c080e7          	jalr	-228(ra) # 80002edc <panic>

0000000080003fc8 <__memset>:
    80003fc8:	ff010113          	addi	sp,sp,-16
    80003fcc:	00813423          	sd	s0,8(sp)
    80003fd0:	01010413          	addi	s0,sp,16
    80003fd4:	1a060e63          	beqz	a2,80004190 <__memset+0x1c8>
    80003fd8:	40a007b3          	neg	a5,a0
    80003fdc:	0077f793          	andi	a5,a5,7
    80003fe0:	00778693          	addi	a3,a5,7
    80003fe4:	00b00813          	li	a6,11
    80003fe8:	0ff5f593          	andi	a1,a1,255
    80003fec:	fff6071b          	addiw	a4,a2,-1
    80003ff0:	1b06e663          	bltu	a3,a6,8000419c <__memset+0x1d4>
    80003ff4:	1cd76463          	bltu	a4,a3,800041bc <__memset+0x1f4>
    80003ff8:	1a078e63          	beqz	a5,800041b4 <__memset+0x1ec>
    80003ffc:	00b50023          	sb	a1,0(a0)
    80004000:	00100713          	li	a4,1
    80004004:	1ae78463          	beq	a5,a4,800041ac <__memset+0x1e4>
    80004008:	00b500a3          	sb	a1,1(a0)
    8000400c:	00200713          	li	a4,2
    80004010:	1ae78a63          	beq	a5,a4,800041c4 <__memset+0x1fc>
    80004014:	00b50123          	sb	a1,2(a0)
    80004018:	00300713          	li	a4,3
    8000401c:	18e78463          	beq	a5,a4,800041a4 <__memset+0x1dc>
    80004020:	00b501a3          	sb	a1,3(a0)
    80004024:	00400713          	li	a4,4
    80004028:	1ae78263          	beq	a5,a4,800041cc <__memset+0x204>
    8000402c:	00b50223          	sb	a1,4(a0)
    80004030:	00500713          	li	a4,5
    80004034:	1ae78063          	beq	a5,a4,800041d4 <__memset+0x20c>
    80004038:	00b502a3          	sb	a1,5(a0)
    8000403c:	00700713          	li	a4,7
    80004040:	18e79e63          	bne	a5,a4,800041dc <__memset+0x214>
    80004044:	00b50323          	sb	a1,6(a0)
    80004048:	00700e93          	li	t4,7
    8000404c:	00859713          	slli	a4,a1,0x8
    80004050:	00e5e733          	or	a4,a1,a4
    80004054:	01059e13          	slli	t3,a1,0x10
    80004058:	01c76e33          	or	t3,a4,t3
    8000405c:	01859313          	slli	t1,a1,0x18
    80004060:	006e6333          	or	t1,t3,t1
    80004064:	02059893          	slli	a7,a1,0x20
    80004068:	40f60e3b          	subw	t3,a2,a5
    8000406c:	011368b3          	or	a7,t1,a7
    80004070:	02859813          	slli	a6,a1,0x28
    80004074:	0108e833          	or	a6,a7,a6
    80004078:	03059693          	slli	a3,a1,0x30
    8000407c:	003e589b          	srliw	a7,t3,0x3
    80004080:	00d866b3          	or	a3,a6,a3
    80004084:	03859713          	slli	a4,a1,0x38
    80004088:	00389813          	slli	a6,a7,0x3
    8000408c:	00f507b3          	add	a5,a0,a5
    80004090:	00e6e733          	or	a4,a3,a4
    80004094:	000e089b          	sext.w	a7,t3
    80004098:	00f806b3          	add	a3,a6,a5
    8000409c:	00e7b023          	sd	a4,0(a5)
    800040a0:	00878793          	addi	a5,a5,8
    800040a4:	fed79ce3          	bne	a5,a3,8000409c <__memset+0xd4>
    800040a8:	ff8e7793          	andi	a5,t3,-8
    800040ac:	0007871b          	sext.w	a4,a5
    800040b0:	01d787bb          	addw	a5,a5,t4
    800040b4:	0ce88e63          	beq	a7,a4,80004190 <__memset+0x1c8>
    800040b8:	00f50733          	add	a4,a0,a5
    800040bc:	00b70023          	sb	a1,0(a4)
    800040c0:	0017871b          	addiw	a4,a5,1
    800040c4:	0cc77663          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    800040c8:	00e50733          	add	a4,a0,a4
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	0027871b          	addiw	a4,a5,2
    800040d4:	0ac77e63          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    800040d8:	00e50733          	add	a4,a0,a4
    800040dc:	00b70023          	sb	a1,0(a4)
    800040e0:	0037871b          	addiw	a4,a5,3
    800040e4:	0ac77663          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    800040e8:	00e50733          	add	a4,a0,a4
    800040ec:	00b70023          	sb	a1,0(a4)
    800040f0:	0047871b          	addiw	a4,a5,4
    800040f4:	08c77e63          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    800040f8:	00e50733          	add	a4,a0,a4
    800040fc:	00b70023          	sb	a1,0(a4)
    80004100:	0057871b          	addiw	a4,a5,5
    80004104:	08c77663          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    80004108:	00e50733          	add	a4,a0,a4
    8000410c:	00b70023          	sb	a1,0(a4)
    80004110:	0067871b          	addiw	a4,a5,6
    80004114:	06c77e63          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    80004118:	00e50733          	add	a4,a0,a4
    8000411c:	00b70023          	sb	a1,0(a4)
    80004120:	0077871b          	addiw	a4,a5,7
    80004124:	06c77663          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    80004128:	00e50733          	add	a4,a0,a4
    8000412c:	00b70023          	sb	a1,0(a4)
    80004130:	0087871b          	addiw	a4,a5,8
    80004134:	04c77e63          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    80004138:	00e50733          	add	a4,a0,a4
    8000413c:	00b70023          	sb	a1,0(a4)
    80004140:	0097871b          	addiw	a4,a5,9
    80004144:	04c77663          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    80004148:	00e50733          	add	a4,a0,a4
    8000414c:	00b70023          	sb	a1,0(a4)
    80004150:	00a7871b          	addiw	a4,a5,10
    80004154:	02c77e63          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    80004158:	00e50733          	add	a4,a0,a4
    8000415c:	00b70023          	sb	a1,0(a4)
    80004160:	00b7871b          	addiw	a4,a5,11
    80004164:	02c77663          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    80004168:	00e50733          	add	a4,a0,a4
    8000416c:	00b70023          	sb	a1,0(a4)
    80004170:	00c7871b          	addiw	a4,a5,12
    80004174:	00c77e63          	bgeu	a4,a2,80004190 <__memset+0x1c8>
    80004178:	00e50733          	add	a4,a0,a4
    8000417c:	00b70023          	sb	a1,0(a4)
    80004180:	00d7879b          	addiw	a5,a5,13
    80004184:	00c7f663          	bgeu	a5,a2,80004190 <__memset+0x1c8>
    80004188:	00f507b3          	add	a5,a0,a5
    8000418c:	00b78023          	sb	a1,0(a5)
    80004190:	00813403          	ld	s0,8(sp)
    80004194:	01010113          	addi	sp,sp,16
    80004198:	00008067          	ret
    8000419c:	00b00693          	li	a3,11
    800041a0:	e55ff06f          	j	80003ff4 <__memset+0x2c>
    800041a4:	00300e93          	li	t4,3
    800041a8:	ea5ff06f          	j	8000404c <__memset+0x84>
    800041ac:	00100e93          	li	t4,1
    800041b0:	e9dff06f          	j	8000404c <__memset+0x84>
    800041b4:	00000e93          	li	t4,0
    800041b8:	e95ff06f          	j	8000404c <__memset+0x84>
    800041bc:	00000793          	li	a5,0
    800041c0:	ef9ff06f          	j	800040b8 <__memset+0xf0>
    800041c4:	00200e93          	li	t4,2
    800041c8:	e85ff06f          	j	8000404c <__memset+0x84>
    800041cc:	00400e93          	li	t4,4
    800041d0:	e7dff06f          	j	8000404c <__memset+0x84>
    800041d4:	00500e93          	li	t4,5
    800041d8:	e75ff06f          	j	8000404c <__memset+0x84>
    800041dc:	00600e93          	li	t4,6
    800041e0:	e6dff06f          	j	8000404c <__memset+0x84>

00000000800041e4 <__memmove>:
    800041e4:	ff010113          	addi	sp,sp,-16
    800041e8:	00813423          	sd	s0,8(sp)
    800041ec:	01010413          	addi	s0,sp,16
    800041f0:	0e060863          	beqz	a2,800042e0 <__memmove+0xfc>
    800041f4:	fff6069b          	addiw	a3,a2,-1
    800041f8:	0006881b          	sext.w	a6,a3
    800041fc:	0ea5e863          	bltu	a1,a0,800042ec <__memmove+0x108>
    80004200:	00758713          	addi	a4,a1,7
    80004204:	00a5e7b3          	or	a5,a1,a0
    80004208:	40a70733          	sub	a4,a4,a0
    8000420c:	0077f793          	andi	a5,a5,7
    80004210:	00f73713          	sltiu	a4,a4,15
    80004214:	00174713          	xori	a4,a4,1
    80004218:	0017b793          	seqz	a5,a5
    8000421c:	00e7f7b3          	and	a5,a5,a4
    80004220:	10078863          	beqz	a5,80004330 <__memmove+0x14c>
    80004224:	00900793          	li	a5,9
    80004228:	1107f463          	bgeu	a5,a6,80004330 <__memmove+0x14c>
    8000422c:	0036581b          	srliw	a6,a2,0x3
    80004230:	fff8081b          	addiw	a6,a6,-1
    80004234:	02081813          	slli	a6,a6,0x20
    80004238:	01d85893          	srli	a7,a6,0x1d
    8000423c:	00858813          	addi	a6,a1,8
    80004240:	00058793          	mv	a5,a1
    80004244:	00050713          	mv	a4,a0
    80004248:	01088833          	add	a6,a7,a6
    8000424c:	0007b883          	ld	a7,0(a5)
    80004250:	00878793          	addi	a5,a5,8
    80004254:	00870713          	addi	a4,a4,8
    80004258:	ff173c23          	sd	a7,-8(a4)
    8000425c:	ff0798e3          	bne	a5,a6,8000424c <__memmove+0x68>
    80004260:	ff867713          	andi	a4,a2,-8
    80004264:	02071793          	slli	a5,a4,0x20
    80004268:	0207d793          	srli	a5,a5,0x20
    8000426c:	00f585b3          	add	a1,a1,a5
    80004270:	40e686bb          	subw	a3,a3,a4
    80004274:	00f507b3          	add	a5,a0,a5
    80004278:	06e60463          	beq	a2,a4,800042e0 <__memmove+0xfc>
    8000427c:	0005c703          	lbu	a4,0(a1)
    80004280:	00e78023          	sb	a4,0(a5)
    80004284:	04068e63          	beqz	a3,800042e0 <__memmove+0xfc>
    80004288:	0015c603          	lbu	a2,1(a1)
    8000428c:	00100713          	li	a4,1
    80004290:	00c780a3          	sb	a2,1(a5)
    80004294:	04e68663          	beq	a3,a4,800042e0 <__memmove+0xfc>
    80004298:	0025c603          	lbu	a2,2(a1)
    8000429c:	00200713          	li	a4,2
    800042a0:	00c78123          	sb	a2,2(a5)
    800042a4:	02e68e63          	beq	a3,a4,800042e0 <__memmove+0xfc>
    800042a8:	0035c603          	lbu	a2,3(a1)
    800042ac:	00300713          	li	a4,3
    800042b0:	00c781a3          	sb	a2,3(a5)
    800042b4:	02e68663          	beq	a3,a4,800042e0 <__memmove+0xfc>
    800042b8:	0045c603          	lbu	a2,4(a1)
    800042bc:	00400713          	li	a4,4
    800042c0:	00c78223          	sb	a2,4(a5)
    800042c4:	00e68e63          	beq	a3,a4,800042e0 <__memmove+0xfc>
    800042c8:	0055c603          	lbu	a2,5(a1)
    800042cc:	00500713          	li	a4,5
    800042d0:	00c782a3          	sb	a2,5(a5)
    800042d4:	00e68663          	beq	a3,a4,800042e0 <__memmove+0xfc>
    800042d8:	0065c703          	lbu	a4,6(a1)
    800042dc:	00e78323          	sb	a4,6(a5)
    800042e0:	00813403          	ld	s0,8(sp)
    800042e4:	01010113          	addi	sp,sp,16
    800042e8:	00008067          	ret
    800042ec:	02061713          	slli	a4,a2,0x20
    800042f0:	02075713          	srli	a4,a4,0x20
    800042f4:	00e587b3          	add	a5,a1,a4
    800042f8:	f0f574e3          	bgeu	a0,a5,80004200 <__memmove+0x1c>
    800042fc:	02069613          	slli	a2,a3,0x20
    80004300:	02065613          	srli	a2,a2,0x20
    80004304:	fff64613          	not	a2,a2
    80004308:	00e50733          	add	a4,a0,a4
    8000430c:	00c78633          	add	a2,a5,a2
    80004310:	fff7c683          	lbu	a3,-1(a5)
    80004314:	fff78793          	addi	a5,a5,-1
    80004318:	fff70713          	addi	a4,a4,-1
    8000431c:	00d70023          	sb	a3,0(a4)
    80004320:	fec798e3          	bne	a5,a2,80004310 <__memmove+0x12c>
    80004324:	00813403          	ld	s0,8(sp)
    80004328:	01010113          	addi	sp,sp,16
    8000432c:	00008067          	ret
    80004330:	02069713          	slli	a4,a3,0x20
    80004334:	02075713          	srli	a4,a4,0x20
    80004338:	00170713          	addi	a4,a4,1
    8000433c:	00e50733          	add	a4,a0,a4
    80004340:	00050793          	mv	a5,a0
    80004344:	0005c683          	lbu	a3,0(a1)
    80004348:	00178793          	addi	a5,a5,1
    8000434c:	00158593          	addi	a1,a1,1
    80004350:	fed78fa3          	sb	a3,-1(a5)
    80004354:	fee798e3          	bne	a5,a4,80004344 <__memmove+0x160>
    80004358:	f89ff06f          	j	800042e0 <__memmove+0xfc>

000000008000435c <__putc>:
    8000435c:	fe010113          	addi	sp,sp,-32
    80004360:	00813823          	sd	s0,16(sp)
    80004364:	00113c23          	sd	ra,24(sp)
    80004368:	02010413          	addi	s0,sp,32
    8000436c:	00050793          	mv	a5,a0
    80004370:	fef40593          	addi	a1,s0,-17
    80004374:	00100613          	li	a2,1
    80004378:	00000513          	li	a0,0
    8000437c:	fef407a3          	sb	a5,-17(s0)
    80004380:	fffff097          	auipc	ra,0xfffff
    80004384:	b3c080e7          	jalr	-1220(ra) # 80002ebc <console_write>
    80004388:	01813083          	ld	ra,24(sp)
    8000438c:	01013403          	ld	s0,16(sp)
    80004390:	02010113          	addi	sp,sp,32
    80004394:	00008067          	ret

0000000080004398 <__getc>:
    80004398:	fe010113          	addi	sp,sp,-32
    8000439c:	00813823          	sd	s0,16(sp)
    800043a0:	00113c23          	sd	ra,24(sp)
    800043a4:	02010413          	addi	s0,sp,32
    800043a8:	fe840593          	addi	a1,s0,-24
    800043ac:	00100613          	li	a2,1
    800043b0:	00000513          	li	a0,0
    800043b4:	fffff097          	auipc	ra,0xfffff
    800043b8:	ae8080e7          	jalr	-1304(ra) # 80002e9c <console_read>
    800043bc:	fe844503          	lbu	a0,-24(s0)
    800043c0:	01813083          	ld	ra,24(sp)
    800043c4:	01013403          	ld	s0,16(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret

00000000800043d0 <console_handler>:
    800043d0:	fe010113          	addi	sp,sp,-32
    800043d4:	00813823          	sd	s0,16(sp)
    800043d8:	00113c23          	sd	ra,24(sp)
    800043dc:	00913423          	sd	s1,8(sp)
    800043e0:	02010413          	addi	s0,sp,32
    800043e4:	14202773          	csrr	a4,scause
    800043e8:	100027f3          	csrr	a5,sstatus
    800043ec:	0027f793          	andi	a5,a5,2
    800043f0:	06079e63          	bnez	a5,8000446c <console_handler+0x9c>
    800043f4:	00074c63          	bltz	a4,8000440c <console_handler+0x3c>
    800043f8:	01813083          	ld	ra,24(sp)
    800043fc:	01013403          	ld	s0,16(sp)
    80004400:	00813483          	ld	s1,8(sp)
    80004404:	02010113          	addi	sp,sp,32
    80004408:	00008067          	ret
    8000440c:	0ff77713          	andi	a4,a4,255
    80004410:	00900793          	li	a5,9
    80004414:	fef712e3          	bne	a4,a5,800043f8 <console_handler+0x28>
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	6dc080e7          	jalr	1756(ra) # 80002af4 <plic_claim>
    80004420:	00a00793          	li	a5,10
    80004424:	00050493          	mv	s1,a0
    80004428:	02f50c63          	beq	a0,a5,80004460 <console_handler+0x90>
    8000442c:	fc0506e3          	beqz	a0,800043f8 <console_handler+0x28>
    80004430:	00050593          	mv	a1,a0
    80004434:	00001517          	auipc	a0,0x1
    80004438:	d3c50513          	addi	a0,a0,-708 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    8000443c:	fffff097          	auipc	ra,0xfffff
    80004440:	afc080e7          	jalr	-1284(ra) # 80002f38 <__printf>
    80004444:	01013403          	ld	s0,16(sp)
    80004448:	01813083          	ld	ra,24(sp)
    8000444c:	00048513          	mv	a0,s1
    80004450:	00813483          	ld	s1,8(sp)
    80004454:	02010113          	addi	sp,sp,32
    80004458:	ffffe317          	auipc	t1,0xffffe
    8000445c:	6d430067          	jr	1748(t1) # 80002b2c <plic_complete>
    80004460:	fffff097          	auipc	ra,0xfffff
    80004464:	3e0080e7          	jalr	992(ra) # 80003840 <uartintr>
    80004468:	fddff06f          	j	80004444 <console_handler+0x74>
    8000446c:	00001517          	auipc	a0,0x1
    80004470:	e0450513          	addi	a0,a0,-508 # 80005270 <digits+0x78>
    80004474:	fffff097          	auipc	ra,0xfffff
    80004478:	a68080e7          	jalr	-1432(ra) # 80002edc <panic>
	...
