Return-Path: <linux-man+bounces-4559-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F68CDE160
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF7C23006F5A
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 20:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F1B827B352;
	Thu, 25 Dec 2025 20:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3ayWKoG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3A319F464
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 20:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766695014; cv=none; b=Bqhcoz7mLZxvFV7FqOh9Unc2xQMxESaOKQ3xa84BX3DQieC5uionF+AxrXBBhMExcevGu0uGxBnKjjZbk6Mwkjgim4BrkJkc5vkTMk6EfhY3za3wGh49yWeMdyiLXYOxisUMsrrEGiq1fZ+eqEvWtt8OpnednW0B5duv8HEE3zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766695014; c=relaxed/simple;
	bh=Xpr8BICuvD1DWbb5TOgfZdXTUlDBQaQ7wgSBX/kKEEg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iDXk4wF3u6JbRQRwjFcRJ3EFk6vBE2ZqJEViVsFlc1ZuNJze6n2TVm3k2wHajt2F1qUKans6P9kNQbulJO2fW3rBOqNk3Oh1jRCv07sNwHw0YTlgkPfTpizQAA9h/kVXzUFHyaCKnk1VhxGbdENUNKHoLr9X3PytDiAgY4o4oAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3ayWKoG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6290C4CEF1;
	Thu, 25 Dec 2025 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766695013;
	bh=Xpr8BICuvD1DWbb5TOgfZdXTUlDBQaQ7wgSBX/kKEEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J3ayWKoG1AXneS76/xeTHrfSwVCT+PnKqkU06dYvGYIYR0lV0Nf3qyfQYmOowKZj4
	 UA9HFBXcZwKht1jYugEJRwgyjwttbPx89VPS4w6+7kywnXKFiJl3wAbMPY6MN23cX+
	 jn65JRnRP/w2L+ASxUkapL4dFGBZb8B4AV6BER7z5hGieqQp0ghOvjSGv267d9fqMA
	 FB5sYGvO0aPu/Uu6H/iODHhIVTSUiXdrCr068rlptcvx4oiY5XsD08zawyk+HSTaPL
	 eqBco6rGFP7IdOmHEhFOLP5imdHwWxh/AJVOaq9EOKiWGwSaktRSdo3pay0QCI9t1z
	 Hm+Dk36uZ+gXQ==
Date: Thu, 25 Dec 2025 21:36:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_TIMERSLACK.2const.po
Message-ID: <aU2gP0hIG-ZiWNCs@devuan>
References: <aUv64Kcx3sZIGgDr@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="haee5ztsuqegqydk"
Content-Disposition: inline
In-Reply-To: <aUv64Kcx3sZIGgDr@meinfjell.helgefjelltest.de>


--haee5ztsuqegqydk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_TIMERSLACK.2const.po
Message-ID: <aU2gP0hIG-ZiWNCs@devuan>
References: <aUv64Kcx3sZIGgDr@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64Kcx3sZIGgDr@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:24PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     process =E2=86=92 thread ?
>=20
> "Since Linux 4.6, the \"current\" timer slack value of any process can be=
 "
> "examined and changed via this file."

I've removed the entire section.  It only belongs in SEE ALSO, since the
file doesn't affect this API.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--haee5ztsuqegqydk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNoGIACgkQ64mZXMKQ
wqla4xAAkV1p+PA0v6ReaUe+md+Wros88apiTNfGUAUGqk3GEGhiujouJIEyfON2
Nqk4B5lyCdLbiXXpr5E5JAtGS+voX4nXB1C1wYkMckE2bOJOfJY5OlwUB31empIT
Je7yjPmoc1HxpA1IzVaFwZrX4DHbQqpq+9NTIVqkiMlZmsmhZoOSk0L9X2po3Krf
PybYGIo2HHRZ9JEbIgRH0lYGtzLlt2BVKwTQZaq9+9QDSVZR6KKkRLL7BUmkf2qg
pNfUiuysfrC/G8eH/gWxVIoJeYgdw57ti2+fii/KAqIIDeI34mWNj0UKe8p+XSho
C87xFZ2JsxAE7eNpgogT0an6vUi9aKBjm1Oj1SFbFPhHkue1iPig5NiUNeg9tWag
ZxyuJaotq/GzPUd3E+AOlD2ygAxXrLMw4XxpZNlm4naj3vS+ZYj55Jfzaz6utVNB
vk5hSznKC43dMi6FXjqh3B5v+yr4+FbDGXqdIZIxNCnEn8J5qtXFKIaR7A2L0qvQ
Wudz33dEGLEEIuTj0arOc8NwbKEs5OeA/rL7aIR3/4ZtsAgNWqeDKqT6PKI1u+cO
+BFSZo9pJXgPXvstC0qknp3bhbAlCWvNp0blXHHwCbDAJ5q4iAO++DE3oXlpxSrW
jnhJBv2YDl1iH8hbOflownQBVHZhjMMt3JMyNLvStNWMsyuarQI=
=J9we
-----END PGP SIGNATURE-----

--haee5ztsuqegqydk--

