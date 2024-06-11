Return-Path: <linux-man+bounces-1120-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F85904171
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 18:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 611C0B237D6
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 16:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5436C3BB48;
	Tue, 11 Jun 2024 16:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mr7h5sqx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142701CFA9
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 16:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718123723; cv=none; b=CRo6C4NiWttytiM909TFiAQL7omQUw8YPBgAddmHKix2zcKQPrBEqIFA2n5jj8oAc3ksUNjaNtI9UdBvY7wtqgEdrf/V4PMxguJQ8m3OTAv64HPG5AgkjfM5qTTKbJXAlS0X0eGZX8t58RcbcI87rUTGRHZbuIN/hgpOcu6RWqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718123723; c=relaxed/simple;
	bh=yO8SbS2qIRcSHsb4QQYJKfDX09axf+Ada6bqsKE0gz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c6pL0p42XAL1bqpFrxZECWQXBwTSTzWuEgRZQku21IqZyvlhETRPEqt/z8U0xlqbJZT4xiiuI1Tp+koytk7z+LNcZdW/X3WF0rq0yy1q6I/MfyLG81jgKwIZOZlWpn1n5LXxdZjYbD3F315hioGmBcWFAPMVqBSUfdV9DGrp6JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mr7h5sqx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAD73C2BD10;
	Tue, 11 Jun 2024 16:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718123722;
	bh=yO8SbS2qIRcSHsb4QQYJKfDX09axf+Ada6bqsKE0gz0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mr7h5sqx9Df5WljQmBlo1EleFKoa++za9XRWMWG1O5J1KBRQY2Ryq64IvYUeGHBxG
	 Vo9NoyUmdxZuk6LYjgV5dUIxqNMw3fwvUj71LnEXJJYkh2fjPPIGL78EW5k/Xv5IWQ
	 0aZ3mQ5INIkRWpY5yfUAkhKyn34p7Wciq7+aaNpNoH2gD8oMpDRFyBPDMN6e9QDxNz
	 xEiUk1ZAmE4NHqg6Ct2UGWXCglULt1cW8tnJ7qWd0I7q7BM8bIp7THGPYRmd6tsAUi
	 3I3WCG3gKhIdwKjAIXQwtvPkZjMzXxhlsIcIqSJJpCyETT9Hzjd7Vpfu0fFPRZbfhV
	 uQoVVRz6GTPAw==
Date: Tue, 11 Jun 2024 18:35:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 10/12] tzset: update more POSIX citations and quotes
Message-ID: <ry4s4siyerytqil55kq5qsbv4kl72uogq33qlors7kikcsinte@nlhgialcfi37>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-10-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yhafuopfoehw4gcn"
Content-Disposition: inline
In-Reply-To: <20240611153005.3066-10-eggert@cs.ucla.edu>


--yhafuopfoehw4gcn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 10/12] tzset: update more POSIX citations and quotes
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-10-eggert@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <20240611153005.3066-10-eggert@cs.ucla.edu>

Hi Paul,

On Tue, Jun 11, 2024 at 08:29:13AM GMT, Paul Eggert wrote:
> ---
>  man/man3/ctime.3 | 29 +++++++++++++----------------
>  man/man3/tzset.3 |  4 ++--
>  2 files changed, 15 insertions(+), 18 deletions(-)
>=20
> diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
> index e863f0572..a0dacfeda 100644
> --- a/man/man3/ctime.3
> +++ b/man/man3/ctime.3
> @@ -320,7 +320,7 @@ In many implementations, including glibc, a 0 in
>  .I tm_mday
>  is interpreted as meaning the last day of the preceding month.
>  .P
> -According to POSIX.1-2001,
> +According to POSIX.1-2024,

I would remove the version here, and just say POSIX.  That removes a
place where we need to update the version.  If the version is relevant,
we can specify that in HISTORY.

>  .BR localtime ()
>  is required to behave as though
>  .BR tzset (3)
> @@ -343,16 +343,12 @@ should be called before
>  .BR localtime ()
>  .TQ
>  .BR mktime ()
> -C11, POSIX.1-2008.
> +C23, POSIX.1-2024.
>  .TP
> -.BR asctime_r ()
> -.TQ
> -.BR ctime_r ()
> -.TQ

We should add an entry for these that says "None.".  Otherwise, it may
look like we forgot to document the standard for those functions.

