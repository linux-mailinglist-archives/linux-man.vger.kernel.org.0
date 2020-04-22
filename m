Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B72711B43F5
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 14:05:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726615AbgDVMFs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 08:05:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726519AbgDVMFq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 08:05:46 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05B0CC03C1A8
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 05:05:45 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id k1so2092745wrx.4
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 05:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TRLuwwxDegsGWqz0K/m0eguAuchygYx2vvP6GOi+fAc=;
        b=PM02mOzM2J8UgEwa5Qe4AciyC0gv3uQkn+Nu0jMqhAeE+XQX4Ky3QB71MxOguBajL4
         x/Q5DKVwloCc+p0ZEZfM+ySGjEsHkyVWr8atpfpfbIGHVN+rbX33yu98wfqh559ui4lS
         SrYF3Pwp4DKExTQzVc+OUf2qo90QwFH5egCYwU3Yvr79cZpvL2YO5w6qF8bIqojafDr+
         DUZzB42eTXLan8Sq9XiD/B9AbXYZ9mlzq017VIRwmQKxlP0kxpJ0K0jp336Q98yNrv0X
         K6DkR9hzQuIAzE/1+L//bqZ83vg39EcK6d7kAgodrt8M2nJrBwE0tuJWIihqPL+KcRni
         orNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TRLuwwxDegsGWqz0K/m0eguAuchygYx2vvP6GOi+fAc=;
        b=LRSKMjZvFLbyUJto+FS4RTJBQFdcTqKtpFlD+TvTc+6VNW3tdZuI9A5w638NuU+f4U
         pRfR5xzyFW2qLgSJGJjTl2gfkSFExX+uM9eHJdbM09Gukzu4Rhb1jo442BUdGIQWIVT+
         nFoATClEOb4N+1JIF55Sr6z3Zra31gM+blh34aJmVM8KUtziJArf32lWpveKtcFcE59r
         bqZUgjSsNhDa/YDMkO9+Fo8O5jkXEA+lSq/URM6X8d3eutM8jP1UUMGrKNHvKjL5ZhyA
         RI2Yq2MbFUUgxM+u9mFwIrW8ds2XhZHBFE9ItAgPxv1ZhGlrh8CRAVhZRDOCkmLVJw2V
         OfAg==
X-Gm-Message-State: AGi0PuZnbLpsP/NM5qpb+oftXB1Yyr2XjhbfY1YQ2v0Xgmc3HadvozTa
        sxCBg48loMxlzHXjvi4jUg4=
X-Google-Smtp-Source: APiQypIwQhOyAccS34tbJ5bpy3ZcaoICaUm0FWrODc+bhZr6+xhSu46igD7T0iV6m7vnltgaldXfvw==
X-Received: by 2002:adf:ec09:: with SMTP id x9mr29133865wrn.364.1587557143747;
        Wed, 22 Apr 2020 05:05:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y70sm8138758wmc.36.2020.04.22.05.05.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 05:05:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Sonny Rao <sonnyrao@google.com>,
        Jesse Barnes <jsbarnes@google.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Minchan Kim <minchan@kernel.org>,
        "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
        Lokesh Gidra <lokeshgidra@google.com>
Subject: Re: [PATCH v2] mremap.2: Add information for MREMAP_DONTUNMAP.
To:     Brian Geffon <bgeffon@google.com>
References: <20200415164949.44562-1-bgeffon@google.com>
 <092fc948-4adb-cda8-f525-7d16a85674e7@gmail.com>
 <CADyq12xA69pSZ=JfMuG_c8T1UHepmdSqBwLLPgFrOyXeveVk4w@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <80e408d3-f46c-58ef-0539-fd0e5778fef3@gmail.com>
Date:   Wed, 22 Apr 2020 14:05:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CADyq12xA69pSZ=JfMuG_c8T1UHepmdSqBwLLPgFrOyXeveVk4w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/17/20 5:01 AM, Brian Geffon wrote:
> Hi Michael,
> 
>> Thanks for this patch. I've applied it, and done quite a
>> bit of editing. Could you please take a look at the
>> version in Git, and let me know if I made any bad changes
>> to your text.
> 
> Your changes look good.
> 
>> You write "move", but would it not be more correcrt to say something
>> like "duplicate"?
> 
> It's a little of both, it duplicates the VMA but moves the page table
> entries. So the behavior feels more like a move followed by a new
> mapping created that had the same properties as the previous. Does
> that make sense?
> 
>>> +Possible applications for this behavior might be garbage collection or
>>
>> Can you elaborate the garbage collection use case a little, please?
> 
> Lokesh, who is CCed, can probably expand better than I can, Lokesh
> would you mind elaborating on how the JVM plans to use this.
> 
>>> +non-cooperative
>>> +.BR userfaultfd (2) .
>>
>> What is noncooperative userfaultfd(2)?
> 
> No cooperative userfaultfd is the term that people tend to use when
> the threads accessing the memory are not cooperating with the fault
> handling, MREMAP_DONTUNMAP is interesting for this as you can yank out
> the page tables from a running process and immediately start handling
> faults for the registered range without having to stop the process.
> 
> I hope that answers your questions, feel free to ask if you need more
> clarification.

Thanks, Brian. See my reply to Loresh in just a moment

Cheers,

Mcihael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
