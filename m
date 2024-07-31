Return-Path: <linux-man+bounces-1553-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEC5942B41
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 11:52:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B1BAB217D6
	for <lists+linux-man@lfdr.de>; Wed, 31 Jul 2024 09:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C0961A8C0D;
	Wed, 31 Jul 2024 09:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1s/I5Iq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF4218E031
	for <linux-man@vger.kernel.org>; Wed, 31 Jul 2024 09:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722419521; cv=none; b=sPOfsddNcBTIjGWLf2eMI2F1u3yiPJorkyq7NuHd6K68C9q0gXaOM+8a3nJYEaVnlZUK64VdfsZ40BgA4z3nw93/6W/OwWgYWjcuRU5NIWAm6XaJtOxq91BVChlYnwF7Suopvc7NWu+8iJpocTywFOZ/23ntxNdcvQpunuS4pVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722419521; c=relaxed/simple;
	bh=kl6B7OVvYknQ7xmKVqIBKgjp7BiP1ZL2LuHT/ey6SBI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yzc++PFaTZ9qDQ36EDhtpwKmLObU/LvqR4D+LnhpuXUHIB9F3iYk6Z6t5gmQchQKF545LM4i540RlS43B4PZDri+eNKrEjEY5mn70UA+mM6KStj743RZzqWIE4abtTS5V9CK969T7uEdp2k7AgAUF+jWngX2sWWYvdhAp9ALddM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1s/I5Iq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 810FEC4AF09;
	Wed, 31 Jul 2024 09:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722419520;
	bh=kl6B7OVvYknQ7xmKVqIBKgjp7BiP1ZL2LuHT/ey6SBI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S1s/I5IqIz5rQ2C3VEkExWt2b96YwUWewgWz96QRKY7vQ2gsjKwp7unBVkNyuAQfI
	 03zrZNsCGyA3pAj7ZYCKmP2wmFv5dDoSzd8enrTNH0XwP+bnvIf5oLdWGDaxJ3C4Ru
	 4GMxsimhbI1xU20l6rbyL7S8EqSg0HJ1EfyBA7qiTlK31+XX8oGumKB6R5S6D0iblF
	 7UxAyXDfM3lAARGVN2ZTahhSuKXXmuauytI69TKBPsRtL1Tv/P8lH3RI8R2Gc99bxp
	 7XzXm8AVl0IeRpN+QlroPj1nKsAxm7q0WuzO6WF1n10cB21G3a/P/KS+AQuczWOu1+
	 9yviGjkDHLPUw==
Date: Wed, 31 Jul 2024 11:51:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
Message-ID: <bhykjtxsjyzkty7e4npl6t4joofol3qo7c2ymnpvk2442hj2id@4bmuihv56q3u>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
 <ZqENZk7VcbBeaXFG@google.com>
 <4pnwtxlxnaa4j7ldpj3nquophl7ac6gpio5esuqlxjep6hjznw@5oopxwhkyiyr>
 <ZqEU8jHku1ZZOWv-@google.com>
 <yncoitkjxgqypzr4hp2j26dnfxtw3p4cznhulkr2gmkvvii5ml@b4t7thznpzf7>
 <ZqoHR9XwYiBlk8VL@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o755sdexthsabsxp"
Content-Disposition: inline
In-Reply-To: <ZqoHR9XwYiBlk8VL@google.com>


--o755sdexthsabsxp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
 <ZqENZk7VcbBeaXFG@google.com>
 <4pnwtxlxnaa4j7ldpj3nquophl7ac6gpio5esuqlxjep6hjznw@5oopxwhkyiyr>
 <ZqEU8jHku1ZZOWv-@google.com>
 <yncoitkjxgqypzr4hp2j26dnfxtw3p4cznhulkr2gmkvvii5ml@b4t7thznpzf7>
 <ZqoHR9XwYiBlk8VL@google.com>
MIME-Version: 1.0
In-Reply-To: <ZqoHR9XwYiBlk8VL@google.com>

Hi G=C3=BCnther!

On Wed, Jul 31, 2024 at 11:43:35AM GMT, G=C3=BCnther Noack wrote:
> On Wed, Jul 24, 2024 at 04:54:43PM +0200, Alejandro Colomar wrote:
> > On Wed, Jul 24, 2024 at 02:51:30PM GMT, G=C3=BCnther Noack wrote:
> > > On Wed, Jul 24, 2024 at 04:31:21PM +0200, Alejandro Colomar wrote:
> > > > It depends on your answer to the pinged question above.
> >=20
> > I'll apply this patch set, and amend the s/i/I/ myself.
>=20
> Thank you Alejandro, I would appreciate that! :)

:-)

>=20
> Thanks,
> =E2=80=94G=C3=BCnther
>=20
> P.S.: I noticed that it is not in master yet, but I assume it'll get ther=
e. :)

Yeah, I'm being slower these days.  I'm a bit tired.  But it'll get
there.  Probably later today.  :)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--o755sdexthsabsxp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaqCT0ACgkQnowa+77/
2zKwSRAAijqG8oIj6hFo63SaPk634ESpNjLOhIRR9oyvCf/kViG7ooY+eXMzYbZl
rcsKvc3gFQn/WOSXbnTGsByK8uQWkm+KebCg/7EyzBzsi0PTwFThT0DfyDywukOi
+OBwyqMOsUY1uWF57TiVx5cFYN1vrNua9gUIn/p+PvRZ7/stZjTHJ3GXpNElAz8C
SDN07v01vUJwVsuqvF2Y13W5gSgGUTsYX2PMbfQFfz5ZmjnLFQaxGHw9nUHyqgN4
eqGKF8sQ2LNYeohSN3xJjd5nCdtBBcCrT3GIwdauUYgJ2/ROxEc8f8IGQeN3Btx/
6gIrhXrVflsKnt5/KAWUG/GsUWSJs0fd2qk86tYzwG6wH+BTHos9dYK72fCeBtgk
kqxallAotMIvJziCd1fECYrJ8hSoqdl4UKHdcUvbyKoWICxbnRqoVntbFa+rTe8Y
uNtjHNz1hkLzFSbKCuFHkjc4Sj43m0cBZnn6i3U89WB1nklwf+iLfHiUOPJmCs8U
3zwTQIs1SVha4kEZeptmCiWiw9aKibTD5B6deV2b9Mnj4mNcnVA4T9fhvakFav6K
zMp72muZG4P/3CuG2meVeiUj3bKlubLD5p0jF5f1TNAIM7/NObq2IBpdR3HJ5mT6
xt7KX+11TYzQUWxi2HlSwB8wMhROwomKHqPxLJLynQbhvhjT/c4=
=1yJ7
-----END PGP SIGNATURE-----

--o755sdexthsabsxp--

