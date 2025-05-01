Return-Path: <linux-man+bounces-2840-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF53AA6660
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 00:47:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2FBD980E95
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 22:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28B441EA7FF;
	Thu,  1 May 2025 22:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="T432Eh59"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F84919F12D
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 22:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746139638; cv=none; b=DIm5hR88owXRsheGCHzKksgScHGkeqCMUdnFpmVyLf1dHsw8KvsyPl9ZMAn7F78gQM+Bua6mfG/0vLh77f2uUAJKi0Emcv3mJhoB7d4+YzoSHQKW7pmIFWlPLOS+iJPYwBfkxSsZegy4dOv/6wkMZVOQ/cSKf/aPXXy3FvLOpDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746139638; c=relaxed/simple;
	bh=iqsOvv6iaydbtBYBgE9q0mGd1QvB53PPls/wkjUptn4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Acvvrq17B7mIL23V9ntIu8tjE/seDt5x73Vi9zKGw9Y3lHAGDntqQ1cRgQHUI2HaS54MbedpEB29qlkFT9jJSVLmJ5TVv4PTeGjjQ461yxn4gp27uDI9gYE/dBZ00YqeND0wHkwdGxbNMJMUTqEFwGNDrvpOW3mFBVftxgzJfNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=T432Eh59; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4774611d40bso96021cf.0
        for <linux-man@vger.kernel.org>; Thu, 01 May 2025 15:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746139635; x=1746744435; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O6fwaerzl3Bg0sf5oeWuRn0ChzTq7tOiRIWWTq3nzwY=;
        b=T432Eh59TLKvL2dx2GVZlTHeGKd6wWhdZRibk3K8S0FZUwuZzl2q2YgZOJ0H7YFFPJ
         agqChU8fM8G4+DQCYHvmO734EF1+XO5nP8aoOzUgluDdKl0hEzxo2x/PJPok57KKcpWT
         +fjbQruUnUbCFutjKuZ3dbAIdpjcMy+mjUvcAXprFq6e7fkY1G+hUQUl8wFfopa0RLyk
         wmGbm0Ow2oPaT3p7w7xRiTMDLA6GlsxMjhEhuyPj1Tn+6rk0A1IYEL17lSLlEmBadLyu
         RkdCTx6znc59+SczvOqRYv3t1XzD6JKR4LHR+/A6wCEBaIju00IXInHuWDOSaDBIN2Q0
         ik/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746139635; x=1746744435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O6fwaerzl3Bg0sf5oeWuRn0ChzTq7tOiRIWWTq3nzwY=;
        b=PAgd4sDhcs4U0nwyBtYWJqZCTPELG51HBmLLMTX7UoXcLTegJqGYlccUnpGcYtaKDL
         kRzV7RsDaaZEAaHK2DI1sSA3T8ofd6NW0Y62zughdY7GrykZfvJN5Y5w9mMx6OVOukmy
         +HN8b1O749HShUkW3ZJxBnFBxfPVUlQSl7yllTTfaIJG+VZkDs5AXsCxqYYCcFVHeQpH
         cbNvQolyXJ4CQoCS9H8lFC+cOnfjFqviqyDu+T7OZAv4wSpi7RfmSUOWvIrKBcAI5ADl
         7VSpNoU87JiHszrDa3NGPcpDmGCOcfSCLGZCATlpPAv02DUJY871/sjm1o1it22DVDU9
         et7g==
X-Forwarded-Encrypted: i=1; AJvYcCWSsiiu1Id3a4dGMZkSD5DKqleh8xNfvkPZ4UHZNoM0ZqjGRDZSDzu6D0KVH0Kq+p9mIC74U5YO62c=@vger.kernel.org
X-Gm-Message-State: AOJu0YyKGB5NfQvfFqfgfZ5L6mHiqEGOnTj7nMRnlIAQC0UFhq6il+Qh
	360A8Ek0ZTHRF/zOyrbXQTDfMhDkV5izBjnTaWn8C1/cAL9q7l3nE7ETyqUva0LTXASEdNNIB8W
	Pz3TV+LR2kchHF/9aoT187U8tKjkv4WICxwiE
X-Gm-Gg: ASbGncthekFCOHjAfVZsjGcVN1tQ9u9Zdk+TSOf4gDgGFzpsV+buvTAisPqbQ0ykdAD
	Zgcek+OUGQ8yKoAzgfdVQN91sNPdSrRkXCnNla3GTVctiGha/Gn7TeLfZMUGxcVmlokaBVXIbjC
	XU14pQbpokXCCXLy3mjy74
X-Google-Smtp-Source: AGHT+IFZI002Sla3uvwR1rluxQsLjbMAG9CGpRQ6CtR5RfgdNfT+dEP/11g/kteOQpKWLbA1/vj6iYeLrkz2QlOUBRA=
X-Received: by 2002:ac8:5a0c:0:b0:47b:840:7f5b with SMTP id
 d75a77b69052e-48b0dfe09a8mr4973961cf.29.1746139634530; Thu, 01 May 2025
 15:47:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423195309.2841410-1-surenb@google.com> <iez4k4xdfxnbc6nvo6rxfoqd4argcx3adsmtaxjr4q4ra46324@tvo5pbno6n7i>
