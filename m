Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 402A876C14F
	for <lists+linux-man@lfdr.de>; Wed,  2 Aug 2023 02:03:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230211AbjHBADL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Aug 2023 20:03:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230317AbjHBADG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Aug 2023 20:03:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D97AE9
        for <linux-man@vger.kernel.org>; Tue,  1 Aug 2023 17:03:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 124B76176D
        for <linux-man@vger.kernel.org>; Wed,  2 Aug 2023 00:03:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 895B5C433C8;
        Wed,  2 Aug 2023 00:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690934583;
        bh=RzmF6zcQI54DXX23Jr9dw8g+P3pbvUIrIUjQ8CIDTHA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=SMdZb0l35/R7YtlI56Bi34KuEHAGfl9ejJyLjQo0EbgRW8rZ+RquGfO49XL/pOdPA
         xSOYT0ygdWjGsJyJHvxg5SJvayJBtnp20d7u8LXEcFGn9Ir30ipFpF11BHl0KgFuIG
         56IgYtxirM6XhcUgI6+K/aoXpHiNoznOuw7DRVaFAUdLu7lLs/I790SAOjyV9O5svu
         //0PUrtph/A3gZS6dFYUCaY9GO96M9Fe/3t68NJ/zlMTLKhsz0SPL0oW3CZqx9vwhC
         RF2MLjoGPRry1Kh5q9gXG8WD5mN3Z+ekYhIeP0cfSCyykgvnppEU2XQy+BO6KCZCx4
         Ug+7h1z4QDsGg==
Message-ID: <f40505ef-3d39-d3f0-33e2-94bb3524ac57@kernel.org>
Date:   Wed, 2 Aug 2023 02:02:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: function prototypes, man(7), and mdoc(7) (was: boldface, italics,
 spaces and ellipses in synopses of commands, and *nix history)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff@gnu.org, linux-man@vger.kernel.org,
        Lennart Jablonka <ljabl@ljabl.com>
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
 <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
 <20230731154535.iqx4zuzztcum6f66@illithid>
 <ZMgAC_-lM62BHKV0@fluorine.ljabl.com>
 <20230731222027.efuv6zetn2fh3fjg@illithid>
 <a6c65fe9-2126-73aa-7852-cf6d4f9f84b5@kernel.org>
 <20230801200105.l2fpjwy7roo3km7w@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230801200105.l2fpjwy7roo3km7w@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------YGYeb8oGSnKlcPhfRqiOsan1"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------YGYeb8oGSnKlcPhfRqiOsan1
Content-Type: multipart/mixed; boundary="------------loi9DuN0WY99Ip9G9ryUMKZj";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org,
 Lennart Jablonka <ljabl@ljabl.com>
Message-ID: <f40505ef-3d39-d3f0-33e2-94bb3524ac57@kernel.org>
Subject: Re: function prototypes, man(7), and mdoc(7) (was: boldface, italics,
 spaces and ellipses in synopses of commands, and *nix history)
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
 <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
 <20230731154535.iqx4zuzztcum6f66@illithid>
 <ZMgAC_-lM62BHKV0@fluorine.ljabl.com>
 <20230731222027.efuv6zetn2fh3fjg@illithid>
 <a6c65fe9-2126-73aa-7852-cf6d4f9f84b5@kernel.org>
 <20230801200105.l2fpjwy7roo3km7w@illithid>
In-Reply-To: <20230801200105.l2fpjwy7roo3km7w@illithid>

--------------loi9DuN0WY99Ip9G9ryUMKZj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-01 22:01, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-08-01T01:03:38+0200, Alejandro Colomar wrote:
>>> My goal is that it not be obvious to the causal reader of a man page
>>> whether man(7) or mdoc(7) was used to compose it.
>>
>> Function prototypes are the biggest difference, IMO.  I prefer how
>> man(7) pages show function prototypes (the type and the variable are
>> formatted differently).  Though I'll give to mdoc(7) that parentheses
>> and commas in roman are nice.
>=20
> You will scandalize some people by suggesting that bold isn't the best
> choice for all literals.  ;-)

