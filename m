Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 594CF691011
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:11:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbjBISLw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:11:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbjBISLt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:11:49 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CB6E68AD5
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:11:30 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id 14-20020a9d010e000000b0068bdddfa263so796371otu.2
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RlZ6U2Khuj44v9BUkyNmZv5ACb4F6GNImM9wC3xl5Jg=;
        b=HWQ6u15aSY9qk2j9KWFkCLjTogrposxKrUSiPh+4Bhx2Ux61EmrjnEdFlqWkA/VDC/
         xHKp4kqdWtoREb5X/aKgu4WZFztfd8yc5avLz20KQ7OLDSNLG62sKO9bbEIhJvEGrbKZ
         HdoYG9Tbg7q2uxBDjSN13AW7tUeU8jmHtPfqtuGvkWbSiHZBEwTx6Sh5inMU4gwqNuRh
         rUChgXl4CCwoa5MKK6Fj5xPHNrBBafT/zFul51IN3zuTv5GMHq8zEuR+4yCsrztdivjq
         zN6y7DO0I5D5s99ALGvoYC/BsupRV/j7jWFN60/s22d3rqxI9/K5/MuC7VCE98D5uqKo
         6bQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RlZ6U2Khuj44v9BUkyNmZv5ACb4F6GNImM9wC3xl5Jg=;
        b=bBpbiS8HB7kNiacKi991WA0gNYdeF752R0p1qgkJxsKkCqWFdh7Hyq4S8zilY7Xrp1
         y7Bvezq+Z9i/OlQR/zEZaPrnuJ84dh3WZb8bpJdXt7jrJ+VZFczQcNU8dUkP+4CyBfB5
         txIBZQmvtW9qqda592QpT8Sq8b2YGnNAS2NONcHeJ5B0WSYHv4rq6PYcLNurT3QOTR7v
         ztVVYsAGm3k5KM7SMx/XhYUBQJZLN0L9n7ap1jRmT8V0d7S4WGS2B6qLyb5iWufviw8V
         cHWTkAOG/L6/ue+a3KZ5NuIpUAFolwddZTvnPdUuF+s2q9vhc/z2hiuu3Sr/4QAmyGxn
         X1fw==
X-Gm-Message-State: AO0yUKUz3tA2geDS464odsrth6zQ7KK8CMpdfiftafZO96Uqhuk0TcOp
        zd1UkmGUBjuXVNWNWfP5BnY=
X-Google-Smtp-Source: AK7set90lLbwgWQtG5sQExsW8gSpZUwRgqFo5m+u4Zm7M+TylebWL3ekuym7RquLJWlthh6fpZgD5Q==
X-Received: by 2002:a05:6830:6102:b0:68b:d679:9530 with SMTP id ca2-20020a056830610200b0068bd6799530mr9237718otb.1.1675966281478;
        Thu, 09 Feb 2023 10:11:21 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w17-20020a9d6751000000b0067781a9292asm1022964otm.2.2023.02.09.10.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:11:21 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:11:19 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 16/20] localedef.1: ffix
Message-ID: <20230209181119.zzwei6sstjyar6nq@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="e6fxtmzry3kejqfn"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--e6fxtmzry3kejqfn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Spell ellipsis such that it will render better on typesetters.

Use unadjustable space \~ instead of quoted space at the boundary of a
macro argument, for readability.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/localedef.1 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man1/localedef.1 b/man1/localedef.1
index 216883422..214822530 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -28,7 +28,7 @@ localedef \- compile locale definition files
 .SY localedef
 .B \-\-delete\-from\-archive
 .RI [ options ]
-.IR localename " ..."
+.IR localename \~.\|.\|.
 .YS
 .SY localedef
 .B \-\-list\-archive
--=20
2.30.2


--e6fxtmzry3kejqfn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlN0cACgkQ0Z6cfXEm
bc6TZhAApwA2m1BLPP5S7Orkgvqk82iPEpN4R3MMXgNY8rdSJ1BXbnSMyW79H8dQ
43QVRHi21970eJ1DgmhVPO5XTohDPRVofssfOfYCkOlzlnGCj2MY8Pi79W5AQU4n
WBdsclYpxITh21NdDb6++Gut7dVdgkE0kLhgmopRBlKzkJqwOWynPoOGi8ygHz1W
+yDZZgg6A+o+B/BLNu2ydYGi3kfIj9xzkxcC1+Xnyr+JRItj1ANeFRlcMxN80VBD
oy+QRhvArEUxr1U9OcQRbm+v+lnyzx7rOakB5IB9G6tXrhA7q3CK5iPzt4vqgNxn
mGcI7eg3QyFPeYpPvdopNv63hF6SuedERhdcjzPGW9S2S89lvJfY5hA8dWeGsRx/
yyKlWgj+khyLkKhftYButGeHF5V5/RK68vo7CHZdKiQNajg5zJM6WlIuhJNCh8au
uHtIIercm6bACzDgwsZxM+A8kYusmDjw0kuOa4hvmUB+FIRf0bCEPkonw/KwDxxA
dze2ioV7qfhOBw8xG5pJ4iSmWjfeaY2mgD1kHufVvXQd7KCgDDzEGFPDpV+qowik
VBaQvpHSgGTsJoHSV37yyU196hdkURr9l8zYT964JVhLNyr8s7kuPlcSPL4KMxec
RpwkSJv2+WgB/USN5J2HApXC9c2XEaBlSep9Aa/JkhXs2wXs320=
=4fhb
-----END PGP SIGNATURE-----

--e6fxtmzry3kejqfn--
