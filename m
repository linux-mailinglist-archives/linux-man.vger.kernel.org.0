Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48B656BF3B7
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 22:18:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbjCQVS1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 17:18:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjCQVS0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 17:18:26 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7C3883ED
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:18:24 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso4186209wmo.0
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679087903;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EdFwIyKMPPfB9+fDXiMIdm/RrWYh/BdwhItHNfQVn6A=;
        b=YlSXjlTFkeo39HNnuNT+ZHLJPTD2M73HoR8FNy2MNpQVn+mkxL7h6IiAypuNaicYIL
         7c0RtZlBsP3LaULlk7yFqQFgGHuBVtTNRa+3PMhQz57JkfVRO7Jol9VhbCTh6WNrjvLm
         wtHUh2DJQBLxYP8mTWb+p9yijSb7KyUe1X1d466dPwl3NknwDt/9n+2KQ/HlwFQ5e6NO
         yVz6MVqeDdLITbFTY9Gt3HsHGJY8/y0Q/ph9gW8NBDrUvffeKLsWYaBl4prZ9dph2moP
         0jSJRb/h2E1Q5uHJ0j+PcdVK/gZ/+4duzknoIzpYTiCY46MYpE4sDucEL5sL5xXb9HFr
         Z/qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679087903;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EdFwIyKMPPfB9+fDXiMIdm/RrWYh/BdwhItHNfQVn6A=;
        b=T4uN8Y7/1f2kcaJAnKrgppHz83RmT4tGgHOa9xGt+TVBMS0lhpdIaPQ4OnY8ZM7tY0
         PqhpxNBMwUD4T1cXilOK078vVQd/5jGbiY5NNuHsOP8E05FJwx6MKY185SPA6Xa0undS
         h8vOTG6utkIy+3uVyGmMkxYiK1Pu+U2F72ks8x9ZQEhRLVYTSdJ+j/GGY2NSEh4xqzWq
         kOcwNswVc+gNo73SSuFTOARSCx3NYJFYMqngJcH/rYx8qPwYmBFjn6vkam6SH+1AnNEh
         +ZhnGC1LRu8EaqWZXYwEJhDjvh9pscHyJaCERg3OimA5NAAxSj2wYt3VBvsWqBqNGw95
         jbcw==
X-Gm-Message-State: AO0yUKW4i8rvSAWINGFNRUgi4WtD4iWVIvdHqe4p0DYEKZ2URuVucZEm
        MZ9vZ4+5FJ3+7W2SAIyBIwk=
X-Google-Smtp-Source: AK7set+H9LKPJGVqartVVctJBXZdNliJRvLwTnavLsy+pA4bXErR+BOkKScmPIu1+t6SojJfKL2oPw==
X-Received: by 2002:a05:600c:1994:b0:3ed:29e1:ed21 with SMTP id t20-20020a05600c199400b003ed29e1ed21mr16625970wmq.37.1679087903002;
        Fri, 17 Mar 2023 14:18:23 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n17-20020adff091000000b002c5534db60bsm2829829wro.71.2023.03.17.14.18.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 14:18:22 -0700 (PDT)
Message-ID: <47f80e5b-3efc-46a7-d497-3a9f6eec12b8@gmail.com>
Date:   Fri, 17 Mar 2023 22:18:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [patch v2] aligned_alloc: conform to C17
Content-Language: en-US
To:     DJ Delorie <dj@redhat.com>
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org
References: <xn7cvf2i6z.fsf@greed.delorie.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <xn7cvf2i6z.fsf@greed.delorie.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------T0Zjw3Uoc2cQ1dThfJTQF1ja"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------T0Zjw3Uoc2cQ1dThfJTQF1ja
Content-Type: multipart/mixed; boundary="------------VOjDj18bn3E60srU1CepuGHz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: DJ Delorie <dj@redhat.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Message-ID: <47f80e5b-3efc-46a7-d497-3a9f6eec12b8@gmail.com>
Subject: Re: [patch v2] aligned_alloc: conform to C17
References: <xn7cvf2i6z.fsf@greed.delorie.com>
In-Reply-To: <xn7cvf2i6z.fsf@greed.delorie.com>

--------------VOjDj18bn3E60srU1CepuGHz
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3/17/23 22:15, DJ Delorie wrote:
> Alejandro Colomar <alx.manpages@gmail.com> writes:
>> BTW, I guess C11 was equivalent to C17 in this regard, or was this
>> changed in C17?
>=20
> C17 seems to be a "bugfix" for C11.  In this case, one of the
> requirements for aligned_alloc() in C11 was, well, silly.  It was
> removed in C17.

Ahh nice, I knew C17 was a bugfix, but never really knew any of the
bugs it fixed.  Now I know one.  :)

And yet it seems that the wording is still a bit buggy with that
"nonnegative integral power of two" thingy.  :p

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------VOjDj18bn3E60srU1CepuGHz--

--------------T0Zjw3Uoc2cQ1dThfJTQF1ja
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQU2R0ACgkQnowa+77/
2zK0gQ/+IVVy0WQS/LyQjK0tDosoKh/mlj97fQyzZKO7goSbM2r+NQdRE2wGRUW7
7PQSPRZYl4jj4N9Cfm4n8rQDsqZax5N1S1QoNGZ5aBJqQtZOsuG2468F1H8s3fVR
H7Z6PqLYCnLEDATBdGieKBJXEccso+FnGLWhfY70Pk+q59wFgK8C+/musdL/3/NP
WK4VNPn+vuKSzRcqWYmj6QkJpEZvj1v1xJm8DFkLKC16bNOe3eb2WU50YQ0OjLnl
Ekdh9FRgILK/hVbi1o9sMVgvHR/yWEX4BOlQd2PlFASe1RWH394BQ4GtspXHCM3M
MQMC0N5tGsyPZ7ol6vznznx4Qm1XsWsZIQcYxRywGaxK4u5th2hfJh3IgPp8PNNU
t7ngHtGYTa66tRp0T8rBx6l1QJ7haocId5oHrolHHkgB6Yb7WjiL1VTifrMoSa4/
FlEdw+bkQhtOteQqCDBnUnMCVCZ35BCyzpQDNR71cj19of3ef5psRI8AukvGyoEh
cOrCr/1dBjdFd92glrkjig0r2VBL26Ncw0OLWTzVJtmv4LGxfSHxdXX1oz62l0CM
UvFoGiz5x82zQXdk8z7M8+NBEpq7n4LUifEo/BhivbVODB3LQWI5G340eN9aFFK0
IigGQWu0qZFL5skZikOaqEu4AgjAmOReF/UIi5152FeJ7iDKQiw=
=1fi7
-----END PGP SIGNATURE-----

--------------T0Zjw3Uoc2cQ1dThfJTQF1ja--
