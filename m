Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E7E26A462A
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 16:35:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbjB0Pfj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 10:35:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229749AbjB0Pfh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 10:35:37 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEA251D91B
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 07:35:32 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id ay29-20020a05600c1e1d00b003e9f4c2b623so7472197wmb.3
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 07:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NYj+4q+I/65L6kcR5Lf0Gx8efKXN76kazTm8rKvo4jI=;
        b=ISvne9PPmnuelj3JhCkP2F2WDpgOdxRSD0sG0KiQzk3SpOe6dfSVQybYbV11XcjA13
         roWHNWGCeal27M0GWgKFcezr2RAzO/Es9Z69BwDaGvGgdiEkrBpCGwdayGiEWXLM0ZaW
         oZui+qbDlsd9WVAl2gaMOQtZ1yU1I54VSCkU+DzeFxLwunFWnIkQMhiKtI5KXBbam5CM
         iIn76yM7e+tkkZAOmp5N6lWj1L+LJCFYvy3LXO3aoUCqLfZc6M68wlrOlJEYKkSISQ9v
         LsccrMLrxIGKpEY92nk4UdBvQmU/2JciP4gYACwOEfl6qZmu4W0WQjyFfqP94SXP1V3g
         zBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NYj+4q+I/65L6kcR5Lf0Gx8efKXN76kazTm8rKvo4jI=;
        b=ZXexiVqctjWQd2EsNwkQkpcYBFD2yJYMT7243lGjEXtdlnOrE7Tc14Ba1jGrZQpA90
         lSCE7/zNMPQANmnxW2TncBDS3DvHRN0RFN4jnsG3Vmpi3vowrj9o4IVoPKcgLIkNSvu7
         qn7+lx1frs6C85CyUjdN+SAHO0ZAP0Iu6NQ/wz0D7qX45pkNfzrcCMRsfh5DZacdoX8v
         Ie1uPUZCAj9EucnvT/Y+ppnZeCPbjviXmVJ1PYXlUlDFDJScUHC4A2iqWhXkx1VjXa7E
         FPf7BUliuad6Lt2AQ8dt86+CPY70Lu+u16Yta+jR32gh6W2aW5zbtGEaTEc9skHKs9z4
         WmaA==
X-Gm-Message-State: AO0yUKUWHf+7gHnc5zAee/6uKc7mhRZ0cJTpAWR2kPkFFKT8oRk4WNnz
        0j+pssJsLwUEtZjWXxyn21w=
X-Google-Smtp-Source: AK7set8S555bO1JWvfFStZH1DMctLwI2GbShhbYGklaru4qDsMfU0veLSlvsTh/M+vQRwRwSQZAFpw==
X-Received: by 2002:a05:600c:713:b0:3dc:4b87:a570 with SMTP id i19-20020a05600c071300b003dc4b87a570mr13783998wmn.35.1677512131181;
        Mon, 27 Feb 2023 07:35:31 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p15-20020a7bcdef000000b003e200d3b2d1sm9507750wmj.38.2023.02.27.07.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 07:35:30 -0800 (PST)
Message-ID: <4e007c65-c790-5281-f6a0-2d915615525b@gmail.com>
Date:   Mon, 27 Feb 2023 16:35:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     "Dmitry V. Levin" <ldv@strace.io>
Cc:     =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com, lineprinter0@gmail.com
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
 <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
 <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>
 <d9c8e11d-9586-a13f-6195-f376cbbc444a@gmail.com>
 <20230227153340.GA9755@altlinux.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230227153340.GA9755@altlinux.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bPZnaEL9dRtQWGYmvpsYmpOl"
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
--------------bPZnaEL9dRtQWGYmvpsYmpOl
Content-Type: multipart/mixed; boundary="------------3ydse1g52QCvxvtc9fGgZnnM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "Dmitry V. Levin" <ldv@strace.io>
Cc: =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?=
 <fvalasiad@gmail.com>, linux-man@vger.kernel.org, mtk.manpages@gmail.com,
 lineprinter0@gmail.com
Message-ID: <4e007c65-c790-5281-f6a0-2d915615525b@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
 <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
 <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>
 <d9c8e11d-9586-a13f-6195-f376cbbc444a@gmail.com>
 <20230227153340.GA9755@altlinux.org>
In-Reply-To: <20230227153340.GA9755@altlinux.org>

