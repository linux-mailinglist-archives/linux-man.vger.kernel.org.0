Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B40B56EA7C0
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 12:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbjDUKAy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 06:00:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbjDUKAx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 06:00:53 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2DB3AD34
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:00:51 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3023a56048bso1094490f8f.3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682071250; x=1684663250;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AKbik75KUpOsLDl3Bj2gh9msxTvyT0khqkdRGc5Fxpo=;
        b=clemumhpgX0We18ffJHiT/JQ9RuY1DHvgb1Plq/uZnqr0vYamfidptL/JZWPPc/u+b
         1ftxCVMWrK8sWDkR9KRVLvgBqEK5zncSn1nwjORSeoSvr6L+lSqFAqz6RQjjWeZNQwXQ
         tlZmfqXGccY+GV3BKtXWFhs2+ud0jfpuN/nvQrpVgrfWur7iYizzKkYPyeSpQydVnBi+
         kM80IBD3tQc/+SxABxPZvUOch3sISOk8gP2LSoTMIDY9L4a/nYDbEL5aXs3mHwj8BmIT
         KR3sv6u/B4Cn8SZ6cfNZEwH4vQJxwRiTm6NcUVlh92XJda6a8P75BwWnNtDvXEWCAsAP
         HajA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682071250; x=1684663250;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AKbik75KUpOsLDl3Bj2gh9msxTvyT0khqkdRGc5Fxpo=;
        b=XLX+wk+IpSENj/seQgljlYthLH2g87DHOVIlHQIAuXXiRirtSkfDQTl5+x/GJYGpYM
         CbVUki3iRx+ZwmCOBFhse87kIhP/lv5YScleHkRTab9uTTCJp/dBK2aW0MRxbCstAm6A
         PRKHyGAUmQmgQB3+L+bhqpgDgyfY2DVD9w2bTPNaFC3HtayPy55keidkUXwq2E54PsPV
         Mn3Xv4f9lM7tsPPN2hugcl8iBz1zeXmYJJBTJPOKt2vwvS378ay8FV1h+/I2YubIAFFn
         plQ8d/58Y642leY6TyUTcsUwX2yzxpMOHC5BJit898aHvZrSCX04lU8PDRtkiNgwXVbd
         PwtQ==
X-Gm-Message-State: AAQBX9e0oonBA4U2syoSSivXqgWZeCu4fj3jPoK+a+vNItpDaDChSNMt
        RQvcrwTOdCg8B0QSro2uAxkBnLsmvU4=
X-Google-Smtp-Source: AKy350ZrukEyKWrfsOq2zjtca3GaWQN1XaMeGjyQrpNvTxrD7eBz2LzaEIHfGiPGml+0qKoLo5b8Kw==
X-Received: by 2002:adf:edcc:0:b0:2f4:fcd:98dd with SMTP id v12-20020adfedcc000000b002f40fcd98ddmr3936660wro.4.1682071250225;
        Fri, 21 Apr 2023 03:00:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d18-20020a5d4f92000000b002c7163660a9sm4019853wru.105.2023.04.21.03.00.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 03:00:49 -0700 (PDT)
Message-ID: <bee5beea-7acb-f88b-b4de-9911c00e6176@gmail.com>
Date:   Fri, 21 Apr 2023 12:00:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 0/5] regex.3 momento
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------L707B0Ns7ja9IlgBpLi92X0Z"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------L707B0Ns7ja9IlgBpLi92X0Z
Content-Type: multipart/mixed; boundary="------------r0pgnGfnmh4BvTINH8pHG1YV";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <bee5beea-7acb-f88b-b4de-9911c00e6176@gmail.com>
Subject: Re: [PATCH v8 0/5] regex.3 momento
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>

--------------r0pgnGfnmh4BvTINH8pHG1YV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/21/23 04:48, =D0=BD=D0=B0=D0=B1 wrote:
> As a pull.rebase =3D true enjoyer, it was very easy
> (indeed, git pull and axe the single-line conflict + empty commit),
> and it's what I've been doing the entire time; recommend it.

Heh, I never run `git pull`.  It feels too dangerous.

I prefer `git fetch` and then doing manually whatever needs to be
done, so I know exactly what goes on.

