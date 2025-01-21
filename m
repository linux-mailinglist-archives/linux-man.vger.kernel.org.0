Return-Path: <linux-man+bounces-2282-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EC2A17F4C
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 15:00:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5888188603C
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 14:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DE01F37B5;
	Tue, 21 Jan 2025 14:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjgHFnAU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4D81F37A3
	for <linux-man@vger.kernel.org>; Tue, 21 Jan 2025 14:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737468003; cv=none; b=AWSP+yqJn/0t+nQOGG9/Z4Xu5K5MJI1z0/izUc79FPlgyZICm7vXDYUmT5BWGFVnzmK3y8SeO75l5Wdw1ETTkhnmfG4Vh9JF80OkdxKp9I2hqyyxKc4P6BPFuWYPi0qsPa1Mmij9z9imQbGVJHvwTAE7Mq3eCD0vcXYBwE3ZKYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737468003; c=relaxed/simple;
	bh=ylxu3ISroQEsQheqpRSlyVvaZB+pZMHm3KXKJp0d25k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YMB2/tqExcQfjH8Wi4Gz9wCcGtSB9+tAbhmAPbJ1mHg0RBXJwfMTPEn1m69guCun2tHxgR/WeMdaVJKz6PD8eOasy1YkjhuLuErfsfxaGEELurD8rVf8/NWv3UXIZjSwlxF6z/xNUxziu873nMzkGjQpdEwZqdUHCjYIjXSbN/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjgHFnAU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B52AC4CEE0;
	Tue, 21 Jan 2025 14:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737468003;
	bh=ylxu3ISroQEsQheqpRSlyVvaZB+pZMHm3KXKJp0d25k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PjgHFnAULHYKvXW/7hVazQ8R2dVQHJzhSjNo4r3FIZHaJTXCpHq5KlXq14b5JJmMi
	 sYQZt7tnTOKOw1dSaH6/Un4q7MIkHuR2xcUyFnIeitN+mDWWZJw2RV/HV/ESSfP0Fw
	 DxCYJmPg9G6wBnkihJU56YX6raSBxNuRpHd7mBFu4P82gj2HwXpmpszWm1W6ZkwJ9O
	 ObaHOTSLvOs8Rmcdvq6TLbYyn6E2OExqVIOcaASqU+YWUHz8szBGWcqNShUwtGsw9g
	 E4clJkUm0EbB86RIVf+Z0HdvumdQxmBSyM0fjOKIR3vDtkKXfV7Ka6bbi5eGeoTWXS
	 p+m+8tO+lwTVA==
Date: Tue, 21 Jan 2025 15:00:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: C code style for Linux man-pages examples (was: [PATCH v9]
 man/man7/pathname.7: Add file documenting format of pathnames)
Message-ID: <w533z6n4e2uamrmlfp4yqbajczcxwvk555r624dl6cmpqqyiwa@jmdzqohd3jdh>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120190632.127206-1-jason@jasonyundt.email>
 <ut6qefo7rakabqpov6ukc32eq527cfiaybbtcb5mpccvwusfp3@gqvy4xllcuc5>
 <20250121002606.k2vwusrmy6hwqm4y@illithid>
 <bqkuyafavn4nc5rxscv6im3xbnlyzgmgnzr5hq5dlmfbnnrdtg@czqoi35pfkiu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="obshwz32j3k5o6bv"
Content-Disposition: inline
In-Reply-To: <bqkuyafavn4nc5rxscv6im3xbnlyzgmgnzr5hq5dlmfbnnrdtg@czqoi35pfkiu>


--obshwz32j3k5o6bv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: C code style for Linux man-pages examples (was: [PATCH v9]
 man/man7/pathname.7: Add file documenting format of pathnames)
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120190632.127206-1-jason@jasonyundt.email>
 <ut6qefo7rakabqpov6ukc32eq527cfiaybbtcb5mpccvwusfp3@gqvy4xllcuc5>
 <20250121002606.k2vwusrmy6hwqm4y@illithid>
 <bqkuyafavn4nc5rxscv6im3xbnlyzgmgnzr5hq5dlmfbnnrdtg@czqoi35pfkiu>
