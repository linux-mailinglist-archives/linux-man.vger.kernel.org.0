Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC27F6E2586
	for <lists+linux-man@lfdr.de>; Fri, 14 Apr 2023 16:22:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbjDNOWW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Apr 2023 10:22:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbjDNOWW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Apr 2023 10:22:22 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED7A610F1
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 07:22:19 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id j16so3022162wms.0
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 07:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681482138; x=1684074138;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nepUSNp0+mOcrUesDcnNLHwND7Gdm0F6P5mrs12gtyo=;
        b=IP+yihjiJQdined5EmOmbVRr8eJ4WQ+oGBka/E76XTNoqNroNAeLPqZm9CPhMbihi3
         4Tw/2z7ujl+LDfdFkRXf7ZOUcBmi6jS1tM7HAvZ/H0nZf5ppIFUd8L2AlobmurPKH1ZE
         BuADMDqtmgrbCjbYkFy3ycwjkO+KT41Z4/xg36+84C7zrzGLupqB06m0xZ2dvzTlmoe/
         oHu6K7qVHhzSrJTo/ZyuIAwI6mn9v1UJuF4GLZdvmdhGU3oT1A3W41OG874eqMpZ/wad
         2md/6wE8hrl16UyZ3I9RKbiBZWjsTO9k5BTcSa5ya4VJpefjPMGfJwqBbLdnJ0ZcCbSG
         uYYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681482138; x=1684074138;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nepUSNp0+mOcrUesDcnNLHwND7Gdm0F6P5mrs12gtyo=;
        b=AUL33DSKmxl7kqfCKQVUClgTvHLNf6cfkh8bL2uZKelstNXRHTWOGoz2zON8qYP6N8
         jszEZl7f7hA3XiQartVNzvZM8OVWh7Zj3XzwGzWlLWP1excse4KJmtxlCsKrcxPUb8vR
         UUAq2Rl6QHO8FDPHe6xgfKny3VZbBzxZ2g61uJVngjuss0j777j4hK0MNg1O4ejuQYvg
         G75oiK71nRbl3KISQzWeG/RTRXJLNDZBeN3lNq5LDDz58L/EJnYCpfw96XViTGfHg9Be
         ybAGDZ1DumPqXXCg3I51Alfvd2UR3I8lleJ6BrOlkBXnoXi6dp6IL1DtkGK7LyPWnBJ1
         JKrQ==
X-Gm-Message-State: AAQBX9cBhYgt3eGs7ui0MHPIcED+rJ39QHM64Nhdpq7+SJE+sByIhkwE
        nuEgwscFCnWKwXKgXIfu3ZmTBDEj17s=
X-Google-Smtp-Source: AKy350Zl0zSAFlMln+AZ3RE0G9j1MYBSl3e9gbafHCidDw5F4/qV5Lbz9cW9QHkUeVPzVRR9EMTUIw==
X-Received: by 2002:a1c:cc1a:0:b0:3ed:2a91:3bc9 with SMTP id h26-20020a1ccc1a000000b003ed2a913bc9mr4956415wmb.15.1681482138178;
        Fri, 14 Apr 2023 07:22:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f24-20020a7bcd18000000b003f09a9151c1sm4392646wmj.30.2023.04.14.07.22.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 07:22:17 -0700 (PDT)
Message-ID: <628c9e62-7d77-faee-7ab5-9a22a368cd2e@gmail.com>
Date:   Fri, 14 Apr 2023 16:22:10 +0200
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
 <3e4470d2-8839-df5d-0600-d578284adf56@gmail.com>
 <CAK719L0PPWacx444xFs39ufyx_CSbtEVX-pCc2Pea=QywQ6CsQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAK719L0PPWacx444xFs39ufyx_CSbtEVX-pCc2Pea=QywQ6CsQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------E60gWVM2KY0CPsVmUoWHSgGa"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------E60gWVM2KY0CPsVmUoWHSgGa
Content-Type: multipart/mixed; boundary="------------xdXXGwTxi8R1Szi40IbSMh3v";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Lukas Javorsky <ljavorsk@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <628c9e62-7d77-faee-7ab5-9a22a368cd2e@gmail.com>
Subject: Re: [PATCH] resolv.conf.5: Add option no-aaaa to the resolv.conf
 manual page
