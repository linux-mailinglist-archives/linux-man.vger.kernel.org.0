Return-Path: <linux-man+bounces-4377-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB58CB16BB
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 00:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2B303005FFF
	for <lists+linux-man@lfdr.de>; Tue,  9 Dec 2025 23:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E743090C1;
	Tue,  9 Dec 2025 23:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUDAJ7oB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EE22FFDC2
	for <linux-man@vger.kernel.org>; Tue,  9 Dec 2025 23:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765322317; cv=none; b=uXgQlBgReTkQTPMWuFX3D+AOnBADHLbXDV0e19nHFlrQjC3PSifev/IqPlDZTa8ErbrmtyN8vuu6EalqoBS4veQtEd015pEtK3cOHMb2sdzoloGeh8ICR2m4M/JeeMQs/I78r9zqUcRcx/AKYTBRn6sTz2OXsUc7RtLjwlzqayI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765322317; c=relaxed/simple;
	bh=SNTiouCfDklxhsNO2RONtwHx6BrB1CcFCJmFDKRVBl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yc/0K7rgnmS8FHUS+J09lDIoFeIzb+0Mk8UX/6d98ZiqqCMoFR8CfWvmadbOXw5EE7kuxo9uxrLci8oa2LjnXSRb+kH06mSlV0GaFfTKlSufQ91H8sTkBJDvKlYvvWwieBihxUgJFm137BCH+lkqFHl2SOHEtwHjw+ekCpF0MNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUDAJ7oB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37C25C4CEF5;
	Tue,  9 Dec 2025 23:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765322316;
	bh=SNTiouCfDklxhsNO2RONtwHx6BrB1CcFCJmFDKRVBl8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HUDAJ7oBUPr3fVZI6ouBz+0aYM1ou/JtKTFXu3JdB/W07ivyXT/Z2m+AHTHouxM7v
	 CZydWyt3xIfIuLlgfX9lrBlXo8QBQK2yHWFYrLO/TWAOT0og4jUWIiG4SM37Ct9RNL
	 9mvl8LvHejRTGYSUNeKR8BVvOGQZeArkmgi2uZFSrJxZEEa09HGqzsz0g3+O1Y0Je2
	 Ot053QGpm3HeLKoVjEqv4PDtVs9X/mEqD4OwwcvFxFSzMrTG4k6ybovwAQcnUiFx77
	 +rUy/eCU8w2chg2cG9gYrlgGmiRmIcXvY1mc6ohUzvZZMLMSoL9EZfW6/G1q48CpOt
	 2F0VXjY8VQhtg==
Date: Wed, 10 Dec 2025 00:18:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ash Holland <x-hv2j5m@keysmash.solutions>, linux-man@vger.kernel.org, 
	Colin Watson <cjwatson@debian.org>
Subject: Re: [PATCH] man/man7/man.7: Don't warn if groff_man.7 is not
 installed
Message-ID: <k6mao7t24tzvr32ixz3o6scqfx4wdm7ffnsdibeb3kpfrn4gtv@iwticjuplith>
References: <03f1e33dd6200c05afaff1f116f5b254cebd45dc.1765314181.git.x-hv2j5m@keysmash.solutions>
 <20251209215149.6ah577ddtqabyypi@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hhmhy4i5w2bjfbca"
Content-Disposition: inline
In-Reply-To: <20251209215149.6ah577ddtqabyypi@illithid>


--hhmhy4i5w2bjfbca
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ash Holland <x-hv2j5m@keysmash.solutions>, linux-man@vger.kernel.org, 
	Colin Watson <cjwatson@debian.org>
Subject: Re: [PATCH] man/man7/man.7: Don't warn if groff_man.7 is not
 installed
Message-ID: <k6mao7t24tzvr32ixz3o6scqfx4wdm7ffnsdibeb3kpfrn4gtv@iwticjuplith>
References: <03f1e33dd6200c05afaff1f116f5b254cebd45dc.1765314181.git.x-hv2j5m@keysmash.solutions>
 <20251209215149.6ah577ddtqabyypi@illithid>
MIME-Version: 1.0
In-Reply-To: <20251209215149.6ah577ddtqabyypi@illithid>

[CC +=3D Collin]

Hi Ash, Branden, Collin,

On Tue, Dec 09, 2025 at 03:51:49PM -0600, G. Branden Robinson wrote:
> Hi Ash,
>=20
> At 2025-12-09T21:38:00+0000, Ash Holland wrote:
> > When I invoke e.g. `man man`, I see a warning:
> >=20
> >     /home/ash/.nix-profile/bin/man: can't resolve man7/groff_man.7
> >=20
> > This is observed by others too: <https://askubuntu.com/q/1521258/478436>

