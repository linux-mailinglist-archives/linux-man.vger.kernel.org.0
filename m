Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9B899AFAFD
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2019 12:59:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726735AbfIKK74 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Sep 2019 06:59:56 -0400
Received: from sonic313-20.consmr.mail.ir2.yahoo.com ([77.238.179.187]:37116
        "EHLO sonic313-20.consmr.mail.ir2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726781AbfIKK74 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Sep 2019 06:59:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048; t=1568199594; bh=pn0xjZnv+23Wk+pkwNC3KFB34A9/u0wzX77UiId3/Oc=; h=Date:From:Reply-To:Subject:From:Subject; b=SUHiI983z2sFMLMI3qUMbzbozKBSNZByizQSBU957NqOWJelDCPfzlNvkZ3fxGEMIyXosimr42sC/QovMKiht+gQm62En9ln8PAhuHv1xziSKZgXR25IbuNDs8P3lJObH4sJKW8CsPd1jEB8l+kmAK0O4c9zG0rH/yelie5YnevPqzZB8jtAU8ZhG/Bmr20bKr1biTKuPAJd0ezUjtcC+bEsMqsfE8UoZIzv2eGzcU8Ms7hE01IrToyKA3Dh7qgYWOgF6oFxxUi2Af3qKOk6kLUJFjihJ5ygeweetNYqV9vADPgfoKGoW1aULADbJ01Z58cGB1GyqNIkr9NE4L8Nxw==
X-YMail-OSG: hUB8jjsVM1l81UuTqPXlHgh4IW8yMHldZfXE7ZHw6Z8mTYhi9U8czijvRapi.Os
 EgQXA_QIesqKYZGdfysIYbrPQTFP0sWNOzhpugMKwk_vmaVWiYBYNoJBoBrdE8206ypv5TJYdVCs
 oSIc2GerKpsMAktEnHTxgBEzZc5azSCtBweEPi6wYFBKjqLCAPAT21UkYwN5.lkUmlBEob5sNzm8
 L8OkFb066sIReTe28i_qGm7RKwWOrFwWHVbvObqgJ5.A6NVoCY4zPokPNF57qWS_CSrjM489bWjR
 F9qaT.3xvcE7ffWa1NFMGnoFvzAk93IBvOwe1s5pBw4x3gXZfc7ndTnB_ZNazwTgjcHi_r5JOdHK
 6ZrTlCSeS4U17GO3YCUC1DWOehQDZKJz57xiHuZkDdgx6DWtDCZkXXrjAy5P1DRvnbmb6z2OLQcC
 Ic1rjmRthYPDWM9mP0m74VMHgKhHGgs7d7F6FwSHhA1M_YavU6XcUb.Yai1Y1MelFn0VeyDY74Fq
 tYyZ2djTo25LIQNnUKhBdPTMwPR9ATMSWlbDsj37ml2IWOesvppMW5oGYypofbz5ppCWUA1Uof66
 rdXdCKqw3iIUCwJdn5cuQ_zQZ65TqwiCLN1D4JH1E3nQ4fQUq2_l0U4R.Zlrho8ie_8ODhF3AJcU
 fx5QAvdh_xdInXZKaIBID9TQTQq3s0D0XuzsLnPirFdE2uG2LdASoXU.7uhuEmtQEDJE97R5VbE2
 5oceFjH_7kqXuTbc8lUZ2J9IpC5x3o7ZOXzpENQ58IqTY64FMW8kVWgJnNgOkt.SDFTjL_FW3.3c
 WLqCZT2Ppnlcew8bPBGIUrOpWDbkKmWgjqAfvN1wiZbHDvlsEPamKH8FrUU_eN7GFhiUnDQJaSMH
 MGaMLpuJk978A3qbvOxpR7sI3lVBOBzJ.UOsCfiJPAuIEJd9HTPPUK2Air4Z24Em0UA.GMtzaFbL
 oHniP6ncw5wgKa233OTxRCGinECiFsawvSaamVQmX4fT6xbaom6xdby_ZKgVyDBLUCtizXygYm8v
 tpMLIVoZ1oTGrFW2vTdfm77fvWDYu1_lmao6dZcjx2pB5oWzBW.0yHrgALOGAWvdTiaZdBMPP0LE
 NOWVitl5GQsDsdc.jbORr1zyfk_V8_D_OtUjP7jvXfZdjQEVMQEjZK18wKQko84eYflHi6nikRhF
 fA8xyj5R..4TqmGDyl5bYDVjARWfmUxxAvI_pGA2g.m584ZGqD.bGd7dbREbejP.eeqDMMB6FS1g
 UYjKcnhGclhrjwRpCb3MvVsqj3Q--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.ir2.yahoo.com with HTTP; Wed, 11 Sep 2019 10:59:54 +0000
Date:   Wed, 11 Sep 2019 10:59:51 +0000 (UTC)
From:   Marina Robert <robertmarina@aol.com>
Reply-To: marinarobert110@gmail.com
Message-ID: <479183833.7729724.1568199591721@mail.yahoo.com>
Subject: Re: Mein Brief,
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
To:     unlisted-recipients:; (no To-header on input)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Re: Mein Brief,

Ich wei=C3=9F, dass diese Nachricht Sie =C3=BCberraschen k=C3=B6nnte. Es is=
t jedoch nur mein dringender Bedarf an einem ausl=C3=A4ndischen Partner, de=
r mich dazu veranlasst hat, Sie f=C3=BCr eine Transaktion auf diesem Weg zu=
 kontaktieren. Ich bin Fr=C3=A4ulein Marina Robert, 19 Jahre alt, das einzi=
ge Kind des verstorbenen Mr. und Mrs. Jackson Robert. Mein Vater war ein se=
hr reicher Kakaoh=C3=A4ndler und Politiker an der Elfenbeink=C3=BCste, der =
von bekannten Leuten erschossen wurde.

Vor dem Tod meines Vaters in einem privaten Krankenhaus rief er mich heimli=
ch an und sagte mir, er habe die Summe von neun Millionen f=C3=BCnfhundertt=
ausend US-Dollar. USD ($ 9.500.000) auf einem Konto von Fixed / Suspend bei=
 einer der besten Banken hier in Abidjan, das er als sein einziges Kind f=
=C3=BCr den n=C3=A4chsten Kin bei der Einzahlung des Geldes verwendet hat. =
Er

Ich erkl=C3=A4rte auch, dass er wegen dieses Reichtums get=C3=B6tet wurde u=
nd mich wegen seines Bruders aufgew=C3=A4rmt hat.

Ich m=C3=B6chte, dass Sie mir bei Folgendem helfen:

(1) Um ein Bankkonto bereitzustellen, wird das Geld =C3=BCberwiesen.
(2) Als Vormund zu dienen.
(3) Um zu veranlassen, dass ich in Ihr Land komme, um mein Studium fortzuse=
tzen und eine Aufenthaltserlaubnis in Ihrem Land zu erhalten.

Ich biete Ihnen 25% der Gesamtsumme als Entsch=C3=A4digung f=C3=BCr Ihren A=
ufwand nach erfolgreicher =C3=9Cberweisung dieses Geldes auf Ihr nominierte=
s Konto an. Bitte antworten Sie mir, wenn Sie mir aufrichtig helfen k=C3=B6=
nnen. Bitte antworten Sie mir mit dieser E-Mail-Adresse: mr4help1@gmail.com

Danke und Gott sch=C3=BCtze dich
Ich warte auf Ihre dringende Antwort.
Gr=C3=BC=C3=9Fe,
Fr=C3=A4ulein Marina Robert
Mail: mr4help1@gmail.com
