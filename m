Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 947AA31F1DE
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 22:56:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbhBRVz4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 16:55:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbhBRVz4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 16:55:56 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF9E1C061786
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:55:15 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id v62so5217824wmg.4
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=ELO2BZ7GDsDLFalGqv1f76S6BmN0FS5fwUz4Fl5oATY=;
        b=fdKrZy6LPycpftwXPd337DMUGw+uw4XFS0At5qwVabTaahSvQD2ZR1aTbWtTer5Mnn
         nyyeCpmPRzZCt7HZh28a4Q+7ArkKUmEwpdEg+6q9yhFZkFO5D+mBoHnt47uheh49IPuS
         B7A09YcH456PeX/hZ9aume94zK1bpqQsjrt1Q8+p0rHNe/D1CyVuWvTxsof6MX7NkhG+
         FIvV/pDIk2iSsi3x1PbR7CpZo4XHxGr3JIs0uu6Catv2rXU/eyk6W2bfvEwQb537grJ0
         lPSfChHNmFom7Gejs0AOhfjgd7DziysiJft7T0EU2NCguaz52ZXH0DWUg8Mm9JcoHBL1
         43GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=ELO2BZ7GDsDLFalGqv1f76S6BmN0FS5fwUz4Fl5oATY=;
        b=mjXX6QbWXWriBlv6aY4vzsTV19iRKVUcl3jSSLYB1yW4hDaUCo60CFcB8Cqna6HD8N
         sfVHE45lt8unb2pO+W+t/551NdJ/xrv8tetgBcc+oO9RnXu2eihLZ81NYgMfTZSVgaNG
         Mr/mZPWiEQ6jXMXsuOQspJTmPMSWUdHM3sFTAv5sptNwOpKi+66Wvf/ioOz95MrLvRr7
         VDt8oIshQ/DHBGtn4XP3ZVeBOla0AwPYW1CLIAO8iHsZwTr2SREn3ZrJh33YcgCqrL1/
         V0E2t4hsu/MVOb1XByoME2MvJuPJpU7sQd6FlOMO0RqMPYAhm5s8LhGc/KPPlmsZPvCJ
         w2VQ==
X-Gm-Message-State: AOAM532+WX6RHk011oRAHF5I0wLwXL8QJHrn24YbcBpR69edHxKt2BFT
        uqXjjlIcAFMyHpiFvOIj+gw=
X-Google-Smtp-Source: ABdhPJw19u/wjpY5miC+VRkePrFyxgmqSFeION6RifOKyCbVp26euz3fswvK05VlrVSUyLgxNBP7yA==
X-Received: by 2002:a1c:7d53:: with SMTP id y80mr5386467wmc.187.1613685314608;
        Thu, 18 Feb 2021 13:55:14 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id q21sm11837539wmj.18.2021.02.18.13.55.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Feb 2021 13:55:14 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: error.3: What happens if status = 0
Message-ID: <089a65d2-3dec-b9c1-8c8d-dddcd28f756b@gmail.com>
Date:   Thu, 18 Feb 2021 22:55:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I think it's not quite clear what happens when status = 0; for 
error[_at_line](3) from the text of the manual page.  From the glibc 
documentation[1], it seems that error(0, ...) is similar to warn(...), 
isn't it?

Thanks,

Alex

[1]: 
<https://www.gnu.org/software/libc/manual/html_node/Error-Messages.html#Error-Messages>

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
