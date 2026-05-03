Return-Path: <linux-man+bounces-5458-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPYZNT6892m5lgIAu9opvQ
	(envelope-from <linux-man+bounces-5458-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 03 May 2026 23:21:02 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF004B7786
	for <lists+linux-man@lfdr.de>; Sun, 03 May 2026 23:21:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2984E300D47E
	for <lists+linux-man@lfdr.de>; Sun,  3 May 2026 21:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B67A1396D0D;
	Sun,  3 May 2026 21:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJomsF0N"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B3237AA75
	for <linux-man@vger.kernel.org>; Sun,  3 May 2026 21:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777843182; cv=none; b=GoLVsl6rMD9rHcQFb4+u231+F18HQMZAzg4UwfKDLunjlMkTpxO0/UGdIF5Srq19IAL4vE23B/ieBxynSo3UDi6PzdcZE3/m6wD6B6zZ6i2KeUd+gYDS99NYqLZo008VevKlO2gBu/hJ+ETbB6TPJQyI2DAgxgoqXkj+wqZkL1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777843182; c=relaxed/simple;
	bh=3KpNS/hmLCwc35qdGQu68KOMFExlSm3aUs2TQLESe9w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YRSDZCYqf/AHXieb5GaSMTl959NiStTRCXuE5n0htKdT0Q3zXEO0G2z+CHX7+ZiVcpoj5rRGoJEmLUVfUAMqIJi4Bg3NRbFvXwheM4T2XFhdbSw4gLyrzUawc1Lnh3D7Fg7MTY8GRbDBN0+cUNpuM+1AZUAAkIhWSR7rwSXXPeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJomsF0N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40ADDC2BCB4;
	Sun,  3 May 2026 21:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777843182;
	bh=3KpNS/hmLCwc35qdGQu68KOMFExlSm3aUs2TQLESe9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SJomsF0N84/SmhdrrwzG438OZ9uk65NiJyw83hUV+BLXah6+bO/AGgpnO2Vw8P/fX
	 3WoH0K3ePuHoUe1GSii/T8kptkg+f1pcxtA7IuKcWILjfRR6GinYblv4NIYEx7g/Dl
	 X6MG66L4xd5GUq7GCQ+XCfKUp3q8BTamBu8YZnNF9lBDO69hLglMUj41UGEiq1ufug
	 +idflu8fELAiCgYBdZMqf5Z5+x3F3zxnw7mB0uAhsPpgtKBhkiEqt27erSZ4vRVXED
	 RAiz5RJok85X4UnLmPASQZCOjMYBL1rYXKTOPGHwkCnJpESKnEThw1xppKjsRa+w7k
	 aROkVmCjxVDCA==
Date: Sun, 3 May 2026 23:19:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Patsy Griffin <patsy@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man5/core.5: Update compression format for
 systemd-coredump
Message-ID: <afe7I-9z0AfuLmyQ@devuan>
References: <20260501190609.3604026-1-patsy@redhat.com>
 <eb5c6c20-48a3-46a9-9918-12beffb8e6bc@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4g3eeillwznjjgaw"
Content-Disposition: inline
In-Reply-To: <eb5c6c20-48a3-46a9-9918-12beffb8e6bc@redhat.com>
X-Rspamd-Queue-Id: 1FF004B7786
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5458-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]


--4g3eeillwznjjgaw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Patsy Griffin <patsy@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man5/core.5: Update compression format for
 systemd-coredump
Message-ID: <afe7I-9z0AfuLmyQ@devuan>
References: <20260501190609.3604026-1-patsy@redhat.com>
 <eb5c6c20-48a3-46a9-9918-12beffb8e6bc@redhat.com>
MIME-Version: 1.0
In-Reply-To: <eb5c6c20-48a3-46a9-9918-12beffb8e6bc@redhat.com>

Hi Patsy, Carlos,

On 2026-05-01T15:08:21-0400, Carlos O'Donell wrote:
> On 5/1/26 3:06 PM, Patsy Griffin wrote:
> > As of version 246, systemd-coredump defaults to zstd compression
> > for core dumps, rather than lz4.
> >=20
> > Signed-off-by: Patsy Griffin <patsy@redhat.com>
>=20
> LGTM.
>=20
> I thought coredump.conf allowed you to specify which compression format,
> but I was wrong, you can only turn it on or off. This looks correct and on
> my system all my coredumps are *.zst today. Best to update this to match
> latest deployments.
>=20
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>

Thanks!

>=20
> > ---
> >   man/man5/core.5 | 9 +++++++--
> >   1 file changed, 7 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/man/man5/core.5 b/man/man5/core.5
> > index 4da5819b6..83c49d42d 100644
> > --- a/man/man5/core.5
> > +++ b/man/man5/core.5
> > @@ -515,9 +515,14 @@ program:
> >   In this case, core dumps will be placed in the location configured for
> >   .BR systemd\-coredump (8),
> >   typically as
> > -.BR lz4 (1)
> > -compressed files in the directory
> > +.BR zstd (1)
> > +compressed files
> > +ending in ".zst"

I think this should be added to suffixes(7).

Also, I doubt the suffix should be documented here.  Is it an
uncommon suffix for zstd(1)-compressed files?  If it's the/a common
suffix, it should be enough to document it in suffixes(7) and say it's
zstd(1) here.


Have a lovely night!
Alex

> > +.\" Since Systemd 246:
> > +.\" commit ef5924aa313d1892bb491c870ba3c429454dfc76
> > +in the directory
> >   .IR /var/lib/systemd/coredump/ .
> > +Compression on or off is configurable via coredump.conf(5).
> >   One can list the core dumps that have been recorded by
> >   .BR systemd\-coredump (8)
> >   using
>=20
>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es>

--4g3eeillwznjjgaw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn3u+oACgkQ64mZXMKQ
wqlGnA/+Ii4Ry2GqyW7Hz+zzaijWhty7Qu7KlJkzRJUJYF/HTlQ4xBCx7hbWXXPe
bdVnxJDrKUGu2jSb596VSFNGxHj3pXtN4Slv6dqR96zO7nnCbke65h8MND4eViaB
GEa9V0LyP8HFn4qrEMCzKkXVMCEUzYbZ84G7Ji9ixLoAJHOWge986+xGo/6PEZQ8
VXBW5jxih8X90FKE9hK06/Vnop8up1C8KsYIJfVo7mcC7YuaIKpJD3GMwEAm/Mf2
IMclbkqhwCNLtnolFDFIj5iA4dExBIwKe9eqcYTlrFJioEuTCSYGcLw1eJQqHqbv
KY0cIgu/tXVfIIRayoqfJQuUsN4bkx7CcnsKK6f0ymtQHgJDIm90FJEMcFfVRkt9
rpUfCrz7QcEfECtT4H+5kzH2rSt4H3mGotw9aPUsb1LXkcf+TlfH5ng3MMnfoIPe
ntsUi1+ceDfIZTJce4OybLISsRrl+kX3PLAj/wCIqVPTGs286sAQ0Cx+9H6I3YYS
zQb5XayGMFQ8edUG9/ievhEQypwcAUQJWdmqTKgcrg9qUF7wQ60PDEhkUJr53eOI
6lEJC76z2uwfCKqpeZ8c2OkLMHklVau5wahNkH2CV775wG93znwjXSPKJc4jMxsC
g+0JiVJvWIY0aKCo3dcR1zf7GnFPmy04jEPpXsd7xeqQohoqhFI=
=KI+F
-----END PGP SIGNATURE-----

--4g3eeillwznjjgaw--

