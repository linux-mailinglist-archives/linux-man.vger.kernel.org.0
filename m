Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEFB026D6E8
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 10:41:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726185AbgIQIlR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 04:41:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726153AbgIQIlQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 04:41:16 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 936A6C06174A
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 01:41:16 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x23so1125556wmi.3
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 01:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=UvXhN6j7WRaCq1QyCaul3Mjt9l1DE5tmHRCQTsAoxvE=;
        b=kwd35zh4GZDS1RFkFB5F2tgnRGqLIo1cSmu4ZsCGJ9khrA+f0V5xs/3VoDAHlJs7aq
         uvQdeiw4QMhDLsR9n3TlyzRc03O42gBRa9yU6xkf3c/vcyraI5hIOGOVHENge+B5hSgX
         92fN+7uKexlyI/6qJJuRcfv1o5eNHhcts/kpiFMDCmw6xTLU+3MCtnN8SjOKJrFc0n5K
         ZdXzubxqBveMmt8bGfbTK0lEbEGyqDLIWoNclwrKdUkyHkijrfpc8YpQL3Ed8EDYxyZc
         uZfarRw1xMsHnwjBgSZCFePs2SF83jOxhRZACiRz/PiiSxwZy65wV7sJfmwQ2xfS4VCB
         l4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=UvXhN6j7WRaCq1QyCaul3Mjt9l1DE5tmHRCQTsAoxvE=;
        b=TXX+1WEQVv/QzbtsWIXYGa6JxAUXWmQKNS7A2wqvfOQ3VZAT7lQnkduyRS5FUHWBHQ
         EdWaqDb+IOY04B1VBGxNI5canBtQ7IRbARERmDT+6khrHgd/OqY1/YGnbK61s344+BCy
         FdO7J1R17Mplr6Fz7z6VNXnKipcrVxlTX7S8oC6Z6RtDXgbqaARlgwv3sn6LmXMQ9ucW
         IiyTYpxZp9BbvbYVB5I8hTXiT21IFDgtaP4MzfUXBcpobNIDJV2lGswGq7d7CIZHs0Xs
         WO9giURzo2XAoK4KBZNJZEXOM0fv+gn6UWH56kPQoeVZ9G9lHsC0aBkcZcP1L0tA94W+
         Od2A==
X-Gm-Message-State: AOAM5312UAQY2kuqqo3hs9TfBbwYt/uwK8QMACTz88skzXaWTqMWIOIZ
        FIou+ctlj/DKv8u2Al2BIQ4xzBv/Ikd3nQ==
X-Google-Smtp-Source: ABdhPJx7WIwVPLzKmSGRnJHlJKw7OX4ehZiCAJPEsZGm8expOsFy03EsB9HbFm+vjwatmeBwItrZmg==
X-Received: by 2002:a05:600c:20b:: with SMTP id 11mr9104344wmi.147.1600332075291;
        Thu, 17 Sep 2020 01:41:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id u66sm14427842wme.1.2020.09.17.01.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 01:41:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, conduct@kernel.org
To:     linux-man <linux-man@vger.kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: [draft] Code of conduct for Linux man-pages project
Message-ID: <02fd2df7-a3dc-c28d-a929-f126f676b3e0@gmail.com>
Date:   Thu, 17 Sep 2020 10:41:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello all,

For some time now, I've been meaning to put up
a code of conduct for the Linux man-pages project.

I've put a draft up at:
https://www.kernel.org/doc/man-pages/code_of_conduct.html

The draft is for the most part a direct lift from the Linux
kernel's Contributor Covenant Code of Conduct
(https://www.kernel.org/doc/html/latest/process/code-of-conduct.html#code-of-conduct).
which in turn is derived from the Contributor Covenant
(https://www.contributor-covenant.org/version/1/4/code-of-conduct.html)

I've marked the CoC as draft, since some people may have suggestions 
for improvements. In particular, I wonder if there is something better 
than this for "Enforcement":

[[
Instances of abusive, harassing, or otherwise unacceptable behavior may
be reported by contacting the project maintainer, Michael Kerrisk, at
<mtk.manpages@gmail.com>.

In the event that you have a problem with the maintainer, there is no
formal process, but it is suggested that you send a report to the Linux
Kernel Code of Conduct Committee at <conduct@kernel.org>. 
]]

I have two doubts with the above:

In the first paragraph, the kernel CoC has by contrast an email
alias (conduct@kernel.org) that redirects to a small committee
(https://www.kernel.org/code-of-conduct.html)
to look at reports. Ideally, any project would have the same
approach. Practically, I'm not sure that it's feasible approach
for man-pages, which is a much smaller project.
(Any volunteers for a committee?)

My doubts with the second paragraph stems from the first
paragraph. If I am listed as the receiver of reports, then
what happens if someone wishes to report an issue about me?
The only thing I could think of so far is that the report
should go to the Kernel conduct committee email alias, since
the kernel is a closely related project, and the committee is
unrelated to me. I'm not sure whether that's a responsibility
that that committee would want to have. Perhaps someone there
can comment.

Of course, practically speaking, there might never be any reports
in a low volume project like man-pages. Nevertheless, I think
it's worthwhile for any project to put out a message about
desired project conduct.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
