Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49F4729AA01
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 11:48:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1418649AbgJ0Krz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 06:47:55 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:39825 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1418646AbgJ0Kru (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 06:47:50 -0400
Received: by mail-wm1-f65.google.com with SMTP id d3so917740wma.4
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 03:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Pb5oDjyKuX4hPBtL/CLDP9YJU9zICkJ7oPENQKaal7Q=;
        b=TN7mlj6zfgxjhqrruggh9RzyN9MXhoUVwoqF04Hah6L5234MCy2UrrsADGeFjliGNC
         jn6GPdfDBr+Jejlh2b0fsBGaSei1COCg5ew5+Cspf7mLYbdCMoprOgLGoFdOIpAfiowD
         Qvw8MF1XS+DPuocHUkUhUou544vzComCMQepoZ37ZAzCZiS1LEqNdvmt35m6Nt3iXW5X
         WGaG0Om2EcgMsB9bNc7Ng2br95T5poxpkQkMVoLUmB8+x92/UL3xc/0lQIRxzCd8UAYU
         V2V2wkUFCNqzlJCTQWh2CzxxlAkwAOk/QdRBP2j4YuEkBOPzSbpohYelLo8yn0GIJwRm
         R6ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Pb5oDjyKuX4hPBtL/CLDP9YJU9zICkJ7oPENQKaal7Q=;
        b=ryNZymRGs2XvwVgw10bAtTh7lbSITxIKPPHeX3fJ1q2oS85kGkCBk8AggZGspSqTai
         lUEKi/Z4iCYUluhr1heThIAEKULKqP8Yh238gUy7O2jToRhfEtqA/raXlywm5mQFl9Wo
         oAKGtb1G0TWcxE32/l6Lj0pTAlYqrA4/vajFcToDRkxIgX1/48JZu/8hpNNlw3FdZnsb
         Sidr1JWHrbheC9GplbemEUBtURhHPkyA6itj4az9n7/WSkRqrFd2zv193k1ujTHVJWAc
         D4fNU14sIhvK8ABZxlZJEuGJSdxK3YJ4aizztJml8BDti+sQyipIgCRyManvIIc8aqk5
         N4dA==
X-Gm-Message-State: AOAM533JD6z0lNrq/J4cWhdg9ODxkFaYaiW+wVYgm4UY9MjVurWTYhM2
        Uk6V3+Nb3Rq7bYW+0R5u+XE=
X-Google-Smtp-Source: ABdhPJyEnjl8yc/oVn48nNfE2KllH9POwg8Sm56HWQlecdjmdeUCZbSafB4R6gQaKRWCgEMMdOH3Vw==
X-Received: by 2002:a1c:1f87:: with SMTP id f129mr2094495wmf.182.1603795668885;
        Tue, 27 Oct 2020 03:47:48 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm1273787wmb.2.2020.10.27.03.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 03:47:48 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] system_data_types: ffix
Date:   Tue, 27 Oct 2020 11:47:37 +0100
Message-Id: <20201027104737.26615-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e98782545..e1e8f01ca 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -775,7 +775,7 @@ See also:
 .TP
 .I pid_t
 .RS
-Include
+Include:
 .IR <sys/types.h> .
 Alternatively,
 .IR <fcntl.h> ,
-- 
2.28.0

