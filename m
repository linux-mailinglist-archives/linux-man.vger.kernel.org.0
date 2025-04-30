Return-Path: <linux-man+bounces-2826-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CE7AA58A3
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 01:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D83114C63A7
	for <lists+linux-man@lfdr.de>; Wed, 30 Apr 2025 23:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A29225A59;
	Wed, 30 Apr 2025 23:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ldfiPO2P"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC1AF34545
	for <linux-man@vger.kernel.org>; Wed, 30 Apr 2025 23:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746055401; cv=none; b=HFVkJaGWgPl1fEp6sUSCDiZ5OxwmAgva2LsgBltXx1dkEsTLboawDCt1jQZtdJxncg+PWv0CJ+cpeEw5SDswyioLQzegQ6VkUueF12QqSCSUqt78nlTruNU792Uqr5eFefxvq7g1nl/9MJapB59s1dX13Ndlwc28yUVtvkxF9wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746055401; c=relaxed/simple;
	bh=9ULNDcGsgsddR/Fl88uQK6B9EiCawZt5raL4QtKygpw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m4sW9PkP8NzLkrdXQ8RM4OiIbZ+72c8DhDHc3dZoz8YdVZGvZh05icSgSRlbMz/lqPKIn75FYveeNGLVweEr0Vt8+1/4w0BNXxnyEf3G7MimmodPhRLzyaBAACQ5B588/6f9yKDEpkKQ+3HEeqRIYVCioQyFKIhaiRdIdtnx6WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ldfiPO2P; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-47e9fea29easo12141cf.1
        for <linux-man@vger.kernel.org>; Wed, 30 Apr 2025 16:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746055396; x=1746660196; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VdVBwgwW5oktAa2ftegT4moTl73OKXeflA2LjVwuEQU=;
        b=ldfiPO2POBx8penmZ7ZbFgaG06k8uemDzQ/akbmnSYxfMGmxYb9TBUm9TF93N5Kg1F
         I8+bCxo+Tk1eouFY8xOoXUoNbwNgfLpFtMYHhBNnoOrZt36EBe32BXiRUV4TN8Lmbbdv
         DrWSgtoQWNmaMhDKrMnr9TwIDpcNcBRFDHgINisCVHWEeoab0wHS8w0SivadV4Wr6o9A
         rb8LMP93dJtLJh2IpuGnCQZGu4fZxztiKSy1O+UK8OVcaEoeGQExSOTFGpFSniIIKsHF
         cRw3zD7/8bXeq7Z/sDB0J0pnd4nl1VqecmILPVbvnb9CldYir1jloCOqoU4EcDUI44R9
         KwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746055396; x=1746660196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VdVBwgwW5oktAa2ftegT4moTl73OKXeflA2LjVwuEQU=;
        b=pVHwLKTyYcwVYiuJ7CNKzWFlAqEoNWGtFMuJnvDVLkiWW3xyMh3h2Io1HkJGLgQp7P
         oFy5Ctmr8d6txRCZ5eVhsOz3GD4gXLmNUdTTfevMxaBy+ZNs402VG+CnVUm+hS51OtfG
         hUoP9sFNcd9uxyLLLefOwDMFpj31l/ocXJ6WvvD738UEaLB81bdXfDVvgABj+Dved+aY
         GoJ/dIzMB1Lf/WZGOYITtC8NQKDhSwXdDDyv2zH2iCzwyy2rggW+ycwX6c5xgo7dtfuu
         ybqK62djDwcRdn7iIPltCgMZWrrBLMH5jfcaWcfov9VgmdHgPL629c9fpYv3RfSFt5nj
         n6rg==
X-Forwarded-Encrypted: i=1; AJvYcCWfF8/vvIEtPxM5fA6LqC4M10+7kRLQNBY4cKg8q+tA7GntT9/CzBUUFFJPj8jCmGkX5bf73mlu8eI=@vger.kernel.org
X-Gm-Message-State: AOJu0YztJS21qJI/JHv99xAArXmqghLzotNK2/r+Akiz9SdQx/V0pEuE
	80CyJRy9JGIS+n5+0qZkhew2PL2fUUfPPyjZotplcvYDfyDWLHYkrcQggi3FLnmGhP+MEJrKKYl
	tphyqbguDefgdwn3ipy8ft9dIMVqDlGgKzwk0
X-Gm-Gg: ASbGncuShT2dnWfmjm6uHCWxEfzxBPA5ElOKj4F0gNlw5alFiHoWfz6r647NT0t4I5d
	MFz1j0EVkvNugrDkzDRlalbiCPMD40ldTV6Xtb84xQDdgPV4EkMhAfC4rAobZxLCOjOnW7DFMJG
	p4oOuDEHFDzNtCazNbhkDMVn9KJlw9zd0=
