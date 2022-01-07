Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5619487BB8
	for <lists+linux-man@lfdr.de>; Fri,  7 Jan 2022 19:03:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240431AbiAGSDM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 13:03:12 -0500
Received: from 10.mo550.mail-out.ovh.net ([178.32.96.102]:46615 "EHLO
        10.mo550.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240374AbiAGSDM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 13:03:12 -0500
X-Greylist: delayed 4200 seconds by postgrey-1.27 at vger.kernel.org; Fri, 07 Jan 2022 13:03:12 EST
Received: from player758.ha.ovh.net (unknown [10.108.1.202])
        by mo550.mail-out.ovh.net (Postfix) with ESMTP id BF53C24C28
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 16:46:59 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player758.ha.ovh.net (Postfix) with ESMTPSA id 71A5E261090FF;
        Fri,  7 Jan 2022 16:46:56 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R005cea49bc0-ba35-445e-908f-bcbbf1bdc871,
                    378F7200CA80B4250C2E4B9C353773DD9C33FBEE) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Stephen Kitt <steve@sk2.org>
Subject: [PATCH 1/9] Add a target to check example programs
Date:   Fri,  7 Jan 2022 17:46:13 +0100
Message-Id: <20220107164621.275794-1-steve@sk2.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 7963208566986344070
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegvddgieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepteegudfgleekieekteeggeetveefueefteeugfduieeitdfhhedtfeefkedvfeefnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a first step to automating example program checks. It extracts
source snippets introduced by "Program source", assuming it's C, and
attempts to compile it.

For now, only man pages with a single "Program source" entry are
processed. The compiled code isn't linked to avoid having to handle
library requirements (e.g. -ldl).

Signed-off-by: Stephen Kitt <steve@sk2.org>
---
 Makefile | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Makefile b/Makefile
index 0da0328d8..3f597d7c3 100644
--- a/Makefile
+++ b/Makefile
@@ -266,6 +266,23 @@ check-groff-warnings:
 	done; \
 	rm -f "$$GROFF_LOG"
 
+# Check that man pages' examples programs (for now, only pages with a
+# single program) actually compile
+.PHONY: check-example-programs
+check-example-programs:
+	GCC_LOG="$$(mktemp --tmpdir manpages-checksXXXX)" || exit $$?; \
+	for manpage in $$(grep -rc 'Program source' man?/* | grep ':1$$' | cut -d: -f1); \
+	do \
+		(man -Tutf8 $$manpage | \
+			col -bx | \
+			sed -n '/Program source/,/^[[:space:]]\{0,3\}[^[:space:]]/p' | \
+			tail -n+2 | \
+			head -n-1 | \
+			gcc -xc -c -o/dev/null -) 2>| "$$GCC_LOG"; \
+		[ -s "$$GCC_LOG" ] && { echo "$$manpage: "; cat "$$GCC_LOG"; echo; }; \
+	done; \
+	rm -f "$$GCC_LOG"
+
 # someone might also want to look at /var/catman/cat2 or so ...
 # a problem is that the location of cat pages varies a lot
 
-- 
2.30.2

