Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AF2050E52F
	for <lists+linux-man@lfdr.de>; Mon, 25 Apr 2022 18:08:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240914AbiDYQLK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Apr 2022 12:11:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236274AbiDYQLK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Apr 2022 12:11:10 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04EF13E5E4
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 09:08:06 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id j15so8330095wrb.2
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 09:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudflare.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qEHXX8+RUJZBVxgjCy0bUHqIpHBMNJwp3wfItFFaoao=;
        b=OMwe9keaN5waMrugXFNZe7JuqVXI7C7FVI22g9O1uN+an1F9AtO8872/KbLH0b4Mwj
         sVNWlE8sEP2GqvgT6LPrTeJ4RY7AGUywqkgSoHfnEI9f11ldv828bXzO5szlYruJoBwG
         3FZBTE2ju31/0dxUP4XKR4RzVey+xwZMX0wnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qEHXX8+RUJZBVxgjCy0bUHqIpHBMNJwp3wfItFFaoao=;
        b=O0aUIsT25apRxyJjMLiA2xoH7zr6D8tNhQz7DSZWVnUgPAPUEy3jK8XUZ6QTMxfOEe
         /gEhV/EJNzMuT7Uapd2McCsoxrp3qAWONzs00pgY+Wd7S+1kUiBfgh1YC332hg5kv0En
         AFBAUyCoOI/x2XPz6avPSPerMpu99IiQ3A8H959ZoqmjboLVLTi3h6RNmf7umY+9KxTh
         yKJVIMiEbVdMPgOFZ9QFGDRKXWyvmbuzEpqc+19mYu5w2IwjwIEpEDmLsoTt6WCNB5cT
         WhnhwjPtyRlV99lH/NQjDNLhLKUgtwsOF+saL4J2di5h8XCykHTOHvs4XFfFnj7os4Ne
         eTlg==
X-Gm-Message-State: AOAM5327dc1IzyXVs58G+XWg/GvoJXG0j0aUrVGV+B59PFCCcL9w2Dh5
        GSGFH9uoG/sY0LfMEDkvuGWc6pfQnNosSPKp
X-Google-Smtp-Source: ABdhPJxWYaU7QfE4XR/kDVbeZLwoXKRrOcvCSMIUxoAgmQwe9rU9q3uvjP5SKl8cctXI19coBTJWxQ==
X-Received: by 2002:adf:d0d0:0:b0:20a:d93f:e252 with SMTP id z16-20020adfd0d0000000b0020ad93fe252mr5747929wrh.78.1650902884395;
        Mon, 25 Apr 2022 09:08:04 -0700 (PDT)
Received: from cloudflare.com (79.184.126.143.ipv4.supernova.orange.pl. [79.184.126.143])
        by smtp.gmail.com with ESMTPSA id m1-20020a1ca301000000b003929c4bf250sm12126281wme.13.2022.04.25.09.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 09:08:03 -0700 (PDT)
From:   Jakub Sitnicki <jakub@cloudflare.com>
To:     linux-man@vger.kernel.org
Cc:     bpf@vger.kernel.org, Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Andrii Nakryiko <andrii@kernel.org>
Subject: [PATCH] bpf.2: Note that unused fields and padding in bpf_attr must be zero
Date:   Mon, 25 Apr 2022 18:08:03 +0200
Message-Id: <20220425160803.114851-1-jakub@cloudflare.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In a discussion regarding a potential backward incompatible change [1],
Andrii Nakryiko points out that unused bytes of bpf_attr should be
zero. Add this bit of information to the bpf(2) man page.

[1] https://lore.kernel.org/bpf/CAEf4BzbT4vQBnZzdD00SuPCDkeb4Cm=F6PLUoO_3X93UQD5hbQ@mail.gmail.com/

Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
---
 man2/bpf.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/bpf.2 b/man2/bpf.2
index 2d257eaa6..ee57226ee 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -142,7 +142,7 @@ provided via
 .IR attr ,
 which is a pointer to a union of type
 .I bpf_attr
-(see below).
+(see below). The unused fields and padding must be zeroed out before the call.
 The
 .I size
 argument is the size of the union pointed to by
-- 
2.35.1

