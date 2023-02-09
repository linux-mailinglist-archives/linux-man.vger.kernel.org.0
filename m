Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1771669093D
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 13:47:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229574AbjBIMr2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 07:47:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjBIMr1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 07:47:27 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 298865EA00
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 04:47:26 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id by3so332471wrb.10
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 04:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ruMOQBSapuow0nElcM5+mz1PQW3NQvqizbJwE7tWeDA=;
        b=nFuBo6ncqRkvdmmrJ1Xwd8TbDdfPmh9nI5UWwymvxaPtMa7CZA1/wjSPGJ0hinF7/V
         Arb2y57qfe+tWucQvJr/9K/oxgnTyK6npAMr1kpCxHaLzV8VvpQBP6Exr1LQJCyYyxo/
         OA5Rrv/gU2OxYvUmYEjX77Pncm77+Ra4K2himXCiE81UAWyd0XKnKrlM+WIcKahBruOg
         /infjpQv1xjRY7LUJDLR3vsrs2lbCiHH7h5ILQEh6H3d7C2B2xEISPNsHzp95HaH+6hd
         A8bVXUMDPawPnwk1gVLgFWjojzpSu1N7n50vfb0niCLHUQHjIZVdlU5lv79zmI7fi9vl
         Y3cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ruMOQBSapuow0nElcM5+mz1PQW3NQvqizbJwE7tWeDA=;
        b=g/CIA5kUYPUzIjcF5M8+hLFCnZhp6u1JsPHZSLyTLPbuf+PmPbcwFLbNPMnEbTH1vK
         im5qSELy8F6WiqqPtG4uw6epNpFo3KMTzA3VK0oi30bYgo9aEjd8EnNe2r6SQM73XmLX
         ICgX4xyAiu4Anp+hX9xViwPGTywlTubw5EXxtg1nJ4w2tk3/DPs6zAi1N7OrOZnJNkso
         gOfV/a1n4tl6WzKCGGbbbPipXF2MR1kJsrdEY9BebApYUq2/UUrhgyF/XwtT+jAndMgL
         +Suo4c4dPblwCDv8qr7Zy7tlPjKJ4IDitTDBJ+AqPH+vMPaju+ZyXaIxUoAkl3XfQVkF
         ROMw==
X-Gm-Message-State: AO0yUKUX0QrHY12+NV3bm9ebenSSGjpFk2sz6wSVCwKL+isVek4BuIgN
        oc/nQJU/QrLtGRIVlZVRglM7DK28uwo=
X-Google-Smtp-Source: AK7set8VGYIDDnV6vliA451MAJWwWljM5+GzQIQED9Uz7rWDXZ4tUBXtm8zo5n5lZQknf9SMUD9dzA==
X-Received: by 2002:a05:6000:1292:b0:2c3:ee54:329c with SMTP id f18-20020a056000129200b002c3ee54329cmr10192262wrx.20.1675946844780;
        Thu, 09 Feb 2023 04:47:24 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c63-20020a1c3542000000b003df14531724sm5091643wma.21.2023.02.09.04.47.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 04:47:24 -0800 (PST)
Message-ID: <b5abf56a-23f0-0aa7-1028-e08145a42e24@gmail.com>
Date:   Thu, 9 Feb 2023 13:47:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: Using C23 digit separators not locale digit grouping characters
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc:     Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
 <20230208210047.53poygyjqxffxodn@jwilk.net>
 <cef9233c-3b00-7b0c-6446-cb55b0f4d3ed@gmail.com>
 <0a6773fa-257e-ed5c-f951-39a0876b9dcb@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0a6773fa-257e-ed5c-f951-39a0876b9dcb@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qimlf8Od0tdYwGrtuw2sCcN0"
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
--------------qimlf8Od0tdYwGrtuw2sCcN0
Content-Type: multipart/mixed; boundary="------------sQvInZAFtsXWJNYWLu4gwYpZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc: Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
Message-ID: <b5abf56a-23f0-0aa7-1028-e08145a42e24@gmail.com>
Subject: Re: Using C23 digit separators not locale digit grouping characters
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
 <20230208210047.53poygyjqxffxodn@jwilk.net>
 <cef9233c-3b00-7b0c-6446-cb55b0f4d3ed@gmail.com>
 <0a6773fa-257e-ed5c-f951-39a0876b9dcb@Shaw.ca>
