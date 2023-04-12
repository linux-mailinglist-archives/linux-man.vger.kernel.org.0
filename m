Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B11A66E002D
	for <lists+linux-man@lfdr.de>; Wed, 12 Apr 2023 22:50:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbjDLUuB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 16:50:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbjDLUuA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 16:50:00 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3C2161A1
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 13:49:57 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id s2so8916596wra.7
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 13:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681332596; x=1683924596;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m1hwD1mRfNnWOEtYMf8ifG9aJdaDXbbaNu2eZbN2wiI=;
        b=QBXIXfqi3yynQQDCcifDPkZ0EXQ/Hv0v6G/NDtDf22XJS4Dlj3sHUj8G12g0gS4QFe
         DNXOPxVU815S2V+9YoS3jMM6vPzzFX5TwWbPLweALropRVU5CHc5UfhmfiyRx+LNg5Bs
         tx7e7/bl6sfp8zY5MPhx4trZDck71J0/n8/DLYtTo2qJBY42UqMG1mLnyV8qp6C4FpUj
         Zbu8WfMvVO+pdMHjKL8JeacWmsi5lpWB0FDcdt+jI0jiihjqw7NQikYv8oGpEh0htEis
         /Rl2uAma/thuAcd2HPH++y8vJn1fwgYbDesavvT5idvXx4vyWiV3XGL+hdd8MORVeEM0
         pfNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681332596; x=1683924596;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m1hwD1mRfNnWOEtYMf8ifG9aJdaDXbbaNu2eZbN2wiI=;
        b=DTQ/8Acq2VK5+Ogj78NRPU20u/bLehWq353XoAvqanhfuKqyHbIvzvsLv/9BJHVxcQ
         /JbGQ1Z5ZVb81BxE13N6y3yns84QpqpZotOWGl4Y7D7qlfKF27wrUJr1OTx7vHcw/WsO
         BTYYGgNibCm6Lta1GZIqTh5wQspgUsymnDQZ4DmhvQ9bxmRZj3hpRLjo6lcHTR0YIMGW
         cIZL6lC145J4lxpexdYSyUaAtBvT248Jwr3g8ic+OrxnjEnp5ZPwzlBT/KGp8lC1NmBi
         9sRpvb6cOiELHaaYsgoj8H3k6ccRQ/Eyx2txeI9uwRAvb2+Dm7TgIEI9d4JIHiEgPiSr
         E/+Q==
X-Gm-Message-State: AAQBX9dY7CYsVEqOM/6r1TnUxPKIIb485Rb6sqiIz4JhSNnTKC7AHj2T
        63iDjpEHBQZ9yVnhdxvZ9y5Gl+QeE9M=
X-Google-Smtp-Source: AKy350ZZBGzWQD5rVNK9F8XN35mdPpsxqhaFjVhOUKL8mbFMpoVzoPe5sTl767d3qbALywZzUheQtA==
X-Received: by 2002:adf:dfcc:0:b0:2ef:af46:1278 with SMTP id q12-20020adfdfcc000000b002efaf461278mr12413512wrn.10.1681332596032;
        Wed, 12 Apr 2023 13:49:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k9-20020a5d4289000000b002d21379bcabsm17997989wrq.110.2023.04.12.13.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 13:49:55 -0700 (PDT)
Message-ID: <3e4470d2-8839-df5d-0600-d578284adf56@gmail.com>
Date:   Wed, 12 Apr 2023 22:49:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] resolv.conf.5: Add option no-aaaa to the resolv.conf
 manual page
