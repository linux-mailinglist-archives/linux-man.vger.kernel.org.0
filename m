Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD2264611B7
	for <lists+linux-man@lfdr.de>; Mon, 29 Nov 2021 11:04:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236674AbhK2KHd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Nov 2021 05:07:33 -0500
Received: from 10.mo552.mail-out.ovh.net ([87.98.187.244]:48273 "EHLO
        10.mo552.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237879AbhK2KFc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Nov 2021 05:05:32 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.17])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 19EBE2150A;
        Mon, 29 Nov 2021 09:45:10 +0000 (UTC)
Received: from jwilk.net (37.59.142.103) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Mon, 29 Nov
 2021 10:45:08 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-103G0050bbe3a1c-dfc5-4959-b2a8-a16b739240e0,
                    22AE1DB7524C71559221E922DEF7A1245E6A5FD2) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.29
Date:   Mon, 29 Nov 2021 10:45:07 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 3/4] clock_getres.2, clock_nanosleep.2, io_getevents.2,
 nanosleep.2, poll.2, sched_rr_get_interval.2, select.2, sigwaitinfo.2,
 timer_settime.2, timerfd_create.2, utimensat.2, mq_receive.3, mq_send.3,
 pthread_tryjoin_np.3, system_data_types.7: correct struct timespec::tv_nsec
 type for x32
Message-ID: <20211129094507.v3afmv442ttnyvbh@jwilk.net>
References: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
 <de0b63287590038675ef723e052ec1d765f7c59b.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <de0b63287590038675ef723e052ec1d765f7c59b.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: ad6838e6-3169-472e-b186-fec045c90530
X-Ovh-Tracer-Id: 11611687216419755997
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 23
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrheelgddtkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecufghrlhcuvffnffculddvfedmnecujfgurhepfffhvffukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeelgfffvdetieeivedvieffveegleethfetheffffejtefgveeuvddvuedvtdejjeenucffohhmrghinhepshhouhhrtggvfigrrhgvrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2021-11-28, 19:17:
>This means, that the simplified
>  struct timespec {
>      time_t  tv_sec;  /* Seconds */
>      long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
>  };
>declaration is *invalid* for x32,
>where struct timespec::tv_nsec is an int64_t (long long).

Indeed, it's a long standing bug in glibc (or in the kernel, depending 
on your point of view):
https://sourceware.org/bugzilla/show_bug.cgi?id=16437

It's worth documenting, but IMHO this information should be in the BUGS 
sections.

-- 
Jakub Wilk
