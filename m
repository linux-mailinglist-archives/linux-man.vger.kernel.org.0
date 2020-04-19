Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 657E71AFDD9
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:52:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726493AbgDSTwR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:52:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726441AbgDSTwQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:52:16 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A67BC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:52:16 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id v4so3034777wme.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5ReM48jV+joEfhS5APDRjnjkiDrBreH1HkXM+k+BumY=;
        b=a49yNiqkZvgAHGDJnwMpGLtFyPUvvrIeYGk/pA0lX5HEW0syq60EdQ4N5t0A6hvCij
         AledI5Fm8cHSWbpVRNOUXsq/7fq4Zbl1jD+46Panoz/bEkkTTaQvawE9RyyvIFX3YWjq
         F8cvCQeubm7DkFXzlUA92MqvxhFd/sSisxKjBU/8IoK1BdrjB8Vf6vNfxMOSANN6C9tA
         2wcCJvOWa0gzrKGo994wnKSynot2/f1GLpfqDq42WWZ2HTTyJkS6Mgb0KHR/hWqg3ojV
         2PuzCFKgwo/kf99mLzi7wCSrzLek1Yl7WcWTQXQZkO+P5zTW5Yolr2HHsuuWVZb4qaIu
         ITTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5ReM48jV+joEfhS5APDRjnjkiDrBreH1HkXM+k+BumY=;
        b=oi2VPLcdI3tbztCJaIS2Ro9Mq9ab+DsKuDBYUfX8nYPec9gGc7HukqO6SCPLD7ejTP
         hwyNxPBKl82WirGq7jzAcK4uGR0T2LqQWSmAzvY5UDlQcW+0E1CA9BHhSb1a1VxfFo2f
         W7kPFZMqCcUhRooapA/pmSdvByvSl3YnM0jEvmcHdIhojdTZCUASe+O4DMMLc4m86z08
         keUPENffO0Hr+xmsyU1MqVRbNUg16RI/TN9ZFJCo7lixGY0GgQnk39ZDpgriWZT+xVpX
         XxMPW+wiE12eb+nEHpbCP/rou1JRpDd01txXNkwlFBDZBvn94cHE14LuUkKfHtoYkQUT
         HcdA==
X-Gm-Message-State: AGi0PuY663ElNo+wlH2QaZJeTP8BRt184GBRxxD3IStnYp4dQ1gRegOi
        huepoBG21roOX4O03EgR8j+WZZk+
X-Google-Smtp-Source: APiQypJcbhWjEm3OtTftwUoAWOW59tvIzbwoGwJ2b5BW+mtA5Ty1LLaUKct7KTP6/y1aT9ZMuD93oA==
X-Received: by 2002:a1c:ba82:: with SMTP id k124mr14691204wmf.66.1587325934993;
        Sun, 19 Apr 2020 12:52:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 185sm4252671wmc.32.2020.04.19.12.52.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:52:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: fork(2): Missing whitespace
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064801.GA30607@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <abfb67af-c711-79a5-b1a4-1a818d984c00@gmail.com>
Date:   Sun, 19 Apr 2020 21:52:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064801.GA30607@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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
> 
> **
> 
> \\(em without whitespace
> 
> "The child process is created with a single thread\\(emthe one that called "
> "B<fork>().  The entire virtual address space of the parent is replicated in "
> "the child, including the states of mutexes, condition variables, and other "
> "pthreads objects; the use of B<pthread_atfork>(3)  may be helpful for "
> "dealing with problems that this can cause."

See previous mails.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
