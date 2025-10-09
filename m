Return-Path: <linux-man+bounces-4097-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE12BBCB2B2
	for <lists+linux-man@lfdr.de>; Fri, 10 Oct 2025 01:03:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8A26188F972
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 23:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A26D20487E;
	Thu,  9 Oct 2025 23:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dN6qEi9/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7837714A0B5
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 23:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760051014; cv=none; b=elAU5U75DoXnGPqpqg5O7ZXe23IIsagqPsl8wYeqxv11aFnyBq2FL0/CArChplypcyWUY2Y7jmpMh+Hdj5xSNCW1bfuaED1kdhL8WixKsZoKcltUfeC22KoyVJ9EmbvFDpeRB4DqQ5R6jCwBB+QxaylrJmLXYqEgCxsnKiSyBWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760051014; c=relaxed/simple;
	bh=b2Ejl1apZ6q9+fSLrzjtjI/u2QIu/qc+d4d34o+1yCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iNv2mRDjqLVVZgOPBdd+nXJ7wtL3IFYfA4gN1l1yIDg1Ey3Vv9n0+3P9Rq12jpzbEtmooSNJpu7qXIJNRUsD6Q2MozIC/MZNCFWPvaR0FuUOi4fW8vY28wbV2P72i8xK081VW9rPX7qmjTbepGu7gWvzxkOoQEa3L6P74NRnCu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dN6qEi9/; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-6477f91713aso691152eaf.2
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 16:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760051012; x=1760655812; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CJ+JMSZWItCjQG/TWCgzsbDkJLosYW7JOgcxLyWoJ2Y=;
        b=dN6qEi9/OFY4hdVfwjuA31LaVfa1W8C6bvDtBTLu5ncrf71oomE6L9rRX3tsuyEVZm
         UdmenqujBHRSzSDIvZ4NBkuqrOoZii+ERZETsxOm0cS034YtWrMVnSWFZa+XMTzGzrJ6
         gM7N7msOh04tdHC2AkeajWNrNzPsGjiN7mYKV8p2xLgFAkoeHnEc6AVNWJuW8bYD4gHw
         TJPEkboMUyVj3fcdr9Y9lFo1JlQTo44BfeuuvleLPPvcEUclF/4c2yG/fRcksVB46sFJ
         golVX++/kkIiaRs2C2Pmjef2LiODGk4G1qld7GSjHP5j8K4f61z+g1VP/CiQfrCj329Q
         7jRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760051012; x=1760655812;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CJ+JMSZWItCjQG/TWCgzsbDkJLosYW7JOgcxLyWoJ2Y=;
        b=dho3BCrWM5kqaSDtDiBw9tDtZ3OqrFZkrsD0BkwIG7T6r+JQgwxyezN7Ym2kKh8XGO
         7jS9jy9F6deZfiKSFWu+g7IMf0b8ROJynhQz0i8w9zAABJczBoeTfM1Ts2pDSlzbOXBA
         9dx+5nHrtoXGlujXM1e28B0DfB9Y7EBT8JfSHfNK0etmchL+jq15qU36VUS0nI9hnXue
         0wvWDA+WqdduktoryfSVo4wosEQ4H1wFaLCClwyF2NnOBJBSpwtp/RTdKReZYoJ9sucl
         rGfJuCaEovCcPZJy2u5wdVtPvBgDCyV53Njw0FiF0QTjdt2HTez60uXTLz4s9lWoSjky
         OFtg==
X-Gm-Message-State: AOJu0Yxj9bVfqG95CiBD1InHs88FdUkjghbJmRO5VJycsVPerzBB31rH
	pyH/nkJpjWdEFNEtbrglF0CVLGFbI3V2yZONWhNLXUgOfPS1o4sDCFaj
