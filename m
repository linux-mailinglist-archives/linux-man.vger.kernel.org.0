Return-Path: <linux-man+bounces-1132-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D9B9045C1
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 22:30:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A8678B22B35
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 20:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D0571514F0;
	Tue, 11 Jun 2024 20:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="jGMYQPvl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DA780607
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 20:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718137796; cv=none; b=UBWtIaEwtUHy9NQZvyJhzFL3Y0QG8KGJzv+0IatpUilMfJ150Hue2tV+BiX3wGU563O5uHFhT76YV4Rgz28fcu9o35moBLTSODVFhQ+T1BXU5I6qexmItRxXbJJGgCN/9fYgdhyVRTFZu5E2gPVR7miRN4vwRjhjHa3hHW32Eco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718137796; c=relaxed/simple;
	bh=mXUjGTVzFZNTXT2O209+VTTWoZ4TlVsZavavXNA++80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SSbwPq/YpEyLyvfOjf31OzXgp/2BUo22d7Q5jShRIkGOwL10Uy1TObpRs+7767A+eg5JXCb3Ws7FpwO9WgUIZb3lwX3GQ9ERblLg6vRtzY8X8zSVqecJQeKc4FooLd9DrrKYx97WPo3dIRTogojIduBAhAeHj8eZ2tko+W+SLTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=jGMYQPvl; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1f7028196f2so22411515ad.2
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 13:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718137794; x=1718742594; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gg9FEEaRP46nFoxtIG/dFVONioqAPSr3zYXCaB/YgE4=;
        b=jGMYQPvlv6mqqzZqoqPhg5riR5bZeJxN4a6Ov3hZmQ4sWpP+t92OEdOxXSO9Dgd3Cc
         9OEBVlRf1rRAnzZPaf3v1IFsI1qVFMEdRWjxH8HoChq7Rjv4y4P7uuxK5AGn6juccYok
         8/vHK/9D/LJmRLXhIudG5cq0kcuLdZoOzB4m8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718137794; x=1718742594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gg9FEEaRP46nFoxtIG/dFVONioqAPSr3zYXCaB/YgE4=;
        b=IklEHiL4soTdrtj8AR4Zn/YI6WkTHdY3aykTklzPiL0WsMEa+KNUnsiTJdcGaDrZq1
         VGPya4bOtl7CjNGWe5cPqHLgtC8NvqjlntKYjZtrS9/7Z/biRccqRvPSOKi/NVqWIJWd
         BnUQZ34vQuwRH6FKUiPun0CQ6Qb1HXXflVXO+ur4OYxnvaGL1MDbNMiSCz9kj5n1GkjN
         F/Dcg9KFg5MEwlT7uu0/TbRqfVMIBXna5gOyD3sTOrS4mMTt5oT18JzcrRoI91Baywe7
         XBY4Y9GhYPzW3ummJaIHiuHB3zfH2p3KEBEtW8/C0KsK8h34qxTWdWJ9xtY/5mtHpA7G
         NlaQ==
X-Gm-Message-State: AOJu0YzZxgKrqLYMhbjujKyJvEQw1sTOO2g3PBmpS8NpdN8yMynRWsw9
	YjjNR9t2RpghII5zRZhA7NOz7snCcCknH7KqvZE6D5aWY9qXTft0sldntnfhIPplLKahTK9qW3O
	K
X-Google-Smtp-Source: AGHT+IFDI347pYwY2LBABzPdRrLAsXrDLyErSQXrm/A2GhYBRuFF0vu1iT3NRgTCYLoJPNMmqkYocA==
X-Received: by 2002:a17:902:d2cc:b0:1f7:2849:182b with SMTP id d9443c01a7336-1f728492c2fmr42966955ad.7.1718137793544;
        Tue, 11 Jun 2024 13:29:53 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6bd7d65f2sm108619965ad.153.2024.06.11.13.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 13:29:53 -0700 (PDT)
Date: Tue, 11 Jun 2024 13:29:50 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/1] ioctl_eventpoll.2: New page describing epoll
 ioctl(2)
Message-ID: <ZmizvqOQbYkKcwME@LQ3V64L9R2>
References: <20240611191257.1790908-2-jdamato@fastly.com>
 <20240611191257.1790908-1-jdamato@fastly.com>
 <kkxoopzhhdbapv6hh6nmtyan4dqz5czdhercselzinibff3yvq@eouskurlfciv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <kkxoopzhhdbapv6hh6nmtyan4dqz5czdhercselzinibff3yvq@eouskurlfciv>

