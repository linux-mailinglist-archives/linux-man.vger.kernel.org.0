Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BFAE1C5B04
	for <lists+linux-man@lfdr.de>; Tue,  5 May 2020 17:25:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729335AbgEEPZf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 May 2020 11:25:35 -0400
Received: from foss.arm.com ([217.140.110.172]:43326 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729261AbgEEPZf (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 5 May 2020 11:25:35 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C7CF31B;
        Tue,  5 May 2020 08:25:34 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AD7E23F68F;
        Tue,  5 May 2020 08:25:28 -0700 (PDT)
From:   Dave Martin <Dave.Martin@arm.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Russell King <linux@armlinux.org.uk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-man@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] syscall.2: arm64: Fix syscall number register size
Date:   Tue,  5 May 2020 16:24:40 +0100
Message-Id: <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

arm64 is currently documented as receiving the syscall number in
x8.

While this is the correct register, the syscall number is a 32-bit
integer.  Bits [63:32] are ignored by the kernel.

So it is more correct to say "w8".

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 man2/syscall.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/syscall.2 b/man2/syscall.2
index 53ab40e..d724651 100644
--- a/man2/syscall.2
+++ b/man2/syscall.2
@@ -203,7 +203,7 @@ alpha	callsys	v0	v0	a4	a3	1, 6
 arc	trap0	r8	r0	-	-
 arm/OABI	swi NR	-	r0	-	-	2
 arm/EABI	swi 0x0	r7	r0	r1	-
-arm64	svc #0	x8	x0	x1	-
+arm64	svc #0	w8	x0	x1	-
 blackfin	excpt 0x0	P0	R0	-	-
 i386	int $0x80	eax	eax	edx	-
 ia64	break 0x100000	r15	r8	r9	r10	1, 6
-- 
2.1.4

