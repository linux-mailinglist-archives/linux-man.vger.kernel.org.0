Return-Path: <linux-man+bounces-1128-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD8A904304
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 20:00:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C22D52856B8
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 18:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34F27CF1F;
	Tue, 11 Jun 2024 17:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="UWmpTdKH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BAA7BB17
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 17:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718128711; cv=none; b=IYCOI5NkPrqkKYUc4BP1WWJ9gKwAdYiJcZ5jhlf4AC+XYtIwWyQBrUl13/C6dgcaBR6LGujNU68gynNNr76OWzr4GMu5+VwslXW4EN/2L4hRUTvAtDBKKvKQCcyT4CTp2vB2LejPzUiDsMqGt1lCYFHpivrOehWBEpXUydcm7Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718128711; c=relaxed/simple;
	bh=4QfsYUpLxhlAWfCDDqxkcyXk/5JiKVhtpKBbsnGzxdo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L6k1hqWsjO/rgrhZ2c4v4dhvwjQkIxCqS+/pcwc26d60I+pDZJ94pRutfsILqI98Vk50jWHzmrY0KUBCohtTRrLUhFYXTG78+ELiMPc+o9TYQu7SdorPH0T3JIrQYOVyDm4iDs3e/yWtKAUXRqCl3oyCFtv4OgmipvhFvngYjds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=UWmpTdKH; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1f480624d10so52194225ad.1
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 10:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718128709; x=1718733509; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kN0HK6K5Zn/MH/pr4cmbgOTvNm4ln109dfJ6hTr01Ac=;
        b=UWmpTdKHwhlPXxJIRSGQlPBU/Lj4Pzf38NhjP9PbC14OhV8qqstiKN78uYgYnbFggF
         da9MeNMJnz2eizYKPJQlbslP9wdSSCZJBBvtucP3cT4g1zB5tZa7ZAB4weeahbSuqBN/
         9jbIJufKt1lc0ERK/NGNC8A7uSdBQmmU+pE5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718128709; x=1718733509;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kN0HK6K5Zn/MH/pr4cmbgOTvNm4ln109dfJ6hTr01Ac=;
        b=wewkLCDWQQVS/9IZ/7euANwW9C+wqRh7wpfEW3DBRLk9Vijl6ZIQwIlBJnZ3rZu6Rh
         27gV5hrUgSPLauM/pfEK5kqe6BGRdGP3s4/YOKi7KWtk1a3Di03ZmgAh5qvtPEwnpEuD
         RDPmqzDT202rK3ldl6vFXojKUAhlVAC2sABoCYOgpRDlHhQeCWJvh1t47ddsIhVF++dQ
         spvC+bCWOuxy7tS+soKnjcMtAEzvYemMK9QB3Gdrmgdaxo9Xd5EHqwihXraL3IgpEt4O
         CHM2VrhyvpbyQJ7i9MuoOsdenf7sl5GwTRpeBfqWBV5ePMxUUHvAywsLUHmJOjoGURDo
         MqDQ==
X-Gm-Message-State: AOJu0YxF4vYZWV+SXUJkayQE1sk3NfJasda/30Z8ycUWx9rHHDm+MOVh
	c4dyuwLKgzIhudwI6QYrEXQ9jJ4xtSC0LAO7isHhPRAqXC8LhnvEE90+oKbNJxiVmQFVQ2ZvI69
	1
X-Google-Smtp-Source: AGHT+IHzS0WAmRCKn9KcIZT4MXKXW80w3+guW7yXf0nurmeKsRFlqnMpbbozCyOrc6T43R21XSc3rw==
X-Received: by 2002:a17:903:2289:b0:1f7:11dd:6d8e with SMTP id d9443c01a7336-1f711dd779cmr66987915ad.48.1718128709341;
        Tue, 11 Jun 2024 10:58:29 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6f5a05b83sm63213925ad.249.2024.06.11.10.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 10:58:28 -0700 (PDT)
Date: Tue, 11 Jun 2024 10:58:26 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <ZmiQQm9sNfFboKsJ@LQ3V64L9R2>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
 <Zmh8lQb3kHVbiRvj@LQ3V64L9R2>
 <umav7y7fezh4udzfx4hbd6mncoziieqof7ajj7vphldwerv5rv@77eyxtzd6jyy>
 <ZmiJUHI9PHV1Osge@LQ3V64L9R2>
 <hjkeoyc4wa5amugp4sdbm2b4y4zxbgv4lie2ezyctagygnaetj@mjghmuldnpna>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hjkeoyc4wa5amugp4sdbm2b4y4zxbgv4lie2ezyctagygnaetj@mjghmuldnpna>

On Tue, Jun 11, 2024 at 07:43:52PM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Tue, Jun 11, 2024 at 10:28:48AM GMT, Joe Damato wrote:
> > OK, I've included it twice -- once before the ioctls and once before
> > the struct, with a comment:
> > 
> > .BR "#include <sys/epoll.h>" " /* Definition of " struct " "epoll_params " */"
> 
> No comment here, please.

OK removed and switched to .B (instead of .BR).

> > .P
> > .B struct epoll_params {
> > 
> > Hope that is OK! If not, let me know ;)
> > 
> > > > > > Changed this to:
> > > > > > 
> > > > > > retrieve on each poll attempt. This value cannot exceed
> > > > > > .B NAPI_POLL_WEIGHT
> > > > > > (which is 64 as of Linux 6.9), unless the process is run with
> > > > > > .B CAP_NET_ADMIN.
> > > > > > 
> > > > > > How is that?
> > > > > 
> > > > > Much better.  (But still needs to use semantic newlines.)
> > > > 
> > > > Hmm, I need to go back and re-read the semantic newline email because I made
> > > > this section look like this:
> > > 
> > > You may want to also read this commit:
> > > 
> > > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man7/man-pages.7?id=6ff6f43d68164f99a8c3fb66f4525d145571310c>
> > > 
> > > It includes a quote from Brian W. Kernighan, which is a little bit more
> > > detailed than man-pages(7) about it.
> > 
> > I just read that and will continue read it a few more times. I will
> > try to better understand how to format the man page text as you've
> > explained.
> > 
> > Please accept my apologies if I've still gotten it wrong in the v3,
> > I'm not quite sure I've totally wrapped my head around when/where
> > are good places to wrap long lines that exceed 80 characters.
> 
> No problems; if there are only a few small issues, I'll fix them while
> applying.  Otherwise, as long as you're patient, I am too.  :)
> 
> Clause boundaries aren't as easy to spot as sentence boundaries.
> Prepositions are usually good places.  'that' is usually a good place
> too.  Separating the subject or an adverbial group from the rest of the
> sentence is also a good choice.  But it's in the end a matter of taste.
> It's maybe easier to see the places where you wouldn't want to break it,
> such as:
> 
> 	the maximum number of packets that the network
> 	stack will retrieve on each poll attempt.
> 
> because 'network stack' is an noun group (or whatever it's called in
> English).

OK thanks for the examples.

I'll take another read through what I have and send a v3 shortly.

[...]

