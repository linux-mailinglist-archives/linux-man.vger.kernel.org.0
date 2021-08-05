Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F83C3E0EB9
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 08:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbhHEG6v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 02:58:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229869AbhHEG6u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Aug 2021 02:58:50 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 040A3C061765
        for <linux-man@vger.kernel.org>; Wed,  4 Aug 2021 23:58:37 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id k4so5123267wrc.0
        for <linux-man@vger.kernel.org>; Wed, 04 Aug 2021 23:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qAhLaNGjFbLRH1f7vlsJsR9uQpjCBvYKVyPcy0Jjr7M=;
        b=ZdPMgUjEIpVWkKxy3jb20/guC5MIYBdlaRIe+WIFC1H9a3gevX1nuFDuPfi7Gh/V1Z
         jLgQvmHJuHptOOXDOSNnI8XYG3Bva7fDsUWH3TlSC9mqbDnGdm8SPB83i3L5ygZl6jwV
         PU21+z7GIqjoAG9+eZeGer+slbTzXL7LCA9E7cxSWm2lEPO0+ykJQJywQ0acfZgDPPcs
         AKkmySe8wiil9QaEeHclUPZUyt55Irep4zh3a3xPoPTCodfXqcGrRnITBmttXsEI9poA
         JF7CaJUXDLoD+ILPEVr3nNs8P4LWYoXNocHOjGn8tfG2dytxQBHbWqdYhxfAEOuwfmd/
         iKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qAhLaNGjFbLRH1f7vlsJsR9uQpjCBvYKVyPcy0Jjr7M=;
        b=KSpQ7JqttmXJu/Y096WDMRauf81b5UKYx10cnlmyrV5EvlxNMJ8XcAAFC4TjNuzhs/
         9kvHdLl0pm5oDhS4Zw1AC3LJnJEqeL857Esymzdkt1PdT24F18qBuFJNgmJudlT3CsxE
         N160igTpFrx3t/sQfh7zLqCeWef9jJbtMCKCKynQcvjDdZDJWBeCwSqBSJV6iuUep2Tt
         chIMcWhpuogD0lpnIz1xYTVYQz/q+SiOxT82hEzxpJATk7zLDkhg+67Y0DiQz/WDYMm8
         tvqm6YaYbVcSgeHg5C5PmomkpkyoLrK8/Dt2VQyTNVEYQiUAi46QCuhJ+Mc8eFkFo/+X
         7MFA==
X-Gm-Message-State: AOAM530zf/YcJq1ntA3GAB6V2+T4t9mtSlypz1DZgBHcxBeV8HeVFRev
        yC44BovZh9NmQuSSoUmVuJM=
X-Google-Smtp-Source: ABdhPJyrHxt1K8whnrXYJdFD4u4Mf749EclemcvvzhHNDjny6KdQghXvsBYZi7VtxIw4PAgL94rh8A==
X-Received: by 2002:adf:eb4a:: with SMTP id u10mr3266641wrn.11.1628146715687;
        Wed, 04 Aug 2021 23:58:35 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id h4sm5231843wru.2.2021.08.04.23.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 23:58:35 -0700 (PDT)
Subject: Re: [patch] nscd.conf.5: describe reloading, clarifications
To:     Greg Banks <gbanks@linkedin.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        DJ Delorie <dj@redhat.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <BL0PR2101MB13161790A220976723139258A1E99@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <cca56558-7749-e15b-3f97-85a304674a29@gmail.com>
 <BL0PR2101MB1316FA480EE808D34FA523EEA1F09@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <02da5334-1635-8aa9-c4e6-deb0161a848d@gmail.com>
 <BL0PR2101MB13161815183CB7E6F5D8E61EA1F09@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <d2de0e56-8feb-24dc-fc92-ebdc3647bee5@gmail.com>
 <BL0PR2101MB13161650B82F826B74E5DBD0A1F19@BL0PR2101MB1316.namprd21.prod.outlook.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <01329467-8747-ec5a-6f92-a5466ed64eed@gmail.com>
Date:   Thu, 5 Aug 2021 08:58:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <BL0PR2101MB13161650B82F826B74E5DBD0A1F19@BL0PR2101MB1316.namprd21.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

CC += Branden


Hi Greg,

On 8/4/21 3:40 PM, Greg Banks wrote:
> Hi Alejandro,
> 
>  > Could you please use the same method you used for sending v1 to send 
> an v3? \
> 
> I did but apparently the email stack at my end insists on adding some 
> randomness to its behavior.  I'm going to try and step outside this 
> email text damage drama and send a pull request separately.

Hmm, not good.

The worst part is that as your emails are not plain text, they don't 
reach the mailing list (only the first one did).  If you can't solve it 
(I suggest using git-send-email(1), to avoid that randomness), I suggest 
that you send the email anyway as good as you can (better send it both 
inline and as an attachment, so that it is more likely that one of them 
will apply), and if it applies to my tree, I'll apply it and also 
forward it to the list as plain text.

> 
>> Also, please see some comments below.
> 
> Applied, thanks.
> 
>> >> +.PP
>> 
>> That's not correct.  Did you copy that from another place?  If so, 
>> please tell me because I should fix it.
> 
> No, it's a habit left over from the last time I contributed to this 
> project (in 2008).  It seems the rules have changed.
> 
>> We use that between paragraphs, but not before the first one nor after
>> the last one.
> 
> Ok, sure, but in that case the description of .PP in man(7) is wrong
> 
>         .PP      Begin a new paragraph and reset prevailing indent.

That's something that I had pending to address from Branden.  That page 
is a mix of things that should go into man-pages(7), groff_man_style(7), 
and groff_man(7), and then man(7) should be removed and replaced by a 
link page to groff_man(7).

For now,
You can read groff_man(7) (provided by the groff package), which tells 
us that .SH already does what .PP does (start a clean paragraph) (and it 
does more things, of course).  The thing is that if you add .PP after 
.SH you will have a blank line (and this an exercise of my mental groff, 
which I hope doesn't fail me this time), and it would be a bit weird to 
have a blank line after the section title.


Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
