Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B20F6C0FC4
	for <lists+linux-man@lfdr.de>; Mon, 20 Mar 2023 11:53:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbjCTKxl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Mar 2023 06:53:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjCTKxO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Mar 2023 06:53:14 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 744AF29153
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 03:50:07 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id p34so2132225wms.3
        for <linux-man@vger.kernel.org>; Mon, 20 Mar 2023 03:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679309365;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mb4CGkqoeuBc5ZiGqAFmsynytYO5j7QFyVnyShniP6k=;
        b=THRSHR56xGuyl5WsKZ+N5rDGn/m6cFIRPSPJBta0MQ2o9SLOSQN/k3Sb8spQhQZul5
         EIJNf8Aj7SxnayMqKcmjvj2NfdGJMwy34kl8zuX7HbzYg1TdvtjDntOdLPmFcK3YpFrt
         yfgUUP2PsLZfnrd7xLeyIS1FvTG+ttPOpybHV9ycrJU5qHQMClfeD97pdK0bTb07ErGw
         WPqOMFbtZnQisIcOk1lnZsOyyuh0b2ZcXqSe9Xbgu+LP9rdyDmIaezhFH4et8g2PuejW
         NXzIjIfhOTvi2H4WfwRrUVZZjBrRWmu++271aqhJLALz8IGdRoel69HTYBdsTCqk3Nyx
         jOAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679309365;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mb4CGkqoeuBc5ZiGqAFmsynytYO5j7QFyVnyShniP6k=;
        b=rf3mHRGRx17LqZVP7zk151rSSBIHh3+bc5JVZwZfVhgNeDwOerfBOdnWaMntXpxfpH
         lXQdaJzU8t8dUO5bcUs/w89HxDb99qmzogY8d7Fl5xbioE3pVFrKQZ/TfjvBUEleBIMH
         O6uHGiypCIqM3eRDXk4FeJaJkBJYMc3JS2GZxNnmBD4mljBX+2hBvvB7XzZgQXvxVnp0
         hd6NqAAbFFPNIAdV1VlDy6a+AtxPYF32x2Y6NSMvMh1bhd0a2g9SEYbz4GeSB0JFsVrP
         HQEzEQuP1M1neEPqYZOXJQIWHjTaL7BN0y03IJwuqXYbrOgBK+kBS/rHz3iA9udSTCVj
         9pEg==
X-Gm-Message-State: AO0yUKUdrZzQqbR7vnTrAs3bEAgts1WsXetBRckY1NUbjx41WuVhSS2Q
        QsWddAYOFr4mHsBGCYgSoOMUtMUyQjU=
X-Google-Smtp-Source: AK7set/2Jf1XWuU7HAFOhr3irXWg3eiR1OQzdVt4WXtvzxZ2IKXUgGf/qRd41IUmwZYV0XClHB2z5A==
X-Received: by 2002:a05:600c:5408:b0:3ea:ecc2:daab with SMTP id he8-20020a05600c540800b003eaecc2daabmr35644416wmb.3.1679309364640;
        Mon, 20 Mar 2023 03:49:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id x20-20020a1c7c14000000b003edc11c2ecbsm6054186wmc.4.2023.03.20.03.49.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 03:49:24 -0700 (PDT)
Message-ID: <15fcdfb3-4029-343b-2867-d92445426ed3@gmail.com>
Date:   Mon, 20 Mar 2023 11:49:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
To:     roucaries bastien <roucaries.bastien+debian@gmail.com>,
        Eric Blake <eblake@redhat.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        GCC <gcc@gcc.gnu.org>, glibc <libc-alpha@sourceware.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>
References: <20230205152835.17413-1-alx@kernel.org>
 <20230206184530.zn5kq7x6xmcfxhqm@redhat.com>
 <CAE2SPAbnWViwyrjz1s_X18RPtZyqZJj0d8_ib=oYcUgQhCsh8w@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAE2SPAbnWViwyrjz1s_X18RPtZyqZJj0d8_ib=oYcUgQhCsh8w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mcO6DJocvMkKprtIDiS2DuHl"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mcO6DJocvMkKprtIDiS2DuHl
Content-Type: multipart/mixed; boundary="------------JFG9csQQbZJ6Ui07mdFWym87";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: roucaries bastien <roucaries.bastien+debian@gmail.com>,
 Eric Blake <eblake@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 GCC <gcc@gcc.gnu.org>, glibc <libc-alpha@sourceware.org>,
 =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>,
 Rich Felker <dalias@libc.org>, Andrew Clayton <a.clayton@nginx.com>,
 Richard Biener <richard.guenther@gmail.com>,
 Zack Weinberg <zack@owlfolio.org>, Florian Weimer <fweimer@redhat.com>,
 Joseph Myers <joseph@codesourcery.com>, Jakub Jelinek <jakub@redhat.com>
