Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F12D6D9D92
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 18:31:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237404AbjDFQba (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 12:31:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236627AbjDFQb3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 12:31:29 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B27E7EC9
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 09:31:28 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id r11so40092053wrr.12
        for <linux-man@vger.kernel.org>; Thu, 06 Apr 2023 09:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680798686; x=1683390686;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lcCGAbJqw90LO7oNh6OTwmshJbMhTlT+b5RK8YHx6ic=;
        b=qnLEeOLr1ftAf9WXdDPLjBUb/528wjKx6gCzUngJdpR2YsdqAVBykLrO1zlJyV6xZO
         INWj7z8hC5V89IXXnhxzIX/C4dZ5kUgkUNtPHE5/bBa9swWNijj6KBro99LSp6FFxVvh
         N9ZlgD6zmdWVY2B+cqPHAEa7hP0yCMRwGj/0gJGmi+BFBt2kjQi4kdFuzQr22rm+mmvM
         jmpOufooxKdeyLrh4bXGRYjq9rmRO/0w1zD1mkv7mxu9nHbUUbJOW5sboBTT/r5twAgj
         oRIYSjTNlZvnkKChzRBVDq5eTcnqVU/R8SVp4/rkmn/nL0FysJUEF5YErsTJGMJPlNDE
         Nbxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680798686; x=1683390686;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lcCGAbJqw90LO7oNh6OTwmshJbMhTlT+b5RK8YHx6ic=;
        b=efzGmEM67t9ts45lJTWsrnYQJ7SCWHPWiD3nq4ZdvAner9sJsICIVbS1B/puvHAIjH
         bSvvaejNIbNHSPEE4FGVoO5VOVBO6fqNQMc+n9jO2DaSLI5cSY4e0uWhYITgZaH5BkQ0
         WEUq2kK7/T/kGlJJSLlC2jrHv8Xj3J71lhmUZchsqriT+8uutQkYEXhe1p5GvRXBsccg
         LIP37XTCA+b5UTYmlogVigQ9swoEKrJqvYR51ljZi5GUcvCfpNGrnQIzSrWlVlcyLRpR
         bs/bCPsP4SyNGDFsNG6Ok6SsRLBFWjyLxuGWTlEEbopo7g+Rqu26Fdglhkk80RH0G15b
         IZGw==
X-Gm-Message-State: AAQBX9fFVRKyhnmWxfjujsj8I7KX3UloG6UjJVPS7O/6njRBHH3XUqbu
        ZWhSMFhykf1IaxfjnqDU2F8=
X-Google-Smtp-Source: AKy350ZCg9GoT30OiHXRo4v2Ax2DXIqCAdzyZLsWVadNfWjAnc2mJXNFOdyoIELgxaR4vhTxa/bAqg==
X-Received: by 2002:adf:f14c:0:b0:2ce:bd2e:1fea with SMTP id y12-20020adff14c000000b002cebd2e1feamr7081331wro.26.1680798686494;
        Thu, 06 Apr 2023 09:31:26 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f3-20020adff983000000b002ef57ea5d74sm925531wrr.27.2023.04.06.09.31.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 09:31:26 -0700 (PDT)
Message-ID: <7396024c-62d4-a19c-b7bc-e24a9d4bcb31@gmail.com>
Date:   Thu, 6 Apr 2023 18:31:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] sockaddr.3type: Document that sockaddr_storage is the API
 to be used
Content-Language: en-US
To:     Eric Blake <eblake@redhat.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        glibc <libc-alpha@sourceware.org>, GCC <gcc@gcc.gnu.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>, Sam James <sam@gentoo.org>
References: <20230330171310.12330-1-alx@kernel.org>
 <ga44kb7s2atbgl6exbjvpffp6czurhxff4nxf7ugflyfpjhlb5@pvwnm2udgso5>
 <9b528ba9-e1c6-1c03-8ec7-177c4dc66e19@gmail.com>
 <qeo4eortjhpardcwgpjf6ryp56ivpzauzceszufkgdc2yrdrp7@ucmx7voexotw>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <qeo4eortjhpardcwgpjf6ryp56ivpzauzceszufkgdc2yrdrp7@ucmx7voexotw>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------awn0eppevvrHafHahCFsb59V"
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
--------------awn0eppevvrHafHahCFsb59V
Content-Type: multipart/mixed; boundary="------------ahshnqOhZmM59WbBltVzJbsN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eric Blake <eblake@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
 glibc <libc-alpha@sourceware.org>, GCC <gcc@gcc.gnu.org>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>,
 Rich Felker <dalias@libc.org>, Andrew Clayton <andrew@digital-domain.net>,
 Richard Biener <richard.guenther@gmail.com>,
 Zack Weinberg <zack@owlfolio.org>, Florian Weimer <fweimer@redhat.com>,
 Joseph Myers <joseph@codesourcery.com>, Jakub Jelinek <jakub@redhat.com>,
 Sam James <sam@gentoo.org>
Message-ID: <7396024c-62d4-a19c-b7bc-e24a9d4bcb31@gmail.com>
Subject: Re: [PATCH] sockaddr.3type: Document that sockaddr_storage is the API
 to be used
