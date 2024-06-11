Return-Path: <linux-man+bounces-1071-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 79243902DAC
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 02:29:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC718B21043
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 00:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8836EBE;
	Tue, 11 Jun 2024 00:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="elq2e7uG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4C88BF3
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 00:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718065752; cv=none; b=Kz99kV5sQ1HDVb/JvF8hrN09nP97nlqJj3Q4DFWjPPjT7Kks5vuAsNc83rQg+nM7weh+7AlY/jQ3MAKcSeK+v3Uc/1wGdpuP1/9HL9RDNzQg1qWY0SZBbkWfuYj0Lomia0li6PQCjppU6nWynpOy21/TeDjliVpCTzkPPl0vsLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718065752; c=relaxed/simple;
	bh=fvL3ja9bQEoinepc3wn42hVBZ8DIwhbUvn9JM7AKAFQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cY6aU1UPxaPZQ0OogpdAwKW6/fdBs2F39U37q4VOXSEIUv7bRX50hZWjoLQS0jPhPjG6Y+vom9HHeblbi4WVr9LkdaVpFHGgnI3wvwrmvnkNFAtPsdsiTMSBcHPDrVHPzVlPRW0UeC1ZbB6VwAEHmVaAsFPjttI3KA5haxoKdhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=elq2e7uG; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1f65a3abd01so3866875ad.3
        for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 17:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718065750; x=1718670550; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XLsh3NprccQQb6+Oh0IvVDbZS7rTvNcIOL921q8Esvo=;
        b=elq2e7uGr6REzPWYYGFq9vRgY0Hc81NoT2GdpMt16SoDvdzBTx4CHi+Eb/2Hx9rLHt
         vvOllDuahcurycRYC+5h8tri2bkprHnS36YEF3bf6u+HsdkYoCF+k5aOfLNuf+DERoto
         GkS7Egz1Ehcm6hWE8PqQqulouu5BqnEuFp0Qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718065750; x=1718670550;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLsh3NprccQQb6+Oh0IvVDbZS7rTvNcIOL921q8Esvo=;
        b=f44kN3ExAFP64VqQpy+0ar1wiqWwYUzxxC58ByWNYkDm5hlFi48S6DJ7h/KGxLtz4f
         JoccecU8Fvkk6i4HBoJjOCj6OEfc6fLMPX9DgxlwTP9UDxdVw+L6iUKhj0JCPRYiCWmb
         10aEmt52tu/+0xlZ1q3U3LvQ9Ash++3Gr1/Kqhhv9rwKgxifPjELLe6p83UVNjIXie3W
         eSnPr0e2rNIHEDMGIpEzfI6Cuyk6/tIv94h32mAdiTp7PHDI7qUWu0QfXirSyRg7TJUm
         lQMo9tZlkW984yBNQPVDWBBj9l8047DCJKIh3f1Uc83ss5xshi/7F1iZnkBW6Xy52dI6
         y81w==
X-Gm-Message-State: AOJu0Yz53ddoJLuyDZcIUhNdkARQGpP93fiGREFHEi3cwva7Hl3aqIEW
	anuwpmYg+Nr+csaw7miZ+4DIGV1jtgbgBM+WrAR3Jzq07QvJYy83T+41vQJpcR4=
X-Google-Smtp-Source: AGHT+IEviU0173aS24LU7YRkATc0xKKdanPBBZ2FXCbAzT/VqgSHSFDAhE4Www55bTd2t55XhSu2Mw==
X-Received: by 2002:a17:902:e5c1:b0:1f6:9390:550c with SMTP id d9443c01a7336-1f6d02f418dmr150803005ad.29.1718065749409;
        Mon, 10 Jun 2024 17:29:09 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f71ac91930sm19660065ad.47.2024.06.10.17.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 17:29:09 -0700 (PDT)
Date: Mon, 10 Jun 2024 17:29:06 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>

On Tue, Jun 11, 2024 at 01:45:57AM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Mon, Jun 10, 2024 at 11:12:06PM GMT, Joe Damato wrote:
> > A new page is added which describes epoll fd ioctls: EPIOCSPARAMS and
> > EPIOCGPARAMS which allow the user to control epoll-based busy polling.
> > 
> > Also add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
> > 
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> 
> Thanks!

Thanks again for your careful review. Sorry this wasn't the winning
revision :)

I made almost all of the changes you mentioned, with several more questions
listed below (sorry).

Thanks for your patience on these reviews and all the very helpful
feedback.

> > ---
> >  man/man2/epoll_create.2           |   1 +
> >  man/man2/epoll_ctl.2              |   1 +
> >  man/man2/ioctl.2                  |   1 +
> >  man/man2/ioctl_epoll.2            | 171 ++++++++++++++++++++++++++++++
> 
> I'm working on a general refactor of all ioctl manual pages, and I'm
> making the pages have a name consistent with the UAPI header that
> provides them.  You can see the progress here:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=ioctl>
> 
> For consistency, please rename the page as ioctl_eventpoll(2).

