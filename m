Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 656787687C4
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:02:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbjG3UCK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:02:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbjG3UCJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:02:09 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 218F311C
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:08 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6bca5c71a6aso87873a34.3
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690747327; x=1691352127;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qFg89vUeydg0GhvP57ftCgb3joZK3Aj9jxh0x3hPylM=;
        b=cOcqMglq6Pey5R5aMNZqnF5I/x53IOJIBBLTMfAe6GlLJ1d83gWGJqqTyAlhTQPBo0
         Qt5RCaKywsHpwo/6q0gtRPpfv8op4ZnNva3LKEOk1tirGyUwYKpYyFIxHiDRr2xQgbpO
         4XTMuLGd2w8lF1HzqVR56rJl4Y51mVKr3LyqqlffROcdiUrO3taiS7zIr2aGxWx8/0VH
         wmw/0BmeAgxe0m0HACTwnjyCoLnuoamuq6e2cQj7qFv47mi/Eds5lj6LtD2Ed+6aWU1J
         r8XbePndYXM1Hh9LO7UT59gqbf/7XqWAEGgyis6lcqzoRbr+08OvXyiQCjQXT/XVVFfK
         Stag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690747327; x=1691352127;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qFg89vUeydg0GhvP57ftCgb3joZK3Aj9jxh0x3hPylM=;
        b=RfOXR0bttdVR/YOjXhPowHKwKdwFqm2RhRqbjvWEtPsLtUDQ4NDQZGNPvk/HtGtlnR
         QMjdl32UD1VRb7720ZffzCgAfdbo1nwS0A5Nje7sAsMBGxTpVGGH4bWHlUsCMeFVloME
         U+GbQCUo4YecBsMjiNNgjyxbMzMPf0MHm6nKtFA+gZHkXebeQ0nDCI9+S21gEhaXeAOD
         O1FMd6p8qDz7YVqlbAYnjuKbBzjLaDuNBphdjQQCfMWeJEPfUILLLDi/W/aiuFdfnLbg
         8mcsFwfHrVUYVUeP8fjr19eOD8iN5kTtFysB/PxDFv+kJu5eoqjWP82DcGMxswm9zB34
         b6kw==
X-Gm-Message-State: ABy/qLY3f4xEQhX05jc+wj1QINo+ArSXgYXZKWWs3qL+/UsxLHMVGQp/
        Omwljj/breb9YHca47zGCXkoSveMI1o=
X-Google-Smtp-Source: APBJJlEKzsohx0qNocgXoW07zS96/ZPFL1go+S8LkOGwitTbEP64fsZ0FtyTOyU/rddOmGBiEBC3FQ==
X-Received: by 2002:a05:6870:2048:b0:1ad:3199:ceaf with SMTP id l8-20020a056870204800b001ad3199ceafmr11108647oad.14.1690747327289;
        Sun, 30 Jul 2023 13:02:07 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y7-20020a0568301d8700b006b96aee5195sm3522405oti.11.2023.07.30.13.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 13:02:06 -0700 (PDT)
Date:   Sun, 30 Jul 2023 15:02:05 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/9] man*/: ffix (un-bracket tables, continued)
Message-ID: <20230730200205.2oxspkhm3drud5ya@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="uq3af2wsp4lr3cvb"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uq3af2wsp4lr3cvb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Continue commit 9e54434ead, 19 July.

4 pages issued requests to manipulate adjustment and automatic
hyphenation around tbl(1) tables in a different order from the other 525
documents in the tree that performed this trick.

I produced this change with the following GNU sed script.

/^\.nh/{N;/\n\.ad l/{N;/\n\.TS/s/.*/.TS/}}
/^\.TE/{N;/\n\.ad/{N;/\n\.hy/s/.*/.TE/}}

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man2/syscalls.2 |  4 ----
 man3/stdio.3    |  4 ----
 man7/inode.7    |  4 ----
 man7/netlink.7  | 12 ------------
 4 files changed, 24 deletions(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 8babb3e91..8473a50d6 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -136,8 +136,6 @@ .SS System call list
 .\" Looking at scripts/checksyscalls.sh in the kernel source is
 .\" instructive about x86 specifics.
 .\"
-.nh
-.ad l
 .TS
 l2 le l
 ---
@@ -834,8 +832,6 @@ .SS System call list
 .\" 5a0015d62668e64c8b6e02e360fbbea121bfd5e6
 \fBxtensa\fP(2)	2.6.13	Xtensa only
 .TE
-.ad
-.hy
 .PP
 On many platforms, including x86-32, socket calls are all multiplexed
 (via glibc wrapper functions) through
diff --git a/man3/stdio.3 b/man3/stdio.3
index fb99cdd21..fef56df80 100644
--- a/man3/stdio.3
+++ b/man3/stdio.3
@@ -156,8 +156,6 @@ .SH DESCRIPTION
 .B putchar
 exist and will be used if the macros definitions are explicitly removed.
 .SS List of functions
-.nh
-.ad l
 .TS
 ;
 lb lbx
@@ -330,8 +328,6 @@ .SS List of functions
 input format conversion
 T}
 .TE
