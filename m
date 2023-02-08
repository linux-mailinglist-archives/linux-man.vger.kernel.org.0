Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 393B468ED6D
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 12:00:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjBHK7V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 05:59:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjBHK7U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 05:59:20 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E9C1BD0
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 02:59:19 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id bg5-20020a05600c3c8500b003e00c739ce4so1148389wmb.5
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 02:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ruWVk0eMuc1RoFtHPpSosF0E5JQp0/Mt29Cgh88gqXY=;
        b=PomGLNh1l85omyR9mNEs3bCLYny7NWW0MMdoQsmucGvxcqKbAFzNpT9fgmU08zXOhI
         9zYN3YjRrpSboUVolDqfgXThxzfMcgH1tfrSzJtoqYxvHdbQ8i2s9+ZACFpFttsyu8JO
         Vj3ub5XNSb6Ti8SU6RDZ3FGqiIND4AIoHSVRM2e8MhVgR69T2f6jDI/TmQs/g7/fuijN
         BO8q+xCO2uWyMEuNKzQpruFBU/SyGF9W1SAQ7n9K8l4YvtSBCxXeUYwycZ09QMuiBo92
         uQAU7ySZ4VWbyFlDG63dK5pXvqKKaVhOCwOrbSj7CVwSUKqFBeq5z/7clu/r1Q8czYKb
         mUpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ruWVk0eMuc1RoFtHPpSosF0E5JQp0/Mt29Cgh88gqXY=;
        b=GtMTuXXNlOdvkn2w2/yQI0gLtDoZsKOUfg2GUoGT4rb2drGSk+oMjNzYJYIv9ZYxfi
         VAcCHUwHNqvY9adjhk05s6VIfEmumwEuT/9NgGdGiP9gwMfPfXkE8OothFrDh6f9eHd2
         19rk4Q7V5AOQZWUN/tVMaNdD1JeCFI39WXh6Wl90EgjD2kvER+HLaSGDg9E4JXzbn7ek
         wJojKMcKrpsW0gXClULJOOpgyyZcdRnhc+lywlAM5w2uMGHIyDikVyMvZUlVAxjFFZJ0
         bShBk6G3xpqMvJS56xgU4qHOc/6oFu2RoaMPt8e9oGv9kJuhK0Zo6CJTr1mAtKi/bBOb
         imjg==
X-Gm-Message-State: AO0yUKUKfAQKtRor8LTCyydqCUerWBSS0m1nRtI7x7da5uLMMX9f9LMu
        ug57tKNHSdMvXCvEfTYKEXM=
X-Google-Smtp-Source: AK7set/0mviYkGIjYY1oEBncHT0DKmaZUMtnQBjkeJDu/bwkHyqhr57xW10LOrvGqLDAbeofXCW/9Q==
X-Received: by 2002:a05:600c:16d6:b0:3db:14d0:65be with SMTP id l22-20020a05600c16d600b003db14d065bemr6092088wmn.34.1675853957902;
        Wed, 08 Feb 2023 02:59:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id fc9-20020a05600c524900b003da28dfdedcsm1804750wmb.5.2023.02.08.02.59.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 02:59:17 -0800 (PST)
Message-ID: <155f2766-394d-8b89-71b0-a7021701d818@gmail.com>
Date:   Wed, 8 Feb 2023 11:59:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
 <5683f0e0-f561-d7e8-8727-c1453178bba0@gmail.com>
 <0ff16070-522a-d943-f7b5-3696f002c520@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0ff16070-522a-d943-f7b5-3696f002c520@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NFe56Lj6faAtksYYJQTa1QfB"
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
--------------NFe56Lj6faAtksYYJQTa1QfB
Content-Type: multipart/mixed; boundary="------------t5QJLaXAFe3tAHtfqL93sEin";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <155f2766-394d-8b89-71b0-a7021701d818@gmail.com>
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
References: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
 <5683f0e0-f561-d7e8-8727-c1453178bba0@gmail.com>
 <0ff16070-522a-d943-f7b5-3696f002c520@Shaw.ca>
In-Reply-To: <0ff16070-522a-d943-f7b5-3696f002c520@Shaw.ca>

--------------t5QJLaXAFe3tAHtfqL93sEin
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 04:58, Brian Inglis wrote:
> Hi Alex,
>=20
> TL;DR: They are bit/byte unit prefixes kibi..., ... but abstract value =
suffix=20
> symbols, which is how I think of them, and mainly how we use them. Perh=
aps we=20
> should just call them all multiples or symbosl, as we only sometimes(/r=
arely?)=20
> use them as unit prefixes (and seldom written out, only to explain the =
weird Xi=20
> notation)? Feel free to change the titles and log messages as you see f=
it.

Indeed, I had doubts about using them as suffixes because that's incorrec=
t according to the SI, but it makes sense and improves documentation, so =
I'm fine with the use as suffixes now.  However, I'm still concerned with=
 calling them suffixes.  How about multipliers?  Does it make sense to yo=
u?

