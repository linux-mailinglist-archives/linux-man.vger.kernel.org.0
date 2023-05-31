Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6DCA718B2C
	for <lists+linux-man@lfdr.de>; Wed, 31 May 2023 22:29:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230303AbjEaU34 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 May 2023 16:29:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230202AbjEaU3t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 May 2023 16:29:49 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B58101
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 13:29:48 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3f623adec61so1076265e9.0
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 13:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685564987; x=1688156987;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iOgBUnElZg3qB1Pmn6YSYhOCrgEIgB4BmltMXxWuZJE=;
        b=NFx+ImVKpIvGrK3Ame3ZzhQMIOfa+G9rvpV01lJIePYIMp1N3EP4ab+so1EtY5fqG2
         ljOSonn7sDRQNHHvcx5R6TI+KIL1TvIZaK7uAxhcHQvYkfmm4keZ+BYXLQ+Sk3F22LLG
         XlH+9UstfcoUU1BIgyx6PjRz4H8JcQ3gJkH4P9TVz3aHS/f0JHko+sniH+zpkqtVBjJU
         8u9JSAmFOUeB4rRunqt7N+RY/qfBhYA6xu49XJ4YS0hznNdH3WRGZJogO/GSbigxClWr
         nramTLyb7oNlkGHnC9wiFtYUEMS/gJTTvO0MIHxA6XvgA8zHbttofAfKVVdjgjE5J4xv
         EX0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685564987; x=1688156987;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iOgBUnElZg3qB1Pmn6YSYhOCrgEIgB4BmltMXxWuZJE=;
        b=Al2LQ3UHWKQDz9WB3dMj6ZqnmXTeY7yPYCoCFOs783K2+iRCpq2NSsxzzKC1S4konW
         dfxe9xSJAp/SqdAa91+6Ld0dYgze1dQQTQCi5O7M9YhHkJ42/1GJpZQ7E4eyS2/TtQy9
         PPORH3/DiiN33DSnkz1hwmKJqoIqibuVsKp83BHVvsmAT7O0+fvJ9txTveKddbiQOve7
         KwKjw2wdS6mWwbqFmbYW9x1IX7+2DOb6a+NwCE9Eefu7KtILwFPp5DzObhNOw+sFYWBn
         v+trhBR+mQcS10+6a1AF70KTA6Vgxmnp7N7vtdwXzi/yOFauOtlXn8Wsz6pcoxYqvK8Z
         XNLA==
X-Gm-Message-State: AC+VfDz+Czlz/PMLzRTwIzZlG49WfQ3EeonOkRQ3JLfAGSFiJzzq/PvN
        BtBBxZgRBwn5sWNRma2J7UIX3tXuVvE=
X-Google-Smtp-Source: ACHHUZ65SHduyeFW/pOsiUM1XxHs3sMixfMqIP2wG1tOF0wmrwQWlN1JkDz5pN+J2unTCsMM2ERmBw==
X-Received: by 2002:adf:cc91:0:b0:2f6:208d:2234 with SMTP id p17-20020adfcc91000000b002f6208d2234mr197384wrj.2.1685564986866;
        Wed, 31 May 2023 13:29:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m19-20020a7bcb93000000b003f605566610sm25517622wmi.13.2023.05.31.13.29.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 13:29:46 -0700 (PDT)
Message-ID: <926226db-e3ad-007b-b931-182530182a50@gmail.com>
Date:   Wed, 31 May 2023 22:29:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] Fix the man page of setsockopt.2
Content-Language: en-US
To:     Zijun Zhao <zijunzhao@google.com>
References: <CAELULbfH8n8Gst4Bi+d9vNhiRn4xDU-wgEau5s9cPQMFVd1tqg@mail.gmail.com>
Cc:     enh <enh@google.com>, Dan Albert <danalbert@google.com>,
        linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAELULbfH8n8Gst4Bi+d9vNhiRn4xDU-wgEau5s9cPQMFVd1tqg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WilMFI6yMjFND7c2Qh0QZDPv"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------WilMFI6yMjFND7c2Qh0QZDPv
Content-Type: multipart/mixed; boundary="------------YuusWtXpED6Oz5CboIIXZ77C";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zijun Zhao <zijunzhao@google.com>
Cc: enh <enh@google.com>, Dan Albert <danalbert@google.com>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <926226db-e3ad-007b-b931-182530182a50@gmail.com>
Subject: Re: [PATCH] Fix the man page of setsockopt.2
References: <CAELULbfH8n8Gst4Bi+d9vNhiRn4xDU-wgEau5s9cPQMFVd1tqg@mail.gmail.com>
In-Reply-To: <CAELULbfH8n8Gst4Bi+d9vNhiRn4xDU-wgEau5s9cPQMFVd1tqg@mail.gmail.com>

