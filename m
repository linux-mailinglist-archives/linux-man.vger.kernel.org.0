Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89CE377A2CA
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 22:49:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjHLUtA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 16:49:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229596AbjHLUs7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 16:48:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B37E10F2
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 13:49:02 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2B54E60FAD
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 20:49:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF84EC433C8;
        Sat, 12 Aug 2023 20:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691873341;
        bh=JCAgJIfBcBA8QuvsvxJY4RL1MAkIC1RUp0SljhycwD0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=WjIMcGTD3QyBIsvRP8CR9xAw4zdxPZbGkL/0hBAUfcXDsVbxpJKPPS/wORfTF8u/E
         TSOnR7D5xZzF1E+tAG9hL6pUJniTxg5VkaFw2T0J9JtBbwucqukcanuR9Nnmp72g/m
         0UiuyH0yid3WIsduRn8KxWjFoBOxK2V15PohlSbdB9zui9kqbWcdcig86ZmRZSs/YC
         8EimPRnlzu9YI6CChKgVoEIb8GO3us2NMGYNSrAaDQaniKNeQEpANjOOV6miKxGJuz
         li0R9Fh5L4yJ5+rdIlLEqByXCmCmF60QG1vB6I2pOz7AOkdYHTP+evnOyV5XMn0NIA
         VmOYTbEKQk0Kg==
Message-ID: <40ecd524-8914-1dac-ef85-130cedd799a3@kernel.org>
Date:   Sat, 12 Aug 2023 22:48:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] tmpfs.5: document size/blocks=0 and nr_inodes=0 <=>
 unlimited
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
References: <s5j5wmngs2hpb5yx7frmb2uq5hc3clcpyfr65tzwmu3263bvc4@go2wfetupvjj>
 <118e7b3e-9d89-32f0-781f-0e74fc7279fe@gmail.com>
 <20230812190401.4bf7xay4fws43tza@jwilk.net>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230812190401.4bf7xay4fws43tza@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6WzngeDq0wTvTfudpMl4WkzC"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6WzngeDq0wTvTfudpMl4WkzC
Content-Type: multipart/mixed; boundary="------------kJbc0bHaHOKyhEX2aTidFQyL";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 linux-man@vger.kernel.org
Message-ID: <40ecd524-8914-1dac-ef85-130cedd799a3@kernel.org>
Subject: Re: [PATCH] tmpfs.5: document size/blocks=0 and nr_inodes=0 <=>
 unlimited
References: <s5j5wmngs2hpb5yx7frmb2uq5hc3clcpyfr65tzwmu3263bvc4@go2wfetupvjj>
 <118e7b3e-9d89-32f0-781f-0e74fc7279fe@gmail.com>
 <20230812190401.4bf7xay4fws43tza@jwilk.net>
In-Reply-To: <20230812190401.4bf7xay4fws43tza@jwilk.net>

--------------kJbc0bHaHOKyhEX2aTidFQyL
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-12 21:04, Jakub Wilk wrote:
> * Alejandro Colomar <colomar.6.4.3@gmail.com>, 2023-08-12 20:08:
>>> Bitten by this again. Behaviour blames back to at least 2005 (so=20
>>> probably original to shmem.c), documented upstream in tmpfs.txt.
>=20
> (I've been bitten by this too!)
>=20
>> This is a bit unclear to me.  I guess you refer to the Linux kernel as=
=20
>> "upstream", but the Linux kernel repository doesn't have a tmpfs.txt=20
>> file.  I recall that they moved their .txt docs to .rst, so would you =

>> please share the full link to the .txt file that you refer?  That way =

>> you can ask git(1) to show the history of that file even if it doesn't=
=20
>> exist now.
>=20
> You can ask git for history of tmpfs.txt even if you don't know the=20
> exact location, although admittedly it's pretty slow:
>=20
>     $ git log --oneline -1 '**/tmpfs.txt'
>     7e7cd458b810 docs: filesystems: convert tmpfs.txt to ReST
>=20
>     $ git show --oneline --stat 7e7cd458b810
>     7e7cd458b810 docs: filesystems: convert tmpfs.txt to ReST
>      Documentation/filesystems/index.rst                |  1 +
>      Documentation/filesystems/{tmpfs.txt =3D> tmpfs.rst} | 44 ++++++++=
+++++++++++++++++++++---------------
>      2 files changed, 30 insertions(+), 15 deletions(-)

Interesting.  Thanks!

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------kJbc0bHaHOKyhEX2aTidFQyL--

--------------6WzngeDq0wTvTfudpMl4WkzC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTX8DoACgkQnowa+77/
2zKMQRAAjxJn8naUwzlpMEAk/0Z8lJ6s1r8dkHVUpwlK2drlgcpGaOhQ9AJEhJmA
v+eH7R7EBqs2RxThDj375Uj83v2zzm1WfZeQ9rZL1xuE2AOy1v61LCfXwD2uAsGN
vdhDd6jj0lHvY3BvNI5CZtUwPLy21XbmX293HKUxFA54zUZCmk6vNpkz2VxjJ5SN
wJHIxsRwqCgMviybxmCrzbXk11iIjB1aS/nBBxKjWNBGc2fm8Nb7ozgovGlNRtZX
GoQzxzb3KN7WuR/qGMrXTKF/mTu8RxWWK0KkOutfqYRG571BJNs/cgaC9IDeLqNf
2GuIHeneNPLg1KqKnCbNvJrG+WqqwThXqhqNykuGgq+kN2ocOq0uPfRzgXNv25c9
1SMcPS33UDHzytLos1zSuuNDx4qnZ/a2VMqYwpv9pdqTnhfo4HbG94YjyOKWnw2H
j/x8MKmOl5WzJDLNRU+RZ3KiXio4VMvYTeiEHEerQu+JFvYmwF87Kx+DIN7RMkkh
EhRYJ3rkBowM+VDJ49asy3fYSItG7ztgZQYxqMLBHYTdLApYYJDXVlu173YqDHSU
t9vkeJ6pOyMZJdv8qPzfrb+nY1roIyc8Oxy0QrNCcBTeQHBMsjSWZsc+7ZMoLM07
FyTEKQr4SDw5lueWhFYwI9JbC51fwbMGDZctcwYIVDhhPNRinzk=
=K0/A
-----END PGP SIGNATURE-----

--------------6WzngeDq0wTvTfudpMl4WkzC--
