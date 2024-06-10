Return-Path: <linux-man+bounces-1059-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA7D9027C6
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 19:29:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E73A51F228F4
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 17:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A399146A85;
	Mon, 10 Jun 2024 17:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="HTO1AsFz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886E5145B09
	for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 17:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718040589; cv=none; b=Z8u8O1K68RPKCE4Jy+zo/5098z0w8uUALUhJ9M2/GpT6ZMFZb3D7vfOAd1cFeG2kd5EWTZutk06MQ0I4Yqv9Jej4D7ZxglcvoFaxO7XGn16729etYUjI51gr4PLPgvMLWOZUG5z0ZcE+oIlbSZubaT8iHtaQpGXjsUjzIrieCA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718040589; c=relaxed/simple;
	bh=/wkyAcgyADWIvErAjIe9RvrpPU9BHpYaBV419XFe88Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c3WawMpyakPXCgEAIu9HEv3ExI8WgJv+sZYnGz047eaBnvhteyYI5ig5upJQrgD01P0QDIbwme9Qs/MLlKwL756Ei00LBPCQr+glew2fp1gZiGRnsao+og1kXN7bcC9axU5GtmOJsCQ3jeiITvXzD6HEsGzHXjWIyyxKICk52R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=HTO1AsFz; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1f47f07aceaso40300025ad.0
        for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 10:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718040588; x=1718645388; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=29ftHNizgjOlFPTV08xXmDJ8eR5qicrCmYVQ73vEWHA=;
        b=HTO1AsFze7ke14G+yJfMxIZkJKig4zV1KtMMlh/jp5lgQ/nh7n3jDkaSJcS35/JAcz
         G3RaKQ9RQSf1Ft/WNCB9IMmx1eXCibHknwYl1W+hkJ8UAM1X0URsAGFj/tHa6cTkpVRq
         V+L3Bs9/8MKJTxTwS2pwcjk+Uz1MhdF+7YKLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718040588; x=1718645388;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29ftHNizgjOlFPTV08xXmDJ8eR5qicrCmYVQ73vEWHA=;
        b=HptCkrE+M+1GYKnPlQ4TN+XBHxWnY06L0nNsGJFMXxmkyDtScMVg8uiR/rTOO8zpf/
         5XnvzrNvIjdXrkJhvm8Eo0TwjYiKnFo5awT9qYHeVCxQ/5CjGVUaigF4wdL0HZmdU1hF
         RDklDv+xA/PMx+M5Ie+lXgaNx3WPUZfGGuJuwkhuxB+VJ+8EiEQr0m9WIFBGytKZ+3l8
         5gNSRG6woXmGbRC0xpPIzqoBudriYqSJrLDty0varmRQUx/VxT4iJnDAViWKWgfpdEsa
         jx2sI28jOd1ASSMtx5q0Hlod8PBHI79twVy3EHzERDxESlWxH6xSQi8cEdaJ8Xla1iK3
         tiTA==
X-Gm-Message-State: AOJu0YzBzYJchC5s3BCWpzZZECfeAxTCiClJQRh2tbQ/o07eM5GmTkl2
	ekuhNpM+ZJ/N2etzXWjpjPiWEAG4+5depTfHTwE7EN2MZzKmh7ohSug8mWQtR5o=
X-Google-Smtp-Source: AGHT+IEFyNhsJgCL4Jg/Gwcdfc+2S/lJAHumIX0G+OyF7+HBshsE3oFbmiY6Kycs5noZqW5CJ9EQzw==
X-Received: by 2002:a17:902:c401:b0:1f4:8e4a:b774 with SMTP id d9443c01a7336-1f6d02d57f2mr106383575ad.1.1718040587514;
        Mon, 10 Jun 2024 10:29:47 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f72046ac16sm12204855ad.211.2024.06.10.10.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 10:29:47 -0700 (PDT)
Date: Mon, 10 Jun 2024 10:29:44 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>

On Sun, Jun 09, 2024 at 07:04:40PM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Fri, Jun 07, 2024 at 02:53:19PM GMT, Joe Damato wrote:
> > On Thu, Jun 06, 2024 at 11:46:47PM +0200, Alejandro Colomar wrote:
> > > $ make lint build check -j24
> > > GROTTY		.tmp/man/man2/epoll_create.2.cat
> > > GROTTY		.tmp/man/man2/epoll_ctl.2.cat
> > > TROFF		.tmp/man/man2/ioctl_epoll.2.cat.set
> > > an.tmac:.tmp/man/man2/ioctl_epoll.2:61: style: blank line in input
> > > make: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/catman/troff.mk:63: .tmp/man/man2/ioctl_epoll.2.cat.set] Error 1
> > > make: *** Deleting file '.tmp/man/man2/ioctl_epoll.2.cat.set'
> > 
> > Hmm..
> > 
> > When I run make I get an error:
> > 
> > $ make
> > TROFF		.tmp/man/man2/s390_sthyi.2.cat.set
> > troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot adjust line
> 
> Hmm, I can't reproduce it.  Can you run with `make --debug=print` (needs
> a recent make(1))?

I don't think I have a recent enough make:

$ make --debug=print
make: *** unknown debug level specification 'print'.  Stop.
$ make --version
GNU Make 4.3


> > I tried to run the lint build check target and got an error about
> > checkpatch:
> > 
> > $ make lint build check -j8
> > CHECKPATCH	.tmp/man/man2/fork.2.d/fork.c.lint-c.checkpatch.touch
> > bash: line 1: checkpatch: command not found
> > 
> > I have mandoc, groff, and clang-tidy installed, but maybe I'm
> > missing other dependency?
> 
> That's a fork of the checkpatch.pl from the kernel.  I'm working on a
> repository to make it public.  Don't worry about it.
> 
> You can `make -t lint-c-checkpatch` to ignore all checkpatch lints.

$ make -t lint-c-checkpatch
$ echo $?
0

Does that mean I'm good to go and ready to submit v2 ? ;)

> 
> Have a lovely day!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>



