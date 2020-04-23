Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 583E61B5E5A
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 16:52:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728878AbgDWOwX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 10:52:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726380AbgDWOwX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 10:52:23 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09B67C08E934
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 07:52:22 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id k18so2439378pll.6
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 07:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l19W12T+vpO5G1S8KEHGV19VXsWkr87TVQtxqZe44B8=;
        b=lmboYA1+vzBsv+HLT/9BtLQqcmcWD0WW1hLvsChS4ltBsk6y5psWZaPynrLm6AHyXt
         z42eSUSb6hkdHAbsPzlRwDDE5PDVg0bTPqA018Y5KYszpld3dOWB+auJWO1E2u7NOue9
         v/wsEzfX0UPGQQbFcnvnGjAZlTiqvY4DBYHqVrp29zLEI6lSt1qdyTAcvcwGC6l4thqE
         gEWGlBpnKaGIw3VyfMIhxjZ1qXClJXKvVcjG/qM4rxwg0tYBEjIxNCT4XT50oz4F/B1K
         NYAwbUOhII6V+GCyYLjdvP+ii4TYBsbJQON7NuyqWBzZCQFgskjX+Zm1SrGwPZbeNN66
         Iesw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=l19W12T+vpO5G1S8KEHGV19VXsWkr87TVQtxqZe44B8=;
        b=W3wBOaxga0abKBy33VWR8fGQte5ynmnP5SsKjjbsu/jwJwm+mqDUXiEfn8lB/OcogX
         CBWPacoX4OJqMVNcin0XUJiEaAYj6ClyfumTpI4JEUUquAaE9KTDbCCJRw3cxYl/NFVg
         fFU3ADUomlNM4Fc6CRINgPEP4ntWDWzF3vjsM6LfJWDVWCAjHMLFqYUUTf3/ksB5qzbS
         dH4vouogR03mJsYSDxVeCHidXxaLm33l4qR8N7wcAo8Ks4J0AZSVVrGh8VlQKyNRxaK4
         YZA2PNrUJ4gMNjzYQlUp9NZix+6Rj4x2p3Lx8J38rgNM5UCYPQiRVP8ZfNsq/J9AJxH+
         fBzw==
X-Gm-Message-State: AGi0PuY6Q3UtFuHSmePcFWEgezMgfoEf1av1NQVcx/OZ3Ze1a+zyKNX0
        io/WE53NhgA+Idl643bCJYo=
X-Google-Smtp-Source: APiQypKFAb7YE4sDKHB2ge4+p9qCKHEXPiZKZGUunv+f3H5EPBF8AW7ZQ2ABl/151V499KfTGlUVnQ==
X-Received: by 2002:a17:90a:d3ca:: with SMTP id d10mr1149295pjw.24.1587653541444;
        Thu, 23 Apr 2020 07:52:21 -0700 (PDT)
Received: from bbox-1.mtv.corp.google.com ([2620:15c:211:1:3e01:2939:5992:52da])
        by smtp.gmail.com with ESMTPSA id c2sm2824100pfp.118.2020.04.23.07.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 07:52:20 -0700 (PDT)
From:   Minchan Kim <minchan@kernel.org>
To:     Andrew Morton <akpm@linux-foundation.org>
Cc:     linux-mm <linux-mm@kvack.org>, Minchan Kim <minchan@kernel.org>,
        Jens Axboe <axboe@kernel.dk>, Jann Horn <jannh@google.com>,
        David Rientjes <rientjes@google.com>,
        Arjun Roy <arjunroy@google.com>,
        Tim Murray <timmurray@google.com>,
        Daniel Colascione <dancol@google.com>,
        Sonny Rao <sonnyrao@google.com>,
        Brian Geffon <bgeffon@google.com>,
        Shakeel Butt <shakeelb@google.com>,
        John Dias <joaodias@google.com>,
        Joel Fernandes <joel@joelfernandes.org>,
        SeongJae Park <sj38.park@gmail.com>,
        Oleksandr Natalenko <oleksandr@redhat.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Sandeep Patil <sspatil@google.com>,
        Michal Hocko <mhocko@suse.com>,
        Johannes Weiner <hannes@cmpxchg.org>,
        Vlastimil Babka <vbabka@suse.cz>, linux-man@vger.kernel.org
Subject: [PATCH 2/2] mm: support vector address ranges for process_madvise
Date:   Thu, 23 Apr 2020 07:52:15 -0700
Message-Id: <20200423145215.72666-2-minchan@kernel.org>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
In-Reply-To: <20200423145215.72666-1-minchan@kernel.org>
References: <20200423145215.72666-1-minchan@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This patch extends a) process_madvise(2) support vector address ranges
in a system call and then b) support the vector address ranges to
local process as well as external process.

Android app has thousands of vmas due to zygote so it's totally waste
of CPU and power if we should call the syscall one by one for each vma.
(With testing 2000-vma syscall vs 1-vector syscall, it showed 15%
performance improvement. I think it would be bigger in real practice
because the testing ran very cache friendly environment).

Another potential use case for the vector range is to amortize the
cost of TLB shootdowns for multiple ranges when using MADV_DONTNEED;
this could benefit users like TCP receive zerocopy and malloc
implementations. In future, we could find more usecases for other
advises so let's make it happens as API since we introduce a new syscall
at this moment. With that, existing madvise(2) user could replace it with
process_madvise(2) with their own pid if they want to have batch address
ranges support feature.

So finally, the API is as follows,

  ssize_t process_madvise(idtype_t idtype, id_t id,
		const struct iovec *iovec, unsigned long vlen,
                int advice, unsigned long flags);

