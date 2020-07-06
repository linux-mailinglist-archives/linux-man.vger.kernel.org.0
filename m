Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFF932155DC
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:52:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728521AbgGFKww (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:52:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728264AbgGFKwv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:52:51 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FA60C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:52:51 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id o18so37413673eje.7
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MfclSk3xZaGPYTtQ8NZnFz2VqhzcVxuxfrBkWE6ryBI=;
        b=P8AQOfYyumq6UVfeZjsSfmg0lgvDNStoTKQJ0mc1CwUgcFMxV8fKlchtvlEeFTj8/h
         JLIxxShS7tqQ7p/PGPcUs1z8toFkVy/UvjuercP12lhL3sz3cfs7bfAJ3HAAe6r4HjF0
         57CsohT7R8YqidvcEziAZCDUOSKQP6sMwoFrODYAWqKPyzeddwyfgxAnL4CoCouhFEaO
         2aXbTZ01x/tYnFnasjThyn5pMjc9pzx44LtwHOmd29H5nAnYtU3EXQypiIDNXgQl4CZO
         3oVzotqfVuR6h01ZOjkL8OF9ubnWJWuRf7K05rdQa3windVU70Evn/iwv+wcvTfTitAQ
         Ri4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MfclSk3xZaGPYTtQ8NZnFz2VqhzcVxuxfrBkWE6ryBI=;
        b=j7Azp3qUqTH3YzyOIF9+mUaTkjoIYSX/ertM7y+Ig6YPJsFu3mduJsrgP0jmtyqgxr
         onsAjMyc3tuym3SsUPoeIx5cB0QipyUoZPJdZZWknaVmI0AzjGWsJzFTrPttUcq+xHKN
         wJ9oy4MPK0i7YmcBP+hbT51L2ZwzyWScP4XH57ylgQzSLfP7P1tcOk7sZCMMIJJpXn+W
         kR7NFl+X5yL/5yHkm5Jn1lLgSzkkbzzk/9RMHMc4PuLriT1pt+zV6LmmF6axIkN1iZtS
         86Q+RYqiYcuKAnXie3UvRl2mvMz8ICPo59b7DFfnSCLWsVmxwt7Jhc4/NKlGkHyfT/I4
         TA+Q==
X-Gm-Message-State: AOAM532fWZaYWsfEjvm67QZLWdbTsZHFX5HUouobvZtvYxbyeryK1kdg
        5nObfxJltU+rAhbqgiDI/KBvG8+s
X-Google-Smtp-Source: ABdhPJzogG6sMke2UYCnMqx87MnVjgBjEdX93IiidxPi/HiN7yU5JIreyoHMTr7Xk92eCst51ITepA==
X-Received: by 2002:a17:906:ae56:: with SMTP id lf22mr42140936ejb.59.1594032769596;
        Mon, 06 Jul 2020 03:52:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id dg8sm24688518edb.56.2020.07.06.03.52.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:52:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: shmop.2: singular/plural
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101634.GA26824@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <039c4923-5470-2607-1b1c-a7e818e0df9b@gmail.com>
Date:   Mon, 6 Jul 2020 12:52:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101634.GA26824@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:16 PM, Helge Kreutzmann wrote:
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
> Man page: shmop.2
> Issue: file is → files are
> 
> "The following header file is included by the \"reader\" and \"writer\" "
> "programs."

This isn't correct. "is" agrees with the singular "header file".

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
