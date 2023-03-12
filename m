Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E55D6B636F
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 07:03:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229621AbjCLGDC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 01:03:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjCLGDB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 01:03:01 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FCA2C66C
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 22:02:57 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5403E.00000000640D6B10.00004B3E; Sun, 12 Mar 2023 07:02:56 +0100
Date:   Sun, 12 Mar 2023 07:02:56 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Seth David Schoen <schoen@loyalty.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Dear linux man-pages maintainer,
Message-ID: <20230312060256.GJ7927@Debian-50-lenny-64-minimal>
References: <20230311171354.GA4709@Debian-50-lenny-64-minimal>
 <20230311185634.GA441010@demorgan>
 <5f55b64b-0cdf-6a2f-3af8-b9dd9e8ff070@gmail.com>
 <20230312052006.GF7927@Debian-50-lenny-64-minimal>
 <20230312054710.GB441010@demorgan>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-19262-1678600976-0001-2"
Content-Disposition: inline
In-Reply-To: <20230312054710.GB441010@demorgan>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-19262-1678600976-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Seth,
On Sat, Mar 11, 2023 at 09:47:10PM -0800, Seth David Schoen wrote:
> Helge Kreutzmann writes:
>=20
> > Sigh, learning more and more the finer details of English.
> >=20
> > I just wonder, since these are technical documents, if this is
> > supporting understanding or reducing it? Personllay I prefer one word
> > for one concept.
>=20
> There's a commonly-suggested rule in style guides that "open" compound
> nouns (those still written as multiple distinct words) should be
> hyphenated when used to modify another noun, but not when an open
> compound noun occurs as a noun by itself.
>=20
> So for example, we might have "Richard Stallman wrote several
> free-software licenses", but "Richard Stallman originated the modern
> concept of free software".

Thanks for this extensive explanation. I simply guess there are
several englishes and it evolves (as stated by the article you cited).
When I was in school (this includes American high school in early
90's) I think I learned that hyphens are quite uncommon in english.
Recently I also got the explanation, that "email" is correct (as well
as e-mail is).

> We might sort of analogize it to the German rule for the case where a
> proper name is used as a part of the proper name of something else
> (like a street, school, or prize).  There German expects to hyphenate
> the entire resulting phrase, like
>=20
> Heinrich-B=C3=B6ll-Preis
=E2=80=A6
> even though the original proper names (Heinrich B=C3=B6ll, Kaiser Wilhelm,
> Karl Marx, etc.) aren't hyphenated when used in their original sense to
> refer to _people_.  While this English rule isn't exactly the same,
> it also shows a propensity for using a hyphen when a noun is used in
> one context, but not when the same noun is used in a different context.

As a German native speaker, this sort of reminded me on this one.
(Just to note, that this rule is a little bit more complicated and
also evolving).

Probably this is a similar trend like with commas. As I never mastered
them correctly in English in school, I asked a PhD student for English
(in a German university) about the rules and she basically said: if in
doubt, don't use a comma. And gave me a few cheat sheets when commas
are used. This was ~ 15 years ago.

Now I see many commas, like we do in German. Including large commits
adding them.

I just wonder if reporting "errors" like these in man-pages makes
sense. Looking at this conversion you are very well aware of all the
details of English, so my 5 cents are probably more distracting /
confusing than helpful? (Though I learn a lot form them).

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-19262-1678600976-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmQNawoACgkQQbqlJmgq
5nCTgg//aZSza5jA+VHPqkkLOFAS7g9Nml7cmy1qtxUH5n8N7VuW5nrG9Eg6lXvW
IEi1qLY3aMSGhyaVy/32QDxY0DNsF3S6l80phh7ndnJBFDwsCnCM6oT0+Tt5rELq
Gcih9Xf6uj91w7c1S3iCl4SlkC+01hQ9WTJmO2tQTxap4bCTbC5FJUMi8ABSDN5Y
u/x4MUJ4y8Dzu4xoN98Mb6FZLcVKycxZJFTO/iA1b3iiLxAYR0e9p6HJb4hqwCFv
pAqWPhejMD4yWr/LLVTcq1rcfmix5PKzyV6NHUeKANdE9UeZWlR7Qy3WQiZJXLBS
ugrzakqBvTIpgaqXyPJtLb2KZrawJV9SZcuKu7nSA6DC+5IPksbnMRqHRdNxX2Zx
vQ4v1FW86y/0fl1e9tST8H0KNdPzKlY0OuWXV5mopD/FuqWdsstYKmE976x8HpET
uMHbINlVuUtEEL/bWYemyXuhCMXEQ4+8PZYDvFJUMN+rHKGQ+Ad4lojMYPG3YHbF
qdeJPAtL9v1KHrO3DLqHqNifgirX+Qk2YTeiGZg3b0zULakls4G/NvzuaeyKuFhL
L4GIjUwtjZYkt1ve+FOtQQG4++R6zdNhuh70vwuQO3ofpayispSrWg0cvHSGW+eD
vBHlf8coUd2OADu4UYAERPIjw2mHJEQPK+V+aY23L9xzxv70H6g=
=HmeL
-----END PGP SIGNATURE-----

--=_luckmann.name-19262-1678600976-0001-2--
