Return-Path: <linux-man+bounces-2824-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0BAAA586E
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 01:00:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95EF6460110
	for <lists+linux-man@lfdr.de>; Wed, 30 Apr 2025 23:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C613D22618F;
	Wed, 30 Apr 2025 22:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qoT2hcYY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26102236FC
	for <linux-man@vger.kernel.org>; Wed, 30 Apr 2025 22:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746053996; cv=none; b=Z+ftHUsdFUQ1sNSmgdDTuaMO/hleEnTsI5YQRYbD25v6zxfE5rIvBV5AV1I/O+Oj55c0QzLK8e0SjUjLJpOR8R7zfw3pO+B++HYASecBNnhCcSwZfO4FbZqCgoE8YXmyGneyfiIHkBVC2ilPXvKHayyrgyFtOuFgar3PxaCV9BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746053996; c=relaxed/simple;
	bh=hrKi6WHnbPn2XU6HI0KeMXiQXUUowajKHu6D2c+eKgg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hwFnu6To0gzrKuXTJRoxIF9tTRVnHMLJ8Hp1yrPEqqVDpL7aePNwZ2HZNMfhTw2SQT21vb2kRUyS7V3rSEuimt9voljWDabB4KRR2x/OZGyYcOhW7qbVFTL2fhGWJ33KU0kCMyRu+EQnICT546WiCbOSmFR1FRHdki+LTvWL1eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qoT2hcYY; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-47e9fea29easo6801cf.1
        for <linux-man@vger.kernel.org>; Wed, 30 Apr 2025 15:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746053993; x=1746658793; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=crlMHHWmbRilD8SwD7XtvOvFQMbdx3BLtc3vb+HPWkg=;
        b=qoT2hcYYrbyAuzJcTUv0xbfFC0RhrhjkCc/dZDW4aBvSA7q1p9JFA35URZz5cbCaPY
         2CQyg3dK0KUt8RQZF311ZG/fTVVXYYxnwDdW31MKJrHRkefPdplbElJP97vy69KtMa3H
         dcTyYlfaNupVufAFX3jNejY3CHmB/tIGl0KCp1SLLFsnaXLzlqBvQcMl9/CKYCn8rIy0
         q50flOVSqfa91CZpgIrRMXClKcpx5dGoQ3eiAfPEUP2YblL3nAy8nDkr140qZj1v/bCO
         7Mg6C9xNVpykEd30jG9QVHld1/8559c5/L5KGWYBV5oIc+ZqNKejy53ecxordgP+/686
         rqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746053993; x=1746658793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=crlMHHWmbRilD8SwD7XtvOvFQMbdx3BLtc3vb+HPWkg=;
        b=HX1LchVECx3WSfhDAHPeR71bv0iYE3IDOs6debfABBmmh6T9e7LnPmD5aZjFfvECOv
         W0uHPs25KnJE94/4Hei6RMy77/+DDpuHCCiDHoC6NiGwjf7f4RG+65CHTAD0LfWRJuLB
         6ioi+J51E3hc/rOH370JEK5kOQ1XHD7a70whZC6m1fOZmvhsuVepsoE13jjg8L5a4Fbn
         pakNbqSfuw8Q25zPBr73YyFc06OHxsPAe3qGL6hpkIP7vfe5f6ythokvOidH88jjK2T4
         zk8olCuqt5r7P9e4VedPjBKCiq5OCoPz+iP4oRtPgAYGO4uNtI1KOLbHRGSKfUSTn4mX
         Oypw==
X-Forwarded-Encrypted: i=1; AJvYcCWN2Qsub3LC2jitajTm4ovL5xx1vh+QjbiH00LNlnarQY61tVh5UD5NLDL1er6YrDH2eIsJOH6KDr4=@vger.kernel.org
X-Gm-Message-State: AOJu0YwpwxRH/c6Ca9ojIN/AJR0V+LLS40MWoJYl0+s6CXbk9glPz2hZ
	t6af7vnmcwd6VI6IL33gou39jZLcyid5MGhxX5bl8DIKcIjQh/HbE0zCTvs+AF7DbySxSJZouIZ
	0TfQ61ShoNl0ZAWEdS11PMr4JpVF7QH5gzs7I
