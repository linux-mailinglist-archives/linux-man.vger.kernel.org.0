Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9402870ADBC
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 13:47:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231219AbjEULrN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 07:47:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231604AbjEUKkV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 06:40:21 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15C64107
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 03:32:18 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-309550263e0so2361812f8f.2
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 03:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684665136; x=1687257136;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X0PtuPFuIjE660fSO6dulF0w2BLAocgGSQGj+sgSUzc=;
        b=FukvVqL+Dgq1RVgU8JiLeK0/Sf0fisvsG0WxQhWGogsZO0GLcbu36F7sK6lFcozTbD
         fSknl2v19vsCdl3CGEtozM3T7qKPxb6b6C8FVhyIy/aMyZNXW+mIzAfe4UOTqSEgv063
         p/ecImqlXFbIyjMg2GyCc6twU7Gyg5tEo0FGrQdsZKMTZvv89RhxzF50KH4S9DvbBtK7
         OYAhiKZ2znV9FWO38Wdb5KKOas08VdYmgrYbOPLfGm+qNj/YAN5v1cEeASkK5PRtv3P2
         MV8j5DXNEE7f9tycRSgzkQQPbZ5OHGTN05RhXPKGnZAy/Omxb3hGSoEeXTqmhlz29hCA
         NHRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684665136; x=1687257136;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X0PtuPFuIjE660fSO6dulF0w2BLAocgGSQGj+sgSUzc=;
        b=lJVdbfAOnokzG6V3UuOUI09XE3qDJypYconiDiuVzfxKn1OFw1LQQZ4kkXrSfLcFsg
         hDXb6kHHQpUuS3yrLy/wmYGwC3ei7pZavBVkxsXEqNzWaoMXsrYkKjy6WNBtFq1FcEfL
         zJJPrZkwdzNmpQVMgS1XWSdWEWv4tvtg8bhqsvRhJ4dMWX3V8R6YsXY6jVWPrwZeg6oL
         X3ajBWaUEsGZJk/CSTU4wo3OViTuLXm5EbL2zqY0VnEuEZ8LpdBDgNl4Cjp77cHtJ3oc
         0uKXrEt7kKytvR7ILMNpD2ihRdu3Qf9ksJ0T7EOLiXSdzw8K05Rg5Lp12A7/L03EbXB7
         OtCQ==
X-Gm-Message-State: AC+VfDzkR9/YB6VjQfBHmLUbgiE3Ampo+GfKqWMhRIMfEQaL40ail8B0
        cMSfTIJv4K/bEGXcKuZEVnm3mvvUSso=
X-Google-Smtp-Source: ACHHUZ7W5nKNyfQLf02l70rz5QtZItHyjKnR/O69aHhljFk4qqYLbI3YydggndKiwmGsPfEJRs2FZQ==
X-Received: by 2002:adf:e405:0:b0:309:268c:73dd with SMTP id g5-20020adfe405000000b00309268c73ddmr5501028wrm.14.1684665136335;
        Sun, 21 May 2023 03:32:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i18-20020a5d5232000000b002ff2c39d072sm4234075wra.104.2023.05.21.03.32.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 May 2023 03:32:16 -0700 (PDT)
Message-ID: <76a5d666-db92-fe0c-02ae-f70c29a982c3@gmail.com>
Date:   Sun, 21 May 2023 12:32:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is
 untranslatable
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Bruno Haible <bruno@clisp.org>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
References: <20230521103128.8472-1-alx@kernel.org>
In-Reply-To: <20230521103128.8472-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1twWQ5Obf0kmAByhQwXm2HZn"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------1twWQ5Obf0kmAByhQwXm2HZn
Content-Type: multipart/mixed; boundary="------------KV2UNzmnmR8waos1cXDF0otQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Reuben Thomas <rrt@sc3d.org>, Steffen Nurpmeso <steffen@sdaoden.eu>,
 Bruno Haible <bruno@clisp.org>, Martin Sebor <msebor@redhat.com>,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <76a5d666-db92-fe0c-02ae-f70c29a982c3@gmail.com>
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is
 untranslatable
References: <20230521103128.8472-1-alx@kernel.org>
In-Reply-To: <20230521103128.8472-1-alx@kernel.org>

--------------KV2UNzmnmR8waos1cXDF0otQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Sorry, ignore this patch.  I forgot to remove Reuben's authorship
when I modified it.  I also forgot to specify v2.

