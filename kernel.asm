
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	d4813103          	ld	sp,-696(sp) # 80005d48 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	678020ef          	jal	ra,80002694 <start>

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
    80001184:	6ad000ef          	jal	ra,80002030 <_ZN5Riscv20handleSupervisorTrapEv>
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
    80001620:	f4c080e7          	jalr	-180(ra) # 80002568 <_Z11printStringPKc>
        printInteger(i);
    80001624:	00048513          	mv	a0,s1
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	fb0080e7          	jalr	-80(ra) # 800025d8 <_Z12printIntegerm>
        printString("\n");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	a1050513          	addi	a0,a0,-1520 # 80005040 <CONSOLE_STATUS+0x30>
    80001638:	00001097          	auipc	ra,0x1
    8000163c:	f30080e7          	jalr	-208(ra) # 80002568 <_Z11printStringPKc>
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
    800016b8:	eb4080e7          	jalr	-332(ra) # 80002568 <_Z11printStringPKc>
        printInteger(i);
    800016bc:	00048513          	mv	a0,s1
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	f18080e7          	jalr	-232(ra) # 800025d8 <_Z12printIntegerm>
        printString("\n");
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	97850513          	addi	a0,a0,-1672 # 80005040 <CONSOLE_STATUS+0x30>
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	e98080e7          	jalr	-360(ra) # 80002568 <_Z11printStringPKc>
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
    80001720:	e4c080e7          	jalr	-436(ra) # 80002568 <_Z11printStringPKc>
        printInteger(i);
    80001724:	00048513          	mv	a0,s1
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	eb0080e7          	jalr	-336(ra) # 800025d8 <_Z12printIntegerm>
        printString("\n");
    80001730:	00004517          	auipc	a0,0x4
    80001734:	91050513          	addi	a0,a0,-1776 # 80005040 <CONSOLE_STATUS+0x30>
    80001738:	00001097          	auipc	ra,0x1
    8000173c:	e30080e7          	jalr	-464(ra) # 80002568 <_Z11printStringPKc>
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
    8000175c:	e10080e7          	jalr	-496(ra) # 80002568 <_Z11printStringPKc>
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
    8000177c:	df0080e7          	jalr	-528(ra) # 80002568 <_Z11printStringPKc>
    printInteger(t1);
    80001780:	00090513          	mv	a0,s2
    80001784:	00001097          	auipc	ra,0x1
    80001788:	e54080e7          	jalr	-428(ra) # 800025d8 <_Z12printIntegerm>
    printString("\n");
    8000178c:	00004517          	auipc	a0,0x4
    80001790:	8b450513          	addi	a0,a0,-1868 # 80005040 <CONSOLE_STATUS+0x30>
    80001794:	00001097          	auipc	ra,0x1
    80001798:	dd4080e7          	jalr	-556(ra) # 80002568 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000179c:	00c00513          	li	a0,12
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	db0080e7          	jalr	-592(ra) # 80001550 <_ZL9fibonaccim>
    800017a8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800017ac:	00004517          	auipc	a0,0x4
    800017b0:	8a450513          	addi	a0,a0,-1884 # 80005050 <CONSOLE_STATUS+0x40>
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	db4080e7          	jalr	-588(ra) # 80002568 <_Z11printStringPKc>
    printInteger(result);
    800017bc:	00090513          	mv	a0,s2
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	e18080e7          	jalr	-488(ra) # 800025d8 <_Z12printIntegerm>
    printString("\n");
    800017c8:	00004517          	auipc	a0,0x4
    800017cc:	87850513          	addi	a0,a0,-1928 # 80005040 <CONSOLE_STATUS+0x30>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	d98080e7          	jalr	-616(ra) # 80002568 <_Z11printStringPKc>
    800017d8:	0380006f          	j	80001810 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800017dc:	00004517          	auipc	a0,0x4
    800017e0:	85450513          	addi	a0,a0,-1964 # 80005030 <CONSOLE_STATUS+0x20>
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	d84080e7          	jalr	-636(ra) # 80002568 <_Z11printStringPKc>
        printInteger(i);
    800017ec:	00048513          	mv	a0,s1
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	de8080e7          	jalr	-536(ra) # 800025d8 <_Z12printIntegerm>
        printString("\n");
    800017f8:	00004517          	auipc	a0,0x4
    800017fc:	84850513          	addi	a0,a0,-1976 # 80005040 <CONSOLE_STATUS+0x30>
    80001800:	00001097          	auipc	ra,0x1
    80001804:	d68080e7          	jalr	-664(ra) # 80002568 <_Z11printStringPKc>
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
    8000185c:	d10080e7          	jalr	-752(ra) # 80002568 <_Z11printStringPKc>
        printInteger(i);
    80001860:	00048513          	mv	a0,s1
    80001864:	00001097          	auipc	ra,0x1
    80001868:	d74080e7          	jalr	-652(ra) # 800025d8 <_Z12printIntegerm>
        printString("\n");
    8000186c:	00003517          	auipc	a0,0x3
    80001870:	7d450513          	addi	a0,a0,2004 # 80005040 <CONSOLE_STATUS+0x30>
    80001874:	00001097          	auipc	ra,0x1
    80001878:	cf4080e7          	jalr	-780(ra) # 80002568 <_Z11printStringPKc>
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
    80001898:	cd4080e7          	jalr	-812(ra) # 80002568 <_Z11printStringPKc>
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
    800018c4:	ca8080e7          	jalr	-856(ra) # 80002568 <_Z11printStringPKc>
    printInteger(result);
    800018c8:	00090513          	mv	a0,s2
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	d0c080e7          	jalr	-756(ra) # 800025d8 <_Z12printIntegerm>
    printString("\n");
    800018d4:	00003517          	auipc	a0,0x3
    800018d8:	76c50513          	addi	a0,a0,1900 # 80005040 <CONSOLE_STATUS+0x30>
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	c8c080e7          	jalr	-884(ra) # 80002568 <_Z11printStringPKc>
    800018e4:	0380006f          	j	8000191c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800018e8:	00003517          	auipc	a0,0x3
    800018ec:	77850513          	addi	a0,a0,1912 # 80005060 <CONSOLE_STATUS+0x50>
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	c78080e7          	jalr	-904(ra) # 80002568 <_Z11printStringPKc>
        printInteger(i);
    800018f8:	00048513          	mv	a0,s1
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	cdc080e7          	jalr	-804(ra) # 800025d8 <_Z12printIntegerm>
        printString("\n");
    80001904:	00003517          	auipc	a0,0x3
    80001908:	73c50513          	addi	a0,a0,1852 # 80005040 <CONSOLE_STATUS+0x30>
    8000190c:	00001097          	auipc	ra,0x1
    80001910:	c5c080e7          	jalr	-932(ra) # 80002568 <_Z11printStringPKc>
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
    80001950:	3dc7b783          	ld	a5,988(a5) # 80005d28 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001954:	0007b783          	ld	a5,0(a5)
    80001958:	00004717          	auipc	a4,0x4
    8000195c:	3e873703          	ld	a4,1000(a4) # 80005d40 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001960:	00f73023          	sd	a5,0(a4)
        freeMemHead->next=nullptr;
    80001964:	0007b823          	sd	zero,16(a5)
        freeMemHead->prev=nullptr;
    80001968:	0007b423          	sd	zero,8(a5)
        freeMemHead->size=(char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR-sizeof(FreeBlock);
    8000196c:	00004717          	auipc	a4,0x4
    80001970:	3ec73703          	ld	a4,1004(a4) # 80005d58 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001974:	00073703          	ld	a4,0(a4)
    80001978:	40f70733          	sub	a4,a4,a5
    8000197c:	fe870713          	addi	a4,a4,-24
    80001980:	00e7b023          	sd	a4,0(a5)
    MemoryAllocator::initMemory();
    //treba da oznacimo nasu funkciju supervisor trap da ce biti pozivana kao prekidna
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001984:	00004797          	auipc	a5,0x4
    80001988:	3ac7b783          	ld	a5,940(a5) # 80005d30 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	bbc080e7          	jalr	-1092(ra) # 80002568 <_Z11printStringPKc>
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
    800019fc:	618080e7          	jalr	1560(ra) # 80002010 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001a00:	00004497          	auipc	s1,0x4
    80001a04:	3b048493          	addi	s1,s1,944 # 80005db0 <_ZN3TCB7runningE>
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
    80001a60:	160080e7          	jalr	352(ra) # 80001bbc <_Znwm>
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
    80001a78:	170080e7          	jalr	368(ra) # 80001be4 <_Znam>
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
    80001abc:	7a4080e7          	jalr	1956(ra) # 8000225c <_ZN9Scheduler3putEP3TCB>
    80001ac0:	0280006f          	j	80001ae8 <_ZN3TCB15createCoroutineEPFvvE+0xac>
                        body!= nullptr? (uint64) &stack[STACK_SIZE] : 0 // stek raste ka NIZIM adresama, tkd krece od najvece i spusta se dole
    80001ac4:	00000513          	li	a0,0
    80001ac8:	fe1ff06f          	j	80001aa8 <_ZN3TCB15createCoroutineEPFvvE+0x6c>
    80001acc:	00050913          	mv	s2,a0
    80001ad0:	00048513          	mv	a0,s1
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	138080e7          	jalr	312(ra) # 80001c0c <_ZdlPv>
    80001adc:	00090513          	mv	a0,s2
    80001ae0:	00005097          	auipc	ra,0x5
    80001ae4:	3c8080e7          	jalr	968(ra) # 80006ea8 <_Unwind_Resume>
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
    80001b1c:	2984b483          	ld	s1,664(s1) # 80005db0 <_ZN3TCB7runningE>
    bool isFinished(){return finished;}
    80001b20:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) Scheduler::put(old);
    80001b24:	02078c63          	beqz	a5,80001b5c <_ZN3TCB8dispatchEv+0x58>
    running=Scheduler::get();
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	6cc080e7          	jalr	1740(ra) # 800021f4 <_ZN9Scheduler3getEv>
    80001b30:	00004797          	auipc	a5,0x4
    80001b34:	28a7b023          	sd	a0,640(a5) # 80005db0 <_ZN3TCB7runningE>
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
    80001b64:	6fc080e7          	jalr	1788(ra) # 8000225c <_ZN9Scheduler3putEP3TCB>
    80001b68:	fc1ff06f          	j	80001b28 <_ZN3TCB8dispatchEv+0x24>

0000000080001b6c <_ZN6ThreadD1Ev>:
#define syscall_cpp
#include "./syscall_c.hpp"
void* operator new (size_t);
void operator delete (void*);

