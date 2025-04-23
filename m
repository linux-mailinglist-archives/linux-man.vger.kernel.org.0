Return-Path: <linux-man+bounces-2810-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4122AA9962F
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 19:15:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D79D94658AC
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 17:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E54228A41A;
	Wed, 23 Apr 2025 17:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="MxNjvIm4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E962C13B797
	for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 17:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745428525; cv=none; b=T1dHsZ05qYSOUSFvUTtMPRe9LmsFlTIWQ8MlJuR1kgWKFvVzuTGEUepaVaPfDnASLo3/IcMUTmpumsdhB01pUs8ozPBQIqhlpIMG9vSruu+J1Q1u+xaXj+pnbhE3vb7y1Sa8iE3VIZU3n2Pato1clHF7kLdaQx6jJSNtB9PU/Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745428525; c=relaxed/simple;
	bh=z5HJDW/aUlbyTgfYAeCg0S3FQYUS2YCwlmE2HNQx0RU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V8tFU3ILh+BOWhrld1J7Koz8HdMQBxQHHoRqm6Ymy/ctVvAxnplTcdBwZYNXRxSJCpUhZFwiQnwhN+ZB0CkuRI3lCsc8Lm5QERL7SENn+X3hm1Ou4c6Ooigm50JbJUi3Huj7Fak6Ku6P9/BocrsQjYoLmFuwMCjJjxuHpRAdd90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=MxNjvIm4; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-47681dba807so11731cf.1
        for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 10:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745428523; x=1746033323; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLeR6rMZJIsw6w/zOvDvjP4YsUrvPI3KmargNssoim0=;
        b=MxNjvIm4m+LH9VCEBvxj9it3Iqe1GH6LCppD82VxbgSFVB0u3DaDygwcz8lihhol4f
         U3MSXAjfpK5DYv2lFcpkiSyiJlChIHEUpeutCWvetBf18o7C9gBizhOgKpgK12MZ56dI
         yigaczX1gTkPofFjuJ9DEGzbrLy5cgLYOZWfE3/tvCFTvUMr5q2UucI7iNL8iy4rE6ES
         jbu2fl3pE1nmZfiYfcevps5i4ErwE6w5Y9qbLCHGZCTr6siDfUkLmZCOSkPJ+8nldDME
         eXHFvONolTMLbJ1KMcupwwtWPm8aRr2BwaH9iguLIYdbquK2IiMkdDS/wxOyLJAhRfKb
         XwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745428523; x=1746033323;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iLeR6rMZJIsw6w/zOvDvjP4YsUrvPI3KmargNssoim0=;
        b=kFAJ6mV9oTRBJICYtGeTpzUHy4QwU+t1k+6TSq1PkIQHJBpy/LnIh5wG1eqF5seF1u
         4e8xPPHeaVTPSvcopl4CTzHahAa61RJLdCLViraxUe6kRSzG+Q9vj1gFoClps94S8lgf
         RMVnyF/LDP12kIIRCY9WSDgZYDp1nffG4agRFqJD4DRlxpaanzX0qMwO0DmB5m9dfkaF
         GNvzRrBuqRJ6YJ9BnoJelXvqrKqMVPCyx8DUiVX9FW0haJdZbWOFuFFBBD+lyRXSV9su
         sG87RW7GU+Wt5JbVs0pqYnxAe3HaGA3SxP8cpAxMIMKgYLa1oMjvJPRTl4L42Vh+VyuB
         P2xA==
X-Forwarded-Encrypted: i=1; AJvYcCWfJjzTco+rEkwGalPXF17pRChp4h3KVVfGUw87xG9dChbwgcJkJx0mJbWpsPr2YUcAyRT6UjJA4Oo=@vger.kernel.org
X-Gm-Message-State: AOJu0YxqlufC0jgqe+R3l0DHOlRIkaFU1L4hM4kHvfz9RiuRfeBcfjk7
	WpXSEgM0txnPCpb7lIUWisxihSrpPcViM/xxUibWc84y8R4qIeyKDuA+1W5m/5BGEpWhpoxAOy/
	ai4Wf2KFbfTGHEydx3c/KZ0/2PcIi6wymMAuh
