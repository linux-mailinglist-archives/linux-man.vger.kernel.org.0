Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09B496EA952
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:37:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231519AbjDULhX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:37:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231685AbjDULgz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:36:55 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 394ACCC3B
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:36:25 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f193ca059bso3056145e9.3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682076981; x=1684668981;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WY1sBSOyOk3BFnUSvkBZMmVzQTP7evhe/GwUNDdASMc=;
        b=pprSlPYvvuA+9WkylZ8rA62IwNcgKn+Jr1sQYcaBTQ1CQ1Le+PPOfgATS2mvpBIErJ
         f7Hju3f8mJRUzRrejjHtzU3H48FCGEJcQePp9rIvxfRgLGmJJrmvo+0Rb5oyDKc7kHsN
         JM88t7wvMzQGmmqH5Da/p6eNdMCZyLUChuIZhwzq3K1+cKUSJ3nx+EArRq4MZ2oLkQsq
         wptV7Te9Cq7wWfrPTnrLA9O07NIcrZUlulY36oClmqReVui84aSeE01qRr158u5wGPyD
         4you/VMutT3ehHbBjBLzB2VE3UINof85K/+8/rWlotbaKmLw/fgCHquMlsH75V6FTJTg
         TxrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682076981; x=1684668981;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WY1sBSOyOk3BFnUSvkBZMmVzQTP7evhe/GwUNDdASMc=;
        b=jV/jgkjbqjrDZJz2mggvoYskix25E4v6OzRqBgh1Nq30tWc4J56ME/pWThrF85GlLz
         +RNPyHlyMoO6xaJ6U7ilFuJZVFjxgSDBRTIjBu+2ebeQ6N1tb/YldUG6lT4C1zI2H5hv
         oTC/4JEHCNSQci7j6timNolkcVMWoFP6k9jf18ZRNevbCIIYxwPW4jBs8sjpWZf9LXcQ
         14CsQTnbyaiLCJlqTqihQh6+04gB1kX7WlvnumjPw/YyKFVa8Ez5SrVSjN7/+tZKHOK+
         HYxJTUSNmzy72rVeF+jwLONw9KTgNCXUYNtjW1qh8A9nwlHtXo95Zu6RuBnascXnCjMM
         ApBg==
X-Gm-Message-State: AAQBX9e+FiyoaKU08mEb8arDnv9KllryD5TTlpnXCDP9kFoH3Declrex
        JwBtm87D/SW6qputKYx5CCuJIeF3fGY=
X-Google-Smtp-Source: AKy350ajmZxg6yRUccIuq4KXtNud0t22QsSqIcOu9p04yzVS/p+dw4lOl/9TpjWuBpLlc4O0LBkXNg==
X-Received: by 2002:a7b:cbd9:0:b0:3f1:94fe:65e2 with SMTP id n25-20020a7bcbd9000000b003f194fe65e2mr967153wmi.33.1682076980893;
        Fri, 21 Apr 2023 04:36:20 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id l14-20020a7bc44e000000b003f195d2f1a9sm192737wmi.15.2023.04.21.04.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 04:36:20 -0700 (PDT)
Message-ID: <eb8ebe6e-ac65-3a5f-7d61-34d994aae086@gmail.com>
Date:   Fri, 21 Apr 2023 13:36:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
 <d4567f56-2061-385e-fd32-472b1e5b1b23@gmail.com>
 <2clfytracz7pbsqqw7xvhb24jrcazftogik6zh7wcpaxa6oxzl@naacxs6ujend>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2clfytracz7pbsqqw7xvhb24jrcazftogik6zh7wcpaxa6oxzl@naacxs6ujend>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------m8Zcy1ntil9tguc2i5J03kDR"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------m8Zcy1ntil9tguc2i5J03kDR
Content-Type: multipart/mixed; boundary="------------bZif2zJYF0cdV5RCjYBZgdPb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <eb8ebe6e-ac65-3a5f-7d61-34d994aae086@gmail.com>
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
 <d4567f56-2061-385e-fd32-472b1e5b1b23@gmail.com>
 <2clfytracz7pbsqqw7xvhb24jrcazftogik6zh7wcpaxa6oxzl@naacxs6ujend>
In-Reply-To: <2clfytracz7pbsqqw7xvhb24jrcazftogik6zh7wcpaxa6oxzl@naacxs6ujend>

--------------bZif2zJYF0cdV5RCjYBZgdPb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/21/23 13:26, =D0=BD=D0=B0=D0=B1 wrote:
> On Fri, Apr 21, 2023 at 12:34:39PM +0200, Alejandro Colomar wrote:
>> But I haven't pushed, so that we can still have it in the same
>> patch if you confirm.
> Yeah, go on.

But do you prefer (a) or (b)?

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------bZif2zJYF0cdV5RCjYBZgdPb--

--------------m8Zcy1ntil9tguc2i5J03kDR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCdTMACgkQnowa+77/
2zLWKA//XlXFAGkPYOL786bWnBahJ+5uUBbE5lynFHnxl+KTt5X7Jl/YxkEHo2wz
BjbxNJNG8Sa3AYBB6XBI3TLRCq4fg1lGv5IYrSAtJd4+7CNNtpwYNWHnnxLJ//Yp
Wt+g+QQeN+S06X7hoN/hVIXgmd1KR4pRzCcCiW/RfUdJwHwvd1lE5bTK37hpGGif
vuXqHxpOa1cDFJa8QH13ftjAbwkLLSl4HGRxB11juimEB1YfjJynKtvX77XaphNJ
DfNG/hnkEkqw647+67Z4juWxvo/38eDgOLXSIsTNX2Rw2oy0SYV2yJCqdpGoUKVl
0L9IMhhgw+xN9vbwjZ6p3ALsS+d5QL0IMd1+RSLmBG1SZ+RiotZHCpEGfBJAF9tt
pxLY407n4ZuneO6zRvltih6yLsAf27PqrZ6S4BKmeh5WObR3hSmRzB4ScJ5QzDr8
n5D5bDJkHH/cNp0Jf47rTzHfDCNeA4GYniNMGmOdECvUOsOQpAYtzezWaeeJZqw5
Wdwp1dBUk8iELtk4nKVlFSuGqteJchsdtFSBD3qnx7k3a/xthR4ibQyiM3OoObSU
8yc8O9Ru0XdOEFI/U6WcPOanqczYgLSx0K+PbJEsq5TY/bWvnZXI0XNJutdif/24
/BEQdjUttb68G+HwPQnh9pECj4hMLylLikdP4bvKtQWOvV+ZpVI=
=grbY
-----END PGP SIGNATURE-----

--------------m8Zcy1ntil9tguc2i5J03kDR--
