Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A943A6D347B
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 00:01:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbjDAWB5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 18:01:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjDAWB4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 18:01:56 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC1051E73D
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 15:01:54 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id l37so14929901wms.2
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 15:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680386513; x=1682978513;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t0B910mG1U0UdPBkStkMF4Fw03v29rPUUXtOV4Gq97k=;
        b=hj8V4W3D6qDr2jn8pQUomhiffVyyy0Kctw4jFShX4dFD9W916lt5YTGDwQjTRpauRH
         0Mmvla4iAh7nCoQxzkH+MLlWHma3Je11kZ5auccjZduvYkvqnq8EvBEfHL818exaraNu
         KDigx4y/SGEO5et/xFzAUeJAyF9VF9ad3wIg9AP4ODKlCelpjnpWgKpDAaskcvr7Svhd
         32krPVR72IW5X8q+8Kj0ow9MWc/ACMxCDI5ztXrra2WExr0UxkLlaqvA798duouAMJ7b
         roPCiu9nYEUuHTEn9IEK+nERPfpi3OyZ53oeHYRvVYk6J2O9ji0ahDDHJS3WjoJ7LxSW
         jXLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680386513; x=1682978513;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t0B910mG1U0UdPBkStkMF4Fw03v29rPUUXtOV4Gq97k=;
        b=ezzTOVkeYGTQRdg7qyEVb/nogd/1Mqh69R52dXP65GKVYsbnmL6kXDJ39uBJs3CL/X
         LaFylMpMBiLPzPvd1+dsXjvgaHnkFlrfwvpVayKBshr2X19e1mGpU0p5usp32uhj5YpZ
         19d8jp/36BaFKSE9afZKEolCtOw8YNnjSisHly6CH+Gml5Rql4iqCNKwgeD3avERt5Gy
         LQnFGTeBKOCk6xz3DygO/PBRObJProy/pmH4oANlf185dXrQrv2Xv3tQZUHoKLNB9ZKL
         pulxxz5Rs7KbWJTPPTRPGd8l98xTvISPv41O0jWFxBJ4Fugbl2ZqOFVIUPmSp3ZH+oy6
         bQeA==
X-Gm-Message-State: AO0yUKWC1/IlbHGSbGBgEriQP5sF3HNj9z299i3fo5qDqpn2LOVICDmA
        eIcR3iBNKxHeHKzGZVgfcFo=
X-Google-Smtp-Source: AK7set/vys9h2wzOBb5awdjhE85kSAolXodTaHoSno5HLfIsBm5zr79Ou3fZGU7ZCyCSKuxc33sOJQ==
X-Received: by 2002:a05:600c:d9:b0:3ed:46e2:85fb with SMTP id u25-20020a05600c00d900b003ed46e285fbmr22547118wmm.33.1680386512951;
        Sat, 01 Apr 2023 15:01:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id iv19-20020a05600c549300b003ef69873cf1sm14806139wmb.40.2023.04.01.15.01.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 15:01:52 -0700 (PDT)
Message-ID: <7eda6974-1f1f-66aa-f63c-f33daf2ab6e1@gmail.com>
Date:   Sun, 2 Apr 2023 00:01:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230401.1316d7f843d7@gnoack.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------I1XGRusIbXB9tUcrtrDCOigM"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------I1XGRusIbXB9tUcrtrDCOigM
Content-Type: multipart/mixed; boundary="------------x93ytG9KkAFmb0jzu9i75Nzo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <7eda6974-1f1f-66aa-f63c-f33daf2ab6e1@gmail.com>
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
In-Reply-To: <20230401.1316d7f843d7@gnoack.org>

--------------x93ytG9KkAFmb0jzu9i75Nzo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hola G=C3=BCnther :)

