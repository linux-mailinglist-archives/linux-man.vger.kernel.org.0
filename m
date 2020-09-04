Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 805C025DABE
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 15:57:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730577AbgIDN5y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 09:57:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730633AbgIDNuy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 09:50:54 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DCB4C061245
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 06:50:54 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id m6so6868218wrn.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 06:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vBwl74nCjzwA/3YTLwFOSK8NeNKIZyzmigeuUH5zE/M=;
        b=mIOwSx9LrtoMPDnr0eK/tdGBTxs1EMGcPIZBzxe3bblG7+nwaji7DY2LDBCiUG05BA
         XSICYx2e5hILIBDIN0lW5NZ+h4xxj43S4ZRWUomo87Box2xt/VZDdPVNQsiqYcv6oQzc
         Wt7JZFCovfh+k5lAfn3++Et1mdKWS0jWNi8MZjVlhGlKI9rXmR6iKQkJg79FQxkZzfBa
         pV5B0JIME/A9vRRdOwH7N7juUbfcufkIlxzWV19Ysf3oVHB4+tj7tmryPLan1BrXxwrq
         5XuVtuz6nwSSyzvLX3HQCN5JulJ10U3HOolbuWWiTfh4mpO36VA6daTsEZA54Txrv5k/
         pU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vBwl74nCjzwA/3YTLwFOSK8NeNKIZyzmigeuUH5zE/M=;
        b=nz+O77vtlOVTjTuPLA8TecIFEphuOlCuIqNhJypE8B9td6M18iS97iCLmLv/Im+/49
         PCvJohDepdyXvX7Ua6YzQZgfgqBKjpc5Ptmv8dAoiBIplEP0OQAx1M19chuDn2ZyvXFG
         14w9IBNODbqLqM6aaCWNKHf1YTgvbE0/VTP0Mri2t3i7rlJv5FkZCU9rAxKyMRC780Gb
         lpgFdVirh6IiZfLwzSHIPkdjfti9tgYgiwTcNDpYwHTOkG7c7Nl+NYwZq5d6N5JjmDvA
         EbyyLfwcvAR+9QUMQeuKxdaRmviePigKfR7eIIOR2vXUd2QCfYOPcv+Kd2hUc4GI24ag
         1OlA==
X-Gm-Message-State: AOAM532qv1jw8o62v09FbFBkdsQNjoaSCHEt4LGLtZUnDP7TTRlL1wWQ
        vXOjEObVHESW4RMoA0oGl6Y=
X-Google-Smtp-Source: ABdhPJyIFMz4HErv1dtBiGn+kg00Y1arInJ5dxeqccji88RGzFK/LFF0t6MK/aW/7DRRU+3+cJGsew==
X-Received: by 2002:adf:dfc3:: with SMTP id q3mr7437177wrn.238.1599227452480;
        Fri, 04 Sep 2020 06:50:52 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id i26sm12020377wmb.17.2020.09.04.06.50.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 06:50:51 -0700 (PDT)
Subject: [PATCH (2) 13/34] cmsg.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
Message-ID: <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
Date:   Fri, 4 Sep 2020 15:50:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From ba70b1e8addad4ef9f2a490d2069b112d09ba9f1 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:44:41 +0200
Subject: [PATCH 13/34] cmsg.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/cmsg.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/cmsg.3 b/man3/cmsg.3
index 99ee950f9..3d6288901 100644
--- a/man3/cmsg.3
+++ b/man3/cmsg.3
@@ -203,7 +203,7 @@ for (cmsg = CMSG_FIRSTHDR(&msgh); cmsg != NULL;
         cmsg = CMSG_NXTHDR(&msgh, cmsg)) {
     if (cmsg\->cmsg_level == IPPROTO_IP
             && cmsg\->cmsg_type == IP_TTL) {
-        memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(int));
+        memcpy(&receive_ttl, CMSG_DATA(cmsg), sizeof(received_ttl));
         break;
     }
 }
-- 
2.28.0
