Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 560FB4D80B0
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 12:29:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238931AbiCNLai (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 07:30:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238928AbiCNLai (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 07:30:38 -0400
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with UTF8SMTPS id 66B55419BE
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 04:29:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E54037.00000000622F2716.00002F4C; Mon, 14 Mar 2022 12:29:26 +0100
Date:   Mon, 14 Mar 2022 12:29:26 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page ascii.7.po
Message-ID: <20220314112926.GB11800@Debian-50-lenny-64-minimal>
References: <20220313123422.GA22388@Debian-50-lenny-64-minimal>
 <20220314005258.fxidkcogt7epsvci@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-12108-1647257366-0001-2"
Content-Disposition: inline
In-Reply-To: <20220314005258.fxidkcogt7epsvci@localhost.localdomain>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_SBL_A autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-12108-1647257366-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
On Mon, Mar 14, 2022 at 11:52:59AM +1100, G. Branden Robinson wrote:
> At 2022-03-13T13:34:22+0100, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    In the right table, please add \& markup for end of sentence =
characters (? ! .) to get proper formatting in other locales. Thanks!
>=20
> Specifically, what happens is that if the additional inter-sentence
> space amount (set with the `ss` request) is not the same as the
> inter-word space amount, the columnation of this "table" (not a tbl(1)
> table) gets thrown off.

=E2=80=A6

> The piece of ascii(7) quoted above renders as expected if none of the
> groff localization macro files are loaded, and if the user/administrator
> has not changed the additional inter-sentence space amount in "troffrc"
> or "man.local"--but doing so is supported.  A common preference, and one
> shared by the Czech, German, French, Italian[1], and Swedish groff
> localization files, is to set additional inter-sentence space to zero
> with `.ss 12 0`.

> I've confirmed that Helge's solution works.  In principle, it is fragile
> to locales that have other sentence-ending characters, but I know of no
> such locales--none are extant in groff, pending, or requested.
> Therefore I'm +1 on this.

Just to ensure that credit is where credit is due: This was a bug
report by a l10n/i18n team member of Debian and the fix was developed
by Colin Watson, see:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D692765

Thanks for confirmation and fixing it upstream, so downstreams
(translations) get it automatically.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-12108-1647257366-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmIvJxYACgkQQbqlJmgq
5nBQUw/7BKrqxjV/5EOgD7PHYLd/nMQBD2RyeokSqPUknFEdUYtNpb/ZXLUZ0I9b
4Ifb3v2+4hUfnqwTnUKwuWdqU5HE+Ph7YNJ9BXvKHOdlxtvr0BnAr8nyqEavQFA4
AKsds1951f5RRE/S/LYXN+0AD5fjx6GxZgfQ4bWiIcon/8ASsTjGgym49JeGu/gD
cQHnIkQICU/pkmXmHHtUgPmj9OLmIdHRT2OY/inrv6qaJvXcuSSBpd1MDKCnYQOK
caPdLMYK2vVOn++pby5UaNuNUEF5JUNfqBAU4u+zrd2eGAc+qYCne1dQXM04RpgV
yfAFeZZOaxMvq0kLRPKIv78r/CnEZTutoscAG7l1nR8rpDCIGzzUWFW/69Dl38Te
CnNY7t01EA7AkRWOvNZQ0wIrV9X+kS6uf3Isdlb242cuw3FgLVmYjTvxaJyuDLmK
H7HsLjZhAyaS7ymom1hII3qwaJuKBpHqRts+g1ZoOUY+59prbFrSX4Z9+im8fwh9
N110db/6l+udHxov/kAL3sbwD4BzOkRXYASMhnn3M1IFyvCfaarF72+kSKT+1jrU
DUWCRItTHs0FjItzuG8UNM6g1rgUaSODqI9zA8HPCm7KJXanmJ12f5kD36C68Lsc
YqTP3Yad6rFI+OpwxD+VWTx4O4bvotMi5reMxZ5Y1mL6ow5mHu8=
=S6tF
-----END PGP SIGNATURE-----

--=_luckmann.name-12108-1647257366-0001-2--
