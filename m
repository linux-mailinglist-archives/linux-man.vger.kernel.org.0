Return-Path: <linux-man+bounces-2212-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FEEA082BD
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 23:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B04EF160C16
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 22:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 877A1205AD2;
	Thu,  9 Jan 2025 22:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czRXP2wh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468AF204F7A
	for <linux-man@vger.kernel.org>; Thu,  9 Jan 2025 22:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736461475; cv=none; b=d/DXgdra0/woySsr+XFnr348oeRPj6+i6vcWm7UMUd0pGTrYh4BWFRnbJO4FzorjSqBu6oRX4pisuDlrYNQZ+AwLgLosDQRCDP1b/aMRHimKx/IXjjd7I02CC+jqw4hNN98IUYDjC7ECSWFNgCG948cIbAznL1R+4p8PKYKDCjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736461475; c=relaxed/simple;
	bh=Shq4autqw0qGTUV52UYAijB5zbDPYKTKegv/SYCVPuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D4NmkNMUSj8VI+gwrHh9VvUpp/c1vLg8fQ69R302IYO7RfrH23DsDVYJ9NlDlPVYlNpDPj32utaL3d9jiIuRTP8uF+Z17Ua8hsTCMC9sw2QJQF4zwKgp/lgAJp0Tw3ZU64ThIZ/U1kjjvSVD6q3mbc8zu1+1NDnQvImUtCrdt5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czRXP2wh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9D19C4CED2;
	Thu,  9 Jan 2025 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736461474;
	bh=Shq4autqw0qGTUV52UYAijB5zbDPYKTKegv/SYCVPuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=czRXP2whRJLLaAkCAOFJheGAwvMYEmMCJB2N9vaWwnBOPZNfxTzWxrFeicbmQ3y4/
	 xzHk2AuYYSVuewRK4zFnHbvt0obP4iD+M8CKlBD5JTZ+h6WixlRmYpNwniK/lanvk5
	 LuGvJNi69deahKrXPgRUfZ4OMxdtVESX/yW7CgmeR6hQIYC5F6xsxIWGUZGFmBuuDF
	 M19+lM+bkrerMkALuW70tTip8YV35fmNh5qDQ+t96GuFsgdHG1cZ4X9waJnt91djrx
	 xTsVxBRcRaAv2ZpVd6W5u6YXGoI5+zLqd/pjNIwMBb2QWJyd1IkSl76XC/2jmPHFOS
	 N0kGRkSYl7xHQ==
Date: Thu, 9 Jan 2025 23:24:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>, Dan Albert <danalbert@google.com>
Subject: Re: [PATCH] man/man2/stat.2: Add missing 6.11 AT_EMPTY_PATH quirk.
Message-ID: <6nzv22aujl53ew4pqenflniygkh5hchjxgrh6ikkcit5mghksp@iiiakkdxgcnz>
References: <CAJgzZoqAOpJajmAnr-i9h3sPC8F_Uu0A+3eg4nkP+xTAV5fPGg@mail.gmail.com>
 <nwauygp7cdhazyz76wuel6vrkukvd447ijquxxswipfpucrhqh@oheowzbs2sqb>
 <CAJgzZorN0mFU8UVwpWJO19+t_wTJkEApcfrRj_XcG=W54KAzAA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uwxhgaon6m7iexst"
Content-Disposition: inline
In-Reply-To: <CAJgzZorN0mFU8UVwpWJO19+t_wTJkEApcfrRj_XcG=W54KAzAA@mail.gmail.com>


--uwxhgaon6m7iexst
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>, Dan Albert <danalbert@google.com>
Subject: Re: [PATCH] man/man2/stat.2: Add missing 6.11 AT_EMPTY_PATH quirk.
References: <CAJgzZoqAOpJajmAnr-i9h3sPC8F_Uu0A+3eg4nkP+xTAV5fPGg@mail.gmail.com>
 <nwauygp7cdhazyz76wuel6vrkukvd447ijquxxswipfpucrhqh@oheowzbs2sqb>
 <CAJgzZorN0mFU8UVwpWJO19+t_wTJkEApcfrRj_XcG=W54KAzAA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZorN0mFU8UVwpWJO19+t_wTJkEApcfrRj_XcG=W54KAzAA@mail.gmail.com>

Hi Elliott,

On Thu, Jan 09, 2025 at 05:02:05PM -0500, enh wrote:
> > Regarding "Add missing", I decided to transform that a little bit.
>=20
> (no worries, i just copied that from one of your more recent changes i
> saw in `git log` anyway :-) )

I should have asked more questions in that one.  :-)

> > BTW, you should have a look at this:
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d/git#n11>
> > That will produce more useful hunk contexts.
>=20
> i think the trouble here is that i tend to just check out a new clone
> every time i have something to send to you, so this keeps getting
> lost. is there any way you can make it a property of the git project
> itself?

I don't think so.
<https://stackoverflow.com/a/18330114/6872717>

> ... ah, actually, no, i was just on a different computer /facepalm

No worries.  :)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--uwxhgaon6m7iexst
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeATKYACgkQnowa+77/
2zJJYw//USyhWoctKDEwmI14s2ZyfJKzPao8ohK88liLjODRR0YNPaV8nOiHd1BX
XizqrWttgnbI9Y3MEaLCsEv/cc8RutlN3mojmogJw2/yi/iUbeN5OPw8jpWX4RKt
kTvCES37aCu43AbHvydeIidCSmXVxR50vE4nfx0uMAau8DAIAHT600hUEY8S/DMM
iXCjpqpSPRP9NdKZ/BjeoE92P1WMmHT1pqPHe68DHzdl++jWGKLAHEYaln7LGHzT
xOg/OU0eV5wWBMLN7CenjFT0PxVhpmVdR0lK4I+LpQL9NbIP5m/h+aD7AIdziynV
1FBF4OF7L2/sUNj+cXYSYNIZsYX+r6cB8YmXq+hdnrwr906ZwrjE2sZq0Ibvh/x9
KPJEtw02xObY79hsw62c99ldH05KSKFVyF3kRBnqn2dfeX9xPEZ1JoNxYLAut1rl
TwGMiB08AyaCGibIqa8IZ7baEiyFwAAaL5HINg06/zxUR9nxEmSs4VahvGgMmpIN
4OEH1FB+XPHBf5sJ+8BYFMMGye0DVrHA1qXbbIX8Xsn4DPiBYfPiIj/fZypJu0xm
Y6PIzzsVNgYfyOIP+iIG8MOzoQWTQEwyZxLnNW4q6OCEdO7uIl17PzkMy5/73LuH
eEtz5XG4g+cFsszw4GcYHOfBpFiO0i3MxNkyggM4p6BTOEnKwmk=
=0cMq
-----END PGP SIGNATURE-----

--uwxhgaon6m7iexst--

