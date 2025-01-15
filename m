Return-Path: <linux-man+bounces-2236-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF05A12887
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 17:21:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72FBF7A29B0
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 16:21:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D2514A60C;
	Wed, 15 Jan 2025 16:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="m6NDVbUD"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC584D8DA
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 16:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736958073; cv=none; b=S/tiA3AugnjNxsAlK3xCMGUVaxMkxx1AglWl9KKoGsUWdaqvnF6cQcmCRLFUJW4A1XB37lXXs9KWgwIojz8wTGURWp7CSi9oZFVpNmnx468BoALGYHULeDYvmmjv4hkGWzrvlfynqKkgSY+ezMF/aJWr1J/IUS4KDWlYJrEakE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736958073; c=relaxed/simple;
	bh=LzerSbXxqHZnl48xC50zNKggwHAnn+t8cF2p4fs5wns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MxuBh/mLO4QaU/gAP5ArcjBW06CDaEn982TjntB7nE/NQq+z84bbC5cOBXbNevkNIPjRy0ZpQVW2ZJAlgnEuHLbHx+9I0kJeL5GPuHoPWtO36Oq4183BNjL7X66IHBrvsG7c09VP0fJYMGFQRwgf82pZ0cZx+d/YV6dzP4Vi4Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=m6NDVbUD; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1736958063;
	bh=LzerSbXxqHZnl48xC50zNKggwHAnn+t8cF2p4fs5wns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m6NDVbUDG3XLSUhcHo9z2dxtseZVVsgaTkmB1cZzfJWdyRqFiLFcs0dBEVIZhJXCl
	 HFreglg2WtTufYwOgEVZNGfGKucreRVmWV8GIjjKCintavTLLJKmubEWfuBSQ9XA7G
	 KwhUATFAnWtsmPNRcYMBvrAq4eyHRd7cKVkhtiOiFitV3J9uhDtRPgjCRcyXsyiguH
	 k0CFlSwtANT7epyM8qKQ+umExdCKZEe0NbIon0FxaWmjdjVW9ULL8xNcs/bvW2quG6
	 EmZJDYhIEnlWvNZmV9X5cV4IrMioslyrkg0GTQ3y64A2FmQrpa6nPFOHgkiJdA1sme
	 AsnHNHjGUcLCw==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id AF8277E26E;
	Wed, 15 Jan 2025 11:21:03 -0500 (EST)
Date: Wed, 15 Jan 2025 11:21:02 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v2] man/man7/path-format.7: Add file documenting format
 of pathnames
Message-ID: <rltbzsovlb3yapb5r2t7gsv3b433i7kfuo27raojktdkabhlcz@p26ufmtcjhih>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250114125453.27520-1-jason@jasonyundt.email>
 <4hr3zjbop6w5bsvcm4op32akjibwt4vkz52itcdjsdjpsvp7cs@nfahhxnwzlsk>
 <r6bjj4gemyri65nlgq5pm4sro5cdkuml4d5f5nelyuebinb2u7@yuf4ducafb2v>
 <lkualciyuk7hv7dcpcvp5xprtq3gmiscogr5lcjhvh56cia2my@bm5opv5k3adj>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <lkualciyuk7hv7dcpcvp5xprtq3gmiscogr5lcjhvh56cia2my@bm5opv5k3adj>

On Wed, Jan 15, 2025 at 12:06:10AM +0100, Alejandro Colomar wrote:
> Hmmm, yep, let's make it pathname(7).

OK, I’ll submit a new version that uses pathname(7) as the title.

> Makes sense.  How about a null-terminated string?

The term null-terminated string still has some of the problems that I
mentioned earlier.  Specifically, people think of null-terminated
strings as sequences of characters.  It’s easier to understand how the
kernel handles paths if you think of paths as sequences of bytes, not as
sequences of characters.

Also, people typically make assumptions about the encoding of
null-terminated strings in the C programming language.  It’s reasonable
to assume that a char * is encoded in the execution character set, that
a wchar_t * is encoded in the wide execution character set, that a
char8_t * is encoded in UTF-8, that a char16_t * is encoded in UTF-16
and that a char32_t * is encoded in UTF-32.  Paths don’t necessarily
have one character encoding, and their character encoding may not be any
of those.

> > I have a concern about programs failing hard when paths contain
> > non-ASCII characters.  I have a lot of songs and medleys saved on my
> > computer.  The paths for over 10,000 of them contain non-ASCII
> > characters.  Most of those non-ASCII characters come from Chinese,
> > Japanese or Korean characters that are in the titles of songs or
> > medleys.  If programs failed hard on paths that contain non-ASCII
> > characters, what impact would that have on my music collection?
> 
> The core utils (e.g., rm(1) et al.) are nice and work well for arbitrary
> characters, to allow you to fix them.  But yeah, most high level
> programs and (especially) scripts aren't so nice.  Think for example of
> makefiles, where handling files with spaces correctly is almost
> impossible.

I agree that the core utils work well with arbitrary paths.  I’m not so
sure that most high level programs and scripts don’t work well with
spaces and non-ASCII characters.  Most of the high level programs and
scripts that I personally use work fine with paths that contain spaces
and non-ASCII characters, but I don’t know if most programs and scripts
in general work that well.  I also agree that handling spaces correctly
in makefiles is almost impossible which is why I don’t use makefiles for
my own personal projects.

That being said, I think that you misunderstood my two questions.  You
told me the current state of things.  I’m not asking about the current
state of things, I’m asking about a hypothetical future where programs
started to “assume the Portable Filename Character Set (or at most some
subset of ASCII), and fail hard outside of that”.  If we start making
that recommendation and programs start following that recommendation,
then it sounds like I wouldn’t be able to do anything with a large part
of my music collection, and it sounds like I wouldn’t be able to use the
symbolic links that are in my /dev/disks/by-partlabel directory.  Am I
understanding your recommendation correctly?

