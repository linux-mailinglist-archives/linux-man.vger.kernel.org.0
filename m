Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33AD9793D87
	for <lists+linux-man@lfdr.de>; Wed,  6 Sep 2023 15:18:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238095AbjIFNSc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Sep 2023 09:18:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233887AbjIFNSb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Sep 2023 09:18:31 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E142FCE2
        for <linux-man@vger.kernel.org>; Wed,  6 Sep 2023 06:18:27 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-402c1407139so37631175e9.1
        for <linux-man@vger.kernel.org>; Wed, 06 Sep 2023 06:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694006306; x=1694611106; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/3Ep1v+co0Z3n8HrvMTJrac7HrW3sOJ33mDBg52iTWA=;
        b=hNrNQoTTYDoICnntmKsgdX/LCuqm8roVsjIwhrjHjoKU8pjWCQVHS4/JxFngA4RRQp
         L2DYsGOYiFD9NH4I8aHJ26V7aDk8yuSIUtIICBV+2CxLWdydKD5C54KN34id4Sr5rSWj
         gZfiv9HVfASP/1haIZNGmJGv4mrmCaT7WvFirsv82A9kA0S3YAjjVj6PU9SX2uoVkUE5
         anrdHc2bllgDYygqJ0lrixJnjtBhztd1Mde25wlmUXCU+jFHlLU+6VgWFj3zyl1Qz/zP
         m8sb3kW1QEsIdSFj+GO2hNhgb1tqZRrBdGBFso9zSaqNx30AYXX87PNVT5lD52TAv2K1
         Y1+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694006306; x=1694611106;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/3Ep1v+co0Z3n8HrvMTJrac7HrW3sOJ33mDBg52iTWA=;
        b=iqGhAzExyt0VxbIPvzI7/bpJZDvpmebbsOyTYiUXoV1eEPLI9DDVQ86rASSaqls9fT
         R0/j9hhTlNgNQq1EjXF73s11An3At3jMjzDYRqnz4+Bmhf/Ax7UhN+N+pfqEBSbicZ38
         iIfQyJ6Way8Wzz2jt94lg/wBEJwxYZuPudmO963Y+kA9+5584Lt0Qgc8d4BNRQbjiMuW
         cDWkT1xN44LwEiQh0T8FU4nU3kbveBlCM7rlqNh2i+Oub/FHLNlFjxJziEaPCndX69rZ
         J7UvOmJVhPGiWSkjH4hH/9AW47jfh77HoUookfsylPlYGDoujlA0tsqiaqSLqc4UT2ws
         Zlaw==
X-Gm-Message-State: AOJu0Yz3eBQbnmX5TcLo1XgfPyifGfRN9Kf17azXFSMlfwpLpCd71Fzg
        HgziHaWL/Sw1ZXJwitofT3sJXljLiLo=
X-Google-Smtp-Source: AGHT+IHgJ2NNQXd4nFDvRz8qk5wdX5sdoFPGgoaVZ9ynLRWcu8L0MOZK3/71mD1RvFaQ4gzNSrsyGg==
X-Received: by 2002:a1c:6a0c:0:b0:3fb:ff34:a846 with SMTP id f12-20020a1c6a0c000000b003fbff34a846mr2265938wmc.22.1694006306024;
        Wed, 06 Sep 2023 06:18:26 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id a28-20020a5d457c000000b00317f70240afsm20467918wrc.27.2023.09.06.06.18.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 06:18:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx.manpages@gmail.com>
Message-ID: <75a451b3-eaa3-3826-77f9-fe5b3e675540@gmail.com>
Date:   Wed, 6 Sep 2023 15:18:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Reply-To: alx@kernel.org
Subject: Re: "VLA" syntax in synopses
Content-Language: en-US
To:     Stefan Tauner <stefan.tauner@artech.at>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20230906150038.783acf81@tauner-t14s>
In-Reply-To: <20230906150038.783acf81@tauner-t14s>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------d04OUK69xug0JuSgpfC0t7aX"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------d04OUK69xug0JuSgpfC0t7aX
Content-Type: multipart/mixed; boundary="------------jKaGP05Q671k56jW91mYCxjJ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
Reply-To: alx@kernel.org
To: Stefan Tauner <stefan.tauner@artech.at>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <75a451b3-eaa3-3826-77f9-fe5b3e675540@gmail.com>
Subject: Re: "VLA" syntax in synopses
References: <20230906150038.783acf81@tauner-t14s>
In-Reply-To: <20230906150038.783acf81@tauner-t14s>

