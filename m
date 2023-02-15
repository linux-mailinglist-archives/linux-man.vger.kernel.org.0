Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA56F6981D5
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 18:22:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229630AbjBORWW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 12:22:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjBORWW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 12:22:22 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D8311A64D
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:22:21 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id bk16so19895907wrb.11
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QiTb1Dwn62+vugOVP6XCqIUOla043SYiS4w/53QTRhM=;
        b=UWQoXduMD5dHMQGOd8hGqUPgH746Qp2x4734qb60nfoBsx1mEz/FG+K2g0o3cTYIvZ
         4hl821owICNjfRn3YJtqRR67tz/JJS+vtugCMTcsGIknJ7HZTQjRaqinKRHKA/vXbpve
         p1GJvI0KHbM4Iyj3s8UaN9KxhaJm0kEtDtjoS8Zyh9zSmyrAcBYZdcJr3/ucWVYsBGSM
         0JwYmTKRLgfzv+AjrZvuhqg5U1iP/3YDGGG8O4PHj1f5uMcay4DrFu3hvyu4jTc1jsM6
         5luMF/a2bjQl5odqwBKRsIgWz4HwPDNhqTj7FCiUficeh8y1LoMnqqotwW5nSBMTQpAb
         bEqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QiTb1Dwn62+vugOVP6XCqIUOla043SYiS4w/53QTRhM=;
        b=TRAxJv17pBADjr/SjNS7Xz3lfvqN8VRd48FqwERi/4LoPRfMFa3k68XXKGnjGI6duv
         RU/b1A/KaMst7+SNmluRyR/8x/PvHtV3mmulbkUVv2Zfe44MdhCDnUgwbt8G5Bfq47WI
         gxzzjXJqrL7N6GZ0EFuGdFW2c43CQx1pFoG9DQbRaY38K/eNpMrr07H4ZuGTuXbZW0QR
         0oyWwD+1+a5zMkHRPo0DJH2BxVLjsApvlI0KWBvNODeztY1frnOdykUTLirZucajAexj
         BgDm9MgizUPACL+GcnFvKslT42cU8tLop0N+2aaD82bdh7UIzB4kZSJG/OV2N895F/9n
         3a1g==
X-Gm-Message-State: AO0yUKXO4bNzx8K/Y9fEu24FfkiJOV+ruKuRuRWUrJkX3LhI+IBnubpX
        eH3aDy4/NcAoP7iGezQA77Q=
X-Google-Smtp-Source: AK7set+PWnCK0oE6/5TAfzU/ZgDosYdGAblPxhMiZAHTFfIiFrHjlvEqH4OH+uirj0nSQIIffW86ww==
X-Received: by 2002:adf:fe8d:0:b0:2c5:455b:4cd2 with SMTP id l13-20020adffe8d000000b002c5455b4cd2mr2194508wrr.57.1676481739526;
        Wed, 15 Feb 2023 09:22:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m7-20020adfe947000000b002c559626a50sm7506417wrn.13.2023.02.15.09.22.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 09:22:19 -0800 (PST)
Message-ID: <6960d31b-44a7-5f89-30bf-36f067013c4d@gmail.com>
Date:   Wed, 15 Feb 2023 18:22:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] memcmp.3: Recast security caveat
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230215152059.fdop3i5yka3nns37@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230215152059.fdop3i5yka3nns37@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zCqDOrXxoYRlxeF5zJ6RiB8U"
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------zCqDOrXxoYRlxeF5zJ6RiB8U
Content-Type: multipart/mixed; boundary="------------AMnVgR5uuKTeP6w3bF3GlB9p";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <6960d31b-44a7-5f89-30bf-36f067013c4d@gmail.com>
Subject: Re: [PATCH] memcmp.3: Recast security caveat
References: <20230215152059.fdop3i5yka3nns37@illithid>
In-Reply-To: <20230215152059.fdop3i5yka3nns37@illithid>