I enjoy scandalizing people.  ;-)

>=20
>> .3 pages are easily distinguished in the first screenful of text
>> without looking at the source, in the SYNOPSIS.
>=20
> I think it might be tricky to achieve parity here without either:
>=20
> 1.  imposing eyeball-bleeding complexity on man(7) authors; or
> 2.  implementing the most radical of my man(7) reform proposals:
>     an extensible semantic tagging mechanism.
>=20
> https://lists.gnu.org/archive/html/groff/2022-12/msg00075.html
>=20
> I'll see how we weather the `MR` storm before sailing into that one.

Huh, I didn't know this meaning of weather (I didn't even know it could
be a verb!).  Interesting.

And yes, MR will take a lot of time from us, I expect.  Just remember
about references to specific sections or even subsections within a
page.  I have been thinking about these things, and some day I'll share
my thoughts, but I can resume them in "everything we suggested doesn't
scale well".

I'd fight that battle before going for macros specific to functions.
Oh, and if you manage to have full-paragraph or even full-document
knowledge before even starting to print a line, these macros might be
even more juicy to add (just imagine not having to hand-craft the
alignment of continuation lines of function declarations and yet
having a nice alignment for a page).  :)

>=20
> In any event I'd need to devote some serious time to considering the
> shape of the problem of function declarations.  Possibly their hopeless=

> variability is what led mdoc(7)'s designer(s) to implement its
> challenging "called"/"parsable" system of argument interpretation.
>=20
> And think--C language declaration syntax has gotten _more_ complex sinc=
e
> mdoc fossilized around the time ANSI C froze.  Type qualifiers are far
> more often used now, and attributes were, if not inconceivable, then on=

> a distant horizon.

And consider my proposal for a GCC extension to use array notation in a
backwards manner with buf[.size].  It won't be nice.

>=20
> But maybe that won't matter: with only three font styles available
> (though we probably _could_ employ bold-italics if we _had_ to), there
> is a limit to how many different sorts of things we can represent.

We'll see.

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------loi9DuN0WY99Ip9G9ryUMKZj--

--------------YGYeb8oGSnKlcPhfRqiOsan1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTJnS0ACgkQnowa+77/
2zL9rhAAlhTal4suGl6lLbYnJ6E97roUjwwv6v6+zHp3Vx2m8RpmUHzP17MqJDmV
he2CEeCpgnsLyiYL0Z9+fw8AcuRydLZhsNvGKLL7FjK1YJ2aIk+dIDyQ16OS0r1l
/rn3r//yY6YL/q1nMk2Kn6UaEfDc54vV455Ym/ZDZDAXUppsqmTHhnj+P7hY5X/v
nZdKzaeLPsCqQJFvKkhdoT1n5oJdtLC62YgLpTrU0nAQZdc0b6DgpnOMUTM56d61
EmB2P7gmrHxDGCGeYn9ZPYz6MUoQAzPcp81WQtJxFW2AAWKKA7dQD/tyLOrGQwjU
x21lTjrwYgDWXPXoskQlOsYuI/9gQEShpLu7XM8+O9Oge1ZTQxxz+WcYkDt+38vt
y+SkYyLoQTWb/gkanpxQ0UEm1gWR32GEnbYEt09diVdmFOF6o81m1IXalE15zTZv
0DGFa1m9nvzxLN/iVFlkQfyVYCDPf92JOG66ms+aVkNX+tZfeAq42gXPNm9IQOW9
YGFgWNJZOvKCPjQjQky69DtcKF1CHkEO5OtXsFlV1nLHR4oJZtNbxoW1K78CXGuV
FeHbe3hQAEFf3vaNAMEs7gjQ89LzE9xYoy4r9z/QxRE2uEPdeLmMfq6HgxmrFM5v
BZo8j7gDRkgvl9/n4MdfSkr0JWY+bO4Beo9CjzujR35oyXlw9eU=
=9b7m
-----END PGP SIGNATURE-----

--------------YGYeb8oGSnKlcPhfRqiOsan1--