Message-ID: <15fcdfb3-4029-343b-2867-d92445426ed3@gmail.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
References: <20230205152835.17413-1-alx@kernel.org>
 <20230206184530.zn5kq7x6xmcfxhqm@redhat.com>
 <CAE2SPAbnWViwyrjz1s_X18RPtZyqZJj0d8_ib=oYcUgQhCsh8w@mail.gmail.com>
In-Reply-To: <CAE2SPAbnWViwyrjz1s_X18RPtZyqZJj0d8_ib=oYcUgQhCsh8w@mail.gmail.com>

--------------JFG9csQQbZJ6Ui07mdFWym87
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Bastien and Eric!

On 3/18/23 08:54, roucaries bastien wrote:
> Hi,
>=20
> I have opened a defect at austin group
> https://www.austingroupbugs.net/view.php?id=3D1641

Sorry for not having prepared yet my report as I promised to Eric.
I've been busy with other stuff, but still had in mind doing it :).
But yes, basically that report is what I would have written, so you
have my +1.  ;)

Cheers,

Alex

>=20
> Bastien
>=20
> Le lun. 6 f=C3=A9vr. 2023 =C3=A0 18:45, Eric Blake <eblake@redhat.com> =
a =C3=A9crit :
>>
>> On Sun, Feb 05, 2023 at 04:28:36PM +0100, Alejandro Colomar wrote:
>>
>> Regardless of the merits of the patch, let's not introduce typos:
>>
>>> +++ b/man3type/sockaddr.3type
>>> @@ -120,6 +120,26 @@ .SH NOTES
>>>  .I <netinet/in.h>
>>>  and
>>>  .IR <sys/un.h> .
>>> +.SH BUGS
>>> +.I sockaddr_storage
>>> +was designed back when strict aliasing wasn't a problem.
>>> +Back then,
>>> +one would define a variable of that type,
>>> +and then access it as any of the other
>>> +.IR sockaddr_ *
>>> +types,
>>> +depending on the value of the first member.
>>> +This is Undefined Behavior.
>>> +However, there is no way to use these APIs without invoking Unedfine=
d Behavior,
>>
>> Undefined
>>
>>> +either in the user program or in libc,
>>> +so it is still recommended to use this method.
>>> +The only correct way to use different types in an API is through a u=
nion.
>>> +However,
>>> +that union must be implemented in the library,
>>> +since the type must be shared between the library and user code,
>>> +so libc should be fixed by implementing
>>> +.I sockaddr_storage
>>> +as a union.
>>>  .SH SEE ALSO
>>>  .BR accept (2),
>>>  .BR bind (2),
>>
>> Also, while I could raise the issue with the Austin Group on your
>> behalf to get the POSIX wording improved, I think it would work better=

>> if you initiate a bug report rather than having me do it:
>>
>> https://www.austingroupbugs.net/main_page.php
>>
>> --
>> Eric Blake, Principal Software Engineer
>> Red Hat, Inc.           +1-919-301-3266
>> Virtualization:  qemu.org | libvirt.org
>>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------JFG9csQQbZJ6Ui07mdFWym87--

--------------mcO6DJocvMkKprtIDiS2DuHl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQYOioACgkQnowa+77/
2zL71A//egN8dcXcKW6MVuqeh31dh7VJi43cKW/5nh3XtE+m3GBlbCL/gJiKk52q
HNt/J7S1PnTEMoIQ7CwZR78rXuyW5vkJXAqBjYEBMunv+2LDcGei+dxDOVavg+FA
Qd7RdHSzI/vvOdAtCbhrnIdBKsLfBIWEDMbO78Bmi74IXx8n6xFGAS1DzN5agMZi
uq4bMBZaraayYLL7U6RBBSv9HaEjrLGuJFc8GgiE6YsGha/kUP0AqN+63DInqGls
o06ocvlEzPsP7dTqUE/Eom7tVKP5xUk22aTLbVyf5+UC8bTEktcR3PQQhlIUjDVS
t4Pse8trnWFIh+Q1rnTelXRMguMbySqmvW6WdN8TmVDfb/BG5wwWpJv2EXbmD28j
VknnZMvaR1zxLexMVIbLMUrU/vMhpXMTafvOzbrXD3zK8+VUoVHHxjw60WJHWL7S
pGbyXm5mVOa19ErbVt1pcODeJ93siExUTAjXY66ZVP334ijHCbTxk/csPF6kY4RI
qfxCZN7TDPmmIA0bFJeYQ+lrLnvs/SkmE6E0qXFyJ7MDyG8dEoxsAtt0T3gkW8My
Xhu1/HWKh2CwHOZh+9lHbtRN8R1SIziKaFg0uanIwyKc9B162x3PQyrIlAb45Gh1
MXfPyMkr/iAL2kRv56P2uUTPfpfb2MTLOpMKlWYcsAlTLbEvhcs=
=bRBy
-----END PGP SIGNATURE-----

--------------mcO6DJocvMkKprtIDiS2DuHl--
