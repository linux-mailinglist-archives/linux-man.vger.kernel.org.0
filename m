Return-Path: <linux-man+bounces-4776-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AA6D08A1C
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 11:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE01B3061B18
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 10:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9861D18DB0D;
	Fri,  9 Jan 2026 10:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5pfN7Es"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DC13385B1
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 10:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767955194; cv=none; b=G9N+nueIbgNkta8ztC2Pf4kLleC0GAfD8alIyAj5HbQdX531CnLB/Sy3HEW/zTqyDkDl1e3bVCrOcmihWUvDfjkiBB9Eg/OWKmAEjXy1b2IBEp6quVlWsV0J8yuNcFehjtvWHd1e8HnWB6BxGb2E2FBQ2z8eiNoXcGkfg1DojDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767955194; c=relaxed/simple;
	bh=kB7RFeQco0kiaRN/PJlnlizrSkb8RVxWbFWBto4xYI4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PRgMvkmf6yfBXP0LsYFtE+zxfLhjWW37o8OV1m3H2JPf6Itz+BTLaP4XyMXFeGj6DC+AVQO4DYTC5pEHiMaNutqJGGeV7VY9cZBpky+zZMCtM9jG4SLgm4Zgj6tVuPkjqQuqsiJVd8x8ZjssCkzr8gHP/+lc4rpNKkF99E4E9qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5pfN7Es; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B506C19422;
	Fri,  9 Jan 2026 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767955194;
	bh=kB7RFeQco0kiaRN/PJlnlizrSkb8RVxWbFWBto4xYI4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N5pfN7EsAquNgiYgSRaQGuWykwK9HnXzRCgIL8IrPXOVXUGG2BwDpfS2rc+2c8S0P
	 hS8l8a6+bW6QGC62avuNeb8DuwZuURXHzysLfOcg+ZsElShkmqUz4tO8oEq/9eODOs
	 cSYeVJKhyemsfzIdvVUV1jd4Xy4pyHxTRuVR0KUunoRLCvfL7p2XU59LuDduJuZZvU
	 Pdxz3QDLzgzbX8jjH1NjG3PV0FwAJQDyuQQAY68CScJJEcdPNjqF5v+s+CsYygJ/Y7
	 lAzogTgT66OiI76JaqIvrF+x+fN3o/YpEd5wAzNEsXfyn2hZCtJSs6ik7r2aesWLXH
	 1uYqxiy8xwBfg==
