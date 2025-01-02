Return-Path: <linux-man+bounces-2183-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F24A9FF545
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 01:19:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD572161655
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 00:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2845010F1;
	Thu,  2 Jan 2025 00:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+J/kEz1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D010A17E4
	for <linux-man@vger.kernel.org>; Thu,  2 Jan 2025 00:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735777179; cv=none; b=cN+x59pypRoOkdlrJkTYwACnLHYKEYvFmvL/kzzUVuTx/wRWPPX14toL6oVRUfuSGaCthS+InaQpvTZxDRobhzCnV7C+GuZQH1I69hFb+ZMvmw8vwN8lBD/BeM9V1/mOXXPH0iassbFmbgEKFzLhInQJtOf/DYCygbF9g6PzoaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735777179; c=relaxed/simple;
	bh=ai5Roj1SRm0wX3PNxNQkfjfundnXYT4ru8UW/FUl+D8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jbneOe1pVZCDRK8Ovf8jijeAdC7juzgXcsfSufGDmwXNMOHEvhsFoCdB+i4s/hTJkUKyHjgRPiL28XE06hGJxczj+BL5LJPCJK8TSGYINSYPj+i1LQATciAeWUmJ6Wy3LjDhUPBjg8J2WPe8HUEHMen0RqagU3sYMNV5qWCYEu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+J/kEz1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 616B8C4CECE;
	Thu,  2 Jan 2025 00:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735777179;
	bh=ai5Roj1SRm0wX3PNxNQkfjfundnXYT4ru8UW/FUl+D8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r+J/kEz1YGY/7mz4aOaC+oDqRXW3r9ubAMbzdbXi57bzx59SR73PURW6wLjuvvJIR
	 mITmsyHWbDVWC/L09+nc+wx+Z1sQgP08N+OP9hoKIUNNa/yB78ObJrn5mSUhFst05J
	 imbrUFtzu4i3FHACLMSxHhoqdtVqcKKHN550jb6BSZipUF1D/7ME+GTbKGP0Vdg3rA
	 S2XiDougfvonip3PITGzo/a8MiItPdWrZLpNid1emeMhFqw+xrA5oP9kLEL5dokhTq
	 8aaHFhqCHBg6ppA1TqGDZOfklzqd5Abtl3G2SGulOxcEDo/eAXvE0jwObD37ID3sf8
	 qzewyC1UQxyrg==
Date: Thu, 2 Jan 2025 01:19:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org, 
	libc-help@sourceware.org
Subject: Re: signal(7): why does it say that pthread_mutex_lock() and
 thread_cond_wait() can fail with EINTR?
Message-ID: <ltdxctn6eghheiagtjfqwji22xdapzi63nvuxttgvvmh4v2236@6enzyka7yaks>
References: <Z3W_qgawqyEB-QrA@comp..>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yh6gxa6q3hromhdi"
Content-Disposition: inline
In-Reply-To: <Z3W_qgawqyEB-QrA@comp..>


--yh6gxa6q3hromhdi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org, 
	libc-help@sourceware.org
Subject: Re: signal(7): why does it say that pthread_mutex_lock() and
 thread_cond_wait() can fail with EINTR?
References: <Z3W_qgawqyEB-QrA@comp..>
MIME-Version: 1.0
In-Reply-To: <Z3W_qgawqyEB-QrA@comp..>

[CC +=3D libc-help]

Hi Arkadiusz,

On Wed, Jan 01, 2025 at 11:20:26PM +0100, Arkadiusz Drabczyk wrote:
> In man/man7/signal.7 it says:
>=20
> > If a blocked call to one of the following interfaces is interrupted
> > by a signal handler, then the call is automatically restarted after
> > the signal handler returns if the SA_RESTART flag was used;
> > otherwise the call fails with the error EINTR:
> > (...)
> > =E2=80=A2 pthread_mutex_lock(3), pthread_cond_wait(3), and related APIs.
>=20
> I don't understand this, in my experiments neither
> pthread_mutex_lock() nor pthread_cond_wait() return EINTR even if
> signal handler was installed without using SA_RESTART flag.

Please show some minimal examples if you can.

> The
> underlying futex() call indeed fails with EINTR but it's called again
> by both glibc and musl.

I've CCed glibc, in case they can comment.  Maybe this behavior changed
at some point in the past?  I don't know.

> Additionally both
> man/man3/pthread_mutex_lock.3 and man/man3/pthread_cond_wait.3 say
> that these functions do not return EINTR.

Those pages are too old.  They were unmaintained in a Debian package,
and we adopted them recently.  I wouldn't trust them blindly.

> Is my understanding of the signal.7 wrong or does it need some work?

It might need some work.  Thanks for the report!


Have a lovely new year!
Alex

--=20
<https://www.alejandro-colomar.es/>

--yh6gxa6q3hromhdi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmd1248ACgkQnowa+77/
2zJT5A//YEedjrOI4LukZY2vGT+TiSxHHNd04MQBWF9LOFrhD7wZTejsQl7+km6T
AKYHO4DaLKN3kvzpf6Vc53lRtyf3/5hqpMNzx6aMjvGiQ3bsBSkaKg41FxWkhCm5
OJMdaYr+VZqmOinnyzk8923PCRfhBBzkXHEh5P1GNjpFX8eEZ7UFUvzGmDj2eLdk
nI+O0M57KzYiyPpGBdewsZFy6l/SYkXawa3Nj/KXpJS/ZMY1rZF66jeXQN0ncX/D
gSX+4HMVUvXEnxXPO26W87Xu4ie4m7IRNlF31sbvo2Tx8jA4bOPKjfvVcSdLDJgM
ZSOIAQ3qWc/MnUVC1oKgUCitY19ipu5QFgDeQ/ZHsZ6AXMLJZ81xmS6m6A5dQn0q
HJCXsceFnTNPxv9zxyRV524hlUDhnTvUnb461WloSUxgmWzyAxEhZgIjVbDU2wSE
YQqGC5bVaJ7K+PtDWgIQFwr8K+uAtbWxFTpuo38qnvUlWqWc6T1vg4rR6Ud4t66B
Mj89HC0caD6h4hI89vlTAF1spfzzZcs+OMn/t3i+0xSZErqy77l9SFk+HverPCdP
W/5Qp1JYaIrVoK/8lDglmibr+oZmiSXHE6WM744jqeVXcQTDCB8rg5JHYB7a9bFT
RAq6E00vRUdldP4/ipOfBSJYMYqQAmZ/b8Vqf7MZhV2UZS6AcRM=
=/OxC
-----END PGP SIGNATURE-----

--yh6gxa6q3hromhdi--

