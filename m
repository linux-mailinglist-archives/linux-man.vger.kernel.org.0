Return-Path: <linux-man+bounces-1061-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0114D9029D1
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 22:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1964F1C233D2
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 20:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D52ED495E5;
	Mon, 10 Jun 2024 20:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="RuHu+nYT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F316E47F58
	for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 20:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718050580; cv=none; b=mGFlfuJpzCgn/ZlfFmYwUJRdSB6mIPPbJPbqEnY8UtvhLg4lwUUHOR+TY8pRpt+dHC6lA8sbOGJ+Z8er4SkjC+2r/256h5XtaY4GIyhwjRd4vtXgX4UckFDd+oXumQ9CWhCjuTV052PghsZVBghF22Y3p3vWAAb2N4uazoJ24/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718050580; c=relaxed/simple;
	bh=Y2Rcu7109WeYNaXzyZzp6kHEtoOM1sm3rvpuUsa/gXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HR7a3C4Z8366aqp8HwWmrusejp+F8bWwCea9ACpUSwSyNauStLV2swbEYQIdLxD0uDQ625oavPPDbg2NiwSnPF6bxfhDT2UE1t94q7uDdkkzpi1/hGIYKmRkNDJsNrJrFD5jsMMTEtMlfoBKFe6/tmVUf8KccfUvNUjTQp9Nr0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=RuHu+nYT; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-70436ac872aso352798b3a.1
        for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 13:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718050578; x=1718655378; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0//WvHLig+R2e2+pzYTmmn83LRzkgSa4VHzO1dMC2vE=;
        b=RuHu+nYTyqlsS2rj5HGyJPzewmMFg0aeMpS65lS7+AyaQjvBEFMjaLamWZCPijKIVX
         RTtdLDQnb9T62OZMwkRxaBc8EM7OTZk9cM0/QqQy+HUo1kzEZdV+be+h7N8mm5SjOPy0
         uTgZjvHuy+LNrRup9EWJm7JueIjO8QyCpVFPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718050578; x=1718655378;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0//WvHLig+R2e2+pzYTmmn83LRzkgSa4VHzO1dMC2vE=;
        b=P4m3fS1EnrMbpFeRkhYNU/Emyrw1aMMUgjvFN0LywJaqPt41KBKu5x0DWbwrgkdH7O
         7xB6m70UX9ghCw25R7yojztxeWxRQN5BQAnZdYyJehAEJf3QmYjCzMjJEdIMlO16kYcc
         mnbs3T5qKj/ytDA/gZ7IGVUH/0DcuYd/T6s2dxdqTy5/uyxfB4W/Jxh4MYnZRA1+rs8a
         tKy512sLG6x16D4pPw7Mg5LM/vxJNTkhVTMIOr/5NMmMbb/h8sCLk0CJv/VTnIVqzd80
         SJXbvy2ChA8gQ+lKC24HuXRHKMZywTYtCzL7Jj82H0Bxe0Fa3vEhTNsNbNTv8WxQayJk
         dUfA==
X-Gm-Message-State: AOJu0YyokLfoyRnPn6J3Wwj25JJUi0ICRh+tu3J60OEZcwx9gocj63Qf
	KBmC3lrD9yA1xUeF1EvrWY2Y42NBhDCU+lvzpHuluzFu63yTSClw/Tqj0FIKWwsLV4st+6Prfsv
	K
X-Google-Smtp-Source: AGHT+IEXkNC1/CAxqRP+QY8Y+0COF0U051E4kOPwjNWbqPYSLmsaZczgAYlQgKTdNZuvcB5exkpdxg==
X-Received: by 2002:a05:6a20:431a:b0:1b8:54f8:3857 with SMTP id adf61e73a8af0-1b854f83952mr1828730637.30.1718050578172;
        Mon, 10 Jun 2024 13:16:18 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-704258ec016sm4300169b3a.121.2024.06.10.13.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 13:16:17 -0700 (PDT)
