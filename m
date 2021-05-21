Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A350538C785
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 15:12:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230290AbhEUNNX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 09:13:23 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:19526 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229915AbhEUNNU (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 21 May 2021 09:13:20 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 4F0FE2072A;
        Fri, 21 May 2021 15:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1621602716;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=PYadnBMToPq5Vvcp5pynGqF9vcF3LZ0FVHMEPttWrpQ=;
        b=STG3bkbQ3JM+OvDY3elbwAn15638fI7NSBgtla2DvhrEMfpSH78G1h1NX4nKci6Gypfphd
        k06ANbCy6LkDd8gTGHzJM7J/rRWOzd8vLDg7W3S3Rm1WGwYmgesTD8dclXZ3N5MHhNFtv0
        HPcdboJ8WDajFCJq6Ks8wEDmwv0Hxs7tiI6TulNdAr92JRftEGk845js1Ace4Gv9E7KI9J
        qZ89sGYvEv2IkKqNkMbWokhC8o1rFW9yahzRP6byQDxxMte4uWsrEur1F2nET8NSSLiQJL
        0xCDvDSiPPeAs1Z0SL+d8nnKLxlciT1rQsv3MAC22+RxH6lin785oR74xGaibw==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.4; Fri, 21 May
 2021 15:11:55 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2242.008; Fri, 21 May 2021 15:11:55 +0200
From:   Walter Harms <wharms@bfs.de>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: AW: Re:
Thread-Topic: Re:
Thread-Index: AQHXTPMWVIcs2d4EfEKcaQoC4sfWeqrtpqiAgAA6BXw=
Date:   Fri, 21 May 2021 13:11:55 +0000
Message-ID: <9baa6f3ac0dd45b4b75a11044dd0f0ed@bfs.de>
References: <60a57e3a.lbqA81rLGmtH2qoy%Radisson97@gmx.de>,<6d2849cd-d8af-0539-e579-3201daed6ab1@gmail.com>
In-Reply-To: <6d2849cd-d8af-0539-e579-3201daed6ab1@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26172.000
x-tm-as-result: No-10--5.221600-5.000000
x-tmase-matchedrid: GV9cQvR5CLjRubRCcrbc5grcxrzwsv5u3dCmvEa6IiGoLZarzrrPmYVH
        2zcrc5+5Y9IIZbKo3F/8OLoEItmIBrfBrkBZSdWA9u1rQ4BgXPIs+CgjlNydnJQvlZyyL67hN4I
        xix1zvwXnHqJEtsM2g7xFpZGWIKcrzECxVOnBRA4eTAX99VElYA8JAnaMw0RV/q/20XcvFJUhlG
        9iTcYtak/ZxgG+lRG1XzoVjw1xuYkzPQQUbmWdb6oXHZz/dXlxK/YFZTiDf+otferJ/d7Ab9PLn
        r6G+Iy7JUCnmotb9KhGaC1P7W9BbPvPDLccHn7ijrVn4cme+w74qCLIu0mtIEukIs3g1HjeoeER
        vOjvHV3ixW+lK0/v4CtMgircbnS/G3Jt29YAwfCrm7DrUlmNkF+24nCsUSFNBLPx9cDMrKbdB/C
        xWTRRu92KvEVWmYr1EefVZ2XkFRmSCIk8UKH0fFpc/OZBASv1Le/NjhQo6eBsFqpgs46IiQ==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--5.221600-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26172.000
x-tm-snts-smtp: 32C8D11BFC3E74E5226A1D3EFD2247E122670967FC6AA8C49F5A3F3BBE32D69D2000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-16.18 / 7.00];
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
         BAYES_HAM(-1.18)[89.03%];
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
X-Spam-Status: No, score=-16.18
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I will not argue that the function is deprecated.

NTL i added the gamma_r function that are missing
and changed the wording for the description. I think
it is better than in lgamma especially  for signgam.
I noticed that it should be more obvious.

re,
 wh


________________________________________
Von: Alejandro Colomar (man-pages) <alx.manpages@gmail.com>
Gesendet: Freitag, 21. Mai 2021 13:04
An: Radisson97@gmx.de
Cc: linux-man@vger.kernel.org; Michael Kerrisk (man-pages)
Betreff: Re:

WARNUNG: Diese E-Mail kam von au=DFerhalb der Organisation. Klicken Sie nic=
ht auf Links oder =F6ffnen Sie keine Anh=E4nge, es sei denn, Sie kennen den=
/die Absender*in und wissen, dass der Inhalt sicher ist.


Hi Walter,

On 5/19/21 11:08 PM, Radisson97@gmx.de wrote:
>  From 765db7b7714514780b4e613c6d09d2ff454b1ef8 Mon Sep 17 00:00:00 2001
> From: Harms <wharms@bfs.de>
> Date: Wed, 19 May 2021 22:25:08 +0200
> Subject: [PATCH] gamma.3:Add reentrant functions gamma_r
>
> Add three variants of gamma_r and explain
> the use of the second argument sig
>
> Signed-off-by: Harms <wharms@bfs.de>

I just read the manual page about gamma, and those functions/macros are
deprecated (use either lgamma or tgamma instead).  As far as I can read,
those alternative functions have all the functionality one can need, so
I guess there's zero reasons to use gamma at all, which is a misleading
alias for lgamma.  I think I won't patch that page at all.

The glibc source code itself has a comment saying that gamma macros are
obsolete:

[
#if defined __USE_MISC || (defined __USE_XOPEN && !defined  __USE_XOPEN2K)
# if !__MATH_DECLARING_FLOATN
/* Obsolete alias for `lgamma'.  */
__MATHCALL (gamma,, (_Mdouble_));
# endif
#endif
]

Thanks,

Alex


--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