References: <20230330171310.12330-1-alx@kernel.org>
 <ga44kb7s2atbgl6exbjvpffp6czurhxff4nxf7ugflyfpjhlb5@pvwnm2udgso5>
 <9b528ba9-e1c6-1c03-8ec7-177c4dc66e19@gmail.com>
 <qeo4eortjhpardcwgpjf6ryp56ivpzauzceszufkgdc2yrdrp7@ucmx7voexotw>
In-Reply-To: <qeo4eortjhpardcwgpjf6ryp56ivpzauzceszufkgdc2yrdrp7@ucmx7voexotw>

--------------ahshnqOhZmM59WbBltVzJbsN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eric,

On 4/6/23 18:24, Eric Blake wrote:
> On Wed, Apr 05, 2023 at 02:42:04AM +0200, Alejandro Colomar wrote:
>> Hi Eric,
>>
>> I'm going to reply both your emails here so that GCC is CCed, and they=
 can
>> suggest better stuff.  I'm worried about sending something to POSIX wi=
thout
>> enough eyes checking it.  So this will be a long email.
>=20
> Because your mail landed in a publicly archived mailing list, the
> POSIX folks saw it anyways ;)

:)

>=20
> ...
>>>
>>> Whether gcc already has all the attributes you need is not my area of=

>>> expertise.  In my skim of the glibc list conversation, I saw mention
>>> of attribute [[gnu:transparent_union]] rather than [[__may_alias__]] =
-
>>> if that's a better implementation-defined extension that does what we=

>>> need, then use it.  The standard developers were a bit uncomfortable
>>> directly putting [[gnu:transparent_union]] in the standard, but
>>> [[__may_alias__]] was noncontroversial (it's in the namespace reserve=
d
>>> for the implementation)
>>
>> Not really; implementation-defined attributes are required to use an
>> implementation-defined prefix like 'gnu::'.  So [[__may_alias__]] is
>> reserved by ISO C, AFAIR.  Maybe it would be better to just mention
>> attributes without any specific attribute name; being fuzzy about it
>> would help avoid making promises that we can't hold.
>=20
> On this point, the group agreed, and we intentionally loosened to
> wording to just mention an implementation-defined extension, rather
> than giving any specific attribute name.
>=20
> ...
>>
>> I would just make it more fuzzy about which standard version did what.=

>> How about this?:
>>
>> [[
>> Note that defining the sockaddr_storage and sockaddr structures using
>> only mechanisms defined in editions of the ISO C standard may produce
>> aliasing diagnostics.  Because of the large body of existing code
>> utilizing sockets in a way that could trigger undefined behavior due
>> to strict aliasing rules, this standard mandates that the various sock=
et
>> address structures can alias each other for accessing their first memb=
er,
>=20
> The sa_family_t member is not necessarily the first member on all
> platforms (it happens to be first in Linux, but as a counter-example,
> https://man.freebsd.org/cgi/man.cgi?query=3Dunix&sektion=3D4 shows
> sun_family as the second one-byte field in struct sockaddr_un).  The
> emphasis is on derefencing the family member (whatever offset it is
> at) to learn what cast to use to then safely access the rest of the
> storage.
>=20
> As such, here's the updated wording that the Austin Group tried today
> (and we plan on starting a 30-day interpretation feedback window if
> there are still adjustments to be made to the POSIX wording):
>=20
> https://austingroupbugs.net/view.php?id=3D1641#c6255

Thanks!  That wording (both paragraphs) LGTM.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------ahshnqOhZmM59WbBltVzJbsN--

--------------awn0eppevvrHafHahCFsb59V
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQu89wACgkQnowa+77/
2zIvow//eXzliYujjolqyV/TarnCOgAQ11EHCt+V7Voif2Qlji9YkD7HxzyxUF52
q2CSIEDG7VViXHZzkQkCwESN3DKh9nUDNBtB54YSzzuPDJQjATbEJ1m/xwJTdZSi
uXsY07ghw5IUvtOZsU6jksovntWkwQHQVIuXWA/XDS00oNqY2DYZSOnUlG74sBP5
QjaRIhF5sDdNrv5VsAwweCPdRa+lFbLn6mpvpqZCgWcO1wZen+R06Jc49bpemcXU
61edoeZDojkueE0ugbsy1y0YzAti2diHo77mVZ9F2oA6HJNoaVYo7K+m5LjcSWIp
XsnUtaAw0gVMJpLa6Ov8lhaiGCs+omjMv9KEE5k4laiI6A2HPoUSPW+v+RpvsVwL
F/M+yrDsmFtnV7RO2Fik3F4ol29r5aJLiVB/mZy1YmTRaswgvwoYnSPEF5AZJbgD
fZd3Ar/dvs/xckmBtwy3ylMFYMbUq2HGo/8MQ0DbvTufOAGZm3/aEk62ybwzljVB
seOCdaAlkmWe9Ot3CvO4h928OO7wmAFKrXCMK/JcZH3BID3cnUnVd3th+6Fx54QN
4oa44Yoi+/b6BdlLeqhUFFJu5mwNetryRHyDRBqctTdY4GyV0dgyE+6gbL8fhr6P
+HoDwTfq3mc6hEFlc0xLDhfETfxmcH+uUPUKaQCVx8sEFZamVGY=
=85OZ
-----END PGP SIGNATURE-----

--------------awn0eppevvrHafHahCFsb59V--
