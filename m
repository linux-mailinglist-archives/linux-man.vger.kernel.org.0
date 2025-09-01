Return-Path: <linux-man+bounces-3817-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AB3B3EC11
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5F12441E77
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 915E72D595D;
	Mon,  1 Sep 2025 16:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="PlNJuB77"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDD62D5936
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 16:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756743478; cv=none; b=PJwY4rlkPVF7jiw8ldLviYFTk+5M9VLNydf4ltv2Ljr0vJNRpnjKO195tryLtxVYYs6vCJc9J27hrdPQTxcbJYbgwQw3XJz6uGRUy75+YCzk0ht3NU8nWwZ1gYFKdBPodoYDgQhqJpfseM3tYkvBBSHsH+AmxBnCxp3RHIGxLlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756743478; c=relaxed/simple;
	bh=sh+slVCUtnHNSBJQygvbBZBuPZErE6EZBgjXJrsxGos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ma/lQgxB+NhbGJS4A9Vp1TrYknEnG9EKVdPE4dOQ7Hxpm9d577X62TBbXm80yAd2shui6p9s/y0Z3W6kmKqkLg1HVh9bYH2TvkTltguvWtEPJ0EOFD++PlqyYnsddlWOvDp1hp1svPr11Gww/bRJhUU+6amFghUWf6T6yOTEyDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=PlNJuB77; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756743474;
	bh=eYzpjJALy2wfcVVOwA3O96OE3wYfZ0GwC86UsnWpOH4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PlNJuB772Nm7NYaQguBFxWtVmQEoweJtAniiv04HnzKqgTRgUmjCnKXDyYrZ5k/Te
	 tv8ZismnQGdEN8T7mj8oJ/QTLMiPbE+IYpruF7KoRHmJvdvl8X0APVumk6SH/DdVuL
	 U57diW+NaOPgSbEtBsrIa2yKSMIPTPHj/97DAh8SL6jzZRxVdLioM7WzwwzlOBlO3t
	 634IPXywD3OrLBKHrEEfXViygYVfYL+JGKQQlEj+MOhldvfGxmLoEiNjLUH/2Jh5Yj
	 rZEDINpxyUGY4KuyGyZyzr1yYYF0IR/hnAXJWcxqCqyckjKPXfxzafNHHK5F1o7PUv
	 yeIIexbICTdKw==
Original-Subject: Re: Issue in man page crypt.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200F3.0000000068B5C732.0003833D; Mon, 01 Sep 2025 16:17:54 +0000
Date: Mon, 1 Sep 2025 16:17:54 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page crypt.3
Message-ID: <aLXHMrHDA77EZ1bt@meinfjell.helgefjelltest.de>
References: <aKsmRSS7QJuxhK0o@meinfjell.helgefjelltest.de>
 <vq3wn54jxttpwmrloroygtizxhzqettwlwsx75efb33b2vz6mr@uu3uhtblkd5r>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-230205-1756743474-0001-2"
Content-Disposition: inline
In-Reply-To: <vq3wn54jxttpwmrloroygtizxhzqettwlwsx75efb33b2vz6mr@uu3uhtblkd5r>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-230205-1756743474-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Mon, Sep 01, 2025 at 10:01:10AM +0200 schrieb Alejandro Colomar:
> On Sun, Aug 24, 2025 at 02:48:37PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    "fail closed"??
> >=20
> > "The behavior of E<.Nm crypt> on errors isn't well standardized.  Some "
> > "implementations simply can't fail (except by crashing the program), ot=
hers "
> > "return a null pointer or a fixed string.  Most implementations don't s=
et "
> > "E<.Va errno>, but some do.  POSIX specifies returning a null pointer a=
nd "
> > "setting E<.Va errno>, but it defines only one possible error, E<.Er EN=
OSYS>, "
> > "in the case where E<.Nm crypt> is not supported at all.  Some older "
> > "applications are not prepared to handle null pointers returned by E<.N=
m "
> > "crypt>.  The behavior described above for this implementation, setting=
 E<.Va "
> > "errno> and returning an invalid hash different from E<.Fa setting>, is=
 "
> > "chosen to make these applications fail closed when an error occurs."
>=20
> I don't see any of this text in this page, nor in its git history.
> Please check.

I noticed that this page is completely (as we have it) Debian only
strings.=20

I will investigate this later.

For now, please ignore.

Greetings

         Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-230205-1756743474-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmi1xzIACgkQQbqlJmgq
5nCJ2xAAmjCsUFsiyde8Txm7ldMvmkEWxTXt1g61eIPhylin+4Mk9cWnV4EB/RSX
8n1A01YG3O7gkNBxtmWJflTcYL/tkgSUXgBtzT8FF28ssdMrE3TpiMwR558ChPMf
uiYheoVjBJY5ZX940Q4hf76YHzA0Xh7rPVaPXbK/0c9wBwrEJCys7aC8y+hHgUJX
tKa6+F8+ozdTf2bMj6CbTHWajb0RxOtoWPBLS2pjRGZYE6F+pfA0rwxR/W7WtJVx
YzfC3n07lWXXtouyIi89MHmzjrnoCTC0FTIUW/l1jDPSkaydTnOjEPSfF40AEsNq
Atur7hVqYNb0yh/XF5Y3DJCnf5eUi1IPbNdae404f5ZdKmcEh6qQ8e2XzptstyWC
NC21N3Ghv4Ldviy1b0jJtBi9Doe+nwUJ1NEIvYIx5lTrP6K8ykZ2RaTydZm7MsKZ
F6ABvO1JD4idashOH7+rTdQocuHL8VYkxeRwlqmPtkAwoswhOQSVJElvMXfKHSEl
9JVEUYlLKXPWYzR5IJ2767cRk1g8WUkCKUjiNJXkDtZcgS1eC833LIU1i8M9vga3
TIFZ6pY/Bpf6aN7GT0F0LuXGcxQfXu64vHjcCXh2ffAY0NS3tGdWU0WZeCJJ1bIF
QewpsxHj/sJMPdDsGbifFH/mN/L7OhKDdDmO+KqXp5knSmw5o8k=
=ytjJ
-----END PGP SIGNATURE-----

--=_meinfjell-230205-1756743474-0001-2--

