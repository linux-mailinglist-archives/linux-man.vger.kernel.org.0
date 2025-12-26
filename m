Return-Path: <linux-man+bounces-4573-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D17BCDE539
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 05:59:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47EA330088AA
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 04:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 853AE18787A;
	Fri, 26 Dec 2025 04:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="l5+qnINA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8ED91459FA
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 04:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766725186; cv=none; b=dVJDhMqBDzdjS0lwr2JfdAJxBRtWeD7RVuwDQ00W3/GnXSer/xgnHKAf3HXvj8KjT/Ao1vRNSUggF07h27iaw9At7CRcsbB3ZjQMlhOroCmpKKpp5q2dPzilWvdcRA1P5zEXVbYn7R1zpwH6HxKcZNDTPrJ6CNa5UKxkmSMZ/CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766725186; c=relaxed/simple;
	bh=SejqiZb0G98wPy5bloPHLpu0PPU7BqsMRwLQAsnOPt0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mz1pRrSiFtxnY7V9QKN+r9Bo3JM5MwxbTLDIadqr8033tBbLMt4TKV/bPUXaUIL/GvqWlvPA4YLql6ZRjdNhrJSEHo6y5LlxZ/h5k1CAOf44IjuBvu4FB6QjDaLsBVOR21/SAZH071G/gManx/iJjxbMiAdS0wxIEGDrKucAaP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=l5+qnINA; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766725182;
	bh=//Ip1eCGOx0WoZ3B1pPtIpLCenhSUc5wObQ2dp6ZWws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=l5+qnINARy1sWcBUaCMjgnRzzb7dyI23mpetcmJKLhIiyEgCibLr1OnXAFe2K6xUK
	 aRn3CbkZvHthqTgZ8H5hFH6eIsZsmRnm4RAD77bH7dwRsComeAKWH2lPsap3raxcW9
	 QWNj5S2aL5b4AudmWEk2gF8+gC8KkgIRWeQ6bLJrxA4GcTuZbB2yQAjvXOxlpFDPQ+
	 ytohtGn+jjMCjcU2y8nz8pxvTzerRrtli8MKwUA6PaSnWlUETRW+QD0QneSol8j8yQ
	 IH8jibef2jgAp/2WfE2lK7wsccL2sx4SvCOn5qZ24ejo5VGNye7j4cNq5aj0Gx6K7q
	 RjAoESthGqWlA==
Original-Subject: Re: your mail
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D3.00000000694E163E.00024556; Fri, 26 Dec 2025 04:59:42 +0000
Date: Fri, 26 Dec 2025 04:59:42 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: your mail
Message-ID: <aU4WPvRscIvTrzfS@meinfjell.helgefjelltest.de>
References: <aUv635HpEQKac8rI@meinfjell.helgefjelltest.de>
 <aU1AVrV5umYVs7CT@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-148822-1766725182-0001-2"
Content-Disposition: inline
In-Reply-To: <aU1AVrV5umYVs7CT@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-148822-1766725182-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Thu, Dec 25, 2025 at 02:48:13PM +0100 schrieb Alejandro Colomar:
> On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Man page: console_codes.4
> > Issue:    Why hard word wraps?
>=20
> This looks like an issue in the software that produces the files you're
> reading.  The hard word wraps are not present in the source code, and
> the manual page reads just fine when formatted.

Thanks. This would be po4a. I reported similar issues in the past,
however, po4a has not yet handled these reports[1].

Once this bugs is resolved, I can revisit if this has also resolved
this issue.

Greetings

        Helge

[1] https://bugs.debian.org/1115900

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-148822-1766725182-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlOFj4ACgkQQbqlJmgq
5nANAw//dNqnxGXfaca8w3xhCL5B83tiRmpwLTArpnQXMtf/5G6RoZBqUah6JuaC
0iSNhRNzLoE17o3JemobsZgdd103H5sTqh4m9DfFjTA87HyxgGtdco35kelqaco6
XMPrL4oSVkbLpuloFPuXBDfIU3Oock44P2pL9pF06B+5uBhHo5jhsUpdVIjZCVIa
oMGAV5GDJnmuXSL6Twp3pKNrsK7onErJ8xwhee6ms+6VGr8X6aW88UEeQMkWbLPP
v/vOwX1pZdVYY3Q/ae5SI85u5ybX/K04hTxJ1fHAek+dKFoKcg+EC2P1nkw9FdJy
p26Gq89QBkjN5BerHJwSjC3xSSa+5PwqMnqNg0RoRldq5QQDLdOf1aUSSHO+STd6
jlAUHNTF50DBXHoBhfbX0l3Jw/0SMghI3x1DzHTfWtMxaUzBg4s++z8gS8zkzUBj
jBYaD2uzNd5eSZNPebI6gdVYBGOGabyQzdLzZYNgLnfiI0/PmCpYtQ3NpgSDiJef
KmJpC51juJE7rC0B5PQI9jlAYeqcfTbaLG6yZYQgZOTXIBa7cNQhaEvOT/37bOeL
TVIBB54WNL0nVjyYqCdcLV+6hm/LpKfr5A4CU8l152O9mC1qlmoKYooYw1uQNX8j
gRwYPM+e21WhzEermWMY9sKxj1CC/tW6FJj039ZAE8N4XTnfJE0=
=l2r1
-----END PGP SIGNATURE-----

--=_meinfjell-148822-1766725182-0001-2--

