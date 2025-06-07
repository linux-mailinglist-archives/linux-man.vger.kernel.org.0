Return-Path: <linux-man+bounces-3117-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A41AD0FC3
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 22:29:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F8CF16C097
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 20:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417351F0E25;
	Sat,  7 Jun 2025 20:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nps98IjX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3306145B25
	for <linux-man@vger.kernel.org>; Sat,  7 Jun 2025 20:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749328169; cv=none; b=u9YM03xdyfYMhauMLO3taRMhbYL+MLg1otFhx4wqh8JTgFJi2EuSISeRjyU/sl46fhiRLtobRAfkIDOq3prI4YryVrsn7CXgr1uXCu60MLvDvVb8FdJvCeiVj9UkwjdHBwGSGoLP37/5aduW52SKZNZNC4oaG7c3spuWFCTUNEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749328169; c=relaxed/simple;
	bh=lqM2Yqj3JTCAqQSNjF5fTk04CPTiFiHMc2gl/mI8K7M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pXQfap/Pw5bsIfHFPBb2CYSe/bHgIFNV+HERaDwKgveKSF+ylLuefi4ZNDrMl/NA3OVU/5hdVSIiFgw6zeMg1TNnWiGNUcEIt3i6CIMbFmo0U6oqgNMtXnF7IvERM1JMrja5oljN+JQgXc+BuR36r7r9vScrvFu43/oKzOSk07s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nps98IjX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB5C9C4CEE4;
	Sat,  7 Jun 2025 20:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749328168;
	bh=lqM2Yqj3JTCAqQSNjF5fTk04CPTiFiHMc2gl/mI8K7M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nps98IjXIAl6r/CpV41WocJJc68qFB7ahmlZcxNHP53YzeiBoJIIvZ3psZTuqfglE
	 mIrWSxUfvhCc8XLf7zRq9Wq6MSDST36u1ZsLgU6zgtvLE8OpldHqotNlE9s82Ms177
	 ummkH/QgWONHLaJBrw/M+XIISlBGa4VDDO4NRVh6un7GZXbFWGt4nJdCqsdmVAaFtS
	 JapCx97CMqDD80mq9cJwogCSFbnmtsU64I/LS+5DGRupY1/31y6rq0BY093EqtuvB6
	 cpvQ3+maN/Ml+F26IbBA6U47fMQDykGdI3WiD5rzxMk2M67T88lw0zq2+voQirBtgI
	 x1CbWNO2qLm1Q==
Date: Sat, 7 Jun 2025 22:29:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Nicolas Pitre <npitre@baylibre.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: missing info about
 TIOCL_SETSEL
Message-ID: <lxkjwhvahjcjg3gzuc2z4o6g7wkpecws32n6jkadn3mwfcabpt@2vsm7we2vlcz>
References: <rssn5o07-prr9-2ssp-566q-n7rs5rr60719@onlyvoer.pbz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3xaycds3bda5qmzh"
Content-Disposition: inline
In-Reply-To: <rssn5o07-prr9-2ssp-566q-n7rs5rr60719@onlyvoer.pbz>


--3xaycds3bda5qmzh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Nicolas Pitre <npitre@baylibre.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: missing info about
 TIOCL_SETSEL
References: <rssn5o07-prr9-2ssp-566q-n7rs5rr60719@onlyvoer.pbz>
MIME-Version: 1.0
In-Reply-To: <rssn5o07-prr9-2ssp-566q-n7rs5rr60719@onlyvoer.pbz>

Hi Nicolas,

On Sat, Jun 07, 2025 at 03:55:10PM -0400, Nicolas Pitre wrote:
> Structure members are assumed to be all contiguous in memory by the kerne=
l.
> It starts with drivers/tty/vt/vt.c:tioclinux() where we have:
>=20
> 	void __user *param =3D (void __user *)arg + 1;
>=20
> 	case TIOCL_SETSEL:
> 		return set_selection_user(param, tty);
>=20
> And in drivers/tty/vt/selection.c:
>=20
> int set_selection_user(const struct tiocl_selection __user *sel,
>                        struct tty_struct *tty)
> {
> 	...
>=20
> Finally, struct tiocl_selection is defined without the subcode field as:
>=20
> struct tiocl_selection {
> 	unsigned short xs;	/* X start */
> 	unsigned short ys;	/* Y start */
> 	unsigned short xe;	/* X end */
> 	unsigned short ye;	/* Y end */
> 	unsigned short sel_mode; /* selection mode */
> };
>=20
> The subcode field is initially skipped with the `arg + 1` and therefore
> struct tiocl_selection is expected right next to it without the usual
> alignment gap.
>=20
> Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
> ---
>  man/man2const/TIOCLINUX.2const | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2co=
nst
> index 1172ec431..98c6cf54e 100644
> --- a/man/man2const/TIOCLINUX.2const
> +++ b/man/man2const/TIOCLINUX.2const
> @@ -131,6 +131,13 @@ Since Linux 6.7, using this selection mode requires =
the
>  .B CAP_SYS_ADMIN
>  capability.
>  .RE
> +.IP
> +Note: The kernel expects all structure fields to be contiguous.
> +In particular, no alignment padding may exist between
> +.I subcode
> +and subsequent fields. It may be necessary to add
> +.I __attribute__((packed))
> +to the structure declaration.

Hmmm, I'd actually add [[gnu::packed]] to the structure declaration.
And then we don't need most of this test (I'd add the first sentence
only).

The C23 attribute must go after 'struct':

	struct [[gnu::packed]] {
	    char  subcode;
	    short xs, ys, xe, ye;
	    short sel_mode;
	};


Have a lovely night!
Alex

>  .TP
>  .BR subcode =3D TIOCL_PASTESEL
>  Paste selection.
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--3xaycds3bda5qmzh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhEoSUACgkQ64mZXMKQ
wqkNBQ/9Hs8mLtbc0cXCwcquCLBtwWmyB5lNaLt/YLQSlEuUWCQCczU3wEssQvo6
cdyWkjPFnvQdSSkn9chJpwnFYOb5ApgByyhk+1pGupKRKnkc6mGYTvAodVkUrELE
jgAypAv07VbZKguRoAMXfMBbYMR1j/OR8etBH93B7lo1fpQ+MVC6BmHHe+6SnRKH
asvrVOPNT4027BHzHC6j+h8C+XR/a8YR4R/f8fr5e14YdboyGG7Rkzr6UKmxWxg8
BN7du3S/V9pSpUarYIBcj/pwlnYv3YFQL9Ia+UzBmnAvRkH0r45azHNVhHDYVpbd
N8zK19JQChok8CMLkHz3Xs1Mkn/yTDFiT18MwxzKFVWWx0FbAbkT+BbNXiliBdyj
/45ck7YAFJEER/cz8va8tsVGBS/2vgOGL40Rzhw6aarGBG4kW38H0koXqlBkfRJH
mfG+rxpvBxOnYbNaL5Z4qo23A1n4zIeC3p+g86G1P+zr/msQLuF+kajzm2nV9iH4
mNmCzurHhPLJ2WAiBNPkt5FYROFgGqHtnY/utpyi8eIW+yyFFqaj2BNXbVuGfRDT
7w9+g/zLrO4kJWmK3SM8EYVL6I+DwNxPtG3Uxvpo0KfUZzLw330oeLZmojKTmrr2
pCq0RsR3WXO+O7TyNZfznSj/fEdy6hdslMvDqJtl/rArHkgHzTQ=
=vvSD
-----END PGP SIGNATURE-----

--3xaycds3bda5qmzh--

