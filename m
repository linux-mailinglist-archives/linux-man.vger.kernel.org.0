Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10477349CDD
	for <lists+linux-man@lfdr.de>; Fri, 26 Mar 2021 00:24:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231273AbhCYXYM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 Mar 2021 19:24:12 -0400
Received: from 3.mo51.mail-out.ovh.net ([188.165.32.156]:54088 "EHLO
        3.mo51.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231262AbhCYXXo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 Mar 2021 19:23:44 -0400
X-Greylist: delayed 4605 seconds by postgrey-1.27 at vger.kernel.org; Thu, 25 Mar 2021 19:23:43 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.173])
        by mo51.mail-out.ovh.net (Postfix) with ESMTPS id DB69B2786E5;
        Thu, 25 Mar 2021 23:06:56 +0100 (CET)
Received: from jwilk.net (37.59.142.104) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Thu, 25 Mar
 2021 23:06:56 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-104R0051b4be3a5-a04d-43f6-9563-1199ff9ce64f,
                    B0DFA5BD14842729F4276F05A1062110D9D7BB61) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.106.156
Date:   Thu, 25 Mar 2021 23:06:55 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: Makefile: Use standard variables and locations
Message-ID: <20210325220655.egwiilcs6pf7eher@jwilk.net>
References: <b4cf925a-ac73-33bd-a6eb-514c69e82d51@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <b4cf925a-ac73-33bd-a6eb-514c69e82d51@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG1EX1.mxp6.local (172.16.2.1) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 107f7927-237a-497d-9261-257364c29949
X-Ovh-Tracer-Id: 684547144956041181
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudehtddgudeiudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2021-03-20, 22:03:
>- Is '|| exit $$?' really needed?  AFAIK, make exits on error.

Make catches errors, but shell doesn't by default. So if a recipe 
contains more than a simple command, you need to care of error handling 
yourself. For example:

   $ printf 'all:\n\tfalse; echo moo\n' > Makefile

   $ make
   false; echo moo
   moo

   $ echo $?
   0

>- Specify SHELL = /bin/sh

This is the default on Unix-like systems.

-- 
Jakub Wilk
