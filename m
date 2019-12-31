Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2BB3612DA77
	for <lists+linux-man@lfdr.de>; Tue, 31 Dec 2019 18:07:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727064AbfLaRH5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Dec 2019 12:07:57 -0500
Received: from hera.aquilenet.fr ([185.233.100.1]:51334 "EHLO
        hera.aquilenet.fr" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726720AbfLaRH5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Dec 2019 12:07:57 -0500
X-Greylist: delayed 378 seconds by postgrey-1.27 at vger.kernel.org; Tue, 31 Dec 2019 12:07:57 EST
Received: from localhost (localhost [127.0.0.1])
        by hera.aquilenet.fr (Postfix) with ESMTP id A09EE2CFE;
        Tue, 31 Dec 2019 18:01:37 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
        by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id Xvvyf17cB2JP; Tue, 31 Dec 2019 18:01:36 +0100 (CET)
Received: from function (lfbn-bor-1-310-21.w109-215.abo.wanadoo.fr [109.215.31.21])
        by hera.aquilenet.fr (Postfix) with ESMTPSA id D63312CFC;
        Tue, 31 Dec 2019 18:01:36 +0100 (CET)
Received: from samy by function with local (Exim 4.92.3)
        (envelope-from <samuel.thibault@ens-lyon.org>)
        id 1imKtj-000pDk-Uy; Tue, 31 Dec 2019 18:01:35 +0100
Date:   Tue, 31 Dec 2019 18:01:35 +0100
From:   Samuel Thibault <samuel.thibault@ens-lyon.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] getpt.3: Remove mention of O_NOCTTY
Message-ID: <20191231170135.gqbv35jdlqfmomee@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vsztnixar3ermvzb"
Content-Disposition: inline
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vsztnixar3ermvzb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The glibc implementation of getpt has actually never been setting
O_NOCTTY when opening /dev/ptmx or BSD ptys.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

--vsztnixar3ermvzb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

--- ./man3/getpt.3.orig	2019-12-31 17:58:50.046714199 +0100
+++ ./man3/getpt.3	2019-12-31 17:59:00.706722831 +0100
@@ -21,7 +21,7 @@
 .PP
 .in +4n
 .EX
-open("/dev/ptmx", O_RDWR | O_NOCTTY);
+open("/dev/ptmx", O_RDWR);
 .EE
 .in
 .PP

--vsztnixar3ermvzb--
