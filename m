Return-Path: <linux-man+bounces-4571-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F6ECDE52D
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 05:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 388263009ABF
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 04:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB4686250;
	Fri, 26 Dec 2025 04:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="NQhump0Y"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7ED04207A
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 04:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766724567; cv=none; b=BW1VMQjYevxjeIzlUjp7eemkjgLtTXUVqmBMJG9pd83BoICNHG75R2xGX6vkyIHIEYWEdM42lfPfczrPzaRaHG3qA+Uxk0xHGINuGvq1VrBq+dHtmeR+psRxTthoughIxBs+X5CcqSZUbAUl3Ygmw1vVQnbp22PtBUU6F6HUR94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766724567; c=relaxed/simple;
	bh=kVRkJbWrc/fpmDa9EEd8oYM+Pntrjsuvh2E0SxNmWfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a3FV34762k2ClbAEOPsMSRacrU8E+0XBQFrQMnU7a4zq+qNR4S7KoO/Gjfv9P+A6jIBzZQx0Et8nLJZ3c7UUjLEWib7CVMdDfkHOeu22I4aAjLwqvLADEw95viwv30VVzglQaS97ZRwhDgnLxwFWXkvqWfq+/Zo/f/USr4Vd+Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=NQhump0Y; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766724557;
	bh=SnpqrGe2RltteNBZIFHX3YOSrIWzM7AgAk2iGoyp+l4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NQhump0Y56RJut3WRG4Rsgje+B96Ps/nZlCBgqLXkoOnaM13FfdfcIAvG/asEKKQm
	 PyIzNrdjK1JtQQDdUNz7syu9uHt1X+MguawPEclQ4fgkfcwVsX9k/O4VzoIQd99aTe
	 OghDgiQks/PODjq/6f0SzktZPuV6W+AO/Z50oAH1j1ZHayHhS9vnEYQQqWnYBmRl+i
	 TZgPJkFVV7Yjt7ETd17B8tYBYku9i/WjRQj0MnGvs6UevkF9H9R9f86k+gNTf/M4fu
	 zmO/yrdYka9RwoKxi3uQMDs9QS9HhJj/rQmOac0F3MX2GskSAe6XQVLE1CKdr76MnM
	 hWjauGvjT/bHA==
Original-Subject: Re: Issue in man page fma.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200D3.00000000694E13CD.003D96F1; Fri, 26 Dec 2025 04:49:17 +0000
Date: Fri, 26 Dec 2025 04:49:17 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fma.3
Message-ID: <aU4TzfiMvI2_VBM-@meinfjell.helgefjelltest.de>
References: <aUv64cN0_EE0VVlM@meinfjell.helgefjelltest.de>
 <aU07-d_JMzS3mB7e@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4036337-1766724557-0001-2"
Content-Disposition: inline
In-Reply-To: <aU07-d_JMzS3mB7e@devuan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4036337-1766724557-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Am Thu, Dec 25, 2025 at 02:29:08PM +0100 schrieb Alejandro Colomar:
> but please revise in case there's still anything that needs to be fixed.

Apologies, I missed to filter this out. It is fixed.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4036337-1766724557-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmlOE8oACgkQQbqlJmgq
5nDTyA//ezbx1PLSQXg5J9PHW/VkndHOLNwQtiYmWVZdjGGEb/EjxufYhpTHD3+B
/mj1CksujOAzRNSLbEvPI5SbGUHYy6loofk5Z/bC6IkgSmfedjBZcO7JxXtaR2KQ
Wb+RrCiMnqCdUwVZmDOxVX1+DBmL2LF3TPx9tjHU/ZKdnvD8u6mjdK2CzbKTRnQ/
9AQzg3ecliP8ZZiv0fEiyUcLQ6qYmEWdYM7uwOD5cdLZyFzmHgDcdmoOeW7nFrXx
LOiisg95dKAufWGc5x2pb5X2EdHXKJ/R6TxPAhOSa/9kL96wXqOWXA/bnmPo+KPE
tZ7UH2tUBE5xEaxKuHNcRAkzhEnWMdbaLe00csoolGEeR48w4WibaFQXqFto+d+k
EoZ5ikazQ42+51IEoZoXUy2Y1pJysfdihXnSMTwVH9Mginbx/6h9Wghlm4haaM3i
VMGXxiRIXLp29n6QpQaMoN6DHvmivgTtKblIfgoPkI9c+dQ2AXD2mtAuoh9SOk1S
bfs4EzwycKW3MVjVLoAvsETay0Sn1wDRfnnyHr/g2FzU6MtgSJ9zqk0MqmY7bm2w
6xiAGAPIweWOY/Qt4WsuOl17rStc3wklipgiDOUzTL5XTbv3eBP1R/IFwCYF7DBt
Yoqr3b/Hi0C0H6xlcY/oM9KDFnKchk49138tUt6neg4ddetmDdg=
=9z82
-----END PGP SIGNATURE-----

--=_meinfjell-4036337-1766724557-0001-2--

