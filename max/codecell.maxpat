{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 91.0, 1372.0, 807.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 153.0, 629.5, 91.0, 22.0 ],
                    "text": "vexpr $f1 / 180."
                }
            },
            {
                "box": {
                    "candycane": 3,
                    "compatibility": 1,
                    "contdata": 1,
                    "ghostbar": 3,
                    "id": "obj-45",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 153.0, 672.0, 91.0, 99.0 ],
                    "setstyle": 1,
                    "signed": 1,
                    "size": 3,
                    "spacing": 4
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 153.0, 587.0, 59.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "euler.js",
                        "parameter_enable": 0
                    },
                    "text": "js euler.js"
                }
            },
            {
                "box": {
                    "candycane": 3,
                    "compatibility": 1,
                    "contdata": 1,
                    "ghostbar": 3,
                    "id": "obj-40",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 34.0, 672.0, 91.0, 99.0 ],
                    "setstyle": 1,
                    "signed": 1,
                    "size": 4,
                    "spacing": 4
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 97.0, 489.0, 123.0, 20.0 ],
                    "text": "reset reference frame"
                }
            },
            {
                "box": {
                    "candycane": 3,
                    "compatibility": 1,
                    "ghostbar": 3,
                    "id": "obj-31",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 271.0, 672.0, 91.0, 99.0 ],
                    "setstyle": 3,
                    "signed": 1,
                    "size": 3,
                    "spacing": 4
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 271.0, 587.0, 61.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "accel.js",
                        "parameter_enable": 0
                    },
                    "text": "js accel.js"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 66.0, 487.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 34.0, 541.0, 56.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "quat.js",
                        "parameter_enable": 0
                    },
                    "text": "js quat.js"
                }
            },
            {
                "box": {
                    "candycane": 3,
                    "compatibility": 1,
                    "ghostbar": 3,
                    "id": "obj-12",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 501.0, 672.0, 91.0, 99.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 3,
                    "signed": 1,
                    "spacing": 4
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 110.0, 1148.0, 673.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "autofit": 1,
                                    "data": [ 105835, "png", "IBkSG0fBZn....PCIgDQRA..BbO..DPnHX....P4.sIy....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGVTU8+.G+8EFXFQ.Q1wE.WIQAWPMboxEJQTbCEWRMMxRykeVVZKVZlZZps3W0bIaSyzRS+Ztuj1hlZY4RtflJtyNHfHyvLL+9Cdl6WFYQ.QM0Oudd5Ibl6btm4dm6894dNeNmqh2d6sYDBgPHDBgPbeOatWWADBgPHDBgPTwPBtWHDBgPHDhGPHA2KDBgPHDBwCHjf6EBgPHDBg3ADRv8BgPHDBgP7.BI3dgPHDBgPHd.gDb++BzjlzDBN3fuWWMDBgPHDBw84zbutBTZDczQSTQEE.z291265e9a1W9keI5zoicu6cym7IeRwtbKdwKlpTkpvANvAXNyYNE4xzxV1Rd629sAf23MdCNxQNxsc8SHDBgPHDOb59hf68vCOnxUtx2y972LWc0UTTTvau89VtdsyN6vGe7oXWFyl+eOCwTTTpvpiBgPHDBg3gO2WDb+Cx98e+2YhSbhXznQ96+9uuWWcDBgPHDBw8wJWA2OqYMKrwFaXKaYK3s2dSaZSaH6ryle5m9I9u+2+qUKavAGLcoKcg.BH.RIkT3O9i+fUtxUZUKV2jlzDhN5noZUqZjat4x4O+4YAKXAjZpoVr0gt10tR6ae6Afu669N1291Wopt6me9wvF1vvWe8kKdwKxRVxRHt3hS888xKunW8pWDbvAi81aOG6XGie3G9AN8oOcIVtd6s2DczQSPAEDokVZr3Eu3Rc8YPCZP.vbm6b47m+7.PG6XGI7vCGu7xKxHiL3Dm3DrnEsHLZzXopbEBgPHDBwCeJWA22fFz..nV0pVXu81q950u90mZUqZwG8QeD.zl1zFdsW60TS2D2c2cBHf.3QezGkwN1wB.8rm8jXhIFqJee7wGBIjPXnCcnjd5oWn0eKaYKY3Ce3.vUu5UY+6e+k559blybPmNc.4mdMevG7AL3AOXxJqrvCO7fErfEfVsZUWdu7xKZe6aOu9q+5EaKqW4JWYl27lmZ45iO9vG9geXop93qu9R.ADf5557m+7L7gOb5ZW6p5x3pqth+96OgFZnp2HfPHDBgPHD2raqYKG6s2dhKt33m+4eFSlLA.gEVX3iO9fhhhZf8YlYlLyYNS17l2L.T25VW5W+5G.z8t2cLa1LokVZLm4LG10t1E.Xmc1Qm5TmJz5zWe8k27MeS.H8zSmQMpQYUu.bqXxjI13F2HYjQFpeGBMzPAfoO8oqFX+V25VYUqZUX1rYTTT3cdm2oXKywMtwoFXeRIkD+3O9iXvfgxcNzGVXgA.ImbxDSLwvpW8pwrYy3hKtPiZTiJWkoPHDBgPHdv2sUN2mRJovnF0n.fvCOb0+tEsnEb1ydV0fa2yd1CZ0pkXiMVBO7vQQQgPBIDV4JWICYHCI+JhFM3me9QlYloZ51T25V2BsN+fO3CvVasECFLvHG4HQud8.vzl1zvEWbwpk8+9e+ursssMqds24cdGN9wON+7O+yLyYNS.Hf.BfcricnN.YO4IOI+m+y+A.b1YmoyctynUqV7vCOHojRpP0o5Tm5..FLXfgMrggQiFY8qe8p8fQ4kKt3BQEUT7q+5uxW9keYY5lXDBgPHDBwCetsBt+Tm5Tp+8O+y+rZv80u90mpV0pp9dgGd3Dd3ga0ms5Uu5.PHgDBiabiCmc14R05zRKjmQFYv0t10Te8.CLPryN6rZYqW8pWgBt+Dm3D.vwN1wTeMMZzfu95q5MiTvuWG9vGlN24NC.O5i9nrgMrgBUmpRUpBP9oHjkbh+e9m+ASlLgs1Zao56UA88e+2y.Fv.PiFMDQDQPDQDAFMZje5m9oRc59HDBgPHDhG9baEbeACfufSKjojRJb0qdU0+81111TGbrN6ryjQFYPxImLJJJL4IOYTTTPud87W+0eQhIlHcqac6Vttc2c2oe8qerxUtR.3O9i+vp5CPQNmwWbs9cBIjPQ98xM2bS8uuzktTQ9Y0qWOZznAGczQ0WyFarobEXO.qXEqf8rm8Pe5SenAMnA3omdhFMZnicrib5Se5h7FLDBgPHDBg31J39.BH.BIjP3jm7j7Juxqn95G8nGkScpSwXFyXxeknQCKe4KG.F6XGKAGbvbzidTpe8quZqkut0sNV1xVFst0stDCt+YdlmgO8S+TryN63oe5ml8t28xEtvEXZSaZ2NeUPud8biabCpTkpDsrksDGbvAtwMtA8rm8DH+aJn3d.SEe7wScpScvM2bit10tx11113Mdi2nHW1m64dNpScpCye9yuHuYAGbvAd0W8UQQQgctycxrm8rwe+8m4Mu4A.96u+2VeOEBgPHDBwCttsBtunFnoYlYlbnCcHLZzHm3DmfFzfFPG5PGHzPCEMZznN657a+1uwoO8oUGvpQGczzktzEqZ86hRJojByYNyQcv5N8oOcFzfFTER9n+8e+2yS+zOMZ0pkUspUQd4kmZquu+8uexKu7JxO229seKu9q+5.vvG9vUmIetY0qd0idzid..idzilILgITnkI6rylfBJHzoSGgDRHLjgLD0z9APcPIKDBgPHDBwM61Z1x4PG5PjYlYp9uSO8z4UdkWQMuyG+3GOG8nGESlLgCN3.1au8XxjIVyZVCqcsqk7xKOVzhVDlLYBEEEbzQG4nG8nEJP8a9e+q+5upN8W5hKtvK+xubIVOKsA9+Mey2vpW8pQud8nnnfs1ZKFMZj8su8wTm5TUWNKA4a4+um8rGV0pVE4latpKyANvAvfACVs9u7kur5rJTrwFawVOlvDl.okVZnnnfWd4E5zoibyMWV3BWHm4LmoT8cQHDBgPHDO7Qwau8tL2j2Vx46ctycxG9geHt6t6jSN4PVYkUw9Y72e+Qud8VkK9EjO93CokVZjSN4TVqN2Q3t6tiVsZ4xW9xkoOmWd4EokVZpA1eyzpUKt6t6b4KeYryN63ke4WlG6wdLf7a0+BlpNZ0pkZUqZQ7wGeQNe+KDBgPHDBQAcakVNVjbxIeKWlB9TfsnTbA8euRo46TQofCL2hhd85UuggoMsoQfAFH.jZpoVnbvWud8bxSdxxU8PHDBgPHDO7obEbelYlI1Zqs2x.YEkrLxHCxLyL4XG6Xpy5OBgPHDBgPTdUtRKGgPHDBgPHD+6ys0.pUHDBgPHDBw+dHA2KDBgPHDBwCHjf6EBgPHDBg3ADRv8BgPHDBgP7.BI3dgPHDBgPHd.gDbuPHDBgPHDOfnLOO2GTPAcmndHDBgPHDBgnT5nG8nE4qWtdHVUbElP7vffBJH4X.gPHD22RtN18+JoFaWRKGgPHDBgPHd.gDbuPHDBgPHDOfPBtWHDBgPHDhGPHA2KDBgPHDBwCHjf6EBgPHDBg3ADRv8BgPHDBg3ekTTTnCcnC3s2deutpTt3s2dSG5PGtqtNKWSElOrxImbh5Uu5A.ImbxbgKbgBsLd4kWT8pWc.3Lm4Lbsqcs6p0QgPHtao90u93niNVjuWJojBm+7mW8eO1wNVBIjPvQGcjCe3Cyjm7jAft10tRu5UuvEWbgrxJKF7fG7ciptPHJBN5nizhVzBZTiZDojRJbnCcHN9wO98z5zK8RuDcnCc.SlLQu6cuI2by8dZ8orPqVsrjkrDTTTnQMpQL24N26JqWI39xf1111xHG4HAfbxIG5cu6cgVloO8oiWd4E.r4MuYl+7m+c05nPHD2s7Nuy6fSN4TQ9dolZppApOfAL.BKrvTeO6ryN.vGe7ggO7gWnWuhzDm3DopUsp7G+wev27MeSEd4KDOnnScpSLpQMJTTTTesALfAPBIj.uzK8RjQFY..CbfCjl1zlRxImLu268dUXqe2byMdi23M.fUrhUvAO3AAf7xKuJr0wcalMaV8uK310Riha6QogDbeYPA2IoSmNZYKaIG3.GP807vCOTCrWHDhGlTvyOBP1Yms5eGbvAqtL8u+8mrxJK.HzPCUcYlwLlA+5u9qU30ql27liFMZvrYyRv8BQwnF0nFL5QOZf7ONMwDSDGbvAbxImvKu7h268dO0F2LzPCE+82e7yO+pPqCUoJUg.BH..nt0stpAy9we7GyQNxQ3XG6X2W0p8.XvfAF1vFFAFXf7i+3OVl9rE21iRCI39aCQGczVEb+S+zOcwtr1au8DczQSKZQKvYmclSdxSx5V25H1XiUcYbzQGYjibjT6ZWazoSGW9xWlu669N9q+5uTWlN1wNR3gGNd4kWjQFYvINwIXQKZQXznQ0ko6cu673O9iimd5IW6ZWiie7iym7IehUW7swMtwzst0M72e+4bm6brrksLFyXFC.rrksLNzgNDP9oYTu6cuowMtwjWd4wgO7g4a+1ukTRIka+MfBg3ABomd5LvANvh78l5TmpZ5LB42Z+6e+6GWbwEd7G+wUe8nhJJZSaZCyblyDH+aHnKcoKDP.APJojB+we7GrxUtRqNOVMpQMnW8pWDXfAhc1YGm6bmiu5q9JtvEt.93iO7JuxqfFM4eYN+82elyblCKe4K2pyoJDh7iavhW8UeUN4IOI.LsoMMZbiaL95qunQiFl3DmnZpGqUqVlyblC6e+6mu8a+V.nIMoIDczQS0pV0H2bykye9yyBVvBH0TSE.FyXFC94meb5SeZRHgD3IexmjjRJI9oe5mHpnhRsNDQDQPKaYK4Mdi2fm3IdB5Tm5DgEVXpsj8rl0rvFargsrksfe94GspUsh7xKO10t1EqXEqPsb71auI5nilfBJHRO8zYQKZQLfAL.pRUphU06Bpqcsqz912dxImbXwKdwL7gOb7vCO33G+3r5UuZqRIaMZzPzQGMgDRH3t6tyYNyYXW6ZW7K+xuntLiYLiAsZ0hc1YGacqa0px+q9puhgNzgR0pV0H93imO3C9.hO93oCcnCE61C850eK2eJA2eaHf.B.6s2dLXv.P9osSQQQQg+y+4+nd.Ajeq72111Vdq25s3PG5P3fCNvxV1xrpaocyM2H3fCl4Mu4wV1xVX3Ce3z0t1U022UWcE+82eBMzPYPCZP.v69tuKMsoMUcYpZUqJ96u+zjlzDd9m+4Afl0rlw67NuiZWD4kWdQSaZSQqVs.Psqcs4PG5P3gGdvm7IeB1au8pkWMpQMnCcnCDSLwn1EcBgPTbZbiar54ZTTTHf.B.SlLgmd5It3hKpKW8pW8nl0rl.PaZSa30dsWS8y4t6tS.AD.O5i9nL1wNV.vWe8k4N24pF7Nj+4xZQKZAu4a9lXiM1n1pWP981Z.AD.0pV0RBtWHtIUpRUR8ue7G+wI1XiEylMyDm3DU64KiFMRHgDRgNd1nQi7se62RO6YOIlXhwpx0Ge7gPBIDF5PGJomd5zxV1RbwEWnN0oNpG6V0pVURN4jspm.byM2vM2bC6s2dBIjPHf.BvparuAMnA.fe94G5zoS80sjFQ6bm6Dmc1Yl+7muZrM93iO7ge3GpV2sTuuYMoIMQ8bGe7G+wp0Su81ad7G+wIlXhgTRIETTTXdyadTiZTCqp2srksjZVyZpdSFV54xqd0qxV25Vsp7m4LmoZ46pqtxrm8rYfCbfzvF1vhc6QoI3dY1xobJ4jSFEEE06rJjPBAc5zgACFTC12hQNxQpFX+l27lYFyXFjYlYhhhBu0a8V.Pm6bmUCre1yd1L1wNVRM0TwrYypAzaImUSN4jIlXhgUu5UiYylwEWbgF0nFgNc5nIMoIX1rYNwINAyZVyRc.sUspUM7vCO.fILgIndv4ANvAXm6bmVE.uESe5SG6s2dLa1LKbgKjEtvEhYyloRUpRLoIMoJzsmBg39WN4jSrfEr.q9um5odJ.XQKZQpsZmQiFYoKcor7kubV7hWLG9vGVsLV4JWIKXAK.EEE0.6yLyLYlyblr4MuYf76Z590u9A.SYJSQ8hhaXCafUu5UiISlvVaskm+4edN24NGKcoKUMffTSMUV5RWJ+7O+y201tHD2uXm6bmp+c25V2X8qe8rzktTF8nGMt5pqpYGvm7IeBomd5.fISlXoKco7ke4WBjeq+a1rYRKszXNyYNrqcsKf7GKMcpScxp0mFMZH6ryl8rm8vN24NYSaZSr90ud02+HG4Hr3EuX0T3q3nSmN9ke4Wr5F1CO7vAxOVGKA1ewKdQ13F2H4jSNk4bee26d2boKcI05skdOXTiZTpA1exSdR9rO6y35W+5.4eSF95qu2xxNqrxhMsoMolFit3hK3gGdTt2dXgzx8kSaZSahAO3AS3gGNey27Mz291W.X+6e+7nO5iZ0x13F2Xf7yisXiMVzoSG+9u+6zgNzAzpUKt4laV05S8rm8jsu8syXFyXTOHpfbwEWHpnhhe8W+U9xu7Ks5tYiLxHUWFu7xK9y+7OUu6u.CLP16d2KUtxUF.N1wNFSYJSA.RJojTunoEVl1ohO93ImbxQc47zSOqvy0NgPb+Kas01Bcgr.CLP1111FaXCafvBKLb0UWwjISr10tV0ko10t1pmebqacqjTRIQiZTiTu36d1ydPqVsDarwR3gGNJJJDRHgvJW4JwM2bCH+K5svEtPf7CfuUspUbsqcMxLyLYsqcs7LOyyfFMZHwDSzp0sPH9e9q+5u3y+7OmAMnAgFMZPQQAu7xKdpm5o3odpmhUspUwxV1xXSaZSDQDQfKt3B4latVcL0PFxP.xO.X+7yOxLyLo8su8.4ei4EjISlXPCZPV0JzlMalt0stA.G9vG1pfaKNwFarpox2xW9xwEWbgZUqZAfZbJ23F2fQLhQ..+vO7CpmunzXFyXFru8sO.3a9luAmbxI0.5szh74jSN7Juxq.jeP9u+6+9.42CjE0rpXA8RuzKQRIkDm3DmfwMtwA.cnCcfUspUUt1dXgDbe4z5V25XPCZP3latg+96uZWD80e8WWnf6c2c2AxuafrzkxETyZVyXiabizyd1SbzQGoN0oNTm5TGF9vGNolZp7Nuy6vYNyY36+9umALfAfFMZHhHhfHhHBLZzH+zO8Spc0z.Fv.n28t2EYKwCn9id.0bpCf+7O+SqBt2We8U8Br93iOEpdqSmNrwFatudTrKDhJFFLXfUu5Ua0q8m+4eVtJqPBID0+N7vCWsU3rn5Uu5Vc9oSe5Sq9dqe8quLcAPgP7+rl0rF99u+6oCcnCz5V2ZBJnfvAGb..5ae6K+2+6+sDSG2PBIDF23FGN6ry2x0UZokVoJ8RtUrzh5.jPBIfKt3B1XS9Ikhkoo2DRHAqVdK8vWow92+9U+6yctyQvAGr51DKw1kTRIotLEbZCsgMrgkXYa1rY0O6QO5QUe8JhYMLI39xICFLPrwFKOxi7H7du26ghhBojRJV8CMKxImbvN6rCylMypV0pTecmc1YxHiL3u+6+lrxJKF3.GHQDQD73O9ii+96O5zoCWc0Ul1zlF8qe8iUrhUvd1ydnO8oOzfFz.7zSOQiFMzwN1QN8oOMW3BWfALfA.j+ANG9vGlpV0pp1xX.DWbwo92EbPtUvkAr9fgqd0qxO8S+DP9Grb8qecLa1bglcLDBwCmxN6rsZPrc63pW8pp+81111TSoGKmuL4jS1pyOU0pVU0+1N6rCGbvALYxTot6qEBAzzl1TpRUpBIkTRryctS0zzYBSXB7XO1iA.srksjcricTjedEEEl7jmLJJJnWud9q+5uHwDSTskmuY2MZXvryNab1YmwSO8T8071auK0A1C4e9kBdNHH+dc.9ew1YIXe.qdteTvf9uaSx49aCVBT2x777V25VKxkyR.0lLYhMu4MyxW9x4PG5P3u+9SvAGL4latzst0Ml3DmHMnAMfwO9wSu6cuU+bUtxUFGbvAlzjlDCcnCk8u+8SLwDi5zVEj+LAQqacqU+2u1q8ZL6YO6BcW1FLXP8hdAGbv7Zu1qwnG8nUuo.KzqWO23F2.H+tb+q+5ulku7kSBIj.AETP3u+9KA2KDB.vFarAu7xKq9uha9u+VwRWfC4289Ke4Kmku7ki81aOAGbv3gGdfd85USUvV25ViNc5PQQgEu3EyW+0eMKdwKtPkqWd4UYNWaEhGVLjgLDdkW4UXFyXFDXfABje.6VZcZ3+05xVt1uVsZUCls90u9pGest0sNl5TmJ+8e+2ko5PAm0+JXiOVdc1ydV.vAGbf4N24xy8bOGe7G+wkox3sdq2Bc5zQaaaaUSyGKA6aIFM2byMZTiZD.V8b632+8e+1p9e6r8PZ49aC+9u+6jSN4fNc5vrYyrl0rlhb4V1xVl5Hh9K9hufLyLS06.L6ryljSNYr2d6o4Mu4.4OuLmVZoQ0pV0.fye9yS1YmMAETPnSmNBIjPXHCYHTkpTE00wl27lwCO7Pcv2tfEr.zqWuU2QoESe5SmoMsoghhh5L7id85UG3IVrl0rFF3.GHd5om78e+2id85UOPtfcgjPHd3lyN6LKcoK0pWKkTRgm4YdlxbYYYJ9sAMnAzgNzABMzPQiFMpoZ3u8a+FP94Nae5SePmNc7ce22A7+dHwTvAG3YO6Yo90u9T0pVUV+5WOexm7IroMsox02Sg3AUqd0qVcx138e+2GCFLfc1Ym5wTokVZp8X1u8a+F0pV0BEEEV4JWIG3.GfoN0ohYylQQQgniNZ5RW5Rw9zqt3bgKbA0XQBMzP4G9gef92+9Wt+NMiYLC9hu3KPmNcT6ZWapcsqsZVGTZuQ+5Uu5UnTNbcqac.+uX6TTTXFyXFXznQ0wOYpolpUSU5kGE21iRSuRJsb+so8t28B.m5TmpXyerie7iy69tuKYkUVnnnnFXukm5aP9GXsksrE0YiFKA1GWbwoNxrmvDl.okVZpCzEc5zQt4lKKbgKjyblyv9129XO6YOX1rYr0VaoRUpRE4cNdjibDd4W9kYm6bmbtycN14N2IScpSU88szkSqbkqj0rl0fd85wN6rS8.0Ce3CqNK+HDBQQofW7rr1E7ie7imidzihISlvAGb.6s2dLYxDqYMqQc.78ke4WxF23FI2byEEEETTTvrYyricrCqtQiktzkpdwPEEk6HOEbEh628K+xuvG+werZqEau81qdLbbwEGuvK7BpK6ZVyZrJ03zoSG4kWdrnEsHLYxDJJJ3niNxQO5QKTO7a4eWb87+JW4JUqCVNttjTvx4lOOSVYkEuvK7Brl0rFNyYNCG7fGjQMpQoFiik+eIU1adyaVccXznQ1912t53543G+3LkoLE0yuXYJC8RW5RLhQLBqZ48hqNWb0cKJqaOrPwau8tLkaEAETPRq1davAGb.e80WN24NWwdy.0nF0.sZ0xYO6YKxeDnUqVpUspEwGe7E4roiM1XCUqZUiqbkqTj+fYlybl3t6tyUtxU3se62FMZzvjm7jUy69XhIFqNvExed42Ymclycty8P+fnUNFPHt6we+8G850aUt3ey7vCOPqVsE4XdxBEEEr0VaK1K3JDOLojtNlWd4EMnAMfzRKMN1wNVIdLic1YWgdpw5iO9PZoklZpyUdnQiFxKu7tsh234e9mmG8QeTLXv.SbhSjTRIE5Uu5EO6y9r.4O65rxUtxB84l3DmHgFZnX1rYhLxHQiFM3s2dWhmewAGbfpUspw+7O+S4t9VRJpsGkz9PIsbtKK6ry1pYolhRI8CHH+TnojJi7xKuRrLRLwDogMrg3kWdodGnVtavKcoKUn.6g7GXH2KGbHBg3gSEbR.n3TZN2jkGBOBgnjkPBITjwATTt4.6AJwaDuzph3X0icrioNfdsLsgaIVmbyM2Rc54YznwaYbYYmc12wBr2RcnrPRKmGBMm4LGV4JWIomd5jWd4gISlH0TSkssssY0fAQHDBgPHtezd1ydXJSYJjXhIpFbblYlIG4HGgAO3AWrSqmW8pWkryN6hLyHtegjVNBQYjbLfPHDh6mIWG69ekz9Pok6EBgPHDBg3ADRv8BgPHDBgP7.BI3dgPHDBgPHd.gDbuPHDBgPHDOfPBtWHDBgPHDhGPTtlsbDBgPHDBgPbuSE5CwJY5SR7vLYJDSHDBw8yjqic+uRpw1kzxQHDBgPHDhGPHA2KDBgPHDBwCHjf6EBgPHDBg3ADkqbtufbxImvEWbAsZ0VQTeDk.850S5omNYlYl2qqJBgPHDBg3egtsBt2ImbBu7xqJp5h3VPqVspauk.7EBgPHDBwM61JsbbwEWpnpGhx.Y6tPHDBgPHJJ2VA2Kohy8Fx18+cwKu7hl1zlhhhRgdOEEEZVyZFd3gG20qWCcnCkEsnEwBVvBtqutKJCX.CfEtvEdutZba4Nw2glzjlvRVxRHv.CrBsbEUbF6XGKKcoKsTet2x5xKD+agFMZnYMqYz+92eZRSZB1XSQGlnM1XCgEVXLvANPb1YmK1xqxUtxzu90OhHhHPila6LAWTJcOcKsM1XC1Zqsjat4VrKic1YGFMZDylKSOqsJ0lyblC+4e9m70e8WWtKCc5zQaaaaIv.Cjidzixd1ydvfACVsLAFXfDZngRd4kG6cu6kScpSUnx3IexmjZVyZRbwEGae6auD2tH92iAMnAQ6ZW6XTiZTDWbwY06UoJUIlxTlBG5PGhINwIdWqN0st0MhJpnPud8bhSbhJrxsO8oO7HOxiv69tuaItbiabiiTRIE9hu3KTesF0nFQMpQMpvpK2Kbm36fu95K93iO3omdxwO9wqPKaQEil0rlgqt5Jd3gGboKcoJ7kWH92fVzhVva9luoUAgaznQl7jmLG5PGR80BMzP40e8WGas0V.ne8qer6cual8rmsUk2HFwHHhHhPsguFwHFAe7G+wricri6Bead318zf6iJpn3IdhmfW8UeUtwMtQgde+82edkW4U36+9ume7G+w6H0AsZ0RUpRUJ2edO8zSdq25sPQQgryNape8qO8pW8hO7C+PN6YOK.DVXgQO5QOHu7xC.ZdyaNqbkqje8W+U05vjm7jwQGcDCFLPfAFHsoMsgIMoIgQiFu8+RJdnSKZQK.fQNxQR7wGeEV41111VpScpysb4ZSaZCYkUVVEbuPb+pgO7giqt5ZoNP8x5xKD+ava9luIJJJLFnKgk...H.jDQAQkvEtP98e+2oUspUDSLwvjlzjnm8rm.f81aOu5q9pX1rYl+7mOm+7mmwO9wS6ZW6X26d27G+we..ADP.zktzERO8zYVyZV3latwnG8nYTiZTr+8ueYbCdGlsN5niStr7A7xKuHwDSD.b0UWukKuM1XSw1p6MrgMD+82e1wN1QQ1J0t3hKz5V2ZN4IOIm6bmqbsNtUKWDQDAIkTR76+9ueK+7Ekm64dNbyM2XtyctrxUtRtxUtBgDRH3t6ty92+9AfwLlwfACFX7ie7rqcsKBKrvn90u9rsssM.nqcsqzfFz.1vF1.ye9ympW8pie94G50qW8FDtYolZpkq5q31WAOF.fV25Vi+96OaZSahzSOcqVV6ryN5Se5CwGe7VcCpUu5UmdzidPO5QOvImbhqbkqfACFvd6smW3EdATTT3xW9xpK6fFzfH8zSWc+diZTin28t2b7ie7Bcryy9rOKMqYMCc5zgFMZvO+7SsEg81auY.CX.z8t2cpW8pGImbxbsqcMq97csqckniNZZYKaI4kWdpAn7LOyyPiabiQqVs3hKtfu95ag5UfpTkpPLwDCADP.Xmc1gat4F1YmcbwKdQ5XG6Hd4kWrgMrAhN5nom8rm3omdxYNyYvjISpkgM1XCsssskAO3AScqacIojRhLxHihc+QXgEFst0slXiMVFxPFBcu6cGGczQN+4OuUkqku+8t28lt10thM1XCW5RWR8ltg7uvUzQGMQEUTzzl1TLZzHW4JWQ88s7cXEqXEpuVO5QOnCcnCblyblhrQJrrd6YO6I8rm8De7wGt3EuH50qGH+KBFRHgv9129HnfBh9129Rcqac4JW4Jb8qe8RccafCbf3omdRUpRUXHCYHTyZVS96+9uAf5W+5yS+zOMO4S9jjc1Yiqt5JQEUT72+8eq1.BUtxUlHhHB5ae6Kt4laboKcoB0CjsnEsf92+9SG6XGwUWckSdxSVr6W5ZW6JMtwM1pdin10t1z+92et3EuHYkUVko8c2LmbxIBO7vou8suTyZVSRLwDIqrxR88sT1W4JWg90u9Q3gGNImbxjbxIWrk4i7HOBQGczbgKbA5YO6IQGczb3CeXZVyZFMsoMkCe3CWp1Vzl1zFqVdK6aryN6XPCZPzhVzBN6YOKYmc1Vs98vCOHpnhhd0qdQUpRUHgDRfm8YeVqN1unDXfAxS+zOMspUshryNaRHgDJz2oyblyPDQDA8oO8AarwlB0Ki2pxwx1yTSMUFzfFDcricTsApJo5cUqZUo+8u+jQFYPJojhZ4EP.APe6ae4JW4JRfd2CbyWGKv.CjN0oNwd26d4y9rOiqe8qyIO4IIf.BfZVyZxd26dI8zSmgNzgRiZTiXsqcs7ce22QRIkD6e+6mHiLRBJnfXcqac.vTlxTvEWbg27MeSN1wNFm6bmC850Syadywc2cm8t28Vj0KKGq3fCNvPG5PoUspUbtycNxJqr3IexmjAMnAQPAEDIjPBVcsKmbxI0yO1vF1PRIkTHszR6N6Fw6wt48gEzcjVtO3fClm9oeZbvAGPQQgbyMW1yd1Cqd0qFH+TFnCcnCpcoyzm9zAPM.3ZW6ZyXFyXT6Jmt28tSjQFI.7ge3Gx4O+4wImbhW4UdEb0UWQQQASlLQbwEGyadyypfcpW8pGCYHCAmc1YTTTHmbxgO+y+bN1wNVgp21au8LgILApRUpBezG8QkpVcoRUpR.ndyGm9zmF.07TKnfBBMZzv92+9I2byktzktfhhBZ0pkZUqZw4N24n4Mu4X1rY1xV1B1Ymcp4dangFJae6auLt0W7ucO0S8TLlwLF.vrYyzxV1Rdtm64X3Ce3De7wyS8TOEMsoMkCbfC.jepvDVXggO93Cu0a8V.vPFxPHf.BfkrjkTnxOhHhPMWe6Tm5DYjQFr5UuZBMzPUaYFylMSyZVyHxHijoLkondysKYIKAe7wGLXv.1Ymczt10N10t1EyYNygtzktn968N0oNQhIlHqYMqwp0s6t6NcpScBEEEryN6nScpSToJUIqNQ9hVzhvImbBH+.j5bm6LwDSLX1rYrwFa3y9rOC2c2cLa1LJJJp8D1N24NKxsm8nG8.+7yO5V25FN3fCX1rYZdyaNCdvClAO3ASN4jCP9Al+RuzKotcOzPCkgNzgxPG5PIu7xCmc1Y9rO6yPmNcpq6vBKLV25VGe5m9oE45dricrDVXgwgNzgJ1fuBKrvXricrpq2VzhVPe6aeY7ie7pmu.fgMrggSN4j5uIhLxHU+MQoot06d2axKu7vd6sGH+aJ7a9lugm4YdF5Se5iUeuSO8zwEWbgMu4MSbwEG93iO7IexmfFMZTW+CdvClQLhQvUu5Us56pISlTKmt0stwy9rOaQ981Rfde228cpuVSaZSIhHhfibjiP7wGeode2MqF0nFLu4MOqpu8qe8iYO6Yyt28ts52E8nG8.sZ0hhhBsoMsgie7iy3G+3KxxsUspUDQDQP6ae6oRUpRX1rYb0UWoacqaTu5UO9xu7KKUaKt4ku28t2XxjI08MJJJzoN0IVwJVg5MJFbvAyzl1zTO9r4Mu4z6d2apZUqJ4jSNV8akBZBSXB7XO1io9usDz8LlwLr56zi8XOlU+9Zjibjz6d26Rc4XY6YTQEE1Ymcp232spduwMtQhHhHnN0oNLtwMN0xe3Ce3Tu5UOV0pVUQ98Rb20oO8owrYyTm5TG08k1XiM3u+9iISl37m+7.n1ysKaYKS8yd0qdURLwDwM2bS807zSOIiLxfXiMV0WacqacDSLwf+96ewVOJpiUdrG6w3Dm3DznF0H0y+8jO4SxHG4H4RW5R3s2dy7m+7QqVsnWudzpUKgGd37QezGUrW23Ac2QdHV4iO9PVYkEaYKag+6+8+RZokFsqcsi1291C.G9vGlMtwMp9iksssswF23FY8qe8.PRIkDabiaje629M.H1XikMtwMxF23FUaIAc5zgVsZ4m+4elUu5USrwFK0oN0gQLhQnVObyM2XLiYL3ryNyIO4IYsqcsjZpoVjoUfNc5XRSZR3omdxW8UeUot6TsbgjQO5QSKZQKXjibj.vt10tT2V.4efSUqZUoicrip2sY0qd0AxuEyrzhSO6y9rXqs1hACFTC.Rb+ggLjgvXG6Xs5+dwW7EsZYb2c2YzidzXvfAdgW3EHxHijO5i9HznQCyZVyB.N+4OOd5ompell0rlAjeKvYg+96OIlXhEYOd06d2aN4IOIlMalt28tyfFzf.xOXK850yK+xuLQFYjL4IOYTTTXfCbf.4G3kO93C6ae6id0qdQ26d24RW5Rz7l2b.H5niVsmj5d26NCaXCqPq6yblyP26d2wfACjZpoR26d2YNyYNVsLojRJzyd1SF7fGLwGe73omdRPAEDP9cKr6t6Nqe8qmt0stQLwDC4jSNL1wNVbvAGJ1s8JJJXvfAF7fGLcu6cmssssgCN3.u8a+1.42KiicrikbxIGhIlXnacqargMrAbyM23Ue0WU86js1ZKe9m+4DYjQxPG5PI2bykHhHhhbcN5QOZBKrvX+6e+E63ovM2bi+u+u+OxM2b4EewWjHiLRl+7mO1YmcpA7agc1YGCcnCkd0qdwu7K+BZznQMn7Racyd6sm0st0QO6YOYzidz3qu9Re5SeT+dGYjQxhW7hKzLt0rl0rvVaskoN0oRjQFIScpSEas0Vl4LmIP9MVQG6XGI0TSknhJJ5QO5A+3O9iT0pVUpacqawteoz3VsuqnLqYMKznQCyblyjHiLRdwW7EwnQiLtwMNqNuohhB+y+7Oz8t2chIlXH8zSmFzfFnF3PwwjISp6ut4fpKuaKzpUKKe4KmHiLRlvDl.lMalvCOb02eRSZR.ntO3kdoW5VdMfvBKLdrG6w3rm8rDUTQQTQEEwEWbz111VqBT2hALfAPe5Se3vG9vnSmNZSaZSYpbTTT3bm6bLfAL.5Uu5UopdmPBIPxImL0st0UsQurwFant0stDe7waUq4Kt2I2bykUrhUf2d6MqZUqhO7C+PV0pVEt4la7Ue0Wol0C93iOXznwBkxvImbxnQiF0FVRmNcEYKmmSN4f6t6dIVWzpUKKXAKfHiLR97O+ywVaskF1vFxa9luIQFYjrl0rFr0VaUO+W+5W+PqVsL6YOahJpnXnCcnbiabCdpm5opH1zbeo6HA2u0stUd228cYiabiricrC9fO3C.xOUBf7CdY6ae6pA2u6cua1912tZW7kYlYx1291Ye6ae.vIO4IY6ae6r8suc0VxIojRhW60dM9tu66X26d2rvEtPt90uN0rl0Tsdz291WTTTXYKaYL+4Oe14N2ISe5SW8lHrPqVsLoIMIb1YmYAKXAbjibjR8208su8wt28to10t17LOyyfu95K+1u8apC9DKotTFYjAiXDi.850yZW6Zs58znQC50qmZW6ZSPAEDqe8qmabiabKu.j3eWZdyaNgEVXV8esqcsypkIzPCEEEE9hu3KTS6lcricvINwInpUspXu81yd26dwVask.CLPzoSGt5pqDarwRkpTkvKu7B2byMzoSGG7fGrLU+F+3GO8t28VcvbenCcHxM2bUuQBK8jle94G95qujWd4wvG9vo+8u+2laYr1rm8rI2bykTSMU1vF1.P9s9Gjep5kYlYxhW7hwrYyjPBIvJVwJPQQgPBIjRrbe228cI0TSk7xKOl6bmKW+5Wm5Uu5AjepSonnvRVxRHgDR.ylMyBW3B4F23FzvF1Pf7aIpd1ydp1aDImbxDWbwg81aeglwHF4HGIcpSche9m+4RbvE2l1zF082W3BW..17l2LyZVyR86tEaZSahjRJIxM2bYQKZQ.V2JYkl5VlYlIe5m9op2zWaaaaAfEtvEp1vHqe8qm+4e9G0OiCN3.t3hK7m+4epdN28su8wwO9wwUWc0pzYrxUtxzzl1T.3C9fOfd1ydZUYUdUR66tYUtxUFmbxIN7gOL+xu7K.vEtvE3q+5uFEEEdzG8QsZ4m1zlF4kWdjPBIvt10tPQQgm3IdhRr97ke4Wpt+5lUd2VbiabC0Vo9XG6Xb9yedb0UWwN6rCu7xKzpUK+9u+6p6CN8oOsZucWbrb9kW8UeUzqWO50qm27MeSf+29dKV0pVEYjQFjSN4vRW5RAxOn9xZ47Vu0aollbk158V1xVvVaskNzgN.jeuBnnnvl1zlJwueh69LYxDN3fCT25VWpTkpjZuSYQkqbkKxFUxRJo5iO9PkqbkQQQoHS2pbxIGzoSWIVGxLyLYyady.ndNuKe4Kqllae629s.nN4FX4ZWspUsBmc1YRJojH5nilILgITl9t+fj6HokiSN4DiZTihpUspY0zCnktzuhfhhBCaXCiF1vFptiEvpez4kWdgYylukAAY4BnolZpk4YVj9zm9vS7DOAm9zmlCcnCQKaYKoUspUjQFYvO7C+fZd0FZngR0pV0XAKXA3niNBfZ2ZZ1rYr0VaYXCaXjTRIwN1wNnicriVkKvh+8qnlsbbvAGTOQDfZKT+m+4eZ0xc5SeZZPCZ.AGbvrksrE0YfGKce4LlwL3y9rOivCOb07vdKaYKko5mWd4Euwa7F3me9gs1Zq5wlV9+G7fGjScpSQ8qe8YAKXAXvfAN9wONye9yWM0LpHTvsQVtQC6s2dTTTTO13lC7Ex+F.rDL2MyrYyV08u.De7wq1EyV1tO5QOZF8nGsUKmkyKYmc1wq8Zul53JnnlZSsnycty.bKC9xx58lOGzO8S+TgV1BNthRO8zwjISpyZEk151MewTKsjrkbu2h3hKN02yxMMERHgTja2ejG4Q33G+3rt0sN5QO5ASZRSBSlLwEu3E4K9huPc.zUdcq12cyiSJK8j0MOiicnCcH0wEhkYiCylMa01DKAeW4JW4RrNUbA1aoLKOaKt4Vw7pW8p3u+9i81auZCecyiwpad+1MKf.B.fBkdb.EJ0GJXOPXY8XIHqRa4X1rYqFGHk158ZW6Z4oe5mlN24NyN1wNnyctyX1rY9ge3GJwueh6dZSaZCO8S+zjZpoxa7FuAW5RWB+7yOl1zlFO6y9rb9yedN3AOHW6ZWqHmZmszZ7W5RWRcFNrpUspEZ4bvAGrZrwTTt4yicy+tqf+M.ewW7Ez7l2bZSaZi5j4v9129X9ye9OzNqCdGI39gMrgQ0qd04.G3.bjibDxLyLYricrE67kZ4QzQGMAGbvDWbwwu8a+FW4JWgm+4edqtABKs3zsZfYYznQN4IOIMpQMh9zm9XUNhdqz7l2bxM2b4i+3OF.94e9m4i9nOhPCMT9ge3GTOgdKaYKI1Xikie7iSm5Tm.Ps6HMXv.UspUEylMyG9geH.p4Nl3AKVZwKWbwEqR8KKciskA3ZlYlIAGbv3qu9RFYjAIkTRjXhIRngFJYlYlXvfghcvVWbl27lG5zoiicrioli3idziV82YlMalW9keY7yO+nKcoKzxV1RZRSZBKXAKfnhJp632rokf3LYxjZKKB42pL1ZqspiAghhkwwRAOlwR9oa1rY0s6aZSaxps6N3fCpCvxoLkoPPAEDW3BWfCbfCPhIlH8qe8qHm3.hM1XIf.Bf2+8eeF7fGbgFXjVXIO7c2c2uko5WIMo.TVpaEzYO6YoksrkzfFz.ql0jJXObZoNd4KeY13F2n5q6fCNP1Yms5MiszktT9tu66nqcsqDZngRspUsXxSdxLgILghbLLATny4amc1Unk4Vsu6lY47l2bJqXIUitaLH5JOaKJIVFzw2b.4ELU7JJYjQFToJUIV7hWrUutCN3Pgtgo6DkSosdqWud9m+4ent0stXmc1Q8pW8H1Xi8g1.u92HKMXwjm7jUOW04O+4YFyXFLiYLChHhH3fG7fb0qdU71auoxUtxVEjsGd3AFLXPMccxJqrJTv81XiMXu81yEu3EqPq6ojRJz+92eZdyaNcricTsWzqacqKiZTipBccc+h6Hoki+96OImbx7Ue0WwgNzgnJUoJEYKMY4GAE2SbUKueQk2g0qd0CylMyblybXO6YOboKcI0V8yhjSNYrwFaTacghyoN0oXgKbgjRJovS7DOA0u90uT88DPcPWYgk+1R9AaYFTvjISpC9QKoAfkVRwxEq1yd1CIlXh3hKtf81aewNJnE2+xRK3VvbkVQQgl1zlhYylUCj5XG6X3s2dS8pW8T6Jxe+2+cpQMpA0t10tLmJDN6ryToJUIhKt330dsWypohUKAs6u+9S25V2HojRhErfEvPFxP3vG9vXmc1UniIJo7e2hxSZkkRJofYylYm6bmr90udV+5WO+1u8akXqnaQ26d2U+aWbwE71auU6pXKa2swFaTK20u90SRIkjZO+U25VWLZzHu3K9h7EewWvl1zlJ1FjXbiabr5UuZzoSWgFSAEjkVxsqcsqpulhhBu+6+92xmU.ETYotUPVF2RCe3CWcJ+sCcnCpsTKje.ZVF7bEbayINwIPqVsXznQbwEWnacqa3hKtvJVwJXLiYLpoNzi+3OdQttyN6rwN6ryp7q0x49tYkz9ta1INwITGXxEjkFM41smDtUJOaKtUt5UuJ4lat7nO5iplhZ0nF0f9129VheNKAde1ydV08aaZSaBiFMVlZLsxa4TVp2e+2+8Xqs1xDlvDPQQwpdzTbumkVK2We80pW2RCAXoARN5QOJ.VEzbCaXCwUWc0pYWoKe4KiCN3f535.xugeUTTpPe1q.42qigEVX7G+wevLm4LoO8oOEJMseXycjVtOwDSDO8zSZVyZFN6ryVcgsBxRNGO3AOX1xV1BW+5W2ptNzRKM05V2ZRJojH0TSkyblyfACFH1XiEu81a5bm6LW7hWjdzidTn..9ge3G3ke4WlgLjgvt10t3nG8n7DOwSvku7kKx4M+O7C+PlxTlBCe3CmW+0e8RUKmmbxIimd5IwDSL7a+1uwi8XOF1ZqspocQ7wGOW6ZWCmc1Y07st10t1jRJondwqsssswy9rOK0qd0iFzfFPzQGMPYOsKD+62e7G+Aomd573O9iiVsZ4zm9z7DOwSfKt3B6YO6Qc41wN1AgFZnnQiF15V2JP9s5bW6ZWQmNcpAlWZkQFYfQiFwe+8mXhIFt90udgNlI3fClm+4ed0b61VaskFzfFfISlTu3+wN1wnN0oNL8oOc1vF1Pw9vHIgDRfZVyZx3F23XG6XGVMEBVRVyZVCO+y+7rjkrD1zl1D1Zqszst0Mr2d6ukemGzfFD0rl0jDRHA5RW5B1ZqspiulCdvCRFYjAgGd33hKtvQO5QUCH4nG8nr0stURJojvWe8kW60dMNwINAO4S9jEaCO.42UvAFXfDXfAx3F23Jxf7O3AOHolZpDZngxjm7j4Tm5Tz111V70WeUGz8kFk05lEm4LmgMsoMQDQDAe8W+0XxjIr0VaIyLyTsQSLa1L+0e8Wzrl0Ll6bmK+zO8STyZVS5XG6H4jSN7ce22gSN4DO+y+7XvfAV4JWIokVZDUTQAPwlpTG+3GG+82elyblCadyaF+7yO0bT+lUR66tYVR0xl27ly7l273W+0ek.BH.ZQKZAolZppAebmhs1ZaYdaQow68duGu0a8VL8oOcLZzHZzngLyLyhr2Nr3a+1uk1zl1vTm5TY6ae6De7wSW6ZWwCO7fO8S+zR83x41obJs06e4W9Ed4W9kIzPCE850Wh8Dm3tu0t10xi8XOFiabiilzjlv+7O+C0u90m1291iYylUGqfe629sDYjQRaaaawfACb0qdU5cu6MlMaVclUBfYNyYxm8YeFiabiiZUqZQUpRUH7vCmryNaq5Y1JB8pW8hF23FS6ae64G+wej5Tm5fCN3PE5y3k62bGok6W25VGFLXfm8YeV5cu6MYjQFXxjoB0s9G3.GfScpSQ0qd044dtmSc5AzBiFMxN1wNPqVsz+92eF4HGo5chswMtQRO8zIhHhfW3EdApZUqJolZpV0J5m8rmk0rl0f81aOctyclwO9wSKaYKKzbQsk5U5omNqZUqB6s29RcW4rfEr.tzktDMoIMgW7EeQZXCaHm+7m2pT6YtyctXvfA5cu6MQEUTjc1YyG8Qej56+m+4ex92+9wKu7hQNxQhGd3A+zO8SU32cq3NixR5pXznQF4HGIIjPBzxV1RF3.GH93iO7G+wev68dum5xs+8ueLa1LFMZTcvYegKbA0ATd44I72bm6bwjISzyd1SF3.GHIlXhVkai+vO7C7K+xuf6t6NCe3CmgMrggISlXJSYJpGWsl0rFxLyLot0stDSLwTrqqu9q+ZxJqrn8su8VMc6cyrrsyx+e8qe8r5UuZzpUK8qe8i9zm9fYyl4C9fOnDy6eylMyO9i+Hsqcsi90u9QkpTkXG6XGpGGlat4xnF0nHgDRfG8QeTF1vFFAGbvbxSdR0YkkYLiYPVYkEsssskgMrgg6t69srGRdi23MHiLxf1291qNXAu4ueiZTihqd0qRHgDBCX.CfZVyZxe8W+kZJ3URrrcu7T2rXAKXALoIMI9ke4W3HG4HLyYNyBMGS+1u8ayQNxQvO+7igNzgRXgEFolZppScgojRJr3EuXrwFaXvCdv7+8+8+gqt5JqXEqnXyK7EtvExEu3EwM2biANvARqacq4u9q+Rc6RA+NVR66JJSdxSlCe3CSMqYMYfCbfz7l2btxUtBibjirDSuoa92akVErLKMaKJMO2UrTGrj1nG3.GfQMpQwF23F4Dm3DrhUrB0YqnhSbwEGScpSkabiaPm6bmYnCcn3t6tyF1vFTmuwKM0gamxorTusbSBRf8+6yoN0o3se62labiaPXgEFCe3CmNzgNv0u9040e8W2pwgxjlzj3ZW6ZzwN1QF3.GH1XiMrrksL0IIEH+FjXQKZQX1rY5W+5GctyclrxJKlxTlRE9Cmy2+8eeN+4OOMtwMlW5kdI5V25FIlXh7FuwaTgtdtehh2d68s9rPEPPAEjZKibqlBz70WeIszR6N5CnBKOjbtU2gV0pV0vQGcj3hKtB8fYohfk4C1yctyUrmXuZUqZXxjIq55pBxd6sG+82eN6YO6s7G+UDyPEhxmBdLvsCarwF7xKupPGrpkFd6s2b8qe8R73xpW8py0t10J1A9TkqbkwnQi2xd2RmNcXvfgxU95aYtt+VMU4Mu4MO7yO+HxHiD6ryNpV0plUWj4loQiFpV0pFW4JWoHONqJUoJnSmth83zxKMZzf2d68s0SszxZcyM2biwMtwwe+2+sUO3s9lu4avQGcjt28tWn8M95qujbxIWrii.2byMTTTJwGFTEjNc5vSO8jKdwKVnyMVV22UTpd0qNW8pW8dxDPPYcaQI40e8WGylMyLm4LU2N8tu66RSaZSYJSYJ2x.hczQGwImb5197Ik0xorTum0rlEMnAMfgO7gKO8duGqjtNlNc5n10t1blyblR7b7d6s23t6teKG32Oxi7Hjc1YWhCT8JBZzngpW8pyUtxUdnX7bTR6CuijVNVbmdGIPodNxsfOIGuSHu7x6VN.GuU0ACFLTnY.BwCtxKu7tqGXOPopqJsjxbEmad1Jn3TbODhJMJOALkat4dKCNznQik34lt10tVgdp8VQvnQi21AzTVqaojRJT6ZWaBN3foCcnCjVZoQspUsPmNcbjibjhLf3a04sKqyK44jSNkpqETZ12UTtU+V8NoJx4ncGczQZbiaLMtwMlKbgKPMqYMwYmclryN6R0SP8rxJqa4rPRoQYsbJM06PCMT5QO5AMnAMfyblyHA1+ub4jSNV8jkt3De7wWptdRI8jrthjQiFKWmC4AQ2QRKGgPHta4hW7hxfOuD77O+yyQNxQvImbh5Uu5w0u90YSaZS+qnKqk8c+OSbhSjst0shISlTGvy+0e8WLjgLjRUZ9buRoodGZngR8qe84Lm4Lpye9Bg3Nmaqzxol0rlpOMxD28nWu9J7oRJQoWEUZ4HDBgPbufbcr6+UR6CusZ49hapJSbmkrcWHDBgPHDEkaqbteSn7dN...B.IQTPT0x.xyEWbQZA+6BzqWOomd52QGfxBgPHDBg39W21Cn1LyLSIXSgPHDBgPH9W.Y.0JDBgPHDBwCHjf6EBgPHDBg3ADkqYKGgPHDBgPHD26Tg9PrRl9jDOLSlBwDBgPb+L45X2+qjZrcIsbDBgPHDBg3ADRv8BgPHDBgP7.BI3dgPHDBgPHd.ws87buSN4j7Pr59DxCAKgPHDBg3Aa2VA26jSNgWd4UEUcQbGlVsZU2eIA3KDBgPHDO341JsbbwEWpnpGh6hj8aBgPHDBwCltsBtWREm6OI62pX4kWdQSaZSQQQoPumhhBMqYMCO7vi6A0rh2jlzjXhSbh2wJ+lzjlvRVxRHv.CrBsbs2d6YIKYIDczQWgVtPEy1jRa8KrvBikrjk7uheWLfAL.V3BWXY5ybm32O2o+MoEiZTihYO6YeGe8HD2OyFargl0rlQyZVyPilBmjG1XiMDVXgw.G3.wYmctXKmJW4JS+5W+HhHhnHKGK7wGe34dtmiPBIjJj5+C6tsy496T5Se5CssssU8e+RuzKQd4k28vZTEi1zl1PMqYMY26d2De7wq955zoim7IeRpYMqIwEWbr8sucxM2bs5yFXfARngFJ4kWdr28tWN0oNkUueooLDU7FzfFDsqcsiQMpQQbwEmUuWkpTkXJSYJbnCcn6JAtTZ0vF1PLXvvcrx2We8Ee7wG7zSO43G+3kqxvImbhILgIvN1wNX26d2.4eAEe7wGpe8qeEXsMeUDaSJs0u5W+5iO93CUtxUljRJoaq04sqF0nFQMpQMJSel6D+94N8uIsHnfBRRmTg3V3ke4Wl10t1Aj+MdevCdP02KzPCkW+0ecr0VaAf90u9wt28tKzMMOhQLBhHhHTa3qQLhQvG+weL6XG6vpk6+7e9OTqZUK.nG8nGnWuddwW7EIgDR3N0WuG38u1YKm8u+8yZW6Z4RW5Rp+.59c94mez+92eZaaaq5Ojg7aI8IO4ISm5Tmnt0stDQDQvjm7js5tbCKrv3EewWjlzjlPyZVyXLiYLVcyOklxPHtehiN5HMoIMgV0pVcutpHDBwCMdjG4QncsqcX1r4B8d1au87pu5qhYylY9ye9L9wOdRN4jocsqcz7l2b0kKf.Bftzktv0t103Mey2jO3C9.LZzHiZTiBmbxI0kaPC5+m8NyiqJpde7+9x8BbYsKKJffHpI3BfHQJlJBBtKf3RYtkHpYZ5GSLsRSawVrEqLRMsTKKqLsLxTDwsTSsbMUD0.2EADTADurd+8G7alubgKaBnocd+508EuXlyblm4Lm4LOmmyyyyLJZdyaNIkTRLoIMI9ge3GvTSMk25sdq6IWqOrx8LM+LxHipTKuan8cwKdQt3EuHN6ryzrl0rprtUnPgA6DV18CTskop1ekIm0Fd1m8Yo3hKtBSVoO8oOXokVxF23FIt3hiwO9wS6ae6InfBhst0sB.CX.C.sZ0xK+xuLFarwrfEr.hHhHXO6YO035Pv+dvYmcldzidPyady4vG9vryctSxM2bwDSLgwMtwwAO3A4O+y+TtrgGd3r0stUN6YOKPoVaMf.Bfu5q9Jt8susAOGCX.C.e7wGzpUK6YO6g8u+8eOSlJKRGeRIkDae6aWd6VXgE7LOyynW8JQ6ZW6n+8u+.k9RhIMoIwF23FI8zSWtLcricjdzidfVsZYqacqbxSdR8pCGczQ5Se5Ct3hKrm8rG1yd1CEUTQUYa..t4laz+92eznQC6e+6msssso29svBKHjPBg1291yINwIXqacqUa.p2pV0J5ae6KVYkUDWbwUsxPqacqoG8nGr5UuZBJnfvWe8kjSNY17l2LW+5WuVKO8pW8Be80WTnPAG+3GmMtwMVkm+ANvARSZRS36+9umrxJqpUdgpu81DSLgAO3Ai6t6N25V2h8rm8vAO3Aqz5SkJULlwLFJpnhXUqZU.kZfj9129hSN4DojRJ7S+zOUks8JTnfN0oNQvAGL4kWd78e+2avxYkUVQPAED93iOjRJoPBIjf7JqNrgMLzpUKaXCaPt7O6y9rb5SeZ4UTRiFML7gOb1111FW4JWgQO5QyN24NwN6ri.BH.RN4j4m+4el7yO+ZTao.A2OYNyYNTbwES7wGO8su8Uu8M5QOZL0TSY8qe8r4MuY.3ke4Wlksrkwy+7OOiYLiA.l5TmJ.7lu4axoO8oA.qs1ZF23FGO6y9rxV4evCdvTXgExK+xuLEVXgr5UuZZaaaKd4kWzwN1wJ7tAnTC+H8LVSZRS3IdhmfzRKMV0pVEEWbwLrgMLb2c2I4jSl0u90St4lq7wVaGC4AUZvTtOv.CjANvAxO+y+L8u+8GyM2bJt3hYQKZQjbxIiUVYESYJSAmbxITnPA4kWd7EewWTAWMopnksrkLtwMNrzRKAfzSOcVzhVD25V2B.BO7vo6cu6XhIl..24N2g0rl0vQNxQjqCe80WBO7vwVasEEJTP94mOKdwKljSNYfRUnOxHiDu81aTpTIEVXgroMsoZsByCbfCDqrxJ1912NAGbv5sO+7yOzoSGwEWbXrwFK6mx96u+r0stU7xKuPkJUbfCb.JrvBo+8u+nPgBL0TSo4Mu4btyctpsND7uG5Uu5k7.e5zoiN1wNx3F23XhSbhbsqcM5Uu5EcnCcPdPsgNzgRHgDBN4jS7pu5qB.iYLiAO7vCV9xWtAOGKe4KGmbxIJnfBvXiMl.CLP1wN1Ae3G9g2ykoBJn.5QO5AAGbv5obe3gGN8qe8iKe4KWA4oCcnCzktzE.vN6rid26dywO9wkUt2SO8D+82ezoSGJTnfPBID9vO7CYG6XG.PvAGLuvK7BxWO96u+DYjQRjQFYUNAcKrvB9zO8SAJUwvN24NSG5PGjeQjSN4DKYIKAUpTI2NM5QOZdtm64H0TS0f04S8TOEiZTiRVV5bm6L27l2rRkA.5bm6L8qe8iN24NiM1XC5zoC+7yOdxm7II5niVdbxZh7DSLwfat4lbaUW5RWnO8oO77O+yavy8zl1zHjPBgidziViUru5Zus1ZqYEqXEnVsZ8tmsgMrA9hu3KpP8oRkJVxRVBN4jSrxUtR.HnfBhoO8oC.EVXg7XO1iw.G3.YhSbhU5x2+du26QaZSajkKoICVVbwEWHlXhQu1vgMrgwG7Ae.6bm6j.BH.ZZSaprx895quDZngRPAEjrx88t28l90u9wwN1wPqVszu90O5V25FVYkUx2yGwHFAuvK7B7O+y+TiZSEH39ASXBS.MZzvW8UekAiOuV1xVB.qd0qVdaolZpjd5oic1Ym71ZbiaLYmc1xJ1CvF1vFHpnhB2byMfRURWkJU7W+0eomKDu10tV7xKuvSO8zfJ2amc1Q+5W+Hf.B.KszR4wT5V25F5zoSdLSe80W5YO6IibjiD3taLjGToAysbr1ZqQkJULjgLDJpnh32+8emTSMUdjG4Q.fYO6YiSN4DIkTRr6cuaL1XiYhSbh0352FargoMsogYlYF6ae6iie7iSiabiIpnhRtLMsoMkKbgKvF1vFHgDR.EJTPTQEE1XiM.fRkJYzidzxV7dcqacjZpop2RFMwINQ5PG5.W6ZWi3iOdxKu7H7vCWuNwUG1YmcDbvAyd1ydH6rytB62BKrPdlkicriEkJURAETfrb3jSNA.m8rmEarwFBN3fkm.iyN6bMpNDzvyXFyXXZSaZ58aRSZR5UF6s2dlxTlBETPA7rO6yRngFJe7G+wnRkJd+2+8AfKbgKPiabikOFe80WfRslqDt4lajd5oavXpnCcnC3jSNw92+9YPCZPDd3gyku7k0aISuWKS6e+6GSM0T7zSOk2VO5QOPmNcroMsoJT9u4a9F4wC9i+3OH7vCmcu6cKueKrvBl+7mOgFZnrvEtPfRCLT.r0VaYZSaZnUqVhJpnHrvBiMtwMhc1YGu3K9hFrMPBiM1X90e8WIzPCkoMsoQgEVHcu6cWd+u+6+9nToR4y87m+7QoRkrfEr.CVeN3fCLxQNRJnfBXhSbhDZngxJW4JqwYrJMZzvLm4LIzPCkErfEfBEJX9ye90X4wc2cGmc1YNzgNDgEVXLjgLDt7kuLt4laxicTVlxTlBgDRHbfCbfZbLhTSZuCO7vQoRkrxUtRBMzPIxHijBKrP5W+5WEpOiLxH9rO6yvImbhktzkx5W+5AP9EzQFYjLnAMH49l8rm8zfxU3gGNsoMsgKe4KyvF1vXvCdvbricLLyLyzqbu+6+9nRkJVvBV.gFZnLoIMIJpnhH5niFqrxJ1291GJTnf10t1o24yRKsDas0V.3we7GGc5zwe7G+gb8ZokVxLm4LIrvBiUrhUfBEJXvCdv0n1TABtefCN3.gFZnjVZowO9i+nAKiSN4DEUTQUXUPu90uNpToRdBApUqlabiaTgiWqVsXu81CfrQHuxUthdkQZBvk08kMDpUqlIO4ISngFJIlXhnQiFTqVMiXDifPCMTN24NGZzngG8QeTfZ+XHOHSCtO2egKbAdkW4UXsqcs7tu66xgO7goScpSXokVx92+94y9rOie3G9AV4JWIlXhIxCfVc7jO4ShBEJXIKYIrl0rFV1xVFG5PGhl27liwFaLPoVrRJ3MhM1Xks7h2d6MPoA6nJUp37m+7rksrE4.B4nG8n.ktLxsssskqe8qy67NuCwFar7FuwafNc5X.CX.031fm64dNxO+7YsqcsFb+pToh7yOeZQKZAd4kWDarwxctycjWwAoWfjc1YKWW+7O+y5supqNDzvie94GgDRH58SJfjjve+8GEJTvpV0pjGPKgDRfScpSgM1XClXhI7G+wefRkJossssnVsZr0Va4zm9zXlYlgCN3.1YmcnVsZ8Bvoxhjae0rl0Lb0UWojRJgINwIxS+zOsAK+8BY5a+1uE.FzfFDPoJm6niNRhIlXMxUYJOW3BWP1Mi1912N24N2QdB2OwS7DnPgBV9xWNokVZnSmNV5RWJ24N2oZGeonhJhksrkAT5KXRJojPgBE3niNh4laNZzngCe3CKet2+92OIlXhXqs1hQFUwgS6bm6rbaqzJTr90udtzktTM55729seSNfj28t2MG6XGCyM2br1ZqqQxyYNyYHhHhf4Mu4gNc5PqVsxqtgWd4kdmqIO4ISu6cu42+8em27MeyZj7A0r16Uu5USDQDgrh5W+5Wmye9yiIlXREZ2V7hWLN6ry7Iexmnm6CI4dkcu6cGUpTwt10tHhHhfu4a9FCJW96u+.vK9huH4latTPAEvq9pupd82rvBKvJqrhicriIO4wKdwKx29seqrK8H4FUROK6kWdw4N24.J0h8PoSr8pW8p54Zmm3DmfDSLQzoSG+zO8STTQEQ6ae6qwsqBDbuFoUg80e8WuRKiEVXgAMfizpQJkn.TnPgAc2EsZ0hZ0pAflzjl..YlYl5UFoiSxPrUFG8nGkKbgK..wFar.v1111jM9ojKUJobescLjGjoA2m6MjOUJ0P24N24JDrbcsqcsB9NqgPxZ1SYJSoB6yWe8kCbfCfGd3AidziFqs1Z8RSgRtwSt4lKYkUV3gGdv68duGW9xWlMrgMvEu3EAPdoir2d6IlXhQuyQYsXYUQ25V2vQGcju7K+xJ0m90oSGJUpjwO9wSFYjAIjPBDbvAK69.R9oo+96OMoIMgEu3EKeMHkcIpt5PPCOFJa4Xt4lq2j5jTn5vG9v5Utyd1yRaZSavau8l3hKN4LviTev28ceWVwJVA8oO8Q1G6qLe29PG5PblybFb2c2YwKdwTPAEPhIlHe1m8YFz0QtWHSolZpjYlYJqbS3gGN.U5DdqNJallBfrxJK4Lfhz0yTlxTpv3Ck2pskmx5al.b4KeY7xKuPsZ0zpV0J.3wdrGyf9rdqacqIkTRQusIoba4aaSN4jooMsoUor.HanAIN0oNEsu8sGe80WJt3hqV4IwDSjgO7gy.Fv.vJqrRuwAKepaUx2ZW25VW0JWkkZR6swFaLuzK8Rz912dL0TSMXZiEJckJjVUicsqco29VxRVByYNygHiLRFyXFCYlYl7q+5uJOggxiKt3BEVXg5ofgNc53l27lxmCoUfp7tC5QO5Q4Ydlmg1291SBIj.4kWd3s2dikVZIZzng0t10xPFxPnyctyDe7wiZ0pqf6CTd2MKmbxQVoFAB92FRisu8sucYcfLD25V2xfovWIqwe4KeYJpnhjcOlxi4lat73rRSRVRetxWWkMFqLDkMSiIomjjh8.jWd4oW4qsig7fLM3J2aHE0kxfKe0W8UUvmNKevhUYnToRYe3u7boKcILxHiX7ie7XrwFyN1wN3jm7j3pqtR3gGtdVJ50e8WWNvCc2c2Ylyblr5UuZNvANfrUuO3AOndtD.PE7ayJCokz+Iexmjm7IeR4krZvCdvz5V2ZV4JWIETPAx9H1G8QeDPoY+FoNqRKsUG6XG4zm9zjXhIJawHoY7Vc0gf+cfjaYoQiF8d4uj6Sc8qect0stE4jSN3s2diqt5JYmc1jQFYP5omN96u+jSN4PAETPETjTBc5zwzm9zoYMqYz+92e5XG6H93iOr3EuXF7fGbElv28BYBfsrksvvG9vwSO8jfBJHzpUakZo+5BRWOaZSaRuqGyM27Z73KFBowptxUtB+1u8a5Uu4kWdUXhcv+2KZpr11pix69NRt0XVYkkrx8Uk7Dd3gyvG9vImbxgsrksvEu3EwKu7xfYfnSe5SKaniQO5QWgWLVYTSZuei23MvKu7hKdwKxe9m+Iomd5LrgML4UdrrjRJoPKZQKXAKXAx9wO.+0e8WL3AOX5YO6IcsqcEO8zShLxHwZqsV1u7KKZ0p0ft+TY8iXowOK+8CoiSZr2ScpSgO93i7x2mPBIPKZQKHv.CT1h9Fx8xDH3AEjhKHu81aVwJVAv+2yEQGcz7O+y+vbm6bI0TSEGczQrvBKzKYNznF0HJnfBjWYrbyM2JnbuQFYDlXhIxqbYRIkD.UHU75gGd.PU99j6Fpsig7fLM3tkigrbrzrBUqVMImbx58qry5B9+dgpzx2HQFYjAJUpjzSO8JTGETPA3latIaMke5m9IN8oOsAy5NEWbw7K+xuvq+5uNu1q8Z.kZsc3+aVkVZokU3bTdeDqx3XG6XbtycNt90uNW+5WW9El2912V9EeRufYu6cujd5oiFMZvDSLQdVqRO.TbwEKGrhRVDTJSkTc0gf+cfjxrk0WiUnPAcnCc.c5zIqf3IO4IwQGcjV0pVwwN1w.JcfIWbwEZQKZQUFTdt4laDVXgQFYjAKdwKlwLlwvwN1wvXiM1f4e86ExD.+zO8SnSmNd5m9okiIfZBVXgE0nxU9qGiLxHhM1Xk+IMlwcKRtXQ4q2ScpSgolZpAcuHo1IoL+CfdA7d0QHgDhd++i+3ONf9t7QUIOOwS7D.vrl0rHlXhgXiM1J0p4QGczrt0sNTqVckF30FhZR68i9nOJEUTQLoIMIV0pVEaZSaxftwzMu4MYpScpbtycNZUqZEO6y9rx6qW8pW3kWdwl27lY1yd1xJizoN0ICJWojRJnPgB41.nTWUSZUOgRUZWmNcxsqRHY7DoUddG6XGnToRhHhHHqrxh7xKO17l2LpTohvCObzpUakFP0BD7f.W4JWgabiafRkJwXiMFiM1X4mQUpTorQYO9wON.5EP9sqcsCas0V8BJ0qbkqf4latbhQ.fwO9wiBEJ3Tm5T.kZscsZ0hWd4kdSvVx23K+JdVWo1NFxCxbeIInu6cua4f6xEWbge+2+cb1YmI3fClUu5Uqm0e18t2M8u+8mwN1wR7wGOYkUVblybFhM1XYFyXFL6YOa1wN1AG+3GGO8zSdrG6w3cdm2gyctyQwEWLsqcsC2c2c7wGepf+N13F2XF0nFkb5KS5k.RKi6su8s4xW9x3gGdvDm3DYqacqXpolRfAFH+y+7ODe7wWsWq+5u9q58+AGbvDQDQPbwEG6ae6C.hO93YricrzpV0JZSaZi7W2RIWb3ZW6ZbqacKr1Zqk8O5VzhVPlYloretUc0gf+cvAO3A4l27lDP.AfolZJm8rmkt28tiFMZXu6cuxkKgDR.+82eToREaYKaAnTKCNfAL.TqVsbJP0P3s2dyDlvDj8wYkJURaZSan3hKVuLWv8RYBJ0RpojRJxOGJ4G9UFolZpTTQEgmd5ISXBSfXiM1pMKy.kprY1YmM8oO8AMZzvwO9woScpS3s2dywO9wkk8ZK5zoiibjifu95KKZQKhcsqcQSaZSI3fCFsZ0xO9i+XEb6hCbfCvsu8soacqaXrwFSJojBgDRHUq6AIQqacq4se62lidziR.AD.1au8jXhIJazjpSdRN4jocsqc7RuzKQbwEGd6s2x9htgXUqZUz111VZaaaKQGcz0Hk7qIs2YjQF3pqtxK8RuDm5Tmhd1ydVkAU7LlwLX0qd0xAJ2t28tIpnhBKrvB13F2HIkTRzidzCfRmnigXsqcs7DOwSvLm4Lk+f90qd0K8lbiNc53PG5P3me9QLwDC6YO6AO7vCd7G+wIqrxRVQl8rm8PzQGM1ZqsxYerSe5SSgEVH1ZqsxShSffGTYtyctUXaOyy7LLzgNTdu268jmD+ZW6ZIzPCkt10tRAET.olZpLjgLDzoSGu669txG6BVvBXEqXEDczQSyady4QdjGg9zm9Pd4kGe4W9kxkawKdwL8oOchIlXX8qe83me9QSaZS4jm7j20e.DqLpsig7fL2W9HVUTQEwm9oeJ4me9zktzEd4W9kYzidzznF0nJX8qbyMW1111FZzngQNxQJmCUO+4OOqacqCyLyLBMzP4UdkWgvBKLL2byAJcP6ssssgEVXAScpSk.BH.Y+pT5Ei5zoil0rlw3F23XdyadDRHgPZokldJcDSLwPpolJd5om7BuvKvjlzjn0st020eIEk769x5+8G9vGlCbfCfCN3.SdxSlF0nFwt10tjmcK.KZQKhBJn.FxPFBCdvCl7xKO93O9iqU0gfFFpMw0PQEUDSdxSlzRKM5XG6HibjiDmbxIN3AOHuy67Nxk6.G3.nSmNJpnhj865KdwKJ6NXk+K7WY4W+0ekcu6ci81aOSbhSjwO9wSwEWrbvfe+PljPJn1yJqrpQV5L93iGkJURXgEl7JIXHJ61KrvB44e9mmzRKM5Tm5Die7iGu81aRJojL3KvpJjt2J824N24xe+2+MMqYMiHiLRBIjPHqrxhniN5JHGPotKWzQGM27l2D+82eF9vGNVXgEUY9curr4MuYZaaaKidzill0rlw4N243UdkWQd+Um77Ue0Ww4O+4wUWckILgIfe94mrQEpr9suxq7Jjc1YSPAEj7K+pJpIs2u669tjat4RW6ZWY7ie7Xu81WkqzS94mOyXFy.c5zwLlwLnQMpQ75u9qSN4jCCX.CfYLiYPG5PG3HG4HrzktTCVGImbxrnEsHJpnhnu8suDVXgQZokVEhWiW60dMN1wNFMsoMkQNxQhe94GW8pWkIO4IKe+rnhJR1pjk08ajtFjRIlUE5zoSDCTBdnf4Mu4wst0sH3fClQNxQhQFYDqd0qVN3VgR8thO+y+bzoSGCaXCi9129Rt4lKuwa7F5om21291Ym6bmnQiFlvDl.95qujZpoVkA0qgn7iUaHpsig7fLJbzQGq5ubSkCu7xKYqYHEXr0EznQCMtwMlLyLyJDwz0Tj7+qqcsqUgOnORV49RW5RUpB4RG+4N24pzNFpUqll1zlRd4kWExJB0WXhIlfat4FojRJUZFDoIMoITbwEWo4j0ZRc.Hx0x0AJ6y.0ELxHivAGbnAc47c1Ym4V25VUHPQueISCcnCkm4YdF91u8a469tuqFcLpToByLyr6pOzHpTohlzjlvUu5UuqxJOUEt5pq54pcUGVYkUnVsZ8BBrJiHiLRF7fGLyZVyhDSLQZZSaJolZpFLKUTSjG0pUSiabi4RW5RMHicIQ00d+HOxifZ0pqS4TZyM2br2d6qxf9q7znF0HzpUa01GxYmclTSMUgR3Bdnm5i2i4niNh81ae0Z46V25VSd4kWU9LqBEJvO+7ijRJoF7OpT2Mig7uQpp6g22UtWv8GDJ2e2S8kx8+WBmbxIhJpn3we7GmhKtXFxPFhPAppfxpbeMI6gIPf.A0FDuG6Aepp6g2WbKGABD7eKZQKZA94mebiabCdoW5kDJ1WMjVZoQ1YmcEVIRABDHPffpi5T.0le94avOOwB92Mhziof60r28tW8BNWAUMaZSaRjZEEHPf.A2UTmrbeMIyUH3eeHtuIPf.ABDHPvCmTmrbuTPOnQiFgE7e.f7yOet4MuYCdvpHPf.ABDHPff6OTmyy84jSNBkEEHPf.ABDHPff+EfHfZEHPf.ABDHPffGRPnbu.ABDHPf.ABD7PB2U44dABDHPf.ABDHPv8Opr7b+ckO2K9vGH3+xH93eHPf.ABdPFw6wdvmpxX6B2xQf.ABDHPf.ABdHAgx8BDHPf.ABDHPvCIHTtWf.ABDHPf.ABdHg5bdt2JqrR7Qr5gHDenqDHPf.ABDH3AWpSJ2akUVgCN3P8krH3eAXpolJeOUnfu.ABDHPf.AOXQcxsbznQS8kbH3eYHt2JPf.ABDHPvCdTmTtW3JNO7h3dq.ABDHPf.AO3Qc1m6qKXjQFgRkJovBK7dx4yCO7fINwIxxV1x3Tm5T2SNm0GnToR5V25Ft6t6XokVxoO8oYW6ZWjat4pW4TqVM8rm8jl1zlx4O+4YqacqUnsMf.Bf1111RVYkEae6amqe8qeu7R4gRbvAGnIMoIbzidTzoS+uIbJTnfNzgNvktzkHiLx3dpbEYjQh+96OEWbwLoIMo6om65JCe3Cm.BH.l3Dm38ky+G9geHojRJ7Ye1mce47KPv8KD88+uMpToh1291i6t6Nm5TmhSbhSPQEUTEJmEVXAgFZnjc1YS7wGuAKC.N4jSz+92eNxQNBG5PGpgV7E7+m6qJ2O3AOX5d26Nu3K9hbm6bmF7ymYlvMTTbA..f.PRDEDUYFFarwXgEVzfetpOwFarggLjgPIkTBEVXgzhVzB5ae6KwGe7DarwBTpk1esW60vRKsjBJn.ZaaaKcoKcg4Mu4I+P2TlxTvCO7fBKrPToREcoKcgErfEvUu5Uued48.OiZTih.CLPd9m+447m+75sOyLyLdi23M3nG8nLm4Lm6YxTXgEFCdvCl7yO+50IxNzgNTZcqaMu4a9l0a0ogvSO8DWbwkFzyQUwi9nO5+pW8JqrxJl0rlEIjPBrycty62hifxfu95KCZPChktzkxku7kueKN0Z92deeAMb3qu9xbm6bQkp+OUCKnfB3UdkWgjRJI4s8bO2yQ+5W+PgBEx++m7IeBIjPB5Uee5m9oz7l2b.XfCbfje94yjlzjHszR6dvUy+soAOUXZjQU+oPpCxc69qtxTWO9xRUc8TStVua3F23FrnEsHl5TmJQGcz7xu7KSIkTBAGbvxkoO8oOXokVxF23FY5Se5bricLdjG4QHnfBB.b1YmwCO7fye9yyK7Bu.qbkqDkJUxvF1vZPjYA2e4we7GG.l7jmb85jJ5ZW6JcpScpdq9Db2gkVZI93iOz4N2462hhfxQaaaawGe7QVoFABdP.EJTvbm6bAJUo7nhJJ95u9qwXiMVu2g3gGdP+6e+4V25VL6YOaV3BWHEUTQ77O+yiUVYkb4F0nFEMu4MmjRJIlzjlD+vO7CXpolxa8Vu087qs+KRClk6G3.GHcpScBqrxJzoSG4jSN7Juxq.TpUE6QO5AJUpD.d629sAJcFhyblyDnTWL44e9mml0rlgBEJPqVs7Mey2vQO5QAfN0oNwS+zOM+y+7O3t6tiBEJHiLxfO7C+Pt8suMPoAE5K7Bu.1YmcTRIkTAqpBPKaYKYbiabXokVB.omd5rnEsHt0stkbYZUqZEiYLiAqs1ZYYYkqbkbxSdR71auYDiXDXt4liBEJnvBKj8t28x5V25.fQLhQvi8XOFyctyU1MZLxHi3ce22kKe4KyhVzhp11xhKtXNyYNi7+mSN4Pt4lqdOH4me9gNc5Ht3hCiM1XZaaaK.3u+9yV25VIjPBA.9ke4W.fd26dC.t4laU64WP8ON6ryzidzCZdyaNG9vGlctycRt4lKlXhILtwMNN3AOH+4e9mxkM7vCmst0sxYO6YAJ0x1ADP.7Ue0WI2eWhwN1wJqXwfFzfH8zSWt+niN5HgEVX3hKtvku7kYKaYKbgKbA8N9ALfAfO93CZ0pk8rm8v92+9Afm4YdFZbiaL.xVeY8qe85crRxehIlndVT1ZqslQNxQxe9m+IG7fGD.5Uu5E95qunPgBN9wONabiarRauhJpn3zm9zrm8rG4s0st0MZSaZCKaYKSdaVXgEDRHgP6ae64Dm3Dr0st0pMqOYpolRO6YOwO+7iKcoKw27Meid62RKsjQO5QyN24NoYMqYzoN0IhKt3X+6e+nRkJ5bm6LcsqckryNa1wN1AIlXhxGaqacqoG8nGr5UuZBJnfvWe8kjSNY17l2bEbItJqcu7zt10N5e+6OPouncRSZRrwMtQt3EuHPk22xPXrwFy3G+3M391291GG4HGAnzwr5RW5Bcu6cmqd0qR7wGudVkdjibjbsqcMxLyLo28t2bgKbA9tu66.JsuZfAFHVXgEr28tW1+92ektD9RXkUVQPAED93iOjRJoPBIj.W6ZWSd+gDRH3niNRbwEGgEVX3fCNvO+y+rdVWDPu6O24N2g8t28xe8W+kdkwQGcj9zm9fKt3B6YO6g8rm8Tsx2i+3ONADP.XlYlwINwIXCaXC.k1mticri.P+5W+vKu7hkrjkfNc5p25qH0VehSbBd5m9owbyMmsssswANvAzys.qt6YP022Wv+cvGe7AEJTvZVyZXKaYK.vZW6ZI3fCFmc1Y4xM0oNU.3Mey2jSe5SCT536iabiim8YeV9fO3C.J0yLJrvB4ke4WlBKrPV8pWMssssEu7xK5XG6n762JKkcr1lzjlvS7DOAokVZrpUsJJt3hYXCaX3t6tSxImLqe8qWuw0ZVyZF8su8EmbxIRIkT3m9oe5+zY7uFDk6cyM2HjPBgLxHChKt3vBKrPOq8cricLtyctCsu8sG2byMhO93ovBKTOWy44dtmC2byMt5UuJW5RWB+7yOhJpnXNyYNbqacKLyLyPkJUz5V2ZNwINAlat4zhVzBlxTlBu669t.v+6+8+vN6riyblyPIkTBst0sVO4zFargoMsoQwEWL6ae6CKszR7xKuHpnhhEtvEB.1YmcxclSJojHojRhN0oNQKaYK4jm7j3jSNQt4lK+9u+6TPAEPm6bmIv.CjLyLS1wN1A+0e8Wz4N2Y5W+5GqcsqE.5RW5Blat472+8eWqZWc0UWwYmcFe80Wr1Zq4bm6bx6yBKrPti9XG6XQoRkTPAEHOA.6ryN.3rm8r3u+9iyN6L4jSNXkUVgJUpp1WlIn9id0qdI2mRmNczwN1QF23FGSbhSjqcsqQu5UunCcnCxC9MzgNTBIjPvImbhW8UeU.XLiYL3gGdvxW9xqP82u90O4kUu28t2jc1Yy5V25ve+8mYO6YiBEJPmNc3qu9RngFJuwa7FxJ7r7kubbxImnfBJ.iM1XBLv.YG6XG7ge3GR+6e+wLyLStdSO8zqfx8ETPAzidzC5QO5gdJ2OnAMH5W+5m7DriIlXvM2bCc5zgBEJnKcoKzm9zGd9m+4MXa1.G3.4Lm4L5obengFJssssUV4dmbxIVxRVBpToRtcczidz7bO2yQpolpAqW0pUyW+0eMlat4nSmN7yO+nu8su5sJb1Ymczu90OBJnfvLyLCc5zwku7k4PG5P7ke4Whs1Zq70Qe6aeYm6bmxufS5Y+N24NiM1Xi743IexmjniNZ4IsWUs6kmNzgNPW5RWjksd26dywO9w4hW7hUaeqxiwFar7D8kvHiLBEJTfJUp3HG4HXjQFwJVwJvd6sW95bPCZP7QezGw1111.P1sAMwDS.JcBFe228cL6YOa4UWPmNczst0MRO8zYbiabTRIkXv6It3hKDSLwn28wgMrgwG7AefbepANvARyZVyXfCbfXpolJ2GJwDST1.QpTohu7K+RryN6jk6PBID1+92Oye9yG.BN3f4EdgWPV972e+IxHijHiLxJU9l1zlFgDRHTbwEKeLgEVXL1wNV5Uu5k7Dq8zSOoMsoMrzktTYYo9nuxPFxPnvBKD0pUCTpEW6bm6LIkTRLiYLC46gU28rZReeA+2gibjiP3gGtdayTSME6s2dzpUq71ZbiaLYmc1xJ1CvF1vFHpnhR1XgVZoknRkJ9q+5uzKt+V6ZWKd4kW3omdZPk6kFqMf.B.KszR49tcqacCc5zI+bgu95K8rm8jQNxQB.AETPL8oOc.nvBKjG6wdLF3.GHSbhS7+rt.TCxSwRCtsyctS10t1EaZSah4Mu4Iu+KbgKvV25VksX3N24NYqacq58h6VzhVPN4jCu8a+1r5UuZ94e9mkGPrrbpScJV5RWJKbgKjLxHCbwEWPoRkXkUVQiZTi3JW4JrnEsHhIlXzSYX.dxm7IQgBErjkrDVyZVCKaYKiCcnCQyadywXiMF.dpm5oPgBEr5UuZ9rO6yXaaaa71u8aK6q6aYKag27MeS9se62HgDRPdRAd5om.vYNyYHu7xC+7yO4yafAFHEWbw76+9uWqZWG8nGMiXDif1zl1vctycHlXhQdepToh7yOeZQKZAd4kWDarwxctycjeYqzCJlXhI7TO0SQxImL+y+7O.+eJ9KntwXFyXXZSaZ58q7Axp81aOSYJSgBJn.d1m8YIzPCkO9i+XToREu+6+9.k97gjExgR8CR.8lbpat4Fomd5FLXzGxPFBIkTRnSmNBO7vYTiZT.kpfc94mOSe5SmPCMTdsW60PgBExCP1gNzAbxImX+6e+LnAMHBO7v4xW9xx8cexm7IIkTRA.BO7vqTK9t+8ueTqVsdxa26d2o3hKl3hKNb2c2wYmclCcnCQXgEFCYHCgKe4Kiat4ldVHp1x6+9uOJUpj4O+4SngFJye9yGkJUxBVvBpziYtyctXt4lSBIj.gGd3L5QOZzpUqAcSO0pUyBVvBHzPCku3K9Bd0W8UwVask3iOdBO7v4oe5mlqcsqQfAFnr6vIgFMZXlyblDZngxBVvBPgBExJXVcs6kmu4a9F4.M9O9i+fvCOb18t2cMpuU4Iu7xivCOb4eO8S+zje94S94mOqXEq..l8rmM1au8DarwRXgEFQEUTnUqVl1zlFlat4x0kIlXBaXCafHhHBlxTlB8su8kN24Nyku7k4odpmhHhHB14N2IMtwMlW9ke4p79nJUpjaqmzjlDEUTQDczQq2pUpPgB9m+4eH7vCmnhJJt4MuIsoMsQdLu4Lm4fc1YG6XG6fHhHBF8nGMomd53u+9i6t6N1ZqsLsoMMzpUKQEUTDVXgwF23FwN6riW7EeQCJaFYjQDbvASVYkECdvClANvAx1291wFargG8QeTlwLlA+vO7C.v68duGCbfCjRJoj5s9JRXlYlwe+2+MCdvClm5odJtzktDst0sVV4rZx8rZSeeA+2AKrvBhN5n40dsWiu8a+VLwDSjm.JT53f23F2nBGmVsZwd6sG.YOG3JW4J5UFIcNpNWVSsZ0L4IOYBMzPIwDSDMZzfZ0pYDiXDDZngx4N24PiFM7nO5iBf76vhLxHYPCZPxi20yd1y6llfGJnAQ498t28hNc5XnCcnL+4OehLxHkc6kZB1YmcnPgB8VBQokGtrJ8.n2xvJsrzN4jS3pqtBfdJzWVWaQpbPoAZZLwDCwDSL3me9gBEJjUnxAGb.c5zUoQ4sUVYEu7K+x7oe5mxm9oep7pFHYgSnTkcL2byoksrkXokVhCN3.m9zmtRsLTkwm9oeJezG8Q7W+0egZ0p0yO3zoSGJUpjwO9wSFYjAIjPBXjQFIeNjrLejQFIFYjQ74e9mKGzL4me90J4PfgwO+7iPBID89EXfApWY72e+QgBErpUsJ4A9RHgD3Tm5TXiM1fIlXB+we7GnToRZaaaKpUqFas0VN8oOMlYlY3fCNfc1YGpUqtVm4Al4LmICYHCQ94fidziRgEVn7yTRtIWyZVyvUWckRJoDl3DmHO8S+z0pyy29seKPoKKKT5R11nF0HNwINAkTRIblybFhHhHXdyadnSmNzpUK6XG6..7xKupUmKIL2byQiFMb3CeXY2YY+6e+jXhIhs1ZakZMxV0pVQd4kGe7G+wTRIkPVYkEu9q+5FrrG8nGkcu6cK++d3gGb6aeaVzhVDkTRIjSN4vrl0r.J0kgJK+1u8axtfwt28t4XG6XXt4li0Vac8V6dMouU0wG7Ae.lZpoL6YOa4UBrcsqcjSN4vxV1xPmNcjVZowZVyZPgBE7XO1iIer4jSN7EewWHOgyt10tB.yXFyfae6aSQEUDevG7AnUqVZW6ZmAO+VXgEXkUVwwN1wjaqu3EuHe629snPghJDuGu0a8VTRIkPZokF6XG6.EJTP26d2Af1zl1Pd4kGe3G9gTTQEQVYkEyblyjUspUQAET.OwS7DnPgBV9xWNokVZnSmNV5RWJ24N2oRkOI2dwBKrfNzgN..KbgKjHhHBYEWLD0W8UjnnhJh4Lm4PAET.2912VdxHOwS7D036Y0l99B9uCVZokDXfAhe94GpUqljSNYxN6rAJseuBEJLn6tnUqV4USpIMoI.PlYlodkQ53rwFapRY3nG8nxF+UxPpaaaaS1cokV8IIk6klPZ26d2QkJUrqcsKhHhH9Osal0f3VNRQW8PFxPvc2cmG6wdL70We4kdoWpB9GrgPxp4ETPA5Um.5EE2f9JlJ8REiM1X4WXZn5PBkJURwEWrA868KcoKATpkZzoSGEWbwFTVG+3GON6ry7m+4exe+2+M4jSNLsoMM8TlXyadyDTPAQ+6e+kcOfpx+hqLt0stE25V2hjSNYznQCspUsB6ryNxLyLofBJPdIq9nO5i.JcI0jZexM2bQgBE3kWdwO9i+H4kWdxS35l27l0ZYQPEwPYKGyM2bY2wB9+Td8vG9v5Utyd1yRaZSavau8l3hKN4Lvizxb9tu66xJVwJnO8oOxOCEWbwUqjOGbvAdkW4UnYMqYnToR4ADk96gNzg3Lm4L3t6tyhW7hofBJfDSLQ9rO6ypT2ZwPjZpoRlYlorxOQDQD.H6C1Poo5xALfAfUVYkdVJ7t0pgRJr7XO1iYvmsZcqasd92rz4xLyLijSNY819YO6YqPJMEPO2ZQgBEXgEVTgiMyLyjhJpnJDKKRwJjDm5Tmh1291iu95K6ZW6pdoculz2RJdGLDSYJSAWc0UV4JWorQSTnPg73DFpc0au8VVI7x+BeWc0UJrvBqf+9KsBqFBIipTdCwbzidTdlm4Yn8su8xYjCoX4RBIkqkT.wP2et90utb7mHM4ooLkovTlxTzqbk03LkEc5zwF1vFXfCbfLu4MOJt3h4RW5RrpUspJsss9ruhjaIcqacK85ilat4RAET.N6ry0n6Y6YO6oV02Wv+cHszRiPCMTLwDSHjPBgILgIva+1uMQDQDb6aeaY2io7Xt4lK+rtjQUkLfpDRV1O8zSuJkgxl1nkzgorwAYd4kmdkeIKYILm4LGhLxHYLiYLjYlYxu9q+ZEbaz+KQCV.0lSN4vJW4JAfdzidvfFzfn6cu6roMsI4xHYMYMZzn2MKIejRx56.z912d.pPPn0l1zFY24QZPxqd0qJO3VKZQKjKq6t6tdGaFYjA1XiMjd5oWoAdw0u90wFarAO8zSNwINQE1uat4FW+5Wmu9q+Z.jCPvxxctyc3RW5R7nO5ihKt3B4jSNxqxvcKRSxowMtwjYlYRlYlIt3hKr28tWRO8zQiFMXhIlHOIkyctyg6t6Nomd5rqcsKfRmccY8kNAM7HYADMZzn2JSI4tAW+5WmacqaQN4jCd6s23pqtR1YmMYjQFxtTPN4jCETPAxtHSMkXhIFTqVMm7jmjidziRVYkESYJSQdvSc5zwzm9zoYMqYz+92e5XG6H93iOr3EuXF7fGbsZkl1xV1BCe3CGO7vC5d26N4kWdxO+Dd3gyvG9vImbxgsrksvEu3EwKu7pZy7Kkeh8RSfGfrxJKfRWF3e629M4sat4lSd4kmACldc5zgNc5zy0RfRcujpaRFRS3u7GqjbU9W9T9u3yOxi7Hxxc8U6dMouUkQ26d2o28t2bjibD8dgnjhdEWbw7ke4Wp20nRkJMneyJQd4kmA+RWqVs5J0XIRV5qrteiz0DfAcG.Cgz8mpZEikZu1zl1jdsWlat4UYa0W9keI+3O9iLfAL.72e+o4Mu47Zu1qwrl0r3jm7jUprTezWQBCsJLJUpj6bm6TitmUW56K3gSr1ZqwJqrRdU+JnfBXSaZS3t6tSHgDB8rm8j3iOdxM2bqfx8FYjQ5ougjwAJ+j38vCO.nV+tqpi+5u9KF7fGL8rm8jt10thmd5IQFYjXs0VKqG5+0nAwsbBHf.HpnhhV1xVhKt3B93iO.TgH0WpSznG8nwGe7gV0pVAT5fgW6ZWCarwFF6XGKcoKcQdI9kVNFI7xKunu8suLzgNTbvAGHqrxh7yOexLyLImbxgl0rlQDQDAgFZnUP4dok6Y1yd1z6d2aZRSZB8pW8RO+A8W+0eEnT+ot+8u+3pqtxnF0nnG8nG.kNCTas0V70WeIv.CjgO7gav1j3hKNLxHivbyMm8su8UqZO6cu6MQGczzst0M5PG5.ie7iG2byMxM2bkyg4wGe7.ktTqsoMsg+2+6+IedAXqacqnSmNznQCd6s2L1wNVL0TSkc2IA2aPxUZ5W+5m71j9PWoSmNYkPO4IOIN5nizpV0JN1wNFPoCf4hKtPKZQKpRW.vPXs0ViYlYFm+7mmW5kdI99u+6kmTrjxit4laDVXgQFYjAKdwKlwLlwvwN1wvXiMtBO6XHEUJK+zO8SnSmNF4HGIMtwMVu3oQx0Al0rlEwDSLDarwVsJTTbwEWA+wur+ehIlH5zoCiLxHhM1Xk+cpScJL0TSqz.F+F23Fz3F2X8TnJrvBqJkkp5XCJnfPgBE5ErY.xYqJIjRUom3DmnV0tWdJ62riZZeqxiSN4DSe5SmabianWrQIQlYlI5zoissssI2ttu8sup8d1YO6YQgBE3u+9KuM6s2dr2d6qzOnam5TmBc5zI29HgTP+VUq7P4IqrxhF23FSiZTij2VPAEDewW7E3me9I2dU99LYjQF5MwwxhFMZHrvBCMZzvZVyZXpScp74e9mCT568JKRJkC0e8UjvRKsjl0rlI++96u+nToR46w0j6Y0k99Bd3iQLhQvm+4et73yRHMQbIi.ckqbEL2bykCpenTOXPgBEx5ije94iVsZwKu7RuIpK4a7ke0Eqqzqd0K7xKuXyadyL6YOa43L6+xos4FDK2qRkJ7wGejWV9hKtXN5QOZExNL+4e9m3u+9SqZUqXbiabnSmN4kGcYKaYDczQiu95K95qunSmNhO93qP.ZjSN4HmV3JnfBzKs3srksL9e+u+mb9f+l27l5MP14O+4YcqacxJ+GZngBnu0gRIkTX8qe8DQDQPe6aeou8sunSmNVyZVCPoQI9XFyXXricr.kpruwFabEr11e+2+sblvPRQ7ZJRKcaYCBk7yOe9pu5qj++Ce3CS6ZW6nScpSL4IOY.XW6ZWxOroUqVV8pWMiZTihILgI.T5jsJqqRHngmCdvCxMu4MIf.B.SM0TN6YOKcu6cGMZzvd26dkKWBIj.96u+nRkJ4zR1l1zlX.CX.nVsZ8TVtlP1Ymsb+nnhJJt8suMCbfCTuW16s2dyDlvDHhHhf0u90iRkJoMsoMTbwEKq.xIO4Ioksrk71u8ayF23FqvGsDIzpUKojRJxiAT19YImbxzt10NdoW5kHt3hCu81a8T.zPjVZogyN6LevG7Ar28tWBLv.0ypr5zoiibjifu95KKZQKhcsqcQSaZSI3fCFsZ0xO9i+nAq2e4W9EhLxHYIKYIDWbwgc1YWEBvwJi0st0wDm3DkO1G4QdDBN3fonhJhe5m9I8Jaqacq4se62lidziR.AD.1au8jXhIRIkTRMpcu7jZpoRQEUDd5omLgILAhM1Xqw8sJKFYjQrvEtPTpTIIjPBLfAL.4882+8ey4O+4Y8qe8LgILAV9xWNaZSaBkJURXgEFlXhIUY+ve7G+Q5V25FuzK8RjPBIvsu8soO8oOnPgB8bUsxhT7M4me9QLwDC6YO6AO7vCd7G+wIqrxhie7iWc2Vj469tuioN0oRLwDCaYKaQNMoZjQFwINwIn3hKlryNa5Se5CZzngie7iSm5Tmvau8lie7iK+bWYQoRkLgILAJnfB36+9umabiaHa3II2S5.G3.LrgMLF1vFFZzngu4a9l5s9JRnPgB9vO7CYyadyxeYx0oSmb6ZM4dVcouufG93G9gef90u9wrl0rH93im+4e9GZe6aOADP.TXgEJm.PVvBV.qXEqfniNZZdyaNOxi7Hzm9zGxKu7zakhV7hWLSe5SmXhIFV+5WO94mezzl1TN4IOYEbQx5JQEUTXgEVvF23FIojRR13qFxaK9uBMHJ2u8suc10t1Et3hKnSmtpzETpr77d5omNyZVyB6ryNr0VaIkTRwfKk6pV0p35W+5Xs0VWg7084N24XZSaZz7l2btwMtgA8s7ctycxN24NwQGcDKrvBt10tVEhKfcricvN1wNnIMoIXokVx4O+4k8e+SbhSvLlwLvUWckabiaTot2i4laNFarwbwKdwZsqvrsssM1912NN4jSXkUVQlYloAW13Uu5UyO7C+.t4lajRJoTAqU9m+4exe8W+EsnEsfzRKsJM2WKn1QswcUJpnhXxSdxrvEtP5XG6HcpSchhJpHN3AOHuy67NxkSJmUKMwX.49NpUqtRUptpP5CgljOvmRJonm+09q+5uRaZSanqcsqxYik6bm6va8Vukb4V+5WOAETP7nO5iRTQEUUJGqacqiYMqYQZokldVp8q9puBu81abyM2XBSXBTTQEw9129nyctyUZa47l27XQKZQz5V2ZZcqaM4kWdbwKdQZZSapbYl6bmKu8a+1zt10NhLxHAJ0BlRoOTCw5W+5ooMsoDXfAxPG5PAJchU0Dkb13F2H1XiMLvANP4iMmbxg24cdmJXDhMu4MSO6YOwau8Fc5zw4N24j+teTSZ2MDwGe7z291WBKrv3RW5Rr4Mu4ZTeqxhkVZork0jtFjX26d2rfEr.hM1XwVaskPCMT4O5cZ0pkEtvEVkwDvEtvE3Mdi2fYLiYPe5SejOtu8a+V15V2Zkdbu1q8Z7Vu0agmd5IibjiDc5zwUu5UI5nitJaOj56H823iOdr2d6YPCZPLnAMH4y+7m+7kGC94e9mm2+8ee5Tm5j7DLSJojj+X9TdxLyLYYKaYL1wNVF8nGMPoFuZMqYMxJRb1ydVRN4joksrkLrgMLVyZVS8VeEIRKszPqVsxOKqUqVVxRVh72AiZx8r5ReeAO7QVYkEyZVyh4N24pWVILyLyjYNyYJ+rWFYjAe9m+4DYjQJ22Jmbxg25sdK8z4X6ae63qu9R25V2jMnXpolZsNnsK+y0FhW+0ecd0W8UY.CX.LfAL.Yi8rzktzZ045gIT3niNVqhdFu7xKYqmHEox2OHv.CjgLjgvm7Ieh7.Z+aDiM1XBN3foKcoKXiM1vm9oeZkZMt+sQs00O9uBk8Yf5BFYjQ3fCNTqBZx5CbzQG41291U4G3Cmc1Yt0stUkNAPKrvBJpnhpSYZI0pUSiabi4RW5R03f3Sx8hptbWrqt5JW+5WuB9ybUgKt3BokVZFL8hVcXu81Sd4kWENeQFYjL3AOXl0rlEIlXhzzl1TRM0TqzyQ00tWdToRElYlYU3dYCUeKo7ld4yBFUGVXgEXpolpmeiWSvYmclTSM0ZclEq7Xu81S94mek1mWkJUzjlzDt5UuZM963zKlQ...H.jDQAQU9gTVcqx7OeSM0TToRUELVTcsuxF1vFH8zSmILgIfkVZIVZokF7aXPYOeU28r5ReeAOXRU8dL0pUiat4FImbxUYehxZnkJCEJTfe94GIkTRM3eToL2bywd6suNGSiOnPUcOrAKfZanI+7yGc5z8u9O9RVXgEz+92eJrvBYqacqOvnXufFdJojRtmqXOPUpHfDk2ZhkmZRVup5PqVs05AgyN6rkCDxph6lA2KeLAUanpB.SIptUwDp918xSQEUjAegYCUeqZx0og312912U8YpssGUFUmbWTQEUq6yTcSvQ56EPsUVfZVeEnzrjS0MQvZx4qtz2WvCenUq1J70d1PTSJiNc5pvWE5FJptIZ7eIpSJ2me94K+kv7dM6ae6qVGXp2O3l27lUHMq8f.hbeu.A0cRKszH6rytdYxPBd3lZZekqcsqUuMoGABD7vI0Ik6u4MuIN3fC0Wxhf+EgH22KPPcmMsoMoW5+UffJiZZeEo3xPf.ABpLpSJ2KsbvZzn49lE7ET+R94mO27l2rA223DHPf.ABDHPP8O0YetOmbxQnHn.ABDHPf.ABD7u.ZP9HVIPf.ABDHPf.ABt2iP4dABDHPf.ABDH3gDtqxy8BDHPf.ABDHPff6eTulm6qO9.9HPvCpTe8QrRf.ABDH39Ah2i8fOUkw1Etki.ABDHPf.ABD7PBBk6EHPf.ABDHPffGRPnbu.ABDHPf.ABD7PB047buUVYk3iXkf5cDeLsDHPf.ABDHn1ScR4dqrxJbvAGpujEABjwTSMUtukPAeABDHPf.ABpYTmbKGMZzTeIGBDXPD8wDHPf.ABDHnlScR4dgq3HngFQeLABDHPf.ABp4zfDPsiXDif2+8e+5TcLzgNT9jO4Sj+YjQUun9hu3Kxrl0rpv1M1XiQgBEUX693iO7QezGQKaYKqSxZck5i1K2c2c8Zu7yO+p1ioxZupNBHf.XhSbh7jO4Sh81a+ci3holZJ8su8kvBKr6pi+eS3fCNfu95qA+4hKtb+V7ZPwGe7gku7kSaaaaueKJ0KLu4MOlyblSUVlO6y9Ldy27Mqw04caaTMQVpupGGbvAV1xVFAGbv04yWsEmbxI95u9q4oe5m9d94t9j23MdCl7jm78awnNyvG9vYoKco2uEi64Taett9hFpm85Uu5EwDSL2UFHyau8lILgIfqt5ZM9X7vCOncsqc05ykfFFpyATqgvJqrB0pUWmpiCbfCPFYjAO9i+3zrl0rZzw7HOxifRkJ0aat4laLiYLC9oe5mX6ae65sOyLyLL1XiqyxZck5i1qqd0qxO+y+LN5niz0t10ZT8Yn1qpioLkofGd3AEVXgnRkJ5RW5BKXAKfqd0qViNdSM0TFwHFAcnCcPdBWwFar0JY3eaLpQMJBLv.M39RLwDYlybl2aEn6g3pqthSN4DMtwMlDSLw62hScl10t1QAETPkteSM0T4q4ZJ2ssQUmrTeVO1YmczjlzjZ7Xs2s3qu9xfFzfXoKcob4KeY.nksrkXqs1RG6XG469tuqA67zPRe6aewWe8sdYxX2uwSO8rA2nDVYkULqYMKRHgDXm6bmMnmqZB2MOWWeQC0yd6ae6iIO4Iyzm9z4cdm2oFcLVas07ke4WhYlYF.DVXgQpolJSXBS.c5zYviwbyMm4O+4i6t6NEUTQLvANv5sqAA28zfnbe4QgBEUZGiJiKdwKxEu3EwYmctZ6zWSpeCY496V4zHiLhRJojZ71qsk4to8J2bykctych6t6Ncsqcsdu9AvYmcFO7vCN+4OOevG7A3qu9xXG6XYXCaXrvEtvZTc3pqthu95KW6ZWCyM2br1Zqq0xw+VYMqYMjQFYn21t3Eu38IoQPCA4me9L1wNVJrvBueKJOPRaaaawGe7gl27lKqz8d1ydXpScp0qOqXnySCIQEUTbiabCN5QOZC945gArzRKwGe7gae6a+uBk6eX745bxIG96+9u4Idhm.MZzvMu4Mq1i4Mey2DyLyLhM1XYSaZS7rO6yRG5PGXJSYJrnEsnJT9NzgNvblybvTSM8tRmBAMbzfpb+XG6XwGe7Ac5zwwN1wXEqXEx6qIMoIL4IOYYk6twMtAe5m9oUP4nph92+9Su5UuPoRkbqacKL1Xio3hKF.ZQKZAScpSUVo9vCObBMzPAfO5i9HtvEtfb8zwN1QF23FGpTohKbgKvW9keI23F2Pd+SbhSDWbwEN7gOLcqacCiM1XtyctCu3K9h.PvAGL8u+8GSLwDJojR3jm7jr7kubYk3abiaLicriEmbxITpTIEWbwr4MuYhKt39WS6UMgPBID.3W9keA.5cu6MPoqNRMkqbkqv6+9uOW3BWfW7EewGpTt+O9i+fye9yav805V2Z5QO5Ae+2+8DTPAQ6ZW6X26d2ricriJT11111Ru5UuPgBErsssM96+9uk2WHgDBN5niryctSBO7vwJqrh28ceW.nQMpQzm9zGZYKaIG4HGgcsqcwvG9vYqacqTRIkPu6cuYaaaab5SeZ45yCO7ffCNX9ke4W3JW4JFT181auInfBBarwFN8oOMabiazfYvnd1ydRm6bm4JW4J7a+1uw0t10za+VYkUDTPAgO93CojRJ++Xuy7vppp0F3+NLd.A7vfHHHRBhhHnhSn3DBRBJHJZRlZhVd8lCWSukMnMcIKyT6ll4Xo2J0zRMbVbLQCm0TwTDGoPDAkQO.GX+8G7r2wgyANGPrr91+dd74d6vds1u60365c8tdWr28tWomYDiXDXhIlnikaG8nGM4kWdR6tSiZTiHrvBi1291yEtvEHojRpFilR8pW8B+7yOsbwfXhIFrxJqz5877O+yysu8s0Zm87zSOYfCbfnRkJRIkTXe6aeZ8clSN4vt28tk9MWbwE5e+6OsrksjKe4KyN24NIu7xSK4wDSLgniNZ5PG5.+5u9qrsssMxJqrzqrWUpMYwPkq0DN4jSDQDQfWd4Em9zmlqd0qZP4.pbq9CLv.QgBEb9yed1111lV+cyLyL5d26N8rm8jG9vGxQNxQ3Dm3DRosqcsq.PjQFI96u+74e9mikVZICX.Cfe7G+QtxUtBuvK7BjZpopkRe1YmcLpQMJN9wONm7jmDKrvBhM1XwGe7g7xKORN4j4jm7j056QT4iZq+E.snEsfHhHBb0UW4ZW6ZroMsoZMhc4iO9fRkJIojRR525XG6HAETPrxUtRIEFM2by4EewWT5aPbLgu5q9JBIjPHv.CjzSOc14N2I26d2SJuF0nFE24N2gKbgKvy9rOKVas0ru8sON1wNlVJTYhIlPvAGL8oO8ge629M1yd1iVKro1F6PeXmc1wfG7foksrkjZpoRhIlHkTRIzqd0K72e+YMqYMTTQEI87gFZn3s2dyxV1xp0xQ+7yOF3.GHPki+7RuzKw1111jVbmKt3BCX.C.2c2cRN4jI4jSFMZz.76ii98e+2S+6e+oMsoMrvEtPxImbL32O.coKcgd26diUVYEW3BWfsrksH82zW+5AMnAQG5PGPsZ0jbxISJojRMVdYL0Afw02SgBEz8t2c5Se5CkTRIrt0sNBHf.vAGbPqwtLz3gadyalN1wNxfFzf3q+5utVkcu81a7xKu3F23Fr7kub.X1yd1rgMrA5e+6udUtericrXhIlPBIj.u3K9h3niNVquCY9iiGaJ2qPgB72e+4m9oeh1zl1PfAFHG5PGhzSOc.X5Se5XokVxktzkvTSMEe7wGlwLlAu1q8ZFU96iO9PDQDAkTRIbjibD5ZW6JJUpTpgc1YmMae6aGGczQ5YO6IW9xWlqbkq.fNSnFXfAx4O+4wbyMGe80Wd5m9oY8qe8R+cUpTgJUpHjPBgLyLSRKsznCcnC.PvAGLCYHCgBJn.NzgND93iO3u+9SXgEF6YO6AnRq5zrl0L1+92O28t2Ee80WcTp8O6xKiAwNtokVZDTPAgat4FETPAXqs1hYlYlz.v0FEWbwZsvp++Bcu6cmHiLR5Uu5E1ZqsHHHPW6ZWYRSZRLrgMLomalyblzqd0Ko+6PCMTRN4jklDNlXhgVzhVPrwFKlat4RtaQ.AD.u+6+9R6JSm6bmYXCaXXu81iZ0pY6ae6DYjQhWd4EyXFyPJ+m3DmHspUshu8a+V8J2+i+w+PZQwh4arwFKuvK7BZYInW3EdAToRkz20PFxP3cdm2QRgK2c2cV7hWLlYlYROSbwEGe7G+wbvCdP5RW5BsoMsg8u+8K0+rEsnELhQLBNyYNCIlXh3pqtxm+4etV4wXFyX3e9O+mjYlYpir6qu9xfFzfH4jSlKbgKfBEJX7ie7nPgB15V2JEVXgzjlzDF9vGNG9vGVR49F0nFwhVzh.98IY6XG6He7G+w.PrwFK4kWdRJADVXgwzl1zjJi5RW5BiXDifW8UeURKszjjmW7EeQsp6iJpnXhSbh0ph3FRVLT4p9vGe7g4O+4qUakpZLiZhEu3Eimd5IBBBnPgBBN3fY.CX.L4IOYfJUreUqZU3niNJ8LgEVXjRJoPBIj.gGd37TO0SAToqe3qu9xRW5RowMtwDYjQhRkJ4BW3Bzu90O5W+5mVx+PG5PIxHijabiafc1YGewW7EnToRsdOaYKagUtxUViuGAAAC1+JjPBgoO8oC.kUVYzoN0IhIlXXhSbh03BwDUTM4jSV52BIjPne8qe7ce22IY.FqrxJhLxHwN6riSdxSJMlP26d2wd6sWpt3YdlmgYLiYHMe0vF1vnrxJSxUKEaG7K+xuv+9e+uApToxu3K9BbxImjJSF5PGJKbgKTZwf0zXG0DKaYKCas0VfJUJNhHhfwO9wiqt5JQFYjb+6eesTzbRSZRnQiFV1xVVsVN1wN1QBN3fApbNkm9oeZN+4OO25V2hPCMTd4W9kApruTPAEDwGe7De7wSEUTgTYVHgDBVYkUHHHfCN3.2+922fe+SaZSivBKLJu7xkx6niNZF23FGft8qWwJVAt5pqTZokh4laN8su8kCbfCv7m+70a4kwTGXr889jO4SjNKfBBBDRHgfZ0pwbyMWpL2XFO7Lm4LHHHPvAGrAUtucsqc.+tw6D4nG8nDVXggmd5oNFuZG6XGbzidTJnfB3EewWrVyeY9ikGq2Psqe8qm0st0IshOwC4Y.AD.JUpjye9yyRVxRXQKZQjVZogM1XiQe3VEGPc9ye9rgMrARHgDz5uWPAEPRIkjzJs+ke4WHojRhjRJITqVsVO6EtvEX4Ke47Ye1mQokVJ93iO58cticrClyblCabiaj27MeSfJWYeEUTAu0a8V7C+vOv7l27392+9ZMAhiN5HpUqlMu4MyQNxQXkqbkrgMrgmnJuLFrwFaPPP.KrvBFwHFAomd5RVcPdE6UZA3oN0op0+zmuqNxQNRF9vGNm6bmCkJUJMQWXgEF8pW8hqcsqQrwFKwFarbiabC5YO6oVsmTnPAW+5WmQNxQxPG5PAp7PSBPBIj.QEUT7xu7KKMwLT4BZu28tGd6s2RGNcSLwD71au4N24NjSN4nibpPgB5ae6KYmc17LOyyPzQGM6YO6AkJUxfFzfz5YabiaLu669tDUTQwrm8rQPPPK+OddyadXlYlwbm6bIpnhhW5kdIznQCyXFy.as0Vo9CheO.RK5Qbxr4Mu4golZpz2XBIj.lZpoL24NW8VericrC.nO8oO.PO5QOj1Iu92+9CToRX.ZY0UyM2b15V2JQEUTLsoMMJqrxjxipiiN5H+q+0+hxJqLdoW5kHpnhhO6y9LL2bykT3up4a7wGOCcnCkCe3CiYlYFCe3CWu4qwJKFpbUejPBIfBEJXdyadDUTQwq9pupA2AMe7wGbyM23Tm5TDczQyvF1vHiLx.O8zSbyM2.fYMqYgiN5HG3.GfgLjgvXFyX3t28tDTPAgO93C+6+8+VZQjezG8QDSLwnWWTLkTRAkJURaZSaj9s9zm9P4kWN6ZW6hAO3AiolZJe4W9kDUTQQ7wGOkUVYDYjQBPM9dLl9WiZTiB.o5Iw.cfX6E8g3gNr9dlSToREu5q9pDUTQwbm6bQgBE5L9rUVYE+7O+yDarwxHFwH31291zl1zFF7fGL.7lu4ahSN4DIlXhDczQy3G+3QsZ0LsoMMr1ZqkxG8M1QMQN4jiT83ctycvYmcF+82e1xV1BBBBzu90Ooms8su8XgEVHs.mZqb7q+5ulINwIBTohiCdvClCe3CiCN3.SaZSC0pUy3G+3I5nilssssgiN5nztjKR4kWtT+szRKMC98ahIlPngFJ4latDarwRLwDC6e+6G6s2d71au04auicri3pqtRJojBCcnCkAO3ASFYjQsFnJLl5.iou2y9rOKd4kWbsqcMdlm4YXnCcnbricLI+fWDiY7PAAAJrvBMp.egX4v0t10z52E2QE8EP.18t2s78PySn7XU49Se5SCT4fDBBB3hKt.fjBOW7hWT5YuzktD.F8oy1d6smJpnBoCx4CdvCLJKGqOppeRlWd4UiSzc3CeXc9MarwFLwDSXgKbgr3EuXV7hWL1au8Xu81KoHwO+y+LVYkU7IexmvLm4Lk1x3pyS5kWhOe7wGOlXhIrrksLLyrJ27mRJoj5Td82Q5RW5BgGd3Z8Owc3Qju8a+VxO+7QsZ0rpUsJfe2cmDOTtuxq7JTRIkPIkThzhHq94nX1yd1je94CTYzVvRKsjSbhSHsX1zRKM9tu66zJM6ZW6BSM0ToIkCMzPQgBERJAWcDDD3Ye1mk3iOdJt3hQPPf0rl0.fNK.tptegnKAYlYlgWd4EMpQMBas0VN24NmTenacqaw27MeCJTnft0stwwO9wojRJgdzidnU4YQEUDolZpXs0ViJUp3zm9zReiojRJjZpohCN3fdilVYjQFnVsZBHf..f90u9QIkTBETPARkmcoKcgxKubo9dPksyE2V5qd0qxu7K+BJTnPp+XUI3fCFEJTvpW8pklDbm6bmLu4MOcbYkcricP1YmMkUVYRttfgVbdsIKFS4Z0wN6rCqs1Z94e9m4PG5P.UpT51291qU43JW4JLjgLDd629sQPP.0pUK4RY96u+.UtSIEWbwL+4OeznQC4lat7pu5qxpW8pqSGL3u4a9FfJsjpnL2jlzDtvEt.UTQE7Ue0WwPFxP36+9uG.t28tG23F2.KrvhZMppYL8uDGytO8oOXlYlwgNzgXHCYH0pUOsyN6PiFM0aeNd6ae6RKL3vG9vbtycNcNORZzngYMqYQokVJEUTQRJ6J1ewO+7iBJn.V9xWNBBBjUVYwZW6ZQgBEzoN0IsdeUcriZiO9i+XJqrxH2byUpsb.AD.kVZobkqbEo1f.RGhRwEhWeJGEW78JVwJHqrxBAAAV5RWJO7gOTmnvxZVyZz5LZXnuew5lF0nFQG6XGAfErfEvPFxPzqawHFnIZQKZAd3gGTQEUvDm3Dq0H5jgjAisuWW5RW.prcZwEWLkUVYjPBInUen5x3gEVXgXt4lWixsHhFnq56Pk3NOouw+j4IWdr4VNBBBZc3Tp5.e5SgPw++h+MCg9NTnF5fpVSTXgEpW4rpTVYko0yUUt+8uOqd0qVmeWLu9e+u+GW4JWg9zm9f6t6NiYLiA+82eIk6De1mzKuJrvBkbenMtwMRwEWL1XiM.XTGVm+tyjm7jqQetWjp5lFhVHQb61acqaM.RJsTUp54ZPPPPKecUb6TqtEWtvEtfV+2adyalm64dNhHhHXu6cuDQDQfff.acqasFk2N24NyK8RuDN5niZEYkp9ATu5uqTSMU5ae6KcricTZxBQ2LPjyd1yxy+7OOsu8sm8t28xwN1wn28t2zjlzDr1ZqwFarQ5boHpfRm5TmzQoYnRewUeVN8JW4JRJF3me9wku7kofBJPZA1O0S8Tb6aeasRS06mmQFYf+96udi.UhJ1dpScJs9cwIuqJW+5WW5++CdvCn7xK2f8eqMYoUspUReiUkpWtVUDUropm6BwzXnvR6HG4HYPCZPXqs1pU8uBEJPgBEznF0HI2HTj6cu6oyhLMDYlYljSN4HIqCYHCA32UbzbyMmW60dMZe6aOVZokFUvR.Lt9We9m+4LqYMKhO93YricrjSN4vV25V0aZDwRKsrdaXI.cNDtW5RWh1291SfAFnjqIkWd4o032EVXgTZokhat4FJTnPZbX802Hf.BPZweUeriZipNVlXaLKrvBfJKCei23MH5niVxevu6cuqjhf0mxQw9RSYJSgoLkon0eq5VstpJ1are+aYKagXhIFd629so7xKmae6aypW8pkbcvpxoN0o3JW4J3iO9vRVxRnzRKkTSMU9rO6yzqK.ZLxfnB2FpumyN6LkVZo5Xvr6e+6Ko.dcY7vG9vGZTQEuLyLS72e+wCO7PqwRE2Yt++n6z9WY9CIZ4TcD6b3me9I0wRbKepdHUL2byEnxCTZUOXJ4kWdRVH+92+9Xs0ViEVXgNcHDGzsl1h5GUJojRPkJUbsqcsZ0xMojRJjRJofolZJe3G9g0o3Aaco7Rz8Jb1Ym052M1xqZiqe8qiO93C28t2UR4kl0rloiaN8LOyyHsM2KXAKPKkZjolI+7yGqrxJIK0Jh0VasNSHTUDGHt5Gr4p5VCPksUu5UuJd6s2Xt4lSqZUq3xW9x0XDhnIMoI7Nuy6fFMZHkTRgKe4KS94muNtaBn6MIbiabiApbBIw1jUuOnXZD84z0t10Ru6cuI1XiUZarEUnSbb.wCqqHVas0TbwEWiKp5PG5PDP.APPAED1XiMr+8uexM2bI3fCV5bmXnCIWsgnb4jSNYvnxRCczjvXKWMlzXu81WquqAO3AyHG4HofBJfcu6cyst0sve+8mt28tCT42V4kWtjBNOpr6cuaF4HGIst0sl9zm9PwEWrzBHeu268ve+8macqawwO9w4t28tDWbwgCN3PslmFS+qSbhSPrwFK8u+8md1ydR6ZW6H93iG6ryN9xu7K0a9VRIkTie2UMFiKpXb0ol56H11plRqolZJO7gOTpcU4kWtVFLxTSMESM0TN9wOtdeuOJbzidTJszRoe8qebwKdQrzRK0J.QTeJGE2MgcricnUeIqs1ZsNfwUGi86eUqZUrwMtQFzfFDAETP7TO0Sw67NuCyblyTqcEWLOm9zmNsnEsfANvARW6ZWoCcnCrjkrDhM1X0wvXFiLHtSLFpuWN4jCpToByM2bsFatpsSpKiGpToRiJvYjVZoQ3gGNd6s2ZobuXzJr5kQx7jMOVcKmZhyblyP4kWNAFXfDYjQRzQGMssssUZ0wUEQKNLtwMNIe2D9cKiM0oNUBLv.05PBVUDOrZ8nG8ffCNX70WeqwAYqO7i+3OhBEJ30e8WmN24Nimd5IwEWbZc3Rd4W9kou8suzjlzDBLv.QoRkFs0Sf5V4UN4jCpUqldzidHEAF.iu7p1HojRBAAAToREADP.LtwMNrzRK4Lm4LZ8bhWZXJTnPuaGX25V2HhHhPZvpHhHBFv.FfQuKD+cEQELt10tFIlXhRgiLMZzTqtaPlYlIkUVYzst0MIWPwc2cmQLhQnyytoMsIL0TSYlyblnPgB8d1ODQbAZaYKagO3C9.1zl1TMZgxp61Ph+2m7jmjKcoKIcPSqJhQaIwErlQFYnkh2U8r.jZpohff.lXhIRkMIlXhboKcoZ0xoG3.G.AAAdoW5kPPPfCcnCwoO8oQiFMRGDzpG0ppKHJ6U8LHnPgB9nO5idreg3XrkqUEwwKpdZLzEnin6eLyYNSV7hWLIlXh5Xw7byMWb1YmoIMoIR+VHgDBqbkqTGeUVTA1ZhMsoMgff.iZTiBmc1YsNrpd6s2nQiFdoW5kX0qd0ricriZr+QUeOFS+qvCOb72e+Ym6bm7lu4axnG8nAPut3jHETPA5XYTwEVIt3GfZzcLEcKOQDqap5tgYiM1nUHgNnfBBSM0TIk3Dcky8su8I8s8S+zOYz6pQ8gSbhSfKt3BiXDi.AAAsh7LFa4nna8.+9teU893Ymc1FzxyF56WkJUDczQiJUpXsqcsL0oNUIWiq28t25jed5omDczQS1YmMKYIKgwN1wx4N24vbyMuFOSdFRFL19dhtH3G7AefzboyXFyPqEJVWFOzFarwnBwmh6fjn6vAUtnxt28tiFMZjzk5O66EHYLNdrnMUMYgJweWiFMrl0rFd9m+4kNDTkWd47EewWnSZKrvBYe6aezqd0KF0nFE4me97FuwavINwInScpSzt10NF23FGkWd450uN0nQC6cu6kPBIDI+kagKbgjd5oKs565q67.UdAL4niNRm5TmXricrRemUM7p4ryNyvF1vjNffETPAZElKaHKufJOXtCYHCQpS5oO8oM5xqZC0pUyW8UeEidzilILgI.ToBY00KdlXhIFsrdg3g88Dm3D58fc9WEF8nGsN9x5O+y+rdC2k5iMrgMPvAGLIjPBjTRIwctycXPCZPzjlzDV4JWoNt9QU4C9fOfYO6YyblybPiFMXlYlQAETfNKt5vG9vL8oOcBJnfnjRJoVspmXa3HhHBJpnhvd6sWptp53t6tyBVvBHkTRgt10tRKZQK3V25VRgCxScpSQm6bmYwKdwjbxISqacqoKcoKjat4x4O+4kxm8rm8PbwEmT4gHBBBblybFBLv.4S+zOkCcnCQyadyIzPCE0pUyF23F0qbUZokRN4jCN4jSjUVYIMI2Mu4MwKu7hhJpnZ0pfFhScpSQt4lKAETP7Nuy6vUtxUnm8rm3gGdXz060WDDDL5xUQpnhJ3BW3Bzt10NozDP.AXvaO2zSOc7yO+30dsWicsqcIsaHUk0st0wTm5TYwKdwr6cuaovzmIlXhjhpG6XGi3hKNhKt3PkJU0nOXqVsZt10tljq4T0wXxN6rwCO7fW60dMtzktD8u+8WGqequ2iwz+Z7ie7znF0H1111F+xu7KRmOkp61YUkLxHC71auwGe7Qx8UN9wONwFarDWbwg81aOZznoFc6o1zl1vblyb3rm8rz6d2abxImHcVJx7D...B.IQTPT0TSUq4kTnPAye9ymctychRkJo+8u+HHHH0G46+9umILgIvJVwJXG6XGXpolRzQGsVGx0FZ9lu4aH3fCl1291yku7k0Z9DCUNlYlYhFMZncsqcLgILARLwD4Tm5Tje94y.Fv.PkJUb9yedICVb9yedsBQkUGC88apolxDlvDnzRKk0u90y8u+8kleTemkNwanUwy1golZJ95quTd4kWi6hpgjAisu2ZVyZn6cu6zl1zF1zl1jzuqVsZICfUWFOzVasUutRT0IyLyjTRIEBJnfXtyctbjibDhN5nwLyLSReEO8zSVzhVD26d2i3iOdClmx7mGOVTtWbEwUkoN0op0+8oO8o4zm9zRGVkZaKs27l2LadyaVmeeoKcoXiM1fSN4D27l2rFURdKaYKZYUAQN1wNFG6XGSqe68du2Smmq1hEv.7ke4WxZVyZn4Mu4XhIlPFYjgVqT90e8WGUpTgyN6LYjQFTbwEqU5anKuN4IOodsZmwVdUab7iebNwINAsrksjrxJK8dND9lu4ajNTb5iW+0e85768IYDmDVeV2qYMqYFTIOwzeiabCRHgDX5Se5DQDQ.T4f3aaaaSuseqJG+3GmIO4ISjQFId3gGb9yedRM0T0aTQ5Tm5TDTPAYvsq+pW8pjTRIQXgEFO+y+7HHHvt10tHhHhPmEDu28tW5Se5C93iOHHHvu9q+pTX5Cf24cdGd+2+8ocsqcLpQMJDDD329seiYLiYnU6vMsoMIsiCU+r.7Vu0awblybvO+7SZhkbxIGl8rmcs9cb5SeZBO7v0pudxImLd4kWFUDNo1LBPEUTASdxSl4O+4Sm5TmnyctyRS7tvEtPCl2009fUWVL1x0pxrl0rX9ye9zxV1R7zSOQiFMr8su8ZbgaPkJbDP.Afmd5ISXBS.MZzvO8S+Dcu6cWRV1yd1CN4jSLzgNToHwhZ0pIgDRPx08RKszH8zSGu7xKhKt3Xsqcs0nKC7ce22wLm4LIqrxRq6yiO7C+P9nO5inm8rmzyd1SJrvBkb2LQz26wX5e8tu66xrm8rYPCZPLnAMHo5xpdWITc10t1E8su8kdzidHob+Eu3EYu6cuDZngJoT+AO3Aou8su5TuryctS5e+6OADP.HHHv0u904Mdi2PqmIqrxB0pUKc9CTqVMe9m+4RmgmDSLQbvAGHpnhRZwwpUqlErfEXTJ1YHzWefacqawCdvCPkJUZoDJXbki6YO6gHhHBhN5n41291ryctSl7jmLyadyit0stIs3we4W9Edq25spU4yX99W9xWNiabiiwLlw.ToAxV6ZWqdW31V25VwWe8kd1ydJEYed3CeHu+6+90X+JiQFL19dSYJSgPBID5Uu5EpUql0st0wq+5utV6JlwLdXaaaaQgBEFsqG9ge3Gx+8+9eossss3me9gff.G+3GWp9U7aW9Bq5IeT3hKtTmpk72e+krHj9BgTxHSCMF6EryeTT09.OtvFarwns3BT4BlDDDXtyctRC79e9O+G5XG6Hu268dZoH+7l27vWe8kINwIZT2dmlXhI3t6tyctycL3t83latw8t28p0yxgat4FYlYlOR6XlGd3A26d2SmEJ+mIlYlY3hKt7GxMhp9ntVtZlYlQyZVy31291F8j0JUpDmc1YClFmbxIoHSj9vRKsDyLyr5j6IVcZbiaLJUprVuHvpo2ig5eYs0ViSN4jQeq4toMsIxKu7zwZlJTn.O7vCxLyL0ouS7wGOwFarLyYNSRM0To4Mu4RtXWUYKaYKb26dWlvDl.1XiMXiM1Tq2MBhwY8G26BpBEJXiabinPgBsbkiphgJGMyLyvJqrRm1IhsM+se62pyGVYC886niNhBEJL5cryM2bi7xKuZLfZTejgZquWO5QOXPCZPjXhIJoTtCN3.qYMqgbxIGIODnpTSiGNqYMKo6JfpegWVayiYs0VS.AD.m7jmTmx+peV.j4OOps5v++sSNKiLOgRgEVXcZxDarwFZe6aOsu8smacqaQyadywN6rihKtXoPTYPAEDwDSL3qu9R5omtQqDZEUTgQqjSMcK2VWeFCgwJO+QhFMZ9SSwdntWtpQil5b4nZ0pMpzXHEmDCEkOJjWd4oys.rw9dLT+qhKt35TYy5W+5YLiYLzpV0JshHVBBBFUTFQPPvndeFy3BOJtYlwRrwFKCX.C.kJUVitDGX3xQMZzn2E.VeZaJhg99qqK5o9LdkgjgZ66K8zSG+82e72e+k1gcO7vCTnPQMFxZ0WdoToR5bm6Lm8rmsNcS1CUVuUSV6WVw9+ZvizApUN1lKyiajaiYbLqYMK18t2MkWd4Rg7uyblyvXG6XkrLj3ARO8zSWJ9dKiLx7nyF1vFH8zSWmK2sZirxJKxO+7M3tWbm6bGcBWq+YS3gGN1au8bvCdPo69BYZXHqrxhYLiYPFYjAt3hKzrl0LxJqr3S+zOsVWHU04oe5ml7xKuZ7R9Sl+dyija4Xqs1RSaZSerHXxHCT4.cOocC38Gga4HiLxHiLx73B44w9qOO1bKGQktToRkVgoIYj4QkRJoDdvCdvSbJ1KiLxHiLxHiLOIyirO2WPAEHq.lLxHiLxHiLxHiLOAveJWhUxHiLxHiLxHiLxHSCOxJ2KiLxHiLxHiLxHyeSPV4dYjQFYjQFYjQFY9aB0qnkiLxHiLxHiLxHiLx7mGMnQKG4vmjL++YjCgXxHiLxHyekQddr+5SsYrcY2xQFYjQFYjQFYjQl+lfrx8xHiLxHiLxHiLx72DjUtWFYjQFYjQFYjQl+lvi7kXks1Zq7MTqL+gi7MXqLxHiLxHiLxnKORJ2aqs1RSaZSanjEYjwnwRKsTpsmrB9xHiLxHiLxHSk7H4VNpTopgRNjQl5ExsAkQFYjQFYjQlemGIk6kcEGY9ylmDZC1zl1TBLv.06+b2c2+yV7dj3se62lYMqY8HmOibjijktzk1.HQO9vXjwoMsowpV0pL51cVXgErhUrBdlm4YZvkkFx7Y9ye9LoIMoG42W0oCcnCrhUrBZaaaaCdd+mEctyclku7kSSaZSq20u+YQCU+4+Jgqt5J+u+2+im8Ye1+ve2gEVXrhUrBZRSZRCZ9N0oN0Gq0iADP.LgILA7vCOZvRS.ADfdmizImbpgRrkoJ7H6y8OJXhIlfolZJkUVYOVeOlat4nQiFDDz995pCcnC77O+yyhW7hI8zS+wpLTa7bO2yQG5PG3UdkWodmG93iOZM47W8UeEm7jmrVSyq7JuBlXhIL24N25z6p28t2z111VxM2bY+6e+bu6cu5r7Va4Qu5UuvM2bSqmOiLxfjSN45764OBF8nGM8su8Uu+sTSMUd0W8U+iUfZ.wO+7iRKszG47ocsqcOwuPGiQFCLv.wAGbflzjlPFYjgAySSLwDb0UWwGe7oAWVZHyGu816GKKT1CO7.Wc0Ub1YmI0TSsAO++yfYLiYPAET.YkUVnTox5U86eVzP0et1Hv.CjgNzgxRW5RMp9HOtwKu7BGbvA5ZW6Jqacq6Oz2sO93Ct5pqznF0HxN6ravx2SdxSxa7FuA8oO8gCcnC0fku1YmcrpUsJrxJq.fniNZxLyLYBSXB5n+TcMMyYNyQuoeG6XGrjkrjFruAYpj+TUtO1Xik9zm9vq7JuBO7gO7wx6vSO8j+8+9eyl1zlX+6e+Z82rxJqvbyMGkJU9X4carXqs19HKC+1u8ar4MuYbwEWnm8rmFU903F2XL0TSqSumoLkoPqacqorxJCyLyLBN3fYtyct7a+1u0fkGgFZn3jSNo0.C28t28IVk6EYsqcs5L.9st0s9SRZj4wASbhSDGbvgmHTZQl+3YXCaXXqs19D+tP8mIsssskNzgNvS8TO0SD8SRN4jYpScp+sZr3idziRgEVHSbhSrAU49+y+4+fUVYEIlXhricrC9G+i+AcricjoLkovm9oeZ8NMN3fC.PJojB+zO8SZk9KbgKzfI+x767XW4dSLwDpnhJp0mQgBEF7uWSqZzXeFC8NL12CTyeSFy2pwVdXLxQUovBKjCdvChO93C8rm8rAO+AvM2biV25VyMtwM3i+3Ol.CLPF23FGwEWbrfErfFz7n3hK9ubV79nG8nbiabC892ZSaZC8qe8i0u90SHgDB94meb3CeXNvANfNOaaaaaI7vCGEJTv91293m+4eV5uEVXggKt3BG7fGjAO3Ais1ZKe3G9g.PSZRSX.CX.3kWdwYNyY3PG5PLxQNRRJojnhJpfm9oeZ1291GW9xWVJ+ZcqaMgFZn7C+vOvu9q+ZM9s4niNxHG4HQkJU7i+3OxgO7g0ocbsI25CyLyL5d26N8rm8j7yOeNvANfj0c6Uu5E94meZoDULwDCVYkUZY8sm+4edt8susNKb2Ku7hm9oeZs9t5ZW6JctyclUspUQIkTB.7zO8SSSZRS3q+5uVJs1YmcL3AOXZYKaIolZpjXhIJ87csqckVzhVvZVyZz62wCe3C4HG4HbhSbBc9d6ZW6J8qe8C0pUSRIkDW7hWrVKeLjrXnxvZBKszR5e+6Octyclae6aq02dMwnF0n3N24NjSN4vS+zOM27l2TpdvEWbgALfAf6t6NImbxjbxIiFMZpw7xDSLgfCNX5Se5C+1u8arm8rGcTBzEWbgniNZb2c2IiLxfcu6cyMu4M05YFzfFDcnCc.0pUSxImLojRJ5jG0lbYqs1xfG7foUspUb26dW14N2IW6ZWqVKGBMzPQiFMFTgJ2byM5W+5GO0S8Tb5SeZN3AOHEVXgXgEVvK7Bu.m7jmjie7iK8rCdvCljRJIRKsz.pbGW5cu6MqYMqghJpHCVlUa0O5CO8zSF3.GHpTohTRIE1291GPk8672e+kduU861au8lksrkA.coKcgd26diUVYEW3BWfsrks..gGd3z0t1U.HxHiD+82e97O+ykluo9N1ViZTiHrvBi1291yEtvEHojRRm.oPM0dPoRkLfAL.9we7GkTjr9T2aLxPqZUqHhHh.as0V10t1kdyGqs1Z5W+5GctyclLxHC9pu5qHt3hiadyaxAO3AkdNC09MkTRgvBKLbyM2p0wtMV71auwKu7habiavxW9xAfYO6YyF1vFn+8u+5U4diMMt5pq.vQNxQz6bdxzvyiMk6iIlXnacqaXqs1hff.ETPA7Fuwa.T411zu90OIqFKtcMkVZoRJzoToRl7jmLsnEs.EJTfZ0p4q+5ulyd1yB.cqacim8YeVt5UuJ93iOnPgBxN6rY9ye9TTQEQKaYKYpScpRJ0O3AOXhJpn.fEtvEp0DEcsqckW3EdALyLy3l27lrpUsJt+8uuzeehSbh3t6tyoO8ooW8pWXt4lyCe3CkbilPCMTF3.GHVXgETQEUvEu3EYEqXERJ+3ryNy3F23vUWcESM0TJu7xYm6bm5z4ebiabzgNzADDD3bm6b7EewWH82ZVyZFSZRSB6ryN.392+9rnEsn5zV8MvANPBO7vwTSMk7xKOL2byo7xK2nSeXgEF.7C+vO.TohQPkST7GYd7WQ5d26NQFYjzqd0Ko9DcsqckIMoIwvF1vjdtYNyYRu5Uuj9uCMzPI4jSVZRtXhIFZQKZAwFarXt4lKsE6ADP.79u+6KsvsN24NyvF1vvd6sG0pUy1291IxHiDu7xKlwLlgT9OwINQZUqZEe629s0nras0VyW7EegT+Uw9dSbhSznk6pi4laNqZUqBGbvADDDPgBEDQDQvAO3A4i+3OFe80WFzfFDImbxbgKbATnPAie7iGEJTvV25VovBKjlzjlvvG9v4vG9v5nbuBEJHxHiDSLwDV7hWL.7O9G+CZZSaJ23F2fcric..u3K9hTbwEqkBtKaYKCas0VfJUhIhHhfwO9wiff.QGczzpV0JIk6MyLyXUqZU3niNJ8cDVXgQJojBIjPBR4Y6ZW6HnfBRqmY9ye9FbhtZSVLTYn9PoRk7+9e+Or1ZqkZmDQDQfIlT6G+pgMrgQEUTAVXgE.UpP55V25HzPCkW9keY.PPPffBJHhO93I93iuFM.xW7EegzNyoPgBF5PGJKbgKTRAyfBJHdy27MkZKGXfARTQEEu268dRKZZEqXE3pqtRokVJlat4z291WNvAN.ye9yG.CJWt3hK7Ye1mgkVZIkTRIXokVx.Fv.3S9jOQRNpNJTn.2c2cxLyLq0xpvCObl5Tmpz6Vb9kINwIxctycH7vCmN1wNJob+vG9vIrvBCWc0Ul8rmM.L1wNVZcqaMqXEqvnJypo5G8QiZTiXQKZQReScu6cmN1wNxG+weLt5pqDYjQx8u+80J8SZRSBMZzvxV1xXZSaZDVXgQ4kWtTYazQGMiabiivCObdpm5o.prMuu95KKcoKEAAg58Xat5pq74e9miYlYlT44XFyX3e9O+mR0E0V6gF23FSjQFIJUpjKbgKTup6MFYXDiXDL5QOZo58t28tyCdvCzJerwFaX0qd0nToRo9eO8S+znToRsTt2X5WIpbeTQEUCxNI0t10NfeetYQN5QOJgEVX3omdpiwqL1zzrl0LfJ8vf92+9SSZRSH4jS9uU6lxSZ7X4RrxSO8jvBKLTqVMabiajctycpke0etycN1912tjB16YO6gsu8sShIlnzy7O+m+S7zSOIyLyjicrig4laNie7imF23FCToK0XlYlQaZSaH0TSkqe8qiyN6LSYJSA.xN6rY6ae6RaAzku7kY6ae6r8sucxJqrzRdCLv.4RW5R7K+xufmd5ojBmhnRkJToREgDRHjc1YygNzgjF3I3fClgLjgPIkTBIkTRb6aea72e+kThEfwO9wiat4FG7fGj0st0w4O+4kTRWDEJTf+96O+zO8S7fG7.BLv.wKu7R5uO8oOcryN63RW5RbkqbEr2d60RIMCgO93CQDQDnQiF9we7GwRKsDqs1ZiN8PkVuEfzRKMBJnfvM2biBJn.LwDSvLyLt0IZr4g0VaMKZQKhEtvExq9pu5eIhJNO+y+7L0oNUs9m9724QNxQxvG9v4bm6bnToRBN3fApbgO8pW8hqcsqQrwFKwFarbiabC5YO6oVSJpPgBt90uNibjijgNzgBT4AkCfDRHAhJpn3ke4WVRoP.xJqr3d26d3s2dKoHmIlXBd6s2RV7qlvBKrfabiavy7LOCCaXCiKe4Ki6t6NiabiqNI2UkYO6YiCN3.6YO6gAO3Ayy9rOK24N2g9129RHgDhjx28oO8A.5QO5gzB06e+6O.DRHg..IkTR5j+W8pWkxJqLBHf..pbwDN6ry.UddO.vImbBkJUxoO8o0Js4jSNLjgLDFyXFC24N2Amc1Y72e+062wrl0rvQGcjCbfCHkl6d26RPAEjV9gciZTijpaD2gpQNxQVik4FirXnxP8wa8VuEVas0r28tWF7fGLiYLiA0pUaT6roEVXAaYKaggLjgvTlxTvAGbfoMsogZ0pY7ie7DczQy1111vQGcrFO+Pu4a9l3jSNQhIlHQGczL9wOdTqVMSaZSSZ7ngNzgRIkTBSe5SmnhJJdm24cPgBELpQMJ.nicri3pqtRJojBCcnCkAO3ASFYjActycF.iRthKt3vRKsjO9i+XhM1XI93imG9vGR3gGdM986ryNiBEJpUK75jSNwTlxTnzRKk+w+3ePTQEEexm7IXlYlw7l27.fadyaJ0VDpb9Gnxc2SDO8zSt6cuKkUVYFUYl9pepIL2byYqacqDUTQwzl1znrxJSpe1V1xVPPPf90u9I87su8sGKrvBRN4jwDSLgPCMTxM2bI1XikXhIF1+92O1au83s2dy+9e+ukLTvG8QeDwDSLTQEU7HM117l27vTSMUp+SBIj.lZpoRmULC0dn5Tep6MjLzzl1TF0nFEkVZoLwINQhJpn3K+xuTm4sd228cQoRkR0kO2y8bTTQEoU+Oisek33VsnEsnFk65Bd6s2.nS6aQEv02gh2XSiXXqNgDRf+0+5ewHG4HYIKYIrrksLiV2AYpa7XQ4dwUtevCdPNzgND6XG6PR4CnxA2RJojjTt+fG7fjTRIokOU2xV1RJnfBXNyYN7Ue0Wwl27lkrLUU4RW5RrzktTVvBV.Ymc13t6tiolZJETPAjTRIIs0b+xu7KjTRIQRIkDpUqVq73BW3Br7kub9rO6ynzRKsFObT6XG6f4Lm4vF23F4Mey2DnxsBrhJpf25sdK9ge3GXdyadb+6eesFvxQGcD0pUyl27l4HG4HrxUtR1vF1fN4+5W+5YcqacRakk3fSADP.nToRN+4OOKYIKgEsnEQZokF1XiMZs.fZiANvABTYTwXCaXCZYUQiEarwFDDDvBKrfQLhQP5omNW8pWU5argJOxKu735W+5b9yedJqrxvCO7fYMqYYPqK9mMcoKcgvCObs9WG5PGz5Y91u8aI+7yG0pUypV0p.98cyP7P49JuxqPIkTBkTRIRsyptqVM6YOaxO+7ApbfSKszRNwINgT68zRKM9tu66zJM6ZW6BSM0ToItCMzPQgBERJRWSHHHvq7JuBEWbwnVsZdsW60PPPfN0oNUmkaQZcqaMEUTQ7oe5mREUTAETPALyYNSfJcMfLxHCTqVsjx48qe8iRJoDJnfBjxytzktP4kWtNJmKR5omtzjJ8pW8BEJTvUtxUnUspU.+9hC1yd1iVo6i+3OlxJqLxM2bYaaaa.HIGUGe80WJt3hY9ye9nQiFxM2b4Ue0WkUu5Uq0AW7l27lR0M6e+6mG9vGZT8YpMYwPkg5iV0pVQwEWLexm7ITQEUPt4lKu669tFTNfJuOIV4JWojgZDWv0JVwJHqrxBAAAV5RWJO7gOD+7yO8lG94meTPAEvxW9xQPPfrxJKV6ZWKJTnPp8zq9puJCaXCiqbkq..m8rmkxJqLIEhE2AoVzhVfGd3AUTQELwINQonghwHWh4Q26d2wN6riryNadlm4YjJ+zGhtVPssaoAETPnPgBV8pWsjqRr28tWtzktD1au8XgEVvQO5QwTSMk1111hRkJwAGbfKe4KiUVYEMsoMEGczQTpTIm5TmxnKyzW8SMgFMZjbghqd0qxu7K+BJTn.WbwEJszR4JW4J3hKtPiZTi.pzh5.rt0sNI2qoQMpQzwN1Q.XAKXALjgLDoww0G02w1r1ZqQkJUb5SeZo9OojRJjZpohCN3fTP4.p41CUm5ZcuwHCcu6cWpdWzco99u+641291ZkWd5omje94KUWlWd4wq8ZulVOiw1upzRKEAAAICd9nh33QU23mhs2cwEWp2oQLh3bu6cOd4W9k4e8u9WboKcIbyM23sdq2pAQ9kQadrrjoibjivPG5PY3Ce3z+92eRO8zYiabiTXgEZTo2QGcDEJTnkOEdlybFF1vFlVV7.pTocQt0stEMoIMAWc005zA4QzUefJUrr5VUWjCe3CqyuYiM1fBEJXgKbg572D2V4e9m+Y5ZW6Jexm7IjYlYxANvAj1R1phnRJ4jSNHHHH0wPz5uU0GcuzktD93iO3gGdXTQ5G6s2dpnhJjNzpO3AOnV8KV8g3yGe7wiIlXBKaYKSZaHqpe.+nlGUur70e8WG2byM5RW5BG6XGqNIy+Qxjm7jqQetWDQepE9cqcHd3macqaMPkSJTcppaKIHHnk+vJt0nU25IU+fJs4MuYdtm64HhHhf8t28RDQDABBBr0st0ZUlKt3h0RQ0xJqLJpnhjTb1XkaQTnPAMpQMRm1s4jSNnQiFozbkqbEoIy7yO+3xW9xTPAEH4SuO0S8T5L4YU4vG9vzl1zFZaaaKgDRHTbwEyl27lYlybl3gGdPW5RWPiFM53i5UsNTTASQ2cvX9Nt28tmzBqDqauyctiVOSt4lqQcA.VSxhwVFVc40JqrRmzjVZoYTmAmp6ewh6fvTlxTzwRwhQNip+9swFa.PZgJUk.BH.N7gOLMsoMk23MdCZQKZAlZpoRV0T7+8Tm5TbkqbE7wGeXIKYITZokRpolJe1m8YjYlYZTx0pW8poyctyDbvASvAGLEVXgjRJovm8YeVMpbr3gBTTwS8g36t5K3LszRCe80WBHf.XW6ZWRQXKw5oO7C+P9hu3KX.CX.R8s20t1kQWlAF+k4W0mGNiLx.+82eo1pe+2+87FuwaPzQGMqacqi.BH.t6cuqjBaaYKagXhIFd629so7xKmae6aypW8pq0nyV8crMwEuzoN0I8982l1zFC1dn5TWq6MFYPbbppWumd5oSyadyApr8qkVZoNiYcm6bGs5+UW5WoQil57NvWSH12wCO7PqwDEibcU+LuTWRyd26dIyLyjMrgMH8s9JuxqvF1vF9aUXx8IIdrnbeokVJuwa7FLrgML7wGenScpSDXfAxq8ZulVcbqIL2bykxmplm.5rENUUoRwNlho2XopC1USSxUVYkUiKN492+9r5UuZc9cw75+8+9ebkqbE5Se5Ct6t6LlwLF72e+krbq3yV0AVppbH9MW0uUw++F6VZouCQqgNXuUmBKrPI2GZiabiTbwEKMwS08svFx73m9oehgMrggGd3wSzJ2+nR94mOVYkURVUSDqs1ZsNDrUGwAUqtBcUca9gJayb0qdU71auwbyMmV0pVwku7kMnk9zW+IwycR8QtEDDn7xKWuSJYpolRwEWL.bnCcHBHf.HnfBBarwF1+92O4latDbvASW6ZWQoRk5bHJqJ6cu6kW7EeQ5Se5CsoMsgye9yyQNxQPPPfHhHBZYKaoAWLVsg32gX62+HwXKCqdZDDDzIMhKVnthnRt6XG6PKioXs0Vq2viq33OkWd4ZM1molZJlZpoRF7XwKdwnToRt3EuHm8rmkbyMWlxTlhzXdBBBL8oOcZQKZACbfCjt10tRG5PGXIKYIDarwZTxUN4jCO6y9rz4N2YBMzPoyctyDVXgg2d6MSdxSVueuhiOUa02huaUpTo06VzE4t28tG4kWdTPAEP.AD.d3gGje94S1Ymsj6bUPAEPokVpVKV2PkYMjbzidTJszRoe8qebwKdQrzRK057gspUsJ13F2Hp7OxPB..f.PRDEDUCZPChfBJHdpm5o3cdm2gYNyYViGR756Xa4lat.vu9q+Jae6aWqzUbwEyMtwMLX6gpScst2Xjg7xKOfZtdGprcaokVpNw08lzjlnU+u5R+JyLyrFrHMXZokFgGd33s2dqkh5ht8i9paM1zbyadScVDCToE+E8zCYZX4wleNTPAEvW9keIu9q+5roMsITnPgje8IhnUbqteoItEOU8xPn8su8.nSiae80Wo++hJ2T0vxn36npcxZHojRJAUpTw0t10H8zSWq+UURIkTXtyctLsoMsZcaq0GhVenpoQb0tUODTJ56zUeGNxKu7vTSME6s2dfJGnPeVir135W+5.UFVJEiVDMqYMSG2b5YdlmgEsnEwhVzhzoiqwlGUEQq9Tehm9+UBwI4t10tFIlXhRgVLMZzTqtjTlYlIkUVYzst0MIW1vc2cmQLhQnyytoMsIL0TSYlyblnPgB85dXUGKrvBocG.pbQCVZokRtcP8Qtu+8uON6ryZ02OjPBAEJTHkeG3.G.AAAdoW5kPPPfCcnCwoO8oQiFMRSBWSQjB.Jpnh3AO3Az8t2crxJqXe6aeTQEUvu9q+pT3h8QM7plat4hyN6rVWRMgDRHrxUtxZzmeanvXJCMlzDczQWud+htMhIlXhT8dhIlHYmc10XH1UbWI2291mzy+S+zOIobic1YGVYkUbiabCdsW60X8qe8R0QhFivSO8jniNZxN6rYIKYIL1wNVN24NGlat43iO9XTxUm5TmHrvBiSdxSxbm6bY3Ce3TTQEIYkU8g3Xs01ERj36NxHiT52TnPAcricDAAAoESdwKdQbwEWnUspUbtycN.3Dm3D3t6tSKaYK0xEWLTY1iCNwINAt3hKLhQLBDDDjhFNpTohniNZToREqcsqkoN0oJEAcDOKKhTU2Eo9N1VpolJBBB5TWdoKcIrzRKk1kpZq8P0otV2aLxfXcnn6uBUZ.jpaU5LxHCToRkz4GQoRk7AevGn0yXr8qLyLyPgBERKr3QEQOXnpKHxBKrft28tiFMZj18wpFlsM1zL6YOaV8pWsV8cL2byoYMqYF8NNISciGKVtu28t2zpV0JN3AOHkTRIR9cb0cUFQkCFyXFC6ZW6hhJpHosH9N24N3hKtv3F233xW9xR98W0OM696u+DQDQfM1XCMsoMkbyMWsrvsXiqdzidP1YmM4latjd5o2fcQd7i+3OR3gGNu9q+5rm8rGt28tGAETPXqs1xJVwJ.fW9keYNyYNCW7hWDO8zSTpToQaoanRWRZTiZTDXfAR1YmMlYlYz111VoserpjSN4fZ0poG8nGb+6eexKu73zm9zbnCcH7zSOYpScpr0stUsFDxXIojRhvCObToREADP.z4N2YrzRK0It0Zt4lKMwS0s5qgxC6s2dlzjlD+zO8SjSN4P25V2ncsqcTQEUn2vK3SRL5QOZc1x9e9m+YiNzesgMrABN3fIgDRfjRJItyctCCZPChlzjlvJW4JkFzWe7AevGvrm8rYNyYNnQiFLyLynfBJPmx+Ce3Cyzm9zInfBhRJoDi1xe+m+y+gcu6cSEUTACX.C.nxyHR8Ut+tu66XhSbh74e9myt10tnwMtwRgYvMsoMAT4t0kSN4fSN4DYkUVR6vvMu4MwKu7hhJpHCtfuyd1yRe6aeQPPfidziBT4NAM7gOb.c8295JqacqioN0oxhW7hY26d2RgKOSLwjG6wuYioLr57C+vOP7wGuTZbzQGqwCeqg3Tm5Tje94y.Fv.PkJUb9yedoEXd9yed18t2sNo46+9umILgIvJVwJXG6XGXpolRzQGszA1L+7yWRgswO9wSQEUDwDSLZoHq3Mg4PFxP36+9uGSM0T70Weo7xKmKe4KiYlYlAkqgNzgR6ae6IjPBg8u+8iWd4EVas0539TUk6d26hffPsZowSdxSxCdvCn28t2XokVRZokF8oO8AUpTwQNxQjdt8t28RPAEDlYlYRkS6XG6fAMnAoyhNMTY1iC9lu4aH3fCl1291yku7kkluzTSMkILgIPokVJqe8qm6e+6KoXmn6AcricLhKt3Ht3hCUpTwW+0ec8drMAAANyYNCAFXf7oe5mxgNzgn4Mu4DZngJEvNLT6gpanq5ZcuwHCG6XGihJpHono20t10HrvBSG2n4cdm2gUtxURbwEGiXDi.EJTH467hXr8qDM3Ys4Zh0ExLyLIkTRgfBJHl6bmKG4HGgniNZLyLyjhbed5omrnEsHt28tGwGe7FUZfJGq5sdq2hkrjkvW+0eMBBBDSLwfkVZodCHBx7nyiEk6MyLynCcnCRG3lxKubN6YOqNw85ie7iSPAEDspUshW3EdADDDj7wrku7kyLlwLjthhEDDXO6YO5DOWKnfBjTTszRKUms8SiFMr28tWBIjPjNfMKbgKjzSOcIKAUWcOkpRhIlHN5nizoN0IF6XGK.R9YuHN6ryLrgMLoPdXAETfVM7qIWAR720nQCqYMqgm+4edIKBUd4kyW7EegdS65W+5YHCYHRC5d5SeZNwINAcpSch10t1w3F23n7xKuNu.G0pUyW8UeEidzilILgI.T4B1pK25eFJOLwDSnoMsoLjgLDozTZokxpW8pM5yrwezH19oacqa572ZVyZlAUtWL823F2fDRHAl9zmtzAGWPPfssssIY4rZhie7iyjm7jIxHiDO7vCN+4OOolZp58fSepScJBJnfLZE6evCd.YlYlLnAMHfeu93Lm4L0a4daaaaXu81SLwDijh1ETPA7AevGnUe7Se5SS3gGtVtiUxImLd4kWF0MdZRIkD8su8kLxHCo9Jae6amgO7gS94mes5+z.5LFQ06usm8rGbxImXnCcnRQ2C0pUSBIj.pUqtFu0WqO2yDUWVL1xvpx2+8eOMu4Mm9129JkFwwGqqTVYkwjm7jYdyadzst0MBJnf.p7bPUSGRtDSLQbvAGHpnhh3hKNfJKuVvBVfzNT9oe5mxTm5TkFC3ZW6ZZUds0stU70Weom8rmRgi0G9vGx6+9uuj6MZH45i9nOh4Lm4P6ae6kTRJqrxRJbMqOpnhJ3N24NRGrVP25QMZzvjlzjXAKXAz0t1U5V25FZzngSdxSpkEZO1wNljqUIZ8yacqagZ0pQoRkr28t25TY1iB5advacqawCdvCPkJUZsPwbxIGV9xWNiabiiwLlw.T4bQqcsqUZwrokVZjd5oiWd4EwEWbr10t1Gow1dq25sXNyYN3me9Q7wGujbHF1PMT6gpGtmqO08FRFJszRYFyXF7ge3GRPAEDAETPTTQEwIO4I0ZG7xM2bI93imHhHBZe6aOYlYl7ke4WxZW6ZkdFisek3uWUWE5QkO7C+P9u+2+KssssE+7yODDD33G+3RsADauW018FJMPkyOspUsJF23FGu3K9hR4wANvAjuP3dLgBWbwk5zrL96u+b9yedfeOLHoOL0TSwc2cGAAgGoXYpiN5HN3fCbsqcMs5j1291WF1vFF+2+6+k6cu6gc1YmdOvG+QgIlXBMu4MGSLwDxHiLzwOlUoREN6ryjQFYnW+g0XQLZ.Teu4+rwFavImbhadyaVuTv.pbalaYKaIYkUV0aEtqs7PgBEz7l2brwFa3t28tFz5r0VTZ3wAUsOviKrwFavVas0nm790e8WGAAAl6bmqT85+4+7enicri7du26okh7yadyCe80Wl3DmXcpcj0VaM1Ymc0p0MqqxMTYjTn3hK9QpewSB3jSNIEQe9y3cWWKCc2c20ZGQdTvLyLil0rlwu8a+lQeP8Eia60TXX0EWbghJpnZs7zM2bi7xKuZbbHCIWlYlY3latwu8a+lQUNLpQMJhKt33ce220f6jnngJZHT.WDCUl0PgBEJXiabinPgB8525vuG3KpowmszRKwLyLSmyYW8YLBQ7vCO3d26d0X6bC0dnpTWq6MVYP7FmWeQUoQMpQgu95KKbgKTpbKhHhfIMoIo26mhZq86W+0eMVZokRKRutRsMOl0VaMADP.bxSdRcdulat45s7p1RSUwO+7CKrvBN6YOa8VGDYpjZqN7wV.Fs7xKuAQY6bxIGCNP18u+805Rm5OCpnhJp0u2G7fGTmbEmZhG0K8gBKrvGYKfKHHXTQnm5ad7ntfv+NPcsdxFarQxRT25V2hl27lic1YGEWbwRJgDTPAQLwDC95qujd5oWmWfnwn7X8o80eWNKE+Y9cTed20WCDnOznQSctOqgj4ZaQjhXnalSCIWZznoNMO0ZW6ZIlXhgQO5QaPk6qnhJZPUrG9ioMVrwFKCX.C.kJUxF23FqwmyPyKKFxKqNOJyAYn1X0kap05ZcuwJCETPA03BRyO+7o8su8rhUrBRO8zwd6sGmc1YDDDz4hfRTF026Kf.B.UpT8Xyp2EWbw0XvJnlVHTsklphwbybKyiNORGnViM7G93fRJoDDDDpygyQY96E+Y1F7IIl0rlE6d26lxKuboCf7YNyYXricrRVGQ7hUJ8zSWJFSKiLxX7TQEUvhW7hwAGbPmndxeWH7vCG6s2dN3AOnzMwrLMLjXhIxhW7hIu7xiV1xVhc1YGW+5WmoMsooUXR1PLvANPtzktjdCMmxHC7H5VN1ZqsFUrZVFYdbQVYk0e3tAweDtkiLxHiLxHyiKjmG6u97XysbDUpRkJU03AGSFYdbPIkTBO3AOPNLZIiLxHiLxHiLUgGYetu17uLYjQFYjQFYjQFYj4ONdrcIVIiLxHiLxHiLxHiL+whrx8xHiLxHiLxHiLx72DjUtWFYjQFYjQFYjQl+lP8JZ4HiLxHiLxHiLxHiL+4QCZzxQN7IIy+eF4PHlLxHiLx7WYjmG6u9TaFaW1sbjQFYjQFYjQFYj4uIHqbuLxHiLxHiLxHiL+MAYk6kQFYjQFYjQFYj4uI7HeIVYqs1JeC0JyeaQ9lvUFYjQFYjQl+Jwijx81Zqszzl1zFJYQFYdhCKszRo13xJ3KiLxHiLxHyS57H4VNpTopgRNjQlmnQtstLxHiLxHiL+UfGIk6kcEGY9+KTSs0abiaLAFXf0nx+pToh.CLPrwFap2u6oMsowpV0p9KQ+sQNxQxRW5RejyGKrvBVwJ9+Xuy6nppi0G1OG5ffTUAEATrPQPDQAUTAArCnfDwDMJwngXzDuZhc+EiWiFuZLI1Rhc+rE0XI1KXELVhEvBJhZPEhJpHVnyg82evZOWNTOnXLI2yyZwRO68dl8zm2488cl8R4sdq2pFHU85AO7vCV5RWJt3hKU3yXiM1v+u+e++X.CX.pc794e9myTlxTpIRh+iB6ryNF3.GHCZPCB6s2d0NbCZPCh4N249ZLkUyvKSakWEF4HG4eKJWpNnN8I+q.uNFS2Zqslkrjkfqt55qbb4t6tyvG9vwN6rqFMLFarw3u+9SDQDAN5niuxoSMTw7J6y8uoQas0F.TpT4qT7DRHgPm5Tm3S+zO8kJ75niNTTQEQQEUTYt27l2733G+3r8su8Woz3qBd3gGL3AOXV3BWH27l27kNdl27lmnL+7m+7r5Uu5J84adyaNQGczrjkrDt5UupZ+dr1ZqwO+7CSM0Tt3EuHm7jmrZmVcwEWvGe7ghJpH90e8W45W+5h6Ymc1g2d6M1XiMjWd4QrwFKIlXhU62gM1XCSe5SmKe4KyDlvDJy8G23FGt6t6LtwMtWp3G.O8zSrvBKnN0oNjZpo9REG+YQKZQKvVas8UNdzRKsvFargl0rlUCjpd8fc1YG1XiMT25V2Jrt0QGcDKrvBZaaaKaXCaPshWWc0UxO+7qISp.vXG6X4wO9wrpUsp+TBWMISYJSAe7wGwu6e+6OG4HGgu9q+5JMb0qd0i25sdK12912q6jnJDQDQfSN4D+6+8+VsCyKSakWEbyM29asa05omdRXgEF+vO7ChwEUm9j+YS40+40wX52+92G8zSOlvDl.CZPC5kJNpcsqMKe4KGCMzPfhkK5d26dL7gObjjJ+u2opaXd629s4se62V76AO3AS5omNexm7IZb40WC729SKmIMoIwrm8rekimZW6Z+JsJ54Mu4wnF0nJ26omd5Qsqcseoi6ZBLzPCQWc0ECLvfWo3YqacqrsssMzRKsTKsQK+dqUspkZ+NbvAGXRSZRzgNzAb1Ym4cdm2ggMrgUsRmAFXfLhQLB7vCOvSO8jO9i+X70WeE2OxHijN24NiCN3.t3hKLhQLBl6bmqX.J0kqcsqwKdwKvYmcFEJTnx8TnPAt3hKjUVY8JMQSzQGMQGcz+kWvdMTVhKt33i+3OlO6y9r2zIE5PG5.coKc4OsvUSQe6aewGe7gjSNYhJpn3i9nOhLyLS72e+wSO8rRC6XG6XAfku7k+mQRUfu95Kd6s2Uqv7Wo1J+c.WbwE7vCOnQMpQuoSJUJkW+mWWiouoMsIL2byoG8nGuTg+e+u+2XngFxN1wNH5nilKbgKfM1XSEJai5Fll27lya+1uMYlYlL0oNUhN5n4Dm3DT25VW9jO4SdoRqZnx40tl60RKsJWsY+mYbHKzUEsxS.V6ZWKqcsqsJimJKNT2zh5DGUVdtpJOTmxqpJcTQ2Ot3hC.BO7vekh+JiALfAfBEJXNyYNbm6bGl4LmIsrksDKszRd7ierZEG8t28lbyMWl3DmH5pqtL6YOa5ae6qH8uwMtQdzidDYkUV.vPFxPvKu7ht0stUssvRrwFK8nG8f.CLPN3AOn3596u+niN5vgNzgDWyc2cG+82eL2byIojRhcsqcIzZgSN4DcoKcgsrksPPAEDN4jS7Mey2fat4F1au8pXkD0Id9oe5mve+8GWc0UhM1X4HG4HkIs6hKtP.AD.FarwjPBIvd26dUodSKszhNzgNPm6bm4O9i+fCbfCnVSHoiN5PjQFIMsoMkDRHA1+92unrVFqs1Z5d26N1ZqsDWbwQbwEGEVXgUZ71hVzB7yO+nV0pVbhSbBN0oNEEVXg3niNR25V23W9kegzRKM.nssss3kWdwxW9xIu7xC.5V25F0oN0oL800SO838e+2myd1yxYNyY.fFzfFPngFJG7fGjjSNYw6uScpSpTWnkVZQHgDBd3gGjVZowt10t3AO3A.fAFX.cu6cmie7iyku7kU6xcn3E41qd0KLyLy3Tm5TpzNp7vDSLgPCMTZZSaJomd5r28tWt0stElZpo7Nuy6ft5pKlXhILhQLBhO934W+0eEnhaKUUgqV0pVDXfARKaYK4xW9xbvCdvWKZfqicriHIIw3F23nfBJ..V7hWLSZRShtzktv4O+4qvv1rl0LRM0TI2byUkq26d2a7vCOH2byk3hKNN0oNE.Tm5TGhHhHXO6YOjRJoHd992+9SN4jC6XG6nJiiAO3AScqacAfQLhQvCdvCXKaYK.E2lOjPBAas0VRM0TY+6e+b6aeafx1Vo51OtqcsqnPgBNzgNDW7hWTk6qPgB71auIf.BfryNa9oe5mTqxd6s2d5QO5A1XiMbqacK15V2pnNNv.CDqs1ZN3AOHgEVXXkUVwd26d4rm8r3hKtPHgDBRRRb3CeX9se62TIdaPCZ.coKcgF0nFw4O+44nG8n7hW7BUdFSLwD72e+wCO7facqaQLwDC2+92G.5ZW6JssssE.5YO6It4la78e+2KBak0mr7XfCbfb+6eet+8uO8pW8BkJUx5V253d26dDTPAQ6ae64wO9wryctSQ8kLUzXRUV+m1111Vlwzqr7aISi28t2kdzidfRkJYCaXC7nG8Hwyru8sO9vO7Co6cu6r28tW0pNVllzjlfiN5HojRJrjkrD.XpScproMsIBJnfX9ye9uzgIf.BfBKrPlvDlfX9iYMqYwu7K+BMu4MuZkN0f5wqMg66Se5Cd6s2XhIlfjjDO+4OmIMoIIteocUkt0stQ25V2XhSbhjWd4gBEJXDiXD3niNhd5oGRRRbsqcMVzhVDPwZjogMrgns1ZiBEJ3a+1uE.tyctCyadyC.BMzPoyctynmd5A.4jSNr90udtvEtfHczyd1SBLv.AfhJpnx3VNSYJSgBKrPzQGcnd0qdjWd4w9129HlXhA.lyblC5pqtnkVZQSZRSDoiCcnCwN24NEwi4laNyd1ylZUqZQFYjAaXCaPE2TwO+7i9zm9v1111nW8pWXjQFgRkJY9ye9byadSLwDSXTiZTXiM1fBEJH6rylksrkohqlTUk4PwB779u+6iN5nC2912lku7kySdxS.JdxkQNxQh81aOJTnfbyMWV6ZWKwGe7pc8tYlYF+q+0+BKszRJpnhTYBR0k5W+5yidzi3N24Nz3F2XgUOBHf.XSaZSUY3cyM2PGczgSe5SSAET.8pW8BEJTf95qOMpQMhe+2+8xL.8Eu3EwKu7BiLxnpc5cCaXCzidzC5cu6sJB2GbvAKtO.evG7AhqIIIgWd4EgGd379u+6SlYlIsqcsid1ydh+96OFZngHIIgEVXAgDRHzzl1TwDApa7zwN1QQag1111xG8QeD8qe8Sj9lvDlfvZFRRRzgNzAdq25sH5nilbyMWzRKsXEqXEXkUVgjjDJTnfvBKL9lu4apRAMW0pVElYlYHIIQqacqYfCbfDUTQwSe5SAJtt7e8u9Wh2sO93CQEUTDUTQUgKLcxSdxzt10NQX5XG6Homd579u+6iBEJnm8rmnkVZwBW3BEkS0qd0iTRIE1yd1C.LrgMLxN6rKiv84me9z0t1UZUqZkP39HhHBBLv.wFargoN0oBT7h.adyaNKcoKUD1gMrgoR4bvAGLQGczb+6eeL0TSom8rmXfAFHDtupJ2ghEbdAKXA.EKXV6ZW6nUspUUnORas0VyhVzhPe80m7xKOzWe8o6cu67se62RJojBcqacCEJTft5pKcqacCCMzP90e8Wqz1RVZokUX3rwFa36+9uGczQGQ99ce22kO7C+Pt28tW4lFCLv.qz9WG6XGSz9njL6YOazUWcEB1CHr.YksXhV25ViN5niJKpBfktzkhM1XC4me9nqt5he94mvEer2d6om8rm7jm7DUF6JhHhfryNagv8UVbzqd0KgE.6V25Fomd5rksrE7wGeXxSdxBEe3omdRvAGLSe5Sme629sxzVQc6GO9wOd5XG6n32ADP.DWbwwW8Uek3Z+m+y+Amc1Yfhqm6RW5RYVvSowe+8mwLlw..ETPAz5V2Z5Se5CQGcz7fG7.5Se5C1au8z291WzSO8DKf3zm9z3s2dKFynicrirvEtPgqQ00t1U93O9iEoE44jj6y.fs1ZKKbgKTk1WQFYjL24NWN5QOJcsqcUnw9VzhVfyN6rJ60mJqOY4Q+5W+PoRkBYEjS2W8pWkVzhVHxKAETP7QezGIDPsxFSxJqrpB6+T5wzqp7aEkF6V25Fqe8qm0u90CTrLLYjQF3fCNTo0skGsnEs..9ke4WT45+5u9qDXfAhCN3PYlOWcCyhW7hYwKdwp7LN3fCns1ZWg0IZ3UiWKtkiCN3.AFXfjat4xl27lYu6cupLvLTVWUwbyMG8zSOzRqhSRgFZn3ryNSRIkDaXCafXiMVQiZnXgm28t2MYkUVnToR18t2M6d26lCbfCHdlF1vFxsu8sY6ae6DSLwfBEJXnCcnXt4lKdlqbkqPLwDCYlYlkqKqXrwFis1ZKFYjQb7iebTnPAgDRHh6um8rG18t2MRRR7jm7DQ5nzZSpoMsojQFYvoN0ovbyMmHhHBUtesqcsQGczg90u9QgEVHG+3Gm6cu6golZJPwChXiM1v0t10H1XiEc0UWhN5nqVk4Pw952Uu5U4ZW6Z3fCNP25V2D26C+vODGbvAt28tGm9zmFc0UWF5PGpHMnN7IexmfkVZIW+5Wmqe8qSiabiU6vBEq8BEJTHDPXXCaXhI7qScpiZEG1XiM.PxImLlat4DP.AHhiFzfFHdN8zSO7vCOnu8su71u8aKzxT0kLxHCt28tGMtwMVzFUWc0klzjlvCdvC3QO5QnPgB7yO+3gO7g7Vu0aQHgDBG3.G.CLv.5cu6sJwmRkJYDiXDDbvAKzXrLUm3AJ1OGiHhHHgDR.CLv.5PG5.PwBc3qu9x8t28X.CX.zu90ONwINAVYkULvANPfhayYkUVwN1wNHjPBggNzgRt4lKidzitJWDj95qOCcnCkPBID17l2L5omd7ke4WB.VXgEL5QOZxM2bEOyt10tvRKsrBcIgdzidP6ZW6H0TSk92+9Se6ae4nG8nT25VWl3DmH23F2fBJn.b2c2Ek+xZOsScpS.fUVYEFXfAUnldu8susHL.BW9vImbRbMGbvARO8zUoukt5pKQEUTDVXgQrwFK5niNko+sLpS4tbbtyctSBN3fYzidzTPAEPm6bmqvx6HiLRzWe8YtyctDd3gSTQEE4jSNz0t1Ut4MuIgFZnje94SFYjAgFZn70e8WWkskpnvAEqTCs0ValwLlAAGbvLiYLCzVasqTWjbjibjL7gO7J7uJZ+U7fG7.UrVjN5nCCaXCCIIoJ0JaxZDLgDRPbsV0pVgM1XCm5TmhvBKLBMzPI0TSEu7xqJLdJMUUb7Vu0awst0s.JddLYWJLrvBi7xKOFyXFCAGbvLsoMMTnPgJ06UDUT+3.CLP5XG6H25V2hvCObBO7vIkTRAe80Wg.+xyklZpoRjQFIgGd3jPBITktfnb5Rts8blyb.ffBJHwynPgBhO93EsSkjjvau8lMtwMRvAGLiabiC.wblVYkULpQMJxO+7EKr7a+1uEczQGQ7CE29RGczgYO6YSvAGLiXDifBKrPF6XGKlXhI7oe5mxF23FAJdgK8oO8QEkBTc5SJi95qOKdwKlfCNXV4JWIZqs13pqtxjm7jI3fClsrksf1ZqM8rm8DnpGSpx5+TZpp7aISiqcsqkfCNXF+3GORRRz8t2cUhqTRIEzVasqVtBKTrV3ADsck4N24N.TtaR4paXbwEWXricrL6YOa9tu66H6rytFwsp0PY40hl6kWQ8QO5Q4XG6X.Hzbl5h7Ntdcqackwbc.BsI6iO9fN5niJZLkJhyS....H.jDQAQUFYM3AEaltG8nGQjQFIt6t6hz0su8s41291Tu5UOUlXuzLsoMMxO+74Eu3Ezqd0KZbiaL25V2RXhzfCNXd7ieb4lNfh0vjbiXqs15JbGke6ae6xncNu81aL1Xi4jm7jrt0sN.3pW8pL7gObb0UW4JW4JpcY9ku7kElOadyadpLgZiabi44O+4LyYNS.3t28tzu90O5QO5gZYFWSLwDpScpCokVZBywM1wN1pkOQJWGjUVYQe6aewXiMlYMqYwjlzjTYPtJCKrvB.3YO6Y7ge3GRd4kGaaaaigLjgHtGTb8v6+9uu32qYMq4kVKB6YO6ggNzgRu6cuYqacqzyd1STnPgvznRRRk4TvX0qd0z0t10xHTypW8pECNVZpNwyF23F4YO6Y.E6ywye9ym.CLPNwINgPf2wN1wJz94W8UeE8oO8QHHkqt5JO+4OWzd4AO3Ar90uddu268n0st0DarwVgkGe228cByfu5UuZ72e+Eaz11291iBEJXoKcohm4G9gef.BHfJ7jdPVS2e5m9oB26Ytyct3iO9HByMu4MooMso.E6JGJTnfqe8qKtl+96O.pn.fRxu9q+JN5ni3hKtvst0svBKrfjRJIZdyaN0qd0iBKrPLv.CJyB.2yd1CO7gOD.9we7GoicriU3IAg5TtCPgEVnnb+F23FbsqcMbyM2vZqstbaiJuI2aW6ZGm+7mWHvdkQ0osTIwHiLByLyLN24NmvUTN0oNEIlXh3pqtVgtE3m7IeRktmeTWq780e8WiIlXBadyatRc0BYkA7G+weHtlb4j81aO1Ymcbm6bGUTRh5vKabHKnqLwGe7TPAEToy6.Ud+X+7yO.3y9rOS35YSdxSl0st0gu95KwFarhMh7m8YelXtzoN0ox1111pz2qr6r14N2Y9ke4W3XG6Xh4VJIxBkeiabCdxSdBlZporl0rF.HwDSjbxIGgB07wGePgBErpUsJg6yESLwP25V2vYmcF8zSOgarjPBIHFi4N24Nrt0sNF7fGLd6s2BKmWQTc5SJyye9yEiWuksrEhJpnHszRSr3vMsoMQ3gGtXbL0YLI0gZUqZo142bxIGwhZtxUtB2912FGbvAUrrkra5XiM1vMtwMT6zgkVZI.koOkb4n0Va8qbXbwEWvO+7Sz157m+7uxt5rFJedsHb+INwIHrvBiHhHBBJnf3l27lr4Mu4xUH8Jhie7iSyZVyXVyZV7vG9PhO93YW6ZWUKeuu4Mu47tu66RsqcsUYyNVcOVBe9yet3zq35W+5zqd0KbvAGJypUqLJ4DWolZp3fCNfgFZH4jSNp7bm8rmsLgUd0wsqcsSXBPY70We4JW4JpcYdIcwlm9zmJrdhkVZIJTnPEALtvEt.8qe8qJm7QF4Er76+9uKt10u90qVB2KOAkYlYF93iObxSdRwjyUk+XW53vGe7g5W+5yhW7hE04k7THIszRiYLiYfSN4DADP.LnAMHTpTY4VGTUryctSdu268nacqar0stU5d26NRRRpXtRu7xKFwHFAVZokBAD.TosIPEJXe0MdJoV+kaqJKbkc1YGETPABgFfhE1SdBeEJTHJy10t1UYRCt6t6Upv8ktL7t28tXkUVgYlYFt4la.vnF0nJyF0phzlnb5szsme3CenXx1XiMVbxImvEWbA+82exN6rYaaaaL9wOdryN6nMsoMTXgEVgat48su8wfFzfvO+7SXV6u5q9JVwJVAcu6cWLAdoO4UJY68LyLSTpTI5nS4OzZUUtKSoymolZp3latUgBGupUsJ7xKunCcnCzgNzAdwKdAm5TmhEsnEUtVvSF0ssTIo0st0h+s7Za3jSNUtkwk1U3dY3y+7OGGczQN4IOYUdRcIO1VFYjg3Zm6bmiqe8qSyZVyXwKdwje94ShIlHKZQKpBcmnRyKabTu5UOlzjlD1au8B2IEp7xZnx6GKacBYe5ujH2F1VaskBJn.UbgIIIIxLyLqzueGe+2+8LkoLEhJpnXHCYHBeNujuKIIIUbuGkJUVlwoK4uk66WZqmkbxIiyN6Lt6t6hw.JoKmBEO20fG7foksrkUov8Um9jxTZW7RRRRk8ITo2yPpyXRpCxVHTcxuxtPqL26d2CGbvAzSO8D8ykGaojJxRc3d26d3latgc1YmJ8eks1c40+s5Fle9m+Y94e9mEtaZ+5W+vVaskQNxQVsRqZnp40hv84me9LoIMI5W+5GMqYMiV25Vimd5ISXBSnLcPjQWc0UkeGe7wybm6bIjPBAGbvA5ZW6Jd6s2L4IOY0JMnkVZwvF1vPWc0kibjivUtxUvN6riPCMTgq+ntTYSNptTZg3qHtxUtRYtl7fRqd0qVkIpf+6pzU2x7RNPTIWwrb4eIE9U9+WUCJJirvAkWbntHuhemc1YxN6rYCaXChIfJo.QUFxC.1111VRJojHwDST39QkbC4pToRwln5RW5R7EewWfe942Kkv8EVXgb0qdUbwEWnd0qdXqs1RRIkjnsScpScXZSaZTXgExoN0oHojRhm8rmwnG8nqVumZp3IqrxpRmXWtsgRkJU4jFQas0Fs0VageoWQXlYlohFlkcimrxJKQ83d1ydTYwjFYjQpr4vJIYmc1ka50.CLPbL3FSLwvvF1vnycty3jSNwktzk3Dm3DHIIQO5QOnwMtwUp1ge5SeJO+4OG2c2cryN63YO6Y7vG9PRO8zwGe7QrH+Run9pilmppx8WVd7ieLCX.C.u7xKBHf.vKu7h.CLPZRSZRENw4KaaI4wfRKszX26d2hqajQFQ1YmcEVF6pqtVomHYW5RWpRGqczidzzl1zFtxUthvEupLjEVyTSMkLyLSfhqqFyXFC1au8zqd0KZaaaKd3gGr3EuXUNj.JoKfBpJ.dUEGUjBnV3BWHFXfAbkqbEhO93IiLxfQMpQITFwKCO6YOCCMzPgUdjwHiLhjRJI.H2bysbayUUmNb+1u8aDd3gSPAED95quzhVzBhJpnn10t1rxUtxW5zKT73CkruurUYezidjXrhRaoV47PoEvs73OCsAqNiIoNHOmzqR9sjHqTlpa3RN4joqcsqzjlzDUDTW9aJQ4Iah5FFqrxJf+q7JYjQFrpUsJ5XG6HN3fCXhIln43vrFlWaGElO+4OmUtxUxDm3DYqacqnPgBU7YzhJpHUzHb44a1ojRJL+4OeFyXFCImbxXpolJZjHiRkJKyBCfh0ZgAFX.m4Lmgst0sRRIkT05CeR0EIIoWpMiYoo7lXPVStFXfAbyadSU9qja.sppLuxP1rZkzcgZYKaI.kq.WETPAkwW7kMyZIqKqtmS44kWdBM8rrksLjjjnMsoM.nx4yeSaZSYAKXArfEr.BKrvTINt10tFPwsMj23ixlIsz9vtLxK3Scc8mxiMu4MCT7o.fBEJ3m+4eVbOY+ec6ae6LqYMK15V2pZaIhRRMU7jbxIiBEJDtpBTrlE+we7GYvCdv.EOoijjDG5PGhcricvN1wN3jm7jUolFgh2b2xXfAFPiZTiHmbxgBJn.N24NGPwk4xw6N1wN3gO7gpn83xK8Vxy5bqrxJrxJqDKHLqrxRrghMzPC4PG5PTTQEQZokF95quXfAFHNsjpHtxUtBVas0hS4GnXgbr0VaowMtwUKybWY4iJqb+kgV25VSfAFHm8rmkYO6YSDQDAYkUVzvF1PUdtRJzZ0osTICWhIlHRRRko96pW8pnu95WgwwW9keISe5SuB+yCO7nByeCYHCg.CLPt90uNie7iWsJSJo6IHiCN3.gDRH7vG9PV7hWLCYHCgDRHAzUWcoYMqYh1RxaTPnXMfVRAgqp3njHOmPsqcswPCMjTRIElvDl.+zO8Sh1huJmDbxBveqacKQ8vd1ydnvBKTLl1st0sPgBEz912dQ3r2d6qRKX20t1UbyM2Xu6cuL4IOYwYmd08H9rjH22W1u0ghW3TqZUqPRRhTRIEt5UupJi6KirBZJsxWpN6IrZRTmwjjozKVrjTcyuUExtJi5ZIJYjspeoWja6ZW6nvBKTnrlRZ8P0MLyXFyfUtxUVFKOVTQEgjjzqkuqG+uNuVzbem5TmnoMsobzidTxKu7DCZWxUp+nG8HZXCaH95quXqs1VlMK4.G3.IqrxhyblyfwFaLVas0kwLYPwBfT+5Wedm24c3BW3B7zm9TRKsz32+8eGkJUhqt5JMqYMCO7vCgvpkDGbvAzRKsDB0IKXZFYjgPaOpCYmc1XiM1P25V23N24Nbu6cupU3qLhM1XUwDVG+3GmFzfFP.AD.qYMqgTSMU0pLuxPRRh6e+6i0VaMu268djTRIIDPq7NYTRIkTnoMsoDZngRZokFW6ZWiG+3Gyye9yEmfBEVXguTeDhtzktDspUsh10t1gAFX.8nG8fhJpHU72SszRKgPlk1UNt+8uuvkij8wyF23Fyie7iE0IScpSkqcsqQxImL0u90W3+jU2iOrRxu8a+F4latT25VWxKu7D9iLf3noqG8nGjUVYg4laN8pW8pZ+NpohmMtwMRG6XGYzidz3latQVYkEAETPXrwFKNEm1xV1BCe3Cmktzkxd1ydPas0lPBIDzSO8pRgjkOBGuyctCcu6cG8zSOwIMx4N243YO6Yz8t2cLyLy3RW5R3s2di6t6NW5RWh8u+8Wl3ayadyzwN1QlvDl.wDSLjUVYQ26d2QgBEpbBJEe7wie94GRRRhirwSdxSJ1LcUj+1KSLwDiXe7HmN1yd1C8t28VsVbPUg5Tt+xPXgEFsrksD+82eN7gOLN5niXjQFoh0SdvCd.MrgMjwN1wRLwDiZ2VpzgKgDRfKbgKfmd5Iye9ymicriQCaXCIf.BPrg9KO9pu5qpTAJkWTdoIzPCUb5vbm6bGUNWrSIkTJyI0gLxKDqksrkh9hxeEM6ae6qXCR5ryNiRkJIojRBIIITpTIN4jSLwINQRN4jKyw9aUEGPwKRzQGcjYNyYxt10tHlXhgBKrPbvAGXnCcnjUVYQe5SeTqEJWYroMsI5PG5.yXFyfCdvCx8u+8o28t2Tm5TGV1xVFm6bmiMsoMQ6ae6YbiabbvCdPJnfBDGalUFCcnCkZUqZwt10t3ZW6Zhyp8Re5CUc3rm8rjYlYRm5TmPe80mjSNY5bm6LlYlYbhSbBfhmK5bm6b3kWdwBW3BIt3hil27lSaZSaHiLxfKcoKA.m9zmlHiLRhLxHwLyLqJOJqqoQcGSp75+TRT27q5hCN3.RRRUK2fFJdw.m5TmBe7wGl8rmMm3DmfPBIDzQGcXEqXEh3dAKXA7nG8HhJpnTqv.v1111XTiZTr5UuZ9ke4W3YO6Y3u+9iM1XCojRJuRVuRCkOuVDtWGczAO7vCZUqZEPwZPM93iWkyd2CbfCP+6e+IxHiDIII9i+3On90u9ByoIKXV.AD.PwlVb6ae6kw8V94e9mo90u9B+Q+gO7g7EewWHz3X.ADf3X2RdywURMkL1wNVUFjS9n+5hW7hrjkrDjjjJWS7UZssrwMtQdm24cDGqbwEWbprITKOsyntlNrvBKjErfEPzQGsvmZghc4EYsjUUk4xu+JSKQKYIKgwN1whmd5Id5omHIIwANvADZjujrksrEd228cEmbBqXEqfye9yyRVxR3S9jOQTuUU90Y4wpW8po90u9zl1zFZSaZCEUTQrrksLUzHXUU1M+4OeF23FmPnfryNawwTJT7BB5bm6rJV13pW8ppHP9KCm4LmgN0oNUly04abiavAO3AIv.CjAO3AijjD6ae6SrvkJiRlWeUhG3+V+mZpoxzl1zX7ie7z0t1U.DmsyxtbyN1wNvBKrffCNXhLxHAJte37l27pRsBssssM5ae6K95qunToRN8oOsv0AJnfBXjibjLm4LG71auEZ95ZW6Z7+8+8+Ul7LTruaN8oOc9zO8SEmND4latrt0sNU1D6G7fGD+7yORM0TEwwt28tIhHhfm8rmUkt10oO8oEB3IqUp6bm6Pt4lKFXfAUou9JSIcqoRh5TtWdTU8e+O+m+i36AgrRLdvCdfJGEtqacqiQNxQh+96OlYlYL0oNU0psToCWBIj.+e+e+eLyYNSb0UWIpnhBnXEsHejgVd7x12pjmNKxGawxjd5oWgB2e5SeZTpToJZgem6bm3ryNiu95qXSvlSN4vW9keonN6a9lugQO5QKFqMkTRQbDEptwwV1xVve+8mlzjlvPG5PIlXhg4O+4yG+weL8su8EnXMpWx14UGW4Pt9IkTRgYLiYvXFyXDe3hjjjXW6ZWhSRnadyax7m+74C9fOP7L2912F80W+xXI7RxW7EeAScpSkd26dSu6cuQRRhKbgKnxQNYoopFWtvBKjO5i9Hl27lGssssEu81aJrvB4rm8rLqYMKwyMsoMM9xu7KoEsnELvANPgLBicriU7NRN4j4l27l3niNRjQFo33f7kMsUcQcGSp75+T5zh5jeKOjaGH21QgBEXokV9Ru+V9pu5q369tuCWbwEb0UWQRRR38Cv+sLrjoopJL.r+8ueLzPCYHCYHhuRsRRRjXhIVliqaMTyfBqs15pUKd2byMwJIk2nmkGZqs1Xqs1hjjTktAAs2d64t28tk6jVFZngXqs1RFYjgZ+wKpzHq016d269OBS+XlYlQcqac4wO9wkoLQcKyqJrzRKwBKrfacqaUslvojznF0HdxSdxqj0KL0TSwBKrPkMGU0k5W+5iRkJK2SUCiM1XrwFanvBKjzRKspr8grl.KYefpKZokVXqs1x8u+8ekZOVSEOPwkCFZngkwTxkD4y59pS+PczQGpe8qek1VT9Y9i+3OTa2KpV0pVnu95Wl8exe2PcJ2qtniN5PCZPC3O9i+nB8ecCLv.xO+7Ei4ptskJc3jwN6riG8nGQ1YmcMV9nlhu8a+VbzQGIrvBqLkGMnAMfm9zmVgZ3zFarQk8HR4QUEG0pV0hBKrPUzLo0VaMYkUV039XrwFaLlXhIU5BuqScpC4latUq2sQFYDVYkUuRyoTdnkVZQ8pW8pREEzfFz.t28tWEtvV80WezQGcpv8y2eFnNiIUQ8eJMUU9sxve+8mwN1wxxW9xqxSCoJadLiLxHb2c24rm8rkYb4R+MmPcBSIwRKsDyM27WYWbTCUdc3qMg60fF9mF0DB2qAMng+7vd6smEsnEwl27lqxSWGMng+tyO9i+HlZpoBKsVYnYdr+9SkUG9ZaC0pAMnAMnAM7ljae6ay92+9KylUTCZ3eZXmc1QspUsXdyaduoSJZ3u.7J4y8xely0fF9mNZ1vOZPC+8jErfE7lNInAM7Zm6bm6nVesi0v+avqjl6qoNMXzfF9qNZZqqAMnAMnAMng+Nvqjl6k2TNlYlYZzfuF9GI4kWdjYlYp4CrgFzfFzfFzfF9aAuxGElO+4OWifOZPCZPCZPCZPCZPC+E.ManVMnAMnAMnAMnAMng+gfFg60fFzfFzfFzfFzfF9GBuTmy8ZPCZPCZPCZPCZPCZ3MGUz4b+KkO2q4CefF9eYz7w+PCZPCZPC+cFMyi82epLksqwsbzfFzfFzfFzfFzfF9GBZDtWCZPCZPCZPCZPCZ3eHnQ3dMnAMnAMnAMnAMng+gvq74buIlXhlOhUZnZglOLTZPCZPCZPCZPCud3UR3dSLwDpW8pWMUZQC+OB5qu9h1MZDvWCZPCZPCZPCZnliWI2xwLyLqlJcng+GDMsezfFzfFzfFzfFpY4UR3dMthiFdU3eJsepW8pGd5omUX9wSO8j5Tm57ZOc71u8ayO7C+vq82yKCQEUT7i+3OxhW7heSmT9ed97O+yYJSYJuoSFu1nd0qdrjkrDBHf.dSmTzPMHidzilku7k+Ol4M9qHMtwMFO8zyx7mCN3PYd1ZUqZQjQFI8rm8Dcz4U1CueihGd3AKcoKEWbwk2zIkZL96cMBf1ZqM.nToxWo3IjPBgN0oNwm9oeZMQxpbwQGcjO7C+PV4JWIW4JW4UJt5W+5G93iOuVSukFyLyL5d26dYt9d26d4oO8oheas0Vie94GlZpobwKdQN4IO4eZow2DLnAMH7yO+3JW4JL9wOdUtmd5oGSe5Sm3iO9W6BT0hVzBr0Vaes9NdYHjPBgvCObxKu73pW8puoSNuRL1wNVd7ieLqZUq5McR4kFWc0UxO+7eSmLdsgkVZI0u90G6s29J7YhHhHvImbh+8+9e+mXJ6utXhIlv3G+3IlXhgidzi9lN4Tt3omdhEVXA0oN0gTSM02zIm+QxW7EeAlat4k45okVZ7AevGH98G9geH8rm8DEJTH9828ceGwDSL+okVqIwN6rCarwFpacqKIlXhuoSN0H72dg6mzjlDlZpouxB4V6ZW6W6ZDv.CL.CLvfZj2Ssqcsw.CLnFHUo9T25VW70WeQRR0OpwIjPBBg6cvAGXLiYLnPgBTpTIt4lazhVzBV5RW5epo02D3pqtRW6ZW4.G3.uoSJ+kh1zl1..ezG8Qb+6e+2volWM5PG5.u3Eu3u0B2qAvWe8EGczw2zIi+xfwFaLd3gGjUVY8WVg6iN5nwBKrPif8uFwPCMjG7fGv5W+5U45krLu4Mu4zqd0KxLyLYNyYNXokVxnF0nXjibjb5SeZM6it+hvqcg60RKsnnhJ5MZbHu5xRKTZIYsqcsr10t1pLdpr3np3JW4JLxQNxp74pr2i5jFdUSmUEaZSahXiM1x8dCX.C.EJTvblyb3N24NLyYNSZYKaIVZok73G+3Waoo+pvHFwH3rm8rjQFYTt2uN0oNDQDQvd1ydHkTRQb892+9SN4jC6XG6.iM1Xd228c4nG8nT+5WeZe6aOO3AOfUspUgRkJIxHijl0rlwMu4MYKaYK7hW7BUdG5niNDYjQRSaZSIgDRf8u+8SVYkkJOi0VaMcu6cGas0VhKt3Ht3hiBKrP.vImbhtzktvV1xVHnfBBmbxI9lu4apv5uFzfFPW5RWnQMpQb9yedN5QOpHM8du26QiZTi.fvBKLRO8z4m+4etLwQIyy1au83s2dy91293Tm5TnkVZQG5PGnycty7G+wevANvAJyD75niNzt10N70WeImbxgSbhSvu8a+V0NO+S+zOg+96Ot5pqDarwxQNxQ..SM0Tdm24cPWc0ESLwDFwHFAwGe77q+5uVtkIlXhIDZngRSaZSI8zSm8t28xst0sD2WO8zivCObZVyZFO8oOk3hKNN6YOq39CbfCj6e+6y8u+8oW8pWnToRV25VG26d2ifBJHZe6aOO9wOlctycxsu8sUIOrl0rF72e+wSO8jadyaxd26d4QO5Qka5TcJajo28t23gGdPt4lKwEWbbpScpJL9F5PGJIkTRDWbwItVG6XGwYmclkrjkHtVaZSanScpSXngFxku7kY6ae6pDO0pV0h.CLPZYKaIW9xWlCdvCVFgGrxJqnG8nG3niNx4O+44F23FUZdcvCdvT25VWfh6u9fG7.1xV1Bfpsid1ydFG4HGQszjmKt3BADP.XrwFSBIj.6cu6Ukwfqp3Mv.CDqs1ZN3AOHgEVXXkUVwd26d4rm8r3hKtPHgDBRRRb3CeXQ65R1mw.CLfdzidvKdwKX26d2pTFz6d2aLzPCYyadyhq03F2X5d26NacqaEKszR5Uu5EPwBtMhQLB10t1E24N2AP8ZaHS+6e+QKszhMrgMnx0GzfFDO8oOkcric..t6t63u+9i4laNIkTRrqcsKQ8ZEM9iat4F1au8r5UuZQ7pNwSE0mt5T+oNiA8OAzWe842+8emCcnCUgOyG+weL.7u+2+aRJoj.JVYiu+6+97AevGvbm6bqvvVU82Um5yMsoMIZWbgKbA1912NVXgELvANPL2by4BW3Bh1Yv+crzKe4Ky.Fv.vHiLhCcnCwoO8oqT4jTm5b6s2d5QO5A1XiMbqacK15V25eYVbiBqs15pkTfk7SVbSZRSpvmqO8oO3s2diIlXBRRR77m+blzjlj39yadyiie7iKpb6V25FcqaciINwIRd4kGJTnfQLhQfiN5H5omdHIIw0t10XQKZQ.Ead7F1vFh1ZqMJTnPLXyctycXdyad.PngFJctycF8zSO.Hmbxg0u90yEtvEDoid1ydRfAFH.TTQEUFK.LkoLEJrvBQGczg5Uu5Qd4kG6ae6iXhIFlxTlB4jSN70e8WWl7+Dm3DAfYMqYgc1YGidziVbuUrhUvku7kE+9cdm2gV0pVQhIlHd3gGHIIQBIj.qXEqP7LN6ryLzgNTLv.CH+7ymLxHCr1ZqUYwBCX.C.e7wGzVasQoRkbzidT1111FCbfCjV1xVxm8YeVYRm8u+8Gu81a9zO8SqxEP0rl0L93O9iYiabiUnv8KXAKfG8nGwW7EeAMtwMlwLlw..G+3GmMsoMUlmuplH9uhT5Oa2e5m9o3me9wl27lIhHhfTSMUhN5nAJVHtst0sJbKGu7xKl1zlFqacqSkI.+4e9mI6ryl28ceWr2d6YQKZQ7hW7BL1XiQRRBEJTPlYlIRRRXt4lqx0F3.GH.LyYNSb2c2IyLyDyLyLwyje94STQEkv5JADP.7u9W+K.DOyie7iIpnhhhJpHhJpnH7vCmbxIGLzPCQRRhwLlwPxImbYJK5ZW6pXvd43pvBKjniNZt+8uO+7O+ynu95Krjyyd1yXPCZPkIdjyyk7c9K+xuvJVwJXEqXEXkUVIhe.9lu4aDS.oiN5vxW9xwRKsTkm4Tm5TLiYLipUd94O+4hwrTnPA4latzu90ObzQGYdyadp3FfG+3Gub66as0VyhVzhPe80m7xKOzWe8QRRhu8a+VNzgND0t10lUrhUfAFXfJo2su8syxV1xD+ekJUJF6Rt76pW8pzhVzBQ3TpTIezG8QjZpoJxCO4IOQk1HRRRL1wNVt90uNPwKNO+7yWztopJa.XoKcoXiM1P94mO5pqtnPgBNxQNR4l+AXm6bmb8qecF6XGq3Z+m+y+AWbwE5cu6MPw9PcfAFHJUpDIIIzQGcH8zSm268dO.vFargu+6+dzQGcTos0Gdl08.L...B.IQTPT8geH26d2Cn3wj95u9qE4SEJTHx+acqaUkwPkYSaZSXngFJJ+RO8zYXCaXnqt5xxW9xwBKrPk5kidziVoBrLgILA70WeUo76QO5QDczQSt4lqZEuKbgKD6s2dxO+7QO8zS7Lm9zmFu81aUB2BW3BYe6aeh9Lkt+N.qYMqgMtwMBT77MlZpoDd3gKRygGd3DUTQwW8UeEN3fCDQDQf1ZqMRRRTTQEwbm6bI1XiUsZaTRl6bmKN4jSLzgNTdvCd.v+su8EtvEXpScp7AevGPvAGrJwYt4lKu+6+9jYlYVgi+7ge3GRSaZSEgUcimJpOs5V+okVZUkiA82QJ87XZokVricrC14N2I+1u8a3pqtxktzkH93iWkvs4MuYJnfB3se62VkqKqngJRAlUU+c0s97Eu3ETqZUKfhGWLwDSjl27liVZokJ8ajc4tsu8sSAETfvSGjelqcsqIj2KjPBggO7gybm6b4nG8npUct+96uP9lBJn.zSO8nfBJfniNZQa+W2T55vRxqkOhUN3fCDXfARt4lKadyal8t28RAETfJOid5oG0t10V7ayM2bzSO8PKsJNIEZnghyN6LIkTRrgMrAhM1XESzAvgNzgX26d2jUVYgRkJY26d2r6cuaUbIhF1vFxsu8sY6ae6DSLwfBEJXnCcnp3SYW4JWgXhIFxLyLKW2bwXiMFas0VLxHi33G+3nPgBBIjP.fryNaryN6J2xf5W+5yyd1y.fLxHChIlX3ZW6Znmd5ggFZnJOqIlXBFXfA3latwIO4IIyLyDO8zSgYi0UWcI5niF80WeN8oOMYlYlXs0VqRbDP.APG5PGH2bykie7iS94mOADP.zt10NRO8zwPCMrb8GaWbwEJrvBqVVFIhHhfErfEvrm8rEKLRNenPgBwDuCaXCSHP4eFanz2zbjibDtxUtB1ZqsBAmdUv.CLfO5i9HBN3fIwDSDyLyLLv.C3cdm2gfCNX98e+2wLyLqLKxVe80mgNzgRHgDBadyaF8zSO9xu7KA.KrvBF8nGM4lathmYW6ZWXokVVlE+oToRFwHFAAGbvkqf8VYkULpQMJxO+7ECL+se62hN5nCyYNyAn38Fx0t10PRRhPCMzxUv9Rmmm8rmMAGbvrrksLl7jmLVYkUricrCBIjPXnCcnjat4xnG8nwHiLBn3EfaokVxQNxQnu8su7tu66R5omN93iOzrl0rpUdFJdiIGQDQPBIj.FXfAzgNzAt4MuIgFZnhEVGZngVgB1FYjQh95qOyctyUHDUN4jCcsqcEn3w1zVasYkqbkDbvASTQEEETPAzyd1yxTOt3EuXBN3fYkqbkns1Ziqt5JSdxSlfCNX1xV1BZqs1kIblYlYLtwMNBN3fY1yd1nPgBwhbJMpSYSqZUqvFargScpSQXgEFgFZnjZpohWd4UkVWVYnkVZQ.AD.YjQFDd3gSe5Se3vG9vXt4lKZOOm4LGzVasYFyXFDbvAyLlwLPas0lYO6YKhmYLiYHrTXvAGLiabiSk4UJOdq25sDVQIzPCkgMrgA.ScpSEKrvBNvAN.gFZnLfAL.t+8uO94me3u+9WtwU25V2vWe8k6cu6w.Fv.ne8qebhSbBrxJqDiAntwqBEJH93imfCNXF8nGMRRR3s2dyF23FE4M.w7OxXlYlwpW8pI3fClO3C9.wB2J8bDUDqcsqUnLhe8W+UBMzPI1XisZ2uAPn.mvBKLw0jEjdCaXCnPgB7yO+3gO7g7Vu0aQHgDBG3.G.CLv.wh9joxF+o5DOP42mFTu5O0YLn+Ifr0rBJnfX5Se5z+92elwLlAaYKaQk1RFXfA7jm7jxD9byMWrxJqJ23tp5uWcpOyO+7IhHhf92+9yKdwKvEWbgacqaQngFJQFYjjat4RqacqUILFZngbwKdQBO7vo+8u+b26dWbxImHzPCsbSupSctb6inhJJBKrvDy4ETPAoNE2u140hv8xlg+nG8nbricL1yd1Ce9m+4Uq3PVn40st0wINwIXSaZS7Mey2Hte7wGOG7fGjrxJKJnfB3fG7fbvCdPUzH9BW3BEaxicricHrRf6t6t3Yt8suM6YO6g6d26VoomoMsowl27lIlXhAszRKZbiaLW8pWEs0VarxJqnQMpQLgILAr1Zqwd6sGEJTH1zru3Euf8rm8TolwFfe5m9I1vF1.ye9yG.wjmcpScBs0VaNzgNDqYMqgoO8oWlMDme94GPwMJ2zl1jn7NnfBhyctyA.srksDszRK9rO6yDCtYlYlo1lWrvBKjm8rmwktzkHszRCiLxH5Se5CcoKcA3+N3PVYkE8su8EiM1XgkVLwDSTq2we24y+7Om7xKO5e+6eEtvO0k3iOdgKWHalwCcnCIVvjrFDJsv8e228c7fG7.jjjX0qd07nG8HwB6Ze6aOJTnfktzkJdle3G9AxImbvUWcUk3Y0qd0BSyWd3iO9fBEJXUqZUjVZoA.wDSLb0qdUwh0eYxykzpPt5pq77m+bVxRVBRRRB+AUgBEhAvc1YmI6rylu9q+ZJrvBIiLxfwMtwwpV0pH+7yuZkm23F2HO6YOibyMWV9xWN.pr.V0AYs62t10NpcsqsXBK4Ma8ZVyZnu8suBWA4QO5QjRJonhxMfh+FPr28tW.DOaZokFIjPB.+WAoJ8h128t2svkOhM1XIgDR.iLxnxUnW0orQN+Xu81ic1YGEUTQDczQy.Fv.pVkKkDYygWqZUKZUqZEPwVysu8subiabCLxHivLyLiye9yKF27Tm5TjXhIhEVXAZokVT6ZWaLxHi3hW7hbricL.HwDSjcu6c+RklZdyaNYkUVL+4OeJpnh34O+4h5rN1wNVtgoScpS.EaI4m+7mSd4kGe0W8Ur7kubQ8T0IdkEP3F23F7jm7DTpTIqYMqQj2xImbJyFdL0TSU3xMokVZrhUrBTnPAsu8s+kpbPlpS+FYNyYNC4kWdp7taSaZCYkUVjXhIhjjDCX.CfnhJJxN6rEiQAEaElRRkM9S0Idpr9zpS8m5LFz+Dn90u9.EW1NqYMKF5PGJ6ZW6B80WegrW0pV0BEJTTttdRt4laEtO.qp96Um5y0t10Rt4lKYmc1BqJ7C+vOPQEUDu3EufjSNYzQGcDZaGJV1koLkoP94mOYkUVhEmVQ8QTm5b43uyctyniN5vwN1wnu8suUo6c+mEuV749SbhSPXgEFQDQDDTPAwMu4MYyadykw2fqLN9wONMqYMiYMqYwCe3CI93imcsqcUszvbyady4ce22kZW6ZqREswFab0J+77m+bgvzW+5Wmd0qdgCN3.m6bmid0qdgGd3A1YmcXqs1he94GYmc1.nhOzpNb9yed.3wO9wHIIIVsbCZPC.PEyujd5oqxj5Farwjc1YKbOoryNaxKu7n10t173G+XJnfBnYMqYjVZog81aOFZngbiabCzVasU6StmacqaohqU0fFz.l3DmHAETPb3CeXxKu7.JdAC93iObxSdR9i+3O.nB8Qy+oQt4lKyblyju3K9Bl4LmICcnC8kNtd3Cen3+KW1VxSkH41YklR2t6t28tXkUVgYlYFt4la.vnF0nXTiZTp7bk1hRUlf8.h3RtcqLImbx3ryNi6t6d0tOPI2vsJTnPzWcW6ZWk4Yc2c2It3hiZUqZwMu4MU4dO5QOR3a+xBgpN44RpgPYs6Vc235qZUqBu7xK5PG5fXC3dpScJVzhVDETPAnqt5xDlvDnksrkBWVp7nzSfJIIoxdmnz6iBYJsYzu5UuJsrksDO8zyxrYIUm1Cm6bmiqe8qSyZVyXwKdwje94ShIlHKZQKRXktpKRRRr8suc5Se5Ce9m+4nToRt6cuKqZUqhyd1yJl.s0st0kacuSN4jvZfx98aIy+kV61UEJTnnbaG83G+XJrvBK2iBPnXkPUPAEHrRqbdaaaaaU63URRhbyMWwuUpTYYF2r7FGsj6kC.gxbbwEWXqacqUPNtpo5LVQI4zm9zzoN0IpScpCFYjQXrwFy9129D22Ku7hQLhQfkVZoXgi.koePUM9i5FOUVeZ0o9qpFCphbQ0+tQZokFqacqiCe3CKbqje3G9AryN6vc2cWru4jcMzRiQFYTEJiWU0eGT+5SYEIAH7HjRtG2jmqrj7zm9TU7u9W7hWP94muP1pRh5Vm+8e+2yTlxTHpnhhgLjgH1CTxJh4MMuVDtO+7ymIMoIQ+5W+nYMqYz5V2Z7zSOYBSXBU3DR5pqtp763iOdl6bmKgDRH3fCNPW6ZWwau8lIO4IqVoAszRKgeTJ6tD1YmcDZngph1wTGJsKEIS5omNJUpDmbxIZPCZ.YkUV3hKtvSe5SI+7yuZsXFIIIUdOkdy7.nx.+kNMUx8cfLJUpTzII8zSGarwF71auIqrxh5Tm5HVAs7jAUWRKszH2byU3+axBiJqI0MrgMH9PUUxAO+mNm6bmiie7iSm5TmJyjhxTZsZWQB38xfYlYlJBIKaFwrxJKQ8vd1ydTwhMFYjQU4ltrzHGWk15OxVoo5FekF49.JUpTnwMnXMIqs1ZyYNyYPRRBkJUVoKXulLOqN73G+XFv.F.d4kWDP.AfWd4EAFXfzjlzDF4HGISe5SG2byMtyctCm4LmgzSOchLxHwBKrnF48W5ONblZpo.Ttaxa0orQ1mms2d6oW8pWz111V7vCOXwKdwDd3gWgJbozm80kbBa.V9xWNadyald26diO93CMpQMhoMsow3G+3Eo0zRKMUzDuQFYDYmc1jRJoHFWrzVEr7D7npPtcT44lEZqs1U3BoyJqrpzOFeurwa0gR21WN+WREAT547J87skGur8aV+5WOcpSchvCObQ9Vd+EUm5TGl1zlFEVXgbpScJRJoj3YO6YprmzTGpohG0o9Cp7wf9mBYlYlbjibDRO8zU45W+5WG2c2cb1YmIt3hiW7hWTl9XZokVnmd5Uod.Qk0eO8zSuFo9rhn7rhr1ZqM4jSNk45pac9u8a+FgGd3DTPAgu95KsnEsfnhJJpcsqMqbkqrFIc+pvqE2xAJVqSqbkqjINwIxV25VQgBEz4N2Yw8KpnhDtwAT7t2uzjRJov7m+7EalOSM0zx3SWJUprbGnxAGb.CLv.NyYNCacqakjRJoJ8bO9kkG7fGfc1YGlXhIrl0rFL2bywFarQnw5Zp2A7e0jBPY7mxbxIGgOuCEO3sQFYjXwTIkTRXjQFQSZRS3vG9vTTQEQm6bmI+7ymLyLyWpzkQFYD5qu9BqZjWd4IVfwxV1xPRRRbLHVZMW8OclyblCO6YOS3tTxHu.nVzhVHtlEVXQM5wvZe5SeD+eCLv.ZTiZD4jSNTPAEHVHm7lmR9uG9vGVFgupJjiqR5y2JTnfV0pVgjjjJmFPurHqonCcnCIRqm7jmTkECkQFYPcqacUYec3u+9yxV1xvKu7pFMOCk+DEkjV25VSfAFHm8rmkYO6YSDQDAYkUVzvF1PfhcipBKrPFwHFAqZUqh8rm8TsU3PkQociH49fkzkEkQcJabvAGHjPBgG9vGxhW7hYHCYHjPBIft5paYLYtLJUprLZEqj+1LyLiPBIDLyLyX8qe87we7GyO9i+HPwtJgrKbT5z0Uu5UQe80mBKrPgqGIm+jo57wqpjBc+jm7DpacqqJB64u+9iBEJJi0AjI4jSFEJTnhuyWu5UO9we7GYvCdvuzwa0Amc1YUlCTt+3Eu3EAJ1Be5pqtpL2YE4VMxJpATu1FkGolZpjQFYPG5PGnssssb+6eewIskraHs8sucl0rlEacqa8kxpt0Twi5T+oNiA8OAj2mSk1OzkUBnrF1kcIWYW6EJd+0oPghJ76XRU0eulp9rhvXiMVE4+jO3Qpn4nTm57t10that4F6cu6kIO4IK1OYd6s20Xo6WEdsn49N0oNQSaZS4nG8njWd4gGd3AfpmUpO5QOhF1vFhu95K1ZqskYCWNvANPxJqr3Lm4LXrwFi0VacYLKMTbkP8qe84cdm2gKbgKvSe5SIszRie+2+cTpTIt5pqzrl0L7vCOnksrkkIs5fCNfVZokP6OxKxHiLxPsD5M4jSlN24NS1YmMW9xWVrqru10tl3Yr1ZqwHiLBarwFfhG7nwMtwjc1YqVm62wFarzyd1SBJnf34O+43pqtVFyhd9yed5bm6Lie7imCbfCHFf+zm9zh62ktzELzPCIt3hC2byMbvAGpx8ZPIQdvtKcoKQcpScnicrinPgBUDZ3RW5RzpV0JZW6Zm33YqnhJR3Sr+uBRRRLkoLE9tu66TY.gae6aKr1yDm3DI4jSVkSwhZB5Uu5ElYlYbm6bG5d26N5omdBe1+bm6b7rm8L5d26NlYlYboKcI71auwc2cmKcoKw92+9U62yYO6YIyLyjN0oNg95qunufYlYFm3DmnFIurksrEF9vGNKcoKk8rm8f1ZqMgDRHnmd5INlE2vF1.e7G+wrvEtP1+92u33STKszhKe4KKNkdpIxyO3AOfF1vFxXG6XIlXhQ3WtkjvBKLZYKaI96u+b3CeXbzQGwHiLRzW+gO7gXmc1wDlvD3pW8pDTPAUoZOr5hSN4Dyblyj3iOd5Tm5DVYkUjXhIVtZXWcZO3t6tyvG9vE6S.s0Vab1YmQoRkUnvoO3AOfFzfFvbm6b4Dm3D3me9ohFl0VasY3Ce3je94yO8S+DO4IOQzOH1XiEIIItvEt.d5omL+4OeN1wNFMrgMj.BH.wA0.T7BVZQKZAKbgKj3hKNb2c2UquxjW4JWAGczQl4LmI6ZW6hXhIF94e9mI5nilu+6+d1291GlZpoDP.APgEVXE5dKabiajN1wNxnG8nwM2birxJKBJnfvXiMVHnyKS7VcvPCMje7G+QN3AOHN5ni3iO9P1Yms3iGXhIlHN3fC70e8Wyd26dwd6sWHvlL26d2iBKrPZQKZACe3Cmcric7JMVwANvAHxHiD.UNkzjWvQO5QOHqrxByM2bwwvY0gZp3Qcp+Tmwf9m.6bm6jAO3A++m8tyCqpp1e7i+dy7nh.Nff.4.hnfiHPfFHfHN.pHpnFkZZbcnqk5OS6qZkVp4MsxglTSuMXoowkqgCfkUZRlyZVlSLk.B3DSGF2+9CdN6KG4.bXxoVudd74Q1m8dsW64O60dMvTm5TwFargTRIEBHf.nScpSjVZooTyAV0pVEaYKag4N24xS7DOAsrksjgLjgPgEVnFkzcUUWWuqNsarGOqIRRRJm+ahIlPvAGLxxxZsG7Czsi4ScpSEyM2b1yd1C+we7GJs8PsUHJOHzrDbuAFX.8pW8R4FHkWd4b5SeZkKHgJu3ebiabL9wOdjkk45W+5z912dkOIRKZQKvau8VoTXToREwFarU6yn70e8WS6ae6wGe7Ae7wGxN6r40dsWS4stBLv.U5p9t3EuHcsqcUiGxM24NWMB9RcWazYO6YUZLEZquPUcZb5SeZdpm5oT5RGSN4jwEWbQi5Z7Lm4L03yXMjgLDFxPFB4kWdrvEtvZruVU8zyO+7UpuZpq+vp6duT6a9luAmc1YbxImT5ZotxUtBwGe7J4KYYYxO+7ofBJfie7iiyN6rFuDRcwBKrft0stoQIk8m+4ex+9e+uU96ssssQ6ae6wSO8DO8zSpnhJXSaZSOVWm6Uetv8NJIe0qdU95u9qIxHiTiou10tVlybliRcxN4jSVo69qtVG5RaN4a9lugQMpQge94GkWd47K+xunz2hWZokxrl0rX0qd03kWdg2d6MPkcKXKYIKQ22nox5+6Lm4LYMqYMz+92e7xKunrxJiie7iyJVwJpWoUMIt3hCqs1ZFwHFgRvBpToh0rl0nTeuOvAN.1ZqsL5QOZkdoCUpTwxW9xUdnQiYatp6y+7O+yYVyZVDP.AfUVYkVCt+sdq2RY7cPcAJjUVYozdUV4JWIu0a8V3me9ge94G4me9b4Ke4ZsqEt9Xu6cuDbvAiGd3AxxxbsqcMMZqLUktb9v+8+9eoacqa3me9ozqpTTQEwa7FuQMdN6RW5R48du2CWc0Ub0UWovBKjTSMUkudQt4lKezG8QLkoLEhN5nAp75mu3K9BkGNtjkrDdy27Mo6cu6L4IOYkkawKdwJqm+u+u+Od629soicri3ryNSYkUFe629s0YfA6ZW6h.BH.5bm6LScpSkDSLQ1yd1CspUshQNxQpbMad4kGqXEqPi54aUkd5oqT0BT2aHodLIP8muugjtPsOtrTUm5TmBWbwEl3DmHPkUuhEsnEo7EU+fO3Cvc2cmNzgNvjlzjn7xKmScpSQu6cu03b6CbfCPngFJgEVXjVZowd26davW2r6cuaF23FGPkm+n1ku7kIgDRffBJHdlm4YPVVl8su8oTHP0lpt+nwjNv+6ZZc43mtbOnGGTbwEy7m+7Y4Ke4LpQMJkomVZow+7e9OU96ryNa9vO7CYxSdxJ6OxKu73Mdi2nFeNutb8dC43ot1FLyJqrPkJUJaWpToh2+8ees1KvA51w7W60dMV7hWLCe3CmgO7gqTfDevG7A5Tdp4VyV+bu95qON3fCHKKWqMLFmbxIRKszz5AI0cei27l2rAO.HIIIQG6XGIszR6Q9gbcCLv.bzQGI8zSuF2VL2bywAGbfTSMUsVexZrrzRKwAGbfxKubRN4jqw7QKaYKwZqslqcsqUqo2iC8y8MT1YmcZTO3aJYfAFP6ae6q0q8TOOW+5WuQ+xW5omdz1111l0G1otOGt1tWfs1ZKEWbw03.IRS01r5wahZ6gKFXfAXu81y0u900Z61oksrkXhIlzj0mHqtefdAKXAbgKbA5PG5.YjQF0XaFRa425Zei81aO24N2QmaOQsnEsPYTurlXiM1nz2hWSbzQGImbxoFqi5py6okVZ0qAvOyM2bJqrxpVivyVaskBKrv5Uch2BKr.SM0TMZH72qFR5VST2+wu28tW1vF1.sssskhJpnZ79IlXhIzl1zlZcejAFX.lZpoU65mlx6U.Ud+BGbvAxLyLaTOWtoJc.c+3WccOnGUTaOGyAGb.mbxINwINgFs0u6UUewccUsc8dS4wS0hM1X4F23FL8oOcrvBKvBKrndMRoWWGyMyLyvVassdsOnoRscLrYaDps7xKWoa7q1TaySQEUTM9lU5JYY4Gapu2kUVYUqmQ3dUPAEzjTONqI4kWd0X8pqptyctiFMnKgpq4LP3xJqr57lM5x7nqpnhJZ1KEKcowuVWySS01bs8.upttps6u0bdMRcUnJZitruo1JoYs4t28t04KupKAJ0bctbM0AOzPZn04me904K8zbz.tUqtdIQUpToS6G01KF2TduBnx6WzTjdMUoC7f+32CSRO8z0otH65yW9WsZ658lximZitbL9dUWGyquuby8KMaA2KHHHHb+SVYkE28t2sFCXU3wKpToh6d269XUUCQPnoVlYlY8tPIdbPiJ3d0Cs5BBMDZq+nUPPngI93iWoM1H73urxJKlvDlvC5rgfvC0T2Ng96lFU+uVCsKTTP.Dm+HHHHHHHHzTqQUx8pqadVYkUhRvWPmUbwEysu8sqwF8nffffffffPCSitN2mWd4IBRSPPPPPPPPP3g.MaiPsBBBBBBBBBBB2eIBtWPPPPPPPPP3wDMnAwJAAAAAAAAAAgGbZRGDqZJFcNEDdTUS0HTqfffffvCBhmi8nuZqv1EUKGAAAAAAAAAgGSHBtWPPPPPPPPP3wDhf6EDDDDDDDDDdLQitet2RKsTLHVcehXveRPPPPPPPPn1znBt2RKsj11111TkWDpCFarwJ6uEA3KHHHHHHHHbuZTUKGqrxplp7gP8fX+tfffffffff1znJ4dQUw4ACw98Gtz111Vr2d6IkTRgbyMWsNOVXgE3hKtPN4jColZp5T5ZjQFwF1vFHgDRfcricTiy2blybvc2cmYLiYPwEWrNk18pW8hYNyYxZW6Z4BW3BMnzPWszktTJu7xY4Ke4M5zxQGcjW3EdAZcqaMe0W8UDe7w2DjCEpMMkG+DDDd3mGd3Ad6s2ru8suZ84Ut4laXhIln0eqpOqyCO7.CLn5galZpoRN4jSSSlVPCM55b+CRqYMqA80We.3jm7jrsssslk0S6ZW6ve+8mV1xVxYO6Y4nG8n57x1oN0I7zSO05u8ce22wMtwMnqcsqz6d2aM9MUpTQrwFaiJeKb+wS+zOM96u+jbxIyrl0rz57Lm4LG71auIkTRgYNyYpSoqd5oG1Ymc3hKtnLsHiLRb0UWYYKaYJSqO8oOXs0VSqacqI8zSWmRaGczQryN6nMsoMbgKbgFTZnq5d26NkTRIMIo0pW8pwbyMmLxHCJpnhZRRyGTl6bmK4latr0st0GpS+lxieBBBO7pEsnEr4MuYL0TSAfvBKLxHiLX5Se5HKW8w6z27MeSsFzN.W6ZWiYO6YqLeZS7wGOabiarIJ2KTUORGb+t28tw.CLfHhHBrvBKZVVGN6ry7RuzKgjjDkWd43t6tSO5QO3i+3OVmV9t28tiu95qFSSRRB.90e8W4F23Fzu90O7wGez3hmJpnBQv8OhwYmcFqs1Zt4MuoFSWO8zCu7xKfJeosFC+7yO5Tm5jFSKlXhAqs15FUP4MEoQyMiM1XL2by4O+y+jW5kdoGzYmFMe80WxO+7a1Btu4N8EDDd7xxV1xvTSMk3hKNhO9344e9mmd26dyrm8r48du2qZy+a8VukxKBnVW6ZWYnCcnjUVYA.Vas0.PRIkT0JXzye9y2LskHzrGbud5oGUTQE057HIIo02JT8uAn0e+vG9v.PDQDQSR9PahJpnPRRhUu5USpolJu4a9lzyd1SrwFapwpfQUEWbwQbwEmFS6sdq2B8zSOtxUthFSeNyYNTd4kWuyiBO73Ye1mk0rl0nwzF4HGox4wp05V2ZhLxHI93imjSNYkoOtwMNJpnhp14L.7LOyyPaZSa.fYLiYPVYkE6ZW6h92+9iSN4jxWtZRSZRjYlYx4O+4IpnhByLyLN3AOH+xu7K030Y2aZ.f4laNAETPzyd1SrvoEo...f.PRDEDUN+4OOIjPBZzPtUudxM2bIjPBgTRIE1912dMtuwFargILgIfUVYE+3O9i7S+zOUsqIcyM2XvCdvHIIwAO3A4rm8r.UVMhBHf..fV1xVxLlwL3a+1ukTRIE.nG8nG3u+9i4laNG4HGgjRJIJqrx.prJQEczQygNzgvImbBu7xK1291GIkTRnmd5gu95KO0S8Tb8qecNvANfN8BN015q28t23s2dyl1zlnzRKE.LzPCYZSaZbricLtzktDSbhSDCMzPrzRKYFyXFb5SeZ94e9mInfBh10t1wN24NYRSZRzgNzAN9wONIjPBJUWpFS5WSbyM2Hv.CDKrvBNyYNC6cu6sFOWAp7yrGP.APqZUq3hW7hrm8rGkyMb0UWYPCZPricrCBN3fwUWckScpSQrwFKVas0LoIMIZUqZEm5TmRiyyaHm2JHHzznyctyzoN0IRN4j4i9nOB.V7hWrx0wZK3dscOkwO9wirrLqe8qG.ryN6.fibjiv2+8eey3VfPU0rEb+HG4HwKu7BKszRjkkIu7xiEsnEow7LnAMHF1vFFFarwHKKysu8sYUqZUje94S3gGNO0S8TXjQFA.EUTQ7EewWvoN0oz47fd5oGSdxSFO7vCzWe8ozRKk3iOdRHgDz4zn8su8J0crN1wNRKZQK.f.CLvZsdPWSbwEWvLyLqdU0dDdzvsu8swO+7SqA2WRIknTEx.vImbhgNzgxst0szH39HiLRJrvB0Zv8CaXCSoTRBIjP3F23FrqcsKBKrvnKcoKJAlOlwLFJszRUpKjRRR3iO9ve7G+AyadySq486MMryN638e+2GCLv.jkko+8u+DczQy+3e7OHiLxPY8TQEUnbMp81aeMFbuYlYFaYKaQYefWd4EQEUTDSLwnLOKXAKfALfAn72AFXfb3CeXV4JWI8u+8G+82efJaiCgDRHjd5oSJojBuxq7J3iO9.TYg.LfAL.twMtAO2y8bTQEUfM1XCCcnCk.BH.L0TSQVVlzSOcN1wNFaYKaAas0VjkkQRRhQO5QyZW6Z4fG7fZc6.nNWeADP.LnAMH95u9qI6ryF.L0TSYnCcnzhVzBt0stEgDRHHIIggFZHgDRHXpolxO+y+LibjiDmbxIBKrvvLyLCYYY5W+5GQGczDczQiJUpZTou17xu7Kie94mx1iu95KicrikXhIFs9kld9m+4YDiXDJye+5W+HhHhfm64dNt8suM93iOLzgNTF3.GHlat4.Pe6ae4Iexmjt10thd5oGRRR3omdRO6YOUphYMjyaEDDZZzidzC.3+7e9OZLc0E5fyN6rFOqRa5Se5C1YmcbricLt8suMPkwPAv0u90I3fClV25VygO7g041dlPCSyxfXkyN6LAETPnRkJ14N2I6cu6UoDlTyO+7iQO5QijjDG4HGg8t28hwFarR0qoCcnCjRJoPrwFKIlXhHIIwTm5ToUspU5b9HlXhgd26dSlYlIG3.GfBKrPBO7vwFarQmVdKszRjjjTBlYZSaZbm6bGfJK40FhgO7gC.e629sU62VyZVCu669t75u9qqQ8rV3QCwEWbXjQFQHgDhxz5RW5BVas07S+zO0nS+wN1wxUu5UAfvCObl1zlVMNulZpob1ydVhHhHXbiabjVZogqt5JgGd35z5Z0qd0nu95yxW9xYDiXDr7kubzWe8YUqZUZLeFYjQDarwxnF0nTpekZiQFYDImbxL1wNVFyXFCW7hWDGbvAlxTlB.DTPAw.Fv.3pW8pDQDQPDQDAImbx3me9w.Fv.3i9nOhm4YdF.3G+wejvCObhKt3HzPCEe7wGRO8zYbiabLpQMJNzgNDsoMsgEtvEpQdvDSLgUspUwHFwHXSaZS7Juxqfs1ZKwEWbDVXgwTm5TQkJULm4LGLyLyz51Q8Y8UStxUtBgGd3TRIkvMu4MI7vCm29seakeWRRhRJoDhN5nI7vCmCbfCfYlYFKYIKoII8qpPBID7yO+HiLxfnhJJFyXFCG4HGAas0VlzjlT0leIII72e+I6rylwN1wRXgEFG3.G.SLwDk6soVIkTBQFYjLtwMNxO+7wM2biqd0qR3gGNie7iGUpTQe6ae0XYZrm2JHHzvz4N2Y.TdFiZpCB2M2bqNSiYMqYgrrrFkxu5tu6ku7ky+7e9OYBSXBrwMtQ9vO7Cqw5quPiWyRv8OwS7D.vgNzg3G9gef3iOdV5RWpFyi5R9YgKbgr8suchO93YAKXAJ0Sq0u90y69tuKIlXhDWbwoT+y8vCOzo7fQFYDt4lajSN4vJVwJHt3hiW+0ecjkkq1CgpIpqBDETPALpQMJrvBKXCaXC.UF3e8kQFYDOwS7Djc1Yq7VspS+LyLSN6YOK24N2Aqs1Zl8rmMsqcsqduNDdvIt3hixJqLhLxHUl1y9rOK.MaM16ZRYkUF+e+e+eTRIkPAET.ye9yG.dxm7Iqyk0LyLCqrxJN4IOIIkTR.UVeIuvEt.Vas0nmd+uaajWd4oQ0ColHKKy7m+7ovBKDUpTwK+xuLxxxJA2otT4m+7mOEWbwTbwEyq7JuB.Jkpr1n92l27lGETPATVYkw+5e8uPkJUz8t2cMl2Se5SqwKY08t2cxKu73i9nOBYYYxJqr3K9hu.IIopEzYCY80XrrksLt4MuIUTQE7du26QAET.coKcoIK8UafCbf.U13ayKu7n3hKlUtxUxl27l4Lm4LUa9kkkIpnhhIO4ISgEVHxxxJmaeuEHwm8YeFpTohBKrPN8oOM.7AevGPEUTA4me9boKcILv.CznJq0XNuUPPngScgdpNFL0T+0Aqq3Q71auoMsoMZTp8.Xqs1BTYumyK9huH+y+4+je+2+cr2d604BrPn9qY40lNxQNBidzilHiLRBN3f4JW4JryctSxO+7UlGyLyLt0stkFc6dUsdU10t1UhN5noEsnEZbyecsgy5ryNCT4IVpq6Wp4pqtpSog57lUVYEd6s2bzidTt90uN.J0u15C00k3e3G9AMldrwFqFMd1vCObBN3fI7vCmO7C+v585Q3AiJpnB9ke4WvWe8E6s2dxImbvCO7fqd0qVsFYays6bm6nw0S4me9TRIkf81aectrpCrsu8surm8rmp86t5pqbgKbA.cevTqvBKTidbkRKsTJnfBTJUmt10tB.6ZW6pZKq5qk0FGczQJszR03dKPkOPxAGbPiokYlYp7+kjjTtWh11F8vCOz5Wao9r9Znjkk4hW7hZLsLyLS5Tm5T0Z6FMVp2dt6cuqFq+u4a9lZbY5W+5GyXFy.arwFMppY2ad6u9q+R4+q9k+p50AZqKWswbdqffPCWFYjAt6t63niNpb+c.kq8T29lpI+i+w+nZkZO.IlXhjQFYvN1wNTt1d9ye9ricrCc5qAHzvzrDbeIkTBKZQKhwLlwfKt3B8su8k9zm9vK+xuLETPAJyWMUZe5omdLsoMMLzPC46+9ume629MbzQGI7vCWiRMr1ntd.e7ie7p8PZcsGKQ8ar1st0MJrvBY6ae6JCfTU8gg5Je80WpnhJ3G+werVmuDRHABN3fU9xABO5XKaYK3qu9xTlxTH0TSEIII9zO8Sqw4W84op0TE718lt.nu95qScejpC.6u9q+RipOlYlYFEVXg0Y8tTaLzPC05zTmet6cuKlZpoJMjqptNu2.cqpBKrPsNntYhIlTqMNc0Ojo7xKmMu4MqLc80WezWe84XG6XM50WUGOJz1wiZhjjDFarwZD7qIlXBxxxZD3aCM8qpBJnf50fhWqacq4Ue0WkxJqLRJoj3hW7hb26dWlyblSCZ8euZLm2JHHzvcoKcIF7fGLctycVif6cxIm.fe629sZbYGv.F.1XiMjTRIoT0kUKkTRgLyLyp0n3yJqrTpkGBM8ZVpVNPkkn2m7IeBKbgKjcu6cijjDO0S8TJ+dwEWLst0sVqAq6ryNiIlXBG6XGicu6cyEu3EUNASaJszRoksrkZLsqcsqATYI8ekqbEM9WUKQoZSwEWrRIzuoMsIjkkU5y5qZOcSW5RWXcqacrt0sNF8nGsVSKmbxIrzRK4RW5R0Yu1i6t6N.U6hDgG9kUVYQ5omN8su8kPCMTJnfB3W+0esZym5WbTciXBprKCSWGfxpo5DtZVXgEZbMi2d6M5qu95Tf4W3BW.YYYzSO8T5smhKt332+8eGiM13FzWsxHiLRisUWc0UL1XiUtVTc.7W8pWUY8Ee7wSYkUVs9B8W5RWBIII71auUlls1ZK1ZqsJ6iqI4latHKKyAO3AUVmG8nGsVeAKcY8cqacK.TZzsPk8FQZSMETdUqi4VYkUzt10NkO0cSQ5euaOp6IhfJqire3G9gJswgpRcCdN1XikUrhUvt28taPmOTSZLm2JHHzvotpyU0dePiLxH7wGenrxJS4KepsAsJ08C9ZqG0YwKdwr0stUMZmhFZngz912dc9K+JT+0rTx8CbfCjtzktvgNzgn3hKld0qdAfFcwbG4HGg.CLPV5RWJwGe7byadSF4HGIexm7IbsqcMJu7xo6cu63hKtPu5Uunm8rm035K4jSltzktP3gGN+0e8W7G+weP94mOomd5z0t1UhIlXHgDR.iM1X72e+4xW9xbfCb.cZa4bm6bz6d2a7wGevDSLgPCMTpnhJznp0nt2e.nZ84qpEVXgAn8FR67m+74O+y+jqcsqgat4lxCpqqR3W3gSae6am4O+4iEVXgVqlIPkklQ4kWNt5pqrvEtPtzktjN0kt9a+1uQm5Tm3Mey2j8rm8PhIlnVmOIIId629sYu6cuXhIlPvAGLxxx5TO7jrrLm5Tmh9zm9v68duG+vO7CzgNzABLv.UZj7MDKaYKi8u+8SEUTACYHCA.9xu7KAfcricfu95KKe4KmDRHAxLyLY3Ce3z5V2Z1zl1Dm3DmPqo4N24NY.CX.7xu7KShIlHETPALjgLDjjjpys0csqcwzm9z4i+3Ol3iOdzWe8IrvBCiLxHktY2Fx56XG6XDQDQv3G+3oUspUTVYkob8eUkUVYQG5PGXtyctjXhIpQcb+oe5mlNzgNPVYkECaXCC80WekdPolhzWsu5q9JFv.FfxHTbAET.AGbvXgEVvu+6+d0le0cMopew0V0pVwvF1vp08y0GMlyaEDDZ3xHiLHojRBu81aV0pVEG4HGgvBKLLv.CXKaYK.UVvqqacqibxIGl7jmLPk85gspUshidzip0ZzvW+0eMKYIKgMtwMxm8YeFxxxLxQNRL1XiqW8bgB0OMKA2afAFPu5UuTF0UKu7x4zm9zJOX.PoOOt28t27zO8SqLekUVYJklVfAFHuvK7B.UVxdcsqcUqk58t10tH5nilfCNXfJqZDm7jmj0u90yK7Bu.8nG8PoTCqnhJz3SNUW1111Fsu8sGO8zS7zSOohJpfMsoMoQoUUW8AyRRRzktzEJrvBqVKQGprgrnNuqN8NvANfxaRK7vM0mSp97fe3G9Al8rmMFarwZz0PduUqh0t10xblybvWe8Ee80WRN4jU55IqZ5UU6ZW6h.BH.5bm6LScpSkDSLQsNeYkUVnRkJF0nFEPkUEs2+8eetzktjV2Ft2zXIKYI7lu4aR26d2UtIdt4lKKdwKVm2uTU2912lLxHCkFydIkTBacqaUoqsM4jSlku7kyK8RuDgFZnJ4o8rm8TsAyspdOfTRIEd8W+0YdyadJuvfJUp3y+7OuNevQbwEGVas0LhQLBF+3Guxxtl0rFkdHq6ktr99se62HwDSj.CLPkftOzgND96u+Zre9y+7OmYMqYQ.AD.VYkUJAeKKKy28ceGCZPCBIIIJqrxHwDST4kpZroeUkd5oyq9puJKXAKfAO3ACT48g+7O+y0ZUS5xW9xjPBIPPAEDOyy7LHKKy9129TJziZhtNFiTeOuUPPnoyJW4J4ce22E2byM5d26NxxxJ0fB.s9rooLkofrrLqacqSqo4wN1wXyadyLkoLEkd3MYYY99u+64C9fOnYdK5uujZW6ZW8ZzAwc2cmyctyA7+55jzF80WebvAGPVVtV6OS0We8wYmclRKsTRKszz3jFIII5XG6HokVZMpg+bSLwD5PG5.EVXgb8qe8Fz.hRKaYKwZqsVo59zTqMsoMXiM1PAETP01OnMW9xWtYIeHT2p50.MEryN6nfBJnd0NNL2byorxJSqMJwXiMVtwMtASe5SGKrvBrvBKznwjVe4niNRN4jCEVXgM3zPMyLyLZQKZQslervBKvRKsrFCvtlXt4liwFabCpwKqtutWWFX5z00mjjDN5nijQFYTq2+xDSLgRJoDpnhJX8qe83jSNwHFwHT9z00TCYqgj90FKrvBL0TSqypyDT4WqzAGbfLyLyF08lqpl5yaEDDpY01ywLyLyvCO7fie7iWspcmgFZXc16nUS5d26NFYjQb5SeZw.SWSfZ6XXyVmLZ4kWdc15pUOe26H0pZxxx03uUenRkpFcI+bm6bml05.+MtwM3F23FMaouvCupuAwBnQCSu1je94Wsd1k5qlxAajBKrv57kDZn44BJn.cd+x8JmbxoIe8IKKqS2CrlZf+kVZo05x2XS+6U8Y+dEUTQy5fPSSw4sBBBMLEVXgJcCx2qFZf8Ps2nbEZZIFAADDdLSlYloN2nwEd3RZokVM1tcdbm37VAAAglFMpf6Kt3h04d2CglNZqpXHHnVLwDyC5rfPCz8NB.+2IhyaEDDDZZzn5JLq5nPlv8Oh86BBBBBBBBBZSipj6U2GkZkUVIJA+6CJt3h41291h9FVAAAAAAAAAspQWm6yKu7DAaJHHHHHHHHH7PflsQnVAAAAAAAAAAg6uDA2KHHHHHHHHH7XhFzfXkffffffffffvCNMoChUMkiNmBBOpoodDpUPPPPP39IwywdzWsUX6hpkifffffffffviIDA2KHHHHHHHHH7XBQv8BBBBBBBBBBOlnQ2O2aokVJFDqDzfXv1RPPPPPPP3AiFUv8VZokz1111lp7hviIL1XiUNuPDfufffffffv8OMppkiUVYUSU9P3wPhyODDDDDDDDt+pQEbunp3HTaDmeHHHHHHHHb+0C8MnVCMzPjjjZVWG5qu9nu952rtNdXw.G3.IlXhgwN1whs1ZaCJML1XiIzPCkvBKrl3b2ilZaaaK8oO8AarwlZbdrvBKnO8oO3niNdeLm8vGiLxH93O9iYricrOnyJZPWyWaXCafksrkceJWIHHHb+mGd3ASe5Sud+7pt10tR26d2alxUB0GM5FTayImc1Yl27lG6d26lu669tls0yhVzhnksrkLu4Muls0wCCl8rmMcsqckRKsTLv.CvWe8kUspUw0u900ok2XiMlINwIRu6cuUdgq3hKtlyr7iDd5m9owe+8mjSNYl0rlkVmm4Lm4f2d6MojRJLyYNy6y4vGdnmd5gc1YGt3hKJSatyctjat4xV25Vq0kUWmu5hkVZIKXAKfDSLQNzgNTMlutWFarw3niNhc1YWiZ8KHHH7vnVzhVvl27lwTSME.BKrvHiLxfoO8oirrbMtblYlYr7kubbwEWnrxJiQNxQd+JKKTCZ1K49lhRcWWRil6R2upzSOsuaqlldUUW4ScY6PWVO2K6s2d5ZW6JImbx7hu3Kxm7IeB5qu9L9wOdcNMbzQGoO8oOjUVYwcu6cq24gG24ryNi0Vac0ltd5oGd4kW.fJUptemsdnmu95KCZPCpIa9pKVXgEzqd0K7wGepWKWwEWLSYJSgoLkoznyCBBBBOrYYKaYXpolRbwEGwDSLbpScJryN6X1yd103xz6d2a9zO8SwEWboVeA.g6uZ1J49nhJJ71auQe80mxKubNzgNDey27MJ+9ZVyZ3G+wejXiMV.HjPBgPBIDV3BWH1au87BuvKnDna3gGNiXDi..V6ZWKojRJ3kWdQTQEEW9xWFWbwEjjjH6ryl29seaJnfB.prD4Kt3h4se62F.Ze6aOyadyiu5q9J9ke4WXtyctzgNzAzWe8QRRh24cdG.H0TSk0rl0njWiIlXvAGbfSdxSx.Fv.vPCMjhJpHl+7mOd3gGLwINQLyLyPRRhRKsTNxQNBe8W+0Zrs96+9uSm6bmwbyMmadyax129142+8eGnx.5m0rlkRoFd4KeYbvAG3W+0ekcric.TYoMN6YOaryN6PRRhBKrP1zl1D+4e9m5zwifBJH.3+7e9OJ6ugJCHUW8W+0ewpW8pIkTRg4O+4SKZQKz4k8uKd1m8Y03bG.F4HGYM9RaCdvCl9zm9fjjDm6bmi8rm8n7aAETPzt10N14N2ISZRShNzgNvwO9wIgDRfhKtXMRmgO7gSu5UuPkJUb3CeXRJojpw7n5z8PG5PDd3gikVZIqbkqD.ZW6ZGCYHCAGbvAN7gOLG9vGlxJqLkk0RKsjvCOb5RW5B23F2f8t28xUu5UAfV25VSjQFIwGe7jbxIqrLiabiihJpnp8UdZYKaISbhSDCMzPrzRKYFyXFb5SeZ94e9mqWym81aOCZPChm3IdBN4IOIG5PGh7yOests28t2cF1vFFPkeB4YLiYvd1yd3F23FJyS+6e+YPCZPnRkJRHgD329seS42BN3fI2byk8u+82f12OoIMIxLyLI2bykPBIDRIkTX6ae6.U9ovCHf.nUspUbwKdQ1yd1iRuMkqt5JCZPChu7K+RBHf.n6cu67S+zOw2+8euFoujjD93iO7TO0SQwEWLae6aGO7vCr1ZqUVOPcebVPP3uW5bm6LcpSchjSNY9nO5i.fEu3EyN1wNH3fCl268dOstbO6y9rnmd5wxW9xYZSaZ0Z0SU39mlkf6CLv.wWe8kBJn.NwINAd5omDXfARlYlIG8nGEnx53ZUCNrUspUXjQFgd5oGYmc17se62hM1XC94mebwKdQkfXyJqr..SM0TLv.CvUWckye9yiYlYFcricjYO6YqDnRKZQKnjRJQYcXpolhQFYDlat4.vAO3Ao0st0DXfAholZJe629s.PFYjgFaOVYkUXkUVQ.AD.YjQFboKcI5Uu5E.Xmc1Q94mO+3O9iTRIkfO93C96u+jat4p7fWiLxH5YO6IokVZbtycN7xKuHxHijW+0ecfJC9oqcsqbyadS9i+3OvKu7B80WeM5sYdkW4UvbyMm+3O9CxImbvau8lXhIFdoW5kzoiIpuf6RW5R3s2di81aO4kWdXokVhAFXfN8f8BKrPRIkTzo02eGc6aea7yO+zZv8kTRIUqccr90udb1YmQVVFIII70WeYHCYHJUsmQNxQhSN4DgEVXXlYlgrrL8qe8iniNZhN5nU9J.e7G+wXmc1QIkTBFZng3u+9y2+8euxK0duTmtQDQDXngFpbMRfAFHu3K9h.frrLd6s2L4IOYl7jmLUTQEzt10N1vF1.FarwTbwEiwFaLCYHCg24cdGN3AOHN4jSLzgNTt0stkFA2GYjQRgEVX0Bt2VaskPBIDjjjvPCMjPBIDL0TSqVv8017M3AOXdgW3ETxy8u+8mm64dNhIlXHyLyrZa68t28Fe80WfJulHjPBgyctyoDbeO5QOvau8V4XRPAEDu8a+1JWKGQDQvctycTBtu9tueLiYLTQEUfQFYDPkuXx129144e9mWo.LTebNhHhfm64dNt8suM93iOLzgNTFv.F.VZokJaqyblyjwLlwnj9uy67NzoN0IkzIf.B.UpTggFZnRv800wYAAg+9oG8nG.+uB.Tse9m+YBJnfvYmcVi6qqV7wGO+7O+yjWd4wzl1ztejUEzAMKUKG+82efJCHcG6XGrzktTfJK0KcQd4kGIjPBJk.1e7G+AIjPBjPBITsp0vu+6+NevG7Arl0rFxN6rwAGbPmabrm9zmlDRHAJnfBnzRKUYcb9yedsN+wGe77lu4axN24N4UdkWA.1+92OKaYKiu8a+VRLwDUBrS8EJUcaZUqZU7Ye1mQJojhFMl090u9Q4kWNKYIKgu3K9hpEDjWd4EVXgEjTRIwF1vF3q9puhO4S9DLxHiz4FuhEVXAxxxXjQFw3F233JW4Jb4KeY.DuocSj3hKNLxHiT9pH.zktzEr1Zq4m9oeRi40EWbA6s2dNwINAgEVXLlwLFRO8zwYmcF6s2dk4SRRhRJoDhN5nI7vCmCbfCfYlYFKYIKAnxfUsyN6HojRhQO5QS3gGNomd5zu90uZMuJIIw0t10XBSXBL5QOZr1ZqYNyYNnRkJl5TmJgEVXrm8rGrwFaX9ye9.v3G+3wXiMl+0+5eQDQDASdxSlhJpHF7fGbCZ+0UtxUH7vCmRJoDt4MuIgGd3ZMn3ZZ9r0VaY1yd1TRIknDb767NuCFXfAr5UuZstN+rO6yHlXhAnxGZEd3gqwwFyM2bV9xWNiXDiP4Z4ILgIn0zpgtu2HiLhXiMVF0nFEyd1yFIII72e+I6rylwN1wRXgEFG3.G.SLwDF9vGd0V9ILgIPjQFIm4LmASLwDkWVIpnhhN0oNwUu5UYricrL5QOZ9ke4WTp+r.5zwYAAg+9oycty.n7kXUK0TSE.byM2z5xs+8uew3YyCgZVBt2BKrfBKrPkRCtvBKjhKt3lkpwwe7G+gx+W8IgMWM3s6M.MnxpovBW3BYcqacrt0sNkuZPUefJfFuwa5omN5omdJyiwFaL4latJ+9oO8o0XYUeQmO93Cqe8qm0u90yzm9zA.+7yOcJuq9Xwjm7jQO8ziO7C+PLvfJ+vM2aU7PngIt3hixJqLhLxHUl1y9rOK.rsssMMl2+7O+SF0nFEKcoKEYYYToRkRoC6t6tqw7trksLt4MuIUTQE7du26QAET.coKcA.kWj0ImbBGczQpnhJHlXhgnhJp5L+t3EuXk1NwS9jOIRRR7we7GSVYkExxx7AevGPQEUjxKPpdc4iO9PKZQKTBFcAKXA02cUMI71auQRRhst0sxe8W+E.jXhIxu+6+txWBr9JkTRQoPE9tu66nnhJpFe42F5997xKO1zl1DkVZo.UV54QEUTL4IOYJrvBQVVV47k6sA99Ue0Ww8c8QbR...H.jDQAQUu6cQkJUr4MuYf+WUtySO8D.l+7mOEVXgTZokxxW9x03qWpKGmEDD96G02mScsiPsryNafJqJeBO5nYoZ4HIIUsp4Q4kWdsVh5FZngMn0UUCLU8CKqozpwzuqWZokp05w6zl1zvd6smicriwYO6YIu7xi4Lm4TsF8ZQEUTsl9UsgnbueZb0AgusssMt4MuoF+VN4jiNk+yO+7QRRB2c2c14N2IEVXgXgEV.TY0IQnwqhJpfe4W9E70Wewd6smbxIG7vCO3pW8pU63FTYIvN7gObrzRK0nN4W0+urrLW7hWTikKyLyjN0oNgjjDm3Dmf+7O+SbwEWXiabiTRIkvEtvEXCaXCUq5kUUxxxJsME3+8BEyd1ytZMdJ0uD5V25Voe8qe3qu9hu95K4me9JeMI0W6c+j577IO4I0X5W5RWht0stgGd3AG+3Gudkl2aU44l27l03nvcCceu1Jkq90u9wLlwLvFarQi6SdusUiKcoKo7+UWBalXhI.PaZSanjRJoZur9st0sTdvstbbVPP3uexHiLvc2cGGczQtvEtfxzU+kjEUI2GszrDbeQEUjR.KxxxXngFhYlYlFA3TQEUPaZSaT96N1wNVszQ8KHXokVViqqt0stwgO7gA9eMNT0csiETPAzpV0Jk4sm8rmZMMJu7xavubgyN6L4jSN7u+2+a.TZbj0GkTRIZTMcTWe9UK0TSEO8zSLwDS3JW4JMn740t10vEWbgabiavO7C+.PkMvXQu2RSqsrksfu95KSYJSgTSMUjjj3S+zOsZyW3gGNSXBSf7xKO1+92OolZp3t6tWsdvEIIIk53tZlXhIHKKq7BguzK8R3jSNwvF1vn+8u+zqd0K13F2HQDQD5bcnVcI3Ge7wS5omtxzMyLyTdAxbyMWhJpnne8qeDXfAR+5W+HnfBhN24NqQW.58Vh4MW8jUpyyVYkUZjmUe+Bc8EeanjkkaR1225V2Zd0W8UorxJijRJIt3EuH28t2k4Lm4TuxO4latXkUVggFZnFurUUa6N5xwYAAg+94RW5RL3AOX5bm6rFA26jSNAfFcr.BO7qYoZ4bxSdRjjjXAKXAzm9zGkOa+u7K+hx7jSN4PG5PGvO+7iwO9wSqacqqV5ntTzdxm7IwWe8kt0stUs.Gb2c2IzPCkHiLRZaaaK27l2TIPnKcoKgQFYDibjij.CLPktiv6Ut4lK5qu9LwINQbyM2znNOWWtwMtAVas0zm9zG72e+qw5mas4jm7jnu95yhW7hYLiYLDd3gqwu+S+zOQokVJiYLignhJJr2d6o+8u+rvEtPbvAGzo0QBIj.xxxXkUVgGd3ASYJSAiM1XN0oNU8Ju5kWdQngFpR.CgFZnLjgLDkutve2kUVYQ5omN8su8kPCMTJnfB3W+0esZy2S9jOI.rfEr.V+5WOwEWb0XPvU87AqrxJZW6ZmxWawYmclvBKLxN6rYiabi7rO6yxYNyYvPCMrV6y1uWm3Dm.nxtsy3hKNk+kc1YqTRx8su8kfBJHN9wONqZUqhHiLRJnfBnCcnC.+uOeaUauIVas05zWLSWqBMUc9TmmG5PGpxzjjjn28t2HKKq0F+UUotg02P0Tsue.CX..PrwFKqXEqfcu6c2f54ZT+ELVwJVgxf+2bm6b0X+utbbVPP3ueTWcfiHhHTllQFYD93iOTVYko0Nn.gGd0rDQ127MeCN6ry3jSNozmPekqbEhO93UlmCbfCv3F23X7ie7HKKy0u90o8su8ZT8TJqrxHwDSj.BH.k5w5ZW6Z0nzqyKu7T5Z6JojRT5Bm.3PG5P3gGdnTmTSN4jwYmctZkn1W+0eMsu8sGe7wG7wGeH6rylW60dMcZaM1Xikm8YeVksyabiafgFZX0VGZqT7Tust8sucZSaZCcricj1zl1v0t10nicriTd4kqreXcqacDSLwnTkHTu8pqAAnRkJ9zO8S4oe5mVo95md5oqQ2imtXjibjZ7kTTuu+W+0eUi1Mvems8sucl+7mOVXgErqcsKsNOW4JWgt28tyK+xuL6ae6CO7vC71au0579zO8SSG5PGHqrxhgMrgg95quRitV8HI3nF0nXW6ZWnu95S25V2n7xKuZUmmZyINwI3t28tLjgLDrxJqT5Um7vCO3bm6br+8ueF8nGM8rm8j.BH.9tu66nScpSXlYlobS+TRIEJu7xwUWckEtvExktzkz3AE0jrxJK5PG5.yctykDSLQNyYNiNMeG+3Gmae6ay.G3.wXiMlKcoKwS8TOEVYkUbjibjZb8kQFYPYkUF8nG8foO8oSbwEWCppo0Tsu+rm8r.n7xfspUsR45p5issssgO93Ct5pqr6cuakoqRkJkW9VWNNKHH72OYjQFjTRIg2d6MqZUqhibjiPXgEFFXfArksrkGzYOg5olkf6KqrxX0qd0Xt4liCN3.olZpUqNmmTRIQRIkDN4jSjVZoUieB6XiMVk9BesYqacqjSN4PKZQKpVcBKyLyjEsnEgCN3.4lat0X8dO2byUoG8QaT2HY0lye9yy7l27vQGcjacqao05S68Npk9ke4WxW9keoxeWQEUvZW6ZQO8zSodw2wN1QM56su5UuJ++9+8+CqrxJZSaZC4lat06foO1wNF+5u9qzwN1QxJqrpw9B7ZyBW3Bq2Kyi6Tetq5WV6G9gefYO6YiwFarFu7TUqJMaaaaCO7vCb1YmY5Se5TVYkwQO5QwGe7QiqEjkk469tuiAMnAozVVRLwDYm6bm.v+8+9eoacqa3me9ozKvTTQEwa7FuQ8Z.EozRKkYMqYwpW8pwKu7R4EM9i+3OT5Yddq25s3Mey2jd1ydpTE2xJqrXQKZQJoyZW6ZYNyYNJuDZxImLFXfAJ4Eskm97O+yYVyZVDP.AfUVYUMFbu1luYNyYxZVyZn+8u+3kWdQYkUFG+3GmUrhUTqauG3.GfPCMTBKrvHszRqFGArqs8gMU66u7kuLIjPBDTPAwy7LOCxxxru8sOBMzP0op1SUmmYO6YS.AD.CX.C.UpTw1291YgKbgJeYTc43rffveOsxUtRd228cwM2bit28tirrLG6XGSiBKP3QCRsqcsqdMjh4t6ty4N24.9e8hKOH3u+9yXFyX3ce22UiFY1ihZcqaMScpSkjRJIL1XiU528WxRVB25V25Ac1qQQc2s4iSp50.MVlXhIzl1zFRKszpV.gqe8qGmbxIFwHFAFZngz9129ZsQMYu81yctycZPuzVUYfAFP6ae645W+5Z8KCYfAFf81aOW+5WuFaHs1YmcTPAETuFIiMwDSnjRJoNCnUaymd5oGsssssVaHq2KCLv.L0TSaR5F2ZJ12qmd5gCN3.YlYlZzC2nqdxm7IY3Ce3DWbwozi+Xs0Vy1111H2byUomaRs553rffviupsmiYlYlozgDHt2vCupsigOxVQoKt3hQVV9wlS7r0VaUFLZTWEZdTOvdg5lJUpT5BWqMkVZo0YuUf5tCxFqxJqrZMOUVYkUm4k5SP1poqMtasMeUTQE060YYkUVSV+ybSw99JpnBc5bgZxUtxUvc2cG2c2cRIkTPVVFGczQjjjTFf9pp553rffveOUXgEVqiz1BO7qQEbu5QoxGDN5QOpxnc6i5xN6rYdyad.nzCC83.Q+meiSZokln6ITPmkUVYwbm6b4EewWj10t1gjjDYkUV70e8WyANvAdPm8DDDDDtOoQEb+su8sqw9.ZgFlGWBrGD8e9MVqZUq5AcVP3QL+4e9m7O9G+iGzYCAAAAgGfZTA2q9SZakUV8.qD7Ed3SwEWL2912VLjTKHHHHHHHbeVitN2mWd4IBhSPPPPPPPPP3g.MKChUBBBBBBBBBBB2+IBtWPPPPPPPPP3wDMn94dAAAAAAAAAAgGbZR6m6apF.eDDdTTS4fXkfffffv8ahmi8nuZqv1EUKGAAAAAAAAAgGSHBtWPPPPPPPPP3wDhf6EDDDDDDDDDdLQitet2RKsTLHV82HhAnJAAAAAAAgGd0nBt2RKsj11111TkWDdDfwFarxwbQ.9BBBBBBBBOboQUsbrxJqZpxGBOhQbrWPPPPPPP3gOMpf6EUEm+9RbrWPPPPPPP3gOM55b+8CqZUqhie7iyN24Na1VG8oO8gPBIDZcqaMpTohEsnEA.QFYj3me9oLeu3K9hTQEUzrkOZLLwDSH3fClNzgNPxImLIjPBTZokVuRi10t1g+96Osrksjyd1yxQO5QalxsO9wQGcDO8zSZSaZCm4Lmgie7iSIkTR8JMlvDl.CbfCjXhIllob4CGBJnfXbiabrnEsHxN6r057XjQFwK+xuLN6rybgKbA9W+q+084b4il1vF1.27l2jEu3E2rj9u8a+1b0qdU1vF1PCNMV5RWJkWd4r7ku7Fc9wQGcjW3EdAZcqaMe0W8UDe7w2nSSgpq497JgGd3gGdf2d6M6ae6iTSM0lskQn4yiDA2alYlgkVZYy55H5nilRKsTN9wON24N2QY5+xu7Kjc1Yimd5IN4jSMq4gFCiM1Xd0W8UwBKrfRJoDbyM2vWe8kktzkRYkUlNkFN6ry7RuzKgjjDkWd43t6tSO5QO3i+3OtYN2+nMIIIVxRVBd5omJSaXCaXTRIkvRVxR37m+75bZ0idzCbvAGpy4KxHiDWc0UV1xVVCJOWeYokVxBVvBHwDSjCcnC0nSOWbwEryN6vbyMuFCteoKcozyd1St8suM25V2pQuN+6.iM1XbzQGwN6rSYZM0mqz4N24F8Wtq6cu606W7slr5UuZL2byIiLxfhJpnljzTPSZ67JgG+zhVzB17l2LlZpo.PXgEFYjQFL8oOcjkkaxVFgle2WBtWRRpQcPd1yd1M5zWO8zqFKwcmc1YLv.CHt3hiu669NM9sTSMURM0Twd6suNCtuwtcpq4WsYHCYHXgEVvd1ydXe6aeLsoMM5YO6IADP.jPBInSoQTQEERRRr5UuZRM0T4Mey2jd1ydhM1XC4latMzMkG6EUTQgmd5IYjQFrt0sNxJqrXvCdvL1wNVdsW60HhHhnIec5me9Qm5TmZxS2ZhEVXA8pW8hBJnfljf60EcricjhKtXlzjlz8k02iCJt3hYJSYJZ7E6teetx8SFarwXt4lye9m+IuzK8ROnyNO1RamWI73mksrkgolZJwEWbDe7wyy+7OO8t28lYO6Yy68duWS1xHz7qYI39INwIRu6cu4BW3Bzqd0Kjkk4Lm4LrksrEk4o8su8LyYNSZQKZA.bqacKV25VmFkh2JVwJTJgnjRJI1wN1gFqm9zm9P3gGNVas0HIIQwEWLabiajqbkq.TY.xSdxSFO7vCzWe8ozRKk3iOdkfc6Uu5EO6y9rnmdU1zCBO7vIrvBihJpHV3BWnNu8FUTQg2d6M5qu9Td4kygNzg3a9luodss5u+9yHG4H4a9luggMrggYlYFkWd47du26or8Ta5W+5Gxxxru8sOLzPCwM2bC.71au04f6ae6aO4jSNjZpoRG6XGUxuAFXfUaeuv+iu95KPkUYq7yOe.3S+zOEKszRBHf.vAGbfzSOcF9vGNlZpoZT8x5XG6HCYHCgcu6cSlYloxzMv.CX7ie7zktzENyYNC6e+6mBJn..3Ydlmg1zl1..yXFyfrxJK10t1EAETPzt10NNzgNDgGd3XokVxJW4JAp7SlFP.APqZUq3hW7hrm8rmp0aG4latQfAFHVXgEblybF16d2Kxxxz8t2cF1vFF.z0t1UlwLlA6YO6Q4Su1t10NFxPFBN3fCb3CeXN7gOb09ZQcoKcgPCMTrzRKYe6ae059Sas0VF6XGKlYlYTVYkwLlwL3Lm4LbjibDlzjlDYlYljat4RHgDBojRJr8sucfJ+pG96u+Xt4lyQNxQHojRRIeXgEVPzQGMG5PGh1291yS9jOIYkUVr0stUJu7xY7ie73hKtvUtxUXW6ZWJGGuWt5pqLnAMH1wN1AAGbv3pqtxoN0oH1XiEqs1ZlzjlDspUshScpSQbwEmFKaccLPRRBe7wGdpm5on3hKlsu8siGd3AVas0Jaip29SKszHzPCkxKub1912N4jSNJoSvAGL4latr+8u+Z7bEc8bQiM1XBN3foe8qejVZowm8YelV2unKmCnM1XiMLgILArxJq3G+weje5m9opUnFt4laL3AOXjjj3fG7fb1ydVfJu+c.AD..zxV1RlwLlAe629sjRJo.T6mOn933t10tTNNt10tVxM2bQO8zCe80Wdpm5o35W+5bfCb.RO8zqwsA0W2syctSlzjlDcnCcfie7iSBIj.EWbw.Zd9mSN4Dd4kWru8sORJojv.CL.e7wG7yO+3t28t78e+2yEtvEp15olt9TMyM2bBJnfnm8rmb9yedRHgDp103d5omLvANPL0TS47m+7DarwpwuO7gOb5Uu5EpTohCe3CSRIkjxuU0yqp51iM1XCCbfCjqbkqv27Meix1rZt3hKLjgLDZQKZA6ae6CUpTw.Fv.3S9jOAUpTUi6WEt+pyctyzoN0IRN4j4i9nOB.V7hWrx85zVf5MjkQ39ilkf6szRKwDSLA2c2cN5QOJt5pqzm9zG9ge3GTBT8kdoWBiM1X98e+2Qe80GWbwEl6bmKu7K+xJoShIlHFarwLzgNzp06rnu95SzQGMkWd4rm8rGJt3hoe8qeZT8chIlXvM2bi+5u9K9se62vKu7hvCObN4IOI4latjVZow29seKsu8sGO8zS9se623ZW6Z0qa3DXfAhu95KETPAbhSbB7zSOIv.CjLyLSk5qttrs1hVzBLv.CXLiYLjWd4wO9i+HcricjV1xVpS4CyM2bk.RlxTlB5qu9TRIknyUmIKszRjjjHiLx..l1zlF24N2gV1xVRqacq048G+cj5Gf5u+9yd1ydTl9F23FYiabiJ+8nG8noksrkZDPUu6cuYnCcnb1ydVMBteqacqXkUVgrrL8su8kIMoIwjm7j4N24NLrgMLkOAZHgDB23F2fcsqcwHG4HwImbhHhHBLzPCUp1CO+y+7LhQLB.PVVl90u9QDQDAO2y8bb6aea.3ke4WVoskHKKiu95KicrikXhIF5cu6sxKvXiM1PHgDBm6bmiTSMUBLv.4EewWTY471auYxSdxL4IOYkfzF23FGO8S+zJyiO93ix5UaZaaaKgDRHnu95i95qOgDRHzl1zFNxQNBiYLigJpnBLxHi..6s2d1912Nuxq7J3iO9nrNFv.F.23F2fm64dNpnhJvFarggNzgx.G3.wBKr.YYYjjjX.CX.HKKSqZUqPVVl9zm9PvAGbM90B7wGeTRGyM2b.nu8su7jO4SRW6ZWQO8zCIII7zSOom8rmJUEFc4Xv67NuiRIrKKKS.AD.pToBCMzPkf6GyXFCkWd4Ja+RRRDRHgvW7EeAewW7E.PDQDA24N2g8u+8WimqnKmKZhIlv+9e+uwLyLSIOGZngpTXHpoKmCnMlYlYrksrEzWe8A.u7xKhJpnzn8lrfEr.Fv.FfFqqCe3CyJW4Jo+8u+3u+9qw4Lomd5jRJoTmmOn93X.AD.lZpoHKKi0VaM25V2hsrksfs1Zqx4Hidzil0t10xAO3A051g5q6BKrvzXeUzQGMQGcznRkJky+p55K8zSmSbhSvl27lwZqsVY8EZngxgNzgznMlTaWepRkJryN638e+2GCLv.jkko+8u+DczQy+3e7OTtm9blybHnfBhxKubkiSgEVXLkoLE.3i+3OF6ryNJojRvPCMD+82e99u+64se62tZmWod6Y.CX.XokVpbc8Dm3D4EewWjKe4KCTYAQDYjQpw4F2912FqrxJ16d2KImbx034GB2e0idzC.3+7e9OZL8e9m+YBJnfvYmctZGuZHKiv8GMqiPse4W9kr8suck2dqe8qe.UVBVlXhIbtycN13F2HqacqiKcoKgEVXgFe93CdvCR7wGuVqpKlZpoXfAFPxImL6e+6W4lgm9zmFnxFimat4F4jSNrhUrBhKt330e8WGYYYF9vGN.jat4RBIj.m5TmB.N0oNEIjPB7S+zOoyaipe3xq7JuB6XG6fktzkBTYobTe1VUKkTRgEsnEwN1wNXkqbkbxSdRcJeXfAFPwEWLcricD2c2chKt3nnhJRIHf5h5R2qfBJfQMpQgEVXgRClq4t8N7ntu7K+RjkkIlXhgO6y9Ll27lGd6s2MpzzXiMloN0oRXgEF6bm6DiLxHdi23M.fwN1wxUu5UAp7qMMsoMMkkSRRhqcsqwDlvDXzidzHIIg+96OYmc1L1wNVBKrv3.G3.XhIlnbcPHgDB94mejQFYPTQEEiYLigibjifs1ZKSZRShO6y9Lk.t94e9mI7vCme5m9Ir1ZqYNyYNnRkJk75d1ydvFarg4O+4CTYPWSZRShRJoDhIlXXDiXD7IexmTqckp+1u8aDd3giJUpH2bykvCObd0W8UU9ciLxHhM1XYTiZTL6YOaBMzPwGe7gzSOcF23FGiZTihCcnCQaZSap1WfyDSLgYNyYxHFwH3BW3BXkUVgIlXBSbhSjQLhQv0t10vJqrhN24NWqGeJojRHxHijwMtwQ94++u8tuCKJt1e7i+do2YEPDKTD6fcQEEH1vBp.pnFwfED0qwndMpQMZzXLlhQMEupwjXL5MQSLd0XLV9FEShWisD6Erifnf.BhBrzVX98G7amKKrKrzhkbd87betlgYNyYl4rybly4y4LYgWd4EwFarDZngxnF0nH2bykN0oNIeMohtFDd3gSSZRSH1XikQNxQxvF1v3jm7jxULuzkM9lu4aH3fCl4Mu4gjjDCX.CPm4yxqrREYwKdwXkUVQzQGMgFZnxUTUgBExqigTFPeLyLyHt3hiQNxQxvG9v4ZW6ZznF0H4JaFXfAR.AD.wFarDVXgQXgEFwEWb3u+9S.AD.e9m+4LtwMN.3+9e+uDZngxt28tqTkGJrvBYpScpDbvAyMtwMXgKbg3jSNwt28tIjPBgnhJJxM2bYlyblXkUVo2iEEJTP94mOicrikPCMTNvAN.VYkUr3EuXsVOKrvBV9xWNAGbvrgMrAVzhVDN3fCbfCb.BMzPI7vCm6e+6SO6YOk6UhJ52mPwi6.iM1XV1xVFAGbvrrksLL1XiY4Ke4.E2K18oO8gzSOcBKrvXHCYH7K+xuPcpScnoMsozgNzApe8qOm3DmfgMrgQngFJ28t2U9Y15iM1XCyctykPBID13F2HJTnPNLDcyM2XDiXDxkMBN3f4y+7OWLMJ+TJM2ySy8KzPSOzpIZ.ptaiveMpUqbulJllVZogjjDt3hK.HOfAu7kur75dkqbEfhugfgHqrxhzSOcZQKZAevG7ALiYLCs1VO7vCfh6h+0rl0vZVyZXUqZUnPgBZYKaY09XSCarwFToRkb28pRkJxKu7jCokJ6w5oN0opR4CIIIL1XiYRSZRjZpoRzQGckJt80zUpJUpjd26dywO9wIwDSD.Cd.492Um6bmiEtvERrwFK1au8zyd1Sdi23MXm6bmDXfAVkRyO4S9DRN4jQRRhMu4MyCdvCLnAZKTb2h93G+XfhKWDd3gSjQFIpToRN8fh6tb.dgW3E.fYO6YSlYlI4kWd79u+6yW9keIm+7mWu6mt28tiBEJ3K9huPNut90udxImbvau8Fn3V5VgBEroMsI4PaXG6XGjPBITkNu.E2SIaXCaPN9e0zhlyYNygryNaTqVMqbkqjbyMW47gFm6bmSNrMzD1LG5PGRdPzqo0YqnJ2+Mey2Pt4lKpToRtAEV+5WOEUTQjUVYwMtwMvDSLQdb3TQWCzLXresW60PkJUTPAEvxV1xz4fNMmbxgssssAT78UhO93wAGb.SM0zJyowJTyZVyPkJU7we7GSQEUDomd57Vu0ao05XHkAzGIII4i2byMWl+7mubOUA+uFN40dsWi7xKOxKu7XgKbg.n0LXVoUYJOr4MuYslYO71auIyLyjO+y+bjjjH4jSlst0shBEJjyW5ya+1uMomd5TTQEwpW8pI6ryll0rlo05btycNsZ7nVzhVP1YmMqd0qlhJpHxLyLYdyad.H2iEUzuOsxJqPoRkblybF4vn4Dm3DDSLwfCN3.FYjQxMPl0VaMcnCc..9vO7CYnCcnbyadS4dOwc2cG2byMJpnhXJSYJDd3gWtGyW5RWhXhIFjjjXm6bmnVsZZW6ZmVWGV+5WOImbx.E+aNMspuvSWbzQGAP9ZkFZBeXM0eq5tMB+0nVa.0JIIo0fuojs9tIlT7tsjwlml+sl+lg3sdq2RNFAadyaNyctyku9q+ZN4IOobKVepScpxzR70jw4mBEJJSkeKrvBkuYYk8XsjuDPkQ94mubnE7QezGATbK7U53eTez7iwV0pVgJUp3a+1uUtEVzTQQA86BW3BLiYLCLwDSvGe7gQMpQQSaZSYlyblb8qe8J8TCVoeIuDRHAbxImPoRkkaHsHIIIGa9Z3iO9vTm5TwQGcTtbIfbKv5latQAETfVWmkjjzZbinKsoMsAn3A7doGz6ZZwYMUlpz8.0st0svUWcsbSe8ozwQrl7eoiS9TSM0x7BQkbbtn42Fkb1wRkJUFTd3d26dx+aM2mK8zSuLosFUz0.mc1YxO+7Ky18vG9P4GfVxkURIkTR3gGdfYlYVM1.dTgBEXokVVlw6yMtwMz5d4FRY.8QkJUZ8xKETPAjc1YK+EvtEsnE.E+xfkllFuQWpLkGJ4uKUnPA1XiM.nU30oQaaaa0au5JIIw0t10zZY2+92mlzjlnUOcTxPuSgBEXs0VWlywokVZnVsZ4iwJ52mZdIfN0oNoy7cKaYKIlXhgcsqcwPFxPjmFRSHgDXSaZSbpScJN8oOMW+5Wml27ly5V25H+7ymXhIFV6ZWqbX8nKkdrHjYlYhEVXAv+6EjK8rEVbwEWE9xyB+0KojRh1zl1fat4lVi4iF1vFBfbihTc2Fg+Z7DYpvTyMK71aukqDiltuQSqEaHJrvB4G+weje7G+QbxImXIKYIDPHj0I8O...B.IQTPTAAvIO4I41291.E2x5Fx.Rshn4A2MnAMPqankSN4HGu5RRRXpolhUVYk75WYOVqpyg9okVZznF0HN5QOJojRJnToRLyLyJSKj9IexmfQFYDIlXh7du26Iu77xKOTqVMlXhIrgMrAjjjjaMwZhyeOOSoRkxULQsZ0bhSbBNwINAyYNygd1ydRO5QO3q+5uFfxDux5q0VUpToVUDPSHAT5JtWQpacqKKYIKQNecsqcMd7ieLyblyTdcxN6rqRcUtlJaru8sOs9MgUVYk7.7TSEmUpToVqSMYndoRkJcl+svBKnvBKrFa+TUYHWCRKszPoRkXpolpUEzqMCggxqrnjjDRRRkITTLyLyzpxpFRY.8QWk8M0TSkmNKe7ieLVZokxCTuRl1kthzkTUs7flWZovBKju7K+R4kqYre7G+wen2sUgBEkowTrvBKjOOpu8WgEVnNC2GiM1X4Wzrh98olm0bu6cO16d2q7xsxJqPkJUxw77W9keIae6amAO3Aiu95KMtwMlkrjkv7l273xW9xLqYMKb2c2YPCZPzktzEZe6aOqacqivBKrpzykhM1XoKcoKzpV0JstWVU8k5EpcciabC5W+5GMsoMUqJpqYVBTWM7XUYaD9qQsZX4nOm8rmkBKrP5XG6HCbfCjPBID7xKujas.n3Gp4omdhmd5obKp3omdRiabiAJtktl8rmMsu8sm5V25JOf+zzpdYmc1b26dWZQKZASYJSglzjlfWd4EScpSk90u9UoyyZZwlILgIfu95qb2oelybFTnPAyadyiN1wNJ2kpm7jmzfOVqIbfCb.fh6J8V0pVw+7e9OAnLyLIZFve5Zdp9hW7h.EGJEsssskfBJHJpnh3vG9v0X4ymGswMtQ4vrnjzTVTyK3oRkJL0TSwImbRdczWnKLjgLD4+sEVXAMtwMlbxImxzxrkWb.C+uV0aW6ZW7du26I204kzMtwMPgBExw3KTbrx+Ye1mIGSyZnYPjBvoO8oAJtL0t28tk+eolZpxsNslv5QyrsCfVylS0Dzj+K43bvImbBmbxI8NG5+WIC4Zfld138du2CSM0TTnPAyd1ytF8KAcIKqXHkEe3CeHN6ryZUwxPBIDsVGCoLf9XlYlIOf7fhagYyM2b4dEQSE3iM1XkS28su8gZ0pKyKlTRUmxCZBgzCcnCIuOO9wOtVuPi9DZngJ+uUpTIt3hKkaurA59bbu5UuPgBExG+UzuO0DVLk9ZvUtxUvbyMG0pUiRkJIjPBAkJUxV25VYFyXF7Ye1mATbX+3gGdPHgDBolZprt0sNF+3GOm+7mGSM0T4m0UYoYBkXJSYJxSLD8t28VtGYDd5hlvKrjScylYlYzst0MTqVs7KnoomYpLaive8pUZ49xqkJfhig6Mu4My3F23XfCbf.E2ZIabiaTdcFxPFhVClGO8zS44w3oMsogjjDt6t6LwINQ4zN4jSlsrksHuMqYMqgYLiYPqacqkeHRQEUjdqTc4MG0mUVYwgNzgHf.BfHhHBd7ieLKXAKfe3G9A7vCOvc2cWdffcqacK4uRhFxwZMgyblyf2d6McsqckW4UdE.3vG9vxw2ugXyadyxybPctyclhJpH1vF1fHl6q.G6XGid1ydx27MeC6ae6izRKM5XG6Hcu6cGIII4WNJlXhAO7vCV0pVE6e+6G2c2c43eszFzfFDJUpj6bm6v.Fv.vLyLSqoVwKe4KSSZRS3ce22k8rm8PzQGsNSGMSafAETPjc1YScpSczph1.rsssMBHf.Xlyblzl1zFxN6rou8suXiM1HW9IojRB0pUSqacqYxSdxr6cuaN8oOMO9wOlALfAfRkJ4hW7hz0t1UZaaaKW7hWje9m+YN4IOIYmc1DP.AfolZJwFarDXfAVggrQkw1291If.Bf4O+4SzQGMYmc1LfAL.TnPwSESgqFx0fMu4MS25V2nksrkryctS4kmat4VoBUQcQWkULjxh+3O9iDYjQxm9oeJ+e+e+e3niNpUELALnx.km29sea94e9monhJRdPA+ce22A.e+2+83me9wxV1x3fG7fb+6eeF7fGL0st0kMrgMH+hEkV0o7vN1wNXxSdx7EewWv9129vXiMlPBIDLyLy32+8eub21wLlwfqt5JImbxLnAMHL1XiKyzgZo8e9O+GlxTlh74X6s2d5Se5CpUqVtbPE86SIIIN6YOKcricjUu5UygO7gwUWck9zm9Pt4lKae6aGas0Vl7jmL4me97ce22wCe3CkqP1QNxQnssssL4IOYF5PGJ6XG6.iM1XZUqZEEVXgkaujTdz7bvANvAxV1xVjCW0LyLSwjzvSgRJoj3Dm3D3qu9xxW9x4nG8nDRHgfIlXh7zXtGd3A+q+0+hG7fGPjQFoAsMBOYTqT4dMsHPIMiYLCs9uOyYNCm4LmQdv6T5X2aSaZSroMsI8tORM0TYFyXF3hKtf0VaM2912tLccXVYkEu669tXgEVfqt5JpTohDSLwxTo5KbgKvzl1zpviqe3G9gxDGxpUqV9KjXiZTi3N24Nk4qjXEcrBH2ZKUGe8W+0rsssM7vCOH1XiUmUJu79ffoVsZd629swd6sGGbvA4PaRn7sxUtRjjjnm8rmL5QOZ4kmUVYwBVvBjas80u90SaZSavUWckHhHBJrvB4rm8rzgNzgxT18G9gefgNzgh+96OEVXgbxSdRsBOgcricPu5UunoMsoDUTQo2J2eyadSN3AOHAFXfLtwMN4uEBZ5UFn33lUS2yqoWsJrvBYKaYKZEJBG3.GffBJHBIjPHgDRf8u+8yzl1zXEqXEz0t1U4VJ8pW8pxyRH4me9L6YOad+2+8wWe8Ee80WxN6r4Tm5TU3LwAT9uvsFwGe7rzktTlyblibEDyM2bYKaYKk623AMG+U0Pgqzoi9XHWCfh+sYu5UuHf.BfbyMW91u8a40e8WuBmJZ0jF5KjSzUYECor3N1wNvUWckd1ydJOcFFczQqUE7KnfBpvx.5SFYjAIkTRxyXP4me9roMsI4Yur3hKNV1xVFyZVyhfBJHfhKOrm8rmxL+rWxyiU0xCPw2G1AGbffCNXF0nFk719ge3GVtwdtjjD+xu7Kz6d2a4wgUzQGsVS0n5xd1ydnN0oNLjgLD4ywYlYl7du26I2CFFxuOW7hWLu669t3s2dSjQFIPw8BwhVzhj+2e9m+4LgILAF6XGqbZr0stUtzktDW9xWlV0pVg+96u7LiUN4jCuy67NUpFgRRRRqqEqacqiSdxSRfAFH1XiMbfCb.Ze6aO8u+82fSSg+579u+6ym7IeBd4kW3s2dijjD+we7GxunolxBkrLQEsMBOYnvEWboR07wsoMsQN7MDCJl+d6uqy5Ak72.kjBEJn4Mu4T25VWtvEtfdGHxVXgE3ryNSBIjP49fSSLwDZPCZP4NXbs1ZqQsZ0U3.m1HiLhF0nFw8u+804LvhF1XiMXokVp2vWvDSLAKszxxLnV0jWSLwD0aO8n46eQsYnxXs0Vi4latVCt0mVTdWC5d26NCdvClcu6cKOim3fCNvl27lIszRiwO9wWs2+5prhgVVrQMpQjbxIWtCXWCoLftXkUVgc1YW41E91XiMXqs1VtUvVWpNkGzLW2WQectWyZVCt6t6DbvAiolZJMnAMnJMPBcxImPkJUk6f5th98IT7.v8AO3A5McbzQGQgBE5cLQzvF1Pdzidjd+PtYnbzQGY1yd1boKcI4uAC.7se62hM1XCgFZnU6WrVnpSeOGCJ92jsssskScpSUleKW5wEjgrMB0NJuqgOQFPsBBOORyLlQE0M14latFzrmiZ0pqv0yPGfsEUTQFz9LqrxpbentZ0pKSE60r7JJ8yLyL041VSJ6rytROni+qR4cM3V25Vzl1zFZSaZCwGe7HIIgat4FJTnPqAIY0gtNuXnkEKuuPqZXHkAzkJpBsPEWtTepNkGpnADrtTPAETkmgPLj8mgbdnhtFTQurRImInpNRKszvSO8j1111Ru6cu4gO7gz3F2XrvBK3BW3BhJ1+TLUpTo0Wm3RReufe4sMB+0qZMfZMzoYQgm+Ht1KHTyI4jSlYO6Yycu6cwEWbgFzfFPxImLqd0qtBCsCgmrRHgDHkTR4Ic13oRSdxSlKbgKfs1ZKMqYMiryNa1291GKXAK3IcVSP34ZUqVtOiLxPdNIV3uWpnYABAAgJmqe8qyK+xu7S5rgPkjluBrBkklIdBAAg+ZUspbultXWoRk0nSYaBO8Ju7xiLxHiZ8vqPPPPPPPPPnxqZGy8+UDGsBBBBBBBBBBBUrmHeDqDDDDDDDDDDDp4IpbufffffffffvyIDUtWPPPPPPPPP34DUoOhUBBBBBBBBBBBO4Ti9QrReIlfveGTdeU3DDDDDDdZm34XO6q7ZrcQX4HHHHHHHHHH7bBQk6EDDDDDDDDDdNgnx8BBBBBBBBBBOmnZ+QrxVasU7EpsFf3K+pffffffffP0U0px81ZqsTu5UuZp7xeqYt4lKetTTAeAAAAAAAAgphpUX4nToxZp7gv+ehyoBBBBBBBBBUUUqJ2KBEmZdhyoOayN6rigO7gSjQFId4kWOoyNBBr10tVd629sq0R+oMsowJW4Jq0R+mzpsO+oQO6YOYMqYMr4MuYZXCaHsu8smu3K9Bw8QDDDpzp1wbeskQLhQf+96u7+8q9puJEUTQ5bcCIjP3EdgWf4Lm4n0xei23MH6rylO5i9nZ07J.lXhITTQEo27nvy2rvBK3S+zOk5V25JurvBKLxJqrXNyYNb26d2Zz8ms1ZKyadyiniNZ9se62pQSaghMhQLBZYKa4eIUrq1h4laNt4laT+5We4kUSeb0l1zlmaCOScc9q1fSN4DyYNyAIIIhKt3nvBKTd+5ryNSLwDSs59WPP34KO0V49SdxSRpolJctycF2c28xccsyN6zYKdamc1golZZsUVTKe3G9gbqacK9jO4S9KY+I7zkO9i+XpacqKW6ZWicsqcw8u+8IjPBgd0qdwZVyZXjibjje94Wis+rwFan8su8jc1YKpbesD+82eZRSZxS5rQ0Rd4kGSXBSfBJn.4k87vw0eUz04uZCctycF.91u8aYqacq0p6KAAgm+YrM1XyRpLaP8pW8HkTRA.bvAGLnswHiLBIIoJ0e6QO5QDWbwQiabiwUWck8u+8q2z3BW3Br+8u+xr79129hZ0p429seCEJTTsxqJTnnbSifBJHd3CeHm7jmrJk9kT5omtAkWEdxnj+F.fgO7gyK7Bu.wEWbLyYNStyctComd5b7iebr0VaoUspU.EWNE.WbwEF8nGMgFZnzrl0LdvCd.O5QOBn3JsOwINQxN6rwUWckILgIPG6XGIszRStbg2d6MCe3CG2c2crxJqnAMnAjbxIyidziHpnhBqs1Ztyctib9Kf.BfALfAvoO8oAfHhHBb1Ymwd6smwO9wiqt5JW5RWB.7xKu3kdoWht0stgJUpH4jSVqic2c2cBO7vI3fCF2c2chM1XqvWZwEWbggNzgxPG5Po90u9jPBIPd4kG.L3AOXZW6ZmVsLomd5IgGd3jPBIPVYkEAFXfz8t2cRO8zYLiYLzm9zG98e+206xAvZqslANvAxK9huHN5nib26dW47YIOG2xV1RFyXFCMrgMjabiaPgEVH.LtwMNZW6ZGlat4nToRbyM23JW4Jk4XqjoU6ZW6HhHhfV1xVxktzkPgBEL5QOZF9vGNt4labqacKsNWUdkCzn4Mu47RuzKQe6aeQkJU3fCNPXgEFW5RWB0pUKeszTSMkwLlwPm6bmI1XiEUpTImFCYHCAGbvAt0stkdOt5PG5.CcnCkye9yK26ilZpoLkoLEjjjHwDSDn36C5qu9x3F23vGe7g3iOd5YO6I1XiM7ce22IuOKuy+5SaaaaYTiZTDTPAQ8qe8I93iWqswVaskQNxQRXgEFd6s2jVZowCe3C0a5YHmazjtCX.CfW7EeQb0UWIkTRgrxJKcd9SiAO3AyHG4HoKcoKTTQEUldlqxb7OvANP5W+5GN5ninVsZZQKZAm+7mml0rlQm5Tm3XG6XDWbwIu9st0slQNxQRu5UuPgBEjXhIVldLt7VmRVl0Ge7gHhHBxM2bqw6cQgmtU5miI7rmx6ZnBWbwkxullkRI+jE2zl1T8td1au87xu7KSCZPCvHiLhBKrPhN5n4m9oeB.lwLlAMoIMAiM1Xjjj3gO7grl0rlxjQ0TQiYLiYTlafMvANPBLv.AfhJpnxDVNevG7ATXgEhjjD1YmcTXgEx91293m+4eVdcpScpCKdwKle8W+U7wGenN0oN.v92+9Ye6aeDZngRO5QOvLyLC.xImbXqacqb1ydV.XEqXEXpolhIlXBRRRxUN3PG5PxGq1ZqsL8oOcpe8qOJTn.UpTwF1vF35W+557b2Mu4M064Ugm7J8ms629sea5PG5.QEUTkoxvlZpoLhQLBhM1X4Dm3D3qu9xBW3BQgBEHIII++uzktT9y+7Owc2cm0t10RFYjAJUpTdc.3q+5ulssssQDQDAiXDiP92NEUTQrxUtRNxQNB+zO8Sb8qecl8rmsbd3C9fO.u7xKF7fGL.rqcsKJpnhjKSe6aeal9zmNyadyi.BH.sx++9u+679u+6C.8pW8hYMqYA.ETPAXlYlQAET.SYJSoLG2ZDXfAxLm4LAP9XofBJf4N24xMtwMXiabiXu81SXgEl71DVXgQjQFIu+6+976+9uyZVyZvc2cG0pUiolZJ4me9LrgML8t75W+5ym9oep7uIUnPApUqlW9keYRJojjOGmYlYhs1ZqVWGd0W8U4l27l78e+2ikVZIJTnfBKrPRIkTXRSZRk43SSZkUVYgM1XibZkQFYfjjD0oN0QqkEQDQ.PEVN.J9ELFwHFgVm6zTtXZSaZDWbwwt10tnvBKT9ZolxJacqaUtEf2wN1AO5QOhILgIn2iqYMqYQu6cuIxHijTSMUfh64yst0spUYfUrhUH+xpZZjhbyMWL0TSYHCYH.Tgm+0k+w+3ePvAGrVGq4latLwINQxHiLvEWbg0t10h4laN4kWdXt4lijjDe7G+wbnCcHcllFx4lF0nFwZVyZzJuBvJW4Jk6QrRd9Cfu3K9Bpe8qO4me9XpolhBEJ3W+0ekUspUUkN9+jO4SvSO8TtLPQEUDiabiiW3EdAl7jmrV4kEtvER25V2z57TJojBSbhST94iUz5noLaN4jCVZokHIIwO9i+HaXCaPmmGEd9ToeNlvydJuqg0ZeDqV3BWHMpQMh6e+6yO7C+.W4JWgl0rlI+2qacqKm+7mmsu8syIO4IQoRkL24N2J093xW9xDczQSFYjAVXgE5bcr0VawDSLgibjiPgEVHAGbvz3F2X4+t4laNlZpoz291WrwFa3O+y+jKe4KKWIeWc0UhO93YW6ZWDczQiBEJHpnhR9uuu8sO16d2q7Knr28tW16d2Km4LmQqyE0u90mqd0qxQNxQjaQLgmO3t6tijjjNqfaAET.acqakSbhS..CaXCi7xKOl0rlEAGbvrjkrDTnPgbk9zPoRkr4MuYBN3f4e7O9Gje94SDQDAt3hK7Mey2HW94XG6XDZngxQNxQpT4YyLyL10t1ECcnCkoO8oSfAFHADP.DarwRXgEFgEVXDWbwg+96ubE90jGiLxHYXCaXrhUrBfh6gLcwQGcj+4+7eRAET.ScpSkfCNXV6ZWKlZpoxU32PoPgBt8suMidzilgMrgUtKeEqXEXrwFyxV1xH3fClksrkgwFaLKe4KWqzzFarg4N24RHgDBabiaDEJTH+RFibjijXiMV.HzPCUmUrujrvBK3UdkWgfCNXhIlXPoRkXgEVvK8RuDAGbvb6aeaTpTobChTQkCbyM2XDiXDjat4RTQEEAGbv74e9mqyYSKyM2b9lu4aH3fCl4Mu4gjjDCX.CPm4yJ6wUIEZngRqZUq3t28tLpQMJBKrv37m+7XokVp05Ynm+0PgBEzyd1SRM0TYjibjDRHgvANvAvBKrP9ERG0nFElat4rxUtR4W9Kmbxg90u9Ut44J5byJVwJvDSLgku7kSvAGLScpSE0pUyrm8rwVassLoWG5PGn90u9bhSbBF1vFFgFZnb26dW7wGepxG++y+4+j+8+9eC.uy67NDZngRFYjQYVufBJH5V25F28t2kW7EeQF5PGJ+1u8a3ryNyq+5utAuNZXgEVHebKpXufvyWpUh49t0stgUVYEW7hWjO6y9L.JSqqrnEsH4+sQFYD1au8zpV0JL0TSM33aL93im3iOdpW8pGN6ry5c8dy27MImbxg+3O9Cl8rmMCZPCh0rl0n05TPAEH2pjkTIWOiLxHdvCd.iZTih1111xgO7g4W+0eE.BN3fIszRiCdvCp0120t1UrwFa33G+3rksrE.3JW4JL4IOY71au4xW9xFzwpvSurwFaH2by0fV2R+Brm6bmiBJnfxT98t28tr8suc.3d26drwMtQlxTlBcu6cmctycVsyyYlYlZ8.8d1ydB.u1q8ZxgLyBW3BYKaYK3u+9yQNxQjaUydzidvO9i+HG9vGlCe3Cq28ge94GJTnfMsoMIGlP6e+6GUpTgUVYUkNOunEsHxN6rK2kakUVgRkJ4zm9zxuP0INwIHlXhAu81aLxn+W6YboKcI4vAZm6bmL1wNVZW6ZWkNeAEecL93iG.18t2Md4kWbnCcH4vr4PG5PLwINQZZSaJ27l2rBKGnYxDX8qe8xuz3t28to28t2koGSyImbXaaaa.E2fGwGe73gGdTotWpgvWe8En3xHZBakEsnEwO7C+f75XHm+KcOvJIIQ3gGtVKayadyzu90OZdyaN.XrwFCT7yVNyYNi7KBTQJuyMlYlYXqs1x4O+4ke436bm6vV1xVXbiabz0t1UhN5n0J8zjOb2c2wM2bi6bm6nUC0TUN9MTZJSLm4LG4x6qbkqDe80W71auM30QiyctyUoaT.gmeEP.AHW91PjTRIw0t10pEyQBUG0JUtWyf053G+35cc5ae6KCX.CnLCDV6ryNRKszpwxK4me9jSN4.Tb3GHIIoywJPIiowRpEsnEL1wNVryN6zJl6swFaLn8ulGD2st0M4tJUC+82eQk6eNvCe3CK2WtrjpW8pGKXAK.2c2cL1XikKSU5wyglVWUCMwKuWd4UMVk6KoVzhV.TbHHTZd3gG.vm9oeJuwa7FDYjQx3G+3IszRie5m9IctMPwcYXIy6ZTduPf9HIIoyJ1W5k2oN0I4++8rm8Tl0uksrkxqeoiw3LyLS81CfUDMgxBf7KGUx3muzw4cEUNPy8MzLVHzHt3hqLUtuzwcdRIkDd3gGxgMUMkF0nFQAETfVkcjjjjCUHvvN+qqY9Ee7wGl5TmJN5niZUACMmO1zl1D93iO3me9ge94GYkUVbhSbBV6ZWa4dLVdma5XG6H.kI7HO24Nm7XSnzUt+zm9zb8qecZdyaNqacqi7yOehIlXXsqcsjTRIUkO9MDt4laTPAEn03A.JtrWiZTiL30Qi6e+6WkxGBOeZdyadUp0Ot3hioMsoUKkaDptpUpbuIlTbxpqGFCEOPxBIjPHyLyjCbfCvMu4MYfCbfzhVzhJ0aNZHzDC7kTIa8NMJckozrdSZRSBSM0T90e8W4xW9x3latQngFpNSCcQy4hMu4MWlAJ6CdvCLnzP3oawEWbTu5UOZdyadYpnfQFYDAFXfbu6cOt7kuLqYMqAKrvBt7kuLm6bmizSOcl9zmtbEB0nzu7nlv.qzC3RcQSYNMLjeS83G+XrzRK4y+7OWqkakUVI25L+4e9mDVXgQe6aewe+8mV25VSjQFI1Ymc7Ue0WUlzTS4cmbxoxcv5U5eKUclgqzrOu28tG6cu6UqiCUpTQbwEmVSWoOoTQkChM1XoKcoKzpV0JspDlqt5ZsZ9pjM1hlXUWibyMW8FVPZXHm+Ks5V25xRVxRPsZ0bhSbBt10tFO9wOVqP2JszRivCOb7wGenO8oO3iO9PfAFHMsoMsJWACMMhToC+FMGi5Zv5JIIwrl0rvc2cmAMnAQW5RWn8su8rt0sNBKrvpRG+FJUpToyy+VXgExOmyPVGAAc4Mey2rRU+KQ8Wd5VsRk6SHgDvGe7A+82eslgAznG8nGxcWulJCou4QXM2rrAMnAUoQyukVZob2S6hKtfBEJz4Ms0UWk5gGdfEVXAG+3GWt0RK8.NTCIIIcFpA24N2gN24NiEVXgNOWH7ruidziRW6ZWYwKdwL1wNVsJKM4IOYF7fGL6XG6fDRHArzRK41291L+4Oefhen+zm9zKS4uRGhZCbfCD3+Mi6ng0VasV+2EVXgzvF1PsVVo+u0kqcsqQ8pW8H1XiUt0hMwDSXHCYHxU9te8qejZpox92+9Y+6e+xC3xt10tpyJ2epScJFzfFDCdvClyctyATbKwt7kubxKu7XQKZQnRkJb1YmwImbR9gEkN7ApLhIlXPRRBiLxH18t2s7xaW6ZGMu4MG0pUWoSSMULqlhc1YWEVN33G+3LpQMJlxTlBm4LmgG8nGQu6cuk6gkZBk73Ry8D6V25lb3f0ktzEsV+XiMVpe8qOcu6cmicriATb3oXiM1HWwwpx4eM2ScW6ZWroMsIf+WXhoQm5TmnN0oNDczQyoN0o.fssssUsdYmqbkqfjjj7zPoF8u+8G.48SI4gGdPaaaaI5nil0st0w5V253cdm2Q93q1n7mF23F2fF1vFhu95qbH+3jSNgSN4j7K.ZHqifftT5dXU3Ya0JUt++9e+uDbvAK2Ek+5u9qzxV1RZTiZDabiajSdxSJO87UXgER+6e+wN6rSmo0QNxQXPCZPLgILANvAN.omd5xuPfGd3AFYjQxs7hmd5IPwuPPIGPRu1q8ZbfCb.BIjPjyOFhae6aSgEVHd6s2z7l2bZe6audiIWUpTQ8qe8o+8u+bm6bGRJojHiLxfibjiPHgDBCe3CmF0nFw+8+9eogMrgzm9zG95u9qES+XOyah26B..bHYRDEDUG3W9keA+82e5RW5B+6+8+lidziRhIlH94me3kWdQAET.ey27MTPAEfZ0pwCO7fnhJJxN6rYHCYH5bJV0RKsjO6y9LN3AOHMoIMAe80WToRkbntkTRIgZ0po0st0L4IOY18t2M2+92mjSNYZXCaHqbkqjidziJOMEVQ99u+6wO+7iksrkwAO3A492+9L3AOXpacqKaXCafSe5SKOMatm8rGt5UuJ8t28FnrgNhFm9zmlzSOc70WeYIKYIb8qec72e+wM2bS92fwDSL3gGdvpV0pX+6e+3t6tSG5PGppWJPRRhyd1yRG6XGY0qd0b3CeXb0UWoO8oOjat4JWwUCwku7koIMoI7tu66xd1ydJSHZTU83G+3Jrbvst0sXe6aeLvANP1xV1BEVXgXrwFKOC+Tcnqiq+3O9CBKrvXTiZTTm5TGTqVs78K036+9umt28tybm6b4fG7fTPAEP+5W+zJeWUN+q4EVCJnfH6ryl5Tm5vfFzfzZcF1vFFsqcsid0qdwu7K+BMoIMAqrxppUEVkjj3zm9z3iO9vZVyZ32+8emVzhVPm6bmI8zSWmyBEsssskIO4IyPG5PYG6XGXrwFSqZUqnvBKjqcsqUiV9qz1912NADP.L+4OehN5nI6rylALfAfBEJ36+9u2fWGAAgm+UqLa4TPAEv+5e8uHu7xiN24NKOiTnYpSKt3hiabiaPyZVy3Ue0WkV0pVo2tqLqrxhCcnCgRkJIhHhfwO9wK+2l8rmMyZVyRdPWMqYMKl0rlkVCzp7xKObwEWX7ie73fCNvYO6YKSqepORRRbnCcHr1ZqYFyXF7BuvKH+hEktkV2111F4kWdDbvAyq7Juh7LxfZ0pkOW3me9wq+5uNicrik5V25VsZEGgmtrzktTN6YOK1XiMLnAMHlzjlDd4kWjTRIQTQEkbKvu5UuZJrvBYnCcnDQDQPJojRYh+c.N6YOKVas07RuzKgu95KYjQFLm4LGslqrOvAN.FarwDRHgHWg327MeSToREsrksjnhJJpe8qO24N2oB+1JDWbwwxV1xHmbxgfBJHhLxHwImbh8rm8vt10t.f25sdKxLyLYvCdvLm4LG5PG5.m8rmk0u90qyzrnhJhoMsoIGKxidziFWc0UN6YOq7WM50u90SBIj.N5niDQDQP26d2kmlYqpC7vEu3EyEtvEvc2cmHiLRBLv.I8zSWqoGTcQyzPnF6XG6fLyLSZZSaJQEUTF79WSZTd4eCobv5V253Mey2jibjivEtvEX4Ke4xsXtgr+0WXXnqiKMy7XlYlYDRHgvvF1vj+lAnoryst0sX0qd0nVsZBJnfHjPBgjSN4xTA6J64+adyaxAO3AwJqrhwMtwQvAGLG3.GPqikO3C9.hO93ocsqc7pu5qRHgDBojRJrfErfJ77Q4ctYIKYIb9yedb0UWIhHh.e7wGRLwD4UdkWQm+l4m9oehibjifSN4DSYJSgIMoIQgEVHKcoKUd8qJk+LjxLwGe7rzktTxImbX.CX.DVXggwFaLaYKaQdhbvPVGAAgm+UqMO2qgRkJk+v0T5A4i4laNt3hKFTkOpNLxHivc2cmTRIE8NN.JOJTn.O8zSRHgDpVekQUpTIN6ryjVZoUtCZXw7b+S2pn4G3l0rlg81aOW7hWrLwRuFt3hKjc1YWlJzoYNnd+6e+r10tVpW8pG4jSN73G+XclNlXhIXokVVlzQSnenu4e9xiM1XC1Zqs5cNI2JqrBmbxIs9PYUQLwDSvEWbQu8TkEVXAN6ryjPBITidu.2byMdvCdP0JrZr1ZqQsZ058ZY0g9JG3niNxrm8r4RW5RZ8EK8a+1uEarwFBMzPqxu7iF553RgBE3latQRIkT4dut5V25Rt4lqNewzRpxb92HiLRd5SVe6aSLwDZXCaHIlXh03e0XaXCaHIkTRF740F1vFxidziJyy0JoZhxe5h0VaMlat4k6G7PCYcD96Kw7b+y9Juqg0JgkSIkQFYny4rWn3VUWyzGWsohJpHt8sucUd6kjjpQhW9x6bgvyOtwMtQEtNFZ3DTQUNWsZ05rBVO9wOVuuPPEIqrxpbqvhJUppTUrGJNeVdgfVt4lakNMMD0DoYUoAALT5qbPZokFd5omz111V5cu6MO7gOjF23FiEVXAW3BWnZWwdP2GWRRRFz8jK4rCT4oxb9unhJpBWe0pUWq8Li6cu6Uiu90Fkoghu1UQkKMj0QPP34SUqvxo1nkr96Nw4z+dK2bykG+3Gq2VMW3uOl7jmLW3BW.as0VZVyZFYmc1ru8suJcnnHHHHH72KUqVtOiLxf5Uu5USkWD.QK6+2bImbxL5QO5mzYCgmB73G+XQE4EDDDDpzpVUtWS3.nToxx7wnRnxIu7xiLxHiJLFVEDDDDDDDDDzmpcL2mYlYJpPpfffffffffvSApUlJLEDDDDDDDDDD9qmnx8BBBBBBBBBBOmPT4dAAAAAAAAAgmSTk9HVIHHHHHHHHHH7jSM5GwJwW0Lg+NS7k8SPPPP3YYhmi8ruxqw1EgkifffffffffvyIDUtWPPPPPPPPP34DhJ2KHHHHHHHHH7bhp8GwJas01mo+B0J9xvJHHHHHHHH77hpUk6s0Vaod0qd0T4kmHL2bykOFDUvWPPPPPPPP3YYUqvxQoRk0T4im3dd5XQPPPPPPPP3umpVUt+Y0PwQWdd5XQ3uV0qd0ivBKL5Tm5DcricjNzgNfs1ZqAu8qcsqk29se6ZwbnveWzjlzD5XG6HlYlY5ccbwEWnicrihFznDZe6aOewW7E3kWd8jNqHHHHTsUsi49+Jr7kubN0oNEae6auJs8lZponVsZjjpTeutDDLHiYLigd1ydVlkmYlYx7l273N24N5caM2bywM2bi5W+5Wo1miXDifV1xV925WJX1yd1jVZowl1zldhjN0T6eas0Vl27lGQGcz7a+1uUsRqku7kiEVXA6bm6jMtwMpy0YkqbknToR1xV1Be629sUq82yKz7aPmc1YhIlXdRmcDDDDpVdlX1xwJqrpR0RnkjGd3AezG8Qzqd0qZ3bkff11111FqZUqhMtwMRbwEG1Zqs7IexmfIln+2gNu7xiILgIvDlvDpT6K+82e5ZW6Z0MK+LM+7yO5cu68SrzolZ+aiM1P6ae6oacqaU6zJqrxB.BJnfz4e2Ku7Rzh8BBBBOmyXarwlkTY1f5Uu5QJojB.3fCNTgquBEJL3zVeq692+94rm8rUosUoRkz8t2ct5UuJ2912tbSizSOcCKiJ72Zk72..z8t2c7vCOX8qe8btycNtxUtB6ae6iN1wNR8pW831291jPBIPDQDAN6ryXu81y3G+3wUWckKcoKwPFxPvAGbfacqagM1XCSbhSjryNaZYKaIiYLigF1vFxMtwMnvBKD.F23FGsqcsCyM2bTpTIt4labkqbE.vc2cmvCObBN3fwc2cmXiMVxO+7K2iGu7xKF0nFE8oO8A6ryNt4Muo7eavCdvzt10NsZMSO8zSBO7vIgDRfrxJKBLv.o6cu6jd5oyXFyXnO8oO76+9uq2kCEGZHCe3CmAO3AiQFYD28t2khJpH.nksrkLxQNRt0stECbfCjQLhQfQFYDwEWb.f81aOQEUTzhVzBL0TSwQGcDSM0TRHgDz4wms1ZKibjijvBKL71auIszRiG9vGVgoSaaaaYTiZTDTPAQ8qe8I93im7yO+Jb6r1ZqYfCbf7hu3KhiN5H28t2UuWC71auY3Ce33t6tiUVYEMnAMfjSNYdzidD.z5V2ZF4HGI8pW8BEJTPhIln74IcYHCYHXkUVgolZJW+5WmDSLQs96yYNyAmc1Yfh+RieoKcI.vLyLS9bTG5PGPsZ0xaqu95KgDRHjQFYHeORMkSsyN6J26qVdks.vDSLA+7yOdoW5kncsqcjc1YSpolp7eWSYnDSLQF0nFECX.CfG7fGvCdvCzJcpnx8Uz9oEsnEzoN0IN1wNlb4LiLxH72e+Yricrzzl1TRM0T4wO9w58XUP3YIk94XBO6o7tFVqDVNie7iGu7xKRM0TwM2bC.tzktDe1m8YZsdKaYKi6d26hkVZId5omnPgBtwMtAexm7I.v68dumbrvehSbB99u+6k211291y3G+34O+y+De7wGLwDSH93imu7K+Rd3CeHd5omLiYLC4J8GZngRvAGL.7QezGQ7wGeswgtffrSbhSPKaYKwau8lidzixvG9vonhJRNdnaXCaHe629sDVXgwidzi3m+4eFGczQF3.GHADP.Xqs1hjjDcqaciW5kdId0W8U4l27lLnAMHrzRKAf92+9SJojB6XG6fd0qdwrl0r.fBJn.5Tm5DCYHCgoLkoPxImrNyiye9yG+82e.PRRB+7yOF4HGISYJSgbyMWF1vFF1au8ZERbcnCcfANvAxEtvE392+9LjgLDb2c2IrvBCSM0T4JUouk2m9zGd0W8Uk2m95quDYjQRjQFIEUTQzst0sxbNnKcoK7JuxqvvG9vwImbh92+9iBEJvTSMk92+9ikVZIG6XGqLGet3hKr10tVL2byIu7xCyM2bFv.F.e7G+wDWbwo2z4e7O9Gx2uPRRBe7wGBKrvXhSbh3niNp2sq90u97oe5mhIlXhb9dricr7xu7KSRIkTYxecnCc.+7yO.jS2KdwKxctycXgKbgxslujjDADP.jRJovDm3DK2J3mat4h4laNiYLigScpSIubqrxJ7xKuHiLxPqVu2N6riMtwMhEVXARRRnPgBBLv.YW6ZWrgMrARIkTHnfBhW3EdABO7vQRRhEsnEg2d6c494quhJaYpolxW9keIN3fCx62fBJH9se62XkqbkZUFZHCYHXt4liBEJvO+7iXhIFl6bmK.UX4dCY+TZFYjQrwMtQbxImj2lgMrgwG8QeDG5PGRuGyBBBBOMnVIrbryN6vJqrhF0nFwwO9wIiLxf1zl1H+vRMrwFavau8FO8zSt10tFG+3GWqABVzQGMQGczXlYlUltR1RKsDSLwD70We4JW4Jb0qdU7vCOn+8u+.PpolJ6cu6kie7iC.W6ZWi8t28xd26d0aEcDDpI0idzC.zpBVlYlYrqcsKF5PGJSe5SWuaqM1XCyctykPBID13F2HJTnfvBKL.XjibjDarwBT7KsNoIMI.HhHh..hLxHYXCaXrhUrB.nu8su5bez+92e72e+IojRhvCObF9vGNG8nGEmbxI4zxPoPgBt8suMidzilgMrgo2k6fCNvLm4LI2byknhJJBIjPXO6YO3niNxq8ZuVYR2QO5QyHFwH37m+7XgEVfe94G25V2hPCMTxO+7I8zSmPCMTV0pVkNyWiZTiByM2bV4JWIgEVXDYjQRN4jC8qe8SuoiBEJnm8rmjZpoxHG4HIjPBgCbfCfEVXACdvCtb2+qXEq.iM1XV1xVFAGbvrrksLL1XiY4Ke45L+8Mey2vTlxT.ficriQngFJG4HGgfBJH5V25F28t2kW7EeQF5PGJ+1u8a3ryNyq+5ud4dsnvBKjKe4Kimd5I1au8xKO7vCGEJTvO8S+jVqengFJFarw7Ue0WQvAGLQFYjTPAEv.G3.AfXiMV14N2I1XiMLsoMM70Wewau8lyblyvQNxQzYdvPJasnEsHbvAG3.G3.DZngR3gGN2+92md1ydpUXTpPgBt4MuIgFZnDUTQQFYjAspUsR9YEUT4dCc+TRKbgKDmbxI18t2MgDRHDUTQQt4lKyblyDqrxpx87ufffvSZ0pCn1su8sK2M7+q+0+ht28tWlGrnPgBVxRVRY5lU.4VHQewOJTbOB74e9mC.e3G9gz7l2bfhGLiG7fGDO7vC72e+4pW8phVbQnVUXgEFIlXhTm5TG70WewAGb.UpToUHkkYlYxF1vFpvz5RW5RxgByN24NYricrzt10txcazzKU8nG8fe7G+QN7gOLG9vGVuq+K7Bu.PwCLTMeiGd+2+8YHCYHb26d2JLOVZKZQKhryN6xc4cu6cGEJTvW7Eeg7KYu90ud5Se5Cd6s2ZscaaaaSNLH9xu7KY0qd0DXfAxQO5QM37jwFaL.zst0MNyYNibE1KORRRDd3gq0x17l2L8qe8S99K5hUVYEJUpjSe5SyINwI.Jt2ahIlXvau8FiLxnxsE2KIMs38blybjO2sxUtR4JVWQ9pu5qXUqZULtwMNV8pWM.zu90OxJqr37m+7LlwLF408q+5ulu9q+Z4+6G7fGPbwEGMqYMSNO+Ue0Wg+96O8qe8id1ydRt4la4NXtMjxVsnEsfryNa47mlAf9l27lIf.Bfe8W+U4z6cdm2ghJpHRN4j4W+0ekgNzgRO5QO3fG7fUX49Jy9QCu81axLyLke1RxImLacqakILgIPm5Tmz6K0HH7rp.BH.46WZHRJoj3ZW6Z0h4HgpiZ0J2etycN4+8idziz4fhM2byUmUruptOryN6pxokfP0QIaEPIIIRLwDYtyctZMKMYnenzJckqyLyLwBKrnb2lO8S+Tdi23MHxHijwO9wSZokF+zO8SricrCct9t4laTPAEnUbDKIIwO7C+fAkGKIIIIcVw9Ru71zl1..Se5SuL8bglPMRiabiaH+u0zSEUz4fRaSaZS3iO9fe94G94mejUVYwINwIXsqcsTPAEn2syGe7goN0ohiN5nVOvq7FCQcpScR9+eO6YOk4u2xV1RCdlXQy0FMCPVMRM0ToQMpQU31esqcMRO8zoG8nGr5UuZ5RW5BVas05bFGyTSMk4O+4KONNz2w3BVvBXCaXCXt4lya9luY4d9qhJaoPgBr1Zq4V25VZscokVZnVsZ7vCOzZ6J4uazD29Vas0.ke49Jy9QCEJTfM1XC.575XaaaaEUtW34NyadyqRs9wEWbLsoMsZobiP0UsZk6K4M+KrvB04CMJ4fZppnjO7SLUWJ7jzRW5RkGKGojRJ+kWd7O+y+jvBKL5ae6K96u+z5V2ZhLxHwN6riu5q9pxr9Ymc1FzLmhQFocz6YpolVkyiZpr29129z5EXrxJqpVuju9jVZoQ3gGN93iOzm9zG7wGeHv.Cjl1zlp2GLU25VWVxRVBpUqlSbhSv0t103wO9wLyYNyxceoYvldu6cO16d2q7xsxJqPkJUxCTSCgJUpz40FKrvB4AVcE4G+wejHiLR5cu6MgFZnHIIw28ceGMtwMVq0aoKcozl1zFtyctC+we7GjRJovnF0nJyDlP6ZW6juGd+5W+3zm9z5ceWQksjjjnvBKTmg3hwFaLpToxfNFgJtbekc+n42sEVXg7ke4Wp05arwFye7G+gAm2DDdVwa9luYkpk6qMtesPMmZ0J22l1zF43MVoRkjat4Vl0wP6l5pJ0pUCPUdpzTPvPkRJo7W934PSEGghqvUpolJ6e+6m8u+8ic1YGacqakt10tpyJ2eiabCZTiZD8pW8RNzDpW8pGKcoKkicriwl27lQkJU3ryNiSN4j7MyMjvBQeN8oOMAETPXjQFwt28tkWde5SeJ2oLT8o79XMAE2J50oN0gniNZ46EssssMb0UW0a5DP.A..6ZW6RdNrWWeGCJ81ESLwfjjTYN1ZW6ZGMu4MW9dQ5ilVhFJ9ZSCaXCwWe8UNDebxImvImbh6e+6WtoiF+vO7CLlwLFF23FGN3fCbgKbAxKu7Jy50zl1TTqVMScpSUdYidziVq0wd6smoN0oRFYjAolZp3me9QG6XG4Lm4L5beaHksd3CeHN6rynToRxHiL.PdVApxzc+UT49px9IszRC6s2dNzgNjbOO4hKtHW1PP34Mk2KqK7rmZ0J2OxQNRLwDSnyctyXrwFWtyrBklRkJka4HMcSpmd5IRRRU3TZYIo4Agcu6cmTSMURO8z4V25VU3zCnfvSyt7kuLMoIMg28ceW1yd1CQGczDUTQg0VaM6YO6gqd0qJOGrqY5Nrz1111FADP.LyYNSZSaZCYmc1z291WrwFajmZMiIlXvCO7fUspUw92+9wc2cmNzgNTky2m9zmlG+3Gy.Fv.PoRkbwKdQ5ZW6JsssskKdwKxO+y+rAmVImbx3pqtxrm8rI5nilye9yWl0YXCaXzt10N5Uu5E+xu7KzjlzDrxJqzpBxkNctvEt.Pwi0mryNapScpCCZPCxf1+m8rmkN1wNxpW8p4vG9v3pqtRe5SeH2byUueD9RJojPsZ0z5V2Zl7jmL6d26lsu8sS.AD.ye9ymniNZxN6rY.CX.nPgBsl0vJOEUTQ7m+4eJOi6nuOpUZlUyl+7mOW4JWg9129VlVc+cdm2ASLwDd629sI4jSlMu4MyBVvBXzidz57doFRYq+y+4+vTlxT3S+zOk+u+u+Or2d6oO8oOnVsZ14N2oAcLBTgk6qJ6mcricvjm7j4K9huf8su8gwFaLgDRHXlYlIONxDDDDdZUs1GwJMcsYDQDAsnEsfTSMUC9gRPwSAZyZVyRdJNySO8jYMqYwrm8rA9es3eE0x+pUqlniNZL2byI7vCmW4UdkxzpcBBUG0189DT7umJ49YG6XGjYlYRSaZSIpnhB.dq25sHyLyjAO3AyblybnCcnCb1ydVV+5WuNSy6d26xRVxRPkJUzu90OF5PGJVZokrksrE4POX8qe8jPBIfiN5HQDQDz8t2c4AHbU43tfBJfoMsoQxImLcsqckIMoIQaaaa4pW8pr3Eu3Jb6K49bKaYKjUVYQu5UuX3Ce35b8+fO3CH93im10t1wq9puJgDRHjRJovBVvBza5byadSN3AOHVYkULtwMNBN3f4.G3.Fz9ewKdwbgKbAb2c2IxHij.CLPRO8zkuuk9bfCb.4JP1gNzAhO93YoKcojSN4v.Fv.HrvBCiM1X1xV1BG7fGrbO+TxvASSXk7fG7.43Nuz2678e+2mrxJK72e+YRSZR3jSNo07QeHgDBd3gGb7iebt10tFYjQFrsssMrvBKX9ye95LeXHks1yd1CaaaaCyLyLFwHFA8qe8CUpTwhW7h4d26dk6wXI++qnx8Uk8yt28t4+7e9OXt4lynF0nXDiXDHIIwG9genNmRSEDDDdZhBWbwkJUfA2l1zF4VfuoMso5bclwLlAMqYMioO8oiat4FpTo5Yh3ypzefUDDzkR9afmzr1ZqQsZ0ZEtEVYkU3jSNwctycL3zwFarAKszR8NFXrvBKvYmclDRHgZrwRfIlXBMnAMfDSLwJLjUJOVXgEje94WturgIlXBMrgMjDSLQ8NPPKc5XjQFQiZTi392+9kaO8ou8uat4FO3AOvfiebSLwDrzRKKyft1ZqsFyM27Z8Oxd1au8XgEVTiGZYUTYKn3PNRkJUUpXsuzLjx8Uk8il459zRKspbdSP3oMOM8bLgplx6ZXsZX4.TopfgffPkitlgZToRUk92cYkUVkYlYojxM2bqw+srZ0pqQRScMVdz09ph9v0U5zonhJxfxe5a+WYO1TqVsNmMkxN6r0404ZZO5QOR9KiaMoJprETyL37Ljx8Uk8yyBMLkfffPIUqDVN4latUqVhSPPPPPPPPPPnxqZ0x8Z9btWZZ9ve7rDcMKRHHHHHHHHHH7rjpUK2qYZE64AOOcrHHHHHHHHH72SUqVtWS7gpToRc1B9OKHu7xiLxHCC9KGpfffffffffvSqp1Cn1LyLSQEiEDDDDDDDDDdJPs17buffffffffffvesDUtWPPPPPPPPP34DUoOhUBBBBBBBBBBBO4nuOhUU5J2KHHHHHHHHHH7zIQX4HHHHHHHHHH7bBQk6EDDDDDDDDDdNgnx8BBBBBBBBBBOmPT4dAAAAAAAAAgmSHpbufffffffffvyIDUtWPPPPPPPPP34D++fzBPKhS8v48B....PRE4DQtJDXBB" ],
                                    "embed": 1,
                                    "forceaspect": 1,
                                    "id": "obj-8",
                                    "maxclass": "fpic",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 269.0, 171.0, 840.0, 461.501976284585 ],
                                    "pic": "/var/folders/jy/fm5zt4xs31525bnq4w6m9x880000gn/T/TemporaryItems/NSIRD_screencaptureui_RVOvi7/Screenshot 2026-02-18 at 16.21.41.png"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 102.0, 44.0, 159.0, 20.0 ],
                                    "text": "Peak-hold envelope follower"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 44.0, 240.0, 38.0, 22.0 ],
                                    "text": "zl.reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 102.0, 125.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 102.0, 171.0, 119.0, 22.0 ],
                                    "text": "qmetro 10 @active 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 44.0, 603.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 44.0, 556.0, 81.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "peakhold.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js peakhold.js"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.0, 39.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "midpoints": [ 72.5, 72.0, 72.5, 72.0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 53.5, 579.0, 53.5, 579.0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 111.5, 225.0, 53.5, 225.0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 111.5, 150.0, 111.5, 150.0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "midpoints": [ 53.5, 264.0, 53.5, 264.0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 501.0, 587.0, 67.0, 22.0 ],
                    "text": "p peakhold"
                }
            },
            {
                "box": {
                    "candycane": 3,
                    "compatibility": 1,
                    "ghostbar": 3,
                    "id": "obj-7",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 402.0, 672.0, 91.0, 99.0 ],
                    "setminmax": [ 0.0, 1.0 ],
                    "setstyle": 3,
                    "signed": 1,
                    "spacing": 4
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 110.0, 1148.0, 673.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "autofit": 1,
                                    "data": [ 56851, "png", "IBkSG0fBZn....PCIgDQRA..CzE..DvMHX....PTKthR....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGVTU8+.G+8.CLCqBBFfK.ApnlfFhHkXklZt.hqHYtgnllKYoUVZlYVpeSsxTzRsrDsbmLS8qZk80rEWJWwULzTQPfXUYe98G7L2eLrNroo940yiONLyct2y8L24N2O2y474nxYmcVGBgPHDBgPHDh5Dlb2t.HDBgPHDBgPb+LInKgPHDBgPHDh5PRPWBgPHDBgPHD0gjftDBgPHDBgPHpCIAcIDBgPHDBgPTGRB5RHDBgPHDBgnNjDzkPHDBgPHDBQcHInqhwRKsjd1ydhVsZuaWTDBgPHDBgPbeBUxji7+u0rl0fiN5HwGe7LlwLl61EGgPHDBgPHD2GPZoqhovBK7tcQPHDBgPHDBw8YjV5pXrzRK4Idhmf8u+8S1Ym8c6hiPHDBgPHDh6Cn1XWPe7wG5cu6Md4kWjbxIyQNxQ3q+5uFc5JJlsIO4Iiat4FW3BWfXiMV5Se5C1ZqsblybFV7hWL4latUq0UBIj.cqaciadyaxa8VuEZzngPCMT5PG5..rsssMZbiaL93iOjXhIxBVvBXlyblXu81SBIj.+m+y+QY6N6YOarwFa3hW7hr7ku7RsONxQNR7zSOwCO7fHiLR.vZqslILgIfGd3AZ0pkqcsqwl1zl3O+y+rZTcKDBgPHDBg3AMFUPWcricjoO8oiJUp..GczQ7xKunCcnCLkoLE.ve+8G6ryN7vCOvLyLS48FXfAh4laNyYNyoJut7zSOQs5hJh1au8.vhW7hwM2bSY8+RuzKQt4lKlat43pqtB.N4jS7vO7CiWd4EKaYKirxJKZbiaL94me.vUu5UKy8yG6wdLr2d6wAGbfHiLRrzRKYsqcsFr+3fCNfO93CKcoKkcu6caLUeBgPHDBgPHd.VkNltToRkRPRYjQFrfEr.10t1E.zzl1TBKrvLX4MyLy3hW7h7i+3ORAET.PQsrU0YcoVsZt0stEG7fGju+6+dBJnfTB3JyLyjcricvMtwMvbyM2f22N1wNTdbW6ZWAfdzidn7baZSaxHpZfd1ydpDv0BW3BYJSYJjRJofNc5HnfBxnVGBgPHDBgPHdvVkFz0i7HOhRqRcvCdPznQCm6bmSoq.1t10NCV9bxIGlxTlBKZQKhCe3CC.Z0pEGbvgp75pfBJfgMrgw7l27XUqZU3qu9p7ZSbhSjUrhUvXG6XImbxwf22d26dUB3qScpS.P6ae6AfzSO8xsktJI8sxF.8qe8iVzhVvjm7jI3fClINwIZTqCgPHDBgPHDOXqR6dgEOPndzidXPKFAPiZTiL3uSKszTd7Eu3EIf.B..L2byqxqq+4e9GCBnxEWbA.xO+7IojRBnnLNXRIkjAu2BKrPN24NGspUsBO7vCToREMrgMD.9ke4WprcYEe228czu90Or1ZqwSO8DO8zSF23FGojRJ71u8aSrwFqQutDBgPHDBgP7foJMnq3iOdkGum8rGRIkT..as0VRO8zUB9wXTUWWkLEtGe7wSSZRSPsZ0Xmc1QpolJpToBGbvgRsshN5noUspUXt4lSngFpRKrYrcsPnntv3PG5PoW8pW7DOwSf6t6NZ0pk5W+5y69tuao5NjBgPHDBgPHDkTk18B+se62TdrZ0pIpnhhnhJJL2bywGe7gFzfFXzarZ555O9i+P4wKe4KmQMpQwxW9xQqVskZY+ke4WHu7xC.F1vFF.jZpoRBIj.PQigr+y+4+vPFxPJ2sWe5SeXlyblzxV1Rd0W8UYfCbfDWbwA.VYkUF2NsPHDBgPHDhGnUoszU5omNm4LmgV1xVRW5RWHf.B.0pUqj7J90e8WM5MVMccsicrC5V25Fd5omXiM1P+6e+API6EVRG+3GWIiEBvANvATd7K+xuLt5pqzpV0J1yd1SY1hclat4Jue+7yO9m+4eT5lhW9xW1n2uEBgPHDBgP7fqJskt.3Ue0WkSdxSRAET.VZokXt4lSAET.aYKagssssAfRxvP++CnjLKpMVW5MsoMMV0pVEm4LmgXhIFl+7muRqWUxkujckvMu4Mq73KdwKB.4kWdJcywRZyadyr6cuazoSGVXgEJAbEWbwwa7FuQ4UcIDBgPHDBgPnPkyN6boiroB3t6tSN4jiAiOqpqp55pScpSLxQNR.3S9jOgCcnCgGd3AezG8QnRkJN24NGScpSUY4CMzPY3Ce3.EEnTIy3ft5pqDe7wSd4kGMtwMlktzkhZ0p4ZW6Z77O+yavx13F2XznQCW5RWpLCFTHDBgPHDBgnrTkC55tIqrxJV+5WOlZpo.E0xV5SPF5zoi4Mu4wu7K+BZzngMu4Mq7ZPQcmvye9yWlq25W+5yW9keoxeGYjQxN24NqC2SDBgPHDBgP7fBip6E9uEYkUVLtwMNhM1XURk72912l3hKNl1zllR5fWePY5Ss7Se5SubC3BJpaPlat4xe+2+Mqe8qWB3RHDBgPHDBQsl6oZoKgPHDBgPHDh60bOUKcIDBgPHDBgPbuFInKgPHDBgPHDh5PRPWBgPHDBgPHD0gjftDBgPHDBgPHpCIAcIDBgPHDBgPTGRcks.d6s22IJGBgPHDBgPHD2S6jm7jk4yWoAcUQuYwC171aukiMDBgPHDh5.x0YcumJpwpjtWnPHDBgPHDBQcHInKgPHDBgPHDh5PRPWBgPHDBgPHD0gjftDBgPHDBgPHpCIAcIDBgPHDBgPTGRB5RHDBgPHDBgnNjDzkPHDBgPHDh+UoMsoM3iO9b2tXTqwnlmtDBgPHDBgPb+G0pUSaZSancsqc.vwN1w3XG6Xjat4dWqL4me9wrm8rAfYNyYxwN1wtqUVpsHAcIDBgPHDBwCf7zSOYAKXAnUqVkmqO8oOjat4xLm4LIlXhA.BLv.oe8qe.vrl0rHqrxpVqLLyYNSr2d64HG4H7Ue0WA.5zoS40UoRUs115tIInKgPHDBgPHd.z6+9uOlat4.PxImL5zoCGczQL2by48du2i9129B.d4kW3kWdA.Z0psVMnK+7yOTqVM5zoSInqidzixLlwLPmNcbhSbhZss0cSRPWBgPHDBgP7.lV0pVoDv028ceGKe4KG.BJnfXbiabnVsZ5XG6HMu4MmN24Nq79l0rlEW+5WmErfE..N5niLtwMNbyM2vbyMmqd0qxF1vFTBVJnfBhN24NS1YmMaYKaggLjgf81aOu4a9lL0oNUTqtnvQb2c2YQKZQDUTQQxImLCe3CG.93O9iIt3hiIO4Iiat4FW3BWfXiMV5Se5C1ZqsblybFV7hWrR2gTiFMDZngRG5PG.fssssQiabiwGe7gDSLQkx8cZRPWBgPHDBgP7.Fqs1ZkG2hVzBrzRK4V25VricrC9u+2+K.jWd4wHG4HwN6rSYY8zSOogMrg.fat4FKcoK0ft.nCN3.93iOL+4OeN3AOHssssUoUxZcqaMlZpo.PCZPCTddnnVPyKu7hG9geXr1ZqUdMmc1YhKt3ve+8G6ryN7vCOvLyLS48EXfAh4laNyYNyA.V7hWLt4laJu9K8RuD4latXt4liqt5ZsSkW0fj8BEBgPHDBg3AL+we7Gje94CTTfTabiajnhJJl0rlEMu4Mm7xKO.XkqbkJisK.1vF1.KYIKA.d1m8YAf7yOe9zO8S4y9rOCc5zgJUpTFCXkzQO5Q4fG7f7W+0ewpW8pUF+VojRJr5UuZ9e+u+WEVtMyLy3hW7h7i+3ORAET..JY4vfBJHk.txLyLYG6XGbiabCkVz6tIoktDBgPHDBg3AL4me9L8oOcdm24cvBKr..ryN6ve+8G+82eN6YOKuxq7JbnCcH71auoUspU.vN24NI4jSF.l+7mOPQY.wF1vFR8qe8ovBKDSM0TbxImJ01bVyZVb7iebk+daaaaLhQLBTqVMIlXhrssssJsbmSN4vTlxT..KrvBBHf.PqVs3fCNfu95qxxMwINQRJojvDSLgMsoMgFMZpl0T0NjftDBgPHDBg3APm8rmkAMnAQqacqo6cu63iO9fiN5HPQc4v9zm9v27MeS499cxIm3se62lF0nFUoYYPc5zYP.WUWokVZJO9hW7hDP.A..lat43hKt.TT.kIkTR.PgEVHIkTRznF0nZ71tlPB5RHDBgPHDhGv3gGdfqt5J4me97y+7OyoN0o.fG+webdi23M.JZBJthB5Ztyct3hKtfNc53jm7j72+8eSu5UutiT9KKwGe7zjlzDTqVM1YmcjZpohJUpvAGb3tVYROInKgPHDBgPHd.SG6XGYvCdv.vZW6ZYCaXC.PiabiUVlyctyAfxXmBJZ7S8i+3OB.OzC8P.vktzk30e8WGGbvAdlm4YTRVFUEN4jSnRkJClitpp9i+3Ove+8G.V9xWN6cu6E+82eClGxtaQRjFBgPHDBgP7.lst0spDfyvF1vH5nilniNZkT0tNc5X26d2.vd26dUdeScpSku7K+R.3e9m+AnnDwwF1vFXMqYMU4.ttzktD.Xu81y1291qQsT1N1wNH1XiE.rwFan+8u+z3F2XkzI+cS2SEzku95K95quJCjuRxRKsTYYJdT5BgPHt2gM1Xix4xKq+U7TEr6t6NKe4KmMu4MyV25VU5y91XiMrfEr.95u9qYaaaakaVzRHDhGTkUVYwTlxTH8zSGnnjgg94LqLxHClxTlhx3m5ZW6ZbnCcHkfzz2xQyctykae6aC.VYkUjZpoRJojhAamJqkqV8pWMYlYl.fJUpL3b7k05o3quh2Bb5MsoMMV0pVEm4LmgXhIFl+7mOIjPBFUYotjJmc14Jbq6s2dyIO4IuSUdJWlXhIr8suck+NhHhPoBTuW7EeQ5V25F.b8qecF6XG6czx3CZ92xwFBg39K8rm8jILgITtu97l273fG7f.vl27lU9w+BJn.dgW3E3ZW6Zr3EuXZdyaNPQ+H6ZW6ZYiabi0Zkw.CLPk.4l0rlEYkUV0ZqagPHf6rWmk0VaMst0sFSLwDN9wOdEdNMyLyLkzIud1YmcXhIlTp.tpJToRElZpoJow9piN0oNwHG4HAfO4S9DNzgNDd3gG7QezGgJUp3bm6bL0oN0p85uxTQelcOyX5pjQlNrgMLV3BWnAOWfAF3cxhjPHDh5.E+78k0ckTe2DwFarQIfqe9m+YkTWL.MoIMA.RN4jI7vCmBKrvZ0xnWd4kxD2oVsZkftDBw8zxLyL429seynV1RFvE.olZp03xfNc5pQAbAEMltl1zlFlZpoLqYMKk4LL8q+srksTiKmUW2yDzUI8XO1iYve6qu9pLGCTV5d26NO4S9jzjlzDt7kuLe+2+8r+8ueCVlQNxQhu95K1au8jXhIxANvAH5niV40aZSaJiXDifF23FSAET.wEWbrhUrBkTRI.sssskPCMTZXCaH4kWdb4KeYhLxHMHxemc1YBMzPwau8lTSMU9jO4SXHCYHTu5UO98e+2Utarlat4DZngR6ae6wVaskyd1yRzQGsxfZTHDh62snEsnRctZ.5RW5hAcYPu7xKVzhVDKaYKiILgInDLlkVZIu+6+9DUTQwe9m+oQed0fBJHdrG6wnIMoIjTRIwu+6+txfLO7vCmN24NqrryZVyhqe8qyBVvBpCpADBgPXrxJqrXbiabL8oOcZbiaLlat4b6aeaRHgD3i+3O9t50PeOaPWZzng.BH.knxCKrvJ2kcRSZR7LOyyn720u90mG8QeTbyM23K9hu..hLxHwUWcUYYr2d6wKu7hV1xVx7l27ncsqcL6YOaClCBb1YmwO+7iwO9wS7wGO8qe8iHhHBC11t3hKzt10NBO7vI0TSEas0VV1xVlxDzlKt3BevG7A.E0rp4me9rwMtQToREe7G+wFLmBzfFz.BLv.4Mey2jicriUcq5DBg3dd95qu7vO7Cq72MnAMfFzfFfqt5pRKPAEMwY5kWdgGd3AG6XGynNu5zm9zMnmST+5WeZdyaN95qu7Zu1qwi+3ON1YmcJutmd5IMrgMrtb2UHDBgQJ93imW7Eew61EiR4dpDogd23F2..FzfFDPQ8szV1xVB.IlXhFrrssssUIfqye9yybm6b4BW3BJueWbwEbvAGTB35.G3.L5QOZN0oNE5zoi1291iJUpXvCdvJAE8hu3Kx7l27Hu7xCSM0T5Se5C.DRHgfNc53e9m+gEsnEojNMMyLyTJCu1q8ZJAb82+8ey28ceGYmc1kZBkaBSXBJWXvt10tX9ye9jQFYfJUp3Mey2rVr1THDh+8ZTiZTDYjQp7u2+8ee.3a9lugMsoMorbG6XGiUu5UyoN0oX0qd0JcQkjRJIV8pWM+xu7KF04UCHf.TB3J4jSlUspUQbwEG.7HOxifat4FqbkqjXhIFks8F1vFXIKYI040EBgPHt208jsz0+8+9eYDiXDz7l2bznQCAGbvnRkJRIkTHszRSYNC.LbbdsqcsKr1ZqYm6bmJQ.GXfAZPWWwau8ltzktPjQFIW4JWQ44MwjhhOUsZ07rO6yxO8S+DgEVXjSN4nrL5G3dpUqF2byMxHiLT5BJMsoME.byM2.fae6ay3G+3Afu8a+VVwJVgA6isoMsAnn9e54N24PqVsb3CeX5RW5BZznAGbvARN4jq9UhBgPbOf5W+5S8qe8U9a8iwqKbgKPFYjgxMe6zm9zrsssM.XaaaaLrgMLfhBbR+yaLmWMf.BPYaM4IOYRKszXm6bm7Vu0agIlXBN4jSbnCcH71auUxjt6bm6TNerPHDhJz8jAckXhIxMu4MoAMnALfAL.5ZW6J.r6cuaZe6auAKq9rWEPY1TispUshMsoMwYO6YoEsnEXmc1wPFxPXHCYHb6aea97O+yYm6bmrl0rFl27lGpToh.BH.BHf.PmNcDarwxzm9zI6ryl10t1wTm5TwVassbK6Vas0.XPlW7pW8pTPAEXv7ZfiN5HPQc4voLkoTp0iu95qAyYBBgPb+nCe3Cqz6D.pQy0JFy4U8zSOAf7yOekTkbt4lKyXFynZucEBgPHtmLnKnnVsZ3Ce3DRHgfUVYkRFIojAckRJofGd3A.70e8Wq771Zqsjd5oqzEQl1zlFsu8sm9zm9fmd5I1ZqsXgEVvK7Bu.+7O+ybpScJdtm64XPCZPJyCXlZpozzl1Tl4LmIu4a9lJi4qbxIG9y+7OIwDSToqGp2st0svVas0fViyYmctTSjbYmc1XlYlgNc5TF71EubepScpZmJRgPH9Wre5m9oxLQZTcXLmWMv.CjG9ge3RcNYarwFLwDSHqrxpFmcsDBgP7fm6IGSW.DczQiNc5vJqrBnntZRw6pe5U7DNwEu3EIpnhhu4a9FZTiZD93iOXgEVPqacqY1yd1z6d2ahLxHYHCYHr0stUk2mqt5JSbhSjW9keYxImbXBSXBLfAL.kTloSN4DMu4MWYbYEczQybm6bKy.izOqaaokVxRVxRXzidz7QezGUpkS+XHnfBJfcsqcQTQEEG6XGC2c2c7wGeJyz0oPHD2uod0qd3jSNYv+J4Xf0XYLmW8Dm3D.E0ZXCcnCEnnw40W8UeEqacqSoKiW7IjSe7wmZvdnPHDhGDbOaKckat4xYO6YURfFk2jd4d26d4Ye1mEqrxJl4LmIYjQFXokVholZJ5zoiktzkRN4jC94me.Ek3MRHgDvYmcFnntXxoN0oX3Ce3zpV0J7yO+n6cu6.nLiY+q+5uxEtvETlK.BMzPo28t2Jckvha9ye9rl0rFzpUKd3gG3gGdfNc5LXdD.f0t10xBVvBPsZ0rl0rFxHiLT51h25V2xfzTuPHD2uZLiYLLlwLFCdt268dO9ke4WpxqKi47p6YO6gm8YeVzpUKgEVXLvANPTqtnepL+7ym8su8ATzusLvANP.XpScpDd3gyvG9vqI6pBgPHtO18jszk9I4R8cOjbxImxcBcKqrxhW3EdARLwDQmNcXiM1folZJ2912l4O+4yUtxUHgDRfO7C+PxM2bQsZ0znF0HL0TSI8zSmW60dM.3se62lye9yC7+Ovt0oSG6e+6mO+y+bJrvB4S9jOgBJn.ToREVas0bxSdxRMwdlYlYxy+7OOaYKagXiMVN5QOJSbhST4tlp++iIlX3cdm2gLyLSToRkxEFjPBIvK8RuTsbMpPHD26n3Szkkmx50LlyqlQFYvDlvDH4jSFc5zoDvU5omNu3K9hJq2qcsqwgNzgT9a8yKXBgPHLNsoMs4ApdJfJmc14x+Wsnnr42IO4IuSUdpSYhIlPyZVy3F23FJCP5RxN6rCmc1Y9q+5uJytqnIlXBt6t6jat4xUu5UKy0gKt3B+y+7Ojc1YWpWaricrzgNzAxM2bYlybljbxIS+6e+YTiZT.PTQEkAi8Lnnthnqt5Z4Vlta49oiMDBwCVLlyqZhIlfmd5I+8e+2k44y0yLyLS5x2BgnV28yWmke94Gyd1yF.l4Lm48My+rUzmY2y18BqNJrvBqzYh5TSMURM0Tqv0g9wkU4I93iubesSe5SqjbM9hu3KLnaElWd4wN24NK064V25Vb1yd1JbaJDBgv3YLmWsvBKzfLmX4QB3RHDhplh2aDppiS2.CLP5W+5G.LqYMKxJqrpUKa0UdfJnq+M3fG7fLm4LGF23FG0u90GSM0TxHiL3u9q+h4Mu4QFYjwc6hnPHDBgPHD0YN5QOJyXFy.c5zoj.iLVd4kW3kWdATTW6VB5RTtNzgNDG5PG5tcwPHDBgPHDBixjm7jwM2biKbgKvoO8oYPCZPXt4lygNzgXiabijYlYprrN4jSz+92e7wGevbyMmSe5Sy29seqRuGvUWcUI4C8we7GSbwEmAq+XiMV5Se5C1ZqsblybFV7hWL4latDd3gqjEYghZoqqe8qyBVvBtyVYTMHAcIDBgPHDBgnB4u+9ic1YGd5omDTPAo77MtwMlN1wNRDQDA.zfFz.hLxHQiFMJKiSN4DctyclW+0ecN0oNEt4laJsVkyN6LwEWbJqeO7vCkLDNTT2IzbyMm4Lm4vi+3ON1YmcJulmd5IMrgMrtdWuVw8jYuPgPHDBgPHD24oVsZRO8zYe6aeJstkSN4DgEVX.EMsdnOfq+6+8+xF1vFTxgAu8a+1U552LyLiKdwKxO9i+nRV8VeVNbkqbkDSLwnrraXCafkrjkTqt+UWQZoKgPHDBgPHDFEc5zwXG6XIyLyj5W+5yW7EeApToBu81a95u9qUlqaO6YOKe7G+w.fs1ZK8rm8DMZzPCZPCpv0eN4jCSYJSA.rvBKHf.B.sZ0hCN3.G5PGBu81aZUqZE.ryctSRN4jqC2aq8HszkPHDBgPHDBiRpolpRKbkRJovsu8sAfF0nFgqt5pR1HT+7aK.G+3GW4wcnCcnBW+EeZc5hW7hJO1byMulW3uKRB5RHDBgPHDBgQwBKrvf+VevPYlYljPBIn771au8JO1AGbP4wk27b686jftDBgPHDBgPXTzpUKgGd3nVsZlvDl.pUWznU5RW5RjSN4nzxW96u+XokVhJUpTlWspNoH9RR+37B9+GqW2KPB5RHDBgPHDBgQa.CX.DczQSO6YOAJJXpsrks..acqaE.znQCaXCafniNZbzQGAfe+2+cJrvBqQa68t28p73oN0oxW9keYMZ8cmhDzkPHDBgPHDBixMu4MI1XiU4uyN6rYIKYIb4KeY.3q9puhMu4MSN4jCpToBSM0TxO+7429sei4N24VtqWc5zYv+CF1pV5csqcMNzgNjxxoUq1Zk8q5Zpb1Ym0UQKf2d6Mm7jm7NU4QbOD4XCgPHDBgntw+1tNqnhJJryN6HwDSjQMpQgUVYEVZokbyadyx883niNhFMZ3ZW6Z0IkIyLyLxKu7pSV2UGUzmYRJiWHDBgPHDBQURVYkEYkUVU3xjTRIUmVF92T.WUFInKgPHDBgPHDUnabiaf4laNwGe72sKJ2SRB5RHDBgPHDBQEZZSaZ2sKB2SSRjFBgPHDBgPHD0gjftDBgPHDBgPHpCIAcIDBgPHDBgPTGRB5RHDBgPHDBgnNjDzkPHDBgPHDBQcHiZxQVHDBgPHDBgPTwpQSNx+aZ1vV7uG+aalRWHDBgPHtegbcV26ohZrJo6EJDBgPHDBgPTGRB5RHDBgPHDBgnNjDzkPHDBgPHDBQcHInKgPHDBgPHDh5PRPWBgPHDBgPHD0gjftDBgPHDBgPHpCIAcIpU0l1zFbwEWpS2FsssskUtxURqZUqp0Vmcsqck0t10hO93Ss157AMt3hK7ke4Wxy9rO6c6hh3N.yM2bV4JWIgFZn2sKJh6grrksLdm24cpSV2KcoKkQLhQTqs9tS+6BCYHCgUrhUbGYaIDh67jftD0pl6bmKyXFynNca3pqthKt3BOzC8P0ZqS+7yOr2d6o0st0F86wFarg4N24xS8TOUsV4n1xTm5TYjibj0Yq+xZe2SO8j5W+5i+96ec118dACZPCh27Mey5j0su95KyctykF23FWmr9qJLwDSvEWbgl27lWmsM92z9qnpqjmGRiFM3pqtxi7HORs915QdjGA2c28Z00Y042EpIZcqasbrtPbeLiZxQVHte2BVvBXyadybwKdQi98Xs0VSaaaaIqrxh8u+8W2U3pF5XG6HYlYlrl0rl5j0eYsu+y+7Oyjm7j4JW4J0Iay6UDXfAhmd5Ycx5tUspUz111Vd3G9g4pW8p0Iai+M4As8262TxyCkSN4vnF0nHu7xqVea8jO4SB.+3O9i0ZqypyuKHDBQ4wTqs15YWQKfSN4DIlXh2gJNh6kTVGaLjgLDRKszXm6bmk66yDSLg.CLPF9vGNMsoMkadyaR5omtAKiO93CgEVXzyd1SbwEW3xW9xjat4B.d4kWzt10N9ke4WHt3hC.72e+IjPBgbxIGZdyaNAETPDSLwXvOt+zO8SS26d24nG8nkpL0rl0L5d26Nm+7mmbxIG5ZW6JO9i+3b8qecBKrvnG8nGjTRIQRIkDPQ2U0ANvAhat4FVZokzvF1PRHgDHszRC.b1YmYfCbfDTPAgIlXBW8pWkBKrPC1lMu4Mmmaxrbcm...H.jDQAQ04dN5V25F25V2h5W+5y.Fv.3Tm5Tje94yPG5P4gdnGh5Uu5wHG4HoIMoIbpScpJr9od0qdDQDQfWd4ElYlY3fCNfYlYF+8e+2.E0BU8nG8fAO3ASSZRSHwDSjLyLSkxTEsM0q712yImbXPCZPjUVYQhIlHsnEsfPCMT9q+5uHjPBgAMnAgc1YGm8rmk5W+5yXFyXnG8nGTu5UON24NmAaCqrxJ5Uu5ECdvCFGbvAt5Uupxm+kGqs1Z5QO5AgEVXzrl0LRIkTH0TS0fkoQMpQz291W5ae6K1XiMb8qeck0q0VaMidzilrxJKZQKZACaXCiF0nFwEtvEnfBJvf0SPAEDgFZn3u+9SgEVnR.AiXDif1zl1fFMZvN6rCWc0UNyYNCPQcGuPCMTFv.F.O5i9nje94y0u90KUcuYlYFCaXCi1291yktzk3V25V.P26d2oyctyXu81S8pW8vKu7hibjiTg0I0FJu8U0pUSngFJW8pWkryNaF1vFF94mejQFYvMu4MMXcTQ06Eeeu3G20vF1vJb+sUspU7bO2ywi8XOF25V2hDRHAkWS+2eSIkTXXCaX7zO8SyO+y+bsVcRM4X6Zx2AMlyqnWwOd1O+7igNzgR1YmsxmeUT8m9s0PFxPHjPBgl0rlQRIkjx42J9xzu90O5W+5Gt3hK72+8eSN4jSEddn9129R8qe8I1XikAO3AiO93SoNGyvF1vvc2cWotyXNePDQDAVZok7Iexmn74SrwFK8pW8hAMnAgIlXhxuWTbst0slPCMT5bm6LpTohqe8qqTmVxeW..2byMd1m8YI3fCF2byMtzktD4lat3omdxy9rOKomd5jbxIqr98xKuXvCdvb8qecxHiLJyOqz6oe5mFmbxIV+5WuxyUYGuTY+VkdVZok7LOyyvPFxPnoMsob5SeZF5PGJ1au8FTuTQGioud8JW4Jzu90OBMzP43G+3b6ae6Jb+RT8IWC98dpnOyT4ryNqqhdyd6s2bxSdx5jBl3dak0wFe629sb4KeYl3DmXY9dLwDS3y9rOCGczQzoSGpToB.9fO3C36+9uG.d9m+4I3fCF.kkI6rylQO5QSpolJ8oO8gwN1wxBW3BY+6e+7jO4Sxzl1zHszRiwMtwQu5UuX3Ce3rt0sN9pu5qT11acqak7yO+xbLnLjgLDFxPFByd1ylibjivRW5RwM2bibxIGznQiR4LlXhgW8UeUF5PGJCZPCBSM0TzoSGEVXgrvEtPNvAN.O8S+z7RuzKYP4O4jSlvCObke7ZDiXDLnAMHCVlTSMUryN6XhSbhDWbwQzQGMEVXgXt4lC.+0e8WLoIMoJr9wAGbfEu3EiolZJ.TPAEv+6+8+XQKZQz3F2XV5RWJpUq1f5d80i.k61r3Ju88ye9yypW8p4G9gefEu3ES3gGNCX.CfLyLSrxJq..UpTQLwDCd4kWXhIlnTF98e+2UFmGt3hKr7kubCJm4me9L9wOdhO93KyiqZTiZDKaYKyf2iNc5Xkqbkr8sucfhBZYxSdxFTuke94y3F233F23F3latwxV1xHiLx.arwFCVOuzK8RJ2s6UtxUhKt3B4latXlYlgJUp3G+wejEsnEwF23FwBKr.UpTQAET.IlXhLlwLFr0Va4y9rOCsZ0ZPcezQGMqZUqR4wETPAJ085Wl0u90y5W+5YgKbg3kWdoTlJnfBn+8u+k6EcWanh1W0pUKadyalLyLSr1ZqMX+ZQKZQJs3PkUuqeeujG2kSN4Tt6uu1q8ZzoN0ICJq+7O+yL+4Oe.T99a94mOlYlYjat4R+6e+K092i9nOJMoIMob2+iIlXJyV4n5drcM46fFy4UJN8GOe6aearvBKPmNc7Mey2vpV0ppz5u.BH.lwLlgRcu9+eNyYNb3CeXfhtX+oLkoXP4Iu7xiW8UeUJrvBK2yCsksrERKszXTiZTrvEtPZQKZAQDQDJA8oub+m+4exa9luoQe9fniNZt5UuJSbhST4ymR9c4ryNaF3.Gnx6YFyXF7XO1iYv9PhIlHidzilBKrvR86BctyclW9keY.Hu7xCyM2bxKu7Xbiab.vpW8p4bm6bL0oNUkswG7Ae.MqYMiQLhQXPvXkk268dO7wGeHnfBxnOdox9sJnn.vWyZViAm+41291nUqVC985J6XL80qE+XpW9keYtvEtfA6GU2uWIJM4Zvu2SE8YlLltD2QMiYLCbzQGY6ae6zm9zGhHhHH6ryloLkofkVZIpTohm5odJt4MuIgFZnzm9zG1yd1CZ0pU4GhJtN0oNwzl1zHkTRgQO5QSlYlIQGcznSmN5RW5hxx0l1zFL2byqR2saUpTwEu3EIjPBgHhHBRM0ToksrkXt4lSTQEkxOz9K+xuPHgDBG3.Gf5W+5yTlxTH6rylHhHB5Se5C6XG6.GbvAdkW4U.JZLoMnAMHkkI3fClO8S+TryN6JUYvbyMmniNZ5W+5GSZRSpRqehM1XIjPBgbyMWRIkTHjPBgEsnEA.u+6+9nVsZVvBV.AGbv7BuvKP94mOScpSEarwlxcaVRk29d4I2bykAMnAwfG7fIyLyjV0pVwktzkHjPBgvBKLxN6rocsqcJK+6+9uOlZpoL24NWBN3fYtyctXpolxBVvBJ2swBW3BQsZ07AevGPvAGLSYJSgBJn.F0nFEpToBGczQlzjlD4latJAs9ge3GhZ0p48e+22f0k0VaMu5q9pzm9zG9rO6yPkJULfAL.fhtXBWbwE9se62n+8u+DRHgvUu5UwO+7C.BMzP4RW5R.PHgDBiYLiQ4wlZpo74e9mSvAGLgGd3jWd4Qu5UuLXaqQiFhJpnH3fClW60dMzoSG8nG8..l1zlFaXCa..9O+m+C8su8sNMfqJaeUOqrxJkOqV7hWLPQ2DCfpT8dIOtq71e6ZW6JcpSchKcoKw.Fv.X.CX.DWbwQfAFnAARnRkJ9q+5uXHCYHkY.WPQsNxXG6XK2+ERHgTg0QUmisqNeGzXNuR4QqVsJauUspUYT0e8u+8mbxIGd4W9kI3fClYO6YiJUpXnCcn.fCN3.u3K9hjWd4wK7Bu.AGbvrrksLLyLyXJSYJU34gJtMtwMpr8zSePQ5ugYFy4CZVyZFpUqlicriUpswPFxPXPCZPb7iebzpUKcricD.5YO6IO1i8Xb0qdUF7fGL8qe8i8u+8yC8PODu9q+5kYco98+vCOb5e+6uxwvcqaciDRHARJojnoMsoXhIEcoUlXhIzzl1TtwMtQkFvUYwXOdoh9sJ.d629sQqVsJ+t6y8bOGYkUVJAnATkNFqfBJP4y8RFvETy+dkPb+JYLcIti5QdjGgLxHC9zO8SAfDRHAV+5WOiZTih10t1wANvAJU1u6K9huft28tWpAruu95KctyclDSLQF+3GuR2MI2bykye9ySyadywJqrhrxJK5ae6K.FzxWFi28ceWJrvBIgDRfe7G+Q5W+5GO4S9jr28t2xb4e7G+wQkJUrxUtRk6b6JVwJ3oe5mVYviGXfAp775Wlsu8sSW5RWnoMsoFr9xHiLTZIDnn69nwV+TbVYkUXiM1vwO9wUBP5JW4Jrt0sNFwHFAcnCcf8su8UlayZpnhJJxN6rAficriQfAFHqXEqfBKrPxLyL4BW3B3s2diJUpvBKr.6ryNN5QOJ+1u8a.vu8a+FwDSL7HOxifIlXRoBzvZqsFarwFNwINgRqkdwKdQdi23MnUspUXgEVP.AD.pToh0rl0v0t10.f8su8wy7LOiAWbB.m5TmhXhIFfhZczgO7gSaZSa.P4N26latgqt5JW4JWQI.zJxZW6ZYsqcsJ+cRIkDwEWbzrl0LC1mt8susRfFm9zmlKe4Ki6t6NlYlYF83foMsoMXu81aTKK.Ymc1J00Emwtud4KeYk2+O7C+.ie7iGGbvA.Lp5c8eu0XOtSexa4UdkWQoKeMiYLCV25VGAFXfFbC.dy27MIqrxpbWWuy67Nk4M6PuR1MIKopxw1VZokU6uCZLmWo7bricLCpSLl5O8sPRwWG4kWdJIunN1wNp74p9wv4t10t3V25VXokVVgkmh6PG5PjSN4vi+3ONKe4KG.Ze6aOYkUVDSLwfkVZoQc9.8imqe5m9ICV+aXCaPoqqu5UuZVxRVBcsqckCdvCpbd3oMsoobLxBW3BIf.BnbqS0GjxS9jOIey27M7S+zOYv1b26d2LzgNT5RW5B6ae6im9oeZToRUE1c6KOUkyYCU7uU4t6tS5omtxu6lVZowzm9zq1Gi8EewWTgic2Z52qDh6WIAcItiQkJUXs0VC.6XG6nTutO93CG3.G.+7yOdgW3EvAGbP4B+z+9KN8sj0t10tJU+6eKaYK7FuwaPe5Se3q9puBe7wGRLwDqRmrWmNcFzG702cHz2chJKd6s2.vjlzjJUqDYgEV.fRfUkbbLDWbwUlAcURFa8Sw4qu9B.m+7m2fm+XG6XJiCoheAe0lzew1.JANjRJon7b5uvO.kVEncsqck4wHsnEsPIfnR9dJ4XmIlXhQYY0+4xe7G+gAKyEtvEnksrk3iO9nbrQISXCYjQFnUqV.3nG8nJAzGYjQRt4lKwDSLrrksrxsqOBfYlYFSe5SWY7dUdeV8O+y+XveGe7wi6t6tR2XxX7JuxqTgWvSIke94qbSIJNiceUeWDTuTRIEbxIm.Lt5c8iSKi83Nu7xKfh9NdIU7rWmNc5pv.tfhtoOkbrLUUTUN1tl7cPi47JkmR94iwT+4jSNwa7FuAt4laXpolpb7p9+We4ojiO1RFziw32+8emm3IdBZPCZ.VZokXs0Vyt28tAL9yGz111VxO+7KUqtT7+VeKPq+6xt5pqjWd4Yv3iBJJffxKCBt7kubl4LmIgGd3LxQNRRN4j4a+1uUotbaaaa7bO2yQO6YOYe6aezyd1SzoSGe629sU45kpxwKUzuUoRkJznQix35UuabiafNc++itjpxwXUVxRpl98Jg39UU4ftrwFavN6rCMZzTWTdD2gkSN4PpolZs9EZWVzeB9BJn.V8pWsxyapolholZJG5PGhFzfFvrm8rI+7yme629MN24NGomd5JicfhqfBJ.c5zwHFwHL3Brgh51a4latzktzEN8oOMZznQ4GxqKo+tptyctSCt3cKszRkA17ktzkve+8mV1xVZvEDUQ8Ad8pJ0OEm9t1Rw6RJ.JWbdIuX+6VzeAqW6ZWiu669Nkm2RKsjacqaUlCDd8+3dEEng9OWryN6L3yE80GkbPmWdzOFFbyM2n28t23u+9SaaaaIxHijALfATtc2u4Lm4f2d6MW4JWgCcnCQhIlHgEVXT+5WeiZ6VULm4LmpTPWkWBJox1WMF0V06kbcZgEVnbW60yRKsrTAdWYbyM2TZUtxRbwEmAAQUSTS9NnwbdEikwT+szktTzpUKm9zmlicriQJojBSZRSRIHR80IN5ni03rJ45W+54IdhmfALfAnzJY56QBF64CZbiaboBtrxbqacqx76IZ0psTING8N7gOLCX.Cft0stQfAFHst0slvCObr0Va4y+7OmbxIGt3EuHMsoMEyLyLZVyZFm6bmqZksFqsNmsNc5H2byEGczQCd9FzfFXvM+o17Xr6jeuRHtWRUJnKarwFk6fo39CZznQ4yz6DAdkbxIS8pW836+9uW4tP6ryNqLVBz++QGczJoY3xadv5C+vOjjSNYd228cYtyctLxQNRCxBhG9vGlG+webF7fGL5zoiniN55j8oh2xWG8nGkd1ydhIlXhRBb.JZ.JqVcQec6W+0ekvBKLF23FG+we7GjVZoQW5RWTtCzUjpR8Sw6xbm4LmAc5zQ6ae6MXYdlm4Y.nZmE7pnV8q5HlXhAc5zUp5u1zl1PyadyI+7yuTumyd1ypruoe.+CvDlvDnMsoMLoIMIkOW5Uu5kRKLpRkJdzG8QQmNcDWbwgat4VkV9b2c2wGe7g8su8QjQFIQFYj7tu66pT9N6YOqxxp+BCghZcy7yOedgW3ETdc8i6opi5Uu5UtuVIuy3UWU19ZYE.bIYL06Fihu+dtycNbxIm3RW5RJqS0pUSe6aeUFKMFqW4UdkJbtcReRCo1PM46fFy4ULVUV8ms1ZKVXgE7W+0ewzm9zAJ5X4IMoIobSENxQNB8t28lfBJHkwQkJUpXAKXAjSN4Xv7TWwOOTY4pW8pjRJoPG6XGwLyLyfw+jwb9.Wc0UTqVMm3DmnJUObgKbAZTiZDADP.JccQGczQbzQGK2.35d26N27l2jcsqcwt10tvVask0u90SG5PG3y+7OGnntj7q8ZuFu1q8ZnRkJkwsVUUs44ru5UuJd3gGLzgNThJpnPqVsLu4MOCVlZyiwtS98Jg3dIUouIUUt6oh6sXmc1UqEzUCZPC3EewWzfmK6rylO4S9D1xV1BicrikUtxUxN24NwTSMk9zm9njjKz+Cm8rm8jrxJKr2d6o28t2k41QmNcbhSbBV6ZWKCe3CmO7C+PhHhHTtn60st0QG6XGoMsoMbtyctJMkiWUEe7wS94mOst0slwN1wx12914nG8njd5oSO5QOvN6riSdxSRG5PGvGe7gSdxSx+8+9eI1XikctycRu5UuXcqacTPAEfolZpRl1phXr0OIjPBzjlzDl5TmJ6ae6iie7iyQO5QwO+7iktzkxO+y+Ld4kWz912dRIkTpxYGoxZeu3cUkpKc5zwe9m+I95qurjkrD9oe5mnIMoI7zO8SS1YmMaZSapLee+9u+6DP.AvxW9x4+8+9ezzl1T72e+4l27ljSN4vQNxQH0TSkm3IdBznQCW3BWfm7IeRryN63fG7fFc4yGe7gwN1wR+5W+XKaYKXpolRKaYKofBJPoUBN8oOMd5om7du26wN1wNXe6aebyadSb0UWY5Se5blybF5V25V057o+9u+6DVXgQXgEF1YmcDUTQUkWGFqJae0X5sC0z58xZ+ciabizwN1Ql6bmK6cu6kabiaPPAEDMnAMfUspUUlSIDkmktzkVgSFs0VAvBEcrc086fFy4ULVFS8W94mOt6t6DQDQnLlXKdqhbzidTRIkTHf.BfYO6Yy4O+4Iv.CDWc0UClmrJqyCUV1yd1CgEVXJkuhWmUYmOnycty.U8t13l1zlnScpSL8oOc1291GYkUVzidziJLPoHhHBrxJqXG6XGb1ydVkt3dw6p3G3.GfW9keYBHf.HmbxgCcnCATThp3i9nOhidzixG9geXkV9pIGuTRyd1ylUspUQXgEFCdvCFUpTQt4lqAmyt17Xr6jeuRHtWRU51BJcov6eUa9YqUVYEcqacyf+oOyCt8suc17l2LZzngvBKLFzfFD5zoiEu3ES7wGOW7hWj8t28hkVZIiXDiffCNX1yd1C.kaW2Ziabi7G+wevC8POjxclEJpemqedZZqacqUXY1XxBb5Wlhur6YO6QIvwG8QeTxKu7XhSbhjPBIPG5PGXLiYL3iO9vYO6YYVyZVJuuHiLRdq25s3.G3.bhSbBVvBV.+xu7KUZYvXqeV25VGYlYlz4N2YkrA1rm8r43G+3zjlzDF5PGJ94meb8qeclvDlP0JfoRtuWdcImhyXpmm0rlEm3Dm.2byMBO7voqcsqjRJoXPZXtjl6bmK+we7GJysP96u+jPBIvzl1z.JZbKMgILARHgDve+8mgNzghKt3BG4HGoT2w2RReZwGJZJQ3.G3.3niNx3F23XLiYLTPAEvblybTpC2xV1BYjQFzzl1ThHhH.f4O+4SlYlIAFXfLlwLFbzQGMpTlr9sq951KbgKPrwFK1YmcDVXgUkaYmphJaes7Nlo3OeModGJ6823hKNl6bmK2912ld1ydR3gGNN5niricripbqYe1ydV1291W49upxD8swbrc086fF64ULFFS82RVxRnfBJf90u9wPG5PIwDSzfaJWgEVHSbhSj3iOdZW6ZGCYHCglzjlve9m+IevG7AJKWYcdnxxV25VUNlpji+oJ67A95qunSmNN8oOsQs+q+yoKe4Kyblyb31291zidzCFv.F.lZport0sNkDkTI+L8se62lLxHCBJnfXZSaZ7nO5ixe9m+IqXEqvfkSef+5C3BJJIRYu81WklSqptGuTxeqJkTRgvCObhJpn3Tm5Trm8rGFwHFgAumZyiwpM+dkPb+jpz7zUIGj++akYlYF4me9k5jRsssskQLhQvRW5RI1XisRWOKXAKfibjiTt2c85RMu4MmN1wNhc1YGwDSL7S+zOojkrzSqVszst0MZRSZBwEWbr28t2R02wehm3InUspUjRJovO7C+PE12rqpyaF0z4OB8yUWkUpz0DSLQoe5WcagJUpTwl1zlLHkeWWPsZ0XgEVTpVJTsZ0zvF1Pt90utAcKNGbvAl5TmJm5TmxfIAyu5q9Jr1ZqIjPBoRu.Nis9QqVsjat4Vp0WiZTiH93iuFmxwKu88ZKt5pqjTRIozM8LFMtwMlDRHgxcbTXhIlfSN4TEl3KLFMpQMhzRKsRMP70yJqrh7yOeCRlB0qd0CsZ0ViGj4ZznA0pUWoIJhZKU19pwnlTuWd6u5ybk0zOKuan59cvx67JUGUV8myN6LYkUVU32uUqVMN6ryU3X6p7NOTUUYc9fst0spLkgTcYkUVgFMZL5wYjkVZIN5nikavCu+6+9zxV1RF23FmR8xnG8nou8suLgILAt7kubUtLVSNm8PG5Poksrk7AevGnbM.8rm8jILgIv92+9YgKbgFr70lGiIpYJuqyxbyMmNzgNf2d6MwDSL7q+5uZvu0nmIlXBcoKcAmc1Y1912tACAihyJqrhfCNXRO8zYO6YOxm60.Uz0FeeW1Kzc2cmoMsowV25V4G9gevfWyBKr.yLyLkrWTkQeJ98NM8cqGc5zQd4kGd5omDTPAwN1wNTZheMZzvrm8rwZqslbyMWZUqZEcricj25sdKkurLoIMI7xKuHu7xC0pUSG6XGYAKXAb8qe8636SkkJJ.vBKrvZzcCa.CX.zidzCzpUacdPy4me9k4Ekje94Wl6CImbx3gGdfO93CcoKcg+4e9Gd3G9gQqVsbhSbBitU2Ll5mRFntdEOqqUSTd660VpNGCTYCr+BKrvZkKRuxpCKq.hRKszHszRqFusyImbJyefstRswwK0j58xa+MyLyrFEH3cSU25zx67JUGUV8mwjbJxO+7qzuyUdmGpppj62N6ryXt4lWim7XyJqrpR2.iacqaUleFDP.APe6aeoksrkDarwZP8xC+vOL4latUq.tfZ12ASO8zoMsoMrxUtRhM1Xwd6smG5gdHkIL6Rp17XLQsul1zlpL2TBPu5UuTlW8J9wWADP.75u9qqjkiCKrvJyfrG+3GO8pW8RoKDO9wOd9nO5iLXJIPT6nVuuoTQc2kh2mvqnzacE8ZFyqWasLSZRShO6y9rp85vXJCkkTSMU94e9mYZSaZ7xu7Ky67NuC.FLQp1idzCr1ZqYG6XG7xu7KywO9wod0qdJ8u8F0nFgWd4EwEWb7RuzKwm+4eNlZpoJ8a96208t2cr2d6Y+6e+7EewWb2t3TJicrikSbhSfM1XCMqYMirxJK14N2Iuwa7F2sKZBgPbOgl0rlQ5om9+Zt3v.BH.ZdyaNwFarLiYLCCdsBKrPN7gO7ckx01291YoKcojVZogGd3A1Zqs7W+0ewTlxTJyI2Xw+tMu4MOL0TS4C9fOfPCMT1vF1.ZznwftAp4laNuxq7JnSmNV1xVFu5q9pjTRIwS8TOkASv8d4kWz6d2aRKszXFyXFr3EuXxO+7YhSbh2UZzg62Uq0RW8su8kNzgNfM1XixbFg9Kfbbiab3gGdnLWOb1ydVZQKZAomd57we7GyMtwMPqVsLwINQbyM2PkJUjc1YSTQEkAyv796u+L3AOXznQC5zoiKdwKRjQFI4kWd3gGdvjm7jUBzIjPBgfCNX.3C9fOvfn+82e+YzidznVsZt7kuLqd0q1fzu57l27TFiS+1u8aFLnZetm643QezGUYtAQmNcb7iebCBNqksrkDQDQnzkJhKt3vUWcUY7kTYtxUthA2koDRHARN4jwQGcTI6r4me9gNc5X26d2XlYlQqZUq.J5j96cu6kt10tBfxcwReFOphxnP2O44e9m+tcQnBkd5oKAXIDBQMvANvALXhe9tsO7C+vxMIYT7L53cC6d269NxzlhntkSN4DVXgE7q+5ux2+8eO.r10tV5ZW6pxjWN.Ce3CGMZzvV1xVXW6ZW.vq+5uNe5m9oLwINQF4HGI.L4IOYfhlPq0mLnr0VaYzidz77O+yWpVESugNzgxMtwM3F23Fz6d2aJnfBXcqacDe7wS25V23we7GWYdrq3W+sM1XCgDRHzrl0LRLwDYW6ZWJygdOHnVInK2c2c5ZW6J27l2jcu6ciUVYEcnCcP400mBZOvAN.cpSchVzhVn73d1ydxm+4eNie7iG2c2ct90uN+8e+23me9QDQDAyblyjzRKMZPCZ.Ce3CmBJn.90e8WwSO8jl0rlQDQDAqXEqfadyax28ceGN3fCDXfAx4N24TxPNkb7S3qu9xIO4IwLyLiV1xVxy7LOCe8W+0Ju99129PiFMzqd0qRkgwrwFaPqVs3s2dyu9q+JsnEs.e80W9oe5mH1XiEyLyLF23FGlXhIb3CeXZRSZBMu4MuFU+pVsZryN631291JiSMqrxJktExnF0nvTSMkbyMWk6Lg94HiKbgKP.AD.MpQMRI63oVsZo+5JDBgPHD2C4e9m+gINwIxMu4MM34M0TSMHYV4omdBTT.Y5Ee7wShIlnAygZOzC8Pjd5oavbbXzQGMQDQDU3MoefCbfTPAEnLkPnRkJ5Tm5Dm4LmgV25ViNc5PkJUzst0MlvDl.W8pWEmc1YV1xVFZzngbxIGznQC8nG8fO7C+Pk.HueWsR2K7ge3GF.1+92O+zO8SryctSdq25sLXYxN6rYiabijVZoQFYjAabiajacqaoL4f5gGdPFYjAu268dr10tV1111FpTohdhBrGUA...B.IQTPT0ydBfRZwNpnhh0st0oj0gz2BOYjQFr28tWk4aiyd1yxd26dYu6cukp+jepScJ9zO8SYYKaYjat4Vpfh99u+6Ym6bmUX1A5q+5ulu5q9JVxRVB.JMW6S7DOAlZpo7C+vOvW7EeAyctysF2e1e9m+4QsZ0Jy58PQAhkSN4fGd3Ad6s2r8suct8susxW.r1ZqQmNcXt4lyfG7fI1XiUIQYTQSZgBgPHDBg3eez26oJ9XPLnfBRIM+qmKt3B4me9k5FrmTRIgZ0pU5MWZ0psLmnsyN6rK0DpcIoQiFhLxHI3fCVYHr7HOxivLlwLH3fCVYpFQ+PiIrvBCMZzvBW3BY.CX.Dd3gysu8so6cu6U65i60TqDz0AO3AQmNcLnAMHl6bmKgGd3Xs0Vavxn+C97xKOkrJV94mOlat43fCNfJUpLXPm9m+4eBfRyk1fFz..LXBPL93iGSLwDktsnwp3cYwzRKMr0VaqRue.9i+3O.JJoHnSmNb1YmAPYton3yGI0jLUVvAGLsrksjSdxSpDPITTZY1TSMkwLlwvMu4MYe6aeXhIlnjDFzWeGd3giIlXBexm7IJC5x6jC.egPHDBgPT6yGe7gm+4edxN6rY9ye9JOuUVYUYlAe0OM53hKtfUVYEpTopLSFVYmc1UZRmKiLxPoqKpuQAt10tlx0+pen4n+5h0mPOdrG6wvVaskadyaRngFJu1q8ZUo846kUqDzUt4lKuwa7FbzidTL0TSocsqcLu4MOrxJqpv2m9lezLyLSY8T70IfRfB5+vp3Qsq+.J8ulwp3Yqopy7Sj9rJXEsNpooFW.dpm5o3Ydlmgqbkqvm7IehAuVt4lK1au8Xs0VyxW9xAPoIagh1GUoREd6s2r0stUt0stkRfv5+RmPHDBgPHt2iGd3AyYNygBJn.lxTlhAs9UZoklROep3z25UW8pWkrxJKzoSG1au8kZ4rzRKqzLCaICVSmNcFTFJYFAcMqYMjQFYPG6XGY8qe870e8WyTlxTThA3AA0ZYuvLxHC97O+y40e8Wmst0shJUp3Iexmzndu5aIHWc0UkmqMsoM.++oUb8yeF56NgPQYnOc5zYvAF5CJ6tUVWQe5XussssJOmSN4TUd83u+9y.G3.IgDRf2+8++Xu673hpx8G33eFlgcPFAbEQvcDkEQwM.CSPQTVTTSMyDs7RtzkjJM8ZYkVYtzsxsbKMWSSyKY38mhklZkl6YfqHZtgHnABB3Lb98G75btLrNrYk9790qdkLyYdNOmy4YNy46y57J06Ku1VcnCcHt8suMZ0pEyLyLt8suM.b4KeY.31291r+8ue.noMso0ZScuBBBBBBBBBO50nF0HVvBV.pUqloO8oWpksgadyahZ0pKUiezfFz.JnfBTdV46e+6WpftLwDSvLyLqBWVepNxHiLXDiXDLqYMKNvAN.pUqlfBJHCVP0ebWsxDoQu5UunMsoMru8sOxO+7UB3nxV6NjIIIwst0snwMtwL1wNVN24NGQFYj.nL3516d2Kd5omLpQMJ95u9qwSO8DarwlRsVRHuthzyd1SRO8zIyLyjKcoKYzKvtZ0pUYbloRkJrwFanksrkHIIoDHSEY+6e+DVXgQu6cuwJqrBmbxIidcASVKZQK34dtmSYlQTdbsAnrn0s6cuaF6XGKsoMsg1291yvF1v.PY1IZO6YOz291WzpUKd5omzktzEL2by4m9oepJkWDDDDDDDDD9qA6ryNVzhVDZzng+0+5eQRIkTo1le8W+U5Tm5DSZRSh4N24B.cnCc.6s2d98e+2U1tqe8qiat4F94mebnCcH.3EewWDUpTQxImbsZ9tyctyT+5WeRLwD4nG8n.vW9keIN6ry0p6m+JqVInKMZzf2d6McpScB.zqWOm7jmTY7WIIIYPWvq3c8N4We4Ke4DWbwgO93C93iOHIIwt28tUVP.uzktD6e+6mm5odJF0nFEPQS61qXEqvf7hNc5HwDSjd26dyHFwH.JZJi+RW5RJ62Jpq+EYjQZvZXPKaYKYJSYJ.vjlzjJ2tin7qWPAEvJVwJH5nild1ydxCe3CIszRqJ0ZWt5pqJS88kb.FdzidTt8suMG+3GmNzgNP25V2XhSbh.EEvm7WRxKu7Xcqac7bO2yw3G+3AJJH3MsoMYz4CAAAAAAAAg+ZvLyLiktzkhkVZIW5RWh.CLPBLv.Ud+Mu4MSZokFaYKagvBKL72e+ofBJfadyaxPFxPPRRxfw90bm6bY0qd0DWbwQKZQKvN6riPBIDxM2bYUqZU0p48AO3AiWd4E8t28lu669NZUqZEVYkUF0hv9iKT03F23JbPM4gGdnLinz5V25xc6TqVMMqYMCIIoZzJYtCN3.1au8jRJoXvzeoLMZzPKaYKI8zSuLmwU9qDSM0Td3CeHyYNyAqs1ZhM1Xq02GlYlY3pqtRJojRYNMvqRkJZYKaIokVZUZ+yUd1MzXU7xFBBBBBBBBB0dJ4yY4hKtvhW7hK2seVyZVJshj7X9RdoOpfBJfMu4MavZOKTzreXzQGsxLZX1YmMyYNygyblyTt6mcricvsu8sUpTe.9lu4a37m+7DWbwo7Z6bm6jie7iya9luI1Ymc7du26gKt3hx6mVZowzl1zJ0Tf+emUQOabsVPWB+OidziFc5zwEtvEnyctyzwN1QRN4jqvun7WAOoFz0HG4HoW8pWDSLwTmsOZSaZCu9q+57Ye1mobCw+LyOBBBBBBB+0VswyY03F2XbzQGqvfn.vM2bibyM2ZTCmXLznQCN4jSbiabixbFV7u6pnqY0JcuPACoQiF70Weom8rmTXgERJojRsdyzJT8DWbwQFYjAqYMqQ405XG6nxTZZck9129RSZRSTlnSpHOJxOBBBBBBBO96V25VFUW36rm8rOBxMEMLftxUtxij80e0TkB5RdEjVnhs5UuZfh5ZeUmoj9+L7jxZ2ke94G2+922fftdTvSO8Dc5zUmWCRBBBBBBBBB+0SUJnq6cu6Usl9yeR0eWB3BpcW6tF3.GHd6s2jWd4wAO3AMXQcdTiZTJ05x.Fv.Pud8rgMrAt4MuIAGbvzyd1SxHiL3a9luwfZBQiFMzidzC72e+Iqrxhu+6+9xbF6oicriDXfAh0VaMG5PGhe9m+YzoSG1Ymc7rO6yholZJ1ZqsLgILAN4IOI+3O9iJe15Uu5QDQDAsrksjjRJIhO93MHXTSLwD7yO+3odpmhabiavt28tMXF5T9XKiLxf90u9wUtxUTl3RZbiarAyXP95quzqd0KrzRK4Lm4LricriJ7bps1ZK8t28Fu81aRIkTHwDSTolqF9vGN4kWdFjF+i+w+fyctyw9129.JZV4bjibjr28tWN24NGPQK+B8su8EUpTwd26dMXgGOnfBhF23Fy9129HhHh.as0VCF7sBBBBBBBBBFupTPWxKDZZ0pUzhWOlH+7ym6cu6UlqH4UGqXEqflzjlPAET.lZpoDXfAx2+8eOKXAK..FxPFB50qWYQ6SkJUDP.APxImLcricTYAyN3fClINwIx0t10vTSMkUspUg81aux62+92e1291Gye9yWYeOiYLC5QO5APQA7FP.Avsu8s4EdgW.GczQ5W+5mxhwc+5W+vRKszfft9rO6yTVe270Weo+8u+LtwMNjjjvDSLgUu5UiiN5nRdXvCdv7QezGorrFLjgLDJrvBUN1bxImXSaZSz111VTqVMm3Dm..hM1XInfBB850ijjDcu6cmvCObF6XGaYdNsYMqYJSOrRRRz0t1UF9vGNye9ym8su8Qu5UuvYmcVInKe7wGkks.4ft5W+5GgFZnbpScJN24NGScpSk.BH.k8Qe5Se3fG7fJAVEYjQhKt3BQEUTXpolZzK4BBBBBBBBBBkVUdLckc1YWq8.5BOdoScpSzjlzD94e9mY1yd1XhIlvRVxRLXJ3G.yM2bV7hWL6ZW6hnhJJhN5noCcnCLiYLCN0oNEQGczDUTQQngFJKe4KmYNyYh81aO6d26lEsnEg0VaMezG8QDXfAxwN1w36+9um92+9SO5QO3ZW6ZDWbwQ94mOwFarDXfAxa7FuAyYNygHhHB1912N2+92mQO5QWp7eFYjAidziFas0V9vO7CowMtw3gGdvoO8oYFyXF3niNR7wGOqXEqfF1vFxhW7hI1Xike5m9IxM2bAJZ1jbG6XGr10tVkAHp7z459129vDSLg9zm9PlYlIicriEc5zwTlxTHf.BfV25VWlSlIyadyCMZzvbm6b4.G3.z7l2b9jO4SHt3hiicriwO8S+DMu4MmNzgNvu8a+FAGbv.fM1XC1au8jYlYhu95KRRR7i+3ORPAEDADP.jRJovq8ZuF.rfEr.72e+If.BfCbfC.TT.wW9xWlYMqYQVYkUsSgDAAAAAAAgm.Yxe1Y.gGenVsZfhlRSadyaNEVXgDSLwnrdoIK6rylcsqcA.aaaaCnnEnuScpSAfxzYp7jIQ6ZW6HmbxgO4S9DJrvBI6ryloN0oBfRq03u+9C.u5q9pjSN4fNc5X9ye9jWd4QG5PGLp7+7m+74gO7gjYlYxN24NAJZrXAEsnBlc1YyxW9xQRRhzRKM13F2HpTohN24Navw1JW4JMXF4wKu7Bc5zwktzkT5xoVas0JqqcKbgKjAMnAUlAbYs0Vis1ZKm5TmRIXnqd0qxF1vFPkJUzst0MkEDa4f67vCOTVHu6W+5GPQq8a23F2.IIIks60dsWi7yOexO+7YFyXFFbdT1Lm4LEAbIHHHHHHHTCIl8BEp0bricLN+4OOsssskkrjkPAET.IkTRr3EuXt4Muox1UxVJURRhbxIGk+t3+aUpTg0VaMW5RWxfOSFYjA5zoCWc0U.n4Mu47vG9vRsVjkd5oazyDfolZpJ+6ye9yCTTKWoRkJrwFa.PIXrhySO8TIfnxpUfcxImTN9kjjXG6XGDYjQxa8VuE50qme+2+cVyZVSYNUx6iO9XP9Q1IO4I44e9mGu7xKRLwDI2byEO8zSrwFaPqVsrksrEFxPFB8nG8fcu6ciEVXAG4HGAnnfXg+W.uEm74S47ZwuVHHHHHHHHHT8HB5RnVijjDSYJSAWbwEFv.F.csqcEu81aVxRVBQEUTTXgEVsRS850iUVYUodO0pUqzs9xM2bUV..KNKrvhxbQ1tplG.Pud8FL0+qVsZTqVsRvLkEWc0UznQiASREqZUqhst0sx.G3.o6cu6zhVzBl0rlEScpSke629MC97YjQF.nLVyjIerJu.gmbxIi2d6sRWKLwDSjV1xVZvpUeBIj..jUVYgkVZIKe4K2fzzJqrRYR1PPPPPPPPPn1in6EJTqwUWckvCObRO8zYIKYILlwLFN0oNElZpoz1111pc5d26dWZXCanAAU06d2aToRkRPBW3BW.UpTQ26d2U1FGczQbzQGK0Jct7DcQUQFYjARRRr28tWhO93I93ime5m9IToRUE94jC3Y+6e+.EErT3gGNZ0pkMtwMxK+xuLe1m8Y.Pu5UuJ0mO4jSFIII70WeM30k61fxsN12+8eOpUqlAMnAQlYlI4latrqcsKznQCQDQDjWd4ozZaxmyRIkTTNVRHgDPmNcXhIhaIHHHHHHHHTaSzRWB0Z7zSOY7ie7LnAMH1111FpUql1291id85qQsfxW8UeEwDSLrzktT9u+2+K1Ymczm9zGzoSGae6aG.15V2JADP.LsoMMRLwDImbxgPBIDToRkxXDCfzRKMb1YmIt3hiDSLQkwQVkYaaaaL9wOdVwJVAIjPBnVsZBO7vwLyLiCdvCVteNe7wGzqWuxzauZ0pY7ie7TPAEvl27l4t28tDUTQAfRWTr3jjj3XG6XzktzEVzhVDG7fGj10t1gu95KYlYlJq54G7fGj3hKNr2d6YO6YO.EEb0Ce3Cwd6s2fiysrksfe94Gyd1yl8rm8vst0sXfCbfzfFz.V4JWIG6XGynNmHHHHHHHHHXbDAcITq4a9lug1291i+96OwDSL.vCdvCXNyYN0n0rrctycR8qe8IxHijgNzgBTzXm58e+2mqe8qC.W4JWg24cdGd0W8UIjPBA.xKu7XCaXCJAg.vF1vFXRSZRz6d2azpUa4FzkbWgT9+Ge7wi81aOgEVXL7gObkzegKbgFLd0JImc1Yt8susxemQFYvxW9xYricrJyfh50qmMtwMxYNyYJyzXVyZVLm4LG5XG6HiZTiBIIItwMtAwEWbJmW0oSGokVZz3F2XktQH.W7hWj1291qL0wCEM10l8rmMSYJSg92+9CTTvc6bm6rRWuvDDDDDDDDDp5T03F23J7og8vCOTpMcAghqhJa3jSNwe7G+QolXKpobzQGI2byUYrbUVr1ZqwbyMmLyLyxcarvBKnfBJnZMNyjWqtjGuUkmlzjlvJVwJX26d27IexmTp22AGb.UpTwctycL58s7jxQ0IeWVrwFavVassBCbTPPPPPP3QOwyf+2OUz0LQKcITmPtEnpsYLAnjSN4Toy5d4kWd0o4AnnwcF.+vO7Ck46WYAsUVpsOud+6e+Z8.iEDDDDDDDDLjXTyKHTGo90u9jYlYZziaLAAAAAAAAgGOIB5RPnNxhW7hYzidz0nwylffffffffve+IB5RPPPPPPPPPPPnNjHnKAAAAAAAAAAAg5PhftDDDDDDDDDDDDpCIB5RPPPPPPPPPPPnNjQsNcIHHHHHHHHHHHHTwpQqSWhElMgxhXQ6SPPPPPPPntg34r96mJpwpDcuPAAAAAAAAAAAg5PhftDDDDDDDDDDDDpCIB5RPPPPPPPPPPPnNjQMltJNas0VzpUKlat40E4Gg+hI+7ym6cu6Q1Ym8e1YEAAAAAAAAAg+VpJEzks1ZKMpQMptJuH7WPlat4JWyEAdIHHHHHHHHHT0Uk5dgZ0pstJeH7Wbhq8BBBBBBBBBBUOUoftDcovmbIt1KHHHHHHHHHT8TkGSWOJL24NWN5QOJacqasNae3iO9P+5W+nAMnAjWd4wzm9zAfgNzgh+96ux18JuxqPgEVXcV9nlvBKrffCNXb1YmI0TSk8rm8vCe3CqRoQiabiIv.CD6ryNN8oOM+zO8S037kYlYF93iO3s2dyctyc3HG4Hb0qd0pbZr3EuX1yd1CaYKaoFmm9qrErfEPJojBKdwKtb2l.CLPFxPFB1ZqsL8oOct90u9ivbXYqUspUXmc1o7250qmyd1yR94muAaWiZTivImbhqbkqPFYjQYlV1XiMz111VtyctiAkUpMJKIHHH7WAwFar3gGdvDlvDJ08IEDppZRSZBCX.CfSbhSvwN1wLpOi0VaMgEVXjUVYwt28tQmNc0w4Rgh6ujAcYkUVgs1Zac59Xzidz7vG9PN5QOJ+we7GJu9gO7gI8zSGe80WbwEWpSyC0Dlat4LqYMKrwFanfBJ.2c2c7yO+3sdq2xn+Rjqt5JSYJSAUpTgd85wCO7fN1wNxJVwJp14qN1wNx69tuKlZpoJu1XFyX3W9keg24cdGjjjLpzwDSLglzjlPaaaaqvsyVaskoN0oRhIlH6ae6qZmuqJ7wGeXvCdvrrksLt10tVMN8ZcqacE1RhN5ni7pu5qhjjDolZpnWu9Z79r1vLm4LwQGcrTudFYjAuxq7JjYlYB.O2y8bDXfARpolJSZRSpLSqXiMV5d26NW4JWgINwIBT6UVp5p1957i5zutPbwEGYjQFrl0rlZT57m8wtwdei+Lt+hviu7wGevd6smFzfF72luyK7WSe5m9ozhVzB.HxHij7yOelvDl.okVZk6m4kdoWhPCMTToRkxe+we7GShIl3ij7rPczTFu7EzpqIO4IypW8pqQouIlT9GZt5pqnQiF10t1Eabiaju8a+Vk26pW8pru8sOtwMtQktOpoGmEWEkeKKgDRHXiM1vN24NYJSYJbpScJryN6n28t2FcZLhQLBToREyadyiXiMVxJqrvKu7BGbvgpZ1Wwa+1uMZzngMu4My3F23XFyXFjVZogu95KiXDinZmtkGarwF71auoG8nG05oc4wc2cGu81aka3UWyWe8E.1zl1DSdxSlacqa8HY+ZLjjjXAKXArfEr.VyZVCW4JWAGbvA9jO4SJ015pqth81aeodcSLwD5V25F.jWd4o75OpKKUR00WmeTWNp1fe94GO8S+z03z4O6ici89F+Yb+EgGeESLwPLwDiHfKgZjm64dNZQKZAm8rmkILgIvW9keIlat4Lm4Lmx8yzt10NFv.F.+we7GLiYLCV3BWH5zoiIMoIUm2HGB+OpswFalUEsAMpQMhae6aCPY9.S.7rO6yxy+7OOMqYMiniNZBIjPnoMsobhSbBksooMsoLsoMMFzfFDgFZnzidzCNyYNC4latJay6+9uOCX.Cf90u9gc1YG+1u8aFre7wGeHlXhgAO3Ay.Fv.nO8oOboKcIt6cuKPQO71XG6XYLiYLLfAL.BN3fovBKjTRIE.vau8loMsoQO6YOQkJUz111VBIjP3odpmh8t28Zv9xSO8Dmc1Y10t1UopQ8QLhQvK9hunRd0RKsjyd1yVkNVCLv.I1XikG7fGvDm3DI7vCm90u9wEtvETNdpHiZTiBKrvB9zO8SwTSMkQNxQhZ0po90u97C+vOToed.dlm4Y3N24NDe7wSKaYKIv.CD.TqVcoN2CnzxExJdYCnnta1.G3.4zm9z7u+2+axImbHszRiDSLQBIjPnvBKj8u+8SCZPCXLiYLjd5oy8t28LH+zpV0JN24NGZznggMrgw0t103N24NL1wNV5d26NYkUVjd5oC.cnCcfgLjgfKt3BVYkUzzl1TRKszPud87BuvKPN4jCcoKcgQMpQQd4kGW6ZWCyLyLF1vFFQEUTzoN0IzoSWoBv1FargPBIDF9vGNsoMsgLyLSk7Ye6aeo28t2T+5WeryN6ncsqcbzidTfhJ+4u+9ynG8no0st0jd5oSVYkkAos4laN8u+8mQNxQRqZUqHojRhgNzgRVYkEIjPBk5bdngFJ8su8EGbvAzoSGsqcsiScpSQaaaaYXCaXb0qdUFzfFDCaXCiScpSwCdvCPiFM3me9wy9rOKd4kWjSN4nbNCffBJH5YO6IokVZL5QOZ5e+6O4latbiabCb2c2Ybiab3me9QAETPEV4CQFYjXt4lyG7Ae.olZpjTRIQBIj.gFZnnUqVRHgDHu7xid1ydhqt5J.Xmc1Uptv5fFzfvGe7AnnVIa26d2FcYoxiSN4DQFYjDYjQhs1ZK23F2fBJn.k2ebiabXs0VaPWULf.BfPBIDN1wNV4dc1M2bigMrgwYO6YIjPBgQLhQfyN6L23F2vfueWcS+5ZCbfCjgMrgQW6ZWovBKrTO7WiabiYHCYHLvANPLwDS3ZW6ZTXgEhc1YGiabii10t1golZJN3fCXpolxu+6+dYtepnumYrG61XiMk62ighBb6Ye1mkdzidPt4laopgWWbwEFwHFAgEVX3hKtPJojBETPAk68MJdOd.J+6uHucUVYrRZTiZTzvF1PryN6XLiYL3ryNyYNyYpvy6.Jk4t7kuLQDQDLzgNTzpUKm8rmE6s2ddwW7EIjPBA6ryNN24NmA6Sas0VBIjP3YdlmAmc1Yt8suM2+92Gnn625omdpjGj8bO2ygqt5pRZUQ4sxibEizm9zGr2d6M32Ggh5hSgFZn7LOyyfCN3.W6ZWS4bWwut6latwy8bOGN4jSbgKbgR0J+UV44J53uxtlTbx2y7F23FL7gObBIjP3N24Nbm6bGC1tJ6du94mezoN0IN0oNkQetxX9cEgGeUxmyBf24cdGzqWOwDSLb26dWN8oOMd3gGzpV0Jt3EuXYN7Cdm24cPqVsLiYLC9se623xW9xje94SW5RWvQGcje7G+wGUGRO1qrtlIqVo6EZqs1hEVXAd3gG7S+zOgat4F93iOr+8uetzktD.LkoLEL2byI4jSF0pUSaaaaIt3hioMsoojNIlXhXt4lq7PaEmZ0pYzidznWud14N2oRgkhGgdLwDCt6t6b8qec9se62nacqaDQDQvwO9wIiLxfe+2+c91u8aooMso3qu9pTvq30tdkoO8oO3me9QN4jCG6XGCe80W5Se5C25V2R4gIMli05Uu5gFMZXHCYHjc1YyO7C+.srkszfwHSEwZqsV4GOF6XGKpUqlBJn.itFKr0VaQkJUbyadS.3EewWj+3O9CryN6nAMnAF84ihS9GfZQKZAVXgEJmWyM2bMnkIbwEWHzPCk6d26RpolpxqOzgNTxM2bI93iW405PG5.cu6cGIIIToRE8t28lu8a+VV5RWJcpScB+7yO.vAGbf90u9wu9q+JpTohPCMT5cu6MVZokHIIw0t10HojRhUu5UiEVXgR5ETPAwN1wNXkqbk.E8fTKdwKFMZzfjjD95quDQDQvJVwJH93im9129pT67cricj1291yxV1xPkJUr5UuZbzQGUR6AO3AyG8QejR.8VXgE7EewWfUVYERRRzktzE5e+6eE1Jm8qe8iV1xVBTTkF3omdxl27loG8nGk5Xzd6smrxJKV0pVE1au8J4i92+9y9129X9ye9.EErjKt3BCZPCByLyLToREcqaciCe3CS25V2T9bADP.rnEsH9u+2+aUpbvMu4MQqVs3fCNXPP026d2C+82eV3BWnAaejQFIETPAnVsZkWyXKKUV5ae6Ku7K+x.E0RbcsqckW3EdAhIlXTZkvHiLRN+4OOG7fGT4yEVXgg6t6NKe4KubuNKeduG8nGT+5WekqiCaXCi3hKNN+4OeMJ8qK6xjqXEqflzjlPAET.lZpoDXfAx2+8eOKXAK.nn6s8Juxqnbdq6cu6DczQSzQGMN5nizu90OToRElZpoJU1TY8C00qd0qB+dlwdr6fCNTleO9m+4eloN0oR.ADfx11m9zGN3AOHevG7A.Pu6cuYJSYJ.vCe3CoyctyDYjQRLwDS4deiRNVAqnsyXJiURCYHCgBKrPLyLy.J5dMaZSapBOuWXgEpjWvcnB..f.PRDEDUTlqW8pWXs0VC.ctycld1ydR6ZW6vDSLAUpTgu95Kd4kW7tu66B.MqYMiEsnEoburt10txvG9vY9ye9ru8sO70WewM2biu669Nk.VcwEW3YdlmgSbhSP7wGekl2JKwFarDTPAgd85U9LgGd3L1wNVfhFGJKcoK0f70nG8n4kdoWhadyapbcOf.B.as0VjjjnG8nG7rO6yxq7JuBW7hWDnxKOWYG+Uz0jRR9dlxUzjJUpvO+7ijRJId8W+0A.SM0zJ8dugGd3zl1zFV6ZWqQctxDSLoR+cEgmrXiM1fFMZ3W9kewfwv+V1xVTFhHG4HGoTetF1vFRVYkkAULyN1wNXbiabJUJpPcuZ0tW3l27lYSaZSJcsntzkt.TTqFYgEVvu9q+JKYIKgO8S+TtvEt.1XiMzpV0JkO+d26dIgDRnLevCKszRznQColZp7+8+8+obirSdxSBTTMq5t6tyctyc38e+2m3iOdkw8w.G3.AJpVz2yd1iRKvchSbB1yd1CG3.GvnOFkaMnYLiYvV1xV3sdq2B.BN3fqRGqxtxUtBSe5SmsrksvG7Ae.G+3G2nxGZzng7yOeZYKaId3gGDe7wyCdvCT9wiJSCaXCAfbxIGFzfFD1XiMJSjCU2lZ9O9i+fKcoKQ8pW83K+xujErfEvHG4HqQS271Zqs70e8WS3gGNiYLigbxIGFv.F.t4lar90udhIlX.fe7G+QhHhHL3ZoEVXAyctykvBKLV4JWIQDQDnVsZ97O+yIrvBiniNZd3CeHgFZnJel4O+4iFMZ3i9nOhvBKLhM1XQud8L1wNVToREu5q9p7ke4WB.e3G9gDYjQRgEVHyXFy.GczQhO93I7vCmwMtwQd4kGwFarXkUVA.u4a9lXkUVQhIlHQDQDL5QOZxKu7pvto5+7e9O4K9hu..lyblCQDQDFDHid85YBSXBDVXgwEtvEXlyblXu81yt28tIhHhfQLhQvst0sHv.CzftdpJUp3jm7jJGiRRRzst0M9xu7KIrvBS4AIBO7vqRWuZcqaMsssskBJn.kJbQV7wGOlYlYzu90OkWqMsoMXu81WpuCVcKK4niNxjm7jofBJf+w+3ePXgEF+6+8+FMZzv7l27L5iix65rLsZ0xq+5uNgEVXL24NWToREyd1ytVK8qs0oN0IZRSZB+7O+yL3AOXhHhH3ZW6ZJ2i1d6smXiMVxKu7XbiabDd3gyN24NwAGbfW60dMtzktDQDQDTPAEPlYlIQDQDJObaIUYeOqpdrWxuGGTPAQ.AD.ojRJDUTQQTQEEolZp3u+9qDH1nF0n.fniNZF7fGrx09fCN3J89FxJusqlTFyLyLicricvfFzfXxSdxU548hqfBJfgNzgxy7LOC2+92G2c2cRIkTHhHhfgO7gSd4kGctycVY6m27lGZznQ4b2DlvDPmNcDWbwgs1ZqxDTzfG7fU9LCYHCAnntxbUIuIyDSLg9zm9PlYlIQEUTDYjQx28ceG0u90mV25VqjuTqVMyd1ylvBKLl8rmMpUql4N24ZPZYiM1vq+5uNgGd3r5UuZToREQEUT.Ud4Yi43u7tlTdToREW7hWjHhHBF23FG26d2i1291q7atF68dqJmqLleWQ3IKt6t6.TpVyRtxHJutrsEVXQY1KpxKu7JywlsPciZ0ftjCXHiLx.IIIZbiaLPQ03DfAcYsjSNY.n4Mu4FUZe+6eexLyLocsqc7ge3GxK+xurAeV4H0czQGYQKZQrnEsHVvBV.pToB2bysZ7wlLarwFxM2bUlrJxM2bI+7ym5Uu5AT0OVqtcoHIIITqVMu3K9hjd5oShIlHlXhIF8CtIOyIoUqVd5m9o4m9oeRo6+TSlMahM1X4+9e+uTPAEP6ZW6Xjibjr90ud93O9iM5.BKtLyLSV0pVERRRbm6bG9nO5i.vfYXxxyIO4IM3goV25VGCZPChssssATTqojZpohYlYFlXhIXiM1fs1ZKm9zmVoVDu3EuHSe5Sm0u90ikVZY4tu5PG5.Ymc1r7kubjjjHszRiMtwMhJUpTdPn1zl1Pt4lK+6+8+lBKrPxLyL4se62tJeNo3V6ZWqA0Pe6ZW6HmbxgO4S9DJrvBI6ryloN0oBfAsL.fxCHdwKdQt6cuK50qm0st0A.IkTR7fG7.pe8qeEt+0nQCaZSahMsoMwW8UeE+6+8+F0pUWlsNV7wGO5zoigNzgp7ZiYLiQ43njpNkk5d26NpToh0rl0n7iRIlXhjbxIS8qe8qVkAKKe629sjTRIA.G3.GfScpSgUVYkx8Aps3kWdQfAFnQ+ecu6cuLSG4VQzEWbgl27lSgEVHwDSLJsZnbWtdEqXEjVZogjjDKaYKiG7fGPG5PGpR44J66YUUk76wxU70q8ZuF4me9je94yLlwL.9e2WPthLdpm5oPiFMr+8ueFzfFDqe8quJu+KoZRYrryNaV4JWoRMTWUNuu90udxKu7H2byUoxFW1xVFEVXgb+6eetvEt.ZznAUpTg0VaM1ZqsbpScJkycW8pWkMrgMnzx1G4HGg7yOe5YO6ox9vWe8kbxIGRJojpVkIjqvTqs1Z5Tm5D.rvEtPFzfFDW7hWDqrxJzpUKG+3Gme9m+Y.3m+4eljRJIr2d6Mn7wYNyYHojRBIII1912N5zoCu7xKfJu7rwb7WdWSpHyYNygBKrPRKsz36+9uGUpTwS8TOEPU6duFy4Jv39cEgmrzzl1T.J0LAb1YmM.k4uYas0ViJUpT1lhKu7xCKrvh5fbpPYoVa1KTRRxfaZU7VqRilh1MEeJRU9eK+dFi29seaF3.GHd6s2z111Vd8W+0Ycqacb3CeXken6nG8nkpVKqJcevJiJUpJUPI50qW4GAppGqk0XmxXTPAEnz8ljCDwbyM2nmFZk6m4su8smbyMW1zl1jRqHTS5u3RRRJA81nF0HBKrvHjPBgV0pVw68duGu5q9pUozqjiYD4VorxlUCAJU27wTSMkoMsogWd4kRWDo3j+QrRNtHRJojTd.6xhJUpvFarA.14N2YodeO8zSN3AOHVZokkp0etvEtPMpKkU7.tjeXqRtOxHiLPmNcFzEBjjjL36E50quTkqMlfukjjTtQtbsk84e9mq7.2EWgEVHG9vGF+7yObxIm3N24N3omdRJojRoFufxocUsrjGd3A.kpEiuvEt.su8sGO8zyZkwNk7C8JK4jSFu7xK7wGepUmk6dsW60pRsTrNc5HxHirTu9wN1w37m+7z111VVxRVBETPAjTRIwhW7h4l27lJm2l7jmbops+JpxFJKU12yppJ42iaW6ZG.kYYL4x3KcoKk+0+5eQzQGMiYLigLxHC9lu4aJyOSUUMoLVIenmpx48hWy1x+Vaw+dSwu2u7XjTt6tJ6jm7j77O+yiWd4EIlXhb3CeX5Uu5EMnAM.qrxJrwFaTpvjpSYBIII1wN1AQFYj7Vu0agd8542+8em0rl0vQO5QUtGam6bmKy6U5latQN4jC.kZ7Ykc1Yq7vgUV4Yi83WNcMFE+dcv+qkEjefVi8duF64Ji42UpJ8RGgGOb4KeYfh5ltEm7u+VViknbxIGjjjJy.xrxJqLXbNJT25QxTFu73FpCcnCJ+XjbSjZLyRfxzqWO+m+y+g+y+4+fiN5HyZVyh.BH.N7gOrRAQarwlRciupC4eLqoMsoFby+G7fGnLdnjjjvTSMEqrxJksupdrVc6RQYjQFzrl0LNzgND2912FsZ0hYlYVoBR4i+3OFSLwDtwMtAu+6+9Jud94mO5zoCMZzvJW4JUF+R.U6yeVXgEXkUVwcu6cUpUtUtxUx5W+5Yqacqkp6UVxZDtrd3L4wvfL4VRn5bSh24cdG7vCO3pW8pbjibDt8suMCe3CWYBhQdbMTU6NjxAMoWudV0pVkxqqVsZTqVMG4HGAIIIjjjJUWBQdLUUaPRRB850Wlc6D0pUavD8PsE850y3G+3AJZLmM6YOaFv.FP49vsqd0qF+7yOF6XGKW8pWEUpToz5ZEWUsrjL4JLPqVsF78V4tSTwG36krRPJ9XJqxTxxHxiEyh+Pv0jzWl7fe1XUdSjCRRRLkoLEbwEWX.CX.z0t1U71auYIKYIDUTQobdKgDRvfyaVYkUkZxBvXxyUz2ypoxJqrvRKsjku7kavqakUVoTgI+xu7KDUTQQvAGL96u+zwN1QhN5nod0qd74e9mWi2+fwUFyXSqZiy6EmbsfWxtJtbYI4tYzF23FoW8pWDUTQobeC4wzT0MuspUsJ15V2JCbfCjt28tSKZQKXVyZVL0oNUkueb8qecCl0fsxJqH2bykTSMUiZLEWYkmM1i+ZKU268VQmqjqP1J52UDdxi7DshbupRlbkQIOwwUR2+92uTAcYhIlTlO2nPcm5joL9R5Dm3DnWud7wGeHzPCkvCObb2c2UpcJnnaF1xV1RZYKaoRM7zxV1Rk9mZCaXCIt3hCu81aZPCZfx.bVtlmxImb3ZW6Zzt10NhIlXnUspU3t6tyDlvDnu8suU47rbMHIOq4I2xJG+3GGUpTwTm5TwGe7Qo6Cb3CeXi9Xs1vt28tAJpKq0912d9m+y+I.kpacIOHqKq0Ape8W+U.nG8nG3omdR+6e+qzYEtJxPFxP3K9huPYbAHK+7yG850yCdvC.9esxVG6XGU1F6s29xLO5hKtXPfWQDQD.TpYXpRFbVYo0st0nSmNlvDl.qYMqgDRHAC5NKm8rmUI3yhGHzDm3DY4Ke4kJ+U7I8D4tT6d26dI93im3iOd9oe5mLHct6cuKMrgMzfGhtpNlopLk09n28t2nRkpR0Bd01N4IOIolZpzvF1P5Se5SYtMokVZbsqcM5bm6L8u+8mbxIG9ke4WJ01YrkkJI4EHxhON8ToREcpScRYcNCJ5AYbxImL3yVx+VVYM41DTPAYveKWgExkKqoourye9yyQNxQL5+qjs.mLWc0UBO7vI8zSmkrjkvXFyX3Tm5TXpolRaaaaUNuYhIlnT9M93imzSO8RErXk0EMqrumYrG6kG4xwojRJJ4yDRHAzoSmx9ou8su3gGdvt10tXFyXF7bO2yAfAcqLv3tuQI2NisLlwnpbdupH4jS1fJRSl73oTtBAu10tFYlYl3me9QW6ZW4V25VJArTcxaZ0pkvCObzpUKabiajW9keY9rO6y.fd0qdozcAKYZlbxIi4ladUZMlrhJOarG+0lpp26sxNWAF2uqH7jk7yOexKu7vCO7vfJUPdbrV7Vfu3UBv0u90wJqrR4Ymghl.0ToRkxPfQntWsRKcUdcOJ4WWmNcr10tVd9m+4U9gJ850ypW8pU1lHiLRCFDrsrksTY1mZRSZRHIIgKt3BuvK7BJocZokFaXCaP4yrnEsHd4W9koicriJOPegEVX4FrSE0stt+8uO6cu6k.BH.F0nFEYkUVL8oOc95u9qwUWcEWbwEkYXnKcoKoLceaLGq0FN9wONcnCcft0storXxt+8u+pzWdV6ZWqxL4nu95KEVXgrxUtxp8X55q9puhm4YdFF8nGMsssskie7iiVsZY.CX.nQiFk.SuxUtB50qG2byMdi23M3BW3BJCP5RxTSMkO6y9LRHgDnYMqYDP.APAET.6YO6AnnVVTmNczwN1QF+3GuAy7gkT5omNMu4MmoMsoQxImLAGbvkpUDN7gOLcu6cmktzkxO7C+.st0slt10tR5omtR224vG9vL7gObF9vGNZ0pk0u90y1111X7ie7rhUrBRHgDPsZ0Dd3giYlYlxLX2+4+7eH5nilktzkx+8+9ewAGbnJstpYL9pu5qHlXhQYeXmc1Qe5SePmNcr8su8Z08UYYdyadr3EuXhIlX369tuqLKyuoMsIdsW60vFarobaQLisrTIczidTt28tG8pW8ByM2btvEt.O0S8TnUqVNzgNjx1kVZogSN4Dye9ymCcnCQfAFnRW4QVYccVlat4Fu268dbxSdR5Uu5EN5nijTRIozx00zzu1lmd5Iie7iWYrVoVsZZe6aO50qWYIZHqrxhPBIDzpUK+5u9qzst0M7zSO4W+0ek+u+u+OkiKmc1YhKt3HwDSzfo9ZYF62yptG6aYKaA+7yOl8rmM6YO6gacqaw.G3.oAMnArxUtRN1wNlxT1+N24N4rm8rJqsXxAEWV22nrl0AKqsyXKiYLN1wNlQcdupRRRhicriQW5RWXQKZQbvCdPZW6ZG95qujYlYpTgaPQUf2vG9vUN2VSxapUqlwO9wSAET.adyal6d26pbu8CbfCfjjDm3Dm.e7wG9jO4SX+6e+3ryNSe5SeHu7xist0sZTGeUV44pxweskp58dqryU.F0uqH7jmkrjkvTlxTXQKZQrsssM5RW5BN6ry7a+1uo77te3G9g3t6tybm6b4.G3.L24NWV8pWMwEWbzhVzBryN6HjPBgbyMWCZIUg5V0JAcIW6LEm7zoqrie7iywO9wUFzqkr+Zul0rFVyZVS4tORO8z4ke4WlF23Fi0VaMW9xWtTcMu6e+6y68duGVXgE3ryNqr1CUxG76zm9zLoIMoJ835q+5ulu9q+ZCdMc5zw7l27vZqsll0rlwUu5UKUstWYGq.J0ZUMw5V253K+xuDWc0URIkTJyfkpnYiIc5zw69tuK1YmcXu81qzEMqtxKu73UdkWgYO6YSO5QOTVPQkjj36+9umO9i+Xks8i9nOhXiMV7yO+vO+7iTSMUko1W4OCTzXdyImbhQNxQBTTKa91u8aaPeqe26d2z+92eBO7v42+8eubCx9C9fOfO7C+P72e+we+8m6e+6yEu3EUlon.X1yd17Nuy6fmd5ox9LszRSY17CJZraboKcIZUqZECe3CmMtwMR7wGO1au8DVXgo7.L4kWdrvEtPktb51111vYmcl.CLPkIShDSLwJMvK4x4FSWQcm6bmT+5WehLxHU1GYmc179u+6WlqcGxpNUHPYketxUtBm9zmFO8zSd1m8YY8qe8Jam79X+6e+L4IOYL2byMX5YVtKXBUsxREmNc5XhSbhrvEtP5ZW6JcqacCc5zwQO5QMn609Vu0awm7IeBt4la3latQt4lKW8pWEmc1YksortNKaW6ZWDbvAimd5IRRRb4KeYl9zmdMN8qqlAC+lu4an8su83u+9qLi78fG7.lyblix3wcRSZRLu4MO5V25lxDxwYO6Y4Mey2TIc1vF1.SZRShd26diVsZKyftLlumUSN1SM0TY1yd1LkoLE5e+6OPQkK14N2I6XG6.nnw+6Lm4LYfCbfLvANPkG1eYKaYJoSIuuwt10tJy8WYscFSYLigwddujLlyUyZVyh4Lm4PG6XGYTiZTHIIwMtwMHt3hyfuuu8sucdlm4Y.JpbRMIukQFYvxW9xYricrL5QOZfhpzwMtwMpDv6a9luIu268dzgNzAhN5nU9byblyrBOdjjjTNtqrxyUki+pqRdeYi4duEe+ZLmqLleWQ3IOe228c3iO9P.ADfR26+l27lFLwbUxx3omd57Ye1mQzQGsRYoryNalyblSMZxSSnpQUiabiqv693gGdnTqPE+GMEdxi7.GVVwKaTR0qd0CO8zSRO8z47m+7k6Ox0jlzDxImbpzIuCGczQd3CeXoV.SkoQiFrzRKMpAEsc1YGVXgEkZwTsjZVyZFokVZk6rZk4laNZznQYfeW77pjjTolcgpJocsAGczQxM2bqSFKWOJYrkkJISLwDZTiZTE9vI0qd0CKszxJrrPwuNGczQSTQEEScpSkjRJIb1Ym4l27lk60wpZ5+nfSN4D+we7Gk63hTiFMzzl1TtwMtQ49iwVXgETPAETgO7uw78rZ5wt7LNZ4cM1JqrBGczwRsFbIyXuuQ4scFSYLikwbdu5xImbhadyaVsCpu5j2bvAGPkJUU33+p4Mu4bm6bmZz8nprxyxaSM43upppduWi4bkw76JBO9ohdNKUpTQW5RW3rm8rk48vLyLyJyw4awqHPgZeU30LQPWBFqpRPWBBONp3AcUcm4QEDDDDDLFhmy5uepnqYUoIRCic5HW3wOhq8BBE0USyJqrdj0pTBBBBBBBOdnJMltt28tGMpQMptJuH7WX26d26O6rffve5RHgDTlzbDDDDDDDDLVUoftj6ynZ0psLmduEd7S94mO26d2ynW.IEDDDDDDDDDDLTUd1KL6ryV7.3BBBBBBBBBBBBFoGIKNxBBBBBBBBBBBBOoRDzkfffffffffffPcHQPWBBBBBBBBBBBB0gLp0oKAAAAAAAAAAAAgJV4sNcYTSjFhElMgxhXQ6SPPPPPPPntg34r96mJpwpDcuPAAAAAAAAAAAg5PhftDDDDDDDDDDDDpCIB5RPPPPPPPPPPPnNTUdwQ1VasEsZ0h4ladcQ94IF4me9bu6cOwBMsfffffffffvi4pRAcYqs1RiZTipqxKOQwbyMW4boHvKAAAAAAAAAgGeUk5dgZ0pstJe7DKw4TAAAAAAAAAgGuUkB5RzkBq88314Tu7xK5PG5PEtMsoMsAe7wGznw3an0QNxQxxV1xpvsoIMoI7EewWvHFwHL5zEf25sdK9W+q+UMJMLFd6s2rhUrBb2c2qURu.CLPVzhVDqcsqEmbxoZkzTn7Uae8SPPPPPn5xImbBe7wGLyLypzs0SO8jwO9wSyadyeDjyDJOU4wz0elV3BWHpUqF.N9wONqcsqsNae0912dbyM2HojRhyctyUk+7t6t6z8t2cJrvB4G+wejye9yWGjK+qm4Lm4..wFarbwKdwR891XiMrvEtPToREQGczjd5oaToaG6XGoYMqYJ+ss1ZKScpSkDSLQ1291G.zpV0Jr2d6oqcsqroMsIiNO2gNzAJnfBpQogwn4Mu4zjlzDZXCaHIkTR0nzxQGcjW8UeUjjjH0TSE850WKkKezyGe7gAO3AyxV1x3ZW6Z+kM8qMu9IHHHHHTcMwINQ5e+6O.7JuxqvEtvEJysqd0qdrpUsJrzRKAfvCObt4MuIie7iGIIoGY4Wgh72pft1912NZzngnhJJrwFapS1Gd5omLzgNTpe8qO.T+5W+pbPWAETPDYjQRgEVH.zktzE17l2LG7fGrVO+9WUQGczLiYLiR85iZTiBUpTUiSearwF71auImbxQInqCdvCxK+xuLW8pWsZmt0FowiB95qu.vl1zlXiabi+ImapYb2c2wau8lVzhVTmDzUcc5KHHHHH7nfiN5HyctykF0nFgNc5pzdLz69tuKVZokDe7wSBIj.+i+w+fN0oNwjm7j4S9jO4QTtVPVsdPWlXhIJAaTdToRU4Fgs7CjWVuubPKQEUT0J4ixxfFzfnd0qdbxSdR71auqxed.F3.GH4kWd7FuwafolZJyctykAMnA8DQPWRRRnRkJ7xKuvLyLSoEjjETPAUpOy.G3.wRKsjst0sp7ZsrksjPBID1912N25V2xfsuCcnCLfAL..ncsqcLgILA14N2I2912lPBID9ge3G3Lm4L3latwS+zOMqacqid26diO93CW5RWhcsqcwctycJy7uEVXgAogL2c2c5ae6KpToh8t28xoO8oUdO48y1111H3fCF2byM9nO5iHiLxnbOOEbvASO5QO35W+57se62VpiQqs1ZBJnfvKu7hyblyvd1ydTlvUBMzPI3fCFnnVjMlXhgUspUwCe3CwVaskd26di2d6MojRJjXhIZPZGTPAQiabiYe6aeDQDQfs1ZKevG7A.PiabiIjPBgl0rlwAO3A4fG7fnSmtx8X.nR2eiabiiyctyYPY+.BH.Ze6aOKe4Km9129RW6ZWUNt7vCOXoKcoXs0VynG8nYe6aeXgEVP+6e+492+97se62ZPKnVcS+x69O1XiM7zO8SSm5Tm35W+5jXhIRpolZ4d7alYlQTQEEssssk+3O9CN3AOHG8nGU48G0nFE25V2hacqaw.Fv.Pud8rgMrAt4MuIAGbvzyd1SxHiL3a9lugqbkq.P0pbqffffvi+5e+6OMrgMju5q9JzpUaY9LUxZcqaMspUshTSMUV9xWN.LyYNS1xV1BAGbvhft9SPsVPWQFYjzst0Mr0VaQRRhryNal9zmtAayS+zOMCX.C.yM2bjjj3d26dL24NWt+8uOQDQD7TO0Soz2TevCd.abiajSbhSXz4ASLwDhN5nwSO8D0pUyCe3CIgDRf8rm8Xzowl1zl3RW5RnUq1pUPWd3gGnQiFN7gOLO7gOjALfAfJUpvbyMmVzhVvku7kqxo4e2bu6cOzpUKOyy7Lrt0sNkW2O+7CKrvBk2W1fG7fwN6ryfft5Tm5DgFZnb5Se5REPRm5TmvO+7C.bvAGne8qe7q+5uR94mOgFZnXgEVvYNyYnG8nGDZngRO5QOn90u9HIIQW5RWXXCaXDWbwUlc4S6ryNCRC.l5TmJADP.JaSe5Se3fG7fJAqHue5cu6MVZokHIIg81ae4Fz0K7Bu.Z0pEIII5ZW6JCZPChYMqYo7v5MoIMgktzkhFMZT1lQO5QyK8RuD27l2j90u9QKaYKAJZbF4omdxl27lwFargEsnEYvma3Ce3L+4OekVCLxHiDWbwEhJpnvTSMUIn39zm9vq7JuBPQAN28t2chN5nI5nitbq7hl0rlYT6uye9yaPPQgEVX3t6tqDTTKZQK.JpKj1912dV1xVFN3fCDZngRO6YOUNWoRkJBN3fYcqac7ke4WViR+xJnKmbxIV7hWrxwiu95KQDQDrhUrBhO93K01Wu5UOV8pWMVXgEJ4ufBJH1wN1AqbkqD.FxPFB50qW49ZpToh.BH.RN4joicriFbbMwINQt10tV0pbqffffvi+90e8W4HG4HbtycNhM1Xqvssicri.v+4+7eL30+we7GInfBBWc00JrREEp8Uqr3H6pqtRPAED4kWdr0stU10t1EO7gOzfswe+8mAO3AiJUp3PG5PrqcsKL2byU5lfN6rybkqbE1wN1AIlXhnRkJF23FmR27yXDSLwPm5Tm3V25Vr6cuaxM2bIhHh.GbvAiNMNub2+1t...H.jDQAQ04OeMZ7wzjlzD.3BW3BT+5We5Se5C+we7G.7DyjcvUtxU3AO3ADZngZvqOhQLBjjj3vG9v0nze8qe8DSLw.TzMOhHhH3.G3.k61qUqVd8W+0IrvBi4N24hJUpX1yd1F09JnfBh.BH.RIkTHpnhhnhJJRM0Twe+82f.w.Pud8LgILABKrvJ29WMTTfcu8a+1DVXgwLm4LQRRRYh7.f4Mu4gZ0pY1yd1DVXgwrm8rQsZ0L24NW.3e9O+m7EewW.TzXnKhHhf6cu6w7l27PiFML24NWBKrvXBSXBnSmNhKt3vVasUI8UoREW9xWlQNxQxfG7fwd6smXiMVxKu7XbiabDd3gyN24NwAGbfW60dsx83vX2eUjW8UeUk.n9vO7CMna4BEcsasqcsDVXgw+3e7OnfBJfQMpQQiabiqUR+ha9ye9nQiF9nO5iHrvBiXiMVzqWOicrisL6RrQDQDnVsZ97O+yIrvBiniNZd3CeXoJ2at4lyRVxRHrvBiO+y+bTqVMcnCcfYLiYPXgEFaaaaC0pUWpOWMobqffffvieN4IOoQOjWZcqaM.jRJoXvqKO7IDSJTO5UqDzkbMIuu8sO1+92OIjPB7Vu0aYv1DVXgA.uwa7FroMsIRHgDXpScpjVZoA.KZQKhO9i+XRLwDI93imcric.TzXrxXXlYlg6t6N24N2g2+8eehO934cdm2AIIIF3.GXswgoQwd6sG.xJqr3kdoWh7yOe95u9qM38dRvd1ydvVasEu7xKfhZQJWc0UN4IOYk1k0ps8se62pLwGbfCb.N0oNEVYkUTu5UuJ8yFXfAB.u1q8Zje94S94muxXUye+82fscsqcsF0XA6PG5P7K+xu..m3Dmf8u+8iFMZnUspUXkUVgVsZ43G+37y+7OC.+7O+yjTRIg81aOlXRY+UVqs1Zr0Va4Tm5TJAfd0qdU1vF1.pToht0stYv1OyYNSxJqr.fd1ydhJUpXEqXEjVZogjjDKaYKiG7fGTtyDkU08W000t10TZAzqe8qypW8pQkJUzyd1yZkzWlM1XC1Zqsb5SeZ16d2K.bwKdQl9zmNqe8qWYPHWbqacqiAMnAw1111.f6bm6PpolJlYlYFbcJ6rylcsqcAfx1d8qecN0oNE.rksrE.LXhhApYkaEDDDDdxlbCNH+b1xjm.yL1JuTn1SsR2K7PG5PL3AOXF5PGJAGbvboKcI15V2J2+92WYarxJq3t28tje94q7ZEuK9zt10NF8nGM0qd0yfZU1XmvLb0UWAJZPFtnEsHCdO2byspygU0h7wW26d2ooMsorjkrDkigRN9ldb15W+5IrvBiQO5QSbwEGiYLiA.97O+yoe8qeORyKm7jmzf+N4jSFu7xK7wGeT5Fbkm10t1A7+dX4hStLmLicx2n3iUL.RJojHv.CjN0oNQSaZSAfN24NyN24NK0mUdF0rj7wGe.nTc8rSdxSxy+7OOd4kWjXhIBTz26xImbT1FO7vC.XxSdxL4IOYC97kUvFU08WMQIqgticriATTMzs8su8Zb5Kqycty.TpZPLojRpbmoBM0TSYZSaZ3kWdg4lad4NAwTxE+7Rd9u3+6hqlTtUPPPP3Ia27l2DO7vCZdyatA+NlbutRdbDK7nSsRPWETPAL8oOcFxPFBsssskN24NiO93CSaZSyfGnnjc4PYlXhI7hu3KholZJe+2+87a+1uQyadyIhHhnbqY+RRdLSbzidzR0UyxKu7plGYUc28t2E.5ZW6Jm6bmijRJIkfLpnIVgG2jat4RxImLsu8sGas0V72e+I8zSuTODsrRdc1TSMsVKuTxEfZ6ryN.HyLyrR+rYkUVXokVpLHTkYkUVUsVJApn7ycu6cUxSxSvFEe+kat4Vt8+Z4xVkra8IuujKWVVjawqDRHAClc+rxJqJ2Itgpx9qjytRxK6CFiRVoKxc2X4traMM8kIWSfUkEq724cdG7vCO3pW8pbjibDt8suMCe3CuVqEsqIkaEDDDDdx1EtvEnu8suz5V2ZCB5xEWbA.9se629yJq8DqZktWHTTs494e9mya7FuAae6aGUpTwS8TOkx6me94SCZPCJyfnb0UWwBKrfibjiv12914bm6bJEJJKO7gOT4APjIOAUXiM1vktzkL3+t90udszQYQZSaZCe5m9o7oe5mxfG7fM38N6YOKPQiumUrhU.fRWzphFmOONZMqYMnRkJVvBV.lZpokYqEAEEflolZJN5niJuVks.KKyZqstR2lRN69HOcqWxVbprHGXUJojBwGe7JS6p5zoynqPfRpjcKQ4+9nG8njTRIgjjDlXhIJ6u3iOdRN4jwbyMub6ZlImbxJS9CEmb.+EeF0qjja8nRtOSO8zK2.XL18md85K0XYr7Faik76zPQyNiEO.b4w8j7rGYMM8kc1ydVkimh2hUSbhSjku7kWlKh4st0sFc5zwDlvDXMqYMjPBITsKSTVpIkaEDDDDdxiEVXgx+Vt2RT7Y7ayLyL5QO5A59+Yu67vppp0G33eOLcXVTQFDDvQbfIITPEGAT.Eb.sHyLIKud0zqkZpYSWy7lUZCpkUlkYp4T40bFL0TuNkCo47DfCHhfHJHHmime+AOm8ONLdPAm58yySOI6y5r2q85r4v9cuVq2kFMkJIkIp4UszSWcpSchl1zlxV25VofBJPIq+U7mZ9N24NIrvBi24cdGV25VGYkUVzm9zG9tu6637m+7nUqVZUqZEMqYMi.BH.k4BTYI4jSll1zlRu6cu4RW5RbhSbBt0stEW7hWDu81aF9vGNIlXhnVsZ5RW5Bm4LmgMsoMYTmK0st0k1111pby70u90mnhJJRN4j43G+3.Ecyo5uwrRN7qtxUtB23F2.6s2dBIjPPkJUznF0HxLyLI6ry13aTeBvwN1w35W+5T+5WeznQiA8bSIKmWd4EyXFyf0u90imd5Ist0stB22okVZnQiF7wGeXXCaXr5Uu5xMMf27l2bl1zlFG5PGhN0oNgiN5HG6XGynVRAV1xVFcnCcfoN0oRhIlHW4JWgd0qdQ8pW8XdyadJArTU3t6tyLm4LY26d2z111V7zSOI0TSUo2aN3AOHAFXf74e9my1111nAMnADVXgojnZJK5zoi8u+8SPAEDyd1ylcricf2d6MsoMsgrxJKNxQNR4Ve1+92O4jSNDYjQhCN3.G4HGgfCNX7yO+3HG4HrwMtw64iW5omNt4la7we7GyN24NoKcoKkp2q1yd1CwGe7De7wiCN3.+3O9iJulUVYEe0W8UjXhIRiabiIjPBg7xKO10t1U0x9ujkKjPBgu7K+R98e+2oIMoIz111VxHiLLXXQqWFYjAd3gGLwINQN9wONQDQDUodJqxb+bcqPHDh+dwKu7hYMqYw0t10HgDRfzRKM18t2MgDRHL8oOc14N2IwFarXlYlw7m+7eXWc+aopkGKqYlYFADP.7pu5qxDm3DwSO8jCcnCYvZYzpV0p3fG7fT25VWd9m+44e8u9W3t6tiFMZPmNcr4MuYrwFaXzidzzoN0Ik4JRYcCFqbkqjKe4KSDQDACYHCgl0rlATTx3HszRCe7wGd0W8UYDiXDz7l27pzbopQMpQzyd1SkDnfKt3B8rm8zfjwQksJd+4e9myctycn+8u+DWbwQd4kGe5m9oFcc3wcE+yre8W+UfhVi0z2to+00++m6bmKW3BWf5V25xfFzfn8su8JKU.UzMXtoMsIL0TSI1XikV25VWtYcx0u90SKaYKYvCdv3omdx4O+4K0xYfdkbejbxIyTm5T41291DUTQQBIj.N5nirl0rFkj8RUURIkDMrgMjAO3Ai2d6MW5RWhwMtwo75u8a+1b3CeX7zSOIgDRfvCObxJqrXricrJkojsg.7tu66xe9m+IMnAMfAMnAQPAEDW9xWlQNxQVgWyVXgExq7JuBomd5DbvAyK+xuL94mebhSbBd629sK22mwb7dm24cHu7xil27lyPG5PwUWckTSMUCpOm9zmVYYZH93i2fdK5fG7fXiM1vy8bOGgDRHjc1Yy3F23T9c5628ewM0oNUNvAN.t3hKLvANPZaaaKomd5F7YSw8AevGvst0sHzPCkW9keYbzQGMXMD69UU45VgPHD+8RIumJ8+bw+6eevG7AjRJoPKaYKYXCaX3ryNqLpxDO3oxEWboBifvWe8U4oVqO8SVVL0TSwc2cGc5zUgIT.SM0T7xKunvBKjKbgKXvEG56UnKbgKbekzIrzRKoAMnAjWd4wku7kqzfjpoT+5WezpUaoxbLkT04Mp8fTwu1n5fkVZIN4jSk55hJhYlYFVYkUkJYE.PBIj.wEWbLgILAN1wNFMnAMfzRKsxctEVYzmg6RKsztmd+kjat4FW6ZWqL6EE87vCO3ZW6ZjWd4Uk22okVZU4dEwLyLi5W+5yku7kqRYYxJ63Yu81iUVYUE96BpUqFyLyLxM2bwSO8j4Lm4v5W+5YNyYN3ryNysu8sUl+Y2u6+Ji6t6Nomd5F00J0pV0BKszxJ82yMVU2W2JDBg3wSU06yxbyMuL+aEVas03me9we7G+wC7LH8e2TQelUss3HqUqViJSnnUqVN6YOaY9Z5zoqbesph7yO+GIl+TW9xW9gcU3wJ4me9FcF.TOMZzTlAbURU1CCvXbqacKCxHm2uLl4Z38Zc9dcdLpQil6oiYkc7xImbJ2.lzSeJ4urTYAzb+t+KohOznqL23F2vfD6Q0opiqaEBgP72Ck2CmKu7xSYYnQ7vSUZ3EZr2vhv3Iso0bRO8zImbxwn5YCwiVxO+7ImbxoZqWEebhbcqPHDBwSdpRCuP6ryNb1YmefTw96hzSOcipmZdTT08vKTHDBgPHDEQtOqG+TsM7B0GbfCN3PYlBkEFuBJn.xN6rerMfKgPHDBgPHDFmp7b55l27lRfBBgPHDBgPHDFopuUxSgPHDBgPHDBQoHAcIDBgPHDBgPTCRB5RHDBgPHDBgnFjQk8BEBgPHDBgPHDUr6qrWnjtJEkEIUlJDBgPHD0Lj6y5wOUTmUICuPgPHDBgPHDhZPRPWBgPHDBgPHD0fjftDBgPHDBgPHpAUkWbjs2d6wFarAKszRL0TSqIpShG.NyYNyC6pfPHDBgPHD+sPUJnK6s2dbxImpopKBgPHDBgPHDOwoJM7BswFapopGBgPHDBgPHDOQpJEzkkVZYMU8PHDBgPHDBg3IRUogW3Ch4vk4laNZznAc5pv0r46K5OOzpUaM1w3QEcpSchV1xVRVYkE+1u8absqcsG1UIgPHDBgPH9akGoxdgd4kW7IexmPW6ZWqQONuwa7FL8oO8ZziwiBF0nFEO8S+z3s2dSG6XG4sdq2h5W+5+vtZIDBgPHDBweqTsGzkJUpdfrOpNNNFKSLoralJusWbUV8zXNOLliSI4latg2d6MImbx7pu5qx28ceGlZpoDe7wWk2WBgPHDBgPHt2UkSY7kmm8YeVBIjPvTSMEsZ0xV25V4W9keQ40m4LmI+9u+6rpUsJ.nG8nGzidzClzjlDt4laL5QOZk.P5cu6MwDSL.vm7IeBojRJDbvAyy9rOKm4Lmgl0rlgJUpHiLxfYLiYPt4lKPQ8fUAET.yXFy..pe8qOiabiiktzkxd1ydXricrzfFz.L0TSQkJU7oe5mB.olZpLyYNSk55vG9vwc2cmCbfCPG6XGwbyMmae6ay3G+3wO+7im64dNr1ZqQkJUTXgExN24NYEqXEFbtd7iebZRSZB1XiMjUVYwRVxR33G+3.EEn0q7JuBMqYMCnnz2t6t6N6ae6iksrkA.1YmcLpQMJb0UWQkJUjWd4w7l273Tm5TF0mGgGd3.v+8+9eUZugh5MQgPHDBgPHDO3TszSWgEVXzgNzAxO+742+8em6bm6PXgEFsqcsSoLVXgEXu81q7y0t10FKrvBLwDSHiLxf0t10xt10t.fSdxSxZW6ZYsqcsjd5oC.VYkUXlYlQyady4XG6Xb9yedbxImXTiZTJ6S6s2dpUspkxOakUVgEVXgRVWbyadyr10tVxM2bQqVsJGiMsoMYv4iCN3.N3fCz0t1UxHiLXaaaabm6bG.vUWckacqawF1vF3+9e+ub8qec5RW5hACIRKrvB72e+Iqrxhcu6cSsqcsY.CX.Ju9y7LOCd6s2b8qec10t1EMpQMBqrxJbvAGTJyjm7jwUWckSbhSv1291wbyMmgO7gazelT25VW.3zm9zDRHgfat4F27l2DSLwDLyrpsXsEBgPHDBgPTIpVt66tzkt.TTfBZzng0rl0vG9geHQDQDJARUQt4MuIIlXh3kWdQngFJm3DmfMu4MWlk83G+3L24NW.3cdm2A2c2ckdWqxbnCcH.HjPBAyLyLRLwDqvxut0sNV+5WO.r7kub.XiabirwMtQfh5wpcsqcwG7Ae.93iOrksrECNmzOuwbwEWvCO7P40BJnfPqVs71u8aC.omd5z291WkWO3fCFas0V10t1EKZQKR47dXCaXzpV0JN5QOZkdtZqs1hNc5vBKrfm4YdFN6YOK4jSNz5V2Zk.xDBgPHDBgPTyqZInKas0VxKu7PiFM.Pd4kGETPAFzyVUWNwINgx+N0TSk5Uu5gqt5JW7hWrZ+Xs8su8RsM6ryNdkW4Un90u9FLerrxJqLnbImbxJ+6KdwKhWd4EVYkUb6aeaTqVMYjQFJu9gNzgLHnqlzjl..sqcsyfdKDfPCMTiJnK8eVjPBIfIlXBe0W8U77O+yC.ETPAU56WHDBgPHDBQ0ipkftToRkxM4qmVsZqvTLu4la98zwp3ALTXgEVg6K0pUeOcLzuuu0stUo19K+xuLt4lar28tWN7gOL27l2jwLlwTpjcwsu8sqv8ewSI928t20fWS+v+aAKXAjUVYYvqYro78acqagJUpvWe8kku7kSd4kG1Zqs.P1YmsQsODBgPHDBgPb+qZYNcc6aearyN6T54GyM2br1ZqURvEPQAV3jSNo7yMpQMpT6G8AtYmc1UtGqVzhVn7u0mTHt7kuL.jat4pDXA.96u+k49PqVs2yA84kWdw0t103G9gefCcnCQspUspxYRw6bm6fiN5nxOGP.AXvqmZpoBTzhQ8YO6YM3+twMtgQcLN+4OO.b0qdU1111FPQIVj7yO+pTcUHDBgPHDBw8mpkd55.G3.z4N2YlvDl.aZSahniNZ.XO6YOJk4ZW6ZzfFz.BMzPwc2cm5Uu5Up8yUtxU.f1291SFYjAYkUVb1ydVkjXA.95quDUTQgs1ZKN6ryjUVYoz6Wm9zmlPCMT5Se5C27l2jfCN3xr9lYlYR8qe844dtmiCdvCxMtwM3RW5RF045Uu5UwImbh.CLPr2d6oW8pWFWiTwbfCb.ZW6ZGu0a8Vb7iebBMzPM302912NwFarz+92eb2c242+8eG2byMBKrvXgKbgF0PoLwDSjt28tiCN3.94meDTPAgZ0pMp4XmPHDBgPHDhpOUK8z0u7K+BojRJ3t6tyK9huHt3hKb1ydVV25VmRY1zl1D28t2k3iOd5PG5fRuSU7gYmFMZHojRB0pUyy9rOKibjijFzfFXvw5l27lzyd1S5bm6LEVXg70e8Wq7ZacqakbxIGBO7vou8suJAmTxgu2JVwJHyLyj10t1wHFwH3kdoWxnOWW0pVE24N2gW7EeQ5e+6O4jSNnUq1RcLJ4OW7y0krjkvYO6YwImbhN24NqzyV5SFHZzngYMqYQAET.cnCcfIMoIwfG7fod0qdkZXbVdxO+7YgKbgXt4lyvF1vHv.CjKdwKxRVxRL5yUgPHDBgPHD2+T4hKtnqhJfu95KG4HGA3+OAOTdrwFavc2cmTSM0xcNM4omdxEtvEJyfRpHcoKcg92+9ym8YeFW6ZWC6s2dRIkTJyx5t6tSlYlYkNupte3gGdv0u904l27l2y6CSLwDk4c0K8RuDabiaje8W+UCJiCN3.N4jSjYlYRlYlYU9XnRkJZTiZDomd5FLG0NyYNy8b8Vuhesgd96u+nQilJLYezzl1TryN63vG9vFcPjOIZfCbfzoN0opzRAvCBADP.LxQNR9jO4S3XG6XkYYBO7v4EdgWfO5i9HN7gO7C3ZnPHDBwS9Jq6yROWc0U5YO6IG7fGj8u+8az6S2byMb1Ym4u9q+xfQRln5QE8YVUZ3EVYIGibyMWN4IOYEtOJu.kpJt90uNW+5Wube8ZhLYXIou2otWTu5UOF5PGJ6d26F0pUSXgEF5zoicricTpxlc1Yeek3KzoSGm8rm8d98WU89u+6C.iYLioLCryVaskYNyYhJUpHgDRvfr33e23iO9f6t6txOGXfAR+5W+XtyctU30vFa4LFCX.Cfl27ly68dumx17vCOvUWcEmbxoxMnqfBJHpcsqM93iORPWBgPHDO.MqYMKZXCaH.zm9zGJnfBXDiXDJqsskmQNxQRTQEE.7pu5qxoO8oqwqqh+eUogW3CyjvPAET.5zo6IldFwQGcj92+9SLwDClXhIrvEtvJLPxG2jPBITlaePCZPU4DOxeWzxV1RBHf.T9hz62xYLBMzPK249XEY5Se5LlwLFV7hW78ccPHDBgPXbd9m+4ogMrgbhSbBFwHFAKcoKE0pUq7PuKKN5ni7se62RTQE0SL2G8iipR8zUt4lK1XiM0T0kJzt10tdhIIPjQFYv3F23.JZ3+U7401i6zoSGpToB+82ervBKJUWWGd3gWluOWbwEhM1Xwc2cmKdwKxF23FU5UTas0VF7fGLacqaEKszRhJpn3V25Vr10t1R0aZd5omDUTQgqt5Jm6bmie9m+4xcHfV78qmd5IAGbvrgMrA18t2MlXhIzgNzA5bm6LW9xWlMsoMUpdUpMsoMzoN0IrxJq3u9q+hUspUo7Z8pW8BqrxJkEUannL1YjQFI+7O+yJIMF85d26NssssE.hN5nwWe8ku7K+xRcsQkUNe7wG5RW5B1XiMryctS18t2c49EruvK7BJYTT8OgrUtxUp75lXhIDarwR.AD.W5RWh0rl0n7TzZRSZBQDQDjQFYnjQMqJs8Mu4Mmt0stwJW4JIhHhfl27lym7IeBYlYlXgEVPbwEGMqYMiabiavN1wN3O9i+P48NnAMHtxUtBW3BWfnhJJzpUKKYIKoTKmB0qd0iHiLRZbiaLG7fGjssssw.G3.IwDSzfmtWKaYKo6cu6nRkJ17l2rzycBgPHdjUbwEGEVXgLoIMIJrvBYgKbgzxV1R70Weossssr28t2R8dhJpnvImbhUrhUfCN3P4duXhZVUoftxImb.JZtaYokVVgC0Pgw4Io.tzK6ryFGbvAdlm4YXgKbgJauCcnCXokVp755ERHgvjm7jUB.Mv.CjXhIFlxTlB6ae6i5V25RzQGMsu8sGGbvAk.6hHhHXgKbgrzktT.nqcsq7Zu1qATz5r1S8TOE8oO8ggO7gWlc4t98aW6ZWwJqrBc5zwEu3EYu6cuL+4OebzQGUNV8qe8iO4S9D17l2LPQCexvCObzpUK5zoiPBIDhM1X4EewWD.5W+5G0pV0xfftZcqaMQGczb3Ce3xLnK88bkO93CsnEsf4N24VlAcUdkaxSdxJKl15zoiN1wNxUu5U4kdoWpLmCk8rm8TYQ8tG8nGb0qdUCB55ke4WF6ryNzoSGsssskXhIFF9vGNW4JWg1zl1PzQGM6cu6k+3O9ipbae6ZW6JUaecpScnvBKj4O+4ikVZoRae3gGNqZUqh4Mu4A.8u+8GsZ0hEVXAPQO3hdzidvhW7hU54M+7yOd+2+8UtlJnfBh92+9SsqcsI+7yWInqILgIPG6XGUpWgEVXricrC9fO3CJUcVHDBg3gIas0VLyLyXe6aeJqUs.rrksL70WewGe7oLC55HG4Hr28tWN4IOIiYLi4AYUVTLU4TFeN4jiRvWBQYIkTRA0pUSzQGsAAc8rO6yhNc5XO6YOzidzCks2u90OJnfB3Mdi2fScpSQPAEDu669tLnAMH1291mR4bvAGXAKXAr7kubbyM2XVyZVLnAMH1111FW4JWgAMnAATzPa7ZW6Zz4N2YFyXFCQDQD7i+3OVt0WKszRl9zmNae6aG.dq25svQGcjUu5Uy27MeCN4jSLm4LGFyXFC6ZW6h7yOeBKrvHqrxhW7EeQznQCu1q8ZzwN1QZRSZx8TRJYbiabLnAMHhO934C+vOTotXrkKpnhh10t1wEu3EYricrTPAEvXFyXnKcoKLoIMoxbXG7zO8Sym8YeFMtwMld26dWpW2byMmDRHAxN6rUN+Fv.F.yZVypTk8dssWqVsLhQLBk4H4y+7OOlZpo7ce22wJW4Jod0qd70e8WSzQGsRPWPQK745C3tUspU7AevGPjQFoRPWuy67N.vTm5TY26d2zzl1T9nO5iL3XGd3gSG6XG4bm6bL9wOd.XFyXFDZngRG6XGK2OCDBgPHdXnksrk.Tpk4H822Q4MsCNzgNTMaESXTpVRY7BQIkXhIhc1YmxBTccqacwKu7hCcnCUpg61q+5uN8u+8mScpSATzWNTXgEZvhoMTTBRQeOGcoKcIl+7mOpToh1291CfxbEqyctyXlYlw1111nu8suU3M8q+3U7avtUspUbyadS95u9qQmNcjd5oyhW7hQkJU7TO0Soz6S1XiMz5V2Z.Xlyblz2912pkrB48B8q0aiabiibyMWznQCe7G+wje94SqZUqtm1mqacqiLxHCJrvB4q9puB.ZbiabYV16019ErfEXPRoYgKbgz291Wkdb6ZW6ZjbxIiEVXAlXx++WWc6aeakd37nG8njRJoPcpScvbyMGmc1YTqVM6ae6icu6cCTzZ32JVwJL3X2ktzE.X7ie7TPAEPAET.SdxSFfRs14IDBgP7vV8qe8AnTYyZ8Ck+ZW6Z+.uNILdUKKNxBQI8i+3ORLwDCCdvClwN1wxPFxP.fu669NC5kK.b1Ym4Mdi2.O8zSL0TSUtA9RlvMN24NmA+r9TjZKaYK4m+4elu7K+Rdy27MI0wwsVK...B.IQTPTgDRfgLjgPlYlI+5u9qFLj4JKEen9oRkJr0VaAf0rl0Tpx5me9w1291YUqZUzm9zGdm24cPqVsbgKbA99u+6MXtG8fjGd3AEVXgFrr..EM+AKdFRrp37m+7J+6ryNazpUKlYVY+UF2qs8kLKfZt4lyDm3Dwe+8G0pUWtIckRlzYRKszvKu7BKrvB7wGe.J80K+0e8WF7yd6s2.Tl0Qu7xqJrdKDBgP7fl9+trqt5pAa2QGcD.t5Uu5C75jv3UkB5pxVmtJtae6aSN4jy805Xk3wW4kWdb7iebZQKZA1YmcDZngRFYjQotQX.l8rmMVZokbzidTNzgNDYkUVLpQMJJnfBLnb5CFRO8OQG8Ixg8su8QbwEGQDQDDZnghO93CIjPBXu81y28cemQUu02KVZ0pku8a+VksapolholZpxXk9a+1ukku7kSu5UuHjPBgF1vFx69tuKSXBSPYMJq38LCTT.E0TxKu7LXdxomkVZoxhtcUUUY9FVcz1CvTlxTvWe8kTSMU16d2KW8pWk3iOdpScpiQuOzml6KYfSMu4M2feNmbxAqrxJCVf0AvZqstRW5KDBgPHdP6Dm3D.TpGlp9GhXYcOVhGcTiM7BsxJqvYmclZUqZUScHDOh66+9uGUpTwLlwLvbyMuL6QA6s2drxJqH4jSlINwIxO8S+jx5UVIS9CsnEsvf.WhN5nAPIay08t2c70WeY8qe8L4IOYd9m+4AnJmRzyLyLQmNcr4MuYV8pWMqd0qlcsqcozqKN3fCDarwhCN3.KdwKlQO5QqL765Tm5DPQAAYt4lq7zm.L5g4mw96LEubm9zmFUpTQHgDhx1bzQGwQGcznVKzr1ZqMpiY4o5psuIMoInQiFFwHFAe+2+8rt0stRE7ZkIszRiBKrPBN3fwO+7Cnn+.0y7LOiAkSefUm6bmS4y40st0gFMZpxGSgPHDhZZETPAje94iu95K1YmcJaW+7p9.G3.OrpZBiPM9vKzVasUomHD+8xwN1w35W+5T+5WeznQCqcsqsTkImbxAMZzfWd4ECcnCkbyMW5Se5SYNrxrxJq3q9puhDSLQZbiaLgDRHjWd4orTBLzgNTrwFaXMqYMbhSbB5V25FPoGVYUlUtxUxvF1v3a9lug0st0golZJwFarXgEVvN1wNvTSMkgMrgwctyc3m9oehqe8qSbwEG.JyMricrigWd4EyXFyf0u90imd5ox7+p7rm8rGhO93I93iGGbvgxc9PUVka4Ke4zwN1Ql3DmHIkTRjat4RjQFIpTohksrkUtGyidziRiabiYZSaZrl0rFRJojpRsU5Uc01mQFYfGd3ASbhSjie7iSDQDQY1CdUl+y+4+va8VuESaZSCMZzfYlYF27l2zff1W1xVFcnCcfoN0oRhIlHW4JWgd0qdQ8pW8XdyadJCeUgPHDhGU7EewWvq8ZuFyd1ylUtxURPAEDMnAMfidzipLRODOZpF+w4VSNjpDOZp38P0u9q+J.ricrCkgql9WW+++y+7OGsZ0Re6aeYPCZPb0qd0xbXodvCdPrwFa34dtmiPBIDxN6rYbiabJqEX+6+8+ladyaRu5UuXbiabz5V2ZN3AOHyctysJU+W8pWMqXEq.0pUS7wGOCX.C.c5zwLm4LIszRiLyLS95u9qwDSLgAO3Ay+5e8unN0oNr3EuXkfLl6bmKW3BWf5V25xfFzfn8su8bvCdvR09Tbm9zmlyd1yhCN3.wGe7kausTVkKkTRgoLkovsu8sIxHij3hKNL0TSYQKZQjXhIVtmqqbkqjadyaRSZRSXnCcnUZaSI+LTupq19O3C9.t0stEgFZn7xu7KiiN5nQkbRzWezOTJ26d2Kuxq7Jr10tVN9wONKdwKloO8oav6I4jSloN0oxsu8sIpnhhDRHAbzQGYMqYMFrlqIDBgP7nhe629M15V2JN3fCLrgMLBLv.IszRi+8+9eaTu+x6uiKp4oxEWboBm3F95qubjibD.CmSWpUqlt0stg4laNqd0qtBOHOrxnahZVE+ZipCt3hKjat4Vp.t7zSOYNyYNr90udlyblCN6ryJyYvxh0VaMN5nikJIMbuP+Z0UIyTP5U25VWToRUoVXd0yRKsDmbxItvEtfQOGoTqVMlYlYjat4dOUNarwFTqVMYkUVF0wS+6QiFMkZdzUUUc01WqZUKrzRKKy03KiwjlzjPmNcL8oOck18268dOZcqaMSYJSoTqiI1ZqsXmc1QZok18U8VHDBgn5REceVpTohfBJHNwINgj+DdDRE8YVUd3EpVsZdtm64n0st0JCArJKnKgvXTxEL3xSkci34kWdUKAbATtASoW4ELld4me9U45h9zW98Z4xM2bqz.1Jq2S0gpq19abiabeMrjs0Vawe+8G+82eRM0ToAMnAXu81Sd4kmAq8a5cqacqRk4GEBgPHdTkNc5Jy+dl3QWU4gWnGd3AAFXfjd5oKKRxhGHxO+7ImbxQ5EBgQ6Mey2jMtwMhVsZUxpSG7fGjgLjgTkxJiBgPHDBQ0gpbOccoKcI9nO5iHkTRgwO9wi81aeMQ8RHTjd5oy.G3.eXWMDOFQmNcLqYMKl0rl0C6phPHDBgPT06oq7xKORIkTpIpKBgPHDBgPHDOwQVLZDBgPHDBgPHpAIAcIDBgPHDBgPTCRB5RHDBgPHDBgnFjDzkPHDBgPHDBQMnpb1KDffCNXpScpCN3fC.PTQEE5zoijRJIznQS0ZETHDBgPHDBg3wY2SAc0m9zGryN6T94d1ydB.6ae6qRWrXEBgPHDBgPH96j6oftlzjlT0c8PHDBgPHDBg3IRxb5RHDBgPHDBgnFTMdPWZ0psl9PHDBgPHDBgP7HqZ7ftxO+7qoODBgPHDBgPHDOxpFOnqbyM2Z5CgPHDBgPHDBwirtmRjFUFsZ0R94mO4latjSN4TSbHDBgPHDBgPHdrPUJnqyblyTSUODBgPHDBgPHdhjj8BEBgPHDBgPHpAIAcIDBgPHDBgPTCRkKt3htJp.95quOnpKBgPHDBgPHDO15HG4Hk41Mp4zU48lE+8lu95qbsgPHDBgPTCPtOqG+TQcVkL7BEBgPHDBgPHpAIAcIDBgPHDBgPTCRB5RHDBgPHDBgnFTUdwQ1N6rCGbvATqVcMQ84uMJnfBH6ryladya9vtpHDBgPHDBgnFTUJnK6ryNb1YmqopK+shZ0pUZKk.uDBgPHDBg3IWUogWnCN3PMU83usj1TgPHDBgPHdxVUJnKYHEV8SZSEBgPHDBg3IaOxjHMFv.F.e1m8YJ+mIlT9UsXiMV93O9iK01ey27M4Ue0WslrZpvLyLqBqiBHf.Bf+4+7eRO5QOvd6s+gc0QTCyYmcl.CLPC9uxpmb0Wt5V25Vt6Kas0VBLv.wCO7vfsagEVPHgDBCe3Cm92+9WpW+wMyYNyg268duZ7iSW5RWX1yd1rfEr.byM2Hf.Bfu4a9FZYKaYM9wV.gGd3rvEtP7yO+p11mk7yvANvAxbm6bq11+BgPHpdUkSjF0T1yd1CYjQFzl1zF7zSOqvxZu81Wl8Pj81aOlat40TUQCLyYNSN6YOKe1m8YOPNdONIt3hiAO3AiolZpx1F0nFEqcsqku7K+xp8i2.Fv.n4Mu4OPt40+NxN6riILgIPRIkDacqasbK2y+7OOcoKcoTaO+7ym2+8eeN3AOnAkK4jSlW4UdkxbeMlwLFBIjPHkTRgQNxQB.93iO7du26YvuiOjgLD1291GSYJSAc5zcueR9PfZ0pwCO7.Wc00ZziiiN5HiabiCc5zQxImLZ0pU435jSNwwN1wpQO90jL1qMePJv.Cj90u9wbm6b4hW7h.PPAED0t10Fe7wGN7gOb0xwojeF5iO9f6t6d0x9VHDBQ0uZjftLwDS3t28tUoWK0TSkTSMUbyM2pzft9we7G4G+werBKiJUpLpaBq7pOpToBf66ajqhZKdRTaZSaXHCYHnQiF9u+2+K+1u8azvF1P9G+i+A8rm8DUpTwW7EeQ05wLzPCkF23FWstOE++r0VaIf.BfbyMWi5FaWzhVDW4JWA0pUSm6bmwGe7goLkovy+7OOYmc1JkyKu7h5Tm5PVYkkAueSLwDBN3fAJJfM892+6+MlYlY7S+zOQhIlHt3hKL5QOZZSaZCO6y9rr3Eu3pmS3GPJnfB3EewWjBKrvZziSaZSa.fkrjk7XWaTkopds4CBsrksj.BH.ZXCanRPWSe5SmUrhUvYNyYdHW6DBgP7vR0VPW0pV0h+4+7eR8qe8wDSLAsZ0RRIkD+5u9q.vnG8nowMtwXpolhNc535W+5L6YOat5UupQeLhN5nI7vCG.t6cuKiabiqTkwBKrfoMsog81aOZ0pk0st0wF23FUd8ZW6Zya+1uMaYKaQ4oOBv5W+5Ycqacz6d2a5bm6LVXgE.vsu8sYwKdwJOk9O5i9HL2bywDSLglzjlvm9oeJ.r4MuYkyU6ryNF0nFEt5pqnRkJxKu7XdyadbpScppZy5iclvDl.pToh28ceW9y+7OAfjSNY14N2IKaYKiHhHBCB5xO+7it10tRsqcs4jm7jrl0rFkr4XyadyoacqarvEtP5ZW6JAFXfb1ydVV+5WOW6ZWC.dgW3EvImbB.FwHFAomd5rxUtRZcqaMgDRHLu4MOkap0byMmW9keY16d2K+we7GJ6+UtxURDQDAMu4MmO4S9DxLyLwFargvCOb72e+4u9q+hDSLwRkkI6Uu5EADP.je94yN1wNX26d2UXaiYlYFsqcsiPCMTt8suM6bm6j8su8A.0qd0iALfAv5V25H4jSV487LOyyvsu8sY0qd0.vfFzf3JW4JjYlYRO5QOHkTRgkrjkTtaGJ5l.6d26NpTohMu4MavSZO7vCGWbwE1vF1.wFar3ryNyu7K+Bm3Dm..ZUqZE8rm8D.71auYDiXDrl0rFRM0TK2yycsqcobNrgMrAdy27MIjPBgt10txu7K+hAkcHCYHLyYNSC1Ve5SeTdnG503F2XTqVM+4e9mJOvkzSOcF0nFEe629szjlzjJrsuhtNCJ52Y6cu6MMsoMkqd0qx5W+54bm6bk69Se68EtvEHpnhBsZ0xRVxRTttr362t10tR.AD.m6bmijRJItxUthxqGQDQPlYloAeGUkcckKt3BQFYj3t6tyN1wNXG6XGnQilxrdFczQSDQDA.zhVzBF9vGNe629sk64kO93CcoKcAarwF14N2I6d26tT66JpL1ZqsL3AOX15V2Jd5omDbvAyF1vFJ2e2n6cu6DXfAhJUp3HG4Hrl0rFCZGrxJqX4Ke4JaqQMpQDYjQxO+y+L0st0sBu1zM2bit0stQCaXC4.G3.r0stUt0stkx9R+mgW4JWgd1ydhVsZYQKZQjVZoQDQDAsu8smLyLS90e8WIkTRQ48YgEVPbwEGMqYMiabiavN1wN3O9i+P47ossssJs895qu7ke4WRSZRSHhHhfLxHCtwMtAPE+8AFS6SEoicri3qu9xBVvBH2byUY6gEVXzjlzD9pu5qLp8iPHDhpOUaAcM4IOYr1Zq4xW9xrm8rGZZSaJMsoMU40qW8pG+4e9mb1ydVZPCZ.sssskW+0e8xLvoxyQO5QAJZnZn+FsKI6ryNxKu7X6ae6DbvASLwDCm5Tmhye9yCTzP5wbyMmHhHBJrvBYe6aeXs0VqD7UCZPCHkTRgidzihs1ZKgFZnLzgNTdq25s35W+5rt0sNLyLyH1Xikqe8qy1291Avfgnyjm7jwFargSbhSv0t10TlCJu1q8ZUsF0GyXs0VikVZIm9zmVIfK8tyctCu268d3s2di0VaM4kWd7O9G+ChIlX.JpGECJnfHt3hiW5kdIxN6rocsqcDczQS6ZW6n10t1Jk4oe5mlwN1wxoN0onm8rmXkUVA.8nG8fqd0qxJW4Joqcsqzst0MVwJVAYjQF.fUVYEQGczXu81ye7G+gx9uqcsqXkUVgNc5nN0oNXgEVvW9keIlYlYnSmNZaaaKCdvCl+4+7eRZokF.7Mey2fqt5J24N2AyM2b5RW5BaYKagYLiYTlsMlYlY7se62RcqacQmNcnRkJBO7vY26d2L0oNU7zSOI5nilqe8qaPPWCX.Cf7xKOkft5e+6O28t2U4gB3latwRVxRJ2sOgILA5XG6nx9KrvBicricvG7Ae.PQA33omdRe5SePsZ0nRkJ5PG5.G6XGiW+0ecZcqaMcnCc..pacqK8nG8fibjiTgAcURm7jmjPBIjRMGtxN6rIzPCsLC55N24NFL7T0GLSCaXCwRKsToGvxKu73Ye1msBO9U10Yt3hKLm4LGTqVMETPAnVsZhLxH4S+zOkMu4MWl6y92+9iVsZUZuUoRE8nG8fEu3EqzaRt6t6L6YOaCtNJ93imO9i+XkdkIt3hiabianDzUkccUXgElx7VUmNcDRHgPBIj.IjPBkYOp2idzCZTiZDPQyAH+7yO9oe5mJyyoIO4IS6ZW6T12cricjqd0qxK8Rujx9txJScqacK0uScwKdwxLnqYO6YiWd4kxuOzgNzAhLxHUFxo8qe8iZUqZYPPWst0slniNZN7gOLd4kWk60lcu6cmQO5QqTOaaaaKuzK8RL7gObkfdKqOC6XG6HG+3GGe7wGk5UDQDAibjijKdwKh81aOye9yGKszRC983UspUw7l27n6cu6zvF1PfhBNsEsnEL24NWZSaZCQGczJOvmJ66CLl1mJhqt5px2mn+gu.vHG4HQiFMRPWBgP7PP0RlfncsqcXs0VyQNxQXZSaZr4MuYl6bmqA2L0a8VuEye9ymsssswhW7h4jm7jXokVVklCVojRJrt0sNtvEtPEVt24cdGV5RWJyZVyB.kmFZwUXgExq8ZuF+vO7CL24NWVzhVDPQ+gtO6y9LRJojX0qd0rpUsJ.Tl.zaYKagDSLQzoSGYlYljXhIRhIlHW5RWB.BN3fwVaskcu6cyblybXoKco7ce22gEVXAspUsxnOWebTfAFH.k6PnY+6e+r3EuXxKu7PkJUzktzExHiL3oe5mlXiMV1zl1DVZokzqd0KCdeN3fC75u9qSLwDCSe5SGUpTobiIO8S+zJ8HQu6cu4ke4WtJWu0pUKiXDifXhIFN8oOMezG8QXpolxTm5TIlXhgoN0oholZJSe5SGnna7yUWckcu6cS+5W+n28t2bwKdQBJnfJ2iwa9luI0st0ksrksPe6aeYvCdvb0qdUBIjPnYMqYUo5qEVXAqZUqh9129xnF0nJ2sGd3gSG6XG4bm6bDWbwQbwEGImbxDZngZPfXpTohyblyPu6cuYnCcnjc1YSKZQKvBKrfe7G+QF9vGN.7+9e+O5cu6sxCZvXTm5TGk.dV+5WuAu1pW8pwBKrfdzidnrsl1zlRcpScJ0w3F23Fb1ydVr2d6YoKcoLiYLCF3.GXktjKXLWmEe7wiZ0p4i+3Ol3hKNRHgD31291z8t28JbeqVsZ9we7GIlXhgILgIfNc5HxHiT40+nO5ivLyLioO8oSLwDCiXDi.MZzvXG6XwN6rqT6uJ65p5Tm5vXFyXH+7ymgNzgRrwFKqYMqg5V25x3G+3Ky53+5e8u3G9ge..d+2+8o28t2FLDO0Kpnhh10t1wEu3E4Ydlmg9129xV25VwImbhIMoIYzkQOKszRky64Mu4UpiWyZVyvM2bi8u+8SrwFK8u+8mKdwKhWd4Et4laUX6tdk20lN5niLpQMJtyctiR.2e5m9oXlYlwG8QejA6C0pUyW7EeAwDSL7ce22golZJspUshIO4ISLwDCqbkqDSM0ThN5nAJ56XL0TS469tuiXhIFRHgDnvBKT40G23FGKcoKE.9vO7CoO8oOkYvvU12Gb+19rpUsJzoSGcqacSYa96u+XgEVvN1wNLp1WgPHDUupV5oK8ymlcsqcUtkIhHhfHiLxRk.Lr2d6IyLyr5nZ.TTOpb6aea.37m+7J8dQIU7dSn371auYvCdvXu81avPbxVas0nN95GlSsqcsS4IBqWngFpRu08jHu7xK.TB.shnSmtR0CEKXAKft28tWpfPV6ZWqROIt8suchLxHwe+8G6s2dxImbtuq2KXAKPomar1ZqwAGbf8u+8q7z428t2MG6XGiV0pVgIlXhROv3omdhGd3AolZpJ27W4oEsnEjWd4oziEYkUV75u9qSW5RW3N24NUo56Mu4MKyajsjaWeRsX7ie7TPAE.TTOUrnEsHBMzPMHvl2+8eet6cuKomd5J2HXm6bmIwDSrJU2fhtYSsZ0hIlXB1XiM.E86hk75hUu5Uy.G3.Y.CX.J8zyPFxP.J5yjRlTNFyXFCibjijN24Ni2d6Md6s2LvANPN6YOKie7iuLaGMlqyz+4Y6ZW63.G3.JAnUYt8susxMXezidTRIkTvKu7ByM2brvBKvN6ri+7O+Sk14TSMUVzhVDuvK7BDbvASRIkjA6uJ65p1291iJUp3a9lugzSOc.XtyctDVXgce+.cBMzPAJJnA8CGsO9i+XBIjPT12FSYz6PG5PUXv4m5Tmh9129p7y4me9rksrEd9m+4wWe80n9NjxSHgDBpTohu+6+dk8SRIkD8nG8P4gIn+Zkadyap7v.V4JWIIjPBboKcIkdpeYKaYDWbwojfJV3BWHKbgKT4XcsqcMRN4jooMsoUo4uak88AImbx2WsO24N2gScpSQyZVyvFargbyMW5Se5C.FzyWBg3wK96u+JiLKiQ94mekN0GDO3TsDzkYlUzto3ic7hyEWbgXiMVt4MuIaZSahyblyPzQGMd6s2FLDhpNnUq1RssxJ0tWVyWCSLwDd4W9kwbyMmsrksvQO5QwCO7fd26dazoGd8sEKXAKnTIHfRNeOdRi9.izOblpLAETPLhQLBpacqqAWGTx4yygNzgL3mO9wON96u+DXfAVsL44K9Pk6odpmR4+WVyehl27ly92+9Utglu3K9BtyctCG6XGi4Lm4nL7CKNUpTgM1XCm8rm0fsesqcMVwJVAPQYXNiUImaYk2181auAJ5lIKI8AHCEEXRweu56oR8ALUUkWd4wctycTdPE5Gphkzcu6cYO6YOzgNzAbyM23ZW6Z3me9w4N24J0u6nudN6YOal8rmMN6ryDSLwPjQFIMtwMloMsoUtCU4J65ru+6+dBJnfnCcnCzgNzAt0stkROUWQI4hqe8qavOmVZogWd4EVXgEJ85aImGmG5PGhW3EdA72e+KUPWU10U95qu.EkIPKdObBnLDauW4gGdPgEVnAy4I.xHiLTB3vXJidEedqUdF3.GH8pW8B6ryNC9c9R96+UU5amNvANfAa+zm9zzhVzB7yO+TlCVk72YzoSmA+crR92zL2byYhSbh3u+9qLbbqpLluO.t+aeV4JWIuwa7FDarwxRVxRvO+7iqd0qpLbqEBwieF+3GekNBOJNMZzn7.WDO7UsDz0EtvEHnfBhPCMzR8GR.nyctyJO4Q82DR4klj0eyV0u90WIyOUUXkUVg4laNEVXg3hKtfJUpJ0MGATlOQRu7xKrzRKYW6ZW7y+7OCfACCqhSmNcXs0VWpsmZpoRaZSavRKsrLaKdR1QNxQ.vf4xWw4s2diWd4EacqaE6s2dd228cQiFMr6cuaN4IOI4jSNLlwLlR89J4WvTqZUK.JyaLujJdOqpetaTQzuOuzktDqcsqUY65mGZImbxnSmNdsW60vSO8jd1ydRaaaaIf.Bfu3K9BhKt3J00V5zoCsZ0ZT8VZIqi2O2.ZN4jCVYkU70e8Wav1s1Zq4jm7j2y62Jy69tuKImbxXokVxO8S+Dd6s2JOs8RZ9ye9zgNzAdwW7EI0TSEUpTYPOInmkVZIVas0b8qeczoSGomd5Lu4MO9we7GY4Ke4ka1qrd0qdU50YYlYl7rO6yRPAEDgEVXDTPAQ3gGNMoIMwnl+LkE88deIGFg5uVtr9NoJ65J88p65V25L36Fs1ZquuefN4kWdk4eH2RKsT4AYYLkwX06d2aF3.GH27l2jMtwMRpolJ95qukZzATxG1kwLbz02N4fCNXP6j9OKteZqlxTlB95qujZpoxd26d4pW8pDe7wWlilhxiw78AFa6SE4+8+9ebm6bG5V25FG8nGE0pUyF1vFL52uPHdzyTlxTpRAcUUGIMhZVUKAc86+9uSLwDiRuDrksrEZdyaNt6t6L+4Oe1yd1CcricjHiLRzpUaEtX4t8suc5YO6Iu3K9hroMsIxJqrTBTyKu7BSLwDk+3o9dTIqrxxf4ov3G+3YSaZSDarwpTeLFm+7mGsZ0RqZUqnYMqYDP.Af+96eYV17xKOb0UWoG8nGjZpoRZokFYmc1r8suckwfu6t6N+9u+63latQXgEFKbgK7dJPxGWTXgER1YmMMnAMfnhJJClCO5miG5zoiMsoMoDL6pV0p36+9uGfRMbxzK7vC2faVPeJv9u9q+xfxoOvH3++lZaW6ZmxDwWeVEqhbricLzoSGlXhIJIuBnntzuYMqYnQiF7xKuvO+7ijRJI9hu3K3K9huf2+8eekxnOy+UbYkUV3jSNQ8pW8TdRycsqckm64dNl6bmqx17wGeTdO0oN0A0pUWt8fbk4jm7j3ryNy4N24TZqLyLynO8oO2SKr2U0d9J+7ymUu5US+5W+XricrLkoLkRUlzSOct3EuHO0S8TzpV0JxM2bKUFbCJJoGDe7wyBVvBLHwJTPAEfVsZUFRwkjwbc1S8TOE0t10ljRJIkd.YoKcozfFzfpz4awc7iebzoSmx0p5oe9qo+3TbU10U6e+6mnhJpRcsYXgElROreu5zm9z3latQHgDhxPQwQGcDGczQkdsxXJiwp8su8.EksS02SykbgCNu7xCmbxIbzQGUBTp7FFkE+ZS8sSQGczJW2qRkJZcqasxZU18plzjlfFMZXDiXDJaafCbfkYY0+vgJKU12GXLsOFi8su8Q6ae64YdlmAc5zoLGkEBwim96PVv9IYUKAcUXgExrl0rX3Ce3zl1zFkaUeFhYA..cHXRDEDUzX+6e+.EM+oN8oOMMsoMkW8UeUk+vWwGhS5cqacK17l2LcricjAMnAQN4jCuwa7F.vXG6XM3I+qOa.d3CeXkmleAET.t3hKJyMjCdvCZzKFk5zoiMu4MSXgElRlu5jm7j3s2dWpduXoKco7bO2yojj.1wN1A+zO8SnQiFk1B8CWInnm1P4kVmeRxa7FuAyZVyhQLhQPm5TmXW6ZW3jSNQTQEElYlY7K+xufNc5T9LIpnhhbyMWpcsqcYlvSfhFReSaZSiCcnCQm5TmvQGcjicrio7YxQO5QUFhYqYMqgjRJI16d2KwEWbDe7wSsqcsQiFMJAgWQzoSGG7fGj.CLP97O+yYaaaazfFz.BKrvH+7ymku7kie94GCaXCi9129pLQ6aQKZAZ0psb6AokrjkvnG8nY1yd1rwMtQkTRuIlXB+0e8Wje94iVsZo4Mu4LoIMIN8oOMwEWb2ieJTjksrkQG5PGXpScpjXhIxUtxUnW8pWTu5UOl27lmxueVYRKszPiFM3iO9vvF1vX0qd0F8MY+8e+2SzQGMsoMsA2bysxbtnrjkrDF+3GO1Zqsk4PgDfUrhUvy7LOCCdvCll0rlwANvAvAGbfd1ydhYlYF6YO6oLeeFy0Y8qe8C+82e5ZW6J+1u8az3F2Xr1ZqqxARTb5zoi8u+8SPAEDyd1ylcricf2d6MsoMsgrxJKkdEt3prqqLyLyHmbxgHiLRbvAG3HG4HDbvAie94GG4HGwfzNeU0xW9xoicriLwINQRJojH2bykHiLRToREKaYKynKiw5rm8rzpV0Jl3DmHaXCa.+7yOBIjPLnLG6XGCu7xKlwLlAqe8qGO8zSZcqasAkort17O9i+fryNa5Tm5DpUqlSe5SSm6bmwAGbfctycdO2FAEMTJ8vCOXhSbhb7iebhHhHJ0ScdO6YODe7wS7wGON3fCk4ZJYk88AAFXfUZ6iwXQKZQzgNzA72e+4jm7jxS8VHDhGhp1RY75mL6N3fC3pqtxEtvELXr++Ye1mgZ0pwEWbgTSM0JbQG9W9keoTqmO.kZdLTR5m2HlXhI3omdxUu5UKUuDbkqbkJbHCs5UuZ90e8WoQMpQbgKbgx8ORcnCcnRMWiz6bm6b75u9qiCN3.N4jSjYlYVslrPdTVpolJScpSkQO5Qiu95qx7qPqVsFzKEm4LmgDSLQBO7v4EdgW.c5zwF1vFHpnhpTA3t90udhHhHvO+7Cc5zw4O+4UBDGPIEw2jlzDF5PGJIkTRbzidTRJojHrvBSIXqst0sRW5RWpzE7529seal1zlFspUshDRHAfhFtXu0a8V.vu9q+JsnEsfPCMTkDcvsu8s48e+2ub22aZSaBGczQ5W+5G8qe8CnndBZpScpJo+7O4S9DFyXFiRv5ImbxJoa76EImbxL0oNUdsW60HpnhBnnfAVyZVSE9Du029W7OG1zl1DQEUTDarwxEtvEJUlHrjku3a6G9gefgMrgw3G+3YLiYLJkS+401111XTiZTnVsZClj+5zoSoL4me97pu5qxTm5TMHI0nSmN1xV1Be1m8Yk44hwbc1G9geHSaZSC+82ekd1N8zS2fqwLF52e5Gpcu669t79u+6iO93CCZPCBc5zwku7kYricrk4moU10UEVXg7JuxqvG8QeDAGbvJ2D9INwI3se62tRqWUTRdHkTRgoLkov3F23Tx.i4me9rnEsHkjohwTFi0BVvBvO+7Cu7xKF1vFFZzngcsqcQ6ZW6TpmyctyEe80WZPCZ.CZPCBsZ0xAO3Ao0st0U50libjijYNyYRaaaaI3fCFMZzve7G+A+m+y+oJUOKoO3C9.9vO7CIzPCkPCMTt0stEm4Lmwf0ItSe5SyYO6YowMtwDe7wyhW7hKUaek88AFS6iwH0TSkryNabvAGTFx7BgPHd3PkKt3REdGc95quJOU1JaAHUbuo7Rw5Opq3WaTVrzRKInfBhjSN4xcXUZhIlf6t6NW4JWoTA3lPBIPbwEGSXBSficriQCZPCHszRqbStA1XiMnQiFkL0GTzvJxCO7fzRKs6omxqGd3AW6ZWSYXKVRt4labiabiRkbApHN5niTPAETtIDCWc0UxM2bqVxLi5Yqs1hc1YWYlnOLVlYlYXkUVUt06GTr2d6wO+7iLxHCN0oNkQETZEccldlYlY3latwku7kqvDnw8B2byMRKszL5aXtxttxLyLi5W+5yku7kq16AcarwFTqVcENmIMlxXLrzRKwImbhKbgKTteNZLko7t1zDSLAmc146qq6KK0pV0BKszRkrHYYQsZ0XlYlUoCO3J56CLly8JhJUpX4Ke4nRkp66dNWHDO3UY2mk3QOUzmYUa8zkPTR4me9U5ZBycu6cMpEZWc5zUokqrt4Fc5zQJojRkt+KOU1w7dI0VWYSj+p6aPDJZX6VUBLrrnQilG5AbAEknDppq0PFy0YZzn495ZkJRU85jJq7ZznoJs.UWUjat4VoAJXLkwXje94WomGFSYJuqMu6cuaMxuOciabCtwMtQEVlBJn.Cd.PkmJ56CLly8xSbwEGQFYjXokVZv7fTHDBwCGUoYSuw7GPDUMRaZ4K8zSmbxImpkatSHDh+No6cu6T6ZWa15V2JKXAK3gc0QHDh+1qJ0SWYmc13ryNWSUW9aohm0EEFZcqacrt0stG1UCgPHdry+3e7OdXWEDBgPTLUoftzO7MbvAGLX8ORT0UPAEP1Ym8iDCWKgPHDBgPHD0bpxyoqadyaJAJHDBgPHDBgPXjp5qPpBgPHDBgPHDBilDzkPHDBgPHDBQMHiZc5RHDBgPHDBgPTwtuVmtjElMQYQVz9DBgPHDhZFx8Y83mJpypjgWnPHDBgPHDBQMHInKgPHDBgPHDhZPRPWBgPHDBgPHD0fpxqSW1YmcOVu3HKKJwBgPHDBgPHdPpJEzkc1YGN6ry0T0kGHTqVsx4fD3kPHDBgPHDhZZUogWnCN3PMU83AtmjNWDBgPHDBgP7nqpTPWOtNjBKKOIctHDBgPHDBg3QWORlHMl9zmNCX.C3d98at4liJUppFqQBiUG5PGH5nil.CLPBLv.ooMsoF86M7vCmEtvEhe94WMXMT72AVas0DXfAhmd5YEVtV25VSKaYKe.Uqd7v67NuCu4a9lOrqFBgPHDOQoJmHMdPvZqsF6ryt6o2qWd4Eiabiie9m+Y9se62plqYhJyjlzjJ01zoSGaYKagYNyYVgu2fBJHpcsqM93iOb3CeXi53Ymc1wDlvDHojRhst0sduTkerW0UaPfAFH8qe8i4N24xEu3EqweekkALfAPyady48du269Z+3iO9va+1uMZzng9129hNc5JUY5RW5BiabiC.5Uu5080w6IIspUsh6bm67vtZHDBgP7Dkp8ftToRUYdCNUkxNpQMp66iizSWO7TXgExm+4eNpToh.CLPBIjPnacqajc1Yy7m+7K222zm9zYEqXEblybFi9XYqs1R.AD.4lat+sMnqpq1fV1xVR.AD.MrgMrJE7z856qrDZngRiabiuu1GEmYlYF8rm8j0rl0TpWK93iGnnqWEBgPHDhZRUKAcMjgLDZYKaIYjQF3gGd..+0e8W7Ue0WYP4l5TmJW7hWDqrxJZTiZDpTohSe5Sym8YeF.7e9O+Gk4Z0t28tYYKaYJu2.BH.FxPFB6ae6ifBJHLyLyHkTRgu8a+Vt90uNMpQMhQO5QqDrUu6cuIlXhA.9jO4SHkTRo53TUTIzoSGW5RWhsrks..+1u8a3hKtv7l27nKcoKL+4Oer0VaYvCdvr0stU7zSOI3fClMrgMPlYlIQDQDjQFYvMtwMH7vCGWbwE1vF1.wFar3ryNyu7K+Bm3+q8t+iJpJyefi+9Nyf7C0b.7mImHUBks.jiIfBhhPZ.BLJqltsmZEaMOVZjmUnxiUKGM6mZmNoV9qnxHqjhCQTqfYmU1M+YGOKjqj+HVsRPDEPgFvY398O3L2kAFXFPzs56mW+Ed49bet2m4wg6m6yyym6INAPaOQ9jRJI.XricrrzktTJrvB4rm8r.sM5Eie7iGylMSokVJG3.GnaO2Gv.F.Se5SmvBKL9we7GojRJgJqrR.XHCYHL24NWJpnhz1F.228ce7y+7OSAETPWdcUd4k6vsefCb.zoSGQEUTL0oNU9oe5mXO6YO1E3x0aaPGMwINQhIlXvSO8jxKubxO+7AfYLiYP3gGN.jXhIRvAGLadyaFUUU5W+5GokVZDXfAR80WOkVZobjibDmVNns.xlwLlAJJJr28t2tcDLevG7AYnCcn.vRW5Ro5pql7xKOf1BdZRSZRDczQSCMz.6ae6iie7i2sedZyblyb5TPWCaXCC+7yO.n0Va0teWHgDBwFar3s2dSEUTAEVXgZY5z4Lm4vvG9vImbxglZpI.XbiabL8oOc9xu7K09boi5t9V1LxQNRl9zmNiZTihu4a9F9pu5q3pW8pZk2VeHe80WhIlX3zm9z7IexmPyM2rcGGm0uu6pmtxvG9v4du26E+7yOJszRozRKEKVrzskQHDBgP7e0mDz0sbK2Bd4kW3me9wW+0eMAETPDbvASxImLe5m9oZ62.Fv.3Nuy6D.pnhJ3xW9xbq25sp86KojRvc2cmDSLwNkcA8zSOwfACDYjQRYkUFt4laDTPAwLm4LYW6ZWTSM0vm8YeF95quDczQSEUTAe228c.P0UWcewkonWppppBylMysbK2B.3qu9RhIlHwFar3omdhppJ+vO7CzTSMQhIlHG5PGhibjifISlve+8GSlLg6t6NJJJDUTQwwO9wIyLyjvBKLhJpnzNlyblyjxJqLN6YOKacqakQLhQPKszBt4laLsoMM1291Guxq7JN7bbjibjrwMtQLXv.pppLwINQRM0TYqacqTPAEf+96OIlXhb4KeY6tY44N24RSM0DETPAc4004O+4c31OzgND6XG6fAO3AippJJJJLm4LG1vF1.6cu6Efqq1fNJiLxf3iOdrZ0JpppDYjQRJojBomd5LiYLCF0nFEPaSMufBJHdi23MXfCbfricrC7vCOzNGiO93I+7ymssss0kkSUUkrxJKlxTlhV8GWbwQokVJO+y+7N7yfjRJI7zSOAfYNyYxEtvEHu7xC2byM1912N93iOZmCIjPB7Ue0WwK+xub212qt5pigNzgh+96ucO3k+ze5OA.MzPC1kTcd3G9g0dXMpppb228cSZokFOzC8PTWc0gNc5HwDSjQNxQxpV0pPmNcjc1Yi6t6N6ZW6xgmCNquEzVvqKe4KWqdCO7v4gdnGhkrjkPUUUkVeqoLkov.G3.QUUkIMoIw8e+2OO9i+3ZiNry526r5wQhKt33we7GWqLQFYjrvEtPV3BWXmBXUHDBgP3X8oIRiO5i9HxM2bY0qd0nppxjm7j6z9nnnve8u9W40e8Wm268dOdoW5kz9c6cu6khJpntcZCVd4kyV1xVXiabizRKsPfAFHPauysJt3h0dptm3DmfhKtXJt3hwrYy8kWlhdna+1uc7vCOn1Zq0ts6gGdvK7Bu.ImbxrsssMGVVEEEN0oNEolZprnEsHpqt5HnfBh90u9wN24NYIKYI.v+7e9OI0TSk8u+8SXgEFiXDifCbfCvblybH0TSke3G9At669t6xywW9keYLXv.aXCafjSNYxHiLvpUqjd5o2imppc00UG29pV0pXvCdvTPAEPJojBKZQKBylMSFYjAd4kWWWsAcjNc5Ht3hiKcoKQZokFlLYhu7K+R71auIf.Bf+xe4uvG7Ae..7hu3KhISln0VakTSMUzqWOu0a8VjbxIyBW3B4ZW6ZjXhIBPWVt3iOdlxTlBm4LmgzRKMRKsznxJqjniNZ6BDq8l27lGm4LmAnsQp9O+m+y.vpW8pwGe7g8rm8PpolJKXAKfpppJl1zlFwFarc6mEEWbw.P5omtcsmSZRShKbgKPCMzfcaeZSaZTSM0v7l27HkTRg8rm8fGd3g1Z9Z26d2TYkURngFJSXBSfku7kiWd4Eu4a9lboKcIGdN3r9VCdvClksrkQKszhVPeu5q9pXvfA699QnsGbUlYlIojRJricrCTTTHszRC.m1uumTO13iO9PFYjAlMalEsnEQJojBEVXg3qu9xJW4J611dgPHDBw+Ue5Z55XG6XZ+b80WuCSFFlMalKdwK1mUG1F8DwuLnnnf+96OKXAK.EEEBIjPXbiab.PQEUjc66wN1wbX.BczZW6Zo0VakpqtZ1291Gyd1yloN0opcC0cjd85A.+82etsa613rm8rZAl3HCX.CfANvAx+5e8uzFgoScpSwS8TOE+te2uSazWbUc00UG29cdm2IW4JWgsrks.z1Hxlat4R5omNSXBSvt8sm1FzQ1dPF8u+8mvBKLN7gOLqe8q2oI2j28ceWd228c092W7hWjJqrRti63NPmNcc4HcLsoMM.XkqbkZS+sUspUw68duGQGcztzm61L1wNVZrwF40dsWCnsGvRVYkEu8a+1LkoLEsoxpiTas0x4N24X7ie73latw0t10H4jSFCFLvt28tIkTRQaeUUUYAKXA1U929sealwLlg1C2Afm5odJdm24c3IexmD2c2cpnhJ5Teaabk9VQFYjnnnPN4jC+3O9i.sMp+yblyTK3ZaJu7x0lVke7G+w7.OvCPngFJfy626J0SGSfFSdxSFEEE15V2p1LF3Mdi2f3hKNsYsfPHDhaNBMzPwau81k2eylM6zkVg3lm9zftZ+BR2pUqNbDBpolZttpi1u1Cb0D1g3lKEEEt+6+9092lMalcu6cqs9broqlNSsmppp15oAPaZT0+92+trLG8nGku669NBLv.YSaZSzRKsvwO9wYiabib9ye9Ns+SXBS.nso7Z6c7iebWdcC0dc00U62thhBCX.C..GljGBIjPzBLo2zFzQpppje94iISl3YdlmAqVsx4N24HmbxQa8Y4Ht4la7DOwSPngFp1zazUL1wNV.5zm4Pai7oqRQQg92+9yoO8osa60VasXwhEW5Xkat4RVYkE+9e+um2+8eel8rmMW6ZWiO+y+b6B5BZKCZtzktT70We0Bhw14gMMzPCr4MuYV1xVFVsZkm9oe5trtck9VAGbv.v27Meic6yIO4IInfBhPBIDsu2riIpjqbkqfGd3Afy626J0SG6KXqLKaYKqSI3nd5CiPHDBw0mUtxU1okeS2whEKXxjoafmQhdh9zftBN3f09i1FMZzgSquazqA.aKt6daJmWb86hW7hjUVYA.M1XiNcQ52WSUUkUrhUf+96OIkTRDd3gy3G+3YSaZSjVZo0o9f1dB9txWj09Qc.58YISaOv.qVsx129101td85Qud8bnCcnd0ws6r8suc9nO5iXVyZVDYjQxnF0n3Ye1mkrxJK91u8acXYxN6rI3fClyd1yxgNzg3BW3BL+4Oe7wGe515pgFZ.O8zSsQwyFu7xqNE.R2QUUEqVsZ2zszF850qkLK5N6e+6mG6wdLRJoj3q+5ulgLjgv91295zCsYHCYH7rO6yhEKV3.G3.TQEUPCMz.YjQFc5XFQDQncNDd3g2ki1lqz2x1TbznQi1ETksuCyUmY.NqeeuodrUlhJpH6JiWd4000LVPHDBQOW1YmcOJnK40+wurzmFz07l27vfACLwINQzqWOkUVYtbYMZzn1MxYaT.F8nGMppp78e+26xGGailvjm7jolZpgKcoKwoO8okNd2jnppxUu5Uuom7RZ+n9b629sSHgDBkTRIroMsI1zl1DqcsqkPCMTBLv.6TFl6Dm3DZI3f1+pH3QdjGgPCMTV1xVl1HMbW20coUNe7wGb2c2owFarWcNWas0xfFzfXu6cuZGigO7g2kq4Imo6F4KiFMRLwDCG6XGibyMWxM2bYVyZVrjkrDhIlXrKnqAMnAo8yADP.XwhEV5RWp119C+g+fCqi1WtJpnBF1vFFm4LmgxKubf1x.glLYBc5b9RI0Ku7RKfpKe4KyPG5PwnQiTWc0A.wFarnnn3xAvURIkvrl0rXUqZU.PN4jSm1Gas64me9Z+daSSx1KxHijvCObN7gOLAGbv7XO1iwgO7gc3CWvU5aczidTRHgDHwDSTqsRQQgvBKLTUUoxJqzoujmAm2u2UpmNxVYzoSmVR+.ZK4ZXvvuHeMOJDBwuYYKAwI90o9r+posal3O9G+i.sMMBaeJe2YLYxjcI5fQO5QyJVwJ.fG8QeTsQmvYiTlEKVnjRJgXiMVs0mwF1vF5zzSR7aCm+7mGKVrvccW2EKdwKlBJn.BIjPXwKdwL6YOaxKu7Pud8DTPAgUqV6xaR+fG7fDYjQxl27l4u+2+6DP.AP3gGN0TSMzbyMy+4+7evpUqLtwMNdxm7I4jm7jZIvfdq7xKOV7hWLacqakhJpHzqWOojRJzu90OJszRutZC53TbTud8r3EuXZokVXW6ZWb4KeYsyeaSiwCdvCx7m+7Y9ye9XznQ14N2o1qAhm3IdB92+6+M2y8bOc5or4nx8ge3GRTQEEqYMqghKtXppppXVyZVLjgLD1111FG8nG0gWKe629sLlwLFdtm64nvBKjRJoD18t2MKYIKgMu4MyW7EeACZPCh3hKNrXwBe7G+wtTazN24NIojRhQLhQPkUVYmRpK.Zoy9DRHAZrwFwau8VKc7aiGd3AYlYlzbyMy5V25HhHhfrxJKxN6r099pNxY8sNxQNB0UWcDSLwf6t6Nm7jmjoN0ohQiF4e7O9Gtz0GfS62qWu9db8bzidTZngF3du26EiFMRYkUFQDQDDRHgPYkUF+s+1eykO+DBgPH9+y5SeTkYlYlba21sQSM0jCm5INZZ5XSN4jiCe5y1bvCdPN3AOncaK6ry1g6a94mu16eHwud3JS8TGE78d1ydHgDRfTRIEN24NGe5m9oDTPAQzQGsVhD3m+4el0t101kqCv0rl0P1YmMgDRHZijS0UWMYlYlZ6yF1vFHiLxfnhJJhJpnnxJqTKMf2aTPAEfO93CImbxZundMa1Lqe8q2gq8rdRavm+4etcko1ZqksrksP5omNOvC7..sM0FyM2b0F0iSdxSxoO8oYLiYLL+4OexM2b44e9mmW7EeQhN5nI5nilqd0qxoN0oHf.BP6X6nxUYkUxZVyZXEqXEjPBI.z1ClovBKra++l4kWdDarwR.AD.KZQKhRJoDJrvBwau8FSlLwbm6bAZasLst0sNsDBgyZit5UuJUTQELtwMN14N2o19oppp842oN0on3hKl3iOddvG7AQUUku3K9BRHgDzNNqd0ql90u9wq7JuBszRKr+8uel8rmMAFXfDe7wSIkTRmNWbVeKKVrvi7HOBqe8qmvCObhHhHvhEKbjibDV25VWW1VY67214ly522apmqcsqwi9nOJuzK8RDQDQPjQFIPaifW2sV1DBgPHD1SY3Ce3c6cLFbvAqMMAa+MZ0dKe4Km63NtiNsPq+kNaIj.QuS66a7+ZFLX.O8zS6R3DPauijpu956QqqL+7yOpt5psKwvzdiXDifFarQ6R23Wur8t5xQi.iqpqZC5He80WTTT5x0ji6t6NFLXvtoM4fFzfvCO7nam1nNpbv+MC90cAR1Q8u+8GKVrzoW7uCdvCllZpIWZsb0aoSmN7yO+nppppOeZI6r9V5zoigMrg0iZqbDm0uu2TOFLXfa8VuU9oe5mjWLxBgPbSvujtOKgqo69LqOYjtLa1r7GgE+OkEKVbXvFc0Hgzc5XFhqitdugXGouHoDzUsAcjyBrq4latSA6Te80S80WeOtbPaixTOMYpzUqStaFIugVasUG9xktufy5a0Zqs1mz+xY866M0iEKVtg0tHDBgP7ac8nftZt4lwc2cuSauiYnreMvQ2bnPHDBgPHDBQeMmmFwZGaYNreK32RWKBgPHDBgPH9kqdzHcYapKYznQGNhW+ZPyM2L0UWctzzvRHDBgPHDBg35UOdMcckqbEIfEgPHDBgPHDBWTOZ5EJDBgPHDBgPH5YjftDBgPHDBgPHtARB5RHDBgPHDBg3FHW5kirPHDBgPHDBgn60UubjcZPWBgPHDBgPHDhdOY5EJDBgPHDBgPbCjDzkPHDBgPHDBwMPRPWBgPHDBgPHD2.IAcIDBgPHDBgPbCz+2xn4QeSDtaSA....PRE4DQtJDXBB" ],
                                    "embed": 1,
                                    "forceaspect": 1,
                                    "id": "obj-8",
                                    "maxclass": "fpic",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 269.0, 171.0, 840.0, 303.4146341463414 ],
                                    "pic": "Screenshot 2026-02-18 at 16.23.01.png"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 102.0, 44.0, 247.0, 20.0 ],
                                    "text": "RMS acceleration energy via leaky integrator"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 44.0, 240.0, 38.0, 22.0 ],
                                    "text": "zl.reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 102.0, 125.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 102.0, 171.0, 119.0, 22.0 ],
                                    "text": "qmetro 10 @active 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-3",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 44.0, 603.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 44.0, 556.0, 68.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "energy.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js energy.js"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.0, 39.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "midpoints": [ 72.5, 72.0, 72.5, 72.0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 53.5, 579.0, 53.5, 579.0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 111.5, 225.0, 53.5, 225.0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 111.5, 150.0, 111.5, 150.0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "midpoints": [ 53.5, 264.0, 53.5, 264.0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 402.0, 587.0, 55.0, 22.0 ],
                    "text": "p energy"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 611.0, 231.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 670.0, 232.0, 222.0, 20.0 ],
                    "text": "mA estimate consumption (Default = 85)"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1081.0, 230.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 359.0, 237.0, 91.0, 22.0 ],
                    "text": "print @popup 1"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1119.0, 212.0, 134.0, 60.0 ],
                    "text": "LED\n\n• /led R G B brightness\n• /led 0/1 = OFF/Default"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1081.0, 293.0, 45.0, 22.0 ],
                    "text": "/led $1"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 453.0, 332.0, 66.0, 47.0 ],
                    "text": "BUTTONS\n\nGPIOs"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 198.0, 441.0, 49.0, 20.0 ],
                    "text": "EULER"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1139.0, 293.0, 81.0, 22.0 ],
                    "text": "/led 255 0 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 153.0, 293.0, 91.0, 22.0 ],
                    "text": "vexpr $f1 / 180."
                }
            },
            {
                "box": {
                    "candycane": 3,
                    "compatibility": 1,
                    "contdata": 1,
                    "ghostbar": 3,
                    "id": "obj-37",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 153.0, 334.0, 91.0, 99.0 ],
                    "setstyle": 1,
                    "signed": 1,
                    "size": 3,
                    "spacing": 4
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 397.0, 441.0, 144.0, 47.0 ],
                    "text": "LIGHT\n\nProximity, White, Ambient"
                }
            },
            {
                "box": {
                    "dontreplace": 1,
                    "id": "obj-124",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 390.0, 411.0, 158.0, 22.0 ],
                    "text": "5215 90 113"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 901.0, 412.0, 38.0, 20.0 ],
                    "text": "h.mm"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1242.0, 293.0, 46.0, 22.0 ],
                    "text": "/reboot"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 991.0, 293.0, 79.0, 22.0 ],
                    "text": "prepend host"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 991.0, 350.0, 135.0, 22.0 ],
                    "text": "udpsend localhost 9000"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 895.0, 329.0, 64.0, 47.0 ],
                    "text": "ELAPSED\n\nh mm ss"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 110.0, 211.0, 341.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-104",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 50.0, 193.49999999999997, 55.0, 22.0 ],
                                    "text": "zl.slice 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 50.0, 131.16666666666666, 43.0, 22.0 ],
                                    "text": "* 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 162.33333333333331, 129.0, 22.0 ],
                                    "text": "translate ms hh:mm:ss"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-94",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 100.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-105",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 40.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-106",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 275.5, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "midpoints": [ 59.5, 156.0, 59.5, 156.0 ],
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-106", 0 ],
                                    "midpoints": [ 59.5, 216.0, 59.5, 216.0 ],
                                    "source": [ "obj-104", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "midpoints": [ 59.5, 72.0, 59.5, 72.0 ],
                                    "source": [ "obj-105", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "midpoints": [ 59.5, 123.0, 59.5, 123.0 ],
                                    "source": [ "obj-94", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "midpoints": [ 59.5, 186.0, 59.5, 186.0 ],
                                    "source": [ "obj-95", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 860.0, 293.0, 61.0, 22.0 ],
                    "text": "p elapsed"
                }
            },
            {
                "box": {
                    "dontreplace": 1,
                    "id": "obj-103",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 829.0, 329.0, 50.0, 22.0 ],
                    "text": "0 3 51"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 645.0, 193.0, 164.0, 20.0 ],
                    "text": "mAh capacity (Default = 170)"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 593.0, 192.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 110.0, 639.0, 736.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 176.0, 398.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-20",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 470.0, 39.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 508.0, 44.0, 97.0, 20.0 ],
                                    "text": "mA consumption"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "float" ],
                                    "patching_rect": [ 470.0, 502.0, 29.5, 22.0 ],
                                    "text": "t b f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "float" ],
                                    "patching_rect": [ 330.0, 282.0, 29.5, 22.0 ],
                                    "text": "t b f"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-15",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 330.0, 663.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-14",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 330.0, 39.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 50.0, 187.0, 45.0, 22.0 ],
                                    "text": "/ 1000."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-12",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 267.0, 663.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 50.0, 111.0, 51.0, 22.0 ],
                                    "text": "unjoin 3"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-9",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 176.0, 663.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 398.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 323.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-2",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 50.0, 218.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 361.0, 60.0, 22.0 ],
                                    "text": "clip 0 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 286.0, 103.0, 22.0 ],
                                    "text": "scale 3.2 4. 0 100"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-46",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 50.0, 39.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-48",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 663.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 368.0, 44.0, 81.0, 20.0 ],
                                    "text": "mAh capacity"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 330.0, 591.0, 238.0, 22.0 ],
                                    "text": "expr int($f1) + int(($f1 - int($f1)) * 60) / 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 330.0, 562.0, 32.0, 22.0 ],
                                    "text": "/ 85."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 330.0, 502.0, 40.0, 22.0 ],
                                    "text": "* 170."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 330.0, 454.0, 39.0, 22.0 ],
                                    "text": "/ 100."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "midpoints": [ 80.83333333333333, 174.0, 276.5, 174.0 ],
                                    "source": [ "obj-11", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "midpoints": [ 59.5, 135.0, 59.5, 135.0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "midpoints": [ 70.16666666666666, 174.0, 185.5, 174.0 ],
                                    "source": [ "obj-11", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "midpoints": [ 59.5, 210.0, 59.5, 210.0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "midpoints": [ 339.5, 72.0, 339.5, 72.0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 339.5, 306.0, 339.5, 306.0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 1 ],
                                    "midpoints": [ 350.0, 441.0, 381.0, 441.0, 381.0, 489.0, 360.5, 489.0 ],
                                    "source": [ "obj-18", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 1 ],
                                    "midpoints": [ 490.0, 549.0, 352.5, 549.0 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 479.5, 549.0, 339.5, 549.0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "midpoints": [ 59.5, 243.0, 59.5, 243.0 ],
                                    "order": 1,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "midpoints": [ 59.5, 273.0, 36.0, 273.0, 36.0, 648.0, 59.5, 648.0 ],
                                    "order": 0,
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "midpoints": [ 479.5, 72.0, 479.5, 72.0 ],
                                    "source": [ "obj-20", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "midpoints": [ 185.5, 441.0, 339.5, 441.0 ],
                                    "order": 0,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "midpoints": [ 185.5, 423.0, 185.5, 423.0 ],
                                    "order": 1,
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 59.5, 309.0, 59.5, 309.0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "midpoints": [ 59.5, 348.0, 59.5, 348.0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "midpoints": [ 59.5, 384.0, 59.5, 384.0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "midpoints": [ 59.5, 72.0, 59.5, 72.0 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "midpoints": [ 339.5, 477.0, 339.5, 477.0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "midpoints": [ 339.5, 525.0, 339.5, 525.0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "midpoints": [ 339.5, 585.0, 339.5, 585.0 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 339.5, 615.0, 339.5, 615.0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 575.0, 293.0, 55.0, 22.0 ],
                    "text": "p battery"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 666.0, 411.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 693.0, 292.0, 103.0, 47.0 ],
                    "text": "PING\n\nDefault = 1000ms"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 666.0, 292.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 313.0, 441.0, 49.0, 20.0 ],
                    "text": "ACCEL"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 84.0, 441.0, 41.0, 20.0 ],
                    "text": "QUAT"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 666.0, 449.0, 84.0, 87.0 ],
                    "text": "BATTERY\n\n100=Full \n101=Charging\n102=USB\n<10=Sleep"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 575.0, 449.0, 63.0, 60.0 ],
                    "text": "VOLTAGE\n\n3.2 = low\n4.2 = high"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 192.0, 40.0, 60.0, 20.0 ],
                    "text": "Print data"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 271.0, 293.0, 85.0, 22.0 ],
                    "text": "vexpr $f1 / 20."
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 848.0, 449.0, 179.0, 74.0 ],
                    "text": "RUNTIME ESTIMATE\n\nh.mm (hour.minutes)\n\nDefault = 150 mAh Lipo Battery "
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 757.0, 449.0, 71.0, 114.0 ],
                    "text": "POWER\n\n0=Battery\n1=USB\n2=Init\n3=Low \n4=Full\n5=Charging"
                }
            },
            {
                "box": {
                    "candycane": 3,
                    "compatibility": 1,
                    "ghostbar": 3,
                    "id": "obj-18",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 271.0, 334.0, 91.0, 99.0 ],
                    "setstyle": 3,
                    "signed": 1,
                    "size": 3,
                    "spacing": 4
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-4",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 848.0, 411.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-3",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 575.0, 411.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 165.0, 38.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 165.0, 115.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 165.0, 154.0, 32.0, 22.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 757.0, 411.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "candycane": 3,
                    "compatibility": 1,
                    "contdata": 1,
                    "ghostbar": 3,
                    "id": "obj-34",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 34.0, 334.0, 91.0, 99.0 ],
                    "setstyle": 1,
                    "signed": 1,
                    "size": 4,
                    "spacing": 4
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 417.0, 332.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 390.0, 332.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "FullPacket" ],
                    "patching_rect": [ 390.0, 293.0, 73.0, 22.0 ],
                    "text": "o.route /1 /2"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 10,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "FullPacket" ],
                    "patching_rect": [ 34.0, 192.0, 344.0, 22.0 ],
                    "text": "o.route /quat /euler /accel /button /light /battery /ping /uptime /ip"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "FullPacket" ],
                    "patching_rect": [ 34.0, 154.0, 59.0, 22.0 ],
                    "text": "o.route /1"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "FullPacket" ],
                    "patching_rect": [ 34.0, 115.0, 97.0, 22.0 ],
                    "text": "o.route /codecell"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 34.0, 39.0, 97.0, 22.0 ],
                    "text": "udpreceive 8000"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 411.5, 612.0, 411.5, 612.0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 43.5, 177.0, 43.5, 177.0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 1 ],
                    "midpoints": [ 869.5, 318.0, 869.5, 318.0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "midpoints": [ 296.27777777777777, 279.0, 869.5, 279.0 ],
                    "source": [ "obj-11", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "midpoints": [ 332.3888888888889, 279.0, 1000.5, 279.0 ],
                    "source": [ "obj-11", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 1 ],
                    "midpoints": [ 187.94444444444446, 279.0, 538.5, 279.0 ],
                    "source": [ "obj-11", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 151.83333333333331, 279.0, 399.5, 279.0 ],
                    "source": [ "obj-11", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 43.5, 216.0, 43.5, 216.0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "midpoints": [ 79.61111111111111, 279.0, 162.5, 279.0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 115.72222222222223, 279.0, 280.5, 279.0 ],
                    "source": [ "obj-11", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "midpoints": [ 224.05555555555554, 279.0, 584.5, 279.0 ],
                    "source": [ "obj-11", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 260.16666666666663, 279.0, 675.5, 279.0 ],
                    "source": [ "obj-11", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "midpoints": [ 368.5, 216.0, 368.5, 216.0 ],
                    "source": [ "obj-11", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 1000.5, 318.0, 1000.5, 318.0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 1251.5, 336.0, 1000.5, 336.0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 510.5, 612.0, 510.5, 612.0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "midpoints": [ 43.5, 573.0, 322.5, 573.0 ],
                    "order": 0,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "midpoints": [ 43.5, 564.0, 43.5, 564.0 ],
                    "order": 2,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "midpoints": [ 43.5, 573.0, 162.5, 573.0 ],
                    "order": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "midpoints": [ 280.5, 573.0, 411.5, 573.0 ],
                    "order": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 280.5, 573.0, 510.5, 573.0 ],
                    "order": 0,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "midpoints": [ 280.5, 435.0, 280.5, 435.0 ],
                    "order": 2,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 399.5, 318.0, 399.5, 318.0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "midpoints": [ 426.5, 318.0, 426.5, 318.0 ],
                    "source": [ "obj-21", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "midpoints": [ 174.5, 138.0, 174.5, 138.0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 174.5, 63.0, 174.5, 63.0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 75.5, 528.0, 43.5, 528.0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "midpoints": [ 280.5, 612.0, 280.5, 612.0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "midpoints": [ 43.5, 435.0, 43.5, 435.0 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 162.5, 318.0, 162.5, 318.0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "midpoints": [ 280.5, 318.0, 280.5, 318.0 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "midpoints": [ 162.5, 612.0, 162.5, 612.0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "midpoints": [ 162.5, 654.0, 162.5, 654.0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 608.5, 396.0, 766.5, 396.0 ],
                    "source": [ "obj-49", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "midpoints": [ 596.5, 396.0, 675.5, 396.0 ],
                    "source": [ "obj-49", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 584.5, 318.0, 584.5, 318.0 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "midpoints": [ 620.5, 396.0, 857.5, 396.0 ],
                    "source": [ "obj-49", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 1148.5, 336.0, 1000.5, 336.0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "midpoints": [ 1090.5, 336.0, 1000.5, 336.0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "midpoints": [ 1090.5, 255.0, 1090.5, 255.0 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 1 ],
                    "midpoints": [ 43.5, 102.0, 187.5, 102.0 ],
                    "order": 0,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "midpoints": [ 43.5, 63.0, 43.5, 63.0 ],
                    "order": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 2 ],
                    "midpoints": [ 620.5, 255.0, 620.5, 255.0 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 1 ],
                    "midpoints": [ 602.5, 216.0, 602.5, 216.0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "midpoints": [ 43.5, 138.0, 43.5, 138.0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}