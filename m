Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E4BA1B91B7
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2020 18:30:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726150AbgDZQaH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Apr 2020 12:30:07 -0400
Received: from luckmann.name ([213.239.213.133]:60669 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726144AbgDZQaH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Apr 2020 12:30:07 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5600C.000000005EA5B70D.00005CDC; Sun, 26 Apr 2020 18:30:05 +0200
Date:   Sun, 26 Apr 2020 18:30:05 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: wprintf(3): Wording
Message-ID: <20200426163005.GB23062@Debian-50-lenny-64-minimal>
References: <20200419064838.GA32725@Debian-50-lenny-64-minimal>
 <1c1b7919-7cba-5ef0-621e-891844931db2@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-23772-1587918605-0001-2"
Content-Disposition: inline
In-Reply-To: <1c1b7919-7cba-5ef0-621e-891844931db2@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-23772-1587918605-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hallo Michael,
On Mon, Apr 20, 2020 at 11:44:19AM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > The text in the bracket in the 2nd sentence is difficult to understand
>=20
> I need a bit more elaboration here.

Please close this issue, cannot reproduce. Sorry for the noise.

But I noticed another possible issue when reading the text: Is the=20
(L\\(aq\\e0\\(aq) korrekt? Is the "L" supposed to be some markup?

> > "If no B<l> modifier is present: the I<const\\ char\\ *> argument is ex=
pected "
> > "to be a pointer to an array of character type (pointer to a string) "
> > "containing a multibyte character sequence beginning in the initial shi=
ft "
> > "state.  Characters from the array are converted to wide characters (ea=
ch by "
> > "a call to the B<mbrtowc>(3)  function with a conversion state starting=
 in "
> > "the initial state before the first byte).  The resulting wide characte=
rs are "
> > "written up to (but not including) the terminating null wide character =
(L\\(aq"
> > "\\e0\\(aq).  If a precision is specified, no more wide characters than=
 the "
> > "number specified are written.  Note that the precision determines the =
number "
> > "of I<wide characters> written, not the number of I<bytes> or I<screen "
> > "positions>.  The array must contain a terminating null byte (\\(aq"
> > "\\e0\\(aq), unless a precision is given and it is so small that the nu=
mber "
> > "of converted wide characters reaches it before the end of the array is=
 "
> > "reached.  If an B<l> modifier is present: the I<const\\ wchar_t\\ *> "
> > "argument is expected to be a pointer to an array of wide characters.  =
Wide "
> > "characters from the array are written up to (but not including) a "
> > "terminating null wide character.  If a precision is specified, no more=
 than "
> > "the number specified are written.  The array must contain a terminatin=
g null "
> > "wide character, unless a precision is given and it is smaller than or =
equal "
> > "to the number of wide characters in the array."

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-23772-1587918605-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6ltwkACgkQQbqlJmgq
5nD9jxAAgQCx3a8TrD1WSTgu59Yb3G+OfhSfHL88MWbAkAtE/yuVprsj3/2kq+KL
p0LLcxBrGxJDxPfjylAm0AXQWkqw6g4awUHTiNPbPd8NPE5xNsNY5mc3LDm5CVLS
oShGejDP45oos5sM5UpDqmXMqkw2qvdA9uM8s/x2rhld12SdTApOk+Ybte5j96fE
pzIzTioYKe1h2VMOUHY8FmwzKtSk5Tl9Aiz4/6FmWVMpcgXouct6Qx+wXSHkU0RX
OJGQgqKuRKH+xqbw9lUvVmKfWxkYKW06twDbi46dnkrSmXavDIMXO5PwQuDXrNP7
1YxBPKfQCTA3WMpHYv7Jp/5RecYoTQIkyA6IVeoqzUmZ4oR6CM+hUHMparJMAhXr
AsvumXs/NL+S4icGuYhnX3d8VXHAqx5/NubHc9KU10sHyXyN1yEC6JkWsWWgaRg9
THh34Ov87uobtun8W0wnqLosBQumsJu+XVAgTzB7m5xzeTvYoqazBAa8vxhjDNoe
8WdCPgwvZI/XBvLT/MBoA7iKLQyqkvqhv0jnmJY/0G0muwm3JJ3/KSsV6LMtcdOY
0Ju+7eI1vHULmp/434Mfv/u/JKPG7yvIxXOxlNFoo33IfsKVtOZ31ltSMirl3fVO
bxFbPRcWTvFuU9W/D9T12vwoPval8mw8Uj5SJcbfIXqN0lYh3yc=
=YeSr
-----END PGP SIGNATURE-----

--=_luckmann.name-23772-1587918605-0001-2--
