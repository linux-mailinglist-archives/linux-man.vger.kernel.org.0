Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36DB54883EF
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 15:19:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234397AbiAHOTZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 09:19:25 -0500
Received: from 7.mo576.mail-out.ovh.net ([46.105.50.32]:34565 "EHLO
        7.mo576.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbiAHOTX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 09:19:23 -0500
X-Greylist: delayed 77178 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 09:19:22 EST
Received: from player714.ha.ovh.net (unknown [10.109.138.54])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id 6008822D75
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 14:19:21 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player714.ha.ovh.net (Postfix) with ESMTPSA id E5881260BB0AE;
        Sat,  8 Jan 2022 14:19:17 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-104R00536c5881a-9b3f-44ee-9154-afdd7f527c61,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Sat, 8 Jan 2022 15:18:57 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 7/9] pkeys.7: Update the example to match glibc
Message-ID: <20220108151857.4d4454f7@heffalump.sk2.org>
In-Reply-To: <c520d866-0b71-d756-58f6-f54be3560974@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
        <20220107164621.275794-7-steve@sk2.org>
        <c520d866-0b71-d756-58f6-f54be3560974@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/bvbNqCOjF/GkPCOpW2yznVO";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Ovh-Tracer-Id: 11342597138248730246
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudeghedgfeejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfgjfhfogggtsehgtderreertdejnecuhfhrohhmpefuthgvphhhvghnucfmihhtthcuoehsthgvvhgvsehskhdvrdhorhhgqeenucggtffrrghtthgvrhhnpeevledvueefvdeivefftdeugeekveethefftdffteelheejkeejjeduffeiudetkeenucfkpheptddrtddrtddrtddpkedvrdeihedrvdehrddvtddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehplhgrhigvrhejudegrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/bvbNqCOjF/GkPCOpW2yznVO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Sat, 8 Jan 2022 02:59:12 +0100, "Alejandro Colomar (man-pages)"
<alx.manpages@gmail.com> wrote:
> On 1/7/22 17:46, Stephen Kitt wrote:
> > glibc 2.27 introduced support for the pkeys functions, but the glibc
> > versions don't match those declared in the example. Update the example
> > to match glibc, and avoid declaring the functions if glibc is new
> > enough. >
> > Signed-off-by: Stephen Kitt <steve@sk2.org> =20
>=20
>=20
> There are a few problems with the prototypes.
>=20
>=20
> alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype wrpkru
> alx@ady1:~/src/gnu/glibc$ grep -rn define.wrpkru
> alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype pkey_set
> 60:int pkey_set (int __key, unsigned int __access_rights) __THROW;
> alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype pkey_mprotect
> 72:int pkey_mprotect (void *__addr, size_t __len, int __prot, int=20
> __pkey) __THROW;
> alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype pkey_alloc
> 56:int pkey_alloc (unsigned int __flags, unsigned int __access_rights)=20
> __THROW;
> alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype pkey_free
> 68:int pkey_free (int __key) __THROW;
>=20
>=20
> As you see above, I couldn't find wrpkru().  Are you sure it exists in=20
> glibc?

It doesn=E2=80=99t exist in glibc(), but if we use the glibc version of pke=
y_set(),
it=E2=80=99s not needed in the example. In glibc, the equivalent function is
pkey_write(), but that=E2=80=99s an implementation detail, it=E2=80=99s not=
 part of the API.

> pkey_mprotect(3) uses 'int' instead of 'unsigned long'.  Would you mind=20
> fixind that one too?
>=20
> pkey_set(3) uses 'unsigned int' instead of 'unsigned long'.  Please fix=20
> that one.
>=20
> pkey_free(3) uses 'int' instead of 'unsigned long'.  Would you mind=20
> fixing that one too?

Right, I=E2=80=99ll take care of all that.

> BTW, I need to modify grep_glibc_prototype() so that it always prints=20
> the file name, even if only one file is passed to grep (adding /dev/null=
=20
> to the file list).
>=20
>=20
> A part from that, I prefer EXAMPLES to be as simple as possible, so I'd=20
> do 2 patches.  One to match the definitions to the glibc ones, and then=20
> one commit removing old code, assuming glibc is new enough.  Would you=20
> mind sending a subsequent patch to remove everything under #if ... #endif?

Right, will do!

Regards,

Stephen

--Sig_/bvbNqCOjF/GkPCOpW2yznVO
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmHZnVEACgkQgNMC9Yht
g5z3AA//X8ddqC/XliL5nwd5PFR3MwAaswkCO5T8urJkmqpMcw/A8Fm3TJCDHhqd
Tnsu74G+PHw7ZPqUbZpWelgGQvIqbcep0EZ4T7q7xUfO5lEtPcyTcBfEJk+AW3PF
CVA+QmGFQqC83I8hXULEN+LHQzHUnhpPTvSmW5woSzAxQFAOW+94KhSaj+6ynwuG
5X2GqAVsne53toYuZjLTEfIDgwj0erj84zMh90RKWPzsrlKnflh/dLpcXxrYi173
XoyS/ovYviuopJdwYAAwa1bbRwZ5xrjMsESQYWDQgY0BpyHQjbE93acSwE5ThgmR
HP8D4lw+ceg55oYba3w1QPFV6MQ4r7TFR57vMO2M1NcO3LMGbLGZMaJbfNe5p6w8
7jCgbq54fZmyf/DHDxwhWqn3B/uLmzqcgTNxlO4Daf5eE+HoQKxGt+RqVkv7so+l
ALPcrdF7XqYnYQW1gj6ScNdRnfqaHK8f3efzTR2VD9N7kLYTru9wVviBU/l3F9Gc
CIUZpFnbs2fdUJPtL+KieKJu9AvLnlDIxjIbHjSaMIIbKS/hJ2MdP2c8Os0IVW1+
UucifvxzC9bQQ73P6oldw3P3GPRmBuzGY883JZethp6zXhYet9H/u0khE1VvmIQE
pwavqNy80AofBK6DaC+h6Ekel8cg1cu0YDveZJKjWb/6ubbdsQ4=
=GHuq
-----END PGP SIGNATURE-----

--Sig_/bvbNqCOjF/GkPCOpW2yznVO--
