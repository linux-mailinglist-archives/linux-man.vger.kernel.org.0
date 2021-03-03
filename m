Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD66432C763
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349450AbhCDAbp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:31:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390324AbhCCWCn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 17:02:43 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 612DFC0613DD
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 14:02:02 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id lr13so45268230ejb.8
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 14:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=prSuv3+r5+64a5jYVnh6CSiiexuCuBpvUnxlmd202VI=;
        b=joaaeXBjfRYvtOToGEqQLmpgBn6zbcFEczKUWj4MnGJwK5nQbkil6+AvMu0s3lxich
         af7QKM6hCDsj13uTE1nMOsiq8u9T0F+hl6OI9V7lxsFmStnOkux3n9r2az7v6kIr0SG9
         6n4cDM3JLwZAxfJeibByS+4y6Fosa6lUQ+dwoCSxUGQ4HaQvlDuozS6zfTcaR+GAox8s
         8oUut+ntPFcHZAXAVXv4YvQGEUAz/R24fzuRZ1jO+BnuWPGVctXpaZJB1qamLE3IBIWZ
         EDySbqjTX7i6I+Mv/juZwLjsCsdvVcF4igEUeeTrWhAmQvK9z5GS2MWGr/XV5H+su8Jv
         9OXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=prSuv3+r5+64a5jYVnh6CSiiexuCuBpvUnxlmd202VI=;
        b=jaLN+JBca1AQBLYNOKmmbgzYKTQSUnqHnh7xweH65jsuVQZCMVFpylvsPLGz4TVP5o
         +aDVV7/5CTv8R1Xx3Wb1wrO+dh5kFSc16qNnPozbaD5qrPw9k9w1am4j4J+qLgj/zO3z
         2EoBhkcQdxnNgBHQgciELBrTGhdAI8mudMuDB/si1JYYrwJ8XGz1qzbgLeZ2yYfpYH43
         M+wD7lbSg56QwjgVr01/a0+QN5NOQtjrDjGhY0Y9bLoyVkJblak68RZdD8L7buQH2C+I
         u9ltM4gH/p4phVxZy3z/RAcI8lWGNYvmScSKccvU6HQrbhQsb7b1myjiXS304eOejc6/
         5ZvA==
X-Gm-Message-State: AOAM5330+Xpc71MXreJtnpILIs4Do/OIggzQb1/SQJerW0C+fn0P2OoN
        f70DIAFxQnFOLZow/sFNKqlh7BwqJEVWNw==
X-Google-Smtp-Source: ABdhPJwZm6MmLMfr5MAvf9zcsLM+ISi4Pk7ga0xy/QwxgHa/AuyetFS94FEBtX1iGq32GYOYcuJi7w==
X-Received: by 2002:a17:906:3a10:: with SMTP id z16mr743692eje.483.1614808914769;
        Wed, 03 Mar 2021 14:01:54 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id d15sm8726708edx.62.2021.03.03.14.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 14:01:54 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: gethostbyname.3: Use internally consistent continuation indents
 in SYNOPSIS
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <2e87f61b-ad14-e349-1332-58c0a6755d02@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c8e62845-1f33-cd07-1159-f89d890efc25@gmail.com>
Date:   Wed, 3 Mar 2021 23:01:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <2e87f61b-ad14-e349-1332-58c0a6755d02@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/28/21 12:20 AM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> Did you leave gethostbyaddr(3) untouched on purpose?  I guess not :)

I do not recall. But perhaps it was deliberate. Because, if
the arg list of gethostbyaddr() is indented as the functions
below, then it looks a bit weird. since the continued arg
list is almost at the same indent as the function name.
I'm going to call this a tasteful exception to the rule :-).

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
