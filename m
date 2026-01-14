Return-Path: <linux-man+bounces-4814-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AE9D214A1
	for <lists+linux-man@lfdr.de>; Wed, 14 Jan 2026 22:16:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 63685300DDA1
	for <lists+linux-man@lfdr.de>; Wed, 14 Jan 2026 21:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71B6A30DEA2;
	Wed, 14 Jan 2026 21:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b="p7dQpdYe"
X-Original-To: linux-man@vger.kernel.org
Received: from mx.treblig.org (mx.treblig.org [46.235.229.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EAC2ECEA5
	for <linux-man@vger.kernel.org>; Wed, 14 Jan 2026 21:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.229.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768425379; cv=none; b=knPI2p+WLZTzKv9TG0ykdkjBfWpAr6CLdkN8iZCA4kZZvsqxDrprjMcE9BpiVbi/pnDNkt3gu17/Cs8CXSBs4Z8fvZdPLq9mxjhFz6vaWV2myR/ZC99e7ZRCvWyJyaKk1WUw7SkrF1jeL2z2GVAqShT5roe4FHj5fwaAei/UsnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768425379; c=relaxed/simple;
	bh=or9AWBC+tO3cSBbxFOlS3liEumqyh2SeE38uiUwrvlU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VoU5t1Z1mLhfjbQRGkvWlP0eCgFGvlL85GfBrZa6rKKCt9ATYuFZxhZHqrKyqWtfwx+TuToHm3wPAXpwlMnF53RRquKNxgcGXTJLpCY2hY3YGVrakVB6peexh/t+BB61Mjub8rcThIV5dMbyy9CCcKGTQY3w0KaYYiy7IkIXsRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org; spf=pass smtp.mailfrom=treblig.org; dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org header.b=p7dQpdYe; arc=none smtp.client-ip=46.235.229.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=treblig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=treblig.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=a7wDCRj9NbE9iwWE0QYGEl7PxzgLx9pe5jV1Y4TTZQQ=; b=p7dQpdYeNgKXNyvo
	7jHqphrb3Rozyrrkwl5nOR5sp6a7vl7jp1HjlzSWECs0EG3k0wBif8jYd91YUh3zvLZTnJUU9F3CH
	J6wi3cPv3qmQb7cjBaJ+cTv9R5UbmKmhe43J17KIZgfjL8opzwKtuq9gC/iGMU7tW9w5p8tVc+eBE
	7rm+J8BGLV2oJSqfC8R0lvKHFPIL4HaqlBXyfVAo+mZQ5iM2M8l13rPQHgNVSUCE2DqUU62Vwu20h
	979KG0Qo/T9zr2hm1a2lVfJHYrkLF+Ci9B82tn/W/tJ/V58aT+/Px65/YryLnkLG9DYV0g23dfk0x
	GKyTqGwkjamDAFGtMg==;
Received: from dg by mx.treblig.org with local (Exim 4.98.2)
	(envelope-from <dg@treblig.org>)
	id 1vg8Dv-0000000En6s-1147;
	Wed, 14 Jan 2026 21:16:15 +0000
Date: Wed, 14 Jan 2026 21:16:15 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man5/gai.conf: Labels have a label not a precedence
Message-ID: <aWgHnyIYX2bhK1Kp@gallifrey>
References: <20260104220438.265626-1-dg@treblig.org>
 <aVroLT4toQaQD2nn@devuan>
 <aVrvS17o3Pq7e-Tq@gallifrey>
 <aWengydRnAZx37KF@gallifrey>
 <aWf5pZfDocAyWwWa@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <aWf5pZfDocAyWwWa@devuan>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.12.48+deb13-amd64 (x86_64)
X-Uptime: 21:15:36 up 79 days, 20:51,  3 users,  load average: 0.00, 0.00,
 0.00
User-Agent: Mutt/2.2.13 (2024-03-09)

* Alejandro Colomar (alx@kernel.org) wrote:
> Hi Dave,
> 
> On Wed, Jan 14, 2026 at 02:26:11PM +0000, Dr. David Alan Gilbert wrote:
> > * Dr. David Alan Gilbert (dave@treblig.org) wrote:
> > > * Alejandro Colomar (alx@kernel.org) wrote:
> > > > Hi David,
> > > 
> > > Hi Alex,
> > 
> > Hi Alex,
> > > > On Sun, Jan 04, 2026 at 10:04:38PM +0000, dg@treblig.org wrote:
> > > > > From: "Dr. David Alan Gilbert" <dave@treblig.org>
> > > > > 
> > > > > The numeric value on a label entry is a label which is separate
> > > > > from the precedences.  Labels are compared with other labels, not
> > > > > precedences.
> > > > 
> > > > Is there any source to verify this?
> > > 
> > > The two I checked are:
> > >   https://datatracker.ietf.org/doc/html/rfc3484#section-2.1
> > >     is the RFC itself, and it talks about the Precedence and labels
> > > as separate values.  Note how it's talking in terms of:
> > > 
> > >    If Precedence(A) > Precedence(B), we say that...
> > > and
> > >    The algorithms prefer to use a source address S with a destination
> > >    address D if Label(S) = Label(D).
> > > 
> > > So it's label compared to label and precedence compared to precedence.
> > > 
> > > The corresponding bits of glibc are:
> > > https://sourceware.org/git/?p=glibc.git;a=blob;f=nss/getaddrinfo.c;h=c0f496f96c752220e68bf0257d9ff1ffc624ebe6;hb=HEAD#l1525
> > > 
> > > where the label values are compared in Rule 5, and the precedence values
> > > are compared in Rule 6.
> > 
> >   Does that explanation I sent make sense?
> 
> Thanks for the ping, and sorry for being slow!
> 
> I've verified now, and have applied the patch.  Thanks for the patch and
> for the follow-up links and details!

Thanks!
(I think that's all my gai.conf changes for now; the fallout of me turning on IPv6
at home!)

Dave

> 
> Have a lovely night!
> Alex
> 
> > 
> > Dave
> > 
> > > Dave
> > > 
> > > > 
> > > > Cheers,
> > > > Alex
> > > > 
> > > > > 
> > > > > Rename the field.
> > > > > 
> > > > > Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> > > > > ---
> > > > >  man/man5/gai.conf.5 | 4 ++--
> > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> > > > > index 4aff0b0b9..ef330995d 100644
> > > > > --- a/man/man5/gai.conf.5
> > > > > +++ b/man/man5/gai.conf.5
> > > > > @@ -26,7 +26,7 @@ .SH DESCRIPTION
> > > > >  .P
> > > > >  The keywords currently recognized are:
> > > > >  .TP
> > > > > -.BI label\~ netmask\~precedence
> > > > > +.BI label\~ netmask\~label
> > > > >  The value is added to the label table used in the RFC\ 3484 sorting.
> > > > >  If any
> > > > >  .B label
> > > > > @@ -35,7 +35,7 @@ .SH DESCRIPTION
> > > > >  All the label definitions
> > > > >  of the default table which are to be maintained have to be duplicated.
> > > > >  Following the keyword,
> > > > > -the line has to contain a network mask and a precedence value.
> > > > > +the line has to contain a network mask and a label value.
> > > > >  .TP
> > > > >  .BI precedence\~ netmask\~precedence
> > > > >  This keyword is similar to
> > > > > -- 
> > > > > 2.52.0
> > > > > 
> > > > 
> > > > -- 
> > > > <https://www.alejandro-colomar.es>
> > > 
> > > 
> > > -- 
> > >  -----Open up your eyes, open up your mind, open up your code -------   
> > > / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
> > > \        dave @ treblig.org |                               | In Hex /
> > >  \ _________________________|_____ http://www.treblig.org   |_______/
> > -- 
> >  -----Open up your eyes, open up your mind, open up your code -------   
> > / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
> > \        dave @ treblig.org |                               | In Hex /
> >  \ _________________________|_____ http://www.treblig.org   |_______/
> 
> -- 
> <https://www.alejandro-colomar.es>


-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

