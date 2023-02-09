Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EEE769088C
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 13:21:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbjBIMVX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 07:21:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjBIMVW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 07:21:22 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A535FE6
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 04:21:21 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id h16so1544264wrz.12
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 04:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UXjfikZ1wIkFEyjlWz/KjcQarIAGkXq3/SczVH6mKYc=;
        b=ZQwDvDrD8mdIvkiGwzDV5MV9GBp66t6Ag2nTbtLrfi1QFxhzx4O4JPeK00VBtAA1b9
         h7CKJJgbkfRbjFmWKvwUj0/PS2yusFJzdRP86VtLotriPM6I/XYbI+M4nK09wFp1BSVv
         Bo85spsxODNo3fiV129CAsyWYvhxkoPze8AyqDdRL9aB32FAi9QNg6ajvra+yFxgGmxV
         yPws/tPwiTN/qVT1j0EXxf8t2PIbjQ8pDA33V+nHsVC8I2r+wxwuRFRCMVF9RdKKeEjp
         jBlFpKsoJD4JdfvEteTUMQpPLCaJ/XVgVLYjanoRZGZogbxaHC2j57gKzz5+QUsA+6kY
         99Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UXjfikZ1wIkFEyjlWz/KjcQarIAGkXq3/SczVH6mKYc=;
        b=o5bP+NU22D2roQaxa5Qk7iTlX144idS+WBm6CUe6OCmSGsLMTlouFBuJB2TetEhtdq
         aM1xfLkGoOJI6oKg/0iGt/nKDBS/oo4sI0rnY/FRlGRhuJVpe081XLhkUyj4AGrUV8qq
         T6B67cTrdEH1jvDeul9d4BagsUpEA8yrAiGCiu1hEAYlooYbk1/nGSDolgj4y3QLxDa9
         9rqv3l0WKxmrjLG4nK35/R8aVKiIeMnknKp39uQ7i2ag58MNxFyAhNYWc40jKbB2ojDG
         yQIRYStkqd91/n5sPC7wNaZ7re9PdSDtDOHqS0vMVQ945wDZ5TRYtwCFtOss7FrweNjJ
         FdVA==
X-Gm-Message-State: AO0yUKXP3tGGiMRg4PfEbyd2x9Rna5fjWsCMPSJCrWn+vlOmERKhKtkf
        UAbLxv0faouqKU9ewN3kcRON6X+tirI=
X-Google-Smtp-Source: AK7set8OyHnTrwnrxxqL/fDMjsl1bJPGfCsxk2zC6Js4dMJKHGPTqcbCXjYfbXMFlxvxySuD+dmbfA==
X-Received: by 2002:a5d:6791:0:b0:2bf:963a:f266 with SMTP id v17-20020a5d6791000000b002bf963af266mr10551820wru.27.1675945280132;
        Thu, 09 Feb 2023 04:21:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b4-20020adfee84000000b002bfb0c5527esm1128706wro.109.2023.02.09.04.21.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 04:21:19 -0800 (PST)
Message-ID: <5ad757b9-b84a-4a05-096a-d28235e7e68f@gmail.com>
Date:   Thu, 9 Feb 2023 13:21:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 10/11] man2/futex.2: change limit to use ISO multiple
 symbol
To:     Jakub Wilk <jwilk@jwilk.net>, Brian Inglis <Brian.Inglis@Shaw.ca>
Cc:     linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>
 <b10498de-f55e-e39f-a051-3bbab2682ea5@gmail.com>
 <716eb1e9-8e51-b25f-2476-6e3d635d2538@Shaw.ca>
 <20230209113637.yifd3ojsgqameauz@jwilk.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230209113637.yifd3ojsgqameauz@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pDDLMNyKJANA3bPGzT0rnZys"
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
--------------pDDLMNyKJANA3bPGzT0rnZys
Content-Type: multipart/mixed; boundary="------------d8s5VjaJB93SQW07BwJV4fgh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Brian Inglis <Brian.Inglis@Shaw.ca>
Cc: linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>
Message-ID: <5ad757b9-b84a-4a05-096a-d28235e7e68f@gmail.com>
Subject: Re: [PATCH v2 10/11] man2/futex.2: change limit to use ISO multiple
 symbol
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>
 <b10498de-f55e-e39f-a051-3bbab2682ea5@gmail.com>
 <716eb1e9-8e51-b25f-2476-6e3d635d2538@Shaw.ca>
 <20230209113637.yifd3ojsgqameauz@jwilk.net>
