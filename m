Return-Path: <linux-man+bounces-2753-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47368A80978
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 14:54:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 940CA8C6BE9
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 12:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1330C26E151;
	Tue,  8 Apr 2025 12:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OOQ0GEFl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B5E26E158
	for <linux-man@vger.kernel.org>; Tue,  8 Apr 2025 12:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744116163; cv=none; b=Ffr4lykSuesZHC2wzbP+g+a+ZpEEg+6uzoiQ6oN+r9cNHKcEzsa4nD+on+04fe2fF63SHNN4PDyle1Tb4SgsMsYpXpKDWRv3UE/GukuSeY8rYaTsRTv/Wuh2dlZJJ3wbaZ8gg5/+81mQydy4SRDZ66wWMt8IZaHV3uZR3/Apl9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744116163; c=relaxed/simple;
	bh=wC4ukLnfMeydAuqCL9/n59ZVGHDD61UEViILxfIPHds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PPgGRUN9LN3uW2OPGsNzR3nLa5PU/i/+Xh5+te9agqb19Uuhm6kkZih55lRDZ2ZjvEtsJmmc3ARY6sp4Gj1U+DQDyCMWwY5xfCisHZA2vMNP7y+G6Q0TjMvmCFX6HUStilAC5mhqf/7M6Gx6y/Kzg/4PJfAiDw81x+bMlVcwYD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OOQ0GEFl; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-72bbc03d436so3377239a34.3
        for <linux-man@vger.kernel.org>; Tue, 08 Apr 2025 05:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744116161; x=1744720961; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S5TMaxhbhII1vC8bmSEvEmCyi9FrKzqNbXNg9BZHTSk=;
        b=OOQ0GEFlytaTXwhGDAZazdqq4dYztrYlT7onud3T8j8vj7ouQdl+6mKXZRiJoFa2dZ
         lcKkBHsfcv3LoLiJrjbEnhPSD4glf6xorSaEVNihoelQYgmm4XfFYRXtUYIGSH8yyRId
         1Ff+nALjuPYKPiGgZzxfHTVegGMbK1ZC4Qzl3ZhEMzoDNfUJmJ2KEgc/VpAB9qg6w0L6
         S6jZitL9YRKqc/ScROXgCgtF/S6BPXvw0xaz9F3z3FE9cVpORUSDmKz5r0EyIKiFUql2
         6NKFfPLYwq1mf9jZKZXLHWspau0pe1HEDVocXxq4dHSvYxPB4uRmWqQ1sHmCoyyCAQ9H
         uFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744116161; x=1744720961;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S5TMaxhbhII1vC8bmSEvEmCyi9FrKzqNbXNg9BZHTSk=;
        b=c5Yv9LkxXKte3P9cYlvDHPfmHAAQ4WAI9cLb1Wdp3E92SKxHUFcnbG8aO0l6YODcjo
         G9XUyJODenL0o/4okvA2OnXgnJuNaMfPCElX4qBrb+0dQlzdvzHY2B1Jt/PvyFvrr5sC
         h6dm0NW2cyLw3BsYRXhRcjOsoTVhViUFU20E+ne2V+EiH3PDB8FbIwUF1yKXNG3WGEMw
         OiNqoyKghPqddEwAxlD9PC9CjruXO/gCNfXYABGb9x50zmXHydlBgciY1ekJtMQDQMTq
         Hq8Yuo491+uFR1mWnoiZXZmuxky7PFk7PPeAlu4gOHLLB9WLorDN/h+XkOTBHJ4garCa
         Y88Q==
X-Gm-Message-State: AOJu0YwfQQRxHqnkGQ9pieHzQg58fYNCeGEHryTfvTCG3XwkU4YpPcp8
	lj4uRJXWTfQEgA3yjXpoCQM9ElfL2m95sIFCfzredF37j7nPUsBteKBnLg==
X-Gm-Gg: ASbGnctI0LDjQqMZagBxzlw1ZHTG3D0xTNJVQ1AfgAmI+fPIrjt0jWqJE8qpD7BSInW
	BNE8njhVyqBTi7nAWCjoPYDHTixq8RoC5DkIMMVSnngGG60GmB1pchUKSjrFAgMvLWpvWGRXpMs
	hlYqidlrGffsFQxT6n+nzp8Co5nJrNpGefERQpCcWz3iPQIHkeEfzW0V4Vc6rJM1432QwqKy5JU
	gs79SnlbBBG6iIhplUyU9OM3q+3hjjYjOnip0kL5PBWhoL4Lw2pxJQKN4H/sVeB8R4PVDPmIeJ9
	t1yZkjVFhHPa3cxV12YSuqsmMdCJWkBKEho=