On Tue, Jun 11, 2024 at 10:07:12PM +0200, Alejandro Colomar wrote:
> Greetings Joe,
> 
> On Tue, Jun 11, 2024 at 07:12:56PM GMT, Joe Damato wrote:
> > Greetings:
> >
> > Welcome to v3.
> >
> > This revision includes several important changes:
> >   1. Renamed the file from man/man2/ioctl_epoll.2 to
> >      man/man2/ioctl_eventpoll.2.
> >   2. Attempts to use semantic newlines to shorten long lines.
> >   3. Replaces the include with <sys/epoll.h> instead of the kernel sources.
> >   4. Many style issues that Alejandro pointed out in v2.
> >   5. Using \[rs] instead of \e in the example code.
> >   6. Replace all instances of ioctl_epoll with ioctl_eventpoll
> >
> > Many thanks for Alejandro for his unending patience and attention to
> > detail.
> 
> Thank you.  :)
> 
> We'll still need a v4, but we're almost there.
> 
> > Subject: ioctl_eventpoll.2: New page describing epoll ioctl(2)
> 
> Let's make the commit subject this:
> 
> ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New page describing epoll ioctl(2)

Fixed!

> On Tue, Jun 11, 2024 at 07:12:57PM GMT, Joe Damato wrote:
> > A new page is added which describes epoll fd ioctls: EPIOCSPARAMS and
> > EPIOCGPARAMS which allow the user to control epoll-based busy polling.
> > 
> > Also add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
> > 
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > ---
> >  man/man2/epoll_create.2           |   1 +
> >  man/man2/epoll_ctl.2              |   1 +
> >  man/man2/ioctl.2                  |   1 +
> >  man/man2/ioctl_eventpoll.2        | 173 ++++++++++++++++++++++++++++++
> >  man/man2const/EPIOCGPARAMS.2const |   1 +
> >  man/man2const/EPIOCSPARAMS.2const |   1 +
> >  man/man7/epoll.7                  |   1 +
> >  7 files changed, 179 insertions(+)
> >  create mode 100644 man/man2/ioctl_eventpoll.2
> >  create mode 100644 man/man2const/EPIOCGPARAMS.2const
> >  create mode 100644 man/man2const/EPIOCSPARAMS.2const
> > 
> > diff --git a/man/man2/epoll_create.2 b/man/man2/epoll_create.2
> > index f0327e8ba..013f81b64 100644
> > --- a/man/man2/epoll_create.2
> > +++ b/man/man2/epoll_create.2
> > @@ -141,4 +141,5 @@ on overrun.
> >  .BR close (2),
> >  .BR epoll_ctl (2),
> >  .BR epoll_wait (2),
> > +.BR ioctl_eventpoll (2),
> >  .BR epoll (7)
> > diff --git a/man/man2/epoll_ctl.2 b/man/man2/epoll_ctl.2
> > index 6d5bc032e..29a6da375 100644
> > --- a/man/man2/epoll_ctl.2
> > +++ b/man/man2/epoll_ctl.2
> > @@ -425,5 +425,6 @@ flag.
> >  .SH SEE ALSO
> >  .BR epoll_create (2),
> >  .BR epoll_wait (2),
> > +.BR ioctl_eventpoll (2),
> >  .BR poll (2),
> >  .BR epoll (7)
> > diff --git a/man/man2/ioctl.2 b/man/man2/ioctl.2
> > index 5b8c28a9c..6f7725904 100644
> > --- a/man/man2/ioctl.2
> > +++ b/man/man2/ioctl.2
> > @@ -225,6 +225,7 @@ for the various architectures.
> >  .BR ioctl_ns (2),
> >  .BR ioctl_tty (2),
> >  .BR ioctl_userfaultfd (2),
> > +.BR ioctl_eventpoll (2),
> >  .BR open (2),
> >  .\" .BR mt (4),
> >  .BR sd (4),
> > diff --git a/man/man2/ioctl_eventpoll.2 b/man/man2/ioctl_eventpoll.2
> > new file mode 100644
> > index 000000000..0fe03d6d4
> > --- /dev/null
> > +++ b/man/man2/ioctl_eventpoll.2
> > @@ -0,0 +1,173 @@
> > +.\" Copyright (c) 2024, Joe Damato
> 
> 1d

