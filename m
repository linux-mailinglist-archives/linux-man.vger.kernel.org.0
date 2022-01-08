Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 380D14884E8
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 18:18:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232419AbiAHRSM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 12:18:12 -0500
Received: from 18.mo550.mail-out.ovh.net ([46.105.35.72]:60801 "EHLO
        18.mo550.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232177AbiAHRSM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 12:18:12 -0500
X-Greylist: delayed 87295 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 12:18:11 EST
Received: from player776.ha.ovh.net (unknown [10.108.1.146])
        by mo550.mail-out.ovh.net (Postfix) with ESMTP id F418622906
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 16:02:20 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player776.ha.ovh.net (Postfix) with ESMTPSA id 8F4B5260C34C8;
        Sat,  8 Jan 2022 16:02:17 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-98R002e5624c93-479d-4cf3-adb4-fcd26c442c8d,
                    C1CD0E578A463F26C2B88D65262F2DABE6E4FC6F) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Sat, 8 Jan 2022 17:02:10 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] mq_notify.3: Add signal.h for SIGEV_ constants
Message-ID: <20220108170210.7c637f0c@heffalump.sk2.org>
In-Reply-To: <20220108154304.1030478-1-steve@sk2.org>
References: <20220108154304.1030478-1-steve@sk2.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/YdbuwHzlXUcl1tdaL_KDItk";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Ovh-Tracer-Id: 13081831020201084550
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudeghedgheekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtvdenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepjeekffdvhfejkeffudekhedvtddvhfeiheehvdehkeetkedufeejffeuueevvddvnecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeejiedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/YdbuwHzlXUcl1tdaL_KDItk
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Sat,  8 Jan 2022 16:43:00 +0100, Stephen Kitt <steve@sk2.org> wrote:
> The example program needs signal.h to build correctly, since the
> SIGEV_ constants are defined through signal.h; also document that in
> the synopsis.

Sorry, I forgot the v2 marker for all of these...

Regards,

Stephen

--Sig_/YdbuwHzlXUcl1tdaL_KDItk
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmHZtYIACgkQgNMC9Yht
g5ycMg//cMV1tOJuBXagaTqAVwnuNXVj3ovddk76h4oluuKufWYs9RrRMvj0K9ta
/XI/1iMAq5STEICiV1g0J2iHalFZ5/4DSEtFK+q8s7t4QCQNAmQJO7BtwNqEUKRo
BAf55WnY+t5/uqVbI5rHdcjJTm90KTZgzkwDYjH4OzyR6J2FJg38/Cdshh99WhRo
SwvFLZTxUql0rkQXeDt1uMIUieFMOMssDheDRpztPk2o5S7DIt/DmbMHySQTC07q
fQi1DNSBRlTGdOUPWjeVkU+wphJeKjYpQP4X3Q5lKFLUs1ARpXGYLvUjPX6Sm+Lb
GQBmTMHVe+FzDnZ5QH/GlRZJWhxCqD3VL5OTHCjVMUVYxbB88kmoK9KpsaFyG+SL
JWoohNBvC0SIgL/pEpyOoEezuzvxxrNG3clFVSCVIiOwZ8KZ1xEohG/2W/S2XD5N
kTJiDXzHa25EO90c86+tgVFi8y4Rjd4D1qEWcB0XLSq/++ZpxiDCH9jOT47uPuV9
HiEa4qPSxJVwQYTZfZ1FJ431jgo7xJsteIZVMLgJUFQUPg1sl025xx3qqrhKdFcm
ME4vk7qvjbpOZmDjsW4GunFIxZyGZV4DKW0nLm9pu3W406qdcoy1qJe0nIvCy3A9
sKAE6+b9hRBhe3Jka79GAAqYOwRljCUoo2xpvIh7iooyD4NQL2w=
=lEq8
-----END PGP SIGNATURE-----

--Sig_/YdbuwHzlXUcl1tdaL_KDItk--
