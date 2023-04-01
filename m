Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8300B6D3146
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 16:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbjDAOY4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 10:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjDAOYz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 10:24:55 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54FA6AD30
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 07:24:54 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id r11so25094314wrr.12
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 07:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680359092; x=1682951092;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8iCWyR+ZAYa4cItq505SZLfBwL46xXPxNzt9Da0tT4Y=;
        b=gF33wXFlzKW9YuhjbKrHOGBsxbVOJ/G/r1vEXLC1R+NPoPZnNEW7SnJA1dnXVx6VUL
         vB5Uc45V898nNHHCswGWL7WNd6BFrGF98EHB/qpHZD8js4A+9q5vj+81FKiTSByOWzdA
         /R3g1k+2fQoN2LLtcRq/8RoBLgOz2hb5mfBRevvTJ7RUUW1aOQYwXTpBNutmvMXhx6DW
         osql/LItE6SyEBczugmPTSrl1oxUYBfCD3wuor0yeYQQSSFz7VqG/8wtGzQ6ZQ+BOdbQ
         4/6Hf43Lstns13EZDOwt5Ab5Wh6FGj98mjsoncQctSgvdaTuHHMbUQ38O9OKWn5XT8Zp
         fzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680359092; x=1682951092;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8iCWyR+ZAYa4cItq505SZLfBwL46xXPxNzt9Da0tT4Y=;
        b=nueJ6XWYeKGLbRGi9DeAYiEzUJIb7C72YPkV1YA/7jkVGw3aynZtO+03Xq7XWYuvSU
         kTaVLSU+M9f68SbaQZkXGnQbvLGqZp8IPttQ8La0ENXljb8rizgG9ZcwJRYUFP5mksIA
         AE8pel8f5G6xGZDbYEZWTTbeCgJDsNFPYcZbLZ/0KFBTK+jfzwNL5aIK76ppmRVGmdbt
         9bW1SvfNR1Dj4etJSYQg6KsyAh97kNXlQ9h2+Neflf9zg4FrjhHpW00GgJ0mVYvI45zY
         bZTYOIDRmTr/RXLFfpMe6CepXlQ2ymTTLCXTYY8Isp/eLFwvq2+2XZXCV8NVmresEQSL
         cq7g==
X-Gm-Message-State: AAQBX9fTWNPTL+jkUGCgRyourPrXeZ60REPjUoM+3Kjr8E4B7cLFfFJC
        bWWbS2uFm9kIa5OlYpTqKE4cbxENZec=
X-Google-Smtp-Source: AKy350aI3ktlzbzTvnI+L3Ps00hMET+AfL3bW6ee7NU3Nb4+XBMnd7w0/uPUmekXLiRwayfJKQSN1g==
X-Received: by 2002:adf:d842:0:b0:2ce:a890:7371 with SMTP id k2-20020adfd842000000b002cea8907371mr22877412wrl.12.1680359092073;
        Sat, 01 Apr 2023 07:24:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d660b000000b002c54c9bd71fsm4988738wru.93.2023.04.01.07.24.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 07:24:51 -0700 (PDT)
Message-ID: <2d6b3d7a-62a6-ee00-79f3-795ab00ed9e1@gmail.com>
Date:   Sat, 1 Apr 2023 16:24:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3] user_namespaces.7: Add note about PR_SET_DUMPABLE on
 nested userns
Content-Language: en-US
To:     Rodrigo Campos <rodrigo@sdfg.com.ar>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>
References: <896cc07b-c6d1-555e-b3ba-f14bf1bb81e2@gmail.com>
 <20230401125926.445620-1-rodrigo@sdfg.com.ar>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230401125926.445620-1-rodrigo@sdfg.com.ar>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cIAkSQhBORYr2E7axpveUV7q"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cIAkSQhBORYr2E7axpveUV7q
Content-Type: multipart/mixed; boundary="------------b0OqeJcBMr0XCnUmpyYXm0Se";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>
Message-ID: <2d6b3d7a-62a6-ee00-79f3-795ab00ed9e1@gmail.com>
Subject: Re: [PATCH v3] user_namespaces.7: Add note about PR_SET_DUMPABLE on
 nested userns
