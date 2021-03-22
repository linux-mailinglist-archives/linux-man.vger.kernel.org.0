Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7674034524A
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 23:10:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbhCVWKJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 18:10:09 -0400
Received: from 10.mo177.mail-out.ovh.net ([46.105.73.133]:48322 "EHLO
        10.mo177.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230289AbhCVWJn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 18:09:43 -0400
X-Greylist: delayed 1796 seconds by postgrey-1.27 at vger.kernel.org; Mon, 22 Mar 2021 18:09:43 EDT
Received: from player687.ha.ovh.net (unknown [10.108.4.98])
        by mo177.mail-out.ovh.net (Postfix) with ESMTP id 4013B15B222
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 22:32:06 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player687.ha.ovh.net (Postfix) with ESMTPSA id 9B8361C47A591;
        Mon, 22 Mar 2021 21:31:59 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-106R006966245d9-6aa9-4837-8d8e-e1c1413ba974,
                    42D814DD661CBCB8911BCE7CED7A5A479C85926C) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Mon, 22 Mar 2021 22:31:52 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] close_range.2: new page documenting close_range(2)
Message-ID: <20210322223152.29a543dc@heffalump.sk2.org>
In-Reply-To: <4eb789d0-5914-23ae-3ab9-cbfa9b6b9622@gmail.com>
References: <20210123161154.29332-1-steve@sk2.org>
        <e761f00d-751f-f782-9af1-c5f868d52df0@gmail.com>
        <20210309205309.7e2568c9@heffalump.sk2.org>
        <4eb789d0-5914-23ae-3ab9-cbfa9b6b9622@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/t/+JjWWje8.QJpY66lDRcYW"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 924926777643584893
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudeggedgudehtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepveelvdeufedvieevffdtueegkeevteehffdtffetleehjeekjeejudffieduteeknecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheikeejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/t/+JjWWje8.QJpY66lDRcYW
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 21 Mar 2021 16:38:59 +0100, "Michael Kerrisk (man-pages)"
<mtk.manpages@gmail.com> wrote:
> On 3/9/21 8:53 PM, Stephen Kitt wrote:
> > On Thu, 28 Jan 2021 21:50:23 +0100, "Michael Kerrisk (man-pages)"
> > <mtk.manpages@gmail.com> wrote: =20
> >> Thanks for your patch revision. I've merged it, and have
> >> done some light editing, but I still have a question: =20
> >=20
> > Does this need anything more? I don=E2=80=99t see it in the man-pages r=
epo. =20
>=20
> Sorry, Stephen. It's just me being slow. I've made a few edits,
> replaced the example program with another that more clearly allows
> the user to see what's going on, and pushed to Git.

Thanks, your example program is indeed much better!

Regards,

Stephen

--Sig_/t/+JjWWje8.QJpY66lDRcYW
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmBZDMgACgkQgNMC9Yht
g5yOLQ//TQqhNpOGPnpJca45rS1Wiok5m/AdLmZ27vgsGvxvWUwPD4ORmRzoS9Ix
YqUSmN9xpunLgAaH4msJx6787IrC5p1IoxprUigrHXnb616XU+IHyQO6+0q6UnB5
9308jYAglLFN0ImtUYODwRvAj4pF3RfgF4vh3ETlHN7Ydvpum59Ki+WBKKgpGkLq
q/3g9lPT/GUxRcvAHho0j6cxGi/51G4J6UddBBAPssk1yLHSnWo1Qf3ISsk77zBl
jdz+CfdytIwvm2lRrtovXUH0jhqaBomjO/3ZTx+uOTeZQdJic15tzkkY0vn+F7Ar
ZXEsOFn9fr4KwjO0fAXrPRCTjwJqLgZX7A4rld8GdwwJNiC3hqy/vhRE1vbFw5JS
A/8R5ce7Tj4Sgm/Ivnnu6pSLBYSdCE6bcI3YbW1iK/vRiRiBh2G3Id3CG3OCghwm
j/3wiY9BhEsh6frZlOeUAzHvqFiPdUzCM85tRM/hZoUX1oywyDvDR7go+XgmUmTc
W42CHvLM58LHzwup0GmMxIQKzYaXGlR0RO8EciJ2/bP/tt4LHfrtFkT2aAJ6Q/ut
E87DbBgM1dUyRwEHoxKoYQrPNEPM7DKu65RIFAfMQOgEJw8FH2T0vCwtQ9tXbifn
c6Px+4ilwvWPQ8dmp9TaK5155Zo71MkYq/jUxor1MtbJiLLBVFI=
=qTB9
-----END PGP SIGNATURE-----

--Sig_/t/+JjWWje8.QJpY66lDRcYW--
