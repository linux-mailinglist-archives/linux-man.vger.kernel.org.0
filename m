Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D5B738DAEA
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 12:50:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231681AbhEWKvy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 06:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231679AbhEWKvx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 06:51:53 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8C7BC061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 03:50:25 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id f6-20020a1c1f060000b0290175ca89f698so9786796wmf.5
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 03:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=bXuMmZg+rhyfnm/P7gjVYKy9yWnwexkdDNP9mFHQh78=;
        b=egONO4FP8Om8uTe+epQHPC9TC33+XcPRGQ/yNvLgxVPf9X9fkEpxDHQ9JIgMgqy2Wo
         eVhBHICumb/KRRIRhv27Dwg54xMd0RHTqPtR0gxVPLslsYMqNy/QiuWoMJuzj3zOBb3u
         OueGNW7NFW/eigBSWDI+O45GvyOtiD/OOnS2Wa4Tn6RD+Yi5q22Gm7TF5Q338oPdOqy9
         brviLcO4bnRnoE5qJN6s4BsIcdIJ+vJKIrU7YW/cW/cGHgFSGtK+B6SFhbXtGoHi8+61
         pwvlDOXSwxojRiAL/4wRVF2eYJebHA7NFmUetlVtCMx6CyeyyycMfnoEIr8mUJRtA2O4
         gdhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bXuMmZg+rhyfnm/P7gjVYKy9yWnwexkdDNP9mFHQh78=;
        b=YQDUM2I8K3s3CX7xsgXZjw+fNJUwS+fKgcpgBqLo46uQfUgAXxmOle+k3aL4Z7iaDW
         dy/ZiG5ZUYmpdLdCI1cJz0kgTbqqlZ1ajIc1IS1bZzzPQrPGksjpWpgdQdtdC+9ztT/0
         r3lHoTEHnUrAVZY8ZU9oJjP7v1CLOqN6BvXU9pi6CiiAdUxDZSwQRyK1ZuKxMUJfGCBy
         Ker62wXxgL0Z6RVJRBYpOnwz8lAFtQgqNz0fbDTRDb/eyjPxPf3RnkRlKu1MkI1sSi0R
         ygdLB9OHJH7cDx9CXnOnkpoc20kBeXbFgHqOu0i1mjTk+PjHURVHhU0qwMz1Q387Twuw
         S6Pg==
X-Gm-Message-State: AOAM530pOqAmbDxUuWd2pPfGoqhNhzZ9mcIbfISafUfOZM3B/o697yeV
        lZSjoBiW3TwLwKPtkTwpxiQqdyAyW3c=
X-Google-Smtp-Source: ABdhPJy06PvQ0X9lK36gGYQF7WRU4fsoF7k4cJ00J9ZcAtckFNy60qwD3rwPrer7bZhaT5v6Qt5gmg==
X-Received: by 2002:a7b:cd16:: with SMTP id f22mr15906779wmj.8.1621767024573;
        Sun, 23 May 2021 03:50:24 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m20sm4748079wmi.5.2021.05.23.03.50.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 May 2021 03:50:24 -0700 (PDT)
Subject: Re: [PATCH] strcmp.3: tfix
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210522161750.2756568-1-stepnem@gmail.com>
 <017191f8-1cb5-c02c-b4d6-c09b7461d348@gmail.com>
Message-ID: <6ecdf243-c546-752b-7cf7-f6f190e5d5b4@gmail.com>
Date:   Sun, 23 May 2021 12:50:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <017191f8-1cb5-c02c-b4d6-c09b7461d348@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Štěpán,

On 5/23/21 12:39 PM, Alejandro Colomar (man-pages) wrote:
> Hi Štěpán,
> 
> On 5/22/21 6:17 PM, Štěpán Němec wrote:
>> With a single backslash, '\0' ended up as ' ' in the man output.
>>
>> Signed-off-by: Štěpán Němec <stepnem@gmail.com>
> 
> Patch applied.

D'oh, I forgot.  We use \e to specify the escape character (see commit 
message of d1a719857b7eb68f5e5c1c965089038dee683240).

I dropped the patch and applied the following:


     strcmp.3: tfix

     With a simple backslash, '\0' ended up as ' ' in the man output.

     Reported-by: Štěpán Němec <stepnem@gmail.com>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/strcmp.3 b/man3/strcmp.3
index c1992c184..3c5a5a6ad 100644
--- a/man3/strcmp.3
+++ b/man3/strcmp.3
@@ -143,7 +143,7 @@ First, some examples using
  .EX
  $ \fB./string_comp ABC ABC\fP
  <str1> and <str2> are equal
-$ \fB./string_comp ABC AB\fP      # \(aqC\(aq is ASCII 67; \(aqC\(aq \- 
\(aq\0\(aq = 67
+$ \fB./string_comp ABC AB\fP      # \(aqC\(aq is ASCII 67; \(aqC\(aq \- 
\(aq\e0\(aq = 67
  <str1> is greater than <str2> (67)
  $ \fB./string_comp ABA ABZ\fP     # \(aqA\(aq is ASCII 65; \(aqZ\(aq 
is ASCII 90
  <str1> is less than <str2> (\-25)


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
