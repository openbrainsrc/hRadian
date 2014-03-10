<h3>Example 69 (UI in layout)</h3>

<plot-row height=300 aspect=4>
  <plot axis-x-transform="log"
        hist="[[histogram(abs(tstdata.x), {transform:'log',nbins:10})]]">
    <bars x="[[hist.centres]]" bar-min="[[hist.bins#0]]"
          bar-max="[[hist.bins#1]]" y="[[hist.freqs]]"></bars>
  </plot>
  <plot hist="[[histogram(tstdata.x,nbins)]]"
        ui-histogram-bins="nbins" ng-init="nbins=10">
    <bars x="[[hist.centres]]" y="[[hist.freqs]]"></bars>
  </plot>
</plot-row>

<plot-data name="tstdata" format="csv" cols="n,x">
1,0.581304505340074
2,1.21204235455325
3,0.191467862935979
4,0.404531617084031
5,0.506759598624394
6,0.579974647686925
7,0.382684910509303
8,-2.36128870643163
9,1.89853385492903
10,1.51575482857274
11,-0.431904144237637
12,-0.304952508634339
13,-0.0472550286669151
14,-0.0058502998104083
15,-0.455979726677393
16,-0.703417653034949
17,0.255388632630317
18,1.09731134379105
19,0.697465803808565
20,-0.264402673547431
21,1.54591244360426
22,1.09986112061775
23,1.34660874641935
24,0.456509355339534
25,0.263664668578228
26,-0.594252332034511
27,-0.294243291334233
28,0.57837626799701
29,-1.10914256320694
30,1.4434293738432
31,-1.26438302030187
32,0.101753107463398
33,0.513689399187403
34,-1.09244503560617
35,-0.552555846392525
36,0.347671234277075
37,-0.558130247609365
38,0.106963956723282
39,1.2032287934846
40,0.525191012512843
41,-1.03690272776065
42,-0.235681449524533
43,0.297027399890552
44,-2.05693751007016
45,-0.0417084132399849
46,0.582637025317222
47,1.42125980798211
48,-0.580608768909434
49,0.0956243769571078
50,0.802005931303493
51,0.824003277478335
52,-2.14783912515121
53,0.807233255372811
54,-1.52513452641772
55,-0.597262918993818
56,0.229519244695705
57,-0.629875815431466
58,-0.152705432076918
59,0.869737799584555
60,-0.118870157296424
61,-1.10181651496678
62,-2.13369456410395
63,-0.24742210045977
64,2.40473937762896
65,0.212164847575877
66,-0.139330958129738
67,-0.0102098201231723
68,-0.532649301154746
69,-0.658309759424839
70,0.944419601322942
71,1.92675981552114
72,0.881375787318808
73,-0.224021016626712
74,-2.41856038902337
75,-0.275075705996603
76,0.175430068000957
77,0.16340141423053
78,0.0933825118868204
79,-0.19664306453574
80,-0.0533818075386071
81,0.303397925306288
82,-0.0876865980659361
83,1.35915180280361
84,-0.636453860088958
85,0.511870772927348
86,-1.80148056676245
87,0.102986381796962
88,-0.680996883066525
89,0.129039555365379
90,-0.700970442675383
91,0.124190160122541
92,-0.675808464744478
93,-0.0662030190746051
94,-2.32028758607552
95,-1.17362062178039
96,0.642575128608807
97,-0.911472450317291
98,-0.942519871941206
99,-1.18108570774603
100,2.00060023587407
101,-0.171550620321027
102,-0.429271488243188
103,1.34903419512685
104,0.49780624972158
105,1.03108436948284
106,-1.20492821869859
107,-0.168733171053925
108,0.409747354168807
109,-1.31135097268624
110,-0.788738621269919
111,0.150780834637271
112,-0.76834524844712
113,0.367938229160688
114,-0.465370675629197
115,0.739772121356345
116,-0.774517628778821
117,1.2479317618961
118,-0.110160691076348
119,-1.3202290808219
120,0.563420811057244
121,1.18225736942164
122,1.54651798198507
123,-0.00357996201244856
124,-1.24536559718758
125,-0.601531923428799
126,0.00065203343386637
127,0.938226389255416
128,-0.854398620128164
129,1.49231245122247
130,0.261954400503337
131,-0.888858727069535
132,0.0271024519103931
133,-0.961439728449678
134,1.61451942518124
135,0.78845203329729
136,-0.240225573122382
137,0.338039975540622
138,-0.224430105475584
139,-0.423145488858262
140,-0.128891329304773
141,-0.275705006292522
142,-0.372760760058535
143,-0.0626698873986679
144,-0.537345523977488
145,0.0678603549418136
146,-1.21670762431525
147,-0.611399459618333
148,-1.17626960989247
149,-1.02293799481155
150,0.494282979259704
151,-0.754502457539321
152,1.57592674766961
153,1.91659419062246
154,0.418047881765635
155,0.629723220318726
156,0.308737918206588
157,-0.115064730174841
158,-1.42861596789923
159,-1.24854569659509
160,-1.07525479998502
161,-0.736764936828812
162,0.781132884529203
163,0.783316749112937
164,1.60936292914163
165,0.537798519340024
166,-1.44591500013095
167,0.648653212215553
168,-0.299465569001379
169,0.400058080976256
170,-1.67773087684039
171,1.17776148134736
172,0.435446027025588
173,-1.83194625907076
174,0.907819091227666
175,0.806474644499277
176,-0.833694412862375
177,1.74454557913016
178,1.27030762097459
179,0.772261413935723
180,0.218169249835251
181,-0.0990929702140498
182,0.586000490441215
183,0.402059353311619
184,-0.675415811448084
185,-0.234406469648711
186,0.164208425026398
187,-0.807504046452839
188,-0.886484136559894
189,-1.90495017559016
190,0.710101355941829
191,0.371741709364903
192,1.28880520774802
193,-0.525869279008791
194,1.13059761237859
195,-0.843551898930933
196,-0.81692055465668
197,1.05370936347226
198,-0.56261643681832
199,1.16103432289882
200,-0.948027229335353
201,0.996923366008889
202,0.441844462038733
203,-0.852856875884511
204,0.481752847811884
205,-1.90302750857959
206,1.52045791091913
207,-0.0275065587232198
208,1.08369781189724
209,-0.357387363094251
210,0.911301821033973
211,-0.452005301216677
212,0.221164975728594
213,-0.286975088579797
214,-2.36851333327686
215,-1.81983730667811
216,0.116250452408321
217,-0.827456383436207
218,-0.671683018599487
219,-1.31773060695083
220,0.199680579963757
221,1.19685113294236
222,-0.483254110665315
223,0.231947206866812
224,0.889036065142043
225,1.54807062941433
226,-0.913527054335245
227,-0.0970726679074887
228,-0.620333800957168
229,1.67212344089489
230,-0.907386945773644
231,0.166834397883082
232,-1.20824195912739
233,0.485829416862303
234,0.296188702518597
235,-0.132764050477799
236,-1.58415927047644
237,1.35930155457182
238,0.821874642020641
239,-0.189805769247142
240,-0.458586059431771
241,0.159793687424306
242,0.401001452842642
243,0.545075251689394
244,0.00750241290496845
245,0.541266630408081
246,-1.95103685588892
247,-0.494696956434973
248,1.06796758097058
249,-0.103322676962074
250,-0.339813025195118
251,-1.25283941282152
252,0.619689418381593
253,0.270924068524239
254,-0.546554047271335
255,-0.213537995852268
256,0.998211866248194
257,1.3737557002061
258,0.616584873925329
259,-1.232121033713
260,-1.70765237395592
261,1.9072905354085
262,-0.551121491957606
263,-0.789813803778333
264,1.18455098795674
265,-0.711821785943869
266,-0.961933993144581
267,-0.202215086540066
268,-0.389761149426567
269,1.31371770851131
270,0.25087230317096
271,-2.20997671884169
272,1.43977639105047
273,-0.76947803357973
274,0.178099185848976
275,-0.99191481939144
276,0.172723455239124
277,-0.360681055251426
278,-1.0278872164095
279,-0.252119864940456
280,-1.10948012006894
281,-0.0806350496564546
282,0.778584087770331
283,0.251540931139913
284,-0.111010122702107
285,-0.574499264278291
286,1.9383853335539
287,0.084106718939731
288,-0.0783940442150708
289,0.487203926266261
290,0.163408626093081
291,0.463628284943623
292,0.825758567066444
293,0.0861176465196436
294,-0.719326906214852
295,-1.21575745272619
296,1.60773374517567
297,-0.184600785390465
298,-1.67422145422977
299,-1.57626146257376
300,0.134281910316044
301,1.17198637428403
302,-1.19698391898972
303,0.439396962835662
304,0.246399896283238
305,-1.84117468603921
306,0.655837617755532
307,1.33256011625454
308,-1.70522471577044
309,-1.58198635282305
310,2.25805492713324
311,-0.0230608665911755
312,-0.598864622770893
313,-1.91144749258034
314,-0.653795004543117
315,1.72159497457253
316,0.0810542080303895
317,0.131800947273124
318,-0.0228001695842552
319,0.904227618963941
320,-1.27776706388104
321,1.15692935540042
322,-0.559462064682648
323,0.0309379515139439
324,-0.629868756649808
325,0.988546340875198
326,0.159038881605657
327,2.5860267767014
328,-0.761591306321063
329,1.47166126902885
330,1.81052557347233
331,-1.40567506471575
332,-1.1238743326457
333,-0.438813163448333
334,-1.41504543887722
335,-1.1758589978877
336,-0.241993778106371
337,-1.38850476039263
338,-0.587283173904634
339,0.686735190019949
340,1.00786054830359
341,-0.0543719834770949
342,0.707578579682358
343,-1.15315901528323
344,0.472322114662884
345,-0.493030863057756
346,-0.399061616248822
347,-0.0608312800688757
348,0.0956359677526711
349,0.284587735928472
350,0.226104623480562
351,0.781014212153452
352,-0.732929798808536
353,1.86657107807315
354,0.229235588576792
355,1.4099308379926
356,0.858675127664058
357,2.8561556651777
358,-0.046726116253407
359,0.750653904023443
360,0.891470361543305
361,1.84168624298464
362,2.13462714114365
363,2.15094966110615
364,2.00762260578766
365,0.0989530109933001
366,-0.405733340786729
367,0.294778588430519
368,1.37209358345816
369,-0.168735664923268
370,-0.863071628455621
371,-2.48337696630615
372,0.333797021043419
373,-0.564734171889018
374,-0.522507580720376
375,0.948050339769532
376,0.566243330108368
377,1.38415083641645
378,-1.61781756883314
379,1.06744752294832
380,-0.224126171283262
381,0.100752656282536
382,0.450227919278265
383,0.398495386378657
384,0.897866589231506
385,0.928973690814877
386,-0.75821276697024
387,0.702760082339478
388,-0.49822291157154
389,0.348984720313933
390,0.280981383587609
391,-0.618550046541062
392,0.46491725364276
393,0.00862621436331049
394,0.905154272621152
395,-0.51508352465454
396,-0.0122079949511342
397,1.28681703799685
398,-1.83601076015539
399,1.2867536591868
400,1.44894011440049
401,-0.724936528137437
402,0.862204219746617
403,0.86247000997088
404,0.639815905247209
405,-0.205337046765014
406,-0.982275725503387
407,0.700829423198498
408,-1.02849915340837
409,-1.36759126070836
410,0.600902688908239
411,-0.789496705421206
412,-0.993936714165506
413,0.000438340540509028
414,-0.908226767451531
415,0.558861422624497
416,-1.19753970466825
417,1.13247216743728
418,-0.936808911331148
419,-0.862582791094581
420,-0.336757326822107
421,0.324907176144949
422,-1.63370461957597
423,0.625028781770988
424,0.530712487514642
425,1.27973489084353
426,-0.676487673459008
427,0.100649183203181
428,1.32874284302104
429,-1.72171127839598
430,1.47357464113856
431,0.609423721727337
432,-0.806268500455108
433,-0.589904348632866
434,0.45345005673409
435,0.731618465837137
436,0.570986317297279
437,-0.165560346946315
438,1.75330072719015
439,0.0957997433357354
440,-1.98304551807937
441,1.35948900096037
442,-0.0710824124373133
443,0.854557757587512
444,-1.3817232181048
445,1.79217681711835
446,0.0343742877900416
447,1.47327786361259
448,-0.458792256091705
449,-1.14421622995988
450,-1.16215700338276
451,-1.16839614097253
452,-0.881673011006101
453,0.446957411404416
454,-1.88418907901248
455,-1.7183791084907
456,-0.757539110244134
457,0.433124098563154
458,0.045656108270228
459,-0.369897130377909
460,-0.158648428610961
461,0.261018411806017
462,0.302857387824001
463,-1.5053883190382
464,-0.0762566855145924
465,-0.665102208109862
466,0.0281792919544456
467,1.76577953217513
468,-0.190932489858799
469,-0.732619983215393
470,-0.0778475251954681
471,0.199726679397128
472,0.232604403455499
473,-0.94536434075653
474,-0.879516017608702
475,0.42435616244207
476,0.160892249429933
477,-0.71621796710002
478,-0.398238783536296
479,-0.500720041516363
480,-1.44204272833286
481,-0.162255455505292
482,0.895090837047363
483,-0.261254591212928
484,1.08901672761194
485,0.112072004652568
486,2.48798475983767
487,0.0824778185235224
488,0.00589036038221653
489,-1.45415675375309
490,-0.422245665546738
491,0.532335725819459
492,0.105042771271434
493,-1.48154563923078
494,0.303995690517052
495,-2.12152158715213
496,-1.23535011202778
497,0.205254042816672
498,0.729257031320897
499,-1.00480793568048
500,0.948108624586325
</plot-data>
