Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D3007944F4
	for <lists+linux-man@lfdr.de>; Wed,  6 Sep 2023 23:12:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236991AbjIFVMX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Sep 2023 17:12:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232411AbjIFVMW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Sep 2023 17:12:22 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0986610E9
        for <linux-man@vger.kernel.org>; Wed,  6 Sep 2023 14:12:19 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDD6BC433C8;
        Wed,  6 Sep 2023 21:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694034738;
        bh=nWv8AeE6SYyIVyRXWkOPNUMWuFwAV6vaL8SBZI3hWao=;
        h=Date:Subject:From:To:Cc:Reply-To:References:In-Reply-To:From;
        b=lGt3Zm7WtGYJl73QGqvO1VeAU/1xd/B6iqfhPmRbO3klYwCIQNIJxM4VC9Y2fIzPj
         e0pw5ybEWpfITKhYoA14R4EHejbUFy2Ua7Z/3YPBu91G38YkBndHkZNF2RSGqgV9dB
         CfcGM+zPvXbqE4ub7zbgHSYYVbaKlcFBi67MdGdvgqtYbXfHJouDUsNPBLvVeD5c9Y
         6rLZ3vsj5qexKj3VwhrixNjHZiy9hS0O2tyzcFWjqWiJD+qmbFqOarVm3ohmdZ0S9J
         g25MADBstZ1+PZgUzVuVDl80x7NdETJvpc/PY34y9ubDFEl+7qPB/6HORW79v/MiRS
         JRE9mLnwpsBGg==
Message-ID: <f2631f6d-69c1-0c77-07ca-de388702e0a5@kernel.org>
Date:   Wed, 6 Sep 2023 23:12:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: "VLA" syntax in synopses
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Stefan Tauner <tauner@technikum-wien.at>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Stefan Tauner <stefan.tauner@artech.at>
Reply-To: alx@kernel.org
References: <20230906150038.783acf81@tauner-t14s>
 <75a451b3-eaa3-3826-77f9-fe5b3e675540@gmail.com>
Organization: Linux
In-Reply-To: <75a451b3-eaa3-3826-77f9-fe5b3e675540@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------g00xfNEm0NWY4EA0lQlqqnp4"
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------g00xfNEm0NWY4EA0lQlqqnp4
Content-Type: multipart/mixed; boundary="------------0rnnW1FnQoEREsBYF73uNryI";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
Reply-To: alx@kernel.org
To: Stefan Tauner <tauner@technikum-wien.at>
Cc: linux-man <linux-man@vger.kernel.org>,
 Stefan Tauner <stefan.tauner@artech.at>
Message-ID: <f2631f6d-69c1-0c77-07ca-de388702e0a5@kernel.org>
Subject: Re: "VLA" syntax in synopses
References: <20230906150038.783acf81@tauner-t14s>
 <75a451b3-eaa3-3826-77f9-fe5b3e675540@gmail.com>
In-Reply-To: <75a451b3-eaa3-3826-77f9-fe5b3e675540@gmail.com>

