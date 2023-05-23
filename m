Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C05770E96F
	for <lists+linux-man@lfdr.de>; Wed, 24 May 2023 01:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233141AbjEWXUt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 May 2023 19:20:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbjEWXUt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 May 2023 19:20:49 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1C8CE5
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 16:20:47 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-30959c0dfd6so76068f8f.3
        for <linux-man@vger.kernel.org>; Tue, 23 May 2023 16:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684884046; x=1687476046;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rosrfyptJCBU5QAatfMZldw13RV1KEU558n+s78vNPs=;
        b=T2VNX1Aaxz8L2Y6r83QQGJXmVvwwpELDhSDw6ZF//QC81vLZInLXHLVOe3pRVHqGvb
         isb1BRbciFUvnedCLkav/6UhWmL6iljzwo3sBoq5knC8q8tToT/IbAXLZMYJVDDokp2X
         LX8Lu9iUXMETVVfi/I0Ts5jSU5U8vBM/7BUC/CS8rblc7oBMqYc8SjHSgLq8rgfD1ZKX
         +LvVVG8IFtiINSx+SRiSEHh31HBtpz0etaWvf1TPsVbG/zfT+ikrkaQf9NTVA7eIlkeX
         5wi+PtGsvfRNeefRDmDOE7r+IA8nvjdOsOha4H7EhwVcHyEfB4X2TlabnHdJq7XllYDN
         20Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684884046; x=1687476046;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rosrfyptJCBU5QAatfMZldw13RV1KEU558n+s78vNPs=;
        b=Fj+VnbDqlJdSUmdQS/q8pMtY827wsc6EsZGAeNHz1zknAOsdErRlAVtcoRmOEVVtzI
         zC7elBj8xZuvYTjRvUBBmCKzQZLjM4w1yE2u4qhQrLDRCiCdEuNgnm53RO5cTN7nOLPk
         OjUWdAOU4lH0P/P/5i0Ir6GpTeKqvcKIKkXQ4Vrv8p3r0WZ9JylIUXi40FUnvHr1Hb/k
         L8OzJucXd++oQhqxbeyFzrprnG6k42yZMc+l3zYy/traLH94MsyOhK+XI93bde9DMyqj
         F3yDYJ7wIwa+aoYr8jVeAA/s3kGBXhWXIDFpty/gmOIs0i35ZfE1xkbE4WtSe/+44k4k
         AnLA==
X-Gm-Message-State: AC+VfDyxNgMHckrRY2Bw+4ux+KuZ8xI7af8eVo6zPMfu5zR4r9LTXptM
        2NUDP5h+S7ESczMFynTpQS/cIlSiaPE=
X-Google-Smtp-Source: ACHHUZ4gF4gt5hnIops11bpMZZ++7HoFKN5+NK6SdXB26/9M/tJt1GFiovwIAQpziCB8XPUk2gkrrg==
X-Received: by 2002:a5d:49d2:0:b0:307:a7c6:7875 with SMTP id t18-20020a5d49d2000000b00307a7c67875mr10428854wrs.56.1684884046140;
        Tue, 23 May 2023 16:20:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p17-20020a5d4e11000000b003063772a55bsm12391660wrt.61.2023.05.23.16.20.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 16:20:45 -0700 (PDT)
Message-ID: <e8a7ed14-26d3-327d-fea4-57a505cecfb0@gmail.com>
Date:   Wed, 24 May 2023 01:20:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] putenv.3: originated in SysVr2; in 4.3BSD-Reno; fixed on
 modern systems
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <qpcje3s62iktwkacbn6knkes742z7zxksjwhq7dgfcmfetoivq@wevyfyxir5md>
 <389e9350-cb85-9a21-4a06-56344b7057e8@gmail.com>
 <5qegumqc3s7pvtrwfffyajhaxmv76kmhubz4bawcku3hap7dso@apgctax4wzln>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5qegumqc3s7pvtrwfffyajhaxmv76kmhubz4bawcku3hap7dso@apgctax4wzln>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dCjQMmHQr1tNfXcdmLq1A0m9"
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
--------------dCjQMmHQr1tNfXcdmLq1A0m9
Content-Type: multipart/mixed; boundary="------------LKG0IuyFDkvnVdVUr2v296q3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <e8a7ed14-26d3-327d-fea4-57a505cecfb0@gmail.com>
Subject: Re: [PATCH] putenv.3: originated in SysVr2; in 4.3BSD-Reno; fixed on
 modern systems
