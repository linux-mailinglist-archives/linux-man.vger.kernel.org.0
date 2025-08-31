Return-Path: <linux-man+bounces-3771-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A3206B3D295
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 13:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B7AB189CEC7
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 11:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69947251791;
	Sun, 31 Aug 2025 11:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spaB9Tz4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E5E4C6E
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 11:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756640572; cv=none; b=KmQuaARB5sfFcPbwY5ezgPW5E1VEctw1LgqWj5RTuvB5PEhbBfj6FCfNzRBvxAOOm4amUBfVrRJswWDSmBtfzYGMHXWxs7KQ7l1023dTfuZRfgpDxhLf5MlCgR7lH5DaPwZWD9xa7+Q0c5SnlmQYSmRDnjsrfK0SAOWEtNtiTbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756640572; c=relaxed/simple;
	bh=IBwKa5y2qfjt9r3Jp/ZyyHKUclU9GLU210MsUegSAkw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jjqfmz+5lpdYraXn9vlhsd5mLyMNG+VhFw3IHu+A/3VxNb8kg35SCiFk1nfTscZy1EGouStnTrwP4E8FewgyOVfz3bK+bM+pQUyTiX7ncyrlS8hOJdmv2JYq0/zyb3q6VY1DUvx79PMELlZ/MRtIh0D1jhZFX/AGmBWjJC3HbGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spaB9Tz4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F07A9C4CEF5;
	Sun, 31 Aug 2025 11:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756640571;
	bh=IBwKa5y2qfjt9r3Jp/ZyyHKUclU9GLU210MsUegSAkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=spaB9Tz47H99uy1KdOJ+9dCjEhCpZa2IoMEG4vFVgh4Q6foWXag9AfrqS3I3F/bNH
	 AjQ8jbHdH/7hWE15JtbXsx5aBLhUhkXIeyx52oPcCpjuhYjE4UwcofsKAx8sgGF2MR
	 uA/8LI/o3dMIJ3/cL54tp5lHNBtDO8zez1zVth/HuLNUrIXpRnxYYRu4BL4NYO6IpA
	 0AgeZA6K1oh4t2R/dSJt+GcFfFyYbUl8j/4JTTwGEIJ+mDNGxbT4iZS2M0YkfCUNJR
	 H2EL1lih3B6KqJ8BfiNZuWjyFMjw0+dMnwklYIrQLL2cq7VPZAqTNB1fBD4SbJX4xO
	 PlGXEfCzdUsYg==
Date: Sun, 31 Aug 2025 13:42:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page listmount.2
Message-ID: <tiazjrrpqn3klswyzeutd42t5hxukzxk5lnfnj3a4tqbev75jr@emh5nthtku65>
References: <aKsmS0oOniWzGUlJ@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ailxgq2mvs4tcovr"
Content-Disposition: inline
In-Reply-To: <aKsmS0oOniWzGUlJ@meinfjell.helgefjelltest.de>


--ailxgq2mvs4tcovr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page listmount.2
References: <aKsmS0oOniWzGUlJ@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmS0oOniWzGUlJ@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:43PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Access denied due to missing permissions?
>=20
> "Permission is denied for accessing this mount."

Thanks!  I've clarified this error:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D1580fdbb0a4bc8a9e56835ec5959c7b1405a85e4>
(use port 80.)

$ MANWIDTH=3D72 diffman-git HEAD
--- HEAD^:man/man2/listmount.2
+++ HEAD:man/man2/listmount.2
@@ -56,7 +56,8 @@ RETURN VALUE
        turned, and errno is set to indicate the error.
=20
 ERRORS
-       EPERM  Permission is denied for accessing this mount.
+       EPERM  The caller does not have CAP_SYS_ADMIN in the user name=E2=
=80=90
+              space.
=20
        EFAULT req or mnt_ids points to a location outside the process's
               accessible address space.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ailxgq2mvs4tcovr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0NTYACgkQ64mZXMKQ
wql6jg/9Hv0o4cOFgo6mcQulUysNvse1/7PwZPNfhJh/WxTS5qRTe8X0evlsFlIV
7SQ/sxI+deKKG+nY3JCX5RYEXErEuajkXCklg8024YdL4gFNLBrkqj8iZnwvp0Rs
IeCbOM1eZ11u5ouJxbl/+VwNgjfgAlzqsFDsW1N3EThI19KqrgFO8xJrVTAFedkm
V6EyE6CmBg+SifSF0YrVVJdecXZBRha48TnHCXT4qBYhD01MVtoqnqDZfayuEFBT
WwMeTSjXg/4HdUHFT/CZ435vXE5gX+KMl09R5vSCeAEBbenmlbvSKG/C19+RNaKX
9igsXezg8riz0QR2tvXklZFnCZwZ7tvKHs7dwlyK8BZoqPPeWKarkqG6X6xMVv6J
cALXKAH5JEhKeENlixeuDUJYjrzTECN9940A90PjE5rVHckHrTKsjSSFo3toVezQ
g62t9vF+Y04+uSwa9qNe10FxUOjPGyl57lFUHqMMphViruwByK/XTS3pL3keHcIJ
pSU0aQanTsAgu8Mr2zIOQJBZRL0HTReWbga8Fg/2A0jQrEtXwbh0W8OQ3n2yEpJr
ahxwfX3UfDNWcZ32VOK6zCoC1U2uzjMR1sNIbZmGGCdv0SOQ8Z+RP9R4IkXH/C8w
4jXxh74dW9jHfdn8v970OPZnhHiBmEfV8cXOQxYJxrwKeoK2XQQ=
=RPiO
-----END PGP SIGNATURE-----

--ailxgq2mvs4tcovr--