X-Gm-Gg: ASbGncvajTrAnqn68V4YxNvPlxlRwKyGbXp4Qg0EjqwpMPBXUDkvtAAMa4mM4f5kYwh
	zgFuNqFyYARb2ZUyBhzImc3huiEea/OSawD23N+64gWOWsbrYymz6rouEnYRb9YSBqhC0a1oGXR
	SU96u404SOUgZc+6eBUEPDRl0vA1zHT6l/M7/3/Q78ZT34J6XMRnXXHjZPp8wYxJA=
X-Google-Smtp-Source: AGHT+IFv5PN1d8B4wYTtRYDsNkrW8O+cIRqsm2+Ekmc6KR5sy5YZ+32qZipIM2X7yMDVi9OqFaVv9jQM6xIPpcdYc7A=
X-Received: by 2002:a05:622a:14ca:b0:47d:4e8a:97f0 with SMTP id
 d75a77b69052e-47d4e8a98f5mr3855971cf.29.1745428522409; Wed, 23 Apr 2025
 10:15:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423011203.2559210-1-surenb@google.com> <4xxeauieht3kdepkgsc73xroo42zkltepxpzce6yir2zouzr7w@tjp5t43tr7pk>
In-Reply-To: <4xxeauieht3kdepkgsc73xroo42zkltepxpzce6yir2zouzr7w@tjp5t43tr7pk>
From: Suren Baghdasaryan <surenb@google.com>
Date: Wed, 23 Apr 2025 10:15:10 -0700
X-Gm-Features: ATxdqUHMNVPecvSKEztIWpWzNzMrUPORLp04P0ezN47hC0c9OqqzNGvQTTIARfs
Message-ID: <CAJuCfpHs+x_iAWAU=_Rph=fioc-30Y-2oiuudeW6jBy9DnBBFQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const: Add
 UFFDIO_MOVE page
To: Alejandro Colomar <alx@kernel.org>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 23, 2025 at 1:16=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Suren,
>
> On Tue, Apr 22, 2025 at 06:12:03PM -0700, Suren Baghdasaryan wrote:
> > Documentation was extracted from the original patch written by Andrea
> > Arcangeli and upstreamed in [1]. Minor edits were made to maintain
> > the same documentation style as other userfaultfd ioctl commands.
> >
> > [1] <https://lore.kernel.org/all/20231206103702.3873743-3-surenb@google=
.com/>
> >
> > Signed-off-by: Suren Baghdasaryan <surenb@google.com>
>
> It looks good, but there are a few issues commented below.
> Thanks for the patch!

Thanks for the feedback. Working on addressing your comments and will
post v2 today.

