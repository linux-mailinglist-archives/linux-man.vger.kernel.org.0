Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B936B69C01B
	for <lists+linux-man@lfdr.de>; Sun, 19 Feb 2023 12:50:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbjBSLu3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Feb 2023 06:50:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbjBSLu2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Feb 2023 06:50:28 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55267EB4B
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 03:50:27 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id m7so321933wrr.13
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 03:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=apTqKn2g+RFER62SZ5IKSbie1yfIWwNGgheG2RTn6dQ=;
        b=lP5FGtJjnMlR9XgZnEqOtCCjws9GnfaSdwv0B6KfJd3K0xhAP17by0bbxMMKLfBNvD
         e4/0xsEIH92KYj0PwBHWxPELRpQaPOmqkOkGBpf7t4qOIszSX/bdpFPVNHzi1D1OVCX+
         mDooesw0+ml7N550DI28OttzXoPIhsnJYp56dUpLih+Pg1iTs3jk/DxSg1Wmy4vy/x9L
         e0veKskq5uhNMlRK4bbdmW++ZOJlYCXCdQbTSQCxBsHgb4/Yig9rK84AAJHRTOzhXTHA
         O0zAFwzVkmXa4mu5lwQaimUZAR8+wCENekEd6wfGpwx6f3OyNkxwrgLSHRykdy3yQu/c
         3qUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=apTqKn2g+RFER62SZ5IKSbie1yfIWwNGgheG2RTn6dQ=;
        b=skuQsmFSyelHsySzZIiiaYqpJAZ6TYWxicML/MJUJuWoJPstpf82E9JrKwpszf7mnm
         hhdlqOGDvHDSEoGj7RteppAF6QuuEnG9xyNI2XIWndAx6jNFQltvhWEi7M6Sywnl+2HC
         KEKZH4P8u/oxpP9MtVfrC0oREuBIx7nFw8BpPYu972WQMBCZGEF1jL+ekrLbFTa08Cmy
         01w4LteoAPesrvoj0EAqU3nVkoOQeiu3YjMIpr8YM56Yy/VfZTm/Ph8Rx5j8gFakcIip
         xDRz9GbLEgf+XphUFs4WcscVlQ/z0PhBJEWSDJZzJSDIAkjiQXPyawyyGd+E1ReyAEVo
         uhqA==
X-Gm-Message-State: AO0yUKV8Y6jl5ksJFt8c40Otco48cfiyFa8tRW+ixaAQ+xghoZ6qeqBB
        AllfJPIMztkh8U4AjFbWBIg=
X-Google-Smtp-Source: AK7set/h82p3UFD8RfZ1LOeqvipSk8SxrqGvQ76gQZQFuA++NaRSdkd0AaKMazlLH0su4KqNuEgX8Q==
X-Received: by 2002:a05:6000:1009:b0:2c3:ddbe:d7b2 with SMTP id a9-20020a056000100900b002c3ddbed7b2mr64204wrx.62.1676807425672;
        Sun, 19 Feb 2023 03:50:25 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w8-20020adfec48000000b002c59f18674asm7843233wrn.22.2023.02.19.03.50.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Feb 2023 03:50:25 -0800 (PST)
Message-ID: <219d96c9-cf8f-0c53-c30c-b14244932beb@gmail.com>
Date:   Sun, 19 Feb 2023 12:50:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: ADA and base prefix for numbers
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
 <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
 <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine>
 <20230218180803.be44sughf62klrjw@illithid>
 <CQLWIYCOY3P2.3EHP3RAE6LJTD@morphine>
 <20230218190354.supiu6teaby5el4l@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230218190354.supiu6teaby5el4l@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2fwPR1MT5us0Og5CcDLYcAvl"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------2fwPR1MT5us0Og5CcDLYcAvl
Content-Type: multipart/mixed; boundary="------------Ai66XO3INIo8109PNY0LBFYo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <219d96c9-cf8f-0c53-c30c-b14244932beb@gmail.com>
Subject: ADA and base prefix for numbers
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
 <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
 <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine>
 <20230218180803.be44sughf62klrjw@illithid>
 <CQLWIYCOY3P2.3EHP3RAE6LJTD@morphine>
 <20230218190354.supiu6teaby5el4l@illithid>
In-Reply-To: <20230218190354.supiu6teaby5el4l@illithid>

--------------Ai66XO3INIo8109PNY0LBFYo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[CC trimmed]

Hi Branden,

