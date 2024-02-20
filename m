Return-Path: <linux-man+bounces-463-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEE185BFC9
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 16:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82A852819F7
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 15:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19ECB76059;
	Tue, 20 Feb 2024 15:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKzXCrw8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E1176050
	for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 15:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708442662; cv=none; b=S2IILE3/2TFE/Pj69EAerE6mSX5Bc8ePS+XljS/1bUKlHNJnRKkn28CB4QezfSzfZnuLZDor9VWra3IXKp38tbKLzJfzIPqrlYWU5QyFU6MjGsWWfhxzcjJ+guMN1ZdC4+DLXfZu0bBofuhvn1hUvt3znwyfkDxsbdmyRq88nog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708442662; c=relaxed/simple;
	bh=ky6qi5saobZMwd182zr7HAJ+BO0x+SJYNxRGrDhTmos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nqoukMkgOIdVLuIvWMfbFA/u/Jh7ximyDgSW8GXeyas3eAbwgeeRhn/cpu5dXc7nej+2VXiZiMbvQe1ZGqBg6j1hCKwG1i1HbTEqy6OgHizdbFYL1SdNS7JlGXKGzRFQ0F6fm7uoxguKk9EvM1uP+8nI9c/aadzZLzZvvoDWS0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKzXCrw8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A356C433C7;
	Tue, 20 Feb 2024 15:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708442661;
	bh=ky6qi5saobZMwd182zr7HAJ+BO0x+SJYNxRGrDhTmos=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XKzXCrw8LfJKcUO+I2RIbm2CxS8rFvfFq3OPtcixI7rH0Cbwca0o7OuwTdafmvEiJ
	 EFdpMwfnJsegouzoXLhcEwqDowRn7V3ppqmlV5wdla/rUotlKgLH31HMtTU8UFPU5X
	 NhoDnNOBqrK7aJmYrAToNInZ7C7DQ8PA8GsO+7eX5nRmru7qvBRC+pQZW+OAvztCTT
	 s3y0/sRq5ZdD09mW5HidfRROKm5U7Jbkl/qdnyVRMbwayxZ7ig8QR6mvDtzDsTGoIn
	 GWHCVSijKTos+j3qZjegguMwe/X+oW0xL0g39OalceQ7jADlHTOB9So2MF+zshYGJz
	 mB43aVdXC+Scg==
Date: Tue, 20 Feb 2024 16:24:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alexander Ofitserov <oficerovas@altlinux.org>,
	linux-man@vger.kernel.org, dutyrok@altlinux.org,
	kovalev@altlinux.org
Subject: Re: [PATCH] delete_module.2: Update man to actual syscall behaviour
Message-ID: <ZdTEIqz56h4wdJmv@debian>
References: <20240220092144.140251-1-oficerovas@altlinux.org>
 <20240220132015.pjqlf66odcgqdtqv@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Aq9Lw6djN7NLniSl"
Content-Disposition: inline
In-Reply-To: <20240220132015.pjqlf66odcgqdtqv@illithid>


--Aq9Lw6djN7NLniSl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Feb 2024 16:24:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alexander Ofitserov <oficerovas@altlinux.org>,
	linux-man@vger.kernel.org, dutyrok@altlinux.org,
	kovalev@altlinux.org
Subject: Re: [PATCH] delete_module.2: Update man to actual syscall behaviour

[Off-topic; just language curiosity; feel free to ignore]

Hi Branden,

On Tue, Feb 20, 2024 at 07:20:15AM -0600, G. Branden Robinson wrote:
> At 2024-02-20T12:21:44+0300, Alexander Ofitserov wrote:
> > Parameter O_NONBLOCK described in man doesn't exist anymore in kernel
> > versions 3.13+, which is quite old, only O_TRUNC parameter present for
> > actual kernel version, O_NONBLOCK does nothing.
>=20
> Please be aware that "actual" and "aktuell" are false friends in German
> and English.  I suspect that you mean "current" here.
>=20
> https://speakspokehavespoken.com/2020/04/16/15-english-german-false-frien=
ds/

That's also taught in Spanish high school.  The Spanish word is "actual"
too, which means current.

However, I found in dictionaries some time ago that English "actual" can
mean Spanish "actual" (i.e., "current", "present").

See some `dict actual` entries:

	From The Collaborative International Dictionary of English v.0.48 [gcide]:

	  Actual \Ac"tu*al\ (#; 135), a. [OE. actuel, F. actuel, L.
	     actualis, fr. agere to do, act.]
	...
	 =20
	     3. In action at the time being; now exiting; present; as the
		actual situation of the country.
		[1913 Webster]

and

	From WordNet (r) 3.0 (2006) [wn]:

	  actual
	      adj
	...
	      5: being or existing at the present moment; "the ship's actual
		 position is 22 miles due south of Key West"

Some other dictionaries don't acknowledge this meaning, and claim it's
a mistake.  Do you know who is right about it?  I fear some dictionaries
might be ahistorically removing that meaning.  Even if that meaning
wasn't the main one, it probably was correct some time in the future.
I'd like to see some investigation showing history of that meaning
before claiming it's wrong.  I rather call out the Cambridge dictionary
and others as being wrong.

Have a lovely day!
Alex

>=20
> Some English speakers will be aware of this usage error, others won't,
> and "es kann mach dem irritieren".[1]  ;-)
>=20
> It can be especially confusing in contexts where something "actual" has
> a "virtual" counterpart.
>=20
> Regards,
> Branden
>=20
> [1] This is bad German.  Do not imitate except for humorous purposes. :P

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Aq9Lw6djN7NLniSl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXUxBEACgkQnowa+77/
2zKXBw//Us1t/LI7izslQ/7euEQRHbO3R1nFTxgzngZEwaaB6m3I9vZVTr44yEp0
GA8mksKrePFLagLIbntQb9yhrVqJZnLaF29mGdtWzMmJVfEXc0xwfqqw8VLw4Pjm
3Fg894PdXIoYttTJiconfT5la3gFc6FSV4mx/7bro0iTgf0LNe0KiRGEqE5vGD0Q
sr4zU0BgBpVRWjSMXi2CN+WFzLhKDBitBWDQZminsTJLl6Awt6GOxxE9LzYKAERU
f4QdhqWyxYvDws8ABeRkd5dAO4ekVVb0vcWHoq4r2cqoMkDDpveKsrbpNN2qKlD5
+LkbFqbWnrSjsVFkRz8fkJrShhRBeyZlvgxmROJGJmuAGGhh40PlWEODXXfCDIDe
ZWKCy9TEENycEAEjOwSU7qAN1ze17EpiaUaE0j4WAS+CTuti7D6XXcHkaYoH3SDJ
s1iqu3lxy54sica4tfuKMSipOrQMKVDGfXGNy4Tbg99Qlevr4uOGWCLgUH0fdIn8
MB4DTD9/JtSim7jQbcJBNUXL9ADAl1gwtqpNr67nMQfL8ApWAzT22TWP84YYi8Tk
5enHZuLKmFI5V5i1pUCRysblAybEly7IPYK3xWxK7OPv0qV4ilrhTKZeCla77x+x
pvo6FeI4i3ijPcAQF5zHrjuAiKy5fKKrf60MgITC64AFAB6yaO4=
=a3JR
-----END PGP SIGNATURE-----

--Aq9Lw6djN7NLniSl--

