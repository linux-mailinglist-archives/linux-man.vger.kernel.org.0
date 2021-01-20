Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F42252FDAA8
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 21:20:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389626AbhATUTt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 15:19:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733263AbhATUTh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jan 2021 15:19:37 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 389D6C061757
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 12:18:57 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id i63so3868885wma.4
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 12:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k6Mz3vq97EUeLR5C4oJClqCFsYIZ/5QxKr3w3vX1yNQ=;
        b=RCfvMCXxXKyn6fqncBuw93YhXUeXVS9H5hIe5nYKBZ+kJtqqeEW/bp3BTDSkUzBjhb
         xGgERBJwnGiCRoyVnqKemEIqweXWsH2LbxW+4X9BhjuwxI/Q3kGc8U6Z+vqArg7Knfbk
         P8onAa7JZ8i8r/ssNQ9gJMA1wMHBZbjr5xNpyu6ZKdkpdX6/MpVxlblErL/AWxv3oMZG
         zQVpo073oTKvgNkJFSlMU8el9s3+w2klT6SAKq//tBA4kctJjWLXkGAakbGRG6XQXXAZ
         yULhoTwU3A0rIHyeCJ/KFf0iJ7K746EmPp/HR39jmbPkVeURvy5ohNTqj+iW1lzkXmFu
         IQ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k6Mz3vq97EUeLR5C4oJClqCFsYIZ/5QxKr3w3vX1yNQ=;
        b=o1JuJ03kAJ3JOa+325ztlsfW/5w9/7+vs6OQzMfU0ifNDGhznrpRGZoXWmchp+6vUB
         DqzssBBdWS/wuSkKpfrrx2XTBIruZ6ic0UUv4RuKwQ6ew+FzUP2CDUWEUWRmfUJFq9Gr
         qsTXYCCa9wptrX7tmSfde6uWzE+MN64+UMbIBYzogNA/CnT3W5VZtce5GWpu15JjNGfm
         e1JD+jpzL7JZapgVfRED+Y/sFCjpfM/x5fbCyTBf/oHRW+0Qxw+rNhc89zt3SBQzl3a0
         oOQ+/Mak3lZgPtSHYT5X/tTtKQcTPRPfrkqeZt2bWqZnofGf5rb36L3Ojtma/RfPVshn
         IjcQ==
X-Gm-Message-State: AOAM532Nd7GZArLPO7qZR8sEe4YNC/CQXRZ535bxfRCBOfvaVp13gmQ7
        iFD01qxCT6Y2W+jbBCbBG+A=
X-Google-Smtp-Source: ABdhPJx+LDe8/66daS3sh8uPochQ1RjgQq/3ZMNMis3P+sdo92D6RbzLjCGUgvR7lFXtHO+gld9Npw==
X-Received: by 2002:a05:600c:4ed3:: with SMTP id g19mr5775789wmq.95.1611173935952;
        Wed, 20 Jan 2021 12:18:55 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id l7sm5351242wmg.41.2021.01.20.12.18.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 12:18:55 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: sendfile() more defailed information ? anyone ?
To:     Walter Harms <wharms@bfs.de>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <6e9e410d0e874053bed915ba2c31a74b@bfs.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1c979dfb-5d9b-27e6-39a3-8947bc8cee74@gmail.com>
Date:   Wed, 20 Jan 2021 21:18:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <6e9e410d0e874053bed915ba2c31a74b@bfs.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Walter,

On 1/20/21 6:40 PM, Walter Harms wrote:
> Hi List,
> there was a discussion on the busybox-ml about a kernel-bug in sendfile(). 
> <cite>
> In 2.6.33.7, when used with a normal file as the output, it always
> writes the data to offset 0 in the file.
> 
> That's fine if you only call it once and then close the output
> fd. However, if you call it multiple times (as busybox 'cat' does when
> copying multiple files), then you don't get the expected result. The
> contents of the input files are not concatenated. Instead the contents
> of each input file overwites the existing contents of the output file
> starting at offset 0.
> </cite>

At a very quick test, I could not reproduce this. Do you have a URL 
for the mail discussion?

Thanks,

Michael

> these apache doc mentions more problems
> https://httpd.apache.org/docs/2.4/mod/core.html#enablesendfile
> 
> It seems that the bug mentioned above is fixed but nobody seems to
> know when this was done.
>> IMHO this should be mentioned in the man page, but i lack detailed
> information and time to research them. I would like to encourage
> anyone who has information to  come forward so it can be added to man
> page.> 
> re,
>  wh
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
