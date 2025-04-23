Return-Path: <linux-man+bounces-2803-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B963DA97C07
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 03:12:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E911117A659
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 01:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D678257AFB;
	Wed, 23 Apr 2025 01:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="N1IK0vyN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f201.google.com (mail-pg1-f201.google.com [209.85.215.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C169979D0
	for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 01:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745370729; cv=none; b=rdzJ+hFyoqlMsaPYtN9jsX9KEW8Jr4F0c1HJOl7o4oAKoKXljAVR313JPsqKSQkfn6p3Rtit78c1iZnRS3seNdnjRuMsQLXWZ6vzQOq6rdLH+g8dlHnUPhas0mBCkEzYQgo+oi2f0RTJ8nB08+hk0e0Wg8IauQXcgkF3AlsxirE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745370729; c=relaxed/simple;
	bh=ZOp5karTUHKk0WQ0pfGwdeQVsmZETwPhZ1MdSL7xUjU=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=ULF2WVFut7sb7ZoUcrgdkZ351LdfyD8rGpjIyr6k5qEsq9mgnQnBers8ZSLqxP9ZOQYCqyfcssuarzpPQ+fiAON2nE8kS0qGmXzffM2Y9ZURO4sQGkYBaZZPTOMM7EXDbYujqfijgFt8z0YJOz2iF10mS280I41qVNWzHdwpq5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--surenb.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=N1IK0vyN; arc=none smtp.client-ip=209.85.215.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--surenb.bounces.google.com
Received: by mail-pg1-f201.google.com with SMTP id 41be03b00d2f7-af570998077so4633916a12.0
        for <linux-man@vger.kernel.org>; Tue, 22 Apr 2025 18:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745370727; x=1745975527; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=N6X0yJ+1tr6nd8cb5b2Uw7pevJu1KMurLqJaaGadHK8=;
        b=N1IK0vyNO+l8cu5PxpfLhh2kTH0XndinPQY0Q9vyggSd41Y6T9EbjnkG8g7bnDJuV3
         h+rMRundMGPjlKv9milmH66/A4FJGorawkfd9JPIRkKXyyN80LBaxCRsVh/ON+aqBEOT
         o/bHuOt3rNwx0Y3DyCMAYDJAxMvhJBeT+krASWjI0zLqkJhADQWuCiErcmYtMfdLQ4iK
         TcyuM8h4ESnVExWgHD4WkN4A7Q8wEUHITcsceOqqiDN9o9J4HNOMlig45DotIOTbw5qj
         IASEl1+N/VDDrJzSQUBDpswVUqeSd7AAu4EXLkna4dslrSCMD8YgHbNo4etT9eSpBJWb
         XBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745370727; x=1745975527;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N6X0yJ+1tr6nd8cb5b2Uw7pevJu1KMurLqJaaGadHK8=;
        b=lpoF8NWiAUwBYrjinDsI19lVlPlJ/8SlwLWsMRY5O84FpA7AaCQeRV2fEQdsG3U/d/
         6BPCoRVamOBgayVKP/pHVvC/WgFrtscCW17HS2XwWoGLEQ/f4h+YktrDsCtwIAW2ZTSA
         enOtm2zJxP7veCKDFv9rx1Ih+pxvC2uaRVGgCLKJkmGrCxXSRy/g/bu/inbCHy9RrTqJ
         rGszDPc3EDVqwFNxwQrOWOzc6o6114aZ4gIxycPIWEwb1ysG1BL7SYLp0Mr5py50j6mQ
         xQ5Y8de4e5LR8suNq1iv5i4YNcZPUKdrxz6qr2gryC+BNwdKxMki7Lk3ZYCX2/Sh9MES
         8DvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXk2ofSiD84AOh+sMjI0E55ilhNMrbZQueq/y3DvSWvEnZ8iD+AK2i9WpZqDzWe4koeIKc44l64A0o=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjqrsz/u9vGHrl/uCsBD4oI2bQiSH78pZJrVFmoH5im/zy7Lo9
	yGKYh688whptv2GIPLliStOIwqThaTOIgD4XdIqT29ArF/berQD62acFva1ZyL/zpnP0VJfjf+h
	vmg==
X-Google-Smtp-Source: AGHT+IE3S5KFo8W44ihe4PFjjqIFHz8A0TSTdhT73+ZhDIZfFQ7PKfnO2n3LutJxCeUewf7ii6C4W6VcApI=
X-Received: from plbkx3.prod.google.com ([2002:a17:902:f943:b0:220:da6b:5d08])
 (user=surenb job=prod-delivery.src-stubby-dispatcher) by 2002:a17:903:98c:b0:224:76f:9e45
 with SMTP id d9443c01a7336-22c535838abmr264440465ad.21.1745370726990; Tue, 22
 Apr 2025 18:12:06 -0700 (PDT)
Date: Tue, 22 Apr 2025 18:12:03 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Message-ID: <20250423011203.2559210-1-surenb@google.com>
Subject: [PATCH 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const: Add
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
 man/man2/ioctl_userfaultfd.2     |   2 +
 man/man2const/UFFDIO_MOVE.2const | 149 +++++++++++++++++++++++++++++++
 2 files changed, 151 insertions(+)
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
index 000000000..ebeefde22
--- /dev/null
+++ b/man/man2const/UFFDIO_MOVE.2const
@@ -0,0 +1,149 @@
+'\" t
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
+Atomically move a continuous memory chunk into the userfault registered
+range and optionally wake up the blocked thread.
+.P
+The following value may be bitwise ORed in
+.I mode
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
+When specified, the holes will be accounted as successfully
+moved memory. This is mostly useful to move hugepage aligned
+virtual regions without knowing if there are transparent
+hugepages in the regions or not, but preventing the risk of
+having to split the hugepage during the operation.
+.P
+The
+.I move
+field is used by the kernel to return the number of bytes
+that was actually moved, or an error (a negated
+.IR errno -style
+value). The
+.I move
+field is output-only;
+it is not read by the
+.B UFFDIO_MOVE
+operation.
+.P
+The operation may fail for various reasons. Usually, remapping of
+pages that are not exclusive to the given process fail; once KSM
+might deduplicate pages or fork() COW-shares pages during fork()
+with child processes, they are no longer exclusive. Further, the
+kernel might only perform lightweight checks for detecting whether
+the pages are exclusive, and return -EBUSY in case that check fails.
+To make the operation more likely to succeed, KSM should be
+disabled, fork() should be avoided or MADV_DONTFORK should be
+configured for the source VMA before fork().
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
+.I move
+field)
+does not equal the value that was specified in the
+.I len
+field.
+.TP
+.B EINVAL
+Either
+.I dst
+or
+.I len
+was not a multiple of the system page size, or the range specified by
+.I src
+and
+.I len
+or
+.I dst
+and
+.I len
+was invalid.
+.TP
+.B EINVAL
+An invalid bit was specified in the
+.I mode
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
+pinned or not exclusive to the process. The kernel might
+only perform lightweight checks for detecting whether the
+pages are exclusive. To make the operation more likely to
+succeed, KSM should be disabled, fork() should be avoided
+or MADV_DONTFORK should be configured for the source virtual
+memory area before fork().
+.TP
+.BR ENOMEM
+Allocating memory needed for the operation failed.
+.TP
+.BR ESRCH
+The target process has exited at the time of a UFFDIO_MOVE
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


