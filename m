Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 643A26FBBC3
	for <lists+linux-man@lfdr.de>; Tue,  9 May 2023 02:01:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbjEIABX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 May 2023 20:01:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbjEIABW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 May 2023 20:01:22 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E2342718
        for <linux-man@vger.kernel.org>; Mon,  8 May 2023 17:01:20 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-30626f4d74aso3237141f8f.0
        for <linux-man@vger.kernel.org>; Mon, 08 May 2023 17:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683590479; x=1686182479;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lotp1cobcuE+pJjySiTWBkt5mu5VV14gV+s6XGU5HFM=;
        b=YHPj9KwHNtvyeMDs566Yi9a/2mui5/wCQUBB/3xz8WWXZARBidjj+KS8g/NJebIoNo
         87ERCaW8FuJhXlB/XWKfz7uLMBmwoxwWsGUeYmjc3HCvM9a7ZeuyHTaulEyvVzOir41s
         ebQdjKGOJogMNVdUPBKqORFr4TgyLvWisjtzk6ZQMsCj5n1yROixDKVBryRW+08DBmBO
         Kl/TRsVLf6R7qKCHEK3xWsmlRs2BHB7Kj5/hr9a0mTZ7vhEvTdavNPgshT9n2aJbzbvQ
         B5dNPpVfLK0xlue61Akr2rL4hQIw4VplDsqOtMHdtnLU4U+l7S1Zj0mp1cNI+YfSGEV8
         LBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683590479; x=1686182479;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Lotp1cobcuE+pJjySiTWBkt5mu5VV14gV+s6XGU5HFM=;
        b=c/7IdUYEVez3M9VBoChy/b39dE4dkBDvtSdF4pOjN9DhJbDN2TapEp0eLD5CTEjT+8
         hfmDR4Xj4dM1N4f9jg4ZOx0JZTlDTBr8P4kmBEGGBwNkP91zXL9RwjHGb3atZFW4S5/J
         G/auR5ZVUkwq5gmkup88hdH7CmL1913RzZSmI3DH47n5rNoBuUvr8896K6lQ2Jnh3gJI
         WITlCxL7CJREHE4nFNZJmccWxXq/WAx3djb151sscA3+m/OPYFwC9b5977gXlXLjWKby
         2CPc0iMpIxgw5XxV6FTo4gAJQSz3pcUxHpjZCEcVBNBNTorhU23lG6TnOks3jyBxKVtB
         +OGw==
X-Gm-Message-State: AC+VfDxaQwELdrr5koJgem/FHzFON790JOBugiY7vA9cWo+mN0cW3WhD
        2i9hSryXyLIg4X51tOvxRU8=
X-Google-Smtp-Source: ACHHUZ48/SqkTCkf3/HJR03ZqzTTxY8jzqpPNIIA+BEpqA9eo8b6nXGatZUHnrfuJjHHpXmI5+gOzg==
X-Received: by 2002:a05:6000:10c3:b0:306:2cd2:bca8 with SMTP id b3-20020a05600010c300b003062cd2bca8mr8137438wrx.7.1683590478538;
        Mon, 08 May 2023 17:01:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q9-20020adff789000000b002c71b4d476asm12665943wrp.106.2023.05.08.17.01.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 17:01:17 -0700 (PDT)
Message-ID: <d8269a58-9206-f8b8-3a41-097185bc138e@gmail.com>
Date:   Tue, 9 May 2023 02:01:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: aligned_alloc: update to match C17
To:     DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org
References: <xn7ctie6y8.fsf@greed.delorie.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <xn7ctie6y8.fsf@greed.delorie.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WVT03ora0mSS9qw0alRvfbgu"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------WVT03ora0mSS9qw0alRvfbgu
Content-Type: multipart/mixed; boundary="------------XVJkh3GDoEv0sDjxru0VRwec";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: DJ Delorie <dj@redhat.com>, linux-man@vger.kernel.org
Message-ID: <d8269a58-9206-f8b8-3a41-097185bc138e@gmail.com>
Subject: Re: aligned_alloc: update to match C17
References: <xn7ctie6y8.fsf@greed.delorie.com>
In-Reply-To: <xn7ctie6y8.fsf@greed.delorie.com>

--------------XVJkh3GDoEv0sDjxru0VRwec
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey DJ!

On 5/9/23 01:31, DJ Delorie wrote:
> Link: <https://sourceware.org/pipermail/libc-alpha/2023-May/147810.html=
>
> Signed-off-by: DJ Delorie <dj@redhat.com>

Thanks for the patch!  IIRC this is something that someone reported in
the list a few months ago, right?  Would you mind mentioning the reporter=

and CC anyone involved in the discussion?  If it's difficult for you to
find those, tell me and I'll do it.

Cheers,
Alex

>=20
> diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
> index 9bc6eb9a4..88e4a8b63 100644
> --- a/man3/posix_memalign.3
> +++ b/man3/posix_memalign.3
> @@ -91,9 +91,8 @@ The function
>  is the same as
>  .BR memalign (),
>  except for the added restriction that
> -.I size
> -should be a multiple of
> -.IR alignment .
> +.I alignment
> +must be a power of two.
>  .PP
>  The obsolete function
>  .BR valloc ()
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------XVJkh3GDoEv0sDjxru0VRwec--

--------------WVT03ora0mSS9qw0alRvfbgu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRZjUUACgkQnowa+77/
2zKFSg/+P0n9YjKC6jt/M8vO9bufHJ+05Yo2mhk4a3cPs8hUk1RYPbDkTtfE86j2
F7xpBDUzcjpGg3LXH4U+MWO40DzDOwReQ9e0fJyJNymyiKlPyKrnpiTlWx2dntQb
Mu3bgJk2FaZUMd5Y21bAObQPp/uC58VS4RyJlT2sgtTBNwOSEgpVGgDzTlDV//rD
qihbj4gSGqCgO4SrDxitSN9Ftj5Uqbu2t1jL4hYPjjWn+0hiEwsyBdVwt6V6VuEW
PHdqf7hcDIiyhqVrlBTWRCDMeMqJafHCa5yuxT1ibTpFLpErQlDa0JVUOt8Oxef4
EPiCmHwMmrrQXr919oZAX6cZeQDCjeJGvc/MHvJdXKxHOxZtw0vm227jGj1zK0U4
GXYZeyDOAqRJA1NLul83YPKBqols5bYOvpelX1fc3HufqEmsOFrjCns+eWlDz4Bn
jb4gSvYANLJ0egL1DBBWSX/XgtldkGIYq5XpV/iXHbxM3HN6KuLHbtf9tgRe/KS2
1Azlhs9LrS2EJ72BGsU26GY8wHbAxRceQ/qg1YbF0cEK78Mtx86V8hdourno4Smb
Jv5MhJF0hFsxh/piTfosL/6hY2OCISvcqZhbQr1TawREK70IImCURe3Lj1MknFIV
nGiPP4EI7x2wT4eOSYsknV5YegTKNJG4uOdd1wdqK42UL1Q/8eA=
=l3cG
-----END PGP SIGNATURE-----

--------------WVT03ora0mSS9qw0alRvfbgu--
