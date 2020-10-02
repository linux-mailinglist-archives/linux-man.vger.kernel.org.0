Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 280CF2812AD
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 14:29:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387717AbgJBM3d (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 08:29:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726090AbgJBM3d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 08:29:33 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B9F6C0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 05:29:33 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id m6so1649056wrn.0
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 05:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/b99LyK05qdoGmlqjCAwTH7D40V2Tos0MFEiUwyRRPM=;
        b=dkrGyrpe/22I21yZXZ8fi1gO3knWNXg616Q2OQWUY2ZOhxkO1USITzMwZaYX0tnnii
         Vg2/5bXSOw1hrMZPZIxe3mQ4XPx6ftKL9cwZJ/8Ai1u51s2UlhMqIFIy+o7oc17zbS9W
         DHmRURLRELjFnohqTnwXL9LeFwtl4AZhDQhzI3stJUkQvIoy9yKZrOFq9bQXTqrICpr7
         CUbQZkNvjD5dNEYb3QsQBg/G3p/datHoEpBHoOS4btNWYGhTqMuWB0RQweMJeGM/1laR
         /8sAc7HGlPyjVo6M64r2ZKE7bxs2j6yzO3d6AP0+EgN4Bnni03t6Icf8qbParaW50UAY
         Il5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/b99LyK05qdoGmlqjCAwTH7D40V2Tos0MFEiUwyRRPM=;
        b=DdxixyG39TaGf39b372HGOO7xTUqT5fb7EgIBSSQZbxaEqq1D7PCgQ9b4cXT2MQ6Kz
         rpLXNDIHQeV9DKt+I+KmbMLZYHFW634AUm6CmxwPLRjOHdpLfOmWR1QV5l21yh0j/Wgg
         cOhOUwOW+R/IlsOo8ZNl/KxORtvSLk14EW1Y+GR4NXjACVFdmja21IHk7/H6G8GDjkWh
         pf0ZfH5W8GW5U+V7iC/Jx35P+jr4p9DYSe/9/fSCzQhjEYZv8M80wLO2LuP1ls6JUHe+
         QAjN13fpKiVefWC3mA3auU47KzkkYP+4RPGaJj5X2dc2+8sWMVZBscu487gciR50MySS
         BpxQ==
X-Gm-Message-State: AOAM533jGzJwwWG3eJ/MWdZXHvi8jwXT1eXpryu087LQogURxozDLOk6
        4JMg4Nzg7QKlvDk2Wz4UyVU=
X-Google-Smtp-Source: ABdhPJxXAqk0+DWhKl5WTa0YFkxbmb9S3jCCRqaH63pNJ2d02bizmESgkNjRNUPccgQCiEt3tFzJ+A==
X-Received: by 2002:a5d:69cd:: with SMTP id s13mr2725286wrw.379.1601641771408;
        Fri, 02 Oct 2020 05:29:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u2sm1829331wre.7.2020.10.02.05.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:29:30 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, fweimer@redhat.com,
        joseph@codesourcery.com, jwakely.gcc@gmail.com,
        szabolcs.nagy@arm.com
Subject: [PATCH v2 2/4] __int128.3: New link to system_data_types(7)
Date:   Fri,  2 Oct 2020 14:28:21 +0200
Message-Id: <20201002122822.24277-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/__int128.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/__int128.3

diff --git a/man3/__int128.3 b/man3/__int128.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/__int128.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

