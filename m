Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B55D69870E
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 22:10:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230158AbjBOVKe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 16:10:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230178AbjBOVKU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 16:10:20 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0983710C1
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:09:56 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id k3so12905886wrv.5
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7BufxB8ENZB+E2dYFCUY+Xxo3oJq+wHAW3p8Hz0BiQo=;
        b=CVIWIkrg7Ki0FAJwJ2p+b11iX5xT/QqVX9HatKGfK90R9IzrhHRCT7sCFZfJeVqZXp
         VLOUQo3LvocVK/C3Gkd3ZzjCe7MYBXwN8JMZ9TJ5gEqoCaOUCtDiJ1nV5K7ftJYMuJ8u
         AM/c760hPdXzgf7WqNCpzXAY7GVzRvPPvPPAsg0MlYVkzPCB2UhXa3aHODYrxo5v8mOw
         zCkmNOa10JszXsF4X2A0tmeVlRLKMpDOoNSnER99ZIiU1mGVRN0C4ct0LW5mrht7jpeW
         iu1RVumzHzwmts5V9N7awXveyFNFzff1rzLcZRAwumfFV5iveWedQvRPJ8p4hebqXoKC
         c6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7BufxB8ENZB+E2dYFCUY+Xxo3oJq+wHAW3p8Hz0BiQo=;
        b=eOvJWPiL4wqIoyPeNlwHtL9obV80U+HA6PXeJvv/mvxWEM4N8dTP6l1U3VyX46eQC9
         rJaJ2lsg2faRNbVUWWfawMFYE67OwLhO9Vydah28W6lBfzQcYXz7fdxBsw44SxcU3bFX
         98w+KMox7019IeE/MSZo3gZC2PW0V4otxxLk24OESTr3j0QLbsCNCub9JI0U5mz1B7RU
         rLNjqoJp0rrxt4C6K5pJ1O1/ChLlzhIy8nSZfZoTUolc5vejRsS0qjyfeuw3cH+iVF/e
         I5RNHvUBqY0n+BL7IuFWzHlNIvYDYRVzn7scXMFodByKP63wM088XO0BCeDTsuwENyLN
         m6zQ==
X-Gm-Message-State: AO0yUKWzc5nCAU6JT4U8eN6PiMvQxUwrUbRvBHkRVLauvEfV6tNWmBMO
        vdeth3Wccz1xyC07mqB4HqA=
X-Google-Smtp-Source: AK7set+LnqHS0XlkFuZ0KiiGS+GEZRFQ41fYCJKvzHqlNHtO1VLyKwm8n/03rrZ6lkrvQbNgq90ADg==
X-Received: by 2002:adf:e6ce:0:b0:2c4:848:bbd4 with SMTP id y14-20020adfe6ce000000b002c40848bbd4mr2825609wrm.36.1676495394466;
        Wed, 15 Feb 2023 13:09:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w1-20020a5d4041000000b002c546d169ddsm14777752wrp.11.2023.02.15.13.09.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 13:09:54 -0800 (PST)
Message-ID: <2d8881df-8ccf-0cef-6213-62bc24b6d8bf@gmail.com>
Date:   Wed, 15 Feb 2023 22:09:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 4/6] man2/select.2: add C digit separators to clarify
 POSIX feature release dates or use IEC or ISO multiples to clarify long
 numeric digit strings
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <d68db6e71264d679345c48de6cab33bd2ead7c99.1676489381.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <d68db6e71264d679345c48de6cab33bd2ead7c99.1676489381.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DVyZyRFfYwqQnzYCa0exqO1J"
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
--------------DVyZyRFfYwqQnzYCa0exqO1J
Content-Type: multipart/mixed; boundary="------------k4AwVH0I5qOXfnD2tbnwTQQg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <2d8881df-8ccf-0cef-6213-62bc24b6d8bf@gmail.com>
Subject: Re: [PATCH v3 4/6] man2/select.2: add C digit separators to clarify
 POSIX feature release dates or use IEC or ISO multiples to clarify long
 numeric digit strings
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <d68db6e71264d679345c48de6cab33bd2ead7c99.1676489381.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <d68db6e71264d679345c48de6cab33bd2ead7c99.1676489381.git.Brian.Inglis@Shaw.ca>

