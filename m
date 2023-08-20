Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCC04781F65
	for <lists+linux-man@lfdr.de>; Sun, 20 Aug 2023 21:12:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231433AbjHTTMM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Aug 2023 15:12:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231627AbjHTTML (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Aug 2023 15:12:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85A18A1
        for <linux-man@vger.kernel.org>; Sun, 20 Aug 2023 12:10:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EE63560C6C
        for <linux-man@vger.kernel.org>; Sun, 20 Aug 2023 19:10:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F52CC433C7;
        Sun, 20 Aug 2023 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692558655;
        bh=U8OZHiJdngbVan/RgQALO+y2eUNt4s7Utb+M4i2/yac=;
        h=Date:To:Cc:From:Subject:From;
        b=tnvu6GICF8vAt6s4tJNPpPKye/4fuGHGqCFU4h93c1R8QCEHZA36M0gF9zc6jtWif
         qExQ4GP/5lIFe9Anqef/hR9gdiPkm8jQIwOQCjuCzPTsklvETTKpB/oQJ1jVLwomus
         ojmyMA3e9CnhlFsDdbj/mbdhDjwTQaxX+Umd6+WtHHJQ0Y6Is48VkcPKiY8Rd9UpA8
         W4XsSvawzgIW0pcS9Imqzz4T02bIY7LGO1jlC+2AtLaj8RyGTUqBlgjoOeUARLcjqi
         lLH9GXDDXjhBYFsDpGCLd2XRikMJdW+0m4nEhmi87il8BA2Uft1JQxAmjhByAexiLR
         tkA5Smyp7JXmA==
Message-ID: <4e1081d0-1d77-0a00-78bf-5dc40522f428@kernel.org>
Date:   Sun, 20 Aug 2023 21:10:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
From:   Alejandro Colomar <alx@kernel.org>
Subject: '-' vs '\-' in TH (man(7))
Organization: Linux
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qTnoAKbnWlM32EjZf6bvKleh"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------qTnoAKbnWlM32EjZf6bvKleh
Content-Type: multipart/mixed; boundary="------------Xd7ixkHoc9aAxQMXqNYTPE6y";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Message-ID: <4e1081d0-1d77-0a00-78bf-5dc40522f428@kernel.org>
Subject: '-' vs '\-' in TH (man(7))

--------------Xd7ixkHoc9aAxQMXqNYTPE6y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

I just noticed that the Linux man-pages use '-' in TH.  That's
surprising to me, as Michael was careful to use '\-' correctly.

In the documentation, I couldn't find anything that says TH
should be different than anywhere else, and so I'd expect he
would have used it there.

$ grep -rn '^\.TH [^ ]*-' man* | wc -l
30
$ grep -rn '^\.TH [^ ]*\\-' man* | wc -l
0

Was it just an oversight, or are there any obscure reasons to do
that?

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Xd7ixkHoc9aAxQMXqNYTPE6y--

--------------qTnoAKbnWlM32EjZf6bvKleh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTiZTwACgkQnowa+77/
2zJlXg/6AstRrle5WPodNWSnsn+iHQJI86jsH5z4dakG8NRDVrkS2VLY/QKv5Fwi
td3In52wKQPNvyZ9XHEpRC7cQTNVRyfG/seMWNNtkzSvKX/6L5V2Im/cVYB2OuCq
1acj0+fJrHeUwA11ej4oiST+CdXopIzoofc5ZmxXeK2fCs74hEZFe6MteWrzMyXx
p1sWpf09bvs1/KrCBvz1V3fgpbGs3Evl3odHnWbqlnfyaYZMyIyi9fjKdAmFGCkA
ROCDlFz+X8YdODrqdpqnfzQw93xIvsennsdUtZ+mjPCywD6V1F4eNK0xAz7+1uhM
x+En6Ah7skhQHtGUq2RsEXqxuWFGQ5GcKKYamT8u63eUy0dW+GjgL10iDd4Cr+W5
eenmZaHJV0zCpvBJ+lTRrUwfrEJIzvk7zg+d0pCiSJGGZLc5HKANJbRnb0BETANJ
11H322BKkjCqqMToE7x2h8cWYORGu0kim6v5l1ghFYf9WqsIhuMTrnqChv7Pj0s/
rLwzqk6GwTaoD7dz9ZzQENFgTS1gpaYJlzfUhIo6wH0RODl5XyDMQhvoazTTqu5/
IelOu0fSvdZ9HQ2wUjmiUbPsVHVTC34gbwb3j92k+N33rfBnkrbrAei5tLdbqx0v
EH74pMU4qhNlx1TrEz8/agkD2IrCiAumG0XJwKdc+fwOWcHRk+0=
=Ku7+
-----END PGP SIGNATURE-----

--------------qTnoAKbnWlM32EjZf6bvKleh--
