Return-Path: <linux-man+bounces-2888-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C95AB17B1
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 16:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1D1E1BA21E6
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91233230D14;
	Fri,  9 May 2025 14:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rxbybq9s"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F8E22A1ED
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 14:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746802137; cv=none; b=I5My9Gv5U54yqwFEJSl/jtnFRvOTROFEPQacdFDMFhBS11biaUvhMlmRUSdPCKuAwaBCAzBwglcmFf60PzwsGEKrOjpMCmPy4OzDtJVRe724/oisX9TRcfq3EX5bPHGcJkZrJWToI6CA3FEmQyxzUR0glNUjYBBpWEi2zA9LdSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746802137; c=relaxed/simple;
	bh=G5jdtgAF2JMvCwEurwxHdbbC5Y11NgELvgbzC9pD+qQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=OBKrAkuWW7jokOYM07Z7rTBrrjE5vhkqwk2RPNirmmq7CGkAraWB0kVki1UVzWL1ByhL/Fcgo+MNqhEpKznNAqg2NzmeYZpWPuSNl8YNW2PtF5hVPm0VHgJiLUfI6JlcwuoiSaWVUzADVIlKBFwcs7Prth5z6lHNt6pJkunZcEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rxbybq9s; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-60634f82c77so606726eaf.1
        for <linux-man@vger.kernel.org>; Fri, 09 May 2025 07:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746802134; x=1747406934; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GBGFH9bB91FFBXKwrum4uvZsxeq8Xzeg52/j/foINjM=;
        b=Rxbybq9sW4fcWGXOcZ6hRzYYXMVfcn/63130H7hzBHyoKA6P6BWwU5H7mB0e8UiI8K
         CK0vqY+7xzAL/JeFTag6G2kM6wjjxmNSbCAnQyhcryXWCPjtjd/G0CcjO+IxzopnBSXf
         NMa3n5GipvykYdJfXvgxqpcpUH6BKwREK1sVX03Jl9yhrYcMeTLiYW4icBr0DNs29h9K
         +9IqOYKcqYihHNj0RwouI2sJUkj1PmPmm27DDtypX6yyLEWw6fVus+ZmGVgF9VPNWW20
         QfomrVY2xKMHH9/78GxI+nUIa+r7piJcxvjlZRrAg/Uz5mzKDqY0SoTyM/wReCF0KUQY
         LG3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746802134; x=1747406934;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GBGFH9bB91FFBXKwrum4uvZsxeq8Xzeg52/j/foINjM=;
        b=N1YLlSocICyjL+/JRXr2UmucrHi15H4xaWaNizg9H7hru6HNyaZuDjezxkyTj3dUwA
         h1EdHaIPbYYWuvUkFyFiRJJOKAsaZwut9veA+j/YL2juflbRFPZ5SqneaGKUkBHHsR6w
         6rXlCY8gKlIgeUAxHE8MW4Fj9AJCAVb/p/nkbEDHEi2xdMo8qHL3Pnh46NgRCMrXtDHz
         zCxbdvvsw6cE0tVaK4C74w2vrZ7RSVmsRl544hkPga9VD6dM+Bh4yvph39O5t6vw7HFq
         mJbGwld0et+iznjY2bzHRPBO8u2e62+/sN8MrCsjzzZP0kWqliG8sPNbwTNRjXWM1vBI
         xX2A==
X-Gm-Message-State: AOJu0YzW1N0jbJ0ifcNvAm+rsheXK3X5gXgUfz7LV46+7ISKXZfUYsE2
	VQVzty1aKoyrzSPgKjAKrMfPSk98Cyg0ELMhMTx3Afxquii/V4VNJ3ofpA==
X-Gm-Gg: ASbGncuXypyFOqsGvoCe4Ig6ch/OVKY6WWieDK5MSHUVIw3spCOuC8zJvInSe4F7zPx
	KuoftqTFoLg5yuOmSy5lcPmOiIB6GtKsC5D2v9vYHisQGRYVXZQrWX/W3se4KhGk8ytzYA0nCTC
	E8QI20m0n1phnofWINA65jWOy98qHah8B0iBg9bLpyjC/azGuchNqZul5Vg6fa+LTJLiAp9qdpn
	cS+Xe/4/FTy5HZZ+hrj519HMXxhsKmAoSHKYqUXy5Lkd9ik5A7Aop+9R1PjXISk6/xr+fEowb5z
	DWKTsv/MMRNsxcvNKVN9W+bxKUZPkTs=
X-Google-Smtp-Source: AGHT+IFPKEsbJOFFKMTVvMasBMLZsL1ADxg6c4wmtV7Pzna4cr1dVYiRlEUK95t0IFo1H3vvKJsCbw==
X-Received: by 2002:a05:6820:818d:b0:607:6268:c0a5 with SMTP id 006d021491bc7-6083fdbf76cmr2716126eaf.0.1746802133848;
        Fri, 09 May 2025 07:48:53 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6083fe52271sm494594eaf.21.2025.05.09.07.48.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 07:48:52 -0700 (PDT)
Date: Fri, 9 May 2025 09:48:50 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: groff@gnu.org
Subject: Re: Removing in-source contribution records contributer
Message-ID: <20250509144850.et25jxreipxhe2t3@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ck4qhtvwvakvrgkh"
Content-Disposition: inline
In-Reply-To: <aB4N4eD1gbZi6Cao@e133380.arm.com>
 <vvom7m3xnrzq6w64rm5wue4byj64mg6jynme7kqdzjs3xkpttp@elcgfz4quzdw>


