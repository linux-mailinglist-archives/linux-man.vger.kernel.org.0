Return-Path: <linux-man+bounces-1155-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1CB90599F
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 19:09:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB3EE284F6F
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 17:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AD5A1836DF;
	Wed, 12 Jun 2024 17:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="Q9C/Qmp6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C0C1836D1
	for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 17:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718212100; cv=none; b=BBEutIR/gd+RnmJvAMZKd7rWZeuGFi1PP5BCU7haOj0TmADd1JCSxcHKXlDADEHGKmRNt61UhaeNU2tZALFMZCrTp3xQf86UPGwAP0TewjpHlwqtbr8ZTlaVl/Mrqxpl3VM1PYy+D8GL0cRsoW6sT4im4877HKBvx4QKeRFKVXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718212100; c=relaxed/simple;
	bh=PcIK853sjEJS1JyYAugZug5UqyF2MR3w+5JT9O7SYO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bQnUyHSRyCvnTJ6catJ3hRtuiPCq3o9YYpEvc9U3Oo6Xraj9d3oP7/3KFF8d7VK4brdwPoRAI9Bm9lhxs/gQ4+OBaGet2gaDB3lzxI9srqbPIQou5M7dHVTnI5wQqOJxPWESS+nmMvCWWdhhaVEUZdIXI8oqkNiuax7lTeTvaJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=Q9C/Qmp6; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-703ed15b273so14018b3a.1
        for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 10:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718212097; x=1718816897; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=40Yy4Tp3j4q+u8rX01z1q7G/LWKQdJEL1GUuaeewH/o=;
        b=Q9C/Qmp6fSO06pKPg7e3MQOTrltFxDSisujVpRujUMJBc2cutvScV4J6EowJkXGGdO
         p1hDdfY/gaTsMj9QZCqCbq5R3rBiwOLkxcrqL+pASTq/rdAtUQ2u3pDy3TeWwmEqype7
         eN98HGyw2gvXctX2DNBTnswPqb/Mx1LdB0VBY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718212097; x=1718816897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=40Yy4Tp3j4q+u8rX01z1q7G/LWKQdJEL1GUuaeewH/o=;
        b=trqaMOk190FYuCNCfx3RwO/wnvVT4zNaN9VDYAL7gc94vfAR71IWx5Bqx4o2oR95ct
         9CSpcfBWw/oyo7OrIY09MorTWJjUk5OupaJxrU97BKusj7yp8oN4Sl5DKBBnWdOvCQpj
         H42MvScCnYXnbFqOyXC5cELzqBoUSNx+3o6SVTujF0dfWUhYUmCBxchpHJlw8/gHcnAF
         wIJM0OfodpX7EY1DXUS8SuirvUHL1a1vEcUW2e/k92BXiA7ElfEcKxlFJ5PT/fmfZnM5
         IApkjTLZrRq910m/CF0YojHPyp6ZKsnI32QRVNgh/mC7JqyrRpH7sswY+AtiD+LohI+8
         h1Fg==
X-Gm-Message-State: AOJu0YyEdWRG0HK7oEaKDK9aAwyQD1+v/lthov6ftKl3WbeegmQXAB87
	cK6xQFJ+q9Y6eYlr3OT0SOQ8uce1p60JpixAUDaafLkzZKV++dedzhajCKnT7V8=
X-Google-Smtp-Source: AGHT+IFocAQzL5pzTOKr2uFBGmW/bl5+McrkueIvT/n66Xt1k4zY6AUDZMOlkUa6hI3ehUztzuDBhg==
X-Received: by 2002:a05:6a20:2585:b0:1b4:82eb:61c9 with SMTP id adf61e73a8af0-1b8a9b361famr2995275637.6.1718212097487;
        Wed, 12 Jun 2024 10:08:17 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7041ec6f9cesm8305714b3a.78.2024.06.12.10.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 10:08:17 -0700 (PDT)
Date: Wed, 12 Jun 2024 10:08:14 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/1] ioctl_eventpoll.2, EPIOC[GS]PARAMS.2const: New
 page describing epoll ioctl(2)
Message-ID: <ZmnV_qoKYp_xDm7B@LQ3V64L9R2>
References: <20240611210941.1791446-1-jdamato@fastly.com>
 <20240611210941.1791446-2-jdamato@fastly.com>
 <dxbytf2nfionvg2a3mt4ocwrt72qlyqqf24vlun3g3v2qucmrq@6wzdibvvcaao>
 <ZmjaZm4gfz5lZL3b@LQ3V64L9R2>
 <h26ptahsj5x2tmlrub24u7krsnxpme4jhrs6zkwp6g72aqeadv@ux2eu3pfzueg>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <h26ptahsj5x2tmlrub24u7krsnxpme4jhrs6zkwp6g72aqeadv@ux2eu3pfzueg>

