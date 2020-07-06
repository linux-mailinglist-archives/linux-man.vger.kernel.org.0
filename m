Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C52DD2155B2
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:38:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728872AbgGFKiM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:38:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728737AbgGFKiL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:38:11 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CE1BC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:38:11 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id r12so40189858wrj.13
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M/T2W7W2At8KzOYBx/4CIllHIyRbJXJ4Mtq/7YwBLaw=;
        b=XGV4vsjayDjBv47q7rz6Ijg+SnDSL7cIZjW10mZkvLbEPb3KTb1NETUzUkFUaqn3rq
         T49xxaE6Nv8nhITM9Dd9m0zPso03ifwuyYAqH7G8vN7uh6rTRS6PqBeYMEmvykTUPdna
         SqvsH16mYkDZ9pMY3oj1gGIh39qY4jTdAhTgx96KxZYc1829OVDgXAZwb//8sTq/ZPGy
         6WJNoHKNzg3NAfGduiPKsyjQnyCTvvz98upImS9eFW5lXkhzty80QWeCKidaE7VOSb4e
         /Q8CUlrb+no4Yodmt9PcSUwzrGtXkyhZxQCPA9mIBLw+o6x6Za7hhvxcz4DFFHeI7UGv
         sMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M/T2W7W2At8KzOYBx/4CIllHIyRbJXJ4Mtq/7YwBLaw=;
        b=a8U9Y1eGE+hAVZcblJQGf3n8qx9/1YUG8aSjyM7YJKEBGc6wMtHmQ+To+lYkmamEMA
         kv/ArArLje6lYvWL6SMuwjAMnMRjpPL3KFRG4uVzxexst6r5yFkbVnFljilWFvgMX808
         O7rIYF22P0mYd1tHshKuuG4JsEBkX/jC9c5YWTTCtZY9whKOVKBNvLsBOFpcmpXqnpK7
         rTXe41zJwGO4vAiGzEfrs9MDn5iUBzju9oP6FDD3nrBTmQ0xrOP3hV99uRHMk4bGjWqB
         TTwwPsCkOtCyaf0fTwyJranfvOeqbFVmBzkHw3woLOhdV9Op3M4XDlrjE8GV5H2dMz0F
         5LVw==
X-Gm-Message-State: AOAM5329HX5Jb1ORg2w7xslYg3uU7d8HrOxA1Zv4sz/zT8AQbxcSDusR
        7L6dwbEx217tBXsEwLcmr9HQyEx/
X-Google-Smtp-Source: ABdhPJzbkpzRmfSL2Q/yCSJXu5nXJoGxomk2on+NI0rYydestHkBnZBXuttg7y6Y8YL62L4xx4oqkQ==
X-Received: by 2002:adf:9c8c:: with SMTP id d12mr46987346wre.369.1594031890097;
        Mon, 06 Jul 2020 03:38:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id r1sm23387240wrt.73.2020.07.06.03.38.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:38:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: getusershell.3, mssing markup?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101319.GA26520@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <08fd9f21-96ce-41d6-d560-dba35c8002ce@gmail.com>
Date:   Mon, 6 Jul 2020 12:38:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101319.GA26520@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:13 PM, Helge Kreutzmann wrote:
> Dear linux man page maintainer,
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including linux man
> pages) as well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometimes this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a
> convention not held up and sometimes we simply do not understand the
> original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once in a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to convert into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. If future reports
> should use another channel, please let me know.
> 
> **
> 
> Man page: getusershell.3
> Issue: Missing markup for filename?
> 
> "/etc/shells\n"

Thanks. Fixed.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
