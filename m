Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F7956B1366
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 21:54:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229843AbjCHUx6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 15:53:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjCHUx6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 15:53:58 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D57817042E
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 12:53:56 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 7322816006A
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 12:53:56 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id zCTYviqrhZBs; Wed,  8 Mar 2023 12:53:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id B8A1416005E;
        Wed,  8 Mar 2023 12:53:55 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu B8A1416005E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1678308835;
        bh=DKMe/MSxYvI/P3/chIm1ODG+X+3IPzcre7mluPoaZ8s=;
        h=From:To:Subject:Date:Message-Id:MIME-Version:
         Content-Transfer-Encoding;
        b=IMW+qQ5CZ8eYaShItm4RhbRMJttkQ8VK4lIAXzyyWTDfuuhcFq7qVxnbKJdElI/2T
         VhIMQT9xPHTqZ+0iUPTp1D1EeMcgPHtqbcCSLpZKvGruL4MTVe7RojfKr34gNJ8FvM
         KGOlSDTdQ4xIVnVLNnCb1aYsHwEk6ylwynsxKzb0=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id yQQADplVgvYJ; Wed,  8 Mar 2023 12:53:55 -0800 (PST)
Received: from penguin.cs.ucla.edu (Penguin.CS.UCLA.EDU [131.179.64.200])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id A12CE160037;
        Wed,  8 Mar 2023 12:53:55 -0800 (PST)
From:   Paul Eggert <eggert@cs.ucla.edu>
To:     linux-man@vger.kernel.org
Cc:     Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH] strftime.3: document how %z and %Z are calculated
Date:   Wed,  8 Mar 2023 12:53:44 -0800
Message-Id: <20230308205344.745801-1-eggert@cs.ucla.edu>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man3/strftime.3 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man3/strftime.3 b/man3/strftime.3
index 57b2a38aa..90248d0b4 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -417,6 +417,8 @@ The
 or
 .I \-hhmm
 numeric timezone (that is, the hour and minute offset from UTC). (SU)
+(Calculated from
+.IR tm_gmtoff .)
 .TP
 .B %Z
 The timezone name or abbreviation.
@@ -427,6 +429,8 @@ The timezone name or abbreviation.
 The date and time in
 .BR date (1)
 format. (TZ)
+(Calculated from
+.IR tm_zone .)
 (Not supported in glibc2.)
 .TP
 .B %%
--=20
2.39.2

