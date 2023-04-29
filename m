Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DB816F2732
	for <lists+linux-man@lfdr.de>; Sun, 30 Apr 2023 01:53:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231192AbjD2Xxb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Apr 2023 19:53:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjD2Xxa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Apr 2023 19:53:30 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09A5319AA
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 16:53:29 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f1958d3a53so11218575e9.0
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 16:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682812407; x=1685404407;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7MqLs1MBHKrU59Mpo8Y5JSdgJzwA2Xe1D9F14YRlrwk=;
        b=jDMYeff0tUkbA/oVAL78vue8/E/b7fR+KnKJfS2uzXJtI2j15bsJpci9AaUpX/WF1R
         m2x26WP338gY/Vhe5zpdVmECOA2NNCWFTvePuHNDEyJ0aN1Umz81VAny5lOZrpCTNwy2
         xaaD6TIoLUwEceEriAvLOyOf6BOncMCvfV8Hp4S6Aq0DWK/R4cLqAQN8P3i81/FLzZ3s
         hDu4jKbbdAsKKq/+i87ABtOGEQvmf4HS0ogP6Tnn29JfRsbkEaxWwJ6bqOZ1/aspW/Aw
         PS4yqhae+mFDizc2XV7bXd5sQADCj5FckedSyQ/s6g1Nf7yGh0TJ3etLDXMGk3xf79mp
         atNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682812407; x=1685404407;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7MqLs1MBHKrU59Mpo8Y5JSdgJzwA2Xe1D9F14YRlrwk=;
        b=REYHqYkvUNRCYWW3MPSZhQwd4WYlOgguZMpnEk5G3PxcKjuSOnn7IHTbclQZbQMYhP
         sFPA871hcXtEp8qOVjQ+cpQYjuQMwC39b5YEaWyg7NgwottL0aJPsnxpFWrJGqYWfpEu
         6mEgv99VtIOScXS1o8kwx3jfyDLFgUCYEpnd44xTRa0TNmByeWLQrRDAxbh2QjcSaZ3e
         c2oKtYFBv05TdlWB7FFYTfjAU3AvIVXma2XwCA7MgxIAcLB6DdGMCw5mbr1JXu0P9A9n
         Yw82yLRMNgMjGZGsDw2VgoK4R6GqSOAHz+zA9jFIi2NPR73JA0h68uB/ixCEMtFWI5Cd
         /EZQ==
X-Gm-Message-State: AC+VfDz9x+jCVMEA66KEOr/t6RspT1dIwvSv7VDhBQ5C2W7KGaXhmGkd
        9/g+clhvuKwCMoDcQL6Dag0=
X-Google-Smtp-Source: ACHHUZ72k05Bp6qJ6dGxtZSK341I8yUJQDJp+Os2OZmLGv14TtRNcxAWT33fSegr9DXKmoUrafzeXA==
X-Received: by 2002:a1c:7910:0:b0:3ed:276d:81a4 with SMTP id l16-20020a1c7910000000b003ed276d81a4mr6882495wme.32.1682812407357;
        Sat, 29 Apr 2023 16:53:27 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d3-20020a05600c3ac300b003f19b3d89e9sm22084277wms.33.2023.04.29.16.53.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Apr 2023 16:53:26 -0700 (PDT)
Message-ID: <28bdfa4d-7fd6-a785-4d51-fc988193c25a@gmail.com>
Date:   Sun, 30 Apr 2023 01:53:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] uri.7: ffix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
References: <20230429194642.174362-1-alx@kernel.org>
 <20230429230747.xw3ym6rzaiypkq6q@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230429230747.xw3ym6rzaiypkq6q@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EeNz070jURPef7SSTJqOH69n"
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------EeNz070jURPef7SSTJqOH69n
Content-Type: multipart/mixed; boundary="------------ohpAqPYRUeGfiGNsN0QE82K4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Message-ID: <28bdfa4d-7fd6-a785-4d51-fc988193c25a@gmail.com>
Subject: Re: [PATCH] uri.7: ffix
References: <20230429194642.174362-1-alx@kernel.org>
 <20230429230747.xw3ym6rzaiypkq6q@illithid>