--------------YuusWtXpED6Oz5CboIIXZ77C
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Zijun!

On 5/31/23 20:19, Zijun Zhao wrote:
> Hi there,
>   We are annotating setsockopt()
> [https://man7.org/linux/man-pages/man2/setsockopt.2.html] and we will
> make optval _Nonnull because of the implementation:
> https://elixir.bootlin.com/linux/latest/source/include/linux/sockptr.h#=
L44
> but we find something confusing in the linux man page.
>=20
>    From the linux man page, it said The option value is ignored. This
> is strictly correct but this one should be corrected: If no option
> value is to be supplied or returned, optval may be NULL. It should be
> corrected and make it clear that it is _Nonnull.
>=20
>   Also, to prove optval  should be _Nonnull, enh wrote a trivial test
> program to open a socket and call SO_DETACH_FILTER. He got EINVAL for
> null, but ENOENT for a dummy value, which makes sense, because he
> doesn=E2=80=99t actually have a filter to detach, so that's the expecte=
d
> error.
>=20
>    Thank you!
>=20
> Best,
> Zijun Zhao

That patch you're sending modifies the documentation for getsockopt(2),
not setsockopt(2).  Please revise.

> diff --git a/man2/getsockopt.2 b/man2/getsockopt.2
> index a0cda8e87..28059793a 100644
> --- a/man2/getsockopt.2
> +++ b/man2/getsockopt.2
> @@ -70,23 +70,24 @@ .SH DESCRIPTION
>  they identify a buffer in which the value for the
>  requested option(s) are to be returned.
>  For
>  .BR getsockopt (),
>  .I optlen
>  is a value-result argument, initially containing the
>  size of the buffer pointed to by
>  .IR optval ,
>  and modified on return to indicate the actual size of
>  the value returned.
> -If no option value is to be supplied or returned,
>  .I optval
> -may be NULL.
> +should be
> +.B NONNULL ,
> +even no option value is to be supplied or returned.
>  .PP
>  .I Optname
>  and any specified options are passed uninterpreted to the appropriate
>  protocol module for interpretation.
>  The include file
>  .I <sys/socket.h>
>  contains definitions for socket level options, described below.
>  Options at
>  other protocol levels vary in format and name; consult the appropriate=

>  entries in section 4 of the manual.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------YuusWtXpED6Oz5CboIIXZ77C--

--------------WilMFI6yMjFND7c2Qh0QZDPv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR3rjMACgkQnowa+77/
2zKZJw//eaaFKNChLySHNPMOwiJ9qj5ouvc2nyeJWo8WbNVGjgii87+318GXMuqh
uabj+J9JF70Zxq68ez/z/uv0FJZ+69SBAxHbkZaFsMzHVnaBMOrW9ryFxJrxjHJ3
LDuKT3K3I8WYUG5OfC7bdc6BwtOp0SeoFlYVcGcndtEljxw8LI1/I4sEKZmvMRXb
LymV1odPXz0S30r+G2kYX/p1/z6M2l7UHm+sv/6qpWQwjrwSFH59f9iL2+1Jwg5i
biqDzAFviPAt3pIV/+AWQUyl82BjQKl0sttpiIyzAHxh220he3ggsYaBM2s+BPim
LMQrdz4Puntn8YsdCgH8dgY8V9TOtuU3dXFveM9JTVWueZLUZgsCO25T9RNgiK6j
3ukYfDIwncLwmxNKPoOYBnxtU8m5rYJszdvNapmW0HyXE5xpcZPKJjq6Hi8YrKq0
8+n4rHYZXoHMwfPA79Ap2pX4DTp0XtDcqd+OH4pM87rCnuet+f+leLyI9O6TLyQm
61MdJ9ny09LWu+LsOzSaTOegJyWGUIkcbeYqt9vkopJfCpDVG7Sz4MTspOzkw7+0
y0Mnch+mNyTekWjCFSjNHt3yJIE+17JrcpqUkcQsuC202wDGNfLzXrKhfMZgADRn
MM8z3zYTXWsthuLJiB5rwjIsRYATmvULQU0TgqTlRikOcD5EgfM=
=im2q
-----END PGP SIGNATURE-----

--------------WilMFI6yMjFND7c2Qh0QZDPv--
