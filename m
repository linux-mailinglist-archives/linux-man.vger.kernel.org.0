Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F42F3DCB42
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 12:49:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231518AbhHAKtu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 06:49:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231470AbhHAKtu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 06:49:50 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64682C06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 03:49:42 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id k4so7018462wrc.0
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 03:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=A0fZRBQOGKxE68Zu2dehKDi3NmkYZFHQ/oz0A2hEPeU=;
        b=CnqBHaode0gbe8Z5seagxDs1VE/1BG/TYTiVWkwJGt3jibslTT1LUbmbZJDXkF6zLT
         LdrO9toMhCmqJLA4OZlGemzxChU7xgVm8Yqfg87bm6idSvez8PjiUSmj4I0kNtnBqkdr
         i8/+OdhH4ENltGVfcWyoRg1NR34TAsO3vn03cfVLQHwbFcudJ5xZZvb6YVG959PMyCz2
         A81RtZYuT9Bz0PEwLAB8UdUTznW4Y2md6DHWYKLdfIDHaSo+p0hAHFAmdpfDKlhDyIux
         JxD5gz8AlYlPs+Q8x7FNu0f0oLwQv4c2orXtomAut3Ms3rRrlAiypeXSSQn7PMsU3fSJ
         hk5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=A0fZRBQOGKxE68Zu2dehKDi3NmkYZFHQ/oz0A2hEPeU=;
        b=aPO+7PcDdZR9iw3y94JjsHEY6CiPhc4TXIe3Pg6jw4CRLUVSAC1NpvOTVHUTzeiMYH
         LfqHLqhDfWyLqh/X+NNIIpwN6T/kSbozl2rPnt2DjL25nQrxmgDYs4mu/DjglFmaCVsO
         vRHr/dAdYpQ8IyrORyzOxwWo+sQ7f9MoTxdhRDpplfTUTiP2xG/yhOOsJNwSugS0umpt
         w7Y4pqLjwZnHqUFzsRaD34OH2rFoJJaEUEDGNIaudNhp4xmV2HDh8/xjps+Jdr4whVsV
         90KRRKdDPTBM+1fq1PfY0lyPPGD18qRLbFkQaKJBOESsznN6tuEb1XJkhUNDWPJefjOl
         FQTg==
X-Gm-Message-State: AOAM530s3xaRWMRfnT0zYCZxAQhlv5aRbphitt8G8fzOufIamIkJ2Wtt
        sy7JFXuSD/zx+RPlTu3zR8TTp2Ci3IA=
X-Google-Smtp-Source: ABdhPJw3iLLdZbc+ASGdLj+zFLmRH18nGQbXrSv8BwDzuKyKXYQakuxrep4vBimklLqBvJEN3Ho0hA==
X-Received: by 2002:a5d:6184:: with SMTP id j4mr12331825wru.340.1627814980924;
        Sun, 01 Aug 2021 03:49:40 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c10sm7171157wmb.40.2021.08.01.03.49.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 03:49:40 -0700 (PDT)
Subject: Re: [PATCH 2/2] man-pages.7: Update non-breaking space advice.
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
 <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
 <20210801101221.poigrttumltcdenl@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <233dc372-453f-713e-13ef-cb59721e806a@gmail.com>
Date:   Sun, 1 Aug 2021 12:49:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210801101221.poigrttumltcdenl@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 8/1/21 12:12 PM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2021-07-31T13:42:08+0200, Alejandro Colomar (man-pages) wrote:
>> On 7/31/21 5:45 AM, G. Branden Robinson wrote:
>>> * Advise usage of \~ escape instead of \SPACE; the former, a groff
>>>     extension from circa 1990, has been supported by Heirloom
>>>     Doctools troff since 2005 and by mandoc since 2019.  The
>>>     advantage is that \~ is an _adjustable_ non-breaking space, so it
>>>     will typeset non-jarringly both in .EX/.EE examples when filling
>>>     is off, and in normal running text (which is filled).
>>
>> Thanks for the patch!
> 
> You're welcome!  I've found no use cases for "\ " in man pages.  \~ is
> almost always what is desired.

Agreed.

> 
>>> * Say "non-breaking" instead of "nonbreaking".  These are the only
>>>     occurrences of either in the man-pages tree, except in
>>>     Changes.old, which uses "non-breaking".
>>
>> I'll do as usual and copy here an extract from man-pages(7) :) :
>>
>>     Hyphenation with multi, non, pre, re, sub, and so on
> 
> Ahhh, ha.  Yes.  This is an impedance mismatch between the house styles
> of the Linux man-pages and groff, at least as applied specifically to
> the word "non-?breaking", which sees frequent use in discussions of
> typesetting.
> 
>> BTW, this one also doesn't apply.  I think it is probably your mailer.
>> Can you use git-send-email(1)?
> 
> Apparently not.  :(
> 
> $ git send-email
> git: 'send-email' is not a git command. See 'git --help'.
> $ git --help -a | grep send
>     imap-send            Send a collection of patches from stdin to an IMAP folder
>     send-email           Send a collection of patches as emails
>     send-pack            Push objects over Git protocol to another repository

$ apt-file find git-send-email
git-doc: /usr/share/doc/git-doc/git-send-email.html
git-doc: /usr/share/doc/git-doc/git-send-email.txt
git-email: /usr/lib/git-core/git-send-email
git-email: /usr/share/man/man1/git-send-email.1.gz


You should install git-email if you're on Debian.

apt-cache also helps if you don't know the exact name of the 
git-send-email file:


user@sqli:~$ apt-cache search git email | grep -e git -e email | grep -v 
github
git-email - fast, scalable, distributed revision control system (email 
add-on)
git-notifier - git commit email notification script
git-publish - git command to prepare and store patch revisions as git tags
ruby-email-reply-parser - Small library to parse plain text email content
svn-all-fast-export - fast-import based converter to convert repos from 
Subversion to git



> 
> I did a web search and did not find any reports that NeoMutt does
> violence to Git-formatted patches.  Perhaps it is GMail's fault?  (I use
> its SMPTS server to send mail.)  Does someone on this list have
> experience with this MUA and/or provider?  Is there a trick?

I also use gmail, so their servers shouldn't cause any errors, I guess. 
  But I'm no expert on emailing.


[sendemail]
	smtpuser = alx.manpages
	smtpserver = smtp.googlemail.com
	smtpencryption = tls
	smtpserverport = 587
	smtpPass = my_password_goes_here


> 
> This would explain my Michael despaired of my patch submissions even
> when I kept their scopes under control.
> 

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