class Thread {
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00813423          	sd	s0,8(sp)
    80001b74:	01010413          	addi	s0,sp,16
    80001b78:	00813403          	ld	s0,8(sp)
    80001b7c:	01010113          	addi	sp,sp,16
    80001b80:	00008067          	ret

0000000080001b84 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    80001b84:	ff010113          	addi	sp,sp,-16
    80001b88:	00113423          	sd	ra,8(sp)
    80001b8c:	00813023          	sd	s0,0(sp)
    80001b90:	01010413          	addi	s0,sp,16
    80001b94:	00004797          	auipc	a5,0x4
    80001b98:	14c78793          	addi	a5,a5,332 # 80005ce0 <_ZTV9Semaphore+0x10>
    80001b9c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001ba0:	00853503          	ld	a0,8(a0)
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	870080e7          	jalr	-1936(ra) # 80001414 <_Z9sem_closeP4_sem>
}
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_Znwm>:
void* operator new (size_t mem){ return mem_alloc(mem);}
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00113423          	sd	ra,8(sp)
    80001bc4:	00813023          	sd	s0,0(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    80001bcc:	fffff097          	auipc	ra,0xfffff
    80001bd0:	658080e7          	jalr	1624(ra) # 80001224 <_Z9mem_allocm>
    80001bd4:	00813083          	ld	ra,8(sp)
    80001bd8:	00013403          	ld	s0,0(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret

0000000080001be4 <_Znam>:
void* operator new[](size_t size) { return mem_alloc(size); }
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00113423          	sd	ra,8(sp)
    80001bec:	00813023          	sd	s0,0(sp)
    80001bf0:	01010413          	addi	s0,sp,16
    80001bf4:	fffff097          	auipc	ra,0xfffff
    80001bf8:	630080e7          	jalr	1584(ra) # 80001224 <_Z9mem_allocm>
    80001bfc:	00813083          	ld	ra,8(sp)
    80001c00:	00013403          	ld	s0,0(sp)
    80001c04:	01010113          	addi	sp,sp,16
    80001c08:	00008067          	ret

0000000080001c0c <_ZdlPv>:
void operator delete(void* addr) { mem_free(addr); }
    80001c0c:	ff010113          	addi	sp,sp,-16
    80001c10:	00113423          	sd	ra,8(sp)
    80001c14:	00813023          	sd	s0,0(sp)
    80001c18:	01010413          	addi	s0,sp,16
    80001c1c:	fffff097          	auipc	ra,0xfffff
    80001c20:	644080e7          	jalr	1604(ra) # 80001260 <_Z8mem_freePv>
    80001c24:	00813083          	ld	ra,8(sp)
    80001c28:	00013403          	ld	s0,0(sp)
    80001c2c:	01010113          	addi	sp,sp,16
    80001c30:	00008067          	ret

0000000080001c34 <_ZN6ThreadD0Ev>:
    80001c34:	ff010113          	addi	sp,sp,-16
    80001c38:	00113423          	sd	ra,8(sp)
    80001c3c:	00813023          	sd	s0,0(sp)
    80001c40:	01010413          	addi	s0,sp,16
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	fc8080e7          	jalr	-56(ra) # 80001c0c <_ZdlPv>
    80001c4c:	00813083          	ld	ra,8(sp)
    80001c50:	00013403          	ld	s0,0(sp)
    80001c54:	01010113          	addi	sp,sp,16
    80001c58:	00008067          	ret

0000000080001c5c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001c5c:	fe010113          	addi	sp,sp,-32
    80001c60:	00113c23          	sd	ra,24(sp)
    80001c64:	00813823          	sd	s0,16(sp)
    80001c68:	00913423          	sd	s1,8(sp)
    80001c6c:	02010413          	addi	s0,sp,32
    80001c70:	00050493          	mv	s1,a0
}
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	f10080e7          	jalr	-240(ra) # 80001b84 <_ZN9SemaphoreD1Ev>
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	f8c080e7          	jalr	-116(ra) # 80001c0c <_ZdlPv>
    80001c88:	01813083          	ld	ra,24(sp)
    80001c8c:	01013403          	ld	s0,16(sp)
    80001c90:	00813483          	ld	s1,8(sp)
    80001c94:	02010113          	addi	sp,sp,32
    80001c98:	00008067          	ret

0000000080001c9c <_ZdaPv>:
void operator delete[](void* addr) { mem_free(addr); }
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    80001cac:	fffff097          	auipc	ra,0xfffff
    80001cb0:	5b4080e7          	jalr	1460(ra) # 80001260 <_Z8mem_freePv>
    80001cb4:	00813083          	ld	ra,8(sp)
    80001cb8:	00013403          	ld	s0,0(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr),body(body),arg(arg)
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00813423          	sd	s0,8(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    80001cd0:	00004797          	auipc	a5,0x4
    80001cd4:	fe878793          	addi	a5,a5,-24 # 80005cb8 <_ZTV6Thread+0x10>
    80001cd8:	00f53023          	sd	a5,0(a0)
    80001cdc:	00053423          	sd	zero,8(a0)
    80001ce0:	00b53823          	sd	a1,16(a0)
    80001ce4:	00c53c23          	sd	a2,24(a0)
}
    80001ce8:	00813403          	ld	s0,8(sp)
    80001cec:	01010113          	addi	sp,sp,16
    80001cf0:	00008067          	ret

0000000080001cf4 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr),body(runWrapper),arg(this)
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00813423          	sd	s0,8(sp)
    80001cfc:	01010413          	addi	s0,sp,16
    80001d00:	00004797          	auipc	a5,0x4
    80001d04:	fb878793          	addi	a5,a5,-72 # 80005cb8 <_ZTV6Thread+0x10>
    80001d08:	00f53023          	sd	a5,0(a0)
    80001d0c:	00053423          	sd	zero,8(a0)
    80001d10:	00000797          	auipc	a5,0x0
    80001d14:	25c78793          	addi	a5,a5,604 # 80001f6c <_ZN6Thread10runWrapperEPv>
    80001d18:	00f53823          	sd	a5,16(a0)
    80001d1c:	00a53c23          	sd	a0,24(a0)
}
    80001d20:	00813403          	ld	s0,8(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret

0000000080001d2c <_ZN6Thread8dispatchEv>:
{
    80001d2c:	ff010113          	addi	sp,sp,-16
    80001d30:	00113423          	sd	ra,8(sp)
    80001d34:	00813023          	sd	s0,0(sp)
    80001d38:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001d3c:	fffff097          	auipc	ra,0xfffff
    80001d40:	678080e7          	jalr	1656(ra) # 800013b4 <_Z15thread_dispatchv>
}
    80001d44:	00813083          	ld	ra,8(sp)
    80001d48:	00013403          	ld	s0,0(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret

0000000080001d54 <_ZN6Thread5startEv>:
{
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,body, arg);
    80001d64:	01853603          	ld	a2,24(a0)
    80001d68:	01053583          	ld	a1,16(a0)
    80001d6c:	00850513          	addi	a0,a0,8
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	588080e7          	jalr	1416(ra) # 800012f8 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80001d78:	00813083          	ld	ra,8(sp)
    80001d7c:	00013403          	ld	s0,0(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN6Thread5sleepEm>:
{
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00113423          	sd	ra,8(sp)
    80001d90:	00813023          	sd	s0,0(sp)
    80001d94:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80001d98:	fffff097          	auipc	ra,0xfffff
    80001d9c:	724080e7          	jalr	1828(ra) # 800014bc <_Z10time_sleepm>
}
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_ZN14PeriodicThread3runEv>:
}

void PeriodicThread::terminate() {
    period=0;
}
void PeriodicThread::run() {
    80001db0:	fe010113          	addi	sp,sp,-32
    80001db4:	00113c23          	sd	ra,24(sp)
    80001db8:	00813823          	sd	s0,16(sp)
    80001dbc:	00913423          	sd	s1,8(sp)
    80001dc0:	02010413          	addi	s0,sp,32
    80001dc4:	00050493          	mv	s1,a0
    while(period){
    80001dc8:	0204b783          	ld	a5,32(s1)
    80001dcc:	02078263          	beqz	a5,80001df0 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80001dd0:	0004b783          	ld	a5,0(s1)
    80001dd4:	0187b783          	ld	a5,24(a5)
    80001dd8:	00048513          	mv	a0,s1
    80001ddc:	000780e7          	jalr	a5
        sleep(period);
    80001de0:	0204b503          	ld	a0,32(s1)
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	fa4080e7          	jalr	-92(ra) # 80001d88 <_ZN6Thread5sleepEm>
    while(period){
    80001dec:	fddff06f          	j	80001dc8 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    80001df0:	01813083          	ld	ra,24(sp)
    80001df4:	01013403          	ld	s0,16(sp)
    80001df8:	00813483          	ld	s1,8(sp)
    80001dfc:	02010113          	addi	sp,sp,32
    80001e00:	00008067          	ret

0000000080001e04 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) :myHandle(nullptr){
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00113423          	sd	ra,8(sp)
    80001e0c:	00813023          	sd	s0,0(sp)
    80001e10:	01010413          	addi	s0,sp,16
    80001e14:	00004797          	auipc	a5,0x4
    80001e18:	ecc78793          	addi	a5,a5,-308 # 80005ce0 <_ZTV9Semaphore+0x10>
    80001e1c:	00f53023          	sd	a5,0(a0)
    80001e20:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    80001e24:	00850513          	addi	a0,a0,8
    80001e28:	fffff097          	auipc	ra,0xfffff
    80001e2c:	5b0080e7          	jalr	1456(ra) # 800013d8 <_Z8sem_openPP4_semj>
}
    80001e30:	00813083          	ld	ra,8(sp)
    80001e34:	00013403          	ld	s0,0(sp)
    80001e38:	01010113          	addi	sp,sp,16
    80001e3c:	00008067          	ret

0000000080001e40 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00113423          	sd	ra,8(sp)
    80001e48:	00813023          	sd	s0,0(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001e50:	00853503          	ld	a0,8(a0)
    80001e54:	fffff097          	auipc	ra,0xfffff
    80001e58:	5f8080e7          	jalr	1528(ra) # 8000144c <_Z8sem_waitP4_sem>
}
    80001e5c:	00813083          	ld	ra,8(sp)
    80001e60:	00013403          	ld	s0,0(sp)
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00008067          	ret

0000000080001e6c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00113423          	sd	ra,8(sp)
    80001e74:	00813023          	sd	s0,0(sp)
    80001e78:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001e7c:	00853503          	ld	a0,8(a0)
    80001e80:	fffff097          	auipc	ra,0xfffff
    80001e84:	604080e7          	jalr	1540(ra) # 80001484 <_Z10sem_signalP4_sem>
}
    80001e88:	00813083          	ld	ra,8(sp)
    80001e8c:	00013403          	ld	s0,0(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) :Thread(),period(period){
    80001e98:	fe010113          	addi	sp,sp,-32
    80001e9c:	00113c23          	sd	ra,24(sp)
    80001ea0:	00813823          	sd	s0,16(sp)
    80001ea4:	00913423          	sd	s1,8(sp)
    80001ea8:	01213023          	sd	s2,0(sp)
    80001eac:	02010413          	addi	s0,sp,32
    80001eb0:	00050493          	mv	s1,a0
    80001eb4:	00058913          	mv	s2,a1
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	e3c080e7          	jalr	-452(ra) # 80001cf4 <_ZN6ThreadC1Ev>
    80001ec0:	00004797          	auipc	a5,0x4
    80001ec4:	e4078793          	addi	a5,a5,-448 # 80005d00 <_ZTV14PeriodicThread+0x10>
    80001ec8:	00f4b023          	sd	a5,0(s1)
    80001ecc:	0324b023          	sd	s2,32(s1)
}
    80001ed0:	01813083          	ld	ra,24(sp)
    80001ed4:	01013403          	ld	s0,16(sp)
    80001ed8:	00813483          	ld	s1,8(sp)
    80001edc:	00013903          	ld	s2,0(sp)
    80001ee0:	02010113          	addi	sp,sp,32
    80001ee4:	00008067          	ret

0000000080001ee8 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80001ee8:	ff010113          	addi	sp,sp,-16
    80001eec:	00813423          	sd	s0,8(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    period=0;
    80001ef4:	02053023          	sd	zero,32(a0)
}
    80001ef8:	00813403          	ld	s0,8(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <_ZN7Console4getcEv>:

char Console::getc() {
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00113423          	sd	ra,8(sp)
    80001f0c:	00813023          	sd	s0,0(sp)
    80001f10:	01010413          	addi	s0,sp,16
    return ::getc();
    80001f14:	fffff097          	auipc	ra,0xfffff
    80001f18:	5e0080e7          	jalr	1504(ra) # 800014f4 <_Z4getcv>
}
    80001f1c:	00813083          	ld	ra,8(sp)
    80001f20:	00013403          	ld	s0,0(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00113423          	sd	ra,8(sp)
    80001f34:	00813023          	sd	s0,0(sp)
    80001f38:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001f3c:	fffff097          	auipc	ra,0xfffff
    80001f40:	5ec080e7          	jalr	1516(ra) # 80001528 <_Z4putcc>
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00813423          	sd	s0,8(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    80001f60:	00813403          	ld	s0,8(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_ZN6Thread10runWrapperEPv>:
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
    static void runWrapper(void* thread){
        if(thread) ((Thread*) thread)->run();
    80001f6c:	02050863          	beqz	a0,80001f9c <_ZN6Thread10runWrapperEPv+0x30>
    static void runWrapper(void* thread){
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00113423          	sd	ra,8(sp)
    80001f78:	00813023          	sd	s0,0(sp)
    80001f7c:	01010413          	addi	s0,sp,16
        if(thread) ((Thread*) thread)->run();
    80001f80:	00053783          	ld	a5,0(a0)
    80001f84:	0107b783          	ld	a5,16(a5)
    80001f88:	000780e7          	jalr	a5
    }
    80001f8c:	00813083          	ld	ra,8(sp)
    80001f90:	00013403          	ld	s0,0(sp)
    80001f94:	01010113          	addi	sp,sp,16
    80001f98:	00008067          	ret
    80001f9c:	00008067          	ret

0000000080001fa0 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00813423          	sd	s0,8(sp)
    80001fa8:	01010413          	addi	s0,sp,16
    80001fac:	00813403          	ld	s0,8(sp)
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001fb8:	ff010113          	addi	sp,sp,-16
    80001fbc:	00813423          	sd	s0,8(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    80001fc4:	00004797          	auipc	a5,0x4
    80001fc8:	d3c78793          	addi	a5,a5,-708 # 80005d00 <_ZTV14PeriodicThread+0x10>
    80001fcc:	00f53023          	sd	a5,0(a0)
    80001fd0:	00813403          	ld	s0,8(sp)
    80001fd4:	01010113          	addi	sp,sp,16
    80001fd8:	00008067          	ret

0000000080001fdc <_ZN14PeriodicThreadD0Ev>:
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    80001fec:	00004797          	auipc	a5,0x4
    80001ff0:	d1478793          	addi	a5,a5,-748 # 80005d00 <_ZTV14PeriodicThread+0x10>
    80001ff4:	00f53023          	sd	a5,0(a0)
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	c14080e7          	jalr	-1004(ra) # 80001c0c <_ZdlPv>
    80002000:	00813083          	ld	ra,8(sp)
    80002004:	00013403          	ld	s0,0(sp)
    80002008:	01010113          	addi	sp,sp,16
    8000200c:	00008067          	ret

0000000080002010 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.hpp"
void Riscv::popSppSpie() //ova fja moze biti interesantna ako nas interesuje kada ce neki procesor promeniti kontekst
{
    80002010:	ff010113          	addi	sp,sp,-16
    80002014:	00813423          	sd	s0,8(sp)
    80002018:	01010413          	addi	s0,sp,16
    //hocemo da se vratimo tamo gde ce ova funkcija biti pozvana (threadWrapper), ne mozemo samo pozvati sret jer
    //jer bi nas sepc vratio kod linije 38, gde je stara nit izgubila pristup, sto ne zelimo
    //jedini nacin upisemo vrednost u sret tamo gde je funkcija bila pozvana, jeste da se funkcija POZOVE, a NE INLINE!
    __asm__ volatile ("csrw sepc, ra");
    8000201c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002020:	10200073          	sret
}
    80002024:	00813403          	ld	s0,8(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret

0000000080002030 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80002030:	f7010113          	addi	sp,sp,-144
    80002034:	08113423          	sd	ra,136(sp)
    80002038:	08813023          	sd	s0,128(sp)
    8000203c:	06913c23          	sd	s1,120(sp)
    80002040:	09010413          	addi	s0,sp,144
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002044:	142027f3          	csrr	a5,scause
    80002048:	faf43c23          	sd	a5,-72(s0)
    return scause;
    8000204c:	fb843483          	ld	s1,-72(s0)
    //ovde ulazimo kada se bilo koji exception ili interrupt javi
    uint64 scause = r_scause();
    if(scause==0x0000000000000009UL || scause == 0x0000000000000008UL){
    80002050:	ff848713          	addi	a4,s1,-8
    80002054:	00100793          	li	a5,1
    80002058:	02e7fc63          	bgeu	a5,a4,80002090 <_ZN5Riscv20handleSupervisorTrapEv+0x60>
        TCB::dispatch();
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
        w_sstatus(sstatus);

    }
    if(scause==0x8000000000000001UL) // 8 -jedinica na najtezem bitu - prekid | 1 - jedinica na najnizem bitu - softver prekid
    8000205c:	fff00793          	li	a5,-1
    80002060:	03f79793          	slli	a5,a5,0x3f
    80002064:	00178793          	addi	a5,a5,1
    80002068:	0cf48263          	beq	s1,a5,8000212c <_ZN5Riscv20handleSupervisorTrapEv+0xfc>
            w_sepc(sepc);
            w_sstatus(sstatus);
        }
        mc_sip(SIP_SSIP);
    }
    else if (scause==0x8000000000000009UL){
    8000206c:	fff00793          	li	a5,-1
    80002070:	03f79793          	slli	a5,a5,0x3f
    80002074:	00978793          	addi	a5,a5,9
    80002078:	12f48863          	beq	s1,a5,800021a8 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
        //scause - sta se  desilo
        //sepc- gde se desilo
        // stval - dodatno opise cause

    }
    8000207c:	08813083          	ld	ra,136(sp)
    80002080:	08013403          	ld	s0,128(sp)
    80002084:	07813483          	ld	s1,120(sp)
    80002088:	09010113          	addi	sp,sp,144
    8000208c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002090:	141027f3          	csrr	a5,sepc
    80002094:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002098:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc()+4;
    8000209c:	00478793          	addi	a5,a5,4
    800020a0:	f6f43c23          	sd	a5,-136(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020a4:	100027f3          	csrr	a5,sstatus
    800020a8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800020ac:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    800020b0:	f8f43023          	sd	a5,-128(s0)
        __asm__ volatile("mv %0, a0":"=r"(a0));
    800020b4:	00050793          	mv	a5,a0
    800020b8:	f8f43423          	sd	a5,-120(s0)
        switch(a0){
    800020bc:	f8843783          	ld	a5,-120(s0)
    800020c0:	00100713          	li	a4,1
    800020c4:	02e78063          	beq	a5,a4,800020e4 <_ZN5Riscv20handleSupervisorTrapEv+0xb4>
    800020c8:	00200713          	li	a4,2
    800020cc:	02e78c63          	beq	a5,a4,80002104 <_ZN5Riscv20handleSupervisorTrapEv+0xd4>
  */      w_sepc(sepc); // ne mozemo ovde da radimo +4, jer kad se promeni kontekst, moze se izabrati nit koja je asinhrono izgubila
    800020d0:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800020d4:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    800020d8:	f8043783          	ld	a5,-128(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020dc:	10079073          	csrw	sstatus,a5
}
    800020e0:	f7dff06f          	j	8000205c <_ZN5Riscv20handleSupervisorTrapEv+0x2c>
                __asm__ volatile("mv %0, a1":"=r"(a1));
    800020e4:	00058793          	mv	a5,a1
    800020e8:	f8f43823          	sd	a5,-112(s0)
                ret=(uint64*)MemoryAllocator::mem_alloc(a1);
    800020ec:	f9043503          	ld	a0,-112(s0)
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	20c080e7          	jalr	524(ra) # 800022fc <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv a0,%0"::"r"((uint64)ret));
    800020f8:	00050513          	mv	a0,a0
                __asm__ volatile("sd a0,80(fp)");
    800020fc:	04a43823          	sd	a0,80(s0)
                break;
    80002100:	fd1ff06f          	j	800020d0 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
                __asm__ volatile("mv %0, a1":"=r"(addr));
    80002104:	00058793          	mv	a5,a1
    80002108:	f8f43c23          	sd	a5,-104(s0)
                flag=(uint64)MemoryAllocator::mem_free(addr);
    8000210c:	f9843503          	ld	a0,-104(s0)
    80002110:	00000097          	auipc	ra,0x0
    80002114:	2c4080e7          	jalr	708(ra) # 800023d4 <_ZN15MemoryAllocator8mem_freeEPv>
    80002118:	faa43023          	sd	a0,-96(s0)
                __asm__ volatile("mv a0, %0"::"r"(flag));
    8000211c:	fa043783          	ld	a5,-96(s0)
    80002120:	00078513          	mv	a0,a5
                __asm__ volatile("sd a0,80(fp)");
    80002124:	04a43823          	sd	a0,80(s0)
                break;
    80002128:	fa9ff06f          	j	800020d0 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
        TCB::timeSliceCounter++;
    8000212c:	00004717          	auipc	a4,0x4
    80002130:	c0c73703          	ld	a4,-1012(a4) # 80005d38 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002134:	00073783          	ld	a5,0(a4)
    80002138:	00178793          	addi	a5,a5,1
    8000213c:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    80002140:	00004717          	auipc	a4,0x4
    80002144:	c1073703          	ld	a4,-1008(a4) # 80005d50 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002148:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const {return timeSlice;}
    8000214c:	01073703          	ld	a4,16(a4)
    80002150:	00e7f863          	bgeu	a5,a4,80002160 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002154:	00200793          	li	a5,2
    80002158:	1447b073          	csrc	sip,a5
}
    8000215c:	f21ff06f          	j	8000207c <_ZN5Riscv20handleSupervisorTrapEv+0x4c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002160:	141027f3          	csrr	a5,sepc
    80002164:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002168:	fd843783          	ld	a5,-40(s0)
            uint64 volatile sepc = r_sepc();
    8000216c:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002170:	100027f3          	csrr	a5,sstatus
    80002174:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002178:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sstatus = r_sstatus();
    8000217c:	faf43823          	sd	a5,-80(s0)
            TCB::timeSliceCounter=0;
    80002180:	00004797          	auipc	a5,0x4
    80002184:	bb87b783          	ld	a5,-1096(a5) # 80005d38 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002188:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000218c:	00000097          	auipc	ra,0x0
    80002190:	978080e7          	jalr	-1672(ra) # 80001b04 <_ZN3TCB8dispatchEv>
            w_sepc(sepc);
    80002194:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002198:	14179073          	csrw	sepc,a5
            w_sstatus(sstatus);
    8000219c:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800021a0:	10079073          	csrw	sstatus,a5
}
    800021a4:	fb1ff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
        console_handler();
    800021a8:	00002097          	auipc	ra,0x2
    800021ac:	628080e7          	jalr	1576(ra) # 800047d0 <console_handler>
    800021b0:	ecdff06f          	j	8000207c <_ZN5Riscv20handleSupervisorTrapEv+0x4c>

00000000800021b4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00813423          	sd	s0,8(sp)
    800021bc:	01010413          	addi	s0,sp,16
    800021c0:	00100793          	li	a5,1
    800021c4:	00f50863          	beq	a0,a5,800021d4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800021c8:	00813403          	ld	s0,8(sp)
    800021cc:	01010113          	addi	sp,sp,16
    800021d0:	00008067          	ret
    800021d4:	000107b7          	lui	a5,0x10
    800021d8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021dc:	fef596e3          	bne	a1,a5,800021c8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800021e0:	00004797          	auipc	a5,0x4
    800021e4:	be078793          	addi	a5,a5,-1056 # 80005dc0 <_ZN9Scheduler19readyCoroutineQueueE>
    800021e8:	0007b023          	sd	zero,0(a5)
    800021ec:	0007b423          	sd	zero,8(a5)
    800021f0:	fd9ff06f          	j	800021c8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800021f4 <_ZN9Scheduler3getEv>:
{
    800021f4:	fe010113          	addi	sp,sp,-32
    800021f8:	00113c23          	sd	ra,24(sp)
    800021fc:	00813823          	sd	s0,16(sp)
    80002200:	00913423          	sd	s1,8(sp)
    80002204:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002208:	00004517          	auipc	a0,0x4
    8000220c:	bb853503          	ld	a0,-1096(a0) # 80005dc0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002210:	04050263          	beqz	a0,80002254 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80002214:	00853783          	ld	a5,8(a0)
    80002218:	00004717          	auipc	a4,0x4
    8000221c:	baf73423          	sd	a5,-1112(a4) # 80005dc0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    80002220:	02078463          	beqz	a5,80002248 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80002224:	00053483          	ld	s1,0(a0)
        delete elem;
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	9e4080e7          	jalr	-1564(ra) # 80001c0c <_ZdlPv>
}
    80002230:	00048513          	mv	a0,s1
    80002234:	01813083          	ld	ra,24(sp)
    80002238:	01013403          	ld	s0,16(sp)
    8000223c:	00813483          	ld	s1,8(sp)
    80002240:	02010113          	addi	sp,sp,32
    80002244:	00008067          	ret
        if (!head) { tail = 0; }
    80002248:	00004797          	auipc	a5,0x4
    8000224c:	b807b023          	sd	zero,-1152(a5) # 80005dc8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002250:	fd5ff06f          	j	80002224 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002254:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002258:	fd9ff06f          	j	80002230 <_ZN9Scheduler3getEv+0x3c>

000000008000225c <_ZN9Scheduler3putEP3TCB>:
{
    8000225c:	fe010113          	addi	sp,sp,-32
    80002260:	00113c23          	sd	ra,24(sp)
    80002264:	00813823          	sd	s0,16(sp)
    80002268:	00913423          	sd	s1,8(sp)
    8000226c:	02010413          	addi	s0,sp,32
    80002270:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002274:	01000513          	li	a0,16
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	944080e7          	jalr	-1724(ra) # 80001bbc <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002280:	00953023          	sd	s1,0(a0)
    80002284:	00053423          	sd	zero,8(a0)
        if (tail)
    80002288:	00004797          	auipc	a5,0x4
    8000228c:	b407b783          	ld	a5,-1216(a5) # 80005dc8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002290:	02078263          	beqz	a5,800022b4 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002294:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002298:	00004797          	auipc	a5,0x4
    8000229c:	b2a7b823          	sd	a0,-1232(a5) # 80005dc8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800022a0:	01813083          	ld	ra,24(sp)
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	00813483          	ld	s1,8(sp)
    800022ac:	02010113          	addi	sp,sp,32
    800022b0:	00008067          	ret
            head = tail = elem;
    800022b4:	00004797          	auipc	a5,0x4
    800022b8:	b0c78793          	addi	a5,a5,-1268 # 80005dc0 <_ZN9Scheduler19readyCoroutineQueueE>
    800022bc:	00a7b423          	sd	a0,8(a5)
    800022c0:	00a7b023          	sd	a0,0(a5)
    800022c4:	fddff06f          	j	800022a0 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800022c8 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00113423          	sd	ra,8(sp)
    800022d0:	00813023          	sd	s0,0(sp)
    800022d4:	01010413          	addi	s0,sp,16
    800022d8:	000105b7          	lui	a1,0x10
    800022dc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800022e0:	00100513          	li	a0,1
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	ed0080e7          	jalr	-304(ra) # 800021b4 <_Z41__static_initialization_and_destruction_0ii>
    800022ec:	00813083          	ld	ra,8(sp)
    800022f0:	00013403          	ld	s0,0(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_ZN15MemoryAllocator9mem_allocEm>:

#include "../h/MemoryAllocator.hpp"

MemoryAllocator::FreeBlock* MemoryAllocator::freeMemHead;
void *MemoryAllocator::mem_alloc(size_t numOfBlocks)
{
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813423          	sd	s0,8(sp)
    80002304:	01010413          	addi	s0,sp,16
    size_t size=numOfBlocks*MEM_BLOCK_SIZE;
    80002308:	00651713          	slli	a4,a0,0x6
    if(size <=0 || !freeMemHead) return nullptr;
    8000230c:	0c070063          	beqz	a4,800023cc <_ZN15MemoryAllocator9mem_allocEm+0xd0>
    80002310:	00004517          	auipc	a0,0x4
    80002314:	ac053503          	ld	a0,-1344(a0) # 80005dd0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002318:	00051663          	bnez	a0,80002324 <_ZN15MemoryAllocator9mem_allocEm+0x28>
    8000231c:	0640006f          	j	80002380 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    MemoryAllocator::FreeBlock* curr = freeMemHead;
//    // zaokruzi na ceo blok - u C API-u vec zaokruzujem na blokove i prosledjujem broj blokova, NE broj bajtova
//    if(size%MEM_BLOCK_SIZE){
//        size=((size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
//    }
    while(curr && curr->size<size) curr=curr->next;
    80002320:	01053503          	ld	a0,16(a0)
    80002324:	00050663          	beqz	a0,80002330 <_ZN15MemoryAllocator9mem_allocEm+0x34>
    80002328:	00053783          	ld	a5,0(a0)
    8000232c:	fee7eae3          	bltu	a5,a4,80002320 <_ZN15MemoryAllocator9mem_allocEm+0x24>
    if(!curr) return nullptr;
    80002330:	04050863          	beqz	a0,80002380 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    if(curr->size> size+sizeof(FreeBlock)){
    80002334:	00053683          	ld	a3,0(a0)
    80002338:	01870793          	addi	a5,a4,24
    8000233c:	04d7fe63          	bgeu	a5,a3,80002398 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
        //ostaje nam blok       <-curr->size odavde pokazuje
        //| datablock metadata |     allocated     | new datablock metadata | remaining size |

        FreeBlock* newBlock = (FreeBlock*)((char*) curr + sizeof(FreeBlock) + size);
    80002340:	00f507b3          	add	a5,a0,a5

        newBlock->size=curr->size-size-sizeof(FreeBlock);
    80002344:	40e686b3          	sub	a3,a3,a4
    80002348:	fe868693          	addi	a3,a3,-24
    8000234c:	00d7b023          	sd	a3,0(a5)
        newBlock->prev=curr->prev;
    80002350:	00853683          	ld	a3,8(a0)
    80002354:	00d7b423          	sd	a3,8(a5)
        //size je velicina koja je trazena da se zauzme, zaokruzena na ceo broj blokova, kada budemo oslobadjali sa adrese curr, oslobodicemo tacno koliko treba
        curr->size=size;
    80002358:	00e53023          	sd	a4,0(a0)
        if(curr->prev){
    8000235c:	02068863          	beqz	a3,8000238c <_ZN15MemoryAllocator9mem_allocEm+0x90>
            curr->prev->next=newBlock;
    80002360:	00f6b823          	sd	a5,16(a3)
        }
        else freeMemHead = newBlock;
        newBlock->next=curr->next;
    80002364:	01053703          	ld	a4,16(a0)
    80002368:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=newBlock;
    8000236c:	00070463          	beqz	a4,80002374 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    80002370:	00f73423          	sd	a5,8(a4)
        //ne menjamo curr->size zato sto ceo curr blok alociramo, pa kada ga budemo oslobadjali, oslobodicemo ceo
        if(curr->prev) curr->prev->next=curr->next;
        else freeMemHead=curr->next;
        if(curr->next) curr->next->prev=curr->prev;
    }
    curr->next=nullptr;
    80002374:	00053823          	sd	zero,16(a0)
    curr->prev=nullptr;
    80002378:	00053423          	sd	zero,8(a0)
    return (void*) ((char*)curr+sizeof(FreeBlock));
    8000237c:	01850513          	addi	a0,a0,24
}
    80002380:	00813403          	ld	s0,8(sp)
    80002384:	01010113          	addi	sp,sp,16
    80002388:	00008067          	ret
        else freeMemHead = newBlock;
    8000238c:	00004717          	auipc	a4,0x4
    80002390:	a4f73223          	sd	a5,-1468(a4) # 80005dd0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002394:	fd1ff06f          	j	80002364 <_ZN15MemoryAllocator9mem_allocEm+0x68>
        if(curr->prev) curr->prev->next=curr->next;
    80002398:	00853783          	ld	a5,8(a0)
    8000239c:	02078063          	beqz	a5,800023bc <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    800023a0:	01053703          	ld	a4,16(a0)
    800023a4:	00e7b823          	sd	a4,16(a5)
        if(curr->next) curr->next->prev=curr->prev;
    800023a8:	01053783          	ld	a5,16(a0)
    800023ac:	fc0784e3          	beqz	a5,80002374 <_ZN15MemoryAllocator9mem_allocEm+0x78>
    800023b0:	00853703          	ld	a4,8(a0)
    800023b4:	00e7b423          	sd	a4,8(a5)
    800023b8:	fbdff06f          	j	80002374 <_ZN15MemoryAllocator9mem_allocEm+0x78>
        else freeMemHead=curr->next;
    800023bc:	01053783          	ld	a5,16(a0)
    800023c0:	00004717          	auipc	a4,0x4
    800023c4:	a0f73823          	sd	a5,-1520(a4) # 80005dd0 <_ZN15MemoryAllocator11freeMemHeadE>
    800023c8:	fe1ff06f          	j	800023a8 <_ZN15MemoryAllocator9mem_allocEm+0xac>
    if(size <=0 || !freeMemHead) return nullptr;
    800023cc:	00000513          	li	a0,0
    800023d0:	fb1ff06f          	j	80002380 <_ZN15MemoryAllocator9mem_allocEm+0x84>

00000000800023d4 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void *addr)
{
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00813423          	sd	s0,8(sp)
    800023dc:	01010413          	addi	s0,sp,16
    if(!addr) return -1;
    800023e0:	16050863          	beqz	a0,80002550 <_ZN15MemoryAllocator8mem_freeEPv+0x17c>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    800023e4:	fe850693          	addi	a3,a0,-24
    800023e8:	00004797          	auipc	a5,0x4
    800023ec:	9407b783          	ld	a5,-1728(a5) # 80005d28 <_GLOBAL_OFFSET_TABLE_+0x8>
    800023f0:	0007b783          	ld	a5,0(a5)
    800023f4:	16f6e263          	bltu	a3,a5,80002558 <_ZN15MemoryAllocator8mem_freeEPv+0x184>
    800023f8:	00004797          	auipc	a5,0x4
    800023fc:	9607b783          	ld	a5,-1696(a5) # 80005d58 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002400:	0007b783          	ld	a5,0(a5)
    80002404:	14a7ee63          	bltu	a5,a0,80002560 <_ZN15MemoryAllocator8mem_freeEPv+0x18c>

    FreeBlock* blk = (FreeBlock*) ((char*)addr-sizeof(FreeBlock));
    blk->next=nullptr;
    80002408:	fe053c23          	sd	zero,-8(a0)
    blk->prev=nullptr;
    8000240c:	fe053823          	sd	zero,-16(a0)
    FreeBlock* curr = nullptr;
    if(!freeMemHead){
    80002410:	00004617          	auipc	a2,0x4
    80002414:	9c063603          	ld	a2,-1600(a2) # 80005dd0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002418:	04060c63          	beqz	a2,80002470 <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
        //prvi slobodni
        freeMemHead=blk;
        return 0;
    }
    if((char*) blk < (char*) freeMemHead){
    8000241c:	08c6e463          	bltu	a3,a2,800024a4 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
        //blk je pre heada, obradjujemo na kraju
        curr=nullptr;
    }
    else
    {
        for (curr = freeMemHead; curr->next != nullptr && (char *) curr->next < (char *) blk; curr = curr->next);
    80002420:	00060793          	mv	a5,a2
    80002424:	00078713          	mv	a4,a5
    80002428:	0107b783          	ld	a5,16(a5)
    8000242c:	00078463          	beqz	a5,80002434 <_ZN15MemoryAllocator8mem_freeEPv+0x60>
    80002430:	fed7eae3          	bltu	a5,a3,80002424 <_ZN15MemoryAllocator8mem_freeEPv+0x50>
        // curr|?|blk|?| curr->next
    }
    //gledamo da li mozemo spojiti sa sledecim
    if(curr && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)blk){
    80002434:	06070a63          	beqz	a4,800024a8 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
    80002438:	00073803          	ld	a6,0(a4)
    8000243c:	01880593          	addi	a1,a6,24
    80002440:	00b705b3          	add	a1,a4,a1
    80002444:	06b69263          	bne	a3,a1,800024a8 <_ZN15MemoryAllocator8mem_freeEPv+0xd4>
        // |curr|blk|
        curr->size+=sizeof(FreeBlock)+blk->size;
    80002448:	fe853683          	ld	a3,-24(a0)
    8000244c:	00d806b3          	add	a3,a6,a3
    80002450:	01868693          	addi	a3,a3,24
    80002454:	00d73023          	sd	a3,0(a4)
        if(curr->next && (char*)curr+sizeof(FreeBlock)+curr->size==(char*)curr->next){
    80002458:	00078863          	beqz	a5,80002468 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    8000245c:	01868613          	addi	a2,a3,24
    80002460:	00c70633          	add	a2,a4,a2
    80002464:	00c78e63          	beq	a5,a2,80002480 <_ZN15MemoryAllocator8mem_freeEPv+0xac>
            //|curr |curr->next|
            curr->size+=sizeof(FreeBlock)+curr->next->size;
            curr->next=curr->next->next;
            if(curr->next) curr->next->prev=curr;
        }
        return 0;
    80002468:	00000513          	li	a0,0
    8000246c:	0780006f          	j	800024e4 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
        freeMemHead=blk;
    80002470:	00004797          	auipc	a5,0x4
    80002474:	96d7b023          	sd	a3,-1696(a5) # 80005dd0 <_ZN15MemoryAllocator11freeMemHeadE>
        return 0;
    80002478:	00000513          	li	a0,0
    8000247c:	0680006f          	j	800024e4 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
            curr->size+=sizeof(FreeBlock)+curr->next->size;
    80002480:	0007b603          	ld	a2,0(a5)
    80002484:	00c686b3          	add	a3,a3,a2
    80002488:	01868693          	addi	a3,a3,24
    8000248c:	00d73023          	sd	a3,0(a4)
            curr->next=curr->next->next;
    80002490:	0107b783          	ld	a5,16(a5)
    80002494:	00f73823          	sd	a5,16(a4)
            if(curr->next) curr->next->prev=curr;
    80002498:	fc0788e3          	beqz	a5,80002468 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
    8000249c:	00e7b423          	sd	a4,8(a5)
    800024a0:	fc9ff06f          	j	80002468 <_ZN15MemoryAllocator8mem_freeEPv+0x94>
        curr=nullptr;
    800024a4:	00000713          	li	a4,0
    }

    FreeBlock* nextBlock = curr ? curr->next : freeMemHead;
    800024a8:	00070463          	beqz	a4,800024b0 <_ZN15MemoryAllocator8mem_freeEPv+0xdc>
    800024ac:	01073603          	ld	a2,16(a4)
    if(nextBlock && (char*)blk+sizeof(FreeBlock)+blk->size==(char*)nextBlock){
    800024b0:	00060863          	beqz	a2,800024c0 <_ZN15MemoryAllocator8mem_freeEPv+0xec>
    800024b4:	fe853783          	ld	a5,-24(a0)
    800024b8:	00f505b3          	add	a1,a0,a5
    800024bc:	02c58a63          	beq	a1,a2,800024f0 <_ZN15MemoryAllocator8mem_freeEPv+0x11c>
        if(nextBlock->prev) nextBlock->prev->next=blk;
        else freeMemHead=blk;
        return 0;
    }
    //nema potrebe za spajanjem, samo dodajemo blok;
    blk->prev=curr;
    800024c0:	fee53823          	sd	a4,-16(a0)
    blk->next=curr?curr->next:freeMemHead;
    800024c4:	06070863          	beqz	a4,80002534 <_ZN15MemoryAllocator8mem_freeEPv+0x160>
    800024c8:	01073783          	ld	a5,16(a4)
    800024cc:	fef53c23          	sd	a5,-8(a0)
    if(blk->next) blk->next->prev=blk;
    800024d0:	00078463          	beqz	a5,800024d8 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    800024d4:	00d7b423          	sd	a3,8(a5)
    if(curr) curr->next=blk;
    800024d8:	06070463          	beqz	a4,80002540 <_ZN15MemoryAllocator8mem_freeEPv+0x16c>
    800024dc:	00d73823          	sd	a3,16(a4)
    else freeMemHead=blk;
    return 0;
    800024e0:	00000513          	li	a0,0
}
    800024e4:	00813403          	ld	s0,8(sp)
    800024e8:	01010113          	addi	sp,sp,16
    800024ec:	00008067          	ret
        blk->size+=sizeof(FreeBlock)+nextBlock->size;
    800024f0:	00063703          	ld	a4,0(a2)
    800024f4:	00e787b3          	add	a5,a5,a4
    800024f8:	01878793          	addi	a5,a5,24
    800024fc:	fef53423          	sd	a5,-24(a0)
        blk->next=nextBlock->next;
    80002500:	01063783          	ld	a5,16(a2)
    80002504:	fef53c23          	sd	a5,-8(a0)
        if(nextBlock->next) nextBlock->next->prev=blk;
    80002508:	00078463          	beqz	a5,80002510 <_ZN15MemoryAllocator8mem_freeEPv+0x13c>
    8000250c:	00d7b423          	sd	a3,8(a5)
        blk->prev=nextBlock->prev;
    80002510:	00863783          	ld	a5,8(a2)
    80002514:	fef53823          	sd	a5,-16(a0)
        if(nextBlock->prev) nextBlock->prev->next=blk;
    80002518:	00078863          	beqz	a5,80002528 <_ZN15MemoryAllocator8mem_freeEPv+0x154>
    8000251c:	00d7b823          	sd	a3,16(a5)
        return 0;
    80002520:	00000513          	li	a0,0
    80002524:	fc1ff06f          	j	800024e4 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
        else freeMemHead=blk;
    80002528:	00004797          	auipc	a5,0x4
    8000252c:	8ad7b423          	sd	a3,-1880(a5) # 80005dd0 <_ZN15MemoryAllocator11freeMemHeadE>
    80002530:	ff1ff06f          	j	80002520 <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    blk->next=curr?curr->next:freeMemHead;
    80002534:	00004797          	auipc	a5,0x4
    80002538:	89c7b783          	ld	a5,-1892(a5) # 80005dd0 <_ZN15MemoryAllocator11freeMemHeadE>
    8000253c:	f91ff06f          	j	800024cc <_ZN15MemoryAllocator8mem_freeEPv+0xf8>
    else freeMemHead=blk;
    80002540:	00004797          	auipc	a5,0x4
    80002544:	88d7b823          	sd	a3,-1904(a5) # 80005dd0 <_ZN15MemoryAllocator11freeMemHeadE>
    return 0;
    80002548:	00000513          	li	a0,0
    8000254c:	f99ff06f          	j	800024e4 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    if(!addr) return -1;
    80002550:	fff00513          	li	a0,-1
    80002554:	f91ff06f          	j	800024e4 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    if((char*)addr-sizeof(FreeBlock)<(char*)HEAP_START_ADDR || addr>HEAP_END_ADDR) return -2;
    80002558:	ffe00513          	li	a0,-2
    8000255c:	f89ff06f          	j	800024e4 <_ZN15MemoryAllocator8mem_freeEPv+0x110>
    80002560:	ffe00513          	li	a0,-2
    80002564:	f81ff06f          	j	800024e4 <_ZN15MemoryAllocator8mem_freeEPv+0x110>

0000000080002568 <_Z11printStringPKc>:

#include "../h/print.hpp"
#include "../lib/console.h"
#include "../h/riscv.hpp"
void printString(char const *string)
{
    80002568:	fd010113          	addi	sp,sp,-48
    8000256c:	02113423          	sd	ra,40(sp)
    80002570:	02813023          	sd	s0,32(sp)
    80002574:	00913c23          	sd	s1,24(sp)
    80002578:	01213823          	sd	s2,16(sp)
    8000257c:	03010413          	addi	s0,sp,48
    80002580:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002584:	100027f3          	csrr	a5,sstatus
    80002588:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000258c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002590:	00200793          	li	a5,2
    80002594:	1007b073          	csrc	sstatus,a5
    //nije bas elegantno zabraniti prekide ovako, jer ako su dugi ispisi moramo cekati, ali eto
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0')
    80002598:	0004c503          	lbu	a0,0(s1)
    8000259c:	00050a63          	beqz	a0,800025b0 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800025a0:	00002097          	auipc	ra,0x2
    800025a4:	1bc080e7          	jalr	444(ra) # 8000475c <__putc>
        string++;
    800025a8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800025ac:	fedff06f          	j	80002598 <_Z11printStringPKc+0x30>
    }
    //moramo proveriti da li su ranije prekidi bili dozvoljeni, ako nisu ne zelimo sad da ih dozvolimo
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    800025b0:	0009091b          	sext.w	s2,s2
    800025b4:	00297913          	andi	s2,s2,2
    800025b8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800025bc:	10092073          	csrs	sstatus,s2
}
    800025c0:	02813083          	ld	ra,40(sp)
    800025c4:	02013403          	ld	s0,32(sp)
    800025c8:	01813483          	ld	s1,24(sp)
    800025cc:	01013903          	ld	s2,16(sp)
    800025d0:	03010113          	addi	sp,sp,48
    800025d4:	00008067          	ret

00000000800025d8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800025d8:	fc010113          	addi	sp,sp,-64
    800025dc:	02113c23          	sd	ra,56(sp)
    800025e0:	02813823          	sd	s0,48(sp)
    800025e4:	02913423          	sd	s1,40(sp)
    800025e8:	03213023          	sd	s2,32(sp)
    800025ec:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025f0:	100027f3          	csrr	a5,sstatus
    800025f4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800025f8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800025fc:	00200793          	li	a5,2
    80002600:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80002604:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80002608:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000260c:	00a00613          	li	a2,10
    80002610:	02c5773b          	remuw	a4,a0,a2
    80002614:	02071693          	slli	a3,a4,0x20
    80002618:	0206d693          	srli	a3,a3,0x20
    8000261c:	00003717          	auipc	a4,0x3
    80002620:	a7470713          	addi	a4,a4,-1420 # 80005090 <_ZZ12printIntegermE6digits>
    80002624:	00d70733          	add	a4,a4,a3
    80002628:	00074703          	lbu	a4,0(a4)
    8000262c:	fe040693          	addi	a3,s0,-32
    80002630:	009687b3          	add	a5,a3,s1
    80002634:	0014849b          	addiw	s1,s1,1
    80002638:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000263c:	0005071b          	sext.w	a4,a0
    80002640:	02c5553b          	divuw	a0,a0,a2
    80002644:	00900793          	li	a5,9
    80002648:	fce7e2e3          	bltu	a5,a4,8000260c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    8000264c:	fff4849b          	addiw	s1,s1,-1
    80002650:	0004ce63          	bltz	s1,8000266c <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    80002654:	fe040793          	addi	a5,s0,-32
    80002658:	009787b3          	add	a5,a5,s1
    8000265c:	ff07c503          	lbu	a0,-16(a5)
    80002660:	00002097          	auipc	ra,0x2
    80002664:	0fc080e7          	jalr	252(ra) # 8000475c <__putc>
    80002668:	fe5ff06f          	j	8000264c <_Z12printIntegerm+0x74>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0 );
    8000266c:	0009091b          	sext.w	s2,s2
    80002670:	00297913          	andi	s2,s2,2
    80002674:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002678:	10092073          	csrs	sstatus,s2
    8000267c:	03813083          	ld	ra,56(sp)
    80002680:	03013403          	ld	s0,48(sp)
    80002684:	02813483          	ld	s1,40(sp)
    80002688:	02013903          	ld	s2,32(sp)
    8000268c:	04010113          	addi	sp,sp,64
    80002690:	00008067          	ret

0000000080002694 <start>:
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00813423          	sd	s0,8(sp)
    8000269c:	01010413          	addi	s0,sp,16
    800026a0:	300027f3          	csrr	a5,mstatus
    800026a4:	ffffe737          	lui	a4,0xffffe
    800026a8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff77bf>
    800026ac:	00e7f7b3          	and	a5,a5,a4
    800026b0:	00001737          	lui	a4,0x1
    800026b4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800026b8:	00e7e7b3          	or	a5,a5,a4
    800026bc:	30079073          	csrw	mstatus,a5
    800026c0:	00000797          	auipc	a5,0x0
    800026c4:	16078793          	addi	a5,a5,352 # 80002820 <system_main>
    800026c8:	34179073          	csrw	mepc,a5
    800026cc:	00000793          	li	a5,0
    800026d0:	18079073          	csrw	satp,a5
    800026d4:	000107b7          	lui	a5,0x10
    800026d8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800026dc:	30279073          	csrw	medeleg,a5
    800026e0:	30379073          	csrw	mideleg,a5
    800026e4:	104027f3          	csrr	a5,sie
    800026e8:	2227e793          	ori	a5,a5,546
    800026ec:	10479073          	csrw	sie,a5
    800026f0:	fff00793          	li	a5,-1
    800026f4:	00a7d793          	srli	a5,a5,0xa
    800026f8:	3b079073          	csrw	pmpaddr0,a5
    800026fc:	00f00793          	li	a5,15
    80002700:	3a079073          	csrw	pmpcfg0,a5
    80002704:	f14027f3          	csrr	a5,mhartid
    80002708:	0200c737          	lui	a4,0x200c
    8000270c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002710:	0007869b          	sext.w	a3,a5
    80002714:	00269713          	slli	a4,a3,0x2
    80002718:	000f4637          	lui	a2,0xf4
    8000271c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002720:	00d70733          	add	a4,a4,a3
    80002724:	0037979b          	slliw	a5,a5,0x3
    80002728:	020046b7          	lui	a3,0x2004
    8000272c:	00d787b3          	add	a5,a5,a3
    80002730:	00c585b3          	add	a1,a1,a2
    80002734:	00371693          	slli	a3,a4,0x3
    80002738:	00003717          	auipc	a4,0x3
    8000273c:	6a870713          	addi	a4,a4,1704 # 80005de0 <timer_scratch>
    80002740:	00b7b023          	sd	a1,0(a5)
    80002744:	00d70733          	add	a4,a4,a3
    80002748:	00f73c23          	sd	a5,24(a4)
    8000274c:	02c73023          	sd	a2,32(a4)
    80002750:	34071073          	csrw	mscratch,a4
    80002754:	00000797          	auipc	a5,0x0
    80002758:	6ec78793          	addi	a5,a5,1772 # 80002e40 <timervec>
    8000275c:	30579073          	csrw	mtvec,a5
    80002760:	300027f3          	csrr	a5,mstatus
    80002764:	0087e793          	ori	a5,a5,8
    80002768:	30079073          	csrw	mstatus,a5
    8000276c:	304027f3          	csrr	a5,mie
    80002770:	0807e793          	ori	a5,a5,128
    80002774:	30479073          	csrw	mie,a5
    80002778:	f14027f3          	csrr	a5,mhartid
    8000277c:	0007879b          	sext.w	a5,a5
    80002780:	00078213          	mv	tp,a5
    80002784:	30200073          	mret
    80002788:	00813403          	ld	s0,8(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret

0000000080002794 <timerinit>:
    80002794:	ff010113          	addi	sp,sp,-16
    80002798:	00813423          	sd	s0,8(sp)
    8000279c:	01010413          	addi	s0,sp,16
    800027a0:	f14027f3          	csrr	a5,mhartid
    800027a4:	0200c737          	lui	a4,0x200c
    800027a8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800027ac:	0007869b          	sext.w	a3,a5
    800027b0:	00269713          	slli	a4,a3,0x2
    800027b4:	000f4637          	lui	a2,0xf4
    800027b8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800027bc:	00d70733          	add	a4,a4,a3
    800027c0:	0037979b          	slliw	a5,a5,0x3
    800027c4:	020046b7          	lui	a3,0x2004
    800027c8:	00d787b3          	add	a5,a5,a3
    800027cc:	00c585b3          	add	a1,a1,a2
    800027d0:	00371693          	slli	a3,a4,0x3
    800027d4:	00003717          	auipc	a4,0x3
    800027d8:	60c70713          	addi	a4,a4,1548 # 80005de0 <timer_scratch>
    800027dc:	00b7b023          	sd	a1,0(a5)
    800027e0:	00d70733          	add	a4,a4,a3
    800027e4:	00f73c23          	sd	a5,24(a4)
    800027e8:	02c73023          	sd	a2,32(a4)
    800027ec:	34071073          	csrw	mscratch,a4
    800027f0:	00000797          	auipc	a5,0x0
    800027f4:	65078793          	addi	a5,a5,1616 # 80002e40 <timervec>
    800027f8:	30579073          	csrw	mtvec,a5
    800027fc:	300027f3          	csrr	a5,mstatus
    80002800:	0087e793          	ori	a5,a5,8
    80002804:	30079073          	csrw	mstatus,a5
    80002808:	304027f3          	csrr	a5,mie
    8000280c:	0807e793          	ori	a5,a5,128
    80002810:	30479073          	csrw	mie,a5
    80002814:	00813403          	ld	s0,8(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret

0000000080002820 <system_main>:
    80002820:	fe010113          	addi	sp,sp,-32
    80002824:	00813823          	sd	s0,16(sp)
    80002828:	00913423          	sd	s1,8(sp)
    8000282c:	00113c23          	sd	ra,24(sp)
    80002830:	02010413          	addi	s0,sp,32
    80002834:	00000097          	auipc	ra,0x0
    80002838:	0c4080e7          	jalr	196(ra) # 800028f8 <cpuid>
    8000283c:	00003497          	auipc	s1,0x3
    80002840:	54448493          	addi	s1,s1,1348 # 80005d80 <started>
    80002844:	02050263          	beqz	a0,80002868 <system_main+0x48>
    80002848:	0004a783          	lw	a5,0(s1)
    8000284c:	0007879b          	sext.w	a5,a5
    80002850:	fe078ce3          	beqz	a5,80002848 <system_main+0x28>
    80002854:	0ff0000f          	fence
    80002858:	00003517          	auipc	a0,0x3
    8000285c:	87850513          	addi	a0,a0,-1928 # 800050d0 <_ZZ12printIntegermE6digits+0x40>
    80002860:	00001097          	auipc	ra,0x1
    80002864:	a7c080e7          	jalr	-1412(ra) # 800032dc <panic>
    80002868:	00001097          	auipc	ra,0x1
    8000286c:	9d0080e7          	jalr	-1584(ra) # 80003238 <consoleinit>
    80002870:	00001097          	auipc	ra,0x1
    80002874:	15c080e7          	jalr	348(ra) # 800039cc <printfinit>
    80002878:	00002517          	auipc	a0,0x2
    8000287c:	7c850513          	addi	a0,a0,1992 # 80005040 <CONSOLE_STATUS+0x30>
    80002880:	00001097          	auipc	ra,0x1
    80002884:	ab8080e7          	jalr	-1352(ra) # 80003338 <__printf>
    80002888:	00003517          	auipc	a0,0x3
    8000288c:	81850513          	addi	a0,a0,-2024 # 800050a0 <_ZZ12printIntegermE6digits+0x10>
    80002890:	00001097          	auipc	ra,0x1
    80002894:	aa8080e7          	jalr	-1368(ra) # 80003338 <__printf>
    80002898:	00002517          	auipc	a0,0x2
    8000289c:	7a850513          	addi	a0,a0,1960 # 80005040 <CONSOLE_STATUS+0x30>
    800028a0:	00001097          	auipc	ra,0x1
    800028a4:	a98080e7          	jalr	-1384(ra) # 80003338 <__printf>
    800028a8:	00001097          	auipc	ra,0x1
    800028ac:	4b0080e7          	jalr	1200(ra) # 80003d58 <kinit>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	148080e7          	jalr	328(ra) # 800029f8 <trapinit>
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	16c080e7          	jalr	364(ra) # 80002a24 <trapinithart>
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	5c0080e7          	jalr	1472(ra) # 80002e80 <plicinit>
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	5e0080e7          	jalr	1504(ra) # 80002ea8 <plicinithart>
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	078080e7          	jalr	120(ra) # 80002948 <userinit>
    800028d8:	0ff0000f          	fence
    800028dc:	00100793          	li	a5,1
    800028e0:	00002517          	auipc	a0,0x2
    800028e4:	7d850513          	addi	a0,a0,2008 # 800050b8 <_ZZ12printIntegermE6digits+0x28>
    800028e8:	00f4a023          	sw	a5,0(s1)
    800028ec:	00001097          	auipc	ra,0x1
    800028f0:	a4c080e7          	jalr	-1460(ra) # 80003338 <__printf>
    800028f4:	0000006f          	j	800028f4 <system_main+0xd4>

00000000800028f8 <cpuid>:
    800028f8:	ff010113          	addi	sp,sp,-16
    800028fc:	00813423          	sd	s0,8(sp)
    80002900:	01010413          	addi	s0,sp,16
    80002904:	00020513          	mv	a0,tp
    80002908:	00813403          	ld	s0,8(sp)
    8000290c:	0005051b          	sext.w	a0,a0
    80002910:	01010113          	addi	sp,sp,16
    80002914:	00008067          	ret

0000000080002918 <mycpu>:
    80002918:	ff010113          	addi	sp,sp,-16
    8000291c:	00813423          	sd	s0,8(sp)
    80002920:	01010413          	addi	s0,sp,16
    80002924:	00020793          	mv	a5,tp
    80002928:	00813403          	ld	s0,8(sp)
    8000292c:	0007879b          	sext.w	a5,a5
    80002930:	00779793          	slli	a5,a5,0x7
    80002934:	00004517          	auipc	a0,0x4
    80002938:	4dc50513          	addi	a0,a0,1244 # 80006e10 <cpus>
    8000293c:	00f50533          	add	a0,a0,a5
    80002940:	01010113          	addi	sp,sp,16
    80002944:	00008067          	ret

0000000080002948 <userinit>:
    80002948:	ff010113          	addi	sp,sp,-16
    8000294c:	00813423          	sd	s0,8(sp)
    80002950:	01010413          	addi	s0,sp,16
    80002954:	00813403          	ld	s0,8(sp)
    80002958:	01010113          	addi	sp,sp,16
    8000295c:	fffff317          	auipc	t1,0xfffff
    80002960:	fe030067          	jr	-32(t1) # 8000193c <main>

0000000080002964 <either_copyout>:
    80002964:	ff010113          	addi	sp,sp,-16
    80002968:	00813023          	sd	s0,0(sp)
    8000296c:	00113423          	sd	ra,8(sp)
    80002970:	01010413          	addi	s0,sp,16
    80002974:	02051663          	bnez	a0,800029a0 <either_copyout+0x3c>
    80002978:	00058513          	mv	a0,a1
    8000297c:	00060593          	mv	a1,a2
    80002980:	0006861b          	sext.w	a2,a3
    80002984:	00002097          	auipc	ra,0x2
    80002988:	c60080e7          	jalr	-928(ra) # 800045e4 <__memmove>
    8000298c:	00813083          	ld	ra,8(sp)
    80002990:	00013403          	ld	s0,0(sp)
    80002994:	00000513          	li	a0,0
    80002998:	01010113          	addi	sp,sp,16
    8000299c:	00008067          	ret
    800029a0:	00002517          	auipc	a0,0x2
    800029a4:	75850513          	addi	a0,a0,1880 # 800050f8 <_ZZ12printIntegermE6digits+0x68>
    800029a8:	00001097          	auipc	ra,0x1
    800029ac:	934080e7          	jalr	-1740(ra) # 800032dc <panic>

00000000800029b0 <either_copyin>:
    800029b0:	ff010113          	addi	sp,sp,-16
    800029b4:	00813023          	sd	s0,0(sp)
    800029b8:	00113423          	sd	ra,8(sp)
    800029bc:	01010413          	addi	s0,sp,16
    800029c0:	02059463          	bnez	a1,800029e8 <either_copyin+0x38>
    800029c4:	00060593          	mv	a1,a2
    800029c8:	0006861b          	sext.w	a2,a3
    800029cc:	00002097          	auipc	ra,0x2
    800029d0:	c18080e7          	jalr	-1000(ra) # 800045e4 <__memmove>
    800029d4:	00813083          	ld	ra,8(sp)
    800029d8:	00013403          	ld	s0,0(sp)
    800029dc:	00000513          	li	a0,0
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret
    800029e8:	00002517          	auipc	a0,0x2
    800029ec:	73850513          	addi	a0,a0,1848 # 80005120 <_ZZ12printIntegermE6digits+0x90>
    800029f0:	00001097          	auipc	ra,0x1
    800029f4:	8ec080e7          	jalr	-1812(ra) # 800032dc <panic>

00000000800029f8 <trapinit>:
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00813423          	sd	s0,8(sp)
    80002a00:	01010413          	addi	s0,sp,16
    80002a04:	00813403          	ld	s0,8(sp)
    80002a08:	00002597          	auipc	a1,0x2
    80002a0c:	74058593          	addi	a1,a1,1856 # 80005148 <_ZZ12printIntegermE6digits+0xb8>
    80002a10:	00004517          	auipc	a0,0x4
    80002a14:	48050513          	addi	a0,a0,1152 # 80006e90 <tickslock>
    80002a18:	01010113          	addi	sp,sp,16
    80002a1c:	00001317          	auipc	t1,0x1
    80002a20:	5cc30067          	jr	1484(t1) # 80003fe8 <initlock>

0000000080002a24 <trapinithart>:
    80002a24:	ff010113          	addi	sp,sp,-16
    80002a28:	00813423          	sd	s0,8(sp)
    80002a2c:	01010413          	addi	s0,sp,16
    80002a30:	00000797          	auipc	a5,0x0
    80002a34:	30078793          	addi	a5,a5,768 # 80002d30 <kernelvec>
    80002a38:	10579073          	csrw	stvec,a5
    80002a3c:	00813403          	ld	s0,8(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret

0000000080002a48 <usertrap>:
    80002a48:	ff010113          	addi	sp,sp,-16
    80002a4c:	00813423          	sd	s0,8(sp)
    80002a50:	01010413          	addi	s0,sp,16
    80002a54:	00813403          	ld	s0,8(sp)
    80002a58:	01010113          	addi	sp,sp,16
    80002a5c:	00008067          	ret

0000000080002a60 <usertrapret>:
    80002a60:	ff010113          	addi	sp,sp,-16
    80002a64:	00813423          	sd	s0,8(sp)
    80002a68:	01010413          	addi	s0,sp,16
    80002a6c:	00813403          	ld	s0,8(sp)
    80002a70:	01010113          	addi	sp,sp,16
    80002a74:	00008067          	ret

0000000080002a78 <kerneltrap>:
    80002a78:	fe010113          	addi	sp,sp,-32
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00113c23          	sd	ra,24(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	02010413          	addi	s0,sp,32
    80002a8c:	142025f3          	csrr	a1,scause
    80002a90:	100027f3          	csrr	a5,sstatus
    80002a94:	0027f793          	andi	a5,a5,2
    80002a98:	10079c63          	bnez	a5,80002bb0 <kerneltrap+0x138>
    80002a9c:	142027f3          	csrr	a5,scause
    80002aa0:	0207ce63          	bltz	a5,80002adc <kerneltrap+0x64>
    80002aa4:	00002517          	auipc	a0,0x2
    80002aa8:	6ec50513          	addi	a0,a0,1772 # 80005190 <_ZZ12printIntegermE6digits+0x100>
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	88c080e7          	jalr	-1908(ra) # 80003338 <__printf>
    80002ab4:	141025f3          	csrr	a1,sepc
    80002ab8:	14302673          	csrr	a2,stval
    80002abc:	00002517          	auipc	a0,0x2
    80002ac0:	6e450513          	addi	a0,a0,1764 # 800051a0 <_ZZ12printIntegermE6digits+0x110>
    80002ac4:	00001097          	auipc	ra,0x1
    80002ac8:	874080e7          	jalr	-1932(ra) # 80003338 <__printf>
    80002acc:	00002517          	auipc	a0,0x2
    80002ad0:	6ec50513          	addi	a0,a0,1772 # 800051b8 <_ZZ12printIntegermE6digits+0x128>
    80002ad4:	00001097          	auipc	ra,0x1
    80002ad8:	808080e7          	jalr	-2040(ra) # 800032dc <panic>
    80002adc:	0ff7f713          	andi	a4,a5,255
    80002ae0:	00900693          	li	a3,9
    80002ae4:	04d70063          	beq	a4,a3,80002b24 <kerneltrap+0xac>
    80002ae8:	fff00713          	li	a4,-1
    80002aec:	03f71713          	slli	a4,a4,0x3f
    80002af0:	00170713          	addi	a4,a4,1
    80002af4:	fae798e3          	bne	a5,a4,80002aa4 <kerneltrap+0x2c>
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	e00080e7          	jalr	-512(ra) # 800028f8 <cpuid>
    80002b00:	06050663          	beqz	a0,80002b6c <kerneltrap+0xf4>
    80002b04:	144027f3          	csrr	a5,sip
    80002b08:	ffd7f793          	andi	a5,a5,-3
    80002b0c:	14479073          	csrw	sip,a5
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00813483          	ld	s1,8(sp)
    80002b1c:	02010113          	addi	sp,sp,32
    80002b20:	00008067          	ret
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	3d0080e7          	jalr	976(ra) # 80002ef4 <plic_claim>
    80002b2c:	00a00793          	li	a5,10
    80002b30:	00050493          	mv	s1,a0
    80002b34:	06f50863          	beq	a0,a5,80002ba4 <kerneltrap+0x12c>
    80002b38:	fc050ce3          	beqz	a0,80002b10 <kerneltrap+0x98>
    80002b3c:	00050593          	mv	a1,a0
    80002b40:	00002517          	auipc	a0,0x2
    80002b44:	63050513          	addi	a0,a0,1584 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	7f0080e7          	jalr	2032(ra) # 80003338 <__printf>
    80002b50:	01013403          	ld	s0,16(sp)
    80002b54:	01813083          	ld	ra,24(sp)
    80002b58:	00048513          	mv	a0,s1
    80002b5c:	00813483          	ld	s1,8(sp)
    80002b60:	02010113          	addi	sp,sp,32
    80002b64:	00000317          	auipc	t1,0x0
    80002b68:	3c830067          	jr	968(t1) # 80002f2c <plic_complete>
    80002b6c:	00004517          	auipc	a0,0x4
    80002b70:	32450513          	addi	a0,a0,804 # 80006e90 <tickslock>
    80002b74:	00001097          	auipc	ra,0x1
    80002b78:	498080e7          	jalr	1176(ra) # 8000400c <acquire>
    80002b7c:	00003717          	auipc	a4,0x3
    80002b80:	20870713          	addi	a4,a4,520 # 80005d84 <ticks>
    80002b84:	00072783          	lw	a5,0(a4)
    80002b88:	00004517          	auipc	a0,0x4
    80002b8c:	30850513          	addi	a0,a0,776 # 80006e90 <tickslock>
    80002b90:	0017879b          	addiw	a5,a5,1
    80002b94:	00f72023          	sw	a5,0(a4)
    80002b98:	00001097          	auipc	ra,0x1
    80002b9c:	540080e7          	jalr	1344(ra) # 800040d8 <release>
    80002ba0:	f65ff06f          	j	80002b04 <kerneltrap+0x8c>
    80002ba4:	00001097          	auipc	ra,0x1
    80002ba8:	09c080e7          	jalr	156(ra) # 80003c40 <uartintr>
    80002bac:	fa5ff06f          	j	80002b50 <kerneltrap+0xd8>
    80002bb0:	00002517          	auipc	a0,0x2
    80002bb4:	5a050513          	addi	a0,a0,1440 # 80005150 <_ZZ12printIntegermE6digits+0xc0>
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	724080e7          	jalr	1828(ra) # 800032dc <panic>

0000000080002bc0 <clockintr>:
    80002bc0:	fe010113          	addi	sp,sp,-32
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	00113c23          	sd	ra,24(sp)
    80002bd0:	02010413          	addi	s0,sp,32
    80002bd4:	00004497          	auipc	s1,0x4
    80002bd8:	2bc48493          	addi	s1,s1,700 # 80006e90 <tickslock>
    80002bdc:	00048513          	mv	a0,s1
    80002be0:	00001097          	auipc	ra,0x1
    80002be4:	42c080e7          	jalr	1068(ra) # 8000400c <acquire>
    80002be8:	00003717          	auipc	a4,0x3
    80002bec:	19c70713          	addi	a4,a4,412 # 80005d84 <ticks>
    80002bf0:	00072783          	lw	a5,0(a4)
    80002bf4:	01013403          	ld	s0,16(sp)
    80002bf8:	01813083          	ld	ra,24(sp)
    80002bfc:	00048513          	mv	a0,s1
    80002c00:	0017879b          	addiw	a5,a5,1
    80002c04:	00813483          	ld	s1,8(sp)
    80002c08:	00f72023          	sw	a5,0(a4)
    80002c0c:	02010113          	addi	sp,sp,32
    80002c10:	00001317          	auipc	t1,0x1
    80002c14:	4c830067          	jr	1224(t1) # 800040d8 <release>

0000000080002c18 <devintr>:
    80002c18:	142027f3          	csrr	a5,scause
    80002c1c:	00000513          	li	a0,0
    80002c20:	0007c463          	bltz	a5,80002c28 <devintr+0x10>
    80002c24:	00008067          	ret
    80002c28:	fe010113          	addi	sp,sp,-32
    80002c2c:	00813823          	sd	s0,16(sp)
    80002c30:	00113c23          	sd	ra,24(sp)
    80002c34:	00913423          	sd	s1,8(sp)
    80002c38:	02010413          	addi	s0,sp,32
    80002c3c:	0ff7f713          	andi	a4,a5,255
    80002c40:	00900693          	li	a3,9
    80002c44:	04d70c63          	beq	a4,a3,80002c9c <devintr+0x84>
    80002c48:	fff00713          	li	a4,-1
    80002c4c:	03f71713          	slli	a4,a4,0x3f
    80002c50:	00170713          	addi	a4,a4,1
    80002c54:	00e78c63          	beq	a5,a4,80002c6c <devintr+0x54>
    80002c58:	01813083          	ld	ra,24(sp)
    80002c5c:	01013403          	ld	s0,16(sp)
    80002c60:	00813483          	ld	s1,8(sp)
    80002c64:	02010113          	addi	sp,sp,32
    80002c68:	00008067          	ret
    80002c6c:	00000097          	auipc	ra,0x0
    80002c70:	c8c080e7          	jalr	-884(ra) # 800028f8 <cpuid>
    80002c74:	06050663          	beqz	a0,80002ce0 <devintr+0xc8>
    80002c78:	144027f3          	csrr	a5,sip
    80002c7c:	ffd7f793          	andi	a5,a5,-3
    80002c80:	14479073          	csrw	sip,a5
    80002c84:	01813083          	ld	ra,24(sp)
    80002c88:	01013403          	ld	s0,16(sp)
    80002c8c:	00813483          	ld	s1,8(sp)
    80002c90:	00200513          	li	a0,2
    80002c94:	02010113          	addi	sp,sp,32
    80002c98:	00008067          	ret
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	258080e7          	jalr	600(ra) # 80002ef4 <plic_claim>
    80002ca4:	00a00793          	li	a5,10
    80002ca8:	00050493          	mv	s1,a0
    80002cac:	06f50663          	beq	a0,a5,80002d18 <devintr+0x100>
    80002cb0:	00100513          	li	a0,1
    80002cb4:	fa0482e3          	beqz	s1,80002c58 <devintr+0x40>
    80002cb8:	00048593          	mv	a1,s1
    80002cbc:	00002517          	auipc	a0,0x2
    80002cc0:	4b450513          	addi	a0,a0,1204 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	674080e7          	jalr	1652(ra) # 80003338 <__printf>
    80002ccc:	00048513          	mv	a0,s1
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	25c080e7          	jalr	604(ra) # 80002f2c <plic_complete>
    80002cd8:	00100513          	li	a0,1
    80002cdc:	f7dff06f          	j	80002c58 <devintr+0x40>
    80002ce0:	00004517          	auipc	a0,0x4
    80002ce4:	1b050513          	addi	a0,a0,432 # 80006e90 <tickslock>
    80002ce8:	00001097          	auipc	ra,0x1
    80002cec:	324080e7          	jalr	804(ra) # 8000400c <acquire>
    80002cf0:	00003717          	auipc	a4,0x3
    80002cf4:	09470713          	addi	a4,a4,148 # 80005d84 <ticks>
    80002cf8:	00072783          	lw	a5,0(a4)
    80002cfc:	00004517          	auipc	a0,0x4
    80002d00:	19450513          	addi	a0,a0,404 # 80006e90 <tickslock>
    80002d04:	0017879b          	addiw	a5,a5,1
    80002d08:	00f72023          	sw	a5,0(a4)
    80002d0c:	00001097          	auipc	ra,0x1
    80002d10:	3cc080e7          	jalr	972(ra) # 800040d8 <release>
    80002d14:	f65ff06f          	j	80002c78 <devintr+0x60>
    80002d18:	00001097          	auipc	ra,0x1
    80002d1c:	f28080e7          	jalr	-216(ra) # 80003c40 <uartintr>
    80002d20:	fadff06f          	j	80002ccc <devintr+0xb4>
	...

0000000080002d30 <kernelvec>:
    80002d30:	f0010113          	addi	sp,sp,-256
    80002d34:	00113023          	sd	ra,0(sp)
    80002d38:	00213423          	sd	sp,8(sp)
    80002d3c:	00313823          	sd	gp,16(sp)
    80002d40:	00413c23          	sd	tp,24(sp)
    80002d44:	02513023          	sd	t0,32(sp)
    80002d48:	02613423          	sd	t1,40(sp)
    80002d4c:	02713823          	sd	t2,48(sp)
    80002d50:	02813c23          	sd	s0,56(sp)
    80002d54:	04913023          	sd	s1,64(sp)
    80002d58:	04a13423          	sd	a0,72(sp)
    80002d5c:	04b13823          	sd	a1,80(sp)
    80002d60:	04c13c23          	sd	a2,88(sp)
    80002d64:	06d13023          	sd	a3,96(sp)
    80002d68:	06e13423          	sd	a4,104(sp)
    80002d6c:	06f13823          	sd	a5,112(sp)
    80002d70:	07013c23          	sd	a6,120(sp)
    80002d74:	09113023          	sd	a7,128(sp)
    80002d78:	09213423          	sd	s2,136(sp)
    80002d7c:	09313823          	sd	s3,144(sp)
    80002d80:	09413c23          	sd	s4,152(sp)
    80002d84:	0b513023          	sd	s5,160(sp)
    80002d88:	0b613423          	sd	s6,168(sp)
    80002d8c:	0b713823          	sd	s7,176(sp)
    80002d90:	0b813c23          	sd	s8,184(sp)
    80002d94:	0d913023          	sd	s9,192(sp)
    80002d98:	0da13423          	sd	s10,200(sp)
    80002d9c:	0db13823          	sd	s11,208(sp)
    80002da0:	0dc13c23          	sd	t3,216(sp)
    80002da4:	0fd13023          	sd	t4,224(sp)
    80002da8:	0fe13423          	sd	t5,232(sp)
    80002dac:	0ff13823          	sd	t6,240(sp)
    80002db0:	cc9ff0ef          	jal	ra,80002a78 <kerneltrap>
    80002db4:	00013083          	ld	ra,0(sp)
    80002db8:	00813103          	ld	sp,8(sp)
    80002dbc:	01013183          	ld	gp,16(sp)
    80002dc0:	02013283          	ld	t0,32(sp)
    80002dc4:	02813303          	ld	t1,40(sp)
    80002dc8:	03013383          	ld	t2,48(sp)
    80002dcc:	03813403          	ld	s0,56(sp)
    80002dd0:	04013483          	ld	s1,64(sp)
    80002dd4:	04813503          	ld	a0,72(sp)
    80002dd8:	05013583          	ld	a1,80(sp)
    80002ddc:	05813603          	ld	a2,88(sp)
    80002de0:	06013683          	ld	a3,96(sp)
    80002de4:	06813703          	ld	a4,104(sp)
    80002de8:	07013783          	ld	a5,112(sp)
    80002dec:	07813803          	ld	a6,120(sp)
    80002df0:	08013883          	ld	a7,128(sp)
    80002df4:	08813903          	ld	s2,136(sp)
    80002df8:	09013983          	ld	s3,144(sp)
    80002dfc:	09813a03          	ld	s4,152(sp)
    80002e00:	0a013a83          	ld	s5,160(sp)
    80002e04:	0a813b03          	ld	s6,168(sp)
    80002e08:	0b013b83          	ld	s7,176(sp)
    80002e0c:	0b813c03          	ld	s8,184(sp)
    80002e10:	0c013c83          	ld	s9,192(sp)
    80002e14:	0c813d03          	ld	s10,200(sp)
    80002e18:	0d013d83          	ld	s11,208(sp)
    80002e1c:	0d813e03          	ld	t3,216(sp)
    80002e20:	0e013e83          	ld	t4,224(sp)
    80002e24:	0e813f03          	ld	t5,232(sp)
    80002e28:	0f013f83          	ld	t6,240(sp)
    80002e2c:	10010113          	addi	sp,sp,256
    80002e30:	10200073          	sret
    80002e34:	00000013          	nop
    80002e38:	00000013          	nop
    80002e3c:	00000013          	nop

0000000080002e40 <timervec>:
    80002e40:	34051573          	csrrw	a0,mscratch,a0
    80002e44:	00b53023          	sd	a1,0(a0)
    80002e48:	00c53423          	sd	a2,8(a0)
    80002e4c:	00d53823          	sd	a3,16(a0)
    80002e50:	01853583          	ld	a1,24(a0)
    80002e54:	02053603          	ld	a2,32(a0)
    80002e58:	0005b683          	ld	a3,0(a1)
    80002e5c:	00c686b3          	add	a3,a3,a2
    80002e60:	00d5b023          	sd	a3,0(a1)
    80002e64:	00200593          	li	a1,2
    80002e68:	14459073          	csrw	sip,a1
    80002e6c:	01053683          	ld	a3,16(a0)
    80002e70:	00853603          	ld	a2,8(a0)
    80002e74:	00053583          	ld	a1,0(a0)
    80002e78:	34051573          	csrrw	a0,mscratch,a0
    80002e7c:	30200073          	mret

0000000080002e80 <plicinit>:
    80002e80:	ff010113          	addi	sp,sp,-16
    80002e84:	00813423          	sd	s0,8(sp)
    80002e88:	01010413          	addi	s0,sp,16
    80002e8c:	00813403          	ld	s0,8(sp)
    80002e90:	0c0007b7          	lui	a5,0xc000
    80002e94:	00100713          	li	a4,1
    80002e98:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002e9c:	00e7a223          	sw	a4,4(a5)
    80002ea0:	01010113          	addi	sp,sp,16
    80002ea4:	00008067          	ret

0000000080002ea8 <plicinithart>:
    80002ea8:	ff010113          	addi	sp,sp,-16
    80002eac:	00813023          	sd	s0,0(sp)
    80002eb0:	00113423          	sd	ra,8(sp)
    80002eb4:	01010413          	addi	s0,sp,16
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	a40080e7          	jalr	-1472(ra) # 800028f8 <cpuid>
    80002ec0:	0085171b          	slliw	a4,a0,0x8
    80002ec4:	0c0027b7          	lui	a5,0xc002
    80002ec8:	00e787b3          	add	a5,a5,a4
    80002ecc:	40200713          	li	a4,1026
    80002ed0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002ed4:	00813083          	ld	ra,8(sp)
    80002ed8:	00013403          	ld	s0,0(sp)
    80002edc:	00d5151b          	slliw	a0,a0,0xd
    80002ee0:	0c2017b7          	lui	a5,0xc201
    80002ee4:	00a78533          	add	a0,a5,a0
    80002ee8:	00052023          	sw	zero,0(a0)
    80002eec:	01010113          	addi	sp,sp,16
    80002ef0:	00008067          	ret

0000000080002ef4 <plic_claim>:
    80002ef4:	ff010113          	addi	sp,sp,-16
    80002ef8:	00813023          	sd	s0,0(sp)
    80002efc:	00113423          	sd	ra,8(sp)
    80002f00:	01010413          	addi	s0,sp,16
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	9f4080e7          	jalr	-1548(ra) # 800028f8 <cpuid>
    80002f0c:	00813083          	ld	ra,8(sp)
    80002f10:	00013403          	ld	s0,0(sp)
    80002f14:	00d5151b          	slliw	a0,a0,0xd
    80002f18:	0c2017b7          	lui	a5,0xc201
    80002f1c:	00a78533          	add	a0,a5,a0
    80002f20:	00452503          	lw	a0,4(a0)
    80002f24:	01010113          	addi	sp,sp,16
    80002f28:	00008067          	ret

0000000080002f2c <plic_complete>:
    80002f2c:	fe010113          	addi	sp,sp,-32
    80002f30:	00813823          	sd	s0,16(sp)
    80002f34:	00913423          	sd	s1,8(sp)
    80002f38:	00113c23          	sd	ra,24(sp)
    80002f3c:	02010413          	addi	s0,sp,32
    80002f40:	00050493          	mv	s1,a0
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	9b4080e7          	jalr	-1612(ra) # 800028f8 <cpuid>
    80002f4c:	01813083          	ld	ra,24(sp)
    80002f50:	01013403          	ld	s0,16(sp)
    80002f54:	00d5179b          	slliw	a5,a0,0xd
    80002f58:	0c201737          	lui	a4,0xc201
    80002f5c:	00f707b3          	add	a5,a4,a5
    80002f60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002f64:	00813483          	ld	s1,8(sp)
    80002f68:	02010113          	addi	sp,sp,32
    80002f6c:	00008067          	ret

0000000080002f70 <consolewrite>:
    80002f70:	fb010113          	addi	sp,sp,-80
    80002f74:	04813023          	sd	s0,64(sp)
    80002f78:	04113423          	sd	ra,72(sp)
    80002f7c:	02913c23          	sd	s1,56(sp)
    80002f80:	03213823          	sd	s2,48(sp)
    80002f84:	03313423          	sd	s3,40(sp)
    80002f88:	03413023          	sd	s4,32(sp)
    80002f8c:	01513c23          	sd	s5,24(sp)
    80002f90:	05010413          	addi	s0,sp,80
    80002f94:	06c05c63          	blez	a2,8000300c <consolewrite+0x9c>
    80002f98:	00060993          	mv	s3,a2
    80002f9c:	00050a13          	mv	s4,a0
    80002fa0:	00058493          	mv	s1,a1
    80002fa4:	00000913          	li	s2,0
    80002fa8:	fff00a93          	li	s5,-1
    80002fac:	01c0006f          	j	80002fc8 <consolewrite+0x58>
    80002fb0:	fbf44503          	lbu	a0,-65(s0)
    80002fb4:	0019091b          	addiw	s2,s2,1
    80002fb8:	00148493          	addi	s1,s1,1
    80002fbc:	00001097          	auipc	ra,0x1
    80002fc0:	a9c080e7          	jalr	-1380(ra) # 80003a58 <uartputc>
    80002fc4:	03298063          	beq	s3,s2,80002fe4 <consolewrite+0x74>
    80002fc8:	00048613          	mv	a2,s1
    80002fcc:	00100693          	li	a3,1
    80002fd0:	000a0593          	mv	a1,s4
    80002fd4:	fbf40513          	addi	a0,s0,-65
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	9d8080e7          	jalr	-1576(ra) # 800029b0 <either_copyin>
    80002fe0:	fd5518e3          	bne	a0,s5,80002fb0 <consolewrite+0x40>
    80002fe4:	04813083          	ld	ra,72(sp)
    80002fe8:	04013403          	ld	s0,64(sp)
    80002fec:	03813483          	ld	s1,56(sp)
    80002ff0:	02813983          	ld	s3,40(sp)
    80002ff4:	02013a03          	ld	s4,32(sp)
    80002ff8:	01813a83          	ld	s5,24(sp)
    80002ffc:	00090513          	mv	a0,s2
    80003000:	03013903          	ld	s2,48(sp)
    80003004:	05010113          	addi	sp,sp,80
    80003008:	00008067          	ret
    8000300c:	00000913          	li	s2,0
    80003010:	fd5ff06f          	j	80002fe4 <consolewrite+0x74>

0000000080003014 <consoleread>:
    80003014:	f9010113          	addi	sp,sp,-112
    80003018:	06813023          	sd	s0,96(sp)
    8000301c:	04913c23          	sd	s1,88(sp)
    80003020:	05213823          	sd	s2,80(sp)
    80003024:	05313423          	sd	s3,72(sp)
    80003028:	05413023          	sd	s4,64(sp)
    8000302c:	03513c23          	sd	s5,56(sp)
    80003030:	03613823          	sd	s6,48(sp)
    80003034:	03713423          	sd	s7,40(sp)
    80003038:	03813023          	sd	s8,32(sp)
    8000303c:	06113423          	sd	ra,104(sp)
    80003040:	01913c23          	sd	s9,24(sp)
    80003044:	07010413          	addi	s0,sp,112
    80003048:	00060b93          	mv	s7,a2
    8000304c:	00050913          	mv	s2,a0
    80003050:	00058c13          	mv	s8,a1
    80003054:	00060b1b          	sext.w	s6,a2
    80003058:	00004497          	auipc	s1,0x4
    8000305c:	e6048493          	addi	s1,s1,-416 # 80006eb8 <cons>
    80003060:	00400993          	li	s3,4
    80003064:	fff00a13          	li	s4,-1
    80003068:	00a00a93          	li	s5,10
    8000306c:	05705e63          	blez	s7,800030c8 <consoleread+0xb4>
    80003070:	09c4a703          	lw	a4,156(s1)
    80003074:	0984a783          	lw	a5,152(s1)
    80003078:	0007071b          	sext.w	a4,a4
    8000307c:	08e78463          	beq	a5,a4,80003104 <consoleread+0xf0>
    80003080:	07f7f713          	andi	a4,a5,127
    80003084:	00e48733          	add	a4,s1,a4
    80003088:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000308c:	0017869b          	addiw	a3,a5,1
    80003090:	08d4ac23          	sw	a3,152(s1)
    80003094:	00070c9b          	sext.w	s9,a4
    80003098:	0b370663          	beq	a4,s3,80003144 <consoleread+0x130>
    8000309c:	00100693          	li	a3,1
    800030a0:	f9f40613          	addi	a2,s0,-97
    800030a4:	000c0593          	mv	a1,s8
    800030a8:	00090513          	mv	a0,s2
    800030ac:	f8e40fa3          	sb	a4,-97(s0)
    800030b0:	00000097          	auipc	ra,0x0
    800030b4:	8b4080e7          	jalr	-1868(ra) # 80002964 <either_copyout>
    800030b8:	01450863          	beq	a0,s4,800030c8 <consoleread+0xb4>
    800030bc:	001c0c13          	addi	s8,s8,1
    800030c0:	fffb8b9b          	addiw	s7,s7,-1
    800030c4:	fb5c94e3          	bne	s9,s5,8000306c <consoleread+0x58>
    800030c8:	000b851b          	sext.w	a0,s7
    800030cc:	06813083          	ld	ra,104(sp)
    800030d0:	06013403          	ld	s0,96(sp)
    800030d4:	05813483          	ld	s1,88(sp)
    800030d8:	05013903          	ld	s2,80(sp)
    800030dc:	04813983          	ld	s3,72(sp)
    800030e0:	04013a03          	ld	s4,64(sp)
    800030e4:	03813a83          	ld	s5,56(sp)
    800030e8:	02813b83          	ld	s7,40(sp)
    800030ec:	02013c03          	ld	s8,32(sp)
    800030f0:	01813c83          	ld	s9,24(sp)
    800030f4:	40ab053b          	subw	a0,s6,a0
    800030f8:	03013b03          	ld	s6,48(sp)
    800030fc:	07010113          	addi	sp,sp,112
    80003100:	00008067          	ret
    80003104:	00001097          	auipc	ra,0x1
    80003108:	1d8080e7          	jalr	472(ra) # 800042dc <push_on>
    8000310c:	0984a703          	lw	a4,152(s1)
    80003110:	09c4a783          	lw	a5,156(s1)
    80003114:	0007879b          	sext.w	a5,a5
    80003118:	fef70ce3          	beq	a4,a5,80003110 <consoleread+0xfc>
    8000311c:	00001097          	auipc	ra,0x1
    80003120:	234080e7          	jalr	564(ra) # 80004350 <pop_on>
    80003124:	0984a783          	lw	a5,152(s1)
    80003128:	07f7f713          	andi	a4,a5,127
    8000312c:	00e48733          	add	a4,s1,a4
    80003130:	01874703          	lbu	a4,24(a4)
    80003134:	0017869b          	addiw	a3,a5,1
    80003138:	08d4ac23          	sw	a3,152(s1)
    8000313c:	00070c9b          	sext.w	s9,a4
    80003140:	f5371ee3          	bne	a4,s3,8000309c <consoleread+0x88>
    80003144:	000b851b          	sext.w	a0,s7
    80003148:	f96bf2e3          	bgeu	s7,s6,800030cc <consoleread+0xb8>
    8000314c:	08f4ac23          	sw	a5,152(s1)
    80003150:	f7dff06f          	j	800030cc <consoleread+0xb8>

0000000080003154 <consputc>:
    80003154:	10000793          	li	a5,256
    80003158:	00f50663          	beq	a0,a5,80003164 <consputc+0x10>
    8000315c:	00001317          	auipc	t1,0x1
    80003160:	9f430067          	jr	-1548(t1) # 80003b50 <uartputc_sync>
    80003164:	ff010113          	addi	sp,sp,-16
    80003168:	00113423          	sd	ra,8(sp)
    8000316c:	00813023          	sd	s0,0(sp)
    80003170:	01010413          	addi	s0,sp,16
    80003174:	00800513          	li	a0,8
    80003178:	00001097          	auipc	ra,0x1
    8000317c:	9d8080e7          	jalr	-1576(ra) # 80003b50 <uartputc_sync>
    80003180:	02000513          	li	a0,32
    80003184:	00001097          	auipc	ra,0x1
    80003188:	9cc080e7          	jalr	-1588(ra) # 80003b50 <uartputc_sync>
    8000318c:	00013403          	ld	s0,0(sp)
    80003190:	00813083          	ld	ra,8(sp)
    80003194:	00800513          	li	a0,8
    80003198:	01010113          	addi	sp,sp,16
    8000319c:	00001317          	auipc	t1,0x1
    800031a0:	9b430067          	jr	-1612(t1) # 80003b50 <uartputc_sync>

00000000800031a4 <consoleintr>:
    800031a4:	fe010113          	addi	sp,sp,-32
    800031a8:	00813823          	sd	s0,16(sp)
    800031ac:	00913423          	sd	s1,8(sp)
    800031b0:	01213023          	sd	s2,0(sp)
    800031b4:	00113c23          	sd	ra,24(sp)
    800031b8:	02010413          	addi	s0,sp,32
    800031bc:	00004917          	auipc	s2,0x4
    800031c0:	cfc90913          	addi	s2,s2,-772 # 80006eb8 <cons>
    800031c4:	00050493          	mv	s1,a0
    800031c8:	00090513          	mv	a0,s2
    800031cc:	00001097          	auipc	ra,0x1
    800031d0:	e40080e7          	jalr	-448(ra) # 8000400c <acquire>
    800031d4:	02048c63          	beqz	s1,8000320c <consoleintr+0x68>
    800031d8:	0a092783          	lw	a5,160(s2)
    800031dc:	09892703          	lw	a4,152(s2)
    800031e0:	07f00693          	li	a3,127
    800031e4:	40e7873b          	subw	a4,a5,a4
    800031e8:	02e6e263          	bltu	a3,a4,8000320c <consoleintr+0x68>
    800031ec:	00d00713          	li	a4,13
    800031f0:	04e48063          	beq	s1,a4,80003230 <consoleintr+0x8c>
    800031f4:	07f7f713          	andi	a4,a5,127
    800031f8:	00e90733          	add	a4,s2,a4
    800031fc:	0017879b          	addiw	a5,a5,1
    80003200:	0af92023          	sw	a5,160(s2)
    80003204:	00970c23          	sb	s1,24(a4)
    80003208:	08f92e23          	sw	a5,156(s2)
    8000320c:	01013403          	ld	s0,16(sp)
    80003210:	01813083          	ld	ra,24(sp)
    80003214:	00813483          	ld	s1,8(sp)
    80003218:	00013903          	ld	s2,0(sp)
    8000321c:	00004517          	auipc	a0,0x4
    80003220:	c9c50513          	addi	a0,a0,-868 # 80006eb8 <cons>
    80003224:	02010113          	addi	sp,sp,32
    80003228:	00001317          	auipc	t1,0x1
    8000322c:	eb030067          	jr	-336(t1) # 800040d8 <release>
    80003230:	00a00493          	li	s1,10
    80003234:	fc1ff06f          	j	800031f4 <consoleintr+0x50>

0000000080003238 <consoleinit>:
    80003238:	fe010113          	addi	sp,sp,-32
    8000323c:	00113c23          	sd	ra,24(sp)
    80003240:	00813823          	sd	s0,16(sp)
    80003244:	00913423          	sd	s1,8(sp)
    80003248:	02010413          	addi	s0,sp,32
    8000324c:	00004497          	auipc	s1,0x4
    80003250:	c6c48493          	addi	s1,s1,-916 # 80006eb8 <cons>
    80003254:	00048513          	mv	a0,s1
    80003258:	00002597          	auipc	a1,0x2
    8000325c:	f7058593          	addi	a1,a1,-144 # 800051c8 <_ZZ12printIntegermE6digits+0x138>
    80003260:	00001097          	auipc	ra,0x1
    80003264:	d88080e7          	jalr	-632(ra) # 80003fe8 <initlock>
    80003268:	00000097          	auipc	ra,0x0
    8000326c:	7ac080e7          	jalr	1964(ra) # 80003a14 <uartinit>
    80003270:	01813083          	ld	ra,24(sp)
    80003274:	01013403          	ld	s0,16(sp)
    80003278:	00000797          	auipc	a5,0x0
    8000327c:	d9c78793          	addi	a5,a5,-612 # 80003014 <consoleread>
    80003280:	0af4bc23          	sd	a5,184(s1)
    80003284:	00000797          	auipc	a5,0x0
    80003288:	cec78793          	addi	a5,a5,-788 # 80002f70 <consolewrite>
    8000328c:	0cf4b023          	sd	a5,192(s1)
    80003290:	00813483          	ld	s1,8(sp)
    80003294:	02010113          	addi	sp,sp,32
    80003298:	00008067          	ret

000000008000329c <console_read>:
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00813423          	sd	s0,8(sp)
    800032a4:	01010413          	addi	s0,sp,16
    800032a8:	00813403          	ld	s0,8(sp)
    800032ac:	00004317          	auipc	t1,0x4
    800032b0:	cc433303          	ld	t1,-828(t1) # 80006f70 <devsw+0x10>
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00030067          	jr	t1

00000000800032bc <console_write>:
    800032bc:	ff010113          	addi	sp,sp,-16
    800032c0:	00813423          	sd	s0,8(sp)
    800032c4:	01010413          	addi	s0,sp,16
    800032c8:	00813403          	ld	s0,8(sp)
    800032cc:	00004317          	auipc	t1,0x4
    800032d0:	cac33303          	ld	t1,-852(t1) # 80006f78 <devsw+0x18>
    800032d4:	01010113          	addi	sp,sp,16
    800032d8:	00030067          	jr	t1

00000000800032dc <panic>:
    800032dc:	fe010113          	addi	sp,sp,-32
    800032e0:	00113c23          	sd	ra,24(sp)
    800032e4:	00813823          	sd	s0,16(sp)
    800032e8:	00913423          	sd	s1,8(sp)
    800032ec:	02010413          	addi	s0,sp,32
    800032f0:	00050493          	mv	s1,a0
    800032f4:	00002517          	auipc	a0,0x2
    800032f8:	edc50513          	addi	a0,a0,-292 # 800051d0 <_ZZ12printIntegermE6digits+0x140>
    800032fc:	00004797          	auipc	a5,0x4
    80003300:	d007ae23          	sw	zero,-740(a5) # 80007018 <pr+0x18>
    80003304:	00000097          	auipc	ra,0x0
    80003308:	034080e7          	jalr	52(ra) # 80003338 <__printf>
    8000330c:	00048513          	mv	a0,s1
    80003310:	00000097          	auipc	ra,0x0
    80003314:	028080e7          	jalr	40(ra) # 80003338 <__printf>
    80003318:	00002517          	auipc	a0,0x2
    8000331c:	d2850513          	addi	a0,a0,-728 # 80005040 <CONSOLE_STATUS+0x30>
    80003320:	00000097          	auipc	ra,0x0
    80003324:	018080e7          	jalr	24(ra) # 80003338 <__printf>
    80003328:	00100793          	li	a5,1
    8000332c:	00003717          	auipc	a4,0x3
    80003330:	a4f72e23          	sw	a5,-1444(a4) # 80005d88 <panicked>
    80003334:	0000006f          	j	80003334 <panic+0x58>

0000000080003338 <__printf>:
    80003338:	f3010113          	addi	sp,sp,-208
    8000333c:	08813023          	sd	s0,128(sp)
    80003340:	07313423          	sd	s3,104(sp)
    80003344:	09010413          	addi	s0,sp,144
    80003348:	05813023          	sd	s8,64(sp)
    8000334c:	08113423          	sd	ra,136(sp)
    80003350:	06913c23          	sd	s1,120(sp)
    80003354:	07213823          	sd	s2,112(sp)
    80003358:	07413023          	sd	s4,96(sp)
    8000335c:	05513c23          	sd	s5,88(sp)
    80003360:	05613823          	sd	s6,80(sp)
    80003364:	05713423          	sd	s7,72(sp)
    80003368:	03913c23          	sd	s9,56(sp)
    8000336c:	03a13823          	sd	s10,48(sp)
    80003370:	03b13423          	sd	s11,40(sp)
    80003374:	00004317          	auipc	t1,0x4
    80003378:	c8c30313          	addi	t1,t1,-884 # 80007000 <pr>
    8000337c:	01832c03          	lw	s8,24(t1)
    80003380:	00b43423          	sd	a1,8(s0)
    80003384:	00c43823          	sd	a2,16(s0)
    80003388:	00d43c23          	sd	a3,24(s0)
    8000338c:	02e43023          	sd	a4,32(s0)
    80003390:	02f43423          	sd	a5,40(s0)
    80003394:	03043823          	sd	a6,48(s0)
    80003398:	03143c23          	sd	a7,56(s0)
    8000339c:	00050993          	mv	s3,a0
    800033a0:	4a0c1663          	bnez	s8,8000384c <__printf+0x514>
    800033a4:	60098c63          	beqz	s3,800039bc <__printf+0x684>
    800033a8:	0009c503          	lbu	a0,0(s3)
    800033ac:	00840793          	addi	a5,s0,8
    800033b0:	f6f43c23          	sd	a5,-136(s0)
    800033b4:	00000493          	li	s1,0
    800033b8:	22050063          	beqz	a0,800035d8 <__printf+0x2a0>
    800033bc:	00002a37          	lui	s4,0x2
    800033c0:	00018ab7          	lui	s5,0x18
    800033c4:	000f4b37          	lui	s6,0xf4
    800033c8:	00989bb7          	lui	s7,0x989
    800033cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800033d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800033d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800033d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800033dc:	00148c9b          	addiw	s9,s1,1
    800033e0:	02500793          	li	a5,37
    800033e4:	01998933          	add	s2,s3,s9
    800033e8:	38f51263          	bne	a0,a5,8000376c <__printf+0x434>
    800033ec:	00094783          	lbu	a5,0(s2)
    800033f0:	00078c9b          	sext.w	s9,a5
    800033f4:	1e078263          	beqz	a5,800035d8 <__printf+0x2a0>
    800033f8:	0024849b          	addiw	s1,s1,2
    800033fc:	07000713          	li	a4,112
    80003400:	00998933          	add	s2,s3,s1
    80003404:	38e78a63          	beq	a5,a4,80003798 <__printf+0x460>
    80003408:	20f76863          	bltu	a4,a5,80003618 <__printf+0x2e0>
    8000340c:	42a78863          	beq	a5,a0,8000383c <__printf+0x504>
    80003410:	06400713          	li	a4,100
    80003414:	40e79663          	bne	a5,a4,80003820 <__printf+0x4e8>
    80003418:	f7843783          	ld	a5,-136(s0)
    8000341c:	0007a603          	lw	a2,0(a5)
    80003420:	00878793          	addi	a5,a5,8
    80003424:	f6f43c23          	sd	a5,-136(s0)
    80003428:	42064a63          	bltz	a2,8000385c <__printf+0x524>
    8000342c:	00a00713          	li	a4,10
    80003430:	02e677bb          	remuw	a5,a2,a4
    80003434:	00002d97          	auipc	s11,0x2
    80003438:	dc4d8d93          	addi	s11,s11,-572 # 800051f8 <digits>
    8000343c:	00900593          	li	a1,9
    80003440:	0006051b          	sext.w	a0,a2
    80003444:	00000c93          	li	s9,0
    80003448:	02079793          	slli	a5,a5,0x20
    8000344c:	0207d793          	srli	a5,a5,0x20
    80003450:	00fd87b3          	add	a5,s11,a5
    80003454:	0007c783          	lbu	a5,0(a5)
    80003458:	02e656bb          	divuw	a3,a2,a4
    8000345c:	f8f40023          	sb	a5,-128(s0)
    80003460:	14c5d863          	bge	a1,a2,800035b0 <__printf+0x278>
    80003464:	06300593          	li	a1,99
    80003468:	00100c93          	li	s9,1
    8000346c:	02e6f7bb          	remuw	a5,a3,a4
    80003470:	02079793          	slli	a5,a5,0x20
    80003474:	0207d793          	srli	a5,a5,0x20
    80003478:	00fd87b3          	add	a5,s11,a5
    8000347c:	0007c783          	lbu	a5,0(a5)
    80003480:	02e6d73b          	divuw	a4,a3,a4
    80003484:	f8f400a3          	sb	a5,-127(s0)
    80003488:	12a5f463          	bgeu	a1,a0,800035b0 <__printf+0x278>
    8000348c:	00a00693          	li	a3,10
    80003490:	00900593          	li	a1,9
    80003494:	02d777bb          	remuw	a5,a4,a3
    80003498:	02079793          	slli	a5,a5,0x20
    8000349c:	0207d793          	srli	a5,a5,0x20
    800034a0:	00fd87b3          	add	a5,s11,a5
    800034a4:	0007c503          	lbu	a0,0(a5)
    800034a8:	02d757bb          	divuw	a5,a4,a3
    800034ac:	f8a40123          	sb	a0,-126(s0)
    800034b0:	48e5f263          	bgeu	a1,a4,80003934 <__printf+0x5fc>
    800034b4:	06300513          	li	a0,99
    800034b8:	02d7f5bb          	remuw	a1,a5,a3
    800034bc:	02059593          	slli	a1,a1,0x20
    800034c0:	0205d593          	srli	a1,a1,0x20
    800034c4:	00bd85b3          	add	a1,s11,a1
    800034c8:	0005c583          	lbu	a1,0(a1)
    800034cc:	02d7d7bb          	divuw	a5,a5,a3
    800034d0:	f8b401a3          	sb	a1,-125(s0)
    800034d4:	48e57263          	bgeu	a0,a4,80003958 <__printf+0x620>
    800034d8:	3e700513          	li	a0,999
    800034dc:	02d7f5bb          	remuw	a1,a5,a3
    800034e0:	02059593          	slli	a1,a1,0x20
    800034e4:	0205d593          	srli	a1,a1,0x20
    800034e8:	00bd85b3          	add	a1,s11,a1
    800034ec:	0005c583          	lbu	a1,0(a1)
    800034f0:	02d7d7bb          	divuw	a5,a5,a3
    800034f4:	f8b40223          	sb	a1,-124(s0)
    800034f8:	46e57663          	bgeu	a0,a4,80003964 <__printf+0x62c>
    800034fc:	02d7f5bb          	remuw	a1,a5,a3
    80003500:	02059593          	slli	a1,a1,0x20
    80003504:	0205d593          	srli	a1,a1,0x20
    80003508:	00bd85b3          	add	a1,s11,a1
    8000350c:	0005c583          	lbu	a1,0(a1)
    80003510:	02d7d7bb          	divuw	a5,a5,a3
    80003514:	f8b402a3          	sb	a1,-123(s0)
    80003518:	46ea7863          	bgeu	s4,a4,80003988 <__printf+0x650>
    8000351c:	02d7f5bb          	remuw	a1,a5,a3
    80003520:	02059593          	slli	a1,a1,0x20
    80003524:	0205d593          	srli	a1,a1,0x20
    80003528:	00bd85b3          	add	a1,s11,a1
    8000352c:	0005c583          	lbu	a1,0(a1)
    80003530:	02d7d7bb          	divuw	a5,a5,a3
    80003534:	f8b40323          	sb	a1,-122(s0)
    80003538:	3eeaf863          	bgeu	s5,a4,80003928 <__printf+0x5f0>
    8000353c:	02d7f5bb          	remuw	a1,a5,a3
    80003540:	02059593          	slli	a1,a1,0x20
    80003544:	0205d593          	srli	a1,a1,0x20
    80003548:	00bd85b3          	add	a1,s11,a1
    8000354c:	0005c583          	lbu	a1,0(a1)
    80003550:	02d7d7bb          	divuw	a5,a5,a3
    80003554:	f8b403a3          	sb	a1,-121(s0)
    80003558:	42eb7e63          	bgeu	s6,a4,80003994 <__printf+0x65c>
    8000355c:	02d7f5bb          	remuw	a1,a5,a3
    80003560:	02059593          	slli	a1,a1,0x20
    80003564:	0205d593          	srli	a1,a1,0x20
    80003568:	00bd85b3          	add	a1,s11,a1
    8000356c:	0005c583          	lbu	a1,0(a1)
    80003570:	02d7d7bb          	divuw	a5,a5,a3
    80003574:	f8b40423          	sb	a1,-120(s0)
    80003578:	42ebfc63          	bgeu	s7,a4,800039b0 <__printf+0x678>
    8000357c:	02079793          	slli	a5,a5,0x20
    80003580:	0207d793          	srli	a5,a5,0x20
    80003584:	00fd8db3          	add	s11,s11,a5
    80003588:	000dc703          	lbu	a4,0(s11)
    8000358c:	00a00793          	li	a5,10
    80003590:	00900c93          	li	s9,9
    80003594:	f8e404a3          	sb	a4,-119(s0)
    80003598:	00065c63          	bgez	a2,800035b0 <__printf+0x278>
    8000359c:	f9040713          	addi	a4,s0,-112
    800035a0:	00f70733          	add	a4,a4,a5
    800035a4:	02d00693          	li	a3,45
    800035a8:	fed70823          	sb	a3,-16(a4)
    800035ac:	00078c93          	mv	s9,a5
    800035b0:	f8040793          	addi	a5,s0,-128
    800035b4:	01978cb3          	add	s9,a5,s9
    800035b8:	f7f40d13          	addi	s10,s0,-129
    800035bc:	000cc503          	lbu	a0,0(s9)
    800035c0:	fffc8c93          	addi	s9,s9,-1
    800035c4:	00000097          	auipc	ra,0x0
    800035c8:	b90080e7          	jalr	-1136(ra) # 80003154 <consputc>
    800035cc:	ffac98e3          	bne	s9,s10,800035bc <__printf+0x284>
    800035d0:	00094503          	lbu	a0,0(s2)
    800035d4:	e00514e3          	bnez	a0,800033dc <__printf+0xa4>
    800035d8:	1a0c1663          	bnez	s8,80003784 <__printf+0x44c>
    800035dc:	08813083          	ld	ra,136(sp)
    800035e0:	08013403          	ld	s0,128(sp)
    800035e4:	07813483          	ld	s1,120(sp)
    800035e8:	07013903          	ld	s2,112(sp)
    800035ec:	06813983          	ld	s3,104(sp)
    800035f0:	06013a03          	ld	s4,96(sp)
    800035f4:	05813a83          	ld	s5,88(sp)
    800035f8:	05013b03          	ld	s6,80(sp)
    800035fc:	04813b83          	ld	s7,72(sp)
    80003600:	04013c03          	ld	s8,64(sp)
    80003604:	03813c83          	ld	s9,56(sp)
    80003608:	03013d03          	ld	s10,48(sp)
    8000360c:	02813d83          	ld	s11,40(sp)
    80003610:	0d010113          	addi	sp,sp,208
    80003614:	00008067          	ret
    80003618:	07300713          	li	a4,115
    8000361c:	1ce78a63          	beq	a5,a4,800037f0 <__printf+0x4b8>
    80003620:	07800713          	li	a4,120
    80003624:	1ee79e63          	bne	a5,a4,80003820 <__printf+0x4e8>
    80003628:	f7843783          	ld	a5,-136(s0)
    8000362c:	0007a703          	lw	a4,0(a5)
    80003630:	00878793          	addi	a5,a5,8
    80003634:	f6f43c23          	sd	a5,-136(s0)
    80003638:	28074263          	bltz	a4,800038bc <__printf+0x584>
    8000363c:	00002d97          	auipc	s11,0x2
    80003640:	bbcd8d93          	addi	s11,s11,-1092 # 800051f8 <digits>
    80003644:	00f77793          	andi	a5,a4,15
    80003648:	00fd87b3          	add	a5,s11,a5
    8000364c:	0007c683          	lbu	a3,0(a5)
    80003650:	00f00613          	li	a2,15
    80003654:	0007079b          	sext.w	a5,a4
    80003658:	f8d40023          	sb	a3,-128(s0)
    8000365c:	0047559b          	srliw	a1,a4,0x4
    80003660:	0047569b          	srliw	a3,a4,0x4
    80003664:	00000c93          	li	s9,0
    80003668:	0ee65063          	bge	a2,a4,80003748 <__printf+0x410>
    8000366c:	00f6f693          	andi	a3,a3,15
    80003670:	00dd86b3          	add	a3,s11,a3
    80003674:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003678:	0087d79b          	srliw	a5,a5,0x8
    8000367c:	00100c93          	li	s9,1
    80003680:	f8d400a3          	sb	a3,-127(s0)
    80003684:	0cb67263          	bgeu	a2,a1,80003748 <__printf+0x410>
    80003688:	00f7f693          	andi	a3,a5,15
    8000368c:	00dd86b3          	add	a3,s11,a3
    80003690:	0006c583          	lbu	a1,0(a3)
    80003694:	00f00613          	li	a2,15
    80003698:	0047d69b          	srliw	a3,a5,0x4
    8000369c:	f8b40123          	sb	a1,-126(s0)
    800036a0:	0047d593          	srli	a1,a5,0x4
    800036a4:	28f67e63          	bgeu	a2,a5,80003940 <__printf+0x608>
    800036a8:	00f6f693          	andi	a3,a3,15
    800036ac:	00dd86b3          	add	a3,s11,a3
    800036b0:	0006c503          	lbu	a0,0(a3)
    800036b4:	0087d813          	srli	a6,a5,0x8
    800036b8:	0087d69b          	srliw	a3,a5,0x8
    800036bc:	f8a401a3          	sb	a0,-125(s0)
    800036c0:	28b67663          	bgeu	a2,a1,8000394c <__printf+0x614>
    800036c4:	00f6f693          	andi	a3,a3,15
    800036c8:	00dd86b3          	add	a3,s11,a3
    800036cc:	0006c583          	lbu	a1,0(a3)
    800036d0:	00c7d513          	srli	a0,a5,0xc
    800036d4:	00c7d69b          	srliw	a3,a5,0xc
    800036d8:	f8b40223          	sb	a1,-124(s0)
    800036dc:	29067a63          	bgeu	a2,a6,80003970 <__printf+0x638>
    800036e0:	00f6f693          	andi	a3,a3,15
    800036e4:	00dd86b3          	add	a3,s11,a3
    800036e8:	0006c583          	lbu	a1,0(a3)
    800036ec:	0107d813          	srli	a6,a5,0x10
    800036f0:	0107d69b          	srliw	a3,a5,0x10
    800036f4:	f8b402a3          	sb	a1,-123(s0)
    800036f8:	28a67263          	bgeu	a2,a0,8000397c <__printf+0x644>
    800036fc:	00f6f693          	andi	a3,a3,15
    80003700:	00dd86b3          	add	a3,s11,a3
    80003704:	0006c683          	lbu	a3,0(a3)
    80003708:	0147d79b          	srliw	a5,a5,0x14
    8000370c:	f8d40323          	sb	a3,-122(s0)
    80003710:	21067663          	bgeu	a2,a6,8000391c <__printf+0x5e4>
    80003714:	02079793          	slli	a5,a5,0x20
    80003718:	0207d793          	srli	a5,a5,0x20
    8000371c:	00fd8db3          	add	s11,s11,a5
    80003720:	000dc683          	lbu	a3,0(s11)
    80003724:	00800793          	li	a5,8
    80003728:	00700c93          	li	s9,7
    8000372c:	f8d403a3          	sb	a3,-121(s0)
    80003730:	00075c63          	bgez	a4,80003748 <__printf+0x410>
    80003734:	f9040713          	addi	a4,s0,-112
    80003738:	00f70733          	add	a4,a4,a5
    8000373c:	02d00693          	li	a3,45
    80003740:	fed70823          	sb	a3,-16(a4)
    80003744:	00078c93          	mv	s9,a5
    80003748:	f8040793          	addi	a5,s0,-128
    8000374c:	01978cb3          	add	s9,a5,s9
    80003750:	f7f40d13          	addi	s10,s0,-129
    80003754:	000cc503          	lbu	a0,0(s9)
    80003758:	fffc8c93          	addi	s9,s9,-1
    8000375c:	00000097          	auipc	ra,0x0
    80003760:	9f8080e7          	jalr	-1544(ra) # 80003154 <consputc>
    80003764:	ff9d18e3          	bne	s10,s9,80003754 <__printf+0x41c>
    80003768:	0100006f          	j	80003778 <__printf+0x440>
    8000376c:	00000097          	auipc	ra,0x0
    80003770:	9e8080e7          	jalr	-1560(ra) # 80003154 <consputc>
    80003774:	000c8493          	mv	s1,s9
    80003778:	00094503          	lbu	a0,0(s2)
    8000377c:	c60510e3          	bnez	a0,800033dc <__printf+0xa4>
    80003780:	e40c0ee3          	beqz	s8,800035dc <__printf+0x2a4>
    80003784:	00004517          	auipc	a0,0x4
    80003788:	87c50513          	addi	a0,a0,-1924 # 80007000 <pr>
    8000378c:	00001097          	auipc	ra,0x1
    80003790:	94c080e7          	jalr	-1716(ra) # 800040d8 <release>
    80003794:	e49ff06f          	j	800035dc <__printf+0x2a4>
    80003798:	f7843783          	ld	a5,-136(s0)
    8000379c:	03000513          	li	a0,48
    800037a0:	01000d13          	li	s10,16
    800037a4:	00878713          	addi	a4,a5,8
    800037a8:	0007bc83          	ld	s9,0(a5)
    800037ac:	f6e43c23          	sd	a4,-136(s0)
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	9a4080e7          	jalr	-1628(ra) # 80003154 <consputc>
    800037b8:	07800513          	li	a0,120
    800037bc:	00000097          	auipc	ra,0x0
    800037c0:	998080e7          	jalr	-1640(ra) # 80003154 <consputc>
    800037c4:	00002d97          	auipc	s11,0x2
    800037c8:	a34d8d93          	addi	s11,s11,-1484 # 800051f8 <digits>
    800037cc:	03ccd793          	srli	a5,s9,0x3c
    800037d0:	00fd87b3          	add	a5,s11,a5
    800037d4:	0007c503          	lbu	a0,0(a5)
    800037d8:	fffd0d1b          	addiw	s10,s10,-1
    800037dc:	004c9c93          	slli	s9,s9,0x4
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	974080e7          	jalr	-1676(ra) # 80003154 <consputc>
    800037e8:	fe0d12e3          	bnez	s10,800037cc <__printf+0x494>
    800037ec:	f8dff06f          	j	80003778 <__printf+0x440>
    800037f0:	f7843783          	ld	a5,-136(s0)
    800037f4:	0007bc83          	ld	s9,0(a5)
    800037f8:	00878793          	addi	a5,a5,8
    800037fc:	f6f43c23          	sd	a5,-136(s0)
    80003800:	000c9a63          	bnez	s9,80003814 <__printf+0x4dc>
    80003804:	1080006f          	j	8000390c <__printf+0x5d4>
    80003808:	001c8c93          	addi	s9,s9,1
    8000380c:	00000097          	auipc	ra,0x0
    80003810:	948080e7          	jalr	-1720(ra) # 80003154 <consputc>
    80003814:	000cc503          	lbu	a0,0(s9)
    80003818:	fe0518e3          	bnez	a0,80003808 <__printf+0x4d0>
    8000381c:	f5dff06f          	j	80003778 <__printf+0x440>
    80003820:	02500513          	li	a0,37
    80003824:	00000097          	auipc	ra,0x0
    80003828:	930080e7          	jalr	-1744(ra) # 80003154 <consputc>
    8000382c:	000c8513          	mv	a0,s9
    80003830:	00000097          	auipc	ra,0x0
    80003834:	924080e7          	jalr	-1756(ra) # 80003154 <consputc>
    80003838:	f41ff06f          	j	80003778 <__printf+0x440>
    8000383c:	02500513          	li	a0,37
    80003840:	00000097          	auipc	ra,0x0
    80003844:	914080e7          	jalr	-1772(ra) # 80003154 <consputc>
    80003848:	f31ff06f          	j	80003778 <__printf+0x440>
    8000384c:	00030513          	mv	a0,t1
    80003850:	00000097          	auipc	ra,0x0
    80003854:	7bc080e7          	jalr	1980(ra) # 8000400c <acquire>
    80003858:	b4dff06f          	j	800033a4 <__printf+0x6c>
    8000385c:	40c0053b          	negw	a0,a2
    80003860:	00a00713          	li	a4,10
    80003864:	02e576bb          	remuw	a3,a0,a4
    80003868:	00002d97          	auipc	s11,0x2
    8000386c:	990d8d93          	addi	s11,s11,-1648 # 800051f8 <digits>
    80003870:	ff700593          	li	a1,-9
    80003874:	02069693          	slli	a3,a3,0x20
    80003878:	0206d693          	srli	a3,a3,0x20
    8000387c:	00dd86b3          	add	a3,s11,a3
    80003880:	0006c683          	lbu	a3,0(a3)
    80003884:	02e557bb          	divuw	a5,a0,a4
    80003888:	f8d40023          	sb	a3,-128(s0)
    8000388c:	10b65e63          	bge	a2,a1,800039a8 <__printf+0x670>
    80003890:	06300593          	li	a1,99
    80003894:	02e7f6bb          	remuw	a3,a5,a4
    80003898:	02069693          	slli	a3,a3,0x20
    8000389c:	0206d693          	srli	a3,a3,0x20
    800038a0:	00dd86b3          	add	a3,s11,a3
    800038a4:	0006c683          	lbu	a3,0(a3)
    800038a8:	02e7d73b          	divuw	a4,a5,a4
    800038ac:	00200793          	li	a5,2
    800038b0:	f8d400a3          	sb	a3,-127(s0)
    800038b4:	bca5ece3          	bltu	a1,a0,8000348c <__printf+0x154>
    800038b8:	ce5ff06f          	j	8000359c <__printf+0x264>
    800038bc:	40e007bb          	negw	a5,a4
    800038c0:	00002d97          	auipc	s11,0x2
    800038c4:	938d8d93          	addi	s11,s11,-1736 # 800051f8 <digits>
    800038c8:	00f7f693          	andi	a3,a5,15
    800038cc:	00dd86b3          	add	a3,s11,a3
    800038d0:	0006c583          	lbu	a1,0(a3)
    800038d4:	ff100613          	li	a2,-15
    800038d8:	0047d69b          	srliw	a3,a5,0x4
    800038dc:	f8b40023          	sb	a1,-128(s0)
    800038e0:	0047d59b          	srliw	a1,a5,0x4
    800038e4:	0ac75e63          	bge	a4,a2,800039a0 <__printf+0x668>
    800038e8:	00f6f693          	andi	a3,a3,15
    800038ec:	00dd86b3          	add	a3,s11,a3
    800038f0:	0006c603          	lbu	a2,0(a3)
    800038f4:	00f00693          	li	a3,15
    800038f8:	0087d79b          	srliw	a5,a5,0x8
    800038fc:	f8c400a3          	sb	a2,-127(s0)
    80003900:	d8b6e4e3          	bltu	a3,a1,80003688 <__printf+0x350>
    80003904:	00200793          	li	a5,2
    80003908:	e2dff06f          	j	80003734 <__printf+0x3fc>
    8000390c:	00002c97          	auipc	s9,0x2
    80003910:	8ccc8c93          	addi	s9,s9,-1844 # 800051d8 <_ZZ12printIntegermE6digits+0x148>
    80003914:	02800513          	li	a0,40
    80003918:	ef1ff06f          	j	80003808 <__printf+0x4d0>
    8000391c:	00700793          	li	a5,7
    80003920:	00600c93          	li	s9,6
    80003924:	e0dff06f          	j	80003730 <__printf+0x3f8>
    80003928:	00700793          	li	a5,7
    8000392c:	00600c93          	li	s9,6
    80003930:	c69ff06f          	j	80003598 <__printf+0x260>
    80003934:	00300793          	li	a5,3
    80003938:	00200c93          	li	s9,2
    8000393c:	c5dff06f          	j	80003598 <__printf+0x260>
    80003940:	00300793          	li	a5,3
    80003944:	00200c93          	li	s9,2
    80003948:	de9ff06f          	j	80003730 <__printf+0x3f8>
    8000394c:	00400793          	li	a5,4
    80003950:	00300c93          	li	s9,3
    80003954:	dddff06f          	j	80003730 <__printf+0x3f8>
    80003958:	00400793          	li	a5,4
    8000395c:	00300c93          	li	s9,3
    80003960:	c39ff06f          	j	80003598 <__printf+0x260>
    80003964:	00500793          	li	a5,5
    80003968:	00400c93          	li	s9,4
    8000396c:	c2dff06f          	j	80003598 <__printf+0x260>
    80003970:	00500793          	li	a5,5
    80003974:	00400c93          	li	s9,4
    80003978:	db9ff06f          	j	80003730 <__printf+0x3f8>
    8000397c:	00600793          	li	a5,6
    80003980:	00500c93          	li	s9,5
    80003984:	dadff06f          	j	80003730 <__printf+0x3f8>
    80003988:	00600793          	li	a5,6
    8000398c:	00500c93          	li	s9,5
    80003990:	c09ff06f          	j	80003598 <__printf+0x260>
    80003994:	00800793          	li	a5,8
    80003998:	00700c93          	li	s9,7
    8000399c:	bfdff06f          	j	80003598 <__printf+0x260>
    800039a0:	00100793          	li	a5,1
    800039a4:	d91ff06f          	j	80003734 <__printf+0x3fc>
    800039a8:	00100793          	li	a5,1
    800039ac:	bf1ff06f          	j	8000359c <__printf+0x264>
    800039b0:	00900793          	li	a5,9
    800039b4:	00800c93          	li	s9,8
    800039b8:	be1ff06f          	j	80003598 <__printf+0x260>
    800039bc:	00002517          	auipc	a0,0x2
    800039c0:	82450513          	addi	a0,a0,-2012 # 800051e0 <_ZZ12printIntegermE6digits+0x150>
    800039c4:	00000097          	auipc	ra,0x0
    800039c8:	918080e7          	jalr	-1768(ra) # 800032dc <panic>

00000000800039cc <printfinit>:
    800039cc:	fe010113          	addi	sp,sp,-32
    800039d0:	00813823          	sd	s0,16(sp)
    800039d4:	00913423          	sd	s1,8(sp)
    800039d8:	00113c23          	sd	ra,24(sp)
    800039dc:	02010413          	addi	s0,sp,32
    800039e0:	00003497          	auipc	s1,0x3
    800039e4:	62048493          	addi	s1,s1,1568 # 80007000 <pr>
    800039e8:	00048513          	mv	a0,s1
    800039ec:	00002597          	auipc	a1,0x2
    800039f0:	80458593          	addi	a1,a1,-2044 # 800051f0 <_ZZ12printIntegermE6digits+0x160>
    800039f4:	00000097          	auipc	ra,0x0
    800039f8:	5f4080e7          	jalr	1524(ra) # 80003fe8 <initlock>
    800039fc:	01813083          	ld	ra,24(sp)
    80003a00:	01013403          	ld	s0,16(sp)
    80003a04:	0004ac23          	sw	zero,24(s1)
    80003a08:	00813483          	ld	s1,8(sp)
    80003a0c:	02010113          	addi	sp,sp,32
    80003a10:	00008067          	ret

0000000080003a14 <uartinit>:
    80003a14:	ff010113          	addi	sp,sp,-16
    80003a18:	00813423          	sd	s0,8(sp)
    80003a1c:	01010413          	addi	s0,sp,16
    80003a20:	100007b7          	lui	a5,0x10000
    80003a24:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003a28:	f8000713          	li	a4,-128
    80003a2c:	00e781a3          	sb	a4,3(a5)
    80003a30:	00300713          	li	a4,3
    80003a34:	00e78023          	sb	a4,0(a5)
    80003a38:	000780a3          	sb	zero,1(a5)
    80003a3c:	00e781a3          	sb	a4,3(a5)
    80003a40:	00700693          	li	a3,7
    80003a44:	00d78123          	sb	a3,2(a5)
    80003a48:	00e780a3          	sb	a4,1(a5)
    80003a4c:	00813403          	ld	s0,8(sp)
    80003a50:	01010113          	addi	sp,sp,16
    80003a54:	00008067          	ret

0000000080003a58 <uartputc>:
    80003a58:	00002797          	auipc	a5,0x2
    80003a5c:	3307a783          	lw	a5,816(a5) # 80005d88 <panicked>
    80003a60:	00078463          	beqz	a5,80003a68 <uartputc+0x10>
    80003a64:	0000006f          	j	80003a64 <uartputc+0xc>
    80003a68:	fd010113          	addi	sp,sp,-48
    80003a6c:	02813023          	sd	s0,32(sp)
    80003a70:	00913c23          	sd	s1,24(sp)
    80003a74:	01213823          	sd	s2,16(sp)
    80003a78:	01313423          	sd	s3,8(sp)
    80003a7c:	02113423          	sd	ra,40(sp)
    80003a80:	03010413          	addi	s0,sp,48
    80003a84:	00002917          	auipc	s2,0x2
    80003a88:	30c90913          	addi	s2,s2,780 # 80005d90 <uart_tx_r>
    80003a8c:	00093783          	ld	a5,0(s2)
    80003a90:	00002497          	auipc	s1,0x2
    80003a94:	30848493          	addi	s1,s1,776 # 80005d98 <uart_tx_w>
    80003a98:	0004b703          	ld	a4,0(s1)
    80003a9c:	02078693          	addi	a3,a5,32
    80003aa0:	00050993          	mv	s3,a0
    80003aa4:	02e69c63          	bne	a3,a4,80003adc <uartputc+0x84>
    80003aa8:	00001097          	auipc	ra,0x1
    80003aac:	834080e7          	jalr	-1996(ra) # 800042dc <push_on>
    80003ab0:	00093783          	ld	a5,0(s2)
    80003ab4:	0004b703          	ld	a4,0(s1)
    80003ab8:	02078793          	addi	a5,a5,32
    80003abc:	00e79463          	bne	a5,a4,80003ac4 <uartputc+0x6c>
    80003ac0:	0000006f          	j	80003ac0 <uartputc+0x68>
    80003ac4:	00001097          	auipc	ra,0x1
    80003ac8:	88c080e7          	jalr	-1908(ra) # 80004350 <pop_on>
    80003acc:	00093783          	ld	a5,0(s2)
    80003ad0:	0004b703          	ld	a4,0(s1)
    80003ad4:	02078693          	addi	a3,a5,32
    80003ad8:	fce688e3          	beq	a3,a4,80003aa8 <uartputc+0x50>
    80003adc:	01f77693          	andi	a3,a4,31
    80003ae0:	00003597          	auipc	a1,0x3
    80003ae4:	54058593          	addi	a1,a1,1344 # 80007020 <uart_tx_buf>
    80003ae8:	00d586b3          	add	a3,a1,a3
    80003aec:	00170713          	addi	a4,a4,1
    80003af0:	01368023          	sb	s3,0(a3)
    80003af4:	00e4b023          	sd	a4,0(s1)
    80003af8:	10000637          	lui	a2,0x10000
    80003afc:	02f71063          	bne	a4,a5,80003b1c <uartputc+0xc4>
    80003b00:	0340006f          	j	80003b34 <uartputc+0xdc>
    80003b04:	00074703          	lbu	a4,0(a4)
    80003b08:	00f93023          	sd	a5,0(s2)
    80003b0c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003b10:	00093783          	ld	a5,0(s2)
    80003b14:	0004b703          	ld	a4,0(s1)
    80003b18:	00f70e63          	beq	a4,a5,80003b34 <uartputc+0xdc>
    80003b1c:	00564683          	lbu	a3,5(a2)
    80003b20:	01f7f713          	andi	a4,a5,31
    80003b24:	00e58733          	add	a4,a1,a4
    80003b28:	0206f693          	andi	a3,a3,32
    80003b2c:	00178793          	addi	a5,a5,1
    80003b30:	fc069ae3          	bnez	a3,80003b04 <uartputc+0xac>
    80003b34:	02813083          	ld	ra,40(sp)
    80003b38:	02013403          	ld	s0,32(sp)
    80003b3c:	01813483          	ld	s1,24(sp)
    80003b40:	01013903          	ld	s2,16(sp)
    80003b44:	00813983          	ld	s3,8(sp)
    80003b48:	03010113          	addi	sp,sp,48
    80003b4c:	00008067          	ret

0000000080003b50 <uartputc_sync>:
    80003b50:	ff010113          	addi	sp,sp,-16
    80003b54:	00813423          	sd	s0,8(sp)
    80003b58:	01010413          	addi	s0,sp,16
    80003b5c:	00002717          	auipc	a4,0x2
    80003b60:	22c72703          	lw	a4,556(a4) # 80005d88 <panicked>
    80003b64:	02071663          	bnez	a4,80003b90 <uartputc_sync+0x40>
    80003b68:	00050793          	mv	a5,a0
    80003b6c:	100006b7          	lui	a3,0x10000
    80003b70:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003b74:	02077713          	andi	a4,a4,32
    80003b78:	fe070ce3          	beqz	a4,80003b70 <uartputc_sync+0x20>
    80003b7c:	0ff7f793          	andi	a5,a5,255
    80003b80:	00f68023          	sb	a5,0(a3)
    80003b84:	00813403          	ld	s0,8(sp)
    80003b88:	01010113          	addi	sp,sp,16
    80003b8c:	00008067          	ret
    80003b90:	0000006f          	j	80003b90 <uartputc_sync+0x40>

0000000080003b94 <uartstart>:
    80003b94:	ff010113          	addi	sp,sp,-16
    80003b98:	00813423          	sd	s0,8(sp)
    80003b9c:	01010413          	addi	s0,sp,16
    80003ba0:	00002617          	auipc	a2,0x2
    80003ba4:	1f060613          	addi	a2,a2,496 # 80005d90 <uart_tx_r>
    80003ba8:	00002517          	auipc	a0,0x2
    80003bac:	1f050513          	addi	a0,a0,496 # 80005d98 <uart_tx_w>
    80003bb0:	00063783          	ld	a5,0(a2)
    80003bb4:	00053703          	ld	a4,0(a0)
    80003bb8:	04f70263          	beq	a4,a5,80003bfc <uartstart+0x68>
    80003bbc:	100005b7          	lui	a1,0x10000
    80003bc0:	00003817          	auipc	a6,0x3
    80003bc4:	46080813          	addi	a6,a6,1120 # 80007020 <uart_tx_buf>
    80003bc8:	01c0006f          	j	80003be4 <uartstart+0x50>
    80003bcc:	0006c703          	lbu	a4,0(a3)
    80003bd0:	00f63023          	sd	a5,0(a2)
    80003bd4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003bd8:	00063783          	ld	a5,0(a2)
    80003bdc:	00053703          	ld	a4,0(a0)
    80003be0:	00f70e63          	beq	a4,a5,80003bfc <uartstart+0x68>
    80003be4:	01f7f713          	andi	a4,a5,31
    80003be8:	00e806b3          	add	a3,a6,a4
    80003bec:	0055c703          	lbu	a4,5(a1)
    80003bf0:	00178793          	addi	a5,a5,1
    80003bf4:	02077713          	andi	a4,a4,32
    80003bf8:	fc071ae3          	bnez	a4,80003bcc <uartstart+0x38>
    80003bfc:	00813403          	ld	s0,8(sp)
    80003c00:	01010113          	addi	sp,sp,16
    80003c04:	00008067          	ret

0000000080003c08 <uartgetc>:
    80003c08:	ff010113          	addi	sp,sp,-16
    80003c0c:	00813423          	sd	s0,8(sp)
    80003c10:	01010413          	addi	s0,sp,16
    80003c14:	10000737          	lui	a4,0x10000
    80003c18:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003c1c:	0017f793          	andi	a5,a5,1
    80003c20:	00078c63          	beqz	a5,80003c38 <uartgetc+0x30>
    80003c24:	00074503          	lbu	a0,0(a4)
    80003c28:	0ff57513          	andi	a0,a0,255
    80003c2c:	00813403          	ld	s0,8(sp)
    80003c30:	01010113          	addi	sp,sp,16
    80003c34:	00008067          	ret
    80003c38:	fff00513          	li	a0,-1
    80003c3c:	ff1ff06f          	j	80003c2c <uartgetc+0x24>

0000000080003c40 <uartintr>:
    80003c40:	100007b7          	lui	a5,0x10000
    80003c44:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003c48:	0017f793          	andi	a5,a5,1
    80003c4c:	0a078463          	beqz	a5,80003cf4 <uartintr+0xb4>
    80003c50:	fe010113          	addi	sp,sp,-32
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	00113c23          	sd	ra,24(sp)
    80003c60:	02010413          	addi	s0,sp,32
    80003c64:	100004b7          	lui	s1,0x10000
    80003c68:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003c6c:	0ff57513          	andi	a0,a0,255
    80003c70:	fffff097          	auipc	ra,0xfffff
    80003c74:	534080e7          	jalr	1332(ra) # 800031a4 <consoleintr>
    80003c78:	0054c783          	lbu	a5,5(s1)
    80003c7c:	0017f793          	andi	a5,a5,1
    80003c80:	fe0794e3          	bnez	a5,80003c68 <uartintr+0x28>
    80003c84:	00002617          	auipc	a2,0x2
    80003c88:	10c60613          	addi	a2,a2,268 # 80005d90 <uart_tx_r>
    80003c8c:	00002517          	auipc	a0,0x2
    80003c90:	10c50513          	addi	a0,a0,268 # 80005d98 <uart_tx_w>
    80003c94:	00063783          	ld	a5,0(a2)
    80003c98:	00053703          	ld	a4,0(a0)
    80003c9c:	04f70263          	beq	a4,a5,80003ce0 <uartintr+0xa0>
    80003ca0:	100005b7          	lui	a1,0x10000
    80003ca4:	00003817          	auipc	a6,0x3
    80003ca8:	37c80813          	addi	a6,a6,892 # 80007020 <uart_tx_buf>
    80003cac:	01c0006f          	j	80003cc8 <uartintr+0x88>
    80003cb0:	0006c703          	lbu	a4,0(a3)
    80003cb4:	00f63023          	sd	a5,0(a2)
    80003cb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003cbc:	00063783          	ld	a5,0(a2)
    80003cc0:	00053703          	ld	a4,0(a0)
    80003cc4:	00f70e63          	beq	a4,a5,80003ce0 <uartintr+0xa0>
    80003cc8:	01f7f713          	andi	a4,a5,31
    80003ccc:	00e806b3          	add	a3,a6,a4
    80003cd0:	0055c703          	lbu	a4,5(a1)
    80003cd4:	00178793          	addi	a5,a5,1
    80003cd8:	02077713          	andi	a4,a4,32
    80003cdc:	fc071ae3          	bnez	a4,80003cb0 <uartintr+0x70>
    80003ce0:	01813083          	ld	ra,24(sp)
    80003ce4:	01013403          	ld	s0,16(sp)
    80003ce8:	00813483          	ld	s1,8(sp)
    80003cec:	02010113          	addi	sp,sp,32
    80003cf0:	00008067          	ret
    80003cf4:	00002617          	auipc	a2,0x2
    80003cf8:	09c60613          	addi	a2,a2,156 # 80005d90 <uart_tx_r>
    80003cfc:	00002517          	auipc	a0,0x2
    80003d00:	09c50513          	addi	a0,a0,156 # 80005d98 <uart_tx_w>
    80003d04:	00063783          	ld	a5,0(a2)
    80003d08:	00053703          	ld	a4,0(a0)
    80003d0c:	04f70263          	beq	a4,a5,80003d50 <uartintr+0x110>
    80003d10:	100005b7          	lui	a1,0x10000
    80003d14:	00003817          	auipc	a6,0x3
    80003d18:	30c80813          	addi	a6,a6,780 # 80007020 <uart_tx_buf>
    80003d1c:	01c0006f          	j	80003d38 <uartintr+0xf8>
    80003d20:	0006c703          	lbu	a4,0(a3)
    80003d24:	00f63023          	sd	a5,0(a2)
    80003d28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d2c:	00063783          	ld	a5,0(a2)
    80003d30:	00053703          	ld	a4,0(a0)
    80003d34:	02f70063          	beq	a4,a5,80003d54 <uartintr+0x114>
    80003d38:	01f7f713          	andi	a4,a5,31
    80003d3c:	00e806b3          	add	a3,a6,a4
    80003d40:	0055c703          	lbu	a4,5(a1)
    80003d44:	00178793          	addi	a5,a5,1
    80003d48:	02077713          	andi	a4,a4,32
    80003d4c:	fc071ae3          	bnez	a4,80003d20 <uartintr+0xe0>
    80003d50:	00008067          	ret
    80003d54:	00008067          	ret

0000000080003d58 <kinit>:
    80003d58:	fc010113          	addi	sp,sp,-64
    80003d5c:	02913423          	sd	s1,40(sp)
    80003d60:	fffff7b7          	lui	a5,0xfffff
    80003d64:	00004497          	auipc	s1,0x4
    80003d68:	2db48493          	addi	s1,s1,731 # 8000803f <end+0xfff>
    80003d6c:	02813823          	sd	s0,48(sp)
    80003d70:	01313c23          	sd	s3,24(sp)
    80003d74:	00f4f4b3          	and	s1,s1,a5
    80003d78:	02113c23          	sd	ra,56(sp)
    80003d7c:	03213023          	sd	s2,32(sp)
    80003d80:	01413823          	sd	s4,16(sp)
    80003d84:	01513423          	sd	s5,8(sp)
    80003d88:	04010413          	addi	s0,sp,64
    80003d8c:	000017b7          	lui	a5,0x1
    80003d90:	01100993          	li	s3,17
    80003d94:	00f487b3          	add	a5,s1,a5
    80003d98:	01b99993          	slli	s3,s3,0x1b
    80003d9c:	06f9e063          	bltu	s3,a5,80003dfc <kinit+0xa4>
    80003da0:	00003a97          	auipc	s5,0x3
    80003da4:	2a0a8a93          	addi	s5,s5,672 # 80007040 <end>
    80003da8:	0754ec63          	bltu	s1,s5,80003e20 <kinit+0xc8>
    80003dac:	0734fa63          	bgeu	s1,s3,80003e20 <kinit+0xc8>
    80003db0:	00088a37          	lui	s4,0x88
    80003db4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003db8:	00002917          	auipc	s2,0x2
    80003dbc:	fe890913          	addi	s2,s2,-24 # 80005da0 <kmem>
    80003dc0:	00ca1a13          	slli	s4,s4,0xc
    80003dc4:	0140006f          	j	80003dd8 <kinit+0x80>
    80003dc8:	000017b7          	lui	a5,0x1
    80003dcc:	00f484b3          	add	s1,s1,a5
    80003dd0:	0554e863          	bltu	s1,s5,80003e20 <kinit+0xc8>
    80003dd4:	0534f663          	bgeu	s1,s3,80003e20 <kinit+0xc8>
    80003dd8:	00001637          	lui	a2,0x1
    80003ddc:	00100593          	li	a1,1
    80003de0:	00048513          	mv	a0,s1
    80003de4:	00000097          	auipc	ra,0x0
    80003de8:	5e4080e7          	jalr	1508(ra) # 800043c8 <__memset>
    80003dec:	00093783          	ld	a5,0(s2)
    80003df0:	00f4b023          	sd	a5,0(s1)
    80003df4:	00993023          	sd	s1,0(s2)
    80003df8:	fd4498e3          	bne	s1,s4,80003dc8 <kinit+0x70>
    80003dfc:	03813083          	ld	ra,56(sp)
    80003e00:	03013403          	ld	s0,48(sp)
    80003e04:	02813483          	ld	s1,40(sp)
    80003e08:	02013903          	ld	s2,32(sp)
    80003e0c:	01813983          	ld	s3,24(sp)
    80003e10:	01013a03          	ld	s4,16(sp)
    80003e14:	00813a83          	ld	s5,8(sp)
    80003e18:	04010113          	addi	sp,sp,64
    80003e1c:	00008067          	ret
    80003e20:	00001517          	auipc	a0,0x1
    80003e24:	3f050513          	addi	a0,a0,1008 # 80005210 <digits+0x18>
    80003e28:	fffff097          	auipc	ra,0xfffff
    80003e2c:	4b4080e7          	jalr	1204(ra) # 800032dc <panic>

0000000080003e30 <freerange>:
    80003e30:	fc010113          	addi	sp,sp,-64
    80003e34:	000017b7          	lui	a5,0x1
    80003e38:	02913423          	sd	s1,40(sp)
    80003e3c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003e40:	009504b3          	add	s1,a0,s1
    80003e44:	fffff537          	lui	a0,0xfffff
    80003e48:	02813823          	sd	s0,48(sp)
    80003e4c:	02113c23          	sd	ra,56(sp)
    80003e50:	03213023          	sd	s2,32(sp)
    80003e54:	01313c23          	sd	s3,24(sp)
    80003e58:	01413823          	sd	s4,16(sp)
    80003e5c:	01513423          	sd	s5,8(sp)
    80003e60:	01613023          	sd	s6,0(sp)
    80003e64:	04010413          	addi	s0,sp,64
    80003e68:	00a4f4b3          	and	s1,s1,a0
    80003e6c:	00f487b3          	add	a5,s1,a5
    80003e70:	06f5e463          	bltu	a1,a5,80003ed8 <freerange+0xa8>
    80003e74:	00003a97          	auipc	s5,0x3
    80003e78:	1cca8a93          	addi	s5,s5,460 # 80007040 <end>
    80003e7c:	0954e263          	bltu	s1,s5,80003f00 <freerange+0xd0>
    80003e80:	01100993          	li	s3,17
    80003e84:	01b99993          	slli	s3,s3,0x1b
    80003e88:	0734fc63          	bgeu	s1,s3,80003f00 <freerange+0xd0>
    80003e8c:	00058a13          	mv	s4,a1
    80003e90:	00002917          	auipc	s2,0x2
    80003e94:	f1090913          	addi	s2,s2,-240 # 80005da0 <kmem>
    80003e98:	00002b37          	lui	s6,0x2
    80003e9c:	0140006f          	j	80003eb0 <freerange+0x80>
    80003ea0:	000017b7          	lui	a5,0x1
    80003ea4:	00f484b3          	add	s1,s1,a5
    80003ea8:	0554ec63          	bltu	s1,s5,80003f00 <freerange+0xd0>
    80003eac:	0534fa63          	bgeu	s1,s3,80003f00 <freerange+0xd0>
    80003eb0:	00001637          	lui	a2,0x1
    80003eb4:	00100593          	li	a1,1
    80003eb8:	00048513          	mv	a0,s1
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	50c080e7          	jalr	1292(ra) # 800043c8 <__memset>
    80003ec4:	00093703          	ld	a4,0(s2)
    80003ec8:	016487b3          	add	a5,s1,s6
    80003ecc:	00e4b023          	sd	a4,0(s1)
    80003ed0:	00993023          	sd	s1,0(s2)
    80003ed4:	fcfa76e3          	bgeu	s4,a5,80003ea0 <freerange+0x70>
    80003ed8:	03813083          	ld	ra,56(sp)
    80003edc:	03013403          	ld	s0,48(sp)
    80003ee0:	02813483          	ld	s1,40(sp)
    80003ee4:	02013903          	ld	s2,32(sp)
    80003ee8:	01813983          	ld	s3,24(sp)
    80003eec:	01013a03          	ld	s4,16(sp)
    80003ef0:	00813a83          	ld	s5,8(sp)
    80003ef4:	00013b03          	ld	s6,0(sp)
    80003ef8:	04010113          	addi	sp,sp,64
    80003efc:	00008067          	ret
    80003f00:	00001517          	auipc	a0,0x1
    80003f04:	31050513          	addi	a0,a0,784 # 80005210 <digits+0x18>
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	3d4080e7          	jalr	980(ra) # 800032dc <panic>

0000000080003f10 <kfree>:
    80003f10:	fe010113          	addi	sp,sp,-32
    80003f14:	00813823          	sd	s0,16(sp)
    80003f18:	00113c23          	sd	ra,24(sp)
    80003f1c:	00913423          	sd	s1,8(sp)
    80003f20:	02010413          	addi	s0,sp,32
    80003f24:	03451793          	slli	a5,a0,0x34
    80003f28:	04079c63          	bnez	a5,80003f80 <kfree+0x70>
    80003f2c:	00003797          	auipc	a5,0x3
    80003f30:	11478793          	addi	a5,a5,276 # 80007040 <end>
    80003f34:	00050493          	mv	s1,a0
    80003f38:	04f56463          	bltu	a0,a5,80003f80 <kfree+0x70>
    80003f3c:	01100793          	li	a5,17
    80003f40:	01b79793          	slli	a5,a5,0x1b
    80003f44:	02f57e63          	bgeu	a0,a5,80003f80 <kfree+0x70>
    80003f48:	00001637          	lui	a2,0x1
    80003f4c:	00100593          	li	a1,1
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	478080e7          	jalr	1144(ra) # 800043c8 <__memset>
    80003f58:	00002797          	auipc	a5,0x2
    80003f5c:	e4878793          	addi	a5,a5,-440 # 80005da0 <kmem>
    80003f60:	0007b703          	ld	a4,0(a5)
    80003f64:	01813083          	ld	ra,24(sp)
    80003f68:	01013403          	ld	s0,16(sp)
    80003f6c:	00e4b023          	sd	a4,0(s1)
    80003f70:	0097b023          	sd	s1,0(a5)
    80003f74:	00813483          	ld	s1,8(sp)
    80003f78:	02010113          	addi	sp,sp,32
    80003f7c:	00008067          	ret
    80003f80:	00001517          	auipc	a0,0x1
    80003f84:	29050513          	addi	a0,a0,656 # 80005210 <digits+0x18>
    80003f88:	fffff097          	auipc	ra,0xfffff
    80003f8c:	354080e7          	jalr	852(ra) # 800032dc <panic>

0000000080003f90 <kalloc>:
    80003f90:	fe010113          	addi	sp,sp,-32
    80003f94:	00813823          	sd	s0,16(sp)
    80003f98:	00913423          	sd	s1,8(sp)
    80003f9c:	00113c23          	sd	ra,24(sp)
    80003fa0:	02010413          	addi	s0,sp,32
    80003fa4:	00002797          	auipc	a5,0x2
    80003fa8:	dfc78793          	addi	a5,a5,-516 # 80005da0 <kmem>
    80003fac:	0007b483          	ld	s1,0(a5)
    80003fb0:	02048063          	beqz	s1,80003fd0 <kalloc+0x40>
    80003fb4:	0004b703          	ld	a4,0(s1)
    80003fb8:	00001637          	lui	a2,0x1
    80003fbc:	00500593          	li	a1,5
    80003fc0:	00048513          	mv	a0,s1
    80003fc4:	00e7b023          	sd	a4,0(a5)
    80003fc8:	00000097          	auipc	ra,0x0
    80003fcc:	400080e7          	jalr	1024(ra) # 800043c8 <__memset>
    80003fd0:	01813083          	ld	ra,24(sp)
    80003fd4:	01013403          	ld	s0,16(sp)
    80003fd8:	00048513          	mv	a0,s1
    80003fdc:	00813483          	ld	s1,8(sp)
    80003fe0:	02010113          	addi	sp,sp,32
    80003fe4:	00008067          	ret

0000000080003fe8 <initlock>:
    80003fe8:	ff010113          	addi	sp,sp,-16
    80003fec:	00813423          	sd	s0,8(sp)
    80003ff0:	01010413          	addi	s0,sp,16
    80003ff4:	00813403          	ld	s0,8(sp)
    80003ff8:	00b53423          	sd	a1,8(a0)
    80003ffc:	00052023          	sw	zero,0(a0)
    80004000:	00053823          	sd	zero,16(a0)
    80004004:	01010113          	addi	sp,sp,16
    80004008:	00008067          	ret

000000008000400c <acquire>:
    8000400c:	fe010113          	addi	sp,sp,-32
    80004010:	00813823          	sd	s0,16(sp)
    80004014:	00913423          	sd	s1,8(sp)
    80004018:	00113c23          	sd	ra,24(sp)
    8000401c:	01213023          	sd	s2,0(sp)
    80004020:	02010413          	addi	s0,sp,32
    80004024:	00050493          	mv	s1,a0
    80004028:	10002973          	csrr	s2,sstatus
    8000402c:	100027f3          	csrr	a5,sstatus
    80004030:	ffd7f793          	andi	a5,a5,-3
    80004034:	10079073          	csrw	sstatus,a5
    80004038:	fffff097          	auipc	ra,0xfffff
    8000403c:	8e0080e7          	jalr	-1824(ra) # 80002918 <mycpu>
    80004040:	07852783          	lw	a5,120(a0)
    80004044:	06078e63          	beqz	a5,800040c0 <acquire+0xb4>
    80004048:	fffff097          	auipc	ra,0xfffff
    8000404c:	8d0080e7          	jalr	-1840(ra) # 80002918 <mycpu>
    80004050:	07852783          	lw	a5,120(a0)
    80004054:	0004a703          	lw	a4,0(s1)
    80004058:	0017879b          	addiw	a5,a5,1
    8000405c:	06f52c23          	sw	a5,120(a0)
    80004060:	04071063          	bnez	a4,800040a0 <acquire+0x94>
    80004064:	00100713          	li	a4,1
    80004068:	00070793          	mv	a5,a4
    8000406c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004070:	0007879b          	sext.w	a5,a5
    80004074:	fe079ae3          	bnez	a5,80004068 <acquire+0x5c>
    80004078:	0ff0000f          	fence
    8000407c:	fffff097          	auipc	ra,0xfffff
    80004080:	89c080e7          	jalr	-1892(ra) # 80002918 <mycpu>
    80004084:	01813083          	ld	ra,24(sp)
    80004088:	01013403          	ld	s0,16(sp)
    8000408c:	00a4b823          	sd	a0,16(s1)
    80004090:	00013903          	ld	s2,0(sp)
    80004094:	00813483          	ld	s1,8(sp)
    80004098:	02010113          	addi	sp,sp,32
    8000409c:	00008067          	ret
    800040a0:	0104b903          	ld	s2,16(s1)
    800040a4:	fffff097          	auipc	ra,0xfffff
    800040a8:	874080e7          	jalr	-1932(ra) # 80002918 <mycpu>
    800040ac:	faa91ce3          	bne	s2,a0,80004064 <acquire+0x58>
    800040b0:	00001517          	auipc	a0,0x1
    800040b4:	16850513          	addi	a0,a0,360 # 80005218 <digits+0x20>
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	224080e7          	jalr	548(ra) # 800032dc <panic>
    800040c0:	00195913          	srli	s2,s2,0x1
    800040c4:	fffff097          	auipc	ra,0xfffff
    800040c8:	854080e7          	jalr	-1964(ra) # 80002918 <mycpu>
    800040cc:	00197913          	andi	s2,s2,1
    800040d0:	07252e23          	sw	s2,124(a0)
    800040d4:	f75ff06f          	j	80004048 <acquire+0x3c>

00000000800040d8 <release>:
    800040d8:	fe010113          	addi	sp,sp,-32
    800040dc:	00813823          	sd	s0,16(sp)
    800040e0:	00113c23          	sd	ra,24(sp)
    800040e4:	00913423          	sd	s1,8(sp)
    800040e8:	01213023          	sd	s2,0(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	00052783          	lw	a5,0(a0)
    800040f4:	00079a63          	bnez	a5,80004108 <release+0x30>
    800040f8:	00001517          	auipc	a0,0x1
    800040fc:	12850513          	addi	a0,a0,296 # 80005220 <digits+0x28>
    80004100:	fffff097          	auipc	ra,0xfffff
    80004104:	1dc080e7          	jalr	476(ra) # 800032dc <panic>
    80004108:	01053903          	ld	s2,16(a0)
    8000410c:	00050493          	mv	s1,a0
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	808080e7          	jalr	-2040(ra) # 80002918 <mycpu>
    80004118:	fea910e3          	bne	s2,a0,800040f8 <release+0x20>
    8000411c:	0004b823          	sd	zero,16(s1)
    80004120:	0ff0000f          	fence
    80004124:	0f50000f          	fence	iorw,ow
    80004128:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	7ec080e7          	jalr	2028(ra) # 80002918 <mycpu>
    80004134:	100027f3          	csrr	a5,sstatus
    80004138:	0027f793          	andi	a5,a5,2
    8000413c:	04079a63          	bnez	a5,80004190 <release+0xb8>
    80004140:	07852783          	lw	a5,120(a0)
    80004144:	02f05e63          	blez	a5,80004180 <release+0xa8>
    80004148:	fff7871b          	addiw	a4,a5,-1
    8000414c:	06e52c23          	sw	a4,120(a0)
    80004150:	00071c63          	bnez	a4,80004168 <release+0x90>
    80004154:	07c52783          	lw	a5,124(a0)
    80004158:	00078863          	beqz	a5,80004168 <release+0x90>
    8000415c:	100027f3          	csrr	a5,sstatus
    80004160:	0027e793          	ori	a5,a5,2
    80004164:	10079073          	csrw	sstatus,a5
    80004168:	01813083          	ld	ra,24(sp)
    8000416c:	01013403          	ld	s0,16(sp)
    80004170:	00813483          	ld	s1,8(sp)
    80004174:	00013903          	ld	s2,0(sp)
    80004178:	02010113          	addi	sp,sp,32
    8000417c:	00008067          	ret
    80004180:	00001517          	auipc	a0,0x1
    80004184:	0c050513          	addi	a0,a0,192 # 80005240 <digits+0x48>
    80004188:	fffff097          	auipc	ra,0xfffff
    8000418c:	154080e7          	jalr	340(ra) # 800032dc <panic>
    80004190:	00001517          	auipc	a0,0x1
    80004194:	09850513          	addi	a0,a0,152 # 80005228 <digits+0x30>
    80004198:	fffff097          	auipc	ra,0xfffff
    8000419c:	144080e7          	jalr	324(ra) # 800032dc <panic>

00000000800041a0 <holding>:
    800041a0:	00052783          	lw	a5,0(a0)
    800041a4:	00079663          	bnez	a5,800041b0 <holding+0x10>
    800041a8:	00000513          	li	a0,0
    800041ac:	00008067          	ret
    800041b0:	fe010113          	addi	sp,sp,-32
    800041b4:	00813823          	sd	s0,16(sp)
    800041b8:	00913423          	sd	s1,8(sp)
    800041bc:	00113c23          	sd	ra,24(sp)
    800041c0:	02010413          	addi	s0,sp,32
    800041c4:	01053483          	ld	s1,16(a0)
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	750080e7          	jalr	1872(ra) # 80002918 <mycpu>
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	40a48533          	sub	a0,s1,a0
    800041dc:	00153513          	seqz	a0,a0
    800041e0:	00813483          	ld	s1,8(sp)
    800041e4:	02010113          	addi	sp,sp,32
    800041e8:	00008067          	ret

00000000800041ec <push_off>:
    800041ec:	fe010113          	addi	sp,sp,-32
    800041f0:	00813823          	sd	s0,16(sp)
    800041f4:	00113c23          	sd	ra,24(sp)
    800041f8:	00913423          	sd	s1,8(sp)
    800041fc:	02010413          	addi	s0,sp,32
    80004200:	100024f3          	csrr	s1,sstatus
    80004204:	100027f3          	csrr	a5,sstatus
    80004208:	ffd7f793          	andi	a5,a5,-3
    8000420c:	10079073          	csrw	sstatus,a5
    80004210:	ffffe097          	auipc	ra,0xffffe
    80004214:	708080e7          	jalr	1800(ra) # 80002918 <mycpu>
    80004218:	07852783          	lw	a5,120(a0)
    8000421c:	02078663          	beqz	a5,80004248 <push_off+0x5c>
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	6f8080e7          	jalr	1784(ra) # 80002918 <mycpu>
    80004228:	07852783          	lw	a5,120(a0)
    8000422c:	01813083          	ld	ra,24(sp)
    80004230:	01013403          	ld	s0,16(sp)
    80004234:	0017879b          	addiw	a5,a5,1
    80004238:	06f52c23          	sw	a5,120(a0)
    8000423c:	00813483          	ld	s1,8(sp)
    80004240:	02010113          	addi	sp,sp,32
    80004244:	00008067          	ret
    80004248:	0014d493          	srli	s1,s1,0x1
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	6cc080e7          	jalr	1740(ra) # 80002918 <mycpu>
    80004254:	0014f493          	andi	s1,s1,1
    80004258:	06952e23          	sw	s1,124(a0)
    8000425c:	fc5ff06f          	j	80004220 <push_off+0x34>

0000000080004260 <pop_off>:
    80004260:	ff010113          	addi	sp,sp,-16
    80004264:	00813023          	sd	s0,0(sp)
    80004268:	00113423          	sd	ra,8(sp)
    8000426c:	01010413          	addi	s0,sp,16
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	6a8080e7          	jalr	1704(ra) # 80002918 <mycpu>
    80004278:	100027f3          	csrr	a5,sstatus
    8000427c:	0027f793          	andi	a5,a5,2
    80004280:	04079663          	bnez	a5,800042cc <pop_off+0x6c>
    80004284:	07852783          	lw	a5,120(a0)
    80004288:	02f05a63          	blez	a5,800042bc <pop_off+0x5c>
    8000428c:	fff7871b          	addiw	a4,a5,-1
    80004290:	06e52c23          	sw	a4,120(a0)
    80004294:	00071c63          	bnez	a4,800042ac <pop_off+0x4c>
    80004298:	07c52783          	lw	a5,124(a0)
    8000429c:	00078863          	beqz	a5,800042ac <pop_off+0x4c>
    800042a0:	100027f3          	csrr	a5,sstatus
    800042a4:	0027e793          	ori	a5,a5,2
    800042a8:	10079073          	csrw	sstatus,a5
    800042ac:	00813083          	ld	ra,8(sp)
    800042b0:	00013403          	ld	s0,0(sp)
    800042b4:	01010113          	addi	sp,sp,16
    800042b8:	00008067          	ret
    800042bc:	00001517          	auipc	a0,0x1
    800042c0:	f8450513          	addi	a0,a0,-124 # 80005240 <digits+0x48>
    800042c4:	fffff097          	auipc	ra,0xfffff
    800042c8:	018080e7          	jalr	24(ra) # 800032dc <panic>
    800042cc:	00001517          	auipc	a0,0x1
    800042d0:	f5c50513          	addi	a0,a0,-164 # 80005228 <digits+0x30>
    800042d4:	fffff097          	auipc	ra,0xfffff
    800042d8:	008080e7          	jalr	8(ra) # 800032dc <panic>

00000000800042dc <push_on>:
    800042dc:	fe010113          	addi	sp,sp,-32
    800042e0:	00813823          	sd	s0,16(sp)
    800042e4:	00113c23          	sd	ra,24(sp)
    800042e8:	00913423          	sd	s1,8(sp)
    800042ec:	02010413          	addi	s0,sp,32
    800042f0:	100024f3          	csrr	s1,sstatus
    800042f4:	100027f3          	csrr	a5,sstatus
    800042f8:	0027e793          	ori	a5,a5,2
    800042fc:	10079073          	csrw	sstatus,a5
    80004300:	ffffe097          	auipc	ra,0xffffe
    80004304:	618080e7          	jalr	1560(ra) # 80002918 <mycpu>
    80004308:	07852783          	lw	a5,120(a0)
    8000430c:	02078663          	beqz	a5,80004338 <push_on+0x5c>
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	608080e7          	jalr	1544(ra) # 80002918 <mycpu>
    80004318:	07852783          	lw	a5,120(a0)
    8000431c:	01813083          	ld	ra,24(sp)
    80004320:	01013403          	ld	s0,16(sp)
    80004324:	0017879b          	addiw	a5,a5,1
    80004328:	06f52c23          	sw	a5,120(a0)
    8000432c:	00813483          	ld	s1,8(sp)
    80004330:	02010113          	addi	sp,sp,32
    80004334:	00008067          	ret
    80004338:	0014d493          	srli	s1,s1,0x1
    8000433c:	ffffe097          	auipc	ra,0xffffe
    80004340:	5dc080e7          	jalr	1500(ra) # 80002918 <mycpu>
    80004344:	0014f493          	andi	s1,s1,1
    80004348:	06952e23          	sw	s1,124(a0)
    8000434c:	fc5ff06f          	j	80004310 <push_on+0x34>

0000000080004350 <pop_on>:
    80004350:	ff010113          	addi	sp,sp,-16
    80004354:	00813023          	sd	s0,0(sp)
    80004358:	00113423          	sd	ra,8(sp)
    8000435c:	01010413          	addi	s0,sp,16
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	5b8080e7          	jalr	1464(ra) # 80002918 <mycpu>
    80004368:	100027f3          	csrr	a5,sstatus
    8000436c:	0027f793          	andi	a5,a5,2
    80004370:	04078463          	beqz	a5,800043b8 <pop_on+0x68>
    80004374:	07852783          	lw	a5,120(a0)
    80004378:	02f05863          	blez	a5,800043a8 <pop_on+0x58>
    8000437c:	fff7879b          	addiw	a5,a5,-1
    80004380:	06f52c23          	sw	a5,120(a0)
    80004384:	07853783          	ld	a5,120(a0)
    80004388:	00079863          	bnez	a5,80004398 <pop_on+0x48>
    8000438c:	100027f3          	csrr	a5,sstatus
    80004390:	ffd7f793          	andi	a5,a5,-3
    80004394:	10079073          	csrw	sstatus,a5
    80004398:	00813083          	ld	ra,8(sp)
    8000439c:	00013403          	ld	s0,0(sp)
    800043a0:	01010113          	addi	sp,sp,16
    800043a4:	00008067          	ret
    800043a8:	00001517          	auipc	a0,0x1
    800043ac:	ec050513          	addi	a0,a0,-320 # 80005268 <digits+0x70>
    800043b0:	fffff097          	auipc	ra,0xfffff
    800043b4:	f2c080e7          	jalr	-212(ra) # 800032dc <panic>
    800043b8:	00001517          	auipc	a0,0x1
    800043bc:	e9050513          	addi	a0,a0,-368 # 80005248 <digits+0x50>
    800043c0:	fffff097          	auipc	ra,0xfffff
    800043c4:	f1c080e7          	jalr	-228(ra) # 800032dc <panic>

00000000800043c8 <__memset>:
    800043c8:	ff010113          	addi	sp,sp,-16
    800043cc:	00813423          	sd	s0,8(sp)
    800043d0:	01010413          	addi	s0,sp,16
    800043d4:	1a060e63          	beqz	a2,80004590 <__memset+0x1c8>
    800043d8:	40a007b3          	neg	a5,a0
    800043dc:	0077f793          	andi	a5,a5,7
    800043e0:	00778693          	addi	a3,a5,7
    800043e4:	00b00813          	li	a6,11
    800043e8:	0ff5f593          	andi	a1,a1,255
    800043ec:	fff6071b          	addiw	a4,a2,-1
    800043f0:	1b06e663          	bltu	a3,a6,8000459c <__memset+0x1d4>
    800043f4:	1cd76463          	bltu	a4,a3,800045bc <__memset+0x1f4>
    800043f8:	1a078e63          	beqz	a5,800045b4 <__memset+0x1ec>
    800043fc:	00b50023          	sb	a1,0(a0)
    80004400:	00100713          	li	a4,1
    80004404:	1ae78463          	beq	a5,a4,800045ac <__memset+0x1e4>
    80004408:	00b500a3          	sb	a1,1(a0)
    8000440c:	00200713          	li	a4,2
    80004410:	1ae78a63          	beq	a5,a4,800045c4 <__memset+0x1fc>
    80004414:	00b50123          	sb	a1,2(a0)
    80004418:	00300713          	li	a4,3
    8000441c:	18e78463          	beq	a5,a4,800045a4 <__memset+0x1dc>
    80004420:	00b501a3          	sb	a1,3(a0)
    80004424:	00400713          	li	a4,4
    80004428:	1ae78263          	beq	a5,a4,800045cc <__memset+0x204>
    8000442c:	00b50223          	sb	a1,4(a0)
    80004430:	00500713          	li	a4,5
    80004434:	1ae78063          	beq	a5,a4,800045d4 <__memset+0x20c>
    80004438:	00b502a3          	sb	a1,5(a0)
    8000443c:	00700713          	li	a4,7
    80004440:	18e79e63          	bne	a5,a4,800045dc <__memset+0x214>
    80004444:	00b50323          	sb	a1,6(a0)
    80004448:	00700e93          	li	t4,7
    8000444c:	00859713          	slli	a4,a1,0x8
    80004450:	00e5e733          	or	a4,a1,a4
    80004454:	01059e13          	slli	t3,a1,0x10
    80004458:	01c76e33          	or	t3,a4,t3
    8000445c:	01859313          	slli	t1,a1,0x18
    80004460:	006e6333          	or	t1,t3,t1
    80004464:	02059893          	slli	a7,a1,0x20
    80004468:	40f60e3b          	subw	t3,a2,a5
    8000446c:	011368b3          	or	a7,t1,a7
    80004470:	02859813          	slli	a6,a1,0x28
    80004474:	0108e833          	or	a6,a7,a6
    80004478:	03059693          	slli	a3,a1,0x30
    8000447c:	003e589b          	srliw	a7,t3,0x3
    80004480:	00d866b3          	or	a3,a6,a3
    80004484:	03859713          	slli	a4,a1,0x38
    80004488:	00389813          	slli	a6,a7,0x3
    8000448c:	00f507b3          	add	a5,a0,a5
    80004490:	00e6e733          	or	a4,a3,a4
    80004494:	000e089b          	sext.w	a7,t3
    80004498:	00f806b3          	add	a3,a6,a5
    8000449c:	00e7b023          	sd	a4,0(a5)
    800044a0:	00878793          	addi	a5,a5,8
    800044a4:	fed79ce3          	bne	a5,a3,8000449c <__memset+0xd4>
    800044a8:	ff8e7793          	andi	a5,t3,-8
    800044ac:	0007871b          	sext.w	a4,a5
    800044b0:	01d787bb          	addw	a5,a5,t4
    800044b4:	0ce88e63          	beq	a7,a4,80004590 <__memset+0x1c8>
    800044b8:	00f50733          	add	a4,a0,a5
    800044bc:	00b70023          	sb	a1,0(a4)
    800044c0:	0017871b          	addiw	a4,a5,1
    800044c4:	0cc77663          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    800044c8:	00e50733          	add	a4,a0,a4
    800044cc:	00b70023          	sb	a1,0(a4)
    800044d0:	0027871b          	addiw	a4,a5,2
    800044d4:	0ac77e63          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    800044d8:	00e50733          	add	a4,a0,a4
    800044dc:	00b70023          	sb	a1,0(a4)
    800044e0:	0037871b          	addiw	a4,a5,3
    800044e4:	0ac77663          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    800044e8:	00e50733          	add	a4,a0,a4
    800044ec:	00b70023          	sb	a1,0(a4)
    800044f0:	0047871b          	addiw	a4,a5,4
    800044f4:	08c77e63          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    800044f8:	00e50733          	add	a4,a0,a4
    800044fc:	00b70023          	sb	a1,0(a4)
    80004500:	0057871b          	addiw	a4,a5,5
    80004504:	08c77663          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    80004508:	00e50733          	add	a4,a0,a4
    8000450c:	00b70023          	sb	a1,0(a4)
    80004510:	0067871b          	addiw	a4,a5,6
    80004514:	06c77e63          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    80004518:	00e50733          	add	a4,a0,a4
    8000451c:	00b70023          	sb	a1,0(a4)
    80004520:	0077871b          	addiw	a4,a5,7
    80004524:	06c77663          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    80004528:	00e50733          	add	a4,a0,a4
    8000452c:	00b70023          	sb	a1,0(a4)
    80004530:	0087871b          	addiw	a4,a5,8
    80004534:	04c77e63          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    80004538:	00e50733          	add	a4,a0,a4
    8000453c:	00b70023          	sb	a1,0(a4)
    80004540:	0097871b          	addiw	a4,a5,9
    80004544:	04c77663          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    80004548:	00e50733          	add	a4,a0,a4
    8000454c:	00b70023          	sb	a1,0(a4)
    80004550:	00a7871b          	addiw	a4,a5,10
    80004554:	02c77e63          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    80004558:	00e50733          	add	a4,a0,a4
    8000455c:	00b70023          	sb	a1,0(a4)
    80004560:	00b7871b          	addiw	a4,a5,11
    80004564:	02c77663          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    80004568:	00e50733          	add	a4,a0,a4
    8000456c:	00b70023          	sb	a1,0(a4)
    80004570:	00c7871b          	addiw	a4,a5,12
    80004574:	00c77e63          	bgeu	a4,a2,80004590 <__memset+0x1c8>
    80004578:	00e50733          	add	a4,a0,a4
    8000457c:	00b70023          	sb	a1,0(a4)
    80004580:	00d7879b          	addiw	a5,a5,13
    80004584:	00c7f663          	bgeu	a5,a2,80004590 <__memset+0x1c8>
    80004588:	00f507b3          	add	a5,a0,a5
    8000458c:	00b78023          	sb	a1,0(a5)
    80004590:	00813403          	ld	s0,8(sp)
    80004594:	01010113          	addi	sp,sp,16
    80004598:	00008067          	ret
    8000459c:	00b00693          	li	a3,11
    800045a0:	e55ff06f          	j	800043f4 <__memset+0x2c>
    800045a4:	00300e93          	li	t4,3
    800045a8:	ea5ff06f          	j	8000444c <__memset+0x84>
    800045ac:	00100e93          	li	t4,1
    800045b0:	e9dff06f          	j	8000444c <__memset+0x84>
    800045b4:	00000e93          	li	t4,0
    800045b8:	e95ff06f          	j	8000444c <__memset+0x84>
    800045bc:	00000793          	li	a5,0
    800045c0:	ef9ff06f          	j	800044b8 <__memset+0xf0>
    800045c4:	00200e93          	li	t4,2
    800045c8:	e85ff06f          	j	8000444c <__memset+0x84>
    800045cc:	00400e93          	li	t4,4
    800045d0:	e7dff06f          	j	8000444c <__memset+0x84>
    800045d4:	00500e93          	li	t4,5
    800045d8:	e75ff06f          	j	8000444c <__memset+0x84>
    800045dc:	00600e93          	li	t4,6
    800045e0:	e6dff06f          	j	8000444c <__memset+0x84>

00000000800045e4 <__memmove>:
    800045e4:	ff010113          	addi	sp,sp,-16
    800045e8:	00813423          	sd	s0,8(sp)
    800045ec:	01010413          	addi	s0,sp,16
    800045f0:	0e060863          	beqz	a2,800046e0 <__memmove+0xfc>
    800045f4:	fff6069b          	addiw	a3,a2,-1
    800045f8:	0006881b          	sext.w	a6,a3
    800045fc:	0ea5e863          	bltu	a1,a0,800046ec <__memmove+0x108>
    80004600:	00758713          	addi	a4,a1,7
    80004604:	00a5e7b3          	or	a5,a1,a0
    80004608:	40a70733          	sub	a4,a4,a0
    8000460c:	0077f793          	andi	a5,a5,7
    80004610:	00f73713          	sltiu	a4,a4,15
    80004614:	00174713          	xori	a4,a4,1
    80004618:	0017b793          	seqz	a5,a5
    8000461c:	00e7f7b3          	and	a5,a5,a4
    80004620:	10078863          	beqz	a5,80004730 <__memmove+0x14c>
    80004624:	00900793          	li	a5,9
    80004628:	1107f463          	bgeu	a5,a6,80004730 <__memmove+0x14c>
    8000462c:	0036581b          	srliw	a6,a2,0x3
    80004630:	fff8081b          	addiw	a6,a6,-1
    80004634:	02081813          	slli	a6,a6,0x20
    80004638:	01d85893          	srli	a7,a6,0x1d
    8000463c:	00858813          	addi	a6,a1,8
    80004640:	00058793          	mv	a5,a1
    80004644:	00050713          	mv	a4,a0
    80004648:	01088833          	add	a6,a7,a6
    8000464c:	0007b883          	ld	a7,0(a5)
    80004650:	00878793          	addi	a5,a5,8
    80004654:	00870713          	addi	a4,a4,8
    80004658:	ff173c23          	sd	a7,-8(a4)
    8000465c:	ff0798e3          	bne	a5,a6,8000464c <__memmove+0x68>
    80004660:	ff867713          	andi	a4,a2,-8
    80004664:	02071793          	slli	a5,a4,0x20
    80004668:	0207d793          	srli	a5,a5,0x20
    8000466c:	00f585b3          	add	a1,a1,a5
    80004670:	40e686bb          	subw	a3,a3,a4
    80004674:	00f507b3          	add	a5,a0,a5
    80004678:	06e60463          	beq	a2,a4,800046e0 <__memmove+0xfc>
    8000467c:	0005c703          	lbu	a4,0(a1)
    80004680:	00e78023          	sb	a4,0(a5)
    80004684:	04068e63          	beqz	a3,800046e0 <__memmove+0xfc>
    80004688:	0015c603          	lbu	a2,1(a1)
    8000468c:	00100713          	li	a4,1
    80004690:	00c780a3          	sb	a2,1(a5)
    80004694:	04e68663          	beq	a3,a4,800046e0 <__memmove+0xfc>
    80004698:	0025c603          	lbu	a2,2(a1)
    8000469c:	00200713          	li	a4,2
    800046a0:	00c78123          	sb	a2,2(a5)
    800046a4:	02e68e63          	beq	a3,a4,800046e0 <__memmove+0xfc>
    800046a8:	0035c603          	lbu	a2,3(a1)
    800046ac:	00300713          	li	a4,3
    800046b0:	00c781a3          	sb	a2,3(a5)
    800046b4:	02e68663          	beq	a3,a4,800046e0 <__memmove+0xfc>
    800046b8:	0045c603          	lbu	a2,4(a1)
    800046bc:	00400713          	li	a4,4
    800046c0:	00c78223          	sb	a2,4(a5)
    800046c4:	00e68e63          	beq	a3,a4,800046e0 <__memmove+0xfc>
    800046c8:	0055c603          	lbu	a2,5(a1)
    800046cc:	00500713          	li	a4,5
    800046d0:	00c782a3          	sb	a2,5(a5)
    800046d4:	00e68663          	beq	a3,a4,800046e0 <__memmove+0xfc>
    800046d8:	0065c703          	lbu	a4,6(a1)
    800046dc:	00e78323          	sb	a4,6(a5)
    800046e0:	00813403          	ld	s0,8(sp)
    800046e4:	01010113          	addi	sp,sp,16
    800046e8:	00008067          	ret
    800046ec:	02061713          	slli	a4,a2,0x20
    800046f0:	02075713          	srli	a4,a4,0x20
    800046f4:	00e587b3          	add	a5,a1,a4
    800046f8:	f0f574e3          	bgeu	a0,a5,80004600 <__memmove+0x1c>
    800046fc:	02069613          	slli	a2,a3,0x20
    80004700:	02065613          	srli	a2,a2,0x20
    80004704:	fff64613          	not	a2,a2
    80004708:	00e50733          	add	a4,a0,a4
    8000470c:	00c78633          	add	a2,a5,a2
    80004710:	fff7c683          	lbu	a3,-1(a5)
    80004714:	fff78793          	addi	a5,a5,-1
    80004718:	fff70713          	addi	a4,a4,-1
    8000471c:	00d70023          	sb	a3,0(a4)
    80004720:	fec798e3          	bne	a5,a2,80004710 <__memmove+0x12c>
    80004724:	00813403          	ld	s0,8(sp)
    80004728:	01010113          	addi	sp,sp,16
    8000472c:	00008067          	ret
    80004730:	02069713          	slli	a4,a3,0x20
    80004734:	02075713          	srli	a4,a4,0x20
    80004738:	00170713          	addi	a4,a4,1
    8000473c:	00e50733          	add	a4,a0,a4
    80004740:	00050793          	mv	a5,a0
    80004744:	0005c683          	lbu	a3,0(a1)
    80004748:	00178793          	addi	a5,a5,1
    8000474c:	00158593          	addi	a1,a1,1
    80004750:	fed78fa3          	sb	a3,-1(a5)
    80004754:	fee798e3          	bne	a5,a4,80004744 <__memmove+0x160>
    80004758:	f89ff06f          	j	800046e0 <__memmove+0xfc>

000000008000475c <__putc>:
    8000475c:	fe010113          	addi	sp,sp,-32
    80004760:	00813823          	sd	s0,16(sp)
    80004764:	00113c23          	sd	ra,24(sp)
    80004768:	02010413          	addi	s0,sp,32
    8000476c:	00050793          	mv	a5,a0
    80004770:	fef40593          	addi	a1,s0,-17
    80004774:	00100613          	li	a2,1
    80004778:	00000513          	li	a0,0
    8000477c:	fef407a3          	sb	a5,-17(s0)
    80004780:	fffff097          	auipc	ra,0xfffff
    80004784:	b3c080e7          	jalr	-1220(ra) # 800032bc <console_write>
    80004788:	01813083          	ld	ra,24(sp)
    8000478c:	01013403          	ld	s0,16(sp)
    80004790:	02010113          	addi	sp,sp,32
    80004794:	00008067          	ret

0000000080004798 <__getc>:
    80004798:	fe010113          	addi	sp,sp,-32
    8000479c:	00813823          	sd	s0,16(sp)
    800047a0:	00113c23          	sd	ra,24(sp)
    800047a4:	02010413          	addi	s0,sp,32
    800047a8:	fe840593          	addi	a1,s0,-24
    800047ac:	00100613          	li	a2,1
    800047b0:	00000513          	li	a0,0
    800047b4:	fffff097          	auipc	ra,0xfffff
    800047b8:	ae8080e7          	jalr	-1304(ra) # 8000329c <console_read>
    800047bc:	fe844503          	lbu	a0,-24(s0)
    800047c0:	01813083          	ld	ra,24(sp)
    800047c4:	01013403          	ld	s0,16(sp)
    800047c8:	02010113          	addi	sp,sp,32
    800047cc:	00008067          	ret

00000000800047d0 <console_handler>:
    800047d0:	fe010113          	addi	sp,sp,-32
    800047d4:	00813823          	sd	s0,16(sp)
    800047d8:	00113c23          	sd	ra,24(sp)
    800047dc:	00913423          	sd	s1,8(sp)
    800047e0:	02010413          	addi	s0,sp,32
    800047e4:	14202773          	csrr	a4,scause
    800047e8:	100027f3          	csrr	a5,sstatus
    800047ec:	0027f793          	andi	a5,a5,2
    800047f0:	06079e63          	bnez	a5,8000486c <console_handler+0x9c>
    800047f4:	00074c63          	bltz	a4,8000480c <console_handler+0x3c>
    800047f8:	01813083          	ld	ra,24(sp)
    800047fc:	01013403          	ld	s0,16(sp)
    80004800:	00813483          	ld	s1,8(sp)
    80004804:	02010113          	addi	sp,sp,32
    80004808:	00008067          	ret
    8000480c:	0ff77713          	andi	a4,a4,255
    80004810:	00900793          	li	a5,9
    80004814:	fef712e3          	bne	a4,a5,800047f8 <console_handler+0x28>
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	6dc080e7          	jalr	1756(ra) # 80002ef4 <plic_claim>
    80004820:	00a00793          	li	a5,10
    80004824:	00050493          	mv	s1,a0
    80004828:	02f50c63          	beq	a0,a5,80004860 <console_handler+0x90>
    8000482c:	fc0506e3          	beqz	a0,800047f8 <console_handler+0x28>
    80004830:	00050593          	mv	a1,a0
    80004834:	00001517          	auipc	a0,0x1
    80004838:	93c50513          	addi	a0,a0,-1732 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    8000483c:	fffff097          	auipc	ra,0xfffff
    80004840:	afc080e7          	jalr	-1284(ra) # 80003338 <__printf>
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	01813083          	ld	ra,24(sp)
    8000484c:	00048513          	mv	a0,s1
    80004850:	00813483          	ld	s1,8(sp)
    80004854:	02010113          	addi	sp,sp,32
    80004858:	ffffe317          	auipc	t1,0xffffe
    8000485c:	6d430067          	jr	1748(t1) # 80002f2c <plic_complete>
    80004860:	fffff097          	auipc	ra,0xfffff
    80004864:	3e0080e7          	jalr	992(ra) # 80003c40 <uartintr>
    80004868:	fddff06f          	j	80004844 <console_handler+0x74>
    8000486c:	00001517          	auipc	a0,0x1
    80004870:	a0450513          	addi	a0,a0,-1532 # 80005270 <digits+0x78>
    80004874:	fffff097          	auipc	ra,0xfffff
    80004878:	a68080e7          	jalr	-1432(ra) # 800032dc <panic>
	...
