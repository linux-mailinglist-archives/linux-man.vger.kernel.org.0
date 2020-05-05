Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB1011C5B03
	for <lists+linux-man@lfdr.de>; Tue,  5 May 2020 17:25:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729392AbgEEPZ3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 May 2020 11:25:29 -0400
Received: from foss.arm.com ([217.140.110.172]:43312 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729261AbgEEPZ2 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 5 May 2020 11:25:28 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78E2E1FB;
        Tue,  5 May 2020 08:25:28 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8BAFB3F68F;
        Tue,  5 May 2020 08:25:27 -0700 (PDT)
From:   Dave Martin <Dave.Martin@arm.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-man@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] syscall.2: arm: Use real register names for arm/OABI
Date:   Tue,  5 May 2020 16:24:39 +0100
Message-Id: <1588692280-15878-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The arm OABI syscall interface is currently documented in terms of
register name aliases defined by the ARM Procedure Call Standard
(APCS).  However, these don't make sense in the context of a binary
interface that doesn't comply (or need to comply) with APCS.

Use the real architectural register names instead.

The names a1-a4, v1... are just aliases for r0-r3, r4... anyway, so
the interface is just the same regardless of which set of names is
used.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/syscall.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/syscall.2 b/man2/syscall.2
index f2b277b..53ab40e 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -201,7 +201,7 @@ Arch/ABI	Instruction	System	Ret	Ret	Error	Notes
 _
 alpha	callsys	v0	v0	a4	a3	1, 6
 arc	trap0	r8	r0	-	-
-arm/OABI	swi NR	-	a1	-	-	2
+arm/OABI	swi NR	-	r0	-	-	2
 arm/EABI	swi 0x0	r7	r0	r1	-
 arm64	svc #0	x8	x0	x1	-
 blackfin	excpt 0x0	P0	R0	-	-
@@ -332,7 +332,7 @@ Arch/ABI	arg1	arg2	arg3	arg4	arg5	arg6	arg7	Notes
 _
 alpha	a0	a1	a2	a3	a4	a5	-
 arc	r0	r1	r2	r3	r4	r5	-
-arm/OABI	a1	a2	a3	a4	v1	v2	v3
+arm/OABI	r0	r1	r2	r3	r4	r5	r6
 arm/EABI	r0	r1	r2	r3	r4	r5	r6
 arm64	x0	x1	x2	x3	x4	x5	-
 blackfin	R0	R1	R2	R3	R4	R5	-
-- 
2.1.4

