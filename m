Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B47E77FECE
	for <lists+linux-man@lfdr.de>; Thu, 17 Aug 2023 22:02:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237114AbjHQUBz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Aug 2023 16:01:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239262AbjHQUBi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Aug 2023 16:01:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA9DE30C6
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 13:01:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8085761F41
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 20:01:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B09DC433C9;
        Thu, 17 Aug 2023 20:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692302495;
        bh=IVzybiLzIb8d5IP2oiRxVIKwr7CbS/4BVPaDhoLzDek=;
        h=Date:To:Cc:From:Subject:From;
        b=SgLfJ/tYwboMIAg0x3XSAG0987A7xuZbw++9QB+T8V2eFpRCSOWqFwQtOYD97pGUM
         +y1cXBb9xyxlKYcNmq001IhLRgxD/LojDwJYuzznJQvnjH8MiPd0QbJWjFx7/FdgQU
         j028UrxB0iMHReQTbiRgwJNEMoo59CZH9MTc2zNrn6Tn2eXhQxADCvb32LRD3aQU5d
         xSwhmOIfJ0tn53LAm2Z4xHI+ral0/+yjrqKcpztxfbB1eEHHGPZl2mzTgQXBwOLAW3
         1XPVBf+a9h2g65+BsJMsJ7sAtHEIbDCNHJ6WBmil4+NNiXoNOHX4yu5CL9xUfpwBiO
         zfy4g8VT//cfg==
Message-ID: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
Date:   Thu, 17 Aug 2023 22:01:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Content-Language: en-US
To:     Andrew Josey <ajosey@opengroup.org>,
        Geoff Clare <gwc@opengroup.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Eric Blake <eblake@redhat.com>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Subject: POSIX manual pages
Organization: Linux
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------C1HE73VNn3OmcQWwkaiufqUX"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------C1HE73VNn3OmcQWwkaiufqUX
Content-Type: multipart/mixed; boundary="------------xRdI5EIi4UpLQnkj0gFh0U5g";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Andrew Josey <ajosey@opengroup.org>, Geoff Clare <gwc@opengroup.org>
Cc: linux-man <linux-man@vger.kernel.org>, Eric Blake <eblake@redhat.com>,
 Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
Subject: POSIX manual pages

--------------xRdI5EIi4UpLQnkj0gFh0U5g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Andrew, Geoff,

I'm the maintainer of the Linux man-pages project[1], and also of the
man-pages-posix project[2].

[1]:  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/>
[2]:  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/=
>

=46rom those upstream projects, GNU/Linux distros distribute packages lik=
e
Debian's manpages-posix and manpages-posix-dev (in the non-free
section)[3].

[3]:  <https://packages.debian.org/source/sid/hppa/manpages-posix>

I find it very uncomfortable to maintain the man-pages-posix project, as
I don't have access to the source code of the pages.  I don't know what
agreement was reached with the previous maintainer of the project,
Michael Kerrisk, but I'd like to ask if it would be possible to open the
sources, and what conditions would be nonnegotiable for something like
that to happen.

Ideally, I'd be able to make a fork of POSIX's git repository, and push
that fork to the kernel.org repo.  Maybe POSIX requires that the pages
not be modified, or some section mentioning that the page has been
modified and is not a source of truth.

I intend to distribute the pages as close as possible to the originals,
with little to no modification; the only kind of modifications that I
have in mind are typo fixes and formatting fixes, and use the build
system of the Linux man-pages project, but I'd keep the source code
largely untouched.

You'd probably have a source of bug reports here too.  :)

Thanks,

Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------xRdI5EIi4UpLQnkj0gFh0U5g--

--------------C1HE73VNn3OmcQWwkaiufqUX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTefJwACgkQnowa+77/
2zKkTA/+KL1HFL9jvkWaSNHvWYVRoIY3htY7eeTY+jTPnfd1aQx90/JL6EeyZ0Bq
1RAl/lI9Ml4m5wRG2QAj5iyEOFnBeye/RAychhjE6barM7fDRkfLaGAGnC0/aHKW
Ko4eSEQWzmWsgmrZ3mYIxdhDPqzC36W0ln4eixpPeU5sfM3PnV+xqzi/ziyFpeXk
oYVCPP3u4LUhyaBHLCWjjU9NE633GtY3+kqd2a6owaSzMD29H1RsZmPAYJ61afl+
S3b5Ck8DfsP0Ho0IlwJkJaURhPJwy2SfkC3AZfmr9nPXvL3HJe9eR4MTCGjnU+6/
AXKZbKr/5NZ9KWl2cVmlqxpMtAn1AowVIoGEbpHtsu96zPrBt58529dwgStvt3TB
K9pgCKB+8BWZeErPUfQUhpkhbJ6pnvZc9j0I8Pammiz18S0ZnObNXLBpEZXWj0aj
TTL9qYk0YrgfEeYHOJG5hm2ET2d+FaGq8isOPU6m6LMJDsAyQxMNl4konIy7gIgD
Gw+Eo9J+mbhwspSZOzYd7H2J9QJpl+5daZ9i8Y6Q2t2iDO1XGCECHGWWO4WgKRmD
2cz8p8w4UDVxZhTAlFoU5srIJLmxyNnsOtFjkbLpAD7YJyBYnmKmtqAj3XCN70FU
vPyOv2ljv/kTG5mUCyh/6EoVKFf9uCWtM//d/rRijZGxN611y6g=
=Lr4P
-----END PGP SIGNATURE-----

--------------C1HE73VNn3OmcQWwkaiufqUX--
