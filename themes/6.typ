#import "../conf.typ": *

= Компактные операторы
== Свойства компактных операторов
#definition[
  Оператор $A$ называется *компактным*, если
  #eq[
    $forall M subset.eq E_1 "- ограниченное" => A(M) subset.eq E_2 "- предкомпакт (вполне ограниченное)"$
  ]
  Множество компактных операторов обозначается как $cal(K)(E_1, E_2)$.
]

#proposition[
  Имеют место следующие утверждения:
  + $dim E_1 < oo => cal(L)(E_1, E_2) = cal(K)(E_1, E_2)$
  + $dim E_2 < oo => cal(L)(E_1, E_2) = cal(K)(E_1, E_2)$
]

#proof[
  Достаточно понимать, что в конечномерном пространстве любое ограниченное
  множество вполне ограниченно.

  + Коль скоро $dim "Im" A <= dim E_1 < oo$, то образ любого ограниченного множества
    оказывается ограниченным множеством в подпространстве $"Im" A$ конечной
    размерности.
  + Сразу следует из исходного заявления в доказательстве.
]

#note[
  Пусть $R$ -- кольцо, $I$ -- подгруппа $(R, +)$. Тогда $I$ называется
  *левосторонним идеалом*, если $I$ обладает свойством *поглощения слева*:
  #eq[
    $forall r in R : forall a in I : space r a in I$
  ]
  Аналогично определяется *правосторонний идеал*. Ну и *двухсторонний идеал*, если
  он является и левосторонним, и правосторонним.
]

#proposition[
  Пусть $E_1 = E_2 = E$. Тогда $cal(K)(E) subset.eq cal(L)(E)$ -- двухсторонний
  идеал.
]

#proof[
  + $cal(K)(E)$ является подгруппой по сложению. Пусть $A, B in cal(K)(E)$. Тогда $A + B in cal(K)(E) <=> (A + B)(B(0, 1))$ -- предкомпакт.

    Это эквивалентно тому, что из любой ограниченной последовательности в этом
    множество можно выделить сходящуюся подпоследовательность. Действительно,
    рассмотрим ограниченную последовательность $seq(y) subset.eq (A + B)(B(0,1))$. В
    силу определения, её элементы распишутся так:
    #eq[
      $forall n in NN : y_n = A x_n + B x_n; space x_n in B(0, 1)$
    ]
    Так как $A in cal(K)(E)$, то из $A x_n$ можно выделить сходящуюся
    подпоследовательность $A x_n_k$.

    Аналогично, уже из $B x_n_k$ можно выделить сходящуюся подподпоследовательность $B x_n_k_l$,
    причём предыдущая сходимость никуда не денется.
  + $cal(K)(E)$ поглощает элементы $cal(L)(E)$. Пусть $A in cal(K)(E)$ и $B in cal(L)(E)$.
    Тогда $A B in cal(K)(E)$ -- ибо $B(B(0, 1))$ тоже ограниченной множество.

    Для $B A$ сложнее, но мы можем воспользоваться приёмом предыдущего пункта.
    Рассмотрим ограниченную последовательность $seq(y) subset.eq B A(B(0, 1))$.
    Тогда $y_n = B A x_n, x_n in B(0, 1)$. В силу компактности оператора $A$, можно
    из $A x_n$ выделить сходящуюся подпоследовательность $A x_n_k$. Так как оператор $B$ непрерывен,
    сходимость в образе сохранится, а значит нужная подпоследовательность $y_n_k = B A x_n_k$ найдена.
]

#proposition[
  Если $dim E = oo$, то тождественный оператор $I in.not cal(K)(E)$.
]

#proof[
  Действительно, по теореме Рисса мы знаем, что замкнутый единичный шар в таком
  пространстве не компактен, а значит $B(0, 1) = I(B(0, 1))$ не может быть
  предкомпактом.
]

#corollary[
  Если $dim E = oo, A in cal(K)(E)$, то $A^(-1) in.not cal(L)(E)$.
]

