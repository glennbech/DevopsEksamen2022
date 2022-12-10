Forklar med egne ord. Hva er årsaken til dette problemet? 
Hvorfor forsøker Terraform å opprette en bucket, når den allerede eksisterer?

Årsaken til at terraform oppretter en bucket som allerede finnes er fordi 
det ikke er deklarert backenend i providerfilen. Backend er den som lagrer terraform state
Terraform state fil er den som er bindeleddet mellom infrastrukturen og terraform koden. 
Ved å putte backend i provider.tf så forteller vi selve terraform at det finnes en bucket  med visse informasjon som 
hvilken region bucket ligger i og fil navn