Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEB346E4FA2
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 19:51:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbjDQRvn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 13:51:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbjDQRvn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 13:51:43 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B334C3
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:51:41 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id d8-20020a05600c3ac800b003ee6e324b19so13509433wms.1
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681753899; x=1684345899;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c1s8UxSlfSGAy9lC6RUs6UX36vk5LJEjGCBRvZjD+LQ=;
        b=OOIgG2TMxzGDXeCo/9L8kunHCin8X4Zp+DjHRiX35nfAc6R13z9Y5tj5KEr4kl9xzp
         hxDf+bZWiPZAj/LnZavxWg9hlm0PnpMAODDK1RehsLu7VVG5rkwB2vY9U10j04PlF6ii
         tuJVmGKO3POkQqR+AQIWn+CruS+xFyhrLkkU3Vz0FiJw+8yKGU0dWvpMQ7hU3aGs3sCv
         4DH4kh8eCCUvpYdyfE1i0tpCPeWMQrwrK6rvLKBLgbqYLrcjbL99lrY898NCM9hcRDx8
         XkyMz2CW3wzKeWPyqRByKjY+/Uz8ZvAj2mCQ0rCJyyjchPwVG6q2o1RAgdEDHHF4+h3p
         LdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681753899; x=1684345899;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=c1s8UxSlfSGAy9lC6RUs6UX36vk5LJEjGCBRvZjD+LQ=;
        b=NDAZL/rIwIZ1HIDRrKXGnXQOn1dyqSDEqGt/O0SWGWmgpJfhiDdLa10MXajYseYl8C
         EaaQBdi/E//xav7HOTZywL91qrBBpyHxU3YCDoEzXk823hn7qtVBo5nWDdJ9MUlb6idT
         XzhhDHsCGlkbt4nx1TEyeiiJ0UiSEUrjlwGFiYktk0+1GSQmErAJ3XzE3P5sMxwxOAtF
         hyWW7PRA8zbs01cIHaoxI7MrJkEcdDpdZmMBEOrN1yQgEm8SGDBRaz/bHLfrBWy5Ou/i
         yIU8Vlw8+4V4X7hWEGKpESMyBzsWg5/Hrl0bAgYzP0JVJbVtzCG9ZKaCVzoRKLUhgc2y
         10JQ==
X-Gm-Message-State: AAQBX9fE5PohfHkKWenuZIosJBE06j7KsBlHujl95Lw39lZ30F8vsmcM
        bN6RFWqPMzGH3qgAHYe6Q+g=
X-Google-Smtp-Source: AKy350ZVsiJEI3AKzt+N/69Z6Di2mZYnq2AHhJp0bSJCh+nPUfw9pWpuYB9A2+XNB1qETk5i6KdBUQ==
X-Received: by 2002:a05:600c:229a:b0:3ee:9909:acc8 with SMTP id 26-20020a05600c229a00b003ee9909acc8mr11628060wmf.32.1681753899482;
        Mon, 17 Apr 2023 10:51:39 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id d9-20020a1c7309000000b003f0b1b8cd9bsm9488383wmb.4.2023.04.17.10.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 10:51:39 -0700 (PDT)
Message-ID: <ac542bcb-083d-f37f-6cbd-5b9848d029c5@gmail.com>
Date:   Mon, 17 Apr 2023 19:51:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] bin/stdc: Improve output formatting
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <ZDjGUp5t5Fefb+zW@dj3ntoo>
 <852b1842-3d1b-2b40-7e88-a8a34d00d264@gmail.com> <ZDpQYWOGbOEyDEuz@dj3ntoo>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZDpQYWOGbOEyDEuz@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------X0n3p0BR49K5gYXtlT0a8tL0"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------X0n3p0BR49K5gYXtlT0a8tL0
Content-Type: multipart/mixed; boundary="------------jVxrI78GKm7tRGaEU49gEHA0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Message-ID: <ac542bcb-083d-f37f-6cbd-5b9848d029c5@gmail.com>
Subject: Re: [PATCH] bin/stdc: Improve output formatting
References: <ZDjGUp5t5Fefb+zW@dj3ntoo>
 <852b1842-3d1b-2b40-7e88-a8a34d00d264@gmail.com> <ZDpQYWOGbOEyDEuz@dj3ntoo>
In-Reply-To: <ZDpQYWOGbOEyDEuz@dj3ntoo>

--------------jVxrI78GKm7tRGaEU49gEHA0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oskari,

On 4/15/23 09:21, Oskari Pirhonen wrote:
> Hi Alex,
>=20
> On Fri, Apr 14, 2023 at 13:26:59 +0200, Alejandro Colomar wrote:
>> Hi Oskari,
>>
>> On 4/14/23 05:19, Oskari Pirhonen wrote:
>>> Remove leading whitespace and collapse multi-line declarations into a=

