Return-Path: <linux-man+bounces-2301-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 19003A1DB13
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 18:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CD5D167006
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 17:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D65717C224;
	Mon, 27 Jan 2025 17:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="ITgv8Brt"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05537134D4
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 17:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737998088; cv=none; b=L+E5mIoBW5fQOhQ2tVxZonMNtkrrn0AIYKdr2u4GG4cgbzhv51/HJBamRbquTlrxPl8saU6TrrsE1dnsXW1AT8js/6MiDy3tZoE0f9DvD+x3BuQg/74W5VPgw1mRvf7ekpnEP9ExG+oOU+D16RuxvZgx9SV+UqdgosiQ7MDQg5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737998088; c=relaxed/simple;
	bh=WjBTlNoWG6M1cbQKiaYATPMN2ted9wP2dXSjj6ZoFY0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nDlY7hQov7hy8gD95kkyAiaYwd6c5oaaV9pwS4RZMhArHDg7MFyIiVieaYUePYC06WC+Zb/FTx0XtaTAuj4NZ/1QEkBi8g4wrHzRJl6zfDOjAf5SPghPP8QCX42j2Jd82A0w8eaFJs5HYko1Dh1DuSv0OLhLbuYFd8HjBd5ZmH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=ITgv8Brt; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1737998084;
	bh=WjBTlNoWG6M1cbQKiaYATPMN2ted9wP2dXSjj6ZoFY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ITgv8BrtVuomsQLSunp98u1U43N6K7vFLW1p1FNjTDjTRCdSxPYttPhRg4aZjw2uP
	 BPmEKwDu2Vcbdgq/S2L+5dK6QG4HMDdtrbxIAYEbH7Y53OIeyRhP8Q0fvDrVSjGDrS
	 bLOwoqO7t2eN7Lj8GSxsWZeOnWd5T1vmk8G8iNEbf5d2aIcOg35UM0E4O00pZ8ibcW
	 Ez4YGp/wyfyzk7gjCDGNvSX2Xs5k+WWzJLhz5D29tRcH7/y+jIats3bzLv8qJANSD4
	 fBGknXHP54i60EyBz5L5QqDfGW+Ies+OfDmQgCL5JAn5YXzSS9r6I4v59lmjM/lof+
	 /Jgi3mvwgHm9w==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 4E63C7E3B0;
	Mon, 27 Jan 2025 12:14:43 -0500 (EST)
Date: Mon, 27 Jan 2025 12:14:43 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
 <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>

On Mon, Jan 27, 2025 at 04:53:10PM +0100, Alejandro Colomar wrote:
> Right.  But then, when do you need to do encoding?

Personally, my preference is that programs use the locale’s codeset
because I can override the locale codeset in the rare event that UTF-8
isn’t the correct option.  In my previous example, I was able to set the
LANG environment variable to jp_JP.SJIS so that I could run that old
software in an environment where pathnames were encoded in Shift-JIS.
If everything just always assumed a particular character encoding for
pathnames, then I wouldn’t have been able to do that.

That being said, I still don’t really know if that’s the best option.

> Programs will either receive the pathname from the command line, or
> read it from some file, or create one of its own.
> 
> When creating a path of its own, it should restrict itself to the
> Portable Filename Character Set, so encoding shouldn't be a problem.
> 
> When reading pathnames, they'll already be encoded suitably.
> 
> > > Instead, I think a good recommendation would be to behave in one of the
> > > following ways:
> > > 
> > > -  Accept only the POSIX Portable Filename Character Set.
> > 
> > This one isn’t quite a complete recommendation.  The POSIX Portable
> > Filename Character Set is just a character set.  It’s not a character
> > encoding.  If we go with this one, then we would need to say something
> > along the lines of “Encode and decode paths using ASCII and only accept
> > characters that are in the POSIX Protable Filename Character Set.”
> > 
> > > -  Assume UTF-8, but reject control characters.
> > > -  Assume UTF-8.
> > 
> > > -  Accept anything, but reject control characters.
> > > -  Accept anything, just like the kernel.
> > 
> > These last two also aren’t quite complete recommendations.  If a GUI
> > program wants to display a pathname on the screen, then what character
> > encoding should it use when decoding the bytes?
> 
> Just print them as they got in.  No decoding.  Send the raw bytes to
> write(2) or printf(3) or whatever.

I don’t think that printing is a good way for GUI applications to
display text.  I don’t normally run GUI applications in a terminal, so
I’m not normally able to see a GUI application’s stdout or stderr.  Most
of the GUI applications that I use display pathnames as part of a larger
window.  In order to do that, the GUI application needs to know which
characters the bytes in the pathname represent so that the GUI
application can draw those characters on the screen.