On 5/21/23 12:31, Alejandro Colomar wrote:
> From: Reuben Thomas <rrt@sc3d.org>
>=20
> The manual page does not fully reflect the behaviour of glibc's
> iconv(3).  The manual page says:
>=20
>     The conversion can stop for four reasons:
>=20
>     -  An invalid multibyte sequence is encountered in the input.  In
>        this case, it sets errno to EILSEQ and returns (size_t) -1.
>        *inbuf is left pointing to the beginning of the invalid multibyt=
e
>        sequence.
>=20
>     [...]
>=20
> The phrase "An invalid multibyte sequence is encountered in the input"
> is confusing, because it suggests that it refers only to the validity o=
f
> the input per se (e.g. a non-UTF-8 sequence in input purporting to be
> UTF-8).
>=20
> However, according to the original author of the manual page, Bruno
> Haible[1], it also refers to input that cannot be translated to the
> desired output encoding; and indeed, glibc's iconv returns EILSEQ when
> the input cannot be translated, even though it is valid.
>=20
> This patch adds language that reflects the actual behavior, by adding a=
n
> explicit bullet that distinguishes this case.
>=20
> Link: [1] <https://sourceware.org/bugzilla/show_bug.cgi?id=3D29913#c4>
> Link: <https://bugzilla.kernel.org/show_bug.cgi?id=3D217059>
> Reported-by: Reuben Thomas <rrt@sc3d.org>
> Cc: Steffen Nurpmeso <steffen@sdaoden.eu>
> Cc: Bruno Haible <bruno@clisp.org>
> Cc: Martin Sebor <msebor@redhat.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> f
> ---
>  man3/iconv.3 | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/man3/iconv.3 b/man3/iconv.3
> index 66f59b8c3..6bb27c802 100644
> --- a/man3/iconv.3
> +++ b/man3/iconv.3
> @@ -80,6 +80,14 @@ .SH DESCRIPTION
>  \fI*inbuf\fP
>  is left pointing to the beginning of the invalid multibyte sequence.
>  .IP \[bu]
> +An multibyte sequence is encountered in the input which
> +cannot be translated to the character encoding of the output.
> +In this case,
> +it sets \fIerrno\fP to \fBEILSEQ\fP and returns
> +.IR (size_t)\ \-1 .
> +\fI*inbuf\fP
> +is left pointing to the beginning of the invalid multibyte sequence.
> +.IP \[bu]
>  The input byte sequence has been entirely converted,
>  that is, \fI*inbytesleft\fP has gone down to 0.
>  In this case,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------KV2UNzmnmR8waos1cXDF0otQ--

--------------1twWQ5Obf0kmAByhQwXm2HZn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRp8y4ACgkQnowa+77/
2zJ07g//Sz+JWTvD1u49Gw6V1YTrkkxSnrEAFJ0ClpD80WsTG6+zXmMViElTUa3i
YJOwwkE/+KB1mQXe21rdRAWsqtR/lFLz3QJlhj4JVGWifWy9NqbJF9yRETtYhl62
hoQeXeV5loknU31zfcDKOTJAGChfFC2r+gOMUVy7xOblDiQBUFp+7a5tMFdw3wBl
W3k2wXQGt4iGug50DFh69x7aDMRcSJJtIjfI8XMuzgn9hz8qQbk8H7U1wHYp9qa/
tSB5ZVhdoaArwaoYFVeADGPvuoEnTD5bKGFihWrDSeMnlIQAt6yNjPIqDgqLr7jm
rHkRY3GD/CV80hRR7qFofCA7JutDTkBTf9fLgOt3wT9VpyU4NKwF+QAwCWSUVpFa
v+MLo2Yry6aSH+GRzAOCeU3kkIsdT7dbkr/t3g0ry5bF8IdlpIml3851ZdYNkPfq
acNdIDaVQ3ko0sUrUIH92eeA+30f84zIXxltTx8vI7JD/QbAd0yg4E7cVKbPY/AI
bOOa8PQWs4XE4fKOonI+yirBx5uaT6kK6lbmSI1t0gkiCSuTo8eJus1SAP+n590y
iOncAMgZccCtOunDyclYOWSuNVe+YXwjXQ8qlDJxsFPAl+v4di/BfGoe6XwdnHV/
NgHKXuwIoYZB/lrOTDAPuMzVjJafhAT+bOZHWi5jRz2wJ8mpufg=
=VHYo
-----END PGP SIGNATURE-----

--------------1twWQ5Obf0kmAByhQwXm2HZn--
