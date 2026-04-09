Return-Path: <linux-man+bounces-5316-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SpYiCBUD2GnoWAgAu9opvQ
	(envelope-from <linux-man+bounces-5316-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 09 Apr 2026 21:50:45 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB743CF1DF
	for <lists+linux-man@lfdr.de>; Thu, 09 Apr 2026 21:50:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8BEB300DE3C
	for <lists+linux-man@lfdr.de>; Thu,  9 Apr 2026 19:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C65320CD3;
	Thu,  9 Apr 2026 19:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiOqnU66"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95946307AC6
	for <linux-man@vger.kernel.org>; Thu,  9 Apr 2026 19:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775764147; cv=none; b=OhBSkaTv6zLcFCwdI6WPk6Rexw1dcYnvHf8MeenS+N5SQCyjhmDCmhfomhlrPvXF4ySV7NwLOgK+otlT7oREBr5a38vcrAJcNAVnM4rNmElYAHR38LoSJli0Nkgx93T9/SJPIwT2ENplApFebwSpz8Rfwi9SaWPccYD0avfzav4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775764147; c=relaxed/simple;
	bh=vSNdi9fczniKYFRVIOE5Usuql70CEyLsdtbPjkpIB1Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZW9KZvJvqjYnO2vbxOE0UPIjsvZ/U266i8Mn3OySG8svvnJc8mg5zbVVRhakZWW35b877hAz23W9hQLsk+tzbe74AjAL2/HnGsqQEOTiq2gerQ6Jxtmk0p0gHcDs7AH+uRcb4aAnQZ0ZUX5cQIO4E9kLHqSqTxFh2JJLlVmMCLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiOqnU66; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13849C4CEF7;
	Thu,  9 Apr 2026 19:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775764147;
	bh=vSNdi9fczniKYFRVIOE5Usuql70CEyLsdtbPjkpIB1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hiOqnU667Z1/zKLTmgSMt9VzBso5ABbqtEbirAvDHCYhp9khjl5akXdq1qtxU5xvw
	 xVqIveLB0hLueIQF5+kxEwcgFsmdUX2k/+gb1UCRtMU+FPfl7M1bDmialwHeBwRLU5
	 154CZ5jtR0YApo30pLtHsnQxh0tQIWWV4zJZLtIb6vg8p7PYkt8VqlVyGJeJnFMP6+
	 qX/J2CjTiJ7KrCVN7gCi4NyAQm2nr8F1dYwYEpXP0NOB6o46cuRCJ8pSu6JKQflY7T
	 hXb1w5cfvY+EwtL4vvpwoDVcslfQu5+T8d27zclfnk6AkZ0tihNREuOkCcJGVifs74
	 dgNCXcQG7DCFg==
Date: Thu, 9 Apr 2026 21:49:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: GIquadrat <ts@gi2.de>
Cc: linux-man@vger.kernel.org
Subject: Re: bug in signature of getnameinfo()
Message-ID: <adgCK_a_UVVMtMMS@debian>
References: <280D0348-17CF-4A16-87BC-18D884101324@gi2.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fsbyhodwxrod325n"
Content-Disposition: inline
In-Reply-To: <280D0348-17CF-4A16-87BC-18D884101324@gi2.de>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5316-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gnu.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url,man7.org:url]
X-Rspamd-Queue-Id: 6DB743CF1DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--fsbyhodwxrod325n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: GIquadrat <ts@gi2.de>
Cc: linux-man@vger.kernel.org
Subject: Re: bug in signature of getnameinfo()
Message-ID: <adgCK_a_UVVMtMMS@debian>
References: <280D0348-17CF-4A16-87BC-18D884101324@gi2.de>
MIME-Version: 1.0
In-Reply-To: <280D0348-17CF-4A16-87BC-18D884101324@gi2.de>

Hi Thorsten,

On 2026-04-09T16:42:27+0200, GIquadrat wrote:
> Hi,
>=20
> https://www.man7.org/linux/man-pages/man3/getnameinfo.3.html
>=20
> shows a strange signature of getnameinfo:
>=20
> int getnameinfo(socklen_t hostlen, socklen_t servlen;
>                        const struct sockaddr *restrict addr, socklen_t ad=
drlen,
>                        char host[_Nullable restrict hostlen],
>                        socklen_t hostlen,
>                        char serv[_Nullable restrict servlen],
>                        socklen_t servlen,
>                        int flags);

That's fine.  You could try compiling it and you'll see it works as it
should.  Just ignore everything before the ';' within the parameter
list (those are forward declarations of parameters).

That's documented in
<https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>.


Have a lovely night!
Alex

>=20
> Best regards
> Torsten

--=20
<https://www.alejandro-colomar.es>

--fsbyhodwxrod325n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnYAqgACgkQ64mZXMKQ
wqksbxAAtmrdOIM40eE50eJ6UuXQtXB/dC1EhN3QSVz4OVlP56xKg/JDkM3mfdJS
HhGn/cRFDASAyesjESZzuZxf3QvFYLPiSAVk8VnVASjRcyh8pyYJBQwwXH0Jj84/
BDiDj/sUsNttyzcwkQt8DMG8oChSpr9WnNBuJntoLaGVtI16t0PWLAYS/mpfHhrD
aP6kGK/NKtAsPjW1688OyOw8zEHj8bj/ZddlzNKqj3RqeOkRLoZ11JmjHFkaOGzN
+G8XYUuoM+7dVSPjn7xiezl6BFvAbnR9mrcpMQ7OdYv/wz99r8vOuYkEbTJPSNcQ
7dzW7+vzCudRObi3l3MKDI+iUkVLxKcHemLfQrTVshZK5+TRaxxreAAEetS/GsnU
maG2Ch5aGoLwkxfzEzuzC+mI0MlV445uGPlL0hRvYZodjo3oKGIauToiVGxzpZYa
QadTXQABw9NMxUrI1/BXRAWuKmhmPfQVczI/akNN2s+DCPR6YBDzXwHKmAsWyEoc
ZEokwPZgoRGIVc/niab0CeBuO8Oqw3VzzvTLoI5ysmLar1X/UaH+xoWDApxTaHB6
PS/1fLXZRg9coVcM0HPdhoGUIVzGkVSp6S9kJyE2kswX8X+0ZlXhuXI0rbeIIHoo
S5jj5PIXX0gL9T2ZSLz1ro82dSmKrGMA8U1SWElwAOG6rYD31bY=
=TzUt
-----END PGP SIGNATURE-----

--fsbyhodwxrod325n--

