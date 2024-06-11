Return-Path: <linux-man+bounces-1142-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93072904796
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 01:14:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97BD01C237F8
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 23:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72DE0155C9D;
	Tue, 11 Jun 2024 23:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="TusTx80Y"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656741553B5
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 23:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718147692; cv=none; b=UEcrU544c/9wTzJENzhtwYMZhO3T4JlpepJPbhPbDppEvPTLcxyUC2ZmHcamHTzj2UKooaAwcbwVSZhDm4allHbzgZIFEc8KW2OK/tmE65WXLYnDy+d4jecdEnEEr4k2hP7Zi/xl1BA2xY8OM7A7pClgK/GFWs2v7CWP9XkEu5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718147692; c=relaxed/simple;
	bh=wPacqlvZQLgamjWkgtjFcpIICqGg3kA3QCjzNAiId9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DLR2b23FDtsGNAAH5a7dMN0rC8AKjjJJcw5IJBFw/mMMiGMIZs5y+s/GzT+iO0LMrWvnGfj/1zX33CtcEMwwamLe8GHNTqYHpGzqOpf0eUIO1/kKAPop30jdttf1iro5/Qf1bFSiaLb6hSFmdYrsT6edHZmQ2/HtBnsaJ2ULmdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=TusTx80Y; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2c2c74d9be0so1425107a91.1
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 16:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718147689; x=1718752489; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L0Gph4K+yGaRp3eClsU8H1XszoAy5ipQaUZyj4VKuIU=;
        b=TusTx80Y0+mRgk0egl9VMvzxGjCouHBLPecOxId8rHC45BTLkmxI/dgS16oXuH5/GV
         95mQtxhjyH2Qpv5uFaKwE2lw2PddV3Wy/FNk93+3dsFAPn9rsd1XfBU5t7BNgw3DKftM
         Uq/hZiSwAV+JpiO+V7Kd0ik5pb6jTGFjZACJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718147689; x=1718752489;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L0Gph4K+yGaRp3eClsU8H1XszoAy5ipQaUZyj4VKuIU=;
        b=mP9mWdSxaF0xK1ypY/sb6ZwYfwxONLIBKw9V5AcYgsqpNEgKYchniv8oIpC1eWr9PB
         z6Te1bR+ABLLdZiY8TaqbCoe10PnbCuQjZb3+uF0bxdTrwCCTs7XYqNQ3fIzDkoZauWy
         /x+ACU3t0o0MTLabTI131ghrDC6KBn9s74L0rX0gH9JBXFsI7q/QqaQlCwLAxeQpV2kj
         UQuRsiPpwQ8QyrYAvEv+Y4mIAuIqkrwGaXU+zEOifye2gTUa7gRhieJ39mSyIXRd8faX
         0t2lkKR1YRdSeAP+4s+VcLFtNYWfeqa9Dc/g2vJLOy1R/q0lNeaTFZ1W4j8prsq0+pRs
         ddIA==
X-Gm-Message-State: AOJu0YwaL9Uf586Yph8NxqrWxH9xbd2kZrwfITJ5uUSswCTO+fsPPEzG
	0A8NhNM9XYuYKnZuKgctPlf4hhDazuJ6OE06Zz33qT2OXKc4pibDibax0SXQ2vmYV3Ou/ZKAYHx
	/
X-Google-Smtp-Source: AGHT+IHXxKPxO4PJGS1KI+YVpTxyKHS3XArj+OeI7NGY3532O+2o3crEa51ehmm9tpiNsEzjAXfvVA==
X-Received: by 2002:a17:90a:ea87:b0:2c2:d442:aa10 with SMTP id 98e67ed59e1d1-2c4a76f7ddbmr277184a91.45.1718147689403;
        Tue, 11 Jun 2024 16:14:49 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4a76ab127sm146549a91.50.2024.06.11.16.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 16:14:49 -0700 (PDT)
Date: Tue, 11 Jun 2024 16:14:46 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/1] ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New
 page describing epoll ioctl(2)
Message-ID: <ZmjaZm4gfz5lZL3b@LQ3V64L9R2>
References: <20240611210941.1791446-1-jdamato@fastly.com>
 <20240611210941.1791446-2-jdamato@fastly.com>
 <dxbytf2nfionvg2a3mt4ocwrt72qlyqqf24vlun3g3v2qucmrq@6wzdibvvcaao>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dxbytf2nfionvg2a3mt4ocwrt72qlyqqf24vlun3g3v2qucmrq@6wzdibvvcaao>

