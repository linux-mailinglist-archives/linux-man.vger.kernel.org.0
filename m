Return-Path: <linux-man+bounces-3138-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 59944AD5AF2
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 17:46:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 183BA188850A
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 15:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B51961D79A5;
	Wed, 11 Jun 2025 15:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMLIptVe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7458E1A8419
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 15:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749656568; cv=none; b=uqsoEiAWnVyiruL+365HhyVjq5ZJ7Ury3q6FeJCNiJ2EHRuVRCeNsjVcauCceZ8EqS+iAWijurINo47HgaSST40qV5HTjbqzIlLBq/sKsduNcbGCG3ymsH6V882XbmZ8meZPdzshL6pQuZT42YcxPvq62Wf2mCIDWSa5e3VLD8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749656568; c=relaxed/simple;
	bh=OmCHgDC/7u2Zy04OZp5ebgU1F23w0q3BF3+HbovUADE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YHBYe+Hyo/Sjmq2Zwf4GGagYfd8M811ZBo85ju+MYQoXm33FyMbvJwg0s1m/I6CxbbUWR0QrhaJ0NTBx5qtBbeCoEBhsJ1RpFNH0Jvt53WxBNcs55L4dqVZcPuOLmEnVd2gUsByjGFg4YThJdtVj7f9ki9K4Qx+4vWjbHIcLTLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMLIptVe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD468C4CEE3;
	Wed, 11 Jun 2025 15:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749656568;
	bh=OmCHgDC/7u2Zy04OZp5ebgU1F23w0q3BF3+HbovUADE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EMLIptVeYU2g9QZlWIaQ3xJqYN3qsan+/3lNdktP5rT8zXh5K2yFBRYNglL3LJnsU
	 PZKEyh/g0iIYitGN9XrIrLGfDBlXpHgBa46rfcd1kcHqpd9GQYwWX0UT9m3COuXTKR
	 4o61sSl0CxjtSugGQW6ynDXK6faCbTSa1KbsU2Vzes50U7pCcqTDggM4dKRNHY8L0k
	 Ng7wW2EhcBEqdduX/xl+OJpArXD3iB0GU7EdLGwNtuHa3yxeZKyNOS24zBKSiFnVpQ
	 KRj0UxU1CSGNECMFq1R/mNzl+m/J8t7KnN/ovparO0Q7RA7K7165nBGNhNvuyA+j6f
	 qI6nHrhbsTn1g==
Date: Wed, 11 Jun 2025 17:42:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v3] man/man2/cachestat.2: add a man page for cachestat()
Message-ID: <rfyjyqqshdu25curotylkffwndmzdrsxfcsv7pu4tsumpuo3ev@tsmd5rwnr3rr>
References: <20250530124829.214375-1-technoboy85@gmail.com>
 <4b6ceu47mb26wrxpbwlrhtduosvmbtu7uyw4urp6y2kw2bptey@zmi66ue4vsgl>
 <CAFnufp2h6Z7DpDHWyrCxJ++7hA8qce8ADNLEsYRq8jf3TSodfw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yvzm7nigkd6jamft"
Content-Disposition: inline
In-Reply-To: <CAFnufp2h6Z7DpDHWyrCxJ++7hA8qce8ADNLEsYRq8jf3TSodfw@mail.gmail.com>


--yvzm7nigkd6jamft
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Nhat Pham <nphamcs@gmail.com>, 
	Johannes Weiner <hannes@cmpxchg.org>, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v3] man/man2/cachestat.2: add a man page for cachestat()
References: <20250530124829.214375-1-technoboy85@gmail.com>
 <4b6ceu47mb26wrxpbwlrhtduosvmbtu7uyw4urp6y2kw2bptey@zmi66ue4vsgl>
 <CAFnufp2h6Z7DpDHWyrCxJ++7hA8qce8ADNLEsYRq8jf3TSodfw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFnufp2h6Z7DpDHWyrCxJ++7hA8qce8ADNLEsYRq8jf3TSodfw@mail.gmail.com>

Hi Matteo,

On Wed, Jun 11, 2025 at 04:11:37PM +0200, Matteo Croce wrote:
> >         MANDOC          .tmp/man/man2/cachestat.2.lint-man.mandoc.touch
> >         mandoc: .tmp/man/man2/cachestat.2:60:3: ERROR: skipping unknown=
 macro:  If
> >         mandoc: .tmp/man/man2/cachestat.2:27:2: STYLE: fill mode alread=
y disabled, skipping: nf
> >
>=20
> Oh nice, didn't know about mandoc. I'm using it to validate the man page =
with:
>=20
> mandoc -W base,stop man/man2/cachestat.2

I use `mandoc -Tlint man/man2/cachestat.2` (except that I ignore a few
of those warnings).  Here's the exact command that runs in the build
system (and thus in my CI):

	$ make lint-man-mandoc -R --debug=3Dprint |& head -n8
	make: warning: undefined variable 'GNUMAKEFLAGS'
	MANDOC		.tmp/man/man2/ioctl_fs.2.lint-man.mandoc.touch
	! (mandoc -Tlint  .tmp/man/man2/ioctl_fs.2 2>&1 \
	   | grep -v -f '/srv/alx/src/linux/man-pages/man-pages/master/share/mk/li=
nt/man/mandoc.ignore.grep' \
	   || true; \
	) \
	| grep ^ >&2
	touch .tmp/man/man2/ioctl_fs.2.lint-man.mandoc.touch

You can run `make -R -j4 lint-man-mandoc` to lint it with the usual
exceptions that I configured.  Or `make -R -j4 lint build-all check` to
run even more checks.  Help about those is under CONTRIBUTING.d/ and
with `make -R help`.

> I'm fixing these errors now, have a lovely day too!

:-)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--yvzm7nigkd6jamft
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJo+wACgkQ64mZXMKQ
wqng3w/5AYxLA7+x51bnrkIcqiRxoCjCcxSOVdTrxmxIEzvgP+1XWl3jyfhf10Pb
aKuASreFQDSjAW7a6Hlqnm6SPan0jYX6mx8ZX+5G5zhz4QJHY7ldhnY2FgJAEhSx
5+pEZZv5nnEKHXWoPgwspdW5X5F5dSU0NXyfhN652ItaH3trgxMdLkWRpAnQKJIo
PoDmtoEMrAsiSIgZCX/63ElYQiFGScZrc2x8UqGYNrFylQDLD+hIEHbx3pEnvOdv
c3LE2ersNBsBe+M43z5iotWeEsoUU9Jt4S+HMTC40c6/Wj/Oy8vLQxnOIOZ0hjJk
rAetf7XxYOgsYgTZ3U652XzETfAfGFm4nEsr/zSFCpSrcQViAxZ+zHa+IPxIQHpP
+z0+ICiLnKhOD5fFCW9JgzWDVTZN75ZJKL4HScII9IR5G5OERPDYk7piIi6MTDe5
XiPo4Igdj9qTQffWAOTWb8PqT9uezT8PIYNplw92JxygXS+A7gCXhIhuTJB0/68g
Si60XRinZuS2pXLYcoVbhjpJy03FDAM1fnLtIDoaQPmqRXQZ11dLQodAgZUZGAY/
VeT0fMzf8ogUKD4iVJSAwQluNqoqiB0rjkEsXHDXmcDzV9lwWM+2KrnVEW/TIJge
9a2/SKaRRHcqKIliyZ4vxWlmUszwWGdFHMU1Oid58guMlayGpdg=
=3KLh
-----END PGP SIGNATURE-----

--yvzm7nigkd6jamft--

