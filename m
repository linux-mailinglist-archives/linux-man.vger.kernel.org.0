Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AFA43204B8
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 10:31:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229630AbhBTJbC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 04:31:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbhBTJbB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 04:31:01 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 350BCC061786
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 01:30:20 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id n4so13044550wrx.1
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 01:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:references:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tjz4xss1+0ZI7pIzHHJ7TNuBHYheu5hpgEGaaPVJhRg=;
        b=aE/B1nVa2fqUGYiL+xx1M8PygPNKnL2sLsiOW0LDwoY1fm9hvDeNIX5mvuc25R67cp
         rlcuVaQw52kb6lwhdeaSp9/LqUEGBK/OpfqF+WwqXlwarGegaF1YbmVrJoT5GSac8Ewv
         yORhIYgSWIy/srb/v2eOH+rzPx+Y3OcdYOZAkDQBsgfn9RMgftih0rPqO6EIkYBN+4Zy
         ybuEm6DC79HonLuwOFT2vscuQOssVI86CFNK4ljZI5eWRpKmsrTY3vOwPNmywoTv9PiH
         ZETJtHaabPZs9B9L+xggUDEspTIyqgvnSuA1TiymXq+FXIi/+etdepRb1NgQOWNpn9Zr
         aX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:references:to:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tjz4xss1+0ZI7pIzHHJ7TNuBHYheu5hpgEGaaPVJhRg=;
        b=tV3psawGZF9qxD2QYTkwDOToMi/Tw8ld0QcMfamiyr4Gh79acUfihmdbIDPZ2kfjWe
         pSNQZ2g1vUdHdSAY4/lCLbT9MyiNTvBy4+P1oytMXg5VpkGKpCeieYNqfB+jYr/a13gd
         Xz3fnv0bjJWe/1CEtKHIzKy+BR9Lz8mxOFSA1+CbVw9WuCjhwW8eWW2mg2aOynj210q2
         qRuVQQE+Y0xNnJzh+sfVF9d0fWsPTxtjLIiBraTMGIb33kEqVd17Rs2LqOhyv2t/w82b
         Z6rS5yMt7HKOpForPeHbBBzpaNVxIL1u/pthSIWbVQOh1AhL8ZiJ3In/afKWlMzJ9G/H
         UJ4g==
X-Gm-Message-State: AOAM531FOXDGHmvW8Ij2ky3Nqb8tVCYSUw0cVKsSwhPPjioK9fHeLzVW
        SCzp6znjrSa/v51kdadDKDPEAUDQtD6rYw==
X-Google-Smtp-Source: ABdhPJzct3ImEpIMhHiGJVs5MLBeao6ZbMb0ExG5kghHDNHzhEzvneqRHUfozJ18qAr+XAQOZord4A==
X-Received: by 2002:a5d:4f12:: with SMTP id c18mr10407088wru.90.1613813418999;
        Sat, 20 Feb 2021 01:30:18 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c12sm6203726wru.71.2021.02.20.01.30.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 01:30:18 -0800 (PST)
Subject: Fwd: exit: Bug reporting
References: <268231613796665@mail.yandex.ru>
To:     Dave Chupreev <cdn.dev@yandex.ru>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
X-Forwarded-Message-Id: <268231613796665@mail.yandex.ru>
Message-ID: <4c169a8f-4368-3423-1af1-e7f6ba7df8b9@gmail.com>
Date:   Sat, 20 Feb 2021 10:30:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <268231613796665@mail.yandex.ru>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I'll forward these 2 mails to the mailing list (and Michael (mtk) too; 
maybe he can correct me).

I'll answer in a reply to this email.


-------- Forwarded Message --------
Subject: 	Bug reporting
Date: 	Sat, 20 Feb 2021 08:09:50 +0300
From: 	Dave Chupreev <cdn.dev@yandex.ru>
To: 	alx.manpages@gmail.com <alx.manpages@gmail.com>



Hello, Alejandro.

Pages this <https://man7.org/linux/man-pages/dir_section_2.html> and 
this <https://man7.org/linux/man-pages/man2/syscalls.2.html> have 
different count of 'exit' calls, 4 and 2 respectively.

According to these pages 
(<https://github.com/torvalds/linux/blob/v5.11/arch/x86/entry/syscalls/syscall_32.tbl>, 
<https://github.com/torvalds/linux/blob/v5.11/arch/x86/entry/syscalls/syscall_64.tbl>), 
there are only 2 system calls containing 'exit' - *exit* and 
*exit_group*.  So it seems '_Exit' and '_exit' are redundant here 
<https://man7.org/linux/man-pages/dir_section_2.html>. Please correct me 
if I am wrong.

Thanks in advance!

-------- Forwarded Message --------
Subject: 	Bug reporting
Date: 	Sat, 20 Feb 2021 08:18:56 +0300
From: 	Dave Chupreev <cdn.dev@yandex.ru>
To: 	alx.manpages@gmail.com <alx.manpages@gmail.com>



Hello, Alejandro.

Entry exit(2) on this 
<https://man7.org/linux/man-pages/dir_section_2.html> page directs to 
page with _exit(2) in the header.
According to these pages 
(<https://github.com/torvalds/linux/blob/v5.11/arch/x86/entry/syscalls/syscall_32.tbl>, 
<https://github.com/torvalds/linux/blob/v5.11/arch/x86/entry/syscalls/syscall_64.tbl>), 
system call itself is called *exit* so it would be nice to fix the 
header to avoid the confusion. Please correct me if I am wrong.

Thanks in advance!