OK I've renamed it to

man/man2/ioctl_eventpoll.2

> >  man/man2const/EPIOCGPARAMS.2const |   1 +
> >  man/man2const/EPIOCSPARAMS.2const |   1 +
> >  man/man7/epoll.7                  |   1 +
> >  7 files changed, 177 insertions(+)
> >  create mode 100644 man/man2/ioctl_epoll.2
> >  create mode 100644 man/man2const/EPIOCGPARAMS.2const
> >  create mode 100644 man/man2const/EPIOCSPARAMS.2const
> > 
> > diff --git a/man/man2/epoll_create.2 b/man/man2/epoll_create.2
> > index f0327e8ba..2aa1745f5 100644
> > --- a/man/man2/epoll_create.2
> > +++ b/man/man2/epoll_create.2
> > @@ -141,4 +141,5 @@ on overrun.
> >  .BR close (2),
> >  .BR epoll_ctl (2),
> >  .BR epoll_wait (2),
> > +.BR ioctl_epoll (2),
> >  .BR epoll (7)
> > diff --git a/man/man2/epoll_ctl.2 b/man/man2/epoll_ctl.2
> > index 6d5bc032e..24bbe7405 100644
> > --- a/man/man2/epoll_ctl.2
> > +++ b/man/man2/epoll_ctl.2
> > @@ -425,5 +425,6 @@ flag.
> >  .SH SEE ALSO
> >  .BR epoll_create (2),
> >  .BR epoll_wait (2),
> > +.BR ioctl_epoll (2),
> >  .BR poll (2),
> >  .BR epoll (7)
> > diff --git a/man/man2/ioctl.2 b/man/man2/ioctl.2
> > index 5b8c28a9c..d96777d1f 100644
> > --- a/man/man2/ioctl.2
> > +++ b/man/man2/ioctl.2
> > @@ -225,6 +225,7 @@ for the various architectures.
> >  .BR ioctl_ns (2),
> >  .BR ioctl_tty (2),
> >  .BR ioctl_userfaultfd (2),
> > +.BR ioctl_epoll (2),
> >  .BR open (2),
> >  .\" .BR mt (4),
> >  .BR sd (4),
> > diff --git a/man/man2/ioctl_epoll.2 b/man/man2/ioctl_epoll.2
> > new file mode 100644
> > index 000000000..458e72e9a
> > --- /dev/null
> > +++ b/man/man2/ioctl_epoll.2
> > @@ -0,0 +1,171 @@
> > +.\" Copyright (c) 2024, Joe Damato
> 
> Please reformat as:
> 
> .\" Copyright 2024, Joe Damato <jdamato@fastly.com>
> 
> (or another email if you want, but that's the format I'm trying to use
> consistently.)
> 
> > +.\" Written by Joe Damato <jdamato@fastly.com>
> 
> You can remove this line.

Fixed both of the above, thanks!

> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH ioctl_epoll 2 (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +ioctl_epoll \- ioctl() operations for epoll file descriptors
> 
> Please reformat as:
> 
> ioctl_eventpoll,
> EPIOCSPARAMS,
> EPIOCGPARAMS
> \-
> ioctl() operations for epoll file descriptors
> 
> (which has '\-' on a line of its own, and has the individual ops
> listed.)

OK, fixed, thanks!
 
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ", " \-lc )
> > +.SH SYNOPSIS
> > +.EX
> > +.BR "#include <linux/eventpoll.h>" "  /* Definition of " EPIOC* " constants and struct epoll_params */"
> 
> Remove ' and struct ...' from that comment.  We only have constants in
> those comments (except in a few pages, where I'm fixing it at the
> moment).

Fixed, thanks!

> > +.B "#include <sys/ioctl.h>"
> > +.P
> > +.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
> > +.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> 
> To document the header that provides this structure, let's add here:
> 
> .P
> .B #include <linux/eventpoll.h>

Hmm, that's the linux sources header file, I think.

Should I be showing the glibc header instead?

https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/sys/epoll.h;h=45e546fa4440a83bb94288c220bfbe9295f02cc9;hb=92c270d32caf3f8d5a02b8e46c7ec5d9d0315158#l91

Which would be:

.B #include <sys/epoll.h>

It's in the same header as epoll_create(2) and
epoll_create1(2).

Let me know what you think.