In-Reply-To: <20230209113637.yifd3ojsgqameauz@jwilk.net>

--------------d8s5VjaJB93SQW07BwJV4fgh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub!

On 2/9/23 12:36, Jakub Wilk wrote:
> * Brian Inglis <Brian.Inglis@Shaw.ca>, 2023-02-08 15:33:
>>>> -was not less than 1,000,000,000).
>>>> +was not less than 1G).
>>>
>>> For nanoseconds, I think 1G is a bit weird.
>=20
> Not only weird, but also not allowed by SI. From the brochure: "Prefix =

> symbols can neither stand alone nor be attached to the number 1".

That's in section 5.4.7 of the SI Brochure (v9) for those who don't have =
the context.  However, that section not only forbids 1G, but also 32G or =
32Mi.  The point is that you can't attach a prefix to a number without un=
its, because it's a prefix rather than a suffix.  According to the SI, on=
e would have to express that as powers of 10 (or the expanded number if y=
ou prefer).

However, since in the case of 32Mi-1, which is 33554431, which is 32 * 2^=
20 - 1, which is 2^25-1, the most readable version is 32Mi-1, I'm willing=
 to make an exception an divert the SI in that regards.

If someone is familiar with ISO/IEC 80000-1 and could check if it allows =
that, it would be nice to know.

But in this case, we have a unit, which is seconds, and we're already mul=
tiplying it by nano, so G doesn't fit in the rule below.

>=20
>> SI actually allows Gns (/nGs?)
>=20
> Nope: "Compound prefix symbols, i.e. prefix symbols formed by the=20
> juxtaposition of two or more prefix symbols, are not permitted."

Thanks for finding the right quotation.  That was my understanding, but c=
ouldn't find it.

This rule I'd rather follow.

Cheers,

Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------d8s5VjaJB93SQW07BwJV4fgh--

--------------pDDLMNyKJANA3bPGzT0rnZys
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPk5TcACgkQnowa+77/
2zK0qw/9ET2Yuy5FtSSnpnAQ3OWMxiXtizbaU4fmdzRKW/29/9AZsJIy6bLYyXAk
g5NB45zWAsUjMU8+Ju9tVhAZk4ziT3kln+mSxibfwj5hACW5MoWfFCyuvYJG10uW
p9ojH5t/72bumipMTR6RSZOrAdgKLS4opaVrmPFBA8v7QlpFqnevaeHEOVDyPj9B
pmxA/ejzX8UCAuxBfS6IUtFlCtHWVWLuPngoig2DxqyA1q2DBanFl+fUTsnKX5ED
5lnVyfxIqD6b+cz2TdPrcfNjYNfgvECfP1ZIz5HIgKzLA1I531W77XNMugJ6hogO
VbWJMv62c7Ua0/d9Fq2AMFRVadPZHKG7fNPqX7fMhYSWXQzbgNvWAmS0Vgv9DStA
40F+Lp0ONjXJsXNCwYa8BApR8B1lpJ5bbT4l5upynIT6qf2lvRSu9h0kOPx99mYF
Wf2GIOK1KuCKm7Pre+bq5Kav9e6A188V+6izcqsE83xcUkcbglJS7Xz7of90kQm6
Qe+fPNi/WHQhOJfNx8Tnh8s3GouA61mEr96rCZPTHqcBK4Z21ZPAh2cANeGDL3JB
N7ABRzBPbUyzJkSVsJKQae0fEm4ITaiHPl3q9IHSJXnHlzohGOtV5xeVBqhcsXH2
oFjvvbGiV/qwtsQ5z8Aifgj0K+nMUPVXZoOADgcB4bgTn35Kq4c=
=28Hk
-----END PGP SIGNATURE-----

--------------pDDLMNyKJANA3bPGzT0rnZys--
