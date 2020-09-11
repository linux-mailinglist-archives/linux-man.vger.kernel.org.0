Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3DDE2660E4
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 16:04:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726277AbgIKODB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 10:03:01 -0400
Received: from mx01-muc.bfs.de ([193.174.230.67]:3762 "EHLO mx01-muc.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726257AbgIKNUu (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 11 Sep 2020 09:20:50 -0400
X-Greylist: delayed 516 seconds by postgrey-1.27 at vger.kernel.org; Fri, 11 Sep 2020 09:20:43 EDT
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-muc.bfs.de (Postfix) with ESMTPS id 8F42420199;
        Fri, 11 Sep 2020 15:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1599829623;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=6E3rYFAFmZrISpyCxa1f771HtF2yNOuq1RjadVZhysY=;
        b=rDSYCSe7ZDYYWhX+S+0BxwHBsDov1d5CDxN/hhv82w+5fy/R0WfK9WAXSR2A60w0uMgCwt
        2kcnccbMF246KRqUhFNl8c3pN75jEOSbygmo96+oDwohB2pqSEs2GNXpYAWsSwK8wJ5I3d
        GOmKgb5uhmsQXhc70RWgSDFU6qmLGmJIcQIqQxQeZ0P6lk34pTVwqPoa6WylUkHiWYRXNk
        SwvYtE45epmTBdPQTgKkOQinJUnD0OpyaXIFf+GGkYE7mb22wpdS+yj2LWsKt2hthFiaM4
        a8XQGCIqZYg++BvfXlxfK1/Eb9G6sC8IJnPgynur5iMlcHhzZ2tUTvPch73B0g==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Fri, 11 Sep
 2020 15:07:02 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2044.004; Fri, 11 Sep 2020 15:07:02 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: AW: [PATCH 17/24] get_phys_pages.3: Write 'long' instead of 'long
 int'
Thread-Topic: [PATCH 17/24] get_phys_pages.3: Write 'long' instead of 'long
 int'
Thread-Index: AQHWh7gQECdZaDE3LEKYFjT0sUW8TaljZ7N2
Date:   Fri, 11 Sep 2020 13:07:02 +0000
Message-ID: <c15e4262afea4820961bd36e3386b582@bfs.de>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>,<20200910211344.3562-18-colomar.6.4.3@gmail.com>
In-Reply-To: <20200910211344.3562-18-colomar.6.4.3@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3031-8.6.1012-25658.007
x-tm-as-result: No-10--1.508000-5.000000
x-tmase-matchedrid: v0Uhv4cnyYWe/kF8Pup4HBvgzEPRJaDEWw/S0HB7eoMTiSW9r3PknDyj
        o+AkzeHqoM9050SCTLIS+pOxtKEjwvXYz2/SDtYzLFqCUQ7xhcyNY/pqxovzxZ9enr+Dhl0GKKi
        9XIZVdsUEonpJ5L2U1+Mwa0EiWUk5jNea/HVv9rw/ApMPW/xhXkyQ5fRSh265Dfheddyhsqvqs9
        E0tCHijOfOVcxjDhcwlnP9MMAZcdoLbigRnpKlKZx+7GyJjhAUMZAz0VgWU08+j5WrtZqnge0RO
        L8uCZYTkvX/T0z5mGJfaa/N/1NR2T5rzQ1n8RpZ30V9wDbJOG3hwGKyRldHxWfvpucVLz+0xutS
        1t8Wq0GIonbnNHgEwM/qYWYfQTGnSQOPumGIku0fwV6sBPR0lg==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--1.508000-5.000000
x-tmase-version: SMEX-14.0.0.3031-8.6.1012-25658.007
x-tm-snts-smtp: 23665965B90E02EF2CE2DBDB51D0574D52A33A8D3B7234A9258B1F5BAE02FE182000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.04
Authentication-Results: mx01-muc.bfs.de;
        none
X-Spamd-Result: default: False [-0.04 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         TO_DN_SOME(0.00)[];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-1.036];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.04)[57.85%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



sys/sysinfo.h:extern long int get_phys_pages (void)

for the real world i would say that long int =3D=3D long but for the same r=
eason
i would say what the include says and stay away from discussions.

jm2c,
 wh
________________________________________
Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im A=
uftrag von Alejandro Colomar [colomar.6.4.3@gmail.com]
Gesendet: Donnerstag, 10. September 2020 23:13
An: mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org; linux-kernel@vger.kernel.org; Alejandro Colo=
mar
Betreff: [PATCH 17/24] get_phys_pages.3: Write 'long' instead of 'long int'

For consistency.

Most man pages use 'long' instead of 'long int'.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/get_phys_pages.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/get_phys_pages.3 b/man3/get_phys_pages.3
index 4a9177dfd..97ba625b7 100644
--- a/man3/get_phys_pages.3
+++ b/man3/get_phys_pages.3
@@ -30,8 +30,8 @@ page counts
 .nf
 .B "#include <sys/sysinfo.h>"
 .PP
-.B long int get_phys_pages(void);
-.B long int get_avphys_pages(void);
+.B long get_phys_pages(void);
+.B long get_avphys_pages(void);
 .fi
 .SH DESCRIPTION
 The function
--
2.28.0

