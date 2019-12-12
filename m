Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B468311C84F
	for <lists+linux-man@lfdr.de>; Thu, 12 Dec 2019 09:36:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728202AbfLLIgN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Dec 2019 03:36:13 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:40449 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728192AbfLLIgN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Dec 2019 03:36:13 -0500
Received: by mail-wm1-f66.google.com with SMTP id t14so1467353wmi.5
        for <linux-man@vger.kernel.org>; Thu, 12 Dec 2019 00:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NOQ2ZrYSWggcKFeQcfiU9VrwJVSnUVbGg78QsavP4y0=;
        b=RYm9GmNMUcoIuuaity1S4qetgGw85pQCOGpwHj101we030k78P6OWwM7JCZT5ZMllx
         AsT/8+WexOk0SzNvdpsmEeLtbXw0ao/TO4NjT06rmPgW7H75p/9NzHccF0fulAswYRhE
         5mDObEBLZMa7kSRLwB3Tyn+zqpcZoWpfGq0z7iySuakCrAzD+Ec4dIRILX2QJOyUo/sS
         dDKYmVVshcBrzmNFncFfGruhQ90jBFZgErRjfyRG60PB7lvmr6YHEhQWAC86ztjmjFVu
         Y/a+kpF9Dy/EBx8koSPny/xMFDHjr7DmKWLBJZpGKkE/85OntrC+AUB0DhHbhz7ydeX2
         SYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NOQ2ZrYSWggcKFeQcfiU9VrwJVSnUVbGg78QsavP4y0=;
        b=MlG99UOMhfHjCB3oDulRMumGQCKGTA1WQzK+mKc+1tQQM4YVPK6iMNcjF4nKFGeZVV
         2FBZv5rVQ4YAQ/VS+nb1lA+MojxVP7ciQ7fwpmRVWBgH3/nSu+OUw17keyGW3o8Wc7fa
         fMGINv/pZVDLeRvco8vHQug5OQ47XyGPmmGdwVLTdIJsXx+Du0UAuZWiSi6hSW50HMDv
         5Jnci0+KsRVdc6ABkImAVIfLtjZ7kiZ1CQ04cSMb38RyTfJ6lDcBy7lHoAIp8bhckBQr
         d1rjI0xaA89YQDxeEljUuG55yvNxbzVig5XAg7gnU7QjAeSSqa1GutBThJMNPNHKJ0rO
         WxiA==
X-Gm-Message-State: APjAAAWbsWCyWT2Ik5VeUc0mM8G1ONyRP38e0Cm1T4e4ogfPSy7dbfOJ
        ZmuM8WgYmG9+7m8RFSJrKb6/Xq2v
X-Google-Smtp-Source: APXvYqwLcX8NV51Zk0z51eCNZdv/Qa0Dg3nDce5VJzeFcQlYBVq1EuDDdvbbG3P4uW4bVMjK/la1uQ==
X-Received: by 2002:a7b:c004:: with SMTP id c4mr4942303wmb.45.1576139770752;
        Thu, 12 Dec 2019 00:36:10 -0800 (PST)
Received: from ?IPv6:2001:a61:2426:9c01:6648:18:8d7:e4e0? ([2001:a61:2426:9c01:6648:18:8d7:e4e0])
        by smtp.gmail.com with ESMTPSA id n189sm4374195wme.33.2019.12.12.00.36.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2019 00:36:10 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] capget.2: Correct info about EPERM error
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1576135435-907-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b3ed28f4-59fb-9bff-4886-57b1126372d9@gmail.com>
Date:   Thu, 12 Dec 2019 09:36:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1576135435-907-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

On 12/12/19 8:23 AM, Yang Xu wrote:
> I see kernel code security/commoncap.c cap_capset function, it only
> verifies the new_Effective is a subset of the new_Permitted. It doesn't
> verify whether the new_Inheritable is a subset of the new_Permitted.
> 
> I found it when I cleanup ltp capset02 test code.
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man2/capget.2 | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/man2/capget.2 b/man2/capget.2
> index 94d38d877..6cad3d5d8 100644
> --- a/man2/capget.2
> +++ b/man2/capget.2
> @@ -195,8 +195,7 @@ One of the arguments was invalid.
>  .TP
>  .B EPERM
>  An attempt was made to add a capability to the Permitted set, or to set
> -a capability in the Effective or Inheritable sets that is not in the
> -Permitted set.
> +a capability in the Effective sets that is not in the Permitted set.
>  .TP
>  .B EPERM
>  The caller attempted to use

Thanks for your note. The manual page is indeed imprecise, but there 
are checks elsewhere (in cap_capset()) that restrict the kinds
of changes that can be made to the inheritable set. I applied
the patch below, which I think correctly captures the details (which
were already described in capabilities(7)).

Thanks,

Michael

diff --git a/man2/capget.2 b/man2/capget.2
index 94d38d877..1d81075ba 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -195,10 +195,22 @@ One of the arguments was invalid.
 .TP
 .B EPERM
 An attempt was made to add a capability to the Permitted set, or to set
-a capability in the Effective or Inheritable sets that is not in the
+a capability in the Effective set that is not in the
 Permitted set.
 .TP
 .B EPERM
+An attempt was made to add a capability to the inheritable set, and either:
+.RS
+.IP * 3
+that capability was not in the caller's bounding set; or
+.IP *
+the capability was not in the caller's permitted set
+and the caller lacked the
+.B CAP_SETPCAP
+capability in its effective set.
+.RE
+.TP
+.B EPERM
 The caller attempted to use
 .BR capset ()
 to modify the capabilities of a thread other than itself,




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
