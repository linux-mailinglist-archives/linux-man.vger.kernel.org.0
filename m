Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8978D75B31E
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 17:39:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232697AbjGTPjy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 11:39:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232696AbjGTPjk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 11:39:40 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C60F93C30
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 08:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689867492;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=WGV39ZynUSSc+PTc+VOWDsyBygUS+6xS09OjPxvuyGI=;
        b=Of0cmzg/bCFOKiCS6ID/Bn6EM28qhwEc38wY7NRWNfF5Ff8fZd9PHtVvCZZZMg/VlYJv8a
        8wARkvImtbIjpY2UpknxKaQ72A/zrsFqpfoxAZboDInsfVzceKjIRmKtfKZ8URMbDtuTR+
        AOLNP3lvbKw/KyxIYdHkkUDU+b8/ZuU=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-206-uBLuXxq-N7eQ9yaZ5W4TyA-1; Thu, 20 Jul 2023 11:38:04 -0400
X-MC-Unique: uBLuXxq-N7eQ9yaZ5W4TyA-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-99388334de6so68952066b.0
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 08:38:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689867483; x=1690472283;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WGV39ZynUSSc+PTc+VOWDsyBygUS+6xS09OjPxvuyGI=;
        b=VMEZhF1YMt3LXpLdHru5rFphWKz+w8wYHRmPXByq75AKwIVHNHlICyjBUzLAuSuHvq
         TG8tSFt6TcgNDj6LcuUcSfe60xR5V1CXn2bwtjGy+Jc8jCoy5Y4nxe9jcibZdEP0Z1xk
         o+LTuGFIIV7o0D7WGmATvIlAR9RVD8leWz6R/eN66R/U57QM2VvuWl+wXtmvkp68fpsi
         7PBqfQOU0GeYaz/4vr3kjVrVmDiGwjyU36q0YPYWZisGhZB8z+qYgiUimV0p5ynPWhDe
         MsGos7UTP2ial+Ky4CQuRf3vXuiHz2ebjcykGhhl/PGpD5RbP0sIFzg9a9blyNGIzZEB
         Rh3w==
X-Gm-Message-State: ABy/qLb0g+lHAH+KwVi4GJSACWexAzUWqwMF2fz8Ut8tbE70HL/MxrbO
        HGXqmN8lQ1dD8xmxoz6Ep456wm9YweH7vNsGxBPS4U5NUjK3QhT8etbbp8lwuGjnQ8QxHAj7E7h
        UV8p8ZSvlWirEaqAqfwPB
X-Received: by 2002:aa7:d708:0:b0:51e:1927:6ade with SMTP id t8-20020aa7d708000000b0051e19276ademr5413420edq.11.1689867483273;
        Thu, 20 Jul 2023 08:38:03 -0700 (PDT)
X-Google-Smtp-Source: APBJJlEbSwFyLwGNeiIOC0NgNcXGf5knLLj1FNlhPvmTlZqHGOb5bUyqn8627hNsgzBRepkXUiinEQ==
X-Received: by 2002:aa7:d708:0:b0:51e:1927:6ade with SMTP id t8-20020aa7d708000000b0051e19276ademr5413408edq.11.1689867483031;
        Thu, 20 Jul 2023 08:38:03 -0700 (PDT)
Received: from localhost.localdomain (ip-86-49-233-183.bb.vodafone.cz. [86.49.233.183])
        by smtp.gmail.com with ESMTPSA id n16-20020aa7c690000000b00521ab0cda8fsm899794edq.27.2023.07.20.08.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 08:38:02 -0700 (PDT)
From:   =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: [PATCH v4] abort: clarify consequences of calling abort
Date:   Thu, 20 Jul 2023 17:38:01 +0200
Message-ID: <5c8c0d88151e70a69c8613ad87c4441472d3ad95.1689867426.git.tgolembi@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that atexit/on_exit are not called because those are called only
on normal process termination (as documented on their respective manual
pages).

Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
---
 man3/abort.3 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man3/abort.3 b/man3/abort.3
index c63eace5e..8e1554eae 100644
--- a/man3/abort.3
+++ b/man3/abort.3
@@ -47,6 +47,10 @@ function will still terminate the process.
 It does this by restoring the default disposition for
 .B SIGABRT
 and then raising the signal for a second time.
+.PP
+As with other cases of abnormal termination the functions registered with
+.BR atexit "(3) and " on_exit (3)
+are not called.
 .SH RETURN VALUE
 The
 .BR abort ()
-- 
2.41.0

