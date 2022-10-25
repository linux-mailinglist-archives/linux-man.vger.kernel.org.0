Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EE6160D071
	for <lists+linux-man@lfdr.de>; Tue, 25 Oct 2022 17:23:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233280AbiJYPXy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Oct 2022 11:23:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233302AbiJYPXd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Oct 2022 11:23:33 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D9B9A16EA02
        for <linux-man@vger.kernel.org>; Tue, 25 Oct 2022 08:21:33 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 829803BF8;
        Tue, 25 Oct 2022 17:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1666711290;
        bh=z4qt7krLzQJfmRzWcEKOa0yGDKopAEJAF8vUPCExp3k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PhFK28CommNbbvzJbYOgtSREXeswqn/FaUhOC8oVihdJ7soYOdbxU/Y6/hcbJbGdw
         Oo6kczxMeNDj0JI5FHadLrAUK0QvA5Bpsnlf78lVLDw9jvl1dhYUVi+2kGTlrBE7hA
         X8Z0FskEjZJV6Tcs14KR7NY/4SgsA9rTvngYsbpR1WcgUu4rLJbLww4qY6BqlNwFS8
         KCbWp8eHjAFFhKzo0rpbCNTLehWWlV+zDcek91sst0xKKNI1vkYXzylMLHlp8kGH4u
         YwREgvryU7VAEnlBgpglRrcpLCf2TktS3whIsukN5YIih7/h4KrCxUM8iLAfvV73dq
         RkKHa24yzZelac8Zru3YLGNxJWiNBCqoRrXTclSWhyIVmcI9sn5ShlTYuftRDnGF+K
         uv0MzEhueq0U5yWLIsip/BvM2UfSP4tu7xWfpSJJwJwY/V4L4Cba2JInjooQxlNCBG
         40UKjuCWBTruYU8eHnPpeLeFG3scqSgZQ387UzKjbJfENOcJNuDVrqNFhnDT1Rih0J
         eg03IF8iLHp4btty7TEUZ3t9kLVjqwYEKi92tLEofezwapTvYKmsC3oKqxcHhm8QBm
         m0VLC28dLrJc+9ZhVWUkXCRcsDP37NGR3nz6wMYTX/xeOfjEZ5CzLib93ZN59QV/jc
         ORevOM0I8phsHk1HBDPvYhK4=
Date:   Tue, 25 Oct 2022 17:21:29 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] ascii.7: chase down History to earliest
Message-ID: <20221025152129.emkeptsou3mcwldv@tarta.nabijaczleweli.xyz>
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <2b229c8d-9456-654a-d6a9-8b2727d8af41@gmail.com>
 <20221017105621.i6mkseevfwydx5zl@tarta.nabijaczleweli.xyz>
 <0a38aa0b-5684-f217-4844-6c075de6d551@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="jemff2tthry3624g"
Content-Disposition: inline
In-Reply-To: <0a38aa0b-5684-f217-4844-6c075de6d551@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=2.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jemff2tthry3624g
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Oct 17, 2022 at 01:02:01PM +0200, Alex Colomar wrote:
> On 10/17/22 12:56, =D0=BD=D0=B0=D0=B1 wrote:
> > So no, (7) is wrong because it's (VII)
> > (indeed, arabic numbers started in V7).
> > It's not bold because you can't do that on a typewriter.
> > You could make the argument for it being together,
> > but the prevailing convention is either no section at all or
> > space-before-section, and the page number has the space.
>=20
> I guess you're referring to the old convention (from TUPM)?  In this case
> it's a bit weird because we're referring to an old manual page from a new
> manual page, so I don't know if we should use the old syntax or the new
> one...  We now have better (or different) capabilities (bold), and arabic
> numbers, so we could take advantage of them...  But maybe that could
> confuse...  I guess I'll go with what you prefer, since you're writing it,
> and I'm not sure.

Yes, I think respecting the original page number
(which, while very funny spelling-wise, is very much what it is;
 cf. the first issue of the X/Open Portability Guide,
 which numbers pages as "BSEARCH(3C).3" in Part II, for example)
as it was written =E2=80=92 "/etc/ascii (VII)" =E2=80=92
is bibliographically the most correct thing to do here.

=D0=BD=D0=B0=D0=B1

--jemff2tthry3624g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmNX/vkACgkQvP0LAY0m
WPFU2w//YK29fiwf+k1V+VwkVkVKKAfE6dUVzebSfuNps339cQiUKE83FHfowx/8
g5oyvr6xCUPHSXlcAcK6yhYPUx2l4SvJifBgY21ZW9EBklx3Hw25os10t9Dh5dDX
L+nEEmCgEcG7k3ahhq9G3NWPfwyPP5AAC9GHW1m0+5mJDNt1KE2oSR4Cgdl3VXO4
ygbVKnODP7J3nXQFUbe9dcs79+QtjF3ezmQfRnfN7Vh1xq4QA9VXfHbEVWxsHAO2
DwZClD4MKEeDjkqg3pi/7YEnicanVydtyGWkfpeIyWEVXeuEvxVc3FQbdI8CB+oe
GvBpikX68hEwyawP7QTxcpir3RS7psHoJbVfsf6iLU7dirnHuSv7u8i/2sj7/cbc
VqPv7QClWAe3XbdxA0/O6Mkt50u63uRy2oYULme+CeWNq4GXNim1XiIQU3yvI3rI
XXI9Wyr2ertN+HoKvnBpGI3F5MvrbskJMrMNe2v5nhrFvL7v0q/QiC1TMBRAkd3w
hj09JB2sDXmLaUjLb/tmWODy+KrHqQxL2t/qj6FBPgxtgzDDTCvYDjxH/PE6AUtA
uuD51J9ywzBedVj+RgawCnHzICHg0oeUvUfYYL3krUopSct6FOD7AdYXY9hy9OLd
ZtLc4BfR6Df4gSfnrMXh2wiHmyqEzTuHpTET+lX+/5+HJS4wZqs=
=A4Kl
-----END PGP SIGNATURE-----

--jemff2tthry3624g--
