Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5B861A6DA
	for <lists+linux-man@lfdr.de>; Sat,  5 Nov 2022 03:15:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbiKECPy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Nov 2022 22:15:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbiKECPx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Nov 2022 22:15:53 -0400
Received: from xry111.site (xry111.site [89.208.246.23])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 002D540938
        for <linux-man@vger.kernel.org>; Fri,  4 Nov 2022 19:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
        s=default; t=1667614547;
        bh=AMol7+6VhSazICOuYDq16Qv5nK+JNzmLP+frS6dtp4w=;
        h=From:To:Cc:Subject:Date:From;
        b=PavNqb80/Rv0flgsr9bzke8g5vquDM2eEV3Sj5XOAoasFBIt1O0p2QC6QflLtWAM9
         vbPDrbwB2Wrf+kCK0XhQRHfwLZQmqPGGZqsXCZmDKUkUQkAXSDrkr7KBFWFLVCuudp
         JiT/sP7saxkRNtxILqq6qQsE4g+30nzDk9AxVSLA=
Received: from xry111-x57s1.. (unknown [IPv6:240e:358:11ed:a500:dc73:854d:832e:4])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-384) server-digest SHA384)
        (Client did not present a certificate)
        (Authenticated sender: xry111@xry111.site)
        by xry111.site (Postfix) with ESMTPSA id 332DB65A8C;
        Fri,  4 Nov 2022 22:15:41 -0400 (EDT)
From:   Xi Ruoyao <xry111@xry111.site>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Huacai Chen <chenhuacai@kernel.org>,
        Wang Xuerui <kernel@xen0n.name>, loongarch@lists.linux.dev,
        Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH] syscall.2: add loongarch
Date:   Sat,  5 Nov 2022 10:15:14 +0800
Message-Id: <20221105021514.8344-1-xry111@xry111.site>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        FROM_SUSPICIOUS_NTLD_FP,PDS_OTHER_BAD_TLD,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Link: https://lore.kernel.org/loongarch/1f353678-3398-e30b-1c87-6edb278f74db@xen0n.name/
Link: https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/loongarch/sysdep.h
Signed-off-by: Xi Ruoyao <xry111@xry111.site>
---
 man2/syscall.2 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man2/syscall.2 b/man2/syscall.2
index 1bac0b9d7..a2aef6d33 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -176,6 +176,7 @@ arm64	svc #0	w8	x0	x1	-
 blackfin	excpt 0x0	P0	R0	-	-
 i386	int $0x80	eax	eax	edx	-
 ia64	break 0x100000	r15	r8	r9	r10	1, 6
+loongarch	syscall 0	a7	a0	-	-
 m68k	trap #0	d0	d0	-	-
 microblaze	brki r14,8	r12	r3	-	-
 mips	syscall	v0	v0	v1	a3	1, 6
@@ -301,6 +302,7 @@ arm64	x0	x1	x2	x3	x4	x5	-
 blackfin	R0	R1	R2	R3	R4	R5	-
 i386	ebx	ecx	edx	esi	edi	ebp	-
 ia64	out0	out1	out2	out3	out4	out5	-
+loongarch	a0	a1	a2	a3	a4	a5	a6
 m68k	d1	d2	d3	d4	d5	a0	-
 microblaze	r5	r6	r7	r8	r9	r10	-
 mips/o32	a0	a1	a2	a3	-	-	-	1
-- 
2.38.1