X-Gm-Gg: ASbGncvBIT3YCwBscQZCjkSO8mcxXQ8cZ0J6YuTUdA41/OAa8rz2MLyiV2JdGz88x0v
	8OmL1/fUjOE/JSCdhUzzkLQnedpxuGSBU+SMxdkUk9BFrja1FdrmPrCpr2RJGslbHOsqEEVEIXE
	WoGibCCnKhEqTGmsOjUXKB
X-Google-Smtp-Source: AGHT+IHnkIzbUtvzvQqWg7bu0k+SVz5Y9Ns42I8dbVa9BdYTq/Xi666lcridvYhSfSvv25UdkxAIkbLQINQ57s4IVmk=
X-Received: by 2002:a05:622a:11:b0:486:8711:19af with SMTP id
 d75a77b69052e-48ae773409emr1791871cf.0.1746053993306; Wed, 30 Apr 2025
 15:59:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423195309.2841410-1-surenb@google.com>
In-Reply-To: <20250423195309.2841410-1-surenb@google.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Wed, 30 Apr 2025 15:59:42 -0700
X-Gm-Features: ATxdqUFzALW3hlb2DvU0zqyTxnzGB0jHFlv1eVtYaoc4UMi_VGSdoE370JP9W3o
Message-ID: <CAJuCfpFOmbAeM8AkV2VmvPkzkxsUE7L1CgvrY69=JMV4CmypbA@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
To: alx@kernel.org
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 23, 2025 at 12:53=E2=80=AFPM Suren Baghdasaryan <surenb@google.=
com> wrote:
>
> Documentation was extracted from the original patch written by Andrea
> Arcangeli and upstreamed in [1]. Minor edits were made to maintain
> the same documentation style as other userfaultfd ioctl commands.
>
> [1] <https://lore.kernel.org/all/20231206103702.3873743-3-surenb@google.c=
om/>
>
> Signed-off-by: Suren Baghdasaryan <surenb@google.com>
> ---
> Changes since v1[1]
> - removed '\" t, per Alejandro Colomar
> - reformated sentences to use semantic newlines, per Alejandro Colomar
> - changed field names to use '.' prefix, per Alejandro Colomar
> - changed EBUSY, UFFDIO_MOVE and MADV_DONTFORK to be bold,
> per Alejandro Colomar
> - folded duplicate information into EBUSY error description,
> per Alejandro Colomar

Hi Alex,
Haven't seen any feedback on this version so far. Is it ok to be
accepted or should I change anything else?
Thanks,
Suren.

