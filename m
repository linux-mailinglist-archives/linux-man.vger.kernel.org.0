Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C183266721
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 19:38:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbgIKRiM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 13:38:12 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:62428 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725858AbgIKMpy (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 11 Sep 2020 08:45:54 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id BBFA020677;
        Fri, 11 Sep 2020 14:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1599828282;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=awLKxFSDiFvN2tMOoPxn792eb95yg0Dc8CoIt1WJxTg=;
        b=tLy1PnfkTpM45lF7qBi9+qJGalTIbt6vXuUGxivpYuTBFtkRmUKQQk7ydPHvybBP6QsZGS
        yUiQCbaLepcl72E9nVMrSYS3zlxYJajf0fLHsi/e4LuHyyl1vERTw6lKN3pUsXnZzcX4lB
        Rbe0UR+xzIK2X4egiKjNwsWDCWLbkG04qcVjnobuuego6e7Tcp7///NMxChVlbuV2znNVw
        cL2B2Ja4Z35hBK2J29fxrRTANgslfn+u8F7XHT9GYBOSSWIxJGW6ipt7L+5BUBeYiuCKbb
        i5UmD+0Vvx7c3AGALInpRCRE0/8QmMrdA+smts4ptqhy1Dwula1BDV502H81iQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Fri, 11 Sep
 2020 14:44:42 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2044.004; Fri, 11 Sep 2020 14:44:42 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: AW: [PATCH 04/24] eventfd.2: Use 'PRIxN' macros when printing C99
 fixed-width integer types
Thread-Topic: [PATCH 04/24] eventfd.2: Use 'PRIxN' macros when printing C99
 fixed-width integer types
Thread-Index: AQHWh7d4oPYjeCDYAkKQ2imUrEhZI6ljYiE/
Date:   Fri, 11 Sep 2020 12:44:42 +0000
Message-ID: <d2ec3c9628884ebeae734ccd726a73cd@bfs.de>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>,<20200910211344.3562-5-colomar.6.4.3@gmail.com>
In-Reply-To: <20200910211344.3562-5-colomar.6.4.3@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3031-8.6.1012-25658.007
x-tm-as-result: No-10--1.467500-5.000000
x-tmase-matchedrid: dhGsVyorqVbRubRCcrbc5pzEHTUOuMX33dCmvEa6IiGoLZarzrrPmXtc
        SBXe4RfNBHyV47DgzT52mrAqMWjcqxzhSiKnHyLo9u1rQ4BgXPLgt7TT//Roamww+4tkH8hHgm8
        y9s/8xLBZVPxvRQjmVHotqe6GyX/IB2Y8Y5F1xZxtJYfOb0q5O/f6ZSoNZQrIB2QWi8BF5SiKW8
        BvXyLiE06K+6IM3Zckb2oLhvXzhe1UzR/yBHQjZp4CIKY/Hg3AnCGS1WQEGtDfwtq4jZ/G3iq2r
        l3dzGQ1CNyq9HL1qQiwet1ijVZWJbKiBFvCE54jmCYnpBV0qyvN7500j4xkq16wCcILuZ0m81sr
        f0TfKm7OUB26kNabEhjyk2KDtWSDxwpwazsiHrxwKbJm8PBDLa3lqFG8MgYtra3VVcd6EV7L9Ap
        LJriTv0MMprcbiest
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--1.467500-5.000000
x-tmase-version: SMEX-14.0.0.3031-8.6.1012-25658.007
x-tm-snts-smtp: D7B04CFD480A743FD1EB51144D784E81CBF3F4F6871F0C067CC12150EDE317D12000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.32
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-0.32 / 7.00];
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
         NEURAL_HAM(-0.00)[-0.850];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.32)[75.53%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I do not think that this is a good idea.
An example should be clear and easy to understand.
(e.g. with reduced error handling)

These C99 macros are over the top for me.

jm2c
 wh
________________________________________
Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im A=
uftrag von Alejandro Colomar [colomar.6.4.3@gmail.com]
Gesendet: Donnerstag, 10. September 2020 23:13
An: mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org; linux-kernel@vger.kernel.org; Alejandro Colo=
mar
Betreff: [PATCH 04/24] eventfd.2: Use 'PRIxN' macros when printing C99 fixe=
d-width integer types

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/eventfd.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/eventfd.2 b/man2/eventfd.2
index 929234ab7..71e9d85b4 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -386,6 +386,7 @@ Parent read 28 (0x1c) from efd
 .EX
 #include <sys/eventfd.h>
 #include <unistd.h>
+#include <inttypes.h>           /* Definition of PRIu64 & PRIx64 */
 #include <stdlib.h>
 #include <stdio.h>
 #include <stdint.h>             /* Definition of uint64_t */
@@ -430,8 +431,7 @@ main(int argc, char *argv[])
         s =3D read(efd, &u, sizeof(uint64_t));
         if (s !=3D sizeof(uint64_t))
             handle_error("read");
-        printf("Parent read %llu (0x%llx) from efd\en",
-                (unsigned long long) u, (unsigned long long) u);
+        printf("Parent read %"PRIu64" (0x%"PRIx64") from efd\en", u, u);
         exit(EXIT_SUCCESS);

     case \-1:
--
2.28.0