Interesting:

	alx@devuan:~$ man man
	man: can't resolve man7/groff_man.7
	alx@devuan:~$ man -w man
	man: can't resolve man7/groff_man.7
	/usr/share/man/man1/man.1.gz
	alx@devuan:~$ man -aw man
	man: can't resolve man7/groff_man.7
	/usr/share/man/man1/man.1.gz
	/usr/share/man/man1/man.1posix.gz
	/usr/share/man/man7/groff_man.7.gz
	alx@devuan:~$ man -aw groff_man
	/usr/share/man/man7/groff_man.7.gz
	alx@devuan:~$ man 7 man | head -n1
	man: can't resolve man7/groff_man.7
	groff_man(7)            Miscellaneous Information Manual           groff_m=
an(7)

Why does man(1) resolve the .so directives for listing files?  Shouldn't
it just list the file I asked for?  If the file is a .so page, I want to
see the file that contains the .so, and not the file it sources.  It's
my problem to follow the .so link later myself, I think.

That would remove the diagnostic when reading man(1), because unless you
try to read the page man(7), there's no reason why man(1) would even try
to resolve it.

I'd qualify this as a bug (or at least dubious feature) of man-db.

mandoc's man(1) doesn't have this bug:

	alx@devuan:~$ mman -aw man
	mman: outdated mandoc.db lacks man(1) entry, run makewhatis /usr/share/man
	mman: outdated mandoc.db lacks man(7) entry, run makewhatis /usr/share/man
	mman: outdated mandoc.db lacks man(7) entry, run makewhatis /usr/local/sha=
re/man
	/usr/share/man/man1/man.1.gz
	/usr/share/man/man1/man.1posix.gz
	/usr/share/man/man7/man.7.gz
	/usr/local/share/man/man7/man.7

> >=20
> > To avoid this, we can simply ask troff not to emit this message:
> > <https://www.gnu.org/software/groff/manual/groff.html#index-_002esoquie=
t>
>=20
> I'm the GNU maintainer of groff and the author (instigator?) of the
> `soquiet` request.  Your patch isn't wrong, but I must point out that
> the `soquiet` request is new to groff 1.23.0 (which isn't that new
> anymore--it was released in July 2023).
>=20
> > -.so man7/groff_man.7
> > +.soquiet man7/groff_man.7

I'm not yet convinced that this is beneficial.  I'd like to first hear
Collin's opinion of my proposal of not following .so in man(1)
unnecessaily.

> If Alex applies this, it means the page redirection[1] will stop working
> _where it had been before_ for any systems using groff 1.22.4 or older.

Would it be possible to implement a .soquiet fallback as you did with
=2EMR in Debian?

> If Alex wants to make the Linux man-pages require groff 1.23.0 or later
> (there's been no subsequent release, but I'm working on it[2]), that's
> fine with me, but such a decision should be announced so that
> distributors of man-pages packages can judge whether they need/want to
> increment the versioning of their package dependencies accordingly.

Actually, this will happen sooner or later, and the exact date depends
more on you than me.  MR.sed is coming eventually.  :)

I'd prefer if Ingo would release a new version of mandoc(1) before that
happens, but I'm not going to wait forever.  He told me he might release
around the end of 2025 or begining of 2026, but that it wasn't certain.
We'll see.


Have a lovely night!
Alex

> Regards,
> Branden
>=20
> [1] that's not really what it is, but let's pretend
> [2] https://savannah.gnu.org/bugs/?65099

--=20
<https://www.alejandro-colomar.es>

--hhmhy4i5w2bjfbca
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk4rkIACgkQ64mZXMKQ
wqmUjQ/+M8xxVlLBDn77GlLUdXL1G1CVrrYCqQ/0rWhXSu/ZHa2sx4aY/98xRaOt
gpGiRYo+g7M1IOK44tazrKn/JQRGc6x341AA5judjuKIz8/rs4IDYSK9mI3nGRmy
o7bzofnalAqTsO2yFqqG9yzBvMR7adK0Z1MujOE1veRR6DrLa9Cu8WxHLAzggRiC
63Y2RC2dRymouRlvKr2rbFJ1+kO9/wES7hXy1VPJ+7OcuOyjkMiSrMbg1lRsHtSu
0Aa2NQYLH0CD/UXA/Aplkwh5ASSM/dveQdVoJBzRf1YfpVZEdE3y88s80Dk1+2y8
E1MySex9knqcwtDsGShPuUWyxwESoYEqxfv5YmjByH7DzWYtlFaDf7TYMhWFljtu
7GUdRtRZe3Rh7W721LJMCNlOmgT0a6c84B4B2qb+WON+bkk4SZ93AiZH9DhUtVYT
AjIe6jh+Hx5N73xgIOFLmV0x1tadT55UQHgCc/z6n5rkxUZ6+YYsXo6kPIYcs3SZ
0FY1C5VWW0JD/SbUWK3QJ4+BViPHBYMrz3CKY0fbXHFOACzivGL328qQE1Iz72/J
RyPVr1QWmna5yHoV0003qdGRgawsuM4nJfIbWD3T6TaLfPqxRV1nSRnpMsxTgWAG
Yz4eztPsZ2ONMXhIyTPv8zmbKcOlr0XP8U8It21iPaPg+iQc1Vw=
=xowR
-----END PGP SIGNATURE-----

--hhmhy4i5w2bjfbca--

