Return-Path: <linux-man+bounces-3856-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B38BB52BFC
	for <lists+linux-man@lfdr.de>; Thu, 11 Sep 2025 10:40:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A2DE17BB3A
	for <lists+linux-man@lfdr.de>; Thu, 11 Sep 2025 08:40:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4E12E36E9;
	Thu, 11 Sep 2025 08:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgS0xWTz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB87C2580E4
	for <linux-man@vger.kernel.org>; Thu, 11 Sep 2025 08:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757580038; cv=none; b=rHZ6aHvmQ2MpfdbgOOUNfNCTeNeZPss+fme0hsUx812TzKTJkVII/2Qm8T7McJChPWBoYJjFuKy0BagXdmyz0EWRGn7lrrqU7Z4VDrzaIs7oHgThMQlbDk08mgJjCIiZ/i6Qw2AL3uphemWf3fwrja7+6/ZVddDB3tNtbIVj0SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757580038; c=relaxed/simple;
	bh=UJFUlEeUHeLvVGp3NSkdg5qKoBv+FNrMY+kKflUuLro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TsD9sVBY83TMJSIbxpEV0cyZ9e/cwwtuXbu2YsafPb7pfZm/DjBaD5IC5+Ow8Y6b+j+UFGDMCe7Xd44roMxit5E02tdL3RS/DpT31R1NsIdHrOMxF1wCjzj/ZB8GCCIqMQVAALtUBmkMM8XULDl6joBrcpNmlq+oZCag12oc+9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgS0xWTz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E768DC4CEF1;
	Thu, 11 Sep 2025 08:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757580038;
	bh=UJFUlEeUHeLvVGp3NSkdg5qKoBv+FNrMY+kKflUuLro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dgS0xWTzXIKkfrusyYxyT8t5U1AIjWDVu/qRTaOudAw7U3P45Uq6DLB2xWdl2yf9w
	 CYZtSEActJg4olntkYpfgr6P8qbsHNbeWENR7EIaUEfpA8dQynbl5PHY3crPVlb4Ag
	 3JpYjnuCdUPHKrMNde32948Datdp9T0u8pK3D7iC0pGjTHf9CeWOHfHGOkBriZTNga
	 0cjif00RLG3R+tOGSUuvph4xl9GatCngD/wV8+U4sSrs1+qFg9uKl9F+j6IOMas4NJ
	 3Ro9xdOoyijLZL5Ms5nXfAw343JZqZLopFT2Q2u2xmavgl5Mvr38vw0GnPIkSO0oCl
	 kiELnmSGPueWQ==
Date: Thu, 11 Sep 2025 10:40:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Davin McCall <davmac@davmac.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Possible error in capabilities(7)
Message-ID: <n4vyah4lmdwlfopbtk7z74jvxhgbeu764eqzhimrlt6w6bel6o@hbfw2lnzxvd6>
References: <b7f25b3a-5618-139d-9f10-ba2f6ec1dff9@davmac.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="32hcr3hrtpm3hl6m"
Content-Disposition: inline
In-Reply-To: <b7f25b3a-5618-139d-9f10-ba2f6ec1dff9@davmac.org>


--32hcr3hrtpm3hl6m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Davin McCall <davmac@davmac.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Possible error in capabilities(7)
References: <b7f25b3a-5618-139d-9f10-ba2f6ec1dff9@davmac.org>
MIME-Version: 1.0
In-Reply-To: <b7f25b3a-5618-139d-9f10-ba2f6ec1dff9@davmac.org>

Hi Davin,

On Thu, Sep 11, 2025 at 06:12:24PM +1000, Davin McCall wrote:
> I think there is an error in the "capabilities(7)" man page. It says, und=
er
> the heading "Capabilities and execution of programs by root", the followi=
ng:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thus, when a process with nonzero UI=
Ds execve(2)s a set-user-ID-root
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 program that does not have capabilit=
ies attached, or when a process
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 whose real and effective UIDs are ze=
ro execve(2)s a program, the
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 calculation of the process's new per=
mitted capabilities simplifies
> to:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 P'(permitted=
)=C2=A0=C2=A0 =3D P(inheritable) | P(bounding)
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 P'(effective=
)=C2=A0=C2=A0 =3D P'(permitted)
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Consequently, the process gains all =
capabilities in its permitted and
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 effective capability sets, except th=
ose masked out by the capability
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bounding set.
>=20
> While it seems odd, I think the "|" in "P(inheritable) | P(bounding)" is
> actually correct: the permitted permissions become those that were either
> inheritable or in the process bounding set. However this contradicts the
> final paragraph copied above: "the process all capabilities in its permit=
ted
> and effective capability sets" - no, it gains all the capabilities in *its
> inheritable and bounding* sets - "except those masked by the capability
> bounding set" - no, capabilities from the inheritable set are _not_ masked
> by the bounding set.

Could you please execute a shell session that experiments with this and
shows the exact behavior so that we can compare that with the wording?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--32hcr3hrtpm3hl6m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjCivoACgkQ64mZXMKQ
wqnXcA//fJjaDLzkV2F5PpKD5A2ozcAdVrXbHKjEXGM3BlJc/J91KotR9E0S2Q7f
WXI35Y0hyigpyhd5nhRsW3VF8yXmqv7Dz/5fGDESgDew/kpLeCoTSicMUNGzn4yY
8iIgtt572BfZpcaqL5CsBH3QEdK21sAT8u0ELz35o4hR77nsLSzqWij6d8VALu+P
20kBqXZ5iY9GAzVj2K9r01eKl38LgKiDSxBn1M798z+sSKCwVDIk/LkPxp5lY9Wn
PgglHXkxM/KgSYtK7avjSQS2tiYQorcegdGwq9UEuV8EoDHN7zhQpl2Pt95GLUHk
mszpkBioVRJfs+Yr8EqF6l8EIGgLzUJyM2ywQ4ve9TazKmZkKnvSPKDPPFgr1jCJ
IL5eV2ub4DsH6dw1T28SdkvDvlH1vAO/0KtRUPMXTWp4X0SPMYEnzidh0WgSfQux
zFYAbwuuS4AWzGLuTLARYSmQ7Nz117OLP5F+dlQerSymIm5JXBYbzVQwd3OuJBTk
uLpQe4XTP/Npzmud6IVljrM+F2dSCaHlYizMTYletW1Vgq+ChKQYVlESquPS097S
j5Zbgdq5XoADl2Hx2BlR0S0/qye3K9IprUMhFE5ov+WlQwJUnpd5sx6gluA7V1sB
MvkclFT/P51HA+JERfWZ2KMVfKuZ33vsevt4EjFE89LTvaXmMXY=
=BhRX
-----END PGP SIGNATURE-----

--32hcr3hrtpm3hl6m--

