Return-Path: <linux-man+bounces-1972-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DA79D033A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:18:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DD15B2401A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A93AF139D0B;
	Sun, 17 Nov 2024 11:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXoCjvX0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6696083A17
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731842304; cv=none; b=rRR5DgDiVstmjenJg4UOnBmtVr/r56wzTj8EP+xGCP2CvBFJCtKj9WecJuAJpXMhViCRmQL7pMl2CbRLOjLdVUyyDpg1JLFsm+nGy+2xWvqfXzMwCDWVxx8w0gDYEALJbImVDz7z9EGYo0+J44ZDCR5UtiuhO2MTjaWD4yHSfkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731842304; c=relaxed/simple;
	bh=a5DB9jIw1LX4TQAy/7ez90Nb3ADPtlgPYfNhuJuqyrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S6mK2uBnn6LW1w2Vft4uc9FPe373wMUU+g8TYn+INVH5fuQ8Y+/lBpqK1mrUfGwOYt9gmeJcA3WjxvRjbVK+iyQk9iiz0j8N5NsIyf5JpXbumtZB1xdHd5nrt3J+m/2E85BTiCT61N2I4oZyI0bm8pA1gXcwrOgCg9iniKL2os8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXoCjvX0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00DB1C4CECD;
	Sun, 17 Nov 2024 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731842303;
	bh=a5DB9jIw1LX4TQAy/7ez90Nb3ADPtlgPYfNhuJuqyrk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rXoCjvX02WokuEPV0sPh8vft/uUbs8m9eOjQuKy+CVMYpRdKsnKe4X+bk6bMZPid2
	 GVb58t6XKW/snhvrMZhrVEvsBkh50u3n7Wk8XainxM+zmCMvvpzrwPMS3R5NPhIwKQ
	 Vak0kU4CG/RQM6D7XTL9hFf0EWxc3uIFXheYWfARqha4IXBnaYL9KKt/o+bALKS0Jd
	 anWsbnSl0SirM2y/3ZXA/qlEROoGZ+0I20zjSx1ZW2wyBD+dqL3eEaZEkK9jDsW64i
	 t42DwjGF0oUOUkj/hC0haAoXE7blzG3nKInSo3RzGUqBP+QCi5KveZCMy8gMVnc/95
	 fejP15fUMruDw==
Date: Sun, 17 Nov 2024 12:18:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page printf.3
Message-ID: <2yi4idu6gfa6mcksbs2pr6e53g2zvc6ob6cbyjgzvjyl732vzq@lvzqerb5k45i>
References: <ZznJfjB2vxjYTHaR@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c7g77n73y3hopdmq"
Content-Disposition: inline
In-Reply-To: <ZznJfjB2vxjYTHaR@meinfjell.helgefjelltest.de>


--c7g77n73y3hopdmq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page printf.3
References: <ZznJfjB2vxjYTHaR@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfjB2vxjYTHaR@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    I<%\\[aq]F> =E2=86=92 I<%F> ?
>=20
> "For decimal conversion (B<i>, B<d>, B<u>, B<f>, B<F>, B<g>, B<G>)  the "
> "output is to be grouped with thousands' grouping characters if the local=
e "
> "information indicates any.  (See B<setlocale>(3).)  Note that many versi=
ons "
> "of B<gcc>(1)  cannot parse this option and will issue a warning.  (SUSv2=
 did "
> "not include I<%\\[aq]F>, but SUSv3 added it.)  Note also that the defaul=
t "
> "locale of a C program is \"C\" whose locale information indicates no "
> "thousands' grouping character.  Therefore, without a prior call to "
> "B<setlocale>(3), no thousands' grouping characters will be printed."

This text was rewritten in
c3b43d3a62cc (2024-06-28, "printf.3: Rework '")

Feel free to send a report in the future if you find problems in the new
text.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--c7g77n73y3hopdmq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc50PwACgkQnowa+77/
2zLHMg//eonn2cdBpIrXQDfzeVLYT4HIbQo2noHOTbC8e48yRJOGMPwx3+LKA6Us
lEqQgmVOp4vPveVxUa48FHd3oidQmaN8Ockp9p4Wkz8rUJYldOiwqwxiY3BPZwM5
tAWhNTEwgkaScFgKwiaO0CFVWx6BEJfGYn6NqMzXrFIpWyh0z0DXBJTXx8SSFRLW
EuBV8pWPasW/QTuAlLAM/Kf6BW/wjceqxrr19wv2rAewq/k2JTlwYoF9FwYMZQnH
f9DnyFWCqS36UQe0N4U8e5lobWDsrRBgtpiqmZr9RK0kLU1M6D/MbK/T3e53enzn
Uzpedc32EKq3rwmHkcIVveIq8HJzO0wbJbJbx0DLQ6ql/zxhGtVZszVTZg5opHir
mpWyWXbAiMz6PytUg0KJua86ajcG4fdvgNNHkNUFWd/HmxEUGhOrfvX5HaE8r5/z
EeK9Ou0IhAoP/PEasdQVG6hyMcl+eCz2FA2LIsZfldBqG89gtZ8tT0L/szl6gzCn
RydeRCw3vI/Y6bf8WUNy5crvwuTHygFbuzQl/dAMDohlO/y9e7O9AP2UGXs0KVFt
QvTg/wFVmenaEVez6ejnhr2oejI4SQDdIMS1mLM+01AhGDKBEoTk6Qv7DrxCzKV8
F++KmjtPxpbDSgyGe1bkuUt6fJ6v4/8FtiMl1fwWvX91GzQC0vc=
=49ps
-----END PGP SIGNATURE-----

--c7g77n73y3hopdmq--

