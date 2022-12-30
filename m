Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD3E76597F3
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 13:04:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231391AbiL3MEE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 07:04:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231328AbiL3MED (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 07:04:03 -0500
Received: from mx0.riseup.net (mx0.riseup.net [198.252.153.6])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 702CC1A079
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 04:04:02 -0800 (PST)
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
         client-signature RSA-PSS (2048 bits) client-digest SHA256)
        (Client CN "mail.riseup.net", Issuer "R3" (not verified))
        by mx0.riseup.net (Postfix) with ESMTPS id 4Nk3nt1JDmz9tHS;
        Fri, 30 Dec 2022 12:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
        t=1672401842; bh=EkYissJvtWGXn0rVcEh8LCF99ApgT94ADROAzUZ1qBU=;
        h=Date:From:To:Cc:Subject:From;
        b=bCiZ5rxy7hxnNJlAuiHG466OWbmxMi4RFeAw2l6I1JUeJ1bLAQ2kCdilWLR465NPl
         4JYa6GqR0fZyQ14BrosM5NKmqhbzvHJycySCQgnnVOiXiT95oMBOQZSkMBAjZXHpTr
         /k1Y/MWa+Tbb0S2uGWHmlW+7rs2kDzNYg2BbO/lo=
X-Riseup-User-ID: 12518043E034034936C2BBBD3D9E2FEE0FB418A5143E00AD1C43D98E3EFAC1D0
Received: from [127.0.0.1] (localhost [127.0.0.1])
         by fews2.riseup.net (Postfix) with ESMTPSA id 4Nk3nr2CdNz1yRB;
        Fri, 30 Dec 2022 12:03:59 +0000 (UTC)
Date:   Fri, 30 Dec 2022 12:03:54 +0000
From:   Samanta Navarro <ferivoz@riseup.net>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Subject: [PATCH 2/2] scripts: tfix
Message-ID: <20221230120354.57vnojrtfx5f2xvf@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Typos found with codespell.

Signed-off-by: Samanta Navarro <ferivoz@riseup.net>
---
 scripts/LinuxManBook/gropdf  |  2 +-
 scripts/LinuxManBook/utp.mac | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/scripts/LinuxManBook/gropdf b/scripts/LinuxManBook/gropdf
index 3beb2089d..8474e583f 100755
--- a/scripts/LinuxManBook/gropdf
+++ b/scripts/LinuxManBook/gropdf
@@ -2791,7 +2791,7 @@ sub do_m
     # PDF uses G/RG/K for graphic stroke, and g/rg/k for text & graphic fill.
     #
     # This means that we must maintain g/rg/k state separately for text colour & graphic fill (this is
-    # probably why 'gs' maintains seperate graphic states for text & graphics when distilling PS -> PDF).
+    # probably why 'gs' maintains separate graphic states for text & graphics when distilling PS -> PDF).
     #
     # To facilitate this:-
     #
diff --git a/scripts/LinuxManBook/utp.mac b/scripts/LinuxManBook/utp.mac
index b0b5bb271..ed9027ab7 100644
--- a/scripts/LinuxManBook/utp.mac
+++ b/scripts/LinuxManBook/utp.mac
@@ -16,7 +16,7 @@ Version of 16 November 2002
 .nr chapter_page 0      \" avoid diag. if there's no .Se call
 .ds chapter_name
 \#
-\# Redefine LP so that it can take an argument to surpress spacing
+\# Redefine LP so that it can take an argument to suppress spacing
 \#
 .de par*start*nospace
 .ds@auto-end
@@ -243,7 +243,7 @@ Version of 16 November 2002
 ..
 .als Hl horizontal_line
 \#
-\#  Standard Section Formating Routine
+\#  Standard Section Formatting Routine
 \#
 .de format_standard_section
 .RT
@@ -260,7 +260,7 @@ Version of 16 November 2002
 .el .ds chapter_type Chapter
 .\" If there is a section number, output Type and section number
 .if !'\\$1'' \s14\fB\\*[chapter_type] \\$1\fP\s0
-.\" If there is no section number, but there is a type, then ouput it
+.\" If there is no section number, but there is a type, then output it
 .if '\\$1'' .if !'\\$3'' \s14\fB\\*[chapter_type]\fP\s0
 .sp 5p
 .\" Print the section title if there is one
@@ -357,7 +357,7 @@ Version of 16 November 2002
 .\" list start $1: A - ALPHA
 .\"                a - alpha
 .\"                B - bullet
-.\"                N - numberic
+.\"                N - numeric
 .\"                R - ROMAN NUMERALS
 .\"                r - roman numerals
 .\"            $2: indent
@@ -368,7 +368,7 @@ Version of 16 November 2002
 .	tm Ls: Need A, a, B, N, R, or r as type
 .nr l\\n+[l0] 0 1
 .ie '\\$1'' \{.                      \" set defaults
-.	if '\\n[l0]'1' .af l\\n[l0] 1    \"numberic at 1st level
+.	if '\\n[l0]'1' .af l\\n[l0] 1    \"numeric at 1st level
 .	if '\\n[l0]'2' .af l\\n[l0] a    \"alpha at 2nd level
 .	if '\\n[l0]'3' .af l\\n[l0] i    \"roman at 3rd level
 .	if '\\n[l0]'4' .ds l\\n[l0] \(bu \"bullet at 4th level
-- 
2.39.0

