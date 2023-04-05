Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 398236D7255
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 04:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235178AbjDECVl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 22:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231166AbjDECVk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 22:21:40 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC3CD30EE
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 19:21:39 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id l10-20020a05600c1d0a00b003f04bd3691eso6224621wms.5
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 19:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680661298; x=1683253298;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iT+uS32RoC806KR1wZdwz5hFbdNpr9kxjUuvW1V1x+4=;
        b=GUEV8wHekxHQSYrnDQQG/8oTLyQnnAf6vQpciHoIBvupe5vcqnGcIgNSJf5XmZu7s6
         iDg2/nqkrjfqkcGnfJNAWQ0Uw2TgFeGZHZmuVTgFtbzMPoiyxoXLItn8PXwvkbHsFs6/
         wnF2U7A2+hGduENWXPkqlAjtl7FIx1bsaYFON+qRS4f0AQB+YA38o47hDdi87z8vTh4H
         dguAlqEu+ktJILWlgVFpD6rE67PFbNVqPKBCg8YLROVFEWr7aebHPjVSBmpfEKaKiXEt
         DbcS/aewo7JRynt46ahy9tlLCa07LEXq/gnr3mRNsK6j29/5ClymiuQXsZrf/3wLJPHz
         x8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680661298; x=1683253298;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iT+uS32RoC806KR1wZdwz5hFbdNpr9kxjUuvW1V1x+4=;
        b=eUbyVnnKebFOO4B/xW6//JmmSW0cLMLkKvOS0l0kllxbWFNYY2Q4cyD6A+ij0Bbk/+
         QFlGJyfs4N+Di3gH2ARkjjclBWSIG4d/RESJaMS1mdbsHapXuVEMnkJvAjCtFDKwPKLp
         JEok6kf7XsADGyrFfEaKRl/ZHqBOnU9P93ZwPDDCuIzagJBloIZ8QBA9Aood3SXTrajC
         F6AkDl6YeB4I2HZaVptmx7byo+02YcgjRt7uqV3Dg9lWDxXzY+CMFp/ZzxrpR3Sqzc3F
         Gba1W8xxU4cyEIj2IzI+iOByywXzVHH7vVymnrmtaBJraMDosoqDWIZ8LiJcl+2uRPWo
         xH9g==
X-Gm-Message-State: AAQBX9c+PaN1Hdx19xxSlEQCdsSK3DCPblVTJGBJDHlg6JvGqGN6GAHN
        RnWBZvMv5/Tmpc/MwLewDbHf9jztqeo=
X-Google-Smtp-Source: AKy350bRuE9ZHbK4Eclw8Rrfqqm2Uhdps7VWdhUPBBaKUIAq6sw1rcdBRh+xc9NdnrgGxuyVPRLB4w==
X-Received: by 2002:a05:600c:3788:b0:3ef:62cd:1ee with SMTP id o8-20020a05600c378800b003ef62cd01eemr3462337wmr.16.1680661297985;
        Tue, 04 Apr 2023 19:21:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m19-20020a7bcb93000000b003dc522dd25esm581544wmi.30.2023.04.04.19.21.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 19:21:37 -0700 (PDT)
Message-ID: <421345a1-06be-8364-99c8-9fe269db284f@gmail.com>
Date:   Wed, 5 Apr 2023 04:21:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCHv2] feature_test_macros.7: document clang fortify support
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     Mingye Wang <arthur200126@gmail.com>, linux-man@vger.kernel.org
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
 <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
 <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
 <0219f97b-f28e-18f0-3451-87ee00f851aa@gmail.com>
 <CAD66C+anMmcxDAf+KDDzEP7B5HHyzZKiSfZM9Q5fhN3HxqaHbw@mail.gmail.com>
 <6409b7ad-8b17-c2c4-9671-7c251cb93471@gmail.com> <87edozqekm.fsf@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87edozqekm.fsf@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4gukerLtTzS1TRtdbLuIQbze"
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4gukerLtTzS1TRtdbLuIQbze
Content-Type: multipart/mixed; boundary="------------AtUFQEoNU0M7Ta1CbSOu30Eo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: Mingye Wang <arthur200126@gmail.com>, linux-man@vger.kernel.org
Message-ID: <421345a1-06be-8364-99c8-9fe269db284f@gmail.com>
Subject: Re: [PATCHv2] feature_test_macros.7: document clang fortify support
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
 <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
 <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
 <0219f97b-f28e-18f0-3451-87ee00f851aa@gmail.com>
 <CAD66C+anMmcxDAf+KDDzEP7B5HHyzZKiSfZM9Q5fhN3HxqaHbw@mail.gmail.com>
 <6409b7ad-8b17-c2c4-9671-7c251cb93471@gmail.com> <87edozqekm.fsf@gentoo.org>