Date: Fri, 9 Jan 2026 11:39:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/25] man/man3type/*: Update history of all other
 types
Message-ID: <aWDaxHozF48iPrPk@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7k3bnajwzucgemig"
Content-Disposition: inline
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>


--7k3bnajwzucgemig
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/25] man/man3type/*: Update history of all other
 types
Message-ID: <aWDaxHozF48iPrPk@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>

On Fri, Jan 09, 2026 at 04:40:18PM +1000, Seth McDonald wrote:
> G'day,

Gidday!

> This patch set should account for all other man-page entries in the
> 3type section whose listed first POSIX/SUS appearance can be updated.
> As per Alex's request, any added POSIX/SUS versions are listed in
> chronological order with respect to any other listed standards.
>=20
> I did make one "exception" though, regarding types that appeared in both
> C89 and POSIX.1-1988.  Despite POSIX.1-1988 being published before C89,
> many (if not all) such types were included in POSIX.1-1988 primarily for
> compatibility with the then-upcoming C standard (i.e. C89).  So it is
> likely more chronologically accurate to list C89 before POSIX.1-1988 in
> these cases.

Agree.

> Seth McDonald (25):

Thanks!  I've applied all 25 patches.  I'll push in a moment.


Have a lovely day!
Alex

>   man/man3type/div_t.3type: HISTORY: Update first SUS appearance of
>     [l]div_t(3type)
>   man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of
>     id_t(3type)
>   man/man3type/intptr_t.3type: HISTORY: Split types and macros
>   man/man3type/intptr_t.3type: HISTORY: Update first POSIX appearance of
>     [u]intptr_t(3type)
>   man/man3type/intptr_t.3type: HISTORY: Update first POSIX appearance of
>     [U]INTPTR_MAX and INTPTR_MIN
>   man/man3type/intptr_t.3type: HISTORY: [U]INTPTR_WIDTH is not in POSIX.
>   man/man3type/intptr_t.3type: DESCRIPTION: ffix
>   man/man3type/iovec.3type: HISTORY: Update first POSIX appearance of
>     iovec(3type)
>   man/man3type/lconv.3type: HISTORY: Split lconv(3type) and
>     int_[np]_{cs_precedes,sep_by_space,sign_posn}
>   man/man3type/lconv.3type: HISTORY: Update first SUS appearance of
>     lconv(3type)
>   man/man3type/mbstate_t.3type: HISTORY: Update first SUS appearance of
>     mbstate_t(3type)
>   man/man3type/ptrdiff_t.3type: HISTORY: Update first SUS appearance of
>     ptrdiff_t(3type)
>   man/man3type/size_t.3type: HISTORY: Update first POSIX appearance of
>     [s]size_t(3type)
>   man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of
>     time_t(3type)
>   man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of
>     suseconds_t(3type)
>   man/man3type/time_t.3type: HISTORY: Update first POSIX appearance of
>     useconds_t(3type)
>   man/man3type/timeval.3type: HISTORY: Update first SUS appearance of
>     timeval(3type)
>   man/man3type/va_list.3type: HISTORY: Update first SUS appearance of
>     va_list(3type)
>   man/man3type/void.3type: HISTORY: Update first POSIX appearance of
>     void(3type)
>   man/man3type/wchar_t.3type: HISTORY: Split wchar_t(3type) and
>     WCHAR_M{AX,IN}
>   man/man3type/wchar_t.3type: HISTORY: Update first SUS appearance of
>     wchar_t(3type)
>   man/man3type/wchar_t.3type: HISTORY: Update first SUS appearance of
>     WCHAR_M{AX,IN}
>   man/man3type/wint_t.3type: HISTORY: Split wint_t(3type) and WEOF from
>     WINT_M{AX,IN}
>   man/man3type/wint_t.3type: HISTORY: Update first SUS appearance of
>     wint_t(3type) and WEOF
>   man/man3type/wint_t.3type: DESCRIPTION: ffix
>=20
>  man/man3type/div_t.3type     |  1 +
>  man/man3type/id_t.3type      |  4 +++-
>  man/man3type/intptr_t.3type  | 17 +++++++++++++++--
>  man/man3type/iovec.3type     |  3 ++-
>  man/man3type/lconv.3type     | 16 ++++++++++++++++
>  man/man3type/mbstate_t.3type |  1 +
>  man/man3type/ptrdiff_t.3type |  4 +++-
>  man/man3type/size_t.3type    |  5 +++--
>  man/man3type/time_t.3type    | 10 +++++++---
>  man/man3type/timeval.3type   |  1 +
>  man/man3type/va_list.3type   |  4 +++-
>  man/man3type/void.3type      |  3 ++-
>  man/man3type/wchar_t.3type   | 10 ++++++++++
>  man/man3type/wint_t.3type    | 16 +++++++++++++++-
>  14 files changed, 82 insertions(+), 13 deletions(-)
>=20
> Range-diff against v0:
>  -:  ------------ >  1:  a6650fa27290 man/man3type/div_t.3type: HISTORY: =
Update first SUS appearance of [l]div_t(3type)
>  -:  ------------ >  2:  963da2474e6d man/man3type/id_t.3type: HISTORY: U=
pdate first POSIX appearance of id_t(3type)
>  -:  ------------ >  3:  3a8217dd1508 man/man3type/intptr_t.3type: HISTOR=
Y: Split types and macros
>  -:  ------------ >  4:  c587540f97c4 man/man3type/intptr_t.3type: HISTOR=
Y: Update first POSIX appearance of [u]intptr_t(3type)
>  -:  ------------ >  5:  455e106a5e0d man/man3type/intptr_t.3type: HISTOR=
Y: Update first POSIX appearance of [U]INTPTR_MAX and INTPTR_MIN
>  -:  ------------ >  6:  26e1b48d4721 man/man3type/intptr_t.3type: HISTOR=
Y: [U]INTPTR_WIDTH is not in POSIX.
>  -:  ------------ >  7:  c5e354f0878c man/man3type/intptr_t.3type: DESCRI=
PTION: ffix
>  -:  ------------ >  8:  0cf31543f6d2 man/man3type/iovec.3type: HISTORY: =
Update first POSIX appearance of iovec(3type)
>  -:  ------------ >  9:  fb168b7dee6d man/man3type/lconv.3type: HISTORY: =
Split lconv(3type) and int_[np]_{cs_precedes,sep_by_space,sign_posn}
>  -:  ------------ > 10:  ca58744440b0 man/man3type/lconv.3type: HISTORY: =
Update first SUS appearance of lconv(3type)
>  -:  ------------ > 11:  b4bba25be7df man/man3type/mbstate_t.3type: HISTO=
RY: Update first SUS appearance of mbstate_t(3type)
>  -:  ------------ > 12:  741cd602cffb man/man3type/ptrdiff_t.3type: HISTO=
RY: Update first SUS appearance of ptrdiff_t(3type)
>  -:  ------------ > 13:  3cf622ba3c3c man/man3type/size_t.3type: HISTORY:=
 Update first POSIX appearance of [s]size_t(3type)
>  -:  ------------ > 14:  d1a047ff7ec8 man/man3type/time_t.3type: HISTORY:=
 Update first POSIX appearance of time_t(3type)
>  -:  ------------ > 15:  7f54dbc4481d man/man3type/time_t.3type: HISTORY:=
 Update first POSIX appearance of suseconds_t(3type)
>  -:  ------------ > 16:  d8cf35e1cf3e man/man3type/time_t.3type: HISTORY:=
 Update first POSIX appearance of useconds_t(3type)
>  -:  ------------ > 17:  47c6b50cf1a1 man/man3type/timeval.3type: HISTORY=
: Update first SUS appearance of timeval(3type)
>  -:  ------------ > 18:  9a9b76c452fe man/man3type/va_list.3type: HISTORY=
: Update first SUS appearance of va_list(3type)
>  -:  ------------ > 19:  efe8112034e9 man/man3type/void.3type: HISTORY: U=
pdate first POSIX appearance of void(3type)
>  -:  ------------ > 20:  87a39e047c0e man/man3type/wchar_t.3type: HISTORY=
: Split wchar_t(3type) and WCHAR_M{AX,IN}
>  -:  ------------ > 21:  a7d237cd5287 man/man3type/wchar_t.3type: HISTORY=
: Update first SUS appearance of wchar_t(3type)
>  -:  ------------ > 22:  fb806a50acd6 man/man3type/wchar_t.3type: HISTORY=
: Update first SUS appearance of WCHAR_M{AX,IN}
>  -:  ------------ > 23:  730e0c713039 man/man3type/wint_t.3type: HISTORY:=
 Split wint_t(3type) and WEOF from WINT_M{AX,IN}
>  -:  ------------ > 24:  a9ac764ac283 man/man3type/wint_t.3type: HISTORY:=
 Update first SUS appearance of wint_t(3type) and WEOF
>  -:  ------------ > 25:  694ea5baaddc man/man3type/wint_t.3type: DESCRIPT=
ION: ffix
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--7k3bnajwzucgemig
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlg2vYACgkQ64mZXMKQ
wql67g/8DcTkutQ0eKqiaXFKvXTQtJZte4n45yUG4/TaV2583L4nUiv1sPtoiV5n
GCyvgE9RsEb+cwgiomnQizBUYwG9bgruV6mOJXmyqs/2qe8RTa1xG5/4umv+5Xnu
IwfgUyPGIBCn7Nugc7GFqBuu0eer7jHgEevfWWbE2QoeYPrG32MW7vDeRM7019JN
hALWWH+E20hbjr82CHxcQt13RCdxlKHr/N8Nf3TZEgY23Re8aioYCBYrBQ4NGXOj
7O6RRKJCE8dWybp5knzkBwevMpMpqBSF78YyA1GtRA4LRNt3J7CITbaknyOOVoLt
MNiZIL2i5y2lrCxgZ9224idVVBk3U+jx8VLZZDaXJZsXAahO8AAtVFXAEkrb+7Bx
fUjYx6Pgq/sYeIY+ePrDjxmU1z1luMpFnWZ/+A/xql1wXEdRcLvTPJYaRxEecS0Y
Y4/MHgk59SVW6bFyPSSHuDJgGI6G/z3XUzJaNN1MoQD2Swtvxxkg224GpvUirT7/
DntbG1FpiMzo6zGRYUNj98yZgXV7jZ5eswNKuUZZzK+HpYPO4U0VN+ouwMSXi+3Q
WxicFgWOha/E3tKVFh51lCJT0vjqGKtywhqsopxk2DNcGeBkj2OzhzvXgOxLds17
ZuVulhuQbJPp50FPgBAjzztNMrxErNwDyFwZv1jT5xD4XfGSaHw=
=JJzr
-----END PGP SIGNATURE-----

--7k3bnajwzucgemig--

