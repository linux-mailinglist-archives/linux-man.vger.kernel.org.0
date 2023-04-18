Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDC986E6714
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 16:24:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229940AbjDROYx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 10:24:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229781AbjDROYx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 10:24:53 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E377C11A
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 07:24:51 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id n43-20020a05600c502b00b003f17466a9c1so3159801wmr.2
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 07:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681827890; x=1684419890;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RHWHoJrNolkEgJHx31J/5X+GJWg/WEhYkjsI7Obtk30=;
        b=rwfriBkg7rHKXBflXRSCc59RW9ockfq6w6KZJ+DCGoPiTwwSJ4FiQudHxDQpxejkLj
         DXjM//gmp1ItomvV9KRlKTUJCES9y9J/oTz/3UgmUGuzeF+XKxY5W1pA5emL2xWm1bZt
         oH8HYp9vkQv4CbBdAc3UVUrCvehMTe41ZEoCOdxdAhN7KthuviMY72EmfCYWnIMKKPpr
         ImNFhAnNOJ5ThE1ho8SO4hH35QoGQ64Ug7oGEb80jLWg8BAtp2D2Dauor5rrpI97ZPCl
         xCErPiAFYnwPRXRqLAczMxvSvnWl+H59VeQzWjem8jshoi45rfHFDYOibJTmoA4y/TUs
         drpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681827890; x=1684419890;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RHWHoJrNolkEgJHx31J/5X+GJWg/WEhYkjsI7Obtk30=;
        b=Mz6tIzx1TKOBY27FRArOqy2khQa/lVC2sP0CRgePmWmc78btOvu/2DGuw2PWiol3jK
         GdCkI3yxfz9LJLxqokB60fGyDGUVSXuxcUFKqCG2XcEynoyMQgJnCY3zhfNjKo0OcMVa
         H95b3e24DZbfJZlkJldLExCNwEB6JcW9r3fOqXyFvVkbi9eVYECZM2XqYNt+xsGqVAMu
         3Nq++W/V57DTtcdotkPZkIgu3JkWnt9flef8T3CS54mpYM3uA/STvzAJSXw9dpS4h27z
         XEVi6qaJZPG1ZVDqJpcRDKOBiX4PrxHI2dV7G+Z1TIR+flc1ulT92khaQe1ADcvbx5hO
         2Oew==
X-Gm-Message-State: AAQBX9eCbNrCHiifYJKRsWHQo9H21kjxyH8b4jo4gLi6ykqIpOGC2B4e
        pubgnU0F6uLiW5wKsTlRXJlwK/7QqCw=
X-Google-Smtp-Source: AKy350apZTUP/O+mICt91QOZ3G060OBzvoPI0hlBdxteCe5NbG7v70u99wnkNs4Jz9j9ET8Fvmb2AQ==
X-Received: by 2002:a1c:e917:0:b0:3ed:f9d3:f95c with SMTP id q23-20020a1ce917000000b003edf9d3f95cmr14183247wmc.19.1681827890456;
        Tue, 18 Apr 2023 07:24:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d17-20020a056000115100b002fa6929eb83sm5487110wrx.21.2023.04.18.07.24.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 07:24:50 -0700 (PDT)
Message-ID: <84d7c516-41c2-cac6-b5f4-2348eb7201a9@gmail.com>
Date:   Tue, 18 Apr 2023 16:24:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230417172513.5731-1-gnoack3000@gmail.com>
 <20230417172513.5731-2-gnoack3000@gmail.com>
 <5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------oQ4I52gp5SOI2WIVnDrxD01K"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------oQ4I52gp5SOI2WIVnDrxD01K
Content-Type: multipart/mixed; boundary="------------SbXKsV6ZNDHsIBjN90n1x5Ku";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <84d7c516-41c2-cac6-b5f4-2348eb7201a9@gmail.com>
Subject: Re: [PATCH v7 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
References: <20230417172513.5731-1-gnoack3000@gmail.com>
 <20230417172513.5731-2-gnoack3000@gmail.com>
 <5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net>
In-Reply-To: <5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net>

--------------SbXKsV6ZNDHsIBjN90n1x5Ku
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Micka=C3=ABl,

On 4/17/23 22:45, Micka=C3=ABl Sala=C3=BCn wrote:

[...]

>> +int abi =3D landlock_create_ruleset(NULL, 0,
>> +                                  LANDLOCK_CREATE_RULESET_VERSION);
>> +if (abi <=3D 0) {
>> +    /*
>> +     * Kernel too old, not compiled with Landlock,
>> +     * or Landlock was not enabled at boot time.
>> +     */
>> +    perror("Giving up \- No Landlock support");

[...]

> As a side note, this syscall and this flag should never return 0, but i=
f=20
> it does (e.g. because of weird seccomp filter), the errno value might b=
e=20
> unspecified.

Hmm, good catch, we should test for `=3D=3D -1`, rather than `< 0`.
Michael Kerrisk explicitly wanted this, and I agree with him, as it makes=

the code slightly more readable (explicit).

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------SbXKsV6ZNDHsIBjN90n1x5Ku--

--------------oQ4I52gp5SOI2WIVnDrxD01K
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ+qDEACgkQnowa+77/
2zKy7A//SlSF0D70OfEphETKHUHyPVrqveXIdK9OWxImlUq2YtxytIw6JcMEJKo5
EVR0PNdAvuV404U1ITfmFDTenws9zIBQecSvc1d9y189WjnjYTHNlTyk9pUm9Wge
07qryWMMQ1aj54T1RpacgUSJgqopMEOQnPpcTV4vHkPaby1Rd9KykmMUW3Ia/9Hp
QzO513gbeCcAj9Tr1LYsCOd9Ui/0f08phdu92iMZ4EQDsfYEG0yBiwAETaDIETiF
j7OrZsmUTGcmdV/B2GksZTUswDo8vdRepfgTJKso/SvL7hr+bJI4Iu9HwImPIgmY
Yton3oIdnarQAaZRZx7OpyfmKp9J0GUVdl4F2E/Lekqa9hjaFi6PwG03bUhdsFNi
4ERnYurmaNFIUJhQj+Z2G+NunhnCsj2YAnvksJJBNH61TtiSkV3uG9eJ8qfLvD1b
K8NGH5oVzz1ZpIO93ockAtYAGoHG2+TEOus4s6EOAhBQ/Au2gnIJUN39Ubnh0pAN
zyjJAWzcOeZUF2k4T45VQUPUMOTUsia9vct7oxKPWTcboEC3/xQzgp65R29zbHkj
ZKpm9gQMJhoBf8Nrlg8Qt0qEhyQm2nll364qUkBmzp2onQFizATcdsZjUoA1SadW
jDh/fCRLiezIHWOI0sAY7xPaXWr8fy5M+y7jpu3abyU/hNQ9LZM=
=PJ0a
-----END PGP SIGNATURE-----

--------------oQ4I52gp5SOI2WIVnDrxD01K--