In-Reply-To: <87edozqekm.fsf@gentoo.org>

--------------AtUFQEoNU0M7Ta1CbSOu30Eo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Sam, Mingye,

On 4/5/23 03:53, Sam James wrote:
>=20
> Alejandro Colomar <alx.manpages@gmail.com> writes:
>=20
>> [[PGP Signed Part:Undecided]]
>> Hi Mingye,
>>
>> On 4/3/23 18:24, Mingye Wang wrote:
>>> Hi Alex,
>>>
>>> On Sat, Apr 1, 2023 at 5:56=E2=80=AFAM Alejandro Colomar wrote:
>>>> If it's just a reference to the software, that is fine.  If it's a
>>>> reference to the version, then I want it to be greppable.
>>>>
>>>
>>> Is my patch attached to the last message all good, or is there
>>> anything more to do?
>>
>> Sorry about the delay; I'm a bit overloaded.  Did you check Sam's
>> objection?
>=20
> I'm happy now after a clarification was made (libssp does more than I t=
hought
> it did).

Thanks!  I applied the patch, with Acked-by: Sam James <sam@gentoo.org>.

Cheers,
Alex

>=20
>>
>> On 3/23/23 06:38, Sam James wrote:
>>> The patch looks OK to me in terms of the content, apart from the libs=
sp
>>> mention. libssp and stack smashing protection overall is distinct fro=
m
>>> fortification.
>>>
>>> SSP is where stack canaries are emitted and their value is checked
>>> later on to see if they're intact. Fortification is where certain
>>> functions are replaced with variants that check the size of their
>>> arguments e.g. dst & src and ensure they're big enough. They're disti=
nct.
>>
>> Thanks,
>> Alex
>>
>>>
>>> Thanks,
>>> Mingye
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------AtUFQEoNU0M7Ta1CbSOu30Eo--

--------------4gukerLtTzS1TRtdbLuIQbze
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQs2ykACgkQnowa+77/
2zJHkg//UylvOQf1HcSUUqavnrAml2Nj5kLLbmPkaXaryru9t/o9xtBVVZMRVXht
13yc9bSQFL3zncTEbe5DPv4GusVzGOcdUBKOuxSbyqzH+59GORB65lD1aB0XXBoW
m4ECUvd93ARwiZ2FVM48EY2gNNZngWQHDjreBo6ALUJJ2TQPsb8KAEsC586+Bh8j
XBwKRuoICsQgI4xV+2A8QpSb4ayN3/i0KGlBwVUWzSBMD0bbXYWHU+ab/iUTyCNN
EYv3urm3B95PG1Kvq0C3TrD82Oeih0aH7ln1Mw6SkQ6ubHGhGdMtvZwHI8MEnvPo
oFYPv5gbZSW6ySryBtU2wCOhEaYbywZXMP7lK0p6sKfj8YFVUDAsecNxUDnZnPdO
7mpaWe/IQksdz6rWyrAJfteWslMDUX6CsHE0ri/s3BWSR4nrkP6YoEeaGVQ0y3se
IrPC1SCkoYixoc1DMf7W8SHORV6gk8SOHI5JAj+sAmhFi4HGwciIIM39xl4bmCHX
eXZahMlIeUVYxb241CPNbT6r7ouX/VhP1uUF3G+g8nrsTf0u43zq1cpl3+4Bd8Im
TNhV9ZdQb9IBkaIxFdfUiEOuITbttX3t59DydBI/TwbpskOLCNqLknKqJp09hj+S
7jDkQH49lrPseeC+BYEplDjLgVB8U3L7H6zeKQkghGKbzo2Qck8=
=ROZ9
-----END PGP SIGNATURE-----

--------------4gukerLtTzS1TRtdbLuIQbze--
