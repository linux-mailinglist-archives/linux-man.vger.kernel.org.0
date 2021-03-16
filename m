Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1953933D9D1
	for <lists+linux-man@lfdr.de>; Tue, 16 Mar 2021 17:51:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232056AbhCPQvD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Mar 2021 12:51:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232193AbhCPQuu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Mar 2021 12:50:50 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AC74C06174A;
        Tue, 16 Mar 2021 09:50:50 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id d15so10834425wrv.5;
        Tue, 16 Mar 2021 09:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tw02aSmUfktQUztGp/fYjFJuvv7VDIifDhxKgPk1hm4=;
        b=TmcmPnRyzmMb32Fpbcut6a5vxRtOoY9vODgqY/NAaySwxusdWl60TaV96SJKnsgSeA
         WCMtMsIp0YnVUFNXu9X/DY8yKm8BpWQ4rYA2jWU3cyEyO67PXjTOK0BZUjMFNTy6Py1Z
         OTkjW3Cqso3zb1m+xYL3sM1GY0wOfUgaq0o5T+lWdfeUiZYDaLtvKU7Nh5ewczOdTLiL
         6Fo0wwsX4lO7A4z2+c85aJ3oEhAF/GDd77j/G1S9fC+oz7DATkMaK3P4kTIvDX+0qcqN
         ISfgUGWzttyPAPrkG37Kx1gEzYPgLF3uL7sGjzQLRO/glY1avjQlcxE49X0q4Kk8FSJ9
         v8AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tw02aSmUfktQUztGp/fYjFJuvv7VDIifDhxKgPk1hm4=;
        b=qePOuEzTRlyjvd/BpaN1koibECzROu2j1emKlgtQPc/hcoJ7Qek7ctqmfstdDpj+UY
         rgyvDXjkpxc4zfXc1MMaVMs+eOl6bmpcNlQFoRzJtJw3AWoHr0jInjdStjHEBEQHsDYD
         UsQLYPBt5iYFkf2QctzKSKqjrZc3YtjUwvNjxTQZ98E+dTgisHGin4dDVhJnBvEt7PLO
         o3KOFeyCcpF0sR6hdEwwXm7P9uBitgEte2iBV3tg4MypqVOfvsB0tb8kdKeubsDyU4/6
         aGX5yUmToaMxwtoAj/Gqx7KLS2HJh6ww4saib+8MOH+P4HWmGrApz5Q4rNns//w0OZ8G
         GANQ==
X-Gm-Message-State: AOAM532kRmXDlxXmsdw1JeUWs2ooDj1Tw2SzZblrJ7mVo1EAEN2/es7D
        vzYYt1/2zZPHLYNTStcwCTs=
X-Google-Smtp-Source: ABdhPJwU7xBH/Yg3pLZcWZ6QfVdkrhYt3icWtF/J2XMVUede0zCueTzEq8ERyme24ygcGUFm39kt9A==
X-Received: by 2002:adf:c641:: with SMTP id u1mr5943933wrg.332.1615913449219;
        Tue, 16 Mar 2021 09:50:49 -0700 (PDT)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id p10sm24014499wrw.33.2021.03.16.09.50.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 09:50:48 -0700 (PDT)
Subject: Re: AW: [RFC v3 04/17] arch_prctl.2: SYNOPSIS: Remove unused includes
To:     Walter Harms <wharms@bfs.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
 <20210313192526.350200-5-alx.manpages@gmail.com>
 <be6a5420c2de4cd5a772a878a173fd09@bfs.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2c3f8638-4dad-566f-43c0-1579a6ae32ce@gmail.com>
Date:   Tue, 16 Mar 2021 17:50:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <be6a5420c2de4cd5a772a878a173fd09@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Walter,

On 3/15/21 7:00 PM, Walter Harms wrote:
> I have learned the other way around:
> #include <sys/prctl.h>
> Is a general system header to use that may include
> the asm/prctrl.h what should never be included by
> userspace programms.
> 

Are you sure that <sys/prctl.h> includes <asm/prctl.h>?

user@debian:/usr/include$ grep -rn '\bARCH_'
asm-generic/statfs.h:42:#ifndef ARCH_PACK_STATFS64
asm-generic/statfs.h:43:#define ARCH_PACK_STATFS64
asm-generic/statfs.h:59:} ARCH_PACK_STATFS64;
asm-generic/statfs.h:65:#ifndef ARCH_PACK_COMPAT_STATFS64
asm-generic/statfs.h:66:#define ARCH_PACK_COMPAT_STATFS64
asm-generic/statfs.h:82:} ARCH_PACK_COMPAT_STATFS64;
x86_64-linux-gnu/asm/statfs.h:10:#define ARCH_PACK_COMPAT_STATFS64 
__attribute__((packed,aligned(4)))
x86_64-linux-gnu/asm/prctl.h:5:#define ARCH_SET_GS		0x1001
x86_64-linux-gnu/asm/prctl.h:6:#define ARCH_SET_FS		0x1002
x86_64-linux-gnu/asm/prctl.h:7:#define ARCH_GET_FS		0x1003
x86_64-linux-gnu/asm/prctl.h:8:#define ARCH_GET_GS		0x1004
x86_64-linux-gnu/asm/prctl.h:10:#define ARCH_GET_CPUID		0x1011
x86_64-linux-gnu/asm/prctl.h:11:#define ARCH_SET_CPUID		0x1012
x86_64-linux-gnu/asm/prctl.h:13:#define ARCH_MAP_VDSO_X32	0x2001
x86_64-linux-gnu/asm/prctl.h:14:#define ARCH_MAP_VDSO_32	0x2002
x86_64-linux-gnu/asm/prctl.h:15:#define ARCH_MAP_VDSO_64	0x2003
x86_64-linux-gnu/asm/auxvec.h:13:/* entries in ARCH_DLINFO: */
user@debian:/usr/include$ grep -rn 'asm/prctl.h'
user@debian:/usr/include$

At least on my system, no header seems to be including <asm/prctl.h>.

Thanks,

Alex



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
