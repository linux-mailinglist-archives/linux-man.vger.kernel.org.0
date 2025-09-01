Return-Path: <linux-man+bounces-3796-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E8296B3DBD7
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 10:04:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6003173812
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 08:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC8F52EDD7C;
	Mon,  1 Sep 2025 08:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orJf/suJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9A92E0903
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 08:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756713887; cv=none; b=ew1fOou1GwUkcyTia+DTog25Dev8hjOQlGgWthO/umi1d7iYnW6UI3phpqvkr6M7bc9waI5Itm5JRq2vLd7GBvO71tF4mTichyZZSgESp4euQ3+VySxWRUTKD6DN9tZn5XpwpMqlVTEanMXJVAYWbku3tZTBhw8hFOGR9H3+r4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756713887; c=relaxed/simple;
	bh=pccD0di7Dbijg5Fp+higmOK/CGBNxzPNavYJM7Nhm8s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZvNbjg3PjMaKOrKH7ny8PJouQwhke2rEwXz4G7ts+ctNI76f75xbKHpe72iSWKZMlHQsGrF9D4spd1LPyQb370pkbr+Z1wGw7iSg+p11OoYSfYwXUYbQfXHJ+FCUWXRqffq9pkz3xK/mhQzeNs44BF0k/d3Tcwy4BsbQEm5/dl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orJf/suJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35CA5C4CEF0;
	Mon,  1 Sep 2025 08:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756713887;
	bh=pccD0di7Dbijg5Fp+higmOK/CGBNxzPNavYJM7Nhm8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=orJf/suJ1iBdfJcW3qlnyCgUX/3clSfQwxU3jfZQjXJKgAur7IjUNkD9GQJV11ijO
	 lDbziIURgpX5LIAXoZsf2dUueWPlCgMDVI4Ep4fIXMbXP/hJQycOuatKJrf971O4W+
	 o2+yCmzrH3530OFFpt82npBBgjHWuooJNR1ON+6szcjmuQ9hWziYaIqyvFJgHUKLsg
	 eeFOu3aKTuWarOeg+xKWisj/JrhzjEyfLNuUjJrMtQ18QZyKKLcktp1OeRsgn7K2j0
	 owiNkkjn9Os2CVePkMWYhITxUzeJi+zj+8ByOFhnd4hawZKLrXcyFlCMAFeQllUVjC
	 rkJPY7FcPjnMw==
Date: Mon, 1 Sep 2025 10:04:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page console_codes.4
Message-ID: <tbzrdwtjgwnc4r2yrc75rijsihiyz3srtct5z6r6e5howy33ra@kksak6sriik4>
References: <aKsmRHY3W6FcsLso@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dxjo7erk3teay4du"
Content-Disposition: inline
In-Reply-To: <aKsmRHY3W6FcsLso@meinfjell.helgefjelltest.de>


--dxjo7erk3teay4du
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page console_codes.4
References: <aKsmRHY3W6FcsLso@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmRHY3W6FcsLso@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:36PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<xterm (1)> =E2=86=92 B<xterm>(1)

Fixed; thanks!


Cheers,
Alex

>=20
> "Linux \"private mode\" sequences do not follow the rules in ECMA-48 for "
> "private mode control sequences.  In particular, those ending with ] do n=
ot "
> "use a standard terminating character.  The OSC (set palette) sequence is=
 a "
> "greater problem, since B<xterm>(1)  may interpret this as a control sequ=
ence "
> "which requires a string terminator (ST).  Unlike the B<setterm>(1)  "
> "sequences which will be ignored (since they are invalid control sequence=
s), "
> "the palette sequence will make B<xterm (1)> appear to hang (though press=
ing "
> "the return-key will fix that).  To accommodate applications which have b=
een "
> "hardcoded to use Linux control sequences, set the B<xterm>(1)  resource "
> "B<brokenLinuxOSC> to true."
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--dxjo7erk3teay4du
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1U5QACgkQ64mZXMKQ
wqlbYA/7BzCCgoJSQFDo/DuJOgWDD1iRrRYgp8NwKXVUSeZU7ZzKCF5Kx28FjUIX
89vKcLNx+g6B+6lMfcSgHSh1oZq3wxucefiU2stISHRfS7R1KGrFFJaRFDMKLC+b
JJuFcx3ItYWXHbqIxh/Mw2ryZ60jd0LqKiRA0xCZerRQS6cr9uuyACeMJQaabgQi
GD07P6yTdvv1qU9/olDMf8TnFyjm6Ft0RR4XRn00dKS8oZGcUUCveRByHNTJsBM3
9zNaTc1xfiBQmFmmKntGqSSszXJ15pfQBojZ8OBaohr8EbwcJx4v26L07+KVMe/Z
XvL8UGbPeepfZMfAXs8uJkPaUjkarxwPjlXv8w0wIpH6gDQTAqScD9Q245khFcAo
8OnM5pku3J5rUyUZNYRWCghZxKNPCywo9kyzgiTbQE6636+wqtms/sL/vK4H/Z1+
cjtY+7KGSQIuZADLqOdUYy8+oCnL1lbxLl44M5aePmJFPHs6Z89iyygO25Yns1Jq
5hkb0Xtm7vAcOuBLA2YCTH9fb3VJukPMvGCHbJb5EgiQn3WAVbBGF0Lye0Ol/97R
XiqsKKc7uxPXKN3vjAD9uNvm6cz2pjru0T++2hV++d6iOiDzsQqjh9gRgAwfVuoo
BBtLH3/C0N2os4mhrJvPvtabsgK5zTEjZtEXKKsa/vR9q4t4DiA=
=SjiY
-----END PGP SIGNATURE-----

--dxjo7erk3teay4du--

