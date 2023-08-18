Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07FF7780A05
	for <lists+linux-man@lfdr.de>; Fri, 18 Aug 2023 12:29:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233737AbjHRK3Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Aug 2023 06:29:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359618AbjHRK3P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Aug 2023 06:29:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9127112C
        for <linux-man@vger.kernel.org>; Fri, 18 Aug 2023 03:29:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 26EB1660D5
        for <linux-man@vger.kernel.org>; Fri, 18 Aug 2023 10:29:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99B61C433C8;
        Fri, 18 Aug 2023 10:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692354553;
        bh=QnsV55tlRawzL9qfaGEmqoz3+Lldawo3JzAW9w/pZpM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=D33w3evM5Mj/APP0wbeltEArSALu2jvZf33c1WoPOIZicMH4i9JOnkDvQcJsKh6il
         O2qWjqRXr3WOTXDeLK8+vQFjhxsjcZudCNUqCQKyOV7nH1RCZNLsV80LPh/SJyBA7B
         rhkasvgNFg6F1vBMZsMStPFjEX9Pz+/qVcUwCUKWp3NdZ+6e9SR9bRsCoSDDukB9PN
         PSLc/9KjiDHo68RT3x+YRZ/U/zEyWro8kFKp+UfuM12J1FQyT3wUhjbqTK6AG+goz7
         dIu8OVVhrTpBxChAmB+Io7GjJz3Oubg8nsaHbpiz8gsQimAmX5XATbmd+rfMJ+8Hwl
         qP36rC3BMCcAw==
Message-ID: <56c1efa3-9f23-8c76-6749-5875e5489cb7@kernel.org>
Date:   Fri, 18 Aug 2023 12:29:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
To:     Deri <deri@chuzzlewit.myzen.co.uk>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21985157.EfDdHjke4D@pip> <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
 <8264634.T7Z3S40VBb@pip>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <8264634.T7Z3S40VBb@pip>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4c4YPrYiZUx9U9z8RbZvWAIi"
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4c4YPrYiZUx9U9z8RbZvWAIi
Content-Type: multipart/mixed; boundary="------------y0cUH4ma77y0BygAgftYEKy0";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, Brian.Inglis@shaw.ca,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <56c1efa3-9f23-8c76-6749-5875e5489cb7@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21985157.EfDdHjke4D@pip> <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
 <8264634.T7Z3S40VBb@pip>
In-Reply-To: <8264634.T7Z3S40VBb@pip>

--------------y0cUH4ma77y0BygAgftYEKy0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Deri,

On 2023-08-14 23:40, Deri wrote:
[...]

>> Do you have an estimate of how long your branch could take to merge?
>> As in, more than a month or less than a month?
>=20
> I'm really hoping Branden's going to help me with that, I think he inti=
mated=20
> that he might when he suggested I start a branch for the work. I have o=
ne more=20
> push to the branch to do, but I need to contact Peter since there is a =
minor=20
> tweak to om.tmac to make expandos work in mom.

Nice; then I'll wait for that to test groff from git HEAD, so I have less=

moving parts.  :)

>=20
>>> Makefile
>>>
>>> The simplest option would be to add a new rule to the Makefile which =
is
>>> dependent on all the man pages have been built, and cd's into the scr=
ipts/
>>> LinuxManBook directory and calls the program with the location where =
the
>>> man pages exist. However, I suspect Alex fancies something more
>>> complicated by replacing the perl with a hybrid of shell command and =
make
>>> magic.
>>
>> You suspect well.  :)
>=20
> Just like my wife, she often tells me I'm "No longer required on the=20
> journey!". :-)

:-)

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------y0cUH4ma77y0BygAgftYEKy0--

--------------4c4YPrYiZUx9U9z8RbZvWAIi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTfR+8ACgkQnowa+77/
2zLqtw/+Ozeft+dea3MDP5X/vcwBiLKeFoWrs7jjotsalUTVmMvblUgURATE+8F5
6YtUoF4HeU/Wvx2IEGaYL75r8yPMejHNCKZjEJPj4nND7ksr8uzq9G+Ac0Vpw0fQ
laMSuRnUHZfbepbTeO5ybdz7+o/yyO8mJG2pdB0Ah0BWz9WC48zrZel8E3VHfY29
OGtg2a1Gwhrf/jfmm8+s2WZHkmzhd1y4DJx3cyNhzcOty0csx7YkmT8osaRC145P
xPpzMQa7GNhHMmsJQMUdTf9FZMjVXkPEJcpYHJonulXgp2XElhvSfrspzMyhkogx
c9K5IbnkhUgveJ5FCgMp7PA9wMuBlB1zHjj4c/u/DBehoZSnJSaNB1+wXjmGlSG0
rz3UtMV3TzSxnf2N1ji+haRacEU1uhG/FKsgdtntUHOnW9Yc4rzXpB1q1tcodtft
yVVHR3uG4fP9VyXdaB/2mYTUcsxGGz8s9YVnUaswAPhQ+wtssFGx7//SAHHE60r0
ZesqejuKxikI5VPUME9qzGT9n2OmKe9y+4djP0jEmBy11UhHd35VRNKj97Q0FKVD
iFk1lWgV9GzwJAyD1FVAv4Z5RYcNup8j123hHN2gogyWk9Jn3Dh468Sj6mSCWHaL
dN3aEzAc/qbErLxN8LQepV7Cgz/sFS4j0vaRhSTGv1ZWHBtf+CM=
=6ObD
-----END PGP SIGNATURE-----

--------------4c4YPrYiZUx9U9z8RbZvWAIi--
