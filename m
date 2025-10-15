Return-Path: <linux-man+bounces-4135-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D489BDE13C
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 12:49:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BDCEC19C31F5
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 10:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC69F30B518;
	Wed, 15 Oct 2025 10:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXJ8zVyZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9752BCF7F
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 10:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760525365; cv=none; b=kmvDnkoIHddems/5ZWaMuReJ8AM9TErg5z0dTD6hdBRdIkm2v84MY4fw4pk711BGca1DAV/YgxiKHARF9ERXdHCgtDTmGLvpRhw6YdZeEBkZlKtaFzBoVhEfKh2+waHD5QDjSlGTsEw7Y95/2IU9q4Hxrt8QfyCm+9sZxgjUh5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760525365; c=relaxed/simple;
	bh=9odSAfdWkhQ4RN143Fo3RoChRJ6DQCejrFdHnOeMykI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TxCHreY3GRAFdo5r95/o67y0RJKovXCg/BC/vY7wawztutI2NZTrj4AeO7azgfErOgh6jhZAgwczDHHNOgIi7ekvKEOVf6CAIcgM4s5wuddgsHZDPluQ6pccKWifIzd6oOfkh8LdH13SEQMTlu9KCer5NSbQhmH919dFxeVAtgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXJ8zVyZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C89C4CEF8;
	Wed, 15 Oct 2025 10:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760525364;
	bh=9odSAfdWkhQ4RN143Fo3RoChRJ6DQCejrFdHnOeMykI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hXJ8zVyZSwf2qumEmijsZlnjN7PbWezsHy0e/rKL/kvIaZf2FbQH9CbaeSR7y4DrM
	 1Z4AywsR6EGo7RD0hXFCD8BeaTAW/inEJXgcl+Q6ethMMQeBSPQA7kSfx60lXRgLFw
	 6jR2XxWGxTG4diNHPC7xbiM35ByJmCXmj1ajq/Rx04Je+TwDfqwlilnF49KC6wASJC
	 fiL0u6VosyEjYhCQScNl2ngycFXZv1eiwmgiBIDvZCj6ffG1Ykr8/LaDdPwZb8Nxmg
	 Gb94lEeYD5plzYaNZkftlkNFdRyvJamBveFQ9A+w2RpQKxiDU7palDIKbnwRqYgiNf
	 EEALiTkAolu2w==
Date: Wed, 15 Oct 2025 12:49:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <rokuuw5hmdzggovnzbrxgjvh5r6vcqs27ljp2ldhxnkc4qonog@mnirrvauayfv>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <5ec2c8c3-69a6-4508-9570-9185e9fc9c90@redhat.com>
 <qkhl5lirdusce4fgbei243fklzzkmmct4okcjobeddnozkdrip@fv6xh2a7lkf6>
 <04bc7aa2-c5d5-49f0-835a-5cbce357aa3c@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zmett5pcidniwh27"
Content-Disposition: inline
In-Reply-To: <04bc7aa2-c5d5-49f0-835a-5cbce357aa3c@redhat.com>


--zmett5pcidniwh27
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <rokuuw5hmdzggovnzbrxgjvh5r6vcqs27ljp2ldhxnkc4qonog@mnirrvauayfv>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <5ec2c8c3-69a6-4508-9570-9185e9fc9c90@redhat.com>
 <qkhl5lirdusce4fgbei243fklzzkmmct4okcjobeddnozkdrip@fv6xh2a7lkf6>
 <04bc7aa2-c5d5-49f0-835a-5cbce357aa3c@redhat.com>
MIME-Version: 1.0
In-Reply-To: <04bc7aa2-c5d5-49f0-835a-5cbce357aa3c@redhat.com>

[CC +=3D Sam]

Hi Carlos,

On Tue, Oct 14, 2025 at 08:16:24PM -0400, Carlos O'Donell wrote:
> > > (2) Document acceptable use.
> > >=20
> > > We should also talk about where it would be acceptable to use such to=
ols,
> > > for example could the tool check spelling, or grammar?
> >=20
> > I explicitly want to disallow such uses.  I think using AI to lint code
> > (documentation or C source code) is dangerous, as it puts trust in the
> > AI system to find issues.  The AI system might trick you to accidentally
> > introduce typos or bugs, or it could create a false sense of
> > correctness or safety.
>=20
> We're getting into ethical territory here.
>=20
> What I put my trust in or not, is none of the project's business.

I think what you put your trust in or not is our business.  I might not
want to put my trust in someone who puts its trust in something that
I consider dangerous for the quality of the project.

> The color of my socks is none of the project's business too.

It's not.

> We should accept contributions that meet our contribution policy?
>=20
> This includes a clear license, clear and unambiguous copyright,
> and a level of quality and correctness that we review with human
> reviewers?

I think human reviewers are unable to review AI-generated content, no
matter how good the human is.

I'd consider AI-generated content to be as if produced by Jia Tan.
I wouldn't want to be revieweing Jia Tan's code, as there's a chance
that I'll miss something eventually.

If someone trusts itself enough to review Jia Tan's code (or AI code),
I'm going to not want to trust that person for contributing.
If anyone was really capable to review such code without mistakes,
that person would probably be capable of writing such good code by hand
(or with the help of deterministic tools) in the first place, and
faster, anyway.

> Consider QEMU's policy:
> https://www.qemu.org/docs/master/devel/code-provenance.html#use-of-ai-gen=
erated-content
>=20
> Likewise Gentoo's policy:
> https://wiki.gentoo.org/wiki/Project:Council/AI_policy

I'm more inclined to copy Gentoo's policy.  It seems to disallow any
use, as I had in mind.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--zmett5pcidniwh27
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjvfCsACgkQ64mZXMKQ
wqmw+A/+Lci60On8LDyLlg04Tp0+ZS4bJx/oRqJbWPb/yqXs9r78U189yO8jRivi
7LBBTYfFZ8/8Bv3E3gPHidOj8jhkCzkZxWAp38hiM9xbahZYLYHidMDZEf46yB/U
MVTbE1WPqqtKG6zM+WKI+NkOoHdMFZ7lkjmkFVzoG6zoJy1QeecxT16UtLxLzzNa
Xqd9JUPa6rPC+xrnZd8JLFi1UjqVqi47t8kM9ItgGenZbcpON9QSO0qLHXf2+JSB
LULTVb5JlzQC4E7iS0h5yCa9cswAxplX5jB2dl1PKketDryNBoRmp0QA2fdwvB/A
02TJYANvkqxC+andBRkC/AYQQ0D61iKv0Z/4IicXGQka8XbmUyT6bG8HfzPnfYZb
yNNeC9xNncZmfgP8DlqlXIcBgoxDgikIWNX7zNXHBjDru6+EvBxd5ZGQl508Hdfa
+NS4cP7l5Anak0nk/K1R5cb4ozMypdoxiyBuoGnZ1eMA69/xpcL7vuHiOFrgUYjY
Ir2cMVHYiD5h1bfPkezB2JqErqnlTelQxUbUP5kOJbnCm4ftpI/eVYULuCLbex12
EGBZ5eXpDQTUwK5uPDrYA90/JDgYIwC6oC5q4qBEVqjxiw8AOnM0q5AMY8BDtwE3
ToQxL2TQqhTX0xPG70vW5bc7gP/zPWbbMycFL3lBrXC3ODjT1xo=
=XyLm
-----END PGP SIGNATURE-----

--zmett5pcidniwh27--

