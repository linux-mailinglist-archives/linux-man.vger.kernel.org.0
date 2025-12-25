Return-Path: <linux-man+bounces-4567-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 291E6CDE1DA
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 22:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74DDB3008E83
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D53FE284672;
	Thu, 25 Dec 2025 21:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoacxlHQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C3427E05F
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 21:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766696819; cv=none; b=BFu26f+bEuuHQ3xGH9RTHzLPNE3xDreIR2vj5aFGd1SaGySHEv9kujFlmw3zvJaBu65cA946p5RzEA4JWhXXP59EHZyxex3E51hGOtPfxbe1cTj0NlTOEYjRp7jx/1t/6BehyIbnCHJMg3B58JxgaCYoq7VQE0Zd9a1TCP50xAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766696819; c=relaxed/simple;
	bh=4dP8/laf21yvzuWzeGE+Kx5chY4Wt4jNYIvjaLuXw8s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=unIst4DO8GW9Elg7ef2ITrwDXLEuqcc7gAS1RwNFplCpDX4TqQ2fWHpWMJxhKrD9DpbzxdUQYdbhat4mKnW+JS0yHKYxDfFoX5wjUfYGFenzo9B2fKIEg9le5bwfWS+JTHQbql4YvCBuA4D3NKJHpkVl53p7pMu9jnJQHeXI+8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoacxlHQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A140C4CEF1;
	Thu, 25 Dec 2025 21:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766696819;
	bh=4dP8/laf21yvzuWzeGE+Kx5chY4Wt4jNYIvjaLuXw8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uoacxlHQWBAZkLeaVFGunh1Js6Yv/Z3IXFVSkBFHlEX3WsiyDpo07YkriH9dyx7XA
	 KNvraUz8vakg7pdEIex1OfKJiOIEmdF4t7VO3RW3VtZr2rUjOJE8S8hxmsBJUJUALA
	 ATIgisr2gSgPhbnpfsKq12XihvauhV9cSuSaYkFmVU1KS3zhpClLfGdQgBLYqxI20M
	 jz3IP5D2L2kutRFwcVNbOWqwD4EyhhDKcPE94MTC+jr2RtJvRsqWQCRmIqGdr2i5CA
	 XqSNx6ZABUI7+PurpwAZtQ00E5tLEn0Z8B6vePd3sQuRJp+OPu4kdsjCsg5sXkfxaO
	 UZtlRIY/Lh+1w==
Date: Thu, 25 Dec 2025 22:06:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aU2nZwzQd4XdB5GJ@devuan>
References: <aUv63u9zgsyD78QB@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aizbm7nz3qndleyw"
Content-Disposition: inline
In-Reply-To: <aUv63u9zgsyD78QB@meinfjell.helgefjelltest.de>


--aizbm7nz3qndleyw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aU2nZwzQd4XdB5GJ@devuan>
References: <aUv63u9zgsyD78QB@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63u9zgsyD78QB@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:22PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     scope =E2=86=92 I<scope>

Fixed; thanks!


>=20
> "When scope is set to B<PR_RISCV_SCOPE_PER_PROCESS> all threads in the "
> "process are permitted to emit icache flushing instructions.  Whenever an=
y "
> "thread in the process is migrated, the corresponding hart's icache will =
be "
> "guaranteed to be consistent with instruction storage.  This does not enf=
orce "
> "any guarantees outside of migration.  If a thread modifies an instructio=
n "
> "that another thread may attempt to execute, the other thread must still =
emit "
> "an icache flushing instruction before attempting to execute the potentia=
lly "
> "modified instruction.  This must be performed by the user-space program."

--=20
<https://www.alejandro-colomar.es>

--aizbm7nz3qndleyw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNp28ACgkQ64mZXMKQ
wqmbhg/+NevMVNBywMX9Z84NMjkSQFhRxeVJBfmjwZJgU8wNYOoScht8Ke72lRM3
dkou6+Y9HcVb+1Q45zAXOhx5hP1cNRcvXCXHPP1CnJT5PB6BOUaFihTa4jdeq4wj
wmX51A9HHrghghuVGY9044vHI+/JT5vmYFDSqBn1btcXC4Fe8asdV+Ds84kc1fLx
o2X+WD0KQaxhl6yqd5jEIwy/MVxDFu5mtNOFj35IElgIMWsTYgPZaoJw7zc5XiYu
+207EqAGwTEQdC6ObFwgvFOZfgqa/6LqsIk6BNzvUIVWhYRqfpzkeetNPiC/sYoD
e5x7PpeupAihqdfG3eCf1FaRJjZ2DdkiDsZNkjukc+cOosbZ+GLhWPmo1iilSoLK
UoJvcMh6THfX5DlOlXR/6HO5GnBdjWseNIBpMbBgBkkd/ggDzQiOgPHcqmDNritO
s+g7VdmRzm/5/QoAQZlVE/sq1VunMwbXexkDZ0rOem5jgfePvfzBI3GF7UeZ/8Xk
Gkp25cq2oCy1AjZy1BgfhFv0KYpumtz9xdESYDtGRu7b9WF/fBy0RRm6rbnF7odS
QOGd3ERvksM948holjVvKeo0SqQN4Sds4Si96XOGAal17NwY7OdPPmy7xpVSkEr+
kwi46f+8znihnPh0oCBQCbupHOkF3fuyqs7HbZRq5guXW29biGg=
=qFTG
-----END PGP SIGNATURE-----

--aizbm7nz3qndleyw--

