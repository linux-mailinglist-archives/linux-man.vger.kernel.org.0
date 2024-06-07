Return-Path: <linux-man+bounces-1039-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C2E8FF9E1
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 04:06:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CDAA285200
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 02:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22545DDD4;
	Fri,  7 Jun 2024 02:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="up4Pstta"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4E314A8B
	for <linux-man@vger.kernel.org>; Fri,  7 Jun 2024 02:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717725970; cv=none; b=Dt6zCBpoYdrgJSR4/xobLE1+2BdUDoEjcjghY1gYODZPwZSINkk4ABBpJ014PviwScumg0jOKDNeBg6YBcpVfFgvCUBCJBDZkk9mF7iLIxR+B3I27PQWuv9IFWSpDZKwPVeiU5Xpp6hxjDt/l8pE8tG4uybBWeQ3wSJU3SU8mqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717725970; c=relaxed/simple;
	bh=YRTBMT3L2uYaBhPlevpTngOJLEbuFaerxQ6Uq1VPzVY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TEvVkVkv7asdXqiRsBBZLp9SqH73snNxI5LH+dumJNLOA/KehWOTURoVmY+mfnbNf1KhzTDKArjh8dFQkk4Q8DJCcTT5o27+rB/lhU+FAdtdSiBmCYNhEioccNpAi8z3HY8cu8N0xIETAQOBCDsKhRvJdc5R4gV2aIPZnZq/jBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=up4Pstta; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-7eb321c61e6so70703439f.3
        for <linux-man@vger.kernel.org>; Thu, 06 Jun 2024 19:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1717725968; x=1718330768; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aQm70X46Xr71DLVS4ZPdi2GBGJIe0EJiFyEo7uADo5o=;
        b=up4PsttaUeVMnAL/Isz6E/TRPO/JzYFLZIfvmaZElZXkIb1f/peJYMuGFtKGTMjDG/
         xa7n6RXj1NXwcLNvc73uCRMU7kG6i46t/4y/UfqETPcXL/0wDp+1Bmejijf4ijYBv9Vz
         3S3xLPtzGHzEfspTeI/qe8eUT8GYXbQrd3m1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717725968; x=1718330768;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aQm70X46Xr71DLVS4ZPdi2GBGJIe0EJiFyEo7uADo5o=;
        b=UiYDh+FNB9bnYHY9ZsmGo7toBRAd044YVemMaxp3fYIiT2RPHOZ7Fin4v4hULey/9q
         q2p4EFbFMHC6PbLCwddcLCW8GpGXlJs1kg4ppPDk3to1eoFFD4vzFcudd4j9m0iJOCI2
         OiQr+mHZ08uH1UpYe8teP77mjhs9j6LKvvxZC0I7siNigGMR4ekN0IoouA1RsFxXdTo/
         0FgE0erNJl+g242TTLTqlxzcb43DbE07t31FKSp7T+53u8jIdWHg2ZMBl7mwPfJyVHM5
         RwD9pzKSbi0GamYhd3J2Elf+knvcPSe08lAlqKbtH0tSZrHYF6gj0L6wn5d42/49qEXk
         dobA==
X-Gm-Message-State: AOJu0YzwenmkpCvq6ygLyyM/QSAYhJcknbZ/Mcj14H/nOocgTWIRPOqx
	+s867uVHgjaBw3UCqy1a7SQ/jKO0BuUUEUXv7adO35KQvx6jJNT0/fd90lt07uwhyWfxazI1/nu
	U
X-Google-Smtp-Source: AGHT+IFUG98Ow9neTaMzwvukiN8iOLFI3FgtfpsEd3NDxuDPoZgqdtb7burX7Cfi2UGmc8TRFYmH0g==
X-Received: by 2002:a05:6602:601b:b0:7de:acfe:5b70 with SMTP id ca18e2360f4ac-7eb571d8b28mr160572739f.2.1717725967927;
        Thu, 06 Jun 2024 19:06:07 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6de22126ed4sm1505032a12.40.2024.06.06.19.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 19:06:07 -0700 (PDT)
Date: Thu, 6 Jun 2024 19:06:05 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <ZmJrDd-TnNxc1y4-@LQ3V64L9R2>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>

On Thu, Jun 06, 2024 at 11:39:58PM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Tue, Jun 04, 2024 at 06:17:40PM GMT, Joe Damato wrote:
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> 
> Thanks for the patch!  Please see a few comments below.

I've included some questions below just to make sure I give you a v2
that is much closer to correct :)

