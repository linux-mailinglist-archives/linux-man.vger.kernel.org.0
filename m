Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B1BD1E08AB
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 10:22:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729513AbgEYIWu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 04:22:50 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:42425 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725849AbgEYIWu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 04:22:50 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.41])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id A54FC37B4158;
        Mon, 25 May 2020 10:22:47 +0200 (CEST)
Received: from jwilk.net (37.59.142.106) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 25 May
 2020 10:22:46 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-106R006cb4f7781-557f-4faa-a645-ecbdfaa140d2,6F6664E83CEDE23F121728FE43BC1480B95F6CB9) smtp.auth=jwilk@jwilk.net
Date:   Mon, 25 May 2020 10:22:43 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?Q?J=C3=BCrgen?= Sauermann <mail@juergen-sauermann.de>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: scanf() and friends
Message-ID: <20200525082243.rzjsn2fmco5pam4i@jwilk.net>
References: <a258513b-a5c3-d772-df3f-e490768b73eb@juergen-sauermann.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a258513b-a5c3-d772-df3f-e490768b73eb@juergen-sauermann.de>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: c9258d83-dc5b-473b-a87a-2625f83eadd2
X-Ovh-Tracer-Id: 9247860362833287133
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedruddvtddgtdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjfghisehtkeertddtreejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhffdtueelvedvffefgfejveehudejgfeikeetudejieeuvdfghfduudegffeujeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jürgen!

* Jürgen Sauermann <mail@juergen-sauermann.de>, 2020-05-24, 16:11:
>This lets me wonder if the fact that my glibc version accepts (and 
>discards) a 0x prefix in a 'X' conversion is merely a convenience that 
>may disappear at some later point in time, or an intended feature on 
>which a programmer may rely on.

It's an intended feature. C99 (and POSIX) requires stripping "0x".

-- 
Jakub Wilk
