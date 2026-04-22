Return-Path: <linux-man+bounces-5368-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPLeN0D16Gl3SAIAu9opvQ
	(envelope-from <linux-man+bounces-5368-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 18:20:16 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C18448752
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 18:20:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61A95303EC34
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 16:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1594B37475D;
	Wed, 22 Apr 2026 16:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lGx4Q+sd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB628325495
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 16:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776874442; cv=none; b=Gh10+6Wf1EUhXIXFd0zTv4/V55ogplrY9olWCdML12Z1cD0Wzuz6jiIRy40k/g3hipK4Ok+UJ3Npul1ah/4No1/iWyQHZV1qMys1oZ46msMazxZXiczIwK9qSFvy82V3jx971xUTALvUn5ys+GNw88/qHvz99QKp+CH0lMKDE34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776874442; c=relaxed/simple;
	bh=NLWsA0yi+o2QQuOo2RuruqjskQFGSIWyp2acUHvZGBs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JhIbj4iSvk3az7fOBii5l/LCKPnKp/+iDOhS9odekgsNfa4ATE0pEkFegfMAQ6bSo7Ruh+Jnt4m1rPILiHHMpDdCNeA5GPQeJPTGSv9dTAah2/f/34PeROGICB3VcNQlAlW1UkYRrKq3+hgBT8a/cclVxKVnjoCc7Cicmuq4DA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lGx4Q+sd; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-3591cc98871so2600842a91.3
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 09:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776874441; x=1777479241; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-description:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9HLvC+H7u5a1yeHTO01Idv0eCZF9BVv1f8N9iZOJd14=;
        b=lGx4Q+sdm0e+dZ1H5ib2mMtNU0KTpmKKXZRjZk5NVweWuLcO8/8bRiZttAi/i3hn5w
         811ie50x1OBPbUrNRA2hiCdYPErm/eZHasUY9IPSfjLozCQGR4ZdIGyrqhzhXwmria88
         6pwL90HwmjG49vzztC5lbVImy3vs+HuEJ5iPW9sxzN4EeMfYCtCnY+/d1MLiAwdYAg2D
         7DduPKF0k7TBpGH6au8do4HSvWCgODZ2vt+oV/2esVObzB6L3/Y+RsXcCP46xTX3g6f5
         jvRvJj0pBnlND9DS0y9q4qxaPwcGijfaNGZc2ZhJkJo6/AcuORPB43gsZ/PiGbExDo0K
         0YGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776874441; x=1777479241;
        h=in-reply-to:content-disposition:content-description:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9HLvC+H7u5a1yeHTO01Idv0eCZF9BVv1f8N9iZOJd14=;
        b=RLKSkF51/yTIP/TVje6WiffmdMqPqh1T6c+aEQ8fWWaFlZSwc3NtyqdaPVDQSEoGNb
         goyJd/fcqU4MtzJtj4u22NLiUWtaE4rNnPYVzML4Jqd0PCJ/HAqbb6/cV1QBxIPov3ID
         YTA3fYk9whK96TKB95QGx+526buar921ksW9ckGKHsGj39s9Ny/AJTWZOBZWyiEf98qZ
         UJinROTcAIHPAZabgY0vQrne6WKbX42iCM/DqsYJYFjq194/cNN1QNRt+QG/RfSIBaCs
         M/jymm03DbHYlhVYftzTYVutWb2HbVtJyIQKJUOekp3UYkMgDTmv92sC89xSOUyvi3BT
         WgJg==
X-Gm-Message-State: AOJu0YwAaQpaD/yN4bjfSEwyaSA/+J2DQON7iub8EeMww+nkKDL+DSHL
	Rd6xSC20BFAlAmAquzs48BTrMlz5sVx5Az6iYi2sgqlUY4EvtzIuAFd+
X-Gm-Gg: AeBDievzUQHUUKM82ERQtXF0QWzrssuqgPmuI8EkUyqxKm6WuJtJGLTycGdFj54G0zn
	JHtloucesSF5li3Qm73giDwk9kBpDprJVWD25RbR3YWTtDWc27ByAFdtjpmglXkutiSVWosk7Dh
	61TEwAbkR7kooYCqWbwiPPlUkJ8zqECpgrnxtI1MnTD3s/lHN6KitOv5g3u+AQFa9NKi/7FwoSN
	zSFRgTnmG6ypjAMIfVzWtcge1wDX02YesMn/MAjnCoQEESQhp18AHGJ1MX17CwnGqGooTx6GBlO
	yekkmNfgfUmCwKPidreDqKGyJzHHP8W3K6VxIgm8pjtoOTUG4mFuex+8cgWAywPpb3KqdkU70LZ
	qmd21YKV6i62crWsQAw4uCydiY6Lx4M2tt9KpCxGs0QDQYULQ1nrzmZN93B678LKboamXMeYMQH
	ZVn4V6SGFrGb4rsjx4sj3rEFKyhvHZtX8Fl27etYIF0fkg4dgLO5r3PvqxgsRE9uvcsnHQnQcsN
	Nc5f20pC3qNpBdr
X-Received: by 2002:a17:90b:5107:b0:35e:3aec:718b with SMTP id 98e67ed59e1d1-3614046e12amr21732095a91.15.1776874440826;
        Wed, 22 Apr 2026 09:14:00 -0700 (PDT)
Received: from cchengyang.duckdns.org (36-225-97-241.dynamic-ip.hinet.net. [36.225.97.241])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-361419739dfsm18390059a91.13.2026.04.22.09.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 09:14:00 -0700 (PDT)
Date: Thu, 23 Apr 2026 00:13:57 +0800
From: Cheng-Yang Chou <yphbchou0911@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, sched-ext@lists.linux.dev, 
	Tejun Heo <tj@kernel.org>, David Vernet <void@manifault.com>, 
	Andrea Righi <arighi@nvidia.com>, Changwoo Min <changwoo@igalia.com>, 
	Ching-Chun Huang <jserv@ccns.ncku.edu.tw>, Chia-Ping Tsai <chia7712@gmail.com>
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <20260423000434.G45a2@cchengyang.duckdns.org>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Description: 
Content-Disposition: inline
In-Reply-To: <aejvcpOKmAxCnJQV@devuan>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,kernel.org,manifault.com,nvidia.com,igalia.com,ccns.ncku.edu.tw,gmail.com];
	TAGGED_FROM(0.00)[bounces-5368-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yphbchou0911@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[9];
	HAS_CD_HEADER(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cchengyang.duckdns.org:mid]
X-Rspamd-Queue-Id: 67C18448752
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alejandro,

On Wed, Apr 22, 2026 at 06:02:49PM +0200, Alejandro Colomar wrote:
> > diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
> > index 80a0ac726dcf..d60678f00e72 100644
> > --- a/man/man2/sched_setattr.2
> > +++ b/man/man2/sched_setattr.2
> > @@ -81,6 +81,10 @@ a deadline scheduling policy;
> >  see
> >  .BR sched (7)
> >  for details.
> > +.TP 14
> > +.B SCHED_EXT
> > +for extensible scheduling policies implemented via BPF
> > +(see \fBsched_ext\fR(7)).
> 
> Please follow the style within that manual page.  We avoid \f unless
> truly necessary.

Ack! This is my first time contributing here, so I'm still catching up
on the specific style rules.
> 
> >  .P
> >  The
> >  .I attr
> > @@ -95,7 +99,8 @@ struct sched_attr {
> >      u32 sched_policy;      /* Policy (SCHED_*) */
> >      u64 sched_flags;       /* Flags */
> >      s32 sched_nice;        /* Nice value (SCHED_OTHER,
> > -                              SCHED_BATCH) */
> > +                              SCHED_BATCH,
> > +                              SCHED_EXT) */
> 
> Why break the line?
> 
> >      u32 sched_priority;    /* Static priority (SCHED_FIFO,
> >                                SCHED_RR) */
> >      /* For SCHED_DEADLINE */
> > @@ -218,8 +223,10 @@ This field specifies the nice value to be set when specifying
> >  .I sched_policy
> >  as
> >  .B SCHED_OTHER
> > +,
> 
> What's the reason for this weird formatting of the source code?  At this
> point I wonder if this was generated by AI.

Yes, I used AI for the formatting, which I should disclose it, hence the
weird layout. Apologies for that. I believe the content is solid, but the
style needs adjusting. I'll send a v2. Thanks.

> Please take into account 'CONTRIBUTING.d/ai'.
> 
> > +.BR SCHED_BATCH ,
> >  or
> > -.BR SCHED_BATCH .
> > +.BR SCHED_EXT .
> >  The nice value is a number in the range \-20 (high priority)
> >  to +19 (low priority);
> >  see
> > diff --git a/man/man2/sched_setscheduler.2 b/man/man2/sched_setscheduler.2
> > index b4c35543e5bf..825eb7290ee7 100644
> > --- a/man/man2/sched_setscheduler.2
> > +++ b/man/man2/sched_setscheduler.2
> > @@ -67,6 +67,10 @@ and
> >  for running
> >  .I very
> >  low priority background jobs.
> > +.TP
> > +.B SCHED_EXT
> > +for extensible scheduling policies implemented via BPF
> > +(see \fBsched_ext\fR(7)).
> 
> Please check formatting.

Ack.

> >  .P
> >  For each of the above policies,
> >  .I param\->sched_priority
> > diff --git a/man/man7/sched.7 b/man/man7/sched.7
> > index 00926cd34ecf..2e73a4c716b9 100644
> > --- a/man/man7/sched.7
> > +++ b/man/man7/sched.7
> > @@ -116,6 +116,13 @@ and
> >  .BR sched_get_priority_max (2)
> >  to find the range of priorities supported for a particular policy.
> >  .P
> > +Since Linux 6.12, there is an extensible BPF scheduling policy
> > +.RB ( SCHED_EXT ),
> > +which allows for custom scheduling algorithms to be implemented as BPF
> > +programs.
> > +See
> > +.BR sched_ext (7).
> > +.P
> >  Conceptually,
> >  the scheduler maintains a list of runnable threads for each possible
> >  .I sched_priority
> > @@ -529,6 +536,12 @@ priority (lower even than a +19 nice value with the
> >  or
> >  .B SCHED_BATCH
> >  policies).
> > +.SS SCHED_EXT: Extensible BPF Scheduling
> > +Tasks with this policy are managed by an extensible scheduler class,
> > +which allows for custom scheduling algorithms to be implemented as
> > +BPF programs.
> > +See
> > +.BR sched_ext (7).
> >  .\"
> >  .SS Resetting scheduling policy for child processes
> >  Each thread has a reset-on-fork scheduling flag.
> > diff --git a/man/man7/sched_ext.7 b/man/man7/sched_ext.7
> > new file mode 100644
> > index 000000000000..7ea467e18b84
> > --- /dev/null
> > +++ b/man/man7/sched_ext.7
> > @@ -0,0 +1,100 @@
> > +.TH SCHED_EXT 7 2024-04-13 "Linux" "Linux Programmer's Manual"
> > +.SH NAME
> > +sched_ext \- Extensible BPF Scheduler Class
> > +.SH SYNOPSIS
> > +.B #include <linux/sched.h>
> > +.PP
> 
> The use of P and PP seems very inconsistent.
> 

Ack.

-- 
Cheers,
Cheng-Yang

