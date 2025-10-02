Return-Path: <linux-man+bounces-4037-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F67BB58A1
	for <lists+linux-man@lfdr.de>; Fri, 03 Oct 2025 00:25:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C520D4E0129
	for <lists+linux-man@lfdr.de>; Thu,  2 Oct 2025 22:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0AF23ABB0;
	Thu,  2 Oct 2025 22:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3QWomR8"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E68119DF5F
	for <linux-man@vger.kernel.org>; Thu,  2 Oct 2025 22:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759443925; cv=none; b=cN6Xf1Ho2gBScWsrhYm0Plrdso6Y82dD+oMNXCBu2KYO1DEG7K9m1sVWGA7qF9nRTK0GX9ByvF/t+ufeGVGDzu0QWR9bt14httl0R5CgE84VAz6OH02hf0UHR6XMuLhoTg3UX6yRy2iFwi4ZYMJKI1hzbc4l7fT7QNzO8H8HGQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759443925; c=relaxed/simple;
	bh=gB7DadWt4h45FrCowrvTVoq1Looj02xdbwLR8XmLt0w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hFzkvN7I+n9+F4+6kHLbcIP5Ggw591WRJiucwzv1WRQDSIeVXcUDDulNE/3YZtGOcl3b05thLGgi1jpvR+Cpp+oS5DYnBGXD6eU1n0xqgOobat5R0BW1MtLAbuLAzeslTimEJt3Qeug2vYpPSjsfk9uvRzkCvrBax+3Bu+6WGXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3QWomR8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD941C4CEF4;
	Thu,  2 Oct 2025 22:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759443924;
	bh=gB7DadWt4h45FrCowrvTVoq1Looj02xdbwLR8XmLt0w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L3QWomR812tuuceAdlBNcwj+oE1GBoByHI9H+lzKUuLztQsdyynjIWTq7KOZOsfdT
	 86LUH2DA7NNMDKoUiNPFCfS1bb6NK0eUf7eYr3IgiiHaPR5WTuMOOlUfc5Ud6BZWS0
	 DWVpOvHlId5BhLePIt3m03/Mfrdxw1DcUeDeej5DKsQj+IsFgVEVRkd+DxoqU1SPUT
	 QBcC88vRP6j1xcmu1aqk6NeeOAUbm6gKSe3mFFf2OqmM8KvMNpHHgMEl2CoDLfs2nH
	 jKOVfDYNB0fEfp2USrLkXIU+cXfL+Y1MM5JxdjBm3DH0zv/GPHIsW0m5Y0wG7dhVXW
	 G0SktPLV3ySEw==
Date: Fri, 3 Oct 2025 00:25:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Bjarni Ingi Gislason <bjarniig@simnet.is>
Subject: Re: '^\}$' is changed to a space character
Message-ID: <uwn3st475ctdi4cyr3w3jlrpduvzfni2hityruyesy3syrjtkk@4fxqmdct35u3>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2uf7dtyxtivof3bi"
Content-Disposition: inline
In-Reply-To: <20250930194004.btcbo4xspyo3j3ua@illithid>


--2uf7dtyxtivof3bi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Bjarni Ingi Gislason <bjarniig@simnet.is>
Subject: Re: '^\}$' is changed to a space character
Message-ID: <uwn3st475ctdi4cyr3w3jlrpduvzfni2hityruyesy3syrjtkk@4fxqmdct35u3>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
MIME-Version: 1.0
In-Reply-To: <20250930194004.btcbo4xspyo3j3ua@illithid>

Hi Branden,

You removed Bjarni from the recipient list.  I've bounced the emails to
Bjarni.


Have a lovely night!
Alex

