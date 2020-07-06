Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AB1A2155A9
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:36:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728597AbgGFKgX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:36:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728422AbgGFKgX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:36:23 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1960AC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:36:23 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j4so37826738wrp.10
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C/4KR176bH+mIs4iRzhh/8ayl+E3+KboQB3WGn8krNU=;
        b=fBW93Av7V5f4ZXO0rHl40hG5A6LHlcPj/3T1iylVs936AT4PnjCuiYpDsJCsf4olK8
         nf66IuYOl0yo4SjExowmBWf1hLxzOozXfiGYuNxc9c+cYuv2D6ni1ZMFK3QTRkV4lYrC
         jv+e1UQlaGOMgzNfFC2h7VOYjEWnWJZ5ljl3GhtaryijgyOmK6679wKHvZ5IE7nouKx3
         CHiYJPmUqXo4hF9+M6RRAZuGHQVSHmg+hURBvH3X6uvKezQOjoI2IcP9kn684ysp8xvY
         LRyXBfrss1TtyCxggFzBqMDYzbwycfIPzjrd0HSDgc06JI932p+TK4XnmbAd5GD8o6dd
         7Cow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C/4KR176bH+mIs4iRzhh/8ayl+E3+KboQB3WGn8krNU=;
        b=KA8XLqdBqXgZAEGRE9HSGlIOdUfwD5UzEF9QYTGJGmCPTu1DrIqXMpNEhifWRUKpTH
         KruqLA7Y8eyHbB0xaEN6UX7IB5GePh96CIYelR9FbjVkR6ZCpSBbPfqj0nIB0+XC2rFx
         cG73V/uVoZu6cU4BCsxP+HixcV4SyQdO7+uAPUYw8d+wO+0+M2JZZ0HVrQ45l3VAoDGp
         5MwLjrrFNseGJd9W+y6F+xK85O0w5pM/In2XcDruConG1oU/7c4bFnXgYPzQgVgUzqq4
         dW5y8VBg4SLNknumEakg0kzqJ0F9SlESq3BtXqe5f4D+BOmLCipVIpTYo403DEXUN3fn
         Yg6w==
X-Gm-Message-State: AOAM5314fktGqUU+CJnrBsJBqc/6Gesn3tF8T6oZSC1pY6aCvnq6WeqK
        bOXZb9ElI/YlFLvfFHFbgb/hofcq
X-Google-Smtp-Source: ABdhPJyWcbdCg8EJFoUNoFkUPTr2yFxx0HczmWXbgb44uOKkJ8tgnKE9hQSDOEGouqvlLMo3RYZFBA==
X-Received: by 2002:adf:f60c:: with SMTP id t12mr51742638wrp.198.1594031781512;
        Mon, 06 Jul 2020 03:36:21 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id z6sm22530949wmf.33.2020.07.06.03.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:36:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: execve.2, missing full stop
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101145.GA26382@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <94cba80a-4173-8e46-8663-306511a46989@gmail.com>
Date:   Mon, 6 Jul 2020 12:36:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101145.GA26382@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:11 PM, Helge Kreutzmann wrote:
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
> Man page: execve.2
> Issue: Missing final full stop
>  
> "I<envp> is an array of pointers to strings, conventionally of the form "
> "B<key=value>, which are passed as the environment of the new program.  The "
> "I<envp> array must be terminated by a NULL pointer"

Fixed. Thanks, Helge.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
