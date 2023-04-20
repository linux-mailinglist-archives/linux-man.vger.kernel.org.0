Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F0D66E9AA3
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 19:23:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231522AbjDTRXv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 13:23:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231491AbjDTRXn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 13:23:43 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8153326AE
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 10:23:42 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id bg5so691032wmb.1
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 10:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682011421; x=1684603421;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1OGxQN4yAKYySpp8aIhNyBoIBVdGEa8LbRCjvyMfvQ=;
        b=eFJ/uLqnqAaMXVgNcB8Fk6hLN4pZZ9t1N6XQ8/X81kqf6HS1jBEKwn95+jP4Wy/KNS
         MLKL6BO82XgGXd2qbr7TvfaYe5BTcWcwv6h9KjkNa8KRQKtWt4RpNTFnPSbYdm+YG1Hh
         fKqj3yQ5rOtfwgFAU2bk5C5DS5A75CiVV4eFIpx5mmyY+kL5K6ImV4tp+iDk7TPni099
         U8mgeExoKUyuAZSEQPy+dolTP26OBBYEPH69NNwphre1c6bRfXfsaJvdzLONtedIba7t
         kzsKKVuPXhY8QntIa/bP9x7D7XbzJ4vyn9cEEcAREIEMNCg9Yan/F6o3MaI2jOr4gXOt
         GzKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682011421; x=1684603421;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j1OGxQN4yAKYySpp8aIhNyBoIBVdGEa8LbRCjvyMfvQ=;
        b=Dz2/cMInZL0YS5PtFm9TtbPDW+5XDx1979LyFTa0w12/aJg6zighEwN5HU/gJqjpWG
         vYYS8oH3zNTBPWzxilMuD1uGgN8ndCya9ZWkYlRjkRXH3rRe+3v/aDAyxZIXLf0X8Ei6
         ivRNZttJwkxWPXd4XXiBnt7VXVfOm5UUjSk0Xeic2MSs73Pjw9mf4gn5kcZhyKAt0RTZ
         a0IjYVjiQ7WwyPu+ibvyKQC743pgQ+/rsbMMz/w3ViMYVu9rLkIycJA5R5640Mq+cW4z
         YLKAZTiUHBnsNfKNBBtV+HNXEnqjSYiDPYz3TWo/RyZuN4C7WsvXFv717erKxdaIj2nG
         LT9A==
X-Gm-Message-State: AAQBX9dAmL5QpgYqhR5TJ+NreTJ+Ei6BMLMtchCYB2LYr2XKBPTgdT3p
        BjXrooHMxJEnA42yoX55ZFkAzOHPIwY=
X-Google-Smtp-Source: AKy350Z0mW1+IhlKWGtdxoyeMPq5CVfxEfOyd02zCxlkL2DGnjGFNw2HMexxU0b/EGYVlGGVzCzoAQ==
X-Received: by 2002:a1c:7718:0:b0:3f0:9564:f4f6 with SMTP id t24-20020a1c7718000000b003f09564f4f6mr1915961wmi.1.1682011420606;
        Thu, 20 Apr 2023 10:23:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id w9-20020a1cf609000000b003ede06f3178sm2557968wmc.31.2023.04.20.10.23.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 10:23:40 -0700 (PDT)
Message-ID: <516ecf85-a1e5-a87e-632c-da026a16dddd@gmail.com>
Date:   Thu, 20 Apr 2023 19:23:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------F0TkJbeioTxqyZZlhkawQoaA"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------F0TkJbeioTxqyZZlhkawQoaA
Content-Type: multipart/mixed; boundary="------------Q34fkoV8vomMnCIugpVIVkms";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <516ecf85-a1e5-a87e-632c-da026a16dddd@gmail.com>
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>

--------------Q34fkoV8vomMnCIugpVIVkms
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
> +.I errcode
> +must be the latest error returned from an operation on
> +.IR preg .
> +If
> +.I preg
> +is a null pointer\(emthe latest error.

I don't read that from the POSIX spec.  If preg is NULL, then I think any=

error returned by a call to one of these APIs would be valid.  In fact,
since these functions are MT-Safe, they can't store any state, which lead=
s
me to think that they can't really distinguish between the latest error,
and an error returned at a random point in the past, or even the result o=
f
csrand_interval(x, y)[1] with appropriate x and y.

[1]:  <https://github.com/shadow-maint/shadow/blob/c80788a3ac092bc5abfa89=
ff48060d3f95cd5812/libmisc/csrand.c#L93>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Q34fkoV8vomMnCIugpVIVkms--

--------------F0TkJbeioTxqyZZlhkawQoaA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBdRsACgkQnowa+77/
2zI4MQ/+LKnCsOwcKT609ZdcXJp/mEesiVXJJO3o6ZySAaYnAmnnGTUzOmod5nKf
BzRQ8pPOG2ZJQH47WOkxrTzG56eHv0fFI+aC2IghJFrzr8ss4Op+qu+UWd3DhRUx
FwdHbzq6eOpoai5uVR4KB/McwbVPIM6H5oXWjlRNqzCEqR9OOko5ukirNWZQFd/t
9xK7i8aO9eGWRXBxbz5eD2WIVrWH23KIrLQbh+OYimGvY2yfLPkZYpcXa9BJ3XHI
E3Z7XDYVDVcm4qbUay9JzLHzR14uzBGTaceN2aa0Py4OLpMCGYq/ZHn6A6MMiXHY
0frAFZo1CdVZVvgp0twycLPZ+bUihBzwhHngQ5Qs0PUbLO06/x45tuBtwvme2GnU
BSqdCE1WCA9lvDJW2fsb99HWDx2TuB1UPQWjGdJpNT6iurtaqg6aSku7Q6uILQnF
9MqWrJX5+RUyzTAzyhQlfDlGtLXrWYUrTSVjqirbMF88DV7ceefRO5Zwu7PEUBsL
TzGfjv2A2PAFFXYh6izBb1Vo66v3a6gbs/MHOz6TL0GNZ74jqNIsEaxCSt//yTa1
J3iJs3QEhU2/zNbMTh0rQVlTK5d7YrcQxhJbEyvHuvx4/FQZ9JOq0FFcFE7luPAb
w9NcR51UW7CSpa+5GFwTEmYalp7dRWT5CJP+gtp6BygK9pfEZPQ=
=DtiY
-----END PGP SIGNATURE-----

--------------F0TkJbeioTxqyZZlhkawQoaA--
