Return-Path: <linux-man+bounces-1126-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A09EF904268
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 19:29:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50F052873D4
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E10A4D8A8;
	Tue, 11 Jun 2024 17:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="PPPW5M2v"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AB755E5B
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 17:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718126934; cv=none; b=pMmfQMlPnx0MV7OAx4dA1quBn+r8VHJGSInNfQP/D0YArBGwZLW0Gumb6GClCWUoU4R8S7S3b6hDLvGeBTOFB6vZCEMkjJsdCyYS/fghOV/TsndOO7SjxDJsSJEcGoUsYB+DfNPdqgLADuypGyGvnqmfkf2mho+RpmxHhM9QQPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718126934; c=relaxed/simple;
	bh=bLqTxhkgh8tFnWi5u6n6jzjASSKTAZM4D0/iGZMaHek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k0+AsGCiN6LOYt/2K9vvwHkOmn3agEldWTLnGaitgWB6WvS627Q5WRru47OvvYxUPuDpkOOEBplKpj3THsFKWuL2Edd3IHP9vyS6EcPFYndahBHB+/YhZPYW9BsbrNRewxTunurBWGHOCLMafRtjLCY7Zx8DAQrKeSvByxp9shY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=PPPW5M2v; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5b96a95c5e8so3217869eaf.3
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 10:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718126931; x=1718731731; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rV0By0BSVtsdacI7EI0vQegapdS7CMLnYWOeMWc5HX0=;
        b=PPPW5M2vIftt3s/0fxQjQgQcX0hq8+4XyU4YPhldpd2xAOfRlXbrjotCLWxUOEk8jM
         Oi73G4rCuNpQBm0Ildb70MUdkGb5lQW6hUbUerkZThJo/5+sZEyuVSCBdgVI+smT8rYB
         KxwAUeymPNO55ymKKCdl9i4Vwnwd6FDJizqvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718126931; x=1718731731;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rV0By0BSVtsdacI7EI0vQegapdS7CMLnYWOeMWc5HX0=;
        b=iIwNplRJNc/Ro6JEP8OcI9tCdF4llUuwSWVdISwOeZ83EhBquaRGo+DS4Slidnt9PV
         OIfAapLM/DAGlInbzC++5UDyujn5Kh6QJOkOr7xzP/nbXxVZHrsLZ3Q7a5TdEo4/nk1Y
         /au8nNIk6grtBCLw68t1ZOqTU9ovoT0kQkXn/ju5o7TjEQfZibj96oGUyxKr52ePzbgM
         3sD65C9G0PVPCpEUbjVNPiF9H4AyufEVf6vL/vBcAY0JL5sRT/nNMh7wvcLVGKIAPwIp
         Rt7w1lIQq0FbNyEYdAtLAvVjtOgAoG5Zio0r9/a7j/69iUa5I1N25nA6bD8djRvs5PhY
         vnrA==
X-Gm-Message-State: AOJu0YxCR6i4GVvYQZUxyOkU/dU1/YJKohSCX6MC/vdGUMJ/vTudwb3m
	E1WNhvSLfvow2DMz3Hm2O5QDxArWcT628EdWAANS+pw7ubTCDxxe0G16zMpKb1w=
X-Google-Smtp-Source: AGHT+IHddp+uVjO6rZSqVbNEAHx/uS2SqdBEcOxpSMAF+3dF+91jsWg7rapltIO0VlPOza9U1ShjeA==
X-Received: by 2002:a05:6358:882:b0:19f:4150:909a with SMTP id e5c5f4694b2df-19f4150926cmr785047855d.2.1718126931019;
        Tue, 11 Jun 2024 10:28:51 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6e5fb4df3a5sm5300183a12.50.2024.06.11.10.28.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 10:28:50 -0700 (PDT)
Date: Tue, 11 Jun 2024 10:28:48 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <ZmiJUHI9PHV1Osge@LQ3V64L9R2>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
 <Zmh8lQb3kHVbiRvj@LQ3V64L9R2>
 <umav7y7fezh4udzfx4hbd6mncoziieqof7ajj7vphldwerv5rv@77eyxtzd6jyy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <umav7y7fezh4udzfx4hbd6mncoziieqof7ajj7vphldwerv5rv@77eyxtzd6jyy>