--------------k4AwVH0I5qOXfnD2tbnwTQQg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/15/23 21:17, Brian Inglis wrote:
> ---
>  man2/select.2 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/man2/select.2 b/man2/select.2
> index 7718b75067ab..bb7a252ade80 100644
> --- a/man2/select.2
> +++ b/man2/select.2
> @@ -54,14 +54,14 @@ Feature Test Macro Requirements for glibc (see
>  .PP
>  .BR pselect ():
>  .nf
> -    _POSIX_C_SOURCE >=3D 200112L
> +    _POSIX_C_SOURCE >=3D 2001\[aq]12L

I expect that this would go in patch 3/6.  Why is it separate?

Thanks,

Alex

>  .fi
>  .SH DESCRIPTION
>  .BR "WARNING" :
>  .BR select ()
>  can monitor only file descriptors numbers that are less than
>  .B FD_SETSIZE
> -(1024)\[em]an unreasonably low limit for many modern applications\[em]=
and
> +(1Ki)\[em]an unreasonably low limit for many modern applications\[em]a=
nd
>  this limitation will not change.
>  All modern applications should instead use
>  .BR poll (2)
> @@ -639,10 +639,10 @@ The Linux kernel imposes no fixed limit, but the =
glibc implementation makes
>  .I fd_set
>  a fixed-size type, with
>  .B FD_SETSIZE
> -defined as 1024, and the
> +defined as 1Ki, and the
>  .BR FD_* ()
>  macros operating according to that limit.
> -To monitor file descriptors greater than 1023, use
> +To monitor file descriptors greater than 1Ki-1, use
>  .BR poll (2)
>  or
>  .BR epoll (7)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------k4AwVH0I5qOXfnD2tbnwTQQg--

--------------DVyZyRFfYwqQnzYCa0exqO1J
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtSiEACgkQnowa+77/
2zLgGQ/+JKy+jbQ/nNsJWK/ADGA6GxuCozG0cYonlTAUHBSMF0bwQjjwFMcyEqyh
v1qZmSL82P4XKXTne9TH30wXu+XFHW+kVccU+R4aorNZR+Y80RwdxOC/mIG8zC4Z
Q/uvp4nH5D+P34GzymNWe09a+sNp5J2nng9DpC257bml3hjyirRWiRvC/F1a6Dm+
IUIlsD+wnZI6WE4dl7JPg2WDqn5paOfrHQ8VTpN0SutkaA5PANBAJ/aLNqbPhLTl
8F+9f+oN2lUuX7QNcZZmR/QWuZDce16QHmigl6YcBHbwMIbKkEpHYUzhBu+VxdwZ
bRSQNQgbhEZQ/yEg0R85+t/7WlTF8tgbsafDrueQLDHGjg6f6LPLX7Vf4xS+NsFW
4J3Uc55n9OkxRzIRoROHxqRJcF07IqEwBYeWo+KBPLPI6FPHRNio7W7zS/tWPLze
zSUgTw80zXV+W4aFfMZcdT/oI9NwpcEYJosw0JPTDRcGetCA+FYjp2O0AOOvFNIq
fU7Q0LkIDeWFOo/VUGIMQ64u9Tsqiq4FSPR8A6BrKWIOiA65s8bRXCZuQh7exa06
qFsuplX+jyuGnB4PkrYfGnINW+hLw68jX5UbpLzLzXGpYy2PiPVZzYxHkequ8y2+
HKFn3PpjU2iee29xyhi9hA2Wje3jECHwn4+dwSuaSgG/6xmobJ0=
=J+R9
-----END PGP SIGNATURE-----

--------------DVyZyRFfYwqQnzYCa0exqO1J--
