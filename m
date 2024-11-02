Return-Path: <linux-man+bounces-1833-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5567A9BA220
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 20:18:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C45411F211C0
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 19:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4CE119923A;
	Sat,  2 Nov 2024 19:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="siV35kK1"
X-Original-To: linux-man@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB7F69474;
	Sat,  2 Nov 2024 19:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730575086; cv=none; b=qAd5V8qVCseqLCptWlk48TqhcDQov6m/l2xMDM81HSox/jCS6H+tA751ouNFFMiSCH1tnJ9MVWc1ckwudvAF5bIcT5r5e2pLoFVR5X2tPqBxzKcZu6GpTMH6XfDCcmebs5B++6WOeZbGx30wG8KVQ5V6vZOiDpEYyc4QBH2h7dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730575086; c=relaxed/simple;
	bh=FvlFwpJDSO+d5NYtpPrqV+dgkHif69q8Gp1faalEoHQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m5q29lmFQ97ktq9uHWie/tKMfjSaAf7Gi+HyCW1EpzF5k0DchypAyImphTwOPzFAAQim0SsMXUmzD7rMHbI5fgGcMKW1JO6/2Kf1rRyrvhs7n0ZqWyXsXmaVRiWmHOm6ZFGqWJIwkBYilSXeHvOCvcJRbvVkIH6m9/c/bIwOyuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=siV35kK1; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=gRdoADem0zi3UiPGufevBBdXeee4wC93CBeg2OV7GkM=; b=siV35kK1g1+QJ3GQvf6cmw53CE
	FRCDIEOreFqbmhbkCLZsSHAm4yeYhjJ5gKOWRUahEOiLnDvibrxUNzV2LLRsf89e8yRVbDTzIaBI8
	moOd8grqJqCQ6pEEO3yVxO1PmGYeEyXxwZBuXUdeICBocNDgVNiGssk7VPockapDNesdotdwBNpmt
	BJXcpNbaTTj1LfSn45EjlIYHYje4DY6AinU7TN+K9g2TigsS2ug4Lld7Ddo76dK93TAuvTTlzy6In
	MmEtnJ9oo3AOruesWjn9+hoH79ncjg2n1+czjydf8jl0P4jCF/1RnBGrwco7fqljjWYcecGeEs/UN
	c72enfNA==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <cjwatson@debian.org>)
	id 1t7JSZ-00AqcD-D6; Sat, 02 Nov 2024 19:06:55 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
	by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <cjwatson@debian.org>)
	id 1t7JSY-0044X1-0k;
	Sat, 02 Nov 2024 19:06:54 +0000
Date: Sat, 2 Nov 2024 19:06:53 +0000
From: Colin Watson <cjwatson@debian.org>
To: "G. Branden Robinson" <cjwatson@debian.org>
Cc: Alejandro Colomar <alx@kernel.org>, Ian Rogers <irogers@google.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <ZyZ4Tfxfr7M-EqUo@riva.ucam.org>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	Ian Rogers <irogers@google.com>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org, groff@gnu.org
References: <20241015211719.1152862-1-irogers@google.com>
 <20241101132437.ahn7xdgvmqamatce@devuan>
 <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <20241101200729.6wgyksuwdtsms3eu@devuan>
 <20241102100837.anfonowxfx4ekn3d@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241102100837.anfonowxfx4ekn3d@illithid>
X-Debian-User: cjwatson

On Sat, Nov 02, 2024 at 05:08:37AM -0500, G. Branden Robinson wrote:
> On GNU/Linux systems, the only man page indexer I know of is Colin
> Watson's man-db--specifically, its mandb(8) program.  But it's nicely
> designed so that the "topic and summary description extraction" task is
> delegated to a standalone tool, lexgrog(1), and we can use that.
> 
> $ lexgrog /tmp/proc_pid_fdinfo_mini.5
> /tmp/proc_pid_fdinfo_mini.5: parse failed
> 
> Oh, damn.  I wasn't expecting that.  Maybe this is what defeats Michael
> Kerrisk's scraper with respect to groff's man pages.[1]

How embarrassing.  Could somebody please file a bug on
https://gitlab.com/man-db/man-db/-/issues to remind me to fix that?  (Of
course there'll be a lead time for fixes to get into distributions.)

> Well, I can find a silver lining here, because it gives me an even
> better reason than I had to pitch an idea I've been kicking around for a
> while.  Why not enhance groff man(7) to support a mode where _it_ will
> spit out the "Name"/"NAME" section, and only that, _for_ you?
> 
> This would be as easy as checking for an option, say '-d EXTRACT=Name',
> and having the package's "TH" and "SH" macro definitions divert
> (literally, with the `di` request) everything _except_ the section of
> interest to a diversion that is then never called/output.  (This is
> similar to an m4 feature known as the "black hole diversion".)
> 
> All of the features necessary to implement this[2] were part of troff as
> far as back as the birth of the man(7) package itself.  It's not clear
> to me why it wasn't done back in the 1980s.
> 
> lexgrog(1) itself will of course have to stay around for years to come,
> but this could take a significant distraction off of Colin's plate--I
> believe I have seen him grumble about how much *roff syntax he has to
> parse to have the feature be workable, and that's without upstart groff
> maintainers exploring up to every boundary that existed even in 1979 and
> cheerfully exercising their findings in man pages.

lexgrog(1) is a useful (if oddly-named, sorry) debugging tool, but if
you focus on that then you'll end up with a design that's not very
useful.  What really matters is indexing the whole system's manual
pages, and mandb(8) does not do that by invoking lexgrog(1) one page at
a time, but rather by running more or less the same code in-process.  I
already know that getting acceptable performance for this requires care,
as illustrated by one of the NEWS entries for man-db 2.10.0:

 * Significantly improve `mandb(8)` and `man -K` performance in the common
   case where pages are of moderate size and compressed using `zlib`: `mandb
   -c` goes from 344 seconds to 10 seconds on a test system.

... so I'm prepared to bet that forking nroff one page at a time will be
unacceptably slow.  (This also combines with the fact that man-db
applies some sandboxing when it's calling nroff just in case it might
happen that a moderately-sized C++ project has less than 100% perfect
security when doing text processing, which I'm sure everyone agrees
would never happen.)

If it were possible to run nroff over a whole batch of pages and get
output for each of them in one go, then maaaaybe.  man-db would need a
reliable way to associate each line (or sometimes multiple lines) of
output with each source file, and of course care would be needed around
error handling and so on.  I can see the appeal, in terms of processing
the actual language rather than a pile of hacks that try to guess what
to do with it - but on the other hand this starts to feel like a much
less natural fit for the way nroff is run in every other situation,
where you're processing one document at a time.

Cheers,

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]

