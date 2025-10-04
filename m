Return-Path: <linux-man+bounces-4040-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C3FBB8C25
	for <lists+linux-man@lfdr.de>; Sat, 04 Oct 2025 11:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D4093C3F36
	for <lists+linux-man@lfdr.de>; Sat,  4 Oct 2025 09:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D835B26A0AF;
	Sat,  4 Oct 2025 09:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kzsRg6rE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D41D257AFB
	for <linux-man@vger.kernel.org>; Sat,  4 Oct 2025 09:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759570970; cv=none; b=cndXHOV5rOZ8JWI8xtlOmQ/NQKud/wpCD/K80K/dWoEE1bmrvZy28wZXWLussys+9UD2FEU5EGJgx8oS5D8I5CC3tnB8HpZ0u9aOc1sTWiQ6RERag5ppbm5fbI2aJ5eNv29ZfwznOsACcmhaeJ5grcsnjKMZx/X+sjcqDPsCbAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759570970; c=relaxed/simple;
	bh=+myWwjl6Ds/ax0XGjIb0H/vnHi992C8YU7ZYK3Fz0/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ckV2c1TVcAah2fmxxTkaByfVZtDefhptRVZS2O5XLws4aVGjNK9hYFgM4uaK0p8z9m+oAR8FXT83XQtZfUUOgMMJa26DKoU5v9wdM+9ubUc8S1ZzqNrQf1Xr4uZ52UN5QjeAo7XorVpt3MPrxyrKCzyo+UDeCnfgnLEoAuSFSE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kzsRg6rE; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-71d6051afbfso34908817b3.2
        for <linux-man@vger.kernel.org>; Sat, 04 Oct 2025 02:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759570967; x=1760175767; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IOvshYXgNhiof0ovRmTYPPWdEaXWFp59oM95LfGl1n4=;
        b=kzsRg6rEp5rOvqRgMbuw9sidS95xYP0JaTKWW1Il9g+JHC26B336f0XL28Asx1pDQu
         WRS6pVpeApCkIJYZl4rv1SzURIgjboE6UrJ3b8Eh3FmHW1qfYTTsYJ15dYb3ZnOKqjEA
         Oa/3PyDfSjWfC/n27z0Ay6XMSMibNH0aGhq2tBLLSRVsEifwKeOzmAOjtW63iAObUOxM
         Gw6p9olnNeL644w4h4WuMWUG0xxHiPX0qUHF0vw9tVi4+XsbvIQjm7sNZRXQlzbpLeI1
         UaTlkfWUk96M9MvWWVaCQ6wsJIv1rshQFeIO+aXMfYAIeHhpEcnL8gaeaDWMRd8s1ls0
         9K1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759570967; x=1760175767;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IOvshYXgNhiof0ovRmTYPPWdEaXWFp59oM95LfGl1n4=;
        b=dleIM9Yyyhu45PdzNYHhVwg5IsUURrGrP40Je7ScbKtqjGnA2fqIRif+DPMjlXI2Ht
         vGvTHVxnZT5MWCaxyqd8Pfl2HRNIgXL6Z2kcdzh9EVTiJ48ZkYFKh7kv8jr3CET8yUzT
         FBN+YJ5vQnc6vwhE+DyGXtaukNdKTd6kha/GHklvIUx5js3rkVShm1Gl7pXAZoNyIWDh
         d2Si/1xgtLnlCUnrm7cl9JlC5nRKxRHsEwA2TkkQmdIux64VvKu5DDyJUccmF2TuXa1R
         y72KyLR75C/PLFy7EV0idpSs7Xid+h0vlPI3YfeKSK4WTdWOgWgtYVXAmQv5FIumn5Gv
         6cew==
X-Forwarded-Encrypted: i=1; AJvYcCUcpKUoV42oK0srOF6Z2gIY0CBqqeMXiVYeYPZPgieoXArTZtBw68aRySRJVsH06qhnZYqA8rHn1FA=@vger.kernel.org
X-Gm-Message-State: AOJu0YznrS+E0QqoBHk/pb1peVOf9esS2EjDVa2cHbCStR308RhtWpvb
	znMxSYaeX7AEp2KeS5lXbMLqQVdLHOcd1arUMc0OalIG0tErYuiWX4bQgEjO3Q==
X-Gm-Gg: ASbGncvaXyoJZwkJFUk6882Qs1jbJ4P0WA70zvb5zcWXXy9sklnLpkm8TSbKvbyutVV
	KUDuiSGDRg5VWkAMfo81RPhHapskjvPKxHgkUAdYQM77SUFWsGNqWcPPDx1XCbH01AZGtrnDeFx
	ivoaUp64tB+F4JphQ9YDb5Re37pdRaH+zmI340Zinsk6ygdwlNGO3wXefz+/E5+YWXbKZ3US6dq
	aqBXhhNj6toVq+G+mVjBOweNqpWVe+vImksRoZFicXfCwbz+lRa83OFb7jB2WHl3wOgfZGCXmab
	Zrkgd/xgRL/3MjpJxBHs+2eRUo7sB1zvzbQ77DzifsQo8HbwE4mbAkMF+AB6m75jbm/CyFFuFYP
	4SIDynaPSzbXFL0MZBvLdy3OjOa/R9y7cHUfv5lYnZbq8rzY=
