Return-Path: <linux-man+bounces-799-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 957958AC376
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 06:35:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51B8C28177F
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 04:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93C4812E4D;
	Mon, 22 Apr 2024 04:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIeJYaKL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515052F2D
	for <linux-man@vger.kernel.org>; Mon, 22 Apr 2024 04:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713760522; cv=none; b=RguzmcEvpriXVatfZ4SH+wIfw2bW+FhcNqasemB/PBa44rf/YAQXpQf9RKDa7jp8Hp0TkEmKofLL4+bCnakxMYuZnlQeHPKu8+3U8LArWeu1DTx34rMckP8dCAEod4E1IcD0aOVBqGThLVZPle5lzRzCs2B7Yik8y0Rf9+MjaT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713760522; c=relaxed/simple;
	bh=bxiniitRQwsndYWOO8kLWwGfLSTheoAwRu39N2tSwSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YZ6sSJrhjpRuNlur4wCbW9na/7scsOYTUa0C521KrpBHB6ODwk/10zYS7EgdT9U0VFgsTsnBJ5zFofD8/syxAgYTwMV3idVBk+15Nn+KmstVYTazTCOJUXpRERZd23gCPd7zSYksnZhXtYtfXBxL/ZB5uQgb3Aox/bHkt7Rxl3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIeJYaKL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC361C113CC;
	Mon, 22 Apr 2024 04:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713760521;
	bh=bxiniitRQwsndYWOO8kLWwGfLSTheoAwRu39N2tSwSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tIeJYaKLYSSyW1e3/PhyOF5ukkCwMmWPQftp3saHQMci0kFS8cuvdo6LuXdp8OgV9
	 Dl4dR2GsU3/MijRtcHIOmb6XuAbL88oKt6HQna/MddszQrzdwogQDvN3AJvzCHxhOu
	 oztUTyjDYb++ahEapDuv+PIVixFKwlxLaLaGDvPY1jpglOw+95Ma8jd4eZEMsHtw1j
	 wm5vCg8ALV8X8rFi7HieSCM0Gk3XRIgB9mPwAN0LLaov3mAdklAHa0INcm/WgJf7ls
	 QaLJ0kviI0Q9DQpM2PSEtam0ZM4xZdL9GElqw4bnVc6dh4vzOcBBOXvboMLnR/KQkL
	 DsV+W+J6U+pjQ==
Date: Mon, 22 Apr 2024 06:35:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joachim Wuttke <j.wuttke@fz-juelich.de>, bug-binutils@gnu.org
Cc: linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Subject: Re: elf(5) and ld.so(8): DT_RPATH deprecated - really?
Message-ID: <ZiXpBp-vigNCwpHx@debian>
References: <643ad7be-1cf5-491d-bd0c-d87e2b260912@fz-juelich.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="X5xS3bOJjucnGBbk"
Content-Disposition: inline
In-Reply-To: <643ad7be-1cf5-491d-bd0c-d87e2b260912@fz-juelich.de>


--X5xS3bOJjucnGBbk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Apr 2024 06:35:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joachim Wuttke <j.wuttke@fz-juelich.de>, bug-binutils@gnu.org
Cc: linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Subject: Re: elf(5) and ld.so(8): DT_RPATH deprecated - really?

Hi Joachim,

On Fri, Apr 19, 2024 at 08:43:33AM +0200, Joachim Wuttke wrote:
> Pages elf(5) and ld.so(8) say that DT_RPATH is deprecated.

The blames are:

commit 28d979c8c7fbdca65e221eca4e21823735f5db8d
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Fri Jul 15 12:06:06 2005 +0000

    Mike Frysinger <vapier@gentoo.org>
    tweaked the short description to include definition of 'ELF'
    add ELFOSABI_NONE to the ELFOSABI_ list
    tweak/add more machines to EM_ list for ehdr->e_machine
    fix indenting to be consistent
    tweak the display of the ELF_ST_* macros
    document the Elf_Dyn structure

and

commit 121edebe2e0b36c3cfc306fbf88bfb6d17993b63
Author: Kr=C3=B3nos <Kr=C3=B3nos@S=C4=81turnus>
Date:   Sun Dec 23 23:36:00 2001 +0100

    man-pages 1.46
   =20
    Link: <https://www.win.tue.nl/~aeb/ftpdocs/linux-local/manpages.archive=
/>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>


I also found a few pages talking about it being deprecated:

<https://stackoverflow.com/questions/67131565/how-do-i-set-dt-rpath-or-dt-r=
unpath>
<https://stackoverflow.com/questions/7967848/use-rpath-but-not-runpath>

> This is inconsistent with ld(1), which does not warn that
> --disable-new-dtags is deprecated.

I've added bug-binutils@ to the thread, in case they want to update
their manual to add a deprecation notice.

> And it is not credible. A huge amount of software would
> break down if support for DT_RPATH were ever removed.

Nobody said it would be removed soon.  But it seems people want to
remove it "eventually", with that eventually possibly being in a couple
of centuries, if computers still exist.

But if you have the intention of using it in new software, or keeping it
in existing software, maybe you could give your reasons to those who
deprecated it, so that either you convince them of its usefulness, or
they convince you of not using it.

Have a locely day!
Alex

> Regards, Joachim

--=20
<https://www.alejandro-colomar.es/>

--X5xS3bOJjucnGBbk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYl6QYACgkQnowa+77/
2zL0sQ/+OGfRVqhpXMNBn8gS0Xi5oaYZ+mAeG02Zb5LVO+mqwMur+7ywhFRzZxMZ
fKQszIX1h1xC9gNB+QG9HayJC6b6nWuySBW/ynMnqAzFXWmQHgC4sogy5B1JQj60
oBG6v7j1TfsblaZE1+Zec23CFYj+xs0raLqqd9INSSxQPIRICW4pryrxo+yqyZZo
o4AfuIq1/e7+HiWBvqillEb+o6iuYgpn85YfLswnqVTJQu7cSvQMjBC5wiCxV+eQ
bviAKqkkCOXlX8AWb41ZgSHh06D7oXRTJkah112BHp/cEu/RzJQKOttSwC5PbVAm
0BM4JXjl+F/D8c2VUYnHGW0Ugu+ifiXazcCvANYrPcz+1XvmAlzzpG/AAOWLwb6y
uyrEhROSUU74tSywfZYwiAyyy4YVCSaR+ZVNDSh2hUBqry9wQ9EFRnUHGhcl0pAj
5mT5zRXmlOCEGGbmhaQjEnr+lNPrfdtIOxQpTCdgPdVsZyrq4r5nVAAs+EDQh3LQ
7M0tNdA708CgvPtZlyfzb5rBMvIsNvqYDaVGSkmqTXH2AkUHVphR1OwabXubJL+i
NL1k0jrKYRq6LviZ1IIya7H5kn33OyHxzAE08FPfEsboWqQvkxmIGFb7fmPpHbmF
wNR+xw4gG30l179aQ3MWzKCnfAyBCF7niiSqqCr6s5rxvbp2iXc=
=YuM5
-----END PGP SIGNATURE-----

--X5xS3bOJjucnGBbk--

