Return-Path: <linux-man+bounces-1657-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 814C795BECC
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 21:24:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B12591C224B0
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 19:24:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713BF1D0DD4;
	Thu, 22 Aug 2024 19:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Moq0AYmx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31690AD55
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 19:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724354682; cv=none; b=Zqqk/Xzuqd0KcR0aWypreuzyyKJvuljNwUjITGkTsp595IB3xuzMbh77FPiaWqKB9bIv6X/0htgQTUEMV5sFMYGPMwKI/LUDyq6UyRsyD+fCtwMO6tzXfeFGBcT67/CNz70WWI20EzEnCL70IkWHp/pIui5pV0BkRYFA9ydIkpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724354682; c=relaxed/simple;
	bh=P3LMCTIVosboFF+3nn/+UHHs3rpnZKdIyRaBnj7uscs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NZtbhnq1OJ5K0/pSARU3FY3LCyRaWxb3ZPg1oSQQE2EYMRhwqxmIW2vr12q0hs/daf8MSohUL93VYEJhCA65+5sKmV2tH375tcGEYcVqYKplj5KR6Gn2ndmA3TAY1n/rOAEpFd45ItKwlZc6b7FfuIxtwOQwO1TK+0X7uIBfMYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Moq0AYmx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F59AC4AF0B;
	Thu, 22 Aug 2024 19:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724354681;
	bh=P3LMCTIVosboFF+3nn/+UHHs3rpnZKdIyRaBnj7uscs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Moq0AYmxzi8Q3fKB1+MgXVTFnhFOALnijMewyT2fiaLM0/N/wvcS4ynYedeuwTCvf
	 GslXa6zFn6DX+qqWiM31Lgo475sZnG8Rlh1nvLUuxbgx+1YwnNuWMtX3BvRJEZHujN
	 hrBBmJdsjzci0/uYc3z4LOXBCYdmVkFr0hcG03KPOiDLh6iXJ8qUkZqeG/yub7slGO
	 Wqq8MyDEfCSGpRTDrT6rC7y3dK4ZHvgobGRYZr8zGYYASBKHDfOTBPJsOt74tVk+RA
	 DwReCAUK19i0FRtJ27pY7/nuLq6UkSIon5MyCgWJOM5TgeQBS04qINUNC/7lLF23oy
	 CUSeeja9us4TA==
Date: Thu, 22 Aug 2024 21:24:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, 
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: arch_prctl()
Message-ID: <uzhkcbjxjypbwpzvdqlgukiorrgfn7hc7oe2m76r36kahpreun@wextt7canmee>
References: <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
 <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org>
 <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
 <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>
 <lnrhoiigxf7ft6p4lv7x5euyeu6qwdqndmhjxr36orkaxztrkw@qsazxkgfyzvn>
 <CAJgzZooftn7zPoSa8_P+OuQ2rH9ZXnsFnrZXcHA8oxXq7q_2-w@mail.gmail.com>
 <zhim7duq7za34iw4zhircvsp2zx7fm7cw7ic2t476ncar2hubo@4ikcz6zekspp>
 <CAJgzZooJuS92W5bbr_jFu_TYNJ-TwkpmMnv=3_FTcv-mxg2xnQ@mail.gmail.com>
 <CAJgzZooK43s5A82+RsmnMmLcj8Y2+CTOFENYekz2tu66oaJchQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n3sdazjg3wbgqjgy"
Content-Disposition: inline
In-Reply-To: <CAJgzZooK43s5A82+RsmnMmLcj8Y2+CTOFENYekz2tu66oaJchQ@mail.gmail.com>


