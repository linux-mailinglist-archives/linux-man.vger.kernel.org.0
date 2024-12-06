Return-Path: <linux-man+bounces-2137-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 208CD9E7382
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 16:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 970BE1887FEE
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 15:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F11F714D2BD;
	Fri,  6 Dec 2024 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ll79epgB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76691514CE;
	Fri,  6 Dec 2024 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733498433; cv=none; b=Qu6leaKmHTCbYYOXHX/pGSDHcyzaE1VO7BLFX6VrycPw6tO5Ubj6ejNKReb5TVMZGrv78O8BXLjenVyA7DGPqruE/zZM9lHPnRFuAgIFf+xyxCX6OlcchOdUwekJ/Y3d6T2tFF92hxlsD8dbVt6Z0Y9wa8WQIV+bRGATgfW3r3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733498433; c=relaxed/simple;
	bh=xmnhw1w/kA7zi/WZueCflEYTV5pXG/NKm9P31NiLJAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D/p+ofLT9nOmHdv0U/YKkiAreYU54a/1GmxwB7hClhHDfTb+e4ZYcS26bQrUbj+wG2Ca0TXWJBf5ytXYtiluqLyV6zYjgW2hHYOHWQSdjuwoNDc9jOYfLtP8mubkqd3rjM5c/Y+p61bJ8gugKa8pjp7SQU3mqsVSo+RPp/yrWYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ll79epgB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 062CDC4CED1;
	Fri,  6 Dec 2024 15:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733498433;
	bh=xmnhw1w/kA7zi/WZueCflEYTV5pXG/NKm9P31NiLJAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ll79epgB8II18DcmOeqd1uP32Tz8T3zUnd/Q2G2diLe5BZKF4x33Prp+VL07a7Vlx
	 FiL55BScEBQdCVXgtasCF0vDKdAN7nGAKKlRQXXC2dTLUJqzGoILHnYZMThe3dtB6A
	 YIPuEhn6F0RFCrWe+9dA5VkfSFoMSwSvw2qKPAU64JnGXkckSFR+xaZ9wo8FOGQzAZ
	 LDyvBqz+lff48fVKd+9gUO7A/4xyYAlzt0Uqm2HFeD9nXR7STxh1NfInSxKvMWUp3C
	 aIpnX55RtlGXl3t4Um+BJinJSsxi6vNm0FefBg0i4pmd8LaVlHZjT2BFN04N1kze1q
	 4IUbpNttYA8dA==
Date: Fri, 6 Dec 2024 16:20:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ian Rogers <irogers@google.com>
Cc: "G . Branden Robinson" <g.branden.robinson@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v5 3/4] proc_pid_fdinfo.5: Add subsection headers for
 different fd types
Message-ID: <20241206152028.5hapc5temuzwgjhw@devuan>
References: <20241206073828.1119464-1-irogers@google.com>
 <20241206073828.1119464-3-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kbevydt2nmhcit32"
Content-Disposition: inline
In-Reply-To: <20241206073828.1119464-3-irogers@google.com>


--kbevydt2nmhcit32
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 3/4] proc_pid_fdinfo.5: Add subsection headers for
 different fd types
MIME-Version: 1.0

Hi Ian,

On Thu, Dec 05, 2024 at 11:38:27PM -0800, Ian Rogers wrote:
> Make the sections about eventfd, epoll, signalfd, inotify, fanotify,
> timerfd better separated with a clearer subsection header.
> ---
>  man/man5/proc_pid_fdinfo.5 | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/man/man5/proc_pid_fdinfo.5 b/man/man5/proc_pid_fdinfo.5
> index 2797ae216..c4914f1f3 100644
> --- a/man/man5/proc_pid_fdinfo.5
> +++ b/man/man5/proc_pid_fdinfo.5
> @@ -57,6 +57,7 @@ is the ID of the mount containing this file.
>  See the description of
>  .IR /proc/ pid /mountinfo .
>  .RE
> +.SS eventfd
>  .P

=2EP after .SS is redundant, and triggers a warning.  Please remove them.

Cheers,
Alex

>  For eventfd file descriptors (see
>  .BR eventfd (2)),
> @@ -75,6 +76,7 @@ eventfd\-count:               40
>  .P
>  .I eventfd\-count
>  is the current value of the eventfd counter, in hexadecimal.
> +.SS epoll
>  .P
>  For epoll file descriptors (see
>  .BR epoll (7)),
> @@ -108,6 +110,7 @@ descriptor.
>  The
>  .I data
>  field is the data value associated with this file descriptor.
> +.SS signalfd
>  .P
>  For signalfd file descriptors (see
>  .BR signalfd (2)),
> @@ -133,6 +136,7 @@ and
>  .BR SIGQUIT ;
>  see
>  .BR signal (7).)
> +.SS inotify
>  .P
>  For inotify file descriptors (see
>  .BR inotify (7)),
> @@ -173,6 +177,7 @@ file is exposed as a file handle, via three hexadecim=
al fields:
>  .IR fhandle\-type ,
>  and
>  .IR f_handle .
> +.SS fanotify
>  .P
>  For fanotify file descriptors (see
>  .BR fanotify (7)),
> @@ -229,6 +234,7 @@ The mask of events that are ignored for this mark
>  .P
>  For details on these fields, see
>  .BR fanotify_mark (2).
> +.SS timerfd
>  .P
>  For timerfd file descriptors (see
>  .BR timerfd (2)),
> --=20
> 2.47.0.338.g60cca15819-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--kbevydt2nmhcit32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdTFjwACgkQnowa+77/
2zINgg/9G5X1oXORdWlksBOcYNz08qtgUhUNgVIfXIst16RaSjqvxU1xAcT1/xMD
8JVnNgVo0B4bgkyJPJxhn4UhqfAmiwi4SqFDWg9cryzuqnogMWZsvQnjLtWACRgv
UPkexuyyxDloEVUIWnUqI4+WOx6IbUpw8ECnncd99dIDozZj0dQGcXxvOzTJZ+T2
AQGvgaAeZleCmEk0mtvnUyn/BoE5AbqYnnd7vP09xULafBXmZi4Bu2VMSvyZ1SQC
czwDqAenT4astqz0ESFtSqQTH3OnehpZ5SdK+/5H2Bqdtj3hSCDUHnXDizBppz7/
tdQmh72ODuY4mCOY3pPK8lnwLFSWGXQXdN7M3Xxo7zBIiH/Zt7F9ZrscugXlesFr
kXd+qyZoP2YhfcuO3s0FfFzPM6rqCBfx4CSSAxM76RiO1YKx+mV5DtFqqpTL8cMi
RXLX1sQK24k87wI19Z/SOm7VVhHmg4WZ4vUHp3vQUIUFEYghINoJxRL0q9zacd8y
M3qQupt6KFhB7d0pp5vwAhRT5xk9esTAn/FTSVm2jK2bt+n7kv0ZDcZggRtXReGb
GI9RhVs07U7F7IwadQ/4C8DI9cyNDJyQmyESbrreq5uwBLpeKo7J1x0Lk+zDWLzq
QPAvA1JYtdycqtjvVbsvuQFUH66/uMnok8YWhjqTwIhkqpKfkeU=
=yMy8
-----END PGP SIGNATURE-----

--kbevydt2nmhcit32--

