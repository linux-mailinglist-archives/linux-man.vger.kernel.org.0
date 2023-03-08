Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C4906B0C91
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 16:24:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231213AbjCHPYg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 10:24:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230360AbjCHPYf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 10:24:35 -0500
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [IPv6:2001:bc8:228b:9000::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 204CEA336A
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 07:24:33 -0800 (PST)
Received: from localhost.localdomain
        by sdfg.com.ar (chasquid) with ESMTPSA
        tls TLS_AES_128_GCM_SHA256
        (over submission, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
        ; Wed, 08 Mar 2023 15:22:42 +0000
From:   Rodrigo Campos <rodrigo@sdfg.com.ar>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
        Rodrigo Campos <rodrigo@sdfg.com.ar>
Subject: [PATCH 0/2] user_namespaces.7: Add note about PR_SET_DUMPABLE on nested userns
Date:   Wed,  8 Mar 2023 16:22:17 +0100
Message-Id: <20230308152219.595611-1-rodrigo@sdfg.com.ar>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

This patchset is mostly about adding a clarification note for nested user
namespaces. I hit that issue and I think having it properly documented would
have been nice.

I'm adding Christian Brauner on Cc:, as a developer that has the knowledge to
review this.

While I was there, I also send a patch to clarify the CONTRIBUTING file. It
says to mail both maintainers, but only one listed. I thought Michael address
was missing, until I understood that he is not active anymore.


Best,
Rodrigo

Rodrigo Campos (2):
  CONTRIBUTING: Fix typo, there is one active maintainer
  user_namespaces.7: Add note about PR_SET_DUMPABLE on nested userns

 CONTRIBUTING           |  2 +-
 man7/user_namespaces.7 | 17 +++++++++++++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

-- 
2.39.2

