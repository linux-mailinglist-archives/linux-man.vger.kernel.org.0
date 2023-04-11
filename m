Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77CA16DE278
	for <lists+linux-man@lfdr.de>; Tue, 11 Apr 2023 19:26:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbjDKR0p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Apr 2023 13:26:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbjDKR0p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Apr 2023 13:26:45 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2963D185
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 10:26:42 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id v20-20020a05600c471400b003ed8826253aso1257929wmo.0
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 10:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681234000; x=1683826000;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wZvQhbv2zm3tEVBAhhFKl8CPVgSXUfkZVFeGj+2p0vo=;
        b=OEKWjTc/TBidJuIGWaLZCgOpxEATkdaB5NZcamtSv9bpDrhL2NuPSrHHNz9Qtc1w6Y
         8ZKWXrV40KClpRpdvwDSJ9W684WDmKvL1rWi1cLLueCa0J11E7mU0N0vdBG/MPLYl5ZB
         /DGAdofvxLQTnuvN6MOAiI6/zD7vV6+klnHMIUjMrefTkfPeI0S0X1IeXf56LAQm21u1
         ha+MEU5Fv2I5gjXgbaic5ZQ7naRQD6dV+0VTGskOkiFaz+Hv7SHgE9RHTuczjhA7vTjo
         AxNNbxnnE6iw5mlVZYnh3256O6Xba++epYtyoX75rSJi8YhnJ1EN6UZv2xfzVJ8adsLv
         U7oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681234000; x=1683826000;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wZvQhbv2zm3tEVBAhhFKl8CPVgSXUfkZVFeGj+2p0vo=;
        b=OQGDkTj1SZUj7LlYk+SPxzzbnzu0Mp387JbYqxwcIblcU3okpKfRUG2cT6XxjsjRHP
         KzZzA5ANgYAuw5vnFM23MVSacxk9IFG19MYfRsJVyCNHqOW3WpHEeFx1EsWP7cNcoud9
         0Bai8QPReJwU6pB1YaQkBHmZgDm1KNjKd1wT9JZEfVGLasZeakVjCNjSJX9u1gwWlfxi
         G8MSfFfCDnOpHcatZ5PU3jUUJgpjwDaKpMLcr+wuO2xiPFXutJoGSk8EvbZjq14p4gcX
         E59iC4k4OGT8vbqCT412fQ75fDLJuGDYNGx1/xx5zjgqLve3tfI6eSZV5eRo0hco0WFP
         2EWg==
X-Gm-Message-State: AAQBX9dVqeFKtvLX8Joe7RTOP3ffBJdc1UWTV55mS+iNMBN9Q8NTPj2M
        3NJ9elRxC3STq3oH0FqY4fiaAgJdKIE=
X-Google-Smtp-Source: AKy350aoflPXGolTu6T05ePU+ypYoKcPFfeGihOCN+AgPRBK1jcBNI98r6jJGvW65Wtb7uIIcrQrzw==
X-Received: by 2002:a1c:7c14:0:b0:3ef:62cd:1eb with SMTP id x20-20020a1c7c14000000b003ef62cd01ebmr7727778wmc.7.1681234000399;
        Tue, 11 Apr 2023 10:26:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p11-20020a05600c1d8b00b003ef36ef3833sm21509684wms.8.2023.04.11.10.26.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Apr 2023 10:26:39 -0700 (PDT)
Message-ID: <46158b4c-b27c-726f-d594-a35fd606d8d8@gmail.com>
Date:   Tue, 11 Apr 2023 19:26:25 +0200
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
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAK719L3jfBFrGKzE1i5OWKNWz4TD0i4MNOiSnM7QsY6wzKirGQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DeGG5DF2HCQ4PxxILFWmnQND"
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------DeGG5DF2HCQ4PxxILFWmnQND
Content-Type: multipart/mixed; boundary="------------Ps9I52xkseYeqRuIWED7GAMD";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Lukas Javorsky <ljavorsk@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <46158b4c-b27c-726f-d594-a35fd606d8d8@gmail.com>
Subject: Re: [PATCH] resolv.conf.5: Add option no-aaaa to the resolv.conf
 manual page
References: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>
 <b4bedbd6-3e5d-f8a1-f099-20dc83037fe4@gmail.com>
 <CAK719L3jfBFrGKzE1i5OWKNWz4TD0i4MNOiSnM7QsY6wzKirGQ@mail.gmail.com>
In-Reply-To: <CAK719L3jfBFrGKzE1i5OWKNWz4TD0i4MNOiSnM7QsY6wzKirGQ@mail.gmail.com>

--------------Ps9I52xkseYeqRuIWED7GAMD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lukas,

On 4/11/23 10:43, Lukas Javorsky wrote:
> I fixed the issues you pointed out, thank you for that.

$ git apply patches/Re\:\ \[PATCH\]\ resolv.conf.5\:\ Add\ option\ no-aaa=
a\ to\ the\ resolv.conf\ manual\ page\ -\ Lukas\ Javorsky\ \<ljavorsk@red=
hat.com\>\ -\ 2023-04-11\ 1043.eml
error: corrupt patch at line 118

After manually fixing that in the patch (which was due to your mailer
inserting line breaks), it fails with:

$ git apply patches/Re\:\ \[PATCH\]\ resolv.conf.5\:\ Add\ option\ no-aaa=
a\ to\ the\ resolv.conf\ manual\ page\ -\ Lukas\ Javorsky\ \<ljavorsk@red=
hat.com\>\ -\ 2023-04-11\ 1043.eml
error: patch failed: man5/resolv.conf.5:200
error: man5/resolv.conf.5: patch does not apply

I'm not sure what's the reason for this; maybe some strange character;
I can't see problems by visual inspection.  Can you resend including
a copy attached so that the mailer can't break it?

