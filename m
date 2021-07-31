Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D22663DC2FC
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 05:40:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231487AbhGaDkF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 23:40:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235763AbhGaDkD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 23:40:03 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1512C0613CF
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 20:39:57 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id c16so13316796plh.7
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 20:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OaqNA3mh5IXgKBBz9ZpGCiBXe5O88Jcvh5egbXEePzg=;
        b=JneIe3E6GgDgPnEJyP4RGXR6A0kvIT2FnHTCLCEOM9QLdq95ZrSlGMdX4jdeKHFqS6
         nAXEPU4+9QiW89PqMzp6+4kuOYNkH2u850S8CBN5kHqlMu9HcgkFlogaY7jtYdO66gLX
         G/5DNm8D8y+nDf2NXKjvpNAwhK7ZDd2y+y5XwKHQqiELo48+7wYW6EiV5pOnUofw8+Ts
         XwUBdN7EvUKCY5eBpylgDV/LjlrGZhzwomWB3IIF3z+/tY72XgkAvuvly7tNLCm5gTAA
         GyFsbfmgE1a35jFhOYqs2RCMyWqDsrCn3WklzavrTGhiaJb9rX0X1fCxuhu30KKFsgEp
         QS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OaqNA3mh5IXgKBBz9ZpGCiBXe5O88Jcvh5egbXEePzg=;
        b=W3fKBJyjsn57seIR8TYurdGv2gnL/JOFPGvPZhnvCU6AUuYBqrb9DMTa9Xt4jNqx26
         HiI5XMtEGb21CG9PQNrIYjh7GOAzyRrxP5hQdEuQ7wGsB+reiygre28mQBJTWJogWkoL
         FNRJs7rbpolRLNG7MT30jxBm6ghx6Qi14NTSx+TaJ4esBAjLiM/S0uXuZRs+khK6PYz7
         0GbB3GENCTxCHK0bs2JDWtsihvc0+5bBcaHuOQYG1DhwT7/xp1/AKHawI+cAg62j1XjF
         9a62vfX1k88mS1sXtuNGkFj2kvGSQGzNUVD+jOMRWwWwtptlHFZ7YSGTu1RvBcs72tQ6
         ZnAw==
X-Gm-Message-State: AOAM532N0JTZD0UzgHfbBhqlwRQOfWjstUOABoCrFKtK1L/8LfRuMNJY
        8+VEn2FF0DHTId1THePB1nB+ygVeaizt6g==
X-Google-Smtp-Source: ABdhPJxTVmT++JGIfPFxAFw/cUWQbdbBBnEAlmt/aE5Rk5YxwJps804dy0kn1YM/F2fXERd1acNpOg==
X-Received: by 2002:a17:902:d916:b029:11e:3249:4a17 with SMTP id c22-20020a170902d916b029011e32494a17mr5151923plz.0.1627702796961;
        Fri, 30 Jul 2021 20:39:56 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id z14sm4005017pfr.121.2021.07.30.20.39.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 20:39:56 -0700 (PDT)
Date:   Sat, 31 Jul 2021 13:39:52 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH 1/2] man-pages.7: wfix
Message-ID: <20210731033948.z33f5rllnqjk57lx@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tduuu2ndu4lqgvry"
Content-Disposition: inline
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tduuu2ndu4lqgvry
Content-Type: multipart/mixed; boundary="gydcmk4q2vwszjj6"
Content-Disposition: inline


--gydcmk4q2vwszjj6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Saw this while preparing the "switch to \~" change Alex invited.

---
 man7/man-pages.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 6cb805343..3819dfd97 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -638,7 +638,7 @@ makes it easier to write tools that parse man page sour=
ce files.)
 .SS Use semantic newlines
 In the source of a manual page,
 new sentences should be started on new lines,
-and long sentences should split into lines at clause breaks
+and long sentences should be split into lines at clause breaks
 (commas, semicolons, colons, and so on).
 This convention, sometimes known as "semantic newlines",
 makes it easier to see the effect of patches,
--=20
2.20.1


--gydcmk4q2vwszjj6
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-man-pages.7-wfix.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 73c9edb11ab7d147167268ac1fd5c5e6f81f2374 Mon Sep 17 00:00:00 2001
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date: Sat, 31 Jul 2021 13:30:30 +1000
Subject: [PATCH 1/2] man-pages.7: wfix

---
 man7/man-pages.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 6cb805343..3819dfd97 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -638,7 +638,7 @@ makes it easier to write tools that parse man page sour=
ce files.)
 .SS Use semantic newlines
 In the source of a manual page,
 new sentences should be started on new lines,
-and long sentences should split into lines at clause breaks
+and long sentences should be split into lines at clause breaks
 (commas, semicolons, colons, and so on).
 This convention, sometimes known as "semantic newlines",
 makes it easier to see the effect of patches,
--=20
2.20.1


--gydcmk4q2vwszjj6--

--tduuu2ndu4lqgvry
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEExfwACgkQ0Z6cfXEm
bc4weg/+KXnarELYOUFZDtG4tYKIanIghSjXptRhhxxEyoxg2J98JlRFT9EmgZrG
gmo8v7MZdq7vzYlbg6Aa+S31eyKuhlWOTLkVlozM/HjODB8W8Zxlk0TDB+LfJZHf
NngxW3nl6kwtnQJ2Le0JQYqS/rZSmM+DPJUd2VcBVthbw1SiTei8ly0gF7NHFt1m
sElMDrpSG+MAYEWD6sk5TcQ4L1RxeayZoOeEFUpXAJKTRFKFmGOeHKfOgWq0XoGP
mI3ZQYvxtpIzA+de0Vz8nRzcx4MMPCOcVtTJDwahveXpxQ20uaXAXzQBmyW8FD+Q
0aaqp6JO7QpIs2cyr5GpBQTvEcLj50G+CSyRxvD544Qg3JmIyHnoEY3npTTDViXD
jrlDX75451ETa2ogtSpuHJFY1YS9ISAKYujPQ38QR77+iZMxCTASYMxtBsg7IxV4
Xvf+jKyOdBSz4rPZC63ZCrCb2S/mK23LMm0KSocUPVtypzINUhhx5g1XSvmEes90
wH9hIKg2yd1dqI6DtFpLJ/Jb3E+51j6HZm+fE9qS4ABbpoLYf4IAFys6hErBXCGP
HnjVtIcDnRxEWF6NeAUQ33MUExM98gtJe8EHRH/oLE6nuyCKgjkzsOLBGdtZuHnb
bu4HWTPcIxPoCkprGm07AcZ02rTwheHwbSIAf02S4TyLV5dpMTU=
=kU4R
-----END PGP SIGNATURE-----

--tduuu2ndu4lqgvry--