References: <CAK719L248t=yVRtgaJQZo9+vMvNzs-Q=Q9YW-vfaPHJB--oNAA@mail.gmail.com>
 <b4bedbd6-3e5d-f8a1-f099-20dc83037fe4@gmail.com>
 <CAK719L3jfBFrGKzE1i5OWKNWz4TD0i4MNOiSnM7QsY6wzKirGQ@mail.gmail.com>
 <46158b4c-b27c-726f-d594-a35fd606d8d8@gmail.com>
 <CAK719L2D9efKFXoa5Mb4UoXHJGZt+YMisePcGsbN6igO57mp6g@mail.gmail.com>
 <CAK719L2i08PEfeYLZBYS6HmmyC9hZ=r31gW6DEKWt5t41MVX3g@mail.gmail.com>
 <3e4470d2-8839-df5d-0600-d578284adf56@gmail.com>
 <CAK719L0PPWacx444xFs39ufyx_CSbtEVX-pCc2Pea=QywQ6CsQ@mail.gmail.com>
In-Reply-To: <CAK719L0PPWacx444xFs39ufyx_CSbtEVX-pCc2Pea=QywQ6CsQ@mail.gmail.com>

--------------xdXXGwTxi8R1Szi40IbSMh3v
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lukas,

On 4/13/23 22:34, Lukas Javorsky wrote:
> Okay, I'll send the patch as a file attachment.
>=20
> Does this work?

Yes.  Patch applied.

Thanks,
Alex

