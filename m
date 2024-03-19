Return-Path: <linux-man+bounces-672-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 556A687FB6B
	for <lists+linux-man@lfdr.de>; Tue, 19 Mar 2024 11:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9088282C77
	for <lists+linux-man@lfdr.de>; Tue, 19 Mar 2024 10:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A0677D098;
	Tue, 19 Mar 2024 10:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mMnOXbur"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4A053379
	for <linux-man@vger.kernel.org>; Tue, 19 Mar 2024 10:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710842723; cv=none; b=eJ2mT+9kV8pvu0XFmhzE69LJTI1O3bdlT9jESg6Fm7CR4jcTYn5fbUlgsxxI68w/WoPtgrT0lqs7k8XuZ52qw8BdT4rP8Jyh7CrLORpRo2vfZhqzOfNKvp5GeZO1cHQ8vGowl8dHe9733eCVIWQnpTqJw7r0e0mDnPdqVNOoh+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710842723; c=relaxed/simple;
	bh=zvKcEiJIvqbYmm1uZUI4rnc7uzIBlraQryRtNKlQuog=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cZCABA4YD2NJWn9xzeOSR9cAGqxKU0RNGVvGDu44R76hbMR/sk8Dy0IJwP5luYVpyaP7SHLT2XmTTFvlGxRAL6LsxEi6vJ4g3hKLGVo0/Omr+Qi18P4DouMPW0dT/mLuha/AYaSt4SaTsiir/ovvXgW5turs04upp6eVxPwmpFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mMnOXbur; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a46d0a8399aso221442766b.1
        for <linux-man@vger.kernel.org>; Tue, 19 Mar 2024 03:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710842720; x=1711447520; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BqfYjZ0mWocE9qKZJLfQWs8CXcuQaPl+j9fAdAPTbOM=;
        b=mMnOXburzxzmP9UscX5ChKUNFi64kUwDxXMdA00UUkfoKRrGJLz7bSmIXxi8pEMsYh
         FlIaspQ3K3SiTqCRK6Ofc1n0u493vrdXucN8oLTD6VK5/EkcOpAXHsIKGHUacg/pm/8Y
         OqUZWGy8Dgk080850Zsq0yd+krFPH2t3mJV+UWbUUaOcqDARCwNGM9mPQdtQ1tZ6cKGw
         Hi+kTt4gtfSDoiGwZsDLtUrwVEc9Z2U9gulE6dOu56Cne4JtwEykebp5H+T6jlueddsm
         kZ93bDIgObwPmq80OjOMYbu06hTpjgVM4JM0ocJUwBRAkkkMj9QaVFscBDKy5mYFNcw3
         ujsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710842720; x=1711447520;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BqfYjZ0mWocE9qKZJLfQWs8CXcuQaPl+j9fAdAPTbOM=;
        b=ma3PIcvoQc6FOFpljZHc1xFvmA7qrkEOTkm414wvuPBfgGv3u47OAoEsVAA44Ct+LS
         R54ZC3VVhCwiJlbUlehmqjDEXPXenOjsbA1O1YTWKwW0s7PEVlw8DvONROwSmejI+VI9
         J3zl5PjY0f0viIlUGFNz39/hqUvzQZlIvP3A3lVsmNPi++HJbdAqoVthDYwUVTT7oqty
         2Btpk83dAuxPtu05VGf2taEs65XXfPxjw7RtdA8aSAXZ6oFV4VFcWYZNBQ/b/MZ3+m5H
         YRjEl0p5kEh5aDSijgD2/MRQNibsjAV/0RdYhMUttQllscwxq3GjTGVdRN9rg9xWDt92
         nL1A==
X-Forwarded-Encrypted: i=1; AJvYcCWTh2Z6vWlU7ObHd3HN3fqOZ4ZpK6yD1IH0J4QHjcMDLnBxq2woTA3zQaRZj+fmaMEt5a/2cCsYVQKeaNuA4udgpW0xT6Dvc/Yh
X-Gm-Message-State: AOJu0YxyUtTn6VqSvxgqtr+9f1sx01zGjKfYQABxqXwI6xngnb2gzXFn
	RlcYQ2Pi/pCLkkoWkgDVmr/nJgUdiDiUQfS5iRy7Jigg66EDsq45jbYZKiOYWafvnunw3b5+WdT
	2PUrwwXHLJNc4bs3+3fBg7WRbhS0=