X-Google-Smtp-Source: AGHT+IF+SHAUVGLxL4nBTGs8pP/9LYe1cYWSsWSyIGRZXK3xMTcL7kdVdWGAdgcZEGNsCOcx36VCjg==
X-Received: by 2002:a05:6808:201c:b0:3f8:b73b:682d with SMTP id 5614622812f47-40045648e7dmr10815805b6e.32.1744116161084;
        Tue, 08 Apr 2025 05:42:41 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40069105b97sm423433b6e.13.2025.04.08.05.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 05:42:40 -0700 (PDT)
Date: Tue, 8 Apr 2025 07:42:38 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Removing in-source contribution records contributer
Message-ID: <20250408124238.2gbis6jq5pdz7yoi@illithid>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fiqbv5gbfnb4qe2o"
Content-Disposition: inline
In-Reply-To: <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>


--fiqbv5gbfnb4qe2o
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Removing in-source contribution records contributer
MIME-Version: 1.0

Hi Alex,

At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
> On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote:
> > On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson wrote:
> > > If you do this, I suggest you replace these lines with something
> > > like:
> > >=20
> > > .\" See the Git revision history at
> > > .\"   $URL
> > > .\" for records of changes and contributors to this file.
> >=20
> > Good idea.
>=20
> I'm thinking I won't do that.  I don't want to add that overhead to
> each page.  People interested in the history of a page will already
> have a look at the git history, and there they'll find the old states
> of a page, in which they'll find this information.
>=20
> And it would require some non-trivial work to add this note
> consistently.  I'll go with a removal without replacement, I think.

Acknowledged.  It's been a whole 7 weeks for so, so I don't clearly
remember my reasoning from February, but my suggestion may have been at
attempt to find a "conservative" alteration to file content or the
expressed meaning of the comments.

But, what's conservative in one dimension often is not in another, such
as "labor required".

I also agree that while Git is a complex suite of tools, "git log" is
not among its deeper magicks.  At least not when run without arguments.

Regards,
Branden

--fiqbv5gbfnb4qe2o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmf1GbYACgkQ0Z6cfXEm
bc7UuA//evXlaDn2fcz4QVy3aiuaYNZE6L7JQq1EOQnZTGDNcVbk3DgeRdU5cao9
nwpFotRuTD8vyKtihj5iQdIVK3ogGXJXEmZXRItbQRy9ViQe/AnLtDAGl1REaQkC
jPpjWfYDeZjsVgPjBtpNoarLLXRt7jnm+uTfX0bM2ST3nWKiTcjcjM3YjxuCSPDt
ygyiqhXwWO6YPMnXSt/OKk+nfw4IeIBGpSDommfkw08lUB8R9+ULTZKM1sfZENFJ
zRbj9hL1qAf+wwsn+JBwkcS3lXFqtA/c3G5fPfylHkUEtwJM7XsHsXEenxYMd9D1
4m8jlADNaXs+IPLTNfU1Mvw/ahr2RCjt3qRsndOML4nFkrq2jbEhSl3nz0G2V/F/
3Me/8H2ll91mLAfFbbX0+Rb0HgOXfHz2346DY9IUEEqEXjZvM+AaTdmqSidjTcuS
Rxz1hpVLIfvPI7uuDQrN/7gT0c7PENIAB8908p8PKly1MnkxesDb5CtQFxpTSnEt
odL5pjvOFHCuIsgZaugaEHGCrcf0SuTlBqhXxk9pDa7987HR92Xo0wOdaknql0ws
PXilPdupXdEhfyoljOvl9EOtCNFkiwuuCDODfwrGJW7FXgn3fpywfR9zAmdzQxh2
N4mK+9CXhdLdUFhUdyW/PNcQJJ4gYuigOegQk13551vLaiXY9Gs=
=u0Kz
-----END PGP SIGNATURE-----

--fiqbv5gbfnb4qe2o--

