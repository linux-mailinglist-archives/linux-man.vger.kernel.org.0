Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E11D032D5AF
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 15:52:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232582AbhCDOwE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 09:52:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232658AbhCDOvp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 09:51:45 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A614C061756
        for <linux-man@vger.kernel.org>; Thu,  4 Mar 2021 06:51:04 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id d11so27949588wrj.7
        for <linux-man@vger.kernel.org>; Thu, 04 Mar 2021 06:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=+0ooZjBkv1kuN/8omuq8zIAjZSKxxov3yghvJM6VCUk=;
        b=n6JDRsahDU9bLC2zpaNJ4VWhfvASbpq7AF/defbSqB+PXRmthrPnwcBhzl2Z1N2X6Q
         b7BwGDBFTpOcO7/oUsJlAlE95mut0KNc+0lGBVUOLXAquR2zMFLsvNAOPqvmmy9YA1wA
         fTF0Uw4OshwbXpI1cHhFUN0+4QEELcIKqL25rtaG7YRn40D4z4EX4FkwNbzL1/a61JXB
         DN3dddCmkiDT8CSRKhChz2iW8B7m2iXDWaInAyeUIieAbzakWu/lvCghwEeNThv0oXKu
         AT+5ZwSq6nvD74HmB1r2ynZ+5NeV1GLF4sXN2+yt6q8vjNbQMyZoh+rK2SxozXJ/e7CH
         ZshA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=+0ooZjBkv1kuN/8omuq8zIAjZSKxxov3yghvJM6VCUk=;
        b=q5AESeFmxd/rJJEO4tLafyQPcNe4pXo21IfNa2SwtEhIYu/p4Hxp0FnMg4jKyFMW+c
         h6GlvlJ6l1gnfbpeznhnbJqQ7wkSN8CViMoowQCL2/yZ/bo7RnAp8sNJPRy9YCQGYwuB
         m5td/d/bsqh/FR9TXeKuAOXZcTyvk/08qSWty2Oug6Urh4dR+dPsn+oQr4u2fV+GUlQI
         szCsApTam9B4kLocNpFQ+qE9C7R674MSB4IuWOIjiqAJ1maJbIbQ/VPNqPY+ZKWAb086
         xI/O1gXV+5469CqNRZmg2+jeeE74NPcKRxRABLTX44A9TvTcn6pw2z1IlBFHbaxKH59n
         ofbw==
X-Gm-Message-State: AOAM531TjhebQ2mbC53mzjMqVmN/3/urIz59InUgAeb0ynxI4aOU7UHC
        M1ogUnmgigK/7Bf/8KaPW+4mcEpJ9zkY1A==
X-Google-Smtp-Source: ABdhPJyQZ1rk6KQgQ9B5fNsfGgujNRWAEN6Mr2feSsv8TQiu0q9kvtCGUHMOOjAPf4fw8iZyGNYsoQ==
X-Received: by 2002:a05:6000:181:: with SMTP id p1mr4373431wrx.374.1614869461078;
        Thu, 04 Mar 2021 06:51:01 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id s124sm9913789wms.40.2021.03.04.06.51.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 06:51:00 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Consistent parameter names
Message-ID: <548683d1-4a39-5f1f-2459-36c95844a0a8@gmail.com>
Date:   Thu, 4 Mar 2021 15:50:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

I found different terms for parameters that refer to a same thing
in different functions (usually a '[const] char *'):
	 - filename
	 - file
	 - path
	 - pathname
	 - Maybe others; I don't know

For 'FILE *' we have more or less the same,
although this one is much more consistent (>90% use 'stream'):
	 - stream
	 - streamp
	 - s
	 - fp
	 - file
	 - filehandle
	 - A few others in specific cases

Also for strings, there are
	- s
	- str
	- string
	- maybe others

There are probably other cases with the same problem.
I think these parameters should have a more consistent naming.
But which names should we use?

I tend to use short names such as fname, fd, s, ...
but I don't know if you may prefer longer names for documentation purposes.

What would you do about it?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