In-Reply-To: <0a6773fa-257e-ed5c-f951-39a0876b9dcb@Shaw.ca>

--------------sQvInZAFtsXWJNYWLu4gwYpZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 23:10, Brian Inglis wrote:
> See discussion 10 years ago in WG21 C++:
>=20
> 	https://open-std.org/jtc1/sc22/wg21/docs/papers/2013/n3499.html
>=20
> where ambiguity with C++ user-defined literal unit operators and "_" wa=
s an=20
> issue, and Objective C/C++ parsing problems with using whitespace.

Interesting.  Let it be a ' then.

>=20
> So in 2020 WG14 C, opting for compatibility with WG21 C++; quoting:
>=20
> 	Prior Art: C++, Intel ICC, EDG, Microsoft Visual Studio
> in
> 	https://www.open-std.org/JTC1/SC22/WG14/www/docs/n2606.pdf
> 	https://www.open-std.org/JTC1/sc22/wg14/www/docs/n2626.pdf
>=20
> FYI see comment in:
>=20
> 	https://thephd.dev/c-the-improvements-june-september-virtual-c-meeting=

>=20
> "Guess who uses apostrophes for digit separators! The SWISS! And who is=
 in=20
> Switzerland? ISO! I see WG14 is no less corrupt than WG21.
> 	=E2=80=94 Miro Knejp"	;^>

I remember having read that :D

>=20
> We are going to be seeing these used a lot in future from GCC , and as =
man-pages=20
> are immersed in a sea of C, we might as well start getting used to it, =
which is=20
> why I made that suggestion.

Agree.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------sQvInZAFtsXWJNYWLu4gwYpZ--

--------------qimlf8Od0tdYwGrtuw2sCcN0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPk61sACgkQnowa+77/
2zIXhg//RXeu/9DcV1El+/WAEXYy5TWVv+w4gQdaP3koX/EIUU8I54IGpFNvm3Hq
2yZ88s81G6t8x58nzUUuDEmgYDjnfA//q/xQt1+IdCFvYEQRAMeuBd0fCFKoNZ0d
3zuORH5veOXV0iJZq23x/VZ3i9TQSSeE8jegeIATtJfLXQAQqcio1eOz8YXhsEfl
FAvCSmw1faGzZQVR8KNrnG/h/1wvodNGDpm2TJF8qFMkY/Fi16jygm011XxZ8Lr9
mloOwoskdVio30Q3Q56amoupGRljDmbQEzZ30RbC9SZWC1gBowShFhukOghcF6eO
YGWKBUpqJbVXerPhVCsB2VfZ9afVETJ2DeiOUEETqJXME7BhUi84Efs9yZwRWqiy
16cD8N8t9tKmX1t1VlMRntJkosn6KZec4eBGJnJM6PnA+FMtSxIvSQGfzkHXDuDH
BZv9QLQ96s3EnQ096oQAqE+B3ZO7WBQ/AqF/gNtQpX56YUjgFkdeQ5p78r7rMQeg
ZNaIM5gmat3FKyIU5p+i4TI6kTxsTZ+1pcQgFey6EN56mWHaykGUtJg9AUWisxCk
AQcBJ1ZLmaNbhG0S+fCtxx5AGav/LfUqiHvIBhj+Eh5yCwFBB67CLqZL7aSQjT8A
vJuAcDe3uhPdY68ECD98pcYAP1pwWyY1uOabid8j965YnSfNsmI=
=SET0
-----END PGP SIGNATURE-----

--------------qimlf8Od0tdYwGrtuw2sCcN0--
