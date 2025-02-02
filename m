Return-Path: <linux-man+bounces-2319-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E22A24DA5
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 12:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2887518843AF
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 11:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A2D1D5140;
	Sun,  2 Feb 2025 11:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+ZlHuho"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FF61F5E6
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 11:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738494375; cv=none; b=NEgHFCaXSkyCbSUs/H3IENl0rZ2BliYMH8YQercXXPnLpwiizXNQ9USZqLlPyhZM21WSXJhgSK8grd7z19AKs1aklC7l7bwPYjTBZJw6I+/SUxQBZHN7D2RVdQcXQ5CEc0ob1kz4ElsTATi9osKJJdEdA50N1EpWeaOmGgcsKPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738494375; c=relaxed/simple;
	bh=VY40SJ4gk3QM0oGqjuuz0817tug8giQNds6rbkzptxM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=idKOXfZ5ks7BJYeFyfcc5wRaPgnLgdUmAFKszyaTf8V+gdQPa/vG0Rg3jYkpkQ12iN0I/qmu/3YvBfNoP8r+8MtcuIGXdccFzsYv2N4d3Ch7zwBqiVqOQoJERnLwsP9XyWt+ARUF4BL+vKVnfHaGFLO34JhjY+wyvpkkA5AeFpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+ZlHuho; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D91B9C4CED1;
	Sun,  2 Feb 2025 11:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738494374;
	bh=VY40SJ4gk3QM0oGqjuuz0817tug8giQNds6rbkzptxM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B+ZlHuhoUW5RTUpo7PDRUh+l0KVV9S1OMdI2YfnlV2pN+Z90aIxVFqxHlqf67hFHw
	 qEBeCOqlTRZPkbDchhdqHfoYnrr7saV3U+Pgvn9Un8Vz+W4MKsfZqYMvfEdh6GYUj4
	 /SdZOK71LAb7quIO7nRHsBWpodl0dtiV7Wts8UKTuI5UllHHynsacuE0i/JRhVn854
	 5gWoM6L3N9gaZMdnVpa/KtgEaytrAwzFlaARRgg6o5Dj3TYNl+fP3f8A9i/1dd59MR
	 B/gxfP14OooB5FvGQWftAh9GjVkpdAtByS8ZfA1QmM2cACxAIc9V0ZpsPmlKsUaRqz
	 +sstRyYe0lupQ==
Date: Sun, 2 Feb 2025 12:06:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: signal(7): should it mention that SIGCHLD is also sent when
 child is continued?
Message-ID: <zukhppwbbsyxlodjg3oipeop2f5hhgbxkxkjdqa63cuekgffn3@bmun5h3a2ojy>
References: <Z5U0Wh_KF3Ki62Pk@comp..>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n34mfze4ujq6sme7"
Content-Disposition: inline
In-Reply-To: <Z5U0Wh_KF3Ki62Pk@comp..>


--n34mfze4ujq6sme7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: signal(7): should it mention that SIGCHLD is also sent when
 child is continued?
References: <Z5U0Wh_KF3Ki62Pk@comp..>
MIME-Version: 1.0
In-Reply-To: <Z5U0Wh_KF3Ki62Pk@comp..>

Hi Arkadiusz,

On Sat, Jan 25, 2025 at 07:58:34PM +0100, Arkadiusz Drabczyk wrote:
> Currently it says:
>=20
> > SIGCHLD      P1990      Ign     Child stopped or terminated
>=20
> It's the definition from POSIX 1990 which is referred here but the
> modern POSIX says that it's also sent when child continues
> https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/signal.h.html:
>=20
> > Child process terminated, stopped, or continued.
>=20
> It's supported on Linux - in sigaction(2) a flag is described that
> controls this and it correctly says that it's sent on stop and resume:
>=20
> > SA_NOCLDSTOP
> >
> > If signum is SIGCHLD, do not receive notification when child processes
> > stop (i.e., when they receive one of SIGSTOP, SIGTSTP, SIGTTIN, or
> > SIGTTOU) or resume (i.e., they receive SIGCONT) (see wait(2)).  This
> > flag is meaningful only when establishing a handler for SIGCHLD.
>=20
> The question about wording in signal(7) has been originally asked by a
> confused user here
> https://unix.stackexchange.com/q/790116/72304. Should it be changed?

Yes, we should change the comment in signal(7) to say that a continued
child also generates that signal, and the comment should also mention
the POSIX version where this was introduced.  Would you mind sending a
patch?


Thanks!
Alex

--=20
<https://www.alejandro-colomar.es/>

--n34mfze4ujq6sme7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefUaEACgkQnowa+77/
2zJTlBAAm4EppJ3DltJM224nOj8jcBMvl5ohzwL6Qqnromp3neVhibyrqA3/Foat
Mms6+97ETWl2UTpQ3oy3Eh3ASHw673v3y1jhLELdKCrtO9p2WlfqdNRlmrvw2+Jo
pmouu2pq7+UMk0eWf/KB+W/kYzuNW4r1bsrakpnqFW+jkeS28+1tWKBw7fJNGber
eRqi+PNr8FuW6h8ValF8BAvRMIEanUB84863wLifBKG4xrvGockSPr2ieASA52Ar
ypyR3G9QXUbRLbAxvsofUOfmZqPpxS5DsORgxbEfjZyqzGnjVNBXLFevLAQ6ZoHk
LqqB3n4WTMpwd0U1zvzbjt5VJ6wxnZuk8TusvsAU7nVPnG9TdJGr/sGeJp636tK7
Dz+rinsXceRp6nPadQ/YVnRqSKidxZkNLQQrisp6RPsrSWg98wrEVWcJpIeXjhks
lVblAfCzIP01EDCijjRXPN+XZbz/IXCTeQkzLrV3ixigditmh9BvRl5QQOX7dOZe
dryXcm0N41g5kEi3RJeebTMQJQhdKoL1AujIR7AC4IZpuvPMgO6pCD8o1UGO1Hsk
2lPYo8w1sY7kEp8xXG0CRPbvk+3uOIgBp2K5OyshgUVsZUYGIbCPrvSCE1hlCijp
d2MWVTifkcu1rn3NkFpSqrpCY1KVGMiCoA3Hh7remlHFiSTO9vo=
=XKHP
-----END PGP SIGNATURE-----

--n34mfze4ujq6sme7--

