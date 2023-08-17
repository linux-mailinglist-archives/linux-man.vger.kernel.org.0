Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82B8977FF5F
	for <lists+linux-man@lfdr.de>; Thu, 17 Aug 2023 22:58:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355078AbjHQU5x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Aug 2023 16:57:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349255AbjHQU5l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Aug 2023 16:57:41 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DA1D30F6
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 13:57:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B01B061F4A
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 20:57:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2367FC433C8;
        Thu, 17 Aug 2023 20:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692305859;
        bh=7NeE3BE/9nSe0TMj8wKFPJFtcaXQpF0UAtOjy6h72OU=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=ZIiCiH55ccWCGGFgALHDjVAUXnhWnpTFBeNBC/co3lT6nHgEMg0PS4rKiqwqWNuHI
         CdYN+/b5PwXIvcYopVkj7hLNkIanfj/u5FMuZM9EkOoMgDQnSV5aanOdEHBfAhFONo
         sPZRnZ+n1xmDa+lXsX3gM1lnIQ2k84d35nk/UgR4+1Utbu7Hp5a8ZDVVw3pMZj7Nav
         uWwJtG9jj35kYOQVsEP8r5PoX9n/BtOu6M83W4QfuvvgpN3SSA+adY01K27BkAZh1z
         lf2oL2Dl5+pJh81gQUZtZXvw7o3PneUCgijgrpd/Y6UMBKf7eFfgItUIHfqokbMFBS
         x5K0+wlsfa/ew==
Message-ID: <3134bece-a338-7199-1e0d-5a48f90c88f3@kernel.org>
Date:   Thu, 17 Aug 2023 22:57:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: proc(5)'s sashimi
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc:     g.branden.robinson@gmail.com, xxc3ncoredxx@gmail.com
References: <ZNrsvD9KCmaBEYnO@dj3ntoo>
 <e891a3d6-56e0-78e1-9c60-2dac400995bd@Shaw.ca>
 <b12f1545-8611-4996-d790-1269174b6d10@kernel.org>
Organization: Linux
In-Reply-To: <b12f1545-8611-4996-d790-1269174b6d10@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------A3qsiJ6uAwms3rju8WOrj60c"
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------A3qsiJ6uAwms3rju8WOrj60c
Content-Type: multipart/mixed; boundary="------------nSACEeePrVHHboqkUEGw6d7K";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc: g.branden.robinson@gmail.com, xxc3ncoredxx@gmail.com
Message-ID: <3134bece-a338-7199-1e0d-5a48f90c88f3@kernel.org>
Subject: Re: proc(5)'s sashimi
References: <ZNrsvD9KCmaBEYnO@dj3ntoo>
 <e891a3d6-56e0-78e1-9c60-2dac400995bd@Shaw.ca>
 <b12f1545-8611-4996-d790-1269174b6d10@kernel.org>
In-Reply-To: <b12f1545-8611-4996-d790-1269174b6d10@kernel.org>

--------------nSACEeePrVHHboqkUEGw6d7K
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-15 18:46, Alejandro Colomar wrote:
> Hi Branden,
>=20

Oops, I meant Brian!  :/

Cheers,
Alex


> On 2023-08-15 16:26, Brian Inglis wrote:
>> Hi Alex,
>>
>> ++ About time.
>>
>> Instead of the meta path component <pid> in the name, you could use th=
e actual=20
>> path component "self", with a standard note that it may be substituted=
 by the=20
>> pid of any process (to whose metadata you have access).
>=20
> I considered that, but I think it's better to use the placeholder.  sel=
f is just
> a special case.  Also, there's /proc/tid/ too, so it seems more consist=
ent to
> use pid.
>=20
> Cheers,
> Alex
>=20
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------nSACEeePrVHHboqkUEGw6d7K--

--------------A3qsiJ6uAwms3rju8WOrj60c
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTeibkACgkQnowa+77/
2zILYg//R1PQpaeREXQziiVg0WNtTPlV7JWObzikrKgU7wHTnzySK+L5tJY0by39
xXwqBgevH00dtRxduTXBp+/PtafmVsfz3EAXJoLB6/MEnOA1j8jE1IwK9Zj4em71
GFVoezTsbbm9pvnGvJP/MeOD6pMoodSseZNyVyWToqFBaGsScTH7uS+y2q2caB/R
8J41dtmFZ0uDb64T3YoB4Hw8MzB0kpt0qCmGuDzwav8/j2kY6xtvVT0Fm0yOCoCF
2KcyqfR+hTcpHhMkrxqpMm+ncQ1rBj3sNCHHZM9TKUuC3n4Ns2I7yvFLagqPVxjL
KRlTJ4CFgbfc+NFCIRs0i17bWIwC0lvtLSS+t0rq1pYvQwOI+Xx8VgcI7jaKsFzK
72mLZ4QKEqmY9byvrciUYPgeXMApMMrD5ohaTymrTp/Akhmtp6XDBG8ytU3hRvpC
6hcu83j3fqxI0DMtwVgtBrdxzxiJQ637Azg3SHPUmRE78Yd4XKSjssRT5lTI4YVv
blb2HUg/PDxRmz23TudUF0kzjNHwVg7n7voAaTM0km4NQ0cPRZD5zuVWg2arpsta
Xi3/qeEpRK6/p7H8lupGI5YKtXij4Bxc6FHklWMNxKBz+JCDhMxjvCszRmSPlPQe
+JPL+SwgpRC4UWma+Rdb4Qpvc19d/MHgXq6JGSyM5tkB87oW4I0=
=cF2X
-----END PGP SIGNATURE-----

--------------A3qsiJ6uAwms3rju8WOrj60c--
