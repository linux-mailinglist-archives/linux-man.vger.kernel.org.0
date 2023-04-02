Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B10F86D37AD
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 13:31:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbjDBLbs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 2 Apr 2023 07:31:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbjDBLbr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 2 Apr 2023 07:31:47 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B1571D2DC
        for <linux-man@vger.kernel.org>; Sun,  2 Apr 2023 04:31:46 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id m2so26588801wrh.6
        for <linux-man@vger.kernel.org>; Sun, 02 Apr 2023 04:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680435104; x=1683027104;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jHNIRoaqNN1eajBOvrxXdABszNAKZsaxrRsN+3Wa2X8=;
        b=mwbpm0BnTXfeZ7m9hheFqX9PMEkqF03W0RBprej+12CqYfB9KxzGF1ljT7+7YoRTOf
         Fx4x+ubvuK0xpbF3jF7zVzgAYFBklglN2UNYfshE+qg6XufY5ENrcgyJEaMEzc/wMGvI
         ECWLpeFKGPcEuZXsKLwxW+/lRiWC59xSFdG358cVSj9CeR/vqEWeXks8+I+kGaqOWl29
         hvpStr3UcAfhtpIsHMIICHcs8CMuD/G0z48AmJ2xUyxqsN0nEIL3muy1U/qYshPhxhBS
         YHMQU9Biqh7y5bA4Bjm98pQAbglOG8Zm/dHKovY96LyH+iy1GFpiWmKrKaVtyaPQsAEy
         32/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680435104; x=1683027104;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jHNIRoaqNN1eajBOvrxXdABszNAKZsaxrRsN+3Wa2X8=;
        b=L6IV79IR2o0FDWdx3tZMd7dOWVadaWcJoOAeak2/2PgzjDXu/Qb/FcfWQXNt5iAYVP
         JhtVQQjofrIWNGNdU/9R/4nxLSx5yB2v2w5AqAE7DBH6posYquMX9qSOIjWuJMcGXqs1
         F1HYxNEB/JzziMvsVKaAihwTW2HKHA2Ky/euTC+l4Larle3ejtW5illq+KNonFK+e41H
         xZAcoeIVcZQjU52Tobt+0Eywex02EG2gNE5A1Z5X3FZGMKfEUGjGnJJM0cbBsWd+ojW1
         0ZPB5/6MkQfqG+YTLGapVt/CJR9Y7fdJftoh4VBNpcDZyTdBNcJboonaZlCGwFH8Yf3s
         lgqA==
X-Gm-Message-State: AAQBX9fJCQugOl6U+jTkj6haQw8n8qXtAv8AR3vTdf8zh6WNhR3tayH3
        Nx3sUYRFFIjawOG/FeBqFWA=
X-Google-Smtp-Source: AKy350arQvxJ2zQ79ZSx/Gapr6a26HZTBwmRqVh/kgzmlbdUb64/a3SGqL51pXQKfcKoY6EDfiiQHw==
X-Received: by 2002:adf:fec2:0:b0:2d2:39d3:ce78 with SMTP id q2-20020adffec2000000b002d239d3ce78mr20044053wrs.10.1680435104587;
        Sun, 02 Apr 2023 04:31:44 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m18-20020a7bca52000000b003ee44b2effasm8783819wml.12.2023.04.02.04.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Apr 2023 04:31:43 -0700 (PDT)
Message-ID: <32c337fd-8f0f-098b-47c6-ca9f30a4f1e2@gmail.com>
Date:   Sun, 2 Apr 2023 13:31:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: INSTALL may need some elaboration on which man2html(1) to use
To:     Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <CAD66C+a5Ohowu+sVHV6dA7C1QWe=BqnEUJH52NHMUpNay22hQw@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAD66C+a5Ohowu+sVHV6dA7C1QWe=BqnEUJH52NHMUpNay22hQw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NR5N6DztlOhYxA29TgGkCAzd"
X-Spam-Status: No, score=-2.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------NR5N6DztlOhYxA29TgGkCAzd
Content-Type: multipart/mixed; boundary="------------McKDNpDAtj5zD4JWBvpVRyd8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <32c337fd-8f0f-098b-47c6-ca9f30a4f1e2@gmail.com>
Subject: Re: INSTALL may need some elaboration on which man2html(1) to use
References: <CAD66C+a5Ohowu+sVHV6dA7C1QWe=BqnEUJH52NHMUpNay22hQw@mail.gmail.com>
In-Reply-To: <CAD66C+a5Ohowu+sVHV6dA7C1QWe=BqnEUJH52NHMUpNay22hQw@mail.gmail.com>

