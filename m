Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E05F641CC3
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 12:49:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbiLDLtY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 06:49:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229638AbiLDLtX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 06:49:23 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0165C658E
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 03:49:22 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id y16so14698289wrm.2
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 03:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gPx6oA/82jrNg5EN+yHnG/cuEdbk+mUnDXopUXD3qQI=;
        b=G66DGpfoTXeDSqjYVi/o6NYLtltO8dLnv5d2WyFYxE582NosjXNL5oSu+dkzayVrBB
         pq/F3B/XrRxphRiSZzkSqaMGmdyuLfgo8bCqttXcr65I36jVE1y1XCcS/IFt4LGVURbh
         ACsJ/JdvG9zZUWuK2v619yOWA7J+3+PsfwBHmv9gOX8HEqH+qQljxC8oChLhZepk+Uuj
         jkvH0rfvTDND8i4YPYnmH88FLjHt8yM30HgsF/EnmPWnmAV/Jl3CtGsy2NAKN26sls85
         jsuUoRxYHd9NmrtN28GKoF9Azk0zBsW1mSN9czSfC7CCsTW+8+vkJdDylq+n6ibP7mKt
         42/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gPx6oA/82jrNg5EN+yHnG/cuEdbk+mUnDXopUXD3qQI=;
        b=3i2swXQx1vsdSFcRyRLxf7lRrXGdlU1VNTkJO5QX/OoZWZ6ugOPw2/zmQaEejFeYP6
         6+6bSvexCK5M0vbHIyhsd1tVqjZEY62XJo7DzQEGcJ4IX+z+yh+uRC3Z71ZruSmpuKR6
         dui4/LqxsjwsBKK8TmcqbaupcM7HXuxI/c2PM88QKgiTyHPmrQzlZ8mZXkzUSpv18J0D
         45Jku410YsLL+6S1YoIqFWQLL+cK6UCfAR9b2FisaW1uUHhOu/LSmMre9t+/Ek2U62VM
         gHQgRO3uz/9rpDDOIbfxhUVU9kzSlwqOhvLFRcrjj5zewp9qqrctFP9pvZ6HUbsbraJQ
         Aylg==
X-Gm-Message-State: ANoB5pnMNlYpsTbWFlbyd2yUqU4XNSfdIlymL6yYksIzVLa92ESoZZeH
        f0eJZiuH/feF519snjyTJgo=
X-Google-Smtp-Source: AA0mqf7VXui1uwkGNLwq+/Uho/nDlpDEIpx5/IEV/h2PG/pEdChgPEt4CigQ2Iq/VdoeXxZyPOUy9A==
X-Received: by 2002:a05:6000:12cb:b0:236:62e3:6202 with SMTP id l11-20020a05600012cb00b0023662e36202mr47789356wrx.47.1670154560530;
        Sun, 04 Dec 2022 03:49:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r10-20020a05600c458a00b003cfd4a50d5asm20305317wmo.34.2022.12.04.03.49.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 03:49:20 -0800 (PST)
Message-ID: <8dd59285-6b63-baf8-28be-aab7f4a69de4@gmail.com>
Date:   Sun, 4 Dec 2022 12:49:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page keyrings.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090710.GA32742@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090710.GA32742@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6HNlIJsbvh60SoDLpTYJUo1S"
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
--------------6HNlIJsbvh60SoDLpTYJUo1S
Content-Type: multipart/mixed; boundary="------------4nOEJpZcF9pCmQFg9Gp0GTvX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <8dd59285-6b63-baf8-28be-aab7f4a69de4@gmail.com>
Subject: Re: Issue in man page keyrings.7
References: <20221204090710.GA32742@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090710.GA32742@Debian-50-lenny-64-minimal>

--------------4nOEJpZcF9pCmQFg9Gp0GTvX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIHRoZSB0aHJlYWQg4oaSIHRoZQ0KPiANCj4gIlRoZSBwcm9jZXNzIGtleXJpbmdzIGFy
ZSBzZWFyY2hlZCBpbiB0aGUgZm9sbG93aW5nIG9yZGVyOiB0aGUgdGhyZWFkIg0KPiAiQjx0
aHJlYWQta2V5cmluZz4oNykgIGlmIGl0IGV4aXN0cywgdGhlIEI8cHJvY2Vzcy1rZXlyaW5n
Pig3KSAgaWYgaXQgZXhpc3RzLCINCj4gImFuZCB0aGVuIGVpdGhlciB0aGUgQjxzZXNzaW9u
LWtleXJpbmc+KDcpICBpZiBpdCBleGlzdHMgb3IgdGhlIEI8dXNlci0iDQo+ICJzZXNzaW9u
LWtleXJpbmc+KDcpICBpZiB0aGF0IGV4aXN0cy4iDQoNCkZpeGVkLiAgVGhhbmtzLg0KDQot
LSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------4nOEJpZcF9pCmQFg9Gp0GTvX--

--------------6HNlIJsbvh60SoDLpTYJUo1S
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMiT8ACgkQnowa+77/
2zIs4w/+LsB4vYOXQTAcl6Ws8HesMWYujKXpGk4wnQ1/lFRrMspKk24/53KLX4XJ
W02+VfEvAcSLmcPvQu3jMbzYr4O9fZy7GnEaVFfzoBhtbCv20Hzgd3bjuanifZVL
pX3cmsQA/sRZypUAfNzGXqF66BiV43snAZ22c0OWJAWdzGX7A37WVN3MzzbEsaLq
HSqQlkRLsCWVmIVGH8GgQ/aWgEz1hv48xhU6L/0FVf0P8m9nL7s2tFvDtdkSicWw
47AvakRhxN7kK7L9fPYxx83uQKLgFOP2tOHS45dCoUig3qy4FyXMK4X9r1HX1Ywr
o6zlbfpFE44DMhqS6ZBle0Czr3SFRCJnZD9F/pIdk3xEux8563IN1aZYKmZz+LqY
t5QJEM8vQKtWImsl7EdtAZaeSLf4l3q3NQDatGJ3LbXmfGyLQmOpoMQLr18V0rvH
H5dvvVmrWAnBoBnPIusvA7f/loz6BouB69mZ+KQIN8xQGGjO3rIGXcWbsSIakkeO
Nuz8J8Wf0PwpvcJCfcGJg4x4Rwd+DHPvVZP4nnHHlw7v0OA1TY2ndnzyd3WvV1T7
voKluWjqJ1KgRPSk4grA7vRmX3gK0Lv8gZavkwjCFDiJ7ActT1r4Z/QlK9uvxKfx
/4M7lTq9dKMTXO6hb/GIYcO3UK/O0iwGmLXDwgUHRDVkGhzjynM=
=tRwP
-----END PGP SIGNATURE-----

--------------6HNlIJsbvh60SoDLpTYJUo1S--
