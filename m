Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4963A28040A
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 18:35:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732230AbgJAQfW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 12:35:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732016AbgJAQfV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 12:35:21 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B6B1C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 09:35:21 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id s13so3577017wmh.4
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 09:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/b99LyK05qdoGmlqjCAwTH7D40V2Tos0MFEiUwyRRPM=;
        b=c3Q8tOxwQv42t/XtUkzVpAEhugWn/PAAhDsOqGklrrRDyahbyi6M9iicvkVKcf1D7k
         yjsvcb8W1veEfpVLo5tt7UVDGvE8QKvHB9frTVeeSGQD3AItSWgRew/fxsvYwBsJHyCs
         2aVtqURNHXnoT3mHw0OrwhWfcCKfvbpnschu41hpUyo1JsVW4y/QL8G3O/GBhYZ2VFvU
         tqJjIvRCbjW/jt1f7/M6/xUTiY2YjFnThAHV1d9G15kT65ZCb223bSuJy4DJ/KzF3yEW
         QI5eEYutSs3qD3ZdY7c3d0u3gTH4tiUGGW6DTPuJommjOM7MywRjI5SNblcMjYMmdUoW
         P8eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/b99LyK05qdoGmlqjCAwTH7D40V2Tos0MFEiUwyRRPM=;
        b=j08MMvZUDitM/fCEjs80O1eaTylwwXlfQC4mHYOWzC+ckal9wdIfBVgjWCMT5PPaB6
         zc3DPEuHaV1P+4svMnSPWBqTe0mWvca5c2qeqpooXQBNvFbhdO+S8GxGjvrFXUG4BUT0
         3AGctHOCyR/SSqVdgBuwMZ5rAcKJzJO7euCfSi/QRgjlM4t+4HqXRiAQGF+9MBdi2k/s
         5yxzyJRAUkkFh6V3Jfej/ayjzCCHxiY0WO8I2vWV4QtxXD0p9SW8Zjq370cIc+aunAQY
         imWJYHM9k1WeEuQaPuhA4SLh0scW4QkashxyZYHD0vvW89EMdTgg4olAXcRdPPz48tor
         LARA==
X-Gm-Message-State: AOAM5322ubte9l3QaOqGo0efbbwWuHaREI6ogrGjWIGnJYATNya0GCJM
        vzW3IUtuiYs0hLLeXq8ZT78=
X-Google-Smtp-Source: ABdhPJy3RmV/46ID38QZzBPP4/Rvdp7L00OenLhjeySr64lCZ1WDEPIkpXKqKsqxQIJAN4TBXT9wSg==
X-Received: by 2002:a7b:cb04:: with SMTP id u4mr881936wmj.130.1601570120295;
        Thu, 01 Oct 2020 09:35:20 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f14sm10660997wrt.53.2020.10.01.09.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 09:35:19 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH 2/4] __int128.3: New link to system_data_types(7)
Date:   Thu,  1 Oct 2020 18:34:42 +0200
Message-Id: <20201001163443.106933-3-colomar.6.4.3@gmail.com>
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

