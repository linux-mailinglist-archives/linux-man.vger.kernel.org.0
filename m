Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C55EE6E6DA8
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 22:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232608AbjDRUsR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 16:48:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232391AbjDRUsQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 16:48:16 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40971100
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 13:48:15 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f178da21b5so7561875e9.3
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 13:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681850894; x=1684442894;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kh0zj8hzMH9RfMrlKCGSCKHBKllIyUpkjUfOFQElxmA=;
        b=AB22+bgBxMZ5SDDQ3QjXtybUKV6MQyfLvkRpijBD4RzjPF4DidAijeOdhO9S0MJLU6
         xpGeDf6a+AFnJG9VzH9+FIvplEsjv7Vf3GJLtAzZ74LRjzs9/nB9nPb1T98GSKuvDWom
         Qz2VqiDBgrCBSH4DCQqA/iz6WZWrJTBCXnoPuhNZXBcNS8Vr1cTUwHxjR/Uw/Zd9k4VC
         6/JaPm5VZis6+uLM9SxurtgULb7B/R4/1lAAOWKomt2Sg/gso39QoOb+GYViJrWZvR21
         FSgXYTcqrthg0dupVVIqnyec/hW9J590iflkIKwzerSbLY4rZ6OhZWUtsXh8/6N7qtHK
         M5Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681850894; x=1684442894;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kh0zj8hzMH9RfMrlKCGSCKHBKllIyUpkjUfOFQElxmA=;
        b=Rxj/VkvSghZFLaiRfoVyJdUroRRSdInwPZ3ZHzv4hH/wDRXkoHk3+vCz+jF7ARmPbh
         HvxLJTCA1utINGt53F9q+yjA423Qe4sOUUmrQ0uTg6spHcAEg3J51EhMmY1bAH8Pf24U
         k90Dwl4u3/0AM5gHlKRmG6ik9yDx+vV2UJdsMgSab9MDE0xuMOc4dlq6Qa1dGH+wiDcl
         FZzfLJxjot+ej9JCvqMCpJDMTkRmtDbpwbmgffkTqDcA9dfeYUHUKCYdGJ4Eo7vZWlAJ
         09C8Ho0iVXLa8kTwjf6G/iscjzq6G0ki6fCAjuhGr35XeciWNrRil9ktzqCQMpjommqC
         /Erg==
X-Gm-Message-State: AAQBX9foANXNa17L9UakzkXB2q6VrckPGxeWZOKcLbjKy7nol089yFeY
        BLjlLD32qDTNCUbDUnvJnetKQ9cmjJE=
X-Google-Smtp-Source: AKy350Y5t8DsbrE6nNz1f5Rih4PwjvAG/BZqNhFGqEJWzbj5cgYtkuukVkrTUEcph/dc6iiDisiREA==
X-Received: by 2002:a5d:6609:0:b0:2cf:ec6c:f253 with SMTP id n9-20020a5d6609000000b002cfec6cf253mr2787781wru.20.1681850893575;
        Tue, 18 Apr 2023 13:48:13 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i40-20020a05600c4b2800b003ee6aa4e6a9sm80468wmp.5.2023.04.18.13.48.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 13:48:12 -0700 (PDT)
Message-ID: <fe9666d9-a4af-84fb-e709-da5e812ee529@gmail.com>
Date:   Tue, 18 Apr 2023 22:48:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] man*/: ffix
To:     Guillem Jover <guillem@hadrons.org>,
        Lennart Jablonka <vol@ljabl.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230416231916.281037-1-guillem@hadrons.org>
 <20230416235126.vdbiab5p5jwty4ol@illithid>
 <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
 <20230417211030.tzxakddee7qehrcw@illithid>
 <12c2889f-7f05-8338-b758-5d9b83af536c@gmail.com> <ZD7UEaKv9Gvui9ib@beryllium>
Content-Language: en-US
Cc:     linux-man@vger.kernel.org
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZD7UEaKv9Gvui9ib@beryllium>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ToYDFCH08iMXuSwEoLIPACNt"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ToYDFCH08iMXuSwEoLIPACNt
Content-Type: multipart/mixed; boundary="------------0RMmHkDhzAte8jQjJHBlcJEm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Guillem Jover <guillem@hadrons.org>, Lennart Jablonka <vol@ljabl.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <fe9666d9-a4af-84fb-e709-da5e812ee529@gmail.com>
Subject: Re: [PATCH] man*/: ffix
References: <20230416231916.281037-1-guillem@hadrons.org>
 <20230416235126.vdbiab5p5jwty4ol@illithid>
 <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
 <20230417211030.tzxakddee7qehrcw@illithid>
 <12c2889f-7f05-8338-b758-5d9b83af536c@gmail.com> <ZD7UEaKv9Gvui9ib@beryllium>