References: <qpcje3s62iktwkacbn6knkes742z7zxksjwhq7dgfcmfetoivq@wevyfyxir5md>
 <389e9350-cb85-9a21-4a06-56344b7057e8@gmail.com>
 <5qegumqc3s7pvtrwfffyajhaxmv76kmhubz4bawcku3hap7dso@apgctax4wzln>
In-Reply-To: <5qegumqc3s7pvtrwfffyajhaxmv76kmhubz4bawcku3hap7dso@apgctax4wzln>

--------------LKG0IuyFDkvnVdVUr2v296q3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 5/23/23 22:58, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, May 23, 2023 at 10:20:07PM +0200, Alejandro Colomar wrote:
>> On 5/23/23 22:17, =D0=BD=D0=B0=D0=B1 wrote:
>>> @@ -119,7 +119,8 @@ .SH HISTORY
>>>  On the one hand this causes a memory leak, and on the other hand
>>>  it violates SUSv2.
>>>  .PP
>>> -The 4.4BSD version, like glibc 2.0, uses a copy.
>>> +The 4.3BSD-Reno version, like glibc 2.0, uses a copy;
>> Maybe we should say s/uses/used/?
> 4.3BSD-Reno is a single release and hence a single version,
> and nothing's changed about it, so it still "is".
>=20
> We could say "The BSD used" but we have hard versions, so.
>=20
> The same holds for the first long line in HISTORY:
>   The putenv() function is not required to be reentrant, and the one in=

>   glibc 2.0 is not, but the glibc 2.1 version is.
> the singular version which was part of the glibc 2.0 release(s) hasn't
> changed in glibc 2.0, and glibc 2.0 "is" (but yeah, glibc "was").
>=20
> Present tense also appears to be a prevalent style globally:
>   setuid(2) says "Not quite compatible with the 4.4BSD call, which sets=

>                   all of the real, saved, and effective user IDs."
>   setjmp(3) says "In 4.3BSD it will, and there is a function _setjmp()
>                   that will not."

Makes sense.  I applied both patches.  And put your signature in
this one.

BTW:

$ git log | grep nabijacz | sort | uniq
    Cc: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
    Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
    Reported-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
    Reported-by: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
    Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczlewel=
i.xyz>
Author: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
Author: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>


Would you add yourself to .mailmap with your preferred name?  Or
do you prefer to keep the ambiguity maybe?  :-)

Cheers,
Alex

>=20
> Best,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------LKG0IuyFDkvnVdVUr2v296q3--

--------------dCjQMmHQr1tNfXcdmLq1A0m9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRtSkwACgkQnowa+77/
2zJ2Yg//Yy0YqRelag/uU/Uw2odbFCikyQSAxz+ciV500PoZn+z15S/g1xESJw46
SAmLRBzh9dNCTQWWOMyUBy1ySjhFAffQjDQntMEBT8bne/gYf4BDRYxkInDMdqnw
u8F7uo1deBaM/PtUCRfv0ALiXkVpPmAqa031PLuPs2C6qN0rTcjWLVDErcQMFURj
W1LAsco0iVkNDAMoMtCnL52GYc0enOh/EHmJ5mohlR3zVw4BPJRN+dd0u3uzEQ7n
vaORaziVUaURF6WBocJcC2MsCAtXGeiaFxfU97xE+MSxxESJkdfSixSba8UVRN58
j2AIQCOwy5JWGRINmhyd3ISi4a4rPViHC5/4Sr6qxcI9dgLvZw89j8XxDcBhUjf7
wIihXakbZJdyVoTcSGwsrpVf57Pc/isC1gA5e35YY127+uwCIvA+6HrVjegQzlEE
+xQPsWNMDkNgJ1gwhZRUcbqF4VPCW6i7AxhhzSyzG2Atv9eTImjidC9iBz0ZhY19
GYKRrUVvnsZ7b5BtKNjO6hqDCwxMo7hG5yD8OjuA0s1/IW1JinfA2P2lYJW2GVIz
xIlfBi9yGYDQPrD9o28ttjjYUYdZZn1HmwyY4S2DBhRcfp16kPLeiBxAWD9ymY8G
8vcmYKLfMQo4DsTnofkN4WViEVM2iP4TSvUCtYdEqTD2U/uzees=
=3h8H
-----END PGP SIGNATURE-----

--------------dCjQMmHQr1tNfXcdmLq1A0m9--
