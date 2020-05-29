Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2830B1E8B19
	for <lists+linux-man@lfdr.de>; Sat, 30 May 2020 00:16:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728379AbgE2WQp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 May 2020 18:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728355AbgE2WQo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 May 2020 18:16:44 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 701A3C03E969
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 15:16:44 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id l10so5632291wrr.10
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 15:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=sGUbS4jCmJbascwXuJ7tehZCvlWm52gr0znhdYRJk88=;
        b=MUXv1bA1b4X1oRxLjIaDTrhvmrfEcr2ZF81gx2WElA4CpjtcochU2Npdt/cRYUgDLQ
         mmJGJWS4UlnkIrUuh8/yI+hXIAWT7g6Xnk3C26fuQQhnBbVDBADuzxH1ShrtSmBAeotY
         xqwzSvXcz/Nl/W/AOYOzHdmV96C/cYKsrc7z9utND8QwKamaS1wwymMXvbv78nEKG5l6
         QZndLE8+oUc6UNjfcwC5DKSBvlR0lk2YHgjZ3QGctJkwFvFrNFtNX3SmGHaYZxbuo4sR
         Zg/DB+aYT5YeWQS1ZQwnAeI3OXdJGWDx21SlQcl6esvQtL7LxWmg2n2/HH1SlxPZa40S
         t/wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=sGUbS4jCmJbascwXuJ7tehZCvlWm52gr0znhdYRJk88=;
        b=oh13rl4jm6BN7g9wfWr2gHEK8Ep3S1KQQQs5bFT+TORUoWB3FI4WJ3FZa4xhNNlyJv
         s6C7clMhW9jhRiqr4jADphCDlKt5wYD9MklJu6YzHVLqOADEtH+YRkPmfOfQzIOMg1jm
         DjGOR+nk4B1XqB16yR6FUZSsvfB+CmTtJsjKz1wf4s24ic3jd1RJWmRfD6Gu6NaP/qNw
         T9D+JG6FMGNdrG8KHitK4N+rpuZLr10bG50BJhRMx/ThBfEO4jmOMY1M53IcFUVMYAT4
         1nIhMD4B5illJGzzGA3RubUnL6Dy+84lzuPoNTB/J+nsoQNI0tB7kAAEH437/M6e9kH8
         HogA==
X-Gm-Message-State: AOAM531uIM4DAqp/MY7jIVnBvuLXkYpwoExpMsRdz2zflaP0Odoxtr2G
        UOrFMca5c8ffC75vZ4TEWnscHhpHgSE=
X-Google-Smtp-Source: ABdhPJzv2M8Mmzs0Xq1JVvp9Vg6Yf6oagdfHX9cdFDNzStgKbM+Ij6YnOnpfSEkZ1pkYpmTFZ5iBLA==
X-Received: by 2002:adf:b34e:: with SMTP id k14mr10715387wrd.109.1590790603182;
        Fri, 29 May 2020 15:16:43 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id u13sm1011233wmm.6.2020.05.29.15.16.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 15:16:42 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: syscall man page
To:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <60a31e2e-d0a5-95f9-54bf-be1d8455fb77@jguk.org>
Date:   Fri, 29 May 2020 23:16:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Good evening

Quoting part of the syscall man page:

RETURN VALUE
        The  return value is defined by the system call being invoked.  In gen‐
        eral, a 0 return value indicates success.  A -1 return value  indicates
        an error, and an error code is stored in errno.


The last sentence doesn't quite sound right in English, and different from other man pages eg closedir. I would propose 
updating it to be :-

"On error, -1 is returned, and errno is set appropriately"

Cheers
Jonny
