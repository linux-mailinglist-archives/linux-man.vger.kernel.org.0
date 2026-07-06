Return-Path: <linux-man+bounces-5697-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rEgHHELoS2pVcgEAu9opvQ
	(envelope-from <linux-man+bounces-5697-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 06 Jul 2026 19:39:14 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1E5713FA0
	for <lists+linux-man@lfdr.de>; Mon, 06 Jul 2026 19:39:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GIWLiUpC;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5697-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5697-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8707932BD643
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2026 15:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B70D33905EA;
	Mon,  6 Jul 2026 15:28:00 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A1738C2A7
	for <linux-man@vger.kernel.org>; Mon,  6 Jul 2026 15:27:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783351680; cv=none; b=Y2BZ2AJGc21prh4FTkC+r8+WozJm4CpfXcKntKbpJufEp2wIPF6vU+L/UQJF9qeGOsL+0jyNdhEH5dE0CZKmViKvTZNGww2Z4qQwG2Q/4U+EFo6prH8yAxsy9Bf1lPCv30PXEqngLjv7Taf6mFsdTqVdVz1q3yK79O1lR/cp95g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783351680; c=relaxed/simple;
	bh=JXBDSndf+98zZOaCAD91Q5ro7aFCxqgkEc23tAjm7HI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NAw7Ys+qZfwTfUVtuR/S6UgzGi5oGFR2swcOHoHSHZ0rPdQKPxT6FfacWk9LBi3nAXG8vdg/NaSZ3XHzZP+PozAcJgmzv1D0hqRcD2F67dx7cVV/GXfb1IQzkmOtEI3mNlpwNQ28CsAPI78DoaYx70laf7jm7OI0xm3jp3kL5UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIWLiUpC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 519D81F000E9;
	Mon,  6 Jul 2026 15:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783351679;
	bh=/i7vBBi+VPgeXMiloHbJhN/Exs7N7rcr6fhJt52VAeo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GIWLiUpCqRJu05Et3ng39a94yhKw+kw0knCKM7FVrmj7gYfBODg6cWYcVJqt+D/SP
	 fY90IV6lujbNVo59aAXjhsrrAJfkChq/zPHBmtg1OjYmJMekRqbCunlWoCdnTi/VMF
	 DXCLe6ucuUZ933LZwGKQEHj4HwGBr8OtplN6VhTKjR6iZ0PCIOhkM+bVPRbTv3CSpp
	 EHWvN5+Hwr9Kcct9tAGwvg6dOrAYUAAuJjl92minC30CS8VAYw2B2boqCVBd46SNLJ
	 n7G1e67qw/ZXeuaE6uWT+k15WITGpVj61Td3QN9fstlDq1PY1zkAAMI/1jqpVarVZJ
	 NNncl3cUE+avw==
Date: Mon, 6 Jul 2026 17:27:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man7/environ.7: Fix underspecification of
 "name=value" strings
Message-ID: <akvEyqpWVMYkkJei@devuan>
References: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ey77on4pgvjjaxop"
Content-Disposition: inline
In-Reply-To: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jason@jasonyundt.email,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5697-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,devuan:mid,jasonyundt.email:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA1E5713FA0


--ey77on4pgvjjaxop
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man7/environ.7: Fix underspecification of
 "name=value" strings
Message-ID: <akvEyqpWVMYkkJei@devuan>
References: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>

Hi Jason,

On 2026-07-06T10:26:20-0400, Jason Yundt wrote:
> Before this change, environ(7) said this:
>=20
> > By convention, the strings in environ have the form "name=3Dvalue".  The
> > name is case-sensitive and may not contain the character "=3D".  The
> > value can be anything that can be represented as a string.  The name
> > and the value may not contain an embedded null byte ('\0'), since this
> > is assumed to terminate the string.
>=20
> That description has a few problems:
>=20
> 1. It talks about =E2=80=98the character "=3D"=E2=80=99, but it doesn=E2=
=80=99t specify what
>    character encoding would be used to represent that character.  Two
>    different character encodings could represent that same =E2=80=9C=3D=
=E2=80=9D character
>    using two different bytes (or even sequences of bytes).

POSIX says that '=3D' is part of the portable character set.  Do we really
need to care about the value of '=3D'?  Is this really possible?

> 2. It mentions that =E2=80=98The name is case-sensitive and may not conta=
in the
>    character "=3D".=E2=80=99  It doesn=E2=80=99t clearly say what what is=
 allowed to be in
>    a name.  It only says that those two things are explicitly
>    disallowed.

Anything else is allowed, obviously.

> This change fixes those two problems.  For the first problem, this
> change makes it so that the description is all about bytes, not
> characters.  Describing the format in terms of bytes allows us to
> sidestep the question of character encoding entirely.  Additionally, it
> is more accurate to describe strings in environ as being sequences of
> bytes instead of sequences of characters.  Both the name and value of an
> environment variable could be sequences of bytes that don=E2=80=99t conta=
in any
> characters at all.
>=20
> For the second problem, this change clarifies that the name of an
> environment variable can contain any byte except for 0x3D.  It also
> clarifies that while it=E2=80=99s OK for environment variable values to be
> empty, it=E2=80=99s not OK for environment variable names to be empty.
>=20
> Additionally, this change replaces "=3D" with '=3D'.  In the C programming
> language, "=3D" refers to two bytes: one for the equals character plus one
> for the terminating null byte.  In the C programming language, '=3D'
> refers to a single byte.  In this particular instance, we=E2=80=99re talk=
ing
> about a single byte, so it=E2=80=99s better to use '=3D'.  Using '=3D' al=
so makes
> environ(7) more internally consistent.  Before this change, environ(7)
> used '\0' and "=3D".  This change makes it so that environ(7) uses '\0'
> and '=3D'.
>=20
> I was able to obtain obtain the information that I needed in order to
> create this change by writing a test program.  You can find the test
> program here [1].  Additionally, I got the information about the setenv(3)
> and unsetenv(3) functions from their man pages (specifically, the parts
> of their man pages that talk about EINVAL).
>=20
> [1]: <https://codeberg.org/JasonYundt/environ-format-example-program>

Please include the C program in the commit message so that it can be
compiled and run easily, without having to understand Nix stuff.

>=20
> Signed-off-by: Jason Yundt <jason@jasonyundt.email>
> ---
>  man/man7/environ.7 | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man7/environ.7 b/man/man7/environ.7
> index 31a69017cf75..bf5726e32429 100644
> --- a/man/man7/environ.7
> +++ b/man/man7/environ.7
> @@ -28,12 +28,23 @@ .SH DESCRIPTION
>  .I environ
>  have the form
>  .RI \[dq] name\f[B]=3D\f[]value \[dq].
> -The name is case-sensitive and may not contain
> -the character
> -.RB \[dq] =3D \[dq].
> -The value can be anything that can be represented as a string.
> -The name and the value may not contain an embedded null byte (\[aq]\[rs]=
0\[aq]),
> -since this is assumed to terminate the string.

I liked the old wording about the terminating null byte more.

> +The name is case-sensitive
> +and may contain any byte
> +other than null (\[aq]\[rs]0\[aq]) and 0x3D (the
> +.BR ascii (7)
> +.RB \[aq] =3D \[aq]
> +character).
> +The name must be at least one byte long,
> +or else programs will not be able to manipulate it using the
> +.BR setenv (3)
> +or
> +.BR unsetenv (3)
> +functions.
> +Immediately after the name, there should be a 0x3D byte.

What should readers interpret of 'should'?  Is it a recommendation or an
obligation?  This is unclear wording.

> +Immediately after the 0x3D byte is the value.

This seems redundant with the sentence that shows the format
"name=3Dvalue".

> +The value may contain any byte except for null.

What is the null value?  You mean an empty string?  Or you mean embedded
null bytes in the string?  Please clarify.

> +The value may be zero bytes long.

That's commonly known as an empty string.

I think saying that the value can be anything that can be represented as
a string is fine (the old wording).

> +Immediately after the value, there must be a terminating null byte.

The fact that it's a string already implied this.


Have a lovely day!
Alex

>  .P
>  Environment variables may be placed in the shell's environment by the
>  .I export
>=20
> Range-diff against v0:
> -:  ------------ > 1:  d5b0d9b86029 man/man7/environ.7: Fix underspecific=
ation of "name=3Dvalue" strings
> --=20
> 2.54.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--ey77on4pgvjjaxop
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpLyXUACgkQ64mZXMKQ
wqkxIQ//Zl2XPssECX1utry8dTgzdoe3M3t4rs1YVI/i/cEuPTqtcAplgYrOyEhK
ithRpgeqipZERRBZtUQflzhydVAvH/HRaswdy6K2Y+yHYFh9vRwAyIPGgvISpXPM
pDHHCgZDASgYgtnijYze1ZmpnDe5SSEVsCgfTqCpkrbSRNIyEUYC448x2dxA39bK
v8R9xSqiU3EhuBcsFsC2lF7BmfwxXEODJKJAV0DOCMiqQ8VU2EqUixkUdbBVpJNG
Qpby7+8U6JiQzBFbU46lYteRMmz0MM3on1Mvq6flkytLV88ee9ukcz792DFKvmP6
SGB8fE94fmER6PjoLODV0r9SwOq6+SXKQOMuHy0GcrJpbhi1q47WrJo09UMAwnqE
K6J5/TuSmk89UWRCQkgOjGmu2mqhteTnvl/k/oc/D1Lgs4MdoeDMUuJNSovE7jek
5irscmJdAjsj48GGAQ/GZuSc5cR9xi5SY0N9MFZHVqPBAAqs2JelaUShFGoM4L42
3i83f7/WU2VReEdE0s1ADMX0mKpWpjOk+zuL8CYPKdZxc87jamVgv5k4VQgFsrPa
OmGxf1BRuaeFCsaM1PffGZcQ/noXkUC1B+o5z90mOvpBc7H0BZ4wjWDTnaEBNnXX
RdV9LbX6A/JAt0mBnuO/2VMYkA154C9wxD7o2M6rmBpMprVQNsM=
=gQXq
-----END PGP SIGNATURE-----

--ey77on4pgvjjaxop--

