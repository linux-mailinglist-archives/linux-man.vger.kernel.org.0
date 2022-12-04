Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A33D641CD2
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:11:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbiLDMLU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:11:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbiLDMLS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:11:18 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 367F017AB8
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:11:18 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id w15so14726296wrl.9
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bseE89LvUaG235IGCUp+CtpL8nADoHdchlSpvlhxMz4=;
        b=LNc5v6ufiaFj6PozbCHAYUa/S34fZhnHqsfPmHGIdkcLPmHZf8rRxKI6r8Y59y2ll8
         noTbzTEgl97Wx2wc/8SBqm19U8SxzKtXFHGpM3CRL6FJL9/koJEWs76WJoz76/GPsntE
         RHu5toFrIyh+TXCBR9CF4J8Lmm9yNmPpdj30+PClIl7rroNR0FjJPDFcmZbYqDigxqIN
         FbftztdK7qXLjGASZTcF7cxObTB+s6zDVzoju+0yAw5pTT1VLc3bC+QFw7Xufu3JTHWs
         oCjPD0Pugs4ApLRmd2zu8pJIHp3U0zPcbAAuDMAzc3ZRUPkOYCTjh8yNs1Q5KpF8ns77
         jFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bseE89LvUaG235IGCUp+CtpL8nADoHdchlSpvlhxMz4=;
        b=i7OMCCGW9V/U3QhL2jikj5bPT8ejAV8PCY8WBj64LUyUDpfuXG5fQUSAnoKz4SoltL
         2J5VSxs+l1Kxf5RMW+iXYlydsDMv1Cjdj+1EP573muoOABrNR6MIGgNusALhj6GZyfRi
         +0+LPFs6cmakpaKYd85bKanl2foQq6V4tPW1WNDNwPY3D2a6EShl5opdgfr14WOvmstr
         jKYzGBsiYPPih9sFGsa5ZL4av3feO/r/Lo5Mq0Uwtv4NzONlBs9WjLlUuJaIJkOZfQW+
         y3uJ5OUMJQ8uL1ufaGisc0b5694oVLV3wU/zt2eco1upP56BqrJJ7X7GceM8ncuhHPWD
         GZJw==
X-Gm-Message-State: ANoB5plfitKkvhhX8uaFsJS1R+oUFkqNZNp/KZRvfdAbV37mxWQp451L
        ieeKMZNvOEVuIUnB2LB43KdDcrLS5gk=
X-Google-Smtp-Source: AA0mqf44IKnP5F8EugGgN69xXPZ7OayImQALzYBLEawQCtjkhtkqgNt2R/CNsoyEzMuwCHHhwDxSMg==
X-Received: by 2002:a5d:6250:0:b0:242:35ce:573c with SMTP id m16-20020a5d6250000000b0024235ce573cmr9702729wrv.575.1670155876637;
        Sun, 04 Dec 2022 04:11:16 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a3-20020adffac3000000b0024245e543absm6386776wrs.88.2022.12.04.04.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:11:16 -0800 (PST)
Message-ID: <b8c8d275-5119-f19a-7fd0-edf5cc1ea9f9@gmail.com>
Date:   Sun, 4 Dec 2022 13:11:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090711.GA393@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090711.GA393@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kQI7D7rEYIhzrK0zWpCU2vTZ"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------kQI7D7rEYIhzrK0zWpCU2vTZ
Content-Type: multipart/mixed; boundary="------------B9du4t1MsOep7BRX1RQebPNt";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <b8c8d275-5119-f19a-7fd0-edf5cc1ea9f9@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090711.GA393@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090711.GA393@Debian-50-lenny-64-minimal>

--------------B9du4t1MsOep7BRX1RQebPNt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIHVubW91bnQg4oaSIHVtb3VudA0KPiANCj4gInVubW91bnQgQVxuIg0KDQpGaXhlZC4g
IFRoYW5rcy4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------B9du4t1MsOep7BRX1RQebPNt--

--------------kQI7D7rEYIhzrK0zWpCU2vTZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMjlwACgkQnowa+77/
2zKz/w//WhJSfCTe5nIRZWB8F5zXdsSk8MOIJqzEEsU//S6ySDYK59IE5WClcU1I
pjuuaJoiym3ZVrNI2oiMUKVVPnZURSnjI4OoY/rMowHCdIhTF/F10ZTov5SIWkOn
i6v69+pDCUosYscWSPHlnGtMJddrEcTTzT3mxWsH/ijFgTHCV29+7K6pzQYPSdta
fJkK/tcUq5RKWuBbtOZBU72XI9tgjJAdNfAg3E2hK8YdSxTFHIYIsT3Y38lxGgxh
/xEjYu+NpEJwCnJaWkXzLeN1U4SQNh2Y5aJVJThIMcnRgi8qptwzmtJsOGkN89rV
DUbWKRk0Gg9RYY8yYuAgVz0F7TZIE8jtifTkimXtxPrg/B/1oOFoXB5NF/hSsRXT
IC4T0pu4RPqHsnJy+tWWvXZvrfs1x3ESQveP+O5CATL/qHrvaiNWcL7i3wxJviVz
phE9SZ/mSb3eT7xeCkc+WGwLZxcUR2p33Va1JaJa06kupKUJMttqo2nmUl0yEVen
ly+7zINzGv9zQ4XmKWw3euGRmSRErGp86vHsgEGBzU6mCexbSQf0XWhRJtGRvUv9
XYJuYJbbMjBR7rm1HlamwiBP3i2bFRylVmbEwjSC/xu+QIUunoWx5M7vMoRb8mdG
nMNR4SSErDgHdWcgum2eQ9KYIm/wXJ3Xdye6j8xCdlPhF7ZwhUg=
=w3ep
-----END PGP SIGNATURE-----

--------------kQI7D7rEYIhzrK0zWpCU2vTZ--
