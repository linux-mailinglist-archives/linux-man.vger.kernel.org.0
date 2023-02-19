Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51DE569C29D
	for <lists+linux-man@lfdr.de>; Sun, 19 Feb 2023 22:10:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231638AbjBSVKz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Feb 2023 16:10:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231637AbjBSVKz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Feb 2023 16:10:55 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0181319684
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 13:10:53 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id p8so966737wmq.4
        for <linux-man@vger.kernel.org>; Sun, 19 Feb 2023 13:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=reyzYJrY7Eui+S+2Li9nvIJOC2uy/YmbKSzwHHTvyHM=;
        b=E9Kvqg6y5qBipfG16hPaTQm0xohaLoyCdw2rowMgmZf3WctUJIDwXplFi1n4yQqm+1
         aoLnJYOYUyo2q56SnGGLJ/csQ0PijXCcpSC2leI2n7KAx8sL+1ORzsX4sABMofMcRd/l
         NHd+yrWY/e0aMY512GrzXNxcvlJd8jLTVKMmbXCJY8rgX386PO4+cp0iS8SNbZt0uuEe
         DCedfWvJ4kVU22/RGHjMyLUjj/HHvew/+DJTVBJ5TiCKP7NH7hdxdVG6z5C83lA2tn30
         7wTRD3iH158m9HitZ80WXkEsZ1bAb0icQr8gZjfs1zSjacLTGDURZt7Bw3fDXhnUJR3A
         RpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=reyzYJrY7Eui+S+2Li9nvIJOC2uy/YmbKSzwHHTvyHM=;
        b=GR25s2kmH2K2PzWPjy99rQMYMG8p3qYoOcPh1P8lqgmJYrW5Uk1dtvhO3+MyeqDR1a
         n4i1B92j1tRNjo6dWsyoE8z7qUjdMHAT+h40JFGpbnwMowV3HQE9ZnvEOvAiM19S+ROT
         Ikq34nbqiVF/0JIoqUO0xuIaa7S7GuJ04xDsamckNfoIIyinIUm4W9pujIEr7MuEjepa
         NTRYPNMKN/Xjw4PA3ShKYnqh6w6ZGJ4fuqK5WN3IevkWt9rx3a9nsFUOwr8GI08grCMi
         mK/5abW7yBRArJEk7TmhHSCg0hvQ03eBmxZ2nRo1N+CZyIZO+fqUVoLi4ZYXgaQcvl32
         ItcQ==
X-Gm-Message-State: AO0yUKWyHQVt/T/15O/J8/0aBWCaxiMHrMIraSrIlUoPtXbVE0pzTd8B
        EvwNAFe3yq02R/3cAEdHiTY=
X-Google-Smtp-Source: AK7set9lqygMDXfWVjvac78+shrmQEzmv01jH2r3SZX/xunREXg48LjWQ0h7x0lWRobpTRiyN35IcQ==
X-Received: by 2002:a05:600c:30ca:b0:3dc:5009:bc74 with SMTP id h10-20020a05600c30ca00b003dc5009bc74mr5733139wmn.7.1676841052319;
        Sun, 19 Feb 2023 13:10:52 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l33-20020a05600c1d2100b003db012d49b7sm9683072wms.2.2023.02.19.13.10.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Feb 2023 13:10:51 -0800 (PST)
Message-ID: <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
Date:   Sun, 19 Feb 2023 22:10:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3ePMJ8TQCN3UbXtSLsgUsdwY"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------3ePMJ8TQCN3UbXtSLsgUsdwY
Content-Type: multipart/mixed; boundary="------------m02ewnVxu2YxjdoOpKdp3WaP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Brian Inglis <Brian.Inglis@shaw.ca>,
 Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com>
 <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
In-Reply-To: <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>

--------------m02ewnVxu2YxjdoOpKdp3WaP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On 2/17/23 15:05, Stefan Puiu wrote:
[...]

>>>> diff --git a/man2/add_key.2 b/man2/add_key.2
>>>> index 56fc6d198d21..215de20baeae 100644
>>>> --- a/man2/add_key.2
>>>> +++ b/man2/add_key.2
>>>> @@ -167,7 +167,7 @@ The size of the string (including the terminatin=
g null byte) specified in
>>>>  .I type
>>>>  or
>>>>  .I description
>>>> -exceeded the limit (32 bytes and 4096 bytes respectively).
>>>> +exceeded the limit (32 bytes and 4Ki bytes respectively).
>>>
>>> For what it's worth, I find 4096 much clearer over 4Ki (what is Ki
>>> anyway?). Ditto for 32768 / 32Ki etc. What are we trying to achieve?
>>
>> In this case, we should rather use 4\ KiB, which is standard.
>=20
> Maybe it is standard, but why is 4 KiB better / more suitable than 4096=
?

4 KiB is not that much better than 4096, since 4096 is easy to read.
For higher numbers such as 33554432, it becomes more important to use 32 =
KiB.
For consistency, using 4 KiB seems reasonable.

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------m02ewnVxu2YxjdoOpKdp3WaP--

--------------3ePMJ8TQCN3UbXtSLsgUsdwY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPykEwACgkQnowa+77/
2zKUORAAl3Q94PUktle4YeYhSHBvXbtvudDqXMEgMBgT0533biF8CoJ2wYYidbw/
6IUNaFz2hnGE1jJL7v3Jp2E4o87xXP9EaPa1sOnVtbyzTivAFi6WrnFrpjT20RLR
m4BrsdmEFIq3IBHII1HlDKD0s7zONzruZ36zyy4xYL9suIIt5U8nFvSQFJmIq5ez
i6Fr1oK8Qt44n8gG/2eZe0R54PMnWNq8Iwp7N4JfHT91m2vX2rY0ny5X6/9/8gxR
nUIYyjTQUk59RydE1+AiKi5khO0TWGRpsMQ1OsrvYtgHkwTDjNIyoXHk3RXixZDd
maa+IRN3Y+sTArAJPkxA6hS6aOhA09v/9/uNMef0+uchN4S/WUZ2tJjqQAi6dqHF
K2/fv++GrvsTlsYICb/rxvsTWEyi99sugbWDAfV8M2qD5pPRYGSFBLY/ekRVc2hA
PlxKBt/Oi5d65Cpi+iSXG75V4naLbW3hPL+21fqPZ//k/nbDf1MYWoi0sOniLdkz
iJzrqyxeIkoweiPmLFlZ1tQvOqDOHyMBxjBinw5F9vF72JyilF0X7b9RY0IyQiJK
/4LjJertXtGniXXKL1T9jUFDU+10KyfkwA5gCtEaqJ8V0PbSpTj8wRbJjHwQN05y
t9Mm8QzaGXGc6bIhHG8tN/exvqKdxKWS62tHG5FGnqkmqufN+UE=
=7Wmv
-----END PGP SIGNATURE-----

--------------3ePMJ8TQCN3UbXtSLsgUsdwY--