--------------0rnnW1FnQoEREsBYF73uNryI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[Add an address that doesn't fail]

On 2023-09-06 15:18, Alejandro Colomar wrote:
> Hi Stefan,
>=20
> On 2023-09-06 15:00, Stefan Tauner wrote:
>> Hi,
>>
>> last year a new syntax to indicate the (minimum) length of parameter
>> arrays has been introduced to many function synposes with this commit:=

>> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3Dc64cd13e002561c6802c6a1a1a8a640f034fea70
>=20
> And these too:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D1eed67e75deff662dffce3195e55e608809eaafd>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D77f31ff920bc0abdf73ee4ece808ba4eeeff90a4>
>=20
>>
>> The additional information is great but WTF is the "."? I have asked a=

>> few C-programming colleagues and skimmed through the c23 draft to no
>> avail. Then I looked up the respective thread on the ML and there seem=
s
>> to be astonishingly little arguing about introducing such a new syntax=

>> that is not included in the C language.
>>
>> I've been teaching C at university level for almost 10 years and I
>> think the dot is profoundly confusing to most readers and thus is
>> actually harmful in documentation context.
>> Of course it's not code but "just" documentation but its syntax is so
>> similar that every C coder would be stumbled at least the first time
>> they see it - unlike the case w/o the dot, which is legal C. I'd not
>> add the static keyword though due to brevity but I would have strongly=

>> advocated against the dot if I'd have known earlier - but maybe I am
>> alone with that opinion?
>=20
> Thanks for your feedback!
>=20
> We discussed the different options, and there seem to be two ways to do=

> it: legal C, or what we did:
>=20
> "legal" C:
>      char *fgets(char s[restrict size], int size, FILE *restrict stream=
);
>=20
> current manual:
>      char *fgets(char s[restrict .size], int size, FILE *restrict strea=
m);
>=20
> The problem with the "legal" syntax, is that it doesn't mean what we
> want it to mean.  Let's compile a couple of files to see.
>=20
>     $ cat a.c=20
>     void foo(char s[n], int n);
>=20
>     $ cc -Wall -Wextra -c a.c=20
>     a.c:1:17: error: =E2=80=98n=E2=80=99 undeclared here (not in a func=
tion)
>         1 | void foo(char s[n], int n);
>           |                 ^
>=20
>     $ cat b.c=20
>     int n =3D 3;
>     void foo(char s[n], int n);
>=20
>     $ cc -Wall -Wextra -c b.c=20
>=20
> So, I we decided to go with an extension to the language, which doesn't=

> mean anything legal yet, and we can give it the precise meaning that we=

> want.  This extension is currently not supported by any compiler, but
> we're discussing the addition to GCC.  The conversation was paused for
> a few months, as I wanted to have more feedback, and time to think, but=

> I'll soon contact GCC developers again to continue the discussion.
>=20
> Cheers,
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------0rnnW1FnQoEREsBYF73uNryI--

--------------g00xfNEm0NWY4EA0lQlqqnp4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmT46zAACgkQnowa+77/
2zJ/eQ/9G4Mi+84ZyGfbRQgjpVQf/gfQBl9QBXdXVLtmKm6VQ31uK2+R6fHxEfS/
qbJJNEdf7DeBYphCKCQSHo3vzOt9nMreacp/juKNT9IyibcaficYU3FpHqscRhO0
y0U7c2qZ3FquV+sSMi4hC9PGemFnvyEp6fKubewT2S+wyl2bPitUQ0qYwyBauS7i
Mqj/+rmEddt5G5S+M+HLPsxGLamOMvcQu7N491KGMWE+bzu2aCDe4lRNeKKH9q2E
JFoQpU5rgQl+Ylnln8HZ3hyULqVcaP4NBqDcMGPqL55ceuEod87MhyEdxAQ+20lo
WX13q8PHL63jZQp7d5RcQdmA4/jVcicxKpSjBBlfOeXO/ABdOfcWAih8vjp6aD6W
4izfywcdDXdh7zeoukymnpCaJUfBOm/EfhI0K33fAJ8wWwXVr688u+ieC3oHbfwj
CBG0eCEgsA05KNkYKtn1mjKpAkoAIxMJB8ry9jg/bw98oNrbAs45ZR4hrvhLg1dc
r5ZyqPVg3WjGo9RtFNx3vP7pSzqN+ayfuM24qPlhJTH2/EIElPXHLJR166RMB4hp
89ZbY+7gU+d3/QaaZR1AzmPmUDww/pg7HzdUK++QupZj88tIRm5CQLMisDVwLWXy
PnyQKw4UV4xO4m3Xm/hMcCdOMdFkkaiH4/YgRHGBAi0Qv3alb2M=
=jT85
-----END PGP SIGNATURE-----

--------------g00xfNEm0NWY4EA0lQlqqnp4--
