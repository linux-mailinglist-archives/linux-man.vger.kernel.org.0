Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0A0B3D534E
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 08:44:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232122AbhGZGER (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Jul 2021 02:04:17 -0400
Received: from 6.mo52.mail-out.ovh.net ([188.165.49.222]:51712 "EHLO
        6.mo52.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232090AbhGZGEP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Jul 2021 02:04:15 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.44])
        by mo52.mail-out.ovh.net (Postfix) with ESMTPS id 89C4D285577;
        Mon, 26 Jul 2021 08:44:42 +0200 (CEST)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Mon, 26 Jul
 2021 08:44:41 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G0044ef58519-b12f-4a93-9a2a-ea1488617d70,
                    11FA1DB8C9E68E12866A8F0D931BA1D33610851D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.49.122
Date:   Mon, 26 Jul 2021 08:44:40 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: shmop.2
Message-ID: <20210726064440.2xcxf4ri63arddxb@jwilk.net>
References: <20210725170914.GA16816@Debian-50-lenny-64-minimal>
 <CAKgNAkizm0xZ3vr=mGRDgMOBZwps2RSkQxfR3vP-6Z8x_6MEJw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKgNAkizm0xZ3vr=mGRDgMOBZwps2RSkQxfR3vP-6Z8x_6MEJw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: a76716a9-070e-4f9e-8d6b-a6e16cbdb62a
X-Ovh-Tracer-Id: 6474487418159421405
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrgeeggddutdeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggugfgjfghisehtkeertddtreejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvheffuddvgfeludelvdelkeegueevudfhtdekveekkedujeekffekhedvfefhkeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2021-07-26, 01:02:
>>Man page: shmop.2
>>Issue: file → files
>>
>>"The following header file is included by the \"reader\" and \"writer\" "
>>"programs."
>
>The existing text looks correct to me.

Yes, that's what we concluded last year:
https://lore.kernel.org/linux-man/20200706101634.GA26824@Debian-50-lenny-64-minimal/T/

-- 
Jakub Wilk
