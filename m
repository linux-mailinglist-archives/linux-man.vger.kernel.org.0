Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DB547E59B2
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 16:07:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231981AbjKHPH5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 10:07:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231799AbjKHPH4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 10:07:56 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51AA51BE4
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 07:07:54 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF83CC433C9;
        Wed,  8 Nov 2023 15:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699456074;
        bh=bgOu8Tb4SSrr5AbsbxVNxyXq5ps7CIJotE4+5J2GFq0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rFZDlJOAwBN63pCRlsE0f1CLdliPJWWNXA6SuhecK1adalPqUYGkvd/jnJ1TFxBh0
         IdbOoA0G646n+PC0Xzm1HCDJH4HLWnpIHrlde6RFKHagmFzopRGxnRWOOXSRDLbew4
         CprpD5JIInU/aiN7867f0a+HDKzFA6BTrYF9rbWPqwBiRfNv7wZkTDmuaB8p5fF7HL
         lo/twuu3HAJEb4l0JnqyYN0ylUJkjr6PiY9lWMX/E5sDxs7CDscL7EtnUBHovNlssC
         dOpHfYXJuHAPmuVwAb23YT/5VQ2LKdbl2j0maejil1q6WGYH1VEWuCaU6NDsKma+p/
         zfhK5VuTpMi2g==
Date:   Wed, 8 Nov 2023 16:07:42 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Zack Weinberg <zack@owlfolio.org>
Cc:     GNU libc development <libc-alpha@sourceware.org>,
        Jonny Grant <jg@jguk.org>,
        'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUukRqsFNr7v_2q7@debian>
References: <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ugh7psUiyx8kJwdF"
Content-Disposition: inline
In-Reply-To: <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ugh7psUiyx8kJwdF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 16:07:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Zack Weinberg <zack@owlfolio.org>
Cc: GNU libc development <libc-alpha@sourceware.org>,
	Jonny Grant <jg@jguk.org>, 'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Zack!

On Wed, Nov 08, 2023 at 09:06:48AM -0500, Zack Weinberg wrote:
> >> If you ask me, I'd not mark libc functions as deprecated without some
> >> kind of consesnsus from the libc maintainers too.
> ...
> > Okay, let's ask them.
> ...
> > Hi glibc developers,
> >
> > strncpy(3)
> ...
>=20
> Speaking only for myself, I would be very reluctant to declare any
> standardized function "deprecated" by glibc unless the relevant
> standards have also made that declaration.  This goes double for
> anything that was in C89.

I understand your point of view, but disagree with it.  Deprecation by
ISO C or POSIX takes very very long.  We had gets(3) for decades until
they realized it should be removed from the standards.

	STANDARDS
	     POSIX.1=E2=80=902008.

	HISTORY
	     C89, POSIX.1=E2=80=902001.

	     LSB deprecates gets().  POSIX.1=E2=80=902008 marks gets()  obsoles=E2=
=80=90
	     cent.  ISO C11 removes the specification of gets() from the
	     C  language, and since glibc 2.16, glibc header files don=E2=80=99t
	     expose the function declaration if the _ISOC11_SOURCE  fea=E2=80=90
	     ture test macro is defined.

So we had it in ISO C in C89 and C99, and only in C11 they realized it
had to be removed.  POSIX hasn't even removed it yet!  I won't hesitate
to kill a function just because of bureaucracy.

The standard, especially C89, was just a reflection of the commonalities
of most implementation.  It was a burden of implementations to add new
stuff or to remove existing stuff.  Later revisions of the standards
invented more, though.

In this case, since ISO C has no APIs that use strncpy(3), it could (and
should) already deprecate strncpy(3) from ISO C.  POSIX still needs it
while it keeps utmpx(5), because there's no other way to correctly write
to the fixed-width buffers within struct utmpx.

>=20
> Also speaking only for myself, the Linux manpages are welcome to
> discourage the use of any function that you feel is not a wise choicei
> for new programs, but the word "deprecated" should be reserved for
> cases where there really has been a declaration of deprecation by us
> and/or the standards.

If a function is deprecated by a standard or other entity, that will be
reflected in the STANDARDS or HISTORY section.  For deprecation by the
manual itself, the SYNOPSIS (and BUGS) sections are fine.  In the end,
the word 'deprecate' isn't any magic.

	From WordNet (r) 3.0 (2006) [wn]:

	  deprecate
	      v 1: express strong disapproval of; deplore

That term applies to strncpy(3).

> The word "obsolete" should also be used very cautiously; it's broader,
> but I personally would only use it in situations where there is a
> direct replacement (e.g. sigaction replaces signal, strsep replaces strto=
k and strtok_r).
>=20
> In the specific cases we're discussing: I would definitely like to see
> a BUGS or NOTES section in the strncpy(3) manpage, warning people that
> it's probably not what they want and recommending use of strlen+memcpy
> instead. I don't know enough about the utmp(x) situation to have a
> strong opinion, but I do think the manpages need to be very clear that
> this particular proposed replacement for utmp(x) is Linux-specific and
> still somewhat experimental.

But yes, we need to make sure that the APIs that need strncpy(3) are
all deprecated.  If other Unix systems still need utmpx or similar
stuff, strncpy(3) will still be necessary.

Cheers,
Alex

>=20
> zw

--=20
<https://www.alejandro-colomar.es/>

--ugh7psUiyx8kJwdF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVLpD4ACgkQnowa+77/
2zJAGA/7B2OHx1RfM3GIubbv+j/iQjqP0V2NYjPhQ5wRX0lMJ6L/CtPmFc3DYoxn
El/0EBPr7ZAR92+4OqyJrbBtCTiAN1qLa9RNxThZcWhFo4Cukny+ZDGQbAGdv9vf
gRuiFGdAWV1HDtw8ugAvm0FC2DRmnR/vBZHpNhSjqnccHvL5zuZ9cd58u2J77oO2
g9+KdJj6EfvPyTQNQ/Tp006gef0NU4vtzPWHCoCK1wvHRyAxQ6VzPlpMXOxcvTMs
bA13lqEE1bJDv+ge7UlKsQ4RDJGhttmWgdW9PwSgBugyDDuunNig7RX3djFgobcj
0e/Bz+SEYP0f9TznDcQfvYKBksf6Qb5StEbLTvMwpPdU8T3syp2Ix87xvMCpsDEj
Wn+VV2pJRV5GREapBtJ8VfqF0X+6qWy3uWXAp0qp9cIrZFqbnQCjoBbC27uGZ4YB
+MNkD3FQaJqRPRL9AFo6JqiEzUXKL39B76qI2kJLL11pzUcziVqbNK4V2ieCHV/g
P7/+qIB8xBxc7Epc7LdrsgOgcVYzzOCEb4lOyasGmDtxf8SZJSzcvDWCupKEW/Wr
nzBo5iQvb+MraX9JUVdAnewkWAnJK5ue6Lu0w61MzS/Ky/b72gn9os0cWynCbcrb
j3KeRQq3XPowW8P6iXYmxLA4gl+o7vY0YwZgXddtTiCn0zOvgww=
=CI6z
-----END PGP SIGNATURE-----

--ugh7psUiyx8kJwdF--