--ck4qhtvwvakvrgkh
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Removing in-source contribution records contributer
MIME-Version: 1.0

[CCing groff list because I bring up some project management details]

Hi Dave & Alex,

At 2025-05-09T15:14:57+0100, Dave Martin wrote:
> Should the one-line replacement statement in each file refer back to
> the CREDITS file?
>=20
> Also, nothing seems to say that anyone listed in CREDITS actually
> contributed copyrightable material to the project (as opposed to, say,
> review effort, moral support or free pizza).
>=20
> Renaming the CREDITS file to AUTHORS and/or clarifying this in a brief
> top-level LICENSE / COPYING file might make the meaning clearer?

At 2025-05-09T16:39:05+0200, Alejandro Colomar wrote:
> I prefer not, because then someone can copy the files to a different
> repository, without needing to modify the notices (they might take the
> CREDITS file as CREDITS_Linux-man-pages).
>=20
> > Also, nothing seems to say that anyone listed in CREDITS actually
> > contributed copyrightable material to the project (as opposed to, say,
> > review effort, moral support or free pizza).
>=20
> I initially planned to include reviewers, etc. into CREDITS.  While
> doing that, I realized that wasn't easy, because the file would be
> huge, and would need to be updated too frequently; plus git(1) does a
> better job of documenting that with the Reviewed-by, Cc, and other
> tags.
>
> > Renaming the CREDITS file to AUTHORS and/or clarifying this in a
> > brief top-level LICENSE / COPYING file might make the meaning
> > clearer?
>=20
> Yes, now that I discarded the idea of crediting *all* contributors, I
> agree this file should be renamed to AUTHORS.  Regarding a file solely
> to clarify that the AUTHORS file holds the copyright holders of the
> project, I guess by calling it AUTHORS it would already be obvious.
> I'm hesitant to add another file for explaining that because the more
> uppercase files there are in the root of the repo, the harder it is to
> understand their relationship.  However, I can add something in the
> README, where I already document what each file is.

Yes, this is consistent with GNU approach--as I understand it--of having
an "AUTHORS" file for copyright holders and a "THANKS" file for
acknowledgement of anyone who isn't a copyright holder.

Before anyone asks, groff doesn't use that approach, I think because it
is so old (starting 1989) and predates some GNU common practices.

On my get-around-to-it list is to determine who's actually signed
copyright assignment paperwork to the FSF for their groff contributions,
and who has not.  Anyone who had made a significant enough contribution
that copyright assignment would be worth the trouble would be listed in
AUTHORS whether they'd executed the assignment paperwork or not.

Also, since the contrary is a common misconception, the FSF does not
_require_ copyright assignment.

'GNU packages need not be FSF-copyrighted; this is up to the author(s),
generally at the time the package is dubbed GNU. When copyright is
assigned to the FSF, the FSF has authority to act to stop GPL violations
about the package (otherwise, legal actions are up to the author(s)). It
also allows us to grant additional permissions on a package, such as an
exception, if the need should arise. Additionally, holding the copyright
allows us to upgrade the license of a package even if it had been
initially released under "GPLv2 only" (instead of the "or later"
licensing option as recommended by the FSF). The rest of this section is
about the case when a package is FSF-copyrighted.'

https://www.gnu.org/prep/maintain/html_node/Copyright-Papers.html#Copyright=
-Papers

Regards,
Branden

--ck4qhtvwvakvrgkh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgeFcsACgkQ0Z6cfXEm
bc6fpxAAn5mqbf2Ed638b9hwbzHrPHtHYQan/+f5DhWXR5p4YGm6Jlv6GD1ftPYb
6MUlsMFBfQoeBlXJo/as1W/mIMvwJun3RwqjhZtoe0BCHM8QsA7DLPgMdi1NVQPY
U0owFti9Cyp0NbPYT/83uVwTYuiaRld/6tAIMXBllSxcYr5iXbDEmIM1Ba4ovnkd
wOhQ0GRP4sLUpv4QFaPFDgFQ4n84x2N6sGVogNgRqj4LgI6lQaf8OmdJEIKyx/rs
J3KqG+g5TAdrt6kx88VH6cH0XUIgpZOGfXZr/V3crirMMRTx9iyAlEjmbVOgwlvZ
r3af4KIiMmmLfoUiodKEqopnxFFpxTqEvP8WDw6Da48DCuOTOEGB/U1bFuOqTrUr
kWwVlxfVg74hic8DQFPZGEp2w+PuVLtteCmWdmBzCD/dzQvHcY/COZcxhOMCH3w2
SspimgIobxh21TJLMNqW3OkKFx2RaKWst9AWFyGDYb3eegcjrlMwDodxvPEbmx8B
I+iF81iGJp725ZalytIG+eltkiBxAcO4/3RAYsBjM0u7EN2XwpYnvxQvk2ucNx+o
acEeAoI3UsIU1EwMLU871x8+zti8F18oSP3F2jTa7GYYm9nmvOcs963P1kgwZacI
v3QPf1WS8RQ+ZgOJoT9HQQ9Cd7GHhBVDPJpM2k0z/bMmYvWGp2c=
=rx6p
-----END PGP SIGNATURE-----

--ck4qhtvwvakvrgkh--

