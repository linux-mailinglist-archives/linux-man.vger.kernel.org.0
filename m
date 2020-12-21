Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B26A02E0395
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 01:51:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725783AbgLVAuq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Dec 2020 19:50:46 -0500
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]:37696 "EHLO
        17.mo1.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725782AbgLVAup (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Dec 2020 19:50:45 -0500
X-Greylist: delayed 4200 seconds by postgrey-1.27 at vger.kernel.org; Mon, 21 Dec 2020 19:50:45 EST
Received: from player799.ha.ovh.net (unknown [10.109.143.109])
        by mo1.mail-out.ovh.net (Postfix) with ESMTP id 908F81E8660
        for <linux-man@vger.kernel.org>; Mon, 21 Dec 2020 20:24:40 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player799.ha.ovh.net (Postfix) with ESMTPSA id 3EF53196333B6;
        Mon, 21 Dec 2020 19:24:33 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-103G00508aaf380-2c62-4411-8acd-2950959b62f0,
                    A98814B0FADA3C5872731A5F91035151D8D30146) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Mon, 21 Dec 2020 20:24:25 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] close_range.2: new page documenting close_range(2)
Message-ID: <20201221202425.168fdaaf@heffalump.sk2.org>
In-Reply-To: <e2ece8dc-9379-0e56-bbfa-ffc5f6b5ca2c@gmail.com>
References: <20201218165815.6963-1-steve@sk2.org>
        <e2ece8dc-9379-0e56-bbfa-ffc5f6b5ca2c@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/O1rv_jRKiNMwu+7ddSUI6uE"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 17759945130541796822
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddtvddguddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepveelvdeufedvieevffdtueegkeevteehffdtffetleehjeekjeejudffieduteeknecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejleelrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/O1rv_jRKiNMwu+7ddSUI6uE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Sat, 19 Dec 2020 15:00:00 +0100, "Alejandro Colomar (man-pages)"
<alx.manpages@gmail.com> wrote:
> On 12/18/20 5:58 PM, Stephen Kitt wrote:
[...]
> > +This program executes the command given on its command-line after
> > +opening the files listed after the command,
> > +and then using =20
>=20
> s/using/uses/

It=E2=80=99s the same form as =E2=80=9Copening=E2=80=9D: =E2=80=9Cafter ope=
ning ... and then using=E2=80=9D. The
overall sequence is =E2=80=9Copen=E2=80=9D, =E2=80=9Cclose_range=E2=80=9D, =
=E2=80=9Cexecve=E2=80=9D.

Regards,

Stephen

--Sig_/O1rv_jRKiNMwu+7ddSUI6uE
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAl/g9moACgkQgNMC9Yht
g5wCJRAAh5sNd5rTmWhWlKe+4mlnGWwMNmGlRFTKJpo+udBKtHdljj3l6ddFqkzx
1zG1KNWyxyYhEkyrfev4hcSDZt+CszF6esBY5UJRyszlnavtyLvVQvgGvE1RPL+e
3isaPaQPaZBG1FY0vuJLB5AvhXdYT9Pe3OVkDZ1votu9UBdXkYOnGyI/wW/YOuCE
P+NR6onSU5RnhbIe+ZUFx1Jfvddf7M5YnV8TtlFlcVJSlA9jk0uQ7Su4896iJbQM
56Is5WOwmR3j6XzKRQ0v68ffApbQS1MCZ3ESlcXfBe+z85cy9rpibdBqD6E3IBbi
WmdXx/3J3dbOlfVUBxyPlgGzfNzAfx6vNWDBurLZIf4oJrmLUUYrB7ZdjZ3GcXc7
MohlIpLNThp0S+0qjUFgb3KG64dutMU6h1OagfpJPwam4EjKT4ogiiBoq4fVtqB2
g/cARVkzpTJ3Zc93GEUaOoU+XZ/DbXLZb50N+YmsvyBcyAcUmdJlmgp8UPwgICqR
YaXG/rpWDZwS0tiKEzmT6n5n9uhmf1f37AoofnODalRyWc9DmjIyL4CM1O+ABmqn
GxFEhRBmTXXiOxFWgv9SmA7j0V98xtyLh1lMw2uKihGbohbUZGA04VnS5qjCuNkJ
Myeje5FK6eMCXIzu7K6Hra3zbfMsGwNGrchUKTTZDgRH+cQVEDQ=
=UtHr
-----END PGP SIGNATURE-----

--Sig_/O1rv_jRKiNMwu+7ddSUI6uE--
