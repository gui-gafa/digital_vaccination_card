# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dose.destroy_all
Vaccine.destroy_all
VaccineType.destroy_all
User.destroy_all

# guilheme citzen cpf: 33647778451
# guilherme sus cpf: 69885871446
# guilherme admin cpf: 22750758874

['lourdes', 'maique', 'marcio'].each do |name|
  User.create(
    email: "#{name}@gmail.com",
    password: '123456',
    first_name: name.capitalize,
    last_name: Faker::Name.last_name,
    cpf: CPF.generate,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.street_name,
    authenticated: false,
    role: 'Cidadão'
    )

  User.create(
    email: "#{name}@sus.com",
    password: '123456',
    first_name: name.capitalize,
    last_name: Faker::Name.last_name,
    cpf: CPF.generate,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.street_name,
    authenticated: true,
    role: 'Profissional da Saúde'
    )

  User.create(
    email: "#{name}@admin.com",
    password: '123456',
    first_name: name.capitalize,
    last_name: Faker::Name.last_name,
    cpf: CPF.generate,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.street_name,
    authenticated: true,
    role: 'Administrador'
    )
end

['guilherme'].each do |name|
  User.create(
    email: "#{name}@gmail.com",
    password: '123456',
    first_name: name.capitalize,
    last_name: Faker::Name.last_name,
    cpf: "33647778451",
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.street_name,
    authenticated: false,
    role: 'Cidadão'
    )

  User.create(
    email: "#{name}@sus.com",
    password: '123456',
    first_name: name.capitalize,
    last_name: Faker::Name.last_name,
    cpf: '69885871446',
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.street_name,
    authenticated: true,
    role: 'Profissional da Saúde'
    )

  User.create(
    email: "#{name}@admin.com",
    password: '123456',
    first_name: name.capitalize,
    last_name: Faker::Name.last_name,
    cpf: '22750758874',
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.street_name,
    authenticated: true,
    role: 'Administrador'
    )
end

