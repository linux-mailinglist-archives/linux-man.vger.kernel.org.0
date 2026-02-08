Return-Path: <linux-man+bounces-5058-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEi/HH/UiGmhwwQAu9opvQ
	(envelope-from <linux-man+bounces-5058-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 19:22:55 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ACD109DF0
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 19:22:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D6B23009B2B
	for <lists+linux-man@lfdr.de>; Sun,  8 Feb 2026 18:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4840C2DE6E6;
	Sun,  8 Feb 2026 18:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="bwNsoh7u"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6BA1D7E5C
	for <linux-man@vger.kernel.org>; Sun,  8 Feb 2026 18:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770574972; cv=none; b=ubaMMP+vR5wSVAnhJdNdIeEWNdH9K05MxkpM3Xxctme0CWpIfapowm5Kza1+HQGjMOm7c9ZpeiffE5sxpEyVvl9lYyKgg8rBvQTjumDfWMc25ZQbu9a46sCL2ynbxtF01rPwKXu6+U8T2EhNmwZX+wokMAOVeEXfdS/4r8e+fJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770574972; c=relaxed/simple;
	bh=WygM14U/hmmbOc+saeHEudAf65sWOjZx8SkEH2wxYjQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s021tYkBYwnXlx9KkxY1j8/UAQVFABVyTxvtnfF4E2Pr5Hssd45GuGsxAztFqFeWXMOB4MgMuFo0P1hzWCanOfnDDHB2+BwVg5vj3B8hBNPeCcY1zdluZrcHG/lJyRBre0Jo3GzB/b/Aehg1dZ3zHKVi6UcO37eRiyulpbzWXDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=bwNsoh7u; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1770574970;
	bh=DF0+Y9ei/Oxk4h2lQyttrN3q435Cvmek22kBzeA71VU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bwNsoh7uee7MrPTdLswdfyYNLRMvrP/kZx3ES6gPWOdBXOAv2EUvbvS4llaW1flcT
	 omM25gR5EvLmuKxYFFX2co+XE3LmVxvDj4p/PbdqbDcToyjqOHiDxmGymIs1/+cC6b
	 qCrV2QnYnJXlM6WuUY7ceGpo8F42wJDlfWwp1jWCk7ur1J84NlKLwNv6Hwdiw27sGR
	 JSiKpLBjw4FMMSm/N1s+JXRHPTzgCgFGn/KfA/AL11PvrIRL/Huq1ku3wNnrwih0oh
	 7Q50mmDKWCvbwRv+KEXcPwQ8V0/T3pid/G5vvin1F996REwfl6XM4S1GzVn132fR2U
	 JKI644D1PDthA==
Original-Subject: Re: Issue in man page  sigaction.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
  libc-alpha@sourceware.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002004C.000000006988D479.0030A5D5; Sun, 08 Feb 2026 18:22:49 +0000
Date: Sun, 8 Feb 2026 18:22:49 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
  libc-alpha@sourceware.org
Subject: Re: Issue in man page  sigaction.2
Message-ID: <aYjUeaIfD5CRk4w3@meinfjell.helgefjelltest.de>
References: <aUv64Ecu6dwxcii9@meinfjell.helgefjelltest.de>
 <aU09001I8wO6AySD@devuan>
 <aYjJPiTfTR5I7DZL@meinfjell.helgefjelltest.de>
 <aYjQyPt5lrAe9CuE@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3188181-1770574969-0001-2"
Content-Disposition: inline
In-Reply-To: <aYjQyPt5lrAe9CuE@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[helgefjell.de:s=selector.helgefjell];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5058-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[helgefjell.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[helgefjell.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[debian@helgefjell.de,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,sourceware.org];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C6ACD109DF0
X-Rspamd-Action: no action

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3188181-1770574969-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Sun, Feb 08, 2026 at 07:11:07PM +0100 schrieb Alejandro Colomar:
> On 2026-02-08T17:34:54+0000, Helge Kreutzmann wrote:
> That should be enough.  Let me know if you need more help.  I've bounced
> the whole thread to you so that you have it in your mailbox; that will
> make it easier for you to reply.

OK, I'll reply there.

Greetings

          Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3188181-1770574969-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmmI1HYACgkQQbqlJmgq
5nDFQA/+Oj5GhBYfFmiK11SX3PCGzkOep76ld4fdn4FHgl4lOruH6M0G9hOhc05T
ldriFIGwuPYDybyATIYQ7SO2Fc9v6nKqeIvPPu+UlMHYARCcRcGdHR6oKIO1gH1q
pjlKD0g3peAur3ek4YPH2PopMDe8uKBePf6x4aql1EAHEO2ys7h7Q5VVtrW2uld8
sONNf/EwVHxyHSHtzuVmUgkt4xzqU3MvJfEUtmR6vtCfyRqHbLkIldjVZber0Ux6
W8hwz6g4iLNG+CA7OXh3HKe/JhSbETYxCyX/veXsXxK0KL+kqql4js6RBvJb4hhr
Jyp7vU6F9p9wP1LUY2xXnmiubBrMp0igv1UalIbcSCTp5FIZo/AEcsK3I6ZA+IVh
b36PuwruSJQC4BI/THnL537yFhGa/UzkTq3eZ3v64ZFDkIBwezZWZUe3TEOFOuIu
ESD+mNl/fN5AWTVN7DXp1mjo/cqHjdfU6tahsJNhBft07clD7wTryTiC8IWEAH88
UV4hazsDEFcWbfo+jNOZcpoK/73z2+e4eY3FZTFpKo+ikQI2SRRjediYL6cp9/uE
pSgNz7LNRhhIHB5TxdULzzXJSczeWZIAqlnIBoehCPCCgJueRih/CHA8wiK/rMZo
WsfJ7lh2oGp5eHCdWkRyCfJL45UPnmdDomKsvmF6SlPIdllbUgA=
=wS8H
-----END PGP SIGNATURE-----

--=_meinfjell-3188181-1770574969-0001-2--

