Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 951CC2B192F
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 11:39:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726248AbgKMKja (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 05:39:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726237AbgKMKj2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 05:39:28 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A8C7C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:39:28 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id c17so9197582wrc.11
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DKI3WZWYGDqY7VWqHRDC06tByKzBZDIw8Rr2BqTGiwU=;
        b=UcI6htItVbZszB375/wdykF46JiJNy5cgY2Ui0/LBVnmWCZf8mvzwOnuVb0JM+5n1d
         wRSWs5+QvAW2nETX8iMzl1sa+5CdZRMeCwMY2DOOKVN6W1ODkf1yv0stiFoD17d2gEot
         SOIgIfJ8/tG2N1+cSxEMzMXVIO2dbZvNNBZBkzJJYIHMwnQesVVNGMM/3bfWyX/vabrj
         nLKQdk4ggvn+uLjqitv0KLhc+l+vFaO5Bl7FzcbFv+qGs+SiejQllW8RXI4SG423ZFgL
         /2a4k1VUfQp2gzg1YVRmVqYnO07yBk32/RzbZeA/wx4sVqA7dqlm1AQHGzMSMyE4fe4P
         Tpvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DKI3WZWYGDqY7VWqHRDC06tByKzBZDIw8Rr2BqTGiwU=;
        b=jXKEgpOnMPznrTxFJ4lIAIz2i9DWZNdEd2cG0wvltsEf8SfDVBN8yZ7jCVLM7xCGuX
         Zvnl/V+YaC28o52dMeGA5FBhjx5ShI0tKlKjupn9A4F0wExC6POoDMcg3USY4ByaoWiv
         0L+HgNsRWyQKD7Z2SFp5XZVPYUD4q5165YevSSA1+p1Uwy1fLmrJOFcAM00L310ljkL/
         oYcspE1G1IsebKAr/4kEeI+Dugj8klFVgdj7tO+yYBNzW5GTIL6RXikzpqsdAT8hCaT3
         qp5ph3NGP4+eDN74S2BVXVpGjltl1+h+aU15w9LhyiVDH14c6qlK8yeP1SdqsbGh2Yl6
         x68w==
X-Gm-Message-State: AOAM530YDAfEBVaTw9G5Xyb4m9X6ssipOmr1MPkMgx1x3tbzhYGdEOMP
        rGECK3jx/yaFXPzbonpFIx2wm0vvVcM=
X-Google-Smtp-Source: ABdhPJy3R/5h4FHezulTMjIaZ5uts5iTRQfIpddabUEdEah2lyZDqjCVNhU1Ar+3uP1uHR7fFxXLnQ==
X-Received: by 2002:a5d:5689:: with SMTP id f9mr2488433wrv.181.1605263966677;
        Fri, 13 Nov 2020 02:39:26 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id c129sm10074479wmd.7.2020.11.13.02.39.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 02:39:26 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [RFC v1] perf_event_open.2: srcfix + ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <fb71a481-45a1-7511-97cf-bd2017562a16@gmail.com>
 <20201112225528.99397-1-alx.manpages@gmail.com>
 <84882898-6208-73cc-cb52-1e1663d025e1@gmail.com>
 <a813d3f7-e43f-09d2-40a6-c2bb9f6789f3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c7828027-993d-c5de-4db3-5bbda146c85a@gmail.com>
Date:   Fri, 13 Nov 2020 11:39:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <a813d3f7-e43f-09d2-40a6-c2bb9f6789f3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/13/20 11:26 AM, Alejandro Colomar wrote:
>> [...]
>>
>> At this point, I feel we are devoting a lot of energy to solving a
>> problem that has no really good solution. The status quo is not ideal,
>> but so far I'm not convinced that there's any compellingly better
>> alternative. And moving to one of those alternatives will require
>> changes in a lot of pages. I'm in favor of staying with the status quo.
> 
> Agreed.

But, I did also mean to say: thank you for trying! The status quo
is a result of my best attempt with just partial knowledge of *roff 
and the man macros and I was hoping there might be something better.
Oh well...

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
