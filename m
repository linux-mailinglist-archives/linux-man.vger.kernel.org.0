Return-Path: <linux-man+bounces-2812-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F14AA998F5
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 21:53:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC0DF920DB4
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 19:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7569265CBF;
	Wed, 23 Apr 2025 19:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="N/h1Uas6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com [209.85.214.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E423825C82C
	for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 19:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745437995; cv=none; b=DDAGOaisc5tJgqN0nMCRUFH+/2FIAdXirX35HkC3JJ3faq21DSWrwkIO4PqzIhFI/tTiAuY+8T0YlCt9WONj5ZDE1zAkX/1oLTi6npCN4RtU8jNbcX4qgPFN7M3zK7QDJPFWlXogdI61usXQHEZzpXMyMK9fExYzYMd0jtmwnW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745437995; c=relaxed/simple;
	bh=umhL52Zdfp/yLrFFDV828ylQGz0Mv0dFRw41+bK8PIw=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=S2AhTU8RIO25iEa3QMpMjERdFjMsisx6wuqNNIDTUHrVzR5n2n8S+4ma+okhte6etMjNQ9h5dDfwQiUvbyZdLuGE7gwGyqTi3pvOJ8jp+B+kUXcnbjRNtAIo9848xN0t2vL3226NKYm78xNOnI5LW74NIvqW3+/no4y/N0qnTgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--surenb.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=N/h1Uas6; arc=none smtp.client-ip=209.85.214.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--surenb.bounces.google.com
Received: by mail-pl1-f201.google.com with SMTP id d9443c01a7336-227ea16b03dso2687415ad.3
        for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 12:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745437993; x=1746042793; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9ZM3RQEpIYwnUPDE3f5zc14DNB4WiWuq3xNj3WWAwPw=;
        b=N/h1Uas68rsBKOppyw6LZtGwmGDob1rrFjhOUsTjJKzPYDMBe/KYr1LeK/WWvPHQAS
         n4qkPeMOPA1bUZnMIYNdfCe2Hmd+gN1YAA8HWZPsKBv+b3FPc+wjsTOYT3YgYmb/8irV
         Lhd0tN2wDVtyh/wA7AyvpWNld5U5jf8yt1QBlrVNjmCOstjcc/+sw69yzWs/NjJVpZLr
         wfItNLiq/+oIWwHq+uNdiOuKs80J2JaDImIKOJmL9dpWZbpesBLMeq9UVWw6v7y3bytk
         a0erl8fvx9KLmRMZQJwviwYaFVp4NO/hVhMiMDwlrLR4lroXZckrhoAQ0JMPP6TZnb12
         pE0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745437993; x=1746042793;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9ZM3RQEpIYwnUPDE3f5zc14DNB4WiWuq3xNj3WWAwPw=;
        b=c27y0kNSGVo2rRlHO/y0UXTt3zITj+fxw0prgxEh+/cx2tzAcTEk//eeFuEGYifpZD
         3XYjVyHK10o9xRx7CG4xu9kZO5iQtLkfxH9g/gT5ZWE7RCuplJPn9gDeANFt/dxlH0oe
         WXRM7MWosqQ5y+txSzluXEuT7sH+pCa4AI1XcgIL1JKTttTAlK4gUd6MsW2L6dTwTZWO
         Be/jwhvE5cfefThGnlPobHd3NrUQzQPkxs4/dlVVKMDqV0tc2vMsgen3rGVV4BWVlFtz
         J3bXGGXUw9YmCroAxfilx5GEa/1lIG1RVaHM9UNkeRYKdIDWqje1HGTAPckXzi7tKAA9
         t4uQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjakaObd9XsYJNxxl8bkou8gP1pH0NQo2u4REupr1DJXZIJz2x+KMcj1sEt2WzHXpFGXjA37OHgRU=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+RnCh65u3GtHpbu+/lyZtJaBvNle66Rn91HHZNBfnxhFXWFAi
	tbgibmxUGuHmyAwsSLa21YRSb/sw0NRPbYluK9mnChpazROUeANd6tKZjACjDF0zYrC2hYw9Uyt
	SCg==
X-Google-Smtp-Source: AGHT+IEmlOi678Vh1nwns2dGjWRwYZXObKJV25OfJdrUZKA4073GA1mUugAvu5B0egUh1d7WmERw5x9TURQ=
X-Received: from plfh4.prod.google.com ([2002:a17:902:f544:b0:220:e8a0:ec20])
 (user=surenb job=prod-delivery.src-stubby-dispatcher) by 2002:a17:903:11c5:b0:224:1609:a74a
 with SMTP id d9443c01a7336-22c536043a6mr311710055ad.34.1745437993125; Wed, 23
 Apr 2025 12:53:13 -0700 (PDT)
