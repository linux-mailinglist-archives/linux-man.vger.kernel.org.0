Return-Path: <linux-man+bounces-3793-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92144B3DB82
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 09:52:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 370083A3A5F
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 07:52:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F2DA26D4D8;
	Mon,  1 Sep 2025 07:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhNRWQJe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC942475C2
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 07:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756713117; cv=none; b=HOfmtsvDWJqEX9mYRkp6M43vfgsHBHTJ0089cSQtV2A1k3mE4IjbRhYx21BUkoMU3TeiRLJWtxg2wYI33GEoW3ALstH+1ZuhKoIzpxA0IJnV/A8yMMlRT8Poq/6sTv1yZYAzQkMXskJcBR7aWwq540LbWc9sP/t67kc4u0qcYcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756713117; c=relaxed/simple;
	bh=E7TGow5KT6ct/kmhIF4aStw5qRktQt0WHrWMbdxGamo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aYTwJwuRqaWocP9PS84dMEtDLnGbqyAj/en8Ng/ug6E1G88huO7pjXVNOQgaIGnViJLY9IlhrIiWd2KQBnpmimrvRoZAV319mtuY6MaQq4JWuo0MYYzpQnKQO4W5bdaqMe2UlNZ4qqU9gP5HyM1FQb7uCG5eXEBJcPVj2LDUqR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhNRWQJe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B6E5C4CEF0;
	Mon,  1 Sep 2025 07:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756713116;
	bh=E7TGow5KT6ct/kmhIF4aStw5qRktQt0WHrWMbdxGamo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZhNRWQJeayCtBuEYwLmLvGrxjIvUW8XcPJvjDR3MU+mM1+RV0LgPA7/M4kXHl9YDY
	 H/8/x8OgttjFnSzvKKOLFE0nDN4JptCqBRZXAMBXLbaBEpdGk6HlKfCwRQLy0biiMA
	 qDjtazqpu/FMYoNnXybPovJm6Yrt03Y6sU1jMmkAepy0upE/c9eRBNtDuWt7xHtSC6
	 QPdZcjzYveHA7x7rCPZlWPmYAXKyNMB+UWb6DqfIlgXELv7pSHTQMg0LiJgiKJD+1F
	 LX9Luoy3RI6+yRhfJdE1puVfeVjxFHJTX7j+4O1bXPold/fMwtoWVpmXuzAPxwwiow
	 qEY4QvcX5I8ww==
Date: Mon, 1 Sep 2025 09:51:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page dir_colors.5
Message-ID: <zx3expupb737dl6mcau3bifc63rmwiunqczamhnayh3cdjmyln@i7nvoe3gdsct>
References: <aKsmRo9hmWxmRoVK@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lxcle6sze2scmsgi"
Content-Disposition: inline
In-Reply-To: <aKsmRo9hmWxmRoVK@meinfjell.helgefjelltest.de>


--lxcle6sze2scmsgi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page dir_colors.5
References: <aKsmRo9hmWxmRoVK@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmRo9hmWxmRoVK@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:38PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    From this point I<> in msgid are incorrect (maybe similar issue=
 as in groff_me.7.po?)

I can't find any occurence of 'msgid' in dir_colors(5).  Not even in the
git history:

	$ git log --follow -S msgid -- man/man5/dir_colors.5
	$

I don't find any similar text in any other pages either:

	$ grep -rn point -C5 | grep msgid
	$

Could you please check?


Cheers,
Alex

>=20
> "I<Any character (octal notation)>"

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--lxcle6sze2scmsgi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1UJcACgkQ64mZXMKQ
wqmPkQ/+NkgtLHWyNFLJClbno5y46nCwgipEZvMXp+cG23GbxAeSvL4BeyNP8qxj
QTBlZPlqu65fAgohkjWraVo8YMEyUjKeAszN4MZO1k5jyXXU2PikOJUpqLBhzTEF
xbQTLseVFyynmq2WEkpFNdpi8ai5bYbwSV+dY8x87Fa94AiIqcOX86Y5k8IVALT0
PJNFjuXYJq7lWCyG+2Gkmt83qMDDQPfSTnqPn3OwhpJYy6W0YzcPdFSXqUhoW7Wq
bOY7tXTf7H+EK2T+O6ML54++IC0qSqlshUVYMfwcyBovNa+Miad9dAVIq+Sebuev
k52agk3+tX+2hFjTPv992lYXi4H5btZGYfmwAW67UZm6T6qKDMvcAIPVMMYJ+urJ
sFfyLLlKDxKRw4DTDW4MWiq2mdyUER+4jAKRz/NbU5zT2qKR42Vd2/XZgSCqx06Y
7K7t3QmjFSkuanJn1Q92hjpC7m1ZAApkf5kzR3k9TuyV0PVFrHp7hcNpaEUYY/o8
CgAMeISCPrkA0i3jTFHPe7oGCkSVrMYS+KYWw+YyWNyzsbt5N+Zsuv0Cl3HMYAFs
wCyviTKggdgDteFt3gVqu3KkqZWuzM+aUrxH9WuiJrnjf3tCChVu67PsDjBrtBHV
RsB4nMEImkxskMJSFSu1HmCa28WbnvPUIwOtm/1Y6ZS/UY8tyUM=
=IOq1
-----END PGP SIGNATURE-----

--lxcle6sze2scmsgi--

