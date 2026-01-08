Return-Path: <linux-man+bounces-4728-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56945D02F7A
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 14:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A735F32213D4
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 12:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD4BA45BD6B;
	Thu,  8 Jan 2026 11:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI/pUsq1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4301845C3A6
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 11:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767873001; cv=none; b=ZNscFdmphlHNj/AIRg8euIcx2NB8cIUlMZTmmp3/fAG/JFvh8tjod6kq9u3MuuqbQrkorXxpQlzP/AjWavRZrJyob+CZbkbz+ReZYuAl/EEGZ2/ueHDQLFewhG1YP/G7CYrn03LiskkASvISWv9df1RsV2GNIqOOg+aIbXBkRMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767873001; c=relaxed/simple;
	bh=7ZcNzOxbEfqH1j2i6LWBLgFreEwW1pBm+ZSRQCyyFe8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j/yyX1eSNrZiENVS6egdkYI0zyk5xyTvHXgW0Cno0wpNzACJKFwyypxi+mfC5dNkhmLjWd86p5AR2wlqbRxrVf5eaOksMmVAwQ4ryLZgeqQHTckn7HMennDqfuxKY8cvKldjz8mv8Az5L9EZa8iw7ESaX/DsVRC8i9gby83mYKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI/pUsq1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D74AC116C6;
	Thu,  8 Jan 2026 11:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767872999;
	bh=7ZcNzOxbEfqH1j2i6LWBLgFreEwW1pBm+ZSRQCyyFe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RI/pUsq1aGII64Vg1HdEUTOUggCxcKtyw/Hx/DM62OpaWk5QA2sOtX/qoxVkwzhqz
	 Lg8Hhsw8zGGX0sU5a1Xsen+H4+4X5LjltYRIF5AY8reMq3ceOcm1RL4ev4cm0iGGQL
	 gtYfBswRmkc9Dd1AvirgTXjBrsZhvTmczhaFfWQNrqFUchN9MbregJ6huyFfAdaE/o
	 UI9a+GslE1/1jdNqYS6nWHdG33Z3AEDYAlIq7WTriCbHV7bjKtk1qu2hXYg9JYOxcy
	 Rh8QvKWc4ZWDOMZgO8PRbb9JFI1fENddJBxAz0Wo4BcP4bc/VLo9jZ9nYGEoxs8Lvt
	 1e9kDxd2igxCQ==
