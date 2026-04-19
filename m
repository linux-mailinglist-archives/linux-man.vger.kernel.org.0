Return-Path: <linux-man+bounces-5344-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKO4Ol575GlEVwEAu9opvQ
	(envelope-from <linux-man+bounces-5344-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 08:51:10 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D386423458
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 08:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5512A30066BA
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2026 06:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D58D2D46C0;
	Sun, 19 Apr 2026 06:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ol5DL8Od"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014B6288530
	for <linux-man@vger.kernel.org>; Sun, 19 Apr 2026 06:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776581468; cv=none; b=OMIJe0p01ikjz1edgPQpdVOrGMzowUZ7VB5uIx0IcJB0yaC6mP5N6/OwotHJ7M+lVLaj0p44DjfBwlr2a8+9Z4zMwPH6bOz5rX452pBuh7eD9tGr4WKJ5OpIHiFCIf2uqUCtu9ARVn3ATTQZNOnboo3BwSP9FlKkxW41nVD8N7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776581468; c=relaxed/simple;
	bh=CUI3VZCCniWE7sxEVcnlxuSHydvsCb+DXwgS7IVQ0sE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uf7+L3xBbyTSTVV99bLzbIDhe/afhu3F1UmVnKp6TG4uEFnxHnfB7iBc2vj80cDprsxUNyFobwGhsWNVsIe94SdsdJDajSuhlQMG+BZwvnGvxrobGA/vzhEke7gAQtRMnT2hxjs3NaVabHfu1PZW6o8Dlf2n6zpqzrQKbcyUhF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ol5DL8Od; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C4E1C2BCAF;
	Sun, 19 Apr 2026 06:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776581467;
	bh=CUI3VZCCniWE7sxEVcnlxuSHydvsCb+DXwgS7IVQ0sE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ol5DL8OdvYupLfqGmyVUEWDzfSRUnRAwdaBSggMH0OCcOMvbfJub6txtJxwCiUmDX
	 eG1lS3era2NskajA3WJ76tC2KLpbuy4zNIZ8Yvf2e52byMGunleUX5NvdvPBnKeEv1
	 gpGbAXFL/ho5Aqzy6CxleLCj9E+P5/4cnG78K/COWqzCs38iMTX140wkmumuWA07th
	 2f0FGPDOKfJxcm4Ug8KmJ8J5yQfCihTjlnaAH+1RdgGqb51dj6C0rMHuIf/ecBktIn
	 qbvqJtq9pjXvGW9K/7Uxa2Or+RUq8IVyhBMPfkJH3T6txqGiagLaqLwqyU3pwWeTYX
	 jAIKEfj+ICh4w==
Date: Sun, 19 Apr 2026 08:51:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Colin Watson <cjwatson@debian.org>, Russ Allbery <rra@debian.org>
Cc: debian-policy@lists.debian.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, linux-man@vger.kernel.org, 
	Helge Kreutzmann <debian@helgefjell.de>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: Stop compressing manual pages
Message-ID: <aeR7MzmSQHRHLK2q@devuan>
References: <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aU0WjfHED1esOwPy@devuan>
 <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>
 <aU1D0aL00gy1V-NX@devuan>
 <87ms364c05.fsf@hope.eyrie.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3fsu3xzvpf52kcko"
Content-Disposition: inline
In-Reply-To: <87ms364c05.fsf@hope.eyrie.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5344-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 6D386423458
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--3fsu3xzvpf52kcko
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Colin Watson <cjwatson@debian.org>, Russ Allbery <rra@debian.org>
Cc: debian-policy@lists.debian.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, linux-man@vger.kernel.org, 
	Helge Kreutzmann <debian@helgefjell.de>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: Stop compressing manual pages
Message-ID: <aeR7MzmSQHRHLK2q@devuan>
References: <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aUzUvdZEJpDHb3QX@meinfjell.helgefjelltest.de>
 <aU0WjfHED1esOwPy@devuan>
 <fec615b5-af5b-46cd-ae09-d9343db6da77@debian.org>
 <aU1D0aL00gy1V-NX@devuan>
 <87ms364c05.fsf@hope.eyrie.org>
MIME-Version: 1.0
In-Reply-To: <87ms364c05.fsf@hope.eyrie.org>

Hi Colin,

On 2025-12-25T11:06:34-0800, Russ Allbery wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > On Thu, Dec 25, 2025 at 02:47:33PM +0100, Dr. Tobias Quathamer wrote:
> >> Am 25.12.25 um 12:20 schrieb Alejandro Colomar:
>=20
> >>> Indeed, compressed manual pages are a pain to work with.  You can't u=
se
> >>> regular Unix tools to work with them.  With uncompressed manual pages,
> >>> You can go to /usr/share/man, and run a pipe of programs to do a comp=
lex
> >>> search.  With tools like zgrep(1) and zcat(1), you can do some stuff,
> >>> but not everything.
>=20
> [...]
>=20
> >> thanks for your bug report and the provided statistics. I haven't thou=
ght
> >> about this up until now, because it violates Debian Policy. Quoting fr=
om
> >> Section 12.1
> >> (https://www.debian.org/doc/debian-policy/ch-docs.html#manual-pages):
> >>=20
> >> "Manual pages should be installed compressed using gzip -9."
>=20
> [...]
>=20
> > Yup, I'd like that policy to change.  I've added debian-policy@ to this
> > mail (and also linux-man@).
>=20
> Colin, do you have an opinion on this as the man-db maintainer? The
> software you maintain is probably the primary consumer by a significant
> margin of the installed manual pages.

Ping.


Have a lovely day!
Alex

>=20
> The rationale in Debian for compressing documentation in general is for
> embedded systems and other small installations, and it applies to just
> about anything that can be safely compressed (manual pages are only one
> example). But this rule also predates such facilities as the nodoc build
> profile, and is several decades old and thus predates the growth in
> storage size even in small embedded environments that has significantly
> outpaced the size of text-adjacent documents. I would definitely want to
> get feedback from embedded folks before changing this rule, but at least
> at first glance it sounds like a reasonable request worth considering.
>=20
> --=20
> Russ Allbery (rra@debian.org)              <https://www.eyrie.org/~eagle/>

--=20
<https://www.alejandro-colomar.es>

--3fsu3xzvpf52kcko
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnke1cACgkQ64mZXMKQ
wqniXxAAvU17Ca0tk5wGwBuGxTrIe1aiJslm4EXqb0PKipUF804DMiZbsV2Xd70b
kKbzWXUYr1DqvckHrbFoytTuJ7BVON4ks/5G/37x5Pe3TDsDJra0t2ijaKCXVvaz
AtNhVVK2cUPTKl6TmlcCDb/LYEbqZD1aa99JMzZXPtEQS4CloEFUn36AbUDaerfS
TKwh5BFN3Jp1Gx2PI4/UV//s5ov/w998G2HQyWvgrGH+ZqpMlFDGKzzpSbIk3nFw
maRMxuvfbP8r1hQDSxDWbuEX/4o2jWwlrbjcpWo6aYIWizt2EcjgjKhiKgJ+4vyJ
nlhldLzYZC8bNGGQEm+B5U21ZhkwsZV5zUKe6sOqavDxNwqNX+XzFuiUM6GX0rUj
7g49cVe2NJHC1eELQTyICWN/n+qPK8O5fkDfVkiZ+kvIr1kBREEbzJfcX1O2ZGQs
hwE2+wVCl9GGSMNgwbKVtrXEB13aMzD8cO4aAgYTqxYYewRSQx+Ti6RPSTTp2fD7
VfQJ7rG1jZ+/XbmvS7vrtwxOc2UkzKJsfbl+Jj6zygD8FriCKh9ejHGOYhqJZXxY
k5WaDA1UXWZunr4DIH/6ZZ8wmeGbVnaQJqO2ZWy0IKuiW2T8pQOY3V31rvCE/+Pt
d7+zb8RHa5SebjiwxAvoQIq/7nNUn+M8qQxhF/pULhHC9vPE5co=
=+nYt
-----END PGP SIGNATURE-----

--3fsu3xzvpf52kcko--

