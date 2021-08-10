Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5C743E567B
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 11:13:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238675AbhHJJOC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 05:14:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238628AbhHJJOB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Aug 2021 05:14:01 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC8D0C0613D3
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 02:13:39 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id e19so6588241pla.10
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 02:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Cw2vad+CpJ27Df3px4DYifHxCcbMXEJ8XRn291SQ35E=;
        b=r7Zxp9FzEM/+qegIQihXTasrKYlk5T4j3rnI5pFcef7r9DdznZYsaXQYK/a8NdM5oG
         cGfCbFMV5u6ROBl3Z8oX8cmkNFTLX8LYhtlRU+NQpnh4y61FizitB91e7iTtPZdXGfWJ
         67zWiMTtBlOGro6ATdvZ5h+j5vQujO5HnK/Wo6nCSX3gbgBz4eDs3wPJbeB8Zr7cWv1P
         VEUCZJtwJncgOJ4ZXF1OlOEL4Wan+YcOJqhM+7JAp4lq1sebBLBER3mJNpYIhOUfKHHd
         uTxzV6SmrgiuZFmIjvXW9v6/nVbQR4Gt17xIcIo4NVpnyAaL85lhQOjA8CZPszf1VYA8
         fTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Cw2vad+CpJ27Df3px4DYifHxCcbMXEJ8XRn291SQ35E=;
        b=pwJ+5BV+yud211/OPgWqiUWZgP8rmZtDPfLqvHfYAx3pH+7uYXUppMJ3on59wZehjr
         +NP7xcq1jKmWfnUqY8YQEScqGsm9LwxJ2BEL5PijvOGm7BPaUjLBRoV/va+1Uf3KeTnt
         B+fYVaHNYXLrnfPuaxyVva6hNs8597Ma9y4z78SDv5oaZE/k1+SQjPFYobcSm1Aw6dKn
         AnqQ/W8Bb9t03dDx4bekgNFmWDXFhqix62CoZ0zXIyAsdgKBWp/8rTeLZxeXRZiemaAc
         ebgaJjI0fAVi1sD3t0Pj3pxti0D761a72tk1VTDBy4NyFLSeSFSCxX/dAdqwYgGTMdqM
         +Vfg==
X-Gm-Message-State: AOAM530UKGvRVKLJid+zjwPCkSjbXEox5MgfDLfspMit5phrSKwRLEmA
        MKJWgKfgfuK2AqGhc0ZAG3UUBU+P1ts=
X-Google-Smtp-Source: ABdhPJzFVUIUp/EPdlJnQgxuuIWm0pnm6WIvDvInxhJWFQXB3VlauajokDUYKjLe7FdxDrP9Ny8SDQ==
X-Received: by 2002:a17:90a:4093:: with SMTP id l19mr30457216pjg.118.1628586819020;
        Tue, 10 Aug 2021 02:13:39 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id x69sm266222pfc.59.2021.08.10.02.13.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 02:13:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Incorrect variable used in example of pthread_setname_np()
To:     Alexis Wilke <alexis@m2osw.com>, alx.manpages@gmail.com
References: <efaf5f8f-440e-e9d4-6cf6-5798f8ca7cc7@m2osw.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <17a68eaf-b533-8b90-781c-76a71c8d6cb7@gmail.com>
Date:   Tue, 10 Aug 2021 11:13:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <efaf5f8f-440e-e9d4-6cf6-5798f8ca7cc7@m2osw.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alexis,

On 8/6/21 7:06 PM, Alexis Wilke wrote:
> Hi guys,
> 
> The pthread_setname_np(3) manual page has an example where the second
> argument is used to get a size of the thread name.
> 
> https://man7.org/linux/man-pages/man3/pthread_setname_np.3.html#EXAMPLES
> 
> The current code:
> 
>            rc = pthread_getname_np(thread, thread_name,
>                                    (argc > 2) ? atoi(argv[1]) : NAMELEN);
> 
> The suggested code:
> 
>            rc = pthread_getname_np(thread, thread_name,
>                                    (argc > 2) ? atoi(argv[2]) : NAMELEN);

I agree that there's a problem, but I think we could go even simpler:

     rc = pthread_getname_np(thread, thread_name, NAMELEN);

> I'm thinking that maybe the author meant to compute the length like so:
> 
>            rc = pthread_getname_np(thread, thread_name,
>                                    (argc > 2) ? strlen(argv[1]) + 1 :
> NAMELEN);
> 
> But I think that the atoi() points to using argv[2] as a number
> representing the length.
> 
> (Of course, it should be tested against NAMELEN as a maximum, but I
> understand that examples do not always show how to verify each possible
> error).

I imagine that the author's intention was to allow the user to do
experiments where argv[2] specified a number less than NAMELEN, 
in order to see the resulting ERANGE error. But, that experiment
is of limited value, and complicates the code unnecessarily, IMO,
so that' s why I made the change above.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
