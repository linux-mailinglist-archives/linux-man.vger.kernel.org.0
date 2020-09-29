Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7395F27C9C8
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 14:14:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729367AbgI2MNq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 08:13:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730425AbgI2MNa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 08:13:30 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1E5DC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 05:13:29 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so5098909wrm.9
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 05:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XpvyQmIXaETgSsXSTgBXjQSnqZOsonmWkou1jfMJVCE=;
        b=lg6KHqORO74xDjexmQsfStY65IiNv/b/XaFOFNc+GFPSirvFkZM3SCMOeIsTZWIBRm
         prZzNQFDpxWc74OP1fIZduAkqEcw9Teb6+ujD7zI/x5teoCz8JAR4q5scbbHdPYI1LHV
         qkUy900ij4A4xtCL63rms5cWbTSCqr1vuaO4uqwmqVmEp3GZEumplHnkpt1Rszg+SnIZ
         FHnNhDot3RDOGw5PLi5fK1Ix9mUSe7U0J+N/kpOH3QREE90FDD9zLvlAS1nD4CuLE0pH
         aZinBQTC/l6V27PshTi33fNJ73D/KZyfjoGIjfqOgZhNdZYe/a/cZsglweLgiMUVSBd/
         4obQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XpvyQmIXaETgSsXSTgBXjQSnqZOsonmWkou1jfMJVCE=;
        b=ITiqYISCNOi0Dv2Q7p9klEk0JMMhnlA7IiEJBd653Wq/H7PLaE44WZ2zjDMA3Em4VO
         WDYL6p+32Xsh2BehVcVLYWoVw4VYloY83RyJmC3LIUh3hbzD45LJeSdHg26qqk+iyyx8
         G2j05w0n37UnOJd1/2B0kpB4xwpTjEFp1Jkca4H9rWkr0qd9seys8T/V7GD5gCtTFMPE
         jZ+0lN5fl92WoFE2sY9lnRdB4Wil2VOQ7JveYt7pvN6SYqrskD0HHNRO0VRzCFQXRm79
         R/qbmA2c2W7NYx/cMITRxWCDpheN5SvIajHMi3ktJf/sghSz72UVJ0OtRzNcbB94f9Cc
         KQ6w==
X-Gm-Message-State: AOAM530sdFvl/x5IyOymNB56ZmihuzdSIaOGY4ivIiH1aSsTNE/P5a99
        69NFCvO9k4UdWrFD4I9PBajk8XSQOdA=
X-Google-Smtp-Source: ABdhPJzRUUw15Qzk91Wod1GCkBqE7HTOOYaL8gROxE06ukeDcT08rP9MHGfat7WrKh00xB9ms+JsBw==
X-Received: by 2002:a5d:68d1:: with SMTP id p17mr3839730wrw.378.1601381608249;
        Tue, 29 Sep 2020 05:13:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n21sm5240898wmi.21.2020.09.29.05.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 05:13:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
To:     Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
Date:   Tue, 29 Sep 2020 14:13:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200928132959.x4koforqnzohxh5u@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/28/20 3:29 PM, Jakub Wilk wrote:
> Hi Branden!
> 
> In groff_man_style(7) you wrote:
>> Unused macro arguments are more often simply omitted, or good style 
>> suggests that a more appropriate macro be chosen, that earlier 
>> arguments are more important than later ones, or that arguments have 
>> identical significance such that skipping any is superfluous.
> 
> After 15 minutes of gawking at this sentence, I still don't understand 
> what are you trying to say here. The sentence should be either 
> thoroughly rephrased or removed.

I must say that I too found it hard to parse. I presume, Branden,
that you mean:

[[
Unused macro arguments are more often simply omitted, or good style 
suggests
EITHER (1) 
that a more appropriate macro be chosen, 
(2)
that earlier arguments are more important than later ones, or
(3)
that arguments have 
identical significance such that skipping any is superfluous.
]]

But it takes a few scans to work that out. Perhaps break 
this into smaller pieces, or add some explicit structuring
elements to the sentence?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
