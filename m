Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 577126E95EB
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 15:35:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbjDTNfL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 09:35:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbjDTNfK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 09:35:10 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EA8C46B2
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:35:09 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id iw7-20020a05600c54c700b003f16fce55b5so1162452wmb.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 06:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681997707; x=1684589707;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qqdwSGfzz0bc+eosXLClM+5eYJZL9z+it0FAvf0CZvs=;
        b=TOWhRVoZUgwih+wcZRNn30ZVeebb5JBFYE4bsxf11VLhgPE/WzD1I6IgzoG7ALM3WJ
         04Mdt1Xoh7jE4V97uidfW0l1ayNMtz22FGnUt9FCxZT/+Tx1L235/pVluazA2XlB8rj9
         7yvboHrY0Q8UL8+utKVS98Vry4kTYuXemb7RGQcu4tVII8FVrEZwj57vTSDA6IY/yyR2
         YmpOM4QQytc1zMPSnSeG9nKT2lLlwD3/kB+adDdkLZ/VuQJKHJM12m8zJnKHepdtVN8Y
         K090Gg6nK6Lafm4NZCbEGFw/47lsZLXf68Yi7eopIZ/P5WMkdvXBrdQFQTCPNdCY7j0s
         dxxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681997707; x=1684589707;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qqdwSGfzz0bc+eosXLClM+5eYJZL9z+it0FAvf0CZvs=;
        b=LSi7fH4gUseH177KXIwEXbhive6jMdwupNfDiJ8RaWeWwNMRy1FRlXaujF3o9txOi0
         snvwzu5wxMjlUM5DCyyUajsOC7eEI1y3eBBWhZEWwqVkKf8aUWN0tfAmwKGsqDln7ECG
         uysZZ2RWzB3oW3hdWrOZK3fsfoBv/6o190FkRHf2z9Qc8dc6MsLCUwep1zcuYkbqIKC3
         yTl0EsRtPtAXw0A4LchJmlLkOgCUL6R0zAdnVMpXPEu8DVQyI5eR7gcM8lJgVYXTIjg2
         dIC8ZAEHg7TOi5BSXROo9/54bOHzD9z3eDgY6fq82+zoo6BHa5nqdAhAnStG9lTBjbms
         aIyw==
X-Gm-Message-State: AAQBX9dXyRqp/vvNw7QA7UdzfgQBd+xgmlj+8q9yynsjeD2Wz1o32AOA
        nf9xd0Tt6lWYH8Nq1sRolfz9nDdyR8c=
X-Google-Smtp-Source: AKy350Y9IsLojcqKuLZXmJny3QB8wC4SlroMmvC2TsfgpS2i3zVBMBD+I6f30uYkLXNhK3WZ3RjPCg==
X-Received: by 2002:a05:600c:4e45:b0:3f1:7b63:bf0e with SMTP id e5-20020a05600c4e4500b003f17b63bf0emr4984186wmq.18.1681997707394;
        Thu, 20 Apr 2023 06:35:07 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c13-20020adfe70d000000b002fbaef32231sm2020286wrm.22.2023.04.20.06.35.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 06:35:07 -0700 (PDT)
Message-ID: <11c230de-265f-fe26-1bd4-85f4c390cef0@gmail.com>
Date:   Thu, 20 Apr 2023 15:35:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 1/6] regex.3: Fix subsection headings
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <32792f94-a74c-2956-1ae0-4538d27f1e5a@gmail.com>
 <zkv5wxvyqzmmo44yp7pnhpjwgc7z6kt3m3335sigkk73pvvw32@udv556ayshi4>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <zkv5wxvyqzmmo44yp7pnhpjwgc7z6kt3m3335sigkk73pvvw32@udv556ayshi4>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WoAQXqIceGbeQkS7xIZ4Udtc"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------WoAQXqIceGbeQkS7xIZ4Udtc
