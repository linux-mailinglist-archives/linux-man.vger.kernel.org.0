Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93E8C7E6154
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 01:24:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbjKIAYV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 19:24:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjKIAYV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 19:24:21 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B482268D
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 16:24:19 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6853BC433C8;
        Thu,  9 Nov 2023 00:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699489458;
        bh=kxoF9e3QHIdRwl1/4Vw1V8lP4VhaG3O6Vc7I187nzPM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VjE4QjRlTiW3gNT3Vqy8vsDuJneDzrHRz2ZqtgmszcuQjmp7fixCIBBmSlG2rhcFg
         yGZzASz4fm+g7xa1AeAmEK9NkFmokftb4fDPG/0TuhkA9AJ6dVTO49ZbLFS8B6UIt7
         lTYAejWgiYP55h9I4IJGzBuHDhyARm3Kh/K0krqa6+FeR8B8dyZd5zZ8Y8JtMh9Klr
         jxm3+S3si+QFepkc7S5Ohs6NyjDRcgU9cvmyUtx1g4QIHQUWGItQsMUhOM27SiJMah
         vncW07MuYjpAWcmNicpBjXoGvF30wowsmbGYvVhpj7WNjn91c3ECtJK5oUPgq35F0u
         q6LT5FethkzrQ==
Date:   Thu, 9 Nov 2023 01:24:07 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        DJ Delorie <dj@redhat.com>, Jonny Grant <jg@jguk.org>,
        Matthew House <mattlloydhouse@gmail.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string
Message-ID: <ZUwmrlENvaNfDJGr@debian>
References: <ZUwCwxyPfur-hfea@debian>
 <20231108221638.37101-2-alx@kernel.org>
 <290c7650-bc39-4315-a9dd-7b9b7ec55333@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="oJrFYjmTYcKR3OPa"
Content-Disposition: inline
In-Reply-To: <290c7650-bc39-4315-a9dd-7b9b7ec55333@cs.ucla.edu>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oJrFYjmTYcKR3OPa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 01:24:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	DJ Delorie <dj@redhat.com>, Jonny Grant <jg@jguk.org>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string

Hi Paul,

On Wed, Nov 08, 2023 at 03:06:40PM -0800, Paul Eggert wrote:
> On 11/8/23 14:17, Alejandro Colomar wrote:
> > These copy*from*  a string
>=20
> Not necessarily. For example, in strncpy (DST, SRC, N), SRC need not be a
> string.

Pedantically, true.  But since it's quite rare to copy from a
fixed-width null-padded array into another, I didn't want to waste
space on that and possibly confuse readers.  In such a case, the source
buffer must be at least as large as the destination buffer, and will
likely be the same size (because having fixed-width stuff, why make it
different), so memcpy(3) will probably be simpler.

>=20
> By the way, have you looked at the recent (i.e., this-year) changes to the
> glibc manual's string section? They're relevant.

I hadn't; after your message, I have.
<https://sourceware.org/glibc/manual/2.38/html_mono/libc.html#String-and-Ar=
ray-Utilities>

I like how it connects all the functions, and it explains the concepts
and gives advice (e.g., avoid truncation as it's usually evil), and
compares the different functions.

However, I think it misses a few things:

-  strncpy(3) and strncat(3) are not related at all.  They don't have
   the same relation that strcpy(3) and strcat(3) have.  You can't
   write the following code in any case:

	strncpy(dst, foo, sizeof(dst));
	strncat(dst, bar, sizeof(dst));

   as you would with strcpy(3) or strlcpy(3).

   strncpy(3) and strncat(3) are opposite functions: the former reads
   from a string and writes to a fixed-width null-padded buffer, and the
   latter reads from a fixed-width buffer and writes to a string.  (You
   can use them in other cases, pedantically, as you said above, but
   those cases are rather unreal.)

-  strncpy(3) is in a section that starts by saying:

   > The functions described in this section copy or concatenate the
   > possibly-truncated contents of a string or array to another

   This may mislead programmers to believe it is useful for producing
   strings, when it's not.

In general, I would like the manual to put some more distance between
these functions and the term "string".  As DJ mentioned, it might be
useful to mention utmp(5) and tar(1) as niche use cases for
st[rp]ncpy(3).

And now for some typo:

-  In the following sentence under "5.2 String and Array Conventions":

   > The array arguments and return values for these functions have type
   > void * or wchar_t.

   I believe it meant `void *` or `wchar_t *`


Cheers,

Alex

--=20
<https://www.alejandro-colomar.es/>

--oJrFYjmTYcKR3OPa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVMJqcACgkQnowa+77/
2zLB7w//WVr5l1PiFFQCjz0z7jubOiSNBNmmJcl+Yxw8rvmPpZX+DAtjkGRdkRye
hTHaej70SgOBx6H5mIv3IfZAsAAhKyb8Klpo1Ns9FM9N7kvGiqCozLiprADyPXWE
aYzyX2kvYNd89PRHc6iTokmysk2P2ALWAQNNDF82AjOj0QM1E+hjuMj2/zoywUuG
7UyC5OsLmNRwrUaiEvmEuCZHmtU7qK5ofzMXWWnH7k9eBAsisf1GFcpALwX/uKfR
r4mI151eoNLs1AyVxJZZ/10FwoQFyGJ6IhJhntWnGkEFFq/IagQzeEmgzZ5EZq/n
2zGPCL1qX2nqiLIKCTo4fSA60Da0FVhgOGZRl7B1kfoy/ibaeA7eD1ms1PVYl2w8
Fm/E0zpF1r37T7oJjcLbDBqQQJ9alTA3FQ5/++bmyyCc5/ehht3/m563bO+zSycI
vJeFz7jUp+ix0JjrVa201ao5swxzBQNK0k/mPCJG7AjcfEIPZLwUHSD8ht9f38Cw
zgZJXfXft/BxrSVMihlnHaIq7tGjlaRNACQzDI2At4DTF/9+/x/Gpa+IhwU4R0r5
4bB2dRY9EXA1tZMCggUuEFAQnooFgBVNI/zoBrv/B9+W5kKHjRFK5DKnKCN9crnX
DxhyoN4COKZbl+PUpD50/NPubFZuTo0LzQznsDhxTRjgme0aDAk=
=kM2J
-----END PGP SIGNATURE-----

--oJrFYjmTYcKR3OPa--