>=20
> [BT;DT: Many discussions about units over the decades, including variou=
s=20
> *industry* conventions about "accepted" units, values, and conversion f=
actors,=20
> invariant regardless of SI and CODATA.
>=20
> ISO/BIPM etc. uses SI to mean decimal *metric* unit prefixes (and notes=
 that SI=20
> does not support non-physical units of information) and IEC to mean bin=
ary unit=20
> prefixes for bits, bytes, and also allows Hertz so far. See refs from:
>=20
> https://en.wikipedia.org/wiki/Binary_prefix#cite_note-bipm-book-91
>=20
> Bureau International des Poids et Mesures. (2006). "=C2=A73.1 SI prefix=
es" (PDF). The=20
> International System of Units (SI) (in French and English) (8th ed.). P=
aris:=20
> STEDI Media. p. 127. ISBN 978-92-822-2213-3. Archived (PDF) from the or=
iginal on=20
> 2006-08-13. Retrieved 2007-02-25. [Side note:] These SI prefixes refer =
strictly=20
> to powers of 10. They should not be used to indicate powers of 2 (for e=
xample,=20
> one kilobit represents 1000 bits and not 1024 bits). The IEC has adopte=
d=20
> prefixes for binary powers in the international standard IEC 60027-2: 2=
005,=20
> third edition, Letter symbols to be used in electrical technology =E2=80=
=93 Part 2:=20
> Telecommunications and electronics. The names and symbols for the prefi=
xes=20
> corresponding to 2^10, 2^20, 2^30, 2^40, 2^50, and 2^60 are, respective=
ly: kibi,=20
> Ki; mebi, Mi; gibi, Gi; tebi, Ti; pebi, Pi; and exbi, Ei. Thus, for exa=
mple, one=20
> kibibyte would be written: 1 KiB =3D 210 B =3D 1024 B, where B denotes =
a byte.=20
> Although these prefixes are *not part of the SI*, they should be used i=
n the=20
> field of information technology to avoid the incorrect usage of the SI =
prefixes.
>=20
> BIPM SI Brochure 2022 edition (adding ronna/ronta, quetta/quecto, etc.)=
 English=20
> text only p.143 side note (the only uses of "bit" in the document; "byt=
e" is not=20
> used; "information" and "word" are used only in the literate senses):
>=20
> https://www.bipm.org/documents/20126/41483022/SI-Brochure-9-EN.pdf#page=
=3D29
>=20
> "The SI prefixes refer
> strictly to powers of 10.
> They should not be used to
> indicate powers of 2
> (for example, one kilobit
> represents 1000 bits and
> not 1024 bits). The names
> and symbols for prefixes to
> be used with powers of 2
> are recommended as
> follows:
> kibi Ki 2^10
> mebi Mi 2^20
> gibi Gi 2^30
> tebi Ti 2^40
> pebi Pi 2^50
> exbi Ei 2^60
> zebi Zi 2^70
> yobi Yi 2^80"
>=20
> ...no
> robi Ri 2^90
> qubi Qi 2^100
> yet! ;^> ]

Thanks.  It now makes sense.  Looks like the SI talks about them, but onl=
y takes them as defined by IEC, and doesn't incorporate them as their own=
=2E  So, using IEC seems correct (as SI does itself).

Cheers,

Alex

BTW, this was one of the few patches that I received inline :/

>=20
> On 2023-02-07 16:44, Alejandro Colomar wrote:
>> Hi Brian,
>>
>> The subject is not correct, IMO.  The SI also defines the Ki, Mi, ... =
prefixes for binary multipliers.
>> Also, they are prefixes, not suffixes.
>>
>> Cheers,
>>
>> Alex
>>
>> On 2/7/23 21:11, Brian Inglis wrote:
>>> ---
>>>   man2/shmget.2 | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/man2/shmget.2 b/man2/shmget.2
>>> index cdb2d3bee4b5..4bc18bedf3a9 100644
>>> --- a/man2/shmget.2
>>> +++ b/man2/shmget.2
>>> @@ -354,7 +354,7 @@ for a discussion of why this default value (rathe=
r than
>>>   is used.
>>>   .IP
>>>   From Linux 2.2 up to Linux 3.15, the default value of
>>> -this limit was 0x2000000 (32\ MB).
>>> +this limit was 0x2000000 (32\ MiB).
>>>   .IP
>>>   Because it is not possible to map just part of a shared memory segm=
ent,
>>>   the amount of virtual memory places another limit on the maximum si=
ze of a
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------t5QJLaXAFe3tAHtfqL93sEin--

--------------NFe56Lj6faAtksYYJQTa1QfB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPjgIQACgkQnowa+77/
2zILgRAAhGVQ3f4kVjX5fcLwYuKyNXA7SLViWkTWT/D7V6zsk/6HJ5hRhOcspFp5
jcgB13IxHonTWo4pIg6mWHFOwZ83tWYxhCl20zZznVJFJdUz81IvaWJhXOjxQwmx
mFLbKmi74x4dy7lU0cxaMvW2cQ+kY7pCrToH6Mx8s3u+4VtE8Fzde135qqayQ0Hm
iP+VrxRvMwWTdpy0U1AdHInMvRmgitx9/pkZjtprCIVlqPb3xpWWz60yDR0iVKU6
0Wrjnkg2Egg2JLicFwd+xqG3K5vP84V6i3A/oZJLeOoKQUpwUAiZs6HxVbf4YKmR
MEZn5f8WS88bpmG/H3B6H4omnwS2iQqFO0SQ01bA0JBhiJVAtmTLcKXQEmAVkg50
LvpdknKo6JXLjFmHrMGfEA+GxpjHpsdYameJU+73M43tdGOK5cDFEVU1O83DyI3v
uxZ79+ia0pbuXyIDxX7OPTwWclMtAUVx12cafJkhw5HphmIXN/WpmkCURDdIjJpE
GNzWpHrBzdQm9j0oSTxJxAPyXm81c0KIQQ6/vSw8vdoZuUchbGyR2LXdfeEUK/2r
g5tc2mBhg0wNX6ElHzAH5jOQl/uVSa4ooIobK0KscPDMC1KYxJoEZTGDc/drH1yw
3M7c/9oWX7hQBiuJ7DpQan8g4ghmYL6RAsoYj1jaMLU6q09Lbxk=
=d0Oq
-----END PGP SIGNATURE-----

--------------NFe56Lj6faAtksYYJQTa1QfB--
