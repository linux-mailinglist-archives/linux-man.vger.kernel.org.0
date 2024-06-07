Return-Path: <linux-man+bounces-1048-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 891B8900DB6
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 23:53:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0ADF4286980
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 21:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE64A15278B;
	Fri,  7 Jun 2024 21:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="SFXIFYv6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DAFA17BB7
	for <linux-man@vger.kernel.org>; Fri,  7 Jun 2024 21:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717797204; cv=none; b=WQMPf2sW5743gwnviICcsWE8FzmloetAQMZZ/YYcEz+vLLiHjuwtRPKdhtOv6cqGGe9LZaM8+CWA80Uh37SqNh+chl/AXVmeW9URCDTt3sJSuwmvvsT1Z3tf3r0vqRtBEYapBCsJDb97gtsMChFM7gVpmvRHNES0b0UoWSRiVR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717797204; c=relaxed/simple;
	bh=d27w70NDlxn7jhTJXOjsw2AnI6sIYnAgiP2e+mQ2M14=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oXu0yeNl7/9am0aRDuVTS9OaKxcXR3C79a/ypUzRkxXhMd+wC4x/nhcJZFzdscet5fwYCnMZrLoMaxKUMkN0aXw8LphOxKfDejepN+MaYEBw157X7oZXVMndRiirP/YVIHEjAN6EPnXWsQnoxzKlA6SBgyvPD4LDxKlcnePmKsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=SFXIFYv6; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7023b6d810bso2148145b3a.3
        for <linux-man@vger.kernel.org>; Fri, 07 Jun 2024 14:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1717797202; x=1718402002; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=haohzmnCCY0Ubg+7yJH/aQkwol6qYsfKh8YPluGULAo=;
        b=SFXIFYv6tvfFEJyZcYM4vaN694+D0CzxJCYtEJPR+Sn3esSdO5TGYhiUClxvFvnkfF
         Hr7H56blmdFOxo+n9HFkE0W49WQQie163MCPk3/VLdyCoIPKS/aeQGiMNB0gPAPOh0fW
         Hg/NMrE9l7V7VsxS9QnqtWTa6NfS89bh7W8jU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717797202; x=1718402002;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=haohzmnCCY0Ubg+7yJH/aQkwol6qYsfKh8YPluGULAo=;
        b=E5m0JVfHt7irWtvwglAGAX9P8ieNXx5by8EpmtWkMqfwxmshFo2JZ/xhKlXCXnKG+M
         CqXxrGjMfQZckwsExQDB2KOidD+qifgWlTqKYIDpvFhRd/44AeQQid8MHG3SjvsrN5Kn
         euNLIv+uyjRlhayrCpF7u5fdLiv8aVYPKMvUYmuU5z9x04Cc08aJcExBV6JdKh5AQmoB
         x/w12WxlT0+y/sDsAeW1TzAbAAlnmFR8WBvdfZPnTOu86D57lHGvxhI054IpiNSs2Joo
         nTpqL/Zeq8A6xEuw2k9HI1K2nddOfO6I9+5U9qnlsHf74vekzK1wt2KvhRDCwXnIUkSv
         BQAQ==
X-Gm-Message-State: AOJu0YxX6bIJ9SGkLWTlkSzkDFiry7sgnushDCHDtpoqxJ60/VVvgogk
	cM8cBv1X/HkvMI9lyhoTeJEnHxCQp/QaY3xgWB0VzfP7T0kipFViSYSE0v4slQ0=
X-Google-Smtp-Source: AGHT+IFSAmja73cq7qrr6foRj+4oJxl8OtrCSvXCeK1wlpsjG/8dIxeoAzczcBg7V0Rz0LBPtEQwTg==
X-Received: by 2002:a05:6a00:1884:b0:702:7977:2788 with SMTP id d2e1a72fcca58-7040c68aa20mr4616495b3a.15.1717797201556;
        Fri, 07 Jun 2024 14:53:21 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-703fd498a8fsm3002801b3a.109.2024.06.07.14.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jun 2024 14:53:21 -0700 (PDT)
Date: Fri, 7 Jun 2024 14:53:19 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <ZmOBT2g55AD53QYS@LQ3V64L9R2>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>