--n3sdazjg3wbgqjgy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, 
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: arch_prctl()
References: <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
 <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org>
 <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
 <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>
 <lnrhoiigxf7ft6p4lv7x5euyeu6qwdqndmhjxr36orkaxztrkw@qsazxkgfyzvn>
 <CAJgzZooftn7zPoSa8_P+OuQ2rH9ZXnsFnrZXcHA8oxXq7q_2-w@mail.gmail.com>
 <zhim7duq7za34iw4zhircvsp2zx7fm7cw7ic2t476ncar2hubo@4ikcz6zekspp>
 <CAJgzZooJuS92W5bbr_jFu_TYNJ-TwkpmMnv=3_FTcv-mxg2xnQ@mail.gmail.com>
 <CAJgzZooK43s5A82+RsmnMmLcj8Y2+CTOFENYekz2tu66oaJchQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZooK43s5A82+RsmnMmLcj8Y2+CTOFENYekz2tu66oaJchQ@mail.gmail.com>

Hi Elliott, H.J.,

On Thu, Aug 22, 2024 at 02:05:33PM GMT, enh wrote:
> On Thu, Aug 22, 2024 at 1:34=E2=80=AFPM enh <enh@google.com> wrote:
> > > Redefinition of transparent unions is allowed?  I'm not sure; at least
> > > prior to C23.
> >
> > huh. i did not know that. "works for me" on clang, anyway, and seems
> > like a good argument for the transparent union...
> >
> > i took a more careful look at the code i can easily search, and i found:
> >
> > 1. extern int arch_prctl(int, unsigned long);
> >   the most common choice, presumably popularized by the kernel source
> > and the man page.
> > 2. extern int arch_prctl(int, uintptr_t);
> >   much less common, and compatible with option 1 anyway.
> > 3. extern int arch_prctl(int, unsigned long*);
> >   very rare, but used in compiler-rt for tsan (and at least a gcc
> > hwasan tests?).
> > 4. extern int arch_prctl(int, unsigned long int);
> >   if you're not into the whole brevity thing.
> >
> > so actually the transparent union is the only thing that's source
> > compatible with all the existing code [in the corpus i have easy
> > access to].

Good.  :)

> ...except transparent unions are C-only, so we'd need something else
> for C++ if we went with this for C.

Why don't they have transparent unions in C++?  Is it just that nobody
cared to implement them?  Or do they have inherent problems there?

Anyway, a C++ project can probably compile a few objects as C files to
workaround that.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--n3sdazjg3wbgqjgy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbHkGkACgkQnowa+77/
2zL8NRAAoyOVw8NilFVEsopOCOMUltPoLRCrujCv4jojsbkEwoJ+mwSe6sCXa9/4
SOooSGeQuMnoxQt0Dow9q/68Ne6jxKVpIbxSTBxFt6uV9xuTMs4PMOrZN4cxYfz1
81gziEMA/PPGkfBMvebCx7wa/hoqH6lnXhpZurL5hZR1UXsnaNV0w8ZDAhPwizn2
4hlF0BykTukUL8j0DJdxqioQ93wWq0fPuEJUvsAUYaJL152z5Tspm2T03ToJScBS
HZNidt5ssnXEW5WjNmFlFhdOrbWJENZQgW/P2I8afRDivGuem1RSiZGM87eopdaB
1t78pDArsa4v2TwvHgrhEGwsNVSl+CLbB7jJTnncrMTsJbUjD/hyaegst/g6TFb6
oL7NbIUT/RWJpPZPOpEetdMWbCTTKEnHdYimyUPsj0vtXc9KCu5H+a2QjQe0IrPK
EYIp1kzp3aHl5hrHWr6CSzJrnrUDkePMXrnIAuE93C3wfFDqNZ4KDYIp8Lsh2EVR
lk31YYUWr4DaUnrQi2/WOsD+px5alwpks2OYrk3aObs6O3qPwiZCw5ulrIpMPymA
WI9/y6ekGkuVv9Mf9DFvuSgvz6d0EsEPpHizeOYk3L7HsHRX736079FRdFNgZFWQ
56y2KTpmKCChwmvs5+6wtE+NQtv5G97VQDE6yaQzV0q+ixTjg+Q=
=KU/T
-----END PGP SIGNATURE-----

--n3sdazjg3wbgqjgy--

