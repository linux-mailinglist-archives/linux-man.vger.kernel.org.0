Return-Path: <linux-man+bounces-4613-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2B9CF16F8
	for <lists+linux-man@lfdr.de>; Sun, 04 Jan 2026 23:53:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A6A3130038E3
	for <lists+linux-man@lfdr.de>; Sun,  4 Jan 2026 22:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD4A61BCA1C;
	Sun,  4 Jan 2026 22:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="GhK6AOzY"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F417215ADB4
	for <linux-man@vger.kernel.org>; Sun,  4 Jan 2026 22:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767567185; cv=none; b=psusWiboKKKGAvWkN8rD9mK4552eNoRD6VOymMcbNMAzQpoM1ZCrSODGZoAqJ7ZJaL9h0IUPZndNXSol1l/9eh+5dI/6e/96UOQ4p2A5XkJDoK5/QocK6KSrOuopezpclhkj1n0VRyELLq4W6zwV/CFXex0rUgCGisr5tPmRG2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767567185; c=relaxed/simple;
	bh=j91UpTV9y73hTReQvNrYz5xJmemi9W39jpf+z9CmnGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VjjhWOsx//DWUdodbfTCN9DiskyWsL3biJQr4nbScIKnnGtmueWmW7rnSkP+7FP647dgz77ZMbE22A275jwA/vcrzosDgSyGcduMaLzBuycTGSN38TP8/Xc/cyMj+E+cLVl3RACT4zfTl2FlveXym2LlZJZV+1QL4i5a/49vK4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=GhK6AOzY; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=de+unCan86cETCaC/pB6kYnT/ABQHfMI2fHvKmfhuW4=; b=GhK6AOzYMefUM7u2
	JZivcbQIE+InWTsdG8w/clYs3K5Jra/FIDR3DrghW/skfgKmO9moJjzYcIFUwPR42Wf25BvZ2uBQo
	fcDdOGM3t6Toa1q8E9S5yIH7CtSzTDzfRJIPTviadxeJGqiermqjcxNB99DtDqDNcPavxORTTuncE
	LLFkEl9WMLi3a6PPgwsHevrO0q+VE7lYMYwQeDIQmyTtXF9AmUDjYROAHTzeiZktUBUrpBu4UUo5n
	a0Xt/DzydCFRFlvlghUppbVx/T3yvrwZfU1g5dTNKDQK2g9+YvQoHgOGbnSWqQY8KavPZzZ3gZhwh
	2RyedC/UGPVEXZ47rQ==;
Received: from dg by mx.treblig.org with local (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vcWy4-0000000CJtx-02yn;
	Sun, 04 Jan 2026 22:53:00 +0000
Date: Sun, 4 Jan 2026 22:52:59 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man5/gai.conf: Labels have a label not a precedence
Message-ID: <aVrvS17o3Pq7e-Tq@gallifrey>
References: <20260104220438.265626-1-dg@treblig.org>
 <aVroLT4toQaQD2nn@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <aVroLT4toQaQD2nn@devuan>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.12.48+deb13-amd64 (x86_64)
X-Uptime: 22:47:00 up 69 days, 22:23,  2 users,  load average: 0.00, 0.00,
 0.00
User-Agent: Mutt/2.2.13 (2024-03-09)

* Alejandro Colomar (alx@kernel.org) wrote:
> Hi David,

Hi Alex,

> On Sun, Jan 04, 2026 at 10:04:38PM +0000, dg@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > 
> > The numeric value on a label entry is a label which is separate
> > from the precedences.  Labels are compared with other labels, not
> > precedences.
> 
> Is there any source to verify this?

The two I checked are:
  https://datatracker.ietf.org/doc/html/rfc3484#section-2.1
    is the RFC itself, and it talks about the Precedence and labels
as separate values.  Note how it's talking in terms of:

   If Precedence(A) > Precedence(B), we say that...
and
   The algorithms prefer to use a source address S with a destination
   address D if Label(S) = Label(D).

So it's label compared to label and precedence compared to precedence.

The corresponding bits of glibc are:
https://sourceware.org/git/?p=glibc.git;a=blob;f=nss/getaddrinfo.c;h=c0f496f96c752220e68bf0257d9ff1ffc624ebe6;hb=HEAD#l1525

where the label values are compared in Rule 5, and the precedence values
are compared in Rule 6.

Dave

> 
> Cheers,
> Alex
> 
> > 
> > Rename the field.
> > 
> > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> > ---
> >  man/man5/gai.conf.5 | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> > index 4aff0b0b9..ef330995d 100644
> > --- a/man/man5/gai.conf.5
> > +++ b/man/man5/gai.conf.5
> > @@ -26,7 +26,7 @@ .SH DESCRIPTION
> >  .P
> >  The keywords currently recognized are:
> >  .TP
> > -.BI label\~ netmask\~precedence
> > +.BI label\~ netmask\~label
> >  The value is added to the label table used in the RFC\ 3484 sorting.
> >  If any
> >  .B label
> > @@ -35,7 +35,7 @@ .SH DESCRIPTION
> >  All the label definitions
> >  of the default table which are to be maintained have to be duplicated.
> >  Following the keyword,
> > -the line has to contain a network mask and a precedence value.
> > +the line has to contain a network mask and a label value.
> >  .TP
> >  .BI precedence\~ netmask\~precedence
> >  This keyword is similar to
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