> 
> > ---
> >  man/man2/epoll_create.2 |   1 +
> >  man/man2/epoll_ctl.2    |   1 +
> >  man/man2/ioctl_epoll.2  | 203 ++++++++++++++++++++++++++++++++++++++++
> >  man/man7/epoll.7        |   1 +
> >  4 files changed, 206 insertions(+)
> >  create mode 100644 man/man2/ioctl_epoll.2
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
> > diff --git a/man/man2/ioctl_epoll.2 b/man/man2/ioctl_epoll.2
> > new file mode 100644
> > index 000000000..1d53f458e
> > --- /dev/null
> > +++ b/man/man2/ioctl_epoll.2
> > @@ -0,0 +1,203 @@
> > +.\" Copyright (c) 2024, Joe Damato
> > +.\" Written by Joe Damato <jdamato@fastly.com>
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.\"
> 
> Please use only one consecutive .\"

Thanks, fixed.
 
> > +.TH ioctl_epoll 2 (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +ioctl_epoll \- ioctl() operations for epoll file descriptors
> 
> Please add link pages <man2const/EPIOCSPARAMS.2const> and
> <man2const/EPIOCGPARAMS.2const>.

And after adding those, I'd add those to SEE ALSO and I'd omit the
description of them from the ioctl_epoll.2 page (because they'd have
their own pages) ?
 
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ", " \-lc )
> > +.SH SYNOPSIS
> > +.nf
> > +.BR "#include <linux/eventpoll.h>" "  /* Definition of " EPIOC* " constants and struct epoll_params */"
> > +.B "#include <sys/ioctl.h>"
> > +.P
> > +.BI "int ioctl(int " fd ", int " op ", void " *argp ");"
> 
> The '*' should be bold; not italics.

Thanks, fixed.

> > +.fi
> > +.SH DESCRIPTION
> > +Various
> > +.BR ioctl (2)
> > +operations can be performed on an epoll file descriptor (created by a call
> > +to
> > +.BR epoll_create (2))
> > +(since Linux 6.9 and glibc 2.40) using calls of the form:
> > +.\" commit 18e2bf0edf4dd88d9656ec92395aa47392e85b61
> > +.\" glibc commit 92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> > +.P
> > +.in +4n
> > +.EX
> > +ioctl(fd, op, argp);
> > +.EE
> > +.in
> > +.P
> > +In the above,
> > +.I fd
> > +is a file descriptor referring to an epoll file descriptor obtained with a
> > +call to
> > +.BR epoll_create (2).
> > +.I op
> > +is one of the operations listed below, and
> > +.I argp
> > +is a pointer to the data structure described below.
> 
> If argp is a pointer to a structure, then the prototype should document
> that:
> 
> .BI "int ioctl(int " fd ", int " op ", struct epoll_params *" argp );
> 
> Also, I would document the two operations separately:
> 
> .BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
> .BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> 
> This allows documenting that the 'S' one doesn't modify the argp
> (AFAICS).

Do you mean that I should omit the generic 

 .BI "int ioctl(int " fd ", int " op ", struct epoll_params *" argp );

and instead have the above with the two ops?
 
> > +.\"
> > +.P
> > +All supported
> > +.I op
> > +values (described below) use an
> > +.I argp
> > +argument which is a pointer to a
> > +.I epoll_params
> > +structure, defined as:
> > +.P
> > +.in +4n
> > +.EX
> > +struct epoll_params {
> > +    uint32_t busy_poll_usecs;   /* Number of usecs to busy poll */
> > +    uint16_t busy_poll_budget;  /* Maximum number of packets to retrieve per poll */
> > +    uint8_t prefer_busy_poll;   /* Boolean to enable or disable prefer busy poll  */
> > +
> > +    /* pad the struct to a multiple of 64bits */
> > +    uint8_t __pad;              /* Must be zero */
> > +};
> 
> You could add this type definition to the SYNOPSIS, below the function
> prototypes.

OK, I moved it.

I'm not sure if it is formatted properly, though. I'll see if I can
find other examples of this style to check against.

