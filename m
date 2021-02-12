Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB93231A1AC
	for <lists+linux-man@lfdr.de>; Fri, 12 Feb 2021 16:30:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbhBLP3Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Feb 2021 10:29:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229647AbhBLP3V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Feb 2021 10:29:21 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23673C061756
        for <linux-man@vger.kernel.org>; Fri, 12 Feb 2021 07:28:41 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id r21so8478649wrr.9
        for <linux-man@vger.kernel.org>; Fri, 12 Feb 2021 07:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=KQn3vSKL/HXp2Nw6vQ2walrCiYLsppnVKxvDJmWiTzs=;
        b=gqeWQX/2+bKu9laRVMO3cEhVxKDxV0OqBPyZAsVGelN5FJ2A1HGeBy0IgY+MXBRlfd
         IpBckqM6Th+Tj8DHwUaLTthmoQwOIt5i62ra9TVj2iecr1ZxM3AHjoPNyQm5fE4bQTbG
         ScU3duYrZh4K8enZa1hDPE/ObPStgC/l4mFX/ejVmPVBFhuemkqy+ctwQvUtcKQNDuxS
         o5BDumjcGgBEOYPC0/pzDgPIjkoMgHJsw04IdU7b10Jy/vsF2mbiEe/VRcCPfilP0T2N
         LSW4zzoB0MPaJSkIj6h3sKgEpfpesSqMOgmz5Urxy2iaaXLbZ0F/ld15/4PI+QvgGKiu
         YHZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=KQn3vSKL/HXp2Nw6vQ2walrCiYLsppnVKxvDJmWiTzs=;
        b=QRMzfoCRunZXV+aeCmljOC9j3/seKvOrYFrewEVeTVvu01LayvcKDhMPAwmXXpuW7F
         tIr4zop4/beCu0/InYDnTqqctHDDRAv5ERFBbpem2b6Z8EJ39B2I0z7A86FfZUf9OLdZ
         tKMISiOUkJ4gxOfXwuxJB+BI/oy6F0a0zgVBi9V/S4LcrZ/ubMhWAkDIiPNBeDckNVgn
         WCSmodqvARyZAQDimebGcMPhI0cofAt57uA3uw30k9o80If2mYLgXjx3XCp0LJXyELiu
         FFqAG2NPreNtJxht8tvinJXWUEhjiMLmkvGm/ketuKB/6SgzIID5uJKVeQHf13N7b8yj
         GWDA==
X-Gm-Message-State: AOAM532X5SEpbxn8m0t1wSaJwQ9TCH62HZ3QuzKIZn/D3/9zIdYK5enq
        pKRnr+3diaqTQ1VYgOHugra4eRt0y/I=
X-Google-Smtp-Source: ABdhPJz8gTdgQ8BNVpuUFQn6BAZPd9XzpAuWNuV9tp+2BAV6gj/WX2LANnTqDp/r/j6sfsV6LV8c6g==
X-Received: by 2002:adf:92c4:: with SMTP id 62mr4072707wrn.245.1613143719900;
        Fri, 12 Feb 2021 07:28:39 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id j7sm11829062wrp.72.2021.02.12.07.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Feb 2021 07:28:39 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: sigprocmask.2: s/kernel_sigset_t/sigset_t/
Message-ID: <cd449862-373b-c058-6abf-fd4b4efc8acf@gmail.com>
Date:   Fri, 12 Feb 2021 16:28:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

AFAICT, the syscalls [rt_]sigprocmask use '[old_]sigset_t' (there's the
'__user' modifier too), so 'kernel_' should be removed from the types,
shouldn't it?

Thanks,

Alex

[[
SYNOPSIS
       #include <signal.h>

       /* Prototype for the glibc wrapper function */
       int sigprocmask(int how, const sigset_t *restrict set,
                       sigset_t *restrict oldset);

       /* Prototype for the underlying system call */
       int rt_sigprocmask(int how, const kernel_sigset_t *set,
                       kernel_sigset_t *oldset, size_t sigsetsize);

       /* Prototype for the legacy system call (deprecated) */
       int sigprocmask(int how, const old_kernel_sigset_t *set,
                       old_kernel_sigset_t *oldset);

   Feature  Test  Macro   Requirements   for   glibc   (see   fea‐
   ture_test_macros(7)):

       sigprocmask():
           _POSIX_C_SOURCE

]]

.../linux$ grep_syscall rt_sigprocmask
kernel/signal.c:3050:
SYSCALL_DEFINE4(rt_sigprocmask, int, how, sigset_t __user *, nset,
		sigset_t __user *, oset, size_t, sigsetsize)
kernel/signal.c:3081:
COMPAT_SYSCALL_DEFINE4(rt_sigprocmask, int, how, compat_sigset_t __user
*, nset,
		compat_sigset_t __user *, oset, compat_size_t, sigsetsize)
include/linux/compat.h:698:
asmlinkage long compat_sys_rt_sigprocmask(int how, compat_sigset_t
__user *set,
					  compat_sigset_t __user *oset,
					  compat_size_t sigsetsize);
include/linux/syscalls.h:696:
asmlinkage long sys_rt_sigprocmask(int how, sigset_t __user *set,
				sigset_t __user *oset, size_t sigsetsize);
.../linux$ grep_syscall sigprocmask
kernel/compat.c:40:
COMPAT_SYSCALL_DEFINE3(sigprocmask, int, how,
		       compat_old_sigset_t __user *, nset,
		       compat_old_sigset_t __user *, oset)
kernel/signal.c:4236:
SYSCALL_DEFINE3(sigprocmask, int, how, old_sigset_t __user *, nset,
		old_sigset_t __user *, oset)
include/linux/compat.h:882:
asmlinkage long compat_sys_sigprocmask(int how, compat_old_sigset_t
__user *nset,
				       compat_old_sigset_t __user *oset);
include/linux/syscalls.h:1136:
asmlinkage long sys_sigprocmask(int how, old_sigset_t __user *set,
				old_sigset_t __user *oset);
.../linux$



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
