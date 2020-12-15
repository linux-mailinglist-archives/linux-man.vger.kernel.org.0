Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5D492DB21B
	for <lists+linux-man@lfdr.de>; Tue, 15 Dec 2020 18:03:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbgLORCP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 12:02:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728853AbgLORCJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 12:02:09 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 851CAC06179C;
        Tue, 15 Dec 2020 09:01:28 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id w5so16844424wrm.11;
        Tue, 15 Dec 2020 09:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=6+fxsHFgSx+IM6xhU+y8t26uFC5ICSSzXCYby0B3h5U=;
        b=DANblccvTpgbuSB+n3503apV1OSElbtkF7PmQZbw4z/geCtzhjkYIgjVR9SDwpbXi6
         oj/QzPEkW7bTs5vHkUXxJZNBoIkhf2HvYndEAg9fBIm+YGxTyPCJh8PzQPEcdSlKEoK1
         jqPZUzvvP74R8smUSSrfjNsCaDxvU+AUM0rgQmr8VdjSqBJRzCllfaWEMo83UjBWe3N+
         +QwLuzZPddXGj1++7JLQtbI6v0PcvdmwMiDwGY4T6m1car366LswPy1wSpNkZkNLA4FJ
         LQlpeN+siQuJ2Aqh7gb7pEavX5Yq+juf/HkK3iuU8kqApwoJIVMmAxDbCO1jRCmsboTM
         jCQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=6+fxsHFgSx+IM6xhU+y8t26uFC5ICSSzXCYby0B3h5U=;
        b=Z8cq95rMb33zVZafjwd7awOhHNav1ZiR3a1/wh7G4EhlbDTZZ05rll5CWWblNAGWnH
         tAO07oXE+sFkeyJJ+q24QVVJR1CnqcnWI+sqKL/qY+fU9em0GJV+zH+sABHs+7u+VmtP
         RnZSXza8gsc+VkEmbPv9ssImEpoKDSJQfs9yNPKiIIvmFKJdqCbRTjJLIngfSOaGUz8i
         MZYlljHPNaObkPOCASx3CwekuBgaGnC/oNkU3ezjPcVgpWmxnVpU6MekPTqXhqMkx4xp
         I6ovM9KOS5FIpYFl1B1teo8uJ7f+PamDzMM8Sjjdq97M1t23tAdSuvgNrTYPK9PMJvvr
         +rXg==
X-Gm-Message-State: AOAM531xt95ejDYF1zZK5vvtX7hmw5E+VCeF6Mh4WaYom4kuwBBObGiO
        YFUhF/GFQUuqFglQjOox8f/Irng5F8Y=
X-Google-Smtp-Source: ABdhPJwSCMAC6PbaCbodENPxp4L/4NBjf80I92gDUGteecddCx45uZ8gkxeGP+ojRCjoYZ2gK4FL7A==
X-Received: by 2002:adf:9e4c:: with SMTP id v12mr3620110wre.22.1608051687263;
        Tue, 15 Dec 2020 09:01:27 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z2sm38489203wml.23.2020.12.15.09.01.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 09:01:26 -0800 (PST)
To:     Pavel Emelyanov <xemul@openvz.org>,
        Oleg Nesterov <oleg@tv-sign.ru>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kees Cook <keescook@chromium.org>, Jann Horn <jann@thejh.net>
Cc:     Ted Estes <ted@softwarecrafters.com>,
        linux-man <linux-man@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: [Bug 210655] ptrace.2: documentation is incorrect about access
 checking threads in same thread group
Message-ID: <feef4f9a-4ed8-8a2e-d330-88e7f516faae@gmail.com>
Date:   Tue, 15 Dec 2020 18:01:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

There's a bug report: https://bugzilla.kernel.org/show_bug.cgi?id=210655

[[
Under "Ptrace access mode checking", the documentation states:
  "1. If the calling thread and the target thread are in the same thread
group, access is always allowed."

This is incorrect. A thread may never attach to another in the same group.

Reference, ptrace_attach()
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/ptrace.c?h=v5.9.14#n380
]]

I just wanted to make sure that it is a bug in the manual page, and not
in the implementation.


Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
