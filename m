Return-Path: <linux-man+bounces-1161-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0BE905C8F
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 22:10:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCA451C21B78
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 20:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0D984A4C;
	Wed, 12 Jun 2024 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="U4Er/UAg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BECC54BD8
	for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 20:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718223033; cv=none; b=fTTck9yW3/VSypqRKUsU4V5Ufb07wVcIlRhBj2GgMrZ440e5eUdeMaDhRKUgPR6JDPbtYEiU6poiI/ztTjwBgatOSdoh133R6ddFMwH8w9AIFoJPpzjQJ58W6GFpZtnZiya/8QS+rpGnLaVfXGR3/Txo82Vby5UHJdcdQ9/L1NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718223033; c=relaxed/simple;
	bh=llb5SFVP5yWjj1HjVFKIvT07ZL/wd68YsRtZD13oQkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lhnt1mL/M12hpau72rCERnyS71fjUaJ37x6ahau2J3tSUrWGGFTLHdHCnYs4ZeTE4TKE04TXEAYYUNsooC2+I+BFGXhwetOv8oSgnmd4yOlkzouJh4HRV3+kILCz2HS3mF4wg3pQDTxQvhAEn2S3yiGSefJaEVBr8agqoy9ZTb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=U4Er/UAg; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1f70c457823so2633515ad.3
        for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 13:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718223031; x=1718827831; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9PoxUuwHLnjiUtXnUWXv9Othgam+YGBIvUQVy/bZtMA=;
        b=U4Er/UAgowJX93aPx6cYh9Mj4uq4vPP+IqGZoEl7AYC+BF4j9ve4YBbxlya5N89Dii
         cjlfUTyA5DRMOyHnFrPkapC+QS+c+amclayyMPie0AbbsvM2D8dZMAZZ8YhZ4O5pse2s
         ZjkBAc9v7DLHCcuHzCfkfwX9OAzmbMERhBpSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718223031; x=1718827831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9PoxUuwHLnjiUtXnUWXv9Othgam+YGBIvUQVy/bZtMA=;
        b=JigJf9CfZaopGFfThF1J0+xDbosxZCAiO2gHWy9s4wxIkZxg0tZ4YbDwPg8jXFktA7
         HQZ8wNe330oX+GVQMY5hY43oUvyUELkydesjVLwVt0WZ/ozzgXinlUWdI2fEjNRC/Kbj
         kmRa68HzWT+gOcRFYaOr1Ckw6ZAwWAsMHhkx+aoWat4df+vYqTVy/lOG6zp13hcsVFkb
         ifkBpeRSClgl/z2lJkaFQ7HwwnoaTK65jn1ncdmVBU37FtktNSPVx3OkbpA+QCjTlsRj
         t8Sq5ps2XBfo5jXm5bZzlbRYKdgQwjel8mkBmsBAHng2/zBVRyn8Kqxs3l2S/vnSfr2b
         pZ2g==
X-Gm-Message-State: AOJu0Yx1uxOp3+rK7Dw3Ba+E1jCztK6TMPPBbXRIfP+I+TS6DL3dJ835
	sUp/qxR0eYwolOZfx8HXM61vjKMTLmkyHgbY33pXNC03ce/SuTiJld/4XBMZDQ==
X-Google-Smtp-Source: AGHT+IFzHGTvY5SAncu5i9tKveCbASLDQi9MWfXaSGm8gNBKfiUkmq3im42UmLTtcCDJXaxFCqPIvw==
X-Received: by 2002:a17:902:e543:b0:1f3:2a25:9361 with SMTP id d9443c01a7336-1f83b74fbc2mr36642035ad.64.1718223031294;
        Wed, 12 Jun 2024 13:10:31 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:90ba:9f8:1a32:b765])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-1f71ad56202sm57230105ad.276.2024.06.12.13.10.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jun 2024 13:10:30 -0700 (PDT)
Date: Wed, 12 Jun 2024 13:10:29 -0700
From: Brian Norris <briannorris@chromium.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] sched_setattr.2: Document sched_util_{min,max}
Message-ID: <ZmoAtQrMEaWKauA6@google.com>
References: <20240524190829.2503648-1-briannorris@chromium.org>
 <erkmfrnua26323vx26kmzv7ynrt2vpub3pmrotr4wmvlujpfyi@42xwmyjyjt22>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <erkmfrnua26323vx26kmzv7ynrt2vpub3pmrotr4wmvlujpfyi@42xwmyjyjt22>

Hi Alejandro,

Thanks for the look! A few comments and questions.

On Sun, May 26, 2024 at 12:36:58PM +0200, Alejandro Colomar wrote:
> Hi Brian,
> 
> On Fri, May 24, 2024 at 12:08:28PM GMT, Brian Norris wrote:
> > --- a/man/man2/sched_setattr.2
> > +++ b/man/man2/sched_setattr.2
> >      u64 sched_runtime;
> >      u64 sched_deadline;
> >      u64 sched_period;
> > +
> 
> Please don't use blank lines in the source code.  They trigger a
> warning.

Oops, I probably should have gotten further into the documentation to
figure out how to run the linters. Indeed I see the warning now, and
I'll make sure I don't add more lint in the next version.

> > +These flags indicate that the
> > +.I
> > +sched_util_min
> > +or
> > +.I
> > +sched_util_max
> > +fields, respectively, are present, representing the expected minimum and
> > +maximum utilization of the thread.
> 
> Please use semantic newlines.
> 
> $ MANWIDTH=72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'

I'll give that man page a better read for my next submission. Thanks for
the callout.

>    Use semantic newlines
>      In the source of a manual page, new sentences should be started on
>      new lines, long sentences should be split  into  lines  at  clause
>      breaks  (commas,  semicolons, colons, and so on), and long clauses
>      should be split at phrase boundaries.  This convention,  sometimes
>      known as "semantic newlines", makes it easier to see the effect of
>      patches, which often operate at the level of individual sentences,
>      clauses, or phrases.

I'll do my best to interpret what the best "phrase boundaries" are. I
don't think the writing always has enough punctuation breaks to nicely
break into 80-char pieces.

> > @@ -353,7 +398,6 @@ .SH ERRORS
> >  .I attr.sched_flags
> >  contains a flag other than
> >  .BR SCHED_FLAG_RESET_ON_FORK ;
> > -or
> 
> This change seems to be unrelated to this patch, right?

I suppose it's unrelated. At first I was going to add new EINVAL
descriptions to this paragraph, and I found that it had an odd
(incorrect?) use of too many "or". But then I simply broke out an
additional EINVAL section, which makes this change less related.

Side note: on second thought, it probably makes sense to split this
paragraph into multiple anyway, since the pattern

  "condition A; or condition B; or condition C [...]"

gets a bit hard to read with sufficient number of different conditions.

If it's preferred (and based on your comment, it probably is?), I'll
make corrections in separate patches.

> >  .I attr.sched_priority
> >  is invalid; or
> >  .I attr.sched_policy

Regards,
Brian