In-Reply-To: <iez4k4xdfxnbc6nvo6rxfoqd4argcx3adsmtaxjr4q4ra46324@tvo5pbno6n7i>
From: Suren Baghdasaryan <surenb@google.com>
Date: Thu, 1 May 2025 15:47:03 -0700
X-Gm-Features: ATxdqUFMVjVkF21Xxk3-g1aoMywqpskLyRu2fbWvlDJpBxC8WUbsWZulycaGZGQ
Message-ID: <CAJuCfpERT1MUeY1iCxXCYAp8KxZcnDfStn3+fXm_C=nx_8LMAA@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
To: Alejandro Colomar <alx@kernel.org>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 1, 2025 at 6:12=E2=80=AFAM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi Suren,
>
> On Wed, Apr 23, 2025 at 12:53:09PM -0700, Suren Baghdasaryan wrote:
> > Documentation was extracted from the original patch written by Andrea
> > Arcangeli and upstreamed in [1]. Minor edits were made to maintain
> > the same documentation style as other userfaultfd ioctl commands.
> >
> > [1] <https://lore.kernel.org/all/20231206103702.3873743-3-surenb@google=
.com/>
> >
> > Signed-off-by: Suren Baghdasaryan <surenb@google.com>
>
> I've formatted references to fork(2).  I also fixed a few places with
> s/BR/B/.  Other than that, the patch was fine; I've applied it.  Thanks!
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3Dd7dec35a3b197d499c0bb2b078117478fe6382d1>
> Below is the diff with which I amended the patch.

Hi Alex,
Your changes look good. Thank you and Lorenzo for helping to sort this out.
Cheers,
Suren.

