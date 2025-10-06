Return-Path: <linux-man+bounces-4049-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 957A8BBD63E
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 10:51:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 169AE3B4B4D
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 08:51:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62146262FD1;
	Mon,  6 Oct 2025 08:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z/xQt1qj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8DD20311
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 08:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759740715; cv=none; b=tOXbXJHF3cfB3VZ4DJanvSgNedO6/t0A0+hfvSisTK58Qe2vwAeCNU60ifEKrkoxqNdym4buSQorVlpHhZt9zsC0YxtcNvz7+NXBBjQuwqpCjER65l1hV2NvgiQyN8rJ9qyvIg1j7D0pNX/3aHoZT5+22D52w7W01pdMPd6Xy90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759740715; c=relaxed/simple;
	bh=lEoSN0OSdyBbqJDMYj6V7xeOag1uSfkjXgFBQjkAw7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DQZBETwZNF1pn1NHCQdSzISnaw9bRrPfbRFTLanpTQ0BhtJeNJNZQKTl9Rh2ZMWma2vGIfh1pRyCNgxXjow8yonnB/9yC0RZwj6rMN1RJEkAXgkT4yL/F3XdYyi5+3EF1RzN8oB6X7pGHgBjBcHFBSYRfq4TZ/bIL+ne2/Q4OrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z/xQt1qj; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-71d603a9cfaso49710347b3.1
        for <linux-man@vger.kernel.org>; Mon, 06 Oct 2025 01:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759740712; x=1760345512; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3zNkANMFVfc+NB0xeESCIoI8o6DgyUgtJgoTscr9b9U=;
        b=Z/xQt1qjx5klyb1HXIwwOyF/WPLYUl+oq+Gkll9bk5kx5rcqyesTWZCmrrUK1ZOics
         w5/bjvAJ7D20BSAlh3jRWQ610Qa2T826oLJs+OySH0OKIS/WlhQ3K7juCGzuKhRM52KF
         EsT2eB6sVtz2tdo2fc8BvKMz+VxlPlrLshYswJsYHco+SsEWI3E469yCayiSlfcrxKHn
         hfLcfZTiiVsS+ixephIWhZItOJ4sdrrAUuhF2ZWNfzz/HUsiq1uiHkodERNFuwbV791C
         pLYQr8e7Pcy3hIABRhTfZzoVd/Y3c/0Jrw7vb7Qh0D8djRu7HMGufqvgyyn5mgJBROsH
         5/Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759740712; x=1760345512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3zNkANMFVfc+NB0xeESCIoI8o6DgyUgtJgoTscr9b9U=;
        b=dKI44wfpj7Zb/OScA2P72faRA4ku1Dpb9Izjdjf2HiaL3LOU+x5KlTXhjPnNHwzyQx
         abuUdYN+kik94bfe6eHsexoU8mbneIcYcM5VB7yqFXahIp6goWf+muvMObUp0zpaJ8/L
         syGgRwjM80EeCFcPp7mu/WYy77Oqh5IhXALu7QGy776h6mJp0OLIGEBvsel04oWL6ijF
         b7OOFdMVv8OZ0zBnPyiJ41XBzvXr4eJbiA3+UUK5RQwrXWee79JgqB+ScBk4s6omwinA
         urr79/ygSw+3G/IHHn9HpVlWIgHlBglRHxzfDlLpq7TRqOlfaRqaMHAHaHNopg+/jA/P
         xXzw==
X-Forwarded-Encrypted: i=1; AJvYcCWjiv97E8eO07vuYRrGE6xE8ovGYq+pnY4xq4YpP/sDlDwFmwnjUiSdhrHDfTqpDbgYaBtRj1M5jtE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7wogtVTIwTHL3rN/KBruGR1EHIF6kJKHpm4CCMIzB3E5q0c/F
	Lv4QZybOgYUCqERpGP3rU+bHpHdF9EkZR3WG5WFzLS3hA9u6w8nCgGxdquAM4w==
