Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 525433FEA38
	for <lists+linux-man@lfdr.de>; Thu,  2 Sep 2021 09:50:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233428AbhIBHvu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Sep 2021 03:51:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:49220 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233360AbhIBHvt (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 2 Sep 2021 03:51:49 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D6E46610CC;
        Thu,  2 Sep 2021 07:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630569051;
        bh=0vZiLXPz8eQWLW+Zr+vTaOOLa+Ik4WZnPLAttqHHPCk=;
        h=From:To:Cc:Subject:Date:From;
        b=IxSk9fgSVuQloQ7lv1PWvUsHba6PFyR+XDffB8xWOyN3XU3NXUdjLSts6PUaPM202
         GF4gPl4/E8u3bVM7hLXischch1P3lGk7IDEqn36ZVXvu4U8NWfd931GIL4hq+OhYUx
         2RAMayhPUp51l5+df07Sg0TduJp+wW8o8/rXMr4EQphA0IpsiHlbcL5TXEJ1PNKHt7
         8CkhWV16EKKcU+/AKKyEtWLwNXyoGUPebYtu7AmJNv2jZzna2nzKhy9E3ZQ9NjhbEe
         2uE7JEBeR7v18nL8KgxMhX7GhFJO2flv2+R1jHt1ctUzbFLA3604kpzxvBBiW0/vyx
         D9sOlc/Nh1TCg==
From:   Mike Rapoport <rppt@kernel.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mike Rapoport <rppt@kernel.org>,
        Mike Rapoport <rppt@linux.ibm.com>, linux-man@vger.kernel.org
Subject: [PATCH] memfd_secret.2: add NOTES section ...
Date:   Thu,  2 Sep 2021 10:50:45 +0300
Message-Id: <20210902075045.1237905-1-rppt@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mike Rapoport <rppt@linux.ibm.com>

... that explains the rationale for the system call

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 man2/memfd_secret.2 | 61 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
index f3380818e..869480b48 100644
--- a/man2/memfd_secret.2
+++ b/man2/memfd_secret.2
@@ -147,6 +147,67 @@ system call first appeared in Linux 5.14.
 The
 .BR memfd_secret ()
 system call is Linux-specific.
+.SH NOTES
+.PP
+The
+.BR memfd_secret ()
+system call is designed to allow a user-space process
+to create a range of memory that is inaccessible to anybody else -
+kernel included.
+There is no 100% guarantee that kernel won't be able to access
+memory ranges backed by
+.BR memfd_secret ()
+in any circumstances, but nevertheless,
+it is much harder to exfiltrate data from these regions.
+.PP
+The
+.BR memfd_secret ()
+provides the following protections:
+.IP \(bu 3
+Enhanced protection
+(in conjunction with all the other in-kernel attack prevention systems)
+against ROP attacks.
+Absence of any in-kernel primitive for accessing memory backed by
+.BR memfd_secret ()
+means that one-gadget ROP attack
+can't work to perform data exfiltration.
+The attacker would need to find enough ROP gadgets
+to reconstruct the missing page table entries,
+which significantly increases difficulty of the attack,
+especially when other protections like the kernel stack size limit
+and address space layout randomization are in place.
+.IP \(bu
+Prevent cross-process userspace memory exposures.
+Once a region for a
+.BR memfd_secret ()
+memory mapping is allocated,
+the user can't accidentally pass it into the kernel
+to be transmitted somewhere.
+The memory pages in this region cannot be accessed via the direct map
+and they are disallowed in get_user_pages.
+.IP \(bu
+Harden against exploited kernel flaws.
+In order to access memory areas backed by
+.BR memfd_secret(),
+a kernel-side attack would need to
+either walk the page tables and create new ones,
+or spawn a new privileged userspace process to perform
+secrets exfiltration using
+.BR ptrace (2).
+.PP
+The way
+.BR memfd_secret ()
+allocates and locks the memory may impact overall system performance,
+therefore the system call is disabled by default and only available
+if the system administrator turned it on using
+"secretmem.enable=y" kernel parameter.
+.PP
+To prevent potiential data leaks of memory regions backed by
+.BR memfd_secret()
+from a hybernation image,
+hybernation is prevented when there are active
+.BR memfd_secret ()
+users.
 .SH SEE ALSO
 .BR fcntl (2),
 .BR ftruncate (2),
-- 
2.31.1

