Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 333683330A6
	for <lists+linux-man@lfdr.de>; Tue,  9 Mar 2021 22:11:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231788AbhCIVKz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Mar 2021 16:10:55 -0500
Received: from 6.mo179.mail-out.ovh.net ([46.105.56.76]:47036 "EHLO
        6.mo179.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231786AbhCIVKy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Mar 2021 16:10:54 -0500
X-Greylist: delayed 4191 seconds by postgrey-1.27 at vger.kernel.org; Tue, 09 Mar 2021 16:10:54 EST
Received: from player687.ha.ovh.net (unknown [10.108.16.177])
        by mo179.mail-out.ovh.net (Postfix) with ESMTP id B080D18F2FA
        for <linux-man@vger.kernel.org>; Tue,  9 Mar 2021 20:53:31 +0100 (CET)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player687.ha.ovh.net (Postfix) with ESMTPSA id 09AC21BD457DF;
        Tue,  9 Mar 2021 19:53:25 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-102R0046d5415d3-0d57-4864-8a30-2e000325c442,
                    6C897E3FB1B5C819DA596C75FE68BD04123AC254) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Tue, 9 Mar 2021 20:53:09 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] close_range.2: new page documenting close_range(2)
Message-ID: <20210309205309.7e2568c9@heffalump.sk2.org>
In-Reply-To: <e761f00d-751f-f782-9af1-c5f868d52df0@gmail.com>
References: <20210123161154.29332-1-steve@sk2.org>
        <e761f00d-751f-f782-9af1-c5f868d52df0@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/Vhdp.PoBByMUrbMRegE43SY"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 15148701775380172157
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudduiedgudeftdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepveelvdeufedvieevffdtueegkeevteehffdtffetleehjeekjeejudffieduteeknecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheikeejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/Vhdp.PoBByMUrbMRegE43SY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Michael,

On Thu, 28 Jan 2021 21:50:23 +0100, "Michael Kerrisk (man-pages)"
<mtk.manpages@gmail.com> wrote:
> Thanks for your patch revision. I've merged it, and have
> done some light editing, but I still have a question:

Does this need anything more? I don=E2=80=99t see it in the man-pages repo.

Regards,

Stephen

--Sig_/Vhdp.PoBByMUrbMRegE43SY
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmBH0iYACgkQgNMC9Yht
g5xPYA//dDSz5pyQs570R6DJfwFaPgoNZHfelKAfPKflbh8nIkTuHoM96hbtPKj6
OP9ZQWvX/lsaZxWGMCLOn68iBhzESQo8uWYtEQXAOltfs3XxAioqPeAP9jttHfUG
vK4QYMwVNMNcmnFQdYbsVBP+/jT28iH1ODLgx+ZqiN3FC8HMiFbCwGJJYJKYaBTv
NuJzsPqJr0RlEaC1EKSvP1PJUBs6cuL+jMp96BqVbHnYHeuynF5FS4OrDzzQhlBA
nwbgNvonh+V+TGKiTd5iVzlO8hWIAWMxoGWIJnh05V+WqO+IgXqSRHQ5lWqhzabc
vfm/a5n91QL7mvQQHGo6rV0aQ+DPGrCF2UbSrFf57K0OwVcDMEDmYCqk+qmop9c6
lNctNDOYP8CQ9e1HSn8mjQHAuza94Df/kNTC4nFHuGS459voRztChOx3yewQKFSh
gSR4ag5sNqt6j9cJO3KMMQguRZCy0n9nfKkRkNOgAc27q7zL3qWiRoj2ML/slhly
K0s5bf2uUEUsRML7w/qTGIYm+cXyCo4ACO1pKoEzZe9LK7C2HYfdy9u240eNLNbA
ZwBQrN1jzZJr5ZkBF9DaWDSnLRsPxx5EYRpVuPT/lETlVAdIB7P71748IYBtu9z4
1K9OvHasH5pUj+4ex9pugZF1xMZMssfihmkKIlFqupIoP1WuCDA=
=ADyF
-----END PGP SIGNATURE-----

--Sig_/Vhdp.PoBByMUrbMRegE43SY--