DESCRIPTION
  The process_madvise() system call is used to give advice or directions
  to the kernel about the address ranges from external process as well as
  local process. It provides the advice to address ranges of process
  described by iovec and vlen. The goal of such advice is to improve system
  or application performance.

  The idtype and id arguments select the target process to be advised as
  follows:

    idtype == P_PID
      select the process whose process ID matches id

    idtype == P_PIDFD
      select the process referred to by the PID file descriptor
      specified in id. (See pidofd_open(2) for further information)

  The pointer iovec points to an array of iovec structures, defined in
  <sys/uio.h> as:

    struct iovec {
    	void *iov_base;		/* starting address */
	size_t iov_len;		/* number of bytes to be advised */
    };

  The iovec describes address ranges beginning at address(iov_base)
  and with size length of bytes(iov_len).

  The vlen represents the number of elements in iovec.

  The advice is indicated in the advice argument, which is one of the
  following at this moment if the target process specified by idtype and
  id is external.

    MADV_COLD
    MADV_PAGEOUT
    MADV_MERGEABLE
    MADV_UNMERGEABLE

  Permission to provide a hint to external process is governed by a
  ptrace access mode PTRACE_MODE_ATTACH_FSCREDS check; see ptrace(2).

  The process_madvise supports every advice madvise(2) has if target
  process is in same thread group with calling process so user could
  use process_madvise(2) to extend existing madvise(2) to support
  vector address ranges.

RETURN VALUE
  On success, process_madvise() returns the number of bytes advised.
  This return value may be less than the total number of requested
  bytes, if an error occurred. The caller should check return value
  to determine whether a partial advice occurred.

Cc: David Rientjes <rientjes@google.com>
Cc: Arjun Roy <arjunroy@google.com>
Cc: Tim Murray <timmurray@google.com>
Cc: Daniel Colascione <dancol@google.com>
Cc: Sonny Rao <sonnyrao@google.com>
Cc: Brian Geffon <bgeffon@google.com>
Cc: Shakeel Butt <shakeelb@google.com>
Cc: John Dias <joaodias@google.com>
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: SeongJae Park <sj38.park@gmail.com>
Cc: Oleksandr Natalenko <oleksandr@redhat.com>
Cc: Suren Baghdasaryan <surenb@google.com>
Cc: Sandeep Patil <sspatil@google.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: <linux-man@vger.kernel.org>
Signed-off-by: Minchan Kim <minchan@kernel.org>
---
 mm/madvise.c | 47 ++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 40 insertions(+), 7 deletions(-)

diff --git a/mm/madvise.c b/mm/madvise.c
index 097506466fdc..3082d7fa64ee 100644
--- a/mm/madvise.c
+++ b/mm/madvise.c
@@ -1195,20 +1195,39 @@ SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
 	return do_madvise(current, current->mm, start, len_in, behavior);
 }
 
-SYSCALL_DEFINE6(process_madvise, int, which, pid_t, upid, unsigned long, start,
-		size_t, len_in, int, behavior, unsigned long, flags)
+static int do_process_madvise(struct task_struct *target_task,
+		struct mm_struct *mm, struct iov_iter *iter, int behavior)
 {
-	int ret;
+	struct iovec iovec;
+	int ret = 0;
+
+	while (iov_iter_count(iter)) {
+		iovec = iov_iter_iovec(iter);
+		ret = do_madvise(target_task, mm, (unsigned long)iovec.iov_base,
+					iovec.iov_len, behavior);
+		if (ret < 0)
+			break;
+		iov_iter_advance(iter, iovec.iov_len);
+	}
+
+	return ret;
+}
+
+SYSCALL_DEFINE6(process_madvise, int, which, pid_t, upid,
+		const struct iovec __user *, vec, unsigned long, vlen,
+		int, behavior, unsigned long, flags)
+{
+	ssize_t ret;
 	struct pid *pid;
 	struct task_struct *task;
 	struct mm_struct *mm;
+	struct iovec iovstack[UIO_FASTIOV];
+	struct iovec *iov = iovstack;
+	struct iov_iter iter;
 
 	if (flags != 0)
 		return -EINVAL;
 
-	if (!process_madvise_behavior_valid(behavior))
-		return -EINVAL;
-
 	switch (which) {
 	case P_PID:
 		if (upid <= 0)
@@ -1236,13 +1255,27 @@ SYSCALL_DEFINE6(process_madvise, int, which, pid_t, upid, unsigned long, start,
 		goto put_pid;
 	}
 
+	if (task->mm != current->mm &&
+			!process_madvise_behavior_valid(behavior)) {
+		ret = -EINVAL;
+		goto release_task;
+	}
+
 	mm = mm_access(task, PTRACE_MODE_ATTACH_FSCREDS);
 	if (IS_ERR_OR_NULL(mm)) {
 		ret = IS_ERR(mm) ? PTR_ERR(mm) : -ESRCH;
 		goto release_task;
 	}
 
-	ret = do_madvise(task, mm, start, len_in, behavior);
+	ret = import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack), &iov, &iter);
+	if (ret >= 0) {
+		size_t total_len = iov_iter_count(&iter);
+
+		ret = do_process_madvise(task, mm, &iter, behavior);
+		if (ret >= 0)
+			ret = total_len - iov_iter_count(&iter);
+		kfree(iov);
+	}
 	mmput(mm);
 release_task:
 	put_task_struct(task);
-- 
2.26.1.301.g55bc3eb7cb9-goog

