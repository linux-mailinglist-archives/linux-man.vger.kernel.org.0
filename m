Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 611E72DE184
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 11:52:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389137AbgLRKvZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 05:51:25 -0500
Received: from 8.mo179.mail-out.ovh.net ([46.105.75.26]:36479 "EHLO
        8.mo179.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389129AbgLRKvY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 05:51:24 -0500
X-Greylist: delayed 1805 seconds by postgrey-1.27 at vger.kernel.org; Fri, 18 Dec 2020 05:51:24 EST
Received: from player770.ha.ovh.net (unknown [10.108.42.5])
        by mo179.mail-out.ovh.net (Postfix) with ESMTP id 3E2D91837CC
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 11:14:12 +0100 (CET)
Received: from RCM-web6.webmail.mail.ovh.net (82-65-25-201.subs.proxad.net [82.65.25.201])
        (Authenticated sender: steve@sk2.org)
        by player770.ha.ovh.net (Postfix) with ESMTPSA id C61751965D5D9;
        Fri, 18 Dec 2020 10:14:06 +0000 (UTC)
MIME-Version: 1.0
Date:   Fri, 18 Dec 2020 11:14:06 +0100
From:   Stephen Kitt <steve@sk2.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-kernel@vger.kernel.org,
        Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: Ping: [patch] close_range.2: new page documenting close_range(2)
In-Reply-To: <6c32a7c3-4bed-8d5e-134f-47a4bd49dc78@gmail.com>
References: <20201208215133.30575-1-steve@sk2.org>
 <20201209095817.7ksihhftmnd3c3hi@wittgenstein>
 <5f69d42d-c36d-b98a-3d00-7a5e7f489a07@gmail.com>
 <20201209105618.okw5lgcdikg5bvae@wittgenstein>
 <0ea38a7a-1c64-086e-3d64-38686f5b7856@gmail.com>
 <20201212121419.odpgbaigrjhpkjnm@wittgenstein>
 <47a388ca-bcd8-d917-0a0a-cdbd185d6998@gmail.com>
 <6c32a7c3-4bed-8d5e-134f-47a4bd49dc78@gmail.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <c8709e99154791547af435a639154881@sk2.org>
X-Sender: steve@sk2.org
X-Originating-IP: 82.65.25.201
X-Webmail-UserID: steve@sk2.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 9291770456798350806
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudeliedgudegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepheeftedvhfevuedthedthfektdelleegtdevfeetveefhfekgedttdefgfetgfeunecukfhppedtrddtrddtrddtpdekvddrieehrddvhedrvddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjedtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepshhtvghvvgesshhkvddrohhrghdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Le 18/12/2020 11:12, Alejandro Colomar (man-pages) a écrit :
> Linux 5.10 has been recently released.
> Do you have any updates for this patch?

Yes, I have a v3 in preparation, with _CLOEXEC and a code example. I'll 
wrap it up today.

Regards,

Stephen
