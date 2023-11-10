Return-Path: <linux-man+bounces-5-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D197E7ECE
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF4D81C20DC1
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C27E53AC35;
	Fri, 10 Nov 2023 17:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D2ae/CRu"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590EA38F90
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:46:33 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32BB059CC
	for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 22:15:41 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5409bc907edso2707466a12.0
        for <linux-man@vger.kernel.org>; Thu, 09 Nov 2023 22:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699596937; x=1700201737; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ocKfxHY0kQsk7kDDV25CWbaI8xk1oBxgwxAa92KGYXs=;
        b=D2ae/CRujY33gE1owNq5n8cx8hkOPx1ddEJs7wboO9VPs+Cwiy2wPEAWNYfRnzyNMn
         fBx651s+H1EW7+12POp+kvGfwwM1cFxzXniEhYtI8b/l/esaEQYHtrsA+LeboWojlJCX
         /ShGzarRffU40GNEFxjJl68zf+3TXclPNoOQfu8c4dE1mUCG+VFsnlGGZV2V7ZHt5n0x
         e1HuPp7mw5IEaYWUFyboWzR+/BCxa+DLiE9D/Tb5KAivX3buAmTEWFjg8x1rMgU3ifaa
         OUtyXLm3SJHGmEaFvN/K7D0Qj+lQkES/WNReYOi7594LG61yv6FPFe1DigeulhRzyzfQ
         0fOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699596937; x=1700201737;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ocKfxHY0kQsk7kDDV25CWbaI8xk1oBxgwxAa92KGYXs=;
        b=ecv1CkprcBj1cl60Mhlm+OXBkM2PNxarrIku5akOZkx3aMwukJQ+sssP9x7LrKBVH/
         N4DEF/M2OR6li9z60aXiyGz2EkgB22srTvzR29pLyCypr0owZM69wmiVrlatBKVYA+dW
         HlqXRCZYBOdPLRFBiNhw1ZOFxwwdywPGYVlwQ6pJV3H631FEk0b0FVIbn/lg3EA+fUpI
         Uc2+TYDKqy1cMUy7TyXvmuUGs3VSk9M1xsBX1MLUocRW4CDQ+cHw3sSMKibRbE8KRsYh
         hVbgSbxWtYLyP/pDsgJOXcuDJ6tpLnf51ed/Jqaaygylu3UG4YakdZUUdYnb3ryHXwet
         4/lw==
X-Gm-Message-State: AOJu0YzAv8dv7EwLbYCiNCNCfVjmVdL+ez7XiGYA6RMu6+cc+00PcjrA
	lAlvKwKN0Lx4Xryw3Jo21nbcVC3Ga5ptOw==
X-Google-Smtp-Source: AGHT+IG38pDcgp6diJpVzwpiZCovN5wOW4EOG/VD4f8aTzs0i8O+zJuNCb5F1hKZCV376oN/JqL+8Q==
X-Received: by 2002:a50:8d1a:0:b0:543:6828:f129 with SMTP id s26-20020a508d1a000000b005436828f129mr6539425eds.23.1699595262100;
        Thu, 09 Nov 2023 21:47:42 -0800 (PST)
Received: from dj3ntoo (223.sub-72-107-196.myvzw.com. [72.107.196.223])
        by smtp.gmail.com with ESMTPSA id q18-20020a50cc92000000b0052ff9bae873sm702098edi.5.2023.11.09.21.47.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 21:47:41 -0800 (PST)
Date: Thu, 9 Nov 2023 23:47:34 -0600
From: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	Jonny Grant <jg@jguk.org>, DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>,
	Paul Eggert <eggert@cs.ucla.edu>, Xi Ruoyao <xry111@xry111.site>
Subject: Re: [PATCH v2 2/2] stpncpy.3, string.3, string_copying.7: Clarify
 that st[rp]ncpy() pad with null bytes
Message-ID: <ZU3D9k-7A6WN17QD@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	Jonny Grant <jg@jguk.org>, DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>,
	Paul Eggert <eggert@cs.ucla.edu>, Xi Ruoyao <xry111@xry111.site>
References: <20231108221638.37101-2-alx@kernel.org>
 <20231109151947.11174-3-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uON/DqL1fr2SURN/"
Content-Disposition: inline
In-Reply-To: <20231109151947.11174-3-alx@kernel.org>


--uON/DqL1fr2SURN/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 09, 2023 at 16:20:39 +0100, Alejandro Colomar wrote:
> The previous wording could be interpreted as if the nulls were already
> in place.  Clarify that it's this function which pads with null bytes.
>=20
> Also, it copies "characters" from the src string.  That's a bit more
> specific than copying "bytes", and makes it clearer that the terminating
> null byte in src is not part of the copy.
>=20
> Suggested-by: Jonny Grant <jg@jguk.org>
> Cc: DJ Delorie <dj@redhat.com>
> Cc: Jonny Grant <jg@jguk.org>
> Cc: Matthew House <mattlloydhouse@gmail.com>
> Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
> Cc: Thorsten Kukuk <kukuk@suse.com>
> Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
> Cc: Zack Weinberg <zack@owlfolio.org>
> Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Paul Eggert <eggert@cs.ucla.edu>
> Cc: Xi Ruoyao <xry111@xry111.site>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  man3/stpncpy.3        | 10 ++++++----
>  man3/string.3         | 11 ++---------
>  man7/string_copying.7 |  3 ++-
>  3 files changed, 10 insertions(+), 14 deletions(-)
>=20

=2E.. snip ...

> diff --git a/man3/string.3 b/man3/string.3
> index aba5efd2b..bd8b342a6 100644
> --- a/man3/string.3
> +++ b/man3/string.3
> @@ -179,21 +179,14 @@ .SH SYNOPSIS
>  .I n
>  bytes to
>  .IR dest .
> -.SS Obsolete functions

If you're removing this section ...

>  .TP
>  .nf
>  .BI "char *strncpy(char " dest "[restrict ." n "], \
>  const char " src "[restrict ." n ],
>  .BI "       size_t " n );
>  .fi
> -Copy at most
> -.I n
> -bytes from string
> -.I src
> -to
> -.IR dest ,
> -returning a pointer to the start of
> -.IR dest .
> +Fill a fixed=E2=80=90width buffer with characters from a string
> +and pad with null bytes.

=2E.. shouldn't you also move the rest of this up to keep it alphabetized?

- Oskari

--uON/DqL1fr2SURN/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZU3D8QAKCRCp8he9GGIf
EcrWAQDpOg+BkGyARWxMIrgLoi1VFmYZx9RfeOLzm9bao85QuAEAtOo41idaj+H8
LF425rfMWujmFhUUbyt+GoceIeJSEgY=
=Mpii
-----END PGP SIGNATURE-----

--uON/DqL1fr2SURN/--