-.ad
-.hy
 .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
diff --git a/man7/inode.7 b/man7/inode.7
index dc2c38d1d..2fc4fde3c 100644
--- a/man7/inode.7
+++ b/man7/inode.7
@@ -345,8 +345,6 @@ .SS The file type and mode
 .I st_mode
 field:
 .in +4n
-.nh
-.ad l
 .TS
 lB l lx.
 S_ISUID	  04000	T{
@@ -398,8 +396,6 @@ .SS The file type and mode
 others have execute permission
 T}
 .TE
-.ad
-.hy
 .in
 .PP
 The set-group-ID bit
diff --git a/man7/netlink.7 b/man7/netlink.7
index 84b24f308..e2205482d 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -218,8 +218,6 @@ .SH DESCRIPTION
 .BR rtnetlink (7)
 for
 .BR NETLINK_ROUTE .
-.nh
-.ad l
 .TS
 tab(:);
 l s
@@ -240,11 +238,7 @@ .SH DESCRIPTION
 Echo this request.
 T}
 .TE
-.ad
-.hy
 .\" No right adjustment for text blocks in tables
-.nh
-.ad l
 .TS
 tab(:);
 l s
@@ -266,8 +260,6 @@ .SH DESCRIPTION
 (NLM_F_ROOT|NLM_F_MATCH).
 T}
 .TE
-.ad
-.hy
 .\" FIXME NLM_F_ATOMIC is not used anymore?
 .PP
 Note that
@@ -275,8 +267,6 @@ .SH DESCRIPTION
 requires the
 .B CAP_NET_ADMIN
 capability or an effective UID of 0.
-.nh
-.ad l
 .TS
 tab(:);
 l s
@@ -296,8 +286,6 @@ .SH DESCRIPTION
 Add to the end of the object list.
 T}
 .TE
-.ad
-.hy
 .PP
 .I nlmsg_seq
 and
--=20
2.30.2


--uq3af2wsp4lr3cvb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGwb0ACgkQ0Z6cfXEm
bc51Pg/8Cd1ivzhBx+1ZPLsrSBJv8cTZeRHjzu9xR7tp17OX99uZ11TwNN3jwYyT
ipJPgGq36QN1vtk3/1+oavXRMJiGqFr1gqVBTap8fKjSM2F5d8VUuPYSC4Gzt6EO
bjdVuZYrNqJ6XoycSB6obpUFHmi3czK6z+AtaaPUIFz9f4/JkwXiI8nawcR2o0B3
bu3TzlWO/I6gngq0pofVXm8bUqKQ9C31El1bcXYSgJtPL2SKeL/jeprpsm8fstjv
XqWniT7tpapYs2oFPVj0YHgjMdBcSx++MlRLJACAaVwFyYfGSsMHQiV1Ypl67cqs
W37sjGsGWThQIVoguChDK6NMHadRC0ISaUgga/AM/U8ga8YBwr28rfeQ2TCD8ysn
UdSAuCieD5pY2SBnFhyf15lJ0b6+B3efuGaIYRR/pSXBSciPvSZr1xJYpnDgDaLe
zMmZc8L1kuSqCR9hYRqG+du9Aqy/isArTzpFBZAkkpYL4gpV/fxwDycpIlaqEV8W
NvlnYfj5+oCVTfJu7hos4xZRQx8DXDvyv4hDjwF0yMcWm5u/nwN0uzohz1IKwfl2
jm9bYX3ivR/VyDWD625OfXhuds7tSgs75nmziTYzNwCDNV6mHKgy6x4wPUOJiHYY
bgKTMS2U16O3M1UdgCV9pgtJfbw3Y0C+XxNB6wH2JNwO1FyK3Ww=
=ZUnT
-----END PGP SIGNATURE-----

--uq3af2wsp4lr3cvb--