In-Reply-To: <20230429230747.xw3ym6rzaiypkq6q@illithid>

--------------ohpAqPYRUeGfiGNsN0QE82K4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 4/30/23 01:07, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-04-29T21:46:43+0200, Alejandro Colomar wrote:
>> Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
>> Signed-off-by: Alejandro Colomar <alx@kernel.org>
>> ---
>>  man7/uri.7 | 51 ++++++++++++++++++++++++++++++++-------------------
>>  1 file changed, 32 insertions(+), 19 deletions(-)
>=20
> Looks okay to me.  Glad to see deprecated things going away.
>=20
> You might include the equals sign within the (double-quoted) `SY`
> argument so that any indented lines align _after_ the equals sign rathe=
r
> than under it, but that's a cosmetic detail and I don't know how it
> comports with your other style conventions for man-pages(7).
>=20
> Do you prefer
>=20
> scheme =3D "http" | "ftp" | "gopher" | "mailto" | "news" | "telnet" |
>          "file" | "man" | "info" | "whatis" | "ldap" | "wais" | ...

I certainly prefer this; the reason I didn't put it into .SY was the
boldness of '=3D', but I may wrokaround that somehow...  Last resort, I
could use \f[R].

How are you doing with the regression?  Were you able to notice it in
the second set of PDFs?

BTW, I was going to ask you related to another warning I saw: What are
\f[C] and \f[CW]?

Cheers,
Alex

>=20
> or
>=20
> scheme =3D "http" | "ftp" | "gopher" | "mailto" | "news" | "telnet" |
>        "file" | "man" | "info" | "whatis" | "ldap" | "wais" | ...
>=20
> ?
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ohpAqPYRUeGfiGNsN0QE82K4--

--------------EeNz070jURPef7SSTJqOH69n
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRNre4ACgkQnowa+77/
2zLaew//bdqpaaeYPkWTwIeAqkhOfqUnMgnea3cVE6EtIJfIUuyc1fIWi3lVlVbk
kJVWLsaB633LZev+c0aXhglwjYDFVckDw0Mn0QAlLTeRIAmd/zEpGUiUKAaE2tWU
JEhUBWHH6A8NmnhOYy5RLfQxjhGzrKTYVZ5Dkdea3fDT0xLixfoTRe1AVJCcG1Tu
8R/NZmMxFZ8pr12+C02ZBoIuIFkhP5ZSfgb4sNejBGz9USd7rDZFHcGW+p8L7zoN
wCBo2rzhp2581nT1rK+ybRriQYF5TZpNNWSeVKq7UPDbuVe/OjruOYmTn5XAiokS
xLBlTyfPv5NTw5JiaFajMin0oCTCgFOcvNy5Wf2Lv9HNBPrOh7kM1sSdEzagjqd0
OFETq8ynTxf6FVNhQwZTWvkp3W+U68JOqe8OPxmQagQKLmMll+VBKpODEY/ypEMd
dudmhGMBe9wkiSB5nkhSSl8CAMPCajQEx6U+L1xNIvOO5WNJd48CZDbC6MZia859
5ljRHxek8ImrkR6axakOAiPiccg8NAWPNE8oIjC3iXHKltsUsZqTpjN4+/MWE+Dj
q7EUtGEaOSIleuP2dNMT7Qah3ThQol1oreyziWEcRY3RoC9o4wikzwKb3QwZQrJl
KgPWLLvaQZXhrekSlT70APYvh3Wdqp7uuO/BmIzTYtoo2JiSjb8=
=13Ub
-----END PGP SIGNATURE-----

--------------EeNz070jURPef7SSTJqOH69n--
