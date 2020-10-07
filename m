Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 574A7285853
	for <lists+linux-man@lfdr.de>; Wed,  7 Oct 2020 08:01:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726312AbgJGGBB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Oct 2020 02:01:01 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:43891 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725970AbgJGGBB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Oct 2020 02:01:01 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.97])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 8DAC962CBCEC;
        Wed,  7 Oct 2020 08:00:59 +0200 (CEST)
Received: from jwilk.net (37.59.142.95) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Wed, 7 Oct 2020
 08:00:58 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-95G0010d757987-e1e9-4140-bc38-73872da9c06a,
                    210046763DD62EE8B7C8A4EF62C50FB0A57902B4) smtp.auth=jwilk@jwilk.net
Date:   Wed, 7 Oct 2020 08:00:56 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Samanta Navarro <ferivoz@riseup.net>
CC:     <mtk.manpages@gmail.com>, <linux-man@vger.kernel.org>
Subject: Re: [PATCH] mmap.2, proc.5, bpf-helpers.7, cpuset.7: tfix
Message-ID: <20201007060056.s2jm3bpiomnspkvc@jwilk.net>
References: <20201004114434.pbetrwdehhgzibuw@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20201004114434.pbetrwdehhgzibuw@localhost>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: e8917575-028f-4d5f-b898-f04d1e43cfa3
X-Ovh-Tracer-Id: 6456754491661015005
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrgeehgddutdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Samanta!

* Samanta Navarro <ferivoz@riseup.net>, 2020-10-04, 11:44:
>diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
>index a18be23..57d2185 100644
>--- a/man7/bpf-helpers.7
>+++ b/man7/bpf-helpers.7

This man page is unusual in that it's automatically generated from the 
Linux sources.

I've just sent a patch to fix the bug there.

-- 
Jakub Wilk
