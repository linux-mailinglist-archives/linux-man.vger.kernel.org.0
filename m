Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A10F6A35E4
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 01:19:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229574AbjB0ATa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Feb 2023 19:19:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbjB0AT3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Feb 2023 19:19:29 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8551CDD2
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 16:19:25 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id p26so3210135wmc.4
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 16:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AMqkbUs8hiV3e/l/h+eIjw/7ZqYnZ1hNjR/W6w1BxqY=;
        b=nqMg/bUvI+1bdhs7uyfP27qMDgi+SOKPLc08yS7ICnH1B0CehTv31dVWJEkvdl55cC
         4yhQ47t1yFOONbGWlbB1X549i7jgGIlo3ZuZioSoIfQLqEy3DMMpJhXmUdO6EBWmKK5E
         UoSTJzcCFMT9uGcu8kngDjmij3ik6tw3jLKV95ggxurKbMSEbUPOGBAUCUBRN0AvvT3z
         uOUiQp0AuiArrMVc2ymdE8Lotk9t1gf5B4OuAiHxu5yUb4AbFJ4NxiYs/DH41m6eCRfk
         bzbIFyMh6h+5wTF4PcTafJHX0OC1fWIRrcJgfiRPuH/jBCXNqhAp5BZ5FJitpXXAmdEO
         rYxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AMqkbUs8hiV3e/l/h+eIjw/7ZqYnZ1hNjR/W6w1BxqY=;
        b=A+UwVZl1TIOoftfyeUcNrN+lkF8b9xnrWV9yrTnZ0nkU+SIMtnsHy4FBLJYCTpWvx/
         kH7aAaGNJhso1lfzOHhygRGG+SDdXw3FGvmRD8OsQ0M+6/uw9Q/8KSZ4//j9EmzNv4sd
         w/fa6BeNVVkBCgHs/dUVsLjwoagykyt1i/cDQM1HC50V3rsOqbCWAz2eHvnn6EDaYDPn
         HnHsZV5NyP0l7zi5t3v6PydEuQBXR+yFjhInqVSybEUG4T7Jl82Yah271VFBZkAjG6MO
         U1UdhqKNrbpZsAk5fUQSndFhRKG6XgQngL547qLV4kWC632ny9JKe2jp0u9JbgWCSj18
         FpSQ==
X-Gm-Message-State: AO0yUKXV4ZkXplI3uZQQENh/IoYKQCBRQVgS1ZL6Uzl6q9+Yb2eeHTTC
        QspA4MqouXnvuQHRyZ+p8k0p/VWITu0=
X-Google-Smtp-Source: AK7set8ygk4E5Q5xgfJ1tSYphhergBuN1B+UGjqPfSFwHM4NAg1rT9EEfpFydqo9WwNIW+9IVnrFiQ==
X-Received: by 2002:a05:600c:1898:b0:3e2:20c7:6553 with SMTP id x24-20020a05600c189800b003e220c76553mr17904590wmp.13.1677457164095;
        Sun, 26 Feb 2023 16:19:24 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f5-20020a1c6a05000000b003d9aa76dc6asm10754727wmc.0.2023.02.26.16.19.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Feb 2023 16:19:23 -0800 (PST)
Message-ID: <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
Date:   Mon, 27 Feb 2023 01:19:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     Fotios Valasiadis <fvalasiad@gmail.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, lineprinter0@gmail.com, ldv@strace.io
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230226232201.4237-1-fvalasiad@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4iNpv0qnSu5UvmnoCayLPahY"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4iNpv0qnSu5UvmnoCayLPahY
Content-Type: multipart/mixed; boundary="------------i2Orcs3oolvTV29565C621Ha";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Fotios Valasiadis <fvalasiad@gmail.com>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com, lineprinter0@gmail.com, ldv@strace.io
Message-ID: <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
In-Reply-To: <20230226232201.4237-1-fvalasiad@gmail.com>

--------------i2Orcs3oolvTV29565C621Ha
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =CE=92=CE=B1=CE=BB=CE=B1=CF=83=CE=B9=CE=AC=CE=B4=CE=B7=CF=82 =CE=A6=CF=
=8E=CF=84=CE=B9=CE=BF=CF=82,