Date: Thu, 8 Jan 2026 12:49:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/11] man/man3type/*: Update simple history of types
Message-ID: <aV-ZtGpXPnKguHBZ@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vvygu7zssfffoeip"
Content-Disposition: inline
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>


--vvygu7zssfffoeip
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/11] man/man3type/*: Update simple history of types
Message-ID: <aV-ZtGpXPnKguHBZ@devuan>
References: <cover.1767840410.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>

Hi Seth,

On Thu, Jan 08, 2026 at 01:03:06PM +1000, Seth McDonald wrote:
> Hi,
>=20
> This patch set updates the history of types that have only one standard
> listed in their HISTORY section, meaning they should have no ordering
> issues.

Thanks!  I've applied all patches except 8 and 9.


Cheers,
Alex

>=20
> Seth McDonald (11):
>   man/man3type/itimerspec.3type: HISTORY: Update first POSIX appearance
>     of itimerspec(3type)
>   man/man3type/mode_t.3type: HISTORY: Update first POSIX appearance of
>     mode_t(3type)
>   man/man3type/off_t.3type: Change VERSIONS to HISTORY
>   man/man3type/off_t.3type: HISTORY: Update first POSIX appearance of
>     off_t(3type)
>   man/man3type/sigevent.3type: HISTORY: Update first POSIX appearance of
>     sig{event,val}(3type)
>   man/man3type/stat.3type: SYNOPSIS: wfix
>   man/man3type/stat.3type: HISTORY: Update first POSIX appearance of
>     stat(3type)
>   man/man3type/stat.3type: HISTORY: Specify first POSIX appearance of
>     st_{rdev,blksize,blocks}
>   man/man3type/stat.3type: HISTORY: Specify initial datatypes of
>     st_{blksize,blocks}
>   man/man3type/timer_t.3type: HISTORY: Update first POSIX appearance of
>     timer_t(3type)
>   man/man3type/timespec.3type: HISTORY: Update first POSIX appearance of
>     timespec(3type)
>=20
>  man/man3type/itimerspec.3type |  2 +-
>  man/man3type/mode_t.3type     |  2 +-
>  man/man3type/off_t.3type      |  4 ++--
>  man/man3type/sigevent.3type   |  2 +-
>  man/man3type/stat.3type       | 19 +++++++++++++++++--
>  man/man3type/timer_t.3type    |  2 +-
>  man/man3type/timespec.3type   |  2 +-
>  7 files changed, 24 insertions(+), 9 deletions(-)
>=20
> Range-diff against v0:
>  -:  ------------ >  1:  48b823b1a965 man/man3type/itimerspec.3type: HIST=
ORY: Update first POSIX appearance of itimerspec(3type)
>  -:  ------------ >  2:  90f54d80c479 man/man3type/mode_t.3type: HISTORY:=
 Update first POSIX appearance of mode_t(3type)
>  -:  ------------ >  3:  c1498253ab68 man/man3type/off_t.3type: Change VE=
RSIONS to HISTORY
>  -:  ------------ >  4:  6b062b0d6afa man/man3type/off_t.3type: HISTORY: =
Update first POSIX appearance of off_t(3type)
>  -:  ------------ >  5:  6919cafeb4e3 man/man3type/sigevent.3type: HISTOR=
Y: Update first POSIX appearance of sig{event,val}(3type)
>  -:  ------------ >  6:  84a9e467d506 man/man3type/stat.3type: SYNOPSIS: =
wfix
>  -:  ------------ >  7:  0611f62eeedb man/man3type/stat.3type: HISTORY: U=
pdate first POSIX appearance of stat(3type)
>  -:  ------------ >  8:  9d3a705508aa man/man3type/stat.3type: HISTORY: S=
pecify first POSIX appearance of st_{rdev,blksize,blocks}
>  -:  ------------ >  9:  e13690db2fb6 man/man3type/stat.3type: HISTORY: S=
pecify initial datatypes of st_{blksize,blocks}
>  -:  ------------ > 10:  eb28bf22aed9 man/man3type/timer_t.3type: HISTORY=
: Update first POSIX appearance of timer_t(3type)
>  -:  ------------ > 11:  d25e140aaabe man/man3type/timespec.3type: HISTOR=
Y: Update first POSIX appearance of timespec(3type)
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--vvygu7zssfffoeip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlfmeQACgkQ64mZXMKQ
wqnkVRAAhqaQxohBjgU9Bs7ZBcsC86Gsa7fHWwfmce8zYtrgGvp/5U48KWdFjWDO
k8rWe3El287AkQOaB0mWswUcKxkMTecf09Hr9k+JvvQd1PyRZKMx/kIkhYjlUYdY
yc4lac892oJ8uNVHdluhngD7Ec++02fF5iZsCzw+bkWRypcWhiPNGv/cp/dUFOZb
uLkGcfLu4KqdtbTSx+EMvZ9whKm5NzjOkMNWFEub/DdMg7jZZ7U8y6SgnznO7mi5
uwbStRaQL7plOwPjMtlZa/PA8SoJui1F1uU/gpL6F89bXD123OBjqduuJIe41fRd
dAD2px9BzIorKIPpZgto4INaTHA0jQzf58jXrtFzxfM5S9yRjLfxEm0mvk6iRtA+
kSVSrlc+1LUk7e8hqXQwL1ujFoB7/7/eAD6V2sinI0B7kASX0YxZ8gcg3wNkkm/a
5714pJbiXS81GQC9LdMOJ3gpGLpuHrhXyNYYFXlRTeqywpy/pRt2uu0koQ5lb/LQ
zS8fO4rDe0nTsQJ4LrS6LQT7wKNFzWQrXJE5Rweao5loreuvem5iIOkJx1BSlKXL
hgrI8iHvzihPsfdDvhrbDGZ+/sKe154+EHyfsIE+HDA6lGIwdGVL/8vZLsteOIwE
YR7wQw3jKyVHsFYFWfM4U3hLju3mrYntgG9hkbO6JuAUT/9cPi0=
=mmGq
-----END PGP SIGNATURE-----

--vvygu7zssfffoeip--