> > +.P
> > +.B struct epoll_params {
> > +.BR "    uint32_t busy_poll_usecs;" "  /* Number of usecs to busy poll */"
> > +.BR "    uint16_t busy_poll_budget;" " /* Maximum number of packets to retrieve per poll */"
> > +.BR "    uint8_t prefer_busy_poll;" "  /* Boolean to enable or disable prefer busy poll  */"
> > +\&
> > +.BR " " "   /* pad the struct to a multiple of 64bits */"
> > +.BR "    uint8_t __pad;"            "  /* Must be zero */"
> > +.B };
> > +.EE
> > +.SH DESCRIPTION
> > +.TP
> > +.B EPIOCSPARAMS
> > +Set the
> > +.I epoll_params
> > +structure to configure the operation of epoll. Refer to the structure
> 
> Please use semantic newlines.  See man-pages(7):
> 
> $ MANWIDTH=72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>      In the source of a manual page, new sentences should be started on
>      new lines, long sentences should be split  into  lines  at  clause
>      breaks  (commas,  semicolons, colons, and so on), and long clauses
>      should be split at phrase boundaries.  This convention,  sometimes
>      known as "semantic newlines", makes it easier to see the effect of
>      patches, which often operate at the level of individual sentences,
>      clauses, or phrases.

OK, I've tried to fix this up just now throughout the file, thanks
for letting me know. I hope I've gotten them all!
 
> > +description below to learn what configuration is
> > +supported.
> > +.TP
> > +.B EPIOCGPARAMS
> > +Get the current
> > +.I epoll_params
> > +configuration settings.
> > +.TP

I think this .TP should be a .P, not a .TP. It looks better as a .P,
at least :)

Let me know what you think.

> > +All
> > +.BR ioctl (2)
> 
> We can omit 'ioctl(2)' here, since it's obvious from the context, I
> think.  How about 'All operations documented ...'?

Sure, fixed!

> > +operations documented above must be performed on an epoll file descriptor,
> > +which can be created with a call to
> 
> s/created/obtained/?

Sure, fixed!

> > +.BR epoll_create (2)
> > +or
> > +.BR epoll_create1 (2).
> > +.\" kernel commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> 
> Let's reformat these:
> 
> .\" linux.git 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> .\" glibc.git 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> 
> (maybe say linux.git commit 1234...?  What do you prefer?)

I've made them:

.\" linux.git commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
.\" glibc.git commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158

> > +.\" glibc commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> > +.P
> 
> I would use a subsection (.SS) for documenting the structure.

Sure, I can do that.

.SS
The epoll_params structure
.I argp.busy_poll_usecs

Is that OK for a heading?

I saw this is how man/man2/stat.2 does the subsection.

Let me know what you think.

> > +.I argp.busy_poll_usecs
> > +field denotes the number of microseconds that the network stack will busy
> 
> s/field //?

Removed, thanks!

> > +poll. During this time period, the network device will be polled
> > +repeatedly for packets. This value cannot exceed
> > +.B INT_MAX.
> > +.in
> > +.P
> > +.I argp.busy_poll_budget
> > +field denotes the maximum number of packets that the network stack will
> 
> s/field //?

Removed, thanks!

> > +retrieve on each poll attempt. This value cannot exceed
> > +.B NAPI_POLL_WEIGHT
> > +which, as of Linux 6.9, is 64, unless the process is run with
> > +.B CAP_NET_ADMIN.
> 
> This seems a bit ambiguous: 'unless the process is run with
> CAP_NET_ADMIN' could refer to 'cannot exceed' or 'is 64'.  Using
> parentheses instead of commas, it would be unambiguous.

Changed this to:

retrieve on each poll attempt. This value cannot exceed
.B NAPI_POLL_WEIGHT
(which is 64 as of Linux 6.9), unless the process is run with
.B CAP_NET_ADMIN.

How is that?

> > +.P
> > +.I argp.prefer_busy_poll
> > +field is a boolean field and must be either 0 (disabled) or 1 (enabled). If
> 
> s/field is/is/?

Thanks, fixed!

> > +enabled, this indicates to the network stack that busy poll is the
> > +preferred method of processing network data and the network stack should
> > +give the application the opportunity to busy poll. Without this option,
> > +very busy systems may continue to do network processing via the normal
> > +method of IRQs triggering softIRQ and NAPI.
> > +.P
> > +.I argp.__pad
> > +must be zero.
> > +.P
> 
> .P is redundant right before .SH

Removed, thanks!

> > +.SH RETURN VALUE
> > +On success, 0 is returned.
> > +On failure, \-1 is returned, and
> > +.I errno
> > +is set to indicate the error.
> > +.SH ERRORS
> > +.TP
> > +.B EOPNOTSUPP
> > +The kernel was not compiled with busy poll support.

This line here has a weird indentation compared to the rest of the
errors when rendered.

Maybe I am doing something wrong with this one?

> > +.TP
> > +.B EINVAL
> > +.I fd
> > +is not a valid file descriptor.
> > +.TP
> > +.B EINVAL
> > +.I op
> > +specified is invalid.
> 
> Let's not document this one, since it's already documented in ioctl(2).

