Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (unknown [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B59221A63BC
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2020 09:31:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729344AbgDMHbs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Apr 2020 03:31:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.18]:33128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727612AbgDMHbs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Apr 2020 03:31:48 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34666C008651
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 00:31:47 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id o81so2982878wmo.2
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2020 00:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aWZi+YZXhFQpwzKyq7M6PxwCm1cz/WUQRiw+dAhqfSs=;
        b=G25zr/0mW1zh12dxrECM+O/+aaIf9hCfdqD8lQZVxcIaUdVuVd8neyfZ1f3ifUUozR
         L3MgC2s6y9x+/hsg2pMNw+9LQoMZrE+DdOxxzG8kfl6pOcPAXueGtDShKRthxfrn1JYC
         N/FxefV0BrFXCU4NvMaX+1GNfvElgqMk0hHD0ZThFcmemPEQIPFLF7bVpz15KTFNlpqR
         CLCvNFF9fB1La2BAmyxAI6Vyd2k1WobfqwcrwxQXXkrX2CzZX4yPuoUZO/pKzb1eEASu
         6L1gL3IFmeJvD+5n6mPCp6LifqSu/Os0b9omkU0kYqZvcQEGFSexL4WBkfS77uAX1+gI
         Cuuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aWZi+YZXhFQpwzKyq7M6PxwCm1cz/WUQRiw+dAhqfSs=;
        b=WYDg2vHJnSwjPcs1vgG+XuWSIxhNG46NRnq15WEovrA73Ah5mXJjQFzkzhTskE4Nho
         CFnjz2riJ9YI2R/cyjr014tVG0VsR0dP4leylhZz2qAu06V63Xw7AB0IlOtMmkqNU2X8
         O/FkMZ0tJL2O28z9uQx5dILyg/qyUI0agLMbcIezvLpvM9UDBE8Lwhf5fuuMsAN6e/os
         kTakLgn2a7LEzI6b36kv3JsoC2gc9OY3shEm96yaDuVS8yIA4OaxilR7eHcRyPnqkmA+
         /9cS2Kfai0TiVk5GWjE83BKRWUyk89M6WKEjW/cN+yUpgVihYMbJYGfdBsqNSvJAnpyD
         hjYA==
X-Gm-Message-State: AGi0Pub8MqiYVvBV/snkNHwzHFI5hmhDOovqP+ywfmi2z137DaUFaz4J
        DFfFT5wTEe8h50VGBYKcgAXlosc1
X-Google-Smtp-Source: APiQypJ1aWNsE7xgTVMSS7M5q3G321iHLE5r51xj7X3mWCsY36w2ZcH04B4MEHJf8EvlwmA/KzNrmQ==
X-Received: by 2002:a1c:1d84:: with SMTP id d126mr17167841wmd.119.1586763105777;
        Mon, 13 Apr 2020 00:31:45 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id m14sm11595414wrs.76.2020.04.13.00.31.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 00:31:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] proc.5: Fix an outdated note about map_files
To:     Keno Fischer <keno@juliacomputing.com>
References: <20200412080930.GA30569@juliacomputing.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <93fcc787-544d-7dbc-f389-d7dc9ca3ad28@gmail.com>
Date:   Mon, 13 Apr 2020 09:31:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200412080930.GA30569@juliacomputing.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Keno,

On 4/12/20 10:09 AM, Keno Fischer wrote:
> The restriction to CAP_SYS_ADMIN was removed from map_files in 2015 [1].
> There was a fixme that indicted this might happen, but the main text was
> never updated when this commit landed. While we're at it, add a note about
> the ptrace access check that is still required.>
> [1] https://github.com/torvalds/linux/commit/bdb4d100afe9818aebd1d98ced575c5ef143456c
> 
> Signed-off-by: Keno Fischer <keno@juliacomputing.com>

Thank you. Such a nicely written patch!

The FIXME was mine, bit obviously I lost the plot after I wrote it.
Thanks for catching this.

Patch applied.

Cheers,

Michael


> ---
>  man5/proc.5 | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index 34cb957dd..0d6043c8f 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -1090,16 +1090,18 @@ lrw\-\-\-\-\-\-\-. 1 root root 64 Apr 16 21:33
>  .EE
>  .in
>  .IP
> -This directory appears only if the
> +Permission to access this file is governed by a ptrace access mode
> +.B PTRACE_MODE_READ_FSCREDS
> +check; see
> +.BR ptrace (2).
> +.IP
> +.\" This permissions check got removed in kernel commit bdb4d100a
> +Until kernel version 4.3, this directory appeared only if the
>  .B CONFIG_CHECKPOINT_RESTORE
> -kernel configuration option is enabled.
> -Privilege
> +kernel configuration option was enabled.
> +Additionally, in those kernel versions, privilege
>  .RB ( CAP_SYS_ADMIN )
> -.\" FIXME
> -.\" This may change. See the mail thread
> -.\" "[RFC][PATCH v2] procfs: Always expose /proc/<pid>/map_files/ and make it readable"
> -.\" from Jan 2015
> -is required to view the contents of this directory.
> +was required to view the contents of this directory.
>  .TP
>  .I /proc/[pid]/maps
>  A file containing the currently mapped memory regions and their access
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
