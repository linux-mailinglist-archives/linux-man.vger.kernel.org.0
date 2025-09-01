Return-Path: <linux-man+bounces-3816-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDB3B3EC0A
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:16:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5734944248E
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:16:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF0F1212545;
	Mon,  1 Sep 2025 16:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="iQEqyTBQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C1E32F76D
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 16:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756743358; cv=none; b=YLZyRfYIZ5mY+kLYNb1HYpUiwR7RYDjA8m91eW68Q31tjlQedNrqAUC+uc4zb1JSEtK0ltWjb/TWRMDZS71qMGo9fnMNw5/AMzvPB38Dr3ZzisWYMiLn+4QAvoCIYnTvKWascijpklf02JpZ1dQ61Q92TPCT5Ueyb+Kg8vyRvt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756743358; c=relaxed/simple;
	bh=YOUtquHFIqxu531C3bRX8/TIl4Mb1GtcxtrlLuU+nME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wf6Sg2RrXcaGyEXNIHlWkTp25J61VljMD1jCe/7SwuM9087ALgC4/OqdRwT0ojQYeYzzr5gHDplHRABmhrxySV6j/wgKHMGRzVpXhyvdazgPJ6ik6uum8XpXcgJJa2LA/blTFQOe3ry84a09VHahII6m9KNib4LEM6M3XwRlKEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=iQEqyTBQ; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756743355;
	bh=QGUQAci4hJ5HOXZNN+3rH0uRKs3U6ESEU0apnr5oUhg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iQEqyTBQ3dR8fZCiqC/KttqxfuPf6fEhnAnwNjM9hjvHajFo67++8H2ZAt/bboDdH
	 w8VhbW2XvO0oLbG7loDzo106XXl8jFgL8UDSmW5P+iFLZ7VfYimuhhhvPpxPqM0pge
	 7/8j1InsIkZlcmDLgneC7BccmmqsWna/WrgqPxE8htMpzW1XHUocZIGKcZmyCvgD/g
	 6i4XWQY0clxrn0+SfQhZDlLPwztro49fbD1uBYjdewyuMXxPJQ9WITfXc7RrISaWSq
	 XD4Pj4vFo6ew+k6j3k/l2TM1peWy1beNXubquLTOI6ikf/SGVepjVlnOT8rcrBxB+K
	 uzPVkNZAkPYsQ==
Original-Subject: Re: Issue in man page div.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200F3.0000000068B5C6BB.000382CA; Mon, 01 Sep 2025 16:15:55 +0000
Date: Mon, 1 Sep 2025 16:15:55 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page div.3
Message-ID: <aLXGuwvm3UuR7oF4@meinfjell.helgefjelltest.de>
References: <aKsmRo0iCNu6B0H_@meinfjell.helgefjelltest.de>
 <xzf6anqg7a3h5rgiovec5nd3ktkptmtnpvbg5tqfhhajcatmdx@3by7r2wa6ekl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-230090-1756743355-0001-2"
Content-Disposition: inline
In-Reply-To: <xzf6anqg7a3h5rgiovec5nd3ktkptmtnpvbg5tqfhhajcatmdx@3by7r2wa6ekl>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-230090-1756743355-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Mon, Sep 01, 2025 at 09:55:28AM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:38PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
=E2=80=A6

> > Issue 2:  I<quot*denominator+rem\\ =3D\\ numerator> =E2=86=92 I<quot>*I=
<denominator>+I<rem> =3D I<numerator>
>=20
> This one is correct as is.
>=20
>=20
> Cheers,
> Alex
>=20
> >=20
> > "The B<div>()  function computes the value I<numerator/denominator and>=
 "
> > "returns the quotient and remainder in a structure named I<div_t> that "
> > "contains two integer members (in unspecified order) named I<quot> and "
> > "I<rem>.  The quotient is rounded toward zero.  The result satisfies "
> > "I<quot*denominator+rem\\ =3D\\ numerator>."

It's just not logical, hence the report.

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-230090-1756743355-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmi1xrsACgkQQbqlJmgq
5nCgGQ//eP9h+YsnKX4DkRpPNZPf00fmOw9yoy2m5AnNh4dycMMuAeoeGuWSmyHK
ysmEQ13t7KBlQAkQhwRS9jiRPoei2RqbKwdphRQnxZUUfHt/0IMWv08Vyz2xhWvQ
9u4+4Yuj8eCFj9Jab66CZn6YufP+HKHau68jnKptCJrix2NmBlCAlX+hhCWbQ9Cp
+V00GofA/+Ta6e9O77og7kvEpbPKkfs4imLSjB9Cr1ucGoFAk8kiQCdYNM7EVZa5
tN1xA6ZwgNvTrYsdeiPu+RcffNHtfGzqofuqDnsHPL21htkx1ogHMx9nWIAkx8LA
B2geTRvLZrwsprPr/b9oloMR52wtdci5FHJpsAYUtwyQogLdXZr4R1c5tEQH2dTg
/J+JgJXoK+kLRs0p+p+LwU0A0lmNkfWmRL+WxcQMK2FkFisodvEy48JQplaBkTZ5
bYtiuBZXKduP7jjZanIzo28+456NeZC/7QR/hEnEyoUGjAJ/RMwpqphG5Nf4io2C
5mCy7Q7tpIFQmrd6B7Ix+GTwKAkeUnshSZgWcDymAuuXg62HIWPUzSU1P6gpYq5X
w8wLhG+z570K/kDYi6j7Qv13WJqVkfbvwiGAssybwO87xRVV5UMCA90nuiLGST5P
Vs1LgEbGbnO0QkF+W9Y0ZzM/ksrQkrk+2bn8e+h5C8txw2/KAjg=
=gggP
-----END PGP SIGNATURE-----

--=_meinfjell-230090-1756743355-0001-2--