Content-Language: en-US
To:     Lukas Javorsky <ljavorsk@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>
 <b4bedbd6-3e5d-f8a1-f099-20dc83037fe4@gmail.com>
 <CAK719L3jfBFrGKzE1i5OWKNWz4TD0i4MNOiSnM7QsY6wzKirGQ@mail.gmail.com>
 <46158b4c-b27c-726f-d594-a35fd606d8d8@gmail.com>
 <CAK719L2D9efKFXoa5Mb4UoXHJGZt+YMisePcGsbN6igO57mp6g@mail.gmail.com>
 <CAK719L2i08PEfeYLZBYS6HmmyC9hZ=r31gW6DEKWt5t41MVX3g@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAK719L2i08PEfeYLZBYS6HmmyC9hZ=r31gW6DEKWt5t41MVX3g@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KfU8X70L3w9X6t2qt9VUujBr"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------KfU8X70L3w9X6t2qt9VUujBr
Content-Type: multipart/mixed; boundary="------------aY8v5WohTbJenGRu505wjT0C";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Lukas Javorsky <ljavorsk@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <3e4470d2-8839-df5d-0600-d578284adf56@gmail.com>
Subject: Re: [PATCH] resolv.conf.5: Add option no-aaaa to the resolv.conf
 manual page
References: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>
 <b4bedbd6-3e5d-f8a1-f099-20dc83037fe4@gmail.com>
 <CAK719L3jfBFrGKzE1i5OWKNWz4TD0i4MNOiSnM7QsY6wzKirGQ@mail.gmail.com>
 <46158b4c-b27c-726f-d594-a35fd606d8d8@gmail.com>
 <CAK719L2D9efKFXoa5Mb4UoXHJGZt+YMisePcGsbN6igO57mp6g@mail.gmail.com>
 <CAK719L2i08PEfeYLZBYS6HmmyC9hZ=r31gW6DEKWt5t41MVX3g@mail.gmail.com>
In-Reply-To: <CAK719L2i08PEfeYLZBYS6HmmyC9hZ=r31gW6DEKWt5t41MVX3g@mail.gmail.com>

--------------aY8v5WohTbJenGRu505wjT0C
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lukas,

On 4/12/23 17:18, Lukas Javorsky wrote:
> Sorry, attaching it as plain text again so it doesn't break the formatt=
ing

I didn't receive the attachment.  The email doesn't apply; sorry.  Could =
you
try some different method?

Thanks,
Alex

>=20
> ---
>  man5/resolv.conf.5 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>=20
> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> index 6af8b4e92..7e207b0f4 100644
> --- a/man5/resolv.conf.5
> +++ b/man5/resolv.conf.5
> @@ -200,6 +200,29 @@ which causes round-robin selection of name
> servers from among those listed.
>  This has the effect of spreading the query load among all listed serve=
rs,
>  rather than having all clients try the first listed server first every=
 time.