X-Google-Smtp-Source: AGHT+IFjY3N+1YwWIIZOCvAgrW4alUjmZDYRgOhxiD8v6HqkUZc1GP7gdbLeofm4FNtvmt4ZB8BIbj4qAlxnLHLh3t8=
X-Received: by 2002:ac8:5d4f:0:b0:467:84a1:df08 with SMTP id
 d75a77b69052e-48b0dfdc48bmr697091cf.23.1746055396056; Wed, 30 Apr 2025
 16:23:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423195309.2841410-1-surenb@google.com> <CAJuCfpFOmbAeM8AkV2VmvPkzkxsUE7L1CgvrY69=JMV4CmypbA@mail.gmail.com>
 <6kaeipedoa6vo4apmz7hb7cgozpl66w4f3z7sexunhqhsu3oda@von5awqj35if>
In-Reply-To: <6kaeipedoa6vo4apmz7hb7cgozpl66w4f3z7sexunhqhsu3oda@von5awqj35if>
From: Suren Baghdasaryan <surenb@google.com>
Date: Wed, 30 Apr 2025 16:23:05 -0700
X-Gm-Features: ATxdqUE5JKSTcFOL1sgGLJGQ5I25C4U8KveGvMiTHbxBMJtoUz_L_xegFBTOZJo
Message-ID: <CAJuCfpE5xcD81cvY+g0v6EB69dvdTTL_1JQHZH3oU=9YF8Tj2Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
To: Alejandro Colomar <alx@kernel.org>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 30, 2025 at 4:10=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Suren,
>
> On Wed, Apr 30, 2025 at 03:59:42PM -0700, Suren Baghdasaryan wrote:
> > On Wed, Apr 23, 2025 at 12:53=E2=80=AFPM Suren Baghdasaryan <surenb@goo=
gle.com> wrote:
> > >
> > > Documentation was extracted from the original patch written by Andrea
> > > Arcangeli and upstreamed in [1]. Minor edits were made to maintain
> > > the same documentation style as other userfaultfd ioctl commands.
> > >
> > > [1] <https://lore.kernel.org/all/20231206103702.3873743-3-surenb@goog=
le.com/>
> > >
> > > Signed-off-by: Suren Baghdasaryan <surenb@google.com>
> > > ---
> > > Changes since v1[1]
> > > - removed '\" t, per Alejandro Colomar
> > > - reformated sentences to use semantic newlines, per Alejandro Coloma=
r
> > > - changed field names to use '.' prefix, per Alejandro Colomar
> > > - changed EBUSY, UFFDIO_MOVE and MADV_DONTFORK to be bold,
> > > per Alejandro Colomar
> > > - folded duplicate information into EBUSY error description,
> > > per Alejandro Colomar
> >
> > Hi Alex,
> > Haven't seen any feedback on this version so far. Is it ok to be
> > accepted or should I change anything else?
> > Thanks,
> > Suren.
>
> Sorry; I was traveling back to Spain the last few days.  I'll have a
> look at it tomorrow.  I had a quick look these days, and it looked good,
> but I'll confirm.  Thanks!

Sure, no rush. Thanks!

>
>
> Have a lovely night!
> Alex
>
> >
> > >
> > > [1] https://lore.kernel.org/all/20250423011203.2559210-1-surenb@googl=
e.com/
> > >
> > >  man/man2/ioctl_userfaultfd.2     |   2 +
> > >  man/man2const/UFFDIO_MOVE.2const | 153 +++++++++++++++++++++++++++++=
++
> > >  2 files changed, 155 insertions(+)
> > >  create mode 100644 man/man2const/UFFDIO_MOVE.2const
> > >
> > > diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultf=
d.2
> > > index 3cb1b8305..5ec08ca55 100644
> > > --- a/man/man2/ioctl_userfaultfd.2
> > > +++ b/man/man2/ioctl_userfaultfd.2
> > > @@ -69,6 +69,8 @@ events.
> > >  .TQ
> > >  .BR UFFDIO_COPY (2const)
> > >  .TQ
> > > +.BR UFFDIO_MOVE (2const)
> > > +.TQ
> > >  .BR UFFDIO_ZEROPAGE (2const)
> > >  .TQ
> > >  .BR UFFDIO_WAKE (2const)
> > > diff --git a/man/man2const/UFFDIO_MOVE.2const b/man/man2const/UFFDIO_=
MOVE.2const
> > > new file mode 100644
> > > index 000000000..77b0ca781
> > > --- /dev/null
> > > +++ b/man/man2const/UFFDIO_MOVE.2const
> > > @@ -0,0 +1,153 @@
> > > +.\" Written by Andrea Arcangeli <aarcange@redhat.com>
> > > +.\"
> > > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > > +.\"
> > > +.TH UFFDIO_MOVE 2const (date) "Linux man-pages (unreleased)"
> > > +.SH NAME
> > > +UFFDIO_MOVE
> > > +\-
> > > +atomically move a continuous memory chunk into the userfault registe=
red range
> > > +.SH LIBRARY
> > > +Standard C library
> > > +.RI ( libc ,\~ \-lc )
> > > +.SH SYNOPSIS
> > > +.nf
> > > +.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " c=
onstants */"
> > > +.B #include <sys/ioctl.h>
> > > +.P
> > > +.BI "int ioctl(int " fd ", UFFDIO_MOVE, struct uffdio_move *" argp )=
;
> > > +.P
> > > +.B #include <linux/userfaultfd.h>
> > > +.P
> > > +.fi
> > > +.EX
> > > +.B struct uffdio_move {
> > > +.BR "    __u64  dst;" "   /* Destination of move */"
> > > +.BR "    __u64  src;" "   /* Source of move */"
> > > +.BR "    __u64  len;" "   /* Number of bytes to move */"
> > > +.BR "    __u64  mode;" "  /* Flags controlling behavior of move */"
> > > +.BR "    __s64  move;" "  /* Number of bytes moved, or negated error=
 */"
> > > +.B };
> > > +.EE
> > > +.SH DESCRIPTION
> > > +Atomically move a continuous memory chunk
> > > +into the userfault registered range
> > > +and optionally wake up the blocked thread.
> > > +.P
> > > +The following value may be bitwise ORed in
> > > +.I .mode
> > > +to change the behavior of the
> > > +.B UFFDIO_MOVE
> > > +operation:
> > > +.TP
> > > +.B UFFDIO_MOVE_MODE_DONTWAKE
> > > +Do not wake up the thread that waits for page-fault resolution
> > > +.TP
> > > +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> > > +Allow holes in the source virtual range that is being moved.
> > > +When not specified, the holes will result in
> > > +.B ENOENT
> > > +error.
> > > +When specified,
> > > +the holes will be accounted as successfully moved memory.
> > > +This is mostly useful
> > > +to move hugepage aligned virtual regions
> > > +without knowing if there are transparent hugepages in the regions or=
 not,
