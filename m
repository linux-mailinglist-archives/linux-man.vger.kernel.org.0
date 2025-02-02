Return-Path: <linux-man+bounces-2316-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 485F5A24DA1
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 11:54:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB8471613BB
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 10:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8915A1D516C;
	Sun,  2 Feb 2025 10:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPwnRXcz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459D21DA53
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 10:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738493683; cv=none; b=bXLFzqihiL9AQ1iF+nsIC5/u2gmmqWE8bE/0WQXbRb9YMR42djjZHX9ImQ8zCHtAzyXTlWHoTBGUGiykZ/tEMi6wGZRZKp/FV+7goItAWwu0kvIDlzfA/lhLJkaKqFe56DmBOo1zDhFa6X5j/srQKbj10fQxNU79VbeqqafcA2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738493683; c=relaxed/simple;
	bh=DNvtKEZ1oun2+dhNdV9weCa1HD34zHjLqqmBCSdmO8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=smXvzLc2t867fmTos2w2bBhaz+oXu4ZfJf5ZhQqLnKmQ60NrzLb+JclPRHlI9mClnm9K0YF9aPqOZP4Blv/4aVV6M6Jfv4lwFafY38P+DRr2Jmn3rL6fPZWQpwGwwrXhBQ2RU05co7n2rEvwrewMKu3knLKk2TtTNz0sHs5qfrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPwnRXcz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCFEBC4CED1;
	Sun,  2 Feb 2025 10:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738493682;
	bh=DNvtKEZ1oun2+dhNdV9weCa1HD34zHjLqqmBCSdmO8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KPwnRXcztwlJEnfsHe1lKDbmCcWIQSlnQ2noJM8SZi99wPRoMjrp7x7i1kjJQ87fu
	 42XbTmYhLXeSkRISRsudxibMmKzLMD8RXQ05+CM6bLq0n8MNoRYI4nrlUy/fzbzuO6
	 zpExYNZr9KI/14slw+k7/Al3RE4OOV6k+/wziOka/YAbpX0XWzxGssDbSPFQlAkB0h
	 FTzT8n4vp6y/fASUtxBRTs5KwHdAVEIpRzsG/uXAQrpAEGFpAdj/6skMFyJdPY6B6M
	 deZPKl2W4G1fTtzV5jW6ZEIrU7AtpMg9WgVhjbg8NdfhNR5yP/WH60iOqWNSW0OXYs
	 Rr1TBLVQbi6tg==
Date: Sun, 2 Feb 2025 11:54:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Tomerius, Kai" <Kai.Tomerius@elektrobit.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man proc_pid_limits typo
Message-ID: <5iuqimymgbrr5q5g5oh75pmlrayuzutgvxezi7dozn22wsghd5@jufcy2zsutuy>
References: <AM9P195MB1364568757CF793EFF5FC606E7E82@AM9P195MB1364.EURP195.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lkdt4dn2bi5ygdlq"
Content-Disposition: inline
In-Reply-To: <AM9P195MB1364568757CF793EFF5FC606E7E82@AM9P195MB1364.EURP195.PROD.OUTLOOK.COM>


--lkdt4dn2bi5ygdlq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Tomerius, Kai" <Kai.Tomerius@elektrobit.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man proc_pid_limits typo
References: <AM9P195MB1364568757CF793EFF5FC606E7E82@AM9P195MB1364.EURP195.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <AM9P195MB1364568757CF793EFF5FC606E7E82@AM9P195MB1364.EURP195.PROD.OUTLOOK.COM>

[CC +=3D linux-man@]

Hi Kai,

On Fri, Jan 31, 2025 at 10:33:54AM +0000, Tomerius, Kai wrote:
> Hi *,
>=20
> I think I found a small typo in the proc_pid_limits man page:
>=20
> <span class=3D"headline"><i>proc_oid_limits</i>(5)         File Formats M=
anual        <i>proc_oid_limits</i>(5)</span>
> <span class=3D"footline">Linux man-pages 6.9.1          2024-05-02       =
      <i>proc_oid_limits</i>(5)</span>
>=20
> It's "oid" instead of "pid", e.g. here: https://man7.org/linux/man-pages/=
man5/proc_pid_limits.5.html

Thanks for the report!  I've fixed it now:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db08e50b78c544df5c78a54a7a9c209de04bff072>


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--lkdt4dn2bi5ygdlq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefTu8ACgkQnowa+77/
2zJepA/9EHAIXKFZjhSpJgAiiOdb7kq9n90mTIkQutRZnpAC5ErqL19KUnCd/bzG
W9ybpWQUBDwEshnPcGG9ax2mGhL5fKhhWQr7ujfcn+lbI2qzTDIkY9Xgf/xJoKb3
gx0nLLK4ZMRHxOHdjdIqUeDYjDLIsA1pQJWTMl/vzpZO63c3J6JcPjCagRUW2VNi
duFsJ1S/vVfr8Qiat5HtOTltILieNAuW4Zf+4QiKpsKLkb+SYNK+O77MPho8CQAQ
osnD8XnU0i/kskmHL95hsNVS09y9oyUxA0o41wSagmq0fcXfpSRsZZIbyPZ7O7Wf
RVj9Hhyme97POhL6/EheUpBqGK+ipX5L/kXVFNJB/BTM2oybN+LQasbReqvzD8pk
blIfIzV7YykH5zimHFdPOS42UmtqlVvvP6chKVfV2E32fMvJMaW6t/HN7Sd7Zrbi
fGMqn+xDhfAGyDTA8uhGfCiLZ+PP8HwRqx3zZEjArJQfD7aFLFRXzDckZI0xqYGC
eIagCz8wuJ+Dg3Eq7Nt0pkycuRUmj+Q8zNYt1+sMDMD70JqRcFo3rl59ewmPt56o
RYMHi44Ntk8sijNpIa5x8n5bxaJKSPN/BVjOFct40thTQcTG1uLSVawreJcT8Urg
nuF8/28JlUpIg9r4Lu2KjrURrGQusJgBURwnnOiWtGJU5mp/9Co=
=nJGO
-----END PGP SIGNATURE-----

--lkdt4dn2bi5ygdlq--

