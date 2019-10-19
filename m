Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3582EDDB12
	for <lists+linux-man@lfdr.de>; Sat, 19 Oct 2019 23:06:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726146AbfJSVGO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Oct 2019 17:06:14 -0400
Received: from sonic303-22.consmr.mail.ne1.yahoo.com ([66.163.188.148]:39826
        "EHLO sonic303-22.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726129AbfJSVGO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Oct 2019 17:06:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1571519172; bh=YmgFG2GRDyNJlQBM9Fe3thzKiDev1VxF0mzFJgd6688=; h=Date:From:Reply-To:Subject:From:Subject; b=C/09d3AmFBf9zy7E3CgXBnIlRx9FlaezmLQZ+lZOQTTP9Mbilja2r632tAKDW3voQCzQMSlZYXjHCth90BTSk9r0R1TUwrbBklpr43frKjT18h5Zxo8s1je5yqtKiygjziRfa9xmYtJnTK6VZblmjg7eNwZCXX7WKlkqUO3f9nOJtcLt0ovykb3zFTSNt6ROgd74PKeJg/VmhTPNJyXj678j6T6zZQB00fMbXNMKxpOpBTJvE+B6Gjb7KnqXWBvqK92ywZ8VjZ/JQO+vSzhxgla4EZgegFwO3dvoMlSFRm2ugvDmrGlFyF8s/tMXcDYBalyLQ3Gqsi9baKJocEYbCA==
X-YMail-OSG: ttGS_a4VM1nPDVTnqviKbaPav0APlbgOo4pINYL88QYTjgLIORl3ELMISehHmck
 X2ejDRBnnfUNjtw5j3vUBy878OaJ8hiK43udeEk_K6BZOMXVEk8JF9ewxAfAItjssXIxI5l3nd_p
 KpByJKHtSgVqXhvPICZcM37dlKIBxfjA88V0cN0PY6J7eP6Denaqy.P8ituyy66EKydBx98qPBOb
 Q8KHrSurdXMvXc.aueBHoq97dNYLVFlkWT96wz90RdlW306YLrMyEsDjFe59GVoTNxAEqhN9OeF6
 9F1DHokGGdFDs8KdxmNzQlmc7O21Gb2QSFh805FK.iRtB47L8GpEj_9NWph4pw3CCnFkSq4lLtbT
 qlc55JKh4eaDe4tGRp9syMqJKgSwBC9FV2SJkSfpYGTlw.TNAlFrJLp69T7EKp6C_F8YNU3EjBW1
 jIdJd8Za0cviQvESKcN7fKfOTQxsr62nnHDZEku8uAuQcRAMTofkaeNWU14vLKNWdiidlOOLwbeR
 keSdDoG_btJ1B2ou1W01p_jY8J.mNjDl9sM.RxKjoYZnFtDFE7xOHrlzik3vUt1togRFxg9VHgMm
 z9aG19Juzl9iXLdi8R015VFueZXltsny7waxt0_EgmrJXzIV7ruBZpNMSHbUYFB2Dtq5uyToaw_F
 xc9ZiHOxXvNxCxcuJMZiD4syTGK1V4ZG8r9P1tutv2vEaYBOkflOrZCy7UHaYyuNME5Pe.M9wMbY
 9gvOMDHs24bIliMjQ01XC5tO8wYzKwoU7ApoTA8XqrVbJLLxxGxNkkjqdfHUEaQ4Yq7Sx2uCKLB7
 .5jwZQtW_ATLo4w.rfRBKSAp.cWmYeor0sEQZWLjDBGXCVeQd4fkGkeRvFIBdUVbCibUuBbqlB_9
 svw0gsAtk4wzrkIwLwz.TqmrHKqZt3ZpPxRdowqGB.d5dAe.iAio40RuFdzUQr_PWaMeofX8.D__
 5rEPPFMETl_OVyi.lfU.MYTHFuvWCtI2vtG4dIEY4.qlSCe7bGLhs__oO96k4xyagjP8Xi6T2a_0
 34iGi6foVWHMgwxDlOKMQj6ifQh6QwuIgamTEu50asqtFj5rn_kSzw_C.znU9CUpUMKIyOlgkojr
 LmN0zHb.m_me1w5UFVaxzYNhw47tezyBN8_LL6YXA2yhA0ojN8WrT2OJaHQsQRIVDj2BE7RN_ukx
 mpfpDapWsesKrniGoKRWmRG59ddS.8sqcjiC.bHKefflMXXevhwgwsxlZAM6zarhRhappFFP5BV6
 CDhsE1whMtE6mEHDYCzh7N7xW532xBPs6HSBzodE.OEsgnSKrnUsWbvKVimYLpXFW7aEhPPuyJLw
 m481cGRVGzzpQgu6udvsb
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.ne1.yahoo.com with HTTP; Sat, 19 Oct 2019 21:06:12 +0000
Date:   Sat, 19 Oct 2019 21:06:11 +0000 (UTC)
From:   michelle family <revpastorcollins@rocketmail.com>
Reply-To: michelle.family@yahoo.com
Message-ID: <999979306.4000613.1571519171487@mail.yahoo.com>
Subject: BUSCANDO SUA AJUDA
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
To:     unlisted-recipients:; (no To-header on input)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



BUSCANDO SUA AJUDA
=C3=80 procura de algu=C3=A9m confi=C3=A1vel, sincero e honesto como voc=C3=
=AA, que possa me ajudar neste momento de necessidades, durante a crise civ=
il e pol=C3=ADtica em nosso pa=C3=ADs, meus pais junto com minhas tr=C3=AAs=
 irm=C3=A3s foram envenenados por crueldade. Felizmente para mim, eu estava=
 na escola quando esta trag=C3=A9dia aconteceu com minha fam=C3=ADlia. Isso=
 =C3=A9 a prop=C3=B3sito. Neste momento ainda estou aqui no campo, mas muit=
o inseguro para mim. Estou vivendo em grande medo e escravid=C3=A3o. Eu pre=
tendo deixar este pa=C3=ADs o mais r=C3=A1pido poss=C3=ADvel, mas apenas um=
a coisa me manteve de volta. Meu falecido pai depositou em uma das principa=
is institui=C3=A7=C3=B5es da Europa a quantia em dinheiro, 3,2 milh=C3=B5es=
 de euros, para transfer=C3=AAncia

Mas infelizmente ele n=C3=A3o completou a transa=C3=A7=C3=A3o antes de morr=
er repentinamente. 45% para sua ajuda e assist=C3=AAncia, porque parece est=
=C3=BApido para mim tentar confiar em um estranho total que eu nunca encont=
rei antes. Por instinto, estou convencido de que voc=C3=AA =C3=A9 uma pesso=
a honesta e tem a capacidade de lidar com essa transa=C3=A7=C3=A3o comigo. =
Assim que estiver pronto, irei ao seu encontro e passarei o resto da minha =
vida no seu pa=C3=ADs. Aqui embaixo, eu estou com medo porque inimigos, tio=
s e parentes perversos de meus pais est=C3=A3o me ca=C3=A7ando. Por favor, =
deixe-me saber sua mente sobre a minha proposta para voc=C3=AA. Por favor, =
entre em contato comigo com este e-mail (michelle.family@yahoo.com)

Senhorita michelle
