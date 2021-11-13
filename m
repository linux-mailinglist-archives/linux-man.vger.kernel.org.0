Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B704144F03B
	for <lists+linux-man@lfdr.de>; Sat, 13 Nov 2021 01:27:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231618AbhKMA3w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 19:29:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231261AbhKMA3v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 19:29:51 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46D0CC061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 16:27:00 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id d3so18340615wrh.8
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 16:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=oF9LFgNYC29+0/s1wnUvZZ3w/vYynwx+4lY1XsVzzjY=;
        b=iiyv3zvRNUEIO1MM5iQE8Pzvc41YDkIL4ckracM4w068Mf6kXUdB1FX9EXnKdkECgy
         pBhHCKRMp5sGTecp5/5XBvlOfQ0vptV5aTPkOny46hWT7l2ks5Tgjgr6kwcTOJIe+rjq
         iLU6TNe5meSmL3hRlGKlzvIwtT60dwhxsEvlvziKwYZBtsuECnOK9GFUfuc00uwWYHiB
         mIVx3tx77z0lY3tqceC/Z0HKYFmGx0ZVDawH6rlaqD9eeDr9tpo7RO9o4e6okpim2zD3
         DzlEatw7zx0fTjLH7g1Ka4LuviTp8p1rlpI4pN1b2NiHaFSfrctyj9riYY1qdT5bFy4u
         J5BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oF9LFgNYC29+0/s1wnUvZZ3w/vYynwx+4lY1XsVzzjY=;
        b=eUX7C3oXAYMa/1SBn7cBK4NdAoRbjlfISlYzFWLtJj1LM8ejA4h8KsbBBmLG4/TI1i
         CkZQx7wwopKrDwXfSIGMR5/NNrkCdhN44x2ye6qiFp/JEfivFvyld2IXetWlEFlDc+pP
         vDKvT/408tzpvJpgtHkzvSLNCJId77Mt47SSslxEHWYMpvpBVgkuWDmDlSvTu6fp7Mx7
         sNYwJcHyEUb8RTQ5R+MmwWxyKY8wW1KzR5jq2brhiFb/e5na2t8kJP/Mqp6fSxCMRbOO
         Eqr3ItaLE+dmLbwJ3p0NWUrpjgJdUQb+lV2to7SgRkvhO7mAtkjzs6a0d9h3NjzIT56m
         6kdA==
X-Gm-Message-State: AOAM5325oQqehBixuQt3L9N+Rz2pGjwrk99smAS1XVL2ViqenK8X0VRP
        EmZc58w5B1fyTpOyfRtZoKtgrYZAoHkZ1Q==
X-Google-Smtp-Source: ABdhPJyLZroZOWnr2FcDkBGriXIGXdKo4N3ZCDmSg7Qyns47XW24W/Lt0rG7T2jwyvIIUVsrLCu2RA==
X-Received: by 2002:a5d:584e:: with SMTP id i14mr24367902wrf.386.1636763218755;
        Fri, 12 Nov 2021 16:26:58 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v8sm7115850wrd.84.2021.11.12.16.26.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 16:26:58 -0800 (PST)
Message-ID: <f08d3323-0fc7-45ca-a484-8e236161a6a1@gmail.com>
Date:   Sat, 13 Nov 2021 01:26:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2 redux] man-pages.7: Update nonbreaking space advice
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20211112215010.u5s5mvvs3m2wyqar@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211112215010.u5s5mvvs3m2wyqar@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 11/12/21 22:50, G. Branden Robinson wrote:
> * Advise usage of \~ escape instead of \SPACE; the former, a groff
>    extension from circa 1990, has been supported by Heirloom Doctools
>    troff since 2005 and by mandoc since 2019.  The advantage is that
>    \~ is an _adjustable_ non-breaking space, so it will typeset
>    non-jarringly both in .EX/.EE examples when filling is off, and in
>    normal running text (which is filled).
> 
> See linux-man@ list discussion at
> <https://lore.kernel.org/linux-man/\
> 20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain/> and follow-ups.

Patch applied!
It was perfect this time (I added a signed-off-by line on your behalf; 
you can add it automatically with `git commit -sm "foo"`, BTW).
See below what I received.

Cheers,
Alex

---

$ git am -s patches/recv/*
Applying: man-pages.7: Update nonbreaking space advice
$ git commit --amend   # To add your Signed-off-by line
$ git show
commit 6351ebc3829d2411b8d6339bb3129f363fd713b7 (HEAD -> main)
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sat Nov 13 08:50:14 2021 +1100

     man-pages.7: Update nonbreaking space advice

     * Advise usage of \~ escape instead of \SPACE; the former, a groff
       extension from circa 1990, has been supported by Heirloom Doctools
       troff since 2005 and by mandoc since 2019.  The advantage is that
       \~ is an _adjustable_ non-breaking space, so it will typeset
       non-jarringly both in .EX/.EE examples when filling is off, and in
       normal running text (which is filled).

     See linux-man@ list discussion at
     <https://lore.kernel.org/linux-man/\
     20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain/> and follow-ups.

     Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 96c3deb20..23015b00a 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -689,7 +689,7 @@ If the command is short, then it can be included 
inline in the text,
  in italic format, for example,
  .IR "man 7 man-pages" .
  In this case, it may be worth using nonbreaking spaces
-("\e\ ") at suitable places in the command.
+(\e\(ti) at suitable places in the command.
  Command options should be written in italics (e.g.,
  .IR \-l ).
  .PP


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
