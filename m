Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65953302309
	for <lists+linux-man@lfdr.de>; Mon, 25 Jan 2021 09:58:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725440AbhAYI5p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Jan 2021 03:57:45 -0500
Received: from mx1.emlix.com ([136.243.223.33]:41272 "EHLO mx1.emlix.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725995AbhAYInf (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 25 Jan 2021 03:43:35 -0500
X-Greylist: delayed 392 seconds by postgrey-1.27 at vger.kernel.org; Mon, 25 Jan 2021 03:43:34 EST
Received: from mailer.emlix.com (unknown [81.20.119.6])
        (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mx1.emlix.com (Postfix) with ESMTPS id 955BB5F9B1;
        Mon, 25 Jan 2021 09:33:26 +0100 (CET)
From:   Rolf Eike Beer <eb@emlix.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: contradictional sentence in clone(2) man page
Date:   Mon, 25 Jan 2021 09:33:21 +0100
Message-ID: <4530567.a0Z4EEqLWd@devpool47>
Organization: emlix GmbH
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2184438.3gIW3z5tnr"; micalg="pgp-sha256"; protocol="application/pgp-signature"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart2184438.3gIW3z5tnr
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Rolf Eike Beer <eb@emlix.com>
To: Michael Kerrisk <mtk.manpages@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: contradictional sentence in clone(2) man page
Date: Mon, 25 Jan 2021 09:33:21 +0100
Message-ID: <4530567.a0Z4EEqLWd@devpool47>
Organization: emlix GmbH

In the discussion of CLONE_VM I find this sentence:

> If the CLONE_VM flag is specified and the CLONE_VM flag is
> not specified, then any alternate signal stack that was
> established by sigaltstack(2) is cleared in the child
> process.

Which simply doesn't make sense. I guess one of them should have been the n=
ame=20
of another flag.

Eike
=2D-=20
Rolf Eike Beer, emlix GmbH, http://www.emlix.com
=46on +49 551 30664-0, Fax +49 551 30664-11
Gothaer Platz 3, 37083 G=C3=B6ttingen, Germany
Sitz der Gesellschaft: G=C3=B6ttingen, Amtsgericht G=C3=B6ttingen HR B 3160
Gesch=C3=A4ftsf=C3=BChrung: Heike Jordan, Dr. Uwe Kracke =E2=80=93 Ust-IdNr=
=2E: DE 205 198 055

emlix - smart embedded open source

--nextPart2184438.3gIW3z5tnr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iLMEAAEIAB0WIQQ/Uctzh31xzAxFCLur5FH7Xu2t/AUCYA6CUQAKCRCr5FH7Xu2t
/Bl/BACKD4rhLv1mBnmu8jGl0vTvgfJWn5dW600vrcdEX614CVRC9zD4T1LgX50+
9OAJ+fs0Kq9HmwDZ3r7tpi9en+GP1ELtrA/PO12hYXMxJCpaJjASaTmjBCE7iqHL
7PPxj8QeVn9dBKxMA5u0J/6lrRp16BeapcLUhIYKcQltPMOgnQ==
=dmAb
-----END PGP SIGNATURE-----

--nextPart2184438.3gIW3z5tnr--