>
>
> Have a lovely day!
> Alex
>
> > ---
> >  man/man2/ioctl_userfaultfd.2     |   2 +
> >  man/man2const/UFFDIO_MOVE.2const | 149 +++++++++++++++++++++++++++++++
> >  2 files changed, 151 insertions(+)
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
> > index 000000000..ebeefde22
> > --- /dev/null
> > +++ b/man/man2const/UFFDIO_MOVE.2const
> > @@ -0,0 +1,149 @@
> > +'\" t
>
> This shouldn't be there.  There should be a diagnostic from the build
> system about it being spurious: that line is there only in pages that
> use tables (.TS/.TE), to let man(1) know that it should invoke tbl(1).
>
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
>
> Are we in time to name this size instead of len?  Length usually refers
> to the number of non-zero characters in a string, while size refers to
> number of bytes in some object, which is more appropriate in these
> cases.
>
> If this has already been released in the kernel, don't worry about it,
> but if it hasn't, maybe we should call it size?
>
> > +.BR "    __u64  mode;" "  /* Flags controlling behavior of move */"
> > +.BR "    __s64  move;" "  /* Number of bytes moved, or negated error *=
/"
> > +.B };
> > +.EE
> > +.SH DESCRIPTION
> > +Atomically move a continuous memory chunk into the userfault registere=
d
> > +range and optionally wake up the blocked thread.
>
> Please use semantic newlines.  In this case, I'd break the line before
> 'into', and before 'and'.
>
> $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>        In the source of a manual page, new sentences should be  started
>        on  new  lines,  long  sentences  should  be split into lines at
>        clause breaks (commas, semicolons, colons, and so on), and  long
>        clauses  should be split at phrase boundaries.  This convention,
>        sometimes known as "semantic newlines", makes it easier  to  see
>        the effect of patches, which often operate at the level of indi=E2=
=80=90
>        vidual sentences, clauses, or phrases.
>
> > +.P
> > +The following value may be bitwise ORed in
> > +.I mode
>
> Please use .mode instead of mode.  That makes it more obvious that we're
> talking about a struct member.  I know most pages don't do this, but I'm
> planning a global change for consistency soon; since this page is new,
> we can start clean and do it as
>
>         .I .mode
>
> This is done in a few cases already in fanotify(7), for example.
>
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
> > +When specified, the holes will be accounted as successfully
> > +moved memory. This is mostly useful to move hugepage aligned
> > +virtual regions without knowing if there are transparent
> > +hugepages in the regions or not, but preventing the risk of
> > +having to split the hugepage during the operation.
>
> Please use semantic newlines.  In this case, I'd break:
>
> -  after ','
> -  after '.'
> -  after 'useful'
> -  before 'without'
> -  after ','
> -  after 'of'
>
> > +.P
> > +The
> > +.I move
> > +field is used by the kernel to return the number of bytes
> > +that was actually moved, or an error (a negated
>
> I'd break:
>
> -  after 'kernel'
> -  after ','
> -  before '('
>
> > +.IR errno -style
> > +value). The
>
> Always break after '.'
>
> See also: <https://web.archive.org/web/20171217060354/http://www.heraclit=
eanriver.com/?p=3D324>
>
> > +.I move
> > +field is output-only;
> > +it is not read by the
> > +.B UFFDIO_MOVE
> > +operation.
> > +.P
> > +The operation may fail for various reasons. Usually, remapping of
> > +pages that are not exclusive to the given process fail; once KSM
> > +might deduplicate pages or fork() COW-shares pages during fork()
> > +with child processes, they are no longer exclusive. Further, the
> > +kernel might only perform lightweight checks for detecting whether
> > +the pages are exclusive, and return -EBUSY in case that check fails.
> > +To make the operation more likely to succeed, KSM should be
> > +disabled, fork() should be avoided or MADV_DONTFORK should be
> > +configured for the source VMA before fork().
>
> Please use semantic newlines.
>
> Also, a few things like EBUSY and MADV_DONTFORK should be marked up.
>
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
> > +.I move
> > +field)
> > +does not equal the value that was specified in the
> > +.I len
> > +field.
> > +.TP
> > +.B EINVAL
> > +Either
> > +.I dst
> > +or
> > +.I len
> > +was not a multiple of the system page size, or the range specified by
> > +.I src
> > +and
> > +.I len
> > +or
> > +.I dst
> > +and
> > +.I len
> > +was invalid.
> > +.TP
> > +.B EINVAL
> > +An invalid bit was specified in the
> > +.I mode
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
> > +pinned or not exclusive to the process. The kernel might
> > +only perform lightweight checks for detecting whether the
> > +pages are exclusive. To make the operation more likely to
> > +succeed, KSM should be disabled, fork() should be avoided
> > +or MADV_DONTFORK should be configured for the source virtual
> > +memory area before fork().
>
> Semantic newlines.
>
> This paragraph is repeating part of the information from the last
> paragraph in the DESCRIPTION.  Do we want to de-duplicate somehow?
>
> > +.TP
> > +.BR ENOMEM
> > +Allocating memory needed for the operation failed.
> > +.TP
> > +.BR ESRCH
> > +The target process has exited at the time of a UFFDIO_MOVE
>
> UFFDIO_MOVE should be bold.
>
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

