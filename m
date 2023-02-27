Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC5516A42A1
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 14:29:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbjB0N3K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 08:29:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229616AbjB0N3I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 08:29:08 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BE72EFB4
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 05:29:04 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id v16so3417360wrn.0
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 05:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ai5tnO0iPvJKjeOO2Q5VJess+G80ZSHMQuZDme2xibI=;
        b=RoVp9+X2WEhV+SeswKHRCQaQTn3KQ1Jro5os0fGmX3nCLAFOyv+vRdqIT7m1l0Fwjt
         2IRdcWBG8kM9GQ0V5ZS0cOgyi/sH5HjzNMVELglIVK3U1x/ns3BLAWP4RB7CHS2+ql58
         Y/fKkC2Pf0UnyIa2XRkqeScSNtmghydtCAMrpF1C/VbdXt7VBQzWgOpRuJm1ELkGrlCD
         FPU+K+HZAbyOn0dk0rbojGk3V3KEu+Gf8mTcZDRNKsB2+K6pzRJHvm1QfY26MpxfeNfA
         hc6mA99KnUlTlZVi1oPzLhPjqdycDC9LdQgiu3dXt+5QAQlQWrRkMSVvomCgxsKrPgeB
         IHxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ai5tnO0iPvJKjeOO2Q5VJess+G80ZSHMQuZDme2xibI=;
        b=5IPb3/zBNEelPk0jYmbZZu0S6ZfKziTwNaBdSKCuSAZVmwnxHyqGocKwRIhUZN8ZnF
         EuUZPTMNppSEqXKodiIdzDCRlCMVCT1Ayziod1CDWO1WmeOVyfM+33E7ypGKWl+t+ybP
         El/2frgqjd/H1HB47J+ZR2nmQkVgVAQRA/ETaPb7n6510S6F24u7NIBwCo5LcNju2J7H
         gOiIVFjRFLSQES4dfEkcrZmFx68hK/WrFZv2vwxSOUbvRu9o4SsaITLDpS82LAspIqIR
         kMmf/kLgdtyMAUEyfhvb86JKCehWTl8IVj6pHe72M/bkoRH0NeNKWevd8m6Ckgb/RwFI
         jxSQ==
X-Gm-Message-State: AO0yUKXINfkf2OtbCOWWceM8bhIG7oCx6lMo+cL5al4iAUfaGsrllqro
        jVw9hmMaCjXedaYBQsujzmo=
X-Google-Smtp-Source: AK7set9Qbg0TODOhFPrHfPbIhsG93PFS3zHKhNlUxazUC53OqANrrsc+98iE2VzejsrO6e4J/MZYwg==
X-Received: by 2002:adf:d84b:0:b0:2c9:f488:5f54 with SMTP id k11-20020adfd84b000000b002c9f4885f54mr4469012wrl.57.1677504542842;
        Mon, 27 Feb 2023 05:29:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u26-20020a05600c441a00b003e21638c0edsm9357073wmn.45.2023.02.27.05.29.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 05:29:02 -0800 (PST)
Message-ID: <d9c8e11d-9586-a13f-6195-f376cbbc444a@gmail.com>
Date:   Mon, 27 Feb 2023 14:28:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
To:     =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, lineprinter0@gmail.com, ldv@strace.io
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
 <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
 <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XOWTD0QtYXhvjfx1J2jBgGiS"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XOWTD0QtYXhvjfx1J2jBgGiS
Content-Type: multipart/mixed; boundary="------------inqyJg2FtL2VAjN2pi6yA8II";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?=
 <fvalasiad@gmail.com>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com, lineprinter0@gmail.com, ldv@strace.io
Message-ID: <d9c8e11d-9586-a13f-6195-f376cbbc444a@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
 <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
 <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>
In-Reply-To: <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>

--------------inqyJg2FtL2VAjN2pi6yA8II
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2/27/23 01:41, =CE=A6=CF=8E=CF=84=CE=B7=CF=82 =CE=92=CE=B1=CE=BB=CE=B1=
=CF=83=CE=B9=CE=AC=CE=B4=CE=B7=CF=82 wrote:
> Ah yes sorry for the confusion.
>=20
> First name is =CE=A6=CF=8E=CF=84=CE=B9=CE=BF=CF=82, surname =CE=92=CE=B1=
=CE=BB=CE=B1=CF=83=CE=B9=CE=AC=CE=B4=CE=B7=CF=82,
> just call me Fotis!

