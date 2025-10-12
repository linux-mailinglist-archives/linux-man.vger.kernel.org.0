Return-Path: <linux-man+bounces-4112-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C40EBD0CD4
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 23:35:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CCA4C346500
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 21:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7479D242D6C;
	Sun, 12 Oct 2025 21:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPfZZtcF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334FA23BCE3
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 21:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760304932; cv=none; b=GWWLae3qiCbm2Sems5BaFRAkoFdfAqcxTvCOIrBFIbugNUsP4WCUHk1wtZD/qW4hiSomIZWBeXYyZmndOW5C39AsHA0sl5D0RJzINlmfKlE3/d6b5OCWciGph5Dhc6Fm85CExpF7BilwSDV7NyIBd1cJUJqrZIojamP/4Bz0mTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760304932; c=relaxed/simple;
	bh=2lWH+7xqUFKkgR34hK44OPjW2woiJLT2bItxiFjsov4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G51NAha3ERF6GB6g1C6K8UfnRleexlg+YFchUNdzFXixQcUzSDZlGe74W7TUBsc3saZ+mkB/pLHXPFW9IcKzI8SUk64NYZX2Z0ZwipLBkQE4LBKfdfLi8hclv510eQQ1CtSwTosrBKkFz9KQobMjdP5aA/a1zACZYSMMy+RXw0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPfZZtcF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9711AC16AAE;
	Sun, 12 Oct 2025 21:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760304931;
	bh=2lWH+7xqUFKkgR34hK44OPjW2woiJLT2bItxiFjsov4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sPfZZtcF3rBilfvC/o+Y/HiYdsu8WcadY17VbTyD6KeThlZIq6GUscIFgLljgcZHI
	 OTbno83LckIha54YRV6F3FNJeaCPE5KLbT0FHONLfI7ZWufda/iLQfH7lBq71aL59U
	 dnYgqyRq2kVMSa3BziRTIeoy0/VFo86ULqSNuK7QA9j5UX73+ONuOE0bPlwdv4BF7g
	 mZc8DVVCQ1DW7iGvX9Mwsn/BYkXEUP/dheePvU/kCy7kGoONHAjXiSCt+nv1QlY1Ta
	 pV65oCkgAyuTMKwiY6yrqncXPNcfQVtpoNQX0yuix9d0AuCFfnluAvcQFUzVIFn4ay
	 YKT9g92NwDU+g==
Date: Sun, 12 Oct 2025 23:35:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH 1/3] clone.2: document CLONE_PIDFD | CLONE_THREAD
Message-ID: <kusrjryyc3ebz5f6k4m4t3asgvrqer25brmyfy7jip2mkakpf6@6ply26n6a45y>
References: <20251008020031.1215030-1-kolyshkin@gmail.com>
 <20251008020031.1215030-2-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3zxkzo4mpebpjag2"
Content-Disposition: inline
In-Reply-To: <20251008020031.1215030-2-kolyshkin@gmail.com>


--3zxkzo4mpebpjag2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>, 
	Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH 1/3] clone.2: document CLONE_PIDFD | CLONE_THREAD
Message-ID: <kusrjryyc3ebz5f6k4m4t3asgvrqer25brmyfy7jip2mkakpf6@6ply26n6a45y>
References: <20251008020031.1215030-1-kolyshkin@gmail.com>
 <20251008020031.1215030-2-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251008020031.1215030-2-kolyshkin@gmail.com>

Hi Kir,

On Tue, Oct 07, 2025 at 07:00:28PM -0700, Kir Kolyshkin wrote:
> Available since Linux 6.9 [1]. Documented in [2] (added by [3]).
>=20
> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/?id=3D83b290c9e3b5d95891f
> [2]: https://github.com/brauner/man-pages-md/blob/main/clone.md
> [3]: https://github.com/brauner/man-pages-md/pull/4
>=20
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>

Thanks!  I've applied the patch.  However, I've amended it to keep the
ERRORS entry, and noted that it can only happen before Linux 6.9.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dac6f5c32b3fae7549c5a42d96a3273adc24e5023>
(Use port 80.)


Have a lovely night!
Alex

> ---
>  man/man2/clone.2 | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
>=20
> diff --git a/man/man2/clone.2 b/man/man2/clone.2
> index 68f86a934..edccde742 100644
> --- a/man/man2/clone.2
> +++ b/man/man2/clone.2
> @@ -864,10 +864,16 @@ .SS The flags mask
>  .BR clone ().
>  .RE
>  .IP
> -It is currently not possible to use this flag together with
> -.B CLONE_THREAD.
> -This means that the process identified by the PID file descriptor
> -will always be a thread group leader.
> +If
> +.B CLONE_PIDFD
> +is specified together with
> +.BR CLONE_THREAD ,
> +the obtained PID file descriptor refers to a specific thread,
> +as opposed to a thread-group leader if
> +.B CLONE_THREAD
> +is not specified.
> +This feature is available since Linux 6.9.
> +.\" commit 83b290c9e3b5d95891f43a4aeadf6071cbff25d3
>  .IP
>  If the obsolete
>  .B CLONE_DETACHED
> @@ -1386,14 +1392,6 @@ .SH ERRORS
>  .I flags
>  mask.
>  .TP
> -.B EINVAL
> -.B CLONE_PIDFD
> -was specified together with
> -.B CLONE_THREAD
> -in the
> -.I flags
> -mask.
> -.TP
>  .BR "EINVAL " "("  clone "() only)"
>  .B CLONE_PIDFD
>  was specified together with
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--3zxkzo4mpebpjag2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjsHyAACgkQ64mZXMKQ
wql9Nw/+KKJpCw3VW0KP6en/amluT1JiklruL8rd+ym6M5PfGCAZ8beHUtwYxJJO
sfaKBIaIwkYzq6C6dW05ZPbpVADptvUc+QQM5/2HLmcTieItFap6avrbatWaXpYl
I19yArVEnSUM8VKY/lgi8+oL7SU1a4z1bfskEo0Mtub20FpguAjMUp8zbQNh7pkB
jQGCXJ763k8NkbFpgeVN2gqGSkCsyzaBNSqhLzyuR1VbXpZDJRvCABEBEPZ60kHP
7UgLsGVsp3rjJtDUKQurt09ReXokTZg+/0v+EgDZGuCu6QaZtOHrgli1ZU8R2OxU
R6OKfXgVx59lmICHm70dbgZ0xedFXqmqK4pVShZraWKhjqZtphYXwvs5MPFHT6LL
LWqcrUYgc6kINc6H5qv6KO8R2ApOykQK5ZfTNb14qIUFf9EBge/IWEb2/ZORbabs
6HpiqPNGzMXb9NAG0sUq3FdrEhEGzWAdki9ymMvWEk31V5Xcj9mdDHkRC3PrCfgZ
gy4giH2NlVxvHl2xTB2NxnL0HKfJojKdJIP9q4NEJbo0mT5/nTwkkIcSaJb8N4fH
9Vpukt3vCAQnvXWaXqObAhVKC2RLxOFTzzpIXVQqhWKKhHo7KnSvcrIHDN5L2/W9
ywvnu1PTxTArXsQUKvYJ2GFdCJwpVX+MBAKkwxbtYyFnI0d3308=
=nZjT
-----END PGP SIGNATURE-----

--3zxkzo4mpebpjag2--

