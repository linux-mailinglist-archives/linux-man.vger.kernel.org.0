Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 980802EF295
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 13:36:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726077AbhAHMfu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 07:35:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725816AbhAHMfu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 07:35:50 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0A55C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 04:35:09 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id v14so7687487wml.1
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 04:35:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jc7URUZUmiy6yWHXrY6kvr7m7ek6dYZgLUH3VWsVUUE=;
        b=aU2GNSAWvPmdjKYcX0EfWxyyBfE3U2a5ZzKfs5WKwBqTBwzjEBPtFKxs5u9rxMqnYy
         B8JRSE6Wq64HXHrU4U04HYn/yS2+Rph0GQ6yazeumSQ96LHNXgcHZHBIW0fPAnWo39rH
         loCN6dXafpF1hZLIT6ZNzf9euYdCl1t7ytaxvMZ58Zje4R6eV+gi8ti1ahwYVe45cGll
         Psd2p9hHJ1y3GWskSj0cylLOR6h70kQQQPbu4o4/jTQ+gy+o5TTEZz6nqhNM+3eFAsyo
         NvokdFTNDJhfrPek3oeE6QAUMqRYEARSJ01JIn9ICHQbtBsDVa/oWkllqSN6PC4UKwp/
         FkRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jc7URUZUmiy6yWHXrY6kvr7m7ek6dYZgLUH3VWsVUUE=;
        b=nmtjQOVBDhB7jw20CubsKFMt9YqSwOG//1k7N5031qSxzTURZga6j2U5aViLqlC22F
         210dnhtZADfS8BYBa0J+LMojLgXLVHf8x+HkfNhkQgqVAaujK3rZp4H5XqbQUFGILjXK
         cfRECG4dxLc7hSvBCUSCxLh6EFWeB6G4JlWJ9U46cROu+RgqUi7SZKuRbzVbNir5B9Tf
         h0Aq3veRNcsku9Dw/NkIYX5jYGcv2nlrZuBo1fVoOVNYaLY/jFesSR61LZnsYXV0HAqt
         ttx73+ibqe89IQQsIf2tZnjuaF5lRCuvC8peb9v5mz+oKjUNNmDoUgGCd9Q0S5WBnloQ
         9pEg==
X-Gm-Message-State: AOAM530Qqj2o2hfnuEJv9MWj0P/UpL5tcUfZvt2EU3rQhcz2yZyp1PXn
        TClmcpDPRBWIXKtwwzZCSGmYNKYCVuQ=
X-Google-Smtp-Source: ABdhPJzMpMghR+FcMKaTITHbMU6CGRvNU4dUDPjRxL1j1zxQP22qkBE1hSMZmBjoalr1GZ3mthb55Q==
X-Received: by 2002:a7b:c246:: with SMTP id b6mr2937370wmj.154.1610109308741;
        Fri, 08 Jan 2021 04:35:08 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id o8sm13218702wrm.17.2021.01.08.04.35.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 04:35:08 -0800 (PST)
Subject: Re: Escaping whitespace
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <307e6584-f163-4768-ffe9-b6b4f439e4a0@gmail.com>
 <5058547d-c021-0aa9-4698-667c4917a12b@gmail.com>
 <d5e5fc9f-d283-1457-167b-d2716648656d@gmail.com>
 <CAKgNAkjntXg1yzsp3mwoH4coocUiAh_6UFHoA_2hXcaLimWn-A@mail.gmail.com>
 <9718bbf2-9cb2-7a92-d7fa-94eb6b2eb3c6@gmail.com>
Message-ID: <6b12337c-c8de-5a02-7346-d65e00ad4d51@gmail.com>
Date:   Fri, 8 Jan 2021 13:35:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <9718bbf2-9cb2-7a92-d7fa-94eb6b2eb3c6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/8/21 12:49 PM, Alejandro Colomar (man-pages) wrote:
[...]
> man3/envz_add.3:61:.RI ( *envz ,\  *envz_len )
> << this should be two lines
Or [.RI ( *envz ", " *envz_len )]
Maybe it's better on one line like this
> man3/xdr.3:184:.IR "long\ *" .
> << unnecessary
> man3/scandir.3:277:.IR "const void\ *" .
> << unnecessary and self-inconsistent
> man5/proc.5:1350:.RI ( "readelf\ \-l" ).
> << unnecessary
> man7/symlink.7:424:.I "rm\ \-r slink directory"
> << unnecessary and self-inconsistent
> man7/feature_test_macros.7:492:.IR "cc\ \-std=c99" ).
> << unnecessary
> man8/ld.so.8:313:.IR "readelf\ \-n"
> << unnecessary
> 
> Maybe I'm missing something?
> 
> Thanks,
> 
> Alex
> 
>>
>> Thanks,
>>
>> Michael
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
