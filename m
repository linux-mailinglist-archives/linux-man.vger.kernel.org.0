Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D2E63C60AE
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 18:36:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230300AbhGLQjb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 12:39:31 -0400
Received: from 8.mo548.mail-out.ovh.net ([46.105.45.231]:43625 "EHLO
        8.mo548.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230184AbhGLQjb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 12:39:31 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.149])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id B9902200BC;
        Mon, 12 Jul 2021 16:36:41 +0000 (UTC)
Received: from jwilk.net (37.59.142.106) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.8; Mon, 12 Jul
 2021 18:36:40 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-106R0062b64e540-f982-418f-9d4e-6f8c02c70994,
                    5C274AFC0EEBB6A3AE8BBE403DAD1BA76CA38561) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 37.30.17.216
Date:   Mon, 12 Jul 2021 18:36:38 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Stefan Kanthak <stefan.kanthak@nexgo.de>
CC:     <mtk.manpages@gmail.com>, <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: wcstok(3) code sample
Message-ID: <20210712163638.p5cfe3zbxoud5fij@jwilk.net>
References: <8514C525E9C345FEA377AC5912010871@H270>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <8514C525E9C345FEA377AC5912010871@H270>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: c73b18bc-3335-4f72-bc42-528e710ff092
X-Ovh-Tracer-Id: 8041458613075826656
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddruddvgddutdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Stefan Kanthak <stefan.kanthak@nexgo.de>, 2021-07-12, 11:07:
>|  wchar_t *wcs = strdup(...);

You meant wcsdup().

-- 
Jakub Wilk
