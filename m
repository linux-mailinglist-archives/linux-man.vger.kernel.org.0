Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CFAD2E7C36
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 21:07:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726352AbgL3UG5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 15:06:57 -0500
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:50485 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726350AbgL3UG5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 15:06:57 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.90])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 1F0837E6070A
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 21:06:15 +0100 (CET)
Received: from jwilk.net (37.59.142.100) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Wed, 30 Dec
 2020 21:06:14 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-100R00343ab53f0-385c-48e5-87a9-43276b9810cc,
                    2074632F724FB7FA45C3F2F285F14FAD10AD0374) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.168
Date:   Wed, 30 Dec 2020 21:06:11 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     <linux-man@vger.kernel.org>
Subject: get_phys_pages(), get_avphys_pages() no longer read /proc/meminfo
Message-ID: <20201230200611.uvjmzovtnme5ssho@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 5ec2b69b-74ba-444d-a8f4-8bb0554d48ab
X-Ovh-Tracer-Id: 15975956731690669847
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvddvfedgudeffecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfggtggufghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeevuddutdduieejleehtdehfeffteefgfevueeufeekvdefhffhhfekhfeugeetudenucffohhmrghinhepshhouhhrtggvfigrrhgvrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The get_phys_pages.3 man page reads:

>These functions obtain the required information by scanning the 
>MemTotal and MemFree fields of /proc/meminfo.

This is no longer the case. Since glibc 2.23, they use sysinfo(2) 
instead:

https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=0ce657c576bf1b24

-- 
Jakub Wilk
