Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2E8F7AE1AC
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 00:27:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232373AbjIYW17 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Sep 2023 18:27:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230097AbjIYW16 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Sep 2023 18:27:58 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA85B107
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 15:27:52 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8AE9C433C8;
        Mon, 25 Sep 2023 22:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695680872;
        bh=Cc6HYxgsm7NooJm3o9ednJxRw1cs6wqnd6XnJ62EcVw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jvL/WuztdxECue7iVN1UhhWZG6rLjyouPhkaC+1VTdaPdTpbeO3tPoeIkuSPPK5kJ
         qZoQcoZcs8wG77beUYiGawZCEpmq8UFOi8x8JaKMmih03iVoyxvnLf7NmYiTlxtbJL
         9f909fMoZg2S4BP+xFb8xSIMYgp4a1dPg7xsdJ/5HasrAGwRpTtdpKZs61M5+euDUM
         ZbD/6bPOop4/QzQ/+M3+05kc8OpKVS2IuKc7CLVBGJg/P/NvL3UCZTHJWRNvQJbroC
         3zVLu5EQVXvMrq60Y4Vw9IVNkYODkIOVNBFJRXgz7KnBM8lzmoa7lVBPj2ZelTeGN2
         oI0alWevoD26Q==
Date:   Tue, 26 Sep 2023 00:27:49 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "James K. Lowden" <jklowden@schemamania.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: man-intro(1) [patch]
Message-ID: <56rju7kgkgloo2juzu7qlezabi4vod4gwfh44i5c7pym5akmyj@uqjwia5mztc2>
References: <20230227141715.28405f68e2e3dffec3763a75@schemamania.org>
 <47a6e7cf-6446-35f8-573b-5bca9bd1939d@gmail.com>
 <20230306065727.feb4bf51da259571c93abe96@schemamania.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tlzmdj6cw456wals"
Content-Disposition: inline
In-Reply-To: <20230306065727.feb4bf51da259571c93abe96@schemamania.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tlzmdj6cw456wals
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: man-intro(1) [patch]
MIME-Version: 1.0

On Mon, Mar 06, 2023 at 06:57:27AM -0500, James K. Lowden wrote:
> Thank you for your comments.  You noticed some mistakes, and I'll take
> a shot at addressing your concerns.  (Not today, though, because work.)=
=20

Ping :)

BTW, you can check for warnings from groff(1) and mandoc(1) in your page
with the build system of the project.  Have a look at <./CONTRIBUTING>.

Cheers,
Alex

--tlzmdj6cw456wals
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUSCWUACgkQnowa+77/
2zKo+BAApE13Wy98AB8zmX4JAKQwDs7PPD5MpHdQHANiEkRgr0hpPCL6ouIiRAFB
FLh/AnPoHjY9f37yx4NboK+gDNqJ0kXB3U5dgXX1ldS3Gfq7kymLOHSVIbkS0VVU
Zln6zfvhBxDTCnHY71RY3/f2ld17uX8QUBd/VRv6jdJ7Fmp+57VFoLs5RjsYB/k5
B003lu+fEO4Iw856jBvU9uWFOFWdN0OnKaAxTOWJrVUqNyfHFQXDcQILN2TgENp9
AIxQo14JtZcup/d9p9qLsA2VPy5bVBCAE6+cNkGmfob3cvNQVkSfMxhS5oYdnH8w
bSssPdTcW15AbqK4PuI+T3xW+JufHhTAQ1arbKegt9GOGxhM8Ima6p1jR2C7oBck
tkeztHV2iv/bLkC20bu8kHPvgPxP1oE9jbkOlDhE7z0+ZNDD2mOIOVkcejOOeO2N
JEwWsJRvIlQ7ZjKMLvKGwkdNdJuSwA4QJpBcDk6+XrTmmmaeNYTas7IHs2RV7PQp
HUVr29e6HIMPKHfra3H8rhpWk7Mt0rdv3MRyJ+HMbbjPe7T8wN3DSr+ke1wQgFB9
fCkX34gz7sUs4heQpr+YXZVpkvNi2mDeSfczZhaGQN/Fkcx+yDuDSW4yuwjO7AcY
Pu0wm4Ne6m3NLdbajvdTauyM0ydVH7fjDieXYmbhYO24LF6RxjU=
=aLy2
-----END PGP SIGNATURE-----

--tlzmdj6cw456wals--