--------------3ydse1g52QCvxvtc9fGgZnnM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

On 2/27/23 16:33, Dmitry V. Levin wrote:
> Hi,
>=20
> On Mon, Feb 27, 2023 at 02:28:45PM +0100, Alejandro Colomar wrote:
> [...]
>> Ahh, sorry, I forgot about that.  I reworded it to the following:
>>
>>     ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
>>    =20
>>     Document the role of PTRACE_O_TRACESYSGOOD option in connection wi=
th
>>     PTRACE_GET_SYSCALL_INFO.
>>    =20
>>     Came upon this after writing a test program using PTRACE_O_TRACESY=
SGOOD.
>=20
> Just otherwise, PTRACE_O_TRACESYSGOOD was not used in that test,
> otherwise there wouldn't be any question in the first place.
> Did you mean PTRACE_GET_SYSCALL_INFO?
>=20
>>     After failing to find what's wrong I posted a StackOverflow questi=
on
>>     which you can find right here:
>>     <https://stackoverflow.com/questions/72410182/ptrace-get-syscall-i=
nfo-always-returns-info-op-as-ptrace-syscall-info-none>
>>    =20
>>     Nate Eldredge found out what happens by looking into the kernel's =
source
>>     code, here is a link to the relevant part
>>     <https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce=
18407f480e9ecf/kernel/ptrace.c#L1018>
>>    =20
>>     In the code it can be seen that the union is filled if and only if=
 the
>>     signal matches "SIGTRAP | 0x80", a signal which is only sent if th=
e
>>     PTRACE_O_TRACESYSGOOD option is set.  You can read about that in t=
he
>>     PTRACE_O_TRACESYSGOOD section of ptrace(2)'s manual.
>=20
> Once again, this "if and only if" is confusing, as PTRACE_EVENT_SECCOMP=

> event that can happen when PTRACE_O_TRACESECCOMP option is enabled
> fills the union with the data of type PTRACE_SYSCALL_INFO_SECCOMP.
>=20
> PTRACE_EVENT_SECCOMP stop is similar to system call enter stop, but it'=
s
> not exactly the same kind of stop.
>=20
> The note we're adding to the manual page is more correct in this regard=
s.

Okay, I'll let Fotios write the commit message, and will take it whatever=
 it is :)

Cheers,

Alex

>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------3ydse1g52QCvxvtc9fGgZnnM--

--------------bPZnaEL9dRtQWGYmvpsYmpOl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP8zboACgkQnowa+77/
2zKQcg/9ExVoGJ7aymsEmvOgqhqH5W0kzWlx00yxTeMNUAFX+RwQwZCk+KbuO5/t
eIIfpm0lXqGsetQZ3nDIQLjjNmVDwBdicy4at8hUDj/eWd9NIwWEe1sZuJ2VT2hZ
m2knQJIFiqRRACUiUoXYRR7bdW/8ymtk+k5M46D7pCbwwtdHHTn0mEOB1kJelVvO
mQcdckoIJajPvAFhFGgr1wa9GEIAJAN4dAyPCcA3J1w7+BJCl55e7X8+QoMK523u
mH4ZRia0G6Q6t0BEA1pZy3dMfmDQA4yDQ51xVZ8k6amIaojiLzehcrq0+kxYfbD3
DqYnDyjkpUpMh92IKz8RzZofQWLV2uWVJzvPs2kz8bPJ3NPbzAckrtLHfjcoK+yC
HWztp8dcQIeAuN/xgJo4vFfHmJ8En1+FPdKoZEyNnoWGDXN1BhFsuhxoomrfYUeu
VN09jB1euUi3jiwpUorfPHUaGfmPtDmpgLC6R6/PJhiliu1fDn7n8mEi4zF053tX
WA+tHBUSi8r8AZZL1vtnYFxL9MMMxtUu0BxpF17/bhvauqZCUDcdiGdF94oS7LFS
571n/gQKMOoFftIRDhjwr+ltoaeaWFiyVgp1J+UhM09YkqwS0/V5Dfm9OfCZP+Hp
C8vM55elmXgckghx3DqAWACluJ4qby0mE0D2kNWJFtZLgRZbcag=
=db20
-----END PGP SIGNATURE-----

--------------bPZnaEL9dRtQWGYmvpsYmpOl--
