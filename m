Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D301E722732
	for <lists+linux-man@lfdr.de>; Mon,  5 Jun 2023 15:17:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232820AbjFENR3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jun 2023 09:17:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232683AbjFENR1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jun 2023 09:17:27 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6BA2EA
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 06:17:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 692BF6118D
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 13:17:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B1B7C433D2;
        Mon,  5 Jun 2023 13:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685971044;
        bh=xNb1FYoo+ivhB2tALPfpSQVkLC9Rb6lEKvFH6KLTRCg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=tCISRVCrR0VQoSe7Y8NyZ3p/FsQcDFTUnrKD/tJhGXc3xW1KwxDhMcQWalMxNzQwu
         /ZyXTy5h1mrpZ4MrD6lAgZJIRTHUaA+T3sEvRu4Pv6o5H2TEyZPlbx3u+D94Rz0JHD
         mV38dMvfmD6ogXgpf80H6EJJVqa6/SeXZNiukfJl8OQyMycD4jXVAuUKEDiKH8GnMM
         OQryucYni+wSOQtif9cIQqGFRQJAPu5CLtYtEp05N2fGSfH3g30Dqgg6Tf4KPkwQrB
         SPze8CwSjSE5ZuJTbYaTesvXQKXNBl5/Gk1dYGG5ZJ1kW7HZdpNNALRNoD2LtAAI4E
         amwKe86/TJ4zQ==
Message-ID: <b726fef8-f617-3a9d-7ace-eb8eb572c7a4@kernel.org>
Date:   Mon, 5 Jun 2023 15:17:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
Content-Language: en-US
To:     Yedidyah Bar David <didi@redhat.com>
Cc:     linux-man@vger.kernel.org, Sam James <sam@gentoo.org>
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
 <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
 <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
 <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WI16EBgMns9ZddzkL51kXeBI"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------WI16EBgMns9ZddzkL51kXeBI
Content-Type: multipart/mixed; boundary="------------XMYx5SWsF2FzCB52KqIbQMd5";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Yedidyah Bar David <didi@redhat.com>
Cc: linux-man@vger.kernel.org, Sam James <sam@gentoo.org>
Message-ID: <b726fef8-f617-3a9d-7ace-eb8eb572c7a4@kernel.org>
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
 <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
 <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
 <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>
In-Reply-To: <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>

--------------XMYx5SWsF2FzCB52KqIbQMd5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 6/5/23 15:15, Alejandro Colomar wrote:
> Hi,
>=20
> On 6/5/23 14:34, Yedidyah Bar David wrote:
>> Hi,
>>
>> On Mon, Jun 5, 2023 at 2:35=E2=80=AFPM Alejandro Colomar <alx.manpages=
@gmail.com> wrote:
>>>
>>> Hi Yedidyah,
>>>
>>> On 6/5/23 13:17, Yedidyah Bar David wrote:
>>>> Clarify that the behavior of these functions is undefined if c is
>>>> neither in the unsigned char range nor EOF.
>>>>
>>>> I copied the added text from toupper.3.
>>>>
>>>> In practice, calling them on out-of-range values - tested with recen=
t
>>>> glibc/gcc - is simply reading from random process memory - meaning, =
you
>>>> either get some garbage, if the memory was readable, or a segmentati=
on
>>>> fault. See also:
>>>>
>>>> https://stackoverflow.com/questions/65514890/glibcs-isalpha-function=
-and-the-en-us-utf-8-locale
>>>>
>>>> Signed-off-by: Yedidyah Bar David <didi@redhat.com>
>>>
>>> This is already covered by the NOTES section, isn't it?
>>
>> It's _mentioned_ there, correct - but not sure it's covered.
>=20
> You're right.  That's why I've sent the patch mentioning UB.
> What do you think about that one?  (I now see that you like it).
>=20
>>
>> It's also mentioned in toupper.3's NOTES.
>=20
> I'll check that page to see if it needs some simplifying.
>=20
>>
>> I think it's helpful to explicitly say that behavior is undefined in t=
his case.
>=20
> Yep.
>=20
>> If you feel like doing this inside NOTES, one way or another, ok for m=
e.
>>
>> Right now, NOTES says what you must do, but not what happens if you
>> don't do that.
>>
>> It also says that for the common case of using them on signed char, yo=
u should
>> explicitly cast to unsigned char, first. It also tries to explain why =
this is
>> necessary. The explanation explains why it's necessary for compliance =
with the
>> standard, but not why it's a good thing more generally - latter is not=