My apologies, but I am not sure what you mean by this. What does 1d
mean?

> > +.\" Copyright 2024, Joe Damato <jdamato@fastly.com>
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH ioctl_eventpoll 2 (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +ioctl_eventpoll,
> > +EPIOCSPARAMS,
> > +EPIOCGPARAMS
> > +\-
> > +ioctl() operations for epoll file descriptors
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ", " \-lc )
> > +.SH SYNOPSIS
> > +.EX
> 
> This should be '.nf' instead of '.EX'.  We want most of the SYNOPSIS to
> use proportional font in PDF.  EX/EE is nf/fi + monospace.  We want it
> for the structs, but not for the rest of the SYNOPSIS.

OK I've made this .nf and added a corresponding .fi at the bottom.

> > +.BR "#include <sys/epoll.h>" "  /* Definition of " EPIOC* " constants */"
> > +.B "#include <sys/ioctl.h>"
> > +.P
> > +.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
> > +.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> > +.P
> > +.B "#include <sys/epoll.h>"
> > +.P
> 
> Here let's insert a .EX to make the structure use monospace (for
> alignment reasons).

I've inserted an .EX here as suggested.

> > +.B struct epoll_params {
> 
> When reading the page in a usual terminal, these comments go past the
> 80 column, which is not nice.  Please shorten the comments so that
> the SYNOPSIS renders nicely in a (80x24) usual terminal.
> 
> Below go some suggestions.
> 
> > +.BR "    uint32_t busy_poll_usecs;" "  /* Number of usecs to busy poll */"
> > +.BR "    uint16_t busy_poll_budget;" " /* Maximum number of packets to retrieve per poll */"
> 
> s/Maximum number of/Max/
> s/to retrieve //
> 
> > +.BR "    uint8_t prefer_busy_poll;" "  /* Boolean to enable or disable prefer busy poll  */"
> 
> I'd simplify this as
> 
> 	/* Boolean preference */

On the comment changes above, I've taken your suggestions exactly.
Thank you!

> Also, I'd like to align the member names according to
> <https://nginx.org/en/docs/dev/development_guide.html#code_style_variables>.
> That is, 2 spaces of minimum alignment, plus the necessary to make them
> all aligned (so 3 on the last).
> 
> I'd like also 2 spaces minimum before the comments, instead of just 1.

OK, based on the link you sent, I've aligned the start of each of
the types and then aligned the start of the field names. Lastly,
I've aligned the start of the comments for the first 3 fields, but
left the comment for the __pad just two spaces after the field name.

Did you want the comment for __pad to be aligned to the comments for
the in-use fields above?

This is what I have now, but I can insert space to move the pad comment over if
you like.

.EX
.B struct epoll_params {
.BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy poll */"
.BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
.BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
\&
.BR " " "/* pad the struct to a multiple of 64bits */"
.BR "  uint8_t  __pad;" "  /* Must be zero */"
.B };
.EE

> > +\&
> > +.BR " " "   /* pad the struct to a multiple of 64bits */"
> > +.BR "    uint8_t __pad;"            "  /* Must be zero */"
> > +.B };
> > +.EE
> 
> And here append .fi to close the initial .nf.
> 
> > +.SH DESCRIPTION
> > +.TP
> > +.B EPIOCSPARAMS
> > +Set the
> > +.I epoll_params
> > +structure to configure the operation of epoll.
> > +Refer to the structure description below
> > +to learn what configuration is supported.
> > +.TP
> > +.B EPIOCGPARAMS
> > +Get the current
> > +.I epoll_params
> > +configuration settings.
> > +.P
> > +All operations documented above must be performed on an epoll file descriptor,
> > +which can be obtained with a call to
> > +.BR epoll_create (2)
> > +or
> > +.BR epoll_create1 (2).
> > +.\" linux.git commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> > +.\" glibc.git commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> 
> Please move these comments to HISTORY.

Done!
 
> > +.SS The epoll_params structure
> > +.I argp.busy_poll_usecs
> > +denotes the number of microseconds that the network stack will busy poll.
> > +During this time period,
> > +the network device will be polled repeatedly for packets.
> > +This value cannot exceed
> > +.B INT_MAX.
> 
> .BR INT_MAX .

Fixed.

