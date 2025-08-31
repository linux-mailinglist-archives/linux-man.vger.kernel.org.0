Return-Path: <linux-man+bounces-3772-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03746B3D296
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 13:43:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B17663BFF56
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 11:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB39255F27;
	Sun, 31 Aug 2025 11:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="c85l9pLz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9134C6E
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 11:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756640579; cv=none; b=JplTMrf1EN8y3RO3hoeC++pahuOjQdYjUWHUy0XSlEEq5thmurU3HJrP6EgWm8rXVWaYjt1MYyJW/K5u2cleOjex48JNzpbA3vgAdp1rdnbKZX5Ib/WOaA2yJe+9+4UYO9cCehLWzJldRff0+Ka69ynIlSDuYzVthA5igzdlq+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756640579; c=relaxed/simple;
	bh=24frFjUyVpqsfxYi1rudSSggo9g+AWUnCC7UN4kwR/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Aq5jlegWamYn47vpMU48IEPfeYkyjmyOdCITXv9x2e6CLZzyqELi7FKETkUUgLgfqVgkhAGsrdVfr8EDQ0vrQ49iFVa+bRwSgGU/WyvbwX3H2JpnR01sPkxFL39CZL6vnmJao4LFSOjEehkNXi42h7nQZSE7iJUh/3sLcPfzr/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=c85l9pLz; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756640569;
	bh=3Ub3skvD5cHzUXPiriesaRjPVKVtwZU9ihYK+b8ZJ8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=c85l9pLzm1j4g5osFVbCjT5o+ZNwMMB7gLBlbrZTCsVqAX8X5x5FkjBlG/Qy5kZCh
	 OJyxiRI+XA4ESWcZLbtzFQABLw5wy5ETU5nH18fhIfMxzY9Bi+C/jezUVcXC1IoEwK
	 gOSJkTNOq+H3QW5PZ/QDI6W+V5yzUYlXS1oKqIqxsFnQTXciaw/qJYfOK3BRftrTnj
	 jIASwhcE9S7lW8nInoOfwjNZGl8YXSE3lvkXjki7WuI/YM4L5EhWlgavqH2vIDHshk
	 p4BOh0VRwEOHdRPx3eeKM/n4aog/FRTL0Kp30FJBV8qNgC2mTwamMXeTGZBhNamKwY
	 DB5Io5ZQuRMYQ==
Original-Subject: Re: Issue in man page motd.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200E8.0000000068B43539.0025C11B; Sun, 31 Aug 2025 11:42:49 +0000
Date: Sun, 31 Aug 2025 11:42:49 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
Message-ID: <aLQ1Oak6FGqE_5xX@meinfjell.helgefjelltest.de>
References: <aKsmTShE9A4C9Zof@meinfjell.helgefjelltest.de>
 <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-2474267-1756640569-0001-2"
Content-Disposition: inline
In-Reply-To: <nvvtzeq3cy3q6kyaynyldwahfhnkkddezrjwu44mvuabuo3ow4@os4w2g2436q5>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-2474267-1756640569-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Aug 31, 2025 at 01:33:46PM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:45PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    double space before "after"
>=20
> I can't see that.  Can you please check?

> > "The contents of I</etc/motd> are displayed by B<login>(1)  after a "
> > "successful login but just before it executes the login shell."

I see the double space in our po file, but I cannot deduce how it is
created there, maybe a po4a artefact?

So please disregard this issue, I mark it accordingly for our
translator.

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-2474267-1756640569-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmi0NTcACgkQQbqlJmgq
5nC1zg/9Gfn5wcnAdNdr5OkK/vWNkR7RU5MNeOfM91Z6qj02PZccF5cwFchK/gZo
IHnl5eSyZdVEyPtSrQqxw0xrDgORPp1jDoi3jy5YVVsgoPwvnQ3o0/KJmvtLO5Hq
dd1K2pugT4NHjpWUZXnx0cMuY+UcjWAxoFtuiL0iu45N4tISA0Edp2ThwTZp7CYj
DKaUKWxb1ZTrgKwDRvGwYjIwTu+x8KYiZcXPlTfiTP6oA0+hV+nt/aqxJpBMTneY
wcJe0V/+d7EtFTcR/FDzmjuqcrWAJuiWekWwhbh7aR8VfyV/Seb9+toXYI9be/xb
ed0j6Ce90TgtXJQxRbzhNSkDkdPAo9eyaD8+DoB/NS23sz2sSlmSzw9+GE2qt53r
HGan+pktOfJg5y/01xUIhE83ZPthSgzYKyVGjJ7l9TjctCFNXN4rvJ+q9mW4gLTv
2/mgRilss6k1NX3fgxnT+/Rc3pn6j9Hg9GMWhvoo66U9jv3yQCJHH5tZYQrzPs5v
uyBOQeyuNRDlwVHsg0jhLBrkJGVDkmXLELaQPF/9jYSt/xjg0OGia5rfx53mgrLU
KgfyzxXRH2vrUXHIMcBpwDVuQp2a2t9xPtDJHSSgb41ywP7uWAZ1/ijhr28ocY+v
L/SIDNnIk21/wmKFQhArZNt0GeNvHw7U8wjTFFz5fuopQg2+jXk=
=7zuH
-----END PGP SIGNATURE-----

--=_meinfjell-2474267-1756640569-0001-2--

