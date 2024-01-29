Return-Path: <linux-man+bounces-406-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D66A840504
	for <lists+linux-man@lfdr.de>; Mon, 29 Jan 2024 13:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3473F1F22922
	for <lists+linux-man@lfdr.de>; Mon, 29 Jan 2024 12:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9392E605A4;
	Mon, 29 Jan 2024 12:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="he8/KpuO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5228860864
	for <linux-man@vger.kernel.org>; Mon, 29 Jan 2024 12:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706531345; cv=none; b=cdhmV13nxtc4Af3E+ITklbLyVrWb6bGi3vpk1alS82onv4+smYKxNSpduDz03LKj5KEqalH54OA7Cyykou7rFLhHqbzqPZbR3PXpm57/4kASTli/MffqCHNWnp5KjL/R5JvItdsflRe4sEbcZU4qhbeEz+CIf4DLRx/qAtVBH+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706531345; c=relaxed/simple;
	bh=ajZh90lH8QevyOICr4GL+JvCp+231nrFlOEGuWO0bSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kLyJR1cy6Skk1bH42a4Ccshy26TMRS5bCYMbdd1fpC9Dds5S7/njloveOWsb92jfuSfzYN157p7ws7458sYbcEemxC9srTyjjsKW1HbUxoBeP2D4UUzSsEALiBxNpfphebOnzzBrhUo6EKbj70kdnECDXCY8jAW1Ny8W+5Amn2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=he8/KpuO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10BF1C433F1;
	Mon, 29 Jan 2024 12:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706531344;
	bh=ajZh90lH8QevyOICr4GL+JvCp+231nrFlOEGuWO0bSg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=he8/KpuOc38gMEbWCaWD7MEwZRLWe5d2rul8Aqagq6fCKCc/H400k9VEQG4dC8fqO
	 QaCdOulxOAKvFrvE0bPLigjv36cXmvG09YFXjHsrc/owllpmTlNcM2zq9wWr3bRA9J
	 Su9qUx9ZJxBmvUylkiZOyyLtSabILAPcgVL5NoCeUIBGIC9AiK0U80Hs7Q1c/NSjfM
	 LrKu5F27XWMJtMXqiJPIT6vqrtk3Obx9sN3heLe0R1tFl0Ok8ijz8JwivIHsmnpkvi
	 ljFvFlkmow5yWNm913RZkgkwqEVNXoe/Vdh6+zmvEz2FnhldBuoAtYge14RSHXZOY6
	 6SZ9/JblDFqRg==
Date: Mon, 29 Jan 2024 13:29:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org
Subject: Re: frexp man page: FLT_RADIX vs. 2
Message-ID: <ZbeaDXji8UYuxHiW@debian>
References: <CANv4PNkqQBPn_oyfdYZfOck-7gGwzP6YPPA9hDaiaJPUj+c3xw@mail.gmail.com>
 <ZZS9LDDna5lnjA_K@debian>
 <20240103035053.212096-1-mattlloydhouse@gmail.com>
 <ZZTbQ7X8HDkRhSaV@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KCkJ0mumDLY2+Ok8"
Content-Disposition: inline
In-Reply-To: <ZZTbQ7X8HDkRhSaV@debian>


--KCkJ0mumDLY2+Ok8
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jan 2024 13:29:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org
Subject: Re: frexp man page: FLT_RADIX vs. 2

Hi Morten, Matthew,

On Wed, Jan 03, 2024 at 04:57:55AM +0100, Alejandro Colomar wrote:
> Hmm, then it's a bug in the manual page.  The function is curiously
> defined in terms of 2 regardless of what FLT_RADIX is.  I'll fix it
> tomorrow, unless anyone wants to send a patch for it before that.

Finally fixed:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D2=
b0b48b0acb2a18a640123117f330f5cae8ccba0>

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--KCkJ0mumDLY2+Ok8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmW3mg0ACgkQnowa+77/
2zLNWxAAmdrAg+M9bhxNdfMx4n6/xCqRyH3vRMLne4O1arrLPVVFS0GvfUiEqOnR
uOigsbH6P4NlxOZfBdcETIENat4Yl7U2kkzCRtP0kjganf85aIT9cX+auPLV1NfH
9m5+J6MrZ0FZCBbr0uYnUBeo0tqnRcxejZaJP/aKLJiGNYUTLH5YDpikkjGdsiV+
e15C2hByT4m6TQwlHr6cQ2+ILGhfphfMaZ4c3QlVpp7VQvTIDoHEMj+qheFV7Uce
/Oxqnb1vBja32EvWRa+Sv/fDcEfjElOpqrcKvwKTyBJKnHY+lBJTHhz0N1A5kPKV
6QF4FksXOZchN5MczgQ0yT0tmBroB6LWPi/+uzasGOiyW0v8dhBEj0nvSHv0NcBl
iKLR3LeKUkgV2oRl1BcDKSqj9vBpb2xykocIipoG3EkoPHiXZDqSheryiavwpJ3d
VdI6DhJcVVoeLjaDaPZ6u+ZS6vrlbktTng3dfj+GyF8sHL82TfhtZMuTuyofQ8G7
wc+72IPfrLxcnIBe2TRU818Enhl23Pwjf0OZVzH+0wS+3gd/GQw5U0WTETv3yuOo
np9f7/cURC4Xw/0CY0W1nrq4rDpFNvJqm75xUtMkho+2QUq1RAkCoo0LKYnwAQFs
8B6cRTQ7v0LIsbP4VZW9g5epaRaY3ctcxfjxypBwg7wlwtfrbqM=
=p1AI
-----END PGP SIGNATURE-----

--KCkJ0mumDLY2+Ok8--