#proof[
  Предположим противное. Тогда $I = A A^(-1) in cal(K)(E)$, чего не может быть.
]

#proposition[
  Если $A in cal(K)(E_1, E_2)$ и $x_n weak x_0 in E_1$, то $A x_n weak A x_0$.
]

#proof[
  Пусть $x_n weak x_0$. Тогда $seq(x)$ -- ограниченная, а значит $seq(A x)$ -- предкомпакт.
  Более того, из слабой сходимости аргументов и непрерывности $A$ следует слабая
  сходимость $A x_n weak A x_0$.
]

#theorem[
  Пусть $E_2$ -- банахово пространство, $A_n in cal(K)(E_1, E_2), A in cal(L)(E_1, E_2)$,
  причём $lim_(n -> oo) A_n = A$. Тогда $A in cal(K)(E_1, E_2)$.
]

#proof[
  В силу банаховости $E_2$ для компактности оператора $A$ достаточно проверить,
  что $A(B(0, 1))$ является вполне ограниченным множеством.

  Идея состоит в том, чтобы взять достаточно близкий оператор $A_n$, взять
  соответствующую ему $epsilon$-сеть и заявить, что она подойдёт к $A$:
  - $forall epsilon > 0 : exists n_0 in NN : space norm(A - A_n_0) < epsilon$
  - $forall epsilon > 0 : exists seq(idx: t, end: T, y) subset.eq E : forall x in B(0, 1) : exists s : space norm(A_n_0 x - y_s) < epsilon$
  Зафиксиоуем $epsilon > 0, n_0 in NN$ и $seq(idx: t, end: T, y) subset.eq E$ согласно
  утверждениям выше. Тогда:
  #eq[
    $forall x in B(0, 1) : exists y_s : space norm(A x - y_s) <= norm(A x - A_n_0 x) + norm(A_n_0 x - y_s) < 2 epsilon$
  ]
  Стало быть, $seq(idx: t, end: T, y)$ -- это конечная $2 epsilon$-сеть для $A(B(0, 1))$,
  то есть образ вполне ограничен.
]

== Свойства собственных значений компактного оператора.
#theorem[
  Пусть $lambda in CC without {0}$. Тогда $dim "Ker" A_lambda < oo$. Где $A$ -- компактный,
  а $lambda$ -- его СЗ.
]

#proof[
  Утверждение теоремы эквивалентно тому, что единичная сфера в пространстве $"Ker" A_lambda$ компактна.

  Это будет доказано, если мы покажем, как выделить из любой последовательности
  сходящуюся подпоследовательность. Пусть $seq(x) subset.eq S(0,1) subset.eq "Ker" A_lambda$.
  Отсюда $norm(x_n) = 1$ и $A x_n = lambda x_n$. Более того, $seq(x)$ -- ограниченное
  множество, а значит $seq(A x)$ -- предкомпакт.

  Стало быть, существует сходящаяся подпоследовательность $lim_(k -> oo) A x_n_k = y$.
  В силу того, что мы можем раскрыть образ через $x_n_k$, получим следующее:
  #eq[
    $lim_(k -> oo) lambda x_n_k = y <=> lim_(k -> oo) x_n_k = y / lambda$
  ]
  Однако, это ещё не все. Нам также нужно показать, что $y in "Ker" A_lambda$ -- принадлежит
  рассматриваемому подпространству. Для этого мы применим оператор $A$ к обеим
  частям предела:
  #eq[
    $lim_(k -> oo) A x_n_k = y = 1 / lambda A y <=> A y = lambda y <=> y in "Ker" A_lambda$
  ]
]

#theorem[
  Для любого $delta > 0$ вне любого круга ${abs(lambda) <= delta}$ может лежать
  лишь конечное число собственных значений компактного оператора $A$.
]

