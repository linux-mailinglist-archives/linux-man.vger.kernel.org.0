Return-Path: <linux-man+bounces-4120-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA56BDB764
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 23:52:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 14698347A3E
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 21:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 306A32E88B6;
	Tue, 14 Oct 2025 21:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugM8adrD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01371E3DED
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 21:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760478774; cv=none; b=auWYpSxuj0nTlJSEu93tLVUv64MODw/kpVRyWrW+FWCVEk6b7CgctXEytJ8bQ7xEc64f+hGeBJIIoTY3MO9s3KUP8CFsAB/BsxCvg5mr7yt2BwNpMx4iAH9xewkSZ5Mee07gZ/cEnzj106uNYQ/AH5qKJUANqnJo25NEr+KzF0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760478774; c=relaxed/simple;
	bh=nM/AiExvDb1QPFD2DNv20MHRJ0JwsRqwgvzAWdpf0vc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hmy06boHUJy28Od05ulVDTj/svV1dLYii0WWliBrHUVKnweZpTg5+6J+dnBe0rzaO8GZ1dnJ+2IYDlCDNXnaRZWY8/7mDvlQ78mzsNyVjq8jV9IijllEneCqgvAi2mmCpfp+RnyJinB9jLiY4ltTERzp/lfSLWRjYjFy3N7FGus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugM8adrD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C86EAC4CEE7;
	Tue, 14 Oct 2025 21:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760478772;
	bh=nM/AiExvDb1QPFD2DNv20MHRJ0JwsRqwgvzAWdpf0vc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ugM8adrDTcJqX7Ke7OrDRpi7D+bKE5uHWdZ2nHY9LHQSWAHFbElC/26es8fIa5Kvz
	 zbhc9r9KbaZD9TlEqaEosZUJoXHAdmPSYw4Cu+SZESPNTJWbAUMeSLqz0QBkfj/803
	 3BqkpYTJNdCMM92iqieWDXQkfgRGTVdB2jjiqKvOrG9/Dlb983XMZ5todtw4CNP0gV
	 oqH4mBco4ZkuggU1BrHC2WfP53GnkZwUgKZNPnzWOyoLL/cNNkUqRoTsXz70OLIy/V
	 HyzRGLFfWMF8mz5LeoISB3AISTkmWLzNUa34/zLjZm94kKFONTw2J6NH8TdkEzUFpO
	 qJf2Ql17Cl39g==
Date: Tue, 14 Oct 2025 23:52:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <52x5itydvtb24jhakwaactrtigxoig3k7z6eo2dr3ngr3fdwhh@t6lxeyodyph3>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <f733e521-e3a0-4c35-922c-85461e0b1c1d@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4z2upfzi4qe4weea"
Content-Disposition: inline
In-Reply-To: <f733e521-e3a0-4c35-922c-85461e0b1c1d@redhat.com>


--4z2upfzi4qe4weea
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <52x5itydvtb24jhakwaactrtigxoig3k7z6eo2dr3ngr3fdwhh@t6lxeyodyph3>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <f733e521-e3a0-4c35-922c-85461e0b1c1d@redhat.com>
MIME-Version: 1.0
In-Reply-To: <f733e521-e3a0-4c35-922c-85461e0b1c1d@redhat.com>

Hi Carlos,

On Tue, Oct 14, 2025 at 05:32:17PM -0400, Carlos O'Donell wrote:
> > +Name
> > +	AI - using artificial intelligence for contributing
> > +
> > +Description
> > +	Any use of AI for contributing to this project is unacceptable.
>=20
> Does this ban the use of LLMs in assistive technologies like screen reade=
rs
> for the blind, or speech to text for those with mobility issues?

I'd have to analyze case-by-case for allowing exceptions.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4z2upfzi4qe4weea
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjuxisACgkQ64mZXMKQ
wqmd9Q//VW3mLc/BWZF5aMs44U9YhMMpVK7kDTxNzEWAJutAc5kT6Z2A8ZXPyuYq
LWIXTfaC2I9XBmL/rI8b5g03tBJcpSBzgdyUTI9E9p5gOptiHq+8FRwzcvP80kwY
c4P3Kv+mEDD12uF5Om40sUbBkzCUuykGLGgQ7S4+W7lsLjW7Va2krJquYZyD39n6
3drOd7wkhwupxHU7lvTt1Ww/v2Tb6KKRQ6c6L4V5YoGicdDBbmV4sjS2t3ingwMm
QN2AGwwyvkzQwr/7cNq3LulqwwO1KzRT5+exUt9tpvJWxwH0qtdSFvtc6hm/++D4
CysqDBS+aN+KdU3wK015sUtXZYOrVt7YLlWMwbR1rSh1qpZK2gtp6xHrulZyyCA5
UAkTtYQPo8DVzln3q432ZSEEB7k3ONwtUR7xBU12fBvMJFrsviSIWi8RTogmzTly
+2Qt078vwP2mMo3bEnCfF7pCxfqynM0GimU4Aj0bRLxSi82SrwAlAHIFwhd7pC+s
YsY4/rZnKyypV1yyvuIq3AAgpdUEywzoDzvyr1LZvYTV3B0t8qbi5cJ5S1F/sr4a
ik97k1pX9s6HIRhHMS5bU6g+Pk4MQnKK9dio6xfZPJ6ygnC7OOY807xcZaKTRGCc
cXcstSlIq+zVM0kc9+2JgT26o6kDmYH+R5Eo31u7e/V3O7oVVjI=
=tXW3
-----END PGP SIGNATURE-----

--4z2upfzi4qe4weea--