>
> [1] https://lore.kernel.org/all/20250423011203.2559210-1-surenb@google.co=
m/
>
>  man/man2/ioctl_userfaultfd.2     |   2 +
>  man/man2const/UFFDIO_MOVE.2const | 153 +++++++++++++++++++++++++++++++
>  2 files changed, 155 insertions(+)
>  create mode 100644 man/man2const/UFFDIO_MOVE.2const
>
> diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultfd.2
> index 3cb1b8305..5ec08ca55 100644
> --- a/man/man2/ioctl_userfaultfd.2
> +++ b/man/man2/ioctl_userfaultfd.2
> @@ -69,6 +69,8 @@ events.
>  .TQ
>  .BR UFFDIO_COPY (2const)
>  .TQ
> +.BR UFFDIO_MOVE (2const)
> +.TQ
>  .BR UFFDIO_ZEROPAGE (2const)
>  .TQ
>  .BR UFFDIO_WAKE (2const)
> diff --git a/man/man2const/UFFDIO_MOVE.2const b/man/man2const/UFFDIO_MOVE=
.2const
> new file mode 100644
> index 000000000..77b0ca781
> --- /dev/null
> +++ b/man/man2const/UFFDIO_MOVE.2const
> @@ -0,0 +1,153 @@
> +.\" Written by Andrea Arcangeli <aarcange@redhat.com>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH UFFDIO_MOVE 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +UFFDIO_MOVE
> +\-
> +atomically move a continuous memory chunk into the userfault registered =
range
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " const=
ants */"
> +.B #include <sys/ioctl.h>
> +.P
> +.BI "int ioctl(int " fd ", UFFDIO_MOVE, struct uffdio_move *" argp );
> +.P
> +.B #include <linux/userfaultfd.h>
> +.P
> +.fi
> +.EX
> +.B struct uffdio_move {
> +.BR "    __u64  dst;" "   /* Destination of move */"
> +.BR "    __u64  src;" "   /* Source of move */"
> +.BR "    __u64  len;" "   /* Number of bytes to move */"
> +.BR "    __u64  mode;" "  /* Flags controlling behavior of move */"
> +.BR "    __s64  move;" "  /* Number of bytes moved, or negated error */"
> +.B };
> +.EE
> +.SH DESCRIPTION
> +Atomically move a continuous memory chunk
> +into the userfault registered range
> +and optionally wake up the blocked thread.
> +.P
> +The following value may be bitwise ORed in
> +.I .mode
> +to change the behavior of the
> +.B UFFDIO_MOVE
> +operation:
> +.TP
> +.B UFFDIO_MOVE_MODE_DONTWAKE
> +Do not wake up the thread that waits for page-fault resolution
> +.TP
> +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> +Allow holes in the source virtual range that is being moved.
> +When not specified, the holes will result in
> +.B ENOENT
> +error.
> +When specified,
> +the holes will be accounted as successfully moved memory.
> +This is mostly useful
> +to move hugepage aligned virtual regions
> +without knowing if there are transparent hugepages in the regions or not=
,
> +but preventing the risk of
> +having to split the hugepage during the operation.
> +.P
> +The
> +.I .move
> +field is used by the kernel
> +to return the number of bytes that was actually moved,
> +or an error
> +(a negated
> +.IR errno -style
> +value).
> +The
> +.I .move
> +field is output-only;
> +it is not read by the
> +.B UFFDIO_MOVE
> +operation.
> +.SH RETURN VALUE
> +On success,
> +0 is returned.
> +In this case, the entire area was moved.
> +.P
> +On error, \-1 is returned and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EAGAIN
> +The number of bytes moved (i.e., the value returned in the
> +.I .move
> +field)
> +does not equal the value that was specified in the
> +.I .len
> +field.
> +.TP
> +.B EINVAL
> +Either
> +.I .dst
> +or
> +.I .len
> +was not a multiple of the system page size, or the range specified by
> +.I .src
> +and
> +.I .len
> +or
> +.I .dst
> +and
> +.I .len
> +was invalid.
> +.TP
> +.B EINVAL
> +An invalid bit was specified in the
> +.I .mode
> +field.
> +.TP
> +.BR ENOENT
> +The source virtual memory range has unmapped holes and
> +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> +is not set.
> +.TP
> +.BR EEXIST
> +The destination virtual memory range is fully or partially
> +mapped.
> +.TP
> +.BR EBUSY
> +The pages in the source virtual memory range are either
> +pinned or not exclusive to the process.
> +Once KSM deduplicates pages
> +or fork() COW-shares pages during fork() with child processes,
> +they are no longer exclusive.
> +The kernel might only perform lightweight checks
> +for detecting whether the pages are exclusive.
> +To make the operation more likely to succeed,
> +KSM should be disabled,
> +fork() should be avoided
> +or
> +.B MADV_DONTFORK
> +should be configured
> +for the source virtual memory area
> +before fork().
> +.TP
> +.BR ENOMEM
> +Allocating memory needed for the operation failed.
> +.TP
> +.BR ESRCH
> +The target process has exited at the time of a
> +.B UFFDIO_MOVE
> +operation.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.8.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR ioctl_userfaultfd (2),
> +.BR userfaultfd (2)
> +.P
> +.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst
>
> base-commit: 80e2715270fc05d5627c26f88e4c1ba8b093f510
> --
> 2.49.0.805.g082f7c87e0-goog
>

