Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3190B43FB45
	for <lists+linux-man@lfdr.de>; Fri, 29 Oct 2021 13:15:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230492AbhJ2LSD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Oct 2021 07:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbhJ2LSC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Oct 2021 07:18:02 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 578A7C061570
        for <linux-man@vger.kernel.org>; Fri, 29 Oct 2021 04:15:34 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id m22so15735765wrb.0
        for <linux-man@vger.kernel.org>; Fri, 29 Oct 2021 04:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=GY/bpKU7TmlU09UnTy7kCbf5RrIbq8Ce58ehNrFtKkc=;
        b=EOHNcaT8GfBHbPW0Y78okyhJvRFQYXXpZW/OgB/0k/nuD9TVJg2xp/PA2F3mZncnPh
         9hNm0+X5c3W9bRdVVKhuFAOB7bJQTWNcTsX8ZwxekkUaazxKJxJaoHKHuPh8u6U08EoB
         C1vPAO+uTsMzPSZzQWWThHLEd/f3rBLr4Hp9prbHmh6MOQudQs26xomsaLqCB0PlS8nn
         4sMXUjcHXPUQLfXgNVL+KpM/TQFMCZoyqn2eh7XN3xL53wWBELA7GOPE203GI1rKLYFV
         bLVV9+tQVWxaaK2lQx2rTRl2dFAOuOcWENRysXgEbvcqIh06YUwQ8F9MIk2haja4OSb2
         debQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=GY/bpKU7TmlU09UnTy7kCbf5RrIbq8Ce58ehNrFtKkc=;
        b=c3LlBfkk3WkvfGlc3Gue/F3g7AubYrjmDCI1FbBezfMh0goDEGePvSbu5bYTL+u7P7
         j3D2w/kDFGXNfRDJfrNHjcD1gCjCQB6fJKiW63BB1KS/A/TdQLeXFiZuGOQ7dlilP05i
         zgRyUd78lIQ+HRHKCKWpfs5ZueEWEH7vssm5xtrBm8d9HIeMgZw0blnfNgKtZAimT8gv
         KmGUsTCul828qlIhpY8qcLweJ6buO0yU4/LJPZ33Rt1rYlbj+vERvtz16JDeUpaXXS3R
         8C1P0sie3IMBX3K1uN36WXRx+D1GLJZj72W9rRnrFJUwKq6TNbYM4l+09BUwgqpuLSRO
         Ipyg==
X-Gm-Message-State: AOAM530am9S4EOnfJzQUxXfK0Kqt1bprqgdg+jrhs01NyRUC3i8onVXf
        2ScuPbhaxTcjcU/l5DilWJqBHLNRuhg=
X-Google-Smtp-Source: ABdhPJx1mfo4EPh9bqP8VnhmP6aEzKUK/l2bEX1SdVtzWTnI4i+jH3R/6/982RW6m5Fk4NLYJMsFeQ==
X-Received: by 2002:a05:6000:15c6:: with SMTP id y6mr13715483wry.210.1635506132906;
        Fri, 29 Oct 2021 04:15:32 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d8sm5623172wrv.80.2021.10.29.04.15.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Oct 2021 04:15:32 -0700 (PDT)
Message-ID: <a0371f24-d8d3-07d9-83a3-00a4bf22c0f5@gmail.com>
Date:   Fri, 29 Oct 2021 13:15:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To:     Libc-alpha <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: Is getpass(3) really obsolete?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

As the manual pages says, SUSv2 marked it as LEGACY, and POSIX doesn't 
have it at all.  The manual page goes further and says "This function is 
obsolete. Do not use it." in its first lines.

But, glibc doesn't seem to have deprecated this function at all.  And it 
seems to be the most portable way to get a password, even if it's not in 
POSIX.

BSDs have readpassphrase(3), but glibc doesn't, so unless you recommend 
using readpassphrase(3) from libbsd, or plan to add it to glibc, I think 
getpass(3) should be the recommended function in Linux, and therefore we 
should remove the hard words against it.

As a real example, git(1) uses getpass(3).
<https://github.com/git/git/blob/master/compat/terminal.c>

What are your thoughts?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