>=20
> On Wed, Apr 12, 2023 at 10:50=E2=80=AFPM Alejandro Colomar <alx.manpage=
s@gmail.com>
> wrote:
>=20
>> Hi Lukas,
>>
>> On 4/12/23 17:18, Lukas Javorsky wrote:
>>> Sorry, attaching it as plain text again so it doesn't break the
>> formatting
>>
>> I didn't receive the attachment.  The email doesn't apply; sorry.  Cou=
ld
>> you
>> try some different method?
>>
>> Thanks,
>> Alex
>>
>>>
>>> ---
>>>  man5/resolv.conf.5 | 23 +++++++++++++++++++++++
>>>  1 file changed, 23 insertions(+)
>>>
>>> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>>> index 6af8b4e92..7e207b0f4 100644
>>> --- a/man5/resolv.conf.5
>>> +++ b/man5/resolv.conf.5
>>> @@ -200,6 +200,29 @@ which causes round-robin selection of name
>>> servers from among those listed.
>>>  This has the effect of spreading the query load among all listed
>> servers,
>>>  rather than having all clients try the first listed server first eve=
ry
>> time.
>>>  .TP
>>> +.B no\-aaaa (since glibc 2.36)
>>> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
>>> +Sets
>>> +.B RES_NOAAAA
>>> +in
>>> +.IR _res.options ,
>>> +which suppresses AAAA queries made by the stub resolver,
>>> +including AAAA lookups triggered by NSS-based interfaces such as
>>> +.BR getaddrinfo (3).
>>> +Only DNS lookups are affected: IPv6 data in
>>> +.BR hosts (5)
>>> +is still used,
>>> +.BR getaddrinfo (3)
>>> +with
>>> +.B AI_PASSIVE
>>> +will stillproduce IPv6 addresses,
>>> +and configured IPv6 name servers are still used.
>>> +To produce correct Name Error (NXDOMAIN) results,
>>> +AAAA queries are translated to A queries.
>>> +This option is intended preliminary for diagnostic purposes,
>>> +to rule out that AAAA DNS queries have adverse impact.
>>> +It is incompatible with EDNS0 usage and DNSSEC validation by
>> applications.
>>> +.TP
>>>  .B no\-check\-names
>>>  .\" since glibc 2.2
>>>  Sets
>>> --
>>> 2.39.2
>>>
>>>
>>> On Wed, Apr 12, 2023 at 5:17=E2=80=AFPM Lukas Javorsky <ljavorsk@redh=
at.com>
>> wrote:
>>>>
>>>> I've recreated it and tried the git apply which worked just fine,
>> hopefully, it works for you as well.
>>>> I had some issues there, which probably caused the corrupt error.
>>>>
>>>> ---
>>>>  man5/resolv.conf.5 | 23 +++++++++++++++++++++++
>>>>  1 file changed, 23 insertions(+)
>>>>
>>>> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>>>> index 6af8b4e92..7e207b0f4 100644
>>>> --- a/man5/resolv.conf.5
>>>> +++ b/man5/resolv.conf.5
>>>> @@ -200,6 +200,29 @@ which causes round-robin selection of name serv=
ers
>> from among those listed.
>>>>  This has the effect of spreading the query load among all listed
>> servers,
>>>>  rather than having all clients try the first listed server first ev=
ery
>> time.
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
>>>> +It is incompatible with EDNS0 usage and DNSSEC validation by
>> applications.
>>>> +.TP
>>>>  .B no\-check\-names
>>>>  .\" since glibc 2.2
>>>>  Sets
>>>> --
>>>> 2.39.2
>>>>
>>>> On Tue, Apr 11, 2023 at 7:26=E2=80=AFPM Alejandro Colomar <
>> alx.manpages@gmail.com> wrote:
>>>>>
>>>>> Hi Lukas,
>>>>>
>>>>> On 4/11/23 10:43, Lukas Javorsky wrote:
>>>>>> I fixed the issues you pointed out, thank you for that.
>>>>>
>>>>> $ git apply patches/Re\:\ \[PATCH\]\ resolv.conf.5\:\ Add\ option\
>> no-aaaa\ to\ the\ resolv.conf\ manual\ page\ -\ Lukas\ Javorsky\ \<
>> ljavorsk@redhat.com\>\ -\ 2023-04-11\ 1043.eml
>>>>> error: corrupt patch at line 118
>>>>>
>>>>> After manually fixing that in the patch (which was due to your mail=
er
>>>>> inserting line breaks), it fails with:
>>>>>
>>>>> $ git apply patches/Re\:\ \[PATCH\]\ resolv.conf.5\:\ Add\ option\
>> no-aaaa\ to\ the\ resolv.conf\ manual\ page\ -\ Lukas\ Javorsky\ \<
>> ljavorsk@redhat.com\>\ -\ 2023-04-11\ 1043.eml
>>>>> error: patch failed: man5/resolv.conf.5:200
>>>>> error: man5/resolv.conf.5: patch does not apply
>>>>>
>>>>> I'm not sure what's the reason for this; maybe some strange charact=
er;
>>>>> I can't see problems by visual inspection.  Can you resend includin=
g
>>>>> a copy attached so that the mailer can't break it?
>>>>>
>>>>> Thanks,
>>>>> Alex
>>>>>
>>>>>>
>>>>>> ---
>>>>>>  man5/resolv.conf.5 | 23 +++++++++++++++++++++++
>>>>>>  1 file changed, 23 insertions(+)
>>>>>>
>>>>>> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>>>>>> index 6af8b4e92..2dd051556 100644
>>>>>> --- a/man5/resolv.conf.5
>>>>>> +++ b/man5/resolv.conf.5
>>>>>> @@ -200,6 +200,29 @@ which causes round-robin selection of name
>>>>>> servers from among those listed.
>>>>>>  This has the effect of spreading the query load among all listed
>> servers,
>>>>>>  rather than having all clients try the first listed server first
>> every time.
>>>>>>  .TP
>>>>>> +.B no\-aaaa (since glibc 2.36)
>>>>>> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
>>>>>> +Sets
>>>>>> +.B RES_NOAAAA
>>>>>> +in
>>>>>> +.IR _res.options ,
>>>>>> +which suppresses AAAA queries made by the stub resolver,
>>>>>> +including AAAA lookups triggered by NSS-based interfaces such as
>>>>>> +.BR getaddrinfo (3).
>>>>>> +Only DNS lookups are affected: IPv6 data in
>>>>>> +.BR hosts (5)
>>>>>> +is still used,
>>>>>> +.BR getaddrinfo (3)
>>>>>> +with
>>>>>> +.B AI_PASSIVE
>>>>>> +will stillproduce IPv6 addresses,
>>>>>> +and configured IPv6 name servers are still used.
>>>>>> +To produce correct Name Error (NXDOMAIN) results,
>>>>>> +AAAA queries are translated to A queries.
>>>>>> +This option is intended preliminary for diagnostic purposes,
>>>>>> +to rule out that AAAA DNS queries have adverse impact.
>>>>>> +It is incompatible with EDNS0 usage and DNSSEC validation by
>> applications.
>>>>>> +.TP
>>>>>>  .B no\-check\-names
>>>>>>  .\" since glibc 2.2
>>>>>>  Sets
>>>>>> --
>>>>>> 2.39.2
>>>>>>
>>>>>> If you see anything else, please let me know.
>>>>>>
>>>>>>
>>>>>> On Sat, Apr 8, 2023 at 3:22=E2=80=AFPM Alejandro Colomar <
>> alx.manpages@gmail.com> wrote:
>>>>>>>
>>>>>>> Hi Lukas,
>>>>>>>
>>>>>>> On 4/6/23 15:11, Lukas Javorsky wrote:
>>>>>>>> Reference:
>> https://sourceware.org/pipermail/libc-alpha/2022-June/139549.html
>>>>>>>
>>>>>>> Thanks for the patch.  Please see a few comments below.
>>>>>>>
>>>>>>> BTW, your mailer screws the patch; please send a copy attached
>> together
>>>>>>> with the inline patch in the email, so I can respond to the inlin=
e
>> one
>>>>>>> but apply the attached one.
>>>>>>>
>>>>>>> Cheers,
>>>>>>> Alex
>>>>>>>
>>>>>>>> ---
>>>>>>>>  man5/resolv.conf.5 | 21 +++++++++++++++++++++
>>>>>>>>  1 file changed, 21 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
>>>>>>>> index 6af8b4e92..2dd051556 100644
>>>>>>>> --- a/man5/resolv.conf.5
>>>>>>>> +++ b/man5/resolv.conf.5
>>>>>>>> @@ -200,6 +200,27 @@ which causes round-robin selection of name
>> servers
>>>>>>>> from among those listed.
>>>>>>>>  This has the effect of spreading the query load among all liste=
d
>> servers,
>>>>>>>>  rather than having all clients try the first listed server firs=
t
>> every
>>>>>>>> time.
>>>>>>>>  .TP
>>>>>>>> +.B no\-aaaa (since glibc 2.36)
>>>>>>>> +.\" f282cdbe7f436c75864e5640a409a10485e9abb2
>>>>>>>> +Sets
>>>>>>>> +.BR RES_NOAAAA
>>>>>>>
>>>>>>> This adds a warning:
>>>>>>>
>>>>>>> an.tmac:man5/resolv.conf.5:206: style: .BR expects at least 2
>> arguments, got 1
>>>>>>>
>>>>>>> You should use '.B', not '.BR'.
>>>>>>>
>>>>>>> Please check this for preventing new warnings:
>>>>>>> <
>> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING#n132
>>>
>>>>>>>
>>>>>>> (Although I'm not sure if this warning is only enabled in a versi=
on
>>>>>>> of groff(1) that you probably don't have.  :)
>>>>>>>
>>>>>>>> +in
>>>>>>>> +.IR _res.options ,
>>>>>>>> +which suppresses AAAA queries made by the stub
>>>>>>>
>>>>>>> Please use semantic newlines.  See man-pages(7):
>>>>>>>
>>>>>>>    Use semantic newlines
>>>>>>>        In the source of a manual page, new sentences should be
>> started
>>>>>>>        on  new  lines,  long  sentences  should be split into lin=
es
>> at
>>>>>>>        clause breaks (commas, semicolons, colons, and so on), and=

>> long
>>>>>>>        clauses should be split at phrase boundaries.  This
>> convention,
>>>>>>>        sometimes known as "semantic newlines", makes it easier to=

>> see
>>>>>>>        the  effect of patches, which often operate at the level o=
f
>> in=E2=80=90
>>>>>>>        dividual sentences, clauses, or phrases.
>>>>>>>
>>>>>>>
>>>>>>>> +resolver, including AAAA lookups triggered by NSS-based interfa=
ces
>>>>>>>> +such as
>>>>>>>> +.BR getaddrinfo (3).
>>>>>>>> +Only DNS lookups are affected: IPv6 data in
>>>>>>>> +.BR hosts (5)
>>>>>>>> +is still used,
>>>>>>>> +.BR getaddrinfo (3)
>>>>>>>> +with AI_PASSIVE will still
>>>>>>>
>>>>>>> .B AI_PASSIVE
>>>>>>>
>>>>>>> (I see it's not formatted in other locations in this file; that s=
eems
>>>>>>> a bug.)
>>>>>>>
>>>>>>>> +produce IPv6 addresses, and configured IPv6 name servers are st=
ill
>>>>>>>> +used. To produce correct Name Error (NXDOMAIN) results, AAAA
>> queries
>>>>>>>> +are translated to A queries. This option is intended preliminar=
y
>>>>>>>> +for diagnostic purposes, to rule out that AAAA DNS queries have=

>> adverse
>>>>>>>> impact.
>>>>>>>> +It is incompatible with EDNS0 usage and DNSSEC validation by
>> applications.
>>>>>>>> +.TP
>>>>>>>>  .B no\-check\-names
>>>>>>>>  .\" since glibc 2.2
>>>>>>>>  Sets
>>>>>>>> --
>>>>>>>> 2.39.2
>>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> <http://www.alejandro-colomar.es/>
>>>>>>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>> --
>>>>> <http://www.alejandro-colomar.es/>
>>>>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>>>
>>>>
>>>>
>>>> --
>>>> S pozdravom/ Best regards
>>>>
>>>> Luk=C3=A1=C5=A1 Javorsk=C3=BD
>>>>
>>>> Software Engineer, Core service - Databases
>>>>
>>>> Red Hat
>>>>
>>>> Purky=C5=88ova 115 (TPB-C)
>>>>
>>>> 612 00 Brno - Kr=C3=A1lovo Pole
>>>>
>>>> ljavorsk@redhat.com
>>>>
>>>>
>>>
>>>
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------xdXXGwTxi8R1Szi40IbSMh3v--

--------------E60gWVM2KY0CPsVmUoWHSgGa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ5YZIACgkQnowa+77/
2zJSig//W3xTYhjB45pPAQZacVxk+zB5yhiiy2qKuudIx0kSOuBpjGqIl4eHZtCg
RqGvIalwoCik8TWMa/6mu76QCxcAzUCnlfPE/w6TW4gLHS1/3EyWph25bYPvlPS9
GWQKc0VRZiZGMQTo887H8w114e/3lbV6BCgoLg5govVXRFvNj8+044z6CSgfSvvG
Wqa49+OBhcYJtMNOk/JlGWkGscizaaXV3Lh0VD7Lg+Fq7E4HCdamCSs13G8xGJl1
Hds+wIQCLs9CRDqjxhzSrqMr6enbzz2IMShJZH97hFsten2SUic0Sv0eTPghOaWG
QSM/7l1awQ/33ZzquAR2R3y/A7YF1DZ1xTrny1q8rd0e1M0GhuLTk2LvzeCN8/rD
1hDp14x8Aryni65ijPkSF+0AyFYxBKNpg8beDcKMsNGjESASRNsCn475VpTAv8hf
ux67d4uyIpn53Az+gZQnUNKWyrVrZErtwdKdW6OPn8yV4uxO517GYrRxECuTdF3y
0TIexN7OjyqXQDadhGiY6qbia00NCs781N7IFDPEBf1UqYJ6H7R3Bx63tYdzhhJ/
NHBuW22TOiGrghP3qc2/dk/2vVSOCLQjjsot0oMOvrwO2WXAi1MRqAh+GlZ/S6zz
3tp4cXJzdxf7t/25MhjyuNLLgw06ZrbYlHkcNLA7Bae/q70veBk=
=U16n
-----END PGP SIGNATURE-----

--------------E60gWVM2KY0CPsVmUoWHSgGa--