On Tue, Sep 30, 2025 at 02:40:04PM -0500, G. Branden Robinson wrote:
> At 2025-09-30T18:17:26+0000, Bjarni Ingi Gislason wrote:
> >   This is shown with (my version of test-groff)
>=20
> It's not just your version of "test-groff", a shell script built but not
> installed by the groff build process, but your version/fork of groff as
> a project.
>=20
> In particular,
>=20
> > test-groff -man -t -ww -b -z man7/vdso.7
> >=20
> > troff: backtrace: file 'man7/vdso.7':146
> > troff:man7/vdso.7:146: warning: trailing space in the line
>=20
> ...the foregoing is not a diagnostic message that GNU groff emits.
>=20
> It's an unhelpful message in at least two respects.
>=20
> * It doesn't identify a problem.  This sort of noun phrase is not a
>   useful diagnostic.
> * Because input lines and output lines are distinguishable in any
>   program that fills, joins, breaks, or "folds" text, this diagnostic is
>   furthermore unclear.
>=20
> Moreover, trailing spaces on input lines are not _invalid_ in any *roff,
> excepting possibly yours, which is private to you.
>=20
> [...]
> >   Visible change is two empty lines after a table instead of a single
> >   line.
>=20
> If that's the problem, then that is the defect you should report, not a
> wall of (arguably spurious) warning diagnostics.
>=20
> >   A full stop should be used in front of '\}' to make the line a
> >   control line.
>=20
> This counsel has nothing to do with the diagnostic you quoted
> (repeatedly).
>=20
> Here's the source:
>=20
> $ sed -n '143,147p' man7/vdso.7
> The exact name should not matter to any code, so do not hardcode it.
> .if t \{\
> .ft CW
> \}
> .TS
>=20
> There are other valid (and economical) ways to employ the `\}` escape
> sequence.  I've pointed this out to you before, recently.
>=20
> https://lists.gnu.org/archive/html/bug-groff/2025-08/msg00177.html
>=20
> So this is one possible fix:
>=20
>  The exact name should not matter to any code, so do not hardcode it.
>  .if t \{\
>  .ft CW
> -\}
> +.\}
>  .TS
>=20
> ...but so is this:
>=20
>  The exact name should not matter to any code, so do not hardcode it.
>  .if t \{\
> -.ft CW
> +.ft CW\}
>  .TS
>=20
> ...and this:
>=20
>  The exact name should not matter to any code, so do not hardcode it.
> -.if t \{\
> +.if t ft CW
> -\}
>  .TS
>=20
> ...and this:
>=20
> diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
> index 0dc8bf6f2..88a561222 100644
> --- a/man/man7/vdso.7
> +++ b/man/man7/vdso.7
> @@ -141,11 +141,9 @@ .SS vDSO names
>  .BR ldd (1)
>  output.
>  The exact name should not matter to any code, so do not hardcode it.
> -.if t \{\
> -.ft CW
> -\}
> +.EX
>  .TS
> -l l.
> +L L.
>  user ABI       vDSO name
>  _
>  aarch64        linux\-vdso.so.1
> @@ -162,10 +160,7 @@ .SS vDSO names
>  x86-64 linux\-vdso.so.1
>  x86/x32        linux\-vdso.so.1
>  .TE
> -.if t \{\
> -.in
> -.ft P
> -\}
> +.EE
>  .SS strace(1), seccomp(2), and the vDSO
>  When tracing system calls with
>  .BR strace (1),
>=20
> ...but my recommendation is be the following.
>=20
> diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
> index 0dc8bf6f2..750119996 100644
> --- a/man/man7/vdso.7
> +++ b/man/man7/vdso.7
> @@ -141,11 +141,10 @@ .SS vDSO names
>  .BR ldd (1)
>  output.
>  The exact name should not matter to any code, so do not hardcode it.
> -.if t \{\
> -.ft CW
> -\}
> +.P
>  .TS
> -l l.
> +Lb Lb
> +L  L .
>  user ABI       vDSO name
>  _
>  aarch64        linux\-vdso.so.1
> @@ -162,10 +161,6 @@ .SS vDSO names
>  x86-64 linux\-vdso.so.1
>  x86/x32        linux\-vdso.so.1
>  .TE
> -.if t \{\
> -.in
> -.ft P
> -\}
>  .SS strace(1), seccomp(2), and the vDSO
>  When tracing system calls with
>  .BR strace (1),
>=20
> ...and so on similarly for the rest of the tables in the document.
>=20
> I can't imagine why anyone wanted them all in a constant-width face.
>=20
> >   This also the case in some other files.
>=20
> That claim doesn't help anyone.  If trailing spaces in "the line" don't
> cause rendering problems in "other files", then there is no urgency to
> change them, and, arguably, not even a defect in the first place.
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--2uf7dtyxtivof3bi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmje+9EACgkQ64mZXMKQ
wqkNOA/9Gwve8aw52FGxHnZgVSrRfehhkPYt9G7jbMmzACYYw1++z/5ymTdNEYNd
5wKPF/mR8yXpFYB/95hHVGvwK4lUdhTrM14lI9c9ue5ctIk5oZV4edBgj5X4YKBN
wND5HPdvNv9nN+d9Yfu7VtetswwQrVqtDFNnblQJc5VUQMdG+xBNBORRfGUyPZa9
uX2iRXgV6G+RrzAbosGOyeGwcgRctAkKhwo2arPuBSUqVMrRLADvjd3/fR4qM7Os
gDLLyQyo1aBErkmMlTHeTrzslvuwgpMxM857yipqYDw2/qAuGH+4K2JRhQYroPZg
cXV+J6i6ryOjcacSH7MWKN71Zs/VBYlueIGe3/NAySZXEMMZGzR5GBn6w1SXXBRj
DfA0Gbs13of4UjhofKmunpEyDO8pzH8lE5LgwzOqjZAqKy847qNfFGzaIlGV1bWJ
L8DJGLG7mBXfHnByc9S0LzEgPI4A04R2yPVa4Hcf389cQq2li6GjVrwCoU4Z/K5C
TnlFYRGlLpr9Y30VnoDa+8HbqaC75zFwoARdqdsr/lzwz/lwZwapuxPt2y1gMHur
FztROUsLYfT6wMWyK4x+rwvRkOiBRGsCAPUz4N2/p6zhCEq/DWsaTjClRENe3mUC
/+SdYJmNT5EmoYf6HSmrNyB8aTYFag4Ufb4fAJTYowCgTVLjyLg=
=elKR
-----END PGP SIGNATURE-----

--2uf7dtyxtivof3bi--

