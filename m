Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF09A77E8A0
	for <lists+linux-man@lfdr.de>; Wed, 16 Aug 2023 20:26:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345487AbjHPSZ6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Aug 2023 14:25:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345486AbjHPSZb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Aug 2023 14:25:31 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 381752702
        for <linux-man@vger.kernel.org>; Wed, 16 Aug 2023 11:25:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AA03164A03
        for <linux-man@vger.kernel.org>; Wed, 16 Aug 2023 18:25:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29A5DC433C7;
        Wed, 16 Aug 2023 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692210324;
        bh=3CnESHZQG1ln9laF/RbwbegWgE6ymXqBEJMxRUOUYn8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=jy3vZj6QemIfjMAiKXtBUm6FSShfcpIFnKV3YcdyqwerBoBpnW4WvBfZvOyaXlx9Y
         2RaWG+O8Wazuc5+Uzu+jnW8fV180GV0nwQOhavgkuCK7bzBGVxYKRn+bdf0AZAficD
         yJjiDZPUNmq9N1BvxrZJC2oJAhCpVZdP6AwPbghh+JowLRRD8zJo17fagnPnQsBv8H
         p+Id0gL0QpwnhMQSdW7ufWxhPUUbD7l3YVrZ+r1ZDvnsLYkmPcigR2m7YWBK4A9I7b
         8w5khjBpQiZWE0kestVGikGOmNTvn2LdF0yncY0SEH4nEdrFo0+rvmSXb/7FI12z76
         NGXxKw21zfzGw==
Message-ID: <0868892e-3c5e-c6ae-f0a7-bfd9b08987c6@kernel.org>
Date:   Wed, 16 Aug 2023 20:25:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
To:     Ingo Schwarze <schwarze@usta.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
 <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
 <20230816035522.fhfkciclx4dvxpzk@illithid> <ZNz6acTbfc6SydZc@asta-kit.de>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZNz6acTbfc6SydZc@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JkWEIilNqFpBVTrkM5Z4B8Vv"
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
--------------JkWEIilNqFpBVTrkM5Z4B8Vv
Content-Type: multipart/mixed; boundary="------------057Umlwn3D7D2JYJr72zhK7m";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Ingo Schwarze <schwarze@usta.de>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Message-ID: <0868892e-3c5e-c6ae-f0a7-bfd9b08987c6@kernel.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
 <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
 <20230816035522.fhfkciclx4dvxpzk@illithid> <ZNz6acTbfc6SydZc@asta-kit.de>
In-Reply-To: <ZNz6acTbfc6SydZc@asta-kit.de>

--------------057Umlwn3D7D2JYJr72zhK7m
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ingo!

On 2023-08-16 18:33, Ingo Schwarze wrote:
> That perspective is not really helpful for general purpose Linux
> distributions: for these, the Linux man-pages project matters a lot,
> and that project is not considering the man(7) language as obsolete at
> all.  That i keep recommending changing that stance does not appear to
> have much effect so far

It does have an effect, or I like to think it has.  Branden and I are
pushing to improve man(7) to be on par with mdoc(7) where it's lacking.

I also recently added support for mdoc(7) in the build system, so new
mdoc(7) pages will enjoy the same linting level to which I subject our
existing man(7) pages.  If anyone wants to write new pages using
mdoc(7), they're welcome.  I'm not going to require man(7) (but I
prefer it for my own pages).

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/share=
/mk?id=3Dc76a587148d9b69667852311ece53403b1458844>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/share=
/mk?id=3D5a34548ecbf4200b4a7bcc3ce9f26bedd84450cb>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/share=
/mk?id=3D3c8198d1786501eb4a9e9a46c61c17ff233f3d54>

So, if anyone wants to add a page that's not present, and decides to
write it using mdoc(7), it'll be welcome.  That includes the suggestion
of a new intro.1, which IIRC was written in mdoc(7).  I should revise
that page.  I lack experience using it, but I guess I'll learn more
with enough time.

Also, if anyone wants to fork this project and rewrite it using mdoc(7),
or maybe use it for having a documentation repo of whatever project,
I made it easy to do so.  (In fact, I added mdoc(7) support for linting
an mdoc(7) page at my job.)

I even plan to add support for mm(7) pages, if POSIX deigns to talk to
me to provide their sources.

> and isn't relevant for the questions at hand.
> Either war, a disagreement regarding the merits of some policy is
> not a good reason to deprive users of information they might require.
>=20
>> I expect you will want to emphasize this in the release announcement,
>> when the time comes.
>=20
> In the Linux man-pages project release announcement, i recommend
> simply saying that groff_man(7) replaces the former man(7) that used
> to be bundled in the Linux man-pages project.  For the purposes of
> the Linux man-pages project, the man(7) page distributed with mandoc
> isn't useful, so no need to confuse the users of the Linux man-pages
> project by talking about it.

I'll probably have a few suggestions of how it could works, so that
every distro understands what to do (even the small ones), but yeah,
I'll keep it simple for the generic case, and suggest that most
distros probably want to have a symlink from man(7) to groff_man(7).

>=20

[...]

>> Unnerving, no?
>=20
> Heh, buhuuu!  <evil grin>

:-}

Do you have in your plans to add support for MR?  That's probably a
blocker for applying Branden's patch in the master branch.

Cheers,
Alex

>=20
> Yours,
>   Ingo

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------057Umlwn3D7D2JYJr72zhK7m--

--------------JkWEIilNqFpBVTrkM5Z4B8Vv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTdFIoACgkQnowa+77/
2zLMZw/9GR8le5qHdcPDVq3DAHJrupp/h6uilMn6n5VC/0TuqshUBgbWCDyqqrWW
IWLBm1N3n6MrCqCy4YjAxXxPhR+Hj2dsDc1w+RxAbGwOh4GWVIq2r+s9mmTLlFrs
pJyJ5e4qnnd21Dm/hZE8o4EIGGzz81p+207EaVXNNuUuQ1BzPjj01xeZ0D/I5rl9
qkKpu+blJY/QyfdaSt3twnqBPGcZlfBl1oXZSUSR4eubfXQJf9DQOuf24X6rtTC9
yKFiVVbTD9eEukZEGg0uNRYtQ29oosS/6fkSq/IFr3shuQe4vZDL3vMl612pY79C
Bcx51ZvLwppQ2KGwL6+NHvOYurTR/SfpxQv5L96pEiykD/IkFoQnzwR+nDbVr8x9
Egueb4LHm+MfgsRcDsmudhnwim4+RZ7c67vwk2hLcZPY4d1Y9ezRF8fcncRwg11N
UDIRKQExa32vpWhnVdIK6Pyo0VZXEyTMyLjJKKIwtmye2au1vxWMUcZqyXoJkjJo
VIrBMuIxyAOSOFDoqOMkwoQQJQkWEjxazuj54DfYDNAqNNmx169jTZCT+YAM4xtS
smohk7t9TFdoYdYCLL1rwm5ab/ROXUZqWD1lLGvYZ4WGBk93JbYl39iNSrHNJy1i
Wz+A+hAhI8I/IZioSMQlbKHeCZ5bwe+/a7JoGNPwPsd5w1O9p90=
=T7yg
-----END PGP SIGNATURE-----

--------------JkWEIilNqFpBVTrkM5Z4B8Vv--