On 4/1/23 19:19, G=C3=BCnther Noack wrote:
> Hello Alejandro!
>=20
> On Sat, Apr 01, 2023 at 12:29:35AM +0200, Alejandro Colomar wrote:
>> Hi G=C3=BCnther,
>>
>> On 3/24/23 18:24, G=C3=BCnther Noack wrote:
>>> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
>>> ---
>>>  man7/landlock.7 | 65 ++++++++++++++++++++++++++++++++++++++++++++++-=
--
>>>  1 file changed, 61 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/man7/landlock.7 b/man7/landlock.7
>>> index 9c305edef..d1214ba27 100644
>>> --- a/man7/landlock.7
>>> +++ b/man7/landlock.7
>>> [...]
>>> +.EX
>>> +/* Table of available file system access rights by ABI version */
>>> +__u64 landlock_fs_access_rights[] =3D {
>>> +    (1ULL << 13) \- 1,  /* ABI v1                 */
>>> +    (1ULL << 14) \- 1,  /* ABI v2: add "refer"    */
>>> +    (1ULL << 15) \- 1,  /* ABI v3: add "truncate" */
>>
>> Do these magic numbers have macros?  Are users expected to use
>> the magic numbers directly?
>=20
> You are right to point this out - it's the ugly part here :-/
>=20
> These are bitmasks for the different access rights which are supported
> at each ABI version, so they are a bitwise OR of a long list of
> LANDLOCK_ACCESS_FS_* constants.
>=20
> I am aware of three ways to write this out.
> Please let me know which of these three you prefer.
> (or maybe you have an idea for another alternative?).
>=20
> (It feels out of scope for this documentation patch, but do you think
> these bitmasks should be defined in the uapi/linux/landlock.h header?
> You have looked at so many man pages already -- Do you happen to know
> other places in the kernel API where such a problem has come up?)

I don't remember having seen something similar in other pages.

I think defining a macro in uapi headers could be the right thing to
do.  Something like LANDLOCK_ACCESS_FS_RIGHTS_MASK_ABI_{1,2,3} or
other similar name?

>=20
>=20
> 1) Make assumptions about the numbers, for brevity
>    (as done in the patch I sent).
>=20
> __u64 landlock_fs_access_rights[] =3D {
>     (1ULL << 13) - 1,  /* ABI v1                 */
>     (1ULL << 14) - 1,  /* ABI v2: add "refer"    */
>     (1ULL << 15) - 1,  /* ABI v3: add "truncate" */
> }
>=20
> This is the shortest variant,
> but it does not use the Landlock constants from the header.
>=20
>=20
> 2) Use the constants from the header and OR them.
>=20
> This is the "most correct" way, but I feel that it might be too
> verbose for a documentation example.  What do you think?
>=20
> __u64 landlock_fs_access_rights[] =3D {
>     /* ABI v1 */
>     LANDLOCK_ACCESS_FS_EXECUTE |
>     LANDLOCK_ACCESS_FS_WRITE_FILE |
>     LANDLOCK_ACCESS_FS_READ_FILE |
>     LANDLOCK_ACCESS_FS_READ_DIR |
>     LANDLOCK_ACCESS_FS_REMOVE_DIR |
>     LANDLOCK_ACCESS_FS_REMOVE_FILE |
>     LANDLOCK_ACCESS_FS_MAKE_CHAR |
>     LANDLOCK_ACCESS_FS_MAKE_DIR |
>     LANDLOCK_ACCESS_FS_MAKE_REG |
>     LANDLOCK_ACCESS_FS_MAKE_SOCK |
>     LANDLOCK_ACCESS_FS_MAKE_FIFO |
>     LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>     LANDLOCK_ACCESS_FS_MAKE_SYM,
>=20
>     /* ABI v2: Add "refer" */
>     LANDLOCK_ACCESS_FS_EXECUTE |
>     LANDLOCK_ACCESS_FS_WRITE_FILE |
>     LANDLOCK_ACCESS_FS_READ_FILE |
>     LANDLOCK_ACCESS_FS_READ_DIR |
>     LANDLOCK_ACCESS_FS_REMOVE_DIR |
>     LANDLOCK_ACCESS_FS_REMOVE_FILE |
>     LANDLOCK_ACCESS_FS_MAKE_CHAR |
>     LANDLOCK_ACCESS_FS_MAKE_DIR |
>     LANDLOCK_ACCESS_FS_MAKE_REG |
>     LANDLOCK_ACCESS_FS_MAKE_SOCK |
>     LANDLOCK_ACCESS_FS_MAKE_FIFO |
>     LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>     LANDLOCK_ACCESS_FS_MAKE_SYM |
>     LANDLOCK_ACCESS_FS_REFER,
>    =20
>     /* ABI v3: add "truncate" */
>     LANDLOCK_ACCESS_FS_EXECUTE |
>     LANDLOCK_ACCESS_FS_WRITE_FILE |
>     LANDLOCK_ACCESS_FS_READ_FILE |
>     LANDLOCK_ACCESS_FS_READ_DIR |
>     LANDLOCK_ACCESS_FS_REMOVE_DIR |
>     LANDLOCK_ACCESS_FS_REMOVE_FILE |
>     LANDLOCK_ACCESS_FS_MAKE_CHAR |
>     LANDLOCK_ACCESS_FS_MAKE_DIR |
>     LANDLOCK_ACCESS_FS_MAKE_REG |
>     LANDLOCK_ACCESS_FS_MAKE_SOCK |
>     LANDLOCK_ACCESS_FS_MAKE_FIFO |
>     LANDLOCK_ACCESS_FS_MAKE_BLOCK |
>     LANDLOCK_ACCESS_FS_MAKE_SYM,
>     LANDLOCK_ACCESS_FS_REFER |
>     LANDLOCK_ACCESS_FS_TRUNCATE,
> }
>=20
> If I were to write production code, I would probably write it out like
> that, to be explicit -- but it feels like a long code example for a
> man page? WDYT?

