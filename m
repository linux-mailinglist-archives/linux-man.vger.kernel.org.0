Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9415CBE5D3
	for <lists+linux-man@lfdr.de>; Wed, 25 Sep 2019 21:42:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732709AbfIYTml (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Sep 2019 15:42:41 -0400
Received: from mail-wm1-f46.google.com ([209.85.128.46]:34142 "EHLO
        mail-wm1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732168AbfIYTmk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Sep 2019 15:42:40 -0400
Received: by mail-wm1-f46.google.com with SMTP id y135so4927996wmc.1
        for <linux-man@vger.kernel.org>; Wed, 25 Sep 2019 12:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9jGLGPmkVpfC3GqLYcSbbd9X3WUPD68p7bqPJPuTZzg=;
        b=Sv74ZXDntu1s+u33DBi/WWdhobpFFAgt7NlZYPO/vyDkleEurX2p8wdCsbMmPatdad
         gsg+rEN2rjtefZ7g7iW9/DrC4Eo9FW+o5kAgriBq0I+Goa53TqgBwo8AERhYl4IBqf28
         0fwfGwIar8KW/c/CPQNxLWMxoCMiShffiOvPjGOPwwhoQyiIGhwny9aF0HmjKinZ/UW9
         /1++epZY9CCq6EB2FPT7sw5CL2sbGCqT8YkwTSjXRTD+NtjWPXL6Iax4CsiIH5tKFy3t
         DmqplJKCkkH9Zji4AjeU3uhltcdj6KbI6ZO3FEEidpQKgc1FCBguz9fpbLQl7rOYDIk/
         yfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9jGLGPmkVpfC3GqLYcSbbd9X3WUPD68p7bqPJPuTZzg=;
        b=e4VDqd+P0vdI8QDSxtd2vDa/hbiMfOaMgOo0A5wEJjWvSAfYjr+VfAkp+m2iLVJECM
         O3QWDBws/43VrbFaZrh8DgSpJUHU1SYJ9Pa7H3b83iJ47ROZ1+zNimrS8B6T767Tv3Qi
         lbLEf7hbyrFF70qi8B18R2hAoaPU4BddxN527M2bLzQ/CDU1mWIMeAVkRonVbJvOqr0G
         WT9iHi+dZvt9PqgPUmTLa2GHf3BKN0i9OvrDF9tJEff5FeOji+5dKGhQd6RmNbEiBapC
         0SKmQEglW+3Jc2XPLaXYz6M1T4SzB3QV5A/m9wzjjfYvyi3UOMo9bdQjSxbEmKatiS/R
         A9+w==
X-Gm-Message-State: APjAAAVU1vYIiv+FC1XzfmNS0cRQrv5U3RB+FwtmwZ3ddD+74HULG54s
        1qJ2utLb0KmQVU7mHGu6N6wtcb0R
X-Google-Smtp-Source: APXvYqwH+A8X1oBVHfMli6jhmCzJl0b+9qaQXtQt+UDznqYBhCMdgzp0i+QDW2oh8oyga8SE5X2iGg==
X-Received: by 2002:a1c:968b:: with SMTP id y133mr9004084wmd.56.1569440558250;
        Wed, 25 Sep 2019 12:42:38 -0700 (PDT)
Received: from ?IPv6:2001:a61:24d6:4e01:ef75:e978:47cd:1c50? ([2001:a61:24d6:4e01:ef75:e978:47cd:1c50])
        by smtp.gmail.com with ESMTPSA id s5sm17788wro.27.2019.09.25.12.42.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 12:42:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Man page pre & post operators error
To:     rstanley@rsiny.com
References: <a1683c1cc450bf969aca13d8f7a99f08cc07635d.camel@rsiny.com>
 <47a9114e-4e31-45fc-131a-ca0c2571066d@gmail.com>
 <a872f7e970a7d2048243f21b9fb40ad5fa929ffe.camel@rsiny.com>
 <65c8c525eb718aa77816f3fe0b47e33d3504e623.camel@rsiny.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3cdbcb38-734a-2b1e-ba12-f5e85a89b805@gmail.com>
Date:   Wed, 25 Sep 2019 21:42:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <65c8c525eb718aa77816f3fe0b47e33d3504e623.camel@rsiny.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Rick,

On 9/25/19 5:23 PM, Rick Stanley wrote:
> Hello again!
> 
> In an effort to bring the current manpage for the C operator table up
> to the current official Standard, I went back and compared the current
> manpage operator table against the C99, C11, and C17(18) Draft
> Standards documents.  I do not have access to the Official ISO C
> Standards documents.
> 
> I have attached a PDF to document my interpretation of the Standards
> against the current `man operator` manpage
> 
> In addition to the pre & postfix ++ & -- operators, I have found one
> additional change & three additions to the table.  Because of these
> appearing in 6.5.x, and A.2.1, I assume they should be included in the
> operator table.
> 
> The current table consists of 15 levels of precedence, C99 adds one new
> level and C11 adds one more.
> 
> (type) cast operator change
> 
> In the current table, the cast operator is listed on level 2 of 15
> levels, along with other operators.  In C99 this operator has been
> demoted to a new level inserted between level 2 & 3 of the current
> level, expanding the table to 16 levels of precedence.  I assume the
> associativity is also "right to left", as is level 2.
> 
> _Generic operator/keyword addition
> 
> This new operator/keyword was added in C11.  A new top level was
> created and the remainder of the table has been demoted by one level.
> 
> default operator/keyword addition
> 
> This too has been added to the new top level in C11

But, 'default' is not an operator as far as I can tell?
(It is part of the '_Generic' construct, not an operator
in its own right.)

> _Alignof operator/keyword addition
> 
> This was added to what I refer to as, the new level 3, along with other
> prefix operators. 
> 
> A new header file has been added to the C11 Standard, stdalign.h
> (7.15).  This #defines alignof to the _Alignof operator/keyword.  C11
> also #defines alignas to a related keyword, _Alignas.
> 
> No additional additions or changes to the operator table appear to have
> been made in the C17(C18) C Standard.
> 
> Please confirm my observations with the official C Standards documents.
> This is a polite request, not a demand.

I'm pretty rusty these days on interpreting grammars, but modulo
my one point above ('default' should not be there), what you say seems
plausible.

Would you be comfortable writing a patch, with a cover message 
that includes much of the text you give above?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
