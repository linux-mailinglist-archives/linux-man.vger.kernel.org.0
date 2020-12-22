Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE2692E0A08
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 13:29:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726131AbgLVM3D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 07:29:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725985AbgLVM3D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 07:29:03 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45D0FC0613D6
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 04:28:23 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id f132so14506795oib.12
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 04:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=kNmhbVF4ate2SO0z7+VNFrmg//8/neOZiSTTiNbu2+o=;
        b=eCD2rUJznSLxXArBqhs7yKcGndKUgB6+hZVYpEwNIIAAPezoqHnTy40Q79WIC4HnBc
         qwClYdBkoQtKaIY1xL3vNej6W/nzYn5JD0Sp3h1Jr4S6sBrASNbzbmf2Qss+uJKsfhyp
         AzJz7oKCXOtlt2P0czr7Ws5Esz9Uzdo4aYbqdeY3J4uppo61uBtF86v4pNw/4Ny1tiyb
         npBE78eXLA22mcbIq9UVCMIG9UlXdjZkd1et3hw9az/9ecArm7Ax6PT4PDKTAc2qZGnB
         iCkB0DTh24RvBEvEtKetBPdSlJsKBuwmRGFRdHHBp9VyvkQpPXTwm1S9Gr2BEz02lA6F
         TEHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=kNmhbVF4ate2SO0z7+VNFrmg//8/neOZiSTTiNbu2+o=;
        b=dElipgH1jU1/ycT4JIfQZejk0Horq6EbAZOr5XCrRREvsNFfp40gZ6KauP8U9RafAI
         o+sKiTdSyp8qjVKxFeUJE4Xsgb/4yiBMeCB48F4cwpb6d2GsaTiPPQVV59N8OCIB88Dd
         BTSbrfkBLKEZmboaZx+W7s0xzOe7M/edtvP+Kl3qIRdGzOwCeZzO6z7+OPbIhOv6QIrD
         xs7BYbPouQeXxw6OC2BnFkaSm0eazqWKjVz+1fzj44IlxTr/ya2t3x1nlQf8pcvfT7Lp
         tqoSa1Yga6Zd5uyr7S6SxZoXBIFZIBFQq2c+lLbJ+fa5h9saucUJjURnFbHo4iavjVXh
         OaLw==
X-Gm-Message-State: AOAM530ELMdqpSZioqHYCwEUpdaSv33SglsanmFbljarKcWz3YKT5tyD
        GIsYAuCDexOJq1P4uTFe5xLeGVC+4Ig46BcrfsTl8Rw9/vc=
X-Google-Smtp-Source: ABdhPJx1nscxvkNfxqaoh+kJqr7La/Qd4Y553uKEMxKY5SscK90OaoL8onodOEHxBtPPHkQcnmc/zILejn7JOKLtV7c=
X-Received: by 2002:aca:eb41:: with SMTP id j62mr13811773oih.88.1608640102745;
 Tue, 22 Dec 2020 04:28:22 -0800 (PST)
MIME-Version: 1.0
From:   =?UTF-8?Q?Peter_Fr=C3=B6hlich?= <peter.hans.froehlich@gmail.com>
Date:   Tue, 22 Dec 2020 13:28:11 +0100
Message-ID: <CAHXXO6EzZ-3iRj9tm-4N4-nrWDy44sZX=bq9N0wmL5L=PmWYLg@mail.gmail.com>
Subject: [patch] syscall.2: Update superh syscall convention
To:     alx.manpages@gmail.com
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000e5bb5705b70cb517"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000e5bb5705b70cb517
Content-Type: text/plain; charset="UTF-8"

