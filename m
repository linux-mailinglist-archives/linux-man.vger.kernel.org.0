Return-Path: <linux-man+bounces-1119-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C73F8904169
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 18:34:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7298F281488
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 16:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF0138FA0;
	Tue, 11 Jun 2024 16:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="f/AFQlOO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92317481D1
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 16:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718123674; cv=none; b=kHjGy8uHESbwu9UTv2M1oepXoH6ZsTUTS3ZSvdyKnH7TM6tQyYs4FUDbFliUrnUIQS0aMZx9qadg0nBVAaV1TWWFw3LiFzRei6W5yQKY9xA4T6y2twySeRgL7KvQSKXJCT1K6qocvJz/9wTJLZXHnXpb2t4cDd32Am18IFwDu8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718123674; c=relaxed/simple;
	bh=BZjxFWFihw36LmOVx8znJIEls65Aq4krPEjvtbwLGHg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V6+rL5S9FRdj+AWa700+Kkv0iExWkaXVW87HZYgw8wX6Ke6IHuC4NeicOSfV9guvooxHpFLscXo327KW9j1vC77ynB96FdCwdKfE4y/by8attkitIzLAAr9Y+V6Fz7KbGNnzm4mkpXN7oVzuD7XGqDgsj7IyPBYEbPYEKmWYI68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=f/AFQlOO; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-70421e78edcso1244192b3a.3
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 09:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718123672; x=1718728472; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8ZAZZn88+kp40QNFGIQIeZABBdpGUfxbVTvBl+sWzts=;
        b=f/AFQlOOLwSBxTBCb7aLrNExwj8p6I7lxs5GYtsFUn54/Tw2i/ZFtvP2//lyyXwdki
         CjHdY/bFWvbKDnNJ+UnCDoh+P8KtleRkB9wsJxJMoarN4DGIp69G4sQOYJzwK4RthTF6
         aRaDkJFmM274qeVRV43NFEZNs/Sp4DPqnH/mI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718123672; x=1718728472;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ZAZZn88+kp40QNFGIQIeZABBdpGUfxbVTvBl+sWzts=;
        b=rRtImq5iZoz52zkddip/QMAwWtY6SliErjQPUBUMfQDgaW0Vwzb0iMgl2MJ3G0dSmz
         uqcGierswDBEvOjzi/d6JJuq7tBZpllp820dbtHBwyVkyVDpa9XXApYljnP63Am2LOgA
         4u7C87jxdfOYigy9UQAxy6n37X3XEhHoLSVXwCpbCSS1coGXBV1AA6hkOY1GNUiDhOzw
         ywIWZ73VzjEjh1tGOM0IZXhpo8EY1N1nGNJtuiaZtFQEE2L8zM2k8dBSdLBaPFmAllVc
         aA8NK0cjR64kTf70a0Yeyxuvia88mJihYGKRf6uhq7cUjgCvNe5vmDNo8+z1uHT6sFoq
         8V3A==
X-Gm-Message-State: AOJu0YwPYBLTy2Yd964OyVQ60u0asNgUdI+Kh8YeSE25445rm3YJ9wok
	82faiXA0BZiyqIcfWUJBUgs6mbMXUJ2NRH/UNuLvBBO6d8wX1+66KnwLRK/TgG4=
X-Google-Smtp-Source: AGHT+IEeKG1Dgue7sP16hTbNTtsHmF40L4suEdiLWsXP7x9idXWFaRn5G1gMEjyw8JJ7ZehMlJPvlA==
X-Received: by 2002:aa7:888b:0:b0:705:b81b:6ee2 with SMTP id d2e1a72fcca58-705b81bb457mr1003540b3a.19.1718123671752;
        Tue, 11 Jun 2024 09:34:31 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705a6d7d084sm2205116b3a.10.2024.06.11.09.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 09:34:31 -0700 (PDT)
Date: Tue, 11 Jun 2024 09:34:29 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <Zmh8lQb3kHVbiRvj@LQ3V64L9R2>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>

On Tue, Jun 11, 2024 at 10:54:27AM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Mon, Jun 10, 2024 at 05:29:06PM GMT, Joe Damato wrote:
> > On Tue, Jun 11, 2024 at 01:45:57AM +0200, Alejandro Colomar wrote:
> > > Hi Joe,
> > > 
> > > On Mon, Jun 10, 2024 at 11:12:06PM GMT, Joe Damato wrote:
> > > > A new page is added which describes epoll fd ioctls: EPIOCSPARAMS and
> > > > EPIOCGPARAMS which allow the user to control epoll-based busy polling.
> > > > 
> > > > Also add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
> > > > 
> > > > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > > 
> > > Thanks!
> > 
> > Thanks again for your careful review. Sorry this wasn't the winning
> > revision :)
> 
> No problem.  Sorry for being so pedantic.  (Not sorry, actually.)  :-)
> And thanks for your patience on my review.

No problem at all; I really do appreciate your work here keeping the
man pages consistent and usable. Thanks for giving your time to help
me get this man page setup properly.

