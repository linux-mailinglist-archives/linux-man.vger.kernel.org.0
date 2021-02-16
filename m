Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F9E531C906
	for <lists+linux-man@lfdr.de>; Tue, 16 Feb 2021 11:47:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbhBPKrd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Feb 2021 05:47:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229761AbhBPKrc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Feb 2021 05:47:32 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 511A7C061574
        for <linux-man@vger.kernel.org>; Tue, 16 Feb 2021 02:46:52 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id v1so12333851wrd.6
        for <linux-man@vger.kernel.org>; Tue, 16 Feb 2021 02:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kJ/PKg5D5pXPGmYru9sYltmNe8aqAage+sv8aJTAlE0=;
        b=dFPqyXqVYdNHC78f3ibZQ+/dI2qKKHj1ODhYdu4fDKzvG1xxGZyXd+JqVbucFjdL8x
         GrKVeHFuCJIkDHrgvL/VDc/JDuA7Io2o39ms0x01ueVR4690AatIWLtj3k4Zo0cUY7cp
         xoySdKarqWNs5C6ORoluJJcEodPwQC10Wf16IpeJdUc5kt5kEsoyREFMiD9fTObS+CcL
         LYEevi6R0KglgSEaeY41wHP9GTUcF+MimS4skTL58hpbe2napBgJi8hoR+AgbS91SQpW
         3k+sqlX9XZWk1FIzozeFvcSC6sOMCrXUzy/fvH0zQTgGFSrIQFa54E0DKQwEN72q/Q9r
         zHLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kJ/PKg5D5pXPGmYru9sYltmNe8aqAage+sv8aJTAlE0=;
        b=DLiqViTOsQDU7ncgFQrczbSDbJTzi5DZk5LrH2OAJ/BNrpYQUuMA8nzNrl5WZjutc5
         cIePRm1RJlW7H/yyUowrjZNJvy4jhwEmnuow2yXtSjy4bk9GD9+ClzRMjsDjpMsxDFkP
         VfkcSNOfWvaJYr0MLt1U7Ko3UTAwupDi0XKhBlnS8/bJG8YCGYd29UhOHaF6qQIC3lBB
         aApynWtSCYGA49C0CBONh4qdJxY5t1q/3zopWM7z7zM9tJBEWvmR9RpXcsszcLSBnu4c
         9L1mGNM2y0U7JmesOvFiJWW1fEZDZt2TzKwRAAxnt74+0OI5BMTL2OaeE9FNlv6gP8Xz
         ff1A==
X-Gm-Message-State: AOAM532lm/lw3DuGdYdj92QDLdUUGYv4Y9LAu/lXXv3G5HX0VlJCMyby
        j96R0rYUPMK0kdRmj9MvnuYclOej7ms=
X-Google-Smtp-Source: ABdhPJzdpoOE8np5w3ayJRHX578hO57aRTo59SK83k43MQuM/QSHwj3QckkUNz2GKFNHoUbMVlejNQ==
X-Received: by 2002:a05:6000:114b:: with SMTP id d11mr7376660wrx.318.1613472411095;
        Tue, 16 Feb 2021 02:46:51 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id f17sm26934171wrx.57.2021.02.16.02.46.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 02:46:50 -0800 (PST)
Subject: Re: make html: Errors
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <62633911-34b5-e5da-1fa1-aaaf3e19ba1e@gmail.com>
 <3dd7707d-6ea6-c68b-8f53-15e743f273c3@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <28981140-bfc6-d7f7-697c-2479af764311@gmail.com>
Date:   Tue, 16 Feb 2021 11:46:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <3dd7707d-6ea6-c68b-8f53-15e743f273c3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2/16/21 11:23 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 2/15/21 10:11 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> I tried to render HTML pages with the Makefile.
>> I had some errors, even though the operation succeed (I have the
>> resulting HTML files, and the contents look good in the browser.
>> Has it happened to you before?  Do you know how to solve it?
>> I copied here the full error messages, in case it is useful.
> 
> There's a bug in the script, it seems. Not all of the pages
> were being correctly processed. In particular, link pages
> (".so dir/page.n") were not being correctly handled. I think
> the patch below fixes things. Can you test and confirm?

Yes, it fixes the error about link pages.  Now I have:

$ make HTDIR=.html/ html
man2html: Unknown operator .
man2html: Unknown operator .
man2html: Unknown operator .
man2html: Unknown operator .
man2html: Unknown operator .
man2html: Unknown operator .
man2html: Unknown operator .
man2html: Unknown operator .
man2html: Unknown operator .
$

This seems to be an error while parsing <elf.5>.

> 
>> I guess this is what you use for generating the online pages, isn't it?
> 
> No, which is why I never noticed the bug. I suspect hardly anyone
> tried "make html" for a very long time.
> 
> Cheers,
> 
> Michael
> 
> 
> diff --git a/Makefile b/Makefile
> index 328418e8e..ea31eab80 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -17,7 +17,7 @@ html:
>         for i in man?; do \
>                 [ -d $(HTDIR)/"$$i" ] || mkdir -p $(HTDIR)/"$$i"; \
>                 find "$$i/" -type f | while read f; do \
> -                       (cd "$$i"; man2html $(HTOPTS) `basename $$f`) | \
> +                       man2html $(HTOPTS) $$f | \
>                         sed -e '1,2d' > $(HTDIR)/"$$i"/`basename $$f`.html; \
>                 done; \
>         done; fi
> 

git am failed to apply it.  I had to apply it manually.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
