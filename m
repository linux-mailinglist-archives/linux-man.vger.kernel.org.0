Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A84997E6169
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 01:29:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjKIA3p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 19:29:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjKIA3p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 19:29:45 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B8C3268D
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 16:29:43 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CC10C433C8;
        Thu,  9 Nov 2023 00:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699489782;
        bh=ZEHJaazOfyEe0xT5Rfu7NTePxRjgqvxL645eOoSFsAA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Uwk4MZoZbqUU2u+n/vT/Xezl0fqKT4LBTFJhssWdKtFiWW40hvtPEGV0SgrezNvjc
         Yy4/o4JNIId6DNb3Ub2soyph5FWzrxKiXVZaf6U+NFggzgDuNHY5LmBuS9z+W90clL
         0ZEu66xAM+Nr4ouvx7QZ8SRhoH//NItQZgBXEvegyirjFT9/FHgSoPewoZX/T6tv3N
         GO7YPvpeCpFzbyG6HT/Dz3C/rsgfCaCRNwHO2GPsSTQuEfcG9/NyBYrgn2rtwJTkJO
         OjMQSGcF01W88eHyQCTvTAlL3XpTWSjA+qq5cQbSHRsQJamj7riX6w1nfcfGc3yNd4
         zvBiftCRVro6g==
Date:   Thu, 9 Nov 2023 01:29:38 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Carlos O'Donell <carlos@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        Jonny Grant <jg@jguk.org>,
        'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUwn82bp6wHceMS1@debian>
References: <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian>
 <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian>
 <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Z0boWcE/rwoS1EWk"
Content-Disposition: inline
In-Reply-To: <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Z0boWcE/rwoS1EWk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 01:29:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Carlos O'Donell <carlos@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
	GNU libc development <libc-alpha@sourceware.org>,
	Jonny Grant <jg@jguk.org>, 'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Pail,

On Wed, Nov 08, 2023 at 03:31:38PM -0800, Paul Eggert wrote:
> On 11/8/23 14:11, Alejandro Colomar wrote:
> > I just don't think we need,
> > as GNU or Linux projects, to be restricted to the decisions of ISO.  We
> > can realize that certain functions are bad, and mark them as deprecated
> > in our scope.
>=20
> There's enough use of strncpy for the intended use (smallish fixed size
> character arrays that are null padded, not null terminated) that saying i=
t's
> deprecated would likely cause more trouble than it's worth. It's not just
> utmp and tar; it's also socket programming (sun_path) and I'm sure other
> stuff.
>=20
> Were we designing the C library from scratch I'd agree with you: in that
> context, strncpy would clearly be more trouble than it's worth. But now t=
hat
> we're stuck with strncpy we have better things to do than try to deprecate
> it.

No, no, I'm not trying to deprecate it.  I was just saying that *iff*
all of its uses were dead, I'd deprecate it.  But they're clearly not
dead, so it's a perfect function for those cases.

>=20
> Instead of saying "deprecate" I suggest we say something like "This funct=
ion
> is generally a poor choice for processing strings" and point to the longer
> man page about strings in general. That's what the glibc manual does and =
it
> works reasonably well.

Yes, I've done something like this.  string_copying(7) recommends
avoiding fixed-width null-padded buffers in APIs.  But for those use
cases that already exist, this is the function to use.

I'm also refusing to document how to (mis)use this function for
truncating strings.  If one wants to struncate strings, they'll need
functions that were designed to do that (e.g., strlcpy(3)).

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--Z0boWcE/rwoS1EWk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVMJ/IACgkQnowa+77/
2zJMRhAAiAOBBYa2yu+L4cZq4HQZSUaXLfFoQXgZdDJnJfCi4Ae7Z/IEvUkJJ+QY
F5XpnGvzEvbYDCA0cRye+mRiJhbETQoZ+vy01uXf64mmSkrG/PNgRis1YBZFgtg9
m2lFChNw6ovpDtaVP8TzUWKwgAhmK6SLMPGR9j7IaKm2GhIm5k23rGPlPHKv6Zgn
aD4ThKmwIMmwfGQaHhg3rbBmaxoyGb98+SUk85j8e2lvGztrahlajGP/2VGGIn+I
RATmMX9WA5qPnXFyYsfCAPT8smubPYJgdl4llpzbZHQw957awWL3AQBGxe/V794F
s20dPnJskrFMApvgQ/vsXLcoBV+wrUDH8pcH3b+EXKwZYrSu5tJEYWfzZECj/Wse
pwPpcyan3emfwPAtYJfdhBd5X6YzAwj3HbFzV3N2iMVsPKYigZw17+EorayRcZd6
9CX5T7WTyZmDRDPwwF06OvJ8C6L0LHph1mRyg74fv02inYg62QnP9+b7A6Z455w6
PYX67PQdT+YayoMDI9WMSYjIoj4TtGX9veSAeyNYj7FBhJpD2ft3NqL83DKn+1EA
znKOe0u9bKPBRNBS8p26CT/NEiTjKViWHXgNWKlsQ4okP4YkKpwnp/gJJU/p4KZ4
qTVy7+YIXP1cwkrgRIsFlAPn5cYoC48A4i5Dq+KT2yGjPI8I62c=
=hSQV
-----END PGP SIGNATURE-----

--Z0boWcE/rwoS1EWk--