X-Gm-Gg: ASbGncveDSulDMXNBlY9cbnQbVgLommo3jlSr5JUNLLKXweGDliWNic3/AD+RFFkIDj
	7YzSiaBk29LfvOgaJeLOY81c+mU5BDlBHAAuJNoFI8YS5cjHoSmoHOMTA0bsEMNgDu/yCOzD1/s
	RAEkm+e2tmSULqufeG8Lo885OwPsWuoeuxNmPZBid76nemg+VFd14TkSAMvi8h8D81HtBRtaB4a
	i5eucHAe6T0tNFRqvbqRnwiROCriMdyJ+C4pBQ74irX5dm8e8Ig9vdgoUte6hsOXFXX4M7w8JHL
	oMhMlMPRU/GlFk/6TqoWzkc8Heh/fxK+0d+hy1kOMn79S2M7UjtpFciKxgXUc6mTCtVVisgXeTb
	4p1d1k366tbdoCD3KPEy/xv5gXfxblrHHSa5Ku2f6z2wJiHEpVbir43L9RQ==
X-Google-Smtp-Source: AGHT+IF+KMPlbuGQjhOWncPua4LTIGHw326xvEkoWUgB9I9dfft0/cQYevRzOYnQjI8Z9uhVTvDAkQ==
X-Received: by 2002:a05:6808:448c:b0:43f:7997:f920 with SMTP id 5614622812f47-4417b3dad04mr4484015b6e.37.1760051012367;
        Thu, 09 Oct 2025 16:03:32 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4419889ffa4sm233458b6e.10.2025.10.09.16.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 16:03:30 -0700 (PDT)
Date: Thu, 9 Oct 2025 18:03:28 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 8/8] man/man4/console_codes.4: ffix
Message-ID: <20251009230328.bkohjsr6hyj46qdw@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
 <20251009215819.o5yc7y5pv3hmzgzu@illithid>
 <jld37wp2h67sgpkmdhoubnjamcjdr2hd66gwllmsl23igpyuc2@qndcfrjczlia>
 <20251009230045.j3lljryhzt6kjcku@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mkstlxnibkhfppy4"
Content-Disposition: inline
In-Reply-To: <20251009230045.j3lljryhzt6kjcku@illithid>


--mkstlxnibkhfppy4
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 8/8] man/man4/console_codes.4: ffix
MIME-Version: 1.0

At 2025-10-09T18:00:48-0500, G. Branden Robinson wrote:
> However, I have an idea that might resolve this problem _and_ the one
> with centering making the indentation huge on wide terminals.
>=20
> Will advise.

Nope, never mind.  My clever idea died.

tbl:man/man4/console_codes.4:155: error: cannot change column separation in=
 continued format

Regards,
Branden

--mkstlxnibkhfppy4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoP0AACgkQ0Z6cfXEm
bc74FA//UmRFSmgoUR2HrJu4QeXkI9o+kCouRZqWl3Nk0be+hljzKlMSpttfQqFo
BxhEeDpo7MXEAq/Sl/nzNfPBpZCuXCyNJVYFTL0N0VkXfsfe+R8DPZyILFuFN2EU
9Tis6ImyeHHi5g9ZirImh2Ix/VHbdn71ok3hkPz82FmdXjllr5gpuviqAWyW9gNY
CXPdnQNdxfYedWXomr3xFvTr3hPfaYw3bqKPcKWEDwhovOGNjZxUjlxdLFUNFKRy
2sIrpUrR/Jv4bXXI73hSo31GtWkVh27fvqjnFBxUKoeVQcmpdcnJSxGKgtFjOhgN
B1dKICT5JZOlyOB/1wkwgs1dzwRaX7RAks+O0NNT+xvdU+7EfuF7rcOxxW/Jicat
fs8aa8xcQ9aVdao+aaDc7f0iS6nUryEK+DewyZ5uHzLh9Dfw9PybYJQriJvM0tWW
v3PlWUSPnZuUaIW1zsCQg6zMcTZMEARe/hy0avu0SMhSPjXOCa1ylQ2qUymkVK1g
j+RqWH5FrhPctX24b8MZOAREf4pzyP7vXuUA4aO0tcvUQvyAHX21zGLr4xjYRM6L
7zi7+L9Ca3JL2b+c/gFZWspPGi8Nc5F/5Bdn0Yh1LVXg4cRoZKzT1Qg7l3D7bELz
478+rCJDXRS0udMzVEzQK/lJiqnRUpyDR0hjKDcBlXCgrKMAuE0=
=qkUg
-----END PGP SIGNATURE-----

--mkstlxnibkhfppy4--

