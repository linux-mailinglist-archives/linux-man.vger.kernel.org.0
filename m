Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C9857687C3
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:01:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbjG3UBw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:01:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbjG3UBv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:01:51 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED91A11C
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:01:50 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6bb231f1817so2136615a34.3
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690747310; x=1691352110;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=57SV2oCFTajalV5PyZwlXnLEDIEGzD/1MWpT/JCXpEs=;
        b=l/m1miuOLYUf9HBJLuDK+iNfiu6vQteEg7+0pD8UC1KE8JUnq38tonSBzf0NQp/PiG
         /+PUxsf8Rr3RWkb/kyhqfxUxCaCJoNV2nbVv3GU22VamSZ/uBcu1heic3dB7ngtqSipk
         ccPHowRmPErSZdkA49g9jpfWTUFNmMD5aLPEJo0Ov4ODuTiAVbVTClv/H0PS29Wu58df
         Ih4yoBlk3uiqMyIuQyxJ59WVg30FCV78584OkOBVBtrMYeu17q7uZaAJTm+BPhRsGNPu
         vGsVvRWYE4LgQ8eGOzZmM+NKLZu/47EjM1xK0uZT65WFNcTfA5Ut/sTHSAPEBgl/28On
         nWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690747310; x=1691352110;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=57SV2oCFTajalV5PyZwlXnLEDIEGzD/1MWpT/JCXpEs=;
        b=Qbfrl9PX/zHJ9djAoaWj3AUBWY1DVbHj69QqGpdIEiKTmL2Z4munqPcXq4z12paNx8
         AOXoyOxl6noeBFlcMgu5lla4RBSNggSo3HqRoGbmf1WrHkUUGVpCA2OPODJCYhUdFwDv
         b6B9yRMbmuxh3gVyHHyT58KDOUcukMvjzrMLOll8+Rn7bIyWJPUh9tueRFfrQd3+HAKB
         XsbqAHMk3T9ANJdW8hpUOBHSXF7mMi98eITXWZFJ9KyLA4B6FSPOsPattJ4fmnpGO2Pq
         ksHlrdQU3pdhiY86oXj+n0aLfRBGjhbK+ncQxdnFGGsnqshwxFrF4qSGb7b8ClK1V6hN
         yaHQ==
X-Gm-Message-State: ABy/qLZeXa9YG7SVZXy4VQzf7R36SjMCti9apFRTZ9Tb1qlqMO4D4ATJ
        W6TYFVW5BW9/HyGXVwZsNY4=
X-Google-Smtp-Source: APBJJlFMMiqNTnuDwoJqOLR+r6kHsc8OaSNCdrDb1cLlcMA2LuWZ5kuTqDjleVss6ulFnpnCDgrHzw==
X-Received: by 2002:a05:6870:3041:b0:1b7:2dfe:c1f5 with SMTP id u1-20020a056870304100b001b72dfec1f5mr8544709oau.6.1690747310076;
        Sun, 30 Jul 2023 13:01:50 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q5-20020a056830018500b006b94a14b52asm3527899ota.9.2023.07.30.13.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 13:01:49 -0700 (PDT)
Date:   Sun, 30 Jul 2023 15:01:48 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/9] syscalls.2: srcfix
Message-ID: <20230730200148.erzm7n4g4ym4fv64@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ldvoqrxru2gmeftc"
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


--ldvoqrxru2gmeftc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Clean up in preparation for "MR sed".

Use font style alternation macros instead of font selection escape
sequences to mark up man page cross references in table entry text
blocks.  Also protect them from hyphenation.  (`MR` will take care of
that for us.)

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man2/syscalls.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man2/syscalls.2 b/man2/syscalls.2
index 405629c23..8babb3e91 100644
--- a/man2/syscalls.2
+++ b/man2/syscalls.2
@@ -596,7 +596,8 @@ .SS System call list
 \fBs390_sthyi\fP(2)	4.15	s390 only
 \fBs390_guarded_storage\fP(2)	4.12	s390 only
 \fBsched_get_affinity\fP(2)	2.6	T{
-Name of \fBsched_getaffinity\fP(2)
+Name of
+.BR \%sched_getaffinity (2)
 on SPARC and SPARC64
 T}
 \fBsched_get_priority_max\fP(2)	2.0
@@ -607,7 +608,8 @@ .SS System call list
 \fBsched_getscheduler\fP(2)	2.0
 \fBsched_rr_get_interval\fP(2)	2.0
 \fBsched_set_affinity\fP(2)	2.6	T{
-Name of \fBsched_setaffinity\fP(2)
+Name of
+.BR \%sched_setaffinity (2)
 on SPARC and SPARC64
 T}
 \fBsched_setaffinity\fP(2)	2.6
--=20
2.30.2


--ldvoqrxru2gmeftc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGwaQACgkQ0Z6cfXEm
bc77dg/+NLa5+clA++kNMKowz05ZU9uSC5QC3/8vQalXWja/8GVypn/kJi5P13tv
5lU+XTtjI8fNIzKtOkUfKNLQIfCSZc7p8As4wRoCcoXSsovU3e7B8bFbiloc0Y7b
Ngs3OOAn2fcq7NwnTkCvjug3SlHAePC9ysFfjaKdeoDmfMpcXB67xClnjH0bY8Nv
TKN2nZ9utnhBjM75qkcy9IowMi8iRDWPGLw/q1oYLCI0IUJjkZAVZrbcneza1NjR
n36X7mDswjBRnBvSNg6yf99BDEQN0HBR8Vpr5Kt+vaFZ4fbEh2CSeVdVjiYf1bMw
Uj4r1q1Qt1GvnAqoSJkkevXnyLXVta39NR/d7TPhKhvhWwEg4Ucz6/mvgKue7QNr
ICWy2+H8+HokiIrYJp9tkC8eYZbm4yaF44yglMlTPTkbY4+HKUItzKZ5jJd/Wlm6
VPdQyNROM3nbZvYgT7zRvnoE5kIBE7XRUa3JCdU9sOKzZvZqYWsYux+O0Suttemo
cQOKtXHgTkkbzxHBEZuuOodvA0vHK9DQPQpt2rnygc1Z4RG1MKv788Sshwaeo0nS
75EtcMM+V1wEeidQ0jZk2AQhqu5lrPTVgxSeGWkVS/riAIfShhccjPezqT9ONESF
/yK0Iu5W8g34tc6tOAYD9sQw0gXDvEClNDU3gCiyr065O546VAU=
=kOKu
-----END PGP SIGNATURE-----

--ldvoqrxru2gmeftc--