References: <896cc07b-c6d1-555e-b3ba-f14bf1bb81e2@gmail.com>
 <20230401125926.445620-1-rodrigo@sdfg.com.ar>
In-Reply-To: <20230401125926.445620-1-rodrigo@sdfg.com.ar>

--------------b0OqeJcBMr0XCnUmpyYXm0Se
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rodrigo,

On 4/1/23 14:59, Rodrigo Campos wrote:
> In order to create a nested user namespace, we need to re-set the
> PR_SET_DUMPABLE attribute after switching the effective UID/GID. Clarif=
y
> this in the section about nested user namespaces.
>=20
> Having this note would have saved me some time debugging.
>=20
> Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>
> ---
>=20
> Thanks for the review. Is this okay now? :)

Yep :)

>=20
> I'm new to semantic new lines and doubted about how to split some parts=
 :-)\

Looks good.  I applied the patch.  Thanks,

Alex

>=20
> ---
>  man7/user_namespaces.7 | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>=20
> diff --git man7/user_namespaces.7 man7/user_namespaces.7
> index 3c376a9f0..3db79d9a2 100644
> --- man7/user_namespaces.7
> +++ man7/user_namespaces.7
> @@ -91,6 +91,23 @@ The
>  operation can be used to discover the parental relationship
>  between user namespaces; see
>  .BR ioctl_ns (2).
> +.PP
> +A task that changes one of its effective IDs
> +will have its dumpability reset to the value in
> +.IR /proc/sys/fs/suid_dumpable .
> +This may affect the ownership of proc files of child processes
> +and may thus cause the parent to lack the permissions
> +to write to mapping files of child processes running in a new user nam=
espace.
> +In such cases making the parent process dumpable, using
> +.B PR_SET_DUMPABLE
> +in a call to
> +.BR prctl (2),
> +before creating a child process in a new user namespace may rectify th=
is problem.
> +See
> +.BR prctl (2)
> +and
> +.BR proc (5)
> +for details on how ownership is affected.
>  .\"
>  .\" =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  .\"

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------b0OqeJcBMr0XCnUmpyYXm0Se--

--------------cIAkSQhBORYr2E7axpveUV7q
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQoPrIACgkQnowa+77/
2zIvOQ//bFw+GUOfQSE8fCh9PSy47I7jDEMZghbu1Zs4HlFcbdEqok+fGwbl+lAo
Q9Vk6HVnPlaVDFy49pMGRS2ryJ8DvhugCBWJTlomK+LSgc/vOewsS6k0a8/FTiQE
KDCU8ol6ZZDsaYYQOHebQVUBIRZn6+QynhgqpZRllkEzLkmbRnFpDTfechp85QCu
EPybff6nrM52iw9RS+2N5o77bINH57KC4T0UYeyzN6OBy2onRTO7/w6x3wxzHICe
zQYEBbHRT3ZvsyzNg3lABhPPCg5Bu5Bwdx+/3d/6INBo1M+8sL8M4AVWWRIVE214
TzadQtXZXUWUKWNgAHg8Txu3B8sGvNj0c2PUFyMi6jQxO/ztXUYThIvWwdxmeBfa
DbqBgz9CliHhcc4IAzkfVMeOfL9IIBrCJPcvQh6IH/PUnpRIhLw3P5S4knYk6y0I
RJcL7IBycsBLgsuQ+AoXTsPnoq6QRCocNHMrupfHn4sx2atxSbaFkwWE+Hh/iw9h
CB+Yx1CnQgRirAa/d/lHr3Jx/SujTS/yCJ26tSrXTlDAWjAzYv6ERhW2rFGcqih1
gJ5dkgFER07InNywq7aaXDLo5CmXvQ9dekO5wmjjT5zvRb/2rE00KZSB3uNS0BPz
JLWLaOTxB0YWHkELYDaYJMcAWJyXqQ18KWnzeLvB0szvb9XUvRI=
=nt4b
-----END PGP SIGNATURE-----

--------------cIAkSQhBORYr2E7axpveUV7q--
