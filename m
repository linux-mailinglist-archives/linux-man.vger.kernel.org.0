Return-Path: <linux-man+bounces-4614-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A455CF16FB
	for <lists+linux-man@lfdr.de>; Sun, 04 Jan 2026 23:53:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 796293007698
	for <lists+linux-man@lfdr.de>; Sun,  4 Jan 2026 22:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3DD239E8D;
	Sun,  4 Jan 2026 22:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="lAB9L92W"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCF152F88
	for <linux-man@vger.kernel.org>; Sun,  4 Jan 2026 22:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767567198; cv=none; b=SlmE4bjnCDu7omwKsLOH6dUe4Isuf+FK+eXk7GBh+Q7WHthtEYgmMFmhniCxZ6t8WxM4ZeGW8U/lPt3URqrRUzoHYXbAWMB2RnHG1brmVsHZUF0RXuFT0QfQc/Q2llJqAN0KhssyNiN/5anN6mLxmN9SWuK+r5MiP6ZW6bidJP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767567198; c=relaxed/simple;
	bh=OleKpKW9lSKgjaT+itHLGHKyIJSvWFw4Lr6gZxEO8zA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kgf2fmsDTrU1pZalTj2dLMfGlYYv8WTchX3ID09lxAPuii/zG2A4Slv+ioofPq8jrTZ+tw/W45ajDb3DCIOpsy8CfMWyNmIUDrbg4w1ATvmVd4d7b6nmNDRG/v0v0E56mD2kcjqclYiVrCHTNPv8z9MkyvaDtaHhem5eVo1Zi/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=lAB9L92W; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=QVlBK8KocJKpRfY5gzGbyejF813/UDJa095+sCQRBI4=; b=lAB9L92WR7BvfEj0
	gQlkbMGXitG6QM4xEGpNwgqM0QvpR7YzArI/PgAWiRYWEOEG4XRqYwVCe43koTwDVGSvB7/EW34yM
	KPmoN3LmsVYdgOacGz0OcLoyH9pnYxKS1LK3quZD+rm9KV1zfrT2q9f0bmRizEyr7JAr6+Ufneh1f
	QceYl2NBKjoyl/5yTWP47g+xAs/tYV0WQiI4B1M5A2Q5IT4O2jrTiHIHops9WpvcXbVbhvHKQb9vC
	aY5Ic9MYQcKuyRlN1yD0WqDDiQi92R+gb3/+ZNm2YEds+dPzjWYITGlFqeENuBYHQDee+D2hD3pgO
	xtvIpgvWtE9MwnWeTg==;
Received: from dg by mx.treblig.org with local (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vcWyJ-0000000CJuH-26d1;
	Sun, 04 Jan 2026 22:53:15 +0000
Date: Sun, 4 Jan 2026 22:53:15 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man5/gai.conf: Fix RFC reference
Message-ID: <aVrvW_3F35jSS1RL@gallifrey>
References: <20260104214956.258199-1-dg@treblig.org>
 <aVrkdFXRaSJvzDx4@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <aVrkdFXRaSJvzDx4@devuan>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.12.48+deb13-amd64 (x86_64)
X-Uptime: 22:53:07 up 69 days, 22:29,  2 users,  load average: 0.00, 0.00,
 0.00
User-Agent: Mutt/2.2.13 (2024-03-09)

* Alejandro Colomar (alx@kernel.org) wrote:
> Hi David,
> 
> On Sun, Jan 04, 2026 at 09:49:56PM +0000, dg@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > 
> > Most of the RFC references correctly reference 3484, but the entry
> > in scopev4 points to 3438 instead.  It references section 3.2,
> > which 3438 doesn't have, but 3484 does have and talks about IPv4
> > addresses so looks right.
> > 
> > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> 
> Thanks!  I've applied the patch.
> 
> 
> Have a lovely night!

Thanks, and Happy New Year!

Dave

> Alex
> 
> > ---
> >  man/man5/gai.conf.5 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> > index d80c23311..4aff0b0b9 100644
> > --- a/man/man5/gai.conf.5
> > +++ b/man/man5/gai.conf.5
> > @@ -61,7 +61,7 @@ .SH DESCRIPTION
> >  .TP
> >  .BI scopev4\~ mask\~value
> >  Add another rule to the RFC\ 3484 scope table for IPv4 address.
> > -By default, the scope IDs described in section 3.2 in RFC\ 3438 are used.
> > +By default, the scope IDs described in section 3.2 in RFC\ 3484 are used.
> >  Changing these defaults should hardly ever be necessary.
> >  .SH FILES
> >  .I /etc/gai.conf
> > -- 
> > 2.52.0
> > 
> 
> -- 
> <https://www.alejandro-colomar.es>


-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