# seeds de vaccine_types

  VaccineType.create(name:'Vacina BCG', prevents: 'Tuberculose – principalmente as formas graves, como meningite tuberculosa e tuberculose miliar (espalhada pelo corpo).', composition:'É composta pelo bacilo de Calmette-Guérin – origem do nome BCG – obtido pela atenuação (enfraquecimento) de uma das bactérias que causam a tuberculose. Completam sua composição o glutamato de sódio e a solução fisiológica (soro a 0,9%).', indication:'A vacina é indicada de rotina a partir do nascimento até antes de a criança completar 5 anos de idade.')
  VaccineType.create(name:'Vacina dengue', prevents: 'Infecção causada pelos quatro sorotipos de dengue: DEN1, DEN2, DEN3 e DEN4. A eficácia na prevenção da doença é de 65,5%; na prevenção de dengue grave e hemorrágica é de 93% e de internação é de mais de 80%.', composition:'Trata-se de vacina atenuada, composta pelos quatro sorotipos vivos do vírus dengue, obtidos separadamente por tecnologia de DNA recombinante. Contém ainda aminoácidos essenciais (incluindo fenilalanina), aminoácidos não essenciais, cloridrato de arginina, sacarose, trealose di-hidratada, sorbitol, trometamol e ureia. O diluente é constituído por cloreto de sódio e água para injeções. Não contém adjuvantes e conservantes.', indication:'A vacina está licenciada para crianças a partir de 9 anos de idade, adolescentes e adultos até 45 anos e é recomendada para indivíduos previamente infectados por um dos vírus da dengue (soropositivos com ou sem história da doença).')
  VaccineType.create(name:'Vacina dupla bacteriana do tipo adulto – dT', prevents: 'Difteria e tétano.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'A vacina é utilizada na rede pública para a proteção das pessoas que não iniciaram ou não terminaram o esquema contra difteria e tétano até os 7 anos de idade e para as doses de reforço a cada dez anos.')
  VaccineType.create(name:'Vacina dupla bacteriana infantil – DT', prevents: 'Difteria e tétano.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Para crianças menores de 7 anos de idade, que tenham apresentado encefalite nos sete dias subsequentes à administração de dose anterior de vacina contendo componente coqueluche (DTPw ou DTPa).')
  VaccineType.create(name:'Vacina tríplice bacteriana acelular do tipo adulto – dTpa', prevents: 'Difteria, tétano e coqueluche.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Para reforço das vacinas DTPa ou DTPw em crianças a partir de 3 anos de idade, adolescentes e adultos. Gestantes.Todas as pessoas que convivem com crianças menores de 2 anos, sobretudo com bebês com menos de 1 ano, incluindo familiares, babás, cuidadores e profissionais da Saúde.')
  VaccineType.create(name:'Vacina tríplice bacteriana acelular infantil – DTPa', prevents: 'Difteria, tétano e coqueluche.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Crianças com menos de 7 anos de idade. Mesmo as que já tiveram tétano, difteria, doença causada pelo Haemophilus influenzae tipo b (Hib) e/ou coqueluche devem ser imunizadas, uma vez que estas doenças não conferem proteção permanente frente a novas infecções.')
  VaccineType.create(name:'Vacina tríplice bacteriana acelular do tipo adulto com poliomielite – dTpa-VIP', prevents: 'Difteria, tétano, coqueluche e poliomielite.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Para crianças a partir de 3 ou 4 anos de idade, adolescentes e adultos, para os reforços de seus esquemas de vacinação. Pode substituir as formulações infantis da vacina tríplice bacteriana (DTPa e suas combinações) no reforço de 4 a 5 anos de idade. Para adolescentes e adultos, pode substituir a vacina dTpa e é a alternativa para viajantes com destinos às áreas de risco para poliomielite. Para gestantes, pode substituir a dTpa na indisponibilidade desta vacina ou quando se trata de gestante viajante para área de risco para a poliomielite.')
  VaccineType.create(name:'Vacina tríplice bacteriana de células inteiras – DTPw', prevents: 'Difteria, tétano e coqueluche.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Para todas as crianças até 7 anos de idade, mesmo as que já tiveram tétano, difteria e coqueluche, uma vez que estas doenças não conferem proteção permanente. A vacina é usada na rede pública como dose de reforço para crianças com idade entre 4 e 5 anos.')
  VaccineType.create(name:'Vacina tríplice bacteriana de células inteiras combinada com Hib e hepatite B (DTPw­-HB/Hib)', prevents: 'Difteria, tétano, coqueluche, meningite por Hib (bactéria Haemophilus influenzae tipo b) e hepatite B.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Crianças até 7 anos de idade.')
  VaccineType.create(name:'Vacinas combinadas à DTPa', prevents: 'Do que é feita:', composition:'Tratam-se de vacinas inativadas, portanto, não têm como causar doença.', indication:'As duas vacinas são recomendadas para crianças a partir de 2 meses de idade e podem ser aplicadas até os 7 anos, sempre que seja indicada cada uma das vacinas incluídas nessas combinações.')
  VaccineType.create(name:'Vacina febre amarela – FA', prevents: 'Febre amarela.', composition:'No Brasil estão disponíveis duas vacinas: a produzida por Bio-Manguinhos – Fiocruz, utilizada pela rede pública, e a produzida pela Sanofi Pasteur, utilizada pelos serviços privados de vacinação e eventualmente pela rede pública. Ambas são elaboradas a partir de vírus vivo atenuado, cultivado em ovo de galinha. A vacina de Biomanguinhos apresenta em sua formulação gelatina bovina, eritromicina, canamicina, cloridrato de L-histidina, L-alanina, cloreto de sódio e água para injeção. Já a da Sanofi Pasteur contém: lactose, sorbitol, cloridrato de L-histidina, L-alanina e solução salina.', indication:'Pessoas a partir de 9 meses de idade.')
  VaccineType.create(name:'Vacina febre tifoide', prevents: 'Febre tifoide.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Crianças a partir de 2 anos de idade, adolescentes e adultos que viajam para áreas de alta incidência da doença, em situações específicas de longa permanência e após análise médica criteriosa. Profissionais que lidam com águas contaminadas e dejetos.')
  VaccineType.create(name:'Vacina gripe (influenza) — trivalente ou quadrivalente', prevents: 'Infecção pelo vírus Influenza (que causa a gripe) contidos nas vacinas.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Para todas as pessoas a partir de 6 meses de vida, principalmente aquelas de maior risco para infecções respiratórias, que podem ter complicações e a forma grave da doença.')
  VaccineType.create(name:'Vacina hepatite A', prevents: 'Hepatite A.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Todas as pessoas a partir de 12 meses de vida.')
  VaccineType.create(name:'Vacina hepatite B', prevents: 'Infecção do fígado (hepatite) causada pelo vírus da hepatite B.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Para pessoas de todas as faixas etárias. Faz parte da rotina de vacinação das crianças, devendo ser aplicada, de preferência, nas primeiras 12-24 horas após o nascimento, para prevenir hepatite crônica – forma que acomete 90% dos bebês contaminados ao nascer.')
  VaccineType.create(name:'Vacina combinada hepatite A e B', prevents: 'Infecções do fígado (hepatites) causadas pelos vírus da hepatite A e hepatite B.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Crianças a partir dos 12 meses, adolescentes e adultos. É uma boa opção para pessoas que não foram vacinadas contra as duas hepatites.')
  VaccineType.create(name:'Vacina herpes zóster', prevents: 'O herpes zóster, popularmente conhecido como “cobreiro”, e sua principal complicação, a neuropatia pós-herpética, responsável por dor crônica, prolongada, de difícil controle e extremamente debilitante.', composition:'Trata-se de vacina composta por vírus vivos atenuados da varicela zóster (VVZ) da cepa Oka/Merck, sacarose, gelatina, ureia, cloreto de sódio, levoglutamato de sódio monoidratado, fosfato de sódio dibásico, fosfato de potássio monobásico, cloreto de potássio, traços de neomicina e de soro de bezerro e água para injeção. Não contém conservantes.', indication:'A vacina está licenciada para pessoas com 50 anos ou mais e é recomendada como rotina para maiores 60 anos de idade.')
  VaccineType.create(name:'Vacina Haemophilus influenzae tipo b – Hib', prevents: 'Doenças causadas pelo Haemophilus influenzae tipo b, principalmente meningite.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Crianças a partir de 2 meses, até 5 anos de idade. Crianças com mais de 5 anos, adolescentes e adultos com condições médicas que aumentam o risco para doenças por Hib: ausência de baço ou disfunção nesse órgão; antes e/ou após transplante de órgão ou medula óssea; após quimioterapia; entre outras.')
  VaccineType.create(name:'Vacina HPV2', prevents: 'Infecções persistentes e lesões pré-cancerosas causadas pelos tipos de HPV 16 e 18. É indicada para a prevenção de diversos tipos de câncer, em especial o de colo de útero.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'A partir de 9 anos de idade, o mais precocemente possível.')
  VaccineType.create(name:'Vacina HPV4', prevents: 'Infecções persistentes e lesões pré-cancerosas causadas pelos tipos de HPV 6,11,16,18. Também previne o câncer de colo do útero, da vulva, da vagina, do ânus e verrugas genitais (condiloma).', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'')
  VaccineType.create(name:'Vacina meningocócica B', prevents: 'Meningites e infecções generalizadas (doenças meningocócicas) causadas pela bactéria meningococo do tipo B.', composition:'Trata-se de vacina inativada, portanto, não causa infecção.', indication:'Para crianças e adolescentes, conforme recomendações das sociedades brasileiras de Pediatria (SBP) e Imunizações (SBIm). Para adultos com até 50 anos, dependendo de risco epidemiológico. Para viajantes com destino às regiões onde há risco aumentado da doença. Para pessoas de qualquer idade com doenças que aumentem o risco para a doença meningocócica.')
  VaccineType.create(name:'Vacina meningocócica C conjugada', prevents: 'Doenças causadas pelo meningococo C (incluindo meningite e meningococcemia).', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença .', indication:'')
  VaccineType.create(name:'Vacina Meningocócica conjugada quadrivalente — ACWY', prevents: 'Meningites e infecções generalizadas (doenças meningocócicas) causadas pela bactéria meningococo dos tipos A, C, W e Y.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Para crianças a partir de 2 meses e adolescentes. Para adultos e idosos com condições que aumentem o risco para a doença meningocócica ou de acordo com a situação epidemiológica. Para viajantes com destino às regiões onde há risco aumentado da doença.')
  VaccineType.create(name:'Vacina pneumocócica polissacarídica 23-valente – VPP23', prevents: 'Doenças causadas por 23 tipos de pneumococos.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'Para crianças acima de 2 anos, adolescentes e adultos que tenham algum problema de saúde que aumenta o risco para doença pneumocócica (diabetes, doenças cardíacas e respiratórias graves; sem baço ou com o funcionamento comprometido desse órgão; com problemas de imunidade, entre outras condições). Para pessoas a partir de 60 anos deve ser aplicada de rotina. Não é recomendada como rotina para crianças, adolescentes e adultos saudáveis.')
  VaccineType.create(name:'Vacinas pneumocócicas conjugadas', prevents: 'A vacina pneumocócica conjugada 10-valente (VPC10) previne cerca de 70% das doenças graves (pneumonia, meningite, otite) em crianças, causadas por dez sorotipos de pneumococos.', composition:'Tratam-se de vacinas inativadas, portanto não têm como causar as doenças.', indication:'A Sociedade Brasileira de Pediatria (SBP), a Sociedade Brasileira de Imunizações (SBIm) e a Federação Brasileira das Associações de Ginecologia e Obstetrícia (Febrasgo) recomendam a vacinação de meninas e mulheres de 9 a 45 anos de idade e meninos e jovens de 9 a 26 anos, o mais precocemente possível. Homens e mulheres em idades fora da faixa de licenciamento também podem ser beneficiados com a vacinação, de acordo com critério médico.')
  VaccineType.create(name:'Vacinas poliomielite', prevents: 'Poliomielite (paralisia infantil).', composition:'Vacina Oral Poliomielite (VOP) – É uma vacina oral atenuada bivalente, ou seja, composta pelos vírus da pólio tipos 1 e 3, vivos, mas “enfraquecidos”. Contém ainda cloreto de magnésio, estreptomicina, eritromicina, polissorbato 80, L-arginina e água destilada.', indication:'Desde 2016, o Programa Nacional de Imunizações (PNI) adota a vacina VIP nas três primeiras doses do primeiro ano de vida (aos 2, 4 e 6 meses de idade) e a VOP no reforço e campanhas anuais de vacinação.')
  VaccineType.create(name:'Vacina raiva', prevents: 'Raiva.', composition:'Trata-se de vacina inativada, portanto, não tem como causar a doença.', indication:'É recomendada a todas as pessoas que sofreram acidentes com animais (mordeduras ou lambeduras) que representem risco para a doença, de acordo com critérios que levam em consideração o local e o tamanho do ferimento e o grau de suspeita de raiva no animal envolvido, após avaliação pelo profissional de Saúde. Dependendo do caso, pode ser necessário, além da vacina pós-exposição, a administração do soro ou da imunoglobulina antirrábicos.')
  VaccineType.create(name:'Vacina rotavírus', prevents: 'Doença diarreica causada por rotavírus.', composition:'Vacina oral monovalente (VRH1) contém um tipo de rotavírus vivo “enfraquecido”, além de sacarose, adipatodissódico, meio Eagle modificado Dulbecco (DMEM) e água estéril.', indication:'Bebês de 6 semanas a 8 meses e 0 dia. A primeira dose deve ser obrigatoriamente aplicada até a idade de 3 meses e 15 dias, e a última dose até os 7 meses e 29 dias.')
  VaccineType.create(name:'Vacina tríplice viral (sarampo, caxumba e rubéola) – SCR', prevents: 'Sarampo, caxumba e rubéola.', composition:'Trata-se de vacina atenuada, contendo vírus vivos “enfraquecidos” do sarampo, da rubéola e da caxumba; aminoácidos; albumina humana; sulfato de neomicina; sorbitol e gelatina. Contém também traços de proteína do ovo de galinha usado no processo de fabricação da vacina.', indication:'Crianças, adolescentes e adultos.')
  VaccineType.create(name:'Vacina tetraviral (sarampo, caxumba, rubéola e varicela) – SCR-V', prevents: 'Sarampo, caxumba, rubéola e varicela.', composition:'Trata-se de vacina atenuada, contendo vírus vivos “enfraquecidos” do sarampo, da rubéola, da caxumba e da varicela (catapora), lactose anidra, sorbitol, manitol, aminoácidos, traços de neomicina e água para injeção. Contém traços de proteína do ovo de galinha usado no processo de fabricação da vacina.', indication:'A vacina SCR-V está recomendada para crianças e adolescentes com menos de 12 anos em substituição às vacinas tríplice viral (SCR) e varicela, quando a aplicação destas duas for coincidente. O Programa Nacional de Imunizações (PNI) adotou a vacina SCR-V aos 15 meses, como segunda dose da SCR e primeira da varicela.')
  VaccineType.create(name:'Vacina varicela (catapora)', prevents: 'Varicela (catapora).', composition:'Trata-se de vacina atenuada, contendo vírus vivos “enfraquecidos” da varicela, além de gelatina, traços de neomicina, água para injeção. Não contém traços de proteína do ovo de galinha.', indication:'É recomendada de rotina para crianças a partir de 12 meses (excepcionalmente, em situações de surto, por exemplo, também para crianças menores, a partir de 9 meses). Todas as crianças, adolescentes e adultos suscetíveis (que não tiveram catapora) devem ser vacinados.')
  VaccineType.create(name:'Palivizumabe', prevents: 'As formas graves de infecção pelo vírus sincicial respiratório (VSR), em bebês de alto risco.', composition:'Trata-se de um anticorpo específico contra o VSR, elaborado por técnica de engenharia genética (imunização passiva).', indication:'Está indicado no Calendário de vacinação SBIm prematuro para os recém-nascidos pré-termo com menos de 29 semanas de idade gestacional no primeiro ano de vida; para aqueles nascidos entre 29 e 32 semanas, até o sexto mês; e para portadores de doenças cardíacas e pulmonares nos dois primeiros anos de vida, independente da idade gestacional.')

  # seeds de vaccine 0 a 10 vacinas para cada usuario Cidadão

   User.where(role: "Cidadão").each do |user|
    rand(0..10).times do
      Vaccine.create(user_comment: 'loren ipsum', user_id: user.id, vaccine_type_id: VaccineType.all[rand(0..VaccineType.count - 1)].id )
    end
   end

   #seed de doses 1 a 3 doses por vacina

   Vaccine.all.each do |vaccine|
    rand(1..3).times do
      # random pra decidir se a dose vai estar validada ou não
      if 1 == rand(0..1)
        user = User.where(role: 'Profissional da Saúde')[rand(0..User.where(role: 'Profissional da Saúde').count - 1)]
        Dose.create(date: rand(10.years).seconds.ago, user: user, vaccine: vaccine)
      else
        Dose.create(date: rand(10.years).seconds.ago, vaccine: vaccine)
      end
    end
   end
