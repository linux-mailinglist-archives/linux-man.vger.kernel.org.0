Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67ACE3D531D
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 08:25:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231616AbhGZFmu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Jul 2021 01:42:50 -0400
Received: from smtpout1.mo3005.mail-out.ovh.net ([79.137.123.220]:57693 "EHLO
        smtpout1.3005.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231575AbhGZFmt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Jul 2021 01:42:49 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.141])
        by mo3005.mail-out.ovh.net (Postfix) with ESMTPS id E878413F779;
        Mon, 26 Jul 2021 06:23:11 +0000 (UTC)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Mon, 26 Jul
 2021 08:23:11 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-99G003eb501836-42c3-456d-af1e-85312a7f8700,
                    11FA1DB8C9E68E12866A8F0D931BA1D33610851D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.49.122
Date:   Mon, 26 Jul 2021 08:23:09 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: open.2
Message-ID: <20210726062309.yjcnbfxlx76q3bca@jwilk.net>
References: <20210725170822.GA16643@Debian-50-lenny-64-minimal>
 <CAKgNAkgCSD_pwAf0-A2ywdZ1n0zCVc2DWLxegsE7_xCobXA06g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKgNAkgCSD_pwAf0-A2ywdZ1n0zCVc2DWLxegsE7_xCobXA06g@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: a58715bb-e620-48e5-bd54-9cd72a51aa4e
X-Ovh-Tracer-Id: 6111103220135745501
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrgeeggddutddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjfghisehtkeertddtreejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheffuddvgfeludelvdelkeegueevudfhtdekveekkedujeekffekhedvfefhkeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2021-07-26, 01:11:
>On Sun, 25 Jul 2021 at 19:08, Helge Kreutzmann <debian@helgefjell.de> wrote:
>>Man page: open.2
>>Issue: same was → same ways
>This bug report appears to be obsolete. I can't find this error in the 
>page.

It was fixed last year:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=313fb52719469abd

-- 
Jakub Wilk