Similar feelings here.

>=20
>=20
> 3) Third option is the middle way,
>    naming the "highest" known access right for each ABI version:
>=20
> __u64 landlock_fs_access_rights[] =3D {
>     (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) - 1,  /* ABI v1                 =
*/
>     (LANDLOCK_ACCESS_FS_REFER << 1) - 1,     /* ABI v2: add "refer"    =
*/
>     (LANDLOCK_ACCESS_FS_TRUNCATE << 1) - 1,  /* ABI v3: add "truncate" =
*/
> }

I'm not sure if I like this one.  I'll leave it up to you to decide
the one you like.  :)

>=20
> In this case, we still make the assumption that the supported rights
> are the "highest" right plus all of the bits in lower order places.
>=20
>=20
>>> +/* Only use the available rights in the ruleset. */
>>> +attr.handled_access_fs &=3D landlock_fs_access_rights[abi \- 1];
>>> +.EE
>>> +.in
>>> +.PP
>>> +The available access rights for each ABI version are listed in the
>>> +.B VERSIONS
>>> +section.
>>> +.PP
>>> +If our program needed to create hard links or rename files between d=
ifferent directories
>>
>> Please keep lines below 80 columns.  Break lines at phrase
>> boundaries as appropriate (e.g., in this line:)
>>
>> s/ or /\nor /
>=20
> Thanks, applied.  Will be fixed in the next patch version.
>=20
>=20
>>> +.RB ( LANDLOCK_ACCESS_FS_REFER ),
>>> +we would require the following change to the backwards compatibility=
 logic:
>>> +Directory reparenting is not possible in a process restricted with L=
andlock ABI version 1.
>=20
> Fixed it on this line too.
>=20
> Thank you for the review and for applying the two earlier patches!

:)

Cheers,
Alex

> =E2=80=93G=C3=BCnther

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------x93ytG9KkAFmb0jzu9i75Nzo--

--------------I1XGRusIbXB9tUcrtrDCOigM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQoqcgACgkQnowa+77/
2zICew//VOROo9AhHFdSa9W8z0dHzP439UvpcHIzll6S0HMuriS4FsW9SNSi0ZPX
mPFfxk/ZfCN4wxMd0mZSNUTfAS3Ost60bAZLfFKCrmNL/RrwBvnhRyoBoi1zdFEj
kYV+jYnvCvMVCP05dEnl1kNaklcTOZaPQ+MnunRqZbx2zadrebhP2PXf99rpA3Wz
AKE7Ysd8hCTqbUp6HK7anNLw2fQO7xqrlPZV53arUEBnmIh42fKe7pD5IoH/Jljn
oXaS36xoQn1GmqEEtd1tZAaWEhG8geXD6+679rkES1+OB/S5UaQZcr4L64nQRhDv
KTy3oq81Hmct/pSVEYYrmSmAeBWt58IzVYz7lkhJFCVGISOWrGusMY3NV19mFJ+I
gYgj2+y/pFcGoWyQKH0jhZYuHfmttwxPkHiCYdaQv2Boi9Xf3x1IiT4cd6D7JrDp
XcPc22sGWCXwtb0ALmxYu0a5xtjGGHYyucMyOYQ0riw7Z1dfLFrHEHl3V6XiZ9VD
SZI1pR4LgSo7YS7RdZMFDcCHJL6hdgco56+0dsbp43PzvZ4TKHfuitvYbGvtsDZR
UsI8/R1iN1ysydLI+9t05t8x3v9sUVMMAih9k9DSqHcVaG8SachO7ApKaK0bz6Xf
4YUDfRavO8iugomg8p8TMKxR0YOstcTVrhY6ORdyy19btYGaQiQ=
=jKtH
-----END PGP SIGNATURE-----

--------------I1XGRusIbXB9tUcrtrDCOigM--
