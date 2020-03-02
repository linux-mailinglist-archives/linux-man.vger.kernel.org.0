Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 54B7D1765C2
	for <lists+linux-man@lfdr.de>; Mon,  2 Mar 2020 22:16:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726928AbgCBVQv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Mar 2020 16:16:51 -0500
Received: from mail.kernel.org ([198.145.29.99]:52704 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726846AbgCBVQv (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 2 Mar 2020 16:16:51 -0500
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 1CA662465E;
        Mon,  2 Mar 2020 21:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1583183808;
        bh=dTHGwhUV+QXj9/Jqr4PMoNxE1n2lLz0RHdNOMqcc4/s=;
        h=Date:From:To:Subject:From;
        b=eNg0WRWkxC34nvVOfaz+VIHI/ss5d+i3VBYoKaSjOx1h6BtGkdmoCWFKqTF6UM/Vm
         f/z1+lCKNPdHvJ2E4uzOa6PyKC7CM0FRCIaMKtCaQB8xCVXC+og6EO7hIwAlTPym1K
         JPuOfsbWdHtw/CV/fATqKLmDk22xdq7VMVBeJDFA=
Date:   Mon, 02 Mar 2020 13:16:47 -0800
From:   akpm@linux-foundation.org
To:     alexander.h.duyck@linux.intel.com, axboe@kernel.dk,
        bgeffon@google.com, christian@brauner.io, dancol@google.com,
        hannes@cmpxchg.org, jannh@google.com, joaodias@google.com,
        joel@joelfernandes.org, ktkhai@virtuozzo.com,
        linux-man@vger.kernel.org, mhocko@suse.com, minchan@kernel.org,
        mm-commits@vger.kernel.org, oleksandr@redhat.com,
        shakeelb@google.com, sj38.park@gmail.com, sjpark@amazon.de,
        sonnyrao@google.com, sspatil@google.com, surenb@google.com,
        timmurray@google.com
Subject:  +
 mm-madvise-employ-mmget_still_valid-for-write-lock.patch added to -mm tree
Message-ID: <20200302211647.rLk1ODylX%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/madvise: employ mmget_still_valid() for write lock
has been added to the -mm tree.  Its filename is
     mm-madvise-employ-mmget_still_valid-for-write-lock.patch

This patch should soon appear at
    http://ozlabs.org/~akpm/mmots/broken-out/mm-madvise-employ-mmget_still_valid-for-write-lock.patch
and later at
    http://ozlabs.org/~akpm/mmotm/broken-out/mm-madvise-employ-mmget_still_valid-for-write-lock.patch

Before you just go and hit "reply", please:
   a) Consider who else should be cc'ed
   b) Prefer to cc a suitable mailing list as well
   c) Ideally: find the original patch on the mailing list and do a
      reply-to-all to that, adding suitable additional cc's

*** Remember to use Documentation/process/submit-checklist.rst when testing your code ***

The -mm tree is included into linux-next and is updated
there every 3-4 working days

------------------------------------------------------
From: Oleksandr Natalenko <oleksandr@redhat.com>
Subject: mm/madvise: employ mmget_still_valid() for write lock

Do the very same trick as we already do since 04f5866e41fb.  KSM hints
will require locking mmap_sem for write since they modify vm_flags, so for
remote KSM hinting this additional check is needed.

Link: http://lkml.kernel.org/r/20200302193630.68771-7-minchan@kernel.org
Signed-off-by: Oleksandr Natalenko <oleksandr@redhat.com>
Signed-off-by: Minchan Kim <minchan@kernel.org>
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Cc: Brian Geffon <bgeffon@google.com>
Cc: Christian Brauner <christian@brauner.io>
Cc: Daniel Colascione <dancol@google.com>
Cc: Jann Horn <jannh@google.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Cc: John Dias <joaodias@google.com>
Cc: Kirill Tkhai <ktkhai@virtuozzo.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Sandeep Patil <sspatil@google.com>
Cc: SeongJae Park <sj38.park@gmail.com>
Cc: SeongJae Park <sjpark@amazon.de>
Cc: Shakeel Butt <shakeelb@google.com>
Cc: Sonny Rao <sonnyrao@google.com>
Cc: Tim Murray <timmurray@google.com>
Cc: <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 mm/madvise.c |    3 +++
 1 file changed, 3 insertions(+)

--- a/mm/madvise.c~mm-madvise-employ-mmget_still_valid-for-write-lock
+++ a/mm/madvise.c
@@ -1118,6 +1118,8 @@ int do_madvise(struct task_struct *targe
 	if (write) {
 		if (down_write_killable(&mm->mmap_sem))
 			return -EINTR;
+		if (current->mm != mm && !mmget_still_valid(mm))
+			goto skip_mm;
 	} else {
 		down_read(&mm->mmap_sem);
 	}
@@ -1169,6 +1171,7 @@ int do_madvise(struct task_struct *targe
 	}
 out:
 	blk_finish_plug(&plug);
+skip_mm:
 	if (write)
 		up_write(&mm->mmap_sem);
 	else
_

Patches currently in -mm which might be from oleksandr@redhat.com are

mm-madvise-employ-mmget_still_valid-for-write-lock.patch
mm-madvise-allow-ksm-hints-for-remote-api.patch

