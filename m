Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60EE32402E2
	for <lists+linux-man@lfdr.de>; Mon, 10 Aug 2020 09:39:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725984AbgHJHjj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Aug 2020 03:39:39 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:38728 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725857AbgHJHji (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 10 Aug 2020 03:39:38 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id C39AA203EE;
        Mon, 10 Aug 2020 09:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1597045175;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ZFwL6K+IGWT3nny2/PdedlP+itlR/0B2BTUJIm/qw4U=;
        b=Dl9wAEcA2gRRv8AAUqjWzJK5kl5r2aMutqHoKE16HfT2/Yzw5+8dVLYiWruM3UQPZn9Qcd
        b+GFvhNOz/rT3q+qwPrsJIn3XtW9BHZF5cHc0fPmtKhLJ13DcJukfbLl9civCbWY64oU67
        BZCyGed5cUGTzHboWGWro0AAyvG+TizB8QqslDsyKOIwdqNMhXBkrT5vYDNExVJ+5ZFcOJ
        XsvKFAgM98UAsYA/blAK1P0ZLzocW/UoQttDoopG9zBwI2u8kAntisdf5z5UDz3GZcNBPx
        4JmJAko+lqro5PfBwJP19uj492fR6N8tKxtOd3s2E7iL3qvplvDp555L3+FdJg==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Mon, 10 Aug
 2020 09:39:35 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2044.004; Mon, 10 Aug 2020 09:39:35 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: AW: [PATCH v2 2/3] loop.4: add some details about lo_flag
Thread-Topic: AW: [PATCH v2 2/3] loop.4: add some details about lo_flag
Thread-Index: AQHWa9blucxVrdjxxUaJJX0mE9lFJqksP6gngASNCICAACx+IA==
Date:   Mon, 10 Aug 2020 07:39:35 +0000
Message-ID: <81fa86757a3e463f8e103f23e06ab67e@bfs.de>
References: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <1596707314-2361-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <f25c32a3f4934b329523505796964f63@bfs.de>,<2ba1ca61-cf3d-0103-d3de-b3bc6e8bd0af@cn.fujitsu.com>
In-Reply-To: <2ba1ca61-cf3d-0103-d3de-b3bc6e8bd0af@cn.fujitsu.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.46
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-0.46 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[];
         RCPT_COUNT_TWO(0.00)[2];
         NEURAL_HAM(-0.00)[-0.936];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.46)[79.20%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

ok, i understand now (i hope).

maybe this version is more clear:

The LOOP_SET_STATUS can neither set the=20
.B lo_flags =20
LO_FLAGS_READ_ONLY  nor the LO_FLAGS_DIRECT_IO=20
because they are exclusively set from kernel.

hope that helps
wh

________________________________________
Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im A=
uftrag von Yang Xu [xuyang2018.jy@cn.fujitsu.com]
Gesendet: Montag, 10. August 2020 08:53
An: Walter Harms; linux-man@vger.kernel.org
Betreff: Re: AW: [PATCH v2 2/3] loop.4: add some details about lo_flag

Hi Walter

> Hi,
> IMHO "first" and "last" is something that should be avoided in documentat=
ion
> because the meaning may change in future releases.
Thanks, I see.
> I guess you want to say: lo_number and reserved ?
No, I just said the loop_set_status ioctl can not set read-only and
direct io flag.

Best Regards
Yang Xu
>
> re,
>   wh
> ________________________________________
> Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im=
 Auftrag von Yang Xu [xuyang2018.jy@cn.fujitsu.com]
> Gesendet: Donnerstag, 6. August 2020 11:48
> An: linux-man@vger.kernel.org
> Cc: Yang Xu
> Betreff: [PATCH v2 2/3] loop.4: add some details about lo_flag
>
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>   man4/loop.4 | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/man4/loop.4 b/man4/loop.4
> index 1f8a31ac7..41abe0122 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -136,6 +136,9 @@ Allow automatic partition scanning.
>   Use direct io mode to access backing file.
>   .RE
>   .TP
> +.I The LOOP_SET_STATUS can not set the first and last flag because
> +they are both set from kernel.
> +.TP
>   .B LOOP_GET_STATUS
>   Get the status of the loop device.
>   The (third)
> --
> 2.23.0
>
>
>
>
>