>> explained,
>> and AFAICT from reading glibc sources, is not necessary - see e.g. thi=
s comment
>> from ctype.h:
>>
>>    These point into arrays of 384, so they can be indexed by any `unsi=
gned
>>    char' value [0,255]; by EOF (-1); or by any `signed char' value
>>    [-128,-1).  ISO C requires that the ctype functions work for `unsig=
ned
>>    char' values and for EOF; we also support negative `signed char' va=
lues
>>    for broken old programs.
>=20
> Consider what happens with character 0xFF.  If char is signed, it will =
be
> interpreted as -1 (i.e., EOF).  We're lucky, because 0xFF is not a mean=
ingful
> char, so probably all isXXX() functions return false for it, but it's s=
lightly
> different from EOF semantically.  If no locales give a meaning for 0xFF=
, maybe
> the cast can be removed from ISO C.  I do something different: use
> -funsigned-char when compiling, so char is effectively unsigned char (e=
xcept
> that pointers do not convert automatically).
>=20
>>
>> The real reason why you should not call them on negative values other =
than
>> EOF - casted to unsigned char or not - is simply that most likely this=
 isn't
>> what you meant to do. But that's not about compliance with the standar=
d...
>=20
> I guess the standard was cautious to not make 0xFF a useless char.  If =
that's
> not an issue, I agree, and these functions could do the conversion inte=
rnally.

To be clear, I'm talking about this:


$ cat iscntrl.c=20
#include <ctype.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

static const char str_bool[2][8] =3D { "false", "true" };

static inline const char *
strbool(bool x)
{
	return str_bool[!!x];
}

int
main(void)
{
	signed char    s =3D 0xFF;
	unsigned char  u =3D 0xFF;

	printf("iscntrl(-1):  %s\n", strbool(iscntrl(s)));
	printf("iscntrl(255): %s\n", strbool(iscntrl(u)));

	exit(EXIT_SUCCESS);
}


$ ./a.out=20
iscntrl(-1):  false
iscntrl(255): false


>=20
> Cheers,
> Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------XMYx5SWsF2FzCB52KqIbQMd5--

--------------WI16EBgMns9ZddzkL51kXeBI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR94GIACgkQnowa+77/
2zKdsw//WmwtiWYN7NevRaLWFQxjhttN2H0qC9a0q29AtR4sfXq4+FDdH0jUfKBI
wN9UknvBuWq4icVEEEH/kRBgQnrVYELCWSEkEL0c3TUl9j+cKPpZc/vWgW9YZ7jT
GJf0ZW0AI6qv/v/udleQARPtY5ePybrQSuQT8bY9ELCBXDij0V4svpfHa9ECgPsx
ahfQ7d33gKU7WqOBJvh1K5MB2KZwuhgXRx5iHPqHcdA07bArLVZHJ5h6CLVp7lnw
u9X0C9lxS/scyZt0K4X+OeIx0kKgMXKWSmSTzl2wD/C5Aj2cUPN8Y7iek0KWHDMp
p04a7jSSQNP0bv7F1VXK17XoMSEKpukWgMAavsm1maK4IpfsW/bXiXKRsDZ92z03
PBJlOf3MpgrrOFNXaWHfBgDvKpQ+RJDBergxKj89d9cDREa/5nq5ZFQmAhzkRV5P
uZMpdYEOdyGrJ1eRPcJaNnQ3tLA+qyAXnge0jR8wCnzMYHSeEy5B2GA13V0IwtwY
dLtJ7/xxuWJIWRUqFjNoqy0SNASPOiQ8FeGPICT+wHaJPqeGYAo0wLcfXGQvVOT8
s6HwsO1vgDNLVJdVgVSv18VhvnpbFK34H6moc2T+xe37Kx+LS3CgPxp8303Y3VH1
ePF1vI0OfoEia5ciHyFqlMF7fpMPyFg2kXzyWcTfHu9bHm5FdCw=
=xetR
-----END PGP SIGNATURE-----

--------------WI16EBgMns9ZddzkL51kXeBI--
