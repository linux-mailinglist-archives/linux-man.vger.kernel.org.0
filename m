Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82B396A4A46
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 19:48:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbjB0SsS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 13:48:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230127AbjB0SsR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 13:48:17 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 859506E83
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 10:48:15 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id p23-20020a05600c1d9700b003ead4835046so4454246wms.0
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 10:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TmH4xBt1qCxxPhOLT6OiH6B7HLpxInNhDwjMAHOa02Q=;
        b=lGgEgC8KP4y+xRW1cQ/K7A5wOEU8S9Zpdt0Fp/Zf4wXeuYVCDaJc/KirOlNjAArZEI
         Aybx34uea8pdbqhf1TNh+tUM/YQqiA0/ibenNC8MKJkTIuh+BoAgEUpuFS5W8SHaYjqi
         9ZVMJdDwKxM4InA16EOCNvYgmL8/0ejE+5ZcW3G48V7Y8rI/iaTNWgPBnLOHT5FR2dYG
         UZE/vN8uz+sYF5N9NRuISYRLujwvigPGuyskHMWJ3JrkRBZRQVVOqYK1DmAI5RWtE2X0
         zzmHdvkjnG/0HVNVmbYf8iMLWT2HoRs5QdzNV3SyMq5bhO7cu1cDd1sqnpFxb8Q8iS60
         U6yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TmH4xBt1qCxxPhOLT6OiH6B7HLpxInNhDwjMAHOa02Q=;
        b=w6vVOowcwzkyDneY3WkCPYEsTYjadoVhR4CzY/sCuBrjhZNxEQsSfu++AcK30n3553
         s8OMXAR5BLk1SzeUbQMjyRGT04RFT718GnggG9YdqsKHST5SC6THsrxH+QcCi8aZX624
         SR120au94PDwjLGzKmWCMoaGkIjwy2MjD/htASIXYf3NUtnmaByRbhNJ6b+oFlWgOJEN
         gFjOBOxbRyMNx+QoGZo+oqUCIMWsgz/Z/o6kQaXY6Zh2MI/3M+HKoGtXn+iez9VfWk9N
         K1BB+AXjmSFNK4Y15CdmX3HDRiiOAi482nwTcy7cwgz8fNplQIcTygzq+oQ2kpRf29en
         g5JA==
X-Gm-Message-State: AO0yUKV0l0Fg2N8IAk4DiNfnI5P021KbKLU3HuAzLfSS2E3K1oxJYQui
        y4zIcizCMibjx2OQfLUL86M=
X-Google-Smtp-Source: AK7set9f2tiw4R4HIl9ukvSNtwThyZ+dMRjc7bXgpnnGBSVIFFjVMyDp6oczjmF22THT770b23RitA==
X-Received: by 2002:a1c:c917:0:b0:3eb:32ff:da8 with SMTP id f23-20020a1cc917000000b003eb32ff0da8mr116003wmb.16.1677523694027;
        Mon, 27 Feb 2023 10:48:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id az34-20020a05600c602200b003e6efc0f91csm9909651wmb.42.2023.02.27.10.48.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 10:48:13 -0800 (PST)
Message-ID: <9f4aaf34-66cc-554f-d45f-73f0bb9b4a94@gmail.com>
Date:   Mon, 27 Feb 2023 19:48:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>, "Dmitry V. Levin" <ldv@strace.io>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        lineprinter0@gmail.com
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
 <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
 <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>
 <d9c8e11d-9586-a13f-6195-f376cbbc444a@gmail.com>
 <20230227153340.GA9755@altlinux.org>
 <4e007c65-c790-5281-f6a0-2d915615525b@gmail.com>
 <b57591a9-5ba1-5192-f376-f2de812a9086@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <b57591a9-5ba1-5192-f376-f2de812a9086@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nwGpV9LJSeKmj8FJ1ndl0hxH"
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
--------------nwGpV9LJSeKmj8FJ1ndl0hxH
Content-Type: multipart/mixed; boundary="------------CdDwpmZwrO26heU1FE82lHoL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?=
 <fvalasiad@gmail.com>, "Dmitry V. Levin" <ldv@strace.io>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com, lineprinter0@gmail.com