--------------AMnVgR5uuKTeP6w3bF3GlB9p
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2/15/23 16:20, G. Branden Robinson wrote:
> Use terminology more carefully.
>=20
> * Refer to the info sec property of confidentiality instead of saying,
>   vaguely, "security-critical".
>     https://informationsecurity.wustl.edu/items/\
>     confidentiality-integrity-and-availability-the-cia-triad/
> * Try not to confuse anyone who's studied the analysis of algorithms:
>   don't say "constant time" when "deterministic time" is meant.  The
>   time to perform the memory comparison remains linear (O(n)), not
>   constant (O(1)).
> * Tighten wording.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

Thanks for the patch!  Please see some comments below.

Cheers,

Alex

> ---
>  man3/memcmp.3 | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
>=20
> diff --git a/man3/memcmp.3 b/man3/memcmp.3
> index c2427a00a..004556744 100644
> --- a/man3/memcmp.3
> +++ b/man3/memcmp.3
> @@ -67,12 +67,20 @@ POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
>  .SH NOTES
>  Do not use
>  .BR memcmp ()
> -to compare security critical data, such as cryptographic secrets,
> -because the required CPU time depends on the number of equal bytes.
> -Instead, a function that performs comparisons in constant time is requ=
ired.
> +to compare confidential data,
> +such as cryptographic secrets;

I'm not sure there should go a semicolon.  If you remove
"such as cryptographic secrets", you could even have the sentence with
no commas, which is a hint that it's a single sentence, I think.

> +because the CPU time required for the comparison depends on the conten=
ts
> +of the addresses compared,

Let me be a bit too picky here, since I already have comments for other
parts of the patch.  I think a better break point would be after "compari=
son".

> +this function is subject to timing-based side-channel attacks.
> +In such cases,
> +a function that performs comparisons in deterministic time,
> +depending only on
> +.I n
> +(the quantity of bytes compared)
> +is required.
>  Some operating systems provide such a function (e.g., NetBSD's
>  .BR consttime_memequal ()),
> -but no such function is specified in POSIX.
> +but none is specified in POSIX.

While for prose one may reasonably want to avoid repeating oneself,
I like boring language in manual pages.  It has less moving parts,
and clearly states to the reader what it's about.  In this specific
case, "no such function" seems very clear to me, and see no
compelling reasons to change it.  If you have them, please clarify.

>  On Linux, it may be necessary to implement such a function oneself.
>  .SH SEE ALSO
>  .BR bstring (3),

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------AMnVgR5uuKTeP6w3bF3GlB9p--

--------------zCqDOrXxoYRlxeF5zJ6RiB8U
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtFMoACgkQnowa+77/
2zLKSA//W0MGaj3PWrAI75pxzLHqj+lv31M0RsCwb+i95utcwJcOlFR+xGndS/Qp
cjlBD0L+N2Vk6MuCkr/0O0+KK+UZaG03eHJlDQRjhnMyZX3L2aRl7JTLD0UZ3Z1C
SA24fyt/u21QhLccj57T9HgccEgxQkQmB2u7m2a16nUfmkXgZQtQzCA6LWvCPwYi
5sEaTMOcqTv8ojJlekkaVcLxqOl0oIJaJ5qZZXBqBVEE9vizgd56ZVPlTcYR5sX+
nRXmq2d7rcUGZ0k+l5Mmt8etdB37gfH62/ZuThcQ5fRcGLGABW4iJeuP4JfYtGzF
jsKLHAKSppsY9CEQid0+W7+ilhdq/s6HAVDh0EK+m+wuoxU9q9gejbZjniCnQbo6
VXaXGWRbWAeNN0VhQQux1funvxhckFYKenX568N4LjjxDwoe2F65YmZwh8jaCSAE
PESTicOn2hBW4btSWTF8B7e28A70MtLXSZ+ay0hSQ49DROyAKiOpqnCmKwdaU9it
lNDl8VRdeGjYx9iFAm2eSiY4fRTKqQN9ScvJ7Cu9xlV7Xri6f1DjVADurYGUd5ba
KYtlbN2hzQm27kKBnwCA+a5ipFff5OLxeUXDK9vdUnw1h+DInanY/C7I7dNM+z84
/YhmAf+1GUv6HEpi35RoJdCBV1ni5E/68vwmdvlXpAUM1LYQmcI=
=hgC+
-----END PGP SIGNATURE-----

--------------zCqDOrXxoYRlxeF5zJ6RiB8U--