#proof[
  Проведём доказательство в частном случае $E = H$ -- гильбертово пространство, и $A$ -- компактный
  самосопряжённый оператор.

  Предположим противное. Тогда, должна существовать $delta_0 > 0$ и хотя бы
  счётное число $seq(lambda)$ собственных значений вне этого круга.

  Пусть $e_n$ -- нормированный собственный вектор для значения $lambda_n$. Тогда $seq(e)$ -- ограниченное
  множество, а значит $seq(A e)$ -- предкомпакт.

  Однако, в то же время верно неравенство (здесь мы используем ортогональность
  собственных векторов для теоремы Пифагора, это свойство самосопряжённого
  оператора):
  #eq[
    $forall n != m : norm(A e_n - A e_m)^2 = norm(lambda_n e_n - lambda_m e_m)^2 = lambda_n^2 + lambda_m^2 > 2delta_0^2$
  ]
  Получили явное противоречие с вполне ограниченностью.
]

#proposition[
  Если $lambda in sigma(A) without {0}$, то $lambda in sigma_p (A)$.
]

#proof[
  По критерию принадлежности спектру, существует нормированная последовательность $seq(x)$,
  для которой есть предел $lim_(n -> oo) A_lambda x_n = 0$.

  Так как $seq(x)$ -- ограниченное множество, то в силу компактности $A$ можно
  выделить сходящуюся последовательность $lim_(k -> oo) A x_n_k = y$. Тогда, мы в
  то же время имеем равенство
  #eq[
    $lim_(k -> oo)A x_n_k = lim_(k -> oo) lambda x_n_k = y$
  ]
  В силу непрерывности оператора $A$, его можно применить к последнему равенсту:
  #eq[
    $lim_(k -> oo) lambda A x_n_k = lambda y = A y <=> y in "Ker" A_lambda$
  ]
  Важно отметить, что $y != 0$. Это следует из упомянутого предела $lim lambda x_n_k = y$.
  Стало быть, $lambda in sigma_p(A)$.
]

== Теорема Фредгольма для компактных самосопряжённых операторов
#proposition(
  "Лемма об инвариантности",
)[
  Пусть $M subset.eq H$ -- подпространство, инвариантное относительно
  самосопряжённого оператора $A$ (то есть $A M subset.eq M$). Тогда $M^bot$ тоже
  инвариантно относительно $A$.
]

#proof[
  Пусть $x in M$. В силу условия, $A x in M$. Вопрос состоит в том, чтобы из $y in M^bot$ показать
  верность $A y in M^bot$. Проверим это явно:
  #eq[
    $forall x in M : (x, A y) = (A x, y) = 0 => A y in M^bot$
  ]
]

#proposition[
  Для компактного самосопряжённого оператора верно:
  #eq[
    $["Im" A_lambda] = "Im" A_lambda$
  ]
  Иначе говоря, образ $A_lambda$ замкнут.
]

#proof[
  Применим лемму об инвариантности. Заметим, что $M = "Ker" A_lambda$ инвариантен
  относительно $A$ и $A_lambda$, а значит и $M^bot = ["Im" A_lambda]$ инвариантен
  относительно тех же операторов.

  Если мы докажем, что $A_lambda |_(["Im" A_lambda])$ является сюръективным
  оператором, то всё будет доказано.

  Действительно, получим тогда $["Im" A_lambda] = A_lambda(["Im" A_lambda]) subset.eq "Im" A_lambda$.

  Обозначим $tilde(A) := A|_(["Im" A_lambda])$. Это тоже компактный
  самосопряжённый оператор, действующий из $["Im" A_lambda]$ в само себя. Заметим,
  как связаны собственные значения $tilde(A)$ с исходными:
  #eq[
    $tilde(A)_lambda = tilde(A) - lambda I = A|_(["Im" A_lambda]) - lambda I|_(["Im" A_lambda]) = (A - lambda I)|_(["Im" A_lambda]) = tilde(A_lambda)$
  ]
  А как мы знаем из теоремы Фредгольма для самосопряжённых операторов, все
  собственные вектора лежат в другой части прямого разложения.

  Раз так, то $lambda in.not {0} union sigma_p (tilde(A))$. А по одному из свойств
  СЗ компактного оператора, может быть верно $lambda in rho(tilde(A))$. Значит,
  оператор $tilde(A)_lambda = tilde(A_lambda)$ биективен, что включает в себя его
  сюръективность.
]