On Wed, Jun 12, 2024 at 01:38:15AM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Tue, Jun 11, 2024 at 04:14:46PM GMT, Joe Damato wrote:
> > On Wed, Jun 12, 2024 at 01:01:11AM +0200, Alejandro Colomar wrote:
> > > On Tue, Jun 11, 2024 at 09:09:41PM GMT, Joe Damato wrote:
> > > > A new page is added which describes epoll fd ioctls: EPIOCSPARAMS and
> > > > EPIOCGPARAMS which allow the user to control epoll-based busy polling.
> > > > 
> > > > Also add link pages for EPIOCSPARAMS and EPIOCGPARAMS.
> > > > 
> > > > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > > > ---
> > > >  man/man2/epoll_create.2           |   1 +
> > > >  man/man2/epoll_ctl.2              |   1 +
> > > >  man/man2/ioctl.2                  |   1 +
> > > >  man/man2/ioctl_eventpoll.2        | 175 ++++++++++++++++++++++++++++++
> > > >  man/man2const/EPIOCGPARAMS.2const |   1 +
> > > >  man/man2const/EPIOCSPARAMS.2const |   1 +
> > > >  man/man7/epoll.7                  |   1 +
> > > >  7 files changed, 181 insertions(+)
> > > >  create mode 100644 man/man2/ioctl_eventpoll.2
> > > >  create mode 100644 man/man2const/EPIOCGPARAMS.2const
> > > >  create mode 100644 man/man2const/EPIOCSPARAMS.2const
> 
> [...]
> 
> > > > +.B "#include <sys/epoll.h>"
> > > > +.P
> > > > +.EX
> > > > +.B struct epoll_params {
> > > > +.BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy poll */"
> > > > +.BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
> > > > +.BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
> > > > +\&
> > > > +.BR " " "/* pad the struct to a multiple of 64bits */"
> > > > +.BR "  uint8_t  __pad;" "  /* Must be zero */"
> > > > +.B };
> 
> I didn't notice that you had changed the indentation to 2.  There was a
> misunderstanding.  I've amended it myself with what I meant:

Ah, OK. Sorry about the misunderstanding on my part.

> diff --git i/man/man2/ioctl_eventpoll.2 w/man/man2/ioctl_eventpoll.2
> index 64a8770e7..79931eb7e 100644
> --- i/man/man2/ioctl_eventpoll.2
> +++ w/man/man2/ioctl_eventpoll.2
> @@ -24,12 +24,12 @@ .SH SYNOPSIS
>  .P
>  .EX
>  .B struct epoll_params {
> -.BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy poll */"
> -.BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
> -.BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
> +.BR "    uint32_t  busy_poll_usecs;" "   /* Number of usecs to busy poll */"
> +.BR "    uint16_t  busy_poll_budget;" "  /* Max packets per poll */"
> +.BR "    uint8_t   prefer_busy_poll;" "  /* Boolean preference  */"
>  \&
> -.BR " " "/* pad the struct to a multiple of 64bits */"
> -.BR "  uint8_t  __pad;" "  /* Must be zero */"
> +    /* pad the struct to a multiple of 64bits */
> +.BR "    uint8_t   __pad;" "             /* Must be zero */"
>  .B };
>  .EE
> 
> Which renders as:
> 
>      struct epoll_params {
>          uint32_t  busy_poll_usecs;   /* Number of usecs to busy poll */
>          uint16_t  busy_poll_budget;  /* Max packets per poll */
>          uint8_t   prefer_busy_poll;  /* Boolean preference  */
> 
>          /* pad the struct to a multiple of 64bits */
>          uint8_t   __pad;             /* Must be zero */
>      };
> 
> That is:
> 
> -  4-space indentation.
> -  At a minimum, 2 spaces between member type and name.

Understood for next time.

> While at it, I tried aligning the comment of __pad, and seemed slightly
> better, so I did it.

OK thanks!

> Since the commit was not yet on <kernel.org>, I've ammended and force-
> pushed.  Sorry for the confusion.

No problem; apologies for making more work for you.

[...]

> > > 
> > > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=e756cd6c0ae9f8121179e3e94201e729e013f5fb>
> > > I'll push it tomorrow to <kernel.org>.
> > 
> > Cool !!
> > 
> > > Thanks for this manual page!  :-)
> > 
> > Thanks for your patience on this one and sorry for the numerous
> > revisions you had to sort through.
> 
> You're welcome; and no need to be sorry.  :-)

Thanks again! I was refreshing kernel.org's gitweb to see if the
commit made it, looks like it is there:

  https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?h=ioctl&id=e450bcf6e35a5c227c5e80cdb4e44bb89516a5ee

Very cool!

Does the ioctl branch get merged into master before you do releases?
Was mostly just curious because I'll be excited to see the new page
in an official release in the future ;)

