Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A5B252F1AB
	for <lists+linux-man@lfdr.de>; Fri, 20 May 2022 19:31:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235141AbiETRbU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 May 2022 13:31:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352177AbiETRav (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 May 2022 13:30:51 -0400
Received: from joooj.vinc17.net (joooj.vinc17.net [IPv6:2001:4b99:1:3:216:3eff:fe20:ac98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 909D19597
        for <linux-man@vger.kernel.org>; Fri, 20 May 2022 10:30:47 -0700 (PDT)
Received: from smtp-zira.vinc17.net (128.119.75.86.rev.sfr.net [86.75.119.128])
        by joooj.vinc17.net (Postfix) with ESMTPSA id 01B1C274;
        Fri, 20 May 2022 19:30:44 +0200 (CEST)
Received: by zira.vinc17.org (Postfix, from userid 1000)
        id D3CC52800218; Fri, 20 May 2022 19:30:43 +0200 (CEST)
Date:   Fri, 20 May 2022 19:30:43 +0200
From:   Vincent Lefevre <vincent@vinc17.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: Document 'l' length modifier for a, A, e, E,
 f, F, g, and G
Message-ID: <20220520173043.GC1112518@zira.vinc17.org>
References: <20220520141040.1136383-1-vincent@vinc17.net>
 <ca8d1d17-4bde-6728-fa15-8655f3e14c3c@gmail.com>
 <20220520161121.GA1112518@zira.vinc17.org>
 <f5fef324-4883-197e-1e3d-e3b5b36ceaf9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5fef324-4883-197e-1e3d-e3b5b36ceaf9@gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.5+17 (caf1d53e) vl-138565 (2022-05-19)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
---
 man3/printf.3 | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/man3/printf.3 b/man3/printf.3
index 4fa1f11f3..a231d626c 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -503,6 +503,17 @@ argument, or a following
 conversion corresponds to a pointer to
 .I wchar_t
 argument.
+On a following
+.BR a ,
+.BR A ,
+.BR e ,
+.BR E ,
+.BR f ,
+.BR F ,
+.BR g ,
+or
+.B G
+conversion, this length modifier is ignored (C99; not in SUSv2).
 .TP
 .B ll
 (ell-ell).
-- 
2.36.1

