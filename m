Return-Path: <linux-man+bounces-2311-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF13A2033B
	for <lists+linux-man@lfdr.de>; Tue, 28 Jan 2025 04:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A2DE18876A2
	for <lists+linux-man@lfdr.de>; Tue, 28 Jan 2025 03:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B83BAD529;
	Tue, 28 Jan 2025 03:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b="h6nc4xwG"
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762A51373
	for <linux-man@vger.kernel.org>; Tue, 28 Jan 2025 03:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=104.248.224.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738033616; cv=none; b=mlwEpBnKKIv5b8xPVb3KdDLA//cbaFFerPft7/TnwvAw54u/zV+9lkuxsqvkZgJEyL2LCw5AYzhwu1VkGRvxv/CYva6UN6iIefUnoGKXSPFW114PQiVR6qzKyFX1wsywN4yzu8ACiVAJkeLeDphIVrQ4yXpqUSwuCUHgKNvBRX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738033616; c=relaxed/simple;
	bh=BzGqW0+7SasteCmF8WQu/RchPDxhXTzJ6iy70rlwgms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KXEV+G7uaWQU6N7NcwG8wrTU9IIJkWozJMu7jfghBWYpWJq3Ow2lHjI4jroI6QSZTgl7liYMQhRzplMZo/9UqhRi8408JHTZM06QDTSEbv4cq0nVwo9cbLDI4QN+YI5EXJZDhf+h5JBsLxq/yhfvX4NQdtGGUgJhHOvU4/8GQE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=h6nc4xwG; arc=none smtp.client-ip=104.248.224.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jasonyundt.email
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1738033612;
	bh=BzGqW0+7SasteCmF8WQu/RchPDxhXTzJ6iy70rlwgms=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h6nc4xwGY5CpMzaLTYuU0gz98ksbN930pyEL9YDauqyT2Th9xQ7ZsIFWva0UC9Jmq
	 Iqfg/odx63FJp9M/bWk3i9aQ8isipdxv0Fy/HiMnxNj5UFmGhgeuiZ3Tg+ZjWgW/DN
	 YOlaVFNTdgKVh4m3hxDi4et2j2M9aHiw7VcXgVhqI0vwowmxgab2duxzg3+RInK9tK
	 u3X++DhVzKvyI6x4RsEL2LennAthKctDyjdxXhDt6kKzmTOmMpGl87cpy5ecV1XPQF
	 qmN5gtQDZtcom39w6eaeUPcqzvZ97U5c4ok0zhrIWt9iWlRKz0adpk101g0sE2suhJ
	 5iQH9rQEHhFqA==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id B49B17E28A;
	Mon, 27 Jan 2025 22:06:52 -0500 (EST)
Date: Mon, 27 Jan 2025 22:06:52 -0500
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>, ?????? <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <3dc6wukwdyustkxjs4k5yclwbtdukqsjmh7b3jntt7fzovjof4@g4ww7njxyue5>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
 <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
 <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>
 <a3turtye3rcug5glnau3x6brxjlvkruu7unely5dpz6ttjr255@aurahmflvg2d>
 <3hlim4xayawyffcqb4ykolrairbvsitn57p4jpwax2iqqqz6hw@4sn5qqdme2c6>
 <20250127234929.wbpd43qg2g65dlru@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250127234929.wbpd43qg2g65dlru@devuan>

On Tue, Jan 28, 2025 at 12:49:29AM +0100, Alejandro Colomar wrote:
> Hi Jason,
> 
> On Mon, Jan 27, 2025 at 06:07:30PM -0500, Jason Yundt wrote:
> > > I would do in a GUI exactly the same as what command-line programs do:
> > > pass the raw string to whatever API prints them.  If the string makes
> > > sense in the current locale, it will be shown nicely.  If it doesn't
> > > make sense, it will display weird characters, but that's not a terrible
> > > issue.  Just run again with the appropriate locale.
> > 
> > OK, but how does that API figure out what characters to display?  What
> > character encoding should that API use when drawing the characters?  I
> > think that it???s OK to replace the current recommendation, but
> > pathname(7) should really explain how such an API would figure out what
> > characters need to be drawn on the screen.
> 
> That's not a pathname issue anymore.  It's just the issue of printing
> bytes to a user.  I don't think pathname(7) should talk about how bytes
> are shown to a user.

Where should it be documented, then?

> That wouldn't affect at all how applications handle files.
> 
> For example, I have just installed my new laptop (with the C locale),
> and nab's name shows as ??????.  I expect a Japanese filename to be
> shown similarly, although that depends on what each application wants to
> do.  It doesn't really matter, since it's just a cosmetic issue.  The
> string still contains the appropriate bytes, even if I can't read them
> properly.  If I had a file called nab in cyrillic, I would expect ls(1)
> to similarly show ??????, but internally just handle it well, because it
> doesn't even look at the bytes; it just passes them through.
> 
> 
> Have a lovely night!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>