Message-ID: <9f4aaf34-66cc-554f-d45f-73f0bb9b4a94@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
 <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
 <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>
 <d9c8e11d-9586-a13f-6195-f376cbbc444a@gmail.com>
 <20230227153340.GA9755@altlinux.org>
 <4e007c65-c790-5281-f6a0-2d915615525b@gmail.com>
 <b57591a9-5ba1-5192-f376-f2de812a9086@gmail.com>
In-Reply-To: <b57591a9-5ba1-5192-f376-f2de812a9086@gmail.com>

--------------CdDwpmZwrO26heU1FE82lHoL
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =CE=A6=CF=8E=CF=84=CE=B7=CF=82,

On 2/27/23 18:27, =CE=A6=CF=8E=CF=84=CE=B7=CF=82 =CE=92=CE=B1=CE=BB=CE=B1=
=CF=83=CE=B9=CE=AC=CE=B4=CE=B7=CF=82 wrote:
>>>
> So with Dmitry we agreed on:
>=20
>  1.
>=20
>     Came upon this after writing a test program using PTRACE_GET_SYSCAL=
L_INFO.
>=20
>  2.
>=20
>     In the code it can be seen that in case of system call entry or
>     exit stops, the union is filled if and only if the signal matches
>     "SIGTRAP | 0x80", a signal which is sent if the PTRACE_O_TRACESYSGO=
OD
>     option is set. You can read about that in the PTRACE_O_TRACESYSGOOD=

>     section of ptrace(2)'s manual.
>=20
> Replace these and we are set!

Would you mind sending the patch again with that text? :)

Thanks!

Alex

>=20
> -- fvalasiad --

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------CdDwpmZwrO26heU1FE82lHoL--

--------------nwGpV9LJSeKmj8FJ1ndl0hxH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP8+uUACgkQnowa+77/
2zJg1xAApf5lRGyFpppxB3P9ngI6TSK8ypz1BaffirXfv/IpZ1tw/FRUX/MHlRon
QAVht/1SPa95A9xrwtCJkIaJSXhLGpvWGyqgMzDD4LrRIlktxLe41DEl4Bx5X6h5
c6AQGnAKzx1GN3tCYjOHIkRHgCqG7PGPZdeKi7r/VzhgU4yjPci99XBbp/HCAwP/
+ZyM3rU4uxvlWYm0GMX5Po4ZO7BUORIRPcunewE8GHEs8SLMJs6HgdqXW5V4YfR+
XRvYvzauVsXWDoOIDMdyOeUQubayt0XNbG9x1j92Ua3y/DoIjttlE8vEF/mlwbBW
o5WKTNi4xAAZp5yEIIRgUXMshQXK/rL7XWvYag06CWgjPqanry6x9frOPVsW1jU+
1YQMYHEVBEMbiaTC2dtWYA09APUcXJ9pGbGUO3jKTvkh9ORYteDO/qpNLTv68mnN
xfaP9ZCE2kUleGlaIAES9DCzpCB0xQl87iDCTRIOIlR9dWUbjjifIe1awOg5flDx
5Ci6kaQy7CrkqVE7se1E5TRaPSJMD3C7pQ4gVJgJM/Ah2cMbjtAziol5F0ntVOa4
yxpAZapX/GtMUU57KKKjkJgLFBBXEcCjluZEqJsHt32LJN5hZq8beMTJtkmgCWNL
dibXJibVKu8bVrVMbNvBkqy6/K2m2sHwg/Z1wTQHm/NhWvTnXu8=
=IZ3D
-----END PGP SIGNATURE-----

--------------nwGpV9LJSeKmj8FJ1ndl0hxH--
