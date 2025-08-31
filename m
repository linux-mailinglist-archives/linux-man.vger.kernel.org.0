Return-Path: <linux-man+bounces-3783-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBD1B3D461
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 18:30:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1EC3F7A5711
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 16:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EDC618C933;
	Sun, 31 Aug 2025 16:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTnJYSsN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9512566
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 16:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756657827; cv=none; b=HHxoq/JucsDJ08oxy+nZGsjnjTWhmx0+kOpQkvDjgCtdosUJSoPeElZDbea0swtrmC03sxZogmhVwivSKdfCyPi03X/O8/ETxvQEG6Y38nuHYHd42Si+BOszD1qSN+tGmv6BvdU7NhV1xwnr6nkEkYKVF8i1Jm9+b95N0ZuNCYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756657827; c=relaxed/simple;
	bh=kFvPGa+3FsmJ0D0faAq1Q12xwonXPzzxjgienKFk9sQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iok6smmHQI/7MA18M42TFGaxQqCtKPwuZwWjmeVkqABZI4eSV09+c5tmKbS+JC8ZN0Pt/OxlofXi9o4xt48mqSvIy/PwxfdkuoSZgOS0ai91lwx6yByaH/Fenxwu9TA+KTcfECWxp0Yr88YAL5NiqC3BvGVK8j705ORX0B2uBik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTnJYSsN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C302C4CEF6;
	Sun, 31 Aug 2025 16:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756657826;
	bh=kFvPGa+3FsmJ0D0faAq1Q12xwonXPzzxjgienKFk9sQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UTnJYSsNs1D1QQomp9wAcatH/OIm4kmdHL+lCHUcUb9bllh71cSSdKJOclGYFh3H0
	 iMRr7eF8oRkzriR2s27NjYf4hD37JgH03wuERZH+wK33lWd2nbTMy2OIFxS2Wkv81K
	 MkwB6SffoSRkL06Qmgk8U8NEjfYwuW8ez9618E4jaPM2i7WILlJpe+MIOsT+MY/wYY
	 HGMql6QOVPpJzB5VfKWD8vAvtgaUYcINT6YgET+dJGBxcroDtpcwea/+Aqosrlczo0
	 qOIsu2NqXUPzTqghWPnigXYfHxNZGwVUmV4njBzUtJdDy4AvPfUyP2v3thEztAHZX4
	 hKIhKA08fi9gg==
Date: Sun, 31 Aug 2025 18:30:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page ioctl_pipe.2
Message-ID: <c4wdo3tebjblfbqmqrugzal2wrkb6vv56y67n2tavqhmmljiik@24icyn6nya6j>
References: <aKsmSrDlvlHVi2Li@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sm3uxcheefksubp4"
Content-Disposition: inline
In-Reply-To: <aKsmSrDlvlHVi2Li@meinfjell.helgefjelltest.de>


--sm3uxcheefksubp4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page ioctl_pipe.2
References: <aKsmSrDlvlHVi2Li@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmSrDlvlHVi2Li@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:42PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    as below in the text: General =E2=86=92 general
> "ioctl_pipe - ioctl() operations for General notification mechanism"

Fixed; thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc2c0a3d0c884198a673c18ecf7e169c0a9d5d77d>

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--sm3uxcheefksubp4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0eJwACgkQ64mZXMKQ
wqmrSxAAqTNOvtWPF6DQkuOBjW9RqPwPLQTDc1Jdvcg+WcCqRrmuBPv6DYMyZCpI
exUvrOIkYE6kyfEtnJYSnpFg9LcmsQD8SGqUF/oBjdKVpT2X+7qar5q+GERMeoTZ
YAvpv7C+DPWxQymCkrBmYLEw/Vyl98srqBBG/Wn9ReaW2mgrS/b2Ozn0TeKajnvb
OPbKm5rkhWoIhOd5WGBF00LA4uIdxS2IPdGocfmY7JLrie8RUm+aU4eOW0k4IOFS
SxNTli+OW2dAbRKBkYmPVaV2aQyWgu7/THD9EgiFQ/IerwEkuQr3fTZ+ezND/dD+
I9bn12GqlNeEtbB3SgCN3QAL5KLoNcd2/YKy575iYjUocJxo7ccHffRZZkgBYXfe
o+tm4EYDzX9QusPFoQbsI7669IqWMujBETfH++3s/p3zNLv7HyjlziiA9owZCjZO
2sXpQB6J4RKurkf4KmfTbWmChQyuHNJrVEE0S/5KUgjJe+uTjogFjmJP8zvyrSQa
0stSUTN6IJ9OLeIzfZH7+oD2tZ2pq3EsZ20J9t9pmta+N9T4qUcVnglmj6lg2Qhd
hUgb2aRnIs7DdzbTcC9mhG7AjXBcpKlM1WPz0y9469uYXJ81a9+wOvzkrZO0mZ9a
PETVsKZYBfHuES8GjfW1vSUFsFjEbcHxhLRzMj0Ho7LR0qKFrM0=
=hJHX
-----END PGP SIGNATURE-----

--sm3uxcheefksubp4--

