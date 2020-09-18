Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8076326FB74
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 13:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726064AbgIRL3H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 07:29:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726433AbgIRL2Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 07:28:25 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30EA5C06174A
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 04:28:24 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id b79so5182056wmb.4
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 04:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SU1F/YgzqN7/EtIJUU03dNU87sFSb+ii6V/ktKoU0hI=;
        b=DKJg+JEVF17Laoa0ebgH7aAuGjO4JBjdA2ZmXcdu4IHOqMswhecK+58AfpgrjKfg7y
         FfxxffAs3CzD5j+CIszvrbrILhQFObr9TcYz0sWL6idjHsmUMeLmHr3QRHuTqs1QX10P
         GVB9+SkIwzSm4VYP4UTS4Z9yR2SuZLZc7k3slfZD3h6lSdKWleGTYtYw5vVC6KeHLUPq
         MsTBP81EIG1PI/ERppVjNKqwiKcIrmO1TkQCPMDejhQ/7rgcwajiYJVU2u7zxKxpinu8
         RKdca7ILsQFMf66Aktx8YpAFBxhvIejs+gNSey+y5cnzsehyGu9GMnwLUpHV1/4IZBXD
         ATTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SU1F/YgzqN7/EtIJUU03dNU87sFSb+ii6V/ktKoU0hI=;
        b=rU1xkKVLnhdyMmjjW375wR/Sz++mTIMMZ69/yeGsOaexiCWvdMoOXkLehkGuC1pUJQ
         MiWRo1vj453vj44Vktk28mNsYucDUnc8vKa9GuNyq11Aqj4u3Ii3WnCcFgjEmEPYdWme
         KAGP88uNxp9fWnKf/KXE6xLNwkAyo0NIZ4LEfhPYeCiu8mwDFdmZzU+YyWf9HJuuBpGq
         SkhOQL4xxTqUQjuPOeyANGm4jko0NCFixKX5TpScx3l7D2IQXXp8SuBXfcyIX8D3UNJv
         XDQLif0L1yr3ETcPrhPeW6w9P14t5tzbv7Epse2sHJh41EB7SB7BBlDz73qS8LgOy+Ad
         Ybnw==
X-Gm-Message-State: AOAM533VNbRDjGky8Ry76ei86JGeJFi3k5KIGFlW/fv/FNOu0wgrK3bK
        o+Co1Qvt+cz504QlrCGd3OE=
X-Google-Smtp-Source: ABdhPJzHGPg9xdsqMuBI/JOITg+JDwwhGSIE71XdpkruLN3YgE0DmPqmKrsDw60G1eX7bqbM9m4/+Q==
X-Received: by 2002:a1c:5a86:: with SMTP id o128mr14461741wmb.129.1600428502889;
        Fri, 18 Sep 2020 04:28:22 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s26sm4504962wmh.44.2020.09.18.04.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 04:28:22 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 0/2] Document size_t
Date:   Fri, 18 Sep 2020 13:27:54 +0200
Message-Id: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I documented size_t.

There is a minor thing with this patch:
It references to a not yet documented type: ptrdiff_t
It's just that I'm going to document it next...

In the See also, I just put a few important pages.
Maybe you want to include a few more.

Thanks,

Alex


Alejandro Colomar (2):
  system_data_types.7: Document size_t
  size_t.3: New link to new documented type in system_data_types(7)

 man3/size_t.3            |   1 +
 man7/system_data_types.7 | 103 +++++++++++++++++++++++++++++++++++++--
 2 files changed, 100 insertions(+), 4 deletions(-)
 create mode 100644 man3/size_t.3

-- 
2.28.0