X-Google-Smtp-Source: AGHT+IEEjfk9PCp34Ydpo1m1sejB38rRgBmJ3/yhM9PzIroSqbUQKsPu2gj2WQO5BN5SEV8wNoYhCTRsX2C8VfnIwhY=
X-Received: by 2002:a17:906:af06:b0:a46:be81:fdd6 with SMTP id
 lx6-20020a170906af0600b00a46be81fdd6mr1995045ejb.32.1710842720273; Tue, 19
 Mar 2024 03:05:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240316-weighted_interleave-v4-1-6ab516f12ced@memverge.com>
 <ZfYJ7MQdjRC3-mzN@debian> <CE2DBC36-6297-4B9E-BA65-F14129A927EB@memverge.com> <ZfhZKLOVh9AOsWjr@debian>
In-Reply-To: <ZfhZKLOVh9AOsWjr@debian>
From: Stefan Puiu <stefan.puiu@gmail.com>
Date: Tue, 19 Mar 2024 12:05:08 +0200
Message-ID: <CACKs7VAwnBuz6Lsk57i70-OgrBEz-0FuFUD_O2PPZrc3UUE4Qw@mail.gmail.com>
Subject: Re: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
To: Alejandro Colomar <alx@kernel.org>
Cc: Svetly Todorov <svetly.todorov@memverge.com>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Gregory Price <gregory.price@memverge.com>, 
	"Huang, Ying" <ying.huang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Mon, Mar 18, 2024 at 5:09=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> On Mon, Mar 18, 2024 at 02:38:48PM +0000, Svetly Todorov wrote:
> > Happy Monday Alex,
>
> Happy Monday Svetly!
>
> > Thanks for looking at this over the weekend! Hopefully
> > not too many more changes to go.
>
> Nah, I think we're almost done.  The patch LGTM.
>
> > > We should document the kernel version that added this.
> > > Please look for other (since ...) in the same page
> > >
> > > Have a lovely night!
> > > Alex
> >
> > I was referencing MPOL_LOCAL in the same page and there are
> > two commits listed under it:
> >
> > > .BR MPOL_LOCAL " (since Linux 3.8)=E2=80=9D
> > > .\" commit 479e2802d09f1e18a97262c4c6f8f17ae5884bd8
> > > .\" commit f2a07f40dbc603c15f8b06e6ec7f768af67b424f
> >
> > I want to add a similar comment for MPOL_WEIGHTED_INTERLEAVE
> > but I=E2=80=99m not sure what the equivalent would be.
> > I=E2=80=99m thinking to have something like
> >
> > > .BR MPOL_WEIGHTED_INTERLEAVE " since (Linux 6.9)"
>
> Yes, the above is fine.
>
> > > .\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
>
> And yeah, this is good too.
>
> > Where fa3bea... is the commit in the kernel git
> > for the weighted interleave patch:
>
> Yup.  That commit is already in Linus's tree:
>
> alx@debian:~/src/linux/linux/master$ git describe --contains fa3bea4e1f82
> fatal: cannot describe 'fa3bea4e1f8202d787709b7e3654eb0a99aed758'
> alx@debian:~/src/linux/linux/master$ git describe fa3bea4e1f82
> v6.8-rc5-108-gfa3bea4e1f82
> alx@debian:~/src/linux/linux/master$ git log --oneline torvalds/master | =
grep fa3bea4e1f82
> fa3bea4e1f82 mm/mempolicy: introduce MPOL_WEIGHTED_INTERLEAVE for weighte=
d interleaving

I think you can do a simple:

$ git branch --contains fa3bea4e1f82
* master

Just my 2 cents,
Stefan.

>
> > https://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm.git/commit/?h=
=3Dmm-stable-2024-03-13-20-04&id=3Dfa3bea4e1f8202d787709b7e3654eb0a99aed758
> >
> > (Forgive me, not sure if there=E2=80=99s a way to shorten long links li=
ke that).
>
> No problem.  I don't either.  :)
>
> > I can=E2=80=99t tell why there are two commits listed under MPOL_LOCAL,=
 though.
>
> Maybe one commit significantly changed the feature.  Don't worry;
> normally there's just 1 commit listed in the comments.
>
> > Do you think just fa3ea... would be sufficient?
>
> Yup!  Please send and I'll apply already.  (And remember to add the
> 'Reviewed-by: "Huang, Ying" <ying.huang@intel.com>'.)
>
> Cheers,
> Alex
>
> >
> > Svetly
> >
>
> --
> <https://www.alejandro-colomar.es/>
> Looking for a remote C programming job at the moment.