X-Gm-Gg: ASbGncs+OLZQZMotv3nw6rdlIVX4jgwom9i4XXlwn0vxkDHhu6Sgz9APUNZCir1y77X
	nn6k9hS1aML7ZbBXv9JfDRl5Zlcvs6kcR71GHK0nbsIrQEzRdIgdwccQdv6HwLyC2dK1gKAAwVd
	wSy6UHEogvEISxyFeCMLs5BbHiwkV5CAqWwFz713gDam+8bjPzHWexjZ72YE8Ty4ddDyIhReWBP
	5qODCt2545y6E1QCpDbs/TEDAYh19zn2449gGNCfK4YmgL9e6BvcqtdUEMxOmvwN4PsJJsiX9ef
	LPiJsCOGAA0Sp5+VRUAJToXJ8smNzM59QhxKiXX9o5Jeyeic1ocNneF/BnQQZdcrH9ondTim+Ya
	GIUBTtLQM6HNvROn+QCgCuS3WLVRhWoph7yWGpaF6diwVThs=
X-Google-Smtp-Source: AGHT+IE/J4QPVcofqTPEFLLACS1gCek/Pyv0KnMwaHaBWWbjkczDAhuKhY/NScNHQSDfdIX/AcPU/A==
X-Received: by 2002:a53:d983:0:b0:631:559c:7417 with SMTP id 956f58d0204a3-63b99f3a4c0mr10996979d50.0.1759740712424;
        Mon, 06 Oct 2025 01:51:52 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-77f81d117b6sm41521347b3.37.2025.10.06.01.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 01:51:51 -0700 (PDT)
Date: Mon, 6 Oct 2025 03:51:49 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: Re: '^\}$' is (not) changed to a space character
Message-ID: <20251006085149.oor3kddfih63yutt@illithid>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="upuxopez74e3jc4x"
Content-Disposition: inline
In-Reply-To: <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>


--upuxopez74e3jc4x
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: '^\}$' is (not) changed to a space character
MIME-Version: 1.0

Hi Alex,

At 2025-10-05T20:47:02+0200, Alejandro Colomar wrote:
> URL edited:
>=20
> > > > <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man=
-pages-HEAD.pdf#vdso.7>
>=20
> Shit, I forgot to remove the port when pasting the URL.  Hopefully,
> crawlers won't follow it and DDoS me again.  Otherwise I shall install
> Anubis.

As an obscure ficitious personage named Eadric of Deorham once said,
"they'll always find a way".

> > As Bjarni pointed out, you probably want a *roff control character
> > (typically `.`) before those closing brace escape sequences.  If the
> > branch of the conditional is taken, the closing brace sequence has
> > no effect itself on formatting, but the blank line that remains
> > _does_, just as with a `\"` comment.
>=20
> In that link I had already applied this commit:
>=20
[...]
> 	-.if t \{\
> 	-.ft CW
> 	-\}
> 	+.P
[...]

> So, I expect the explanation shouldn't hold anymore, right?  There are
> no closing brace escape sequences anymore.

Right, but the excess space in the document should not still be present,
either.

Regards,
Branden

--upuxopez74e3jc4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjjgx0ACgkQ0Z6cfXEm
bc4UwRAAkSkXsBeTruf6fY0mJlV6Ao7VFz2iZY/K5YMmBpGHp4xQUn0BFD5aJ0Ts
DjDN4WN3fFZAel5SLQ61Ilaj7YakYEdXVtpxIDLRKmY5l7Y8UB7OKYpmsYVtSpAc
rkzfE0EM4Zg6MpcAR+j7pKWocAj5pq8IUJS+miv+fRxbakbBDZo7rap/4QLmA+Ox
WT6p1K746OZpAddI9QU43ydM+tfhiDUaFsb/pNQKQbPWtSe0qoZaM3qu1oTlkKIk
5T7lmuDH2j43qgnOAweLcwm8ATm25JgteokPltzfiOlM2bp4d0Yw1BT/b1OH86if
D3PoZfsx7Fn9zWDscoQ3UjBk90qtmw73tGyqhHOfdlFlW3VvJV71RzgyV4Ncj+xT
bUnG4TZwGK9vIkJ+nlBp3gkm0vg4syEVNZh313gxg5X1bMeinwJqK/QXzJbY5Gd0
XaOj/pMQMgvfEb5Frw/apFNzTuQlmTLXMCbfhoeVR3i2SET2em17yCaWrJz2ET/O
bFhsaCQOksinwFS1QnoFGbMRzBC/+mEkqeQFwToyCRo7uoMOh6oA+CpqKRLXp3vi
qJ2Q8mQSt4AoKRAFvbO0yTIdOxYfJgKrD5jWStpbuj+MlHjmuzxR1EbmIsUMJXzY
K3GOOievtpxDY47woaFASamgGYcrmB/ES8E52GL5gp1auOHhfco=
=aAsN
-----END PGP SIGNATURE-----

--upuxopez74e3jc4x--

