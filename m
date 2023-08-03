Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21BA876DBFE
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 02:07:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233143AbjHCAHE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Aug 2023 20:07:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbjHCAGu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Aug 2023 20:06:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4AC03582
        for <linux-man@vger.kernel.org>; Wed,  2 Aug 2023 17:06:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id EF73761A3C
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 00:06:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE4B0C433C7;
        Thu,  3 Aug 2023 00:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691021180;
        bh=pS+IC77YCW0SwY19Mx84GmGh/ndvfNL4qMR+gR8eAEY=;
        h=Date:To:From:Subject:From;
        b=lWdvrHRu/AcN9/64QugkbDZCIiPbGWiP5v+YwrKEXwbKQZpnQ27CdXWJWSJsx3z11
         ryLo9A1lxVzRDo7MdYp8SCunCP7jBs4E0Zk7/cVQInBh4rTFUr1OQBEBSDT9Xl2oGN
         oqEC4E7zvgFsTgZ8XfZHG7hcBbu/dmnmgsUIO8YIuy/rmkDgn5p5nMHUzV+6e34Mj9
         R22SBYmjXAvNwjsA1Jm8iT/RRQv4qpIJlzR+iGOmP9fYpIGTstHyr+EPyEPpmASN+o
         m+UInU9ke05IpDtMlNhHASe2N/qagz8EXHm5ASFEgP1TKjemxcbraMZh/5y0BtnZEB
         LK3diXDefDw2w==
Message-ID: <13248286-9e34-ceca-8e37-2166a9d39c8d@kernel.org>
Date:   Thu, 3 Aug 2023 02:06:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx@kernel.org>
Subject: Copyright for erofs.5
Organization: Linux
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rZX7vfn5hYi9FqzkZaKvNp2F"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------rZX7vfn5hYi9FqzkZaKvNp2F
Content-Type: multipart/mixed; boundary="------------g02I44cRKiSUrFOtRIqDjeFK";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man <linux-man@vger.kernel.org>,
 =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Message-ID: <13248286-9e34-ceca-8e37-2166a9d39c8d@kernel.org>
Subject: Copyright for erofs.5

--------------g02I44cRKiSUrFOtRIqDjeFK
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1!

I'm packaging manpages 6.05.01 for Debian, and while updating the
d/copyright file, I noticed some glitch.  You attributed erofs.5 to
mtk.  I guess that was a copy&paste error, isn't it?

Cheers,
Alex

commit eb1f4d07aab4d718cae7ca9ac65e5d6f6fb80fb2
Author: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
Date:   Mon Apr 10 00:27:04 2023 +0200

    filesystems.5, erofs.5: add erofs documentation
   =20
    Modelled after tmpfs(5) =E2=80=92 there's a listing of mount options,=
 and a
    summary of limitations.  The feature flags are described in mkfs.erof=
s,
    and they're versioned and maintained upstream quite well there, so no=

    need to duplicate those, since you only care on image creation.
   =20
    The real value add is the mount options, but I cannot figure out how
    device_id and fsid interact with the system at large, so I just noted=

    they're there.
   =20
    State as of Linux 6.3-rc5.
   =20
    Also, remove explicit .TP indent in filesystems.5 since we're already=

    touching this hunk: all entries sans iso9660 and Reiserfs fall within=

    the default prevailing indent, so no need to specify a wide one.
   =20
    Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczlewel=
i.xyz>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man5/erofs.5 b/man5/erofs.5
new file mode 100644
index 000000000..933e830b8
--- /dev/null
+++ b/man5/erofs.5
@@ -0,0 +1,95 @@
+.\" Copyright (c) 2016 by Michael Kerrisk <mtk.manpages@gmail.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH erofs 5 (date) "Linux man-pages (unreleased)"


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------g02I44cRKiSUrFOtRIqDjeFK--

--------------rZX7vfn5hYi9FqzkZaKvNp2F
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTK73EACgkQnowa+77/
2zIxuBAAqbXWEeKQNwzpL0fGTbCe7LlUXLThhqxsaSRsHDZ27zFPFuslH2IfZrLe
OLzZ2IOe0LefBzTKvzUZZqKsKdMGirwe5UntUABo4xVpudLOOc6sNKxtrWAP0bsO
TDO8HSgVlZdTS0CAWvOxkIe6Zc9wQ3pAg2xDNe/pMvkc2PAH9ORee8UUXiYJ9FEY
AwvpP9220xYCmskgdOlHzJWs7a3exnwXWSXgXHypiyokldVY7sWfQ6LMwpOcvgFv
J4kwwpW5vyrZ+CSaPmrt6yTdx1COnniOQ3Dib5CA9KjGWX+w5NPwp3kWEgFR0l6k
5eEf8AKLtZKl5nKsRVupnXnHzFhV8MptqGWvNQifOSoJF9wY1T7OiLkLpgzpubKI
51cbdfKmZmZBVDfizAVqJw40eXqUrk7vhwamGM+5fSm0AdTwfZpeGCS2Fi+sFqs9
mD6i76iM88MR45p1UOD59Dhhihro8Ti1Jncst3IuyzWblUxi7CJBqexesLV0WJP+
3Dsrz60pi+7fdikKtxwUK+mLUtedZBYiCNR4a9+VWCGXN2u1ycFH+WBELecRtotX
OT2bSJ2KMxp8TUVoU3FZxG0kFsLNBh4+laUUDgIRdvTBxRyDejsy1XIvfIjQM0np
8+WwTOYlZlB3QNC+ceZyeimG4H6qMLwbcyVvuwzrl6z5zVtFfUM=
=J7zo
-----END PGP SIGNATURE-----

--------------rZX7vfn5hYi9FqzkZaKvNp2F--
