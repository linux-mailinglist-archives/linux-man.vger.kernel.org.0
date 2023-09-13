Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A75579EE1D
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 18:15:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbjIMQP0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 12:15:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbjIMQPZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 12:15:25 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C5B61BC9
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 09:15:20 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D941AC433C8;
        Wed, 13 Sep 2023 16:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694621720;
        bh=CM3mvssLxh/aHChgLdCU40NopkfxoWOgKRbXpbSGc+M=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Kz+ubk2781Z/vgPLzCdfyXnXx8wDRniJubu0RjGLCYrt1nEzCGOhquiYSR9FgC2wn
         UcPRdG89hjUc0l2trQcP+2jkY9L77pT7TGyhsC1mRA35P8SLclRIFU5RzkXMImYUpN
         APe3vRKxK6Q8bq2iNWf0PtbTBeX2mcqgkMEovapJPnPuAKcpoGfL8kpIW4sZWi/qqQ
         WpS3lTQFw6fUee4Anx/m7tnGeKi8lWDArhqtgYnYufK2EI+4Iws2bqXo2V6yCZI271
         e1PB08p7OO2DyxXu150OBC+A8opkxBHfsT5hg3MdrG3fMNjn2P1svjk17t3eplSH3+
         3G1NMtvUA8Peg==
Message-ID: <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
Date:   Wed, 13 Sep 2023 18:15:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: POSIX manual pages
Content-Language: en-US
To:     Andrew Josey <ajosey@opengroup.org>
Cc:     Geoff Clare <gwc@opengroup.org>,
        linux-man <linux-man@vger.kernel.org>,
        Eric Blake <eblake@redhat.com>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oaHC696S8qQmBAmXzchxWh9F"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oaHC696S8qQmBAmXzchxWh9F
Content-Type: multipart/mixed; boundary="------------7nTY8Dri6uKd4N0JjvI8lobN";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Andrew Josey <ajosey@opengroup.org>
Cc: Geoff Clare <gwc@opengroup.org>, linux-man <linux-man@vger.kernel.org>,
 Eric Blake <eblake@redhat.com>, Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
Subject: Re: POSIX manual pages
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
In-Reply-To: <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>

--------------7nTY8Dri6uKd4N0JjvI8lobN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

[I reordered your answer for my response.]

On 2023-09-05 14:34, Andrew Josey wrote:
>=20
> hi Alejandro
>=20
> Apologies for the delay.

NP

>=20
> Are you in touch with Michael Kerrisk?

Nope.

> It also appeared in discussions with Michael in 2020, that he had a way=
 to convert the source format to man page format.

Yep, this is probably "the way":

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/p=
osix.py>

> In the past we have worked with him and made a permissions grant - whic=
h outlines the terms we are able to grant =E2=80=94 these are limited
> by the copyright holders.=20

I understand.  Would it be possible to suggest the copyright holders open=
ing a
little bit more?  The C++ standard seems to be more open (it has a public=
 git
repository with the source of the drafts) [1].  Maybe POSIX could do some=
thing
similar?    It would make contributions to the man-pages-posix project ea=
sier,
as contributors would be able to test the script with the original source=
s;
instead of just blindly trying something, and asking the maintainer to tr=
y it
with the secret sources.

[1]:  <https://github.com/cplusplus/draft>


Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------7nTY8Dri6uKd4N0JjvI8lobN--

--------------oaHC696S8qQmBAmXzchxWh9F
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUB4A0ACgkQnowa+77/
2zLbHA/+MVklNhTgxnvvSuar7oL62QPtLQNuPntKcxb3TJnaWGfpVzHUKxs2Nrel
akLlrRWKAOgUri9sbqXL+PV9bxzqZYFf4NhFpJDzz2oRJ4KSVxEiK52/wNM+GtfN
VGDVD2Lg2m8g7bJ87TglHe01gZ/EkwFSgXGhehgWSf+CMDAeeFFf+QKQi5KFLFvK
VMLcpTItrSnU5oDlSrp8OHjmqLPeQ13/hkYTRyNq8Zp704AK4C3ZG0kTVnZ4Wr6A
pIyvt3pC/7QhBVpmppeYe6qjH6S+rYB8MrsTr+azEFcs6mVr6bhBQ9u0nvPi0XMW
5HQNWLxcYkReC0+Lua8ID1WPyci3mYDtJ066wPTqpO/B9uuz5IDPVSDsmg8z7hCO
dz8XyLJXiWl/vMM9k/s2xUMMqX5JdoE0zc3siaCibEv+pggZ1YKxN3RdIeqbP6uP
mgUdO1kjQt6HxRBvFpbgpjN1mB8/zYuDqlea43cPA4b2pWXgLvhCXz5FcQU6gt9M
EbAJ7S/mBTeu8UmwiyNX6Hg4VGI6xC99qL8JvMghbVoDYGfWHD+vqeqDeHLVqnLc
kGrORSEASSEHRUETVLaxs0HyOC7ERmU/nI3BGwlM92PD/zy/LtWQDHY1qDiALRQ/
q+YbAooC3tzwICRkWlXV6bzVOvxvEO85YB4j0ul4J8SvJq4Cc4E=
=5/6H
-----END PGP SIGNATURE-----

--------------oaHC696S8qQmBAmXzchxWh9F--