X-Google-Smtp-Source: AGHT+IGkUmzuttboeLGWIlqJbjYiMyuHOpGMLvTCjErR+nNiTZNgEGELk3ehSluFw/pdm2kl5aW7uw==
X-Received: by 2002:a05:690c:34c1:b0:76b:84cc:a06b with SMTP id 00721157ae682-77f9456390emr76482987b3.53.1759570967069;
        Sat, 04 Oct 2025 02:42:47 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-77f81d3e820sm25316937b3.47.2025.10.04.02.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Oct 2025 02:42:45 -0700 (PDT)
Date: Sat, 4 Oct 2025 04:42:43 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <20251004094243.avg4hvwwir7ink5u@illithid>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kubwl3g5au4bbetu"
Content-Disposition: inline
In-Reply-To: <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>


--kubwl3g5au4bbetu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: '^\}$' is changed to a space character
MIME-Version: 1.0

Hi Alex,

At 2025-10-04T11:16:06+0200, Alejandro Colomar wrote:
[snip]
> > -l l.
> > +Lb Lb
> > +L  L .o
>=20
> For consistency with the rest of the project, I've used 'lB' instead
> of 'Lb'.

Okay.  That happens to be the precise opposite of my preference; I think
the column classifier is the more important property and column
modifier(s), if present at all, less important.  But tbl(1)'s matching
is case-insensitive, so it's purely a question of house style.

And consistency is king.  :)  Or co-king with "clarity"...

> I like this change.  I've applied this commit:
>=20
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3Dfa940b6d17791a166c793b74a50cd72926d14b50>

Looks good to me...but it _would_.  ;-)

> BTW, in the PDF, the '.P' doesn't seem to be working.

> <https://www.alejandro-colomar.es:80/share/dist/man-pages/git/HEAD/man-pa=
ges-HEAD.pdf#vdso.7>

Hmm, yes that does look wrong.  Plus, I see too much vertical space
_after_ the "ARM functions" table.

I'll get back to you on this.

> I don't see the space before the tables.  Compare with the old PDF:
> <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-=
6.15.pdf#vdso.7>
>=20
> > ...and so on similarly for the rest of the tables in the document.
>=20
> The only other one I can see is syscalls(2).  That one is a bit weird,
> so I'd like you to have a look at it and tell me what you'd do.

By "in the document", I meant only the vdso(7) page itself.

I don't know if I have the spoons to tackle issues in syscalls(2) before
I follow up with you carrying my sed(1)-driven bucket of thunderbolts.

Regards,
Branden

--kubwl3g5au4bbetu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjg7AkACgkQ0Z6cfXEm
bc4T4w//ahZ0lVXBZWPgkXKh02tYJRoYe/ujEC+Jmy2ePRPEPyFXsYe+cD13HhTU
lQ7Nyx4EQNo8QX2wfvJbTc1M9dMn/RsLl4DVEUt86c8XTRUZtGuOLnyHz7sVLHKh
KrhRMP8Sbj5UTeGlBU2SGKoXt976Dwnc9t8C9KCTWe4Sn0Mvew40cPDPCCHU3/Oh
QsMKxaYmGmcH9TJd+PQLAy5w4Fr4E4lwK57lknS3kfkwqWKhtphy1DarXL36L8vG
bFsI+HtHbuPvFWJ6mv2gK8rkGV3DCReURM/7QVOo3OJaLgVdgQNnk1eXmhriRHaw
QwKf5XVFKx8XaNax4qrhsY/aVog0W8gDtbCJxkE/1Jkaa28arY1+do72wld4H5qk
AaaDs2TKEEHWP/HScVhrSCtzu4xAFx5jZOk/skJSeAfXuJr3z2m+neOIZwmYIx+s
tQbWWp64YuU8S4ltEwmjP+L6atK5ztqDlIKnyXx3H0F51lrYq8hIUgLSBDLwggP2
AnaT0JtVYQ48pm2aGf1Q0sJKDAboASLDaeQ9kVM3D9bRcTEMXH1Tj/9qT0p8lsjj
K7JBe00lrcliZfuCXI1KCFmSmGOMG3rGejguKgYcuY75hMN1oDlXSnRNKb+5yak9
3OY6sD+QBLXtRPYnpDTlN7tpvhHNFFIrJFJojh4oE3nL2sN4x9Q=
=RRyi
-----END PGP SIGNATURE-----

--kubwl3g5au4bbetu--

