Return-Path: <linux-man+bounces-3724-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D95B34AD7
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 21:21:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A09F53A3C3E
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 19:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4BE1255F39;
	Mon, 25 Aug 2025 19:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="nEA2PMqC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22CF1E32DB
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 19:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756149670; cv=none; b=plOUOjoKQt64WGST7tPFuX0KfPYa5Pc975lWR3sBWu2rpWPFY6phWakwl5AAfWjCYDcHjc7AwL+u96G+U2cuzWKL6PkOm0vcZXjL1LCWvhXJQ6hfIXa1aOp4uzr4TVqF5+9sKruWZvA/GXZrNVKvgItnOAqG4bHqjOR8KpLqkbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756149670; c=relaxed/simple;
	bh=b/BdrMROyO5UaQ9ux3FtnNWyggbaqENGZBX9Kc49keg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WAD9dPqOLdNNoH0gYyQTunYRq8h7hPXpd1MwEmOIP8TW/6twHG68IQg6b1uKdHi8aOLbAP6/SckrGUU+wjqOiD64JR8KIiZBryy769hEXd4PdWNZZ5OL/J19wI9u7Xpzs6jDRBy87YNScHO8n6dM0FZ11rdxNELOLGoNBco07zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=nEA2PMqC; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756149665;
	bh=qkWFjC5ifo+iiz2h6hDVyH7hYgSYrKDuvXBLqOhsYRM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nEA2PMqCZZS8EXDds9PrPSzcMAprQe5Dvgp3M1rYV6+ijxfvj9KmDUrGX0q3+hsh+
	 DaCywQzz9AGW6QQUpg3Ywh310O3ovEuVZJJiDG/kYliVhBTMSo2+MKyOw5S4AWE7V+
	 XZUge9l+VUsqU8Hl0fUPrisFg8h+V/hF7/h1o0mjo8/2ByXnUWjjZqWXVxNCAuNKp4
	 EvAtwbhSnJlxhsH/8kGDZpEwnYv03Mpep7OA2Hj3g9FfX0L1sJIzUTldDk9Qu7Ye0a
	 BN3sTpvWC/WEEPw/H9oVoDJ8SLYqJU2sduor23V7usRgTdQjDWzfXw2VCJLo37cAPL
	 J0wOxfNNKIvOw==
Original-Subject: Re: Issue in man page pathname.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
  groff@gnu.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020010.0000000068ACB7A1.003207E0; Mon, 25 Aug 2025 19:21:05 +0000
Date: Mon, 25 Aug 2025 19:21:05 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
  groff@gnu.org
Subject: Re: Issue in man page pathname.7
Message-ID: <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-3278816-1756149665-0001-2"
Content-Disposition: inline
In-Reply-To: <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-3278816-1756149665-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Mon, Aug 25, 2025 at 08:57:22PM +0200 schrieb Alejandro Colomar:
> On Mon, Aug 25, 2025 at 04:17:32PM +0000, Helge Kreutzmann wrote:
> > Am Sun, Aug 24, 2025 at 10:04:04PM +0200 schrieb Alejandro Colomar:
> > > On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    The URL is invalid
> > > >=20
> > > > "For maximum interoperability, programs and users should also limit=
 the "
> > > > "characters that they use for their own pathnames to characters in =
the POSIX "
> > > > "E<.UR https://pubs.opengroup.org/\\:onlinepubs/\\:9799919799/\\:ba=
sedefs/"
> > > > "\\:V1_chap03.html#tag_03_265> Portable Filename Character Set E<.U=
E .>"
> > >=20
> > > Hi Helge,
> > >=20
> > > That URI has '\\:' in it, which is correct in roff(7) (and in man(7))
> > > source code.  That is removed by troff(1) when formatting the page.
> > > If you read the formatted page that's not there.
> >=20
> > Yes, then no URL is there :))
>=20
> Hmmm, that depends on your terminal.  If there's no URL or hyperlink,
> this might be an issue in either the terminal or groff(1).

I use the Linux console.

Greetings

            Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-3278816-1756149665-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmist58ACgkQQbqlJmgq
5nA31A/+KXDHyoXcEA56Kvkrh2TQDo51Q5/5ClikHqFM317/ve7wjOXPUyZZGBe/
FMTPG24GZs8PF+cPf7JcxIEvuAkS8KsxMGqGwb12yx3nnAi/QFUF6zn2MQw44mmS
S0b4ipzVcuAKe1WsupT+wa1BRkS39ZjxO4PVgDgQiUIUnUQbd6usoAABsPjJo3L0
WFtv6K6oHRpxZF9pKR5yqGxoIVB8EdETkwvqGfEq2Dj8Xip38Qcl76JrCYMdmwzp
LAvGdD8yECgIdZz6Jm+tHw3L0O3l7bB2aS/9TT+U5GoHxHXQhXMXpmKGxySAofOd
ClqMBlVKM1lwRNbKye+AKzfwEE5lbKZHP5/aD+HPNW65xOQSfRyBbW2FK9PILtek
BjeSOtS6OmK8FRjudjQgzDJHw5r0ZResMWSgYOKKfAsvYpFl41rmR/RNcrwlJ1uw
0At/xUXs3BW1jCzhwz+EX2b7CqhVXgsyW74sXd8gLU0sFxcM/0zzgDbE1A0VetSM
pclmkSWhWYcQ7Day8oT7biXrGXkiYSpCMP6ONxhcxGTO8Sn3+9DFTgwGJ4EUP8qB
qP+LqvRqKDlhy+c+a0kRv8oPZHl4WOoZQXcdES1yqmsn+QKJv2JIuyj9OPjhbm8z
zjGSeNtBaoTgYxig2IDdPPhgybHGqe840Th5RHinWqDvq4Y+ZxA=
=fBQ7
-----END PGP SIGNATURE-----

--=_meinfjell-3278816-1756149665-0001-2--