--------------jKaGP05Q671k56jW91mYCxjJ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On 2023-09-06 15:00, Stefan Tauner wrote:
> Hi,
>=20
> last year a new syntax to indicate the (minimum) length of parameter
> arrays has been introduced to many function synposes with this commit:
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
c64cd13e002561c6802c6a1a1a8a640f034fea70

And these too:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
1eed67e75deff662dffce3195e55e608809eaafd>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
77f31ff920bc0abdf73ee4ece808ba4eeeff90a4>

>=20
> The additional information is great but WTF is the "."? I have asked a
> few C-programming colleagues and skimmed through the c23 draft to no
> avail. Then I looked up the respective thread on the ML and there seems=

> to be astonishingly little arguing about introducing such a new syntax
> that is not included in the C language.
>=20
> I've been teaching C at university level for almost 10 years and I
> think the dot is profoundly confusing to most readers and thus is
> actually harmful in documentation context.
> Of course it's not code but "just" documentation but its syntax is so
> similar that every C coder would be stumbled at least the first time
> they see it - unlike the case w/o the dot, which is legal C. I'd not
> add the static keyword though due to brevity but I would have strongly
> advocated against the dot if I'd have known earlier - but maybe I am
> alone with that opinion?

Thanks for your feedback!

We discussed the different options, and there seem to be two ways to do
it: legal C, or what we did:

"legal" C:
     char *fgets(char s[restrict size], int size, FILE *restrict stream);=


current manual:
     char *fgets(char s[restrict .size], int size, FILE *restrict stream)=
;

The problem with the "legal" syntax, is that it doesn't mean what we
want it to mean.  Let's compile a couple of files to see.

    $ cat a.c=20
    void foo(char s[n], int n);

    $ cc -Wall -Wextra -c a.c=20
    a.c:1:17: error: =E2=80=98n=E2=80=99 undeclared here (not in a functi=
on)
        1 | void foo(char s[n], int n);
          |                 ^

    $ cat b.c=20
    int n =3D 3;
    void foo(char s[n], int n);

    $ cc -Wall -Wextra -c b.c=20

So, I we decided to go with an extension to the language, which doesn't
mean anything legal yet, and we can give it the precise meaning that we
want.  This extension is currently not supported by any compiler, but
we're discussing the addition to GCC.  The conversation was paused for
a few months, as I wanted to have more feedback, and time to think, but
I'll soon contact GCC developers again to continue the discussion.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------jKaGP05Q671k56jW91mYCxjJ--

--------------d04OUK69xug0JuSgpfC0t7aX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmT4fBkACgkQnowa+77/
2zKvyBAAqWUJj2emb+WBDcn/h6ZEaq+yic2HojJH2ytgEZ3C03Vm+lYS930KmzPE
6i9nA72epZf57FeEMsGYd6YWcHYU1OCR+GdmsxhdCiNIZniSF2MQrZIJhNFmpJqX
TaxK0fUNMoaMsAKVSU4k0BOA7qVf5PjfZe7pyUwXSsg+dB+2kfxd2iTqQarSRCAu
3yJfUpwmHXoKXCBSn6uXqPbmRTRXL0Bd2QUaUjo3SK73hflayoLpl1XMAmxxFhv9
0uiPVxA0kZI4elOR5+qPl8APGP0B92jdxw9OQ+m+Tz1zIrClAUs6YzwDUqvjgxNW
8tFpxNEGoUdNRz43AQHAdKqxKictZGw2okvzS20ICEiwp1m2+7KnyDYvS9gOLopx
314bAGQdIq5wOSRPea8k7S6LdonDBXFb9KNhNMTmUJwboCgKxR4Dj+QVWPyQKMp0
+VuKc0T4dXzLEPG9/tfIW0ko0ekODVyiYOgxr7DgBvVk+tlZxS5kHmhDaLkfivnq
/etRG4TmpVHJztVmHtX2Ol+gdmRZaVxHoVwbU+9xQJiU9si1tVaHWGsdSD1ezTXy
bJPDAryZ0PXAWGRlJEhsKJ85uzOaq8WYM6k9GLKIee/Splj8xfFYWubkyObkvt35
dKKUudMJmySpd9MsT/p5QWwfbjsf0zviiXZKFuExasj15OK3lI0=
=UBUm
-----END PGP SIGNATURE-----

--------------d04OUK69xug0JuSgpfC0t7aX--
