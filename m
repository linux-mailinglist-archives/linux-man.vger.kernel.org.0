Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 522933E50BC
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 03:48:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237259AbhHJBs2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 21:48:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232781AbhHJBs1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 21:48:27 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95BD0C0613D3
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 18:48:06 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id oa17so5968258pjb.1
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 18:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Hn7bsSOnDCCDkJ0LoK1342hn2/T3kjaVFQj9OUp9nRA=;
        b=mUn0nBuw+c9gmxr71XyPCU0I5oGhLt5N7DBxhBKvgJ3lNKhG+aTGpoeoaGycFDnwJ/
         tM/zGOoox+4h5gU+9/SBQnljADKMjUwYBgluP+OuEXZ700/Mbt0g3mqRqB8bdsZnjfv8
         O588eetqJ6Q8WvtGG6LZV6ZsDYbSUrgqmch+L+lqJmXlo8tW/ZmW2WKI7ZN+kfRXRRZj
         QxuH+hXqcb7kQ8g/C9gu41Cv9bZVhXPHdy41CEg8TnH8hohbNcZran8zMyV6tgI8tkaa
         wKJoU00oY3bDEeNHqDpfmKjVrjYqIyicHfoDJOQk99PDzN1cCkitJU5rasZaAQc8/+PP
         YcCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Hn7bsSOnDCCDkJ0LoK1342hn2/T3kjaVFQj9OUp9nRA=;
        b=HO+Se/VsGQuqVlDrJ/YeUe0XxPcSku9rNJhoiQQK966kxUbhoYH5owrtBtxT614A5W
         4+8oN+fMOQe/n5goay2dNaxzGfOXnUMvGEYLxjLPZJpwYwvgyEIV0ElnE5bLop8z4US3
         QuFxjuxP6ykSjFG/w65YsLJziztnjemQhq0KWfpl0UQjFw4f3fyGWXUFEEUvQ6xDyGfR
         skjtkwBN5Hv6LeWFZ8sez275UGZLeV84pRCqbAVtGlSjLTHXxZ6Tyl2yqBvaNste50GC
         ZFfRx2tO5Z7ZsB6BK5PMAEJ5PJh6Jqc2o4LbksG98N0Pl3vOuYmstylIHze/PxTj7xX+
         nzyw==
X-Gm-Message-State: AOAM532niqhrwkfcBvow/ZvAAqnEEQh3tLSjb6w1GuJd5UIIN5y+Ssit
        jAkRglt53zVp0BgRzEmgGgPvP59TVQk=
X-Google-Smtp-Source: ABdhPJxzKvyFyiNCf3MPIPTmqsb7SipjjvuU5yC8C5jGWVF+IUEBdjMxJbGbgKE5q25pZieAmwilZA==
X-Received: by 2002:a17:902:d652:b029:12b:45c1:21ba with SMTP id y18-20020a170902d652b029012b45c121bamr5135973plh.9.1628560085897;
        Mon, 09 Aug 2021 18:48:05 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id 6sm791901pjk.1.2021.08.09.18.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 18:48:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Helge Kreutzmann <debian@helgefjell.de>,
        linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: shmop.2
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20210725170914.GA16816@Debian-50-lenny-64-minimal>
 <CAKgNAkizm0xZ3vr=mGRDgMOBZwps2RSkQxfR3vP-6Z8x_6MEJw@mail.gmail.com>
 <20210726064440.2xcxf4ri63arddxb@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fcefbb3f-d1b3-edf4-d264-c605553d3341@gmail.com>
Date:   Tue, 10 Aug 2021 03:48:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210726064440.2xcxf4ri63arddxb@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/26/21 8:44 AM, Jakub Wilk wrote:
> * Michael Kerrisk <mtk.manpages@gmail.com>, 2021-07-26, 01:02:
>>> Man page: shmop.2
>>> Issue: file → files
>>>
>>> "The following header file is included by the \"reader\" and \"writer\" "
>>> "programs."
>>
>> The existing text looks correct to me.
> 
> Yes, that's what we concluded last year:
> https://lore.kernel.org/linux-man/20200706101634.GA26824@Debian-50-lenny-64-minimal/T/

Thanks for checking, Jakub.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