>  .TP
> +.B no\-aaaa (since glibc 2.36)
> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
> +Sets
> +.B RES_NOAAAA
> +in
> +.IR _res.options ,
> +which suppresses AAAA queries made by the stub resolver,
> +including AAAA lookups triggered by NSS-based interfaces such as
> +.BR getaddrinfo (3).
> +Only DNS lookups are affected: IPv6 data in
> +.BR hosts (5)
> +is still used,
> +.BR getaddrinfo (3)
> +with
> +.B AI_PASSIVE
> +will stillproduce IPv6 addresses,
> +and configured IPv6 name servers are still used.
> +To produce correct Name Error (NXDOMAIN) results,
> +AAAA queries are translated to A queries.
> +This option is intended preliminary for diagnostic purposes,
> +to rule out that AAAA DNS queries have adverse impact.
> +It is incompatible with EDNS0 usage and DNSSEC validation by applicati=
ons.
> +.TP
>  .B no\-check\-names
>  .\" since glibc 2.2
>  Sets
> --
> 2.39.2
>=20
>=20
> On Wed, Apr 12, 2023 at 5:17=E2=80=AFPM Lukas Javorsky <ljavorsk@redhat=
=2Ecom> wrote:
>>
>> I've recreated it and tried the git apply which worked just fine, hope=
fully, it works for you as well.
>> I had some issues there, which probably caused the corrupt error.
>>
>> ---
>>  man5/resolv.conf.5 | 23 +++++++++++++++++++++++
>>  1 file changed, 23 insertions(+)
>>
>> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>> index 6af8b4e92..7e207b0f4 100644
>> --- a/man5/resolv.conf.5
>> +++ b/man5/resolv.conf.5
>> @@ -200,6 +200,29 @@ which causes round-robin selection of name server=
s from among those listed.
>>  This has the effect of spreading the query load among all listed serv=
ers,
>>  rather than having all clients try the first listed server first ever=
y time.
>>  .TP
>> +.B no\-aaaa (since glibc 2.36)
>> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
>> +Sets
>> +.B RES_NOAAAA
>> +in
>> +.IR _res.options ,
>> +which suppresses AAAA queries made by the stub resolver,
>> +including AAAA lookups triggered by NSS-based interfaces such as
>> +.BR getaddrinfo (3).
>> +Only DNS lookups are affected: IPv6 data in
>> +.BR hosts (5)
>> +is still used,
>> +.BR getaddrinfo (3)
>> +with
>> +.B AI_PASSIVE
>> +will stillproduce IPv6 addresses,
>> +and configured IPv6 name servers are still used.
>> +To produce correct Name Error (NXDOMAIN) results,
>> +AAAA queries are translated to A queries.
>> +This option is intended preliminary for diagnostic purposes,
>> +to rule out that AAAA DNS queries have adverse impact.
>> +It is incompatible with EDNS0 usage and DNSSEC validation by applicat=
ions.
>> +.TP
>>  .B no\-check\-names
>>  .\" since glibc 2.2
>>  Sets
>> --
>> 2.39.2
>>
>> On Tue, Apr 11, 2023 at 7:26=E2=80=AFPM Alejandro Colomar <alx.manpage=
s@gmail.com> wrote:
>>>
>>> Hi Lukas,
>>>
>>> On 4/11/23 10:43, Lukas Javorsky wrote:
>>>> I fixed the issues you pointed out, thank you for that.
>>>
>>> $ git apply patches/Re\:\ \[PATCH\]\ resolv.conf.5\:\ Add\ option\ no=
-aaaa\ to\ the\ resolv.conf\ manual\ page\ -\ Lukas\ Javorsky\ \<ljavorsk=
@redhat.com\>\ -\ 2023-04-11\ 1043.eml
>>> error: corrupt patch at line 118
>>>
>>> After manually fixing that in the patch (which was due to your mailer=

>>> inserting line breaks), it fails with:
>>>
>>> $ git apply patches/Re\:\ \[PATCH\]\ resolv.conf.5\:\ Add\ option\ no=
-aaaa\ to\ the\ resolv.conf\ manual\ page\ -\ Lukas\ Javorsky\ \<ljavorsk=
@redhat.com\>\ -\ 2023-04-11\ 1043.eml
>>> error: patch failed: man5/resolv.conf.5:200
>>> error: man5/resolv.conf.5: patch does not apply
>>>
>>> I'm not sure what's the reason for this; maybe some strange character=
;
>>> I can't see problems by visual inspection.  Can you resend including
>>> a copy attached so that the mailer can't break it?
>>>
>>> Thanks,
>>> Alex
>>>
>>>>
>>>> ---
>>>>  man5/resolv.conf.5 | 23 +++++++++++++++++++++++
>>>>  1 file changed, 23 insertions(+)
>>>>
>>>> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>>>> index 6af8b4e92..2dd051556 100644
>>>> --- a/man5/resolv.conf.5
>>>> +++ b/man5/resolv.conf.5
>>>> @@ -200,6 +200,29 @@ which causes round-robin selection of name
>>>> servers from among those listed.
>>>>  This has the effect of spreading the query load among all listed se=
rvers,
>>>>  rather than having all clients try the first listed server first ev=
ery time.
>>>>  .TP
>>>> +.B no\-aaaa (since glibc 2.36)
>>>> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
>>>> +Sets
>>>> +.B RES_NOAAAA
>>>> +in
>>>> +.IR _res.options ,
>>>> +which suppresses AAAA queries made by the stub resolver,
>>>> +including AAAA lookups triggered by NSS-based interfaces such as
>>>> +.BR getaddrinfo (3).
>>>> +Only DNS lookups are affected: IPv6 data in
>>>> +.BR hosts (5)
>>>> +is still used,
>>>> +.BR getaddrinfo (3)
>>>> +with
>>>> +.B AI_PASSIVE
>>>> +will stillproduce IPv6 addresses,
>>>> +and configured IPv6 name servers are still used.
>>>> +To produce correct Name Error (NXDOMAIN) results,
>>>> +AAAA queries are translated to A queries.
>>>> +This option is intended preliminary for diagnostic purposes,
>>>> +to rule out that AAAA DNS queries have adverse impact.
>>>> +It is incompatible with EDNS0 usage and DNSSEC validation by applic=
ations.
>>>> +.TP
>>>>  .B no\-check\-names
>>>>  .\" since glibc 2.2
>>>>  Sets
>>>> --
>>>> 2.39.2
>>>>
>>>> If you see anything else, please let me know.
>>>>
>>>>
>>>> On Sat, Apr 8, 2023 at 3:22=E2=80=AFPM Alejandro Colomar <alx.manpag=
es@gmail.com> wrote:
>>>>>
>>>>> Hi Lukas,
>>>>>
>>>>> On 4/6/23 15:11, Lukas Javorsky wrote:
>>>>>> Reference: https://sourceware.org/pipermail/libc-alpha/2022-June/1=
39549.html
>>>>>
>>>>> Thanks for the patch.  Please see a few comments below.
>>>>>
>>>>> BTW, your mailer screws the patch; please send a copy attached toge=
ther
>>>>> with the inline patch in the email, so I can respond to the inline =
one
>>>>> but apply the attached one.
>>>>>
>>>>> Cheers,
>>>>> Alex
>>>>>
>>>>>> ---
>>>>>>  man5/resolv.conf.5 | 21 +++++++++++++++++++++
>>>>>>  1 file changed, 21 insertions(+)
>>>>>>
>>>>>> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>>>>>> index 6af8b4e92..2dd051556 100644
>>>>>> --- a/man5/resolv.conf.5
>>>>>> +++ b/man5/resolv.conf.5
>>>>>> @@ -200,6 +200,27 @@ which causes round-robin selection of name se=
rvers
>>>>>> from among those listed.
>>>>>>  This has the effect of spreading the query load among all listed =
servers,
>>>>>>  rather than having all clients try the first listed server first =
every
>>>>>> time.
>>>>>>  .TP
>>>>>> +.B no\-aaaa (since glibc 2.36)
>>>>>> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
>>>>>> +Sets
>>>>>> +.BR RES_NOAAAA
>>>>>
>>>>> This adds a warning:
>>>>>
>>>>> an.tmac:man5/resolv.conf.5:206: style: .BR expects at least 2 argum=
ents, got 1
>>>>>
>>>>> You should use '.B', not '.BR'.
>>>>>
>>>>> Please check this for preventing new warnings:
>>>>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/C=
ONTRIBUTING#n132>
>>>>>
>>>>> (Although I'm not sure if this warning is only enabled in a version=

>>>>> of groff(1) that you probably don't have.  :)
>>>>>
>>>>>> +in
>>>>>> +.IR _res.options ,
>>>>>> +which suppresses AAAA queries made by the stub
>>>>>
>>>>> Please use semantic newlines.  See man-pages(7):
>>>>>
>>>>>    Use semantic newlines
>>>>>        In the source of a manual page, new sentences should be star=
ted
>>>>>        on  new  lines,  long  sentences  should be split into lines=
 at
>>>>>        clause breaks (commas, semicolons, colons, and so on), and l=
ong
>>>>>        clauses should be split at phrase boundaries.  This conventi=
on,
>>>>>        sometimes known as "semantic newlines", makes it easier to  =
see
>>>>>        the  effect of patches, which often operate at the level of =
in=E2=80=90
>>>>>        dividual sentences, clauses, or phrases.
>>>>>
>>>>>
>>>>>> +resolver, including AAAA lookups triggered by NSS-based interface=
s
>>>>>> +such as
>>>>>> +.BR getaddrinfo (3).
>>>>>> +Only DNS lookups are affected: IPv6 data in
>>>>>> +.BR hosts (5)
>>>>>> +is still used,
>>>>>> +.BR getaddrinfo (3)
>>>>>> +with AI_PASSIVE will still
>>>>>
>>>>> .B AI_PASSIVE
>>>>>
>>>>> (I see it's not formatted in other locations in this file; that see=
ms
>>>>> a bug.)
>>>>>
>>>>>> +produce IPv6 addresses, and configured IPv6 name servers are stil=
l
>>>>>> +used. To produce correct Name Error (NXDOMAIN) results, AAAA quer=
ies
>>>>>> +are translated to A queries. This option is intended preliminary
>>>>>> +for diagnostic purposes, to rule out that AAAA DNS queries have a=
dverse
>>>>>> impact.
>>>>>> +It is incompatible with EDNS0 usage and DNSSEC validation by appl=
ications.
>>>>>> +.TP
>>>>>>  .B no\-check\-names
>>>>>>  .\" since glibc 2.2
>>>>>>  Sets
>>>>>> --
>>>>>> 2.39.2
>>>>>>
>>>>>
>>>>> --
>>>>> <http://www.alejandro-colomar.es/>
>>>>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>>>
>>>>
>>>>
>>>
>>> --
>>> <http://www.alejandro-colomar.es/>
>>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>
>>
>>
>> --
>> S pozdravom/ Best regards
>>
>> Luk=C3=A1=C5=A1 Javorsk=C3=BD
>>
>> Software Engineer, Core service - Databases
>>
>> Red Hat
>>
>> Purky=C5=88ova 115 (TPB-C)
>>
>> 612 00 Brno - Kr=C3=A1lovo Pole
>>
>> ljavorsk@redhat.com
>>
>>
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------aY8v5WohTbJenGRu505wjT0C--

--------------KfU8X70L3w9X6t2qt9VUujBr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ3GWsACgkQnowa+77/
2zIjfBAAjkKlTKTuy++uXbFZHdg//eeh//g1oVjfYBS3ical2DO1AeegySzu63oX
U1PL/9Bu/VkKuxjYMzZpXuABZnDO9A9WfBZL0aXWrHoJ007zP8aAH77cY8pTsLQs
2I2w2YUmLxKRAysihIloPFouthflUDh/mTReS9Bvxp03vjSKtX6zfuAxW2faQB4x
K8uKwkssHjAlZOymgH511elUYoz1vZzmHLjAawoiRb0s7PeuysaYi/wYQLc6ZKo1
cjHMSIae9SHMbAYSTNxlTurYvxvRL9zpoa0hBnTGldzlstpRVjhaoJjcUg4L55WK
DIX43AMeoF3deUgZQgEQVd/2b+84huyw/ObuOpHWshu4xc5wN5zI1DS1PW9zZDLH
fG/NKsVJq8wuHl21A4p5aYKtgfqtF7KzcngMyWRSebFzUGdj6PDk4voA5RJ+okwP
x/RDycEggFRMrQ39M/seDh/kDJQ7Fc1OIusoucymRT2P6w6nfKRTTTebiQ9eEjl9
qMTfDwymnwCit+ZA2qjd/VMlxkU1rBcRDPhKEVHlUrE3wb/eOSlDHIyRZ1y/cT+S
M32V0M6RnHYqXdK3P1mrDDubfkG4c+f/uVn/3vynL60houCHndydM1jnZMoZJK4H
pREp+wi96vE0AR6OO25mC030ZFGzP54Jyse7ApvRaOUnUXdKjqU=
=IB06
-----END PGP SIGNATURE-----

--------------KfU8X70L3w9X6t2qt9VUujBr--
