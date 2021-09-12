Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79796407D05
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 13:33:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231194AbhILLfA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 07:35:00 -0400
Received: from mout.web.de ([217.72.192.78]:46989 "EHLO mout.web.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229635AbhILLfA (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 12 Sep 2021 07:35:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
        s=dbaedf251592; t=1631446419;
        bh=ER+sTjIrKjYiuX6azxzH9h4EFX/+u8AaMc0gMSU/qP0=;
        h=X-UI-Sender-Class:Date:Subject:From:In-Reply-To:References:To:Cc;
        b=XvjLNzEv6G7l2Fve2FKiYFJlGtebEjVXNqmiCEr0BBpBQIM2Jcyh7YGrUd5hwBtP6
         8eApoAZA1ubsvJiWSZMHT7V2TYdcYhqQxgOlZSh3FcTOLAYOotMiEuMFPnaxZ6g7lv
         fblZezrUpujSudbQrRkDyKNacK7c5WfZYVu+mzvw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [127.0.0.1] ([93.202.228.167]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LoHgL-1mrakU0ILx-00gDqy; Sun, 12
 Sep 2021 13:33:39 +0200
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: BlackBerry Email (10.3.3.3216)
Message-ID: <20210912113338.5181521.88860.87504@email.de>
Date:   Sun, 12 Sep 2021 13:33:38 +0200
Subject: AW: .ad l/.ad b
From:   Oliver Corff <oliver.corff@email.de>
In-Reply-To: <d95326e0-7b0c-b057-3412-f60264fe1ad9@gmail.com>
References: <d95326e0-7b0c-b057-3412-f60264fe1ad9@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff@gnu.org
X-Provags-ID: V03:K1:E5FKAgBWgy3Dv1YvhIYhFZTjjJLxjocmXVtu4fH3upntcPptsIh
 5nRf0XUAzPUrE6bdWlS2zwRKXglJGKxwnlAYMC+HKn+CUviZL90COGcuQWj/NsSgBI9rpMk
 pQu3oTkNqMbPPogrK2ht4PwM+UWY9TwhcjOyKkZBVZF5xB1nSlDyphbQzuM2L8m5Fc+Yg4J
 2q9w+9OAugnBmo5QYRfAw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SThSmjhDZXY=:9RgMe9E4ijzTU/UV/WdZmc
 LQK3ftuDxKggbQyEQ3NU9cgoHjKqeb+83Tc7zTgnrST94xogcbPUbpX9rH/1S8fiFzpgbfo16
 M2F+4fVormSamruKLXpD75AXK84G86pYl6NDiFK690q4Rg/Xy3GIDeuC1C3aSYGIJ5BUArmRJ
 An2J2oOnceMfQw0fcO47gClZhenhF+BmivGSB51nH6ZBeyCtHvhbzIMQmArgC9EdFjXNQZdQ4
 FqUr3IIlZdcht7+TLveLFZSUTMxIX1/2w0Thj0jGszOwepv5OYI6W2u5mY5MP7xbJ8HX5T3IS
 Im314fstinNuXxl6vKYxPdUSdZcZ0/ekC6N2nEEvfQRXU8s6ikyT7FzDoERu6ACbTYsDSFcGz
 naXamhS92+cWeMJS0PsGu5HnkA7t9MgvWCpCub/6wH6ZnQ5My4C25wzeA0S2x6QafXUE2GgjT
 yS2HgNSyY77drk8WCbNLNbaJEOj/w6DvMrsDSutMC3JBwLxiQ4Vy1QhcavbeNzP0qKPAK+s5M
 CZklaf9g4ZCAcQMnNTntTrXSDIu6CKMgDqBTUIGhr/saaP/4MKdGK7LFPFG4WlX1F8YJr/6rf
 /e4JYlNMONG+bzreDZugXABoIuowQN9JS7tcLZRuPubxkM9u6aYTQxNrAs33LBNP3DMx20Fmv
 3QCx/10bIa9k3bkXYMTLx3h6T/hP8F3OQvTVrdZjoSfSpfcaTO3hQBt5L70eWyl6ISm/p/QFK
 6Rqnd7IctDaL7vGX04K9nC8jfTq4p1cOAEEUa1LoDdJwX1fUVMd5MIWXPyNIxAL2qMGzS+FL0
 kO2fCaJwqPQ1LObO59B0mbKrlVlNuvBmdoIbm1X/UZIeps+J6cGZYw8Yp26oWau5ThuIn0LUZ
 mPhwl2Mqgu77fRyQOktxDHouKvOcObNrKyoWo/zsNyojo48bxH9Z4FWpNQIhfHV/rf6ZFmfzF
 W3Sa8qpyy8rWXCe0FKbaTXCCATx6uM3sDxYe3zfLRu0pdtMp0BDX3px1RBci03R9mBW2W/iV7
 cLTaCDDK3be0u+DqKmndWVYKHSGOHuG3xYGhjjCAsQWPkqRUpD7ml9cJuf+ADQnvOW6SksbAs
 SQh/x0SAjwUTVo=
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,


.ad Begin line adjustment for output lines in current
adjust mode.
.ad c Start line adjustment in mode c (c=3Dl,r,c,b,n).

That looks like left, right, centered, block and neutral?

Just my uninformed guess, and I am not at all sure about my impromptu Inter=
pretation of 'n'.

Best regards,=C2=A0
Oliver.


Dr.=C2=A0Oliver=C2=A0Corff=E2=80=8E
Mailto:oliver.corff@email.de
=C2=A0 Originalnachricht =C2=A0
Von: Alejandro Colomar (man-pages)
Gesendet: Sonntag, 12. September 2021 13:13
An: Michael Kerrisk (man-pages); G. Branden Robinson
Cc: linux-man; groff@gnu.org
Betreff: .ad l/.ad b

Hi, Branden and Michael!

I've seen these in shmctl.2, and didn't know what they mean.
groff(7) wasn't very helpful.

[
.SH SYNOPSIS
.nf
.ad l
.B #include <sys/shm.h>
.PP
.BI "int shmctl(int " shmid ", int " cmd ", struct shmid_ds *" buf );
.ad b
.fi
]

What are those '.ad X' and do we really need them?

I found some other pages that use it:

[
.../linux/man-pages$ grep -rn '^\.ad b' man?
man1/localedef.1:60:.ad b
man2/setsid.2:40:.ad b
man2/acct.2:41:.ad b
man2/shmctl.2:55:.ad b
man2/shmget.2:50:.ad b
]

groff(7) related info:

[
.ad Begin line adjustment for output lines in current
adjust mode.
.ad c Start line adjustment in mode c (c=3Dl,r,c,b,n).
]

But what does each mode mean? I couldn't find anything about them in=20
the manual page.


Thanks,

Alex


--=20
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/

