Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24BDD2B0FEB
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 22:17:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726844AbgKLVRh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 16:17:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726337AbgKLVRg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 16:17:36 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7619C0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 13:17:36 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id s8so7491181wrw.10
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 13:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Mcu727UddUrkrS9lF58bbSnsO9JecJetlVYwG4k9wQU=;
        b=fnVfqVdEmJlyl1aEwYYz+6ip2V+YarSxs7WzILTPJJcRhCQo4VlLKcoXGcUxmlPuiV
         ZizGk7hA+0D3UvTqDcHFEg5Amb4hkBfDP7y6qipwCR6sLE6jB1atzkUVDqcleKeRsvFW
         DsNRE18FFUIrjgWKn+40qlwQLA2gOKl+DO9HqwZr8XScFQAFqwvn4gpcnd+I1gUPMlag
         dwXLdYCfo/E7DyrDjW4Pk48iAwENeZyX2aKEAjY4UB5GJlaiJyaQ9EsmGXliqCJqhRUL
         MkQRuryhFCC4sbE18rTWlbam9nBy95gxR3PmWVYgB/zvF3YPP1lJ87lrPbaRu9/q6j9n
         r4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Mcu727UddUrkrS9lF58bbSnsO9JecJetlVYwG4k9wQU=;
        b=naRADwu7QmL0h4B/3YsJTlNTA8AuQWBBz9gBfQ3hYuqTG4GbVX1Icon23RudGxSnxd
         B66EMG9fglehfDHDJCarVAeh50DSY+n7uHqW082TyhQwXEBAnqvs8SMOLtzRQcmFY38x
         lbuIokrHnkXVCac8Y/Fm6g1yNSJkLsz8M9TbN3U22uDK5/BffYi83zR2NwYnmYmokmbc
         4summc4T7KfQM52BQK913c9uxNTYHPDZkUaXD+6UnlEXHw1CgpCLTa03+Mfn3FNqO4I2
         hZjJksD7aH9aRCf7iQzru65TkyPNwLtHBw3qnl5rMNGjjI3ByJP13hpWE9TFZdfumTRZ
         Liqw==
X-Gm-Message-State: AOAM530q9Pbwv4/+u9e20fgBxPc79kWArQzn70/qal/FaaFp4Z4o2oJx
        jMnNKn5GCxb0pr7deQzg9J0=
X-Google-Smtp-Source: ABdhPJz5mT91cMD+F/3fDp/py/h00qErCCDsckWREunZ6rG/P5xYGI7euG8DKhZD0nqyeUXDtw6BjA==
X-Received: by 2002:adf:fec6:: with SMTP id q6mr1449846wrs.168.1605215850793;
        Thu, 12 Nov 2020 13:17:30 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id p3sm2168477wrs.50.2020.11.12.13.17.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:17:26 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>, linux-man@vger.kernel.org
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
 <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
 <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
 <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
 <16CBDA59-F868-47E5-B88F-C9CF235BF8BD@gmx.de>
 <b3fd673a-200c-78fd-97fc-862f41e54d21@gmail.com>
 <C98DCC3D-49A0-4B02-943A-AA6F2622F66A@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5dfe378b-43eb-6d72-0312-8e31ea2bfa52@gmail.com>
Date:   Thu, 12 Nov 2020 22:17:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <C98DCC3D-49A0-4B02-943A-AA6F2622F66A@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/12/20 10:04 PM, Heinrich Schuchardt wrote:
> Am 12. November 2020 22:01:58 MEZ schrieb "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>:
>>> Is there a function to change the signal mask without leaving the
>> handler?
>>
>> sigprocmask(2).
> 
> You might want to add a link to the function in the note section.
It's already mentioned in the subsection "Signal mask and
pending signals". I think that's probably enough.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
