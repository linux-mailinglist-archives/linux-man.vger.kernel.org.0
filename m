Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29A2028FE6E
	for <lists+linux-man@lfdr.de>; Fri, 16 Oct 2020 08:43:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394354AbgJPGnz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Oct 2020 02:43:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394351AbgJPGny (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Oct 2020 02:43:54 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53B53C061755
        for <linux-man@vger.kernel.org>; Thu, 15 Oct 2020 23:43:54 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id s9so1391424wro.8
        for <linux-man@vger.kernel.org>; Thu, 15 Oct 2020 23:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CO+4/Z2fsvVmdTzTfVGlHNXEY38S2FaxfJ7cbdyK7rE=;
        b=JmUz+nSvjJFxBGH8kmROBQ3Hw+iLNcIk5zUVKTuztWmVC2YwmeEMSgenKIGCjW1glr
         rgK5d8RfZ6RbXKWCBquqLC2VVENV++Nao7HLsuKNm9bDN1scz4v5t+KfIVb5Mqw/sZYB
         v4WHrL8L1T1CteHG7lu0GI7nTS20rxcanBYBae2gcdtm2tYynVHvzddW/2cvsa17uGT1
         tw2AEedmBjy9upTGxE96N6IW3/E+M3ifVqXa+BlpmHhHzLDyz6FPYxuVuNq8hkApqYiZ
         bykuH+tI6/ClN5blDGX0nvnDB9b0ALBYB/nfaIRcQGPQjntN+cU/hn1ORjWAm/Cx4rxK
         usIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CO+4/Z2fsvVmdTzTfVGlHNXEY38S2FaxfJ7cbdyK7rE=;
        b=RQkDnPXdPkvMUrdKpVZajRoVqPzvuSQ7uvtCeMRlyYzOk9Z4IOTWSOcXC8OEaX9RpU
         PTFumebvO/b16DYaF588DP5LqZQItPbvOEMDeKjDZOrYQxpnYQRvBZm3WSWMMV+LZeQq
         GgxyN4jlnKied8JP8DdaQ3e9IX5kztIOJGCgTkmmBRa37hksSc/cqBXwWVXuk+4Q3blu
         YkVGUPLC7IAJBp7m0ARRpHm4BUZh1tPvqcJXYzNFXlTz8d6qYd7dVh6i1FzGqChm1Ecf
         /Zv1glFkRLvGsNUoWCLCs8WwlniHx3eHgR9I2OmnqvCnWQkLbfhnugZ9C31eAelFgh7r
         S3cA==
X-Gm-Message-State: AOAM533WCkg4K3ge48FQP/D1YvoY/Qp6hNCh7qS87v4Txv2G10lmDyF3
        tK5JbB/bOhRPXK+zepFcXDM=
X-Google-Smtp-Source: ABdhPJwRh4BdaAQHZyUyWuRT94UCtpVSV6uU7bf/bLlK7948/Qz/lph5b8naAu3aIXovwETpCiPguQ==
X-Received: by 2002:adf:8362:: with SMTP id 89mr2167984wrd.280.1602830632946;
        Thu, 15 Oct 2020 23:43:52 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id u15sm2109888wrm.77.2020.10.15.23.43.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 23:43:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Ard Biesheuvel <ardb@kernel.org>,
        David Howells <dhowells@redhat.com>
Subject: Re: man kernel_lockdown.7
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        Matthew Garrett <mjg59@google.com>
References: <8831670f-1e25-d05b-02ab-c370e35a4143@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7b9485d9-e286-a61e-63b6-15459dfc1f17@gmail.com>
Date:   Fri, 16 Oct 2020 08:43:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <8831670f-1e25-d05b-02ab-c370e35a4143@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Heinrich!

On 10/14/20 6:51 PM, Heinrich Schuchardt wrote:
> Hello Matthew,
> 
> With commit 000d388ed3bbed ("security: Add a static lockdown policy
> LSM") you added the following line to security/lockdown/lockdown.c:
> 
> pr_notice("Kernel is locked down from %s; see man kernel_lockdown.7\n"

This feature was in limbo for a very long time, but now I see that
it was finally merged last year:

  commit 000d388ed3bbed745f366ce71b2bb7c2ee70f449
  Author: Matthew Garrett <matthewgarrett@google.com>
  Date:   Mon Aug 19 17:17:39 2019 -0700

      security: Add a static lockdown policy LSM

I missed that that had been merged.

> The manpage is not available on
> 
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git.
> 
> I found a rather outdated draft by David here:
> 
> https://lwn.net/Articles/735564/

I see that my Fedora system has a slightly different version
of that page (obviously added a Fedora patch). I'm not sure
which is more up to date; probably the Fedora page.

> Is anybody working on it?

Not so far. I suppose the simple thing would be to just merge
the page that exists on Fedora. But I've no idea how much it
needs tobe updated to reflect reality. Perhaps someone in CC
can comment. Do you have any time to drive this along?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
