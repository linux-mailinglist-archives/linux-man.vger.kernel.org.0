Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5718077E134
	for <lists+linux-man@lfdr.de>; Wed, 16 Aug 2023 14:13:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237522AbjHPMM5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Aug 2023 08:12:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244956AbjHPMMc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Aug 2023 08:12:32 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96E8E212F
        for <linux-man@vger.kernel.org>; Wed, 16 Aug 2023 05:12:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 28ACB61D99
        for <linux-man@vger.kernel.org>; Wed, 16 Aug 2023 12:12:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEEADC433C8;
        Wed, 16 Aug 2023 12:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692187950;
        bh=vPSg7WUor+8QT2NHSf2ZbG0Pb/sjXeDaULjjxFggT+Q=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=PJpEuem7XPn5Pb0CdihKVEqezK1RL+++IHr4fjuwYoW+U+B2lad/iYWyRM7p32Euo
         tTlW3N+TVr8uAkslHxJvU1pD2B+Kfq1pIe0ZvFRHnJRblC/0LrEbqVTY3dJa80eh3n
         1FnLwdDe8q0PY9pxy+epRUg3TcsYnNFjEppBKc+3lA7P6SjQtE3Irrrqk/9wQcmEei
         dHa6HlzAydHL4Ip80klGWKlqr/dVf/e0SEMfqu/NhdYYkNjVzFSU5s8RA/3PLZxl0j
         BhtbbQe+nv0aSNBraCQlWZyomonEhspvZkMjNlnOIt0NjRY8D4CheR8splpyrJEU+4
         KsjXA5GqCvN0A==
Message-ID: <21b02dac-5a0f-0632-23a4-7b123de36ec1@kernel.org>
Date:   Wed, 16 Aug 2023 14:12:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff <groff@gnu.org>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
 <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
 <20230816035522.fhfkciclx4dvxpzk@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230816035522.fhfkciclx4dvxpzk@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XHj0p30tKcWHKk71uVlHoag4"
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XHj0p30tKcWHKk71uVlHoag4
Content-Type: multipart/mixed; boundary="------------0OtKIpvtklEpvKEkVianvZi8";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff <groff@gnu.org>
Message-ID: <21b02dac-5a0f-0632-23a4-7b123de36ec1@kernel.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
 <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
 <20230816035522.fhfkciclx4dvxpzk@illithid>
In-Reply-To: <20230816035522.fhfkciclx4dvxpzk@illithid>

--------------0OtKIpvtklEpvKEkVianvZi8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-16 05:55, G. Branden Robinson wrote:
[...]

>> Would you mind sending an updated commit message?
>=20
> I did, but you found a fresh problem, this time with part 1, so I guess=

> we'll be going to v4!  :-O  Also I'm going to make an attempt to drive
> the part 1 change with sed as well.  Just to see if I can, and to see
> what happens.

Great!  (As long as it's kept as a separate patch.  ;)

>=20
>> Heh, I noticed some weirdness about it, but it happened to be after a
>> -rCHECKSTYLE, so it seemed like it could be some improvements that you=

>> had applied upstream to CHECKSTYLE.  =3D3 definitely made sense to tha=
t
>> register.
>=20
> GNU troff(1) does not raise a diagnostic if a register assignment is
> followed by garbage.  That's disappointing.
>=20
> Filed.  https://savannah.gnu.org/bugs/?64559

Nice.

>=20
>>> Please double-check for that before pushing to kernel.org.
>>
>> Please send one that I don't need to modify.  I don't like modifying
>> other's stuff, in case I break it.  :)
>=20
> Did v3 2/2 show up for you without quoted-printable damage?

Yup.  I assume Thunderbird is not messing with the source of
the received email.  I bet it's neomutt(1), even if I'd expect
it's not the kind of program that would do that.

Please send a hand-crafted encrypted copy in an attached file,
where no program can mess with it.

>=20
>>>>>> and against man-pages(7) recommendations.
>>>>
>>>> Well, we should update those to use MR.
>>>
>>> And man(7) too, I guess.  What do you think?
>>
>> I want to kill that page.  Please have a look at it, take anything
>> good that it has for groff_man{,_style}(7), and ping me when I
>> should sharpen the scythe.  ;)
>=20
> Ok, will do.
>=20
> If the page is withdrawn, I expect distributors will need to manage the=

> man.7 page using Debian's "alternatives" mechanism or similar; if
> groff_man.7 is installed, man.7 should be a symlink to it.  If
> mandoc_man.7 is installed, likewise.  If both are installed, the
> distributor needs to select a default preference.
>=20
> I expect you will want to emphasize this in the release announcement,
> when the time comes.

Sure.  6.6 will be a big release.  Maybe there are many bug-fix patches
to it...  like 6?

>=20
> This already needs to happen with soelim(1) and roff(7), but it doesn't=
,
> exactly; Debian renames mandoc's versions of the former to msoelim(1)
> and the latter to mandoc_roff(1).  Termux simply throws groff's version=
s
> away and installs mandoc's versions as soelim(1) and roff(7).
>=20
> I also use Termux.

This reminds me I need to ping for the replacement of my Linux phone,
which has issues, and I can't receive calls.  :|

>  Imagine my surprise when I upgraded to groff 1.23.0
> on my tablet and brought up roff(7).  I was expecting to see myself in
> the mirror, and what should greet me but the visage of Ingo Schwarze!

Huh!  Under what criteria do they choose mandoc_roff(7) as /the/ roff(7)?=


>=20
> Unnerving, no?

It is!

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------0OtKIpvtklEpvKEkVianvZi8--

--------------XHj0p30tKcWHKk71uVlHoag4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTcvSUACgkQnowa+77/
2zJdfA/7BWG6k1wtSJykskVz2SUyvMrLmnxN9BG19UL8GzrdNWkPT7qMZQZHZ988
Ro5hYuavLah7XMfHHPdqgueE2AGxh09gRcsoNsKBlWqvRjDlEOmcUKt8FBntyCcu
nC3jS0QKihrAh4uLNoRemBIp752aNMU7gLHUbTVyIPHhI7sWRpmKVGV3LqBROqd8
JFCrw7LiPLCBJgHCVD3PGGUFDX0JXtIlGvS4/LqSh+joxXP4nvUxF0r2TEJ00ZHS
flHytJq62XOTS2GXMPlYs8i6oIfszKlqwhNXR/Pch1BPWVLI2N+oSNbMTWsMO+IJ
jFh6zKt4ONr45Ck3BB4T3EGq3cXM7+fFOcIAcBPNEOHIzkKUib/GHJJ6xGXdglff
S42PgeXJrJrJC468PLU4FAMThla35dtq8ZZDHoiqsPjEYdY3PU4pfb/y8Kz4MVJe
JeyW2c5kB+Mte/VxVRLqVNswCzZlZ3yOj4061jpb/AiXkpHl8uUIj2pSbXEzSDjp
luByx15pgL+TlYYa2wEzfVv29AfAHXW+mRyuaCtx5EokxRwHbEyrGIHvfUbLkQkg
BNLRrF8IODfAz5FZHjQtseh4mTNbcwZMcWFT4B/UPPRbvvzxFFj7NnPr3Zlwhe06
ePiczvjfMCCiTB8LatVXvOfNJLL4PH+NSqfewh3sfjTyHC9vojY=
=dojW
-----END PGP SIGNATURE-----

--------------XHj0p30tKcWHKk71uVlHoag4--
