Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64EF743119E
	for <lists+linux-man@lfdr.de>; Mon, 18 Oct 2021 09:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229820AbhJRH4I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Oct 2021 03:56:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230478AbhJRH4H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Oct 2021 03:56:07 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFD6CC06161C
        for <linux-man@vger.kernel.org>; Mon, 18 Oct 2021 00:53:56 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id e12so39646795wra.4
        for <linux-man@vger.kernel.org>; Mon, 18 Oct 2021 00:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sHyJFZgYri4xb6+2VdrUT3dNLx0Fp9Te7TJ13aqsq2E=;
        b=ZPw5paBI83vh4CLfzSP6VMdTR/nEewo+7aftby2Vtk4rpPmHtYqANmS3szb6vEeZCq
         y7zC+bYQU/ll4QQCA5rTMq44C+1OOOAmTv7XJ8KX9kHeZFM849RSzG3d27q4ymCbAzsV
         cqnTAlqZjb0OJK5xyXKvwWz5+e+WmtqpBH37s8GfH6UmlBrnJf9ILC2Ia5mzRm3h62Wu
         F4cTach4OGm6Gdvab+PXoeJgjd+EFV5UVMHzj5JVjzXY1dL7YBYdNg5ksEV/bi9Vtr0O
         LKIuWl1BzZ4vdTVYDQ48YaxeYJONyETDxRQfLfgpLOnw4OctXNHyBpMue3nG5uyQXSl9
         Ge4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sHyJFZgYri4xb6+2VdrUT3dNLx0Fp9Te7TJ13aqsq2E=;
        b=W20cc8lRUhA0aBLoZBWneetUXJ+b0VUjnajcn65qbnuZLR3pAbD3nYEdwqvo/ZPRrR
         vi/OqoocxSOU3EjcspNqDP6FRJEUxJUc1lPaUMF5wT+DgVKZHwQdLnVxyc6jPA73lOxT
         9kcdYYHdHzlKaTNOk13cPXbek8Hl8Iop0eezWWztQCQMgFWBq5YnXxO2SMmOoGYO5Jla
         wsOkn3DRnUyMxTsr+23BYNcc7aMXJ+FYJL/wS2lNJh++Vf8lPCaW8afWb8U/E9dlQ+kk
         uN6dNSwaNi7tONny2NvmU6ataJn0xSSZi8nlP99i5S6sN271ArGdwB4clRCtp1MQs8fw
         lNgQ==
X-Gm-Message-State: AOAM531cvSSl53XCJA02JlD1JmNCkErzRrAfNHbhrWm1eGLPUGVWYcG3
        F1lv5w3YZNw9ZOGkH9gzxSk=
X-Google-Smtp-Source: ABdhPJzykZdYEsCV640zWugDq2Ib93xkuCqHGQc3H2G9RBM7oBX3BiDesv+skOQhlqCt1K0uPH54BQ==
X-Received: by 2002:adf:9c02:: with SMTP id f2mr34733911wrc.201.1634543635408;
        Mon, 18 Oct 2021 00:53:55 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g2sm11659013wrq.62.2021.10.18.00.53.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 00:53:55 -0700 (PDT)
Subject: Re: [PATCH] mctp.7: Add man page for Linux MCTP support
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jeremy Kerr <jk@codeconstruct.com.au>
References: <20211014070519.2037226-1-jk@codeconstruct.com.au>
 <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
 <e6a15bfbb2337b78c9e1305956e71cebd7b4328f.camel@codeconstruct.com.au>
 <20211018055719.i3rjz2brwqsygqrp@localhost.localdomain>
 <c454d2ed-a097-7a42-5300-e4c9775da421@gmail.com>
Message-ID: <8cd4544c-e174-173a-fbaa-5c23f7c3788e@gmail.com>
Date:   Mon, 18 Oct 2021 09:53:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <c454d2ed-a097-7a42-5300-e4c9775da421@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/18/21 9:16 AM, Alejandro Colomar (man-pages) wrote:
>> So we might write
>>
>> .B struct\~\%sockaddr_mctp
> 
> Okay.

Actually, wouldn't it be better to just write?:

.B \%struct\~sockaddr_mctp

This way \% applies to the whole (even if it was unnecessary for 
'struct\~').


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
