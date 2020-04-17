Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59EE21ADAB8
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 12:09:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726207AbgDQKJJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 06:09:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725830AbgDQKJJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 06:09:09 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A083DC061A0C;
        Fri, 17 Apr 2020 03:09:08 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id b11so2387179wrs.6;
        Fri, 17 Apr 2020 03:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YbQK9qqTQiwPps3zNgPuWa95hc6ZueRySP087ny5ENk=;
        b=PmBZ6s6gB2kAVb0CXGcgeEjWaw/v2nBdGhnWLBnah8i2gpparN6TXRfTnZGcIiude1
         SQnnZ7TSzayvbiUmcvtNKxO1+ARSOW5Cy8D1cSPaaQKINOateT6sHJX4RoPlet/+H/Jo
         1rfZ/ipaSTmeF58KdaMEL/Do03fJhguoQlsBXygG/1ZlkTh32DJGT6JQ1AuPTFbtDg/T
         9K+8a4U5FxE0f7Wh9G+f8qAASDLO6AnSTAAWM+nsdT9zkkUphQG+mGXvaRh/v5b4WnHg
         Ko8qMKbcy+QX+N47FEBT2e2V8G7QLYI0WhEbok1jGgV5RAM9qzja7tIIogrnXA9Kd82O
         vj4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YbQK9qqTQiwPps3zNgPuWa95hc6ZueRySP087ny5ENk=;
        b=H1uNGhTTThd+JvwF7hupmzBIaoKHEJbYzHV8yIYeunsRtpsGDZouS5kOxR+1pU8C8S
         2/aB4CxdYfmZ/vHPn59ULwVObuwP4wDZbctNq3gNTPW8zlJ+/uPebtPgqCVgc5I7mXbP
         UqONh/l+Vhs4BPMOSXIzAPGI8nebxX5xGfdLjAVjROfRLZKVnWbuf1wj/Sl/7c2pVgYU
         esLF5J5Yig5o0p9T5wdWAZlrGSlQjGHtdGWpzDpdTgdOlDSJfkhL5E9DI1dUmw+Xf/NO
         XFJ6g+Ugmym0MwjTyUOtIH8kMPakHcMB3hGyS2jqNdkZQOtCQapRje5Uv4neI/oQ00RW
         Wz/g==
X-Gm-Message-State: AGi0PuaT3JjMNLCgoBj0hnuWF7Ay/Ko6WTJIb5tyClczjY/ahwJ6vNUB
        62jJsdtgUUXW0z07TZ/9IfJH1pPe
X-Google-Smtp-Source: APiQypLha09XH0F2Owwo8u49JRobTHMw6E2L2t2qISNfYkDdujBq7HlHwG/2kGKsc/+QQWoWlJIP8A==
X-Received: by 2002:adf:afdf:: with SMTP id y31mr3061238wrd.120.1587118147181;
        Fri, 17 Apr 2020 03:09:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id g186sm7161924wme.7.2020.04.17.03.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 03:09:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] bpf.2: update enum bpf_map_type and enum bpf_prog_type
To:     Peter Wu <peter@lekensteyn.nl>
References: <20190804205353.2956-1-peter@lekensteyn.nl>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fafd846d-d365-efc2-8a6a-a5a1b471e9cd@gmail.com>
Date:   Fri, 17 Apr 2020 12:09:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20190804205353.2956-1-peter@lekensteyn.nl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Peter,

On 8/4/19 10:53 PM, Peter Wu wrote:
> Taken from Linux v5.3-rc2. Add a reference to the header file to save
> the future reader some time figuring out whether more entries exist.

Thanks. Patch applied.

Cheers,

Michael


> Signed-off-by: Peter Wu <peter@lekensteyn.nl>
> ---
>  man2/bpf.2 | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/man2/bpf.2 b/man2/bpf.2
> index 5a766aaa8..51e3bd111 100644
> --- a/man2/bpf.2
> +++ b/man2/bpf.2
> @@ -367,6 +367,14 @@ enum bpf_map_type {
>      BPF_MAP_TYPE_DEVMAP,
>      BPF_MAP_TYPE_SOCKMAP,
>      BPF_MAP_TYPE_CPUMAP,
> +    BPF_MAP_TYPE_XSKMAP,
> +    BPF_MAP_TYPE_SOCKHASH,
> +    BPF_MAP_TYPE_CGROUP_STORAGE,
> +    BPF_MAP_TYPE_REUSEPORT_SOCKARRAY,
> +    BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE,
> +    BPF_MAP_TYPE_QUEUE,
> +    BPF_MAP_TYPE_STACK,
> +    /* See /usr/include/linux/bpf.h for the full list. */
>  };
>  .EE
>  .in
> @@ -756,6 +764,25 @@ enum bpf_prog_type {
>      BPF_PROG_TYPE_KPROBE,
>      BPF_PROG_TYPE_SCHED_CLS,
>      BPF_PROG_TYPE_SCHED_ACT,
> +    BPF_PROG_TYPE_TRACEPOINT,
> +    BPF_PROG_TYPE_XDP,
> +    BPF_PROG_TYPE_PERF_EVENT,
> +    BPF_PROG_TYPE_CGROUP_SKB,
> +    BPF_PROG_TYPE_CGROUP_SOCK,
> +    BPF_PROG_TYPE_LWT_IN,
> +    BPF_PROG_TYPE_LWT_OUT,
> +    BPF_PROG_TYPE_LWT_XMIT,
> +    BPF_PROG_TYPE_SOCK_OPS,
> +    BPF_PROG_TYPE_SK_SKB,
> +    BPF_PROG_TYPE_CGROUP_DEVICE,
> +    BPF_PROG_TYPE_SK_MSG,
> +    BPF_PROG_TYPE_RAW_TRACEPOINT,
> +    BPF_PROG_TYPE_CGROUP_SOCK_ADDR,
> +    BPF_PROG_TYPE_LWT_SEG6LOCAL,
> +    BPF_PROG_TYPE_LIRC_MODE2,
> +    BPF_PROG_TYPE_SK_REUSEPORT,
> +    BPF_PROG_TYPE_FLOW_DISSECTOR,
> +    /* See /usr/include/linux/bpf.h for the full list. */
>  };
>  .EE
>  .in
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
