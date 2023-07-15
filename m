Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B24B754A20
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 18:35:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbjGOQfL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 12:35:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGOQfL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 12:35:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 178F6103
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 09:35:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A080760BB5
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 16:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4032CC433C8;
        Sat, 15 Jul 2023 16:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689438909;
        bh=6dnSVeOF2v+cwsFf6C2uUmRCAROkK5ZXMTcBsWL1hJ4=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=O3YFeAocgMp5lxmpIhATiow1xJdQSWFLtd2rMv1ZLKUKvTRoSePe/noTgHx4eSFMf
         O02wESIkx+oEXOZLM7s2YHnPkg1g3XFsDvoNFwff3crFwSqWOgQz+zqbAbaFBp+INL
         kTDyejKHfJ9X0DxMGzr4MqfSplq9U0MtqrBMAJvGfShWlrjb5evw6xtSnCkaCmi4OF
         nvBhU8mqXvBlISKqLrptshPucoBdO/YUp7tNOcouySODIEN0Wzgi337Hx8JEGcKlG+
         j8vCw+Agc7gkxTRxaRhLrN/j127QcsxJJx3r4X+n8l3xWiIkifYFaVQDsst+TALib/
         xHQ99S44Ps7mA==
Message-ID: <d33c2eee-8be0-6a00-9ffe-239cc41c6242@kernel.org>
Date:   Sat, 15 Jul 2023 18:34:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] recv.2: msg_iovec / MSG_ERRQUEUE / -v
Content-Language: en-US
To:     Rob Linden <rlinden@redhat.com>, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1idds0cHlt8Sr7jcY7MJabGv"
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
--------------1idds0cHlt8Sr7jcY7MJabGv
Content-Type: multipart/mixed; boundary="------------MQ988GvqbA8g0SBoxUsCZBU7";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Rob Linden <rlinden@redhat.com>, linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <d33c2eee-8be0-6a00-9ffe-239cc41c6242@kernel.org>
Subject: Re: [PATCH] recv.2: msg_iovec / MSG_ERRQUEUE / -v
References: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
In-Reply-To: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>

--------------MQ988GvqbA8g0SBoxUsCZBU7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob, Branden!

On 2023-07-12 11:05, Rob Linden wrote:
> Hello Alejandro!
>=20
> This is a combined repost of the 3 individual patches I sent in June.

Thanks!

>  (I
> had thought it makes sense to split it up, because the changes were
> unrelated, so maybe one could be approved while another one needs
> discussion).

Yup, normally, I prefer them separate, but if they are somewhat related,
I prefer a set of mails, so that subsequent patch mails appear as replies=

to the first mail.  Also, since I was away for a long time, my mailbox
was a bit messy.

Basically:
	git format-patch master..HEAD -v2 ...


>=20
> I think there is a mistake on the manpage for recv.  In the description=
 of
> the flag MSG_ERRQUEUE it says that data is passed via "msg_iovec".  Thi=
s is
> probably referring to msg_iov in struct msghdr (from
> /usr/include/bits/socket.h).  A "msg_iovec" doesn't seem to exist.  May=
be it
> was spelled wrong because it's of type struct iovec.  If it is indeed w=
rong
> then the following patch corrects it.

This sounds reasonable to me.  Please include it in the commit message.

>=20
> I think the flag MSG_ERRQUEUE, that is described on the man page recv.2=
 is
> only applicable to recvmsg, and not recv or recvfrom.  Maybe it would b=
e
> good to mention it, just like it is specified for MSG_CMSG_CLOEXEC.  Th=
e
> following patch does that.

This seems reasonable, but could you please provide something a bit more
tangible than "I think"?  Some kernel documentation?  Some test program?
(A test program would be excellent even if you have something else.)
Another reason?

>=20
> While reading the recv manpage I came up with some suggestions which I
> believe would make it easier for the reader.  They are not corrections
> (except for the last block, which I believe was incomplete), just
> improvements (IMHO).

Please also include this in the third commit message.

>=20
> Thanks & all the best,
> rob
>=20
>=20
> From 830a1b1233eb69bd8a4a64296581d094fb0edc46 Mon Sep 17 00:00:00 2001
> From: rokkbert <rokkbert@gmail.com>

[...]

> +.BR MSG_ERRQUEUE " (" recvmsg "() only; since Linux 2.2)"

I believe it should be recvmsg()-only, since it's a compound adjective.
Branden, can you please confirm if I'm right?

[...]

This third patch doesn't apply cleanly.  Please check.  Also, please send=

as separate mails that are in reply to a first one, as a patch email
series, instead of a single email.

Thanks,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------MQ988GvqbA8g0SBoxUsCZBU7--

--------------1idds0cHlt8Sr7jcY7MJabGv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyyrMACgkQnowa+77/
2zJGgRAAnhDpPuLCZMPyJoDYfjW6UeDPtuazJkt5jeD8lDV622xP6wUdpkFccRDZ
uQMY4PccCzhxLKm2xE1lZOKEgQ88N9OIDc6aA9QpqinzWIrsvSR+mHL6EOOfEV6l
B2jDzSO2NXSdXZRuR+QGjq9FsDNkNciKUtm4v2wPrH9EGVKayMzsH2vAvKZOYEJ0
ohoL7EHkA2rbOrBhuGkJ/kY9Z7e7r7nGdh8/SjVku4yjxO9uCG6EfYt1iFS0axhL
yV1bYFGK5pJIyoJCTHiu6LsyiFuyPfHyrfpuNI5ItwMyOLF99O0ryJ8mebUN+yAD
4uOAsKO4mPI3+ZH6f0wjcvjFyH4jY44uL773OaDZwPF7rB6P8hOknXv/UfY/4wYu
SOlPj1V7Ayj+EIcMic0L8EjpFhs1zVqU99CTPeailiR20ErZ6nrVNHgEMrXWTJ7a
cgjgLpRZ2IenvU/gqwr567rVAPx1aAQvdNXKdGepzZIzd/mcURNuXLLIRg0Gmz53
p93Zbuq+xMQYylg1Z4FwDdJJNcu9xBoeIbFg2VetZUTZdyXSRR2++XtGh10qVVu9
/zykcHwJWEuR6z3Ag/shWJBwNDlrGFNnL6msNdviqiIHQUtplNvCB1/P+Yd1NOXB
hM1dJIElbEVaXTzG2rx37UHzfNBK1S3UVLaZvLCdLtqclNII7Rw=
=Wvp4
-----END PGP SIGNATURE-----

--------------1idds0cHlt8Sr7jcY7MJabGv--