Date: Wed, 23 Apr 2025 12:53:09 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Message-ID: <20250423195309.2841410-1-surenb@google.com>
Subject: [PATCH v2 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const: Add
 UFFDIO_MOVE page
From: Suren Baghdasaryan <surenb@google.com>
To: alx@kernel.org
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org, Suren Baghdasaryan <surenb@google.com>
Content-Type: text/plain; charset="UTF-8"

Documentation was extracted from the original patch written by Andrea
Arcangeli and upstreamed in [1]. Minor edits were made to maintain
the same documentation style as other userfaultfd ioctl commands.

[1] <https://lore.kernel.org/all/20231206103702.3873743-3-surenb@google.com/>

Signed-off-by: Suren Baghdasaryan <surenb@google.com>
---
Changes since v1[1]
- removed '\" t, per Alejandro Colomar
- reformated sentences to use semantic newlines, per Alejandro Colomar
- changed field names to use '.' prefix, per Alejandro Colomar
- changed EBUSY, UFFDIO_MOVE and MADV_DONTFORK to be bold,
per Alejandro Colomar
- folded duplicate information into EBUSY error description,
per Alejandro Colomar

[1] https://lore.kernel.org/all/20250423011203.2559210-1-surenb@google.com/

 man/man2/ioctl_userfaultfd.2     |   2 +
 man/man2const/UFFDIO_MOVE.2const | 153 +++++++++++++++++++++++++++++++
 2 files changed, 155 insertions(+)
 create mode 100644 man/man2const/UFFDIO_MOVE.2const

diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultfd.2
index 3cb1b8305..5ec08ca55 100644
--- a/man/man2/ioctl_userfaultfd.2
+++ b/man/man2/ioctl_userfaultfd.2
@@ -69,6 +69,8 @@ events.
 .TQ
 .BR UFFDIO_COPY (2const)
 .TQ
+.BR UFFDIO_MOVE (2const)
+.TQ
 .BR UFFDIO_ZEROPAGE (2const)
 .TQ
 .BR UFFDIO_WAKE (2const)
diff --git a/man/man2const/UFFDIO_MOVE.2const b/man/man2const/UFFDIO_MOVE.2const
new file mode 100644
index 000000000..77b0ca781
--- /dev/null
+++ b/man/man2const/UFFDIO_MOVE.2const
@@ -0,0 +1,153 @@
+.\" Written by Andrea Arcangeli <aarcange@redhat.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH UFFDIO_MOVE 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+UFFDIO_MOVE
+\-
+atomically move a continuous memory chunk into the userfault registered range
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " constants */"
+.B #include <sys/ioctl.h>
+.P
+.BI "int ioctl(int " fd ", UFFDIO_MOVE, struct uffdio_move *" argp );
+.P
+.B #include <linux/userfaultfd.h>
+.P
+.fi
+.EX
+.B struct uffdio_move {
+.BR "    __u64  dst;" "   /* Destination of move */"
+.BR "    __u64  src;" "   /* Source of move */"
+.BR "    __u64  len;" "   /* Number of bytes to move */"
+.BR "    __u64  mode;" "  /* Flags controlling behavior of move */"
+.BR "    __s64  move;" "  /* Number of bytes moved, or negated error */"
+.B };
+.EE
+.SH DESCRIPTION
+Atomically move a continuous memory chunk
+into the userfault registered range
+and optionally wake up the blocked thread.
+.P
+The following value may be bitwise ORed in
+.I .mode
+to change the behavior of the
+.B UFFDIO_MOVE
+operation:
+.TP
+.B UFFDIO_MOVE_MODE_DONTWAKE
+Do not wake up the thread that waits for page-fault resolution
+.TP
+.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
+Allow holes in the source virtual range that is being moved.
+When not specified, the holes will result in
+.B ENOENT
+error.
+When specified,
+the holes will be accounted as successfully moved memory.
+This is mostly useful
+to move hugepage aligned virtual regions
+without knowing if there are transparent hugepages in the regions or not,
+but preventing the risk of
+having to split the hugepage during the operation.
+.P
+The
+.I .move
+field is used by the kernel
+to return the number of bytes that was actually moved,
+or an error
+(a negated
+.IR errno -style
+value).
+The
+.I .move
+field is output-only;
+it is not read by the
+.B UFFDIO_MOVE
+operation.
+.SH RETURN VALUE
+On success,
+0 is returned.
+In this case, the entire area was moved.
+.P
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EAGAIN
+The number of bytes moved (i.e., the value returned in the
+.I .move
+field)
+does not equal the value that was specified in the
+.I .len
+field.
+.TP
+.B EINVAL
+Either
+.I .dst
+or
+.I .len
+was not a multiple of the system page size, or the range specified by
+.I .src
+and
+.I .len
+or
+.I .dst
+and
+.I .len
+was invalid.
+.TP
+.B EINVAL
+An invalid bit was specified in the
+.I .mode
+field.
+.TP
+.BR ENOENT
+The source virtual memory range has unmapped holes and
+.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
+is not set.
+.TP
+.BR EEXIST
+The destination virtual memory range is fully or partially
+mapped.
+.TP
+.BR EBUSY
+The pages in the source virtual memory range are either
+pinned or not exclusive to the process.
+Once KSM deduplicates pages
+or fork() COW-shares pages during fork() with child processes,
+they are no longer exclusive.
+The kernel might only perform lightweight checks
+for detecting whether the pages are exclusive.
+To make the operation more likely to succeed,
+KSM should be disabled,
+fork() should be avoided
+or
+.B MADV_DONTFORK
+should be configured
+for the source virtual memory area
+before fork().
+.TP
+.BR ENOMEM
+Allocating memory needed for the operation failed.
+.TP
+.BR ESRCH
+The target process has exited at the time of a
+.B UFFDIO_MOVE
+operation.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 6.8.
+.SH SEE ALSO
+.BR ioctl (2),
+.BR ioctl_userfaultfd (2),
+.BR userfaultfd (2)
+.P
+.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst

base-commit: 80e2715270fc05d5627c26f88e4c1ba8b093f510
-- 
2.49.0.805.g082f7c87e0-goog


