Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0F0F1D96C7
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2020 14:55:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728924AbgESMzW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 08:55:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727904AbgESMzV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 08:55:21 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FB0EC08C5C0
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 05:55:21 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id u1so2167843wmn.3
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 05:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PylYwrPiHZiA4+V016cRyTstJBVEOzM3UtQ5E1wVYIU=;
        b=J1LIJ5reJPJ5XwFeD2eB1vTXoFftHqQZyAwTvsZ2S1aqtMZNoo8z2vVOcD1AqfQgwD
         U+Y8lsyBbf5lAEaeUEIsx3u0vPqzHS3TXejmF50Fy5KJWLVKOehtXM8VJNUjj+GAfS8t
         g/+Wcjf74kbTiaoNVOx1X+ahfyYS1JAqWQRfzbk2yK1Ungq9C1UiCoaSCDUOiE9vtTnr
         2a4bb4GPYcE1kLWkJToxw7Nx68Vm8apr9Unih+Mk4FOTiDGvwSuSg5Cy3jFli7SnNeJu
         v75z5ecSBygic3zbZmfeIYy0bAGM20BwxlGF2dEE2Lo4QblRMT5Zp3BR+WSYV9TyF/Ui
         9Guw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PylYwrPiHZiA4+V016cRyTstJBVEOzM3UtQ5E1wVYIU=;
        b=JZv2IOYngRzTETaXpFZxqkjAC+ZrqWWGbfFNlsoPQPf1RYLLLn8laRWNfwq9+v891G
         TC815wmeAcAc0VSRb7n7EBA3pFvPL7H2EvY6LfQUlU6zg/zMYHoWxPDrKod6Hyu/RaLs
         bY0Wqk3suhtNk28yxgKmBmB9c5Qi5HFnsIUu9Yd5/CnVeWKAGh73sZbd/P3lfU2kZDUZ
         jltUp+FsQkl7qIwerSV/PJ8W0qik5PhaKT9fJEswakKYfVwP28vevILG6lzAQJnklo8+
         dSCc4B0c1IGh9mCt59yLklDskqoNIrd9Uu94gft1K82DXg/vdFvee+x4QQxd2gt61Nno
         L6Gg==
X-Gm-Message-State: AOAM532nU7xyCmRt/lnbX+1Ys/XitsPZQPTPDHbmCyjBPsXA73FNGJ9a
        t90sdTsOPB05SPcYbwCiskM=
X-Google-Smtp-Source: ABdhPJzln3TXRkdzshO1jzNHvVJDzY2LnngyOlcnHRGojIK3qc3SrQyXX33XlPPAjn7Z4fPrWXmFfg==
X-Received: by 2002:a1c:7212:: with SMTP id n18mr5753213wmc.129.1589892920156;
        Tue, 19 May 2020 05:55:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id e7sm21760467wrp.0.2020.05.19.05.55.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 05:55:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        glperkins@lit.edu
Subject: Re: [PATCH] hier.7: Updating from FHS 2.3 to 3.0
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
References: <33544f6a-5983-ed08-b2f1-a7a348c411f6@deloquencia.de>
 <8bbe0eae-b4a0-3b49-84a7-245b46eb9eff@gmail.com>
 <69e7cf2a-e0d3-bc1d-0bc7-81111cf80bbc@deloquencia.de>
 <CAKgNAkhnRiowDQmjuqLrgHbgTbR-EkjokZLJPP-+7PrHtTDirA@mail.gmail.com>
 <9ebe073b-0e66-3ccd-a815-974eae0f9318@deloquencia.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <99ae2d82-e5a5-6511-a324-ee59da9642b3@gmail.com>
Date:   Tue, 19 May 2020 14:55:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <9ebe073b-0e66-3ccd-a815-974eae0f9318@deloquencia.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>>> On second thought now I am not so sure about the way how this un-listing
>>> of /usr/X11R6 is mentioned in the patch.
>>>
>>> At the moment it is 'obsolete since FHS 3.0', we could write 'dropped
>>> since FHS 3.0' or 'not mentioned in FHS 3.0 anymore' instead.
>>>
>>> What do you think about such rephrasing? Or should it be just deleted
>>> from the manual page? How have been such updates (where something in
>>> documentation is silently not mentioned anymore) handled in the past?
>>
>> I think it would be sufficient to say something like "present in FHS
>> 2.3, removed in FHS 3.0".
>> Shall I make that change, or do you want to revise youe patch?
> 
> 
> That is a good idea.
> 
> Being new to the process I would like to revise, make the change and 
> update the patch.

Okay.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
