Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48B847DE48B
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:25:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231785AbjKAQY4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjKAQYz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:24:55 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00804101
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:24:48 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0433C433C7;
        Wed,  1 Nov 2023 16:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698855888;
        bh=N5e2RMUAV5qgWYXAeXkpBnEOaQUqyYEOcAFpDehOA6A=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bg3oKJ5/UjzoD8Yvf4fsMljIL9H65uVFCIH6UEASTAI44M1zo/5ZK4IBfnceRVG7d
         tovVnj7O0XdMYDWBQZ0Y6WyIWtUF0wUgkalZhSbjNQOnNklsJ4QHByhaeVYg0gZpls
         CeOJkQnS+UFIFhBWEXx6WsReLWejgkVtl1Qq0mblcqj65E0WlTJZxfASBZK1wMeMSk
         arFkf9f4vUoFw/kpA/JLNELOzY/qHQGdxFDknr+WhpziFOwNbOJv2NLYq0QXhkgf4A
         Oc7ZlH+Bg//jIFLHy9yuy4UclXQxXfX2tawD8pdIGSRsclMQYM9GR2RTuvV7ScEtLh
         GU+FVknzlr57g==
Date:   Wed, 1 Nov 2023 17:24:45 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page bcmp.3.
Message-ID: <ZUJ7zYWY2yspm3Ec@debian>
References: <ZUJaZPqi0HGylv3K@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="twW9TbQbfytGd+Mo"
Content-Disposition: inline
In-Reply-To: <ZUJaZPqi0HGylv3K@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--twW9TbQbfytGd+Mo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:24:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page bcmp.3.

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Who is "it"?
> "B<bcmp>()  is identical to B<memcmp>(3); use it instead."

Considering that the rest of the page is there just to say this function
is deprecated and even removed from POSIX, I guess a suggestion to use
'it' can only mean use the other one, that is, memcmp(3).

Here's the entire page:

	bcmp(3)                Library Functions Manual                bcmp(3)

	NAME
	     bcmp - compare byte sequences

	LIBRARY
	     Standard C library (libc, -lc)

	SYNOPSIS
	     #include <strings.h>

	     [[deprecated]] int bcmp(const void s1[.n], const void s2[.n], size_t =
n);

	DESCRIPTION
	     bcmp() is identical to memcmp(3); use it instead.

	STANDARDS
	     None.

	HISTORY
	     4.3BSD.    Marked   as   LEGACY   in   POSIX.1=E2=80=902001;  removed=
  in
	     POSIX.1=E2=80=902008.

	SEE ALSO
	     memcmp(3)

	Linux man=E2=80=90pages (unreleased)    (date)                         bcm=
p(3)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--twW9TbQbfytGd+Mo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCe80ACgkQnowa+77/
2zLoLRAAmFTpG7rkBbS7UK8Yt+39uTjQON+SRezvXm11WnHRsjDxM1VCDqXHLeUe
URe8KlAfBfGiqh8hCe9QYK8/TTRiJmWDjkBYEu1sDEDHUtY/Xw6JALb3keRC8hLq
HWI7lsxOwR9m4URZywm7euOgioILkNBkkZnGuWOB4ZQYyI0DMOGqgjgWrijkbd7M
MC9uSEcRm2y3dIqewoj6sgQfVlORRnT5OlCL3tZWkt7LM+yxiAY9NmzMd5HY8nI+
VPTnB67xU1aJhlG870niADp7xhFdKtRY0HwXT/38+otNn5E1C5wTHcWV+UZRS4WE
fk5D4Ingkd/gF0JLJkkOosiBGzjduZFHNTxJ12uKqkYl4fkZX2EQEt+8U+LbZ/mM
WwcD8GQcnlTozZZ2Pum4RGa6C1rVZMBdtcyGno94YOgwiYCTZ+o170tPkK7TVatn
wviSMBck+cDpPLgwP8+xsYXpOymWDKr3tjwNuX+q8vLlvjRdtM9udyo0KuenDnZF
9Dt3WnCrQWTwII+Pk0sPiazLJ0pp95bhwGZEUaMFsCOnMxTW4Z1+eY7DSIpXxNG2
KqkYz4mhhOaxIgrNAPp9w9+b6ruc8Lh5G3YHAmoKpsBezUqP5KURVeqOSvRAyCnw
8yCWO2CoMhVThKUQvLhPi6ZaIGeZ5+SawxLEWtyvN6l4clfNGpk=
=oR3n
-----END PGP SIGNATURE-----

--twW9TbQbfytGd+Mo--
