Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B71C14E03E
	for <lists+linux-man@lfdr.de>; Fri, 21 Jun 2019 08:06:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726057AbfFUGGz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Jun 2019 02:06:55 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:34873 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbfFUGGz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Jun 2019 02:06:55 -0400
Received: by mail-wr1-f67.google.com with SMTP id m3so5309639wrv.2
        for <linux-man@vger.kernel.org>; Thu, 20 Jun 2019 23:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IwWz7MdEkvioGQUnLO0c6GhY+i3+aCe9BRVzUehhzUE=;
        b=km/HpcmXw2c3PE2Nqipb7+YfrqTTVmyFQcCndESCTkhIn6HnwyIfJ4K0u+VLbtl3Po
         oa0OYzV0fs7P5fC7XcgN9N15DZdDR3vjSOWWBbBKN3pmgPRBITD9XICWerKCOnYkDPE6
         wix201NqNx48MA0nOBHlISQIoscsoPmMN6Zka4idMACWMRSSyVa7kKkc92DRC+IKnyGo
         B8XP3AE7+vgYb0zvb9lNDUU2s6mJgFb/3N+EKxv0RJ+s2DZXh3pU/lvkRO+60zeOnpXz
         PciIJkJ/yovH8xhCyRo/A99h3Hlx36xS4dOmyH9T7iW7PSdnJy8P1QC52y9/SiorYyEc
         ymWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IwWz7MdEkvioGQUnLO0c6GhY+i3+aCe9BRVzUehhzUE=;
        b=GXJ81kiauzRYhBL1hfI5bIheeFeOAg/F0ztUYnqgxC6drODVAwa3tMnyBquCSte5W/
         KaRhv0nfVzlPpuZdKmz4xCWma7xvf4xxuJtXP3BNkGH6sOYxBltfdnnMR8qgUFPkksP5
         CNn7tTP/Uca44NEKTMio3+5VgHmRjYwseDNY928PMpv78yP3A6f+L7lQHCd5f8FwWYJD
         N8GIfXDCJLHrkUMvaG8DYFpuI/cDdxzRVnZlMQmClnw1N8zz6MbleXbCBfDIxa0IM8BT
         eNoupZRuCiCNTTjEnt/BNnAkofLpzRFBrq4JPc7IY/3V6pRxtzk7DhX1x6M32jBxMVQ9
         z2zQ==
X-Gm-Message-State: APjAAAUYqTBoEj8NZlLdzjp3DurV8E+v2+lyRHnhGAYrdyhiOEGR79ag
        trqHHIGbDvS90XpdL/yoyjaMUIXN8wA=
X-Google-Smtp-Source: APXvYqzEKKUJIyAhW3+9j+XVRrL+34DBqwZdn8GAhBC0zQE+bsKrOPW6jDQY78ExRglHNO8PZXt70w==
X-Received: by 2002:adf:f582:: with SMTP id f2mr38246126wro.144.1561097212611;
        Thu, 20 Jun 2019 23:06:52 -0700 (PDT)
Received: from ?IPv6:2a01:cb04:634:1500:8c89:e6ef:c939:511c? (2a01cb04063415008c89e6efc939511c.ipv6.abo.wanadoo.fr. [2a01:cb04:634:1500:8c89:e6ef:c939:511c])
        by smtp.gmail.com with ESMTPSA id r4sm1268427wrv.34.2019.06.20.23.06.52
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Jun 2019 23:06:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: A small bug in ptrace(2) "Ptrace access mode checking"
To:     Alexey Izbyshev <izbyshev@ispras.ru>
References: <edd3812727362d9acb4fa0e9ef1a2840@ispras.ru>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ad91b9a7-bab4-fb55-2b1e-1c3c175b47d2@gmail.com>
Date:   Fri, 21 Jun 2019 08:06:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <edd3812727362d9acb4fa0e9ef1a2840@ispras.ru>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alexey,

On 6/17/19 10:23 PM, Alexey Izbyshev wrote:
> Hello, Michael!
> 
> I've noticed a small bug in ptrace(2) man page at NOTES -> Ptrace access 
> mode checking -> 5(b):
> 
> b) Deny access if neither of the following is true:
> 
>               · The caller and the target process are in the same user
>                 namespace, and the caller's capabilities are a proper
>                 superset of the target process's permitted capabilities.
> 
>               · The caller has the CAP_SYS_PTRACE capability in the 
> target
>                 process's user namespace.
> 
> The usage of "*proper* superset" seems wrong because (a) it'd deny 
> access in a common case when both the caller and the target have the 
> same capabilities and (b) it doesn't correspond to the kernel code, 
> which checks for a non-strict superset[1].
> 
> I believe that "proper superset" should be replaced with just 
> "superset".

Yes. My mistake. Thanks for the report. Fixed now.

> [1] 
> https://elixir.bootlin.com/linux/v5.1.11/source/security/commoncap.c#L152
> 
> Thanks for your great work on the man pages!

You're welcome!

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
