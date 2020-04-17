Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4199A1AD93D
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 10:59:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729987AbgDQI43 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 04:56:29 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:59975 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729784AbgDQI42 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 04:56:28 -0400
X-Greylist: delayed 510 seconds by postgrey-1.27 at vger.kernel.org; Fri, 17 Apr 2020 04:56:28 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.236])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 70F322FD1F3D;
        Fri, 17 Apr 2020 10:47:57 +0200 (CEST)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Fri, 17 Apr
 2020 10:47:56 +0200
Date:   Fri, 17 Apr 2020 10:47:47 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <ktsanaktsidis@zendesk.com>, <linux-man@vger.kernel.org>
Subject: Re: [PATCH] clone.2: Document ENOSPC due to exhaused PIDs
Message-ID: <20200417084747.3t7zrzygyejksank@jwilk.net>
References: <20180818065028.20083-1-ktsanaktsidis@zendesk.com>
 <CAKgNAkhVcyLqe_wrVCi+VYWwb587Qe=2EuHCiLLJUttoU7vCAw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKgNAkhVcyLqe_wrVCi+VYWwb587Qe=2EuHCiLLJUttoU7vCAw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG7EX1.mxp6.local (172.16.2.61) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 9454f3f7-7360-4b4c-9903-ee5ce5a28620
X-Ovh-Tracer-Id: 7871447724693575645
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrfeejgddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-04-17, 09:18:
>>   $ cat /proc/sys/kernel/pid_max
>>   30000
>>   $ gcc clonetest.c -o clonetest
>>   $ ./clonetest
>>   Got a clone(2) failure; 28 (No space left on device). Made 28822 children.
>
>I *don't* reproduce this. On my Fedora 31 system, the error I see is EAGAIN.

AFAICT this was fixed in the mean time, in v4.19:
https://git.kernel.org/linus/f83606f5eb007adc33bc8541ede00590f477bdeb

-- 
Jakub Wilk
