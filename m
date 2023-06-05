Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F53F722723
	for <lists+linux-man@lfdr.de>; Mon,  5 Jun 2023 15:15:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230223AbjFENPV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jun 2023 09:15:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233990AbjFENPT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jun 2023 09:15:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49915DA
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 06:15:18 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D20CD61262
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 13:15:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76521C433EF;
        Mon,  5 Jun 2023 13:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685970917;
        bh=i3LjZCr7A1dKeCYVvQ3iqptrZMH5iqq/xBgDeuT/Ot8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=qmdLMuaMDgH0BVgRjS0+4k7ydYifsFkd/oMTnv46xBfAOvQ19SwEaE2b+wOSHLjhe
         lnz7WYXb3i+lD+6IgTtaHw2sX6qEOn+mkgwjS1zcsFz1GjR9laPEH9p11dLwJkDrRY
         MeWT0SUai9v9ieP/hcnFfCnSxcAGEj0aMyBqQqwqyrp10KmnU164IBzjN6bajngTLY
         /hsfWiwnQkugbf+TT3TMuaNbJB1kZPMOjd49PEQOHLwXmrRk89BdV0Hn6kLtj4gxN8
         IF2j7sQScE+S8QWwqLkDiDUs51yIU+9Y7hWn9QMur4YxQdmZ0xv84z6vrwo10PInN0
         ScDtW0HDmmTbQ==
Message-ID: <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>
Date:   Mon, 5 Jun 2023 15:15:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
Content-Language: en-US
To:     Yedidyah Bar David <didi@redhat.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
 <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
 <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wgUPLJa2PH9CnIv0mzOXW8Ob"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wgUPLJa2PH9CnIv0mzOXW8Ob
Content-Type: multipart/mixed; boundary="------------BakHzGjsdKnvcFHSroxRbQnN";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Yedidyah Bar David <didi@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Message-ID: <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org>
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
 <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
 <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
In-Reply-To: <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>

--------------BakHzGjsdKnvcFHSroxRbQnN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 6/5/23 14:34, Yedidyah Bar David wrote:
> Hi,
>=20
> On Mon, Jun 5, 2023 at 2:35=E2=80=AFPM Alejandro Colomar <alx.manpages@=
gmail.com> wrote:
>>
>> Hi Yedidyah,
>>
>> On 6/5/23 13:17, Yedidyah Bar David wrote:
>>> Clarify that the behavior of these functions is undefined if c is
>>> neither in the unsigned char range nor EOF.
>>>
>>> I copied the added text from toupper.3.
>>>
>>> In practice, calling them on out-of-range values - tested with recent=

>>> glibc/gcc - is simply reading from random process memory - meaning, y=
ou
>>> either get some garbage, if the memory was readable, or a segmentatio=
n
>>> fault. See also:
>>>
>>> https://stackoverflow.com/questions/65514890/glibcs-isalpha-function-=
and-the-en-us-utf-8-locale
>>>
>>> Signed-off-by: Yedidyah Bar David <didi@redhat.com>
>>
>> This is already covered by the NOTES section, isn't it?
>=20
> It's _mentioned_ there, correct - but not sure it's covered.

You're right.  That's why I've sent the patch mentioning UB.
What do you think about that one?  (I now see that you like it).

>=20
> It's also mentioned in toupper.3's NOTES.

I'll check that page to see if it needs some simplifying.

>=20
> I think it's helpful to explicitly say that behavior is undefined in th=
is case.

Yep.

> If you feel like doing this inside NOTES, one way or another, ok for me=
=2E
>=20
> Right now, NOTES says what you must do, but not what happens if you
> don't do that.
>=20
> It also says that for the common case of using them on signed char, you=
 should
> explicitly cast to unsigned char, first. It also tries to explain why t=
his is
> necessary. The explanation explains why it's necessary for compliance w=
ith the
> standard, but not why it's a good thing more generally - latter is not
> explained,
> and AFAICT from reading glibc sources, is not necessary - see e.g. this=
 comment
> from ctype.h:
>=20
>    These point into arrays of 384, so they can be indexed by any `unsig=
ned
>    char' value [0,255]; by EOF (-1); or by any `signed char' value
>    [-128,-1).  ISO C requires that the ctype functions work for `unsign=
ed
>    char' values and for EOF; we also support negative `signed char' val=
ues
>    for broken old programs.

