Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE2D58AA27
	for <lists+linux-man@lfdr.de>; Tue, 13 Aug 2019 00:10:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726236AbfHLWKC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Aug 2019 18:10:02 -0400
Received: from sonic317-33.consmr.mail.ne1.yahoo.com ([66.163.184.44]:41281
        "EHLO sonic317-33.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726185AbfHLWKC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Aug 2019 18:10:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rocketmail.com; s=s2048; t=1565647801; bh=PNalza8vY9gdbBgRU4e/KJFzy3oXVMBTCEaIdc8Mv28=; h=Date:From:Reply-To:Subject:From:Subject; b=B3Rgd4sF6HsTw3krB1BTJbTDbNBO1he70pho3mge4/80fJqPQ9nH7QY4UGUe+BGXlNIu2sNBzSot+MCu2L4l+Tqt6OJv4NXCInrQXjBrMhyZ3JH7RiHVCaaq0hxFXvX3atUnzlM3kBy20pCnuUcOTLQ2ksFMQ/hDr3NYkZ9ax1kJGFClj7V7hZOdIZk9CeErwBiFOjfBA62HJjRAG1vsNsUbw4EhQ7fvb7jQYdmVIEgXFqDK30xCDQyy4duzKGqux5aexnS2IA6/QywhWd5BZV+dpN6zjSOmwXDiDMNoea7ouTmTEMJmxKMYQ7DsCGHjeftLiIIvP2B7xVReg35udA==
X-YMail-OSG: TgldmUoVM1lD2xucAUJqy.6VU1xsw8IcsEuZmbiA34it6bwkNMGCWVICFhu.DaP
 TiiLYOda8vsHmQp3QUECbVTpGU42LeVNGFJxnCf2N_ljVuFxDwi80ULEYHgi9caPcrOcVu2VGgfE
 UcVa0yoO.JTXQjPjK21zULWjzsZWfOXagYHjHjoZxFiWtTqK0Clk6a2.TB9JhShUSQJunBqKflFp
 WyoZDKzQor5qr72l6esjSTPVE386ZXFrtVv3Q0DHtQG3CC1v0k2Ah65BOXdZ.9wUcDEt_I8vd3d5
 ZWBXyONC.bDoNk955_RkX5EnIQ7sdjmjbK24OsAoAKXSxu.TncMB8mwgvC4zfClbPWg9TMcLf_yl
 RPFULAI_89l52BsflIKlkXwVfh2b77h2n4LUT35KQ4JrhF6sombJ75wK7DBqNOijFnwA0Iw5m9KQ
 CG8g7k_H4C2l53GuIk2trCkyj60.5fonPruDwhIJtZWFCH0hrf4I.ox3UEiUkz1dNBFcBfYvNim7
 tWsXUnvf3mlSxdoWcjmj469P8cs8koHQietobH4SOHQCufdJLwDX_p5buSPTDN6susm.Qn_PAfPU
 nHlWaJfvidIavORirUj7DyJhPW05O5E0PgqIiEHxnyebQbMurvv3759AhBK22IdjAm9Nucaeyed8
 NMrbaUM_2w6CJSWa7ZGhZvIbqU5H2OTzaN0Js995bFppMIv11x85CA9dqcnQ7pl0uyywwm2PFOOu
 WzzRd.PQVDocuIoZNaLBNXKt3mCMI8rpMj1ubX8LLn9Rpd.m3B.EbXRVVYh0z9IcvdYmKa6YTXRH
 P.jNRWF6WrTEZur.ntqxAS0rP9ycJxI7CzecXhHoT5ZFgOqsRa4sBK5yrWwo8_54iBLTCtMb1Y5J
 uq4NHrD6QgQKT6HwsL7RWkJRE91.5fEE5qDIOJy6bLdlHIEVjXdVZ969LeaKNcsWQq.HMi2EOabj
 rl7d7chX68WD.1ZEu8aUowiAR01_r2t8vvbbsYt1JAU4M03q37X4XMBu3tYRPs36ajGLUCG30oAx
 668F3Ldv2Pq7MqAyMu3FyeVNHALaKkK_6K_7QHuNLP_MXWe.kfcf2NCYvEWpyYzbqp0VO_GeeIv8
 ae4UE5ZeZAfsHpZSzajSaxsPpzZDEv.LwWnMINWkUdT8Umdjt2B65oI8j47b6WAy0R5xy6jURN2a
 xW1eXBQuW9OElyD2fYORuO5Va8B6NiMQQtugnfFm0pYZGo8kdFviiQfgfX25.VMToo8RXSC6jHqh
 HzUjj_xhTfgUYJmD5sA--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.ne1.yahoo.com with HTTP; Mon, 12 Aug 2019 22:10:01 +0000
Date:   Mon, 12 Aug 2019 22:10:01 +0000 (UTC)
From:   michelle family <revpastorcollins@rocketmail.com>
Reply-To: mchelle3@yahoo.com
Message-ID: <1143358552.4450073.1565647801029@mail.yahoo.com>
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
entre em contato comigo com este e-mail (mchelle3@yahoo.com)

Senhorita michelle
