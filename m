Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4A2474F9AF
	for <lists+linux-man@lfdr.de>; Tue, 11 Jul 2023 23:22:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229641AbjGKVWk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Jul 2023 17:22:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231463AbjGKVWj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Jul 2023 17:22:39 -0400
X-Greylist: delayed 510 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 11 Jul 2023 14:22:35 PDT
Received: from sosiego.soundray.org (sosiego.soundray.org [IPv6:2a01:4f8:c2c:a9a0::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DABA71716
        for <linux-man@vger.kernel.org>; Tue, 11 Jul 2023 14:22:35 -0700 (PDT)
From:   Linus Heckemann <git@sphalerite.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sphalerite.org;
        s=sosiego; t=1689110041;
        bh=H+YT9lHqDpDHQ+dzd0CmujRSTSMWwV2wRUc8GlNgo48=;
        h=From:To:Cc:Subject:Date;
        b=q+XdYXH+qZhRfRwBIBgUqlb9UXrh4HIPXyxaQIlG6WUx/tknoi8WId3+9Va0haO76
         LPrakbCq+Ds0ylBwyNVv5cMyuA986TX16aClnLKamGKUAXpewaNwuBhEA0dib7qqpI
         WmVPVNSFWh3NezivVyKOYFnkXG7sLDdoQkz+83B0=
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Linus Heckemann <git@sphalerite.org>
Subject: [PATCH] rtnetlink.7: Document IFLA_PERM_ADDRESS
Date:   Tue, 11 Jul 2023 21:13:50 +0000
Message-Id: <20230711211350.1247303-1-git@sphalerite.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man7/rtnetlink.7 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
index 2ce541c37..6061b5fd4 100644
--- a/man7/rtnetlink.7
+++ b/man7/rtnetlink.7
@@ -105,6 +105,7 @@ IFLA_QDISC:asciiz string:Queueing discipline
 IFLA_STATS:T{
 see below
 T}:Interface Statistics
+IFLA_PERM_ADDRESS:hardware address:hardware address provided by device (since 5.5)
 .TE
 .IP
 The value type for
-- 
2.40.1