> > +.in
> > +.P
> > +.I argp.busy_poll_budget
> > +the maximum number of packets that the network stack will retrieve
> > +on each poll attempt.
> > +This value cannot exceed
> > +.B NAPI_POLL_WEIGHT
> > +(which is 64 as of Linux 6.9), unless the process is run with
> > +.B CAP_NET_ADMIN.
> 
> .BR CAP_NET_ADMIN .

Fixed.
 
> > +.P
> > +.I argp.prefer_busy_poll
> > +is a boolean field and
> > +must be either 0 (disabled) or 1 (enabled).
> > +If enabled,
> > +this indicates to the network stack that
> > +busy poll is the preferred method of processing network data
> > +and the network stack should give the application the opportunity to busy poll.
> > +Without this option,
> > +very busy systems may continue to do network processing
> > +via the normal method of IRQs triggering softIRQ and NAPI.
> > +.P
> > +.I argp.__pad
> > +must be zero.
> > +.SH RETURN VALUE
> > +On success, 0 is returned.
> > +On failure, \-1 is returned, and
> > +.I errno
> > +is set to indicate the error.
> > +.SH ERRORS
> > +.TP
> > +.B EOPNOTSUPP
> > +The kernel was not compiled with busy poll support.
> > +.TP
> > +.B EINVAL
> > +.I fd
> > +is not a valid file descriptor.
> > +.TP
> > +.B EINVAL
> > +.I argp.__pad
> > +is not zero.
> > +.TP
> > +.B EINVAL
> > +.I argp.busy_poll_usecs
> > +exceeds
> > +.B INT_MAX .
> 
> s/B/BR/
> 
> Mnemonics are:
> B is for Bold, and BR is for alternating Bold and Roman.

Fixed.

> > +.TP
> > +.B EINVAL
> > +.I argp.prefer_busy_poll
> > +is not 0 or 1.
> > +.TP
> > +.B EPERM
> > +The process is being run without
> > +.I CAP_NET_ADMIN
> 
> s/.I/.B/
> 
> We use B for constants or type names, and I for variable names or code.

Fixed.

> > +and the specified
> > +.I argp.busy_poll_budget
> > +exceeds
> > +.B NAPI_POLL_WEIGHT.
> 
> .BR NAPI_POLL_WEIGHT .

Fixed.
 
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
> > +fprintf(stderr, "epoll usecs: %lu\[rs]n", params.busy_poll_usecs);
> > +fprintf(stderr, "epoll packet budget: %u\[rs]n", params.busy_poll_budget);
> > +fprintf(stderr, "epoll prefer busy poll: %u\[rs]n", params.prefer_busy_poll);
> > +\&
> > +.SH History
> 
> You read my mind.  :)
> 
> While I have plans to use sentence case in section names (thus, History
> instead of HISTORY), that's still just a plan.  For now, please use
> upper case.
> 
> Also, HISTORY goes before EXAMPLES.  You can check the order of the
> sections in man-pages(7):

OK, renamed to HISTORY and moved before EXAMPLES.

> $ MANWIDTH=72 man man-pages | sed -n '/Sections within a manual page/,+29p'
>    Sections within a manual page
>      The  list  below  shows  conventional or suggested sections.  Most
>      manual pages should include at  least  the  highlighted  sections.
>      Arrange a new manual page so that sections are placed in the order
>      shown in the list.
> 
>             NAME
>             LIBRARY          [Normally only in Sections 2, 3]
>             SYNOPSIS
>             CONFIGURATION    [Normally only in Section 4]
>             DESCRIPTION
>             OPTIONS          [Normally only in Sections 1, 8]
>             EXIT STATUS      [Normally only in Sections 1, 8]
>             RETURN VALUE     [Normally only in Sections 2, 3]
>             ERRORS           [Typically only in Sections 2, 3]
>             ENVIRONMENT
>             FILES
>             ATTRIBUTES       [Normally only in Sections 2, 3]
>             VERSIONS         [Normally only in Sections 2, 3]
>             STANDARDS
>             HISTORY
>             NOTES
>             CAVEATS
>             BUGS
>             EXAMPLES
>             AUTHORS          [Discouraged]
>             REPORTING BUGS   [Not used in man-pages]
>             COPYRIGHT        [Not used in man-pages]
>             SEE ALSO
> 
> Please also add a STANDARDS section, which just says "Linux."

OK added STANDARDS (in the order above) which just says Linux:

.SH STANDARDS
.P
Linux.
.SH HISTORY

> Regarding semantic newlines, it looks great.  Thanks!

Great!

Thanks,
Joe

