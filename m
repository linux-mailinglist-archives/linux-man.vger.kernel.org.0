Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D468168EE5E
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 12:59:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230340AbjBHL7S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 06:59:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230303AbjBHL7R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 06:59:17 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4BD746160
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 03:59:16 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id bk16so16474250wrb.11
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 03:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xkw0qXo/v/x4s3BG7+A1io7Oc6avGQ4CLIg0HId8y4Q=;
        b=euZ1x7ZcGFjkyS8fBuI/2wLZlAkWoGrDK9iF42TRSLU1pbsYlS4lxTAdM581pUtuNu
         zcacJEfHy1SiutRlOSl5peFqGlQdk6v4vFkIrvL936+IUsPB3Racj2AxiuPsZgn8hDkQ
         l/MWOU9rqhtcGoR7tfpQgQbLJy6qyVnKync17c79ZH4hasjZtkCWqmlFo1Hum3twyvK2
         yNgiPeEMpawUXZt0xYZbAsiYSiVhn6fRAWBimEerbGqSyCKMZVVmZnVsaOK7LHHq+HGF
         IsrYIDBdZJaoB13QZmn8VpGvjBcIXhsqoyMBU3LeIHQiODUK5ikm77itDN6mh+Uugjxf
         ekcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xkw0qXo/v/x4s3BG7+A1io7Oc6avGQ4CLIg0HId8y4Q=;
        b=8JCVPBJ6Ns9IdaYM1gNmJDZO/bjq8k00un3VLBnxZQeZWXj95Npv5M0AYrYFXxS5Mp
         y0havqXB7K/+jFnErE3QjQ25ptesH+cwbBGne9CQlzrc6Cfc8sadgbCE6HYwriWE7O9+
         tRg5jR+E2e/bN1Ha6M8nUfGFMzGXqHRp6sH6O8wko5GGrd7FqUwwpn5fbXaeQzesD9se
         RPDRV1dV5AOTBzR73ql7Tdh7qmWn3XyYRrD+p2hqHFtQxcv95B0CoDbTzMKzS1bo28pN
         SO7+UC2FmiEykAIvn8s/jYO18LZihHoJQABYrySR1KOYjh04b4zj0PHvbnyI83Wn+DRz
         txTw==
X-Gm-Message-State: AO0yUKUhX8VqACIkij4CbIsuyfjSklx2OtR+xizJyxAi9XN4pVSOaeYw
        AlGLrceVFEyF41LwgRBPJO8=
X-Google-Smtp-Source: AK7set8HDrJ99Q9+vYGlNv12vy8kiFITZKQErEXJaDDXP3oHVsgiBylbcvSLjXDz+ZSaEXXMnEhmDQ==
X-Received: by 2002:a5d:6c64:0:b0:2c3:be89:7c1e with SMTP id r4-20020a5d6c64000000b002c3be897c1emr1766688wrz.1.1675857555381;
        Wed, 08 Feb 2023 03:59:15 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p4-20020a5d68c4000000b002c3e4f2ffdbsm8577338wrw.58.2023.02.08.03.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 03:59:14 -0800 (PST)
Message-ID: <0fe7f064-2f3d-7375-de7a-0fd382bcf972@gmail.com>
Date:   Wed, 8 Feb 2023 12:59:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] perf_event_open.2: Add missing variable name
Content-Language: en-US
To:     Namhyung Kim <namhyung@kernel.org>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230207015029.71177-1-namhyung@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230207015029.71177-1-namhyung@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KFPO12ExJ3IdQwqafjIvNoHl"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------KFPO12ExJ3IdQwqafjIvNoHl
Content-Type: multipart/mixed; boundary="------------TrTiKrdEZYDKH5tRZCGkMHem";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Namhyung Kim <namhyung@kernel.org>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <0fe7f064-2f3d-7375-de7a-0fd382bcf972@gmail.com>
Subject: Re: [PATCH] perf_event_open.2: Add missing variable name
References: <20230207015029.71177-1-namhyung@kernel.org>
In-Reply-To: <20230207015029.71177-1-namhyung@kernel.org>

--------------TrTiKrdEZYDKH5tRZCGkMHem
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 2/7/23 02:50, Namhyung Kim wrote:
> Signed-off-by: Namhyung Kim <namhyung@kernel.org>

Patch applied.  Thanks,

Alex

> ---
>  man2/perf_event_open.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index df515f7d1..dd90ab007 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -2336,7 +2336,7 @@ struct {
>      char   data[size];  /* if PERF_SAMPLE_STACK_USER */
>      u64    dyn_size;    /* if PERF_SAMPLE_STACK_USER &&
>                             size !=3D 0 */
> -    union perf_sample_weight;
> +    union perf_sample_weight weight;
>                          /* if PERF_SAMPLE_WEIGHT */
>                          /* || PERF_SAMPLE_WEIGHT_STRUCT */
>      u64    data_src;    /* if PERF_SAMPLE_DATA_SRC */

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------TrTiKrdEZYDKH5tRZCGkMHem--

--------------KFPO12ExJ3IdQwqafjIvNoHl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPjjpEACgkQnowa+77/
2zIhhA/9HYAx1KD9zHMKQLR5kq2Jc127IB4JZOn6QP0IS/0sf69KLu8BZkOcAWU3
HYfhrRGSjqwrLGvcRyiiX10ompNLEBLjWcbmJkyyGnPM6ckwhpeFznvCj5a04GZD
4CE8HF7ElT6+4qOQLuDiClVFd7PA3D9YcOf1D/WQYAujEHxAUD7Xj4T7ebd93VeS
HSH1q5oxB0+90/CAu/2b8j318BVEQvSofrhGvanm6wqjgAenA7QvTlVKPOeUrP9m
xCcrpTUh8GC48KpN8B7eJUDlOsoXTRvxA2mAXv6P8G0JXFDcmL9xF2bUU6maHgbL
w7jwDKImRTtHxKLCwGXAeo0fmBJukc+5DmA9eoDtvkvekrKLEmFM6uCa03a5bhAF
LR22LHmnGh3brWwXkcWkfM35LSJaSwVQSJ3Ur+w/oABNGqMVmcpcgkjb6oI2I8r0
9bvIbjE9ZIfiqR4tFhfJ8thgWO1r8NYzTx7K3CDyR2z+nO7JtbeSjlz9tYRb4ALC
YbayZ+CiQmIEOvO6Y8EF7WYD06jd2U4n5NePN3M3vTnaE9AjOikiKPueIGN3s4tb
fF6ywR8QmfEqPypM7VArLaAQTOLj5VXj3Iy4DGkC/H6+TYQTiL2Z0xGf+5bMNbGO
0HWh/20cQmAeHOqvjyYhJbZ74x8p6hafDufC6qv1h0ypeUKWO7A=
=5ayE
-----END PGP SIGNATURE-----

--------------KFPO12ExJ3IdQwqafjIvNoHl--
