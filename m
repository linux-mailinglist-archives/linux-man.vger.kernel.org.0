Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6968570A2C0
	for <lists+linux-man@lfdr.de>; Sat, 20 May 2023 00:22:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbjESWVv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 18:21:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231774AbjESWVn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 18:21:43 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E73411A6
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 15:21:41 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f41d087bd3so23689855e9.3
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 15:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684534900; x=1687126900;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G610/4NrZXZtVgrSB27QfmIH/3YkYywCqEXRD9eAjBo=;
        b=dBBwtGheMYXGKU/maDHkkZVDM20nLcMaCFZZqvScYVguflPXg10vE8rB+UGgPoQPPm
         ZekUPdwfZhI21ct8pmfDG6fF4gTMukomGc6RQlngeDp2LEeRBMAqJ2FKq2vY/N1x4fZw
         2BfpqNQD4Ky02lFNPGXbtgao0LdGqEXnoyfohtIuM6a1uEazxFXa8HJkz4Jw6psLev/E
         DcgY1ZRMX+6YTBKE27cQ1gnydCxfiKTsKIVka8kcxtP6mKNEPRgIcT0OUop5kSmXqdsA
         +RlaXa6xm5m/pWDRlO+MISLT+G8+l2LbTFyfydbimARbRLrDwIDki/qCsjHjBAYPTCLA
         nJkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684534900; x=1687126900;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G610/4NrZXZtVgrSB27QfmIH/3YkYywCqEXRD9eAjBo=;
        b=CQXhb2dYn6+f4uYJUDj0cPD4kMF4QwjlpXaVUm0YEhUMCBI7O7ZqXVb27jBr4lQcil
         Cvok9mDS5YcGhdafdlkX0yWqZlWrO9ES8dDo+cLpKQrLEztnScUZdhDefyx6E8mJL6TP
         PSsOHaT2GtXvNJkA8TKWMpyJGTMs/rOp+PXF/SC7C7RpxW4NiZkO0KoSt0+TnaDCIuCz
         I4bX411ZfWdWZXZFyPuf4QjGnTdaNIFPPQ0ZmEeY6czkkZB7IuJlAhWkg2igBXChJcFb
         O4baDCEvEmQtn18IuRWr9gO2Fb/V7On+yX9FoLoM79WYTUucvSe85ISIqEbg/80J0Lu+
         iD+A==
X-Gm-Message-State: AC+VfDztWdV8P/41g/IkxXIzTs0Ov/YUIlhBWm2KPnJ/i89Sd6PAVxYY
        wTyAY9V5HHr6fx4MpcwLHjI0GjsdgTE=
X-Google-Smtp-Source: ACHHUZ657X5CZxF+aOS5S7+OpuYOgOi5KMD8G110LIaHVBZEtF9+9mk6VzID+xIh5M8/5p8xj2km+w==
X-Received: by 2002:a7b:cd01:0:b0:3f4:2327:53c2 with SMTP id f1-20020a7bcd01000000b003f4232753c2mr2641019wmj.19.1684534900172;
        Fri, 19 May 2023 15:21:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c290700b003f506e6ff83sm385993wmd.22.2023.05.19.15.21.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 May 2023 15:21:39 -0700 (PDT)
Message-ID: <0f8599ab-73ee-8ae7-6ae8-0848bfb0eac9@gmail.com>
Date:   Sat, 20 May 2023 00:21:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] system_data_types.7: tfix
To:     Eric Wong <e@80x24.org>, Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230519102643.3615995-1-e@80x24.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230519102643.3615995-1-e@80x24.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XLnQMzDPEDYil5WlUirv3MxR"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XLnQMzDPEDYil5WlUirv3MxR
Content-Type: multipart/mixed; boundary="------------Fl9e0Q0ormpT70Vc7qyIvzbG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eric Wong <e@80x24.org>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <0f8599ab-73ee-8ae7-6ae8-0848bfb0eac9@gmail.com>
Subject: Re: [PATCH] system_data_types.7: tfix
References: <20230519102643.3615995-1-e@80x24.org>
In-Reply-To: <20230519102643.3615995-1-e@80x24.org>

--------------Fl9e0Q0ormpT70Vc7qyIvzbG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eric,

On 5/19/23 12:26, Eric Wong wrote:
> The actual field names omit the 'g', matching sigevent.7.
>=20
> Signed-off-by: Eric Wong <e@80x24.org>

Patch applied.  Thanks!

Alex

> ---
>  I really don't understand why the 'g' is omitted to give us
>  this footgun; `struct sigevent' has longer field names...

v0v  Confusing it is :)

>=20
>  man7/system_data_types.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 6bbf71004..1840a40fa 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -183,8 +183,8 @@ POSIX.1-2001 and later.
>  .PP
>  .EX
>  union sigval {
> -    int     sigval_int; /* Integer value */
> -    void   *sigval_ptr; /* Pointer value */
> +    int     sival_int; /* Integer value */
> +    void   *sival_ptr; /* Pointer value */
>  };
>  .EE
>  .PP

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Fl9e0Q0ormpT70Vc7qyIvzbG--

--------------XLnQMzDPEDYil5WlUirv3MxR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRn9nIACgkQnowa+77/
2zKnxhAAmX3aRt12WsDnh3FDVv2xBUIPcmhP9HUpjwRYIoIC+MkO9VHl5LqXhHBw
n1kDWYCM2FHfzlCbBdh2oxh82euhmdqwEq+jrwiqcbqBnQCOaHIsvM7/3b9M8qyF
TXbtQ0pTNlThQ02nykNi8HbG0jVm+5JDDZMdKmuyy7TDot3yh+uquMXGmTwPhkcp
hyvlp5Yp6n7XyORNyXI/hukL1pqahD7h7IlhWTS9heIi3eLUzdZarqmp+QBrUEkh
B54fof6oa8akR7vh3XHxdtIAK9KcqfMEYbGPIg9fKBpXTiuq8bV/Q90SJ/t0Bpc8
r+5tFIfzTt0PRPXJRBfOJoFDueFhdgTt1+vpfAfSBMy8Sv+zXVvQI6Co1Mz7fcFP
yTbBvfSYqWKg8hvcAJ/6hjUxoeAx5XzbIjO7PvTX3Sh2GuvjmSNRMipU+6wioV18
JGD4ZPv9r5oICIFKVrhLLLZYRuyUkLHEg1JimKaVtsYG/g/Gq8iDSgOh3M9DGMbU
aInNFasrECYtcEiDSCOU3AdWJNdmgDUkLytPZD6gL9c0XmGpTCl4AwgYM0Pb+aW9
R4J+7qRIG1+EoIA5/OQBCwQYILu4+F9u+Ar7cAa1sFPmqU6xae7Lq93G6JbaqPYT
3sr1URGLq+lqisPr2+NRj9Cj6kitXiAougsCODQ/qQhHDMzG+LU=
=3J6B
-----END PGP SIGNATURE-----

--------------XLnQMzDPEDYil5WlUirv3MxR--
