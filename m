Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F32B2D80E2
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 22:17:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390767AbgLKVP2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 16:15:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390624AbgLKVPQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 16:15:16 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 474F0C0613D6
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 13:14:35 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id k10so8654166wmi.3
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 13:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=RjlXhm4ex+WBIUQLUgx50DZXMZXUnEeiQArxOlhEh8w=;
        b=Ryjtq/GIsbIPTogQBbWr+pFq0X9pb816UpESr8c5m0ICfgANrAMFgIU2OAqM+zhYtK
         HKwiDUANoAQFr7BM5yPKtPq4U1lfWrSnsMvInm8aULhI7vv0AiMFLBwJ2bBedB4Q1fyW
         02kFOO73jQysMiSvwMK6mntLte44BYHX3UOtoGuyoiX9sXV4KuQMlHBBtmnX9vDiCalU
         rgjgekZ6Cff6vVLnyNImZZjsytwfdbZjS5JkVf9SGr+coX9Jffsq/yH/dMVksDGOVXlG
         sgR0CqmwZe2KEP9h6cbzDswmfjGMK9qYyxzSVEN4n5OpvQ1oL9SYsUAKOLE928VFqvkC
         XtBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=RjlXhm4ex+WBIUQLUgx50DZXMZXUnEeiQArxOlhEh8w=;
        b=VhoEp7DlI47v23zvzY4r8jTR2Hyzm1M9A5Wx1u9WS89pBiiALPeLZQe5qmJCrC4raE
         FPUsoYlqcwYMYf16S0neAWDgXbnzp/W6/GhQ3YcYbwlAwRYwJpDRet6+zH7JGSpO690R
         U1OElSE1Igh4S67OvhcubZqFGbS/oFpSrBrZRSZLB8DrbQgw+Yk0vDVBSdtFabSXeJjw
         5bKF752K+1WtzjfSC7Bp/118EdD9IxbsdNZ2BEvqXh6uAI8AzFfBbPkDUeCCtQagPfzT
         wmUMbZExIbxmjm/W8fn1QNwdXASIbCnP1NGLYsGc6pd78n8J7uNVwZVZFVFp01DUC7if
         zxqg==
X-Gm-Message-State: AOAM5339I9tzeOnFUoPK/3msGUYujoYEaS1OcTsgtXVNUJc/ITqBlLVE
        B3PnUThOxQkptxifUlaWQe0Ib5Jo1FQ=
X-Google-Smtp-Source: ABdhPJxDlky+SuTk1QWenJWJ1kmzsEP28hLvod09ISzY7P67r7g/IQrcjTztf0jHHnPwOAzlF8umZQ==
X-Received: by 2002:a1c:5447:: with SMTP id p7mr15489223wmi.116.1607721274064;
        Fri, 11 Dec 2020 13:14:34 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id t62sm11131881wmb.29.2020.12.11.13.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 13:14:33 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Right margin for code (SYNOPSIS, EXAMPLES, ...)
Message-ID: <1f731252-395b-e8bd-ed5d-cc3b3eeea948@gmail.com>
Date:   Fri, 11 Dec 2020 22:14:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

For code, for example function prototypes in SYNOPSIS, do you have a
preferred right margin? 80? 72?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
