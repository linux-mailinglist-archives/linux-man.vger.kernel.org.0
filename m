Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9159377CFA
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 09:15:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbhEJHQa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 03:16:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbhEJHQ3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 03:16:29 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31836C061573
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 00:15:25 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id z6so15422118wrm.4
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 00:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=biEVHGIAsk/PN/b/D/Tv33XewqSmycS3fB8myNpyJAw=;
        b=fDD+byyDDV/TwOZX4m2FqOiCWTz3w8vZmRUFz9BOFOQLHTCynuN1ASYuxnjLcBznLg
         yML0c6YSZHtJKTfmLCRZB+PZYg3XGZ6QYbIs85I/9k5PTO7+HcNc8bd6qGSO9290tPV+
         fn0ufQIWntCtHEbIU81SJoNSVbn3CnlKx7X3n0c2YRPwugO/VAZznRSDdtkBeq+wlH73
         jxXTSkikqyGp6sz7g9A3PNuneg9cFxtZzxBReCHI6SC8mZkYgQdxuJ3qz6eyqoWrsooW
         +j9TXfTvtjgikfA3KlNDq6bNAID0rXbvhG+A98CiL1BCuQ5Q3hh7wOVgB6YAbe/BiSah
         lD4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=biEVHGIAsk/PN/b/D/Tv33XewqSmycS3fB8myNpyJAw=;
        b=LJ1M556tEr8PzJhcN8JmePuLcUJFI+K22t7fF22mUDMjYAkoSVKTpv81WdR6Jb+MT2
         fMh1JtGcSDYTrbsHEcoyI+ltR9rwglREGF8BqBReWNzK2Pno2vsEB8UmtFEiQoIclzno
         VKylKnst/U/zaXZAeaqgDH+fDZqdj9gpRtndMXyOelXgdU4DSaejtN2oSwZoshRabI/B
         XWiWujc0whM5cD2ISyTfz/d0IxQhxuXu31TAyTiCLpj9j/bvHhlgpJniajMLBbtgLTTn
         t8OLx+QeF2rE1tcX0iDfbFyZ8bqMDNbSpD27Uke8QLshhSnuFB7+5c46Vjii40/+eq0i
         +LNg==
X-Gm-Message-State: AOAM531LWMZkwraC8zint0FMxhr8Q2Xjo1Di3e1he0dQBDOfGOlIg3Ee
        ZOAFx3tH9UG7TSDYQLS7Re8=
X-Google-Smtp-Source: ABdhPJz6d60CbYfQ5TjKS/WKDEMB4hlPhzlDVfChRhwsySJ02PLSHdNRmQ0AC1VAKVLOAakOkXq1Xw==
X-Received: by 2002:a5d:525c:: with SMTP id k28mr28494120wrc.158.1620630924045;
        Mon, 10 May 2021 00:15:24 -0700 (PDT)
Received: from [192.168.0.237] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c14sm21788461wrt.77.2021.05.10.00.15.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 00:15:23 -0700 (PDT)
Subject: Re: [PATCH] .gitignore: Add file
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-35-alx.manpages@gmail.com>
 <ada1af82-0d46-6d84-c175-02755fef5968@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <50647a51-2f01-34a6-9f04-1a350663539f@gmail.com>
Date:   Mon, 10 May 2021 09:15:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <ada1af82-0d46-6d84-c175-02755fef5968@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 5/10/21 3:02 AM, Michael Kerrisk (man-pages) wrote:
>> diff --git a/.gitignore b/.gitignore
>> new file mode 100644
>> index 000000000..9eb9fc096
>> --- /dev/null
>> +++ b/.gitignore
>> @@ -0,0 +1,13 @@
>> +# Ignore everything new by default
>> +/*
>> +
>> +# Ignore everything in man?/ that doesn't follow conventions (e.g., tmp files)
>> +!/man?/
>> +/man?/**
>> +!/man?/**.?
> 
> Why '**'? Is '*' not sufficient in both of the above?

You're right.  '*' is sufficient.  Please fix it yourself :)

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