I noticed this while working on some silly "hello, world" programs,
see https://git.sr.ht/~phf/hello-again if you're curious.
Disassembling sh4 code showed trap #31 all over the place but the
syscall(2) man page talked about trap #0x17 and friends. Checking the
kernel sources I got lucky in arch/sh/kernel/entry-common.S where in
commit 3623d138213ae Rich Felker clarifies the situation. (I would
have cc'ed Rich but I cannot find his email.) I've attached the patch
since I am less than convinced that gmail will properly preserve it
inline.

---
 man2/syscall.2 | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/man2/syscall.2 b/man2/syscall.2
index 986db9d11..87de539dd 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -216,7 +216,7 @@ powerpc64    sc    r0    r3    -    cr0.SO    1
 riscv    ecall    a7    a0    a1    -
 s390    svc 0    r1    r2    r3    -    3
 s390x    svc 0    r1    r2    r3    -    3
-superh    trap #0x17    r3    r0    r1    -    4, 6
+superh    trapa #31    r3    r0    r1    -    4, 6
 sparc/32    t 0x10    g1    o0    o1    psr/csr    1, 6
 sparc/64    t 0x6d    g1    o0    o1    psr/csr    1, 6
 tile    swint1    R10    R00    -    R01    1
@@ -252,15 +252,9 @@ For s390 and s390x,
 .I "svc\ NR"
 if it is less than 256.
 .IP [4]
-On SuperH, the trap number controls the maximum number of arguments passed.
-A
-.IR "trap\ #0x10"
-can be used with only 0-argument system calls, a
-.IR "trap\ #0x11"
-can be used with 0- or 1-argument system calls,
-and so on up to
-.IR "trap #0x17"
-for 7-argument system calls.
+On SuperH additional trap numbers are supported for historic reasons, but
+.BR trapa #31
+is the recommended "unified" ABI.
 .IP [5]
 The x32 ABI shares syscall table with x86-64 ABI, but there are some
 nuances:
-- 
2.25.1

--000000000000e5bb5705b70cb517
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-syscall.2-Update-superh-syscall-convention.patch"
Content-Disposition: attachment; 
	filename="0001-syscall.2-Update-superh-syscall-convention.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kizyoza00>
X-Attachment-Id: f_kizyoza00

RnJvbSA2M2ViYTAyMTFiZmIwNDc0NzgzOWY0YWY0YzE0NDA5NTYzN2ExZTBkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiAiUGV0ZXIgSC4gRnJvZWhsaWNoIiA8cGV0ZXIuaGFucy5mcm9l
aGxpY2hAZ21haWwuY29tPgpEYXRlOiBUdWUsIDIyIERlYyAyMDIwIDEzOjIwOjUzICswMTAwClN1
YmplY3Q6IFtQQVRDSF0gc3lzY2FsbC4yOiBVcGRhdGUgc3VwZXJoIHN5c2NhbGwgY29udmVudGlv
bi4KCi0tLQogbWFuMi9zeXNjYWxsLjIgfCAxNCArKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbWFuMi9z
eXNjYWxsLjIgYi9tYW4yL3N5c2NhbGwuMgppbmRleCA5ODZkYjlkMTEuLjg3ZGU1MzlkZCAxMDA2
NDQKLS0tIGEvbWFuMi9zeXNjYWxsLjIKKysrIGIvbWFuMi9zeXNjYWxsLjIKQEAgLTIxNiw3ICsy
MTYsNyBAQCBwb3dlcnBjNjQJc2MJcjAJcjMJLQljcjAuU08JMQogcmlzY3YJZWNhbGwJYTcJYTAJ
YTEJLQogczM5MAlzdmMgMAlyMQlyMglyMwktCTMKIHMzOTB4CXN2YyAwCXIxCXIyCXIzCS0JMwot
c3VwZXJoCXRyYXAgIzB4MTcJcjMJcjAJcjEJLQk0LCA2CitzdXBlcmgJdHJhcGEgIzMxCXIzCXIw
CXIxCS0JNCwgNgogc3BhcmMvMzIJdCAweDEwCWcxCW8wCW8xCXBzci9jc3IJMSwgNgogc3BhcmMv
NjQJdCAweDZkCWcxCW8wCW8xCXBzci9jc3IJMSwgNgogdGlsZQlzd2ludDEJUjEwCVIwMAktCVIw
MQkxCkBAIC0yNTIsMTUgKzI1Miw5IEBAIEZvciBzMzkwIGFuZCBzMzkweCwKIC5JICJzdmNcIE5S
IgogaWYgaXQgaXMgbGVzcyB0aGFuIDI1Ni4KIC5JUCBbNF0KLU9uIFN1cGVySCwgdGhlIHRyYXAg
bnVtYmVyIGNvbnRyb2xzIHRoZSBtYXhpbXVtIG51bWJlciBvZiBhcmd1bWVudHMgcGFzc2VkLgot
QQotLklSICJ0cmFwXCAjMHgxMCIKLWNhbiBiZSB1c2VkIHdpdGggb25seSAwLWFyZ3VtZW50IHN5
c3RlbSBjYWxscywgYQotLklSICJ0cmFwXCAjMHgxMSIKLWNhbiBiZSB1c2VkIHdpdGggMC0gb3Ig
MS1hcmd1bWVudCBzeXN0ZW0gY2FsbHMsCi1hbmQgc28gb24gdXAgdG8KLS5JUiAidHJhcCAjMHgx
NyIKLWZvciA3LWFyZ3VtZW50IHN5c3RlbSBjYWxscy4KK09uIFN1cGVySCBhZGRpdGlvbmFsIHRy
YXAgbnVtYmVycyBhcmUgc3VwcG9ydGVkIGZvciBoaXN0b3JpYyByZWFzb25zLCBidXQKKy5CUiB0
cmFwYSAjMzEKK2lzIHRoZSByZWNvbW1lbmRlZCAidW5pZmllZCIgQUJJLgogLklQIFs1XQogVGhl
IHgzMiBBQkkgc2hhcmVzIHN5c2NhbGwgdGFibGUgd2l0aCB4ODYtNjQgQUJJLCBidXQgdGhlcmUg
YXJlIHNvbWUKIG51YW5jZXM6Ci0tIAoyLjI1LjEKCg==
--000000000000e5bb5705b70cb517--
