Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3D2E20A875
	for <lists+linux-man@lfdr.de>; Fri, 26 Jun 2020 00:57:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406272AbgFYW5Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 Jun 2020 18:57:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:33096 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728347AbgFYW5Y (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 25 Jun 2020 18:57:24 -0400
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9B56A20707;
        Thu, 25 Jun 2020 22:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1593125844;
        bh=fb1c7ocUN+wbsU/CVOg47E8AvMAYDQHh4VXku/ZjckQ=;
        h=Date:From:To:Subject:From;
        b=KnVrcvWjEl06f/WOz/evLZv27Y9pQrOHRfVyGB3hDIxyM4Aj5h9mmEjtXPEWYv1DU
         l/MbRhZls8gZK25LXR1rtllyQXmm1IszWCnu94+4sYqL4Pin88ImxC+01mwiwU8o82
         l2cSQNfVQ1XorCgU4i/dJpWpnkyFqfo9unCfJsco=
Date:   Thu, 25 Jun 2020 15:57:23 -0700
From:   akpm@linux-foundation.org
To:     mm-commits@vger.kernel.org, vbabka@suse.cz, timmurray@google.com,
        surenb@google.com, sspatil@google.com, sonnyrao@google.com,
        sjpark@amazon.de, sj38.park@gmail.com, shakeelb@google.com,
        rientjes@google.com, oleksandr@redhat.com, minchan@kernel.org,
        mhocko@suse.com, linux-man@vger.kernel.org, ktkhai@virtuozzo.com,
        joel@joelfernandes.org, joaodias@google.com, jannh@google.com,
        hannes@cmpxchg.org, dancol@google.com,
        christian.brauner@ubuntu.com, christian@brauner.io,
        bgeffon@google.com, axboe@kernel.dk,
        alexander.h.duyck@linux.intel.com, akpm@linux-foundation.org
Subject:  +
 =?us-ascii?Q?mm-madvise-introduce-process=5Fmadvise-syscall-an-externa?=
 =?us-ascii?Q?l-memory-hinting-api-fix-2.patch?= added to -mm tree
Message-ID: <20200625225723.bqUz4%akpm@linux-foundation.org>
User-Agent: s-nail v14.9.10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix-2
has been added to the -mm tree.  Its filename is
     mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix-2.patch

This patch should soon appear at
    http://ozlabs.org/~akpm/mmots/broken-out/mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix-2.patch
and later at
    http://ozlabs.org/~akpm/mmotm/broken-out/mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix-2.patch

Before you just go and hit "reply", please:
   a) Consider who else should be cc'ed
   b) Prefer to cc a suitable mailing list as well
   c) Ideally: find the original patch on the mailing list and do a
      reply-to-all to that, adding suitable additional cc's

*** Remember to use Documentation/process/submit-checklist.rst when testing your code ***

The -mm tree is included into linux-next and is updated
there every 3-4 working days

------------------------------------------------------
From: Andrew Morton <akpm@linux-foundation.org>
Subject: mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix-2

fix include/uapi/asm-generic/unistd.h whoops

Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Cc: Brian Geffon <bgeffon@google.com>
Cc: Christian Brauner <christian@brauner.io>
Cc: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Daniel Colascione <dancol@google.com>
Cc: David Rientjes <rientjes@google.com>
Cc: Jann Horn <jannh@google.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Cc: John Dias <joaodias@google.com>
Cc: Kirill Tkhai <ktkhai@virtuozzo.com>
Cc: <linux-man@vger.kernel.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Minchan Kim <minchan@kernel.org>
Cc: Oleksandr Natalenko <oleksandr@redhat.com>
Cc: Sandeep Patil <sspatil@google.com>
Cc: SeongJae Park <sj38.park@gmail.com>
Cc: SeongJae Park <sjpark@amazon.de>
Cc: Shakeel Butt <shakeelb@google.com>
Cc: Sonny Rao <sonnyrao@google.com>
Cc: Suren Baghdasaryan <surenb@google.com>
Cc: Tim Murray <timmurray@google.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 include/uapi/asm-generic/unistd.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/include/uapi/asm-generic/unistd.h~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix-2
+++ a/include/uapi/asm-generic/unistd.h
@@ -865,7 +865,7 @@ __SYSCALL(__NR_watch_mount, sys_watch_mo
 __SYSCALL(__NR_watch_sb, sys_watch_sb)
 #define __NR_fsinfo 442
 __SYSCALL(__NR_fsinfo, sys_fsinfo)
-#define __NR_fsinfo 443
+#define __NR_process_madvise 443
 __SC_COMP(__NR_process_madvise, sys_process_madvise, compat_sys_process_madvise)
 
 #undef __NR_syscalls
_

Patches currently in -mm which might be from akpm@linux-foundation.org are

drivers-tty-serial-sh-scic-suppress-uninitialized-var-warning.patch
mm.patch
mm-memcg-percpu-account-percpu-memory-to-memory-cgroups-fix.patch
mm-memcg-percpu-account-percpu-memory-to-memory-cgroups-fix-fix.patch
mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix.patch
mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix-2.patch
kernel-forkc-export-kernel_thread-to-modules.patch

