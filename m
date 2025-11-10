Return-Path: <linux-man+bounces-4280-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B6BC45CEF
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 11:06:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 159A64EC6A5
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 10:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 855272FF16C;
	Mon, 10 Nov 2025 10:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6lRxYKk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4445A3019A9
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 10:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762768807; cv=none; b=MZq0JynDEn2OEc6CbiT3+Z7uLZYKRw98o6fU71mqbhixXiWrOWODMH5DQxOirb9Tun7HtzytWNCxkJKmkTjRbOB2ZBRSNdwKcK0uOzZd0adi1R4NqEkckNIZH3Wrg61giu4T1eHCHoi2I4QxlrJ8f07MuD6qellHGW39I6D3llA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762768807; c=relaxed/simple;
	bh=kvjILTris1DcVYXHDD1xbQ/NTBHWebAb+sykvMkGJ+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uu6SbV/feqnFOVPM62db4Z69oHDZ5U2lqyzp82djkn5F34DPY10Imca1RvcYRlfH9CHkKtnYyognqKBrru4mg0LEoc/IRc1VlSGHiDW8EAHNBjMAUeuMeI+fE6FqioXFJhf9jLgHDFTz0l9tF6k6qNdTi8Q63qVz4nVAr+cjylk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6lRxYKk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2F34C116B1;
	Mon, 10 Nov 2025 10:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762768804;
	bh=kvjILTris1DcVYXHDD1xbQ/NTBHWebAb+sykvMkGJ+k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A6lRxYKk1G0DVEwNHsrZLPE6vYg2HBvJcFuRtCqXVGTAer73ShLxydglNMblMSiD4
	 5r84k7k8Mt//DnyydpLCYCTQQfoImfsVlTlBsw89qISJTNTzMfFtAXh8B0/dcVchZZ
	 bdKgi06B3ig+7dbn7F9Z457xLpFpxg5biGp5rMhfXoyDoDPz5nqbG/5FaCUOzm/a2U
	 McWkVL3bdkH8ph51udcSK1jUG0hous4kiQsgsfLLKcY9Q78yt07ERBH99wdBjFZxuW
	 XI2bn8xSS3YDE7AeYgIKSWCQAzADsADeK4+BxgexqZvxQdEuxZVOscvT00Z5c+qI2P
	 7o/reULMQuDUw==
Date: Mon, 10 Nov 2025 10:59:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6
 changes
Message-ID: <y7of7yrg6po337osv4yyow23ylmiwfhhhabfscubv3evc34522@mirapoinhug7>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
 <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
 <CAD66C+Z0iOJig457DQDVg+CgcVsE0C=wbuXK21we5XcNyGVizw@mail.gmail.com>
 <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="geox4ikvxir4wnxi"
Content-Disposition: inline
In-Reply-To: <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>


--geox4ikvxir4wnxi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v4 1/3] random.{4,7}, getrandom.2: Adapt to Linux 5.6
 changes
Message-ID: <y7of7yrg6po337osv4yyow23ylmiwfhhhabfscubv3evc34522@mirapoinhug7>
References: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
 <20251109023632.8515-2-arthur200126@gmail.com>
 <n2ajkqskaugqoqjtuxbuxrelepw2gskxzgyrrqsoybqgwtvqam@roe2jqcvnrab>
 <CAD66C+Z0iOJig457DQDVg+CgcVsE0C=wbuXK21we5XcNyGVizw@mail.gmail.com>
 <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD66C+bS65y8KJu-P3ZcpKDR1MQAZW6fX-B99VycaY+OJAFiNA@mail.gmail.com>

Hi Mingye,

On Mon, Nov 10, 2025 at 11:51:30AM +0800, Mingye Wang wrote:
> On Mon, Nov 10, 2025 at 11:05=E2=80=AFAM Mingye Wang <arthur200126@gmail.=
com> wrote:
> >
> > > Does /dev/urandom block when reading with read(2) before the pool is
> > ready?  I assume it blocks.
> >
> > From what I've heard it does not. Working on other comments.
>=20
> Done working on the review comments, but git send-email is not working
> for me again (it accepts no proxy settings and tunnels are flakey;
> worse, it doesn't save my multi-sentence edited heading, or my
> in-reply to string which I need to copy again, or the recipient
> list...). I apologize but I am sending it as an attachment.

