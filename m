Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B0D52313DE
	for <lists+linux-man@lfdr.de>; Tue, 28 Jul 2020 22:28:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728437AbgG1U2s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Jul 2020 16:28:48 -0400
Received: from mail.kernel.org ([198.145.29.99]:56312 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728346AbgG1U2s (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 28 Jul 2020 16:28:48 -0400
Received: from localhost.localdomain (c-71-198-47-131.hsd1.ca.comcast.net [71.198.47.131])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0DCFF2065E;
        Tue, 28 Jul 2020 20:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1595968127;
        bh=DZa23iQd1u0Zt0+baOJ3N5SjhG14X7OdVrrXeq9/DLY=;
        h=Date:From:To:Subject:From;
        b=oRjZAOksvLmT9TFCvx84rzBWu3trT5wgxLU2VH35mFDff/ODs2BL6LAfuimHubEb2
         UPfLgG1K1eglxGi2kf60SvjJbcDQXv84jc0vcHuNfrxC9C3l3RMy9CY2mZY/R39Rw3
         A7KGC7Ei49aTKrDHtGM0KGEGal1mlNaQPjdx+aHM=
Date:   Tue, 28 Jul 2020 13:28:46 -0700
From:   akpm@linux-foundation.org
To:     akpm@linux-foundation.org, alexander.h.duyck@linux.intel.com,
        axboe@kernel.dk, bgeffon@google.com, christian.brauner@ubuntu.com,
        christian@brauner.io, dancol@google.com, hannes@cmpxchg.org,
        jannh@google.com, joaodias@google.com, joel@joelfernandes.org,
        ktkhai@virtuozzo.com, linux-man@vger.kernel.org, mhocko@suse.com,
        minchan@kernel.org, mm-commits@vger.kernel.org,
        oleksandr@redhat.com, rientjes@google.com, shakeelb@google.com,
        sj38.park@gmail.com, sjpark@amazon.de, sonnyrao@google.com,
        sspatil@google.com, surenb@google.com, timmurray@google.com,
        vbabka@suse.cz
Subject:  [obsolete]
 =?US-ASCII?Q?mm-madvise-introduce-process=5Fmadvise-syscall-an-externa?=
 =?US-ASCII?Q?l-memory-hinting-api-fix-2.patch?= removed from -mm tree
Message-ID: <20200728202846.mSH6rkodT%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix-2
has been removed from the -mm tree.  Its filename was
     mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix-2.patch

This patch was dropped because it is obsolete

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
@@ -863,7 +863,7 @@ __SYSCALL(__NR_faccessat2, sys_faccessat
 __SYSCALL(__NR_watch_mount, sys_watch_mount)
 #define __NR_fsinfo 442
 __SYSCALL(__NR_fsinfo, sys_fsinfo)
-#define __NR_fsinfo 443
+#define __NR_process_madvise 443
 __SC_COMP(__NR_process_madvise, sys_process_madvise, compat_sys_process_madvise)
 
 #undef __NR_syscalls
_

Patches currently in -mm which might be from akpm@linux-foundation.org are

mm-fix-kthread_use_mm-vs-tlb-invalidate-fix.patch
mm.patch
mm-handle-page-mapping-better-in-dump_page-fix.patch
mm-memcg-percpu-account-percpu-memory-to-memory-cgroups-fix.patch
mm-memcg-percpu-account-percpu-memory-to-memory-cgroups-fix-fix.patch
mm-thp-replace-http-links-with-https-ones-fix.patch
mm-vmstat-add-events-for-thp-migration-without-split-fix.patch
mmhwpoison-rework-soft-offline-for-in-use-pages-fix.patch
mm-vmstat-fix-proc-sys-vm-stat_refresh-generating-false-warnings-fix-2.patch
linux-next-rejects.patch
linux-next-git-rejects.patch
mm-migrate-clear-__gfp_reclaim-to-make-the-migration-callback-consistent-with-regular-thp-allocations-fix.patch
mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api-fix.patch
kernel-forkc-export-kernel_thread-to-modules.patch