> > > +but preventing the risk of
> > > +having to split the hugepage during the operation.
> > > +.P
> > > +The
> > > +.I .move
> > > +field is used by the kernel
> > > +to return the number of bytes that was actually moved,
> > > +or an error
> > > +(a negated
> > > +.IR errno -style
> > > +value).
> > > +The
> > > +.I .move
> > > +field is output-only;
> > > +it is not read by the
> > > +.B UFFDIO_MOVE
> > > +operation.
> > > +.SH RETURN VALUE
> > > +On success,
> > > +0 is returned.
> > > +In this case, the entire area was moved.
> > > +.P
> > > +On error, \-1 is returned and
> > > +.I errno
> > > +is set to indicate the error.
> > > +.SH ERRORS
> > > +.TP
> > > +.B EAGAIN
> > > +The number of bytes moved (i.e., the value returned in the
> > > +.I .move
> > > +field)
> > > +does not equal the value that was specified in the
> > > +.I .len
> > > +field.
> > > +.TP
> > > +.B EINVAL
> > > +Either
> > > +.I .dst
> > > +or
> > > +.I .len
> > > +was not a multiple of the system page size, or the range specified b=
y
> > > +.I .src
> > > +and
> > > +.I .len
> > > +or
> > > +.I .dst
> > > +and
> > > +.I .len
> > > +was invalid.
> > > +.TP
> > > +.B EINVAL
> > > +An invalid bit was specified in the
> > > +.I .mode
> > > +field.
> > > +.TP
> > > +.BR ENOENT
> > > +The source virtual memory range has unmapped holes and
> > > +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> > > +is not set.
> > > +.TP
> > > +.BR EEXIST
> > > +The destination virtual memory range is fully or partially
> > > +mapped.
> > > +.TP
> > > +.BR EBUSY
> > > +The pages in the source virtual memory range are either
> > > +pinned or not exclusive to the process.
> > > +Once KSM deduplicates pages
> > > +or fork() COW-shares pages during fork() with child processes,
> > > +they are no longer exclusive.
> > > +The kernel might only perform lightweight checks
> > > +for detecting whether the pages are exclusive.
> > > +To make the operation more likely to succeed,
> > > +KSM should be disabled,
> > > +fork() should be avoided
> > > +or
> > > +.B MADV_DONTFORK
> > > +should be configured
> > > +for the source virtual memory area
> > > +before fork().
> > > +.TP
> > > +.BR ENOMEM
> > > +Allocating memory needed for the operation failed.
> > > +.TP
> > > +.BR ESRCH
> > > +The target process has exited at the time of a
> > > +.B UFFDIO_MOVE
> > > +operation.
> > > +.SH STANDARDS
> > > +Linux.
> > > +.SH HISTORY
> > > +Linux 6.8.
> > > +.SH SEE ALSO
> > > +.BR ioctl (2),
> > > +.BR ioctl_userfaultfd (2),
> > > +.BR userfaultfd (2)
> > > +.P
> > > +.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst
> > >
> > > base-commit: 80e2715270fc05d5627c26f88e4c1ba8b093f510
> > > --
> > > 2.49.0.805.g082f7c87e0-goog
> > >
> >
>
> --
> <https://www.alejandro-colomar.es/>