> > +.EE
> > +.in
> > +.P
> > +The
> > +.I busy_poll_usecs
> > +field denotes the number of microseconds that the network stack will busy
> > +poll. During this time period, the network device will be polled
> > +repeatedly. This value cannot exceed
> > +.B INT_MAX .
> > +.in
> > +.P
> > +The
> > +.I busy_poll_budget
> > +field denotes the maximum number of packets that the network stack will
> > +be retrieved on each poll attempt. This value cannot exceed
> > +.B NAPI_POLL_WEIGHT
> > +which, as of Linux 6.9, is 64, unless the process is run with
> > +.B CAP_NET_ADMIN .
> > +.P
> > +The
> > +.I prefer_busy_poll
> > +field is a boolean field and must be either 0 (disabled) or 1 (enabled). If
> > +enabled, this indicates to the network stack that busy poll is the
> > +preferred method of processing network data and the network stack should
> > +give the application the opportunity to busy poll. Without this option,
> > +very busy systems may continue to do network processing via the normal
> > +method of IRQs triggering softIRQ and NAPI.
> > +.P
> > +The supported
> > +.I op
> > +values:
> > +.TP
> > +.B EPIOCSPARAMS
> > +This operation allows the caller to specify an
> > +.I epoll_params
> > +structure to configure the operation of epoll. Refer to the structure
> > +description of the structure above to learn what configuration is
> > +supported.
> > +.TP
> > +.B EPIOCGPARAMS
> > +This operation allows the caller to retrieve the current
> > +.I epoll_params
> > +structure. This can be used to determine what the current settings are.
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
> > +.B ENOIOCTLCMD
> 
> Is this a thing?
> 
> 	$ grep -rn ENOIOCTLCMD /usr/include/
> 	$ 
> 
> I suspect this is EINVAL in user space?  (Actually, you list the same
> exact error condition for EINVAL below.)

Good catch!

Yes, I looked at the kernel code, it looks like this
becomes ENOTTY before entering userland, but due to the way the code
was written (I'll double check again) I think I wrote this to return
EINVAL.

> > +The specified
> > +.I op
> > +is invalid.
> > +.TP
> > +.B EINVAL
> > +The
> > +.I fd
> > +specified is not an epoll file descriptor, or the
> > +.I op
> > +specified is invalid, or the
> > +.I __pad
> > +was not initialized to zero, or
> > +.I busy_poll_usecs
> > +exceeds
> > +.B INT_MAX ,
> > +or
> > +.I prefer_busy_poll
> > +is not 0 or 1.
> 
> Please separate the different conditions for EINVAL into separate
> entries.  The ones that are related can go in the same one, but the
> unrelated ones are better split.

Thanks!

I did something like this:

.TP
.B EINVAL
The
.I fd
specified is not an epoll file descriptor.
.TP
.B EINVAL
The
.I op
specified is invalid.
.TP
.B EINVAL
The
.I argp.__pad
was not initialized to zero.

is that what you meant?

> > +.TP
> > +.B EPERM
> > +The process is being run without
> > +.I CAP_NET_ADMIN
> 
> This should be bold.

Thanks, fixed.

> > +and the specified
> > +.I busy_poll_budget
> 
> This should be
> 
> .I argp.busy_poll_budget

Thanks, fixed.

> > +exceeds
> > +.I NAPI_POLL_WEIGHT
> 
> This should be bold.

Thanks, fixed.

> > +(which is 64 as of Linux 6.9).
> > +.TP
> > +.B EFAULT
> > +.I argp
> > +does not point to a valid memory address.
> > +.SH EXAMPLES
> > +.EX
> 
> Could you write an entire program, with a main()?
> 
> If not, it's fine; this is better than nothing.  But we prefer having
> entire programs that users can paste and try.

Hmm.. I can give it a try! It's a bit tricky because to actually use
busy polling, you need to have a program that accepts incoming
connections and calls epoll_wait (after setting the appropriate
values with the ioctl).

I could write something simple that does that but it would be a bit
long, I think.

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
> > +fprintf(stderr, "epoll packet budget: %u\\n", params.busy_poll_budget);
> > +fprintf(stderr, "epoll prefer busy poll: %u\\n", params.prefer_busy_poll);
> > +\&
> > +.SH History
> > +Linux 6.9.
> > +glibc 2.40.
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR epoll_create (2),
> > +.BR epoll_create1 (2),
> > +.BR epoll (7)
> > +.P
> > +.I Documentation/networking/napi.rst
> > +.P
> > +and
> > +.P
> > +.I Documentation/admin-guide/sysctl/net.rst
> > +.P
> > +in the Linux kernel source tree
> 
> We could document that as
> 
> .I linux.git/Documentation/...
> 
> to not have to say "in the Linux kernel source tree".

OK, I updated the above to be what you suggested.

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
> > 
> 
> -- 
> <https://www.alejandro-colomar.es/>



