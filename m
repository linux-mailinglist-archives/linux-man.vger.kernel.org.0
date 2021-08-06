Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D4223E23EB
	for <lists+linux-man@lfdr.de>; Fri,  6 Aug 2021 09:23:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240879AbhHFHXT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Aug 2021 03:23:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235225AbhHFHXT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Aug 2021 03:23:19 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C3DEC061798;
        Fri,  6 Aug 2021 00:23:03 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id b128so4944210wmb.4;
        Fri, 06 Aug 2021 00:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XuFVVa+IMMyIjGvlQhvPPAoGBz5/jLQa04J04GCQSYI=;
        b=rGj5rTUQ1W/0zoNZ6p7yRnvlqLLdu1YRf1xIXyrSHiWvq9LIkAIBaqVUusPtMpM6/2
         2eFFOc3OeVPVV0rgXWRIXFYZLqmdKL0ESUFpd5poVLvcBl5cKKcmCclD/9BBlkiXFZkQ
         Zy4uKsa9Pw4r53VvxJ+wK6xkwEwvtQpoZ3TufsXQAQyS8psrs7KkSJivu8I6G7qdzguL
         wt6E+oeqbwwCBd32oKiusYAE/I1GCjmxipxXqXmlHIqrDhUI2YnLsOdmVmdMEH/B0J4O
         K8ET/q/VDtpjF4+S94EubXb5uv5MfvmaoFj0nJaoXBdA/HKx8cQc1XUP03EEA+FmfChW
         fG0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XuFVVa+IMMyIjGvlQhvPPAoGBz5/jLQa04J04GCQSYI=;
        b=qFslqxOvtR6mICXcDrMIaT8xPVvPbski+/Vut8t3UCjDa/kGlFVAo62yEiffU9seKE
         Rsa2vobN9qUA4gnadC12e7U2QKBH8RtwHG5LBVWGr9Bs+5rtsNcgUuXEhKgMhwuZuF6S
         a6bFeMUDNQ3G23MoO+dtWvCcyCWakTgc4/yMaCgZ7Rn7MCACpmVPclM7TvgEgnMYIhUy
         QzhIWrx0pR73JIOn0E3/IWmPTCQPtDiQfZ5jD2ozjZ4PXTkOaZpVvNZx9uQ4DyRb+snH
         8Q5U/wQ3oEu3JHNxCXD++a75n2obugEHEoKkjCXXXgVdOglvDlP8DPw4HI2AInKZ9na2
         i6Jw==
X-Gm-Message-State: AOAM532s7jnIKQJGZDlfl3wiTQxIR0Q6aO3UPczwSfeNqvDtK+/mI0uY
        1Imi0IEgHe2pjgMW2yOHMbDsXYO8eXA=
X-Google-Smtp-Source: ABdhPJwgJQjv/NbyE304lE5CEG8PAxWAXeHwIHnZWvsmkPXHi/AwUbxMuFcNACq2ntz5ADN8NmciaA==
X-Received: by 2002:a1c:4409:: with SMTP id r9mr1779947wma.150.1628234581727;
        Fri, 06 Aug 2021 00:23:01 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z3sm11314317wmf.6.2021.08.06.00.23.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 00:23:01 -0700 (PDT)
Subject: Re: Licensing example programs in man-pages (was [PATCH v3]
 ioctl_tty.2: Add example how to get or set baudrate on the serial port)
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, linux-serial@vger.kernel.org,
        Walter Harms <wharms@bfs.de>, Andres Brouwer <aeb@cwi.nl>
References: <20210804220808.cetleob6dldpfnjk@pali>
 <YQt8g+ECel20fA/g@kroah.com> <20210805082243.qciylqnt5g74if7i@pali>
 <YQuhl18CgJ2+LUPW@kroah.com> <20210805084410.sb5lybdri6r7t2da@pali>
 <YQumV3qljhFSau0y@kroah.com> <20210805095100.n2qkm3kdiucwt6jd@pali>
 <418a281b-441d-66fc-6929-5d29fafc459b@gmail.com> <YQwOaWqbHFG29wQF@kroah.com>
 <4757a0c3-896f-a402-acb1-7e7fcadaa907@gmail.com> <YQwl0dTUIFZf5Ax4@kroah.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <40ed8a18-cf49-f807-9227-201e994e9a5a@gmail.com>
Date:   Fri, 6 Aug 2021 09:22:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YQwl0dTUIFZf5Ax4@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Greg, Pali,

Hi GregOn 8/5/21 7:54 PM, Greg Kroah-Hartman wrote:
>>> What is the license of this page?
>>
>> .../linux/man-pages$ head -n8 man2/ioctl_tty.2
>> .\" Copyright 2002 Walter Harms <walter.harms@informatik.uni-oldenburg.de>
>> .\" and Andries Brouwer <aeb@cwi.nl>.
>> .\"
>> .\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
>> .\" Distributed under GPL
> 
> What version of GPL?

I don't know :/
Maybe v1...

> 
>> .\" %%%LICENSE_END
>> .\"
>> .TH IOCTL_TTY 2 2021-03-22 "Linux" "Linux Programmer's Manual"
>>
>> I'm don't know what GPL_NOVERSION_ONLINE is at all.
> 
> I would recommend adding proper SPDX markings to all of these files.
> Even better, work to make the whole repo REUSE compliant which means
> that there is no ambuiguity here.
> 

Agree.  If Michael has no problems with that, I'll add it to my TODO list.

> But, the above license does not show up on the code in the original
> example here, and that needs to be present if anyone wants this to be
> used.

Yup.

> 
>> Still, if the code is going to have a different license than the rest of the
>> page, it could perfectly have an SPDX comment in the first line of the
>> example program.
> 
> Even if it is different, it should still be present as no one can see
> the license of a man page "easily" when reading the documentation
> through normal tools.

Yup.

> 
> thanks,
> 
> greg k-h
> 

Pali,

If you want to specify a specific license for your code, add 2 SPDX 
lines according to REUSE <https://reuse.software/>.  If not, I'll assume 
that you don't care, and when I fix the pages to show the license (which 
in this case I'm not sure which one will be, maybe GPLv1) your code will 
use that same license.  I'll take care of any necessary adjustments such 
as providing  the license text in the repository; you don't need to do that.


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
