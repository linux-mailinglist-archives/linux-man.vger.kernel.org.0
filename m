Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31C6871261E
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 14:00:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230172AbjEZMAT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 08:00:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjEZMAS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 08:00:18 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42C84116
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 05:00:17 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f50020e0f8so12163885e9.0
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 05:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685102416; x=1687694416;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7bj4yzlSPbmluBwQk9b+8l+7D57S5Z8OzlGYi8N3mnw=;
        b=R9Z9XKfTYXndOtFW2+oUpSo3V4Vnuow30puqW8gaR8bUDCfRZz0zqJRLbiXNPV1Oe6
         TTrV2xWSON4CCd+GafitO9bye2Eh6Kr07blnVeFxVkMnwFNTtuAwFSqvIULvzbtG6NNH
         pmwMhYhBRSRuHrt8MVEh1zH5uVjX4/4ra7kphr+HkWoB30rG2bUYL8cngHgHwfqFCJKT
         b6ds7y/kqybXZosRjnZCaEHlI9hqnUVIBj+/X+EzZqICB4whs5yOuhiKBczgmffwHaut
         dyykHasjEGeMLbww/pDyoJfXKwWnyCq9t6myz45d4mtIreHscLrYGfO03PcUE8KpxvMZ
         +7CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685102416; x=1687694416;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7bj4yzlSPbmluBwQk9b+8l+7D57S5Z8OzlGYi8N3mnw=;
        b=Q+9Ppxsb+qZR3PlMTbIjkAIyrh19v+gj9PVYpmsPsuIZz+70X/PDONsHO6BeStd8K4
         HiLIPvvQWI0zx7dwDBEXRmoqVcVopqbsTbnPQiHUQzIComQjWqjAQSCwD/GNiDYRtgL3
         NrfTvXG+XahaW2+NGFNHcDVzBtfGONPZ/ucag0jgg4vrIZ0tBgSGTBihhAA/Y9sbK5F4
         sFop0cWYmpEiaQKEUOUk1SCeycpa66KJceS6YGIfC8V1fyMTpglJhXnlAqSVPSWXA5tC
         l8uSkHLENlY+hik+EbqG48AWizBaQBXj+5N7RhQeVkTaFAIriRI1B5UPtiL9LMktLt5H
         kFOg==
X-Gm-Message-State: AC+VfDyE1bm5JoPnefGODMBb3p74hyRjgyeSuv5CSrJd9AJORq1rXUrC
        J0dhk6RGqj4rwCSxcrTEPcym9m5Rp28=
X-Google-Smtp-Source: ACHHUZ6dKKSMAr8nJN/C1IbU3dVUYRXtc9rclyH4ezolrEvw+RiS7vhO4kNV7jhKjqpP2iTFuiXMlQ==
X-Received: by 2002:adf:ed8d:0:b0:2f0:583:44be with SMTP id c13-20020adfed8d000000b002f0058344bemr1426392wro.0.1685102415548;
        Fri, 26 May 2023 05:00:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q18-20020adffed2000000b003047dc162f7sm4847385wrs.67.2023.05.26.05.00.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 05:00:15 -0700 (PDT)
Message-ID: <f705c0fd-6413-8209-ca6f-75894b14be6b@gmail.com>
Date:   Fri, 26 May 2023 14:00:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: SPDX license review requests
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Andi Kleen <ak@linux.intel.com>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <fdb702c8-1411-f143-8932-c18722511b19@gmail.com>
In-Reply-To: <fdb702c8-1411-f143-8932-c18722511b19@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JCkxHRdmL4jF0XwM9RZhDwuF"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------JCkxHRdmL4jF0XwM9RZhDwuF
Content-Type: multipart/mixed; boundary="------------NS7QrgsEo5LbtZ0sxzomUQWY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>, Alan Cox
 <alan@lxorguk.ukuu.org.uk>, Andi Kleen <ak@linux.intel.com>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Adam Dobes <adobes@redhat.com>
Message-ID: <f705c0fd-6413-8209-ca6f-75894b14be6b@gmail.com>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <fdb702c8-1411-f143-8932-c18722511b19@gmail.com>
In-Reply-To: <fdb702c8-1411-f143-8932-c18722511b19@gmail.com>

