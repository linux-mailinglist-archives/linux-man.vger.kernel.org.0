Return-Path: <linux-man+bounces-1846-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFAA9BA34D
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9EB9D283336
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 00:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52F3343ABC;
	Sun,  3 Nov 2024 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTFjZ7yh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A27433CE
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 00:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730594573; cv=none; b=fjfIePPsE8kPatKwOZ/WF5DB30fWtw2g6mBk7vRkC6GjzzC1bB5cF1ckQTJQA/0furJgph34tWWqu7UCPG1cfVDVTiN0wk0Cs6n7XYMsVlY3brXiujNA0ZP8GyMz380fWqffcb22DbyBDIbuzr6dyhIzcsQfSHtWwIIzdJmLLAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730594573; c=relaxed/simple;
	bh=sp7O43PCWtkIFAs0SibM2zEh9OnstTKv33fpvVm8bHc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pACa4Zi0RgEPm9MA5wnihafKsTswTF50N3qehD+F8/Y37bg9j50i2Jd2yvwb7Te1tKm0LOT3blwZxlYelU4Ki9/hABEnQOzWgP9hnXhUsVENcpBbKutUskbbkfkdWJiixgRX3U8KUAou9bQwaLpv4hFAceR+mE4TYC+NAH40L9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTFjZ7yh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B987C4CED2;
	Sun,  3 Nov 2024 00:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730594572;
	bh=sp7O43PCWtkIFAs0SibM2zEh9OnstTKv33fpvVm8bHc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=BTFjZ7yhvmCyOP7zgfMLKTuCfLGKMN5trSGgpWUswRuO9fDCPlIAsMupZrsXqCaQE
	 7qY9YPUTIgt4aWfZp8H4+IVnEqR5WBFfpGCLtIw7T+a5dKGY8mHys+ZMVMvoQC87G+
	 vg+deqtpEV8EHyzuufR5drjruc8OA1MrGn+avU2HqSD26SDCzG+pebjUYX4GV3HXan
	 CxmaeBeiy/hFMYsMXdzEmdNaZALaUKvo6L0p1dN7ekFRUzmGAylxulW4s8AkUV8oV/
	 Z2nX1SkwX+MAo5bl6zwIaw9MoVM+YvMv3JKcYKv99CnNYC8H2Cb7TQzea87ZgSFrp7
	 v4HeC8Mq1nwQg==
Date: Sun, 3 Nov 2024 01:42:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <20241103004248.pes42quf7ptelt3y@devuan>
References: <20241015211719.1152862-1-irogers@google.com>
 <20241101132437.ahn7xdgvmqamatce@devuan>
 <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <20241101200729.6wgyksuwdtsms3eu@devuan>
 <20241102100837.anfonowxfx4ekn3d@illithid>
 <20241102103937.ose4y72a7yl3dcmz@devuan>
 <20241102213620.kfccilxvhihwmnld@devuan>
 <Zya6ApewCZQNEfJb@riva.ucam.org>
 <20241103000534.th3jq7umwojlxnma@devuan>
 <ZybC1lsbMb91DzFW@riva.ucam.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y7quuph3ns5634mq"
Content-Disposition: inline
In-Reply-To: <ZybC1lsbMb91DzFW@riva.ucam.org>


--y7quuph3ns5634mq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
MIME-Version: 1.0

[CC trimmed]

Hi Colin,

On Sun, Nov 03, 2024 at 12:24:54AM +0000, Colin Watson wrote:
> On Sun, Nov 03, 2024 at 01:05:34AM +0100, Alejandro Colomar wrote:
> > Are you sure?  With a small tweak, I get the following comparison:
> >=20
> > 	alx@devuan:~/src/linux/man-pages/man-pages/main$ time lexgrog man/*/* =
| wc
> > 	lexgrog: can't resolve man7/groff_man.7
> > 	  12475   99295  919842
>=20
> Comparing anything to lexgrog isn't very interesting; it's a debugging
> tool and is not in itself very performance-sensitive.  As I've explained
> elsewhere, the interesting thing is mandb, which uses the same code
> in-process to scan a whole tree of pages in one go.  I do not expect to
> ever want to replace that with a shell pipeline.

I don't know how to compare to mandb(8), since it does other stuff, and
skips some when things haven't changed.  In any case, if this is of any
use, you may use it to compare, if you have an idea of what's more or
less the percentage of time that mandb(8) spends on this task:

alx@devuan:~/src/linux/man-pages/man-pages/master$ time mansect NAME man/ |=
 wc
   4851   23548  169216

real	0m0.044s
user	0m0.033s
sys	0m0.015s
alx@devuan:~/src/linux/man-pages/man-pages/master$ time mandb man/ |& wc
     30     179    2487

real	0m1.341s
user	0m1.065s
sys	0m0.302s
alx@devuan:~/src/linux/man-pages/man-pages/master$ time mandb man/ |& wc
     15      80    1116

real	0m0.030s
user	0m0.013s
sys	0m0.008s


This has been run on the Linux man-pages repository, with uncompressed
pages.  I've optimized mansect(1) to be 3x faster, and slightly simpler
and more robust, compared to the version posted on the list (and xargs
doesn't need -L1 anymore).


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--y7quuph3ns5634mq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmxwcACgkQnowa+77/
2zJ98A/9GL0BqbJ8ksTIopAahf0z4S3vJxoXYh13+i8gf3o8CIY9Aq+vpzoK1x5x
Aan85L6m5wgwADrdmIGJZnVcKDuYnexoYPxaQ8TMnUQI24yY/+4kLA45i8ERiPrX
2BJB9hB9aPFMwWOqDpXfrPIQK2yJibLkHVa3QoEGDh+LCMDY/VhxxtS08wC29u8T
cuRJQMGV9dAGAet2X8t1gnELb7Laa05Zr1FZYTv2gRY0AWZM6J6IO6VnsaGtRCAs
3xE3WloJcEYACwK6fG4ycek3TQJXfa5nN2IqIz5Qi4yWRI3hJQ+B+WcUDoyp4HyJ
ntvJKEKwkG3xtKRyXqb1bv2UxlxxCPCLhn1HBteqsjGlEYxi1kuz7XoWiY9PHSQC
OVNeozdwt3ETL4SuQhWlX8FxYl1cEzevWeJzaYzz/Lq6E47RslIPT7fH5GzbVWSt
CDesTmGH5mic9okuA9dX8A5iRjBisQV2B98oXPa5d9SNdPBM1LBfdqoTIph4HxKq
ldKPDTll05aKWrbDEZT8QVN4M9W6XQutPsMJbG9A+WHlrvxXOy36E6ZRZVEKOIEl
9LKM/5NI2EipoJMZxdpjr4bVTLKjbr0CIy9vNiD/W3WFdLGedSfawEx16jd1Ew87
fu0g02MQJGizTtSCVSbSekmcsxNdY2Ln35xHysB9bGPeaxfSgf8=
=u1o6
-----END PGP SIGNATURE-----

--y7quuph3ns5634mq--

