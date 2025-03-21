Return-Path: <linux-man+bounces-2622-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49938A6C3D3
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 21:03:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67D803A794B
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 20:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A571EB184;
	Fri, 21 Mar 2025 20:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPMaTVMO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCB828E7
	for <linux-man@vger.kernel.org>; Fri, 21 Mar 2025 20:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742587358; cv=none; b=UGn39hJMF3kArk+Rv0OhP7OeBqpLsDmdCSYvFhS/J26wYhEYmVGPX8oRXKsEcct1jkRpxT/V50PC96UinJSgpMNfxNLmeuXxFVObMKHNXBsx7qjuiOAORUrQ2AeNv4Ng+ZCZlkmG16HkvYzkwDlGkZMSYjBhgY7+qaUtiGw2GEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742587358; c=relaxed/simple;
	bh=fMTlpaYg8tQMuEURj4/OlAtaoeOCj7Vn6vUIRkTDvXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I5BlBm6FFO+C9oiwZ91igbyqnHBndW1xALMWkLzdUGpb34YQOlfFYWf8Novq2xisxW9w7mPqDE1ATlI2TDe1URBPvlo4Uk1037w6jPLET2sC5G9xMxA5zJccO1C2yVQW8xGmhVYjSjknuBSSLBYQV0s+0yHyny5jcM6Ftbj19NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPMaTVMO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 661FBC4CEE3;
	Fri, 21 Mar 2025 20:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742587358;
	bh=fMTlpaYg8tQMuEURj4/OlAtaoeOCj7Vn6vUIRkTDvXE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cPMaTVMOmfJQbYsapzIePDJ1Un6yMRXAz5NRHKtG1dDob7dwn6RZWob+80BpQLj/A
	 bDfREm0vLMgPB5OnoLC3+ifdJBFrVAU9Tlc0unGm+ewtHszocZ8k5CgoImkbE36vcl
	 +9Rs0NbBpelb2dPVNjog7oqRwzXpZ8Y24hLo7uU1bDvOwh/sHgDZZIEyOEanq4Cr6s
	 AJJA1UuMuld9KerrVKzkGsoiDDcNYdN5XUMcfIqGInF/cVEl7Dqv6hDAQLVdGUBQoQ
	 KTVxh62Wa0lRm0dEFdC4zXYpl0jCUQMpo8tz6QnbfWjkElvP2nqGlebfuh2q+AExhW
	 rKFK/j5qU9nbQ==
Date: Fri, 21 Mar 2025 21:02:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: strtoul pitfalls
Message-ID: <63iqx6buu7svzjencowd5zuufoq6ak3iou2krtjlo27yj32kiw@7icuf3umvpiu>
References: <1818253.7aRn1RRit1@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6i4hmj3hmgfa46lf"
Content-Disposition: inline
In-Reply-To: <1818253.7aRn1RRit1@nimes>


--6i4hmj3hmgfa46lf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: strtoul pitfalls
References: <1818253.7aRn1RRit1@nimes>
MIME-Version: 1.0
In-Reply-To: <1818253.7aRn1RRit1@nimes>

Hi Bruno,

On Fri, Mar 21, 2025 at 08:05:18PM +0100, Bruno Haible wrote:
> Hi Alejandro,
>=20
> reviewing the strtoul() calls in gnulib and gettext, I found several
> places where the original coder had fallen into one of these two pitfalls.
> I would find it good to mention both pitfalls more prominently in the
> man-pages (the first one is mentioned as a NOTE, should better be called
> a BUG).
>=20
> * Leading whitespace and a sign are accepted by default.
>   Often this is not desired.
>   To avoid this, the caller should pre-parse the initial portion
>   of the string, up to the first digit.
>=20
> * If values > MAX should lead to a diagnostic, they arise in two
>   circumstances:
>     - errno =3D ERANGE,
>     - errno =3D 0, end =3D=3D str, but value > MAX.
>   It is not obvious how to arrange the code, so as to get the same
>   diagnostic, without code duplication.

Agree.  I think this page needs a long BUGS and CAVEATS pair of
sections.  I'll write something about it.  Feel free to report more bugs
about these APIs; this will help kill them soon.  I'll present the
resulting manual pages as part of the defense of my paper for C2y.


Have a lovely night!
Alex

>=20
> Bruno
>=20
> [1] https://git.savannah.gnu.org/gitweb/?p=3Dgnulib.git;a=3Dcommitdiff;h=
=3D008ff109def9bdfdd04a12355d8f4a835045ae41
> [2] https://git.savannah.gnu.org/gitweb/?p=3Dgnulib.git;a=3Dcommitdiff;h=
=3D3df6da258c338e4fd165a2850bb8d4b0f39b6e9b
> [3] https://git.savannah.gnu.org/gitweb/?p=3Dgettext.git;a=3Dcommitdiff;h=
=3Db8ab4f2bef0ff18cf1ae749c1c81a359a40d0450
>=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--6i4hmj3hmgfa46lf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfdxdoACgkQ64mZXMKQ
wql3tA/+L9IoTR5K0SJJwUBQsCWvm4vr7WH5B0FGRshg6YZ8LFzqef6scR3tur/d
cYvdDIW5ARlqniL3MKrZG7MZF5+Lk3m3CaWe/R13dPXzDFqm+Shbz/JsvXR2vpSb
ivbg7bGUPzELxL0citUwFjv8FK1mZxD89TLMqRz7ATM06S9l1SwWt2YVMtkJdoTY
PZVjJQuDz0/HuSt3iyIPr3wStgWi6iRI6X1FgVDsdKr4wKCpqVBe21SltnZlM0DW
CvGTsFbi+qr5Ch6IzAUY0BoQ0pxAtGtCrki3nxfrl4wxslY5kM/h1vlVJEqNrA1H
rbEKvH/ZuwCPFHaess8pXDrx1Bmbvfs8UxLu2qFwp8reBrHY7Dt246xcwNaQiVYL
+HWJuLyhrOUfsavD7rZdQS/vO1CyXU4P+nTiCbjVFUU4XMFPyuCJj91qQFjGq7Fb
eu5bUAtT6MdwmKkINmdidDfsxwG/CNjZiauChwsaJ305maXLzlwlUKjkR8SFfD3i
g4PCSuqGNxoZ++6yMBOxyohQ5obLdrwT/++ICgyOifbvjiHR7ekTo/rOWbZZNFQq
Q3QHZWnnHbOoCDglqTl6XKcvsm5qkqGir+QXpm8nfZr2v9T/kuxNn+F6RKHDSyNf
MY9MHI0uqZbHs8FoN1wd9caoRItTuwyXWjtMO5KW9PjfFx0nzv8=
=LSAX
-----END PGP SIGNATURE-----

--6i4hmj3hmgfa46lf--

