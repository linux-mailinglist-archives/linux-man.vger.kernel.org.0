Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 22AE9B1822
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 08:12:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726516AbfIMGMO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 02:12:14 -0400
Received: from alpha.anastas.io ([104.248.188.109]:52549 "EHLO
        alpha.anastas.io" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726388AbfIMGMO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 02:12:14 -0400
X-Greylist: delayed 521 seconds by postgrey-1.27 at vger.kernel.org; Fri, 13 Sep 2019 02:12:14 EDT
Received: from authenticated-user (alpha.anastas.io [104.248.188.109])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by alpha.anastas.io (Postfix) with ESMTPSA id 87E1A7FC98
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 01:03:32 -0500 (CDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=anastas.io; s=mail;
        t=1568354612; bh=h+x81cLYXhAtXlVBOxUUj5lqeAECQmE9rZE4TaLFqWQ=;
        h=From:To:Subject:Date:From;
        b=b9CfinT17RAQ/KsH0HRcSJwDwiahVeNyJugvSCQeQjAeuLDtBT4DMEAlox2hkUMNO
         S09C3r7aIes6wUvL3GgIb3le4LIyJbZZDsXzm0lyBp5uQCw8vnvkriDCFwE98ufIUN
         N28MsX7R1Q4OlybJW0ejJDNQkUPO2lJmWwkPOPB+qFmmBLsGkQEumD/thLHkvRLy+M
         a58Gt41dEz2JTKzFgYYGatGIWs/VZPEAHgJhXqojbvCFEDdpe5B+ntbBNPZxb26ARk
         a30iNk2XKdgCvb0Q/uHMuqe0aV9hKMBHBLRPBfg6EXlvL1KI1lr2IPjdGzjWS1y49n
         z11KPUOJBBfNQ==
From:   Shawn Anastasio <shawn@anastas.io>
To:     linux-man@vger.kernel.org
Subject: [PATCH] syscall.2: Add information for powerpc64
Date:   Fri, 13 Sep 2019 01:03:26 -0500
Message-Id: <20190913060326.12808-1-shawn@anastas.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add powerpc64 to the calling convention tables.

Signed-off-by: Shawn Anastasio <shawn@anastas.io>
---
 man2/syscall.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man2/syscall.2 b/man2/syscall.2
index 33e5ea655..8db5c14e2 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -196,6 +196,7 @@ mips	syscall	v0	v0	v1	a3	1, 6
 nios2	trap	r2	r2	-	r7
 parisc	ble 0x100(%sr2, %r0)	r20	r28	-	-
 powerpc	sc	r0	r3	-	r0	1
+powerpc64	sc	r0	r3	-	cr0.SO	1
 riscv	ecall	a7	a0	a1	-
 s390	svc 0	r1	r2	r3	-	3
 s390x	svc 0	r1	r2	r3	-	3
@@ -220,6 +221,11 @@ On sparc, the carry bit
 in the processor status register
 .RI ( psr )
 is used instead of a full register.
+On powerpc64, the summary overflow bit
+.RI ( SO )
+in field 0 of the condition register
+.RI ( cr0 )
+is used.
 .IP [2]
 .I NR
 is the system call number.
@@ -322,6 +328,7 @@ mips/n32,64	a0	a1	a2	a3	a4	a5	-
 nios2	r4	r5	r6	r7	r8	r9	-
 parisc	r26	r25	r24	r23	r22	r21	-
 powerpc	r3	r4	r5	r6	r7	r8	r9
+powerpc64	r3	r4	r5	r6	r7	r8	-
 riscv	a0	a1	a2	a3	a4	a5	-
 s390	r2	r3	r4	r5	r6	r7	-
 s390x	r2	r3	r4	r5	r6	r7	-
-- 
2.23.0

