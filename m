Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC963DA2F8
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 14:18:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236840AbhG2MSh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 08:18:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236952AbhG2MSg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 08:18:36 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A175AC061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 05:18:32 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id m12so1878044wru.12
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 05:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8CDsU9urLszdfaxq7McZHxikzuz7R2jK+gpzBnMGXjI=;
        b=GOc2fl7O6PijFP9d5VsoG2Zhj89y9vKDOp7rFIVp19dZx31Hg38bXYtMjAkH9NrGyY
         jqcdl6eLtimvGHyZo7LF3A2GCyAQcrtJzI2euIzgYqBMrFvwu5Due/4GUzLqxtsW+fNY
         ZFijFmqPr6w1vmMNo7T2Si6BteRNK38P4zfENpx5Ef8o5SUm5AnXqgZLEZc88FVBJZxu
         sjVpfYcsllSWgOmEQTsJ3CQRnh8hNsDkzbSe0x/9II11ObvdbY5T4i6y92nPSTYX+xeW
         Ahmq5kFXUDYTNcfKDmd8pvMj9ui7N611u1CZbTqyKRtTkeiJHkN6U3wISnx2AnT58GQ9
         8T0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8CDsU9urLszdfaxq7McZHxikzuz7R2jK+gpzBnMGXjI=;
        b=jV0ccuR3pcfmEPcqQ7d5Z/h6kRu07VRbnzyk3IpPoEBd6JtzefYuoqa9VvmJwHoFOt
         embsxwtELWtM367VUghDbXFRZJ6TJknOgsml0c4Tg/tNU3l5Fzz6F6nPL9mmPxqbXKLQ
         WxoAKfjtr8+EzDJbmkmXvbXZ1C5L9hpsPPOE1AWeENDVywny+0VqpdPrZhWS1CDnzqju
         l/R8d+ShrJqeYFBQdwjzBB0dCccX0PqH5hj20NnL44dTuVCrPXKGZecgLPrMPmuMzqrL
         Oim/4Y+cODH8DQy/ZoRd7y+ke3xPv/9q/DZNf9zv48cM+SLLagLdXNgHzKQOCw7BUEFL
         RiCQ==
X-Gm-Message-State: AOAM531jEVUNGLtwh/eKAvOBtxmmy+/HUM8bwjN2zy8I425wjtARicde
        Lczzt++Pj//sfF/OzPzEMlmguiFPRNY=
X-Google-Smtp-Source: ABdhPJxrORqUb+wsxorAUPKp6XQY3j7GjZPA6xGgtowH8TwhjIUKmhNG15BKjbpcbI9iFW7MiJT/wA==
X-Received: by 2002:adf:f046:: with SMTP id t6mr4708891wro.266.1627561111305;
        Thu, 29 Jul 2021 05:18:31 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z20sm2978153wmi.36.2021.07.29.05.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 05:18:30 -0700 (PDT)
Subject: Re: nonbreaking spaces (was: [patch] nscd.conf.5: describe reloading,
 clarifications)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <BL0PR2101MB13161790A220976723139258A1E99@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <cca56558-7749-e15b-3f97-85a304674a29@gmail.com>
 <20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <594e480c-96d4-669c-081e-d3075d5a6e7d@gmail.com>
Date:   Thu, 29 Jul 2021 14:18:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden!

On 7/29/21 1:55 PM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2021-07-28T22:31:26+0200, Alejandro Colomar (man-pages) wrote:
>> Also from man-pages(7):
> [...]
>>         If the command is short, then it can be included inline  in
>>         the  text,  in italic format, for example, man 7 man‐pages.
>>         In this case, it may  be  worth  using  nonbreaking  spaces
>>         ("\ ")  at suitable places in the command.  Command options
>>         should be written in italics (e.g., -l).
> 
> I'd like to note that \~ is a superior escape sequence to use for this
> purpose in most siutations.  The problem is that "\ " does, or rather
> doesn't do, two things: it doesn't break and it doesn't adjust (that
> is, it doesn't participate in widening when a line is justified to both
> the left and right margins, a common typesetting practice).

Can you provide some examples of rendered output with '\ ' and '\~'?
I think I understand it, but a graphical example might be better.

>  It's also,
> in my opinion, confusing to see and to write and speak about.

I'm not sure I understood this sentence :)

> 
> \~ is, admittedly, a groffism, but it is one that has been supported by
> other actively maintained troff implementations and man page
> rendererers.
> 
> Heirloom Doctools troff has supported it since its 2005-09-15
> release[1].  mandoc has supported it since 2018-12-15[2], released
> 2019-03-10[3].
> 
> (Support in groff itself goes at least as far back as version 1.02, in
> June 1991[4].)

Support looks good.

> 
> What do you think about updating this guidance?

I'm not sure I understood the difference completely,
I'll comment about it when you provide some examples.

Kind regards,

Alex

> 
> Regards,
> Branden
> 
> [1] https://github.com/n-t-roff/heirloom-doctools/blob/master/CHANGES_GR#L1143
> [2] https://cvsweb.bsd.lv/mandoc/mandoc.c.diff?r1=1.110&r2=1.111
> [3] https://mandoc.bsd.lv/
> [4] https://git.savannah.gnu.org/cgit/groff.git/tree/troff/input.c?id=351da0dcdf702cf243d26ffa998961bce2aa8653#n1270
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