On 2/18/23 20:03, G. Branden Robinson wrote:
> Mainly because Alex is reading, I will point out that Ada did this, and=

> several other aspects of numeric literals, right--40 years ago.
>=20
>>> Numeric literals are all introduced by an initial digit. A
>>> requirement that has long been recognized when printing numeric
>>> tables is for a character to break up long sequences of digits: in
>>> Ada, the underline character serves this purpose. In contrast to
>>> identifiers, underlines in numeric literals do not alter the meaning,=

>>> so that 12_000 naturally has the same value as 12000.
>>>
>>> A simple sequence of digits is an integer literal written in decimal
>>> notation. For other bases from 2 up to 16, the base is given first
>>> and is followed by a sequence of digits enclosed by sharp characters
>>> (#) or by colons (:), the colon being used as replacement character
>>> for the sharp, but only when the sharp is not available. The enclosed=

>>> digits may include the letters A to F for bases greater than ten.
>>> Thus, the conventional ways of expressing bit patterns in binary,
>>> octal, or hexadecimal are provided.
>>>
>>> Real literals must contain a period, which represents the radix
>>> point. They may be expressed in decimal notation or with other bases.=

>>> Finally, both integer and real literals may include the letter E
>>> followed by an exponent.

I like Ada's base selection :-)
Even if one will rarely use anything other than 2, 8, 10, and 16,
it's interesting to be able to.  C's is not completely broken, and
I'd like it to follow Python and add 0o for octal (and deprecate 0
as a prefix), which would fix the most aberrant thing I hate from
C's numeric literals.
 =20
>=20
> http://archive.adaic.com/standards/83rat/html/ratl-02-01.html#2.1

[I still didn't finish reading it, but am doing :)]

>=20
> But C programmers have long indulged in the sport of ignoring every
> lesson any other programming language had to teach, whether through
> careful design or blundering mistake.[1]  C'est la vie.

[...]

>=20
> Regards,
> Branden
>=20
> [1] Thompson discarded type checking and "//" comments from BCPL; the
>     latter came back relatively painlessly (though only in C99, which
>     Ritchie refused to endorse).  The former has been resurrected in
>     fitful stages, and only where the suffering imposed by careless
>     typing can be discerned as imposing engineering costs in defect
>     resolution greater than in initial implementation by a factor of
>     1,000 or more.
>=20
>     https://www.bell-labs.com/usr/dmr/www/chist.html

I have some consistency fixes pending for the Linux man-pages:

-  Use // where the comment is a single line _and_ affects only
   the code in the same line (not below, not above).
-  Use /**/ elsewhere.

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Ai66XO3INIo8109PNY0LBFYo--

--------------2fwPR1MT5us0Og5CcDLYcAvl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPyDPcACgkQnowa+77/
2zJ5fg//QqxEJxtodnv1siX42aRshJ1TIRWOkk0kN1rrublK9eFDCR6RDLcMNQQl
sw/sM1BPYDGMF3gWWgAm0gsFixNNv6+m87TkiP/rKGxu0h81E1Nj4iQiea/bzUSO
k7rqOyj9J2uvdcA9KsJSTcZpEwB7gCEmlue2L5R/KWkJkAvGQWh+QIVWvhyekRlk
bE7KARPVl44rhCGO3kmen6vhL46lFaK9Obt5JeHRCFdTRCW/jB0K/j+/9bPUnw+4
37WUprMCYUVuA2toKHzZMlQGCLRSHsg1/zrJTza4cTWZSOGQ1CXvNPaoOyHEClav
azFYm57MvEsZD71fQPj+xeGY/t+qaqUe6h2dbwnOI3EN6SVRuDNgURKllTrGVMWB
W3vDbEIdx55OKgX5oAjCQUpNi59yDBSqFlfpP1SRK56wXwUgkgyM4BRLl16qRJ5f
cMeUqWGSmAVe0fdM8eF7ZBGYXmvnQb7gqUaCwV6djDvUua1FbHx+bdbqp+4PePUw
ugV4Y92ktN9JFtMYYQEj9luqYUuPpiCfyhpXn1wT+iADkMxBLawxmDLNk7x8lPUx
mRYPZy6O+mMKm3eeNs49FRO4x5CZunyqm9XfZPMAoQGfY2Hx2lfsJ9yETnwfbEtK
K/zk2VYiBf+g2h4FzUlpW+9yaA+80HsuGLupDiMqIFInGhgyIzg=
=Qjls
-----END PGP SIGNATURE-----

--------------2fwPR1MT5us0Og5CcDLYcAvl--
