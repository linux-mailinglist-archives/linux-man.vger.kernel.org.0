Return-Path: <linux-man+bounces-1001-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EA78CF4A5
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 16:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2AF5B1C20A14
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 14:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AFCB171C8;
	Sun, 26 May 2024 14:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0mopefr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4695B171B0
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 14:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716735270; cv=none; b=u1Cyn+HGbLthPXdHK+Uamo0T7J8VNpYvuEkNl/FHeOyxs3pUksFJBxGJaNilnWupdUGOkWSNTVmEwJWGrFy7t7AblcLTqYUX8FSZc3aE3h3ozZUwNulT8bOI0TKhEtFcsoaGBrtIeVMNV1BXhCCxsPHIRPD/jhND8GKJvF/7ZnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716735270; c=relaxed/simple;
	bh=RhF4Fr3nMPgfq8jiREWtu8Mpl+e3+HHeyLzOB63w8Qg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p+4yeU/X/m+LAIX1YsLiQEg8X/3+vzgQNCMLGm1HzeKTr39vqiYW+6YbTnak8WhDNpbA2N9kRAbYio1xGSz8Ev7stuDiMKC0GFjvCR38IkcgRdPBwAy6FZIoMvTAH69vZeI+5b/9GUl3Y/cmkBEtJ0SOg5ivX5gLE4Xvi95OtbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0mopefr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0EC8C2BD10;
	Sun, 26 May 2024 14:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716735269;
	bh=RhF4Fr3nMPgfq8jiREWtu8Mpl+e3+HHeyLzOB63w8Qg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D0mopefrQgudHaLHpEDCzS2Je6Tk8FLZj6zE9N3PoD1NohBnqj+DnDoyW0vtRLaIN
	 p5mW/svQHper0PKZtyqV35lwOdIwJwUVH+zNKDsCH1TOOBsjJprdoi2JUBhwXgf/Z5
	 AdeWYL0ztmYd9IjglvH++kNf44/NBsnD1tIXIA6OcpI1c2oyGQMiPUWo4BgWKycGG3
	 nHLjH2+OW87UVh7maIsnSEB2wqo7Hfbt0QzCjigwCoOMV5DvgOHu7T3sLzNJ5Z4Efd
	 ev6cxtkScIH3X46jHm4JRkFHXRqEFRl9hGJwmQ2cA2enRwIBhTDxF0wZ2kyXtXdls5
	 hdnINtrZedEQg==
Date: Sun, 26 May 2024 16:54:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE
 requirement
Message-ID: <2fso6x7fhxowsgozm4gwnfbqw2ylukibhbq2pneddxyd44uw5v@bva2bmi65zx6>
References: <20240526064227.937757-1-torreemanuele6@gmail.com>
 <nx4yzt26bte57ak7vnc7tkl7ofs6fmqxkaexhvx2ixx7jst4yb@xui6m6mjxoz6>
 <ZlNE8ooomjnaKWXX@t420>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nerpc72ewcovk6uc"
Content-Disposition: inline
In-Reply-To: <ZlNE8ooomjnaKWXX@t420>


--nerpc72ewcovk6uc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] grantpt.3: explicitly mention  #define _XOPEN_SOURCE
 requirement
References: <20240526064227.937757-1-torreemanuele6@gmail.com>
 <nx4yzt26bte57ak7vnc7tkl7ofs6fmqxkaexhvx2ixx7jst4yb@xui6m6mjxoz6>
 <ZlNE8ooomjnaKWXX@t420>
MIME-Version: 1.0
In-Reply-To: <ZlNE8ooomjnaKWXX@t420>

Hi Emanuele,

On Sun, May 26, 2024 at 04:19:30PM GMT, Emanuele Torre wrote:
> I've just noticed that ptsname.3 is also missing  #define _XOPEN_SOURCE
> in its synopsis; however  #define _XOPEN_SOURCE  does not seem to work.

Did you define it to 500, or an empty value?

You need to define it to an appropriate value.  (The synopsis is a bit
misleading, and we could/should specify the minimum value.)

> > Have a lovely day!
>=20
> You too!  :-)

:-)

Alex

--=20
<https://www.alejandro-colomar.es/>

--nerpc72ewcovk6uc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZTTSIACgkQnowa+77/
2zKC2A/+OXuOXjAQ0OolKrWwht01xtHcImh9dfmhQ0RPeTNlmSUmYTi/NIQ6Lbd2
ywE+1VJBzEP6ziWwrxxaiS4l17Or+dS5o6yOP+2Oq9vAfKE0C0/W/0n5QEbVsCBL
Mn6K5ZJub3zGYzktd4svkRCGZOU6WR+Tm6pn6eW9qz+3hEcEiMfbhQT4IXmL+k4p
n35+BiETJJ6yOR2zpp6DgW43CZoCdVDRcGSyhYS5sRluIqL3MEdc4Vz3jXxrLU1y
eajzXE8N9D/QfONEFIeb2zZygw6O5KmlSclQH1whIu25m4MbPbDaCoc04KzHVncz
eHkbSwRv/A+oBkqAHJuEzOYJPivGT+pgu4AUV2JfSkcnTmDBvt5hrk2nNpUmYwGk
i37G1fGlqmT2mQXZkANhSGVK69MvSx1HVWC4Wp+vORYtSQSV7r/h9+4bUePodtip
JnKyUUWNngAtroBrj5sFTvZXZFId/VivagHSb+JALxvKYKOafEdCz5lrffxITmPh
MTJ8ewnysSpCkmJYnvYGjuv9SfgNEr8zG20FPQReawbPx/LjG93OXUGT73yOOCtg
T/ThZOJonsrY9AnAIN++Ch4DWl6/CMvMSp7ojKEHb61VJoALKF8dxnzD7qVDGsgW
1ToFWGjNhtcXvkljtIvn9hWpkz6EiVWV73OfmeiduMatkOD1j/M=
=zvG2
-----END PGP SIGNATURE-----

--nerpc72ewcovk6uc--

