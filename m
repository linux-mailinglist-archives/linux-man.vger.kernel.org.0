Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 812D21FEE12
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 10:49:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728579AbgFRIt4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 04:49:56 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:61861 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728536AbgFRIt4 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 18 Jun 2020 04:49:56 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 938C920201;
        Thu, 18 Jun 2020 10:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1592470193;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=TNL6qWPCb+kKKh2b8njSzUFeVpv9WoygV1xXj5uVDas=;
        b=mJNbFLdP/3sVvXwyipQj4sgG+w59H0SgnnkhzOukAjqhM2VSHvrUMKHcEi62gHe7q+5Bk7
        4NprZHkpqu8f0/PNNFDGqowyRpIz/VASpa8w6xNTzX8Gm5fsACX9C0pXBUIIBogCYgovFC
        KR4qgsrWo++NLwWoUVbbESLPgkeDSO/Mmn0bXAylGgyvTTD7cel5NKZGEmwptCbEJl6LYH
        Bn7IoQNNCJ7pvio5pNH4ERsYfVfbEspu532GG6qV6SH2ghkJgjIpGxCor2t5z20pADrkin
        uPpvYTmGbgrS+XBBcLuLj2f0y7ytl8g/od3WZDpYgQF/fAQOI7vMrQqhw66Imw==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Thu, 18 Jun
 2020 10:49:53 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Thu, 18 Jun 2020 10:49:53 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: [PATCH] fread.3: Add example
Thread-Topic: [PATCH] fread.3: Add example
Thread-Index: AQHWRNqZsZlOY/GUP0iTGXI/zRsqmqjeDiq7
Date:   Thu, 18 Jun 2020 08:49:53 +0000
Message-ID: <be5391cc853c41a683069fa0c42d0a88@bfs.de>
References: <20200617184530.20811-1-arkadiusz@drabczyk.org>
In-Reply-To: <20200617184530.20811-1-arkadiusz@drabczyk.org>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.00
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-0.00 / 7.00];
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
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[drabczyk.org,gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.00)[11.07%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

few comments below,
hope that helps

re,
 wh
________________________________________
Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im A=
uftrag von Arkadiusz Drabczyk [arkadiusz@drabczyk.org]
Gesendet: Mittwoch, 17. Juni 2020 20:45
An: mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Betreff: [PATCH] fread.3: Add example

Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
---
 man3/fread.3 | 53 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/man3/fread.3 b/man3/fread.3
index 2dd7be9..c19a59c 100644
--- a/man3/fread.3
+++ b/man3/fread.3
@@ -113,6 +113,59 @@ T} Thread safety   MT-Safe
 .TE
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C89.
+.SH EXAMPLES
+The program below demonstrates the use of
+.BR fread ()
+by parsing /bin/sh ELF executable in binary mode and printing its
+magic and class:
+.PP
+.in +4n
+.EX
+$ \fB./a.out\fP
+./a.out
+ELF magic: 0x7f454c46
+Class: 0x2
+.EE
+.in
+.SS Program source
+\&
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+
+int
+main(void)
+{
+    FILE *fp =3D fopen("/bin/sh", "rb");
+    if (!fp) {
+        perror("fopen");
+        return EXIT_FAILURE;
+    }
+
+    unsigned char buffer[4];
+
+    size_t ret =3D fread(buffer, 4, 1, fp);
this is the core of the example and should be a bit more verbose:
maybe this is a bit to cryptic
   ret =3D fread(buffer,sizeof (buffer)/sizeof (*buffer), sizeof (*buffer),=
 fp);

alt:
size_of_buf=3D sizeof (buffer)/sizeof (*buffer);=20

 ret =3D fread(buffer,                                              // star=
t of buffer
                    sizeof (buffer)/sizeof (*buffer),    // size of buffer =
in bytes
                    sizeof (*buffer),                              // size =
of element
                    fp);                                                   =
// file pointer

+    if (ret !=3D 1) {
+        fprintf(stderr, "fread() failed: %zu\en", ret);
+        exit(EXIT_FAILURE);
+    }
+
+    printf("ELF magic: %#x%x%x%x\en", buffer[0], buffer[1], buffer[2],
+           buffer[3]);
+
this works for /bin/sh but if the user plays round this may show confusing =
results
so you could simply do:
    printf("ELF magic: %#02x%02x%02x%02x\en",=20
so you are consistent in all cased. (until some will test this on a big end=
ian, no idea
what will happen then).=20

+    ret =3D fread(buffer, 1, 1, fp);
+    if (ret !=3D 1) {
+        fprintf(stderr, "fread() failed: %zu\en", ret);
+        exit(EXIT_FAILURE);
+    }
+
please drop a line what case you want to explain here, looks like the same =
as above.

+    printf("Class: %#x\en", buffer[0]);
+
+    fclose(fp);
+
+    exit(EXIT_SUCCESS);
+}
+.EE
 .SH SEE ALSO
 .BR read (2),
 .BR write (2),
--
2.9.0

