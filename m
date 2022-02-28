Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C39714C7057
	for <lists+linux-man@lfdr.de>; Mon, 28 Feb 2022 16:11:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231815AbiB1PLw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Feb 2022 10:11:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237485AbiB1PLv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Feb 2022 10:11:51 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 265B281182
        for <linux-man@vger.kernel.org>; Mon, 28 Feb 2022 07:11:11 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id p9so15925636wra.12
        for <linux-man@vger.kernel.org>; Mon, 28 Feb 2022 07:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aMqATUtSWiSd6T8jnPVqIhvByQKfDngrKUiCRLbx1eA=;
        b=dYVkflkwWUZXphdIkwwFD/RJxfSdRy8UprvPi59hYbKrGt66avFSD9zF/PKZtq7sef
         5AqZuGZjlYfejsu0oOVe+Jw2BVtURWo/rStOfyuPRh39OcWmOGb/UiTHFYItSw0R6fzP
         KLVfGF60olA99Vmonbft7CR24vAjloRP91Ap/g/s726cIv31UGywY4tgaNP1yg/o1t4P
         ptlOn8zOdbrXRvVM4TCmZSlgOgZnZyZQdL6jpcw3x3eRXhYWluegAfX3K8jZOGp9R7fn
         M2afVof67ldGfYn46kRn30oE+jsViG/nLCkaLTTW6bW0u1Ym34edjKl4mYD8OiZ+4p2n
         PzYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aMqATUtSWiSd6T8jnPVqIhvByQKfDngrKUiCRLbx1eA=;
        b=e5UfXtujIPMTU3ewsqUXTAzWGkClTaVAyqC6yHq/PEHxZXiFct+sjWZiSyKhae8Qr5
         JDg06AS2GX22Kyxoi2Zd+yBOcGPaeXbni6gQ9+H9T5HiC4lNx0GhwBdjEujCyIikH3NK
         2s9KE9puI8TM/O6I+FTWMMJ5XXwEKLJh1qy6NeXUoIJKBxTqvSI369kUDwsOSbckuNmJ
         IO5K/reQGb73QCVgZVZbgmLQa5EV/KKHO0ehcr7Gl5T+aMMxZY0+2W9BiHvmOYVdaDkB
         eNEc2syHcGSJHToN/LGxyPPEehsBCSxHLUGsscBUOZhRp0s4hOf9uX1yLKD5cLrgRZdd
         1heA==
X-Gm-Message-State: AOAM532XClYeQISTk++PdDhsojK5QopcLheyaYY4b4tmEw3SqhklGykF
        PaJESHUtsUu6j5USPLP2+SkljJgoud/gXhRd
X-Google-Smtp-Source: ABdhPJwn2xGohtD5uTMkFgs7p31mAI0/TxV+5e6T9rHmEXCHSuIebB3ZMGcNBQ8815vVdrHf/RgEoA==
X-Received: by 2002:adf:eecd:0:b0:1ed:e1d3:6cfd with SMTP id a13-20020adfeecd000000b001ede1d36cfdmr15820943wrp.242.1646061069587;
        Mon, 28 Feb 2022 07:11:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 6-20020a05600c230600b0038115c73362sm11200968wmo.12.2022.02.28.07.11.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 07:11:09 -0800 (PST)
Message-ID: <2525645b-73ff-67a4-b82a-511f6b904d23@gmail.com>
Date:   Mon, 28 Feb 2022 16:11:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH] mmap.2: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20211112103938.3888-1-jwilk@jwilk.net>
 <75bc59ef-6a3e-1539-dcc3-6c6a2a411e85@gmail.com>
 <20220227185719.hszwudrkwrpzhgqe@localhost.localdomain>
 <f53acc04-ccd2-e63f-f2b2-8d51628bf2c8@gmail.com>
 <20220228131812.3mslwzg45gzyixb4@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220228131812.3mslwzg45gzyixb4@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 2/28/22 14:18, G. Branden Robinson wrote:
> Hi, Alex!
> 
>> Then, should I report a bug in groff?
>>
>> I could reproduce the incorrect formatted output with
>> GNU groff version 1.23.0.rc1.1931-35c9b
> 
> I didn't even see the run-on bold at first; I was looking for
> breaking/spacing problems.
> 
> No, groff is behaving correctly as I understand it (and consistently
> with Heirloom Doctools troff--I didn't fire up the PDP-11 simulator for
> this).
> 

Ahh, I thought I knew \c.  It seems I didn't.  I thought it was as
simple as "remove any spaces between this line and the next, but
consider them separate in terms of formatting".  But it continues
formatting too.

$ cat c.man
.TH \ec 7 $TODAY alx experiments
.SH NAME
\ec \- experiment
.SH TEST
foo\c
.B bar\c
baz
$ man ./c.man | cat
\c(7)                      experiments                     \c(7)

NAME
       \c - experiment

TEST
       foobarbaz

alx                          $TODAY                        \c(7)


"barbaz" is bold.  I thought only "bar" would be bold.


>> Okay, I'll fix that.
> 
> I'm looking forward to seeing a PDF-hyperlinked rendition of the next
> Linux man-pages release, as I've done with the 384-page
> "groff-man-pages.pdf".  :)

Might be :)
Maybe you release groff-1.23 before we (I?) release man-pages-next (if
it's me releasing, I may delay it until linux-6.0).  If that's the case,
and most distros ship it by that time, I may introduce .MR.

BTW, have you seen the changes I introduced this week?  I'd like to know
your opinion about them, if you have one, since there are quite a lot
of them:

$ git shortlog  --since 'last week' | wc -l
499


They reduce to 3 kinds of changes:

- Add LIBRARY section.  Similar in FreeBSD and NetBSD,
  but I used lowercase for everything but the first letter.

- Remove most of the license texts (all except those that don't have a
  SPDX license tag), and replace them by the license tag.  Add the
  licenses to <LICENSES/>.

- Move types out of system_data_types to separate pages, that are
  much more manageable.  system_data_types(7) was becoming something
  huge like queue(3) once was.  I also wonder if we should inaugurate
  a new subsection of man3 (maybe 3types?).


Regards,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
