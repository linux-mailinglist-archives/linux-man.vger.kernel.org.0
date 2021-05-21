Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D2DB38C8EE
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 16:08:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233556AbhEUOKF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 10:10:05 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:9768 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232170AbhEUOKF (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 21 May 2021 10:10:05 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 23F2A20655;
        Fri, 21 May 2021 16:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1621606121;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=m0KBNvFtJO6NXDKZV6z6PKytEDf0WPO9H0CTy0gHsD4=;
        b=kYCN3fZLoUN2W46uyqxT10Fc/RzDHnAM0wTc+KOSXwdJgsM0prDS7Gp2jSnwnCpesC0rej
        BML7yimzFUscf0ANaFInjW/6ZbBO9s0e/bkbJdiAUZb3UJFK1NyZ9kDktw7SWFocaYbRK3
        JhDdhPN9BwOol5bN3hfARg5alrUCmrrfsg4d2OP1/R0YnRYnl1mECoieODlQXZ/iuEOeUg
        hA2aF4+QEl2KkM2IPf4q7+e30mtQa/ImmLm9ZWvFMOYymiKcRENzgPR8ozgh0ZhwnS8d1r
        WEmvVHL+OcAZxEInKiqhI2Dm2RThOlID+Ep1aIWTQWjeyEK3iM6x4GvkHeP4mg==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.4; Fri, 21 May
 2021 16:08:40 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2242.008; Fri, 21 May 2021 16:08:40 +0200
From:   Walter Harms <wharms@bfs.de>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: AW: AW: Re:
Thread-Topic: AW: Re:
Thread-Index: AQHXTPMWVIcs2d4EfEKcaQoC4sfWeqrtpqiAgAA6BXz//+6JAIAAJiPX
Date:   Fri, 21 May 2021 14:08:40 +0000
Message-ID: <904f79501b114346a3e7bd84efb13a6a@bfs.de>
References: <60a57e3a.lbqA81rLGmtH2qoy%Radisson97@gmx.de>
 <6d2849cd-d8af-0539-e579-3201daed6ab1@gmail.com>
 <9baa6f3ac0dd45b4b75a11044dd0f0ed@bfs.de>,<763071ea-e70d-ef89-8455-da7662e67518@gmail.com>
In-Reply-To: <763071ea-e70d-ef89-8455-da7662e67518@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26172.000
x-tm-as-result: No-10--3.218200-5.000000
x-tmase-matchedrid: 1S6u5QTQd1vRubRCcrbc5grcxrzwsv5u3dCmvEa6IiGoLZarzrrPmUYj
        NK+Q6GZAMYarc+woSczVeptTRKjYpdSefNlpHYemF3wQ0cu1bTMzTATDGmcD/j+B/tp8itBTpai
        fMRbHH7mrLIIv7em00K5svhqHJ8Su+TcmArI4kFrc+EHoN3gzlyBP+xe0Zet/Y4zJvUjGrxWLa/
        0H8DRDQZ0Ag7ACu4P/dqQQIhr5j4vfkJeYYItMRTkWEAXjjR2RnnjOyk87HN98YCCIGSc4tfFnz
        pYjk62hAfQ5bTA9gjWPWx38Q1qIm/iaJZQRpNA+194/5X9VfCwiJN3aXuV/oVEPmF4mfG4ru+Ub
        Xqs0HDcDCvV3UwP6eNRkgfXwQXSR7GX0c1UlalyVjmqvt/p8cjXN9+/4/e70lwV2iaAfSWeDGx/
        OQ1GV8t0H8LFZNFG7doMssNsUwYX2pH88br2lQAWphomgN7PjVLyDG+34W+5xqRKs5yxY0FYSqY
        XZTfrLEGaWAtDHqNsFIeOmxHSEY8j8Qji4Huh5jyEn4YaUvO/e4R8pXaDytwntx4SzZN2w0zUHR
        QIpp96lf7LKrFw+x9Tq6WfhLX2j
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--3.218200-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26172.000
x-tm-snts-smtp: E9E00CCC6579601C64DAA9DF18BF4668AE3610475AEAC8DFD6D977157E6A13E22000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-15.00 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[3];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         TO_DN_SOME(0.00)[];
         BAYES_HAM(-0.00)[21.24%];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[]
X-Spam-Status: No, score=-15.00
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

(before we misunderstand each other i do not insists on that patch)

The function is available and that should be documented.
They seem available for some time, but glibc says: These functions=20
exist for compatibility reasons.

What is about a merger with lgamma() ?

adding to the notes section something like that:
   glibc version
       Glibc  has  a  gamma() function (and _r) that is equivalent to=20
       lgamma(3) and computes the natural logarithm of the Gamma function.
       That function is deprecated and should not be used in newer programs=
.=20


re,
 wh

________________________________________
Von: Alejandro Colomar (man-pages) <alx.manpages@gmail.com>
Gesendet: Freitag, 21. Mai 2021 15:29
An: Walter Harms
Cc: linux-man@vger.kernel.org; Michael Kerrisk (man-pages)
Betreff: Re: AW: Re:

WARNUNG: Diese E-Mail kam von au=DFerhalb der Organisation. Klicken Sie nic=
ht auf Links oder =F6ffnen Sie keine Anh=E4nge, es sei denn, Sie kennen den=
/die Absender*in und wissen, dass der Inhalt sicher ist.


Hi Walter,

On 5/21/21 3:11 PM, Walter Harms wrote:
> I will not argue that the function is deprecated.
>
> NTL i added the gamma_r function that are missing
> and changed the wording for the description. I think
> it is better than in lgamma especially  for signgam.
> I noticed that it should be more obvious.
>
> re,
>   wh

I never used these functions, so I don know for sure.  Isn't gamma_r(3)
just an (obsolete) alias for lgamma_r(3)?

If so, lgamma_r(3) is already documented, and the gamma(3) manual page
already points to it.  I don't see why gamma_r(3), which is obsolete,
should be documented.

Thanks,

Alex


--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
