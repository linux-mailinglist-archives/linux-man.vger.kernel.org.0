Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EAFA19D8A8
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 23:47:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726972AbfHZVqt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 17:46:49 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:34923 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725817AbfHZVqt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 17:46:49 -0400
Received: by mail-wr1-f68.google.com with SMTP id k2so16735157wrq.2
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2019 14:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+1BPFUPatzt1iobxits90Ym5B2MRa+PBtYtg7/S9qd4=;
        b=JFs74b3uuv4TPn5+ZEoRoTS1bVYI3BGjfFQkFu56GnIATuJ6dNndp1aUPdveJtGnDF
         X0QUj/UkU0yfbsWjRmG23v9Z1LcfLwCY8dE73ze5bEM5PdwaunDIduj8GDha4RXV+4WY
         NjSjRcwlgn97JHdoBLWEp/1+pTaBZQTMIN6KKhjbiZ8PGz2v7kjhuO5nzogTREeETjLB
         /cwsDccHzJLpB6I9q1mm3OqAhgD5K+sb+M/Ae9VhjkwYVHd3FqA3VFO0FKWiSLEfq3WJ
         fhbX+onCszr5/FKumqijVgkRjMaabqzbjpAm8bZ0CRhTkQax1FB5PWm5hp/G7NBc6/zh
         oTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+1BPFUPatzt1iobxits90Ym5B2MRa+PBtYtg7/S9qd4=;
        b=lkG9uenc/3mbHGRdy50u4JN3VLLsPthTh4rlzotaMRcZTM84X/yIu6TeSI9igw2jLD
         JyacRYxsP6uyS94Qc5tIbkrpWiO1pedPWCLSTSFUP+brwX3kt6C5DK35QSwVJAz+LYZB
         0p1jCIhYLexz6CWetkUh4Yzf6ZsHQqyR0UY38Gv8fbTc1cq3UIjFct0/NeM5jx4qe2lZ
         0d8t+E5B1HME794aLs7dRtCQNA4Msv8WPjaH3GYQGONjsl59j1yyccHibNBsQTGGX134
         3O7g9LwFiDNYjTKREklZHzzRWozCWNDPPtVRSn4fjrInzQczHOzi82A3ZiyA3+IIFxyq
         Wb4A==
X-Gm-Message-State: APjAAAVgvJCbZS4ubuGBZ2WJtf+QJklrbNImuvWPc7cc21EvyAE3vbNa
        PzEBKY1zAKEkO3h+fXutGC0=
X-Google-Smtp-Source: APXvYqx9YBX+p0jaIRDnGn/JLFbwNUIeRFkHOyotC+WpLmiKTzMfMiW/0E+OrF1U62xDLfZBA1m7ZQ==
X-Received: by 2002:a5d:4b05:: with SMTP id v5mr24798703wrq.208.1566856007817;
        Mon, 26 Aug 2019 14:46:47 -0700 (PDT)
Received: from ?IPv6:2001:a61:257e:2f01:31ee:f41e:c688:df4? ([2001:a61:257e:2f01:31ee:f41e:c688:df4])
        by smtp.gmail.com with ESMTPSA id j20sm34331045wre.65.2019.08.26.14.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 14:46:47 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Kevin.Barnett@microchip.com, scott.teel@microchip.com,
        Justin.Lindley@microchip.com, scott.benesh@microchip.com,
        bader.alisaleh@microchip.com, gerry.morong@microchip.com,
        mahesh.rajashekhara@microchip.com
Subject: Re: [PATCH V3 4/5] smartpqi: add module param to hide vsep
To:     Don Brace <don.brace@microsemi.com>
References: <156683390892.32298.878243674084910282.stgit@brunhilda>
 <156683410575.32298.14040332491954395743.stgit@brunhilda>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e65fc01a-5640-17e5-e4a0-03d425e91ae8@gmail.com>
Date:   Mon, 26 Aug 2019 23:46:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <156683410575.32298.14040332491954395743.stgit@brunhilda>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Don,

On 8/26/19 5:41 PM, Don Brace wrote:
> From: Dave Carroll <david.carroll@microsemi.com>
> 
> Reviewed-by: Matt Perricone <matt.perricone@microsemi.com>
> Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microsemi.com>
> Signed-off-by: Dave Carroll <david.carroll@microsemi.com>
> Signed-off-by: Don Brace <don.brace@microsemi.com>
> ---
>  man4/smartpqi.4 |    5 +++++
>  1 file changed, 5 insertions(+)

Patch applied.

Thanks,

Michael

> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 5389b8453..a8cc621a3 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -16,6 +16,7 @@ smartpqi \- Microsemi Smart Family SCSI driver
>  .RB [ disable_ctrl_shutdown= { 0 | 1 }]
>  .RB [ lockup_action= { none | reboot | panic }]
>  .RB [ expose_ld_first= { 0 | 1 }]
> +.RB [ hide_vsep= { 0 | 1 }]
>  .YS
>  .SH DESCRIPTION
>  .B smartpqi
> @@ -96,6 +97,10 @@ parameter	action
>  .BR expose_ld_first= { 0 | 1 }
>  This option enables support for exposing logical devices to OS before physical devices.
>  The default value is 0.
> +.TP
> +.BR hide_vsep= { 0 | 1 }
> +This option enables disabling exposure of the virtual SEP to the host. This is usually associated with direct attached drives.
> +The default value is 0.
>  .SH FILES
>  .SS Device nodes
>  Logical drives are accessed via the SCSI disk driver
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
