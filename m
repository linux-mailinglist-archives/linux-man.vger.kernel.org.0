Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 078DE1A7952
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2020 13:23:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439021AbgDNLXM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Apr 2020 07:23:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2438988AbgDNLXL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Apr 2020 07:23:11 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 744E7C061A0C
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 04:23:09 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id r26so13544892wmh.0
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 04:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=p4ld2HNSxA7hUQIiC5sXUyMQCo4hbS4i8zkC6pzKzcY=;
        b=ZWju+SLtDtxshEP/0gXLZ1GQajC2nYdBfTDAtLEpG4zjyU5cmKbA/sIsRk+o0l6oRj
         z+Xw9Rzn96FmEdfd6cWXFvvndPbZRNmT7Zexv/uPHl/6xFfKJDpATx33rk2rI4VaJMpQ
         I38TllIcx3GGT8v+yxOTohEuXEx9JfNyZ6tDle55EKo4ngvPkmpjm1snSlmqqRQ+gN6V
         Cj+wLpN6Pbfn2hqUFYYtq/5IS0JjFsXXMA8NZS0svmXLonhXtpQgCYEqYeHkinmVvN9P
         kZHu0CEl3Z0lKspOrRNLDbO8VZoimNWkJphPO3gUNwoDUV6dSFSo/b25rChVkyihORKW
         fOVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=p4ld2HNSxA7hUQIiC5sXUyMQCo4hbS4i8zkC6pzKzcY=;
        b=k1Z4W4b/WmmbkN82xhB7WdecF1BUMDUuXYh+n4fSqzDgTBgDeP7iMrxGoQrbW8keDu
         NE+LVP04Wi+6SZK+jHi54/o2WU465OjY3GrCw7nUNUBpGQGd5DoA3dlgI3Ki62zBQ1Q5
         stAiIkgne69pgyYTKREXNCCtOCQs2+aBmJ92QXWJin7LfHTZOnp9B7nZn1AZB2P9OmU1
         4+wg+5OTj35J6XBCNJ97wKoyEUgHYFnn7Qfw16q/iz5oTi/YrMhelEHAWyLAXnsKUIkn
         irTUOd3c9yEj28sxX0uxvHb8k/mwmaIqDorSgBNt/YJxjE5EP41LGKkaisqc6sZgCOY9
         06vQ==
X-Gm-Message-State: AGi0Pub9VtAUeoI3bjpG8gwXE/ULl/s6xJ1P4LqvGJ2I27ifthBKbLKl
        BCmGEa9+FgpfkgX9avR9dNMQrQzk
X-Google-Smtp-Source: APiQypLThgzHOXrLRrlzanZnW4driONMV/vt4H5F02UZbXVagbvaPWNI6KMBPJADQsGv3hILcWS6NA==
X-Received: by 2002:a7b:ce88:: with SMTP id q8mr24877973wmj.161.1586863388141;
        Tue, 14 Apr 2020 04:23:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id i17sm8768649wru.39.2020.04.14.04.23.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 04:23:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: mmap(2): MAP_ANON
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        linux-man <linux-man@vger.kernel.org>
References: <90ecc432-951f-b83b-e5cb-487fa871a1ec@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3e169e56-b0a6-9099-957e-4304211891bb@gmail.com>
Date:   Tue, 14 Apr 2020 13:23:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <90ecc432-951f-b83b-e5cb-487fa871a1ec@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/24/18 9:03 PM, Heinrich Schuchardt wrote:
> Hello Michael,
> 
> in the mmap(2) man page MAP_ANON is described as deprecated.
> 
> When I look at the NetBSD manpage
> http://netbsd.gw.com/cgi-bin/man-cgi?mmap+2+NetBSD-current
> I found that MAP_ANONYMOUS is not defined.
> 
> https://www.dragonflybsd.org/cgi/web-man?command=mmap&section=2
> indicates MAP_ANONYMOUS is an alias for MAP_ANON and is provided for
> compatibility.
> 
> https://man.openbsd.org/mmap.2 also knows MAP_ANONYMOUS as a synonym.
> 
> https://www.unix.com/man-page/osx/2/mmap/ does not know MAP_ANONYMOUS.
> 
> So shouldn't the man page indicate that MAP_ANON is to be favored to
> write portable code? And correspondingly mark MAP_ANONYMOUS as synonym
> only kept for compatibility.
> 
> The Open Group Base Specifications Issue 7, 2018 Edition does not
> reference either of both. So both values are not POSIX but it is not
> correct to describe them as Linux only.

The text saying that MAP_ANON is deprecated is ancient (at least
20 years old). I don't know why that text was added.

Things are not simple though: it looks like there's at least
one historical implementation (HP-US) that defines MAP_ANONYMOUS
but not MAP_ANON.

I've applied the patch below.

Thanks,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
