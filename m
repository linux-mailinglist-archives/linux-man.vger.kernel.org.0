Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2BD21B068C
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 12:26:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725775AbgDTK0q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 06:26:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTK0p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 06:26:45 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 071DEC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:26:44 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id y24so10741530wma.4
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8SSA9f1Xo5F5j9gAZ+eAX4kVVjtlPF4TF01FxxruBkM=;
        b=q82H5fvxJ4szezgQCo3O2kONzpcEhjJlPQcauI2z8V/xaOJ8/+471VwLdTIdPuo2ML
         MXVMwCIjGjwVhOfRBPZBVXTQZpGK5tZelNx8maRzcH9duCGbrzcilHT8QyTwsFCwost5
         TNxEhd8G0oomX/dDGja+rBcp65+/+Rst/BqsmLKFic4fIOOZdf2jxW9pu7yaGiQZh9nM
         eGcRjHC8rvr/TEAQi0U2uwwRWjdwNQWwICrxocWYAdUPo0Q8vL90KV59bQrvzfqJvTfJ
         duoYdyA+O6I3KuuvJiiHItahmwyAwk2S7sDwBwbvGbQXcS/DOu8CLKaCJTgM5rE3dcbN
         vP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8SSA9f1Xo5F5j9gAZ+eAX4kVVjtlPF4TF01FxxruBkM=;
        b=JbNm/TEdwG9OZT7UmTFk6XfA4llwXbojAhw9FRtdLTckrRGCgDJ4A3fi9Txi4UPCoW
         z1318GTQy83YhIWM06dVMv0bOwjlb/MVAzc5/RRDHMGo2dm+aS5thORrEJgQudD6vQSG
         RH/NwsF7PMTOKpBeE+0nZyxQvp+dqnj62eKcNCNw0/tXyOooKW8bakTD3h3jOtwm1V9M
         RkIpydhPofZTz3EF/hmwqLAriuRjOkM4tZni49TOyXIdas3bPkCdl/AdYQgwWDTYTudR
         FJU6ao8t3uzFR+uJeNHw0z3njI+LLvylru1J7TNarvZmgeOd3Vi/oXu21PTKjG4NndlT
         t/DQ==
X-Gm-Message-State: AGi0Publt3iKDYVgK0P3bQTnrPn2QSoLVDYPg9e9/JTxuNomNYzFgimE
        wMzhj/YTLfuHykc0DFryseDEUzl7
X-Google-Smtp-Source: APiQypLOdd5I8ddoEjtePBhFGForh9bKv5R/ztOUQjfUe15lF4VkTd/YDIFVU08Oc/CX89c3StOMhw==
X-Received: by 2002:a1c:9e43:: with SMTP id h64mr16766867wme.0.1587378402621;
        Mon, 20 Apr 2020 03:26:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id t16sm736325wrb.8.2020.04.20.03.26.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 03:26:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: On bug bombing
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064811.GA31185@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <62162aec-6dfa-18b9-b370-00d772f3e7b7@gmail.com>
Date:   Mon, 20 Apr 2020 12:26:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064811.GA31185@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

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

I am torn between saying thank you for all the effort you
clearly made and saying PLEASE DON'T DO THIS!

Submitting one hundred plus bug reports at the same time
is _very_ burdensome for an upstream maintainer. Honestly,
if it had not been for lockdown, I might simply have ignored
the whole series of mails.

In the future, please do not wait for  huge backlog to build up
before sending me reports. (10 reports at a time is fine; 100, 
not so much.)

In any case, thank you very much for your many reports.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
