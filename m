Return-Path: <linux-man+bounces-2525-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7000CA46DEF
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 22:51:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69F7916CFB5
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 21:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4376C25B66D;
	Wed, 26 Feb 2025 21:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVFB/wb7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF2C2566FB;
	Wed, 26 Feb 2025 21:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740606690; cv=none; b=SHnefT25KopmAtE2Yf/ha2M/VssUTjsFuSmSXWfUMeHWPrUiR11n28efeEsJkQLlgF31z2gZ/JmcM4rPcWwokT70Zbsh6//BVPXtk3awd5IEjCN1iGKSvyO6dUIZ9BLhOVFFYkzec71FcwDJFytXc3opQW9AhNOx5QnIl58Cnr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740606690; c=relaxed/simple;
	bh=6K67pLBrn/YSsRyl9yF6Ujvkl7wj/4gfRckCg/PzINw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n63xabZfS5KFyvONP+WX4+Xl45AobRhCcxS0Y2PlCEc3DLewYRpU0SKLNQ3h90GfWEVbuY9GA6VHtGcGv1ctjU/zx8y9lJyBvpaFRYGWejT6QXDMY2LaS9JPgkXoG4yc8NGpplNseotMomGnznbcctB3O5aiqHocTHwutuwxwqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVFB/wb7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F06F8C4CED6;
	Wed, 26 Feb 2025 21:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740606689;
	bh=6K67pLBrn/YSsRyl9yF6Ujvkl7wj/4gfRckCg/PzINw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TVFB/wb7jb8FtK4eqJjE337jIPwfp2/UVz/Urx3Wrydd4eAjA2CFe2J4Si5btpUbk
	 vgp9DdL1UoqCW6SJfOBTj3qVpDq5O5FRi2g0kxekuZHRKqBmSLkI4rE2Cz0I/yB4gp
	 /cZvsqQPusOOb9kOjAhPs88uRO5gYY8vZipho7DZFzecYE8QFehsYS+VHFHlTW0PFu
	 2i4vlnETsrQYCj4d9M+4hY4lnT5gbcIgGfK836tcv8lD0ca8JKpquOFfzolYT2fqRX
	 8UBMe4gUMfppH44Fik0n6Dk8zByGZGJrjIL9xlz44S4yf9Tu1Yru3TdQpXHl7bcE61
	 RiN64xQSr5A7Q==
Date: Wed, 26 Feb 2025 22:51:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
Message-ID: <7ce2w6p5smgreajaosq7cv23oovzzzrlb3csmkdpo2vbbngnif@du7paargkerx>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
 <20250211.oavooPhap9OX@digikod.net>
 <7vl6uylhzgkokl42bz36d5g3krcusqf7mdy4bd7tblcjckatrw@ullu2kblovji>
 <Z794dm_xmViQ_lFF@google.com>
 <5xijgm2hkedx2tu6fjt67ozf2rmvjz6z4zvvcvokymc3hlc6of@xqpnvf23ia2s>
 <Z7-JvY4DP-CswCyF@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lhn2yxdv4o5zdxcp"
Content-Disposition: inline
In-Reply-To: <Z7-JvY4DP-CswCyF@google.com>


--lhn2yxdv4o5zdxcp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
 <20250211.oavooPhap9OX@digikod.net>
 <7vl6uylhzgkokl42bz36d5g3krcusqf7mdy4bd7tblcjckatrw@ullu2kblovji>
 <Z794dm_xmViQ_lFF@google.com>
 <5xijgm2hkedx2tu6fjt67ozf2rmvjz6z4zvvcvokymc3hlc6of@xqpnvf23ia2s>
 <Z7-JvY4DP-CswCyF@google.com>
MIME-Version: 1.0
In-Reply-To: <Z7-JvY4DP-CswCyF@google.com>

Hello!

On Wed, Feb 26, 2025 at 10:38:05PM +0100, G=C3=BCnther Noack wrote:
> That duplication is *precisely* the problem we have in Landlock. :)
>=20
> (If you look at the patch series I've been sending with both the patches =
sent to
> linux-security-modules@ and linux-man@, you'll see the duplication,
> e.g. https://lore.kernel.org/all/20250226211814.31420-2-gnoack@google.com=
/)

Yeah, I've been looking at those that you've CCd me.  I just thought
that the user-space part of the documentation was minoritary, and that
it was part of a much larger documentation that would include many
internals.  But if most .rst docs are UAPI, then I think it should all
be burnt down to flames.  :-)

> Documentation of user space APIs is not unusual in the kernel documentati=
on,
> there is the entire subdirectory Documentation/userspace-api for it.

Huh!  You're indeed right.  A great percentage of Documentation/ is the
UAPI.

	alx@debian:~/.../Documentation$ find * -type f \
					| xargs wc | tail -n1;
	 110625  453670 3990219 total
	alx@debian:~/.../Documentation$ find userspace-api/ -type f \
					| xargs wc | tail -n1;
	  96501  368382 3411766 total


If anyone wants to burn that and send the parts that are missing form
the manual pages, you're invited.  :-)


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--lhn2yxdv4o5zdxcp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme/jNUACgkQ64mZXMKQ
wqlkYQ//VsBlsNKCIsKe5bTf4U3A9mbEm5xQSqJxA7illvfj3konXqRYruxh2nOL
o+dDzfquukNBkB1R2domugVJY2gQsmnSIMJfdo7KrMMnOpI4ysCH5fVlqWEZ0HPy
dC5Sd0F25VO5820RojtuOs1DB7714N15bekz78uHD7MIk2CJYhPTQsmD7ElPzLly
+NTAGMB6CXtIEw5HoKGvWK1xLmJYKlejD5fAtUSHMbSYCoHxdJx6NPtKwVAztTtG
CPawpYGJ/JVJkTHyXIKHdKrepxA2yi6nL3mjRoM8mhA8wR+g/mPIenUTOOpzvjCj
BpYQIWyEBWv9+05LM9nn9Mayb20UtpNYa3j3zqKVF0X2GLSDxrX+IKPbBWVFI9z1
TdWGS/SaevxslWnd0FAgqSVDv5yPTdP0nus1v6aG1rKZgpIXyjIy6ENwkNPpoJ9e
ulyVOSy/0c1ctmBHZukSfWzhBvAcaC5STYSIIixcyia7gUdpakl2iJwoWwSendL3
p085uqp2fRr8ZtwPKKrhVU7HunALTvvHWAovp2xJzIgHtVxYpOYLvJ/VYPwvwW4Y
et7BHgcdyXXYzL2SI3hJTuFW5udGEnWhjXIdOeE30OJY1da2s2PZjMG41qEz14rt
8I+VhcG8zBzGP2y35Zlnf51HELfvgxTypnb2IWKzscGXb8nDljA=
=wf07
-----END PGP SIGNATURE-----

--lhn2yxdv4o5zdxcp--