MIME-Version: 1.0
In-Reply-To: <bqkuyafavn4nc5rxscv6im3xbnlyzgmgnzr5hq5dlmfbnnrdtg@czqoi35pfkiu>

Hi Jason,

On Tue, Jan 21, 2025 at 08:39:49AM -0500, Jason Yundt wrote:
> Thank you for standing up for me here, Branden.  I am going to continue
> the back and forth with Alex, but I am frustrated by the process.  It
> does indeed feel like a black-box process.  I would have much preferred
> it if Alex had given me as many feedback points as possible each time.
> I really dislike it when I receive feedback and think to myself =E2=80=9C=
I could
> have fixed this all the way back in v6.  Why wasn=E2=80=99t I told this
> earlier?=E2=80=9D

Thank you for expressing your frustration.  I will take it into account.

> I agree that having a =E2=80=9CLinux man-pages example C code style guide=
=E2=80=9D would
> be good.

I've put that in my mental TODO list, and will try to have it soon.

> Alex said in another email =E2=80=9CI'm just not looking at all the
> code at once, because it was highly unreadable.=E2=80=9D  It was impossib=
le for
> me to produce code that was not highly unreadable to Alex.  I say that
> because readability is in the eye of the beholder.

Agree.

> When I first created
> the example program, I did many things to try and make my code as
> readable as possible.  What I=E2=80=99m discovering now is that most of t=
he
> things that I did made the code more readable for me and less readable
> for Alex.  If there had been a =E2=80=9CLinux man-pages example C code st=
yle
> guide=E2=80=9D document, then I would have produced code that was more re=
adable
> to Alex to begin with and I wouldn=E2=80=99t have been frustrated by the
> process.

Anyway, I did actually send all the feedback I had remaining in v9, and
v10 should already be good (at least the example).  And the wording is
already good enough, AFAIR.  So there shouldn't be much more iteration.

And I think iterating isn't all that bad, because it makes us read the
code again, which helps catch other issues unintentionally, which is why
I never worried by having many patch iterations in general.  But I
understand that it might be uncomfortable as a contributor.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--obshwz32j3k5o6bv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmePqGoACgkQnowa+77/
2zLYOQ/9FONmIv5wSCKZRva5mv55q/eXBOAi6G/vO43kZErlsXNl66s5Dc07k2Wk
8jSw2Svp3JOpnfAGvpCAMx5lEyDqOvnCBeEJ0IkNh1dbrpMD7q1QveMUiV41Fkwr
t3khU4x0LAOdLO9Ly8wm5D0iVs01Z9nFNxmaJJzdfmM/5DT20dRuLURvqz2PYxDo
SZtGLoV9rQZVAxnFhS+90kKVicg3zc0qBYjP5+cBwncZkR9fi8Lxx/iT6zYsQlXI
me/POxrt8Mb7ncIuNZML1JheTkxe8uhdeiRViEa0ExOlVswNwpHvPrXubiPQoR4B
Ukt+fRbeVh9fhVdgQ1q4+vEh7nirnEwlogjA1XbCT60XD5+tNoAl+H1bz+InStW8
4iRemXzF6EIvXHeEV4FbpBikd4Seo6PPrdx0AiNPOvEnRTNNhqKO3XJCXEuiNoSn
Uuxyy1kBrbS5NVtk0FfAiEO3k3HQKkt6XPy20sqhofr8xJc51TApp3BQLNK/PAa9
OGfVDqmHnBCDSSxZKug7/zCbtVEGEBSuqZObISJfCLdYw9mwOvAvxeF7Tfoi7AKO
5TM8FcRqOoM6Tn9qc/fhRYRFSNZq4Nt8C/H9nooCGmmAZKburtwse78KvQZV+wjg
yM4MiRlyAWKSyn2duwk3Q8Kf8TeyvViRdWh5SpqgoX82NdcBQdQ=
=5/lb
-----END PGP SIGNATURE-----

--obshwz32j3k5o6bv--

