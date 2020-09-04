Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB0E825D0C4
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 06:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726267AbgIDE7s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 00:59:48 -0400
Received: from mail.kernel.org ([198.145.29.99]:48222 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725765AbgIDE7s (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 4 Sep 2020 00:59:48 -0400
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C5F8F206F2;
        Fri,  4 Sep 2020 04:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599195586;
        bh=ddY52lYzYXmjDH19pwat9ITmT2Y2P6wnCbDxKbQqXDk=;
        h=Date:From:To:Subject:From;
        b=fufPfkNryM7nH5as/RwZ3dliGTKrBqmhvNfX7GKBhGY3AjJwYH2rt4WWkcDsQRCL3
         zGL063dTdw9cGp326sUdnAD1ZEmgOi7+Hy7nDL7HWhtjGvLHn/Xi/JXT64i8BMcyI1
         ve3IvFHIgkm4zxFpkmdD0BcCZDlXP4EZmjMsIUi4=
Date:   Thu, 03 Sep 2020 21:59:45 -0700
From:   akpm@linux-foundation.org
To:     mm-commits@vger.kernel.org, vbabka@suse.cz, timmurray@google.com,
        surenb@google.com, sspatil@google.com, sonnyrao@google.com,
        sjpark@amazon.de, sj38.park@gmail.com, shakeelb@google.com,
        rientjes@google.com, oleksandr@redhat.com, mhocko@suse.com,
        linux-man@vger.kernel.org, ktkhai@virtuozzo.com,
        joel@joelfernandes.org, joaodias@google.com, jannh@google.com,
        hannes@cmpxchg.org, fw@deneb.enyo.de, dancol@google.com,
        christian.brauner@ubuntu.com, bgeffon@google.com, axboe@kernel.dk,
        alexander.h.duyck@linux.intel.com, minchan@kernel.org
Subject:  + pid-move-pidfd_get_pid-to-pidc.patch added to -mm tree
Message-ID: <20200904045945.9sr9O%akpm@linux-foundation.org>
User-Agent: s-nail v14.9.10
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: pid: move pidfd_get_pid() to pid.c
has been added to the -mm tree.  Its filename is
     pid-move-pidfd_get_pid-to-pidc.patch

This patch should soon appear at
    https://ozlabs.org/~akpm/mmots/broken-out/pid-move-pidfd_get_pid-to-pidc.patch
and later at
    https://ozlabs.org/~akpm/mmotm/broken-out/pid-move-pidfd_get_pid-to-pidc.patch

Before you just go and hit "reply", please:
   a) Consider who else should be cc'ed
   b) Prefer to cc a suitable mailing list as well
   c) Ideally: find the original patch on the mailing list and do a
      reply-to-all to that, adding suitable additional cc's

*** Remember to use Documentation/process/submit-checklist.rst when testing your code ***

The -mm tree is included into linux-next and is updated
there every 3-4 working days

------------------------------------------------------
From: Minchan Kim <minchan@kernel.org>
Subject: pid: move pidfd_get_pid() to pid.c

process_madvise syscall needs pidfd_get_pid function to translate pidfd to
pid so this patch move the function to kernel/pid.c.

Link: http://lkml.kernel.org/r/20200302193630.68771-5-minchan@kernel.org
Link: http://lkml.kernel.org/r/20200622192900.22757-3-minchan@kernel.org
Link: https://lkml.kernel.org/r/20200901000633.1920247-3-minchan@kernel.org
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Suggested-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Reviewed-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
Acked-by: David Rientjes <rientjes@google.com>
Signed-off-by: Minchan Kim <minchan@kernel.org>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Jann Horn <jannh@google.com>
Cc: Brian Geffon <bgeffon@google.com>
Cc: Daniel Colascione <dancol@google.com>
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Cc: John Dias <joaodias@google.com>
Cc: Kirill Tkhai <ktkhai@virtuozzo.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Oleksandr Natalenko <oleksandr@redhat.com>
Cc: Sandeep Patil <sspatil@google.com>
Cc: SeongJae Park <sj38.park@gmail.com>
Cc: SeongJae Park <sjpark@amazon.de>
Cc: Shakeel Butt <shakeelb@google.com>
Cc: Sonny Rao <sonnyrao@google.com>
Cc: Tim Murray <timmurray@google.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Florian Weimer <fw@deneb.enyo.de>
Cc: <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 include/linux/pid.h |    1 +
 kernel/exit.c       |   17 -----------------
 kernel/pid.c        |   17 +++++++++++++++++
 3 files changed, 18 insertions(+), 17 deletions(-)

--- a/include/linux/pid.h~pid-move-pidfd_get_pid-to-pidc
+++ a/include/linux/pid.h
@@ -77,6 +77,7 @@ extern const struct file_operations pidf
 struct file;
 
 extern struct pid *pidfd_pid(const struct file *file);
+struct pid *pidfd_get_pid(unsigned int fd);
 
 static inline struct pid *get_pid(struct pid *pid)
 {
--- a/kernel/exit.c~pid-move-pidfd_get_pid-to-pidc
+++ a/kernel/exit.c
@@ -1474,23 +1474,6 @@ end:
 	return retval;
 }
 
-static struct pid *pidfd_get_pid(unsigned int fd)
-{
-	struct fd f;
-	struct pid *pid;
-
-	f = fdget(fd);
-	if (!f.file)
-		return ERR_PTR(-EBADF);
-
-	pid = pidfd_pid(f.file);
-	if (!IS_ERR(pid))
-		get_pid(pid);
-
-	fdput(f);
-	return pid;
-}
-
 static long kernel_waitid(int which, pid_t upid, struct waitid_info *infop,
 			  int options, struct rusage *ru)
 {
--- a/kernel/pid.c~pid-move-pidfd_get_pid-to-pidc
+++ a/kernel/pid.c
@@ -519,6 +519,23 @@ struct pid *find_ge_pid(int nr, struct p
 	return idr_get_next(&ns->idr, &nr);
 }
 
+struct pid *pidfd_get_pid(unsigned int fd)
+{
+	struct fd f;
+	struct pid *pid;
+
+	f = fdget(fd);
+	if (!f.file)
+		return ERR_PTR(-EBADF);
+
+	pid = pidfd_pid(f.file);
+	if (!IS_ERR(pid))
+		get_pid(pid);
+
+	fdput(f);
+	return pid;
+}
+
 /**
  * pidfd_create() - Create a new pid file descriptor.
  *
_

Patches currently in -mm which might be from minchan@kernel.org are

mm-madvise-pass-mm-to-do_madvise.patch
pid-move-pidfd_get_pid-to-pidc.patch
mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api.patch

