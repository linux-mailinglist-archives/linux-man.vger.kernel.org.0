Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 138749D8BD
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 23:52:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726257AbfHZVwy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 17:52:54 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:35505 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725817AbfHZVwy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 17:52:54 -0400
Received: by mail-wr1-f65.google.com with SMTP id k2so16746524wrq.2
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2019 14:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Wp+cW1WhlDW+O73dYx8HAMz8g+FfCwpxYRzKoZscrqI=;
        b=kVhjRirN2fMweIzkucL/pK2bfgk7JjwE1pn+9H8FwLZrD23ABeBQ9ijJoG9SqI/T1B
         9cSDFCUU8WAaY4F0JvxhRcY6VcQ1DXG6EE6iDt2GzL+Tq3ro7oGGxY2H8UhtFQ06u/AW
         OWUQlcwfcqd+kLRKhnhcL9YTIgVDCTJg7yfQWVGvcZGwFEXAzYSXeno0/9EKj71TRtIG
         ZGbVvCnma9cLzqtzHlLz4y2V3FEh/HMNbcUjRrBNL+fYX+Nk10RBaV5K7p10fGUTSJ1e
         N5VZqnS2P1TT4krh1aXSYLFmmCGvDa445dIcZrJ04LWjbjtRPQ1KqGKb34GJyIJZj3GZ
         eNmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Wp+cW1WhlDW+O73dYx8HAMz8g+FfCwpxYRzKoZscrqI=;
        b=DChC88Rx8pjNgwsk1P8OLvEAZl3UPWDg+sE68OGKBB3u8jsgWpoYmOrV7QDzsQM/85
         MmYpAh5NeMlKYWeDbc72RW4I+iQPEQjKJnn+Nos3hmPGuNTWiWclvwJbt2I68z9MtCdQ
         bDliB3leO4S61YZAEDtcum77lz//O1yqSsEkW44zbgbYjg1kMC2mmRrhUy4E9LfRV4F7
         ONlnMV+0xrGB5n4O/rgXpHY4LgIoXtg7zGTFNSMWZgkpR/aB4bcLw46zpRoOfeuEh+yM
         7CU3XKBzZpgwLJDjyEbBbkeCcXp7aUiYoO+foir3qKLAJQSOOufUSkM57Bslrp6ko3qS
         seDg==
X-Gm-Message-State: APjAAAWiFddpVZwCD7mKa7WuY8BQBG2FstN2GJAb/p9OwNfd3Nh1DDZx
        nXwTZY1jhitB42bnXc2nrdehxLSb
X-Google-Smtp-Source: APXvYqwKfW+rywhBtoXRhxDdK/UX/mru03BuahzNoUYsxhFQf3Izy9Y9CFtyPmrIwBx4RqvvZ86J1Q==
X-Received: by 2002:a5d:4ecb:: with SMTP id s11mr24588662wrv.323.1566856371683;
        Mon, 26 Aug 2019 14:52:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:257e:2f01:31ee:f41e:c688:df4? ([2001:a61:257e:2f01:31ee:f41e:c688:df4])
        by smtp.gmail.com with ESMTPSA id q3sm1049941wma.48.2019.08.26.14.52.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 14:52:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Kevin.Barnett@microchip.com, scott.teel@microchip.com,
        Justin.Lindley@microchip.com, scott.benesh@microchip.com,
        bader.alisaleh@microchip.com, gerry.morong@microchip.com,
        mahesh.rajashekhara@microchip.com
Subject: Re: [PATCH V3 5/5] smartpqi: add sysfs entries
To:     Don Brace <don.brace@microsemi.com>
References: <156683390892.32298.878243674084910282.stgit@brunhilda>
 <156683411207.32298.10112442679181404463.stgit@brunhilda>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7514bad3-1a7c-c11c-98f0-5d47065afdfe@gmail.com>
Date:   Mon, 26 Aug 2019 23:52:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <156683411207.32298.10112442679181404463.stgit@brunhilda>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Don,

On 8/26/19 5:41 PM, Don Brace wrote:
> From: Murthy Bhat <Murthy.Bhat@microsemi.com>
> 
> Reviewed-by: Matt Perricone <matt.perricone@microsemi.com>
> Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
> Signed-off-by: Murthy Bhat <Murthy.Bhat@microsemi.com>
> Signed-off-by: Don Brace <don.brace@microsemi.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man4/smartpqi.4 |   80 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index a8cc621a3..3f4473fa4 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -160,6 +160,86 @@ above
>  for an explanation of the
>  .I lockup_action
>  values.
> +.TP
> +.IR /sys/class/scsi_host/host*/driver_version
> +The
> +.I driver_version
> +attribute is read-only.
> +This attribute contains the smartpqi driver version.
> +.IP
> +For example:
> +.IP
> +.in +2n
> +.EX
> +$ \c
> +.B cat /sys/class/scsi_host/host1/driver_version
> +1.1.2-126
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_host/host*/firmware_version
> +The
> +.I firmware_version
> +attribute is read-only.
> +This attribute contains the controller firmware version.
> +.IP
> +For example:
> +.IP
> +.in +2n
> +.EX
> +$ \c
> +.B cat /sys/class/scsi_host/host1/firmware_version
> +1.29-112
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_host/host*/model
> +The
> +.I model
> +attribute is read-only.
> +This attribute contains the product identification string of the controller.
> +.IP
> +For example:
> +.IP
> +.in +2n
> +.EX
> +$ \c
> +.B cat /sys/class/scsi_host/host1/model
> +1100-16i
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_host/host*/serial_number
> +The
> +.I serial_number
> +attribute is read-only.
> +This attribute contains the unique identification number of the controller.
> +.IP
> +For example:
> +.IP
> +.in +2n
> +.EX
> +$ \c
> +.B cat /sys/class/scsi_host/host1/serial_number
> +6A316373777
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_host/host*/vendor
> +The
> +.I vendor
> +attribute is read-only.
> +This attribute contains the vendor identification string of the controller.
> +.IP
> +For example:
> +.IP
> +.in +2n
> +.EX
> +$ \c
> +.B cat /sys/class/scsi_host/host1/vendor
> +Adaptec
> +.EE
> +.in
>  .SS SmartPQI-specific disk attribute files in \f[BI]/sys\fP
>  In the file specifications below,
>  .I c
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
