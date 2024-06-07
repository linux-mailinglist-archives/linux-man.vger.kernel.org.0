Return-Path: <linux-man+bounces-1040-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D97E98FF9E2
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 04:08:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8598C1F23668
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 02:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16EA410799;
	Fri,  7 Jun 2024 02:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="OchaF/4f"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A72B64E
	for <linux-man@vger.kernel.org>; Fri,  7 Jun 2024 02:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717726092; cv=none; b=QPF6NyxY28x8o46Ua5J2wu2ZDF97abJAdB5qED992fYPIWsKTeotxJZUiU95FcP8eE+gRpLq3dIcNILYO4IPtP6O9R88FOylWukwi2St95yelu1fDI5Opf7XVAg8U31zTVOuB8Z+JiovDYV5Qqf66we4V+2gsMiOob/RmNnHshY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717726092; c=relaxed/simple;
	bh=TK1MCmAlfbSlLjtPg0u2mcdq6V1g93rH8A/Hq/1KP3w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rGnQHXx0wFe1X1/S7D8SZJTs/Ze1FR9+STJ/9dS+SFNvKo0LoBaL7gAWQYMnyC19ol5arcGSJ//YGjJ+QbG41lswGaGUz4Wlix6PlDkdjcQRH1EhVRhiWgUtRbAIKn2CoO0VD/OLcadvx7LLQKKFczLRRGGzpUeUYbfk1fkeKSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=OchaF/4f; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-250e4c4d650so864006fac.2
        for <linux-man@vger.kernel.org>; Thu, 06 Jun 2024 19:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1717726090; x=1718330890; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SuaCtev3tvo6DOqHsedjWA4o72W2J7Bx2Sete2Qeo5M=;
        b=OchaF/4fx8p4BZeToNb9gAbh9984F4QGCEqCXQD7xTvMk+pZtTpfE4rQX8agTMHecA
         Y824TjhxY347V+VnQ5wu7hZpJOYKM6DCl8KH0wiK8/ncR2r2yUqTVUsZzSGT/GJZlQK3
         P9uTz6x5xtxs6nm1eQ+IksWquO894FgO8DzU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717726090; x=1718330890;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SuaCtev3tvo6DOqHsedjWA4o72W2J7Bx2Sete2Qeo5M=;
        b=viB6hydDQ9AalOoWgWt9ag0e5BY3mKyCc1eC1bIKdRhe4pxjxHGf7IOTYNRzNzv6jL
         8sN1EoOSABm/lnXLOnRz7tPpDEoo4JEmYeCjvpPp97sEXFNpGrHwdd8IgFiwMuWCoRkk
         iXaioYIDRUQC1xII2OLXa7cqgv36LSLbDEuzw8gDYNepl8jUvjO5gmRL+vn+ZjM/ivI/
         YXAPCXqRdKE6QuMfkr23tKiDDawAy+3g9lpClz6NncpjZ0eEvpa64TIU0oEfpwDuJgOL
         WeFiFmkJz7Hx+05kcbuE6cmR0gWsRIVwpAg/hSmm6okZjiQUfYDIQtOZ4iv9n72cfqH1
         V0pA==
X-Gm-Message-State: AOJu0YxFiNB1oWEvHqN56Sr7XSeFZ2lbgIzQeYK2f6oTyhfAgT0xAWf2
	xGzEkitIg/SYZoAJ/0/0LS8MJT4yFOjQW2bbUPnJgydNJOLvy1HVfm5IHVY0HSCVXezNDb6loWy
	b
X-Google-Smtp-Source: AGHT+IFHbV6TD7XZE8ZHWqareyiesUlmAk1IkbM9EXfrQ7a2PjU+a0/55+R7lnEFoZxeiAb6f6ChzQ==
X-Received: by 2002:a05:6870:3107:b0:24c:b0ca:9650 with SMTP id 586e51a60fabf-254644641edmr1446901fac.1.1717726089334;
        Thu, 06 Jun 2024 19:08:09 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-703fd494fd9sm1686931b3a.139.2024.06.06.19.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 19:08:08 -0700 (PDT)
Date: Thu, 6 Jun 2024 19:08:06 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/1] ioctl_epoll.2: Add epoll ioctl documentation
Message-ID: <ZmJrhtfUHA6ZVoz5@LQ3V64L9R2>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <lu3cm6yc3qjbozu7nxglrnbyjsuolgdtkjmvklduh5rms5een7@wwr5klqqsxwb>
 <ZmI0ydFzb754YD-C@LQ3V64L9R2>
 <jqnuggiy2od5xc4xi67oemdhavh2aqityedevpxchypeqeal43@xp75h2cplbj7>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <jqnuggiy2od5xc4xi67oemdhavh2aqityedevpxchypeqeal43@xp75h2cplbj7>

On Fri, Jun 07, 2024 at 12:25:05AM +0200, Alejandro Colomar wrote:
> Hi!
> 
> On Thu, Jun 06, 2024 at 03:14:33PM GMT, Joe Damato wrote:
> > On Thu, Jun 06, 2024 at 11:44:10PM +0200, Alejandro Colomar wrote:
> > > Sure.  I used a different pattern with prctl(2)s, so let's use a mix.
> > > Do the ioctl_*.2 tradition, but also add link pages with the names of
> > > the actual operations (which will allow to search directly for the man
> > > pages of the individual operations).
> > 
> > Thanks for your careful review. I will make the changes you
> > suggested for the v2.
> 
> Thank you.
> 
> > 
> > > > Based on the current status of glibc, I would assume that this change will
> > > > be part of glibc 2.40 (it is listed under 2.40 in the NEWS section), which
> > > > may be released in a few months [3].
> > > 
> > > If you're certain that this will be part of glibc 2.40, I'm fine merging
> > > it already.  We can always patch it if something changes.
> > 
> > I have no idea if I can be certain of that. I am not a maintainer
> > nor do I have commit access to glibc, so I truly have no idea.
> > 
> > I suppose it is possible that they may decide to cut glibc 2.40 from
> > before my patch went in? It does not seem there is any 2.40 tag yet,
> > AFAICT.
> > 
> > How about I proceed by making all the changes you've requested and
> > get the patch into a shape where it can be merged. Hopefully,
> > that'll only take one (or two ;) more revisions.
> > 
> > Once the patch is in good shape, then we can decide whether to merge
> > or wait for glibc 2.40? If they are releasing it in 8/2024, it's not
> > too long to wait.
> > 
> > Does that seem OK to you?
> 
> Yep, that's fine.  If you know who merged your patch, maybe you can CC
> him/her?

I had an existing email thread with them on another topic; they
mentioned that my change should be included in 2.40 as there has
been no announcement of a release freeze yet.

As I mentioned above, if you'd like to be cautious, I'm happy to
just get the patch into a pristine state for merging and then
waiting to merge until glibc 2.40 is shipped.

Totally up to you!

