Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75B10328085
	for <lists+linux-man@lfdr.de>; Mon,  1 Mar 2021 15:17:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232845AbhCAOR3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Mar 2021 09:17:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231889AbhCAOR1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Mar 2021 09:17:27 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 550C4C061756
        for <linux-man@vger.kernel.org>; Mon,  1 Mar 2021 06:16:47 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id u125so14631665wmg.4
        for <linux-man@vger.kernel.org>; Mon, 01 Mar 2021 06:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RiegVwWKEheFYDzlOmbQ01uCackpCblgp6YWg2wwoaE=;
        b=Xmb6bezJPn+TH7BYnCoYiva3cQPVIyYM0hs0/lGEZtLJ9VAvDAzMnMOH4Ut+Bs1kTH
         D2ZRUBGhaiEeZkvbh+CUUbvEEzIXVM6G2Y1g4OnHsvL0JvhGipeX570yEuY6hmu6cdsw
         iZ46pqY2PCvYe5w5ZAvOh/v7xF6KBLOYWsR73IB6RIZ4sMUuqawWTOGGrunhwGgxiu0t
         2bzcNKnRK4fDsGwpUebVzzen2yh7CPZgy4XgaAt7fW+UfrF+Br1VEYFV5kMGzwCamCgh
         AD3I2pE+X7wVDsxp4tMgJHv5JMKBSumOqn24r7YIcxwUFvelslwJXYC0dRrpwoWhvDhf
         qLYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RiegVwWKEheFYDzlOmbQ01uCackpCblgp6YWg2wwoaE=;
        b=L0MonyvWNESkkCJmYydPdp+FWL4fx4faCR6j1hJCn8Xldcyv30sFIWDTEjGLs7QfPJ
         A1OEXXGcyqDlT3jOGlNQK7j/EEJtOuUoFfTaXWHeYh+/DerM5IJ3aBWQPUohejmZs1SH
         u2BNkaHJiuL0SnCAHoBvyUupAg1oda7M4bwYTd7IdenUPANAKioQR96NrgeGF1HjdO0A
         Gb5KfLXsyhWfWPopnFP9v2OuImzzheWq6/SPP7ihXcy8N6Rt6k7Uro3/3Gvueq+DY1Ye
         JEWaG7N7OS6e1qo5Y15kJV8UIwNGXq9sHGUIEJMoPiVMxZvZiQHv7+fMDhDJz3jaUJ1n
         1L8Q==
X-Gm-Message-State: AOAM532ZLIe5gjdl/l56L9NNaKPeUdQMfL2bXOwpQhJo9xJeRjDxu/rg
        qGUiIvJ+2piPGCnMHLBOEbK5uE4yYZ955g==
X-Google-Smtp-Source: ABdhPJw+kgfjUBhJSGWsoGSrZusTKR+qrunYl5BD3no6XjMnQh3ao43dILlaLkHT+12T3b6wVfYk5w==
X-Received: by 2002:a05:600c:4eca:: with SMTP id g10mr16361283wmq.149.1614608206095;
        Mon, 01 Mar 2021 06:16:46 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id a5sm26173359wrs.35.2021.03.01.06.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Mar 2021 06:16:45 -0800 (PST)
Subject: Re: [PATCH v9] scripts/bash_aliases: Add useful functions
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>, Walter Harms <wharms@bfs.de>
References: <20210215131522.450666-11-alx.manpages@gmail.com>
 <20210219143221.108935-1-alx.manpages@gmail.com>
 <CACKs7VAD69B2+rRPkXLwy0YtVOswvbqJjvvMNQ_rdQoBjF-sow@mail.gmail.com>
 <072ee0c3-f30f-9da3-1b3f-37b5bc095806@gmail.com>
 <CACKs7VAwN6_ibvEhNsnsNsS6PnncCmjGEuKuBs-P5qMXNw2Vww@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c0a29abe-ade4-d79c-31ec-6957de7e9ef0@gmail.com>
Date:   Mon, 1 Mar 2021 15:16:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <CACKs7VAwN6_ibvEhNsnsNsS6PnncCmjGEuKuBs-P5qMXNw2Vww@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 3/1/21 11:19 AM, Stefan Puiu wrote:
> On Sat, Feb 27, 2021 at 7:16 PM Alejandro Colomar (man-pages)

> I've always used find -name, I think most of the time it's enough. But
> I can understand that people might prefer writing certain snippets in
> a certain way, and you need to be comfortable with scripts you are
> maintaining.

Yes
> 
> Actually, as far as I can tell there's not much difference
> performance-wise between the two, as far as I can tell. At least when
> searching the kernel source on my Linux VM. So it seems I'm wrong on
> that point:
> 
> stefan@spuiu-vm:~/rpmbuild/BUILD/kernel-3.10.0-1160.2.2.el7/linux-3.10.0-1160.2.2.el7.x86_64$
> time ( find . | grep '\.c' &>/dev/null )
> 
> real    0m0.076s
> user    0m0.031s
> sys     0m0.046s
> stefan@spuiu-vm:~/rpmbuild/BUILD/kernel-3.10.0-1160.2.2.el7/linux-3.10.0-1160.2.2.el7.x86_64$
> time ( find . -name  '*.c' &>/dev/null )
> 
> real    0m0.088s
> user    0m0.016s
> sys     0m0.066s

It seems that in real time, piping to grep is even faster than using 
find options :-)

Nevertheless, pcregrep is the bottleneck in these functions.  So I guess 
it would make absolutely no difference.


> 
> Well, I understand the sentiment in those texts, but I would argue
> that finding files by name is a core functionality of find :).

Yes, it is.  However, I think the following applies to grep and find:

"The use of cat to feed a single input file to a program has to some 
degree superseded the shell’s < operator, which illustrates that 
general-purpose constructs --like cat and pipes-- are often more 
natural than convenient special-purpose ones."  [Program design in the 
UNIX(TM) environment]

At least to me, knowing the more general-purpose grep, is easier than 
learning the special purpose find -name :-)

However, the filename options to find may be necessary in some specific 
cases, so I'm not blaming them, only their syntax.  And as long as my 
use cases are simple enough to work with grep, I'll keep using it.

> It's
> true that other extra functionality might not be exactly warranted,
> and yes, '-print' feels kind of weird.
> 
> Thanks for bearing with me,
> Stefan.
> 

You're welcome!  Thanks for commenting on my scripts! :-}

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
