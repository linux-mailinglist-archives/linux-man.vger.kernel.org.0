Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3237E11C8AF
	for <lists+linux-man@lfdr.de>; Thu, 12 Dec 2019 09:56:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727906AbfLLI4L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Dec 2019 03:56:11 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:40648 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728110AbfLLI4L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Dec 2019 03:56:11 -0500
Received: by mail-wr1-f67.google.com with SMTP id c14so1792334wrn.7
        for <linux-man@vger.kernel.org>; Thu, 12 Dec 2019 00:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZSTM3vcFQFQJeKPUGuM1VT+I9CsU8tqABd3unTA+fJE=;
        b=C52+E8AFQ9QsPj1fjldqKb+lbMW2UZfNY/BrQshYyCpX2HDqXw55eEZvX3JQso3WsB
         pRw29+godyn1/i+ks62yQ5rKnOEWm0G5QqYaG8T6zdz/eFdoAIcKinCC57Qa0DR0slyX
         4VjmKX/cBvp4b/zb18Bh+Nz4+4Eh6GG7kk6l9ijrRWSZKMHVHXnpLXS6kJPsX8XFE3sP
         cTvNyuVROm/auBP/8jUJkoKnc4FvNKSw+5pmnMGfd9QpbN7GtN6tu8fkDIOhHbh8VaxM
         jac2lXHul2OX9at8Az/64z1+F7pSPiDvE6AgwRXhV+J5UL/QgIIfLA78rmqCo6lKZFJu
         5lKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZSTM3vcFQFQJeKPUGuM1VT+I9CsU8tqABd3unTA+fJE=;
        b=P7SZ6SbdHME9qL4HknT7CzyvMerlLcODqfW7b5YHqBrpYJ5wUm38WfzNIIRAPXEere
         qlB8iPUNfmJSp+AO5PSN/WRUg3DtGeURJgmmeCDrvQ84Q/y0BZ6x2LYMiunAUSNu4LB/
         hfVQ9qABBWoPMOGp8PzJLEfcXgBZSoRwrXn3zIiiMsMCX4KwkvnE/Mu7ETfiqA1razV2
         In8mFWpuAn2d5K7w9kOs93Pq7KObqPy7enWpU0Ued3Fn4OsBaIo3hsUc08eO1X0jgebL
         8L26wVk5K9sCZ3GKgF8GFBAw1fHWx7qW3KxA2rQnsYh9qzXR94dEhBs8W7kWkMOyfIsr
         ZK9A==
X-Gm-Message-State: APjAAAUxrIgt3b2ZQA93hS9F2GkrLm/wPxZpPgYHLB2B73RRfgzbpRT5
        Wk2nxHt8BpxptaPhBHn2LxI2PVs8
X-Google-Smtp-Source: APXvYqztPPmqDJRLmp+yTV0GiAYTUXlUEOmlekDVK/qV60sNW1zeEhqsamy2atYvBvW2uR65kTaF3A==
X-Received: by 2002:a5d:494f:: with SMTP id r15mr5128679wrs.143.1576140968998;
        Thu, 12 Dec 2019 00:56:08 -0800 (PST)
Received: from ?IPv6:2001:a61:2426:9c01:6648:18:8d7:e4e0? ([2001:a61:2426:9c01:6648:18:8d7:e4e0])
        by smtp.gmail.com with ESMTPSA id x11sm5402217wre.68.2019.12.12.00.56.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2019 00:56:08 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] packet.7: fix tpacket_auxdata fields.
To:     kevin sztern <kevin.sztern@epita.fr>
References: <20191126232125.9433-1-kevin.sztern@epita.fr>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <310adfd2-a3eb-5656-ebf3-0effafcb7fdc@gmail.com>
Date:   Thu, 12 Dec 2019 09:56:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191126232125.9433-1-kevin.sztern@epita.fr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kevin,

On 11/27/19 12:22 AM, kevin sztern wrote:
> The definition of the tpacket_auxdata struct in the manpage is not the
> same as the definition found in /include/uapi/linux/if_packet.h.
> 
> In particular, instead of a tp_padding field, there is a tp_vlan_tpid
> field. An example of a project using this field is libpcap[1].
> 
> [1]: https://github.com/the-tcpdump-group/libpcap/blob/master/pcap-linux.c#L349

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/packet.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/packet.7 b/man7/packet.7
> index b624d47d1..ecbd63409 100644
> --- a/man7/packet.7
> +++ b/man7/packet.7
> @@ -257,7 +257,7 @@ struct tpacket_auxdata {
>      __u16 tp_mac;
>      __u16 tp_net;
>      __u16 tp_vlan_tci;
> -    __u16 tp_padding;
> +    __u16 tp_vlan_tpid;
>  };
>  .EE
>  .in
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
