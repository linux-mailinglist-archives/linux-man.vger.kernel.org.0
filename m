Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B264327AF4F
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 15:44:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726424AbgI1Nou (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 09:44:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726409AbgI1Nou (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 09:44:50 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9F7CC061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:44:49 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id s13so1168207wmh.4
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 06:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vrcgimGURFP08wSMl81UQn6m/E7euOVQrOCiFpnBRhY=;
        b=VjOp944MxA0fXPUHPwJnNfKVf5309Jm38gNQCsAvfjJQ2oMnrpFCCGOJc8K3AMSX49
         h3ndMO5tlFACoaeKq8vR3Rx+Nq/udbrf0NvsEQCDCVntq3YxVtvdP68WSmdk3lXgORde
         Q9C97BNmBQbvdW6lN+3rzLLLYqBGbB6bxXHGViJbfMviYaRNAEYnEbqnmXtaSEVwEeFn
         kXd1KqFCAbgXmmxkC5yAoLZnSQr8c7J2v3WnofrV+D0H6MmFhk7g7eA8RL3zPzCY2D+V
         mFqSjljwJ3i8A6YPdBMR1ZdzKuCIwZBhW9qgCzGuOVvEJy2pPyOKaaWPZtC87jPErb2z
         cPYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vrcgimGURFP08wSMl81UQn6m/E7euOVQrOCiFpnBRhY=;
        b=lfp2deppMz73tWC9yLPzXOEcpOW2AzrRVcbS5xf5mqYTBD1NAAr5wBj83v9ZEjeI4p
         /dbQuZfxyzA2fL7P+0seOev2WhmDfOrMULziMbBXXSNob3RWzs5bbBeXbW5RXYCTuHk8
         wr0xcbIn7T9c1pCHUs1EuUjS5NeH8N3oKFZi/goWRY6Mjkj2nkETLzUaX5NjXhb5DcDM
         MQyFbMyKEEYzDisHNbrpyrrfArm06GXEiByaKmsIFMNCe8Jwr+YvF5Es7ZdXqMHSduBF
         raY0K4Iuul+JZ3GeR9+kBggvRHm0iGe96JeccqTuwiablE0cuVBLwRwZvu0FzUO2zcl8
         jNuw==
X-Gm-Message-State: AOAM533cdylP1Cvgygbckf/8+U+WenD7WlRnJtNL7nTT2ZjJzgPh2O/k
        Us67SQe6nViv7oHyIiwjdnc=
X-Google-Smtp-Source: ABdhPJyMzhF+yk3OqV/znADkZE8T8LIu3dha0w+VmhzsX9Ub2DDfobHBpQrro+2N8sqIoIT7zbhoCw==
X-Received: by 2002:a1c:ed19:: with SMTP id l25mr1745892wmh.49.1601300688334;
        Mon, 28 Sep 2020 06:44:48 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id n21sm1363215wmi.21.2020.09.28.06.44.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 06:44:47 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] system_data_types.7: ffix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928090322.2058-1-colomar.6.4.3@gmail.com>
 <20200928130558.4qi6jitfwxg6ccm7@localhost.localdomain>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <1fe937db-8874-a8fb-5e65-88b4b15702fe@gmail.com>
Date:   Mon, 28 Sep 2020 15:44:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928130558.4qi6jitfwxg6ccm7@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden & Michael,

On 2020-09-28 15:06, G. Branden Robinson wrote:
 > Hi Alex!
 >
 > At 2020-09-28T11:03:23+0200, Alejandro Colomar wrote:
 >> Normally, text under a section header starts in the next line after
 >> the header, without a blank line.  Follow that pattern.
 >
 > I think your terminology could confuse some people.  A section heading
 > in a man page is what is typeset by the .SH macro.  For instance, ".SH
 > Name", ".SH See also", and so forth[1].
 >
 > In the below, "aiocb" (in italics) is properly termed a "paragraph tag",
 > hence the mnemonic for the macro right before it: "TP" for "tagged
 > paragraph".
 >
 > Just FYI.

I did mean .SH:

For each type we're separating the paragraphs by description,
conforming to, see also, ...  similar to the .SH sections.

And therefore, I thought that we should use the same format for
consistency: After the title, or in this case the tag,
there should be no blank line.

However, if using .br is a big headache, I would rather not use
workarounds (as you proposed in an earlier email),
and instead just live with the blank line.  It's not much of a problem.

But Michael did already apply the patch (was it by mistake? or did you
agree with the patch, Michael?)

I leave it up to you to decide what to do, Michael.

My proposals:
If you prefer consistency in the source, I'd rather not use
workarounds: I'd just leave .PP, and accept the blank line
I see those workarounds uglier than .br.
If you however prefer consistency in the visual page,
I'd use .br, or something that doesn't look like a workaround.

Regards,

Alex

 >
 > [...]
 >> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
 >> index 361e8d411..ff0403df9 100644
 >> --- a/man7/system_data_types.7
 >> +++ b/man7/system_data_types.7
 >> @@ -66,7 +66,7 @@ system_data_types \- overview of system data types
 >>   .TP
 >>   .I aiocb
 >>   .RS
 >> -.PP
 >> +.br
 >>   Include:
 >>   .IR <aio.h> .
 >>   .PP
 >> @@ -101,7 +101,7 @@ See also:
 >
 > Regards,
 > Branden
 >
 > [1] Often section headings are written in full capitals in man page
 > source documents, which loses information.  The next release of groff
 > will feature support for mixed-case section headings with optional
 > full-caps rendering under user control.
 >