On Wed, Jun 12, 2024 at 01:01:11AM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Tue, Jun 11, 2024 at 09:09:41PM GMT, Joe Damato wrote:
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
> >  man/man2/ioctl_eventpoll.2        | 175 ++++++++++++++++++++++++++++++
> >  man/man2const/EPIOCGPARAMS.2const |   1 +
> >  man/man2const/EPIOCSPARAMS.2const |   1 +
> >  man/man7/epoll.7                  |   1 +
> >  7 files changed, 181 insertions(+)
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
> > index 000000000..6bbbef2d5
> > --- /dev/null
> > +++ b/man/man2/ioctl_eventpoll.2
> > @@ -0,0 +1,175 @@
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
> > +.nf
> > +.BR "#include <sys/epoll.h>" "  /* Definition of " EPIOC* " constants */"
> > +.B "#include <sys/ioctl.h>"
> > +.P
> > +.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
> > +.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> > +.P
> > +.B "#include <sys/epoll.h>"
> > +.P
> > +.EX
> > +.B struct epoll_params {
> > +.BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy poll */"
> > +.BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
> > +.BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
> > +\&
> > +.BR " " "/* pad the struct to a multiple of 64bits */"
> > +.BR "  uint8_t  __pad;" "  /* Must be zero */"
> > +.B };
> > +.EE
> > +.fi
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
> > +.SS The epoll_params structure
> > +.I argp.busy_poll_usecs
> > +denotes the number of microseconds that the network stack will busy poll.
> > +During this time period,
> > +the network device will be polled repeatedly for packets.
> > +This value cannot exceed
> > +.BR INT_MAX .
> > +.in
> 
> I hadn't noticed this glitch.  This '.in' is spurious.

Thanks!

> > +.P
> > +.I argp.busy_poll_budget
> > +the maximum number of packets that the network stack will retrieve
> 
> Also, this sentence seems to be missing a 'denotes' at ^.

I removed the "denotes" because I thought you asked me to do so in a
previous message?

Or maybe I removed it from this one but forgot to remove from the
one above?

Either way adding it back here seems fine to me, sorry for my
confusion on that.

> > +on each poll attempt.
> > +This value cannot exceed
> > +.B NAPI_POLL_WEIGHT
> > +(which is 64 as of Linux 6.9), unless the process is run with
> > +.BR CAP_NET_ADMIN .
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
> > +.BR INT_MAX .
> > +.TP
> > +.B EINVAL
> > +.I argp.prefer_busy_poll
> > +is not 0 or 1.
> > +.TP
> > +.B EPERM
> > +The process is being run without
> > +.B CAP_NET_ADMIN
> > +and the specified
> > +.I argp.busy_poll_budget
> > +exceeds
> > +.BR NAPI_POLL_WEIGHT .
> > +.TP
> > +.B EFAULT
> > +.I argp
> > +does not point to a valid memory address.
> 
> And this wording is slightly wrong.  A pointer does not point to an
> address (unless it's a pointer to a pointer).  It _is_ an address (or
> rather, its value is an address, but that's too pedantic).

That's right; your wording is more clear.

> I've applied these three edits myself, and have already applied this
> patch.
> 
> diff --git i/man/man2/ioctl_eventpoll.2 w/man/man2/ioctl_eventpoll.2
> index 6bbbef2d5..64a8770e7 100644
> --- i/man/man2/ioctl_eventpoll.2
> +++ w/man/man2/ioctl_eventpoll.2
> @@ -59,10 +59,9 @@ .SS The epoll_params structure
>  the network device will be polled repeatedly for packets.
>  This value cannot exceed
>  .BR INT_MAX .
> -.in
>  .P
>  .I argp.busy_poll_budget
> -the maximum number of packets that the network stack will retrieve
> +denotes the maximum number of packets that the network stack will retrieve
>  on each poll attempt.
>  This value cannot exceed
>  .B NAPI_POLL_WEIGHT
> @@ -119,7 +118,7 @@ .SH ERRORS
>  .TP
>  .B EFAULT
>  .I argp
> -does not point to a valid memory address.
> +is an invalid address.
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY

These changes look good to me, thank you for applying them.

> 
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=e756cd6c0ae9f8121179e3e94201e729e013f5fb>
> I'll push it tomorrow to <kernel.org>.

Cool !!

> Thanks for this manual page!  :-)

Thanks for your patience on this one and sorry for the numerous
revisions you had to sort through.

Thanks,
Joe

