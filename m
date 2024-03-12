Return-Path: <linux-man+bounces-571-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D3501879856
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 16:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73B31B20D9A
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 15:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BE017CF29;
	Tue, 12 Mar 2024 15:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZrdYdL+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F033279B65
	for <linux-man@vger.kernel.org>; Tue, 12 Mar 2024 15:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710258652; cv=none; b=fJK+T+8muIrr7cVz0lWXjycBcbAnb7CjREl4oCBjzOUq92Kh/SVXIaWIIR4qC1397CQ0WY8jsZODsZK256yuv+anWEy85Sc5Ff/0yQa6qJTMMzQ2cqbmWOwgyk9oI65UQ1hMGAKSzn+JF6JteautWktiKH6aDh09RjVDdoUIxTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710258652; c=relaxed/simple;
	bh=DxgqzXmOUtpuzoFaqvcQELHg8WZ3M+Zt6kATNZCEEp0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=COQqUVuUH8EFU3LEUpdboMaXSLyz9nNKra8dsqf8rCMAk18W2ofJ6nThPJp/OMoQglgXWm1Uxnp1PaVR0mcFJ+8zxv7ssykOuy+JDUVpfsOAquBbHar6bEjCdtCQmi0ABJNzxfvaiivXDJdVrYsxE3Yt8TVtvg/GMwtswvKoBE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZrdYdL+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7585BC433F1;
	Tue, 12 Mar 2024 15:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710258651;
	bh=DxgqzXmOUtpuzoFaqvcQELHg8WZ3M+Zt6kATNZCEEp0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XZrdYdL+Y3kpR6PdVCDF5S69WSFZ96ERnc+pgE2Q/AXM5POK93imkIWOopQAFjDmE
	 0LatkjfatmaPsm9HrtB+FN6ANvWCR5xN/N1frtvg1S4V0ByE87/0PACYCPtQY12Ajx
	 zy/MZebY3aFQt2UWvA8lmucb8xfHS+JA0jPIbz9BhnjmD5hkgrHYyVseJyvKtnMRl7
	 J2ldGxphb8hGdfE9myvnfXRGAtd7yKUN7GAekdPAG0qKgnx1EJyKuPlXEE3CsBAmHm
	 Gk9tmEzOfxs0G+fiWpkJAF68vgKWA5ttzEHZEe8suZcWHqUL4S97CMZFwARq6gLJCd
	 GTGGcdjvXuI7g==
Date: Tue, 12 Mar 2024 16:50:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: Bogus index in man-pages book from other projects
Message-ID: <ZfB52IQowBB9zVU7@debian>
References: <ZeyMlGwA7MNDZIfj@debian>
 <2306955.zFelfHtBYS@pip>
 <ZfBi5PSZXPDpygXB@debian>
 <1873292.UaS1mDKzQr@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u3iomJ/o6Mlye5FY"
Content-Disposition: inline
In-Reply-To: <1873292.UaS1mDKzQr@pip>


--u3iomJ/o6Mlye5FY
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Mar 2024 16:50:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: Bogus index in man-pages book from other projects

Hi Deri,

On Tue, Mar 12, 2024 at 03:19:14PM +0000, Deri wrote:
> Hi Alex,
>=20
> It is not locale, it is a Branden thing!

> If you use the deri-gropdf-ng branch of groff, which=20

Thanks!

> Branden offered to do the release to master for me and has sat on it for =
9 months, all=20
> languages are now supported since UTF-16 is now used. It is difficult to =
understand his=20
> reluctance to make groff pdfs accessible to all languages, perhaps as an =
American he just=20
> does not want the Russians and Chinese using his lovely groff, it is as l=
ikely as the rest of=20
> the spurious arguments he has hinted, but never specified. "I feel the co=
de is not robust.",=20
> without giving an example of how it could fail, knowing that if he did I =
would just make=20
> the code "more robust"!!
>=20
> Anyway, this what I get if I build the Russian version.

Hmmm, that one looks great.

BTW, I've seen another glitch:

In the gpasswd(1) page, at the bottom (SEE ALSO, aka, =D0=A1=D0=9C=D0=9E=D0=
=A2=D0=A0=D0=98=D0=A2=D0=95 =D0=A2=D0=90=D0=9A=D0=96=D0=95),
the last two man-page references don't show correctly.  Neither of them
have a link, and only the second shows up in bold.  The source is:

	alx@debian:~/src/shadow/shadow/build/man/ru$ tail man1/gpasswd.1
	=D1=81=D0=BE=D0=B4=D0=B5=D1=80=D0=B6=D0=B8=D1=82 =D0=B7=D0=B0=D1=89=D0=B8=
=D1=89=D0=B0=D0=B5=D0=BC=D1=83=D1=8E =D0=B8=D0=BD=D1=84=D0=BE=D1=80=D0=BC=
=D0=B0=D1=86=D0=B8=D1=8E =D0=BE =D0=B3=D1=80=D1=83=D0=BF=D0=BF=D0=B0=D1=85
	.RE
	.SH "=D0=A1=D0=9C=D0=9E=D0=A2=D0=A0=D0=98=D0=A2=D0=95 =D0=A2=D0=90=D0=9A=
=D0=96=D0=95"
	.PP
	\fBnewgrp\fR(1),
	\fBgroupadd\fR(8),
	\fBgroupdel\fR(8),
	\fBgroupmod\fR(8),
	\fBgrpck\fR(8),
	\fBgroup\fR(5), \fBgshadow\fR(5)\&.

So it might be due to having two references in the same line.  I suspect
maybe the updated regex has some issues?

This happens in both the English and the Russian pages.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--u3iomJ/o6Mlye5FY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXwedcACgkQnowa+77/
2zLYOA//RB3ZQaIFJAvCkloXXVjeV9C0+QqKksXtafCOlbQtgjh/y+AsRHR22s9z
DlyTN9GpUQORGRs+v/LV1uh39pAwwLH+4xfgrGkNmcqB09FEZn00tRp74NiniNaY
IXgsYaQfBRVjvdLGCdUONkBBbffQALAiBV8Yaaa0i5xZ7cdR6ZY8ieLCrUIrt+IG
NbptzxSuG+l/IpULriNStVI4Xpr+cFdW3sUkQ79XhfG/cPiYgGBR3YRb+YJcCjlx
x4PAm5KrWlariPhcLwZzhHBdN1y5A/YxlXfO6dfPW1Th/GgWC+aVgT5djJ9dcbiX
Bmcp+fAEYhAB2En1YQEeBrmFzR+hXQ99ODKZQVnS95hj72jpfkon6lqr5n2bSzNj
uLGlRjU8Ea6cWfM7ISXKnqHS6arOb/PwMtQraCY0MWrFXvvbbGTFSRVmcphmS0Bw
jRZzoE+7aOg5GF7e0z1kNvgkxZ66T1i4plgWglzIl3L9Ke8I3lIkzlo+6UjTTwIw
TpFA7065xxBA7qmh2CxwcUAnCB963tujHUPCVC0pN54ZG9yk8HmG50onMYtLTURo
cCiJexGpOLJ7JY/hENnxW8eNIjp/N+YAjxBaqoNiu3fsW3KfuneVH4/kJ7DB11Sb
1DLPc1EEcamF7nq5HF/i7nHmGnYDRy7fxiTUmGbw6xgBKlbMC3w=
=hkLW
-----END PGP SIGNATURE-----

--u3iomJ/o6Mlye5FY--

