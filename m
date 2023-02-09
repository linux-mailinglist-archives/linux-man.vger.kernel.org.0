Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3741F691002
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:11:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbjBISLE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:11:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229725AbjBISLC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:11:02 -0500
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAA5968AFE
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:10:47 -0800 (PST)
Received: by mail-ot1-x32d.google.com with SMTP id 14-20020a9d010e000000b0068bdddfa263so795855otu.2
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dXTm/T/Ci1xgcscL8JYmG2C+Yn+dfKuedfddsW7lZmw=;
        b=Z/uE1QU7cFF94uQXdzmdG++rgUv15zuK+804MyacD+1Tv1DtxEoZZTYyM6Ic5Xe6Gb
         bx1sPA0p7a9zD3tM0PveyaFr1dDbhGwhS+WpbFRvy+gdFk9q32PD5OFqlLH7WmIx8b0g
         amWe3/iRGmRZ5lR+Isx3rqm0MMDF6q/TTQ1rFWMHIEdEKacfX/W8wDYywNx7py+70Gmy
         ZA5Qt8cGzlJe/SUBhgdSkxepetzchFOygC6KyWRhrhM/5w98G++mGj903fX5qqzXCRGp
         ZG3QGpsKT8SE6JM5qsbLc6RnLB4B/+sGPRm8t7iweFqcVZ4dD6YBeguuDJ+qloT7Zieg
         XCgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dXTm/T/Ci1xgcscL8JYmG2C+Yn+dfKuedfddsW7lZmw=;
        b=f9pI7RiO9G4X0TFkxJhmg23Wx69EmDL2VxgO5pfpDg/AOc8uOZqs2o1zLNLtKwiCnm
         z0hbeN5Dcp5YGN6uZy+vT95JylrhoAucZknXJpWaZjiVZ38wASYQ3Rl+N12LYsMjURZh
         C6l1gPjby1+Bsi2mgyqpady1V0My/UK4lXHVqV0DNK9ptXREWiKfwV4Fu4IvNBUOX2nI
         MOz6eIeB7GnfPC0TQWiItXi0trxpUhB+u0DLero7ytK0IZTolWIttfjsmVV34oqHijUB
         ceLVcBDWp+f5nVCo4fS2+wMa52MJpZ6fJMYwhoCMvbBeY4f8WpGV0vUoU/P0tXCA8Y7u
         VA0g==
X-Gm-Message-State: AO0yUKURQ5EhN1CKq3rMuZ9/2paxZXSxAg9sGb4tpYpzWCuO1XkK+Evv
        MOWKD9pykDbOLjlRCWvRdeUJVP3/urg=
X-Google-Smtp-Source: AK7set/2J3gvb6lh+iZLSZ3jJ2Kw9wX79CSPcUbh3QqgioabeN7+F/tRGEa6q7T5pDP4izsooffTZg==
X-Received: by 2002:a9d:734c:0:b0:68b:daba:9b2b with SMTP id l12-20020a9d734c000000b0068bdaba9b2bmr6105524otk.13.1675966247005;
        Thu, 09 Feb 2023 10:10:47 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id f14-20020a9d6c0e000000b00670461b8be4sm986433otq.33.2023.02.09.10.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:10:46 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:10:45 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 12/20] localedef.1: ffix
Message-ID: <20230209181045.s6gacrslbvsilhoy@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7ngdlxwokyc57prt"
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


--7ngdlxwokyc57prt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Stop manipulating adjustment and hyphenation.

Forcibly re-enabling adjustment to both margins after the synopsis does
not respect user configuration of adjustment.  There _is_ a portable way
to save the adjustment mode, via the .j register and a copy of it, but
doing so requires even more usage of low-level requests that are
discouraged in man page writing.

The latter is incorrect for use with groff(1) since '.hy' does not
restore the previous hyphenation mode but sets it to 1, which is not
appropriate for the English-language hyphenation patterns groff uses.
(Also, AT&T man(7) used a hyphenation mode of 14.)

Neither of these requests is respectful of user configuration of
adjustment or hyphenation enablement.  Features in the forthcoming
groff 1.23 will make these easier for users to manipulate to their
preference.

(mandoc(1) does not support configurable adjustment or hyphenation, so
all of these requests are no-ops for it.)

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/localedef.1 | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/man1/localedef.1 b/man1/localedef.1
index 6551a5816..93217bfae 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -16,8 +16,6 @@
 .SH NAME
 localedef \- compile locale definition files
 .SH SYNOPSIS
-.ad l
-.nh
 .B localedef
 .RI [ options ]
 .I outputpath
@@ -38,8 +36,6 @@ localedef \- compile locale definition files
 .B "localedef \-\-usage"
 .br
 .B "localedef \-\-version"
-.ad b
-.hy
 .SH DESCRIPTION
 The
 .B localedef
--=20
2.30.2


--7ngdlxwokyc57prt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNyUACgkQ0Z6cfXEm
bc6S2A//Yxvb0K/XmgIdbHChweyoVqomQdkp9G/wYep9lLJJXaD+aeeRoghuDKgY
R8XLq45W3t3tIZji9Z3CzoEriG/BeISLD6uU9JGO3VxNOJpH+CYYLmdrywHI7vxC
75MhTXGWmcs24n+C0GN/W72fVXjSyfj9YGFOSpqz6P8N6aVfOyyvf7Vcr2Xgr8+P
QPWMaVWWZZXDw5QbYTIzPngOwTV09aNjwdSjDNMTN6Zlp5OYdaP1cqI0ZMB7tFJE
ImAxq9Gs7zhafIE2UhpitvZuVNJHt9yrd8euDJ+Mzhsu7ZDTsvZdf63WQq9mk/1q
PJ5eJViPUf/+uMLRDg9MgSJ5+OTK9d5v2AbaHrTFbU/MiSaAVhsAmnBcQEOMad/m
2PRdci9RE+P4Z36lFtrqeSSAqxundgxa2QWPP2K467IBq7zqR9BCcTtLZUBoo/7e
/1oecswj0VtS0RdsvnrVS5Y1sE26jZdfWKgjtxwaf48C3gpkLaaPxbfNEpaS1/WQ
Dj1O+rRCp/onhGLQBLTaL26THIXyNwxHqeIdMtfxZtoCz/++0aBjTBjDDEVBGR6f
JSDH8Ppyt1Ga/sCGKGNBDIMs+zFlSXcV85SpR5Q4w9sLywU5PO8qj2tMCRZlFMOo
Sq9f7UYjdeEs80WlMrkXT5qGm+Tu88KNc2l3LIR+mtPE3uv/DxQ=
=RJg9
-----END PGP SIGNATURE-----

--7ngdlxwokyc57prt--