OK, removed.

> > +.TP
> > +.B EINVAL
> > +.I argp.__pad
> > +was not zero.
> > +.TP
> > +.B EINVAL
> > +.I argp.busy_poll_usecs
> > +exceeds
> 
> There's a bit of an inconsistency: the previous entry uses the past
> tense, but this one uses the present.  I prefer to use the present in
> both.  See also the next one.

Fixed tense to be present tense.

> > +.B INT_MAX .
> > +.TP
> > +.B EINVAL
> > +.I argp.prefer_busy_poll
> > +is not 0 or 1.
> > +.TP
> > +.B EPERM
> > +The process is being run without
> > +.I CAP_NET_ADMIN
> > +and the specified
> > +.I argp.busy_poll_budget
> > +exceeds
> > +.B NAPI_POLL_WEIGHT
> > +(which is 64 as of Linux 6.9).
> 
> I prefer to not repeat the 64 here.

OK removed that line.

> > +.TP
> > +.B EFAULT
> > +.I argp
> > +does not point to a valid memory address.
> > +.SH EXAMPLES
> > +.EX
> > +/* Code to set the epoll params to enable busy polling */
> > +\&
> > +int epollfd = epoll_create1(0);
> > +struct epoll_params params;
> > +\&
> > +if (epollfd == \-1) {
> > +    perror("epoll_create1");
> > +    exit(EXIT_FAILURE);
> > +}
> > +\&
> > +memset(&params, 0, sizeof(struct epoll_params));
> > +\&
> > +params.busy_poll_usecs = 25;
> > +params.busy_poll_budget = 8;
> > +params.prefer_busy_poll = 1;
> > +\&
> > +if (ioctl(epollfd, EPIOCSPARAMS, &params) == \-1) {
> > +    perror("ioctl");
> > +    exit(EXIT_FAILURE);
> > +}
> > +\&
> > +/* Code to show how to retrieve the current settings */
> > +\&
> > +memset(&params, 0, sizeof(struct epoll_params));
> > +\&
> > +if (ioctl(epollfd, EPIOCGPARAMS, &params) == \-1) {
> > +    perror("ioctl");
> > +    exit(EXIT_FAILURE);
> > +}
> > +\&
> > +/* params struct now contains the current parameters */
> > +\&
> > +fprintf(stderr, "epoll usecs: %lu\\n", params.busy_poll_usecs);
> 
> We use '\e', not '\\'.  (I haven't checked whether it also works, and
> don't remember.)

Change this to '\e' and tested it. It looks like it works to me :)

> > +fprintf(stderr, "epoll packet budget: %u\\n", params.busy_poll_budget);
> > +fprintf(stderr, "epoll prefer busy poll: %u\\n", params.prefer_busy_poll);
> > +\&
> > +.SH History
> > +Linux 6.9, glibc 2.40.
> 
> Let's reformat this as:
> 
> Linux 6.9.
> glibc 2.40.

Fixed.
 
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR epoll_create (2),
> > +.BR epoll_create1 (2),
> > +.BR epoll (7)
> > +.P
> > +.I linux.git/Documentation/networking/napi.rst
> > +.P
> > +and
> > +.P
> 
> I think we can remove the 'and'.

Removed, thanks!

> > +.I linux.git/Documentation/admin-guide/sysctl/net.rst
> > diff --git a/man/man2const/EPIOCGPARAMS.2const b/man/man2const/EPIOCGPARAMS.2const
> > new file mode 100644
> > index 000000000..6fbc5f0f8
> > --- /dev/null
> > +++ b/man/man2const/EPIOCGPARAMS.2const
> > @@ -0,0 +1 @@
> > +.so man2/ioctl_epoll.2
> > diff --git a/man/man2const/EPIOCSPARAMS.2const b/man/man2const/EPIOCSPARAMS.2const
> > new file mode 100644
> > index 000000000..6fbc5f0f8
> > --- /dev/null
> > +++ b/man/man2const/EPIOCSPARAMS.2const
> > @@ -0,0 +1 @@
> > +.so man2/ioctl_epoll.2
> > diff --git a/man/man7/epoll.7 b/man/man7/epoll.7
> > index e7892922e..4ad032bdd 100644
> > --- a/man/man7/epoll.7
> > +++ b/man/man7/epoll.7
> > @@ -606,5 +606,6 @@ is present in an epoll instance.
> >  .BR epoll_create1 (2),
> >  .BR epoll_ctl (2),
> >  .BR epoll_wait (2),
> > +.BR ioctl_epoll (2),
> >  .BR poll (2),
> >  .BR select (2)
> > -- 
> > 2.34.1
> 
> Have a lovely night!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>