Date: Mon, 10 Jun 2024 13:16:15 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <ZmdfD-UUhVkyws1w@LQ3V64L9R2>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
 <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>

On Mon, Jun 10, 2024 at 08:24:24PM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Mon, Jun 10, 2024 at 10:29:44AM GMT, Joe Damato wrote:
> > On Sun, Jun 09, 2024 at 07:04:40PM +0200, Alejandro Colomar wrote:
> > > On Fri, Jun 07, 2024 at 02:53:19PM GMT, Joe Damato wrote:
> > > > On Thu, Jun 06, 2024 at 11:46:47PM +0200, Alejandro Colomar wrote:
> > > > > $ make lint build check -j24
> > > > > GROTTY		.tmp/man/man2/epoll_create.2.cat
> > > > > GROTTY		.tmp/man/man2/epoll_ctl.2.cat
> > > > > TROFF		.tmp/man/man2/ioctl_epoll.2.cat.set
> > > > > an.tmac:.tmp/man/man2/ioctl_epoll.2:61: style: blank line in input
> > > > > make: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/catman/troff.mk:63: .tmp/man/man2/ioctl_epoll.2.cat.set] Error 1
> > > > > make: *** Deleting file '.tmp/man/man2/ioctl_epoll.2.cat.set'
> > > > 
> > > > Hmm..
> > > > 
> > > > When I run make I get an error:
> > > > 
> > > > $ make
> > > > TROFF		.tmp/man/man2/s390_sthyi.2.cat.set
> > > > troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot adjust line
> > > 
> > > Hmm, I can't reproduce it.  Can you run with `make --debug=print` (needs
> > > a recent make(1))?
> > 
> > I don't think I have a recent enough make:
> > 
> > $ make --debug=print
> > make: *** unknown debug level specification 'print'.  Stop.
> > $ make --version
> > GNU Make 4.3
> 
> You can do this:
> 
> 	sed -i '/SILENT/s/^/$(V)/' GNUmakefile;
> 
> And after that, you can `make V=1` to see more verbosity.  This will
> work with any make(1).  And I would appreciate if you can ping your
> distro maintainer to package a newer version of make(1).  (Most likely,
> you're on Debian (right?), where the maintainer of make(1) is AWOL, so
> hopefully somebody else will pick it up if there are many pings.)  :-)

I am using Ubuntu 22.04.

I did what you suggested got the same output about s390_sthyi,
here's what I think is the relevant output:

SED		.tmp/man/man2/s390_sthyi.2
<man/man2/s390_sthyi.2 \
sed "/^\.TH/s/(date)/$(git log --format=%cs -1 -- man/man2/s390_sthyi.2 2>/dev/null)/" \
| sed '/^\.TH/s/(unreleased)/6.8-152-g97abd8f14-dirty/' >.tmp/man/man2/s390_sthyi.2
PRECONV		.tmp/man/man2/s390_sthyi.2.tbl
preconv   .tmp/man/man2/s390_sthyi.2 >.tmp/man/man2/s390_sthyi.2.tbl
TBL		.tmp/man/man2/s390_sthyi.2.eqn
tbl <.tmp/man/man2/s390_sthyi.2.tbl >.tmp/man/man2/s390_sthyi.2.eqn
EQN		.tmp/man/man2/s390_sthyi.2.cat.troff
! (eqn -Tutf8   <.tmp/man/man2/s390_sthyi.2.eqn 2>&1 >.tmp/man/man2/s390_sthyi.2.cat.troff) \
| grep ^ >&2
TROFF		.tmp/man/man2/s390_sthyi.2.cat.set
! (troff -man -wbreak -rS12  -Tutf8 -rLL=78n -rCHECKSTYLE=3 -ww  <.tmp/man/man2/s390_sthyi.2.cat.troff 2>&1 >.tmp/man/man2/s390_sthyi.2.cat.set \
   | grep -v -f '/home/jdamato/code/man-pages/share/mk/build/catman/troff.ignore.grep' \
   || true; \
) \
| grep ^ >&2
troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot adjust line
make: *** [/home/jdamato/code/man-pages/share/mk/build/catman/troff.mk:63: .tmp/man/man2/s390_sthyi.2.cat.set] Error 1

