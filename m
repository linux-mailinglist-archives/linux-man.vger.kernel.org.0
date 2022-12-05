Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F28606430CD
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 19:54:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232120AbiLESy1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 13:54:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232341AbiLESyZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 13:54:25 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B34E91FFAA
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 10:54:23 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62006.00000000638E3E5D.00002BE1; Mon, 05 Dec 2022 19:54:21 +0100
Date:   Mon, 5 Dec 2022 19:54:21 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <20221205185421.GA8102@Debian-50-lenny-64-minimal>
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
 <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
 <20221205123809.5p66jmpalhd4bhoq@jwilk.net>
 <59dde6dc-5970-c422-30b3-e2cbe4fabd09@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-11233-1670266461-0001-2"
Content-Disposition: inline
In-Reply-To: <59dde6dc-5970-c422-30b3-e2cbe4fabd09@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-11233-1670266461-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Mon, Dec 05, 2022 at 02:18:19PM +0100, Alejandro Colomar wrote:
> On 12/5/22 13:38, Jakub Wilk wrote:
> > * Alejandro Colomar <alx.manpages@gmail.com>, 2022-12-04 15:06:
> > > > > > Issue:=C2=A0=C2=A0=C2=A0 mount point I<B> =E2=86=92 mount I<B>
> > > > > >=20
> > > > > > "Here, I<B> is the destination mount, and I<b> is a subdirector=
y path under"
> > > > > > "the mount point I<B>.=C2=A0 The propagation type of the result=
ing mount, I<B/b>,"
> > > > > > "follows the same rules as for a bind mount, where the propagat=
ion type of"
> > > > > > "the source mount is considered always to be private."
> > > > >=20
> > > > > I'm not sure about this one.=C2=A0 If we change that wording, I'd
> > > > > like to make sure we don't lose any details in the
> > > > > information.=C2=A0 Please CC any related kernel developers, and
> > > > > suggest them review the documentation for more consistent
> > > > > language.
> > > >=20
> > > > Until recently, there was "mount point" used all over this man
> > > > pages. This was changed to "mount" in one of the previous
> > > > release of man pages.
> > >=20
> > > I didn't know that; please point to the commit that did that.
> >=20
> > Probably this one:
> >=20
> >  =C2=A0 commit 8c9a82742976dc98578338ef886776f06c0ab3f2
> >  =C2=A0 Author: Michael Kerrisk <mtk.manpages@gmail.com>
> >  =C2=A0 Date:=C2=A0=C2=A0 2021-08-18 01:34:54 +0200
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mount_namespaces.7: Terminology clean-u=
p: "mount point" =3D=3D> "mount"
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Many times, this page use the terminolo=
gy "mount point", where
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "mount" would be better. A "mount point=
" is the location at which
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 a mount is attached. A "mount" is an as=
sociation between a
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 filesystem and a mount point.
> >  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Signed-off-by: Michael Kerrisk <mtk.man=
pages@gmail.com>
> >=20
> > Both terms are valid, but they have different meanings.
> >=20
> > (No idea which one is appropriate in the paragraph in question.)
>=20
>=20
> Thanks!  I also don't know, so I'll leave this as is for now.

So you want me to remind you later on this or should I switch it to
WONTFIX?

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-11233-1670266461-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOOPlgACgkQQbqlJmgq
5nD6lg//bjIcTw0o5sG5/JgzswBvZW4uWlsxq4ZMMYwXQA0LYw5su0886xzF/Gz2
UPLX6xWgMXcJlUpXD5+zWNEobZ0EGPpOiLlrRGBAnNUyT9nk+cf/GjhP/92T9mNK
gELve4rQZwVJy+n1nKxUs8b62N/kzWvFE8KTevfFDyObZ6ZwF+raY82hCsmPbIHl
p7lbb+Bc4M8Oijj4cEOwKaVi4/hOPXgpFlTojgXjSZc++t1eFV/C4VOk5fjwGAYf
F3lP5budGk4GcUS9VXXKXMMCGVaWHXyNaVY1/MnHJzXa55Y442E5qMXcHdFRK8zL
MWF5nebo7/1K5xf+NzN7RE7f/qlFS+oEQQ68sskiwWCZzSk2PBulMI2odVUN9goU
kt0VVcQn1BifvjPgmbYM5FPVYPDv3rZV0tz7f3BXzUofFl7JM89TOcN0xxbtK71W
zrK6dDy/TgEDknHFNNIUZhmoz0C8CUlOovqcVbeANHGejZBPA6dNYXiVgvz3sztI
PSSAuVOuKL9HJvgOjrVDk4+/QoU/Fj0toM3mUoRF5WqOom+sv8uLfzYSn8VfQSYq
LnuLouZa7XZehyYOqTGovzluSNn1b4pDTsAzJsjwfRYsmQoSCE3iuZJILGx6o5hv
1u9/iYWFH2EdebtgEuAWTosugW3wrDmgBWLzlLPFjVVbAisP2r4=
=/L87
-----END PGP SIGNATURE-----

--=_luckmann.name-11233-1670266461-0001-2--
