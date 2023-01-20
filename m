Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E177675F74
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 22:11:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbjATVLh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 16:11:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjATVLg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 16:11:36 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31B918B328
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 13:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:References:
        In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=1CfqlafoYM2s1bXyzPsiBGaMesy1i2GuALaDd0ZSmdE=; b=K/izIDxIBFEqc5RS1jgg44EzLq
        rjVW5y1oruZYQ86AVAxIl3y4Lizk5P8v+8pqTmZIq8BMjcAAE4teKHqRA42ewWwlzwMNTmbD+j2yd
        ToodI0lSxBj8MAbBZCQxGBikWGwOkn45nbtExtIlJulx4LkxhleE83flx0/QUrglsnymTBSPzHTeK
        3R6guHzGVXtt78OhzloSteE1nnkQji/RcANIzMXpPN/wCCSQzKrK/qzQYK9e76EicZvJBuwNJAl5T
        xGKcY5mg7pb9JcMZ3/6rDXcJOZNkK2RjI0cW/SkVw977Yy1/GHpuQ0twMK4CytoWG7P6uh0paZQFw
        9HKZ6Enw==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <rouca@debian.org>)
        id 1pIyfZ-00CqbK-Co; Fri, 20 Jan 2023 21:11:30 +0000
From:   Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
Date:   Fri, 20 Jan 2023 21:11:28 +0000
Message-ID: <1698201.vqxVuVRdHc@portable-bastien>
In-Reply-To: <528e35f3-ee79-52e0-be5b-ea5572cf3d07@gmail.com>
References: <2889739.XEG2VLDMQ1@portable-bastien> <18201055.pzcD54PWfD@portable-bastien>
 <528e35f3-ee79-52e0-be5b-ea5572cf3d07@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6467899.WbjJTfe3L3";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Debian-User: rouca
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart6467899.WbjJTfe3L3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
Date: Fri, 20 Jan 2023 21:11:12 +0000
Message-ID: <1698201.vqxVuVRdHc@portable-bastien>
In-Reply-To: <528e35f3-ee79-52e0-be5b-ea5572cf3d07@gmail.com>
MIME-Version: 1.0

Le jeudi 19 janvier 2023, 23:31:09 UTC Alejandro Colomar a =C3=A9crit :
Hi,
> On 1/19/23 22:38, Bastien Roucari=C3=A8s wrote:
>=20
> However... Considering that most APIs use `struct sockaddr *`, this would=
n't=20
> allow the internal libc implementation of functions like getnameinfo(3) t=
o be=20
> free of UB.

libc is safe thanks to the transparent union of pointer.

> Maybe a better thing would be to do the following:
>=20
>=20
> struct sockaddr {
> 	union {
> 		struct {
> 			sa_family_t  sa_family;
> 			char         sa_data[];
> 		};
> 		struct sockaddr_in   sin;
> 		struct sockaddr_in6  sin6;
> 		struct sockaddr_un   sun;
> 	};
> };
>=20
> struct sockaddr_storage {
> 	union {
> 		sa_family_t          ss_family;
> 		struct sockaddr      sa;
> 	};
> };
>=20

No I think we could do better with recent C:
struct osockaddr
{
  unsigned short int sa_family;
  unsigned char sa_data[14];
  char _extra[];
};

> This makes sockaddr and sockaddr_storage have the same size, and also bot=
h can=20
> alias any of the children types through the unions, so one can use either=
 of=20
> them for the same purpose.

We could not due to old talk protocol

Only storage is free
>=20
> I'll be sending a patch soon for discussion.
>=20
> Cheers,
>=20
> Alex
>=20
> >=20
> >>
> >>>
> >>>    struct sockaddr_storage {
> >>> 	union {
> >>>    		sa_family_t          ss_family;
> >>>    		struct sockaddr      sa;
> >>>    		struct sockaddr_in   sin;
> >>>    		struct sockaddr_in6  sin6;
> >>>    		struct sockaddr_un   sun;
> >>>    	};
> >>>                          char __reserved_null;
> >>
>=20
> --=20
> <http://www.alejandro-colomar.es/>
>=20


--nextPart6467899.WbjJTfe3L3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmPLA3AACgkQADoaLapB
CF8bww/+Pjzx0uvKmB9NGhCUbIJopnh7B4AkmfUjN0Inz145nmzlVC+nKFrbrgy4
L+I92AzHcuJPgk3IHA3rUYKhb5xl0V5hh7BGkCh8Yhb2FaBTT7QkKyoFtMPolmYB
fSb61yF62A8zshOYvL0kU2OLZd766lhtqeXIL/Gw6j0UWXv084Qj/CPAUu9O0eHQ
qheYUaEWHj0L6zcYqpNbrg52NU6Xsca0YeGTwlEClW6bvoZg7+XDmUWfNFc5Tf/i
0pnR/edpWfziJ/VdJUTrHe2iWcSrF9o4EkMfI6JZaEisnZJJQ6ex16rjV7IsqU5G
cOWhr9Bs75YzIxuYLQYFaggp8j0Ukwu68BXrlGnr2Z6eRSeM0HDw74jaP+wo6lFM
OdVqkKjoCmUOiOXw5/1RqSNmdb61Yk4S98sqdAVgFUFCFiNd1aDt3KZjju/WHSBw
bPfqmGJIScSSNCPjbUpJ3lAm4t0KY1at54jdkqDnspaDaMiD6ImfnT2Bwb4yxgNZ
uKC+jilyxEapmUv3azoCmAJIVhQS3Bj5O2SZ8y/eRB9h8SCosaT8UsuBDUm6XmPI
Hf8tWVeMxldNZ0u5uuEXdVgwXmYMK5P4VFA9j3hjfdwT/fgB0vbW1cUCYSP8iB4q
b1NilCHk9NgOiYhqIQZeO3ye1q5kCjCBJ/tIEcVHM0bQhvY7QOw=
=yWU9
-----END PGP SIGNATURE-----

--nextPart6467899.WbjJTfe3L3--

