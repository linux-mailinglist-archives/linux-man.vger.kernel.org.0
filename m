Return-Path: <linux-man+bounces-3819-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BF4B3EC30
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:25:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E07D62062C0
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A9B306485;
	Mon,  1 Sep 2025 16:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="HmjOdrYG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD77224B1F
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756743935; cv=none; b=J90LnefAnzSH4Z3v341vKLaTYfBxQ9/t4TCI+NzXA1I5OkjyNddMPmi347a3cL1hfZbnVqmkBAEJEsaTXaXK8ig2usHEWKuReDCqMyIPJwjzE4mwClGidFpC5NC4MxNkW5F6D7Sp/qRF4JTFoXdMETRFLQRC0pTLonW2xOAT0+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756743935; c=relaxed/simple;
	bh=DS8O/9w4X3p5Lu5SqVPuwjN2zB76bKEucyTxvsdTyn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ip6wXfF+F1xNupmnf3S6+Y4E1USkiQ6MTnysFdSBkNGvLe1p8TgBFwyVbn+oJu+F+p3zrPTGCJ9MLXy5Bi73dce/UmurlgujGqLahQl6MysJpL2oB/An2J28x3dF+tf4lrkybStvzArlpEcVlDFgDVazYQ8PYe71O3sHwzLxpXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=HmjOdrYG; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756743931;
	bh=lvJeduPbZ1rIt3Lkm/tb207EuI11ONqAhr6ayJ16SPg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HmjOdrYG4kGYZUu204f32+p+pVauTFZxFnAihgbjyLYB1lPXHlzqjVFgU6qnQzGUB
	 t2cmgu1oMSWyBq9EfbPov+7fCE/oX7NdKeCEhRfKBgA/B11VGfNSXkd1A+VXUyhdY/
	 paSk3xH1xaWbatlPycO4TtfkUzjeuWhvOZGYYEBKvssVBP2Q+HMJF0jH2q1Cm2OXbq
	 3a27LEeDI5QYWRMCbg9i7mKj0plObEe2ImmcSOvYkseJu1LqKtjL71AGu5Fk9wd0X3
	 309bs2CjvaFzd1P33SFEfnBS+b6heLe9laZCBtWbRmAIcDOrfErcTbCSkWGRN1oR/X
	 WitL4iMg9B6Og==
Original-Subject: Re: Issue in man page sprof.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200F3.0000000068B5C8FB.00038455; Mon, 01 Sep 2025 16:25:31 +0000
Date: Mon, 1 Sep 2025 16:25:31 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sprof.1
Message-ID: <aLXI-wm2BCjKko05@meinfjell.helgefjelltest.de>
References: <aKsmQcxdqf4EnO5i@meinfjell.helgefjelltest.de>
 <ng3ohykyqc5cpglpviqh7hekvdltyrnpf54pfaqlg6hevkclfu@qjywntzohfxn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-230485-1756743931-0001-2"
Content-Disposition: inline
In-Reply-To: <ng3ohykyqc5cpglpviqh7hekvdltyrnpf54pfaqlg6hevkclfu@qjywntzohfxn>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-230485-1756743931-0001-2
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

When I tried this out 2023-12-26, I got this message in Debian
unstable when running this command (after all the previous ones). I
can retry this on the weekend in Debian Trixie, if this helps.

> Have a lovely day!
> Alex
>=20
> >=20
> > "$B< sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>;\n"
> > "Flat profile:\n"
> > "\\&\n"
> > "Each sample counts as 0.01 seconds.\n"
> > "  %   cumulative   self              self     total\n"
> > " time   seconds   seconds    calls  us/call  us/call  name\n"
> > " 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
> > " 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
> > "  0.00      0.10     0.00        1     0.00           x1\n"
> > "  0.00      0.10     0.00        1     0.00           x2\n"
> >=20
> > "$ B<sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>\n"
> > "Flat profile:\n"
> > "\\&\n"
> > "Each sample counts as 0.01 seconds.\n"
> > "  %   cumulative   self              self     total\n"
> > " time   seconds   seconds    calls  us/call  us/call  name\n"
> > " 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
> > " 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
> > "  0.00      0.10     0.00        1     0.00           x1\n"
> > "  0.00      0.10     0.00        1     0.00           x2\n"
>=20
> --=20
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-230485-1756743931-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmi1yPsACgkQQbqlJmgq
5nCNLg//alVI+zPm6lqKQQ/1ghsq4h9ufjRm66EgTd2/WsBd1NQw7fxSdF3dnbW8
lRBPzv5+bktmbAgofBeu8/wE+0pfryLoEww3Zl8G+MEo4gWwEjtKpyExTtnXbB2z
MgoWtbpQNiLiK367IGlSzbxzNJLgelLkYIGIGDgYxQF6Ril1MvFACea25tdbDNCZ
SrIsrIeucxi27wjy7IqXQ+Y+f/ANbrJcDpEhaE+8uxrmZ9bZNcrL7IxNIEu3rb6t
J7WPRBy3LmuO5aTlsocnE8r7hyRZcaTEHDXOoyekZ97XnS/trQD8jMj6iC02jkmM
xV2TyJmtANeTVsgCA9uCWTixHNn6BW7gqPl5ZCcWDnFoNch8nINWxQXHbxyBnVgn
acLf9A3BNBaz2l+qz8uuj8zqaqXvjA4CF4t1bwQyGpP2GLBWacNsIqxSndUUu+mW
WG6AZhq8dHWMurzcQWSABLFLkH+M4e6T1tFQVVt6UTsBdrW6TxiP/wnuMCXrIca+
uR+hf0IEnEdNYx3csWnULOX/HFT5YvRqyhRPx/rq2ynep0Gpd8//+cz4XwQgBxh6
1pKcHg5ETLRjY7Vjbl/uI2kssYuWbWAnq5G6UuJIGA/I4gCkCz7Ib2qlHdR1oNzV
1kG6WoyyOfnM8fS/xr3Fk5lK/QA3ccAU139+nb7RfG4IsmL+mfU=
=10z+
-----END PGP SIGNATURE-----

--=_meinfjell-230485-1756743931-0001-2--

