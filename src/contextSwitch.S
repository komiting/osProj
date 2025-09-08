.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
//ide posle naziva E i onda argumenti, v ako nema nista, da je int* bilo bi Pi kao pokazivac na int
//ali posto je context onda mora N kao namespace i putanja do strukture
//koristimo kompresiju, prva stvar definisana (3TCB) -> S_, pa
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    //u a0- prvi param, oldContext, u a1-drugi param - newContext
    //ra je tamo gde contextSwitch treba da se vrati kada dodje do ret
    //context blok --> : ra, pa 64 bita(8bajtova) je ra i onda idsp
    //                   sp
    sd ra, 0*8(a0);
    sd sp, 1*8(a0);

    ld ra, 0*8(a1);
    ld sp, 1*8(a1);
    ret