Consider what happens with character 0xFF.  If char is signed, it will be=

interpreted as -1 (i.e., EOF).  We're lucky, because 0xFF is not a meanin=
gful
char, so probably all isXXX() functions return false for it, but it's sli=
ghtly
different from EOF semantically.  If no locales give a meaning for 0xFF, =
maybe
the cast can be removed from ISO C.  I do something different: use
-funsigned-char when compiling, so char is effectively unsigned char (exc=
ept
that pointers do not convert automatically).

>=20
> The real reason why you should not call them on negative values other t=
han
> EOF - casted to unsigned char or not - is simply that most likely this =
isn't
> what you meant to do. But that's not about compliance with the standard=
=2E..

I guess the standard was cautious to not make 0xFF a useless char.  If th=
at's
not an issue, I agree, and these functions could do the conversion intern=
ally.

Cheers,
Alex

>=20
> In my patch, I felt like "something should be done", but when deciding =
what
> actually should be done, I decided to simply go with what's in toupper.=
3,
> which seems good enough for me.
>=20
> So, what do you think?
>=20
>>  BTW, I'll
>> rename that section to CAVEATS.
>=20
> Not sure all of its current content is a caveat.
>=20
> Best regards,
>=20
>>
>> Thanks,
>> Alex
>>
>>> ---
>>>  man3/isalpha.3 | 9 +++++++++
>>>  1 file changed, 9 insertions(+)
>>>
>>> diff --git a/man3/isalpha.3 b/man3/isalpha.3
>>> index 443c2aa09..8ad997c29 100644
>>> --- a/man3/isalpha.3
>>> +++ b/man3/isalpha.3
>>> @@ -145,6 +145,15 @@ is the special locale object
>>>  .BR duplocale (3))
>>>  or is not a valid locale object handle.
>>>  .PP
>>> +If
>>> +.I c
>>> +is neither an
>>> +.I "unsigned char"
>>> +value nor
>>> +.BR EOF ,
>>> +the behavior of these functions
>>> +is undefined.
>>> +.PP
>>>  The list below explains the operation of the functions without
>>>  the "_l" suffix;
>>>  the functions with the "_l" suffix differ only in using the locale o=
bject
>>> --
>>> 2.31.1
>>>
>>> Best regards,
>>> --
>>> Didi
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

--------------BakHzGjsdKnvcFHSroxRbQnN--

--------------wgUPLJa2PH9CnIv0mzOXW8Ob
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR939kACgkQnowa+77/
2zKHKQ//Ul/HreKV6bQRA/fW2nNa4DwGTQ/3cjPoYZfDTr0EesKg1bptHwjyxOCf
sE8yqFUb7jyvWQm1dxHcHT7Ax60E52HreL+SkfcLT8nEGNkH0DysH7ubPX2/Ro33
JaFr/JPdFElxuhS7K3GmWIs/r34dS4reUdQMPtCfw2Zptf1LHEBlclSgZ7dHZeBA
Zw/Zf7skmmj7hAv3CfVNoGGuH/3pDD/yETNuZ1RhGhUGTRcGfdu2prw8NfkdmAlN
+gdgZdwJMv6g6LT5OUvPmoD5XVnwOCm7/mLe+hna//CV8c/4KpVfOvxaCMVqjDJw
54vIAvSIro9RNx6+dfbaYmSYNABSF1E5LmhP0QMGIKhjNFhaMwgD5bqsEqautl4F
gnnnOGtcmwqDw2JyWS0NG3HGIUVT5a7BCGuczWlrNNjh6Qj51efPNPVEEjmXCD48
kdrnXrKI8Nil3F107jVFh6Va3tzLAMXV3EGy/XzEyUjX7nxVDo4CwRhgsmtgKlKg
pQJu3XU4qZPTQ/0X8FInSj1dG2n0Y0khcPYKfJlD7sBo1wOZnQQXFyJkHEjRmE2x
8fqUFytYF4yrQG/ctj8P2jtde53SitXgHvJReOPm3v4dQc5PpwA24PLDCBjOwMz2
bAC4JErbjXnh2fwMgGhA3mBLvUFPKySfvlqO4d/J8Ikuyk93OZU=
=D14E
-----END PGP SIGNATURE-----

--------------wgUPLJa2PH9CnIv0mzOXW8Ob--
