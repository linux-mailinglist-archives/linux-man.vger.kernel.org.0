Return-Path: <linux-man+bounces-811-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 825FB8B1659
	for <lists+linux-man@lfdr.de>; Thu, 25 Apr 2024 00:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF7781C23B35
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 22:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7738716E873;
	Wed, 24 Apr 2024 22:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=simon.barth@gmx.de header.b="rNbGns7p"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CE616D9AF
	for <linux-man@vger.kernel.org>; Wed, 24 Apr 2024 22:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713998625; cv=none; b=DXc3FDGCx1k6+vWvMtttTDy2jstKMZkUQa4J4cBAGh+sxEGdnaWNrAwIrUChKnvyw0G6r14DjdcFoGb3vhMIZ591gfx2e4zj0krl6H58wEpd05zP30urXEUC6Msqj6JQe4xEaBGgLowbRycyX4PkCIFDrQYA2TVmwvoBJHVa/L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713998625; c=relaxed/simple;
	bh=PyaYp+3ErAU6bG4a48yee6Ika1HxM/YSulk1nHJyKxM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=la+Y4W0V7CpwwdRMT0PUw6EiW04GkwLy0Y374ecSkmtY/S7mNYQ7VxIghHa+cq6PdPRmDszUcvh4z8Fzl0EIM/z6yO/LrsXJ/kwRqn6BosF7HVIbSed3eNJMTAzF7LzqE2EO578o4qUixNb4VCLv2rQFJ9WX2EnUBrr4bVevN9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=simon.barth@gmx.de header.b=rNbGns7p; arc=none smtp.client-ip=212.227.17.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1713998616; x=1714603416; i=simon.barth@gmx.de;
	bh=s69hyyaFPv2lvXVRHuuAGOftA9wR1yvIBQ9WLG1msys=;
	h=X-UI-Sender-Class:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=rNbGns7pUhD3EEvs11+J/y2m9ItSH1wcxy9EdYUGm3BgiqiOGEw+SzECJSVj447F
	 tZnpYGR0GvaJu8s4iNSSxLbaC4vaTlFDf/zLtaCREVJX4T9zq0Brt9spQBudIsRgx
	 ZbQcpU+WQ5XIAvzTwBbItmrBPtUQybTmX3dXcifmT9P1YBj1GLRDPJbHcbzdzrvgL
	 uiv5LshoPUjkQfJL7vzza4EEbfJ2bYPFCUwGNnOIqmRlRct4Outq/8IyPTgrm0iwE
	 o4Jm7P4Uvx0gkw4cDyiSqSobegKxJkfXjMe1TveJd2XT8Xmi8hsK9x4SDnQbZAwdE
	 N5gOedKY5ot3dh16CA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from localhost ([80.146.185.163]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mv31c-1sqUW01snI-00r4AA; Thu, 25
 Apr 2024 00:43:36 +0200
Date: Thu, 25 Apr 2024 00:43:35 +0200
From: Simon Barth <simon.barth@gmx.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] slist.3: wfix
Message-ID: <ri344dcxgwoni4rlwmn6g5yu5zpw2a6tavmjocpldgxil7i7wm@rzzh7itpv6gj>
References: <20240424000949.65424-2-simon.barth@gmx.de>
 <Zijb98AgXyX6VgYU@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zijb98AgXyX6VgYU@debian>
X-Provags-ID: V03:K1:tp/jvybRtghRs3FS8WvFmBS1n4UVjMSf0Y+iFa8zVJhSgf5gVo/
 msClDMoeyLHIIsBkYmhx2O4Me9jkpW3yrLvqWhTr8EBOqjXvlTecH4ZagqV2lVLAkMIkUuM
 Yx7MboELSoNtL9cbu8nHDObIsYCf0qfn27rYrS7JYEVP8Ksp9fOQz8/hKeSE/Crcb5JUllJ
 tYOYwKY/VunRdfLzcpIVg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:dTvC4q7/NDQ=;MjGOzV8Z/cbAB+ogapjsWzRzimk
 2LKcZueKLyAqucyyvtRXBGopvo3cEdhUr0c8drc7jRghCbFg8QAEE8ZpMdXFvYP13rdi6QYl4
 4qu8pS4GtoLdj02v9b5fDzwV7ozwfRjxGqHivIqPZAE+3lKwb461FJanPjtI8B11cPMTYUvtT
 sBvAnYvbpCaevaix1ZaJiWkEkMdN3v1EezZN244u3jyc8trVwwHafXxgtaqo1KaCnMH1Ah5rI
 gqGz7YQzVPG+lUWq1AfjhixeP0B2XoWo2OQ+EnB08PvhM5RKqDjDzLYSGpDkuLicN3P2y51hP
 lfcxecGGVoGhfkn1/aGx8npk3bB+bDEw1teYgpc1FsyauBf89wNQok0yaaJwO6Y+OI4Ksg5MV
 ynTxg95OJRAntevsMFEtlXOA6qzzP0YJ+ELqRYDMk8sPPCVesxu2kr8tVd8upcASXdLvLgc5K
 JzCyPNBWLj396tfnEDkUqZsFQzU9EUI5sLZBLYm4uDoVgQhI1IkCa2SuR716WnrulxsrtH2WE
 6AOiFj8/1Y+M3e0/saiAah0Fn/QQmuuF76YPivvKFuVCW/3xjUVZRKFT4i5MLEOZcQpOJZ+A2
 WBePnB8e+7yIxvHeOW1X6P8e87zmB2ZaIHcqEVIWhwKYWsaFnOd0NOVoR0h4FSA9kWwAlYWg6
 2/waKd4mHi5gFAfcz6Q+Ww2fFYaCKTc5F+C9IwrzCgjO3UhaQa8JshKaUPBWJIKHbLqQKJf7d
 AUT20Gpk0JrsvNANWghBowI3aBlAqm+uzVyEjN0bf3OmAyup9LlScHN2qFCvHDaUjPLi2Pkdn
 E6LwMYGqAdMwGknPsw4HXJlwMDakZ73Re/wvOfCfkUP2E=
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Wed, Apr 24, 2024 at 12:16:23PM +0200, Alejandro Colomar wrote:
> On Wed, Apr 24, 2024 at 02:09:50AM +0200, Simon Barth wrote:
> > This page is about singly linked lists, not doubly linked lists.
> >
> > Signed-off-by: Simon Barth <simon.barth@gmx.de>
>
> Hi Simon,
>
> Patch applied.  Thanks!
Thanks a lot! The contribution process was easy and straight forward
once I got the mail setup running!
>
> Have a lovely day!
> Alex

Same to you!
Simon
>
> > ---
> >  man3/slist.3 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/man3/slist.3 b/man3/slist.3
> > index fdb045aee..02745286b 100644
> > --- a/man3/slist.3
> > +++ b/man3/slist.3
> > @@ -68,7 +68,7 @@ Standard C library
> >  .\" .BI "                        SLIST_ENTRY " NAME );
> >  .fi
> >  .SH DESCRIPTION
> > -These macros define and operate on doubly linked lists.
> > +These macros define and operate on singly linked lists.
> >  .P
> >  In the macro definitions,
> >  .I TYPE
> > --
> > 2.44.0
> >
>
> --
> <https://www.alejandro-colomar.es/>



