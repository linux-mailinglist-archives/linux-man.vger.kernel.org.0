Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79EF24882B4
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 10:12:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233984AbiAHJMR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 04:12:17 -0500
Received: from 14.mo581.mail-out.ovh.net ([178.33.251.19]:38959 "EHLO
        14.mo581.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231402AbiAHJMR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 04:12:17 -0500
Received: from player168.ha.ovh.net (unknown [10.108.16.8])
        by mo581.mail-out.ovh.net (Postfix) with ESMTP id 3D1A523367
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 09:12:16 +0000 (UTC)
Received: from sk2.org (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player168.ha.ovh.net (Postfix) with ESMTPSA id D3AF8261158FD;
        Sat,  8 Jan 2022 09:12:12 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-103G005cb957998-5bd8-4cb5-9dac-327e8ef7e2d4,
                    E73EBA98AEB195A144C17DE4F959AB65BE9739A6) smtp.auth=steve@sk2.org
X-OVh-ClientIp: 82.65.25.201
Date:   Sat, 8 Jan 2022 10:12:09 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 4/9] matherr.3: Exclude the example from analysis
Message-ID: <20220108101209.52a20bab@heffalump.sk2.org>
In-Reply-To: <681c4772-bbfe-2dae-76f9-d1e130ac16e1@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
        <20220107164621.275794-4-steve@sk2.org>
        <681c4772-bbfe-2dae-76f9-d1e130ac16e1@gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/dpA9uRDLOJpcaWZXNln1i.J";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Ovh-Tracer-Id: 6156420692122896006
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegfedguddthecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkjghfofggtgesghdtreerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepveelvdeufedvieevffdtueegkeevteehffdtffetleehjeekjeejudffieduteeknecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrudeikedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/dpA9uRDLOJpcaWZXNln1i.J
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Sat, 8 Jan 2022 02:31:42 +0100, "Alejandro Colomar (man-pages)"
<alx.manpages@gmail.com> wrote:
> On 1/7/22 17:46, Stephen Kitt wrote:
> > The example program is obsolete, as indicate in the text, and
> > shouldn't be analysed. Changing the introductory heading to "Obsolete
> > program source" excludes it from automated analysis and makes it
> > hopefully clearer to readers that it is obsolete. =20
>=20
> In this case, the first paragraph of the DESCRIPTION already notes that=20
> the whole page is obsolete (and even removed from glibc).  On top of=20
> that, I plan to add the [[deprecated]] attribute to the function=20
> prototype in the SYNOPSIS (when Michael comes back).
>=20
> Do you think it's still necessary to mark the example program obsolete?
> For a human reader, I'd say no.
> For the automated analysis, I'd first decide on which format we want to=20
> standardize to mark code begin and code end, and after that fix this if=20
> it needs to be fixed.

I agree, let=E2=80=99s wait.

Regards,

Stephen

--Sig_/dpA9uRDLOJpcaWZXNln1i.J
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmHZVWkACgkQgNMC9Yht
g5xDyQ/+ODtcieXMJLhHLX/wVR65Omj4YxmvQsCMQKZsIPlN7y7Fc+cBo2sxvkSQ
wfU0izJBlKC6G6ieXz+kmBCi+vptQSdgJiADXrFSqqeFMjXJ4LV1y2WCOQ17BF8l
NGZ8AHaWeqRk3VJVfiUo1EunsPbrFFywqlaP+M0MJR8gBkSM7kQq2Gu67fWGWA6p
wUKOnFLnrGGPlqwtPyj2p7HYvRWsuCuISLncsBNk8slV5VxsfrhdJucuqSPwfZYb
Pn3Ds9OFMiXxc0oHr5s4nMZrolcqWvP2bLwWtkQQDs9b25VXrMTnn+96lOPRHlDy
aus00FsfYs8SPKwI8eyVTya+gD3EboMn+1/kwkARdS7TWGcktEl+FoaZPkRnIRuZ
mcr1q2XozMrolmrff19Sux3yQUqMq2OgrZCMO2k7i7swnnGgTV3ZliABD93wdTH1
3IRJopE2suwcF03qWjD67vOKXfoZsp0C4N9MQNJQRbhlJNGyl830d0EvZkfFTeZM
8WtqaFbNLYWJk/Bszvlekm08VUvWrhQwTLLiquP9XiZ+LaU+ia0pFWH+vuQkSGDK
K8uw/nkvqb2J65T9YxGzz5/LYtDl7bQ2aklOjDNLIO2stcTW8FL8ujzB+on2+m31
TVuQn/F1GyJp0rWedrwB3+LwzkHU8A+1mCzxC2RkyWpRxhs/kCk=
=w1XG
-----END PGP SIGNATURE-----

--Sig_/dpA9uRDLOJpcaWZXNln1i.J--