--------------NS7QrgsEo5LbtZ0sxzomUQWY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 5/26/23 13:58, Alejandro Colomar wrote:
> On 5/26/23 00:56, Alejandro Colomar wrote:
> [...]
>=20
>> Also, Linux-man-pages-copyleft seems to contain a sentence that
>> makes it differ from VERBATIM_PROF:
>>
>> """
>>   The author(s) may
>> not have taken the same level of care in the production of this
>> manual, which is licensed free of charge, as they might when working
>> professionally.
>> """
>>
>> I believe the quality of non-professional code and manuals to be
>> at least as high as the professional one.  We have more freedom to
>> reject crap.  I propose also deprecating Linux-man-pages-copyleft
>> and moving to VERBATIM_PROF as the single surviving license from
>> all four variants.
>=20
> I reconsidered.  The non-pro version does actually reflect reality,
> as it doesn't say the level of care is less, but just different.
> That can --and more often than not does-- mean higher level of care.
>=20
> So, I prefer Linux-man-pages-copyleft over VERBATIM_PROF.
>=20
> <https://github.com/spdx/license-list-XML/issues/1959#issuecomment-1564=
255785>
>=20
>>
>> We're also discussing the names that each of these four should be
>> given in SPDX.
>>
>>
>> I suggest (in order of appearance in this email):
>>
>> -  Linux-man-pages-copyleft to be renamed to the following, and
>>    mark it as a deprecated license.
>>
>> 	Linux-man-pages-copyleft-nopro
>> 	Linux man-pages Copyleft (non-professional)
>=20
> I drop my suggestion of renaming this one (and of deprecating it).
>=20
>>
>> -  VERBATIM_PROF to be SPDX'd as:
>>
>> 	Linux-man-pages-copyleft-qual
>> 	Linux man-pages Copyleft (high quality)

And suggest using -pro and (professional) for this one.
But the real name in my mind will be -loqual and (lower
quality).  ;)

>>
>> -  VERBATIM_TWO_PARA to be SPDX'd as:
>>
>> 	Linux-man-pages-copyleft-notrans
>> 	Linux man-pages Copyleft (no translations)
>>
>> -  VERBATIM_ONE_PARA to be SPDX'd as:
>>
>> 	Linux-man-pages-copyleft-verbatim
>> 	Linux man-pages Copyleft (verbatim)
>>
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------NS7QrgsEo5LbtZ0sxzomUQWY--

--------------JCkxHRdmL4jF0XwM9RZhDwuF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRwn04ACgkQnowa+77/
2zKwSQ//cyO4Q4DhRkMPiBxB9CJsdMAuH8WVH79ANkYk/26c2cNgKbON6MoMBrlV
u+wHhXXTn6FHehK6JjgBzwWNA54ltBdc/I4Yv+i7fB6D1ZNcxFpP1BIE/k4FA8Ht
VCeg5A5NSehGM/0XqofrE9co7n08zj+VF2+u5gydrCTVBYG/GaBcIXdFZW2fPeHo
6LMn3VNKJX5i16OXRE7i6a6JVJUCKMuarnsD+AqcQM1cMoshsqC9xjp1zHm9kCGp
w3UGewgbEUIIcFRoR/ox+SLNx0Luh4G4b42qZoesmkBfz2ocgrKtUdGhlXm2HupE
1U6xfNjyAGW/DjhtiEaFLEOP398NL6M/PauVMfags/vg7MvEv62bxDJs/oIZuVqW
cEjda6n4avY81GBA0J4ipXl8CABJ11GZQIX2jZ0iLpmHqyt9WJPyqPMvWLgcxAnw
+BGjR3LpJ6B7na0KObAlhTe6sY1tWH8YJDXGMTme5hr7DqX3kdVobGdRWTv3ezx5
3IV2WW4isIRJV6of22sOr353pgBjew6CRuoHU0D3n80byJFlXFWUmopIcuYeZR2l
5sKzHPs6DCPHk6p+0H+HjFG16JExn2lxiKHF5ticykfY2qghdjCLD01IDGGFbJqZ
XquimaYVGPvG+qd1rfVUBC0EpFrvB9XjQwx+jNaVQOaATsKI2nA=
=J+iR
-----END PGP SIGNATURE-----

--------------JCkxHRdmL4jF0XwM9RZhDwuF--
