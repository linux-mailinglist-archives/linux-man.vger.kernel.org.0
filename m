Return-Path: <linux-man+bounces-2309-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B91A2015E
	for <lists+linux-man@lfdr.de>; Tue, 28 Jan 2025 00:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F21391652BA
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 23:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 506F91DC197;
	Mon, 27 Jan 2025 23:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="V32kPZkD"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB791DB153
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 23:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738019255; cv=none; b=Qxs2ygzt3t0dfFmkwDqb4HPX6xbp+lyvyz6GjZ80WClkKPKFU5dHKerVMZX/KjzvuCQetoTYWNMzClzjV3buEpAXUYi3QqYRVvZivXDUC5hD34CqqehvxT6/da4ojpEZFCxVDmxetwiVsyrEEcKPjEnS42JfT1h/QV2Kpfli6OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738019255; c=relaxed/simple;
	bh=7d9vUaI7PyBHoLveiFLPEd2ou1kVwTZOJmkU09ouWFg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AC/G3j7kvQCqbUNqs3rjoYGA+LtTS9fJPhLTcbUF2dnSHkAcJcDQ/C99if5uimCHoLw3i9zud76WjCZqYymEjr1RJyVFpebLWwxgWuA3+ZSMS+i4P6qc6v3/xWWaxE2jYnE+rr9idAl31ysvULGnIBIYhmH6DhuDmjBOoX8IgCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=V32kPZkD; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1738019251;
	bh=7d9vUaI7PyBHoLveiFLPEd2ou1kVwTZOJmkU09ouWFg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V32kPZkDXITmzgIB1qUtPeSk2n9UeS0WUnQrPimV8dBWvGi8OTYT+6YGPy/hQ7/gf
	 7ATMIYCzWeuyF+A0hT/axYfA9/F6dsQ+WADtMKYL+tS0kJLvpafrIhr2ZYQCMGlZaq
	 Rmfj9xhuVZZAgrK6QlB3xSPF67siVXgsOJ2x12ArhKC+g+G4lNN1GxCwxjmOj1J/JJ
	 2cjnLi/BZkCotkzFtwlYtxpIZOuozZNZKooEtOd8i1/PC14Gt7GCvn21xPHpm7yd1U
	 NiDVT6siCDuMFxm5VHHjgOaN7txZi6GqlRa4GdIxIEBVqs6JoG8SEw2xt0kgIHXd7L
	 JDcEa1Kb/OxBQ==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 314997E3B6;
	Mon, 27 Jan 2025 18:07:30 -0500 (EST)
Date: Mon, 27 Jan 2025 18:07:30 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>, =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <3hlim4xayawyffcqb4ykolrairbvsitn57p4jpwax2iqqqz6hw@4sn5qqdme2c6>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
 <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
 <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>
 <a3turtye3rcug5glnau3x6brxjlvkruu7unely5dpz6ttjr255@aurahmflvg2d>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a3turtye3rcug5glnau3x6brxjlvkruu7unely5dpz6ttjr255@aurahmflvg2d>

On Mon, Jan 27, 2025 at 06:37:40PM +0100, Alejandro Colomar wrote:
> [CC += наб]
> 
> Hi Jason,
> 
> On Mon, Jan 27, 2025 at 12:14:43PM -0500, Jason Yundt wrote:
> > On Mon, Jan 27, 2025 at 04:53:10PM +0100, Alejandro Colomar wrote:
> > > Right.  But then, when do you need to do encoding?
> > 
> > Personally, my preference is that programs use the locale’s codeset
> > because I can override the locale codeset in the rare event that UTF-8
> > isn’t the correct option.  In my previous example, I was able to set the
> > LANG environment variable to jp_JP.SJIS so that I could run that old
> > software in an environment where pathnames were encoded in Shift-JIS.
> > If everything just always assumed a particular character encoding for
> > pathnames, then I wouldn’t have been able to do that.
> 
> But if the program handles arbitrary strings, just like the kernel does,
> that would work too.
> 
> > > > > -  Accept anything, but reject control characters.
> > > > > -  Accept anything, just like the kernel.
> > > > 
> > > > These last two also aren’t quite complete recommendations.  If a GUI
> > > > program wants to display a pathname on the screen, then what character
> > > > encoding should it use when decoding the bytes?
> > > 
> > > Just print them as they got in.  No decoding.  Send the raw bytes to
> > > write(2) or printf(3) or whatever.
> > 
> > I don’t think that printing is a good way for GUI applications to
> > display text.  I don’t normally run GUI applications in a terminal, so
> > I’m not normally able to see a GUI application’s stdout or stderr.  Most
> > of the GUI applications that I use display pathnames as part of a larger
> > window.  In order to do that, the GUI application needs to know which
> > characters the bytes in the pathname represent so that the GUI
> > application can draw those characters on the screen.
> 
> I would do in a GUI exactly the same as what command-line programs do:
> pass the raw string to whatever API prints them.  If the string makes
> sense in the current locale, it will be shown nicely.  If it doesn't
> make sense, it will display weird characters, but that's not a terrible
> issue.  Just run again with the appropriate locale.

OK, but how does that API figure out what characters to display?  What
character encoding should that API use when drawing the characters?  I
think that it’s OK to replace the current recommendation, but
pathname(7) should really explain how such an API would figure out what
characters need to be drawn on the screen.

> For example, in the git repository of the Linux man-pages project, there
> are commits authored by наб <nabijaczleweli@nabijaczleweli.xyz>.  
> Whenever I see the git-log(1) in one of my systems with the C locale, I
> see weird characters.  I just need to re-run with the C.UTF-8 locale.
> 
> But it handles the bytes correctly, even if they don't make sense to the
> system.  If git(1) failed whenever a string doesn't make sense in the
> current locale, the repo would be corrupted sooner than later.

