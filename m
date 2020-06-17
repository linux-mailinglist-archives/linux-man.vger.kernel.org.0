Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF0151FCABC
	for <lists+linux-man@lfdr.de>; Wed, 17 Jun 2020 12:22:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725894AbgFQKWs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Jun 2020 06:22:48 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:34287 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725554AbgFQKWs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Jun 2020 06:22:48 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.102])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 8571F3DA26BE;
        Wed, 17 Jun 2020 12:22:38 +0200 (CEST)
Received: from jwilk.net (37.59.142.95) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Wed, 17 Jun
 2020 12:22:34 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-95G001c8380cd3-e306-4318-b9eb-c85ba2985f02,B0344562CD5D8E94700D408E7E6BBE7DE8357980) smtp.auth=jwilk@jwilk.net
Date:   Wed, 17 Jun 2020 12:22:32 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Jonny Grant <jg@jguk.org>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: gettid
Message-ID: <20200617102232.7zzi2klj3onh2nur@jwilk.net>
References: <23ca3363-5a24-9862-4872-811678527b50@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="z3uvfp7dyhb37vep"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <23ca3363-5a24-9862-4872-811678527b50@jguk.org>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: b192c7ea-1979-4315-9449-c4d75f4c824b
X-Ovh-Tracer-Id: 17216698427459360733
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrudejvddgvdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtugfgjggfihesmhekreertderjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfefgtdelgeefhfetvdfgleehgfdutdfgieetgfdvgffghfeuhedtledujeeiiefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--z3uvfp7dyhb37vep
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

* Jonny Grant <jg@jguk.org>, 2020-06-16, 12:36:
>SYNOPSIS         top
>   #define _GNU_SOURCE
>   #include <unistd.h>
>   #include <sys/types.h>
>
>   pid_t gettid(void);
>
>I can compile on Ubuntu without #define _GNU_SOURCE and call gettid()
>
>Maybe that line can be removed?

I don't think so. Here's what I get (with GCC 9):

   $ gcc test.c
   test.c: In function ‘main’:
   test.c:6:9: warning: implicit declaration of function ‘gettid’; did you mean ‘getgid’? [-Wimplicit-function-declaration]
       6 |  return gettid();
         |         ^~~~~~
         |         getgid

Prepending "#define _GNU_SOURCE" fixes the above.

-- 
Jakub Wilk

--z3uvfp7dyhb37vep
Content-Type: text/x-csrc; charset="us-ascii"
Content-Disposition: attachment; filename="test.c"

#include <unistd.h>
#include <sys/types.h>

int main(int argc, char **argv)
{
	return gettid();	
}

--z3uvfp7dyhb37vep--
