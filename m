Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 532994A3270
	for <lists+linux-man@lfdr.de>; Sat, 29 Jan 2022 23:57:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346418AbiA2W5t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jan 2022 17:57:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243810AbiA2W5t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jan 2022 17:57:49 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B246C061714
        for <linux-man@vger.kernel.org>; Sat, 29 Jan 2022 14:57:49 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id bg21-20020a05600c3c9500b0035283e7a012so1750436wmb.0
        for <linux-man@vger.kernel.org>; Sat, 29 Jan 2022 14:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=WcIPaxpKuh1Mq0jUXR+J3Y58qMUneeDf1t4jFBMqPpA=;
        b=oPiDRxEjslz+usT03tjc78AGo7LlldjYHZG0pgZZ6fgGT7tzXEYGh+yGGeAqQ5b6gu
         4sfQwfdS3LxfWu0zCpbVtYzw0aEGsOUY3zLLM4c/zr6Zf89ZZ8DDq2xiR6UjZJCSYs5/
         S+x3VsWA9cOUA2AgrpduGWFOurCpCzVYYOAz+OL81pzn84td9mmIx6vPmsYzgpbW5V8f
         xk2lB2Qdx7MJw6PEMRsSIwg11KQOoM37oJLrPeFTxxtfVqGS9GLHYLZLbGfHcbzMICHc
         1jHM+78CoTRo0GeoivHvo4FceM/qFqtlZNZEtRs380nop4H9Y5JTTtxvi1XxN6fpk5cB
         t8rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=WcIPaxpKuh1Mq0jUXR+J3Y58qMUneeDf1t4jFBMqPpA=;
        b=un05urItpZkNbk/DYFD9D8B/3e8w8q65eYhXLd+SrSKqgvRmkedIBXv+8C5D+nOpvt
         EoGPSRR2iG09izrwNPMXyAi22WU+nrgSVB5ovuyfRdxVzvV3UbFj0pQNWMoUSlDHLhvP
         HmWeqboN4YZ6KcakbrJ8qsCCm1L8AW7GbJJjAlsKCBett/5vdlvNn59NmH3qGxqMBxE7
         T/K2w6h9dBCL0BffQjzQgcftRiOGnS5u/fBt7j0wI91qs4arZtguSyazqawaSXM44y3V
         hnNrhPEhb1zOKk9BZa1SnbqLK37d5ROGOF58Fn+d/lDxzeLE152PwEZV9K4m88n+yfix
         MndA==
X-Gm-Message-State: AOAM5333O5D1LNHqsaCaRSjlvP2u4TVNU8XT4gcuG3pl0winvdZen2hk
        lw9XiIUeq9DywfCPVhdjuOw=
X-Google-Smtp-Source: ABdhPJxsz4g3ZnwvxDaEijVw3n+MWvASgbXL1iGjQv1JF19k014yPwhNvOCImR9EQUjumPN0Y+gG1g==
X-Received: by 2002:a05:600c:3488:: with SMTP id a8mr21253935wmq.185.1643497067713;
        Sat, 29 Jan 2022 14:57:47 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a3sm9029413wri.89.2022.01.29.14.57.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jan 2022 14:57:47 -0800 (PST)
Message-ID: <cd742116-2612-f107-82e1-8f29caaf537a@gmail.com>
Date:   Sat, 29 Jan 2022 23:57:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH 1/2] time.7: tfix
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <ddac5f5b40345ba565428378e9dcecdf840e23f7.1643483384.git.nabijaczleweli@nabijaczleweli.xyz>
 <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
In-Reply-To: <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/29/22 23:40, Alejandro Colomar (man-pages) wrote:
> The change to lowercase is correct, but I'm not convinced by the removal
> of the space.  The SI says that there should be a space, and while there
> are some cases where readability is considerably improved by removing
> the space, I think this is not one of those.
> 

I just found there's a newer SI version than the one I quoted.  It
doesn't change very much for what we want, but I'll quote the current
one here for the sake of completeness/correctness:

5.3 Unit names
       Unit  names are normally printed in upright type and they
       are treated like ordinary nouns.  In English,  the  names
       of  units  start  with a lower-case letter (even when the
       symbol for the unit begins with a capital letter), except
       at the beginning of a sentence or in capitali zed  mater‐
       ial such as a title.  In keeping with this rule, the cor‐
       rect  spelling of the name of the unit with the symbol °C
       is “degree Celsius” (the unit degree begins with a lower-
       case d and the modifier Celsius begins with an upper-case
       C because it is a proper name).

       Although the values of quantities are normally  expressed
       using  symbols  for numbers and symbols for units, if for
       some reason the unit name is more  appropriate  than  the
       unit symbol, the unit name should be spelled out in full.

       When  the  name  of a unit is combined with the name of a
       multiple or sub-multiple prefix, no space  or  hyphen  is
       used between the prefix name and the unit name.  The com‐
       bination  of  prefix  name and unit name is a single word
       (see chapter 3).

       When the name of a derived unit is formed from the  names
       of individual units by juxtaposition, either a space or a
       hyphen  is  used  to separate the names of the individual
       units.

<https://www.bipm.org/documents/20126/41483022/SI-Brochure-9.pdf>

I'll add this link to the SEE ALSO section of units(7).

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
