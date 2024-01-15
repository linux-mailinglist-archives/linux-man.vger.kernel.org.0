Return-Path: <linux-man+bounces-366-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A296582D8B8
	for <lists+linux-man@lfdr.de>; Mon, 15 Jan 2024 13:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A6851F222A2
	for <lists+linux-man@lfdr.de>; Mon, 15 Jan 2024 12:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B0532C6B2;
	Mon, 15 Jan 2024 12:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cars6tfK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF3D2C6B1
	for <linux-man@vger.kernel.org>; Mon, 15 Jan 2024 12:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2055f5ad1f2so2752606fac.0
        for <linux-man@vger.kernel.org>; Mon, 15 Jan 2024 04:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705320324; x=1705925124; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8H5SVdacEZQLhBYA1TTFHXs5dmcQXRLsCJTvDPE4QEM=;
        b=Cars6tfKGm0gSfWyGpfbgfNhihAwIPf5wJL+qV/Dq8c2JsUOXaIeIC9CREo+r91Xcm
         qYz668nCPpLNLlFYS7Z8plPr3tF3a+oxqoJb3Iue1SGCpYI708vlRVj4wn2KU2dM6Ziu
         aMlw3003oV345cIWQ5mk0FJs4igVmfqQtC6DI2UvT9I1Z0dJOP7YFCOJwUnJHaBIia0Y
         W2Fl9s4Oi09ts+Di0mp+lYA4rHucxvqEyr+EX2uP0ABHdvBoK4+ngs2NaDH6EwMU9KaG
         3bXnq2xXG23ljP4W7kZLwtkf07O0G5O0hFtGrP+If0N8t1dgvJKOW8Q+FKsXM6UAuV0a
         6ufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705320324; x=1705925124;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8H5SVdacEZQLhBYA1TTFHXs5dmcQXRLsCJTvDPE4QEM=;
        b=GaRHE7OG4XQnsgzKGBJpH4SUUpWOowSSJaWroKisEdUvInJaHJ53+tjgOEbjejKGr0
         PW3S5GKzfvt5bLAcO8mH5B2crw/MD4nqcqjbQwVjJCRBUz1uNFM67Ee3h4ZNaN7JjI8A
         zXyIJCykFLcogxF5BEc5uBTA5yB91OqYP77Kug70/yyiTP+4JRgU7j2mOKRexiuuOrGz
         N46fMxQfuoJBJ8fOfq11S5FXTJsvNqxBK5ad5RSKgj4iyS4Jp5iuZL9AI5ZQlgrAfBcy
         dx2alO9B6vv1ntTtpq7i7ynRarQkm0kIuMh1/m0lC8wc1M4RoV04+PC6PogJFzE/I5b7
         eEIw==
X-Gm-Message-State: AOJu0Yz33wHQhhOvZQFzgoN51AfeT1ZW6VJlRr8wC7U06kxRW+G1Viyy
	OtLQhBzSNIS7d4zCn4sGv2c1R589x8g=
X-Google-Smtp-Source: AGHT+IHzx0N3mgAnwBhM/FjwjBpQkPTAOB+C9eZkeXJweqmhm1QMdTrAgqOVZRNa/Y6ifC5N2ZkaIQ==
X-Received: by 2002:a05:6870:3920:b0:205:db34:8ea0 with SMTP id b32-20020a056870392000b00205db348ea0mr3199230oap.6.1705320323754;
        Mon, 15 Jan 2024 04:05:23 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m11-20020a05683026cb00b006dbfcb7bb2esm1539580otu.44.2024.01.15.04.05.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 04:05:22 -0800 (PST)
Date: Mon, 15 Jan 2024 06:05:20 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
	Ingo Schwarze <schwarze@usta.de>
Subject: Re: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)
Message-ID: <20240115120520.igveghma4xb47gpl@illithid>
References: <20240114154225.5tyuiqrgwyltqmj3@illithid>
 <ZaQmd0aP1XlFiAKA@debian>
 <ZaR4BqahP7QNVxMe@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6xd7akdbbdqzxqrq"
Content-Disposition: inline
In-Reply-To: <ZaR4BqahP7QNVxMe@debian>


--6xd7akdbbdqzxqrq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-01-15T01:10:45+0100, Alejandro Colomar wrote:
> I was checking the book script from Deri (Deri, could you simplify the
> script now that we use MR?  So dropping support for old BR?), and
> noticed about syscalls.2, which has man-page references inside a tbl.
>=20
> That hasn't been migrated by the script.  I guess you'd want to also
> migrate those, right, Branden?

Yes.  This can be done by setting the cross references inside text
blocks "T{"/"T}", where they can call macros.  I'll test this, of
course--calling macros from within a text block can be a chancy thing.
I don't _expect_ problems here, since `MR` does not mess with the format
of the output line--it does not alter line length, indentation, or
vertical spacing.  I trust but will verify.

I also see several references that didn't get converted ca. line 850
because my sed script cowardly refused to rewrite lines with *roff
comments in them.  So I'll search for more stragglers like this.

I will therefore be back with a "RECIPE v2".  I do not promise that the
updated sed script will be any easier to look at.  :P

> BTW, I've amended now the author, which I forgot.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib>

Thanks!  Better if I take the heat for this 15,000+-line change.  As
Ferris Bueller said to Cameron Frye, "you don't want this much heat."
;-)

Regards,
Branden

--6xd7akdbbdqzxqrq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmWlH3AACgkQ0Z6cfXEm
bc569Q/+Pep22HedGb4n0dgZW7sPR6pPYyuIstlp5OafSPMlaFBPOx7kdTMUpoGt
xh/q81AWs4Qk6RR9RoXutYaeVa1z/flA4gpK8QWwdT6nS2UncEtYtr4oxnxDaRRO
YprrCdfal1qyaGEpQAzgD1ZFj5h6ff5YXFLy76Ngh2nFOXj4HdNwjj51O97p+ZuV
v3VOV7T46x0PIxdos0TBXpQXvfk18QkKN+SDyjFlp7ZGKdtlwQFH/U+oG1/vk5Lk
vsHihrrhw9rL3hTRf0CUvm0/2bcz8Aq4kH568vD3sSQYnb54W7BAH5nlYqAZFgX9
DO0OJMiOLzsGftt0Ut8jrDmcFo4WOWJCE0YezKpE3g0ue4KJsIFtyPYDeJHl7yJX
H6h8AqRq/ZAqurRzr297leTMBxuGa8jNmA8ceWAWYk2aeKp/BHhsU53zeGTZaveI
+FOHzgx53xXRo8EFOdQLlePt117ebWUq451pMBAfd3k0Uun7q9gzCRi2KiWmy88/
OMNEueJXIW0dsePw7Qz2tn1UPnwVKf/GdCKSzrtkOrbRdGdHAfhcuLs26Vrx5Fts
wTZAc5uJhzhwTemKWe7TjnU7NOrVyfHvMUBrSmuoS5ra5DQD+2UFqcTUsFUGguKL
R+UZnFXokmkDAbIR5r66rnAdD36Cw70k6lqFzvstLjBQrIsbBKc=
=cqyI
-----END PGP SIGNATURE-----

--6xd7akdbbdqzxqrq--

