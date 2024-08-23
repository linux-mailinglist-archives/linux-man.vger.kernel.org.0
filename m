Return-Path: <linux-man+bounces-1670-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 091F795CD72
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 15:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 760021F22F22
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 13:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53DCB1865E9;
	Fri, 23 Aug 2024 13:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dopcxEps"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1460F18452B
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 13:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724418741; cv=none; b=NrpLUQy1+ogAqeSVX0Fha6UMJKfWmgZk+OpdPeljb4v+jlS3Akt6NDYmGGFxX+7egjRUVNXhboI3MDVzysuO6uxsCYApWxhEEQSKKrWueSmFLBPX7RIvBIo/HVn6xpidLfAZpmHQ0jPNOutBRxQLv6mCPokC/WCZ1YxeVrjUsSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724418741; c=relaxed/simple;
	bh=DwN2rymgmA4Tdz+MgaJnqdQhc9+ZnMOMZdhxWjAVTvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eCT7C47m2OTN5D6B9gbMLsTOHbvToE0LEGy8nd943H+4axqOl/7UtbSNM2ZPBCQftVjJmARFiYRfdQh+Ayol/u+7QqXxHxsBl7DiMs6tMGCUJ5kCtzo6F3dW2Sv5a0e8PugEu6ee54lZ/7e8iVIhsBnLDFY1Cjkah2sndfknrB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dopcxEps; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD389C32786;
	Fri, 23 Aug 2024 13:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724418740;
	bh=DwN2rymgmA4Tdz+MgaJnqdQhc9+ZnMOMZdhxWjAVTvE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dopcxEpsrB1SQxykQ8K6sZ45qsNfEVQIhxo/2N0CIg5ju8mdNxgzyTFg5ffClFf0z
	 x8CA3eqr6IC0B85yRHadflDPaEKnhq3tIsXfuvzfaafuzejptRfypgT8VpIxzLpXxv
	 Prcz0Pjcj1lksD26Ta0hXD+mjqhG/nGkfrJoIdeAJFgIDZIRBBNYLxXDSRM5Gc7M39
	 HLLDMI+REz8OMPaqF9A7B/C4/jV4y/ZlEuFMt+8822WyiZgMhGuUcZeUpGZSu4864K
	 2OHYXgyJu8TNu9eP2JIiblFJ045JM2J/SM2zQJsTWMY93M487/bKOzKINhX2V7XzS/
	 LG1M5L/5xTF4Q==
Date: Fri, 23 Aug 2024 15:12:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, Xi Ruoyao <xry111@xry111.site>, 
	Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>, 
	linux-man@vger.kernel.org, carlos@redhat.com
Cc: "Robert C. Seacord" <rcseacord@gmail.com>, 
	Jens Gustedt <jens.gustedt@inria.fr>
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="akvzmqccrv7tmkej"
Content-Disposition: inline
In-Reply-To: <20240823125313.GB2713@cventin.lip.ens-lyon.fr>


--akvzmqccrv7tmkej
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, Xi Ruoyao <xry111@xry111.site>, 
	Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>, 
	linux-man@vger.kernel.org, carlos@redhat.com
Cc: "Robert C. Seacord" <rcseacord@gmail.com>, 
	Jens Gustedt <jens.gustedt@inria.fr>
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
MIME-Version: 1.0
In-Reply-To: <20240823125313.GB2713@cventin.lip.ens-lyon.fr>

Hi Vincent,

On Fri, Aug 23, 2024 at 02:53:13PM GMT, Vincent Lefevre wrote:
> On 2024-08-23 14:28:13 +0200, Alejandro Colomar wrote:
> [about mktime]
> > tm_wday is guaranteed to be left unmodified on a failed call.
>=20
> Where did you see that?

Hmmm, it seems a novelty of C23.  I don't find it in C11.

Here's the text in C23:

<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#subsubsection.7=
=2E29.2.3>

	If the calendar time cannot be represented in the time_t
	encoding used for the return value or the value to be returned
	in the tm_year component of the structure pointed to by timeptr
	cannot be represented as an int, the function returns the value
	(time_t)(-1) and does not change the value of the tm_wday
	component of the structure.

And the example code has also been modified in C23 to use this feature:

	static const char *const wday[] =3D {
		"Sunday", "Monday", "Tuesday", "Wednesday",
		"Thursday", "Friday", "Saturday", "-unknown-"
	};

	...

	time_str.tm_wday =3D 7;
	mktime(&time_str);
	printf("%s\n", wday[time_str.tm_wday]);

> I cannot see any guarantee in case of a failed call, so that I would
> say that tm_wday could have been modified, e.g. if the values are
> set before checking whether the calendar time can be represented.

Looking at the WG14 document logs, it seems it was added in n3147:
<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.txt>

I've CCed Robert (author of that paper) and Jens (proposed other changes
to mktime(3) recently), which may know what was discussed there.  I
assume they checked that this is true in all existing implementations,
but that's just my assumption, so maybe they can say something.

> > This provides a way to determine if the call failed.
>=20
> The example in C17 does not use the above claim that "tm_wday is
> guaranteed to be left unmodified on a failed call" to determine
> whether the call failed. Instead, it uses
>=20
>   if (mktime(&time_str) =3D=3D (time_t)(-1))
>=20
> which is not 100% correct, since -1 can be a valid value (as already
> noticed).
>=20
> > Indeed, this is the only way to determine if the call failed:
> >=20
> > 	tm.tm_wday =3D INT_MAX;
> > 	mktime(&tm);
> > 	if (tm.tm_wday =3D=3D INT_MAX)
> > 		err(1, "mktime");
>=20
> Because of my above remark, I think that a mktime(&tm) =3D=3D (time_t)(-1)
> test is needed *in addition to* the tm.tm_wday =3D=3D INT_MAX test.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--akvzmqccrv7tmkej
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbIip4ACgkQnowa+77/
2zLfmA//Rt0yzOTOBxMurU7Jf24jFQNmLTTWXwLSod24ATweqGd9bkGDQvNWI5oO
lnuGs+rZSoThDPc9L3nkrq5XrCSCDODo6znyAjhnJneWNAkvp77dQfyKVNj/Dk2d
Une6heSQz8Y9VSl0QrABG2uLdGHBs4hY29m6WCcVIcOV16JX7yzNkKqUHrF2ikF1
TOB50djc9sMEKnNLCxMh1sRrwrg1Zqyi/sgSnDDqBN9kYaBJY1HRrO+ylHQiPrFN
+wIzDFP7dFAFESFbjArcygslHerKjtbbJou87suc6oR3X8+Q1OKv/J52p1rP/fvP
7vaGruRqH1asBHlhLhI7SwFixVFCg/WU9ZILrHaZWYVIPx+IPrMNpRedjdMfaYM4
bP7+iudNDwSNagCKiqEnIfojl2HTYIpSus/TXFVkTf2LZdGm5mdh+lEXWzly7QeC
eQglfPYNL+v1Y++tUDmVgdin0fxRWANitfSNueTK5nZYyEYLzq68WVVmDqnQx2sv
yJYW2KWHUBzwCDvVIq89DS37fjV7TDlDMR7Bd/nKx03EsMYyRbag7uC55jGpA0bv
D7oC4l/qc5AzE4FoYi54CmONJYxke2Q0B/rirlDZm2qEzzH6iDVhqCcgnIMum9t4
UT7CicbapB0UNjZ8ZsqPNi0rBH9TZ6aPM7ZH4z6uGEEDNlkujJQ=
=4NoX
-----END PGP SIGNATURE-----

--akvzmqccrv7tmkej--

