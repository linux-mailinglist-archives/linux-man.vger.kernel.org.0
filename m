Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35B023DA1A3
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 12:58:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232135AbhG2K6H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 06:58:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231815AbhG2K6G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 06:58:06 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCD70C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 03:58:02 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id n28-20020a05600c3b9cb02902552e60df56so3708578wms.0
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 03:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=UnaW6Y0baj5Z80xORg1+nUmySEzi8EpfQW5kaHd9OeU=;
        b=qDZm5ULZN3Tvot/2/DXorA8ugEzItxoAz1fZXZIz/GpU1VCMZxlN/eFXcR27cYwvBT
         2r4+z3j/G4amKHD4yAkIHK3gNPRbWzWzSwt+rzVWbPPnVPpsXWBlW0jb09Qv/6hWkyHz
         Tg5U9QmRbreJ+UEGd6kv5UUXws+NRfsLQrWjsAg46uXE8JZFEts13UsVd36gzlIEW9Sv
         i2gZFTlTq1s9zezmDISQoEV7GPNKN0hWPb8FLPrneNfsug8EALuxgJJ//vZTBnjivG1I
         aiw9z3it2rJcfpLhXoUfyI3uYUWDPnUuFsnx6TrktWyVPqlqOoTbD2jfbllgqk5YbUiN
         O6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=UnaW6Y0baj5Z80xORg1+nUmySEzi8EpfQW5kaHd9OeU=;
        b=tTLj0TGh+OcnSB4zVgR/aDYm4VmwQJ/1TR0+Bo8GIN/0sU+lOnC07w5YFgMOpYxIhV
         8EzUGwdaq2xBS+53sqgib+2U7yd+rj0UJYXPnXfVcSPZjLU6UqaeFIP+1KS1Ye9mmpRh
         lDJ34g3vIUeVhOKfjE91ILhWxcurxrEF+mAq/LZvzXxB9IJm5aQkCav7ffjFVPze63cu
         5ovBkh3JQUe6/OcmALpO4zYSJ7Z9ACD6GTVmM+o4TnhJ57O1z/Guw2svq4vbrEhJezux
         eP9kUHTSkFBNogKpyJ4gQY0fXlhrvYtSXH4SHWOUJByRutyc8nNsiRGyAFaCW6jTxTyH
         rAxA==
X-Gm-Message-State: AOAM532IoO/34XQMF1GDSX03g3RmTnbuNOPmkAm/44HWElGD8il3TPF8
        TBLFFUYyydPb/05Z/OJzMLApBce4pd9h2w==
X-Google-Smtp-Source: ABdhPJzcZuxh9t3vGSoskmLH0xU22my8Vap6VOtatH3COABfueje+1m8wA3d9bQphsQf+ia1xHPIdw==
X-Received: by 2002:a1c:a187:: with SMTP id k129mr4145138wme.17.1627556281379;
        Thu, 29 Jul 2021 03:58:01 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id i5sm2970759wrw.13.2021.07.29.03.58.00
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 03:58:00 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: wcslen and wcsnlen wchar_t
To:     linux-man <linux-man@vger.kernel.org>
Message-ID: <99a33792-2c7a-949b-8ef9-7deb8f5a5fd0@jguk.org>
Date:   Thu, 29 Jul 2021 11:58:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello

https://man7.org/linux/man-pages/man3/wcslen.3.html

My understanding is these pages document glibc. wchar_t is 32bit, (even on my 64bit computer).
So that means it's UTF32LE as I understand it. Could the man page clarify the bit width as 32bit? and that the endianness (unless a big-endian glibc has it the other way)


There's also the others wcscpy
https://man7.org/linux/man-pages/man3/wcscpy.3.html
^ Could this link in SEE ALSO to wcsncpy ?


Kind regards
Jonny