>
>
> Have a lovely day!
> Alex
>
>
> diff --git i/man/man2const/UFFDIO_MOVE.2const w/man/man2const/UFFDIO_MOVE=
.2const
> index 77b0ca781..daa122b30 100644
> --- i/man/man2const/UFFDIO_MOVE.2const
> +++ w/man/man2const/UFFDIO_MOVE.2const
> @@ -108,36 +108,42 @@ .SH ERRORS
>  .I .mode
>  field.
>  .TP
> -.BR ENOENT
> +.B ENOENT
>  The source virtual memory range has unmapped holes and
>  .B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
>  is not set.
>  .TP
> -.BR EEXIST
> +.B EEXIST
>  The destination virtual memory range is fully or partially
>  mapped.
>  .TP
> -.BR EBUSY
> +.B EBUSY
>  The pages in the source virtual memory range are either
>  pinned or not exclusive to the process.
>  Once KSM deduplicates pages
> -or fork() COW-shares pages during fork() with child processes,
> +or
> +.BR fork (2)
> +COW-shares pages during
> +.BR fork (2)
> +with child processes,
>  they are no longer exclusive.
>  The kernel might only perform lightweight checks
>  for detecting whether the pages are exclusive.
>  To make the operation more likely to succeed,
>  KSM should be disabled,
> -fork() should be avoided
> +.BR fork (2)
> +should be avoided
>  or
>  .B MADV_DONTFORK
>  should be configured
>  for the source virtual memory area
> -before fork().
> +before
> +.BR fork (2).
>  .TP
> -.BR ENOMEM
> +.B ENOMEM
>  Allocating memory needed for the operation failed.
>  .TP
> -.BR ESRCH
> +.B ESRCH
>  The target process has exited at the time of a
>  .B UFFDIO_MOVE
>  operation.
>
>
> > ---
> > Changes since v1[1]
> > - removed '\" t, per Alejandro Colomar
> > - reformated sentences to use semantic newlines, per Alejandro Colomar
> > - changed field names to use '.' prefix, per Alejandro Colomar
> > - changed EBUSY, UFFDIO_MOVE and MADV_DONTFORK to be bold,
> > per Alejandro Colomar
> > - folded duplicate information into EBUSY error description,
> > per Alejandro Colomar
> >
> > [1] https://lore.kernel.org/all/20250423011203.2559210-1-surenb@google.=
com/
> >
> >  man/man2/ioctl_userfaultfd.2     |   2 +
> >  man/man2const/UFFDIO_MOVE.2const | 153 +++++++++++++++++++++++++++++++
> >  2 files changed, 155 insertions(+)
> >  create mode 100644 man/man2const/UFFDIO_MOVE.2const
> >
> > diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultfd.=
2
> > index 3cb1b8305..5ec08ca55 100644
> > --- a/man/man2/ioctl_userfaultfd.2
> > +++ b/man/man2/ioctl_userfaultfd.2
> > @@ -69,6 +69,8 @@ events.
> >  .TQ
> >  .BR UFFDIO_COPY (2const)
> >  .TQ
> > +.BR UFFDIO_MOVE (2const)
> > +.TQ
> >  .BR UFFDIO_ZEROPAGE (2const)
> >  .TQ
> >  .BR UFFDIO_WAKE (2const)
> > diff --git a/man/man2const/UFFDIO_MOVE.2const b/man/man2const/UFFDIO_MO=
VE.2const
> > new file mode 100644
> > index 000000000..77b0ca781
> > --- /dev/null
> > +++ b/man/man2const/UFFDIO_MOVE.2const
> > @@ -0,0 +1,153 @@
> > +.\" Written by Andrea Arcangeli <aarcange@redhat.com>
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH UFFDIO_MOVE 2const (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +UFFDIO_MOVE
> > +\-
> > +atomically move a continuous memory chunk into the userfault registere=
d range
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ,\~ \-lc )
> > +.SH SYNOPSIS
> > +.nf
> > +.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " con=
stants */"
> > +.B #include <sys/ioctl.h>
> > +.P
> > +.BI "int ioctl(int " fd ", UFFDIO_MOVE, struct uffdio_move *" argp );
> > +.P
> > +.B #include <linux/userfaultfd.h>
> > +.P
> > +.fi
> > +.EX
> > +.B struct uffdio_move {
> > +.BR "    __u64  dst;" "   /* Destination of move */"
> > +.BR "    __u64  src;" "   /* Source of move */"
> > +.BR "    __u64  len;" "   /* Number of bytes to move */"
> > +.BR "    __u64  mode;" "  /* Flags controlling behavior of move */"
> > +.BR "    __s64  move;" "  /* Number of bytes moved, or negated error *=
/"
> > +.B };
> > +.EE
> > +.SH DESCRIPTION
> > +Atomically move a continuous memory chunk
> > +into the userfault registered range
> > +and optionally wake up the blocked thread.
> > +.P
> > +The following value may be bitwise ORed in
> > +.I .mode
> > +to change the behavior of the
> > +.B UFFDIO_MOVE
> > +operation:
> > +.TP
> > +.B UFFDIO_MOVE_MODE_DONTWAKE
> > +Do not wake up the thread that waits for page-fault resolution
> > +.TP
> > +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> > +Allow holes in the source virtual range that is being moved.
> > +When not specified, the holes will result in
> > +.B ENOENT
> > +error.
> > +When specified,
> > +the holes will be accounted as successfully moved memory.
> > +This is mostly useful
> > +to move hugepage aligned virtual regions
> > +without knowing if there are transparent hugepages in the regions or n=
ot,
> > +but preventing the risk of
> > +having to split the hugepage during the operation.
> > +.P
> > +The
> > +.I .move
> > +field is used by the kernel
> > +to return the number of bytes that was actually moved,
> > +or an error
> > +(a negated
> > +.IR errno -style
> > +value).
> > +The
> > +.I .move
> > +field is output-only;
> > +it is not read by the
> > +.B UFFDIO_MOVE
> > +operation.
> > +.SH RETURN VALUE
> > +On success,
> > +0 is returned.
> > +In this case, the entire area was moved.
> > +.P
> > +On error, \-1 is returned and
> > +.I errno
> > +is set to indicate the error.
> > +.SH ERRORS
> > +.TP
> > +.B EAGAIN
> > +The number of bytes moved (i.e., the value returned in the
> > +.I .move
> > +field)
> > +does not equal the value that was specified in the
> > +.I .len
> > +field.
> > +.TP
> > +.B EINVAL
> > +Either
> > +.I .dst
> > +or
> > +.I .len
> > +was not a multiple of the system page size, or the range specified by
> > +.I .src
> > +and
> > +.I .len
> > +or
> > +.I .dst
> > +and
> > +.I .len
> > +was invalid.
> > +.TP
> > +.B EINVAL
> > +An invalid bit was specified in the
> > +.I .mode
> > +field.
> > +.TP
> > +.BR ENOENT
> > +The source virtual memory range has unmapped holes and
> > +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> > +is not set.
> > +.TP
> > +.BR EEXIST
> > +The destination virtual memory range is fully or partially
> > +mapped.
> > +.TP
> > +.BR EBUSY
> > +The pages in the source virtual memory range are either
> > +pinned or not exclusive to the process.
> > +Once KSM deduplicates pages
> > +or fork() COW-shares pages during fork() with child processes,
> > +they are no longer exclusive.
> > +The kernel might only perform lightweight checks
> > +for detecting whether the pages are exclusive.
> > +To make the operation more likely to succeed,
> > +KSM should be disabled,
> > +fork() should be avoided
> > +or
> > +.B MADV_DONTFORK
> > +should be configured
> > +for the source virtual memory area
> > +before fork().
> > +.TP
> > +.BR ENOMEM
> > +Allocating memory needed for the operation failed.
> > +.TP
> > +.BR ESRCH
> > +The target process has exited at the time of a
> > +.B UFFDIO_MOVE
> > +operation.
> > +.SH STANDARDS
> > +Linux.
> > +.SH HISTORY
> > +Linux 6.8.
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR ioctl_userfaultfd (2),
> > +.BR userfaultfd (2)
> > +.P
> > +.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst
> >
> > base-commit: 80e2715270fc05d5627c26f88e4c1ba8b093f510
> > --
> > 2.49.0.805.g082f7c87e0-goog
> >
>
> --
> <https://www.alejandro-colomar.es/>

