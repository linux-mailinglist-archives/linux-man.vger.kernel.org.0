Return-Path: <linux-man+bounces-3685-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDD5B33155
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 18:05:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8198442C39
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281E32DC35F;
	Sun, 24 Aug 2025 16:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrRuwF4E"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93891805E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 16:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756051542; cv=none; b=uW9trLfhOJ8IS5Jn7VAQWmxT1ZxJDUuh3yOA5rPeFjY+ScApY5QkudC0oTFeciifMN5ARjqzALalr43Q6Hcq39Tf2Foq++LISaIJbqj/psYqJc3NFt7ddIbt4PynbLnBjdziWgBfuDsIF6fG1+xlA/MTcqYtNo751Wv3xXH+RnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756051542; c=relaxed/simple;
	bh=MOaBG1yQGWm4avGWwr9I4JIMlNOAA42heqU1NPryYic=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CwkeepSPJKkH1HFjo0v2O5XQKqcI+Ep9R46+jKYPZT7keAqHxOmnFKmwUM70nntazYRj9p4UevcSjD7DyHMzRyM+OF5YN26jZSSX6RkiI8xI8LSGxDfZlP45GwacQrkNA4TQ/XdVvv7efV95nmmaD629k5otS+/07D7X5l3qcUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrRuwF4E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BB7CC4CEF1;
	Sun, 24 Aug 2025 16:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756051542;
	bh=MOaBG1yQGWm4avGWwr9I4JIMlNOAA42heqU1NPryYic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JrRuwF4ELLg68PPamr+6umTLj0IMxdlVA8SiNAg46IgwPNA3c+Vo5AXoKwMFbpcdo
	 /1y1F8lv/RIwvA4OqGFg3u7XM5+PaHH6aDQ71BxHOniJR5czA2XRFN1vvqzwQzNye6
	 dd2eevULiCCycUD6RMPddhctAEBF4m4SEbjHsXQ1Zwd8LN5GaZM23ogsWtxzDUAOtQ
	 IvwXDUANScozHYlX7pU+uoc3/jo2A25mHv/b4gG/zNIJEy6QatE0czO/l5GWj88srJ
	 MX9kai9Bbm0yPvDclZdUnPglGSAluhgttTkMC0h4EKzc40jgAvJGYpOFLYfHjrsDCY
	 BC+/e6cFn0E2A==
Date: Sun, 24 Aug 2025 18:05:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
Message-ID: <x25fz5cv4jolv37nec5btlbyu7d2ciulxwnb5bipgpzgorehrs@qflc77gpwpne>
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fflleznxq2srtqxr"
Content-Disposition: inline
In-Reply-To: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>


--fflleznxq2srtqxr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page resolver.3
References: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQBB8CZKAhQvH@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:32PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<=E2=80=A6>int datalen, int buflen =E2=86=92 B<=E2=80=A6int> I=
<datalen>, B<int> I<buflen>

That is on purpose; it's a list of forward-declarations of parameters,
not the parameters themselves.  To distinguish them from actual
parameters, they're in Roman.  (Note the semicolon at the end of the
list of forward declarations.)


Have a lovely day!
Alex

>=20
> "B<int res_nmkquery(>int datalen, int buflen;\n"
> "B<           res_state >I<statep>B<,>\n"
> "B<           int >I<op>B<, const char *>I<dname>B<, int >I<class>B<,>\n"
> "B<           int >I<type>B<, const unsigned char >I<data>B<[>I<datalen>B=
<], int >I<datalen>B<,>\n"
> "B<           const unsigned char *>I<newrr>B<,>\n"
> "B<           unsigned char >I<buf>B<[>I<buflen>B<], int >I<buflen>B<);>\=
n"

--=20
<https://www.alejandro-colomar.es/>

--fflleznxq2srtqxr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirOEsACgkQ64mZXMKQ
wqkIXQ/9Fi8Bs1beqZoWjZczg2SE0lwvnvYSDKtaj8iTS/DsPwkxbQN0qJebp5Ql
hd+UILrrpFLEKEznQjaJvj6cNNiotjrk7ZSyGsXUDwX2couBHNQwt2Fy5b8ZK3EF
KeI9VczOhZNbfrCK3+HwIWv7N5nnwBD2ivZ2qYQksky+9C+7RZaf/AjhYTi5cXEH
CVFgE7FcHz9gYFoHMG72PTrLa6lqJhZDaFIMLV6i1sOkk2FgEvY9TOBgfD+Tm8c0
ATYnV4QS1Bdo8ZwaXg1gOjv2e7PJVVCn5ntS6P2XIl3qIUk9QN+7r2Pm668L9p+B
bUCaZ2V/YwpAODsrOHdvh7e8WfTNLAe0faPqv6s4wQkKbLQMxEmcXYc7qStW+RbT
CDgrXjlO8aqA5WzgbZ9Jqj/K24rA+WBHkOD9+f20GbVpnP3gHCVdNZIPKEuQZk79
HpeX/KKmMo+QPZ4ZL5MmBhtiHWz0lpdzA5708pRJuaKizUs+L+EYyuRxpn4YZnhB
idFuZxrYM7X13KK0bqJYRQzx1Rox5eHZ0PXndoVBRbbnL6HRaab2LwM+wVJyCMB7
GuFcicrcKyB0TAtZ0HSIovhh65MNm6eCFwRrgSgNxRaLezW/lbZf/21qMWNOtncg
e+o+co7wEdXwLK4GTDsB3oF+UjCMHgbNkVsn6TxoPQn7j6SlE58=
=9SIF
-----END PGP SIGNATURE-----

--fflleznxq2srtqxr--

