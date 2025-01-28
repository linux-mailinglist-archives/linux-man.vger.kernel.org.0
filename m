Return-Path: <linux-man+bounces-2313-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD75A211AC
	for <lists+linux-man@lfdr.de>; Tue, 28 Jan 2025 19:35:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC92F3AAAEB
	for <lists+linux-man@lfdr.de>; Tue, 28 Jan 2025 18:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A741ACEBF;
	Tue, 28 Jan 2025 18:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="ElNEQ+4q"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860001D61BC
	for <linux-man@vger.kernel.org>; Tue, 28 Jan 2025 18:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738089131; cv=none; b=GbiOYqIojQ2OhDl2OFUb7YO6BID2GDlUHWCOYL157HtR30QWJ6GbCQxJy4eKtI66dHxaKYjoSLj/dY9536ISwIlC/JpF6QCJbVFZiaFVLuBgIZwvBXRAcKa/gAmpRsmF8Swpthb5s2GAUawlZYg/bvIIGgQ/K5523+2R/VhZlfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738089131; c=relaxed/simple;
	bh=4WvzVJSk0BAlAC0Pi+AoV/YE1Rk95mj4krXGw7r4SYg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IFx9BQo03BGAV7DdcNsKKzouzFxD6X1CDgJ81FfAH8LpN3VKU1/u5Gwjj2MUsVKeCWUuF927bz6/rcmRJnMtU1C7wyuKFgaKO3CvbaHaPozYk/NO2imke7cbtz4g7dfqyaKAyfCPaJ7u/kCDukGvZ4fD3sffxNG7k2GckA2ulm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=ElNEQ+4q; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1738089120;
	bh=4WvzVJSk0BAlAC0Pi+AoV/YE1Rk95mj4krXGw7r4SYg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ElNEQ+4q/pl/MqZ17q03MuQ1qEZ9/67zAf1Z/RDoG0poy8iXfIsWLN6VU7kCF390y
	 gMNt18qKkaRSlnlAqgraJX0RQjWFFTgyRu1CjUEX9hxVnU668oiVYv2HkScuQNqn9s
	 R0ccf8FyRWE9fznNQUbZQXD7cfxAklAFEfpPiTRbEqBnyL9Gn/rL8R2ODRSFltjg+q
	 9s+VFyMjqUEXxmA271jic8fcCtDB0XuMRzC/7RsLstD6IEwiRKKBL5oi7wBCTDsZ0w
	 EXy8hXthWAWEhJFwhaHIO3OHR0LfsQKgO7YheopFrZxHn9vJbChFyS5wfb231ORtzZ
	 2ZBbTGALNRK6A==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 3703F6540;
	Tue, 28 Jan 2025 19:32:00 +0100 (CET)
Date: Tue, 28 Jan 2025 19:31:59 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>, 
	"G. Branden Robinson" <branden@debian.org>, linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <p5tgwzdekwscp7rkmg6am3dd6ioejucjyqod7hvo5lb33qnthg@tarta.nabijaczleweli.xyz>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
 <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
 <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>
 <a3turtye3rcug5glnau3x6brxjlvkruu7unely5dpz6ttjr255@aurahmflvg2d>
 <3hlim4xayawyffcqb4ykolrairbvsitn57p4jpwax2iqqqz6hw@4sn5qqdme2c6>
 <20250127234929.wbpd43qg2g65dlru@devuan>
 <3dc6wukwdyustkxjs4k5yclwbtdukqsjmh7b3jntt7fzovjof4@g4ww7njxyue5>
 <20250128101759.klrigsk6sutzphta@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a2agr4n5rll3jb7x"
Content-Disposition: inline
In-Reply-To: <20250128101759.klrigsk6sutzphta@devuan>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--a2agr4n5rll3jb7x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 28, 2025 at 11:17:59AM +0100, Alejandro Colomar wrote:
> On Mon, Jan 27, 2025 at 10:06:52PM -0500, Jason Yundt wrote:
> > > On Mon, Jan 27, 2025 at 06:07:30PM -0500, Jason Yundt wrote:
> > > That's not a pathname issue anymore.  It's just the issue of printing
> > > bytes to a user.  I don't think pathname(7) should talk about how bytes
> > > are shown to a user.
> > Where should it be documented, then?
> I don't know.  Maybe Branden knows?
I don't think this is ad rem to man-pages;
how you display a string falls squarely in the domain of the render toolkit.

Best,

--a2agr4n5rll3jb7x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmeZIp0ACgkQvP0LAY0m
WPHJjRAAhwow/H55Sa9a5pnB7Wj39gUSz1IzstyIS5dw+uq1qj5wLOW1mfL9KgFY
Kq1ybrGIalARqWQt+DPA8JW98aB3dbks6MMfUzhcdXFYkrt+R971bY6oCbWnssZB
gCsejbGE1HJJL1fNssbz7XTkzu9EYaoXBEiPfxh/zJH3iKLvqf1MRuU5aog6oe1B
rGzjQobjuGueYlttZnA+0AGYbcOXE3CnwUcZgCyZud9T3wLo3hrvlPubFH98Yzdv
B2/idC/AO87wrM8n7jSWLq3OmF9mLbtmJqQi2OgVQpQ6xjZmJHM4mFWEbE89tIYo
MWnGzV5WEtt1+LW/hqgTChjVfVyz6ga1MnLJAp5mE/XqRx7bgcVAKIzzocYoHXuh
AMP89cKBEqdNocluoHccP8Ay3FMF3sjJ74kIrGemgYTAefSel7IAgbw39bytANis
P3+8sqlpRPoSmIsrWUl/xakzIQCwcB7zGs451IYSNZkiFgrCeeabNzJ0i0Kd7ECv
SJTrtm0bCdG56u3NWMvDXQkAXhD0UqUHC57OaYSG+qRwGgCFaL3BX1iIFdmujc6y
dTDAxTF0S5qL8oxbDfaWH0lb6gAg4t13Y07w0VBclkoyMEDJuFOkkJUZvhcgRSfS
pmzzGZKjTNlLi1jO7l2F1U3tf9/1G1H5WT++pVya39zeX0xiXR4=
=XQmD
-----END PGP SIGNATURE-----

--a2agr4n5rll3jb7x--

