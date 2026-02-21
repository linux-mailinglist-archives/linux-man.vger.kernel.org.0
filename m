Return-Path: <linux-man+bounces-5168-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHcHGuPKmWkXWwMAu9opvQ
	(envelope-from <linux-man+bounces-5168-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 16:10:27 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C18CB16D1EF
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 16:10:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F567301412D
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 15:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01871165F1A;
	Sat, 21 Feb 2026 15:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jx5MlzS/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA303219FF
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 15:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771686595; cv=none; b=DjgYX7aFai0X4t+nSl+2uzmVZbvD4qm31TYKySJBKQaRHbcNGL5R2HyBkJcb0rKOQmbfuo9BgufDyNb/G6crBw+03u1JcbTYmXpm9+piYY5SurmQkmre9MFZ7lT04VLgdSVY1fs/cFj45Nus0tYAZV3kMoje/xkoD0HxLsMnsfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771686595; c=relaxed/simple;
	bh=aERdZEo/ggmBb725EWhBMIbyRsfJpsi7HOpMKyPLayY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XM0hljUSxn3ZCTBm4QRkH+MvVjYeuVcirbG3MSxsYgHxK78RwFECrQtM9iwXFrWcz9W7X+WR58G+LcZ3Uk8+uvStyix9ueHsW//rdtsWKGzLFZQ/s1kgOruJYH7vCTJDmE271Fu++b7V/DYD2S3FchaqQ99tnhi0JsDGhOtPrgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jx5MlzS/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB1A9C4CEF7;
	Sat, 21 Feb 2026 15:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771686595;
	bh=aERdZEo/ggmBb725EWhBMIbyRsfJpsi7HOpMKyPLayY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jx5MlzS/ij3Uofb1HZVBcdDfNhgNOCdrIBBzCzFAAMRjjL7erEpF6bGfxhJyz74Q8
	 k3UxmlWv/cdnPAALKYC1bY+hAPfyRuBEbX5yh7KqU+0N3qk9aBNtsaoYgWb34BpuW3
	 HeNepV9QRplIFDoLtOHlP0FkJtYCUcjb6qYXMQ12Aj1vAdE711zxg6I9zosGK4A1sG
	 463Aqty6wjzf03Jvnf2Ug+2TwWfuXSNPgXynow+4kXWerp3AQXmRMJZKqWR7/6Smfc
	 IKP1vMs/h7D8GvxhLaJZUJ8t3Ck8912LsEm9YjOl/5nSxBMYMBnW+RvIbDzQbsvY/H
	 xbTjp14b52WyA==
Date: Sat, 21 Feb 2026 16:09:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: bug-gnulib@gnu.org
Subject: Re: [PATCH v1 0/1] Document strnul(3)
Message-ID: <aZnKso6qQk-SMymf@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <aZnJYmxVIpqvaFZQ@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7pfq3alzwif4xvqo"
Content-Disposition: inline
In-Reply-To: <aZnJYmxVIpqvaFZQ@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5168-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C18CB16D1EF
X-Rspamd-Action: no action


--7pfq3alzwif4xvqo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: bug-gnulib@gnu.org
Subject: Re: [PATCH v1 0/1] Document strnul(3)
Message-ID: <aZnKso6qQk-SMymf@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <aZnJYmxVIpqvaFZQ@devuan>
MIME-Version: 1.0
In-Reply-To: <aZnJYmxVIpqvaFZQ@devuan>

On 2026-02-21T16:04:24+0100, Alejandro Colomar wrote:
> On 2026-02-21T16:02:49+0100, Alejandro Colomar wrote:
> > Hi!
> >=20
> > gnulib has added strnul(3).  I hope libc implementation eventually pick
> > up this API.  Let's document it in a manual page.
>=20
> Here's how the page looks like:
>=20
> $ MANWIDTH=3D72 diffman-git HEAD
> fatal: path 'man/man3/strnul.3' exists on disk, but not in 'HEAD^'
> --- HEAD^:man/man3/strnul.3
> +++ HEAD:man/man3/strnul.3
> @@ -0,0 +1,39 @@
> +strnul(3)               Library Functions Manual              strnul(3)
> +
> +NAME
> +     strnul - string null=E2=80=90terminator
> +
> +LIBRARY
> +     gnulib - The GNU Portability Library
> +
> +SYNOPSIS
> +     #include <string.h>
> +
> +     char *streq(const char *s);

Oops; s/streq/strnul/.  Fixed.

> +
> +DESCRIPTION
> +     strnul() returns a pointer to the terminating null byte in the
> +     string s.
> +
> +RETURN VALUE
> +     s+strlen(s).
> +
> +ATTRIBUTES
> +     For an explanation of the terms used in this section, see attrib=E2=
=80=90
> +     utes(7).
> +     =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=90
> +     =E2=94=82 Interface                            =E2=94=82 Attribute =
    =E2=94=82 Value   =E2=94=82
> +     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=A4
> +     =E2=94=82 strnul()                             =E2=94=82 Thread saf=
ety =E2=94=82 MT=E2=80=90Safe =E2=94=82
> +     =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=98
> +
> +STANDARDS
> +     GNU.
> +
> +HISTORY
> +     gnulib 202607.
> +
> +SEE ALSO
> +     strlen(3), strchr(3), string(3)
> +
> +Linux man=E2=80=90pages (unreleased)     (date)                       st=
rnul(3)
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--7pfq3alzwif4xvqo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmZysAACgkQ64mZXMKQ
wqk4YA//RW4equizjEnzKbPb/tTqjCm+2/GA2CxLvDbQDc/KzosKudN5JJbce70I
qRcWlkg4wJQznYNTOX2P6gD93RrGO6He8Nzk8og/9tfKAwPXi59ndWeG6pdSFcN5
TyQwcP2SWeliyrQ9btE5F9o2jFIQ2P/BgBpO35ff+q9RWRdLuqsCdqKqJuP7V1Np
2JiTlA3HYIF6WZjnRONIN1cbcoUZ+kSDS8TDxmqDkyT9bYKEs0t0fDEWG/LnUV8l
twlSTocrkP0i2gEFnaNU600LJbsQ5X3JiSda4qc6aSm6n6wsKVFlMo2s1N+Izejk
fv6esSkG3MGshiXgrmQED4eqhYRn/hmgEZFWKGOcHzpds7nGvtO+p4+pyEGQ8mkI
GNl+z8MZ0Enl2WMBu/2CXjbl3B6fROZl6Qs/O8GZlxLM+R36aPIVnwbTQy25F+uP
n8RVR+V36xlMfzWrt4uTvXwmj/fauicfbu3+AR8SMo1Q3htbyYwVawByc+b+ucFq
KArngx5nsNuX/TCdr7SwY1HiMNEQ6+/bmSATyRESvPLG8c1os8uzkwV4MZK1hH04
tgihbkfjQRmDax/Jvx/NnpRvD5KZubYyg7Es5uAYr2OCSZg8oT+tq+3iiyMbFptv
51GIxV+ndNu0ldJ3UOObzdAYrttz2zCTYrpxnNCYLJ9obkWR98Y=
=OUuj
-----END PGP SIGNATURE-----

--7pfq3alzwif4xvqo--

