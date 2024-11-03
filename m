Return-Path: <linux-man+bounces-1843-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD8C9BA32A
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:05:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A29F1C21547
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 00:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4DB623AB;
	Sun,  3 Nov 2024 00:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ki2TOEFy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7668C19A;
	Sun,  3 Nov 2024 00:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730592342; cv=none; b=QkbKzGlULbNKDhydvTxtRe15FrAnuClxMs7Y5RtBdkA02yEldCx1czLvJF96AdsmmjbLyZPFx1qMsEiy1EgSJb70HK2OV0ef8nXJDRUkr2kTBYiB5CWt8VnoYiTTgiWTUsVnXm+P7BpduNIInhWCxeGyKybWq+tX3lhLsfuSt6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730592342; c=relaxed/simple;
	bh=X5vxJaTvJikAKbAwxGZnw3p3dVIi34zzs8gIjU+lzfQ=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LxXEhWYyx/iLSQI31kSUva2oTpHB3cs3AoFzd/HwZaYgm/cmqmNDsZ1sx67sfvHXIdpK52wuh2RLL8xELGw496GfQU9Lc+3kfrUKG1rh9pg2sJygpslIEUWKjAwn+GZkME7GxFcG1b5pofCgp5VlYSKAfg4Kc9QtSSFq3zYAHoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ki2TOEFy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F4113C4CEC3;
	Sun,  3 Nov 2024 00:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730592341;
	bh=X5vxJaTvJikAKbAwxGZnw3p3dVIi34zzs8gIjU+lzfQ=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Ki2TOEFyihTYjXG3FqLyIFOBcSa3ONl/yzIEt29v7wSsXShGeEAjpqdhx8jaMHmyG
	 3iYB1MV2auZMhPj3KOTYEjkdr3nu4e8St7/u75FxFp1wJPqYJ1EHxRA+oiS++2STE/
	 HerpLXdSnKLAD6SLOWGhO+jRzhLytUesXZMXQifRIFzgdVg9RRuvfZhYgjzBiGp+mY
	 yGON29bJnqDJfyweZXnaWUANutIvWcGCYHkqzKSu0WTz/wiSB/21sSqizvSBqKaftA
	 My4sKLz3CylMc3MAOOleTS6iq8dzVIsvRrvgssADgMEDUyxNEbeeWnnf2kjSqlQXeK
	 ezA0Kiup4er1Q==
Date: Sun, 3 Nov 2024 01:05:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Ian Rogers <irogers@google.com>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <20241103000534.th3jq7umwojlxnma@devuan>
References: <20241015211719.1152862-1-irogers@google.com>
 <20241101132437.ahn7xdgvmqamatce@devuan>
 <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <20241101200729.6wgyksuwdtsms3eu@devuan>
 <20241102100837.anfonowxfx4ekn3d@illithid>
 <20241102103937.ose4y72a7yl3dcmz@devuan>
 <20241102213620.kfccilxvhihwmnld@devuan>
 <Zya6ApewCZQNEfJb@riva.ucam.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i3ludjwuiw6stzos"
Content-Disposition: inline
In-Reply-To: <Zya6ApewCZQNEfJb@riva.ucam.org>


--i3ludjwuiw6stzos
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
MIME-Version: 1.0

Hi Colin,

On Sat, Nov 02, 2024 at 11:47:14PM +0000, Colin Watson wrote:
> On Sat, Nov 02, 2024 at 10:36:20PM +0100, Alejandro Colomar wrote:
> > This is quite naive, and will not work with pages that define their own
> > stuff, since this script is not groff(1).  But it should be as fast as
> > is possible, which is what Colin wants, is as simple as it can be (and
> > thus relatively safe), and should work with most pages (as far as
> > indexing is concerned, probably all?).
>=20
> I seem to be being invoked here for something I actually don't think I
> want at all, which suggests that wires have been crossed somewhere.  Can
> you explain why I'd want to replace some part of a fairly well-optimized
> and established C program with a shell pipeline?  I'm pretty certain it
> would not be faster, at least.

Are you sure?  With a small tweak, I get the following comparison:

	alx@devuan:~/src/linux/man-pages/man-pages/main$ time lexgrog man/*/* | wc
	lexgrog: can't resolve man7/groff_man.7
	  12475   99295  919842

	real	0m6.166s
	user	0m5.132s
	sys	0m1.336s
	alx@devuan:~/src/linux/man-pages/man-pages/main$ time mansect NAME man/ \
		| groff -man -Tutf8 | wc
	   9830   27109  689478

	real	0m0.156s
	user	0m0.219s
	sys	0m0.019s

Yes, I'm working with uncompressed pages.  We'd need to add support for
handling compressed pages.  Also, we'd need to compare the performance
of lexgrog(1) with compressed pages.  But for a starter, this suggests
some good performance.

(I say with a small tweak, because the version I've posted uses
 xargs -L1, but I've tested for performance without the -L1, which is
 the main bottleneck.  It has no consequences for the NAME.  I need to
 work out some nasty details with sed -n1 for the generic version,
 though.)


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--i3ludjwuiw6stzos
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmvk0ACgkQnowa+77/
2zIVBQ/+M4vyNTsIIasXmnS0QmfHen3e3ZHObA0oc1BCMV5O/+ynHO9fSP+w1DLT
Ow/NdXxf4PgwcFT5hd3CP8FQ3cM/7gRWVLj5NdUye2woXX7yXsK5tJYxWjuuZ4Q4
PMOViijTHlPyCeow0Eqs5lO9Dkx3E587HxaMi/J7V8ZG4PcwdbrOVt7OvL2Mibmu
nQEuExn67XKbQboefN7qnaqh6WbXOnL+kYbf+z68k12oXql8+7noIngQxCUrskqH
EwcRkTA9/xga3qQpFPOVaVSkqH/seBHbq+NvhQivD0uZAi9keMdjYmj/0W+TqgLk
de67IWDlfIEZjBafp2m+Yy4SZUG9krS7RnMEyd/0nLw6H+udxdPtGOngGX2kzB0g
bAIcflfFiNUSa4IHp42U4Dis717LiT4CiGY76w6wmXXQsrIadzunYdaodNcKmLkp
tIxKaqLHMXSyg9Nfg+BmvYpQvWiM1QjjvgsN4Urhj8LjZDqvtIkAxRt8kuqmLdFo
2FSL1X2jVhvgiZLEbqNn8JT4Uzbx2aP1cbz8g9zFpxaT2Lao5rS6CtJp1AiEtTUe
K3Ox3GieCNoByrogRRYIZmuClBKfta3+oo5C05LkGRcCTWAbcKyJFTxdcJglyJHp
O+xQNxIQYTiex258tsSimWX7s1VVR9Z1D2YlFFs0Z4sPlxDEuFk=
=jwrY
-----END PGP SIGNATURE-----

--i3ludjwuiw6stzos--