Thanks,
Alex

>=20
> ---
>  man5/resolv.conf.5 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>=20
> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> index 6af8b4e92..2dd051556 100644
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
> If you see anything else, please let me know.
>=20
>=20
> On Sat, Apr 8, 2023 at 3:22=E2=80=AFPM Alejandro Colomar <alx.manpages@=
gmail.com> wrote:
>>
>> Hi Lukas,
>>
>> On 4/6/23 15:11, Lukas Javorsky wrote:
>>> Reference: https://sourceware.org/pipermail/libc-alpha/2022-June/1395=
49.html
>>
>> Thanks for the patch.  Please see a few comments below.
>>
>> BTW, your mailer screws the patch; please send a copy attached togethe=
r
>> with the inline patch in the email, so I can respond to the inline one=

>> but apply the attached one.
>>
>> Cheers,
>> Alex
>>
>>> ---
>>>  man5/resolv.conf.5 | 21 +++++++++++++++++++++
>>>  1 file changed, 21 insertions(+)
>>>
>>> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>>> index 6af8b4e92..2dd051556 100644
>>> --- a/man5/resolv.conf.5
>>> +++ b/man5/resolv.conf.5
>>> @@ -200,6 +200,27 @@ which causes round-robin selection of name serve=
rs
>>> from among those listed.
>>>  This has the effect of spreading the query load among all listed ser=
vers,
>>>  rather than having all clients try the first listed server first eve=
ry
>>> time.
>>>  .TP
>>> +.B no\-aaaa (since glibc 2.36)
>>> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
>>> +Sets
>>> +.BR RES_NOAAAA
>>
>> This adds a warning:
>>
>> an.tmac:man5/resolv.conf.5:206: style: .BR expects at least 2 argument=
s, got 1
>>
>> You should use '.B', not '.BR'.
>>
>> Please check this for preventing new warnings:
>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONT=
RIBUTING#n132>
>>
>> (Although I'm not sure if this warning is only enabled in a version
>> of groff(1) that you probably don't have.  :)
>>
>>> +in
>>> +.IR _res.options ,
>>> +which suppresses AAAA queries made by the stub
>>
>> Please use semantic newlines.  See man-pages(7):
>>
>>    Use semantic newlines
>>        In the source of a manual page, new sentences should be started=

>>        on  new  lines,  long  sentences  should be split into lines at=

>>        clause breaks (commas, semicolons, colons, and so on), and long=

>>        clauses should be split at phrase boundaries.  This convention,=

>>        sometimes known as "semantic newlines", makes it easier to  see=

>>        the  effect of patches, which often operate at the level of in=E2=
=80=90
>>        dividual sentences, clauses, or phrases.
>>
>>
>>> +resolver, including AAAA lookups triggered by NSS-based interfaces
>>> +such as
>>> +.BR getaddrinfo (3).
>>> +Only DNS lookups are affected: IPv6 data in
>>> +.BR hosts (5)
>>> +is still used,
>>> +.BR getaddrinfo (3)
>>> +with AI_PASSIVE will still
>>
>> .B AI_PASSIVE
>>
>> (I see it's not formatted in other locations in this file; that seems
>> a bug.)
>>
>>> +produce IPv6 addresses, and configured IPv6 name servers are still
>>> +used. To produce correct Name Error (NXDOMAIN) results, AAAA queries=

>>> +are translated to A queries. This option is intended preliminary
>>> +for diagnostic purposes, to rule out that AAAA DNS queries have adve=
rse
>>> impact.
>>> +It is incompatible with EDNS0 usage and DNSSEC validation by applica=
tions.
>>> +.TP
>>>  .B no\-check\-names
>>>  .\" since glibc 2.2
>>>  Sets
>>> --
>>> 2.39.2
>>>
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>=20
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Ps9I52xkseYeqRuIWED7GAMD--

--------------DeGG5DF2HCQ4PxxILFWmnQND
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ1mEEACgkQnowa+77/
2zIBNw/6A+O9AlynkuQ9soYclw1eAQqyHwa81MpsIiJoY8nJolTOpFNulORIn9Ut
uw6hDUWAdb8p+Ogfv+wu3db+fS0yZfcX1SLAOftnJlU4hta2RV8Gk6jGJWvBBUAO
LOke738HOFWAlaH9AxPPZ7BrBbkhGFO6PZvpmcfSH6Hlvs3sPwxoNyORZXCXNMBp
QjxUTvzYsOyuwPq5IRJrirMtDIy1im8eyeyOvCauzict18xJmSi/N0At2YzBAwRn
8G4q4VD8trGrJo+9WIfjGtRFGZwJ/LsM4xzidttvh6lVgYxHTLvPIuxNBIPtoqIj
yyfVGZfOR0NKh8To/RQit1mPdNfOZGbaJn9tj4UZDZS+h/MPuGj9g1k+v/DhQg99
ESPnIm8m7b9q52mRY/dF8laEfNYbm0NB6+7tfJcKqu771OMFQs9ukZDjg2Y4l4/a
NxOI5Q7W+T0UnQ7KyQCBYBj8UVADbmzzU19L/Hj2Mk6Yx4wJXWOfAlM56xSruTEM
Np54F8KES0RgD2ybJOt63/Y/W9i0zF4fA/8kiyPhxM5X9ljvxZ/jLGwNXlmN389b
Wq7eXhfhHTcHiOU+NZtiY9nLCwZkjZVRfe/84wVYYr/YW8KIk/HQsstrFrdvjdSv
ZmTK8XOcmqwunrjwEMM0+XB1cU0RAqj9FTfVXubDhcT5yvic7AU=
=vxQz
-----END PGP SIGNATURE-----

--------------DeGG5DF2HCQ4PxxILFWmnQND--
