Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25D4526665A
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 19:26:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726325AbgIKR0X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 13:26:23 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:61832 "EHLO mx02-sz.bfs.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726113AbgIKM6j (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 11 Sep 2020 08:58:39 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx02-sz.bfs.de (Postfix) with ESMTPS id 47814203DB;
        Fri, 11 Sep 2020 14:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1599829089;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=L40kMvMDswtpltZSdpT2pESFvFP3UMEywRhPksC0OFM=;
        b=UceLh3yjMngBR5/Qvj7HvIY0HAeDiRCxVLyMtTDi0NPdAAcTYkgvyhTc1U6RcBrOjuewrK
        bYIJdIwJwaqcaiB1zrDPb0hYqepR8c0rgCkOii8N1Q2d8wfmvm5qHhppgCHFjMqoVlR03g
        oE1Iq6x7Kav22cn9DseS5uVy++SppatNguZthiD+jO4WvPVmtwLmyqbSD0zWYGsih5rIBU
        9AE0wxy95hXa5m4uceNa5NJdPY07pDafT+Li1ry4Tez7+PdI9PHJ8TM8TvXpDMvKDfJA78
        khQZfRjM63n/EeUJRpM4MrRs/AN/HZuzkpbfnk60KiWudU9ZTAJ0OF699EdjZQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Fri, 11 Sep
 2020 14:58:08 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2044.004; Fri, 11 Sep 2020 14:58:08 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: AW: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
Thread-Topic: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
Thread-Index: AQHWh7ekvr9SJXm8Bk6Na0a/qHv10aljZXyt
Date:   Fri, 11 Sep 2020 12:58:08 +0000
Message-ID: <4ace434523f5491b9efcc7af175ad781@bfs.de>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>,<20200910211344.3562-23-colomar.6.4.3@gmail.com>
In-Reply-To: <20200910211344.3562-23-colomar.6.4.3@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3031-8.6.1012-25658.007
x-tm-as-result: No-10--5.836500-5.000000
x-tmase-matchedrid: mvluSfSKbybRubRCcrbc5pzEHTUOuMX33dCmvEa6IiGoLZarzrrPmcLd
        MXfog1WYIoALBmt6oJro1ttwfWN15pzPBTBc3KHCcN+LFb07lxjTVHD9mbrDhPn6214PlHOF5sZ
        TwYHfBM5dK5hwx1Qr/D4WjpSMg/WIGWYDzz6TOfN08zy97KsgJktc8DbogbSE31GU/N5W5BAe7c
        YFPRDDky2r+gTHbeatYulifZwH2NwKiVwZzGFT+ovqrlGw2G/kK/YFZTiDf+oHBnQgwI04wXgjV
        dZjIv+OkOKRdfUdaLPDtlQ2P5abstyjX5A5gwm8ngIgpj8eDcByZ8zcONpAscRB0bsfrpPIfiAq
        rjYtFiQi9ZpRcNkm3ev0/9pGGTCy9L4KR8QlEnkm03R7Tulizn7cGd19dSFd
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--5.836500-5.000000
x-tmase-version: SMEX-14.0.0.3031-8.6.1012-25658.007
x-tm-snts-smtp: EDE4EE60ADE6A64433D92AF2A2C537335EA378D2A0CA6DA44C33A284CBBBCC872000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.00
Authentication-Results: mx02-sz.bfs.de;
        none
X-Spamd-Result: default: False [-0.00 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-1.091];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.00)[23.94%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

the groff commands are ducument in man 7 groff
.nf       No filling or adjusting of output-lines.
.fi       Fill output lines

(for me) a typical use is like this:
.nf

struct timeval {
    time_t      tv_sec;     /* seconds */
    suseconds_t tv_usec;    /* microseconds */
};
.fi

In the top section you prevent indenting (if any).

hth
 wh
________________________________________
Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im A=
uftrag von Alejandro Colomar [colomar.6.4.3@gmail.com]
Gesendet: Donnerstag, 10. September 2020 23:13
An: mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org; linux-kernel@vger.kernel.org; Alejandro Colo=
mar
Betreff: [PATCH 22/24] membarrier.2: Note that glibc does not provide a wra=
pper

Notes: I copied .nf and .fi from futex.2, but they made no visual differenc=
e.
What do they actually do?

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/membarrier.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index 8825de71e..f65c6be5c 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -26,9 +26,15 @@
 .SH NAME
 membarrier \- issue memory barriers on a set of threads
 .SH SYNOPSIS
+.nf
+.PP
 .B #include <linux/membarrier.h>
 .PP
 .BI "int membarrier(int " cmd ", int " flags ");"
+.fi
+.PP
+.IR Note :
+There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 The
 .BR membarrier ()
@@ -270,6 +276,9 @@ Examples where
 .BR membarrier ()
 can be useful include implementations
 of Read-Copy-Update libraries and garbage collectors.
+.PP
+Glibc does not provide a wrapper for this system call; call it using
+.BR syscall (2).
 .SH EXAMPLES
 Assuming a multithreaded application where "fast_path()" is executed
 very frequently, and where "slow_path()" is executed infrequently, the
--
2.28.0