>  .BR gmtime_r ()
>  .TQ
>  .BR localtime_r ()
> -POSIX.1-2008.
> +POSIX.1-2024.
>  .SH HISTORY
>  .TP
>  .BR gmtime ()
> @@ -360,25 +356,25 @@ POSIX.1-2008.
>  .BR localtime ()
>  .TQ
>  .BR mktime ()
> -C89, POSIX.1-2001.
> +C89, POSIX.1-1988.
>  .TP
>  .BR asctime ()
>  .TQ
>  .BR ctime ()
> -C89, POSIX.1-2001.
> -Marked obsolete in POSIX.1-2008 (recommending
> +C89, POSIX.1-1988.
> +Marked obsolescent in C23 and in POSIX.1-2008 (recommending
>  .BR strftime (3)).
>  .TP
>  .BR gmtime_r ()
>  .TQ
>  .BR localtime_r ()
> -POSIX.1-2001.
> +POSIX.1-1996.
>  .TP
>  .BR asctime_r ()
>  .TQ
>  .BR ctime_r ()
> -POSIX.1-2001.
> -Marked obsolete in POSIX.1-2008 (recommending
> +POSIX.1-1996.
> +Removed in POSIX.1-2024 (recommending

I would keep documenting that POSIX.1-2008 marked them as obsolescent.
That might be useful to some.

>  .BR strftime (3)).
>  .SH NOTES
>  The four functions
> @@ -396,7 +392,7 @@ and
>  .BR localtime_r (),
>  are specified by SUSv2.
>  .P
> -POSIX.1-2001 says:
> +POSIX.1-2024 says:

Same about the version here.  I'd remove it.

>  "The
>  .BR asctime (),
>  .BR ctime (),
> @@ -406,8 +402,9 @@ and
>  functions shall return values in one of two static objects:
>  a broken-down time structure and an array of type
>  .IR char .
> -Execution of any of the functions may overwrite the information returned
> -in either of these objects by any of the other functions."
> +Execution of any of the functions that return a pointer to one of these
> +object types may overwrite the information in any object of the same type
> +pointed to by the value returned from any previous call to any of them."
>  This can occur in the glibc implementation.
>  .SH SEE ALSO
>  .BR date (1),
> diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
> index 4c7e286fe..7d57dc9a1 100644
> --- a/man/man3/tzset.3
> +++ b/man/man3/tzset.3
> @@ -235,9 +235,9 @@ T{
>  T}	Thread safety	MT-Safe env locale
>  .TE
>  .SH STANDARDS
> -POSIX.1-2008.
> +POSIX.1-2024.
>  .SH HISTORY
> -POSIX.1-2001, SVr4, 4.3BSD.
> +POSIX.1-1988, SVr4, 4.3BSD.
>  .P
>  4.3BSD had a function
>  .BI "char *timezone(" zone ", " dst )
> --=20
> 2.45.2

Thanks for the investigation!

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--yhafuopfoehw4gcn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZofMcACgkQnowa+77/
2zKUtBAAkAt5fCSKLEQ6nAaFWwhXxXVrpuX022HBOAcCSN8jLu10ZRmW1EiKBiRt
qeMw2T8N1es5IlGLW5r+rsBwGr2qg0BMmW/Y3lJxgY0dSGZxZdvyuj0JqBuTfmfF
v8Fdm9kvaVY/qzZuhcp7MJ/46IS7HVDmXyDxaB2YPrIme1xz3Y609w2SS4N+ysAw
k1ZH720uowvYc/74WBz1j1jGp94KFsh5Y2N2UFMakNPhD3MIWBylCnwcKWwUGa3h
Dxo0uoNxsWeC/86F7slK3UepCtSmxqYqvQ7E0gQ6vyJAUNQdqX3cE53YGJjh5AW8
KRTt0yQgMrWpMatKr0ZjvMy0xqqSE4s10sPUc6EUq2v2ObUCcgYDYgQ7e6Ps9F0+
cH57OFUwbLRdAaI4c7vJxNtTKFELsefCnZbdbkX51edAXsG20+SwXGOb0QRtjHbv
krXKm1K3iSxEqoYfHiRsB3v4NiOGk+nsPf7SGYfCpu0rF6aMu1C8wwN+2oarFz0M
9K59KwbEbyj6Pa3pN4Ic0GQu/8Kb+WpNcaiT2zYPOttarTN0I8Y4dVS7vaNS9W77
EQ9Mn5MgIbY7x5M/dm5j0f/Y5jZ7QjPiECPx5i1+IX8CiKvwV+0BWcRMcqGblydE
HJsuhrHsmaPyVN6UyeLR8YjX544IHDqOrnmC9egVuHuIEQ76rHM=
=i2tg
-----END PGP SIGNATURE-----

--yhafuopfoehw4gcn--

