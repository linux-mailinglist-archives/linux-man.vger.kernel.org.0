Return-Path: <linux-man+bounces-4178-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A6EBEE84F
	for <lists+linux-man@lfdr.de>; Sun, 19 Oct 2025 17:12:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 76D21349EA9
	for <lists+linux-man@lfdr.de>; Sun, 19 Oct 2025 15:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 440932E8B93;
	Sun, 19 Oct 2025 15:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Jv4M+AfC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF452D46D6
	for <linux-man@vger.kernel.org>; Sun, 19 Oct 2025 15:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760886766; cv=none; b=BLx5ZZxiGYTeMqd+90F/BZnXigQsn2TYCvYVh93zN2r4xknrIwSTV3FlJ69fJqS0WIFWR0cPAWvGfcG0EJc4+d5w9SP38olge+Vzw3Akmq2Mb7DOktBDMEAqopn/Hh6kfyVHpans+kMh36NKbtZan6ZtXjehe5OQ28nQxpuxzVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760886766; c=relaxed/simple;
	bh=0qmJFAvQZbcwOk04a6hROMg0NsV37Z55WBIcztZQ9zU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AP/SyI6Tm1hOgipHPT4jPfA3nG4LeuXCVCiSVcdIo5jJFK8NEcH65E6z4mUrwvPCkjjQQVCWZHRl1zyGn0pbT9E5yTngln4pm9yDiHuYsaavtmadDOpqBLbCD3ceDGW2Y3tpFPGiey0uZYBLNJuC73CJ+gpqEm9M7H6SUYMRXYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Jv4M+AfC; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1760886453;
	bh=i723+aEeeR9PVo2+7KUrgybnjYp0BFmPB6ikjZMoo00=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Jv4M+AfCVJkHSa3tCNGgRMSxvEtVOcoPtJqtzKO1ZIJrriTzdwHWn17y/tXlenKf3
	 JOUYxPP/kLcXWrFpE9IxqI9XRu+ImtZEWO0U7/067HeSwh3GgKXNnfBHfncirKe+Qp
	 BUUXZ6DXIPvammwcIHSBgWggEm44ThW+VoRccsG2NMZLGtLmTTQA8M1Sk1AIRJKO0z
	 Z42QeBaqlA56S+lGrDpCTUPWpeN8EyOUXibl7yfffqPQG5rlP1+ZJi/iu7qhvF/buX
	 f+Ym11qtMdMwxjqjx4SMfxRozbUlZuFpuLO0Yi4haF2k1oK1gq/L/1g1bAwC5QYYXy
	 zzh3ebY5slWhQ==
Original-Subject: Re: Issue in man page sprof.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200CB.0000000068F4FEB5.00085438; Sun, 19 Oct 2025 15:07:33 +0000
Date: Sun, 19 Oct 2025 15:07:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sprof.1
Message-ID: <aPT-tcGshLcplRsB@meinfjell.helgefjelltest.de>
References: <aKsmQcxdqf4EnO5i@meinfjell.helgefjelltest.de>
 <ng3ohykyqc5cpglpviqh7hekvdltyrnpf54pfaqlg6hevkclfu@qjywntzohfxn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-545848-1760886453-0001-2"
Content-Disposition: inline
In-Reply-To: <ng3ohykyqc5cpglpviqh7hekvdltyrnpf54pfaqlg6hevkclfu@qjywntzohfxn>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-545848-1760886453-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Mon, Sep 01, 2025 at 03:43:58PM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:33PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: As=
sertion `_dl_debug_update (args.nsid)->r_state =3D=3D RT_CONSISTENT' failed!
>=20
> Could you please clarify this report?  Is this something libc-help@
> should be aware of?

I followed the version in Trixie stept by step, now this error is
gone, but the output in=20
$ sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile

is different:
Flat profile:

Each sample counts as 0,01 seconds.
  %   cumulative   self              self     total
 time   seconds   seconds    calls  us/call  us/call  name

Also for the following commands, no numbers are shown, also no=20
lines with <UNKNOWN>.

I'll leave this up to you how to handle this, for me this is now
closed, I was just curios since I'm not a C programmer.

Greetings

           Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-545848-1760886453-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmj0/rIACgkQQbqlJmgq
5nDF3g//ZSeCrBiZh+OStcYzh/wa77AnHFeylQLTbRqeQIT+FrQl+nbz0ZvBfhqT
6ZGnVTixFUWR2WT/d1eTELSuplFNFwM0lGCU1CGf6FBtMHHRB1NdO2bciM81Bs4R
oUmcXnfz8WuPjCKJOvq9PfHvmg3cyR/Wk9FPbj9wqSMd5G2c1YvHIL/k+vFUDHQw
g3l61DXMVIz98n+PHzJhcZLLy2QmCi3pvHvk+W3iqLH7z75aGOYMXC5XcreskGJy
/YZaPDApga6sF8NVdpSBRh95QizD2Anrzfuxi+qGqTEaNk+EcuZQWVMb8UyIHcBM
iFkTnnx1JZ0S269XH/vIOJLope4K+xqcMoB7IWJY0N77+FQd+LlyLqNncQfkURbp
8e3sgP2qTNqqlD8Tenhri35YuEmYecohvC6nK/SCmgVlNHyHvVbAiO8Im4dRwTtr
stPvsxpGobpaNbKt2GaUoLOqY9Jx4TMGt6tb2Zlc/SSoLGsLGy3e2/W0BslyfltH
y9GeP2Laiz0k2okMRDPvIAEwDUDRCDg6Ctgu+5I/9yinyQ0Z43eSU/MFnDX7cb5I
DrAL2GFth8Tx8ij9gT8qU+jDYKcZSWS7aOdv9C2xj1ucwgKbk6T4Ce3IWmL274zJ
hU1D/Qz0FFnMQwgMYgO5vhGYY9dbI16I8f5ObqSE94MPklfvdtQ=
=1Z4T
-----END PGP SIGNATURE-----

--=_meinfjell-545848-1760886453-0001-2--

