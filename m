Return-Path: <linux-man+bounces-2872-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B52CFAB1314
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:15:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B46083B0FD3
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 12:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D18612900A1;
	Fri,  9 May 2025 12:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=cwi.nl header.i=@cwi.nl header.b="qDzcXWr2"
X-Original-To: linux-man@vger.kernel.org
Received: from fester.cwi.nl (fester.cwi.nl [192.16.191.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D281290BBA;
	Fri,  9 May 2025 12:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.16.191.27
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746792905; cv=none; b=l55D6xLPSMZ5NaL7FqjxBbNNuhn+kb3ec5XtYzy2Xanzs/ROv0MZ7ZKxZePN+nSRccxrR45//0hvP3CXvI6ej+cYqC5jhrNVFsUkqTm05Vg2y5o+lXzf9p4F29cp8g30IhtUhpA4YWwoLo4xkqABHGLieqSvI47bPbeKr8Q7acw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746792905; c=relaxed/simple;
	bh=w8lf4aCattWy655wtywesndN9RyYC3XakzWhwxDIkqs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ptvjdGahjj17oX/T4WM8EGPlOhgEXR3rVZifDY2QRi3emLJnnV6rOa8tbawGPnvQL4/s2cgDIN/Aw9+bvbKJjXniagLkG638TOTNTaEOwn1nJsIfyJdf5MfQRrziBAcIOmfxVPvZcisvdWetp6VfJC3KOrDtuBEr8IxaOlPoMHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cwi.nl; spf=pass smtp.mailfrom=cwi.nl; dkim=fail (1024-bit key) header.d=cwi.nl header.i=@cwi.nl header.b=qDzcXWr2 reason="signature verification failed"; arc=none smtp.client-ip=192.16.191.27
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cwi.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cwi.nl
Received: from localhost (37-251-114-171.fixed.kpn.net [37.251.114.171])
	(authenticated bits=0)
	by fester.cwi.nl (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTPSA id 549CEsxS029925
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 9 May 2025 14:14:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cwi.nl; s=default;
	t=1746792895; bh=w8lf4aCattWy655wtywesndN9RyYC3XakzWhwxDIkqs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qDzcXWr2dtvVzEtsuHi+5XUrgejNMbWe0K5uxwUGfJ0urKHt5ESXxwfrkjvGNlRw3
	 X9xLuXpW9NCkHIe9/rLvKyvxADvAMiy+3Bc/bdQHk/E+PRH4KBU0EH6vSv4BPFAWEh
	 x3y8WlkgdH8IDw3krxXsEGml8hON4SqICMsmQS34=
Date: Fri, 9 May 2025 14:14:54 +0200
From: "Andries E. Brouwer" <aeb@cwi.nl>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <20250509121454.GA952723@if>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>

Hi Alejandro,

> > I wonder about the legal status of such a change.
> > There is ownership of the pages, and a license that allows
> > others to do certain things.
> 
> I also wonder about it.  We discussed it for several (~3) months, and I
> documented links to the discussion in the commit message:
> 
> commit 9f2986c34166085225bb5606ebfd4952054e1657
> Author: Alejandro Colomar <alx@kernel.org>
> Date:   Fri Apr 11 02:19:48 2025 +0200
> 
>     *, CREDITS: Unify copyright notices
>     
>     Link: <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
>     Link: <https://www.linuxfoundation.org/blog/blog/copyright-notices-in-open-source-software-projects>

So I read this last link, and see

"Don’t change someone else’s copyright notice without their permission
You should not change or remove someone else’s copyright notice unless
they have expressly (in writing) permitted you to do so. This includes
third parties’ notices in pre-existing code."

The main topic of that link is how one should document new contributions,
and writing "by the contributors of the foo project" is OK for new stuff,
of course provided the new contributor agrees.
In my opinion it is illegal to change existing copyright notices,
unless you get permission from all people involved, which seems unlikely.

Andries