>>> single line using (g)awk.
>>
>> I can't reak awk(1) :(
>>
>=20
> Awww man, but I even left the optional semicolons in...

:-)

>=20
>> But I like the idea.  I implemented the same using sed(1) after your
>> suggestion.  Does the below patch look good to you?
>>
>=20
> I actually had an earlier version with sed(1), but it used
> looping/branching to handle the multi-line bits, so I figured it was a
> bit ugly and didn't send it. I didn't think to try `-z`.
>=20
> It seems to do the same thing, so LGTM.

Good.

>=20
>> Cheers,
>> Alex
>>
>> P.S.: I forgot about writing a man page.  I'll start now.
>>
>=20
> I was about to say "and license file and appropriate blurb" but then I
> saw your commit. I've got some suggestions for the man page, so I'll
> send some patches sometime soon.

Sure, please!

>=20
> - Oskari
>=20
>=20
> Since you said you can't read awk, then just to satisfy your curiosity,=


Thanks!

> here's what was going on:
>=20
>     BEGIN {
>         RS =3D ";\n"
>         ORS =3D RS
>     }
>=20
> This block is run at the start before any records are processed.
>=20
> The default Record Separator is "\n", but here we set it to ";\n". In
> (g)awk, a value of `RS` that is >1 char is actually a regex, but we onl=
y
> need to match a literal string. The Output Record Separator is by
> default also "\n".
>=20
>     {
>         gsub(/\n/, " ")
>         sub(/^ +/, "")
>         gsub(/ +/, " ")
>         print
>     }
>=20
> This block is run on all records, since it doesn't have any patterns fo=
r
> contitional execution attached to it.
>=20
> `gsub()` does an in-place global regex replace on a string, similar to
> the `s/regex/replace/g` you're familiar with. It takes an optional thir=
d
> arg, but if it's left out then it has an implicit `$0` which means the
> entire current record. `sub()` is like `gsub()`, but only does the firs=
t
> match, similar to `s/regex/replace/`.
>=20
> `print`, without any args, prints the current record followed by `ORS`.=

> This was set earlier because the `RS` is consumed from the input as it
> is being processed record by record, but we want to keep the output
> looking intact.
>=20
> Hopefully not so bad after all.

Meh, I'll need some time to get used to it, I guess :)

> Awk is pretty nice IMO (and gawk in
> particular), and I would recommend checking it out if you find yourself=

> borded one day :)

So far, I've almost always found one way or another with more specific
commands.  The only case I find awk(1) interesting is for processing
columns; it's quite good at that (e.g., for printing column sum totals).
The other alternative I can think of is pee(1), and process each column
separately, which might be more readable (for me).  But I might give it
a try some day.  :)

For now, awk(1) is only for `awk '{print $3}'` to me.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------jVxrI78GKm7tRGaEU49gEHA0--

--------------X0n3p0BR49K5gYXtlT0a8tL0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ9hyMACgkQnowa+77/
2zKREw//T6ekVciulsRGLxebRqzdOFypsSXA7ufFf2sxTCXRQKY8Vn58g7AenUcb
u1tEcVgEb555tQMSu/9+1BiLcrWrjrVA9HsBXqFmS4w8UcqjtDPkMVGKcL6+JnDW
FxrFzixWUZG3xJHq/dm/LmfryY/RUmnQY/TrJjmFUMFdySUtYbHH4g8/1ilciAKG
OMD040Rn6N5B99TPR4y3HehV37RPK7XK8dQdxAkwpFTkRPo1SG1n+JTuTvPRSX7O
3y5WPRYGiTmunIPXWpznzse4wnc4QS3H4S5GuGAZl0lNr1VuoUiG0/hoxqq27a9M
K59PPmsZTraNSJFuL4nQmEShfrdlPS5DEFgsUfQE6MrTXRmp9q9D6tpf2pwzeKuR
/4V1V98bsea/wTnr3YNI9TPHQ9ZWlgd2tdkcbL8FvSvqrlCdOMprKIi2A0VPRIRq
QKDcqSw3b3ceBjIFz2LsqQnLCPsFn81ZOMRO8oT/P8l3p8qG5RHqfHnSeSHme3Y0
N4LQoZ3DDhdCrBJ9oJeOOe0wby8uilY8hvtFRODILfGboqsUX11eHWZXe2YFpKVp
SW5YCgV8DuhBkkPU+H1wDzoNjn+jjz/NlllacOxlMr5g/X2dmJGbc6xakd/zvIcH
4FxNPzeTXx+HPICvH6FnANgxICQBKroqysLK55HwCP5sirHZ1vU=
=6TzB
-----END PGP SIGNATURE-----

--------------X0n3p0BR49K5gYXtlT0a8tL0--
