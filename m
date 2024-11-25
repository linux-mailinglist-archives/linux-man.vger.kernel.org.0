Return-Path: <linux-man+bounces-2065-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 850309D8A74
	for <lists+linux-man@lfdr.de>; Mon, 25 Nov 2024 17:34:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 473052861BC
	for <lists+linux-man@lfdr.de>; Mon, 25 Nov 2024 16:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A98881B4F0D;
	Mon, 25 Nov 2024 16:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXBU0Sml"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6377E1B415E
	for <linux-man@vger.kernel.org>; Mon, 25 Nov 2024 16:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732552465; cv=none; b=Noof2MrKl2OFryubOOY2p3wEvCIuoJNqRyy4roTRhpREKI5pKC+O8oqACbB/+Ybd4LfNfBBVhrN4RLCGURvnK23NYTKZ4JDO6X0aUzUStXjhNQKamEPllVT3EULlPLqFf3rRPWoT50EclHTx6hsutJT8xH+S+9xjG0sP6xzzAEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732552465; c=relaxed/simple;
	bh=5VDOesijHw2quAODY72cEI2q30DVj3PkBcwynhLnPe8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LBFbat60Ho/r3uZ85lbkZCGqrTJujAPlTuoKMI/F3z0QrDaPv2/8ut5QNoAuPrPbSPCmQZlkB3ASaAskNdTpWuXpZCpuBG685ywF+r7Zx3f0u4XQIfNooxEjV5DVvgeODkSDKBiGq0zuti0v9Ov7JBMJF7FcK5QL/fSNEBXoHSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXBU0Sml; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19E3CC4CECF;
	Mon, 25 Nov 2024 16:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732552464;
	bh=5VDOesijHw2quAODY72cEI2q30DVj3PkBcwynhLnPe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WXBU0Smlkcv76b/7SklRB8BKUsS1D2hKxTy9ytWrOh+Gd/crDY1pFUoO7jMGMGqU2
	 BqUlSp337by76ksMsBkoQsvwWtLjQmqga978/YYH1FLJ8SkITwsxhuAA7Rfb19THgN
	 h+bSBjhpdVAdtl7jsjSc7v821yXaMOJXonU+t/eAtPO2VbF7gaMPil7nUe/OcWdWZn
	 wYfKoXb/lM7KQJ3SZxHqdF56a/fYGe6yRezD4nI9QrXTjoRTtqPTjG19JDNnaaD8hb
	 Gw3QqeRZRzisr7/OsoxY7xTzAn6DmsqVeTpxh2TokIg4/HqeE3lXDyTFUq1urb/EQv
	 K+FBqFU6EruWQ==
Date: Mon, 25 Nov 2024 17:34:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: onf <onf@disroot.org>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: diffman(1)
Message-ID: <20241125163421.f37ftfuxq33bax2v@devuan>
References: <20241125124404.h37pgmy2pxuzxevg@devuan>
 <D5VE1OMV9LG2.3GYDJOAGFIR0F@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pzglbtbqfu6qppth"
Content-Disposition: inline
In-Reply-To: <D5VE1OMV9LG2.3GYDJOAGFIR0F@disroot.org>


--pzglbtbqfu6qppth
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: diffman(1)
MIME-Version: 1.0

Hi onf,

On Mon, Nov 25, 2024 at 05:08:48PM +0100, onf wrote:
> Hi Alejandro,
>=20
> On Mon Nov 25, 2024 at 1:44 PM CET, Alejandro Colomar wrote:
> > You may find it useful for development of manual pages.  If so, please
> > let me know any feedback you have for it.  I was wondering if I should
> > pipe to less -R, just like man(1) does.  For now, having doubts, I kept
> > it simple, which would allow wrapping this in fancier scripts that for
> > exaple diff an entire repository of manual pages (although that maybe
> > calls for running groff(1) and diff(1) directly).
>=20
> less simply pipes the data through if it's not at the end of a pipeline,
> so piping the diff's output to less -R shouldn't complicate use in
> scripts in any way (except perhaps for escape sequences if you use
> color).

I've seen less(1) cause issues when called in a while loop.
And indeed, there's good reasons for calling this in a loop.
Here's a useful wrapper I came up with after writing this email:

	$ tail -n19 scripts/bash_aliases=20
	# diff all modified pages against the system ones.

	duffman()
	{
		cd $(git rev-parse --show-toplevel);

		git diff --name-only \
		| grep -E \
		   '(\.[[:digit:]]([[:alpha:]][[:alnum:]]*)?\>|\.man)+(\.man|\.in)*$' \
		| sortman \
		| while read f; do \
			local sys=3D"$(basename "$f")";

			diffman "$sys" "$f";
		done \
		| less -R;

		cd -;
	}

>=20
>   $ less -R /usr/include/stdio.h | grep -E '^#' | wc -l
>   241
>   $ sed -E "s/^/$(printf '\033[1m')/; s/\$/$(printf '\033[m')/" \
>       /usr/include/stdio.h | less -R | wc -l
>   985
>=20
> ~ onf

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--pzglbtbqfu6qppth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdEpw0ACgkQnowa+77/
2zIt5RAAjqvM2iIvWOUdl4XmonleRQR8ugrUDM5WVlf1IORXNgZgjKTxg5cQ6rkH
pe0RNW0F9lI3BPDXaJSZjdIGXg/QbAfCHb0Hr1nmJScsMYpJpSMeusGYREh3gx8x
IiPR1j8iMVx1mOYAyv1SvEnwuLb0zfZ3Os8ZOrUzcImK+xwBGyeozoa/BjZ8rvbN
FMHlSAl8dKO1m73EVsIQyeERnSgDuDlCk/GPVVgQQLbytWylJ5YhplWE81YpfpN4
eZGscC3emC1OF3PvxnAJpr2MvdnJiBhcZHzwm/j0SMAU2PCe9GTeLWpqVUeyHGl3
cAqmNjBb067atc2/6uNH6Cqz/FWIoEId3G+Tv0C7/YmzPAh/v6GHM8NFg0tTr1Sx
IqA6lSTftDwwmnaQRc7KFD/btryp1YXzqy2rRNVTOU8qv1kK6a3yIK9JRIL+1tr1
PLtZ45TYzIStI61AOKyBeFlo+M7RMDSEoHV7pNiJ7yOajV/oHhJ/eFR5vLPr5eMj
7S/tiVxEb0Mj7din+aBQrOIUfycOkLxws2s/S7hkW3mXT4CkCSPg2eL6+fDpAlPA
UU9f1vA2ctohlQEB+YowvCUDoevNe/ys4ZZkDEuP4IR2+b1Cz/S6wseIITdZi+Sg
9JfTmW5nCKhEBo/5u7Aqw89An4QpDm+Q4pNPIF6GByNL12O+6Nc=
=oyyC
-----END PGP SIGNATURE-----

--pzglbtbqfu6qppth--

