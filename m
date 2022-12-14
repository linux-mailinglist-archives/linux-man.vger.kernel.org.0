Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C984A64CD0B
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 16:28:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238489AbiLNP2z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 10:28:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238370AbiLNP2y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 10:28:54 -0500
Received: from 9.mo548.mail-out.ovh.net (9.mo548.mail-out.ovh.net [46.105.48.137])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B80A733A
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 07:28:52 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.188])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id F2A76220FB;
        Wed, 14 Dec 2022 15:28:50 +0000 (UTC)
Received: from jwilk.net (37.59.142.107) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Wed, 14 Dec
 2022 16:28:47 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-107S0013c9b431f-b28a-48da-999f-78be8e81d178,
                    B7262BD88BF0F6DA8082210BD72BA3B77187A4C7) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.39
Date:   Wed, 14 Dec 2022 16:28:40 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     <libc-alpha@sourceware.org>, <linux-man@vger.kernel.org>,
        <i+linux@1a-insec.net>
Subject: Re: [patch] nice.2: wfix
Message-ID: <20221214152840.lxramhvf3d5kl3wb@jwilk.net>
References: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>
 <aa61a91d-abc7-fae2-0494-9842b6081bb5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rjjehdqmeq23yoez"
Content-Disposition: inline
In-Reply-To: <aa61a91d-abc7-fae2-0494-9842b6081bb5@gmail.com>
X-Originating-IP: [37.59.142.107]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 5a149bc3-69ac-4443-a83b-12b2e0a7e1d5
X-Ovh-Tracer-Id: 16983637146550196192
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrfeefgdejjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggujghisehmtderredttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeffiedthefhkeeutdehheelffeufeegtdeuteegtedvhffffeegudffjeegfeevteenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopegrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdplhhisggtqdgrlhhphhgrsehsohhurhgtvgifrghrvgdrohhrghdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpihdolhhinhhugiesudgrqdhinhhsvggtrdhnvghtpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--rjjehdqmeq23yoez
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-12-11 18:33:
>>-to the nice value for the calling thread.
>>+to the nice value for the calling process.

nice() affecting the whole process, not just the calling thread, is what 
POSIX requires, and what glibc documents, but it's not actually how it 
works on Linux at the moment[*].

This is documented in the setpriority(2) man page:

"According to POSIX, the nice value is a per-process setting. However, 
under the current Linux/NPTL implementation of POSIX threads, the nice 
value is a per-thread attribute: different threads in the same process 
can have different nice values. Portable applications should avoid 
relying on the Linux behavior, which may be made standards conformant in 
the future."

It would be prudent to document this bug in the nice(2) man page too.


[*] I've tested this with Linux 6.0 + glibc 2.36.
See the attached test program.

-- 
Jakub Wilk

--rjjehdqmeq23yoez
Content-Type: text/x-csrc; charset="us-ascii"
Content-Disposition: attachment; filename="test-nice.c"

#define _GNU_SOURCE

#include <inttypes.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

static void print_nice()
{
    printf("[%jd] nice = %d\n", (intmax_t) gettid(), nice(0));
}

static void* thread(void *arg)
{
    print_nice();
    nice(17);
    print_nice();
    return NULL;
}

int main(int argc, char **argv)
{
    pthread_t pt;
    print_nice();
    int rc = pthread_create(&pt, NULL, thread, NULL);
    if (rc < 0)
        abort();
    rc = pthread_join(pt, NULL);
    if (rc < 0)
        abort();
    print_nice();
}

--rjjehdqmeq23yoez--
