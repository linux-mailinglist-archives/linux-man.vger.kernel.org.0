Return-Path: <linux-man+bounces-1037-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 768CE8FF794
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 00:14:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3A451C23C6F
	for <lists+linux-man@lfdr.de>; Thu,  6 Jun 2024 22:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA9413D2A0;
	Thu,  6 Jun 2024 22:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="a6o7Y0ad"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180A94CB4B
	for <linux-man@vger.kernel.org>; Thu,  6 Jun 2024 22:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717712078; cv=none; b=cN/54wvJWAg/1if+QpJ8kVzEr9N/SvWCMV2jZM9B4l0TZWIoQxWHHZgfN21atGk27GeDxR1OejMkoPT38yJc5MfhGXvftN6Y/VQqLW25/HgXXXDOCOj7Nc/oardK5IEeDEfmMPHH8Fmx4ZEq4WbmGA3ZlFVtyFJ2zG+yA2USApc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717712078; c=relaxed/simple;
	bh=QnCOXMw5HFR/a68IxTtn/uwQiVJgoKy6j5nuoN+FWbI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qpeT3NdUjVDS5AZ+VxIm07ukXlrNlPeq9h8BajM29PXCdKmBIXllZvbWg3UHQwjwFXmoFGzYoii5m0HOodEQmlNXTklWqFqd4ebH5dZtzFRzeWDX6xf/O8i5c/Xkfh+RJ31pXhGXzhaeuokBMZEi0T0FXtRRPS+EjRIhlmauji8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=a6o7Y0ad; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-6c4926bf9baso1163020a12.2
        for <linux-man@vger.kernel.org>; Thu, 06 Jun 2024 15:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1717712076; x=1718316876; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6xLUxtnQa47eZngVB1vmP1CxSErYw8uiXiUckENHXJk=;
        b=a6o7Y0adBdQ24Unu70O5mIReiUYMNn1XkwvEF5njeMfNrlrCm0jGrkiNzktgg0X9pE
         cCIcsrBu7rbmdnuiBYU1VrRp6Wt2mcFxUVj1Vj2q7DVQ+tgr888pwBHjPh9hMudcjeiR
         18g3wUFDoLwy5bpunor74XTXh5uksfco2SPr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717712076; x=1718316876;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6xLUxtnQa47eZngVB1vmP1CxSErYw8uiXiUckENHXJk=;
        b=rEWKwWrb522dfqm1D1JgtPOyckRO1Ps97WSBs0qV2/OIcXCTkA8fjk8K74TyF6HEXN
         5NY//qtWm+ySso6pqbYixh2ZucyE4if3J9BvWYvACWbHT3oNW+jMMfQ5tP0w2nIpJa02
         HZLST3RYrjQFrSgEVsOdIfOk6gmsLjm5B2tLAnoYqWPczAgcPCYcisimaaqtf45ZhDzY
         KW53nn2NMmLOndxeF5jQXdggVkq0L0XMPA1jZ25X6EscLDrQ/lMSwZSzPEL9wFYqNPqx
         WcovS2GUOdmlvHLXMfLGpNmOh0XxdzJNGgobJ1sGZjSHUOTJGFnjfuTpWMidFZtF8Qzw
         OxGQ==
X-Gm-Message-State: AOJu0YxWHrG9GW01G5feO7Y60q4NnCMW6ulyGlFyK1ilvDxOT8N9YCTt
	rKcApbEM8DOt/npHHHz9Iu9iEGVEACh3rQG3SAXkKv4Jb2LpJl2JOYNlzd62UyHp2ecUt+wLJ3Q
	Y
X-Google-Smtp-Source: AGHT+IGNJlviuIz9sWarlfwJK5Pv9Pf/D/GRq01FgqZA2cb0cSwJXkyn8WceMuQJdxk5NzLhTM+UOw==
X-Received: by 2002:a05:6a20:da9e:b0:1af:fca1:b692 with SMTP id adf61e73a8af0-1b2f9a748b1mr1017908637.35.1717712076144;
        Thu, 06 Jun 2024 15:14:36 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-703fd4950dfsm1532660b3a.133.2024.06.06.15.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 15:14:35 -0700 (PDT)
