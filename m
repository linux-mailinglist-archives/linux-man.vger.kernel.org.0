Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5B041AFE13
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:25:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725891AbgDSUZQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:25:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSUZQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:25:16 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC51BC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:25:15 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id v4so3079092wme.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=J5VTSfCv1J2DC9pBLHRrlEzHfF/stR7uULp60Dlq5fk=;
        b=OQv7S2eTHtLnJXDAK2psnQPadRiITGEcF4PIQMXnXYBuXZX43OrZ6kdfd9t3Yy/7zC
         yFUwaOXH70X9x+XDcQIUg8RQGoOtPkdUMVtQemCcKD0l2VP1Br9OrBZz7tKQpUsehrs6
         Okvuvh7MwxKY+EbxI4yWCzMHXVUppiuEBYluJ28GHfFsxuUJ26STUHfBYD2jCpoHSj7E
         Tm3ybmwVsb3SY7TDdnJu1iR3+x5POAsmT0e+/VrFIn8AGDKFblnmIsvOx7lNcHcL6U0A
         fhgE0mI7SGoUxIfT6kARaDzUMS+zl8h3fUkM7OFLgKqehPYiCurMhL9IIQNV1B3iutHi
         upOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J5VTSfCv1J2DC9pBLHRrlEzHfF/stR7uULp60Dlq5fk=;
        b=P3wH+vGCjVIjwPFOdA7w+ogdkUaeEGLvmYH8dRJ6GkJ/DklhPf4VBR6zh+5qTir3GF
         +qmvAr1muerEpyGhQG6ED3e9IuN8/uq4490HjXrRVofIHPO7N5+xuB/AL54aGOFe/WJ4
         m7LmH3twW/F4g5wssy/kjC+JMxAlpxGsMpBFjOc79KowprmUqwWj4L29qxVdEqg41VAb
         Tfd0SqNzADm98hRG1ixf1YKXPqy6wZoVQmFt9Zng2zJcxArJznlSrMP2oL9Z8XGXx8N7
         WocSuJxuwOf6ZEBJfMkcGzRg5TR54yOIESUkpQzChjffSjo4iqiimynx8xg73gRGQLMZ
         mtCg==
X-Gm-Message-State: AGi0PuaKKBhnEmowdDjvGnVYx37K8ZHCVBVMM5BkRfgu2u1aESdTEgOy
        OU9aftqDAhEYAuEt/NWTXHKtAaT/
X-Google-Smtp-Source: APiQypKojDkK2ltlxWglqxdJflNuCHfBTT0gHrwMnHK3jHtLG43g4zVug/3VcinAAhltPTciEYiawg==
X-Received: by 2002:a05:600c:210b:: with SMTP id u11mr8262980wml.133.1587327914189;
        Sun, 19 Apr 2020 13:25:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id g69sm11997877wmg.17.2020.04.19.13.25.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:25:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Consistency
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064814.GA31371@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6938c0ab-aa65-56ec-fd0c-574b9a604a32@gmail.com>
Date:   Sun, 19 Apr 2020 22:25:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064814.GA31371@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> 
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
> Inconsistent spelling of multithreaded vs. multi-threaded
> 
> a)
> "Prior to Linux 2.6.28, SELinux did not allow threads within a multi-threaded "
> "process to set their security context via this node as it would yield an "
> "inconsistency among the security contexts of the threads sharing the same "
> "memory space.  Since Linux 2.6.28, SELinux lifted this restriction and began "
> "supporting \"set\" operations for threads within a multithreaded process if "
> "the new security context is bounded by the old security context, where the "
> "bounded relation is defined in policy and guarantees that the new security "

Thanks. Fixed.


> b)
> "In SELinux, this file is used to get the security context of a process.  "
> "Prior to Linux 2.6.11, this file could not be used to set the security "
> "context (a write was always denied), since SELinux limited process security "
> "transitions to B<execve>(2)  (see the description of I</proc/[pid]/attr/"
> "exec>, below).  Since Linux 2.6.11, SELinux lifted this restriction and "
> "began supporting \"set\" operations via writes to this node if authorized by "
> "policy, although use of this operation is only suitable for applications "
> 

What is "b)" about?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