> > > > I tried to run the lint build check target and got an error about
> > > > checkpatch:
> > > > 
> > > > $ make lint build check -j8
> > > > CHECKPATCH	.tmp/man/man2/fork.2.d/fork.c.lint-c.checkpatch.touch
> > > > bash: line 1: checkpatch: command not found
> > > > 
> > > > I have mandoc, groff, and clang-tidy installed, but maybe I'm
> > > > missing other dependency?
> > > 
> > > That's a fork of the checkpatch.pl from the kernel.  I'm working on a
> > > repository to make it public.  Don't worry about it.
> > > 
> > > You can `make -t lint-c-checkpatch` to ignore all checkpatch lints.
> > 
> > $ make -t lint-c-checkpatch
> > $ echo $?
> > 0
> > 
> > Does that mean I'm good to go and ready to submit v2 ? ;)
> 
> Nope.  That means you're ready to `make`, and you won't see any errors
> due to missing a checkpatch binary.  make -t is a trick that few know,
> but quite useful:
> 
> $ MANWIDTH=72 man make | sed -n '/   -t/,/^$/p'
>      -t, --touch
>           Touch  files  (mark  them  up to date without really changing
>           them) instead of running their commands.   This  is  used  to
>           pretend  that the commands were done, in order to fool future
>           invocations of make.
> 
> So what we did is trick make(1) to think that it has successfully run
> the 'lint-c-checkpatch', by touch(1)ing all the files that would have
> been created if that target had been successful.

Ah, I see -- thanks for the pointer!

I've re-run make and it is still failing as above but on an
unrelated file.

I see in the output that ioctl_epoll seemed to be processed OK:

SED             .tmp/man/man2/ioctl_epoll.2
<man/man2/ioctl_epoll.2 \
sed "/^\.TH/s/(date)/$(git log --format=%cs -1 -- man/man2/ioctl_epoll.2 2>/dev/null)/" \
| sed '/^\.TH/s/(unreleased)/6.8-152-g97abd8f14-dirty/' >.tmp/man/man2/ioctl_epoll.2
PRECONV         .tmp/man/man2/ioctl_epoll.2.tbl
preconv   .tmp/man/man2/ioctl_epoll.2 >.tmp/man/man2/ioctl_epoll.2.tbl
TBL             .tmp/man/man2/ioctl_epoll.2.eqn
tbl <.tmp/man/man2/ioctl_epoll.2.tbl >.tmp/man/man2/ioctl_epoll.2.eqn
EQN             .tmp/man/man2/ioctl_epoll.2.cat.troff
! (eqn -Tutf8   <.tmp/man/man2/ioctl_epoll.2.eqn 2>&1 >.tmp/man/man2/ioctl_epoll.2.cat.troff) \
| grep ^ >&2
TROFF           .tmp/man/man2/ioctl_epoll.2.cat.set
! (troff -man -wbreak -rS12  -Tutf8 -rLL=78n -rCHECKSTYLE=3 -ww  <.tmp/man/man2/ioctl_epoll.2.cat.troff 2>&1 >.tmp/man/man2/ioctl_epoll.2.cat.set \
   | grep -v -f '/home/jdamato/code/man-pages/share/mk/build/catman/troff.ignore.grep' \
   || true; \
) \
| grep ^ >&2
GROTTY          .tmp/man/man2/ioctl_epoll.2.cat
grotty -c  <.tmp/man/man2/ioctl_epoll.2.cat.set >.tmp/man/man2/ioctl_epoll.2.cat

Should I send a v2? The s390 thing seems unrelated?

What do you think?

Thanks,
Joe