Hi Fotis,  :)

>=20
> we use both formats in Greece, confusing i know . :D
>=20
> It's fine by me, you know best! But if I have to point something it's=20
> that Dmitry didn't like the word "Fixed" and we in fact agreed to repla=
ce:
>=20
> Fixed incomplete doc.  PTRACE_GET_SYSCALL_INFO's description wouldn't
>      inform the user that they need to enable PTRACE_O_TRACESYSGOOD to =
get
>      detailed information from said operation.
>=20
> with:
>=20
> Document the role of PTRACE_O_TRACESYSGOOD option in connection with
>      PTRACE_GET_SYSCALL_INFO.
>=20
> So perhaps you'd want to look into that? Can probably communicate on=20
> this with Dmitry so we can all agree to something.
>=20
> I repeat though, from me it's all good, you know best!

Ahh, sorry, I forgot about that.  I reworded it to the following:


    ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
   =20
    Document the role of PTRACE_O_TRACESYSGOOD option in connection with
    PTRACE_GET_SYSCALL_INFO.
   =20
    Came upon this after writing a test program using PTRACE_O_TRACESYSGO=
OD.
    After failing to find what's wrong I posted a StackOverflow question
    which you can find right here:
    <https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info=
-always-returns-info-op-as-ptrace-syscall-info-none>
   =20
    Nate Eldredge found out what happens by looking into the kernel's sou=
rce
    code, here is a link to the relevant part
    <https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce184=
07f480e9ecf/kernel/ptrace.c#L1018>
   =20
    In the code it can be seen that the union is filled if and only if th=
e
    signal matches "SIGTRAP | 0x80", a signal which is only sent if the
    PTRACE_O_TRACESYSGOOD option is set.  You can read about that in the
    PTRACE_O_TRACESYSGOOD section of ptrace(2)'s manual.
   =20
    Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
    Cowritten-by: Dmitry V. Levin <ldv@strace.io>
    Signed-off-by: Dmitry V. Levin <ldv@strace.io>
    Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
    Acked-by: Nate Eldredge <nate@thatsmathematics.com>
    Cc: Elvira Khabirova <lineprinter0@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

Cheers!

Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------inqyJg2FtL2VAjN2pi6yA8II--

--------------XOWTD0QtYXhvjfx1J2jBgGiS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP8sA0ACgkQnowa+77/
2zJhxhAAjVmN8cisT40d7gzw0eSZ/tp0AkUcEzLJHocfxRZ5Nw4m1EMLFmzCCala
8awKG7fF4juiqqrdfiD7b9ZlvQkbkyJKY/fchufsYhauXKSuhM3PBa/ASmntWIDS
kb+SxHmGjhb07rspjRIwmU40hlcPyibT4jHEzraJZ0uwmL4P5XWSA80kB5If1Ts3
7toDKFtcTaoqVRDeL4ZPH8tifbkMbL6RL5c8Am5rv5WTUIN57Zr5cXcaQyDjzrTW
S0/jSucn82imDpVukBW3I4mcMREKGYG1TLE7lfrAfcsYHV1vYWgT9f+f4OS37TEv
WYGjRvV1dQy7NSxKqyj36tUFMhV0khqYVQaSsF54p+EN5DRg0Mi2rYkDBfkeou88
5ex6XBt2VFLPUyKMEoU3HeYahGGlJQ6hn2KXYAFl5rfYHWu8ip4fy9/wZMbxb4OG
0zMX+Gn/2VUyQfwgz+2n3+llM+fVFdLAGtsJoyLfZ2LAgY1LtdXjDLZd2CuwAjK8
BcDRDXOBFYnE2XhUOL2rWOifWB9XKPkYHTalpcBA5mgRsdpTAnojuKYl3Odr7N/C
bxiIAzWGVcKsgkihyC+LN0kh0KdWNWU37ENFGaxkHyo0mO75aSEFM13MisczQuO/
itOaPRsPj9D4xdTR/tEwM7C9N5KKkeQM/538KnPkM6nyWEu6EeI=
=Z9px
-----END PGP SIGNATURE-----

--------------XOWTD0QtYXhvjfx1J2jBgGiS--