This might be helpful:

	$ cat CONTRIBUTING.d/git | sed -n '/^   git-send-email/,+9p'
	   git-send-email(1)
	       If mutt(1) or neomutt(1) are configured in the system,
	       git-send-email(1) can be configured to use any of them as a
	       driver.  Recent versions of neomutt(1) can enable crypto with -C.

		   $ git config --global \
			   sendemail.sendmailcmd 'neomutt -C -H - && true';
	       or
		   $ git config --global sendemail.sendmailcmd 'mutt -H - && true';

That's what I use to sign my email containing patches.  I use
git-send-email(1) on the command line, but it calls neomutt(1) for the
actual sending.  If you use mutt(1) or neomutt(1), you could do this.

> I am sending only the revised version of the patch you commented on
> (the one that touches three files, random.{4,7}, getrandom.2). You
> might notice that this patch is much larger. This is because when
> editing the table I noticed that there's really no reason to keep the
> "Pool" column around for 5.6+, but removing it also felt off. In the
> end I just made two separate tables, but with identical cell-width
> settings.

I'd prefer that change in a separate patch.  I'll confirm when I see
the patch, but in general, I'd like to avoid putting actual changes with
formatting changes in the same commit, unless they're somehow tied
together for a good reason.

>=20
> Speaking of cell-width settings, the existing version was not filling
> the entire screen, which contravenes what man-pages(7) says about
> using lbx. Adding an "x" does make it look nicer too.

Okay.  Although I'd prefer that as a separate patch.

> (I have no idea whether this is the fourth version, but it's
> definitely after the third and five seems too many. In any case, I
> will be incrementing this number in future patch submissions to keep
> things navigable.)

Okay, that's fine.

>=20
> Regards,
> Mingye Wang (Artoria2e5)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--geox4ikvxir4wnxi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkRt5gACgkQ64mZXMKQ
wqkkmQ/+OwXVyS7b362XtnT2N50l5pdyc2jJS8pQcNZgdU0u38Qtbtf+eU/wWdQg
rbSaqmj3XqxW2zQtrCXnCD0d1H6k/T33hahRePCmV97cJfgPnqcQxjjKPeFjgZA/
m9CPUwknXk3y8/OBkUMTPh6rEaYz111odkKwVfuvpoibwlSz8oTP8WmyxtsBxgwD
Ow64kj++4H7x4Xjpbilg6dFuqOmeNE/U8/BEACQLqaAQ5gfN49fjDJbhVXie4w/Q
Ht0Kdcv6Qr7MqaWBESUuJJKq1EOg92zCLIjH0BoSM0JrCvkX8zvZiTdPxvExwkiz
J/13fKJEW/VB6YySuCGeHzLutU3XFolbwNRVYnC8WbFail7oK2Uf0dH4IZ2iS/cZ
1lkd+eA0qJa3ga1Kp/CCrbOVHiyfqznQ+IyORg5/mwrGgkDAixBjFgWvYbjy+w5o
LUTgH7p12wsALv+PTAFE5juXzrH7FUckABhU72DZIGYaEFeMsFY4CTYL1ZhUUmcC
/7Ovk73hoz6/PIWuWdueKT2AoSvbHfPPToSuzVnYz7bVKb5SUKtCxzwKZgEfN3yg
TvHxEFLXazCC3nqpI4y1pl/of4PrwWqaSbtjtnDe2AlSrH/3flniVjvaAe7fQLdy
A1xa4ntyPmRB/p6C3TjgXMZFpCut/PQnseJiEuBJJyuw5Du+IuM=
=1yW6
-----END PGP SIGNATURE-----

--geox4ikvxir4wnxi--