On Thu, Jun 06, 2024 at 11:46:47PM +0200, Alejandro Colomar wrote:
> On Thu, Jun 06, 2024 at 11:40:01PM GMT, Alejandro Colomar wrote:
> > Hi Joe,
> > 
> > On Tue, Jun 04, 2024 at 06:17:40PM GMT, Joe Damato wrote:
> > > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > 
> > Thanks for the patch!  Please see a few comments below.
> 
> BTW, it triggers the following warning:
> 
> $ make lint build check -j24
> GROTTY		.tmp/man/man2/epoll_create.2.cat
> GROTTY		.tmp/man/man2/epoll_ctl.2.cat
> TROFF		.tmp/man/man2/ioctl_epoll.2.cat.set
> an.tmac:.tmp/man/man2/ioctl_epoll.2:61: style: blank line in input
> make: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/catman/troff.mk:63: .tmp/man/man2/ioctl_epoll.2.cat.set] Error 1
> make: *** Deleting file '.tmp/man/man2/ioctl_epoll.2.cat.set'

Hmm..

When I run make I get an error:

$ make
TROFF		.tmp/man/man2/s390_sthyi.2.cat.set
troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot adjust line

I tried to run the lint build check target and got an error about
checkpatch:

$ make lint build check -j8
CHECKPATCH	.tmp/man/man2/fork.2.d/fork.c.lint-c.checkpatch.touch
bash: line 1: checkpatch: command not found

I have mandoc, groff, and clang-tidy installed, but maybe I'm
missing other dependency?

