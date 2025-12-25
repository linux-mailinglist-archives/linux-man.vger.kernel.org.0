Return-Path: <linux-man+bounces-4534-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D53CDD672
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 08:12:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 41D4E30014D3
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 07:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 029BB2E5D17;
	Thu, 25 Dec 2025 07:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="CkZFUkS4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA3C2E543B
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 07:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766646710; cv=none; b=eRioLuh0udWBei6YoD/mPUMMp5WlHVpPWsU5ot+8KCXsRA80usF5RVZ9npA+oY+MpFdvpqNmFd0yMbLoc5js14HPUd1Ox7t83WvWRrq1PBJeIswIf8KhoqSOsRZlruaEdnQOCEzgvDXVQV1YQw0Q3+aYqiD0fP9xPSoArKk4bGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766646710; c=relaxed/simple;
	bh=yWD+U1yc/ij5LwfHQBIfPv+ExLKRXERKGZzmNvUgGVo=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=JPT+GrJJUuq3phFVmbkIiElbk4wDSLF1KbqlOx4ivuQcy1y4C7eRjHWL8sBIG+5cgEZ3IGc/55z9bFZENgOACyKcxUpg2YzgTvZgU71C/FZ9ySNl9Gp4p6WAiG6oJNjbTVRRuSYyMPV7YknzLDKra54ukeAGW1WAJ5dmAHHaSeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=CkZFUkS4; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766646706;
	bh=z/QuyiKSYEJB1/X+E/YQwVLRG44BMJ9CGCb8GV+nmL4=;
	h=Date:From:To:Cc:Subject;
	b=CkZFUkS47FgbK/7gRfiHKsLkeZBsAvGnqeLBAFbdGGdjdrJDev+3EodrVGUh+iAGA
	 r97ALD/DUVNYfRtqGJanaDEP3a6FQiirS+VXX9CoxMWP54q5mBmHTUFUHdXL+YFRGm
	 kIj3WmR23e8r/jwicKVwtrQEbgAM1vZB5xSAISoJoyngjSAgrvgmFVXDfHJElxMiRl
	 YkQwP/6CRHW+6tnL0qGw+aQW8dtvgnV98GbeOWTxw29MTpMLdJndkulWooHt2139Dr
	 1qw7sdxIfvYmeRFCH+2NDoDLU2r+LYqh0mKKPcawzDZOFjx38was7rpbtYx6D7BegN
	 rrS5L8eix27hg==
Original-Subject: Issue in man page  sysfs.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020010.00000000694CE3B2.0012CF38; Thu, 25 Dec 2025 07:11:46 +0000
Date: Thu, 25 Dec 2025 07:11:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  sysfs.5
Message-ID: <aUzjslUS92HiUBEI@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1232696-1766646706-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1232696-1766646706-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Without further ado, the following was found:

Issue:     The 2nd sentence is incomplete

"This directory contains one file for each module parameter, with each file=
 "
"containing the value of the corresponding parameter.  Some of these files "
"are writable, allowing the"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1232696-1766646706-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlM47IACgkQQbqlJmgq
5nDedBAAiwcoKBHsYQ5BstJ8rYHsZaCoWLbUmEpOoUm8r6VZF5LbUfmLqe64f6U7
rcM/Xf7WxcUEXCJssw2/M4UEaJ24UZ8ICJ6u5T89yJ3qAjop1ojNgmHSnFdCBbmj
IGbJkA4Mq3Ivvk1SZxpajKvuvw0xqZ8TEF+/SDM4fdwOYvwLTOqX7ysoZzO/sQCV
XhKi7h6BRivjmwcYIaAiHihN6Mz2Tl3xJBzS4TpuDXGBY9DGg8HdIt77Tpg0kYV6
JzOGxa6SDmbGOiF7SADskybhDnjFYrE7R4B4iCbx2TJ0njlmAegN4UojZ9RYhzew
16rGR8ulTwKWKBeqWkGSqX2wfxWRjLG+wFbjD0uePc04fuGZRW5t6dl3nBq3AFyS
dDHfFvfX0E9qjseYKRcK5fXsSLVI48i3YHUxGiBskcNxmoGtS7kHST6OnUa8mj0N
H6pbKGwvguJuo0y+cCCwgSRHOVG19Q3ZI1LiCSoAi2s85BYygBDsF1Gg0T4dRK+x
I84pd6gCIHgOReupFuf7wvthUCc1cGlckg4n3HVPaUtYDAGBVfpA/0gs5Rs3XZSY
KpB76jRIeZqYOXoHTFaZ6NJX95WELY4LYFYbdZGNLF8mLCJ7Q0Sw9+JuebaxRXDg
LcGf1vuUmL4PH+prWW1yDqFcLgU4kHcqIX64ViGzR7MAMC8RdUk=
=Ay0W
-----END PGP SIGNATURE-----

--=_meinfjell-1232696-1766646706-0001-2--