--------------McKDNpDAtj5zD4JWBvpVRyd8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/2/23 05:57, Mingye Wang wrote:
> Hi uh,
>=20
> A recent catman patch by Alejandro drove me to try and look at what
> the current state of man2html is like, and to my dismay the Makefile
> didn't work with the "man2html 3.0.1" on my MSYS2 installation. It
> turns out there are at least three such programs around:
>=20
> * a Perl program (which is the one I got) dating back to 1997 and
> still having a live page on "nongnu"
> * a C program by (presumably) Bruce Korb (can't find the source code!)
> of AutoOpts.
> * a C program by Verhoeven and Brouwer stuck without a homepage on the
> web, last updated as man-1.6g.tar.gz. (+39 patches from Debian, welp.)
>=20
> I assume from the invocations that Brouwer's version is the intended
> one. Do we want to specify that in the file, or do we just wait for it
> to be replaced by groff?

That has been in the Makefile since the times of Andries's
maintainership (man-pages-1.47, year 2001, to be precise).  I only
updated the recipe to be a Makefile instead of a bash script inserted
in a Makefile recipe.  So yes, it seems to be made for his own program.

Currently, it works on Debian's man2html, although the produced pages
are far from what you would expect from online man pages such as the
ones in <https://man7.org>.

I would say wait for it to be replaced.  HTML is not a priority for me
right now, and I wouldn't lose a single commit in documenting that
detail about man2html, because, well, I don't expect anyone to use this
feature.  :)

Said, that, don't expect me to replace that very soon.  I have other
more important plans, such as adopting groff's new .MR macro (which
incidentally will also improve the HTML pages generated by groff
whenever that is done in the future, as will improve all other output
formats).

Regards,
Alex

>=20
> Regards,
> Mingye Wang

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------McKDNpDAtj5zD4JWBvpVRyd8--

--------------NR5N6DztlOhYxA29TgGkCAzd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQpZ5YACgkQnowa+77/
2zI3Bw/6A6l8vqskg5Z8quNU9KnMB7Kp9KfK5l01BVvYCPLaG05LaYy0mxLJQ8eU
JoeyA08ClTHp90hL09gxFju4J/mUPw5KYBQxH7Szzruy+1X85eXl5W5k0KJpAzPd
1smjffcZubJZDJ6RiNTGMLazspnOcYFhbKcE50PC39hftK4TWZYiYv8ELAim8ETl
mTx/sl+L9jxWIOCiSK7IWhmpIyxwnf/IiJx58a3tgf7WgJu2UXGPn7+Po8r5MHdE
fd1ECQq1wClHgPfc/Qu5N35eYkLHWepQ1TsVSU8iSl6HijQipRsXrwyGLHrIz76H
9AtvCw3ErrAv6ifY+/5BM671uamtNHX0nZvda7Nj4hNreRbHp3aMsNbqx5gpOBxT
wcZwWukmD77CAbO4PMwmHBcmIJ9dhtDhanBls2HwU4y9rXRnUV5FQmoqNfWBHyQc
Wh8vDBrGvJTDvijUpzOApBfS3bAiTKuXnMPHu94FjX5KngIi9Gbp7F8WsxW9bndW
v2AseaLK2Vfh1bB1RzRCBddMux7vzTMTwP9F1kTCHP2a+NxnIPaAKcaqPy+Xr91T
r5YTmhRKq35C0xqT/QnCW9wKYhkhXXJqh/UVU86I6/dVTUZkvPhUQUluXy8hLFnj
kOIk6/64MEAYz4Mrx8/0v3DDegKNzhKeb/vDtl+883mxloalP24=
=URmb
-----END PGP SIGNATURE-----

--------------NR5N6DztlOhYxA29TgGkCAzd--
