Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2770677238
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:08:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230026AbjAVUI5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:08:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230131AbjAVUI4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:08:56 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D443512F24
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:08:53 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id o17-20020a05600c511100b003db021ef437so7159170wms.4
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9W3U+G2RZP+OZolvsdlylLQt2e0JZ6fllS5ZgK2gpQk=;
        b=SxsXITzOHtb5bjyLGMc9m4oGGI7yASQGbETJ0mEwCR/cDc+y1wEZMZrS4VxK07FevY
         PAc4JC4KeKfRDCY/4xaZOcGvJaRyurR0zLngDP1VXt2ItCLOXdLwac5fWsseR/NNgW4h
         J7vesJh8SZKa5d05H2OlGl9fh9ndOZ9qFWuJBv5SrqEq55hQXqZDWvvmttrZWtsrJBA3
         IKF6whZo8E2NlBmiAyQ0Oyibo26Wyg3uLpGs9tL4oCrkzWpvQCEfV1Y1SeFagqdbdwSr
         KvCQ5ps1OzKs2jkkk3xbo8NQ4GbMNaOVZtxBsk9LV4CrjU0gI1AbYi+xarL1I7Y6UG+J
         in5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9W3U+G2RZP+OZolvsdlylLQt2e0JZ6fllS5ZgK2gpQk=;
        b=mdEpJn6quTPzDGExqm9tMz0RLhDGwirdeM2JFjDQykds8gvstokBse6wKkbJc1TLde
         8w5Q9DahKcHtFInp+UklJK5+zmXfN9QLiKIk/S/kM0tLpHJlGDhyzNK9D73pAJO70W18
         uNjr1+Ix1GNEzi1wGgd20apXLrNFNdcFXIc09eQzm5PLNuf8nZVzgnITnG62NBauJxWr
         0rX4QgyEG4p1bnt41kCkKIv8KSu7pNb4gmuAFW/o/E25dAa1sCG7BiuZPkrWeKh6q/OU
         GfB7lJQHX9DXdzYg61iSeXTDr5B/T5cGnMgsBwKlK/1oJF6Y1t7PtGpuBUZtTLNGXhyg
         4mWg==
X-Gm-Message-State: AFqh2kqSGgPZlTgTLlGXaeaL+huZLgcEzALmBPktPnXcAdfdx2WaPiTB
        9VkAqz8NOF8U3gY1nf+f104=
X-Google-Smtp-Source: AMrXdXslqs5vxCFEHE0prjJfuCAzjd7hc6XqBVisckniNtN7FL2NDGQQrrkSA6eWsrDwWWB1cIdffw==
X-Received: by 2002:a1c:750e:0:b0:3da:fcf6:7146 with SMTP id o14-20020a1c750e000000b003dafcf67146mr21591977wmc.14.1674418132323;
        Sun, 22 Jan 2023 12:08:52 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h20-20020a1ccc14000000b003dafbd859a6sm8540180wmb.43.2023.01.22.12.08.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 12:08:51 -0800 (PST)
Message-ID: <43b67c6b-70ee-3568-3c92-de7bb19a2798@gmail.com>
Date:   Sun, 22 Jan 2023 21:08:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page motd.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193124.GA28717@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193124.GA28717@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------a3Tlmagbwcj09BNYDTSvbf67"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------a3Tlmagbwcj09BNYDTSvbf67
Content-Type: multipart/mixed; boundary="------------9uARgWJjeprf2ByQ3osXghsH";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <43b67c6b-70ee-3568-3c92-de7bb19a2798@gmail.com>
Subject: Re: Issue in man page motd.5
References: <20230122193124.GA28717@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193124.GA28717@Debian-50-lenny-64-minimal>

--------------9uARgWJjeprf2ByQ3osXghsH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SSBjYW4ndCByZXByb2R1Y2UuICBQbGVhc2UgY2hlY2sgdGhlIG9yaWdpbiBvZiB0aGUgYnVn
IHJlcG9ydC4NCg0KT24gMS8yMi8yMyAyMDozMSwgSGVsZ2UgS3JldXR6bWFubiB3cm90ZToN
Cj4gV2l0aG91dCBmdXJ0aGVyIGFkbywgdGhlIGZvbGxvd2luZyB3YXMgZm91bmQ6DQo+IA0K
PiBJc3N1ZTogICAgQjxpc3N1ZT4oNSkgIEI8cGFtX21vdGQ+KDgpIOKGkiBCPGlzc3VlPig1
KSwgQjxwYW1fbW90ZD4oOCkNCj4gDQo+ICJCPGxvZ2luPigxKSwgQjxpc3N1ZT4oNSkgIEI8
cGFtX21vdGQ+KDgpIg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVz
Lz4NCg==

--------------9uARgWJjeprf2ByQ3osXghsH--

--------------a3Tlmagbwcj09BNYDTSvbf67
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNl9IACgkQnowa+77/
2zJgVhAAgljXVTpzAapgXgA5HO8c5TBTbgEJ+cV0t3xWJ8kb+exLmXFSytenqkNL
e/iHempQwJ+H5VhDuDNwVir0/Rm3t83YJp+h3j1Ih8v70loQLI8LhRANMN5L2LLE
mikPC4CJHS6lV4ftv2FIFjOX1w6oQY2GlT0XYXXLX6+QSBm8qEbzXrT4tI7jP5Fk
fU3lvSd444cBLVzAD7OaDz8QHv7nzoZtc0OhirTrUYgNOyL1eoEK5wpYxLbkOWaY
2PxEPAYUjO4J8JoKHv9brfksoDibTfXltBfSMuKIjPDNT7AJyWJFe+nmDGtavUuE
Eu/Zfy2vf748K1PH9gGSsT8HVO+o3GoMoDbMz3MDqoXbYuwHFKgYTob2NbD6bz8G
jP6rzMdnE5XOvRrYTjNViGA7pH173WHH+FTvPJ2RsiDP2JhY64kyGnX/QKvbC9QU
l9nh+N7BwgPUka7FoLzsDYc+R1NvD8G22TAZOAJ89iYUwZbkR783tWHuv+nXIRvN
IFMrsD4VE6WkWAoAMK4eV1RuL/LV9nNm/SL27vBe0I/ok1oUbbJIsaFVrpNzbwq3
3Y+LJdIozATIAL3UypKGHEeC2wB7K7kHffAlAo314iG29q1XRA+TFikn43yw+qK/
Ee/Ij2t+vUNQJ654fqzkz7lPTh030UHAmsD6O0LXmgEvseddcOs=
=pu9B
-----END PGP SIGNATURE-----

--------------a3Tlmagbwcj09BNYDTSvbf67--
