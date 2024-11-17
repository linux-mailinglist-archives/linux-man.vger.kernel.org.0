Return-Path: <linux-man+bounces-2018-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEF59D046F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 548B0B21771
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 488211D88D5;
	Sun, 17 Nov 2024 15:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="R1ThrAS8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02828831
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731856259; cv=none; b=Y4tDi6RU8SSlsowxqWo81s/DYlQSuH8E6oFVZB0dQQlw8Xy2g7Fx02Td2FDwNJkfi+wVfEYfbAIXBbe70sFHAaQCdJTEM1MMtiF3XbU8P0r1tSO8eQPlRP2sz6qDFUfHMGBroZ+OJElr0895IiYJItAmdOZRESnVreqqNGp61YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731856259; c=relaxed/simple;
	bh=+Bp8VV5eRdIpg8qZpJPV/A7ssmKZkFhg/GkNTudtVzg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jvVzpnUx/kKJW1Zf6oWNO9oi5RGHOs8CJMowGVD04w9WPm+wIOXlmMnLInI944Q7IZe/ilMAcf0RCc/ZiO74HCsM6SjsyNuqEWqPP87HFSH/0IqSp8wexQJJ/CiQS4uS+Wq8S0BFeWxgOD9pTm9Gr1DeByabYJzOPZT3YV9Z+94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=R1ThrAS8; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731856255;
	bh=Uf5TZ6ahpm3o+knX+Z9kWeBzr7o51NH36EH60kLqsw8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=R1ThrAS8JIemVuePBbiSZuA02LI5oMn5VK64jTeHBpsxHg9A2BlBH4zhJ6izC00++
	 tm3ph1MQOdV2sp7bs1Lh3nC+ZMtkpXYjl9W99hY54ruxe6KD1suJLjgvlDzN0WekCy
	 4YY4jzyd/gVPoKSDHoJbJDi/mSw2QgVwg638W1k23Rm1WK7beFgTRiikCclTESf5u2
	 Qyg+joWAVobsCOVbarfjga1jsoaHpwSaVUHVqX+/Txrpyd0SANMgd+s/oL0gzyvEJo
	 mu/OIoBAWNmknG9z1ArL/cYN1jFgDOxFzFqu+vYzwC/hX4SZ9tIXq6BhXOmVYUINge
	 JU55NsDbeobSA==
Original-Subject: Re: Issue in man page timer_getoverrun.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D0.00000000673A077F.003FF2C7; Sun, 17 Nov 2024 15:10:55 +0000
Date: Sun, 17 Nov 2024 15:10:55 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page timer_getoverrun.2
Message-ID: <ZzoHfzyLXhWBm4Sx@meinfjell.helgefjelltest.de>
References: <ZznJgdwbPPt5Xcze@meinfjell.helgefjelltest.de>
 <3mmexyslcnqlhst7fzbandupshugop5hhfbhi677w7genje6uf@nlfkyyivhhxr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4190919-1731856255-0001-2"
Content-Disposition: inline
In-Reply-To: <3mmexyslcnqlhst7fzbandupshugop5hhfbhi677w7genje6uf@nlfkyyivhhxr>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4190919-1731856255-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 03:58:17PM +0100 schrieb Alejandro Colomar:
> Hi Helge,
>=20
> On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Wording o.k.? "=E2=80=A6 integer, the counter cycles, startin=
g =E2=80=A6
>=20
> It's correct.  cycles here is a verb, not a plural noun.  It means that
> it advances a cycle (doing a +1, overflows).

Ah, I understand. I fixed the translation as well. No action on your
side needed.

Thanks for the explanation.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4190919-1731856255-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc6B38ACgkQQbqlJmgq
5nBf0Q/+M1yTFgD74wwkqaSh5HKFrMNzW0wcX/7R+zID58Chk64dUS7a0caapTb7
iwSfrrfp7B5wvU+u8kY2VBWR+xiTEfXee0kITTECbxgO95w79sQUmJLRKlxCCSPm
7+kPeuErOMHS6EVO0OobBuF8FmBiWcVJb1IDcv3ganpQI9TtnleiK2oh6Zn8z7S7
lvUOAe4YtRIUCCqPCcs4a3tBG/LwStBIyuKCFq4M2IFDKegBKIHymlXm2KRGMyYF
xTrptizZ00ulzJi0EHm3BxJGA3DcinUfD+RZrHB5l+z/W/ytxe9uZPx7ZpAPNaWY
9W3kRydZi5E/r1Km6yJFiQWU74otG73JUhJVCAyK3mxhMD3jyGvuNzslOKL8jHYF
m1VB77NFJ0bl4Iyzoh79TAai0XGyFm77wOKLiIPwo6nMGX5VGZNH8HYOPBFYMDrM
xZkrxRai21yDc4CJHPm+JmoT8b+QJrRFcIVlhTFeImCR2b6KK3FtSfRPSU+4Pl31
zYay8S5MK+D6zOkMyRlc2i7aGgpaoViTLJZ7CLxxj3OzbHVRk/YyJ+m6CO74GsnU
p3a1kbNJWb8f/NzRAiQ2WMhjNu2FYuLDYsgt7KaEhZ7xYfAZ1bTSFQudZv/z5cCi
0d7gDeukfr4lrM0G7nHMjAhbBvECodngrSpc1+WhCwstKzKEY64=
=wjT/
-----END PGP SIGNATURE-----

--=_meinfjell-4190919-1731856255-0001-2--