Date: Thu, 6 Jun 2024 15:14:33 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/1] ioctl_epoll.2: Add epoll ioctl documentation
Message-ID: <ZmI0ydFzb754YD-C@LQ3V64L9R2>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <lu3cm6yc3qjbozu7nxglrnbyjsuolgdtkjmvklduh5rms5een7@wwr5klqqsxwb>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lu3cm6yc3qjbozu7nxglrnbyjsuolgdtkjmvklduh5rms5een7@wwr5klqqsxwb>

On Thu, Jun 06, 2024 at 11:44:10PM +0200, Alejandro Colomar wrote:
> On Tue, Jun 04, 2024 at 06:17:39PM GMT, Joe Damato wrote:
> > Greetings:
> 
> Greetings!
> 
> > This is my first contribution to the man-pages project, so please excuse
> > any obvious issues; I am happy to take feedback and send updated patches as
> > needed.
> 
> Sure; no problem.
> 
> > This change documents a new ioctl interface for epoll added to Linux kernel
> > 6.9 [1] and glibc [2] for controlling busy poll on a per-epoll fd basis.
> 
> Thanks!
> 
> > I noted that other ioctls have ioctl_*.2 files, so I followed that
> > pattern in this change.
> 
> Sure.  I used a different pattern with prctl(2)s, so let's use a mix.
> Do the ioctl_*.2 tradition, but also add link pages with the names of
> the actual operations (which will allow to search directly for the man
> pages of the individual operations).

Thanks for your careful review. I will make the changes you
suggested for the v2.

> > Based on the current status of glibc, I would assume that this change will
> > be part of glibc 2.40 (it is listed under 2.40 in the NEWS section), which
> > may be released in a few months [3].
> 
> If you're certain that this will be part of glibc 2.40, I'm fine merging
> it already.  We can always patch it if something changes.

I have no idea if I can be certain of that. I am not a maintainer
nor do I have commit access to glibc, so I truly have no idea.

I suppose it is possible that they may decide to cut glibc 2.40 from
before my patch went in? It does not seem there is any 2.40 tag yet,
AFAICT.

How about I proceed by making all the changes you've requested and
get the patch into a shape where it can be merged. Hopefully,
that'll only take one (or two ;) more revisions.

Once the patch is in good shape, then we can decide whether to merge
or wait for glibc 2.40? If they are releasing it in 8/2024, it's not
too long to wait.

Does that seem OK to you?

> > Given that, I am not sure if I should wait until glibc 2.40 has been
> > released before sending this change to this project or not.
> > 
> > Please let me know.
> > 
> > Thanks,
> > Joe
> > 
> 
> Cheers,
> Alex
> 
> > [1]: https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/fs/eventpoll.c?h=v6.9&id=18e2bf0edf4dd88d9656ec92395aa47392e85b61
> > [2]: https://sourceware.org/git/?p=glibc.git;a=commit;h=92c270d32caf3f8d5a02b8e46c7ec5d9d0315158
> > [3]: https://sourceware.org/glibc/wiki/Glibc%20Timeline
> > 
> > Joe Damato (1):
> >   ioctl_epoll.2: New page describing ioctl(2) operations for epoll fds
> > 
> >  man/man2/epoll_create.2 |   1 +
> >  man/man2/epoll_ctl.2    |   1 +
> >  man/man2/ioctl_epoll.2  | 203 ++++++++++++++++++++++++++++++++++++++++
> >  man/man7/epoll.7        |   1 +
> >  4 files changed, 206 insertions(+)
> >  create mode 100644 man/man2/ioctl_epoll.2
> > 
> > -- 
> > 2.34.1
> > 
> > 
> 
> -- 
> <https://www.alejandro-colomar.es/>