(did I write your name correctly?
I've seen it previously in the reverse order)

On 2/27/23 00:22, Fotios Valasiadis wrote:
> Document the role of PTRACE_O_TRACESYSGOOD option in connection with PT=
RACE_GET_SYSCALL_INFO.
>=20
> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
> Cowritten-by: Dmitry V. Levin <ldv@strace.io>
> Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"

Patch applied.  Thanks!

I tweaked the commit message to include the original one,
which was great.  I forgot to mention this, but please
keep the commit message for revisions of patches; it's
always easier to discard some information later if it's
unnecessary, but usually it's best to keep as much as
possible in the commit message.

> ---
>  man2/ptrace.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 55d9fd36d..9737b3825 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -1111,6 +1111,15 @@ stop.
>  .B PTRACE_SYSCALL_INFO_NONE
>  No component of the union contains relevant information.
>  .RE
> +.IP
> +In case of system call entry or exit stops,
> +the data returned by
> +.B PTRACE_GET_SYSCALL_INFO
> +is limited to type
> +.B PTRACE_SYSCALL_INFO_NONE
> +unless
> +.B PTRACE_O_TRACESYSGOOD
> +option is set before the corresponding system call stop has occurred.
>  .\"
>  .SS Death under ptrace
>  When a (possibly multithreaded) process receives a killing signal

On 2/27/23 00:30, =CE=A6=CF=8E=CF=84=CE=B7=CF=82 =CE=92=CE=B1=CE=BB=CE=B1=
=CF=83=CE=B9=CE=AC=CE=B4=CE=B7=CF=82 wrote:
> Tried my best, hope I did it right!
>=20
> Thanks for the assist!
>=20
> And yes, it's Greek!

:-)

> Signing off with my github username most of the time.

Okay.

>=20
> Thanks again, here you go!
>=20
> =CE=92=CE=B1=CE=BB=CE=B1=CF=83=CE=B9=CE=AC=CE=B4=CE=B7=CF=82 =CE=A6=CF=8E=
=CF=84=CE=B9=CE=BF=CF=82

The applied patch is below:

$ git show
commit f04064d73b9f60f189c490e7ef5c3b9fa5498920 (HEAD -> master)
Author: Fotios Valasiadis <fvalasiad@gmail.com>
Date:   Mon Feb 27 01:22:01 2023 +0200

    ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
   =20
    Document the role of PTRACE_O_TRACESYSGOOD option in connection with
    PTRACE_GET_SYSCALL_INFO.
   =20
    Fixed incomplete doc.  PTRACE_GET_SYSCALL_INFO's description wouldn't=

    inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get=

    detailed information from said operation.
   =20
    Came upon this bug after writing a test program using
    PTRACE_O_TRACESYSGOOD.  After failing to find what's wrong I posted a=

    stackoverflow question which you can find right here:
    <https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info=
-always-returns-info-op-as-ptrace-syscall-info-none>
   =20
    Nate Eldredge found out what's wrong by looking into the kernel's sou=
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

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 55d9fd36d..9737b3825 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1111,6 +1111,15 @@ .SH DESCRIPTION
 .B PTRACE_SYSCALL_INFO_NONE
 No component of the union contains relevant information.
 .RE
+.IP
+In case of system call entry or exit stops,
+the data returned by
+.B PTRACE_GET_SYSCALL_INFO
+is limited to type
+.B PTRACE_SYSCALL_INFO_NONE
+unless
+.B PTRACE_O_TRACESYSGOOD
+option is set before the corresponding system call stop has occurred.
 .\"
 .SS Death under ptrace
 When a (possibly multithreaded) process receives a killing signal



Please confirm if you want me to push it like that, or if there's anythin=
g
you'd like to tweak.

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------i2Orcs3oolvTV29565C621Ha--

--------------4iNpv0qnSu5UvmnoCayLPahY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP79wMACgkQnowa+77/
2zLpDw//Xgu7Cv0DuNrSXjRNylgCmWRDnm8FE4BhZHQvvpylZWEwt2pg2vjSrI3E
K4oIOQ8Ynw0X7R0r7+oMqlCBJUliX85R3he8u/M9ZjLJkCVQ8BwVaw0XFRzyblRs
z0KSJPje9QIWpNOTajUt9nwimgspbEya5PS4AbNR+A4lvvjJcbVFidpK+2P0BAey
QgWaVDguP0vX9qbFPChslH2XVWV2pCbOrxLWzjzVgXCLz+mPEc4Q9js/+Zi4PN35
1tDMA/pUz4sYRIth1XatGmOi6I47/sbkPUcdosZ9l7BoMeuqZkhnTfqWQqeIxy8l
eKJB6sxt5CjE1IxWBwIlFgOXMsx15AcF3HKMpwgFktl3HmABfRRalpYnvo9guSp4
Llwq+/Rk3p++47B1IM2B/Gr8+8Z2uLlsbo5K9Ovi1QN+NKltW21j063xbLZ/h0Hq
ekd67WW+FdWTr91jB1HSaJNHEttXoCg8EQmtMIiy+qZ/Gft6TKwxbV0RAnHn1XDX
iBPmUfkPjvllDi/trCcEymg8NRZxRGeIYIHkCyX1aEktVVY4YGaafvRJb6c+9/t0
z+4oUagvIxMGoTkC35yNpN9LZAbFtwqwK7ogfRfUoxw07/3YC7oWPwxguE3yCQhX
R6y0j9DbXQAKETcKck/GjQWkewTq8gHlhh0+u+j5UO+30aiLiII=
=TGiG
-----END PGP SIGNATURE-----

--------------4iNpv0qnSu5UvmnoCayLPahY--