> [...]
> 
> > > > +.B "#include <sys/ioctl.h>"
> > > > +.P
> > > > +.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
> > > > +.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> > > 
> > > To document the header that provides this structure, let's add here:
> > > 
> > > .P
> > > .B #include <linux/eventpoll.h>
> > 
> > Hmm, that's the linux sources header file, I think.
> > 
> > Should I be showing the glibc header instead?
> > 
> > https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/sys/epoll.h;h=45e546fa4440a83bb94288c220bfbe9295f02cc9;hb=92c270d32caf3f8d5a02b8e46c7ec5d9d0315158#l91
> 
> Ahh, sure, and for the constants too.  We prefer glibc headers when
> available.  I had the inertia that most ioctl(2)s do not have glibc
> headers.

Ah right forgot about the constants, so what I did instead was this, which
includes the header only once:

.SH SYNOPSIS
.EX
.BR "#include <sys/epoll.h>" "  /* Definition of " EPIOC* " constants */"
.B "#include <sys/ioctl.h>"
.P
.BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
.BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
.P
.B struct epoll_params {
.BR "    uint32_t busy_poll_usecs;" "  /* Number of usecs to busy poll */"
.BR "    uint16_t busy_poll_budget;" " /* Maximum number of packets to retrieve per poll */"
.BR "    uint8_t prefer_busy_poll;" "  /* Boolean to enable or disable prefer busy poll  */"
\&
.BR " " "   /* pad the struct to a multiple of 64bits */"
.BR "    uint8_t __pad;"            "  /* Must be zero */"
.B };

Does that look OK?

[...]

> > Sure, I can do that.
> > 
> > .SS
> > The epoll_params structure
> > .I argp.busy_poll_usecs
> > 
> > Is that OK for a heading?
> > 
> > I saw this is how man/man2/stat.2 does the subsection.
> > 
> > Let me know what you think.
> 
> Yep.  Except that the title goes on the SS line:
> 
> $ grep '\.SS' man/man2/stat.2 
> .SS The stat structure
> .SS fstatat()
> .SS C library/kernel differences

OK, fixed!

> > > > +retrieve on each poll attempt. This value cannot exceed
> > > > +.B NAPI_POLL_WEIGHT
> > > > +which, as of Linux 6.9, is 64, unless the process is run with
> > > > +.B CAP_NET_ADMIN.
> > > 
> > > This seems a bit ambiguous: 'unless the process is run with
> > > CAP_NET_ADMIN' could refer to 'cannot exceed' or 'is 64'.  Using
> > > parentheses instead of commas, it would be unambiguous.
> > 
> > Changed this to:
> > 
> > retrieve on each poll attempt. This value cannot exceed
> > .B NAPI_POLL_WEIGHT
> > (which is 64 as of Linux 6.9), unless the process is run with
> > .B CAP_NET_ADMIN.
> > 
> > How is that?
> 
> Much better.  (But still needs to use semantic newlines.)

Hmm, I need to go back and re-read the semantic newline email because I made
this section look like this:

.P
.I argp.busy_poll_budget
the maximum number of packets that the network stack will retrieve on each poll attempt.
This value cannot exceed
.B NAPI_POLL_WEIGHT
(which is 64 as of Linux 6.9), unless the process is run with
.B CAP_NET_ADMIN.

But I get the feeling this is still incorrect.

> [...]
>

[...]
 
> > > > +.TP
> > > > +.B EFAULT
> > > > +.I argp
> > > > +does not point to a valid memory address.
> > > > +.SH EXAMPLES
> > > > +.EX
> > > > +/* Code to set the epoll params to enable busy polling */
> > > > +\&
> > > > +int epollfd = epoll_create1(0);
> > > > +struct epoll_params params;
> > > > +\&
> > > > +if (epollfd == \-1) {
> > > > +    perror("epoll_create1");
> > > > +    exit(EXIT_FAILURE);
> > > > +}
> > > > +\&
> > > > +memset(&params, 0, sizeof(struct epoll_params));
> > > > +\&
> > > > +params.busy_poll_usecs = 25;
> > > > +params.busy_poll_budget = 8;
> > > > +params.prefer_busy_poll = 1;
> > > > +\&
> > > > +if (ioctl(epollfd, EPIOCSPARAMS, &params) == \-1) {
> > > > +    perror("ioctl");
> > > > +    exit(EXIT_FAILURE);
> > > > +}
> > > > +\&
> > > > +/* Code to show how to retrieve the current settings */
> > > > +\&
> > > > +memset(&params, 0, sizeof(struct epoll_params));
> > > > +\&
> > > > +if (ioctl(epollfd, EPIOCGPARAMS, &params) == \-1) {
> > > > +    perror("ioctl");
> > > > +    exit(EXIT_FAILURE);
> > > > +}
> > > > +\&
> > > > +/* params struct now contains the current parameters */
> > > > +\&
> > > > +fprintf(stderr, "epoll usecs: %lu\\n", params.busy_poll_usecs);
> > > 
> > > We use '\e', not '\\'.  (I haven't checked whether it also works, and
> > > don't remember.)
> > 
> > Change this to '\e' and tested it. It looks like it works to me :)
> 
> Hmm, yep, both work the same.  I remember there's a small difference in
> meaning, but I don't know why we use \e.  Anyway.

I tried to follow the discussion you and Branden had in the following emails. I
apologize, but I don't think I quite follow what I should be using as a result
of that conversation?

\en 
\\n

or something else?

Thanks,
Joe

