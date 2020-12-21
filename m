Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D2C82E0137
	for <lists+linux-man@lfdr.de>; Mon, 21 Dec 2020 20:46:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725783AbgLUTqL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Dec 2020 14:46:11 -0500
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]:50037 "EHLO
        17.mo5.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725791AbgLUTqL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Dec 2020 14:46:11 -0500
Received: from player693.ha.ovh.net (unknown [10.108.35.158])
        by mo5.mail-out.ovh.net (Postfix) with ESMTP id 1EF982A4ECB
        for <linux-man@vger.kernel.org>; Mon, 21 Dec 2020 20:45:28 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player693.ha.ovh.net (Postfix) with ESMTPSA id 76A7D195CF0E0;
        Mon, 21 Dec 2020 19:45:19 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-103G005223a1dda-d929-49f3-b5d3-60eaaa581547,
                    A98814B0FADA3C5872731A5F91035151D8D30146) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Mon, 21 Dec 2020 20:45:11 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] close_range.2: new page documenting close_range(2)
Message-ID: <20201221204511.4cd0d048@heffalump.sk2.org>
In-Reply-To: <cd13ed9f-4156-d76d-c485-9d67ea610ce2@gmail.com>
References: <20201218165815.6963-1-steve@sk2.org>
        <e2ece8dc-9379-0e56-bbfa-ffc5f6b5ca2c@gmail.com>
        <20201221202425.168fdaaf@heffalump.sk2.org>
        <cd13ed9f-4156-d76d-c485-9d67ea610ce2@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/NWOsOn5iMR5MoTHrN04y/nb"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 18110944426671492566
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddtvddgudefvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepveelvdeufedvieevffdtueegkeevteehffdtffetleehjeekjeejudffieduteeknecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheileefrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/NWOsOn5iMR5MoTHrN04y/nb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Mon, 21 Dec 2020 20:33:06 +0100, "Alejandro Colomar (man-pages)"
<alx.manpages@gmail.com> wrote:
> On 12/21/20 8:24 PM, Stephen Kitt wrote:
> > On Sat, 19 Dec 2020 15:00:00 +0100, "Alejandro Colomar (man-pages)"
> > <alx.manpages@gmail.com> wrote: =20
> >> On 12/18/20 5:58 PM, Stephen Kitt wrote: =20
> > [...] =20
> >>> +This program executes the command given on its command-line after
> >>> +opening the files listed after the command,
> >>> +and then using =20
> >>
> >> s/using/uses/ =20
> >
> > It=E2=80=99s the same form as =E2=80=9Copening=E2=80=9D: =E2=80=9Cafter=
 opening ... and then using=E2=80=9D. The
> > overall sequence is =E2=80=9Copen=E2=80=9D, =E2=80=9Cclose_range=E2=80=
=9D, =E2=80=9Cexecve=E2=80=9D.
>=20
> Ahhh.  Then I think the comma is misleading.
> What about the following?:
>=20
>=20
> On 12/18/20 5:58 PM, Stephen Kitt wrote:
> > +.PP
> > +This program executes the command given on its command-line after
> > +opening the files listed after the command,
> > +and then using
> > +.B close_range
> > +to close them: =20
>=20
> This program executes the command given on its command line,
> after opening the files listed after the command
> and then using *close_range()* to close them:

Yes, that works better.

I=E2=80=99ll follow up with a v5 with just that change.

Regards,

Stephen

--Sig_/NWOsOn5iMR5MoTHrN04y/nb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAl/g+0cACgkQgNMC9Yht
g5xziA//b6tnl8dOkwb8GUfEvU//fKtPyiHDiCrsZowo4KZbzTLZIxAu9uikLDIQ
pBeBfAwPfQ4IMrEIV82dvtYfA/Jvs9/oKWYNpXgjl4UC1R0S1nV0VVzapIaCY4E0
PO3PrhAE/FJIwBBqi6X0kye92CXV9AUVTuCG0SbBaQLd/YmSatJ6n6CYaNJTHvEc
7+sIy4B6g+V4WCqgEoyW3FkBPuaBtIdqGR32yZ6OEJWQV4Ul8AhlGn65l57EuxLw
R+SBOmLvao2MBVSpAncpeHa3MHeD7OeOeY8ftgmMZ4YuFA6yFuOrIjKni77zp1+i
M1fC+eYDiFgyNEBU7yBx3Xbcny3pTi0veAkq1M/gfeLUoUH59Rib5m85sgy2kKwF
ebBU/8FMe9uL42hFwDzt2T8Y6If/JjPp858exCnD0RDttLeQnb3jLfpCmXlgehN8
8ErIBmdha/mq6D8zIKyqC7MFHTyT+bLnBhRNW3TW4naJmmOd+R0Wu64jVrZHljHk
rJbHE0FIRftD2CY5Lfh5FtyxbwzTUwn0ajNtKqvEbQF4q9V52gBtVsnKL3bi5heH
J9gdpeVPCC+93+h5LwBmTRGHY6BSxp77+0pnubyb67BBbqJzw7KY+75GZIb/uI52
kHF8eEouXJYb4dxTb2TO5zdD+kqkos0LfvXq6BLfrYUxp1AzxUI=
=4klm
-----END PGP SIGNATURE-----

--Sig_/NWOsOn5iMR5MoTHrN04y/nb--
