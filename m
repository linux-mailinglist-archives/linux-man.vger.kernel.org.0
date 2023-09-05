Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCD207929BA
	for <lists+linux-man@lfdr.de>; Tue,  5 Sep 2023 18:57:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352469AbjIEQ13 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Sep 2023 12:27:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354801AbjIEO37 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Sep 2023 10:29:59 -0400
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CFA6189
        for <linux-man@vger.kernel.org>; Tue,  5 Sep 2023 07:29:55 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 71816240103
        for <linux-man@vger.kernel.org>; Tue,  5 Sep 2023 16:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1693924193; bh=tRBdZLKsv+nZPqEVfeaSgChbsiznTxmgxGhx+4VA5VY=;
        h=Mime-Version:Content-Transfer-Encoding:Date:Message-Id:From:To:Cc:
         Subject:From;
        b=gRNbKh9NRF6Wr0q1EQ7GTFTj5NXGPI8z+XKfLEpxRBD/7hixAqjFcnbdnKeZD8x3F
         3lYpsP/x4vzWGQTQ/pF4jbWqjH68FE8+a+AGudWrasyHNPYqNL6buez7SRtGNmL5I8
         8wvG76/z5naSqGML8jzG5srnqXnIv70LqaxOvWnHAZfACUVob+iox0B1QWObl0bZL3
         EH7vqYCMTMZQ1rXnjdqFvogBQ71CmA39nanF9ixBFrePnORGR5izzhl+9bksnyzZex
         ZO6QMYgbIaF6fnYZuOhLTVy2q+ar17bRuSXVQVxuaAwnrjBjq6a+UhyL94Cc+/XPTw
         yubTDQLabKyWQ==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4Rg7FD3qX0z6twZ;
        Tue,  5 Sep 2023 16:29:52 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Tue, 05 Sep 2023 14:28:48 +0000
Message-Id: <CVB1ZLP8Y3BG.F5HXX1VUSN90@posteo.de>
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "Alejandro Colomar" <alx@kernel.org>
Cc:     <linux-man@vger.kernel.org>
Subject: Re: [PATCH] ptrdiff_t.3type: fix limits of ptrdiff_t
References: <20230903172645.14163-1-schwindl@posteo.de>
In-Reply-To: <20230903172645.14163-1-schwindl@posteo.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

oops, forgot to sign-of.
The fixed patch is inlined below.

--
Best Regards,
Tom Schwindl

---
From fd911029cccc7f6545a24f1fa1791adb0740c85f Mon Sep 17 00:00:00 2001
From: Tom Schwindl <schwindl@posteo.de>
Date: Tue, 5 Sep 2023 16:24:23 +0200
Subject: [PATCH] ptrdiff_t.3type: fix limits of ptrdiff_t

Signed-off-by: Tom Schwindl <schwindl@posteo.de>
---
 man3type/ptrdiff_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3type/ptrdiff_t.3type b/man3type/ptrdiff_t.3type
index 093e630bf711..11bd5c4dc01b 100644
--- a/man3type/ptrdiff_t.3type
+++ b/man3type/ptrdiff_t.3type
@@ -21,7 +21,7 @@ Used for a count of elements, or an array index.
 It is the result of subtracting two pointers.
 It is a signed integer type
 capable of storing values in the range
-.RB [ PTRDIFF_MAX ,
+.RB [ PTRDIFF_MIN ,
 .BR PTRDIFF_MAX ].
 .PP
 The length modifier for
--=20
2.41.0
