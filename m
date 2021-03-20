Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A21C342F45
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 20:32:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbhCTTbu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 15:31:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbhCTTbj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 15:31:39 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0288FC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 12:31:38 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id v4so12499737wrp.13
        for <linux-man@vger.kernel.org>; Sat, 20 Mar 2021 12:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bs+HTVOzsB84GuMJfYNHZostp1zXgO8LDoaSKTglOBQ=;
        b=mRVPkXYzrhWVT6eHnAsijqBvebiBlmr32IyIbZeUy27xiIOmWu2vCBOylaTZzuIqzS
         J1ugjuMopZdHHj1yS6dMjr0nnLhlLYbVdOIA3KIFCI3LsIjAXCPENBi0MCsJSPqltCOk
         s/N3GRc3/S0Kz94yGWqsyQJwKvk2TE6lFEI+OKjtt1nNTiag9XPKE2PIS/CYmbukGiRP
         rQBCty1z0cu3XVUMEIhniqzczJLTLWbpRuCYl44TWHnb5AvBXoIHG6KOd25mpdLO9NVe
         g1UgX/FVaLYdoIAs2ch0oLLWjK1pVIV+/bm4E0GPwdfObLZjp0q6uu7E2VzxLjtLXHLa
         kbfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bs+HTVOzsB84GuMJfYNHZostp1zXgO8LDoaSKTglOBQ=;
        b=KSyykmTfocEpOnheHNrRBQKjK+STUupLXSHZahoByLuiU4AJM6wpOfVz5ilO5/jYuM
         +Jr81lBy6ehvLC3cjoJHQOslc5lxZZUMd2hljnriCDHwt3KNOZoEJwEpfGEAHqasUWuG
         kK3fzFTb5PSp1n4MYEjBwNfBcBUyyjEm6lX4h1hC4dyvObea0WhDF/E2pqhYBvLfFSEY
         8RWmSeJGnPb81sW0/Lv9aiLa8cMdFCAFW699YJQ1LsF6teSoEbazCYpFOGTs4WnJXW+z
         pUTMASCiScsuGEanSuJI2IyxJh2/MTQnyLmE1hOPjcuRz3THQRW2QxgN64OydNx7FxW4
         q8WQ==
X-Gm-Message-State: AOAM531CeFWI1byds1Qh20yRc354++W8k/jG9g2hECdhQg2DF+9qgYQX
        eGsB4jVy3Ao1O+q6+kOP/lk=
X-Google-Smtp-Source: ABdhPJwkCE/FetgUEO0WD5PZ4lf0OFYw81wJLJAKlmKCk7mUVDqZ6kPlMJ3QzjlHE2lRLa4xRUWvHg==
X-Received: by 2002:a5d:6c62:: with SMTP id r2mr8828208wrz.62.1616268697698;
        Sat, 20 Mar 2021 12:31:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j14sm14227739wrw.69.2021.03.20.12.31.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Mar 2021 12:31:37 -0700 (PDT)
Subject: Re: [PATCH v2] errno.3: ENODATA is an XSI STREAMS extension
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Mark Kettenis <kettenis@openbsd.org>
References: <4db92b50-d9f9-f1b5-13dd-54a525e561df@gmail.com>
 <20210320114203.2329-1-alx.manpages@gmail.com>
 <8735wp1w3i.fsf@mid.deneb.enyo.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0dc5409f-dff9-cbf7-e522-e5c25df75577@gmail.com>
Date:   Sat, 20 Mar 2021 20:31:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <8735wp1w3i.fsf@mid.deneb.enyo.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian,

On 3/20/21 8:08 PM, Florian Weimer wrote:
> 
> Would it make sense to mention that this error code is reused for
> extended attributes?
> 

Hmm, I think so.  In fact, AFAICS in the man-pages, it is only used for
that:

[
$ grep -rn ENODATA man?
man2/setxattr.2:124:.B ENODATA
man2/setxattr.2:129:.\" .BR ENODATA
man2/getxattr.2:118:.B ENODATA
man2/getxattr.2:123:.\" .BR ENODATA
man2/removexattr.2:85:.B ENODATA
man2/removexattr.2:89:.\" .BR ENODATA
man3/errno.3:405:.B ENODATA
]

Proposal:

[
       ENODATA
              The  named  attribute does not exist, or the process
              has no access to this attribute.

              In POSIX.1-2001 (XSI STREAMS option), this error was
              described as  "No message is available on the STREAM
              head read queue".

]

What do you think about it?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
