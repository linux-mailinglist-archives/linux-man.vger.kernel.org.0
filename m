Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 097BA31566E
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 20:02:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233296AbhBIS7B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 13:59:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233449AbhBISv6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 13:51:58 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37D19C06178B
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 10:25:19 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id s3so25105516edi.7
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 10:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Glvj18agL9tA2l3j/7kwqc9hNexNdK9z0IiCh1AFgdw=;
        b=Q8zMredSaQ8hgVSAEZoMbsiqpNR+Vp+1fEuN8+6vr0QNrkngd2YUOScnnGtEzr68Ys
         Ui6XevcTDS6BKDsFyTPGSrtikKJK2TvMFSP7FpVOu8olCKqPIVbOiuxrHVLpzhniIO7R
         no+4LSSgL5bh2LTSmMyeSeO57O61OeFBLFCuYSNW+veQ8kk0He44FkhIN7UU76iTF2De
         5k9ex2EkcqWLO3BDr+JUXW4wHYb4bf5ez0O5YJplF5GcrUNP3d+lvW9B26oy/RBeP37D
         ZRF9JwZAEKsmPPkJg8YrSGoJHxrxid1uxg2JEPIyYntPg54JHMwqcKpnawipmoaHUeuh
         2fiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Glvj18agL9tA2l3j/7kwqc9hNexNdK9z0IiCh1AFgdw=;
        b=Q5IgLzZakVYqwuqQVux6LbVLvarVyDfngpic+nKEAoCkYa0x4wDo4OTOCqWIPJyyzG
         G0K3iGJiHu7sAj3qnj8hD1IIgb3PzEqVJVtHIwVodspfTUv+CJK4lLU2n/F10HDvzSkO
         jw2je6fbUyk81+1mONwP+4pQY9cjsOHmXDZTCyAO62G5UdN5lYAKtVwB5flvOZHlOfnp
         YLFMgVcsZwCbPvzNK1hqoPmIcDkBBpwfsXe4I/n98Lw6SzMpVTYmp6jfHmRaMLo0YJIx
         3Od90P8LONKIcIcKH4AwCAPmASOG/3/daw3FtDIpsAulqmxBYpFthIq/oxYXIKmnf+xt
         xErQ==
X-Gm-Message-State: AOAM5309rGrHQ8i0fKCqEJ+8MJrgumR4L7P2WwQIAAssAUD0kVlhtniN
        sinnCFEIAo+SGodDQkKciEzuWP/Pd8hCPg==
X-Google-Smtp-Source: ABdhPJzrRn6DPjUAyUFksfzpJ5n/bILMbG2DwTva5MqOClbwHYMfbWkGLpO08AhxXKU61ZKSv+AR0g==
X-Received: by 2002:a05:6402:4316:: with SMTP id m22mr24237491edc.64.1612895117774;
        Tue, 09 Feb 2021 10:25:17 -0800 (PST)
Received: from ?IPv6:2001:a61:24ca:4d01:a815:d0d9:f754:e0ef? ([2001:a61:24ca:4d01:a815:d0d9:f754:e0ef])
        by smtp.gmail.com with ESMTPSA id kv24sm10673088ejc.117.2021.02.09.10.25.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 10:25:17 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: ptrace.2: Simplify signature? s/enum \w*/int/
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <e7685576-db7b-f53d-26b9-64ee6621aea1@gmail.com>
 <bba760a2-b291-d676-2949-90b47f13d4f9@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <eb01e43f-6ab4-c4c9-62b5-a705aab906ae@gmail.com>
Date:   Tue, 9 Feb 2021 19:25:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <bba760a2-b291-d676-2949-90b47f13d4f9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/8/21 11:36 PM, Alejandro Colomar (man-pages) wrote:
> [CC += linux-man@]
> 
> I forgot the list.
> 
> On 2/8/21 11:34 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> I think we should simplify the prototype of ptrace(2) from using 'enum
>> __ptrace_request' to 'int'.  It is an implementation detail that should
>> be transparent to the user.  Other pages where glibc uses an 'enum' are
>> documented to use 'int' (I don't remember the names of those, but
>> remember having seen them a few days ago.  Otherwise, we might have to
>> document 'enum' elsewhere, which I don't think adds any value.  What do
>> you think about it?

I'm somewhat conservative on this point. It's been documented
this way forever, so I'm inclined to pause before changing it.
I feel like we lack information. I'd like to know about some of
the other cases where enums in glibc are documented instead as int.
But, on the other hand, maybe this is not the highest priority,
so it may not be worth too much effort to discover those examples.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
