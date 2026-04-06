Return-Path: <linux-man+bounces-5303-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JYPpMfQu1Gl0sAcAu9opvQ
	(envelope-from <linux-man+bounces-5303-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 07 Apr 2026 00:08:52 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE593A7BF5
	for <lists+linux-man@lfdr.de>; Tue, 07 Apr 2026 00:08:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 866E7300B046
	for <lists+linux-man@lfdr.de>; Mon,  6 Apr 2026 22:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63F1E30CDB6;
	Mon,  6 Apr 2026 22:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIQT2VrJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AAB1E0DD8
	for <linux-man@vger.kernel.org>; Mon,  6 Apr 2026 22:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775513329; cv=none; b=ehhvGpOS4hqCk8EcDKfX/7dz62zoBT+7+0Naj4/IDLQZf2TjntZfftefyYKAFUtI8y9tfQxxDYetEMN0tTJ4PxmiqKsgpNTKt1YvNBYPJAKGVpJN/60VHbQonMqZVBPQ3fg9Pz98bIxcZQ6lolk5bLgfTSGzBZIU4ZWlhuNPvuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775513329; c=relaxed/simple;
	bh=ljnPbfA/3kuoBwkPlsgSjzG9Em94bFdRVvxnx1tiFtU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bbQ7o/jEqYz+ZWDySBAISkvdrsUTm42AB31Fm0kQM24k14MYPUoOL9jEuMcZwaQ6eMrO4HbIgXCuZV29nGH7dqpY0Z2cMQsnhmpjOE9oa5EsVWiPyeWhQ05EP4BYWBnrvokl0zjE0ZXGV5rD3NoiW8072vYnRKZrGOSaO6EBZMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIQT2VrJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5785C2BC9E;
	Mon,  6 Apr 2026 22:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775513328;
	bh=ljnPbfA/3kuoBwkPlsgSjzG9Em94bFdRVvxnx1tiFtU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OIQT2VrJrNfmZX7yDagmEU4P21sBordGhwaO9L5YbRV7FzEf8MAXhSziY9HKpBgom
	 IgAExZ84GRdPVovDDx4SAYUng0r6rVG9bVpayx8473RMRczDOhqaSuHcdZe2tqK927
	 saun2MR7rmFHv1QcYbjtoxBWS0Gdxbth5sZh2pbq+Txa1WMg9dWf5EFGhU1Q2dlklG
	 +h0yoFNvEYfRbDskrkLgKlRkDN+Ftd70TjYcwyjdicHX4ipM+44YqKYrEVxcarjDaj
	 835Z2c/GRDX5cxamBM1OufKr8uF1ZVuN6fONRZknormlDopYwpRSQnWjrCvhQa3ggO
	 TlYxgNc5T31gg==
Date: Tue, 7 Apr 2026 00:08:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Neitzert, Greg A" <greg.neitzert@unisys.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Man page bug - hostname.7
Message-ID: <adQuqIkfnyMmigP7@debian>
References: <DM8PR07MB8854A4169C2DD8BC4DAD6ED0885DA@DM8PR07MB8854.namprd07.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eefbqzzr6mro2qxc"
Content-Disposition: inline
In-Reply-To: <DM8PR07MB8854A4169C2DD8BC4DAD6ED0885DA@DM8PR07MB8854.namprd07.prod.outlook.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5303-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 1FE593A7BF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--eefbqzzr6mro2qxc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Neitzert, Greg A" <greg.neitzert@unisys.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Man page bug - hostname.7
Message-ID: <adQuqIkfnyMmigP7@debian>
References: <DM8PR07MB8854A4169C2DD8BC4DAD6ED0885DA@DM8PR07MB8854.namprd07.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DM8PR07MB8854A4169C2DD8BC4DAD6ED0885DA@DM8PR07MB8854.namprd07.prod.outlook.com>

Hi Greg,

On 2026-04-06T19:19:36+0000, Neitzert, Greg A wrote:
> Hello,
>=20
> In the man-pages source, in the man.7 section, there is what I believe a =
bug/inaccuracy in the hostname page.
> Specifically this paragraph:
>=20
> "Each element of the hostname must be from 1 to 63 characters long
>        and the entire hostname, including the dots, can be at most 253
>        characters long.  Valid characters for hostnames are ASCII(7)
>        letters from a to z, the digits from 0 to 9, and the hyphen (-).
>        A hostname may not start with a hyphen."
>=20
> The last sentence is the issue.
> I believe it should state:
>=20
> "A hostname may not start or end with a hyphen."
> (suggest adding "or end")
>=20
> The glibc source and kernel source themselves enforce no rules as to nami=
ng.  You can call sethostname in glibc directly and set the hostname to any=
thing as long as it is 63 characters, violating standard rules like RFCs.
> The 'hostname' program which is maintained by debian does enforce the fir=
st and last character rule.  It lives above glibc and calls glibc:
>=20
>        /* Handle leading and trailing hyphen now. */
>         if (!len || !isalnum(name[0]) || !isalnum(name[len-1]))
>                 return 0;
>=20
> From maintainer:
>  https://tracker.debian.org/pkg/hostname
>=20
> This isn't necessarily binding on you I don't think, but it is consistent=
 with the RFC rules.
>=20
> At the bottom of your man page you do refer in the SEE ALSO to the pertin=
ent RFCs:
>=20
>      IETF RFC 1123 =E2=9F=A8http://www.ietf.org/rfc/rfc1123.txt=E2=9F=A9
>      IETF RFC 1178 =E2=9F=A8http://www.ietf.org/rfc/rfc1178.txt=E2=9F=A9
>=20
>=20
>=20
> RFC 1178 has some general best practices and is not really governing for =
this.
> RFC 1123 however, and the RFC it refers back to, RFC-952 are directly on =
point.
>=20
> RFC UPDATES RFC-952 and refers to it:
>=20
> "The syntax of a legal Internet host name was specified in RFC-952
>       [DNS:4].  One aspect of host name syntax is hereby changed: the
>       restriction on the first character is relaxed to allow either a
>       letter or a digit.  Host software MUST support this more liberal
>       syntax.
>=20
>  Host software MUST handle host names of up to 63 characters and
>       SHOULD handle host names of up to 255 characters."
>=20
>=20
> Referring back to RFC-952:
>=20
> "1. A "name" (Net, Host, Gateway, or Domain name) is a text string up
>    to 24 characters drawn from the alphabet (A-Z), digits (0-9), minus
>    sign (-), and period (.).  Note that periods are only allowed when
>    they serve to delimit components of "domain style names". (See
>    RFC-921, "Domain Name System Implementation Schedule", for
>    background).  No blank or space characters are permitted as part of a
>    name. No distinction is made between upper and lower case.  The first
>    character must be an alpha character.  The last character must not be
>    a minus sign or period."
>=20
>=20
> Taking RFC 952, and the updates in RFC-1123 we end up with the following:
> 1. Length is now of 63 characters minimum (superceding 24).
> 2. The first character must be an alpha (or numeric - as amended by RFC 1=
123).
> 3. The last character MUST NOT be a minus sign (from RFC 952 and left unc=
hanged).
>=20
> Therefore, to be accurate with the standard you are referring to (RFC 112=
3 and the RFC it updates 952), I believe you should have:
>=20
> "A hostname may not start or end with a hyphen."
>=20
> All of your text is in harmony with RFC 952 and RFC 1123 except for the i=
ssue regarding the hyphens - at least from my reading.

Thanks for the very detailed report.  I've applied a patch following
your suggestion (will push tomorrow or so).


Have a lovely night!
Alex

>=20
> Thanks.
> Greg Neitzert
> Greg.Neitzert@unisys.com
>=20
>=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--eefbqzzr6mro2qxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnULuwACgkQ64mZXMKQ
wqk/IA//doC1cjS9gtPl9EuwVKwCs1ci1X1SwLz/w0M7o274F2eqHrVAU4scMHNa
KewZiBL9MU19X4VQQ+g9opgZ5PnTsYHtQDTOY1StkeGayVIVBv+nBgEIQs5z9+mF
G227X7QOhxwTHoNvENMKDJBzFDW9/iRRVs3FAXjg3aHpy1ksMuPsdmNc1nCsWIKB
DS/x1RuUE0UHLFip9mE0KDUADicIGbvjZRoXKGUXDQr3wDnw3SFjv+UpTlpBDRKY
nXgJjP1DWCEcsjwObqOI2JKncb5GbCEG2Hsk1WNBH59lIjx3mpDthPzS2dxBcoQ9
9YzWETYcLVg3F0W+0Bqvn28B71X9vuPfycQ1aCtJLcu6AggraP/O7juA0cy+S45C
t15v8CyHud3ppjLjBp+wgEtU7p+YVNX/NzahipUyga/jYk7X7mAn1GpDWbzRo+3Z
e+ZxTs+prYQ9gAACF17p3KC6vBylSWJpcLr9i9RKLwdWY56uT0vvsHb0lFtoc6Kz
aZ/ZYXHiKvpBqH3VdCndM4E4V4swhVbqhgyPFPhC3PxESpGNEcFgkadmlslUuamk
risJfjyzEA6mSuNLfnKVoLc99fGT/aVjSea1BIWlnW+GuQsklnfhiQB0OdLFNR2k
+SR42FpE7r1wZCehqA2YzAtsVuX6uv5wXiKyl2E36zlH9m2rEJU=
=dSat
-----END PGP SIGNATURE-----

--eefbqzzr6mro2qxc--

