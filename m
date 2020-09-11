Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2FE1265C86
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:32:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725793AbgIKJcu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:32:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgIKJcr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:32:47 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39F81C061573;
        Fri, 11 Sep 2020 02:32:45 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x14so10753480wrl.12;
        Fri, 11 Sep 2020 02:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CsrRmGu+6XiPIdVXhYKE5lyNfi28y3xlKzmjKHfQkRA=;
        b=PEmj39s/ZsZAeyZX0B/S5/n/Bq+2Y5/RAdT06JSEQ2vbNJ5DxWaPI5QhxoEHiLLggX
         stq/TmDh9XL7dXNwEm+huhGy2TXLQV3LxbPqQu1fZoHtGFoowxZH6OrYNRyeQ4s3tRqf
         UywJHMyd0y1Y2/4qAdcX1zagUUYJh6yMrVZdk9Vu/vo+UprdxRqQigFuAvk0oq6W/WfF
         0LgYNg5fwiDXbUtlKnLMQSdJ0BFagNmBB788PimeBZOlHitWy5M6f765Y9vECcNV+AoB
         LOjL9dX6HReUCsAqtwTcDRg5XGfx6/fxq1wEEPFqKTb0d0PRbH/kBoQDOQ79YRCP82/3
         MGjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CsrRmGu+6XiPIdVXhYKE5lyNfi28y3xlKzmjKHfQkRA=;
        b=QrMqwl8rXdaJxcKaoX/5z8ZpHoHvHF2dMamICt/jWvfYXOD73Ta3CeRiapiEQDA6KB
         MoNvDgEHrPoqJTsQv0iE6f+nCiv3h8lb3ZARAifXOCu6xY/hl2cto/zMTM/YXjcp/Sjd
         zuwF+8VBXLLqqSCHemVVmWXn+qKNAbUg+lXrRPWGbeAmQkgKztVjdGUo0jzF7mnVLt07
         24aWWFvDchfLLQFWLMONdyO+XJPvbdMDo2u/IpiuK5Av0M63Rne6G+DlYBmsK9oxOkdt
         KHzKxgIz190PnRhb0bVSINtmpOuiG0rW3xdWtF24g+oUvLaq5lXxIIcIZkmsacOkwsOr
         c32w==
X-Gm-Message-State: AOAM532TMfjt9m9WAVYBjJVmuQ5P3tpTtUB5J3Yv4al9L5KCo0QncQG1
        5wC2dVybsTTkSMXKkfDRGYOuTYl68Xo=
X-Google-Smtp-Source: ABdhPJx94cOqiey+TN1jN2RMwjAGzGD8jswZAd70U4OC4xyl3LwXfgnAkv/hkwv/QieAcb3cbEFQFw==
X-Received: by 2002:a5d:43cf:: with SMTP id v15mr1232470wrr.149.1599816763712;
        Fri, 11 Sep 2020 02:32:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id b8sm3101918wmh.48.2020.09.11.02.32.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:32:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/24] Many patches
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ab12151d-6951-2a36-2fc6-ea7eed538c45@gmail.com>
Date:   Fri, 11 Sep 2020 11:32:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I have a lot of patches here.
> Some of them are trivial, and some of them are not.
> I have them sorted by their contents more or less, 

Yes, thanks for the sorting!

> but if you
> prefer completely unrelated email threads for completely unrelated
> patches, please tell me.

The sorting was sufficient for me. Thanks for all of the patches!

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