In-Reply-To: <ZD7UEaKv9Gvui9ib@beryllium>

--------------0RMmHkDhzAte8jQjJHBlcJEm
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lennart, Branden, and Guillem,

On 4/18/23 19:32, Lennart Jablonka wrote:
> Quoth Alejandro Colomar:
>>>> What do standards say about formatting dates?
>>>
>>> Nothing that I know of.
>>>
>>>> Do they specify the character?
>>>
>>> Not that I know of.
>=20
> ISO 8601:2004 (not the newest revision, but the one I found), the=20
> standard defining the YYYY=E2=80=90MM=E2=80=90DD explicitly calls for a=
 =E2=80=9Chyphen,=E2=80=9D=20
> stating additionally:
>=20
>> In an environment where use is made of a character repertoire based on=
=20
>> ISO/IEC 646, =E2=80=9Chyphen=E2=80=9D and =E2=80=9Cminus=E2=80=9D are =
both mapped onto =E2=80=9Chyphen-minus=E2=80=9D.
>=20
> This is not the case here.  A hyphen is the character to use; that is, =

> an unescaped hyphen-minus in the input.

Agreed.  Let's use hyphen for dates.  :)

Thanks for checking ISO!

[...]

>>>> However, date(1) only accepts hyphen-minus, so it would be nice to u=
se
>>>> a compatible format, even if standards didn't mandate it.
>=20
> The standard mandates a hyphen.  A hyphen-minus is to be used where the=
=20
> date is to be interpreted as a string to be given to \fIdate\fP.

[...]

>> I'm not convinced, because dates are not prose.  Why should we use hyp=
hens
>> in dates formatted with standards-like formats?  I would agree in usin=
g
>> hyphens in dates if we spelled out dates unformatted, in plain English=
=2E
>> But if we use ISO-like or RFC-like formats, I think we should adhere t=
o
>> them completely.
>=20
> Great!  Exactly my opinion.  An RFC usually tells you to use ASCII, so =

> we should do that where applicable.  Luckily, we aren=E2=80=99t concern=
ed with=20
> RFCs here, but with ISO 8601.
>=20

Guillem, I'll apply your existing patch, and will remove manually the bit=
s
about hyphen-minus.  You don't need to resend.

If you know about places where the man pages use hyphen-minus in dates an=
d
would like to send a patch to remove the escape (so to produce a hyphen),=

I'd appreciate that.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0RMmHkDhzAte8jQjJHBlcJEm--

--------------ToYDFCH08iMXuSwEoLIPACNt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ/AgQACgkQnowa+77/
2zIt4A//TjMrBjv6v42ZANdxnno/40drKlaT5VwFhmZxK0rv4I8xpyRl8viptXbY
hiViymo0LMyewgmJgLnoSlVMxJaVEOSaH+BaXNgnXz78EBxenIYijUiAxuMSEb2G
6/7iKdF1FZjo5ZNniyF0EZzFJZjHmmmaP9v4HhHxbcVjsZ1Rav2inUSWOYQyJxPy
A3wEU/y0nqAebjCZq/ymqndHzaFlnsS5GpN+JBSRPNU8MpYHXOWDKwbch57MUYWZ
i+sOd50Kz0vM05EF4kxkLaqYrD/6cK144QhlfLYsBySKUBpH+vDFkF6JoA9VTGSp
A2L3LrMatWRIeTEpAUVbFz1FO9bojobNAPAZmd+gxrPTEhK8dHIGZgFJiCQAo3Xt
/TItg2tWDrxXxXCYm7dzBoFYNevHKS/O+8n+Vwnbuie5Q6c+rrtIRHq9hFKdWIhd
s+CHmife1kvbKoPF7TAnNCIaHhgV1Z0ypqtXHhK2yV8U+6BTj4WLu9Hwzcics984
4x3rwSG4pMuhouansuClS2gb/JB5oW/ETPqD2L4+TY3ckGKln0J6bpBfAuz1sRZp
jHxQVCzENAGOYaAvdux1vllsU8fgGFAbRaAe1LGHIXG6B22YYdTTAnUBOe9crFmz
syLE0GFW5HHk1KYtuE9d0ZMG2kiYHXpo46cqptpDvi684HThMe4=
=oLsz
-----END PGP SIGNATURE-----

--------------ToYDFCH08iMXuSwEoLIPACNt--