On Tue, Jun 11, 2024 at 07:14:14PM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Tue, Jun 11, 2024 at 09:34:29AM GMT, Joe Damato wrote:
> > No problem at all; I really do appreciate your work here keeping the
> > man pages consistent and usable. Thanks for giving your time to help
> > me get this man page setup properly.
> 
> :-}
> 
> > > Ahh, sure, and for the constants too.  We prefer glibc headers when
> > > available.  I had the inertia that most ioctl(2)s do not have glibc
> > > headers.
> > 
> > Ah right forgot about the constants, so what I did instead was this, which
> > includes the header only once:
> > 
> > .SH SYNOPSIS
> > .EX
> > .BR "#include <sys/epoll.h>" "  /* Definition of " EPIOC* " constants */"
> > .B "#include <sys/ioctl.h>"
> > .P
> > .BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" argp );
> > .BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> > .P
> > .B struct epoll_params {
> > .BR "    uint32_t busy_poll_usecs;" "  /* Number of usecs to busy poll */"
> > .BR "    uint16_t busy_poll_budget;" " /* Maximum number of packets to retrieve per poll */"
> > .BR "    uint8_t prefer_busy_poll;" "  /* Boolean to enable or disable prefer busy poll  */"
> > \&
> > .BR " " "   /* pad the struct to a multiple of 64bits */"
> > .BR "    uint8_t __pad;"            "  /* Must be zero */"
> > .B };
> > 
> > Does that look OK?
> 
> Nah, that makes it unclear which header provides the type.  I'd add the
> include again right before the struct definition.  Some other pages have
> similar style (although I can't remember at the moment any example).

OK, I've included it twice -- once before the ioctls and once before
the struct, with a comment:

.BR "#include <sys/epoll.h>" " /* Definition of " struct " "epoll_params " */"
.P
.B struct epoll_params {

Hope that is OK! If not, let me know ;)

> > > > Changed this to:
> > > > 
> > > > retrieve on each poll attempt. This value cannot exceed
> > > > .B NAPI_POLL_WEIGHT
> > > > (which is 64 as of Linux 6.9), unless the process is run with
> > > > .B CAP_NET_ADMIN.
> > > > 
> > > > How is that?
> > > 
> > > Much better.  (But still needs to use semantic newlines.)
> > 
> > Hmm, I need to go back and re-read the semantic newline email because I made
> > this section look like this:
> 
> You may want to also read this commit:
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man7/man-pages.7?id=6ff6f43d68164f99a8c3fb66f4525d145571310c>
> 
> It includes a quote from Brian W. Kernighan, which is a little bit more
> detailed than man-pages(7) about it.

I just read that and will continue read it a few more times. I will
try to better understand how to format the man page text as you've
explained.

Please accept my apologies if I've still gotten it wrong in the v3,
I'm not quite sure I've totally wrapped my head around when/where
are good places to wrap long lines that exceed 80 characters.

> > 
> > .P
> > .I argp.busy_poll_budget
> > the maximum number of packets that the network stack will retrieve on each poll attempt.
> > This value cannot exceed
> > .B NAPI_POLL_WEIGHT
> > (which is 64 as of Linux 6.9), unless the process is run with
> > .B CAP_NET_ADMIN.
> > 
> > But I get the feeling this is still incorrect.
> 
> Yep; it's incorrect.  We have a strict limit on column 80, so you'd need
> to find a good break point in the middle.  I'd say
> 
> 	s/retrieve on/retrieve\non/
> 
> (although there are other good break points, such as for example maybe
> before 'retrieve').
> 
> and also break after the comma.
> 
> However, it was more correct than the previous, which continued the line
> after a period, which is a no-no.  :)

Thanks, I've made the change you've suggested above and am
re-reading each line looking for anything over 80 chars that I can
break on punctuation or any other clause.

I have already broken lines at periods and simple cases like that,
but I am sure to be missing a few.

> > I tried to follow the discussion you and Branden had in the following emails. I
> > apologize, but I don't think I quite follow what I should be using as a result
> > of that conversation?
> > 
> > \en 
> > \\n
> 
> TL;DR:
> 
> \\n is not appropriate, since it can be misinterpreted in some cases.
> For example, in some cases, you'd need to double-escape: \\\\n.  Don't
> use it.
> 
> \e is meh.  It means "write an escape character, whatever that is".
> This is incorrect, since we want a backslash, not "whatever an escape
> character is".  However, since the project has been using that for a
> long time, you can use it in your patch.
> 
> \[rs] is the most appropriate, which means write a "reverse solidus"
> (a.k.a., the backslash).  I'll prepare a churny patch for replacing \e
> by \[rs] globally in the project.  If you feel like using it in your
> patch, you're invited.  :)

OK, I'll switch the \e for \[rs], which also seems to render
properly for me.

Thanks,
Joe