>=20
> 5/5 remains a toss-up for me. Apply it if you think it's better,
> don't if you don't.
>=20
> https://bugs.debian.org/1034658

:)

>=20
> =D0=BD=D0=B0=D0=B1 (5):
>   regex.3: Desoupify regerror() description
>   regex.3, regex_t.3type, regmatch_t.3type, regoff_t.3type: Move & link=

>     regex_t.3type into regex.3
>   regex.3: Finalise move of reg*.3type
>   regex.3: Destandardeseify Match offsets
>   regex.3: Further clarify the sole purpose of REG_NOSUB
>=20
>  man3/regex.3              | 179 +++++++++++++++++++++++---------------=

>  man3type/regex_t.3type    |  64 +-------------
>  man3type/regmatch_t.3type |   2 +-
>  man3type/regoff_t.3type   |   2 +-
>  4 files changed, 110 insertions(+), 137 deletions(-)
>=20
> No clue where it got this. The interdiff is just the .IR -> .I.
>=20
> Range-diff against v7:
> 1:  783a16431 ! 1:  4479e1572 regex.3: Desoupify regerror() description=

>     @@ man3/regex.3: .SS Error reporting
>      +.IR errbuf ;
>      +the error string is always null-terminated, and truncated to fit.=

>       .SS Freeing
>     - Supplying
>       .BR regfree ()
>     + deinitializes the pattern buffer at

This means that the context of the patches changed (due to the rebase),
even if the +/- haven't changed themselves.  Basically what would be
"applying with fuzz" when refreshing a patch.

> 2:  5706f1892 < -:  --------- regex.3: Desoupify regfree() description
> 3:  baacf086f < -:  --------- regex.3: Improve REG_STARTEND

The cause is probably that I applied these before it.

Cheers,
Alex

> 4:  056c3ff04 =3D 2:  bad307847 regex.3, regex_t.3type, regmatch_t.3typ=
e, regoff_t.3type: Move & link regex_t.3type into regex.3
> 5:  44d7b775d =3D 3:  edefa8a5e regex.3: Finalise move of reg*.3type
> 6:  79641df02 =3D 4:  500070a5e regex.3: Destandardeseify Match offsets=

> 7:  26d06c07f =3D 5:  b01685c7a regex.3: Further clarify the sole purpo=
se of REG_NOSUB

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------r0pgnGfnmh4BvTINH8pHG1YV--

--------------L707B0Ns7ja9IlgBpLi92X0Z
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCXsoACgkQnowa+77/
2zL4bw//XItBXwHEso2Y11/Jt1BVe0S2J43xqevM+pe/KmWeLcd/urO+uuPPC+rn
cq/bi3ufMtHNJ+pvasCrCweO2CqzJDiJvTp1x91SXXLoKL7znF5cTHP0wdxpUsw5
ZO0kNWiSDl8ek3CBfVp/OloCqfieAlaa/+BSQbL5+9jY7hqFZqFP4M+8X82rVuIf
kwkoO9GG/WFqD+FxdgEiwCV0wJTyRmiGyyR+BfLv3mzrhr+PaEPIhiv2gRmOg2ya
sJWr6O+QKDSNNmWFtpo6FdAzqLAGT8YpzHvvxN1o8kI2/PGkUKHkZii2EX8dsHb8
yt01qYWA0LBdciOrR5hrKB5UzQ5pEI57Xgv1ePR+4jKCZnb2b9QlFFqoy3rgBBQE
GK5iCxBGC8FNdIjNnrCQmiiEw3UXJKkB9Kgl646hKRo5jwDCcHZxqEkYz19k8Auy
CM7AUg2CLRZ84T2kHoQx5GlaPOigwDCLsiqsuUMPTn4Ketbwpgi6gh9CM5KlFi9v
msZGHJUIkeivQu3/rXb0cifuia3pNarZkdowPomsUCc+rAxsxcgow4bKxtXBW2dV
THWJ77SA99vDquAoFifPFLFSuZxiTXLllJ5SKs1Rx8RsnCpV75XqeRlkLFz7638Q
SaSoowMURd5p8NxL6gHTW41AV6FkC6tXMb7vAhi150wUPqCQInc=
=oqK6
-----END PGP SIGNATURE-----

--------------L707B0Ns7ja9IlgBpLi92X0Z--
