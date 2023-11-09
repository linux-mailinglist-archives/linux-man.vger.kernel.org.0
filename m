Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BDA97E6CD7
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 16:05:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232193AbjKIPFD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 10:05:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231835AbjKIPFC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 10:05:02 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AB8A35A4
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 07:05:00 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8806C433C9;
        Thu,  9 Nov 2023 15:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699542300;
        bh=sVpHmNCranm08PNkr1ru8p3JxohMN0wKaL7XXAlxmAY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Q1NFPernSr4XjpmBdJwp6d3DpOtmqSO2HNA+k3GZkxesvYj8ToSWwOxN/8HL+U6+U
         BB6VuBqsgyjjAak/e2l6suQIrMUYH5zGiJB9d4QQAboackcfbLbPjIvWqR3UdP5X2J
         5ADmZPFoIV9xY/mOPFwFXknZkWpfsoSIyCvCKYcpt1ZlGfq2dFIwzc4GvM78CbTanz
         xIy9qtNxJHDrlOCVFx5hATKkc2YH7FVYisO3Kw9/OXUM5u3bKtjTjyjBgM/BwRF0Xq
         lx0IP8Vo1o421aIJul5qldH7NmfOTvpFUsmat0faRc3MOKmXgYS33UuxRxqIpEiinJ
         rih917FmvIl7A==
Date:   Thu, 9 Nov 2023 16:04:56 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        Carlos O'Donell <carlos@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUz1GBxHvOVu4aT5@debian>
References: <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian>
 <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian>
 <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian>
 <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
 <ZUy-1XlYyQ7MAI6f@debian>
 <66d80e73-221b-4510-ab4f-2e0b896be4e8@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cKYzhjyRYW3th5mB"
Content-Disposition: inline
In-Reply-To: <66d80e73-221b-4510-ab4f-2e0b896be4e8@jguk.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cKYzhjyRYW3th5mB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 16:04:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Carlos O'Donell <carlos@redhat.com>,
	Zack Weinberg <zack@owlfolio.org>,
	GNU libc development <libc-alpha@sourceware.org>,
	'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

On Thu, Nov 09, 2023 at 02:05:38PM +0000, Jonny Grant wrote:
>=20
>=20
> On 09/11/2023 11:13, Alejandro Colomar wrote:
> > Hi Jonny,
> >=20
> > On Thu, Nov 09, 2023 at 10:13:24AM +0000, Jonny Grant wrote:
> >> On 09/11/2023 00:29, Alejandro Colomar wrote:
> >> How about following the style of the other man pages that put the note=
s about each function below them? (rather than above)
> >> https://man7.org/linux/man-pages/man3/string.3.html
> >>
> >> size_t strlen(const char *s);
> >> Return the length of the string s.
> >>
> >>
> >> At the moment on string_copying there are // comments on the line abov=
e each function. So the presentation of the information is different:
> >>
> >> // Copy/catenate a string.
> >> char *strcpy(char *restrict dst, const char *restrict src);
> >> char *strcat(char *restrict dst, const char *restrict src);
> >=20
> > The reason for this presentation is that I want to first look at what
> > they do, and only then look at the function you need to do that.
>=20
> That appears different to the man page convention. It looks odd especiall=
y with the extra // that I don't recall other pages having in the descripti=
on, usually that would be for examples. Consistency is best, but I'll leave=
 it with you.

The difference is that you're comparing to man3 pages, which document
specific functions.  string_copying(7) instead documents how to copy
functions, and specific functions are only means to that end.  I'll keep
it this way.

Thanks,
Alex

--=20
<https://www.alejandro-colomar.es/>

--cKYzhjyRYW3th5mB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVM9RgACgkQnowa+77/
2zKqUBAAjTRwFA+ZmwBUWR1ekCJO6A52rdGhHId5NsrAYCLxjRbzHuRyDDIdOQu5
Mz+En2uTso/0hxjYeQnwRT9TAfCJaIKESnwuECw1hA0czPeDuzA6EyezIvDS37r7
s7afhCug9LpKnD7vNUg/DiiktuipZYFj/a89FJ1LR3Dqe2mbRiP5kM2Q27c9l/PF
jMZwZOacJIc8aRuRBTnGCj3I31ayra5tqu2Hice58pSz9UytU7ow0pYo7zpj9Vny
saLK03IroL5NaCozzTDJg64VVpuVGQ6r8xrEk/+5TjkVq5Qu0xpDqFBVYsD01Pkl
wyG2JSq/k8ZUVClQEtt1rBFZPPSmECldKgjjx0+whIAhSdy+4h2kLZWXSP5d0Q96
ksfcedmsW3kXHRFMQQW663sQeUEh8NmqOEXyni3UNhzJIJv9By7fih4reoCm/koc
FWA3ewjxxREaDmRFL+gEDz9RatfJfO/QOoHKIfaLeKuxLaERHbjnqpFA2By+oVwz
lV8seF1e4v99P0ZEPFQI3rVohvJV/bjWBPGi1sE1/V7lxWVBMdo3mdbiOLN6oYq6
OgdcYpflzJLBWG/9m36VCYj1lw3vkc0QdBbKNZDlzqevWt52F7LIPAu4Fc2ybnAG
u+tAnIzqcCzNPJxGvLTIshWdZjikA42oUWuiDGnX8jECHKO5R7c=
=sRMQ
-----END PGP SIGNATURE-----

--cKYzhjyRYW3th5mB--
