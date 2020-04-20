Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D71321B0588
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:24:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725971AbgDTJY7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:24:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTJY6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:24:58 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 355D4C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:24:57 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id r26so10525413wmh.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G5am84/5/pJa5ccMAEZA9cH3GFmYYYnb86Axeg0A8E0=;
        b=V8o0r1anN3qllmPYKqNAj7gcx2ajzZ5+WYalvHd7k2gVYWJ5kMwWxl7b4fli5UDgmj
         PTiiocL782PIW9d87f1MRaBgh4ERxVyP+ZvlEEBt36zJgBUvhr/bfjisuzlKKiYmuKYF
         14JuPJ4+KYIzJEkJNuf6puufEO2rpZtupuJW20pLH/DUedWYmympnQg5Pp57byKXlCde
         XDFhOUpVn39zJJsHDPR5zw/X9tcZHdzSdq+hBdOZ4527mXcJr9uFZ4Md0qAnhCmroQ/e
         f8EE3IBSWzH8NAUh5jBm/zd3B4Mcb5goH5PjZP7sthE5PPwI2D3W/gegqlWIy7QtN9Lc
         /gcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=G5am84/5/pJa5ccMAEZA9cH3GFmYYYnb86Axeg0A8E0=;
        b=stD5BHdY6D/bZ/FsgQsySaASK4pBG9Gc3aZrZf6Yjt0Jwt8AsAEIR7McgmSgNMsU0Q
         ugzLy3+wBOT3f9NxtXQOHiHbVj4twYbzkPKJujxnbLdTstIbKwljgSt0O38aE3tI4IwN
         xvNBKOIuI0T4jTHvEpsZ0wGdYJrV+300bRbDR3JiUL8SIyPFDaZ+HcBylULvf+bQJQUq
         8RFhEr3FvBXFxj8BCQmUKDsNxMj9RaN/3mjAqZLbNoyeg3goU94i5E7l2a9mDWyrmZPA
         qxCccSvLlorwqVd5hZ3jGHxNt9nTx/OOWyOK0W+C21KXWBFkxemUufIgCWOArq6u4Sl/
         GAhg==
X-Gm-Message-State: AGi0PuaOePoFWuLSGvw3OZtLei1Mtw8nOGDTE1JvNuTzgby11Wqew+DM
        eqHQ7VPpnBSu/VrDbtuPnBx7r7U1
X-Google-Smtp-Source: APiQypK0ueXFFTSO3YcoQEpY7zFGsgIaiBa/M+aSk+54aJiLP5rAM5ZBU9+Q9fJDbUoO1HdsKBxdjQ==
X-Received: by 2002:a05:600c:114d:: with SMTP id z13mr16832694wmz.54.1587374695797;
        Mon, 20 Apr 2020 02:24:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id p16sm373203wro.21.2020.04.20.02.24.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:24:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Punctuation/Spacing
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064817.GA31514@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1706919f-3ddf-e192-4c66-8234ca5e8a9a@gmail.com>
Date:   Mon, 20 Apr 2020 11:24:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064817.GA31514@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> Dear manpages maintainers.
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including manpages) as
> well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometiems this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a convention
> not held up and sometimes we simply do not understand the original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to translate into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. As requested, each
> issue is sent in an unique mail for easier tracking on your side. If
> future reports should use another channel, please let me know.
> 
> **
> 
> Full stop at end?
> 
> "(B<CONFIG_TRANSPARENT_HUGEPAGE> is required.)  Memory used by shared memory "
> "(shmem) and B<tmpfs>(5)  allocated with huge pages"

Fixed.

> --
> Missing closing bracket
> 
> msgid "I<softirq> (since Linux 2.6.0"


Fixed.

> --
> Missing space 1GB → 1 GB
> 
> "This file can be used to query and set the run-time limit on the maximum "
> "(System V IPC) shared memory segment size that can be created.  Shared "
> "memory segments up to 1GB are now supported in the kernel.  This value "
> "defaults to B<SHMMAX>."

Fixed.


> --
> Missing full stop
> 
> msgid "Enable memory failure recovery (when supported by the platform)"

Fixed.

> 
> --
> s/processes, This/processes. This/

Fixed.

> "Specifies an amount of memory (in KiB) to reserve for user processes, This "
> "is intended to prevent a user from starting a single memory hogging process, "
> "such that they cannot recover (kill the hog).  The value in this file has an "
> "effect only when I</proc/sys/vm/overcommit_memory> is set to 2 (\"overcommit "
> "never\" mode).  In this case, the system reserves an amount of memory that "
> "is the minimum of [3% of current process size, I<user_reserve_kbytes>]."
> --
> display → displays

Fixed.

> "This file display information about memory zones.  This is useful for "
> "analyzing virtual memory behavior."

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