#theorem[
  Пусть $H$ -- гильбертово пространство над $CC$, $A$ -- компактный
  самосопряжённый оператор и $lambda in CC without {0}$. Тогда
  #eq[
    $H = "Im" A_lambda plus.circle "Ker" A_lambda$
  ]
]

#proof[
  Очевидно из комбинации теоремы Фредгольма для самосопряжённых операторов и
  утверждения о замкнутости образа компактного самосопряжённого оператора.
]

== Теорема Гильберта-Шмидта
#proposition[
  Если $A != 0$, то у этого оператора существует собственное значение $lambda != 0$.
]

#proof[
  Коль скоро $A != 0$ и мы рассматриваем компактный оператор, то $norm(A) != 0$.
  Коль скоро $A$ -- самосопряжённый оператор, то можно воспользоваться теоремой о
  норме, по ней $norm(A) = max(abs(m_-), abs(m_+))$.

  Так как $m_-, m_+ in sigma(A)$, то хотя бы одно из этих чисел ненулевое и
  является собственным значением, что и требовалось.
]

#theorem("Гильберта - Шмидта")[
  Пусть $H$ -- сепарабельное гильбертово пространство над полем $CC$, $A$ -- компактный самосопряжённый оператор. Тогда в $H$ найдётся ортонормированный базис, состоящий из собственных векторов оператора $A$.
]

#proof[
  Построим нужный базис явным образом. Для этого упорядочим все собственные значения оператора $A$ по модулю, причём включим в этот ряд копии этих значений столько раз, сколько соответствует размерности их собственного подпространства (в силу теоремы о конечности размерности собственных подпространств, это возможно). Получим ряд:
  #eq[
    $abs(lambda_1) >= abs(lambda_2) >= abs(lambda_3) >= ...$
  ]
  Пусть $v_n$ -- нормированный собственный вектор, соответствующий $lambda_n$ (для равных СЗ берём ортонормированные вектора базиса подпространства). 

  Образуем ортонормированную систему $seq(e)$, полученную перенумерованием вектором $v_n$ и добавлением собственных векторов, соответствующих $lambda = 0$ (конечно, если оно является СЗ).

  Так как мы находимся в сепарабельном пространстве, то для того, чтобы эта система была базисом, достаточно доказать её полноту. Обозначим $M = [angle.l seq(e) angle.r]$. Коль скоро это подпространство, можно применить теорему о проекции:
  #eq[
    $M plus.circle M^bot = H$
  ]
  Стало быть, $M = H <=> M^bot = {0}$. Покажем, что $M^bot$ инвариантно относительно $A$.

  В силу самосопряжённости $A$, достаточно это доказать для просто $M$ (лемма об инвариантности).

  Введём дополнительное обозначение $L := angle.l seq(e) angle.r$. Тогда $A L subset.eq L$ тривиальным образом. При этом оператор $A$ компактен, а значит непрерывен, то есть
  #eq[
    $A M = A([L]) subset.eq [A L] subset.eq [L] = M$
  ] 
  Исследуем $tilde(A) := A|_(M^bot)$. Возможно 2 случая:
  - $tilde(A) = 0$. Этот факт можно записать следующим образом:
    #eq[
      $forall x in M^bot : space tilde(A) x = 0 => x in "Ker" tilde(A)$
    ] 
    Стало быть, $M^bot subset.eq "Ker" tilde(A)$. Но так как мы рассмотрели сужение на $M^bot$, то по определению $M$ мы оставили $"Ker" A without {0}$ за бортом, то есть $"Ker" tilde(A) = {0} = M^bot$.
  - $tilde(A) != 0$. Предположим противное: $M^bot != {0}$.
    
    По доказанной выше лемме, у $tilde(A)$ существует ненулевое СЗ $lambda$. Обозначим за $e$ -- соответствующий нормированный собственный вектор, то есть $tilde(A)e = lambda e$, но ведь тогда и $A e = lambda e$. Получили противоречие с определением $M$.
]