> > 
> > Have a lovely night!
> > Alex
> > 
> > > ---
> > >  man/man2/epoll_create.2 |   1 +
> > >  man/man2/epoll_ctl.2    |   1 +
> > >  man/man2/ioctl_epoll.2  | 203 ++++++++++++++++++++++++++++++++++++++++
> > >  man/man7/epoll.7        |   1 +
> > >  4 files changed, 206 insertions(+)
> > >  create mode 100644 man/man2/ioctl_epoll.2
> > > 
> > > diff --git a/man/man2/epoll_create.2 b/man/man2/epoll_create.2
> > > index f0327e8ba..2aa1745f5 100644
> > > --- a/man/man2/epoll_create.2
> > > +++ b/man/man2/epoll_create.2
> > > @@ -141,4 +141,5 @@ on overrun.
> > >  .BR close (2),
> > >  .BR epoll_ctl (2),
> > >  .BR epoll_wait (2),
> > > +.BR ioctl_epoll (2),
> > >  .BR epoll (7)
> > > diff --git a/man/man2/epoll_ctl.2 b/man/man2/epoll_ctl.2
> > > index 6d5bc032e..24bbe7405 100644
> > > --- a/man/man2/epoll_ctl.2
> > > +++ b/man/man2/epoll_ctl.2
> > > @@ -425,5 +425,6 @@ flag.
> > >  .SH SEE ALSO
> > >  .BR epoll_create (2),
> > >  .BR epoll_wait (2),
> > > +.BR ioctl_epoll (2),
> > >  .BR poll (2),
> > >  .BR epoll (7)
> > > diff --git a/man/man2/ioctl_epoll.2 b/man/man2/ioctl_epoll.2
> > > new file mode 100644
> > > index 000000000..1d53f458e
> > > --- /dev/null
> > > +++ b/man/man2/ioctl_epoll.2
> > > @@ -0,0 +1,203 @@
> > > +.\" Copyright (c) 2024, Joe Damato
> > > +.\" Written by Joe Damato <jdamato@fastly.com>
> > > +.\"
> > > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > > +.\"
> > > +.\"
> > 
> > Please use only one consecutive .\"
> > 
> > > +.TH ioctl_epoll 2 (date) "Linux man-pages (unreleased)"
> > > +.SH NAME
> > > +ioctl_epoll \- ioctl() operations for epoll file descriptors
> > 
> > Please add link pages <man2const/EPIOCSPARAMS.2const> and
> > <man2const/EPIOCGPARAMS.2const>.
> > 
> > > +.SH LIBRARY
> > > +Standard C library
> > > +.RI ( libc ", " \-lc )
> > > +.SH SYNOPSIS
> > > +.nf
> > > +.BR "#include <linux/eventpoll.h>" "  /* Definition of " EPIOC* " constants and struct epoll_params */"
> > > +.B "#include <sys/ioctl.h>"
> > > +.P
> > > +.BI "int ioctl(int " fd ", int " op ", void " *argp ");"
> > 
> > The '*' should be bold; not italics.
> > 
> > > +.fi
> > > +.SH DESCRIPTION
> > > +Various
> > > +.BR ioctl (2)
> > > +operations can be performed on an epoll file descriptor (created by a call
> > > +to
> > > +.BR epoll_create (2))
> > > +(since Linux 6.9 and glibc 2.40) using calls of the form:
> > > +.\" commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> > > +.\" glibc commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> > > +.P
> > > +.in +4n
> > > +.EX
> > > +ioctl(fd, op, argp);
> > > +.EE
> > > +.in
> > > +.P
> > > +In the above,
> > > +.I fd
> > > +is a file descriptor referring to an epoll file descriptor obtained with a
> > > +call to
> > > +.BR epoll_create (2).
> > > +.I op
> > > +is one of the operations listed below, and
> > > +.I argp
> > > +is a pointer to the data structure described below.
> > 
> > If argp is a pointer to a structure, then the prototype should document
> > that:
> > 
> > .BI "int ioctl(int " fd ", int " op ", struct epoll_params *" argp );
> > 
> > Also, I would document the two operations separately:
> > 
> > .BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
> > .BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> > 
> > This allows documenting that the 'S' one doesn't modify the argp
> > (AFAICS).
> > 
> > > +.\"
> > > +.P
> > > +All supported
> > > +.I op
> > > +values (described below) use an
> > > +.I argp
> > > +argument which is a pointer to a
> > > +.I epoll_params
> > > +structure, defined as:
> > > +.P
> > > +.in +4n
> > > +.EX
> > > +struct epoll_params {
> > > +    uint32_t busy_poll_usecs;   /* Number of usecs to busy poll */
> > > +    uint16_t busy_poll_budget;  /* Maximum number of packets to retrieve per poll */
> > > +    uint8_t prefer_busy_poll;   /* Boolean to enable or disable prefer busy poll  */
> > > +
> 
> The warning is triggered here.  You should use a dummy character to
> avoid the warning:
> 
> \&
> 
> > > +    /* pad the struct to a multiple of 64bits */
> > > +    uint8_t __pad;              /* Must be zero */
> > > +};
> > 
> > You could add this type definition to the SYNOPSIS, below the function
> > prototypes.
> > 
> > > +.EE
> > > +.in
> > > +.P
> > > +The
> > > +.I busy_poll_usecs
> > > +field denotes the number of microseconds that the network stack will busy
> > > +poll. During this time period, the network device will be polled
> > > +repeatedly. This value cannot exceed
> > > +.B INT_MAX .
> > > +.in
> > > +.P
> > > +The
> > > +.I busy_poll_budget
> > > +field denotes the maximum number of packets that the network stack will
> > > +be retrieved on each poll attempt. This value cannot exceed
> > > +.B NAPI_POLL_WEIGHT
> > > +which, as of Linux 6.9, is 64, unless the process is run with
> > > +.B CAP_NET_ADMIN .
> > > +.P
> > > +The
> > > +.I prefer_busy_poll
> > > +field is a boolean field and must be either 0 (disabled) or 1 (enabled). If
> > > +enabled, this indicates to the network stack that busy poll is the
> > > +preferred method of processing network data and the network stack should
> > > +give the application the opportunity to busy poll. Without this option,
> > > +very busy systems may continue to do network processing via the normal
> > > +method of IRQs triggering softIRQ and NAPI.
> > > +.P
> > > +The supported
> > > +.I op
> > > +values:
> > > +.TP
> > > +.B EPIOCSPARAMS
> > > +This operation allows the caller to specify an
> > > +.I epoll_params
> > > +structure to configure the operation of epoll. Refer to the structure
> > > +description of the structure above to learn what configuration is
> > > +supported.
> > > +.TP
> > > +.B EPIOCGPARAMS
> > > +This operation allows the caller to retrieve the current
> > > +.I epoll_params
> > > +structure. This can be used to determine what the current settings are.
> > > +.SH RETURN VALUE
> > > +On success, 0 is returned.
> > > +On failure, \-1 is returned, and
> > > +.I errno
> > > +is set to indicate the error.
> > > +.SH ERRORS
> > > +.TP
> > > +.B EOPNOTSUPP
> > > +The kernel was not compiled with busy poll support.
> > > +.TP
> > > +.B ENOIOCTLCMD
> > 
> > Is this a thing?
> > 
> > 	$ grep -rn ENOIOCTLCMD /usr/include/
> > 	$ 
> > 
> > I suspect this is EINVAL in user space?  (Actually, you list the same
> > exact error condition for EINVAL below.)
> > 
> > > +The specified
> > > +.I op
> > > +is invalid.
> > > +.TP
> > > +.B EINVAL
> > > +The
> > > +.I fd
> > > +specified is not an epoll file descriptor, or the
> > > +.I op
> > > +specified is invalid, or the
> > > +.I __pad
> > > +was not initialized to zero, or
> > > +.I busy_poll_usecs
> > > +exceeds
> > > +.B INT_MAX ,
> > > +or
> > > +.I prefer_busy_poll
> > > +is not 0 or 1.
> > 
> > Please separate the different conditions for EINVAL into separate
> > entries.  The ones that are related can go in the same one, but the
> > unrelated ones are better split.
> > 
> > > +.TP
> > > +.B EPERM
> > > +The process is being run without
> > > +.I CAP_NET_ADMIN
> > 
> > This should be bold.
> > 
> > > +and the specified
> > > +.I busy_poll_budget
> > 
> > This should be
> > 
> > .I argp.busy_poll_budget
> > 
> > > +exceeds
> > > +.I NAPI_POLL_WEIGHT
> > 
> > This should be bold.
> > 
> > > +(which is 64 as of Linux 6.9).
> > > +.TP
> > > +.B EFAULT
> > > +.I argp
> > > +does not point to a valid memory address.
> > > +.SH EXAMPLES
> > > +.EX
> > 
> > Could you write an entire program, with a main()?
> > 
> > If not, it's fine; this is better than nothing.  But we prefer having
> > entire programs that users can paste and try.
> > 
> > > +/* Code to set the epoll params to enable busy polling */
> > > +\&
> > > +int epollfd = epoll_create1(0);
> > > +struct epoll_params params;
> > > +\&
> > > +if (epollfd == \-1) {
> > > +    perror("epoll_create1");
> > > +    exit(EXIT_FAILURE);
> > > +}
> > > +\&
> > > +memset(&params, 0, sizeof(struct epoll_params));
> > > +\&
> > > +params.busy_poll_usecs = 25;
> > > +params.busy_poll_budget = 8;
> > > +params.prefer_busy_poll = 1;
> > > +\&
> > > +if (ioctl(epollfd, EPIOCSPARAMS, &params) == \-1) {
> > > +    perror("ioctl");
> > > +    exit(EXIT_FAILURE);
> > > +}
> > > +\&
> > > +/* Code to show how to retrieve the current settings */
> > > +\&
> > > +memset(&params, 0, sizeof(struct epoll_params));
> > > +\&
> > > +if (ioctl(epollfd, EPIOCGPARAMS, &params) == \-1) {
> > > +    perror("ioctl");
> > > +    exit(EXIT_FAILURE);
> > > +}
> > > +\&
> > > +/* params struct now contains the current parameters */
> > > +\&
> > > +fprintf(stderr, "epoll usecs: %lu\\n", params.busy_poll_usecs);
> > > +fprintf(stderr, "epoll packet budget: %u\\n", params.busy_poll_budget);
> > > +fprintf(stderr, "epoll prefer busy poll: %u\\n", params.prefer_busy_poll);
> > > +\&
> > > +.SH History
> > > +Linux 6.9.
> > > +glibc 2.40.
> > > +.SH SEE ALSO
> > > +.BR ioctl (2),
> > > +.BR epoll_create (2),
> > > +.BR epoll_create1 (2),
> > > +.BR epoll (7)
> > > +.P
> > > +.I Documentation/networking/napi.rst
> > > +.P
> > > +and
> > > +.P
> > > +.I Documentation/admin-guide/sysctl/net.rst
> > > +.P
> > > +in the Linux kernel source tree
> > 
> > We could document that as
> > 
> > .I linux.git/Documentation/...
> > 
> > to not have to say "in the Linux kernel source tree".
> > 
> > > diff --git a/man/man7/epoll.7 b/man/man7/epoll.7
> > > index e7892922e..4ad032bdd 100644
> > > --- a/man/man7/epoll.7
> > > +++ b/man/man7/epoll.7
> > > @@ -606,5 +606,6 @@ is present in an epoll instance.
> > >  .BR epoll_create1 (2),
> > >  .BR epoll_ctl (2),
> > >  .BR epoll_wait (2),
> > > +.BR ioctl_epoll (2),
> > >  .BR poll (2),
> > >  .BR select (2)
> > > -- 
> > > 2.34.1
> > > 
> > 
> > -- 
> > <https://www.alejandro-colomar.es/>
> 
> 
> 
> -- 
> <https://www.alejandro-colomar.es/>