Content-Type: multipart/mixed; boundary="------------UXNiVobd9BdF1t0w7f4X0W5g";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <11c230de-265f-fe26-1bd4-85f4c390cef0@gmail.com>
Subject: Re: [PATCH v4 1/6] regex.3: Fix subsection headings
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <32792f94-a74c-2956-1ae0-4538d27f1e5a@gmail.com>
 <zkv5wxvyqzmmo44yp7pnhpjwgc7z6kt3m3335sigkk73pvvw32@udv556ayshi4>
In-Reply-To: <zkv5wxvyqzmmo44yp7pnhpjwgc7z6kt3m3335sigkk73pvvw32@udv556ayshi4>

--------------UXNiVobd9BdF1t0w7f4X0W5g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 15:24, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Thu, Apr 20, 2023 at 03:13:54PM +0200, Alejandro Colomar wrote:
>> On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
>>> @@ -159,7 +159,7 @@ or
>>>  .B REG_NEWLINE
>>>  processing.
>>>  This flag is a BSD extension, not present in POSIX.
>>> -.SS Byte offsets
>>> +.SS Match offsets
>> I think it might be a bit clearer as "Subexpression match offsets" or
>> something like that?  What do you think?
> Nah; in a significant amount of scenarios you don't care about
> subexpressions at all, and the one thing you're guaranteed to get is,
> well, the non-subexpression match.
> Saying "Subexpression match offsets" to mean "Match offsets, including
> of subexpressions" is more confusing, and which offsets are returned is=

> explained in running text.

Ahh, sorry; I was myself confused.  I thought the section was only about
subexpressions, which is why I found confusing that the title was not
more explicit.  Being about the main match + subexp, your title is better=
=2E

I'll apply this patch in a moment, after I push my SYNOPSIS patch, based
on your 2/6, since I found there are 2 places where _Nullable should go,
not one.

Best,
Alex

>=20
> Best,

P.S.: That comma without continuation feels very awkward to me :)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------UXNiVobd9BdF1t0w7f4X0W5g--

--------------WoAQXqIceGbeQkS7xIZ4Udtc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBP4kACgkQnowa+77/
2zKvRQ/+PX99iWcIJT7n0FtG3ntSr9+omhVMHLSq4CkYiLjxh0R8IDxtqPImtExm
Z6FR/OVKSeUAWxnvkwnHTqai+0DSQCjz3lgCyjwagkopdj2/+K5jYlVipAITk8SJ
mvUe5JV+bYQWoOYoIdGK4gDa3QKvIq+1F//EsNlTFIrNdXvoUKpErOmQ9Qk8slWI
swKT4MmJqtqQS4lzGTML6/po4ZLz7TVQFqbHEybd7ulzY0WzMOddNx3dYV4QvgI3
9iQq7xw/ApwVMcX1kHGl0pQRbPurBu7IERCrL6nXVxB103QPXSgHHOFHVOlrwdMM
qx+jAFvcrZBUBy09l7ATeEr21MJU2TyiXat086WGLM/sQOhyVXuUmKYVdxeP1DYv
HH259bhlrp41G+PxNcbSzeBiprD9xTfWxHqRiI3hyiN5XO5bvpHcF1lOZk3pIQEs
9O6qEl61cqL4pgJpCVFim610k1bcDhLp3eKlYZjD3Lz44lF79g9zQcdRCfY13iGt
aH3TywLtamPlC+sgtB29T+0xPnm46GHQxRGKImoypAYftciydMHx+At9Er03XnSa
LClVziXsud8eLKDbgPOqCgOIU9tESDyGelKm2jP3NZJOv6tViEJWOuGnauBq6t0f
whd9Krwjo/6tzwLAwJJ9VNANcLzLMvbTFC/a7nIYUf15Gs9t7lg=
=WU+L
-----END PGP SIGNATURE-----

--------------WoAQXqIceGbeQkS7xIZ4Udtc--
