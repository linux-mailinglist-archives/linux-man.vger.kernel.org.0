Return-Path: <linux-man+bounces-4572-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ECCCDE536
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 05:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54F173007FF2
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 04:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E90518787A;
	Fri, 26 Dec 2025 04:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="gh2KS4ym"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EBF146A66
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 04:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766724894; cv=none; b=Zdptnn0LRERosxauofOuhjHb8BqqJumer+/fM8BpNifunEuXOFkv3ld57hbaH4xbXBoPfkl20dPHfRbuITQC5xC02xMNEidd7WXbrpWIV0Ch7+38q2CAFgxJRlScjE9kTZ+JPz2MzuIdxG86flrd4h7bwUZvjV+WGZeF2myCsvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766724894; c=relaxed/simple;
	bh=nViXTXhle2YKOuPIs9qOjF6Rx34xrnjSQBW4VcXbogk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DzVC2kkqsajj6VKd8w9KvZzPFj/mvodml/IumsRwfmB3HTYnEf94NPq9jZ9JHtNj3LH7RmYTX4m14Z18MfTaxOsjbJ/Ap81GLDsEMwIZzjJA8kvDk/KhMT/TUCHEN7hPOwSZ0j4vwY3GpzzVVlupkxQ7VHRMMZffLVQKI3onNXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=gh2KS4ym; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766724890;
	bh=AvuiAuqRVkFDAH3iZMnp5er2AM6aAtxWdVFYYe7Tdvg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gh2KS4ymGatHJYlB4ubzPc5dZRXYLfJh1S0ri5zjUzn6jPP2un39hIRU9m1QX90k3
	 iaiknZVUeakBu7D+g8rK7X0ugEDZJR///HioxySUZMeymJpfD6wQyb9B1tj8apM3MI
	 cApfBKHlJvDhMpfH/ictfV537d4alWp9mAV20G+UpJoerWsKSxBApwZQ5SK8zujKUd
	 zHWngD1vtFg9mI6XhLvkVeak1Ks9p7EqRVBCTbSNRmH3p6nPNTDIb49s/D/UiuKBng
	 che9nn9eZnZKpIUlgEakjt3p1wn9QIiJ6BIWLp8/dEf9SAMcRsiJnnBZRwRwSbr2yn
	 BOT4u65gLaoqw==
Original-Subject: Re: Issue in man page  __riscv_flush_icache.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D3.00000000694E151A.00001AFA; Fri, 26 Dec 2025 04:54:50 +0000
Date: Fri, 26 Dec 2025 04:54:50 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  __riscv_flush_icache.3
Message-ID: <aU4VGitTZacSjEht@meinfjell.helgefjelltest.de>
References: <aUv64AqCY2_fdHAj@meinfjell.helgefjelltest.de>
 <aU09SWMTQHSh25gP@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-6906-1766724890-0001-2"
Content-Disposition: inline
In-Reply-To: <aU09SWMTQHSh25gP@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-6906-1766724890-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Thu, Dec 25, 2025 at 02:34:48PM +0100 schrieb Alejandro Colomar:
> On Wed, Dec 24, 2025 at 02:38:24PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:     flag bits =E2=86=92 I<flag> bits
>=20
> The parameter is 'flags', not 'flag'.  Thus, 'flag' can only be the
> English word, and thus not be in italics.  The text is correct.


> > "The I<flags> argument controls the extent of this ordering, with the d=
efault "
> > "behavior (a I<flags> value of 0)  being to enforce the fence on all th=
reads "
> > "in the current process.  Setting the B<SYS_RISCV_FLUSH_ICACHE_LOCAL> b=
it "
> > "allows users to indicate that enforcing ordering on only the current t=
hread "
> > "is necessary.  All other flag bits are reserved."

So this is not referring to the variable <flags>?

(Yes, I forgot to add the "s" myself).

If it does refer to this variable you might resolve this by rewording:

All other bits stored in the argument I<flags> are reserved.

Btw. in the German translations team there used to be some discussions
if you could switch (add/remove) a genetiv or plural "s" to suite the
the grammar.

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-6906-1766724890-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlOFRoACgkQQbqlJmgq
5nAvWA/+MOQwf2AEK1VwFY95jcqjWIH//l37vol3E/fJmiaX7luo+NFD21Jriz59
4CYobpPP59HbLkS1PSn7uZy+rM5laGgNBFjr5PWN4lPOSKjSO2cNPw+/rly6lqTb
GPujASkEEYo7hRlNy8bi/E7CuI0739QG4ZTBN6CARTjvzC7hLsq+m/jWteGfHh5U
f7sW2nOI64AdR7ICmLru5y/1uKw7wGp7h00ixYnT9bgE+06l1UIGuC51SVGmwNyB
9et67AKE7NyTJoJ4F74Jr4lp7ZhcdyFrlbEYL256xdxUDRPNVrXk//VSVuVdjWNJ
7OeHSTOxtva2h12373HjlL0B4jqVMYhUd4vvfPOE++NsTAUG6KliXZmOrumYmqqR
/2oVomDxpLcrYwGuJCNmnzUgMm1y1FPuXi7uCeFYrqA5L3rZrGIt/ECawWNBemNd
HvI6rV/6KBRjidevI3C+9iDmCeCAKy+jpH6A9L3MlcRCxGUHCk8inXOUU989jwMF
DOk6UnT9LhRh29y3P3TNZDxlYycEgmryPj35AI43kXi7AKeBRhna84FmL/s75bSA
zHTBVsFnJ/qSyBpSc2JRZSp9sv6Dq6mkDwcqicKN/ilNeP5281PqTMF++mvD8ch8
rWZq8A4ylIc26U8PyX3GdtwSk/PfldSSCZMwuxJRCzxFX+8Crf8=
=gK5l
-----END PGP SIGNATURE-----

--=_meinfjell-6906-1766724890-0001-2--

